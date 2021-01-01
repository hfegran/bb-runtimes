--
--  Copyright (C) 2020, AdaCore
--

pragma Style_Checks (Off);

--  *******************************************************************************
--  * @version 5.8.2
--  *******************************************************************************
--  * # License
--  * Copyright 2019 Silicon Laboratories Inc. www.silabs.com
--  *******************************************************************************
--  *
--  * SPDX-License-Identifier: Zlib
--  *
--  * The licensor of this software is Silicon Laboratories Inc.
--  *
--  * This software is provided 'as-is', without any express or implied
--  * warranty. In no event will the authors be held liable for any damages
--  * arising from the use of this software.
--  *
--  * Permission is granted to anyone to use this software for any purpose,
--  * including commercial applications, and to alter it and redistribute it
--  * freely, subject to the following restrictions:
--  *
--  * 1. The origin of this software must not be misrepresented; you must not
--  *    claim that you wrote the original software. If you use this software
--  *    in a product, an acknowledgment in the product documentation would be
--  *    appreciated but is not required.
--  * 2. Altered source versions must be plainly marked as such, and must not be
--  *    misrepresented as being the original software.
--  * 3. This notice may not be removed or altered from any source distribution.
--  *
--  *******************************************************************************

--  This spec has been automatically generated from EFM32GG12B810F1024GM64.svd


with System;

