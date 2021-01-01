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

--  LETIMER1
package Interfaces.EFM32.LETIMER1 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Repeat Mode
   type CTRL_REPMODE_Field is
     (--  When started, the LETIMER counts down until it is stopped by software
      FREE,
      --  The counter counts REP0 times. When REP0 reaches zero, the counter stops
      ONESHOT,
      --  The counter counts REP0 times. If REP1 has been written, it is loaded into
--  REP0 when REP0 reaches zero, otherwise the counter stops
      BUFFERED,
      --  Both REP0 and REP1 are decremented when the LETIMER wraps around. The
--  LETIMER counts until both REP0 and REP1 are zero
      DOUBLE)
     with Size => 2;
   for CTRL_REPMODE_Field use
     (FREE => 0,
      ONESHOT => 1,
      BUFFERED => 2,
      DOUBLE => 3);

   --  Underflow Output Action 0
   type CTRL_UFOA0_Field is
     (--  LETn_O0 is held at its idle value as defined by OPOL0
      NONE,
      --  LETn_O0 is toggled on CNT underflow
      TOGGLE,
      --  LETn_O0 is held active for one LFACLKLETIMER0 clock cycle on CNT underflow.
--  The output then returns to its idle value as defined by OPOL0
      PULSE,
      --  LETn_O0 is set idle on CNT underflow, and active on compare match with
--  COMP1
      PWM)
     with Size => 2;
   for CTRL_UFOA0_Field use
     (NONE => 0,
      TOGGLE => 1,
      PULSE => 2,
      PWM => 3);

   --  Underflow Output Action 1
   type CTRL_UFOA1_Field is
     (--  LETn_O1 is held at its idle value as defined by OPOL1
      NONE,
      --  LETn_O1 is toggled on CNT underflow
      TOGGLE,
      --  LETn_O1 is held active for one LFACLKLETIMER0 clock cycle on CNT underflow.
--  The output then returns to its idle value as defined by OPOL1
      PULSE,
      --  LETn_O1 is set idle on CNT underflow, and active on compare match with
--  COMP1
      PWM)
     with Size => 2;
   for CTRL_UFOA1_Field use
     (NONE => 0,
      TOGGLE => 1,
      PULSE => 2,
      PWM => 3);

   --  CTRL_OPOL array element
   subtype CTRL_OPOL_Element is Interfaces.EFM32.Bit;

   --  CTRL_OPOL array
   type CTRL_OPOL_Field_Array is array (0 .. 1) of CTRL_OPOL_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CTRL_OPOL
   type CTRL_OPOL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OPOL as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  OPOL as an array
            Arr : CTRL_OPOL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CTRL_OPOL_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CTRL_BUFTOP_Field is Interfaces.EFM32.Bit;
   subtype CTRL_COMP0TOP_Field is Interfaces.EFM32.Bit;
   subtype CTRL_DEBUGRUN_Field is Interfaces.EFM32.Bit;

   --  Control Register
   type CTRL_Register is record
      --  Repeat Mode
      REPMODE        : CTRL_REPMODE_Field := Interfaces.EFM32.LETIMER1.FREE;
      --  Underflow Output Action 0
      UFOA0          : CTRL_UFOA0_Field := Interfaces.EFM32.LETIMER1.NONE;
      --  Underflow Output Action 1
      UFOA1          : CTRL_UFOA1_Field := Interfaces.EFM32.LETIMER1.NONE;
      --  Output 0 Polarity
      OPOL           : CTRL_OPOL_Field := (As_Array => False, Val => 16#0#);
      --  Buffered Top
      BUFTOP         : CTRL_BUFTOP_Field := 16#0#;
      --  Compare Value 0 is Top Value
      COMP0TOP       : CTRL_COMP0TOP_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Debug Mode Run Enable
      DEBUGRUN       : CTRL_DEBUGRUN_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.EFM32.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      REPMODE        at 0 range 0 .. 1;
      UFOA0          at 0 range 2 .. 3;
      UFOA1          at 0 range 4 .. 5;
      OPOL           at 0 range 6 .. 7;
      BUFTOP         at 0 range 8 .. 8;
      COMP0TOP       at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      DEBUGRUN       at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype CMD_START_Field is Interfaces.EFM32.Bit;
   subtype CMD_STOP_Field is Interfaces.EFM32.Bit;
   subtype CMD_CLEAR_Field is Interfaces.EFM32.Bit;
   --  CMD_CTO array element
   subtype CMD_CTO_Element is Interfaces.EFM32.Bit;

   --  CMD_CTO array
   type CMD_CTO_Field_Array is array (0 .. 1) of CMD_CTO_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CMD_CTO
   type CMD_CTO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CTO as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  CTO as an array
            Arr : CMD_CTO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CMD_CTO_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Start LETIMER
      START         : CMD_START_Field := 16#0#;
      --  Write-only. Stop LETIMER
      STOP          : CMD_STOP_Field := 16#0#;
      --  Write-only. Clear LETIMER
      CLEAR         : CMD_CLEAR_Field := 16#0#;
      --  Write-only. Clear Toggle Output 0
      CTO           : CMD_CTO_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      START         at 0 range 0 .. 0;
      STOP          at 0 range 1 .. 1;
      CLEAR         at 0 range 2 .. 2;
      CTO           at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype STATUS_RUNNING_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. LETIMER Running
      RUNNING       : STATUS_RUNNING_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      RUNNING       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CNT_CNT_Field is Interfaces.EFM32.UInt16;

   --  Counter Value Register
   type CNT_Register is record
      --  Counter Value
      CNT            : CNT_CNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CNT_Register use record
      CNT            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype COMP0_COMP0_Field is Interfaces.EFM32.UInt16;

   --  Compare Value Register 0
   type COMP0_Register is record
      --  Compare Value 0
      COMP0          : COMP0_COMP0_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP0_Register use record
      COMP0          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype COMP1_COMP1_Field is Interfaces.EFM32.UInt16;

   --  Compare Value Register 1
   type COMP1_Register is record
      --  Compare Value 1
      COMP1          : COMP1_COMP1_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMP1_Register use record
      COMP1          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype REP0_REP0_Field is Interfaces.EFM32.Byte;

   --  Repeat Counter Register 0
   type REP0_Register is record
      --  Repeat Counter 0
      REP0          : REP0_REP0_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REP0_Register use record
      REP0          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype REP1_REP1_Field is Interfaces.EFM32.Byte;

   --  Repeat Counter Register 1
   type REP1_Register is record
      --  Repeat Counter 1
      REP1          : REP1_REP1_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REP1_Register use record
      REP1          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  IF_COMP array element
   subtype IF_COMP_Element is Interfaces.EFM32.Bit;

   --  IF_COMP array
   type IF_COMP_Field_Array is array (0 .. 1) of IF_COMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for IF_COMP
   type IF_COMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMP as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  COMP as an array
            Arr : IF_COMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for IF_COMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype IF_UF_Field is Interfaces.EFM32.Bit;
   --  IF_REP array element
   subtype IF_REP_Element is Interfaces.EFM32.Bit;

   --  IF_REP array
   type IF_REP_Field_Array is array (0 .. 1) of IF_REP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for IF_REP
   type IF_REP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  REP as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  REP as an array
            Arr : IF_REP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for IF_REP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. Compare Match 0 Interrupt Flag
      COMP          : IF_COMP_Field;
      --  Read-only. Underflow Interrupt Flag
      UF            : IF_UF_Field;
      --  Read-only. Repeat Counter 0 Interrupt Flag
      REP           : IF_REP_Field;
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      COMP          at 0 range 0 .. 1;
      UF            at 0 range 2 .. 2;
      REP           at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  IFS_COMP array element
   subtype IFS_COMP_Element is Interfaces.EFM32.Bit;

   --  IFS_COMP array
   type IFS_COMP_Field_Array is array (0 .. 1) of IFS_COMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for IFS_COMP
   type IFS_COMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMP as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  COMP as an array
            Arr : IFS_COMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for IFS_COMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype IFS_UF_Field is Interfaces.EFM32.Bit;
   --  IFS_REP array element
   subtype IFS_REP_Element is Interfaces.EFM32.Bit;

   --  IFS_REP array
   type IFS_REP_Field_Array is array (0 .. 1) of IFS_REP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for IFS_REP
   type IFS_REP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  REP as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  REP as an array
            Arr : IFS_REP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for IFS_REP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set COMP0 Interrupt Flag
      COMP          : IFS_COMP_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Set UF Interrupt Flag
      UF            : IFS_UF_Field := 16#0#;
      --  Write-only. Set REP0 Interrupt Flag
      REP           : IFS_REP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      COMP          at 0 range 0 .. 1;
      UF            at 0 range 2 .. 2;
      REP           at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  IFC_COMP array element
   subtype IFC_COMP_Element is Interfaces.EFM32.Bit;

   --  IFC_COMP array
   type IFC_COMP_Field_Array is array (0 .. 1) of IFC_COMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for IFC_COMP
   type IFC_COMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMP as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  COMP as an array
            Arr : IFC_COMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for IFC_COMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype IFC_UF_Field is Interfaces.EFM32.Bit;
   --  IFC_REP array element
   subtype IFC_REP_Element is Interfaces.EFM32.Bit;

   --  IFC_REP array
   type IFC_REP_Field_Array is array (0 .. 1) of IFC_REP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for IFC_REP
   type IFC_REP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  REP as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  REP as an array
            Arr : IFC_REP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for IFC_REP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear COMP0 Interrupt Flag
      COMP          : IFC_COMP_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Clear UF Interrupt Flag
      UF            : IFC_UF_Field := 16#0#;
      --  Write-only. Clear REP0 Interrupt Flag
      REP           : IFC_REP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      COMP          at 0 range 0 .. 1;
      UF            at 0 range 2 .. 2;
      REP           at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  IEN_COMP array element
   subtype IEN_COMP_Element is Interfaces.EFM32.Bit;

   --  IEN_COMP array
   type IEN_COMP_Field_Array is array (0 .. 1) of IEN_COMP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for IEN_COMP
   type IEN_COMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  COMP as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  COMP as an array
            Arr : IEN_COMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for IEN_COMP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype IEN_UF_Field is Interfaces.EFM32.Bit;
   --  IEN_REP array element
   subtype IEN_REP_Element is Interfaces.EFM32.Bit;

   --  IEN_REP array
   type IEN_REP_Field_Array is array (0 .. 1) of IEN_REP_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for IEN_REP
   type IEN_REP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  REP as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  REP as an array
            Arr : IEN_REP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for IEN_REP_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  COMP0 Interrupt Enable
      COMP          : IEN_COMP_Field := (As_Array => False, Val => 16#0#);
      --  UF Interrupt Enable
      UF            : IEN_UF_Field := 16#0#;
      --  REP0 Interrupt Enable
      REP           : IEN_REP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      COMP          at 0 range 0 .. 1;
      UF            at 0 range 2 .. 2;
      REP           at 0 range 3 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype SYNCBUSY_CMD_Field is Interfaces.EFM32.Bit;

   --  Synchronization Busy Register
   type SYNCBUSY_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.EFM32.Bit;
      --  Read-only. CMD Register Busy
      CMD           : SYNCBUSY_CMD_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNCBUSY_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      CMD           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype ROUTEPEN_OUT0PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_OUT1PEN_Field is Interfaces.EFM32.Bit;

   --  I/O Routing Pin Enable Register
   type ROUTEPEN_Register is record
      --  Output 0 Pin Enable
      OUT0PEN       : ROUTEPEN_OUT0PEN_Field := 16#0#;
      --  Output 1 Pin Enable
      OUT1PEN       : ROUTEPEN_OUT1PEN_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTEPEN_Register use record
      OUT0PEN       at 0 range 0 .. 0;
      OUT1PEN       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC0_OUT0LOC_Field is
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
   for ROUTELOC0_OUT0LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5,
      LOC6 => 6,
      LOC7 => 7);

   --  I/O Location
   type ROUTELOC0_OUT1LOC_Field is
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
   for ROUTELOC0_OUT1LOC_Field use
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
      OUT0LOC        : ROUTELOC0_OUT0LOC_Field :=
                        Interfaces.EFM32.LETIMER1.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      OUT1LOC        : ROUTELOC0_OUT1LOC_Field :=
                        Interfaces.EFM32.LETIMER1.LOC0;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC0_Register use record
      OUT0LOC        at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      OUT1LOC        at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  PRS Start Select
   type PRSSEL_PRSSTARTSEL_Field is
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
   for PRSSEL_PRSSTARTSEL_Field use
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

   --  PRS Stop Select
   type PRSSEL_PRSSTOPSEL_Field is
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
   for PRSSEL_PRSSTOPSEL_Field use
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

   --  PRS Clear Select
   type PRSSEL_PRSCLEARSEL_Field is
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
   for PRSSEL_PRSCLEARSEL_Field use
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

   --  PRS Start Mode
   type PRSSEL_PRSSTARTMODE_Field is
     (--  PRS cannot start the LETIMER
      NONE,
      --  Rising edge of selected PRS input can start the LETIMER
      RISING,
      --  Falling edge of selected PRS input can start the LETIMER
      FALLING,
      --  Both the rising or falling edge of the selected PRS input can start the
--  LETIMER
      BOTH)
     with Size => 2;
   for PRSSEL_PRSSTARTMODE_Field use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      BOTH => 3);

   --  PRS Stop Mode
   type PRSSEL_PRSSTOPMODE_Field is
     (--  PRS cannot stop the LETIMER
      NONE,
      --  Rising edge of selected PRS input can stop the LETIMER
      RISING,
      --  Falling edge of selected PRS input can stop the LETIMER
      FALLING,
      --  Both the rising or falling edge of the selected PRS input can stop the
--  LETIMER
      BOTH)
     with Size => 2;
   for PRSSEL_PRSSTOPMODE_Field use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      BOTH => 3);

   --  PRS Clear Mode
   type PRSSEL_PRSCLEARMODE_Field is
     (--  PRS cannot clear the LETIMER
      NONE,
      --  Rising edge of selected PRS input can clear the LETIMER
      RISING,
      --  Falling edge of selected PRS input can clear the LETIMER
      FALLING,
      --  Both the rising or falling edge of the selected PRS input can clear the
--  LETIMER
      BOTH)
     with Size => 2;
   for PRSSEL_PRSCLEARMODE_Field use
     (NONE => 0,
      RISING => 1,
      FALLING => 2,
      BOTH => 3);

   --  PRS Input Select Register
   type PRSSEL_Register is record
      --  PRS Start Select
      PRSSTARTSEL    : PRSSEL_PRSSTARTSEL_Field :=
                        Interfaces.EFM32.LETIMER1.PRSCH0;
      --  unspecified
      Reserved_4_5   : Interfaces.EFM32.UInt2 := 16#0#;
      --  PRS Stop Select
      PRSSTOPSEL     : PRSSEL_PRSSTOPSEL_Field :=
                        Interfaces.EFM32.LETIMER1.PRSCH0;
      --  unspecified
      Reserved_10_11 : Interfaces.EFM32.UInt2 := 16#0#;
      --  PRS Clear Select
      PRSCLEARSEL    : PRSSEL_PRSCLEARSEL_Field :=
                        Interfaces.EFM32.LETIMER1.PRSCH0;
      --  unspecified
      Reserved_16_17 : Interfaces.EFM32.UInt2 := 16#0#;
      --  PRS Start Mode
      PRSSTARTMODE   : PRSSEL_PRSSTARTMODE_Field :=
                        Interfaces.EFM32.LETIMER1.NONE;
      --  unspecified
      Reserved_20_21 : Interfaces.EFM32.UInt2 := 16#0#;
      --  PRS Stop Mode
      PRSSTOPMODE    : PRSSEL_PRSSTOPMODE_Field :=
                        Interfaces.EFM32.LETIMER1.NONE;
      --  unspecified
      Reserved_24_25 : Interfaces.EFM32.UInt2 := 16#0#;
      --  PRS Clear Mode
      PRSCLEARMODE   : PRSSEL_PRSCLEARMODE_Field :=
                        Interfaces.EFM32.LETIMER1.NONE;
      --  unspecified
      Reserved_28_31 : Interfaces.EFM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRSSEL_Register use record
      PRSSTARTSEL    at 0 range 0 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      PRSSTOPSEL     at 0 range 6 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PRSCLEARSEL    at 0 range 12 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      PRSSTARTMODE   at 0 range 18 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      PRSSTOPMODE    at 0 range 22 .. 23;
      Reserved_24_25 at 0 range 24 .. 25;
      PRSCLEARMODE   at 0 range 26 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LETIMER1
   type LETIMER1_Peripheral is record
      --  Control Register
      CTRL      : aliased CTRL_Register;
      --  Command Register
      CMD       : aliased CMD_Register;
      --  Status Register
      STATUS    : aliased STATUS_Register;
      --  Counter Value Register
      CNT       : aliased CNT_Register;
      --  Compare Value Register 0
      COMP0     : aliased COMP0_Register;
      --  Compare Value Register 1
      COMP1     : aliased COMP1_Register;
      --  Repeat Counter Register 0
      REP0      : aliased REP0_Register;
      --  Repeat Counter Register 1
      REP1      : aliased REP1_Register;
      --  Interrupt Flag Register
      IF_k      : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS       : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC       : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN       : aliased IEN_Register;
      --  Synchronization Busy Register
      SYNCBUSY  : aliased SYNCBUSY_Register;
      --  I/O Routing Pin Enable Register
      ROUTEPEN  : aliased ROUTEPEN_Register;
      --  I/O Routing Location Register
      ROUTELOC0 : aliased ROUTELOC0_Register;
      --  PRS Input Select Register
      PRSSEL    : aliased PRSSEL_Register;
   end record
     with Volatile;

   for LETIMER1_Peripheral use record
      CTRL      at 16#0# range 0 .. 31;
      CMD       at 16#4# range 0 .. 31;
      STATUS    at 16#8# range 0 .. 31;
      CNT       at 16#C# range 0 .. 31;
      COMP0     at 16#10# range 0 .. 31;
      COMP1     at 16#14# range 0 .. 31;
      REP0      at 16#18# range 0 .. 31;
      REP1      at 16#1C# range 0 .. 31;
      IF_k      at 16#20# range 0 .. 31;
      IFS       at 16#24# range 0 .. 31;
      IFC       at 16#28# range 0 .. 31;
      IEN       at 16#2C# range 0 .. 31;
      SYNCBUSY  at 16#34# range 0 .. 31;
      ROUTEPEN  at 16#40# range 0 .. 31;
      ROUTELOC0 at 16#44# range 0 .. 31;
      PRSSEL    at 16#50# range 0 .. 31;
   end record;

   --  LETIMER1
   LETIMER1_Periph : aliased LETIMER1_Peripheral
     with Import, Address => LETIMER1_Base;

end Interfaces.EFM32.LETIMER1;
