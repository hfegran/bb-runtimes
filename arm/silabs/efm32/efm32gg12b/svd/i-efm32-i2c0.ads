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

--  I2C0
package Interfaces.EFM32.I2C0 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_SLAVE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_AUTOACK_Field is Interfaces.EFM32.Bit;
   subtype CTRL_AUTOSE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_AUTOSN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ARBDIS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_GCAMEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_TXBIL_Field is Interfaces.EFM32.Bit;

   --  Clock Low High Ratio
   type CTRL_CLHR_Field is
     (--  The ratio between low period and high period counters (Nlow:Nhigh) is 4:4
      STANDARD,
      --  The ratio between low period and high period counters (Nlow:Nhigh) is 6:3
      ASYMMETRIC,
      --  The ratio between low period and high period counters (Nlow:Nhigh) is 11:6
      FAST)
     with Size => 2;
   for CTRL_CLHR_Field use
     (STANDARD => 0,
      ASYMMETRIC => 1,
      FAST => 2);

   --  Bus Idle Timeout
   type CTRL_BITO_Field is
     (--  Timeout disabled
      OFF,
      --  Timeout after 40 prescaled clock cycles. In standard mode at 100 kHz, this
--  results in a 50us timeout.
      Val_40PCC,
      --  Timeout after 80 prescaled clock cycles. In standard mode at 100 kHz, this
--  results in a 100us timeout.
      Val_80PCC,
      --  Timeout after 160 prescaled clock cycles. In standard mode at 100 kHz, this
--  results in a 200us timeout.
      Val_160PCC)
     with Size => 2;
   for CTRL_BITO_Field use
     (OFF => 0,
      Val_40PCC => 1,
      Val_80PCC => 2,
      Val_160PCC => 3);

   subtype CTRL_GIBITO_Field is Interfaces.EFM32.Bit;

   --  Clock Low Timeout
   type CTRL_CLTO_Field is
     (--  Timeout disabled
      OFF,
      --  Timeout after 40 prescaled clock cycles. In standard mode at 100 kHz, this
--  results in a 50us timeout.
      Val_40PCC,
      --  Timeout after 80 prescaled clock cycles. In standard mode at 100 kHz, this
--  results in a 100us timeout.
      Val_80PCC,
      --  Timeout after 160 prescaled clock cycles. In standard mode at 100 kHz, this
--  results in a 200us timeout.
      Val_160PCC,
      --  Timeout after 320 prescaled clock cycles. In standard mode at 100 kHz, this
--  results in a 400us timeout.
      Val_320PCC,
      --  Timeout after 1024 prescaled clock cycles. In standard mode at 100 kHz,
--  this results in a 1280us timeout.
      Val_1024PCC)
     with Size => 3;
   for CTRL_CLTO_Field use
     (OFF => 0,
      Val_40PCC => 1,
      Val_80PCC => 2,
      Val_160PCC => 3,
      Val_320PCC => 4,
      Val_1024PCC => 5);

   --  Control Register
   type CTRL_Register is record
      --  I2C Enable
      EN             : CTRL_EN_Field := 16#0#;
      --  Addressable as Slave
      SLAVE          : CTRL_SLAVE_Field := 16#0#;
      --  Automatic Acknowledge
      AUTOACK        : CTRL_AUTOACK_Field := 16#0#;
      --  Automatic STOP When Empty
      AUTOSE         : CTRL_AUTOSE_Field := 16#0#;
      --  Automatic STOP on NACK
      AUTOSN         : CTRL_AUTOSN_Field := 16#0#;
      --  Arbitration Disable
      ARBDIS         : CTRL_ARBDIS_Field := 16#0#;
      --  General Call Address Match Enable
      GCAMEN         : CTRL_GCAMEN_Field := 16#0#;
      --  TX Buffer Interrupt Level
      TXBIL          : CTRL_TXBIL_Field := 16#0#;
      --  Clock Low High Ratio
      CLHR           : CTRL_CLHR_Field := Interfaces.EFM32.I2C0.STANDARD;
      --  unspecified
      Reserved_10_11 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Bus Idle Timeout
      BITO           : CTRL_BITO_Field := Interfaces.EFM32.I2C0.OFF;
      --  unspecified
      Reserved_14_14 : Interfaces.EFM32.Bit := 16#0#;
      --  Go Idle on Bus Idle Timeout
      GIBITO         : CTRL_GIBITO_Field := 16#0#;
      --  Clock Low Timeout
      CLTO           : CTRL_CLTO_Field := Interfaces.EFM32.I2C0.OFF;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      EN             at 0 range 0 .. 0;
      SLAVE          at 0 range 1 .. 1;
      AUTOACK        at 0 range 2 .. 2;
      AUTOSE         at 0 range 3 .. 3;
      AUTOSN         at 0 range 4 .. 4;
      ARBDIS         at 0 range 5 .. 5;
      GCAMEN         at 0 range 6 .. 6;
      TXBIL          at 0 range 7 .. 7;
      CLHR           at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      BITO           at 0 range 12 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      GIBITO         at 0 range 15 .. 15;
      CLTO           at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype CMD_START_Field is Interfaces.EFM32.Bit;
   subtype CMD_STOP_Field is Interfaces.EFM32.Bit;
   subtype CMD_ACK_Field is Interfaces.EFM32.Bit;
   subtype CMD_NACK_Field is Interfaces.EFM32.Bit;
   subtype CMD_CONT_Field is Interfaces.EFM32.Bit;
   subtype CMD_ABORT_Field is Interfaces.EFM32.Bit;
   subtype CMD_CLEARTX_Field is Interfaces.EFM32.Bit;
   subtype CMD_CLEARPC_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Send Start Condition
      START         : CMD_START_Field := 16#0#;
      --  Write-only. Send Stop Condition
      STOP          : CMD_STOP_Field := 16#0#;
      --  Write-only. Send ACK
      ACK           : CMD_ACK_Field := 16#0#;
      --  Write-only. Send NACK
      NACK          : CMD_NACK_Field := 16#0#;
      --  Write-only. Continue Transmission
      CONT          : CMD_CONT_Field := 16#0#;
      --  Write-only. Abort Transmission
      ABORT_k       : CMD_ABORT_Field := 16#0#;
      --  Write-only. Clear TX
      CLEARTX       : CMD_CLEARTX_Field := 16#0#;
      --  Write-only. Clear Pending Commands
      CLEARPC       : CMD_CLEARPC_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      START         at 0 range 0 .. 0;
      STOP          at 0 range 1 .. 1;
      ACK           at 0 range 2 .. 2;
      NACK          at 0 range 3 .. 3;
      CONT          at 0 range 4 .. 4;
      ABORT_k       at 0 range 5 .. 5;
      CLEARTX       at 0 range 6 .. 6;
      CLEARPC       at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STATE_BUSY_Field is Interfaces.EFM32.Bit;
   subtype STATE_MASTER_Field is Interfaces.EFM32.Bit;
   subtype STATE_TRANSMITTER_Field is Interfaces.EFM32.Bit;
   subtype STATE_NACKED_Field is Interfaces.EFM32.Bit;
   subtype STATE_BUSHOLD_Field is Interfaces.EFM32.Bit;

   --  Transmission State
   type STATE_STATE_Field is
     (--  No transmission is being performed.
      IDLE,
      --  Waiting for idle. Will send a start condition as soon as the bus is idle.
      WAIT,
      --  Start transmitted or received
      START,
      --  Address transmitted or received
      ADDR,
      --  Address ack/nack transmitted or received
      ADDRACK,
      --  Data transmitted or received
      DATA,
      --  Data ack/nack transmitted or received
      DATAACK)
     with Size => 3;
   for STATE_STATE_Field use
     (IDLE => 0,
      WAIT => 1,
      START => 2,
      ADDR => 3,
      ADDRACK => 4,
      DATA => 5,
      DATAACK => 6);

   --  State Register
   type STATE_Register is record
      --  Read-only. Bus Busy
      BUSY          : STATE_BUSY_Field;
      --  Read-only. Master
      MASTER        : STATE_MASTER_Field;
      --  Read-only. Transmitter
      TRANSMITTER   : STATE_TRANSMITTER_Field;
      --  Read-only. Nack Received
      NACKED        : STATE_NACKED_Field;
      --  Read-only. Bus Held
      BUSHOLD       : STATE_BUSHOLD_Field;
      --  Read-only. Transmission State
      STATE         : STATE_STATE_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATE_Register use record
      BUSY          at 0 range 0 .. 0;
      MASTER        at 0 range 1 .. 1;
      TRANSMITTER   at 0 range 2 .. 2;
      NACKED        at 0 range 3 .. 3;
      BUSHOLD       at 0 range 4 .. 4;
      STATE         at 0 range 5 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype STATUS_PSTART_Field is Interfaces.EFM32.Bit;
   subtype STATUS_PSTOP_Field is Interfaces.EFM32.Bit;
   subtype STATUS_PACK_Field is Interfaces.EFM32.Bit;
   subtype STATUS_PNACK_Field is Interfaces.EFM32.Bit;
   subtype STATUS_PCONT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_PABORT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TXC_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TXBL_Field is Interfaces.EFM32.Bit;
   subtype STATUS_RXDATAV_Field is Interfaces.EFM32.Bit;
   subtype STATUS_RXFULL_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. Pending START
      PSTART         : STATUS_PSTART_Field;
      --  Read-only. Pending STOP
      PSTOP          : STATUS_PSTOP_Field;
      --  Read-only. Pending ACK
      PACK           : STATUS_PACK_Field;
      --  Read-only. Pending NACK
      PNACK          : STATUS_PNACK_Field;
      --  Read-only. Pending Continue
      PCONT          : STATUS_PCONT_Field;
      --  Read-only. Pending Abort
      PABORT         : STATUS_PABORT_Field;
      --  Read-only. TX Complete
      TXC            : STATUS_TXC_Field;
      --  Read-only. TX Buffer Level
      TXBL           : STATUS_TXBL_Field;
      --  Read-only. RX Data Valid
      RXDATAV        : STATUS_RXDATAV_Field;
      --  Read-only. RX FIFO Full
      RXFULL         : STATUS_RXFULL_Field;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      PSTART         at 0 range 0 .. 0;
      PSTOP          at 0 range 1 .. 1;
      PACK           at 0 range 2 .. 2;
      PNACK          at 0 range 3 .. 3;
      PCONT          at 0 range 4 .. 4;
      PABORT         at 0 range 5 .. 5;
      TXC            at 0 range 6 .. 6;
      TXBL           at 0 range 7 .. 7;
      RXDATAV        at 0 range 8 .. 8;
      RXFULL         at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype CLKDIV_DIV_Field is Interfaces.EFM32.UInt9;

   --  Clock Division Register
   type CLKDIV_Register is record
      --  Clock Divider
      DIV           : CLKDIV_DIV_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.EFM32.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLKDIV_Register use record
      DIV           at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype SADDR_ADDR_Field is Interfaces.EFM32.UInt7;

   --  Slave Address Register
   type SADDR_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.EFM32.Bit := 16#0#;
      --  Slave Address
      ADDR          : SADDR_ADDR_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SADDR_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      ADDR          at 0 range 1 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype SADDRMASK_MASK_Field is Interfaces.EFM32.UInt7;

   --  Slave Address Mask Register
   type SADDRMASK_Register is record
      --  unspecified
      Reserved_0_0  : Interfaces.EFM32.Bit := 16#0#;
      --  Slave Address Mask
      MASK          : SADDRMASK_MASK_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SADDRMASK_Register use record
      Reserved_0_0  at 0 range 0 .. 0;
      MASK          at 0 range 1 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
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

   --  Receive Buffer Double Data Register
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

   subtype RXDATAP_RXDATAP_Field is Interfaces.EFM32.Byte;

   --  Receive Buffer Data Peek Register
   type RXDATAP_Register is record
      --  Read-only. RX Data Peek
      RXDATAP       : RXDATAP_RXDATAP_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDATAP_Register use record
      RXDATAP       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  RXDOUBLEP_RXDATAP array element
   subtype RXDOUBLEP_RXDATAP_Element is Interfaces.EFM32.Byte;

   --  RXDOUBLEP_RXDATAP array
   type RXDOUBLEP_RXDATAP_Field_Array is array (0 .. 1)
     of RXDOUBLEP_RXDATAP_Element
     with Component_Size => 8, Size => 16;

   --  Type definition for RXDOUBLEP_RXDATAP
   type RXDOUBLEP_RXDATAP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  RXDATAP as a value
            Val : Interfaces.EFM32.UInt16;
         when True =>
            --  RXDATAP as an array
            Arr : RXDOUBLEP_RXDATAP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for RXDOUBLEP_RXDATAP_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   --  Receive Buffer Double Data Peek Register
   type RXDOUBLEP_Register is record
      --  Read-only. RX Data 0 Peek
      RXDATAP        : RXDOUBLEP_RXDATAP_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RXDOUBLEP_Register use record
      RXDATAP        at 0 range 0 .. 15;
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

   --  Transmit Buffer Double Data Register
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

   subtype IF_START_Field is Interfaces.EFM32.Bit;
   subtype IF_RSTART_Field is Interfaces.EFM32.Bit;
   subtype IF_ADDR_Field is Interfaces.EFM32.Bit;
   subtype IF_TXC_Field is Interfaces.EFM32.Bit;
   subtype IF_TXBL_Field is Interfaces.EFM32.Bit;
   subtype IF_RXDATAV_Field is Interfaces.EFM32.Bit;
   subtype IF_ACK_Field is Interfaces.EFM32.Bit;
   subtype IF_NACK_Field is Interfaces.EFM32.Bit;
   subtype IF_MSTOP_Field is Interfaces.EFM32.Bit;
   subtype IF_ARBLOST_Field is Interfaces.EFM32.Bit;
   subtype IF_BUSERR_Field is Interfaces.EFM32.Bit;
   subtype IF_BUSHOLD_Field is Interfaces.EFM32.Bit;
   subtype IF_TXOF_Field is Interfaces.EFM32.Bit;
   subtype IF_RXUF_Field is Interfaces.EFM32.Bit;
   subtype IF_BITO_Field is Interfaces.EFM32.Bit;
   subtype IF_CLTO_Field is Interfaces.EFM32.Bit;
   subtype IF_SSTOP_Field is Interfaces.EFM32.Bit;
   subtype IF_RXFULL_Field is Interfaces.EFM32.Bit;
   subtype IF_CLERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. START Condition Interrupt Flag
      START          : IF_START_Field;
      --  Read-only. Repeated START Condition Interrupt Flag
      RSTART         : IF_RSTART_Field;
      --  Read-only. Address Interrupt Flag
      ADDR           : IF_ADDR_Field;
      --  Read-only. Transfer Completed Interrupt Flag
      TXC            : IF_TXC_Field;
      --  Read-only. Transmit Buffer Level Interrupt Flag
      TXBL           : IF_TXBL_Field;
      --  Read-only. Receive Data Valid Interrupt Flag
      RXDATAV        : IF_RXDATAV_Field;
      --  Read-only. Acknowledge Received Interrupt Flag
      ACK            : IF_ACK_Field;
      --  Read-only. Not Acknowledge Received Interrupt Flag
      NACK           : IF_NACK_Field;
      --  Read-only. Master STOP Condition Interrupt Flag
      MSTOP          : IF_MSTOP_Field;
      --  Read-only. Arbitration Lost Interrupt Flag
      ARBLOST        : IF_ARBLOST_Field;
      --  Read-only. Bus Error Interrupt Flag
      BUSERR         : IF_BUSERR_Field;
      --  Read-only. Bus Held Interrupt Flag
      BUSHOLD        : IF_BUSHOLD_Field;
      --  Read-only. Transmit Buffer Overflow Interrupt Flag
      TXOF           : IF_TXOF_Field;
      --  Read-only. Receive Buffer Underflow Interrupt Flag
      RXUF           : IF_RXUF_Field;
      --  Read-only. Bus Idle Timeout Interrupt Flag
      BITO           : IF_BITO_Field;
      --  Read-only. Clock Low Timeout Interrupt Flag
      CLTO           : IF_CLTO_Field;
      --  Read-only. Slave STOP Condition Interrupt Flag
      SSTOP          : IF_SSTOP_Field;
      --  Read-only. Receive Buffer Full Interrupt Flag
      RXFULL         : IF_RXFULL_Field;
      --  Read-only. Clock Low Error Interrupt Flag
      CLERR          : IF_CLERR_Field;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      START          at 0 range 0 .. 0;
      RSTART         at 0 range 1 .. 1;
      ADDR           at 0 range 2 .. 2;
      TXC            at 0 range 3 .. 3;
      TXBL           at 0 range 4 .. 4;
      RXDATAV        at 0 range 5 .. 5;
      ACK            at 0 range 6 .. 6;
      NACK           at 0 range 7 .. 7;
      MSTOP          at 0 range 8 .. 8;
      ARBLOST        at 0 range 9 .. 9;
      BUSERR         at 0 range 10 .. 10;
      BUSHOLD        at 0 range 11 .. 11;
      TXOF           at 0 range 12 .. 12;
      RXUF           at 0 range 13 .. 13;
      BITO           at 0 range 14 .. 14;
      CLTO           at 0 range 15 .. 15;
      SSTOP          at 0 range 16 .. 16;
      RXFULL         at 0 range 17 .. 17;
      CLERR          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype IFS_START_Field is Interfaces.EFM32.Bit;
   subtype IFS_RSTART_Field is Interfaces.EFM32.Bit;
   subtype IFS_ADDR_Field is Interfaces.EFM32.Bit;
   subtype IFS_TXC_Field is Interfaces.EFM32.Bit;
   subtype IFS_ACK_Field is Interfaces.EFM32.Bit;
   subtype IFS_NACK_Field is Interfaces.EFM32.Bit;
   subtype IFS_MSTOP_Field is Interfaces.EFM32.Bit;
   subtype IFS_ARBLOST_Field is Interfaces.EFM32.Bit;
   subtype IFS_BUSERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_BUSHOLD_Field is Interfaces.EFM32.Bit;
   subtype IFS_TXOF_Field is Interfaces.EFM32.Bit;
   subtype IFS_RXUF_Field is Interfaces.EFM32.Bit;
   subtype IFS_BITO_Field is Interfaces.EFM32.Bit;
   subtype IFS_CLTO_Field is Interfaces.EFM32.Bit;
   subtype IFS_SSTOP_Field is Interfaces.EFM32.Bit;
   subtype IFS_RXFULL_Field is Interfaces.EFM32.Bit;
   subtype IFS_CLERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set START Interrupt Flag
      START          : IFS_START_Field := 16#0#;
      --  Write-only. Set RSTART Interrupt Flag
      RSTART         : IFS_RSTART_Field := 16#0#;
      --  Write-only. Set ADDR Interrupt Flag
      ADDR           : IFS_ADDR_Field := 16#0#;
      --  Write-only. Set TXC Interrupt Flag
      TXC            : IFS_TXC_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Write-only. Set ACK Interrupt Flag
      ACK            : IFS_ACK_Field := 16#0#;
      --  Write-only. Set NACK Interrupt Flag
      NACK           : IFS_NACK_Field := 16#0#;
      --  Write-only. Set MSTOP Interrupt Flag
      MSTOP          : IFS_MSTOP_Field := 16#0#;
      --  Write-only. Set ARBLOST Interrupt Flag
      ARBLOST        : IFS_ARBLOST_Field := 16#0#;
      --  Write-only. Set BUSERR Interrupt Flag
      BUSERR         : IFS_BUSERR_Field := 16#0#;
      --  Write-only. Set BUSHOLD Interrupt Flag
      BUSHOLD        : IFS_BUSHOLD_Field := 16#0#;
      --  Write-only. Set TXOF Interrupt Flag
      TXOF           : IFS_TXOF_Field := 16#0#;
      --  Write-only. Set RXUF Interrupt Flag
      RXUF           : IFS_RXUF_Field := 16#0#;
      --  Write-only. Set BITO Interrupt Flag
      BITO           : IFS_BITO_Field := 16#0#;
      --  Write-only. Set CLTO Interrupt Flag
      CLTO           : IFS_CLTO_Field := 16#0#;
      --  Write-only. Set SSTOP Interrupt Flag
      SSTOP          : IFS_SSTOP_Field := 16#0#;
      --  Write-only. Set RXFULL Interrupt Flag
      RXFULL         : IFS_RXFULL_Field := 16#0#;
      --  Write-only. Set CLERR Interrupt Flag
      CLERR          : IFS_CLERR_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      START          at 0 range 0 .. 0;
      RSTART         at 0 range 1 .. 1;
      ADDR           at 0 range 2 .. 2;
      TXC            at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      ACK            at 0 range 6 .. 6;
      NACK           at 0 range 7 .. 7;
      MSTOP          at 0 range 8 .. 8;
      ARBLOST        at 0 range 9 .. 9;
      BUSERR         at 0 range 10 .. 10;
      BUSHOLD        at 0 range 11 .. 11;
      TXOF           at 0 range 12 .. 12;
      RXUF           at 0 range 13 .. 13;
      BITO           at 0 range 14 .. 14;
      CLTO           at 0 range 15 .. 15;
      SSTOP          at 0 range 16 .. 16;
      RXFULL         at 0 range 17 .. 17;
      CLERR          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype IFC_START_Field is Interfaces.EFM32.Bit;
   subtype IFC_RSTART_Field is Interfaces.EFM32.Bit;
   subtype IFC_ADDR_Field is Interfaces.EFM32.Bit;
   subtype IFC_TXC_Field is Interfaces.EFM32.Bit;
   subtype IFC_ACK_Field is Interfaces.EFM32.Bit;
   subtype IFC_NACK_Field is Interfaces.EFM32.Bit;
   subtype IFC_MSTOP_Field is Interfaces.EFM32.Bit;
   subtype IFC_ARBLOST_Field is Interfaces.EFM32.Bit;
   subtype IFC_BUSERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_BUSHOLD_Field is Interfaces.EFM32.Bit;
   subtype IFC_TXOF_Field is Interfaces.EFM32.Bit;
   subtype IFC_RXUF_Field is Interfaces.EFM32.Bit;
   subtype IFC_BITO_Field is Interfaces.EFM32.Bit;
   subtype IFC_CLTO_Field is Interfaces.EFM32.Bit;
   subtype IFC_SSTOP_Field is Interfaces.EFM32.Bit;
   subtype IFC_RXFULL_Field is Interfaces.EFM32.Bit;
   subtype IFC_CLERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear START Interrupt Flag
      START          : IFC_START_Field := 16#0#;
      --  Write-only. Clear RSTART Interrupt Flag
      RSTART         : IFC_RSTART_Field := 16#0#;
      --  Write-only. Clear ADDR Interrupt Flag
      ADDR           : IFC_ADDR_Field := 16#0#;
      --  Write-only. Clear TXC Interrupt Flag
      TXC            : IFC_TXC_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Write-only. Clear ACK Interrupt Flag
      ACK            : IFC_ACK_Field := 16#0#;
      --  Write-only. Clear NACK Interrupt Flag
      NACK           : IFC_NACK_Field := 16#0#;
      --  Write-only. Clear MSTOP Interrupt Flag
      MSTOP          : IFC_MSTOP_Field := 16#0#;
      --  Write-only. Clear ARBLOST Interrupt Flag
      ARBLOST        : IFC_ARBLOST_Field := 16#0#;
      --  Write-only. Clear BUSERR Interrupt Flag
      BUSERR         : IFC_BUSERR_Field := 16#0#;
      --  Write-only. Clear BUSHOLD Interrupt Flag
      BUSHOLD        : IFC_BUSHOLD_Field := 16#0#;
      --  Write-only. Clear TXOF Interrupt Flag
      TXOF           : IFC_TXOF_Field := 16#0#;
      --  Write-only. Clear RXUF Interrupt Flag
      RXUF           : IFC_RXUF_Field := 16#0#;
      --  Write-only. Clear BITO Interrupt Flag
      BITO           : IFC_BITO_Field := 16#0#;
      --  Write-only. Clear CLTO Interrupt Flag
      CLTO           : IFC_CLTO_Field := 16#0#;
      --  Write-only. Clear SSTOP Interrupt Flag
      SSTOP          : IFC_SSTOP_Field := 16#0#;
      --  Write-only. Clear RXFULL Interrupt Flag
      RXFULL         : IFC_RXFULL_Field := 16#0#;
      --  Write-only. Clear CLERR Interrupt Flag
      CLERR          : IFC_CLERR_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      START          at 0 range 0 .. 0;
      RSTART         at 0 range 1 .. 1;
      ADDR           at 0 range 2 .. 2;
      TXC            at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      ACK            at 0 range 6 .. 6;
      NACK           at 0 range 7 .. 7;
      MSTOP          at 0 range 8 .. 8;
      ARBLOST        at 0 range 9 .. 9;
      BUSERR         at 0 range 10 .. 10;
      BUSHOLD        at 0 range 11 .. 11;
      TXOF           at 0 range 12 .. 12;
      RXUF           at 0 range 13 .. 13;
      BITO           at 0 range 14 .. 14;
      CLTO           at 0 range 15 .. 15;
      SSTOP          at 0 range 16 .. 16;
      RXFULL         at 0 range 17 .. 17;
      CLERR          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype IEN_START_Field is Interfaces.EFM32.Bit;
   subtype IEN_RSTART_Field is Interfaces.EFM32.Bit;
   subtype IEN_ADDR_Field is Interfaces.EFM32.Bit;
   subtype IEN_TXC_Field is Interfaces.EFM32.Bit;
   subtype IEN_TXBL_Field is Interfaces.EFM32.Bit;
   subtype IEN_RXDATAV_Field is Interfaces.EFM32.Bit;
   subtype IEN_ACK_Field is Interfaces.EFM32.Bit;
   subtype IEN_NACK_Field is Interfaces.EFM32.Bit;
   subtype IEN_MSTOP_Field is Interfaces.EFM32.Bit;
   subtype IEN_ARBLOST_Field is Interfaces.EFM32.Bit;
   subtype IEN_BUSERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_BUSHOLD_Field is Interfaces.EFM32.Bit;
   subtype IEN_TXOF_Field is Interfaces.EFM32.Bit;
   subtype IEN_RXUF_Field is Interfaces.EFM32.Bit;
   subtype IEN_BITO_Field is Interfaces.EFM32.Bit;
   subtype IEN_CLTO_Field is Interfaces.EFM32.Bit;
   subtype IEN_SSTOP_Field is Interfaces.EFM32.Bit;
   subtype IEN_RXFULL_Field is Interfaces.EFM32.Bit;
   subtype IEN_CLERR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  START Interrupt Enable
      START          : IEN_START_Field := 16#0#;
      --  RSTART Interrupt Enable
      RSTART         : IEN_RSTART_Field := 16#0#;
      --  ADDR Interrupt Enable
      ADDR           : IEN_ADDR_Field := 16#0#;
      --  TXC Interrupt Enable
      TXC            : IEN_TXC_Field := 16#0#;
      --  TXBL Interrupt Enable
      TXBL           : IEN_TXBL_Field := 16#0#;
      --  RXDATAV Interrupt Enable
      RXDATAV        : IEN_RXDATAV_Field := 16#0#;
      --  ACK Interrupt Enable
      ACK            : IEN_ACK_Field := 16#0#;
      --  NACK Interrupt Enable
      NACK           : IEN_NACK_Field := 16#0#;
      --  MSTOP Interrupt Enable
      MSTOP          : IEN_MSTOP_Field := 16#0#;
      --  ARBLOST Interrupt Enable
      ARBLOST        : IEN_ARBLOST_Field := 16#0#;
      --  BUSERR Interrupt Enable
      BUSERR         : IEN_BUSERR_Field := 16#0#;
      --  BUSHOLD Interrupt Enable
      BUSHOLD        : IEN_BUSHOLD_Field := 16#0#;
      --  TXOF Interrupt Enable
      TXOF           : IEN_TXOF_Field := 16#0#;
      --  RXUF Interrupt Enable
      RXUF           : IEN_RXUF_Field := 16#0#;
      --  BITO Interrupt Enable
      BITO           : IEN_BITO_Field := 16#0#;
      --  CLTO Interrupt Enable
      CLTO           : IEN_CLTO_Field := 16#0#;
      --  SSTOP Interrupt Enable
      SSTOP          : IEN_SSTOP_Field := 16#0#;
      --  RXFULL Interrupt Enable
      RXFULL         : IEN_RXFULL_Field := 16#0#;
      --  CLERR Interrupt Enable
      CLERR          : IEN_CLERR_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      START          at 0 range 0 .. 0;
      RSTART         at 0 range 1 .. 1;
      ADDR           at 0 range 2 .. 2;
      TXC            at 0 range 3 .. 3;
      TXBL           at 0 range 4 .. 4;
      RXDATAV        at 0 range 5 .. 5;
      ACK            at 0 range 6 .. 6;
      NACK           at 0 range 7 .. 7;
      MSTOP          at 0 range 8 .. 8;
      ARBLOST        at 0 range 9 .. 9;
      BUSERR         at 0 range 10 .. 10;
      BUSHOLD        at 0 range 11 .. 11;
      TXOF           at 0 range 12 .. 12;
      RXUF           at 0 range 13 .. 13;
      BITO           at 0 range 14 .. 14;
      CLTO           at 0 range 15 .. 15;
      SSTOP          at 0 range 16 .. 16;
      RXFULL         at 0 range 17 .. 17;
      CLERR          at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ROUTEPEN_SDAPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_SCLPEN_Field is Interfaces.EFM32.Bit;

   --  I/O Routing Pin Enable Register
   type ROUTEPEN_Register is record
      --  SDA Pin Enable
      SDAPEN        : ROUTEPEN_SDAPEN_Field := 16#0#;
      --  SCL Pin Enable
      SCLPEN        : ROUTEPEN_SCLPEN_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTEPEN_Register use record
      SDAPEN        at 0 range 0 .. 0;
      SCLPEN        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC0_SDALOC_Field is
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
   for ROUTELOC0_SDALOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5,
      LOC6 => 6,
      LOC7 => 7);

   --  I/O Location
   type ROUTELOC0_SCLLOC_Field is
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
   for ROUTELOC0_SCLLOC_Field use
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
      SDALOC         : ROUTELOC0_SDALOC_Field := Interfaces.EFM32.I2C0.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      SCLLOC         : ROUTELOC0_SCLLOC_Field := Interfaces.EFM32.I2C0.LOC0;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC0_Register use record
      SDALOC         at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SCLLOC         at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  I2C0
   type I2C0_Peripheral is record
      --  Control Register
      CTRL      : aliased CTRL_Register;
      --  Command Register
      CMD       : aliased CMD_Register;
      --  State Register
      STATE     : aliased STATE_Register;
      --  Status Register
      STATUS    : aliased STATUS_Register;
      --  Clock Division Register
      CLKDIV    : aliased CLKDIV_Register;
      --  Slave Address Register
      SADDR     : aliased SADDR_Register;
      --  Slave Address Mask Register
      SADDRMASK : aliased SADDRMASK_Register;
      --  Receive Buffer Data Register
      RXDATA    : aliased RXDATA_Register;
      --  Receive Buffer Double Data Register
      RXDOUBLE  : aliased RXDOUBLE_Register;
      --  Receive Buffer Data Peek Register
      RXDATAP   : aliased RXDATAP_Register;
      --  Receive Buffer Double Data Peek Register
      RXDOUBLEP : aliased RXDOUBLEP_Register;
      --  Transmit Buffer Data Register
      TXDATA    : aliased TXDATA_Register;
      --  Transmit Buffer Double Data Register
      TXDOUBLE  : aliased TXDOUBLE_Register;
      --  Interrupt Flag Register
      IF_k      : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS       : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC       : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN       : aliased IEN_Register;
      --  I/O Routing Pin Enable Register
      ROUTEPEN  : aliased ROUTEPEN_Register;
      --  I/O Routing Location Register
      ROUTELOC0 : aliased ROUTELOC0_Register;
   end record
     with Volatile;

   for I2C0_Peripheral use record
      CTRL      at 16#0# range 0 .. 31;
      CMD       at 16#4# range 0 .. 31;
      STATE     at 16#8# range 0 .. 31;
      STATUS    at 16#C# range 0 .. 31;
      CLKDIV    at 16#10# range 0 .. 31;
      SADDR     at 16#14# range 0 .. 31;
      SADDRMASK at 16#18# range 0 .. 31;
      RXDATA    at 16#1C# range 0 .. 31;
      RXDOUBLE  at 16#20# range 0 .. 31;
      RXDATAP   at 16#24# range 0 .. 31;
      RXDOUBLEP at 16#28# range 0 .. 31;
      TXDATA    at 16#2C# range 0 .. 31;
      TXDOUBLE  at 16#30# range 0 .. 31;
      IF_k      at 16#34# range 0 .. 31;
      IFS       at 16#38# range 0 .. 31;
      IFC       at 16#3C# range 0 .. 31;
      IEN       at 16#40# range 0 .. 31;
      ROUTEPEN  at 16#44# range 0 .. 31;
      ROUTELOC0 at 16#48# range 0 .. 31;
   end record;

   --  I2C0
   I2C0_Periph : aliased I2C0_Peripheral
     with Import, Address => I2C0_Base;

end Interfaces.EFM32.I2C0;
