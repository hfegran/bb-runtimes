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

--  LCD
package Interfaces.EFM32.LCD is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_EN_Field is Interfaces.EFM32.Bit;

   --  Update Data Control
   type CTRL_UDCTRL_Field is
     (--  The data transfer is controlled by SW. Transfer is performed as soon as
--  possible
      REGULAR,
      --  The data transfer is done at the next event triggered by the Frame Counter
      FCEVENT,
      --  The data transfer is done continuously at every LCD frame start
      FRAMESTART)
     with Size => 2;
   for CTRL_UDCTRL_Field use
     (REGULAR => 0,
      FCEVENT => 1,
      FRAMESTART => 2);

   subtype CTRL_DSC_Field is Interfaces.EFM32.Bit;

   --  Control Register
   type CTRL_Register is record
      --  LCD Enable
      EN             : CTRL_EN_Field := 16#0#;
      --  Update Data Control
      UDCTRL         : CTRL_UDCTRL_Field := Interfaces.EFM32.LCD.REGULAR;
      --  unspecified
      Reserved_3_22  : Interfaces.EFM32.UInt20 := 16#0#;
      --  Direct Segment Control
      DSC            : CTRL_DSC_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      EN             at 0 range 0 .. 0;
      UDCTRL         at 0 range 1 .. 2;
      Reserved_3_22  at 0 range 3 .. 22;
      DSC            at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Mux Configuration
   type DISPCTRL_MUX_Field is
     (--  Static
      STATIC,
      --  Duplex
      DUPLEX,
      --  Triplex
      TRIPLEX,
      --  Quadruplex
      QUADRUPLEX,
      --  Sextaplex
      SEXTAPLEX,
      --  Octaplex
      OCTAPLEX)
     with Size => 3;
   for DISPCTRL_MUX_Field use
     (STATIC => 0,
      DUPLEX => 1,
      TRIPLEX => 2,
      QUADRUPLEX => 3,
      SEXTAPLEX => 5,
      OCTAPLEX => 7);

   subtype DISPCTRL_WAVE_Field is Interfaces.EFM32.Bit;
   subtype DISPCTRL_CONTRAST_Field is Interfaces.EFM32.UInt6;

   --  Charge Redistribution Cycles
   type DISPCTRL_CHGRDST_Field is
     (--  Disable charge redistribution.
      DISABLE,
      --  Use 1 prescaled low frequency clock cycle for charge redistribution.
      ONE,
      --  Use 2 prescaled low frequency clock cycles for charge redistribution.
      TWO,
      --  Use 3 prescaled low frequency clock cycles for charge redistribution.
      THREE,
      --  Use 4 prescaled low frequency clock cycles for charge redistribution.
      FOUR)
     with Size => 3;
   for DISPCTRL_CHGRDST_Field use
     (DISABLE => 0,
      ONE => 1,
      TWO => 2,
      THREE => 3,
      FOUR => 4);

   --  Bias Configuration
   type DISPCTRL_BIAS_Field is
     (--  Static
      STATIC,
      --  1/2 Bias
      ONEHALF,
      --  1/3 Bias
      ONETHIRD,
      --  1/4 Bias
      ONEFOURTH)
     with Size => 2;
   for DISPCTRL_BIAS_Field use
     (STATIC => 0,
      ONEHALF => 1,
      ONETHIRD => 2,
      ONEFOURTH => 3);

   --  Mode Setting
   type DISPCTRL_MODE_Field is
     (--  No External Cap. Uses an internal current source to generate VLCD. Use
--  CONTRAST[4:0] to control VLCD.
      NOEXTCAP,
      --  Use step down control with VLCD less than VDD. Use CONTRAST[5:0] to control
--  VLCD level, and use SPEED to adjust VLCD drive strength.
      STEPDOWN,
      --  Charge pump used with internal oscillator. Use CONTRAST[5:0] to control
--  VLCD level, and use SPEED to adjust oscillator frequency.
      CPINTOSC)
     with Size => 2;
   for DISPCTRL_MODE_Field use
     (NOEXTCAP => 0,
      STEPDOWN => 1,
      CPINTOSC => 2);

   --  Display Control Register
   type DISPCTRL_Register is record
      --  Mux Configuration
      MUX            : DISPCTRL_MUX_Field := Interfaces.EFM32.LCD.STATIC;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit := 16#0#;
      --  Waveform Selection
      WAVE           : DISPCTRL_WAVE_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Contrast Control
      CONTRAST       : DISPCTRL_CONTRAST_Field := 16#3F#;
      --  unspecified
      Reserved_14_19 : Interfaces.EFM32.UInt6 := 16#0#;
      --  Charge Redistribution Cycles
      CHGRDST        : DISPCTRL_CHGRDST_Field := Interfaces.EFM32.LCD.ONE;
      --  unspecified
      Reserved_23_23 : Interfaces.EFM32.Bit := 16#0#;
      --  Bias Configuration
      BIAS           : DISPCTRL_BIAS_Field := Interfaces.EFM32.LCD.STATIC;
      --  unspecified
      Reserved_26_27 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Mode Setting
      MODE           : DISPCTRL_MODE_Field := Interfaces.EFM32.LCD.NOEXTCAP;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DISPCTRL_Register use record
      MUX            at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      WAVE           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CONTRAST       at 0 range 8 .. 13;
      Reserved_14_19 at 0 range 14 .. 19;
      CHGRDST        at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      BIAS           at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      MODE           at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype BACTRL_BLINKEN_Field is Interfaces.EFM32.Bit;
   subtype BACTRL_BLANK_Field is Interfaces.EFM32.Bit;
   subtype BACTRL_AEN_Field is Interfaces.EFM32.Bit;

   --  Animate Register a Shift Control
   type BACTRL_AREGASC_Field is
     (--  No Shift operation on Animation Register A
      NOSHIFT,
      --  Animation Register A is shifted left
      SHIFTLEFT,
      --  Animation Register A is shifted right
      SHIFTRIGHT)
     with Size => 2;
   for BACTRL_AREGASC_Field use
     (NOSHIFT => 0,
      SHIFTLEFT => 1,
      SHIFTRIGHT => 2);

   --  Animate Register B Shift Control
   type BACTRL_AREGBSC_Field is
     (--  No Shift operation on Animation Register B
      NOSHIFT,
      --  Animation Register B is shifted left
      SHIFTLEFT,
      --  Animation Register B is shifted right
      SHIFTRIGHT)
     with Size => 2;
   for BACTRL_AREGBSC_Field use
     (NOSHIFT => 0,
      SHIFTLEFT => 1,
      SHIFTRIGHT => 2);

   subtype BACTRL_ALOGSEL_Field is Interfaces.EFM32.Bit;
   subtype BACTRL_FCEN_Field is Interfaces.EFM32.Bit;

   --  Frame Counter Prescaler
   type BACTRL_FCPRESC_Field is
     (--  CLKFC = CLKFRAME / 1
      DIV1,
      --  CLKFC = CLKFRAME / 2
      DIV2,
      --  CLKFC = CLKFRAME / 4
      DIV4,
      --  CLKFC = CLKFRAME / 8
      DIV8)
     with Size => 2;
   for BACTRL_FCPRESC_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3);

   subtype BACTRL_FCTOP_Field is Interfaces.EFM32.UInt6;
   subtype BACTRL_ALOC_Field is Interfaces.EFM32.Bit;

   --  Blink and Animation Control Register
   type BACTRL_Register is record
      --  Blink Enable
      BLINKEN        : BACTRL_BLINKEN_Field := 16#0#;
      --  Blank Display
      BLANK          : BACTRL_BLANK_Field := 16#0#;
      --  Animation Enable
      AEN            : BACTRL_AEN_Field := 16#0#;
      --  Animate Register a Shift Control
      AREGASC        : BACTRL_AREGASC_Field := Interfaces.EFM32.LCD.NOSHIFT;
      --  Animate Register B Shift Control
      AREGBSC        : BACTRL_AREGBSC_Field := Interfaces.EFM32.LCD.NOSHIFT;
      --  Animate Logic Function Select
      ALOGSEL        : BACTRL_ALOGSEL_Field := 16#0#;
      --  Frame Counter Enable
      FCEN           : BACTRL_FCEN_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : Interfaces.EFM32.UInt7 := 16#0#;
      --  Frame Counter Prescaler
      FCPRESC        : BACTRL_FCPRESC_Field := Interfaces.EFM32.LCD.DIV1;
      --  Frame Counter Top Value
      FCTOP          : BACTRL_FCTOP_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Animation Location
      ALOC           : BACTRL_ALOC_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BACTRL_Register use record
      BLINKEN        at 0 range 0 .. 0;
      BLANK          at 0 range 1 .. 1;
      AEN            at 0 range 2 .. 2;
      AREGASC        at 0 range 3 .. 4;
      AREGBSC        at 0 range 5 .. 6;
      ALOGSEL        at 0 range 7 .. 7;
      FCEN           at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      FCPRESC        at 0 range 16 .. 17;
      FCTOP          at 0 range 18 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      ALOC           at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype STATUS_ASTATE_Field is Interfaces.EFM32.UInt4;
   subtype STATUS_BLINK_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. Current Animation State
      ASTATE        : STATUS_ASTATE_Field;
      --  unspecified
      Reserved_4_7  : Interfaces.EFM32.UInt4;
      --  Read-only. Blink State
      BLINK         : STATUS_BLINK_Field;
      --  unspecified
      Reserved_9_31 : Interfaces.EFM32.UInt23;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      ASTATE        at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      BLINK         at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype AREGA_AREGA_Field is Interfaces.EFM32.Byte;

   --  Animation Register a
   type AREGA_Register is record
      --  Animation Register a Data
      AREGA         : AREGA_AREGA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AREGA_Register use record
      AREGA         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype AREGB_AREGB_Field is Interfaces.EFM32.Byte;

   --  Animation Register B
   type AREGB_Register is record
      --  Animation Register B Data
      AREGB         : AREGB_AREGB_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AREGB_Register use record
      AREGB         at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype IF_FC_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. Frame Counter Interrupt Flag
      FC            : IF_FC_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      FC            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype IFS_FC_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Frame Counter Interrupt Flag Set
      FC            : IFS_FC_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      FC            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype IFC_FC_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Frame Counter Interrupt Flag Clear
      FC            : IFC_FC_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      FC            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype IEN_FC_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  Frame Counter Interrupt Enable
      FC            : IEN_FC_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      FC            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype BIASCTRL_SPEED_Field is Interfaces.EFM32.UInt3;
   subtype BIASCTRL_BUFDRV_Field is Interfaces.EFM32.UInt4;
   subtype BIASCTRL_BUFBIAS_Field is Interfaces.EFM32.UInt3;

   --  Analog BIAS Control
   type BIASCTRL_Register is record
      --  SPEED Adjustment
      SPEED          : BIASCTRL_SPEED_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit := 16#0#;
      --  Buffer Drive Strength
      BUFDRV         : BIASCTRL_BUFDRV_Field := 16#0#;
      --  unspecified
      Reserved_8_9   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Buffer Bias Setting
      BUFBIAS        : BIASCTRL_BUFBIAS_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.EFM32.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BIASCTRL_Register use record
      SPEED          at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      BUFDRV         at 0 range 4 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      BUFBIAS        at 0 range 10 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype SEGD0H_SEGD0H_Field is Interfaces.EFM32.Byte;

   --  Segment Data High Register 0
   type SEGD0H_Register is record
      --  COM0 Segment Data High
      SEGD0H        : SEGD0H_SEGD0H_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEGD0H_Register use record
      SEGD0H        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SEGD1H_SEGD1H_Field is Interfaces.EFM32.Byte;

   --  Segment Data High Register 1
   type SEGD1H_Register is record
      --  COM1 Segment Data High
      SEGD1H        : SEGD1H_SEGD1H_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEGD1H_Register use record
      SEGD1H        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SEGD2H_SEGD2H_Field is Interfaces.EFM32.Byte;

   --  Segment Data High Register 2
   type SEGD2H_Register is record
      --  COM2 Segment Data High
      SEGD2H        : SEGD2H_SEGD2H_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEGD2H_Register use record
      SEGD2H        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SEGD3H_SEGD3H_Field is Interfaces.EFM32.Byte;

   --  Segment Data High Register 3
   type SEGD3H_Register is record
      --  COM3 Segment Data High
      SEGD3H        : SEGD3H_SEGD3H_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEGD3H_Register use record
      SEGD3H        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SEGD4H_SEGD4H_Field is Interfaces.EFM32.Byte;

   --  Segment Data High Register 4
   type SEGD4H_Register is record
      --  COM0 Segment Data High
      SEGD4H        : SEGD4H_SEGD4H_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEGD4H_Register use record
      SEGD4H        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SEGD5H_SEGD5H_Field is Interfaces.EFM32.Byte;

   --  Segment Data High Register 5
   type SEGD5H_Register is record
      --  COM1 Segment Data High
      SEGD5H        : SEGD5H_SEGD5H_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEGD5H_Register use record
      SEGD5H        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SEGD6H_SEGD6H_Field is Interfaces.EFM32.Byte;

   --  Segment Data High Register 6
   type SEGD6H_Register is record
      --  COM2 Segment Data High
      SEGD6H        : SEGD6H_SEGD6H_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEGD6H_Register use record
      SEGD6H        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SEGD7H_SEGD7H_Field is Interfaces.EFM32.Byte;

   --  Segment Data High Register 7
   type SEGD7H_Register is record
      --  COM3 Segment Data High
      SEGD7H        : SEGD7H_SEGD7H_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEGD7H_Register use record
      SEGD7H        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype FREEZE_REGFREEZE_Field is Interfaces.EFM32.Bit;
   subtype FREEZE_LCDGATE_Field is Interfaces.EFM32.Bit;

   --  Freeze Register
   type FREEZE_Register is record
      --  Register Update Freeze
      REGFREEZE     : FREEZE_REGFREEZE_Field := 16#0#;
      --  LCD Gate
      LCDGATE       : FREEZE_LCDGATE_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREEZE_Register use record
      REGFREEZE     at 0 range 0 .. 0;
      LCDGATE       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype SYNCBUSY_CTRL_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_BACTRL_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_AREGA_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_AREGB_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD0L_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD1L_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD2L_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD3L_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD0H_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD1H_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD2H_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD3H_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD4L_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD5L_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD6L_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD7L_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD4H_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD5H_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD6H_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SEGD7H_Field is Interfaces.EFM32.Bit;

   --  Synchronization Busy Register
   type SYNCBUSY_Register is record
      --  Read-only. CTRL Register Busy
      CTRL           : SYNCBUSY_CTRL_Field;
      --  Read-only. BACTRL Register Busy
      BACTRL         : SYNCBUSY_BACTRL_Field;
      --  Read-only. AREGA Register Busy
      AREGA          : SYNCBUSY_AREGA_Field;
      --  Read-only. AREGB Register Busy
      AREGB          : SYNCBUSY_AREGB_Field;
      --  Read-only. SEGD0L Register Busy
      SEGD0L         : SYNCBUSY_SEGD0L_Field;
      --  Read-only. SEGD1L Register Busy
      SEGD1L         : SYNCBUSY_SEGD1L_Field;
      --  Read-only. SEGD2L Register Busy
      SEGD2L         : SYNCBUSY_SEGD2L_Field;
      --  Read-only. SEGD3L Register Busy
      SEGD3L         : SYNCBUSY_SEGD3L_Field;
      --  Read-only. SEGD0H Register Busy
      SEGD0H         : SYNCBUSY_SEGD0H_Field;
      --  Read-only. SEGD1H Register Busy
      SEGD1H         : SYNCBUSY_SEGD1H_Field;
      --  Read-only. SEGD2H Register Busy
      SEGD2H         : SYNCBUSY_SEGD2H_Field;
      --  Read-only. SEGD3H Register Busy
      SEGD3H         : SYNCBUSY_SEGD3H_Field;
      --  Read-only. SEGD4L Register Busy
      SEGD4L         : SYNCBUSY_SEGD4L_Field;
      --  Read-only. SEGD5L Register Busy
      SEGD5L         : SYNCBUSY_SEGD5L_Field;
      --  Read-only. SEGD6L Register Busy
      SEGD6L         : SYNCBUSY_SEGD6L_Field;
      --  Read-only. SEGD7L Register Busy
      SEGD7L         : SYNCBUSY_SEGD7L_Field;
      --  Read-only. SEGD4H Register Busy
      SEGD4H         : SYNCBUSY_SEGD4H_Field;
      --  Read-only. SEGD5H Register Busy
      SEGD5H         : SYNCBUSY_SEGD5H_Field;
      --  Read-only. SEGD6H Register Busy
      SEGD6H         : SYNCBUSY_SEGD6H_Field;
      --  Read-only. SEGD7H Register Busy
      SEGD7H         : SYNCBUSY_SEGD7H_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNCBUSY_Register use record
      CTRL           at 0 range 0 .. 0;
      BACTRL         at 0 range 1 .. 1;
      AREGA          at 0 range 2 .. 2;
      AREGB          at 0 range 3 .. 3;
      SEGD0L         at 0 range 4 .. 4;
      SEGD1L         at 0 range 5 .. 5;
      SEGD2L         at 0 range 6 .. 6;
      SEGD3L         at 0 range 7 .. 7;
      SEGD0H         at 0 range 8 .. 8;
      SEGD1H         at 0 range 9 .. 9;
      SEGD2H         at 0 range 10 .. 10;
      SEGD3H         at 0 range 11 .. 11;
      SEGD4L         at 0 range 12 .. 12;
      SEGD5L         at 0 range 13 .. 13;
      SEGD6L         at 0 range 14 .. 14;
      SEGD7L         at 0 range 15 .. 15;
      SEGD4H         at 0 range 16 .. 16;
      SEGD5H         at 0 range 17 .. 17;
      SEGD6H         at 0 range 18 .. 18;
      SEGD7H         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype FRAMERATE_FRDIV_Field is Interfaces.EFM32.UInt9;

   --  Frame Rate
   type FRAMERATE_Register is record
      --  Frame Rate Divider
      FRDIV         : FRAMERATE_FRDIV_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.EFM32.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRAMERATE_Register use record
      FRDIV         at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype SEGEN2_SEGEN2_Field is Interfaces.EFM32.Byte;

   --  Segment Enable (32 to 39)
   type SEGEN2_Register is record
      --  Segment Enable (second Group)
      SEGEN2        : SEGEN2_SEGEN2_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEGEN2_Register use record
      SEGEN2        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LCD
   type LCD_Peripheral is record
      --  Control Register
      CTRL      : aliased CTRL_Register;
      --  Display Control Register
      DISPCTRL  : aliased DISPCTRL_Register;
      --  Segment Enable Register
      SEGEN     : aliased Interfaces.EFM32.UInt32;
      --  Blink and Animation Control Register
      BACTRL    : aliased BACTRL_Register;
      --  Status Register
      STATUS    : aliased STATUS_Register;
      --  Animation Register a
      AREGA     : aliased AREGA_Register;
      --  Animation Register B
      AREGB     : aliased AREGB_Register;
      --  Interrupt Flag Register
      IF_k      : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS       : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC       : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN       : aliased IEN_Register;
      --  Analog BIAS Control
      BIASCTRL  : aliased BIASCTRL_Register;
      --  Segment Data Low Register 0
      SEGD0L    : aliased Interfaces.EFM32.UInt32;
      --  Segment Data Low Register 1
      SEGD1L    : aliased Interfaces.EFM32.UInt32;
      --  Segment Data Low Register 2
      SEGD2L    : aliased Interfaces.EFM32.UInt32;
      --  Segment Data Low Register 3
      SEGD3L    : aliased Interfaces.EFM32.UInt32;
      --  Segment Data High Register 0
      SEGD0H    : aliased SEGD0H_Register;
      --  Segment Data High Register 1
      SEGD1H    : aliased SEGD1H_Register;
      --  Segment Data High Register 2
      SEGD2H    : aliased SEGD2H_Register;
      --  Segment Data High Register 3
      SEGD3H    : aliased SEGD3H_Register;
      --  Segment Data Low Register 4
      SEGD4L    : aliased Interfaces.EFM32.UInt32;
      --  Segment Data Low Register 5
      SEGD5L    : aliased Interfaces.EFM32.UInt32;
      --  Segment Data Low Register 6
      SEGD6L    : aliased Interfaces.EFM32.UInt32;
      --  Segment Data Low Register 7
      SEGD7L    : aliased Interfaces.EFM32.UInt32;
      --  Segment Data High Register 4
      SEGD4H    : aliased SEGD4H_Register;
      --  Segment Data High Register 5
      SEGD5H    : aliased SEGD5H_Register;
      --  Segment Data High Register 6
      SEGD6H    : aliased SEGD6H_Register;
      --  Segment Data High Register 7
      SEGD7H    : aliased SEGD7H_Register;
      --  Freeze Register
      FREEZE    : aliased FREEZE_Register;
      --  Synchronization Busy Register
      SYNCBUSY  : aliased SYNCBUSY_Register;
      --  Frame Rate
      FRAMERATE : aliased FRAMERATE_Register;
      --  Segment Enable (32 to 39)
      SEGEN2    : aliased SEGEN2_Register;
   end record
     with Volatile;

   for LCD_Peripheral use record
      CTRL      at 16#0# range 0 .. 31;
      DISPCTRL  at 16#4# range 0 .. 31;
      SEGEN     at 16#8# range 0 .. 31;
      BACTRL    at 16#C# range 0 .. 31;
      STATUS    at 16#10# range 0 .. 31;
      AREGA     at 16#14# range 0 .. 31;
      AREGB     at 16#18# range 0 .. 31;
      IF_k      at 16#1C# range 0 .. 31;
      IFS       at 16#20# range 0 .. 31;
      IFC       at 16#24# range 0 .. 31;
      IEN       at 16#28# range 0 .. 31;
      BIASCTRL  at 16#30# range 0 .. 31;
      SEGD0L    at 16#40# range 0 .. 31;
      SEGD1L    at 16#44# range 0 .. 31;
      SEGD2L    at 16#48# range 0 .. 31;
      SEGD3L    at 16#4C# range 0 .. 31;
      SEGD0H    at 16#50# range 0 .. 31;
      SEGD1H    at 16#54# range 0 .. 31;
      SEGD2H    at 16#58# range 0 .. 31;
      SEGD3H    at 16#5C# range 0 .. 31;
      SEGD4L    at 16#60# range 0 .. 31;
      SEGD5L    at 16#64# range 0 .. 31;
      SEGD6L    at 16#68# range 0 .. 31;
      SEGD7L    at 16#6C# range 0 .. 31;
      SEGD4H    at 16#70# range 0 .. 31;
      SEGD5H    at 16#74# range 0 .. 31;
      SEGD6H    at 16#78# range 0 .. 31;
      SEGD7H    at 16#7C# range 0 .. 31;
      FREEZE    at 16#C0# range 0 .. 31;
      SYNCBUSY  at 16#C4# range 0 .. 31;
      FRAMERATE at 16#F0# range 0 .. 31;
      SEGEN2    at 16#F4# range 0 .. 31;
   end record;

   --  LCD
   LCD_Periph : aliased LCD_Peripheral
     with Import, Address => LCD_Base;

end Interfaces.EFM32.LCD;
