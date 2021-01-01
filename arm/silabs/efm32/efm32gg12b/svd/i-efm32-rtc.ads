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

--  RTC
package Interfaces.EFM32.RTC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_DEBUGRUN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_COMP0TOP_Field is Interfaces.EFM32.Bit;

   --  Control Register
   type CTRL_Register is record
      --  RTC Enable
      EN            : CTRL_EN_Field := 16#0#;
      --  Debug Mode Run Enable
      DEBUGRUN      : CTRL_DEBUGRUN_Field := 16#0#;
      --  Compare Channel 0 is Top Value
      COMP0TOP      : CTRL_COMP0TOP_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      EN            at 0 range 0 .. 0;
      DEBUGRUN      at 0 range 1 .. 1;
      COMP0TOP      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype CNT_CNT_Field is Interfaces.EFM32.UInt24;

   --  Counter Value Register
   type CNT_Register is record
      --  Counter Value
      CNT            : CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register use record
      CNT            at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype IF_OF_Field is Interfaces.EFM32.Bit;
   subtype IF_COMP_Field is Interfaces.EFM32.UInt6;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. Overflow Interrupt Flag
      OF_k          : IF_OF_Field;
      --  Read-only. Compare Match X Interrupt Flag
      COMP          : IF_COMP_Field;
      --  unspecified
      Reserved_7_31 : Interfaces.EFM32.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      OF_k          at 0 range 0 .. 0;
      COMP          at 0 range 1 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype IFS_OF_Field is Interfaces.EFM32.Bit;
   subtype IFS_COMP_Field is Interfaces.EFM32.UInt6;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set OF Interrupt Flag
      OF_k          : IFS_OF_Field := 16#0#;
      --  Write-only. Set COMP Interrupt Flag
      COMP          : IFS_COMP_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.EFM32.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      OF_k          at 0 range 0 .. 0;
      COMP          at 0 range 1 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype IFC_OF_Field is Interfaces.EFM32.Bit;
   subtype IFC_COMP_Field is Interfaces.EFM32.UInt6;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear OF Interrupt Flag
      OF_k          : IFC_OF_Field := 16#0#;
      --  Write-only. Clear COMP Interrupt Flag
      COMP          : IFC_COMP_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.EFM32.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      OF_k          at 0 range 0 .. 0;
      COMP          at 0 range 1 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype IEN_OF_Field is Interfaces.EFM32.Bit;
   subtype IEN_COMP_Field is Interfaces.EFM32.UInt6;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  OF Interrupt Enable
      OF_k          : IEN_OF_Field := 16#0#;
      --  COMP Interrupt Enable
      COMP          : IEN_COMP_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.EFM32.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      OF_k          at 0 range 0 .. 0;
      COMP          at 0 range 1 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype COMPA_COMP_COMP_Field is Interfaces.EFM32.UInt24;

   --  Compare Value Register X
   type COMPA_COMP_Register is record
      --  Compare Value
      COMP           : COMPA_COMP_COMP_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMPA_COMP_Register use record
      COMP           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype COMPB_COMP_COMP_Field is Interfaces.EFM32.UInt24;

   --  Compare Value Register X
   type COMPB_COMP_Register is record
      --  Compare Value
      COMP           : COMPB_COMP_COMP_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMPB_COMP_Register use record
      COMP           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype COMPC_COMP_COMP_Field is Interfaces.EFM32.UInt24;

   --  Compare Value Register X
   type COMPC_COMP_Register is record
      --  Compare Value
      COMP           : COMPC_COMP_COMP_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMPC_COMP_Register use record
      COMP           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype COMPD_COMP_COMP_Field is Interfaces.EFM32.UInt24;

   --  Compare Value Register X
   type COMPD_COMP_Register is record
      --  Compare Value
      COMP           : COMPD_COMP_COMP_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMPD_COMP_Register use record
      COMP           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype COMPE_COMP_COMP_Field is Interfaces.EFM32.UInt24;

   --  Compare Value Register X
   type COMPE_COMP_Register is record
      --  Compare Value
      COMP           : COMPE_COMP_COMP_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMPE_COMP_Register use record
      COMP           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype COMPF_COMP_COMP_Field is Interfaces.EFM32.UInt24;

   --  Compare Value Register X
   type COMPF_COMP_Register is record
      --  Compare Value
      COMP           : COMPF_COMP_COMP_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMPF_COMP_Register use record
      COMP           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RTC
   type RTC_Peripheral is record
      --  Control Register
      CTRL       : aliased CTRL_Register;
      --  Counter Value Register
      CNT        : aliased CNT_Register;
      --  Interrupt Flag Register
      IF_k       : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS        : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC        : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN        : aliased IEN_Register;
      --  Compare Value Register X
      COMPA_COMP : aliased COMPA_COMP_Register;
      --  Compare Value Register X
      COMPB_COMP : aliased COMPB_COMP_Register;
      --  Compare Value Register X
      COMPC_COMP : aliased COMPC_COMP_Register;
      --  Compare Value Register X
      COMPD_COMP : aliased COMPD_COMP_Register;
      --  Compare Value Register X
      COMPE_COMP : aliased COMPE_COMP_Register;
      --  Compare Value Register X
      COMPF_COMP : aliased COMPF_COMP_Register;
   end record
     with Volatile;

   for RTC_Peripheral use record
      CTRL       at 16#0# range 0 .. 31;
      CNT        at 16#4# range 0 .. 31;
      IF_k       at 16#8# range 0 .. 31;
      IFS        at 16#C# range 0 .. 31;
      IFC        at 16#10# range 0 .. 31;
      IEN        at 16#14# range 0 .. 31;
      COMPA_COMP at 16#20# range 0 .. 31;
      COMPB_COMP at 16#24# range 0 .. 31;
      COMPC_COMP at 16#28# range 0 .. 31;
      COMPD_COMP at 16#2C# range 0 .. 31;
      COMPE_COMP at 16#30# range 0 .. 31;
      COMPF_COMP at 16#34# range 0 .. 31;
   end record;

   --  RTC
   RTC_Periph : aliased RTC_Peripheral
     with Import, Address => RTC_Base;

end Interfaces.EFM32.RTC;
