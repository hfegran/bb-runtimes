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

--  RTCC
package Interfaces.EFM32.RTCC is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_ENABLE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_DEBUGRUN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_PRECCV0TOP_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CCV1TOP_Field is Interfaces.EFM32.Bit;

   --  Counter Prescaler Value
   type CTRL_CNTPRESC_Field is
     (--  CLKCNT = LFECLKRTCC/1
      DIV1,
      --  CLKCNT = LFECLKRTCC/2
      DIV2,
      --  CLKCNT = LFECLKRTCC/4
      DIV4,
      --  CLKCNT = LFECLKRTCC/8
      DIV8,
      --  CLKCNT = LFECLKRTCC/16
      DIV16,
      --  CLKCNT = LFECLKRTCC/32
      DIV32,
      --  CLKCNT = LFECLKRTCC/64
      DIV64,
      --  CLKCNT = LFECLKRTCC/128
      DIV128,
      --  CLKCNT = LFECLKRTCC/256
      DIV256,
      --  CLKCNT = LFECLKRTCC/512
      DIV512,
      --  CLKCNT = LFECLKRTCC/1024
      DIV1024,
      --  CLKCNT = LFECLKRTCC/2048
      DIV2048,
      --  CLKCNT = LFECLKRTCC/4096
      DIV4096,
      --  CLKCNT = LFECLKRTCC/8192
      DIV8192,
      --  CLKCNT = LFECLKRTCC/16384
      DIV16384,
      --  CLKCNT = LFECLKRTCC/32768
      DIV32768)
     with Size => 4;
   for CTRL_CNTPRESC_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3,
      DIV16 => 4,
      DIV32 => 5,
      DIV64 => 6,
      DIV128 => 7,
      DIV256 => 8,
      DIV512 => 9,
      DIV1024 => 10,
      DIV2048 => 11,
      DIV4096 => 12,
      DIV8192 => 13,
      DIV16384 => 14,
      DIV32768 => 15);

   subtype CTRL_CNTTICK_Field is Interfaces.EFM32.Bit;
   subtype CTRL_BUMODETSEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_OSCFDETEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_CNTMODE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_LYEARCORRDIS_Field is Interfaces.EFM32.Bit;

   --  Control Register
   type CTRL_Register is record
      --  RTCC Enable
      ENABLE         : CTRL_ENABLE_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.EFM32.Bit := 16#0#;
      --  Debug Mode Run Enable
      DEBUGRUN       : CTRL_DEBUGRUN_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit := 16#0#;
      --  Pre-counter CCV0 Top Value Enable
      PRECCV0TOP     : CTRL_PRECCV0TOP_Field := 16#0#;
      --  CCV1 Top Value Enable
      CCV1TOP        : CTRL_CCV1TOP_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Counter Prescaler Value
      CNTPRESC       : CTRL_CNTPRESC_Field := Interfaces.EFM32.RTCC.DIV1;
      --  Counter Prescaler Mode
      CNTTICK        : CTRL_CNTTICK_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Backup Mode Timestamp Enable
      BUMODETSEN     : CTRL_BUMODETSEN_Field := 16#0#;
      --  Oscillator Failure Detection Enable
      OSCFDETEN      : CTRL_OSCFDETEN_Field := 16#0#;
      --  Main Counter Mode
      CNTMODE        : CTRL_CNTMODE_Field := 16#0#;
      --  Leap Year Correction Disabled
      LYEARCORRDIS   : CTRL_LYEARCORRDIS_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.EFM32.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      ENABLE         at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      DEBUGRUN       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      PRECCV0TOP     at 0 range 4 .. 4;
      CCV1TOP        at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CNTPRESC       at 0 range 8 .. 11;
      CNTTICK        at 0 range 12 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      BUMODETSEN     at 0 range 14 .. 14;
      OSCFDETEN      at 0 range 15 .. 15;
      CNTMODE        at 0 range 16 .. 16;
      LYEARCORRDIS   at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype PRECNT_PRECNT_Field is Interfaces.EFM32.UInt15;

   --  Pre-Counter Value Register
   type PRECNT_Register is record
      --  Pre-Counter Value
      PRECNT         : PRECNT_PRECNT_Field := 16#0#;
      --  unspecified
      Reserved_15_31 : Interfaces.EFM32.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRECNT_Register use record
      PRECNT         at 0 range 0 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype COMBCNT_PRECNT_Field is Interfaces.EFM32.UInt15;
   subtype COMBCNT_CNTLSB_Field is Interfaces.EFM32.UInt17;

   --  Combined Pre-Counter and Counter Value Register
   type COMBCNT_Register is record
      --  Read-only. Pre-Counter Value
      PRECNT : COMBCNT_PRECNT_Field;
      --  Read-only. Counter Value
      CNTLSB : COMBCNT_CNTLSB_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for COMBCNT_Register use record
      PRECNT at 0 range 0 .. 14;
      CNTLSB at 0 range 15 .. 31;
   end record;

   subtype TIME_SECU_Field is Interfaces.EFM32.UInt4;
   subtype TIME_SECT_Field is Interfaces.EFM32.UInt3;
   subtype TIME_MINU_Field is Interfaces.EFM32.UInt4;
   subtype TIME_MINT_Field is Interfaces.EFM32.UInt3;
   subtype TIME_HOURU_Field is Interfaces.EFM32.UInt4;
   subtype TIME_HOURT_Field is Interfaces.EFM32.UInt2;

   --  Time of Day Register
   type TIME_Register is record
      --  Seconds, Units
      SECU           : TIME_SECU_Field := 16#0#;
      --  Seconds, Tens
      SECT           : TIME_SECT_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Minutes, Units
      MINU           : TIME_MINU_Field := 16#0#;
      --  Minutes, Tens
      MINT           : TIME_MINT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit := 16#0#;
      --  Hours, Units
      HOURU          : TIME_HOURU_Field := 16#0#;
      --  Hours, Tens
      HOURT          : TIME_HOURT_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIME_Register use record
      SECU           at 0 range 0 .. 3;
      SECT           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MINU           at 0 range 8 .. 11;
      MINT           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HOURU          at 0 range 16 .. 19;
      HOURT          at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype DATE_DAYOMU_Field is Interfaces.EFM32.UInt4;
   subtype DATE_DAYOMT_Field is Interfaces.EFM32.UInt2;
   subtype DATE_MONTHU_Field is Interfaces.EFM32.UInt4;
   subtype DATE_MONTHT_Field is Interfaces.EFM32.Bit;
   subtype DATE_YEARU_Field is Interfaces.EFM32.UInt4;
   subtype DATE_YEART_Field is Interfaces.EFM32.UInt4;
   subtype DATE_DAYOW_Field is Interfaces.EFM32.UInt3;

   --  Date Register
   type DATE_Register is record
      --  Day of Month, Units
      DAYOMU         : DATE_DAYOMU_Field := 16#0#;
      --  Day of Month, Tens
      DAYOMT         : DATE_DAYOMT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Month, Units
      MONTHU         : DATE_MONTHU_Field := 16#0#;
      --  Month, Tens
      MONTHT         : DATE_MONTHT_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Year, Units
      YEARU          : DATE_YEARU_Field := 16#0#;
      --  Year, Tens
      YEART          : DATE_YEART_Field := 16#0#;
      --  Day of Week
      DAYOW          : DATE_DAYOW_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.EFM32.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATE_Register use record
      DAYOMU         at 0 range 0 .. 3;
      DAYOMT         at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MONTHU         at 0 range 8 .. 11;
      MONTHT         at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      YEARU          at 0 range 16 .. 19;
      YEART          at 0 range 20 .. 23;
      DAYOW          at 0 range 24 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype IF_OF_Field is Interfaces.EFM32.Bit;
   --  IF_CC array element
   subtype IF_CC_Element is Interfaces.EFM32.Bit;

   --  IF_CC array
   type IF_CC_Field_Array is array (0 .. 2) of IF_CC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for IF_CC
   type IF_CC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CC as a value
            Val : Interfaces.EFM32.UInt3;
         when True =>
            --  CC as an array
            Arr : IF_CC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for IF_CC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype IF_OSCFAIL_Field is Interfaces.EFM32.Bit;
   subtype IF_CNTTICK_Field is Interfaces.EFM32.Bit;
   subtype IF_MINTICK_Field is Interfaces.EFM32.Bit;
   subtype IF_HOURTICK_Field is Interfaces.EFM32.Bit;
   subtype IF_DAYTICK_Field is Interfaces.EFM32.Bit;
   subtype IF_DAYOWOF_Field is Interfaces.EFM32.Bit;
   subtype IF_MONTHTICK_Field is Interfaces.EFM32.Bit;

   --  RTCC Interrupt Flags
   type IF_Register is record
      --  Read-only. Overflow Interrupt Flag
      OF_k           : IF_OF_Field;
      --  Read-only. Channel 0 Interrupt Flag
      CC             : IF_CC_Field;
      --  Read-only. Oscillator Failure Interrupt Flag
      OSCFAIL        : IF_OSCFAIL_Field;
      --  Read-only. Main Counter Tick
      CNTTICK        : IF_CNTTICK_Field;
      --  Read-only. Minute Tick
      MINTICK        : IF_MINTICK_Field;
      --  Read-only. Hour Tick
      HOURTICK       : IF_HOURTICK_Field;
      --  Read-only. Day Tick
      DAYTICK        : IF_DAYTICK_Field;
      --  Read-only. Day of Week Overflow
      DAYOWOF        : IF_DAYOWOF_Field;
      --  Read-only. Month Tick
      MONTHTICK      : IF_MONTHTICK_Field;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      OF_k           at 0 range 0 .. 0;
      CC             at 0 range 1 .. 3;
      OSCFAIL        at 0 range 4 .. 4;
      CNTTICK        at 0 range 5 .. 5;
      MINTICK        at 0 range 6 .. 6;
      HOURTICK       at 0 range 7 .. 7;
      DAYTICK        at 0 range 8 .. 8;
      DAYOWOF        at 0 range 9 .. 9;
      MONTHTICK      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype IFS_OF_Field is Interfaces.EFM32.Bit;
   --  IFS_CC array element
   subtype IFS_CC_Element is Interfaces.EFM32.Bit;

   --  IFS_CC array
   type IFS_CC_Field_Array is array (0 .. 2) of IFS_CC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for IFS_CC
   type IFS_CC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CC as a value
            Val : Interfaces.EFM32.UInt3;
         when True =>
            --  CC as an array
            Arr : IFS_CC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for IFS_CC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype IFS_OSCFAIL_Field is Interfaces.EFM32.Bit;
   subtype IFS_CNTTICK_Field is Interfaces.EFM32.Bit;
   subtype IFS_MINTICK_Field is Interfaces.EFM32.Bit;
   subtype IFS_HOURTICK_Field is Interfaces.EFM32.Bit;
   subtype IFS_DAYTICK_Field is Interfaces.EFM32.Bit;
   subtype IFS_DAYOWOF_Field is Interfaces.EFM32.Bit;
   subtype IFS_MONTHTICK_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set OF Interrupt Flag
      OF_k           : IFS_OF_Field := 16#0#;
      --  Write-only. Set CC0 Interrupt Flag
      CC             : IFS_CC_Field := (As_Array => False, Val => 0);
      --  Write-only. Set OSCFAIL Interrupt Flag
      OSCFAIL        : IFS_OSCFAIL_Field := 16#0#;
      --  Write-only. Set CNTTICK Interrupt Flag
      CNTTICK        : IFS_CNTTICK_Field := 16#0#;
      --  Write-only. Set MINTICK Interrupt Flag
      MINTICK        : IFS_MINTICK_Field := 16#0#;
      --  Write-only. Set HOURTICK Interrupt Flag
      HOURTICK       : IFS_HOURTICK_Field := 16#0#;
      --  Write-only. Set DAYTICK Interrupt Flag
      DAYTICK        : IFS_DAYTICK_Field := 16#0#;
      --  Write-only. Set DAYOWOF Interrupt Flag
      DAYOWOF        : IFS_DAYOWOF_Field := 16#0#;
      --  Write-only. Set MONTHTICK Interrupt Flag
      MONTHTICK      : IFS_MONTHTICK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      OF_k           at 0 range 0 .. 0;
      CC             at 0 range 1 .. 3;
      OSCFAIL        at 0 range 4 .. 4;
      CNTTICK        at 0 range 5 .. 5;
      MINTICK        at 0 range 6 .. 6;
      HOURTICK       at 0 range 7 .. 7;
      DAYTICK        at 0 range 8 .. 8;
      DAYOWOF        at 0 range 9 .. 9;
      MONTHTICK      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype IFC_OF_Field is Interfaces.EFM32.Bit;
   --  IFC_CC array element
   subtype IFC_CC_Element is Interfaces.EFM32.Bit;

   --  IFC_CC array
   type IFC_CC_Field_Array is array (0 .. 2) of IFC_CC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for IFC_CC
   type IFC_CC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CC as a value
            Val : Interfaces.EFM32.UInt3;
         when True =>
            --  CC as an array
            Arr : IFC_CC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for IFC_CC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype IFC_OSCFAIL_Field is Interfaces.EFM32.Bit;
   subtype IFC_CNTTICK_Field is Interfaces.EFM32.Bit;
   subtype IFC_MINTICK_Field is Interfaces.EFM32.Bit;
   subtype IFC_HOURTICK_Field is Interfaces.EFM32.Bit;
   subtype IFC_DAYTICK_Field is Interfaces.EFM32.Bit;
   subtype IFC_DAYOWOF_Field is Interfaces.EFM32.Bit;
   subtype IFC_MONTHTICK_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear OF Interrupt Flag
      OF_k           : IFC_OF_Field := 16#0#;
      --  Write-only. Clear CC0 Interrupt Flag
      CC             : IFC_CC_Field := (As_Array => False, Val => 0);
      --  Write-only. Clear OSCFAIL Interrupt Flag
      OSCFAIL        : IFC_OSCFAIL_Field := 16#0#;
      --  Write-only. Clear CNTTICK Interrupt Flag
      CNTTICK        : IFC_CNTTICK_Field := 16#0#;
      --  Write-only. Clear MINTICK Interrupt Flag
      MINTICK        : IFC_MINTICK_Field := 16#0#;
      --  Write-only. Clear HOURTICK Interrupt Flag
      HOURTICK       : IFC_HOURTICK_Field := 16#0#;
      --  Write-only. Clear DAYTICK Interrupt Flag
      DAYTICK        : IFC_DAYTICK_Field := 16#0#;
      --  Write-only. Clear DAYOWOF Interrupt Flag
      DAYOWOF        : IFC_DAYOWOF_Field := 16#0#;
      --  Write-only. Clear MONTHTICK Interrupt Flag
      MONTHTICK      : IFC_MONTHTICK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      OF_k           at 0 range 0 .. 0;
      CC             at 0 range 1 .. 3;
      OSCFAIL        at 0 range 4 .. 4;
      CNTTICK        at 0 range 5 .. 5;
      MINTICK        at 0 range 6 .. 6;
      HOURTICK       at 0 range 7 .. 7;
      DAYTICK        at 0 range 8 .. 8;
      DAYOWOF        at 0 range 9 .. 9;
      MONTHTICK      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype IEN_OF_Field is Interfaces.EFM32.Bit;
   --  IEN_CC array element
   subtype IEN_CC_Element is Interfaces.EFM32.Bit;

   --  IEN_CC array
   type IEN_CC_Field_Array is array (0 .. 2) of IEN_CC_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for IEN_CC
   type IEN_CC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CC as a value
            Val : Interfaces.EFM32.UInt3;
         when True =>
            --  CC as an array
            Arr : IEN_CC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for IEN_CC_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype IEN_OSCFAIL_Field is Interfaces.EFM32.Bit;
   subtype IEN_CNTTICK_Field is Interfaces.EFM32.Bit;
   subtype IEN_MINTICK_Field is Interfaces.EFM32.Bit;
   subtype IEN_HOURTICK_Field is Interfaces.EFM32.Bit;
   subtype IEN_DAYTICK_Field is Interfaces.EFM32.Bit;
   subtype IEN_DAYOWOF_Field is Interfaces.EFM32.Bit;
   subtype IEN_MONTHTICK_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  OF Interrupt Enable
      OF_k           : IEN_OF_Field := 16#0#;
      --  CC0 Interrupt Enable
      CC             : IEN_CC_Field := (As_Array => False, Val => 0);
      --  OSCFAIL Interrupt Enable
      OSCFAIL        : IEN_OSCFAIL_Field := 16#0#;
      --  CNTTICK Interrupt Enable
      CNTTICK        : IEN_CNTTICK_Field := 16#0#;
      --  MINTICK Interrupt Enable
      MINTICK        : IEN_MINTICK_Field := 16#0#;
      --  HOURTICK Interrupt Enable
      HOURTICK       : IEN_HOURTICK_Field := 16#0#;
      --  DAYTICK Interrupt Enable
      DAYTICK        : IEN_DAYTICK_Field := 16#0#;
      --  DAYOWOF Interrupt Enable
      DAYOWOF        : IEN_DAYOWOF_Field := 16#0#;
      --  MONTHTICK Interrupt Enable
      MONTHTICK      : IEN_MONTHTICK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      OF_k           at 0 range 0 .. 0;
      CC             at 0 range 1 .. 3;
      OSCFAIL        at 0 range 4 .. 4;
      CNTTICK        at 0 range 5 .. 5;
      MINTICK        at 0 range 6 .. 6;
      HOURTICK       at 0 range 7 .. 7;
      DAYTICK        at 0 range 8 .. 8;
      DAYOWOF        at 0 range 9 .. 9;
      MONTHTICK      at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype STATUS_BUMODETS_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. Timestamp for Backup Mode Entry Stored
      BUMODETS      : STATUS_BUMODETS_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      BUMODETS      at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype CMD_CLRSTATUS_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Clear RTCC_STATUS Register
      CLRSTATUS     : CMD_CLRSTATUS_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      CLRSTATUS     at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype SYNCBUSY_CMD_Field is Interfaces.EFM32.Bit;

   --  Synchronization Busy Register
   type SYNCBUSY_Register is record
      --  unspecified
      Reserved_0_4  : Interfaces.EFM32.UInt5;
      --  Read-only. CMD Register Busy
      CMD           : SYNCBUSY_CMD_Field;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNCBUSY_Register use record
      Reserved_0_4  at 0 range 0 .. 4;
      CMD           at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype POWERDOWN_RAM_Field is Interfaces.EFM32.Bit;

   --  Retention RAM Power-down Register
   type POWERDOWN_Register is record
      --  Retention RAM Power-down
      RAM           : POWERDOWN_RAM_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POWERDOWN_Register use record
      RAM           at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  Configuration Lock Key
   --  type LOCK_LOCKKEY_Field is Interfaces.EFM32.UInt16;
   --    (UNLOCKED,
   --     LOCKED)
   --    with Size => 16;
   --  for LOCK_LOCKKEY_Field use
   --    (UNLOCKED => 0,
   --     LOCKED => 1);

   --  Configuration Lock Register
   type LOCK_Register is record
      --  Configuration Lock Key
      LOCKKEY        : Interfaces.EFM32.UInt16 := 0;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOCK_Register use record
      LOCKKEY        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype EM4WUEN_EM4WU_Field is Interfaces.EFM32.Bit;

   --  Wake Up Enable
   type EM4WUEN_Register is record
      --  EM4 Wake-up Enable
      EM4WU         : EM4WUEN_EM4WU_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EM4WUEN_Register use record
      EM4WU         at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  CC Channel Mode
   type CC0_CTRL_MODE_Field is
     (--  Compare/Capture channel turned off
      OFF,
      --  Input capture
      INPUTCAPTURE,
      --  Output compare
      OUTPUTCOMPARE)
     with Size => 2;
   for CC0_CTRL_MODE_Field use
     (OFF => 0,
      INPUTCAPTURE => 1,
      OUTPUTCOMPARE => 2);

   --  Compare Match Output Action
   type CC0_CTRL_CMOA_Field is
     (--  A single clock cycle pulse is generated on output
      PULSE,
      --  Toggle output on compare match
      TOGGLE,
      --  Clear output on compare match
      CLEAR,
      --  Set output on compare match
      SET)
     with Size => 2;
   for CC0_CTRL_CMOA_Field use
     (PULSE => 0,
      TOGGLE => 1,
      CLEAR => 2,
      SET => 3);

   --  Input Capture Edge Select
   type CC0_CTRL_ICEDGE_Field is
     (--  Rising edges detected
      RISING,
      --  Falling edges detected
      FALLING,
      --  Both edges detected
      BOTH,
      --  No edge detection, signal is left as it is
      NONE)
     with Size => 2;
   for CC0_CTRL_ICEDGE_Field use
     (RISING => 0,
      FALLING => 1,
      BOTH => 2,
      NONE => 3);

   --  Compare/Capture Channel PRS Input Channel Selection
   type CC0_CTRL_PRSSEL_Field is
     (--  PRS Channel 0 selected as input
      PRSCH0,
      --  PRS Channel 1 selected as input
      PRSCH1,
      --  PRS Channel 2 selected as input
      PRSCH2,
      --  PRS Channel 3 selected as input
      PRSCH3,
      --  PRS Channel 4 selected as input
      PRSCH4,
      --  PRS Channel 5 selected as input
      PRSCH5,
      --  PRS Channel 6 selected as input
      PRSCH6,
      --  PRS Channel 7 selected as input
      PRSCH7,
      --  PRS Channel 8 selected as input
      PRSCH8,
      --  PRS Channel 9 selected as input
      PRSCH9,
      --  PRS Channel 10 selected as input
      PRSCH10,
      --  PRS Channel 11 selected as input
      PRSCH11,
      --  PRS Channel 12 selected as input
      PRSCH12,
      --  PRS Channel 13 selected as input
      PRSCH13,
      --  PRS Channel 14 selected as input
      PRSCH14,
      --  PRS Channel 15 selected as input
      PRSCH15)
     with Size => 4;
   for CC0_CTRL_PRSSEL_Field use
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

   subtype CC0_CTRL_COMPBASE_Field is Interfaces.EFM32.Bit;
   subtype CC0_CTRL_COMPMASK_Field is Interfaces.EFM32.UInt5;
   subtype CC0_CTRL_DAYCC_Field is Interfaces.EFM32.Bit;

   --  CC Channel Control Register
   type CC0_CTRL_Register is record
      --  CC Channel Mode
      MODE           : CC0_CTRL_MODE_Field := Interfaces.EFM32.RTCC.OFF;
      --  Compare Match Output Action
      CMOA           : CC0_CTRL_CMOA_Field := Interfaces.EFM32.RTCC.PULSE;
      --  Input Capture Edge Select
      ICEDGE         : CC0_CTRL_ICEDGE_Field := Interfaces.EFM32.RTCC.RISING;
      --  Compare/Capture Channel PRS Input Channel Selection
      PRSSEL         : CC0_CTRL_PRSSEL_Field := Interfaces.EFM32.RTCC.PRSCH0;
      --  unspecified
      Reserved_10_10 : Interfaces.EFM32.Bit := 16#0#;
      --  Capture Compare Channel Comparison Base
      COMPBASE       : CC0_CTRL_COMPBASE_Field := 16#0#;
      --  Capture Compare Channel Comparison Mask
      COMPMASK       : CC0_CTRL_COMPMASK_Field := 16#0#;
      --  Day Capture/Compare Selection
      DAYCC          : CC0_CTRL_DAYCC_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.EFM32.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CC0_CTRL_Register use record
      MODE           at 0 range 0 .. 1;
      CMOA           at 0 range 2 .. 3;
      ICEDGE         at 0 range 4 .. 5;
      PRSSEL         at 0 range 6 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      COMPBASE       at 0 range 11 .. 11;
      COMPMASK       at 0 range 12 .. 16;
      DAYCC          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype CC0_TIME_SECU_Field is Interfaces.EFM32.UInt4;
   subtype CC0_TIME_SECT_Field is Interfaces.EFM32.UInt3;
   subtype CC0_TIME_MINU_Field is Interfaces.EFM32.UInt4;
   subtype CC0_TIME_MINT_Field is Interfaces.EFM32.UInt3;
   subtype CC0_TIME_HOURU_Field is Interfaces.EFM32.UInt4;
   subtype CC0_TIME_HOURT_Field is Interfaces.EFM32.UInt2;

   --  Capture/Compare Time Register
   type CC0_TIME_Register is record
      --  Seconds, Units
      SECU           : CC0_TIME_SECU_Field := 16#0#;
      --  Seconds, Tens
      SECT           : CC0_TIME_SECT_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Minutes, Units
      MINU           : CC0_TIME_MINU_Field := 16#0#;
      --  Minutes, Tens
      MINT           : CC0_TIME_MINT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit := 16#0#;
      --  Hours, Units
      HOURU          : CC0_TIME_HOURU_Field := 16#0#;
      --  Hours, Tens
      HOURT          : CC0_TIME_HOURT_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CC0_TIME_Register use record
      SECU           at 0 range 0 .. 3;
      SECT           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MINU           at 0 range 8 .. 11;
      MINT           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HOURU          at 0 range 16 .. 19;
      HOURT          at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CC0_DATE_DAYU_Field is Interfaces.EFM32.UInt4;
   subtype CC0_DATE_DAYT_Field is Interfaces.EFM32.UInt2;
   subtype CC0_DATE_MONTHU_Field is Interfaces.EFM32.UInt4;
   subtype CC0_DATE_MONTHT_Field is Interfaces.EFM32.Bit;

   --  Capture/Compare Date Register
   type CC0_DATE_Register is record
      --  Day of Month/week, Units
      DAYU           : CC0_DATE_DAYU_Field := 16#0#;
      --  Day of Month/week, Tens
      DAYT           : CC0_DATE_DAYT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Month, Units
      MONTHU         : CC0_DATE_MONTHU_Field := 16#0#;
      --  Month, Tens
      MONTHT         : CC0_DATE_MONTHT_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.EFM32.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CC0_DATE_Register use record
      DAYU           at 0 range 0 .. 3;
      DAYT           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MONTHU         at 0 range 8 .. 11;
      MONTHT         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  CC Channel Mode
   type CC1_CTRL_MODE_Field is
     (--  Compare/Capture channel turned off
      OFF,
      --  Input capture
      INPUTCAPTURE,
      --  Output compare
      OUTPUTCOMPARE)
     with Size => 2;
   for CC1_CTRL_MODE_Field use
     (OFF => 0,
      INPUTCAPTURE => 1,
      OUTPUTCOMPARE => 2);

   --  Compare Match Output Action
   type CC1_CTRL_CMOA_Field is
     (--  A single clock cycle pulse is generated on output
      PULSE,
      --  Toggle output on compare match
      TOGGLE,
      --  Clear output on compare match
      CLEAR,
      --  Set output on compare match
      SET)
     with Size => 2;
   for CC1_CTRL_CMOA_Field use
     (PULSE => 0,
      TOGGLE => 1,
      CLEAR => 2,
      SET => 3);

   --  Input Capture Edge Select
   type CC1_CTRL_ICEDGE_Field is
     (--  Rising edges detected
      RISING,
      --  Falling edges detected
      FALLING,
      --  Both edges detected
      BOTH,
      --  No edge detection, signal is left as it is
      NONE)
     with Size => 2;
   for CC1_CTRL_ICEDGE_Field use
     (RISING => 0,
      FALLING => 1,
      BOTH => 2,
      NONE => 3);

   --  Compare/Capture Channel PRS Input Channel Selection
   type CC1_CTRL_PRSSEL_Field is
     (--  PRS Channel 0 selected as input
      PRSCH0,
      --  PRS Channel 1 selected as input
      PRSCH1,
      --  PRS Channel 2 selected as input
      PRSCH2,
      --  PRS Channel 3 selected as input
      PRSCH3,
      --  PRS Channel 4 selected as input
      PRSCH4,
      --  PRS Channel 5 selected as input
      PRSCH5,
      --  PRS Channel 6 selected as input
      PRSCH6,
      --  PRS Channel 7 selected as input
      PRSCH7,
      --  PRS Channel 8 selected as input
      PRSCH8,
      --  PRS Channel 9 selected as input
      PRSCH9,
      --  PRS Channel 10 selected as input
      PRSCH10,
      --  PRS Channel 11 selected as input
      PRSCH11,
      --  PRS Channel 12 selected as input
      PRSCH12,
      --  PRS Channel 13 selected as input
      PRSCH13,
      --  PRS Channel 14 selected as input
      PRSCH14,
      --  PRS Channel 15 selected as input
      PRSCH15)
     with Size => 4;
   for CC1_CTRL_PRSSEL_Field use
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

   subtype CC1_CTRL_COMPBASE_Field is Interfaces.EFM32.Bit;
   subtype CC1_CTRL_COMPMASK_Field is Interfaces.EFM32.UInt5;
   subtype CC1_CTRL_DAYCC_Field is Interfaces.EFM32.Bit;

   --  CC Channel Control Register
   type CC1_CTRL_Register is record
      --  CC Channel Mode
      MODE           : CC1_CTRL_MODE_Field := Interfaces.EFM32.RTCC.OFF;
      --  Compare Match Output Action
      CMOA           : CC1_CTRL_CMOA_Field := Interfaces.EFM32.RTCC.PULSE;
      --  Input Capture Edge Select
      ICEDGE         : CC1_CTRL_ICEDGE_Field := Interfaces.EFM32.RTCC.RISING;
      --  Compare/Capture Channel PRS Input Channel Selection
      PRSSEL         : CC1_CTRL_PRSSEL_Field := Interfaces.EFM32.RTCC.PRSCH0;
      --  unspecified
      Reserved_10_10 : Interfaces.EFM32.Bit := 16#0#;
      --  Capture Compare Channel Comparison Base
      COMPBASE       : CC1_CTRL_COMPBASE_Field := 16#0#;
      --  Capture Compare Channel Comparison Mask
      COMPMASK       : CC1_CTRL_COMPMASK_Field := 16#0#;
      --  Day Capture/Compare Selection
      DAYCC          : CC1_CTRL_DAYCC_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.EFM32.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CC1_CTRL_Register use record
      MODE           at 0 range 0 .. 1;
      CMOA           at 0 range 2 .. 3;
      ICEDGE         at 0 range 4 .. 5;
      PRSSEL         at 0 range 6 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      COMPBASE       at 0 range 11 .. 11;
      COMPMASK       at 0 range 12 .. 16;
      DAYCC          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype CC1_TIME_SECU_Field is Interfaces.EFM32.UInt4;
   subtype CC1_TIME_SECT_Field is Interfaces.EFM32.UInt3;
   subtype CC1_TIME_MINU_Field is Interfaces.EFM32.UInt4;
   subtype CC1_TIME_MINT_Field is Interfaces.EFM32.UInt3;
   subtype CC1_TIME_HOURU_Field is Interfaces.EFM32.UInt4;
   subtype CC1_TIME_HOURT_Field is Interfaces.EFM32.UInt2;

   --  Capture/Compare Time Register
   type CC1_TIME_Register is record
      --  Seconds, Units
      SECU           : CC1_TIME_SECU_Field := 16#0#;
      --  Seconds, Tens
      SECT           : CC1_TIME_SECT_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Minutes, Units
      MINU           : CC1_TIME_MINU_Field := 16#0#;
      --  Minutes, Tens
      MINT           : CC1_TIME_MINT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit := 16#0#;
      --  Hours, Units
      HOURU          : CC1_TIME_HOURU_Field := 16#0#;
      --  Hours, Tens
      HOURT          : CC1_TIME_HOURT_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CC1_TIME_Register use record
      SECU           at 0 range 0 .. 3;
      SECT           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MINU           at 0 range 8 .. 11;
      MINT           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HOURU          at 0 range 16 .. 19;
      HOURT          at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CC1_DATE_DAYU_Field is Interfaces.EFM32.UInt4;
   subtype CC1_DATE_DAYT_Field is Interfaces.EFM32.UInt2;
   subtype CC1_DATE_MONTHU_Field is Interfaces.EFM32.UInt4;
   subtype CC1_DATE_MONTHT_Field is Interfaces.EFM32.Bit;

   --  Capture/Compare Date Register
   type CC1_DATE_Register is record
      --  Day of Month/week, Units
      DAYU           : CC1_DATE_DAYU_Field := 16#0#;
      --  Day of Month/week, Tens
      DAYT           : CC1_DATE_DAYT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Month, Units
      MONTHU         : CC1_DATE_MONTHU_Field := 16#0#;
      --  Month, Tens
      MONTHT         : CC1_DATE_MONTHT_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.EFM32.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CC1_DATE_Register use record
      DAYU           at 0 range 0 .. 3;
      DAYT           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MONTHU         at 0 range 8 .. 11;
      MONTHT         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   --  CC Channel Mode
   type CC2_CTRL_MODE_Field is
     (--  Compare/Capture channel turned off
      OFF,
      --  Input capture
      INPUTCAPTURE,
      --  Output compare
      OUTPUTCOMPARE)
     with Size => 2;
   for CC2_CTRL_MODE_Field use
     (OFF => 0,
      INPUTCAPTURE => 1,
      OUTPUTCOMPARE => 2);

   --  Compare Match Output Action
   type CC2_CTRL_CMOA_Field is
     (--  A single clock cycle pulse is generated on output
      PULSE,
      --  Toggle output on compare match
      TOGGLE,
      --  Clear output on compare match
      CLEAR,
      --  Set output on compare match
      SET)
     with Size => 2;
   for CC2_CTRL_CMOA_Field use
     (PULSE => 0,
      TOGGLE => 1,
      CLEAR => 2,
      SET => 3);

   --  Input Capture Edge Select
   type CC2_CTRL_ICEDGE_Field is
     (--  Rising edges detected
      RISING,
      --  Falling edges detected
      FALLING,
      --  Both edges detected
      BOTH,
      --  No edge detection, signal is left as it is
      NONE)
     with Size => 2;
   for CC2_CTRL_ICEDGE_Field use
     (RISING => 0,
      FALLING => 1,
      BOTH => 2,
      NONE => 3);

   --  Compare/Capture Channel PRS Input Channel Selection
   type CC2_CTRL_PRSSEL_Field is
     (--  PRS Channel 0 selected as input
      PRSCH0,
      --  PRS Channel 1 selected as input
      PRSCH1,
      --  PRS Channel 2 selected as input
      PRSCH2,
      --  PRS Channel 3 selected as input
      PRSCH3,
      --  PRS Channel 4 selected as input
      PRSCH4,
      --  PRS Channel 5 selected as input
      PRSCH5,
      --  PRS Channel 6 selected as input
      PRSCH6,
      --  PRS Channel 7 selected as input
      PRSCH7,
      --  PRS Channel 8 selected as input
      PRSCH8,
      --  PRS Channel 9 selected as input
      PRSCH9,
      --  PRS Channel 10 selected as input
      PRSCH10,
      --  PRS Channel 11 selected as input
      PRSCH11,
      --  PRS Channel 12 selected as input
      PRSCH12,
      --  PRS Channel 13 selected as input
      PRSCH13,
      --  PRS Channel 14 selected as input
      PRSCH14,
      --  PRS Channel 15 selected as input
      PRSCH15)
     with Size => 4;
   for CC2_CTRL_PRSSEL_Field use
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

   subtype CC2_CTRL_COMPBASE_Field is Interfaces.EFM32.Bit;
   subtype CC2_CTRL_COMPMASK_Field is Interfaces.EFM32.UInt5;
   subtype CC2_CTRL_DAYCC_Field is Interfaces.EFM32.Bit;

   --  CC Channel Control Register
   type CC2_CTRL_Register is record
      --  CC Channel Mode
      MODE           : CC2_CTRL_MODE_Field := Interfaces.EFM32.RTCC.OFF;
      --  Compare Match Output Action
      CMOA           : CC2_CTRL_CMOA_Field := Interfaces.EFM32.RTCC.PULSE;
      --  Input Capture Edge Select
      ICEDGE         : CC2_CTRL_ICEDGE_Field := Interfaces.EFM32.RTCC.RISING;
      --  Compare/Capture Channel PRS Input Channel Selection
      PRSSEL         : CC2_CTRL_PRSSEL_Field := Interfaces.EFM32.RTCC.PRSCH0;
      --  unspecified
      Reserved_10_10 : Interfaces.EFM32.Bit := 16#0#;
      --  Capture Compare Channel Comparison Base
      COMPBASE       : CC2_CTRL_COMPBASE_Field := 16#0#;
      --  Capture Compare Channel Comparison Mask
      COMPMASK       : CC2_CTRL_COMPMASK_Field := 16#0#;
      --  Day Capture/Compare Selection
      DAYCC          : CC2_CTRL_DAYCC_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.EFM32.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CC2_CTRL_Register use record
      MODE           at 0 range 0 .. 1;
      CMOA           at 0 range 2 .. 3;
      ICEDGE         at 0 range 4 .. 5;
      PRSSEL         at 0 range 6 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      COMPBASE       at 0 range 11 .. 11;
      COMPMASK       at 0 range 12 .. 16;
      DAYCC          at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype CC2_TIME_SECU_Field is Interfaces.EFM32.UInt4;
   subtype CC2_TIME_SECT_Field is Interfaces.EFM32.UInt3;
   subtype CC2_TIME_MINU_Field is Interfaces.EFM32.UInt4;
   subtype CC2_TIME_MINT_Field is Interfaces.EFM32.UInt3;
   subtype CC2_TIME_HOURU_Field is Interfaces.EFM32.UInt4;
   subtype CC2_TIME_HOURT_Field is Interfaces.EFM32.UInt2;

   --  Capture/Compare Time Register
   type CC2_TIME_Register is record
      --  Seconds, Units
      SECU           : CC2_TIME_SECU_Field := 16#0#;
      --  Seconds, Tens
      SECT           : CC2_TIME_SECT_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Minutes, Units
      MINU           : CC2_TIME_MINU_Field := 16#0#;
      --  Minutes, Tens
      MINT           : CC2_TIME_MINT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit := 16#0#;
      --  Hours, Units
      HOURU          : CC2_TIME_HOURU_Field := 16#0#;
      --  Hours, Tens
      HOURT          : CC2_TIME_HOURT_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CC2_TIME_Register use record
      SECU           at 0 range 0 .. 3;
      SECT           at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      MINU           at 0 range 8 .. 11;
      MINT           at 0 range 12 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      HOURU          at 0 range 16 .. 19;
      HOURT          at 0 range 20 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CC2_DATE_DAYU_Field is Interfaces.EFM32.UInt4;
   subtype CC2_DATE_DAYT_Field is Interfaces.EFM32.UInt2;
   subtype CC2_DATE_MONTHU_Field is Interfaces.EFM32.UInt4;
   subtype CC2_DATE_MONTHT_Field is Interfaces.EFM32.Bit;

   --  Capture/Compare Date Register
   type CC2_DATE_Register is record
      --  Day of Month/week, Units
      DAYU           : CC2_DATE_DAYU_Field := 16#0#;
      --  Day of Month/week, Tens
      DAYT           : CC2_DATE_DAYT_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Month, Units
      MONTHU         : CC2_DATE_MONTHU_Field := 16#0#;
      --  Month, Tens
      MONTHT         : CC2_DATE_MONTHT_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : Interfaces.EFM32.UInt19 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CC2_DATE_Register use record
      DAYU           at 0 range 0 .. 3;
      DAYT           at 0 range 4 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      MONTHU         at 0 range 8 .. 11;
      MONTHT         at 0 range 12 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  RTCC
   type RTCC_Peripheral is record
      --  Control Register
      CTRL      : aliased CTRL_Register;
      --  Pre-Counter Value Register
      PRECNT    : aliased PRECNT_Register;
      --  Counter Value Register
      CNT       : aliased Interfaces.EFM32.UInt32;
      --  Combined Pre-Counter and Counter Value Register
      COMBCNT   : aliased COMBCNT_Register;
      --  Time of Day Register
      TIME      : aliased TIME_Register;
      --  Date Register
      DATE      : aliased DATE_Register;
      --  RTCC Interrupt Flags
      IF_k      : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS       : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC       : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN       : aliased IEN_Register;
      --  Status Register
      STATUS    : aliased STATUS_Register;
      --  Command Register
      CMD       : aliased CMD_Register;
      --  Synchronization Busy Register
      SYNCBUSY  : aliased SYNCBUSY_Register;
      --  Retention RAM Power-down Register
      POWERDOWN : aliased POWERDOWN_Register;
      --  Configuration Lock Register
      LOCK      : aliased LOCK_Register;
      --  Wake Up Enable
      EM4WUEN   : aliased EM4WUEN_Register;
      --  CC Channel Control Register
      CC0_CTRL  : aliased CC0_CTRL_Register;
      --  Capture/Compare Value Register
      CC0_CCV   : aliased Interfaces.EFM32.UInt32;
      --  Capture/Compare Time Register
      CC0_TIME  : aliased CC0_TIME_Register;
      --  Capture/Compare Date Register
      CC0_DATE  : aliased CC0_DATE_Register;
      --  CC Channel Control Register
      CC1_CTRL  : aliased CC1_CTRL_Register;
      --  Capture/Compare Value Register
      CC1_CCV   : aliased Interfaces.EFM32.UInt32;
      --  Capture/Compare Time Register
      CC1_TIME  : aliased CC1_TIME_Register;
      --  Capture/Compare Date Register
      CC1_DATE  : aliased CC1_DATE_Register;
      --  CC Channel Control Register
      CC2_CTRL  : aliased CC2_CTRL_Register;
      --  Capture/Compare Value Register
      CC2_CCV   : aliased Interfaces.EFM32.UInt32;
      --  Capture/Compare Time Register
      CC2_TIME  : aliased CC2_TIME_Register;
      --  Capture/Compare Date Register
      CC2_DATE  : aliased CC2_DATE_Register;
      --  Retention Register
      RET0_REG  : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET1_REG  : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET2_REG  : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET3_REG  : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET4_REG  : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET5_REG  : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET6_REG  : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET7_REG  : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET8_REG  : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET9_REG  : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET10_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET11_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET12_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET13_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET14_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET15_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET16_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET17_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET18_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET19_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET20_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET21_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET22_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET23_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET24_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET25_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET26_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET27_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET28_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET29_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET30_REG : aliased Interfaces.EFM32.UInt32;
      --  Retention Register
      RET31_REG : aliased Interfaces.EFM32.UInt32;
   end record
     with Volatile;

   for RTCC_Peripheral use record
      CTRL      at 16#0# range 0 .. 31;
      PRECNT    at 16#4# range 0 .. 31;
      CNT       at 16#8# range 0 .. 31;
      COMBCNT   at 16#C# range 0 .. 31;
      TIME      at 16#10# range 0 .. 31;
      DATE      at 16#14# range 0 .. 31;
      IF_k      at 16#18# range 0 .. 31;
      IFS       at 16#1C# range 0 .. 31;
      IFC       at 16#20# range 0 .. 31;
      IEN       at 16#24# range 0 .. 31;
      STATUS    at 16#28# range 0 .. 31;
      CMD       at 16#2C# range 0 .. 31;
      SYNCBUSY  at 16#30# range 0 .. 31;
      POWERDOWN at 16#34# range 0 .. 31;
      LOCK      at 16#38# range 0 .. 31;
      EM4WUEN   at 16#3C# range 0 .. 31;
      CC0_CTRL  at 16#40# range 0 .. 31;
      CC0_CCV   at 16#44# range 0 .. 31;
      CC0_TIME  at 16#48# range 0 .. 31;
      CC0_DATE  at 16#4C# range 0 .. 31;
      CC1_CTRL  at 16#50# range 0 .. 31;
      CC1_CCV   at 16#54# range 0 .. 31;
      CC1_TIME  at 16#58# range 0 .. 31;
      CC1_DATE  at 16#5C# range 0 .. 31;
      CC2_CTRL  at 16#60# range 0 .. 31;
      CC2_CCV   at 16#64# range 0 .. 31;
      CC2_TIME  at 16#68# range 0 .. 31;
      CC2_DATE  at 16#6C# range 0 .. 31;
      RET0_REG  at 16#104# range 0 .. 31;
      RET1_REG  at 16#108# range 0 .. 31;
      RET2_REG  at 16#10C# range 0 .. 31;
      RET3_REG  at 16#110# range 0 .. 31;
      RET4_REG  at 16#114# range 0 .. 31;
      RET5_REG  at 16#118# range 0 .. 31;
      RET6_REG  at 16#11C# range 0 .. 31;
      RET7_REG  at 16#120# range 0 .. 31;
      RET8_REG  at 16#124# range 0 .. 31;
      RET9_REG  at 16#128# range 0 .. 31;
      RET10_REG at 16#12C# range 0 .. 31;
      RET11_REG at 16#130# range 0 .. 31;
      RET12_REG at 16#134# range 0 .. 31;
      RET13_REG at 16#138# range 0 .. 31;
      RET14_REG at 16#13C# range 0 .. 31;
      RET15_REG at 16#140# range 0 .. 31;
      RET16_REG at 16#144# range 0 .. 31;
      RET17_REG at 16#148# range 0 .. 31;
      RET18_REG at 16#14C# range 0 .. 31;
      RET19_REG at 16#150# range 0 .. 31;
      RET20_REG at 16#154# range 0 .. 31;
      RET21_REG at 16#158# range 0 .. 31;
      RET22_REG at 16#15C# range 0 .. 31;
      RET23_REG at 16#160# range 0 .. 31;
      RET24_REG at 16#164# range 0 .. 31;
      RET25_REG at 16#168# range 0 .. 31;
      RET26_REG at 16#16C# range 0 .. 31;
      RET27_REG at 16#170# range 0 .. 31;
      RET28_REG at 16#174# range 0 .. 31;
      RET29_REG at 16#178# range 0 .. 31;
      RET30_REG at 16#17C# range 0 .. 31;
      RET31_REG at 16#180# range 0 .. 31;
   end record;

   --  RTCC
   RTCC_Periph : aliased RTCC_Peripheral
     with Import, Address => RTCC_Base;

end Interfaces.EFM32.RTCC;
