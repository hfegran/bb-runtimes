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

--  CAN0
package Interfaces.EFM32.CAN0 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_INIT_Field is Interfaces.EFM32.Bit;
   subtype CTRL_IE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_SIE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_EIE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_DAR_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CCE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_TEST_Field is Interfaces.EFM32.Bit;

   --  Control Register
   type CTRL_Register is record
      --  Initialize
      INIT          : CTRL_INIT_Field := 16#1#;
      --  Module Interrupt Enable
      IE            : CTRL_IE_Field := 16#0#;
      --  Status Change Interrupt Enable
      SIE           : CTRL_SIE_Field := 16#0#;
      --  Error Interrupt Enable
      EIE           : CTRL_EIE_Field := 16#0#;
      --  unspecified
      Reserved_4_4  : Interfaces.EFM32.Bit := 16#0#;
      --  Disable Automatic Retransmission
      DAR           : CTRL_DAR_Field := 16#0#;
      --  Configuration Change Enable
      CCE           : CTRL_CCE_Field := 16#0#;
      --  Test Mode Enable Write
      TEST          : CTRL_TEST_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      INIT          at 0 range 0 .. 0;
      IE            at 0 range 1 .. 1;
      SIE           at 0 range 2 .. 2;
      EIE           at 0 range 3 .. 3;
      Reserved_4_4  at 0 range 4 .. 4;
      DAR           at 0 range 5 .. 5;
      CCE           at 0 range 6 .. 6;
      TEST          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  Last Error Code
   type STATUS_LEC_Field is
     (--  No error occurred during last CAN bus event.
      NONE,
      --  More than 5 equal bits in a sequence have occurred in a part of a received
--  message where this is not allowed.
      STUFF,
      --  A fixed format part of a received frame has the wrong format.
      FORM,
      --  The message this CAN Core transmitted was not acknowledged by another node.
      ACK,
      --  During the transmission of a message (with the exception of the arbitration
--  field), the device wanted to send a recessive level (bit of logical value
--  1), but the monitored bus value was dominant.
      BIT1,
      --  During the transmission of a message (or acknowledge bit, or active error
--  flag, or overload flag), the device wanted to send a dominant level (data
--  or identifier bit logical value 0), but the monitored Bus value was
--  recessive. During Bus Off recovery this status is set each time a sequence
--  of 11 recessive bits has been monitored. This enables the CPU to monitor
--  the proceeding of the Bus Off recovery sequence (indicating the bus is not
--  stuck at dominant or continuously disturbed).
      BIT0,
      --  The CRC check sum was incorrect in the message received; the CRC received
--  for an incoming message does not match with the calculated CRC for the
--  received data.
      CRC,
      --  When the LEC shows the value '7', no CAN bus event was detected since the
--  CPU wrote this value to the LEC.
      UNUSED)
     with Size => 3;
   for STATUS_LEC_Field use
     (NONE => 0,
      STUFF => 1,
      FORM => 2,
      ACK => 3,
      BIT1 => 4,
      BIT0 => 5,
      CRC => 6,
      UNUSED => 7);

   subtype STATUS_TXOK_Field is Interfaces.EFM32.Bit;
   subtype STATUS_RXOK_Field is Interfaces.EFM32.Bit;
   subtype STATUS_EPASS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_EWARN_Field is Interfaces.EFM32.Bit;
   subtype STATUS_BOFF_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Last Error Code
      LEC           : STATUS_LEC_Field := Interfaces.EFM32.CAN0.NONE;
      --  Transmitted a Message Successfully
      TXOK          : STATUS_TXOK_Field := 16#0#;
      --  Received a Message Successfully
      RXOK          : STATUS_RXOK_Field := 16#0#;
      --  Read-only. Error Passive
      EPASS         : STATUS_EPASS_Field := 16#0#;
      --  Read-only. Warning Status
      EWARN         : STATUS_EWARN_Field := 16#0#;
      --  Read-only. Bus Off Status
      BOFF          : STATUS_BOFF_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      LEC           at 0 range 0 .. 2;
      TXOK          at 0 range 3 .. 3;
      RXOK          at 0 range 4 .. 4;
      EPASS         at 0 range 5 .. 5;
      EWARN         at 0 range 6 .. 6;
      BOFF          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ERRCNT_TEC_Field is Interfaces.EFM32.Byte;
   subtype ERRCNT_REC_Field is Interfaces.EFM32.UInt7;
   subtype ERRCNT_RECERRP_Field is Interfaces.EFM32.Bit;

   --  Error Count Register
   type ERRCNT_Register is record
      --  Read-only. Transmit Error Counter
      TEC            : ERRCNT_TEC_Field;
      --  Read-only. Receive Error Counter
      REC            : ERRCNT_REC_Field;
      --  Read-only. Receive Error Passive
      RECERRP        : ERRCNT_RECERRP_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ERRCNT_Register use record
      TEC            at 0 range 0 .. 7;
      REC            at 0 range 8 .. 14;
      RECERRP        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype BITTIMING_BRP_Field is Interfaces.EFM32.UInt6;
   subtype BITTIMING_SJW_Field is Interfaces.EFM32.UInt2;
   subtype BITTIMING_TSEG1_Field is Interfaces.EFM32.UInt4;
   subtype BITTIMING_TSEG2_Field is Interfaces.EFM32.UInt3;

   --  Bit Timing Register
   type BITTIMING_Register is record
      --  Baud Rate Prescaler
      BRP            : BITTIMING_BRP_Field := 16#1#;
      --  Synchronization Jump Width
      SJW            : BITTIMING_SJW_Field := 16#0#;
      --  Time Segment Before the Sample Point
      TSEG1          : BITTIMING_TSEG1_Field := 16#3#;
      --  Time Segment After the Sample Point
      TSEG2          : BITTIMING_TSEG2_Field := 16#2#;
      --  unspecified
      Reserved_15_31 : Interfaces.EFM32.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BITTIMING_Register use record
      BRP            at 0 range 0 .. 5;
      SJW            at 0 range 6 .. 7;
      TSEG1          at 0 range 8 .. 11;
      TSEG2          at 0 range 12 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype INTID_INTID_Field is Interfaces.EFM32.UInt6;
   subtype INTID_INTSTAT_Field is Interfaces.EFM32.Bit;

   --  Interrupt Identification Register
   type INTID_Register is record
      --  Read-only. Interrupt Identifier
      INTID          : INTID_INTID_Field;
      --  unspecified
      Reserved_6_14  : Interfaces.EFM32.UInt9;
      --  Read-only. Status Interupt
      INTSTAT        : INTID_INTSTAT_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for INTID_Register use record
      INTID          at 0 range 0 .. 5;
      Reserved_6_14  at 0 range 6 .. 14;
      INTSTAT        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype TEST_BASIC_Field is Interfaces.EFM32.Bit;
   subtype TEST_SILENT_Field is Interfaces.EFM32.Bit;
   subtype TEST_LBACK_Field is Interfaces.EFM32.Bit;

   --  Control of CAN_TX Pin
   type TEST_TX_Field is
     (--  Reset value, CAN_TX is controlled by the CAN Core.
      CORE,
      --  Sample Point can be monitored at CAN_TX pin.
      SAMPT,
      --  CAN_TX pin drives a dominant bit (0) value.
      LOW,
      --  CAN_TX pin drives a recessive bit (1) value.
      HIGH)
     with Size => 2;
   for TEST_TX_Field use
     (CORE => 0,
      SAMPT => 1,
      LOW => 2,
      HIGH => 3);

   subtype TEST_RX_Field is Interfaces.EFM32.Bit;

   --  Test Register
   type TEST_Register is record
      --  unspecified
      Reserved_0_1  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Basic Mode
      BASIC         : TEST_BASIC_Field := 16#0#;
      --  Silent Mode
      SILENT        : TEST_SILENT_Field := 16#0#;
      --  Loopback Mode
      LBACK         : TEST_LBACK_Field := 16#0#;
      --  Control of CAN_TX Pin
      TX            : TEST_TX_Field := Interfaces.EFM32.CAN0.CORE;
      --  Read-only. Monitors the Actual Value of CAN_RX Pin
      RX            : TEST_RX_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEST_Register use record
      Reserved_0_1  at 0 range 0 .. 1;
      BASIC         at 0 range 2 .. 2;
      SILENT        at 0 range 3 .. 3;
      LBACK         at 0 range 4 .. 4;
      TX            at 0 range 5 .. 6;
      RX            at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype BRPE_BRPE_Field is Interfaces.EFM32.UInt4;

   --  BRP Extension Register
   type BRPE_Register is record
      --  Baud Rate Prescaler Extension
      BRPE          : BRPE_BRPE_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BRPE_Register use record
      BRPE          at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CONFIG_DBGHALT_Field is Interfaces.EFM32.Bit;

   --  Configuration Register
   type CONFIG_Register is record
      --  unspecified
      Reserved_0_14  : Interfaces.EFM32.UInt15 := 16#0#;
      --  Debug Halt
      DBGHALT        : CONFIG_DBGHALT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CONFIG_Register use record
      Reserved_0_14  at 0 range 0 .. 14;
      DBGHALT        at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IF1IF_STATUS_Field is Interfaces.EFM32.Bit;

   --  Status Interrupt Flag Register
   type IF1IF_Register is record
      --  Read-only. Status Interrupt Flag
      STATUS        : IF1IF_STATUS_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF1IF_Register use record
      STATUS        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype IF1IFS_STATUS_Field is Interfaces.EFM32.Bit;

   --  Message Object Interrupt Flag Set Register
   type IF1IFS_Register is record
      --  Write-only. Set STATUS Interrupt Flag
      STATUS        : IF1IFS_STATUS_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF1IFS_Register use record
      STATUS        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype IF1IFC_STATUS_Field is Interfaces.EFM32.Bit;

   --  Message Object Interrupt Flag Clear Register
   type IF1IFC_Register is record
      --  Write-only. Clear STATUS Interrupt Flag
      STATUS        : IF1IFC_STATUS_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF1IFC_Register use record
      STATUS        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype IF1IEN_STATUS_Field is Interfaces.EFM32.Bit;

   --  Status Interrupt Enable Register
   type IF1IEN_Register is record
      --  STATUS Interrupt Enable
      STATUS        : IF1IEN_STATUS_Field := 16#1#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF1IEN_Register use record
      STATUS        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ROUTE_TXPEN_Field is Interfaces.EFM32.Bit;

   --  RX Pin Location
   type ROUTE_RXLOC_Field is
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
   for ROUTE_RXLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5,
      LOC6 => 6);

   --  TX Pin Location
   type ROUTE_TXLOC_Field is
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
   for ROUTE_TXLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5,
      LOC6 => 6);

   --  I/O Routing Register
   type ROUTE_Register is record
      --  TX Pin Enable
      TXPEN          : ROUTE_TXPEN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.EFM32.Bit := 16#0#;
      --  RX Pin Location
      RXLOC          : ROUTE_RXLOC_Field := Interfaces.EFM32.CAN0.LOC0;
      --  TX Pin Location
      TXLOC          : ROUTE_TXLOC_Field := Interfaces.EFM32.CAN0.LOC0;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTE_Register use record
      TXPEN          at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      RXLOC          at 0 range 2 .. 7;
      TXLOC          at 0 range 8 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype MIR0_CMDMASK_DATAB_Field is Interfaces.EFM32.Bit;
   subtype MIR0_CMDMASK_DATAA_Field is Interfaces.EFM32.Bit;
   subtype MIR0_CMDMASK_TXRQSTNEWDAT_Field is Interfaces.EFM32.Bit;
   subtype MIR0_CMDMASK_CLRINTPND_Field is Interfaces.EFM32.Bit;
   subtype MIR0_CMDMASK_CONTROL_Field is Interfaces.EFM32.Bit;
   subtype MIR0_CMDMASK_ARBACC_Field is Interfaces.EFM32.Bit;
   subtype MIR0_CMDMASK_MASKACC_Field is Interfaces.EFM32.Bit;
   subtype MIR0_CMDMASK_WRRD_Field is Interfaces.EFM32.Bit;

   --  Interface Command Mask Register
   type MIR0_CMDMASK_Register is record
      --  CC Channel Mode
      DATAB         : MIR0_CMDMASK_DATAB_Field := 16#0#;
      --  Access Data Bytes 0-3
      DATAA         : MIR0_CMDMASK_DATAA_Field := 16#0#;
      --  Transmission Request Bit/ New Data Bit
      TXRQSTNEWDAT  : MIR0_CMDMASK_TXRQSTNEWDAT_Field := 16#0#;
      --  Clear Interrupt Pending Bit
      CLRINTPND     : MIR0_CMDMASK_CLRINTPND_Field := 16#0#;
      --  Access Control Bits
      CONTROL       : MIR0_CMDMASK_CONTROL_Field := 16#0#;
      --  Access Arbitration Bits
      ARBACC        : MIR0_CMDMASK_ARBACC_Field := 16#0#;
      --  Access Mask Bits
      MASKACC       : MIR0_CMDMASK_MASKACC_Field := 16#0#;
      --  Write/Read RAM
      WRRD          : MIR0_CMDMASK_WRRD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIR0_CMDMASK_Register use record
      DATAB         at 0 range 0 .. 0;
      DATAA         at 0 range 1 .. 1;
      TXRQSTNEWDAT  at 0 range 2 .. 2;
      CLRINTPND     at 0 range 3 .. 3;
      CONTROL       at 0 range 4 .. 4;
      ARBACC        at 0 range 5 .. 5;
      MASKACC       at 0 range 6 .. 6;
      WRRD          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype MIR0_MASK_MASK_Field is Interfaces.EFM32.UInt29;
   subtype MIR0_MASK_MDIR_Field is Interfaces.EFM32.Bit;
   subtype MIR0_MASK_MXTD_Field is Interfaces.EFM32.Bit;

   --  Interface Mask Register
   type MIR0_MASK_Register is record
      --  Identifier Mask
      MASK           : MIR0_MASK_MASK_Field := 16#1FFFFFFF#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Mask Message Direction
      MDIR           : MIR0_MASK_MDIR_Field := 16#1#;
      --  Mask Extended Identifier
      MXTD           : MIR0_MASK_MXTD_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIR0_MASK_Register use record
      MASK           at 0 range 0 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      MDIR           at 0 range 30 .. 30;
      MXTD           at 0 range 31 .. 31;
   end record;

   subtype MIR0_ARB_ID_Field is Interfaces.EFM32.UInt29;
   subtype MIR0_ARB_DIR_Field is Interfaces.EFM32.Bit;
   subtype MIR0_ARB_XTD_Field is Interfaces.EFM32.Bit;
   subtype MIR0_ARB_MSGVAL_Field is Interfaces.EFM32.Bit;

   --  Interface Arbitration Register
   type MIR0_ARB_Register is record
      --  Message Identifier
      ID     : MIR0_ARB_ID_Field := 16#0#;
      --  Message Direction
      DIR    : MIR0_ARB_DIR_Field := 16#0#;
      --  Extended Identifier
      XTD    : MIR0_ARB_XTD_Field := 16#0#;
      --  Message Valid
      MSGVAL : MIR0_ARB_MSGVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIR0_ARB_Register use record
      ID     at 0 range 0 .. 28;
      DIR    at 0 range 29 .. 29;
      XTD    at 0 range 30 .. 30;
      MSGVAL at 0 range 31 .. 31;
   end record;

   subtype MIR0_CTRL_DLC_Field is Interfaces.EFM32.UInt4;
   subtype MIR0_CTRL_EOB_Field is Interfaces.EFM32.Bit;
   subtype MIR0_CTRL_TXRQST_Field is Interfaces.EFM32.Bit;
   subtype MIR0_CTRL_RMTEN_Field is Interfaces.EFM32.Bit;
   subtype MIR0_CTRL_RXIE_Field is Interfaces.EFM32.Bit;
   subtype MIR0_CTRL_TXIE_Field is Interfaces.EFM32.Bit;
   subtype MIR0_CTRL_UMASK_Field is Interfaces.EFM32.Bit;
   subtype MIR0_CTRL_INTPND_Field is Interfaces.EFM32.Bit;
   subtype MIR0_CTRL_MESSAGEOF_Field is Interfaces.EFM32.Bit;
   subtype MIR0_CTRL_DATAVALID_Field is Interfaces.EFM32.Bit;

   --  Interface Message Control Register
   type MIR0_CTRL_Register is record
      --  Data Length Code
      DLC            : MIR0_CTRL_DLC_Field := 16#0#;
      --  unspecified
      Reserved_4_6   : Interfaces.EFM32.UInt3 := 16#0#;
      --  End of Buffer
      EOB            : MIR0_CTRL_EOB_Field := 16#0#;
      --  Transmit Request
      TXRQST         : MIR0_CTRL_TXRQST_Field := 16#0#;
      --  Remote Enable
      RMTEN          : MIR0_CTRL_RMTEN_Field := 16#0#;
      --  Receive Interrupt Enable
      RXIE           : MIR0_CTRL_RXIE_Field := 16#0#;
      --  Transmit Interrupt Enable
      TXIE           : MIR0_CTRL_TXIE_Field := 16#0#;
      --  Use Acceptance Mask
      UMASK          : MIR0_CTRL_UMASK_Field := 16#0#;
      --  Interrupt Pending
      INTPND         : MIR0_CTRL_INTPND_Field := 16#0#;
      --  Message Lost (only Valid for Message Objects With Direction =
      --  Receive)
      MESSAGEOF      : MIR0_CTRL_MESSAGEOF_Field := 16#0#;
      --  New Data
      DATAVALID      : MIR0_CTRL_DATAVALID_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIR0_CTRL_Register use record
      DLC            at 0 range 0 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      EOB            at 0 range 7 .. 7;
      TXRQST         at 0 range 8 .. 8;
      RMTEN          at 0 range 9 .. 9;
      RXIE           at 0 range 10 .. 10;
      TXIE           at 0 range 11 .. 11;
      UMASK          at 0 range 12 .. 12;
      INTPND         at 0 range 13 .. 13;
      MESSAGEOF      at 0 range 14 .. 14;
      DATAVALID      at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MIR0_DATAL_DATA array element
   subtype MIR0_DATAL_DATA_Element is Interfaces.EFM32.Byte;

   --  MIR0_DATAL_DATA array
   type MIR0_DATAL_DATA_Field_Array is array (0 .. 3)
     of MIR0_DATAL_DATA_Element
     with Component_Size => 8, Size => 32;

   --  Interface Data a Register
   type MIR0_DATAL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  DATA as an array
            Arr : MIR0_DATAL_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIR0_DATAL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MIR0_DATAH_DATA array element
   subtype MIR0_DATAH_DATA_Element is Interfaces.EFM32.Byte;

   --  MIR0_DATAH_DATA array
   type MIR0_DATAH_DATA_Field_Array is array (4 .. 7)
     of MIR0_DATAH_DATA_Element
     with Component_Size => 8, Size => 32;

   --  Interface Data B Register
   type MIR0_DATAH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  DATA as an array
            Arr : MIR0_DATAH_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIR0_DATAH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype MIR0_CMDREQ_MSGNUM_Field is Interfaces.EFM32.UInt6;
   subtype MIR0_CMDREQ_BUSY_Field is Interfaces.EFM32.Bit;

   --  Interface Command Request Register
   type MIR0_CMDREQ_Register is record
      --  Message Number
      MSGNUM         : MIR0_CMDREQ_MSGNUM_Field := 16#1#;
      --  unspecified
      Reserved_6_14  : Interfaces.EFM32.UInt9 := 16#0#;
      --  Read-only. Busy Flag
      BUSY           : MIR0_CMDREQ_BUSY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIR0_CMDREQ_Register use record
      MSGNUM         at 0 range 0 .. 5;
      Reserved_6_14  at 0 range 6 .. 14;
      BUSY           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype MIR1_CMDMASK_DATAB_Field is Interfaces.EFM32.Bit;
   subtype MIR1_CMDMASK_DATAA_Field is Interfaces.EFM32.Bit;
   subtype MIR1_CMDMASK_TXRQSTNEWDAT_Field is Interfaces.EFM32.Bit;
   subtype MIR1_CMDMASK_CLRINTPND_Field is Interfaces.EFM32.Bit;
   subtype MIR1_CMDMASK_CONTROL_Field is Interfaces.EFM32.Bit;
   subtype MIR1_CMDMASK_ARBACC_Field is Interfaces.EFM32.Bit;
   subtype MIR1_CMDMASK_MASKACC_Field is Interfaces.EFM32.Bit;
   subtype MIR1_CMDMASK_WRRD_Field is Interfaces.EFM32.Bit;

   --  Interface Command Mask Register
   type MIR1_CMDMASK_Register is record
      --  CC Channel Mode
      DATAB         : MIR1_CMDMASK_DATAB_Field := 16#0#;
      --  Access Data Bytes 0-3
      DATAA         : MIR1_CMDMASK_DATAA_Field := 16#0#;
      --  Transmission Request Bit/ New Data Bit
      TXRQSTNEWDAT  : MIR1_CMDMASK_TXRQSTNEWDAT_Field := 16#0#;
      --  Clear Interrupt Pending Bit
      CLRINTPND     : MIR1_CMDMASK_CLRINTPND_Field := 16#0#;
      --  Access Control Bits
      CONTROL       : MIR1_CMDMASK_CONTROL_Field := 16#0#;
      --  Access Arbitration Bits
      ARBACC        : MIR1_CMDMASK_ARBACC_Field := 16#0#;
      --  Access Mask Bits
      MASKACC       : MIR1_CMDMASK_MASKACC_Field := 16#0#;
      --  Write/Read RAM
      WRRD          : MIR1_CMDMASK_WRRD_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIR1_CMDMASK_Register use record
      DATAB         at 0 range 0 .. 0;
      DATAA         at 0 range 1 .. 1;
      TXRQSTNEWDAT  at 0 range 2 .. 2;
      CLRINTPND     at 0 range 3 .. 3;
      CONTROL       at 0 range 4 .. 4;
      ARBACC        at 0 range 5 .. 5;
      MASKACC       at 0 range 6 .. 6;
      WRRD          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype MIR1_MASK_MASK_Field is Interfaces.EFM32.UInt29;
   subtype MIR1_MASK_MDIR_Field is Interfaces.EFM32.Bit;
   subtype MIR1_MASK_MXTD_Field is Interfaces.EFM32.Bit;

   --  Interface Mask Register
   type MIR1_MASK_Register is record
      --  Identifier Mask
      MASK           : MIR1_MASK_MASK_Field := 16#1FFFFFFF#;
      --  unspecified
      Reserved_29_29 : Interfaces.EFM32.Bit := 16#0#;
      --  Mask Message Direction
      MDIR           : MIR1_MASK_MDIR_Field := 16#1#;
      --  Mask Extended Identifier
      MXTD           : MIR1_MASK_MXTD_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIR1_MASK_Register use record
      MASK           at 0 range 0 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      MDIR           at 0 range 30 .. 30;
      MXTD           at 0 range 31 .. 31;
   end record;

   subtype MIR1_ARB_ID_Field is Interfaces.EFM32.UInt29;
   subtype MIR1_ARB_DIR_Field is Interfaces.EFM32.Bit;
   subtype MIR1_ARB_XTD_Field is Interfaces.EFM32.Bit;
   subtype MIR1_ARB_MSGVAL_Field is Interfaces.EFM32.Bit;

   --  Interface Arbitration Register
   type MIR1_ARB_Register is record
      --  Message Identifier
      ID     : MIR1_ARB_ID_Field := 16#0#;
      --  Message Direction
      DIR    : MIR1_ARB_DIR_Field := 16#0#;
      --  Extended Identifier
      XTD    : MIR1_ARB_XTD_Field := 16#0#;
      --  Message Valid
      MSGVAL : MIR1_ARB_MSGVAL_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIR1_ARB_Register use record
      ID     at 0 range 0 .. 28;
      DIR    at 0 range 29 .. 29;
      XTD    at 0 range 30 .. 30;
      MSGVAL at 0 range 31 .. 31;
   end record;

   subtype MIR1_CTRL_DLC_Field is Interfaces.EFM32.UInt4;
   subtype MIR1_CTRL_EOB_Field is Interfaces.EFM32.Bit;
   subtype MIR1_CTRL_TXRQST_Field is Interfaces.EFM32.Bit;
   subtype MIR1_CTRL_RMTEN_Field is Interfaces.EFM32.Bit;
   subtype MIR1_CTRL_RXIE_Field is Interfaces.EFM32.Bit;
   subtype MIR1_CTRL_TXIE_Field is Interfaces.EFM32.Bit;
   subtype MIR1_CTRL_UMASK_Field is Interfaces.EFM32.Bit;
   subtype MIR1_CTRL_INTPND_Field is Interfaces.EFM32.Bit;
   subtype MIR1_CTRL_MESSAGEOF_Field is Interfaces.EFM32.Bit;
   subtype MIR1_CTRL_DATAVALID_Field is Interfaces.EFM32.Bit;

   --  Interface Message Control Register
   type MIR1_CTRL_Register is record
      --  Data Length Code
      DLC            : MIR1_CTRL_DLC_Field := 16#0#;
      --  unspecified
      Reserved_4_6   : Interfaces.EFM32.UInt3 := 16#0#;
      --  End of Buffer
      EOB            : MIR1_CTRL_EOB_Field := 16#0#;
      --  Transmit Request
      TXRQST         : MIR1_CTRL_TXRQST_Field := 16#0#;
      --  Remote Enable
      RMTEN          : MIR1_CTRL_RMTEN_Field := 16#0#;
      --  Receive Interrupt Enable
      RXIE           : MIR1_CTRL_RXIE_Field := 16#0#;
      --  Transmit Interrupt Enable
      TXIE           : MIR1_CTRL_TXIE_Field := 16#0#;
      --  Use Acceptance Mask
      UMASK          : MIR1_CTRL_UMASK_Field := 16#0#;
      --  Interrupt Pending
      INTPND         : MIR1_CTRL_INTPND_Field := 16#0#;
      --  Message Lost (only Valid for Message Objects With Direction =
      --  Receive)
      MESSAGEOF      : MIR1_CTRL_MESSAGEOF_Field := 16#0#;
      --  New Data
      DATAVALID      : MIR1_CTRL_DATAVALID_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIR1_CTRL_Register use record
      DLC            at 0 range 0 .. 3;
      Reserved_4_6   at 0 range 4 .. 6;
      EOB            at 0 range 7 .. 7;
      TXRQST         at 0 range 8 .. 8;
      RMTEN          at 0 range 9 .. 9;
      RXIE           at 0 range 10 .. 10;
      TXIE           at 0 range 11 .. 11;
      UMASK          at 0 range 12 .. 12;
      INTPND         at 0 range 13 .. 13;
      MESSAGEOF      at 0 range 14 .. 14;
      DATAVALID      at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  MIR1_DATAL_DATA array element
   subtype MIR1_DATAL_DATA_Element is Interfaces.EFM32.Byte;

   --  MIR1_DATAL_DATA array
   type MIR1_DATAL_DATA_Field_Array is array (0 .. 3)
     of MIR1_DATAL_DATA_Element
     with Component_Size => 8, Size => 32;

   --  Interface Data a Register
   type MIR1_DATAL_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  DATA as an array
            Arr : MIR1_DATAL_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIR1_DATAL_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  MIR1_DATAH_DATA array element
   subtype MIR1_DATAH_DATA_Element is Interfaces.EFM32.Byte;

   --  MIR1_DATAH_DATA array
   type MIR1_DATAH_DATA_Field_Array is array (4 .. 7)
     of MIR1_DATAH_DATA_Element
     with Component_Size => 8, Size => 32;

   --  Interface Data B Register
   type MIR1_DATAH_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  DATA as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  DATA as an array
            Arr : MIR1_DATAH_DATA_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIR1_DATAH_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype MIR1_CMDREQ_MSGNUM_Field is Interfaces.EFM32.UInt6;
   subtype MIR1_CMDREQ_BUSY_Field is Interfaces.EFM32.Bit;

   --  Interface Command Request Register
   type MIR1_CMDREQ_Register is record
      --  Message Number
      MSGNUM         : MIR1_CMDREQ_MSGNUM_Field := 16#1#;
      --  unspecified
      Reserved_6_14  : Interfaces.EFM32.UInt9 := 16#0#;
      --  Read-only. Busy Flag
      BUSY           : MIR1_CMDREQ_BUSY_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MIR1_CMDREQ_Register use record
      MSGNUM         at 0 range 0 .. 5;
      Reserved_6_14  at 0 range 6 .. 14;
      BUSY           at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CAN0
   type CAN0_Peripheral is record
      --  Control Register
      CTRL         : aliased CTRL_Register;
      --  Status Register
      STATUS       : aliased STATUS_Register;
      --  Error Count Register
      ERRCNT       : aliased ERRCNT_Register;
      --  Bit Timing Register
      BITTIMING    : aliased BITTIMING_Register;
      --  Interrupt Identification Register
      INTID        : aliased INTID_Register;
      --  Test Register
      TEST         : aliased TEST_Register;
      --  BRP Extension Register
      BRPE         : aliased BRPE_Register;
      --  Transmission Request Register
      TRANSREQ     : aliased Interfaces.EFM32.UInt32;
      --  New Data Register
      MESSAGEDATA  : aliased Interfaces.EFM32.UInt32;
      --  Message Valid Register
      MESSAGESTATE : aliased Interfaces.EFM32.UInt32;
      --  Configuration Register
      CONFIG       : aliased CONFIG_Register;
      --  Message Object Interrupt Flag Register
      IF0IF        : aliased Interfaces.EFM32.UInt32;
      --  Message Object Interrupt Flag Set Register
      IF0IFS       : aliased Interfaces.EFM32.UInt32;
      --  Message Object Interrupt Flag Clear Register
      IF0IFC       : aliased Interfaces.EFM32.UInt32;
      --  Message Object Interrupt Enable Register
      IF0IEN       : aliased Interfaces.EFM32.UInt32;
      --  Status Interrupt Flag Register
      IF1IF        : aliased IF1IF_Register;
      --  Message Object Interrupt Flag Set Register
      IF1IFS       : aliased IF1IFS_Register;
      --  Message Object Interrupt Flag Clear Register
      IF1IFC       : aliased IF1IFC_Register;
      --  Status Interrupt Enable Register
      IF1IEN       : aliased IF1IEN_Register;
      --  I/O Routing Register
      ROUTE        : aliased ROUTE_Register;
      --  Interface Command Mask Register
      MIR0_CMDMASK : aliased MIR0_CMDMASK_Register;
      --  Interface Mask Register
      MIR0_MASK    : aliased MIR0_MASK_Register;
      --  Interface Arbitration Register
      MIR0_ARB     : aliased MIR0_ARB_Register;
      --  Interface Message Control Register
      MIR0_CTRL    : aliased MIR0_CTRL_Register;
      --  Interface Data a Register
      MIR0_DATAL   : aliased MIR0_DATAL_Register;
      --  Interface Data B Register
      MIR0_DATAH   : aliased MIR0_DATAH_Register;
      --  Interface Command Request Register
      MIR0_CMDREQ  : aliased MIR0_CMDREQ_Register;
      --  Interface Command Mask Register
      MIR1_CMDMASK : aliased MIR1_CMDMASK_Register;
      --  Interface Mask Register
      MIR1_MASK    : aliased MIR1_MASK_Register;
      --  Interface Arbitration Register
      MIR1_ARB     : aliased MIR1_ARB_Register;
      --  Interface Message Control Register
      MIR1_CTRL    : aliased MIR1_CTRL_Register;
      --  Interface Data a Register
      MIR1_DATAL   : aliased MIR1_DATAL_Register;
      --  Interface Data B Register
      MIR1_DATAH   : aliased MIR1_DATAH_Register;
      --  Interface Command Request Register
      MIR1_CMDREQ  : aliased MIR1_CMDREQ_Register;
   end record
     with Volatile;

   for CAN0_Peripheral use record
      CTRL         at 16#0# range 0 .. 31;
      STATUS       at 16#4# range 0 .. 31;
      ERRCNT       at 16#8# range 0 .. 31;
      BITTIMING    at 16#C# range 0 .. 31;
      INTID        at 16#10# range 0 .. 31;
      TEST         at 16#14# range 0 .. 31;
      BRPE         at 16#18# range 0 .. 31;
      TRANSREQ     at 16#1C# range 0 .. 31;
      MESSAGEDATA  at 16#20# range 0 .. 31;
      MESSAGESTATE at 16#28# range 0 .. 31;
      CONFIG       at 16#2C# range 0 .. 31;
      IF0IF        at 16#30# range 0 .. 31;
      IF0IFS       at 16#34# range 0 .. 31;
      IF0IFC       at 16#38# range 0 .. 31;
      IF0IEN       at 16#3C# range 0 .. 31;
      IF1IF        at 16#40# range 0 .. 31;
      IF1IFS       at 16#44# range 0 .. 31;
      IF1IFC       at 16#48# range 0 .. 31;
      IF1IEN       at 16#4C# range 0 .. 31;
      ROUTE        at 16#50# range 0 .. 31;
      MIR0_CMDMASK at 16#60# range 0 .. 31;
      MIR0_MASK    at 16#64# range 0 .. 31;
      MIR0_ARB     at 16#68# range 0 .. 31;
      MIR0_CTRL    at 16#6C# range 0 .. 31;
      MIR0_DATAL   at 16#70# range 0 .. 31;
      MIR0_DATAH   at 16#74# range 0 .. 31;
      MIR0_CMDREQ  at 16#78# range 0 .. 31;
      MIR1_CMDMASK at 16#80# range 0 .. 31;
      MIR1_MASK    at 16#84# range 0 .. 31;
      MIR1_ARB     at 16#88# range 0 .. 31;
      MIR1_CTRL    at 16#8C# range 0 .. 31;
      MIR1_DATAL   at 16#90# range 0 .. 31;
      MIR1_DATAH   at 16#94# range 0 .. 31;
      MIR1_CMDREQ  at 16#98# range 0 .. 31;
   end record;

   --  CAN0
   CAN0_Periph : aliased CAN0_Peripheral
     with Import, Address => CAN0_Base;

end Interfaces.EFM32.CAN0;
