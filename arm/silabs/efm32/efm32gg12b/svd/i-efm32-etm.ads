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

--  ETM
package Interfaces.EFM32.ETM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype ETMCR_POWERDWN_Field is Interfaces.EFM32.Bit;
   subtype ETMCR_PORTSIZE_Field is Interfaces.EFM32.UInt3;
   subtype ETMCR_STALL_Field is Interfaces.EFM32.Bit;
   subtype ETMCR_BRANCHOUTPUT_Field is Interfaces.EFM32.Bit;
   subtype ETMCR_DBGREQCTRL_Field is Interfaces.EFM32.Bit;
   subtype ETMCR_ETMPROG_Field is Interfaces.EFM32.Bit;
   subtype ETMCR_ETMPORTSEL_Field is Interfaces.EFM32.Bit;
   subtype ETMCR_PORTMODE2_Field is Interfaces.EFM32.Bit;
   subtype ETMCR_PORTMODE_Field is Interfaces.EFM32.UInt2;
   subtype ETMCR_EPORTSIZE_Field is Interfaces.EFM32.UInt2;
   subtype ETMCR_TSTAMPEN_Field is Interfaces.EFM32.Bit;

   --  Main Control Register
   type ETMCR_Register is record
      --  ETM Control in low power mode
      POWERDWN       : ETMCR_POWERDWN_Field := 16#1#;
      --  unspecified
      Reserved_1_3   : Interfaces.EFM32.UInt3 := 16#0#;
      --  ETM Port Size
      PORTSIZE       : ETMCR_PORTSIZE_Field := 16#1#;
      --  Stall Processor
      STALL          : ETMCR_STALL_Field := 16#0#;
      --  Branch Output
      BRANCHOUTPUT   : ETMCR_BRANCHOUTPUT_Field := 16#0#;
      --  Debug Request Control
      DBGREQCTRL     : ETMCR_DBGREQCTRL_Field := 16#0#;
      --  ETM Programming
      ETMPROG        : ETMCR_ETMPROG_Field := 16#1#;
      --  ETM Port Selection
      ETMPORTSEL     : ETMCR_ETMPORTSEL_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.EFM32.Bit := 16#0#;
      --  Port Mode[2]
      PORTMODE2      : ETMCR_PORTMODE2_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Port Mode Control
      PORTMODE       : ETMCR_PORTMODE_Field := 16#0#;
      --  unspecified
      Reserved_18_20 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Port Size[3]
      EPORTSIZE      : ETMCR_EPORTSIZE_Field := 16#0#;
      --  unspecified
      Reserved_23_27 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Time Stamp Enable
      TSTAMPEN       : ETMCR_TSTAMPEN_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMCR_Register use record
      POWERDWN       at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      PORTSIZE       at 0 range 4 .. 6;
      STALL          at 0 range 7 .. 7;
      BRANCHOUTPUT   at 0 range 8 .. 8;
      DBGREQCTRL     at 0 range 9 .. 9;
      ETMPROG        at 0 range 10 .. 10;
      ETMPORTSEL     at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      PORTMODE2      at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PORTMODE       at 0 range 16 .. 17;
      Reserved_18_20 at 0 range 18 .. 20;
      EPORTSIZE      at 0 range 21 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      TSTAMPEN       at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype ETMCCR_ADRCMPPAIR_Field is Interfaces.EFM32.UInt4;
   subtype ETMCCR_DATACMPNUM_Field is Interfaces.EFM32.UInt4;
   subtype ETMCCR_MMDECCNT_Field is Interfaces.EFM32.UInt5;
   subtype ETMCCR_COUNTNUM_Field is Interfaces.EFM32.UInt3;
   subtype ETMCCR_SEQPRES_Field is Interfaces.EFM32.Bit;

   --  Number of External Inputs
   type ETMCCR_EXTINPNUM_Field is
     (--  Zero inputs presents
      ZERO,
      --  One inputs presents
      ONE,
      --  Two inputs presents
      TWO)
     with Size => 3;
   for ETMCCR_EXTINPNUM_Field use
     (ZERO => 0,
      ONE => 1,
      TWO => 2);

   subtype ETMCCR_EXTOUTNUM_Field is Interfaces.EFM32.UInt3;
   subtype ETMCCR_FIFOFULLPRES_Field is Interfaces.EFM32.Bit;
   subtype ETMCCR_IDCOMPNUM_Field is Interfaces.EFM32.UInt2;
   subtype ETMCCR_TRACESS_Field is Interfaces.EFM32.Bit;
   subtype ETMCCR_MMACCESS_Field is Interfaces.EFM32.Bit;
   subtype ETMCCR_ETMID_Field is Interfaces.EFM32.Bit;

   --  Configuration Code Register
   type ETMCCR_Register is record
      --  Read-only. Number of Address Comparator Pairs
      ADRCMPPAIR     : ETMCCR_ADRCMPPAIR_Field;
      --  Read-only. Number of Data Value Comparators
      DATACMPNUM     : ETMCCR_DATACMPNUM_Field;
      --  Read-only. Number of Memeory Map Decoders
      MMDECCNT       : ETMCCR_MMDECCNT_Field;
      --  Read-only. Number of Counters
      COUNTNUM       : ETMCCR_COUNTNUM_Field;
      --  Read-only. Sequencer Present
      SEQPRES        : ETMCCR_SEQPRES_Field;
      --  Read-only. Number of External Inputs
      EXTINPNUM      : ETMCCR_EXTINPNUM_Field;
      --  Read-only. Number of External Output
      EXTOUTNUM      : ETMCCR_EXTOUTNUM_Field;
      --  Read-only. FIFIO FULL present
      FIFOFULLPRES   : ETMCCR_FIFOFULLPRES_Field;
      --  Read-only. Number of context ID Comparators
      IDCOMPNUM      : ETMCCR_IDCOMPNUM_Field;
      --  Read-only. Trace Start/Stop Block Present
      TRACESS        : ETMCCR_TRACESS_Field;
      --  Read-only. Coprocessor and Memeory Access
      MMACCESS       : ETMCCR_MMACCESS_Field;
      --  unspecified
      Reserved_28_30 : Interfaces.EFM32.UInt3;
      --  Read-only. ETM ID Register Present
      ETMID          : ETMCCR_ETMID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMCCR_Register use record
      ADRCMPPAIR     at 0 range 0 .. 3;
      DATACMPNUM     at 0 range 4 .. 7;
      MMDECCNT       at 0 range 8 .. 12;
      COUNTNUM       at 0 range 13 .. 15;
      SEQPRES        at 0 range 16 .. 16;
      EXTINPNUM      at 0 range 17 .. 19;
      EXTOUTNUM      at 0 range 20 .. 22;
      FIFOFULLPRES   at 0 range 23 .. 23;
      IDCOMPNUM      at 0 range 24 .. 25;
      TRACESS        at 0 range 26 .. 26;
      MMACCESS       at 0 range 27 .. 27;
      Reserved_28_30 at 0 range 28 .. 30;
      ETMID          at 0 range 31 .. 31;
   end record;

   subtype ETMTRIGGER_RESA_Field is Interfaces.EFM32.UInt7;
   subtype ETMTRIGGER_RESB_Field is Interfaces.EFM32.UInt7;
   subtype ETMTRIGGER_ETMFCN_Field is Interfaces.EFM32.UInt3;

   --  ETM Trigger Event Register
   type ETMTRIGGER_Register is record
      --  ETM Resource A
      RESA           : ETMTRIGGER_RESA_Field := 16#0#;
      --  ETM Resource B
      RESB           : ETMTRIGGER_RESB_Field := 16#0#;
      --  ETM Function
      ETMFCN         : ETMTRIGGER_ETMFCN_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMTRIGGER_Register use record
      RESA           at 0 range 0 .. 6;
      RESB           at 0 range 7 .. 13;
      ETMFCN         at 0 range 14 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype ETMSR_ETHOF_Field is Interfaces.EFM32.Bit;
   subtype ETMSR_ETMPROGBIT_Field is Interfaces.EFM32.Bit;
   subtype ETMSR_TRACESTAT_Field is Interfaces.EFM32.Bit;
   subtype ETMSR_TRIGBIT_Field is Interfaces.EFM32.Bit;

   --  ETM Status Register
   type ETMSR_Register is record
      --  Read-only. ETM Overflow
      ETHOF         : ETMSR_ETHOF_Field := 16#0#;
      --  Read-only. ETM Programming Bit Status
      ETMPROGBIT    : ETMSR_ETMPROGBIT_Field := 16#1#;
      --  Trace Start/Stop Status
      TRACESTAT     : ETMSR_TRACESTAT_Field := 16#0#;
      --  Trigger Bit
      TRIGBIT       : ETMSR_TRIGBIT_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMSR_Register use record
      ETHOF         at 0 range 0 .. 0;
      ETMPROGBIT    at 0 range 1 .. 1;
      TRACESTAT     at 0 range 2 .. 2;
      TRIGBIT       at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype ETMSCR_MAXPORTSIZE_Field is Interfaces.EFM32.UInt3;
   subtype ETMSCR_FIFOFULL_Field is Interfaces.EFM32.Bit;
   subtype ETMSCR_MAXPORTSIZE3_Field is Interfaces.EFM32.Bit;
   subtype ETMSCR_PORTSIZE_Field is Interfaces.EFM32.Bit;
   subtype ETMSCR_PORTMODE_Field is Interfaces.EFM32.Bit;
   subtype ETMSCR_PROCNUM_Field is Interfaces.EFM32.UInt3;
   subtype ETMSCR_NOFETCHCOMP_Field is Interfaces.EFM32.Bit;

   --  ETM System Configuration Register
   type ETMSCR_Register is record
      --  Read-only. Maximum Port Size
      MAXPORTSIZE    : ETMSCR_MAXPORTSIZE_Field;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5;
      --  Read-only. FIFO FULL Supported
      FIFOFULL       : ETMSCR_FIFOFULL_Field;
      --  Read-only. Max Port Size[3]
      MAXPORTSIZE3   : ETMSCR_MAXPORTSIZE3_Field;
      --  Read-only. Port Size Supported
      PORTSIZE       : ETMSCR_PORTSIZE_Field;
      --  Read-only. Port Mode Supported
      PORTMODE       : ETMSCR_PORTMODE_Field;
      --  Read-only. Number of Supported Processros
      PROCNUM        : ETMSCR_PROCNUM_Field;
      --  unspecified
      Reserved_15_16 : Interfaces.EFM32.UInt2;
      --  Read-only. No Fetch Comparison
      NOFETCHCOMP    : ETMSCR_NOFETCHCOMP_Field;
      --  unspecified
      Reserved_18_31 : Interfaces.EFM32.UInt14;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMSCR_Register use record
      MAXPORTSIZE    at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      FIFOFULL       at 0 range 8 .. 8;
      MAXPORTSIZE3   at 0 range 9 .. 9;
      PORTSIZE       at 0 range 10 .. 10;
      PORTMODE       at 0 range 11 .. 11;
      PROCNUM        at 0 range 12 .. 14;
      Reserved_15_16 at 0 range 15 .. 16;
      NOFETCHCOMP    at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype ETMTEEVR_RESA_Field is Interfaces.EFM32.UInt7;
   subtype ETMTEEVR_RESB_Field is Interfaces.EFM32.UInt7;
   subtype ETMTEEVR_ETMFCNEN_Field is Interfaces.EFM32.UInt3;

   --  ETM TraceEnable Event Register
   type ETMTEEVR_Register is record
      --  ETM Resource A Trace Enable
      RESA           : ETMTEEVR_RESA_Field := 16#0#;
      --  ETM Resource B Trace Enable
      RESB           : ETMTEEVR_RESB_Field := 16#0#;
      --  ETM Function Trace Enable
      ETMFCNEN       : ETMTEEVR_ETMFCNEN_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMTEEVR_Register use record
      RESA           at 0 range 0 .. 6;
      RESB           at 0 range 7 .. 13;
      ETMFCNEN       at 0 range 14 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype ETMTECR1_ADRCMP_Field is Interfaces.EFM32.Byte;
   subtype ETMTECR1_MEMMAP_Field is Interfaces.EFM32.UInt16;
   subtype ETMTECR1_INCEXCTL_Field is Interfaces.EFM32.Bit;
   subtype ETMTECR1_TCE_Field is Interfaces.EFM32.Bit;

   --  ETM Trace control Register
   type ETMTECR1_Register is record
      --  Address Comparator
      ADRCMP         : ETMTECR1_ADRCMP_Field := 16#0#;
      --  Memmap
      MEMMAP         : ETMTECR1_MEMMAP_Field := 16#0#;
      --  Trace Include/Exclude Flag
      INCEXCTL       : ETMTECR1_INCEXCTL_Field := 16#0#;
      --  Trace Control Enable
      TCE            : ETMTECR1_TCE_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.EFM32.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMTECR1_Register use record
      ADRCMP         at 0 range 0 .. 7;
      MEMMAP         at 0 range 8 .. 23;
      INCEXCTL       at 0 range 24 .. 24;
      TCE            at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype ETMFFLR_BYTENUM_Field is Interfaces.EFM32.Byte;

   --  ETM Fifo Full Level Register
   type ETMFFLR_Register is record
      --  Bytes left in FIFO
      BYTENUM       : ETMFFLR_BYTENUM_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMFFLR_Register use record
      BYTENUM       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETMCNTRLDVR1_COUNT_Field is Interfaces.EFM32.UInt16;

   --  Counter Reload Value
   type ETMCNTRLDVR1_Register is record
      --  Free running counter reload value
      COUNT          : ETMCNTRLDVR1_COUNT_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMCNTRLDVR1_Register use record
      COUNT          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ETMSYNCFR_FREQ_Field is Interfaces.EFM32.UInt12;

   --  Synchronisation Frequency Register
   type ETMSYNCFR_Register is record
      --  Synchronisation Frequency Value
      FREQ           : ETMSYNCFR_FREQ_Field := 16#400#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMSYNCFR_Register use record
      FREQ           at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ETMIDR_IMPVER_Field is Interfaces.EFM32.UInt4;
   subtype ETMIDR_ETMMINVER_Field is Interfaces.EFM32.UInt4;
   subtype ETMIDR_ETMMAJVER_Field is Interfaces.EFM32.UInt4;
   subtype ETMIDR_PROCFAM_Field is Interfaces.EFM32.UInt4;
   subtype ETMIDR_LPCF_Field is Interfaces.EFM32.Bit;
   subtype ETMIDR_THUMBT_Field is Interfaces.EFM32.Bit;
   subtype ETMIDR_SECEXT_Field is Interfaces.EFM32.Bit;
   subtype ETMIDR_BPE_Field is Interfaces.EFM32.Bit;
   subtype ETMIDR_IMPCODE_Field is Interfaces.EFM32.Byte;

   --  ID Register
   type ETMIDR_Register is record
      --  Read-only. Implementation Revision
      IMPVER         : ETMIDR_IMPVER_Field;
      --  Read-only. Minor ETM Architecture Version
      ETMMINVER      : ETMIDR_ETMMINVER_Field;
      --  Read-only. Major ETM Architecture Version
      ETMMAJVER      : ETMIDR_ETMMAJVER_Field;
      --  Read-only. Implementer Code
      PROCFAM        : ETMIDR_PROCFAM_Field;
      --  Read-only. Load PC First
      LPCF           : ETMIDR_LPCF_Field;
      --  unspecified
      Reserved_17_17 : Interfaces.EFM32.Bit;
      --  Read-only. 32-bit Thumb Instruction Tracing
      THUMBT         : ETMIDR_THUMBT_Field;
      --  Read-only. Security Extension Support
      SECEXT         : ETMIDR_SECEXT_Field;
      --  Read-only. Branch Packet Encoding
      BPE            : ETMIDR_BPE_Field;
      --  unspecified
      Reserved_21_23 : Interfaces.EFM32.UInt3;
      --  Read-only. Implementer Code
      IMPCODE        : ETMIDR_IMPCODE_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMIDR_Register use record
      IMPVER         at 0 range 0 .. 3;
      ETMMINVER      at 0 range 4 .. 7;
      ETMMAJVER      at 0 range 8 .. 11;
      PROCFAM        at 0 range 12 .. 15;
      LPCF           at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      THUMBT         at 0 range 18 .. 18;
      SECEXT         at 0 range 19 .. 19;
      BPE            at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      IMPCODE        at 0 range 24 .. 31;
   end record;

   subtype ETMCCER_EXTINPSEL_Field is Interfaces.EFM32.UInt2;
   subtype ETMCCER_EXTINPBUS_Field is Interfaces.EFM32.Byte;
   subtype ETMCCER_READREGS_Field is Interfaces.EFM32.Bit;
   subtype ETMCCER_DADDRCMP_Field is Interfaces.EFM32.Bit;
   subtype ETMCCER_INSTRES_Field is Interfaces.EFM32.UInt3;
   subtype ETMCCER_EICEWPNT_Field is Interfaces.EFM32.UInt4;
   subtype ETMCCER_TEICEWPNT_Field is Interfaces.EFM32.Bit;
   subtype ETMCCER_EICEIMP_Field is Interfaces.EFM32.Bit;
   subtype ETMCCER_TIMP_Field is Interfaces.EFM32.Bit;
   subtype ETMCCER_RFCNT_Field is Interfaces.EFM32.Bit;
   subtype ETMCCER_TENC_Field is Interfaces.EFM32.Bit;
   subtype ETMCCER_TSIZE_Field is Interfaces.EFM32.Bit;

   --  Configuration Code Extension Register
   type ETMCCER_Register is record
      --  Read-only. Extended External Input Selectors
      EXTINPSEL      : ETMCCER_EXTINPSEL_Field;
      --  unspecified
      Reserved_2_2   : Interfaces.EFM32.Bit;
      --  Read-only. Extended External Input Bus
      EXTINPBUS      : ETMCCER_EXTINPBUS_Field;
      --  Read-only. Readable Registers
      READREGS       : ETMCCER_READREGS_Field;
      --  Read-only. Data Address comparisons
      DADDRCMP       : ETMCCER_DADDRCMP_Field;
      --  Read-only. Instrumentation Resources
      INSTRES        : ETMCCER_INSTRES_Field;
      --  Read-only. EmbeddedICE watchpoint inputs
      EICEWPNT       : ETMCCER_EICEWPNT_Field;
      --  Read-only. Trace Sart/Stop Block Uses EmbeddedICE watchpoint inputs
      TEICEWPNT      : ETMCCER_TEICEWPNT_Field;
      --  Read-only. EmbeddedICE Behavior control Implemented
      EICEIMP        : ETMCCER_EICEIMP_Field;
      --  Read-only. Timestamping Implemented
      TIMP           : ETMCCER_TIMP_Field;
      --  unspecified
      Reserved_23_26 : Interfaces.EFM32.UInt4;
      --  Read-only. Reduced Function Counter
      RFCNT          : ETMCCER_RFCNT_Field;
      --  Read-only. Timestamp Encoding
      TENC           : ETMCCER_TENC_Field;
      --  Read-only. Timestamp Size
      TSIZE          : ETMCCER_TSIZE_Field;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMCCER_Register use record
      EXTINPSEL      at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      EXTINPBUS      at 0 range 3 .. 10;
      READREGS       at 0 range 11 .. 11;
      DADDRCMP       at 0 range 12 .. 12;
      INSTRES        at 0 range 13 .. 15;
      EICEWPNT       at 0 range 16 .. 19;
      TEICEWPNT      at 0 range 20 .. 20;
      EICEIMP        at 0 range 21 .. 21;
      TIMP           at 0 range 22 .. 22;
      Reserved_23_26 at 0 range 23 .. 26;
      RFCNT          at 0 range 27 .. 27;
      TENC           at 0 range 28 .. 28;
      TSIZE          at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype ETMTESSEICR_STARTRSEL_Field is Interfaces.EFM32.UInt4;
   subtype ETMTESSEICR_STOPRSEL_Field is Interfaces.EFM32.UInt4;

   --  TraceEnable Start/Stop EmbeddedICE Control Register
   type ETMTESSEICR_Register is record
      --  Stop Resource Selection
      STARTRSEL      : ETMTESSEICR_STARTRSEL_Field := 16#0#;
      --  unspecified
      Reserved_4_15  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Stop Resource Selection
      STOPRSEL       : ETMTESSEICR_STOPRSEL_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMTESSEICR_Register use record
      STARTRSEL      at 0 range 0 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      STOPRSEL       at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype ETMTSEVR_RESAEVT_Field is Interfaces.EFM32.UInt7;
   subtype ETMTSEVR_RESBEVT_Field is Interfaces.EFM32.UInt7;
   subtype ETMTSEVR_ETMFCNEVT_Field is Interfaces.EFM32.UInt3;

   --  Timestamp Event Register
   type ETMTSEVR_Register is record
      --  ETM Resource A Event
      RESAEVT        : ETMTSEVR_RESAEVT_Field := 16#0#;
      --  ETM Resource B Event
      RESBEVT        : ETMTSEVR_RESBEVT_Field := 16#0#;
      --  ETM Function Event
      ETMFCNEVT      : ETMTSEVR_ETMFCNEVT_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMTSEVR_Register use record
      RESAEVT        at 0 range 0 .. 6;
      RESBEVT        at 0 range 7 .. 13;
      ETMFCNEVT      at 0 range 14 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype ETMTRACEIDR_TRACEID_Field is Interfaces.EFM32.UInt7;

   --  CoreSight Trace ID Register
   type ETMTRACEIDR_Register is record
      --  Trace ID
      TRACEID       : ETMTRACEIDR_TRACEID_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.EFM32.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMTRACEIDR_Register use record
      TRACEID       at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype ETMIDR2_RFE_Field is Interfaces.EFM32.Bit;
   subtype ETMIDR2_SWP_Field is Interfaces.EFM32.Bit;

   --  ETM ID Register 2
   type ETMIDR2_Register is record
      --  Read-only. RFE Transfer Order
      RFE           : ETMIDR2_RFE_Field;
      --  Read-only. SWP Transfer Order
      SWP           : ETMIDR2_SWP_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMIDR2_Register use record
      RFE           at 0 range 0 .. 0;
      SWP           at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype ETMPDSR_ETMUP_Field is Interfaces.EFM32.Bit;

   --  Device Power-down Status Register
   type ETMPDSR_Register is record
      --  Read-only. ETM Powered Up
      ETMUP         : ETMPDSR_ETMUP_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMPDSR_Register use record
      ETMUP         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ETMISCIN_EXTIN_Field is Interfaces.EFM32.UInt2;
   subtype ETMISCIN_COREHALT_Field is Interfaces.EFM32.Bit;

   --  Integration Test Miscellaneous Inputs Register
   type ETMISCIN_Register is record
      --  EXTIN Value
      EXTIN         : ETMISCIN_EXTIN_Field := 16#0#;
      --  unspecified
      Reserved_2_3  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Core Halt
      COREHALT      : ETMISCIN_COREHALT_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMISCIN_Register use record
      EXTIN         at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      COREHALT      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype ITTRIGOUT_TRIGGEROUT_Field is Interfaces.EFM32.Bit;

   --  Integration Test Trigger Out Register
   type ITTRIGOUT_Register is record
      --  Trigger output value
      TRIGGEROUT    : ITTRIGOUT_TRIGGEROUT_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ITTRIGOUT_Register use record
      TRIGGEROUT    at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ETMITATBCTR2_ATREADY_Field is Interfaces.EFM32.Bit;

   --  ETM Integration Test ATB Control 2 Register
   type ETMITATBCTR2_Register is record
      --  Read-only. ATREADY Input Value
      ATREADY       : ETMITATBCTR2_ATREADY_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMITATBCTR2_Register use record
      ATREADY       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ETMITATBCTR0_ATVALID_Field is Interfaces.EFM32.Bit;

   --  ETM Integration Test ATB Control 0 Register
   type ETMITATBCTR0_Register is record
      --  ATVALID Output Value
      ATVALID       : ETMITATBCTR0_ATVALID_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMITATBCTR0_Register use record
      ATVALID       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ETMITCTRL_ITEN_Field is Interfaces.EFM32.Bit;

   --  ETM Integration Control Register
   type ETMITCTRL_Register is record
      --  Integration Mode Enable
      ITEN          : ETMITCTRL_ITEN_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMITCTRL_Register use record
      ITEN          at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ETMCLAIMSET_SETTAG_Field is Interfaces.EFM32.Byte;

   --  ETM Claim Tag Set Register
   type ETMCLAIMSET_Register is record
      --  Tag Bits
      SETTAG        : ETMCLAIMSET_SETTAG_Field := 16#F#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMCLAIMSET_Register use record
      SETTAG        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETMCLAIMCLR_CLRTAG_Field is Interfaces.EFM32.Bit;

   --  ETM Claim Tag Clear Register
   type ETMCLAIMCLR_Register is record
      --  Tag Bits
      CLRTAG        : ETMCLAIMCLR_CLRTAG_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMCLAIMCLR_Register use record
      CLRTAG        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ETMLAR_KEY_Field is Interfaces.EFM32.Bit;

   --  ETM Lock Access Register
   type ETMLAR_Register is record
      --  Key Value
      KEY           : ETMLAR_KEY_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMLAR_Register use record
      KEY           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype ETMLSR_LOCKIMP_Field is Interfaces.EFM32.Bit;
   subtype ETMLSR_LOCKED_Field is Interfaces.EFM32.Bit;

   --  Lock Status Register
   type ETMLSR_Register is record
      --  Read-only. ETM Locking Implemented
      LOCKIMP       : ETMLSR_LOCKIMP_Field;
      --  Read-only. ETM locked
      LOCKED        : ETMLSR_LOCKED_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMLSR_Register use record
      LOCKIMP       at 0 range 0 .. 0;
      LOCKED        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype ETMAUTHSTATUS_NONSECINVDBG_Field is Interfaces.EFM32.UInt2;

   --  Non-secure non-invasive Debug Status
   type ETMAUTHSTATUS_NONSECNONINVDBG_Field is
     (--  Non-secure non-invasive debug disable
      DISABLE,
      --  Non-secure non-invasive debug enable
      ENABLE)
     with Size => 2;
   for ETMAUTHSTATUS_NONSECNONINVDBG_Field use
     (DISABLE => 2,
      ENABLE => 3);

   subtype ETMAUTHSTATUS_SECINVDBG_Field is Interfaces.EFM32.UInt2;
   subtype ETMAUTHSTATUS_SECNONINVDBG_Field is Interfaces.EFM32.UInt2;

   --  ETM Authentication Status Register
   type ETMAUTHSTATUS_Register is record
      --  Read-only. Non-secure invasive Debug Status
      NONSECINVDBG    : ETMAUTHSTATUS_NONSECINVDBG_Field;
      --  Read-only. Non-secure non-invasive Debug Status
      NONSECNONINVDBG : ETMAUTHSTATUS_NONSECNONINVDBG_Field;
      --  Read-only. Secure invasive Debug Status
      SECINVDBG       : ETMAUTHSTATUS_SECINVDBG_Field;
      --  Read-only. Secure non-invasive Debug Status
      SECNONINVDBG    : ETMAUTHSTATUS_SECNONINVDBG_Field;
      --  unspecified
      Reserved_8_31   : Interfaces.EFM32.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMAUTHSTATUS_Register use record
      NONSECINVDBG    at 0 range 0 .. 1;
      NONSECNONINVDBG at 0 range 2 .. 3;
      SECINVDBG       at 0 range 4 .. 5;
      SECNONINVDBG    at 0 range 6 .. 7;
      Reserved_8_31   at 0 range 8 .. 31;
   end record;

   subtype ETMDEVTYPE_TRACESRC_Field is Interfaces.EFM32.UInt4;
   subtype ETMDEVTYPE_PROCTRACE_Field is Interfaces.EFM32.UInt4;

   --  CoreSight Device Type Register
   type ETMDEVTYPE_Register is record
      --  Read-only. Trace Source
      TRACESRC      : ETMDEVTYPE_TRACESRC_Field;
      --  Read-only. Processor Trace
      PROCTRACE     : ETMDEVTYPE_PROCTRACE_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMDEVTYPE_Register use record
      TRACESRC      at 0 range 0 .. 3;
      PROCTRACE     at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETMPIDR4_CONTCODE_Field is Interfaces.EFM32.UInt4;
   subtype ETMPIDR4_COUNT_Field is Interfaces.EFM32.UInt4;

   --  Peripheral ID4 Register
   type ETMPIDR4_Register is record
      --  Read-only. JEP106 Continuation Code
      CONTCODE      : ETMPIDR4_CONTCODE_Field;
      --  Read-only. 4KB Count
      COUNT         : ETMPIDR4_COUNT_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMPIDR4_Register use record
      CONTCODE      at 0 range 0 .. 3;
      COUNT         at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETMPIDR0_PARTNUM_Field is Interfaces.EFM32.Byte;

   --  Peripheral ID0 Register
   type ETMPIDR0_Register is record
      --  Read-only. Part Number
      PARTNUM       : ETMPIDR0_PARTNUM_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMPIDR0_Register use record
      PARTNUM       at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETMPIDR1_PARTNUM_Field is Interfaces.EFM32.UInt4;
   subtype ETMPIDR1_IDCODE_Field is Interfaces.EFM32.UInt4;

   --  Peripheral ID1 Register
   type ETMPIDR1_Register is record
      --  Read-only. Part Number
      PARTNUM       : ETMPIDR1_PARTNUM_Field;
      --  Read-only. JEP106 Identity Code
      IDCODE        : ETMPIDR1_IDCODE_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMPIDR1_Register use record
      PARTNUM       at 0 range 0 .. 3;
      IDCODE        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETMPIDR2_IDCODE_Field is Interfaces.EFM32.UInt3;
   subtype ETMPIDR2_ALWAYS1_Field is Interfaces.EFM32.Bit;
   subtype ETMPIDR2_REV_Field is Interfaces.EFM32.UInt4;

   --  Peripheral ID2 Register
   type ETMPIDR2_Register is record
      --  Read-only. JEP106 Identity Code
      IDCODE        : ETMPIDR2_IDCODE_Field;
      --  Read-only. Always 1
      ALWAYS1       : ETMPIDR2_ALWAYS1_Field;
      --  Read-only. Revision
      REV           : ETMPIDR2_REV_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMPIDR2_Register use record
      IDCODE        at 0 range 0 .. 2;
      ALWAYS1       at 0 range 3 .. 3;
      REV           at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETMPIDR3_CUSTMOD_Field is Interfaces.EFM32.UInt4;
   subtype ETMPIDR3_REVAND_Field is Interfaces.EFM32.UInt4;

   --  Peripheral ID3 Register
   type ETMPIDR3_Register is record
      --  Read-only. Customer Modified
      CUSTMOD       : ETMPIDR3_CUSTMOD_Field;
      --  Read-only. RevAnd
      REVAND        : ETMPIDR3_REVAND_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMPIDR3_Register use record
      CUSTMOD       at 0 range 0 .. 3;
      REVAND        at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ETMCIDR_PREAMB_Field is Interfaces.EFM32.Byte;

   --  Component ID0 Register
   type ETMCIDR_Register is record
      --  Read-only. CoreSight Preamble
      PREAMB        : ETMCIDR_PREAMB_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ETMCIDR_Register use record
      PREAMB        at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  ETM
   type ETM_Peripheral is record
      --  Main Control Register
      ETMCR         : aliased ETMCR_Register;
      --  Configuration Code Register
      ETMCCR        : aliased ETMCCR_Register;
      --  ETM Trigger Event Register
      ETMTRIGGER    : aliased ETMTRIGGER_Register;
      --  ETM Status Register
      ETMSR         : aliased ETMSR_Register;
      --  ETM System Configuration Register
      ETMSCR        : aliased ETMSCR_Register;
      --  ETM TraceEnable Event Register
      ETMTEEVR      : aliased ETMTEEVR_Register;
      --  ETM Trace control Register
      ETMTECR1      : aliased ETMTECR1_Register;
      --  ETM Fifo Full Level Register
      ETMFFLR       : aliased ETMFFLR_Register;
      --  Counter Reload Value
      ETMCNTRLDVR1  : aliased ETMCNTRLDVR1_Register;
      --  Synchronisation Frequency Register
      ETMSYNCFR     : aliased ETMSYNCFR_Register;
      --  ID Register
      ETMIDR        : aliased ETMIDR_Register;
      --  Configuration Code Extension Register
      ETMCCER       : aliased ETMCCER_Register;
      --  TraceEnable Start/Stop EmbeddedICE Control Register
      ETMTESSEICR   : aliased ETMTESSEICR_Register;
      --  Timestamp Event Register
      ETMTSEVR      : aliased ETMTSEVR_Register;
      --  CoreSight Trace ID Register
      ETMTRACEIDR   : aliased ETMTRACEIDR_Register;
      --  ETM ID Register 2
      ETMIDR2       : aliased ETMIDR2_Register;
      --  Device Power-down Status Register
      ETMPDSR       : aliased ETMPDSR_Register;
      --  Integration Test Miscellaneous Inputs Register
      ETMISCIN      : aliased ETMISCIN_Register;
      --  Integration Test Trigger Out Register
      ITTRIGOUT     : aliased ITTRIGOUT_Register;
      --  ETM Integration Test ATB Control 2 Register
      ETMITATBCTR2  : aliased ETMITATBCTR2_Register;
      --  ETM Integration Test ATB Control 0 Register
      ETMITATBCTR0  : aliased ETMITATBCTR0_Register;
      --  ETM Integration Control Register
      ETMITCTRL     : aliased ETMITCTRL_Register;
      --  ETM Claim Tag Set Register
      ETMCLAIMSET   : aliased ETMCLAIMSET_Register;
      --  ETM Claim Tag Clear Register
      ETMCLAIMCLR   : aliased ETMCLAIMCLR_Register;
      --  ETM Lock Access Register
      ETMLAR        : aliased ETMLAR_Register;
      --  Lock Status Register
      ETMLSR        : aliased ETMLSR_Register;
      --  ETM Authentication Status Register
      ETMAUTHSTATUS : aliased ETMAUTHSTATUS_Register;
      --  CoreSight Device Type Register
      ETMDEVTYPE    : aliased ETMDEVTYPE_Register;
      --  Peripheral ID4 Register
      ETMPIDR4      : aliased ETMPIDR4_Register;
      --  Peripheral ID5 Register
      ETMPIDR5      : aliased Interfaces.EFM32.UInt32;
      --  Peripheral ID6 Register
      ETMPIDR6      : aliased Interfaces.EFM32.UInt32;
      --  Peripheral ID7 Register
      ETMPIDR7      : aliased Interfaces.EFM32.UInt32;
      --  Peripheral ID0 Register
      ETMPIDR0      : aliased ETMPIDR0_Register;
      --  Peripheral ID1 Register
      ETMPIDR1      : aliased ETMPIDR1_Register;
      --  Peripheral ID2 Register
      ETMPIDR2      : aliased ETMPIDR2_Register;
      --  Peripheral ID3 Register
      ETMPIDR3      : aliased ETMPIDR3_Register;
      --  Component ID0 Register
      ETMCIDR0      : aliased ETMCIDR_Register;
      --  Component ID1 Register
      ETMCIDR1      : aliased ETMCIDR_Register;
      --  Component ID2 Register
      ETMCIDR2      : aliased ETMCIDR_Register;
      --  Component ID3 Register
      ETMCIDR3      : aliased ETMCIDR_Register;
   end record
     with Volatile;

   for ETM_Peripheral use record
      ETMCR         at 16#0# range 0 .. 31;
      ETMCCR        at 16#4# range 0 .. 31;
      ETMTRIGGER    at 16#8# range 0 .. 31;
      ETMSR         at 16#10# range 0 .. 31;
      ETMSCR        at 16#14# range 0 .. 31;
      ETMTEEVR      at 16#20# range 0 .. 31;
      ETMTECR1      at 16#24# range 0 .. 31;
      ETMFFLR       at 16#2C# range 0 .. 31;
      ETMCNTRLDVR1  at 16#140# range 0 .. 31;
      ETMSYNCFR     at 16#1E0# range 0 .. 31;
      ETMIDR        at 16#1E4# range 0 .. 31;
      ETMCCER       at 16#1E8# range 0 .. 31;
      ETMTESSEICR   at 16#1F0# range 0 .. 31;
      ETMTSEVR      at 16#1F8# range 0 .. 31;
      ETMTRACEIDR   at 16#200# range 0 .. 31;
      ETMIDR2       at 16#208# range 0 .. 31;
      ETMPDSR       at 16#314# range 0 .. 31;
      ETMISCIN      at 16#EE0# range 0 .. 31;
      ITTRIGOUT     at 16#EE8# range 0 .. 31;
      ETMITATBCTR2  at 16#EF0# range 0 .. 31;
      ETMITATBCTR0  at 16#EF8# range 0 .. 31;
      ETMITCTRL     at 16#F00# range 0 .. 31;
      ETMCLAIMSET   at 16#FA0# range 0 .. 31;
      ETMCLAIMCLR   at 16#FA4# range 0 .. 31;
      ETMLAR        at 16#FB0# range 0 .. 31;
      ETMLSR        at 16#FB4# range 0 .. 31;
      ETMAUTHSTATUS at 16#FB8# range 0 .. 31;
      ETMDEVTYPE    at 16#FCC# range 0 .. 31;
      ETMPIDR4      at 16#FD0# range 0 .. 31;
      ETMPIDR5      at 16#FD4# range 0 .. 31;
      ETMPIDR6      at 16#FD8# range 0 .. 31;
      ETMPIDR7      at 16#FDC# range 0 .. 31;
      ETMPIDR0      at 16#FE0# range 0 .. 31;
      ETMPIDR1      at 16#FE4# range 0 .. 31;
      ETMPIDR2      at 16#FE8# range 0 .. 31;
      ETMPIDR3      at 16#FEC# range 0 .. 31;
      ETMCIDR0      at 16#FF0# range 0 .. 31;
      ETMCIDR1      at 16#FF4# range 0 .. 31;
      ETMCIDR2      at 16#FF8# range 0 .. 31;
      ETMCIDR3      at 16#FFC# range 0 .. 31;
   end record;

   --  ETM
   ETM_Periph : aliased ETM_Peripheral
     with Import, Address => ETM_Base;

end Interfaces.EFM32.ETM;