--  CMU
package Interfaces.EFM32.CMU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Clock Output Select 0
   type CTRL_CLKOUTSEL0_Field is
     (--  Disabled
      DISABLED,
      --  ULFRCO (directly from oscillator)
      ULFRCO,
      --  LFRCO (directly from oscillator)
      LFRCO,
      --  LFXO (directly from oscillator)
      LFXO,
      --  HFXO (directly from oscillator)
      HFXO,
      --  HFEXPCLK
      HFEXPCLK,
      --  ULFRCO (qualified)
      ULFRCOQ,
      --  LFRCO (qualified)
      LFRCOQ,
      --  LFXO (qualified)
      LFXOQ,
      --  HFRCO (qualified)
      HFRCOQ,
      --  AUXHFRCO (qualified)
      AUXHFRCOQ,
      --  HFXO (qualified)
      HFXOQ,
      --  HFSRCCLK
      HFSRCCLK,
      --  USHFRCO (qualified)
      USHFRCOQ)
     with Size => 5;
   for CTRL_CLKOUTSEL0_Field use
     (DISABLED => 0,
      ULFRCO => 1,
      LFRCO => 2,
      LFXO => 3,
      HFXO => 6,
      HFEXPCLK => 7,
      ULFRCOQ => 9,
      LFRCOQ => 10,
      LFXOQ => 11,
      HFRCOQ => 12,
      AUXHFRCOQ => 13,
      HFXOQ => 14,
      HFSRCCLK => 15,
      USHFRCOQ => 18);

   --  CTRL_CLKOUTSEL array
   type CTRL_CLKOUTSEL_Field_Array is array (0 .. 1) of CTRL_CLKOUTSEL0_Field
     with Component_Size => 5, Size => 10;

   --  Type definition for CTRL_CLKOUTSEL
   type CTRL_CLKOUTSEL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CLKOUTSEL as a value
            Val : Interfaces.EFM32.UInt10;
         when True =>
            --  CLKOUTSEL as an array
            Arr : CTRL_CLKOUTSEL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for CTRL_CLKOUTSEL_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  Clock Output Select 2
   type CTRL_CLKOUTSEL2_Field is
     (--  Disabled
      DISABLED,
      --  ULFRCO (directly from oscillator)
      ULFRCO,
      --  LFRCO (directly from oscillator)
      LFRCO,
      --  LFXO (directly from oscillator)
      LFXO,
      --  HFXO divided by two (qualified)
      HFXODIV2Q,
      --  HFXO (directly from oscillator)
      HFXO,
      --  HFEXPCLK
      HFEXPCLK,
      --  HFXO doubler (qualified) (doubling activated by HFXOX2EN=1)
      HFXOX2Q,
      --  ULFRCO (qualified)
      ULFRCOQ,
      --  LFRCO (qualified)
      LFRCOQ,
      --  LFXO (qualified)
      LFXOQ,
      --  HFRCO (qualified)
      HFRCOQ,
      --  AUXHFRCO (qualified)
      AUXHFRCOQ,
      --  HFXO (qualified)
      HFXOQ,
      --  HFSRCCLK
      HFSRCCLK,
      --  USHFRCO (qualified)
      USHFRCOQ)
     with Size => 5;
   for CTRL_CLKOUTSEL2_Field use
     (DISABLED => 0,
      ULFRCO => 1,
      LFRCO => 2,
      LFXO => 3,
      HFXODIV2Q => 5,
      HFXO => 6,
      HFEXPCLK => 7,
      HFXOX2Q => 8,
      ULFRCOQ => 9,
      LFRCOQ => 10,
      LFXOQ => 11,
      HFRCOQ => 12,
      AUXHFRCOQ => 13,
      HFXOQ => 14,
      HFSRCCLK => 15,
      USHFRCOQ => 18);

   subtype CTRL_WSHFLE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_HFPERCLKEN_Field is Interfaces.EFM32.Bit;

   --  CMU Control Register
   type CTRL_Register is record
      --  Clock Output Select 0
      CLKOUTSEL      : CTRL_CLKOUTSEL_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Clock Output Select 2
      CLKOUTSEL2     : CTRL_CLKOUTSEL2_Field := Interfaces.EFM32.CMU.DISABLED;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit := 16#0#;
      --  Wait State for High-Frequency LE Interface
      WSHFLE         : CTRL_WSHFLE_Field := 16#0#;
      --  unspecified
      Reserved_17_19 : Interfaces.EFM32.UInt3 := 16#0#;
      --  HFPERCLK Enable
      HFPERCLKEN     : CTRL_HFPERCLKEN_Field := 16#1#;
      --  unspecified
      Reserved_21_31 : Interfaces.EFM32.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      CLKOUTSEL      at 0 range 0 .. 9;
      CLKOUTSEL2     at 0 range 10 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      WSHFLE         at 0 range 16 .. 16;
      Reserved_17_19 at 0 range 17 .. 19;
      HFPERCLKEN     at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype USHFRCOCTRL_TUNING_Field is Interfaces.EFM32.UInt7;
   subtype USHFRCOCTRL_FINETUNING_Field is Interfaces.EFM32.UInt6;
   subtype USHFRCOCTRL_FREQRANGE_Field is Interfaces.EFM32.UInt5;
   subtype USHFRCOCTRL_CMPBIAS_Field is Interfaces.EFM32.UInt3;
   subtype USHFRCOCTRL_LDOHP_Field is Interfaces.EFM32.Bit;

   --  Locally Divide USHFRCO Clock Output
   type USHFRCOCTRL_CLKDIV_Field is
     (--  Divide by 1.
      DIV1,
      --  Divide by 2.
      DIV2,
      --  Divide by 4.
      DIV4)
     with Size => 2;
   for USHFRCOCTRL_CLKDIV_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2);

   subtype USHFRCOCTRL_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype USHFRCOCTRL_VREFTC_Field is Interfaces.EFM32.UInt4;

   --  USHFRCO Control Register
   type USHFRCOCTRL_Register is record
      --  USHFRCO Tuning Value
      TUNING         : USHFRCOCTRL_TUNING_Field := 16#7F#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  USHFRCO Fine Tuning Value
      FINETUNING     : USHFRCOCTRL_FINETUNING_Field := 16#1F#;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  USHFRCO Frequency Range
      FREQRANGE      : USHFRCOCTRL_FREQRANGE_Field := 16#8#;
      --  USHFRCO Comparator Bias Current
      CMPBIAS        : USHFRCOCTRL_CMPBIAS_Field := 16#2#;
      --  USHFRCO LDO High Power Mode
      LDOHP          : USHFRCOCTRL_LDOHP_Field := 16#1#;
      --  Locally Divide USHFRCO Clock Output
      CLKDIV         : USHFRCOCTRL_CLKDIV_Field := Interfaces.EFM32.CMU.DIV1;
      --  Enable Reference for Fine Tuning
      FINETUNINGEN   : USHFRCOCTRL_FINETUNINGEN_Field := 16#0#;
      --  USHFRCO Temperature Coefficient Trim on Comparator Reference
      VREFTC         : USHFRCOCTRL_VREFTC_Field := 16#B#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USHFRCOCTRL_Register use record
      TUNING         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      FINETUNING     at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype HFRCOCTRL_TUNING_Field is Interfaces.EFM32.UInt7;
   subtype HFRCOCTRL_FINETUNING_Field is Interfaces.EFM32.UInt6;
   subtype HFRCOCTRL_FREQRANGE_Field is Interfaces.EFM32.UInt5;
   subtype HFRCOCTRL_CMPBIAS_Field is Interfaces.EFM32.UInt3;
   subtype HFRCOCTRL_LDOHP_Field is Interfaces.EFM32.Bit;

   --  Locally Divide HFRCO Clock Output
   type HFRCOCTRL_CLKDIV_Field is
     (--  Divide by 1.
      DIV1,
      --  Divide by 2.
      DIV2,
      --  Divide by 4.
      DIV4)
     with Size => 2;
   for HFRCOCTRL_CLKDIV_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2);

   subtype HFRCOCTRL_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype HFRCOCTRL_VREFTC_Field is Interfaces.EFM32.UInt4;

   --  HFRCO Control Register
   type HFRCOCTRL_Register is record
      --  HFRCO Tuning Value
      TUNING         : HFRCOCTRL_TUNING_Field := 16#7F#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  HFRCO Fine Tuning Value
      FINETUNING     : HFRCOCTRL_FINETUNING_Field := 16#1F#;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  HFRCO Frequency Range
      FREQRANGE      : HFRCOCTRL_FREQRANGE_Field := 16#8#;
      --  HFRCO Comparator Bias Current
      CMPBIAS        : HFRCOCTRL_CMPBIAS_Field := 16#2#;
      --  HFRCO LDO High Power Mode
      LDOHP          : HFRCOCTRL_LDOHP_Field := 16#1#;
      --  Locally Divide HFRCO Clock Output
      CLKDIV         : HFRCOCTRL_CLKDIV_Field := Interfaces.EFM32.CMU.DIV1;
      --  Enable Reference for Fine Tuning
      FINETUNINGEN   : HFRCOCTRL_FINETUNINGEN_Field := 16#0#;
      --  HFRCO Temperature Coefficient Trim on Comparator Reference
      VREFTC         : HFRCOCTRL_VREFTC_Field := 16#B#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFRCOCTRL_Register use record
      TUNING         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      FINETUNING     at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype AUXHFRCOCTRL_TUNING_Field is Interfaces.EFM32.UInt7;
   subtype AUXHFRCOCTRL_FINETUNING_Field is Interfaces.EFM32.UInt6;
   subtype AUXHFRCOCTRL_FREQRANGE_Field is Interfaces.EFM32.UInt5;
   subtype AUXHFRCOCTRL_CMPBIAS_Field is Interfaces.EFM32.UInt3;
   subtype AUXHFRCOCTRL_LDOHP_Field is Interfaces.EFM32.Bit;

   --  Locally Divide AUXHFRCO Clock Output
   type AUXHFRCOCTRL_CLKDIV_Field is
     (--  Divide by 1.
      DIV1,
      --  Divide by 2.
      DIV2,
      --  Divide by 4.
      DIV4)
     with Size => 2;
   for AUXHFRCOCTRL_CLKDIV_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2);

   subtype AUXHFRCOCTRL_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCTRL_VREFTC_Field is Interfaces.EFM32.UInt4;

   --  AUXHFRCO Control Register
   type AUXHFRCOCTRL_Register is record
      --  AUXHFRCO Tuning Value
      TUNING         : AUXHFRCOCTRL_TUNING_Field := 16#7F#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  AUXHFRCO Fine Tuning Value
      FINETUNING     : AUXHFRCOCTRL_FINETUNING_Field := 16#1F#;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  AUXHFRCO Frequency Range
      FREQRANGE      : AUXHFRCOCTRL_FREQRANGE_Field := 16#8#;
      --  AUXHFRCO Comparator Bias Current
      CMPBIAS        : AUXHFRCOCTRL_CMPBIAS_Field := 16#2#;
      --  AUXHFRCO LDO High Power Mode
      LDOHP          : AUXHFRCOCTRL_LDOHP_Field := 16#1#;
      --  Locally Divide AUXHFRCO Clock Output
      CLKDIV         : AUXHFRCOCTRL_CLKDIV_Field := Interfaces.EFM32.CMU.DIV1;
      --  Enable Reference for Fine Tuning
      FINETUNINGEN   : AUXHFRCOCTRL_FINETUNINGEN_Field := 16#0#;
      --  AUXHFRCO Temperature Coefficient Trim on Comparator Reference
      VREFTC         : AUXHFRCOCTRL_VREFTC_Field := 16#B#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AUXHFRCOCTRL_Register use record
      TUNING         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      FINETUNING     at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype LFRCOCTRL_TUNING_Field is Interfaces.EFM32.UInt9;
   subtype LFRCOCTRL_ENVREF_Field is Interfaces.EFM32.Bit;
   subtype LFRCOCTRL_ENCHOP_Field is Interfaces.EFM32.Bit;
   subtype LFRCOCTRL_ENDEM_Field is Interfaces.EFM32.Bit;

   --  Control Vref Update Rate
   type LFRCOCTRL_VREFUPDATE_Field is
     (--  32 clocks.
      Val_32CYCLES,
      --  64 clocks.
      Val_64CYCLES,
      --  128 clocks.
      Val_128CYCLES,
      --  256 clocks.
      Val_256CYCLES)
     with Size => 2;
   for LFRCOCTRL_VREFUPDATE_Field use
     (Val_32CYCLES => 0,
      Val_64CYCLES => 1,
      Val_128CYCLES => 2,
      Val_256CYCLES => 3);

   --  LFRCO Timeout
   type LFRCOCTRL_TIMEOUT_Field is
     (--  Timeout period of 2 cycles
      Val_2CYCLES,
      --  Timeout period of 16 cycles
      Val_16CYCLES,
      --  Timeout period of 32 cycles
      Val_32CYCLES)
     with Size => 2;
   for LFRCOCTRL_TIMEOUT_Field use
     (Val_2CYCLES => 0,
      Val_16CYCLES => 1,
      Val_32CYCLES => 2);

   subtype LFRCOCTRL_GMCCURTUNE_Field is Interfaces.EFM32.UInt4;

   --  LFRCO Control Register
   type LFRCOCTRL_Register is record
      --  LFRCO Tuning Value
      TUNING         : LFRCOCTRL_TUNING_Field := 16#100#;
      --  unspecified
      Reserved_9_15  : Interfaces.EFM32.UInt7 := 16#0#;
      --  Enable Duty Cycling of Vref
      ENVREF         : LFRCOCTRL_ENVREF_Field := 16#0#;
      --  Enable Comparator Chopping
      ENCHOP         : LFRCOCTRL_ENCHOP_Field := 16#1#;
      --  Enable Dynamic Element Matching
      ENDEM          : LFRCOCTRL_ENDEM_Field := 16#1#;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit := 16#0#;
      --  Control Vref Update Rate
      VREFUPDATE     : LFRCOCTRL_VREFUPDATE_Field :=
                        Interfaces.EFM32.CMU.Val_64CYCLES;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  LFRCO Timeout
      TIMEOUT        : LFRCOCTRL_TIMEOUT_Field :=
                        Interfaces.EFM32.CMU.Val_16CYCLES;
      --  unspecified
      Reserved_26_27 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Tuning of Gmc Current
      GMCCURTUNE     : LFRCOCTRL_GMCCURTUNE_Field := 16#8#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFRCOCTRL_Register use record
      TUNING         at 0 range 0 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      ENVREF         at 0 range 16 .. 16;
      ENCHOP         at 0 range 17 .. 17;
      ENDEM          at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      VREFUPDATE     at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TIMEOUT        at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      GMCCURTUNE     at 0 range 28 .. 31;
   end record;

   --  HFXO Mode
   type HFXOCTRL_MODE_Field is
     (--  4 MHz - 50 MHz crystal oscillator
      XTAL,
      --  An AC coupled buffer is coupled in series with HFXTAL_N pin, suitable for
--  external sinus wave.
      ACBUFEXTCLK,
      --  A DC coupled buffer is coupled in series with HFXTAL_N pin, suitable for
--  external sinus wave.
      DCBUFEXTCLK,
      --  Digital external clock can be supplied on HFXTAL_N pin.
      DIGEXTCLK)
     with Size => 2;
   for HFXOCTRL_MODE_Field use
     (XTAL => 0,
      ACBUFEXTCLK => 1,
      DCBUFEXTCLK => 2,
      DIGEXTCLK => 3);

   subtype HFXOCTRL_HFXOX2EN_Field is Interfaces.EFM32.Bit;

   --  HFXO Automatic Peak Detection Mode
   type HFXOCTRL_PEAKDETMODE_Field is
     (--  Automatic control of HFXO peak detection sequence. Only performs peak
--  detection on initial HFXO startup. CMU_CMD HFXOPEAKDETSTART allowed to be
--  used after HFXORDY=1.
      ONCECMD,
      --  Automatic control of HFXO peak detection sequence. CMU_CMD HFXOPEAKDETSTART
--  allowed to be used after HFXORDY=1.
      AUTOCMD,
      --  CMU_CMD HFXOPEAKDETSTART can be used to trigger the peak detection sequence
--  after HFXORDY=1.
      CMD,
      --  CMU_HFXOSTEADYSTATECTRL IBTRIMXOCORE and PEAKDETEN are under full software
--  control and are allowed to be changed once HFXO is ready.
      MANUAL)
     with Size => 2;
   for HFXOCTRL_PEAKDETMODE_Field use
     (ONCECMD => 0,
      AUTOCMD => 1,
      CMD => 2,
      MANUAL => 3);

   --  HFXO Low Frequency Timeout
   type HFXOCTRL_LFTIMEOUT_Field is
     (--  Timeout period of 0 cycles (disabled)
      Val_0CYCLES,
      --  Timeout period of 2 cycles
      Val_2CYCLES,
      --  Timeout period of 4 cycles
      Val_4CYCLES,
      --  Timeout period of 16 cycles
      Val_16CYCLES,
      --  Timeout period of 32 cycles
      Val_32CYCLES,
      --  Timeout period of 64 cycles
      Val_64CYCLES,
      --  Timeout period of 1024 cycles
      Val_1KCYCLES,
      --  Timeout period of 4096 cycles
      Val_4KCYCLES)
     with Size => 3;
   for HFXOCTRL_LFTIMEOUT_Field use
     (Val_0CYCLES => 0,
      Val_2CYCLES => 1,
      Val_4CYCLES => 2,
      Val_16CYCLES => 3,
      Val_32CYCLES => 4,
      Val_64CYCLES => 5,
      Val_1KCYCLES => 6,
      Val_4KCYCLES => 7);

   subtype HFXOCTRL_AUTOSTARTEM0EM1_Field is Interfaces.EFM32.Bit;
   subtype HFXOCTRL_AUTOSTARTSELEM0EM1_Field is Interfaces.EFM32.Bit;

   --  HFXO Control Register
   type HFXOCTRL_Register is record
      --  HFXO Mode
      MODE               : HFXOCTRL_MODE_Field := Interfaces.EFM32.CMU.XTAL;
      --  unspecified
      Reserved_2_2       : Interfaces.EFM32.Bit := 16#0#;
      --  Enable Double Frequency on HFXOX2 Clock (compared to HFXO Clock)
      HFXOX2EN           : HFXOCTRL_HFXOX2EN_Field := 16#1#;
      --  HFXO Automatic Peak Detection Mode
      PEAKDETMODE        : HFXOCTRL_PEAKDETMODE_Field :=
                            Interfaces.EFM32.CMU.ONCECMD;
      --  unspecified
      Reserved_6_23      : Interfaces.EFM32.UInt18 := 16#0#;
      --  HFXO Low Frequency Timeout
      LFTIMEOUT          : HFXOCTRL_LFTIMEOUT_Field :=
                            Interfaces.EFM32.CMU.Val_0CYCLES;
      --  unspecified
      Reserved_27_27     : Interfaces.EFM32.Bit := 16#0#;
      --  Automatically Start of HFXO Upon EM0/EM1 Entry From EM2/EM3
      AUTOSTARTEM0EM1    : HFXOCTRL_AUTOSTARTEM0EM1_Field := 16#0#;
      --  Automatically Start and Select of HFXO Upon EM0/EM1 Entry From
      --  EM2/EM3
      AUTOSTARTSELEM0EM1 : HFXOCTRL_AUTOSTARTSELEM0EM1_Field := 16#0#;
      --  unspecified
      Reserved_30_31     : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFXOCTRL_Register use record
      MODE               at 0 range 0 .. 1;
      Reserved_2_2       at 0 range 2 .. 2;
      HFXOX2EN           at 0 range 3 .. 3;
      PEAKDETMODE        at 0 range 4 .. 5;
      Reserved_6_23      at 0 range 6 .. 23;
      LFTIMEOUT          at 0 range 24 .. 26;
      Reserved_27_27     at 0 range 27 .. 27;
      AUTOSTARTEM0EM1    at 0 range 28 .. 28;
      AUTOSTARTSELEM0EM1 at 0 range 29 .. 29;
      Reserved_30_31     at 0 range 30 .. 31;
   end record;

   --  Sets the Amplitude Detection Level (mV)
   type HFXOCTRL1_PEAKDETTHR_Field is
     (--  50mV amplitude detection level
      THR0,
      --  75mV amplitude detection level
      THR1,
      --  115mV amplitude detection level
      THR2,
      --  160mV amplitude detection level
      THR3,
      --  220mV amplitude detection level
      THR4,
      --  260mV amplitude detection level
      THR5,
      --  320mV amplitude detection level
      THR6,
      --  Same as THR6
      THR7)
     with Size => 3;
   for HFXOCTRL1_PEAKDETTHR_Field use
     (THR0 => 0,
      THR1 => 1,
      THR2 => 2,
      THR3 => 3,
      THR4 => 4,
      THR5 => 5,
      THR6 => 6,
      THR7 => 7);

   --  HFXO Control 1
   type HFXOCTRL1_Register is record
      --  unspecified
      Reserved_0_11  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Sets the Amplitude Detection Level (mV)
      PEAKDETTHR     : HFXOCTRL1_PEAKDETTHR_Field :=
                        Interfaces.EFM32.CMU.THR2;
      --  unspecified
      Reserved_15_31 : Interfaces.EFM32.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFXOCTRL1_Register use record
      Reserved_0_11  at 0 range 0 .. 11;
      PEAKDETTHR     at 0 range 12 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype HFXOSTARTUPCTRL_IBTRIMXOCORE_Field is Interfaces.EFM32.UInt11;
   subtype HFXOSTARTUPCTRL_CTUNE_Field is Interfaces.EFM32.UInt9;

   --  HFXO Startup Control
   type HFXOSTARTUPCTRL_Register is record
      --  Sets the Startup Oscillator Core Bias Current
      IBTRIMXOCORE   : HFXOSTARTUPCTRL_IBTRIMXOCORE_Field := 16#600#;
      --  Sets Oscillator Tuning Capacitance
      CTUNE          : HFXOSTARTUPCTRL_CTUNE_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFXOSTARTUPCTRL_Register use record
      IBTRIMXOCORE   at 0 range 0 .. 10;
      CTUNE          at 0 range 11 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype HFXOSTEADYSTATECTRL_IBTRIMXOCORE_Field is Interfaces.EFM32.UInt11;
   subtype HFXOSTEADYSTATECTRL_CTUNE_Field is Interfaces.EFM32.UInt9;
   subtype HFXOSTEADYSTATECTRL_PEAKDETEN_Field is Interfaces.EFM32.Bit;
   subtype HFXOSTEADYSTATECTRL_PEAKMONEN_Field is Interfaces.EFM32.Bit;

   --  HFXO Steady State Control
   type HFXOSTEADYSTATECTRL_Register is record
      --  Sets the Steady State Oscillator Core Bias Current.
      IBTRIMXOCORE   : HFXOSTEADYSTATECTRL_IBTRIMXOCORE_Field := 16#100#;
      --  Sets Oscillator Tuning Capacitance
      CTUNE          : HFXOSTEADYSTATECTRL_CTUNE_Field := 16#0#;
      --  unspecified
      Reserved_20_25 : Interfaces.EFM32.UInt6 := 16#0#;
      --  Enables Oscillator Peak Detectors
      PEAKDETEN      : HFXOSTEADYSTATECTRL_PEAKDETEN_Field := 16#0#;
      --  Automatically Perform Peak Monitoring Algorithm on Every Rising Edge
      --  of ULFRCO
      PEAKMONEN      : HFXOSTEADYSTATECTRL_PEAKMONEN_Field := 16#1#;
      --  unspecified
      Reserved_28_31 : Interfaces.EFM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFXOSTEADYSTATECTRL_Register use record
      IBTRIMXOCORE   at 0 range 0 .. 10;
      CTUNE          at 0 range 11 .. 19;
      Reserved_20_25 at 0 range 20 .. 25;
      PEAKDETEN      at 0 range 26 .. 26;
      PEAKMONEN      at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Wait Duration in HFXO Startup Enable Wait State
   type HFXOTIMEOUTCTRL_STARTUPTIMEOUT_Field is
     (--  Timeout period of 2 cycles
      Val_2CYCLES,
      --  Timeout period of 4 cycles
      Val_4CYCLES,
      --  Timeout period of 16 cycles
      Val_16CYCLES,
      --  Timeout period of 32 cycles
      Val_32CYCLES,
      --  Timeout period of 64 cycles
      Val_64CYCLES,
      --  Timeout period of 128 cycles
      Val_128CYCLES,
      --  Timeout period of 256 cycles
      Val_256CYCLES,
      --  Timeout period of 1024 cycles
      Val_1KCYCLES,
      --  Timeout period of 2048 cycles
      Val_2KCYCLES,
      --  Timeout period of 4096 cycles
      Val_4KCYCLES,
      --  Timeout period of 8192 cycles
      Val_8KCYCLES,
      --  Timeout period of 16384 cycles
      Val_16KCYCLES,
      --  Timeout period of 32768 cycles
      Val_32KCYCLES,
      --  Timeout period of 65536 cycles
      Val_64KCYCLES,
      --  Timeout period of 131072 cycles
      Val_128KCYCLES)
     with Size => 4;
   for HFXOTIMEOUTCTRL_STARTUPTIMEOUT_Field use
     (Val_2CYCLES => 0,
      Val_4CYCLES => 1,
      Val_16CYCLES => 2,
      Val_32CYCLES => 3,
      Val_64CYCLES => 4,
      Val_128CYCLES => 5,
      Val_256CYCLES => 6,
      Val_1KCYCLES => 7,
      Val_2KCYCLES => 8,
      Val_4KCYCLES => 9,
      Val_8KCYCLES => 10,
      Val_16KCYCLES => 11,
      Val_32KCYCLES => 12,
      Val_64KCYCLES => 13,
      Val_128KCYCLES => 14);

   --  Wait Duration in HFXO Startup Steady Wait State
   type HFXOTIMEOUTCTRL_STEADYTIMEOUT_Field is
     (--  Timeout period of 2 cycles
      Val_2CYCLES,
      --  Timeout period of 4 cycles
      Val_4CYCLES,
      --  Timeout period of 16 cycles
      Val_16CYCLES,
      --  Timeout period of 32 cycles
      Val_32CYCLES,
      --  Timeout period of 64 cycles
      Val_64CYCLES,
      --  Timeout period of 128 cycles
      Val_128CYCLES,
      --  Timeout period of 256 cycles
      Val_256CYCLES,
      --  Timeout period of 1024 cycles
      Val_1KCYCLES,
      --  Timeout period of 2048 cycles
      Val_2KCYCLES,
      --  Timeout period of 4096 cycles
      Val_4KCYCLES,
      --  Timeout period of 8192 cycles
      Val_8KCYCLES,
      --  Timeout period of 16384 cycles
      Val_16KCYCLES,
      --  Timeout period of 32768 cycles
      Val_32KCYCLES,
      --  Timeout period of 65536 cycles
      Val_64KCYCLES,
      --  Timeout period of 131072 cycles
      Val_128KCYCLES)
     with Size => 4;
   for HFXOTIMEOUTCTRL_STEADYTIMEOUT_Field use
     (Val_2CYCLES => 0,
      Val_4CYCLES => 1,
      Val_16CYCLES => 2,
      Val_32CYCLES => 3,
      Val_64CYCLES => 4,
      Val_128CYCLES => 5,
      Val_256CYCLES => 6,
      Val_1KCYCLES => 7,
      Val_2KCYCLES => 8,
      Val_4KCYCLES => 9,
      Val_8KCYCLES => 10,
      Val_16KCYCLES => 11,
      Val_32KCYCLES => 12,
      Val_64KCYCLES => 13,
      Val_128KCYCLES => 14);

   --  Wait Duration in HFXO Peak Detection Wait State
   type HFXOTIMEOUTCTRL_PEAKDETTIMEOUT_Field is
     (--  Timeout period of 2 cycles
      Val_2CYCLES,
      --  Timeout period of 4 cycles
      Val_4CYCLES,
      --  Timeout period of 16 cycles
      Val_16CYCLES,
      --  Timeout period of 32 cycles
      Val_32CYCLES,
      --  Timeout period of 64 cycles
      Val_64CYCLES,
      --  Timeout period of 128 cycles
      Val_128CYCLES,
      --  Timeout period of 256 cycles
      Val_256CYCLES,
      --  Timeout period of 1024 cycles
      Val_1KCYCLES,
      --  Timeout period of 2048 cycles
      Val_2KCYCLES,
      --  Timeout period of 4096 cycles
      Val_4KCYCLES,
      --  Timeout period of 8192 cycles
      Val_8KCYCLES,
      --  Timeout period of 16384 cycles
      Val_16KCYCLES,
      --  Timeout period of 32768 cycles
      Val_32KCYCLES,
      --  Timeout period of 65536 cycles
      Val_64KCYCLES,
      --  Timeout period of 131072 cycles
      Val_128KCYCLES)
     with Size => 4;
   for HFXOTIMEOUTCTRL_PEAKDETTIMEOUT_Field use
     (Val_2CYCLES => 0,
      Val_4CYCLES => 1,
      Val_16CYCLES => 2,
      Val_32CYCLES => 3,
      Val_64CYCLES => 4,
      Val_128CYCLES => 5,
      Val_256CYCLES => 6,
      Val_1KCYCLES => 7,
      Val_2KCYCLES => 8,
      Val_4KCYCLES => 9,
      Val_8KCYCLES => 10,
      Val_16KCYCLES => 11,
      Val_32KCYCLES => 12,
      Val_64KCYCLES => 13,
      Val_128KCYCLES => 14);

   --  HFXO Timeout Control
   type HFXOTIMEOUTCTRL_Register is record
      --  Wait Duration in HFXO Startup Enable Wait State
      STARTUPTIMEOUT : HFXOTIMEOUTCTRL_STARTUPTIMEOUT_Field :=
                        Interfaces.EFM32.CMU.Val_128KCYCLES;
      --  Wait Duration in HFXO Startup Steady Wait State
      STEADYTIMEOUT  : HFXOTIMEOUTCTRL_STEADYTIMEOUT_Field :=
                        Interfaces.EFM32.CMU.Val_2KCYCLES;
      --  unspecified
      Reserved_8_11  : Interfaces.EFM32.UInt4 := 16#0#;
      --  Wait Duration in HFXO Peak Detection Wait State
      PEAKDETTIMEOUT : HFXOTIMEOUTCTRL_PEAKDETTIMEOUT_Field :=
                        Interfaces.EFM32.CMU.Val_64KCYCLES;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFXOTIMEOUTCTRL_Register use record
      STARTUPTIMEOUT at 0 range 0 .. 3;
      STEADYTIMEOUT  at 0 range 4 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      PEAKDETTIMEOUT at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype LFXOCTRL_TUNING_Field is Interfaces.EFM32.UInt7;

   --  LFXO Mode
   type LFXOCTRL_MODE_Field is
     (--  32768 Hz crystal oscillator
      XTAL,
      --  An AC coupled buffer is coupled in series with LFXTAL_N pin, suitable for
--  external sinus wave (32768 Hz).
      BUFEXTCLK,
      --  Digital external clock on LFXTAL_N pin. Oscillator is effectively bypassed.
      DIGEXTCLK)
     with Size => 2;
   for LFXOCTRL_MODE_Field use
     (XTAL => 0,
      BUFEXTCLK => 1,
      DIGEXTCLK => 2);

   subtype LFXOCTRL_GAIN_Field is Interfaces.EFM32.UInt2;
   subtype LFXOCTRL_HIGHAMPL_Field is Interfaces.EFM32.Bit;
   subtype LFXOCTRL_AGC_Field is Interfaces.EFM32.Bit;
   subtype LFXOCTRL_CUR_Field is Interfaces.EFM32.UInt2;
   subtype LFXOCTRL_BUFCUR_Field is Interfaces.EFM32.Bit;

   --  LFXO Timeout
   type LFXOCTRL_TIMEOUT_Field is
     (--  Timeout period of 2 cycles
      Val_2CYCLES,
      --  Timeout period of 256 cycles
      Val_256CYCLES,
      --  Timeout period of 1024 cycles
      Val_1KCYCLES,
      --  Timeout period of 2048 cycles
      Val_2KCYCLES,
      --  Timeout period of 4096 cycles
      Val_4KCYCLES,
      --  Timeout period of 8192 cycles
      Val_8KCYCLES,
      --  Timeout period of 16384 cycles
      Val_16KCYCLES,
      --  Timeout period of 32768 cycles
      Val_32KCYCLES)
     with Size => 3;
   for LFXOCTRL_TIMEOUT_Field use
     (Val_2CYCLES => 0,
      Val_256CYCLES => 1,
      Val_1KCYCLES => 2,
      Val_2KCYCLES => 3,
      Val_4KCYCLES => 4,
      Val_8KCYCLES => 5,
      Val_16KCYCLES => 6,
      Val_32KCYCLES => 7);

   --  LFXO Control Register
   type LFXOCTRL_Register is record
      --  LFXO Internal Capacitor Array Tuning Value
      TUNING         : LFXOCTRL_TUNING_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  LFXO Mode
      MODE           : LFXOCTRL_MODE_Field := Interfaces.EFM32.CMU.XTAL;
      --  unspecified
      Reserved_10_10 : Interfaces.EFM32.Bit := 16#0#;
      --  LFXO Startup Gain
      GAIN           : LFXOCTRL_GAIN_Field := 16#2#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  LFXO High XTAL Oscillation Amplitude Enable
      HIGHAMPL       : LFXOCTRL_HIGHAMPL_Field := 16#0#;
      --  LFXO AGC Enable
      AGC            : LFXOCTRL_AGC_Field := 16#1#;
      --  LFXO Current Trim
      CUR            : LFXOCTRL_CUR_Field := 16#0#;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  LFXO Buffer Bias Current
      BUFCUR         : LFXOCTRL_BUFCUR_Field := 16#0#;
      --  unspecified
      Reserved_21_23 : Interfaces.EFM32.UInt3 := 16#0#;
      --  LFXO Timeout
      TIMEOUT        : LFXOCTRL_TIMEOUT_Field :=
                        Interfaces.EFM32.CMU.Val_32KCYCLES;
      --  unspecified
      Reserved_27_31 : Interfaces.EFM32.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFXOCTRL_Register use record
      TUNING         at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MODE           at 0 range 8 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      GAIN           at 0 range 11 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      HIGHAMPL       at 0 range 14 .. 14;
      AGC            at 0 range 15 .. 15;
      CUR            at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      BUFCUR         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      TIMEOUT        at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype DPLLCTRL_MODE_Field is Interfaces.EFM32.Bit;
   subtype DPLLCTRL_EDGESEL_Field is Interfaces.EFM32.Bit;
   subtype DPLLCTRL_AUTORECOVER_Field is Interfaces.EFM32.Bit;

   --  Reference Clock Selection Control
   type DPLLCTRL_REFSEL_Field is
     (--  HFXO selected
      HFXO,
      --  LFXO selected
      LFXO,
      --  USHFRCO selected
      USHFRCO,
      --  CLKIN0 selected
      CLKIN0)
     with Size => 2;
   for DPLLCTRL_REFSEL_Field use
     (HFXO => 0,
      LFXO => 1,
      USHFRCO => 2,
      CLKIN0 => 3);

   subtype DPLLCTRL_DITHEN_Field is Interfaces.EFM32.Bit;

   --  DPLL Control Register
   type DPLLCTRL_Register is record
      --  Operating Mode Control
      MODE          : DPLLCTRL_MODE_Field := 16#0#;
      --  Reference Edge Select
      EDGESEL       : DPLLCTRL_EDGESEL_Field := 16#0#;
      --  Automatic Recovery Ctrl
      AUTORECOVER   : DPLLCTRL_AUTORECOVER_Field := 16#0#;
      --  Reference Clock Selection Control
      REFSEL        : DPLLCTRL_REFSEL_Field := Interfaces.EFM32.CMU.HFXO;
      --  unspecified
      Reserved_5_5  : Interfaces.EFM32.Bit := 16#0#;
      --  Dither Enable Control
      DITHEN        : DPLLCTRL_DITHEN_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.EFM32.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DPLLCTRL_Register use record
      MODE          at 0 range 0 .. 0;
      EDGESEL       at 0 range 1 .. 1;
      AUTORECOVER   at 0 range 2 .. 2;
      REFSEL        at 0 range 3 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      DITHEN        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype DPLLCTRL1_M_Field is Interfaces.EFM32.UInt12;
   subtype DPLLCTRL1_N_Field is Interfaces.EFM32.UInt12;

   --  DPLL Control Register
   type DPLLCTRL1_Register is record
      --  Factor M
      M              : DPLLCTRL1_M_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Factor N
      N              : DPLLCTRL1_N_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.EFM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DPLLCTRL1_Register use record
      M              at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      N              at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  Calibration Up-counter Select
   type CALCTRL_UPSEL_Field is
     (--  Select HFXO as up-counter
      HFXO,
      --  Select LFXO as up-counter
      LFXO,
      --  Select HFRCO as up-counter
      HFRCO,
      --  Select LFRCO as up-counter
      LFRCO,
      --  Select AUXHFRCO as up-counter
      AUXHFRCO,
      --  Select PRS input selected by PRSUPSEL as up-counter
      PRS,
      --  Select USHFRCO as up-counter
      USHFRCO)
     with Size => 3;
   for CALCTRL_UPSEL_Field use
     (HFXO => 0,
      LFXO => 1,
      HFRCO => 2,
      LFRCO => 3,
      AUXHFRCO => 4,
      PRS => 5,
      USHFRCO => 7);

   --  Calibration Down-counter Select
   type CALCTRL_DOWNSEL_Field is
     (--  Select HFCLK for down-counter
      HFCLK,
      --  Select HFXO for down-counter
      HFXO,
      --  Select LFXO for down-counter
      LFXO,
      --  Select HFRCO for down-counter
      HFRCO,
      --  Select LFRCO for down-counter
      LFRCO,
      --  Select AUXHFRCO for down-counter
      AUXHFRCO,
      --  Select PRS input selected by PRSDOWNSEL as down-counter
      PRS,
      --  Select USHFRCO for down-counter
      USHFRCO)
     with Size => 4;
   for CALCTRL_DOWNSEL_Field use
     (HFCLK => 0,
      HFXO => 1,
      LFXO => 2,
      HFRCO => 3,
      LFRCO => 4,
      AUXHFRCO => 5,
      PRS => 6,
      USHFRCO => 8);

   subtype CALCTRL_CONT_Field is Interfaces.EFM32.Bit;

   --  PRS Select for PRS Input When Selected in UPSEL
   type CALCTRL_PRSUPSEL_Field is
     (--  PRS Channel 0 selected as input
      PRSCH0,
      --  PRS Channel 1 selected as input
      PRSCH1,
      --  PRS Channel 2 selected as input
      PRSCH2,
      --  PRS Channel 3 selected as input
      PRSCH3,
      --  PRS Channel 4 selected as input
      PRSCH4,
      --  PRS Channel 5 selected as input
      PRSCH5,
      --  PRS Channel 6 selected as input
      PRSCH6,
      --  PRS Channel 7 selected as input
      PRSCH7,
      --  PRS Channel 8 selected as input
      PRSCH8,
      --  PRS Channel 9 selected as input
      PRSCH9,
      --  PRS Channel 10 selected as input
      PRSCH10,
      --  PRS Channel 11 selected as input
      PRSCH11,
      --  PRS Channel 12 selected as input
      PRSCH12,
      --  PRS Channel 13 selected as input
      PRSCH13,
      --  PRS Channel 14 selected as input
      PRSCH14,
      --  PRS Channel 15 selected as input
      PRSCH15)
     with Size => 4;
   for CALCTRL_PRSUPSEL_Field use
     (PRSCH0 => 0,
      PRSCH1 => 1,
      PRSCH2 => 2,
      PRSCH3 => 3,
      PRSCH4 => 4,
      PRSCH5 => 5,
      PRSCH6 => 6,
      PRSCH7 => 7,
      PRSCH8 => 8,
      PRSCH9 => 9,
      PRSCH10 => 10,
      PRSCH11 => 11,
      PRSCH12 => 12,
      PRSCH13 => 13,
      PRSCH14 => 14,
      PRSCH15 => 15);

   --  PRS Select for PRS Input When Selected in DOWNSEL
   type CALCTRL_PRSDOWNSEL_Field is
     (--  PRS Channel 0 selected as input
      PRSCH0,
      --  PRS Channel 1 selected as input
      PRSCH1,
      --  PRS Channel 2 selected as input
      PRSCH2,
      --  PRS Channel 3 selected as input
      PRSCH3,
      --  PRS Channel 4 selected as input
      PRSCH4,
      --  PRS Channel 5 selected as input
      PRSCH5,
      --  PRS Channel 6 selected as input
      PRSCH6,
      --  PRS Channel 7 selected as input
      PRSCH7,
      --  PRS Channel 8 selected as input
      PRSCH8,
      --  PRS Channel 9 selected as input
      PRSCH9,
      --  PRS Channel 10 selected as input
      PRSCH10,
      --  PRS Channel 11 selected as input
      PRSCH11,
      --  PRS Channel 12 selected as input
      PRSCH12,
      --  PRS Channel 13 selected as input
      PRSCH13,
      --  PRS Channel 14 selected as input
      PRSCH14,
      --  PRS Channel 15 selected as input
      PRSCH15)
     with Size => 4;
   for CALCTRL_PRSDOWNSEL_Field use
     (PRSCH0 => 0,
      PRSCH1 => 1,
      PRSCH2 => 2,
      PRSCH3 => 3,
      PRSCH4 => 4,
      PRSCH5 => 5,
      PRSCH6 => 6,
      PRSCH7 => 7,
      PRSCH8 => 8,
      PRSCH9 => 9,
      PRSCH10 => 10,
      PRSCH11 => 11,
      PRSCH12 => 12,
      PRSCH13 => 13,
      PRSCH14 => 14,
      PRSCH15 => 15);

   --  Calibration Control Register
   type CALCTRL_Register is record
      --  Calibration Up-counter Select
      UPSEL          : CALCTRL_UPSEL_Field := Interfaces.EFM32.CMU.HFXO;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit := 16#0#;
      --  Calibration Down-counter Select
      DOWNSEL        : CALCTRL_DOWNSEL_Field := Interfaces.EFM32.CMU.HFCLK;
      --  Continuous Calibration
      CONT           : CALCTRL_CONT_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : Interfaces.EFM32.UInt7 := 16#0#;
      --  PRS Select for PRS Input When Selected in UPSEL
      PRSUPSEL       : CALCTRL_PRSUPSEL_Field := Interfaces.EFM32.CMU.PRSCH0;
      --  unspecified
      Reserved_20_23 : Interfaces.EFM32.UInt4 := 16#0#;
      --  PRS Select for PRS Input When Selected in DOWNSEL
      PRSDOWNSEL     : CALCTRL_PRSDOWNSEL_Field :=
                        Interfaces.EFM32.CMU.PRSCH0;
      --  unspecified
      Reserved_28_31 : Interfaces.EFM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALCTRL_Register use record
      UPSEL          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DOWNSEL        at 0 range 4 .. 7;
      CONT           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      PRSUPSEL       at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      PRSDOWNSEL     at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype CALCNT_CALCNT_Field is Interfaces.EFM32.UInt20;

   --  Calibration Counter Register
   type CALCNT_Register is record
      --  Calibration Counter
      CALCNT         : CALCNT_CALCNT_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CALCNT_Register use record
      CALCNT         at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype OSCENCMD_HFRCOEN_Field is Interfaces.EFM32.Bit;
   subtype OSCENCMD_HFRCODIS_Field is Interfaces.EFM32.Bit;
   subtype OSCENCMD_HFXOEN_Field is Interfaces.EFM32.Bit;
   subtype OSCENCMD_HFXODIS_Field is Interfaces.EFM32.Bit;
   subtype OSCENCMD_AUXHFRCOEN_Field is Interfaces.EFM32.Bit;
   subtype OSCENCMD_AUXHFRCODIS_Field is Interfaces.EFM32.Bit;
   subtype OSCENCMD_LFRCOEN_Field is Interfaces.EFM32.Bit;
   subtype OSCENCMD_LFRCODIS_Field is Interfaces.EFM32.Bit;
   subtype OSCENCMD_LFXOEN_Field is Interfaces.EFM32.Bit;
   subtype OSCENCMD_LFXODIS_Field is Interfaces.EFM32.Bit;
   subtype OSCENCMD_USHFRCOEN_Field is Interfaces.EFM32.Bit;
   subtype OSCENCMD_USHFRCODIS_Field is Interfaces.EFM32.Bit;
   subtype OSCENCMD_DPLLEN_Field is Interfaces.EFM32.Bit;
   subtype OSCENCMD_DPLLDIS_Field is Interfaces.EFM32.Bit;

   --  Oscillator Enable/Disable Command Register
   type OSCENCMD_Register is record
      --  Write-only. HFRCO Enable
      HFRCOEN        : OSCENCMD_HFRCOEN_Field := 16#0#;
      --  Write-only. HFRCO Disable
      HFRCODIS       : OSCENCMD_HFRCODIS_Field := 16#0#;
      --  Write-only. HFXO Enable
      HFXOEN         : OSCENCMD_HFXOEN_Field := 16#0#;
      --  Write-only. HFXO Disable
      HFXODIS        : OSCENCMD_HFXODIS_Field := 16#0#;
      --  Write-only. AUXHFRCO Enable
      AUXHFRCOEN     : OSCENCMD_AUXHFRCOEN_Field := 16#0#;
      --  Write-only. AUXHFRCO Disable
      AUXHFRCODIS    : OSCENCMD_AUXHFRCODIS_Field := 16#0#;
      --  Write-only. LFRCO Enable
      LFRCOEN        : OSCENCMD_LFRCOEN_Field := 16#0#;
      --  Write-only. LFRCO Disable
      LFRCODIS       : OSCENCMD_LFRCODIS_Field := 16#0#;
      --  Write-only. LFXO Enable
      LFXOEN         : OSCENCMD_LFXOEN_Field := 16#0#;
      --  Write-only. LFXO Disable
      LFXODIS        : OSCENCMD_LFXODIS_Field := 16#0#;
      --  Write-only. USHFRCO Enable
      USHFRCOEN      : OSCENCMD_USHFRCOEN_Field := 16#0#;
      --  Write-only. USHFRCO Disable
      USHFRCODIS     : OSCENCMD_USHFRCODIS_Field := 16#0#;
      --  Write-only. DPLL Enable
      DPLLEN         : OSCENCMD_DPLLEN_Field := 16#0#;
      --  Write-only. DPLL Disable
      DPLLDIS        : OSCENCMD_DPLLDIS_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OSCENCMD_Register use record
      HFRCOEN        at 0 range 0 .. 0;
      HFRCODIS       at 0 range 1 .. 1;
      HFXOEN         at 0 range 2 .. 2;
      HFXODIS        at 0 range 3 .. 3;
      AUXHFRCOEN     at 0 range 4 .. 4;
      AUXHFRCODIS    at 0 range 5 .. 5;
      LFRCOEN        at 0 range 6 .. 6;
      LFRCODIS       at 0 range 7 .. 7;
      LFXOEN         at 0 range 8 .. 8;
      LFXODIS        at 0 range 9 .. 9;
      USHFRCOEN      at 0 range 10 .. 10;
      USHFRCODIS     at 0 range 11 .. 11;
      DPLLEN         at 0 range 12 .. 12;
      DPLLDIS        at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype CMD_CALSTART_Field is Interfaces.EFM32.Bit;
   subtype CMD_CALSTOP_Field is Interfaces.EFM32.Bit;
   subtype CMD_HFXOPEAKDETSTART_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Calibration Start
      CALSTART         : CMD_CALSTART_Field := 16#0#;
      --  Write-only. Calibration Stop
      CALSTOP          : CMD_CALSTOP_Field := 16#0#;
      --  unspecified
      Reserved_2_3     : Interfaces.EFM32.UInt2 := 16#0#;
      --  Write-only. HFXO Peak Detection Start
      HFXOPEAKDETSTART : CMD_HFXOPEAKDETSTART_Field := 16#0#;
      --  unspecified
      Reserved_5_31    : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      CALSTART         at 0 range 0 .. 0;
      CALSTOP          at 0 range 1 .. 1;
      Reserved_2_3     at 0 range 2 .. 3;
      HFXOPEAKDETSTART at 0 range 4 .. 4;
      Reserved_5_31    at 0 range 5 .. 31;
   end record;

   --  Debug Trace Clock
   type DBGCLKSEL_DBG_Field is
     (--  AUXHFRCO is the debug trace clock
      AUXHFRCO,
      --  HFCLK is the debug trace clock
      HFCLK,
      --  HFRCO divided by 2 is the debug trace clock
      HFRCODIV2)
     with Size => 2;
   for DBGCLKSEL_DBG_Field use
     (AUXHFRCO => 0,
      HFCLK => 1,
      HFRCODIV2 => 2);

   --  Debug Trace Clock Select
   type DBGCLKSEL_Register is record
      --  Debug Trace Clock
      DBG           : DBGCLKSEL_DBG_Field := Interfaces.EFM32.CMU.AUXHFRCO;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGCLKSEL_Register use record
      DBG           at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  HFCLK Select
   type HFCLKSEL_HF_Field is
     (--  Reset value for the field
      HFCLKSEL_HF_Field_Reset,
      --  Select HFRCO as HFCLK
      HFRCO,
      --  Select HFXO as HFCLK
      HFXO,
      --  Select LFRCO as HFCLK
      LFRCO,
      --  Select LFXO as HFCLK
      LFXO,
      --  Select HFRCO divided by 2 as HFCLK
      HFRCODIV2,
      --  Select USHFRCO as HFCLK
      USHFRCO,
      --  Select CLKIN0 as HFCLK
      CLKIN0)
     with Size => 3;
   for HFCLKSEL_HF_Field use
     (HFCLKSEL_HF_Field_Reset => 0,
      HFRCO => 1,
      HFXO => 2,
      LFRCO => 3,
      LFXO => 4,
      HFRCODIV2 => 5,
      USHFRCO => 6,
      CLKIN0 => 7);

   --  High Frequency Clock Select Command Register
   type HFCLKSEL_Register is record
      --  Write-only. HFCLK Select
      HF            : HFCLKSEL_HF_Field := HFCLKSEL_HF_Field_Reset;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFCLKSEL_Register use record
      HF            at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Clock Select for LFA
   type LFACLKSEL_LFA_Field is
     (--  LFACLK is disabled
      DISABLED,
      --  LFRCO selected as LFACLK
      LFRCO,
      --  LFXO selected as LFACLK
      LFXO,
      --  ULFRCO selected as LFACLK
      ULFRCO)
     with Size => 3;
   for LFACLKSEL_LFA_Field use
     (DISABLED => 0,
      LFRCO => 1,
      LFXO => 2,
      ULFRCO => 4);

   --  Low Frequency A Clock Select Register
   type LFACLKSEL_Register is record
      --  Clock Select for LFA
      LFA           : LFACLKSEL_LFA_Field := Interfaces.EFM32.CMU.DISABLED;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFACLKSEL_Register use record
      LFA           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Clock Select for LFB
   type LFBCLKSEL_LFB_Field is
     (--  LFBCLK is disabled
      DISABLED,
      --  LFRCO selected as LFBCLK
      LFRCO,
      --  LFXO selected as LFBCLK
      LFXO,
      --  HFCLK divided by two/four is selected as LFBCLK
      HFCLKLE,
      --  ULFRCO selected as LFBCLK
      ULFRCO)
     with Size => 3;
   for LFBCLKSEL_LFB_Field use
     (DISABLED => 0,
      LFRCO => 1,
      LFXO => 2,
      HFCLKLE => 3,
      ULFRCO => 4);

   --  Low Frequency B Clock Select Register
   type LFBCLKSEL_Register is record
      --  Clock Select for LFB
      LFB           : LFBCLKSEL_LFB_Field := Interfaces.EFM32.CMU.DISABLED;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFBCLKSEL_Register use record
      LFB           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Clock Select for LFE
   type LFECLKSEL_LFE_Field is
     (--  LFECLK is disabled
      DISABLED,
      --  LFRCO selected as LFECLK
      LFRCO,
      --  LFXO selected as LFECLK
      LFXO,
      --  ULFRCO selected as LFECLK
      ULFRCO)
     with Size => 3;
   for LFECLKSEL_LFE_Field use
     (DISABLED => 0,
      LFRCO => 1,
      LFXO => 2,
      ULFRCO => 4);

   --  Low Frequency E Clock Select Register
   type LFECLKSEL_Register is record
      --  Clock Select for LFE
      LFE           : LFECLKSEL_LFE_Field := Interfaces.EFM32.CMU.DISABLED;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFECLKSEL_Register use record
      LFE           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Clock Select for LFC
   type LFCCLKSEL_LFC_Field is
     (--  LFCCLK is disabled
      DISABLED,
      --  LFRCO selected as LFCCLK
      LFRCO,
      --  LFXO selected as LFCCLK
      LFXO,
      --  ULFRCO selected as LFCCLK
      ULFRCO)
     with Size => 3;
   for LFCCLKSEL_LFC_Field use
     (DISABLED => 0,
      LFRCO => 1,
      LFXO => 2,
      ULFRCO => 4);

   --  Low Frequency C Clock Select Register
   type LFCCLKSEL_Register is record
      --  Clock Select for LFC
      LFC           : LFCCLKSEL_LFC_Field := Interfaces.EFM32.CMU.DISABLED;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFCCLKSEL_Register use record
      LFC           at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype STATUS_HFRCOENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_HFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_HFXOENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_HFXORDY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_AUXHFRCOENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_AUXHFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_LFRCOENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_LFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_LFXOENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_LFXORDY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_USHFRCOENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_USHFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_DPLLENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_DPLLRDY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_CALRDY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_SDIOCLKENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_QSPI0CLKENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_PDMCLKENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_HFXOPEAKDETRDY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_HFXOAMPLOW_Field is Interfaces.EFM32.Bit;
   subtype STATUS_LFXOPHASE_Field is Interfaces.EFM32.Bit;
   subtype STATUS_LFRCOPHASE_Field is Interfaces.EFM32.Bit;
   subtype STATUS_ULFRCOPHASE_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. HFRCO Enable Status
      HFRCOENS       : STATUS_HFRCOENS_Field;
      --  Read-only. HFRCO Ready
      HFRCORDY       : STATUS_HFRCORDY_Field;
      --  Read-only. HFXO Enable Status
      HFXOENS        : STATUS_HFXOENS_Field;
      --  Read-only. HFXO Ready
      HFXORDY        : STATUS_HFXORDY_Field;
      --  Read-only. AUXHFRCO Enable Status
      AUXHFRCOENS    : STATUS_AUXHFRCOENS_Field;
      --  Read-only. AUXHFRCO Ready
      AUXHFRCORDY    : STATUS_AUXHFRCORDY_Field;
      --  Read-only. LFRCO Enable Status
      LFRCOENS       : STATUS_LFRCOENS_Field;
      --  Read-only. LFRCO Ready
      LFRCORDY       : STATUS_LFRCORDY_Field;
      --  Read-only. LFXO Enable Status
      LFXOENS        : STATUS_LFXOENS_Field;
      --  Read-only. LFXO Ready
      LFXORDY        : STATUS_LFXORDY_Field;
      --  Read-only. USHFRCO Enable Status
      USHFRCOENS     : STATUS_USHFRCOENS_Field;
      --  Read-only. USHFRCO Ready
      USHFRCORDY     : STATUS_USHFRCORDY_Field;
      --  Read-only. DPLL Enable Status
      DPLLENS        : STATUS_DPLLENS_Field;
      --  Read-only. DPLL Ready
      DPLLRDY        : STATUS_DPLLRDY_Field;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      --  Read-only. Calibration Ready
      CALRDY         : STATUS_CALRDY_Field;
      --  Read-only. SDIO Clock Enabled Status
      SDIOCLKENS     : STATUS_SDIOCLKENS_Field;
      --  Read-only. QSPI0 Clock Enabled Status
      QSPI0CLKENS    : STATUS_QSPI0CLKENS_Field;
      --  Read-only. PDM Clock Enabled Status
      PDMCLKENS      : STATUS_PDMCLKENS_Field;
      --  unspecified
      Reserved_20_21 : Interfaces.EFM32.UInt2;
      --  Read-only. HFXO Peak Detection Ready
      HFXOPEAKDETRDY : STATUS_HFXOPEAKDETRDY_Field;
      --  unspecified
      Reserved_23_24 : Interfaces.EFM32.UInt2;
      --  Read-only. HFXO Amplitude Tuning Value Too Low
      HFXOAMPLOW     : STATUS_HFXOAMPLOW_Field;
      --  unspecified
      Reserved_26_26 : Interfaces.EFM32.Bit;
      --  Read-only. LFXO Clock Phase
      LFXOPHASE      : STATUS_LFXOPHASE_Field;
      --  Read-only. LFRCO Clock Phase
      LFRCOPHASE     : STATUS_LFRCOPHASE_Field;
      --  Read-only. ULFRCO Clock Phase
      ULFRCOPHASE    : STATUS_ULFRCOPHASE_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      HFRCOENS       at 0 range 0 .. 0;
      HFRCORDY       at 0 range 1 .. 1;
      HFXOENS        at 0 range 2 .. 2;
      HFXORDY        at 0 range 3 .. 3;
      AUXHFRCOENS    at 0 range 4 .. 4;
      AUXHFRCORDY    at 0 range 5 .. 5;
      LFRCOENS       at 0 range 6 .. 6;
      LFRCORDY       at 0 range 7 .. 7;
      LFXOENS        at 0 range 8 .. 8;
      LFXORDY        at 0 range 9 .. 9;
      USHFRCOENS     at 0 range 10 .. 10;
      USHFRCORDY     at 0 range 11 .. 11;
      DPLLENS        at 0 range 12 .. 12;
      DPLLRDY        at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CALRDY         at 0 range 16 .. 16;
      SDIOCLKENS     at 0 range 17 .. 17;
      QSPI0CLKENS    at 0 range 18 .. 18;
      PDMCLKENS      at 0 range 19 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      HFXOPEAKDETRDY at 0 range 22 .. 22;
      Reserved_23_24 at 0 range 23 .. 24;
      HFXOAMPLOW     at 0 range 25 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      LFXOPHASE      at 0 range 27 .. 27;
      LFRCOPHASE     at 0 range 28 .. 28;
      ULFRCOPHASE    at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  HFCLK Selected
   type HFCLKSTATUS_SELECTED_Field is
     (--  HFRCO is selected as HFCLK clock source
      HFRCO,
      --  HFXO is selected as HFCLK clock source
      HFXO,
      --  LFRCO is selected as HFCLK clock source
      LFRCO,
      --  LFXO is selected as HFCLK clock source
      LFXO,
      --  HFRCO divided by 2 is selected as HFCLK clock source
      HFRCODIV2,
      --  USHFRCO is selected as HFCLK clock source
      USHFRCO,
      --  CLKIN0 is selected as HFCLK clock source
      CLKIN0)
     with Size => 3;
   for HFCLKSTATUS_SELECTED_Field use
     (HFRCO => 1,
      HFXO => 2,
      LFRCO => 3,
      LFXO => 4,
      HFRCODIV2 => 5,
      USHFRCO => 6,
      CLKIN0 => 7);

   --  HFCLK Status Register
   type HFCLKSTATUS_Register is record
      --  Read-only. HFCLK Selected
      SELECTED      : HFCLKSTATUS_SELECTED_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFCLKSTATUS_Register use record
      SELECTED      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype HFXOTRIMSTATUS_IBTRIMXOCORE_Field is Interfaces.EFM32.UInt11;
   subtype HFXOTRIMSTATUS_IBTRIMXOCOREMON_Field is Interfaces.EFM32.UInt11;
   subtype HFXOTRIMSTATUS_VALID_Field is Interfaces.EFM32.Bit;
   subtype HFXOTRIMSTATUS_MONVALID_Field is Interfaces.EFM32.Bit;

   --  HFXO Trim Status
   type HFXOTRIMSTATUS_Register is record
      --  Read-only. Value of IBTRIMXOCORE Found By Automatic HFXO Peak
      --  Detection Algorithm
      IBTRIMXOCORE    : HFXOTRIMSTATUS_IBTRIMXOCORE_Field;
      --  unspecified
      Reserved_11_15  : Interfaces.EFM32.UInt5;
      --  Read-only. Value of IBTRIMXOCORE Found By Automatic HFXO Peak
      --  Detection Algorithm or Peak Monitoring Algorithm (completion of
      --  Either Algorithm Will Cause an Update of IBTRIMXOCOREMON)
      IBTRIMXOCOREMON : HFXOTRIMSTATUS_IBTRIMXOCOREMON_Field;
      --  unspecified
      Reserved_27_29  : Interfaces.EFM32.UInt3;
      --  Read-only. Peak Detection Algorithm Found a Value for IBTRIMXOCORE
      VALID           : HFXOTRIMSTATUS_VALID_Field;
      --  Read-only. Peak Detection Algorithm or Peak Monitoring Algorithm
      --  Found a Value for IBTRIMXOCOREMON
      MONVALID        : HFXOTRIMSTATUS_MONVALID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFXOTRIMSTATUS_Register use record
      IBTRIMXOCORE    at 0 range 0 .. 10;
      Reserved_11_15  at 0 range 11 .. 15;
      IBTRIMXOCOREMON at 0 range 16 .. 26;
      Reserved_27_29  at 0 range 27 .. 29;
      VALID           at 0 range 30 .. 30;
      MONVALID        at 0 range 31 .. 31;
   end record;

   subtype IF_HFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IF_HFXORDY_Field is Interfaces.EFM32.Bit;
   subtype IF_LFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IF_LFXORDY_Field is Interfaces.EFM32.Bit;
   subtype IF_AUXHFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IF_CALRDY_Field is Interfaces.EFM32.Bit;
   subtype IF_CALOF_Field is Interfaces.EFM32.Bit;
   subtype IF_USHFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IF_HFXODISERR_Field is Interfaces.EFM32.Bit;
   subtype IF_HFXOAUTOSW_Field is Interfaces.EFM32.Bit;
   subtype IF_HFXOPEAKDETRDY_Field is Interfaces.EFM32.Bit;
   subtype IF_HFRCODIS_Field is Interfaces.EFM32.Bit;
   subtype IF_LFTIMEOUTERR_Field is Interfaces.EFM32.Bit;
   subtype IF_DPLLRDY_Field is Interfaces.EFM32.Bit;
   subtype IF_DPLLLOCKFAILLOW_Field is Interfaces.EFM32.Bit;
   subtype IF_DPLLLOCKFAILHIGH_Field is Interfaces.EFM32.Bit;
   subtype IF_LFXOEDGE_Field is Interfaces.EFM32.Bit;
   subtype IF_LFRCOEDGE_Field is Interfaces.EFM32.Bit;
   subtype IF_ULFRCOEDGE_Field is Interfaces.EFM32.Bit;
   subtype IF_CMUERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. HFRCO Ready Interrupt Flag
      HFRCORDY         : IF_HFRCORDY_Field;
      --  Read-only. HFXO Ready Interrupt Flag
      HFXORDY          : IF_HFXORDY_Field;
      --  Read-only. LFRCO Ready Interrupt Flag
      LFRCORDY         : IF_LFRCORDY_Field;
      --  Read-only. LFXO Ready Interrupt Flag
      LFXORDY          : IF_LFXORDY_Field;
      --  Read-only. AUXHFRCO Ready Interrupt Flag
      AUXHFRCORDY      : IF_AUXHFRCORDY_Field;
      --  Read-only. Calibration Ready Interrupt Flag
      CALRDY           : IF_CALRDY_Field;
      --  Read-only. Calibration Overflow Interrupt Flag
      CALOF            : IF_CALOF_Field;
      --  Read-only. USHFRCO Ready Interrupt Flag
      USHFRCORDY       : IF_USHFRCORDY_Field;
      --  Read-only. HFXO Disable Error Interrupt Flag
      HFXODISERR       : IF_HFXODISERR_Field;
      --  Read-only. HFXO Automatic Switch Interrupt Flag
      HFXOAUTOSW       : IF_HFXOAUTOSW_Field;
      --  unspecified
      Reserved_10_10   : Interfaces.EFM32.Bit;
      --  Read-only. HFXO Automatic Peak Detection Ready Interrupt Flag
      HFXOPEAKDETRDY   : IF_HFXOPEAKDETRDY_Field;
      --  unspecified
      Reserved_12_12   : Interfaces.EFM32.Bit;
      --  Read-only. HFRCO Disable Interrupt Flag
      HFRCODIS         : IF_HFRCODIS_Field;
      --  Read-only. Low Frequency Timeout Error Interrupt Flag
      LFTIMEOUTERR     : IF_LFTIMEOUTERR_Field;
      --  Read-only. DPLL Lock Interrupt Flag
      DPLLRDY          : IF_DPLLRDY_Field;
      --  Read-only. DPLL Lock Failure Low Interrupt Flag
      DPLLLOCKFAILLOW  : IF_DPLLLOCKFAILLOW_Field;
      --  Read-only. DPLL Lock Failure Low Interrupt Flag
      DPLLLOCKFAILHIGH : IF_DPLLLOCKFAILHIGH_Field;
      --  unspecified
      Reserved_18_26   : Interfaces.EFM32.UInt9;
      --  Read-only. LFXO Clock Edge Detected Interrupt Flag
      LFXOEDGE         : IF_LFXOEDGE_Field;
      --  Read-only. LFRCO Clock Edge Detected Interrupt Flag
      LFRCOEDGE        : IF_LFRCOEDGE_Field;
      --  Read-only. ULFRCO Clock Edge Detected Interrupt Flag
      ULFRCOEDGE       : IF_ULFRCOEDGE_Field;
      --  unspecified
      Reserved_30_30   : Interfaces.EFM32.Bit;
      --  Read-only. CMU Error Interrupt Flag
      CMUERR           : IF_CMUERR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      HFRCORDY         at 0 range 0 .. 0;
      HFXORDY          at 0 range 1 .. 1;
      LFRCORDY         at 0 range 2 .. 2;
      LFXORDY          at 0 range 3 .. 3;
      AUXHFRCORDY      at 0 range 4 .. 4;
      CALRDY           at 0 range 5 .. 5;
      CALOF            at 0 range 6 .. 6;
      USHFRCORDY       at 0 range 7 .. 7;
      HFXODISERR       at 0 range 8 .. 8;
      HFXOAUTOSW       at 0 range 9 .. 9;
      Reserved_10_10   at 0 range 10 .. 10;
      HFXOPEAKDETRDY   at 0 range 11 .. 11;
      Reserved_12_12   at 0 range 12 .. 12;
      HFRCODIS         at 0 range 13 .. 13;
      LFTIMEOUTERR     at 0 range 14 .. 14;
      DPLLRDY          at 0 range 15 .. 15;
      DPLLLOCKFAILLOW  at 0 range 16 .. 16;
      DPLLLOCKFAILHIGH at 0 range 17 .. 17;
      Reserved_18_26   at 0 range 18 .. 26;
      LFXOEDGE         at 0 range 27 .. 27;
      LFRCOEDGE        at 0 range 28 .. 28;
      ULFRCOEDGE       at 0 range 29 .. 29;
      Reserved_30_30   at 0 range 30 .. 30;
      CMUERR           at 0 range 31 .. 31;
   end record;

   subtype IFS_HFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IFS_HFXORDY_Field is Interfaces.EFM32.Bit;
   subtype IFS_LFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IFS_LFXORDY_Field is Interfaces.EFM32.Bit;
   subtype IFS_AUXHFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IFS_CALRDY_Field is Interfaces.EFM32.Bit;
   subtype IFS_CALOF_Field is Interfaces.EFM32.Bit;
   subtype IFS_USHFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IFS_HFXODISERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_HFXOAUTOSW_Field is Interfaces.EFM32.Bit;
   subtype IFS_HFXOPEAKDETRDY_Field is Interfaces.EFM32.Bit;
   subtype IFS_HFRCODIS_Field is Interfaces.EFM32.Bit;
   subtype IFS_LFTIMEOUTERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_DPLLRDY_Field is Interfaces.EFM32.Bit;
   subtype IFS_DPLLLOCKFAILLOW_Field is Interfaces.EFM32.Bit;
   subtype IFS_DPLLLOCKFAILHIGH_Field is Interfaces.EFM32.Bit;
   subtype IFS_LFXOEDGE_Field is Interfaces.EFM32.Bit;
   subtype IFS_LFRCOEDGE_Field is Interfaces.EFM32.Bit;
   subtype IFS_ULFRCOEDGE_Field is Interfaces.EFM32.Bit;
   subtype IFS_CMUERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set HFRCORDY Interrupt Flag
      HFRCORDY         : IFS_HFRCORDY_Field := 16#0#;
      --  Write-only. Set HFXORDY Interrupt Flag
      HFXORDY          : IFS_HFXORDY_Field := 16#0#;
      --  Write-only. Set LFRCORDY Interrupt Flag
      LFRCORDY         : IFS_LFRCORDY_Field := 16#0#;
      --  Write-only. Set LFXORDY Interrupt Flag
      LFXORDY          : IFS_LFXORDY_Field := 16#0#;
      --  Write-only. Set AUXHFRCORDY Interrupt Flag
      AUXHFRCORDY      : IFS_AUXHFRCORDY_Field := 16#0#;
      --  Write-only. Set CALRDY Interrupt Flag
      CALRDY           : IFS_CALRDY_Field := 16#0#;
      --  Write-only. Set CALOF Interrupt Flag
      CALOF            : IFS_CALOF_Field := 16#0#;
      --  Write-only. Set USHFRCORDY Interrupt Flag
      USHFRCORDY       : IFS_USHFRCORDY_Field := 16#0#;
      --  Write-only. Set HFXODISERR Interrupt Flag
      HFXODISERR       : IFS_HFXODISERR_Field := 16#0#;
      --  Write-only. Set HFXOAUTOSW Interrupt Flag
      HFXOAUTOSW       : IFS_HFXOAUTOSW_Field := 16#0#;
      --  unspecified
      Reserved_10_10   : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Set HFXOPEAKDETRDY Interrupt Flag
      HFXOPEAKDETRDY   : IFS_HFXOPEAKDETRDY_Field := 16#0#;
      --  unspecified
      Reserved_12_12   : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Set HFRCODIS Interrupt Flag
      HFRCODIS         : IFS_HFRCODIS_Field := 16#0#;
      --  Write-only. Set LFTIMEOUTERR Interrupt Flag
      LFTIMEOUTERR     : IFS_LFTIMEOUTERR_Field := 16#0#;
      --  Write-only. Set DPLLRDY Interrupt Flag
      DPLLRDY          : IFS_DPLLRDY_Field := 16#0#;
      --  Write-only. Set DPLLLOCKFAILLOW Interrupt Flag
      DPLLLOCKFAILLOW  : IFS_DPLLLOCKFAILLOW_Field := 16#0#;
      --  Write-only. Set DPLLLOCKFAILHIGH Interrupt Flag
      DPLLLOCKFAILHIGH : IFS_DPLLLOCKFAILHIGH_Field := 16#0#;
      --  unspecified
      Reserved_18_26   : Interfaces.EFM32.UInt9 := 16#0#;
      --  Write-only. Set LFXOEDGE Interrupt Flag
      LFXOEDGE         : IFS_LFXOEDGE_Field := 16#0#;
      --  Write-only. Set LFRCOEDGE Interrupt Flag
      LFRCOEDGE        : IFS_LFRCOEDGE_Field := 16#0#;
      --  Write-only. Set ULFRCOEDGE Interrupt Flag
      ULFRCOEDGE       : IFS_ULFRCOEDGE_Field := 16#0#;
      --  unspecified
      Reserved_30_30   : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Set CMUERR Interrupt Flag
      CMUERR           : IFS_CMUERR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      HFRCORDY         at 0 range 0 .. 0;
      HFXORDY          at 0 range 1 .. 1;
      LFRCORDY         at 0 range 2 .. 2;
      LFXORDY          at 0 range 3 .. 3;
      AUXHFRCORDY      at 0 range 4 .. 4;
      CALRDY           at 0 range 5 .. 5;
      CALOF            at 0 range 6 .. 6;
      USHFRCORDY       at 0 range 7 .. 7;
      HFXODISERR       at 0 range 8 .. 8;
      HFXOAUTOSW       at 0 range 9 .. 9;
      Reserved_10_10   at 0 range 10 .. 10;
      HFXOPEAKDETRDY   at 0 range 11 .. 11;
      Reserved_12_12   at 0 range 12 .. 12;
      HFRCODIS         at 0 range 13 .. 13;
      LFTIMEOUTERR     at 0 range 14 .. 14;
      DPLLRDY          at 0 range 15 .. 15;
      DPLLLOCKFAILLOW  at 0 range 16 .. 16;
      DPLLLOCKFAILHIGH at 0 range 17 .. 17;
      Reserved_18_26   at 0 range 18 .. 26;
      LFXOEDGE         at 0 range 27 .. 27;
      LFRCOEDGE        at 0 range 28 .. 28;
      ULFRCOEDGE       at 0 range 29 .. 29;
      Reserved_30_30   at 0 range 30 .. 30;
      CMUERR           at 0 range 31 .. 31;
   end record;

   subtype IFC_HFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IFC_HFXORDY_Field is Interfaces.EFM32.Bit;
   subtype IFC_LFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IFC_LFXORDY_Field is Interfaces.EFM32.Bit;
   subtype IFC_AUXHFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IFC_CALRDY_Field is Interfaces.EFM32.Bit;
   subtype IFC_CALOF_Field is Interfaces.EFM32.Bit;
   subtype IFC_USHFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IFC_HFXODISERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_HFXOAUTOSW_Field is Interfaces.EFM32.Bit;
   subtype IFC_HFXOPEAKDETRDY_Field is Interfaces.EFM32.Bit;
   subtype IFC_HFRCODIS_Field is Interfaces.EFM32.Bit;
   subtype IFC_LFTIMEOUTERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_DPLLRDY_Field is Interfaces.EFM32.Bit;
   subtype IFC_DPLLLOCKFAILLOW_Field is Interfaces.EFM32.Bit;
   subtype IFC_DPLLLOCKFAILHIGH_Field is Interfaces.EFM32.Bit;
   subtype IFC_LFXOEDGE_Field is Interfaces.EFM32.Bit;
   subtype IFC_LFRCOEDGE_Field is Interfaces.EFM32.Bit;
   subtype IFC_ULFRCOEDGE_Field is Interfaces.EFM32.Bit;
   subtype IFC_CMUERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear HFRCORDY Interrupt Flag
      HFRCORDY         : IFC_HFRCORDY_Field := 16#0#;
      --  Write-only. Clear HFXORDY Interrupt Flag
      HFXORDY          : IFC_HFXORDY_Field := 16#0#;
      --  Write-only. Clear LFRCORDY Interrupt Flag
      LFRCORDY         : IFC_LFRCORDY_Field := 16#0#;
      --  Write-only. Clear LFXORDY Interrupt Flag
      LFXORDY          : IFC_LFXORDY_Field := 16#0#;
      --  Write-only. Clear AUXHFRCORDY Interrupt Flag
      AUXHFRCORDY      : IFC_AUXHFRCORDY_Field := 16#0#;
      --  Write-only. Clear CALRDY Interrupt Flag
      CALRDY           : IFC_CALRDY_Field := 16#0#;
      --  Write-only. Clear CALOF Interrupt Flag
      CALOF            : IFC_CALOF_Field := 16#0#;
      --  Write-only. Clear USHFRCORDY Interrupt Flag
      USHFRCORDY       : IFC_USHFRCORDY_Field := 16#0#;
      --  Write-only. Clear HFXODISERR Interrupt Flag
      HFXODISERR       : IFC_HFXODISERR_Field := 16#0#;
      --  Write-only. Clear HFXOAUTOSW Interrupt Flag
      HFXOAUTOSW       : IFC_HFXOAUTOSW_Field := 16#0#;
      --  unspecified
      Reserved_10_10   : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Clear HFXOPEAKDETRDY Interrupt Flag
      HFXOPEAKDETRDY   : IFC_HFXOPEAKDETRDY_Field := 16#0#;
      --  unspecified
      Reserved_12_12   : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Clear HFRCODIS Interrupt Flag
      HFRCODIS         : IFC_HFRCODIS_Field := 16#0#;
      --  Write-only. Clear LFTIMEOUTERR Interrupt Flag
      LFTIMEOUTERR     : IFC_LFTIMEOUTERR_Field := 16#0#;
      --  Write-only. Clear DPLLRDY Interrupt Flag
      DPLLRDY          : IFC_DPLLRDY_Field := 16#0#;
      --  Write-only. Clear DPLLLOCKFAILLOW Interrupt Flag
      DPLLLOCKFAILLOW  : IFC_DPLLLOCKFAILLOW_Field := 16#0#;
      --  Write-only. Clear DPLLLOCKFAILHIGH Interrupt Flag
      DPLLLOCKFAILHIGH : IFC_DPLLLOCKFAILHIGH_Field := 16#0#;
      --  unspecified
      Reserved_18_26   : Interfaces.EFM32.UInt9 := 16#0#;
      --  Write-only. Clear LFXOEDGE Interrupt Flag
      LFXOEDGE         : IFC_LFXOEDGE_Field := 16#0#;
      --  Write-only. Clear LFRCOEDGE Interrupt Flag
      LFRCOEDGE        : IFC_LFRCOEDGE_Field := 16#0#;
      --  Write-only. Clear ULFRCOEDGE Interrupt Flag
      ULFRCOEDGE       : IFC_ULFRCOEDGE_Field := 16#0#;
      --  unspecified
      Reserved_30_30   : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Clear CMUERR Interrupt Flag
      CMUERR           : IFC_CMUERR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      HFRCORDY         at 0 range 0 .. 0;
      HFXORDY          at 0 range 1 .. 1;
      LFRCORDY         at 0 range 2 .. 2;
      LFXORDY          at 0 range 3 .. 3;
      AUXHFRCORDY      at 0 range 4 .. 4;
      CALRDY           at 0 range 5 .. 5;
      CALOF            at 0 range 6 .. 6;
      USHFRCORDY       at 0 range 7 .. 7;
      HFXODISERR       at 0 range 8 .. 8;
      HFXOAUTOSW       at 0 range 9 .. 9;
      Reserved_10_10   at 0 range 10 .. 10;
      HFXOPEAKDETRDY   at 0 range 11 .. 11;
      Reserved_12_12   at 0 range 12 .. 12;
      HFRCODIS         at 0 range 13 .. 13;
      LFTIMEOUTERR     at 0 range 14 .. 14;
      DPLLRDY          at 0 range 15 .. 15;
      DPLLLOCKFAILLOW  at 0 range 16 .. 16;
      DPLLLOCKFAILHIGH at 0 range 17 .. 17;
      Reserved_18_26   at 0 range 18 .. 26;
      LFXOEDGE         at 0 range 27 .. 27;
      LFRCOEDGE        at 0 range 28 .. 28;
      ULFRCOEDGE       at 0 range 29 .. 29;
      Reserved_30_30   at 0 range 30 .. 30;
      CMUERR           at 0 range 31 .. 31;
   end record;

   subtype IEN_HFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IEN_HFXORDY_Field is Interfaces.EFM32.Bit;
   subtype IEN_LFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IEN_LFXORDY_Field is Interfaces.EFM32.Bit;
   subtype IEN_AUXHFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IEN_CALRDY_Field is Interfaces.EFM32.Bit;
   subtype IEN_CALOF_Field is Interfaces.EFM32.Bit;
   subtype IEN_USHFRCORDY_Field is Interfaces.EFM32.Bit;
   subtype IEN_HFXODISERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_HFXOAUTOSW_Field is Interfaces.EFM32.Bit;
   subtype IEN_HFXOPEAKDETRDY_Field is Interfaces.EFM32.Bit;
   subtype IEN_HFRCODIS_Field is Interfaces.EFM32.Bit;
   subtype IEN_LFTIMEOUTERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_DPLLRDY_Field is Interfaces.EFM32.Bit;
   subtype IEN_DPLLLOCKFAILLOW_Field is Interfaces.EFM32.Bit;
   subtype IEN_DPLLLOCKFAILHIGH_Field is Interfaces.EFM32.Bit;
   subtype IEN_LFXOEDGE_Field is Interfaces.EFM32.Bit;
   subtype IEN_LFRCOEDGE_Field is Interfaces.EFM32.Bit;
   subtype IEN_ULFRCOEDGE_Field is Interfaces.EFM32.Bit;
   subtype IEN_CMUERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  HFRCORDY Interrupt Enable
      HFRCORDY         : IEN_HFRCORDY_Field := 16#0#;
      --  HFXORDY Interrupt Enable
      HFXORDY          : IEN_HFXORDY_Field := 16#0#;
      --  LFRCORDY Interrupt Enable
      LFRCORDY         : IEN_LFRCORDY_Field := 16#0#;
      --  LFXORDY Interrupt Enable
      LFXORDY          : IEN_LFXORDY_Field := 16#0#;
      --  AUXHFRCORDY Interrupt Enable
      AUXHFRCORDY      : IEN_AUXHFRCORDY_Field := 16#0#;
      --  CALRDY Interrupt Enable
      CALRDY           : IEN_CALRDY_Field := 16#0#;
      --  CALOF Interrupt Enable
      CALOF            : IEN_CALOF_Field := 16#0#;
      --  USHFRCORDY Interrupt Enable
      USHFRCORDY       : IEN_USHFRCORDY_Field := 16#0#;
      --  HFXODISERR Interrupt Enable
      HFXODISERR       : IEN_HFXODISERR_Field := 16#0#;
      --  HFXOAUTOSW Interrupt Enable
      HFXOAUTOSW       : IEN_HFXOAUTOSW_Field := 16#0#;
      --  unspecified
      Reserved_10_10   : Interfaces.EFM32.Bit := 16#0#;
      --  HFXOPEAKDETRDY Interrupt Enable
      HFXOPEAKDETRDY   : IEN_HFXOPEAKDETRDY_Field := 16#0#;
      --  unspecified
      Reserved_12_12   : Interfaces.EFM32.Bit := 16#0#;
      --  HFRCODIS Interrupt Enable
      HFRCODIS         : IEN_HFRCODIS_Field := 16#0#;
      --  LFTIMEOUTERR Interrupt Enable
      LFTIMEOUTERR     : IEN_LFTIMEOUTERR_Field := 16#0#;
      --  DPLLRDY Interrupt Enable
      DPLLRDY          : IEN_DPLLRDY_Field := 16#0#;
      --  DPLLLOCKFAILLOW Interrupt Enable
      DPLLLOCKFAILLOW  : IEN_DPLLLOCKFAILLOW_Field := 16#0#;
      --  DPLLLOCKFAILHIGH Interrupt Enable
      DPLLLOCKFAILHIGH : IEN_DPLLLOCKFAILHIGH_Field := 16#0#;
      --  unspecified
      Reserved_18_26   : Interfaces.EFM32.UInt9 := 16#0#;
      --  LFXOEDGE Interrupt Enable
      LFXOEDGE         : IEN_LFXOEDGE_Field := 16#0#;
      --  LFRCOEDGE Interrupt Enable
      LFRCOEDGE        : IEN_LFRCOEDGE_Field := 16#0#;
      --  ULFRCOEDGE Interrupt Enable
      ULFRCOEDGE       : IEN_ULFRCOEDGE_Field := 16#0#;
      --  unspecified
      Reserved_30_30   : Interfaces.EFM32.Bit := 16#0#;
      --  CMUERR Interrupt Enable
      CMUERR           : IEN_CMUERR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      HFRCORDY         at 0 range 0 .. 0;
      HFXORDY          at 0 range 1 .. 1;
      LFRCORDY         at 0 range 2 .. 2;
      LFXORDY          at 0 range 3 .. 3;
      AUXHFRCORDY      at 0 range 4 .. 4;
      CALRDY           at 0 range 5 .. 5;
      CALOF            at 0 range 6 .. 6;
      USHFRCORDY       at 0 range 7 .. 7;
      HFXODISERR       at 0 range 8 .. 8;
      HFXOAUTOSW       at 0 range 9 .. 9;
      Reserved_10_10   at 0 range 10 .. 10;
      HFXOPEAKDETRDY   at 0 range 11 .. 11;
      Reserved_12_12   at 0 range 12 .. 12;
      HFRCODIS         at 0 range 13 .. 13;
      LFTIMEOUTERR     at 0 range 14 .. 14;
      DPLLRDY          at 0 range 15 .. 15;
      DPLLLOCKFAILLOW  at 0 range 16 .. 16;
      DPLLLOCKFAILHIGH at 0 range 17 .. 17;
      Reserved_18_26   at 0 range 18 .. 26;
      LFXOEDGE         at 0 range 27 .. 27;
      LFRCOEDGE        at 0 range 28 .. 28;
      ULFRCOEDGE       at 0 range 29 .. 29;
      Reserved_30_30   at 0 range 30 .. 30;
      CMUERR           at 0 range 31 .. 31;
   end record;

   subtype HFBUSCLKEN0_LE_Field is Interfaces.EFM32.Bit;
   subtype HFBUSCLKEN0_CRYPTO0_Field is Interfaces.EFM32.Bit;
   subtype HFBUSCLKEN0_EBI_Field is Interfaces.EFM32.Bit;
   subtype HFBUSCLKEN0_SDIO_Field is Interfaces.EFM32.Bit;
   subtype HFBUSCLKEN0_GPIO_Field is Interfaces.EFM32.Bit;
   subtype HFBUSCLKEN0_PRS_Field is Interfaces.EFM32.Bit;
   subtype HFBUSCLKEN0_LDMA_Field is Interfaces.EFM32.Bit;
   subtype HFBUSCLKEN0_GPCRC_Field is Interfaces.EFM32.Bit;
   subtype HFBUSCLKEN0_QSPI0_Field is Interfaces.EFM32.Bit;
   subtype HFBUSCLKEN0_USB_Field is Interfaces.EFM32.Bit;

   --  High Frequency Bus Clock Enable Register 0
   type HFBUSCLKEN0_Register is record
      --  Low Energy Peripheral Interface Clock Enable
      LE             : HFBUSCLKEN0_LE_Field := 16#0#;
      --  Advanced Encryption Standard Accelerator Clock Enable
      CRYPTO0        : HFBUSCLKEN0_CRYPTO0_Field := 16#0#;
      --  External Bus Interface Clock Enable
      EBI            : HFBUSCLKEN0_EBI_Field := 16#0#;
      --  SDIO Controller Clock Enable
      SDIO           : HFBUSCLKEN0_SDIO_Field := 16#0#;
      --  General purpose Input/Output Clock Enable
      GPIO           : HFBUSCLKEN0_GPIO_Field := 16#0#;
      --  Peripheral Reflex System Clock Enable
      PRS            : HFBUSCLKEN0_PRS_Field := 16#0#;
      --  Linked Direct Memory Access Controller Clock Enable
      LDMA           : HFBUSCLKEN0_LDMA_Field := 16#0#;
      --  General Purpose CRC Clock Enable
      GPCRC          : HFBUSCLKEN0_GPCRC_Field := 16#0#;
      --  Quad-SPI Clock Enable
      QSPI0          : HFBUSCLKEN0_QSPI0_Field := 16#0#;
      --  Universal Serial Bus Interface Clock Enable
      USB            : HFBUSCLKEN0_USB_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFBUSCLKEN0_Register use record
      LE             at 0 range 0 .. 0;
      CRYPTO0        at 0 range 1 .. 1;
      EBI            at 0 range 2 .. 2;
      SDIO           at 0 range 3 .. 3;
      GPIO           at 0 range 4 .. 4;
      PRS            at 0 range 5 .. 5;
      LDMA           at 0 range 6 .. 6;
      GPCRC          at 0 range 7 .. 7;
      QSPI0          at 0 range 8 .. 8;
      USB            at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  HFPERCLKEN0_USART array element
   subtype HFPERCLKEN0_USART_Element is Interfaces.EFM32.Bit;

   --  HFPERCLKEN0_USART array
   type HFPERCLKEN0_USART_Field_Array is array (0 .. 4)
     of HFPERCLKEN0_USART_Element
     with Component_Size => 1, Size => 5;

   --  Type definition for HFPERCLKEN0_USART
   type HFPERCLKEN0_USART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  USART as a value
            Val : Interfaces.EFM32.UInt5;
         when True =>
            --  USART as an array
            Arr : HFPERCLKEN0_USART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for HFPERCLKEN0_USART_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   --  HFPERCLKEN0_TIMER array element
   subtype HFPERCLKEN0_TIMER_Element is Interfaces.EFM32.Bit;

   --  HFPERCLKEN0_TIMER array
   type HFPERCLKEN0_TIMER_Field_Array is array (0 .. 3)
     of HFPERCLKEN0_TIMER_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for HFPERCLKEN0_TIMER
   type HFPERCLKEN0_TIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMER as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  TIMER as an array
            Arr : HFPERCLKEN0_TIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for HFPERCLKEN0_TIMER_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  HFPERCLKEN0_ACMP array element
   subtype HFPERCLKEN0_ACMP_Element is Interfaces.EFM32.Bit;

   --  HFPERCLKEN0_ACMP array
   type HFPERCLKEN0_ACMP_Field_Array is array (0 .. 2)
     of HFPERCLKEN0_ACMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for HFPERCLKEN0_ACMP
   type HFPERCLKEN0_ACMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ACMP as a value
            Val : Interfaces.EFM32.UInt3;
         when True =>
            --  ACMP as an array
            Arr : HFPERCLKEN0_ACMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for HFPERCLKEN0_ACMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  HFPERCLKEN0_I2C array element
   subtype HFPERCLKEN0_I2C_Element is Interfaces.EFM32.Bit;

   --  HFPERCLKEN0_I2C array
   type HFPERCLKEN0_I2C_Field_Array is array (0 .. 1)
     of HFPERCLKEN0_I2C_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for HFPERCLKEN0_I2C
   type HFPERCLKEN0_I2C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  I2C as an array
            Arr : HFPERCLKEN0_I2C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for HFPERCLKEN0_I2C_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  HFPERCLKEN0_ADC array element
   subtype HFPERCLKEN0_ADC_Element is Interfaces.EFM32.Bit;

   --  HFPERCLKEN0_ADC array
   type HFPERCLKEN0_ADC_Field_Array is array (0 .. 1)
     of HFPERCLKEN0_ADC_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for HFPERCLKEN0_ADC
   type HFPERCLKEN0_ADC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ADC as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  ADC as an array
            Arr : HFPERCLKEN0_ADC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for HFPERCLKEN0_ADC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype HFPERCLKEN0_PDM_Field is Interfaces.EFM32.Bit;
   subtype HFPERCLKEN0_CRYOTIMER_Field is Interfaces.EFM32.Bit;
   subtype HFPERCLKEN0_IDAC0_Field is Interfaces.EFM32.Bit;
   subtype HFPERCLKEN0_TRNG0_Field is Interfaces.EFM32.Bit;

   --  High Frequency Peripheral Clock Enable Register 0
   type HFPERCLKEN0_Register is record
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0 Clock
      --  Enable
      USART          : HFPERCLKEN0_USART_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Timer 0 Clock Enable
      TIMER          : HFPERCLKEN0_TIMER_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Analog Comparator 0 Clock Enable
      ACMP           : HFPERCLKEN0_ACMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  I2C 0 Clock Enable
      I2C            : HFPERCLKEN0_I2C_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Analog to Digital Converter 0 Clock Enable
      ADC            : HFPERCLKEN0_ADC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  PDM Interface Clock Enable
      PDM            : HFPERCLKEN0_PDM_Field := 16#0#;
      --  CRYOTIMER Clock Enable
      CRYOTIMER      : HFPERCLKEN0_CRYOTIMER_Field := 16#0#;
      --  Current Digital to Analog Converter 0 Clock Enable
      IDAC0          : HFPERCLKEN0_IDAC0_Field := 16#0#;
      --  True Random Number Generator 0 Clock Enable
      TRNG0          : HFPERCLKEN0_TRNG0_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFPERCLKEN0_Register use record
      USART          at 0 range 0 .. 4;
      TIMER          at 0 range 5 .. 8;
      ACMP           at 0 range 9 .. 11;
      I2C            at 0 range 12 .. 13;
      ADC            at 0 range 14 .. 15;
      PDM            at 0 range 16 .. 16;
      CRYOTIMER      at 0 range 17 .. 17;
      IDAC0          at 0 range 18 .. 18;
      TRNG0          at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  HFPERCLKEN1_UART array element
   subtype HFPERCLKEN1_UART_Element is Interfaces.EFM32.Bit;

   --  HFPERCLKEN1_UART array
   type HFPERCLKEN1_UART_Field_Array is array (0 .. 1)
     of HFPERCLKEN1_UART_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for HFPERCLKEN1_UART
   type HFPERCLKEN1_UART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UART as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  UART as an array
            Arr : HFPERCLKEN1_UART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for HFPERCLKEN1_UART_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  HFPERCLKEN1_WTIMER array element
   subtype HFPERCLKEN1_WTIMER_Element is Interfaces.EFM32.Bit;

   --  HFPERCLKEN1_WTIMER array
   type HFPERCLKEN1_WTIMER_Field_Array is array (0 .. 1)
     of HFPERCLKEN1_WTIMER_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for HFPERCLKEN1_WTIMER
   type HFPERCLKEN1_WTIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WTIMER as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  WTIMER as an array
            Arr : HFPERCLKEN1_WTIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for HFPERCLKEN1_WTIMER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  HFPERCLKEN1_CAN array element
   subtype HFPERCLKEN1_CAN_Element is Interfaces.EFM32.Bit;

   --  HFPERCLKEN1_CAN array
   type HFPERCLKEN1_CAN_Field_Array is array (0 .. 1)
     of HFPERCLKEN1_CAN_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for HFPERCLKEN1_CAN
   type HFPERCLKEN1_CAN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CAN as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  CAN as an array
            Arr : HFPERCLKEN1_CAN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for HFPERCLKEN1_CAN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype HFPERCLKEN1_VDAC0_Field is Interfaces.EFM32.Bit;
   subtype HFPERCLKEN1_CSEN_Field is Interfaces.EFM32.Bit;

   --  High Frequency Peripheral Clock Enable Register 1
   type HFPERCLKEN1_Register is record
      --  Universal Asynchronous Receiver/Transmitter 0 Clock Enable
      UART          : HFPERCLKEN1_UART_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Wide Timer 0 Clock Enable
      WTIMER        : HFPERCLKEN1_WTIMER_Field :=
                       (As_Array => False, Val => 16#0#);
      --  CAN 0 Clock Enable
      CAN           : HFPERCLKEN1_CAN_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Digital to Analog Converter 0 Clock Enable
      VDAC0         : HFPERCLKEN1_VDAC0_Field := 16#0#;
      --  Capacitive touch sense module Clock Enable
      CSEN          : HFPERCLKEN1_CSEN_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFPERCLKEN1_Register use record
      UART          at 0 range 0 .. 1;
      WTIMER        at 0 range 2 .. 3;
      CAN           at 0 range 4 .. 5;
      VDAC0         at 0 range 6 .. 6;
      CSEN          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  LFACLKEN0_LETIMER array element
   subtype LFACLKEN0_LETIMER_Element is Interfaces.EFM32.Bit;

   --  LFACLKEN0_LETIMER array
   type LFACLKEN0_LETIMER_Field_Array is array (0 .. 1)
     of LFACLKEN0_LETIMER_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for LFACLKEN0_LETIMER
   type LFACLKEN0_LETIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LETIMER as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  LETIMER as an array
            Arr : LFACLKEN0_LETIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for LFACLKEN0_LETIMER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype LFACLKEN0_LESENSE_Field is Interfaces.EFM32.Bit;
   subtype LFACLKEN0_LCD_Field is Interfaces.EFM32.Bit;
   subtype LFACLKEN0_RTC_Field is Interfaces.EFM32.Bit;

   --  Low Frequency a Clock Enable Register 0 (Async Reg)
   type LFACLKEN0_Register is record
      --  Low Energy Timer 0 Clock Enable
      LETIMER       : LFACLKEN0_LETIMER_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Low Energy Sensor Interface Clock Enable
      LESENSE       : LFACLKEN0_LESENSE_Field := 16#0#;
      --  Liquid Crystal Display Controller Clock Enable
      LCD           : LFACLKEN0_LCD_Field := 16#0#;
      --  Real-Time Counter Clock Enable
      RTC           : LFACLKEN0_RTC_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFACLKEN0_Register use record
      LETIMER       at 0 range 0 .. 1;
      LESENSE       at 0 range 2 .. 2;
      LCD           at 0 range 3 .. 3;
      RTC           at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  LFBCLKEN0_LEUART array element
   subtype LFBCLKEN0_LEUART_Element is Interfaces.EFM32.Bit;

   --  LFBCLKEN0_LEUART array
   type LFBCLKEN0_LEUART_Field_Array is array (0 .. 1)
     of LFBCLKEN0_LEUART_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for LFBCLKEN0_LEUART
   type LFBCLKEN0_LEUART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LEUART as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  LEUART as an array
            Arr : LFBCLKEN0_LEUART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for LFBCLKEN0_LEUART_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype LFBCLKEN0_SYSTICK_Field is Interfaces.EFM32.Bit;
   subtype LFBCLKEN0_CSEN_Field is Interfaces.EFM32.Bit;

   --  Low Frequency B Clock Enable Register 0 (Async Reg)
   type LFBCLKEN0_Register is record
      --  Low Energy UART 0 Clock Enable
      LEUART        : LFBCLKEN0_LEUART_Field :=
                       (As_Array => False, Val => 16#0#);
      --  Clock Enable
      SYSTICK       : LFBCLKEN0_SYSTICK_Field := 16#0#;
      --  Capacitive touch sense module Clock Enable
      CSEN          : LFBCLKEN0_CSEN_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFBCLKEN0_Register use record
      LEUART        at 0 range 0 .. 1;
      SYSTICK       at 0 range 2 .. 2;
      CSEN          at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype LFCCLKEN0_USB_Field is Interfaces.EFM32.Bit;

   --  Low Frequency C Clock Enable Register 0 (Async Reg)
   type LFCCLKEN0_Register is record
      --  Universal Serial Bus Interface Clock Enable
      USB           : LFCCLKEN0_USB_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFCCLKEN0_Register use record
      USB           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype LFECLKEN0_RTCC_Field is Interfaces.EFM32.Bit;

   --  Low Frequency E Clock Enable Register 0 (Async Reg)
   type LFECLKEN0_Register is record
      --  Real-Time Counter and Calendar Clock Enable
      RTCC          : LFECLKEN0_RTCC_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFECLKEN0_Register use record
      RTCC          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  HFCLK Prescaler
   type HFPRESC_PRESC_Field is
     (NODIVISION)
     with Size => 5;
   for HFPRESC_PRESC_Field use
     (NODIVISION => 0);

   --  HFCLKLE Prescaler
   type HFPRESC_HFCLKLEPRESC_Field is
     (--  HFCLKLE is HFBUSCLKLE divided by 2.
      DIV2,
      --  HFCLKLE is HFBUSCLKLE divided by 4.
      DIV4,
      --  HFCLKLE is HFBUSCLKLE divided by 8.
      DIV8)
     with Size => 2;
   for HFPRESC_HFCLKLEPRESC_Field use
     (DIV2 => 0,
      DIV4 => 1,
      DIV8 => 2);

   --  High Frequency Clock Prescaler Register
   type HFPRESC_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.EFM32.Byte := 16#0#;
      --  HFCLK Prescaler
      PRESC          : HFPRESC_PRESC_Field := Interfaces.EFM32.CMU.NODIVISION;
      --  unspecified
      Reserved_13_23 : Interfaces.EFM32.UInt11 := 16#0#;
      --  HFCLKLE Prescaler
      HFCLKLEPRESC   : HFPRESC_HFCLKLEPRESC_Field :=
                        Interfaces.EFM32.CMU.DIV2;
      --  unspecified
      Reserved_26_31 : Interfaces.EFM32.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFPRESC_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PRESC          at 0 range 8 .. 12;
      Reserved_13_23 at 0 range 13 .. 23;
      HFCLKLEPRESC   at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  HFBUSCLK Prescaler
   type HFBUSPRESC_PRESC_Field is
     (NODIVISION)
     with Size => 9;
   for HFBUSPRESC_PRESC_Field use
     (NODIVISION => 0);

   --  High Frequency Bus Clock Prescaler Register
   type HFBUSPRESC_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.EFM32.Byte := 16#0#;
      --  HFBUSCLK Prescaler
      PRESC          : HFBUSPRESC_PRESC_Field :=
                        Interfaces.EFM32.CMU.NODIVISION;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFBUSPRESC_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PRESC          at 0 range 8 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  HFCORECLK Prescaler
   type HFCOREPRESC_PRESC_Field is
     (NODIVISION)
     with Size => 9;
   for HFCOREPRESC_PRESC_Field use
     (NODIVISION => 0);

   --  High Frequency Core Clock Prescaler Register
   type HFCOREPRESC_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.EFM32.Byte := 16#0#;
      --  HFCORECLK Prescaler
      PRESC          : HFCOREPRESC_PRESC_Field :=
                        Interfaces.EFM32.CMU.NODIVISION;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFCOREPRESC_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PRESC          at 0 range 8 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  HFPERCLK Prescaler
   type HFPERPRESC_PRESC_Field is
     (NODIVISION)
     with Size => 9;
   for HFPERPRESC_PRESC_Field use
     (NODIVISION => 0);

   --  High Frequency Peripheral Clock Prescaler Register
   type HFPERPRESC_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.EFM32.Byte := 16#0#;
      --  HFPERCLK Prescaler
      PRESC          : HFPERPRESC_PRESC_Field :=
                        Interfaces.EFM32.CMU.NODIVISION;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFPERPRESC_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PRESC          at 0 range 8 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  HFEXPCLK Prescaler
   type HFEXPPRESC_PRESC_Field is
     (NODIVISION)
     with Size => 5;
   for HFEXPPRESC_PRESC_Field use
     (NODIVISION => 0);

   --  High Frequency Export Clock Prescaler Register
   type HFEXPPRESC_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.EFM32.Byte := 16#0#;
      --  HFEXPCLK Prescaler
      PRESC          : HFEXPPRESC_PRESC_Field :=
                        Interfaces.EFM32.CMU.NODIVISION;
      --  unspecified
      Reserved_13_31 : Interfaces.EFM32.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFEXPPRESC_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PRESC          at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  HFPERCLK Prescaler
   type HFPERPRESCB_PRESC_Field is
     (NODIVISION)
     with Size => 9;
   for HFPERPRESCB_PRESC_Field use
     (NODIVISION => 0);

   --  High Frequency Peripheral Clock Prescaler B Register
   type HFPERPRESCB_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.EFM32.Byte := 16#0#;
      --  HFPERCLK Prescaler
      PRESC          : HFPERPRESCB_PRESC_Field :=
                        Interfaces.EFM32.CMU.NODIVISION;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFPERPRESCB_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PRESC          at 0 range 8 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  HFPERCLK Prescaler
   type HFPERPRESCC_PRESC_Field is
     (NODIVISION)
     with Size => 9;
   for HFPERPRESCC_PRESC_Field use
     (NODIVISION => 0);

   --  High Frequency Peripheral Clock Prescaler C Register
   type HFPERPRESCC_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.EFM32.Byte := 16#0#;
      --  HFPERCLK Prescaler
      PRESC          : HFPERPRESCC_PRESC_Field :=
                        Interfaces.EFM32.CMU.NODIVISION;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFPERPRESCC_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      PRESC          at 0 range 8 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   --  Low Energy Timer 0 Prescaler
   type LFAPRESC0_LETIMER0_Field is
     (--  LFACLKLETIMER0 = LFACLK
      DIV1,
      --  LFACLKLETIMER0 = LFACLK/2
      DIV2,
      --  LFACLKLETIMER0 = LFACLK/4
      DIV4,
      --  LFACLKLETIMER0 = LFACLK/8
      DIV8,
      --  LFACLKLETIMER0 = LFACLK/16
      DIV16,
      --  LFACLKLETIMER0 = LFACLK/32
      DIV32,
      --  LFACLKLETIMER0 = LFACLK/64
      DIV64,
      --  LFACLKLETIMER0 = LFACLK/128
      DIV128,
      --  LFACLKLETIMER0 = LFACLK/256
      DIV256,
      --  LFACLKLETIMER0 = LFACLK/512
      DIV512,
      --  LFACLKLETIMER0 = LFACLK/1024
      DIV1024,
      --  LFACLKLETIMER0 = LFACLK/2048
      DIV2048,
      --  LFACLKLETIMER0 = LFACLK/4096
      DIV4096,
      --  LFACLKLETIMER0 = LFACLK/8192
      DIV8192,
      --  LFACLKLETIMER0 = LFACLK/16384
      DIV16384,
      --  LFACLKLETIMER0 = LFACLK/32768
      DIV32768)
     with Size => 4;
   for LFAPRESC0_LETIMER0_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3,
      DIV16 => 4,
      DIV32 => 5,
      DIV64 => 6,
      DIV128 => 7,
      DIV256 => 8,
      DIV512 => 9,
      DIV1024 => 10,
      DIV2048 => 11,
      DIV4096 => 12,
      DIV8192 => 13,
      DIV16384 => 14,
      DIV32768 => 15);

   --  Low Energy Timer 1 Prescaler
   type LFAPRESC0_LETIMER1_Field is
     (--  LFACLKLETIMER1 = LFACLK
      DIV1,
      --  LFACLKLETIMER1 = LFACLK/2
      DIV2,
      --  LFACLKLETIMER1 = LFACLK/4
      DIV4,
      --  LFACLKLETIMER1 = LFACLK/8
      DIV8,
      --  LFACLKLETIMER1 = LFACLK/16
      DIV16,
      --  LFACLKLETIMER1 = LFACLK/32
      DIV32,
      --  LFACLKLETIMER1 = LFACLK/64
      DIV64,
      --  LFACLKLETIMER1 = LFACLK/128
      DIV128,
      --  LFACLKLETIMER1 = LFACLK/256
      DIV256,
      --  LFACLKLETIMER1 = LFACLK/512
      DIV512,
      --  LFACLKLETIMER1 = LFACLK/1024
      DIV1024,
      --  LFACLKLETIMER1 = LFACLK/2048
      DIV2048,
      --  LFACLKLETIMER1 = LFACLK/4096
      DIV4096,
      --  LFACLKLETIMER1 = LFACLK/8192
      DIV8192,
      --  LFACLKLETIMER1 = LFACLK/16384
      DIV16384,
      --  LFACLKLETIMER1 = LFACLK/32768
      DIV32768)
     with Size => 4;
   for LFAPRESC0_LETIMER1_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3,
      DIV16 => 4,
      DIV32 => 5,
      DIV64 => 6,
      DIV128 => 7,
      DIV256 => 8,
      DIV512 => 9,
      DIV1024 => 10,
      DIV2048 => 11,
      DIV4096 => 12,
      DIV8192 => 13,
      DIV16384 => 14,
      DIV32768 => 15);

   --  Low Energy Sensor Interface Prescaler
   type LFAPRESC0_LESENSE_Field is
     (--  LFACLKLESENSE = LFACLK
      DIV1,
      --  LFACLKLESENSE = LFACLK/2
      DIV2,
      --  LFACLKLESENSE = LFACLK/4
      DIV4,
      --  LFACLKLESENSE = LFACLK/8
      DIV8)
     with Size => 2;
   for LFAPRESC0_LESENSE_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3);

   --  Liquid Crystal Display Controller Prescaler
   type LFAPRESC0_LCD_Field is
     (--  LFACLKLCD = LFACLK
      DIV1,
      --  LFACLKLCD = LFACLK/2
      DIV2,
      --  LFACLKLCD = LFACLK/4
      DIV4,
      --  LFACLKLCD = LFACLK/8
      DIV8,
      --  LFACLKLCD = LFACLK/16
      DIV16,
      --  LFACLKLCD = LFACLK/32
      DIV32,
      --  LFACLKLCD = LFACLK/64
      DIV64,
      --  LFACLKLCD = LFACLK/128
      DIV128)
     with Size => 3;
   for LFAPRESC0_LCD_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3,
      DIV16 => 4,
      DIV32 => 5,
      DIV64 => 6,
      DIV128 => 7);

   --  Real-Time Counter Prescaler
   type LFAPRESC0_RTC_Field is
     (--  LFACLKRTC = LFACLK
      DIV1,
      --  LFACLKRTC = LFACLK/2
      DIV2,
      --  LFACLKRTC = LFACLK/4
      DIV4,
      --  LFACLKRTC = LFACLK/8
      DIV8,
      --  LFACLKRTC = LFACLK/16
      DIV16,
      --  LFACLKRTC = LFACLK/32
      DIV32,
      --  LFACLKRTC = LFACLK/64
      DIV64,
      --  LFACLKRTC = LFACLK/128
      DIV128,
      --  LFACLKRTC = LFACLK/256
      DIV256,
      --  LFACLKRTC = LFACLK/512
      DIV512,
      --  LFACLKRTC = LFACLK/1024
      DIV1024,
      --  LFACLKRTC = LFACLK/2048
      DIV2048,
      --  LFACLKRTC = LFACLK/4096
      DIV4096,
      --  LFACLKRTC = LFACLK/8192
      DIV8192,
      --  LFACLKRTC = LFACLK/16384
      DIV16384,
      --  LFACLKRTC = LFACLK/32768
      DIV32768)
     with Size => 4;
   for LFAPRESC0_RTC_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3,
      DIV16 => 4,
      DIV32 => 5,
      DIV64 => 6,
      DIV128 => 7,
      DIV256 => 8,
      DIV512 => 9,
      DIV1024 => 10,
      DIV2048 => 11,
      DIV4096 => 12,
      DIV8192 => 13,
      DIV16384 => 14,
      DIV32768 => 15);

   --  Low Frequency a Prescaler Register 0 (Async Reg)
   type LFAPRESC0_Register is record
      --  Low Energy Timer 0 Prescaler
      LETIMER0       : LFAPRESC0_LETIMER0_Field := Interfaces.EFM32.CMU.DIV1;
      --  Low Energy Timer 1 Prescaler
      LETIMER1       : LFAPRESC0_LETIMER1_Field := Interfaces.EFM32.CMU.DIV1;
      --  Low Energy Sensor Interface Prescaler
      LESENSE        : LFAPRESC0_LESENSE_Field := Interfaces.EFM32.CMU.DIV1;
      --  unspecified
      Reserved_10_11 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Liquid Crystal Display Controller Prescaler
      LCD            : LFAPRESC0_LCD_Field := Interfaces.EFM32.CMU.DIV1;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit := 16#0#;
      --  Real-Time Counter Prescaler
      RTC            : LFAPRESC0_RTC_Field := Interfaces.EFM32.CMU.DIV1;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFAPRESC0_Register use record
      LETIMER0       at 0 range 0 .. 3;
      LETIMER1       at 0 range 4 .. 7;
      LESENSE        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      LCD            at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RTC            at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Low Energy UART 0 Prescaler
   type LFBPRESC0_LEUART0_Field is
     (--  LFBCLKLEUART0 = LFBCLK
      DIV1,
      --  LFBCLKLEUART0 = LFBCLK/2
      DIV2,
      --  LFBCLKLEUART0 = LFBCLK/4
      DIV4,
      --  LFBCLKLEUART0 = LFBCLK/8
      DIV8)
     with Size => 2;
   for LFBPRESC0_LEUART0_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3);

   --  Low Energy UART 1 Prescaler
   type LFBPRESC0_LEUART1_Field is
     (--  LFBCLKLEUART1 = LFBCLK
      DIV1,
      --  LFBCLKLEUART1 = LFBCLK/2
      DIV2,
      --  LFBCLKLEUART1 = LFBCLK/4
      DIV4,
      --  LFBCLKLEUART1 = LFBCLK/8
      DIV8)
     with Size => 2;
   for LFBPRESC0_LEUART1_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3);

   --  Prescaler
   type LFBPRESC0_SYSTICK_Field is
     (--  LFBCLKSYSTICK = LFBCLK
      DIV1)
     with Size => 4;
   for LFBPRESC0_SYSTICK_Field use
     (DIV1 => 0);

   --  Capacitive touch sense module Prescaler
   type LFBPRESC0_CSEN_Field is
     (--  LFBCLKCSEN = LFBCLK/16
      DIV16,
      --  LFBCLKCSEN = LFBCLK/32
      DIV32,
      --  LFBCLKCSEN = LFBCLK/64
      DIV64,
      --  LFBCLKCSEN = LFBCLK/128
      DIV128)
     with Size => 2;
   for LFBPRESC0_CSEN_Field use
     (DIV16 => 0,
      DIV32 => 1,
      DIV64 => 2,
      DIV128 => 3);

   --  Low Frequency B Prescaler Register 0 (Async Reg)
   type LFBPRESC0_Register is record
      --  Low Energy UART 0 Prescaler
      LEUART0        : LFBPRESC0_LEUART0_Field := Interfaces.EFM32.CMU.DIV1;
      --  unspecified
      Reserved_2_3   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Low Energy UART 1 Prescaler
      LEUART1        : LFBPRESC0_LEUART1_Field := Interfaces.EFM32.CMU.DIV1;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Read-only. Prescaler
      SYSTICK        : LFBPRESC0_SYSTICK_Field := Interfaces.EFM32.CMU.DIV1;
      --  Capacitive touch sense module Prescaler
      CSEN           : LFBPRESC0_CSEN_Field := Interfaces.EFM32.CMU.DIV16;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFBPRESC0_Register use record
      LEUART0        at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      LEUART1        at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SYSTICK        at 0 range 8 .. 11;
      CSEN           at 0 range 12 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  Real-Time Counter and Calendar Prescaler
   type LFEPRESC0_RTCC_Field is
     (--  LFECLKRTCC = LFECLK
      DIV1,
      --  LFECLKRTCC = LFECLK/2
      DIV2,
      --  LFECLKRTCC = LFECLK/4
      DIV4)
     with Size => 2;
   for LFEPRESC0_RTCC_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2);

   --  Low Frequency E Prescaler Register 0 (Async Reg)
   type LFEPRESC0_Register is record
      --  Real-Time Counter and Calendar Prescaler
      RTCC          : LFEPRESC0_RTCC_Field := Interfaces.EFM32.CMU.DIV1;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LFEPRESC0_Register use record
      RTCC          at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SYNCBUSY_LFACLKEN0_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_LFAPRESC0_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_LFBCLKEN0_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_LFBPRESC0_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_LFCCLKEN0_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_LFECLKEN0_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_LFEPRESC0_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_HFRCOBSY_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_AUXHFRCOBSY_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_LFRCOBSY_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_LFRCOVREFBSY_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_HFXOBSY_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_LFXOBSY_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_USHFRCOBSY_Field is Interfaces.EFM32.Bit;

   --  Synchronization Busy Register
   type SYNCBUSY_Register is record
      --  Read-only. Low Frequency a Clock Enable 0 Busy
      LFACLKEN0      : SYNCBUSY_LFACLKEN0_Field;
      --  unspecified
      Reserved_1_1   : Interfaces.EFM32.Bit;
      --  Read-only. Low Frequency a Prescaler 0 Busy
      LFAPRESC0      : SYNCBUSY_LFAPRESC0_Field;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit;
      --  Read-only. Low Frequency B Clock Enable 0 Busy
      LFBCLKEN0      : SYNCBUSY_LFBCLKEN0_Field;
      --  unspecified
      Reserved_5_5   : Interfaces.EFM32.Bit;
      --  Read-only. Low Frequency B Prescaler 0 Busy
      LFBPRESC0      : SYNCBUSY_LFBPRESC0_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit;
      --  Read-only. Low Frequency C Clock Enable 0 Busy
      LFCCLKEN0      : SYNCBUSY_LFCCLKEN0_Field;
      --  unspecified
      Reserved_9_15  : Interfaces.EFM32.UInt7;
      --  Read-only. Low Frequency E Clock Enable 0 Busy
      LFECLKEN0      : SYNCBUSY_LFECLKEN0_Field;
      --  unspecified
      Reserved_17_17 : Interfaces.EFM32.Bit;
      --  Read-only. Low Frequency E Prescaler 0 Busy
      LFEPRESC0      : SYNCBUSY_LFEPRESC0_Field;
      --  unspecified
      Reserved_19_23 : Interfaces.EFM32.UInt5;
      --  Read-only. HFRCO Busy
      HFRCOBSY       : SYNCBUSY_HFRCOBSY_Field;
      --  Read-only. AUXHFRCO Busy
      AUXHFRCOBSY    : SYNCBUSY_AUXHFRCOBSY_Field;
      --  Read-only. LFRCO Busy
      LFRCOBSY       : SYNCBUSY_LFRCOBSY_Field;
      --  Read-only. LFRCO VREF Busy
      LFRCOVREFBSY   : SYNCBUSY_LFRCOVREFBSY_Field;
      --  Read-only. HFXO Busy
      HFXOBSY        : SYNCBUSY_HFXOBSY_Field;
      --  Read-only. LFXO Busy
      LFXOBSY        : SYNCBUSY_LFXOBSY_Field;
      --  Read-only. USHFRCO Busy
      USHFRCOBSY     : SYNCBUSY_USHFRCOBSY_Field;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNCBUSY_Register use record
      LFACLKEN0      at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      LFAPRESC0      at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      LFBCLKEN0      at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      LFBPRESC0      at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LFCCLKEN0      at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      LFECLKEN0      at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      LFEPRESC0      at 0 range 18 .. 18;
      Reserved_19_23 at 0 range 19 .. 23;
      HFRCOBSY       at 0 range 24 .. 24;
      AUXHFRCOBSY    at 0 range 25 .. 25;
      LFRCOBSY       at 0 range 26 .. 26;
      LFRCOVREFBSY   at 0 range 27 .. 27;
      HFXOBSY        at 0 range 28 .. 28;
      LFXOBSY        at 0 range 29 .. 29;
      USHFRCOBSY     at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype FREEZE_REGFREEZE_Field is Interfaces.EFM32.Bit;

   --  Freeze Register
   type FREEZE_Register is record
      --  Register Update Freeze
      REGFREEZE     : FREEZE_REGFREEZE_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREEZE_Register use record
      REGFREEZE     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype PCNTCTRL_PCNT0CLKEN_Field is Interfaces.EFM32.Bit;
   subtype PCNTCTRL_PCNT0CLKSEL_Field is Interfaces.EFM32.Bit;
   subtype PCNTCTRL_PCNT1CLKEN_Field is Interfaces.EFM32.Bit;
   subtype PCNTCTRL_PCNT1CLKSEL_Field is Interfaces.EFM32.Bit;
   subtype PCNTCTRL_PCNT2CLKEN_Field is Interfaces.EFM32.Bit;
   subtype PCNTCTRL_PCNT2CLKSEL_Field is Interfaces.EFM32.Bit;

   --  PCNT Control Register
   type PCNTCTRL_Register is record
      --  PCNT0 Clock Enable
      PCNT0CLKEN    : PCNTCTRL_PCNT0CLKEN_Field := 16#0#;
      --  PCNT0 Clock Select
      PCNT0CLKSEL   : PCNTCTRL_PCNT0CLKSEL_Field := 16#0#;
      --  PCNT1 Clock Enable
      PCNT1CLKEN    : PCNTCTRL_PCNT1CLKEN_Field := 16#0#;
      --  PCNT1 Clock Select
      PCNT1CLKSEL   : PCNTCTRL_PCNT1CLKSEL_Field := 16#0#;
      --  PCNT2 Clock Enable
      PCNT2CLKEN    : PCNTCTRL_PCNT2CLKEN_Field := 16#0#;
      --  PCNT2 Clock Select
      PCNT2CLKSEL   : PCNTCTRL_PCNT2CLKSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCNTCTRL_Register use record
      PCNT0CLKEN    at 0 range 0 .. 0;
      PCNT0CLKSEL   at 0 range 1 .. 1;
      PCNT1CLKEN    at 0 range 2 .. 2;
      PCNT1CLKSEL   at 0 range 3 .. 3;
      PCNT2CLKEN    at 0 range 4 .. 4;
      PCNT2CLKSEL   at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  ADC0 Clock Prescaler
   type ADCCTRL_ADC0CLKDIV_Field is
     (NODIVISION)
     with Size => 2;
   for ADCCTRL_ADC0CLKDIV_Field use
     (NODIVISION => 0);

   --  ADC0 Clock Select
   type ADCCTRL_ADC0CLKSEL_Field is
     (--  ADC0 is not clocked
      DISABLED,
      --  AUXHFRCO is clocking ADC0
      AUXHFRCO,
      --  HFXO is clocking ADC0
      HFXO,
      --  HFSRCCLK is clocking ADC0
      HFSRCCLK)
     with Size => 2;
   for ADCCTRL_ADC0CLKSEL_Field use
     (DISABLED => 0,
      AUXHFRCO => 1,
      HFXO => 2,
      HFSRCCLK => 3);

   subtype ADCCTRL_ADC0CLKINV_Field is Interfaces.EFM32.Bit;

   --  ADC1 Clock Prescaler
   type ADCCTRL_ADC1CLKDIV_Field is
     (NODIVISION)
     with Size => 2;
   for ADCCTRL_ADC1CLKDIV_Field use
     (NODIVISION => 0);

   --  ADC1 Clock Select
   type ADCCTRL_ADC1CLKSEL_Field is
     (--  ADC1 is not clocked
      DISABLED,
      --  AUXHFRCO is clocking ADC1
      AUXHFRCO,
      --  HFXO is clocking ADC1
      HFXO,
      --  HFSRCCLK is clocking ADC1
      HFSRCCLK)
     with Size => 2;
   for ADCCTRL_ADC1CLKSEL_Field use
     (DISABLED => 0,
      AUXHFRCO => 1,
      HFXO => 2,
      HFSRCCLK => 3);

   subtype ADCCTRL_ADC1CLKINV_Field is Interfaces.EFM32.Bit;

   --  ADC Control Register
   type ADCCTRL_Register is record
      --  ADC0 Clock Prescaler
      ADC0CLKDIV     : ADCCTRL_ADC0CLKDIV_Field :=
                        Interfaces.EFM32.CMU.NODIVISION;
      --  unspecified
      Reserved_2_3   : Interfaces.EFM32.UInt2 := 16#0#;
      --  ADC0 Clock Select
      ADC0CLKSEL     : ADCCTRL_ADC0CLKSEL_Field :=
                        Interfaces.EFM32.CMU.DISABLED;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Invert Clock Selected By ADC0CLKSEL
      ADC0CLKINV     : ADCCTRL_ADC0CLKINV_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : Interfaces.EFM32.UInt7 := 16#0#;
      --  ADC1 Clock Prescaler
      ADC1CLKDIV     : ADCCTRL_ADC1CLKDIV_Field :=
                        Interfaces.EFM32.CMU.NODIVISION;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  ADC1 Clock Select
      ADC1CLKSEL     : ADCCTRL_ADC1CLKSEL_Field :=
                        Interfaces.EFM32.CMU.DISABLED;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Invert Clock Selected By ADC1CLKSEL
      ADC1CLKINV     : ADCCTRL_ADC1CLKINV_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.EFM32.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADCCTRL_Register use record
      ADC0CLKDIV     at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      ADC0CLKSEL     at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ADC0CLKINV     at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      ADC1CLKDIV     at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      ADC1CLKSEL     at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ADC1CLKINV     at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  SDIO Reference Clock Select
   type SDIOCTRL_SDIOCLKSEL_Field is
     (--  HFRCO clock is used to clock SDIO
      HFRCO,
      --  HFXO clock is used to clock SDIO
      HFXO,
      --  AUXHFRCO is used to clock SDIO
      AUXHFRCO,
      --  USHFRCO is used to clock SDIO
      USHFRCO)
     with Size => 2;
   for SDIOCTRL_SDIOCLKSEL_Field use
     (HFRCO => 0,
      HFXO => 1,
      AUXHFRCO => 2,
      USHFRCO => 3);

   subtype SDIOCTRL_SDIOCLKDIS_Field is Interfaces.EFM32.Bit;

   --  SDIO Control Register
   type SDIOCTRL_Register is record
      --  SDIO Reference Clock Select
      SDIOCLKSEL    : SDIOCTRL_SDIOCLKSEL_Field := Interfaces.EFM32.CMU.HFRCO;
      --  unspecified
      Reserved_2_6  : Interfaces.EFM32.UInt5 := 16#0#;
      --  SDIO Reference Clock Disable
      SDIOCLKDIS    : SDIOCTRL_SDIOCLKDIS_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SDIOCTRL_Register use record
      SDIOCLKSEL    at 0 range 0 .. 1;
      Reserved_2_6  at 0 range 2 .. 6;
      SDIOCLKDIS    at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  QSPI0 Reference Clock Select
   type QSPICTRL_QSPI0CLKSEL_Field is
     (--  HFRCO clock is used to clock QSPI0
      HFRCO,
      --  HFXO clock is used to clock QSPI0
      HFXO,
      --  AUXHFRCO is used to clock QSPI0
      AUXHFRCO,
      --  USHFRCO is used to clock QSPI0
      USHFRCO)
     with Size => 2;
   for QSPICTRL_QSPI0CLKSEL_Field use
     (HFRCO => 0,
      HFXO => 1,
      AUXHFRCO => 2,
      USHFRCO => 3);

   subtype QSPICTRL_QSPI0CLKDIS_Field is Interfaces.EFM32.Bit;

   --  QSPI Control Register
   type QSPICTRL_Register is record
      --  QSPI0 Reference Clock Select
      QSPI0CLKSEL   : QSPICTRL_QSPI0CLKSEL_Field :=
                       Interfaces.EFM32.CMU.HFRCO;
      --  unspecified
      Reserved_2_6  : Interfaces.EFM32.UInt5 := 16#0#;
      --  QSPI0 Reference Clock Disable
      QSPI0CLKDIS   : QSPICTRL_QSPI0CLKDIS_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QSPICTRL_Register use record
      QSPI0CLKSEL   at 0 range 0 .. 1;
      Reserved_2_6  at 0 range 2 .. 6;
      QSPI0CLKDIS   at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  PDM Core Clock Select
   type PDMCTRL_PDMCLKSEL_Field is
     (--  HFRCO clock is used to clock PDM
      HFRCO,
      --  HFXO clock is used to clock PDM
      HFXO,
      --  USHFRCO is used to clock PDM
      USHFRCO,
      --  CLKIN0 is selected as HFCLK clock source
      CLKIN0)
     with Size => 2;
   for PDMCTRL_PDMCLKSEL_Field use
     (HFRCO => 0,
      HFXO => 1,
      USHFRCO => 2,
      CLKIN0 => 3);

   subtype PDMCTRL_PDMCLKEN_Field is Interfaces.EFM32.Bit;

   --  PDM Control Register
   type PDMCTRL_Register is record
      --  PDM Core Clock Select
      PDMCLKSEL     : PDMCTRL_PDMCLKSEL_Field := Interfaces.EFM32.CMU.HFRCO;
      --  unspecified
      Reserved_2_6  : Interfaces.EFM32.UInt5 := 16#0#;
      --  PDM Core Clock Enable
      PDMCLKEN      : PDMCTRL_PDMCLKEN_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PDMCTRL_Register use record
      PDMCLKSEL     at 0 range 0 .. 1;
      Reserved_2_6  at 0 range 2 .. 6;
      PDMCLKEN      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ROUTEPEN_CLKOUT0PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CLKOUT1PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CLKOUT2PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CLKIN0PEN_Field is Interfaces.EFM32.Bit;

   --  I/O Routing Pin Enable Register
   type ROUTEPEN_Register is record
      --  CLKOUT0 Pin Enable
      CLKOUT0PEN     : ROUTEPEN_CLKOUT0PEN_Field := 16#0#;
      --  CLKOUT1 Pin Enable
      CLKOUT1PEN     : ROUTEPEN_CLKOUT1PEN_Field := 16#0#;
      --  CLKOUT2 Pin Enable
      CLKOUT2PEN     : ROUTEPEN_CLKOUT2PEN_Field := 16#0#;
      --  unspecified
      Reserved_3_27  : Interfaces.EFM32.UInt25 := 16#0#;
      --  CLKIN0 Pin Enable
      CLKIN0PEN      : ROUTEPEN_CLKIN0PEN_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTEPEN_Register use record
      CLKOUT0PEN     at 0 range 0 .. 0;
      CLKOUT1PEN     at 0 range 1 .. 1;
      CLKOUT2PEN     at 0 range 2 .. 2;
      Reserved_3_27  at 0 range 3 .. 27;
      CLKIN0PEN      at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC0_CLKOUT0LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3,
      --  Location 4
      LOC4,
      --  Location 5
      LOC5)
     with Size => 6;
   for ROUTELOC0_CLKOUT0LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5);

   --  I/O Location
   type ROUTELOC0_CLKOUT1LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3,
      --  Location 4
      LOC4,
      --  Location 5
      LOC5)
     with Size => 6;
   for ROUTELOC0_CLKOUT1LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5);

   --  I/O Location
   type ROUTELOC0_CLKOUT2LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3,
      --  Location 4
      LOC4,
      --  Location 5
      LOC5)
     with Size => 6;
   for ROUTELOC0_CLKOUT2LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5);

   --  I/O Routing Location Register
   type ROUTELOC0_Register is record
      --  I/O Location
      CLKOUT0LOC     : ROUTELOC0_CLKOUT0LOC_Field :=
                        Interfaces.EFM32.CMU.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CLKOUT1LOC     : ROUTELOC0_CLKOUT1LOC_Field :=
                        Interfaces.EFM32.CMU.LOC0;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CLKOUT2LOC     : ROUTELOC0_CLKOUT2LOC_Field :=
                        Interfaces.EFM32.CMU.LOC0;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC0_Register use record
      CLKOUT0LOC     at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CLKOUT1LOC     at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CLKOUT2LOC     at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC1_CLKIN0LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3,
      --  Location 4
      LOC4,
      --  Location 5
      LOC5,
      --  Location 6
      LOC6,
      --  Location 7
      LOC7)
     with Size => 6;
   for ROUTELOC1_CLKIN0LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5,
      LOC6 => 6,
      LOC7 => 7);

   --  I/O Routing Location Register
   type ROUTELOC1_Register is record
      --  I/O Location
      CLKIN0LOC     : ROUTELOC1_CLKIN0LOC_Field := Interfaces.EFM32.CMU.LOC0;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC1_Register use record
      CLKIN0LOC     at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Configuration Lock Key
   type LOCK_LOCKKEY_Field is
     (UNLOCKED,
      LOCKED)
     with Size => 16;
   for LOCK_LOCKKEY_Field use
     (UNLOCKED => 0,
      LOCKED => 1);

   --  Configuration Lock Register
   type LOCK_Register is record
      --  Configuration Lock Key
      LOCKKEY        : LOCK_LOCKKEY_Field := Interfaces.EFM32.CMU.UNLOCKED;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOCK_Register use record
      LOCKKEY        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HFRCOSS_SSAMP_Field is Interfaces.EFM32.UInt3;
   subtype HFRCOSS_SSINV_Field is Interfaces.EFM32.UInt5;

   --  HFRCO Spread Spectrum Register
   type HFRCOSS_Register is record
      --  Spread Spectrum Amplitude
      SSAMP          : HFRCOSS_SSAMP_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Spread Spectrum Update Interval
      SSINV          : HFRCOSS_SSINV_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.EFM32.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFRCOSS_Register use record
      SSAMP          at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SSINV          at 0 range 8 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  USB Rate Clock Select
   type USBCTRL_USBCLKSEL_Field is
     (--  USHFRCO (clock recovery) is clocking USB
      USHFRCO,
      --  HFXO clock is used to clock USB
      HFXO,
      --  HFXO clock doubler is used to clock USB
      HFXOX2,
      --  HFRCO clock is used to clock USB
      HFRCO,
      --  LFXO clock is used to clock USB
      LFXO,
      --  LFRCO clock is used to clock USB
      LFRCO)
     with Size => 3;
   for USBCTRL_USBCLKSEL_Field use
     (USHFRCO => 0,
      HFXO => 1,
      HFXOX2 => 2,
      HFRCO => 3,
      LFXO => 4,
      LFRCO => 5);

   subtype USBCTRL_USBCLKEN_Field is Interfaces.EFM32.Bit;

   --  USB Control Register
   type USBCTRL_Register is record
      --  USB Rate Clock Select
      USBCLKSEL     : USBCTRL_USBCLKSEL_Field := Interfaces.EFM32.CMU.USHFRCO;
      --  unspecified
      Reserved_3_6  : Interfaces.EFM32.UInt4 := 16#0#;
      --  USB Rate Clock Enable
      USBCLKEN      : USBCTRL_USBCLKEN_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBCTRL_Register use record
      USBCLKSEL     at 0 range 0 .. 2;
      Reserved_3_6  at 0 range 3 .. 6;
      USBCLKEN      at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype USBCRCTRL_USBCREN_Field is Interfaces.EFM32.Bit;
   subtype USBCRCTRL_USBLSCRMD_Field is Interfaces.EFM32.Bit;

   --  USB Clock Recovery Control
   type USBCRCTRL_Register is record
      --  Clock Recovery Enable
      USBCREN       : USBCRCTRL_USBCREN_Field := 16#0#;
      --  Low Speed Clock Recovery Mode
      USBLSCRMD     : USBCRCTRL_USBLSCRMD_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for USBCRCTRL_Register use record
      USBCREN       at 0 range 0 .. 0;
      USBLSCRMD     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CMU
   type CMU_Peripheral is record
      --  CMU Control Register
      CTRL                : aliased CTRL_Register;
      --  USHFRCO Control Register
      USHFRCOCTRL         : aliased USHFRCOCTRL_Register;
      --  HFRCO Control Register
      HFRCOCTRL           : aliased HFRCOCTRL_Register;
      --  AUXHFRCO Control Register
      AUXHFRCOCTRL        : aliased AUXHFRCOCTRL_Register;
      --  LFRCO Control Register
      LFRCOCTRL           : aliased LFRCOCTRL_Register;
      --  HFXO Control Register
      HFXOCTRL            : aliased HFXOCTRL_Register;
      --  HFXO Control 1
      HFXOCTRL1           : aliased HFXOCTRL1_Register;
      --  HFXO Startup Control
      HFXOSTARTUPCTRL     : aliased HFXOSTARTUPCTRL_Register;
      --  HFXO Steady State Control
      HFXOSTEADYSTATECTRL : aliased HFXOSTEADYSTATECTRL_Register;
      --  HFXO Timeout Control
      HFXOTIMEOUTCTRL     : aliased HFXOTIMEOUTCTRL_Register;
      --  LFXO Control Register
      LFXOCTRL            : aliased LFXOCTRL_Register;
      --  DPLL Control Register
      DPLLCTRL            : aliased DPLLCTRL_Register;
      --  DPLL Control Register
      DPLLCTRL1           : aliased DPLLCTRL1_Register;
      --  Calibration Control Register
      CALCTRL             : aliased CALCTRL_Register;
      --  Calibration Counter Register
      CALCNT              : aliased CALCNT_Register;
      --  Oscillator Enable/Disable Command Register
      OSCENCMD            : aliased OSCENCMD_Register;
      --  Command Register
      CMD                 : aliased CMD_Register;
      --  Debug Trace Clock Select
      DBGCLKSEL           : aliased DBGCLKSEL_Register;
      --  High Frequency Clock Select Command Register
      HFCLKSEL            : aliased HFCLKSEL_Register;
      --  Low Frequency A Clock Select Register
      LFACLKSEL           : aliased LFACLKSEL_Register;
      --  Low Frequency B Clock Select Register
      LFBCLKSEL           : aliased LFBCLKSEL_Register;
      --  Low Frequency E Clock Select Register
      LFECLKSEL           : aliased LFECLKSEL_Register;
      --  Low Frequency C Clock Select Register
      LFCCLKSEL           : aliased LFCCLKSEL_Register;
      --  Status Register
      STATUS              : aliased STATUS_Register;
      --  HFCLK Status Register
      HFCLKSTATUS         : aliased HFCLKSTATUS_Register;
      --  HFXO Trim Status
      HFXOTRIMSTATUS      : aliased HFXOTRIMSTATUS_Register;
      --  Interrupt Flag Register
      IF_k                : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS                 : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC                 : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN                 : aliased IEN_Register;
      --  High Frequency Bus Clock Enable Register 0
      HFBUSCLKEN0         : aliased HFBUSCLKEN0_Register;
      --  High Frequency Peripheral Clock Enable Register 0
      HFPERCLKEN0         : aliased HFPERCLKEN0_Register;
      --  High Frequency Peripheral Clock Enable Register 1
      HFPERCLKEN1         : aliased HFPERCLKEN1_Register;
      --  Low Frequency a Clock Enable Register 0 (Async Reg)
      LFACLKEN0           : aliased LFACLKEN0_Register;
      --  Low Frequency B Clock Enable Register 0 (Async Reg)
      LFBCLKEN0           : aliased LFBCLKEN0_Register;
      --  Low Frequency C Clock Enable Register 0 (Async Reg)
      LFCCLKEN0           : aliased LFCCLKEN0_Register;
      --  Low Frequency E Clock Enable Register 0 (Async Reg)
      LFECLKEN0           : aliased LFECLKEN0_Register;
      --  High Frequency Clock Prescaler Register
      HFPRESC             : aliased HFPRESC_Register;
      --  High Frequency Bus Clock Prescaler Register
      HFBUSPRESC          : aliased HFBUSPRESC_Register;
      --  High Frequency Core Clock Prescaler Register
      HFCOREPRESC         : aliased HFCOREPRESC_Register;
      --  High Frequency Peripheral Clock Prescaler Register
      HFPERPRESC          : aliased HFPERPRESC_Register;
      --  High Frequency Export Clock Prescaler Register
      HFEXPPRESC          : aliased HFEXPPRESC_Register;
      --  High Frequency Peripheral Clock Prescaler B Register
      HFPERPRESCB         : aliased HFPERPRESCB_Register;
      --  High Frequency Peripheral Clock Prescaler C Register
      HFPERPRESCC         : aliased HFPERPRESCC_Register;
      --  Low Frequency a Prescaler Register 0 (Async Reg)
      LFAPRESC0           : aliased LFAPRESC0_Register;
      --  Low Frequency B Prescaler Register 0 (Async Reg)
      LFBPRESC0           : aliased LFBPRESC0_Register;
      --  Low Frequency E Prescaler Register 0 (Async Reg)
      LFEPRESC0           : aliased LFEPRESC0_Register;
      --  Synchronization Busy Register
      SYNCBUSY            : aliased SYNCBUSY_Register;
      --  Freeze Register
      FREEZE              : aliased FREEZE_Register;
      --  PCNT Control Register
      PCNTCTRL            : aliased PCNTCTRL_Register;
      --  ADC Control Register
      ADCCTRL             : aliased ADCCTRL_Register;
      --  SDIO Control Register
      SDIOCTRL            : aliased SDIOCTRL_Register;
      --  QSPI Control Register
      QSPICTRL            : aliased QSPICTRL_Register;
      --  PDM Control Register
      PDMCTRL             : aliased PDMCTRL_Register;
      --  I/O Routing Pin Enable Register
      ROUTEPEN            : aliased ROUTEPEN_Register;
      --  I/O Routing Location Register
      ROUTELOC0           : aliased ROUTELOC0_Register;
      --  I/O Routing Location Register
      ROUTELOC1           : aliased ROUTELOC1_Register;
      --  Configuration Lock Register
      LOCK                : aliased LOCK_Register;
      --  HFRCO Spread Spectrum Register
      HFRCOSS             : aliased HFRCOSS_Register;
      --  USB Control Register
      USBCTRL             : aliased USBCTRL_Register;
      --  USB Clock Recovery Control
      USBCRCTRL           : aliased USBCRCTRL_Register;
   end record
     with Volatile;

   for CMU_Peripheral use record
      CTRL                at 16#0# range 0 .. 31;
      USHFRCOCTRL         at 16#8# range 0 .. 31;
      HFRCOCTRL           at 16#10# range 0 .. 31;
      AUXHFRCOCTRL        at 16#18# range 0 .. 31;
      LFRCOCTRL           at 16#20# range 0 .. 31;
      HFXOCTRL            at 16#24# range 0 .. 31;
      HFXOCTRL1           at 16#28# range 0 .. 31;
      HFXOSTARTUPCTRL     at 16#2C# range 0 .. 31;
      HFXOSTEADYSTATECTRL at 16#30# range 0 .. 31;
      HFXOTIMEOUTCTRL     at 16#34# range 0 .. 31;
      LFXOCTRL            at 16#38# range 0 .. 31;
      DPLLCTRL            at 16#40# range 0 .. 31;
      DPLLCTRL1           at 16#44# range 0 .. 31;
      CALCTRL             at 16#50# range 0 .. 31;
      CALCNT              at 16#54# range 0 .. 31;
      OSCENCMD            at 16#60# range 0 .. 31;
      CMD                 at 16#64# range 0 .. 31;
      DBGCLKSEL           at 16#70# range 0 .. 31;
      HFCLKSEL            at 16#74# range 0 .. 31;
      LFACLKSEL           at 16#80# range 0 .. 31;
      LFBCLKSEL           at 16#84# range 0 .. 31;
      LFECLKSEL           at 16#88# range 0 .. 31;
      LFCCLKSEL           at 16#8C# range 0 .. 31;
      STATUS              at 16#90# range 0 .. 31;
      HFCLKSTATUS         at 16#94# range 0 .. 31;
      HFXOTRIMSTATUS      at 16#9C# range 0 .. 31;
      IF_k                at 16#A0# range 0 .. 31;
      IFS                 at 16#A4# range 0 .. 31;
      IFC                 at 16#A8# range 0 .. 31;
      IEN                 at 16#AC# range 0 .. 31;
      HFBUSCLKEN0         at 16#B0# range 0 .. 31;
      HFPERCLKEN0         at 16#C0# range 0 .. 31;
      HFPERCLKEN1         at 16#C4# range 0 .. 31;
      LFACLKEN0           at 16#E0# range 0 .. 31;
      LFBCLKEN0           at 16#E8# range 0 .. 31;
      LFCCLKEN0           at 16#EC# range 0 .. 31;
      LFECLKEN0           at 16#F0# range 0 .. 31;
      HFPRESC             at 16#100# range 0 .. 31;
      HFBUSPRESC          at 16#104# range 0 .. 31;
      HFCOREPRESC         at 16#108# range 0 .. 31;
      HFPERPRESC          at 16#10C# range 0 .. 31;
      HFEXPPRESC          at 16#114# range 0 .. 31;
      HFPERPRESCB         at 16#118# range 0 .. 31;
      HFPERPRESCC         at 16#11C# range 0 .. 31;
      LFAPRESC0           at 16#120# range 0 .. 31;
      LFBPRESC0           at 16#128# range 0 .. 31;
      LFEPRESC0           at 16#130# range 0 .. 31;
      SYNCBUSY            at 16#140# range 0 .. 31;
      FREEZE              at 16#144# range 0 .. 31;
      PCNTCTRL            at 16#150# range 0 .. 31;
      ADCCTRL             at 16#15C# range 0 .. 31;
      SDIOCTRL            at 16#160# range 0 .. 31;
      QSPICTRL            at 16#164# range 0 .. 31;
      PDMCTRL             at 16#168# range 0 .. 31;
      ROUTEPEN            at 16#170# range 0 .. 31;
      ROUTELOC0           at 16#174# range 0 .. 31;
      ROUTELOC1           at 16#178# range 0 .. 31;
      LOCK                at 16#180# range 0 .. 31;
      HFRCOSS             at 16#184# range 0 .. 31;
      USBCTRL             at 16#1F0# range 0 .. 31;
      USBCRCTRL           at 16#1F4# range 0 .. 31;
   end record;

   --  CMU
   CMU_Periph : aliased CMU_Peripheral
     with Import, Address => CMU_Base;

end Interfaces.EFM32.CMU;
