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

--  VDAC0
package Interfaces.EFM32.VDAC0 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_DIFF_Field is Interfaces.EFM32.Bit;
   subtype CTRL_SINEMODE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_OUTENPRS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CH0PRESCRST_Field is Interfaces.EFM32.Bit;

   --  Reference Selection
   type CTRL_REFSEL_Field is
     (--  Internal low noise 1.25 V bandgap reference
      Val_1V25LN,
      --  Internal low noise 2.5 V bandgap reference
      Val_2V5LN,
      --  Internal 1.25 V bandgap reference
      Val_1V25,
      --  Internal 2.5 V bandgap reference
      Val_2V5,
      --  AVDD reference
      VDD,
      --  External pin reference
      EXT)
     with Size => 3;
   for CTRL_REFSEL_Field use
     (Val_1V25LN => 0,
      Val_2V5LN => 1,
      Val_1V25 => 2,
      Val_2V5 => 3,
      VDD => 4,
      EXT => 6);

   --  Prescaler Setting for DAC Clock
   type CTRL_PRESC_Field is
     (NODIVISION)
     with Size => 7;
   for CTRL_PRESC_Field use
     (NODIVISION => 0);

   --  Refresh Period
   type CTRL_REFRESHPERIOD_Field is
     (--  All channels with enabled refresh are refreshed every 8 DAC_CLK cycles
      Val_8CYCLES,
      --  All channels with enabled refresh are refreshed every 16 DAC_CLK cycles
      Val_16CYCLES,
      --  All channels with enabled refresh are refreshed every 32 DAC_CLK cycles
      Val_32CYCLES,
      --  All channels with enabled refresh are refreshed every 64 DAC_CLK cycles
      Val_64CYCLES)
     with Size => 2;
   for CTRL_REFRESHPERIOD_Field use
     (Val_8CYCLES => 0,
      Val_16CYCLES => 1,
      Val_32CYCLES => 2,
      Val_64CYCLES => 3);

   subtype CTRL_WARMUPMODE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_DACCLKMODE_Field is Interfaces.EFM32.Bit;

   --  Control Register
   type CTRL_Register is record
      --  Differential Mode
      DIFF           : CTRL_DIFF_Field := 16#0#;
      --  unspecified
      Reserved_1_3   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Sine Mode
      SINEMODE       : CTRL_SINEMODE_Field := 16#0#;
      --  PRS Controlled Output Enable
      OUTENPRS       : CTRL_OUTENPRS_Field := 16#0#;
      --  Channel 0 Start Reset Prescaler
      CH0PRESCRST    : CTRL_CH0PRESCRST_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Reference Selection
      REFSEL         : CTRL_REFSEL_Field := Interfaces.EFM32.VDAC0.Val_1V25LN;
      --  unspecified
      Reserved_11_15 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Prescaler Setting for DAC Clock
      PRESC          : CTRL_PRESC_Field := Interfaces.EFM32.VDAC0.NODIVISION;
      --  unspecified
      Reserved_23_23 : Interfaces.EFM32.Bit := 16#0#;
      --  Refresh Period
      REFRESHPERIOD  : CTRL_REFRESHPERIOD_Field :=
                        Interfaces.EFM32.VDAC0.Val_8CYCLES;
      --  unspecified
      Reserved_26_27 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Warm-up Mode
      WARMUPMODE     : CTRL_WARMUPMODE_Field := 16#0#;
      --  unspecified
      Reserved_29_30 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Clock Mode
      DACCLKMODE     : CTRL_DACCLKMODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      DIFF           at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      SINEMODE       at 0 range 4 .. 4;
      OUTENPRS       at 0 range 5 .. 5;
      CH0PRESCRST    at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      REFSEL         at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      PRESC          at 0 range 16 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      REFRESHPERIOD  at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      WARMUPMODE     at 0 range 28 .. 28;
      Reserved_29_30 at 0 range 29 .. 30;
      DACCLKMODE     at 0 range 31 .. 31;
   end record;

   subtype STATUS_CH0ENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_CH1ENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_CH0BL_Field is Interfaces.EFM32.Bit;
   subtype STATUS_CH1BL_Field is Interfaces.EFM32.Bit;
   subtype STATUS_CH0WARM_Field is Interfaces.EFM32.Bit;
   subtype STATUS_CH1WARM_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA0APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA1APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA2APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA3APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA0ENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA1ENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA2ENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA3ENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA0WARM_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA1WARM_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA2WARM_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA3WARM_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA0OUTVALID_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA1OUTVALID_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA2OUTVALID_Field is Interfaces.EFM32.Bit;
   subtype STATUS_OPA3OUTVALID_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. Channel 0 Enabled Status
      CH0ENS            : STATUS_CH0ENS_Field;
      --  Read-only. Channel 1 Enabled Status
      CH1ENS            : STATUS_CH1ENS_Field;
      --  Read-only. Channel 0 Buffer Level
      CH0BL             : STATUS_CH0BL_Field;
      --  Read-only. Channel 1 Buffer Level
      CH1BL             : STATUS_CH1BL_Field;
      --  Read-only. Channel 0 Warm
      CH0WARM           : STATUS_CH0WARM_Field;
      --  Read-only. Channel 1 Warm
      CH1WARM           : STATUS_CH1WARM_Field;
      --  unspecified
      Reserved_6_15     : Interfaces.EFM32.UInt10;
      --  Read-only. OPA0 Bus Conflict Output
      OPA0APORTCONFLICT : STATUS_OPA0APORTCONFLICT_Field;
      --  Read-only. OPA1 Bus Conflict Output
      OPA1APORTCONFLICT : STATUS_OPA1APORTCONFLICT_Field;
      --  Read-only. OPA2 Bus Conflict Output
      OPA2APORTCONFLICT : STATUS_OPA2APORTCONFLICT_Field;
      --  Read-only. OPA3 Bus Conflict Output
      OPA3APORTCONFLICT : STATUS_OPA3APORTCONFLICT_Field;
      --  Read-only. OPA0 Enabled Status
      OPA0ENS           : STATUS_OPA0ENS_Field;
      --  Read-only. OPA1 Enabled Status
      OPA1ENS           : STATUS_OPA1ENS_Field;
      --  Read-only. OPA2 Enabled Status
      OPA2ENS           : STATUS_OPA2ENS_Field;
      --  Read-only. OPA3 Enabled Status
      OPA3ENS           : STATUS_OPA3ENS_Field;
      --  Read-only. OPA0 Warm Status
      OPA0WARM          : STATUS_OPA0WARM_Field;
      --  Read-only. OPA1 Warm Status
      OPA1WARM          : STATUS_OPA1WARM_Field;
      --  Read-only. OPA2 Warm Status
      OPA2WARM          : STATUS_OPA2WARM_Field;
      --  Read-only. OPA3 Warm Status
      OPA3WARM          : STATUS_OPA3WARM_Field;
      --  Read-only. OPA0 Output Valid Status
      OPA0OUTVALID      : STATUS_OPA0OUTVALID_Field;
      --  Read-only. OPA1 Output Valid Status
      OPA1OUTVALID      : STATUS_OPA1OUTVALID_Field;
      --  Read-only. OPA2 Output Valid Status
      OPA2OUTVALID      : STATUS_OPA2OUTVALID_Field;
      --  Read-only. OPA3 Output Valid Status
      OPA3OUTVALID      : STATUS_OPA3OUTVALID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      CH0ENS            at 0 range 0 .. 0;
      CH1ENS            at 0 range 1 .. 1;
      CH0BL             at 0 range 2 .. 2;
      CH1BL             at 0 range 3 .. 3;
      CH0WARM           at 0 range 4 .. 4;
      CH1WARM           at 0 range 5 .. 5;
      Reserved_6_15     at 0 range 6 .. 15;
      OPA0APORTCONFLICT at 0 range 16 .. 16;
      OPA1APORTCONFLICT at 0 range 17 .. 17;
      OPA2APORTCONFLICT at 0 range 18 .. 18;
      OPA3APORTCONFLICT at 0 range 19 .. 19;
      OPA0ENS           at 0 range 20 .. 20;
      OPA1ENS           at 0 range 21 .. 21;
      OPA2ENS           at 0 range 22 .. 22;
      OPA3ENS           at 0 range 23 .. 23;
      OPA0WARM          at 0 range 24 .. 24;
      OPA1WARM          at 0 range 25 .. 25;
      OPA2WARM          at 0 range 26 .. 26;
      OPA3WARM          at 0 range 27 .. 27;
      OPA0OUTVALID      at 0 range 28 .. 28;
      OPA1OUTVALID      at 0 range 29 .. 29;
      OPA2OUTVALID      at 0 range 30 .. 30;
      OPA3OUTVALID      at 0 range 31 .. 31;
   end record;

   subtype CH0CTRL_CONVMODE_Field is Interfaces.EFM32.Bit;

   --  Channel 0 Trigger Mode
   type CH0CTRL_TRIGMODE_Field is
     (--  Channel 0 is triggered by CH0DATA or COMBDATA write
      SW,
      --  Channel 0 is triggered by PRS input
      PRS,
      --  Channel 0 is triggered by Refresh timer
      REFRESH,
      --  Channel 0 is triggered by CH0DATA/COMBDATA write or PRS input
      SWPRS,
      --  Channel 0 is triggered by CH0DATA/COMBDATA write or Refresh timer
      SWREFRESH,
      --  Channel 0 is triggered by LESENSE
      LESENSE)
     with Size => 3;
   for CH0CTRL_TRIGMODE_Field use
     (SW => 0,
      PRS => 1,
      REFRESH => 2,
      SWPRS => 3,
      SWREFRESH => 4,
      LESENSE => 5);

   subtype CH0CTRL_PRSASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel 0 PRS Trigger Select
   type CH0CTRL_PRSSEL_Field is
     (--  PRS ch 0 triggers a conversion.
      PRSCH0,
      --  PRS ch 1 triggers a conversion.
      PRSCH1,
      --  PRS ch 2 triggers a conversion.
      PRSCH2,
      --  PRS ch 3 triggers a conversion.
      PRSCH3,
      --  PRS ch 4 triggers a conversion.
      PRSCH4,
      --  PRS ch 5 triggers a conversion.
      PRSCH5,
      --  PRS ch 6 triggers a conversion.
      PRSCH6,
      --  PRS ch 7 triggers a conversion.
      PRSCH7,
      --  PRS ch 8 triggers a conversion.
      PRSCH8,
      --  PRS ch 9 triggers a conversion.
      PRSCH9,
      --  PRS ch 10 triggers a conversion.
      PRSCH10,
      --  PRS ch 11 triggers a conversion.
      PRSCH11,
      --  PRS ch 12 triggers a conversion.
      PRSCH12,
      --  PRS ch 13 triggers a conversion.
      PRSCH13,
      --  PRS ch 14 triggers a conversion.
      PRSCH14,
      --  PRS ch 15 triggers a conversion.
      PRSCH15)
     with Size => 4;
   for CH0CTRL_PRSSEL_Field use
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

   --  Channel 0 Control Register
   type CH0CTRL_Register is record
      --  Conversion Mode
      CONVMODE       : CH0CTRL_CONVMODE_Field := 16#0#;
      --  unspecified
      Reserved_1_3   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Channel 0 Trigger Mode
      TRIGMODE       : CH0CTRL_TRIGMODE_Field := Interfaces.EFM32.VDAC0.SW;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Channel 0 PRS Asynchronous Enable
      PRSASYNC       : CH0CTRL_PRSASYNC_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : Interfaces.EFM32.UInt3 := 16#0#;
      --  Channel 0 PRS Trigger Select
      PRSSEL         : CH0CTRL_PRSSEL_Field := Interfaces.EFM32.VDAC0.PRSCH0;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0CTRL_Register use record
      CONVMODE       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      TRIGMODE       at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PRSASYNC       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PRSSEL         at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CH1CTRL_CONVMODE_Field is Interfaces.EFM32.Bit;

   --  Channel 1 Trigger Mode
   type CH1CTRL_TRIGMODE_Field is
     (--  Channel 1 is triggered by CH1DATA or COMBDATA write
      SW,
      --  Channel 1 is triggered by PRS input
      PRS,
      --  Channel 1 is triggered by Refresh timer
      REFRESH,
      --  Channel 1 is triggered by CH1DATA/COMBDATA write or PRS input
      SWPRS,
      --  Channel 1 is triggered by CH1DATA/COMBDATA write or Refresh timer
      SWREFRESH,
      --  Channel 1 is triggered by LESENSE
      LESENSE)
     with Size => 3;
   for CH1CTRL_TRIGMODE_Field use
     (SW => 0,
      PRS => 1,
      REFRESH => 2,
      SWPRS => 3,
      SWREFRESH => 4,
      LESENSE => 5);

   subtype CH1CTRL_PRSASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel 1 PRS Trigger Select
   type CH1CTRL_PRSSEL_Field is
     (--  PRS ch 0 triggers a conversion.
      PRSCH0,
      --  PRS ch 1 triggers a conversion.
      PRSCH1,
      --  PRS ch 2 triggers a conversion.
      PRSCH2,
      --  PRS ch 3 triggers a conversion.
      PRSCH3,
      --  PRS ch 4 triggers a conversion.
      PRSCH4,
      --  PRS ch 5 triggers a conversion.
      PRSCH5,
      --  PRS ch 6 triggers a conversion.
      PRSCH6,
      --  PRS ch 7 triggers a conversion.
      PRSCH7,
      --  PRS ch 8 triggers a conversion.
      PRSCH8,
      --  PRS ch 9 triggers a conversion.
      PRSCH9,
      --  PRS ch 10 triggers a conversion.
      PRSCH10,
      --  PRS ch 11 triggers a conversion.
      PRSCH11,
      --  PRS ch 12 triggers a conversion.
      PRSCH12,
      --  PRS ch 13 triggers a conversion.
      PRSCH13,
      --  PRS ch 14 triggers a conversion.
      PRSCH14,
      --  PRS ch 15 triggers a conversion.
      PRSCH15)
     with Size => 4;
   for CH1CTRL_PRSSEL_Field use
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

   --  Channel 1 Control Register
   type CH1CTRL_Register is record
      --  Conversion Mode
      CONVMODE       : CH1CTRL_CONVMODE_Field := 16#0#;
      --  unspecified
      Reserved_1_3   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Channel 1 Trigger Mode
      TRIGMODE       : CH1CTRL_TRIGMODE_Field := Interfaces.EFM32.VDAC0.SW;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Channel 1 PRS Asynchronous Enable
      PRSASYNC       : CH1CTRL_PRSASYNC_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : Interfaces.EFM32.UInt3 := 16#0#;
      --  Channel 1 PRS Trigger Select
      PRSSEL         : CH1CTRL_PRSSEL_Field := Interfaces.EFM32.VDAC0.PRSCH0;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1CTRL_Register use record
      CONVMODE       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      TRIGMODE       at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PRSASYNC       at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      PRSSEL         at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMD_CH0EN_Field is Interfaces.EFM32.Bit;
   subtype CMD_CH0DIS_Field is Interfaces.EFM32.Bit;
   subtype CMD_CH1EN_Field is Interfaces.EFM32.Bit;
   subtype CMD_CH1DIS_Field is Interfaces.EFM32.Bit;
   subtype CMD_OPA0EN_Field is Interfaces.EFM32.Bit;
   subtype CMD_OPA0DIS_Field is Interfaces.EFM32.Bit;
   subtype CMD_OPA1EN_Field is Interfaces.EFM32.Bit;
   subtype CMD_OPA1DIS_Field is Interfaces.EFM32.Bit;
   subtype CMD_OPA2EN_Field is Interfaces.EFM32.Bit;
   subtype CMD_OPA2DIS_Field is Interfaces.EFM32.Bit;
   subtype CMD_OPA3EN_Field is Interfaces.EFM32.Bit;
   subtype CMD_OPA3DIS_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. DAC Channel 0 Enable
      CH0EN          : CMD_CH0EN_Field := 16#0#;
      --  Write-only. DAC Channel 0 Disable
      CH0DIS         : CMD_CH0DIS_Field := 16#0#;
      --  Write-only. DAC Channel 1 Enable
      CH1EN          : CMD_CH1EN_Field := 16#0#;
      --  Write-only. DAC Channel 1 Disable
      CH1DIS         : CMD_CH1DIS_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Write-only. OPA0 Enable
      OPA0EN         : CMD_OPA0EN_Field := 16#0#;
      --  Write-only. OPA0 Disable
      OPA0DIS        : CMD_OPA0DIS_Field := 16#0#;
      --  Write-only. OPA1 Enable
      OPA1EN         : CMD_OPA1EN_Field := 16#0#;
      --  Write-only. OPA1 Disable
      OPA1DIS        : CMD_OPA1DIS_Field := 16#0#;
      --  Write-only. OPA2 Enable
      OPA2EN         : CMD_OPA2EN_Field := 16#0#;
      --  Write-only. OPA2 Disable
      OPA2DIS        : CMD_OPA2DIS_Field := 16#0#;
      --  Write-only. OPA3 Enable
      OPA3EN         : CMD_OPA3EN_Field := 16#0#;
      --  Write-only. OPA3 Disable
      OPA3DIS        : CMD_OPA3DIS_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      CH0EN          at 0 range 0 .. 0;
      CH0DIS         at 0 range 1 .. 1;
      CH1EN          at 0 range 2 .. 2;
      CH1DIS         at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      OPA0EN         at 0 range 16 .. 16;
      OPA0DIS        at 0 range 17 .. 17;
      OPA1EN         at 0 range 18 .. 18;
      OPA1DIS        at 0 range 19 .. 19;
      OPA2EN         at 0 range 20 .. 20;
      OPA2DIS        at 0 range 21 .. 21;
      OPA3EN         at 0 range 22 .. 22;
      OPA3DIS        at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype IF_CH0CD_Field is Interfaces.EFM32.Bit;
   subtype IF_CH1CD_Field is Interfaces.EFM32.Bit;
   subtype IF_CH0OF_Field is Interfaces.EFM32.Bit;
   subtype IF_CH1OF_Field is Interfaces.EFM32.Bit;
   subtype IF_CH0UF_Field is Interfaces.EFM32.Bit;
   subtype IF_CH1UF_Field is Interfaces.EFM32.Bit;
   subtype IF_CH0BL_Field is Interfaces.EFM32.Bit;
   subtype IF_CH1BL_Field is Interfaces.EFM32.Bit;
   subtype IF_EM23ERR_Field is Interfaces.EFM32.Bit;
   subtype IF_OPA0APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IF_OPA1APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IF_OPA2APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IF_OPA3APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IF_OPA0PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IF_OPA1PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IF_OPA2PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IF_OPA3PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IF_OPA0OUTVALID_Field is Interfaces.EFM32.Bit;
   subtype IF_OPA1OUTVALID_Field is Interfaces.EFM32.Bit;
   subtype IF_OPA2OUTVALID_Field is Interfaces.EFM32.Bit;
   subtype IF_OPA3OUTVALID_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. Channel 0 Conversion Done Interrupt Flag
      CH0CD             : IF_CH0CD_Field;
      --  Read-only. Channel 1 Conversion Done Interrupt Flag
      CH1CD             : IF_CH1CD_Field;
      --  Read-only. Channel 0 Data Overflow Interrupt Flag
      CH0OF             : IF_CH0OF_Field;
      --  Read-only. Channel 1 Data Overflow Interrupt Flag
      CH1OF             : IF_CH1OF_Field;
      --  Read-only. Channel 0 Data Underflow Interrupt Flag
      CH0UF             : IF_CH0UF_Field;
      --  Read-only. Channel 1 Data Underflow Interrupt Flag
      CH1UF             : IF_CH1UF_Field;
      --  Read-only. Channel 0 Buffer Level Interrupt Flag
      CH0BL             : IF_CH0BL_Field;
      --  Read-only. Channel 1 Buffer Level Interrupt Flag
      CH1BL             : IF_CH1BL_Field;
      --  unspecified
      Reserved_8_14     : Interfaces.EFM32.UInt7;
      --  Read-only. EM2/3 Entry Error Flag
      EM23ERR           : IF_EM23ERR_Field;
      --  Read-only. OPA0 Bus Conflict Output Interrupt Flag
      OPA0APORTCONFLICT : IF_OPA0APORTCONFLICT_Field;
      --  Read-only. OPA1 Bus Conflict Output Interrupt Flag
      OPA1APORTCONFLICT : IF_OPA1APORTCONFLICT_Field;
      --  Read-only. OPA2 Bus Conflict Output Interrupt Flag
      OPA2APORTCONFLICT : IF_OPA2APORTCONFLICT_Field;
      --  Read-only. OPA3 Bus Conflict Output Interrupt Flag
      OPA3APORTCONFLICT : IF_OPA3APORTCONFLICT_Field;
      --  Read-only. OPA0 PRS Trigger Mode Error Interrupt Flag
      OPA0PRSTIMEDERR   : IF_OPA0PRSTIMEDERR_Field;
      --  Read-only. OPA1 PRS Trigger Mode Error Interrupt Flag
      OPA1PRSTIMEDERR   : IF_OPA1PRSTIMEDERR_Field;
      --  Read-only. OPA2 PRS Trigger Mode Error Interrupt Flag
      OPA2PRSTIMEDERR   : IF_OPA2PRSTIMEDERR_Field;
      --  Read-only. OPA3 PRS Trigger Mode Error Interrupt Flag
      OPA3PRSTIMEDERR   : IF_OPA3PRSTIMEDERR_Field;
      --  unspecified
      Reserved_24_27    : Interfaces.EFM32.UInt4;
      --  Read-only. OPA0 Output Valid Interrupt Flag
      OPA0OUTVALID      : IF_OPA0OUTVALID_Field;
      --  Read-only. OPA1 Output Valid Interrupt Flag
      OPA1OUTVALID      : IF_OPA1OUTVALID_Field;
      --  Read-only. OPA3 Output Valid Interrupt Flag
      OPA2OUTVALID      : IF_OPA2OUTVALID_Field;
      --  Read-only. OPA3 Output Valid Interrupt Flag
      OPA3OUTVALID      : IF_OPA3OUTVALID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      CH0CD             at 0 range 0 .. 0;
      CH1CD             at 0 range 1 .. 1;
      CH0OF             at 0 range 2 .. 2;
      CH1OF             at 0 range 3 .. 3;
      CH0UF             at 0 range 4 .. 4;
      CH1UF             at 0 range 5 .. 5;
      CH0BL             at 0 range 6 .. 6;
      CH1BL             at 0 range 7 .. 7;
      Reserved_8_14     at 0 range 8 .. 14;
      EM23ERR           at 0 range 15 .. 15;
      OPA0APORTCONFLICT at 0 range 16 .. 16;
      OPA1APORTCONFLICT at 0 range 17 .. 17;
      OPA2APORTCONFLICT at 0 range 18 .. 18;
      OPA3APORTCONFLICT at 0 range 19 .. 19;
      OPA0PRSTIMEDERR   at 0 range 20 .. 20;
      OPA1PRSTIMEDERR   at 0 range 21 .. 21;
      OPA2PRSTIMEDERR   at 0 range 22 .. 22;
      OPA3PRSTIMEDERR   at 0 range 23 .. 23;
      Reserved_24_27    at 0 range 24 .. 27;
      OPA0OUTVALID      at 0 range 28 .. 28;
      OPA1OUTVALID      at 0 range 29 .. 29;
      OPA2OUTVALID      at 0 range 30 .. 30;
      OPA3OUTVALID      at 0 range 31 .. 31;
   end record;

   subtype IFS_CH0CD_Field is Interfaces.EFM32.Bit;
   subtype IFS_CH1CD_Field is Interfaces.EFM32.Bit;
   subtype IFS_CH0OF_Field is Interfaces.EFM32.Bit;
   subtype IFS_CH1OF_Field is Interfaces.EFM32.Bit;
   subtype IFS_CH0UF_Field is Interfaces.EFM32.Bit;
   subtype IFS_CH1UF_Field is Interfaces.EFM32.Bit;
   subtype IFS_EM23ERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_OPA0APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IFS_OPA1APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IFS_OPA2APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IFS_OPA3APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IFS_OPA0PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_OPA1PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_OPA2PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_OPA3PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_OPA0OUTVALID_Field is Interfaces.EFM32.Bit;
   subtype IFS_OPA1OUTVALID_Field is Interfaces.EFM32.Bit;
   subtype IFS_OPA2OUTVALID_Field is Interfaces.EFM32.Bit;
   subtype IFS_OPA3OUTVALID_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set CH0CD Interrupt Flag
      CH0CD             : IFS_CH0CD_Field := 16#0#;
      --  Write-only. Set CH1CD Interrupt Flag
      CH1CD             : IFS_CH1CD_Field := 16#0#;
      --  Write-only. Set CH0OF Interrupt Flag
      CH0OF             : IFS_CH0OF_Field := 16#0#;
      --  Write-only. Set CH1OF Interrupt Flag
      CH1OF             : IFS_CH1OF_Field := 16#0#;
      --  Write-only. Set CH0UF Interrupt Flag
      CH0UF             : IFS_CH0UF_Field := 16#0#;
      --  Write-only. Set CH1UF Interrupt Flag
      CH1UF             : IFS_CH1UF_Field := 16#0#;
      --  unspecified
      Reserved_6_14     : Interfaces.EFM32.UInt9 := 16#0#;
      --  Write-only. Set EM23ERR Interrupt Flag
      EM23ERR           : IFS_EM23ERR_Field := 16#0#;
      --  Write-only. Set OPA0APORTCONFLICT Interrupt Flag
      OPA0APORTCONFLICT : IFS_OPA0APORTCONFLICT_Field := 16#0#;
      --  Write-only. Set OPA1APORTCONFLICT Interrupt Flag
      OPA1APORTCONFLICT : IFS_OPA1APORTCONFLICT_Field := 16#0#;
      --  Write-only. Set OPA2APORTCONFLICT Interrupt Flag
      OPA2APORTCONFLICT : IFS_OPA2APORTCONFLICT_Field := 16#0#;
      --  Write-only. Set OPA3APORTCONFLICT Interrupt Flag
      OPA3APORTCONFLICT : IFS_OPA3APORTCONFLICT_Field := 16#0#;
      --  Write-only. Set OPA0PRSTIMEDERR Interrupt Flag
      OPA0PRSTIMEDERR   : IFS_OPA0PRSTIMEDERR_Field := 16#0#;
      --  Write-only. Set OPA1PRSTIMEDERR Interrupt Flag
      OPA1PRSTIMEDERR   : IFS_OPA1PRSTIMEDERR_Field := 16#0#;
      --  Write-only. Set OPA2PRSTIMEDERR Interrupt Flag
      OPA2PRSTIMEDERR   : IFS_OPA2PRSTIMEDERR_Field := 16#0#;
      --  Write-only. Set OPA3PRSTIMEDERR Interrupt Flag
      OPA3PRSTIMEDERR   : IFS_OPA3PRSTIMEDERR_Field := 16#0#;
      --  unspecified
      Reserved_24_27    : Interfaces.EFM32.UInt4 := 16#0#;
      --  Write-only. Set OPA0OUTVALID Interrupt Flag
      OPA0OUTVALID      : IFS_OPA0OUTVALID_Field := 16#0#;
      --  Write-only. Set OPA1OUTVALID Interrupt Flag
      OPA1OUTVALID      : IFS_OPA1OUTVALID_Field := 16#0#;
      --  Write-only. Set OPA2OUTVALID Interrupt Flag
      OPA2OUTVALID      : IFS_OPA2OUTVALID_Field := 16#0#;
      --  Write-only. Set OPA3OUTVALID Interrupt Flag
      OPA3OUTVALID      : IFS_OPA3OUTVALID_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      CH0CD             at 0 range 0 .. 0;
      CH1CD             at 0 range 1 .. 1;
      CH0OF             at 0 range 2 .. 2;
      CH1OF             at 0 range 3 .. 3;
      CH0UF             at 0 range 4 .. 4;
      CH1UF             at 0 range 5 .. 5;
      Reserved_6_14     at 0 range 6 .. 14;
      EM23ERR           at 0 range 15 .. 15;
      OPA0APORTCONFLICT at 0 range 16 .. 16;
      OPA1APORTCONFLICT at 0 range 17 .. 17;
      OPA2APORTCONFLICT at 0 range 18 .. 18;
      OPA3APORTCONFLICT at 0 range 19 .. 19;
      OPA0PRSTIMEDERR   at 0 range 20 .. 20;
      OPA1PRSTIMEDERR   at 0 range 21 .. 21;
      OPA2PRSTIMEDERR   at 0 range 22 .. 22;
      OPA3PRSTIMEDERR   at 0 range 23 .. 23;
      Reserved_24_27    at 0 range 24 .. 27;
      OPA0OUTVALID      at 0 range 28 .. 28;
      OPA1OUTVALID      at 0 range 29 .. 29;
      OPA2OUTVALID      at 0 range 30 .. 30;
      OPA3OUTVALID      at 0 range 31 .. 31;
   end record;

   subtype IFC_CH0CD_Field is Interfaces.EFM32.Bit;
   subtype IFC_CH1CD_Field is Interfaces.EFM32.Bit;
   subtype IFC_CH0OF_Field is Interfaces.EFM32.Bit;
   subtype IFC_CH1OF_Field is Interfaces.EFM32.Bit;
   subtype IFC_CH0UF_Field is Interfaces.EFM32.Bit;
   subtype IFC_CH1UF_Field is Interfaces.EFM32.Bit;
   subtype IFC_EM23ERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_OPA0APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IFC_OPA1APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IFC_OPA2APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IFC_OPA3APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IFC_OPA0PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_OPA1PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_OPA2PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_OPA3PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_OPA0OUTVALID_Field is Interfaces.EFM32.Bit;
   subtype IFC_OPA1OUTVALID_Field is Interfaces.EFM32.Bit;
   subtype IFC_OPA2OUTVALID_Field is Interfaces.EFM32.Bit;
   subtype IFC_OPA3OUTVALID_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear CH0CD Interrupt Flag
      CH0CD             : IFC_CH0CD_Field := 16#0#;
      --  Write-only. Clear CH1CD Interrupt Flag
      CH1CD             : IFC_CH1CD_Field := 16#0#;
      --  Write-only. Clear CH0OF Interrupt Flag
      CH0OF             : IFC_CH0OF_Field := 16#0#;
      --  Write-only. Clear CH1OF Interrupt Flag
      CH1OF             : IFC_CH1OF_Field := 16#0#;
      --  Write-only. Clear CH0UF Interrupt Flag
      CH0UF             : IFC_CH0UF_Field := 16#0#;
      --  Write-only. Clear CH1UF Interrupt Flag
      CH1UF             : IFC_CH1UF_Field := 16#0#;
      --  unspecified
      Reserved_6_14     : Interfaces.EFM32.UInt9 := 16#0#;
      --  Write-only. Clear EM23ERR Interrupt Flag
      EM23ERR           : IFC_EM23ERR_Field := 16#0#;
      --  Write-only. Clear OPA0APORTCONFLICT Interrupt Flag
      OPA0APORTCONFLICT : IFC_OPA0APORTCONFLICT_Field := 16#0#;
      --  Write-only. Clear OPA1APORTCONFLICT Interrupt Flag
      OPA1APORTCONFLICT : IFC_OPA1APORTCONFLICT_Field := 16#0#;
      --  Write-only. Clear OPA2APORTCONFLICT Interrupt Flag
      OPA2APORTCONFLICT : IFC_OPA2APORTCONFLICT_Field := 16#0#;
      --  Write-only. Clear OPA3APORTCONFLICT Interrupt Flag
      OPA3APORTCONFLICT : IFC_OPA3APORTCONFLICT_Field := 16#0#;
      --  Write-only. Clear OPA0PRSTIMEDERR Interrupt Flag
      OPA0PRSTIMEDERR   : IFC_OPA0PRSTIMEDERR_Field := 16#0#;
      --  Write-only. Clear OPA1PRSTIMEDERR Interrupt Flag
      OPA1PRSTIMEDERR   : IFC_OPA1PRSTIMEDERR_Field := 16#0#;
      --  Write-only. Clear OPA2PRSTIMEDERR Interrupt Flag
      OPA2PRSTIMEDERR   : IFC_OPA2PRSTIMEDERR_Field := 16#0#;
      --  Write-only. Clear OPA3PRSTIMEDERR Interrupt Flag
      OPA3PRSTIMEDERR   : IFC_OPA3PRSTIMEDERR_Field := 16#0#;
      --  unspecified
      Reserved_24_27    : Interfaces.EFM32.UInt4 := 16#0#;
      --  Write-only. Clear OPA0OUTVALID Interrupt Flag
      OPA0OUTVALID      : IFC_OPA0OUTVALID_Field := 16#0#;
      --  Write-only. Clear OPA1OUTVALID Interrupt Flag
      OPA1OUTVALID      : IFC_OPA1OUTVALID_Field := 16#0#;
      --  Write-only. Clear OPA2OUTVALID Interrupt Flag
      OPA2OUTVALID      : IFC_OPA2OUTVALID_Field := 16#0#;
      --  Write-only. Clear OPA3OUTVALID Interrupt Flag
      OPA3OUTVALID      : IFC_OPA3OUTVALID_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      CH0CD             at 0 range 0 .. 0;
      CH1CD             at 0 range 1 .. 1;
      CH0OF             at 0 range 2 .. 2;
      CH1OF             at 0 range 3 .. 3;
      CH0UF             at 0 range 4 .. 4;
      CH1UF             at 0 range 5 .. 5;
      Reserved_6_14     at 0 range 6 .. 14;
      EM23ERR           at 0 range 15 .. 15;
      OPA0APORTCONFLICT at 0 range 16 .. 16;
      OPA1APORTCONFLICT at 0 range 17 .. 17;
      OPA2APORTCONFLICT at 0 range 18 .. 18;
      OPA3APORTCONFLICT at 0 range 19 .. 19;
      OPA0PRSTIMEDERR   at 0 range 20 .. 20;
      OPA1PRSTIMEDERR   at 0 range 21 .. 21;
      OPA2PRSTIMEDERR   at 0 range 22 .. 22;
      OPA3PRSTIMEDERR   at 0 range 23 .. 23;
      Reserved_24_27    at 0 range 24 .. 27;
      OPA0OUTVALID      at 0 range 28 .. 28;
      OPA1OUTVALID      at 0 range 29 .. 29;
      OPA2OUTVALID      at 0 range 30 .. 30;
      OPA3OUTVALID      at 0 range 31 .. 31;
   end record;

   subtype IEN_CH0CD_Field is Interfaces.EFM32.Bit;
   subtype IEN_CH1CD_Field is Interfaces.EFM32.Bit;
   subtype IEN_CH0OF_Field is Interfaces.EFM32.Bit;
   subtype IEN_CH1OF_Field is Interfaces.EFM32.Bit;
   subtype IEN_CH0UF_Field is Interfaces.EFM32.Bit;
   subtype IEN_CH1UF_Field is Interfaces.EFM32.Bit;
   subtype IEN_CH0BL_Field is Interfaces.EFM32.Bit;
   subtype IEN_CH1BL_Field is Interfaces.EFM32.Bit;
   subtype IEN_EM23ERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_OPA0APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IEN_OPA1APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IEN_OPA2APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IEN_OPA3APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype IEN_OPA0PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_OPA1PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_OPA2PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_OPA3PRSTIMEDERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_OPA0OUTVALID_Field is Interfaces.EFM32.Bit;
   subtype IEN_OPA1OUTVALID_Field is Interfaces.EFM32.Bit;
   subtype IEN_OPA2OUTVALID_Field is Interfaces.EFM32.Bit;
   subtype IEN_OPA3OUTVALID_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  CH0CD Interrupt Enable
      CH0CD             : IEN_CH0CD_Field := 16#0#;
      --  CH1CD Interrupt Enable
      CH1CD             : IEN_CH1CD_Field := 16#0#;
      --  CH0OF Interrupt Enable
      CH0OF             : IEN_CH0OF_Field := 16#0#;
      --  CH1OF Interrupt Enable
      CH1OF             : IEN_CH1OF_Field := 16#0#;
      --  CH0UF Interrupt Enable
      CH0UF             : IEN_CH0UF_Field := 16#0#;
      --  CH1UF Interrupt Enable
      CH1UF             : IEN_CH1UF_Field := 16#0#;
      --  CH0BL Interrupt Enable
      CH0BL             : IEN_CH0BL_Field := 16#0#;
      --  CH1BL Interrupt Enable
      CH1BL             : IEN_CH1BL_Field := 16#0#;
      --  unspecified
      Reserved_8_14     : Interfaces.EFM32.UInt7 := 16#0#;
      --  EM23ERR Interrupt Enable
      EM23ERR           : IEN_EM23ERR_Field := 16#0#;
      --  OPA0APORTCONFLICT Interrupt Enable
      OPA0APORTCONFLICT : IEN_OPA0APORTCONFLICT_Field := 16#0#;
      --  OPA1APORTCONFLICT Interrupt Enable
      OPA1APORTCONFLICT : IEN_OPA1APORTCONFLICT_Field := 16#0#;
      --  OPA2APORTCONFLICT Interrupt Enable
      OPA2APORTCONFLICT : IEN_OPA2APORTCONFLICT_Field := 16#0#;
      --  OPA3APORTCONFLICT Interrupt Enable
      OPA3APORTCONFLICT : IEN_OPA3APORTCONFLICT_Field := 16#0#;
      --  OPA0PRSTIMEDERR Interrupt Enable
      OPA0PRSTIMEDERR   : IEN_OPA0PRSTIMEDERR_Field := 16#0#;
      --  OPA1PRSTIMEDERR Interrupt Enable
      OPA1PRSTIMEDERR   : IEN_OPA1PRSTIMEDERR_Field := 16#0#;
      --  OPA2PRSTIMEDERR Interrupt Enable
      OPA2PRSTIMEDERR   : IEN_OPA2PRSTIMEDERR_Field := 16#0#;
      --  OPA3PRSTIMEDERR Interrupt Enable
      OPA3PRSTIMEDERR   : IEN_OPA3PRSTIMEDERR_Field := 16#0#;
      --  unspecified
      Reserved_24_27    : Interfaces.EFM32.UInt4 := 16#0#;
      --  OPA0OUTVALID Interrupt Enable
      OPA0OUTVALID      : IEN_OPA0OUTVALID_Field := 16#0#;
      --  OPA1OUTVALID Interrupt Enable
      OPA1OUTVALID      : IEN_OPA1OUTVALID_Field := 16#0#;
      --  OPA2OUTVALID Interrupt Enable
      OPA2OUTVALID      : IEN_OPA2OUTVALID_Field := 16#0#;
      --  OPA3OUTVALID Interrupt Enable
      OPA3OUTVALID      : IEN_OPA3OUTVALID_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      CH0CD             at 0 range 0 .. 0;
      CH1CD             at 0 range 1 .. 1;
      CH0OF             at 0 range 2 .. 2;
      CH1OF             at 0 range 3 .. 3;
      CH0UF             at 0 range 4 .. 4;
      CH1UF             at 0 range 5 .. 5;
      CH0BL             at 0 range 6 .. 6;
      CH1BL             at 0 range 7 .. 7;
      Reserved_8_14     at 0 range 8 .. 14;
      EM23ERR           at 0 range 15 .. 15;
      OPA0APORTCONFLICT at 0 range 16 .. 16;
      OPA1APORTCONFLICT at 0 range 17 .. 17;
      OPA2APORTCONFLICT at 0 range 18 .. 18;
      OPA3APORTCONFLICT at 0 range 19 .. 19;
      OPA0PRSTIMEDERR   at 0 range 20 .. 20;
      OPA1PRSTIMEDERR   at 0 range 21 .. 21;
      OPA2PRSTIMEDERR   at 0 range 22 .. 22;
      OPA3PRSTIMEDERR   at 0 range 23 .. 23;
      Reserved_24_27    at 0 range 24 .. 27;
      OPA0OUTVALID      at 0 range 28 .. 28;
      OPA1OUTVALID      at 0 range 29 .. 29;
      OPA2OUTVALID      at 0 range 30 .. 30;
      OPA3OUTVALID      at 0 range 31 .. 31;
   end record;

   subtype CH0DATA_DATA_Field is Interfaces.EFM32.UInt12;

   --  Channel 0 Data Register
   type CH0DATA_Register is record
      --  Channel 0 Data
      DATA           : CH0DATA_DATA_Field := 16#800#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0DATA_Register use record
      DATA           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CH1DATA_DATA_Field is Interfaces.EFM32.UInt12;

   --  Channel 1 Data Register
   type CH1DATA_Register is record
      --  Channel 1 Data
      DATA           : CH1DATA_DATA_Field := 16#800#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1DATA_Register use record
      DATA           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype COMBDATA_CH0DATA_Field is Interfaces.EFM32.UInt12;
   subtype COMBDATA_CH1DATA_Field is Interfaces.EFM32.UInt12;

   --  Combined Data Register
   type COMBDATA_Register is record
      --  Channel 0 Data
      CH0DATA        : COMBDATA_CH0DATA_Field := 16#800#;
      --  unspecified
      Reserved_12_15 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Channel 1 Data
      CH1DATA        : COMBDATA_CH1DATA_Field := 16#800#;
      --  unspecified
      Reserved_28_31 : Interfaces.EFM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMBDATA_Register use record
      CH0DATA        at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      CH1DATA        at 0 range 16 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype CAL_OFFSETTRIM_Field is Interfaces.EFM32.UInt3;
   subtype CAL_GAINERRTRIM_Field is Interfaces.EFM32.UInt6;
   subtype CAL_GAINERRTRIMCH1_Field is Interfaces.EFM32.UInt4;

   --  Calibration Register
   type CAL_Register is record
      --  Input Buffer Offset Calibration Value
      OFFSETTRIM     : CAL_OFFSETTRIM_Field := 16#4#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Gain Error Trim Value
      GAINERRTRIM    : CAL_GAINERRTRIM_Field := 16#20#;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Gain Error Trim Value for CH1
      GAINERRTRIMCH1 : CAL_GAINERRTRIMCH1_Field := 16#8#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAL_Register use record
      OFFSETTRIM     at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      GAINERRTRIM    at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      GAINERRTRIMCH1 at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype OPA0_APORTREQ_APORT1XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA0_APORTREQ_APORT1YREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA0_APORTREQ_APORT2XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA0_APORTREQ_APORT2YREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA0_APORTREQ_APORT3XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA0_APORTREQ_APORT3YREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA0_APORTREQ_APORT4XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA0_APORTREQ_APORT4YREQ_Field is Interfaces.EFM32.Bit;

   --  Operational Amplifier APORT Request Status Register
   type OPA0_APORTREQ_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.EFM32.UInt2;
      --  Read-only. 1 If the Bus Connected to APORT2X is Requested
      APORT1XREQ     : OPA0_APORTREQ_APORT1XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT1X is Requested
      APORT1YREQ     : OPA0_APORTREQ_APORT1YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT2X is Requested
      APORT2XREQ     : OPA0_APORTREQ_APORT2XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT2Y is Requested
      APORT2YREQ     : OPA0_APORTREQ_APORT2YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT3X is Requested
      APORT3XREQ     : OPA0_APORTREQ_APORT3XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT3Y is Requested
      APORT3YREQ     : OPA0_APORTREQ_APORT3YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT4X is Requested
      APORT4XREQ     : OPA0_APORTREQ_APORT4XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT4Y is Requested
      APORT4YREQ     : OPA0_APORTREQ_APORT4YREQ_Field;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA0_APORTREQ_Register use record
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

   subtype OPA0_APORTCONFLICT_APORT1XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA0_APORTCONFLICT_APORT1YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA0_APORTCONFLICT_APORT2XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA0_APORTCONFLICT_APORT2YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA0_APORTCONFLICT_APORT3XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA0_APORTCONFLICT_APORT3YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA0_APORTCONFLICT_APORT4XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA0_APORTCONFLICT_APORT4YCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Operational Amplifier APORT Conflict Status Register
   type OPA0_APORTCONFLICT_Register is record
      --  unspecified
      Reserved_0_1    : Interfaces.EFM32.UInt2;
      --  Read-only. 1 If the Bus Connected to APORT1X is in Conflict With
      --  Another Peripheral
      APORT1XCONFLICT : OPA0_APORTCONFLICT_APORT1XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT1X is in Conflict With
      --  Another Peripheral
      APORT1YCONFLICT : OPA0_APORTCONFLICT_APORT1YCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT2X is in Conflict With
      --  Another Peripheral
      APORT2XCONFLICT : OPA0_APORTCONFLICT_APORT2XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT2Y is in Conflict With
      --  Another Peripheral
      APORT2YCONFLICT : OPA0_APORTCONFLICT_APORT2YCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT3X is in Conflict With
      --  Another Peripheral
      APORT3XCONFLICT : OPA0_APORTCONFLICT_APORT3XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT3Y is in Conflict With
      --  Another Peripheral
      APORT3YCONFLICT : OPA0_APORTCONFLICT_APORT3YCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT4X is in Conflict With
      --  Another Peripheral
      APORT4XCONFLICT : OPA0_APORTCONFLICT_APORT4XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT4Y is in Conflict With
      --  Another Peripheral
      APORT4YCONFLICT : OPA0_APORTCONFLICT_APORT4YCONFLICT_Field;
      --  unspecified
      Reserved_10_31  : Interfaces.EFM32.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA0_APORTCONFLICT_Register use record
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

   --  OPAx Operation Mode
   type OPA0_CTRL_DRIVESTRENGTH_Field is
     (--  Lower accuracy with Low drive strength.
      Val_0,
      --  Low accuracy with Low drive strength.
      Val_1,
      --  High accuracy with High drive strength.
      Val_2,
      --  Higher accuracy with High drive strength.
      Val_3)
     with Size => 2;
   for OPA0_CTRL_DRIVESTRENGTH_Field use
     (Val_0 => 0,
      Val_1 => 1,
      Val_2 => 2,
      Val_3 => 3);

   subtype OPA0_CTRL_INCBW_Field is Interfaces.EFM32.Bit;
   subtype OPA0_CTRL_HCMDIS_Field is Interfaces.EFM32.Bit;
   subtype OPA0_CTRL_OUTSCALE_Field is Interfaces.EFM32.Bit;
   subtype OPA0_CTRL_PRSEN_Field is Interfaces.EFM32.Bit;
   subtype OPA0_CTRL_PRSMODE_Field is Interfaces.EFM32.Bit;

   --  OPAx PRS Trigger Select
   type OPA0_CTRL_PRSSEL_Field is
     (--  PRS ch 0 triggers OPA.
      PRSCH0,
      --  PRS ch 1 triggers OPA.
      PRSCH1,
      --  PRS ch 2 triggers OPA.
      PRSCH2,
      --  PRS ch 3 triggers OPA.
      PRSCH3,
      --  PRS ch 4 triggers OPA.
      PRSCH4,
      --  PRS ch 5 triggers OPA.
      PRSCH5,
      --  PRS ch 6 triggers OPA.
      PRSCH6,
      --  PRS ch 7 triggers OPA.
      PRSCH7,
      --  PRS ch 8 triggers OPA.
      PRSCH8,
      --  PRS ch 9 triggers OPA.
      PRSCH9,
      --  PRS ch 10 triggers OPA.
      PRSCH10,
      --  PRS ch 11 triggers OPA.
      PRSCH11,
      --  PRS ch 12 triggers OPA.
      PRSCH12,
      --  PRS ch 13 triggers OPA.
      PRSCH13,
      --  PRS ch 14 triggers OPA.
      PRSCH14,
      --  PRS ch 15 triggers OPA.
      PRSCH15)
     with Size => 4;
   for OPA0_CTRL_PRSSEL_Field use
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

   subtype OPA0_CTRL_PRSOUTMODE_Field is Interfaces.EFM32.Bit;
   subtype OPA0_CTRL_APORTXMASTERDIS_Field is Interfaces.EFM32.Bit;
   subtype OPA0_CTRL_APORTYMASTERDIS_Field is Interfaces.EFM32.Bit;

   --  Operational Amplifier Control Register
   type OPA0_CTRL_Register is record
      --  OPAx Operation Mode
      DRIVESTRENGTH   : OPA0_CTRL_DRIVESTRENGTH_Field :=
                         Interfaces.EFM32.VDAC0.Val_2;
      --  OPAx Unity Gain Bandwidth Scale
      INCBW           : OPA0_CTRL_INCBW_Field := 16#1#;
      --  High Common Mode Disable
      HCMDIS          : OPA0_CTRL_HCMDIS_Field := 16#1#;
      --  Scale OPAx Output Driving Strength
      OUTSCALE        : OPA0_CTRL_OUTSCALE_Field := 16#0#;
      --  unspecified
      Reserved_5_7    : Interfaces.EFM32.UInt3 := 16#0#;
      --  OPAx PRS Trigger Enable
      PRSEN           : OPA0_CTRL_PRSEN_Field := 16#0#;
      --  OPAx PRS Trigger Mode
      PRSMODE         : OPA0_CTRL_PRSMODE_Field := 16#0#;
      --  OPAx PRS Trigger Select
      PRSSEL          : OPA0_CTRL_PRSSEL_Field :=
                         Interfaces.EFM32.VDAC0.PRSCH0;
      --  unspecified
      Reserved_14_15  : Interfaces.EFM32.UInt2 := 16#0#;
      --  OPAx PRS Output Select
      PRSOUTMODE      : OPA0_CTRL_PRSOUTMODE_Field := 16#0#;
      --  unspecified
      Reserved_17_19  : Interfaces.EFM32.UInt3 := 16#0#;
      --  APORT Bus Master Disable
      APORTXMASTERDIS : OPA0_CTRL_APORTXMASTERDIS_Field := 16#0#;
      --  APORT Bus Master Disable
      APORTYMASTERDIS : OPA0_CTRL_APORTYMASTERDIS_Field := 16#0#;
      --  unspecified
      Reserved_22_31  : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA0_CTRL_Register use record
      DRIVESTRENGTH   at 0 range 0 .. 1;
      INCBW           at 0 range 2 .. 2;
      HCMDIS          at 0 range 3 .. 3;
      OUTSCALE        at 0 range 4 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      PRSEN           at 0 range 8 .. 8;
      PRSMODE         at 0 range 9 .. 9;
      PRSSEL          at 0 range 10 .. 13;
      Reserved_14_15  at 0 range 14 .. 15;
      PRSOUTMODE      at 0 range 16 .. 16;
      Reserved_17_19  at 0 range 17 .. 19;
      APORTXMASTERDIS at 0 range 20 .. 20;
      APORTYMASTERDIS at 0 range 21 .. 21;
      Reserved_22_31  at 0 range 22 .. 31;
   end record;

   subtype OPA0_TIMER_STARTUPDLY_Field is Interfaces.EFM32.UInt6;
   subtype OPA0_TIMER_WARMUPTIME_Field is Interfaces.EFM32.UInt7;
   subtype OPA0_TIMER_SETTLETIME_Field is Interfaces.EFM32.UInt10;

   --  Operational Amplifier Timer Control Register
   type OPA0_TIMER_Register is record
      --  OPAx Startup Delay Count Value
      STARTUPDLY     : OPA0_TIMER_STARTUPDLY_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  OPAx Warmup Time Count Value
      WARMUPTIME     : OPA0_TIMER_WARMUPTIME_Field := 16#7#;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Output Settling Timeout Value
      SETTLETIME     : OPA0_TIMER_SETTLETIME_Field := 16#1#;
      --  unspecified
      Reserved_26_31 : Interfaces.EFM32.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA0_TIMER_Register use record
      STARTUPDLY     at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      WARMUPTIME     at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SETTLETIME     at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype OPA0_MUX_POSSEL_Field is Interfaces.EFM32.Byte;
   subtype OPA0_MUX_NEGSEL_Field is Interfaces.EFM32.Byte;

   --  OPAx Resistor Ladder Input Mux
   type OPA0_MUX_RESINMUX_Field is
     (--  Set for Unity Gain
      DISABLE,
      --  Set for NEXTOUT(x-1) input
      OPANEXT,
      --  NEG pad connected
      NEGPAD,
      --  POS pad connected
      POSPAD,
      --  Neg pad of OPA0 connected. Direct input to support common reference.
      COMPAD,
      --  OPA0 and OPA1 Resmux connected to form fully differential instrumentation
--  amplifier.
      CENTER,
      --  VSS connected
      VSS)
     with Size => 3;
   for OPA0_MUX_RESINMUX_Field use
     (DISABLE => 0,
      OPANEXT => 1,
      NEGPAD => 2,
      POSPAD => 3,
      COMPAD => 4,
      CENTER => 5,
      VSS => 6);

   subtype OPA0_MUX_GAIN3X_Field is Interfaces.EFM32.Bit;

   --  OPAx Resistor Ladder Select
   type OPA0_MUX_RESSEL_Field is
     (--  Gain of 1/3
      RES0,
      --  Gain of 1
      RES1,
      --  Gain of 1 2/3
      RES2,
      --  Gain of 2 1/5
      RES3,
      --  Gain of 3
      RES4,
      --  Gain of 4 1/3
      RES5,
      --  Gain of 7
      RES6,
      --  Gain of 15
      RES7)
     with Size => 3;
   for OPA0_MUX_RESSEL_Field use
     (RES0 => 0,
      RES1 => 1,
      RES2 => 2,
      RES3 => 3,
      RES4 => 4,
      RES5 => 5,
      RES6 => 6,
      RES7 => 7);

   --  Operational Amplifier Mux Configuration Register
   type OPA0_MUX_Register is record
      --  OPAx Non-inverting Input Mux
      POSSEL         : OPA0_MUX_POSSEL_Field := 16#F1#;
      --  OPAx Inverting Input Mux
      NEGSEL         : OPA0_MUX_NEGSEL_Field := 16#F2#;
      --  OPAx Resistor Ladder Input Mux
      RESINMUX       : OPA0_MUX_RESINMUX_Field := Interfaces.EFM32.VDAC0.VSS;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Dedicated 3x Gain Resistor Ladder
      GAIN3X         : OPA0_MUX_GAIN3X_Field := 16#1#;
      --  unspecified
      Reserved_21_23 : Interfaces.EFM32.UInt3 := 16#0#;
      --  OPAx Resistor Ladder Select
      RESSEL         : OPA0_MUX_RESSEL_Field := Interfaces.EFM32.VDAC0.RES0;
      --  unspecified
      Reserved_27_31 : Interfaces.EFM32.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA0_MUX_Register use record
      POSSEL         at 0 range 0 .. 7;
      NEGSEL         at 0 range 8 .. 15;
      RESINMUX       at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      GAIN3X         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      RESSEL         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype OPA0_OUT_MAINOUTEN_Field is Interfaces.EFM32.Bit;
   subtype OPA0_OUT_ALTOUTEN_Field is Interfaces.EFM32.Bit;
   subtype OPA0_OUT_APORTOUTEN_Field is Interfaces.EFM32.Bit;
   subtype OPA0_OUT_SHORT_Field is Interfaces.EFM32.Bit;

   --  OPAx Output Enable Value
   type OPA0_OUT_ALTOUTPADEN_Field is
     (--  Reset value for the field
      OPA0_OUT_ALTOUTPADEN_Field_Reset,
      --  Alternate Output 0
      OUT0,
      --  Alternate Output 1
      OUT1,
      --  Alternate Output 2
      OUT2,
      --  Alternate Output 3
      OUT3,
      --  Alternate Output 4
      OUT4)
     with Size => 5;
   for OPA0_OUT_ALTOUTPADEN_Field use
     (OPA0_OUT_ALTOUTPADEN_Field_Reset => 0,
      OUT0 => 1,
      OUT1 => 2,
      OUT2 => 4,
      OUT3 => 8,
      OUT4 => 16);

   subtype OPA0_OUT_APORTOUTSEL_Field is Interfaces.EFM32.Byte;

   --  Operational Amplifier Output Configuration Register
   type OPA0_OUT_Register is record
      --  OPAx Main Output Enable
      MAINOUTEN      : OPA0_OUT_MAINOUTEN_Field := 16#1#;
      --  OPAx Alternative Output Enable
      ALTOUTEN       : OPA0_OUT_ALTOUTEN_Field := 16#0#;
      --  OPAx Aport Output Enable
      APORTOUTEN     : OPA0_OUT_APORTOUTEN_Field := 16#0#;
      --  OPAx Main and Alternative Output Short
      SHORT          : OPA0_OUT_SHORT_Field := 16#0#;
      --  OPAx Output Enable Value
      ALTOUTPADEN    : OPA0_OUT_ALTOUTPADEN_Field :=
                        OPA0_OUT_ALTOUTPADEN_Field_Reset;
      --  unspecified
      Reserved_9_15  : Interfaces.EFM32.UInt7 := 16#0#;
      --  OPAx APORT Output
      APORTOUTSEL    : OPA0_OUT_APORTOUTSEL_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA0_OUT_Register use record
      MAINOUTEN      at 0 range 0 .. 0;
      ALTOUTEN       at 0 range 1 .. 1;
      APORTOUTEN     at 0 range 2 .. 2;
      SHORT          at 0 range 3 .. 3;
      ALTOUTPADEN    at 0 range 4 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      APORTOUTSEL    at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype OPA0_CAL_CM1_Field is Interfaces.EFM32.UInt4;
   subtype OPA0_CAL_CM2_Field is Interfaces.EFM32.UInt4;
   subtype OPA0_CAL_CM3_Field is Interfaces.EFM32.UInt2;
   subtype OPA0_CAL_GM_Field is Interfaces.EFM32.UInt3;
   subtype OPA0_CAL_GM3_Field is Interfaces.EFM32.UInt2;
   subtype OPA0_CAL_OFFSETP_Field is Interfaces.EFM32.UInt5;
   subtype OPA0_CAL_OFFSETN_Field is Interfaces.EFM32.UInt5;

   --  Operational Amplifier Calibration Register
   type OPA0_CAL_Register is record
      --  Compensation Cap Cm1 Trim Value
      CM1            : OPA0_CAL_CM1_Field := 16#7#;
      --  unspecified
      Reserved_4_4   : Interfaces.EFM32.Bit := 16#0#;
      --  Compensation Cap Cm2 Trim Value
      CM2            : OPA0_CAL_CM2_Field := 16#7#;
      --  unspecified
      Reserved_9_9   : Interfaces.EFM32.Bit := 16#0#;
      --  Compensation Cap Cm3 Trim Value
      CM3            : OPA0_CAL_CM3_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.EFM32.Bit := 16#0#;
      --  Gm Trim Value
      GM             : OPA0_CAL_GM_Field := 16#4#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Gm3 Trim Value
      GM3            : OPA0_CAL_GM3_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Non-Inverting Input Offset Configuration Value
      OFFSETP        : OPA0_CAL_OFFSETP_Field := 16#0#;
      --  unspecified
      Reserved_25_25 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Inverting Input Offset Configuration Value
      OFFSETN        : OPA0_CAL_OFFSETN_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA0_CAL_Register use record
      CM1            at 0 range 0 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      CM2            at 0 range 5 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA1_APORTREQ_APORT1XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA1_APORTREQ_APORT1YREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA1_APORTREQ_APORT2XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA1_APORTREQ_APORT2YREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA1_APORTREQ_APORT3XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA1_APORTREQ_APORT3YREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA1_APORTREQ_APORT4XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA1_APORTREQ_APORT4YREQ_Field is Interfaces.EFM32.Bit;

   --  Operational Amplifier APORT Request Status Register
   type OPA1_APORTREQ_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.EFM32.UInt2;
      --  Read-only. 1 If the Bus Connected to APORT2X is Requested
      APORT1XREQ     : OPA1_APORTREQ_APORT1XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT1X is Requested
      APORT1YREQ     : OPA1_APORTREQ_APORT1YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT2X is Requested
      APORT2XREQ     : OPA1_APORTREQ_APORT2XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT2Y is Requested
      APORT2YREQ     : OPA1_APORTREQ_APORT2YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT3X is Requested
      APORT3XREQ     : OPA1_APORTREQ_APORT3XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT3Y is Requested
      APORT3YREQ     : OPA1_APORTREQ_APORT3YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT4X is Requested
      APORT4XREQ     : OPA1_APORTREQ_APORT4XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT4Y is Requested
      APORT4YREQ     : OPA1_APORTREQ_APORT4YREQ_Field;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA1_APORTREQ_Register use record
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

   subtype OPA1_APORTCONFLICT_APORT1XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA1_APORTCONFLICT_APORT1YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA1_APORTCONFLICT_APORT2XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA1_APORTCONFLICT_APORT2YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA1_APORTCONFLICT_APORT3XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA1_APORTCONFLICT_APORT3YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA1_APORTCONFLICT_APORT4XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA1_APORTCONFLICT_APORT4YCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Operational Amplifier APORT Conflict Status Register
   type OPA1_APORTCONFLICT_Register is record
      --  unspecified
      Reserved_0_1    : Interfaces.EFM32.UInt2;
      --  Read-only. 1 If the Bus Connected to APORT1X is in Conflict With
      --  Another Peripheral
      APORT1XCONFLICT : OPA1_APORTCONFLICT_APORT1XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT1X is in Conflict With
      --  Another Peripheral
      APORT1YCONFLICT : OPA1_APORTCONFLICT_APORT1YCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT2X is in Conflict With
      --  Another Peripheral
      APORT2XCONFLICT : OPA1_APORTCONFLICT_APORT2XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT2Y is in Conflict With
      --  Another Peripheral
      APORT2YCONFLICT : OPA1_APORTCONFLICT_APORT2YCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT3X is in Conflict With
      --  Another Peripheral
      APORT3XCONFLICT : OPA1_APORTCONFLICT_APORT3XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT3Y is in Conflict With
      --  Another Peripheral
      APORT3YCONFLICT : OPA1_APORTCONFLICT_APORT3YCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT4X is in Conflict With
      --  Another Peripheral
      APORT4XCONFLICT : OPA1_APORTCONFLICT_APORT4XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT4Y is in Conflict With
      --  Another Peripheral
      APORT4YCONFLICT : OPA1_APORTCONFLICT_APORT4YCONFLICT_Field;
      --  unspecified
      Reserved_10_31  : Interfaces.EFM32.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA1_APORTCONFLICT_Register use record
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

   --  OPAx Operation Mode
   type OPA1_CTRL_DRIVESTRENGTH_Field is
     (--  Lower accuracy with Low drive strength.
      Val_0,
      --  Low accuracy with Low drive strength.
      Val_1,
      --  High accuracy with High drive strength.
      Val_2,
      --  Higher accuracy with High drive strength.
      Val_3)
     with Size => 2;
   for OPA1_CTRL_DRIVESTRENGTH_Field use
     (Val_0 => 0,
      Val_1 => 1,
      Val_2 => 2,
      Val_3 => 3);

   subtype OPA1_CTRL_INCBW_Field is Interfaces.EFM32.Bit;
   subtype OPA1_CTRL_HCMDIS_Field is Interfaces.EFM32.Bit;
   subtype OPA1_CTRL_OUTSCALE_Field is Interfaces.EFM32.Bit;
   subtype OPA1_CTRL_PRSEN_Field is Interfaces.EFM32.Bit;
   subtype OPA1_CTRL_PRSMODE_Field is Interfaces.EFM32.Bit;

   --  OPAx PRS Trigger Select
   type OPA1_CTRL_PRSSEL_Field is
     (--  PRS ch 0 triggers OPA.
      PRSCH0,
      --  PRS ch 1 triggers OPA.
      PRSCH1,
      --  PRS ch 2 triggers OPA.
      PRSCH2,
      --  PRS ch 3 triggers OPA.
      PRSCH3,
      --  PRS ch 4 triggers OPA.
      PRSCH4,
      --  PRS ch 5 triggers OPA.
      PRSCH5,
      --  PRS ch 6 triggers OPA.
      PRSCH6,
      --  PRS ch 7 triggers OPA.
      PRSCH7,
      --  PRS ch 8 triggers OPA.
      PRSCH8,
      --  PRS ch 9 triggers OPA.
      PRSCH9,
      --  PRS ch 10 triggers OPA.
      PRSCH10,
      --  PRS ch 11 triggers OPA.
      PRSCH11,
      --  PRS ch 12 triggers OPA.
      PRSCH12,
      --  PRS ch 13 triggers OPA.
      PRSCH13,
      --  PRS ch 14 triggers OPA.
      PRSCH14,
      --  PRS ch 15 triggers OPA.
      PRSCH15)
     with Size => 4;
   for OPA1_CTRL_PRSSEL_Field use
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

   subtype OPA1_CTRL_PRSOUTMODE_Field is Interfaces.EFM32.Bit;
   subtype OPA1_CTRL_APORTXMASTERDIS_Field is Interfaces.EFM32.Bit;
   subtype OPA1_CTRL_APORTYMASTERDIS_Field is Interfaces.EFM32.Bit;

   --  Operational Amplifier Control Register
   type OPA1_CTRL_Register is record
      --  OPAx Operation Mode
      DRIVESTRENGTH   : OPA1_CTRL_DRIVESTRENGTH_Field :=
                         Interfaces.EFM32.VDAC0.Val_2;
      --  OPAx Unity Gain Bandwidth Scale
      INCBW           : OPA1_CTRL_INCBW_Field := 16#1#;
      --  High Common Mode Disable
      HCMDIS          : OPA1_CTRL_HCMDIS_Field := 16#1#;
      --  Scale OPAx Output Driving Strength
      OUTSCALE        : OPA1_CTRL_OUTSCALE_Field := 16#0#;
      --  unspecified
      Reserved_5_7    : Interfaces.EFM32.UInt3 := 16#0#;
      --  OPAx PRS Trigger Enable
      PRSEN           : OPA1_CTRL_PRSEN_Field := 16#0#;
      --  OPAx PRS Trigger Mode
      PRSMODE         : OPA1_CTRL_PRSMODE_Field := 16#0#;
      --  OPAx PRS Trigger Select
      PRSSEL          : OPA1_CTRL_PRSSEL_Field :=
                         Interfaces.EFM32.VDAC0.PRSCH0;
      --  unspecified
      Reserved_14_15  : Interfaces.EFM32.UInt2 := 16#0#;
      --  OPAx PRS Output Select
      PRSOUTMODE      : OPA1_CTRL_PRSOUTMODE_Field := 16#0#;
      --  unspecified
      Reserved_17_19  : Interfaces.EFM32.UInt3 := 16#0#;
      --  APORT Bus Master Disable
      APORTXMASTERDIS : OPA1_CTRL_APORTXMASTERDIS_Field := 16#0#;
      --  APORT Bus Master Disable
      APORTYMASTERDIS : OPA1_CTRL_APORTYMASTERDIS_Field := 16#0#;
      --  unspecified
      Reserved_22_31  : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA1_CTRL_Register use record
      DRIVESTRENGTH   at 0 range 0 .. 1;
      INCBW           at 0 range 2 .. 2;
      HCMDIS          at 0 range 3 .. 3;
      OUTSCALE        at 0 range 4 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      PRSEN           at 0 range 8 .. 8;
      PRSMODE         at 0 range 9 .. 9;
      PRSSEL          at 0 range 10 .. 13;
      Reserved_14_15  at 0 range 14 .. 15;
      PRSOUTMODE      at 0 range 16 .. 16;
      Reserved_17_19  at 0 range 17 .. 19;
      APORTXMASTERDIS at 0 range 20 .. 20;
      APORTYMASTERDIS at 0 range 21 .. 21;
      Reserved_22_31  at 0 range 22 .. 31;
   end record;

   subtype OPA1_TIMER_STARTUPDLY_Field is Interfaces.EFM32.UInt6;
   subtype OPA1_TIMER_WARMUPTIME_Field is Interfaces.EFM32.UInt7;
   subtype OPA1_TIMER_SETTLETIME_Field is Interfaces.EFM32.UInt10;

   --  Operational Amplifier Timer Control Register
   type OPA1_TIMER_Register is record
      --  OPAx Startup Delay Count Value
      STARTUPDLY     : OPA1_TIMER_STARTUPDLY_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  OPAx Warmup Time Count Value
      WARMUPTIME     : OPA1_TIMER_WARMUPTIME_Field := 16#7#;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Output Settling Timeout Value
      SETTLETIME     : OPA1_TIMER_SETTLETIME_Field := 16#1#;
      --  unspecified
      Reserved_26_31 : Interfaces.EFM32.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA1_TIMER_Register use record
      STARTUPDLY     at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      WARMUPTIME     at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SETTLETIME     at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype OPA1_MUX_POSSEL_Field is Interfaces.EFM32.Byte;
   subtype OPA1_MUX_NEGSEL_Field is Interfaces.EFM32.Byte;

   --  OPAx Resistor Ladder Input Mux
   type OPA1_MUX_RESINMUX_Field is
     (--  Set for Unity Gain
      DISABLE,
      --  Set for NEXTOUT(x-1) input
      OPANEXT,
      --  NEG pad connected
      NEGPAD,
      --  POS pad connected
      POSPAD,
      --  Neg pad of OPA0 connected. Direct input to support common reference.
      COMPAD,
      --  OPA0 and OPA1 Resmux connected to form fully differential instrumentation
--  amplifier.
      CENTER,
      --  VSS connected
      VSS)
     with Size => 3;
   for OPA1_MUX_RESINMUX_Field use
     (DISABLE => 0,
      OPANEXT => 1,
      NEGPAD => 2,
      POSPAD => 3,
      COMPAD => 4,
      CENTER => 5,
      VSS => 6);

   subtype OPA1_MUX_GAIN3X_Field is Interfaces.EFM32.Bit;

   --  OPAx Resistor Ladder Select
   type OPA1_MUX_RESSEL_Field is
     (--  Gain of 1/3
      RES0,
      --  Gain of 1
      RES1,
      --  Gain of 1 2/3
      RES2,
      --  Gain of 2 1/5
      RES3,
      --  Gain of 3
      RES4,
      --  Gain of 4 1/3
      RES5,
      --  Gain of 7
      RES6,
      --  Gain of 15
      RES7)
     with Size => 3;
   for OPA1_MUX_RESSEL_Field use
     (RES0 => 0,
      RES1 => 1,
      RES2 => 2,
      RES3 => 3,
      RES4 => 4,
      RES5 => 5,
      RES6 => 6,
      RES7 => 7);

   --  Operational Amplifier Mux Configuration Register
   type OPA1_MUX_Register is record
      --  OPAx Non-inverting Input Mux
      POSSEL         : OPA1_MUX_POSSEL_Field := 16#F1#;
      --  OPAx Inverting Input Mux
      NEGSEL         : OPA1_MUX_NEGSEL_Field := 16#F2#;
      --  OPAx Resistor Ladder Input Mux
      RESINMUX       : OPA1_MUX_RESINMUX_Field := Interfaces.EFM32.VDAC0.VSS;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Dedicated 3x Gain Resistor Ladder
      GAIN3X         : OPA1_MUX_GAIN3X_Field := 16#1#;
      --  unspecified
      Reserved_21_23 : Interfaces.EFM32.UInt3 := 16#0#;
      --  OPAx Resistor Ladder Select
      RESSEL         : OPA1_MUX_RESSEL_Field := Interfaces.EFM32.VDAC0.RES0;
      --  unspecified
      Reserved_27_31 : Interfaces.EFM32.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA1_MUX_Register use record
      POSSEL         at 0 range 0 .. 7;
      NEGSEL         at 0 range 8 .. 15;
      RESINMUX       at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      GAIN3X         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      RESSEL         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype OPA1_OUT_MAINOUTEN_Field is Interfaces.EFM32.Bit;
   subtype OPA1_OUT_ALTOUTEN_Field is Interfaces.EFM32.Bit;
   subtype OPA1_OUT_APORTOUTEN_Field is Interfaces.EFM32.Bit;
   subtype OPA1_OUT_SHORT_Field is Interfaces.EFM32.Bit;

   --  OPAx Output Enable Value
   type OPA1_OUT_ALTOUTPADEN_Field is
     (--  Reset value for the field
      OPA1_OUT_ALTOUTPADEN_Field_Reset,
      --  Alternate Output 0
      OUT0,
      --  Alternate Output 1
      OUT1,
      --  Alternate Output 2
      OUT2,
      --  Alternate Output 3
      OUT3,
      --  Alternate Output 4
      OUT4)
     with Size => 5;
   for OPA1_OUT_ALTOUTPADEN_Field use
     (OPA1_OUT_ALTOUTPADEN_Field_Reset => 0,
      OUT0 => 1,
      OUT1 => 2,
      OUT2 => 4,
      OUT3 => 8,
      OUT4 => 16);

   subtype OPA1_OUT_APORTOUTSEL_Field is Interfaces.EFM32.Byte;

   --  Operational Amplifier Output Configuration Register
   type OPA1_OUT_Register is record
      --  OPAx Main Output Enable
      MAINOUTEN      : OPA1_OUT_MAINOUTEN_Field := 16#1#;
      --  OPAx Alternative Output Enable
      ALTOUTEN       : OPA1_OUT_ALTOUTEN_Field := 16#0#;
      --  OPAx Aport Output Enable
      APORTOUTEN     : OPA1_OUT_APORTOUTEN_Field := 16#0#;
      --  OPAx Main and Alternative Output Short
      SHORT          : OPA1_OUT_SHORT_Field := 16#0#;
      --  OPAx Output Enable Value
      ALTOUTPADEN    : OPA1_OUT_ALTOUTPADEN_Field :=
                        OPA1_OUT_ALTOUTPADEN_Field_Reset;
      --  unspecified
      Reserved_9_15  : Interfaces.EFM32.UInt7 := 16#0#;
      --  OPAx APORT Output
      APORTOUTSEL    : OPA1_OUT_APORTOUTSEL_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA1_OUT_Register use record
      MAINOUTEN      at 0 range 0 .. 0;
      ALTOUTEN       at 0 range 1 .. 1;
      APORTOUTEN     at 0 range 2 .. 2;
      SHORT          at 0 range 3 .. 3;
      ALTOUTPADEN    at 0 range 4 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      APORTOUTSEL    at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype OPA1_CAL_CM1_Field is Interfaces.EFM32.UInt4;
   subtype OPA1_CAL_CM2_Field is Interfaces.EFM32.UInt4;
   subtype OPA1_CAL_CM3_Field is Interfaces.EFM32.UInt2;
   subtype OPA1_CAL_GM_Field is Interfaces.EFM32.UInt3;
   subtype OPA1_CAL_GM3_Field is Interfaces.EFM32.UInt2;
   subtype OPA1_CAL_OFFSETP_Field is Interfaces.EFM32.UInt5;
   subtype OPA1_CAL_OFFSETN_Field is Interfaces.EFM32.UInt5;

   --  Operational Amplifier Calibration Register
   type OPA1_CAL_Register is record
      --  Compensation Cap Cm1 Trim Value
      CM1            : OPA1_CAL_CM1_Field := 16#7#;
      --  unspecified
      Reserved_4_4   : Interfaces.EFM32.Bit := 16#0#;
      --  Compensation Cap Cm2 Trim Value
      CM2            : OPA1_CAL_CM2_Field := 16#7#;
      --  unspecified
      Reserved_9_9   : Interfaces.EFM32.Bit := 16#0#;
      --  Compensation Cap Cm3 Trim Value
      CM3            : OPA1_CAL_CM3_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.EFM32.Bit := 16#0#;
      --  Gm Trim Value
      GM             : OPA1_CAL_GM_Field := 16#4#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Gm3 Trim Value
      GM3            : OPA1_CAL_GM3_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Non-Inverting Input Offset Configuration Value
      OFFSETP        : OPA1_CAL_OFFSETP_Field := 16#0#;
      --  unspecified
      Reserved_25_25 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Inverting Input Offset Configuration Value
      OFFSETN        : OPA1_CAL_OFFSETN_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA1_CAL_Register use record
      CM1            at 0 range 0 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      CM2            at 0 range 5 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA2_APORTREQ_APORT1XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA2_APORTREQ_APORT1YREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA2_APORTREQ_APORT2XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA2_APORTREQ_APORT2YREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA2_APORTREQ_APORT3XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA2_APORTREQ_APORT3YREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA2_APORTREQ_APORT4XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA2_APORTREQ_APORT4YREQ_Field is Interfaces.EFM32.Bit;

   --  Operational Amplifier APORT Request Status Register
   type OPA2_APORTREQ_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.EFM32.UInt2;
      --  Read-only. 1 If the Bus Connected to APORT2X is Requested
      APORT1XREQ     : OPA2_APORTREQ_APORT1XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT1X is Requested
      APORT1YREQ     : OPA2_APORTREQ_APORT1YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT2X is Requested
      APORT2XREQ     : OPA2_APORTREQ_APORT2XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT2Y is Requested
      APORT2YREQ     : OPA2_APORTREQ_APORT2YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT3X is Requested
      APORT3XREQ     : OPA2_APORTREQ_APORT3XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT3Y is Requested
      APORT3YREQ     : OPA2_APORTREQ_APORT3YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT4X is Requested
      APORT4XREQ     : OPA2_APORTREQ_APORT4XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT4Y is Requested
      APORT4YREQ     : OPA2_APORTREQ_APORT4YREQ_Field;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA2_APORTREQ_Register use record
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

   subtype OPA2_APORTCONFLICT_APORT1XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA2_APORTCONFLICT_APORT1YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA2_APORTCONFLICT_APORT2XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA2_APORTCONFLICT_APORT2YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA2_APORTCONFLICT_APORT3XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA2_APORTCONFLICT_APORT3YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA2_APORTCONFLICT_APORT4XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA2_APORTCONFLICT_APORT4YCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Operational Amplifier APORT Conflict Status Register
   type OPA2_APORTCONFLICT_Register is record
      --  unspecified
      Reserved_0_1    : Interfaces.EFM32.UInt2;
      --  Read-only. 1 If the Bus Connected to APORT1X is in Conflict With
      --  Another Peripheral
      APORT1XCONFLICT : OPA2_APORTCONFLICT_APORT1XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT1X is in Conflict With
      --  Another Peripheral
      APORT1YCONFLICT : OPA2_APORTCONFLICT_APORT1YCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT2X is in Conflict With
      --  Another Peripheral
      APORT2XCONFLICT : OPA2_APORTCONFLICT_APORT2XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT2Y is in Conflict With
      --  Another Peripheral
      APORT2YCONFLICT : OPA2_APORTCONFLICT_APORT2YCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT3X is in Conflict With
      --  Another Peripheral
      APORT3XCONFLICT : OPA2_APORTCONFLICT_APORT3XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT3Y is in Conflict With
      --  Another Peripheral
      APORT3YCONFLICT : OPA2_APORTCONFLICT_APORT3YCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT4X is in Conflict With
      --  Another Peripheral
      APORT4XCONFLICT : OPA2_APORTCONFLICT_APORT4XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT4Y is in Conflict With
      --  Another Peripheral
      APORT4YCONFLICT : OPA2_APORTCONFLICT_APORT4YCONFLICT_Field;
      --  unspecified
      Reserved_10_31  : Interfaces.EFM32.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA2_APORTCONFLICT_Register use record
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

   --  OPAx Operation Mode
   type OPA2_CTRL_DRIVESTRENGTH_Field is
     (--  Lower accuracy with Low drive strength.
      Val_0,
      --  Low accuracy with Low drive strength.
      Val_1,
      --  High accuracy with High drive strength.
      Val_2,
      --  Higher accuracy with High drive strength.
      Val_3)
     with Size => 2;
   for OPA2_CTRL_DRIVESTRENGTH_Field use
     (Val_0 => 0,
      Val_1 => 1,
      Val_2 => 2,
      Val_3 => 3);

   subtype OPA2_CTRL_INCBW_Field is Interfaces.EFM32.Bit;
   subtype OPA2_CTRL_HCMDIS_Field is Interfaces.EFM32.Bit;
   subtype OPA2_CTRL_OUTSCALE_Field is Interfaces.EFM32.Bit;
   subtype OPA2_CTRL_PRSEN_Field is Interfaces.EFM32.Bit;
   subtype OPA2_CTRL_PRSMODE_Field is Interfaces.EFM32.Bit;

   --  OPAx PRS Trigger Select
   type OPA2_CTRL_PRSSEL_Field is
     (--  PRS ch 0 triggers OPA.
      PRSCH0,
      --  PRS ch 1 triggers OPA.
      PRSCH1,
      --  PRS ch 2 triggers OPA.
      PRSCH2,
      --  PRS ch 3 triggers OPA.
      PRSCH3,
      --  PRS ch 4 triggers OPA.
      PRSCH4,
      --  PRS ch 5 triggers OPA.
      PRSCH5,
      --  PRS ch 6 triggers OPA.
      PRSCH6,
      --  PRS ch 7 triggers OPA.
      PRSCH7,
      --  PRS ch 8 triggers OPA.
      PRSCH8,
      --  PRS ch 9 triggers OPA.
      PRSCH9,
      --  PRS ch 10 triggers OPA.
      PRSCH10,
      --  PRS ch 11 triggers OPA.
      PRSCH11,
      --  PRS ch 12 triggers OPA.
      PRSCH12,
      --  PRS ch 13 triggers OPA.
      PRSCH13,
      --  PRS ch 14 triggers OPA.
      PRSCH14,
      --  PRS ch 15 triggers OPA.
      PRSCH15)
     with Size => 4;
   for OPA2_CTRL_PRSSEL_Field use
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

   subtype OPA2_CTRL_PRSOUTMODE_Field is Interfaces.EFM32.Bit;
   subtype OPA2_CTRL_APORTXMASTERDIS_Field is Interfaces.EFM32.Bit;
   subtype OPA2_CTRL_APORTYMASTERDIS_Field is Interfaces.EFM32.Bit;

   --  Operational Amplifier Control Register
   type OPA2_CTRL_Register is record
      --  OPAx Operation Mode
      DRIVESTRENGTH   : OPA2_CTRL_DRIVESTRENGTH_Field :=
                         Interfaces.EFM32.VDAC0.Val_2;
      --  OPAx Unity Gain Bandwidth Scale
      INCBW           : OPA2_CTRL_INCBW_Field := 16#1#;
      --  High Common Mode Disable
      HCMDIS          : OPA2_CTRL_HCMDIS_Field := 16#1#;
      --  Scale OPAx Output Driving Strength
      OUTSCALE        : OPA2_CTRL_OUTSCALE_Field := 16#0#;
      --  unspecified
      Reserved_5_7    : Interfaces.EFM32.UInt3 := 16#0#;
      --  OPAx PRS Trigger Enable
      PRSEN           : OPA2_CTRL_PRSEN_Field := 16#0#;
      --  OPAx PRS Trigger Mode
      PRSMODE         : OPA2_CTRL_PRSMODE_Field := 16#0#;
      --  OPAx PRS Trigger Select
      PRSSEL          : OPA2_CTRL_PRSSEL_Field :=
                         Interfaces.EFM32.VDAC0.PRSCH0;
      --  unspecified
      Reserved_14_15  : Interfaces.EFM32.UInt2 := 16#0#;
      --  OPAx PRS Output Select
      PRSOUTMODE      : OPA2_CTRL_PRSOUTMODE_Field := 16#0#;
      --  unspecified
      Reserved_17_19  : Interfaces.EFM32.UInt3 := 16#0#;
      --  APORT Bus Master Disable
      APORTXMASTERDIS : OPA2_CTRL_APORTXMASTERDIS_Field := 16#0#;
      --  APORT Bus Master Disable
      APORTYMASTERDIS : OPA2_CTRL_APORTYMASTERDIS_Field := 16#0#;
      --  unspecified
      Reserved_22_31  : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA2_CTRL_Register use record
      DRIVESTRENGTH   at 0 range 0 .. 1;
      INCBW           at 0 range 2 .. 2;
      HCMDIS          at 0 range 3 .. 3;
      OUTSCALE        at 0 range 4 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      PRSEN           at 0 range 8 .. 8;
      PRSMODE         at 0 range 9 .. 9;
      PRSSEL          at 0 range 10 .. 13;
      Reserved_14_15  at 0 range 14 .. 15;
      PRSOUTMODE      at 0 range 16 .. 16;
      Reserved_17_19  at 0 range 17 .. 19;
      APORTXMASTERDIS at 0 range 20 .. 20;
      APORTYMASTERDIS at 0 range 21 .. 21;
      Reserved_22_31  at 0 range 22 .. 31;
   end record;

   subtype OPA2_TIMER_STARTUPDLY_Field is Interfaces.EFM32.UInt6;
   subtype OPA2_TIMER_WARMUPTIME_Field is Interfaces.EFM32.UInt7;
   subtype OPA2_TIMER_SETTLETIME_Field is Interfaces.EFM32.UInt10;

   --  Operational Amplifier Timer Control Register
   type OPA2_TIMER_Register is record
      --  OPAx Startup Delay Count Value
      STARTUPDLY     : OPA2_TIMER_STARTUPDLY_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  OPAx Warmup Time Count Value
      WARMUPTIME     : OPA2_TIMER_WARMUPTIME_Field := 16#7#;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Output Settling Timeout Value
      SETTLETIME     : OPA2_TIMER_SETTLETIME_Field := 16#1#;
      --  unspecified
      Reserved_26_31 : Interfaces.EFM32.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA2_TIMER_Register use record
      STARTUPDLY     at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      WARMUPTIME     at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SETTLETIME     at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype OPA2_MUX_POSSEL_Field is Interfaces.EFM32.Byte;
   subtype OPA2_MUX_NEGSEL_Field is Interfaces.EFM32.Byte;

   --  OPAx Resistor Ladder Input Mux
   type OPA2_MUX_RESINMUX_Field is
     (--  Set for Unity Gain
      DISABLE,
      --  Set for NEXTOUT(x-1) input
      OPANEXT,
      --  NEG pad connected
      NEGPAD,
      --  POS pad connected
      POSPAD,
      --  Neg pad of OPA0 connected. Direct input to support common reference.
      COMPAD,
      --  OPA0 and OPA1 Resmux connected to form fully differential instrumentation
--  amplifier.
      CENTER,
      --  VSS connected
      VSS)
     with Size => 3;
   for OPA2_MUX_RESINMUX_Field use
     (DISABLE => 0,
      OPANEXT => 1,
      NEGPAD => 2,
      POSPAD => 3,
      COMPAD => 4,
      CENTER => 5,
      VSS => 6);

   subtype OPA2_MUX_GAIN3X_Field is Interfaces.EFM32.Bit;

   --  OPAx Resistor Ladder Select
   type OPA2_MUX_RESSEL_Field is
     (--  Gain of 1/3
      RES0,
      --  Gain of 1
      RES1,
      --  Gain of 1 2/3
      RES2,
      --  Gain of 2 1/5
      RES3,
      --  Gain of 3
      RES4,
      --  Gain of 4 1/3
      RES5,
      --  Gain of 7
      RES6,
      --  Gain of 15
      RES7)
     with Size => 3;
   for OPA2_MUX_RESSEL_Field use
     (RES0 => 0,
      RES1 => 1,
      RES2 => 2,
      RES3 => 3,
      RES4 => 4,
      RES5 => 5,
      RES6 => 6,
      RES7 => 7);

   --  Operational Amplifier Mux Configuration Register
   type OPA2_MUX_Register is record
      --  OPAx Non-inverting Input Mux
      POSSEL         : OPA2_MUX_POSSEL_Field := 16#F1#;
      --  OPAx Inverting Input Mux
      NEGSEL         : OPA2_MUX_NEGSEL_Field := 16#F2#;
      --  OPAx Resistor Ladder Input Mux
      RESINMUX       : OPA2_MUX_RESINMUX_Field := Interfaces.EFM32.VDAC0.VSS;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Dedicated 3x Gain Resistor Ladder
      GAIN3X         : OPA2_MUX_GAIN3X_Field := 16#1#;
      --  unspecified
      Reserved_21_23 : Interfaces.EFM32.UInt3 := 16#0#;
      --  OPAx Resistor Ladder Select
      RESSEL         : OPA2_MUX_RESSEL_Field := Interfaces.EFM32.VDAC0.RES0;
      --  unspecified
      Reserved_27_31 : Interfaces.EFM32.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA2_MUX_Register use record
      POSSEL         at 0 range 0 .. 7;
      NEGSEL         at 0 range 8 .. 15;
      RESINMUX       at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      GAIN3X         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      RESSEL         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype OPA2_OUT_MAINOUTEN_Field is Interfaces.EFM32.Bit;
   subtype OPA2_OUT_ALTOUTEN_Field is Interfaces.EFM32.Bit;
   subtype OPA2_OUT_APORTOUTEN_Field is Interfaces.EFM32.Bit;
   subtype OPA2_OUT_SHORT_Field is Interfaces.EFM32.Bit;

   --  OPAx Output Enable Value
   type OPA2_OUT_ALTOUTPADEN_Field is
     (--  Reset value for the field
      OPA2_OUT_ALTOUTPADEN_Field_Reset,
      --  Alternate Output 0
      OUT0,
      --  Alternate Output 1
      OUT1,
      --  Alternate Output 2
      OUT2,
      --  Alternate Output 3
      OUT3,
      --  Alternate Output 4
      OUT4)
     with Size => 5;
   for OPA2_OUT_ALTOUTPADEN_Field use
     (OPA2_OUT_ALTOUTPADEN_Field_Reset => 0,
      OUT0 => 1,
      OUT1 => 2,
      OUT2 => 4,
      OUT3 => 8,
      OUT4 => 16);

   subtype OPA2_OUT_APORTOUTSEL_Field is Interfaces.EFM32.Byte;

   --  Operational Amplifier Output Configuration Register
   type OPA2_OUT_Register is record
      --  OPAx Main Output Enable
      MAINOUTEN      : OPA2_OUT_MAINOUTEN_Field := 16#1#;
      --  OPAx Alternative Output Enable
      ALTOUTEN       : OPA2_OUT_ALTOUTEN_Field := 16#0#;
      --  OPAx Aport Output Enable
      APORTOUTEN     : OPA2_OUT_APORTOUTEN_Field := 16#0#;
      --  OPAx Main and Alternative Output Short
      SHORT          : OPA2_OUT_SHORT_Field := 16#0#;
      --  OPAx Output Enable Value
      ALTOUTPADEN    : OPA2_OUT_ALTOUTPADEN_Field :=
                        OPA2_OUT_ALTOUTPADEN_Field_Reset;
      --  unspecified
      Reserved_9_15  : Interfaces.EFM32.UInt7 := 16#0#;
      --  OPAx APORT Output
      APORTOUTSEL    : OPA2_OUT_APORTOUTSEL_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA2_OUT_Register use record
      MAINOUTEN      at 0 range 0 .. 0;
      ALTOUTEN       at 0 range 1 .. 1;
      APORTOUTEN     at 0 range 2 .. 2;
      SHORT          at 0 range 3 .. 3;
      ALTOUTPADEN    at 0 range 4 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      APORTOUTSEL    at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype OPA2_CAL_CM1_Field is Interfaces.EFM32.UInt4;
   subtype OPA2_CAL_CM2_Field is Interfaces.EFM32.UInt4;
   subtype OPA2_CAL_CM3_Field is Interfaces.EFM32.UInt2;
   subtype OPA2_CAL_GM_Field is Interfaces.EFM32.UInt3;
   subtype OPA2_CAL_GM3_Field is Interfaces.EFM32.UInt2;
   subtype OPA2_CAL_OFFSETP_Field is Interfaces.EFM32.UInt5;
   subtype OPA2_CAL_OFFSETN_Field is Interfaces.EFM32.UInt5;

   --  Operational Amplifier Calibration Register
   type OPA2_CAL_Register is record
      --  Compensation Cap Cm1 Trim Value
      CM1            : OPA2_CAL_CM1_Field := 16#7#;
      --  unspecified
      Reserved_4_4   : Interfaces.EFM32.Bit := 16#0#;
      --  Compensation Cap Cm2 Trim Value
      CM2            : OPA2_CAL_CM2_Field := 16#7#;
      --  unspecified
      Reserved_9_9   : Interfaces.EFM32.Bit := 16#0#;
      --  Compensation Cap Cm3 Trim Value
      CM3            : OPA2_CAL_CM3_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.EFM32.Bit := 16#0#;
      --  Gm Trim Value
      GM             : OPA2_CAL_GM_Field := 16#4#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Gm3 Trim Value
      GM3            : OPA2_CAL_GM3_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Non-Inverting Input Offset Configuration Value
      OFFSETP        : OPA2_CAL_OFFSETP_Field := 16#0#;
      --  unspecified
      Reserved_25_25 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Inverting Input Offset Configuration Value
      OFFSETN        : OPA2_CAL_OFFSETN_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA2_CAL_Register use record
      CM1            at 0 range 0 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      CM2            at 0 range 5 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA3_APORTREQ_APORT1XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA3_APORTREQ_APORT1YREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA3_APORTREQ_APORT2XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA3_APORTREQ_APORT2YREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA3_APORTREQ_APORT3XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA3_APORTREQ_APORT3YREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA3_APORTREQ_APORT4XREQ_Field is Interfaces.EFM32.Bit;
   subtype OPA3_APORTREQ_APORT4YREQ_Field is Interfaces.EFM32.Bit;

   --  Operational Amplifier APORT Request Status Register
   type OPA3_APORTREQ_Register is record
      --  unspecified
      Reserved_0_1   : Interfaces.EFM32.UInt2;
      --  Read-only. 1 If the Bus Connected to APORT2X is Requested
      APORT1XREQ     : OPA3_APORTREQ_APORT1XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT1X is Requested
      APORT1YREQ     : OPA3_APORTREQ_APORT1YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT2X is Requested
      APORT2XREQ     : OPA3_APORTREQ_APORT2XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT2Y is Requested
      APORT2YREQ     : OPA3_APORTREQ_APORT2YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT3X is Requested
      APORT3XREQ     : OPA3_APORTREQ_APORT3XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT3Y is Requested
      APORT3YREQ     : OPA3_APORTREQ_APORT3YREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT4X is Requested
      APORT4XREQ     : OPA3_APORTREQ_APORT4XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT4Y is Requested
      APORT4YREQ     : OPA3_APORTREQ_APORT4YREQ_Field;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA3_APORTREQ_Register use record
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

   subtype OPA3_APORTCONFLICT_APORT1XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA3_APORTCONFLICT_APORT1YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA3_APORTCONFLICT_APORT2XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA3_APORTCONFLICT_APORT2YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA3_APORTCONFLICT_APORT3XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA3_APORTCONFLICT_APORT3YCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA3_APORTCONFLICT_APORT4XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype OPA3_APORTCONFLICT_APORT4YCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Operational Amplifier APORT Conflict Status Register
   type OPA3_APORTCONFLICT_Register is record
      --  unspecified
      Reserved_0_1    : Interfaces.EFM32.UInt2;
      --  Read-only. 1 If the Bus Connected to APORT1X is in Conflict With
      --  Another Peripheral
      APORT1XCONFLICT : OPA3_APORTCONFLICT_APORT1XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT1X is in Conflict With
      --  Another Peripheral
      APORT1YCONFLICT : OPA3_APORTCONFLICT_APORT1YCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT2X is in Conflict With
      --  Another Peripheral
      APORT2XCONFLICT : OPA3_APORTCONFLICT_APORT2XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT2Y is in Conflict With
      --  Another Peripheral
      APORT2YCONFLICT : OPA3_APORTCONFLICT_APORT2YCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT3X is in Conflict With
      --  Another Peripheral
      APORT3XCONFLICT : OPA3_APORTCONFLICT_APORT3XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT3Y is in Conflict With
      --  Another Peripheral
      APORT3YCONFLICT : OPA3_APORTCONFLICT_APORT3YCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT4X is in Conflict With
      --  Another Peripheral
      APORT4XCONFLICT : OPA3_APORTCONFLICT_APORT4XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT4Y is in Conflict With
      --  Another Peripheral
      APORT4YCONFLICT : OPA3_APORTCONFLICT_APORT4YCONFLICT_Field;
      --  unspecified
      Reserved_10_31  : Interfaces.EFM32.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA3_APORTCONFLICT_Register use record
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

   --  OPAx Operation Mode
   type OPA3_CTRL_DRIVESTRENGTH_Field is
     (--  Lower accuracy with Low drive strength.
      Val_0,
      --  Low accuracy with Low drive strength.
      Val_1,
      --  High accuracy with High drive strength.
      Val_2,
      --  Higher accuracy with High drive strength.
      Val_3)
     with Size => 2;
   for OPA3_CTRL_DRIVESTRENGTH_Field use
     (Val_0 => 0,
      Val_1 => 1,
      Val_2 => 2,
      Val_3 => 3);

   subtype OPA3_CTRL_INCBW_Field is Interfaces.EFM32.Bit;
   subtype OPA3_CTRL_HCMDIS_Field is Interfaces.EFM32.Bit;
   subtype OPA3_CTRL_OUTSCALE_Field is Interfaces.EFM32.Bit;
   subtype OPA3_CTRL_PRSEN_Field is Interfaces.EFM32.Bit;
   subtype OPA3_CTRL_PRSMODE_Field is Interfaces.EFM32.Bit;

   --  OPAx PRS Trigger Select
   type OPA3_CTRL_PRSSEL_Field is
     (--  PRS ch 0 triggers OPA.
      PRSCH0,
      --  PRS ch 1 triggers OPA.
      PRSCH1,
      --  PRS ch 2 triggers OPA.
      PRSCH2,
      --  PRS ch 3 triggers OPA.
      PRSCH3,
      --  PRS ch 4 triggers OPA.
      PRSCH4,
      --  PRS ch 5 triggers OPA.
      PRSCH5,
      --  PRS ch 6 triggers OPA.
      PRSCH6,
      --  PRS ch 7 triggers OPA.
      PRSCH7,
      --  PRS ch 8 triggers OPA.
      PRSCH8,
      --  PRS ch 9 triggers OPA.
      PRSCH9,
      --  PRS ch 10 triggers OPA.
      PRSCH10,
      --  PRS ch 11 triggers OPA.
      PRSCH11,
      --  PRS ch 12 triggers OPA.
      PRSCH12,
      --  PRS ch 13 triggers OPA.
      PRSCH13,
      --  PRS ch 14 triggers OPA.
      PRSCH14,
      --  PRS ch 15 triggers OPA.
      PRSCH15)
     with Size => 4;
   for OPA3_CTRL_PRSSEL_Field use
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

   subtype OPA3_CTRL_PRSOUTMODE_Field is Interfaces.EFM32.Bit;
   subtype OPA3_CTRL_APORTXMASTERDIS_Field is Interfaces.EFM32.Bit;
   subtype OPA3_CTRL_APORTYMASTERDIS_Field is Interfaces.EFM32.Bit;

   --  Operational Amplifier Control Register
   type OPA3_CTRL_Register is record
      --  OPAx Operation Mode
      DRIVESTRENGTH   : OPA3_CTRL_DRIVESTRENGTH_Field :=
                         Interfaces.EFM32.VDAC0.Val_2;
      --  OPAx Unity Gain Bandwidth Scale
      INCBW           : OPA3_CTRL_INCBW_Field := 16#1#;
      --  High Common Mode Disable
      HCMDIS          : OPA3_CTRL_HCMDIS_Field := 16#1#;
      --  Scale OPAx Output Driving Strength
      OUTSCALE        : OPA3_CTRL_OUTSCALE_Field := 16#0#;
      --  unspecified
      Reserved_5_7    : Interfaces.EFM32.UInt3 := 16#0#;
      --  OPAx PRS Trigger Enable
      PRSEN           : OPA3_CTRL_PRSEN_Field := 16#0#;
      --  OPAx PRS Trigger Mode
      PRSMODE         : OPA3_CTRL_PRSMODE_Field := 16#0#;
      --  OPAx PRS Trigger Select
      PRSSEL          : OPA3_CTRL_PRSSEL_Field :=
                         Interfaces.EFM32.VDAC0.PRSCH0;
      --  unspecified
      Reserved_14_15  : Interfaces.EFM32.UInt2 := 16#0#;
      --  OPAx PRS Output Select
      PRSOUTMODE      : OPA3_CTRL_PRSOUTMODE_Field := 16#0#;
      --  unspecified
      Reserved_17_19  : Interfaces.EFM32.UInt3 := 16#0#;
      --  APORT Bus Master Disable
      APORTXMASTERDIS : OPA3_CTRL_APORTXMASTERDIS_Field := 16#0#;
      --  APORT Bus Master Disable
      APORTYMASTERDIS : OPA3_CTRL_APORTYMASTERDIS_Field := 16#0#;
      --  unspecified
      Reserved_22_31  : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA3_CTRL_Register use record
      DRIVESTRENGTH   at 0 range 0 .. 1;
      INCBW           at 0 range 2 .. 2;
      HCMDIS          at 0 range 3 .. 3;
      OUTSCALE        at 0 range 4 .. 4;
      Reserved_5_7    at 0 range 5 .. 7;
      PRSEN           at 0 range 8 .. 8;
      PRSMODE         at 0 range 9 .. 9;
      PRSSEL          at 0 range 10 .. 13;
      Reserved_14_15  at 0 range 14 .. 15;
      PRSOUTMODE      at 0 range 16 .. 16;
      Reserved_17_19  at 0 range 17 .. 19;
      APORTXMASTERDIS at 0 range 20 .. 20;
      APORTYMASTERDIS at 0 range 21 .. 21;
      Reserved_22_31  at 0 range 22 .. 31;
   end record;

   subtype OPA3_TIMER_STARTUPDLY_Field is Interfaces.EFM32.UInt6;
   subtype OPA3_TIMER_WARMUPTIME_Field is Interfaces.EFM32.UInt7;
   subtype OPA3_TIMER_SETTLETIME_Field is Interfaces.EFM32.UInt10;

   --  Operational Amplifier Timer Control Register
   type OPA3_TIMER_Register is record
      --  OPAx Startup Delay Count Value
      STARTUPDLY     : OPA3_TIMER_STARTUPDLY_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  OPAx Warmup Time Count Value
      WARMUPTIME     : OPA3_TIMER_WARMUPTIME_Field := 16#7#;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Output Settling Timeout Value
      SETTLETIME     : OPA3_TIMER_SETTLETIME_Field := 16#1#;
      --  unspecified
      Reserved_26_31 : Interfaces.EFM32.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA3_TIMER_Register use record
      STARTUPDLY     at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      WARMUPTIME     at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      SETTLETIME     at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype OPA3_MUX_POSSEL_Field is Interfaces.EFM32.Byte;
   subtype OPA3_MUX_NEGSEL_Field is Interfaces.EFM32.Byte;

   --  OPAx Resistor Ladder Input Mux
   type OPA3_MUX_RESINMUX_Field is
     (--  Set for Unity Gain
      DISABLE,
      --  Set for NEXTOUT(x-1) input
      OPANEXT,
      --  NEG pad connected
      NEGPAD,
      --  POS pad connected
      POSPAD,
      --  Neg pad of OPA0 connected. Direct input to support common reference.
      COMPAD,
      --  OPA0 and OPA1 Resmux connected to form fully differential instrumentation
--  amplifier.
      CENTER,
      --  VSS connected
      VSS)
     with Size => 3;
   for OPA3_MUX_RESINMUX_Field use
     (DISABLE => 0,
      OPANEXT => 1,
      NEGPAD => 2,
      POSPAD => 3,
      COMPAD => 4,
      CENTER => 5,
      VSS => 6);

   subtype OPA3_MUX_GAIN3X_Field is Interfaces.EFM32.Bit;

   --  OPAx Resistor Ladder Select
   type OPA3_MUX_RESSEL_Field is
     (--  Gain of 1/3
      RES0,
      --  Gain of 1
      RES1,
      --  Gain of 1 2/3
      RES2,
      --  Gain of 2 1/5
      RES3,
      --  Gain of 3
      RES4,
      --  Gain of 4 1/3
      RES5,
      --  Gain of 7
      RES6,
      --  Gain of 15
      RES7)
     with Size => 3;
   for OPA3_MUX_RESSEL_Field use
     (RES0 => 0,
      RES1 => 1,
      RES2 => 2,
      RES3 => 3,
      RES4 => 4,
      RES5 => 5,
      RES6 => 6,
      RES7 => 7);

   --  Operational Amplifier Mux Configuration Register
   type OPA3_MUX_Register is record
      --  OPAx Non-inverting Input Mux
      POSSEL         : OPA3_MUX_POSSEL_Field := 16#F1#;
      --  OPAx Inverting Input Mux
      NEGSEL         : OPA3_MUX_NEGSEL_Field := 16#F2#;
      --  OPAx Resistor Ladder Input Mux
      RESINMUX       : OPA3_MUX_RESINMUX_Field := Interfaces.EFM32.VDAC0.VSS;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Dedicated 3x Gain Resistor Ladder
      GAIN3X         : OPA3_MUX_GAIN3X_Field := 16#1#;
      --  unspecified
      Reserved_21_23 : Interfaces.EFM32.UInt3 := 16#0#;
      --  OPAx Resistor Ladder Select
      RESSEL         : OPA3_MUX_RESSEL_Field := Interfaces.EFM32.VDAC0.RES0;
      --  unspecified
      Reserved_27_31 : Interfaces.EFM32.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA3_MUX_Register use record
      POSSEL         at 0 range 0 .. 7;
      NEGSEL         at 0 range 8 .. 15;
      RESINMUX       at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      GAIN3X         at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      RESSEL         at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype OPA3_OUT_MAINOUTEN_Field is Interfaces.EFM32.Bit;
   subtype OPA3_OUT_ALTOUTEN_Field is Interfaces.EFM32.Bit;
   subtype OPA3_OUT_APORTOUTEN_Field is Interfaces.EFM32.Bit;
   subtype OPA3_OUT_SHORT_Field is Interfaces.EFM32.Bit;

   --  OPAx Output Enable Value
   type OPA3_OUT_ALTOUTPADEN_Field is
     (--  Reset value for the field
      OPA3_OUT_ALTOUTPADEN_Field_Reset,
      --  Alternate Output 0
      OUT0,
      --  Alternate Output 1
      OUT1,
      --  Alternate Output 2
      OUT2,
      --  Alternate Output 3
      OUT3,
      --  Alternate Output 4
      OUT4)
     with Size => 5;
   for OPA3_OUT_ALTOUTPADEN_Field use
     (OPA3_OUT_ALTOUTPADEN_Field_Reset => 0,
      OUT0 => 1,
      OUT1 => 2,
      OUT2 => 4,
      OUT3 => 8,
      OUT4 => 16);

   subtype OPA3_OUT_APORTOUTSEL_Field is Interfaces.EFM32.Byte;

   --  Operational Amplifier Output Configuration Register
   type OPA3_OUT_Register is record
      --  OPAx Main Output Enable
      MAINOUTEN      : OPA3_OUT_MAINOUTEN_Field := 16#1#;
      --  OPAx Alternative Output Enable
      ALTOUTEN       : OPA3_OUT_ALTOUTEN_Field := 16#0#;
      --  OPAx Aport Output Enable
      APORTOUTEN     : OPA3_OUT_APORTOUTEN_Field := 16#0#;
      --  OPAx Main and Alternative Output Short
      SHORT          : OPA3_OUT_SHORT_Field := 16#0#;
      --  OPAx Output Enable Value
      ALTOUTPADEN    : OPA3_OUT_ALTOUTPADEN_Field :=
                        OPA3_OUT_ALTOUTPADEN_Field_Reset;
      --  unspecified
      Reserved_9_15  : Interfaces.EFM32.UInt7 := 16#0#;
      --  OPAx APORT Output
      APORTOUTSEL    : OPA3_OUT_APORTOUTSEL_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA3_OUT_Register use record
      MAINOUTEN      at 0 range 0 .. 0;
      ALTOUTEN       at 0 range 1 .. 1;
      APORTOUTEN     at 0 range 2 .. 2;
      SHORT          at 0 range 3 .. 3;
      ALTOUTPADEN    at 0 range 4 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      APORTOUTSEL    at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype OPA3_CAL_CM1_Field is Interfaces.EFM32.UInt4;
   subtype OPA3_CAL_CM2_Field is Interfaces.EFM32.UInt4;
   subtype OPA3_CAL_CM3_Field is Interfaces.EFM32.UInt2;
   subtype OPA3_CAL_GM_Field is Interfaces.EFM32.UInt3;
   subtype OPA3_CAL_GM3_Field is Interfaces.EFM32.UInt2;
   subtype OPA3_CAL_OFFSETP_Field is Interfaces.EFM32.UInt5;
   subtype OPA3_CAL_OFFSETN_Field is Interfaces.EFM32.UInt5;

   --  Operational Amplifier Calibration Register
   type OPA3_CAL_Register is record
      --  Compensation Cap Cm1 Trim Value
      CM1            : OPA3_CAL_CM1_Field := 16#7#;
      --  unspecified
      Reserved_4_4   : Interfaces.EFM32.Bit := 16#0#;
      --  Compensation Cap Cm2 Trim Value
      CM2            : OPA3_CAL_CM2_Field := 16#7#;
      --  unspecified
      Reserved_9_9   : Interfaces.EFM32.Bit := 16#0#;
      --  Compensation Cap Cm3 Trim Value
      CM3            : OPA3_CAL_CM3_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.EFM32.Bit := 16#0#;
      --  Gm Trim Value
      GM             : OPA3_CAL_GM_Field := 16#4#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Gm3 Trim Value
      GM3            : OPA3_CAL_GM3_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Non-Inverting Input Offset Configuration Value
      OFFSETP        : OPA3_CAL_OFFSETP_Field := 16#0#;
      --  unspecified
      Reserved_25_25 : Interfaces.EFM32.Bit := 16#0#;
      --  OPAx Inverting Input Offset Configuration Value
      OFFSETN        : OPA3_CAL_OFFSETN_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPA3_CAL_Register use record
      CM1            at 0 range 0 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      CM2            at 0 range 5 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  VDAC0
   type VDAC0_Peripheral is record
      --  Control Register
      CTRL               : aliased CTRL_Register;
      --  Status Register
      STATUS             : aliased STATUS_Register;
      --  Channel 0 Control Register
      CH0CTRL            : aliased CH0CTRL_Register;
      --  Channel 1 Control Register
      CH1CTRL            : aliased CH1CTRL_Register;
      --  Command Register
      CMD                : aliased CMD_Register;
      --  Interrupt Flag Register
      IF_k               : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS                : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC                : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN                : aliased IEN_Register;
      --  Channel 0 Data Register
      CH0DATA            : aliased CH0DATA_Register;
      --  Channel 1 Data Register
      CH1DATA            : aliased CH1DATA_Register;
      --  Combined Data Register
      COMBDATA           : aliased COMBDATA_Register;
      --  Calibration Register
      CAL                : aliased CAL_Register;
      --  Operational Amplifier APORT Request Status Register
      OPA0_APORTREQ      : aliased OPA0_APORTREQ_Register;
      --  Operational Amplifier APORT Conflict Status Register
      OPA0_APORTCONFLICT : aliased OPA0_APORTCONFLICT_Register;
      --  Operational Amplifier Control Register
      OPA0_CTRL          : aliased OPA0_CTRL_Register;
      --  Operational Amplifier Timer Control Register
      OPA0_TIMER         : aliased OPA0_TIMER_Register;
      --  Operational Amplifier Mux Configuration Register
      OPA0_MUX           : aliased OPA0_MUX_Register;
      --  Operational Amplifier Output Configuration Register
      OPA0_OUT           : aliased OPA0_OUT_Register;
      --  Operational Amplifier Calibration Register
      OPA0_CAL           : aliased OPA0_CAL_Register;
      --  Operational Amplifier APORT Request Status Register
      OPA1_APORTREQ      : aliased OPA1_APORTREQ_Register;
      --  Operational Amplifier APORT Conflict Status Register
      OPA1_APORTCONFLICT : aliased OPA1_APORTCONFLICT_Register;
      --  Operational Amplifier Control Register
      OPA1_CTRL          : aliased OPA1_CTRL_Register;
      --  Operational Amplifier Timer Control Register
      OPA1_TIMER         : aliased OPA1_TIMER_Register;
      --  Operational Amplifier Mux Configuration Register
      OPA1_MUX           : aliased OPA1_MUX_Register;
      --  Operational Amplifier Output Configuration Register
      OPA1_OUT           : aliased OPA1_OUT_Register;
      --  Operational Amplifier Calibration Register
      OPA1_CAL           : aliased OPA1_CAL_Register;
      --  Operational Amplifier APORT Request Status Register
      OPA2_APORTREQ      : aliased OPA2_APORTREQ_Register;
      --  Operational Amplifier APORT Conflict Status Register
      OPA2_APORTCONFLICT : aliased OPA2_APORTCONFLICT_Register;
      --  Operational Amplifier Control Register
      OPA2_CTRL          : aliased OPA2_CTRL_Register;
      --  Operational Amplifier Timer Control Register
      OPA2_TIMER         : aliased OPA2_TIMER_Register;
      --  Operational Amplifier Mux Configuration Register
      OPA2_MUX           : aliased OPA2_MUX_Register;
      --  Operational Amplifier Output Configuration Register
      OPA2_OUT           : aliased OPA2_OUT_Register;
      --  Operational Amplifier Calibration Register
      OPA2_CAL           : aliased OPA2_CAL_Register;
      --  Operational Amplifier APORT Request Status Register
      OPA3_APORTREQ      : aliased OPA3_APORTREQ_Register;
      --  Operational Amplifier APORT Conflict Status Register
      OPA3_APORTCONFLICT : aliased OPA3_APORTCONFLICT_Register;
      --  Operational Amplifier Control Register
      OPA3_CTRL          : aliased OPA3_CTRL_Register;
      --  Operational Amplifier Timer Control Register
      OPA3_TIMER         : aliased OPA3_TIMER_Register;
      --  Operational Amplifier Mux Configuration Register
      OPA3_MUX           : aliased OPA3_MUX_Register;
      --  Operational Amplifier Output Configuration Register
      OPA3_OUT           : aliased OPA3_OUT_Register;
      --  Operational Amplifier Calibration Register
      OPA3_CAL           : aliased OPA3_CAL_Register;
   end record
     with Volatile;

   for VDAC0_Peripheral use record
      CTRL               at 16#0# range 0 .. 31;
      STATUS             at 16#4# range 0 .. 31;
      CH0CTRL            at 16#8# range 0 .. 31;
      CH1CTRL            at 16#C# range 0 .. 31;
      CMD                at 16#10# range 0 .. 31;
      IF_k               at 16#14# range 0 .. 31;
      IFS                at 16#18# range 0 .. 31;
      IFC                at 16#1C# range 0 .. 31;
      IEN                at 16#20# range 0 .. 31;
      CH0DATA            at 16#24# range 0 .. 31;
      CH1DATA            at 16#28# range 0 .. 31;
      COMBDATA           at 16#2C# range 0 .. 31;
      CAL                at 16#30# range 0 .. 31;
      OPA0_APORTREQ      at 16#A0# range 0 .. 31;
      OPA0_APORTCONFLICT at 16#A4# range 0 .. 31;
      OPA0_CTRL          at 16#A8# range 0 .. 31;
      OPA0_TIMER         at 16#AC# range 0 .. 31;
      OPA0_MUX           at 16#B0# range 0 .. 31;
      OPA0_OUT           at 16#B4# range 0 .. 31;
      OPA0_CAL           at 16#B8# range 0 .. 31;
      OPA1_APORTREQ      at 16#C0# range 0 .. 31;
      OPA1_APORTCONFLICT at 16#C4# range 0 .. 31;
      OPA1_CTRL          at 16#C8# range 0 .. 31;
      OPA1_TIMER         at 16#CC# range 0 .. 31;
      OPA1_MUX           at 16#D0# range 0 .. 31;
      OPA1_OUT           at 16#D4# range 0 .. 31;
      OPA1_CAL           at 16#D8# range 0 .. 31;
      OPA2_APORTREQ      at 16#E0# range 0 .. 31;
      OPA2_APORTCONFLICT at 16#E4# range 0 .. 31;
      OPA2_CTRL          at 16#E8# range 0 .. 31;
      OPA2_TIMER         at 16#EC# range 0 .. 31;
      OPA2_MUX           at 16#F0# range 0 .. 31;
      OPA2_OUT           at 16#F4# range 0 .. 31;
      OPA2_CAL           at 16#F8# range 0 .. 31;
      OPA3_APORTREQ      at 16#100# range 0 .. 31;
      OPA3_APORTCONFLICT at 16#104# range 0 .. 31;
      OPA3_CTRL          at 16#108# range 0 .. 31;
      OPA3_TIMER         at 16#10C# range 0 .. 31;
      OPA3_MUX           at 16#110# range 0 .. 31;
      OPA3_OUT           at 16#114# range 0 .. 31;
      OPA3_CAL           at 16#118# range 0 .. 31;
   end record;

   --  VDAC0
   VDAC0_Periph : aliased VDAC0_Peripheral
     with Import, Address => VDAC0_Base;

end Interfaces.EFM32.VDAC0;
