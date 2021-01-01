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

--  RMU
package Interfaces.EFM32.RMU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  WDOG Reset Mode
   type CTRL_WDOGRMODE_Field is
     (--  Reset request is blocked. This disable bit is redundant with enable/disable
--  bit in WDOG
      DISABLED,
      --  The CRYOTIMER, DEBUGGER, RTCC, are not reset.
      LIMITED_k,
      --  The CRYOTIMER, DEBUGGER are not reset. RTCC is reset.
      EXTENDED,
      --  The entire device is reset except some EMU and RMU registers.
      FULL)
     with Size => 3;
   for CTRL_WDOGRMODE_Field use
     (DISABLED => 0,
      LIMITED_k => 1,
      EXTENDED => 2,
      FULL => 4);

   --  Core LOCKUP Reset Mode
   type CTRL_LOCKUPRMODE_Field is
     (--  Reset request is blocked.
      DISABLED,
      --  The CRYOTIMER, DEBUGGER, RTCC, are not reset.
      LIMITED_k,
      --  The CRYOTIMER, DEBUGGER are not reset. RTCC is reset.
      EXTENDED,
      --  The entire device is reset except some EMU and RMU registers.
      FULL)
     with Size => 3;
   for CTRL_LOCKUPRMODE_Field use
     (DISABLED => 0,
      LIMITED_k => 1,
      EXTENDED => 2,
      FULL => 4);

   --  Core Sysreset Reset Mode
   type CTRL_SYSRMODE_Field is
     (--  Reset request is blocked.
      DISABLED,
      --  The CRYOTIMER, DEBUGGER, RTCC, are not reset.
      LIMITED_k,
      --  The CRYOTIMER, DEBUGGER are not reset. RTCC is reset.
      EXTENDED,
      --  The entire device is reset except some EMU and RMU registers.
      FULL)
     with Size => 3;
   for CTRL_SYSRMODE_Field use
     (DISABLED => 0,
      LIMITED_k => 1,
      EXTENDED => 2,
      FULL => 4);

   --  PIN Reset Mode
   type CTRL_PINRMODE_Field is
     (--  Reset request is blocked.
      DISABLED,
      --  The CRYOTIMER, DEBUGGER, RTCC, are not reset.
      LIMITED_k,
      --  The CRYOTIMER, DEBUGGER are not reset. RTCC is reset.
      EXTENDED,
      --  The entire device is reset except some EMU and RMU registers.
      FULL)
     with Size => 3;
   for CTRL_PINRMODE_Field use
     (DISABLED => 0,
      LIMITED_k => 1,
      EXTENDED => 2,
      FULL => 4);

   subtype CTRL_RESETSTATE_Field is Interfaces.EFM32.UInt2;

   --  Control Register
   type CTRL_Register is record
      --  WDOG Reset Mode
      WDOGRMODE      : CTRL_WDOGRMODE_Field := Interfaces.EFM32.RMU.FULL;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit := 16#0#;
      --  Core LOCKUP Reset Mode
      LOCKUPRMODE    : CTRL_LOCKUPRMODE_Field :=
                        Interfaces.EFM32.RMU.DISABLED;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Core Sysreset Reset Mode
      SYSRMODE       : CTRL_SYSRMODE_Field := Interfaces.EFM32.RMU.EXTENDED;
      --  unspecified
      Reserved_11_11 : Interfaces.EFM32.Bit := 16#0#;
      --  PIN Reset Mode
      PINRMODE       : CTRL_PINRMODE_Field := Interfaces.EFM32.RMU.FULL;
      --  unspecified
      Reserved_15_23 : Interfaces.EFM32.UInt9 := 16#0#;
      --  System Software Reset State
      RESETSTATE     : CTRL_RESETSTATE_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.EFM32.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      WDOGRMODE      at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      LOCKUPRMODE    at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SYSRMODE       at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      PINRMODE       at 0 range 12 .. 14;
      Reserved_15_23 at 0 range 15 .. 23;
      RESETSTATE     at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype RSTCAUSE_PORST_Field is Interfaces.EFM32.Bit;
   subtype RSTCAUSE_AVDDBOD_Field is Interfaces.EFM32.Bit;
   subtype RSTCAUSE_DVDDBOD_Field is Interfaces.EFM32.Bit;
   subtype RSTCAUSE_DECBOD_Field is Interfaces.EFM32.Bit;
   subtype RSTCAUSE_EXTRST_Field is Interfaces.EFM32.Bit;
   subtype RSTCAUSE_LOCKUPRST_Field is Interfaces.EFM32.Bit;
   subtype RSTCAUSE_SYSREQRST_Field is Interfaces.EFM32.Bit;
   subtype RSTCAUSE_WDOGRST_Field is Interfaces.EFM32.Bit;
   subtype RSTCAUSE_BUMODERST_Field is Interfaces.EFM32.Bit;
   subtype RSTCAUSE_EM4RST_Field is Interfaces.EFM32.Bit;

   --  Reset Cause Register
   type RSTCAUSE_Register is record
      --  Read-only. Power on Reset
      PORST          : RSTCAUSE_PORST_Field;
      --  unspecified
      Reserved_1_1   : Interfaces.EFM32.Bit;
      --  Read-only. Brown Out Detector AVDD Reset
      AVDDBOD        : RSTCAUSE_AVDDBOD_Field;
      --  Read-only. Brown Out Detector DVDD Reset
      DVDDBOD        : RSTCAUSE_DVDDBOD_Field;
      --  Read-only. Brown Out Detector Decouple Domain Reset
      DECBOD         : RSTCAUSE_DECBOD_Field;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3;
      --  Read-only. External Pin Reset
      EXTRST         : RSTCAUSE_EXTRST_Field;
      --  Read-only. LOCKUP Reset
      LOCKUPRST      : RSTCAUSE_LOCKUPRST_Field;
      --  Read-only. System Request Reset
      SYSREQRST      : RSTCAUSE_SYSREQRST_Field;
      --  Read-only. Watchdog Reset
      WDOGRST        : RSTCAUSE_WDOGRST_Field;
      --  Read-only. Backup Mode Reset
      BUMODERST      : RSTCAUSE_BUMODERST_Field;
      --  unspecified
      Reserved_13_15 : Interfaces.EFM32.UInt3;
      --  Read-only. EM4 Reset
      EM4RST         : RSTCAUSE_EM4RST_Field;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RSTCAUSE_Register use record
      PORST          at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      AVDDBOD        at 0 range 2 .. 2;
      DVDDBOD        at 0 range 3 .. 3;
      DECBOD         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      EXTRST         at 0 range 8 .. 8;
      LOCKUPRST      at 0 range 9 .. 9;
      SYSREQRST      at 0 range 10 .. 10;
      WDOGRST        at 0 range 11 .. 11;
      BUMODERST      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      EM4RST         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype CMD_RCCLR_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Reset Cause Clear
      RCCLR         : CMD_RCCLR_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      RCCLR         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Configuration Lock Key
   type LOCK_LOCKKEY_Field is
     (UNLOCKED,
      LOCKED)
     with Size => 16;
   for LOCK_LOCKKEY_Field use
     (UNLOCKED => 0,
      LOCKED => 1);

   --  Configuration Lock Register
   type LOCK_Register is record
      --  Configuration Lock Key
      LOCKKEY        : LOCK_LOCKKEY_Field := Interfaces.EFM32.RMU.UNLOCKED;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOCK_Register use record
      LOCKKEY        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RMU
   type RMU_Peripheral is record
      --  Control Register
      CTRL     : aliased CTRL_Register;
      --  Reset Cause Register
      RSTCAUSE : aliased RSTCAUSE_Register;
      --  Command Register
      CMD      : aliased CMD_Register;
      --  Reset Control Register
      RST      : aliased Interfaces.EFM32.UInt32;
      --  Configuration Lock Register
      LOCK     : aliased LOCK_Register;
   end record
     with Volatile;

   for RMU_Peripheral use record
      CTRL     at 16#0# range 0 .. 31;
      RSTCAUSE at 16#4# range 0 .. 31;
      CMD      at 16#8# range 0 .. 31;
      RST      at 16#C# range 0 .. 31;
      LOCK     at 16#10# range 0 .. 31;
   end record;

   --  RMU
   RMU_Periph : aliased RMU_Peripheral
     with Import, Address => RMU_Base;

end Interfaces.EFM32.RMU;
