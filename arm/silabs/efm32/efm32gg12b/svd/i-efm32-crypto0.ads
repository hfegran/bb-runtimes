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

--  CRYPTO0
package Interfaces.EFM32.CRYPTO0 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_AES_Field is Interfaces.EFM32.Bit;
   subtype CTRL_KEYBUFDIS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_SHA_Field is Interfaces.EFM32.Bit;
   subtype CTRL_NOBUSYSTALL_Field is Interfaces.EFM32.Bit;

   --  Increment Width
   type CTRL_INCWIDTH_Field is
     (--  Byte 15 in DATA1 is used for the increment function.
      INCWIDTH1,
      --  Bytes 14 and 15 in DATA1 are used for the increment function.
      INCWIDTH2,
      --  Bytes 13 to 15 in DATA1 are used for the increment function.
      INCWIDTH3,
      --  Bytes 12 to 15 in DATA1 are used for the increment function.
      INCWIDTH4)
     with Size => 2;
   for CTRL_INCWIDTH_Field use
     (INCWIDTH1 => 0,
      INCWIDTH2 => 1,
      INCWIDTH3 => 2,
      INCWIDTH4 => 3);

   --  DMA0 Read Mode
   type CTRL_DMA0MODE_Field is
     (--  Target register is fully read/written during every DMA transaction
      FULL,
      --  Length Limited. When the current length, i.e. LENGTHA or LENGTHB indicates
--  that there are less bytes available than the register size, only length +
--  necessary zero padding is read. Zero padding is automatically added when
--  writing.
      LENLIMIT,
      --  Target register is fully read/written during every DMA transaction.
--  Bytewise DMA.
      FULLBYTE,
      --  Length Limited. When the current length, i.e. LENGTHA or LENGTHB indicates
--  that there are less bytes available than the register size, only length +
--  necessary zero padding is read. Bytewise DMA. Zero padding is automatically
--  added when writing.
      LENLIMITBYTE)
     with Size => 2;
   for CTRL_DMA0MODE_Field use
     (FULL => 0,
      LENLIMIT => 1,
      FULLBYTE => 2,
      LENLIMITBYTE => 3);

   --  DMA0 Read Register Select
   type CTRL_DMA0RSEL_Field is
     (DATA0,
      DDATA0,
      DDATA0BIG,
      QDATA0)
     with Size => 2;
   for CTRL_DMA0RSEL_Field use
     (DATA0 => 0,
      DDATA0 => 1,
      DDATA0BIG => 2,
      QDATA0 => 3);

   --  DMA1 Read Mode
   type CTRL_DMA1MODE_Field is
     (--  Target register is fully read/written during every DMA transaction
      FULL,
      --  Length Limited. When the current length, i.e. LENGTHA or LENGTHB indicates
--  that there are less bytes available than the register size, only length + 1
--  bytes + necessary zero padding is read. Zero padding is automatically added
--  when writing.
      LENLIMIT,
      --  Target register is fully read/written during every DMA transaction.
--  Bytewise DMA.
      FULLBYTE,
      --  Length Limited. When the current length, i.e. LENGTHA or LENGTHB indicates
--  that there are less bytes available than the register size, only length + 1
--  bytes + necessary zero padding is read. Bytewise DMA. Zero padding is
--  automatically added when writing.
      LENLIMITBYTE)
     with Size => 2;
   for CTRL_DMA1MODE_Field use
     (FULL => 0,
      LENLIMIT => 1,
      FULLBYTE => 2,
      LENLIMITBYTE => 3);

   --  DATA0 DMA Unaligned Read Register Select
   type CTRL_DMA1RSEL_Field is
     (DATA1,
      DDATA1,
      QDATA1,
      QDATA1BIG)
     with Size => 2;
   for CTRL_DMA1RSEL_Field use
     (DATA1 => 0,
      DDATA1 => 1,
      QDATA1 => 2,
      QDATA1BIG => 3);

   subtype CTRL_COMBDMA0WEREQ_Field is Interfaces.EFM32.Bit;

   --  Control Register
   type CTRL_Register is record
      --  AES Mode
      AES            : CTRL_AES_Field := 16#0#;
      --  Key Buffer Disable
      KEYBUFDIS      : CTRL_KEYBUFDIS_Field := 16#0#;
      --  SHA Mode
      SHA            : CTRL_SHA_Field := 16#0#;
      --  unspecified
      Reserved_3_9   : Interfaces.EFM32.UInt7 := 16#0#;
      --  No Stalling of Bus When Busy
      NOBUSYSTALL    : CTRL_NOBUSYSTALL_Field := 16#0#;
      --  unspecified
      Reserved_11_13 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Increment Width
      INCWIDTH       : CTRL_INCWIDTH_Field :=
                        Interfaces.EFM32.CRYPTO0.INCWIDTH1;
      --  DMA0 Read Mode
      DMA0MODE       : CTRL_DMA0MODE_Field := Interfaces.EFM32.CRYPTO0.FULL;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  DMA0 Read Register Select
      DMA0RSEL       : CTRL_DMA0RSEL_Field := Interfaces.EFM32.CRYPTO0.DATA0;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  DMA1 Read Mode
      DMA1MODE       : CTRL_DMA1MODE_Field := Interfaces.EFM32.CRYPTO0.FULL;
      --  unspecified
      Reserved_26_27 : Interfaces.EFM32.UInt2 := 16#0#;
      --  DATA0 DMA Unaligned Read Register Select
      DMA1RSEL       : CTRL_DMA1RSEL_Field := Interfaces.EFM32.CRYPTO0.DATA1;
      --  unspecified
      Reserved_30_30 : Interfaces.EFM32.Bit := 16#0#;
      --  Combined Data0 Write DMA Request
      COMBDMA0WEREQ  : CTRL_COMBDMA0WEREQ_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      AES            at 0 range 0 .. 0;
      KEYBUFDIS      at 0 range 1 .. 1;
      SHA            at 0 range 2 .. 2;
      Reserved_3_9   at 0 range 3 .. 9;
      NOBUSYSTALL    at 0 range 10 .. 10;
      Reserved_11_13 at 0 range 11 .. 13;
      INCWIDTH       at 0 range 14 .. 15;
      DMA0MODE       at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      DMA0RSEL       at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DMA1MODE       at 0 range 24 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      DMA1RSEL       at 0 range 28 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      COMBDMA0WEREQ  at 0 range 31 .. 31;
   end record;

   --  Modular Operation Modulus
   type WAC_MODULUS_Field is
     (--  Generic modulus. p = 2^256
      BIN256,
      --  Generic modulus. p = 2^128
      BIN128,
      --  Modulus for B-233 and K-233 ECC curves. p(t) = t^233 + t^74 + 1
      ECCBIN233P,
      --  Modulus for B-163 and K-163 ECC curves. p(t) = t^163 + t^7 + t^6 + t^3 + 1
      ECCBIN163P,
      --  Modulus for GCM. P(t) = t^128 + t^7 + t^2 + t + 1
      GCMBIN128,
      --  Modulus for P-256 ECC curve. p = 2^256 - 2^224 + 2^192 + 2^96 - 1
      ECCPRIME256P,
      --  Modulus for P-224 ECC curve. p = 2^224 - 2^96 - 1
      ECCPRIME224P,
      --  Modulus for P-192 ECC curve. p = 2^192 - 2^64 - 1
      ECCPRIME192P,
      --  P modulus for B-233 ECC curve
      ECCBIN233N,
      --  P modulus for K-233 ECC curve
      ECCBIN233KN,
      --  P modulus for B-163 ECC curve
      ECCBIN163N,
      --  P modulus for K-163 ECC curve
      ECCBIN163KN,
      --  P modulus for P-256 ECC curve
      ECCPRIME256N,
      --  P modulus for P-224 ECC curve
      ECCPRIME224N,
      --  P modulus for P-192 ECC curve
      ECCPRIME192N)
     with Size => 4;
   for WAC_MODULUS_Field use
     (BIN256 => 0,
      BIN128 => 1,
      ECCBIN233P => 2,
      ECCBIN163P => 3,
      GCMBIN128 => 4,
      ECCPRIME256P => 5,
      ECCPRIME224P => 6,
      ECCPRIME192P => 7,
      ECCBIN233N => 8,
      ECCBIN233KN => 9,
      ECCBIN163N => 10,
      ECCBIN163KN => 11,
      ECCPRIME256N => 12,
      ECCPRIME224N => 13,
      ECCPRIME192N => 14);

   subtype WAC_MODOP_Field is Interfaces.EFM32.Bit;

   --  Multiply Width
   type WAC_MULWIDTH_Field is
     (--  Multiply 256 bits
      MUL256,
      --  Multiply 128 bits
      MUL128,
      --  Same number of bits as specified by MODULUS
      MULMOD)
     with Size => 2;
   for WAC_MULWIDTH_Field use
     (MUL256 => 0,
      MUL128 => 1,
      MULMOD => 2);

   --  Result Width
   type WAC_RESULTWIDTH_Field is
     (--  Results have 256 bits
      Val_256BIT,
      --  Results have 128 bits
      Val_128BIT,
      --  Results have 260 bits. Upper bits of result can be read through DDATA0MSBS
--  in CRYPTO_STATUS
      Val_260BIT)
     with Size => 2;
   for WAC_RESULTWIDTH_Field use
     (Val_256BIT => 0,
      Val_128BIT => 1,
      Val_260BIT => 2);

   --  Wide Arithmetic Configuration
   type WAC_Register is record
      --  Modular Operation Modulus
      MODULUS        : WAC_MODULUS_Field := Interfaces.EFM32.CRYPTO0.BIN256;
      --  Modular Operation Field Type
      MODOP          : WAC_MODOP_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Multiply Width
      MULWIDTH       : WAC_MULWIDTH_Field := Interfaces.EFM32.CRYPTO0.MUL256;
      --  Result Width
      RESULTWIDTH    : WAC_RESULTWIDTH_Field :=
                        Interfaces.EFM32.CRYPTO0.Val_256BIT;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WAC_Register use record
      MODULUS        at 0 range 0 .. 3;
      MODOP          at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      MULWIDTH       at 0 range 8 .. 9;
      RESULTWIDTH    at 0 range 10 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype CMD_INSTR_Field is Interfaces.EFM32.Byte;
   subtype CMD_SEQSTART_Field is Interfaces.EFM32.Bit;
   subtype CMD_SEQSTOP_Field is Interfaces.EFM32.Bit;
   subtype CMD_SEQSTEP_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Execute Instruction
      INSTR          : CMD_INSTR_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Encryption/Decryption SEQUENCE Start
      SEQSTART       : CMD_SEQSTART_Field := 16#0#;
      --  Write-only. Sequence Stop
      SEQSTOP        : CMD_SEQSTOP_Field := 16#0#;
      --  Write-only. Sequence Step
      SEQSTEP        : CMD_SEQSTEP_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      INSTR          at 0 range 0 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      SEQSTART       at 0 range 9 .. 9;
      SEQSTOP        at 0 range 10 .. 10;
      SEQSTEP        at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype STATUS_SEQRUNNING_Field is Interfaces.EFM32.Bit;
   subtype STATUS_INSTRRUNNING_Field is Interfaces.EFM32.Bit;
   subtype STATUS_DMAACTIVE_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. AES SEQUENCE Running
      SEQRUNNING    : STATUS_SEQRUNNING_Field;
      --  Read-only. Action is Active
      INSTRRUNNING  : STATUS_INSTRRUNNING_Field;
      --  Read-only. DMA Action is Active
      DMAACTIVE     : STATUS_DMAACTIVE_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      SEQRUNNING    at 0 range 0 .. 0;
      INSTRRUNNING  at 0 range 1 .. 1;
      DMAACTIVE     at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  Data 0 Zero
   type DSTATUS_DATA0ZERO_Field is
     (--  In DATA0 bits 0 to 31 are all zero.
      ZERO0TO31,
      --  In DATA0 bits 32 to 63 are all zero.
      ZERO32TO63,
      --  In DATA0 bits 64 to 95 are all zero.
      ZERO64TO95,
      --  In DATA0 bits 96 to 127 are all zero.
      ZERO96TO127)
     with Size => 4;
   for DSTATUS_DATA0ZERO_Field use
     (ZERO0TO31 => 1,
      ZERO32TO63 => 2,
      ZERO64TO95 => 4,
      ZERO96TO127 => 8);

   subtype DSTATUS_DDATA0LSBS_Field is Interfaces.EFM32.UInt4;
   subtype DSTATUS_DDATA0MSBS_Field is Interfaces.EFM32.UInt4;
   subtype DSTATUS_DDATA1MSB_Field is Interfaces.EFM32.Bit;
   subtype DSTATUS_CARRY_Field is Interfaces.EFM32.Bit;

   --  Data Status Register
   type DSTATUS_Register is record
      --  Read-only. Data 0 Zero
      DATA0ZERO      : DSTATUS_DATA0ZERO_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.EFM32.UInt4;
      --  Read-only. LSBs in DDATA0
      DDATA0LSBS     : DSTATUS_DDATA0LSBS_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.EFM32.UInt4;
      --  Read-only. MSB in DDATA0
      DDATA0MSBS     : DSTATUS_DDATA0MSBS_Field;
      --  Read-only. MSB in DDATA1
      DDATA1MSB      : DSTATUS_DDATA1MSB_Field;
      --  unspecified
      Reserved_21_23 : Interfaces.EFM32.UInt3;
      --  Read-only. Carry From Arithmetic Operation
      CARRY          : DSTATUS_CARRY_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.EFM32.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSTATUS_Register use record
      DATA0ZERO      at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DDATA0LSBS     at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DDATA0MSBS     at 0 range 16 .. 19;
      DDATA1MSB      at 0 range 20 .. 20;
      Reserved_21_23 at 0 range 21 .. 23;
      CARRY          at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  Selected ALU Operand 0
   type CSTATUS_V0_Field is
     (DDATA0,
      DDATA1,
      DDATA2,
      DDATA3,
      DDATA4,
      DATA0,
      DATA1,
      DATA2)
     with Size => 3;
   for CSTATUS_V0_Field use
     (DDATA0 => 0,
      DDATA1 => 1,
      DDATA2 => 2,
      DDATA3 => 3,
      DDATA4 => 4,
      DATA0 => 5,
      DATA1 => 6,
      DATA2 => 7);

   --  Selected ALU Operand 1
   type CSTATUS_V1_Field is
     (DDATA0,
      DDATA1,
      DDATA2,
      DDATA3,
      DDATA4,
      DATA0,
      DATA1,
      DATA2)
     with Size => 3;
   for CSTATUS_V1_Field use
     (DDATA0 => 0,
      DDATA1 => 1,
      DDATA2 => 2,
      DDATA3 => 3,
      DDATA4 => 4,
      DATA0 => 5,
      DATA1 => 6,
      DATA2 => 7);

   subtype CSTATUS_SEQPART_Field is Interfaces.EFM32.Bit;
   subtype CSTATUS_SEQSKIP_Field is Interfaces.EFM32.Bit;
   subtype CSTATUS_SEQIP_Field is Interfaces.EFM32.UInt5;

   --  Control Status Register
   type CSTATUS_Register is record
      --  Read-only. Selected ALU Operand 0
      V0             : CSTATUS_V0_Field;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5;
      --  Read-only. Selected ALU Operand 1
      V1             : CSTATUS_V1_Field;
      --  unspecified
      Reserved_11_15 : Interfaces.EFM32.UInt5;
      --  Read-only. Sequence Part
      SEQPART        : CSTATUS_SEQPART_Field;
      --  Read-only. Sequence Skip Next Instruction
      SEQSKIP        : CSTATUS_SEQSKIP_Field;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2;
      --  Read-only. Sequence Next Instruction Pointer
      SEQIP          : CSTATUS_SEQIP_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.EFM32.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CSTATUS_Register use record
      V0             at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      V1             at 0 range 8 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      SEQPART        at 0 range 16 .. 16;
      SEQSKIP        at 0 range 17 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      SEQIP          at 0 range 20 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype SEQCTRL_LENGTHA_Field is Interfaces.EFM32.UInt14;

   --  Size of Data Blocks
   type SEQCTRL_BLOCKSIZE_Field is
     (--  A block is 16 bytes long
      Val_16BYTES,
      --  A block is 32 bytes long
      Val_32BYTES,
      --  A block is 64 bytes long
      Val_64BYTES)
     with Size => 2;
   for SEQCTRL_BLOCKSIZE_Field use
     (Val_16BYTES => 0,
      Val_32BYTES => 1,
      Val_64BYTES => 2);

   subtype SEQCTRL_DMA0SKIP_Field is Interfaces.EFM32.UInt2;
   subtype SEQCTRL_DMA1SKIP_Field is Interfaces.EFM32.UInt2;
   subtype SEQCTRL_DMA0PRESA_Field is Interfaces.EFM32.Bit;
   subtype SEQCTRL_DMA1PRESA_Field is Interfaces.EFM32.Bit;
   subtype SEQCTRL_HALT_Field is Interfaces.EFM32.Bit;

   --  Sequence Control
   type SEQCTRL_Register is record
      --  Buffer Length a in Bytes
      LENGTHA        : SEQCTRL_LENGTHA_Field := 16#0#;
      --  unspecified
      Reserved_14_19 : Interfaces.EFM32.UInt6 := 16#0#;
      --  Size of Data Blocks
      BLOCKSIZE      : SEQCTRL_BLOCKSIZE_Field :=
                        Interfaces.EFM32.CRYPTO0.Val_16BYTES;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  DMA0 Skip
      DMA0SKIP       : SEQCTRL_DMA0SKIP_Field := 16#0#;
      --  DMA1 Skip
      DMA1SKIP       : SEQCTRL_DMA1SKIP_Field := 16#0#;
      --  DMA0 Preserve a
      DMA0PRESA      : SEQCTRL_DMA0PRESA_Field := 16#0#;
      --  DMA1 Preserve a
      DMA1PRESA      : SEQCTRL_DMA1PRESA_Field := 16#0#;
      --  unspecified
      Reserved_30_30 : Interfaces.EFM32.Bit := 16#0#;
      --  Halt Sequence
      HALT           : SEQCTRL_HALT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEQCTRL_Register use record
      LENGTHA        at 0 range 0 .. 13;
      Reserved_14_19 at 0 range 14 .. 19;
      BLOCKSIZE      at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      DMA0SKIP       at 0 range 24 .. 25;
      DMA1SKIP       at 0 range 26 .. 27;
      DMA0PRESA      at 0 range 28 .. 28;
      DMA1PRESA      at 0 range 29 .. 29;
      Reserved_30_30 at 0 range 30 .. 30;
      HALT           at 0 range 31 .. 31;
   end record;

   subtype SEQCTRLB_LENGTHB_Field is Interfaces.EFM32.UInt14;
   subtype SEQCTRLB_DMA0PRESB_Field is Interfaces.EFM32.Bit;
   subtype SEQCTRLB_DMA1PRESB_Field is Interfaces.EFM32.Bit;

   --  Sequence Control B
   type SEQCTRLB_Register is record
      --  Buffer Length B in Bytes
      LENGTHB        : SEQCTRLB_LENGTHB_Field := 16#0#;
      --  unspecified
      Reserved_14_27 : Interfaces.EFM32.UInt14 := 16#0#;
      --  DMA0 Preserve B
      DMA0PRESB      : SEQCTRLB_DMA0PRESB_Field := 16#0#;
      --  DMA1 Preserve B
      DMA1PRESB      : SEQCTRLB_DMA1PRESB_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEQCTRLB_Register use record
      LENGTHB        at 0 range 0 .. 13;
      Reserved_14_27 at 0 range 14 .. 27;
      DMA0PRESB      at 0 range 28 .. 28;
      DMA1PRESB      at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype IF_INSTRDONE_Field is Interfaces.EFM32.Bit;
   subtype IF_SEQDONE_Field is Interfaces.EFM32.Bit;

   --  AES Interrupt Flags
   type IF_Register is record
      --  Read-only. Instruction Done
      INSTRDONE     : IF_INSTRDONE_Field;
      --  Read-only. Sequence Done
      SEQDONE       : IF_SEQDONE_Field;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      INSTRDONE     at 0 range 0 .. 0;
      SEQDONE       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype IFS_INSTRDONE_Field is Interfaces.EFM32.Bit;
   subtype IFS_SEQDONE_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set INSTRDONE Interrupt Flag
      INSTRDONE     : IFS_INSTRDONE_Field := 16#0#;
      --  Write-only. Set SEQDONE Interrupt Flag
      SEQDONE       : IFS_SEQDONE_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      INSTRDONE     at 0 range 0 .. 0;
      SEQDONE       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype IFC_INSTRDONE_Field is Interfaces.EFM32.Bit;
   subtype IFC_SEQDONE_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear INSTRDONE Interrupt Flag
      INSTRDONE     : IFC_INSTRDONE_Field := 16#0#;
      --  Write-only. Clear SEQDONE Interrupt Flag
      SEQDONE       : IFC_SEQDONE_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      INSTRDONE     at 0 range 0 .. 0;
      SEQDONE       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype IEN_INSTRDONE_Field is Interfaces.EFM32.Bit;
   subtype IEN_SEQDONE_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  INSTRDONE Interrupt Enable
      INSTRDONE     : IEN_INSTRDONE_Field := 16#0#;
      --  SEQDONE Interrupt Enable
      SEQDONE       : IEN_SEQDONE_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      INSTRDONE     at 0 range 0 .. 0;
      SEQDONE       at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   --  SEQ0_INSTR array element
   subtype SEQ0_INSTR_Element is Interfaces.EFM32.Byte;

   --  SEQ0_INSTR array
   type SEQ0_INSTR_Field_Array is array (0 .. 3) of SEQ0_INSTR_Element
     with Component_Size => 8, Size => 32;

   --  Sequence Register 0
   type SEQ0_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INSTR as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  INSTR as an array
            Arr : SEQ0_INSTR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEQ0_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SEQ1_INSTR array element
   subtype SEQ1_INSTR_Element is Interfaces.EFM32.Byte;

   --  SEQ1_INSTR array
   type SEQ1_INSTR_Field_Array is array (4 .. 7) of SEQ1_INSTR_Element
     with Component_Size => 8, Size => 32;

   --  Sequence Register 1
   type SEQ1_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INSTR as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  INSTR as an array
            Arr : SEQ1_INSTR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEQ1_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SEQ2_INSTR array element
   subtype SEQ2_INSTR_Element is Interfaces.EFM32.Byte;

   --  SEQ2_INSTR array
   type SEQ2_INSTR_Field_Array is array (8 .. 11) of SEQ2_INSTR_Element
     with Component_Size => 8, Size => 32;

   --  Sequence Register 2
   type SEQ2_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INSTR as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  INSTR as an array
            Arr : SEQ2_INSTR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEQ2_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SEQ3_INSTR array element
   subtype SEQ3_INSTR_Element is Interfaces.EFM32.Byte;

   --  SEQ3_INSTR array
   type SEQ3_INSTR_Field_Array is array (12 .. 15) of SEQ3_INSTR_Element
     with Component_Size => 8, Size => 32;

   --  Sequence Register 3
   type SEQ3_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INSTR as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  INSTR as an array
            Arr : SEQ3_INSTR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEQ3_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  SEQ4_INSTR array element
   subtype SEQ4_INSTR_Element is Interfaces.EFM32.Byte;

   --  SEQ4_INSTR array
   type SEQ4_INSTR_Field_Array is array (16 .. 19) of SEQ4_INSTR_Element
     with Component_Size => 8, Size => 32;

   --  Sequence Register 4
   type SEQ4_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INSTR as a value
            Val : Interfaces.EFM32.UInt32;
         when True =>
            --  INSTR as an array
            Arr : SEQ4_INSTR_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SEQ4_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype DATA0BYTE_DATA0BYTE_Field is Interfaces.EFM32.Byte;

   --  DATA0 Register Byte Access
   type DATA0BYTE_Register is record
      --  *** Reading this field has side effects on other resources ***. Data
      --  0 Byte Access
      DATA0BYTE     : DATA0BYTE_DATA0BYTE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA0BYTE_Register use record
      DATA0BYTE     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA1BYTE_DATA1BYTE_Field is Interfaces.EFM32.Byte;

   --  DATA1 Register Byte Access
   type DATA1BYTE_Register is record
      --  *** Reading this field has side effects on other resources ***. Data
      --  1 Byte Access
      DATA1BYTE     : DATA1BYTE_DATA1BYTE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA1BYTE_Register use record
      DATA1BYTE     at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA0XORBYTE_DATA0XORBYTE_Field is Interfaces.EFM32.Byte;

   --  DATA0 Register Byte XOR Access
   type DATA0XORBYTE_Register is record
      --  *** Reading this field has side effects on other resources ***. Data
      --  0 XOR Byte Access
      DATA0XORBYTE  : DATA0XORBYTE_DATA0XORBYTE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA0XORBYTE_Register use record
      DATA0XORBYTE  at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA0BYTE12_DATA0BYTE12_Field is Interfaces.EFM32.Byte;

   --  DATA0 Register Byte 12 Access
   type DATA0BYTE12_Register is record
      --  Data 0 Byte 12 Access
      DATA0BYTE12   : DATA0BYTE12_DATA0BYTE12_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA0BYTE12_Register use record
      DATA0BYTE12   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA0BYTE13_DATA0BYTE13_Field is Interfaces.EFM32.Byte;

   --  DATA0 Register Byte 13 Access
   type DATA0BYTE13_Register is record
      --  Data 0 Byte 13 Access
      DATA0BYTE13   : DATA0BYTE13_DATA0BYTE13_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA0BYTE13_Register use record
      DATA0BYTE13   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA0BYTE14_DATA0BYTE14_Field is Interfaces.EFM32.Byte;

   --  DATA0 Register Byte 14 Access
   type DATA0BYTE14_Register is record
      --  Data 0 Byte 14 Access
      DATA0BYTE14   : DATA0BYTE14_DATA0BYTE14_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA0BYTE14_Register use record
      DATA0BYTE14   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DATA0BYTE15_DATA0BYTE15_Field is Interfaces.EFM32.Byte;

   --  DATA0 Register Byte 15 Access
   type DATA0BYTE15_Register is record
      --  Data 0 Byte 15 Access
      DATA0BYTE15   : DATA0BYTE15_DATA0BYTE15_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATA0BYTE15_Register use record
      DATA0BYTE15   at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DDATA0BYTE_DDATA0BYTE_Field is Interfaces.EFM32.Byte;

   --  DDATA0 Register Byte Access
   type DDATA0BYTE_Register is record
      --  *** Reading this field has side effects on other resources ***. Ddata
      --  0 Byte Access
      DDATA0BYTE    : DDATA0BYTE_DDATA0BYTE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDATA0BYTE_Register use record
      DDATA0BYTE    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DDATA1BYTE_DDATA1BYTE_Field is Interfaces.EFM32.Byte;

   --  DDATA1 Register Byte Access
   type DDATA1BYTE_Register is record
      --  *** Reading this field has side effects on other resources ***. Ddata
      --  1 Byte Access
      DDATA1BYTE    : DDATA1BYTE_DDATA1BYTE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDATA1BYTE_Register use record
      DDATA1BYTE    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype DDATA0BYTE32_DDATA0BYTE32_Field is Interfaces.EFM32.UInt4;

   --  DDATA0 Register Byte 32 Access
   type DDATA0BYTE32_Register is record
      --  Ddata 0 Byte 32 Access
      DDATA0BYTE32  : DDATA0BYTE32_DDATA0BYTE32_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DDATA0BYTE32_Register use record
      DDATA0BYTE32  at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype QDATA0BYTE_QDATA0BYTE_Field is Interfaces.EFM32.Byte;

   --  QDATA0 Register Byte Access
   type QDATA0BYTE_Register is record
      --  *** Reading this field has side effects on other resources ***. Qdata
      --  0 Byte Access
      QDATA0BYTE    : QDATA0BYTE_QDATA0BYTE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QDATA0BYTE_Register use record
      QDATA0BYTE    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype QDATA1BYTE_QDATA1BYTE_Field is Interfaces.EFM32.Byte;

   --  QDATA1 Register Byte Access
   type QDATA1BYTE_Register is record
      --  *** Reading this field has side effects on other resources ***. Qdata
      --  1 Byte Access
      QDATA1BYTE    : QDATA1BYTE_QDATA1BYTE_Field := 16#0#;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for QDATA1BYTE_Register use record
      QDATA1BYTE    at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  CRYPTO0
   type CRYPTO0_Peripheral is record
      --  Control Register
      CTRL         : aliased CTRL_Register;
      --  Wide Arithmetic Configuration
      WAC          : aliased WAC_Register;
      --  Command Register
      CMD          : aliased CMD_Register;
      --  Status Register
      STATUS       : aliased STATUS_Register;
      --  Data Status Register
      DSTATUS      : aliased DSTATUS_Register;
      --  Control Status Register
      CSTATUS      : aliased CSTATUS_Register;
      --  KEY Register Access
      KEY          : aliased Interfaces.EFM32.UInt32;
      --  KEY Buffer Register Access
      KEYBUF       : aliased Interfaces.EFM32.UInt32;
      --  Sequence Control
      SEQCTRL      : aliased SEQCTRL_Register;
      --  Sequence Control B
      SEQCTRLB     : aliased SEQCTRLB_Register;
      --  AES Interrupt Flags
      IF_k         : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS          : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC          : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN          : aliased IEN_Register;
      --  Sequence Register 0
      SEQ0         : aliased SEQ0_Register;
      --  Sequence Register 1
      SEQ1         : aliased SEQ1_Register;
      --  Sequence Register 2
      SEQ2         : aliased SEQ2_Register;
      --  Sequence Register 3
      SEQ3         : aliased SEQ3_Register;
      --  Sequence Register 4
      SEQ4         : aliased SEQ4_Register;
      --  DATA0 Register Access
      DATA0        : aliased Interfaces.EFM32.UInt32;
      --  DATA1 Register Access
      DATA1        : aliased Interfaces.EFM32.UInt32;
      --  DATA2 Register Access
      DATA2        : aliased Interfaces.EFM32.UInt32;
      --  DATA3 Register Access
      DATA3        : aliased Interfaces.EFM32.UInt32;
      --  DATA0XOR Register Access
      DATA0XOR     : aliased Interfaces.EFM32.UInt32;
      --  DATA0 Register Byte Access
      DATA0BYTE    : aliased DATA0BYTE_Register;
      --  DATA1 Register Byte Access
      DATA1BYTE    : aliased DATA1BYTE_Register;
      --  DATA0 Register Byte XOR Access
      DATA0XORBYTE : aliased DATA0XORBYTE_Register;
      --  DATA0 Register Byte 12 Access
      DATA0BYTE12  : aliased DATA0BYTE12_Register;
      --  DATA0 Register Byte 13 Access
      DATA0BYTE13  : aliased DATA0BYTE13_Register;
      --  DATA0 Register Byte 14 Access
      DATA0BYTE14  : aliased DATA0BYTE14_Register;
      --  DATA0 Register Byte 15 Access
      DATA0BYTE15  : aliased DATA0BYTE15_Register;
      --  DDATA0 Register Access
      DDATA0       : aliased Interfaces.EFM32.UInt32;
      --  DDATA1 Register Access
      DDATA1       : aliased Interfaces.EFM32.UInt32;
      --  DDATA2 Register Access
      DDATA2       : aliased Interfaces.EFM32.UInt32;
      --  DDATA3 Register Access
      DDATA3       : aliased Interfaces.EFM32.UInt32;
      --  DDATA4 Register Access
      DDATA4       : aliased Interfaces.EFM32.UInt32;
      --  DDATA0 Register Big Endian Access
      DDATA0BIG    : aliased Interfaces.EFM32.UInt32;
      --  DDATA0 Register Byte Access
      DDATA0BYTE   : aliased DDATA0BYTE_Register;
      --  DDATA1 Register Byte Access
      DDATA1BYTE   : aliased DDATA1BYTE_Register;
      --  DDATA0 Register Byte 32 Access
      DDATA0BYTE32 : aliased DDATA0BYTE32_Register;
      --  QDATA0 Register Access
      QDATA0       : aliased Interfaces.EFM32.UInt32;
      --  QDATA1 Register Access
      QDATA1       : aliased Interfaces.EFM32.UInt32;
      --  QDATA1 Register Big Endian Access
      QDATA1BIG    : aliased Interfaces.EFM32.UInt32;
      --  QDATA0 Register Byte Access
      QDATA0BYTE   : aliased QDATA0BYTE_Register;
      --  QDATA1 Register Byte Access
      QDATA1BYTE   : aliased QDATA1BYTE_Register;
   end record
     with Volatile;

   for CRYPTO0_Peripheral use record
      CTRL         at 16#0# range 0 .. 31;
      WAC          at 16#4# range 0 .. 31;
      CMD          at 16#8# range 0 .. 31;
      STATUS       at 16#10# range 0 .. 31;
      DSTATUS      at 16#14# range 0 .. 31;
      CSTATUS      at 16#18# range 0 .. 31;
      KEY          at 16#20# range 0 .. 31;
      KEYBUF       at 16#24# range 0 .. 31;
      SEQCTRL      at 16#30# range 0 .. 31;
      SEQCTRLB     at 16#34# range 0 .. 31;
      IF_k         at 16#40# range 0 .. 31;
      IFS          at 16#44# range 0 .. 31;
      IFC          at 16#48# range 0 .. 31;
      IEN          at 16#4C# range 0 .. 31;
      SEQ0         at 16#50# range 0 .. 31;
      SEQ1         at 16#54# range 0 .. 31;
      SEQ2         at 16#58# range 0 .. 31;
      SEQ3         at 16#5C# range 0 .. 31;
      SEQ4         at 16#60# range 0 .. 31;
      DATA0        at 16#80# range 0 .. 31;
      DATA1        at 16#84# range 0 .. 31;
      DATA2        at 16#88# range 0 .. 31;
      DATA3        at 16#8C# range 0 .. 31;
      DATA0XOR     at 16#A0# range 0 .. 31;
      DATA0BYTE    at 16#B0# range 0 .. 31;
      DATA1BYTE    at 16#B4# range 0 .. 31;
      DATA0XORBYTE at 16#BC# range 0 .. 31;
      DATA0BYTE12  at 16#C0# range 0 .. 31;
      DATA0BYTE13  at 16#C4# range 0 .. 31;
      DATA0BYTE14  at 16#C8# range 0 .. 31;
      DATA0BYTE15  at 16#CC# range 0 .. 31;
      DDATA0       at 16#100# range 0 .. 31;
      DDATA1       at 16#104# range 0 .. 31;
      DDATA2       at 16#108# range 0 .. 31;
      DDATA3       at 16#10C# range 0 .. 31;
      DDATA4       at 16#110# range 0 .. 31;
      DDATA0BIG    at 16#130# range 0 .. 31;
      DDATA0BYTE   at 16#140# range 0 .. 31;
      DDATA1BYTE   at 16#144# range 0 .. 31;
      DDATA0BYTE32 at 16#148# range 0 .. 31;
      QDATA0       at 16#180# range 0 .. 31;
      QDATA1       at 16#184# range 0 .. 31;
      QDATA1BIG    at 16#1A4# range 0 .. 31;
      QDATA0BYTE   at 16#1C0# range 0 .. 31;
      QDATA1BYTE   at 16#1C4# range 0 .. 31;
   end record;

   --  CRYPTO0
   CRYPTO0_Periph : aliased CRYPTO0_Peripheral
     with Import, Address => CRYPTO0_Base;

end Interfaces.EFM32.CRYPTO0;
