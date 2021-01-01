with System.BB.Board_Parameters;
with System.BB.MCU_Parameters;

package System.BB.Parameters is
   pragma No_Elaboration_Code_All;
   pragma Preelaborate (System.BB.Parameters);

   Clock_Frequency  : constant := Board_Parameters.Main_Clock_Frequency;
   Ticks_Per_Second : constant := Clock_Frequency;

   subtype Interrupt_Range is Integer
      range -1 .. MCU_Parameters.Number_Of_Interrupts;

   Trap_Vectors : constant := 17;

   Context_Buffer_Capacity : constant := 10;

   Interrupt_Stack_Size : constant := 2 * 1024;

   Interrupt_Sec_Stack_Size : constant := 128;

   Has_FPU : constant Boolean := True;

   Has_VTOR : constant Boolean := True;

   Has_OS_Extensions : constant Boolean := True;

   Is_ARMv6m : constant Boolean := False;

   Max_Number_Of_CPUs : constant := 1;

   Multiprocessor : constant Boolean := Max_Number_Of_CPUs /= 1;

end System.BB.Parameters;
