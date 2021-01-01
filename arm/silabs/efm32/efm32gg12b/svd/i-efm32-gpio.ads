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

--  GPIO
package Interfaces.EFM32.GPIO is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype PA_CTRL_DRIVESTRENGTH_Field is Interfaces.EFM32.Bit;
   subtype PA_CTRL_SLEWRATE_Field is Interfaces.EFM32.UInt3;
   subtype PA_CTRL_DINDIS_Field is Interfaces.EFM32.Bit;
   subtype PA_CTRL_DRIVESTRENGTHALT_Field is Interfaces.EFM32.Bit;
   subtype PA_CTRL_SLEWRATEALT_Field is Interfaces.EFM32.UInt3;
   subtype PA_CTRL_DINDISALT_Field is Interfaces.EFM32.Bit;

   --  Port Control Register
   type PA_CTRL_Register is record
      --  Drive Strength for Port
      DRIVESTRENGTH    : PA_CTRL_DRIVESTRENGTH_Field := 16#0#;
      --  unspecified
      Reserved_1_3     : Interfaces.EFM32.UInt3 := 16#0#;
      --  Slewrate Limit for Port
      SLEWRATE         : PA_CTRL_SLEWRATE_Field := 16#5#;
      --  unspecified
      Reserved_7_11    : Interfaces.EFM32.UInt5 := 16#0#;
      --  Data in Disable
      DINDIS           : PA_CTRL_DINDIS_Field := 16#0#;
      --  unspecified
      Reserved_13_15   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Drive Strength for Port
      DRIVESTRENGTHALT : PA_CTRL_DRIVESTRENGTHALT_Field := 16#0#;
      --  unspecified
      Reserved_17_19   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Slewrate Limit for Port
      SLEWRATEALT      : PA_CTRL_SLEWRATEALT_Field := 16#5#;
      --  unspecified
      Reserved_23_27   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Alternate Data in Disable
      DINDISALT        : PA_CTRL_DINDISALT_Field := 16#0#;
      --  unspecified
      Reserved_29_31   : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PA_CTRL_Register use record
      DRIVESTRENGTH    at 0 range 0 .. 0;
      Reserved_1_3     at 0 range 1 .. 3;
      SLEWRATE         at 0 range 4 .. 6;
      Reserved_7_11    at 0 range 7 .. 11;
      DINDIS           at 0 range 12 .. 12;
      Reserved_13_15   at 0 range 13 .. 15;
      DRIVESTRENGTHALT at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      SLEWRATEALT      at 0 range 20 .. 22;
      Reserved_23_27   at 0 range 23 .. 27;
      DINDISALT        at 0 range 28 .. 28;
      Reserved_29_31   at 0 range 29 .. 31;
   end record;

   --  Pin 0 Mode
   type PA_MODEL_MODE0_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PA_MODEL_MODE0_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PA_MODEL_MODE array
   type PA_MODEL_MODE_Field_Array is array (0 .. 7) of PA_MODEL_MODE0_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode Low Register
   type PA_MODEL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PA_MODEL_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PA_MODEL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Pin 8 Mode
   type PA_MODEH_MODE8_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PA_MODEH_MODE8_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PA_MODEH_MODE array
   type PA_MODEH_MODE_Field_Array is array (8 .. 15) of PA_MODEH_MODE8_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode High Register
   type PA_MODEH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PA_MODEH_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PA_MODEH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PA_DOUT_DOUT_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Register
   type PA_DOUT_Register is record
      --  Data Out
      DOUT           : PA_DOUT_DOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PA_DOUT_Register use record
      DOUT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PA_DOUTTGL_DOUTTGL_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Toggle Register
   type PA_DOUTTGL_Register is record
      --  Write-only. Data Out Toggle
      DOUTTGL        : PA_DOUTTGL_DOUTTGL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PA_DOUTTGL_Register use record
      DOUTTGL        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PA_DIN_DIN_Field is Interfaces.EFM32.UInt16;

   --  Port Data in Register
   type PA_DIN_Register is record
      --  Read-only. Data in
      DIN            : PA_DIN_DIN_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PA_DIN_Register use record
      DIN            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PA_PINLOCKN_PINLOCKN_Field is Interfaces.EFM32.UInt16;

   --  Port Unlocked Pins Register
   type PA_PINLOCKN_Register is record
      --  Unlocked Pins
      PINLOCKN       : PA_PINLOCKN_PINLOCKN_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PA_PINLOCKN_Register use record
      PINLOCKN       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PA_OVTDIS_OVTDIS_Field is Interfaces.EFM32.UInt16;

   --  Over Voltage Disable for All Modes
   type PA_OVTDIS_Register is record
      --  Disable Over Voltage Capability
      OVTDIS         : PA_OVTDIS_OVTDIS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PA_OVTDIS_Register use record
      OVTDIS         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PB_CTRL_DRIVESTRENGTH_Field is Interfaces.EFM32.Bit;
   subtype PB_CTRL_SLEWRATE_Field is Interfaces.EFM32.UInt3;
   subtype PB_CTRL_DINDIS_Field is Interfaces.EFM32.Bit;
   subtype PB_CTRL_DRIVESTRENGTHALT_Field is Interfaces.EFM32.Bit;
   subtype PB_CTRL_SLEWRATEALT_Field is Interfaces.EFM32.UInt3;
   subtype PB_CTRL_DINDISALT_Field is Interfaces.EFM32.Bit;

   --  Port Control Register
   type PB_CTRL_Register is record
      --  Drive Strength for Port
      DRIVESTRENGTH    : PB_CTRL_DRIVESTRENGTH_Field := 16#0#;
      --  unspecified
      Reserved_1_3     : Interfaces.EFM32.UInt3 := 16#0#;
      --  Slewrate Limit for Port
      SLEWRATE         : PB_CTRL_SLEWRATE_Field := 16#5#;
      --  unspecified
      Reserved_7_11    : Interfaces.EFM32.UInt5 := 16#0#;
      --  Data in Disable
      DINDIS           : PB_CTRL_DINDIS_Field := 16#0#;
      --  unspecified
      Reserved_13_15   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Drive Strength for Port
      DRIVESTRENGTHALT : PB_CTRL_DRIVESTRENGTHALT_Field := 16#0#;
      --  unspecified
      Reserved_17_19   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Slewrate Limit for Port
      SLEWRATEALT      : PB_CTRL_SLEWRATEALT_Field := 16#5#;
      --  unspecified
      Reserved_23_27   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Alternate Data in Disable
      DINDISALT        : PB_CTRL_DINDISALT_Field := 16#0#;
      --  unspecified
      Reserved_29_31   : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PB_CTRL_Register use record
      DRIVESTRENGTH    at 0 range 0 .. 0;
      Reserved_1_3     at 0 range 1 .. 3;
      SLEWRATE         at 0 range 4 .. 6;
      Reserved_7_11    at 0 range 7 .. 11;
      DINDIS           at 0 range 12 .. 12;
      Reserved_13_15   at 0 range 13 .. 15;
      DRIVESTRENGTHALT at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      SLEWRATEALT      at 0 range 20 .. 22;
      Reserved_23_27   at 0 range 23 .. 27;
      DINDISALT        at 0 range 28 .. 28;
      Reserved_29_31   at 0 range 29 .. 31;
   end record;

   --  Pin 0 Mode
   type PB_MODEL_MODE0_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PB_MODEL_MODE0_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PB_MODEL_MODE array
   type PB_MODEL_MODE_Field_Array is array (0 .. 7) of PB_MODEL_MODE0_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode Low Register
   type PB_MODEL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PB_MODEL_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PB_MODEL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Pin 8 Mode
   type PB_MODEH_MODE8_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PB_MODEH_MODE8_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PB_MODEH_MODE array
   type PB_MODEH_MODE_Field_Array is array (8 .. 15) of PB_MODEH_MODE8_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode High Register
   type PB_MODEH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PB_MODEH_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PB_MODEH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PB_DOUT_DOUT_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Register
   type PB_DOUT_Register is record
      --  Data Out
      DOUT           : PB_DOUT_DOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PB_DOUT_Register use record
      DOUT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PB_DOUTTGL_DOUTTGL_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Toggle Register
   type PB_DOUTTGL_Register is record
      --  Write-only. Data Out Toggle
      DOUTTGL        : PB_DOUTTGL_DOUTTGL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PB_DOUTTGL_Register use record
      DOUTTGL        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PB_DIN_DIN_Field is Interfaces.EFM32.UInt16;

   --  Port Data in Register
   type PB_DIN_Register is record
      --  Read-only. Data in
      DIN            : PB_DIN_DIN_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PB_DIN_Register use record
      DIN            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PB_PINLOCKN_PINLOCKN_Field is Interfaces.EFM32.UInt16;

   --  Port Unlocked Pins Register
   type PB_PINLOCKN_Register is record
      --  Unlocked Pins
      PINLOCKN       : PB_PINLOCKN_PINLOCKN_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PB_PINLOCKN_Register use record
      PINLOCKN       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PB_OVTDIS_OVTDIS_Field is Interfaces.EFM32.UInt16;

   --  Over Voltage Disable for All Modes
   type PB_OVTDIS_Register is record
      --  Disable Over Voltage Capability
      OVTDIS         : PB_OVTDIS_OVTDIS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PB_OVTDIS_Register use record
      OVTDIS         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PC_CTRL_DRIVESTRENGTH_Field is Interfaces.EFM32.Bit;
   subtype PC_CTRL_SLEWRATE_Field is Interfaces.EFM32.UInt3;
   subtype PC_CTRL_DINDIS_Field is Interfaces.EFM32.Bit;
   subtype PC_CTRL_DRIVESTRENGTHALT_Field is Interfaces.EFM32.Bit;
   subtype PC_CTRL_SLEWRATEALT_Field is Interfaces.EFM32.UInt3;
   subtype PC_CTRL_DINDISALT_Field is Interfaces.EFM32.Bit;

   --  Port Control Register
   type PC_CTRL_Register is record
      --  Drive Strength for Port
      DRIVESTRENGTH    : PC_CTRL_DRIVESTRENGTH_Field := 16#0#;
      --  unspecified
      Reserved_1_3     : Interfaces.EFM32.UInt3 := 16#0#;
      --  Slewrate Limit for Port
      SLEWRATE         : PC_CTRL_SLEWRATE_Field := 16#5#;
      --  unspecified
      Reserved_7_11    : Interfaces.EFM32.UInt5 := 16#0#;
      --  Data in Disable
      DINDIS           : PC_CTRL_DINDIS_Field := 16#0#;
      --  unspecified
      Reserved_13_15   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Drive Strength for Port
      DRIVESTRENGTHALT : PC_CTRL_DRIVESTRENGTHALT_Field := 16#0#;
      --  unspecified
      Reserved_17_19   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Slewrate Limit for Port
      SLEWRATEALT      : PC_CTRL_SLEWRATEALT_Field := 16#5#;
      --  unspecified
      Reserved_23_27   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Alternate Data in Disable
      DINDISALT        : PC_CTRL_DINDISALT_Field := 16#0#;
      --  unspecified
      Reserved_29_31   : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PC_CTRL_Register use record
      DRIVESTRENGTH    at 0 range 0 .. 0;
      Reserved_1_3     at 0 range 1 .. 3;
      SLEWRATE         at 0 range 4 .. 6;
      Reserved_7_11    at 0 range 7 .. 11;
      DINDIS           at 0 range 12 .. 12;
      Reserved_13_15   at 0 range 13 .. 15;
      DRIVESTRENGTHALT at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      SLEWRATEALT      at 0 range 20 .. 22;
      Reserved_23_27   at 0 range 23 .. 27;
      DINDISALT        at 0 range 28 .. 28;
      Reserved_29_31   at 0 range 29 .. 31;
   end record;

   --  Pin 0 Mode
   type PC_MODEL_MODE0_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PC_MODEL_MODE0_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PC_MODEL_MODE array
   type PC_MODEL_MODE_Field_Array is array (0 .. 7) of PC_MODEL_MODE0_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode Low Register
   type PC_MODEL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PC_MODEL_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PC_MODEL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Pin 8 Mode
   type PC_MODEH_MODE8_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PC_MODEH_MODE8_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PC_MODEH_MODE array
   type PC_MODEH_MODE_Field_Array is array (8 .. 15) of PC_MODEH_MODE8_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode High Register
   type PC_MODEH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PC_MODEH_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PC_MODEH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PC_DOUT_DOUT_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Register
   type PC_DOUT_Register is record
      --  Data Out
      DOUT           : PC_DOUT_DOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PC_DOUT_Register use record
      DOUT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PC_DOUTTGL_DOUTTGL_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Toggle Register
   type PC_DOUTTGL_Register is record
      --  Write-only. Data Out Toggle
      DOUTTGL        : PC_DOUTTGL_DOUTTGL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PC_DOUTTGL_Register use record
      DOUTTGL        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PC_DIN_DIN_Field is Interfaces.EFM32.UInt16;

   --  Port Data in Register
   type PC_DIN_Register is record
      --  Read-only. Data in
      DIN            : PC_DIN_DIN_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PC_DIN_Register use record
      DIN            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PC_PINLOCKN_PINLOCKN_Field is Interfaces.EFM32.UInt16;

   --  Port Unlocked Pins Register
   type PC_PINLOCKN_Register is record
      --  Unlocked Pins
      PINLOCKN       : PC_PINLOCKN_PINLOCKN_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PC_PINLOCKN_Register use record
      PINLOCKN       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PC_OVTDIS_OVTDIS_Field is Interfaces.EFM32.UInt16;

   --  Over Voltage Disable for All Modes
   type PC_OVTDIS_Register is record
      --  Disable Over Voltage Capability
      OVTDIS         : PC_OVTDIS_OVTDIS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PC_OVTDIS_Register use record
      OVTDIS         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PD_CTRL_DRIVESTRENGTH_Field is Interfaces.EFM32.Bit;
   subtype PD_CTRL_SLEWRATE_Field is Interfaces.EFM32.UInt3;
   subtype PD_CTRL_DINDIS_Field is Interfaces.EFM32.Bit;
   subtype PD_CTRL_DRIVESTRENGTHALT_Field is Interfaces.EFM32.Bit;
   subtype PD_CTRL_SLEWRATEALT_Field is Interfaces.EFM32.UInt3;
   subtype PD_CTRL_DINDISALT_Field is Interfaces.EFM32.Bit;

   --  Port Control Register
   type PD_CTRL_Register is record
      --  Drive Strength for Port
      DRIVESTRENGTH    : PD_CTRL_DRIVESTRENGTH_Field := 16#0#;
      --  unspecified
      Reserved_1_3     : Interfaces.EFM32.UInt3 := 16#0#;
      --  Slewrate Limit for Port
      SLEWRATE         : PD_CTRL_SLEWRATE_Field := 16#5#;
      --  unspecified
      Reserved_7_11    : Interfaces.EFM32.UInt5 := 16#0#;
      --  Data in Disable
      DINDIS           : PD_CTRL_DINDIS_Field := 16#0#;
      --  unspecified
      Reserved_13_15   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Drive Strength for Port
      DRIVESTRENGTHALT : PD_CTRL_DRIVESTRENGTHALT_Field := 16#0#;
      --  unspecified
      Reserved_17_19   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Slewrate Limit for Port
      SLEWRATEALT      : PD_CTRL_SLEWRATEALT_Field := 16#5#;
      --  unspecified
      Reserved_23_27   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Alternate Data in Disable
      DINDISALT        : PD_CTRL_DINDISALT_Field := 16#0#;
      --  unspecified
      Reserved_29_31   : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PD_CTRL_Register use record
      DRIVESTRENGTH    at 0 range 0 .. 0;
      Reserved_1_3     at 0 range 1 .. 3;
      SLEWRATE         at 0 range 4 .. 6;
      Reserved_7_11    at 0 range 7 .. 11;
      DINDIS           at 0 range 12 .. 12;
      Reserved_13_15   at 0 range 13 .. 15;
      DRIVESTRENGTHALT at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      SLEWRATEALT      at 0 range 20 .. 22;
      Reserved_23_27   at 0 range 23 .. 27;
      DINDISALT        at 0 range 28 .. 28;
      Reserved_29_31   at 0 range 29 .. 31;
   end record;

   --  Pin 0 Mode
   type PD_MODEL_MODE0_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PD_MODEL_MODE0_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PD_MODEL_MODE array
   type PD_MODEL_MODE_Field_Array is array (0 .. 7) of PD_MODEL_MODE0_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode Low Register
   type PD_MODEL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PD_MODEL_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PD_MODEL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Pin 8 Mode
   type PD_MODEH_MODE8_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PD_MODEH_MODE8_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PD_MODEH_MODE array
   type PD_MODEH_MODE_Field_Array is array (8 .. 15) of PD_MODEH_MODE8_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode High Register
   type PD_MODEH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PD_MODEH_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PD_MODEH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PD_DOUT_DOUT_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Register
   type PD_DOUT_Register is record
      --  Data Out
      DOUT           : PD_DOUT_DOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PD_DOUT_Register use record
      DOUT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PD_DOUTTGL_DOUTTGL_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Toggle Register
   type PD_DOUTTGL_Register is record
      --  Write-only. Data Out Toggle
      DOUTTGL        : PD_DOUTTGL_DOUTTGL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PD_DOUTTGL_Register use record
      DOUTTGL        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PD_DIN_DIN_Field is Interfaces.EFM32.UInt16;

   --  Port Data in Register
   type PD_DIN_Register is record
      --  Read-only. Data in
      DIN            : PD_DIN_DIN_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PD_DIN_Register use record
      DIN            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PD_PINLOCKN_PINLOCKN_Field is Interfaces.EFM32.UInt16;

   --  Port Unlocked Pins Register
   type PD_PINLOCKN_Register is record
      --  Unlocked Pins
      PINLOCKN       : PD_PINLOCKN_PINLOCKN_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PD_PINLOCKN_Register use record
      PINLOCKN       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PD_OVTDIS_OVTDIS_Field is Interfaces.EFM32.UInt16;

   --  Over Voltage Disable for All Modes
   type PD_OVTDIS_Register is record
      --  Disable Over Voltage Capability
      OVTDIS         : PD_OVTDIS_OVTDIS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PD_OVTDIS_Register use record
      OVTDIS         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PE_CTRL_DRIVESTRENGTH_Field is Interfaces.EFM32.Bit;
   subtype PE_CTRL_SLEWRATE_Field is Interfaces.EFM32.UInt3;
   subtype PE_CTRL_DINDIS_Field is Interfaces.EFM32.Bit;
   subtype PE_CTRL_DRIVESTRENGTHALT_Field is Interfaces.EFM32.Bit;
   subtype PE_CTRL_SLEWRATEALT_Field is Interfaces.EFM32.UInt3;
   subtype PE_CTRL_DINDISALT_Field is Interfaces.EFM32.Bit;

   --  Port Control Register
   type PE_CTRL_Register is record
      --  Drive Strength for Port
      DRIVESTRENGTH    : PE_CTRL_DRIVESTRENGTH_Field := 16#0#;
      --  unspecified
      Reserved_1_3     : Interfaces.EFM32.UInt3 := 16#0#;
      --  Slewrate Limit for Port
      SLEWRATE         : PE_CTRL_SLEWRATE_Field := 16#5#;
      --  unspecified
      Reserved_7_11    : Interfaces.EFM32.UInt5 := 16#0#;
      --  Data in Disable
      DINDIS           : PE_CTRL_DINDIS_Field := 16#0#;
      --  unspecified
      Reserved_13_15   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Drive Strength for Port
      DRIVESTRENGTHALT : PE_CTRL_DRIVESTRENGTHALT_Field := 16#0#;
      --  unspecified
      Reserved_17_19   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Slewrate Limit for Port
      SLEWRATEALT      : PE_CTRL_SLEWRATEALT_Field := 16#5#;
      --  unspecified
      Reserved_23_27   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Alternate Data in Disable
      DINDISALT        : PE_CTRL_DINDISALT_Field := 16#0#;
      --  unspecified
      Reserved_29_31   : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PE_CTRL_Register use record
      DRIVESTRENGTH    at 0 range 0 .. 0;
      Reserved_1_3     at 0 range 1 .. 3;
      SLEWRATE         at 0 range 4 .. 6;
      Reserved_7_11    at 0 range 7 .. 11;
      DINDIS           at 0 range 12 .. 12;
      Reserved_13_15   at 0 range 13 .. 15;
      DRIVESTRENGTHALT at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      SLEWRATEALT      at 0 range 20 .. 22;
      Reserved_23_27   at 0 range 23 .. 27;
      DINDISALT        at 0 range 28 .. 28;
      Reserved_29_31   at 0 range 29 .. 31;
   end record;

   --  Pin 0 Mode
   type PE_MODEL_MODE0_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PE_MODEL_MODE0_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PE_MODEL_MODE array
   type PE_MODEL_MODE_Field_Array is array (0 .. 7) of PE_MODEL_MODE0_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode Low Register
   type PE_MODEL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PE_MODEL_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PE_MODEL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Pin 8 Mode
   type PE_MODEH_MODE8_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PE_MODEH_MODE8_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PE_MODEH_MODE array
   type PE_MODEH_MODE_Field_Array is array (8 .. 15) of PE_MODEH_MODE8_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode High Register
   type PE_MODEH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PE_MODEH_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PE_MODEH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PE_DOUT_DOUT_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Register
   type PE_DOUT_Register is record
      --  Data Out
      DOUT           : PE_DOUT_DOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PE_DOUT_Register use record
      DOUT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PE_DOUTTGL_DOUTTGL_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Toggle Register
   type PE_DOUTTGL_Register is record
      --  Write-only. Data Out Toggle
      DOUTTGL        : PE_DOUTTGL_DOUTTGL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PE_DOUTTGL_Register use record
      DOUTTGL        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PE_DIN_DIN_Field is Interfaces.EFM32.UInt16;

   --  Port Data in Register
   type PE_DIN_Register is record
      --  Read-only. Data in
      DIN            : PE_DIN_DIN_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PE_DIN_Register use record
      DIN            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PE_PINLOCKN_PINLOCKN_Field is Interfaces.EFM32.UInt16;

   --  Port Unlocked Pins Register
   type PE_PINLOCKN_Register is record
      --  Unlocked Pins
      PINLOCKN       : PE_PINLOCKN_PINLOCKN_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PE_PINLOCKN_Register use record
      PINLOCKN       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PE_OVTDIS_OVTDIS_Field is Interfaces.EFM32.UInt16;

   --  Over Voltage Disable for All Modes
   type PE_OVTDIS_Register is record
      --  Disable Over Voltage Capability
      OVTDIS         : PE_OVTDIS_OVTDIS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PE_OVTDIS_Register use record
      OVTDIS         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PF_CTRL_DRIVESTRENGTH_Field is Interfaces.EFM32.Bit;
   subtype PF_CTRL_SLEWRATE_Field is Interfaces.EFM32.UInt3;
   subtype PF_CTRL_DINDIS_Field is Interfaces.EFM32.Bit;
   subtype PF_CTRL_DRIVESTRENGTHALT_Field is Interfaces.EFM32.Bit;
   subtype PF_CTRL_SLEWRATEALT_Field is Interfaces.EFM32.UInt3;
   subtype PF_CTRL_DINDISALT_Field is Interfaces.EFM32.Bit;

   --  Port Control Register
   type PF_CTRL_Register is record
      --  Drive Strength for Port
      DRIVESTRENGTH    : PF_CTRL_DRIVESTRENGTH_Field := 16#0#;
      --  unspecified
      Reserved_1_3     : Interfaces.EFM32.UInt3 := 16#0#;
      --  Slewrate Limit for Port
      SLEWRATE         : PF_CTRL_SLEWRATE_Field := 16#5#;
      --  unspecified
      Reserved_7_11    : Interfaces.EFM32.UInt5 := 16#0#;
      --  Data in Disable
      DINDIS           : PF_CTRL_DINDIS_Field := 16#0#;
      --  unspecified
      Reserved_13_15   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Drive Strength for Port
      DRIVESTRENGTHALT : PF_CTRL_DRIVESTRENGTHALT_Field := 16#0#;
      --  unspecified
      Reserved_17_19   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Slewrate Limit for Port
      SLEWRATEALT      : PF_CTRL_SLEWRATEALT_Field := 16#5#;
      --  unspecified
      Reserved_23_27   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Alternate Data in Disable
      DINDISALT        : PF_CTRL_DINDISALT_Field := 16#0#;
      --  unspecified
      Reserved_29_31   : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PF_CTRL_Register use record
      DRIVESTRENGTH    at 0 range 0 .. 0;
      Reserved_1_3     at 0 range 1 .. 3;
      SLEWRATE         at 0 range 4 .. 6;
      Reserved_7_11    at 0 range 7 .. 11;
      DINDIS           at 0 range 12 .. 12;
      Reserved_13_15   at 0 range 13 .. 15;
      DRIVESTRENGTHALT at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      SLEWRATEALT      at 0 range 20 .. 22;
      Reserved_23_27   at 0 range 23 .. 27;
      DINDISALT        at 0 range 28 .. 28;
      Reserved_29_31   at 0 range 29 .. 31;
   end record;

   --  Pin 0 Mode
   type PF_MODEL_MODE0_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PF_MODEL_MODE0_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PF_MODEL_MODE array
   type PF_MODEL_MODE_Field_Array is array (0 .. 7) of PF_MODEL_MODE0_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode Low Register
   type PF_MODEL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PF_MODEL_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PF_MODEL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Pin 8 Mode
   type PF_MODEH_MODE8_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PF_MODEH_MODE8_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PF_MODEH_MODE array
   type PF_MODEH_MODE_Field_Array is array (8 .. 15) of PF_MODEH_MODE8_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode High Register
   type PF_MODEH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PF_MODEH_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PF_MODEH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PF_DOUT_DOUT_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Register
   type PF_DOUT_Register is record
      --  Data Out
      DOUT           : PF_DOUT_DOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PF_DOUT_Register use record
      DOUT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PF_DOUTTGL_DOUTTGL_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Toggle Register
   type PF_DOUTTGL_Register is record
      --  Write-only. Data Out Toggle
      DOUTTGL        : PF_DOUTTGL_DOUTTGL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PF_DOUTTGL_Register use record
      DOUTTGL        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PF_DIN_DIN_Field is Interfaces.EFM32.UInt16;

   --  Port Data in Register
   type PF_DIN_Register is record
      --  Read-only. Data in
      DIN            : PF_DIN_DIN_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PF_DIN_Register use record
      DIN            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PF_PINLOCKN_PINLOCKN_Field is Interfaces.EFM32.UInt16;

   --  Port Unlocked Pins Register
   type PF_PINLOCKN_Register is record
      --  Unlocked Pins
      PINLOCKN       : PF_PINLOCKN_PINLOCKN_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PF_PINLOCKN_Register use record
      PINLOCKN       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PF_OVTDIS_OVTDIS_Field is Interfaces.EFM32.UInt16;

   --  Over Voltage Disable for All Modes
   type PF_OVTDIS_Register is record
      --  Disable Over Voltage Capability
      OVTDIS         : PF_OVTDIS_OVTDIS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PF_OVTDIS_Register use record
      OVTDIS         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PG_CTRL_DRIVESTRENGTH_Field is Interfaces.EFM32.Bit;
   subtype PG_CTRL_SLEWRATE_Field is Interfaces.EFM32.UInt3;
   subtype PG_CTRL_DINDIS_Field is Interfaces.EFM32.Bit;
   subtype PG_CTRL_DRIVESTRENGTHALT_Field is Interfaces.EFM32.Bit;
   subtype PG_CTRL_SLEWRATEALT_Field is Interfaces.EFM32.UInt3;
   subtype PG_CTRL_DINDISALT_Field is Interfaces.EFM32.Bit;

   --  Port Control Register
   type PG_CTRL_Register is record
      --  Drive Strength for Port
      DRIVESTRENGTH    : PG_CTRL_DRIVESTRENGTH_Field := 16#0#;
      --  unspecified
      Reserved_1_3     : Interfaces.EFM32.UInt3 := 16#0#;
      --  Slewrate Limit for Port
      SLEWRATE         : PG_CTRL_SLEWRATE_Field := 16#5#;
      --  unspecified
      Reserved_7_11    : Interfaces.EFM32.UInt5 := 16#0#;
      --  Data in Disable
      DINDIS           : PG_CTRL_DINDIS_Field := 16#0#;
      --  unspecified
      Reserved_13_15   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Drive Strength for Port
      DRIVESTRENGTHALT : PG_CTRL_DRIVESTRENGTHALT_Field := 16#0#;
      --  unspecified
      Reserved_17_19   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Slewrate Limit for Port
      SLEWRATEALT      : PG_CTRL_SLEWRATEALT_Field := 16#5#;
      --  unspecified
      Reserved_23_27   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Alternate Data in Disable
      DINDISALT        : PG_CTRL_DINDISALT_Field := 16#0#;
      --  unspecified
      Reserved_29_31   : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PG_CTRL_Register use record
      DRIVESTRENGTH    at 0 range 0 .. 0;
      Reserved_1_3     at 0 range 1 .. 3;
      SLEWRATE         at 0 range 4 .. 6;
      Reserved_7_11    at 0 range 7 .. 11;
      DINDIS           at 0 range 12 .. 12;
      Reserved_13_15   at 0 range 13 .. 15;
      DRIVESTRENGTHALT at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      SLEWRATEALT      at 0 range 20 .. 22;
      Reserved_23_27   at 0 range 23 .. 27;
      DINDISALT        at 0 range 28 .. 28;
      Reserved_29_31   at 0 range 29 .. 31;
   end record;

   --  Pin 0 Mode
   type PG_MODEL_MODE0_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PG_MODEL_MODE0_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PG_MODEL_MODE array
   type PG_MODEL_MODE_Field_Array is array (0 .. 7) of PG_MODEL_MODE0_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode Low Register
   type PG_MODEL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PG_MODEL_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PG_MODEL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Pin 8 Mode
   type PG_MODEH_MODE8_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PG_MODEH_MODE8_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PG_MODEH_MODE array
   type PG_MODEH_MODE_Field_Array is array (8 .. 15) of PG_MODEH_MODE8_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode High Register
   type PG_MODEH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PG_MODEH_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PG_MODEH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PG_DOUT_DOUT_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Register
   type PG_DOUT_Register is record
      --  Data Out
      DOUT           : PG_DOUT_DOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PG_DOUT_Register use record
      DOUT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PG_DOUTTGL_DOUTTGL_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Toggle Register
   type PG_DOUTTGL_Register is record
      --  Write-only. Data Out Toggle
      DOUTTGL        : PG_DOUTTGL_DOUTTGL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PG_DOUTTGL_Register use record
      DOUTTGL        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PG_DIN_DIN_Field is Interfaces.EFM32.UInt16;

   --  Port Data in Register
   type PG_DIN_Register is record
      --  Read-only. Data in
      DIN            : PG_DIN_DIN_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PG_DIN_Register use record
      DIN            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PG_PINLOCKN_PINLOCKN_Field is Interfaces.EFM32.UInt16;

   --  Port Unlocked Pins Register
   type PG_PINLOCKN_Register is record
      --  Unlocked Pins
      PINLOCKN       : PG_PINLOCKN_PINLOCKN_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PG_PINLOCKN_Register use record
      PINLOCKN       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PG_OVTDIS_OVTDIS_Field is Interfaces.EFM32.UInt16;

   --  Over Voltage Disable for All Modes
   type PG_OVTDIS_Register is record
      --  Disable Over Voltage Capability
      OVTDIS         : PG_OVTDIS_OVTDIS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PG_OVTDIS_Register use record
      OVTDIS         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PH_CTRL_DRIVESTRENGTH_Field is Interfaces.EFM32.Bit;
   subtype PH_CTRL_SLEWRATE_Field is Interfaces.EFM32.UInt3;
   subtype PH_CTRL_DINDIS_Field is Interfaces.EFM32.Bit;
   subtype PH_CTRL_DRIVESTRENGTHALT_Field is Interfaces.EFM32.Bit;
   subtype PH_CTRL_SLEWRATEALT_Field is Interfaces.EFM32.UInt3;
   subtype PH_CTRL_DINDISALT_Field is Interfaces.EFM32.Bit;

   --  Port Control Register
   type PH_CTRL_Register is record
      --  Drive Strength for Port
      DRIVESTRENGTH    : PH_CTRL_DRIVESTRENGTH_Field := 16#0#;
      --  unspecified
      Reserved_1_3     : Interfaces.EFM32.UInt3 := 16#0#;
      --  Slewrate Limit for Port
      SLEWRATE         : PH_CTRL_SLEWRATE_Field := 16#5#;
      --  unspecified
      Reserved_7_11    : Interfaces.EFM32.UInt5 := 16#0#;
      --  Data in Disable
      DINDIS           : PH_CTRL_DINDIS_Field := 16#0#;
      --  unspecified
      Reserved_13_15   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Drive Strength for Port
      DRIVESTRENGTHALT : PH_CTRL_DRIVESTRENGTHALT_Field := 16#0#;
      --  unspecified
      Reserved_17_19   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Slewrate Limit for Port
      SLEWRATEALT      : PH_CTRL_SLEWRATEALT_Field := 16#5#;
      --  unspecified
      Reserved_23_27   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Alternate Data in Disable
      DINDISALT        : PH_CTRL_DINDISALT_Field := 16#0#;
      --  unspecified
      Reserved_29_31   : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PH_CTRL_Register use record
      DRIVESTRENGTH    at 0 range 0 .. 0;
      Reserved_1_3     at 0 range 1 .. 3;
      SLEWRATE         at 0 range 4 .. 6;
      Reserved_7_11    at 0 range 7 .. 11;
      DINDIS           at 0 range 12 .. 12;
      Reserved_13_15   at 0 range 13 .. 15;
      DRIVESTRENGTHALT at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      SLEWRATEALT      at 0 range 20 .. 22;
      Reserved_23_27   at 0 range 23 .. 27;
      DINDISALT        at 0 range 28 .. 28;
      Reserved_29_31   at 0 range 29 .. 31;
   end record;

   --  Pin 0 Mode
   type PH_MODEL_MODE0_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PH_MODEL_MODE0_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PH_MODEL_MODE array
   type PH_MODEL_MODE_Field_Array is array (0 .. 7) of PH_MODEL_MODE0_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode Low Register
   type PH_MODEL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PH_MODEL_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PH_MODEL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Pin 8 Mode
   type PH_MODEH_MODE8_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PH_MODEH_MODE8_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PH_MODEH_MODE array
   type PH_MODEH_MODE_Field_Array is array (8 .. 15) of PH_MODEH_MODE8_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode High Register
   type PH_MODEH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PH_MODEH_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PH_MODEH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PH_DOUT_DOUT_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Register
   type PH_DOUT_Register is record
      --  Data Out
      DOUT           : PH_DOUT_DOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PH_DOUT_Register use record
      DOUT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PH_DOUTTGL_DOUTTGL_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Toggle Register
   type PH_DOUTTGL_Register is record
      --  Write-only. Data Out Toggle
      DOUTTGL        : PH_DOUTTGL_DOUTTGL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PH_DOUTTGL_Register use record
      DOUTTGL        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PH_DIN_DIN_Field is Interfaces.EFM32.UInt16;

   --  Port Data in Register
   type PH_DIN_Register is record
      --  Read-only. Data in
      DIN            : PH_DIN_DIN_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PH_DIN_Register use record
      DIN            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PH_PINLOCKN_PINLOCKN_Field is Interfaces.EFM32.UInt16;

   --  Port Unlocked Pins Register
   type PH_PINLOCKN_Register is record
      --  Unlocked Pins
      PINLOCKN       : PH_PINLOCKN_PINLOCKN_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PH_PINLOCKN_Register use record
      PINLOCKN       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PH_OVTDIS_OVTDIS_Field is Interfaces.EFM32.UInt16;

   --  Over Voltage Disable for All Modes
   type PH_OVTDIS_Register is record
      --  Disable Over Voltage Capability
      OVTDIS         : PH_OVTDIS_OVTDIS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PH_OVTDIS_Register use record
      OVTDIS         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PI_CTRL_DRIVESTRENGTH_Field is Interfaces.EFM32.Bit;
   subtype PI_CTRL_SLEWRATE_Field is Interfaces.EFM32.UInt3;
   subtype PI_CTRL_DINDIS_Field is Interfaces.EFM32.Bit;
   subtype PI_CTRL_DRIVESTRENGTHALT_Field is Interfaces.EFM32.Bit;
   subtype PI_CTRL_SLEWRATEALT_Field is Interfaces.EFM32.UInt3;
   subtype PI_CTRL_DINDISALT_Field is Interfaces.EFM32.Bit;

   --  Port Control Register
   type PI_CTRL_Register is record
      --  Drive Strength for Port
      DRIVESTRENGTH    : PI_CTRL_DRIVESTRENGTH_Field := 16#0#;
      --  unspecified
      Reserved_1_3     : Interfaces.EFM32.UInt3 := 16#0#;
      --  Slewrate Limit for Port
      SLEWRATE         : PI_CTRL_SLEWRATE_Field := 16#5#;
      --  unspecified
      Reserved_7_11    : Interfaces.EFM32.UInt5 := 16#0#;
      --  Data in Disable
      DINDIS           : PI_CTRL_DINDIS_Field := 16#0#;
      --  unspecified
      Reserved_13_15   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Drive Strength for Port
      DRIVESTRENGTHALT : PI_CTRL_DRIVESTRENGTHALT_Field := 16#0#;
      --  unspecified
      Reserved_17_19   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Slewrate Limit for Port
      SLEWRATEALT      : PI_CTRL_SLEWRATEALT_Field := 16#5#;
      --  unspecified
      Reserved_23_27   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Alternate Data in Disable
      DINDISALT        : PI_CTRL_DINDISALT_Field := 16#0#;
      --  unspecified
      Reserved_29_31   : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PI_CTRL_Register use record
      DRIVESTRENGTH    at 0 range 0 .. 0;
      Reserved_1_3     at 0 range 1 .. 3;
      SLEWRATE         at 0 range 4 .. 6;
      Reserved_7_11    at 0 range 7 .. 11;
      DINDIS           at 0 range 12 .. 12;
      Reserved_13_15   at 0 range 13 .. 15;
      DRIVESTRENGTHALT at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      SLEWRATEALT      at 0 range 20 .. 22;
      Reserved_23_27   at 0 range 23 .. 27;
      DINDISALT        at 0 range 28 .. 28;
      Reserved_29_31   at 0 range 29 .. 31;
   end record;

   --  Pin 0 Mode
   type PI_MODEL_MODE0_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PI_MODEL_MODE0_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PI_MODEL_MODE array
   type PI_MODEL_MODE_Field_Array is array (0 .. 7) of PI_MODEL_MODE0_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode Low Register
   type PI_MODEL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PI_MODEL_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PI_MODEL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Pin 8 Mode
   type PI_MODEH_MODE8_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PI_MODEH_MODE8_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PI_MODEH_MODE array
   type PI_MODEH_MODE_Field_Array is array (8 .. 15) of PI_MODEH_MODE8_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode High Register
   type PI_MODEH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PI_MODEH_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PI_MODEH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PI_DOUT_DOUT_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Register
   type PI_DOUT_Register is record
      --  Data Out
      DOUT           : PI_DOUT_DOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PI_DOUT_Register use record
      DOUT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PI_DOUTTGL_DOUTTGL_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Toggle Register
   type PI_DOUTTGL_Register is record
      --  Write-only. Data Out Toggle
      DOUTTGL        : PI_DOUTTGL_DOUTTGL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PI_DOUTTGL_Register use record
      DOUTTGL        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PI_DIN_DIN_Field is Interfaces.EFM32.UInt16;

   --  Port Data in Register
   type PI_DIN_Register is record
      --  Read-only. Data in
      DIN            : PI_DIN_DIN_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PI_DIN_Register use record
      DIN            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PI_PINLOCKN_PINLOCKN_Field is Interfaces.EFM32.UInt16;

   --  Port Unlocked Pins Register
   type PI_PINLOCKN_Register is record
      --  Unlocked Pins
      PINLOCKN       : PI_PINLOCKN_PINLOCKN_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PI_PINLOCKN_Register use record
      PINLOCKN       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PI_OVTDIS_OVTDIS_Field is Interfaces.EFM32.UInt16;

   --  Over Voltage Disable for All Modes
   type PI_OVTDIS_Register is record
      --  Disable Over Voltage Capability
      OVTDIS         : PI_OVTDIS_OVTDIS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PI_OVTDIS_Register use record
      OVTDIS         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PJ_CTRL_DRIVESTRENGTH_Field is Interfaces.EFM32.Bit;
   subtype PJ_CTRL_SLEWRATE_Field is Interfaces.EFM32.UInt3;
   subtype PJ_CTRL_DINDIS_Field is Interfaces.EFM32.Bit;
   subtype PJ_CTRL_DRIVESTRENGTHALT_Field is Interfaces.EFM32.Bit;
   subtype PJ_CTRL_SLEWRATEALT_Field is Interfaces.EFM32.UInt3;
   subtype PJ_CTRL_DINDISALT_Field is Interfaces.EFM32.Bit;

   --  Port Control Register
   type PJ_CTRL_Register is record
      --  Drive Strength for Port
      DRIVESTRENGTH    : PJ_CTRL_DRIVESTRENGTH_Field := 16#0#;
      --  unspecified
      Reserved_1_3     : Interfaces.EFM32.UInt3 := 16#0#;
      --  Slewrate Limit for Port
      SLEWRATE         : PJ_CTRL_SLEWRATE_Field := 16#5#;
      --  unspecified
      Reserved_7_11    : Interfaces.EFM32.UInt5 := 16#0#;
      --  Data in Disable
      DINDIS           : PJ_CTRL_DINDIS_Field := 16#0#;
      --  unspecified
      Reserved_13_15   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Drive Strength for Port
      DRIVESTRENGTHALT : PJ_CTRL_DRIVESTRENGTHALT_Field := 16#0#;
      --  unspecified
      Reserved_17_19   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Slewrate Limit for Port
      SLEWRATEALT      : PJ_CTRL_SLEWRATEALT_Field := 16#5#;
      --  unspecified
      Reserved_23_27   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Alternate Data in Disable
      DINDISALT        : PJ_CTRL_DINDISALT_Field := 16#0#;
      --  unspecified
      Reserved_29_31   : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PJ_CTRL_Register use record
      DRIVESTRENGTH    at 0 range 0 .. 0;
      Reserved_1_3     at 0 range 1 .. 3;
      SLEWRATE         at 0 range 4 .. 6;
      Reserved_7_11    at 0 range 7 .. 11;
      DINDIS           at 0 range 12 .. 12;
      Reserved_13_15   at 0 range 13 .. 15;
      DRIVESTRENGTHALT at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      SLEWRATEALT      at 0 range 20 .. 22;
      Reserved_23_27   at 0 range 23 .. 27;
      DINDISALT        at 0 range 28 .. 28;
      Reserved_29_31   at 0 range 29 .. 31;
   end record;

   --  Pin 0 Mode
   type PJ_MODEL_MODE0_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PJ_MODEL_MODE0_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PJ_MODEL_MODE array
   type PJ_MODEL_MODE_Field_Array is array (0 .. 7) of PJ_MODEL_MODE0_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode Low Register
   type PJ_MODEL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PJ_MODEL_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PJ_MODEL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Pin 8 Mode
   type PJ_MODEH_MODE8_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PJ_MODEH_MODE8_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PJ_MODEH_MODE array
   type PJ_MODEH_MODE_Field_Array is array (8 .. 15) of PJ_MODEH_MODE8_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode High Register
   type PJ_MODEH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PJ_MODEH_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PJ_MODEH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PJ_DOUT_DOUT_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Register
   type PJ_DOUT_Register is record
      --  Data Out
      DOUT           : PJ_DOUT_DOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PJ_DOUT_Register use record
      DOUT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PJ_DOUTTGL_DOUTTGL_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Toggle Register
   type PJ_DOUTTGL_Register is record
      --  Write-only. Data Out Toggle
      DOUTTGL        : PJ_DOUTTGL_DOUTTGL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PJ_DOUTTGL_Register use record
      DOUTTGL        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PJ_DIN_DIN_Field is Interfaces.EFM32.UInt16;

   --  Port Data in Register
   type PJ_DIN_Register is record
      --  Read-only. Data in
      DIN            : PJ_DIN_DIN_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PJ_DIN_Register use record
      DIN            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PJ_PINLOCKN_PINLOCKN_Field is Interfaces.EFM32.UInt16;

   --  Port Unlocked Pins Register
   type PJ_PINLOCKN_Register is record
      --  Unlocked Pins
      PINLOCKN       : PJ_PINLOCKN_PINLOCKN_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PJ_PINLOCKN_Register use record
      PINLOCKN       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PJ_OVTDIS_OVTDIS_Field is Interfaces.EFM32.UInt16;

   --  Over Voltage Disable for All Modes
   type PJ_OVTDIS_Register is record
      --  Disable Over Voltage Capability
      OVTDIS         : PJ_OVTDIS_OVTDIS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PJ_OVTDIS_Register use record
      OVTDIS         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PK_CTRL_DRIVESTRENGTH_Field is Interfaces.EFM32.Bit;
   subtype PK_CTRL_SLEWRATE_Field is Interfaces.EFM32.UInt3;
   subtype PK_CTRL_DINDIS_Field is Interfaces.EFM32.Bit;
   subtype PK_CTRL_DRIVESTRENGTHALT_Field is Interfaces.EFM32.Bit;
   subtype PK_CTRL_SLEWRATEALT_Field is Interfaces.EFM32.UInt3;
   subtype PK_CTRL_DINDISALT_Field is Interfaces.EFM32.Bit;

   --  Port Control Register
   type PK_CTRL_Register is record
      --  Drive Strength for Port
      DRIVESTRENGTH    : PK_CTRL_DRIVESTRENGTH_Field := 16#0#;
      --  unspecified
      Reserved_1_3     : Interfaces.EFM32.UInt3 := 16#0#;
      --  Slewrate Limit for Port
      SLEWRATE         : PK_CTRL_SLEWRATE_Field := 16#5#;
      --  unspecified
      Reserved_7_11    : Interfaces.EFM32.UInt5 := 16#0#;
      --  Data in Disable
      DINDIS           : PK_CTRL_DINDIS_Field := 16#0#;
      --  unspecified
      Reserved_13_15   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Drive Strength for Port
      DRIVESTRENGTHALT : PK_CTRL_DRIVESTRENGTHALT_Field := 16#0#;
      --  unspecified
      Reserved_17_19   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Slewrate Limit for Port
      SLEWRATEALT      : PK_CTRL_SLEWRATEALT_Field := 16#5#;
      --  unspecified
      Reserved_23_27   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Alternate Data in Disable
      DINDISALT        : PK_CTRL_DINDISALT_Field := 16#0#;
      --  unspecified
      Reserved_29_31   : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PK_CTRL_Register use record
      DRIVESTRENGTH    at 0 range 0 .. 0;
      Reserved_1_3     at 0 range 1 .. 3;
      SLEWRATE         at 0 range 4 .. 6;
      Reserved_7_11    at 0 range 7 .. 11;
      DINDIS           at 0 range 12 .. 12;
      Reserved_13_15   at 0 range 13 .. 15;
      DRIVESTRENGTHALT at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      SLEWRATEALT      at 0 range 20 .. 22;
      Reserved_23_27   at 0 range 23 .. 27;
      DINDISALT        at 0 range 28 .. 28;
      Reserved_29_31   at 0 range 29 .. 31;
   end record;

   --  Pin 0 Mode
   type PK_MODEL_MODE0_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PK_MODEL_MODE0_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PK_MODEL_MODE array
   type PK_MODEL_MODE_Field_Array is array (0 .. 7) of PK_MODEL_MODE0_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode Low Register
   type PK_MODEL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PK_MODEL_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PK_MODEL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Pin 8 Mode
   type PK_MODEH_MODE8_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PK_MODEH_MODE8_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PK_MODEH_MODE array
   type PK_MODEH_MODE_Field_Array is array (8 .. 15) of PK_MODEH_MODE8_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode High Register
   type PK_MODEH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PK_MODEH_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PK_MODEH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PK_DOUT_DOUT_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Register
   type PK_DOUT_Register is record
      --  Data Out
      DOUT           : PK_DOUT_DOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PK_DOUT_Register use record
      DOUT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PK_DOUTTGL_DOUTTGL_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Toggle Register
   type PK_DOUTTGL_Register is record
      --  Write-only. Data Out Toggle
      DOUTTGL        : PK_DOUTTGL_DOUTTGL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PK_DOUTTGL_Register use record
      DOUTTGL        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PK_DIN_DIN_Field is Interfaces.EFM32.UInt16;

   --  Port Data in Register
   type PK_DIN_Register is record
      --  Read-only. Data in
      DIN            : PK_DIN_DIN_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PK_DIN_Register use record
      DIN            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PK_PINLOCKN_PINLOCKN_Field is Interfaces.EFM32.UInt16;

   --  Port Unlocked Pins Register
   type PK_PINLOCKN_Register is record
      --  Unlocked Pins
      PINLOCKN       : PK_PINLOCKN_PINLOCKN_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PK_PINLOCKN_Register use record
      PINLOCKN       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PK_OVTDIS_OVTDIS_Field is Interfaces.EFM32.UInt16;

   --  Over Voltage Disable for All Modes
   type PK_OVTDIS_Register is record
      --  Disable Over Voltage Capability
      OVTDIS         : PK_OVTDIS_OVTDIS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PK_OVTDIS_Register use record
      OVTDIS         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PL_CTRL_DRIVESTRENGTH_Field is Interfaces.EFM32.Bit;
   subtype PL_CTRL_SLEWRATE_Field is Interfaces.EFM32.UInt3;
   subtype PL_CTRL_DINDIS_Field is Interfaces.EFM32.Bit;
   subtype PL_CTRL_DRIVESTRENGTHALT_Field is Interfaces.EFM32.Bit;
   subtype PL_CTRL_SLEWRATEALT_Field is Interfaces.EFM32.UInt3;
   subtype PL_CTRL_DINDISALT_Field is Interfaces.EFM32.Bit;

   --  Port Control Register
   type PL_CTRL_Register is record
      --  Drive Strength for Port
      DRIVESTRENGTH    : PL_CTRL_DRIVESTRENGTH_Field := 16#0#;
      --  unspecified
      Reserved_1_3     : Interfaces.EFM32.UInt3 := 16#0#;
      --  Slewrate Limit for Port
      SLEWRATE         : PL_CTRL_SLEWRATE_Field := 16#5#;
      --  unspecified
      Reserved_7_11    : Interfaces.EFM32.UInt5 := 16#0#;
      --  Data in Disable
      DINDIS           : PL_CTRL_DINDIS_Field := 16#0#;
      --  unspecified
      Reserved_13_15   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Drive Strength for Port
      DRIVESTRENGTHALT : PL_CTRL_DRIVESTRENGTHALT_Field := 16#0#;
      --  unspecified
      Reserved_17_19   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Alternate Slewrate Limit for Port
      SLEWRATEALT      : PL_CTRL_SLEWRATEALT_Field := 16#5#;
      --  unspecified
      Reserved_23_27   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Alternate Data in Disable
      DINDISALT        : PL_CTRL_DINDISALT_Field := 16#0#;
      --  unspecified
      Reserved_29_31   : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PL_CTRL_Register use record
      DRIVESTRENGTH    at 0 range 0 .. 0;
      Reserved_1_3     at 0 range 1 .. 3;
      SLEWRATE         at 0 range 4 .. 6;
      Reserved_7_11    at 0 range 7 .. 11;
      DINDIS           at 0 range 12 .. 12;
      Reserved_13_15   at 0 range 13 .. 15;
      DRIVESTRENGTHALT at 0 range 16 .. 16;
      Reserved_17_19   at 0 range 17 .. 19;
      SLEWRATEALT      at 0 range 20 .. 22;
      Reserved_23_27   at 0 range 23 .. 27;
      DINDISALT        at 0 range 28 .. 28;
      Reserved_29_31   at 0 range 29 .. 31;
   end record;

   --  Pin 0 Mode
   type PL_MODEL_MODE0_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PL_MODEL_MODE0_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PL_MODEL_MODE array
   type PL_MODEL_MODE_Field_Array is array (0 .. 7) of PL_MODEL_MODE0_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode Low Register
   type PL_MODEL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PL_MODEL_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PL_MODEL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  Pin 8 Mode
   type PL_MODEH_MODE8_Field is
     (--  Input disabled. Pullup if DOUT is set.
      DISABLED,
      --  Input enabled. Filter if DOUT is set
      INPUT,
      --  Input enabled. DOUT determines pull direction
      INPUTPULL,
      --  Input enabled with filter. DOUT determines pull direction
      INPUTPULLFILTER,
      --  Push-pull output
      PUSHPULL,
      --  Push-pull using alternate control
      PUSHPULLALT,
      --  Wired-or output
      WIREDOR,
      --  Wired-or output with pull-down
      WIREDORPULLDOWN,
      --  Open-drain output
      WIREDAND,
      --  Open-drain output with filter
      WIREDANDFILTER,
      --  Open-drain output with pullup
      WIREDANDPULLUP,
      --  Open-drain output with filter and pullup
      WIREDANDPULLUPFILTER,
      --  Open-drain output using alternate control
      WIREDANDALT,
      --  Open-drain output using alternate control with filter
      WIREDANDALTFILTER,
      --  Open-drain output using alternate control with pullup
      WIREDANDALTPULLUP,
      --  Open-drain output using alternate control with filter and pullup
      WIREDANDALTPULLUPFILTER)
     with Size => 4;
   for PL_MODEH_MODE8_Field use
     (DISABLED => 0,
      INPUT => 1,
      INPUTPULL => 2,
      INPUTPULLFILTER => 3,
      PUSHPULL => 4,
      PUSHPULLALT => 5,
      WIREDOR => 6,
      WIREDORPULLDOWN => 7,
      WIREDAND => 8,
      WIREDANDFILTER => 9,
      WIREDANDPULLUP => 10,
      WIREDANDPULLUPFILTER => 11,
      WIREDANDALT => 12,
      WIREDANDALTFILTER => 13,
      WIREDANDALTPULLUP => 14,
      WIREDANDALTPULLUPFILTER => 15);

   --  PL_MODEH_MODE array
   type PL_MODEH_MODE_Field_Array is array (8 .. 15) of PL_MODEH_MODE8_Field
     with Component_Size => 4, Size => 32;

   --  Port Pin Mode High Register
   type PL_MODEH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  MODE as an array
            Arr : PL_MODEH_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PL_MODEH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype PL_DOUT_DOUT_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Register
   type PL_DOUT_Register is record
      --  Data Out
      DOUT           : PL_DOUT_DOUT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PL_DOUT_Register use record
      DOUT           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PL_DOUTTGL_DOUTTGL_Field is Interfaces.EFM32.UInt16;

   --  Port Data Out Toggle Register
   type PL_DOUTTGL_Register is record
      --  Write-only. Data Out Toggle
      DOUTTGL        : PL_DOUTTGL_DOUTTGL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PL_DOUTTGL_Register use record
      DOUTTGL        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PL_DIN_DIN_Field is Interfaces.EFM32.UInt16;

   --  Port Data in Register
   type PL_DIN_Register is record
      --  Read-only. Data in
      DIN            : PL_DIN_DIN_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PL_DIN_Register use record
      DIN            at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PL_PINLOCKN_PINLOCKN_Field is Interfaces.EFM32.UInt16;

   --  Port Unlocked Pins Register
   type PL_PINLOCKN_Register is record
      --  Unlocked Pins
      PINLOCKN       : PL_PINLOCKN_PINLOCKN_Field := 16#FFFF#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PL_PINLOCKN_Register use record
      PINLOCKN       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PL_OVTDIS_OVTDIS_Field is Interfaces.EFM32.UInt16;

   --  Over Voltage Disable for All Modes
   type PL_OVTDIS_Register is record
      --  Disable Over Voltage Capability
      OVTDIS         : PL_OVTDIS_OVTDIS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PL_OVTDIS_Register use record
      OVTDIS         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  External Interrupt 0 Port Select
   type EXTIPSELL_EXTIPSEL0_Field is
     (--  Port A group selected for external interrupt 0
      PORTA,
      --  Port B group selected for external interrupt 0
      PORTB,
      --  Port C group selected for external interrupt 0
      PORTC,
      --  Port D group selected for external interrupt 0
      PORTD,
      --  Port E group selected for external interrupt 0
      PORTE,
      --  Port F group selected for external interrupt 0
      PORTF)
     with Size => 4;
   for EXTIPSELL_EXTIPSEL0_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt 1 Port Select
   type EXTIPSELL_EXTIPSEL1_Field is
     (--  Port A group selected for external interrupt 1
      PORTA,
      --  Port B group selected for external interrupt 1
      PORTB,
      --  Port C group selected for external interrupt 1
      PORTC,
      --  Port D group selected for external interrupt 1
      PORTD,
      --  Port E group selected for external interrupt 1
      PORTE,
      --  Port F group selected for external interrupt 1
      PORTF)
     with Size => 4;
   for EXTIPSELL_EXTIPSEL1_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt 2 Port Select
   type EXTIPSELL_EXTIPSEL2_Field is
     (--  Port A group selected for external interrupt 2
      PORTA,
      --  Port B group selected for external interrupt 2
      PORTB,
      --  Port C group selected for external interrupt 2
      PORTC,
      --  Port D group selected for external interrupt 2
      PORTD,
      --  Port E group selected for external interrupt 2
      PORTE,
      --  Port F group selected for external interrupt 2
      PORTF)
     with Size => 4;
   for EXTIPSELL_EXTIPSEL2_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt 3 Port Select
   type EXTIPSELL_EXTIPSEL3_Field is
     (--  Port A group selected for external interrupt 3
      PORTA,
      --  Port B group selected for external interrupt 3
      PORTB,
      --  Port C group selected for external interrupt 3
      PORTC,
      --  Port D group selected for external interrupt 3
      PORTD,
      --  Port E group selected for external interrupt 3
      PORTE,
      --  Port F group selected for external interrupt 3
      PORTF)
     with Size => 4;
   for EXTIPSELL_EXTIPSEL3_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt 4 Port Select
   type EXTIPSELL_EXTIPSEL4_Field is
     (--  Port A group selected for external interrupt 4
      PORTA,
      --  Port B group selected for external interrupt 4
      PORTB,
      --  Port C group selected for external interrupt 4
      PORTC,
      --  Port D group selected for external interrupt 4
      PORTD,
      --  Port E group selected for external interrupt 4
      PORTE,
      --  Port F group selected for external interrupt 4
      PORTF)
     with Size => 4;
   for EXTIPSELL_EXTIPSEL4_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt 5 Port Select
   type EXTIPSELL_EXTIPSEL5_Field is
     (--  Port A group selected for external interrupt 5
      PORTA,
      --  Port B group selected for external interrupt 5
      PORTB,
      --  Port C group selected for external interrupt 5
      PORTC,
      --  Port D group selected for external interrupt 5
      PORTD,
      --  Port E group selected for external interrupt 5
      PORTE,
      --  Port F group selected for external interrupt 5
      PORTF)
     with Size => 4;
   for EXTIPSELL_EXTIPSEL5_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt 6 Port Select
   type EXTIPSELL_EXTIPSEL6_Field is
     (--  Port A group selected for external interrupt 6
      PORTA,
      --  Port B group selected for external interrupt 6
      PORTB,
      --  Port C group selected for external interrupt 6
      PORTC,
      --  Port D group selected for external interrupt 6
      PORTD,
      --  Port E group selected for external interrupt 6
      PORTE,
      --  Port F group selected for external interrupt 6
      PORTF)
     with Size => 4;
   for EXTIPSELL_EXTIPSEL6_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt 7 Port Select
   type EXTIPSELL_EXTIPSEL7_Field is
     (--  Port A group selected for external interrupt 7
      PORTA,
      --  Port B group selected for external interrupt 7
      PORTB,
      --  Port C group selected for external interrupt 7
      PORTC,
      --  Port D group selected for external interrupt 7
      PORTD,
      --  Port E group selected for external interrupt 7
      PORTE,
      --  Port F group selected for external interrupt 7
      PORTF)
     with Size => 4;
   for EXTIPSELL_EXTIPSEL7_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt Port Select Low Register
   type EXTIPSELL_Register is record
      --  External Interrupt 0 Port Select
      EXTIPSEL0 : EXTIPSELL_EXTIPSEL0_Field := Interfaces.EFM32.GPIO.PORTA;
      --  External Interrupt 1 Port Select
      EXTIPSEL1 : EXTIPSELL_EXTIPSEL1_Field := Interfaces.EFM32.GPIO.PORTA;
      --  External Interrupt 2 Port Select
      EXTIPSEL2 : EXTIPSELL_EXTIPSEL2_Field := Interfaces.EFM32.GPIO.PORTA;
      --  External Interrupt 3 Port Select
      EXTIPSEL3 : EXTIPSELL_EXTIPSEL3_Field := Interfaces.EFM32.GPIO.PORTA;
      --  External Interrupt 4 Port Select
      EXTIPSEL4 : EXTIPSELL_EXTIPSEL4_Field := Interfaces.EFM32.GPIO.PORTA;
      --  External Interrupt 5 Port Select
      EXTIPSEL5 : EXTIPSELL_EXTIPSEL5_Field := Interfaces.EFM32.GPIO.PORTA;
      --  External Interrupt 6 Port Select
      EXTIPSEL6 : EXTIPSELL_EXTIPSEL6_Field := Interfaces.EFM32.GPIO.PORTA;
      --  External Interrupt 7 Port Select
      EXTIPSEL7 : EXTIPSELL_EXTIPSEL7_Field := Interfaces.EFM32.GPIO.PORTA;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTIPSELL_Register use record
      EXTIPSEL0 at 0 range 0 .. 3;
      EXTIPSEL1 at 0 range 4 .. 7;
      EXTIPSEL2 at 0 range 8 .. 11;
      EXTIPSEL3 at 0 range 12 .. 15;
      EXTIPSEL4 at 0 range 16 .. 19;
      EXTIPSEL5 at 0 range 20 .. 23;
      EXTIPSEL6 at 0 range 24 .. 27;
      EXTIPSEL7 at 0 range 28 .. 31;
   end record;

   --  External Interrupt 8 Port Select
   type EXTIPSELH_EXTIPSEL8_Field is
     (--  Port A group selected for external interrupt 8
      PORTA,
      --  Port B group selected for external interrupt 8
      PORTB,
      --  Port C group selected for external interrupt 8
      PORTC,
      --  Port D group selected for external interrupt 8
      PORTD,
      --  Port E group selected for external interrupt 8
      PORTE,
      --  Port F group selected for external interrupt 8
      PORTF)
     with Size => 4;
   for EXTIPSELH_EXTIPSEL8_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt 9 Port Select
   type EXTIPSELH_EXTIPSEL9_Field is
     (--  Port A group selected for external interrupt 9
      PORTA,
      --  Port B group selected for external interrupt 9
      PORTB,
      --  Port C group selected for external interrupt 9
      PORTC,
      --  Port D group selected for external interrupt 9
      PORTD,
      --  Port E group selected for external interrupt 9
      PORTE,
      --  Port F group selected for external interrupt 9
      PORTF)
     with Size => 4;
   for EXTIPSELH_EXTIPSEL9_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt 10 Port Select
   type EXTIPSELH_EXTIPSEL10_Field is
     (--  Port A group selected for external interrupt 10
      PORTA,
      --  Port B group selected for external interrupt 10
      PORTB,
      --  Port C group selected for external interrupt 10
      PORTC,
      --  Port D group selected for external interrupt 10
      PORTD,
      --  Port E group selected for external interrupt 10
      PORTE,
      --  Port F group selected for external interrupt 10
      PORTF)
     with Size => 4;
   for EXTIPSELH_EXTIPSEL10_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt 11 Port Select
   type EXTIPSELH_EXTIPSEL11_Field is
     (--  Port A group selected for external interrupt 11
      PORTA,
      --  Port B group selected for external interrupt 11
      PORTB,
      --  Port C group selected for external interrupt 11
      PORTC,
      --  Port D group selected for external interrupt 11
      PORTD,
      --  Port E group selected for external interrupt 11
      PORTE,
      --  Port F group selected for external interrupt 11
      PORTF)
     with Size => 4;
   for EXTIPSELH_EXTIPSEL11_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt 12 Port Select
   type EXTIPSELH_EXTIPSEL12_Field is
     (--  Port A group selected for external interrupt 12
      PORTA,
      --  Port B group selected for external interrupt 12
      PORTB,
      --  Port C group selected for external interrupt 12
      PORTC,
      --  Port D group selected for external interrupt 12
      PORTD,
      --  Port E group selected for external interrupt 12
      PORTE,
      --  Port F group selected for external interrupt 12
      PORTF)
     with Size => 4;
   for EXTIPSELH_EXTIPSEL12_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt 13 Port Select
   type EXTIPSELH_EXTIPSEL13_Field is
     (--  Port A group selected for external interrupt 13
      PORTA,
      --  Port B group selected for external interrupt 13
      PORTB,
      --  Port C group selected for external interrupt 13
      PORTC,
      --  Port D group selected for external interrupt 13
      PORTD,
      --  Port E group selected for external interrupt 13
      PORTE,
      --  Port F group selected for external interrupt 13
      PORTF)
     with Size => 4;
   for EXTIPSELH_EXTIPSEL13_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt 14 Port Select
   type EXTIPSELH_EXTIPSEL14_Field is
     (--  Port A group selected for external interrupt 14
      PORTA,
      --  Port B group selected for external interrupt 14
      PORTB,
      --  Port C group selected for external interrupt 14
      PORTC,
      --  Port D group selected for external interrupt 14
      PORTD,
      --  Port E group selected for external interrupt 14
      PORTE,
      --  Port F group selected for external interrupt 14
      PORTF)
     with Size => 4;
   for EXTIPSELH_EXTIPSEL14_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt 15 Port Select
   type EXTIPSELH_EXTIPSEL15_Field is
     (--  Port A group selected for external interrupt 15
      PORTA,
      --  Port B group selected for external interrupt 15
      PORTB,
      --  Port C group selected for external interrupt 15
      PORTC,
      --  Port D group selected for external interrupt 15
      PORTD,
      --  Port E group selected for external interrupt 15
      PORTE,
      --  Port F group selected for external interrupt 15
      PORTF)
     with Size => 4;
   for EXTIPSELH_EXTIPSEL15_Field use
     (PORTA => 0,
      PORTB => 1,
      PORTC => 2,
      PORTD => 3,
      PORTE => 4,
      PORTF => 5);

   --  External Interrupt Port Select High Register
   type EXTIPSELH_Register is record
      --  External Interrupt 8 Port Select
      EXTIPSEL8  : EXTIPSELH_EXTIPSEL8_Field := Interfaces.EFM32.GPIO.PORTA;
      --  External Interrupt 9 Port Select
      EXTIPSEL9  : EXTIPSELH_EXTIPSEL9_Field := Interfaces.EFM32.GPIO.PORTA;
      --  External Interrupt 10 Port Select
      EXTIPSEL10 : EXTIPSELH_EXTIPSEL10_Field := Interfaces.EFM32.GPIO.PORTA;
      --  External Interrupt 11 Port Select
      EXTIPSEL11 : EXTIPSELH_EXTIPSEL11_Field := Interfaces.EFM32.GPIO.PORTA;
      --  External Interrupt 12 Port Select
      EXTIPSEL12 : EXTIPSELH_EXTIPSEL12_Field := Interfaces.EFM32.GPIO.PORTA;
      --  External Interrupt 13 Port Select
      EXTIPSEL13 : EXTIPSELH_EXTIPSEL13_Field := Interfaces.EFM32.GPIO.PORTA;
      --  External Interrupt 14 Port Select
      EXTIPSEL14 : EXTIPSELH_EXTIPSEL14_Field := Interfaces.EFM32.GPIO.PORTA;
      --  External Interrupt 15 Port Select
      EXTIPSEL15 : EXTIPSELH_EXTIPSEL15_Field := Interfaces.EFM32.GPIO.PORTA;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTIPSELH_Register use record
      EXTIPSEL8  at 0 range 0 .. 3;
      EXTIPSEL9  at 0 range 4 .. 7;
      EXTIPSEL10 at 0 range 8 .. 11;
      EXTIPSEL11 at 0 range 12 .. 15;
      EXTIPSEL12 at 0 range 16 .. 19;
      EXTIPSEL13 at 0 range 20 .. 23;
      EXTIPSEL14 at 0 range 24 .. 27;
      EXTIPSEL15 at 0 range 28 .. 31;
   end record;

   --  External Interrupt 0 Pin Select
   type EXTIPINSELL_EXTIPINSEL0_Field is
     (--  Pin 0
      PIN0,
      --  Pin 1
      PIN1,
      --  Pin 2
      PIN2,
      --  Pin 3
      PIN3)
     with Size => 2;
   for EXTIPINSELL_EXTIPINSEL0_Field use
     (PIN0 => 0,
      PIN1 => 1,
      PIN2 => 2,
      PIN3 => 3);

   --  External Interrupt 1 Pin Select
   type EXTIPINSELL_EXTIPINSEL1_Field is
     (--  Pin 0
      PIN0,
      --  Pin 1
      PIN1,
      --  Pin 2
      PIN2,
      --  Pin 3
      PIN3)
     with Size => 2;
   for EXTIPINSELL_EXTIPINSEL1_Field use
     (PIN0 => 0,
      PIN1 => 1,
      PIN2 => 2,
      PIN3 => 3);

   --  External Interrupt 2 Pin Select
   type EXTIPINSELL_EXTIPINSEL2_Field is
     (--  Pin 0
      PIN0,
      --  Pin 1
      PIN1,
      --  Pin 2
      PIN2,
      --  Pin 3
      PIN3)
     with Size => 2;
   for EXTIPINSELL_EXTIPINSEL2_Field use
     (PIN0 => 0,
      PIN1 => 1,
      PIN2 => 2,
      PIN3 => 3);

   --  External Interrupt 3 Pin Select
   type EXTIPINSELL_EXTIPINSEL3_Field is
     (--  Pin 0
      PIN0,
      --  Pin 1
      PIN1,
      --  Pin 2
      PIN2,
      --  Pin 3
      PIN3)
     with Size => 2;
   for EXTIPINSELL_EXTIPINSEL3_Field use
     (PIN0 => 0,
      PIN1 => 1,
      PIN2 => 2,
      PIN3 => 3);

   --  External Interrupt 4 Pin Select
   type EXTIPINSELL_EXTIPINSEL4_Field is
     (--  Pin 4
      PIN4,
      --  Pin 5
      PIN5,
      --  Pin 6
      PIN6,
      --  Pin 7
      PIN7)
     with Size => 2;
   for EXTIPINSELL_EXTIPINSEL4_Field use
     (PIN4 => 0,
      PIN5 => 1,
      PIN6 => 2,
      PIN7 => 3);

   --  External Interrupt 5 Pin Select
   type EXTIPINSELL_EXTIPINSEL5_Field is
     (--  Pin 4
      PIN4,
      --  Pin 5
      PIN5,
      --  Pin 6
      PIN6,
      --  Pin 7
      PIN7)
     with Size => 2;
   for EXTIPINSELL_EXTIPINSEL5_Field use
     (PIN4 => 0,
      PIN5 => 1,
      PIN6 => 2,
      PIN7 => 3);

   --  External Interrupt 6 Pin Select
   type EXTIPINSELL_EXTIPINSEL6_Field is
     (--  Pin 4
      PIN4,
      --  Pin 5
      PIN5,
      --  Pin 6
      PIN6,
      --  Pin 7
      PIN7)
     with Size => 2;
   for EXTIPINSELL_EXTIPINSEL6_Field use
     (PIN4 => 0,
      PIN5 => 1,
      PIN6 => 2,
      PIN7 => 3);

   --  External Interrupt 7 Pin Select
   type EXTIPINSELL_EXTIPINSEL7_Field is
     (--  Pin 4
      PIN4,
      --  Pin 5
      PIN5,
      --  Pin 6
      PIN6,
      --  Pin 7
      PIN7)
     with Size => 2;
   for EXTIPINSELL_EXTIPINSEL7_Field use
     (PIN4 => 0,
      PIN5 => 1,
      PIN6 => 2,
      PIN7 => 3);

   --  External Interrupt Pin Select Low Register
   type EXTIPINSELL_Register is record
      --  External Interrupt 0 Pin Select
      EXTIPINSEL0    : EXTIPINSELL_EXTIPINSEL0_Field :=
                        Interfaces.EFM32.GPIO.PIN0;
      --  unspecified
      Reserved_2_3   : Interfaces.EFM32.UInt2 := 16#0#;
      --  External Interrupt 1 Pin Select
      EXTIPINSEL1    : EXTIPINSELL_EXTIPINSEL1_Field :=
                        Interfaces.EFM32.GPIO.PIN1;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  External Interrupt 2 Pin Select
      EXTIPINSEL2    : EXTIPINSELL_EXTIPINSEL2_Field :=
                        Interfaces.EFM32.GPIO.PIN2;
      --  unspecified
      Reserved_10_11 : Interfaces.EFM32.UInt2 := 16#0#;
      --  External Interrupt 3 Pin Select
      EXTIPINSEL3    : EXTIPINSELL_EXTIPINSEL3_Field :=
                        Interfaces.EFM32.GPIO.PIN3;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  External Interrupt 4 Pin Select
      EXTIPINSEL4    : EXTIPINSELL_EXTIPINSEL4_Field :=
                        Interfaces.EFM32.GPIO.PIN4;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  External Interrupt 5 Pin Select
      EXTIPINSEL5    : EXTIPINSELL_EXTIPINSEL5_Field :=
                        Interfaces.EFM32.GPIO.PIN5;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  External Interrupt 6 Pin Select
      EXTIPINSEL6    : EXTIPINSELL_EXTIPINSEL6_Field :=
                        Interfaces.EFM32.GPIO.PIN6;
      --  unspecified
      Reserved_26_27 : Interfaces.EFM32.UInt2 := 16#0#;
      --  External Interrupt 7 Pin Select
      EXTIPINSEL7    : EXTIPINSELL_EXTIPINSEL7_Field :=
                        Interfaces.EFM32.GPIO.PIN7;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTIPINSELL_Register use record
      EXTIPINSEL0    at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      EXTIPINSEL1    at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EXTIPINSEL2    at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      EXTIPINSEL3    at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      EXTIPINSEL4    at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      EXTIPINSEL5    at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      EXTIPINSEL6    at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      EXTIPINSEL7    at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  External Interrupt 8 Pin Select
   type EXTIPINSELH_EXTIPINSEL8_Field is
     (--  Pin 8
      PIN8,
      --  Pin 9
      PIN9,
      --  Pin 10
      PIN10,
      --  Pin 11
      PIN11)
     with Size => 2;
   for EXTIPINSELH_EXTIPINSEL8_Field use
     (PIN8 => 0,
      PIN9 => 1,
      PIN10 => 2,
      PIN11 => 3);

   --  External Interrupt 9 Pin Select
   type EXTIPINSELH_EXTIPINSEL9_Field is
     (--  Pin 8
      PIN8,
      --  Pin 9
      PIN9,
      --  Pin 10
      PIN10,
      --  Pin 11
      PIN11)
     with Size => 2;
   for EXTIPINSELH_EXTIPINSEL9_Field use
     (PIN8 => 0,
      PIN9 => 1,
      PIN10 => 2,
      PIN11 => 3);

   --  External Interrupt 10 Pin Select
   type EXTIPINSELH_EXTIPINSEL10_Field is
     (--  Pin 8
      PIN8,
      --  Pin 9
      PIN9,
      --  Pin 10
      PIN10,
      --  Pin 11
      PIN11)
     with Size => 2;
   for EXTIPINSELH_EXTIPINSEL10_Field use
     (PIN8 => 0,
      PIN9 => 1,
      PIN10 => 2,
      PIN11 => 3);

   --  External Interrupt 11 Pin Select
   type EXTIPINSELH_EXTIPINSEL11_Field is
     (--  Pin 8
      PIN8,
      --  Pin 9
      PIN9,
      --  Pin 10
      PIN10,
      --  Pin 11
      PIN11)
     with Size => 2;
   for EXTIPINSELH_EXTIPINSEL11_Field use
     (PIN8 => 0,
      PIN9 => 1,
      PIN10 => 2,
      PIN11 => 3);

   --  External Interrupt 12 Pin Select
   type EXTIPINSELH_EXTIPINSEL12_Field is
     (--  Pin 12
      PIN12,
      --  Pin 13
      PIN13,
      --  Pin 14
      PIN14,
      --  Pin 15
      PIN15)
     with Size => 2;
   for EXTIPINSELH_EXTIPINSEL12_Field use
     (PIN12 => 0,
      PIN13 => 1,
      PIN14 => 2,
      PIN15 => 3);

   --  External Interrupt 13 Pin Select
   type EXTIPINSELH_EXTIPINSEL13_Field is
     (--  Pin 12
      PIN12,
      --  Pin 13
      PIN13,
      --  Pin 14
      PIN14,
      --  Pin 15
      PIN15)
     with Size => 2;
   for EXTIPINSELH_EXTIPINSEL13_Field use
     (PIN12 => 0,
      PIN13 => 1,
      PIN14 => 2,
      PIN15 => 3);

   --  External Interrupt 14 Pin Select
   type EXTIPINSELH_EXTIPINSEL14_Field is
     (--  Pin 12
      PIN12,
      --  Pin 13
      PIN13,
      --  Pin 14
      PIN14,
      --  Pin 15
      PIN15)
     with Size => 2;
   for EXTIPINSELH_EXTIPINSEL14_Field use
     (PIN12 => 0,
      PIN13 => 1,
      PIN14 => 2,
      PIN15 => 3);

   --  External Interrupt 15 Pin Select
   type EXTIPINSELH_EXTIPINSEL15_Field is
     (--  Pin 12
      PIN12,
      --  Pin 13
      PIN13,
      --  Pin 14
      PIN14,
      --  Pin 15
      PIN15)
     with Size => 2;
   for EXTIPINSELH_EXTIPINSEL15_Field use
     (PIN12 => 0,
      PIN13 => 1,
      PIN14 => 2,
      PIN15 => 3);

   --  External Interrupt Pin Select High Register
   type EXTIPINSELH_Register is record
      --  External Interrupt 8 Pin Select
      EXTIPINSEL8    : EXTIPINSELH_EXTIPINSEL8_Field :=
                        Interfaces.EFM32.GPIO.PIN8;
      --  unspecified
      Reserved_2_3   : Interfaces.EFM32.UInt2 := 16#0#;
      --  External Interrupt 9 Pin Select
      EXTIPINSEL9    : EXTIPINSELH_EXTIPINSEL9_Field :=
                        Interfaces.EFM32.GPIO.PIN9;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  External Interrupt 10 Pin Select
      EXTIPINSEL10   : EXTIPINSELH_EXTIPINSEL10_Field :=
                        Interfaces.EFM32.GPIO.PIN10;
      --  unspecified
      Reserved_10_11 : Interfaces.EFM32.UInt2 := 16#0#;
      --  External Interrupt 11 Pin Select
      EXTIPINSEL11   : EXTIPINSELH_EXTIPINSEL11_Field :=
                        Interfaces.EFM32.GPIO.PIN11;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  External Interrupt 12 Pin Select
      EXTIPINSEL12   : EXTIPINSELH_EXTIPINSEL12_Field :=
                        Interfaces.EFM32.GPIO.PIN12;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  External Interrupt 13 Pin Select
      EXTIPINSEL13   : EXTIPINSELH_EXTIPINSEL13_Field :=
                        Interfaces.EFM32.GPIO.PIN13;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  External Interrupt 14 Pin Select
      EXTIPINSEL14   : EXTIPINSELH_EXTIPINSEL14_Field :=
                        Interfaces.EFM32.GPIO.PIN14;
      --  unspecified
      Reserved_26_27 : Interfaces.EFM32.UInt2 := 16#0#;
      --  External Interrupt 15 Pin Select
      EXTIPINSEL15   : EXTIPINSELH_EXTIPINSEL15_Field :=
                        Interfaces.EFM32.GPIO.PIN15;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTIPINSELH_Register use record
      EXTIPINSEL8    at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      EXTIPINSEL9    at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      EXTIPINSEL10   at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      EXTIPINSEL11   at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      EXTIPINSEL12   at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      EXTIPINSEL13   at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      EXTIPINSEL14   at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      EXTIPINSEL15   at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype EXTIRISE_EXTIRISE_Field is Interfaces.EFM32.UInt16;

   --  External Interrupt Rising Edge Trigger Register
   type EXTIRISE_Register is record
      --  External Interrupt N Rising Edge Trigger Enable
      EXTIRISE       : EXTIRISE_EXTIRISE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTIRISE_Register use record
      EXTIRISE       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EXTIFALL_EXTIFALL_Field is Interfaces.EFM32.UInt16;

   --  External Interrupt Falling Edge Trigger Register
   type EXTIFALL_Register is record
      --  External Interrupt N Falling Edge Trigger Enable
      EXTIFALL       : EXTIFALL_EXTIFALL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTIFALL_Register use record
      EXTIFALL       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  EXTILEVEL_EM4WU array element
   subtype EXTILEVEL_EM4WU_Element is Interfaces.EFM32.Bit;

   --  EXTILEVEL_EM4WU array
   type EXTILEVEL_EM4WU_Field_Array is array (0 .. 9)
     of EXTILEVEL_EM4WU_Element
     with Component_Size => 1, Size => 10;

   --  Type definition for EXTILEVEL_EM4WU
   type EXTILEVEL_EM4WU_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  EM4WU as a value
            Val : Interfaces.EFM32.UInt10;
         when True =>
            --  EM4WU as an array
            Arr : EXTILEVEL_EM4WU_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 10;

   for EXTILEVEL_EM4WU_Field use record
      Val at 0 range 0 .. 9;
      Arr at 0 range 0 .. 9;
   end record;

   --  External Interrupt Level Register
   type EXTILEVEL_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.EFM32.UInt16 := 16#0#;
      --  EM4 Wake Up Level for EM4WU0 Pin
      EM4WU          : EXTILEVEL_EM4WU_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_26_31 : Interfaces.EFM32.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EXTILEVEL_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      EM4WU          at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype IF_EXT_Field is Interfaces.EFM32.UInt16;
   subtype IF_EM4WU_Field is Interfaces.EFM32.UInt16;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. External Pin Interrupt Flag
      EXT   : IF_EXT_Field;
      --  Read-only. EM4 Wake Up Pin Interrupt Flag
      EM4WU : IF_EM4WU_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      EXT   at 0 range 0 .. 15;
      EM4WU at 0 range 16 .. 31;
   end record;

   subtype IFS_EXT_Field is Interfaces.EFM32.UInt16;
   subtype IFS_EM4WU_Field is Interfaces.EFM32.UInt16;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set EXT Interrupt Flag
      EXT   : IFS_EXT_Field := 16#0#;
      --  Write-only. Set EM4WU Interrupt Flag
      EM4WU : IFS_EM4WU_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      EXT   at 0 range 0 .. 15;
      EM4WU at 0 range 16 .. 31;
   end record;

   subtype IFC_EXT_Field is Interfaces.EFM32.UInt16;
   subtype IFC_EM4WU_Field is Interfaces.EFM32.UInt16;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear EXT Interrupt Flag
      EXT   : IFC_EXT_Field := 16#0#;
      --  Write-only. Clear EM4WU Interrupt Flag
      EM4WU : IFC_EM4WU_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      EXT   at 0 range 0 .. 15;
      EM4WU at 0 range 16 .. 31;
   end record;

   subtype IEN_EXT_Field is Interfaces.EFM32.UInt16;
   subtype IEN_EM4WU_Field is Interfaces.EFM32.UInt16;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  EXT Interrupt Enable
      EXT   : IEN_EXT_Field := 16#0#;
      --  EM4WU Interrupt Enable
      EM4WU : IEN_EM4WU_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      EXT   at 0 range 0 .. 15;
      EM4WU at 0 range 16 .. 31;
   end record;

   subtype EM4WUEN_EM4WUEN_Field is Interfaces.EFM32.UInt16;

   --  EM4 Wake Up Enable Register
   type EM4WUEN_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.EFM32.UInt16 := 16#0#;
      --  EM4 Wake Up Enable
      EM4WUEN       : EM4WUEN_EM4WUEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EM4WUEN_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      EM4WUEN       at 0 range 16 .. 31;
   end record;

   subtype ROUTEPEN_SWCLKTCKPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_SWDIOTMSPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_TDOPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_TDIPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_SWVPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_ETMTCLKPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_ETMTD0PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_ETMTD1PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_ETMTD2PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_ETMTD3PEN_Field is Interfaces.EFM32.Bit;

   --  I/O Routing Pin Enable Register
   type ROUTEPEN_Register is record
      --  Serial Wire Clock and JTAG Test Clock Pin Enable
      SWCLKTCKPEN    : ROUTEPEN_SWCLKTCKPEN_Field := 16#1#;
      --  Serial Wire Data and JTAG Test Mode Select Pin Enable
      SWDIOTMSPEN    : ROUTEPEN_SWDIOTMSPEN_Field := 16#1#;
      --  JTAG Test Debug Output Pin Enable
      TDOPEN         : ROUTEPEN_TDOPEN_Field := 16#1#;
      --  JTAG Test Debug Input Pin Enable
      TDIPEN         : ROUTEPEN_TDIPEN_Field := 16#1#;
      --  Serial Wire Viewer Output Pin Enable
      SWVPEN         : ROUTEPEN_SWVPEN_Field := 16#0#;
      --  unspecified
      Reserved_5_15  : Interfaces.EFM32.UInt11 := 16#0#;
      --  ETM Trace Clock Pin Enable
      ETMTCLKPEN     : ROUTEPEN_ETMTCLKPEN_Field := 16#0#;
      --  ETM Trace Data Pin Enable
      ETMTD0PEN      : ROUTEPEN_ETMTD0PEN_Field := 16#0#;
      --  ETM Trace Data Pin Enable
      ETMTD1PEN      : ROUTEPEN_ETMTD1PEN_Field := 16#0#;
      --  ETM Trace Data Pin Enable
      ETMTD2PEN      : ROUTEPEN_ETMTD2PEN_Field := 16#0#;
      --  ETM Trace Data Pin Enable
      ETMTD3PEN      : ROUTEPEN_ETMTD3PEN_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.EFM32.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTEPEN_Register use record
      SWCLKTCKPEN    at 0 range 0 .. 0;
      SWDIOTMSPEN    at 0 range 1 .. 1;
      TDOPEN         at 0 range 2 .. 2;
      TDIPEN         at 0 range 3 .. 3;
      SWVPEN         at 0 range 4 .. 4;
      Reserved_5_15  at 0 range 5 .. 15;
      ETMTCLKPEN     at 0 range 16 .. 16;
      ETMTD0PEN      at 0 range 17 .. 17;
      ETMTD1PEN      at 0 range 18 .. 18;
      ETMTD2PEN      at 0 range 19 .. 19;
      ETMTD3PEN      at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC0_SWVLOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3)
     with Size => 6;
   for ROUTELOC0_SWVLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3);

   --  I/O Location
   type ROUTELOC0_ETMLOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3,
      --  Location 4
      LOC4)
     with Size => 6;
   for ROUTELOC0_ETMLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4);

   --  I/O Routing Location Register
   type ROUTELOC0_Register is record
      --  I/O Location
      SWVLOC         : ROUTELOC0_SWVLOC_Field := Interfaces.EFM32.GPIO.LOC0;
      --  I/O Location
      ETMLOC         : ROUTELOC0_ETMLOC_Field := Interfaces.EFM32.GPIO.LOC0;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC0_Register use record
      SWVLOC         at 0 range 0 .. 5;
      ETMLOC         at 0 range 6 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype INSENSE_INT_Field is Interfaces.EFM32.Bit;
   subtype INSENSE_EM4WU_Field is Interfaces.EFM32.Bit;

   --  Input Sense Register
   type INSENSE_Register is record
      --  Interrupt Sense Enable
      INT           : INSENSE_INT_Field := 16#1#;
      --  EM4WU Interrupt Sense Enable
      EM4WU         : INSENSE_EM4WU_Field := 16#1#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INSENSE_Register use record
      INT           at 0 range 0 .. 0;
      EM4WU         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
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
      LOCKKEY        : LOCK_LOCKKEY_Field := Interfaces.EFM32.GPIO.UNLOCKED;
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

   --  GPIO
   type GPIO_Peripheral is record
      --  Port Control Register
      PA_CTRL     : aliased PA_CTRL_Register;
      --  Port Pin Mode Low Register
      PA_MODEL    : aliased PA_MODEL_Register;
      --  Port Pin Mode High Register
      PA_MODEH    : aliased PA_MODEH_Register;
      --  Port Data Out Register
      PA_DOUT     : aliased PA_DOUT_Register;
      --  Port Data Out Toggle Register
      PA_DOUTTGL  : aliased PA_DOUTTGL_Register;
      --  Port Data in Register
      PA_DIN      : aliased PA_DIN_Register;
      --  Port Unlocked Pins Register
      PA_PINLOCKN : aliased PA_PINLOCKN_Register;
      --  Over Voltage Disable for All Modes
      PA_OVTDIS   : aliased PA_OVTDIS_Register;
      --  Port Control Register
      PB_CTRL     : aliased PB_CTRL_Register;
      --  Port Pin Mode Low Register
      PB_MODEL    : aliased PB_MODEL_Register;
      --  Port Pin Mode High Register
      PB_MODEH    : aliased PB_MODEH_Register;
      --  Port Data Out Register
      PB_DOUT     : aliased PB_DOUT_Register;
      --  Port Data Out Toggle Register
      PB_DOUTTGL  : aliased PB_DOUTTGL_Register;
      --  Port Data in Register
      PB_DIN      : aliased PB_DIN_Register;
      --  Port Unlocked Pins Register
      PB_PINLOCKN : aliased PB_PINLOCKN_Register;
      --  Over Voltage Disable for All Modes
      PB_OVTDIS   : aliased PB_OVTDIS_Register;
      --  Port Control Register
      PC_CTRL     : aliased PC_CTRL_Register;
      --  Port Pin Mode Low Register
      PC_MODEL    : aliased PC_MODEL_Register;
      --  Port Pin Mode High Register
      PC_MODEH    : aliased PC_MODEH_Register;
      --  Port Data Out Register
      PC_DOUT     : aliased PC_DOUT_Register;
      --  Port Data Out Toggle Register
      PC_DOUTTGL  : aliased PC_DOUTTGL_Register;
      --  Port Data in Register
      PC_DIN      : aliased PC_DIN_Register;
      --  Port Unlocked Pins Register
      PC_PINLOCKN : aliased PC_PINLOCKN_Register;
      --  Over Voltage Disable for All Modes
      PC_OVTDIS   : aliased PC_OVTDIS_Register;
      --  Port Control Register
      PD_CTRL     : aliased PD_CTRL_Register;
      --  Port Pin Mode Low Register
      PD_MODEL    : aliased PD_MODEL_Register;
      --  Port Pin Mode High Register
      PD_MODEH    : aliased PD_MODEH_Register;
      --  Port Data Out Register
      PD_DOUT     : aliased PD_DOUT_Register;
      --  Port Data Out Toggle Register
      PD_DOUTTGL  : aliased PD_DOUTTGL_Register;
      --  Port Data in Register
      PD_DIN      : aliased PD_DIN_Register;
      --  Port Unlocked Pins Register
      PD_PINLOCKN : aliased PD_PINLOCKN_Register;
      --  Over Voltage Disable for All Modes
      PD_OVTDIS   : aliased PD_OVTDIS_Register;
      --  Port Control Register
      PE_CTRL     : aliased PE_CTRL_Register;
      --  Port Pin Mode Low Register
      PE_MODEL    : aliased PE_MODEL_Register;
      --  Port Pin Mode High Register
      PE_MODEH    : aliased PE_MODEH_Register;
      --  Port Data Out Register
      PE_DOUT     : aliased PE_DOUT_Register;
      --  Port Data Out Toggle Register
      PE_DOUTTGL  : aliased PE_DOUTTGL_Register;
      --  Port Data in Register
      PE_DIN      : aliased PE_DIN_Register;
      --  Port Unlocked Pins Register
      PE_PINLOCKN : aliased PE_PINLOCKN_Register;
      --  Over Voltage Disable for All Modes
      PE_OVTDIS   : aliased PE_OVTDIS_Register;
      --  Port Control Register
      PF_CTRL     : aliased PF_CTRL_Register;
      --  Port Pin Mode Low Register
      PF_MODEL    : aliased PF_MODEL_Register;
      --  Port Pin Mode High Register
      PF_MODEH    : aliased PF_MODEH_Register;
      --  Port Data Out Register
      PF_DOUT     : aliased PF_DOUT_Register;
      --  Port Data Out Toggle Register
      PF_DOUTTGL  : aliased PF_DOUTTGL_Register;
      --  Port Data in Register
      PF_DIN      : aliased PF_DIN_Register;
      --  Port Unlocked Pins Register
      PF_PINLOCKN : aliased PF_PINLOCKN_Register;
      --  Over Voltage Disable for All Modes
      PF_OVTDIS   : aliased PF_OVTDIS_Register;
      --  Port Control Register
      PG_CTRL     : aliased PG_CTRL_Register;
      --  Port Pin Mode Low Register
      PG_MODEL    : aliased PG_MODEL_Register;
      --  Port Pin Mode High Register
      PG_MODEH    : aliased PG_MODEH_Register;
      --  Port Data Out Register
      PG_DOUT     : aliased PG_DOUT_Register;
      --  Port Data Out Toggle Register
      PG_DOUTTGL  : aliased PG_DOUTTGL_Register;
      --  Port Data in Register
      PG_DIN      : aliased PG_DIN_Register;
      --  Port Unlocked Pins Register
      PG_PINLOCKN : aliased PG_PINLOCKN_Register;
      --  Over Voltage Disable for All Modes
      PG_OVTDIS   : aliased PG_OVTDIS_Register;
      --  Port Control Register
      PH_CTRL     : aliased PH_CTRL_Register;
      --  Port Pin Mode Low Register
      PH_MODEL    : aliased PH_MODEL_Register;
      --  Port Pin Mode High Register
      PH_MODEH    : aliased PH_MODEH_Register;
      --  Port Data Out Register
      PH_DOUT     : aliased PH_DOUT_Register;
      --  Port Data Out Toggle Register
      PH_DOUTTGL  : aliased PH_DOUTTGL_Register;
      --  Port Data in Register
      PH_DIN      : aliased PH_DIN_Register;
      --  Port Unlocked Pins Register
      PH_PINLOCKN : aliased PH_PINLOCKN_Register;
      --  Over Voltage Disable for All Modes
      PH_OVTDIS   : aliased PH_OVTDIS_Register;
      --  Port Control Register
      PI_CTRL     : aliased PI_CTRL_Register;
      --  Port Pin Mode Low Register
      PI_MODEL    : aliased PI_MODEL_Register;
      --  Port Pin Mode High Register
      PI_MODEH    : aliased PI_MODEH_Register;
      --  Port Data Out Register
      PI_DOUT     : aliased PI_DOUT_Register;
      --  Port Data Out Toggle Register
      PI_DOUTTGL  : aliased PI_DOUTTGL_Register;
      --  Port Data in Register
      PI_DIN      : aliased PI_DIN_Register;
      --  Port Unlocked Pins Register
      PI_PINLOCKN : aliased PI_PINLOCKN_Register;
      --  Over Voltage Disable for All Modes
      PI_OVTDIS   : aliased PI_OVTDIS_Register;
      --  Port Control Register
      PJ_CTRL     : aliased PJ_CTRL_Register;
      --  Port Pin Mode Low Register
      PJ_MODEL    : aliased PJ_MODEL_Register;
      --  Port Pin Mode High Register
      PJ_MODEH    : aliased PJ_MODEH_Register;
      --  Port Data Out Register
      PJ_DOUT     : aliased PJ_DOUT_Register;
      --  Port Data Out Toggle Register
      PJ_DOUTTGL  : aliased PJ_DOUTTGL_Register;
      --  Port Data in Register
      PJ_DIN      : aliased PJ_DIN_Register;
      --  Port Unlocked Pins Register
      PJ_PINLOCKN : aliased PJ_PINLOCKN_Register;
      --  Over Voltage Disable for All Modes
      PJ_OVTDIS   : aliased PJ_OVTDIS_Register;
      --  Port Control Register
      PK_CTRL     : aliased PK_CTRL_Register;
      --  Port Pin Mode Low Register
      PK_MODEL    : aliased PK_MODEL_Register;
      --  Port Pin Mode High Register
      PK_MODEH    : aliased PK_MODEH_Register;
      --  Port Data Out Register
      PK_DOUT     : aliased PK_DOUT_Register;
      --  Port Data Out Toggle Register
      PK_DOUTTGL  : aliased PK_DOUTTGL_Register;
      --  Port Data in Register
      PK_DIN      : aliased PK_DIN_Register;
      --  Port Unlocked Pins Register
      PK_PINLOCKN : aliased PK_PINLOCKN_Register;
      --  Over Voltage Disable for All Modes
      PK_OVTDIS   : aliased PK_OVTDIS_Register;
      --  Port Control Register
      PL_CTRL     : aliased PL_CTRL_Register;
      --  Port Pin Mode Low Register
      PL_MODEL    : aliased PL_MODEL_Register;
      --  Port Pin Mode High Register
      PL_MODEH    : aliased PL_MODEH_Register;
      --  Port Data Out Register
      PL_DOUT     : aliased PL_DOUT_Register;
      --  Port Data Out Toggle Register
      PL_DOUTTGL  : aliased PL_DOUTTGL_Register;
      --  Port Data in Register
      PL_DIN      : aliased PL_DIN_Register;
      --  Port Unlocked Pins Register
      PL_PINLOCKN : aliased PL_PINLOCKN_Register;
      --  Over Voltage Disable for All Modes
      PL_OVTDIS   : aliased PL_OVTDIS_Register;
      --  External Interrupt Port Select Low Register
      EXTIPSELL   : aliased EXTIPSELL_Register;
      --  External Interrupt Port Select High Register
      EXTIPSELH   : aliased EXTIPSELH_Register;
      --  External Interrupt Pin Select Low Register
      EXTIPINSELL : aliased EXTIPINSELL_Register;
      --  External Interrupt Pin Select High Register
      EXTIPINSELH : aliased EXTIPINSELH_Register;
      --  External Interrupt Rising Edge Trigger Register
      EXTIRISE    : aliased EXTIRISE_Register;
      --  External Interrupt Falling Edge Trigger Register
      EXTIFALL    : aliased EXTIFALL_Register;
      --  External Interrupt Level Register
      EXTILEVEL   : aliased EXTILEVEL_Register;
      --  Interrupt Flag Register
      IF_k        : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS         : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC         : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN         : aliased IEN_Register;
      --  EM4 Wake Up Enable Register
      EM4WUEN     : aliased EM4WUEN_Register;
      --  I/O Routing Pin Enable Register
      ROUTEPEN    : aliased ROUTEPEN_Register;
      --  I/O Routing Location Register
      ROUTELOC0   : aliased ROUTELOC0_Register;
      --  Input Sense Register
      INSENSE     : aliased INSENSE_Register;
      --  Configuration Lock Register
      LOCK        : aliased LOCK_Register;
   end record
     with Volatile;

   for GPIO_Peripheral use record
      PA_CTRL     at 16#0# range 0 .. 31;
      PA_MODEL    at 16#4# range 0 .. 31;
      PA_MODEH    at 16#8# range 0 .. 31;
      PA_DOUT     at 16#C# range 0 .. 31;
      PA_DOUTTGL  at 16#18# range 0 .. 31;
      PA_DIN      at 16#1C# range 0 .. 31;
      PA_PINLOCKN at 16#20# range 0 .. 31;
      PA_OVTDIS   at 16#28# range 0 .. 31;
      PB_CTRL     at 16#30# range 0 .. 31;
      PB_MODEL    at 16#34# range 0 .. 31;
      PB_MODEH    at 16#38# range 0 .. 31;
      PB_DOUT     at 16#3C# range 0 .. 31;
      PB_DOUTTGL  at 16#48# range 0 .. 31;
      PB_DIN      at 16#4C# range 0 .. 31;
      PB_PINLOCKN at 16#50# range 0 .. 31;
      PB_OVTDIS   at 16#58# range 0 .. 31;
      PC_CTRL     at 16#60# range 0 .. 31;
      PC_MODEL    at 16#64# range 0 .. 31;
      PC_MODEH    at 16#68# range 0 .. 31;
      PC_DOUT     at 16#6C# range 0 .. 31;
      PC_DOUTTGL  at 16#78# range 0 .. 31;
      PC_DIN      at 16#7C# range 0 .. 31;
      PC_PINLOCKN at 16#80# range 0 .. 31;
      PC_OVTDIS   at 16#88# range 0 .. 31;
      PD_CTRL     at 16#90# range 0 .. 31;
      PD_MODEL    at 16#94# range 0 .. 31;
      PD_MODEH    at 16#98# range 0 .. 31;
      PD_DOUT     at 16#9C# range 0 .. 31;
      PD_DOUTTGL  at 16#A8# range 0 .. 31;
      PD_DIN      at 16#AC# range 0 .. 31;
      PD_PINLOCKN at 16#B0# range 0 .. 31;
      PD_OVTDIS   at 16#B8# range 0 .. 31;
      PE_CTRL     at 16#C0# range 0 .. 31;
      PE_MODEL    at 16#C4# range 0 .. 31;
      PE_MODEH    at 16#C8# range 0 .. 31;
      PE_DOUT     at 16#CC# range 0 .. 31;
      PE_DOUTTGL  at 16#D8# range 0 .. 31;
      PE_DIN      at 16#DC# range 0 .. 31;
      PE_PINLOCKN at 16#E0# range 0 .. 31;
      PE_OVTDIS   at 16#E8# range 0 .. 31;
      PF_CTRL     at 16#F0# range 0 .. 31;
      PF_MODEL    at 16#F4# range 0 .. 31;
      PF_MODEH    at 16#F8# range 0 .. 31;
      PF_DOUT     at 16#FC# range 0 .. 31;
      PF_DOUTTGL  at 16#108# range 0 .. 31;
      PF_DIN      at 16#10C# range 0 .. 31;
      PF_PINLOCKN at 16#110# range 0 .. 31;
      PF_OVTDIS   at 16#118# range 0 .. 31;
      PG_CTRL     at 16#120# range 0 .. 31;
      PG_MODEL    at 16#124# range 0 .. 31;
      PG_MODEH    at 16#128# range 0 .. 31;
      PG_DOUT     at 16#12C# range 0 .. 31;
      PG_DOUTTGL  at 16#138# range 0 .. 31;
      PG_DIN      at 16#13C# range 0 .. 31;
      PG_PINLOCKN at 16#140# range 0 .. 31;
      PG_OVTDIS   at 16#148# range 0 .. 31;
      PH_CTRL     at 16#150# range 0 .. 31;
      PH_MODEL    at 16#154# range 0 .. 31;
      PH_MODEH    at 16#158# range 0 .. 31;
      PH_DOUT     at 16#15C# range 0 .. 31;
      PH_DOUTTGL  at 16#168# range 0 .. 31;
      PH_DIN      at 16#16C# range 0 .. 31;
      PH_PINLOCKN at 16#170# range 0 .. 31;
      PH_OVTDIS   at 16#178# range 0 .. 31;
      PI_CTRL     at 16#180# range 0 .. 31;
      PI_MODEL    at 16#184# range 0 .. 31;
      PI_MODEH    at 16#188# range 0 .. 31;
      PI_DOUT     at 16#18C# range 0 .. 31;
      PI_DOUTTGL  at 16#198# range 0 .. 31;
      PI_DIN      at 16#19C# range 0 .. 31;
      PI_PINLOCKN at 16#1A0# range 0 .. 31;
      PI_OVTDIS   at 16#1A8# range 0 .. 31;
      PJ_CTRL     at 16#1B0# range 0 .. 31;
      PJ_MODEL    at 16#1B4# range 0 .. 31;
      PJ_MODEH    at 16#1B8# range 0 .. 31;
      PJ_DOUT     at 16#1BC# range 0 .. 31;
      PJ_DOUTTGL  at 16#1C8# range 0 .. 31;
      PJ_DIN      at 16#1CC# range 0 .. 31;
      PJ_PINLOCKN at 16#1D0# range 0 .. 31;
      PJ_OVTDIS   at 16#1D8# range 0 .. 31;
      PK_CTRL     at 16#1E0# range 0 .. 31;
      PK_MODEL    at 16#1E4# range 0 .. 31;
      PK_MODEH    at 16#1E8# range 0 .. 31;
      PK_DOUT     at 16#1EC# range 0 .. 31;
      PK_DOUTTGL  at 16#1F8# range 0 .. 31;
      PK_DIN      at 16#1FC# range 0 .. 31;
      PK_PINLOCKN at 16#200# range 0 .. 31;
      PK_OVTDIS   at 16#208# range 0 .. 31;
      PL_CTRL     at 16#210# range 0 .. 31;
      PL_MODEL    at 16#214# range 0 .. 31;
      PL_MODEH    at 16#218# range 0 .. 31;
      PL_DOUT     at 16#21C# range 0 .. 31;
      PL_DOUTTGL  at 16#228# range 0 .. 31;
      PL_DIN      at 16#22C# range 0 .. 31;
      PL_PINLOCKN at 16#230# range 0 .. 31;
      PL_OVTDIS   at 16#238# range 0 .. 31;
      EXTIPSELL   at 16#400# range 0 .. 31;
      EXTIPSELH   at 16#404# range 0 .. 31;
      EXTIPINSELL at 16#408# range 0 .. 31;
      EXTIPINSELH at 16#40C# range 0 .. 31;
      EXTIRISE    at 16#410# range 0 .. 31;
      EXTIFALL    at 16#414# range 0 .. 31;
      EXTILEVEL   at 16#418# range 0 .. 31;
      IF_k        at 16#41C# range 0 .. 31;
      IFS         at 16#420# range 0 .. 31;
      IFC         at 16#424# range 0 .. 31;
      IEN         at 16#428# range 0 .. 31;
      EM4WUEN     at 16#42C# range 0 .. 31;
      ROUTEPEN    at 16#440# range 0 .. 31;
      ROUTELOC0   at 16#444# range 0 .. 31;
      INSENSE     at 16#450# range 0 .. 31;
      LOCK        at 16#454# range 0 .. 31;
   end record;

   --  GPIO
   GPIO_Periph : aliased GPIO_Peripheral
     with Import, Address => GPIO_Base;

end Interfaces.EFM32.GPIO;
