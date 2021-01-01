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

--  PRS
package Interfaces.EFM32.PRS is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype SWPULSE_CH0PULSE_Field is Interfaces.EFM32.Bit;
   subtype SWPULSE_CH1PULSE_Field is Interfaces.EFM32.Bit;
   subtype SWPULSE_CH2PULSE_Field is Interfaces.EFM32.Bit;
   subtype SWPULSE_CH3PULSE_Field is Interfaces.EFM32.Bit;
   subtype SWPULSE_CH4PULSE_Field is Interfaces.EFM32.Bit;
   subtype SWPULSE_CH5PULSE_Field is Interfaces.EFM32.Bit;
   subtype SWPULSE_CH6PULSE_Field is Interfaces.EFM32.Bit;
   subtype SWPULSE_CH7PULSE_Field is Interfaces.EFM32.Bit;
   subtype SWPULSE_CH8PULSE_Field is Interfaces.EFM32.Bit;
   subtype SWPULSE_CH9PULSE_Field is Interfaces.EFM32.Bit;
   subtype SWPULSE_CH10PULSE_Field is Interfaces.EFM32.Bit;
   subtype SWPULSE_CH11PULSE_Field is Interfaces.EFM32.Bit;
   subtype SWPULSE_CH12PULSE_Field is Interfaces.EFM32.Bit;
   subtype SWPULSE_CH13PULSE_Field is Interfaces.EFM32.Bit;
   subtype SWPULSE_CH14PULSE_Field is Interfaces.EFM32.Bit;
   subtype SWPULSE_CH15PULSE_Field is Interfaces.EFM32.Bit;

   --  Software Pulse Register
   type SWPULSE_Register is record
      --  Write-only. Channel 0 Pulse Generation
      CH0PULSE       : SWPULSE_CH0PULSE_Field := 16#0#;
      --  Write-only. Channel 1 Pulse Generation
      CH1PULSE       : SWPULSE_CH1PULSE_Field := 16#0#;
      --  Write-only. Channel 2 Pulse Generation
      CH2PULSE       : SWPULSE_CH2PULSE_Field := 16#0#;
      --  Write-only. Channel 3 Pulse Generation
      CH3PULSE       : SWPULSE_CH3PULSE_Field := 16#0#;
      --  Write-only. Channel 4 Pulse Generation
      CH4PULSE       : SWPULSE_CH4PULSE_Field := 16#0#;
      --  Write-only. Channel 5 Pulse Generation
      CH5PULSE       : SWPULSE_CH5PULSE_Field := 16#0#;
      --  Write-only. Channel 6 Pulse Generation
      CH6PULSE       : SWPULSE_CH6PULSE_Field := 16#0#;
      --  Write-only. Channel 7 Pulse Generation
      CH7PULSE       : SWPULSE_CH7PULSE_Field := 16#0#;
      --  Write-only. Channel 8 Pulse Generation
      CH8PULSE       : SWPULSE_CH8PULSE_Field := 16#0#;
      --  Write-only. Channel 9 Pulse Generation
      CH9PULSE       : SWPULSE_CH9PULSE_Field := 16#0#;
      --  Write-only. Channel 10 Pulse Generation
      CH10PULSE      : SWPULSE_CH10PULSE_Field := 16#0#;
      --  Write-only. Channel 11 Pulse Generation
      CH11PULSE      : SWPULSE_CH11PULSE_Field := 16#0#;
      --  Write-only. Channel 12 Pulse Generation
      CH12PULSE      : SWPULSE_CH12PULSE_Field := 16#0#;
      --  Write-only. Channel 13 Pulse Generation
      CH13PULSE      : SWPULSE_CH13PULSE_Field := 16#0#;
      --  Write-only. Channel 14 Pulse Generation
      CH14PULSE      : SWPULSE_CH14PULSE_Field := 16#0#;
      --  Write-only. Channel 15 Pulse Generation
      CH15PULSE      : SWPULSE_CH15PULSE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWPULSE_Register use record
      CH0PULSE       at 0 range 0 .. 0;
      CH1PULSE       at 0 range 1 .. 1;
      CH2PULSE       at 0 range 2 .. 2;
      CH3PULSE       at 0 range 3 .. 3;
      CH4PULSE       at 0 range 4 .. 4;
      CH5PULSE       at 0 range 5 .. 5;
      CH6PULSE       at 0 range 6 .. 6;
      CH7PULSE       at 0 range 7 .. 7;
      CH8PULSE       at 0 range 8 .. 8;
      CH9PULSE       at 0 range 9 .. 9;
      CH10PULSE      at 0 range 10 .. 10;
      CH11PULSE      at 0 range 11 .. 11;
      CH12PULSE      at 0 range 12 .. 12;
      CH13PULSE      at 0 range 13 .. 13;
      CH14PULSE      at 0 range 14 .. 14;
      CH15PULSE      at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SWLEVEL_CH0LEVEL_Field is Interfaces.EFM32.Bit;
   subtype SWLEVEL_CH1LEVEL_Field is Interfaces.EFM32.Bit;
   subtype SWLEVEL_CH2LEVEL_Field is Interfaces.EFM32.Bit;
   subtype SWLEVEL_CH3LEVEL_Field is Interfaces.EFM32.Bit;
   subtype SWLEVEL_CH4LEVEL_Field is Interfaces.EFM32.Bit;
   subtype SWLEVEL_CH5LEVEL_Field is Interfaces.EFM32.Bit;
   subtype SWLEVEL_CH6LEVEL_Field is Interfaces.EFM32.Bit;
   subtype SWLEVEL_CH7LEVEL_Field is Interfaces.EFM32.Bit;
   subtype SWLEVEL_CH8LEVEL_Field is Interfaces.EFM32.Bit;
   subtype SWLEVEL_CH9LEVEL_Field is Interfaces.EFM32.Bit;
   subtype SWLEVEL_CH10LEVEL_Field is Interfaces.EFM32.Bit;
   subtype SWLEVEL_CH11LEVEL_Field is Interfaces.EFM32.Bit;
   subtype SWLEVEL_CH12LEVEL_Field is Interfaces.EFM32.Bit;
   subtype SWLEVEL_CH13LEVEL_Field is Interfaces.EFM32.Bit;
   subtype SWLEVEL_CH14LEVEL_Field is Interfaces.EFM32.Bit;
   subtype SWLEVEL_CH15LEVEL_Field is Interfaces.EFM32.Bit;

   --  Software Level Register
   type SWLEVEL_Register is record
      --  Channel 0 Software Level
      CH0LEVEL       : SWLEVEL_CH0LEVEL_Field := 16#0#;
      --  Channel 1 Software Level
      CH1LEVEL       : SWLEVEL_CH1LEVEL_Field := 16#0#;
      --  Channel 2 Software Level
      CH2LEVEL       : SWLEVEL_CH2LEVEL_Field := 16#0#;
      --  Channel 3 Software Level
      CH3LEVEL       : SWLEVEL_CH3LEVEL_Field := 16#0#;
      --  Channel 4 Software Level
      CH4LEVEL       : SWLEVEL_CH4LEVEL_Field := 16#0#;
      --  Channel 5 Software Level
      CH5LEVEL       : SWLEVEL_CH5LEVEL_Field := 16#0#;
      --  Channel 6 Software Level
      CH6LEVEL       : SWLEVEL_CH6LEVEL_Field := 16#0#;
      --  Channel 7 Software Level
      CH7LEVEL       : SWLEVEL_CH7LEVEL_Field := 16#0#;
      --  Channel 8 Software Level
      CH8LEVEL       : SWLEVEL_CH8LEVEL_Field := 16#0#;
      --  Channel 9 Software Level
      CH9LEVEL       : SWLEVEL_CH9LEVEL_Field := 16#0#;
      --  Channel 10 Software Level
      CH10LEVEL      : SWLEVEL_CH10LEVEL_Field := 16#0#;
      --  Channel 11 Software Level
      CH11LEVEL      : SWLEVEL_CH11LEVEL_Field := 16#0#;
      --  Channel 12 Software Level
      CH12LEVEL      : SWLEVEL_CH12LEVEL_Field := 16#0#;
      --  Channel 13 Software Level
      CH13LEVEL      : SWLEVEL_CH13LEVEL_Field := 16#0#;
      --  Channel 14 Software Level
      CH14LEVEL      : SWLEVEL_CH14LEVEL_Field := 16#0#;
      --  Channel 15 Software Level
      CH15LEVEL      : SWLEVEL_CH15LEVEL_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWLEVEL_Register use record
      CH0LEVEL       at 0 range 0 .. 0;
      CH1LEVEL       at 0 range 1 .. 1;
      CH2LEVEL       at 0 range 2 .. 2;
      CH3LEVEL       at 0 range 3 .. 3;
      CH4LEVEL       at 0 range 4 .. 4;
      CH5LEVEL       at 0 range 5 .. 5;
      CH6LEVEL       at 0 range 6 .. 6;
      CH7LEVEL       at 0 range 7 .. 7;
      CH8LEVEL       at 0 range 8 .. 8;
      CH9LEVEL       at 0 range 9 .. 9;
      CH10LEVEL      at 0 range 10 .. 10;
      CH11LEVEL      at 0 range 11 .. 11;
      CH12LEVEL      at 0 range 12 .. 12;
      CH13LEVEL      at 0 range 13 .. 13;
      CH14LEVEL      at 0 range 14 .. 14;
      CH15LEVEL      at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ROUTEPEN_CH0PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH1PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH2PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH3PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH4PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH5PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH6PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH7PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH8PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH9PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH10PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH11PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH12PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH13PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH14PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH15PEN_Field is Interfaces.EFM32.Bit;

   --  I/O Routing Pin Enable Register
   type ROUTEPEN_Register is record
      --  CH0 Pin Enable
      CH0PEN         : ROUTEPEN_CH0PEN_Field := 16#0#;
      --  CH1 Pin Enable
      CH1PEN         : ROUTEPEN_CH1PEN_Field := 16#0#;
      --  CH2 Pin Enable
      CH2PEN         : ROUTEPEN_CH2PEN_Field := 16#0#;
      --  CH3 Pin Enable
      CH3PEN         : ROUTEPEN_CH3PEN_Field := 16#0#;
      --  CH4 Pin Enable
      CH4PEN         : ROUTEPEN_CH4PEN_Field := 16#0#;
      --  CH5 Pin Enable
      CH5PEN         : ROUTEPEN_CH5PEN_Field := 16#0#;
      --  CH6 Pin Enable
      CH6PEN         : ROUTEPEN_CH6PEN_Field := 16#0#;
      --  CH7 Pin Enable
      CH7PEN         : ROUTEPEN_CH7PEN_Field := 16#0#;
      --  CH8 Pin Enable
      CH8PEN         : ROUTEPEN_CH8PEN_Field := 16#0#;
      --  CH9 Pin Enable
      CH9PEN         : ROUTEPEN_CH9PEN_Field := 16#0#;
      --  CH10 Pin Enable
      CH10PEN        : ROUTEPEN_CH10PEN_Field := 16#0#;
      --  CH11 Pin Enable
      CH11PEN        : ROUTEPEN_CH11PEN_Field := 16#0#;
      --  CH12 Pin Enable
      CH12PEN        : ROUTEPEN_CH12PEN_Field := 16#0#;
      --  CH13 Pin Enable
      CH13PEN        : ROUTEPEN_CH13PEN_Field := 16#0#;
      --  CH14 Pin Enable
      CH14PEN        : ROUTEPEN_CH14PEN_Field := 16#0#;
      --  CH15 Pin Enable
      CH15PEN        : ROUTEPEN_CH15PEN_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTEPEN_Register use record
      CH0PEN         at 0 range 0 .. 0;
      CH1PEN         at 0 range 1 .. 1;
      CH2PEN         at 0 range 2 .. 2;
      CH3PEN         at 0 range 3 .. 3;
      CH4PEN         at 0 range 4 .. 4;
      CH5PEN         at 0 range 5 .. 5;
      CH6PEN         at 0 range 6 .. 6;
      CH7PEN         at 0 range 7 .. 7;
      CH8PEN         at 0 range 8 .. 8;
      CH9PEN         at 0 range 9 .. 9;
      CH10PEN        at 0 range 10 .. 10;
      CH11PEN        at 0 range 11 .. 11;
      CH12PEN        at 0 range 12 .. 12;
      CH13PEN        at 0 range 13 .. 13;
      CH14PEN        at 0 range 14 .. 14;
      CH15PEN        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC0_CH0LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3)
     with Size => 6;
   for ROUTELOC0_CH0LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3);

   --  I/O Location
   type ROUTELOC0_CH1LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3)
     with Size => 6;
   for ROUTELOC0_CH1LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3);

   --  I/O Location
   type ROUTELOC0_CH2LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3)
     with Size => 6;
   for ROUTELOC0_CH2LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3);

   --  I/O Location
   type ROUTELOC0_CH3LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3)
     with Size => 6;
   for ROUTELOC0_CH3LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3);

   --  I/O Routing Location Register
   type ROUTELOC0_Register is record
      --  I/O Location
      CH0LOC         : ROUTELOC0_CH0LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CH1LOC         : ROUTELOC0_CH1LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CH2LOC         : ROUTELOC0_CH2LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CH3LOC         : ROUTELOC0_CH3LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC0_Register use record
      CH0LOC         at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CH1LOC         at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CH2LOC         at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CH3LOC         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC1_CH4LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2)
     with Size => 6;
   for ROUTELOC1_CH4LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2);

   --  I/O Location
   type ROUTELOC1_CH5LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2)
     with Size => 6;
   for ROUTELOC1_CH5LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2);

   --  I/O Location
   type ROUTELOC1_CH6LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2)
     with Size => 6;
   for ROUTELOC1_CH6LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2);

   --  I/O Location
   type ROUTELOC1_CH7LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2)
     with Size => 6;
   for ROUTELOC1_CH7LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2);

   --  I/O Routing Location Register
   type ROUTELOC1_Register is record
      --  I/O Location
      CH4LOC         : ROUTELOC1_CH4LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CH5LOC         : ROUTELOC1_CH5LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CH6LOC         : ROUTELOC1_CH6LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CH7LOC         : ROUTELOC1_CH7LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC1_Register use record
      CH4LOC         at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CH5LOC         at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CH6LOC         at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CH7LOC         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC2_CH8LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2)
     with Size => 6;
   for ROUTELOC2_CH8LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2);

   --  I/O Location
   type ROUTELOC2_CH9LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2)
     with Size => 6;
   for ROUTELOC2_CH9LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2);

   --  I/O Location
   type ROUTELOC2_CH10LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2)
     with Size => 6;
   for ROUTELOC2_CH10LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2);

   --  I/O Location
   type ROUTELOC2_CH11LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2)
     with Size => 6;
   for ROUTELOC2_CH11LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2);

   --  I/O Routing Location Register
   type ROUTELOC2_Register is record
      --  I/O Location
      CH8LOC         : ROUTELOC2_CH8LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CH9LOC         : ROUTELOC2_CH9LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CH10LOC        : ROUTELOC2_CH10LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CH11LOC        : ROUTELOC2_CH11LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC2_Register use record
      CH8LOC         at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CH9LOC         at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CH10LOC        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CH11LOC        at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC3_CH12LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2)
     with Size => 6;
   for ROUTELOC3_CH12LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2);

   --  I/O Location
   type ROUTELOC3_CH13LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2)
     with Size => 6;
   for ROUTELOC3_CH13LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2);

   --  I/O Location
   type ROUTELOC3_CH14LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2)
     with Size => 6;
   for ROUTELOC3_CH14LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2);

   --  I/O Location
   type ROUTELOC3_CH15LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2)
     with Size => 6;
   for ROUTELOC3_CH15LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2);

   --  I/O Routing Location Register
   type ROUTELOC3_Register is record
      --  I/O Location
      CH12LOC        : ROUTELOC3_CH12LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CH13LOC        : ROUTELOC3_CH13LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CH14LOC        : ROUTELOC3_CH14LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CH15LOC        : ROUTELOC3_CH15LOC_Field := Interfaces.EFM32.PRS.LOC0;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC3_Register use record
      CH12LOC        at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CH13LOC        at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CH14LOC        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CH15LOC        at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CTRL_SEVONPRS_Field is Interfaces.EFM32.Bit;

   --  SEVONPRS PRS Channel Select
   type CTRL_SEVONPRSSEL_Field is
     (--  PRS Channel 0 selected
      PRSCH0,
      --  PRS Channel 1 selected
      PRSCH1,
      --  PRS Channel 2 selected
      PRSCH2,
      --  PRS Channel 3 selected
      PRSCH3,
      --  PRS Channel 4 selected
      PRSCH4,
      --  PRS Channel 5 selected
      PRSCH5,
      --  PRS Channel 6 selected
      PRSCH6,
      --  PRS Channel 7 selected
      PRSCH7,
      --  PRS Channel 8 selected
      PRSCH8,
      --  PRS Channel 9 selected
      PRSCH9,
      --  PRS Channel 10 selected
      PRSCH10,
      --  PRS Channel 11 selected
      PRSCH11,
      --  PRS Channel 12 selected
      PRSCH12,
      --  PRS Channel 13 selected
      PRSCH13,
      --  PRS Channel 14 selected
      PRSCH14,
      --  PRS Channel 15 selected
      PRSCH15)
     with Size => 4;
   for CTRL_SEVONPRSSEL_Field use
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

   --  Control Register
   type CTRL_Register is record
      --  Set Event on PRS
      SEVONPRS      : CTRL_SEVONPRS_Field := 16#0#;
      --  SEVONPRS PRS Channel Select
      SEVONPRSSEL   : CTRL_SEVONPRSSEL_Field := Interfaces.EFM32.PRS.PRSCH0;
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      SEVONPRS      at 0 range 0 .. 0;
      SEVONPRSSEL   at 0 range 1 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   --  DMA Request 0 PRS Channel Select
   type DMAREQ0_PRSSEL_Field is
     (--  PRS Channel 0 selected
      PRSCH0,
      --  PRS Channel 1 selected
      PRSCH1,
      --  PRS Channel 2 selected
      PRSCH2,
      --  PRS Channel 3 selected
      PRSCH3,
      --  PRS Channel 4 selected
      PRSCH4,
      --  PRS Channel 5 selected
      PRSCH5,
      --  PRS Channel 6 selected
      PRSCH6,
      --  PRS Channel 7 selected
      PRSCH7,
      --  PRS Channel 8 selected
      PRSCH8,
      --  PRS Channel 9 selected
      PRSCH9,
      --  PRS Channel 10 selected
      PRSCH10,
      --  PRS Channel 11 selected
      PRSCH11,
      --  PRS Channel 12 selected
      PRSCH12,
      --  PRS Channel 13 selected
      PRSCH13,
      --  PRS Channel 14 selected
      PRSCH14,
      --  PRS Channel 15 selected
      PRSCH15)
     with Size => 4;
   for DMAREQ0_PRSSEL_Field use
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

   --  DMA Request 0 Register
   type DMAREQ_Register is record
      --  unspecified
      Reserved_0_5   : Interfaces.EFM32.UInt6 := 16#0#;
      --  DMA Request 0 PRS Channel Select
      PRSSEL         : DMAREQ0_PRSSEL_Field := Interfaces.EFM32.PRS.PRSCH0;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DMAREQ_Register use record
      Reserved_0_5   at 0 range 0 .. 5;
      PRSSEL         at 0 range 6 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype PEEK_CH0VAL_Field is Interfaces.EFM32.Bit;
   subtype PEEK_CH1VAL_Field is Interfaces.EFM32.Bit;
   subtype PEEK_CH2VAL_Field is Interfaces.EFM32.Bit;
   subtype PEEK_CH3VAL_Field is Interfaces.EFM32.Bit;
   subtype PEEK_CH4VAL_Field is Interfaces.EFM32.Bit;
   subtype PEEK_CH5VAL_Field is Interfaces.EFM32.Bit;
   subtype PEEK_CH6VAL_Field is Interfaces.EFM32.Bit;
   subtype PEEK_CH7VAL_Field is Interfaces.EFM32.Bit;
   subtype PEEK_CH8VAL_Field is Interfaces.EFM32.Bit;
   subtype PEEK_CH9VAL_Field is Interfaces.EFM32.Bit;
   subtype PEEK_CH10VAL_Field is Interfaces.EFM32.Bit;
   subtype PEEK_CH11VAL_Field is Interfaces.EFM32.Bit;
   subtype PEEK_CH12VAL_Field is Interfaces.EFM32.Bit;
   subtype PEEK_CH13VAL_Field is Interfaces.EFM32.Bit;
   subtype PEEK_CH14VAL_Field is Interfaces.EFM32.Bit;
   subtype PEEK_CH15VAL_Field is Interfaces.EFM32.Bit;

   --  PRS Channel Values
   type PEEK_Register is record
      --  Read-only. Channel 0 Current Value
      CH0VAL         : PEEK_CH0VAL_Field;
      --  Read-only. Channel 1 Current Value
      CH1VAL         : PEEK_CH1VAL_Field;
      --  Read-only. Channel 2 Current Value
      CH2VAL         : PEEK_CH2VAL_Field;
      --  Read-only. Channel 3 Current Value
      CH3VAL         : PEEK_CH3VAL_Field;
      --  Read-only. Channel 4 Current Value
      CH4VAL         : PEEK_CH4VAL_Field;
      --  Read-only. Channel 5 Current Value
      CH5VAL         : PEEK_CH5VAL_Field;
      --  Read-only. Channel 6 Current Value
      CH6VAL         : PEEK_CH6VAL_Field;
      --  Read-only. Channel 7 Current Value
      CH7VAL         : PEEK_CH7VAL_Field;
      --  Read-only. Channel 8 Current Value
      CH8VAL         : PEEK_CH8VAL_Field;
      --  Read-only. Channel 9 Current Value
      CH9VAL         : PEEK_CH9VAL_Field;
      --  Read-only. Channel 10 Current Value
      CH10VAL        : PEEK_CH10VAL_Field;
      --  Read-only. Channel 11 Current Value
      CH11VAL        : PEEK_CH11VAL_Field;
      --  Read-only. Channel 12 Current Value
      CH12VAL        : PEEK_CH12VAL_Field;
      --  Read-only. Channel 13 Current Value
      CH13VAL        : PEEK_CH13VAL_Field;
      --  Read-only. Channel 14 Current Value
      CH14VAL        : PEEK_CH14VAL_Field;
      --  Read-only. Channel 15 Current Value
      CH15VAL        : PEEK_CH15VAL_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PEEK_Register use record
      CH0VAL         at 0 range 0 .. 0;
      CH1VAL         at 0 range 1 .. 1;
      CH2VAL         at 0 range 2 .. 2;
      CH3VAL         at 0 range 3 .. 3;
      CH4VAL         at 0 range 4 .. 4;
      CH5VAL         at 0 range 5 .. 5;
      CH6VAL         at 0 range 6 .. 6;
      CH7VAL         at 0 range 7 .. 7;
      CH8VAL         at 0 range 8 .. 8;
      CH9VAL         at 0 range 9 .. 9;
      CH10VAL        at 0 range 10 .. 10;
      CH11VAL        at 0 range 11 .. 11;
      CH12VAL        at 0 range 12 .. 12;
      CH13VAL        at 0 range 13 .. 13;
      CH14VAL        at 0 range 14 .. 14;
      CH15VAL        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CH0_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH0_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH0_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH0_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH0_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH0_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH0_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH0_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH0_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH0_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH0_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH0_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH0_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH0_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH0_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH0_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH0_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH0_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH0_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CH1_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH1_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH1_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH1_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH1_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH1_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH1_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH1_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH1_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH1_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH1_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH1_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH1_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH1_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH1_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH1_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH1_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH1_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH1_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CH2_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH2_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH2_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH2_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH2_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH2_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH2_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH2_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH2_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH2_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH2_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH2_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH2_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH2_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH2_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH2_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH2_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH2_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH2_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CH3_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH3_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH3_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH3_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH3_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH3_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH3_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH3_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH3_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH3_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH3_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH3_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH3_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH3_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH3_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH3_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH3_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH3_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH3_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CH4_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH4_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH4_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH4_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH4_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH4_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH4_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH4_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH4_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH4_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH4_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH4_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH4_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH4_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH4_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH4_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH4_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH4_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH4_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH4_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CH5_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH5_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH5_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH5_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH5_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH5_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH5_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH5_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH5_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH5_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH5_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH5_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH5_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH5_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH5_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH5_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH5_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH5_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH5_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH5_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CH6_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH6_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH6_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH6_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH6_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH6_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH6_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH6_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH6_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH6_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH6_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH6_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH6_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH6_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH6_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH6_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH6_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH6_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH6_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH6_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CH7_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH7_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH7_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH7_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH7_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH7_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH7_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH7_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH7_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH7_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH7_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH7_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH7_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH7_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH7_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH7_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH7_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH7_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH7_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH7_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CH8_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH8_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH8_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH8_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH8_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH8_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH8_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH8_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH8_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH8_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH8_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH8_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH8_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH8_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH8_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH8_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH8_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH8_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH8_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH8_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CH9_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH9_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH9_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH9_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH9_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH9_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH9_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH9_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH9_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH9_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH9_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH9_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH9_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH9_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH9_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH9_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH9_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH9_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH9_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH9_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CH10_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH10_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH10_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH10_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH10_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH10_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH10_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH10_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH10_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH10_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH10_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH10_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH10_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH10_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH10_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH10_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH10_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH10_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH10_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH10_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CH11_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH11_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH11_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH11_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH11_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH11_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH11_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH11_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH11_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH11_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH11_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH11_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH11_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH11_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH11_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH11_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH11_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH11_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH11_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH11_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CH12_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH12_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH12_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH12_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH12_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH12_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH12_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH12_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH12_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH12_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH12_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH12_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH12_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH12_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH12_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH12_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH12_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH12_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH12_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH12_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CH13_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH13_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH13_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH13_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH13_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH13_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH13_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH13_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH13_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH13_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH13_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH13_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH13_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH13_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH13_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH13_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH13_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH13_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH13_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH13_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CH14_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH14_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH14_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH14_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH14_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH14_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH14_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH14_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH14_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH14_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH14_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH14_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH14_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH14_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH14_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH14_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH14_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH14_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH14_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH14_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CH15_CTRL_SIGSEL_Field is Interfaces.EFM32.UInt3;

   --  Source Select
   type CH15_CTRL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRSL,
      --  Peripheral Reflex System
      PRS,
      --  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog to Digital Converter 0
      ADC0,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  General purpose Input/Output
      GPIOL,
      --  General purpose Input/Output
      GPIOH,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  CRYOTIMER
      CRYOTIMER,
      --  Clock Management Unit
      CMU,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Low Energy Sensor Interface
      LESENSEL,
      --  Low Energy Sensor Interface
      LESENSEH,
      --  Low Energy Sensor Interface
      LESENSED,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Universal Serial Bus Interface
      USB,
      CM4,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  PDM Interface
      PDM)
     with Size => 7;
   for CH15_CTRL_SOURCESEL_Field use
     (NONE => 0,
      PRSL => 1,
      PRS => 2,
      ACMP0 => 4,
      ACMP1 => 5,
      ADC0 => 6,
      RTC => 7,
      RTCC => 8,
      GPIOL => 9,
      GPIOH => 10,
      LETIMER0 => 11,
      LETIMER1 => 12,
      PCNT0 => 13,
      PCNT1 => 14,
      PCNT2 => 15,
      CRYOTIMER => 16,
      CMU => 17,
      VDAC0 => 23,
      LESENSEL => 24,
      LESENSEH => 25,
      LESENSED => 26,
      LESENSE => 27,
      ACMP2 => 28,
      ADC1 => 29,
      USART0 => 48,
      USART1 => 49,
      USART2 => 50,
      USART3 => 51,
      USART4 => 52,
      UART0 => 54,
      UART1 => 55,
      TIMER0 => 60,
      TIMER1 => 61,
      TIMER2 => 62,
      USB => 64,
      CM4 => 67,
      TIMER3 => 80,
      WTIMER0 => 82,
      WTIMER1 => 83,
      PDM => 121);

   --  Edge Detect Select
   type CH15_CTRL_EDSEL_Field is
     (--  Signal is left as it is
      OFF,
      --  A one HFCLK cycle pulse is generated for every positive edge of the
--  incoming signal
      POSEDGE,
      --  A one HFCLK clock cycle pulse is generated for every negative edge of the
--  incoming signal
      NEGEDGE,
      --  A one HFCLK clock cycle pulse is generated for every edge of the incoming
--  signal
      BOTHEDGES)
     with Size => 2;
   for CH15_CTRL_EDSEL_Field use
     (OFF => 0,
      POSEDGE => 1,
      NEGEDGE => 2,
      BOTHEDGES => 3);

   subtype CH15_CTRL_STRETCH_Field is Interfaces.EFM32.Bit;
   subtype CH15_CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CH15_CTRL_ORPREV_Field is Interfaces.EFM32.Bit;
   subtype CH15_CTRL_ANDNEXT_Field is Interfaces.EFM32.Bit;
   subtype CH15_CTRL_ASYNC_Field is Interfaces.EFM32.Bit;

   --  Channel Control Register
   type CH15_CTRL_Register is record
      --  Signal Select
      SIGSEL         : CH15_CTRL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source Select
      SOURCESEL      : CH15_CTRL_SOURCESEL_Field := Interfaces.EFM32.PRS.NONE;
      --  unspecified
      Reserved_15_19 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Edge Detect Select
      EDSEL          : CH15_CTRL_EDSEL_Field := Interfaces.EFM32.PRS.OFF;
      --  unspecified
      Reserved_22_24 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stretch Channel Output
      STRETCH        : CH15_CTRL_STRETCH_Field := 16#0#;
      --  Invert Channel
      INV            : CH15_CTRL_INV_Field := 16#0#;
      --  Or Previous
      ORPREV         : CH15_CTRL_ORPREV_Field := 16#0#;
      --  And Next
      ANDNEXT        : CH15_CTRL_ANDNEXT_Field := 16#0#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Reflex
      ASYNC          : CH15_CTRL_ASYNC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH15_CTRL_Register use record
      SIGSEL         at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SOURCESEL      at 0 range 8 .. 14;
      Reserved_15_19 at 0 range 15 .. 19;
      EDSEL          at 0 range 20 .. 21;
      Reserved_22_24 at 0 range 22 .. 24;
      STRETCH        at 0 range 25 .. 25;
      INV            at 0 range 26 .. 26;
      ORPREV         at 0 range 27 .. 27;
      ANDNEXT        at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      ASYNC          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PRS
   type PRS_Peripheral is record
      --  Software Pulse Register
      SWPULSE   : aliased SWPULSE_Register;
      --  Software Level Register
      SWLEVEL   : aliased SWLEVEL_Register;
      --  I/O Routing Pin Enable Register
      ROUTEPEN  : aliased ROUTEPEN_Register;
      --  I/O Routing Location Register
      ROUTELOC0 : aliased ROUTELOC0_Register;
      --  I/O Routing Location Register
      ROUTELOC1 : aliased ROUTELOC1_Register;
      --  I/O Routing Location Register
      ROUTELOC2 : aliased ROUTELOC2_Register;
      --  I/O Routing Location Register
      ROUTELOC3 : aliased ROUTELOC3_Register;
      --  Control Register
      CTRL      : aliased CTRL_Register;
      --  DMA Request 0 Register
      DMAREQ0   : aliased DMAREQ_Register;
      --  DMA Request 1 Register
      DMAREQ1   : aliased DMAREQ_Register;
      --  PRS Channel Values
      PEEK      : aliased PEEK_Register;
      --  Channel Control Register
      CH0_CTRL  : aliased CH0_CTRL_Register;
      --  Channel Control Register
      CH1_CTRL  : aliased CH1_CTRL_Register;
      --  Channel Control Register
      CH2_CTRL  : aliased CH2_CTRL_Register;
      --  Channel Control Register
      CH3_CTRL  : aliased CH3_CTRL_Register;
      --  Channel Control Register
      CH4_CTRL  : aliased CH4_CTRL_Register;
      --  Channel Control Register
      CH5_CTRL  : aliased CH5_CTRL_Register;
      --  Channel Control Register
      CH6_CTRL  : aliased CH6_CTRL_Register;
      --  Channel Control Register
      CH7_CTRL  : aliased CH7_CTRL_Register;
      --  Channel Control Register
      CH8_CTRL  : aliased CH8_CTRL_Register;
      --  Channel Control Register
      CH9_CTRL  : aliased CH9_CTRL_Register;
      --  Channel Control Register
      CH10_CTRL : aliased CH10_CTRL_Register;
      --  Channel Control Register
      CH11_CTRL : aliased CH11_CTRL_Register;
      --  Channel Control Register
      CH12_CTRL : aliased CH12_CTRL_Register;
      --  Channel Control Register
      CH13_CTRL : aliased CH13_CTRL_Register;
      --  Channel Control Register
      CH14_CTRL : aliased CH14_CTRL_Register;
      --  Channel Control Register
      CH15_CTRL : aliased CH15_CTRL_Register;
   end record
     with Volatile;

   for PRS_Peripheral use record
      SWPULSE   at 16#0# range 0 .. 31;
      SWLEVEL   at 16#4# range 0 .. 31;
      ROUTEPEN  at 16#8# range 0 .. 31;
      ROUTELOC0 at 16#10# range 0 .. 31;
      ROUTELOC1 at 16#14# range 0 .. 31;
      ROUTELOC2 at 16#18# range 0 .. 31;
      ROUTELOC3 at 16#1C# range 0 .. 31;
      CTRL      at 16#30# range 0 .. 31;
      DMAREQ0   at 16#34# range 0 .. 31;
      DMAREQ1   at 16#38# range 0 .. 31;
      PEEK      at 16#40# range 0 .. 31;
      CH0_CTRL  at 16#50# range 0 .. 31;
      CH1_CTRL  at 16#54# range 0 .. 31;
      CH2_CTRL  at 16#58# range 0 .. 31;
      CH3_CTRL  at 16#5C# range 0 .. 31;
      CH4_CTRL  at 16#60# range 0 .. 31;
      CH5_CTRL  at 16#64# range 0 .. 31;
      CH6_CTRL  at 16#68# range 0 .. 31;
      CH7_CTRL  at 16#6C# range 0 .. 31;
      CH8_CTRL  at 16#70# range 0 .. 31;
      CH9_CTRL  at 16#74# range 0 .. 31;
      CH10_CTRL at 16#78# range 0 .. 31;
      CH11_CTRL at 16#7C# range 0 .. 31;
      CH12_CTRL at 16#80# range 0 .. 31;
      CH13_CTRL at 16#84# range 0 .. 31;
      CH14_CTRL at 16#88# range 0 .. 31;
      CH15_CTRL at 16#8C# range 0 .. 31;
   end record;

   --  PRS
   PRS_Periph : aliased PRS_Peripheral
     with Import, Address => PRS_Base;

end Interfaces.EFM32.PRS;
