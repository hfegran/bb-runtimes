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

--  GPCRC
package Interfaces.EFM32.GPCRC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_POLYSEL_Field is Interfaces.EFM32.Bit;
   subtype CTRL_BYTEMODE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_BITREVERSE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_BYTEREVERSE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_AUTOINIT_Field is Interfaces.EFM32.Bit;

   --  Control Register
   type CTRL_Register is record
      --  CRC Functionality Enable
      EN             : CTRL_EN_Field := 16#0#;
      --  unspecified
      Reserved_1_3   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Polynomial Select
      POLYSEL        : CTRL_POLYSEL_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Byte Mode Enable
      BYTEMODE       : CTRL_BYTEMODE_Field := 16#0#;
      --  Byte-level Bit Reverse Enable
      BITREVERSE     : CTRL_BITREVERSE_Field := 16#0#;
      --  Byte Reverse Mode
      BYTEREVERSE    : CTRL_BYTEREVERSE_Field := 16#0#;
      --  unspecified
      Reserved_11_12 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Auto Init Enable
      AUTOINIT       : CTRL_AUTOINIT_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      POLYSEL        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      BYTEMODE       at 0 range 8 .. 8;
      BITREVERSE     at 0 range 9 .. 9;
      BYTEREVERSE    at 0 range 10 .. 10;
      Reserved_11_12 at 0 range 11 .. 12;
      AUTOINIT       at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype CMD_INIT_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Initialization Enable
      INIT          : CMD_INIT_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      INIT          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype POLY_POLY_Field is Interfaces.EFM32.UInt16;

   --  CRC Polynomial Value
   type POLY_Register is record
      --  CRC Polynomial Value
      POLY           : POLY_POLY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POLY_Register use record
      POLY           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype INPUTDATAHWORD_INPUTDATAHWORD_Field is Interfaces.EFM32.UInt16;

   --  Input 16-bit Data Register
   type INPUTDATAHWORD_Register is record
      --  Input Data for 16-bit
      INPUTDATAHWORD : INPUTDATAHWORD_INPUTDATAHWORD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INPUTDATAHWORD_Register use record
      INPUTDATAHWORD at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype INPUTDATABYTE_INPUTDATABYTE_Field is Interfaces.EFM32.Byte;

   --  Input 8-bit Data Register
   type INPUTDATABYTE_Register is record
      --  Input Data for 8-bit
      INPUTDATABYTE : INPUTDATABYTE_INPUTDATABYTE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INPUTDATABYTE_Register use record
      INPUTDATABYTE at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  GPCRC
   type GPCRC_Peripheral is record
      --  Control Register
      CTRL           : aliased CTRL_Register;
      --  Command Register
      CMD            : aliased CMD_Register;
      --  CRC Init Value
      INIT           : aliased Interfaces.EFM32.UInt32;
      --  CRC Polynomial Value
      POLY           : aliased POLY_Register;
      --  Input 32-bit Data Register
      INPUTDATA      : aliased Interfaces.EFM32.UInt32;
      --  Input 16-bit Data Register
      INPUTDATAHWORD : aliased INPUTDATAHWORD_Register;
      --  Input 8-bit Data Register
      INPUTDATABYTE  : aliased INPUTDATABYTE_Register;
      --  CRC Data Register
      DATA           : aliased Interfaces.EFM32.UInt32;
      --  CRC Data Reverse Register
      DATAREV        : aliased Interfaces.EFM32.UInt32;
      --  CRC Data Byte Reverse Register
      DATABYTEREV    : aliased Interfaces.EFM32.UInt32;
   end record
     with Volatile;

   for GPCRC_Peripheral use record
      CTRL           at 16#0# range 0 .. 31;
      CMD            at 16#4# range 0 .. 31;
      INIT           at 16#8# range 0 .. 31;
      POLY           at 16#C# range 0 .. 31;
      INPUTDATA      at 16#10# range 0 .. 31;
      INPUTDATAHWORD at 16#14# range 0 .. 31;
      INPUTDATABYTE  at 16#18# range 0 .. 31;
      DATA           at 16#1C# range 0 .. 31;
      DATAREV        at 16#20# range 0 .. 31;
      DATABYTEREV    at 16#24# range 0 .. 31;
   end record;

   --  GPCRC
   GPCRC_Periph : aliased GPCRC_Peripheral
     with Import, Address => GPCRC_Base;

end Interfaces.EFM32.GPCRC;
