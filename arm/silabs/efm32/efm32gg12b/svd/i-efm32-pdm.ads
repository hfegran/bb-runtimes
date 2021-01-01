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

--  PDM
package Interfaces.EFM32.PDM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype EN_EN_Field is Interfaces.EFM32.Bit;

   --  PDM Module enable Register
   type EN_Register is record
      --  Module enable
      EN            : EN_EN_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EN_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CTRL_GAIN_Field is Interfaces.EFM32.UInt5;
   subtype CTRL_DSR_Field is Interfaces.EFM32.UInt12;
   subtype CTRL_OUTCLKEN_Field is Interfaces.EFM32.Bit;

   --  PDM Core Control Register
   type CTRL_Register is record
      --  Selects Gain factor of DCF
      GAIN           : CTRL_GAIN_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Down sampling rate of Decimation filter
      DSR            : CTRL_DSR_Field := 16#0#;
      --  unspecified
      Reserved_20_30 : Interfaces.EFM32.UInt11 := 16#0#;
      --  PDM Clock enable
      OUTCLKEN       : CTRL_OUTCLKEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      GAIN           at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DSR            at 0 range 8 .. 19;
      Reserved_20_30 at 0 range 20 .. 30;
      OUTCLKEN       at 0 range 31 .. 31;
   end record;

   subtype CMD_START_Field is Interfaces.EFM32.Bit;
   subtype CMD_STOP_Field is Interfaces.EFM32.Bit;
   subtype CMD_CLEAR_Field is Interfaces.EFM32.Bit;
   subtype CMD_FIFOFL_Field is Interfaces.EFM32.Bit;

   --  PDM Core Command Register
   type CMD_Register is record
      --  Write-only. Start DCF
      START          : CMD_START_Field := 16#0#;
      --  unspecified
      Reserved_1_3   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Write-only. Stop DCF
      STOP           : CMD_STOP_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Write-only. Clear DCF
      CLEAR          : CMD_CLEAR_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : Interfaces.EFM32.UInt7 := 16#0#;
      --  Write-only. FIFO Flush
      FIFOFL         : CMD_FIFOFL_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      START          at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      STOP           at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CLEAR          at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      FIFOFL         at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype STATUS_ACT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_FULL_Field is Interfaces.EFM32.Bit;
   subtype STATUS_EMPTY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_FIFOCNT_Field is Interfaces.EFM32.UInt3;

   --  PDM Status register
   type STATUS_Register is record
      --  Read-only. PDM is active
      ACT            : STATUS_ACT_Field;
      --  unspecified
      Reserved_1_3   : Interfaces.EFM32.UInt3;
      --  Read-only. FIFO FULL Status
      FULL           : STATUS_FULL_Field;
      --  Read-only. FIFO EMPTY Status
      EMPTY          : STATUS_EMPTY_Field;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2;
      --  Read-only. FIFO CNT
      FIFOCNT        : STATUS_FIFOCNT_Field;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      ACT            at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      FULL           at 0 range 4 .. 4;
      EMPTY          at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      FIFOCNT        at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Filter order
   type CFG0_FORDER_Field is
     (--  Second order filter.
      SECOND,
      --  Third order filter.
      THIRD,
      --  Fourth order filter.
      FOURTH,
      --  Fifth order filter.
      FIFTH)
     with Size => 2;
   for CFG0_FORDER_Field use
     (SECOND => 0,
      THIRD => 1,
      FOURTH => 2,
      FIFTH => 3);

   --  Number of Channels
   type CFG0_NUMCH_Field is
     (--  Only one Channel.
      ONE,
      --  Two Channels.
      TWO,
      --  Three Channels.
      THREE,
      --  Four Channels.
      FOUR)
     with Size => 2;
   for CFG0_NUMCH_Field use
     (ONE => 0,
      TWO => 1,
      THREE => 2,
      FOUR => 3);

   --  Filter output format
   type CFG0_DATAFORMAT_Field is
     (--  Right aligned 16-bit, left bits are sign extended.
      RIGHT16,
      --  Pack two 16-bit samples into one 32-bit word.
      DOUBLE16,
      --  Right aligned 24bit, left bits are sign extended.
      RIGHT24,
      --  32 bit data.
      FULL32BIT,
      --  Left aligned 16-bit, right bits are zeros.
      LEFT16,
      --  Left aligned 24-bit, right bits are zeros.
      LEFT24,
      --  RAW 32 bit data from Integrator.
      RAW32BIT)
     with Size => 3;
   for CFG0_DATAFORMAT_Field use
     (RIGHT16 => 0,
      DOUBLE16 => 1,
      RIGHT24 => 2,
      FULL32BIT => 3,
      LEFT16 => 4,
      LEFT24 => 5,
      RAW32BIT => 6);

   --  Data Valid level in FIFO
   type CFG0_FIFODVL_Field is
     (--  Atleast one word.
      ONE,
      --  Two words.
      TWO,
      --  Three words.
      THREE,
      --  Four words.
      FOUR)
     with Size => 2;
   for CFG0_FIFODVL_Field use
     (ONE => 0,
      TWO => 1,
      THREE => 2,
      FOUR => 3);

   --  CFG0_STEREOMODECH array element
   subtype CFG0_STEREOMODECH_Element is Interfaces.EFM32.Bit;

   --  CFG0_STEREOMODECH array
   type CFG0_STEREOMODECH_Field_Array is array (1 .. 2)
     of CFG0_STEREOMODECH_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for CFG0_STEREOMODECH
   type CFG0_STEREOMODECH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  STEREOMODECH as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  STEREOMODECH as an array
            Arr : CFG0_STEREOMODECH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for CFG0_STEREOMODECH_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype CFG0_CH0CLKPOL_Field is Interfaces.EFM32.Bit;
   subtype CFG0_CH1CLKPOL_Field is Interfaces.EFM32.Bit;
   subtype CFG0_CH2CLKPOL_Field is Interfaces.EFM32.Bit;
   subtype CFG0_CH3CLKPOL_Field is Interfaces.EFM32.Bit;

   --  PDM Core Configuration Register0
   type CFG0_Register is record
      --  Filter order
      FORDER         : CFG0_FORDER_Field := Interfaces.EFM32.PDM.SECOND;
      --  unspecified
      Reserved_2_3   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Number of Channels
      NUMCH          : CFG0_NUMCH_Field := Interfaces.EFM32.PDM.ONE;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Filter output format
      DATAFORMAT     : CFG0_DATAFORMAT_Field := Interfaces.EFM32.PDM.RIGHT16;
      --  unspecified
      Reserved_11_11 : Interfaces.EFM32.Bit := 16#0#;
      --  Data Valid level in FIFO
      FIFODVL        : CFG0_FIFODVL_Field := Interfaces.EFM32.PDM.ONE;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Stereo mode CH01
      STEREOMODECH   : CFG0_STEREOMODECH_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_18_23 : Interfaces.EFM32.UInt6 := 16#0#;
      --  CH0 CLK Polarity
      CH0CLKPOL      : CFG0_CH0CLKPOL_Field := 16#0#;
      --  CH1 CLK Polarity
      CH1CLKPOL      : CFG0_CH1CLKPOL_Field := 16#0#;
      --  CH2 CLK Polarity
      CH2CLKPOL      : CFG0_CH2CLKPOL_Field := 16#0#;
      --  CH3 CLK Polarity
      CH3CLKPOL      : CFG0_CH3CLKPOL_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.EFM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG0_Register use record
      FORDER         at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      NUMCH          at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DATAFORMAT     at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      FIFODVL        at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      STEREOMODECH   at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      CH0CLKPOL      at 0 range 24 .. 24;
      CH1CLKPOL      at 0 range 25 .. 25;
      CH2CLKPOL      at 0 range 26 .. 26;
      CH3CLKPOL      at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype CFG1_PRESC_Field is Interfaces.EFM32.UInt10;

   --  PDM Core Configuration Register1
   type CFG1_Register is record
      --  Prescalar Setting for PDM sample
      PRESC          : CFG1_PRESC_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG1_Register use record
      PRESC          at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype IF_DV_Field is Interfaces.EFM32.Bit;
   subtype IF_DVL_Field is Interfaces.EFM32.Bit;
   subtype IF_OF_Field is Interfaces.EFM32.Bit;
   subtype IF_UF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. Data Valid Interrupt Flag
      DV            : IF_DV_Field;
      --  Read-only. Data Valid Level Interrupt Flag
      DVL           : IF_DVL_Field;
      --  Read-only. FIFO Overflow Interrupt Flag
      OF_k          : IF_OF_Field;
      --  Read-only. FIFO Undeflow Interrupt Flag
      UF            : IF_UF_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      DV            at 0 range 0 .. 0;
      DVL           at 0 range 1 .. 1;
      OF_k          at 0 range 2 .. 2;
      UF            at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype IFS_DV_Field is Interfaces.EFM32.Bit;
   subtype IFS_DVL_Field is Interfaces.EFM32.Bit;
   subtype IFS_OF_Field is Interfaces.EFM32.Bit;
   subtype IFS_UF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set DV Interrupt Flag
      DV            : IFS_DV_Field := 16#0#;
      --  Write-only. Set DVL Interrupt Flag
      DVL           : IFS_DVL_Field := 16#0#;
      --  Write-only. Set OF Interrupt Flag
      OF_k          : IFS_OF_Field := 16#0#;
      --  Write-only. Set UF Interrupt Flag
      UF            : IFS_UF_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      DV            at 0 range 0 .. 0;
      DVL           at 0 range 1 .. 1;
      OF_k          at 0 range 2 .. 2;
      UF            at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype IFC_DV_Field is Interfaces.EFM32.Bit;
   subtype IFC_DVL_Field is Interfaces.EFM32.Bit;
   subtype IFC_OF_Field is Interfaces.EFM32.Bit;
   subtype IFC_UF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear DV Interrupt Flag
      DV            : IFC_DV_Field := 16#0#;
      --  Write-only. Clear DVL Interrupt Flag
      DVL           : IFC_DVL_Field := 16#0#;
      --  Write-only. Clear OF Interrupt Flag
      OF_k          : IFC_OF_Field := 16#0#;
      --  Write-only. Clear UF Interrupt Flag
      UF            : IFC_UF_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      DV            at 0 range 0 .. 0;
      DVL           at 0 range 1 .. 1;
      OF_k          at 0 range 2 .. 2;
      UF            at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype IEN_DV_Field is Interfaces.EFM32.Bit;
   subtype IEN_DVL_Field is Interfaces.EFM32.Bit;
   subtype IEN_OF_Field is Interfaces.EFM32.Bit;
   subtype IEN_UF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  DV Interrupt Enable
      DV            : IEN_DV_Field := 16#0#;
      --  DVL Interrupt Enable
      DVL           : IEN_DVL_Field := 16#0#;
      --  OF Interrupt Enable
      OF_k          : IEN_OF_Field := 16#0#;
      --  UF Interrupt Enable
      UF            : IEN_UF_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      DV            at 0 range 0 .. 0;
      DVL           at 0 range 1 .. 1;
      OF_k          at 0 range 2 .. 2;
      UF            at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ROUTEPEN_DAT0PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_DAT1PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_DAT2PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_DAT3PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CLKPEN_Field is Interfaces.EFM32.Bit;

   --  I/O LOCATION Enable Register
   type ROUTEPEN_Register is record
      --  DAT0 I/O Enable
      DAT0PEN       : ROUTEPEN_DAT0PEN_Field := 16#0#;
      --  DAT1 I/O Enable
      DAT1PEN       : ROUTEPEN_DAT1PEN_Field := 16#0#;
      --  DAT2 I/O Enable
      DAT2PEN       : ROUTEPEN_DAT2PEN_Field := 16#0#;
      --  DAT3 I/O Enable
      DAT3PEN       : ROUTEPEN_DAT3PEN_Field := 16#0#;
      --  unspecified
      Reserved_4_7  : Interfaces.EFM32.UInt4 := 16#0#;
      --  CLK I/O Enable
      CLKPEN        : ROUTEPEN_CLKPEN_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.EFM32.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTEPEN_Register use record
      DAT0PEN       at 0 range 0 .. 0;
      DAT1PEN       at 0 range 1 .. 1;
      DAT2PEN       at 0 range 2 .. 2;
      DAT3PEN       at 0 range 3 .. 3;
      Reserved_4_7  at 0 range 4 .. 7;
      CLKPEN        at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   --  I/O Location for DAT0 pins
   type ROUTELOC0_DAT0LOC_Field is
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
   for ROUTELOC0_DAT0LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4);

   --  I/O Location for DAT1 pins
   type ROUTELOC0_DAT1LOC_Field is
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
   for ROUTELOC0_DAT1LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4);

   --  I/O Location for DAT2 pins
   type ROUTELOC0_DAT2LOC_Field is
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
   for ROUTELOC0_DAT2LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4);

   --  I/O Location for DAT3 pins
   type ROUTELOC0_DAT3LOC_Field is
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
   for ROUTELOC0_DAT3LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4);

   --  I/O LOCATION Register
   type ROUTELOC0_Register is record
      --  I/O Location for DAT0 pins
      DAT0LOC        : ROUTELOC0_DAT0LOC_Field := Interfaces.EFM32.PDM.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location for DAT1 pins
      DAT1LOC        : ROUTELOC0_DAT1LOC_Field := Interfaces.EFM32.PDM.LOC0;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location for DAT2 pins
      DAT2LOC        : ROUTELOC0_DAT2LOC_Field := Interfaces.EFM32.PDM.LOC0;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location for DAT3 pins
      DAT3LOC        : ROUTELOC0_DAT3LOC_Field := Interfaces.EFM32.PDM.LOC0;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC0_Register use record
      DAT0LOC        at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      DAT1LOC        at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DAT2LOC        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DAT3LOC        at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  I/O Location for CLK pin
   type ROUTELOC1_CLKLOC_Field is
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
   for ROUTELOC1_CLKLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4);

   --  I/O LOCATION Register
   type ROUTELOC1_Register is record
      --  I/O Location for CLK pin
      CLKLOC        : ROUTELOC1_CLKLOC_Field := Interfaces.EFM32.PDM.LOC0;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC1_Register use record
      CLKLOC        at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype SYNCBUSY_STARTBUSY_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_STOPBUSY_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_CLEARBUSY_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_FIFOFLBUSY_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_PRESCBUSY_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_CTRLREGBUSY_Field is Interfaces.EFM32.Bit;

   --  Synchronization Busy Register
   type SYNCBUSY_Register is record
      --  Read-only. START sync busy
      STARTBUSY      : SYNCBUSY_STARTBUSY_Field;
      --  Read-only. STOP sync busy
      STOPBUSY       : SYNCBUSY_STOPBUSY_Field;
      --  Read-only. CLEAR sync busy
      CLEARBUSY      : SYNCBUSY_CLEARBUSY_Field;
      --  Read-only. FIFO Flush Sync busy
      FIFOFLBUSY     : SYNCBUSY_FIFOFLBUSY_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.EFM32.UInt4;
      --  Read-only. PRESC Sync busy
      PRESCBUSY      : SYNCBUSY_PRESCBUSY_Field;
      --  unspecified
      Reserved_9_9   : Interfaces.EFM32.Bit;
      --  Read-only. CTRLREGBUSY busy
      CTRLREGBUSY    : SYNCBUSY_CTRLREGBUSY_Field;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNCBUSY_Register use record
      STARTBUSY      at 0 range 0 .. 0;
      STOPBUSY       at 0 range 1 .. 1;
      CLEARBUSY      at 0 range 2 .. 2;
      FIFOFLBUSY     at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PRESCBUSY      at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      CTRLREGBUSY    at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  PDM
   type PDM_Peripheral is record
      --  IP Version ID
      IPVERSION : aliased Interfaces.EFM32.UInt32;
      --  PDM Module enable Register
      EN        : aliased EN_Register;
      --  PDM Core Control Register
      CTRL      : aliased CTRL_Register;
      --  PDM Core Command Register
      CMD       : aliased CMD_Register;
      --  PDM Status register
      STATUS    : aliased STATUS_Register;
      --  PDM Core Configuration Register0
      CFG0      : aliased CFG0_Register;
      --  PDM Core Configuration Register1
      CFG1      : aliased CFG1_Register;
      --  PDM Received Data Register
      RXDATA    : aliased Interfaces.EFM32.UInt32;
      --  Interrupt Flag Register
      IF_k      : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS       : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC       : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN       : aliased IEN_Register;
      --  I/O LOCATION Enable Register
      ROUTEPEN  : aliased ROUTEPEN_Register;
      --  I/O LOCATION Register
      ROUTELOC0 : aliased ROUTELOC0_Register;
      --  I/O LOCATION Register
      ROUTELOC1 : aliased ROUTELOC1_Register;
      --  Synchronization Busy Register
      SYNCBUSY  : aliased SYNCBUSY_Register;
   end record
     with Volatile;

   for PDM_Peripheral use record
      IPVERSION at 16#0# range 0 .. 31;
      EN        at 16#4# range 0 .. 31;
      CTRL      at 16#8# range 0 .. 31;
      CMD       at 16#C# range 0 .. 31;
      STATUS    at 16#10# range 0 .. 31;
      CFG0      at 16#14# range 0 .. 31;
      CFG1      at 16#18# range 0 .. 31;
      RXDATA    at 16#20# range 0 .. 31;
      IF_k      at 16#40# range 0 .. 31;
      IFS       at 16#44# range 0 .. 31;
      IFC       at 16#48# range 0 .. 31;
      IEN       at 16#4C# range 0 .. 31;
      ROUTEPEN  at 16#50# range 0 .. 31;
      ROUTELOC0 at 16#54# range 0 .. 31;
      ROUTELOC1 at 16#58# range 0 .. 31;
      SYNCBUSY  at 16#60# range 0 .. 31;
   end record;

   --  PDM
   PDM_Periph : aliased PDM_Peripheral
     with Import, Address => PDM_Base;

end Interfaces.EFM32.PDM;
