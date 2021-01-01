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

--  PCNT2
package Interfaces.EFM32.PCNT2 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Mode Select
   type CTRL_MODE_Field is
     (--  The module is disabled.
      DISABLE,
      --  Single input LFACLK oversampling mode (available in EM0-EM3).
      OVSSINGLE,
      --  Externally clocked single input counter mode (available in EM0-EM3).
      EXTCLKSINGLE,
      --  Externally clocked quadrature decoder mode (available in EM0-EM3).
      EXTCLKQUAD,
      --  LFACLK oversampling quadrature decoder 1X mode (available in EM0-EM3).
      OVSQUAD1X,
      --  LFACLK oversampling quadrature decoder 2X mode (available in EM0-EM3).
      OVSQUAD2X,
      --  LFACLK oversampling quadrature decoder 4X mode (available in EM0-EM3).
      OVSQUAD4X)
     with Size => 3;
   for CTRL_MODE_Field use
     (DISABLE => 0,
      OVSSINGLE => 1,
      EXTCLKSINGLE => 2,
      EXTCLKQUAD => 3,
      OVSQUAD1X => 4,
      OVSQUAD2X => 5,
      OVSQUAD4X => 6);

   subtype CTRL_FILT_Field is Interfaces.EFM32.Bit;
   subtype CTRL_RSTEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CNTRSTEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_AUXCNTRSTEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_DEBUGHALT_Field is Interfaces.EFM32.Bit;
   subtype CTRL_HYST_Field is Interfaces.EFM32.Bit;
   subtype CTRL_S1CDIR_Field is Interfaces.EFM32.Bit;

   --  Controls When the Counter Counts
   type CTRL_CNTEV_Field is
     (--  Counts up on up-count and down on down-count events.
      BOTH,
      --  Only counts up on up-count events.
      UP,
      --  Only counts down on down-count events.
      DOWN,
      --  Never counts.
      NONE)
     with Size => 2;
   for CTRL_CNTEV_Field use
     (BOTH => 0,
      UP => 1,
      DOWN => 2,
      NONE => 3);

   --  Controls When the Auxiliary Counter Counts
   type CTRL_AUXCNTEV_Field is
     (--  Never counts.
      NONE,
      --  Counts up on up-count events.
      UP,
      --  Counts up on down-count events.
      DOWN,
      --  Counts up on both up-count and down-count events.
      BOTH)
     with Size => 2;
   for CTRL_AUXCNTEV_Field use
     (NONE => 0,
      UP => 1,
      DOWN => 2,
      BOTH => 3);

   subtype CTRL_CNTDIR_Field is Interfaces.EFM32.Bit;
   subtype CTRL_EDGE_Field is Interfaces.EFM32.Bit;

   --  Sets the Mode for Triggered Compare and Clear
   type CTRL_TCCMODE_Field is
     (--  Triggered compare and clear not enabled.
      DISABLED,
      --  Compare and clear performed on each (optionally prescaled) LFA clock cycle.
      LFA,
      --  Compare and clear performed on positive PRS edges.
      PRS)
     with Size => 2;
   for CTRL_TCCMODE_Field use
     (DISABLED => 0,
      LFA => 1,
      PRS => 2);

   --  Set the LFA Prescaler for Triggered Compare and Clear
   type CTRL_TCCPRESC_Field is
     (--  Compare and clear event each LFA cycle.
      DIV1,
      --  Compare and clear performed on every other LFA cycle.
      DIV2,
      --  Compare and clear performed on every 4th LFA cycle.
      DIV4,
      --  Compare and clear performed on every 8th LFA cycle.
      DIV8)
     with Size => 2;
   for CTRL_TCCPRESC_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3);

   --  Triggered Compare and Clear Compare Mode
   type CTRL_TCCCOMP_Field is
     (--  Compare match if PCNT_CNT is less than, or equal to PCNT_TOP.
      LTOE,
      --  Compare match if PCNT_CNT is greater than or equal to PCNT_TOP.
      GTOE,
      --  Compare match if PCNT_CNT is less than, or equal to PCNT_TOP[15:8]], and
