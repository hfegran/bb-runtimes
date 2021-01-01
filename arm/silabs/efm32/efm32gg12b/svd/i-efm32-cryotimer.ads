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

--  CRYOTIMER
package Interfaces.EFM32.CRYOTIMER is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_DEBUGRUN_Field is Interfaces.EFM32.Bit;

   --  Select Low Frequency Oscillator
   type CTRL_OSCSEL_Field is
     (--  Output is driven low
      DISABLED,
      --  Select Low Frequency RC Oscillator
      LFRCO,
      --  Select Low Frequency Crystal Oscillator
      LFXO,
      --  Select Ultra Low Frequency RC Oscillator
      ULFRCO)
     with Size => 2;
   for CTRL_OSCSEL_Field use
     (DISABLED => 0,
      LFRCO => 1,
      LFXO => 2,
      ULFRCO => 3);

   --  Prescaler Setting
   type CTRL_PRESC_Field is
     (--  LF Oscillator frequency undivided
      DIV1,
      --  LF Oscillator frequency divided by 2
      DIV2,
      --  LF Oscillator frequency divided by 4
      DIV4,
      --  LF Oscillator frequency divided by 8
      DIV8,
      --  LF Oscillator frequency divided by 16
      DIV16,
      --  LF Oscillator frequency divided by 32
      DIV32,
      --  LF Oscillator frequency divided by 64
      DIV64,
      --  LF Oscillator frequency divided by 128
      DIV128)
     with Size => 3;
   for CTRL_PRESC_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3,
      DIV16 => 4,
      DIV32 => 5,
      DIV64 => 6,
      DIV128 => 7);

   --  Control Register
   type CTRL_Register is record
      --  Enable CRYOTIMER
      EN            : CTRL_EN_Field := 16#0#;
      --  Debug Mode Run Enable
      DEBUGRUN      : CTRL_DEBUGRUN_Field := 16#0#;
      --  Select Low Frequency Oscillator
      OSCSEL        : CTRL_OSCSEL_Field :=
                       Interfaces.EFM32.CRYOTIMER.DISABLED;
      --  unspecified
      Reserved_4_4  : Interfaces.EFM32.Bit := 16#0#;
      --  Prescaler Setting
      PRESC         : CTRL_PRESC_Field := Interfaces.EFM32.CRYOTIMER.DIV1;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      EN            at 0 range 0 .. 0;
      DEBUGRUN      at 0 range 1 .. 1;
      OSCSEL        at 0 range 2 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      PRESC         at 0 range 5 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype PERIODSEL_PERIODSEL_Field is Interfaces.EFM32.UInt6;

   --  Interrupt Duration
   type PERIODSEL_Register is record
      --  Interrupts/Wakeup Events Period Setting
      PERIODSEL     : PERIODSEL_PERIODSEL_Field := 16#20#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PERIODSEL_Register use record
      PERIODSEL     at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype EM4WUEN_EM4WU_Field is Interfaces.EFM32.Bit;

   --  Wake Up Enable
   type EM4WUEN_Register is record
      --  EM4 Wake-up Enable
      EM4WU         : EM4WUEN_EM4WU_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EM4WUEN_Register use record
      EM4WU         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype IF_PERIOD_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. Wakeup Event/Interrupt
      PERIOD        : IF_PERIOD_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      PERIOD        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype IFS_PERIOD_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set PERIOD Interrupt Flag
      PERIOD        : IFS_PERIOD_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      PERIOD        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype IFC_PERIOD_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear PERIOD Interrupt Flag
      PERIOD        : IFC_PERIOD_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      PERIOD        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype IEN_PERIOD_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  PERIOD Interrupt Enable
      PERIOD        : IEN_PERIOD_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      PERIOD        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CRYOTIMER
   type CRYOTIMER_Peripheral is record
      --  Control Register
      CTRL      : aliased CTRL_Register;
      --  Interrupt Duration
      PERIODSEL : aliased PERIODSEL_Register;
      --  Counter Value
      CNT       : aliased Interfaces.EFM32.UInt32;
      --  Wake Up Enable
      EM4WUEN   : aliased EM4WUEN_Register;
      --  Interrupt Flag Register
      IF_k      : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS       : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC       : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN       : aliased IEN_Register;
   end record
     with Volatile;

   for CRYOTIMER_Peripheral use record
      CTRL      at 16#0# range 0 .. 31;
      PERIODSEL at 16#4# range 0 .. 31;
      CNT       at 16#8# range 0 .. 31;
      EM4WUEN   at 16#C# range 0 .. 31;
      IF_k      at 16#10# range 0 .. 31;
      IFS       at 16#14# range 0 .. 31;
      IFC       at 16#18# range 0 .. 31;
      IEN       at 16#1C# range 0 .. 31;
   end record;

   --  CRYOTIMER
   CRYOTIMER_Periph : aliased CRYOTIMER_Peripheral
     with Import, Address => CRYOTIMER_Base;

end Interfaces.EFM32.CRYOTIMER;
