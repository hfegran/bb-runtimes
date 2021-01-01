pragma Ada_2012;
pragma Suppress (All_Checks);

with System;
--  with System.Machine_Code;  use System.Machine_Code;

with Interfaces.EFM32;     use Interfaces.EFM32;
with Interfaces.EFM32.EMU; use Interfaces.EFM32.EMU;
with Interfaces.EFM32.CMU; use Interfaces.EFM32.CMU;
with Interfaces.EFM32.MSC; use Interfaces.EFM32.MSC;
with Interfaces.EFM32.DI;  use Interfaces.EFM32.DI;

procedure Setup_Board is
   LCD_DBGCTRL : UInt32
     with volatile, Address => System'To_Address (16#40054034#);
   DECBODFIX : UInt32
     with volatile, Address => System'To_Address (16#400E31A4#);
begin
   --  Erratas

   MSC_Periph.CACHECMD.INVCACHE := 1;
   --  Charge redist setup
   CMU_Periph.HFBUSCLKEN0.LE := 1;
   CMU_Periph.LFACLKEN0.LCD  := 1;
   LCD_DBGCTRL := 16#0000_1000#;
   CMU_Periph.LFACLKEN0.LCD  := 0;
   CMU_Periph.HFBUSCLKEN0.LE := 0;
   --  DECBODFIX, first part
   DECBODFIX := 16#7C00#;
   --  End Erratas
   --  Increase VMCU to 3.3V if powered by MCU USB port
   EMU_Periph.R5VOUTLEVEL.OUTLEVEL := 10;
   --  Main EMU Setup
   --  Low power (for now)
   --  Configure the number of N & P channel transistors
   --  (4 allows for up to 10mA in EM01)
   EMU_Periph.DCDCMISCCTRL.PFETCNT := 3;
   EMU_Periph.DCDCMISCCTRL.NFETCNT := 3;
   --  4.7μA
   EMU_Periph.DCDCLNCOMPCTRL.COMPENR1 := 16#7#;
   EMU_Periph.DCDCLNCOMPCTRL.COMPENR2 := 16#13#;
   EMU_Periph.DCDCLNCOMPCTRL.COMPENR3 := 16#2#;
   EMU_Periph.DCDCLNCOMPCTRL.COMPENC1 := 16#1#;
   EMU_Periph.DCDCLNCOMPCTRL.COMPENC2 := 16#7#;
   EMU_Periph.DCDCLNCOMPCTRL.COMPENC3 := 16#B#;
   --  Load hysteresis calibration value bias=0
   EMU_Periph.DCDCLPCTRL.LPCMPHYSSELEM234H  :=
      UInt4 (DI_Periph.DCDCLPCMPHYSSEL1.LPCMPHYSSELLPCMBIAS0);
   EMU_Periph.DCDCLPEM01CFG.LPCMPHYSSELEM01 :=
      UInt4 (DI_Periph.DCDCLPCMPHYSSEL1.LPCMPHYSSELLPCMBIAS3);
   if DI_Periph.DCDCLPVCTRL0.LPATT0LPCMPBIAS01V8 >
      DI_Periph.DCDCLPVCTRL1.LPATT0LPCMPBIAS31V8
   then
      EMU_Periph.DCDCLPVCTRL.LPVREF :=
         DI_Periph.DCDCLPVCTRL0.LPATT0LPCMPBIAS01V8;
   else
      EMU_Periph.DCDCLPVCTRL.LPVREF :=
         DI_Periph.DCDCLPVCTRL1.LPATT0LPCMPBIAS31V8;
   end if;
   EMU_Periph.DCDCLNVCTRL.LNVREF := UInt7 (DI_Periph.DCDCLNVCTRL0.LNATT01V8);
   EMU_Periph.PWRCTRL.REGPWRSEL  := 1; -- DVDD
   if EMU_Periph.DCDCCTRL.DCDCMODE = Interfaces.EFM32.EMU.OFF or
      EMU_Periph.DCDCCTRL.DCDCMODE = Interfaces.EFM32.EMU.BYPASS
   then
      EMU_Periph.IFC.DCDCLNRUNNING := 1;
      loop
         exit when EMU_Periph.DCDCSYNC.DCDCCTRLBUSY = 0;
      end loop;
      EMU_Periph.DCDCCTRL.DCDCMODE := Interfaces.EFM32.EMU.LOWNOISE;
      loop
         exit when EMU_Periph.IF_k.DCDCLNRUNNING = 1;
      end loop;
   end if;
   loop
      exit when EMU_Periph.DCDCSYNC.DCDCCTRLBUSY = 0;
   end loop;
   EMU_Periph.DCDCCTRL.DCDCMODE := Interfaces.EFM32.EMU.LOWPOWER;
   loop
      exit when EMU_Periph.DCDCSYNC.DCDCCTRLBUSY = 0;
   end loop;
   EMU_Periph.DCDCCLIMCTRL.BYPLIMEN := 1;

   CMU_Periph.OSCENCMD.HFXOEN  := 1;
   loop
      exit when CMU_Periph.STATUS.HFXORDY = 1;
   end loop;

   --  Enable HFXO
   CMU_Periph.HFCLKSEL.HF                 := HFXO;
   CMU_Periph.HFXOCTRL.AUTOSTARTEM0EM1    := 1;
   CMU_Periph.HFXOCTRL.AUTOSTARTSELEM0EM1 := 1;
   CMU_Periph.HFBUSCLKEN0.LE              := 1;

end Setup_Board;
