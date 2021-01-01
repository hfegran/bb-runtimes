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

--  LDMA
package Interfaces.EFM32.LDMA is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_SYNCPRSSETEN_Field is Interfaces.EFM32.Byte;
   subtype CTRL_SYNCPRSCLREN_Field is Interfaces.EFM32.Byte;
   subtype CTRL_NUMFIXED_Field is Interfaces.EFM32.UInt4;

   --  DMA Control Register
   type CTRL_Register is record
      --  Synchronization PRS Set Enable
      SYNCPRSSETEN   : CTRL_SYNCPRSSETEN_Field := 16#0#;
      --  Synchronization PRS Clear Enable
      SYNCPRSCLREN   : CTRL_SYNCPRSCLREN_Field := 16#0#;
      --  unspecified
      Reserved_16_23 : Interfaces.EFM32.Byte := 16#0#;
      --  Number of Fixed Priority Channels
      NUMFIXED       : CTRL_NUMFIXED_Field := 16#B#;
      --  unspecified
      Reserved_28_31 : Interfaces.EFM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      SYNCPRSSETEN   at 0 range 0 .. 7;
      SYNCPRSCLREN   at 0 range 8 .. 15;
      Reserved_16_23 at 0 range 16 .. 23;
      NUMFIXED       at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype STATUS_ANYBUSY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_ANYREQ_Field is Interfaces.EFM32.Bit;
   subtype STATUS_CHGRANT_Field is Interfaces.EFM32.UInt4;
   subtype STATUS_CHERROR_Field is Interfaces.EFM32.UInt4;
   subtype STATUS_FIFOLEVEL_Field is Interfaces.EFM32.UInt5;
   subtype STATUS_CHNUM_Field is Interfaces.EFM32.UInt5;

   --  DMA Status Register
   type STATUS_Register is record
      --  Read-only. Any DMA Channel Busy
      ANYBUSY        : STATUS_ANYBUSY_Field;
      --  Read-only. Any DMA Channel Request Pending
      ANYREQ         : STATUS_ANYREQ_Field;
      --  unspecified
      Reserved_2_2   : Interfaces.EFM32.Bit;
      --  Read-only. Granted Channel Number
      CHGRANT        : STATUS_CHGRANT_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit;
      --  Read-only. Errant Channel Number
      CHERROR        : STATUS_CHERROR_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.EFM32.UInt4;
      --  Read-only. FIFO Level
      FIFOLEVEL      : STATUS_FIFOLEVEL_Field;
      --  unspecified
      Reserved_21_23 : Interfaces.EFM32.UInt3;
      --  Read-only. Number of Channels
      CHNUM          : STATUS_CHNUM_Field;
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      ANYBUSY        at 0 range 0 .. 0;
      ANYREQ         at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      CHGRANT        at 0 range 3 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      CHERROR        at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      FIFOLEVEL      at 0 range 16 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      CHNUM          at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype SYNC_SYNCTRIG_Field is Interfaces.EFM32.Byte;

   --  DMA Synchronization Trigger Register (Single-Cycle RMW)
   type SYNC_Register is record
      --  Synchronization Trigger
      SYNCTRIG      : SYNC_SYNCTRIG_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNC_Register use record
      SYNCTRIG      at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype CHEN_CHEN_Field is Interfaces.EFM32.UInt12;

   --  DMA Channel Enable Register (Single-Cycle RMW)
   type CHEN_Register is record
      --  Channel Enables
      CHEN           : CHEN_CHEN_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHEN_Register use record
      CHEN           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CHBUSY_BUSY_Field is Interfaces.EFM32.UInt12;

   --  DMA Channel Busy Register
   type CHBUSY_Register is record
      --  Read-only. Channels Busy
      BUSY           : CHBUSY_BUSY_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHBUSY_Register use record
      BUSY           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CHDONE_CHDONE_Field is Interfaces.EFM32.UInt12;

   --  DMA Channel Linking Done Register (Single-Cycle RMW)
   type CHDONE_Register is record
      --  DMA Channel Linking or Done
      CHDONE         : CHDONE_CHDONE_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHDONE_Register use record
      CHDONE         at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DBGHALT_DBGHALT_Field is Interfaces.EFM32.UInt12;

   --  DMA Channel Debug Halt Register
   type DBGHALT_Register is record
      --  DMA Debug Halt
      DBGHALT        : DBGHALT_DBGHALT_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DBGHALT_Register use record
      DBGHALT        at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype SWREQ_SWREQ_Field is Interfaces.EFM32.UInt12;

   --  DMA Channel Software Transfer Request Register
   type SWREQ_Register is record
      --  Write-only. Software Transfer Requests
      SWREQ          : SWREQ_SWREQ_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SWREQ_Register use record
      SWREQ          at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype REQDIS_REQDIS_Field is Interfaces.EFM32.UInt12;

   --  DMA Channel Request Disable Register
   type REQDIS_Register is record
      --  DMA Request Disables
      REQDIS         : REQDIS_REQDIS_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REQDIS_Register use record
      REQDIS         at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype REQPEND_REQPEND_Field is Interfaces.EFM32.UInt12;

   --  DMA Channel Requests Pending Register
   type REQPEND_Register is record
      --  Read-only. DMA Requests Pending
      REQPEND        : REQPEND_REQPEND_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REQPEND_Register use record
      REQPEND        at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype LINKLOAD_LINKLOAD_Field is Interfaces.EFM32.UInt12;

   --  DMA Channel Link Load Register
   type LINKLOAD_Register is record
      --  Write-only. DMA Link Loads
      LINKLOAD       : LINKLOAD_LINKLOAD_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LINKLOAD_Register use record
      LINKLOAD       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype REQCLEAR_REQCLEAR_Field is Interfaces.EFM32.UInt12;

   --  DMA Channel Request Clear Register
   type REQCLEAR_Register is record
      --  Write-only. DMA Request Clear
      REQCLEAR       : REQCLEAR_REQCLEAR_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for REQCLEAR_Register use record
      REQCLEAR       at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype IF_DONE_Field is Interfaces.EFM32.UInt12;
   subtype IF_ERROR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. DMA Structure Operation Done Interrupt Flag
      DONE           : IF_DONE_Field;
      --  unspecified
      Reserved_12_30 : Interfaces.EFM32.UInt19;
      --  Read-only. Transfer Error Interrupt Flag
      ERROR          : IF_ERROR_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      DONE           at 0 range 0 .. 11;
      Reserved_12_30 at 0 range 12 .. 30;
      ERROR          at 0 range 31 .. 31;
   end record;

   subtype IFS_DONE_Field is Interfaces.EFM32.UInt12;
   subtype IFS_ERROR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set DONE Interrupt Flag
      DONE           : IFS_DONE_Field := 16#0#;
      --  unspecified
      Reserved_12_30 : Interfaces.EFM32.UInt19 := 16#0#;
      --  Write-only. Set ERROR Interrupt Flag
      ERROR          : IFS_ERROR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      DONE           at 0 range 0 .. 11;
      Reserved_12_30 at 0 range 12 .. 30;
      ERROR          at 0 range 31 .. 31;
   end record;

   subtype IFC_DONE_Field is Interfaces.EFM32.UInt12;
   subtype IFC_ERROR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear DONE Interrupt Flag
      DONE           : IFC_DONE_Field := 16#0#;
      --  unspecified
      Reserved_12_30 : Interfaces.EFM32.UInt19 := 16#0#;
      --  Write-only. Clear ERROR Interrupt Flag
      ERROR          : IFC_ERROR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      DONE           at 0 range 0 .. 11;
      Reserved_12_30 at 0 range 12 .. 30;
      ERROR          at 0 range 31 .. 31;
   end record;

   subtype IEN_DONE_Field is Interfaces.EFM32.UInt12;
   subtype IEN_ERROR_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  DONE Interrupt Enable
      DONE           : IEN_DONE_Field := 16#0#;
      --  unspecified
      Reserved_12_30 : Interfaces.EFM32.UInt19 := 16#0#;
      --  ERROR Interrupt Enable
      ERROR          : IEN_ERROR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      DONE           at 0 range 0 .. 11;
      Reserved_12_30 at 0 range 12 .. 30;
      ERROR          at 0 range 31 .. 31;
   end record;

   subtype CH0_REQSEL_SIGSEL_Field is Interfaces.EFM32.UInt4;

   --  Source Select
   type CH0_REQSEL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRS,
      --  Analog to Digital Converter 0
      ADC0,
      --  Analog to Digital Converter 0
      ADC1,
      --  Digital to Analog Converter 0
      VDAC0,
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
      --  Low Energy UART 0
      LEUART0,
      --  Low Energy UART 1
      LEUART1,
      --  I2C 0
      I2C0,
      --  I2C 1
      I2C1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  Memory System Controller
      MSC,
      --  Advanced Encryption Standard Accelerator
      CRYPTO0,
      --  External Bus Interface
      EBI,
      --  PDM Interface
      PDM,
      --  Capacitive touch sense module
      CSEN,
      --  Low Energy Sensor Interface
      LESENSE)
     with Size => 6;
   for CH0_REQSEL_SOURCESEL_Field use
     (NONE => 0,
      PRS => 1,
      ADC0 => 8,
      ADC1 => 9,
      VDAC0 => 10,
      USART0 => 12,
      USART1 => 13,
      USART2 => 14,
      USART3 => 15,
      USART4 => 16,
      UART0 => 18,
      UART1 => 19,
      LEUART0 => 20,
      LEUART1 => 21,
      I2C0 => 22,
      I2C1 => 23,
      TIMER0 => 25,
      TIMER1 => 26,
      TIMER2 => 27,
      TIMER3 => 28,
      WTIMER0 => 32,
      WTIMER1 => 33,
      MSC => 48,
      CRYPTO0 => 49,
      EBI => 50,
      PDM => 51,
      CSEN => 61,
      LESENSE => 62);

   --  Channel Peripheral Request Select Register
   type CH0_REQSEL_Register is record
      --  Signal Select
      SIGSEL         : CH0_REQSEL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Source Select
      SOURCESEL      : CH0_REQSEL_SOURCESEL_Field :=
                        Interfaces.EFM32.LDMA.NONE;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_REQSEL_Register use record
      SIGSEL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SOURCESEL      at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Arbitration Slot Number Select
   type CH0_CFG_ARBSLOTS_Field is
     (--  One arbitration slot selected
      ONE,
      --  Two arbitration slots selected
      TWO,
      --  Four arbitration slots selected
      FOUR,
      --  Eight arbitration slots selected
      EIGHT)
     with Size => 2;
   for CH0_CFG_ARBSLOTS_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      EIGHT => 3);

   subtype CH0_CFG_SRCINCSIGN_Field is Interfaces.EFM32.Bit;
   subtype CH0_CFG_DSTINCSIGN_Field is Interfaces.EFM32.Bit;

   --  Channel Configuration Register
   type CH0_CFG_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.EFM32.UInt16 := 16#0#;
      --  Arbitration Slot Number Select
      ARBSLOTS       : CH0_CFG_ARBSLOTS_Field := Interfaces.EFM32.LDMA.ONE;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Source Address Increment Sign
      SRCINCSIGN     : CH0_CFG_SRCINCSIGN_Field := 16#0#;
      --  Destination Address Increment Sign
      DSTINCSIGN     : CH0_CFG_DSTINCSIGN_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_CFG_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      ARBSLOTS       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      SRCINCSIGN     at 0 range 20 .. 20;
      DSTINCSIGN     at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH0_LOOP_LOOPCNT_Field is Interfaces.EFM32.Byte;

   --  Channel Loop Counter Register
   type CH0_LOOP_Register is record
      --  Linked Structure Sequence Loop Counter
      LOOPCNT       : CH0_LOOP_LOOPCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_LOOP_Register use record
      LOOPCNT       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DMA Structure Type
   type CH0_CTRL_STRUCTTYPE_Field is
     (--  DMA transfer structure type selected.
      TRANSFER,
      --  Synchronization structure type selected.
      SYNCHRONIZE,
      --  Write immediate value structure type selected.
      WRITE)
     with Size => 2;
   for CH0_CTRL_STRUCTTYPE_Field use
     (TRANSFER => 0,
      SYNCHRONIZE => 1,
      WRITE => 2);

   subtype CH0_CTRL_STRUCTREQ_Field is Interfaces.EFM32.Bit;
   subtype CH0_CTRL_XFERCNT_Field is Interfaces.EFM32.UInt11;
   subtype CH0_CTRL_BYTESWAP_Field is Interfaces.EFM32.Bit;

   --  Block Transfer Size
   type CH0_CTRL_BLOCKSIZE_Field is
     (--  One unit transfer per arbitration
      UNIT1,
      --  Two unit transfers per arbitration
      UNIT2,
      --  Three unit transfers per arbitration
      UNIT3,
      --  Four unit transfers per arbitration
      UNIT4,
      --  Six unit transfers per arbitration
      UNIT6,
      --  Eight unit transfers per arbitration
      UNIT8,
      --  Sixteen unit transfers per arbitration
      UNIT16,
      --  32 unit transfers per arbitration
      UNIT32,
      --  64 unit transfers per arbitration
      UNIT64,
      --  128 unit transfers per arbitration
      UNIT128,
      --  256 unit transfers per arbitration
      UNIT256,
      --  512 unit transfers per arbitration
      UNIT512,
      --  1024 unit transfers per arbitration
      UNIT1024,
      --  Transfer all units as specified by the XFRCNT field
      ALL_k)
     with Size => 4;
   for CH0_CTRL_BLOCKSIZE_Field use
     (UNIT1 => 0,
      UNIT2 => 1,
      UNIT3 => 2,
      UNIT4 => 3,
      UNIT6 => 4,
      UNIT8 => 5,
      UNIT16 => 7,
      UNIT32 => 9,
      UNIT64 => 10,
      UNIT128 => 11,
      UNIT256 => 12,
      UNIT512 => 13,
      UNIT1024 => 14,
      ALL_k => 15);

   subtype CH0_CTRL_DONEIFSEN_Field is Interfaces.EFM32.Bit;
   subtype CH0_CTRL_REQMODE_Field is Interfaces.EFM32.Bit;
   subtype CH0_CTRL_DECLOOPCNT_Field is Interfaces.EFM32.Bit;
   subtype CH0_CTRL_IGNORESREQ_Field is Interfaces.EFM32.Bit;

   --  Source Address Increment Size
   type CH0_CTRL_SRCINC_Field is
     (--  Increment source address by one unit data size after each read
      ONE,
      --  Increment source address by two unit data sizes after each read
      TWO,
      --  Increment source address by four unit data sizes after each read
      FOUR,
      --  Do not increment the source address. In this mode reads are made from a
--  fixed source address, for example reading FIFO.
      NONE)
     with Size => 2;
   for CH0_CTRL_SRCINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   --  Unit Data Transfer Size
   type CH0_CTRL_SIZE_Field is
     (--  Each unit transfer is a byte
      BYTE,
      --  Each unit transfer is a half-word
      HALFWORD,
      --  Each unit transfer is a word
      WORD)
     with Size => 2;
   for CH0_CTRL_SIZE_Field use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   --  Destination Address Increment Size
   type CH0_CTRL_DSTINC_Field is
     (--  Increment destination address by one unit data size after each write
      ONE,
      --  Increment destination address by two unit data sizes after each write
      TWO,
      --  Increment destination address by four unit data sizes after each write
      FOUR,
      --  Do not increment the destination address. Writes are made to a fixed
--  destination address, for example writing to a FIFO.
      NONE)
     with Size => 2;
   for CH0_CTRL_DSTINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   subtype CH0_CTRL_SRCMODE_Field is Interfaces.EFM32.Bit;
   subtype CH0_CTRL_DSTMODE_Field is Interfaces.EFM32.Bit;

   --  Channel Descriptor Control Word Register
   type CH0_CTRL_Register is record
      --  Read-only. DMA Structure Type
      STRUCTTYPE   : CH0_CTRL_STRUCTTYPE_Field :=
                      Interfaces.EFM32.LDMA.TRANSFER;
      --  unspecified
      Reserved_2_2 : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Structure DMA Transfer Request
      STRUCTREQ    : CH0_CTRL_STRUCTREQ_Field := 16#0#;
      --  DMA Unit Data Transfer Count
      XFERCNT      : CH0_CTRL_XFERCNT_Field := 16#0#;
      --  Endian Byte Swap
      BYTESWAP     : CH0_CTRL_BYTESWAP_Field := 16#0#;
      --  Block Transfer Size
      BLOCKSIZE    : CH0_CTRL_BLOCKSIZE_Field := Interfaces.EFM32.LDMA.UNIT1;
      --  DMA Operation Done Interrupt Flag Set Enable
      DONEIFSEN    : CH0_CTRL_DONEIFSEN_Field := 16#0#;
      --  DMA Request Transfer Mode Select
      REQMODE      : CH0_CTRL_REQMODE_Field := 16#0#;
      --  Decrement Loop Count
      DECLOOPCNT   : CH0_CTRL_DECLOOPCNT_Field := 16#0#;
      --  Ignore Sreq
      IGNORESREQ   : CH0_CTRL_IGNORESREQ_Field := 16#0#;
      --  Source Address Increment Size
      SRCINC       : CH0_CTRL_SRCINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Unit Data Transfer Size
      SIZE         : CH0_CTRL_SIZE_Field := Interfaces.EFM32.LDMA.BYTE;
      --  Destination Address Increment Size
      DSTINC       : CH0_CTRL_DSTINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Read-only. Source Addressing Mode
      SRCMODE      : CH0_CTRL_SRCMODE_Field := 16#0#;
      --  Read-only. Destination Addressing Mode
      DSTMODE      : CH0_CTRL_DSTMODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_CTRL_Register use record
      STRUCTTYPE   at 0 range 0 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      STRUCTREQ    at 0 range 3 .. 3;
      XFERCNT      at 0 range 4 .. 14;
      BYTESWAP     at 0 range 15 .. 15;
      BLOCKSIZE    at 0 range 16 .. 19;
      DONEIFSEN    at 0 range 20 .. 20;
      REQMODE      at 0 range 21 .. 21;
      DECLOOPCNT   at 0 range 22 .. 22;
      IGNORESREQ   at 0 range 23 .. 23;
      SRCINC       at 0 range 24 .. 25;
      SIZE         at 0 range 26 .. 27;
      DSTINC       at 0 range 28 .. 29;
      SRCMODE      at 0 range 30 .. 30;
      DSTMODE      at 0 range 31 .. 31;
   end record;

   subtype CH0_LINK_LINKMODE_Field is Interfaces.EFM32.Bit;
   subtype CH0_LINK_LINK_Field is Interfaces.EFM32.Bit;
   subtype CH0_LINK_LINKADDR_Field is Interfaces.EFM32.UInt30;

   --  Channel Descriptor Link Structure Address Register
   type CH0_LINK_Register is record
      --  Read-only. Link Structure Addressing Mode
      LINKMODE : CH0_LINK_LINKMODE_Field := 16#0#;
      --  Link Next Structure
      LINK     : CH0_LINK_LINK_Field := 16#0#;
      --  Link Structure Address
      LINKADDR : CH0_LINK_LINKADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_LINK_Register use record
      LINKMODE at 0 range 0 .. 0;
      LINK     at 0 range 1 .. 1;
      LINKADDR at 0 range 2 .. 31;
   end record;

   subtype CH1_REQSEL_SIGSEL_Field is Interfaces.EFM32.UInt4;

   --  Source Select
   type CH1_REQSEL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRS,
      --  Analog to Digital Converter 0
      ADC0,
      --  Analog to Digital Converter 0
      ADC1,
      --  Digital to Analog Converter 0
      VDAC0,
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
      --  Low Energy UART 0
      LEUART0,
      --  Low Energy UART 1
      LEUART1,
      --  I2C 0
      I2C0,
      --  I2C 1
      I2C1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  Memory System Controller
      MSC,
      --  Advanced Encryption Standard Accelerator
      CRYPTO0,
      --  External Bus Interface
      EBI,
      --  PDM Interface
      PDM,
      --  Capacitive touch sense module
      CSEN,
      --  Low Energy Sensor Interface
      LESENSE)
     with Size => 6;
   for CH1_REQSEL_SOURCESEL_Field use
     (NONE => 0,
      PRS => 1,
      ADC0 => 8,
      ADC1 => 9,
      VDAC0 => 10,
      USART0 => 12,
      USART1 => 13,
      USART2 => 14,
      USART3 => 15,
      USART4 => 16,
      UART0 => 18,
      UART1 => 19,
      LEUART0 => 20,
      LEUART1 => 21,
      I2C0 => 22,
      I2C1 => 23,
      TIMER0 => 25,
      TIMER1 => 26,
      TIMER2 => 27,
      TIMER3 => 28,
      WTIMER0 => 32,
      WTIMER1 => 33,
      MSC => 48,
      CRYPTO0 => 49,
      EBI => 50,
      PDM => 51,
      CSEN => 61,
      LESENSE => 62);

   --  Channel Peripheral Request Select Register
   type CH1_REQSEL_Register is record
      --  Signal Select
      SIGSEL         : CH1_REQSEL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Source Select
      SOURCESEL      : CH1_REQSEL_SOURCESEL_Field :=
                        Interfaces.EFM32.LDMA.NONE;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_REQSEL_Register use record
      SIGSEL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SOURCESEL      at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Arbitration Slot Number Select
   type CH1_CFG_ARBSLOTS_Field is
     (--  One arbitration slot selected
      ONE,
      --  Two arbitration slots selected
      TWO,
      --  Four arbitration slots selected
      FOUR,
      --  Eight arbitration slots selected
      EIGHT)
     with Size => 2;
   for CH1_CFG_ARBSLOTS_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      EIGHT => 3);

   subtype CH1_CFG_SRCINCSIGN_Field is Interfaces.EFM32.Bit;
   subtype CH1_CFG_DSTINCSIGN_Field is Interfaces.EFM32.Bit;

   --  Channel Configuration Register
   type CH1_CFG_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.EFM32.UInt16 := 16#0#;
      --  Arbitration Slot Number Select
      ARBSLOTS       : CH1_CFG_ARBSLOTS_Field := Interfaces.EFM32.LDMA.ONE;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Source Address Increment Sign
      SRCINCSIGN     : CH1_CFG_SRCINCSIGN_Field := 16#0#;
      --  Destination Address Increment Sign
      DSTINCSIGN     : CH1_CFG_DSTINCSIGN_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_CFG_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      ARBSLOTS       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      SRCINCSIGN     at 0 range 20 .. 20;
      DSTINCSIGN     at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH1_LOOP_LOOPCNT_Field is Interfaces.EFM32.Byte;

   --  Channel Loop Counter Register
   type CH1_LOOP_Register is record
      --  Linked Structure Sequence Loop Counter
      LOOPCNT       : CH1_LOOP_LOOPCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_LOOP_Register use record
      LOOPCNT       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DMA Structure Type
   type CH1_CTRL_STRUCTTYPE_Field is
     (--  DMA transfer structure type selected.
      TRANSFER,
      --  Synchronization structure type selected.
      SYNCHRONIZE,
      --  Write immediate value structure type selected.
      WRITE)
     with Size => 2;
   for CH1_CTRL_STRUCTTYPE_Field use
     (TRANSFER => 0,
      SYNCHRONIZE => 1,
      WRITE => 2);

   subtype CH1_CTRL_STRUCTREQ_Field is Interfaces.EFM32.Bit;
   subtype CH1_CTRL_XFERCNT_Field is Interfaces.EFM32.UInt11;
   subtype CH1_CTRL_BYTESWAP_Field is Interfaces.EFM32.Bit;

   --  Block Transfer Size
   type CH1_CTRL_BLOCKSIZE_Field is
     (--  One unit transfer per arbitration
      UNIT1,
      --  Two unit transfers per arbitration
      UNIT2,
      --  Three unit transfers per arbitration
      UNIT3,
      --  Four unit transfers per arbitration
      UNIT4,
      --  Six unit transfers per arbitration
      UNIT6,
      --  Eight unit transfers per arbitration
      UNIT8,
      --  Sixteen unit transfers per arbitration
      UNIT16,
      --  32 unit transfers per arbitration
      UNIT32,
      --  64 unit transfers per arbitration
      UNIT64,
      --  128 unit transfers per arbitration
      UNIT128,
      --  256 unit transfers per arbitration
      UNIT256,
      --  512 unit transfers per arbitration
      UNIT512,
      --  1024 unit transfers per arbitration
      UNIT1024,
      --  Transfer all units as specified by the XFRCNT field
      ALL_k)
     with Size => 4;
   for CH1_CTRL_BLOCKSIZE_Field use
     (UNIT1 => 0,
      UNIT2 => 1,
      UNIT3 => 2,
      UNIT4 => 3,
      UNIT6 => 4,
      UNIT8 => 5,
      UNIT16 => 7,
      UNIT32 => 9,
      UNIT64 => 10,
      UNIT128 => 11,
      UNIT256 => 12,
      UNIT512 => 13,
      UNIT1024 => 14,
      ALL_k => 15);

   subtype CH1_CTRL_DONEIFSEN_Field is Interfaces.EFM32.Bit;
   subtype CH1_CTRL_REQMODE_Field is Interfaces.EFM32.Bit;
   subtype CH1_CTRL_DECLOOPCNT_Field is Interfaces.EFM32.Bit;
   subtype CH1_CTRL_IGNORESREQ_Field is Interfaces.EFM32.Bit;

   --  Source Address Increment Size
   type CH1_CTRL_SRCINC_Field is
     (--  Increment source address by one unit data size after each read
      ONE,
      --  Increment source address by two unit data sizes after each read
      TWO,
      --  Increment source address by four unit data sizes after each read
      FOUR,
      --  Do not increment the source address. In this mode reads are made from a
--  fixed source address, for example reading FIFO.
      NONE)
     with Size => 2;
   for CH1_CTRL_SRCINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   --  Unit Data Transfer Size
   type CH1_CTRL_SIZE_Field is
     (--  Each unit transfer is a byte
      BYTE,
      --  Each unit transfer is a half-word
      HALFWORD,
      --  Each unit transfer is a word
      WORD)
     with Size => 2;
   for CH1_CTRL_SIZE_Field use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   --  Destination Address Increment Size
   type CH1_CTRL_DSTINC_Field is
     (--  Increment destination address by one unit data size after each write
      ONE,
      --  Increment destination address by two unit data sizes after each write
      TWO,
      --  Increment destination address by four unit data sizes after each write
      FOUR,
      --  Do not increment the destination address. Writes are made to a fixed
--  destination address, for example writing to a FIFO.
      NONE)
     with Size => 2;
   for CH1_CTRL_DSTINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   subtype CH1_CTRL_SRCMODE_Field is Interfaces.EFM32.Bit;
   subtype CH1_CTRL_DSTMODE_Field is Interfaces.EFM32.Bit;

   --  Channel Descriptor Control Word Register
   type CH1_CTRL_Register is record
      --  Read-only. DMA Structure Type
      STRUCTTYPE   : CH1_CTRL_STRUCTTYPE_Field :=
                      Interfaces.EFM32.LDMA.TRANSFER;
      --  unspecified
      Reserved_2_2 : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Structure DMA Transfer Request
      STRUCTREQ    : CH1_CTRL_STRUCTREQ_Field := 16#0#;
      --  DMA Unit Data Transfer Count
      XFERCNT      : CH1_CTRL_XFERCNT_Field := 16#0#;
      --  Endian Byte Swap
      BYTESWAP     : CH1_CTRL_BYTESWAP_Field := 16#0#;
      --  Block Transfer Size
      BLOCKSIZE    : CH1_CTRL_BLOCKSIZE_Field := Interfaces.EFM32.LDMA.UNIT1;
      --  DMA Operation Done Interrupt Flag Set Enable
      DONEIFSEN    : CH1_CTRL_DONEIFSEN_Field := 16#0#;
      --  DMA Request Transfer Mode Select
      REQMODE      : CH1_CTRL_REQMODE_Field := 16#0#;
      --  Decrement Loop Count
      DECLOOPCNT   : CH1_CTRL_DECLOOPCNT_Field := 16#0#;
      --  Ignore Sreq
      IGNORESREQ   : CH1_CTRL_IGNORESREQ_Field := 16#0#;
      --  Source Address Increment Size
      SRCINC       : CH1_CTRL_SRCINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Unit Data Transfer Size
      SIZE         : CH1_CTRL_SIZE_Field := Interfaces.EFM32.LDMA.BYTE;
      --  Destination Address Increment Size
      DSTINC       : CH1_CTRL_DSTINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Read-only. Source Addressing Mode
      SRCMODE      : CH1_CTRL_SRCMODE_Field := 16#0#;
      --  Read-only. Destination Addressing Mode
      DSTMODE      : CH1_CTRL_DSTMODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_CTRL_Register use record
      STRUCTTYPE   at 0 range 0 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      STRUCTREQ    at 0 range 3 .. 3;
      XFERCNT      at 0 range 4 .. 14;
      BYTESWAP     at 0 range 15 .. 15;
      BLOCKSIZE    at 0 range 16 .. 19;
      DONEIFSEN    at 0 range 20 .. 20;
      REQMODE      at 0 range 21 .. 21;
      DECLOOPCNT   at 0 range 22 .. 22;
      IGNORESREQ   at 0 range 23 .. 23;
      SRCINC       at 0 range 24 .. 25;
      SIZE         at 0 range 26 .. 27;
      DSTINC       at 0 range 28 .. 29;
      SRCMODE      at 0 range 30 .. 30;
      DSTMODE      at 0 range 31 .. 31;
   end record;

   subtype CH1_LINK_LINKMODE_Field is Interfaces.EFM32.Bit;
   subtype CH1_LINK_LINK_Field is Interfaces.EFM32.Bit;
   subtype CH1_LINK_LINKADDR_Field is Interfaces.EFM32.UInt30;

   --  Channel Descriptor Link Structure Address Register
   type CH1_LINK_Register is record
      --  Read-only. Link Structure Addressing Mode
      LINKMODE : CH1_LINK_LINKMODE_Field := 16#0#;
      --  Link Next Structure
      LINK     : CH1_LINK_LINK_Field := 16#0#;
      --  Link Structure Address
      LINKADDR : CH1_LINK_LINKADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_LINK_Register use record
      LINKMODE at 0 range 0 .. 0;
      LINK     at 0 range 1 .. 1;
      LINKADDR at 0 range 2 .. 31;
   end record;

   subtype CH2_REQSEL_SIGSEL_Field is Interfaces.EFM32.UInt4;

   --  Source Select
   type CH2_REQSEL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRS,
      --  Analog to Digital Converter 0
      ADC0,
      --  Analog to Digital Converter 0
      ADC1,
      --  Digital to Analog Converter 0
      VDAC0,
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
      --  Low Energy UART 0
      LEUART0,
      --  Low Energy UART 1
      LEUART1,
      --  I2C 0
      I2C0,
      --  I2C 1
      I2C1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  Memory System Controller
      MSC,
      --  Advanced Encryption Standard Accelerator
      CRYPTO0,
      --  External Bus Interface
      EBI,
      --  PDM Interface
      PDM,
      --  Capacitive touch sense module
      CSEN,
      --  Low Energy Sensor Interface
      LESENSE)
     with Size => 6;
   for CH2_REQSEL_SOURCESEL_Field use
     (NONE => 0,
      PRS => 1,
      ADC0 => 8,
      ADC1 => 9,
      VDAC0 => 10,
      USART0 => 12,
      USART1 => 13,
      USART2 => 14,
      USART3 => 15,
      USART4 => 16,
      UART0 => 18,
      UART1 => 19,
      LEUART0 => 20,
      LEUART1 => 21,
      I2C0 => 22,
      I2C1 => 23,
      TIMER0 => 25,
      TIMER1 => 26,
      TIMER2 => 27,
      TIMER3 => 28,
      WTIMER0 => 32,
      WTIMER1 => 33,
      MSC => 48,
      CRYPTO0 => 49,
      EBI => 50,
      PDM => 51,
      CSEN => 61,
      LESENSE => 62);

   --  Channel Peripheral Request Select Register
   type CH2_REQSEL_Register is record
      --  Signal Select
      SIGSEL         : CH2_REQSEL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Source Select
      SOURCESEL      : CH2_REQSEL_SOURCESEL_Field :=
                        Interfaces.EFM32.LDMA.NONE;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_REQSEL_Register use record
      SIGSEL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SOURCESEL      at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Arbitration Slot Number Select
   type CH2_CFG_ARBSLOTS_Field is
     (--  One arbitration slot selected
      ONE,
      --  Two arbitration slots selected
      TWO,
      --  Four arbitration slots selected
      FOUR,
      --  Eight arbitration slots selected
      EIGHT)
     with Size => 2;
   for CH2_CFG_ARBSLOTS_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      EIGHT => 3);

   subtype CH2_CFG_SRCINCSIGN_Field is Interfaces.EFM32.Bit;
   subtype CH2_CFG_DSTINCSIGN_Field is Interfaces.EFM32.Bit;

   --  Channel Configuration Register
   type CH2_CFG_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.EFM32.UInt16 := 16#0#;
      --  Arbitration Slot Number Select
      ARBSLOTS       : CH2_CFG_ARBSLOTS_Field := Interfaces.EFM32.LDMA.ONE;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Source Address Increment Sign
      SRCINCSIGN     : CH2_CFG_SRCINCSIGN_Field := 16#0#;
      --  Destination Address Increment Sign
      DSTINCSIGN     : CH2_CFG_DSTINCSIGN_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_CFG_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      ARBSLOTS       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      SRCINCSIGN     at 0 range 20 .. 20;
      DSTINCSIGN     at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH2_LOOP_LOOPCNT_Field is Interfaces.EFM32.Byte;

   --  Channel Loop Counter Register
   type CH2_LOOP_Register is record
      --  Linked Structure Sequence Loop Counter
      LOOPCNT       : CH2_LOOP_LOOPCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_LOOP_Register use record
      LOOPCNT       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DMA Structure Type
   type CH2_CTRL_STRUCTTYPE_Field is
     (--  DMA transfer structure type selected.
      TRANSFER,
      --  Synchronization structure type selected.
      SYNCHRONIZE,
      --  Write immediate value structure type selected.
      WRITE)
     with Size => 2;
   for CH2_CTRL_STRUCTTYPE_Field use
     (TRANSFER => 0,
      SYNCHRONIZE => 1,
      WRITE => 2);

   subtype CH2_CTRL_STRUCTREQ_Field is Interfaces.EFM32.Bit;
   subtype CH2_CTRL_XFERCNT_Field is Interfaces.EFM32.UInt11;
   subtype CH2_CTRL_BYTESWAP_Field is Interfaces.EFM32.Bit;

   --  Block Transfer Size
   type CH2_CTRL_BLOCKSIZE_Field is
     (--  One unit transfer per arbitration
      UNIT1,
      --  Two unit transfers per arbitration
      UNIT2,
      --  Three unit transfers per arbitration
      UNIT3,
      --  Four unit transfers per arbitration
      UNIT4,
      --  Six unit transfers per arbitration
      UNIT6,
      --  Eight unit transfers per arbitration
      UNIT8,
      --  Sixteen unit transfers per arbitration
      UNIT16,
      --  32 unit transfers per arbitration
      UNIT32,
      --  64 unit transfers per arbitration
      UNIT64,
      --  128 unit transfers per arbitration
      UNIT128,
      --  256 unit transfers per arbitration
      UNIT256,
      --  512 unit transfers per arbitration
      UNIT512,
      --  1024 unit transfers per arbitration
      UNIT1024,
      --  Transfer all units as specified by the XFRCNT field
      ALL_k)
     with Size => 4;
   for CH2_CTRL_BLOCKSIZE_Field use
     (UNIT1 => 0,
      UNIT2 => 1,
      UNIT3 => 2,
      UNIT4 => 3,
      UNIT6 => 4,
      UNIT8 => 5,
      UNIT16 => 7,
      UNIT32 => 9,
      UNIT64 => 10,
      UNIT128 => 11,
      UNIT256 => 12,
      UNIT512 => 13,
      UNIT1024 => 14,
      ALL_k => 15);

   subtype CH2_CTRL_DONEIFSEN_Field is Interfaces.EFM32.Bit;
   subtype CH2_CTRL_REQMODE_Field is Interfaces.EFM32.Bit;
   subtype CH2_CTRL_DECLOOPCNT_Field is Interfaces.EFM32.Bit;
   subtype CH2_CTRL_IGNORESREQ_Field is Interfaces.EFM32.Bit;

   --  Source Address Increment Size
   type CH2_CTRL_SRCINC_Field is
     (--  Increment source address by one unit data size after each read
      ONE,
      --  Increment source address by two unit data sizes after each read
      TWO,
      --  Increment source address by four unit data sizes after each read
      FOUR,
      --  Do not increment the source address. In this mode reads are made from a
--  fixed source address, for example reading FIFO.
      NONE)
     with Size => 2;
   for CH2_CTRL_SRCINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   --  Unit Data Transfer Size
   type CH2_CTRL_SIZE_Field is
     (--  Each unit transfer is a byte
      BYTE,
      --  Each unit transfer is a half-word
      HALFWORD,
      --  Each unit transfer is a word
      WORD)
     with Size => 2;
   for CH2_CTRL_SIZE_Field use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   --  Destination Address Increment Size
   type CH2_CTRL_DSTINC_Field is
     (--  Increment destination address by one unit data size after each write
      ONE,
      --  Increment destination address by two unit data sizes after each write
      TWO,
      --  Increment destination address by four unit data sizes after each write
      FOUR,
      --  Do not increment the destination address. Writes are made to a fixed
--  destination address, for example writing to a FIFO.
      NONE)
     with Size => 2;
   for CH2_CTRL_DSTINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   subtype CH2_CTRL_SRCMODE_Field is Interfaces.EFM32.Bit;
   subtype CH2_CTRL_DSTMODE_Field is Interfaces.EFM32.Bit;

   --  Channel Descriptor Control Word Register
   type CH2_CTRL_Register is record
      --  Read-only. DMA Structure Type
      STRUCTTYPE   : CH2_CTRL_STRUCTTYPE_Field :=
                      Interfaces.EFM32.LDMA.TRANSFER;
      --  unspecified
      Reserved_2_2 : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Structure DMA Transfer Request
      STRUCTREQ    : CH2_CTRL_STRUCTREQ_Field := 16#0#;
      --  DMA Unit Data Transfer Count
      XFERCNT      : CH2_CTRL_XFERCNT_Field := 16#0#;
      --  Endian Byte Swap
      BYTESWAP     : CH2_CTRL_BYTESWAP_Field := 16#0#;
      --  Block Transfer Size
      BLOCKSIZE    : CH2_CTRL_BLOCKSIZE_Field := Interfaces.EFM32.LDMA.UNIT1;
      --  DMA Operation Done Interrupt Flag Set Enable
      DONEIFSEN    : CH2_CTRL_DONEIFSEN_Field := 16#0#;
      --  DMA Request Transfer Mode Select
      REQMODE      : CH2_CTRL_REQMODE_Field := 16#0#;
      --  Decrement Loop Count
      DECLOOPCNT   : CH2_CTRL_DECLOOPCNT_Field := 16#0#;
      --  Ignore Sreq
      IGNORESREQ   : CH2_CTRL_IGNORESREQ_Field := 16#0#;
      --  Source Address Increment Size
      SRCINC       : CH2_CTRL_SRCINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Unit Data Transfer Size
      SIZE         : CH2_CTRL_SIZE_Field := Interfaces.EFM32.LDMA.BYTE;
      --  Destination Address Increment Size
      DSTINC       : CH2_CTRL_DSTINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Read-only. Source Addressing Mode
      SRCMODE      : CH2_CTRL_SRCMODE_Field := 16#0#;
      --  Read-only. Destination Addressing Mode
      DSTMODE      : CH2_CTRL_DSTMODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_CTRL_Register use record
      STRUCTTYPE   at 0 range 0 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      STRUCTREQ    at 0 range 3 .. 3;
      XFERCNT      at 0 range 4 .. 14;
      BYTESWAP     at 0 range 15 .. 15;
      BLOCKSIZE    at 0 range 16 .. 19;
      DONEIFSEN    at 0 range 20 .. 20;
      REQMODE      at 0 range 21 .. 21;
      DECLOOPCNT   at 0 range 22 .. 22;
      IGNORESREQ   at 0 range 23 .. 23;
      SRCINC       at 0 range 24 .. 25;
      SIZE         at 0 range 26 .. 27;
      DSTINC       at 0 range 28 .. 29;
      SRCMODE      at 0 range 30 .. 30;
      DSTMODE      at 0 range 31 .. 31;
   end record;

   subtype CH2_LINK_LINKMODE_Field is Interfaces.EFM32.Bit;
   subtype CH2_LINK_LINK_Field is Interfaces.EFM32.Bit;
   subtype CH2_LINK_LINKADDR_Field is Interfaces.EFM32.UInt30;

   --  Channel Descriptor Link Structure Address Register
   type CH2_LINK_Register is record
      --  Read-only. Link Structure Addressing Mode
      LINKMODE : CH2_LINK_LINKMODE_Field := 16#0#;
      --  Link Next Structure
      LINK     : CH2_LINK_LINK_Field := 16#0#;
      --  Link Structure Address
      LINKADDR : CH2_LINK_LINKADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_LINK_Register use record
      LINKMODE at 0 range 0 .. 0;
      LINK     at 0 range 1 .. 1;
      LINKADDR at 0 range 2 .. 31;
   end record;

   subtype CH3_REQSEL_SIGSEL_Field is Interfaces.EFM32.UInt4;

   --  Source Select
   type CH3_REQSEL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRS,
      --  Analog to Digital Converter 0
      ADC0,
      --  Analog to Digital Converter 0
      ADC1,
      --  Digital to Analog Converter 0
      VDAC0,
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
      --  Low Energy UART 0
      LEUART0,
      --  Low Energy UART 1
      LEUART1,
      --  I2C 0
      I2C0,
      --  I2C 1
      I2C1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  Memory System Controller
      MSC,
      --  Advanced Encryption Standard Accelerator
      CRYPTO0,
      --  External Bus Interface
      EBI,
      --  PDM Interface
      PDM,
      --  Capacitive touch sense module
      CSEN,
      --  Low Energy Sensor Interface
      LESENSE)
     with Size => 6;
   for CH3_REQSEL_SOURCESEL_Field use
     (NONE => 0,
      PRS => 1,
      ADC0 => 8,
      ADC1 => 9,
      VDAC0 => 10,
      USART0 => 12,
      USART1 => 13,
      USART2 => 14,
      USART3 => 15,
      USART4 => 16,
      UART0 => 18,
      UART1 => 19,
      LEUART0 => 20,
      LEUART1 => 21,
      I2C0 => 22,
      I2C1 => 23,
      TIMER0 => 25,
      TIMER1 => 26,
      TIMER2 => 27,
      TIMER3 => 28,
      WTIMER0 => 32,
      WTIMER1 => 33,
      MSC => 48,
      CRYPTO0 => 49,
      EBI => 50,
      PDM => 51,
      CSEN => 61,
      LESENSE => 62);

   --  Channel Peripheral Request Select Register
   type CH3_REQSEL_Register is record
      --  Signal Select
      SIGSEL         : CH3_REQSEL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Source Select
      SOURCESEL      : CH3_REQSEL_SOURCESEL_Field :=
                        Interfaces.EFM32.LDMA.NONE;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_REQSEL_Register use record
      SIGSEL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SOURCESEL      at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Arbitration Slot Number Select
   type CH3_CFG_ARBSLOTS_Field is
     (--  One arbitration slot selected
      ONE,
      --  Two arbitration slots selected
      TWO,
      --  Four arbitration slots selected
      FOUR,
      --  Eight arbitration slots selected
      EIGHT)
     with Size => 2;
   for CH3_CFG_ARBSLOTS_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      EIGHT => 3);

   subtype CH3_CFG_SRCINCSIGN_Field is Interfaces.EFM32.Bit;
   subtype CH3_CFG_DSTINCSIGN_Field is Interfaces.EFM32.Bit;

   --  Channel Configuration Register
   type CH3_CFG_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.EFM32.UInt16 := 16#0#;
      --  Arbitration Slot Number Select
      ARBSLOTS       : CH3_CFG_ARBSLOTS_Field := Interfaces.EFM32.LDMA.ONE;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Source Address Increment Sign
      SRCINCSIGN     : CH3_CFG_SRCINCSIGN_Field := 16#0#;
      --  Destination Address Increment Sign
      DSTINCSIGN     : CH3_CFG_DSTINCSIGN_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_CFG_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      ARBSLOTS       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      SRCINCSIGN     at 0 range 20 .. 20;
      DSTINCSIGN     at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH3_LOOP_LOOPCNT_Field is Interfaces.EFM32.Byte;

   --  Channel Loop Counter Register
   type CH3_LOOP_Register is record
      --  Linked Structure Sequence Loop Counter
      LOOPCNT       : CH3_LOOP_LOOPCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_LOOP_Register use record
      LOOPCNT       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DMA Structure Type
   type CH3_CTRL_STRUCTTYPE_Field is
     (--  DMA transfer structure type selected.
      TRANSFER,
      --  Synchronization structure type selected.
      SYNCHRONIZE,
      --  Write immediate value structure type selected.
      WRITE)
     with Size => 2;
   for CH3_CTRL_STRUCTTYPE_Field use
     (TRANSFER => 0,
      SYNCHRONIZE => 1,
      WRITE => 2);

   subtype CH3_CTRL_STRUCTREQ_Field is Interfaces.EFM32.Bit;
   subtype CH3_CTRL_XFERCNT_Field is Interfaces.EFM32.UInt11;
   subtype CH3_CTRL_BYTESWAP_Field is Interfaces.EFM32.Bit;

   --  Block Transfer Size
   type CH3_CTRL_BLOCKSIZE_Field is
     (--  One unit transfer per arbitration
      UNIT1,
      --  Two unit transfers per arbitration
      UNIT2,
      --  Three unit transfers per arbitration
      UNIT3,
      --  Four unit transfers per arbitration
      UNIT4,
      --  Six unit transfers per arbitration
      UNIT6,
      --  Eight unit transfers per arbitration
      UNIT8,
      --  Sixteen unit transfers per arbitration
      UNIT16,
      --  32 unit transfers per arbitration
      UNIT32,
      --  64 unit transfers per arbitration
      UNIT64,
      --  128 unit transfers per arbitration
      UNIT128,
      --  256 unit transfers per arbitration
      UNIT256,
      --  512 unit transfers per arbitration
      UNIT512,
      --  1024 unit transfers per arbitration
      UNIT1024,
      --  Transfer all units as specified by the XFRCNT field
      ALL_k)
     with Size => 4;
   for CH3_CTRL_BLOCKSIZE_Field use
     (UNIT1 => 0,
      UNIT2 => 1,
      UNIT3 => 2,
      UNIT4 => 3,
      UNIT6 => 4,
      UNIT8 => 5,
      UNIT16 => 7,
      UNIT32 => 9,
      UNIT64 => 10,
      UNIT128 => 11,
      UNIT256 => 12,
      UNIT512 => 13,
      UNIT1024 => 14,
      ALL_k => 15);

   subtype CH3_CTRL_DONEIFSEN_Field is Interfaces.EFM32.Bit;
   subtype CH3_CTRL_REQMODE_Field is Interfaces.EFM32.Bit;
   subtype CH3_CTRL_DECLOOPCNT_Field is Interfaces.EFM32.Bit;
   subtype CH3_CTRL_IGNORESREQ_Field is Interfaces.EFM32.Bit;

   --  Source Address Increment Size
   type CH3_CTRL_SRCINC_Field is
     (--  Increment source address by one unit data size after each read
      ONE,
      --  Increment source address by two unit data sizes after each read
      TWO,
      --  Increment source address by four unit data sizes after each read
      FOUR,
      --  Do not increment the source address. In this mode reads are made from a
--  fixed source address, for example reading FIFO.
      NONE)
     with Size => 2;
   for CH3_CTRL_SRCINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   --  Unit Data Transfer Size
   type CH3_CTRL_SIZE_Field is
     (--  Each unit transfer is a byte
      BYTE,
      --  Each unit transfer is a half-word
      HALFWORD,
      --  Each unit transfer is a word
      WORD)
     with Size => 2;
   for CH3_CTRL_SIZE_Field use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   --  Destination Address Increment Size
   type CH3_CTRL_DSTINC_Field is
     (--  Increment destination address by one unit data size after each write
      ONE,
      --  Increment destination address by two unit data sizes after each write
      TWO,
      --  Increment destination address by four unit data sizes after each write
      FOUR,
      --  Do not increment the destination address. Writes are made to a fixed
--  destination address, for example writing to a FIFO.
      NONE)
     with Size => 2;
   for CH3_CTRL_DSTINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   subtype CH3_CTRL_SRCMODE_Field is Interfaces.EFM32.Bit;
   subtype CH3_CTRL_DSTMODE_Field is Interfaces.EFM32.Bit;

   --  Channel Descriptor Control Word Register
   type CH3_CTRL_Register is record
      --  Read-only. DMA Structure Type
      STRUCTTYPE   : CH3_CTRL_STRUCTTYPE_Field :=
                      Interfaces.EFM32.LDMA.TRANSFER;
      --  unspecified
      Reserved_2_2 : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Structure DMA Transfer Request
      STRUCTREQ    : CH3_CTRL_STRUCTREQ_Field := 16#0#;
      --  DMA Unit Data Transfer Count
      XFERCNT      : CH3_CTRL_XFERCNT_Field := 16#0#;
      --  Endian Byte Swap
      BYTESWAP     : CH3_CTRL_BYTESWAP_Field := 16#0#;
      --  Block Transfer Size
      BLOCKSIZE    : CH3_CTRL_BLOCKSIZE_Field := Interfaces.EFM32.LDMA.UNIT1;
      --  DMA Operation Done Interrupt Flag Set Enable
      DONEIFSEN    : CH3_CTRL_DONEIFSEN_Field := 16#0#;
      --  DMA Request Transfer Mode Select
      REQMODE      : CH3_CTRL_REQMODE_Field := 16#0#;
      --  Decrement Loop Count
      DECLOOPCNT   : CH3_CTRL_DECLOOPCNT_Field := 16#0#;
      --  Ignore Sreq
      IGNORESREQ   : CH3_CTRL_IGNORESREQ_Field := 16#0#;
      --  Source Address Increment Size
      SRCINC       : CH3_CTRL_SRCINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Unit Data Transfer Size
      SIZE         : CH3_CTRL_SIZE_Field := Interfaces.EFM32.LDMA.BYTE;
      --  Destination Address Increment Size
      DSTINC       : CH3_CTRL_DSTINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Read-only. Source Addressing Mode
      SRCMODE      : CH3_CTRL_SRCMODE_Field := 16#0#;
      --  Read-only. Destination Addressing Mode
      DSTMODE      : CH3_CTRL_DSTMODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_CTRL_Register use record
      STRUCTTYPE   at 0 range 0 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      STRUCTREQ    at 0 range 3 .. 3;
      XFERCNT      at 0 range 4 .. 14;
      BYTESWAP     at 0 range 15 .. 15;
      BLOCKSIZE    at 0 range 16 .. 19;
      DONEIFSEN    at 0 range 20 .. 20;
      REQMODE      at 0 range 21 .. 21;
      DECLOOPCNT   at 0 range 22 .. 22;
      IGNORESREQ   at 0 range 23 .. 23;
      SRCINC       at 0 range 24 .. 25;
      SIZE         at 0 range 26 .. 27;
      DSTINC       at 0 range 28 .. 29;
      SRCMODE      at 0 range 30 .. 30;
      DSTMODE      at 0 range 31 .. 31;
   end record;

   subtype CH3_LINK_LINKMODE_Field is Interfaces.EFM32.Bit;
   subtype CH3_LINK_LINK_Field is Interfaces.EFM32.Bit;
   subtype CH3_LINK_LINKADDR_Field is Interfaces.EFM32.UInt30;

   --  Channel Descriptor Link Structure Address Register
   type CH3_LINK_Register is record
      --  Read-only. Link Structure Addressing Mode
      LINKMODE : CH3_LINK_LINKMODE_Field := 16#0#;
      --  Link Next Structure
      LINK     : CH3_LINK_LINK_Field := 16#0#;
      --  Link Structure Address
      LINKADDR : CH3_LINK_LINKADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_LINK_Register use record
      LINKMODE at 0 range 0 .. 0;
      LINK     at 0 range 1 .. 1;
      LINKADDR at 0 range 2 .. 31;
   end record;

   subtype CH4_REQSEL_SIGSEL_Field is Interfaces.EFM32.UInt4;

   --  Source Select
   type CH4_REQSEL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRS,
      --  Analog to Digital Converter 0
      ADC0,
      --  Analog to Digital Converter 0
      ADC1,
      --  Digital to Analog Converter 0
      VDAC0,
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
      --  Low Energy UART 0
      LEUART0,
      --  Low Energy UART 1
      LEUART1,
      --  I2C 0
      I2C0,
      --  I2C 1
      I2C1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  Memory System Controller
      MSC,
      --  Advanced Encryption Standard Accelerator
      CRYPTO0,
      --  External Bus Interface
      EBI,
      --  PDM Interface
      PDM,
      --  Capacitive touch sense module
      CSEN,
      --  Low Energy Sensor Interface
      LESENSE)
     with Size => 6;
   for CH4_REQSEL_SOURCESEL_Field use
     (NONE => 0,
      PRS => 1,
      ADC0 => 8,
      ADC1 => 9,
      VDAC0 => 10,
      USART0 => 12,
      USART1 => 13,
      USART2 => 14,
      USART3 => 15,
      USART4 => 16,
      UART0 => 18,
      UART1 => 19,
      LEUART0 => 20,
      LEUART1 => 21,
      I2C0 => 22,
      I2C1 => 23,
      TIMER0 => 25,
      TIMER1 => 26,
      TIMER2 => 27,
      TIMER3 => 28,
      WTIMER0 => 32,
      WTIMER1 => 33,
      MSC => 48,
      CRYPTO0 => 49,
      EBI => 50,
      PDM => 51,
      CSEN => 61,
      LESENSE => 62);

   --  Channel Peripheral Request Select Register
   type CH4_REQSEL_Register is record
      --  Signal Select
      SIGSEL         : CH4_REQSEL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Source Select
      SOURCESEL      : CH4_REQSEL_SOURCESEL_Field :=
                        Interfaces.EFM32.LDMA.NONE;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH4_REQSEL_Register use record
      SIGSEL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SOURCESEL      at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Arbitration Slot Number Select
   type CH4_CFG_ARBSLOTS_Field is
     (--  One arbitration slot selected
      ONE,
      --  Two arbitration slots selected
      TWO,
      --  Four arbitration slots selected
      FOUR,
      --  Eight arbitration slots selected
      EIGHT)
     with Size => 2;
   for CH4_CFG_ARBSLOTS_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      EIGHT => 3);

   subtype CH4_CFG_SRCINCSIGN_Field is Interfaces.EFM32.Bit;
   subtype CH4_CFG_DSTINCSIGN_Field is Interfaces.EFM32.Bit;

   --  Channel Configuration Register
   type CH4_CFG_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.EFM32.UInt16 := 16#0#;
      --  Arbitration Slot Number Select
      ARBSLOTS       : CH4_CFG_ARBSLOTS_Field := Interfaces.EFM32.LDMA.ONE;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Source Address Increment Sign
      SRCINCSIGN     : CH4_CFG_SRCINCSIGN_Field := 16#0#;
      --  Destination Address Increment Sign
      DSTINCSIGN     : CH4_CFG_DSTINCSIGN_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH4_CFG_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      ARBSLOTS       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      SRCINCSIGN     at 0 range 20 .. 20;
      DSTINCSIGN     at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH4_LOOP_LOOPCNT_Field is Interfaces.EFM32.Byte;

   --  Channel Loop Counter Register
   type CH4_LOOP_Register is record
      --  Linked Structure Sequence Loop Counter
      LOOPCNT       : CH4_LOOP_LOOPCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH4_LOOP_Register use record
      LOOPCNT       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DMA Structure Type
   type CH4_CTRL_STRUCTTYPE_Field is
     (--  DMA transfer structure type selected.
      TRANSFER,
      --  Synchronization structure type selected.
      SYNCHRONIZE,
      --  Write immediate value structure type selected.
      WRITE)
     with Size => 2;
   for CH4_CTRL_STRUCTTYPE_Field use
     (TRANSFER => 0,
      SYNCHRONIZE => 1,
      WRITE => 2);

   subtype CH4_CTRL_STRUCTREQ_Field is Interfaces.EFM32.Bit;
   subtype CH4_CTRL_XFERCNT_Field is Interfaces.EFM32.UInt11;
   subtype CH4_CTRL_BYTESWAP_Field is Interfaces.EFM32.Bit;

   --  Block Transfer Size
   type CH4_CTRL_BLOCKSIZE_Field is
     (--  One unit transfer per arbitration
      UNIT1,
      --  Two unit transfers per arbitration
      UNIT2,
      --  Three unit transfers per arbitration
      UNIT3,
      --  Four unit transfers per arbitration
      UNIT4,
      --  Six unit transfers per arbitration
      UNIT6,
      --  Eight unit transfers per arbitration
      UNIT8,
      --  Sixteen unit transfers per arbitration
      UNIT16,
      --  32 unit transfers per arbitration
      UNIT32,
      --  64 unit transfers per arbitration
      UNIT64,
      --  128 unit transfers per arbitration
      UNIT128,
      --  256 unit transfers per arbitration
      UNIT256,
      --  512 unit transfers per arbitration
      UNIT512,
      --  1024 unit transfers per arbitration
      UNIT1024,
      --  Transfer all units as specified by the XFRCNT field
      ALL_k)
     with Size => 4;
   for CH4_CTRL_BLOCKSIZE_Field use
     (UNIT1 => 0,
      UNIT2 => 1,
      UNIT3 => 2,
      UNIT4 => 3,
      UNIT6 => 4,
      UNIT8 => 5,
      UNIT16 => 7,
      UNIT32 => 9,
      UNIT64 => 10,
      UNIT128 => 11,
      UNIT256 => 12,
      UNIT512 => 13,
      UNIT1024 => 14,
      ALL_k => 15);

   subtype CH4_CTRL_DONEIFSEN_Field is Interfaces.EFM32.Bit;
   subtype CH4_CTRL_REQMODE_Field is Interfaces.EFM32.Bit;
   subtype CH4_CTRL_DECLOOPCNT_Field is Interfaces.EFM32.Bit;
   subtype CH4_CTRL_IGNORESREQ_Field is Interfaces.EFM32.Bit;

   --  Source Address Increment Size
   type CH4_CTRL_SRCINC_Field is
     (--  Increment source address by one unit data size after each read
      ONE,
      --  Increment source address by two unit data sizes after each read
      TWO,
      --  Increment source address by four unit data sizes after each read
      FOUR,
      --  Do not increment the source address. In this mode reads are made from a
--  fixed source address, for example reading FIFO.
      NONE)
     with Size => 2;
   for CH4_CTRL_SRCINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   --  Unit Data Transfer Size
   type CH4_CTRL_SIZE_Field is
     (--  Each unit transfer is a byte
      BYTE,
      --  Each unit transfer is a half-word
      HALFWORD,
      --  Each unit transfer is a word
      WORD)
     with Size => 2;
   for CH4_CTRL_SIZE_Field use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   --  Destination Address Increment Size
   type CH4_CTRL_DSTINC_Field is
     (--  Increment destination address by one unit data size after each write
      ONE,
      --  Increment destination address by two unit data sizes after each write
      TWO,
      --  Increment destination address by four unit data sizes after each write
      FOUR,
      --  Do not increment the destination address. Writes are made to a fixed
--  destination address, for example writing to a FIFO.
      NONE)
     with Size => 2;
   for CH4_CTRL_DSTINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   subtype CH4_CTRL_SRCMODE_Field is Interfaces.EFM32.Bit;
   subtype CH4_CTRL_DSTMODE_Field is Interfaces.EFM32.Bit;

   --  Channel Descriptor Control Word Register
   type CH4_CTRL_Register is record
      --  Read-only. DMA Structure Type
      STRUCTTYPE   : CH4_CTRL_STRUCTTYPE_Field :=
                      Interfaces.EFM32.LDMA.TRANSFER;
      --  unspecified
      Reserved_2_2 : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Structure DMA Transfer Request
      STRUCTREQ    : CH4_CTRL_STRUCTREQ_Field := 16#0#;
      --  DMA Unit Data Transfer Count
      XFERCNT      : CH4_CTRL_XFERCNT_Field := 16#0#;
      --  Endian Byte Swap
      BYTESWAP     : CH4_CTRL_BYTESWAP_Field := 16#0#;
      --  Block Transfer Size
      BLOCKSIZE    : CH4_CTRL_BLOCKSIZE_Field := Interfaces.EFM32.LDMA.UNIT1;
      --  DMA Operation Done Interrupt Flag Set Enable
      DONEIFSEN    : CH4_CTRL_DONEIFSEN_Field := 16#0#;
      --  DMA Request Transfer Mode Select
      REQMODE      : CH4_CTRL_REQMODE_Field := 16#0#;
      --  Decrement Loop Count
      DECLOOPCNT   : CH4_CTRL_DECLOOPCNT_Field := 16#0#;
      --  Ignore Sreq
      IGNORESREQ   : CH4_CTRL_IGNORESREQ_Field := 16#0#;
      --  Source Address Increment Size
      SRCINC       : CH4_CTRL_SRCINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Unit Data Transfer Size
      SIZE         : CH4_CTRL_SIZE_Field := Interfaces.EFM32.LDMA.BYTE;
      --  Destination Address Increment Size
      DSTINC       : CH4_CTRL_DSTINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Read-only. Source Addressing Mode
      SRCMODE      : CH4_CTRL_SRCMODE_Field := 16#0#;
      --  Read-only. Destination Addressing Mode
      DSTMODE      : CH4_CTRL_DSTMODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH4_CTRL_Register use record
      STRUCTTYPE   at 0 range 0 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      STRUCTREQ    at 0 range 3 .. 3;
      XFERCNT      at 0 range 4 .. 14;
      BYTESWAP     at 0 range 15 .. 15;
      BLOCKSIZE    at 0 range 16 .. 19;
      DONEIFSEN    at 0 range 20 .. 20;
      REQMODE      at 0 range 21 .. 21;
      DECLOOPCNT   at 0 range 22 .. 22;
      IGNORESREQ   at 0 range 23 .. 23;
      SRCINC       at 0 range 24 .. 25;
      SIZE         at 0 range 26 .. 27;
      DSTINC       at 0 range 28 .. 29;
      SRCMODE      at 0 range 30 .. 30;
      DSTMODE      at 0 range 31 .. 31;
   end record;

   subtype CH4_LINK_LINKMODE_Field is Interfaces.EFM32.Bit;
   subtype CH4_LINK_LINK_Field is Interfaces.EFM32.Bit;
   subtype CH4_LINK_LINKADDR_Field is Interfaces.EFM32.UInt30;

   --  Channel Descriptor Link Structure Address Register
   type CH4_LINK_Register is record
      --  Read-only. Link Structure Addressing Mode
      LINKMODE : CH4_LINK_LINKMODE_Field := 16#0#;
      --  Link Next Structure
      LINK     : CH4_LINK_LINK_Field := 16#0#;
      --  Link Structure Address
      LINKADDR : CH4_LINK_LINKADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH4_LINK_Register use record
      LINKMODE at 0 range 0 .. 0;
      LINK     at 0 range 1 .. 1;
      LINKADDR at 0 range 2 .. 31;
   end record;

   subtype CH5_REQSEL_SIGSEL_Field is Interfaces.EFM32.UInt4;

   --  Source Select
   type CH5_REQSEL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRS,
      --  Analog to Digital Converter 0
      ADC0,
      --  Analog to Digital Converter 0
      ADC1,
      --  Digital to Analog Converter 0
      VDAC0,
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
      --  Low Energy UART 0
      LEUART0,
      --  Low Energy UART 1
      LEUART1,
      --  I2C 0
      I2C0,
      --  I2C 1
      I2C1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  Memory System Controller
      MSC,
      --  Advanced Encryption Standard Accelerator
      CRYPTO0,
      --  External Bus Interface
      EBI,
      --  PDM Interface
      PDM,
      --  Capacitive touch sense module
      CSEN,
      --  Low Energy Sensor Interface
      LESENSE)
     with Size => 6;
   for CH5_REQSEL_SOURCESEL_Field use
     (NONE => 0,
      PRS => 1,
      ADC0 => 8,
      ADC1 => 9,
      VDAC0 => 10,
      USART0 => 12,
      USART1 => 13,
      USART2 => 14,
      USART3 => 15,
      USART4 => 16,
      UART0 => 18,
      UART1 => 19,
      LEUART0 => 20,
      LEUART1 => 21,
      I2C0 => 22,
      I2C1 => 23,
      TIMER0 => 25,
      TIMER1 => 26,
      TIMER2 => 27,
      TIMER3 => 28,
      WTIMER0 => 32,
      WTIMER1 => 33,
      MSC => 48,
      CRYPTO0 => 49,
      EBI => 50,
      PDM => 51,
      CSEN => 61,
      LESENSE => 62);

   --  Channel Peripheral Request Select Register
   type CH5_REQSEL_Register is record
      --  Signal Select
      SIGSEL         : CH5_REQSEL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Source Select
      SOURCESEL      : CH5_REQSEL_SOURCESEL_Field :=
                        Interfaces.EFM32.LDMA.NONE;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH5_REQSEL_Register use record
      SIGSEL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SOURCESEL      at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Arbitration Slot Number Select
   type CH5_CFG_ARBSLOTS_Field is
     (--  One arbitration slot selected
      ONE,
      --  Two arbitration slots selected
      TWO,
      --  Four arbitration slots selected
      FOUR,
      --  Eight arbitration slots selected
      EIGHT)
     with Size => 2;
   for CH5_CFG_ARBSLOTS_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      EIGHT => 3);

   subtype CH5_CFG_SRCINCSIGN_Field is Interfaces.EFM32.Bit;
   subtype CH5_CFG_DSTINCSIGN_Field is Interfaces.EFM32.Bit;

   --  Channel Configuration Register
   type CH5_CFG_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.EFM32.UInt16 := 16#0#;
      --  Arbitration Slot Number Select
      ARBSLOTS       : CH5_CFG_ARBSLOTS_Field := Interfaces.EFM32.LDMA.ONE;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Source Address Increment Sign
      SRCINCSIGN     : CH5_CFG_SRCINCSIGN_Field := 16#0#;
      --  Destination Address Increment Sign
      DSTINCSIGN     : CH5_CFG_DSTINCSIGN_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH5_CFG_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      ARBSLOTS       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      SRCINCSIGN     at 0 range 20 .. 20;
      DSTINCSIGN     at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH5_LOOP_LOOPCNT_Field is Interfaces.EFM32.Byte;

   --  Channel Loop Counter Register
   type CH5_LOOP_Register is record
      --  Linked Structure Sequence Loop Counter
      LOOPCNT       : CH5_LOOP_LOOPCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH5_LOOP_Register use record
      LOOPCNT       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DMA Structure Type
   type CH5_CTRL_STRUCTTYPE_Field is
     (--  DMA transfer structure type selected.
      TRANSFER,
      --  Synchronization structure type selected.
      SYNCHRONIZE,
      --  Write immediate value structure type selected.
      WRITE)
     with Size => 2;
   for CH5_CTRL_STRUCTTYPE_Field use
     (TRANSFER => 0,
      SYNCHRONIZE => 1,
      WRITE => 2);

   subtype CH5_CTRL_STRUCTREQ_Field is Interfaces.EFM32.Bit;
   subtype CH5_CTRL_XFERCNT_Field is Interfaces.EFM32.UInt11;
   subtype CH5_CTRL_BYTESWAP_Field is Interfaces.EFM32.Bit;

   --  Block Transfer Size
   type CH5_CTRL_BLOCKSIZE_Field is
     (--  One unit transfer per arbitration
      UNIT1,
      --  Two unit transfers per arbitration
      UNIT2,
      --  Three unit transfers per arbitration
      UNIT3,
      --  Four unit transfers per arbitration
      UNIT4,
      --  Six unit transfers per arbitration
      UNIT6,
      --  Eight unit transfers per arbitration
      UNIT8,
      --  Sixteen unit transfers per arbitration
      UNIT16,
      --  32 unit transfers per arbitration
      UNIT32,
      --  64 unit transfers per arbitration
      UNIT64,
      --  128 unit transfers per arbitration
      UNIT128,
      --  256 unit transfers per arbitration
      UNIT256,
      --  512 unit transfers per arbitration
      UNIT512,
      --  1024 unit transfers per arbitration
      UNIT1024,
      --  Transfer all units as specified by the XFRCNT field
      ALL_k)
     with Size => 4;
   for CH5_CTRL_BLOCKSIZE_Field use
     (UNIT1 => 0,
      UNIT2 => 1,
      UNIT3 => 2,
      UNIT4 => 3,
      UNIT6 => 4,
      UNIT8 => 5,
      UNIT16 => 7,
      UNIT32 => 9,
      UNIT64 => 10,
      UNIT128 => 11,
      UNIT256 => 12,
      UNIT512 => 13,
      UNIT1024 => 14,
      ALL_k => 15);

   subtype CH5_CTRL_DONEIFSEN_Field is Interfaces.EFM32.Bit;
   subtype CH5_CTRL_REQMODE_Field is Interfaces.EFM32.Bit;
   subtype CH5_CTRL_DECLOOPCNT_Field is Interfaces.EFM32.Bit;
   subtype CH5_CTRL_IGNORESREQ_Field is Interfaces.EFM32.Bit;

   --  Source Address Increment Size
   type CH5_CTRL_SRCINC_Field is
     (--  Increment source address by one unit data size after each read
      ONE,
      --  Increment source address by two unit data sizes after each read
      TWO,
      --  Increment source address by four unit data sizes after each read
      FOUR,
      --  Do not increment the source address. In this mode reads are made from a
--  fixed source address, for example reading FIFO.
      NONE)
     with Size => 2;
   for CH5_CTRL_SRCINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   --  Unit Data Transfer Size
   type CH5_CTRL_SIZE_Field is
     (--  Each unit transfer is a byte
      BYTE,
      --  Each unit transfer is a half-word
      HALFWORD,
      --  Each unit transfer is a word
      WORD)
     with Size => 2;
   for CH5_CTRL_SIZE_Field use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   --  Destination Address Increment Size
   type CH5_CTRL_DSTINC_Field is
     (--  Increment destination address by one unit data size after each write
      ONE,
      --  Increment destination address by two unit data sizes after each write
      TWO,
      --  Increment destination address by four unit data sizes after each write
      FOUR,
      --  Do not increment the destination address. Writes are made to a fixed
--  destination address, for example writing to a FIFO.
      NONE)
     with Size => 2;
   for CH5_CTRL_DSTINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   subtype CH5_CTRL_SRCMODE_Field is Interfaces.EFM32.Bit;
   subtype CH5_CTRL_DSTMODE_Field is Interfaces.EFM32.Bit;

   --  Channel Descriptor Control Word Register
   type CH5_CTRL_Register is record
      --  Read-only. DMA Structure Type
      STRUCTTYPE   : CH5_CTRL_STRUCTTYPE_Field :=
                      Interfaces.EFM32.LDMA.TRANSFER;
      --  unspecified
      Reserved_2_2 : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Structure DMA Transfer Request
      STRUCTREQ    : CH5_CTRL_STRUCTREQ_Field := 16#0#;
      --  DMA Unit Data Transfer Count
      XFERCNT      : CH5_CTRL_XFERCNT_Field := 16#0#;
      --  Endian Byte Swap
      BYTESWAP     : CH5_CTRL_BYTESWAP_Field := 16#0#;
      --  Block Transfer Size
      BLOCKSIZE    : CH5_CTRL_BLOCKSIZE_Field := Interfaces.EFM32.LDMA.UNIT1;
      --  DMA Operation Done Interrupt Flag Set Enable
      DONEIFSEN    : CH5_CTRL_DONEIFSEN_Field := 16#0#;
      --  DMA Request Transfer Mode Select
      REQMODE      : CH5_CTRL_REQMODE_Field := 16#0#;
      --  Decrement Loop Count
      DECLOOPCNT   : CH5_CTRL_DECLOOPCNT_Field := 16#0#;
      --  Ignore Sreq
      IGNORESREQ   : CH5_CTRL_IGNORESREQ_Field := 16#0#;
      --  Source Address Increment Size
      SRCINC       : CH5_CTRL_SRCINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Unit Data Transfer Size
      SIZE         : CH5_CTRL_SIZE_Field := Interfaces.EFM32.LDMA.BYTE;
      --  Destination Address Increment Size
      DSTINC       : CH5_CTRL_DSTINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Read-only. Source Addressing Mode
      SRCMODE      : CH5_CTRL_SRCMODE_Field := 16#0#;
      --  Read-only. Destination Addressing Mode
      DSTMODE      : CH5_CTRL_DSTMODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH5_CTRL_Register use record
      STRUCTTYPE   at 0 range 0 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      STRUCTREQ    at 0 range 3 .. 3;
      XFERCNT      at 0 range 4 .. 14;
      BYTESWAP     at 0 range 15 .. 15;
      BLOCKSIZE    at 0 range 16 .. 19;
      DONEIFSEN    at 0 range 20 .. 20;
      REQMODE      at 0 range 21 .. 21;
      DECLOOPCNT   at 0 range 22 .. 22;
      IGNORESREQ   at 0 range 23 .. 23;
      SRCINC       at 0 range 24 .. 25;
      SIZE         at 0 range 26 .. 27;
      DSTINC       at 0 range 28 .. 29;
      SRCMODE      at 0 range 30 .. 30;
      DSTMODE      at 0 range 31 .. 31;
   end record;

   subtype CH5_LINK_LINKMODE_Field is Interfaces.EFM32.Bit;
   subtype CH5_LINK_LINK_Field is Interfaces.EFM32.Bit;
   subtype CH5_LINK_LINKADDR_Field is Interfaces.EFM32.UInt30;

   --  Channel Descriptor Link Structure Address Register
   type CH5_LINK_Register is record
      --  Read-only. Link Structure Addressing Mode
      LINKMODE : CH5_LINK_LINKMODE_Field := 16#0#;
      --  Link Next Structure
      LINK     : CH5_LINK_LINK_Field := 16#0#;
      --  Link Structure Address
      LINKADDR : CH5_LINK_LINKADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH5_LINK_Register use record
      LINKMODE at 0 range 0 .. 0;
      LINK     at 0 range 1 .. 1;
      LINKADDR at 0 range 2 .. 31;
   end record;

   subtype CH6_REQSEL_SIGSEL_Field is Interfaces.EFM32.UInt4;

   --  Source Select
   type CH6_REQSEL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRS,
      --  Analog to Digital Converter 0
      ADC0,
      --  Analog to Digital Converter 0
      ADC1,
      --  Digital to Analog Converter 0
      VDAC0,
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
      --  Low Energy UART 0
      LEUART0,
      --  Low Energy UART 1
      LEUART1,
      --  I2C 0
      I2C0,
      --  I2C 1
      I2C1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  Memory System Controller
      MSC,
      --  Advanced Encryption Standard Accelerator
      CRYPTO0,
      --  External Bus Interface
      EBI,
      --  PDM Interface
      PDM,
      --  Capacitive touch sense module
      CSEN,
      --  Low Energy Sensor Interface
      LESENSE)
     with Size => 6;
   for CH6_REQSEL_SOURCESEL_Field use
     (NONE => 0,
      PRS => 1,
      ADC0 => 8,
      ADC1 => 9,
      VDAC0 => 10,
      USART0 => 12,
      USART1 => 13,
      USART2 => 14,
      USART3 => 15,
      USART4 => 16,
      UART0 => 18,
      UART1 => 19,
      LEUART0 => 20,
      LEUART1 => 21,
      I2C0 => 22,
      I2C1 => 23,
      TIMER0 => 25,
      TIMER1 => 26,
      TIMER2 => 27,
      TIMER3 => 28,
      WTIMER0 => 32,
      WTIMER1 => 33,
      MSC => 48,
      CRYPTO0 => 49,
      EBI => 50,
      PDM => 51,
      CSEN => 61,
      LESENSE => 62);

   --  Channel Peripheral Request Select Register
   type CH6_REQSEL_Register is record
      --  Signal Select
      SIGSEL         : CH6_REQSEL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Source Select
      SOURCESEL      : CH6_REQSEL_SOURCESEL_Field :=
                        Interfaces.EFM32.LDMA.NONE;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH6_REQSEL_Register use record
      SIGSEL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SOURCESEL      at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Arbitration Slot Number Select
   type CH6_CFG_ARBSLOTS_Field is
     (--  One arbitration slot selected
      ONE,
      --  Two arbitration slots selected
      TWO,
      --  Four arbitration slots selected
      FOUR,
      --  Eight arbitration slots selected
      EIGHT)
     with Size => 2;
   for CH6_CFG_ARBSLOTS_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      EIGHT => 3);

   subtype CH6_CFG_SRCINCSIGN_Field is Interfaces.EFM32.Bit;
   subtype CH6_CFG_DSTINCSIGN_Field is Interfaces.EFM32.Bit;

   --  Channel Configuration Register
   type CH6_CFG_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.EFM32.UInt16 := 16#0#;
      --  Arbitration Slot Number Select
      ARBSLOTS       : CH6_CFG_ARBSLOTS_Field := Interfaces.EFM32.LDMA.ONE;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Source Address Increment Sign
      SRCINCSIGN     : CH6_CFG_SRCINCSIGN_Field := 16#0#;
      --  Destination Address Increment Sign
      DSTINCSIGN     : CH6_CFG_DSTINCSIGN_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH6_CFG_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      ARBSLOTS       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      SRCINCSIGN     at 0 range 20 .. 20;
      DSTINCSIGN     at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH6_LOOP_LOOPCNT_Field is Interfaces.EFM32.Byte;

   --  Channel Loop Counter Register
   type CH6_LOOP_Register is record
      --  Linked Structure Sequence Loop Counter
      LOOPCNT       : CH6_LOOP_LOOPCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH6_LOOP_Register use record
      LOOPCNT       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DMA Structure Type
   type CH6_CTRL_STRUCTTYPE_Field is
     (--  DMA transfer structure type selected.
      TRANSFER,
      --  Synchronization structure type selected.
      SYNCHRONIZE,
      --  Write immediate value structure type selected.
      WRITE)
     with Size => 2;
   for CH6_CTRL_STRUCTTYPE_Field use
     (TRANSFER => 0,
      SYNCHRONIZE => 1,
      WRITE => 2);

   subtype CH6_CTRL_STRUCTREQ_Field is Interfaces.EFM32.Bit;
   subtype CH6_CTRL_XFERCNT_Field is Interfaces.EFM32.UInt11;
   subtype CH6_CTRL_BYTESWAP_Field is Interfaces.EFM32.Bit;

   --  Block Transfer Size
   type CH6_CTRL_BLOCKSIZE_Field is
     (--  One unit transfer per arbitration
      UNIT1,
      --  Two unit transfers per arbitration
      UNIT2,
      --  Three unit transfers per arbitration
      UNIT3,
      --  Four unit transfers per arbitration
      UNIT4,
      --  Six unit transfers per arbitration
      UNIT6,
      --  Eight unit transfers per arbitration
      UNIT8,
      --  Sixteen unit transfers per arbitration
      UNIT16,
      --  32 unit transfers per arbitration
      UNIT32,
      --  64 unit transfers per arbitration
      UNIT64,
      --  128 unit transfers per arbitration
      UNIT128,
      --  256 unit transfers per arbitration
      UNIT256,
      --  512 unit transfers per arbitration
      UNIT512,
      --  1024 unit transfers per arbitration
      UNIT1024,
      --  Transfer all units as specified by the XFRCNT field
      ALL_k)
     with Size => 4;
   for CH6_CTRL_BLOCKSIZE_Field use
     (UNIT1 => 0,
      UNIT2 => 1,
      UNIT3 => 2,
      UNIT4 => 3,
      UNIT6 => 4,
      UNIT8 => 5,
      UNIT16 => 7,
      UNIT32 => 9,
      UNIT64 => 10,
      UNIT128 => 11,
      UNIT256 => 12,
      UNIT512 => 13,
      UNIT1024 => 14,
      ALL_k => 15);

   subtype CH6_CTRL_DONEIFSEN_Field is Interfaces.EFM32.Bit;
   subtype CH6_CTRL_REQMODE_Field is Interfaces.EFM32.Bit;
   subtype CH6_CTRL_DECLOOPCNT_Field is Interfaces.EFM32.Bit;
   subtype CH6_CTRL_IGNORESREQ_Field is Interfaces.EFM32.Bit;

   --  Source Address Increment Size
   type CH6_CTRL_SRCINC_Field is
     (--  Increment source address by one unit data size after each read
      ONE,
      --  Increment source address by two unit data sizes after each read
      TWO,
      --  Increment source address by four unit data sizes after each read
      FOUR,
      --  Do not increment the source address. In this mode reads are made from a
--  fixed source address, for example reading FIFO.
      NONE)
     with Size => 2;
   for CH6_CTRL_SRCINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   --  Unit Data Transfer Size
   type CH6_CTRL_SIZE_Field is
     (--  Each unit transfer is a byte
      BYTE,
      --  Each unit transfer is a half-word
      HALFWORD,
      --  Each unit transfer is a word
      WORD)
     with Size => 2;
   for CH6_CTRL_SIZE_Field use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   --  Destination Address Increment Size
   type CH6_CTRL_DSTINC_Field is
     (--  Increment destination address by one unit data size after each write
      ONE,
      --  Increment destination address by two unit data sizes after each write
      TWO,
      --  Increment destination address by four unit data sizes after each write
      FOUR,
      --  Do not increment the destination address. Writes are made to a fixed
--  destination address, for example writing to a FIFO.
      NONE)
     with Size => 2;
   for CH6_CTRL_DSTINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   subtype CH6_CTRL_SRCMODE_Field is Interfaces.EFM32.Bit;
   subtype CH6_CTRL_DSTMODE_Field is Interfaces.EFM32.Bit;

   --  Channel Descriptor Control Word Register
   type CH6_CTRL_Register is record
      --  Read-only. DMA Structure Type
      STRUCTTYPE   : CH6_CTRL_STRUCTTYPE_Field :=
                      Interfaces.EFM32.LDMA.TRANSFER;
      --  unspecified
      Reserved_2_2 : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Structure DMA Transfer Request
      STRUCTREQ    : CH6_CTRL_STRUCTREQ_Field := 16#0#;
      --  DMA Unit Data Transfer Count
      XFERCNT      : CH6_CTRL_XFERCNT_Field := 16#0#;
      --  Endian Byte Swap
      BYTESWAP     : CH6_CTRL_BYTESWAP_Field := 16#0#;
      --  Block Transfer Size
      BLOCKSIZE    : CH6_CTRL_BLOCKSIZE_Field := Interfaces.EFM32.LDMA.UNIT1;
      --  DMA Operation Done Interrupt Flag Set Enable
      DONEIFSEN    : CH6_CTRL_DONEIFSEN_Field := 16#0#;
      --  DMA Request Transfer Mode Select
      REQMODE      : CH6_CTRL_REQMODE_Field := 16#0#;
      --  Decrement Loop Count
      DECLOOPCNT   : CH6_CTRL_DECLOOPCNT_Field := 16#0#;
      --  Ignore Sreq
      IGNORESREQ   : CH6_CTRL_IGNORESREQ_Field := 16#0#;
      --  Source Address Increment Size
      SRCINC       : CH6_CTRL_SRCINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Unit Data Transfer Size
      SIZE         : CH6_CTRL_SIZE_Field := Interfaces.EFM32.LDMA.BYTE;
      --  Destination Address Increment Size
      DSTINC       : CH6_CTRL_DSTINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Read-only. Source Addressing Mode
      SRCMODE      : CH6_CTRL_SRCMODE_Field := 16#0#;
      --  Read-only. Destination Addressing Mode
      DSTMODE      : CH6_CTRL_DSTMODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH6_CTRL_Register use record
      STRUCTTYPE   at 0 range 0 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      STRUCTREQ    at 0 range 3 .. 3;
      XFERCNT      at 0 range 4 .. 14;
      BYTESWAP     at 0 range 15 .. 15;
      BLOCKSIZE    at 0 range 16 .. 19;
      DONEIFSEN    at 0 range 20 .. 20;
      REQMODE      at 0 range 21 .. 21;
      DECLOOPCNT   at 0 range 22 .. 22;
      IGNORESREQ   at 0 range 23 .. 23;
      SRCINC       at 0 range 24 .. 25;
      SIZE         at 0 range 26 .. 27;
      DSTINC       at 0 range 28 .. 29;
      SRCMODE      at 0 range 30 .. 30;
      DSTMODE      at 0 range 31 .. 31;
   end record;

   subtype CH6_LINK_LINKMODE_Field is Interfaces.EFM32.Bit;
   subtype CH6_LINK_LINK_Field is Interfaces.EFM32.Bit;
   subtype CH6_LINK_LINKADDR_Field is Interfaces.EFM32.UInt30;

   --  Channel Descriptor Link Structure Address Register
   type CH6_LINK_Register is record
      --  Read-only. Link Structure Addressing Mode
      LINKMODE : CH6_LINK_LINKMODE_Field := 16#0#;
      --  Link Next Structure
      LINK     : CH6_LINK_LINK_Field := 16#0#;
      --  Link Structure Address
      LINKADDR : CH6_LINK_LINKADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH6_LINK_Register use record
      LINKMODE at 0 range 0 .. 0;
      LINK     at 0 range 1 .. 1;
      LINKADDR at 0 range 2 .. 31;
   end record;

   subtype CH7_REQSEL_SIGSEL_Field is Interfaces.EFM32.UInt4;

   --  Source Select
   type CH7_REQSEL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRS,
      --  Analog to Digital Converter 0
      ADC0,
      --  Analog to Digital Converter 0
      ADC1,
      --  Digital to Analog Converter 0
      VDAC0,
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
      --  Low Energy UART 0
      LEUART0,
      --  Low Energy UART 1
      LEUART1,
      --  I2C 0
      I2C0,
      --  I2C 1
      I2C1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  Memory System Controller
      MSC,
      --  Advanced Encryption Standard Accelerator
      CRYPTO0,
      --  External Bus Interface
      EBI,
      --  PDM Interface
      PDM,
      --  Capacitive touch sense module
      CSEN,
      --  Low Energy Sensor Interface
      LESENSE)
     with Size => 6;
   for CH7_REQSEL_SOURCESEL_Field use
     (NONE => 0,
      PRS => 1,
      ADC0 => 8,
      ADC1 => 9,
      VDAC0 => 10,
      USART0 => 12,
      USART1 => 13,
      USART2 => 14,
      USART3 => 15,
      USART4 => 16,
      UART0 => 18,
      UART1 => 19,
      LEUART0 => 20,
      LEUART1 => 21,
      I2C0 => 22,
      I2C1 => 23,
      TIMER0 => 25,
      TIMER1 => 26,
      TIMER2 => 27,
      TIMER3 => 28,
      WTIMER0 => 32,
      WTIMER1 => 33,
      MSC => 48,
      CRYPTO0 => 49,
      EBI => 50,
      PDM => 51,
      CSEN => 61,
      LESENSE => 62);

   --  Channel Peripheral Request Select Register
   type CH7_REQSEL_Register is record
      --  Signal Select
      SIGSEL         : CH7_REQSEL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Source Select
      SOURCESEL      : CH7_REQSEL_SOURCESEL_Field :=
                        Interfaces.EFM32.LDMA.NONE;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH7_REQSEL_Register use record
      SIGSEL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SOURCESEL      at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Arbitration Slot Number Select
   type CH7_CFG_ARBSLOTS_Field is
     (--  One arbitration slot selected
      ONE,
      --  Two arbitration slots selected
      TWO,
      --  Four arbitration slots selected
      FOUR,
      --  Eight arbitration slots selected
      EIGHT)
     with Size => 2;
   for CH7_CFG_ARBSLOTS_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      EIGHT => 3);

   subtype CH7_CFG_SRCINCSIGN_Field is Interfaces.EFM32.Bit;
   subtype CH7_CFG_DSTINCSIGN_Field is Interfaces.EFM32.Bit;

   --  Channel Configuration Register
   type CH7_CFG_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.EFM32.UInt16 := 16#0#;
      --  Arbitration Slot Number Select
      ARBSLOTS       : CH7_CFG_ARBSLOTS_Field := Interfaces.EFM32.LDMA.ONE;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Source Address Increment Sign
      SRCINCSIGN     : CH7_CFG_SRCINCSIGN_Field := 16#0#;
      --  Destination Address Increment Sign
      DSTINCSIGN     : CH7_CFG_DSTINCSIGN_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH7_CFG_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      ARBSLOTS       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      SRCINCSIGN     at 0 range 20 .. 20;
      DSTINCSIGN     at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH7_LOOP_LOOPCNT_Field is Interfaces.EFM32.Byte;

   --  Channel Loop Counter Register
   type CH7_LOOP_Register is record
      --  Linked Structure Sequence Loop Counter
      LOOPCNT       : CH7_LOOP_LOOPCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH7_LOOP_Register use record
      LOOPCNT       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DMA Structure Type
   type CH7_CTRL_STRUCTTYPE_Field is
     (--  DMA transfer structure type selected.
      TRANSFER,
      --  Synchronization structure type selected.
      SYNCHRONIZE,
      --  Write immediate value structure type selected.
      WRITE)
     with Size => 2;
   for CH7_CTRL_STRUCTTYPE_Field use
     (TRANSFER => 0,
      SYNCHRONIZE => 1,
      WRITE => 2);

   subtype CH7_CTRL_STRUCTREQ_Field is Interfaces.EFM32.Bit;
   subtype CH7_CTRL_XFERCNT_Field is Interfaces.EFM32.UInt11;
   subtype CH7_CTRL_BYTESWAP_Field is Interfaces.EFM32.Bit;

   --  Block Transfer Size
   type CH7_CTRL_BLOCKSIZE_Field is
     (--  One unit transfer per arbitration
      UNIT1,
      --  Two unit transfers per arbitration
      UNIT2,
      --  Three unit transfers per arbitration
      UNIT3,
      --  Four unit transfers per arbitration
      UNIT4,
      --  Six unit transfers per arbitration
      UNIT6,
      --  Eight unit transfers per arbitration
      UNIT8,
      --  Sixteen unit transfers per arbitration
      UNIT16,
      --  32 unit transfers per arbitration
      UNIT32,
      --  64 unit transfers per arbitration
      UNIT64,
      --  128 unit transfers per arbitration
      UNIT128,
      --  256 unit transfers per arbitration
      UNIT256,
      --  512 unit transfers per arbitration
      UNIT512,
      --  1024 unit transfers per arbitration
      UNIT1024,
      --  Transfer all units as specified by the XFRCNT field
      ALL_k)
     with Size => 4;
   for CH7_CTRL_BLOCKSIZE_Field use
     (UNIT1 => 0,
      UNIT2 => 1,
      UNIT3 => 2,
      UNIT4 => 3,
      UNIT6 => 4,
      UNIT8 => 5,
      UNIT16 => 7,
      UNIT32 => 9,
      UNIT64 => 10,
      UNIT128 => 11,
      UNIT256 => 12,
      UNIT512 => 13,
      UNIT1024 => 14,
      ALL_k => 15);

   subtype CH7_CTRL_DONEIFSEN_Field is Interfaces.EFM32.Bit;
   subtype CH7_CTRL_REQMODE_Field is Interfaces.EFM32.Bit;
   subtype CH7_CTRL_DECLOOPCNT_Field is Interfaces.EFM32.Bit;
   subtype CH7_CTRL_IGNORESREQ_Field is Interfaces.EFM32.Bit;

   --  Source Address Increment Size
   type CH7_CTRL_SRCINC_Field is
     (--  Increment source address by one unit data size after each read
      ONE,
      --  Increment source address by two unit data sizes after each read
      TWO,
      --  Increment source address by four unit data sizes after each read
      FOUR,
      --  Do not increment the source address. In this mode reads are made from a
--  fixed source address, for example reading FIFO.
      NONE)
     with Size => 2;
   for CH7_CTRL_SRCINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   --  Unit Data Transfer Size
   type CH7_CTRL_SIZE_Field is
     (--  Each unit transfer is a byte
      BYTE,
      --  Each unit transfer is a half-word
      HALFWORD,
      --  Each unit transfer is a word
      WORD)
     with Size => 2;
   for CH7_CTRL_SIZE_Field use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   --  Destination Address Increment Size
   type CH7_CTRL_DSTINC_Field is
     (--  Increment destination address by one unit data size after each write
      ONE,
      --  Increment destination address by two unit data sizes after each write
      TWO,
      --  Increment destination address by four unit data sizes after each write
      FOUR,
      --  Do not increment the destination address. Writes are made to a fixed
--  destination address, for example writing to a FIFO.
      NONE)
     with Size => 2;
   for CH7_CTRL_DSTINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   subtype CH7_CTRL_SRCMODE_Field is Interfaces.EFM32.Bit;
   subtype CH7_CTRL_DSTMODE_Field is Interfaces.EFM32.Bit;

   --  Channel Descriptor Control Word Register
   type CH7_CTRL_Register is record
      --  Read-only. DMA Structure Type
      STRUCTTYPE   : CH7_CTRL_STRUCTTYPE_Field :=
                      Interfaces.EFM32.LDMA.TRANSFER;
      --  unspecified
      Reserved_2_2 : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Structure DMA Transfer Request
      STRUCTREQ    : CH7_CTRL_STRUCTREQ_Field := 16#0#;
      --  DMA Unit Data Transfer Count
      XFERCNT      : CH7_CTRL_XFERCNT_Field := 16#0#;
      --  Endian Byte Swap
      BYTESWAP     : CH7_CTRL_BYTESWAP_Field := 16#0#;
      --  Block Transfer Size
      BLOCKSIZE    : CH7_CTRL_BLOCKSIZE_Field := Interfaces.EFM32.LDMA.UNIT1;
      --  DMA Operation Done Interrupt Flag Set Enable
      DONEIFSEN    : CH7_CTRL_DONEIFSEN_Field := 16#0#;
      --  DMA Request Transfer Mode Select
      REQMODE      : CH7_CTRL_REQMODE_Field := 16#0#;
      --  Decrement Loop Count
      DECLOOPCNT   : CH7_CTRL_DECLOOPCNT_Field := 16#0#;
      --  Ignore Sreq
      IGNORESREQ   : CH7_CTRL_IGNORESREQ_Field := 16#0#;
      --  Source Address Increment Size
      SRCINC       : CH7_CTRL_SRCINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Unit Data Transfer Size
      SIZE         : CH7_CTRL_SIZE_Field := Interfaces.EFM32.LDMA.BYTE;
      --  Destination Address Increment Size
      DSTINC       : CH7_CTRL_DSTINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Read-only. Source Addressing Mode
      SRCMODE      : CH7_CTRL_SRCMODE_Field := 16#0#;
      --  Read-only. Destination Addressing Mode
      DSTMODE      : CH7_CTRL_DSTMODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH7_CTRL_Register use record
      STRUCTTYPE   at 0 range 0 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      STRUCTREQ    at 0 range 3 .. 3;
      XFERCNT      at 0 range 4 .. 14;
      BYTESWAP     at 0 range 15 .. 15;
      BLOCKSIZE    at 0 range 16 .. 19;
      DONEIFSEN    at 0 range 20 .. 20;
      REQMODE      at 0 range 21 .. 21;
      DECLOOPCNT   at 0 range 22 .. 22;
      IGNORESREQ   at 0 range 23 .. 23;
      SRCINC       at 0 range 24 .. 25;
      SIZE         at 0 range 26 .. 27;
      DSTINC       at 0 range 28 .. 29;
      SRCMODE      at 0 range 30 .. 30;
      DSTMODE      at 0 range 31 .. 31;
   end record;

   subtype CH7_LINK_LINKMODE_Field is Interfaces.EFM32.Bit;
   subtype CH7_LINK_LINK_Field is Interfaces.EFM32.Bit;
   subtype CH7_LINK_LINKADDR_Field is Interfaces.EFM32.UInt30;

   --  Channel Descriptor Link Structure Address Register
   type CH7_LINK_Register is record
      --  Read-only. Link Structure Addressing Mode
      LINKMODE : CH7_LINK_LINKMODE_Field := 16#0#;
      --  Link Next Structure
      LINK     : CH7_LINK_LINK_Field := 16#0#;
      --  Link Structure Address
      LINKADDR : CH7_LINK_LINKADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH7_LINK_Register use record
      LINKMODE at 0 range 0 .. 0;
      LINK     at 0 range 1 .. 1;
      LINKADDR at 0 range 2 .. 31;
   end record;

   subtype CH8_REQSEL_SIGSEL_Field is Interfaces.EFM32.UInt4;

   --  Source Select
   type CH8_REQSEL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRS,
      --  Analog to Digital Converter 0
      ADC0,
      --  Analog to Digital Converter 0
      ADC1,
      --  Digital to Analog Converter 0
      VDAC0,
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
      --  Low Energy UART 0
      LEUART0,
      --  Low Energy UART 1
      LEUART1,
      --  I2C 0
      I2C0,
      --  I2C 1
      I2C1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  Memory System Controller
      MSC,
      --  Advanced Encryption Standard Accelerator
      CRYPTO0,
      --  External Bus Interface
      EBI,
      --  PDM Interface
      PDM,
      --  Capacitive touch sense module
      CSEN,
      --  Low Energy Sensor Interface
      LESENSE)
     with Size => 6;
   for CH8_REQSEL_SOURCESEL_Field use
     (NONE => 0,
      PRS => 1,
      ADC0 => 8,
      ADC1 => 9,
      VDAC0 => 10,
      USART0 => 12,
      USART1 => 13,
      USART2 => 14,
      USART3 => 15,
      USART4 => 16,
      UART0 => 18,
      UART1 => 19,
      LEUART0 => 20,
      LEUART1 => 21,
      I2C0 => 22,
      I2C1 => 23,
      TIMER0 => 25,
      TIMER1 => 26,
      TIMER2 => 27,
      TIMER3 => 28,
      WTIMER0 => 32,
      WTIMER1 => 33,
      MSC => 48,
      CRYPTO0 => 49,
      EBI => 50,
      PDM => 51,
      CSEN => 61,
      LESENSE => 62);

   --  Channel Peripheral Request Select Register
   type CH8_REQSEL_Register is record
      --  Signal Select
      SIGSEL         : CH8_REQSEL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Source Select
      SOURCESEL      : CH8_REQSEL_SOURCESEL_Field :=
                        Interfaces.EFM32.LDMA.NONE;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH8_REQSEL_Register use record
      SIGSEL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SOURCESEL      at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Arbitration Slot Number Select
   type CH8_CFG_ARBSLOTS_Field is
     (--  One arbitration slot selected
      ONE,
      --  Two arbitration slots selected
      TWO,
      --  Four arbitration slots selected
      FOUR,
      --  Eight arbitration slots selected
      EIGHT)
     with Size => 2;
   for CH8_CFG_ARBSLOTS_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      EIGHT => 3);

   subtype CH8_CFG_SRCINCSIGN_Field is Interfaces.EFM32.Bit;
   subtype CH8_CFG_DSTINCSIGN_Field is Interfaces.EFM32.Bit;

   --  Channel Configuration Register
   type CH8_CFG_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.EFM32.UInt16 := 16#0#;
      --  Arbitration Slot Number Select
      ARBSLOTS       : CH8_CFG_ARBSLOTS_Field := Interfaces.EFM32.LDMA.ONE;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Source Address Increment Sign
      SRCINCSIGN     : CH8_CFG_SRCINCSIGN_Field := 16#0#;
      --  Destination Address Increment Sign
      DSTINCSIGN     : CH8_CFG_DSTINCSIGN_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH8_CFG_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      ARBSLOTS       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      SRCINCSIGN     at 0 range 20 .. 20;
      DSTINCSIGN     at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH8_LOOP_LOOPCNT_Field is Interfaces.EFM32.Byte;

   --  Channel Loop Counter Register
   type CH8_LOOP_Register is record
      --  Linked Structure Sequence Loop Counter
      LOOPCNT       : CH8_LOOP_LOOPCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH8_LOOP_Register use record
      LOOPCNT       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DMA Structure Type
   type CH8_CTRL_STRUCTTYPE_Field is
     (--  DMA transfer structure type selected.
      TRANSFER,
      --  Synchronization structure type selected.
      SYNCHRONIZE,
      --  Write immediate value structure type selected.
      WRITE)
     with Size => 2;
   for CH8_CTRL_STRUCTTYPE_Field use
     (TRANSFER => 0,
      SYNCHRONIZE => 1,
      WRITE => 2);

   subtype CH8_CTRL_STRUCTREQ_Field is Interfaces.EFM32.Bit;
   subtype CH8_CTRL_XFERCNT_Field is Interfaces.EFM32.UInt11;
   subtype CH8_CTRL_BYTESWAP_Field is Interfaces.EFM32.Bit;

   --  Block Transfer Size
   type CH8_CTRL_BLOCKSIZE_Field is
     (--  One unit transfer per arbitration
      UNIT1,
      --  Two unit transfers per arbitration
      UNIT2,
      --  Three unit transfers per arbitration
      UNIT3,
      --  Four unit transfers per arbitration
      UNIT4,
      --  Six unit transfers per arbitration
      UNIT6,
      --  Eight unit transfers per arbitration
      UNIT8,
      --  Sixteen unit transfers per arbitration
      UNIT16,
      --  32 unit transfers per arbitration
      UNIT32,
      --  64 unit transfers per arbitration
      UNIT64,
      --  128 unit transfers per arbitration
      UNIT128,
      --  256 unit transfers per arbitration
      UNIT256,
      --  512 unit transfers per arbitration
      UNIT512,
      --  1024 unit transfers per arbitration
      UNIT1024,
      --  Transfer all units as specified by the XFRCNT field
      ALL_k)
     with Size => 4;
   for CH8_CTRL_BLOCKSIZE_Field use
     (UNIT1 => 0,
      UNIT2 => 1,
      UNIT3 => 2,
      UNIT4 => 3,
      UNIT6 => 4,
      UNIT8 => 5,
      UNIT16 => 7,
      UNIT32 => 9,
      UNIT64 => 10,
      UNIT128 => 11,
      UNIT256 => 12,
      UNIT512 => 13,
      UNIT1024 => 14,
      ALL_k => 15);

   subtype CH8_CTRL_DONEIFSEN_Field is Interfaces.EFM32.Bit;
   subtype CH8_CTRL_REQMODE_Field is Interfaces.EFM32.Bit;
   subtype CH8_CTRL_DECLOOPCNT_Field is Interfaces.EFM32.Bit;
   subtype CH8_CTRL_IGNORESREQ_Field is Interfaces.EFM32.Bit;

   --  Source Address Increment Size
   type CH8_CTRL_SRCINC_Field is
     (--  Increment source address by one unit data size after each read
      ONE,
      --  Increment source address by two unit data sizes after each read
      TWO,
      --  Increment source address by four unit data sizes after each read
      FOUR,
      --  Do not increment the source address. In this mode reads are made from a
--  fixed source address, for example reading FIFO.
      NONE)
     with Size => 2;
   for CH8_CTRL_SRCINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   --  Unit Data Transfer Size
   type CH8_CTRL_SIZE_Field is
     (--  Each unit transfer is a byte
      BYTE,
      --  Each unit transfer is a half-word
      HALFWORD,
      --  Each unit transfer is a word
      WORD)
     with Size => 2;
   for CH8_CTRL_SIZE_Field use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   --  Destination Address Increment Size
   type CH8_CTRL_DSTINC_Field is
     (--  Increment destination address by one unit data size after each write
      ONE,
      --  Increment destination address by two unit data sizes after each write
      TWO,
      --  Increment destination address by four unit data sizes after each write
      FOUR,
      --  Do not increment the destination address. Writes are made to a fixed
--  destination address, for example writing to a FIFO.
      NONE)
     with Size => 2;
   for CH8_CTRL_DSTINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   subtype CH8_CTRL_SRCMODE_Field is Interfaces.EFM32.Bit;
   subtype CH8_CTRL_DSTMODE_Field is Interfaces.EFM32.Bit;

   --  Channel Descriptor Control Word Register
   type CH8_CTRL_Register is record
      --  Read-only. DMA Structure Type
      STRUCTTYPE   : CH8_CTRL_STRUCTTYPE_Field :=
                      Interfaces.EFM32.LDMA.TRANSFER;
      --  unspecified
      Reserved_2_2 : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Structure DMA Transfer Request
      STRUCTREQ    : CH8_CTRL_STRUCTREQ_Field := 16#0#;
      --  DMA Unit Data Transfer Count
      XFERCNT      : CH8_CTRL_XFERCNT_Field := 16#0#;
      --  Endian Byte Swap
      BYTESWAP     : CH8_CTRL_BYTESWAP_Field := 16#0#;
      --  Block Transfer Size
      BLOCKSIZE    : CH8_CTRL_BLOCKSIZE_Field := Interfaces.EFM32.LDMA.UNIT1;
      --  DMA Operation Done Interrupt Flag Set Enable
      DONEIFSEN    : CH8_CTRL_DONEIFSEN_Field := 16#0#;
      --  DMA Request Transfer Mode Select
      REQMODE      : CH8_CTRL_REQMODE_Field := 16#0#;
      --  Decrement Loop Count
      DECLOOPCNT   : CH8_CTRL_DECLOOPCNT_Field := 16#0#;
      --  Ignore Sreq
      IGNORESREQ   : CH8_CTRL_IGNORESREQ_Field := 16#0#;
      --  Source Address Increment Size
      SRCINC       : CH8_CTRL_SRCINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Unit Data Transfer Size
      SIZE         : CH8_CTRL_SIZE_Field := Interfaces.EFM32.LDMA.BYTE;
      --  Destination Address Increment Size
      DSTINC       : CH8_CTRL_DSTINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Read-only. Source Addressing Mode
      SRCMODE      : CH8_CTRL_SRCMODE_Field := 16#0#;
      --  Read-only. Destination Addressing Mode
      DSTMODE      : CH8_CTRL_DSTMODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH8_CTRL_Register use record
      STRUCTTYPE   at 0 range 0 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      STRUCTREQ    at 0 range 3 .. 3;
      XFERCNT      at 0 range 4 .. 14;
      BYTESWAP     at 0 range 15 .. 15;
      BLOCKSIZE    at 0 range 16 .. 19;
      DONEIFSEN    at 0 range 20 .. 20;
      REQMODE      at 0 range 21 .. 21;
      DECLOOPCNT   at 0 range 22 .. 22;
      IGNORESREQ   at 0 range 23 .. 23;
      SRCINC       at 0 range 24 .. 25;
      SIZE         at 0 range 26 .. 27;
      DSTINC       at 0 range 28 .. 29;
      SRCMODE      at 0 range 30 .. 30;
      DSTMODE      at 0 range 31 .. 31;
   end record;

   subtype CH8_LINK_LINKMODE_Field is Interfaces.EFM32.Bit;
   subtype CH8_LINK_LINK_Field is Interfaces.EFM32.Bit;
   subtype CH8_LINK_LINKADDR_Field is Interfaces.EFM32.UInt30;

   --  Channel Descriptor Link Structure Address Register
   type CH8_LINK_Register is record
      --  Read-only. Link Structure Addressing Mode
      LINKMODE : CH8_LINK_LINKMODE_Field := 16#0#;
      --  Link Next Structure
      LINK     : CH8_LINK_LINK_Field := 16#0#;
      --  Link Structure Address
      LINKADDR : CH8_LINK_LINKADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH8_LINK_Register use record
      LINKMODE at 0 range 0 .. 0;
      LINK     at 0 range 1 .. 1;
      LINKADDR at 0 range 2 .. 31;
   end record;

   subtype CH9_REQSEL_SIGSEL_Field is Interfaces.EFM32.UInt4;

   --  Source Select
   type CH9_REQSEL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRS,
      --  Analog to Digital Converter 0
      ADC0,
      --  Analog to Digital Converter 0
      ADC1,
      --  Digital to Analog Converter 0
      VDAC0,
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
      --  Low Energy UART 0
      LEUART0,
      --  Low Energy UART 1
      LEUART1,
      --  I2C 0
      I2C0,
      --  I2C 1
      I2C1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  Memory System Controller
      MSC,
      --  Advanced Encryption Standard Accelerator
      CRYPTO0,
      --  External Bus Interface
      EBI,
      --  PDM Interface
      PDM,
      --  Capacitive touch sense module
      CSEN,
      --  Low Energy Sensor Interface
      LESENSE)
     with Size => 6;
   for CH9_REQSEL_SOURCESEL_Field use
     (NONE => 0,
      PRS => 1,
      ADC0 => 8,
      ADC1 => 9,
      VDAC0 => 10,
      USART0 => 12,
      USART1 => 13,
      USART2 => 14,
      USART3 => 15,
      USART4 => 16,
      UART0 => 18,
      UART1 => 19,
      LEUART0 => 20,
      LEUART1 => 21,
      I2C0 => 22,
      I2C1 => 23,
      TIMER0 => 25,
      TIMER1 => 26,
      TIMER2 => 27,
      TIMER3 => 28,
      WTIMER0 => 32,
      WTIMER1 => 33,
      MSC => 48,
      CRYPTO0 => 49,
      EBI => 50,
      PDM => 51,
      CSEN => 61,
      LESENSE => 62);

   --  Channel Peripheral Request Select Register
   type CH9_REQSEL_Register is record
      --  Signal Select
      SIGSEL         : CH9_REQSEL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Source Select
      SOURCESEL      : CH9_REQSEL_SOURCESEL_Field :=
                        Interfaces.EFM32.LDMA.NONE;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH9_REQSEL_Register use record
      SIGSEL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SOURCESEL      at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Arbitration Slot Number Select
   type CH9_CFG_ARBSLOTS_Field is
     (--  One arbitration slot selected
      ONE,
      --  Two arbitration slots selected
      TWO,
      --  Four arbitration slots selected
      FOUR,
      --  Eight arbitration slots selected
      EIGHT)
     with Size => 2;
   for CH9_CFG_ARBSLOTS_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      EIGHT => 3);

   subtype CH9_CFG_SRCINCSIGN_Field is Interfaces.EFM32.Bit;
   subtype CH9_CFG_DSTINCSIGN_Field is Interfaces.EFM32.Bit;

   --  Channel Configuration Register
   type CH9_CFG_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.EFM32.UInt16 := 16#0#;
      --  Arbitration Slot Number Select
      ARBSLOTS       : CH9_CFG_ARBSLOTS_Field := Interfaces.EFM32.LDMA.ONE;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Source Address Increment Sign
      SRCINCSIGN     : CH9_CFG_SRCINCSIGN_Field := 16#0#;
      --  Destination Address Increment Sign
      DSTINCSIGN     : CH9_CFG_DSTINCSIGN_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH9_CFG_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      ARBSLOTS       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      SRCINCSIGN     at 0 range 20 .. 20;
      DSTINCSIGN     at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH9_LOOP_LOOPCNT_Field is Interfaces.EFM32.Byte;

   --  Channel Loop Counter Register
   type CH9_LOOP_Register is record
      --  Linked Structure Sequence Loop Counter
      LOOPCNT       : CH9_LOOP_LOOPCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH9_LOOP_Register use record
      LOOPCNT       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DMA Structure Type
   type CH9_CTRL_STRUCTTYPE_Field is
     (--  DMA transfer structure type selected.
      TRANSFER,
      --  Synchronization structure type selected.
      SYNCHRONIZE,
      --  Write immediate value structure type selected.
      WRITE)
     with Size => 2;
   for CH9_CTRL_STRUCTTYPE_Field use
     (TRANSFER => 0,
      SYNCHRONIZE => 1,
      WRITE => 2);

   subtype CH9_CTRL_STRUCTREQ_Field is Interfaces.EFM32.Bit;
   subtype CH9_CTRL_XFERCNT_Field is Interfaces.EFM32.UInt11;
   subtype CH9_CTRL_BYTESWAP_Field is Interfaces.EFM32.Bit;

   --  Block Transfer Size
   type CH9_CTRL_BLOCKSIZE_Field is
     (--  One unit transfer per arbitration
      UNIT1,
      --  Two unit transfers per arbitration
      UNIT2,
      --  Three unit transfers per arbitration
      UNIT3,
      --  Four unit transfers per arbitration
      UNIT4,
      --  Six unit transfers per arbitration
      UNIT6,
      --  Eight unit transfers per arbitration
      UNIT8,
      --  Sixteen unit transfers per arbitration
      UNIT16,
      --  32 unit transfers per arbitration
      UNIT32,
      --  64 unit transfers per arbitration
      UNIT64,
      --  128 unit transfers per arbitration
      UNIT128,
      --  256 unit transfers per arbitration
      UNIT256,
      --  512 unit transfers per arbitration
      UNIT512,
      --  1024 unit transfers per arbitration
      UNIT1024,
      --  Transfer all units as specified by the XFRCNT field
      ALL_k)
     with Size => 4;
   for CH9_CTRL_BLOCKSIZE_Field use
     (UNIT1 => 0,
      UNIT2 => 1,
      UNIT3 => 2,
      UNIT4 => 3,
      UNIT6 => 4,
      UNIT8 => 5,
      UNIT16 => 7,
      UNIT32 => 9,
      UNIT64 => 10,
      UNIT128 => 11,
      UNIT256 => 12,
      UNIT512 => 13,
      UNIT1024 => 14,
      ALL_k => 15);

   subtype CH9_CTRL_DONEIFSEN_Field is Interfaces.EFM32.Bit;
   subtype CH9_CTRL_REQMODE_Field is Interfaces.EFM32.Bit;
   subtype CH9_CTRL_DECLOOPCNT_Field is Interfaces.EFM32.Bit;
   subtype CH9_CTRL_IGNORESREQ_Field is Interfaces.EFM32.Bit;

   --  Source Address Increment Size
   type CH9_CTRL_SRCINC_Field is
     (--  Increment source address by one unit data size after each read
      ONE,
      --  Increment source address by two unit data sizes after each read
      TWO,
      --  Increment source address by four unit data sizes after each read
      FOUR,
      --  Do not increment the source address. In this mode reads are made from a
--  fixed source address, for example reading FIFO.
      NONE)
     with Size => 2;
   for CH9_CTRL_SRCINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   --  Unit Data Transfer Size
   type CH9_CTRL_SIZE_Field is
     (--  Each unit transfer is a byte
      BYTE,
      --  Each unit transfer is a half-word
      HALFWORD,
      --  Each unit transfer is a word
      WORD)
     with Size => 2;
   for CH9_CTRL_SIZE_Field use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   --  Destination Address Increment Size
   type CH9_CTRL_DSTINC_Field is
     (--  Increment destination address by one unit data size after each write
      ONE,
      --  Increment destination address by two unit data sizes after each write
      TWO,
      --  Increment destination address by four unit data sizes after each write
      FOUR,
      --  Do not increment the destination address. Writes are made to a fixed
--  destination address, for example writing to a FIFO.
      NONE)
     with Size => 2;
   for CH9_CTRL_DSTINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   subtype CH9_CTRL_SRCMODE_Field is Interfaces.EFM32.Bit;
   subtype CH9_CTRL_DSTMODE_Field is Interfaces.EFM32.Bit;

   --  Channel Descriptor Control Word Register
   type CH9_CTRL_Register is record
      --  Read-only. DMA Structure Type
      STRUCTTYPE   : CH9_CTRL_STRUCTTYPE_Field :=
                      Interfaces.EFM32.LDMA.TRANSFER;
      --  unspecified
      Reserved_2_2 : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Structure DMA Transfer Request
      STRUCTREQ    : CH9_CTRL_STRUCTREQ_Field := 16#0#;
      --  DMA Unit Data Transfer Count
      XFERCNT      : CH9_CTRL_XFERCNT_Field := 16#0#;
      --  Endian Byte Swap
      BYTESWAP     : CH9_CTRL_BYTESWAP_Field := 16#0#;
      --  Block Transfer Size
      BLOCKSIZE    : CH9_CTRL_BLOCKSIZE_Field := Interfaces.EFM32.LDMA.UNIT1;
      --  DMA Operation Done Interrupt Flag Set Enable
      DONEIFSEN    : CH9_CTRL_DONEIFSEN_Field := 16#0#;
      --  DMA Request Transfer Mode Select
      REQMODE      : CH9_CTRL_REQMODE_Field := 16#0#;
      --  Decrement Loop Count
      DECLOOPCNT   : CH9_CTRL_DECLOOPCNT_Field := 16#0#;
      --  Ignore Sreq
      IGNORESREQ   : CH9_CTRL_IGNORESREQ_Field := 16#0#;
      --  Source Address Increment Size
      SRCINC       : CH9_CTRL_SRCINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Unit Data Transfer Size
      SIZE         : CH9_CTRL_SIZE_Field := Interfaces.EFM32.LDMA.BYTE;
      --  Destination Address Increment Size
      DSTINC       : CH9_CTRL_DSTINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Read-only. Source Addressing Mode
      SRCMODE      : CH9_CTRL_SRCMODE_Field := 16#0#;
      --  Read-only. Destination Addressing Mode
      DSTMODE      : CH9_CTRL_DSTMODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH9_CTRL_Register use record
      STRUCTTYPE   at 0 range 0 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      STRUCTREQ    at 0 range 3 .. 3;
      XFERCNT      at 0 range 4 .. 14;
      BYTESWAP     at 0 range 15 .. 15;
      BLOCKSIZE    at 0 range 16 .. 19;
      DONEIFSEN    at 0 range 20 .. 20;
      REQMODE      at 0 range 21 .. 21;
      DECLOOPCNT   at 0 range 22 .. 22;
      IGNORESREQ   at 0 range 23 .. 23;
      SRCINC       at 0 range 24 .. 25;
      SIZE         at 0 range 26 .. 27;
      DSTINC       at 0 range 28 .. 29;
      SRCMODE      at 0 range 30 .. 30;
      DSTMODE      at 0 range 31 .. 31;
   end record;

   subtype CH9_LINK_LINKMODE_Field is Interfaces.EFM32.Bit;
   subtype CH9_LINK_LINK_Field is Interfaces.EFM32.Bit;
   subtype CH9_LINK_LINKADDR_Field is Interfaces.EFM32.UInt30;

   --  Channel Descriptor Link Structure Address Register
   type CH9_LINK_Register is record
      --  Read-only. Link Structure Addressing Mode
      LINKMODE : CH9_LINK_LINKMODE_Field := 16#0#;
      --  Link Next Structure
      LINK     : CH9_LINK_LINK_Field := 16#0#;
      --  Link Structure Address
      LINKADDR : CH9_LINK_LINKADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH9_LINK_Register use record
      LINKMODE at 0 range 0 .. 0;
      LINK     at 0 range 1 .. 1;
      LINKADDR at 0 range 2 .. 31;
   end record;

   subtype CH10_REQSEL_SIGSEL_Field is Interfaces.EFM32.UInt4;

   --  Source Select
   type CH10_REQSEL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRS,
      --  Analog to Digital Converter 0
      ADC0,
      --  Analog to Digital Converter 0
      ADC1,
      --  Digital to Analog Converter 0
      VDAC0,
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
      --  Low Energy UART 0
      LEUART0,
      --  Low Energy UART 1
      LEUART1,
      --  I2C 0
      I2C0,
      --  I2C 1
      I2C1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  Memory System Controller
      MSC,
      --  Advanced Encryption Standard Accelerator
      CRYPTO0,
      --  External Bus Interface
      EBI,
      --  PDM Interface
      PDM,
      --  Capacitive touch sense module
      CSEN,
      --  Low Energy Sensor Interface
      LESENSE)
     with Size => 6;
   for CH10_REQSEL_SOURCESEL_Field use
     (NONE => 0,
      PRS => 1,
      ADC0 => 8,
      ADC1 => 9,
      VDAC0 => 10,
      USART0 => 12,
      USART1 => 13,
      USART2 => 14,
      USART3 => 15,
      USART4 => 16,
      UART0 => 18,
      UART1 => 19,
      LEUART0 => 20,
      LEUART1 => 21,
      I2C0 => 22,
      I2C1 => 23,
      TIMER0 => 25,
      TIMER1 => 26,
      TIMER2 => 27,
      TIMER3 => 28,
      WTIMER0 => 32,
      WTIMER1 => 33,
      MSC => 48,
      CRYPTO0 => 49,
      EBI => 50,
      PDM => 51,
      CSEN => 61,
      LESENSE => 62);

   --  Channel Peripheral Request Select Register
   type CH10_REQSEL_Register is record
      --  Signal Select
      SIGSEL         : CH10_REQSEL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Source Select
      SOURCESEL      : CH10_REQSEL_SOURCESEL_Field :=
                        Interfaces.EFM32.LDMA.NONE;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH10_REQSEL_Register use record
      SIGSEL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SOURCESEL      at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Arbitration Slot Number Select
   type CH10_CFG_ARBSLOTS_Field is
     (--  One arbitration slot selected
      ONE,
      --  Two arbitration slots selected
      TWO,
      --  Four arbitration slots selected
      FOUR,
      --  Eight arbitration slots selected
      EIGHT)
     with Size => 2;
   for CH10_CFG_ARBSLOTS_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      EIGHT => 3);

   subtype CH10_CFG_SRCINCSIGN_Field is Interfaces.EFM32.Bit;
   subtype CH10_CFG_DSTINCSIGN_Field is Interfaces.EFM32.Bit;

   --  Channel Configuration Register
   type CH10_CFG_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.EFM32.UInt16 := 16#0#;
      --  Arbitration Slot Number Select
      ARBSLOTS       : CH10_CFG_ARBSLOTS_Field := Interfaces.EFM32.LDMA.ONE;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Source Address Increment Sign
      SRCINCSIGN     : CH10_CFG_SRCINCSIGN_Field := 16#0#;
      --  Destination Address Increment Sign
      DSTINCSIGN     : CH10_CFG_DSTINCSIGN_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH10_CFG_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      ARBSLOTS       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      SRCINCSIGN     at 0 range 20 .. 20;
      DSTINCSIGN     at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH10_LOOP_LOOPCNT_Field is Interfaces.EFM32.Byte;

   --  Channel Loop Counter Register
   type CH10_LOOP_Register is record
      --  Linked Structure Sequence Loop Counter
      LOOPCNT       : CH10_LOOP_LOOPCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH10_LOOP_Register use record
      LOOPCNT       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DMA Structure Type
   type CH10_CTRL_STRUCTTYPE_Field is
     (--  DMA transfer structure type selected.
      TRANSFER,
      --  Synchronization structure type selected.
      SYNCHRONIZE,
      --  Write immediate value structure type selected.
      WRITE)
     with Size => 2;
   for CH10_CTRL_STRUCTTYPE_Field use
     (TRANSFER => 0,
      SYNCHRONIZE => 1,
      WRITE => 2);

   subtype CH10_CTRL_STRUCTREQ_Field is Interfaces.EFM32.Bit;
   subtype CH10_CTRL_XFERCNT_Field is Interfaces.EFM32.UInt11;
   subtype CH10_CTRL_BYTESWAP_Field is Interfaces.EFM32.Bit;

   --  Block Transfer Size
   type CH10_CTRL_BLOCKSIZE_Field is
     (--  One unit transfer per arbitration
      UNIT1,
      --  Two unit transfers per arbitration
      UNIT2,
      --  Three unit transfers per arbitration
      UNIT3,
      --  Four unit transfers per arbitration
      UNIT4,
      --  Six unit transfers per arbitration
      UNIT6,
      --  Eight unit transfers per arbitration
      UNIT8,
      --  Sixteen unit transfers per arbitration
      UNIT16,
      --  32 unit transfers per arbitration
      UNIT32,
      --  64 unit transfers per arbitration
      UNIT64,
      --  128 unit transfers per arbitration
      UNIT128,
      --  256 unit transfers per arbitration
      UNIT256,
      --  512 unit transfers per arbitration
      UNIT512,
      --  1024 unit transfers per arbitration
      UNIT1024,
      --  Transfer all units as specified by the XFRCNT field
      ALL_k)
     with Size => 4;
   for CH10_CTRL_BLOCKSIZE_Field use
     (UNIT1 => 0,
      UNIT2 => 1,
      UNIT3 => 2,
      UNIT4 => 3,
      UNIT6 => 4,
      UNIT8 => 5,
      UNIT16 => 7,
      UNIT32 => 9,
      UNIT64 => 10,
      UNIT128 => 11,
      UNIT256 => 12,
      UNIT512 => 13,
      UNIT1024 => 14,
      ALL_k => 15);

   subtype CH10_CTRL_DONEIFSEN_Field is Interfaces.EFM32.Bit;
   subtype CH10_CTRL_REQMODE_Field is Interfaces.EFM32.Bit;
   subtype CH10_CTRL_DECLOOPCNT_Field is Interfaces.EFM32.Bit;
   subtype CH10_CTRL_IGNORESREQ_Field is Interfaces.EFM32.Bit;

   --  Source Address Increment Size
   type CH10_CTRL_SRCINC_Field is
     (--  Increment source address by one unit data size after each read
      ONE,
      --  Increment source address by two unit data sizes after each read
      TWO,
      --  Increment source address by four unit data sizes after each read
      FOUR,
      --  Do not increment the source address. In this mode reads are made from a
--  fixed source address, for example reading FIFO.
      NONE)
     with Size => 2;
   for CH10_CTRL_SRCINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   --  Unit Data Transfer Size
   type CH10_CTRL_SIZE_Field is
     (--  Each unit transfer is a byte
      BYTE,
      --  Each unit transfer is a half-word
      HALFWORD,
      --  Each unit transfer is a word
      WORD)
     with Size => 2;
   for CH10_CTRL_SIZE_Field use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   --  Destination Address Increment Size
   type CH10_CTRL_DSTINC_Field is
     (--  Increment destination address by one unit data size after each write
      ONE,
      --  Increment destination address by two unit data sizes after each write
      TWO,
      --  Increment destination address by four unit data sizes after each write
      FOUR,
      --  Do not increment the destination address. Writes are made to a fixed
--  destination address, for example writing to a FIFO.
      NONE)
     with Size => 2;
   for CH10_CTRL_DSTINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   subtype CH10_CTRL_SRCMODE_Field is Interfaces.EFM32.Bit;
   subtype CH10_CTRL_DSTMODE_Field is Interfaces.EFM32.Bit;

   --  Channel Descriptor Control Word Register
   type CH10_CTRL_Register is record
      --  Read-only. DMA Structure Type
      STRUCTTYPE   : CH10_CTRL_STRUCTTYPE_Field :=
                      Interfaces.EFM32.LDMA.TRANSFER;
      --  unspecified
      Reserved_2_2 : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Structure DMA Transfer Request
      STRUCTREQ    : CH10_CTRL_STRUCTREQ_Field := 16#0#;
      --  DMA Unit Data Transfer Count
      XFERCNT      : CH10_CTRL_XFERCNT_Field := 16#0#;
      --  Endian Byte Swap
      BYTESWAP     : CH10_CTRL_BYTESWAP_Field := 16#0#;
      --  Block Transfer Size
      BLOCKSIZE    : CH10_CTRL_BLOCKSIZE_Field := Interfaces.EFM32.LDMA.UNIT1;
      --  DMA Operation Done Interrupt Flag Set Enable
      DONEIFSEN    : CH10_CTRL_DONEIFSEN_Field := 16#0#;
      --  DMA Request Transfer Mode Select
      REQMODE      : CH10_CTRL_REQMODE_Field := 16#0#;
      --  Decrement Loop Count
      DECLOOPCNT   : CH10_CTRL_DECLOOPCNT_Field := 16#0#;
      --  Ignore Sreq
      IGNORESREQ   : CH10_CTRL_IGNORESREQ_Field := 16#0#;
      --  Source Address Increment Size
      SRCINC       : CH10_CTRL_SRCINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Unit Data Transfer Size
      SIZE         : CH10_CTRL_SIZE_Field := Interfaces.EFM32.LDMA.BYTE;
      --  Destination Address Increment Size
      DSTINC       : CH10_CTRL_DSTINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Read-only. Source Addressing Mode
      SRCMODE      : CH10_CTRL_SRCMODE_Field := 16#0#;
      --  Read-only. Destination Addressing Mode
      DSTMODE      : CH10_CTRL_DSTMODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH10_CTRL_Register use record
      STRUCTTYPE   at 0 range 0 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      STRUCTREQ    at 0 range 3 .. 3;
      XFERCNT      at 0 range 4 .. 14;
      BYTESWAP     at 0 range 15 .. 15;
      BLOCKSIZE    at 0 range 16 .. 19;
      DONEIFSEN    at 0 range 20 .. 20;
      REQMODE      at 0 range 21 .. 21;
      DECLOOPCNT   at 0 range 22 .. 22;
      IGNORESREQ   at 0 range 23 .. 23;
      SRCINC       at 0 range 24 .. 25;
      SIZE         at 0 range 26 .. 27;
      DSTINC       at 0 range 28 .. 29;
      SRCMODE      at 0 range 30 .. 30;
      DSTMODE      at 0 range 31 .. 31;
   end record;

   subtype CH10_LINK_LINKMODE_Field is Interfaces.EFM32.Bit;
   subtype CH10_LINK_LINK_Field is Interfaces.EFM32.Bit;
   subtype CH10_LINK_LINKADDR_Field is Interfaces.EFM32.UInt30;

   --  Channel Descriptor Link Structure Address Register
   type CH10_LINK_Register is record
      --  Read-only. Link Structure Addressing Mode
      LINKMODE : CH10_LINK_LINKMODE_Field := 16#0#;
      --  Link Next Structure
      LINK     : CH10_LINK_LINK_Field := 16#0#;
      --  Link Structure Address
      LINKADDR : CH10_LINK_LINKADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH10_LINK_Register use record
      LINKMODE at 0 range 0 .. 0;
      LINK     at 0 range 1 .. 1;
      LINKADDR at 0 range 2 .. 31;
   end record;

   subtype CH11_REQSEL_SIGSEL_Field is Interfaces.EFM32.UInt4;

   --  Source Select
   type CH11_REQSEL_SOURCESEL_Field is
     (--  No source selected
      NONE,
      --  Peripheral Reflex System
      PRS,
      --  Analog to Digital Converter 0
      ADC0,
      --  Analog to Digital Converter 0
      ADC1,
      --  Digital to Analog Converter 0
      VDAC0,
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
      --  Low Energy UART 0
      LEUART0,
      --  Low Energy UART 1
      LEUART1,
      --  I2C 0
      I2C0,
      --  I2C 1
      I2C1,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Timer 3
      TIMER3,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1,
      --  Memory System Controller
      MSC,
      --  Advanced Encryption Standard Accelerator
      CRYPTO0,
      --  External Bus Interface
      EBI,
      --  PDM Interface
      PDM,
      --  Capacitive touch sense module
      CSEN,
      --  Low Energy Sensor Interface
      LESENSE)
     with Size => 6;
   for CH11_REQSEL_SOURCESEL_Field use
     (NONE => 0,
      PRS => 1,
      ADC0 => 8,
      ADC1 => 9,
      VDAC0 => 10,
      USART0 => 12,
      USART1 => 13,
      USART2 => 14,
      USART3 => 15,
      USART4 => 16,
      UART0 => 18,
      UART1 => 19,
      LEUART0 => 20,
      LEUART1 => 21,
      I2C0 => 22,
      I2C1 => 23,
      TIMER0 => 25,
      TIMER1 => 26,
      TIMER2 => 27,
      TIMER3 => 28,
      WTIMER0 => 32,
      WTIMER1 => 33,
      MSC => 48,
      CRYPTO0 => 49,
      EBI => 50,
      PDM => 51,
      CSEN => 61,
      LESENSE => 62);

   --  Channel Peripheral Request Select Register
   type CH11_REQSEL_Register is record
      --  Signal Select
      SIGSEL         : CH11_REQSEL_SIGSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Source Select
      SOURCESEL      : CH11_REQSEL_SOURCESEL_Field :=
                        Interfaces.EFM32.LDMA.NONE;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH11_REQSEL_Register use record
      SIGSEL         at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      SOURCESEL      at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Arbitration Slot Number Select
   type CH11_CFG_ARBSLOTS_Field is
     (--  One arbitration slot selected
      ONE,
      --  Two arbitration slots selected
      TWO,
      --  Four arbitration slots selected
      FOUR,
      --  Eight arbitration slots selected
      EIGHT)
     with Size => 2;
   for CH11_CFG_ARBSLOTS_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      EIGHT => 3);

   subtype CH11_CFG_SRCINCSIGN_Field is Interfaces.EFM32.Bit;
   subtype CH11_CFG_DSTINCSIGN_Field is Interfaces.EFM32.Bit;

   --  Channel Configuration Register
   type CH11_CFG_Register is record
      --  unspecified
      Reserved_0_15  : Interfaces.EFM32.UInt16 := 16#0#;
      --  Arbitration Slot Number Select
      ARBSLOTS       : CH11_CFG_ARBSLOTS_Field := Interfaces.EFM32.LDMA.ONE;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Source Address Increment Sign
      SRCINCSIGN     : CH11_CFG_SRCINCSIGN_Field := 16#0#;
      --  Destination Address Increment Sign
      DSTINCSIGN     : CH11_CFG_DSTINCSIGN_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH11_CFG_Register use record
      Reserved_0_15  at 0 range 0 .. 15;
      ARBSLOTS       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      SRCINCSIGN     at 0 range 20 .. 20;
      DSTINCSIGN     at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH11_LOOP_LOOPCNT_Field is Interfaces.EFM32.Byte;

   --  Channel Loop Counter Register
   type CH11_LOOP_Register is record
      --  Linked Structure Sequence Loop Counter
      LOOPCNT       : CH11_LOOP_LOOPCNT_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH11_LOOP_Register use record
      LOOPCNT       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   --  DMA Structure Type
   type CH11_CTRL_STRUCTTYPE_Field is
     (--  DMA transfer structure type selected.
      TRANSFER,
      --  Synchronization structure type selected.
      SYNCHRONIZE,
      --  Write immediate value structure type selected.
      WRITE)
     with Size => 2;
   for CH11_CTRL_STRUCTTYPE_Field use
     (TRANSFER => 0,
      SYNCHRONIZE => 1,
      WRITE => 2);

   subtype CH11_CTRL_STRUCTREQ_Field is Interfaces.EFM32.Bit;
   subtype CH11_CTRL_XFERCNT_Field is Interfaces.EFM32.UInt11;
   subtype CH11_CTRL_BYTESWAP_Field is Interfaces.EFM32.Bit;

   --  Block Transfer Size
   type CH11_CTRL_BLOCKSIZE_Field is
     (--  One unit transfer per arbitration
      UNIT1,
      --  Two unit transfers per arbitration
      UNIT2,
      --  Three unit transfers per arbitration
      UNIT3,
      --  Four unit transfers per arbitration
      UNIT4,
      --  Six unit transfers per arbitration
      UNIT6,
      --  Eight unit transfers per arbitration
      UNIT8,
      --  Sixteen unit transfers per arbitration
      UNIT16,
      --  32 unit transfers per arbitration
      UNIT32,
      --  64 unit transfers per arbitration
      UNIT64,
      --  128 unit transfers per arbitration
      UNIT128,
      --  256 unit transfers per arbitration
      UNIT256,
      --  512 unit transfers per arbitration
      UNIT512,
      --  1024 unit transfers per arbitration
      UNIT1024,
      --  Transfer all units as specified by the XFRCNT field
      ALL_k)
     with Size => 4;
   for CH11_CTRL_BLOCKSIZE_Field use
     (UNIT1 => 0,
      UNIT2 => 1,
      UNIT3 => 2,
      UNIT4 => 3,
      UNIT6 => 4,
      UNIT8 => 5,
      UNIT16 => 7,
      UNIT32 => 9,
      UNIT64 => 10,
      UNIT128 => 11,
      UNIT256 => 12,
      UNIT512 => 13,
      UNIT1024 => 14,
      ALL_k => 15);

   subtype CH11_CTRL_DONEIFSEN_Field is Interfaces.EFM32.Bit;
   subtype CH11_CTRL_REQMODE_Field is Interfaces.EFM32.Bit;
   subtype CH11_CTRL_DECLOOPCNT_Field is Interfaces.EFM32.Bit;
   subtype CH11_CTRL_IGNORESREQ_Field is Interfaces.EFM32.Bit;

   --  Source Address Increment Size
   type CH11_CTRL_SRCINC_Field is
     (--  Increment source address by one unit data size after each read
      ONE,
      --  Increment source address by two unit data sizes after each read
      TWO,
      --  Increment source address by four unit data sizes after each read
      FOUR,
      --  Do not increment the source address. In this mode reads are made from a
--  fixed source address, for example reading FIFO.
      NONE)
     with Size => 2;
   for CH11_CTRL_SRCINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   --  Unit Data Transfer Size
   type CH11_CTRL_SIZE_Field is
     (--  Each unit transfer is a byte
      BYTE,
      --  Each unit transfer is a half-word
      HALFWORD,
      --  Each unit transfer is a word
      WORD)
     with Size => 2;
   for CH11_CTRL_SIZE_Field use
     (BYTE => 0,
      HALFWORD => 1,
      WORD => 2);

   --  Destination Address Increment Size
   type CH11_CTRL_DSTINC_Field is
     (--  Increment destination address by one unit data size after each write
      ONE,
      --  Increment destination address by two unit data sizes after each write
      TWO,
      --  Increment destination address by four unit data sizes after each write
      FOUR,
      --  Do not increment the destination address. Writes are made to a fixed
--  destination address, for example writing to a FIFO.
      NONE)
     with Size => 2;
   for CH11_CTRL_DSTINC_Field use
     (ONE => 0,
      TWO => 1,
      FOUR => 2,
      NONE => 3);

   subtype CH11_CTRL_SRCMODE_Field is Interfaces.EFM32.Bit;
   subtype CH11_CTRL_DSTMODE_Field is Interfaces.EFM32.Bit;

   --  Channel Descriptor Control Word Register
   type CH11_CTRL_Register is record
      --  Read-only. DMA Structure Type
      STRUCTTYPE   : CH11_CTRL_STRUCTTYPE_Field :=
                      Interfaces.EFM32.LDMA.TRANSFER;
      --  unspecified
      Reserved_2_2 : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Structure DMA Transfer Request
      STRUCTREQ    : CH11_CTRL_STRUCTREQ_Field := 16#0#;
      --  DMA Unit Data Transfer Count
      XFERCNT      : CH11_CTRL_XFERCNT_Field := 16#0#;
      --  Endian Byte Swap
      BYTESWAP     : CH11_CTRL_BYTESWAP_Field := 16#0#;
      --  Block Transfer Size
      BLOCKSIZE    : CH11_CTRL_BLOCKSIZE_Field := Interfaces.EFM32.LDMA.UNIT1;
      --  DMA Operation Done Interrupt Flag Set Enable
      DONEIFSEN    : CH11_CTRL_DONEIFSEN_Field := 16#0#;
      --  DMA Request Transfer Mode Select
      REQMODE      : CH11_CTRL_REQMODE_Field := 16#0#;
      --  Decrement Loop Count
      DECLOOPCNT   : CH11_CTRL_DECLOOPCNT_Field := 16#0#;
      --  Ignore Sreq
      IGNORESREQ   : CH11_CTRL_IGNORESREQ_Field := 16#0#;
      --  Source Address Increment Size
      SRCINC       : CH11_CTRL_SRCINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Unit Data Transfer Size
      SIZE         : CH11_CTRL_SIZE_Field := Interfaces.EFM32.LDMA.BYTE;
      --  Destination Address Increment Size
      DSTINC       : CH11_CTRL_DSTINC_Field := Interfaces.EFM32.LDMA.ONE;
      --  Read-only. Source Addressing Mode
      SRCMODE      : CH11_CTRL_SRCMODE_Field := 16#0#;
      --  Read-only. Destination Addressing Mode
      DSTMODE      : CH11_CTRL_DSTMODE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH11_CTRL_Register use record
      STRUCTTYPE   at 0 range 0 .. 1;
      Reserved_2_2 at 0 range 2 .. 2;
      STRUCTREQ    at 0 range 3 .. 3;
      XFERCNT      at 0 range 4 .. 14;
      BYTESWAP     at 0 range 15 .. 15;
      BLOCKSIZE    at 0 range 16 .. 19;
      DONEIFSEN    at 0 range 20 .. 20;
      REQMODE      at 0 range 21 .. 21;
      DECLOOPCNT   at 0 range 22 .. 22;
      IGNORESREQ   at 0 range 23 .. 23;
      SRCINC       at 0 range 24 .. 25;
      SIZE         at 0 range 26 .. 27;
      DSTINC       at 0 range 28 .. 29;
      SRCMODE      at 0 range 30 .. 30;
      DSTMODE      at 0 range 31 .. 31;
   end record;

   subtype CH11_LINK_LINKMODE_Field is Interfaces.EFM32.Bit;
   subtype CH11_LINK_LINK_Field is Interfaces.EFM32.Bit;
   subtype CH11_LINK_LINKADDR_Field is Interfaces.EFM32.UInt30;

   --  Channel Descriptor Link Structure Address Register
   type CH11_LINK_Register is record
      --  Read-only. Link Structure Addressing Mode
      LINKMODE : CH11_LINK_LINKMODE_Field := 16#0#;
      --  Link Next Structure
      LINK     : CH11_LINK_LINK_Field := 16#0#;
      --  Link Structure Address
      LINKADDR : CH11_LINK_LINKADDR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH11_LINK_Register use record
      LINKMODE at 0 range 0 .. 0;
      LINK     at 0 range 1 .. 1;
      LINKADDR at 0 range 2 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LDMA
   type LDMA_Peripheral is record
      --  DMA Control Register
      CTRL        : aliased CTRL_Register;
      --  DMA Status Register
      STATUS      : aliased STATUS_Register;
      --  DMA Synchronization Trigger Register (Single-Cycle RMW)
      SYNC        : aliased SYNC_Register;
      --  DMA Channel Enable Register (Single-Cycle RMW)
      CHEN        : aliased CHEN_Register;
      --  DMA Channel Busy Register
      CHBUSY      : aliased CHBUSY_Register;
      --  DMA Channel Linking Done Register (Single-Cycle RMW)
      CHDONE      : aliased CHDONE_Register;
      --  DMA Channel Debug Halt Register
      DBGHALT     : aliased DBGHALT_Register;
      --  DMA Channel Software Transfer Request Register
      SWREQ       : aliased SWREQ_Register;
      --  DMA Channel Request Disable Register
      REQDIS      : aliased REQDIS_Register;
      --  DMA Channel Requests Pending Register
      REQPEND     : aliased REQPEND_Register;
      --  DMA Channel Link Load Register
      LINKLOAD    : aliased LINKLOAD_Register;
      --  DMA Channel Request Clear Register
      REQCLEAR    : aliased REQCLEAR_Register;
      --  Interrupt Flag Register
      IF_k        : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS         : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC         : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN         : aliased IEN_Register;
      --  Channel Peripheral Request Select Register
      CH0_REQSEL  : aliased CH0_REQSEL_Register;
      --  Channel Configuration Register
      CH0_CFG     : aliased CH0_CFG_Register;
      --  Channel Loop Counter Register
      CH0_LOOP    : aliased CH0_LOOP_Register;
      --  Channel Descriptor Control Word Register
      CH0_CTRL    : aliased CH0_CTRL_Register;
      --  Channel Descriptor Source Data Address Register
      CH0_SRC     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Destination Data Address Register
      CH0_DST     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Link Structure Address Register
      CH0_LINK    : aliased CH0_LINK_Register;
      --  Channel Peripheral Request Select Register
      CH1_REQSEL  : aliased CH1_REQSEL_Register;
      --  Channel Configuration Register
      CH1_CFG     : aliased CH1_CFG_Register;
      --  Channel Loop Counter Register
      CH1_LOOP    : aliased CH1_LOOP_Register;
      --  Channel Descriptor Control Word Register
      CH1_CTRL    : aliased CH1_CTRL_Register;
      --  Channel Descriptor Source Data Address Register
      CH1_SRC     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Destination Data Address Register
      CH1_DST     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Link Structure Address Register
      CH1_LINK    : aliased CH1_LINK_Register;
      --  Channel Peripheral Request Select Register
      CH2_REQSEL  : aliased CH2_REQSEL_Register;
      --  Channel Configuration Register
      CH2_CFG     : aliased CH2_CFG_Register;
      --  Channel Loop Counter Register
      CH2_LOOP    : aliased CH2_LOOP_Register;
      --  Channel Descriptor Control Word Register
      CH2_CTRL    : aliased CH2_CTRL_Register;
      --  Channel Descriptor Source Data Address Register
      CH2_SRC     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Destination Data Address Register
      CH2_DST     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Link Structure Address Register
      CH2_LINK    : aliased CH2_LINK_Register;
      --  Channel Peripheral Request Select Register
      CH3_REQSEL  : aliased CH3_REQSEL_Register;
      --  Channel Configuration Register
      CH3_CFG     : aliased CH3_CFG_Register;
      --  Channel Loop Counter Register
      CH3_LOOP    : aliased CH3_LOOP_Register;
      --  Channel Descriptor Control Word Register
      CH3_CTRL    : aliased CH3_CTRL_Register;
      --  Channel Descriptor Source Data Address Register
      CH3_SRC     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Destination Data Address Register
      CH3_DST     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Link Structure Address Register
      CH3_LINK    : aliased CH3_LINK_Register;
      --  Channel Peripheral Request Select Register
      CH4_REQSEL  : aliased CH4_REQSEL_Register;
      --  Channel Configuration Register
      CH4_CFG     : aliased CH4_CFG_Register;
      --  Channel Loop Counter Register
      CH4_LOOP    : aliased CH4_LOOP_Register;
      --  Channel Descriptor Control Word Register
      CH4_CTRL    : aliased CH4_CTRL_Register;
      --  Channel Descriptor Source Data Address Register
      CH4_SRC     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Destination Data Address Register
      CH4_DST     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Link Structure Address Register
      CH4_LINK    : aliased CH4_LINK_Register;
      --  Channel Peripheral Request Select Register
      CH5_REQSEL  : aliased CH5_REQSEL_Register;
      --  Channel Configuration Register
      CH5_CFG     : aliased CH5_CFG_Register;
      --  Channel Loop Counter Register
      CH5_LOOP    : aliased CH5_LOOP_Register;
      --  Channel Descriptor Control Word Register
      CH5_CTRL    : aliased CH5_CTRL_Register;
      --  Channel Descriptor Source Data Address Register
      CH5_SRC     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Destination Data Address Register
      CH5_DST     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Link Structure Address Register
      CH5_LINK    : aliased CH5_LINK_Register;
      --  Channel Peripheral Request Select Register
      CH6_REQSEL  : aliased CH6_REQSEL_Register;
      --  Channel Configuration Register
      CH6_CFG     : aliased CH6_CFG_Register;
      --  Channel Loop Counter Register
      CH6_LOOP    : aliased CH6_LOOP_Register;
      --  Channel Descriptor Control Word Register
      CH6_CTRL    : aliased CH6_CTRL_Register;
      --  Channel Descriptor Source Data Address Register
      CH6_SRC     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Destination Data Address Register
      CH6_DST     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Link Structure Address Register
      CH6_LINK    : aliased CH6_LINK_Register;
      --  Channel Peripheral Request Select Register
      CH7_REQSEL  : aliased CH7_REQSEL_Register;
      --  Channel Configuration Register
      CH7_CFG     : aliased CH7_CFG_Register;
      --  Channel Loop Counter Register
      CH7_LOOP    : aliased CH7_LOOP_Register;
      --  Channel Descriptor Control Word Register
      CH7_CTRL    : aliased CH7_CTRL_Register;
      --  Channel Descriptor Source Data Address Register
      CH7_SRC     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Destination Data Address Register
      CH7_DST     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Link Structure Address Register
      CH7_LINK    : aliased CH7_LINK_Register;
      --  Channel Peripheral Request Select Register
      CH8_REQSEL  : aliased CH8_REQSEL_Register;
      --  Channel Configuration Register
      CH8_CFG     : aliased CH8_CFG_Register;
      --  Channel Loop Counter Register
      CH8_LOOP    : aliased CH8_LOOP_Register;
      --  Channel Descriptor Control Word Register
      CH8_CTRL    : aliased CH8_CTRL_Register;
      --  Channel Descriptor Source Data Address Register
      CH8_SRC     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Destination Data Address Register
      CH8_DST     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Link Structure Address Register
      CH8_LINK    : aliased CH8_LINK_Register;
      --  Channel Peripheral Request Select Register
      CH9_REQSEL  : aliased CH9_REQSEL_Register;
      --  Channel Configuration Register
      CH9_CFG     : aliased CH9_CFG_Register;
      --  Channel Loop Counter Register
      CH9_LOOP    : aliased CH9_LOOP_Register;
      --  Channel Descriptor Control Word Register
      CH9_CTRL    : aliased CH9_CTRL_Register;
      --  Channel Descriptor Source Data Address Register
      CH9_SRC     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Destination Data Address Register
      CH9_DST     : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Link Structure Address Register
      CH9_LINK    : aliased CH9_LINK_Register;
      --  Channel Peripheral Request Select Register
      CH10_REQSEL : aliased CH10_REQSEL_Register;
      --  Channel Configuration Register
      CH10_CFG    : aliased CH10_CFG_Register;
      --  Channel Loop Counter Register
      CH10_LOOP   : aliased CH10_LOOP_Register;
      --  Channel Descriptor Control Word Register
      CH10_CTRL   : aliased CH10_CTRL_Register;
      --  Channel Descriptor Source Data Address Register
      CH10_SRC    : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Destination Data Address Register
      CH10_DST    : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Link Structure Address Register
      CH10_LINK   : aliased CH10_LINK_Register;
      --  Channel Peripheral Request Select Register
      CH11_REQSEL : aliased CH11_REQSEL_Register;
      --  Channel Configuration Register
      CH11_CFG    : aliased CH11_CFG_Register;
      --  Channel Loop Counter Register
      CH11_LOOP   : aliased CH11_LOOP_Register;
      --  Channel Descriptor Control Word Register
      CH11_CTRL   : aliased CH11_CTRL_Register;
      --  Channel Descriptor Source Data Address Register
      CH11_SRC    : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Destination Data Address Register
      CH11_DST    : aliased Interfaces.EFM32.UInt32;
      --  Channel Descriptor Link Structure Address Register
      CH11_LINK   : aliased CH11_LINK_Register;
   end record
     with Volatile;

   for LDMA_Peripheral use record
      CTRL        at 16#0# range 0 .. 31;
      STATUS      at 16#4# range 0 .. 31;
      SYNC        at 16#8# range 0 .. 31;
      CHEN        at 16#20# range 0 .. 31;
      CHBUSY      at 16#24# range 0 .. 31;
      CHDONE      at 16#28# range 0 .. 31;
      DBGHALT     at 16#2C# range 0 .. 31;
      SWREQ       at 16#30# range 0 .. 31;
      REQDIS      at 16#34# range 0 .. 31;
      REQPEND     at 16#38# range 0 .. 31;
      LINKLOAD    at 16#3C# range 0 .. 31;
      REQCLEAR    at 16#40# range 0 .. 31;
      IF_k        at 16#60# range 0 .. 31;
      IFS         at 16#64# range 0 .. 31;
      IFC         at 16#68# range 0 .. 31;
      IEN         at 16#6C# range 0 .. 31;
      CH0_REQSEL  at 16#80# range 0 .. 31;
      CH0_CFG     at 16#84# range 0 .. 31;
      CH0_LOOP    at 16#88# range 0 .. 31;
      CH0_CTRL    at 16#8C# range 0 .. 31;
      CH0_SRC     at 16#90# range 0 .. 31;
      CH0_DST     at 16#94# range 0 .. 31;
      CH0_LINK    at 16#98# range 0 .. 31;
      CH1_REQSEL  at 16#B0# range 0 .. 31;
      CH1_CFG     at 16#B4# range 0 .. 31;
      CH1_LOOP    at 16#B8# range 0 .. 31;
      CH1_CTRL    at 16#BC# range 0 .. 31;
      CH1_SRC     at 16#C0# range 0 .. 31;
      CH1_DST     at 16#C4# range 0 .. 31;
      CH1_LINK    at 16#C8# range 0 .. 31;
      CH2_REQSEL  at 16#E0# range 0 .. 31;
      CH2_CFG     at 16#E4# range 0 .. 31;
      CH2_LOOP    at 16#E8# range 0 .. 31;
      CH2_CTRL    at 16#EC# range 0 .. 31;
      CH2_SRC     at 16#F0# range 0 .. 31;
      CH2_DST     at 16#F4# range 0 .. 31;
      CH2_LINK    at 16#F8# range 0 .. 31;
      CH3_REQSEL  at 16#110# range 0 .. 31;
      CH3_CFG     at 16#114# range 0 .. 31;
      CH3_LOOP    at 16#118# range 0 .. 31;
      CH3_CTRL    at 16#11C# range 0 .. 31;
      CH3_SRC     at 16#120# range 0 .. 31;
      CH3_DST     at 16#124# range 0 .. 31;
      CH3_LINK    at 16#128# range 0 .. 31;
      CH4_REQSEL  at 16#140# range 0 .. 31;
      CH4_CFG     at 16#144# range 0 .. 31;
      CH4_LOOP    at 16#148# range 0 .. 31;
      CH4_CTRL    at 16#14C# range 0 .. 31;
      CH4_SRC     at 16#150# range 0 .. 31;
      CH4_DST     at 16#154# range 0 .. 31;
      CH4_LINK    at 16#158# range 0 .. 31;
      CH5_REQSEL  at 16#170# range 0 .. 31;
      CH5_CFG     at 16#174# range 0 .. 31;
      CH5_LOOP    at 16#178# range 0 .. 31;
      CH5_CTRL    at 16#17C# range 0 .. 31;
      CH5_SRC     at 16#180# range 0 .. 31;
      CH5_DST     at 16#184# range 0 .. 31;
      CH5_LINK    at 16#188# range 0 .. 31;
      CH6_REQSEL  at 16#1A0# range 0 .. 31;
      CH6_CFG     at 16#1A4# range 0 .. 31;
      CH6_LOOP    at 16#1A8# range 0 .. 31;
      CH6_CTRL    at 16#1AC# range 0 .. 31;
      CH6_SRC     at 16#1B0# range 0 .. 31;
      CH6_DST     at 16#1B4# range 0 .. 31;
      CH6_LINK    at 16#1B8# range 0 .. 31;
      CH7_REQSEL  at 16#1D0# range 0 .. 31;
      CH7_CFG     at 16#1D4# range 0 .. 31;
      CH7_LOOP    at 16#1D8# range 0 .. 31;
      CH7_CTRL    at 16#1DC# range 0 .. 31;
      CH7_SRC     at 16#1E0# range 0 .. 31;
      CH7_DST     at 16#1E4# range 0 .. 31;
      CH7_LINK    at 16#1E8# range 0 .. 31;
      CH8_REQSEL  at 16#200# range 0 .. 31;
      CH8_CFG     at 16#204# range 0 .. 31;
      CH8_LOOP    at 16#208# range 0 .. 31;
      CH8_CTRL    at 16#20C# range 0 .. 31;
      CH8_SRC     at 16#210# range 0 .. 31;
      CH8_DST     at 16#214# range 0 .. 31;
      CH8_LINK    at 16#218# range 0 .. 31;
      CH9_REQSEL  at 16#230# range 0 .. 31;
      CH9_CFG     at 16#234# range 0 .. 31;
      CH9_LOOP    at 16#238# range 0 .. 31;
      CH9_CTRL    at 16#23C# range 0 .. 31;
      CH9_SRC     at 16#240# range 0 .. 31;
      CH9_DST     at 16#244# range 0 .. 31;
      CH9_LINK    at 16#248# range 0 .. 31;
      CH10_REQSEL at 16#260# range 0 .. 31;
      CH10_CFG    at 16#264# range 0 .. 31;
      CH10_LOOP   at 16#268# range 0 .. 31;
      CH10_CTRL   at 16#26C# range 0 .. 31;
      CH10_SRC    at 16#270# range 0 .. 31;
      CH10_DST    at 16#274# range 0 .. 31;
      CH10_LINK   at 16#278# range 0 .. 31;
      CH11_REQSEL at 16#290# range 0 .. 31;
      CH11_CFG    at 16#294# range 0 .. 31;
      CH11_LOOP   at 16#298# range 0 .. 31;
      CH11_CTRL   at 16#29C# range 0 .. 31;
      CH11_SRC    at 16#2A0# range 0 .. 31;
      CH11_DST    at 16#2A4# range 0 .. 31;
      CH11_LINK   at 16#2A8# range 0 .. 31;
   end record;

   --  LDMA
   LDMA_Periph : aliased LDMA_Peripheral
     with Import, Address => LDMA_Base;

end Interfaces.EFM32.LDMA;
