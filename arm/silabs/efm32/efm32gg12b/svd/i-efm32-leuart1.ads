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

--  LEUART1
package Interfaces.EFM32.LEUART1 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_AUTOTRI_Field is Interfaces.EFM32.Bit;
   subtype CTRL_DATABITS_Field is Interfaces.EFM32.Bit;

   --  Parity-Bit Mode
   type CTRL_PARITY_Field is
     (--  Parity bits are not used
      NONE,
      --  Even parity are used. Parity bits are automatically generated and checked
--  by hardware.
      EVEN,
      --  Odd parity is used. Parity bits are automatically generated and checked by
--  hardware.
      ODD)
     with Size => 2;
   for CTRL_PARITY_Field use
     (NONE => 0,
      EVEN => 2,
      ODD => 3);

   subtype CTRL_STOPBITS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_INV_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ERRSDMA_Field is Interfaces.EFM32.Bit;
   subtype CTRL_LOOPBK_Field is Interfaces.EFM32.Bit;
   subtype CTRL_SFUBRX_Field is Interfaces.EFM32.Bit;
   subtype CTRL_MPM_Field is Interfaces.EFM32.Bit;
   subtype CTRL_MPAB_Field is Interfaces.EFM32.Bit;
   subtype CTRL_BIT8DV_Field is Interfaces.EFM32.Bit;
   subtype CTRL_RXDMAWU_Field is Interfaces.EFM32.Bit;
   subtype CTRL_TXDMAWU_Field is Interfaces.EFM32.Bit;

   --  TX Delay Transmission
   type CTRL_TXDELAY_Field is
     (--  Frames are transmitted immediately
      NONE,
      --  Transmission of new frames are delayed by a single bit period
      SINGLE,
      --  Transmission of new frames are delayed by two bit periods
      DOUBLE,
      --  Transmission of new frames are delayed by three bit periods
      TRIPLE)
     with Size => 2;
   for CTRL_TXDELAY_Field use
     (NONE => 0,
      SINGLE => 1,
      DOUBLE => 2,
      TRIPLE => 3);

   --  Control Register
   type CTRL_Register is record
      --  Automatic Transmitter Tristate
      AUTOTRI        : CTRL_AUTOTRI_Field := 16#0#;
      --  Data-Bit Mode
      DATABITS       : CTRL_DATABITS_Field := 16#0#;
      --  Parity-Bit Mode
      PARITY         : CTRL_PARITY_Field := Interfaces.EFM32.LEUART1.NONE;
      --  Stop-Bit Mode
      STOPBITS       : CTRL_STOPBITS_Field := 16#0#;
      --  Invert Input and Output
      INV            : CTRL_INV_Field := 16#0#;
      --  Clear RX DMA on Error
      ERRSDMA        : CTRL_ERRSDMA_Field := 16#0#;
      --  Loopback Enable
      LOOPBK         : CTRL_LOOPBK_Field := 16#0#;
      --  Start-Frame UnBlock RX
      SFUBRX         : CTRL_SFUBRX_Field := 16#0#;
      --  Multi-Processor Mode
      MPM            : CTRL_MPM_Field := 16#0#;
      --  Multi-Processor Address-Bit
      MPAB           : CTRL_MPAB_Field := 16#0#;
      --  Bit 8 Default Value
      BIT8DV         : CTRL_BIT8DV_Field := 16#0#;
      --  RX DMA Wakeup
      RXDMAWU        : CTRL_RXDMAWU_Field := 16#0#;
      --  TX DMA Wakeup
      TXDMAWU        : CTRL_TXDMAWU_Field := 16#0#;
      --  TX Delay Transmission
      TXDELAY        : CTRL_TXDELAY_Field := Interfaces.EFM32.LEUART1.NONE;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      AUTOTRI        at 0 range 0 .. 0;
      DATABITS       at 0 range 1 .. 1;
      PARITY         at 0 range 2 .. 3;
      STOPBITS       at 0 range 4 .. 4;
      INV            at 0 range 5 .. 5;
      ERRSDMA        at 0 range 6 .. 6;
      LOOPBK         at 0 range 7 .. 7;
      SFUBRX         at 0 range 8 .. 8;
      MPM            at 0 range 9 .. 9;
      MPAB           at 0 range 10 .. 10;
      BIT8DV         at 0 range 11 .. 11;
      RXDMAWU        at 0 range 12 .. 12;
      TXDMAWU        at 0 range 13 .. 13;
      TXDELAY        at 0 range 14 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CMD_RXEN_Field is Interfaces.EFM32.Bit;
   subtype CMD_RXDIS_Field is Interfaces.EFM32.Bit;
   subtype CMD_TXEN_Field is Interfaces.EFM32.Bit;
   subtype CMD_TXDIS_Field is Interfaces.EFM32.Bit;
   subtype CMD_RXBLOCKEN_Field is Interfaces.EFM32.Bit;
   subtype CMD_RXBLOCKDIS_Field is Interfaces.EFM32.Bit;
   subtype CMD_CLEARTX_Field is Interfaces.EFM32.Bit;
   subtype CMD_CLEARRX_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Receiver Enable
      RXEN          : CMD_RXEN_Field := 16#0#;
      --  Write-only. Receiver Disable
      RXDIS         : CMD_RXDIS_Field := 16#0#;
      --  Write-only. Transmitter Enable
      TXEN          : CMD_TXEN_Field := 16#0#;
      --  Write-only. Transmitter Disable
      TXDIS         : CMD_TXDIS_Field := 16#0#;
      --  Write-only. Receiver Block Enable
      RXBLOCKEN     : CMD_RXBLOCKEN_Field := 16#0#;
      --  Write-only. Receiver Block Disable
      RXBLOCKDIS    : CMD_RXBLOCKDIS_Field := 16#0#;
      --  Write-only. Clear TX
      CLEARTX       : CMD_CLEARTX_Field := 16#0#;
      --  Write-only. Clear RX
      CLEARRX       : CMD_CLEARRX_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      RXEN          at 0 range 0 .. 0;
      RXDIS         at 0 range 1 .. 1;
      TXEN          at 0 range 2 .. 2;
      TXDIS         at 0 range 3 .. 3;
      RXBLOCKEN     at 0 range 4 .. 4;
      RXBLOCKDIS    at 0 range 5 .. 5;
      CLEARTX       at 0 range 6 .. 6;
      CLEARRX       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STATUS_RXENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TXENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_RXBLOCK_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TXC_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TXBL_Field is Interfaces.EFM32.Bit;
   subtype STATUS_RXDATAV_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TXIDLE_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. Receiver Enable Status
      RXENS         : STATUS_RXENS_Field;
      --  Read-only. Transmitter Enable Status
      TXENS         : STATUS_TXENS_Field;
      --  Read-only. Block Incoming Data
      RXBLOCK       : STATUS_RXBLOCK_Field;
      --  Read-only. TX Complete
      TXC           : STATUS_TXC_Field;
      --  Read-only. TX Buffer Level
      TXBL          : STATUS_TXBL_Field;
      --  Read-only. RX Data Valid
      RXDATAV       : STATUS_RXDATAV_Field;
      --  Read-only. TX Idle
      TXIDLE        : STATUS_TXIDLE_Field;
      --  unspecified
      Reserved_7_31 : Interfaces.EFM32.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      RXENS         at 0 range 0 .. 0;
      TXENS         at 0 range 1 .. 1;
      RXBLOCK       at 0 range 2 .. 2;
      TXC           at 0 range 3 .. 3;
      TXBL          at 0 range 4 .. 4;
      RXDATAV       at 0 range 5 .. 5;
      TXIDLE        at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype CLKDIV_DIV_Field is Interfaces.EFM32.UInt14;

   --  Clock Control Register
   type CLKDIV_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Fractional Clock Divider
      DIV            : CLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKDIV_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      DIV            at 0 range 3 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype STARTFRAME_STARTFRAME_Field is Interfaces.EFM32.UInt9;

   --  Start Frame Register
   type STARTFRAME_Register is record
      --  Start Frame
      STARTFRAME    : STARTFRAME_STARTFRAME_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.EFM32.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STARTFRAME_Register use record
      STARTFRAME    at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype SIGFRAME_SIGFRAME_Field is Interfaces.EFM32.UInt9;

   --  Signal Frame Register
   type SIGFRAME_Register is record
      --  Signal Frame
      SIGFRAME      : SIGFRAME_SIGFRAME_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.EFM32.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SIGFRAME_Register use record
      SIGFRAME      at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype RXDATAX_RXDATA_Field is Interfaces.EFM32.UInt9;
   subtype RXDATAX_PERR_Field is Interfaces.EFM32.Bit;
   subtype RXDATAX_FERR_Field is Interfaces.EFM32.Bit;

   --  Receive Buffer Data Extended Register
   type RXDATAX_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. RX Data
      RXDATA         : RXDATAX_RXDATA_Field;
      --  unspecified
      Reserved_9_13  : Interfaces.EFM32.UInt5;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Receive Data Parity Error
      PERR           : RXDATAX_PERR_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Receive Data Framing Error
      FERR           : RXDATAX_FERR_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDATAX_Register use record
      RXDATA         at 0 range 0 .. 8;
      Reserved_9_13  at 0 range 9 .. 13;
      PERR           at 0 range 14 .. 14;
      FERR           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RXDATA_RXDATA_Field is Interfaces.EFM32.Byte;

   --  Receive Buffer Data Register
   type RXDATA_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. RX Data
      RXDATA        : RXDATA_RXDATA_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDATA_Register use record
      RXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype RXDATAXP_RXDATAP_Field is Interfaces.EFM32.UInt9;
   subtype RXDATAXP_PERRP_Field is Interfaces.EFM32.Bit;
   subtype RXDATAXP_FERRP_Field is Interfaces.EFM32.Bit;

   --  Receive Buffer Data Extended Peek Register
   type RXDATAXP_Register is record
      --  Read-only. RX Data Peek
      RXDATAP        : RXDATAXP_RXDATAP_Field;
      --  unspecified
      Reserved_9_13  : Interfaces.EFM32.UInt5;
      --  Read-only. Receive Data Parity Error Peek
      PERRP          : RXDATAXP_PERRP_Field;
      --  Read-only. Receive Data Framing Error Peek
      FERRP          : RXDATAXP_FERRP_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDATAXP_Register use record
      RXDATAP        at 0 range 0 .. 8;
      Reserved_9_13  at 0 range 9 .. 13;
      PERRP          at 0 range 14 .. 14;
      FERRP          at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TXDATAX_TXDATA_Field is Interfaces.EFM32.UInt9;
   subtype TXDATAX_TXBREAK_Field is Interfaces.EFM32.Bit;
   subtype TXDATAX_TXDISAT_Field is Interfaces.EFM32.Bit;
   subtype TXDATAX_RXENAT_Field is Interfaces.EFM32.Bit;

   --  Transmit Buffer Data Extended Register
   type TXDATAX_Register is record
      --  TX Data
      TXDATA         : TXDATAX_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_9_12  : Interfaces.EFM32.UInt4 := 16#0#;
      --  Transmit Data as Break
      TXBREAK        : TXDATAX_TXBREAK_Field := 16#0#;
      --  Disable TX After Transmission
      TXDISAT        : TXDATAX_TXDISAT_Field := 16#0#;
      --  Enable RX After Transmission
      RXENAT         : TXDATAX_RXENAT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDATAX_Register use record
      TXDATA         at 0 range 0 .. 8;
      Reserved_9_12  at 0 range 9 .. 12;
      TXBREAK        at 0 range 13 .. 13;
      TXDISAT        at 0 range 14 .. 14;
      RXENAT         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TXDATA_TXDATA_Field is Interfaces.EFM32.Byte;

   --  Transmit Buffer Data Register
   type TXDATA_Register is record
      --  TX Data
      TXDATA        : TXDATA_TXDATA_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDATA_Register use record
      TXDATA        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype IF_TXC_Field is Interfaces.EFM32.Bit;
   subtype IF_TXBL_Field is Interfaces.EFM32.Bit;
   subtype IF_RXDATAV_Field is Interfaces.EFM32.Bit;
   subtype IF_RXOF_Field is Interfaces.EFM32.Bit;
   subtype IF_RXUF_Field is Interfaces.EFM32.Bit;
   subtype IF_TXOF_Field is Interfaces.EFM32.Bit;
   subtype IF_PERR_Field is Interfaces.EFM32.Bit;
   subtype IF_FERR_Field is Interfaces.EFM32.Bit;
   subtype IF_MPAF_Field is Interfaces.EFM32.Bit;
   subtype IF_STARTF_Field is Interfaces.EFM32.Bit;
   subtype IF_SIGF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. TX Complete Interrupt Flag
      TXC            : IF_TXC_Field;
      --  Read-only. TX Buffer Level Interrupt Flag
      TXBL           : IF_TXBL_Field;
      --  Read-only. RX Data Valid Interrupt Flag
      RXDATAV        : IF_RXDATAV_Field;
      --  Read-only. RX Overflow Interrupt Flag
      RXOF           : IF_RXOF_Field;
      --  Read-only. RX Underflow Interrupt Flag
      RXUF           : IF_RXUF_Field;
      --  Read-only. TX Overflow Interrupt Flag
      TXOF           : IF_TXOF_Field;
      --  Read-only. Parity Error Interrupt Flag
      PERR           : IF_PERR_Field;
      --  Read-only. Framing Error Interrupt Flag
      FERR           : IF_FERR_Field;
      --  Read-only. Multi-Processor Address Frame Interrupt Flag
      MPAF           : IF_MPAF_Field;
      --  Read-only. Start Frame Interrupt Flag
      STARTF         : IF_STARTF_Field;
      --  Read-only. Signal Frame Interrupt Flag
      SIGF           : IF_SIGF_Field;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      TXC            at 0 range 0 .. 0;
      TXBL           at 0 range 1 .. 1;
      RXDATAV        at 0 range 2 .. 2;
      RXOF           at 0 range 3 .. 3;
      RXUF           at 0 range 4 .. 4;
      TXOF           at 0 range 5 .. 5;
      PERR           at 0 range 6 .. 6;
      FERR           at 0 range 7 .. 7;
      MPAF           at 0 range 8 .. 8;
      STARTF         at 0 range 9 .. 9;
      SIGF           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype IFS_TXC_Field is Interfaces.EFM32.Bit;
   subtype IFS_RXOF_Field is Interfaces.EFM32.Bit;
   subtype IFS_RXUF_Field is Interfaces.EFM32.Bit;
   subtype IFS_TXOF_Field is Interfaces.EFM32.Bit;
   subtype IFS_PERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_FERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_MPAF_Field is Interfaces.EFM32.Bit;
   subtype IFS_STARTF_Field is Interfaces.EFM32.Bit;
   subtype IFS_SIGF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set TXC Interrupt Flag
      TXC            : IFS_TXC_Field := 16#0#;
      --  unspecified
      Reserved_1_2   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Write-only. Set RXOF Interrupt Flag
      RXOF           : IFS_RXOF_Field := 16#0#;
      --  Write-only. Set RXUF Interrupt Flag
      RXUF           : IFS_RXUF_Field := 16#0#;
      --  Write-only. Set TXOF Interrupt Flag
      TXOF           : IFS_TXOF_Field := 16#0#;
      --  Write-only. Set PERR Interrupt Flag
      PERR           : IFS_PERR_Field := 16#0#;
      --  Write-only. Set FERR Interrupt Flag
      FERR           : IFS_FERR_Field := 16#0#;
      --  Write-only. Set MPAF Interrupt Flag
      MPAF           : IFS_MPAF_Field := 16#0#;
      --  Write-only. Set STARTF Interrupt Flag
      STARTF         : IFS_STARTF_Field := 16#0#;
      --  Write-only. Set SIGF Interrupt Flag
      SIGF           : IFS_SIGF_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      TXC            at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      RXOF           at 0 range 3 .. 3;
      RXUF           at 0 range 4 .. 4;
      TXOF           at 0 range 5 .. 5;
      PERR           at 0 range 6 .. 6;
      FERR           at 0 range 7 .. 7;
      MPAF           at 0 range 8 .. 8;
      STARTF         at 0 range 9 .. 9;
      SIGF           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype IFC_TXC_Field is Interfaces.EFM32.Bit;
   subtype IFC_RXOF_Field is Interfaces.EFM32.Bit;
   subtype IFC_RXUF_Field is Interfaces.EFM32.Bit;
   subtype IFC_TXOF_Field is Interfaces.EFM32.Bit;
   subtype IFC_PERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_FERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_MPAF_Field is Interfaces.EFM32.Bit;
   subtype IFC_STARTF_Field is Interfaces.EFM32.Bit;
   subtype IFC_SIGF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear TXC Interrupt Flag
      TXC            : IFC_TXC_Field := 16#0#;
      --  unspecified
      Reserved_1_2   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Write-only. Clear RXOF Interrupt Flag
      RXOF           : IFC_RXOF_Field := 16#0#;
      --  Write-only. Clear RXUF Interrupt Flag
      RXUF           : IFC_RXUF_Field := 16#0#;
      --  Write-only. Clear TXOF Interrupt Flag
      TXOF           : IFC_TXOF_Field := 16#0#;
      --  Write-only. Clear PERR Interrupt Flag
      PERR           : IFC_PERR_Field := 16#0#;
      --  Write-only. Clear FERR Interrupt Flag
      FERR           : IFC_FERR_Field := 16#0#;
      --  Write-only. Clear MPAF Interrupt Flag
      MPAF           : IFC_MPAF_Field := 16#0#;
      --  Write-only. Clear STARTF Interrupt Flag
      STARTF         : IFC_STARTF_Field := 16#0#;
      --  Write-only. Clear SIGF Interrupt Flag
      SIGF           : IFC_SIGF_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      TXC            at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      RXOF           at 0 range 3 .. 3;
      RXUF           at 0 range 4 .. 4;
      TXOF           at 0 range 5 .. 5;
      PERR           at 0 range 6 .. 6;
      FERR           at 0 range 7 .. 7;
      MPAF           at 0 range 8 .. 8;
      STARTF         at 0 range 9 .. 9;
      SIGF           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype IEN_TXC_Field is Interfaces.EFM32.Bit;
   subtype IEN_TXBL_Field is Interfaces.EFM32.Bit;
   subtype IEN_RXDATAV_Field is Interfaces.EFM32.Bit;
   subtype IEN_RXOF_Field is Interfaces.EFM32.Bit;
   subtype IEN_RXUF_Field is Interfaces.EFM32.Bit;
   subtype IEN_TXOF_Field is Interfaces.EFM32.Bit;
   subtype IEN_PERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_FERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_MPAF_Field is Interfaces.EFM32.Bit;
   subtype IEN_STARTF_Field is Interfaces.EFM32.Bit;
   subtype IEN_SIGF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  TXC Interrupt Enable
      TXC            : IEN_TXC_Field := 16#0#;
      --  TXBL Interrupt Enable
      TXBL           : IEN_TXBL_Field := 16#0#;
      --  RXDATAV Interrupt Enable
      RXDATAV        : IEN_RXDATAV_Field := 16#0#;
      --  RXOF Interrupt Enable
      RXOF           : IEN_RXOF_Field := 16#0#;
      --  RXUF Interrupt Enable
      RXUF           : IEN_RXUF_Field := 16#0#;
      --  TXOF Interrupt Enable
      TXOF           : IEN_TXOF_Field := 16#0#;
      --  PERR Interrupt Enable
      PERR           : IEN_PERR_Field := 16#0#;
      --  FERR Interrupt Enable
      FERR           : IEN_FERR_Field := 16#0#;
      --  MPAF Interrupt Enable
      MPAF           : IEN_MPAF_Field := 16#0#;
      --  STARTF Interrupt Enable
      STARTF         : IEN_STARTF_Field := 16#0#;
      --  SIGF Interrupt Enable
      SIGF           : IEN_SIGF_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      TXC            at 0 range 0 .. 0;
      TXBL           at 0 range 1 .. 1;
      RXDATAV        at 0 range 2 .. 2;
      RXOF           at 0 range 3 .. 3;
      RXUF           at 0 range 4 .. 4;
      TXOF           at 0 range 5 .. 5;
      PERR           at 0 range 6 .. 6;
      FERR           at 0 range 7 .. 7;
      MPAF           at 0 range 8 .. 8;
      STARTF         at 0 range 9 .. 9;
      SIGF           at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype PULSECTRL_PULSEW_Field is Interfaces.EFM32.UInt4;
   subtype PULSECTRL_PULSEEN_Field is Interfaces.EFM32.Bit;
   subtype PULSECTRL_PULSEFILT_Field is Interfaces.EFM32.Bit;

   --  Pulse Control Register
   type PULSECTRL_Register is record
      --  Pulse Width
      PULSEW        : PULSECTRL_PULSEW_Field := 16#0#;
      --  Pulse Generator/Extender Enable
      PULSEEN       : PULSECTRL_PULSEEN_Field := 16#0#;
      --  Pulse Filter
      PULSEFILT     : PULSECTRL_PULSEFILT_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PULSECTRL_Register use record
      PULSEW        at 0 range 0 .. 3;
      PULSEEN       at 0 range 4 .. 4;
      PULSEFILT     at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
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
   subtype SYNCBUSY_CLKDIV_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_STARTFRAME_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_SIGFRAME_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_TXDATAX_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_TXDATA_Field is Interfaces.EFM32.Bit;
   subtype SYNCBUSY_PULSECTRL_Field is Interfaces.EFM32.Bit;

   --  Synchronization Busy Register
   type SYNCBUSY_Register is record
      --  Read-only. CTRL Register Busy
      CTRL          : SYNCBUSY_CTRL_Field;
      --  Read-only. CMD Register Busy
      CMD           : SYNCBUSY_CMD_Field;
      --  Read-only. CLKDIV Register Busy
      CLKDIV        : SYNCBUSY_CLKDIV_Field;
      --  Read-only. STARTFRAME Register Busy
      STARTFRAME    : SYNCBUSY_STARTFRAME_Field;
      --  Read-only. SIGFRAME Register Busy
      SIGFRAME      : SYNCBUSY_SIGFRAME_Field;
      --  Read-only. TXDATAX Register Busy
      TXDATAX       : SYNCBUSY_TXDATAX_Field;
      --  Read-only. TXDATA Register Busy
      TXDATA        : SYNCBUSY_TXDATA_Field;
      --  Read-only. PULSECTRL Register Busy
      PULSECTRL     : SYNCBUSY_PULSECTRL_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNCBUSY_Register use record
      CTRL          at 0 range 0 .. 0;
      CMD           at 0 range 1 .. 1;
      CLKDIV        at 0 range 2 .. 2;
      STARTFRAME    at 0 range 3 .. 3;
      SIGFRAME      at 0 range 4 .. 4;
      TXDATAX       at 0 range 5 .. 5;
      TXDATA        at 0 range 6 .. 6;
      PULSECTRL     at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ROUTEPEN_RXPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_TXPEN_Field is Interfaces.EFM32.Bit;

   --  I/O Routing Pin Enable Register
   type ROUTEPEN_Register is record
      --  RX Pin Enable
      RXPEN         : ROUTEPEN_RXPEN_Field := 16#0#;
      --  TX Pin Enable
      TXPEN         : ROUTEPEN_TXPEN_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTEPEN_Register use record
      RXPEN         at 0 range 0 .. 0;
      TXPEN         at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC0_RXLOC_Field is
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
      LOC5)
     with Size => 6;
   for ROUTELOC0_RXLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5);

   --  I/O Location
   type ROUTELOC0_TXLOC_Field is
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
      LOC5)
     with Size => 6;
   for ROUTELOC0_TXLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5);

   --  I/O Routing Location Register
   type ROUTELOC0_Register is record
      --  I/O Location
      RXLOC          : ROUTELOC0_RXLOC_Field := Interfaces.EFM32.LEUART1.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      TXLOC          : ROUTELOC0_TXLOC_Field := Interfaces.EFM32.LEUART1.LOC0;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC0_Register use record
      RXLOC          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TXLOC          at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  RX PRS Channel Select
   type INPUT_RXPRSSEL_Field is
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
   for INPUT_RXPRSSEL_Field use
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

   subtype INPUT_RXPRS_Field is Interfaces.EFM32.Bit;

   --  LEUART Input Register
   type INPUT_Register is record
      --  RX PRS Channel Select
      RXPRSSEL      : INPUT_RXPRSSEL_Field := Interfaces.EFM32.LEUART1.PRSCH0;
      --  unspecified
      Reserved_4_4  : Interfaces.EFM32.Bit := 16#0#;
      --  PRS RX Enable
      RXPRS         : INPUT_RXPRS_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INPUT_Register use record
      RXPRSSEL      at 0 range 0 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      RXPRS         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LEUART1
   type LEUART1_Peripheral is record
      --  Control Register
      CTRL       : aliased CTRL_Register;
      --  Command Register
      CMD        : aliased CMD_Register;
      --  Status Register
      STATUS     : aliased STATUS_Register;
      --  Clock Control Register
      CLKDIV     : aliased CLKDIV_Register;
      --  Start Frame Register
      STARTFRAME : aliased STARTFRAME_Register;
      --  Signal Frame Register
      SIGFRAME   : aliased SIGFRAME_Register;
      --  Receive Buffer Data Extended Register
      RXDATAX    : aliased RXDATAX_Register;
      --  Receive Buffer Data Register
      RXDATA     : aliased RXDATA_Register;
      --  Receive Buffer Data Extended Peek Register
      RXDATAXP   : aliased RXDATAXP_Register;
      --  Transmit Buffer Data Extended Register
      TXDATAX    : aliased TXDATAX_Register;
      --  Transmit Buffer Data Register
      TXDATA     : aliased TXDATA_Register;
      --  Interrupt Flag Register
      IF_k       : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS        : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC        : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN        : aliased IEN_Register;
      --  Pulse Control Register
      PULSECTRL  : aliased PULSECTRL_Register;
      --  Freeze Register
      FREEZE     : aliased FREEZE_Register;
      --  Synchronization Busy Register
      SYNCBUSY   : aliased SYNCBUSY_Register;
      --  I/O Routing Pin Enable Register
      ROUTEPEN   : aliased ROUTEPEN_Register;
      --  I/O Routing Location Register
      ROUTELOC0  : aliased ROUTELOC0_Register;
      --  LEUART Input Register
      INPUT      : aliased INPUT_Register;
   end record
     with Volatile;

   for LEUART1_Peripheral use record
      CTRL       at 16#0# range 0 .. 31;
      CMD        at 16#4# range 0 .. 31;
      STATUS     at 16#8# range 0 .. 31;
      CLKDIV     at 16#C# range 0 .. 31;
      STARTFRAME at 16#10# range 0 .. 31;
      SIGFRAME   at 16#14# range 0 .. 31;
      RXDATAX    at 16#18# range 0 .. 31;
      RXDATA     at 16#1C# range 0 .. 31;
      RXDATAXP   at 16#20# range 0 .. 31;
      TXDATAX    at 16#24# range 0 .. 31;
      TXDATA     at 16#28# range 0 .. 31;
      IF_k       at 16#2C# range 0 .. 31;
      IFS        at 16#30# range 0 .. 31;
      IFC        at 16#34# range 0 .. 31;
      IEN        at 16#38# range 0 .. 31;
      PULSECTRL  at 16#3C# range 0 .. 31;
      FREEZE     at 16#40# range 0 .. 31;
      SYNCBUSY   at 16#44# range 0 .. 31;
      ROUTEPEN   at 16#54# range 0 .. 31;
      ROUTELOC0  at 16#58# range 0 .. 31;
      INPUT      at 16#64# range 0 .. 31;
   end record;

   --  LEUART1
   LEUART1_Periph : aliased LEUART1_Peripheral
     with Import, Address => LEUART1_Base;

end Interfaces.EFM32.LEUART1;
