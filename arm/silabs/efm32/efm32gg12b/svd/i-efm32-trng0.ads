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

--  TRNG0
package Interfaces.EFM32.TRNG0 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CONTROL_ENABLE_Field is Interfaces.EFM32.Bit;
   subtype CONTROL_TESTEN_Field is Interfaces.EFM32.Bit;
   subtype CONTROL_CONDBYPASS_Field is Interfaces.EFM32.Bit;
   subtype CONTROL_REPCOUNTIEN_Field is Interfaces.EFM32.Bit;
   subtype CONTROL_APT64IEN_Field is Interfaces.EFM32.Bit;
   subtype CONTROL_APT4096IEN_Field is Interfaces.EFM32.Bit;
   subtype CONTROL_FULLIEN_Field is Interfaces.EFM32.Bit;
   subtype CONTROL_SOFTRESET_Field is Interfaces.EFM32.Bit;
   subtype CONTROL_PREIEN_Field is Interfaces.EFM32.Bit;
   subtype CONTROL_ALMIEN_Field is Interfaces.EFM32.Bit;
   subtype CONTROL_FORCERUN_Field is Interfaces.EFM32.Bit;
   subtype CONTROL_BYPNIST_Field is Interfaces.EFM32.Bit;
   subtype CONTROL_BYPAIS31_Field is Interfaces.EFM32.Bit;

   --  Main Control Register
   type CONTROL_Register is record
      --  TRNG Module Enable
      ENABLE         : CONTROL_ENABLE_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.EFM32.Bit := 16#0#;
      --  Test Enable
      TESTEN         : CONTROL_TESTEN_Field := 16#0#;
      --  Conditioning Bypass
      CONDBYPASS     : CONTROL_CONDBYPASS_Field := 16#0#;
      --  Interrupt Enable for Repetition Count Test Failure
      REPCOUNTIEN    : CONTROL_REPCOUNTIEN_Field := 16#0#;
      --  Interrupt Enable for Adaptive Proportion Test Failure (64-sample
      --  Window)
      APT64IEN       : CONTROL_APT64IEN_Field := 16#0#;
      --  Interrupt Enable for Adaptive Proportion Test Failure (4096-sample
      --  Window)
      APT4096IEN     : CONTROL_APT4096IEN_Field := 16#0#;
      --  Interrupt Enable for FIFO Full
      FULLIEN        : CONTROL_FULLIEN_Field := 16#0#;
      --  Software Reset
      SOFTRESET      : CONTROL_SOFTRESET_Field := 16#0#;
      --  Interrupt enable for AIS31 preliminary noise alarm
      PREIEN         : CONTROL_PREIEN_Field := 16#0#;
      --  Interrupt enable for AIS31 noise alarm
      ALMIEN         : CONTROL_ALMIEN_Field := 16#0#;
      --  Oscillator Force Run
      FORCERUN       : CONTROL_FORCERUN_Field := 16#0#;
      --  NIST Start-up Test Bypass.
      BYPNIST        : CONTROL_BYPNIST_Field := 16#0#;
      --  AIS31 Start-up Test Bypass.
      BYPAIS31       : CONTROL_BYPAIS31_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONTROL_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      TESTEN         at 0 range 2 .. 2;
      CONDBYPASS     at 0 range 3 .. 3;
      REPCOUNTIEN    at 0 range 4 .. 4;
      APT64IEN       at 0 range 5 .. 5;
      APT4096IEN     at 0 range 6 .. 6;
      FULLIEN        at 0 range 7 .. 7;
      SOFTRESET      at 0 range 8 .. 8;
      PREIEN         at 0 range 9 .. 9;
      ALMIEN         at 0 range 10 .. 10;
      FORCERUN       at 0 range 11 .. 11;
      BYPNIST        at 0 range 12 .. 12;
      BYPAIS31       at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype STATUS_TESTDATABUSY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_REPCOUNTIF_Field is Interfaces.EFM32.Bit;
   subtype STATUS_APT64IF_Field is Interfaces.EFM32.Bit;
   subtype STATUS_APT4096IF_Field is Interfaces.EFM32.Bit;
   subtype STATUS_FULLIF_Field is Interfaces.EFM32.Bit;
   subtype STATUS_PREIF_Field is Interfaces.EFM32.Bit;
   subtype STATUS_ALMIF_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. Test Data Busy
      TESTDATABUSY   : STATUS_TESTDATABUSY_Field := 16#0#;
      --  unspecified
      Reserved_1_3   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Read-only. Repetition Count Test Interrupt Status
      REPCOUNTIF     : STATUS_REPCOUNTIF_Field := 16#0#;
      --  Read-only. Adaptive Proportion test failure (64-sample window)
      --  interrupt status
      APT64IF        : STATUS_APT64IF_Field := 16#0#;
      --  Read-only. Adaptive Proportion test failure (4096-sample window)
      --  interrupt status
      APT4096IF      : STATUS_APT4096IF_Field := 16#0#;
      --  Read-only. FIFO Full Interrupt Status
      FULLIF         : STATUS_FULLIF_Field := 16#0#;
      --  AIS31 Preliminary Noise Alarm interrupt status
      PREIF          : STATUS_PREIF_Field := 16#0#;
      --  Read-only. AIS31 Noise Alarm interrupt status
      ALMIF          : STATUS_ALMIF_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      TESTDATABUSY   at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      REPCOUNTIF     at 0 range 4 .. 4;
      APT64IF        at 0 range 5 .. 5;
      APT4096IF      at 0 range 6 .. 6;
      FULLIF         at 0 range 7 .. 7;
      PREIF          at 0 range 8 .. 8;
      ALMIF          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype INITWAITVAL_VALUE_Field is Interfaces.EFM32.UInt10;

   --  Initial Wait Counter
   type INITWAITVAL_Register is record
      --  Wait counter value
      VALUE          : INITWAITVAL_VALUE_Field := 16#3FF#;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INITWAITVAL_Register use record
      VALUE          at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype CORECLKCONTROL_CORECLKDIS_Field is Interfaces.EFM32.Bit;
   subtype CORECLKCONTROL_CORECLKPRESC_Field is Interfaces.EFM32.UInt3;

   --  Core Clock Control Register
   type CORECLKCONTROL_Register is record
      --  Core Clock Disable
      CORECLKDIS    : CORECLKCONTROL_CORECLKDIS_Field := 16#0#;
      --  unspecified
      Reserved_1_3  : Interfaces.EFM32.UInt3 := 16#0#;
      --  Clock division factor of CORECLKPRESC+1
      CORECLKPRESC  : CORECLKCONTROL_CORECLKPRESC_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.EFM32.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CORECLKCONTROL_Register use record
      CORECLKDIS    at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      CORECLKPRESC  at 0 range 4 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  TRNG0
   type TRNG0_Peripheral is record
      --  Main Control Register
      CONTROL        : aliased CONTROL_Register;
      --  FIFO Level Register
      FIFOLEVEL      : aliased Interfaces.EFM32.UInt32;
      --  FIFO Depth Register
      FIFODEPTH      : aliased Interfaces.EFM32.UInt32;
      --  Key Register 0
      KEY0           : aliased Interfaces.EFM32.UInt32;
      --  Key Register 1
      KEY1           : aliased Interfaces.EFM32.UInt32;
      --  Key Register 2
      KEY2           : aliased Interfaces.EFM32.UInt32;
      --  Key Register 3
      KEY3           : aliased Interfaces.EFM32.UInt32;
      --  Test Data Register
      TESTDATA       : aliased Interfaces.EFM32.UInt32;
      --  Status Register
      STATUS         : aliased STATUS_Register;
      --  Initial Wait Counter
      INITWAITVAL    : aliased INITWAITVAL_Register;
      --  FIFO Data
      FIFO           : aliased Interfaces.EFM32.UInt32;
      --  Core Clock Control Register
      CORECLKCONTROL : aliased CORECLKCONTROL_Register;
   end record
     with Volatile;

   for TRNG0_Peripheral use record
      CONTROL        at 16#0# range 0 .. 31;
      FIFOLEVEL      at 16#4# range 0 .. 31;
      FIFODEPTH      at 16#C# range 0 .. 31;
      KEY0           at 16#10# range 0 .. 31;
      KEY1           at 16#14# range 0 .. 31;
      KEY2           at 16#18# range 0 .. 31;
      KEY3           at 16#1C# range 0 .. 31;
      TESTDATA       at 16#20# range 0 .. 31;
      STATUS         at 16#30# range 0 .. 31;
      INITWAITVAL    at 16#34# range 0 .. 31;
      FIFO           at 16#100# range 0 .. 31;
      CORECLKCONTROL at 16#300# range 0 .. 31;
   end record;

   --  TRNG0
   TRNG0_Periph : aliased TRNG0_Peripheral
     with Import, Address => TRNG0_Base;

end Interfaces.EFM32.TRNG0;
