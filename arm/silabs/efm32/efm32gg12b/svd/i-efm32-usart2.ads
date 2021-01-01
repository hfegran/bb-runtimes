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

--  USART2
package Interfaces.EFM32.USART2 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_SYNC_Field is Interfaces.EFM32.Bit;
   subtype CTRL_LOOPBK_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CCEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_MPM_Field is Interfaces.EFM32.Bit;
   subtype CTRL_MPAB_Field is Interfaces.EFM32.Bit;

   --  Oversampling
   type CTRL_OVS_Field is
     (--  Regular UART mode with 16X oversampling in asynchronous mode
      X16,
      --  Double speed with 8X oversampling in asynchronous mode
      X8,
      --  6X oversampling in asynchronous mode
      X6,
      --  Quadruple speed with 4X oversampling in asynchronous mode
      X4)
     with Size => 2;
   for CTRL_OVS_Field use
     (X16 => 0,
      X8 => 1,
      X6 => 2,
      X4 => 3);

   subtype CTRL_CLKPOL_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CLKPHA_Field is Interfaces.EFM32.Bit;
   subtype CTRL_MSBF_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CSMA_Field is Interfaces.EFM32.Bit;
   subtype CTRL_TXBIL_Field is Interfaces.EFM32.Bit;
   subtype CTRL_RXINV_Field is Interfaces.EFM32.Bit;
   subtype CTRL_TXINV_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CSINV_Field is Interfaces.EFM32.Bit;
   subtype CTRL_AUTOCS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_AUTOTRI_Field is Interfaces.EFM32.Bit;
   subtype CTRL_SCMODE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_SCRETRANS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_SKIPPERRF_Field is Interfaces.EFM32.Bit;
   subtype CTRL_BIT8DV_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ERRSDMA_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ERRSRX_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ERRSTX_Field is Interfaces.EFM32.Bit;
   subtype CTRL_SSSEARLY_Field is Interfaces.EFM32.Bit;
   subtype CTRL_BYTESWAP_Field is Interfaces.EFM32.Bit;
   subtype CTRL_AUTOTX_Field is Interfaces.EFM32.Bit;
   subtype CTRL_MVDIS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_SMSDELAY_Field is Interfaces.EFM32.Bit;

   --  Control Register
   type CTRL_Register is record
      --  USART Synchronous Mode
      SYNC           : CTRL_SYNC_Field := 16#0#;
      --  Loopback Enable
      LOOPBK         : CTRL_LOOPBK_Field := 16#0#;
      --  Collision Check Enable
      CCEN           : CTRL_CCEN_Field := 16#0#;
      --  Multi-Processor Mode
      MPM            : CTRL_MPM_Field := 16#0#;
      --  Multi-Processor Address-Bit
      MPAB           : CTRL_MPAB_Field := 16#0#;
      --  Oversampling
      OVS            : CTRL_OVS_Field := Interfaces.EFM32.USART2.X16;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Clock Polarity
      CLKPOL         : CTRL_CLKPOL_Field := 16#0#;
      --  Clock Edge for Setup/Sample
      CLKPHA         : CTRL_CLKPHA_Field := 16#0#;
      --  Most Significant Bit First
      MSBF           : CTRL_MSBF_Field := 16#0#;
      --  Action on Slave-Select in Master Mode
      CSMA           : CTRL_CSMA_Field := 16#0#;
      --  TX Buffer Interrupt Level
      TXBIL          : CTRL_TXBIL_Field := 16#0#;
      --  Receiver Input Invert
      RXINV          : CTRL_RXINV_Field := 16#0#;
      --  Transmitter Output Invert
      TXINV          : CTRL_TXINV_Field := 16#0#;
      --  Chip Select Invert
      CSINV          : CTRL_CSINV_Field := 16#0#;
      --  Automatic Chip Select
      AUTOCS         : CTRL_AUTOCS_Field := 16#0#;
      --  Automatic TX Tristate
      AUTOTRI        : CTRL_AUTOTRI_Field := 16#0#;
      --  SmartCard Mode
      SCMODE         : CTRL_SCMODE_Field := 16#0#;
      --  SmartCard Retransmit
      SCRETRANS      : CTRL_SCRETRANS_Field := 16#0#;
      --  Skip Parity Error Frames
      SKIPPERRF      : CTRL_SKIPPERRF_Field := 16#0#;
      --  Bit 8 Default Value
      BIT8DV         : CTRL_BIT8DV_Field := 16#0#;
      --  Halt DMA on Error
      ERRSDMA        : CTRL_ERRSDMA_Field := 16#0#;
      --  Disable RX on Error
      ERRSRX         : CTRL_ERRSRX_Field := 16#0#;
      --  Disable TX on Error
      ERRSTX         : CTRL_ERRSTX_Field := 16#0#;
      --  Synchronous Slave Setup Early
      SSSEARLY       : CTRL_SSSEARLY_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Byteswap in Double Accesses
      BYTESWAP       : CTRL_BYTESWAP_Field := 16#0#;
      --  Always Transmit When RX Not Full
      AUTOTX         : CTRL_AUTOTX_Field := 16#0#;
      --  Majority Vote Disable
      MVDIS          : CTRL_MVDIS_Field := 16#0#;
      --  Synchronous Master Sample Delay
      SMSDELAY       : CTRL_SMSDELAY_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      SYNC           at 0 range 0 .. 0;
      LOOPBK         at 0 range 1 .. 1;
      CCEN           at 0 range 2 .. 2;
      MPM            at 0 range 3 .. 3;
      MPAB           at 0 range 4 .. 4;
      OVS            at 0 range 5 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CLKPOL         at 0 range 8 .. 8;
      CLKPHA         at 0 range 9 .. 9;
      MSBF           at 0 range 10 .. 10;
      CSMA           at 0 range 11 .. 11;
      TXBIL          at 0 range 12 .. 12;
      RXINV          at 0 range 13 .. 13;
      TXINV          at 0 range 14 .. 14;
      CSINV          at 0 range 15 .. 15;
      AUTOCS         at 0 range 16 .. 16;
      AUTOTRI        at 0 range 17 .. 17;
      SCMODE         at 0 range 18 .. 18;
      SCRETRANS      at 0 range 19 .. 19;
      SKIPPERRF      at 0 range 20 .. 20;
      BIT8DV         at 0 range 21 .. 21;
      ERRSDMA        at 0 range 22 .. 22;
      ERRSRX         at 0 range 23 .. 23;
      ERRSTX         at 0 range 24 .. 24;
      SSSEARLY       at 0 range 25 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      BYTESWAP       at 0 range 28 .. 28;
      AUTOTX         at 0 range 29 .. 29;
      MVDIS          at 0 range 30 .. 30;
      SMSDELAY       at 0 range 31 .. 31;
   end record;

   --  Data-Bit Mode
   type FRAME_DATABITS_Field is
     (--  Each frame contains 4 data bits
      FOUR,
      --  Each frame contains 5 data bits
      FIVE,
      --  Each frame contains 6 data bits
      SIX,
      --  Each frame contains 7 data bits
      SEVEN,
      --  Each frame contains 8 data bits
      EIGHT,
      --  Each frame contains 9 data bits
      NINE,
      --  Each frame contains 10 data bits
      TEN,
      --  Each frame contains 11 data bits
      ELEVEN,
      --  Each frame contains 12 data bits
      TWELVE,
      --  Each frame contains 13 data bits
      THIRTEEN,
      --  Each frame contains 14 data bits
      FOURTEEN,
      --  Each frame contains 15 data bits
      FIFTEEN,
      --  Each frame contains 16 data bits
      SIXTEEN)
     with Size => 4;
   for FRAME_DATABITS_Field use
     (FOUR => 1,
      FIVE => 2,
      SIX => 3,
      SEVEN => 4,
      EIGHT => 5,
      NINE => 6,
      TEN => 7,
      ELEVEN => 8,
      TWELVE => 9,
      THIRTEEN => 10,
      FOURTEEN => 11,
      FIFTEEN => 12,
      SIXTEEN => 13);

   --  Parity-Bit Mode
   type FRAME_PARITY_Field is
     (--  Parity bits are not used
      NONE,
      --  Even parity are used. Parity bits are automatically generated and checked
--  by hardware.
      EVEN,
      --  Odd parity is used. Parity bits are automatically generated and checked by
--  hardware.
      ODD)
     with Size => 2;
   for FRAME_PARITY_Field use
     (NONE => 0,
      EVEN => 2,
      ODD => 3);

   --  Stop-Bit Mode
   type FRAME_STOPBITS_Field is
     (--  The transmitter generates a half stop bit. Stop-bits are not verified by
--  receiver
      HALF,
      --  One stop bit is generated and verified
      ONE,
      --  The transmitter generates one and a half stop bit. The receiver verifies
--  the first stop bit
      ONEANDAHALF,
      --  The transmitter generates two stop bits. The receiver checks the first
--  stop-bit only
      TWO)
     with Size => 2;
   for FRAME_STOPBITS_Field use
     (HALF => 0,
      ONE => 1,
      ONEANDAHALF => 2,
      TWO => 3);

   --  USART Frame Format Register
   type FRAME_Register is record
      --  Data-Bit Mode
      DATABITS       : FRAME_DATABITS_Field := Interfaces.EFM32.USART2.EIGHT;
      --  unspecified
      Reserved_4_7   : Interfaces.EFM32.UInt4 := 16#0#;
      --  Parity-Bit Mode
      PARITY         : FRAME_PARITY_Field := Interfaces.EFM32.USART2.NONE;
      --  unspecified
      Reserved_10_11 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Stop-Bit Mode
      STOPBITS       : FRAME_STOPBITS_Field := Interfaces.EFM32.USART2.ONE;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FRAME_Register use record
      DATABITS       at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      PARITY         at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      STOPBITS       at 0 range 12 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype TRIGCTRL_RXTEN_Field is Interfaces.EFM32.Bit;
   subtype TRIGCTRL_TXTEN_Field is Interfaces.EFM32.Bit;
   subtype TRIGCTRL_AUTOTXTEN_Field is Interfaces.EFM32.Bit;
   subtype TRIGCTRL_TXARX0EN_Field is Interfaces.EFM32.Bit;
   subtype TRIGCTRL_TXARX1EN_Field is Interfaces.EFM32.Bit;
   subtype TRIGCTRL_TXARX2EN_Field is Interfaces.EFM32.Bit;
   subtype TRIGCTRL_RXATX0EN_Field is Interfaces.EFM32.Bit;
   subtype TRIGCTRL_RXATX1EN_Field is Interfaces.EFM32.Bit;
   subtype TRIGCTRL_RXATX2EN_Field is Interfaces.EFM32.Bit;

   --  Trigger PRS Channel Select
   type TRIGCTRL_TSEL_Field is
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
   for TRIGCTRL_TSEL_Field use
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

   --  USART Trigger Control Register
   type TRIGCTRL_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.EFM32.UInt4 := 16#0#;
      --  Receive Trigger Enable
      RXTEN          : TRIGCTRL_RXTEN_Field := 16#0#;
      --  Transmit Trigger Enable
      TXTEN          : TRIGCTRL_TXTEN_Field := 16#0#;
      --  AUTOTX Trigger Enable
      AUTOTXTEN      : TRIGCTRL_AUTOTXTEN_Field := 16#0#;
      --  Enable Transmit Trigger After RX End of Frame Plus TCMP0VAL
      TXARX0EN       : TRIGCTRL_TXARX0EN_Field := 16#0#;
      --  Enable Transmit Trigger After RX End of Frame Plus TCMP1VAL
      TXARX1EN       : TRIGCTRL_TXARX1EN_Field := 16#0#;
      --  Enable Transmit Trigger After RX End of Frame Plus TCMP2VAL
      TXARX2EN       : TRIGCTRL_TXARX2EN_Field := 16#0#;
      --  Enable Receive Trigger After TX End of Frame Plus TCMPVAL0 Baud-times
      RXATX0EN       : TRIGCTRL_RXATX0EN_Field := 16#0#;
      --  Enable Receive Trigger After TX End of Frame Plus TCMPVAL1 Baud-times
      RXATX1EN       : TRIGCTRL_RXATX1EN_Field := 16#0#;
      --  Enable Receive Trigger After TX End of Frame Plus TCMPVAL2 Baud-times
      RXATX2EN       : TRIGCTRL_RXATX2EN_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Trigger PRS Channel Select
      TSEL           : TRIGCTRL_TSEL_Field := Interfaces.EFM32.USART2.PRSCH0;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TRIGCTRL_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      RXTEN          at 0 range 4 .. 4;
      TXTEN          at 0 range 5 .. 5;
      AUTOTXTEN      at 0 range 6 .. 6;
      TXARX0EN       at 0 range 7 .. 7;
      TXARX1EN       at 0 range 8 .. 8;
      TXARX2EN       at 0 range 9 .. 9;
      RXATX0EN       at 0 range 10 .. 10;
      RXATX1EN       at 0 range 11 .. 11;
      RXATX2EN       at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      TSEL           at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype CMD_RXEN_Field is Interfaces.EFM32.Bit;
   subtype CMD_RXDIS_Field is Interfaces.EFM32.Bit;
   subtype CMD_TXEN_Field is Interfaces.EFM32.Bit;
   subtype CMD_TXDIS_Field is Interfaces.EFM32.Bit;
   subtype CMD_MASTEREN_Field is Interfaces.EFM32.Bit;
   subtype CMD_MASTERDIS_Field is Interfaces.EFM32.Bit;
   subtype CMD_RXBLOCKEN_Field is Interfaces.EFM32.Bit;
   subtype CMD_RXBLOCKDIS_Field is Interfaces.EFM32.Bit;
   subtype CMD_TXTRIEN_Field is Interfaces.EFM32.Bit;
   subtype CMD_TXTRIDIS_Field is Interfaces.EFM32.Bit;
   subtype CMD_CLEARTX_Field is Interfaces.EFM32.Bit;
   subtype CMD_CLEARRX_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Receiver Enable
      RXEN           : CMD_RXEN_Field := 16#0#;
      --  Write-only. Receiver Disable
      RXDIS          : CMD_RXDIS_Field := 16#0#;
      --  Write-only. Transmitter Enable
      TXEN           : CMD_TXEN_Field := 16#0#;
      --  Write-only. Transmitter Disable
      TXDIS          : CMD_TXDIS_Field := 16#0#;
      --  Write-only. Master Enable
      MASTEREN       : CMD_MASTEREN_Field := 16#0#;
      --  Write-only. Master Disable
      MASTERDIS      : CMD_MASTERDIS_Field := 16#0#;
      --  Write-only. Receiver Block Enable
      RXBLOCKEN      : CMD_RXBLOCKEN_Field := 16#0#;
      --  Write-only. Receiver Block Disable
      RXBLOCKDIS     : CMD_RXBLOCKDIS_Field := 16#0#;
      --  Write-only. Transmitter Tristate Enable
      TXTRIEN        : CMD_TXTRIEN_Field := 16#0#;
      --  Write-only. Transmitter Tristate Disable
      TXTRIDIS       : CMD_TXTRIDIS_Field := 16#0#;
      --  Write-only. Clear TX
      CLEARTX        : CMD_CLEARTX_Field := 16#0#;
      --  Write-only. Clear RX
      CLEARRX        : CMD_CLEARRX_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      RXEN           at 0 range 0 .. 0;
      RXDIS          at 0 range 1 .. 1;
      TXEN           at 0 range 2 .. 2;
      TXDIS          at 0 range 3 .. 3;
      MASTEREN       at 0 range 4 .. 4;
      MASTERDIS      at 0 range 5 .. 5;
      RXBLOCKEN      at 0 range 6 .. 6;
      RXBLOCKDIS     at 0 range 7 .. 7;
      TXTRIEN        at 0 range 8 .. 8;
      TXTRIDIS       at 0 range 9 .. 9;
      CLEARTX        at 0 range 10 .. 10;
      CLEARRX        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype STATUS_RXENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TXENS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_MASTER_Field is Interfaces.EFM32.Bit;
   subtype STATUS_RXBLOCK_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TXTRI_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TXC_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TXBL_Field is Interfaces.EFM32.Bit;
   subtype STATUS_RXDATAV_Field is Interfaces.EFM32.Bit;
   subtype STATUS_RXFULL_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TXBDRIGHT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TXBSRIGHT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_RXDATAVRIGHT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_RXFULLRIGHT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TXIDLE_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TIMERRESTARTED_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TXBUFCNT_Field is Interfaces.EFM32.UInt2;

   --  USART Status Register
   type STATUS_Register is record
      --  Read-only. Receiver Enable Status
      RXENS          : STATUS_RXENS_Field;
      --  Read-only. Transmitter Enable Status
      TXENS          : STATUS_TXENS_Field;
      --  Read-only. SPI Master Mode
      MASTER         : STATUS_MASTER_Field;
      --  Read-only. Block Incoming Data
      RXBLOCK        : STATUS_RXBLOCK_Field;
      --  Read-only. Transmitter Tristated
      TXTRI          : STATUS_TXTRI_Field;
      --  Read-only. TX Complete
      TXC            : STATUS_TXC_Field;
      --  Read-only. TX Buffer Level
      TXBL           : STATUS_TXBL_Field;
      --  Read-only. RX Data Valid
      RXDATAV        : STATUS_RXDATAV_Field;
      --  Read-only. RX FIFO Full
      RXFULL         : STATUS_RXFULL_Field;
      --  Read-only. TX Buffer Expects Double Right Data
      TXBDRIGHT      : STATUS_TXBDRIGHT_Field;
      --  Read-only. TX Buffer Expects Single Right Data
      TXBSRIGHT      : STATUS_TXBSRIGHT_Field;
      --  Read-only. RX Data Right
      RXDATAVRIGHT   : STATUS_RXDATAVRIGHT_Field;
      --  Read-only. RX Full of Right Data
      RXFULLRIGHT    : STATUS_RXFULLRIGHT_Field;
      --  Read-only. TX Idle
      TXIDLE         : STATUS_TXIDLE_Field;
      --  Read-only. The USART Timer Restarted Itself
      TIMERRESTARTED : STATUS_TIMERRESTARTED_Field;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit;
      --  Read-only. TX Buffer Count
      TXBUFCNT       : STATUS_TXBUFCNT_Field;
      --  unspecified
      Reserved_18_31 : Interfaces.EFM32.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      RXENS          at 0 range 0 .. 0;
      TXENS          at 0 range 1 .. 1;
      MASTER         at 0 range 2 .. 2;
      RXBLOCK        at 0 range 3 .. 3;
      TXTRI          at 0 range 4 .. 4;
      TXC            at 0 range 5 .. 5;
      TXBL           at 0 range 6 .. 6;
      RXDATAV        at 0 range 7 .. 7;
      RXFULL         at 0 range 8 .. 8;
      TXBDRIGHT      at 0 range 9 .. 9;
      TXBSRIGHT      at 0 range 10 .. 10;
      RXDATAVRIGHT   at 0 range 11 .. 11;
      RXFULLRIGHT    at 0 range 12 .. 12;
      TXIDLE         at 0 range 13 .. 13;
      TIMERRESTARTED at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      TXBUFCNT       at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype CLKDIV_DIV_Field is Interfaces.EFM32.UInt20;
   subtype CLKDIV_AUTOBAUDEN_Field is Interfaces.EFM32.Bit;

   --  Clock Control Register
   type CLKDIV_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Fractional Clock Divider
      DIV            : CLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_23_30 : Interfaces.EFM32.Byte := 16#0#;
      --  AUTOBAUD Detection Enable
      AUTOBAUDEN     : CLKDIV_AUTOBAUDEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKDIV_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      DIV            at 0 range 3 .. 22;
      Reserved_23_30 at 0 range 23 .. 30;
      AUTOBAUDEN     at 0 range 31 .. 31;
   end record;

   subtype RXDATAX_RXDATA_Field is Interfaces.EFM32.UInt9;
   subtype RXDATAX_PERR_Field is Interfaces.EFM32.Bit;
   subtype RXDATAX_FERR_Field is Interfaces.EFM32.Bit;

   --  RX Buffer Data Extended Register
   type RXDATAX_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. RX Data
      RXDATA         : RXDATAX_RXDATA_Field;
      --  unspecified
      Reserved_9_13  : Interfaces.EFM32.UInt5;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Data Parity Error
      PERR           : RXDATAX_PERR_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Data Framing Error
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

   --  RX Buffer Data Register
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

   subtype RXDOUBLEX_RXDATA0_Field is Interfaces.EFM32.UInt9;
   subtype RXDOUBLEX_PERR0_Field is Interfaces.EFM32.Bit;
   subtype RXDOUBLEX_FERR0_Field is Interfaces.EFM32.Bit;
   subtype RXDOUBLEX_RXDATA1_Field is Interfaces.EFM32.UInt9;
   subtype RXDOUBLEX_PERR1_Field is Interfaces.EFM32.Bit;
   subtype RXDOUBLEX_FERR1_Field is Interfaces.EFM32.Bit;

   --  RX Buffer Double Data Extended Register
   type RXDOUBLEX_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. RX Data 0
      RXDATA0        : RXDOUBLEX_RXDATA0_Field;
      --  unspecified
      Reserved_9_13  : Interfaces.EFM32.UInt5;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Data Parity Error 0
      PERR0          : RXDOUBLEX_PERR0_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Data Framing Error 0
      FERR0          : RXDOUBLEX_FERR0_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. RX Data 1
      RXDATA1        : RXDOUBLEX_RXDATA1_Field;
      --  unspecified
      Reserved_25_29 : Interfaces.EFM32.UInt5;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Data Parity Error 1
      PERR1          : RXDOUBLEX_PERR1_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Data Framing Error 1
      FERR1          : RXDOUBLEX_FERR1_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDOUBLEX_Register use record
      RXDATA0        at 0 range 0 .. 8;
      Reserved_9_13  at 0 range 9 .. 13;
      PERR0          at 0 range 14 .. 14;
      FERR0          at 0 range 15 .. 15;
      RXDATA1        at 0 range 16 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      PERR1          at 0 range 30 .. 30;
      FERR1          at 0 range 31 .. 31;
   end record;

   --  RXDOUBLE_RXDATA array element
   subtype RXDOUBLE_RXDATA_Element is Interfaces.EFM32.Byte;

   --  RXDOUBLE_RXDATA array
   type RXDOUBLE_RXDATA_Field_Array is array (0 .. 1)
     of RXDOUBLE_RXDATA_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for RXDOUBLE_RXDATA
   type RXDOUBLE_RXDATA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RXDATA as a value
            Val : Interfaces.EFM32.UInt16;
         when True =>
            --  RXDATA as an array
            Arr : RXDOUBLE_RXDATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for RXDOUBLE_RXDATA_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  RX FIFO Double Data Register
   type RXDOUBLE_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. RX Data 0
      RXDATA         : RXDOUBLE_RXDATA_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDOUBLE_Register use record
      RXDATA         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype RXDATAXP_RXDATAP_Field is Interfaces.EFM32.UInt9;
   subtype RXDATAXP_PERRP_Field is Interfaces.EFM32.Bit;
   subtype RXDATAXP_FERRP_Field is Interfaces.EFM32.Bit;

   --  RX Buffer Data Extended Peek Register
   type RXDATAXP_Register is record
      --  Read-only. RX Data Peek
      RXDATAP        : RXDATAXP_RXDATAP_Field;
      --  unspecified
      Reserved_9_13  : Interfaces.EFM32.UInt5;
      --  Read-only. Data Parity Error Peek
      PERRP          : RXDATAXP_PERRP_Field;
      --  Read-only. Data Framing Error Peek
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

   subtype RXDOUBLEXP_RXDATAP0_Field is Interfaces.EFM32.UInt9;
   subtype RXDOUBLEXP_PERRP0_Field is Interfaces.EFM32.Bit;
   subtype RXDOUBLEXP_FERRP0_Field is Interfaces.EFM32.Bit;
   subtype RXDOUBLEXP_RXDATAP1_Field is Interfaces.EFM32.UInt9;
   subtype RXDOUBLEXP_PERRP1_Field is Interfaces.EFM32.Bit;
   subtype RXDOUBLEXP_FERRP1_Field is Interfaces.EFM32.Bit;

   --  RX Buffer Double Data Extended Peek Register
   type RXDOUBLEXP_Register is record
      --  Read-only. RX Data 0 Peek
      RXDATAP0       : RXDOUBLEXP_RXDATAP0_Field;
      --  unspecified
      Reserved_9_13  : Interfaces.EFM32.UInt5;
      --  Read-only. Data Parity Error 0 Peek
      PERRP0         : RXDOUBLEXP_PERRP0_Field;
      --  Read-only. Data Framing Error 0 Peek
      FERRP0         : RXDOUBLEXP_FERRP0_Field;
      --  Read-only. RX Data 1 Peek
      RXDATAP1       : RXDOUBLEXP_RXDATAP1_Field;
      --  unspecified
      Reserved_25_29 : Interfaces.EFM32.UInt5;
      --  Read-only. Data Parity Error 1 Peek
      PERRP1         : RXDOUBLEXP_PERRP1_Field;
      --  Read-only. Data Framing Error 1 Peek
      FERRP1         : RXDOUBLEXP_FERRP1_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDOUBLEXP_Register use record
      RXDATAP0       at 0 range 0 .. 8;
      Reserved_9_13  at 0 range 9 .. 13;
      PERRP0         at 0 range 14 .. 14;
      FERRP0         at 0 range 15 .. 15;
      RXDATAP1       at 0 range 16 .. 24;
      Reserved_25_29 at 0 range 25 .. 29;
      PERRP1         at 0 range 30 .. 30;
      FERRP1         at 0 range 31 .. 31;
   end record;

   subtype TXDATAX_TXDATAX_Field is Interfaces.EFM32.UInt9;
   subtype TXDATAX_UBRXAT_Field is Interfaces.EFM32.Bit;
   subtype TXDATAX_TXTRIAT_Field is Interfaces.EFM32.Bit;
   subtype TXDATAX_TXBREAK_Field is Interfaces.EFM32.Bit;
   subtype TXDATAX_TXDISAT_Field is Interfaces.EFM32.Bit;
   subtype TXDATAX_RXENAT_Field is Interfaces.EFM32.Bit;

   --  TX Buffer Data Extended Register
   type TXDATAX_Register is record
      --  TX Data
      TXDATAX        : TXDATAX_TXDATAX_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Unblock RX After Transmission
      UBRXAT         : TXDATAX_UBRXAT_Field := 16#0#;
      --  Set TXTRI After Transmission
      TXTRIAT        : TXDATAX_TXTRIAT_Field := 16#0#;
      --  Transmit Data as Break
      TXBREAK        : TXDATAX_TXBREAK_Field := 16#0#;
      --  Clear TXEN After Transmission
      TXDISAT        : TXDATAX_TXDISAT_Field := 16#0#;
      --  Enable RX After Transmission
      RXENAT         : TXDATAX_RXENAT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDATAX_Register use record
      TXDATAX        at 0 range 0 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      UBRXAT         at 0 range 11 .. 11;
      TXTRIAT        at 0 range 12 .. 12;
      TXBREAK        at 0 range 13 .. 13;
      TXDISAT        at 0 range 14 .. 14;
      RXENAT         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TXDATA_TXDATA_Field is Interfaces.EFM32.Byte;

   --  TX Buffer Data Register
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

   subtype TXDOUBLEX_TXDATA0_Field is Interfaces.EFM32.UInt9;
   subtype TXDOUBLEX_UBRXAT0_Field is Interfaces.EFM32.Bit;
   subtype TXDOUBLEX_TXTRIAT0_Field is Interfaces.EFM32.Bit;
   subtype TXDOUBLEX_TXBREAK0_Field is Interfaces.EFM32.Bit;
   subtype TXDOUBLEX_TXDISAT0_Field is Interfaces.EFM32.Bit;
   subtype TXDOUBLEX_RXENAT0_Field is Interfaces.EFM32.Bit;
   subtype TXDOUBLEX_TXDATA1_Field is Interfaces.EFM32.UInt9;
   subtype TXDOUBLEX_UBRXAT1_Field is Interfaces.EFM32.Bit;
   subtype TXDOUBLEX_TXTRIAT1_Field is Interfaces.EFM32.Bit;
   subtype TXDOUBLEX_TXBREAK1_Field is Interfaces.EFM32.Bit;
   subtype TXDOUBLEX_TXDISAT1_Field is Interfaces.EFM32.Bit;
   subtype TXDOUBLEX_RXENAT1_Field is Interfaces.EFM32.Bit;

   --  TX Buffer Double Data Extended Register
   type TXDOUBLEX_Register is record
      --  TX Data
      TXDATA0        : TXDOUBLEX_TXDATA0_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Unblock RX After Transmission
      UBRXAT0        : TXDOUBLEX_UBRXAT0_Field := 16#0#;
      --  Set TXTRI After Transmission
      TXTRIAT0       : TXDOUBLEX_TXTRIAT0_Field := 16#0#;
      --  Transmit Data as Break
      TXBREAK0       : TXDOUBLEX_TXBREAK0_Field := 16#0#;
      --  Clear TXEN After Transmission
      TXDISAT0       : TXDOUBLEX_TXDISAT0_Field := 16#0#;
      --  Enable RX After Transmission
      RXENAT0        : TXDOUBLEX_RXENAT0_Field := 16#0#;
      --  TX Data
      TXDATA1        : TXDOUBLEX_TXDATA1_Field := 16#0#;
      --  unspecified
      Reserved_25_26 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Unblock RX After Transmission
      UBRXAT1        : TXDOUBLEX_UBRXAT1_Field := 16#0#;
      --  Set TXTRI After Transmission
      TXTRIAT1       : TXDOUBLEX_TXTRIAT1_Field := 16#0#;
      --  Transmit Data as Break
      TXBREAK1       : TXDOUBLEX_TXBREAK1_Field := 16#0#;
      --  Clear TXEN After Transmission
      TXDISAT1       : TXDOUBLEX_TXDISAT1_Field := 16#0#;
      --  Enable RX After Transmission
      RXENAT1        : TXDOUBLEX_RXENAT1_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDOUBLEX_Register use record
      TXDATA0        at 0 range 0 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      UBRXAT0        at 0 range 11 .. 11;
      TXTRIAT0       at 0 range 12 .. 12;
      TXBREAK0       at 0 range 13 .. 13;
      TXDISAT0       at 0 range 14 .. 14;
      RXENAT0        at 0 range 15 .. 15;
      TXDATA1        at 0 range 16 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      UBRXAT1        at 0 range 27 .. 27;
      TXTRIAT1       at 0 range 28 .. 28;
      TXBREAK1       at 0 range 29 .. 29;
      TXDISAT1       at 0 range 30 .. 30;
      RXENAT1        at 0 range 31 .. 31;
   end record;

   --  TXDOUBLE_TXDATA array element
   subtype TXDOUBLE_TXDATA_Element is Interfaces.EFM32.Byte;

   --  TXDOUBLE_TXDATA array
   type TXDOUBLE_TXDATA_Field_Array is array (0 .. 1)
     of TXDOUBLE_TXDATA_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for TXDOUBLE_TXDATA
   type TXDOUBLE_TXDATA_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TXDATA as a value
            Val : Interfaces.EFM32.UInt16;
         when True =>
            --  TXDATA as an array
            Arr : TXDOUBLE_TXDATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for TXDOUBLE_TXDATA_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  TX Buffer Double Data Register
   type TXDOUBLE_Register is record
      --  TX Data
      TXDATA         : TXDOUBLE_TXDATA_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TXDOUBLE_Register use record
      TXDATA         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IF_TXC_Field is Interfaces.EFM32.Bit;
   subtype IF_TXBL_Field is Interfaces.EFM32.Bit;
   subtype IF_RXDATAV_Field is Interfaces.EFM32.Bit;
   subtype IF_RXFULL_Field is Interfaces.EFM32.Bit;
   subtype IF_RXOF_Field is Interfaces.EFM32.Bit;
   subtype IF_RXUF_Field is Interfaces.EFM32.Bit;
   subtype IF_TXOF_Field is Interfaces.EFM32.Bit;
   subtype IF_TXUF_Field is Interfaces.EFM32.Bit;
   subtype IF_PERR_Field is Interfaces.EFM32.Bit;
   subtype IF_FERR_Field is Interfaces.EFM32.Bit;
   subtype IF_MPAF_Field is Interfaces.EFM32.Bit;
   subtype IF_SSM_Field is Interfaces.EFM32.Bit;
   subtype IF_CCF_Field is Interfaces.EFM32.Bit;
   subtype IF_TXIDLE_Field is Interfaces.EFM32.Bit;
   --  IF_TCMP array element
   subtype IF_TCMP_Element is Interfaces.EFM32.Bit;

   --  IF_TCMP array
   type IF_TCMP_Field_Array is array (0 .. 2) of IF_TCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for IF_TCMP
   type IF_TCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCMP as a value
            Val : Interfaces.EFM32.UInt3;
         when True =>
            --  TCMP as an array
            Arr : IF_TCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for IF_TCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. TX Complete Interrupt Flag
      TXC            : IF_TXC_Field;
      --  Read-only. TX Buffer Level Interrupt Flag
      TXBL           : IF_TXBL_Field;
      --  Read-only. RX Data Valid Interrupt Flag
      RXDATAV        : IF_RXDATAV_Field;
      --  Read-only. RX Buffer Full Interrupt Flag
      RXFULL         : IF_RXFULL_Field;
      --  Read-only. RX Overflow Interrupt Flag
      RXOF           : IF_RXOF_Field;
      --  Read-only. RX Underflow Interrupt Flag
      RXUF           : IF_RXUF_Field;
      --  Read-only. TX Overflow Interrupt Flag
      TXOF           : IF_TXOF_Field;
      --  Read-only. TX Underflow Interrupt Flag
      TXUF           : IF_TXUF_Field;
      --  Read-only. Parity Error Interrupt Flag
      PERR           : IF_PERR_Field;
      --  Read-only. Framing Error Interrupt Flag
      FERR           : IF_FERR_Field;
      --  Read-only. Multi-Processor Address Frame Interrupt Flag
      MPAF           : IF_MPAF_Field;
      --  Read-only. Slave-Select in Master Mode Interrupt Flag
      SSM            : IF_SSM_Field;
      --  Read-only. Collision Check Fail Interrupt Flag
      CCF            : IF_CCF_Field;
      --  Read-only. TX Idle Interrupt Flag
      TXIDLE         : IF_TXIDLE_Field;
      --  Read-only. Timer Comparator 0 Interrupt Flag
      TCMP           : IF_TCMP_Field;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      TXC            at 0 range 0 .. 0;
      TXBL           at 0 range 1 .. 1;
      RXDATAV        at 0 range 2 .. 2;
      RXFULL         at 0 range 3 .. 3;
      RXOF           at 0 range 4 .. 4;
      RXUF           at 0 range 5 .. 5;
      TXOF           at 0 range 6 .. 6;
      TXUF           at 0 range 7 .. 7;
      PERR           at 0 range 8 .. 8;
      FERR           at 0 range 9 .. 9;
      MPAF           at 0 range 10 .. 10;
      SSM            at 0 range 11 .. 11;
      CCF            at 0 range 12 .. 12;
      TXIDLE         at 0 range 13 .. 13;
      TCMP           at 0 range 14 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype IFS_TXC_Field is Interfaces.EFM32.Bit;
   subtype IFS_RXFULL_Field is Interfaces.EFM32.Bit;
   subtype IFS_RXOF_Field is Interfaces.EFM32.Bit;
   subtype IFS_RXUF_Field is Interfaces.EFM32.Bit;
   subtype IFS_TXOF_Field is Interfaces.EFM32.Bit;
   subtype IFS_TXUF_Field is Interfaces.EFM32.Bit;
   subtype IFS_PERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_FERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_MPAF_Field is Interfaces.EFM32.Bit;
   subtype IFS_SSM_Field is Interfaces.EFM32.Bit;
   subtype IFS_CCF_Field is Interfaces.EFM32.Bit;
   subtype IFS_TXIDLE_Field is Interfaces.EFM32.Bit;
   --  IFS_TCMP array element
   subtype IFS_TCMP_Element is Interfaces.EFM32.Bit;

   --  IFS_TCMP array
   type IFS_TCMP_Field_Array is array (0 .. 2) of IFS_TCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for IFS_TCMP
   type IFS_TCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCMP as a value
            Val : Interfaces.EFM32.UInt3;
         when True =>
            --  TCMP as an array
            Arr : IFS_TCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for IFS_TCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set TXC Interrupt Flag
      TXC            : IFS_TXC_Field := 16#0#;
      --  unspecified
      Reserved_1_2   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Write-only. Set RXFULL Interrupt Flag
      RXFULL         : IFS_RXFULL_Field := 16#0#;
      --  Write-only. Set RXOF Interrupt Flag
      RXOF           : IFS_RXOF_Field := 16#0#;
      --  Write-only. Set RXUF Interrupt Flag
      RXUF           : IFS_RXUF_Field := 16#0#;
      --  Write-only. Set TXOF Interrupt Flag
      TXOF           : IFS_TXOF_Field := 16#0#;
      --  Write-only. Set TXUF Interrupt Flag
      TXUF           : IFS_TXUF_Field := 16#0#;
      --  Write-only. Set PERR Interrupt Flag
      PERR           : IFS_PERR_Field := 16#0#;
      --  Write-only. Set FERR Interrupt Flag
      FERR           : IFS_FERR_Field := 16#0#;
      --  Write-only. Set MPAF Interrupt Flag
      MPAF           : IFS_MPAF_Field := 16#0#;
      --  Write-only. Set SSM Interrupt Flag
      SSM            : IFS_SSM_Field := 16#0#;
      --  Write-only. Set CCF Interrupt Flag
      CCF            : IFS_CCF_Field := 16#0#;
      --  Write-only. Set TXIDLE Interrupt Flag
      TXIDLE         : IFS_TXIDLE_Field := 16#0#;
      --  Write-only. Set TCMP0 Interrupt Flag
      TCMP           : IFS_TCMP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      TXC            at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      RXFULL         at 0 range 3 .. 3;
      RXOF           at 0 range 4 .. 4;
      RXUF           at 0 range 5 .. 5;
      TXOF           at 0 range 6 .. 6;
      TXUF           at 0 range 7 .. 7;
      PERR           at 0 range 8 .. 8;
      FERR           at 0 range 9 .. 9;
      MPAF           at 0 range 10 .. 10;
      SSM            at 0 range 11 .. 11;
      CCF            at 0 range 12 .. 12;
      TXIDLE         at 0 range 13 .. 13;
      TCMP           at 0 range 14 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype IFC_TXC_Field is Interfaces.EFM32.Bit;
   subtype IFC_RXFULL_Field is Interfaces.EFM32.Bit;
   subtype IFC_RXOF_Field is Interfaces.EFM32.Bit;
   subtype IFC_RXUF_Field is Interfaces.EFM32.Bit;
   subtype IFC_TXOF_Field is Interfaces.EFM32.Bit;
   subtype IFC_TXUF_Field is Interfaces.EFM32.Bit;
   subtype IFC_PERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_FERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_MPAF_Field is Interfaces.EFM32.Bit;
   subtype IFC_SSM_Field is Interfaces.EFM32.Bit;
   subtype IFC_CCF_Field is Interfaces.EFM32.Bit;
   subtype IFC_TXIDLE_Field is Interfaces.EFM32.Bit;
   --  IFC_TCMP array element
   subtype IFC_TCMP_Element is Interfaces.EFM32.Bit;

   --  IFC_TCMP array
   type IFC_TCMP_Field_Array is array (0 .. 2) of IFC_TCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for IFC_TCMP
   type IFC_TCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCMP as a value
            Val : Interfaces.EFM32.UInt3;
         when True =>
            --  TCMP as an array
            Arr : IFC_TCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for IFC_TCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear TXC Interrupt Flag
      TXC            : IFC_TXC_Field := 16#0#;
      --  unspecified
      Reserved_1_2   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Write-only. Clear RXFULL Interrupt Flag
      RXFULL         : IFC_RXFULL_Field := 16#0#;
      --  Write-only. Clear RXOF Interrupt Flag
      RXOF           : IFC_RXOF_Field := 16#0#;
      --  Write-only. Clear RXUF Interrupt Flag
      RXUF           : IFC_RXUF_Field := 16#0#;
      --  Write-only. Clear TXOF Interrupt Flag
      TXOF           : IFC_TXOF_Field := 16#0#;
      --  Write-only. Clear TXUF Interrupt Flag
      TXUF           : IFC_TXUF_Field := 16#0#;
      --  Write-only. Clear PERR Interrupt Flag
      PERR           : IFC_PERR_Field := 16#0#;
      --  Write-only. Clear FERR Interrupt Flag
      FERR           : IFC_FERR_Field := 16#0#;
      --  Write-only. Clear MPAF Interrupt Flag
      MPAF           : IFC_MPAF_Field := 16#0#;
      --  Write-only. Clear SSM Interrupt Flag
      SSM            : IFC_SSM_Field := 16#0#;
      --  Write-only. Clear CCF Interrupt Flag
      CCF            : IFC_CCF_Field := 16#0#;
      --  Write-only. Clear TXIDLE Interrupt Flag
      TXIDLE         : IFC_TXIDLE_Field := 16#0#;
      --  Write-only. Clear TCMP0 Interrupt Flag
      TCMP           : IFC_TCMP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      TXC            at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      RXFULL         at 0 range 3 .. 3;
      RXOF           at 0 range 4 .. 4;
      RXUF           at 0 range 5 .. 5;
      TXOF           at 0 range 6 .. 6;
      TXUF           at 0 range 7 .. 7;
      PERR           at 0 range 8 .. 8;
      FERR           at 0 range 9 .. 9;
      MPAF           at 0 range 10 .. 10;
      SSM            at 0 range 11 .. 11;
      CCF            at 0 range 12 .. 12;
      TXIDLE         at 0 range 13 .. 13;
      TCMP           at 0 range 14 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype IEN_TXC_Field is Interfaces.EFM32.Bit;
   subtype IEN_TXBL_Field is Interfaces.EFM32.Bit;
   subtype IEN_RXDATAV_Field is Interfaces.EFM32.Bit;
   subtype IEN_RXFULL_Field is Interfaces.EFM32.Bit;
   subtype IEN_RXOF_Field is Interfaces.EFM32.Bit;
   subtype IEN_RXUF_Field is Interfaces.EFM32.Bit;
   subtype IEN_TXOF_Field is Interfaces.EFM32.Bit;
   subtype IEN_TXUF_Field is Interfaces.EFM32.Bit;
   subtype IEN_PERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_FERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_MPAF_Field is Interfaces.EFM32.Bit;
   subtype IEN_SSM_Field is Interfaces.EFM32.Bit;
   subtype IEN_CCF_Field is Interfaces.EFM32.Bit;
   subtype IEN_TXIDLE_Field is Interfaces.EFM32.Bit;
   --  IEN_TCMP array element
   subtype IEN_TCMP_Element is Interfaces.EFM32.Bit;

   --  IEN_TCMP array
   type IEN_TCMP_Field_Array is array (0 .. 2) of IEN_TCMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for IEN_TCMP
   type IEN_TCMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TCMP as a value
            Val : Interfaces.EFM32.UInt3;
         when True =>
            --  TCMP as an array
            Arr : IEN_TCMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for IEN_TCMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  TXC Interrupt Enable
      TXC            : IEN_TXC_Field := 16#0#;
      --  TXBL Interrupt Enable
      TXBL           : IEN_TXBL_Field := 16#0#;
      --  RXDATAV Interrupt Enable
      RXDATAV        : IEN_RXDATAV_Field := 16#0#;
      --  RXFULL Interrupt Enable
      RXFULL         : IEN_RXFULL_Field := 16#0#;
      --  RXOF Interrupt Enable
      RXOF           : IEN_RXOF_Field := 16#0#;
      --  RXUF Interrupt Enable
      RXUF           : IEN_RXUF_Field := 16#0#;
      --  TXOF Interrupt Enable
      TXOF           : IEN_TXOF_Field := 16#0#;
      --  TXUF Interrupt Enable
      TXUF           : IEN_TXUF_Field := 16#0#;
      --  PERR Interrupt Enable
      PERR           : IEN_PERR_Field := 16#0#;
      --  FERR Interrupt Enable
      FERR           : IEN_FERR_Field := 16#0#;
      --  MPAF Interrupt Enable
      MPAF           : IEN_MPAF_Field := 16#0#;
      --  SSM Interrupt Enable
      SSM            : IEN_SSM_Field := 16#0#;
      --  CCF Interrupt Enable
      CCF            : IEN_CCF_Field := 16#0#;
      --  TXIDLE Interrupt Enable
      TXIDLE         : IEN_TXIDLE_Field := 16#0#;
      --  TCMP0 Interrupt Enable
      TCMP           : IEN_TCMP_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      TXC            at 0 range 0 .. 0;
      TXBL           at 0 range 1 .. 1;
      RXDATAV        at 0 range 2 .. 2;
      RXFULL         at 0 range 3 .. 3;
      RXOF           at 0 range 4 .. 4;
      RXUF           at 0 range 5 .. 5;
      TXOF           at 0 range 6 .. 6;
      TXUF           at 0 range 7 .. 7;
      PERR           at 0 range 8 .. 8;
      FERR           at 0 range 9 .. 9;
      MPAF           at 0 range 10 .. 10;
      SSM            at 0 range 11 .. 11;
      CCF            at 0 range 12 .. 12;
      TXIDLE         at 0 range 13 .. 13;
      TCMP           at 0 range 14 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype IRCTRL_IREN_Field is Interfaces.EFM32.Bit;

   --  IrDA TX Pulse Width
   type IRCTRL_IRPW_Field is
     (--  IrDA pulse width is 1/16 for OVS=0 and 1/8 for OVS=1
      ONE,
      --  IrDA pulse width is 2/16 for OVS=0 and 2/8 for OVS=1
      TWO,
      --  IrDA pulse width is 3/16 for OVS=0 and 3/8 for OVS=1
      THREE,
      --  IrDA pulse width is 4/16 for OVS=0 and 4/8 for OVS=1
      FOUR)
     with Size => 2;
   for IRCTRL_IRPW_Field use
     (ONE => 0,
      TWO => 1,
      THREE => 2,
      FOUR => 3);

   subtype IRCTRL_IRFILT_Field is Interfaces.EFM32.Bit;
   subtype IRCTRL_IRPRSEN_Field is Interfaces.EFM32.Bit;

   --  IrDA PRS Channel Select
   type IRCTRL_IRPRSSEL_Field is
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
   for IRCTRL_IRPRSSEL_Field use
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

   --  IrDA Control Register
   type IRCTRL_Register is record
      --  Enable IrDA Module
      IREN           : IRCTRL_IREN_Field := 16#0#;
      --  IrDA TX Pulse Width
      IRPW           : IRCTRL_IRPW_Field := Interfaces.EFM32.USART2.ONE;
      --  IrDA RX Filter
      IRFILT         : IRCTRL_IRFILT_Field := 16#0#;
      --  unspecified
      Reserved_4_6   : Interfaces.EFM32.UInt3 := 16#0#;
      --  IrDA PRS Channel Enable
      IRPRSEN        : IRCTRL_IRPRSEN_Field := 16#0#;
      --  IrDA PRS Channel Select
      IRPRSSEL       : IRCTRL_IRPRSSEL_Field :=
                        Interfaces.EFM32.USART2.PRSCH0;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IRCTRL_Register use record
      IREN           at 0 range 0 .. 0;
      IRPW           at 0 range 1 .. 2;
      IRFILT         at 0 range 3 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      IRPRSEN        at 0 range 7 .. 7;
      IRPRSSEL       at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
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

   --  CLK PRS Channel Select
   type INPUT_CLKPRSSEL_Field is
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
   for INPUT_CLKPRSSEL_Field use
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

   subtype INPUT_CLKPRS_Field is Interfaces.EFM32.Bit;

   --  USART Input Register
   type INPUT_Register is record
      --  RX PRS Channel Select
      RXPRSSEL       : INPUT_RXPRSSEL_Field := Interfaces.EFM32.USART2.PRSCH0;
      --  unspecified
      Reserved_4_6   : Interfaces.EFM32.UInt3 := 16#0#;
      --  PRS RX Enable
      RXPRS          : INPUT_RXPRS_Field := 16#0#;
      --  CLK PRS Channel Select
      CLKPRSSEL      : INPUT_CLKPRSSEL_Field :=
                        Interfaces.EFM32.USART2.PRSCH0;
      --  unspecified
      Reserved_12_14 : Interfaces.EFM32.UInt3 := 16#0#;
      --  PRS CLK Enable
      CLKPRS         : INPUT_CLKPRS_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INPUT_Register use record
      RXPRSSEL       at 0 range 0 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      RXPRS          at 0 range 7 .. 7;
      CLKPRSSEL      at 0 range 8 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      CLKPRS         at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype I2SCTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype I2SCTRL_MONO_Field is Interfaces.EFM32.Bit;
   subtype I2SCTRL_JUSTIFY_Field is Interfaces.EFM32.Bit;
   subtype I2SCTRL_DMASPLIT_Field is Interfaces.EFM32.Bit;
   subtype I2SCTRL_DELAY_Field is Interfaces.EFM32.Bit;

   --  I2S Word Format
   type I2SCTRL_FORMAT_Field is
     (--  32-bit word, 32-bit data
      W32D32,
      --  32-bit word, 32-bit data with 8 lsb masked
      W32D24M,
      --  32-bit word, 24-bit data
      W32D24,
      --  32-bit word, 16-bit data
      W32D16,
      --  32-bit word, 8-bit data
      W32D8,
      --  16-bit word, 16-bit data
      W16D16,
      --  16-bit word, 8-bit data
      W16D8,
      --  8-bit word, 8-bit data
      W8D8)
     with Size => 3;
   for I2SCTRL_FORMAT_Field use
     (W32D32 => 0,
      W32D24M => 1,
      W32D24 => 2,
      W32D16 => 3,
      W32D8 => 4,
      W16D16 => 5,
      W16D8 => 6,
      W8D8 => 7);

   --  I2S Control Register
   type I2SCTRL_Register is record
      --  Enable I2S Mode
      EN             : I2SCTRL_EN_Field := 16#0#;
      --  Stero or Mono
      MONO           : I2SCTRL_MONO_Field := 16#0#;
      --  Justification of I2S Data
      JUSTIFY        : I2SCTRL_JUSTIFY_Field := 16#0#;
      --  Separate DMA Request for Left/Right Data
      DMASPLIT       : I2SCTRL_DMASPLIT_Field := 16#0#;
      --  Delay on I2S Data
      DELAY_k        : I2SCTRL_DELAY_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  I2S Word Format
      FORMAT         : I2SCTRL_FORMAT_Field := Interfaces.EFM32.USART2.W32D32;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for I2SCTRL_Register use record
      EN             at 0 range 0 .. 0;
      MONO           at 0 range 1 .. 1;
      JUSTIFY        at 0 range 2 .. 2;
      DMASPLIT       at 0 range 3 .. 3;
      DELAY_k        at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      FORMAT         at 0 range 8 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  TX Frame Start Delay
   type TIMING_TXDELAY_Field is
     (--  Disable - TXDELAY in USARTn_CTRL can be used for legacy
      DISABLE,
      --  Start of transmission is delayed for 1 baud-times
      ONE,
      --  Start of transmission is delayed for 2 baud-times
      TWO,
      --  Start of transmission is delayed for 3 baud-times
      THREE,
      --  Start of transmission is delayed for 7 baud-times
      SEVEN,
      --  Start of transmission is delayed for TCMPVAL0 baud-times
      TCMP0,
      --  Start of transmission is delayed for TCMPVAL1 baud-times
      TCMP1,
      --  Start of transmission is delayed for TCMPVAL2 baud-times
      TCMP2)
     with Size => 3;
   for TIMING_TXDELAY_Field use
     (DISABLE => 0,
      ONE => 1,
      TWO => 2,
      THREE => 3,
      SEVEN => 4,
      TCMP0 => 5,
      TCMP1 => 6,
      TCMP2 => 7);

   --  Chip Select Setup
   type TIMING_CSSETUP_Field is
     (--  CS is not asserted before start of transmission
      ZERO,
      --  CS is asserted for 1 baud-times before start of transmission
      ONE,
      --  CS is asserted for 2 baud-times before start of transmission
      TWO,
      --  CS is asserted for 3 baud-times before start of transmission
      THREE,
      --  CS is asserted for 7 baud-times before start of transmission
      SEVEN,
      --  CS is asserted before the start of transmission for TCMPVAL0 baud-times
      TCMP0,
      --  CS is asserted before the start of transmission for TCMPVAL1 baud-times
      TCMP1,
      --  CS is asserted before the start of transmission for TCMPVAL2 baud-times
      TCMP2)
     with Size => 3;
   for TIMING_CSSETUP_Field use
     (ZERO => 0,
      ONE => 1,
      TWO => 2,
      THREE => 3,
      SEVEN => 4,
      TCMP0 => 5,
      TCMP1 => 6,
      TCMP2 => 7);

   --  Inter-character Spacing
   type TIMING_ICS_Field is
     (--  There is no space between charcters
      ZERO,
      --  Create a space of 1 baud-times before start of transmission
      ONE,
      --  Create a space of 2 baud-times before start of transmission
      TWO,
      --  Create a space of 3 baud-times before start of transmission
      THREE,
      --  Create a space of 7 baud-times before start of transmission
      SEVEN,
      --  Create a space of before the start of transmission for TCMPVAL0 baud-times
      TCMP0,
      --  Create a space of before the start of transmission for TCMPVAL1 baud-times
      TCMP1,
      --  Create a space of before the start of transmission for TCMPVAL2 baud-times
      TCMP2)
     with Size => 3;
   for TIMING_ICS_Field use
     (ZERO => 0,
      ONE => 1,
      TWO => 2,
      THREE => 3,
      SEVEN => 4,
      TCMP0 => 5,
      TCMP1 => 6,
      TCMP2 => 7);

   --  Chip Select Hold
   type TIMING_CSHOLD_Field is
     (--  Disable CS being asserted after the end of transmission
      ZERO,
      --  CS is asserted for 1 baud-times after the end of transmission
      ONE,
      --  CS is asserted for 2 baud-times after the end of transmission
      TWO,
      --  CS is asserted for 3 baud-times after the end of transmission
      THREE,
      --  CS is asserted for 7 baud-times after the end of transmission
      SEVEN,
      --  CS is asserted after the end of transmission for TCMPVAL0 baud-times
      TCMP0,
      --  CS is asserted after the end of transmission for TCMPVAL1 baud-times
      TCMP1,
      --  CS is asserted after the end of transmission for TCMPVAL2 baud-times
      TCMP2)
     with Size => 3;
   for TIMING_CSHOLD_Field use
     (ZERO => 0,
      ONE => 1,
      TWO => 2,
      THREE => 3,
      SEVEN => 4,
      TCMP0 => 5,
      TCMP1 => 6,
      TCMP2 => 7);

   --  Timing Register
   type TIMING_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.EFM32.UInt16 := 16#0#;
      --  TX Frame Start Delay
      TXDELAY        : TIMING_TXDELAY_Field :=
                        Interfaces.EFM32.USART2.DISABLE;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit := 16#0#;
      --  Chip Select Setup
      CSSETUP        : TIMING_CSSETUP_Field := Interfaces.EFM32.USART2.ZERO;
      --  unspecified
      Reserved_23_23 : Interfaces.EFM32.Bit := 16#0#;
      --  Inter-character Spacing
      ICS            : TIMING_ICS_Field := Interfaces.EFM32.USART2.ZERO;
      --  unspecified
      Reserved_27_27 : Interfaces.EFM32.Bit := 16#0#;
      --  Chip Select Hold
      CSHOLD         : TIMING_CSHOLD_Field := Interfaces.EFM32.USART2.ZERO;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMING_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      TXDELAY        at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      CSSETUP        at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      ICS            at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      CSHOLD         at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CTRLX_DBGHALT_Field is Interfaces.EFM32.Bit;
   subtype CTRLX_CTSINV_Field is Interfaces.EFM32.Bit;
   subtype CTRLX_CTSEN_Field is Interfaces.EFM32.Bit;
   subtype CTRLX_RTSINV_Field is Interfaces.EFM32.Bit;

   --  Control Register Extended
   type CTRLX_Register is record
      --  Debug Halt
      DBGHALT       : CTRLX_DBGHALT_Field := 16#0#;
      --  CTS Pin Inversion
      CTSINV        : CTRLX_CTSINV_Field := 16#0#;
      --  CTS Function Enabled
      CTSEN         : CTRLX_CTSEN_Field := 16#0#;
      --  RTS Pin Inversion
      RTSINV        : CTRLX_RTSINV_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRLX_Register use record
      DBGHALT       at 0 range 0 .. 0;
      CTSINV        at 0 range 1 .. 1;
      CTSEN         at 0 range 2 .. 2;
      RTSINV        at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype TIMECMP_TCMPVAL_Field is Interfaces.EFM32.Byte;

   --  Timer Start Source
   type TIMECMP0_TSTART_Field is
     (--  Comparator 0 is disabled
      DISABLE,
      --  Comparator 0 and timer are started at TX end of frame
      TXEOF,
      --  Comparator 0 and timer are started at TX Complete
      TXC,
      --  Comparator 0 and timer are started at RX going Active (default: low)
      RXACT,
      --  Comparator 0 and timer are started at RX end of frame
      RXEOF)
     with Size => 3;
   for TIMECMP0_TSTART_Field use
     (DISABLE => 0,
      TXEOF => 1,
      TXC => 2,
      RXACT => 3,
      RXEOF => 4);

   --  Source Used to Disable Comparator 0
   type TIMECMP0_TSTOP_Field is
     (--  Comparator 0 is disabled when the counter equals TCMPVAL and triggers a
--  TCMP0 event
      TCMP0,
      --  Comparator 0 is disabled at the start of transmission
      TXST,
      --  Comparator 0 is disabled on RX going going Active (default: low)
      RXACT,
      --  Comparator 0 is disabled on RX going Inactive
      RXACTN)
     with Size => 3;
   for TIMECMP0_TSTOP_Field use
     (TCMP0 => 0,
      TXST => 1,
      RXACT => 2,
      RXACTN => 3);

   subtype TIMECMP_RESTARTEN_Field is Interfaces.EFM32.Bit;

   --  Used to Generate Interrupts and Various Delays
   type TIMECMP_Register is record
      --  Timer Comparator 0
      TCMPVAL        : TIMECMP_TCMPVAL_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.EFM32.Byte := 16#0#;
      --  Timer Start Source
      TSTART         : TIMECMP0_TSTART_Field :=
                        Interfaces.EFM32.USART2.DISABLE;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit := 16#0#;
      --  Source Used to Disable Comparator 0
      TSTOP          : TIMECMP0_TSTOP_Field := Interfaces.EFM32.USART2.TCMP0;
      --  unspecified
      Reserved_23_23 : Interfaces.EFM32.Bit := 16#0#;
      --  Restart Timer on TCMP0
      RESTARTEN      : TIMECMP_RESTARTEN_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.EFM32.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMECMP_Register use record
      TCMPVAL        at 0 range 0 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      TSTART         at 0 range 16 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      TSTOP          at 0 range 20 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      RESTARTEN      at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype ROUTEPEN_RXPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_TXPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CSPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CLKPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CTSPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_RTSPEN_Field is Interfaces.EFM32.Bit;

   --  I/O Routing Pin Enable Register
   type ROUTEPEN_Register is record
      --  RX Pin Enable
      RXPEN         : ROUTEPEN_RXPEN_Field := 16#0#;
      --  TX Pin Enable
      TXPEN         : ROUTEPEN_TXPEN_Field := 16#0#;
      --  CS Pin Enable
      CSPEN         : ROUTEPEN_CSPEN_Field := 16#0#;
      --  CLK Pin Enable
      CLKPEN        : ROUTEPEN_CLKPEN_Field := 16#0#;
      --  CTS Pin Enable
      CTSPEN        : ROUTEPEN_CTSPEN_Field := 16#0#;
      --  RTS Pin Enable
      RTSPEN        : ROUTEPEN_RTSPEN_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTEPEN_Register use record
      RXPEN         at 0 range 0 .. 0;
      TXPEN         at 0 range 1 .. 1;
      CSPEN         at 0 range 2 .. 2;
      CLKPEN        at 0 range 3 .. 3;
      CTSPEN        at 0 range 4 .. 4;
      RTSPEN        at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
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
      LOC5,
      --  Location 6
      LOC6)
     with Size => 6;
   for ROUTELOC0_RXLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5,
      LOC6 => 6);

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
      LOC5,
      --  Location 6
      LOC6)
     with Size => 6;
   for ROUTELOC0_TXLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5,
      LOC6 => 6);

   --  I/O Location
   type ROUTELOC0_CSLOC_Field is
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
      LOC6)
     with Size => 6;
   for ROUTELOC0_CSLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5,
      LOC6 => 6);

   --  I/O Location
   type ROUTELOC0_CLKLOC_Field is
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
      LOC6)
     with Size => 6;
   for ROUTELOC0_CLKLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5,
      LOC6 => 6);

   --  I/O Routing Location Register
   type ROUTELOC0_Register is record
      --  I/O Location
      RXLOC          : ROUTELOC0_RXLOC_Field := Interfaces.EFM32.USART2.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      TXLOC          : ROUTELOC0_TXLOC_Field := Interfaces.EFM32.USART2.LOC0;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CSLOC          : ROUTELOC0_CSLOC_Field := Interfaces.EFM32.USART2.LOC0;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CLKLOC         : ROUTELOC0_CLKLOC_Field := Interfaces.EFM32.USART2.LOC0;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC0_Register use record
      RXLOC          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      TXLOC          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CSLOC          at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CLKLOC         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC1_CTSLOC_Field is
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
   for ROUTELOC1_CTSLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5);

   --  I/O Location
   type ROUTELOC1_RTSLOC_Field is
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
   for ROUTELOC1_RTSLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5);

   --  I/O Routing Location Register
   type ROUTELOC1_Register is record
      --  I/O Location
      CTSLOC         : ROUTELOC1_CTSLOC_Field := Interfaces.EFM32.USART2.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      RTSLOC         : ROUTELOC1_RTSLOC_Field := Interfaces.EFM32.USART2.LOC0;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC1_Register use record
      CTSLOC         at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      RTSLOC         at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USART2
   type USART2_Peripheral is record
      --  Control Register
      CTRL       : aliased CTRL_Register;
      --  USART Frame Format Register
      FRAME      : aliased FRAME_Register;
      --  USART Trigger Control Register
      TRIGCTRL   : aliased TRIGCTRL_Register;
      --  Command Register
      CMD        : aliased CMD_Register;
      --  USART Status Register
      STATUS     : aliased STATUS_Register;
      --  Clock Control Register
      CLKDIV     : aliased CLKDIV_Register;
      --  RX Buffer Data Extended Register
      RXDATAX    : aliased RXDATAX_Register;
      --  RX Buffer Data Register
      RXDATA     : aliased RXDATA_Register;
      --  RX Buffer Double Data Extended Register
      RXDOUBLEX  : aliased RXDOUBLEX_Register;
      --  RX FIFO Double Data Register
      RXDOUBLE   : aliased RXDOUBLE_Register;
      --  RX Buffer Data Extended Peek Register
      RXDATAXP   : aliased RXDATAXP_Register;
      --  RX Buffer Double Data Extended Peek Register
      RXDOUBLEXP : aliased RXDOUBLEXP_Register;
      --  TX Buffer Data Extended Register
      TXDATAX    : aliased TXDATAX_Register;
      --  TX Buffer Data Register
      TXDATA     : aliased TXDATA_Register;
      --  TX Buffer Double Data Extended Register
      TXDOUBLEX  : aliased TXDOUBLEX_Register;
      --  TX Buffer Double Data Register
      TXDOUBLE   : aliased TXDOUBLE_Register;
      --  Interrupt Flag Register
      IF_k       : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS        : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC        : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN        : aliased IEN_Register;
      --  IrDA Control Register
      IRCTRL     : aliased IRCTRL_Register;
      --  USART Input Register
      INPUT      : aliased INPUT_Register;
      --  I2S Control Register
      I2SCTRL    : aliased I2SCTRL_Register;
      --  Timing Register
      TIMING     : aliased TIMING_Register;
      --  Control Register Extended
      CTRLX      : aliased CTRLX_Register;
      --  Used to Generate Interrupts and Various Delays
      TIMECMP0   : aliased TIMECMP_Register;
      --  Used to Generate Interrupts and Various Delays
      TIMECMP1   : aliased TIMECMP_Register;
      --  Used to Generate Interrupts and Various Delays
      TIMECMP2   : aliased TIMECMP_Register;
      --  I/O Routing Pin Enable Register
      ROUTEPEN   : aliased ROUTEPEN_Register;
      --  I/O Routing Location Register
      ROUTELOC0  : aliased ROUTELOC0_Register;
      --  I/O Routing Location Register
      ROUTELOC1  : aliased ROUTELOC1_Register;
   end record
     with Volatile;

   for USART2_Peripheral use record
      CTRL       at 16#0# range 0 .. 31;
      FRAME      at 16#4# range 0 .. 31;
      TRIGCTRL   at 16#8# range 0 .. 31;
      CMD        at 16#C# range 0 .. 31;
      STATUS     at 16#10# range 0 .. 31;
      CLKDIV     at 16#14# range 0 .. 31;
      RXDATAX    at 16#18# range 0 .. 31;
      RXDATA     at 16#1C# range 0 .. 31;
      RXDOUBLEX  at 16#20# range 0 .. 31;
      RXDOUBLE   at 16#24# range 0 .. 31;
      RXDATAXP   at 16#28# range 0 .. 31;
      RXDOUBLEXP at 16#2C# range 0 .. 31;
      TXDATAX    at 16#30# range 0 .. 31;
      TXDATA     at 16#34# range 0 .. 31;
      TXDOUBLEX  at 16#38# range 0 .. 31;
      TXDOUBLE   at 16#3C# range 0 .. 31;
      IF_k       at 16#40# range 0 .. 31;
      IFS        at 16#44# range 0 .. 31;
      IFC        at 16#48# range 0 .. 31;
      IEN        at 16#4C# range 0 .. 31;
      IRCTRL     at 16#50# range 0 .. 31;
      INPUT      at 16#58# range 0 .. 31;
      I2SCTRL    at 16#5C# range 0 .. 31;
      TIMING     at 16#60# range 0 .. 31;
      CTRLX      at 16#64# range 0 .. 31;
      TIMECMP0   at 16#68# range 0 .. 31;
      TIMECMP1   at 16#6C# range 0 .. 31;
      TIMECMP2   at 16#70# range 0 .. 31;
      ROUTEPEN   at 16#74# range 0 .. 31;
      ROUTELOC0  at 16#78# range 0 .. 31;
      ROUTELOC1  at 16#7C# range 0 .. 31;
   end record;

   --  USART2
   USART2_Periph : aliased USART2_Peripheral
     with Import, Address => USART2_Base;

end Interfaces.EFM32.USART2;
