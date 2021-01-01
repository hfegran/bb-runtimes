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

--  MSC
package Interfaces.EFM32.MSC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_ADDRFAULTEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CLKDISFAULTEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_PWRUPONDEMAND_Field is Interfaces.EFM32.Bit;
   subtype CTRL_IFCREADCLEAR_Field is Interfaces.EFM32.Bit;
   subtype CTRL_TIMEOUTFAULTEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_RAMECCERRFAULTEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_EBIFAULTEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_WAITMODE_Field is Interfaces.EFM32.Bit;

   --  Memory System Control Register
   type CTRL_Register is record
      --  Invalid Address Bus Fault Response Enable
      ADDRFAULTEN      : CTRL_ADDRFAULTEN_Field := 16#1#;
      --  Clock-disabled Bus Fault Response Enable
      CLKDISFAULTEN    : CTRL_CLKDISFAULTEN_Field := 16#0#;
      --  Power Up on Demand During Wake Up
      PWRUPONDEMAND    : CTRL_PWRUPONDEMAND_Field := 16#0#;
      --  IFC Read Clears IF
      IFCREADCLEAR     : CTRL_IFCREADCLEAR_Field := 16#0#;
      --  Timeout Bus Fault Response Enable
      TIMEOUTFAULTEN   : CTRL_TIMEOUTFAULTEN_Field := 16#0#;
      --  Two Bit ECC Error Bus Fault Response Enable
      RAMECCERRFAULTEN : CTRL_RAMECCERRFAULTEN_Field := 16#1#;
      --  EBI Bus Fault Response Enable
      EBIFAULTEN       : CTRL_EBIFAULTEN_Field := 16#0#;
      --  unspecified
      Reserved_7_11    : Interfaces.EFM32.UInt5 := 16#0#;
      --  Peripheral Access Wait Mode
      WAITMODE         : CTRL_WAITMODE_Field := 16#0#;
      --  unspecified
      Reserved_13_31   : Interfaces.EFM32.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      ADDRFAULTEN      at 0 range 0 .. 0;
      CLKDISFAULTEN    at 0 range 1 .. 1;
      PWRUPONDEMAND    at 0 range 2 .. 2;
      IFCREADCLEAR     at 0 range 3 .. 3;
      TIMEOUTFAULTEN   at 0 range 4 .. 4;
      RAMECCERRFAULTEN at 0 range 5 .. 5;
      EBIFAULTEN       at 0 range 6 .. 6;
      Reserved_7_11    at 0 range 7 .. 11;
      WAITMODE         at 0 range 12 .. 12;
      Reserved_13_31   at 0 range 13 .. 31;
   end record;

   subtype READCTRL_IFCDIS_Field is Interfaces.EFM32.Bit;
   subtype READCTRL_AIDIS_Field is Interfaces.EFM32.Bit;
   subtype READCTRL_ICCDIS_Field is Interfaces.EFM32.Bit;
   subtype READCTRL_EBICDIS_Field is Interfaces.EFM32.Bit;
   subtype READCTRL_PREFETCH_Field is Interfaces.EFM32.Bit;
   subtype READCTRL_USEHPROT_Field is Interfaces.EFM32.Bit;
   subtype READCTRL_QSPICDIS_Field is Interfaces.EFM32.Bit;

   --  Read Mode
   type READCTRL_MODE_Field is
     (--  Zero wait-states inserted in fetch or read transfers
      WS0,
      --  One wait-state inserted for each fetch or read transfer. See Flash
--  Wait-States table for details
      WS1,
      --  Two wait-states inserted for eatch fetch or read transfer. See Flash
--  Wait-States table for details
      WS2,
      --  Three wait-states inserted for eatch fetch or read transfer. See Flash
--  Wait-States table for details
      WS3)
     with Size => 2;
   for READCTRL_MODE_Field use
     (WS0 => 0,
      WS1 => 1,
      WS2 => 2,
      WS3 => 3);

   subtype READCTRL_SCBTP_Field is Interfaces.EFM32.Bit;

   --  Read Control Register
   type READCTRL_Register is record
      --  unspecified
      Reserved_0_2   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Internal Flash Cache Disable
      IFCDIS         : READCTRL_IFCDIS_Field := 16#0#;
      --  Automatic Invalidate Disable
      AIDIS          : READCTRL_AIDIS_Field := 16#0#;
      --  Interrupt Context Cache Disable
      ICCDIS         : READCTRL_ICCDIS_Field := 16#0#;
      --  External Bus Interface Cache Disable
      EBICDIS        : READCTRL_EBICDIS_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Prefetch Mode
      PREFETCH       : READCTRL_PREFETCH_Field := 16#1#;
      --  AHB_HPROT Mode
      USEHPROT       : READCTRL_USEHPROT_Field := 16#0#;
      --  QSPI Cache Disable
      QSPICDIS       : READCTRL_QSPICDIS_Field := 16#0#;
      --  unspecified
      Reserved_11_23 : Interfaces.EFM32.UInt13 := 16#0#;
      --  Read Mode
      MODE           : READCTRL_MODE_Field := Interfaces.EFM32.MSC.WS1;
      --  unspecified
      Reserved_26_27 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Suppress Conditional Branch Target Perfetch
      SCBTP          : READCTRL_SCBTP_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for READCTRL_Register use record
      Reserved_0_2   at 0 range 0 .. 2;
      IFCDIS         at 0 range 3 .. 3;
      AIDIS          at 0 range 4 .. 4;
      ICCDIS         at 0 range 5 .. 5;
      EBICDIS        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PREFETCH       at 0 range 8 .. 8;
      USEHPROT       at 0 range 9 .. 9;
      QSPICDIS       at 0 range 10 .. 10;
      Reserved_11_23 at 0 range 11 .. 23;
      MODE           at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      SCBTP          at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype WRITECTRL_WREN_Field is Interfaces.EFM32.Bit;
   subtype WRITECTRL_IRQERASEABORT_Field is Interfaces.EFM32.Bit;
   subtype WRITECTRL_RWWEN_Field is Interfaces.EFM32.Bit;

   --  Write Control Register
   type WRITECTRL_Register is record
      --  Enable Write/Erase Controller
      WREN          : WRITECTRL_WREN_Field := 16#0#;
      --  Abort Page Erase on Interrupt
      IRQERASEABORT : WRITECTRL_IRQERASEABORT_Field := 16#0#;
      --  unspecified
      Reserved_2_4  : Interfaces.EFM32.UInt3 := 16#0#;
      --  Read-While-Write Enable
      RWWEN         : WRITECTRL_RWWEN_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRITECTRL_Register use record
      WREN          at 0 range 0 .. 0;
      IRQERASEABORT at 0 range 1 .. 1;
      Reserved_2_4  at 0 range 2 .. 4;
      RWWEN         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype WRITECMD_LADDRIM_Field is Interfaces.EFM32.Bit;
   subtype WRITECMD_ERASEPAGE_Field is Interfaces.EFM32.Bit;
   subtype WRITECMD_WRITEEND_Field is Interfaces.EFM32.Bit;
   subtype WRITECMD_WRITEONCE_Field is Interfaces.EFM32.Bit;
   subtype WRITECMD_WRITETRIG_Field is Interfaces.EFM32.Bit;
   subtype WRITECMD_ERASEABORT_Field is Interfaces.EFM32.Bit;
   --  WRITECMD_ERASEMAIN array element
   subtype WRITECMD_ERASEMAIN_Element is Interfaces.EFM32.Bit;

   --  WRITECMD_ERASEMAIN array
   type WRITECMD_ERASEMAIN_Field_Array is array (0 .. 1)
     of WRITECMD_ERASEMAIN_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for WRITECMD_ERASEMAIN
   type WRITECMD_ERASEMAIN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ERASEMAIN as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  ERASEMAIN as an array
            Arr : WRITECMD_ERASEMAIN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for WRITECMD_ERASEMAIN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype WRITECMD_CLEARWDATA_Field is Interfaces.EFM32.Bit;

   --  Write Command Register
   type WRITECMD_Register is record
      --  Write-only. Load MSC_ADDRB Into ADDR
      LADDRIM        : WRITECMD_LADDRIM_Field := 16#0#;
      --  Write-only. Erase Page
      ERASEPAGE      : WRITECMD_ERASEPAGE_Field := 16#0#;
      --  Write-only. End Write Mode
      WRITEEND       : WRITECMD_WRITEEND_Field := 16#0#;
      --  Write-only. Word Write-Once Trigger
      WRITEONCE      : WRITECMD_WRITEONCE_Field := 16#0#;
      --  Write-only. Word Write Sequence Trigger
      WRITETRIG      : WRITECMD_WRITETRIG_Field := 16#0#;
      --  Write-only. Abort Erase Sequence
      ERASEABORT     : WRITECMD_ERASEABORT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Write-only. Mass Erase Region 0
      ERASEMAIN      : WRITECMD_ERASEMAIN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_10_11 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Write-only. Clear WDATA State
      CLEARWDATA     : WRITECMD_CLEARWDATA_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.EFM32.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRITECMD_Register use record
      LADDRIM        at 0 range 0 .. 0;
      ERASEPAGE      at 0 range 1 .. 1;
      WRITEEND       at 0 range 2 .. 2;
      WRITEONCE      at 0 range 3 .. 3;
      WRITETRIG      at 0 range 4 .. 4;
      ERASEABORT     at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ERASEMAIN      at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      CLEARWDATA     at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype STATUS_BUSY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_LOCKED_Field is Interfaces.EFM32.Bit;
   subtype STATUS_INVADDR_Field is Interfaces.EFM32.Bit;
   subtype STATUS_WDATAREADY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_WORDTIMEOUT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_ERASEABORTED_Field is Interfaces.EFM32.Bit;
   subtype STATUS_PCRUNNING_Field is Interfaces.EFM32.Bit;
   subtype STATUS_BANKSWITCHED_Field is Interfaces.EFM32.Bit;
   subtype STATUS_WDATAVALID_Field is Interfaces.EFM32.UInt4;
   subtype STATUS_PWRUPCKBDFAILCOUNT_Field is Interfaces.EFM32.UInt4;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. Erase/Write Busy
      BUSY               : STATUS_BUSY_Field;
      --  Read-only. Access Locked
      LOCKED             : STATUS_LOCKED_Field;
      --  Read-only. Invalid Write Address or Erase Page
      INVADDR            : STATUS_INVADDR_Field;
      --  Read-only. WDATA Write Ready
      WDATAREADY         : STATUS_WDATAREADY_Field;
      --  Read-only. Flash Write Word Timeout
      WORDTIMEOUT        : STATUS_WORDTIMEOUT_Field;
      --  Read-only. The Current Flash Erase Operation Aborted
      ERASEABORTED       : STATUS_ERASEABORTED_Field;
      --  Read-only. Performance Counters Running
      PCRUNNING          : STATUS_PCRUNNING_Field;
      --  Read-only. BANK SWITCHING STATUS
      BANKSWITCHED       : STATUS_BANKSWITCHED_Field;
      --  unspecified
      Reserved_8_23      : Interfaces.EFM32.UInt16;
      --  Read-only. Write Data Buffer Valid Flag
      WDATAVALID         : STATUS_WDATAVALID_Field;
      --  Read-only. Flash Power Up Checkerboard Pattern Check Fail Count
      PWRUPCKBDFAILCOUNT : STATUS_PWRUPCKBDFAILCOUNT_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      BUSY               at 0 range 0 .. 0;
      LOCKED             at 0 range 1 .. 1;
      INVADDR            at 0 range 2 .. 2;
      WDATAREADY         at 0 range 3 .. 3;
      WORDTIMEOUT        at 0 range 4 .. 4;
      ERASEABORTED       at 0 range 5 .. 5;
      PCRUNNING          at 0 range 6 .. 6;
      BANKSWITCHED       at 0 range 7 .. 7;
      Reserved_8_23      at 0 range 8 .. 23;
      WDATAVALID         at 0 range 24 .. 27;
      PWRUPCKBDFAILCOUNT at 0 range 28 .. 31;
   end record;

   subtype IF_ERASE_Field is Interfaces.EFM32.Bit;
   subtype IF_WRITE_Field is Interfaces.EFM32.Bit;
   subtype IF_CHOF_Field is Interfaces.EFM32.Bit;
   subtype IF_CMOF_Field is Interfaces.EFM32.Bit;
   subtype IF_PWRUPF_Field is Interfaces.EFM32.Bit;
   subtype IF_ICACHERR_Field is Interfaces.EFM32.Bit;
   subtype IF_WDATAOV_Field is Interfaces.EFM32.Bit;
   subtype IF_LVEWRITE_Field is Interfaces.EFM32.Bit;
   subtype IF_RAMERR1B_Field is Interfaces.EFM32.Bit;
   subtype IF_RAMERR2B_Field is Interfaces.EFM32.Bit;
   subtype IF_RAM1ERR1B_Field is Interfaces.EFM32.Bit;
   subtype IF_RAM1ERR2B_Field is Interfaces.EFM32.Bit;
   subtype IF_RAM2ERR1B_Field is Interfaces.EFM32.Bit;
   subtype IF_RAM2ERR2B_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. Erase Done Interrupt Read Flag
      ERASE          : IF_ERASE_Field;
      --  Read-only. Write Done Interrupt Read Flag
      WRITE          : IF_WRITE_Field;
      --  Read-only. Cache Hits Overflow Interrupt Flag
      CHOF           : IF_CHOF_Field;
      --  Read-only. Cache Misses Overflow Interrupt Flag
      CMOF           : IF_CMOF_Field;
      --  Read-only. Flash Power Up Sequence Complete Flag
      PWRUPF         : IF_PWRUPF_Field;
      --  Read-only. ICache RAM Parity Error Flag
      ICACHERR       : IF_ICACHERR_Field;
      --  Read-only. Flash Controller Write Buffer Overflow
      WDATAOV        : IF_WDATAOV_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit;
      --  Read-only. Flash LVE Write Error Flag
      LVEWRITE       : IF_LVEWRITE_Field;
      --  unspecified
      Reserved_9_15  : Interfaces.EFM32.UInt7;
      --  Read-only. RAM 1-bit ECC Error Interrupt Flag
      RAMERR1B       : IF_RAMERR1B_Field;
      --  Read-only. RAM 2-bit ECC Error Interrupt Flag
      RAMERR2B       : IF_RAMERR2B_Field;
      --  Read-only. RAM1 1-bit ECC Error Interrupt Flag
      RAM1ERR1B      : IF_RAM1ERR1B_Field;
      --  Read-only. RAM1 2-bit ECC Error Interrupt Flag
      RAM1ERR2B      : IF_RAM1ERR2B_Field;
      --  Read-only. RAM2 1-bit ECC Error Interrupt Flag
      RAM2ERR1B      : IF_RAM2ERR1B_Field;
      --  Read-only. RAM2 2-bit ECC Error Interrupt Flag
      RAM2ERR2B      : IF_RAM2ERR2B_Field;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      ERASE          at 0 range 0 .. 0;
      WRITE          at 0 range 1 .. 1;
      CHOF           at 0 range 2 .. 2;
      CMOF           at 0 range 3 .. 3;
      PWRUPF         at 0 range 4 .. 4;
      ICACHERR       at 0 range 5 .. 5;
      WDATAOV        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LVEWRITE       at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      RAMERR1B       at 0 range 16 .. 16;
      RAMERR2B       at 0 range 17 .. 17;
      RAM1ERR1B      at 0 range 18 .. 18;
      RAM1ERR2B      at 0 range 19 .. 19;
      RAM2ERR1B      at 0 range 20 .. 20;
      RAM2ERR2B      at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype IFS_ERASE_Field is Interfaces.EFM32.Bit;
   subtype IFS_WRITE_Field is Interfaces.EFM32.Bit;
   subtype IFS_CHOF_Field is Interfaces.EFM32.Bit;
   subtype IFS_CMOF_Field is Interfaces.EFM32.Bit;
   subtype IFS_PWRUPF_Field is Interfaces.EFM32.Bit;
   subtype IFS_ICACHERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_WDATAOV_Field is Interfaces.EFM32.Bit;
   subtype IFS_LVEWRITE_Field is Interfaces.EFM32.Bit;
   subtype IFS_RAMERR1B_Field is Interfaces.EFM32.Bit;
   subtype IFS_RAMERR2B_Field is Interfaces.EFM32.Bit;
   subtype IFS_RAM1ERR1B_Field is Interfaces.EFM32.Bit;
   subtype IFS_RAM1ERR2B_Field is Interfaces.EFM32.Bit;
   subtype IFS_RAM2ERR1B_Field is Interfaces.EFM32.Bit;
   subtype IFS_RAM2ERR2B_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set ERASE Interrupt Flag
      ERASE          : IFS_ERASE_Field := 16#0#;
      --  Write-only. Set WRITE Interrupt Flag
      WRITE          : IFS_WRITE_Field := 16#0#;
      --  Write-only. Set CHOF Interrupt Flag
      CHOF           : IFS_CHOF_Field := 16#0#;
      --  Write-only. Set CMOF Interrupt Flag
      CMOF           : IFS_CMOF_Field := 16#0#;
      --  Write-only. Set PWRUPF Interrupt Flag
      PWRUPF         : IFS_PWRUPF_Field := 16#0#;
      --  Write-only. Set ICACHERR Interrupt Flag
      ICACHERR       : IFS_ICACHERR_Field := 16#0#;
      --  Write-only. Set WDATAOV Interrupt Flag
      WDATAOV        : IFS_WDATAOV_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Set LVEWRITE Interrupt Flag
      LVEWRITE       : IFS_LVEWRITE_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : Interfaces.EFM32.UInt7 := 16#0#;
      --  Write-only. Set RAMERR1B Interrupt Flag
      RAMERR1B       : IFS_RAMERR1B_Field := 16#0#;
      --  Write-only. Set RAMERR2B Interrupt Flag
      RAMERR2B       : IFS_RAMERR2B_Field := 16#0#;
      --  Write-only. Set RAM1ERR1B Interrupt Flag
      RAM1ERR1B      : IFS_RAM1ERR1B_Field := 16#0#;
      --  Write-only. Set RAM1ERR2B Interrupt Flag
      RAM1ERR2B      : IFS_RAM1ERR2B_Field := 16#0#;
      --  Write-only. Set RAM2ERR1B Interrupt Flag
      RAM2ERR1B      : IFS_RAM2ERR1B_Field := 16#0#;
      --  Write-only. Set RAM2ERR2B Interrupt Flag
      RAM2ERR2B      : IFS_RAM2ERR2B_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      ERASE          at 0 range 0 .. 0;
      WRITE          at 0 range 1 .. 1;
      CHOF           at 0 range 2 .. 2;
      CMOF           at 0 range 3 .. 3;
      PWRUPF         at 0 range 4 .. 4;
      ICACHERR       at 0 range 5 .. 5;
      WDATAOV        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LVEWRITE       at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      RAMERR1B       at 0 range 16 .. 16;
      RAMERR2B       at 0 range 17 .. 17;
      RAM1ERR1B      at 0 range 18 .. 18;
      RAM1ERR2B      at 0 range 19 .. 19;
      RAM2ERR1B      at 0 range 20 .. 20;
      RAM2ERR2B      at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype IFC_ERASE_Field is Interfaces.EFM32.Bit;
   subtype IFC_WRITE_Field is Interfaces.EFM32.Bit;
   subtype IFC_CHOF_Field is Interfaces.EFM32.Bit;
   subtype IFC_CMOF_Field is Interfaces.EFM32.Bit;
   subtype IFC_PWRUPF_Field is Interfaces.EFM32.Bit;
   subtype IFC_ICACHERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_WDATAOV_Field is Interfaces.EFM32.Bit;
   subtype IFC_LVEWRITE_Field is Interfaces.EFM32.Bit;
   subtype IFC_RAMERR1B_Field is Interfaces.EFM32.Bit;
   subtype IFC_RAMERR2B_Field is Interfaces.EFM32.Bit;
   subtype IFC_RAM1ERR1B_Field is Interfaces.EFM32.Bit;
   subtype IFC_RAM1ERR2B_Field is Interfaces.EFM32.Bit;
   subtype IFC_RAM2ERR1B_Field is Interfaces.EFM32.Bit;
   subtype IFC_RAM2ERR2B_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear ERASE Interrupt Flag
      ERASE          : IFC_ERASE_Field := 16#0#;
      --  Write-only. Clear WRITE Interrupt Flag
      WRITE          : IFC_WRITE_Field := 16#0#;
      --  Write-only. Clear CHOF Interrupt Flag
      CHOF           : IFC_CHOF_Field := 16#0#;
      --  Write-only. Clear CMOF Interrupt Flag
      CMOF           : IFC_CMOF_Field := 16#0#;
      --  Write-only. Clear PWRUPF Interrupt Flag
      PWRUPF         : IFC_PWRUPF_Field := 16#0#;
      --  Write-only. Clear ICACHERR Interrupt Flag
      ICACHERR       : IFC_ICACHERR_Field := 16#0#;
      --  Write-only. Clear WDATAOV Interrupt Flag
      WDATAOV        : IFC_WDATAOV_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Clear LVEWRITE Interrupt Flag
      LVEWRITE       : IFC_LVEWRITE_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : Interfaces.EFM32.UInt7 := 16#0#;
      --  Write-only. Clear RAMERR1B Interrupt Flag
      RAMERR1B       : IFC_RAMERR1B_Field := 16#0#;
      --  Write-only. Clear RAMERR2B Interrupt Flag
      RAMERR2B       : IFC_RAMERR2B_Field := 16#0#;
      --  Write-only. Clear RAM1ERR1B Interrupt Flag
      RAM1ERR1B      : IFC_RAM1ERR1B_Field := 16#0#;
      --  Write-only. Clear RAM1ERR2B Interrupt Flag
      RAM1ERR2B      : IFC_RAM1ERR2B_Field := 16#0#;
      --  Write-only. Clear RAM2ERR1B Interrupt Flag
      RAM2ERR1B      : IFC_RAM2ERR1B_Field := 16#0#;
      --  Write-only. Clear RAM2ERR2B Interrupt Flag
      RAM2ERR2B      : IFC_RAM2ERR2B_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      ERASE          at 0 range 0 .. 0;
      WRITE          at 0 range 1 .. 1;
      CHOF           at 0 range 2 .. 2;
      CMOF           at 0 range 3 .. 3;
      PWRUPF         at 0 range 4 .. 4;
      ICACHERR       at 0 range 5 .. 5;
      WDATAOV        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LVEWRITE       at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      RAMERR1B       at 0 range 16 .. 16;
      RAMERR2B       at 0 range 17 .. 17;
      RAM1ERR1B      at 0 range 18 .. 18;
      RAM1ERR2B      at 0 range 19 .. 19;
      RAM2ERR1B      at 0 range 20 .. 20;
      RAM2ERR2B      at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype IEN_ERASE_Field is Interfaces.EFM32.Bit;
   subtype IEN_WRITE_Field is Interfaces.EFM32.Bit;
   subtype IEN_CHOF_Field is Interfaces.EFM32.Bit;
   subtype IEN_CMOF_Field is Interfaces.EFM32.Bit;
   subtype IEN_PWRUPF_Field is Interfaces.EFM32.Bit;
   subtype IEN_ICACHERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_WDATAOV_Field is Interfaces.EFM32.Bit;
   subtype IEN_LVEWRITE_Field is Interfaces.EFM32.Bit;
   subtype IEN_RAMERR1B_Field is Interfaces.EFM32.Bit;
   subtype IEN_RAMERR2B_Field is Interfaces.EFM32.Bit;
   subtype IEN_RAM1ERR1B_Field is Interfaces.EFM32.Bit;
   subtype IEN_RAM1ERR2B_Field is Interfaces.EFM32.Bit;
   subtype IEN_RAM2ERR1B_Field is Interfaces.EFM32.Bit;
   subtype IEN_RAM2ERR2B_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  ERASE Interrupt Enable
      ERASE          : IEN_ERASE_Field := 16#0#;
      --  WRITE Interrupt Enable
      WRITE          : IEN_WRITE_Field := 16#0#;
      --  CHOF Interrupt Enable
      CHOF           : IEN_CHOF_Field := 16#0#;
      --  CMOF Interrupt Enable
      CMOF           : IEN_CMOF_Field := 16#0#;
      --  PWRUPF Interrupt Enable
      PWRUPF         : IEN_PWRUPF_Field := 16#0#;
      --  ICACHERR Interrupt Enable
      ICACHERR       : IEN_ICACHERR_Field := 16#0#;
      --  WDATAOV Interrupt Enable
      WDATAOV        : IEN_WDATAOV_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  LVEWRITE Interrupt Enable
      LVEWRITE       : IEN_LVEWRITE_Field := 16#0#;
      --  unspecified
      Reserved_9_15  : Interfaces.EFM32.UInt7 := 16#0#;
      --  RAMERR1B Interrupt Enable
      RAMERR1B       : IEN_RAMERR1B_Field := 16#0#;
      --  RAMERR2B Interrupt Enable
      RAMERR2B       : IEN_RAMERR2B_Field := 16#0#;
      --  RAM1ERR1B Interrupt Enable
      RAM1ERR1B      : IEN_RAM1ERR1B_Field := 16#0#;
      --  RAM1ERR2B Interrupt Enable
      RAM1ERR2B      : IEN_RAM1ERR2B_Field := 16#0#;
      --  RAM2ERR1B Interrupt Enable
      RAM2ERR1B      : IEN_RAM2ERR1B_Field := 16#0#;
      --  RAM2ERR2B Interrupt Enable
      RAM2ERR2B      : IEN_RAM2ERR2B_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      ERASE          at 0 range 0 .. 0;
      WRITE          at 0 range 1 .. 1;
      CHOF           at 0 range 2 .. 2;
      CMOF           at 0 range 3 .. 3;
      PWRUPF         at 0 range 4 .. 4;
      ICACHERR       at 0 range 5 .. 5;
      WDATAOV        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      LVEWRITE       at 0 range 8 .. 8;
      Reserved_9_15  at 0 range 9 .. 15;
      RAMERR1B       at 0 range 16 .. 16;
      RAMERR2B       at 0 range 17 .. 17;
      RAM1ERR1B      at 0 range 18 .. 18;
      RAM1ERR2B      at 0 range 19 .. 19;
      RAM2ERR1B      at 0 range 20 .. 20;
      RAM2ERR2B      at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  Configuration Lock
   type LOCK_LOCKKEY_Field is
     (UNLOCKED,
      LOCKED)
     with Size => 16;
   for LOCK_LOCKKEY_Field use
     (UNLOCKED => 0,
      LOCKED => 1);

   --  Configuration Lock Register
   type LOCK_Register is record
      --  Configuration Lock
      LOCKKEY        : LOCK_LOCKKEY_Field := Interfaces.EFM32.MSC.UNLOCKED;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOCK_Register use record
      LOCKKEY        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype CACHECMD_INVCACHE_Field is Interfaces.EFM32.Bit;
   subtype CACHECMD_STARTPC_Field is Interfaces.EFM32.Bit;
   subtype CACHECMD_STOPPC_Field is Interfaces.EFM32.Bit;

   --  Flash Cache Command Register
   type CACHECMD_Register is record
      --  Write-only. Invalidate Instruction Cache
      INVCACHE      : CACHECMD_INVCACHE_Field := 16#0#;
      --  Write-only. Start Performance Counters
      STARTPC       : CACHECMD_STARTPC_Field := 16#0#;
      --  Write-only. Stop Performance Counters
      STOPPC        : CACHECMD_STOPPC_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHECMD_Register use record
      INVCACHE      at 0 range 0 .. 0;
      STARTPC       at 0 range 1 .. 1;
      STOPPC        at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype CACHEHITS_CACHEHITS_Field is Interfaces.EFM32.UInt20;

   --  Cache Hits Performance Counter
   type CACHEHITS_Register is record
      --  Read-only. Cache Hits Since Last Performance Counter Start Command
      CACHEHITS      : CACHEHITS_CACHEHITS_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHEHITS_Register use record
      CACHEHITS      at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype CACHEMISSES_CACHEMISSES_Field is Interfaces.EFM32.UInt20;

   --  Cache Misses Performance Counter
   type CACHEMISSES_Register is record
      --  Read-only. Cache Misses Since Last Performance Counter Start Command
      CACHEMISSES    : CACHEMISSES_CACHEMISSES_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHEMISSES_Register use record
      CACHEMISSES    at 0 range 0 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   --  Mass Erase Lock
   type MASSLOCK_LOCKKEY_Field is
     (UNLOCKED,
      LOCKED)
     with Size => 16;
   for MASSLOCK_LOCKKEY_Field use
     (UNLOCKED => 0,
      LOCKED => 1);

   --  Mass Erase Lock Register
   type MASSLOCK_Register is record
      --  Mass Erase Lock
      LOCKKEY        : MASSLOCK_LOCKKEY_Field := Interfaces.EFM32.MSC.LOCKED;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MASSLOCK_Register use record
      LOCKKEY        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype STARTUP_STDLY0_Field is Interfaces.EFM32.UInt10;
   subtype STARTUP_STDLY1_Field is Interfaces.EFM32.UInt10;
   subtype STARTUP_ASTWAIT_Field is Interfaces.EFM32.Bit;
   subtype STARTUP_STWSEN_Field is Interfaces.EFM32.Bit;
   subtype STARTUP_STWSAEN_Field is Interfaces.EFM32.Bit;
   subtype STARTUP_STWS_Field is Interfaces.EFM32.UInt3;

   --  Startup Control
   type STARTUP_Register is record
      --  Startup Delay 0
      STDLY0         : STARTUP_STDLY0_Field := 16#4D#;
      --  unspecified
      Reserved_10_11 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Startup Delay 0
      STDLY1         : STARTUP_STDLY1_Field := 16#1#;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Active Startup Wait
      ASTWAIT        : STARTUP_ASTWAIT_Field := 16#1#;
      --  Startup Waitstates Enable
      STWSEN         : STARTUP_STWSEN_Field := 16#1#;
      --  Startup Waitstates Always Enable
      STWSAEN        : STARTUP_STWSAEN_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.EFM32.Bit := 16#0#;
      --  Startup Waitstates
      STWS           : STARTUP_STWS_Field := 16#1#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STARTUP_Register use record
      STDLY0         at 0 range 0 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      STDLY1         at 0 range 12 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      ASTWAIT        at 0 range 24 .. 24;
      STWSEN         at 0 range 25 .. 25;
      STWSAEN        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      STWS           at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Bank Switching Lock
   type BANKSWITCHLOCK_BANKSWITCHLOCKKEY_Field is
     (UNLOCKED,
      LOCKED)
     with Size => 16;
   for BANKSWITCHLOCK_BANKSWITCHLOCKKEY_Field use
     (UNLOCKED => 0,
      LOCKED => 1);

   --  Bank Switching Lock Register
   type BANKSWITCHLOCK_Register is record
      --  Bank Switching Lock
      BANKSWITCHLOCKKEY : BANKSWITCHLOCK_BANKSWITCHLOCKKEY_Field :=
                           Interfaces.EFM32.MSC.LOCKED;
      --  unspecified
      Reserved_16_31    : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BANKSWITCHLOCK_Register use record
      BANKSWITCHLOCKKEY at 0 range 0 .. 15;
      Reserved_16_31    at 0 range 16 .. 31;
   end record;

   subtype CMD_PWRUP_Field is Interfaces.EFM32.Bit;
   subtype CMD_SWITCHINGBANK_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Flash Power Up Command
      PWRUP         : CMD_PWRUP_Field := 16#0#;
      --  Write-only. BANK SWITCHING COMMAND
      SWITCHINGBANK : CMD_SWITCHINGBANK_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      PWRUP         at 0 range 0 .. 0;
      SWITCHINGBANK at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype BOOTLOADERCTRL_BLRDIS_Field is Interfaces.EFM32.Bit;
   subtype BOOTLOADERCTRL_BLWDIS_Field is Interfaces.EFM32.Bit;

   --  Bootloader Read and Write Enable, Write Once Register
   type BOOTLOADERCTRL_Register is record
      --  Flash Bootloader Read Disable
      BLRDIS        : BOOTLOADERCTRL_BLRDIS_Field := 16#0#;
      --  Flash Bootloader Write/Erase Disable
      BLWDIS        : BOOTLOADERCTRL_BLWDIS_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BOOTLOADERCTRL_Register use record
      BLRDIS        at 0 range 0 .. 0;
      BLWDIS        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype AAPUNLOCKCMD_UNLOCKAAP_Field is Interfaces.EFM32.Bit;

   --  Software Unlock AAP Command Register
   type AAPUNLOCKCMD_Register is record
      --  Write-only. Software Unlock AAP Command
      UNLOCKAAP     : AAPUNLOCKCMD_UNLOCKAAP_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AAPUNLOCKCMD_Register use record
      UNLOCKAAP     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Instruction Cache Low-Power Level
   type CACHECONFIG0_CACHELPLEVEL_Field is
     (--  Base instruction cache functionality.
      BASE,
      --  Advanced buffering mode, where the cache uses the fetch pattern to predict
--  highly accessed data and store it in low-energy memory.
      ADVANCED,
      --  Minimum activity mode, which allows the cache to minimize activity in logic
--  that it predicts has a low probability being used. This mode can introduce
--  wait-states into the instruction fetch stream when the cache exits one of
--  its low-activity states. The number of wait-states introduced is small, but
--  users running with 0-wait-state memory and wishing to reduce the
--  variability that the cache might introduce with additional wait-states may
--  wish to lower the cache low-power level. Note, this mode includes the
--  advanced buffering mode functionality.
      MINACTIVITY)
     with Size => 2;
   for CACHECONFIG0_CACHELPLEVEL_Field use
     (BASE => 0,
      ADVANCED => 1,
      MINACTIVITY => 3);

   --  Cache Configuration Register 0
   type CACHECONFIG0_Register is record
      --  Instruction Cache Low-Power Level
      CACHELPLEVEL  : CACHECONFIG0_CACHELPLEVEL_Field :=
                       Interfaces.EFM32.MSC.MINACTIVITY;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CACHECONFIG0_Register use record
      CACHELPLEVEL  at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype RAMCTRL_RAMWSEN_Field is Interfaces.EFM32.Bit;
   subtype RAMCTRL_RAMPREFETCHEN_Field is Interfaces.EFM32.Bit;
   subtype RAMCTRL_RAM1WSEN_Field is Interfaces.EFM32.Bit;
   subtype RAMCTRL_RAM1PREFETCHEN_Field is Interfaces.EFM32.Bit;
   subtype RAMCTRL_RAM2WSEN_Field is Interfaces.EFM32.Bit;
   subtype RAMCTRL_RAM2PREFETCHEN_Field is Interfaces.EFM32.Bit;

   --  RAM Control Enable Register
   type RAMCTRL_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.EFM32.Bit := 16#0#;
      --  RAM WAIT STATE Enable
      RAMWSEN        : RAMCTRL_RAMWSEN_Field := 16#0#;
      --  RAM Prefetch Enable
      RAMPREFETCHEN  : RAMCTRL_RAMPREFETCHEN_Field := 16#0#;
      --  unspecified
      Reserved_3_8   : Interfaces.EFM32.UInt6 := 16#0#;
      --  RAM1 WAIT STATE Enable
      RAM1WSEN       : RAMCTRL_RAM1WSEN_Field := 16#0#;
      --  RAM1 Prefetch Enable
      RAM1PREFETCHEN : RAMCTRL_RAM1PREFETCHEN_Field := 16#0#;
      --  unspecified
      Reserved_11_16 : Interfaces.EFM32.UInt6 := 16#0#;
      --  RAM2 WAIT STATE Enable
      RAM2WSEN       : RAMCTRL_RAM2WSEN_Field := 16#0#;
      --  RAM2 Prefetch Enable
      RAM2PREFETCHEN : RAMCTRL_RAM2PREFETCHEN_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAMCTRL_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      RAMWSEN        at 0 range 1 .. 1;
      RAMPREFETCHEN  at 0 range 2 .. 2;
      Reserved_3_8   at 0 range 3 .. 8;
      RAM1WSEN       at 0 range 9 .. 9;
      RAM1PREFETCHEN at 0 range 10 .. 10;
      Reserved_11_16 at 0 range 11 .. 16;
      RAM2WSEN       at 0 range 17 .. 17;
      RAM2PREFETCHEN at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ECCCTRL_RAMECCEWEN_Field is Interfaces.EFM32.Bit;
   subtype ECCCTRL_RAMECCCHKEN_Field is Interfaces.EFM32.Bit;
   subtype ECCCTRL_RAM1ECCEWEN_Field is Interfaces.EFM32.Bit;
   subtype ECCCTRL_RAM1ECCCHKEN_Field is Interfaces.EFM32.Bit;
   subtype ECCCTRL_RAM2ECCEWEN_Field is Interfaces.EFM32.Bit;
   subtype ECCCTRL_RAM2ECCCHKEN_Field is Interfaces.EFM32.Bit;

   --  RAM ECC Control Register
   type ECCCTRL_Register is record
      --  RAM ECC Write Enable
      RAMECCEWEN    : ECCCTRL_RAMECCEWEN_Field := 16#0#;
      --  RAM ECC Check Enable
      RAMECCCHKEN   : ECCCTRL_RAMECCCHKEN_Field := 16#0#;
      --  RAM1 ECC Write Enable
      RAM1ECCEWEN   : ECCCTRL_RAM1ECCEWEN_Field := 16#0#;
      --  RAM1 ECC Check Enable
      RAM1ECCCHKEN  : ECCCTRL_RAM1ECCCHKEN_Field := 16#0#;
      --  RAM2 ECC Write Enable
      RAM2ECCEWEN   : ECCCTRL_RAM2ECCEWEN_Field := 16#0#;
      --  RAM2 ECC Check Enable
      RAM2ECCCHKEN  : ECCCTRL_RAM2ECCCHKEN_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ECCCTRL_Register use record
      RAMECCEWEN    at 0 range 0 .. 0;
      RAMECCCHKEN   at 0 range 1 .. 1;
      RAM1ECCEWEN   at 0 range 2 .. 2;
      RAM1ECCCHKEN  at 0 range 3 .. 3;
      RAM2ECCEWEN   at 0 range 4 .. 4;
      RAM2ECCCHKEN  at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  MSC
   type MSC_Peripheral is record
      --  Memory System Control Register
      CTRL           : aliased CTRL_Register;
      --  Read Control Register
      READCTRL       : aliased READCTRL_Register;
      --  Write Control Register
      WRITECTRL      : aliased WRITECTRL_Register;
      --  Write Command Register
      WRITECMD       : aliased WRITECMD_Register;
      --  Page Erase/Write Address Buffer
      ADDRB          : aliased Interfaces.EFM32.UInt32;
      --  Write Data Register
      WDATA          : aliased Interfaces.EFM32.UInt32;
      --  Status Register
      STATUS         : aliased STATUS_Register;
      --  Interrupt Flag Register
      IF_k           : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS            : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC            : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN            : aliased IEN_Register;
      --  Configuration Lock Register
      LOCK           : aliased LOCK_Register;
      --  Flash Cache Command Register
      CACHECMD       : aliased CACHECMD_Register;
      --  Cache Hits Performance Counter
      CACHEHITS      : aliased CACHEHITS_Register;
      --  Cache Misses Performance Counter
      CACHEMISSES    : aliased CACHEMISSES_Register;
      --  Mass Erase Lock Register
      MASSLOCK       : aliased MASSLOCK_Register;
      --  Startup Control
      STARTUP        : aliased STARTUP_Register;
      --  Bank Switching Lock Register
      BANKSWITCHLOCK : aliased BANKSWITCHLOCK_Register;
      --  Command Register
      CMD            : aliased CMD_Register;
      --  Bootloader Read and Write Enable, Write Once Register
      BOOTLOADERCTRL : aliased BOOTLOADERCTRL_Register;
      --  Software Unlock AAP Command Register
      AAPUNLOCKCMD   : aliased AAPUNLOCKCMD_Register;
      --  Cache Configuration Register 0
      CACHECONFIG0   : aliased CACHECONFIG0_Register;
      --  RAM Control Enable Register
      RAMCTRL        : aliased RAMCTRL_Register;
      --  RAM ECC Control Register
      ECCCTRL        : aliased ECCCTRL_Register;
      --  RAM ECC Error Address Register
      RAMECCADDR     : aliased Interfaces.EFM32.UInt32;
      --  RAM1 ECC Error Address Register
      RAM1ECCADDR    : aliased Interfaces.EFM32.UInt32;
      --  RAM2 ECC Error Address Register
      RAM2ECCADDR    : aliased Interfaces.EFM32.UInt32;
   end record
     with Volatile;

   for MSC_Peripheral use record
      CTRL           at 16#0# range 0 .. 31;
      READCTRL       at 16#4# range 0 .. 31;
      WRITECTRL      at 16#8# range 0 .. 31;
      WRITECMD       at 16#C# range 0 .. 31;
      ADDRB          at 16#10# range 0 .. 31;
      WDATA          at 16#18# range 0 .. 31;
      STATUS         at 16#1C# range 0 .. 31;
      IF_k           at 16#30# range 0 .. 31;
      IFS            at 16#34# range 0 .. 31;
      IFC            at 16#38# range 0 .. 31;
      IEN            at 16#3C# range 0 .. 31;
      LOCK           at 16#40# range 0 .. 31;
      CACHECMD       at 16#44# range 0 .. 31;
      CACHEHITS      at 16#48# range 0 .. 31;
      CACHEMISSES    at 16#4C# range 0 .. 31;
      MASSLOCK       at 16#54# range 0 .. 31;
      STARTUP        at 16#5C# range 0 .. 31;
      BANKSWITCHLOCK at 16#70# range 0 .. 31;
      CMD            at 16#74# range 0 .. 31;
      BOOTLOADERCTRL at 16#90# range 0 .. 31;
      AAPUNLOCKCMD   at 16#94# range 0 .. 31;
      CACHECONFIG0   at 16#98# range 0 .. 31;
      RAMCTRL        at 16#100# range 0 .. 31;
      ECCCTRL        at 16#104# range 0 .. 31;
      RAMECCADDR     at 16#108# range 0 .. 31;
      RAM1ECCADDR    at 16#10C# range 0 .. 31;
      RAM2ECCADDR    at 16#110# range 0 .. 31;
   end record;

   --  MSC
   MSC_Periph : aliased MSC_Peripheral
     with Import, Address => MSC_Base;

end Interfaces.EFM32.MSC;
