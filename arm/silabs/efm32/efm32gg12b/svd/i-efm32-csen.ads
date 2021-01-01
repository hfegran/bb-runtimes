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

--  CSEN
package Interfaces.EFM32.CSEN is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CMPPOL_Field is Interfaces.EFM32.Bit;

   --  CSEN Conversion Mode Select
   type CTRL_CM_Field is
     (--  Single Channel Mode: One conversion of a single channel (when MCE = 0) or
--  set of bonded channels (when MCE = 1) per conversion trigger.
      SGL,
      --  Scan Mode: Scans multiple selected channels once per conversion trigger.
      SCAN,
      --  Continuous Single Channel: Continuous conversion of a single channel (when
--  MCE = 0) or set of bonded channels (when MCE = 1).
      CONTSGL,
      --  Continuous Scan Mode: Continuously scans multiple selected channels.
      CONTSCAN)
     with Size => 2;
   for CTRL_CM_Field use
     (SGL => 0,
      SCAN => 1,
      CONTSGL => 2,
      CONTSCAN => 3);

   --  SAR Conversion Resolution.
   type CTRL_SARCR_Field is
     (--  Conversions last 10 internal CSEN clocks and are 10-bits in length.
      CLK10,
      --  Conversions last 12 internal CSEN clocks and are 12-bits in length.
      CLK12,
      --  Conversions last 14 internal CSEN clocks and are 14-bits in length.
      CLK14,
      --  Conversions last 16 internal CSEN clocks and are 16-bits in length.
      CLK16)
     with Size => 2;
   for CTRL_SARCR_Field use
     (CLK10 => 0,
      CLK12 => 1,
      CLK14 => 2,
      CLK16 => 3);

   --  CSEN Accumulator Mode Select
   type CTRL_ACU_Field is
     (--  Accumulate 1 sample.
      ACC1,
      --  Accumulate 2 sample.
      ACC2,
      --  Accumulate 4 sample.
      ACC4,
      --  Accumulate 8 sample.
      ACC8,
      --  Accumulate 16 sample.
      ACC16,
      --  Accumulate 32 sample.
      ACC32,
      --  Accumulate 64 sample.
      ACC64)
     with Size => 3;
   for CTRL_ACU_Field use
     (ACC1 => 0,
      ACC2 => 1,
      ACC4 => 2,
      ACC8 => 3,
      ACC16 => 4,
      ACC32 => 5,
      ACC64 => 6);

   subtype CTRL_MCEN_Field is Interfaces.EFM32.Bit;

   --  Start Trigger Select
   type CTRL_STM_Field is
     (--  PRS Triggering. Conversions are triggered by the PRS channel selected in
--  PRSSEL.
      PRS,
      --  Timer Triggering. Conversions are triggered by a local CSEN timer reload.
      TIMER,
      --  Software Triggering. Conversions are triggered by writing a 1 to the START
--  field of the CMD register.
      START,
      --  Reset value for the field
      CTRL_STM_Field_Reset)
     with Size => 2;
   for CTRL_STM_Field use
     (PRS => 0,
      TIMER => 1,
      START => 2,
      CTRL_STM_Field_Reset => 3);

   subtype CTRL_CMPEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_DRSF_Field is Interfaces.EFM32.Bit;
   subtype CTRL_DMAEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CONVSEL_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CHOPEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_AUTOGND_Field is Interfaces.EFM32.Bit;
   subtype CTRL_MXUC_Field is Interfaces.EFM32.Bit;
   subtype CTRL_EMACMPEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_WARMUPMODE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_LOCALSENS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CPACCURACY_Field is Interfaces.EFM32.Bit;

   --  Control
   type CTRL_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.EFM32.Bit := 16#0#;
      --  CSEN Enable
      EN             : CTRL_EN_Field := 16#0#;
      --  CSEN Digital Comparator Polarity Select
      CMPPOL         : CTRL_CMPPOL_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit := 16#0#;
      --  CSEN Conversion Mode Select
      CM             : CTRL_CM_Field := Interfaces.EFM32.CSEN.SGL;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  SAR Conversion Resolution.
      SARCR          : CTRL_SARCR_Field := Interfaces.EFM32.CSEN.CLK10;
      --  unspecified
      Reserved_10_11 : Interfaces.EFM32.UInt2 := 16#0#;
      --  CSEN Accumulator Mode Select
      ACU            : CTRL_ACU_Field := Interfaces.EFM32.CSEN.ACC1;
      --  CSEN Multiple Channel Enable
      MCEN           : CTRL_MCEN_Field := 16#0#;
      --  Start Trigger Select
      STM            : CTRL_STM_Field := CTRL_STM_Field_Reset;
      --  CSEN Digital Comparator Enable
      CMPEN          : CTRL_CMPEN_Field := 16#0#;
      --  CSEN Disable Right-Shift
      DRSF           : CTRL_DRSF_Field := 16#0#;
      --  CSEN DMA Enable Bit
      DMAEN          : CTRL_DMAEN_Field := 16#0#;
      --  CSEN Converter Select
      CONVSEL        : CTRL_CONVSEL_Field := 16#0#;
      --  CSEN Chop Enable
      CHOPEN         : CTRL_CHOPEN_Field := 16#0#;
      --  CSEN Automatic Ground Enable
      AUTOGND        : CTRL_AUTOGND_Field := 16#0#;
      --  CSEN Mux Disconnect
      MXUC           : CTRL_MXUC_Field := 16#0#;
      --  Greater and Less Than Comparison Using the Exponential Moving Average
      --  (EMA) is Enabled
      EMACMPEN       : CTRL_EMACMPEN_Field := 16#0#;
      --  Select Warmup Mode for CSEN
      WARMUPMODE     : CTRL_WARMUPMODE_Field := 16#0#;
      --  Local Sensing Enable
      LOCALSENS      : CTRL_LOCALSENS_Field := 16#0#;
      --  Charge Pump Accuracy
      CPACCURACY     : CTRL_CPACCURACY_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      EN             at 0 range 1 .. 1;
      CMPPOL         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CM             at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SARCR          at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      ACU            at 0 range 12 .. 14;
      MCEN           at 0 range 15 .. 15;
      STM            at 0 range 16 .. 17;
      CMPEN          at 0 range 18 .. 18;
      DRSF           at 0 range 19 .. 19;
      DMAEN          at 0 range 20 .. 20;
      CONVSEL        at 0 range 21 .. 21;
      CHOPEN         at 0 range 22 .. 22;
      AUTOGND        at 0 range 23 .. 23;
      MXUC           at 0 range 24 .. 24;
      EMACMPEN       at 0 range 25 .. 25;
      WARMUPMODE     at 0 range 26 .. 26;
      LOCALSENS      at 0 range 27 .. 27;
      CPACCURACY     at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Period Counter Prescaler
   type TIMCTRL_PCPRESC_Field is
     (--  The period counter clock frequency is LFBCLKCSEN/1
      DIV1,
      --  The period counter clock frequency is LFBCLKCSEN/2
      DIV2,
      --  The period counter clock frequency is LFBCLKCSEN/4
      DIV4,
      --  The period counter clock frequency is LFBCLKCSEN/8
      DIV8,
      --  The period counter clock frequency is LFBCLKCSEN/16
      DIV16,
      --  The period counter clock frequency is LFBCLKCSEN/32
      DIV32,
      --  The period counter clock frequency is LFBCLKCSEN/64
      DIV64,
      --  The period counter clock frequency is LFBCLKCSEN/128
      DIV128)
     with Size => 3;
   for TIMCTRL_PCPRESC_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3,
      DIV16 => 4,
      DIV32 => 5,
      DIV64 => 6,
      DIV128 => 7);

   subtype TIMCTRL_PCTOP_Field is Interfaces.EFM32.Byte;
   subtype TIMCTRL_WARMUPCNT_Field is Interfaces.EFM32.UInt2;

   --  Timing Control
   type TIMCTRL_Register is record
      --  Period Counter Prescaler
      PCPRESC        : TIMCTRL_PCPRESC_Field := Interfaces.EFM32.CSEN.DIV1;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Period Counter Top Value
      PCTOP          : TIMCTRL_PCTOP_Field := 16#0#;
      --  Warmup Period Counter
      WARMUPCNT      : TIMCTRL_WARMUPCNT_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.EFM32.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMCTRL_Register use record
      PCPRESC        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PCTOP          at 0 range 8 .. 15;
      WARMUPCNT      at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype CMD_START_Field is Interfaces.EFM32.Bit;

   --  Command
   type CMD_Register is record
      --  Write-only. Start Software-Triggered Conversions
      START         : CMD_START_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      START         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype STATUS_CSENBUSY_Field is Interfaces.EFM32.Bit;

   --  Status
   type STATUS_Register is record
      --  Read-only. Busy Flag
      CSENBUSY      : STATUS_CSENBUSY_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      CSENBUSY      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  PRS Channel Select
   type PRSSEL_PRSSEL_Field is
     (--  PRS Channel 0 selected as the start trigger
      PRSCH0,
      --  PRS Channel 1 selected as the start trigger
      PRSCH1,
      --  PRS Channel 2 selected as the start trigger
      PRSCH2,
      --  PRS Channel 3 selected as the start trigger
      PRSCH3,
      --  PRS Channel 4 selected as the start trigger
      PRSCH4,
      --  PRS Channel 5 selected as the start trigger
      PRSCH5,
      --  PRS Channel 6 selected as the start trigger
      PRSCH6,
      --  PRS Channel 7 selected as the start trigger
      PRSCH7,
      --  PRS Channel 8 selected as the start trigger
      PRSCH8,
      --  PRS Channel 9 selected as the start trigger
      PRSCH9,
      --  PRS Channel 10 selected as the start trigger
      PRSCH10,
      --  PRS Channel 11 selected as the start trigger
      PRSCH11,
      --  PRS Channel 12 selected as the start trigger
      PRSCH12,
      --  PRS Channel 13 selected as the start trigger
      PRSCH13,
      --  PRS Channel 14 selected as the start trigger
      PRSCH14,
      --  PRS Channel 15 selected as the start trigger
      PRSCH15)
     with Size => 4;
   for PRSSEL_PRSSEL_Field use
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

   --  PRS Select
   type PRSSEL_Register is record
      --  PRS Channel Select
      PRSSEL        : PRSSEL_PRSSEL_Field := Interfaces.EFM32.CSEN.PRSCH0;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRSSEL_Register use record
      PRSSEL        at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  CSEN_INPUT0-7 Select
   type SCANINPUTSEL0_INPUT0TO7SEL_Field is
     (--  Reset value for the field
      SCANINPUTSEL0_INPUT0TO7SEL_Field_Reset,
      APORT1CH0TO7,
      APORT1CH8TO15,
      APORT1CH16TO23,
      APORT1CH24TO31,
      APORT3CH0TO7,
      APORT3CH8TO15,
      APORT3CH16TO23,
      APORT3CH24TO31)
     with Size => 4;
   for SCANINPUTSEL0_INPUT0TO7SEL_Field use
     (SCANINPUTSEL0_INPUT0TO7SEL_Field_Reset => 0,
      APORT1CH0TO7 => 4,
      APORT1CH8TO15 => 5,
      APORT1CH16TO23 => 6,
      APORT1CH24TO31 => 7,
      APORT3CH0TO7 => 12,
      APORT3CH8TO15 => 13,
      APORT3CH16TO23 => 14,
      APORT3CH24TO31 => 15);

   --  CSEN_INPUT8-15 Select
   type SCANINPUTSEL0_INPUT8TO15SEL_Field is
     (--  Reset value for the field
      SCANINPUTSEL0_INPUT8TO15SEL_Field_Reset,
      APORT1CH0TO7,
      APORT1CH8TO15,
      APORT1CH16TO23,
      APORT1CH24TO31,
      APORT3CH0TO7,
      APORT3CH8TO15,
      APORT3CH16TO23,
      APORT3CH24TO31)
     with Size => 4;
   for SCANINPUTSEL0_INPUT8TO15SEL_Field use
     (SCANINPUTSEL0_INPUT8TO15SEL_Field_Reset => 0,
      APORT1CH0TO7 => 4,
      APORT1CH8TO15 => 5,
      APORT1CH16TO23 => 6,
      APORT1CH24TO31 => 7,
      APORT3CH0TO7 => 12,
      APORT3CH8TO15 => 13,
      APORT3CH16TO23 => 14,
      APORT3CH24TO31 => 15);

   --  CSEN_INPUT16-23 Select
   type SCANINPUTSEL0_INPUT16TO23SEL_Field is
     (--  Reset value for the field
      SCANINPUTSEL0_INPUT16TO23SEL_Field_Reset,
      APORT1CH0TO7,
      APORT1CH8TO15,
      APORT1CH16TO23,
      APORT1CH24TO31,
      APORT3CH0TO7,
      APORT3CH8TO15,
      APORT3CH16TO23,
      APORT3CH24TO31)
     with Size => 4;
   for SCANINPUTSEL0_INPUT16TO23SEL_Field use
     (SCANINPUTSEL0_INPUT16TO23SEL_Field_Reset => 0,
      APORT1CH0TO7 => 4,
      APORT1CH8TO15 => 5,
      APORT1CH16TO23 => 6,
      APORT1CH24TO31 => 7,
      APORT3CH0TO7 => 12,
      APORT3CH8TO15 => 13,
      APORT3CH16TO23 => 14,
      APORT3CH24TO31 => 15);

   --  CSEN_INPUT24-31 Select
   type SCANINPUTSEL0_INPUT24TO31SEL_Field is
     (--  Reset value for the field
      SCANINPUTSEL0_INPUT24TO31SEL_Field_Reset,
      APORT1CH0TO7,
      APORT1CH8TO15,
      APORT1CH16TO23,
      APORT1CH24TO31,
      APORT3CH0TO7,
      APORT3CH8TO15,
      APORT3CH16TO23,
      APORT3CH24TO31)
     with Size => 4;
   for SCANINPUTSEL0_INPUT24TO31SEL_Field use
     (SCANINPUTSEL0_INPUT24TO31SEL_Field_Reset => 0,
      APORT1CH0TO7 => 4,
      APORT1CH8TO15 => 5,
      APORT1CH16TO23 => 6,
      APORT1CH24TO31 => 7,
      APORT3CH0TO7 => 12,
      APORT3CH8TO15 => 13,
      APORT3CH16TO23 => 14,
      APORT3CH24TO31 => 15);

   --  Scan Input Selection 0
   type SCANINPUTSEL0_Register is record
      --  CSEN_INPUT0-7 Select
      INPUT0TO7SEL   : SCANINPUTSEL0_INPUT0TO7SEL_Field :=
                        SCANINPUTSEL0_INPUT0TO7SEL_Field_Reset;
      --  unspecified
      Reserved_4_7   : Interfaces.EFM32.UInt4 := 16#0#;
      --  CSEN_INPUT8-15 Select
      INPUT8TO15SEL  : SCANINPUTSEL0_INPUT8TO15SEL_Field :=
                        SCANINPUTSEL0_INPUT8TO15SEL_Field_Reset;
      --  unspecified
      Reserved_12_15 : Interfaces.EFM32.UInt4 := 16#0#;
      --  CSEN_INPUT16-23 Select
      INPUT16TO23SEL : SCANINPUTSEL0_INPUT16TO23SEL_Field :=
                        SCANINPUTSEL0_INPUT16TO23SEL_Field_Reset;
      --  unspecified
      Reserved_20_23 : Interfaces.EFM32.UInt4 := 16#0#;
      --  CSEN_INPUT24-31 Select
      INPUT24TO31SEL : SCANINPUTSEL0_INPUT24TO31SEL_Field :=
                        SCANINPUTSEL0_INPUT24TO31SEL_Field_Reset;
      --  unspecified
      Reserved_28_31 : Interfaces.EFM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCANINPUTSEL0_Register use record
      INPUT0TO7SEL   at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      INPUT8TO15SEL  at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      INPUT16TO23SEL at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      INPUT24TO31SEL at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   --  CSEN_INPUT32-39 Select
   type SCANINPUTSEL1_INPUT32TO39SEL_Field is
     (--  Reset value for the field
      SCANINPUTSEL1_INPUT32TO39SEL_Field_Reset,
      APORT1CH0TO7,
      APORT1CH8TO15,
      APORT1CH16TO23,
      APORT1CH24TO31,
      APORT3CH0TO7,
      APORT3CH8TO15,
      APORT3CH16TO23,
      APORT3CH24TO31)
     with Size => 4;
   for SCANINPUTSEL1_INPUT32TO39SEL_Field use
     (SCANINPUTSEL1_INPUT32TO39SEL_Field_Reset => 0,
      APORT1CH0TO7 => 4,
      APORT1CH8TO15 => 5,
      APORT1CH16TO23 => 6,
      APORT1CH24TO31 => 7,
      APORT3CH0TO7 => 12,
      APORT3CH8TO15 => 13,
      APORT3CH16TO23 => 14,
      APORT3CH24TO31 => 15);

   --  CSEN_INPUT40-47 Select
   type SCANINPUTSEL1_INPUT40TO47SEL_Field is
     (--  Reset value for the field
      SCANINPUTSEL1_INPUT40TO47SEL_Field_Reset,
      APORT1CH0TO7,
      APORT1CH8TO15,
      APORT1CH16TO23,
      APORT1CH24TO31,
      APORT3CH0TO7,
      APORT3CH8TO15,
      APORT3CH16TO23,
      APORT3CH24TO31)
     with Size => 4;
   for SCANINPUTSEL1_INPUT40TO47SEL_Field use
     (SCANINPUTSEL1_INPUT40TO47SEL_Field_Reset => 0,
      APORT1CH0TO7 => 4,
      APORT1CH8TO15 => 5,
      APORT1CH16TO23 => 6,
      APORT1CH24TO31 => 7,
      APORT3CH0TO7 => 12,
      APORT3CH8TO15 => 13,
      APORT3CH16TO23 => 14,
      APORT3CH24TO31 => 15);

   --  CSEN_INPUT48-55 Select
   type SCANINPUTSEL1_INPUT48TO55SEL_Field is
     (--  Reset value for the field
      SCANINPUTSEL1_INPUT48TO55SEL_Field_Reset,
      APORT1CH0TO7,
      APORT1CH8TO15,
      APORT1CH16TO23,
      APORT1CH24TO31,
      APORT3CH0TO7,
      APORT3CH8TO15,
      APORT3CH16TO23,
      APORT3CH24TO31)
     with Size => 4;
   for SCANINPUTSEL1_INPUT48TO55SEL_Field use
     (SCANINPUTSEL1_INPUT48TO55SEL_Field_Reset => 0,
      APORT1CH0TO7 => 4,
      APORT1CH8TO15 => 5,
      APORT1CH16TO23 => 6,
      APORT1CH24TO31 => 7,
      APORT3CH0TO7 => 12,
      APORT3CH8TO15 => 13,
      APORT3CH16TO23 => 14,
      APORT3CH24TO31 => 15);

   --  CSEN_INPUT56-63 Select
   type SCANINPUTSEL1_INPUT56TO63SEL_Field is
     (--  Reset value for the field
      SCANINPUTSEL1_INPUT56TO63SEL_Field_Reset,
      APORT1CH0TO7,
      APORT1CH8TO15,
      APORT1CH16TO23,
      APORT1CH24TO31,
      APORT3CH0TO7,
      APORT3CH8TO15,
      APORT3CH16TO23,
      APORT3CH24TO31)
     with Size => 4;
   for SCANINPUTSEL1_INPUT56TO63SEL_Field use
     (SCANINPUTSEL1_INPUT56TO63SEL_Field_Reset => 0,
      APORT1CH0TO7 => 4,
      APORT1CH8TO15 => 5,
      APORT1CH16TO23 => 6,
      APORT1CH24TO31 => 7,
      APORT3CH0TO7 => 12,
      APORT3CH8TO15 => 13,
      APORT3CH16TO23 => 14,
      APORT3CH24TO31 => 15);

   --  Scan Input Selection 1
   type SCANINPUTSEL1_Register is record
      --  CSEN_INPUT32-39 Select
      INPUT32TO39SEL : SCANINPUTSEL1_INPUT32TO39SEL_Field :=
                        SCANINPUTSEL1_INPUT32TO39SEL_Field_Reset;
      --  unspecified
      Reserved_4_7   : Interfaces.EFM32.UInt4 := 16#0#;
      --  CSEN_INPUT40-47 Select
      INPUT40TO47SEL : SCANINPUTSEL1_INPUT40TO47SEL_Field :=
                        SCANINPUTSEL1_INPUT40TO47SEL_Field_Reset;
      --  unspecified
      Reserved_12_15 : Interfaces.EFM32.UInt4 := 16#0#;
      --  CSEN_INPUT48-55 Select
      INPUT48TO55SEL : SCANINPUTSEL1_INPUT48TO55SEL_Field :=
                        SCANINPUTSEL1_INPUT48TO55SEL_Field_Reset;
      --  unspecified
      Reserved_20_23 : Interfaces.EFM32.UInt4 := 16#0#;
      --  CSEN_INPUT56-63 Select
      INPUT56TO63SEL : SCANINPUTSEL1_INPUT56TO63SEL_Field :=
                        SCANINPUTSEL1_INPUT56TO63SEL_Field_Reset;
      --  unspecified
      Reserved_28_31 : Interfaces.EFM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCANINPUTSEL1_Register use record
      INPUT32TO39SEL at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      INPUT40TO47SEL at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      INPUT48TO55SEL at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      INPUT56TO63SEL at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype APORTREQ_APORT1XREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT1YREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT2XREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT2YREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT3XREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT3YREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT4XREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT4YREQ_Field is Interfaces.EFM32.Bit;

   --  APORT Request Status
   type APORTREQ_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.EFM32.UInt2;
      --  Read-only. 1 If the Bus Connected to APORT2X is Requested
      APORT1XREQ     : APORTREQ_APORT1XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT1X is Requested
      APORT1YREQ     : APORTREQ_APORT1YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT2X is Requested
      APORT2XREQ     : APORTREQ_APORT2XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT2Y is Requested
      APORT2YREQ     : APORTREQ_APORT2YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT3X is Requested
      APORT3XREQ     : APORTREQ_APORT3XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT3Y is Requested
      APORT3YREQ     : APORTREQ_APORT3YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT4X is Requested
      APORT4XREQ     : APORTREQ_APORT4XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT4Y is Requested
      APORT4YREQ     : APORTREQ_APORT4YREQ_Field;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APORTREQ_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      APORT1XREQ     at 0 range 2 .. 2;
      APORT1YREQ     at 0 range 3 .. 3;
      APORT2XREQ     at 0 range 4 .. 4;
      APORT2YREQ     at 0 range 5 .. 5;
      APORT3XREQ     at 0 range 6 .. 6;
      APORT3YREQ     at 0 range 7 .. 7;
      APORT4XREQ     at 0 range 8 .. 8;
      APORT4YREQ     at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype APORTCONFLICT_APORT1XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT1YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT2XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT2YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT3XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT3YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT4XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT4YCONFLICT_Field is Interfaces.EFM32.Bit;

   --  APORT Request Conflict
   type APORTCONFLICT_Register is record
      --  unspecified
      Reserved_0_1    : Interfaces.EFM32.UInt2;
      --  Read-only. 1 If the Bus Connected to APORT1X is in Conflict With
      --  Another Peripheral
      APORT1XCONFLICT : APORTCONFLICT_APORT1XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT1Y is in Conflict With
      --  Another Peripheral
      APORT1YCONFLICT : APORTCONFLICT_APORT1YCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT2X is in Conflict With
      --  Another Peripheral
      APORT2XCONFLICT : APORTCONFLICT_APORT2XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT2Y is in Conflict With
      --  Another Peripheral
      APORT2YCONFLICT : APORTCONFLICT_APORT2YCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT3X is in Conflict With
      --  Another Peripheral
      APORT3XCONFLICT : APORTCONFLICT_APORT3XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT3Y is in Conflict With
      --  Another Peripheral
      APORT3YCONFLICT : APORTCONFLICT_APORT3YCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT4X is in Conflict With
      --  Another Peripheral
      APORT4XCONFLICT : APORTCONFLICT_APORT4XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT4Y is in Conflict With
      --  Another Peripheral
      APORT4YCONFLICT : APORTCONFLICT_APORT4YCONFLICT_Field;
      --  unspecified
      Reserved_10_31  : Interfaces.EFM32.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APORTCONFLICT_Register use record
      Reserved_0_1    at 0 range 0 .. 1;
      APORT1XCONFLICT at 0 range 2 .. 2;
      APORT1YCONFLICT at 0 range 3 .. 3;
      APORT2XCONFLICT at 0 range 4 .. 4;
      APORT2YCONFLICT at 0 range 5 .. 5;
      APORT3XCONFLICT at 0 range 6 .. 6;
      APORT3YCONFLICT at 0 range 7 .. 7;
      APORT4XCONFLICT at 0 range 8 .. 8;
      APORT4YCONFLICT at 0 range 9 .. 9;
      Reserved_10_31  at 0 range 10 .. 31;
   end record;

   subtype CMPTHR_CMPTHR_Field is Interfaces.EFM32.UInt16;

   --  Comparator Threshold
   type CMPTHR_Register is record
      --  Comparator Threshold.
      CMPTHR         : CMPTHR_CMPTHR_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPTHR_Register use record
      CMPTHR         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EMA_EMA_Field is Interfaces.EFM32.UInt22;

   --  Exponential Moving Average
   type EMA_Register is record
      --  Calculated Exponential Moving Average
      EMA            : EMA_EMA_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMA_Register use record
      EMA            at 0 range 0 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  EMA Sample Weight
   type EMACTRL_EMASAMPLE_Field is
     (--  EMA weight (N) is 1.
      W1,
      --  EMA weight (N) is 2.
      W2,
      --  EMA weight (N) is 4.
      W4,
      --  EMA weight (N) is 8.
      W8,
      --  EMA weight (N) is 16.
      W16,
      --  EMA weight (N) is 32.
      W32,
      --  EMA weight (N) is 64.
      W64)
     with Size => 3;
   for EMACTRL_EMASAMPLE_Field use
     (W1 => 0,
      W2 => 1,
      W4 => 2,
      W8 => 3,
      W16 => 4,
      W32 => 5,
      W64 => 6);

   --  Exponential Moving Average Control
   type EMACTRL_Register is record
      --  EMA Sample Weight
      EMASAMPLE     : EMACTRL_EMASAMPLE_Field := Interfaces.EFM32.CSEN.W1;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EMACTRL_Register use record
      EMASAMPLE     at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Single Channel Input Select
   type SINGLECTRL_SINGLESEL_Field is
     (--  Reset value for the field
      SINGLECTRL_SINGLESEL_Field_Reset,
      APORT1XCH0,
      APORT1YCH1,
      APORT1XCH2,
      APORT1YCH3,
      APORT1XCH4,
      APORT1YCH5,
      APORT1XCH6,
      APORT1YCH7,
      APORT1XCH8,
      APORT1YCH9,
      APORT1XCH10,
      APORT1YCH11,
      APORT1XCH12,
      APORT1YCH13,
      APORT1XCH14,
      APORT1YCH15,
      APORT1XCH16,
      APORT1YCH17,
      APORT1XCH18,
      APORT1YCH19,
      APORT1XCH20,
      APORT1YCH21,
      APORT1XCH22,
      APORT1YCH23,
      APORT1XCH24,
      APORT1YCH25,
      APORT1XCH26,
      APORT1YCH27,
      APORT1XCH28,
      APORT1YCH29,
      APORT1XCH30,
      APORT1YCH31,
      APORT3XCH0,
      APORT3YCH1,
      APORT3XCH2,
      APORT3YCH3,
      APORT3XCH4,
      APORT3YCH5,
      APORT3XCH6,
      APORT3YCH7,
      APORT3XCH8,
      APORT3YCH9,
      APORT3XCH10,
      APORT3YCH11,
      APORT3XCH12,
      APORT3YCH13,
      APORT3XCH14,
      APORT3YCH15,
      APORT3XCH16,
      APORT3YCH17,
      APORT3XCH18,
      APORT3YCH19,
      APORT3XCH20,
      APORT3YCH21,
      APORT3XCH22,
      APORT3YCH23,
      APORT3XCH24,
      APORT3YCH25,
      APORT3XCH26,
      APORT3YCH27,
      APORT3XCH28,
      APORT3YCH29,
      APORT3XCH30,
      APORT3YCH31)
     with Size => 7;
   for SINGLECTRL_SINGLESEL_Field use
     (SINGLECTRL_SINGLESEL_Field_Reset => 0,
      APORT1XCH0 => 32,
      APORT1YCH1 => 33,
      APORT1XCH2 => 34,
      APORT1YCH3 => 35,
      APORT1XCH4 => 36,
      APORT1YCH5 => 37,
      APORT1XCH6 => 38,
      APORT1YCH7 => 39,
      APORT1XCH8 => 40,
      APORT1YCH9 => 41,
      APORT1XCH10 => 42,
      APORT1YCH11 => 43,
      APORT1XCH12 => 44,
      APORT1YCH13 => 45,
      APORT1XCH14 => 46,
      APORT1YCH15 => 47,
      APORT1XCH16 => 48,
      APORT1YCH17 => 49,
      APORT1XCH18 => 50,
      APORT1YCH19 => 51,
      APORT1XCH20 => 52,
      APORT1YCH21 => 53,
      APORT1XCH22 => 54,
      APORT1YCH23 => 55,
      APORT1XCH24 => 56,
      APORT1YCH25 => 57,
      APORT1XCH26 => 58,
      APORT1YCH27 => 59,
      APORT1XCH28 => 60,
      APORT1YCH29 => 61,
      APORT1XCH30 => 62,
      APORT1YCH31 => 63,
      APORT3XCH0 => 96,
      APORT3YCH1 => 97,
      APORT3XCH2 => 98,
      APORT3YCH3 => 99,
      APORT3XCH4 => 100,
      APORT3YCH5 => 101,
      APORT3XCH6 => 102,
      APORT3YCH7 => 103,
      APORT3XCH8 => 104,
      APORT3YCH9 => 105,
      APORT3XCH10 => 106,
      APORT3YCH11 => 107,
      APORT3XCH12 => 108,
      APORT3YCH13 => 109,
      APORT3XCH14 => 110,
      APORT3YCH15 => 111,
      APORT3XCH16 => 112,
      APORT3YCH17 => 113,
      APORT3XCH18 => 114,
      APORT3YCH19 => 115,
      APORT3XCH20 => 116,
      APORT3YCH21 => 117,
      APORT3XCH22 => 118,
      APORT3YCH23 => 119,
      APORT3XCH24 => 120,
      APORT3YCH25 => 121,
      APORT3XCH26 => 122,
      APORT3YCH27 => 123,
      APORT3XCH28 => 124,
      APORT3YCH29 => 125,
      APORT3XCH30 => 126,
      APORT3YCH31 => 127);

   --  Single Conversion Control
   type SINGLECTRL_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.EFM32.UInt4 := 16#0#;
      --  Single Channel Input Select
      SINGLESEL      : SINGLECTRL_SINGLESEL_Field :=
                        SINGLECTRL_SINGLESEL_Field_Reset;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SINGLECTRL_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      SINGLESEL      at 0 range 4 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype DMBASELINE_BASELINEUP_Field is Interfaces.EFM32.UInt16;
   subtype DMBASELINE_BASELINEDN_Field is Interfaces.EFM32.UInt16;

   --  Delta Modulation Baseline
   type DMBASELINE_Register is record
      --  Delta Modulator Integrator Initial Value
      BASELINEUP : DMBASELINE_BASELINEUP_Field := 16#0#;
      --  Delta Modulator Integrator Initial Value
      BASELINEDN : DMBASELINE_BASELINEDN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMBASELINE_Register use record
      BASELINEUP at 0 range 0 .. 15;
      BASELINEDN at 0 range 16 .. 31;
   end record;

   subtype DMCFG_DMG_Field is Interfaces.EFM32.Byte;
   subtype DMCFG_DMR_Field is Interfaces.EFM32.UInt4;
   subtype DMCFG_DMCR_Field is Interfaces.EFM32.UInt4;

   --  Delta Modulator Conversion Resolution.
   type DMCFG_CRMODE_Field is
     (--  10-bit delta modulator
      DM10,
      --  12-bit delta modulator
      DM12,
      --  14-bit delta modulator
      DM14,
      --  16-bit delta modulator
      DM16)
     with Size => 2;
   for DMCFG_CRMODE_Field use
     (DM10 => 0,
      DM12 => 1,
      DM14 => 2,
      DM16 => 3);

   subtype DMCFG_DMGRDIS_Field is Interfaces.EFM32.Bit;

   --  Delta Modulation Configuration
   type DMCFG_Register is record
      --  Delta Modulator Gain Step
      DMG            : DMCFG_DMG_Field := 16#0#;
      --  Delta Modulator Gain Reduction Interval
      DMR            : DMCFG_DMR_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Delta Modulator Conversion Rate
      DMCR           : DMCFG_DMCR_Field := 16#0#;
      --  Delta Modulator Conversion Resolution.
      CRMODE         : DMCFG_CRMODE_Field := Interfaces.EFM32.CSEN.DM10;
      --  unspecified
      Reserved_22_27 : Interfaces.EFM32.UInt6 := 16#0#;
      --  Delta Modulation Gain Step Reduction Disable
      DMGRDIS        : DMCFG_DMGRDIS_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMCFG_Register use record
      DMG            at 0 range 0 .. 7;
      DMR            at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DMCR           at 0 range 16 .. 19;
      CRMODE         at 0 range 20 .. 21;
      Reserved_22_27 at 0 range 22 .. 27;
      DMGRDIS        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ANACTRL_IREFPROG_Field is Interfaces.EFM32.UInt3;
   subtype ANACTRL_IDACIREFS_Field is Interfaces.EFM32.UInt3;
   subtype ANACTRL_TRSTPROG_Field is Interfaces.EFM32.UInt3;

   --  Analog Control
   type ANACTRL_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.EFM32.UInt4 := 16#0#;
      --  Reference Current Control.
      IREFPROG       : ANACTRL_IREFPROG_Field := 16#7#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Current DAC and Reference Current Scale
      IDACIREFS      : ANACTRL_IDACIREFS_Field := 16#0#;
      --  unspecified
      Reserved_11_19 : Interfaces.EFM32.UInt9 := 16#0#;
      --  Reset Timing
      TRSTPROG       : ANACTRL_TRSTPROG_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ANACTRL_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      IREFPROG       at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      IDACIREFS      at 0 range 8 .. 10;
      Reserved_11_19 at 0 range 11 .. 19;
      TRSTPROG       at 0 range 20 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype IF_CMP_Field is Interfaces.EFM32.Bit;
   subtype IF_CONV_Field is Interfaces.EFM32.Bit;
   subtype IF_EOS_Field is Interfaces.EFM32.Bit;
   subtype IF_DMAOF_Field is Interfaces.EFM32.Bit;
   subtype IF_APORTCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag
   type IF_Register is record
      --  Read-only. Digital Comparator Interrupt Flag
      CMP           : IF_CMP_Field;
      --  Read-only. Conversion Done Interrupt Flag
      CONV          : IF_CONV_Field;
      --  Read-only. End of Scan Interrupt Flag.
      EOS           : IF_EOS_Field;
      --  Read-only. DMA Overflow Interrupt Flag.
      DMAOF         : IF_DMAOF_Field;
      --  Read-only. APORT Conflict Interrupt Flag
      APORTCONFLICT : IF_APORTCONFLICT_Field;
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      CMP           at 0 range 0 .. 0;
      CONV          at 0 range 1 .. 1;
      EOS           at 0 range 2 .. 2;
      DMAOF         at 0 range 3 .. 3;
      APORTCONFLICT at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype IFS_CMP_Field is Interfaces.EFM32.Bit;
   subtype IFS_CONV_Field is Interfaces.EFM32.Bit;
   subtype IFS_EOS_Field is Interfaces.EFM32.Bit;
   subtype IFS_DMAOF_Field is Interfaces.EFM32.Bit;
   subtype IFS_APORTCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set
   type IFS_Register is record
      --  Write-only. Set CMP Interrupt Flag
      CMP           : IFS_CMP_Field := 16#0#;
      --  Write-only. Set CONV Interrupt Flag
      CONV          : IFS_CONV_Field := 16#0#;
      --  Write-only. Set EOS Interrupt Flag
      EOS           : IFS_EOS_Field := 16#0#;
      --  Write-only. Set DMAOF Interrupt Flag
      DMAOF         : IFS_DMAOF_Field := 16#0#;
      --  Write-only. Set APORTCONFLICT Interrupt Flag
      APORTCONFLICT : IFS_APORTCONFLICT_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      CMP           at 0 range 0 .. 0;
      CONV          at 0 range 1 .. 1;
      EOS           at 0 range 2 .. 2;
      DMAOF         at 0 range 3 .. 3;
      APORTCONFLICT at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype IFC_CMP_Field is Interfaces.EFM32.Bit;
   subtype IFC_CONV_Field is Interfaces.EFM32.Bit;
   subtype IFC_EOS_Field is Interfaces.EFM32.Bit;
   subtype IFC_DMAOF_Field is Interfaces.EFM32.Bit;
   subtype IFC_APORTCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear
   type IFC_Register is record
      --  Write-only. Clear CMP Interrupt Flag
      CMP           : IFC_CMP_Field := 16#0#;
      --  Write-only. Clear CONV Interrupt Flag
      CONV          : IFC_CONV_Field := 16#0#;
      --  Write-only. Clear EOS Interrupt Flag
      EOS           : IFC_EOS_Field := 16#0#;
      --  Write-only. Clear DMAOF Interrupt Flag
      DMAOF         : IFC_DMAOF_Field := 16#0#;
      --  Write-only. Clear APORTCONFLICT Interrupt Flag
      APORTCONFLICT : IFC_APORTCONFLICT_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      CMP           at 0 range 0 .. 0;
      CONV          at 0 range 1 .. 1;
      EOS           at 0 range 2 .. 2;
      DMAOF         at 0 range 3 .. 3;
      APORTCONFLICT at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype IEN_CMP_Field is Interfaces.EFM32.Bit;
   subtype IEN_CONV_Field is Interfaces.EFM32.Bit;
   subtype IEN_EOS_Field is Interfaces.EFM32.Bit;
   subtype IEN_DMAOF_Field is Interfaces.EFM32.Bit;
   subtype IEN_APORTCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable
   type IEN_Register is record
      --  CMP Interrupt Enable
      CMP           : IEN_CMP_Field := 16#0#;
      --  CONV Interrupt Enable
      CONV          : IEN_CONV_Field := 16#0#;
      --  EOS Interrupt Enable
      EOS           : IEN_EOS_Field := 16#0#;
      --  DMAOF Interrupt Enable
      DMAOF         : IEN_DMAOF_Field := 16#0#;
      --  APORTCONFLICT Interrupt Enable
      APORTCONFLICT : IEN_APORTCONFLICT_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      CMP           at 0 range 0 .. 0;
      CONV          at 0 range 1 .. 1;
      EOS           at 0 range 2 .. 2;
      DMAOF         at 0 range 3 .. 3;
      APORTCONFLICT at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CSEN
   type CSEN_Peripheral is record
      --  Control
      CTRL          : aliased CTRL_Register;
      --  Timing Control
      TIMCTRL       : aliased TIMCTRL_Register;
      --  Command
      CMD           : aliased CMD_Register;
      --  Status
      STATUS        : aliased STATUS_Register;
      --  PRS Select
      PRSSEL        : aliased PRSSEL_Register;
      --  Output Data
      DATA          : aliased Interfaces.EFM32.UInt32;
      --  Scan Channel Mask 0
      SCANMASK0     : aliased Interfaces.EFM32.UInt32;
      --  Scan Input Selection 0
      SCANINPUTSEL0 : aliased SCANINPUTSEL0_Register;
      --  Scan Channel Mask 1
      SCANMASK1     : aliased Interfaces.EFM32.UInt32;
      --  Scan Input Selection 1
      SCANINPUTSEL1 : aliased SCANINPUTSEL1_Register;
      --  APORT Request Status
      APORTREQ      : aliased APORTREQ_Register;
      --  APORT Request Conflict
      APORTCONFLICT : aliased APORTCONFLICT_Register;
      --  Comparator Threshold
      CMPTHR        : aliased CMPTHR_Register;
      --  Exponential Moving Average
      EMA           : aliased EMA_Register;
      --  Exponential Moving Average Control
      EMACTRL       : aliased EMACTRL_Register;
      --  Single Conversion Control
      SINGLECTRL    : aliased SINGLECTRL_Register;
      --  Delta Modulation Baseline
      DMBASELINE    : aliased DMBASELINE_Register;
      --  Delta Modulation Configuration
      DMCFG         : aliased DMCFG_Register;
      --  Analog Control
      ANACTRL       : aliased ANACTRL_Register;
      --  Interrupt Flag
      IF_k          : aliased IF_Register;
      --  Interrupt Flag Set
      IFS           : aliased IFS_Register;
      --  Interrupt Flag Clear
      IFC           : aliased IFC_Register;
      --  Interrupt Enable
      IEN           : aliased IEN_Register;
   end record
     with Volatile;

   for CSEN_Peripheral use record
      CTRL          at 16#0# range 0 .. 31;
      TIMCTRL       at 16#4# range 0 .. 31;
      CMD           at 16#8# range 0 .. 31;
      STATUS        at 16#C# range 0 .. 31;
      PRSSEL        at 16#10# range 0 .. 31;
      DATA          at 16#14# range 0 .. 31;
      SCANMASK0     at 16#18# range 0 .. 31;
      SCANINPUTSEL0 at 16#1C# range 0 .. 31;
      SCANMASK1     at 16#20# range 0 .. 31;
      SCANINPUTSEL1 at 16#24# range 0 .. 31;
      APORTREQ      at 16#28# range 0 .. 31;
      APORTCONFLICT at 16#2C# range 0 .. 31;
      CMPTHR        at 16#30# range 0 .. 31;
      EMA           at 16#34# range 0 .. 31;
      EMACTRL       at 16#38# range 0 .. 31;
      SINGLECTRL    at 16#3C# range 0 .. 31;
      DMBASELINE    at 16#40# range 0 .. 31;
      DMCFG         at 16#44# range 0 .. 31;
      ANACTRL       at 16#48# range 0 .. 31;
      IF_k          at 16#54# range 0 .. 31;
      IFS           at 16#58# range 0 .. 31;
      IFC           at 16#5C# range 0 .. 31;
      IEN           at 16#60# range 0 .. 31;
   end record;

   --  CSEN
   CSEN_Periph : aliased CSEN_Peripheral
     with Import, Address => CSEN_Base;

end Interfaces.EFM32.CSEN;
