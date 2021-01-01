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

--  IDAC0
package Interfaces.EFM32.IDAC0 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CURSINK_Field is Interfaces.EFM32.Bit;
   subtype CTRL_MINOUTTRANS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_APORTOUTEN_Field is Interfaces.EFM32.Bit;

   --  APORT Output Select
   type CTRL_APORTOUTSEL_Field is
     (--  Reset value for the field
      CTRL_APORTOUTSEL_Field_Reset,
      --  APORT1X Channel 0
      APORT1XCH0,
      --  APORT1Y Channel 1
      APORT1YCH1,
      --  APORT1X Channel 2
      APORT1XCH2,
      --  APORT1Y Channel 3
      APORT1YCH3,
      --  APORT1X Channel 4
      APORT1XCH4,
      --  APORT1Y Channel 5
      APORT1YCH5,
      --  APORT1X Channel 6
      APORT1XCH6,
      --  APORT1Y Channel 7
      APORT1YCH7,
      --  APORT1X Channel 8
      APORT1XCH8,
      --  APORT1Y Channel 9
      APORT1YCH9,
      --  APORT1X Channel 10
      APORT1XCH10,
      --  APORT1Y Channel 11
      APORT1YCH11,
      --  APORT1X Channel 12
      APORT1XCH12,
      --  APORT1Y Channel 13
      APORT1YCH13,
      --  APORT1X Channel 14
      APORT1XCH14,
      --  APORT1Y Channel 15
      APORT1YCH15,
      --  APORT1X Channel 16
      APORT1XCH16,
      --  APORT1Y Channel 17
      APORT1YCH17,
      --  APORT1X Channel 18
      APORT1XCH18,
      --  APORT1Y Channel 19
      APORT1YCH19,
      --  APORT1X Channel 20
      APORT1XCH20,
      --  APORT1Y Channel 21
      APORT1YCH21,
      --  APORT1X Channel 22
      APORT1XCH22,
      --  APORT1Y Channel 23
      APORT1YCH23,
      --  APORT1X Channel 24
      APORT1XCH24,
      --  APORT1Y Channel 25
      APORT1YCH25,
      --  APORT1X Channel 26
      APORT1XCH26,
      --  APORT1Y Channel 27
      APORT1YCH27,
      --  APORT1X Channel 28
      APORT1XCH28,
      --  APORT1Y Channel 29
      APORT1YCH29,
      --  APORT1X Channel 30
      APORT1XCH30,
      --  APORT1Y Channel 31
      APORT1YCH31)
     with Size => 8;
   for CTRL_APORTOUTSEL_Field use
     (CTRL_APORTOUTSEL_Field_Reset => 0,
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
      APORT1YCH31 => 63);

   subtype CTRL_PWRSEL_Field is Interfaces.EFM32.Bit;
   subtype CTRL_EM2DELAY_Field is Interfaces.EFM32.Bit;
   subtype CTRL_APORTMASTERDIS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_APORTOUTENPRS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_MAINOUTEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_MAINOUTENPRS_Field is Interfaces.EFM32.Bit;

   --  IDAC Output Enable PRS Channel Select
   type CTRL_PRSSEL_Field is
     (--  PRS Channel 0 selected.
      PRSCH0,
      --  PRS Channel 1 selected.
      PRSCH1,
      --  PRS Channel 2 selected.
      PRSCH2,
      --  PRS Channel 3 selected.
      PRSCH3,
      --  PRS Channel 4 selected.
      PRSCH4,
      --  PRS Channel 5 selected.
      PRSCH5,
      --  PRS Channel 6 selected.
      PRSCH6,
      --  PRS Channel 7 selected.
      PRSCH7,
      --  PRS Channel 8 selected.
      PRSCH8,
      --  PRS Channel 9 selected.
      PRSCH9,
      --  PRS Channel 10 selected.
      PRSCH10,
      --  PRS Channel 11 selected.
      PRSCH11,
      --  PRS Channel 12 selected.
      PRSCH12,
      --  PRS Channel 13 selected.
      PRSCH13,
      --  PRS Channel 14 selected.
      PRSCH14,
      --  PRS Channel 15 selected.
      PRSCH15)
     with Size => 4;
   for CTRL_PRSSEL_Field use
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

   --  Control Register
   type CTRL_Register is record
      --  Current DAC Enable
      EN             : CTRL_EN_Field := 16#0#;
      --  Current Sink Enable
      CURSINK        : CTRL_CURSINK_Field := 16#0#;
      --  Minimum Output Transition Enable
      MINOUTTRANS    : CTRL_MINOUTTRANS_Field := 16#0#;
      --  APORT Output Enable
      APORTOUTEN     : CTRL_APORTOUTEN_Field := 16#0#;
      --  APORT Output Select
      APORTOUTSEL    : CTRL_APORTOUTSEL_Field := CTRL_APORTOUTSEL_Field_Reset;
      --  Power Select
      PWRSEL         : CTRL_PWRSEL_Field := 16#0#;
      --  EM2 Delay
      EM2DELAY       : CTRL_EM2DELAY_Field := 16#0#;
      --  APORT Bus Master Disable
      APORTMASTERDIS : CTRL_APORTMASTERDIS_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit := 16#0#;
      --  PRS Controlled APORT Output Enable
      APORTOUTENPRS  : CTRL_APORTOUTENPRS_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : Interfaces.EFM32.Bit := 16#0#;
      --  Output Enable
      MAINOUTEN      : CTRL_MAINOUTEN_Field := 16#0#;
      --  PRS Controlled Main Pad Output Enable
      MAINOUTENPRS   : CTRL_MAINOUTENPRS_Field := 16#0#;
      --  IDAC Output Enable PRS Channel Select
      PRSSEL         : CTRL_PRSSEL_Field := Interfaces.EFM32.IDAC0.PRSCH0;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      EN             at 0 range 0 .. 0;
      CURSINK        at 0 range 1 .. 1;
      MINOUTTRANS    at 0 range 2 .. 2;
      APORTOUTEN     at 0 range 3 .. 3;
      APORTOUTSEL    at 0 range 4 .. 11;
      PWRSEL         at 0 range 12 .. 12;
      EM2DELAY       at 0 range 13 .. 13;
      APORTMASTERDIS at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      APORTOUTENPRS  at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      MAINOUTEN      at 0 range 18 .. 18;
      MAINOUTENPRS   at 0 range 19 .. 19;
      PRSSEL         at 0 range 20 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  Current Range Select
   type CURPROG_RANGESEL_Field is
     (--  Current range set to 0 - 1.6 uA.
      RANGE0,
      --  Current range set to 1.6 - 4.7 uA.
      RANGE1,
      --  Current range set to 0.5 - 16 uA.
      RANGE2,
      --  Current range set to 2 - 64 uA.
      RANGE3)
     with Size => 2;
   for CURPROG_RANGESEL_Field use
     (RANGE0 => 0,
      RANGE1 => 1,
      RANGE2 => 2,
      RANGE3 => 3);

   subtype CURPROG_STEPSEL_Field is Interfaces.EFM32.UInt5;
   subtype CURPROG_TUNING_Field is Interfaces.EFM32.Byte;

   --  Current Programming Register
   type CURPROG_Register is record
      --  Current Range Select
      RANGESEL       : CURPROG_RANGESEL_Field :=
                        Interfaces.EFM32.IDAC0.RANGE0;
      --  unspecified
      Reserved_2_7   : Interfaces.EFM32.UInt6 := 16#0#;
      --  Current Step Size Select
      STEPSEL        : CURPROG_STEPSEL_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Tune the Current to Given Accuracy
      TUNING         : CURPROG_TUNING_Field := 16#9B#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CURPROG_Register use record
      RANGESEL       at 0 range 0 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      STEPSEL        at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TUNING         at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DUTYCONFIG_EM2DUTYCYCLEDIS_Field is Interfaces.EFM32.Bit;

   --  Duty Cycle Configuration Register
   type DUTYCONFIG_Register is record
      --  unspecified
      Reserved_0_0    : Interfaces.EFM32.Bit := 16#0#;
      --  Duty Cycle Enable
      EM2DUTYCYCLEDIS : DUTYCONFIG_EM2DUTYCYCLEDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_31   : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DUTYCONFIG_Register use record
      Reserved_0_0    at 0 range 0 .. 0;
      EM2DUTYCYCLEDIS at 0 range 1 .. 1;
      Reserved_2_31   at 0 range 2 .. 31;
   end record;

   subtype STATUS_CURSTABLE_Field is Interfaces.EFM32.Bit;
   subtype STATUS_APORTCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. IDAC Output Current Stable
      CURSTABLE     : STATUS_CURSTABLE_Field;
      --  Read-only. APORT Conflict Output
      APORTCONFLICT : STATUS_APORTCONFLICT_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      CURSTABLE     at 0 range 0 .. 0;
      APORTCONFLICT at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype IF_CURSTABLE_Field is Interfaces.EFM32.Bit;
   subtype IF_APORTCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. Edge Triggered Interrupt Flag
      CURSTABLE     : IF_CURSTABLE_Field;
      --  Read-only. APORT Conflict Interrupt Flag
      APORTCONFLICT : IF_APORTCONFLICT_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      CURSTABLE     at 0 range 0 .. 0;
      APORTCONFLICT at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype IFS_CURSTABLE_Field is Interfaces.EFM32.Bit;
   subtype IFS_APORTCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set CURSTABLE Interrupt Flag
      CURSTABLE     : IFS_CURSTABLE_Field := 16#0#;
      --  Write-only. Set APORTCONFLICT Interrupt Flag
      APORTCONFLICT : IFS_APORTCONFLICT_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      CURSTABLE     at 0 range 0 .. 0;
      APORTCONFLICT at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype IFC_CURSTABLE_Field is Interfaces.EFM32.Bit;
   subtype IFC_APORTCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear CURSTABLE Interrupt Flag
      CURSTABLE     : IFC_CURSTABLE_Field := 16#0#;
      --  Write-only. Clear APORTCONFLICT Interrupt Flag
      APORTCONFLICT : IFC_APORTCONFLICT_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      CURSTABLE     at 0 range 0 .. 0;
      APORTCONFLICT at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype IEN_CURSTABLE_Field is Interfaces.EFM32.Bit;
   subtype IEN_APORTCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  CURSTABLE Interrupt Enable
      CURSTABLE     : IEN_CURSTABLE_Field := 16#0#;
      --  APORTCONFLICT Interrupt Enable
      APORTCONFLICT : IEN_APORTCONFLICT_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      CURSTABLE     at 0 range 0 .. 0;
      APORTCONFLICT at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype APORTREQ_APORT1XREQ_Field is Interfaces.EFM32.Bit;
   subtype APORTREQ_APORT1YREQ_Field is Interfaces.EFM32.Bit;

   --  APORT Request Status Register
   type APORTREQ_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.EFM32.UInt2;
      --  Read-only. 1 If the APORT Bus Connected to APORT1X is Requested
      APORT1XREQ    : APORTREQ_APORT1XREQ_Field;
      --  Read-only. 1 If the Bus Connected to APORT1Y is Requested
      APORT1YREQ    : APORTREQ_APORT1YREQ_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APORTREQ_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      APORT1XREQ    at 0 range 2 .. 2;
      APORT1YREQ    at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype APORTCONFLICT_APORT1XCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype APORTCONFLICT_APORT1YCONFLICT_Field is Interfaces.EFM32.Bit;

   --  APORT Request Status Register
   type APORTCONFLICT_Register is record
      --  unspecified
      Reserved_0_1    : Interfaces.EFM32.UInt2;
      --  Read-only. 1 If the Bus Connected to APORT1X is in Conflict With
      --  Another Peripheral
      APORT1XCONFLICT : APORTCONFLICT_APORT1XCONFLICT_Field;
      --  Read-only. 1 If the Bus Connected to APORT1Y is in Conflict With
      --  Another Peripheral
      APORT1YCONFLICT : APORTCONFLICT_APORT1YCONFLICT_Field;
      --  unspecified
      Reserved_4_31   : Interfaces.EFM32.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for APORTCONFLICT_Register use record
      Reserved_0_1    at 0 range 0 .. 1;
      APORT1XCONFLICT at 0 range 2 .. 2;
      APORT1YCONFLICT at 0 range 3 .. 3;
      Reserved_4_31   at 0 range 4 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  IDAC0
   type IDAC0_Peripheral is record
      --  Control Register
      CTRL          : aliased CTRL_Register;
      --  Current Programming Register
      CURPROG       : aliased CURPROG_Register;
      --  Duty Cycle Configuration Register
      DUTYCONFIG    : aliased DUTYCONFIG_Register;
      --  Status Register
      STATUS        : aliased STATUS_Register;
      --  Interrupt Flag Register
      IF_k          : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS           : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC           : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN           : aliased IEN_Register;
      --  APORT Request Status Register
      APORTREQ      : aliased APORTREQ_Register;
      --  APORT Request Status Register
      APORTCONFLICT : aliased APORTCONFLICT_Register;
   end record
     with Volatile;

   for IDAC0_Peripheral use record
      CTRL          at 16#0# range 0 .. 31;
      CURPROG       at 16#4# range 0 .. 31;
      DUTYCONFIG    at 16#C# range 0 .. 31;
      STATUS        at 16#18# range 0 .. 31;
      IF_k          at 16#20# range 0 .. 31;
      IFS           at 16#24# range 0 .. 31;
      IFC           at 16#28# range 0 .. 31;
      IEN           at 16#2C# range 0 .. 31;
      APORTREQ      at 16#34# range 0 .. 31;
      APORTCONFLICT at 16#38# range 0 .. 31;
   end record;

   --  IDAC0
   IDAC0_Periph : aliased IDAC0_Peripheral
     with Import, Address => IDAC0_Base;

end Interfaces.EFM32.IDAC0;