--  greater than, or equal to PCNT_TOP[7:0].
      RANGE_k)
     with Size => 2;
   for CTRL_TCCCOMP_Field use
     (LTOE => 0,
      GTOE => 1,
      RANGE_k => 2);

   subtype CTRL_PRSGATEEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_TCCPRSPOL_Field is Interfaces.EFM32.Bit;

   --  TCC PRS Channel Select
   type CTRL_TCCPRSSEL_Field is
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
   for CTRL_TCCPRSSEL_Field use
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

   subtype CTRL_TOPBHFSEL_Field is Interfaces.EFM32.Bit;

   --  Control Register
   type CTRL_Register is record
      --  Mode Select
      MODE           : CTRL_MODE_Field := Interfaces.EFM32.PCNT2.DISABLE;
      --  Enable Digital Pulse Width Filter
      FILT           : CTRL_FILT_Field := 16#0#;
      --  Enable PCNT Clock Domain Reset
      RSTEN          : CTRL_RSTEN_Field := 16#0#;
      --  Enable CNT Reset
      CNTRSTEN       : CTRL_CNTRSTEN_Field := 16#0#;
      --  Enable AUXCNT Reset
      AUXCNTRSTEN    : CTRL_AUXCNTRSTEN_Field := 16#0#;
      --  Debug Mode Halt Enable
      DEBUGHALT      : CTRL_DEBUGHALT_Field := 16#0#;
      --  Enable Hysteresis
      HYST           : CTRL_HYST_Field := 16#0#;
      --  Count Direction Determined By S1
      S1CDIR         : CTRL_S1CDIR_Field := 16#0#;
      --  Controls When the Counter Counts
      CNTEV          : CTRL_CNTEV_Field := Interfaces.EFM32.PCNT2.BOTH;
      --  Controls When the Auxiliary Counter Counts
      AUXCNTEV       : CTRL_AUXCNTEV_Field := Interfaces.EFM32.PCNT2.NONE;
      --  Non-Quadrature Mode Counter Direction Control
      CNTDIR         : CTRL_CNTDIR_Field := 16#0#;
      --  Edge Select
      EDGE           : CTRL_EDGE_Field := 16#0#;
      --  Sets the Mode for Triggered Compare and Clear
      TCCMODE        : CTRL_TCCMODE_Field := Interfaces.EFM32.PCNT2.DISABLED;
      --  unspecified
      Reserved_18_18 : Interfaces.EFM32.Bit := 16#0#;
      --  Set the LFA Prescaler for Triggered Compare and Clear
      TCCPRESC       : CTRL_TCCPRESC_Field := Interfaces.EFM32.PCNT2.DIV1;
      --  unspecified
      Reserved_21_21 : Interfaces.EFM32.Bit := 16#0#;
      --  Triggered Compare and Clear Compare Mode
      TCCCOMP        : CTRL_TCCCOMP_Field := Interfaces.EFM32.PCNT2.LTOE;
      --  PRS Gate Enable
      PRSGATEEN      : CTRL_PRSGATEEN_Field := 16#0#;
      --  TCC PRS Polarity Select
      TCCPRSPOL      : CTRL_TCCPRSPOL_Field := 16#0#;
      --  TCC PRS Channel Select
      TCCPRSSEL      : CTRL_TCCPRSSEL_Field := Interfaces.EFM32.PCNT2.PRSCH0;
      --  unspecified
      Reserved_30_30 : Interfaces.EFM32.Bit := 16#0#;
      --  TOPB High Frequency Value Select
      TOPBHFSEL      : CTRL_TOPBHFSEL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      MODE           at 0 range 0 .. 2;
      FILT           at 0 range 3 .. 3;
      RSTEN          at 0 range 4 .. 4;
      CNTRSTEN       at 0 range 5 .. 5;
      AUXCNTRSTEN    at 0 range 6 .. 6;
      DEBUGHALT      at 0 range 7 .. 7;
      HYST           at 0 range 8 .. 8;
      S1CDIR         at 0 range 9 .. 9;
      CNTEV          at 0 range 10 .. 11;
      AUXCNTEV       at 0 range 12 .. 13;
      CNTDIR         at 0 range 14 .. 14;
      EDGE           at 0 range 15 .. 15;
      TCCMODE        at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      TCCPRESC       at 0 range 19 .. 20;
      Reserved_21_21 at 0 range 21 .. 21;
      TCCCOMP        at 0 range 22 .. 23;
      PRSGATEEN      at 0 range 24 .. 24;
      TCCPRSPOL      at 0 range 25 .. 25;
      TCCPRSSEL      at 0 range 26 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      TOPBHFSEL      at 0 range 31 .. 31;
   end record;

   subtype CMD_LCNTIM_Field is Interfaces.EFM32.Bit;
   subtype CMD_LTOPBIM_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Load CNT Immediately
      LCNTIM        : CMD_LCNTIM_Field := 16#0#;
      --  Write-only. Load TOPB Immediately
      LTOPBIM       : CMD_LTOPBIM_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      LCNTIM        at 0 range 0 .. 0;
      LTOPBIM       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype STATUS_DIR_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. Current Counter Direction
      DIR           : STATUS_DIR_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      DIR           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CNT_CNT_Field is Interfaces.EFM32.UInt16;

   --  Counter Value Register
   type CNT_Register is record
      --  Read-only. Counter Value
      CNT            : CNT_CNT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TOP_TOP_Field is Interfaces.EFM32.UInt16;

   --  Top Value Register
   type TOP_Register is record
      --  Read-only. Counter Top Value
      TOP            : TOP_TOP_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOP_Register use record
      TOP            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TOPB_TOPB_Field is Interfaces.EFM32.UInt16;

   --  Top Value Buffer Register
   type TOPB_Register is record
      --  Counter Top Buffer
      TOPB           : TOPB_TOPB_Field := 16#FF#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TOPB_Register use record
      TOPB           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IF_UF_Field is Interfaces.EFM32.Bit;
   subtype IF_OF_Field is Interfaces.EFM32.Bit;
   subtype IF_DIRCNG_Field is Interfaces.EFM32.Bit;
   subtype IF_AUXOF_Field is Interfaces.EFM32.Bit;
   subtype IF_TCC_Field is Interfaces.EFM32.Bit;
   subtype IF_OQSTERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. Underflow Interrupt Read Flag
      UF            : IF_UF_Field;
      --  Read-only. Overflow Interrupt Read Flag
      OF_k          : IF_OF_Field;
      --  Read-only. Direction Change Detect Interrupt Flag
      DIRCNG        : IF_DIRCNG_Field;
      --  Read-only. Auxiliary Overflow Interrupt Read Flag
      AUXOF         : IF_AUXOF_Field;
      --  Read-only. Triggered Compare Interrupt Read Flag
      TCC           : IF_TCC_Field;
      --  Read-only. Oversampling Quadrature State Error Interrupt
      OQSTERR       : IF_OQSTERR_Field;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      UF            at 0 range 0 .. 0;
      OF_k          at 0 range 1 .. 1;
      DIRCNG        at 0 range 2 .. 2;
      AUXOF         at 0 range 3 .. 3;
      TCC           at 0 range 4 .. 4;
      OQSTERR       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype IFS_UF_Field is Interfaces.EFM32.Bit;
   subtype IFS_OF_Field is Interfaces.EFM32.Bit;
   subtype IFS_DIRCNG_Field is Interfaces.EFM32.Bit;
   subtype IFS_AUXOF_Field is Interfaces.EFM32.Bit;
   subtype IFS_TCC_Field is Interfaces.EFM32.Bit;
   subtype IFS_OQSTERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set UF Interrupt Flag
      UF            : IFS_UF_Field := 16#0#;
      --  Write-only. Set OF Interrupt Flag
      OF_k          : IFS_OF_Field := 16#0#;
      --  Write-only. Set DIRCNG Interrupt Flag
      DIRCNG        : IFS_DIRCNG_Field := 16#0#;
      --  Write-only. Set AUXOF Interrupt Flag
      AUXOF         : IFS_AUXOF_Field := 16#0#;
      --  Write-only. Set TCC Interrupt Flag
      TCC           : IFS_TCC_Field := 16#0#;
      --  Write-only. Set OQSTERR Interrupt Flag
      OQSTERR       : IFS_OQSTERR_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      UF            at 0 range 0 .. 0;
      OF_k          at 0 range 1 .. 1;
      DIRCNG        at 0 range 2 .. 2;
      AUXOF         at 0 range 3 .. 3;
      TCC           at 0 range 4 .. 4;
      OQSTERR       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype IFC_UF_Field is Interfaces.EFM32.Bit;
   subtype IFC_OF_Field is Interfaces.EFM32.Bit;
   subtype IFC_DIRCNG_Field is Interfaces.EFM32.Bit;
   subtype IFC_AUXOF_Field is Interfaces.EFM32.Bit;
   subtype IFC_TCC_Field is Interfaces.EFM32.Bit;
   subtype IFC_OQSTERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear UF Interrupt Flag
      UF            : IFC_UF_Field := 16#0#;
      --  Write-only. Clear OF Interrupt Flag
      OF_k          : IFC_OF_Field := 16#0#;
      --  Write-only. Clear DIRCNG Interrupt Flag
      DIRCNG        : IFC_DIRCNG_Field := 16#0#;
      --  Write-only. Clear AUXOF Interrupt Flag
      AUXOF         : IFC_AUXOF_Field := 16#0#;
      --  Write-only. Clear TCC Interrupt Flag
      TCC           : IFC_TCC_Field := 16#0#;
      --  Write-only. Clear OQSTERR Interrupt Flag
      OQSTERR       : IFC_OQSTERR_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      UF            at 0 range 0 .. 0;
      OF_k          at 0 range 1 .. 1;
      DIRCNG        at 0 range 2 .. 2;
      AUXOF         at 0 range 3 .. 3;
      TCC           at 0 range 4 .. 4;
      OQSTERR       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype IEN_UF_Field is Interfaces.EFM32.Bit;
   subtype IEN_OF_Field is Interfaces.EFM32.Bit;
   subtype IEN_DIRCNG_Field is Interfaces.EFM32.Bit;
   subtype IEN_AUXOF_Field is Interfaces.EFM32.Bit;
   subtype IEN_TCC_Field is Interfaces.EFM32.Bit;
   subtype IEN_OQSTERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  UF Interrupt Enable
      UF            : IEN_UF_Field := 16#0#;
      --  OF Interrupt Enable
      OF_k          : IEN_OF_Field := 16#0#;
      --  DIRCNG Interrupt Enable
      DIRCNG        : IEN_DIRCNG_Field := 16#0#;
      --  AUXOF Interrupt Enable
      AUXOF         : IEN_AUXOF_Field := 16#0#;
      --  TCC Interrupt Enable
      TCC           : IEN_TCC_Field := 16#0#;
      --  OQSTERR Interrupt Enable
      OQSTERR       : IEN_OQSTERR_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      UF            at 0 range 0 .. 0;
      OF_k          at 0 range 1 .. 1;
      DIRCNG        at 0 range 2 .. 2;
      AUXOF         at 0 range 3 .. 3;
      TCC           at 0 range 4 .. 4;
      OQSTERR       at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC0_S0INLOC_Field is
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
   for ROUTELOC0_S0INLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5,
      LOC6 => 6,
      LOC7 => 7);

   --  I/O Location
   type ROUTELOC0_S1INLOC_Field is
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
   for ROUTELOC0_S1INLOC_Field use
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
      S0INLOC        : ROUTELOC0_S0INLOC_Field := Interfaces.EFM32.PCNT2.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      S1INLOC        : ROUTELOC0_S1INLOC_Field := Interfaces.EFM32.PCNT2.LOC0;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC0_Register use record
      S0INLOC        at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      S1INLOC        at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype FREEZE_REGFREEZE_Field is Interfaces.EFM32.Bit;

   --  Freeze Register
   type FREEZE_Register is record
      --  Register Update Freeze
      REGFREEZE     : FREEZE_REGFREEZE_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FREEZE_Register use record
      REGFREEZE     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SYNCBUSY_CTRL_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_CMD_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_TOPB_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_OVSCFG_Field is Interfaces.EFM32.Bit;

   --  Synchronization Busy Register
   type SYNCBUSY_Register is record
      --  Read-only. CTRL Register Busy
      CTRL          : SYNCBUSY_CTRL_Field;
      --  Read-only. CMD Register Busy
      CMD           : SYNCBUSY_CMD_Field;
      --  Read-only. TOPB Register Busy
      TOPB          : SYNCBUSY_TOPB_Field;
      --  Read-only. OVSCFG Register Busy
      OVSCFG        : SYNCBUSY_OVSCFG_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNCBUSY_Register use record
      CTRL          at 0 range 0 .. 0;
      CMD           at 0 range 1 .. 1;
      TOPB          at 0 range 2 .. 2;
      OVSCFG        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype AUXCNT_AUXCNT_Field is Interfaces.EFM32.UInt16;

   --  Auxiliary Counter Value Register
   type AUXCNT_Register is record
      --  Read-only. Auxiliary Counter Value
      AUXCNT         : AUXCNT_AUXCNT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AUXCNT_Register use record
      AUXCNT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  S0IN PRS Channel Select
   type INPUT_S0PRSSEL_Field is
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
   for INPUT_S0PRSSEL_Field use
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

   subtype INPUT_S0PRSEN_Field is Interfaces.EFM32.Bit;

   --  S1IN PRS Channel Select
   type INPUT_S1PRSSEL_Field is
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
   for INPUT_S1PRSSEL_Field use
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

   subtype INPUT_S1PRSEN_Field is Interfaces.EFM32.Bit;

   --  PCNT Input Register
   type INPUT_Register is record
      --  S0IN PRS Channel Select
      S0PRSSEL       : INPUT_S0PRSSEL_Field := Interfaces.EFM32.PCNT2.PRSCH0;
      --  unspecified
      Reserved_4_4   : Interfaces.EFM32.Bit := 16#0#;
      --  S0IN PRS Enable
      S0PRSEN        : INPUT_S0PRSEN_Field := 16#0#;
      --  S1IN PRS Channel Select
      S1PRSSEL       : INPUT_S1PRSSEL_Field := Interfaces.EFM32.PCNT2.PRSCH0;
      --  unspecified
      Reserved_10_10 : Interfaces.EFM32.Bit := 16#0#;
      --  S1IN PRS Enable
      S1PRSEN        : INPUT_S1PRSEN_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INPUT_Register use record
      S0PRSSEL       at 0 range 0 .. 3;
      Reserved_4_4   at 0 range 4 .. 4;
      S0PRSEN        at 0 range 5 .. 5;
      S1PRSSEL       at 0 range 6 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      S1PRSEN        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype OVSCFG_FILTLEN_Field is Interfaces.EFM32.Byte;
   subtype OVSCFG_FLUTTERRM_Field is Interfaces.EFM32.Bit;

   --  Oversampling Config Register
   type OVSCFG_Register is record
      --  Configure Filter Length for Inputs S0IN and S1IN
      FILTLEN        : OVSCFG_FILTLEN_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : Interfaces.EFM32.UInt4 := 16#0#;
      --  Flutter Remove
      FLUTTERRM      : OVSCFG_FLUTTERRM_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.EFM32.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OVSCFG_Register use record
      FILTLEN        at 0 range 0 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      FLUTTERRM      at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PCNT2
   type PCNT2_Peripheral is record
      --  Control Register
      CTRL      : aliased CTRL_Register;
      --  Command Register
      CMD       : aliased CMD_Register;
      --  Status Register
      STATUS    : aliased STATUS_Register;
      --  Counter Value Register
      CNT       : aliased CNT_Register;
      --  Top Value Register
      TOP       : aliased TOP_Register;
      --  Top Value Buffer Register
      TOPB      : aliased TOPB_Register;
      --  Interrupt Flag Register
      IF_k      : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS       : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC       : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN       : aliased IEN_Register;
      --  I/O Routing Location Register
      ROUTELOC0 : aliased ROUTELOC0_Register;
      --  Freeze Register
      FREEZE    : aliased FREEZE_Register;
      --  Synchronization Busy Register
      SYNCBUSY  : aliased SYNCBUSY_Register;
      --  Auxiliary Counter Value Register
      AUXCNT    : aliased AUXCNT_Register;
      --  PCNT Input Register
      INPUT     : aliased INPUT_Register;
      --  Oversampling Config Register
      OVSCFG    : aliased OVSCFG_Register;
   end record
     with Volatile;

   for PCNT2_Peripheral use record
      CTRL      at 16#0# range 0 .. 31;
      CMD       at 16#4# range 0 .. 31;
      STATUS    at 16#8# range 0 .. 31;
      CNT       at 16#C# range 0 .. 31;
      TOP       at 16#10# range 0 .. 31;
      TOPB      at 16#14# range 0 .. 31;
      IF_k      at 16#18# range 0 .. 31;
      IFS       at 16#1C# range 0 .. 31;
      IFC       at 16#20# range 0 .. 31;
      IEN       at 16#24# range 0 .. 31;
      ROUTELOC0 at 16#2C# range 0 .. 31;
      FREEZE    at 16#40# range 0 .. 31;
      SYNCBUSY  at 16#44# range 0 .. 31;
      AUXCNT    at 16#64# range 0 .. 31;
      INPUT     at 16#68# range 0 .. 31;
      OVSCFG    at 16#6C# range 0 .. 31;
   end record;

   --  PCNT2
   PCNT2_Periph : aliased PCNT2_Peripheral
     with Import, Address => PCNT2_Base;

end Interfaces.EFM32.PCNT2;
