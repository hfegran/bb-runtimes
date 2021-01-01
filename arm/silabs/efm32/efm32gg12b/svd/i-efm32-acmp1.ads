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

--  ACMP1
package Interfaces.EFM32.ACMP1 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_INACTVAL_Field is Interfaces.EFM32.Bit;
   subtype CTRL_GPIOINV_Field is Interfaces.EFM32.Bit;
   subtype CTRL_APORTXMASTERDIS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_APORTYMASTERDIS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_APORTVMASTERDIS_Field is Interfaces.EFM32.Bit;

   --  Power Select
   type CTRL_PWRSEL_Field is
     (--  AVDD supply
      AVDD,
      --  DVDD supply
      DVDD,
      --  IOVDD/IOVDD0 supply
      IOVDD0,
      --  IOVDD1 supply (if part has two I/O voltages)
      IOVDD1)
     with Size => 3;
   for CTRL_PWRSEL_Field use
     (AVDD => 0,
      DVDD => 1,
      IOVDD0 => 2,
      IOVDD1 => 4);

   subtype CTRL_ACCURACY_Field is Interfaces.EFM32.Bit;

   --  Input Range
   type CTRL_INPUTRANGE_Field is
     (--  Setting when the input can be from 0 to ACMPVDD.
      FULL,
      --  Setting when the input will always be greater than ACMPVDD/2.
      GTVDDDIV2,
      --  Setting when the input will always be less than ACMPVDD/2.
      LTVDDDIV2)
     with Size => 2;
   for CTRL_INPUTRANGE_Field use
     (FULL => 0,
      GTVDDDIV2 => 1,
      LTVDDDIV2 => 2);

   subtype CTRL_IRISE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_IFALL_Field is Interfaces.EFM32.Bit;
   subtype CTRL_BIASPROG_Field is Interfaces.EFM32.UInt6;
   subtype CTRL_FULLBIAS_Field is Interfaces.EFM32.Bit;

   --  Control Register
   type CTRL_Register is record
      --  Analog Comparator Enable
      EN              : CTRL_EN_Field := 16#0#;
      --  unspecified
      Reserved_1_1    : Interfaces.EFM32.Bit := 16#0#;
      --  Inactive Value
      INACTVAL        : CTRL_INACTVAL_Field := 16#0#;
      --  Comparator GPIO Output Invert
      GPIOINV         : CTRL_GPIOINV_Field := 16#0#;
      --  unspecified
      Reserved_4_7    : Interfaces.EFM32.UInt4 := 16#0#;
      --  APORT Bus X Master Disable
      APORTXMASTERDIS : CTRL_APORTXMASTERDIS_Field := 16#0#;
      --  APORT Bus Y Master Disable
      APORTYMASTERDIS : CTRL_APORTYMASTERDIS_Field := 16#0#;
      --  APORT Bus Master Disable for Bus Selected By VASEL
      APORTVMASTERDIS : CTRL_APORTVMASTERDIS_Field := 16#0#;
      --  unspecified
      Reserved_11_11  : Interfaces.EFM32.Bit := 16#0#;
      --  Power Select
      PWRSEL          : CTRL_PWRSEL_Field := Interfaces.EFM32.ACMP1.AVDD;
      --  ACMP Accuracy Mode
      ACCURACY        : CTRL_ACCURACY_Field := 16#0#;
      --  unspecified
      Reserved_16_17  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Input Range
      INPUTRANGE      : CTRL_INPUTRANGE_Field := Interfaces.EFM32.ACMP1.FULL;
      --  Rising Edge Interrupt Sense
      IRISE           : CTRL_IRISE_Field := 16#0#;
      --  Falling Edge Interrupt Sense
      IFALL           : CTRL_IFALL_Field := 16#0#;
      --  unspecified
      Reserved_22_23  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Bias Configuration
      BIASPROG        : CTRL_BIASPROG_Field := 16#7#;
      --  unspecified
      Reserved_30_30  : Interfaces.EFM32.Bit := 16#0#;
      --  Full Bias Current
      FULLBIAS        : CTRL_FULLBIAS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      EN              at 0 range 0 .. 0;
      Reserved_1_1    at 0 range 1 .. 1;
      INACTVAL        at 0 range 2 .. 2;
      GPIOINV         at 0 range 3 .. 3;
      Reserved_4_7    at 0 range 4 .. 7;
      APORTXMASTERDIS at 0 range 8 .. 8;
      APORTYMASTERDIS at 0 range 9 .. 9;
      APORTVMASTERDIS at 0 range 10 .. 10;
      Reserved_11_11  at 0 range 11 .. 11;
      PWRSEL          at 0 range 12 .. 14;
      ACCURACY        at 0 range 15 .. 15;
      Reserved_16_17  at 0 range 16 .. 17;
      INPUTRANGE      at 0 range 18 .. 19;
      IRISE           at 0 range 20 .. 20;
      IFALL           at 0 range 21 .. 21;
      Reserved_22_23  at 0 range 22 .. 23;
      BIASPROG        at 0 range 24 .. 29;
      Reserved_30_30  at 0 range 30 .. 30;
      FULLBIAS        at 0 range 31 .. 31;
   end record;

   subtype INPUTSEL_POSSEL_Field is Interfaces.EFM32.Byte;
   subtype INPUTSEL_NEGSEL_Field is Interfaces.EFM32.Byte;

   --  VA Selection
   type INPUTSEL_VASEL_Field is
     (--  ACMPVDD
      VDD,
      --  APORT2Y Channel 0
      APORT2YCH0,
      --  APORT2Y Channel 2
      APORT2YCH2,
      --  APORT2Y Channel 4
      APORT2YCH4,
      --  APORT2Y Channel 6
      APORT2YCH6,
      --  APORT2Y Channel 8
      APORT2YCH8,
      --  APORT2Y Channel 10
      APORT2YCH10,
      --  APORT2Y Channel 12
      APORT2YCH12,
      --  APORT2Y Channel 14
      APORT2YCH14,
      --  APORT2Y Channel 16
      APORT2YCH16,
      --  APORT2Y Channel 18
      APORT2YCH18,
      --  APORT2Y Channel 20
      APORT2YCH20,
      --  APORT2Y Channel 22
      APORT2YCH22,
      --  APORT2Y Channel 24
      APORT2YCH24,
      --  APORT2Y Channel 26
      APORT2YCH26,
      --  APORT2Y Channel 28
      APORT2YCH28,
      --  APORT2Y Channel 30
      APORT2YCH30,
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
     with Size => 6;
   for INPUTSEL_VASEL_Field use
     (VDD => 0,
      APORT2YCH0 => 1,
      APORT2YCH2 => 3,
      APORT2YCH4 => 5,
      APORT2YCH6 => 7,
      APORT2YCH8 => 9,
      APORT2YCH10 => 11,
      APORT2YCH12 => 13,
      APORT2YCH14 => 15,
      APORT2YCH16 => 17,
      APORT2YCH18 => 19,
      APORT2YCH20 => 21,
      APORT2YCH22 => 23,
      APORT2YCH24 => 25,
      APORT2YCH26 => 27,
      APORT2YCH28 => 29,
      APORT2YCH30 => 31,
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

   subtype INPUTSEL_VBSEL_Field is Interfaces.EFM32.Bit;
   subtype INPUTSEL_VLPSEL_Field is Interfaces.EFM32.Bit;
   subtype INPUTSEL_CSRESEN_Field is Interfaces.EFM32.Bit;

   --  Capacitive Sense Mode Internal Resistor Select
   type INPUTSEL_CSRESSEL_Field is
     (--  Internal capacitive sense resistor value 0
      RES0,
      --  Internal capacitive sense resistor value 1
      RES1,
      --  Internal capacitive sense resistor value 2
      RES2,
      --  Internal capacitive sense resistor value 3
      RES3,
      --  Internal capacitive sense resistor value 4
      RES4,
      --  Internal capacitive sense resistor value 5
      RES5,
      --  Internal capacitive sense resistor value 6
      RES6,
      --  Internal capacitive sense resistor value 7
      RES7)
     with Size => 3;
   for INPUTSEL_CSRESSEL_Field use
     (RES0 => 0,
      RES1 => 1,
      RES2 => 2,
      RES3 => 3,
      RES4 => 4,
      RES5 => 5,
      RES6 => 6,
      RES7 => 7);

   --  Input Selection Register
   type INPUTSEL_Register is record
      --  Positive Input Select
      POSSEL         : INPUTSEL_POSSEL_Field := 16#0#;
      --  Negative Input Select
      NEGSEL         : INPUTSEL_NEGSEL_Field := 16#0#;
      --  VA Selection
      VASEL          : INPUTSEL_VASEL_Field := Interfaces.EFM32.ACMP1.VDD;
      --  VB Selection
      VBSEL          : INPUTSEL_VBSEL_Field := 16#0#;
      --  unspecified
      Reserved_23_23 : Interfaces.EFM32.Bit := 16#0#;
      --  Low-Power Sampled Voltage Selection
      VLPSEL         : INPUTSEL_VLPSEL_Field := 16#0#;
      --  unspecified
      Reserved_25_25 : Interfaces.EFM32.Bit := 16#0#;
      --  Capacitive Sense Mode Internal Resistor Enable
      CSRESEN        : INPUTSEL_CSRESEN_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.EFM32.Bit := 16#0#;
      --  Capacitive Sense Mode Internal Resistor Select
      CSRESSEL       : INPUTSEL_CSRESSEL_Field := Interfaces.EFM32.ACMP1.RES0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INPUTSEL_Register use record
      POSSEL         at 0 range 0 .. 7;
      NEGSEL         at 0 range 8 .. 15;
      VASEL          at 0 range 16 .. 21;
      VBSEL          at 0 range 22 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      VLPSEL         at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      CSRESEN        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      CSRESSEL       at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype STATUS_ACMPACT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_ACMPOUT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_APORTCONFLICT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_EXTIFACT_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. Analog Comparator Active
      ACMPACT       : STATUS_ACMPACT_Field;
      --  Read-only. Analog Comparator Output
      ACMPOUT       : STATUS_ACMPOUT_Field;
      --  Read-only. APORT Conflict Output
      APORTCONFLICT : STATUS_APORTCONFLICT_Field;
      --  Read-only. External Override Interface Active
      EXTIFACT      : STATUS_EXTIFACT_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      ACMPACT       at 0 range 0 .. 0;
      ACMPOUT       at 0 range 1 .. 1;
      APORTCONFLICT at 0 range 2 .. 2;
      EXTIFACT      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype IF_EDGE_Field is Interfaces.EFM32.Bit;
   subtype IF_WARMUP_Field is Interfaces.EFM32.Bit;
   subtype IF_APORTCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. Edge Triggered Interrupt Flag
      EDGE          : IF_EDGE_Field;
      --  Read-only. Warm-up Interrupt Flag
      WARMUP        : IF_WARMUP_Field;
      --  Read-only. APORT Conflict Interrupt Flag
      APORTCONFLICT : IF_APORTCONFLICT_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      EDGE          at 0 range 0 .. 0;
      WARMUP        at 0 range 1 .. 1;
      APORTCONFLICT at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype IFS_EDGE_Field is Interfaces.EFM32.Bit;
   subtype IFS_WARMUP_Field is Interfaces.EFM32.Bit;
   subtype IFS_APORTCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set EDGE Interrupt Flag
      EDGE          : IFS_EDGE_Field := 16#0#;
      --  Write-only. Set WARMUP Interrupt Flag
      WARMUP        : IFS_WARMUP_Field := 16#0#;
      --  Write-only. Set APORTCONFLICT Interrupt Flag
      APORTCONFLICT : IFS_APORTCONFLICT_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      EDGE          at 0 range 0 .. 0;
      WARMUP        at 0 range 1 .. 1;
      APORTCONFLICT at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype IFC_EDGE_Field is Interfaces.EFM32.Bit;
   subtype IFC_WARMUP_Field is Interfaces.EFM32.Bit;
   subtype IFC_APORTCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear EDGE Interrupt Flag
      EDGE          : IFC_EDGE_Field := 16#0#;
      --  Write-only. Clear WARMUP Interrupt Flag
      WARMUP        : IFC_WARMUP_Field := 16#0#;
      --  Write-only. Clear APORTCONFLICT Interrupt Flag
      APORTCONFLICT : IFC_APORTCONFLICT_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      EDGE          at 0 range 0 .. 0;
      WARMUP        at 0 range 1 .. 1;
      APORTCONFLICT at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype IEN_EDGE_Field is Interfaces.EFM32.Bit;
   subtype IEN_WARMUP_Field is Interfaces.EFM32.Bit;
   subtype IEN_APORTCONFLICT_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  EDGE Interrupt Enable
      EDGE          : IEN_EDGE_Field := 16#0#;
      --  WARMUP Interrupt Enable
      WARMUP        : IEN_WARMUP_Field := 16#0#;
      --  APORTCONFLICT Interrupt Enable
      APORTCONFLICT : IEN_APORTCONFLICT_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      EDGE          at 0 range 0 .. 0;
      WARMUP        at 0 range 1 .. 1;
      APORTCONFLICT at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
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
      --  Read-only. 1 If the Bus Connected to APORT1X is in Conflict With
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

   --  Hysteresis Select When ACMPOUT=0
   type HYSTERESIS0_HYST_Field is
     (--  No hysteresis
      HYST0,
      --  14 mV hysteresis
      HYST1,
      --  25 mV hysteresis
      HYST2,
      --  30 mV hysteresis
      HYST3,
      --  35 mV hysteresis
      HYST4,
      --  39 mV hysteresis
      HYST5,
      --  42 mV hysteresis
      HYST6,
      --  45 mV hysteresis
      HYST7,
      --  No hysteresis
      HYST8,
      --  -14 mV hysteresis
      HYST9,
      --  -25 mV hysteresis
      HYST10,
      --  -30 mV hysteresis
      HYST11,
      --  -35 mV hysteresis
      HYST12,
      --  -39 mV hysteresis
      HYST13,
      --  -42 mV hysteresis
      HYST14,
      --  -45 mV hysteresis
      HYST15)
     with Size => 4;
   for HYSTERESIS0_HYST_Field use
     (HYST0 => 0,
      HYST1 => 1,
      HYST2 => 2,
      HYST3 => 3,
      HYST4 => 4,
      HYST5 => 5,
      HYST6 => 6,
      HYST7 => 7,
      HYST8 => 8,
      HYST9 => 9,
      HYST10 => 10,
      HYST11 => 11,
      HYST12 => 12,
      HYST13 => 13,
      HYST14 => 14,
      HYST15 => 15);

   subtype HYSTERESIS_DIVVA_Field is Interfaces.EFM32.UInt6;
   subtype HYSTERESIS_DIVVB_Field is Interfaces.EFM32.UInt6;

   --  Hysteresis 0 Register
   type HYSTERESIS_Register is record
      --  Hysteresis Select When ACMPOUT=0
      HYST           : HYSTERESIS0_HYST_Field := Interfaces.EFM32.ACMP1.HYST0;
      --  unspecified
      Reserved_4_15  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Divider for VA Voltage When ACMPOUT=0
      DIVVA          : HYSTERESIS_DIVVA_Field := 16#0#;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Divider for VB Voltage When ACMPOUT=0
      DIVVB          : HYSTERESIS_DIVVB_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HYSTERESIS_Register use record
      HYST           at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      DIVVA          at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DIVVB          at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ROUTEPEN_OUTPEN_Field is Interfaces.EFM32.Bit;

   --  I/O Routing Pine Enable Register
   type ROUTEPEN_Register is record
      --  ACMP Output Pin Enable
      OUTPEN        : ROUTEPEN_OUTPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTEPEN_Register use record
      OUTPEN        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC0_OUTLOC_Field is
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
   for ROUTELOC0_OUTLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5,
      LOC6 => 6,
      LOC7 => 7);

   --  I/O Routing Location Register
   type ROUTELOC0_Register is record
      --  I/O Location
      OUTLOC        : ROUTELOC0_OUTLOC_Field := Interfaces.EFM32.ACMP1.LOC0;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC0_Register use record
      OUTLOC        at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype EXTIFCTRL_EN_Field is Interfaces.EFM32.Bit;

   --  APORT Selection for External Interface
   type EXTIFCTRL_APORTSEL_Field is
     (--  APORT0X used. EXT_BASE = ACMP_INPUTSEL_POSSEL_APORT0XCH0.
      APORT0X,
      --  APORT0Y used. EXT_BASE = ACMP_INPUTSEL_POSSEL_APORT0YCH0.
      APORT0Y,
      --  APORT1X used. EXT_BASE = ACMP_INPUTSEL_POSSEL_APORT1XCH0.
      APORT1X,
      --  APORT1Y used. EXT_BASE = ACMP_INPUTSEL_POSSEL_APORT1XCH0.
      APORT1Y,
      --  APORT1X/Y used. EXT_BASE = ACMP_INPUTSEL_POSSEL_APORT1XCH0.
      APORT1XY,
      --  APORT2X used. EXT_BASE = ACMP_INPUTSEL_POSSEL_APORT2YCH0.
      APORT2X,
      --  APORT2Y used. EXT_BASE = ACMP_INPUTSEL_POSSEL_APORT2YCH0.
      APORT2Y,
      --  APORT2Y/X used. EXT_BASE = ACMP_INPUTSEL_POSSEL_APORT2YCH0.
      APORT2YX,
      --  APORT3X used. EXT_BASE = ACMP_INPUTSEL_POSSEL_APORT3XCH0.
      APORT3X,
      --  APORT3Y used. EXT_BASE = ACMP_INPUTSEL_POSSEL_APORT3XCH0.
      APORT3Y,
      --  APORT3X/Y used. EXT_BASE = ACMP_INPUTSEL_POSSEL_APORT3XCH0.
      APORT3XY,
      --  APORT4X used. EXT_BASE = ACMP_INPUTSEL_POSSEL_APORT4YCH0.
      APORT4X,
      --  APORT4Y used. EXT_BASE = ACMP_INPUTSEL_POSSEL_APORT4YCH0.
      APORT4Y,
      --  APORT4Y/X used. EXT_BASE = ACMP_INPUTSEL_POSSEL_APORT4YCH0.
      APORT4YX)
     with Size => 4;
   for EXTIFCTRL_APORTSEL_Field use
     (APORT0X => 0,
      APORT0Y => 1,
      APORT1X => 2,
      APORT1Y => 3,
      APORT1XY => 4,
      APORT2X => 5,
      APORT2Y => 6,
      APORT2YX => 7,
      APORT3X => 8,
      APORT3Y => 9,
      APORT3XY => 10,
      APORT4X => 11,
      APORT4Y => 12,
      APORT4YX => 13);

   --  External Override Interface Control
   type EXTIFCTRL_Register is record
      --  Enable External Interface
      EN            : EXTIFCTRL_EN_Field := 16#0#;
      --  unspecified
      Reserved_1_3  : Interfaces.EFM32.UInt3 := 16#0#;
      --  APORT Selection for External Interface
      APORTSEL      : EXTIFCTRL_APORTSEL_Field :=
                       Interfaces.EFM32.ACMP1.APORT0X;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTIFCTRL_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      APORTSEL      at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ACMP1
   type ACMP1_Peripheral is record
      --  Control Register
      CTRL          : aliased CTRL_Register;
      --  Input Selection Register
      INPUTSEL      : aliased INPUTSEL_Register;
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
      --  APORT Conflict Status Register
      APORTCONFLICT : aliased APORTCONFLICT_Register;
      --  Hysteresis 0 Register
      HYSTERESIS0   : aliased HYSTERESIS_Register;
      --  Hysteresis 1 Register
      HYSTERESIS1   : aliased HYSTERESIS_Register;
      --  I/O Routing Pine Enable Register
      ROUTEPEN      : aliased ROUTEPEN_Register;
      --  I/O Routing Location Register
      ROUTELOC0     : aliased ROUTELOC0_Register;
      --  External Override Interface Control
      EXTIFCTRL     : aliased EXTIFCTRL_Register;
   end record
     with Volatile;

   for ACMP1_Peripheral use record
      CTRL          at 16#0# range 0 .. 31;
      INPUTSEL      at 16#4# range 0 .. 31;
      STATUS        at 16#8# range 0 .. 31;
      IF_k          at 16#C# range 0 .. 31;
      IFS           at 16#10# range 0 .. 31;
      IFC           at 16#14# range 0 .. 31;
      IEN           at 16#18# range 0 .. 31;
      APORTREQ      at 16#20# range 0 .. 31;
      APORTCONFLICT at 16#24# range 0 .. 31;
      HYSTERESIS0   at 16#28# range 0 .. 31;
      HYSTERESIS1   at 16#2C# range 0 .. 31;
      ROUTEPEN      at 16#40# range 0 .. 31;
      ROUTELOC0     at 16#44# range 0 .. 31;
      EXTIFCTRL     at 16#48# range 0 .. 31;
   end record;

   --  ACMP1
   ACMP1_Periph : aliased ACMP1_Peripheral
     with Import, Address => ACMP1_Base;

end Interfaces.EFM32.ACMP1;
