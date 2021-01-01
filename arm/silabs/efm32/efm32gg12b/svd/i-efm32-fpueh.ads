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

--  FPUEH
package Interfaces.EFM32.FPUEH is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype IF_FPIOC_Field is Interfaces.EFM32.Bit;
   subtype IF_FPDZC_Field is Interfaces.EFM32.Bit;
   subtype IF_FPUFC_Field is Interfaces.EFM32.Bit;
   subtype IF_FPOFC_Field is Interfaces.EFM32.Bit;
   subtype IF_FPIDC_Field is Interfaces.EFM32.Bit;
   subtype IF_FPIXC_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. FPU invalid operation
      FPIOC         : IF_FPIOC_Field;
      --  Read-only. FPU divide-by-zero exception
      FPDZC         : IF_FPDZC_Field;
      --  Read-only. FPU underflow exception
      FPUFC         : IF_FPUFC_Field;
      --  Read-only. FPU overflow exception
      FPOFC         : IF_FPOFC_Field;
      --  Read-only. FPU input denormal exception
      FPIDC         : IF_FPIDC_Field;
      --  Read-only. FPU inexact exception
      FPIXC         : IF_FPIXC_Field;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      FPIOC         at 0 range 0 .. 0;
      FPDZC         at 0 range 1 .. 1;
      FPUFC         at 0 range 2 .. 2;
      FPOFC         at 0 range 3 .. 3;
      FPIDC         at 0 range 4 .. 4;
      FPIXC         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype IFS_FPIOC_Field is Interfaces.EFM32.Bit;
   subtype IFS_FPDZC_Field is Interfaces.EFM32.Bit;
   subtype IFS_FPUFC_Field is Interfaces.EFM32.Bit;
   subtype IFS_FPOFC_Field is Interfaces.EFM32.Bit;
   subtype IFS_FPIDC_Field is Interfaces.EFM32.Bit;
   subtype IFS_FPIXC_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set FPIOC Interrupt Flag
      FPIOC         : IFS_FPIOC_Field := 16#0#;
      --  Write-only. Set FPDZC Interrupt Flag
      FPDZC         : IFS_FPDZC_Field := 16#0#;
      --  Write-only. Set FPUFC Interrupt Flag
      FPUFC         : IFS_FPUFC_Field := 16#0#;
      --  Write-only. Set FPOFC Interrupt Flag
      FPOFC         : IFS_FPOFC_Field := 16#0#;
      --  Write-only. Set FPIDC Interrupt Flag
      FPIDC         : IFS_FPIDC_Field := 16#0#;
      --  Write-only. Set FPIXC Interrupt Flag
      FPIXC         : IFS_FPIXC_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      FPIOC         at 0 range 0 .. 0;
      FPDZC         at 0 range 1 .. 1;
      FPUFC         at 0 range 2 .. 2;
      FPOFC         at 0 range 3 .. 3;
      FPIDC         at 0 range 4 .. 4;
      FPIXC         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype IFC_FPIOC_Field is Interfaces.EFM32.Bit;
   subtype IFC_FPDZC_Field is Interfaces.EFM32.Bit;
   subtype IFC_FPUFC_Field is Interfaces.EFM32.Bit;
   subtype IFC_FPOFC_Field is Interfaces.EFM32.Bit;
   subtype IFC_FPIDC_Field is Interfaces.EFM32.Bit;
   subtype IFC_FPIXC_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear FPIOC Interrupt Flag
      FPIOC         : IFC_FPIOC_Field := 16#0#;
      --  Write-only. Clear FPDZC Interrupt Flag
      FPDZC         : IFC_FPDZC_Field := 16#0#;
      --  Write-only. Clear FPUFC Interrupt Flag
      FPUFC         : IFC_FPUFC_Field := 16#0#;
      --  Write-only. Clear FPOFC Interrupt Flag
      FPOFC         : IFC_FPOFC_Field := 16#0#;
      --  Write-only. Clear FPIDC Interrupt Flag
      FPIDC         : IFC_FPIDC_Field := 16#0#;
      --  Write-only. Clear FPIXC Interrupt Flag
      FPIXC         : IFC_FPIXC_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      FPIOC         at 0 range 0 .. 0;
      FPDZC         at 0 range 1 .. 1;
      FPUFC         at 0 range 2 .. 2;
      FPOFC         at 0 range 3 .. 3;
      FPIDC         at 0 range 4 .. 4;
      FPIXC         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype IEN_FPIOC_Field is Interfaces.EFM32.Bit;
   subtype IEN_FPDZC_Field is Interfaces.EFM32.Bit;
   subtype IEN_FPUFC_Field is Interfaces.EFM32.Bit;
   subtype IEN_FPOFC_Field is Interfaces.EFM32.Bit;
   subtype IEN_FPIDC_Field is Interfaces.EFM32.Bit;
   subtype IEN_FPIXC_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  FPIOC Interrupt Enable
      FPIOC         : IEN_FPIOC_Field := 16#0#;
      --  FPDZC Interrupt Enable
      FPDZC         : IEN_FPDZC_Field := 16#0#;
      --  FPUFC Interrupt Enable
      FPUFC         : IEN_FPUFC_Field := 16#0#;
      --  FPOFC Interrupt Enable
      FPOFC         : IEN_FPOFC_Field := 16#0#;
      --  FPIDC Interrupt Enable
      FPIDC         : IEN_FPIDC_Field := 16#0#;
      --  FPIXC Interrupt Enable
      FPIXC         : IEN_FPIXC_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      FPIOC         at 0 range 0 .. 0;
      FPDZC         at 0 range 1 .. 1;
      FPUFC         at 0 range 2 .. 2;
      FPOFC         at 0 range 3 .. 3;
      FPIDC         at 0 range 4 .. 4;
      FPIXC         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  FPUEH
   type FPUEH_Peripheral is record
      --  Interrupt Flag Register
      IF_k : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS  : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC  : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN  : aliased IEN_Register;
   end record
     with Volatile;

   for FPUEH_Peripheral use record
      IF_k at 16#0# range 0 .. 31;
      IFS  at 16#4# range 0 .. 31;
      IFC  at 16#8# range 0 .. 31;
      IEN  at 16#C# range 0 .. 31;
   end record;

   --  FPUEH
   FPUEH_Periph : aliased FPUEH_Peripheral
     with Import, Address => FPUEH_Base;

end Interfaces.EFM32.FPUEH;
