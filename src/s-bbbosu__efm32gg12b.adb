with System.Machine_Code;

with System.BB.CPU_Primitives;
with System.BB.Board_Parameters;

with Interfaces.EFM32;      use Interfaces.EFM32;
with Interfaces.EFM32.RTCC; use Interfaces.EFM32.RTCC;
with Interfaces.EFM32.CMU;  use Interfaces.EFM32.CMU;
with Interfaces.EFM32.EMU;  use Interfaces.EFM32.EMU;

package body System.BB.Board_Support is
   use CPU_Primitives, BB.Interrupts, Machine_Code, Time;

   package BBOPA renames System.BB.Board_Parameters;

   Interrupt_Request_Vector : constant Vector_Id := 16;
   --  Defined by ARMv7-M Spec.

   Alarm_Time : Time.Timer_Interval;
   pragma Volatile (Alarm_Time);
   pragma Export (C, Alarm_Time, "__gnat_alarm_time");

   Alarm_Interrupt_ID : constant Interrupt_ID := 31; -- RTCC interrupt

   NVIC_Base : constant := 16#E000_E000#;
   --  Nested Vectored Interrupt Controller (NVIC) base.

   NVIC_ISER0 : constant Address := NVIC_Base + 16#100#;
   --  Writing a bit mask to this register enables the corresponding interrupts

   NVIC_STIR : Word with Volatile, Address => NVIC_Base + 16#F00#;

   --  SCS_Base   : constant         := 16#E000_E000#;
   --  NVIC_Base  : constant         := SCS_Base + 16#100#;
   --  NVIC_ISER0 : constant Address := NVIC_Base;
   --  NVIC_STIR  : Word with Volatile, Address => NVIC_Base + 16#E00#;

   type PRI is mod 2**8;

   function To_PRI (P : Integer) return PRI is
     (if P not in Interrupt_Priority then 0
     else PRI (Interrupt_Priority'Last - P + 1) * 32);

   function To_Priority (P : PRI) return Interrupt_Priority is
     (if P = 0 then Interrupt_Priority'Last
     else (Interrupt_Priority'Last - Any_Priority'Base (P / 32) + 1));

   IP : array (0 .. Interrupt_ID'Last) of PRI
     with Volatile, Address => 16#E000_E400#;

   procedure Enable_Interrupt_Request
     (Interrupt : Interrupt_ID;
     Prio      : Interrupt_Priority);

   procedure Trigger_Interrupt (Interrupt : Interrupt_ID);

   procedure Interrupt_Handler;

   procedure Initialize_Board is
   begin
      Disable_Interrupts;

      --  Start CLK
      --  Use RTCC as clock source - 32 bit timer running at 32768Hz, =>
      --  overflow at 36.4 hours (period = 30.5μs)
      EMU_Periph.CMD.EM4UNLATCH   := 1;
      EMU_Periph.IEN.EM23WAKEUP   := 1;

      loop
         exit when CMU_Periph.SYNCBUSY.LFXOBSY /= 1;
      end loop;
      CMU_Periph.LFXOCTRL.TIMEOUT := Val_2CYCLES;
      CMU_Periph.LFXOCTRL.MODE    := XTAL;

      CMU_Periph.OSCENCMD.LFXOEN  := 1;
      loop
         exit when CMU_Periph.SYNCBUSY.LFXOBSY /= 1;
      end loop;

      CMU_Periph.LFECLKSEL.LFE    := LFXO;
      CMU_Periph.LFECLKEN0.RTCC   := 1;
      CMU_Periph.CTRL.WSHFLE      := 1;

      RTCC_Periph.LOCK.LOCKKEY    := 16#AEE8#;
      RTCC_Periph.CTRL.ENABLE     := 0;
      loop
         exit when RTCC_Periph.CTRL.ENABLE /= 1;
      end loop;

      RTCC_Periph.CTRL.DEBUGRUN   := 1;
      RTCC_Periph.CTRL.CNTMODE    := 0; --  NORMAL;
      RTCC_Periph.CTRL.OSCFDETEN  := 1;
      RTCC_Periph.CTRL.CNTTICK    := 0; --  PRESC;
      RTCC_Periph.CTRL.CNTPRESC   := DIV1;
      RTCC_Periph.CTRL.CCV1TOP    := 0;
      RTCC_Periph.CTRL.CNTMODE    := 0;

      RTCC_Periph.EM4WUEN.EM4WU   := 1;
      --  Disable all interrupts and clear all flags

      RTCC_Periph.CNT               := 0;
      RTCC_Periph.CC0_CTRL.MODE     := OUTPUTCOMPARE;
      RTCC_Periph.CC0_CTRL.COMPBASE := 0; --  CNT;
      RTCC_Periph.CC0_CCV           := 0;

      RTCC_Periph.IEN := (
         OF_k      => 0,
         CC        => (As_Array => False,
                      Val => 2#001#),
         OSCFAIL   => 0,
         CNTTICK   => 0,
         MINTICK   => 0,
         HOURTICK  => 0,
         DAYTICK   => 0,
         DAYOWOF   => 0,
         MONTHTICK => 0,
         others => <>
         );

      RTCC_Periph.IFC := (
         OF_k      => 1,
         CC        => (As_Array => False,
                      Val => 2#111#),
         OSCFAIL   => 1,
         CNTTICK   => 1,
         MINTICK   => 1,
         HOURTICK  => 1,
         DAYTICK   => 1,
         DAYOWOF   => 1,
         MONTHTICK => 1,
         others => <>
         );

      RTCC_Periph.IEN.CC := (As_Array => False,
                             Val      => 2#001#);

      Time.Set_Alarm (Max_Timer_Interval);
      Time.Clear_Alarm_Interrupt;

      Install_Trap_Handler (Interrupt_Handler'Address,
                            Interrupt_Request_Vector);
   end Initialize_Board;

   ------------------------
   -- Max_Timer_Interval --
   ------------------------

   package body Time is
      --  Scale up 32-bit RTCC counter
      function Max_Timer_Interval return Timer_Interval
      is ((2**32 - 1) * BBOPA.RTC_Tick_Scaling_Factor);

      -----------------
      --  Read_Clock --
      -----------------

      function Read_Clock return BB.Time.Time is
         PRIMASK : Word;
         Res     : Timer_Interval;

      begin
         --  Disable interrupts
         Asm ("mrs %0, PRIMASK",
             Outputs => Word'Asm_Output ("=&r", PRIMASK),
             Volatile => True);
         Asm ("msr PRIMASK, %0",
              Inputs => Word'Asm_Input ("r", 1),
              Volatile => True);

         --  Read CNT register
         Res := Timer_Interval (RTCC_Periph.CNT);
         Res := Res * BBOPA.RTC_Tick_Scaling_Factor;

         --  Restore interrupt mask
         Asm ("msr PRIMASK, %0",
              Inputs => Word'Asm_Input ("r", PRIMASK),
              Volatile => True);

         return BB.Time.Time (Res);
      end Read_Clock;

      ---------------------------
      -- Clear_Alarm_Interrupt --
      ---------------------------

      procedure Clear_Alarm_Interrupt is
      begin
         RTCC_Periph.IFC.CC.Val    := 2#001#;
         EMU_Periph.IFC.EM23WAKEUP := 1;
      end Clear_Alarm_Interrupt;

      ---------------
      -- Set_Alarm --
      ---------------

      procedure Set_Alarm (Ticks : Timer_Interval) is
         RTC_Counter : UInt32;

         RTC_Ticks   : UInt32 :=
           UInt32 (Ticks / BBOPA.RTC_Tick_Scaling_Factor);

         CC0_Value             : UInt32;
         RTC_Ticks_Until_Alarm : UInt32;
      begin

         --  3 RTC cycles to ensure synchronization
         RTC_Ticks             := UInt32'Max (RTC_Ticks, 3);
         RTC_Counter           := RTCC_Periph.CNT;
         CC0_Value             := RTC_Counter + RTC_Ticks;
         RTCC_Periph.CC0_CCV   := CC0_Value;
         RTC_Counter           := RTCC_Periph.CNT;
         RTC_Ticks_Until_Alarm := CC0_Value - RTC_Counter;

         if RTC_Ticks_Until_Alarm < 3
            or Ticks = 0
            or RTC_Ticks_Until_Alarm > RTC_Ticks
         then
            CC0_Value           := RTC_Counter + RTC_Ticks;
            RTCC_Periph.CC0_CCV := CC0_Value;

            Trigger_Interrupt (Alarm_Interrupt_ID);
         end if;
      end Set_Alarm;

      ---------------------------
      -- Install_Alarm_Handler --
      ---------------------------

      procedure Install_Alarm_Handler
         (Handler : BB.Interrupts.Interrupt_Handler) is
      begin
         BB.Interrupts.Attach_Handler
         (Handler,
         Alarm_Interrupt_ID,
         Interrupt_Priority'Last);

         --  Clear pending interrupts
         Time.Clear_Alarm_Interrupt;

         --  Start timer
         RTCC_Periph.CTRL.ENABLE    := 1;

      end Install_Alarm_Handler;
   end Time;

   package body Multiprocessors is separate;

   -----------------------
   -- Interrupt_Handler --
   -----------------------

   procedure Interrupt_Handler is
      Id      : Interrupt_ID;
      Res     : Word;
      PRIMASK : Word;
   begin
      --  Backup and disable all exceptions of configurable priority
      Asm ("mrs %0, PRIMASK",
           Outputs  => Word'Asm_Output ("=&r", PRIMASK),
           Volatile => True);
      Asm ("msr PRIMASK, %0",
           Inputs   => Word'Asm_Input ("r", 1),
           Volatile => True);

      --  Read exception number from the IPSR

      Asm ("mrs %0, ipsr",
           Word'Asm_Output ("=r", Res),
           Volatile => True);

      Res := Res and 16#1FF#;

      --  Convert to IRQ number, subtract number of CPU exceptions

      Id := Interrupt_ID'Base (Res) - 16;

      Interrupt_Wrapper (Id);

      --  Restore interrupt mask
      Asm ("msr PRIMASK, %0",
           Inputs   => Word'Asm_Input ("r", PRIMASK),
           Volatile => True);
   end Interrupt_Handler;

   ------------------------------
   -- Enable_Interrupt_Request --
   ------------------------------

   procedure Enable_Interrupt_Request
      (Interrupt : Interrupt_ID;
       Prio      : Interrupt_Priority) is
   begin
      if Interrupt = Alarm_Interrupt_ID then
         pragma Assert (Prio = Interrupt_Priority'Last);
         Time.Clear_Alarm_Interrupt;
      end if;

      --  else
         declare
            pragma Assert (Interrupt >= 0);
            IRQ       : constant Natural := Interrupt;
            Regofs    : constant Natural := IRQ / 32;      -- Reg offset
            Regbit    : constant Word    := 2** (IRQ mod 32); -- Regbit
            NVIC_ISER : array (0 .. 15) of Word
              with Volatile, Address => NVIC_ISER0;

         begin
            NVIC_ISER (Regofs) := Regbit;
         end;
      --  end if;
   end Enable_Interrupt_Request;

   -----------------------
   -- Trigger_Interrupt --
   -----------------------

   procedure Trigger_Interrupt (Interrupt : Interrupt_ID) is
   begin
      NVIC_STIR := Word (Interrupt) and 16#0000_01FF#;
   end Trigger_Interrupt;

   package body Interrupts is
      -------------------------------
      -- Install_Interrupt_Handler --
      -------------------------------

      procedure Install_Interrupt_Handler
        (Interrupt : Interrupt_ID;
         Prio      : Interrupt_Priority) is
      begin
         if Interrupt /= Alarm_Interrupt_ID then
            IP (Interrupt) := To_PRI (Prio);
         end if;

         Enable_Interrupt_Request (Interrupt, Prio);
      end Install_Interrupt_Handler;

      ---------------------------
      -- Priority_Of_Interrupt --
      ---------------------------

      function Priority_Of_Interrupt
         (Interrupt : Interrupt_ID) return Any_Priority is
         (if Interrupt = Alarm_Interrupt_ID then Interrupt_Priority'Last
         else To_Priority (IP (Interrupt)));

      ----------------
      -- Power_Down --
      ----------------

      procedure Power_Down is
      begin
         Asm ("wfi", Volatile => True);
      end Power_Down;

      --------------------------
      -- Set_Current_Priority --
      --------------------------

      procedure Set_Current_Priority (Priority : Integer) is
      begin
         --  Writing a 0 to BASEPRI disables interrupt masking, while
         --  values 15 .. 1 correspond to interrupt priorities 255 ..241
         --  in that order

         Asm ("msr BASEPRI, %0",
            Inputs => PRI'Asm_Input ("r", To_PRI (Priority)),
            Volatile => True);
      end Set_Current_Priority;
   end Interrupts;
end System.BB.Board_Support;
