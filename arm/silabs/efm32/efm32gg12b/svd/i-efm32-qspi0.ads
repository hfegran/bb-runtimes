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

--  QSPI0
package Interfaces.EFM32.QSPI0 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CONFIG_ENBSPI_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_SELCLKPOL_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_SELCLKPHASE_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_PHYMODEENABLE_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_ENBDEVHOLD_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_ENBDEVRST_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_DEVRSTCONFIG_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_ENBDIRACCCTLR_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_ENBLEGACYIPMODE_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_PERIPHSELDEC_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_PERIPHCSLINES_Field is Interfaces.EFM32.UInt2;
   subtype CONFIG_WRPROTFLASH_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_ENBAHBADDRREMAP_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_ENTERXIPMODE_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_ENTERXIPMODEIMM_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_MSTRBAUDDIV_Field is Interfaces.EFM32.UInt4;
   subtype CONFIG_ENABLEAHBDECODER_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_ENABLEDTRPROTOCOL_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_PIPELINEPHY_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_CRCENABLE_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_DUALBYTEOPCODEEN_Field is Interfaces.EFM32.Bit;
   subtype CONFIG_IDLE_Field is Interfaces.EFM32.Bit;

   --  Octal-SPI Configuration Register
   type CONFIG_Register is record
      --  QSPI Enable
      ENBSPI            : CONFIG_ENBSPI_Field := 16#1#;
      --  Clock Polarity, CPOL
      SELCLKPOL         : CONFIG_SELCLKPOL_Field := 16#0#;
      --  Clock Phase, CPHA
      SELCLKPHASE       : CONFIG_SELCLKPHASE_Field := 16#0#;
      --  PHY Mode Enable
      PHYMODEENABLE     : CONFIG_PHYMODEENABLE_Field := 16#0#;
      --  Enable Device Hold
      ENBDEVHOLD        : CONFIG_ENBDEVHOLD_Field := 16#0#;
      --  Enable Device Reset
      ENBDEVRST         : CONFIG_ENBDEVRST_Field := 16#0#;
      --  Device Reset Configuration
      DEVRSTCONFIG      : CONFIG_DEVRSTCONFIG_Field := 16#0#;
      --  Enable Direct Access Controller
      ENBDIRACCCTLR     : CONFIG_ENBDIRACCCTLR_Field := 16#1#;
      --  Legacy IP Mode Enable
      ENBLEGACYIPMODE   : CONFIG_ENBLEGACYIPMODE_Field := 16#0#;
      --  Peripheral Select Decode
      PERIPHSELDEC      : CONFIG_PERIPHSELDEC_Field := 16#0#;
      --  Peripheral Chip Select Lines
      PERIPHCSLINES     : CONFIG_PERIPHCSLINES_Field := 16#0#;
      --  unspecified
      Reserved_12_13    : Interfaces.EFM32.UInt2 := 16#0#;
      --  Write Protect Flash Pin
      WRPROTFLASH       : CONFIG_WRPROTFLASH_Field := 16#0#;
      --  unspecified
      Reserved_15_15    : Interfaces.EFM32.Bit := 16#0#;
      --  Enable Address Remapping
      ENBAHBADDRREMAP   : CONFIG_ENBAHBADDRREMAP_Field := 16#0#;
      --  Enter XIP Mode on Next READ
      ENTERXIPMODE      : CONFIG_ENTERXIPMODE_Field := 16#0#;
      --  Enter XIP Mode Immediately
      ENTERXIPMODEIMM   : CONFIG_ENTERXIPMODEIMM_Field := 16#0#;
      --  Master Mode Baud Rate Divisor
      MSTRBAUDDIV       : CONFIG_MSTRBAUDDIV_Field := 16#F#;
      --  Enable Address Decoder
      ENABLEAHBDECODER  : CONFIG_ENABLEAHBDECODER_Field := 16#0#;
      --  Enable DTR Protocol
      ENABLEDTRPROTOCOL : CONFIG_ENABLEDTRPROTOCOL_Field := 16#0#;
      --  Pipeline PHY Mode Enable
      PIPELINEPHY       : CONFIG_PIPELINEPHY_Field := 16#0#;
      --  unspecified
      Reserved_26_28    : Interfaces.EFM32.UInt3 := 16#0#;
      --  CRC Enable Bit
      CRCENABLE         : CONFIG_CRCENABLE_Field := 16#0#;
      --  Dual-byte Opcode Mode Enable Bit
      DUALBYTEOPCODEEN  : CONFIG_DUALBYTEOPCODEEN_Field := 16#0#;
      --  Read-only. Serial Interface and Low Level SPI Pipeline is IDLE
      IDLE              : CONFIG_IDLE_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      ENBSPI            at 0 range 0 .. 0;
      SELCLKPOL         at 0 range 1 .. 1;
      SELCLKPHASE       at 0 range 2 .. 2;
      PHYMODEENABLE     at 0 range 3 .. 3;
      ENBDEVHOLD        at 0 range 4 .. 4;
      ENBDEVRST         at 0 range 5 .. 5;
      DEVRSTCONFIG      at 0 range 6 .. 6;
      ENBDIRACCCTLR     at 0 range 7 .. 7;
      ENBLEGACYIPMODE   at 0 range 8 .. 8;
      PERIPHSELDEC      at 0 range 9 .. 9;
      PERIPHCSLINES     at 0 range 10 .. 11;
      Reserved_12_13    at 0 range 12 .. 13;
      WRPROTFLASH       at 0 range 14 .. 14;
      Reserved_15_15    at 0 range 15 .. 15;
      ENBAHBADDRREMAP   at 0 range 16 .. 16;
      ENTERXIPMODE      at 0 range 17 .. 17;
      ENTERXIPMODEIMM   at 0 range 18 .. 18;
      MSTRBAUDDIV       at 0 range 19 .. 22;
      ENABLEAHBDECODER  at 0 range 23 .. 23;
      ENABLEDTRPROTOCOL at 0 range 24 .. 24;
      PIPELINEPHY       at 0 range 25 .. 25;
      Reserved_26_28    at 0 range 26 .. 28;
      CRCENABLE         at 0 range 29 .. 29;
      DUALBYTEOPCODEEN  at 0 range 30 .. 30;
      IDLE              at 0 range 31 .. 31;
   end record;

   subtype DEVINSTRRDCONFIG_RDOPCODENONXIP_Field is Interfaces.EFM32.Byte;
   subtype DEVINSTRRDCONFIG_INSTRTYPE_Field is Interfaces.EFM32.UInt2;
   subtype DEVINSTRRDCONFIG_DDREN_Field is Interfaces.EFM32.Bit;
   subtype DEVINSTRRDCONFIG_ADDRXFERTYPESTDMODE_Field is
     Interfaces.EFM32.UInt2;
   subtype DEVINSTRRDCONFIG_DATAXFERTYPEEXTMODE_Field is
     Interfaces.EFM32.UInt2;
   subtype DEVINSTRRDCONFIG_MODEBITENABLE_Field is Interfaces.EFM32.Bit;
   subtype DEVINSTRRDCONFIG_DUMMYRDCLKCYCLES_Field is Interfaces.EFM32.UInt5;

   --  Device Read Instruction Configuration Register
   type DEVINSTRRDCONFIG_Register is record
      --  Read Opcode in Non-XIP Mode
      RDOPCODENONXIP      : DEVINSTRRDCONFIG_RDOPCODENONXIP_Field := 16#3#;
      --  Instruction Type
      INSTRTYPE           : DEVINSTRRDCONFIG_INSTRTYPE_Field := 16#0#;
      --  DDR Enable
      DDREN               : DEVINSTRRDCONFIG_DDREN_Field := 16#0#;
      --  unspecified
      Reserved_11_11      : Interfaces.EFM32.Bit := 16#0#;
      --  Address Transfer Type for Standard SPI Modes
      ADDRXFERTYPESTDMODE : DEVINSTRRDCONFIG_ADDRXFERTYPESTDMODE_Field :=
                             16#0#;
      --  unspecified
      Reserved_14_15      : Interfaces.EFM32.UInt2 := 16#0#;
      --  Data Transfer Type for Standard SPI Modes
      DATAXFERTYPEEXTMODE : DEVINSTRRDCONFIG_DATAXFERTYPEEXTMODE_Field :=
                             16#0#;
      --  unspecified
      Reserved_18_19      : Interfaces.EFM32.UInt2 := 16#0#;
      --  Mode Bit Enable
      MODEBITENABLE       : DEVINSTRRDCONFIG_MODEBITENABLE_Field := 16#0#;
      --  unspecified
      Reserved_21_23      : Interfaces.EFM32.UInt3 := 16#0#;
      --  Dummy Read Clock Cycles
      DUMMYRDCLKCYCLES    : DEVINSTRRDCONFIG_DUMMYRDCLKCYCLES_Field := 16#0#;
      --  unspecified
      Reserved_29_31      : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEVINSTRRDCONFIG_Register use record
      RDOPCODENONXIP      at 0 range 0 .. 7;
      INSTRTYPE           at 0 range 8 .. 9;
      DDREN               at 0 range 10 .. 10;
      Reserved_11_11      at 0 range 11 .. 11;
      ADDRXFERTYPESTDMODE at 0 range 12 .. 13;
      Reserved_14_15      at 0 range 14 .. 15;
      DATAXFERTYPEEXTMODE at 0 range 16 .. 17;
      Reserved_18_19      at 0 range 18 .. 19;
      MODEBITENABLE       at 0 range 20 .. 20;
      Reserved_21_23      at 0 range 21 .. 23;
      DUMMYRDCLKCYCLES    at 0 range 24 .. 28;
      Reserved_29_31      at 0 range 29 .. 31;
   end record;

   subtype DEVINSTRWRCONFIG_WROPCODE_Field is Interfaces.EFM32.Byte;
   subtype DEVINSTRWRCONFIG_WELDIS_Field is Interfaces.EFM32.Bit;
   subtype DEVINSTRWRCONFIG_ADDRXFERTYPESTDMODE_Field is
     Interfaces.EFM32.UInt2;
   subtype DEVINSTRWRCONFIG_DATAXFERTYPEEXTMODE_Field is
     Interfaces.EFM32.UInt2;
   subtype DEVINSTRWRCONFIG_DUMMYWRCLKCYCLES_Field is Interfaces.EFM32.UInt5;

   --  Device Write Instruction Configuration Register
   type DEVINSTRWRCONFIG_Register is record
      --  Write Opcode
      WROPCODE            : DEVINSTRWRCONFIG_WROPCODE_Field := 16#2#;
      --  WEL Disable
      WELDIS              : DEVINSTRWRCONFIG_WELDIS_Field := 16#0#;
      --  unspecified
      Reserved_9_11       : Interfaces.EFM32.UInt3 := 16#0#;
      --  Address Transfer Type for Standard SPI Modes
      ADDRXFERTYPESTDMODE : DEVINSTRWRCONFIG_ADDRXFERTYPESTDMODE_Field :=
                             16#0#;
      --  unspecified
      Reserved_14_15      : Interfaces.EFM32.UInt2 := 16#0#;
      --  Data Transfer Type for Standard SPI Modes
      DATAXFERTYPEEXTMODE : DEVINSTRWRCONFIG_DATAXFERTYPEEXTMODE_Field :=
                             16#0#;
      --  unspecified
      Reserved_18_23      : Interfaces.EFM32.UInt6 := 16#0#;
      --  Dummy Write Clock Cycles
      DUMMYWRCLKCYCLES    : DEVINSTRWRCONFIG_DUMMYWRCLKCYCLES_Field := 16#0#;
      --  unspecified
      Reserved_29_31      : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEVINSTRWRCONFIG_Register use record
      WROPCODE            at 0 range 0 .. 7;
      WELDIS              at 0 range 8 .. 8;
      Reserved_9_11       at 0 range 9 .. 11;
      ADDRXFERTYPESTDMODE at 0 range 12 .. 13;
      Reserved_14_15      at 0 range 14 .. 15;
      DATAXFERTYPEEXTMODE at 0 range 16 .. 17;
      Reserved_18_23      at 0 range 18 .. 23;
      DUMMYWRCLKCYCLES    at 0 range 24 .. 28;
      Reserved_29_31      at 0 range 29 .. 31;
   end record;

   subtype DEVDELAY_DINIT_Field is Interfaces.EFM32.Byte;
   subtype DEVDELAY_DAFTER_Field is Interfaces.EFM32.Byte;
   subtype DEVDELAY_DBTWN_Field is Interfaces.EFM32.Byte;
   subtype DEVDELAY_DNSS_Field is Interfaces.EFM32.Byte;

   --  Device Delay Register
   type DEVDELAY_Register is record
      --  Clock Delay for CS
      DINIT  : DEVDELAY_DINIT_Field := 16#0#;
      --  Clock Delay for Last Transaction Bit
      DAFTER : DEVDELAY_DAFTER_Field := 16#0#;
      --  Clock Delay Between Two Chip Selects
      DBTWN  : DEVDELAY_DBTWN_Field := 16#0#;
      --  Clock Delay for Chip Select Deassert
      DNSS   : DEVDELAY_DNSS_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEVDELAY_Register use record
      DINIT  at 0 range 0 .. 7;
      DAFTER at 0 range 8 .. 15;
      DBTWN  at 0 range 16 .. 23;
      DNSS   at 0 range 24 .. 31;
   end record;

   subtype RDDATACAPTURE_BYPASS_Field is Interfaces.EFM32.Bit;
   subtype RDDATACAPTURE_DELAY_Field is Interfaces.EFM32.UInt4;
   subtype RDDATACAPTURE_DQSENABLE_Field is Interfaces.EFM32.Bit;
   subtype RDDATACAPTURE_DDRREADDELAY_Field is Interfaces.EFM32.UInt4;

   --  Read Data Capture Register
   type RDDATACAPTURE_Register is record
      --  Bypass the Adapted Loopback Clock Circuit
      BYPASS         : RDDATACAPTURE_BYPASS_Field := 16#1#;
      --  Read Delay
      DELAY_k        : RDDATACAPTURE_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  DQS Enable Bit
      DQSENABLE      : RDDATACAPTURE_DQSENABLE_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : Interfaces.EFM32.UInt7 := 16#0#;
      --  DDR Read Delay
      DDRREADDELAY   : RDDATACAPTURE_DDRREADDELAY_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RDDATACAPTURE_Register use record
      BYPASS         at 0 range 0 .. 0;
      DELAY_k        at 0 range 1 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DQSENABLE      at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      DDRREADDELAY   at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype DEVSIZECONFIG_NUMADDRBYTES_Field is Interfaces.EFM32.UInt4;
   subtype DEVSIZECONFIG_BYTESPERDEVICEPAGE_Field is Interfaces.EFM32.UInt12;
   subtype DEVSIZECONFIG_BYTESPERSUBSECTOR_Field is Interfaces.EFM32.UInt5;
   --  DEVSIZECONFIG_MEMSIZEONCS array element
   subtype DEVSIZECONFIG_MEMSIZEONCS_Element is Interfaces.EFM32.UInt2;

   --  DEVSIZECONFIG_MEMSIZEONCS array
   type DEVSIZECONFIG_MEMSIZEONCS_Field_Array is array (0 .. 1)
     of DEVSIZECONFIG_MEMSIZEONCS_Element
     with Component_Size => 2, Size => 4;

   --  Type definition for DEVSIZECONFIG_MEMSIZEONCS
   type DEVSIZECONFIG_MEMSIZEONCS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MEMSIZEONCS as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  MEMSIZEONCS as an array
            Arr : DEVSIZECONFIG_MEMSIZEONCS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for DEVSIZECONFIG_MEMSIZEONCS_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Device Size Configuration Register
   type DEVSIZECONFIG_Register is record
      --  Number of Address Bytes
      NUMADDRBYTES       : DEVSIZECONFIG_NUMADDRBYTES_Field := 16#2#;
      --  Number of Bytes Per Device Page
      BYTESPERDEVICEPAGE : DEVSIZECONFIG_BYTESPERDEVICEPAGE_Field := 16#100#;
      --  Number of Bytes Per Block
      BYTESPERSUBSECTOR  : DEVSIZECONFIG_BYTESPERSUBSECTOR_Field := 16#10#;
      --  Size of Flash Device Connected to CS[0] Pin
      MEMSIZEONCS        : DEVSIZECONFIG_MEMSIZEONCS_Field :=
                            (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_25_31     : Interfaces.EFM32.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DEVSIZECONFIG_Register use record
      NUMADDRBYTES       at 0 range 0 .. 3;
      BYTESPERDEVICEPAGE at 0 range 4 .. 15;
      BYTESPERSUBSECTOR  at 0 range 16 .. 20;
      MEMSIZEONCS        at 0 range 21 .. 24;
      Reserved_25_31     at 0 range 25 .. 31;
   end record;

   subtype SRAMPARTITIONCFG_ADDR_Field is Interfaces.EFM32.Byte;

   --  SRAM Partition Configuration Register
   type SRAMPARTITIONCFG_Register is record
      --  Indirect Read Partition Size
      ADDR          : SRAMPARTITIONCFG_ADDR_Field := 16#80#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAMPARTITIONCFG_Register use record
      ADDR          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype MODEBITCONFIG_MODE_Field is Interfaces.EFM32.Byte;
   subtype MODEBITCONFIG_CHUNKSIZE_Field is Interfaces.EFM32.UInt3;
   subtype MODEBITCONFIG_CRCOUTENABLE_Field is Interfaces.EFM32.Bit;
   subtype MODEBITCONFIG_RXCRCDATAUP_Field is Interfaces.EFM32.Byte;
   subtype MODEBITCONFIG_RXCRCDATALOW_Field is Interfaces.EFM32.Byte;

   --  Mode Bit Configuration Register
   type MODEBITCONFIG_Register is record
      --  Mode Bits
      MODE           : MODEBITCONFIG_MODE_Field := 16#0#;
      --  Chunk Size
      CHUNKSIZE      : MODEBITCONFIG_CHUNKSIZE_Field := 16#2#;
      --  unspecified
      Reserved_11_14 : Interfaces.EFM32.UInt4 := 16#0#;
      --  CRC# Output Enable Bit
      CRCOUTENABLE   : MODEBITCONFIG_CRCOUTENABLE_Field := 16#0#;
      --  Read-only. RX CRC Data (upper)
      RXCRCDATAUP    : MODEBITCONFIG_RXCRCDATAUP_Field := 16#0#;
      --  Read-only. RX CRC Data (lower)
      RXCRCDATALOW   : MODEBITCONFIG_RXCRCDATALOW_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODEBITCONFIG_Register use record
      MODE           at 0 range 0 .. 7;
      CHUNKSIZE      at 0 range 8 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      CRCOUTENABLE   at 0 range 15 .. 15;
      RXCRCDATAUP    at 0 range 16 .. 23;
      RXCRCDATALOW   at 0 range 24 .. 31;
   end record;

   subtype SRAMFILL_SRAMFILLINDACREAD_Field is Interfaces.EFM32.UInt16;
   subtype SRAMFILL_SRAMFILLINDACWRITE_Field is Interfaces.EFM32.UInt16;

   --  SRAM Fill Register
   type SRAMFILL_Register is record
      --  Read-only. SRAM Fill Level (Indirect Read Partition)
      SRAMFILLINDACREAD  : SRAMFILL_SRAMFILLINDACREAD_Field;
      --  Read-only. SRAM Fill Level (Indirect Write Partition)
      SRAMFILLINDACWRITE : SRAMFILL_SRAMFILLINDACWRITE_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SRAMFILL_Register use record
      SRAMFILLINDACREAD  at 0 range 0 .. 15;
      SRAMFILLINDACWRITE at 0 range 16 .. 31;
   end record;

   subtype TXTHRESH_LEVEL_Field is Interfaces.EFM32.UInt5;

   --  TX Threshold Register
   type TXTHRESH_Register is record
      --  Threshold Level
      LEVEL         : TXTHRESH_LEVEL_Field := 16#1#;
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXTHRESH_Register use record
      LEVEL         at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype RXTHRESH_LEVEL_Field is Interfaces.EFM32.UInt5;

   --  RX Threshold Register
   type RXTHRESH_Register is record
      --  Threshold Level
      LEVEL         : RXTHRESH_LEVEL_Field := 16#1#;
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXTHRESH_Register use record
      LEVEL         at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype WRITECOMPLETIONCTRL_OPCODE_Field is Interfaces.EFM32.Byte;
   subtype WRITECOMPLETIONCTRL_POLLINGBITINDEX_Field is Interfaces.EFM32.UInt3;
   subtype WRITECOMPLETIONCTRL_POLLINGPOLARITY_Field is Interfaces.EFM32.Bit;
   subtype WRITECOMPLETIONCTRL_DISABLEPOLLING_Field is Interfaces.EFM32.Bit;
   subtype WRITECOMPLETIONCTRL_ENABLEPOLLINGEXP_Field is Interfaces.EFM32.Bit;
   subtype WRITECOMPLETIONCTRL_POLLCOUNT_Field is Interfaces.EFM32.Byte;
   subtype WRITECOMPLETIONCTRL_POLLREPDELAY_Field is Interfaces.EFM32.Byte;

   --  Write Completion Control Register
   type WRITECOMPLETIONCTRL_Register is record
      --  Opcode
      OPCODE           : WRITECOMPLETIONCTRL_OPCODE_Field := 16#5#;
      --  Polling Bit Index
      POLLINGBITINDEX  : WRITECOMPLETIONCTRL_POLLINGBITINDEX_Field := 16#0#;
      --  unspecified
      Reserved_11_12   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Polling Polarity
      POLLINGPOLARITY  : WRITECOMPLETIONCTRL_POLLINGPOLARITY_Field := 16#0#;
      --  Disable Polling
      DISABLEPOLLING   : WRITECOMPLETIONCTRL_DISABLEPOLLING_Field := 16#0#;
      --  Enable Polling Expiration
      ENABLEPOLLINGEXP : WRITECOMPLETIONCTRL_ENABLEPOLLINGEXP_Field := 16#0#;
      --  Poll Count
      POLLCOUNT        : WRITECOMPLETIONCTRL_POLLCOUNT_Field := 16#1#;
      --  Poll Repetition Delay
      POLLREPDELAY     : WRITECOMPLETIONCTRL_POLLREPDELAY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRITECOMPLETIONCTRL_Register use record
      OPCODE           at 0 range 0 .. 7;
      POLLINGBITINDEX  at 0 range 8 .. 10;
      Reserved_11_12   at 0 range 11 .. 12;
      POLLINGPOLARITY  at 0 range 13 .. 13;
      DISABLEPOLLING   at 0 range 14 .. 14;
      ENABLEPOLLINGEXP at 0 range 15 .. 15;
      POLLCOUNT        at 0 range 16 .. 23;
      POLLREPDELAY     at 0 range 24 .. 31;
   end record;

   subtype IRQSTATUS_MODEMFAIL_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_UNDERFLOWDET_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_INDIRECTOPDONE_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_INDIRECTREADREJECT_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_PROTWRATTEMPT_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_ILLEGALACCESSDET_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_INDIRECTXFERLEVELBREACH_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_RECVOVERFLOW_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_TXFIFONOTFULL_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_TXFIFOFULL_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_RXFIFONOTEMPTY_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_RXFIFOFULL_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_INDRDSRAMFULL_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_POLLEXPINT_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_STIGREQINT_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_RXCRCDATAERR_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_RXCRCDATAVAL_Field is Interfaces.EFM32.Bit;
   subtype IRQSTATUS_TXCRCCHUNKBRK_Field is Interfaces.EFM32.Bit;

   --  Interrupt Status Register
   type IRQSTATUS_Register is record
      --  Mode M Failure
      MODEMFAIL               : IRQSTATUS_MODEMFAIL_Field := 16#0#;
      --  Underflow Detected
      UNDERFLOWDET            : IRQSTATUS_UNDERFLOWDET_Field := 16#0#;
      --  Indirect Operation Complete
      INDIRECTOPDONE          : IRQSTATUS_INDIRECTOPDONE_Field := 16#0#;
      --  Indirect Operation Was Requested but Could Not Be Accepted
      INDIRECTREADREJECT      : IRQSTATUS_INDIRECTREADREJECT_Field := 16#0#;
      --  Write to Protected Area Was Attempted and Rejected
      PROTWRATTEMPT           : IRQSTATUS_PROTWRATTEMPT_Field := 16#0#;
      --  Illegal Memory Access Has Been Detected
      ILLEGALACCESSDET        : IRQSTATUS_ILLEGALACCESSDET_Field := 16#0#;
      --  Indirect Transfer Watermark Level Breached
      INDIRECTXFERLEVELBREACH : IRQSTATUS_INDIRECTXFERLEVELBREACH_Field :=
                                 16#0#;
      --  Receive Overflow
      RECVOVERFLOW            : IRQSTATUS_RECVOVERFLOW_Field := 16#0#;
      --  Small TX FIFO Not Full
      TXFIFONOTFULL           : IRQSTATUS_TXFIFONOTFULL_Field := 16#0#;
      --  Small TX FIFO Full
      TXFIFOFULL              : IRQSTATUS_TXFIFOFULL_Field := 16#0#;
      --  Small RX FIFO Not Empty
      RXFIFONOTEMPTY          : IRQSTATUS_RXFIFONOTEMPTY_Field := 16#0#;
      --  Small RX FIFO Full
      RXFIFOFULL              : IRQSTATUS_RXFIFOFULL_Field := 16#0#;
      --  Indirect Read Partition Overflow
      INDRDSRAMFULL           : IRQSTATUS_INDRDSRAMFULL_Field := 16#0#;
      --  The Maximum Number of Programmed Polls Cycles is Expired
      POLLEXPINT              : IRQSTATUS_POLLEXPINT_Field := 16#0#;
      --  The Controller is Ready for Getting Another STIG Request
      STIGREQINT              : IRQSTATUS_STIGREQINT_Field := 16#0#;
      --  unspecified
      Reserved_15_15          : Interfaces.EFM32.Bit := 16#0#;
      --  RX CRC Data Error
      RXCRCDATAERR            : IRQSTATUS_RXCRCDATAERR_Field := 16#0#;
      --  RX CRC Data Valid
      RXCRCDATAVAL            : IRQSTATUS_RXCRCDATAVAL_Field := 16#0#;
      --  TX CRC Chunk Was Broken
      TXCRCCHUNKBRK           : IRQSTATUS_TXCRCCHUNKBRK_Field := 16#0#;
      --  unspecified
      Reserved_19_31          : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IRQSTATUS_Register use record
      MODEMFAIL               at 0 range 0 .. 0;
      UNDERFLOWDET            at 0 range 1 .. 1;
      INDIRECTOPDONE          at 0 range 2 .. 2;
      INDIRECTREADREJECT      at 0 range 3 .. 3;
      PROTWRATTEMPT           at 0 range 4 .. 4;
      ILLEGALACCESSDET        at 0 range 5 .. 5;
      INDIRECTXFERLEVELBREACH at 0 range 6 .. 6;
      RECVOVERFLOW            at 0 range 7 .. 7;
      TXFIFONOTFULL           at 0 range 8 .. 8;
      TXFIFOFULL              at 0 range 9 .. 9;
      RXFIFONOTEMPTY          at 0 range 10 .. 10;
      RXFIFOFULL              at 0 range 11 .. 11;
      INDRDSRAMFULL           at 0 range 12 .. 12;
      POLLEXPINT              at 0 range 13 .. 13;
      STIGREQINT              at 0 range 14 .. 14;
      Reserved_15_15          at 0 range 15 .. 15;
      RXCRCDATAERR            at 0 range 16 .. 16;
      RXCRCDATAVAL            at 0 range 17 .. 17;
      TXCRCCHUNKBRK           at 0 range 18 .. 18;
      Reserved_19_31          at 0 range 19 .. 31;
   end record;

   subtype IRQMASK_MODEMFAILMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_UNDERFLOWDETMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_INDIRECTOPDONEMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_INDIRECTREADREJECTMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_PROTWRATTEMPTMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_ILLEGALACCESSDETMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_INDIRECTXFERLEVELBREACHMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_RECVOVERFLOWMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_TXFIFONOTFULLMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_TXFIFOFULLMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_RXFIFONOTEMPTYMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_RXFIFOFULLMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_INDRDSRAMFULLMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_POLLEXPINTMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_STIGREQMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_RXCRCDATAERRMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_RXCRCDATAVALMASK_Field is Interfaces.EFM32.Bit;
   subtype IRQMASK_TXCRCCHUNKBRKMASK_Field is Interfaces.EFM32.Bit;

   --  Interrupt Mask
   type IRQMASK_Register is record
      --  Mode M Failure Mask
      MODEMFAILMASK               : IRQMASK_MODEMFAILMASK_Field := 16#0#;
      --  Underflow Detected Mask
      UNDERFLOWDETMASK            : IRQMASK_UNDERFLOWDETMASK_Field := 16#0#;
      --  Indirect Complete Mask
      INDIRECTOPDONEMASK          : IRQMASK_INDIRECTOPDONEMASK_Field := 16#0#;
      --  Indirect Read Reject Mask
      INDIRECTREADREJECTMASK      : IRQMASK_INDIRECTREADREJECTMASK_Field :=
                                     16#0#;
      --  Protected Area Write Attempt Mask
      PROTWRATTEMPTMASK           : IRQMASK_PROTWRATTEMPTMASK_Field := 16#0#;
      --  Illegal Access Detected Mask
      ILLEGALACCESSDETMASK        : IRQMASK_ILLEGALACCESSDETMASK_Field :=
                                     16#0#;
      --  Transfer Watermark Breach Mask
      INDIRECTXFERLEVELBREACHMASK : IRQMASK_INDIRECTXFERLEVELBREACHMASK_Field :=
                                     16#0#;
      --  Receive Overflow Mask
      RECVOVERFLOWMASK            : IRQMASK_RECVOVERFLOWMASK_Field := 16#0#;
      --  Small TX FIFO Not Full Mask
      TXFIFONOTFULLMASK           : IRQMASK_TXFIFONOTFULLMASK_Field := 16#0#;
      --  Small TX FIFO Full Mask
      TXFIFOFULLMASK              : IRQMASK_TXFIFOFULLMASK_Field := 16#0#;
      --  Small RX FIFO Not Empty Mask
      RXFIFONOTEMPTYMASK          : IRQMASK_RXFIFONOTEMPTYMASK_Field := 16#0#;
      --  Small RX FIFO Full Mask
      RXFIFOFULLMASK              : IRQMASK_RXFIFOFULLMASK_Field := 16#0#;
      --  Indirect Read Partition Overflow Mask
      INDRDSRAMFULLMASK           : IRQMASK_INDRDSRAMFULLMASK_Field := 16#0#;
      --  Polling Expiration Detected Mask
      POLLEXPINTMASK              : IRQMASK_POLLEXPINTMASK_Field := 16#0#;
      --  STIG Request Completion Mask
      STIGREQMASK                 : IRQMASK_STIGREQMASK_Field := 16#0#;
      --  unspecified
      Reserved_15_15              : Interfaces.EFM32.Bit := 16#0#;
      --  RX CRC Data Error Mask
      RXCRCDATAERRMASK            : IRQMASK_RXCRCDATAERRMASK_Field := 16#0#;
      --  RX CRC Data Valid Mask
      RXCRCDATAVALMASK            : IRQMASK_RXCRCDATAVALMASK_Field := 16#0#;
      --  TX CRC Chunk Was Broken Mask
      TXCRCCHUNKBRKMASK           : IRQMASK_TXCRCCHUNKBRKMASK_Field := 16#0#;
      --  unspecified
      Reserved_19_31              : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IRQMASK_Register use record
      MODEMFAILMASK               at 0 range 0 .. 0;
      UNDERFLOWDETMASK            at 0 range 1 .. 1;
      INDIRECTOPDONEMASK          at 0 range 2 .. 2;
      INDIRECTREADREJECTMASK      at 0 range 3 .. 3;
      PROTWRATTEMPTMASK           at 0 range 4 .. 4;
      ILLEGALACCESSDETMASK        at 0 range 5 .. 5;
      INDIRECTXFERLEVELBREACHMASK at 0 range 6 .. 6;
      RECVOVERFLOWMASK            at 0 range 7 .. 7;
      TXFIFONOTFULLMASK           at 0 range 8 .. 8;
      TXFIFOFULLMASK              at 0 range 9 .. 9;
      RXFIFONOTEMPTYMASK          at 0 range 10 .. 10;
      RXFIFOFULLMASK              at 0 range 11 .. 11;
      INDRDSRAMFULLMASK           at 0 range 12 .. 12;
      POLLEXPINTMASK              at 0 range 13 .. 13;
      STIGREQMASK                 at 0 range 14 .. 14;
      Reserved_15_15              at 0 range 15 .. 15;
      RXCRCDATAERRMASK            at 0 range 16 .. 16;
      RXCRCDATAVALMASK            at 0 range 17 .. 17;
      TXCRCCHUNKBRKMASK           at 0 range 18 .. 18;
      Reserved_19_31              at 0 range 19 .. 31;
   end record;

   subtype WRPROTCTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype WRPROTCTRL_ENB_Field is Interfaces.EFM32.Bit;

   --  Write Protection Control Register
   type WRPROTCTRL_Register is record
      --  Write Protection Inversion Bit
      INV           : WRPROTCTRL_INV_Field := 16#0#;
      --  Write Protection Enable Bit
      ENB           : WRPROTCTRL_ENB_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRPROTCTRL_Register use record
      INV           at 0 range 0 .. 0;
      ENB           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype INDIRECTREADXFERCTRL_START_Field is Interfaces.EFM32.Bit;
   subtype INDIRECTREADXFERCTRL_CANCEL_Field is Interfaces.EFM32.Bit;
   subtype INDIRECTREADXFERCTRL_RDSTATUS_Field is Interfaces.EFM32.Bit;
   subtype INDIRECTREADXFERCTRL_SRAMFULL_Field is Interfaces.EFM32.Bit;
   subtype INDIRECTREADXFERCTRL_RDQUEUED_Field is Interfaces.EFM32.Bit;
   subtype INDIRECTREADXFERCTRL_INDOPSDONESTATUS_Field is Interfaces.EFM32.Bit;
   subtype INDIRECTREADXFERCTRL_NUMINDOPSDONE_Field is Interfaces.EFM32.UInt2;

   --  Indirect Read Transfer Control Register
   type INDIRECTREADXFERCTRL_Register is record
      --  Write-only. Start Indirect Read
      START            : INDIRECTREADXFERCTRL_START_Field := 16#0#;
      --  Write-only. Cancel Indirect Read
      CANCEL           : INDIRECTREADXFERCTRL_CANCEL_Field := 16#0#;
      --  Read-only. Indirect Read Status
      RDSTATUS         : INDIRECTREADXFERCTRL_RDSTATUS_Field := 16#0#;
      --  SRAM Full
      SRAMFULL         : INDIRECTREADXFERCTRL_SRAMFULL_Field := 16#0#;
      --  Read-only. Two Indirect Read Operations Have Been Queued
      RDQUEUED         : INDIRECTREADXFERCTRL_RDQUEUED_Field := 16#0#;
      --  Indirect Completion Status
      INDOPSDONESTATUS : INDIRECTREADXFERCTRL_INDOPSDONESTATUS_Field := 16#0#;
      --  Read-only. Number Indirect Operations Done
      NUMINDOPSDONE    : INDIRECTREADXFERCTRL_NUMINDOPSDONE_Field := 16#0#;
      --  unspecified
      Reserved_8_31    : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INDIRECTREADXFERCTRL_Register use record
      START            at 0 range 0 .. 0;
      CANCEL           at 0 range 1 .. 1;
      RDSTATUS         at 0 range 2 .. 2;
      SRAMFULL         at 0 range 3 .. 3;
      RDQUEUED         at 0 range 4 .. 4;
      INDOPSDONESTATUS at 0 range 5 .. 5;
      NUMINDOPSDONE    at 0 range 6 .. 7;
      Reserved_8_31    at 0 range 8 .. 31;
   end record;

   subtype INDIRECTWRITEXFERCTRL_START_Field is Interfaces.EFM32.Bit;
   subtype INDIRECTWRITEXFERCTRL_CANCEL_Field is Interfaces.EFM32.Bit;
   subtype INDIRECTWRITEXFERCTRL_WRSTATUS_Field is Interfaces.EFM32.Bit;
   subtype INDIRECTWRITEXFERCTRL_WRQUEUED_Field is Interfaces.EFM32.Bit;
   subtype INDIRECTWRITEXFERCTRL_INDOPSDONESTATUS_Field is
     Interfaces.EFM32.Bit;
   subtype INDIRECTWRITEXFERCTRL_NUMINDOPSDONE_Field is Interfaces.EFM32.UInt2;

   --  Indirect Write Transfer Control Register
   type INDIRECTWRITEXFERCTRL_Register is record
      --  Write-only. Start Indirect Write
      START            : INDIRECTWRITEXFERCTRL_START_Field := 16#0#;
      --  Write-only. Cancel Indirect Write
      CANCEL           : INDIRECTWRITEXFERCTRL_CANCEL_Field := 16#0#;
      --  Read-only. Indirect Write Status
      WRSTATUS         : INDIRECTWRITEXFERCTRL_WRSTATUS_Field := 16#0#;
      --  unspecified
      Reserved_3_3     : Interfaces.EFM32.Bit := 16#0#;
      --  Read-only. Two Indirect Write Operations Have Been Queued
      WRQUEUED         : INDIRECTWRITEXFERCTRL_WRQUEUED_Field := 16#0#;
      --  Indirect Completion Status
      INDOPSDONESTATUS : INDIRECTWRITEXFERCTRL_INDOPSDONESTATUS_Field :=
                          16#0#;
      --  Read-only. Indirect Operations Done
      NUMINDOPSDONE    : INDIRECTWRITEXFERCTRL_NUMINDOPSDONE_Field := 16#0#;
      --  unspecified
      Reserved_8_31    : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INDIRECTWRITEXFERCTRL_Register use record
      START            at 0 range 0 .. 0;
      CANCEL           at 0 range 1 .. 1;
      WRSTATUS         at 0 range 2 .. 2;
      Reserved_3_3     at 0 range 3 .. 3;
      WRQUEUED         at 0 range 4 .. 4;
      INDOPSDONESTATUS at 0 range 5 .. 5;
      NUMINDOPSDONE    at 0 range 6 .. 7;
      Reserved_8_31    at 0 range 8 .. 31;
   end record;

   subtype INDIRECTTRIGGERADDRRANGE_INDRANGEWIDTH_Field is
     Interfaces.EFM32.UInt4;

   --  Indirect Trigger Address Range Register
   type INDIRECTTRIGGERADDRRANGE_Register is record
      --  Indirect Trigger Address Width
      INDRANGEWIDTH : INDIRECTTRIGGERADDRRANGE_INDRANGEWIDTH_Field := 16#4#;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INDIRECTTRIGGERADDRRANGE_Register use record
      INDRANGEWIDTH at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype FLASHCOMMANDCTRLMEM_TRIGGERMEMBANKREQ_Field is Interfaces.EFM32.Bit;
   subtype FLASHCOMMANDCTRLMEM_MEMBANKREQINPROGRESS_Field is
     Interfaces.EFM32.Bit;
   subtype FLASHCOMMANDCTRLMEM_MEMBANKREADDATA_Field is Interfaces.EFM32.Byte;
   subtype FLASHCOMMANDCTRLMEM_NBOFSTIGREADBYTES_Field is
     Interfaces.EFM32.UInt3;
   subtype FLASHCOMMANDCTRLMEM_MEMBANKADDR_Field is Interfaces.EFM32.UInt9;

   --  Flash Command Control Memory Register (STIG)
   type FLASHCOMMANDCTRLMEM_Register is record
      --  Write-only. Trigger the Memory Bank Data Request
      TRIGGERMEMBANKREQ    : FLASHCOMMANDCTRLMEM_TRIGGERMEMBANKREQ_Field :=
                              16#0#;
      --  Read-only. Memory Bank Data Request in Progress
      MEMBANKREQINPROGRESS : FLASHCOMMANDCTRLMEM_MEMBANKREQINPROGRESS_Field :=
                              16#0#;
      --  unspecified
      Reserved_2_7         : Interfaces.EFM32.UInt6 := 16#0#;
      --  Read-only. Last Requested Data From the STIG Memory Bank
      MEMBANKREADDATA      : FLASHCOMMANDCTRLMEM_MEMBANKREADDATA_Field :=
                              16#0#;
      --  Number of Read Bytes for the Extended STIG
      NBOFSTIGREADBYTES    : FLASHCOMMANDCTRLMEM_NBOFSTIGREADBYTES_Field :=
                              16#0#;
      --  unspecified
      Reserved_19_19       : Interfaces.EFM32.Bit := 16#0#;
      --  Memory Bank Address
      MEMBANKADDR          : FLASHCOMMANDCTRLMEM_MEMBANKADDR_Field := 16#0#;
      --  unspecified
      Reserved_29_31       : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCOMMANDCTRLMEM_Register use record
      TRIGGERMEMBANKREQ    at 0 range 0 .. 0;
      MEMBANKREQINPROGRESS at 0 range 1 .. 1;
      Reserved_2_7         at 0 range 2 .. 7;
      MEMBANKREADDATA      at 0 range 8 .. 15;
      NBOFSTIGREADBYTES    at 0 range 16 .. 18;
      Reserved_19_19       at 0 range 19 .. 19;
      MEMBANKADDR          at 0 range 20 .. 28;
      Reserved_29_31       at 0 range 29 .. 31;
   end record;

   subtype FLASHCMDCTRL_CMDEXEC_Field is Interfaces.EFM32.Bit;
   subtype FLASHCMDCTRL_CMDEXECSTATUS_Field is Interfaces.EFM32.Bit;
   subtype FLASHCMDCTRL_STIGMEMBANKEN_Field is Interfaces.EFM32.Bit;
   subtype FLASHCMDCTRL_NUMDUMMYCYCLES_Field is Interfaces.EFM32.UInt5;
   subtype FLASHCMDCTRL_NUMWRDATABYTES_Field is Interfaces.EFM32.UInt3;
   subtype FLASHCMDCTRL_ENBWRITEDATA_Field is Interfaces.EFM32.Bit;
   subtype FLASHCMDCTRL_NUMADDRBYTES_Field is Interfaces.EFM32.UInt2;
   subtype FLASHCMDCTRL_ENBMODEBIT_Field is Interfaces.EFM32.Bit;
   subtype FLASHCMDCTRL_ENBCOMDADDR_Field is Interfaces.EFM32.Bit;
   subtype FLASHCMDCTRL_NUMRDDATABYTES_Field is Interfaces.EFM32.UInt3;
   subtype FLASHCMDCTRL_ENBREADDATA_Field is Interfaces.EFM32.Bit;
   subtype FLASHCMDCTRL_CMDOPCODE_Field is Interfaces.EFM32.Byte;

   --  Flash Command Control Register (STIG)
   type FLASHCMDCTRL_Register is record
      --  Write-only. Execute the Command
      CMDEXEC        : FLASHCMDCTRL_CMDEXEC_Field := 16#0#;
      --  Read-only. Command Execution in Progress
      CMDEXECSTATUS  : FLASHCMDCTRL_CMDEXECSTATUS_Field := 16#0#;
      --  STIG Memory Bank Enable Bit
      STIGMEMBANKEN  : FLASHCMDCTRL_STIGMEMBANKEN_Field := 16#0#;
      --  unspecified
      Reserved_3_6   : Interfaces.EFM32.UInt4 := 16#0#;
      --  Number of Dummy Cycles
      NUMDUMMYCYCLES : FLASHCMDCTRL_NUMDUMMYCYCLES_Field := 16#0#;
      --  Number of Write Data Bytes
      NUMWRDATABYTES : FLASHCMDCTRL_NUMWRDATABYTES_Field := 16#0#;
      --  Write Data Enable
      ENBWRITEDATA   : FLASHCMDCTRL_ENBWRITEDATA_Field := 16#0#;
      --  Number of Address Bytes
      NUMADDRBYTES   : FLASHCMDCTRL_NUMADDRBYTES_Field := 16#0#;
      --  Mode Bit Enable
      ENBMODEBIT     : FLASHCMDCTRL_ENBMODEBIT_Field := 16#0#;
      --  Command Address Enable
      ENBCOMDADDR    : FLASHCMDCTRL_ENBCOMDADDR_Field := 16#0#;
      --  Number of Read Data Bytes
      NUMRDDATABYTES : FLASHCMDCTRL_NUMRDDATABYTES_Field := 16#0#;
      --  Read Data Enable
      ENBREADDATA    : FLASHCMDCTRL_ENBREADDATA_Field := 16#0#;
      --  Command Opcode
      CMDOPCODE      : FLASHCMDCTRL_CMDOPCODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FLASHCMDCTRL_Register use record
      CMDEXEC        at 0 range 0 .. 0;
      CMDEXECSTATUS  at 0 range 1 .. 1;
      STIGMEMBANKEN  at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      NUMDUMMYCYCLES at 0 range 7 .. 11;
      NUMWRDATABYTES at 0 range 12 .. 14;
      ENBWRITEDATA   at 0 range 15 .. 15;
      NUMADDRBYTES   at 0 range 16 .. 17;
      ENBMODEBIT     at 0 range 18 .. 18;
      ENBCOMDADDR    at 0 range 19 .. 19;
      NUMRDDATABYTES at 0 range 20 .. 22;
      ENBREADDATA    at 0 range 23 .. 23;
      CMDOPCODE      at 0 range 24 .. 31;
   end record;

   subtype POLLINGFLASHSTATUS_DEVICESTATUS_Field is Interfaces.EFM32.Byte;
   subtype POLLINGFLASHSTATUS_DEVICESTATUSVALID_Field is Interfaces.EFM32.Bit;
   subtype POLLINGFLASHSTATUS_DEVICESTATUSNBDUMMY_Field is
     Interfaces.EFM32.UInt4;

   --  Polling Flash Status Register
   type POLLINGFLASHSTATUS_Register is record
      --  Read-only. Device Status
      DEVICESTATUS        : POLLINGFLASHSTATUS_DEVICESTATUS_Field := 16#0#;
      --  Read-only. Device Status Valid
      DEVICESTATUSVALID   : POLLINGFLASHSTATUS_DEVICESTATUSVALID_Field :=
                             16#0#;
      --  unspecified
      Reserved_9_15       : Interfaces.EFM32.UInt7 := 16#0#;
      --  Auto-polling Dummy Cycles
      DEVICESTATUSNBDUMMY : POLLINGFLASHSTATUS_DEVICESTATUSNBDUMMY_Field :=
                             16#0#;
      --  unspecified
      Reserved_20_31      : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POLLINGFLASHSTATUS_Register use record
      DEVICESTATUS        at 0 range 0 .. 7;
      DEVICESTATUSVALID   at 0 range 8 .. 8;
      Reserved_9_15       at 0 range 9 .. 15;
      DEVICESTATUSNBDUMMY at 0 range 16 .. 19;
      Reserved_20_31      at 0 range 20 .. 31;
   end record;

   subtype PHYCONFIGURATION_PHYCONFIGRXDLLDELAY_Field is
     Interfaces.EFM32.UInt7;
   subtype PHYCONFIGURATION_PHYCONFIGTXDLLDELAY_Field is
     Interfaces.EFM32.UInt7;
   subtype PHYCONFIGURATION_PHYCONFIGRESYNC_Field is Interfaces.EFM32.Bit;

   --  PHY Configuration Register
   type PHYCONFIGURATION_Register is record
      --  RX DLL Delay
      PHYCONFIGRXDLLDELAY : PHYCONFIGURATION_PHYCONFIGRXDLLDELAY_Field :=
                             16#0#;
      --  unspecified
      Reserved_7_15       : Interfaces.EFM32.UInt9 := 16#0#;
      --  TX DLL Delay
      PHYCONFIGTXDLLDELAY : PHYCONFIGURATION_PHYCONFIGTXDLLDELAY_Field :=
                             16#0#;
      --  unspecified
      Reserved_23_30      : Interfaces.EFM32.Byte := 16#0#;
      --  Write-only. PHY Config Resync
      PHYCONFIGRESYNC     : PHYCONFIGURATION_PHYCONFIGRESYNC_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PHYCONFIGURATION_Register use record
      PHYCONFIGRXDLLDELAY at 0 range 0 .. 6;
      Reserved_7_15       at 0 range 7 .. 15;
      PHYCONFIGTXDLLDELAY at 0 range 16 .. 22;
      Reserved_23_30      at 0 range 23 .. 30;
      PHYCONFIGRESYNC     at 0 range 31 .. 31;
   end record;

   subtype OPCODEEXTLOWER_EXTSTIGOPCODE_Field is Interfaces.EFM32.Byte;
   subtype OPCODEEXTLOWER_EXTPOLLOPCODE_Field is Interfaces.EFM32.Byte;
   subtype OPCODEEXTLOWER_EXTWRITEOPCODE_Field is Interfaces.EFM32.Byte;
   subtype OPCODEEXTLOWER_EXTREADOPCODE_Field is Interfaces.EFM32.Byte;

   --  Opcode Extension Register (Lower)
   type OPCODEEXTLOWER_Register is record
      --  STIG Opcode Extension
      EXTSTIGOPCODE  : OPCODEEXTLOWER_EXTSTIGOPCODE_Field := 16#0#;
      --  Polling Opcode Extension
      EXTPOLLOPCODE  : OPCODEEXTLOWER_EXTPOLLOPCODE_Field := 16#FA#;
      --  Write Opcode Extension
      EXTWRITEOPCODE : OPCODEEXTLOWER_EXTWRITEOPCODE_Field := 16#ED#;
      --  Read Opcode Extension
      EXTREADOPCODE  : OPCODEEXTLOWER_EXTREADOPCODE_Field := 16#13#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPCODEEXTLOWER_Register use record
      EXTSTIGOPCODE  at 0 range 0 .. 7;
      EXTPOLLOPCODE  at 0 range 8 .. 15;
      EXTWRITEOPCODE at 0 range 16 .. 23;
      EXTREADOPCODE  at 0 range 24 .. 31;
   end record;

   subtype OPCODEEXTUPPER_EXTWELOPCODE_Field is Interfaces.EFM32.Byte;
   subtype OPCODEEXTUPPER_WELOPCODE_Field is Interfaces.EFM32.Byte;

   --  Opcode Extension Register (Upper)
   type OPCODEEXTUPPER_Register is record
      --  unspecified
      Reserved_0_15 : Interfaces.EFM32.UInt16 := 16#0#;
      --  WEL Opcode Extension
      EXTWELOPCODE  : OPCODEEXTUPPER_EXTWELOPCODE_Field := 16#F9#;
      --  WEL Opcode
      WELOPCODE     : OPCODEEXTUPPER_WELOPCODE_Field := 16#6#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for OPCODEEXTUPPER_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      EXTWELOPCODE  at 0 range 16 .. 23;
      WELOPCODE     at 0 range 24 .. 31;
   end record;

   subtype MODULEID_CONF_Field is Interfaces.EFM32.UInt2;
   subtype MODULEID_MODULEID_Field is Interfaces.EFM32.UInt16;
   subtype MODULEID_FIXPATCH_Field is Interfaces.EFM32.Byte;

   --  Module ID Register
   type MODULEID_Register is record
      --  Read-only. Configuration ID Number
      CONF         : MODULEID_CONF_Field;
      --  unspecified
      Reserved_2_7 : Interfaces.EFM32.UInt6;
      --  Read-only. Module/Revision ID Number
      MODULEID     : MODULEID_MODULEID_Field;
      --  Read-only. Fix/patch Number
      FIXPATCH     : MODULEID_FIXPATCH_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MODULEID_Register use record
      CONF         at 0 range 0 .. 1;
      Reserved_2_7 at 0 range 2 .. 7;
      MODULEID     at 0 range 8 .. 23;
      FIXPATCH     at 0 range 24 .. 31;
   end record;

   subtype ROUTEPEN_SCLKPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CS0PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CS1PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_DQ0PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_DQ1PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_DQ2PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_DQ3PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_DQ4PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_DQ5PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_DQ6PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_DQ7PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_DQSPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_SCLKINPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_RST0PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_RST1PEN_Field is Interfaces.EFM32.Bit;

   --  I/O Routing Pin Enable Register
   type ROUTEPEN_Register is record
      --  SCLK Pin Enable
      SCLKPEN        : ROUTEPEN_SCLKPEN_Field := 16#0#;
      --  CS0 Pin Enable
      CS0PEN         : ROUTEPEN_CS0PEN_Field := 16#0#;
      --  CS1 Pin Enable
      CS1PEN         : ROUTEPEN_CS1PEN_Field := 16#0#;
      --  unspecified
      Reserved_3_4   : Interfaces.EFM32.UInt2 := 16#0#;
      --  DQ0 Pin Enable
      DQ0PEN         : ROUTEPEN_DQ0PEN_Field := 16#0#;
      --  DQ1 Pin Enable
      DQ1PEN         : ROUTEPEN_DQ1PEN_Field := 16#0#;
      --  DQ2 Pin Enable
      DQ2PEN         : ROUTEPEN_DQ2PEN_Field := 16#0#;
      --  DQ3 Pin Enable
      DQ3PEN         : ROUTEPEN_DQ3PEN_Field := 16#0#;
      --  DQ4 Pin Enable
      DQ4PEN         : ROUTEPEN_DQ4PEN_Field := 16#0#;
      --  DQ5 Pin Enable
      DQ5PEN         : ROUTEPEN_DQ5PEN_Field := 16#0#;
      --  DQ6 Pin Enable
      DQ6PEN         : ROUTEPEN_DQ6PEN_Field := 16#0#;
      --  DQ7 Pin Enable
      DQ7PEN         : ROUTEPEN_DQ7PEN_Field := 16#0#;
      --  DQS Pin Enable
      DQSPEN         : ROUTEPEN_DQSPEN_Field := 16#0#;
      --  SCLKIN Pin Enable
      SCLKINPEN      : ROUTEPEN_SCLKINPEN_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit := 16#0#;
      --  RST0 Pin Enable
      RST0PEN        : ROUTEPEN_RST0PEN_Field := 16#0#;
      --  RST1 Pin Enable
      RST1PEN        : ROUTEPEN_RST1PEN_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.EFM32.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTEPEN_Register use record
      SCLKPEN        at 0 range 0 .. 0;
      CS0PEN         at 0 range 1 .. 1;
      CS1PEN         at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      DQ0PEN         at 0 range 5 .. 5;
      DQ1PEN         at 0 range 6 .. 6;
      DQ2PEN         at 0 range 7 .. 7;
      DQ3PEN         at 0 range 8 .. 8;
      DQ4PEN         at 0 range 9 .. 9;
      DQ5PEN         at 0 range 10 .. 10;
      DQ6PEN         at 0 range 11 .. 11;
      DQ7PEN         at 0 range 12 .. 12;
      DQSPEN         at 0 range 13 .. 13;
      SCLKINPEN      at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RST0PEN        at 0 range 16 .. 16;
      RST1PEN        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC0_QSPILOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1)
     with Size => 6;
   for ROUTELOC0_QSPILOC_Field use
     (LOC0 => 0,
      LOC1 => 1);

   --  I/O Location
   type ROUTELOC0_QSPIRSTLOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1)
     with Size => 6;
   for ROUTELOC0_QSPIRSTLOC_Field use
     (LOC0 => 0,
      LOC1 => 1);

   --  I/O Route Location Register 0
   type ROUTELOC0_Register is record
      --  I/O Location
      QSPILOC        : ROUTELOC0_QSPILOC_Field := Interfaces.EFM32.QSPI0.LOC0;
      --  I/O Location
      QSPIRSTLOC     : ROUTELOC0_QSPIRSTLOC_Field :=
                        Interfaces.EFM32.QSPI0.LOC0;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC0_Register use record
      QSPILOC        at 0 range 0 .. 5;
      QSPIRSTLOC     at 0 range 6 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  QSPI0
   type QSPI0_Peripheral is record
      --  Octal-SPI Configuration Register
      CONFIG                     : aliased CONFIG_Register;
      --  Device Read Instruction Configuration Register
      DEVINSTRRDCONFIG           : aliased DEVINSTRRDCONFIG_Register;
      --  Device Write Instruction Configuration Register
      DEVINSTRWRCONFIG           : aliased DEVINSTRWRCONFIG_Register;
      --  Device Delay Register
      DEVDELAY                   : aliased DEVDELAY_Register;
      --  Read Data Capture Register
      RDDATACAPTURE              : aliased RDDATACAPTURE_Register;
      --  Device Size Configuration Register
      DEVSIZECONFIG              : aliased DEVSIZECONFIG_Register;
      --  SRAM Partition Configuration Register
      SRAMPARTITIONCFG           : aliased SRAMPARTITIONCFG_Register;
      --  Indirect Address Trigger Register
      INDAHBADDRTRIGGER          : aliased Interfaces.EFM32.UInt32;
      --  Remap Address Register
      REMAPADDR                  : aliased Interfaces.EFM32.UInt32;
      --  Mode Bit Configuration Register
      MODEBITCONFIG              : aliased MODEBITCONFIG_Register;
      --  SRAM Fill Register
      SRAMFILL                   : aliased SRAMFILL_Register;
      --  TX Threshold Register
      TXTHRESH                   : aliased TXTHRESH_Register;
      --  RX Threshold Register
      RXTHRESH                   : aliased RXTHRESH_Register;
      --  Write Completion Control Register
      WRITECOMPLETIONCTRL        : aliased WRITECOMPLETIONCTRL_Register;
      --  Polling Expiration Register
      NOOFPOLLSBEFEXP            : aliased Interfaces.EFM32.UInt32;
      --  Interrupt Status Register
      IRQSTATUS                  : aliased IRQSTATUS_Register;
      --  Interrupt Mask
      IRQMASK                    : aliased IRQMASK_Register;
      --  Lower Write Protection Register
      LOWERWRPROT                : aliased Interfaces.EFM32.UInt32;
      --  Upper Write Protection Register
      UPPERWRPROT                : aliased Interfaces.EFM32.UInt32;
      --  Write Protection Control Register
      WRPROTCTRL                 : aliased WRPROTCTRL_Register;
      --  Indirect Read Transfer Control Register
      INDIRECTREADXFERCTRL       : aliased INDIRECTREADXFERCTRL_Register;
      --  Indirect Read Transfer Watermark Register
      INDIRECTREADXFERWATERMARK  : aliased Interfaces.EFM32.UInt32;
      --  Indirect Read Transfer Start Address Register
      INDIRECTREADXFERSTART      : aliased Interfaces.EFM32.UInt32;
      --  Indirect Read Transfer Number Bytes Register
      INDIRECTREADXFERNUMBYTES   : aliased Interfaces.EFM32.UInt32;
      --  Indirect Write Transfer Control Register
      INDIRECTWRITEXFERCTRL      : aliased INDIRECTWRITEXFERCTRL_Register;
      --  Indirect Write Transfer Watermark Register
      INDIRECTWRITEXFERWATERMARK : aliased Interfaces.EFM32.UInt32;
      --  Indirect Write Transfer Start Address Register
      INDIRECTWRITEXFERSTART     : aliased Interfaces.EFM32.UInt32;
      --  Indirect Write Transfer Number Bytes Register
      INDIRECTWRITEXFERNUMBYTES  : aliased Interfaces.EFM32.UInt32;
      --  Indirect Trigger Address Range Register
      INDIRECTTRIGGERADDRRANGE   : aliased INDIRECTTRIGGERADDRRANGE_Register;
      --  Flash Command Control Memory Register (STIG)
      FLASHCOMMANDCTRLMEM        : aliased FLASHCOMMANDCTRLMEM_Register;
      --  Flash Command Control Register (STIG)
      FLASHCMDCTRL               : aliased FLASHCMDCTRL_Register;
      --  Flash Command Address Register (STIG)
      FLASHCMDADDR               : aliased Interfaces.EFM32.UInt32;
      --  Flash Command Read Data Register (Lower) (STIG)
      FLASHRDDATALOWER           : aliased Interfaces.EFM32.UInt32;
      --  Flash Command Read Data Register (Upper) (STIG)
      FLASHRDDATAUPPER           : aliased Interfaces.EFM32.UInt32;
      --  Flash Command Write Data Register (Lower) (STIG)
      FLASHWRDATALOWER           : aliased Interfaces.EFM32.UInt32;
      --  Flash Command Write Data Register (Upper) (STIG)
      FLASHWRDATAUPPER           : aliased Interfaces.EFM32.UInt32;
      --  Polling Flash Status Register
      POLLINGFLASHSTATUS         : aliased POLLINGFLASHSTATUS_Register;
      --  PHY Configuration Register
      PHYCONFIGURATION           : aliased PHYCONFIGURATION_Register;
      --  Opcode Extension Register (Lower)
      OPCODEEXTLOWER             : aliased OPCODEEXTLOWER_Register;
      --  Opcode Extension Register (Upper)
      OPCODEEXTUPPER             : aliased OPCODEEXTUPPER_Register;
      --  Module ID Register
      MODULEID                   : aliased MODULEID_Register;
      --  I/O Routing Pin Enable Register
      ROUTEPEN                   : aliased ROUTEPEN_Register;
      --  I/O Route Location Register 0
      ROUTELOC0                  : aliased ROUTELOC0_Register;
   end record
     with Volatile;

   for QSPI0_Peripheral use record
      CONFIG                     at 16#0# range 0 .. 31;
      DEVINSTRRDCONFIG           at 16#4# range 0 .. 31;
      DEVINSTRWRCONFIG           at 16#8# range 0 .. 31;
      DEVDELAY                   at 16#C# range 0 .. 31;
      RDDATACAPTURE              at 16#10# range 0 .. 31;
      DEVSIZECONFIG              at 16#14# range 0 .. 31;
      SRAMPARTITIONCFG           at 16#18# range 0 .. 31;
      INDAHBADDRTRIGGER          at 16#1C# range 0 .. 31;
      REMAPADDR                  at 16#24# range 0 .. 31;
      MODEBITCONFIG              at 16#28# range 0 .. 31;
      SRAMFILL                   at 16#2C# range 0 .. 31;
      TXTHRESH                   at 16#30# range 0 .. 31;
      RXTHRESH                   at 16#34# range 0 .. 31;
      WRITECOMPLETIONCTRL        at 16#38# range 0 .. 31;
      NOOFPOLLSBEFEXP            at 16#3C# range 0 .. 31;
      IRQSTATUS                  at 16#40# range 0 .. 31;
      IRQMASK                    at 16#44# range 0 .. 31;
      LOWERWRPROT                at 16#50# range 0 .. 31;
      UPPERWRPROT                at 16#54# range 0 .. 31;
      WRPROTCTRL                 at 16#58# range 0 .. 31;
      INDIRECTREADXFERCTRL       at 16#60# range 0 .. 31;
      INDIRECTREADXFERWATERMARK  at 16#64# range 0 .. 31;
      INDIRECTREADXFERSTART      at 16#68# range 0 .. 31;
      INDIRECTREADXFERNUMBYTES   at 16#6C# range 0 .. 31;
      INDIRECTWRITEXFERCTRL      at 16#70# range 0 .. 31;
      INDIRECTWRITEXFERWATERMARK at 16#74# range 0 .. 31;
      INDIRECTWRITEXFERSTART     at 16#78# range 0 .. 31;
      INDIRECTWRITEXFERNUMBYTES  at 16#7C# range 0 .. 31;
      INDIRECTTRIGGERADDRRANGE   at 16#80# range 0 .. 31;
      FLASHCOMMANDCTRLMEM        at 16#8C# range 0 .. 31;
      FLASHCMDCTRL               at 16#90# range 0 .. 31;
      FLASHCMDADDR               at 16#94# range 0 .. 31;
      FLASHRDDATALOWER           at 16#A0# range 0 .. 31;
      FLASHRDDATAUPPER           at 16#A4# range 0 .. 31;
      FLASHWRDATALOWER           at 16#A8# range 0 .. 31;
      FLASHWRDATAUPPER           at 16#AC# range 0 .. 31;
      POLLINGFLASHSTATUS         at 16#B0# range 0 .. 31;
      PHYCONFIGURATION           at 16#B4# range 0 .. 31;
      OPCODEEXTLOWER             at 16#E0# range 0 .. 31;
      OPCODEEXTUPPER             at 16#E4# range 0 .. 31;
      MODULEID                   at 16#FC# range 0 .. 31;
      ROUTEPEN                   at 16#104# range 0 .. 31;
      ROUTELOC0                  at 16#108# range 0 .. 31;
   end record;

   --  QSPI0
   QSPI0_Periph : aliased QSPI0_Peripheral
     with Import, Address => QSPI0_Base;

end Interfaces.EFM32.QSPI0;
