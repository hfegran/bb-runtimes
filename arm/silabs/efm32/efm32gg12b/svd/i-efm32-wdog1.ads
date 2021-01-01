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

--  WDOG1
package Interfaces.EFM32.WDOG1 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_DEBUGRUN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_EM2RUN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_EM3RUN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_LOCK_Field is Interfaces.EFM32.Bit;
   subtype CTRL_EM4BLOCK_Field is Interfaces.EFM32.Bit;
   subtype CTRL_SWOSCBLOCK_Field is Interfaces.EFM32.Bit;
   subtype CTRL_PERSEL_Field is Interfaces.EFM32.UInt4;

   --  Watchdog Clock Select
   type CTRL_CLKSEL_Field is
     (--  ULFRCO
      ULFRCO,
      --  LFRCO
      LFRCO,
      --  LFXO
      LFXO,
      --  HFCORECLK
      HFCORECLK)
     with Size => 2;
   for CTRL_CLKSEL_Field use
     (ULFRCO => 0,
      LFRCO => 1,
      LFXO => 2,
      HFCORECLK => 3);

   subtype CTRL_WARNSEL_Field is Interfaces.EFM32.UInt2;
   subtype CTRL_WINSEL_Field is Interfaces.EFM32.UInt3;
   subtype CTRL_CLRSRC_Field is Interfaces.EFM32.Bit;
   subtype CTRL_WDOGRSTDIS_Field is Interfaces.EFM32.Bit;

   --  Control Register
   type CTRL_Register is record
      --  Watchdog Timer Enable
      EN             : CTRL_EN_Field := 16#0#;
      --  Debug Mode Run Enable
      DEBUGRUN       : CTRL_DEBUGRUN_Field := 16#0#;
      --  Energy Mode 2 Run Enable
      EM2RUN         : CTRL_EM2RUN_Field := 16#0#;
      --  Energy Mode 3 Run Enable
      EM3RUN         : CTRL_EM3RUN_Field := 16#0#;
      --  Configuration Lock
      LOCK           : CTRL_LOCK_Field := 16#0#;
      --  Energy Mode 4 Block
      EM4BLOCK       : CTRL_EM4BLOCK_Field := 16#0#;
      --  Software Oscillator Disable Block
      SWOSCBLOCK     : CTRL_SWOSCBLOCK_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Watchdog Timeout Period Select
      PERSEL         : CTRL_PERSEL_Field := 16#F#;
      --  Watchdog Clock Select
      CLKSEL         : CTRL_CLKSEL_Field := Interfaces.EFM32.WDOG1.ULFRCO;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Watchdog Timeout Period Select
      WARNSEL        : CTRL_WARNSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_23 : Interfaces.EFM32.UInt6 := 16#0#;
      --  Watchdog Illegal Window Select
      WINSEL         : CTRL_WINSEL_Field := 16#0#;
      --  unspecified
      Reserved_27_29 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Watchdog Clear Source
      CLRSRC         : CTRL_CLRSRC_Field := 16#0#;
      --  Watchdog Reset Disable
      WDOGRSTDIS     : CTRL_WDOGRSTDIS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      EN             at 0 range 0 .. 0;
      DEBUGRUN       at 0 range 1 .. 1;
      EM2RUN         at 0 range 2 .. 2;
      EM3RUN         at 0 range 3 .. 3;
      LOCK           at 0 range 4 .. 4;
      EM4BLOCK       at 0 range 5 .. 5;
      SWOSCBLOCK     at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PERSEL         at 0 range 8 .. 11;
      CLKSEL         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      WARNSEL        at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      WINSEL         at 0 range 24 .. 26;
      Reserved_27_29 at 0 range 27 .. 29;
      CLRSRC         at 0 range 30 .. 30;
      WDOGRSTDIS     at 0 range 31 .. 31;
   end record;

   subtype CMD_CLEAR_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Watchdog Timer Clear
      CLEAR         : CMD_CLEAR_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      CLEAR         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SYNCBUSY_CTRL_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_CMD_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_PCH0_PRSCTRL_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_PCH1_PRSCTRL_Field is Interfaces.EFM32.Bit;

   --  Synchronization Busy Register
   type SYNCBUSY_Register is record
      --  Read-only. CTRL Register Busy
      CTRL          : SYNCBUSY_CTRL_Field;
      --  Read-only. CMD Register Busy
      CMD           : SYNCBUSY_CMD_Field;
      --  Read-only. PCH0_PRSCTRL Register Busy
      PCH0_PRSCTRL  : SYNCBUSY_PCH0_PRSCTRL_Field;
      --  Read-only. PCH1_PRSCTRL Register Busy
      PCH1_PRSCTRL  : SYNCBUSY_PCH1_PRSCTRL_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNCBUSY_Register use record
      CTRL          at 0 range 0 .. 0;
      CMD           at 0 range 1 .. 1;
      PCH0_PRSCTRL  at 0 range 2 .. 2;
      PCH1_PRSCTRL  at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  PRS Channel PRS Select
   type PCH0_PRSCTRL_PRSSEL_Field is
     (--  PRS Channel 0 selected as input
      PRSCH0,
      --  PRS Channel 1 selected as input
      PRSCH1,
      --  PRS Channel 2 selected as input
      PRSCH2,
      --  PRS Channel 3 selected as input
      PRSCH3,
      --  PRS Channel 4 selected as input
      PRSCH4,
      --  PRS Channel 5 selected as input
      PRSCH5,
      --  PRS Channel 6 selected as input
      PRSCH6,
      --  PRS Channel 7 selected as input
      PRSCH7,
      --  PRS Channel 8 selected as input
      PRSCH8,
      --  PRS Channel 9 selected as input
      PRSCH9,
      --  PRS Channel 10 selected as input
      PRSCH10,
      --  PRS Channel 11 selected as input
      PRSCH11,
      --  PRS Channel 12 selected as input
      PRSCH12,
      --  PRS Channel 13 selected as input
      PRSCH13,
      --  PRS Channel 14 selected as input
      PRSCH14,
      --  PRS Channel 15 selected as input
      PRSCH15)
     with Size => 4;
   for PCH0_PRSCTRL_PRSSEL_Field use
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

   subtype PCH0_PRSCTRL_PRSMISSRSTEN_Field is Interfaces.EFM32.Bit;

   --  PRS Control Register
   type PCH0_PRSCTRL_Register is record
      --  PRS Channel PRS Select
      PRSSEL        : PCH0_PRSCTRL_PRSSEL_Field :=
                       Interfaces.EFM32.WDOG1.PRSCH0;
      --  unspecified
      Reserved_4_7  : Interfaces.EFM32.UInt4 := 16#0#;
      --  PRS Missing Event Will Trigger a Watchdog Reset
      PRSMISSRSTEN  : PCH0_PRSCTRL_PRSMISSRSTEN_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.EFM32.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCH0_PRSCTRL_Register use record
      PRSSEL        at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      PRSMISSRSTEN  at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  PRS Channel PRS Select
   type PCH1_PRSCTRL_PRSSEL_Field is
     (--  PRS Channel 0 selected as input
      PRSCH0,
      --  PRS Channel 1 selected as input
      PRSCH1,
      --  PRS Channel 2 selected as input
      PRSCH2,
      --  PRS Channel 3 selected as input
      PRSCH3,
      --  PRS Channel 4 selected as input
      PRSCH4,
      --  PRS Channel 5 selected as input
      PRSCH5,
      --  PRS Channel 6 selected as input
      PRSCH6,
      --  PRS Channel 7 selected as input
      PRSCH7,
      --  PRS Channel 8 selected as input
      PRSCH8,
      --  PRS Channel 9 selected as input
      PRSCH9,
      --  PRS Channel 10 selected as input
      PRSCH10,
      --  PRS Channel 11 selected as input
      PRSCH11,
      --  PRS Channel 12 selected as input
      PRSCH12,
      --  PRS Channel 13 selected as input
      PRSCH13,
      --  PRS Channel 14 selected as input
      PRSCH14,
      --  PRS Channel 15 selected as input
      PRSCH15)
     with Size => 4;
   for PCH1_PRSCTRL_PRSSEL_Field use
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

   subtype PCH1_PRSCTRL_PRSMISSRSTEN_Field is Interfaces.EFM32.Bit;

   --  PRS Control Register
   type PCH1_PRSCTRL_Register is record
      --  PRS Channel PRS Select
      PRSSEL        : PCH1_PRSCTRL_PRSSEL_Field :=
                       Interfaces.EFM32.WDOG1.PRSCH0;
      --  unspecified
      Reserved_4_7  : Interfaces.EFM32.UInt4 := 16#0#;
      --  PRS Missing Event Will Trigger a Watchdog Reset
      PRSMISSRSTEN  : PCH1_PRSCTRL_PRSMISSRSTEN_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.EFM32.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCH1_PRSCTRL_Register use record
      PRSSEL        at 0 range 0 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      PRSMISSRSTEN  at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype IF_TOUT_Field is Interfaces.EFM32.Bit;
   subtype IF_WARN_Field is Interfaces.EFM32.Bit;
   subtype IF_WIN_Field is Interfaces.EFM32.Bit;
   --  IF_PEM array element
   subtype IF_PEM_Element is Interfaces.EFM32.Bit;

   --  IF_PEM array
   type IF_PEM_Field_Array is array (0 .. 1) of IF_PEM_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for IF_PEM
   type IF_PEM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PEM as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  PEM as an array
            Arr : IF_PEM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for IF_PEM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Watchdog Interrupt Flags
   type IF_Register is record
      --  Read-only. WDOG Timeout Interrupt Flag
      TOUT          : IF_TOUT_Field;
      --  Read-only. WDOG Warning Timeout Interrupt Flag
      WARN          : IF_WARN_Field;
      --  Read-only. WDOG Window Interrupt Flag
      WIN           : IF_WIN_Field;
      --  Read-only. PRS Channel Zero Event Missing Interrupt Flag
      PEM           : IF_PEM_Field;
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      TOUT          at 0 range 0 .. 0;
      WARN          at 0 range 1 .. 1;
      WIN           at 0 range 2 .. 2;
      PEM           at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype IFS_TOUT_Field is Interfaces.EFM32.Bit;
   subtype IFS_WARN_Field is Interfaces.EFM32.Bit;
   subtype IFS_WIN_Field is Interfaces.EFM32.Bit;
   --  IFS_PEM array element
   subtype IFS_PEM_Element is Interfaces.EFM32.Bit;

   --  IFS_PEM array
   type IFS_PEM_Field_Array is array (0 .. 1) of IFS_PEM_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for IFS_PEM
   type IFS_PEM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PEM as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  PEM as an array
            Arr : IFS_PEM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for IFS_PEM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set TOUT Interrupt Flag
      TOUT          : IFS_TOUT_Field := 16#0#;
      --  Write-only. Set WARN Interrupt Flag
      WARN          : IFS_WARN_Field := 16#0#;
      --  Write-only. Set WIN Interrupt Flag
      WIN           : IFS_WIN_Field := 16#0#;
      --  Write-only. Set PEM0 Interrupt Flag
      PEM           : IFS_PEM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      TOUT          at 0 range 0 .. 0;
      WARN          at 0 range 1 .. 1;
      WIN           at 0 range 2 .. 2;
      PEM           at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype IFC_TOUT_Field is Interfaces.EFM32.Bit;
   subtype IFC_WARN_Field is Interfaces.EFM32.Bit;
   subtype IFC_WIN_Field is Interfaces.EFM32.Bit;
   --  IFC_PEM array element
   subtype IFC_PEM_Element is Interfaces.EFM32.Bit;

   --  IFC_PEM array
   type IFC_PEM_Field_Array is array (0 .. 1) of IFC_PEM_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for IFC_PEM
   type IFC_PEM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PEM as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  PEM as an array
            Arr : IFC_PEM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for IFC_PEM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear TOUT Interrupt Flag
      TOUT          : IFC_TOUT_Field := 16#0#;
      --  Write-only. Clear WARN Interrupt Flag
      WARN          : IFC_WARN_Field := 16#0#;
      --  Write-only. Clear WIN Interrupt Flag
      WIN           : IFC_WIN_Field := 16#0#;
      --  Write-only. Clear PEM0 Interrupt Flag
      PEM           : IFC_PEM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      TOUT          at 0 range 0 .. 0;
      WARN          at 0 range 1 .. 1;
      WIN           at 0 range 2 .. 2;
      PEM           at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype IEN_TOUT_Field is Interfaces.EFM32.Bit;
   subtype IEN_WARN_Field is Interfaces.EFM32.Bit;
   subtype IEN_WIN_Field is Interfaces.EFM32.Bit;
   --  IEN_PEM array element
   subtype IEN_PEM_Element is Interfaces.EFM32.Bit;

   --  IEN_PEM array
   type IEN_PEM_Field_Array is array (0 .. 1) of IEN_PEM_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for IEN_PEM
   type IEN_PEM_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PEM as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  PEM as an array
            Arr : IEN_PEM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for IEN_PEM_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  TOUT Interrupt Enable
      TOUT          : IEN_TOUT_Field := 16#0#;
      --  WARN Interrupt Enable
      WARN          : IEN_WARN_Field := 16#0#;
      --  WIN Interrupt Enable
      WIN           : IEN_WIN_Field := 16#0#;
      --  PEM0 Interrupt Enable
      PEM           : IEN_PEM_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      TOUT          at 0 range 0 .. 0;
      WARN          at 0 range 1 .. 1;
      WIN           at 0 range 2 .. 2;
      PEM           at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  WDOG1
   type WDOG1_Peripheral is record
      --  Control Register
      CTRL         : aliased CTRL_Register;
      --  Command Register
      CMD          : aliased CMD_Register;
      --  Synchronization Busy Register
      SYNCBUSY     : aliased SYNCBUSY_Register;
      --  PRS Control Register
      PCH0_PRSCTRL : aliased PCH0_PRSCTRL_Register;
      --  PRS Control Register
      PCH1_PRSCTRL : aliased PCH1_PRSCTRL_Register;
      --  Watchdog Interrupt Flags
      IF_k         : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS          : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC          : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN          : aliased IEN_Register;
   end record
     with Volatile;

   for WDOG1_Peripheral use record
      CTRL         at 16#0# range 0 .. 31;
      CMD          at 16#4# range 0 .. 31;
      SYNCBUSY     at 16#8# range 0 .. 31;
      PCH0_PRSCTRL at 16#C# range 0 .. 31;
      PCH1_PRSCTRL at 16#10# range 0 .. 31;
      IF_k         at 16#1C# range 0 .. 31;
      IFS          at 16#20# range 0 .. 31;
      IFC          at 16#24# range 0 .. 31;
      IEN          at 16#28# range 0 .. 31;
   end record;

   --  WDOG1
   WDOG1_Periph : aliased WDOG1_Peripheral
     with Import, Address => WDOG1_Base;

end Interfaces.EFM32.WDOG1;
