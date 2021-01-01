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

--  ADC1
package Interfaces.EFM32.ADC1 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Warm-up Mode
   type CTRL_WARMUPMODE_Field is
     (--  ADC is shut down after each conversion. 5us warmup time is used before each
--  conversion.
      NORMAL,
      --  ADC is kept in standby mode between conversions. 1us warmup time is used
--  before each conversion.
      KEEPINSTANDBY,
      --  ADC is kept in slow acquisition mode between conversions. 1us warmup time
--  is used before each conversion.
      KEEPINSLOWACC,
      --  ADC is kept on after conversions, allowing for continuous conversion.
      KEEPADCWARM)
     with Size => 2;
   for CTRL_WARMUPMODE_Field use
     (NORMAL => 0,
      KEEPINSTANDBY => 1,
      KEEPINSLOWACC => 2,
      KEEPADCWARM => 3);

   subtype CTRL_SINGLEDMAWU_Field is Interfaces.EFM32.Bit;
   subtype CTRL_SCANDMAWU_Field is Interfaces.EFM32.Bit;
   subtype CTRL_TAILGATE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ASYNCCLKEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ADCCLKMODE_Field is Interfaces.EFM32.Bit;

   --  Prescalar Setting for ADC Sample and Conversion Clock
   type CTRL_PRESC_Field is
     (NODIVISION)
     with Size => 7;
   for CTRL_PRESC_Field use
     (NODIVISION => 0);

   subtype CTRL_TIMEBASE_Field is Interfaces.EFM32.UInt7;

   --  Oversample Rate Select
   type CTRL_OVSRSEL_Field is
     (--  2 samples for each conversion result
      X2,
      --  4 samples for each conversion result
      X4,
      --  8 samples for each conversion result
      X8,
      --  16 samples for each conversion result
      X16,
      --  32 samples for each conversion result
      X32,
      --  64 samples for each conversion result
      X64,
      --  128 samples for each conversion result
      X128,
      --  256 samples for each conversion result
      X256,
      --  512 samples for each conversion result
      X512,
      --  1024 samples for each conversion result
      X1024,
      --  2048 samples for each conversion result
      X2048,
      --  4096 samples for each conversion result
      X4096)
     with Size => 4;
   for CTRL_OVSRSEL_Field use
     (X2 => 0,
      X4 => 1,
      X8 => 2,
      X16 => 3,
      X32 => 4,
      X64 => 5,
      X128 => 6,
      X256 => 7,
      X512 => 8,
      X1024 => 9,
      X2048 => 10,
      X4096 => 11);

   subtype CTRL_DBGHALT_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CHCONMODE_Field is Interfaces.EFM32.Bit;

   --  Channel Connect and Reference Warm Sel When ADC is IDLE
   type CTRL_CHCONREFWARMIDLE_Field is
     (--  Keep scan reference warm and APORT switches for first scan channel closed
--  if WARMUPMODE is not NORMAL
      PREFSCAN,
      --  Keep single reference warm and keep APORT switches for single channel
--  closed if WARMUPMODE is not NORMAL
      PREFSINGLE,
      --  Keep last used reference warm and keep APORT switches for corresponding
--  channel closed if WARMUPMODE is not NORMAL
      KEEPPREV)
     with Size => 2;
   for CTRL_CHCONREFWARMIDLE_Field use
     (PREFSCAN => 0,
      PREFSINGLE => 1,
      KEEPPREV => 2);

   --  Control Register
   type CTRL_Register is record
      --  Warm-up Mode
      WARMUPMODE       : CTRL_WARMUPMODE_Field :=
                          Interfaces.EFM32.ADC1.NORMAL;
      --  SINGLEFIFO DMA Wakeup
      SINGLEDMAWU      : CTRL_SINGLEDMAWU_Field := 16#0#;
      --  SCANFIFO DMA Wakeup
      SCANDMAWU        : CTRL_SCANDMAWU_Field := 16#0#;
      --  Conversion Tailgating
      TAILGATE         : CTRL_TAILGATE_Field := 16#0#;
      --  unspecified
      Reserved_5_5     : Interfaces.EFM32.Bit := 16#0#;
      --  Selects ASYNC CLK Enable Mode When ADCCLKMODE=1
      ASYNCCLKEN       : CTRL_ASYNCCLKEN_Field := 16#0#;
      --  ADC Clock Mode
      ADCCLKMODE       : CTRL_ADCCLKMODE_Field := 16#0#;
      --  Prescalar Setting for ADC Sample and Conversion Clock
      PRESC            : CTRL_PRESC_Field := Interfaces.EFM32.ADC1.NODIVISION;
      --  unspecified
      Reserved_15_15   : Interfaces.EFM32.Bit := 16#0#;
      --  1us Time Base
      TIMEBASE         : CTRL_TIMEBASE_Field := 16#1F#;
      --  unspecified
      Reserved_23_23   : Interfaces.EFM32.Bit := 16#0#;
      --  Oversample Rate Select
      OVSRSEL          : CTRL_OVSRSEL_Field := Interfaces.EFM32.ADC1.X2;
      --  Debug Mode Halt Enable
      DBGHALT          : CTRL_DBGHALT_Field := 16#0#;
      --  Channel Connect
      CHCONMODE        : CTRL_CHCONMODE_Field := 16#0#;
      --  Channel Connect and Reference Warm Sel When ADC is IDLE
      CHCONREFWARMIDLE : CTRL_CHCONREFWARMIDLE_Field :=
                          Interfaces.EFM32.ADC1.PREFSCAN;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      WARMUPMODE       at 0 range 0 .. 1;
      SINGLEDMAWU      at 0 range 2 .. 2;
      SCANDMAWU        at 0 range 3 .. 3;
      TAILGATE         at 0 range 4 .. 4;
      Reserved_5_5     at 0 range 5 .. 5;
      ASYNCCLKEN       at 0 range 6 .. 6;
      ADCCLKMODE       at 0 range 7 .. 7;
      PRESC            at 0 range 8 .. 14;
      Reserved_15_15   at 0 range 15 .. 15;
      TIMEBASE         at 0 range 16 .. 22;
      Reserved_23_23   at 0 range 23 .. 23;
      OVSRSEL          at 0 range 24 .. 27;
      DBGHALT          at 0 range 28 .. 28;
      CHCONMODE        at 0 range 29 .. 29;
      CHCONREFWARMIDLE at 0 range 30 .. 31;
   end record;

   subtype CMD_SINGLESTART_Field is Interfaces.EFM32.Bit;
   subtype CMD_SINGLESTOP_Field is Interfaces.EFM32.Bit;
   subtype CMD_SCANSTART_Field is Interfaces.EFM32.Bit;
   subtype CMD_SCANSTOP_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Single Channel Conversion Start
      SINGLESTART   : CMD_SINGLESTART_Field := 16#0#;
      --  Write-only. Single Channel Conversion Stop
      SINGLESTOP    : CMD_SINGLESTOP_Field := 16#0#;
      --  Write-only. Scan Sequence Start
      SCANSTART     : CMD_SCANSTART_Field := 16#0#;
      --  Write-only. Scan Sequence Stop
      SCANSTOP      : CMD_SCANSTOP_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      SINGLESTART   at 0 range 0 .. 0;
      SINGLESTOP    at 0 range 1 .. 1;
      SCANSTART     at 0 range 2 .. 2;
      SCANSTOP      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype STATUS_SINGLEACT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_SCANACT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_SCANPENDING_Field is Interfaces.EFM32.Bit;
   subtype STATUS_SINGLEREFWARM_Field is Interfaces.EFM32.Bit;
   subtype STATUS_SCANREFWARM_Field is Interfaces.EFM32.Bit;

   --  Programming Error Status
   type STATUS_PROGERR_Field is
     (BUSCONF,
      NEGSELCONF)
     with Size => 2;
   for STATUS_PROGERR_Field use
     (BUSCONF => 1,
      NEGSELCONF => 2);

   subtype STATUS_WARM_Field is Interfaces.EFM32.Bit;
   subtype STATUS_SINGLEDV_Field is Interfaces.EFM32.Bit;
   subtype STATUS_SCANDV_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. Single Channel Conversion Active
      SINGLEACT      : STATUS_SINGLEACT_Field;
      --  Read-only. Scan Conversion Active
      SCANACT        : STATUS_SCANACT_Field;
      --  Read-only. Scan Conversion Pending
      SCANPENDING    : STATUS_SCANPENDING_Field;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5;
      --  Read-only. Single Channel Reference Warmed Up
      SINGLEREFWARM  : STATUS_SINGLEREFWARM_Field;
      --  Read-only. Scan Reference Warmed Up
      SCANREFWARM    : STATUS_SCANREFWARM_Field;
      --  Read-only. Programming Error Status
      PROGERR        : STATUS_PROGERR_Field;
      --  Read-only. ADC Warmed Up
      WARM           : STATUS_WARM_Field;
      --  unspecified
      Reserved_13_15 : Interfaces.EFM32.UInt3;
      --  Read-only. Single Channel Data Valid
      SINGLEDV       : STATUS_SINGLEDV_Field;
      --  Read-only. Scan Data Valid
      SCANDV         : STATUS_SCANDV_Field;
      --  unspecified
      Reserved_18_31 : Interfaces.EFM32.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      SINGLEACT      at 0 range 0 .. 0;
      SCANACT        at 0 range 1 .. 1;
      SCANPENDING    at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SINGLEREFWARM  at 0 range 8 .. 8;
      SCANREFWARM    at 0 range 9 .. 9;
      PROGERR        at 0 range 10 .. 11;
      WARM           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      SINGLEDV       at 0 range 16 .. 16;
      SCANDV         at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype SINGLECTRL_REP_Field is Interfaces.EFM32.Bit;
   subtype SINGLECTRL_DIFF_Field is Interfaces.EFM32.Bit;
   subtype SINGLECTRL_ADJ_Field is Interfaces.EFM32.Bit;

   --  Single Channel Resolution Select
   type SINGLECTRL_RES_Field is
     (--  12-bit resolution.
      Val_12BIT,
      --  8-bit resolution.
      Val_8BIT,
      --  6-bit resolution.
      Val_6BIT,
      --  Oversampling enabled. Oversampling rate is set in OVSRSEL.
      OVS)
     with Size => 2;
   for SINGLECTRL_RES_Field use
     (Val_12BIT => 0,
      Val_8BIT => 1,
      Val_6BIT => 2,
      OVS => 3);

   --  Single Channel Reference Selection
   type SINGLECTRL_REF_Field is
     (--  VFS = 1.25V with internal VBGR reference
      Val_1V25,
      --  VFS = 2.5V with internal VBGR reference
      Val_2V5,
      --  VFS = AVDD with AVDD as reference source
      VDD,
      --  VFS = 5V with internal VBGR reference
      Val_5V,
      --  Single ended external reference
      EXTSINGLE,
      --  Differential external reference, 2x
      Val_2XEXTDIFF,
      --  VFS = 2xAVDD with AVDD as the reference source
      Val_2XVDD,
      --  Use SINGLECTRLX to configure reference
      CONF)
     with Size => 3;
   for SINGLECTRL_REF_Field use
     (Val_1V25 => 0,
      Val_2V5 => 1,
      VDD => 2,
      Val_5V => 3,
      EXTSINGLE => 4,
      Val_2XEXTDIFF => 5,
      Val_2XVDD => 6,
      CONF => 7);

   subtype SINGLECTRL_POSSEL_Field is Interfaces.EFM32.Byte;
   subtype SINGLECTRL_NEGSEL_Field is Interfaces.EFM32.Byte;

   --  Single Channel Acquisition Time
   type SINGLECTRL_AT_Field is
     (--  1 conversion clock cycle acquisition time for single channel
      Val_1CYCLE,
      --  2 conversion clock cycles acquisition time for single channel
      Val_2CYCLES,
      --  3 conversion clock cycles acquisition time for single channel
      Val_3CYCLES,
      --  4 conversion clock cycles acquisition time for single channel
      Val_4CYCLES,
      --  8 conversion clock cycles acquisition time for single channel
      Val_8CYCLES,
      --  16 conversion clock cycles acquisition time for single channel
      Val_16CYCLES,
      --  32 conversion clock cycles acquisition time for single channel
      Val_32CYCLES,
      --  64 conversion clock cycles acquisition time for single channel
      Val_64CYCLES,
      --  128 conversion clock cycles acquisition time for single channel
      Val_128CYCLES,
      --  256 conversion clock cycles acquisition time for single channel
      Val_256CYCLES)
     with Size => 4;
   for SINGLECTRL_AT_Field use
     (Val_1CYCLE => 0,
      Val_2CYCLES => 1,
      Val_3CYCLES => 2,
      Val_4CYCLES => 3,
      Val_8CYCLES => 4,
      Val_16CYCLES => 5,
      Val_32CYCLES => 6,
      Val_64CYCLES => 7,
      Val_128CYCLES => 8,
      Val_256CYCLES => 9);

   subtype SINGLECTRL_PRSEN_Field is Interfaces.EFM32.Bit;
   subtype SINGLECTRL_CMPEN_Field is Interfaces.EFM32.Bit;

   --  Single Channel Control Register
   type SINGLECTRL_Register is record
      --  Single Channel Repetitive Mode
      REP            : SINGLECTRL_REP_Field := 16#0#;
      --  Single Channel Differential Mode
      DIFF           : SINGLECTRL_DIFF_Field := 16#0#;
      --  Single Channel Result Adjustment
      ADJ            : SINGLECTRL_ADJ_Field := 16#0#;
      --  Single Channel Resolution Select
      RES            : SINGLECTRL_RES_Field :=
                        Interfaces.EFM32.ADC1.Val_12BIT;
      --  Single Channel Reference Selection
      REF            : SINGLECTRL_REF_Field := Interfaces.EFM32.ADC1.Val_1V25;
      --  Single Channel Positive Input Selection
      POSSEL         : SINGLECTRL_POSSEL_Field := 16#FF#;
      --  Single Channel Negative Input Selection
      NEGSEL         : SINGLECTRL_NEGSEL_Field := 16#FF#;
      --  Single Channel Acquisition Time
      AT_k           : SINGLECTRL_AT_Field :=
                        Interfaces.EFM32.ADC1.Val_1CYCLE;
      --  unspecified
      Reserved_28_28 : Interfaces.EFM32.Bit := 16#0#;
      --  Single Channel PRS Trigger Enable
      PRSEN          : SINGLECTRL_PRSEN_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : Interfaces.EFM32.Bit := 16#0#;
      --  Compare Logic Enable for Single Channel
      CMPEN          : SINGLECTRL_CMPEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SINGLECTRL_Register use record
      REP            at 0 range 0 .. 0;
      DIFF           at 0 range 1 .. 1;
      ADJ            at 0 range 2 .. 2;
      RES            at 0 range 3 .. 4;
      REF            at 0 range 5 .. 7;
      POSSEL         at 0 range 8 .. 15;
      NEGSEL         at 0 range 16 .. 23;
      AT_k           at 0 range 24 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      PRSEN          at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      CMPEN          at 0 range 31 .. 31;
   end record;

   --  Single Channel Reference Selection
   type SINGLECTRLX_VREFSEL_Field is
     (--  Internal 0.83V Bandgap reference
      VBGR,
      --  Scaled AVDD: AVDD*(the VREF attenuation factor)
      VDDXWATT,
      --  Scaled singled ended external Vref: ADCn_EXTP*(the VREF attenuation factor)
      VREFPWATT,
      --  Raw single ended external Vref: ADCn_EXTP
      VREFP,
      --  Special mode used to generate ENTROPY.
      VENTROPY,
      --  Scaled differential external Vref from : (ADCn_EXTP-ADCn_EXTN)*(the VREF
--  attenuation factor)
      VREFPNWATT,
      --  Raw differential external Vref from : (ADCn_EXTP-ADCn_EXTN)
      VREFPN,
      --  Internal Bandgap reference at low setting 0.78V
      VBGRLOW)
     with Size => 3;
   for SINGLECTRLX_VREFSEL_Field use
     (VBGR => 0,
      VDDXWATT => 1,
      VREFPWATT => 2,
      VREFP => 3,
      VENTROPY => 4,
      VREFPNWATT => 5,
      VREFPN => 6,
      VBGRLOW => 7);

   subtype SINGLECTRLX_VREFATTFIX_Field is Interfaces.EFM32.Bit;
   subtype SINGLECTRLX_VREFATT_Field is Interfaces.EFM32.UInt4;
   subtype SINGLECTRLX_VINATT_Field is Interfaces.EFM32.UInt4;
   subtype SINGLECTRLX_DVL_Field is Interfaces.EFM32.UInt2;
   subtype SINGLECTRLX_FIFOOFACT_Field is Interfaces.EFM32.Bit;
   subtype SINGLECTRLX_PRSMODE_Field is Interfaces.EFM32.Bit;

   --  Single Channel PRS Trigger Select
   type SINGLECTRLX_PRSSEL_Field is
     (--  PRS ch 0 triggers single channel
      PRSCH0,
      --  PRS ch 1 triggers single channel
      PRSCH1,
      --  PRS ch 2 triggers single channel
      PRSCH2,
      --  PRS ch 3 triggers single channel
      PRSCH3,
      --  PRS ch 4 triggers single channel
      PRSCH4,
      --  PRS ch 5 triggers single channel
      PRSCH5,
      --  PRS ch 6 triggers single channel
      PRSCH6,
      --  PRS ch 7 triggers single channel
      PRSCH7,
      --  PRS ch 8 triggers single channel
      PRSCH8,
      --  PRS ch 9 triggers single channel
      PRSCH9,
      --  PRS ch 10 triggers single channel
      PRSCH10,
      --  PRS ch 11 triggers single channel
      PRSCH11,
      --  PRS ch 12 triggers single channel
      PRSCH12,
      --  PRS ch 13 triggers single channel
      PRSCH13,
      --  PRS ch 14 triggers single channel
      PRSCH14,
      --  PRS ch 15 triggers single channel
      PRSCH15)
     with Size => 4;
   for SINGLECTRLX_PRSSEL_Field use
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

   subtype SINGLECTRLX_CONVSTARTDELAY_Field is Interfaces.EFM32.UInt5;
   subtype SINGLECTRLX_CONVSTARTDELAYEN_Field is Interfaces.EFM32.Bit;

   --  REPDELAY Select for SINGLE REP Mode
   type SINGLECTRLX_REPDELAY_Field is
     (--  No delay
      NODELAY,
      --  4 conversion clock cycles
      Val_4CYCLES,
      --  8 conversion clock cycles
      Val_8CYCLES,
      --  16 conversion clock cycles
      Val_16CYCLES,
      --  32 conversion clock cycles
      Val_32CYCLES,
      --  64 conversion clock cycles
      Val_64CYCLES,
      --  128 conversion clock cycles
      Val_128CYCLES,
      --  256 conversion clock cycles
      Val_256CYCLES)
     with Size => 3;
   for SINGLECTRLX_REPDELAY_Field use
     (NODELAY => 0,
      Val_4CYCLES => 1,
      Val_8CYCLES => 2,
      Val_16CYCLES => 3,
      Val_32CYCLES => 4,
      Val_64CYCLES => 5,
      Val_128CYCLES => 6,
      Val_256CYCLES => 7);

   --  Single Channel Control Register Continued
   type SINGLECTRLX_Register is record
      --  Single Channel Reference Selection
      VREFSEL          : SINGLECTRLX_VREFSEL_Field :=
                          Interfaces.EFM32.ADC1.VBGR;
      --  Enable Fixed Scaling on VREF
      VREFATTFIX       : SINGLECTRLX_VREFATTFIX_Field := 16#0#;
      --  Code for VREF Attenuation Factor When VREFSEL is 1, 2 or 5
      VREFATT          : SINGLECTRLX_VREFATT_Field := 16#0#;
      --  Code for VIN Attenuation Factor
      VINATT           : SINGLECTRLX_VINATT_Field := 16#0#;
      --  Single Channel DV Level Select
      DVL              : SINGLECTRLX_DVL_Field := 16#0#;
      --  Single Channel FIFO Overflow Action
      FIFOOFACT        : SINGLECTRLX_FIFOOFACT_Field := 16#0#;
      --  unspecified
      Reserved_15_15   : Interfaces.EFM32.Bit := 16#0#;
      --  Single Channel PRS Trigger Mode
      PRSMODE          : SINGLECTRLX_PRSMODE_Field := 16#0#;
      --  Single Channel PRS Trigger Select
      PRSSEL           : SINGLECTRLX_PRSSEL_Field :=
                          Interfaces.EFM32.ADC1.PRSCH0;
      --  unspecified
      Reserved_21_21   : Interfaces.EFM32.Bit := 16#0#;
      --  Delay Value for Next Conversion Start If CONVSTARTDELAYEN is Set
      CONVSTARTDELAY   : SINGLECTRLX_CONVSTARTDELAY_Field := 16#0#;
      --  Enable Delaying Next Conversion Start
      CONVSTARTDELAYEN : SINGLECTRLX_CONVSTARTDELAYEN_Field := 16#0#;
      --  unspecified
      Reserved_28_28   : Interfaces.EFM32.Bit := 16#0#;
      --  REPDELAY Select for SINGLE REP Mode
      REPDELAY         : SINGLECTRLX_REPDELAY_Field :=
                          Interfaces.EFM32.ADC1.NODELAY;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SINGLECTRLX_Register use record
      VREFSEL          at 0 range 0 .. 2;
      VREFATTFIX       at 0 range 3 .. 3;
      VREFATT          at 0 range 4 .. 7;
      VINATT           at 0 range 8 .. 11;
      DVL              at 0 range 12 .. 13;
      FIFOOFACT        at 0 range 14 .. 14;
      Reserved_15_15   at 0 range 15 .. 15;
      PRSMODE          at 0 range 16 .. 16;
      PRSSEL           at 0 range 17 .. 20;
      Reserved_21_21   at 0 range 21 .. 21;
      CONVSTARTDELAY   at 0 range 22 .. 26;
      CONVSTARTDELAYEN at 0 range 27 .. 27;
      Reserved_28_28   at 0 range 28 .. 28;
      REPDELAY         at 0 range 29 .. 31;
   end record;

   subtype SCANCTRL_REP_Field is Interfaces.EFM32.Bit;
   subtype SCANCTRL_DIFF_Field is Interfaces.EFM32.Bit;
   subtype SCANCTRL_ADJ_Field is Interfaces.EFM32.Bit;

   --  Scan Sequence Resolution Select
   type SCANCTRL_RES_Field is
     (--  12-bit resolution
      Val_12BIT,
      --  8-bit resolution
      Val_8BIT,
      --  6-bit resolution
      Val_6BIT,
      --  Oversampling enabled. Oversampling rate is set in OVSRSEL
      OVS)
     with Size => 2;
   for SCANCTRL_RES_Field use
     (Val_12BIT => 0,
      Val_8BIT => 1,
      Val_6BIT => 2,
      OVS => 3);

   --  Scan Sequence Reference Selection
   type SCANCTRL_REF_Field is
     (--  VFS = 1.25V with internal VBGR reference
      Val_1V25,
      --  VFS = 2.5V with internal VBGR reference
      Val_2V5,
      --  VFS = AVDD with AVDD as reference source
      VDD,
      --  VFS = 5V with internal VBGR reference
      Val_5V,
      --  Single ended external reference
      EXTSINGLE,
      --  Differential external reference, 2x
      Val_2XEXTDIFF,
      --  VFS=2xAVDD with AVDD as the reference source
      Val_2XVDD,
      --  Use SCANCTRLX to configure reference
      CONF)
     with Size => 3;
   for SCANCTRL_REF_Field use
     (Val_1V25 => 0,
      Val_2V5 => 1,
      VDD => 2,
      Val_5V => 3,
      EXTSINGLE => 4,
      Val_2XEXTDIFF => 5,
      Val_2XVDD => 6,
      CONF => 7);

   --  Scan Acquisition Time
   type SCANCTRL_AT_Field is
     (--  1 conversion clock cycle acquisition time for scan
      Val_1CYCLE,
      --  2 conversion clock cycles acquisition time for scan
      Val_2CYCLES,
      --  3 conversion clock cycles acquisition time for scan
      Val_3CYCLES,
      --  4 conversion clock cycles acquisition time for scan
      Val_4CYCLES,
      --  8 conversion clock cycles acquisition time for scan
      Val_8CYCLES,
      --  16 conversion clock cycles acquisition time for scan
      Val_16CYCLES,
      --  32 conversion clock cycles acquisition time for scan
      Val_32CYCLES,
      --  64 conversion clock cycles acquisition time for scan
      Val_64CYCLES,
      --  128 conversion clock cycles acquisition time for scan
      Val_128CYCLES,
      --  256 conversion clock cycles acquisition time for scan
      Val_256CYCLES)
     with Size => 4;
   for SCANCTRL_AT_Field use
     (Val_1CYCLE => 0,
      Val_2CYCLES => 1,
      Val_3CYCLES => 2,
      Val_4CYCLES => 3,
      Val_8CYCLES => 4,
      Val_16CYCLES => 5,
      Val_32CYCLES => 6,
      Val_64CYCLES => 7,
      Val_128CYCLES => 8,
      Val_256CYCLES => 9);

   subtype SCANCTRL_PRSEN_Field is Interfaces.EFM32.Bit;
   subtype SCANCTRL_CMPEN_Field is Interfaces.EFM32.Bit;

   --  Scan Control Register
   type SCANCTRL_Register is record
      --  Scan Sequence Repetitive Mode
      REP            : SCANCTRL_REP_Field := 16#0#;
      --  Scan Sequence Differential Mode
      DIFF           : SCANCTRL_DIFF_Field := 16#0#;
      --  Scan Sequence Result Adjustment
      ADJ            : SCANCTRL_ADJ_Field := 16#0#;
      --  Scan Sequence Resolution Select
      RES            : SCANCTRL_RES_Field := Interfaces.EFM32.ADC1.Val_12BIT;
      --  Scan Sequence Reference Selection
      REF            : SCANCTRL_REF_Field := Interfaces.EFM32.ADC1.Val_1V25;
      --  unspecified
      Reserved_8_23  : Interfaces.EFM32.UInt16 := 16#0#;
      --  Scan Acquisition Time
      AT_k           : SCANCTRL_AT_Field := Interfaces.EFM32.ADC1.Val_1CYCLE;
      --  unspecified
      Reserved_28_28 : Interfaces.EFM32.Bit := 16#0#;
      --  Scan Sequence PRS Trigger Enable
      PRSEN          : SCANCTRL_PRSEN_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : Interfaces.EFM32.Bit := 16#0#;
      --  Compare Logic Enable for Scan
      CMPEN          : SCANCTRL_CMPEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCANCTRL_Register use record
      REP            at 0 range 0 .. 0;
      DIFF           at 0 range 1 .. 1;
      ADJ            at 0 range 2 .. 2;
      RES            at 0 range 3 .. 4;
      REF            at 0 range 5 .. 7;
      Reserved_8_23  at 0 range 8 .. 23;
      AT_k           at 0 range 24 .. 27;
      Reserved_28_28 at 0 range 28 .. 28;
      PRSEN          at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      CMPEN          at 0 range 31 .. 31;
   end record;

   --  Scan Channel Reference Selection
   type SCANCTRLX_VREFSEL_Field is
     (--  Internal 0.83V Bandgap reference
      VBGR,
      --  Scaled AVDD: AVDD*(the VREF attenuation factor)
      VDDXWATT,
      --  Scaled singled ended external Vref: ADCn_EXTP*(the VREF attenuation factor)
      VREFPWATT,
      --  Raw single ended external Vref: ADCn_EXTP
      VREFP,
      --  Scaled differential external Vref from : (ADCn_EXTP-ADCn_EXTN)*(the VREF
--  attenuation factor)
      VREFPNWATT,
      --  Raw differential external Vref from : (ADCn_EXTP-ADCn_EXTN)
      VREFPN,
      --  Internal Bandgap reference at low setting 0.78V
      VBGRLOW)
     with Size => 3;
   for SCANCTRLX_VREFSEL_Field use
     (VBGR => 0,
      VDDXWATT => 1,
      VREFPWATT => 2,
      VREFP => 3,
      VREFPNWATT => 5,
      VREFPN => 6,
      VBGRLOW => 7);

   subtype SCANCTRLX_VREFATTFIX_Field is Interfaces.EFM32.Bit;
   subtype SCANCTRLX_VREFATT_Field is Interfaces.EFM32.UInt4;
   subtype SCANCTRLX_VINATT_Field is Interfaces.EFM32.UInt4;
   subtype SCANCTRLX_DVL_Field is Interfaces.EFM32.UInt2;
   subtype SCANCTRLX_FIFOOFACT_Field is Interfaces.EFM32.Bit;
   subtype SCANCTRLX_PRSMODE_Field is Interfaces.EFM32.Bit;

   --  Scan Sequence PRS Trigger Select
   type SCANCTRLX_PRSSEL_Field is
     (--  PRS ch 0 triggers scan sequence
      PRSCH0,
      --  PRS ch 1 triggers scan sequence
      PRSCH1,
      --  PRS ch 2 triggers scan sequence
      PRSCH2,
      --  PRS ch 3 triggers scan sequence
      PRSCH3,
      --  PRS ch 4 triggers scan sequence
      PRSCH4,
      --  PRS ch 5 triggers scan sequence
      PRSCH5,
      --  PRS ch 6 triggers scan sequence
      PRSCH6,
      --  PRS ch 7 triggers scan sequence
      PRSCH7,
      --  PRS ch 8 triggers scan sequence
      PRSCH8,
      --  PRS ch 9 triggers scan sequence
      PRSCH9,
      --  PRS ch 10 triggers scan sequence
      PRSCH10,
      --  PRS ch 11 triggers scan sequence
      PRSCH11,
      --  PRS ch 12 triggers scan sequence
      PRSCH12,
      --  PRS ch 13 triggers scan sequence
      PRSCH13,
      --  PRS ch 14 triggers scan sequence
      PRSCH14,
      --  PRS ch 15 triggers scan sequence
      PRSCH15)
     with Size => 4;
   for SCANCTRLX_PRSSEL_Field use
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

   subtype SCANCTRLX_CONVSTARTDELAY_Field is Interfaces.EFM32.UInt5;
   subtype SCANCTRLX_CONVSTARTDELAYEN_Field is Interfaces.EFM32.Bit;

   --  REPDELAY Select for SCAN REP Mode
   type SCANCTRLX_REPDELAY_Field is
     (--  No delay
      NODELAY,
      --  4 conversion clock cycles
      Val_4CYCLES,
      --  8 conversion clock cycles
      Val_8CYCLES,
      --  16 conversion clock cycles
      Val_16CYCLES,
      --  32 conversion clock cycles
      Val_32CYCLES,
      --  64 conversion clock cycles
      Val_64CYCLES,
      --  128 conversion clock cycles
      Val_128CYCLES,
      --  256 conversion clock cycles
      Val_256CYCLES)
     with Size => 3;
   for SCANCTRLX_REPDELAY_Field use
     (NODELAY => 0,
      Val_4CYCLES => 1,
      Val_8CYCLES => 2,
      Val_16CYCLES => 3,
      Val_32CYCLES => 4,
      Val_64CYCLES => 5,
      Val_128CYCLES => 6,
      Val_256CYCLES => 7);

   --  Scan Control Register Continued
   type SCANCTRLX_Register is record
      --  Scan Channel Reference Selection
      VREFSEL          : SCANCTRLX_VREFSEL_Field :=
                          Interfaces.EFM32.ADC1.VBGR;
      --  Enable Fixed Scaling on VREF
      VREFATTFIX       : SCANCTRLX_VREFATTFIX_Field := 16#0#;
      --  Code for VREF Attenuation Factor When VREFSEL is 1, 2 or 5
      VREFATT          : SCANCTRLX_VREFATT_Field := 16#0#;
      --  Code for VIN Attenuation Factor
      VINATT           : SCANCTRLX_VINATT_Field := 16#0#;
      --  Scan DV Level Select
      DVL              : SCANCTRLX_DVL_Field := 16#0#;
      --  Scan FIFO Overflow Action
      FIFOOFACT        : SCANCTRLX_FIFOOFACT_Field := 16#0#;
      --  unspecified
      Reserved_15_15   : Interfaces.EFM32.Bit := 16#0#;
      --  Scan PRS Trigger Mode
      PRSMODE          : SCANCTRLX_PRSMODE_Field := 16#0#;
      --  Scan Sequence PRS Trigger Select
      PRSSEL           : SCANCTRLX_PRSSEL_Field :=
                          Interfaces.EFM32.ADC1.PRSCH0;
      --  unspecified
      Reserved_21_21   : Interfaces.EFM32.Bit := 16#0#;
      --  Delay Next Conversion Start If CONVSTARTDELAYEN is Set
      CONVSTARTDELAY   : SCANCTRLX_CONVSTARTDELAY_Field := 16#0#;
      --  Enable Delaying Next Conversion Start
      CONVSTARTDELAYEN : SCANCTRLX_CONVSTARTDELAYEN_Field := 16#0#;
      --  unspecified
      Reserved_28_28   : Interfaces.EFM32.Bit := 16#0#;
      --  REPDELAY Select for SCAN REP Mode
      REPDELAY         : SCANCTRLX_REPDELAY_Field :=
                          Interfaces.EFM32.ADC1.NODELAY;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCANCTRLX_Register use record
      VREFSEL          at 0 range 0 .. 2;
      VREFATTFIX       at 0 range 3 .. 3;
      VREFATT          at 0 range 4 .. 7;
      VINATT           at 0 range 8 .. 11;
      DVL              at 0 range 12 .. 13;
      FIFOOFACT        at 0 range 14 .. 14;
      Reserved_15_15   at 0 range 15 .. 15;
      PRSMODE          at 0 range 16 .. 16;
      PRSSEL           at 0 range 17 .. 20;
      Reserved_21_21   at 0 range 21 .. 21;
      CONVSTARTDELAY   at 0 range 22 .. 26;
      CONVSTARTDELAYEN at 0 range 27 .. 27;
      Reserved_28_28   at 0 range 28 .. 28;
      REPDELAY         at 0 range 29 .. 31;
   end record;

   --  Inputs Chosen for ADCn_INPUT7-ADCn_INPUT0 as Referred in SCANMASK
   type SCANINPUTSEL_INPUT0TO7SEL_Field is
     (APORT0CH0TO7,
      APORT0CH8TO15,
      APORT1CH0TO7,
      APORT1CH8TO15,
      APORT1CH16TO23,
      APORT1CH24TO31,
      APORT2CH0TO7,
      APORT2CH8TO15,
      APORT2CH16TO23,
      APORT2CH24TO31,
      APORT3CH0TO7,
      APORT3CH8TO15,
      APORT3CH16TO23,
      APORT3CH24TO31,
      APORT4CH0TO7,
      APORT4CH8TO15,
      APORT4CH16TO23,
      APORT4CH24TO31)
     with Size => 5;
   for SCANINPUTSEL_INPUT0TO7SEL_Field use
     (APORT0CH0TO7 => 0,
      APORT0CH8TO15 => 1,
      APORT1CH0TO7 => 4,
      APORT1CH8TO15 => 5,
      APORT1CH16TO23 => 6,
      APORT1CH24TO31 => 7,
      APORT2CH0TO7 => 8,
      APORT2CH8TO15 => 9,
      APORT2CH16TO23 => 10,
      APORT2CH24TO31 => 11,
      APORT3CH0TO7 => 12,
      APORT3CH8TO15 => 13,
      APORT3CH16TO23 => 14,
      APORT3CH24TO31 => 15,
      APORT4CH0TO7 => 16,
      APORT4CH8TO15 => 17,
      APORT4CH16TO23 => 18,
      APORT4CH24TO31 => 19);

   --  Inputs Chosen for ADCn_INPUT8-ADCn_INPUT15 as Referred in SCANMASK
   type SCANINPUTSEL_INPUT8TO15SEL_Field is
     (APORT0CH0TO7,
      APORT0CH8TO15,
      APORT1CH0TO7,
      APORT1CH8TO15,
      APORT1CH16TO23,
      APORT1CH24TO31,
      APORT2CH0TO7,
      APORT2CH8TO15,
      APORT2CH16TO23,
      APORT2CH24TO31,
      APORT3CH0TO7,
      APORT3CH8TO15,
      APORT3CH16TO23,
      APORT3CH24TO31,
      APORT4CH0TO7,
      APORT4CH8TO15,
      APORT4CH16TO23,
      APORT4CH24TO31)
     with Size => 5;
   for SCANINPUTSEL_INPUT8TO15SEL_Field use
     (APORT0CH0TO7 => 0,
      APORT0CH8TO15 => 1,
      APORT1CH0TO7 => 4,
      APORT1CH8TO15 => 5,
      APORT1CH16TO23 => 6,
      APORT1CH24TO31 => 7,
      APORT2CH0TO7 => 8,
      APORT2CH8TO15 => 9,
      APORT2CH16TO23 => 10,
      APORT2CH24TO31 => 11,
      APORT3CH0TO7 => 12,
      APORT3CH8TO15 => 13,
      APORT3CH16TO23 => 14,
      APORT3CH24TO31 => 15,
      APORT4CH0TO7 => 16,
      APORT4CH8TO15 => 17,
      APORT4CH16TO23 => 18,
      APORT4CH24TO31 => 19);

   --  Inputs Chosen for ADCn_INPUT16-ADCn_INPUT23 as Referred in SCANMASK
   type SCANINPUTSEL_INPUT16TO23SEL_Field is
     (APORT0CH0TO7,
      APORT0CH8TO15,
      APORT1CH0TO7,
      APORT1CH8TO15,
      APORT1CH16TO23,
      APORT1CH24TO31,
      APORT2CH0TO7,
      APORT2CH8TO15,
      APORT2CH16TO23,
      APORT2CH24TO31,
      APORT3CH0TO7,
      APORT3CH8TO15,
      APORT3CH16TO23,
      APORT3CH24TO31,
      APORT4CH0TO7,
      APORT4CH8TO15,
      APORT4CH16TO23,
      APORT4CH24TO31)
     with Size => 5;
   for SCANINPUTSEL_INPUT16TO23SEL_Field use
     (APORT0CH0TO7 => 0,
      APORT0CH8TO15 => 1,
      APORT1CH0TO7 => 4,
      APORT1CH8TO15 => 5,
      APORT1CH16TO23 => 6,
      APORT1CH24TO31 => 7,
      APORT2CH0TO7 => 8,
      APORT2CH8TO15 => 9,
      APORT2CH16TO23 => 10,
      APORT2CH24TO31 => 11,
      APORT3CH0TO7 => 12,
      APORT3CH8TO15 => 13,
      APORT3CH16TO23 => 14,
      APORT3CH24TO31 => 15,
      APORT4CH0TO7 => 16,
      APORT4CH8TO15 => 17,
      APORT4CH16TO23 => 18,
      APORT4CH24TO31 => 19);

   --  Inputs Chosen for ADCn_INPUT24-ADCn_INPUT31 as Referred in SCANMASK
   type SCANINPUTSEL_INPUT24TO31SEL_Field is
     (APORT0CH0TO7,
      APORT0CH8TO15,
      APORT1CH0TO7,
      APORT1CH8TO15,
      APORT1CH16TO23,
      APORT1CH24TO31,
      APORT2CH0TO7,
      APORT2CH8TO15,
      APORT2CH16TO23,
      APORT2CH24TO31,
      APORT3CH0TO7,
      APORT3CH8TO15,
      APORT3CH16TO23,
      APORT3CH24TO31,
      APORT4CH0TO7,
      APORT4CH8TO15,
      APORT4CH16TO23,
      APORT4CH24TO31)
     with Size => 5;
   for SCANINPUTSEL_INPUT24TO31SEL_Field use
     (APORT0CH0TO7 => 0,
      APORT0CH8TO15 => 1,
      APORT1CH0TO7 => 4,
      APORT1CH8TO15 => 5,
      APORT1CH16TO23 => 6,
      APORT1CH24TO31 => 7,
      APORT2CH0TO7 => 8,
      APORT2CH8TO15 => 9,
      APORT2CH16TO23 => 10,
      APORT2CH24TO31 => 11,
      APORT3CH0TO7 => 12,
      APORT3CH8TO15 => 13,
      APORT3CH16TO23 => 14,
      APORT3CH24TO31 => 15,
      APORT4CH0TO7 => 16,
      APORT4CH8TO15 => 17,
      APORT4CH16TO23 => 18,
      APORT4CH24TO31 => 19);

   --  Input Selection Register for Scan Mode
   type SCANINPUTSEL_Register is record
      --  Inputs Chosen for ADCn_INPUT7-ADCn_INPUT0 as Referred in SCANMASK
      INPUT0TO7SEL   : SCANINPUTSEL_INPUT0TO7SEL_Field :=
                        Interfaces.EFM32.ADC1.APORT0CH0TO7;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Inputs Chosen for ADCn_INPUT8-ADCn_INPUT15 as Referred in SCANMASK
      INPUT8TO15SEL  : SCANINPUTSEL_INPUT8TO15SEL_Field :=
                        Interfaces.EFM32.ADC1.APORT0CH0TO7;
      --  unspecified
      Reserved_13_15 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Inputs Chosen for ADCn_INPUT16-ADCn_INPUT23 as Referred in SCANMASK
      INPUT16TO23SEL : SCANINPUTSEL_INPUT16TO23SEL_Field :=
                        Interfaces.EFM32.ADC1.APORT0CH0TO7;
      --  unspecified
      Reserved_21_23 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Inputs Chosen for ADCn_INPUT24-ADCn_INPUT31 as Referred in SCANMASK
      INPUT24TO31SEL : SCANINPUTSEL_INPUT24TO31SEL_Field :=
                        Interfaces.EFM32.ADC1.APORT0CH0TO7;
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCANINPUTSEL_Register use record
      INPUT0TO7SEL   at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      INPUT8TO15SEL  at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      INPUT16TO23SEL at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      INPUT24TO31SEL at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Negative Input Select Register for ADCn_INPUT0 in Differential Scan Mode
   type SCANNEGSEL_INPUT0NEGSEL_Field is
     (--  Selects ADCn_INPUT1 as negative channel input
      INPUT1,
      --  Selects ADCn_INPUT3 as negative channel input
      INPUT3,
      --  Selects ADCn_INPUT5 as negative channel input
      INPUT5,
      --  Selects ADCn_INPUT7 as negative channel input
      INPUT7)
     with Size => 2;
   for SCANNEGSEL_INPUT0NEGSEL_Field use
     (INPUT1 => 0,
      INPUT3 => 1,
      INPUT5 => 2,
      INPUT7 => 3);

   --  Negative Input Select Register for ADCn_INPUT2 in Differential Scan Mode
   type SCANNEGSEL_INPUT2NEGSEL_Field is
     (--  Selects ADCn_INPUT1 as negative channel input
      INPUT1,
      --  Selects ADCn_INPUT3 as negative channel input
      INPUT3,
      --  Selects ADCn_INPUT5 as negative channel input
      INPUT5,
      --  Selects ADCn_INPUT7 as negative channel input
      INPUT7)
     with Size => 2;
   for SCANNEGSEL_INPUT2NEGSEL_Field use
     (INPUT1 => 0,
      INPUT3 => 1,
      INPUT5 => 2,
      INPUT7 => 3);

   --  Negative Input Select Register for ADCn_INPUT4 in Differential Scan Mode
   type SCANNEGSEL_INPUT4NEGSEL_Field is
     (--  Selects ADCn_INPUT1 as negative channel input
      INPUT1,
      --  Selects ADCn_INPUT3 as negative channel input
      INPUT3,
      --  Selects ADCn_INPUT5 as negative channel input
      INPUT5,
      --  Selects ADCn_INPUT7 as negative channel input
      INPUT7)
     with Size => 2;
   for SCANNEGSEL_INPUT4NEGSEL_Field use
     (INPUT1 => 0,
      INPUT3 => 1,
      INPUT5 => 2,
      INPUT7 => 3);

   --  Negative Input Select Register for ADCn_INPUT1 in Differential Scan Mode
   type SCANNEGSEL_INPUT6NEGSEL_Field is
     (--  Selects ADCn_INPUT1 as negative channel input
      INPUT1,
      --  Selects ADCn_INPUT3 as negative channel input
      INPUT3,
      --  Selects ADCn_INPUT5 as negative channel input
      INPUT5,
      --  Selects ADCn_INPUT7 as negative channel input
      INPUT7)
     with Size => 2;
   for SCANNEGSEL_INPUT6NEGSEL_Field use
     (INPUT1 => 0,
      INPUT3 => 1,
      INPUT5 => 2,
      INPUT7 => 3);

   --  Negative Input Select Register for ADCn_INPUT9 in Differential Scan Mode
   type SCANNEGSEL_INPUT9NEGSEL_Field is
     (--  Selects ADCn_INPUT8 as negative channel input
      INPUT8,
      --  Selects ADCn_INPUT10 as negative channel input
      INPUT10,
      --  Selects ADCn_INPUT12 as negative channel input
      INPUT12,
      --  Selects ADCn_INPUT14 as negative channel input
      INPUT14)
     with Size => 2;
   for SCANNEGSEL_INPUT9NEGSEL_Field use
     (INPUT8 => 0,
      INPUT10 => 1,
      INPUT12 => 2,
      INPUT14 => 3);

   --  Negative Input Select Register for ADCn_INPUT11 in Differential Scan
   --  Mode
   type SCANNEGSEL_INPUT11NEGSEL_Field is
     (--  Selects ADCn_INPUT8 as negative channel input
      INPUT8,
      --  Selects ADCn_INPUT10 as negative channel input
      INPUT10,
      --  Selects ADCn_INPUT12 as negative channel input
      INPUT12,
      --  Selects ADCn_INPUT14 as negative channel input
      INPUT14)
     with Size => 2;
   for SCANNEGSEL_INPUT11NEGSEL_Field use
     (INPUT8 => 0,
      INPUT10 => 1,
      INPUT12 => 2,
      INPUT14 => 3);

   --  Negative Input Select Register for ADCn_INPUT13 in Differential Scan
   --  Mode
   type SCANNEGSEL_INPUT13NEGSEL_Field is
     (--  Selects ADCn_INPUT8 as negative channel input
      INPUT8,
      --  Selects ADCn_INPUT10 as negative channel input
      INPUT10,
      --  Selects ADCn_INPUT12 as negative channel input
      INPUT12,
      --  Selects ADCn_INPUT14 as negative channel input
      INPUT14)
     with Size => 2;
   for SCANNEGSEL_INPUT13NEGSEL_Field use
     (INPUT8 => 0,
      INPUT10 => 1,
      INPUT12 => 2,
      INPUT14 => 3);

   --  Negative Input Select Register for ADCn_INPUT15 in Differential Scan
   --  Mode
   type SCANNEGSEL_INPUT15NEGSEL_Field is
     (--  Selects ADCn_INPUT8 as negative channel input
      INPUT8,
      --  Selects ADCn_INPUT10 as negative channel input
      INPUT10,
      --  Selects ADCn_INPUT12 as negative channel input
      INPUT12,
      --  Selects ADCn_INPUT14 as negative channel input
      INPUT14)
     with Size => 2;
   for SCANNEGSEL_INPUT15NEGSEL_Field use
     (INPUT8 => 0,
      INPUT10 => 1,
      INPUT12 => 2,
      INPUT14 => 3);

   --  Negative Input Select Register for Scan
   type SCANNEGSEL_Register is record
      --  Negative Input Select Register for ADCn_INPUT0 in Differential Scan
      --  Mode
      INPUT0NEGSEL   : SCANNEGSEL_INPUT0NEGSEL_Field :=
                        Interfaces.EFM32.ADC1.INPUT1;
      --  Negative Input Select Register for ADCn_INPUT2 in Differential Scan
      --  Mode
      INPUT2NEGSEL   : SCANNEGSEL_INPUT2NEGSEL_Field :=
                        Interfaces.EFM32.ADC1.INPUT3;
      --  Negative Input Select Register for ADCn_INPUT4 in Differential Scan
      --  Mode
      INPUT4NEGSEL   : SCANNEGSEL_INPUT4NEGSEL_Field :=
                        Interfaces.EFM32.ADC1.INPUT5;
      --  Negative Input Select Register for ADCn_INPUT1 in Differential Scan
      --  Mode
      INPUT6NEGSEL   : SCANNEGSEL_INPUT6NEGSEL_Field :=
                        Interfaces.EFM32.ADC1.INPUT7;
      --  Negative Input Select Register for ADCn_INPUT9 in Differential Scan
      --  Mode
      INPUT9NEGSEL   : SCANNEGSEL_INPUT9NEGSEL_Field :=
                        Interfaces.EFM32.ADC1.INPUT10;
      --  Negative Input Select Register for ADCn_INPUT11 in Differential Scan
      --  Mode
      INPUT11NEGSEL  : SCANNEGSEL_INPUT11NEGSEL_Field :=
                        Interfaces.EFM32.ADC1.INPUT12;
      --  Negative Input Select Register for ADCn_INPUT13 in Differential Scan
      --  Mode
      INPUT13NEGSEL  : SCANNEGSEL_INPUT13NEGSEL_Field :=
                        Interfaces.EFM32.ADC1.INPUT14;
      --  Negative Input Select Register for ADCn_INPUT15 in Differential Scan
      --  Mode
      INPUT15NEGSEL  : SCANNEGSEL_INPUT15NEGSEL_Field :=
                        Interfaces.EFM32.ADC1.INPUT8;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCANNEGSEL_Register use record
      INPUT0NEGSEL   at 0 range 0 .. 1;
      INPUT2NEGSEL   at 0 range 2 .. 3;
      INPUT4NEGSEL   at 0 range 4 .. 5;
      INPUT6NEGSEL   at 0 range 6 .. 7;
      INPUT9NEGSEL   at 0 range 8 .. 9;
      INPUT11NEGSEL  at 0 range 10 .. 11;
      INPUT13NEGSEL  at 0 range 12 .. 13;
      INPUT15NEGSEL  at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMPTHR_ADLT_Field is Interfaces.EFM32.UInt16;
   subtype CMPTHR_ADGT_Field is Interfaces.EFM32.UInt16;

   --  Compare Threshold Register
   type CMPTHR_Register is record
      --  Less Than Compare Threshold
      ADLT : CMPTHR_ADLT_Field := 16#0#;
      --  Greater Than Compare Threshold
      ADGT : CMPTHR_ADGT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMPTHR_Register use record
      ADLT at 0 range 0 .. 15;
      ADGT at 0 range 16 .. 31;
   end record;

   --  Bias Programming Value of Analog ADC Block
   type BIASPROG_ADCBIASPROG_Field is
     (--  Normal power (use for 1Msps operation)
      NORMAL,
      --  Scaling bias to 1/2
      SCALE2,
      --  Scaling bias to 1/4
      SCALE4,
      --  Scaling bias to 1/8
      SCALE8,
      --  Scaling bias to 1/16
      SCALE16,
      --  Scaling bias to 1/32
      SCALE32)
     with Size => 4;
   for BIASPROG_ADCBIASPROG_Field use
     (NORMAL => 0,
      SCALE2 => 4,
      SCALE4 => 8,
      SCALE8 => 12,
      SCALE16 => 14,
      SCALE32 => 15);

   subtype BIASPROG_VFAULTCLR_Field is Interfaces.EFM32.Bit;
   subtype BIASPROG_GPBIASACC_Field is Interfaces.EFM32.Bit;

   --  Bias Programming Register for Various Analog Blocks Used in ADC
   --  Operation
   type BIASPROG_Register is record
      --  Bias Programming Value of Analog ADC Block
      ADCBIASPROG    : BIASPROG_ADCBIASPROG_Field :=
                        Interfaces.EFM32.ADC1.NORMAL;
      --  unspecified
      Reserved_4_11  : Interfaces.EFM32.Byte := 16#0#;
      --  Clear VREFOF Flag
      VFAULTCLR      : BIASPROG_VFAULTCLR_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Accuracy Setting for the System Bias During ADC Operation
      GPBIASACC      : BIASPROG_GPBIASACC_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BIASPROG_Register use record
      ADCBIASPROG    at 0 range 0 .. 3;
      Reserved_4_11  at 0 range 4 .. 11;
      VFAULTCLR      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      GPBIASACC      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype CAL_SINGLEOFFSET_Field is Interfaces.EFM32.UInt4;
   subtype CAL_SINGLEOFFSETINV_Field is Interfaces.EFM32.UInt4;
   subtype CAL_SINGLEGAIN_Field is Interfaces.EFM32.UInt7;
   subtype CAL_OFFSETINVMODE_Field is Interfaces.EFM32.Bit;
   subtype CAL_SCANOFFSET_Field is Interfaces.EFM32.UInt4;
   subtype CAL_SCANOFFSETINV_Field is Interfaces.EFM32.UInt4;
   subtype CAL_SCANGAIN_Field is Interfaces.EFM32.UInt7;
   subtype CAL_CALEN_Field is Interfaces.EFM32.Bit;

   --  Calibration Register
   type CAL_Register is record
      --  Single Mode Offset Calibration Value for Differential or Positive
      --  Single-ended Mode
      SINGLEOFFSET    : CAL_SINGLEOFFSET_Field := 16#8#;
      --  Single Mode Offset Calibration Value for Negative Single-ended Mode
      SINGLEOFFSETINV : CAL_SINGLEOFFSETINV_Field := 16#7#;
      --  Single Mode Gain Calibration Value
      SINGLEGAIN      : CAL_SINGLEGAIN_Field := 16#40#;
      --  Negative Single-ended Offset Calibration is Enabled
      OFFSETINVMODE   : CAL_OFFSETINVMODE_Field := 16#0#;
      --  Scan Mode Offset Calibration Value for Differential or Positive
      --  Single-ended Mode
      SCANOFFSET      : CAL_SCANOFFSET_Field := 16#8#;
      --  Scan Mode Offset Calibration Value for Negative Single-ended Mode
      SCANOFFSETINV   : CAL_SCANOFFSETINV_Field := 16#7#;
      --  Scan Mode Gain Calibration Value
      SCANGAIN        : CAL_SCANGAIN_Field := 16#40#;
      --  Calibration Mode is Enabled
      CALEN           : CAL_CALEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAL_Register use record
      SINGLEOFFSET    at 0 range 0 .. 3;
      SINGLEOFFSETINV at 0 range 4 .. 7;
      SINGLEGAIN      at 0 range 8 .. 14;
      OFFSETINVMODE   at 0 range 15 .. 15;
      SCANOFFSET      at 0 range 16 .. 19;
      SCANOFFSETINV   at 0 range 20 .. 23;
      SCANGAIN        at 0 range 24 .. 30;
      CALEN           at 0 range 31 .. 31;
   end record;

   subtype IF_SINGLE_Field is Interfaces.EFM32.Bit;
   subtype IF_SCAN_Field is Interfaces.EFM32.Bit;
   subtype IF_SINGLEOF_Field is Interfaces.EFM32.Bit;
   subtype IF_SCANOF_Field is Interfaces.EFM32.Bit;
   subtype IF_SINGLEUF_Field is Interfaces.EFM32.Bit;
   subtype IF_SCANUF_Field is Interfaces.EFM32.Bit;
   subtype IF_SINGLECMP_Field is Interfaces.EFM32.Bit;
   subtype IF_SCANCMP_Field is Interfaces.EFM32.Bit;
   subtype IF_VREFOV_Field is Interfaces.EFM32.Bit;
   subtype IF_PROGERR_Field is Interfaces.EFM32.Bit;
   subtype IF_SCANEXTPEND_Field is Interfaces.EFM32.Bit;
   subtype IF_SCANPEND_Field is Interfaces.EFM32.Bit;
   subtype IF_PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IF_EM23ERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. Single Conversion Complete Interrupt Flag
      SINGLE         : IF_SINGLE_Field;
      --  Read-only. Scan Conversion Complete Interrupt Flag
      SCAN           : IF_SCAN_Field;
      --  unspecified
      Reserved_2_7   : Interfaces.EFM32.UInt6;
      --  Read-only. Single FIFO Overflow Interrupt Flag
      SINGLEOF       : IF_SINGLEOF_Field;
      --  Read-only. Scan FIFO Overflow Interrupt Flag
      SCANOF         : IF_SCANOF_Field;
      --  Read-only. Single FIFO Underflow Interrupt Flag
      SINGLEUF       : IF_SINGLEUF_Field;
      --  Read-only. Scan FIFO Underflow Interrupt Flag
      SCANUF         : IF_SCANUF_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.EFM32.UInt4;
      --  Read-only. Single Result Compare Match Interrupt Flag
      SINGLECMP      : IF_SINGLECMP_Field;
      --  Read-only. Scan Result Compare Match Interrupt Flag
      SCANCMP        : IF_SCANCMP_Field;
      --  unspecified
      Reserved_18_23 : Interfaces.EFM32.UInt6;
      --  Read-only. VREF Over Voltage Interrupt Flag
      VREFOV         : IF_VREFOV_Field;
      --  Read-only. Programming Error Interrupt Flag
      PROGERR        : IF_PROGERR_Field;
      --  Read-only. External Scan Trigger Pending Flag
      SCANEXTPEND    : IF_SCANEXTPEND_Field;
      --  Read-only. Scan Trigger Pending Flag
      SCANPEND       : IF_SCANPEND_Field;
      --  Read-only. PRS Timed Mode Error Flag
      PRSTIMEDERR    : IF_PRSTIMEDERR_Field;
      --  Read-only. EM23 Entry Error Flag
      EM23ERR        : IF_EM23ERR_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      SINGLE         at 0 range 0 .. 0;
      SCAN           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      SINGLEOF       at 0 range 8 .. 8;
      SCANOF         at 0 range 9 .. 9;
      SINGLEUF       at 0 range 10 .. 10;
      SCANUF         at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SINGLECMP      at 0 range 16 .. 16;
      SCANCMP        at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      VREFOV         at 0 range 24 .. 24;
      PROGERR        at 0 range 25 .. 25;
      SCANEXTPEND    at 0 range 26 .. 26;
      SCANPEND       at 0 range 27 .. 27;
      PRSTIMEDERR    at 0 range 28 .. 28;
      EM23ERR        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype IFS_SINGLEOF_Field is Interfaces.EFM32.Bit;
   subtype IFS_SCANOF_Field is Interfaces.EFM32.Bit;
   subtype IFS_SINGLEUF_Field is Interfaces.EFM32.Bit;
   subtype IFS_SCANUF_Field is Interfaces.EFM32.Bit;
   subtype IFS_SINGLECMP_Field is Interfaces.EFM32.Bit;
   subtype IFS_SCANCMP_Field is Interfaces.EFM32.Bit;
   subtype IFS_VREFOV_Field is Interfaces.EFM32.Bit;
   subtype IFS_PROGERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_SCANEXTPEND_Field is Interfaces.EFM32.Bit;
   subtype IFS_SCANPEND_Field is Interfaces.EFM32.Bit;
   subtype IFS_PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_EM23ERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.EFM32.Byte := 16#0#;
      --  Write-only. Set SINGLEOF Interrupt Flag
      SINGLEOF       : IFS_SINGLEOF_Field := 16#0#;
      --  Write-only. Set SCANOF Interrupt Flag
      SCANOF         : IFS_SCANOF_Field := 16#0#;
      --  Write-only. Set SINGLEUF Interrupt Flag
      SINGLEUF       : IFS_SINGLEUF_Field := 16#0#;
      --  Write-only. Set SCANUF Interrupt Flag
      SCANUF         : IFS_SCANUF_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Write-only. Set SINGLECMP Interrupt Flag
      SINGLECMP      : IFS_SINGLECMP_Field := 16#0#;
      --  Write-only. Set SCANCMP Interrupt Flag
      SCANCMP        : IFS_SCANCMP_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : Interfaces.EFM32.UInt6 := 16#0#;
      --  Write-only. Set VREFOV Interrupt Flag
      VREFOV         : IFS_VREFOV_Field := 16#0#;
      --  Write-only. Set PROGERR Interrupt Flag
      PROGERR        : IFS_PROGERR_Field := 16#0#;
      --  Write-only. Set SCANEXTPEND Interrupt Flag
      SCANEXTPEND    : IFS_SCANEXTPEND_Field := 16#0#;
      --  Write-only. Set SCANPEND Interrupt Flag
      SCANPEND       : IFS_SCANPEND_Field := 16#0#;
      --  Write-only. Set PRSTIMEDERR Interrupt Flag
      PRSTIMEDERR    : IFS_PRSTIMEDERR_Field := 16#0#;
      --  Write-only. Set EM23ERR Interrupt Flag
      EM23ERR        : IFS_EM23ERR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SINGLEOF       at 0 range 8 .. 8;
      SCANOF         at 0 range 9 .. 9;
      SINGLEUF       at 0 range 10 .. 10;
      SCANUF         at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SINGLECMP      at 0 range 16 .. 16;
      SCANCMP        at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      VREFOV         at 0 range 24 .. 24;
      PROGERR        at 0 range 25 .. 25;
      SCANEXTPEND    at 0 range 26 .. 26;
      SCANPEND       at 0 range 27 .. 27;
      PRSTIMEDERR    at 0 range 28 .. 28;
      EM23ERR        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype IFC_SINGLEOF_Field is Interfaces.EFM32.Bit;
   subtype IFC_SCANOF_Field is Interfaces.EFM32.Bit;
   subtype IFC_SINGLEUF_Field is Interfaces.EFM32.Bit;
   subtype IFC_SCANUF_Field is Interfaces.EFM32.Bit;
   subtype IFC_SINGLECMP_Field is Interfaces.EFM32.Bit;
   subtype IFC_SCANCMP_Field is Interfaces.EFM32.Bit;
   subtype IFC_VREFOV_Field is Interfaces.EFM32.Bit;
   subtype IFC_PROGERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_SCANEXTPEND_Field is Interfaces.EFM32.Bit;
   subtype IFC_SCANPEND_Field is Interfaces.EFM32.Bit;
   subtype IFC_PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_EM23ERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.EFM32.Byte := 16#0#;
      --  Write-only. Clear SINGLEOF Interrupt Flag
      SINGLEOF       : IFC_SINGLEOF_Field := 16#0#;
      --  Write-only. Clear SCANOF Interrupt Flag
      SCANOF         : IFC_SCANOF_Field := 16#0#;
      --  Write-only. Clear SINGLEUF Interrupt Flag
      SINGLEUF       : IFC_SINGLEUF_Field := 16#0#;
      --  Write-only. Clear SCANUF Interrupt Flag
      SCANUF         : IFC_SCANUF_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Write-only. Clear SINGLECMP Interrupt Flag
      SINGLECMP      : IFC_SINGLECMP_Field := 16#0#;
      --  Write-only. Clear SCANCMP Interrupt Flag
      SCANCMP        : IFC_SCANCMP_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : Interfaces.EFM32.UInt6 := 16#0#;
      --  Write-only. Clear VREFOV Interrupt Flag
      VREFOV         : IFC_VREFOV_Field := 16#0#;
      --  Write-only. Clear PROGERR Interrupt Flag
      PROGERR        : IFC_PROGERR_Field := 16#0#;
      --  Write-only. Clear SCANEXTPEND Interrupt Flag
      SCANEXTPEND    : IFC_SCANEXTPEND_Field := 16#0#;
      --  Write-only. Clear SCANPEND Interrupt Flag
      SCANPEND       : IFC_SCANPEND_Field := 16#0#;
      --  Write-only. Clear PRSTIMEDERR Interrupt Flag
      PRSTIMEDERR    : IFC_PRSTIMEDERR_Field := 16#0#;
      --  Write-only. Clear EM23ERR Interrupt Flag
      EM23ERR        : IFC_EM23ERR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      SINGLEOF       at 0 range 8 .. 8;
      SCANOF         at 0 range 9 .. 9;
      SINGLEUF       at 0 range 10 .. 10;
      SCANUF         at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SINGLECMP      at 0 range 16 .. 16;
      SCANCMP        at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      VREFOV         at 0 range 24 .. 24;
      PROGERR        at 0 range 25 .. 25;
      SCANEXTPEND    at 0 range 26 .. 26;
      SCANPEND       at 0 range 27 .. 27;
      PRSTIMEDERR    at 0 range 28 .. 28;
      EM23ERR        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype IEN_SINGLE_Field is Interfaces.EFM32.Bit;
   subtype IEN_SCAN_Field is Interfaces.EFM32.Bit;
   subtype IEN_SINGLEOF_Field is Interfaces.EFM32.Bit;
   subtype IEN_SCANOF_Field is Interfaces.EFM32.Bit;
   subtype IEN_SINGLEUF_Field is Interfaces.EFM32.Bit;
   subtype IEN_SCANUF_Field is Interfaces.EFM32.Bit;
   subtype IEN_SINGLECMP_Field is Interfaces.EFM32.Bit;
   subtype IEN_SCANCMP_Field is Interfaces.EFM32.Bit;
   subtype IEN_VREFOV_Field is Interfaces.EFM32.Bit;
   subtype IEN_PROGERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_SCANEXTPEND_Field is Interfaces.EFM32.Bit;
   subtype IEN_SCANPEND_Field is Interfaces.EFM32.Bit;
   subtype IEN_PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_EM23ERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  SINGLE Interrupt Enable
      SINGLE         : IEN_SINGLE_Field := 16#0#;
      --  SCAN Interrupt Enable
      SCAN           : IEN_SCAN_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.EFM32.UInt6 := 16#0#;
      --  SINGLEOF Interrupt Enable
      SINGLEOF       : IEN_SINGLEOF_Field := 16#0#;
      --  SCANOF Interrupt Enable
      SCANOF         : IEN_SCANOF_Field := 16#0#;
      --  SINGLEUF Interrupt Enable
      SINGLEUF       : IEN_SINGLEUF_Field := 16#0#;
      --  SCANUF Interrupt Enable
      SCANUF         : IEN_SCANUF_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.EFM32.UInt4 := 16#0#;
      --  SINGLECMP Interrupt Enable
      SINGLECMP      : IEN_SINGLECMP_Field := 16#0#;
      --  SCANCMP Interrupt Enable
      SCANCMP        : IEN_SCANCMP_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : Interfaces.EFM32.UInt6 := 16#0#;
      --  VREFOV Interrupt Enable
      VREFOV         : IEN_VREFOV_Field := 16#0#;
      --  PROGERR Interrupt Enable
      PROGERR        : IEN_PROGERR_Field := 16#0#;
      --  SCANEXTPEND Interrupt Enable
      SCANEXTPEND    : IEN_SCANEXTPEND_Field := 16#0#;
      --  SCANPEND Interrupt Enable
      SCANPEND       : IEN_SCANPEND_Field := 16#0#;
      --  PRSTIMEDERR Interrupt Enable
      PRSTIMEDERR    : IEN_PRSTIMEDERR_Field := 16#0#;
      --  EM23ERR Interrupt Enable
      EM23ERR        : IEN_EM23ERR_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      SINGLE         at 0 range 0 .. 0;
      SCAN           at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      SINGLEOF       at 0 range 8 .. 8;
      SCANOF         at 0 range 9 .. 9;
      SINGLEUF       at 0 range 10 .. 10;
      SCANUF         at 0 range 11 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      SINGLECMP      at 0 range 16 .. 16;
      SCANCMP        at 0 range 17 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      VREFOV         at 0 range 24 .. 24;
      PROGERR        at 0 range 25 .. 25;
      SCANEXTPEND    at 0 range 26 .. 26;
      SCANPEND       at 0 range 27 .. 27;
      PRSTIMEDERR    at 0 range 28 .. 28;
      EM23ERR        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype SCANDATAX_DATA_Field is Interfaces.EFM32.UInt16;
   subtype SCANDATAX_SCANINPUTID_Field is Interfaces.EFM32.UInt5;

   --  Scan Sequence Result Data + Data Source Register
   type SCANDATAX_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Scan Conversion Result Data
      DATA           : SCANDATAX_DATA_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Scan Conversion Input ID
      SCANINPUTID    : SCANDATAX_SCANINPUTID_Field;
      --  unspecified
      Reserved_21_31 : Interfaces.EFM32.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCANDATAX_Register use record
      DATA           at 0 range 0 .. 15;
      SCANINPUTID    at 0 range 16 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype SCANDATAXP_DATAP_Field is Interfaces.EFM32.UInt16;
   subtype SCANDATAXP_SCANINPUTIDPEEK_Field is Interfaces.EFM32.UInt5;

   --  Scan Sequence Result Data + Data Source Peek Register
   type SCANDATAXP_Register is record
      --  Read-only. Scan Conversion Result Data Peek
      DATAP           : SCANDATAXP_DATAP_Field;
      --  Read-only. Scan Conversion Data Source Peek
      SCANINPUTIDPEEK : SCANDATAXP_SCANINPUTIDPEEK_Field;
      --  unspecified
      Reserved_21_31  : Interfaces.EFM32.UInt11;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCANDATAXP_Register use record
      DATAP           at 0 range 0 .. 15;
      SCANINPUTIDPEEK at 0 range 16 .. 20;
      Reserved_21_31  at 0 range 21 .. 31;
   end record;

   subtype APORTREQ_APORT0XREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT0YREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT1XREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT1YREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT2XREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT2YREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT3XREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT3YREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT4XREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT4YREQ_Field is Interfaces.EFM32.Bit;

   --  APORT Request Status Register
   type APORTREQ_Register is record
      --  Read-only. 1 If the Bus Connected to APORT0X is Requested
      APORT0XREQ     : APORTREQ_APORT0XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT0Y is Requested
      APORT0YREQ     : APORTREQ_APORT0YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT1X is Requested
      APORT1XREQ     : APORTREQ_APORT1XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT1Y is Requested
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
      APORT0XREQ     at 0 range 0 .. 0;
      APORT0YREQ     at 0 range 1 .. 1;
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

   subtype APORTCONFLICT_APORT0XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT0YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT1XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT1YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT2XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT2YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT3XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT3YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT4XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT4YCONFLICT_Field is Interfaces.EFM32.Bit;

   --  APORT Conflict Status Register
   type APORTCONFLICT_Register is record
      --  Read-only. 1 If the Bus Connected to APORT0X is in Conflict With
      --  Another Peripheral
      APORT0XCONFLICT : APORTCONFLICT_APORT0XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT0Y is in Conflict With
      --  Another Peripheral
      APORT0YCONFLICT : APORTCONFLICT_APORT0YCONFLICT_Field;
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
      APORT0XCONFLICT at 0 range 0 .. 0;
      APORT0YCONFLICT at 0 range 1 .. 1;
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

   subtype SINGLEFIFOCOUNT_SINGLEDC_Field is Interfaces.EFM32.UInt3;

   --  Single FIFO Count Register
   type SINGLEFIFOCOUNT_Register is record
      --  Read-only. Single Data Count
      SINGLEDC      : SINGLEFIFOCOUNT_SINGLEDC_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SINGLEFIFOCOUNT_Register use record
      SINGLEDC      at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype SCANFIFOCOUNT_SCANDC_Field is Interfaces.EFM32.UInt3;

   --  Scan FIFO Count Register
   type SCANFIFOCOUNT_Register is record
      --  Read-only. Scan Data Count
      SCANDC        : SCANFIFOCOUNT_SCANDC_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCANFIFOCOUNT_Register use record
      SCANDC        at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype SINGLEFIFOCLEAR_SINGLEFIFOCLEAR_Field is Interfaces.EFM32.Bit;

   --  Single FIFO Clear Register
   type SINGLEFIFOCLEAR_Register is record
      --  Write-only. Clear Single FIFO Content
      SINGLEFIFOCLEAR : SINGLEFIFOCLEAR_SINGLEFIFOCLEAR_Field := 16#0#;
      --  unspecified
      Reserved_1_31   : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SINGLEFIFOCLEAR_Register use record
      SINGLEFIFOCLEAR at 0 range 0 .. 0;
      Reserved_1_31   at 0 range 1 .. 31;
   end record;

   subtype SCANFIFOCLEAR_SCANFIFOCLEAR_Field is Interfaces.EFM32.Bit;

   --  Scan FIFO Clear Register
   type SCANFIFOCLEAR_Register is record
      --  Write-only. Clear Scan FIFO Content
      SCANFIFOCLEAR : SCANFIFOCLEAR_SCANFIFOCLEAR_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCANFIFOCLEAR_Register use record
      SCANFIFOCLEAR at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype APORTMASTERDIS_APORT1XMASTERDIS_Field is Interfaces.EFM32.Bit;
   subtype APORTMASTERDIS_APORT1YMASTERDIS_Field is Interfaces.EFM32.Bit;
   subtype APORTMASTERDIS_APORT2XMASTERDIS_Field is Interfaces.EFM32.Bit;
   subtype APORTMASTERDIS_APORT2YMASTERDIS_Field is Interfaces.EFM32.Bit;
   subtype APORTMASTERDIS_APORT3XMASTERDIS_Field is Interfaces.EFM32.Bit;
   subtype APORTMASTERDIS_APORT3YMASTERDIS_Field is Interfaces.EFM32.Bit;
   subtype APORTMASTERDIS_APORT4XMASTERDIS_Field is Interfaces.EFM32.Bit;
   subtype APORTMASTERDIS_APORT4YMASTERDIS_Field is Interfaces.EFM32.Bit;

   --  APORT Bus Master Disable Register
   type APORTMASTERDIS_Register is record
      --  unspecified
      Reserved_0_1     : Interfaces.EFM32.UInt2 := 16#0#;
      --  APORT1X Master Disable
      APORT1XMASTERDIS : APORTMASTERDIS_APORT1XMASTERDIS_Field := 16#0#;
      --  APORT1Y Master Disable
      APORT1YMASTERDIS : APORTMASTERDIS_APORT1YMASTERDIS_Field := 16#0#;
      --  APORT2X Master Disable
      APORT2XMASTERDIS : APORTMASTERDIS_APORT2XMASTERDIS_Field := 16#0#;
      --  APORT2Y Master Disable
      APORT2YMASTERDIS : APORTMASTERDIS_APORT2YMASTERDIS_Field := 16#0#;
      --  APORT3X Master Disable
      APORT3XMASTERDIS : APORTMASTERDIS_APORT3XMASTERDIS_Field := 16#0#;
      --  APORT3Y Master Disable
      APORT3YMASTERDIS : APORTMASTERDIS_APORT3YMASTERDIS_Field := 16#0#;
      --  APORT4X Master Disable
      APORT4XMASTERDIS : APORTMASTERDIS_APORT4XMASTERDIS_Field := 16#0#;
      --  APORT4Y Master Disable
      APORT4YMASTERDIS : APORTMASTERDIS_APORT4YMASTERDIS_Field := 16#0#;
      --  unspecified
      Reserved_10_31   : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APORTMASTERDIS_Register use record
      Reserved_0_1     at 0 range 0 .. 1;
      APORT1XMASTERDIS at 0 range 2 .. 2;
      APORT1YMASTERDIS at 0 range 3 .. 3;
      APORT2XMASTERDIS at 0 range 4 .. 4;
      APORT2YMASTERDIS at 0 range 5 .. 5;
      APORT3XMASTERDIS at 0 range 6 .. 6;
      APORT3YMASTERDIS at 0 range 7 .. 7;
      APORT4XMASTERDIS at 0 range 8 .. 8;
      APORT4YMASTERDIS at 0 range 9 .. 9;
      Reserved_10_31   at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ADC1
   type ADC1_Peripheral is record
      --  Control Register
      CTRL            : aliased CTRL_Register;
      --  Command Register
      CMD             : aliased CMD_Register;
      --  Status Register
      STATUS          : aliased STATUS_Register;
      --  Single Channel Control Register
      SINGLECTRL      : aliased SINGLECTRL_Register;
      --  Single Channel Control Register Continued
      SINGLECTRLX     : aliased SINGLECTRLX_Register;
      --  Scan Control Register
      SCANCTRL        : aliased SCANCTRL_Register;
      --  Scan Control Register Continued
      SCANCTRLX       : aliased SCANCTRLX_Register;
      --  Scan Sequence Input Mask Register
      SCANMASK        : aliased Interfaces.EFM32.UInt32;
      --  Input Selection Register for Scan Mode
      SCANINPUTSEL    : aliased SCANINPUTSEL_Register;
      --  Negative Input Select Register for Scan
      SCANNEGSEL      : aliased SCANNEGSEL_Register;
      --  Compare Threshold Register
      CMPTHR          : aliased CMPTHR_Register;
      --  Bias Programming Register for Various Analog Blocks Used in ADC
      --  Operation
      BIASPROG        : aliased BIASPROG_Register;
      --  Calibration Register
      CAL             : aliased CAL_Register;
      --  Interrupt Flag Register
      IF_k            : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS             : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC             : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN             : aliased IEN_Register;
      --  Single Conversion Result Data
      SINGLEDATA      : aliased Interfaces.EFM32.UInt32;
      --  Scan Conversion Result Data
      SCANDATA        : aliased Interfaces.EFM32.UInt32;
      --  Single Conversion Result Data Peek Register
      SINGLEDATAP     : aliased Interfaces.EFM32.UInt32;
      --  Scan Sequence Result Data Peek Register
      SCANDATAP       : aliased Interfaces.EFM32.UInt32;
      --  Scan Sequence Result Data + Data Source Register
      SCANDATAX       : aliased SCANDATAX_Register;
      --  Scan Sequence Result Data + Data Source Peek Register
      SCANDATAXP      : aliased SCANDATAXP_Register;
      --  APORT Request Status Register
      APORTREQ        : aliased APORTREQ_Register;
      --  APORT Conflict Status Register
      APORTCONFLICT   : aliased APORTCONFLICT_Register;
      --  Single FIFO Count Register
      SINGLEFIFOCOUNT : aliased SINGLEFIFOCOUNT_Register;
      --  Scan FIFO Count Register
      SCANFIFOCOUNT   : aliased SCANFIFOCOUNT_Register;
      --  Single FIFO Clear Register
      SINGLEFIFOCLEAR : aliased SINGLEFIFOCLEAR_Register;
      --  Scan FIFO Clear Register
      SCANFIFOCLEAR   : aliased SCANFIFOCLEAR_Register;
      --  APORT Bus Master Disable Register
      APORTMASTERDIS  : aliased APORTMASTERDIS_Register;
   end record
     with Volatile;

   for ADC1_Peripheral use record
      CTRL            at 16#0# range 0 .. 31;
      CMD             at 16#8# range 0 .. 31;
      STATUS          at 16#C# range 0 .. 31;
      SINGLECTRL      at 16#10# range 0 .. 31;
      SINGLECTRLX     at 16#14# range 0 .. 31;
      SCANCTRL        at 16#18# range 0 .. 31;
      SCANCTRLX       at 16#1C# range 0 .. 31;
      SCANMASK        at 16#20# range 0 .. 31;
      SCANINPUTSEL    at 16#24# range 0 .. 31;
      SCANNEGSEL      at 16#28# range 0 .. 31;
      CMPTHR          at 16#2C# range 0 .. 31;
      BIASPROG        at 16#30# range 0 .. 31;
      CAL             at 16#34# range 0 .. 31;
      IF_k            at 16#38# range 0 .. 31;
      IFS             at 16#3C# range 0 .. 31;
      IFC             at 16#40# range 0 .. 31;
      IEN             at 16#44# range 0 .. 31;
      SINGLEDATA      at 16#48# range 0 .. 31;
      SCANDATA        at 16#4C# range 0 .. 31;
      SINGLEDATAP     at 16#50# range 0 .. 31;
      SCANDATAP       at 16#54# range 0 .. 31;
      SCANDATAX       at 16#68# range 0 .. 31;
      SCANDATAXP      at 16#6C# range 0 .. 31;
      APORTREQ        at 16#7C# range 0 .. 31;
      APORTCONFLICT   at 16#80# range 0 .. 31;
      SINGLEFIFOCOUNT at 16#84# range 0 .. 31;
      SCANFIFOCOUNT   at 16#88# range 0 .. 31;
      SINGLEFIFOCLEAR at 16#8C# range 0 .. 31;
      SCANFIFOCLEAR   at 16#90# range 0 .. 31;
      APORTMASTERDIS  at 16#94# range 0 .. 31;
   end record;

   --  ADC1
   ADC1_Periph : aliased ADC1_Peripheral
     with Import, Address => ADC1_Base;

end Interfaces.EFM32.ADC1;
