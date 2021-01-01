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

--  WTIMER1
package Interfaces.EFM32.WTIMER1 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Timer Mode
   type CTRL_MODE_Field is
     (--  Up-count mode
      UP,
      --  Down-count mode
      DOWN,
      --  Up/down-count mode
      UPDOWN,
      --  Quadrature decoder mode
      QDEC)
     with Size => 2;
   for CTRL_MODE_Field use
     (UP => 0,
      DOWN => 1,
      UPDOWN => 2,
      QDEC => 3);

   subtype CTRL_SYNC_Field is Interfaces.EFM32.Bit;
   subtype CTRL_OSMEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_QDM_Field is Interfaces.EFM32.Bit;
   subtype CTRL_DEBUGRUN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_DMACLRACT_Field is Interfaces.EFM32.Bit;

   --  Timer Rising Input Edge Action
   type CTRL_RISEA_Field is
     (--  No action
      NONE,
      --  Start counter without reload
      START,
      --  Stop counter without reload
      STOP,
      --  Reload and start counter
      RELOADSTART)
     with Size => 2;
   for CTRL_RISEA_Field use
     (NONE => 0,
      START => 1,
      STOP => 2,
      RELOADSTART => 3);

   --  Timer Falling Input Edge Action
   type CTRL_FALLA_Field is
     (--  No action
      NONE,
      --  Start counter without reload
      START,
      --  Stop counter without reload
      STOP,
      --  Reload and start counter
      RELOADSTART)
     with Size => 2;
   for CTRL_FALLA_Field use
     (NONE => 0,
      START => 1,
      STOP => 2,
      RELOADSTART => 3);

   subtype CTRL_X2CNT_Field is Interfaces.EFM32.Bit;
   subtype CTRL_DISSYNCOUT_Field is Interfaces.EFM32.Bit;

   --  Clock Source Select
   type CTRL_CLKSEL_Field is
     (--  Prescaled HFPERCLK
      PRESCHFPERCLK,
      --  Compare/Capture Channel 1 Input
      CC1,
      --  Timer is clocked by underflow(down-count) or overflow(up-count) in the
--  lower numbered neighbor Timer
      TIMEROUF)
     with Size => 2;
   for CTRL_CLKSEL_Field use
     (PRESCHFPERCLK => 0,
      CC1 => 1,
      TIMEROUF => 2);

   --  Prescaler Setting
   type CTRL_PRESC_Field is
     (--  The HFPERCLK is undivided
      DIV1,
      --  The HFPERCLK is divided by 2
      DIV2,
      --  The HFPERCLK is divided by 4
      DIV4,
      --  The HFPERCLK is divided by 8
      DIV8,
      --  The HFPERCLK is divided by 16
      DIV16,
      --  The HFPERCLK is divided by 32
      DIV32,
      --  The HFPERCLK is divided by 64
      DIV64,
      --  The HFPERCLK is divided by 128
      DIV128,
      --  The HFPERCLK is divided by 256
      DIV256,
      --  The HFPERCLK is divided by 512
      DIV512,
      --  The HFPERCLK is divided by 1024
      DIV1024)
     with Size => 4;
   for CTRL_PRESC_Field use
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
      DIV1024 => 10);

   subtype CTRL_ATI_Field is Interfaces.EFM32.Bit;
   subtype CTRL_RSSCOIST_Field is Interfaces.EFM32.Bit;

   --  Control Register
   type CTRL_Register is record
      --  Timer Mode
      MODE           : CTRL_MODE_Field := Interfaces.EFM32.WTIMER1.UP;
      --  unspecified
      Reserved_2_2   : Interfaces.EFM32.Bit := 16#0#;
      --  Timer Start/Stop/Reload Synchronization
      SYNC           : CTRL_SYNC_Field := 16#0#;
      --  One-shot Mode Enable
      OSMEN          : CTRL_OSMEN_Field := 16#0#;
      --  Quadrature Decoder Mode Selection
      QDM            : CTRL_QDM_Field := 16#0#;
      --  Debug Mode Run Enable
      DEBUGRUN       : CTRL_DEBUGRUN_Field := 16#0#;
      --  DMA Request Clear on Active
      DMACLRACT      : CTRL_DMACLRACT_Field := 16#0#;
      --  Timer Rising Input Edge Action
      RISEA          : CTRL_RISEA_Field := Interfaces.EFM32.WTIMER1.NONE;
      --  Timer Falling Input Edge Action
      FALLA          : CTRL_FALLA_Field := Interfaces.EFM32.WTIMER1.NONE;
      --  unspecified
      Reserved_12_12 : Interfaces.EFM32.Bit := 16#0#;
      --  2x Count Mode
      X2CNT          : CTRL_X2CNT_Field := 16#0#;
      --  Disable Timer From Start/Stop/Reload Other Synchronized Timers
      DISSYNCOUT     : CTRL_DISSYNCOUT_Field := 16#0#;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit := 16#0#;
      --  Clock Source Select
      CLKSEL         : CTRL_CLKSEL_Field :=
                        Interfaces.EFM32.WTIMER1.PRESCHFPERCLK;
      --  unspecified
      Reserved_18_23 : Interfaces.EFM32.UInt6 := 16#0#;
      --  Prescaler Setting
      PRESC          : CTRL_PRESC_Field := Interfaces.EFM32.WTIMER1.DIV1;
      --  Always Track Inputs
      ATI            : CTRL_ATI_Field := 16#0#;
      --  Reload-Start Sets Compare Output Initial State
      RSSCOIST       : CTRL_RSSCOIST_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      MODE           at 0 range 0 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      SYNC           at 0 range 3 .. 3;
      OSMEN          at 0 range 4 .. 4;
      QDM            at 0 range 5 .. 5;
      DEBUGRUN       at 0 range 6 .. 6;
      DMACLRACT      at 0 range 7 .. 7;
      RISEA          at 0 range 8 .. 9;
      FALLA          at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      X2CNT          at 0 range 13 .. 13;
      DISSYNCOUT     at 0 range 14 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      CLKSEL         at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      PRESC          at 0 range 24 .. 27;
      ATI            at 0 range 28 .. 28;
      RSSCOIST       at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype CMD_START_Field is Interfaces.EFM32.Bit;
   subtype CMD_STOP_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Start Timer
      START         : CMD_START_Field := 16#0#;
      --  Write-only. Stop Timer
      STOP          : CMD_STOP_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      START         at 0 range 0 .. 0;
      STOP          at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype STATUS_RUNNING_Field is Interfaces.EFM32.Bit;
   subtype STATUS_DIR_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TOPBV_Field is Interfaces.EFM32.Bit;
   --  STATUS_CCVBV array element
   subtype STATUS_CCVBV_Element is Interfaces.EFM32.Bit;

   --  STATUS_CCVBV array
   type STATUS_CCVBV_Field_Array is array (0 .. 3) of STATUS_CCVBV_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for STATUS_CCVBV
   type STATUS_CCVBV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCVBV as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  CCVBV as an array
            Arr : STATUS_CCVBV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for STATUS_CCVBV_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  STATUS_ICV array element
   subtype STATUS_ICV_Element is Interfaces.EFM32.Bit;

   --  STATUS_ICV array
   type STATUS_ICV_Field_Array is array (0 .. 3) of STATUS_ICV_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for STATUS_ICV
   type STATUS_ICV_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ICV as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  ICV as an array
            Arr : STATUS_ICV_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for STATUS_ICV_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  STATUS_CCPOL array element
   subtype STATUS_CCPOL_Element is Interfaces.EFM32.Bit;

   --  STATUS_CCPOL array
   type STATUS_CCPOL_Field_Array is array (0 .. 3) of STATUS_CCPOL_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for STATUS_CCPOL
   type STATUS_CCPOL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CCPOL as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  CCPOL as an array
            Arr : STATUS_CCPOL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for STATUS_CCPOL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. Running
      RUNNING        : STATUS_RUNNING_Field;
      --  Read-only. Direction
      DIR            : STATUS_DIR_Field;
      --  Read-only. TOPB Valid
      TOPBV          : STATUS_TOPBV_Field;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5;
      --  Read-only. CC0 CCVB Valid
      CCVBV          : STATUS_CCVBV_Field;
      --  unspecified
      Reserved_12_15 : Interfaces.EFM32.UInt4;
      --  Read-only. CC0 Input Capture Valid
      ICV            : STATUS_ICV_Field;
      --  unspecified
      Reserved_20_23 : Interfaces.EFM32.UInt4;
      --  Read-only. CC0 Polarity
      CCPOL          : STATUS_CCPOL_Field;
      --  unspecified
      Reserved_28_31 : Interfaces.EFM32.UInt4;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      RUNNING        at 0 range 0 .. 0;
      DIR            at 0 range 1 .. 1;
      TOPBV          at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      CCVBV          at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      ICV            at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      CCPOL          at 0 range 24 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype IF_OF_Field is Interfaces.EFM32.Bit;
   subtype IF_UF_Field is Interfaces.EFM32.Bit;
   subtype IF_DIRCHG_Field is Interfaces.EFM32.Bit;
   --  IF_CC array element
   subtype IF_CC_Element is Interfaces.EFM32.Bit;

   --  IF_CC array
   type IF_CC_Field_Array is array (0 .. 3) of IF_CC_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for IF_CC
   type IF_CC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CC as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  CC as an array
            Arr : IF_CC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for IF_CC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  IF_ICBOF array element
   subtype IF_ICBOF_Element is Interfaces.EFM32.Bit;

   --  IF_ICBOF array
   type IF_ICBOF_Field_Array is array (0 .. 3) of IF_ICBOF_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for IF_ICBOF
   type IF_ICBOF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ICBOF as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  ICBOF as an array
            Arr : IF_ICBOF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for IF_ICBOF_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. Overflow Interrupt Flag
      OF_k           : IF_OF_Field;
      --  Read-only. Underflow Interrupt Flag
      UF             : IF_UF_Field;
      --  Read-only. Direction Change Detect Interrupt Flag
      DIRCHG         : IF_DIRCHG_Field;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit;
      --  Read-only. CC Channel 0 Interrupt Flag
      CC             : IF_CC_Field;
      --  Read-only. CC Channel 0 Input Capture Buffer Overflow Interrupt Flag
      ICBOF          : IF_ICBOF_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      OF_k           at 0 range 0 .. 0;
      UF             at 0 range 1 .. 1;
      DIRCHG         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CC             at 0 range 4 .. 7;
      ICBOF          at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype IFS_OF_Field is Interfaces.EFM32.Bit;
   subtype IFS_UF_Field is Interfaces.EFM32.Bit;
   subtype IFS_DIRCHG_Field is Interfaces.EFM32.Bit;
   --  IFS_CC array element
   subtype IFS_CC_Element is Interfaces.EFM32.Bit;

   --  IFS_CC array
   type IFS_CC_Field_Array is array (0 .. 3) of IFS_CC_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for IFS_CC
   type IFS_CC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CC as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  CC as an array
            Arr : IFS_CC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for IFS_CC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  IFS_ICBOF array element
   subtype IFS_ICBOF_Element is Interfaces.EFM32.Bit;

   --  IFS_ICBOF array
   type IFS_ICBOF_Field_Array is array (0 .. 3) of IFS_ICBOF_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for IFS_ICBOF
   type IFS_ICBOF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ICBOF as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  ICBOF as an array
            Arr : IFS_ICBOF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for IFS_ICBOF_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set OF Interrupt Flag
      OF_k           : IFS_OF_Field := 16#0#;
      --  Write-only. Set UF Interrupt Flag
      UF             : IFS_UF_Field := 16#0#;
      --  Write-only. Set DIRCHG Interrupt Flag
      DIRCHG         : IFS_DIRCHG_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Set CC0 Interrupt Flag
      CC             : IFS_CC_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Set ICBOF0 Interrupt Flag
      ICBOF          : IFS_ICBOF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      OF_k           at 0 range 0 .. 0;
      UF             at 0 range 1 .. 1;
      DIRCHG         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CC             at 0 range 4 .. 7;
      ICBOF          at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype IFC_OF_Field is Interfaces.EFM32.Bit;
   subtype IFC_UF_Field is Interfaces.EFM32.Bit;
   subtype IFC_DIRCHG_Field is Interfaces.EFM32.Bit;
   --  IFC_CC array element
   subtype IFC_CC_Element is Interfaces.EFM32.Bit;

   --  IFC_CC array
   type IFC_CC_Field_Array is array (0 .. 3) of IFC_CC_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for IFC_CC
   type IFC_CC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CC as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  CC as an array
            Arr : IFC_CC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for IFC_CC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  IFC_ICBOF array element
   subtype IFC_ICBOF_Element is Interfaces.EFM32.Bit;

   --  IFC_ICBOF array
   type IFC_ICBOF_Field_Array is array (0 .. 3) of IFC_ICBOF_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for IFC_ICBOF
   type IFC_ICBOF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ICBOF as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  ICBOF as an array
            Arr : IFC_ICBOF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for IFC_ICBOF_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear OF Interrupt Flag
      OF_k           : IFC_OF_Field := 16#0#;
      --  Write-only. Clear UF Interrupt Flag
      UF             : IFC_UF_Field := 16#0#;
      --  Write-only. Clear DIRCHG Interrupt Flag
      DIRCHG         : IFC_DIRCHG_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Clear CC0 Interrupt Flag
      CC             : IFC_CC_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Clear ICBOF0 Interrupt Flag
      ICBOF          : IFC_ICBOF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      OF_k           at 0 range 0 .. 0;
      UF             at 0 range 1 .. 1;
      DIRCHG         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CC             at 0 range 4 .. 7;
      ICBOF          at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype IEN_OF_Field is Interfaces.EFM32.Bit;
   subtype IEN_UF_Field is Interfaces.EFM32.Bit;
   subtype IEN_DIRCHG_Field is Interfaces.EFM32.Bit;
   --  IEN_CC array element
   subtype IEN_CC_Element is Interfaces.EFM32.Bit;

   --  IEN_CC array
   type IEN_CC_Field_Array is array (0 .. 3) of IEN_CC_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for IEN_CC
   type IEN_CC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CC as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  CC as an array
            Arr : IEN_CC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for IEN_CC_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  IEN_ICBOF array element
   subtype IEN_ICBOF_Element is Interfaces.EFM32.Bit;

   --  IEN_ICBOF array
   type IEN_ICBOF_Field_Array is array (0 .. 3) of IEN_ICBOF_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for IEN_ICBOF
   type IEN_ICBOF_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ICBOF as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  ICBOF as an array
            Arr : IEN_ICBOF_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for IEN_ICBOF_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  OF Interrupt Enable
      OF_k           : IEN_OF_Field := 16#0#;
      --  UF Interrupt Enable
      UF             : IEN_UF_Field := 16#0#;
      --  DIRCHG Interrupt Enable
      DIRCHG         : IEN_DIRCHG_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit := 16#0#;
      --  CC0 Interrupt Enable
      CC             : IEN_CC_Field := (As_Array => False, Val => 16#0#);
      --  ICBOF0 Interrupt Enable
      ICBOF          : IEN_ICBOF_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      OF_k           at 0 range 0 .. 0;
      UF             at 0 range 1 .. 1;
      DIRCHG         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      CC             at 0 range 4 .. 7;
      ICBOF          at 0 range 8 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   --  Timer Lock Key
   type LOCK_TIMERLOCKKEY_Field is
     (UNLOCKED,
      LOCKED)
     with Size => 16;
   for LOCK_TIMERLOCKKEY_Field use
     (UNLOCKED => 0,
      LOCKED => 1);

   --  TIMER Configuration Lock Register
   type LOCK_Register is record
      --  Timer Lock Key
      TIMERLOCKKEY   : LOCK_TIMERLOCKKEY_Field :=
                        Interfaces.EFM32.WTIMER1.UNLOCKED;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOCK_Register use record
      TIMERLOCKKEY   at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ROUTEPEN_CC0PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CC1PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CC2PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CC3PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CDTI0PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CDTI1PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CDTI2PEN_Field is Interfaces.EFM32.Bit;

   --  I/O Routing Pin Enable Register
   type ROUTEPEN_Register is record
      --  CC Channel 0 Pin Enable
      CC0PEN         : ROUTEPEN_CC0PEN_Field := 16#0#;
      --  CC Channel 1 Pin Enable
      CC1PEN         : ROUTEPEN_CC1PEN_Field := 16#0#;
      --  CC Channel 2 Pin Enable
      CC2PEN         : ROUTEPEN_CC2PEN_Field := 16#0#;
      --  CC Channel 3 Pin Enable
      CC3PEN         : ROUTEPEN_CC3PEN_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.EFM32.UInt4 := 16#0#;
      --  CC Channel 0 Complementary Dead-Time Insertion Pin Enable
      CDTI0PEN       : ROUTEPEN_CDTI0PEN_Field := 16#0#;
      --  CC Channel 1 Complementary Dead-Time Insertion Pin Enable
      CDTI1PEN       : ROUTEPEN_CDTI1PEN_Field := 16#0#;
      --  CC Channel 2 Complementary Dead-Time Insertion Pin Enable
      CDTI2PEN       : ROUTEPEN_CDTI2PEN_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTEPEN_Register use record
      CC0PEN         at 0 range 0 .. 0;
      CC1PEN         at 0 range 1 .. 1;
      CC2PEN         at 0 range 2 .. 2;
      CC3PEN         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      CDTI0PEN       at 0 range 8 .. 8;
      CDTI1PEN       at 0 range 9 .. 9;
      CDTI2PEN       at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC0_CC0LOC_Field is
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
   for ROUTELOC0_CC0LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5,
      LOC6 => 6,
      LOC7 => 7);

   --  I/O Location
   type ROUTELOC0_CC1LOC_Field is
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
   for ROUTELOC0_CC1LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5,
      LOC6 => 6,
      LOC7 => 7);

   --  I/O Location
   type ROUTELOC0_CC2LOC_Field is
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
   for ROUTELOC0_CC2LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5,
      LOC6 => 6,
      LOC7 => 7);

   --  I/O Location
   type ROUTELOC0_CC3LOC_Field is
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
   for ROUTELOC0_CC3LOC_Field use
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
      CC0LOC         : ROUTELOC0_CC0LOC_Field :=
                        Interfaces.EFM32.WTIMER1.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CC1LOC         : ROUTELOC0_CC1LOC_Field :=
                        Interfaces.EFM32.WTIMER1.LOC0;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CC2LOC         : ROUTELOC0_CC2LOC_Field :=
                        Interfaces.EFM32.WTIMER1.LOC0;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CC3LOC         : ROUTELOC0_CC3LOC_Field :=
                        Interfaces.EFM32.WTIMER1.LOC0;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC0_Register use record
      CC0LOC         at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CC1LOC         at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CC2LOC         at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CC3LOC         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC2_CDTI0LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3,
      --  Location 4
      LOC4)
     with Size => 6;
   for ROUTELOC2_CDTI0LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4);

   --  I/O Location
   type ROUTELOC2_CDTI1LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3,
      --  Location 4
      LOC4)
     with Size => 6;
   for ROUTELOC2_CDTI1LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4);

   --  I/O Location
   type ROUTELOC2_CDTI2LOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3,
      --  Location 4
      LOC4)
     with Size => 6;
   for ROUTELOC2_CDTI2LOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4);

   --  I/O Routing Location Register
   type ROUTELOC2_Register is record
      --  I/O Location
      CDTI0LOC       : ROUTELOC2_CDTI0LOC_Field :=
                        Interfaces.EFM32.WTIMER1.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CDTI1LOC       : ROUTELOC2_CDTI1LOC_Field :=
                        Interfaces.EFM32.WTIMER1.LOC0;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CDTI2LOC       : ROUTELOC2_CDTI2LOC_Field :=
                        Interfaces.EFM32.WTIMER1.LOC0;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC2_Register use record
      CDTI0LOC       at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CDTI1LOC       at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      CDTI2LOC       at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  CC Channel Mode
   type CC0_CTRL_MODE_Field is
     (--  Compare/Capture channel turned off
      OFF,
      --  Input capture
      INPUTCAPTURE,
      --  Output compare
      OUTPUTCOMPARE,
      --  Pulse-Width Modulation
      PWM)
     with Size => 2;
   for CC0_CTRL_MODE_Field use
     (OFF => 0,
      INPUTCAPTURE => 1,
      OUTPUTCOMPARE => 2,
      PWM => 3);

   subtype CC0_CTRL_OUTINV_Field is Interfaces.EFM32.Bit;
   subtype CC0_CTRL_COIST_Field is Interfaces.EFM32.Bit;

   --  Compare Match Output Action
   type CC0_CTRL_CMOA_Field is
     (--  No action on compare match
      NONE,
      --  Toggle output on compare match
      TOGGLE,
      --  Clear output on compare match
      CLEAR,
      --  Set output on compare match
      SET)
     with Size => 2;
   for CC0_CTRL_CMOA_Field use
     (NONE => 0,
      TOGGLE => 1,
      CLEAR => 2,
      SET => 3);

   --  Counter Overflow Output Action
   type CC0_CTRL_COFOA_Field is
     (--  No action on counter overflow
      NONE,
      --  Toggle output on counter overflow
      TOGGLE,
      --  Clear output on counter overflow
      CLEAR,
      --  Set output on counter overflow
      SET)
     with Size => 2;
   for CC0_CTRL_COFOA_Field use
     (NONE => 0,
      TOGGLE => 1,
      CLEAR => 2,
      SET => 3);

   --  Counter Underflow Output Action
   type CC0_CTRL_CUFOA_Field is
     (--  No action on counter underflow
      NONE,
      --  Toggle output on counter underflow
      TOGGLE,
      --  Clear output on counter underflow
      CLEAR,
      --  Set output on counter underflow
      SET)
     with Size => 2;
   for CC0_CTRL_CUFOA_Field use
     (NONE => 0,
      TOGGLE => 1,
      CLEAR => 2,
      SET => 3);

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

   --  Input Capture Event Control
   type CC0_CTRL_ICEVCTRL_Field is
     (--  PRS output pulse and interrupt flag set on every capture
      EVERYEDGE,
      --  PRS output pulse and interrupt flag set on every second capture
      EVERYSECONDEDGE,
      --  PRS output pulse and interrupt flag set on rising edge only (if ICEDGE =
--  BOTH)
      RISING,
      --  PRS output pulse and interrupt flag set on falling edge only (if ICEDGE =
--  BOTH)
      FALLING)
     with Size => 2;
   for CC0_CTRL_ICEVCTRL_Field use
     (EVERYEDGE => 0,
      EVERYSECONDEDGE => 1,
      RISING => 2,
      FALLING => 3);

   subtype CC0_CTRL_PRSCONF_Field is Interfaces.EFM32.Bit;
   subtype CC0_CTRL_INSEL_Field is Interfaces.EFM32.Bit;
   subtype CC0_CTRL_FILT_Field is Interfaces.EFM32.Bit;

   --  CC Channel Control Register
   type CC0_CTRL_Register is record
      --  CC Channel Mode
      MODE           : CC0_CTRL_MODE_Field := Interfaces.EFM32.WTIMER1.OFF;
      --  Output Invert
      OUTINV         : CC0_CTRL_OUTINV_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit := 16#0#;
      --  Compare Output Initial State
      COIST          : CC0_CTRL_COIST_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Compare Match Output Action
      CMOA           : CC0_CTRL_CMOA_Field := Interfaces.EFM32.WTIMER1.NONE;
      --  Counter Overflow Output Action
      COFOA          : CC0_CTRL_COFOA_Field := Interfaces.EFM32.WTIMER1.NONE;
      --  Counter Underflow Output Action
      CUFOA          : CC0_CTRL_CUFOA_Field := Interfaces.EFM32.WTIMER1.NONE;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Compare/Capture Channel PRS Input Channel Selection
      PRSSEL         : CC0_CTRL_PRSSEL_Field :=
                        Interfaces.EFM32.WTIMER1.PRSCH0;
      --  unspecified
      Reserved_20_23 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Input Capture Edge Select
      ICEDGE         : CC0_CTRL_ICEDGE_Field :=
                        Interfaces.EFM32.WTIMER1.RISING;
      --  Input Capture Event Control
      ICEVCTRL       : CC0_CTRL_ICEVCTRL_Field :=
                        Interfaces.EFM32.WTIMER1.EVERYEDGE;
      --  PRS Configuration
      PRSCONF        : CC0_CTRL_PRSCONF_Field := 16#0#;
      --  Input Selection
      INSEL          : CC0_CTRL_INSEL_Field := 16#0#;
      --  Digital Filter
      FILT           : CC0_CTRL_FILT_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CC0_CTRL_Register use record
      MODE           at 0 range 0 .. 1;
      OUTINV         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      COIST          at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CMOA           at 0 range 8 .. 9;
      COFOA          at 0 range 10 .. 11;
      CUFOA          at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PRSSEL         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ICEDGE         at 0 range 24 .. 25;
      ICEVCTRL       at 0 range 26 .. 27;
      PRSCONF        at 0 range 28 .. 28;
      INSEL          at 0 range 29 .. 29;
      FILT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  CC Channel Mode
   type CC1_CTRL_MODE_Field is
     (--  Compare/Capture channel turned off
      OFF,
      --  Input capture
      INPUTCAPTURE,
      --  Output compare
      OUTPUTCOMPARE,
      --  Pulse-Width Modulation
      PWM)
     with Size => 2;
   for CC1_CTRL_MODE_Field use
     (OFF => 0,
      INPUTCAPTURE => 1,
      OUTPUTCOMPARE => 2,
      PWM => 3);

   subtype CC1_CTRL_OUTINV_Field is Interfaces.EFM32.Bit;
   subtype CC1_CTRL_COIST_Field is Interfaces.EFM32.Bit;

   --  Compare Match Output Action
   type CC1_CTRL_CMOA_Field is
     (--  No action on compare match
      NONE,
      --  Toggle output on compare match
      TOGGLE,
      --  Clear output on compare match
      CLEAR,
      --  Set output on compare match
      SET)
     with Size => 2;
   for CC1_CTRL_CMOA_Field use
     (NONE => 0,
      TOGGLE => 1,
      CLEAR => 2,
      SET => 3);

   --  Counter Overflow Output Action
   type CC1_CTRL_COFOA_Field is
     (--  No action on counter overflow
      NONE,
      --  Toggle output on counter overflow
      TOGGLE,
      --  Clear output on counter overflow
      CLEAR,
      --  Set output on counter overflow
      SET)
     with Size => 2;
   for CC1_CTRL_COFOA_Field use
     (NONE => 0,
      TOGGLE => 1,
      CLEAR => 2,
      SET => 3);

   --  Counter Underflow Output Action
   type CC1_CTRL_CUFOA_Field is
     (--  No action on counter underflow
      NONE,
      --  Toggle output on counter underflow
      TOGGLE,
      --  Clear output on counter underflow
      CLEAR,
      --  Set output on counter underflow
      SET)
     with Size => 2;
   for CC1_CTRL_CUFOA_Field use
     (NONE => 0,
      TOGGLE => 1,
      CLEAR => 2,
      SET => 3);

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

   --  Input Capture Event Control
   type CC1_CTRL_ICEVCTRL_Field is
     (--  PRS output pulse and interrupt flag set on every capture
      EVERYEDGE,
      --  PRS output pulse and interrupt flag set on every second capture
      EVERYSECONDEDGE,
      --  PRS output pulse and interrupt flag set on rising edge only (if ICEDGE =
--  BOTH)
      RISING,
      --  PRS output pulse and interrupt flag set on falling edge only (if ICEDGE =
--  BOTH)
      FALLING)
     with Size => 2;
   for CC1_CTRL_ICEVCTRL_Field use
     (EVERYEDGE => 0,
      EVERYSECONDEDGE => 1,
      RISING => 2,
      FALLING => 3);

   subtype CC1_CTRL_PRSCONF_Field is Interfaces.EFM32.Bit;
   subtype CC1_CTRL_INSEL_Field is Interfaces.EFM32.Bit;
   subtype CC1_CTRL_FILT_Field is Interfaces.EFM32.Bit;

   --  CC Channel Control Register
   type CC1_CTRL_Register is record
      --  CC Channel Mode
      MODE           : CC1_CTRL_MODE_Field := Interfaces.EFM32.WTIMER1.OFF;
      --  Output Invert
      OUTINV         : CC1_CTRL_OUTINV_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit := 16#0#;
      --  Compare Output Initial State
      COIST          : CC1_CTRL_COIST_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Compare Match Output Action
      CMOA           : CC1_CTRL_CMOA_Field := Interfaces.EFM32.WTIMER1.NONE;
      --  Counter Overflow Output Action
      COFOA          : CC1_CTRL_COFOA_Field := Interfaces.EFM32.WTIMER1.NONE;
      --  Counter Underflow Output Action
      CUFOA          : CC1_CTRL_CUFOA_Field := Interfaces.EFM32.WTIMER1.NONE;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Compare/Capture Channel PRS Input Channel Selection
      PRSSEL         : CC1_CTRL_PRSSEL_Field :=
                        Interfaces.EFM32.WTIMER1.PRSCH0;
      --  unspecified
      Reserved_20_23 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Input Capture Edge Select
      ICEDGE         : CC1_CTRL_ICEDGE_Field :=
                        Interfaces.EFM32.WTIMER1.RISING;
      --  Input Capture Event Control
      ICEVCTRL       : CC1_CTRL_ICEVCTRL_Field :=
                        Interfaces.EFM32.WTIMER1.EVERYEDGE;
      --  PRS Configuration
      PRSCONF        : CC1_CTRL_PRSCONF_Field := 16#0#;
      --  Input Selection
      INSEL          : CC1_CTRL_INSEL_Field := 16#0#;
      --  Digital Filter
      FILT           : CC1_CTRL_FILT_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CC1_CTRL_Register use record
      MODE           at 0 range 0 .. 1;
      OUTINV         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      COIST          at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CMOA           at 0 range 8 .. 9;
      COFOA          at 0 range 10 .. 11;
      CUFOA          at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PRSSEL         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ICEDGE         at 0 range 24 .. 25;
      ICEVCTRL       at 0 range 26 .. 27;
      PRSCONF        at 0 range 28 .. 28;
      INSEL          at 0 range 29 .. 29;
      FILT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  CC Channel Mode
   type CC2_CTRL_MODE_Field is
     (--  Compare/Capture channel turned off
      OFF,
      --  Input capture
      INPUTCAPTURE,
      --  Output compare
      OUTPUTCOMPARE,
      --  Pulse-Width Modulation
      PWM)
     with Size => 2;
   for CC2_CTRL_MODE_Field use
     (OFF => 0,
      INPUTCAPTURE => 1,
      OUTPUTCOMPARE => 2,
      PWM => 3);

   subtype CC2_CTRL_OUTINV_Field is Interfaces.EFM32.Bit;
   subtype CC2_CTRL_COIST_Field is Interfaces.EFM32.Bit;

   --  Compare Match Output Action
   type CC2_CTRL_CMOA_Field is
     (--  No action on compare match
      NONE,
      --  Toggle output on compare match
      TOGGLE,
      --  Clear output on compare match
      CLEAR,
      --  Set output on compare match
      SET)
     with Size => 2;
   for CC2_CTRL_CMOA_Field use
     (NONE => 0,
      TOGGLE => 1,
      CLEAR => 2,
      SET => 3);

   --  Counter Overflow Output Action
   type CC2_CTRL_COFOA_Field is
     (--  No action on counter overflow
      NONE,
      --  Toggle output on counter overflow
      TOGGLE,
      --  Clear output on counter overflow
      CLEAR,
      --  Set output on counter overflow
      SET)
     with Size => 2;
   for CC2_CTRL_COFOA_Field use
     (NONE => 0,
      TOGGLE => 1,
      CLEAR => 2,
      SET => 3);

   --  Counter Underflow Output Action
   type CC2_CTRL_CUFOA_Field is
     (--  No action on counter underflow
      NONE,
      --  Toggle output on counter underflow
      TOGGLE,
      --  Clear output on counter underflow
      CLEAR,
      --  Set output on counter underflow
      SET)
     with Size => 2;
   for CC2_CTRL_CUFOA_Field use
     (NONE => 0,
      TOGGLE => 1,
      CLEAR => 2,
      SET => 3);

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

   --  Input Capture Event Control
   type CC2_CTRL_ICEVCTRL_Field is
     (--  PRS output pulse and interrupt flag set on every capture
      EVERYEDGE,
      --  PRS output pulse and interrupt flag set on every second capture
      EVERYSECONDEDGE,
      --  PRS output pulse and interrupt flag set on rising edge only (if ICEDGE =
--  BOTH)
      RISING,
      --  PRS output pulse and interrupt flag set on falling edge only (if ICEDGE =
--  BOTH)
      FALLING)
     with Size => 2;
   for CC2_CTRL_ICEVCTRL_Field use
     (EVERYEDGE => 0,
      EVERYSECONDEDGE => 1,
      RISING => 2,
      FALLING => 3);

   subtype CC2_CTRL_PRSCONF_Field is Interfaces.EFM32.Bit;
   subtype CC2_CTRL_INSEL_Field is Interfaces.EFM32.Bit;
   subtype CC2_CTRL_FILT_Field is Interfaces.EFM32.Bit;

   --  CC Channel Control Register
   type CC2_CTRL_Register is record
      --  CC Channel Mode
      MODE           : CC2_CTRL_MODE_Field := Interfaces.EFM32.WTIMER1.OFF;
      --  Output Invert
      OUTINV         : CC2_CTRL_OUTINV_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit := 16#0#;
      --  Compare Output Initial State
      COIST          : CC2_CTRL_COIST_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Compare Match Output Action
      CMOA           : CC2_CTRL_CMOA_Field := Interfaces.EFM32.WTIMER1.NONE;
      --  Counter Overflow Output Action
      COFOA          : CC2_CTRL_COFOA_Field := Interfaces.EFM32.WTIMER1.NONE;
      --  Counter Underflow Output Action
      CUFOA          : CC2_CTRL_CUFOA_Field := Interfaces.EFM32.WTIMER1.NONE;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Compare/Capture Channel PRS Input Channel Selection
      PRSSEL         : CC2_CTRL_PRSSEL_Field :=
                        Interfaces.EFM32.WTIMER1.PRSCH0;
      --  unspecified
      Reserved_20_23 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Input Capture Edge Select
      ICEDGE         : CC2_CTRL_ICEDGE_Field :=
                        Interfaces.EFM32.WTIMER1.RISING;
      --  Input Capture Event Control
      ICEVCTRL       : CC2_CTRL_ICEVCTRL_Field :=
                        Interfaces.EFM32.WTIMER1.EVERYEDGE;
      --  PRS Configuration
      PRSCONF        : CC2_CTRL_PRSCONF_Field := 16#0#;
      --  Input Selection
      INSEL          : CC2_CTRL_INSEL_Field := 16#0#;
      --  Digital Filter
      FILT           : CC2_CTRL_FILT_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CC2_CTRL_Register use record
      MODE           at 0 range 0 .. 1;
      OUTINV         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      COIST          at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CMOA           at 0 range 8 .. 9;
      COFOA          at 0 range 10 .. 11;
      CUFOA          at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PRSSEL         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ICEDGE         at 0 range 24 .. 25;
      ICEVCTRL       at 0 range 26 .. 27;
      PRSCONF        at 0 range 28 .. 28;
      INSEL          at 0 range 29 .. 29;
      FILT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  CC Channel Mode
   type CC3_CTRL_MODE_Field is
     (--  Compare/Capture channel turned off
      OFF,
      --  Input capture
      INPUTCAPTURE,
      --  Output compare
      OUTPUTCOMPARE,
      --  Pulse-Width Modulation
      PWM)
     with Size => 2;
   for CC3_CTRL_MODE_Field use
     (OFF => 0,
      INPUTCAPTURE => 1,
      OUTPUTCOMPARE => 2,
      PWM => 3);

   subtype CC3_CTRL_OUTINV_Field is Interfaces.EFM32.Bit;
   subtype CC3_CTRL_COIST_Field is Interfaces.EFM32.Bit;

   --  Compare Match Output Action
   type CC3_CTRL_CMOA_Field is
     (--  No action on compare match
      NONE,
      --  Toggle output on compare match
      TOGGLE,
      --  Clear output on compare match
      CLEAR,
      --  Set output on compare match
      SET)
     with Size => 2;
   for CC3_CTRL_CMOA_Field use
     (NONE => 0,
      TOGGLE => 1,
      CLEAR => 2,
      SET => 3);

   --  Counter Overflow Output Action
   type CC3_CTRL_COFOA_Field is
     (--  No action on counter overflow
      NONE,
      --  Toggle output on counter overflow
      TOGGLE,
      --  Clear output on counter overflow
      CLEAR,
      --  Set output on counter overflow
      SET)
     with Size => 2;
   for CC3_CTRL_COFOA_Field use
     (NONE => 0,
      TOGGLE => 1,
      CLEAR => 2,
      SET => 3);

   --  Counter Underflow Output Action
   type CC3_CTRL_CUFOA_Field is
     (--  No action on counter underflow
      NONE,
      --  Toggle output on counter underflow
      TOGGLE,
      --  Clear output on counter underflow
      CLEAR,
      --  Set output on counter underflow
      SET)
     with Size => 2;
   for CC3_CTRL_CUFOA_Field use
     (NONE => 0,
      TOGGLE => 1,
      CLEAR => 2,
      SET => 3);

   --  Compare/Capture Channel PRS Input Channel Selection
   type CC3_CTRL_PRSSEL_Field is
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
   for CC3_CTRL_PRSSEL_Field use
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

   --  Input Capture Edge Select
   type CC3_CTRL_ICEDGE_Field is
     (--  Rising edges detected
      RISING,
      --  Falling edges detected
      FALLING,
      --  Both edges detected
      BOTH,
      --  No edge detection, signal is left as it is
      NONE)
     with Size => 2;
   for CC3_CTRL_ICEDGE_Field use
     (RISING => 0,
      FALLING => 1,
      BOTH => 2,
      NONE => 3);

   --  Input Capture Event Control
   type CC3_CTRL_ICEVCTRL_Field is
     (--  PRS output pulse and interrupt flag set on every capture
      EVERYEDGE,
      --  PRS output pulse and interrupt flag set on every second capture
      EVERYSECONDEDGE,
      --  PRS output pulse and interrupt flag set on rising edge only (if ICEDGE =
--  BOTH)
      RISING,
      --  PRS output pulse and interrupt flag set on falling edge only (if ICEDGE =
--  BOTH)
      FALLING)
     with Size => 2;
   for CC3_CTRL_ICEVCTRL_Field use
     (EVERYEDGE => 0,
      EVERYSECONDEDGE => 1,
      RISING => 2,
      FALLING => 3);

   subtype CC3_CTRL_PRSCONF_Field is Interfaces.EFM32.Bit;
   subtype CC3_CTRL_INSEL_Field is Interfaces.EFM32.Bit;
   subtype CC3_CTRL_FILT_Field is Interfaces.EFM32.Bit;

   --  CC Channel Control Register
   type CC3_CTRL_Register is record
      --  CC Channel Mode
      MODE           : CC3_CTRL_MODE_Field := Interfaces.EFM32.WTIMER1.OFF;
      --  Output Invert
      OUTINV         : CC3_CTRL_OUTINV_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit := 16#0#;
      --  Compare Output Initial State
      COIST          : CC3_CTRL_COIST_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Compare Match Output Action
      CMOA           : CC3_CTRL_CMOA_Field := Interfaces.EFM32.WTIMER1.NONE;
      --  Counter Overflow Output Action
      COFOA          : CC3_CTRL_COFOA_Field := Interfaces.EFM32.WTIMER1.NONE;
      --  Counter Underflow Output Action
      CUFOA          : CC3_CTRL_CUFOA_Field := Interfaces.EFM32.WTIMER1.NONE;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Compare/Capture Channel PRS Input Channel Selection
      PRSSEL         : CC3_CTRL_PRSSEL_Field :=
                        Interfaces.EFM32.WTIMER1.PRSCH0;
      --  unspecified
      Reserved_20_23 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Input Capture Edge Select
      ICEDGE         : CC3_CTRL_ICEDGE_Field :=
                        Interfaces.EFM32.WTIMER1.RISING;
      --  Input Capture Event Control
      ICEVCTRL       : CC3_CTRL_ICEVCTRL_Field :=
                        Interfaces.EFM32.WTIMER1.EVERYEDGE;
      --  PRS Configuration
      PRSCONF        : CC3_CTRL_PRSCONF_Field := 16#0#;
      --  Input Selection
      INSEL          : CC3_CTRL_INSEL_Field := 16#0#;
      --  Digital Filter
      FILT           : CC3_CTRL_FILT_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CC3_CTRL_Register use record
      MODE           at 0 range 0 .. 1;
      OUTINV         at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      COIST          at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      CMOA           at 0 range 8 .. 9;
      COFOA          at 0 range 10 .. 11;
      CUFOA          at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      PRSSEL         at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      ICEDGE         at 0 range 24 .. 25;
      ICEVCTRL       at 0 range 26 .. 27;
      PRSCONF        at 0 range 28 .. 28;
      INSEL          at 0 range 29 .. 29;
      FILT           at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DTCTRL_DTEN_Field is Interfaces.EFM32.Bit;
   subtype DTCTRL_DTDAS_Field is Interfaces.EFM32.Bit;
   subtype DTCTRL_DTIPOL_Field is Interfaces.EFM32.Bit;
   subtype DTCTRL_DTCINV_Field is Interfaces.EFM32.Bit;

   --  DTI PRS Source Channel Select
   type DTCTRL_DTPRSSEL_Field is
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
   for DTCTRL_DTPRSSEL_Field use
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

   subtype DTCTRL_DTAR_Field is Interfaces.EFM32.Bit;
   subtype DTCTRL_DTFATS_Field is Interfaces.EFM32.Bit;
   subtype DTCTRL_DTPRSEN_Field is Interfaces.EFM32.Bit;

   --  DTI Control Register
   type DTCTRL_Register is record
      --  DTI Enable
      DTEN           : DTCTRL_DTEN_Field := 16#0#;
      --  DTI Automatic Start-up Functionality
      DTDAS          : DTCTRL_DTDAS_Field := 16#0#;
      --  DTI Inactive Polarity
      DTIPOL         : DTCTRL_DTIPOL_Field := 16#0#;
      --  DTI Complementary Output Invert
      DTCINV         : DTCTRL_DTCINV_Field := 16#0#;
      --  DTI PRS Source Channel Select
      DTPRSSEL       : DTCTRL_DTPRSSEL_Field :=
                        Interfaces.EFM32.WTIMER1.PRSCH0;
      --  unspecified
      Reserved_8_8   : Interfaces.EFM32.Bit := 16#0#;
      --  DTI Always Run
      DTAR           : DTCTRL_DTAR_Field := 16#0#;
      --  DTI Fault Action on Timer Stop
      DTFATS         : DTCTRL_DTFATS_Field := 16#0#;
      --  unspecified
      Reserved_11_23 : Interfaces.EFM32.UInt13 := 16#0#;
      --  DTI PRS Source Enable
      DTPRSEN        : DTCTRL_DTPRSEN_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.EFM32.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTCTRL_Register use record
      DTEN           at 0 range 0 .. 0;
      DTDAS          at 0 range 1 .. 1;
      DTIPOL         at 0 range 2 .. 2;
      DTCINV         at 0 range 3 .. 3;
      DTPRSSEL       at 0 range 4 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      DTAR           at 0 range 9 .. 9;
      DTFATS         at 0 range 10 .. 10;
      Reserved_11_23 at 0 range 11 .. 23;
      DTPRSEN        at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   --  DTI Prescaler Setting
   type DTTIME_DTPRESC_Field is
     (--  The HFPERCLK is undivided
      DIV1,
      --  The HFPERCLK is divided by 2
      DIV2,
      --  The HFPERCLK is divided by 4
      DIV4,
      --  The HFPERCLK is divided by 8
      DIV8,
      --  The HFPERCLK is divided by 16
      DIV16,
      --  The HFPERCLK is divided by 32
      DIV32,
      --  The HFPERCLK is divided by 64
      DIV64,
      --  The HFPERCLK is divided by 128
      DIV128,
      --  The HFPERCLK is divided by 256
      DIV256,
      --  The HFPERCLK is divided by 512
      DIV512,
      --  The HFPERCLK is divided by 1024
      DIV1024)
     with Size => 4;
   for DTTIME_DTPRESC_Field use
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
      DIV1024 => 10);

   subtype DTTIME_DTRISET_Field is Interfaces.EFM32.UInt6;
   subtype DTTIME_DTFALLT_Field is Interfaces.EFM32.UInt6;

   --  DTI Time Control Register
   type DTTIME_Register is record
      --  DTI Prescaler Setting
      DTPRESC        : DTTIME_DTPRESC_Field := Interfaces.EFM32.WTIMER1.DIV1;
      --  unspecified
      Reserved_4_7   : Interfaces.EFM32.UInt4 := 16#0#;
      --  DTI Rise-time
      DTRISET        : DTTIME_DTRISET_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  DTI Fall-time
      DTFALLT        : DTTIME_DTFALLT_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTTIME_Register use record
      DTPRESC        at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DTRISET        at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      DTFALLT        at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  DTI PRS Fault Source 0 Select
   type DTFC_DTPRS0FSEL_Field is
     (--  PRS Channel 0 selected as fault source 0
      PRSCH0,
      --  PRS Channel 1 selected as fault source 1
      PRSCH1,
      --  PRS Channel 2 selected as fault source 2
      PRSCH2,
      --  PRS Channel 3 selected as fault source 3
      PRSCH3,
      --  PRS Channel 4 selected as fault source 4
      PRSCH4,
      --  PRS Channel 5 selected as fault source 5
      PRSCH5,
      --  PRS Channel 6 selected as fault source 6
      PRSCH6,
      --  PRS Channel 7 selected as fault source 7
      PRSCH7,
      --  PRS Channel 8 selected as fault source 8
      PRSCH8,
      --  PRS Channel 9 selected as fault source 9
      PRSCH9,
      --  PRS Channel 10 selected as fault source 10
      PRSCH10,
      --  PRS Channel 11 selected as fault source 11
      PRSCH11,
      --  PRS Channel 12 selected as fault source 12
      PRSCH12,
      --  PRS Channel 13 selected as fault source 13
      PRSCH13,
      --  PRS Channel 14 selected as fault source 14
      PRSCH14,
      --  PRS Channel 15 selected as fault source 15
      PRSCH15)
     with Size => 4;
   for DTFC_DTPRS0FSEL_Field use
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

   --  DTI PRS Fault Source 1 Select
   type DTFC_DTPRS1FSEL_Field is
     (--  PRS Channel 0 selected as fault source 1
      PRSCH0,
      --  PRS Channel 1 selected as fault source 1
      PRSCH1,
      --  PRS Channel 2 selected as fault source 1
      PRSCH2,
      --  PRS Channel 3 selected as fault source 1
      PRSCH3,
      --  PRS Channel 4 selected as fault source 1
      PRSCH4,
      --  PRS Channel 5 selected as fault source 1
      PRSCH5,
      --  PRS Channel 6 selected as fault source 1
      PRSCH6,
      --  PRS Channel 7 selected as fault source 1
      PRSCH7,
      --  PRS Channel 8 selected as fault source 1
      PRSCH8,
      --  PRS Channel 9 selected as fault source 1
      PRSCH9,
      --  PRS Channel 10 selected as fault source 1
      PRSCH10,
      --  PRS Channel 11 selected as fault source 1
      PRSCH11,
      --  PRS Channel 12 selected as fault source 1
      PRSCH12,
      --  PRS Channel 13 selected as fault source 1
      PRSCH13,
      --  PRS Channel 14 selected as fault source 1
      PRSCH14,
      --  PRS Channel 15 selected as fault source 1
      PRSCH15)
     with Size => 4;
   for DTFC_DTPRS1FSEL_Field use
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

   --  DTI Fault Action
   type DTFC_DTFA_Field is
     (--  No action on fault
      NONE,
      --  Set outputs inactive
      INACTIVE,
      --  Clear outputs
      CLEAR,
      --  Tristate outputs
      TRISTATE)
     with Size => 2;
   for DTFC_DTFA_Field use
     (NONE => 0,
      INACTIVE => 1,
      CLEAR => 2,
      TRISTATE => 3);

   subtype DTFC_DTPRS0FEN_Field is Interfaces.EFM32.Bit;
   subtype DTFC_DTPRS1FEN_Field is Interfaces.EFM32.Bit;
   subtype DTFC_DTDBGFEN_Field is Interfaces.EFM32.Bit;
   subtype DTFC_DTLOCKUPFEN_Field is Interfaces.EFM32.Bit;

   --  DTI Fault Configuration Register
   type DTFC_Register is record
      --  DTI PRS Fault Source 0 Select
      DTPRS0FSEL     : DTFC_DTPRS0FSEL_Field :=
                        Interfaces.EFM32.WTIMER1.PRSCH0;
      --  unspecified
      Reserved_4_7   : Interfaces.EFM32.UInt4 := 16#0#;
      --  DTI PRS Fault Source 1 Select
      DTPRS1FSEL     : DTFC_DTPRS1FSEL_Field :=
                        Interfaces.EFM32.WTIMER1.PRSCH0;
      --  unspecified
      Reserved_12_15 : Interfaces.EFM32.UInt4 := 16#0#;
      --  DTI Fault Action
      DTFA           : DTFC_DTFA_Field := Interfaces.EFM32.WTIMER1.NONE;
      --  unspecified
      Reserved_18_23 : Interfaces.EFM32.UInt6 := 16#0#;
      --  DTI PRS 0 Fault Enable
      DTPRS0FEN      : DTFC_DTPRS0FEN_Field := 16#0#;
      --  DTI PRS 1 Fault Enable
      DTPRS1FEN      : DTFC_DTPRS1FEN_Field := 16#0#;
      --  DTI Debugger Fault Enable
      DTDBGFEN       : DTFC_DTDBGFEN_Field := 16#0#;
      --  DTI Lockup Fault Enable
      DTLOCKUPFEN    : DTFC_DTLOCKUPFEN_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.EFM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTFC_Register use record
      DTPRS0FSEL     at 0 range 0 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      DTPRS1FSEL     at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      DTFA           at 0 range 16 .. 17;
      Reserved_18_23 at 0 range 18 .. 23;
      DTPRS0FEN      at 0 range 24 .. 24;
      DTPRS1FEN      at 0 range 25 .. 25;
      DTDBGFEN       at 0 range 26 .. 26;
      DTLOCKUPFEN    at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DTOGEN_DTOGCC0EN_Field is Interfaces.EFM32.Bit;
   subtype DTOGEN_DTOGCC1EN_Field is Interfaces.EFM32.Bit;
   subtype DTOGEN_DTOGCC2EN_Field is Interfaces.EFM32.Bit;
   subtype DTOGEN_DTOGCDTI0EN_Field is Interfaces.EFM32.Bit;
   subtype DTOGEN_DTOGCDTI1EN_Field is Interfaces.EFM32.Bit;
   subtype DTOGEN_DTOGCDTI2EN_Field is Interfaces.EFM32.Bit;

   --  DTI Output Generation Enable Register
   type DTOGEN_Register is record
      --  DTI CC0 Output Generation Enable
      DTOGCC0EN     : DTOGEN_DTOGCC0EN_Field := 16#0#;
      --  DTI CC1 Output Generation Enable
      DTOGCC1EN     : DTOGEN_DTOGCC1EN_Field := 16#0#;
      --  DTI CC2 Output Generation Enable
      DTOGCC2EN     : DTOGEN_DTOGCC2EN_Field := 16#0#;
      --  DTI CDTI0 Output Generation Enable
      DTOGCDTI0EN   : DTOGEN_DTOGCDTI0EN_Field := 16#0#;
      --  DTI CDTI1 Output Generation Enable
      DTOGCDTI1EN   : DTOGEN_DTOGCDTI1EN_Field := 16#0#;
      --  DTI CDTI2 Output Generation Enable
      DTOGCDTI2EN   : DTOGEN_DTOGCDTI2EN_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTOGEN_Register use record
      DTOGCC0EN     at 0 range 0 .. 0;
      DTOGCC1EN     at 0 range 1 .. 1;
      DTOGCC2EN     at 0 range 2 .. 2;
      DTOGCDTI0EN   at 0 range 3 .. 3;
      DTOGCDTI1EN   at 0 range 4 .. 4;
      DTOGCDTI2EN   at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DTFAULT_DTPRS0F_Field is Interfaces.EFM32.Bit;
   subtype DTFAULT_DTPRS1F_Field is Interfaces.EFM32.Bit;
   subtype DTFAULT_DTDBGF_Field is Interfaces.EFM32.Bit;
   subtype DTFAULT_DTLOCKUPF_Field is Interfaces.EFM32.Bit;

   --  DTI Fault Register
   type DTFAULT_Register is record
      --  Read-only. DTI PRS 0 Fault
      DTPRS0F       : DTFAULT_DTPRS0F_Field;
      --  Read-only. DTI PRS 1 Fault
      DTPRS1F       : DTFAULT_DTPRS1F_Field;
      --  Read-only. DTI Debugger Fault
      DTDBGF        : DTFAULT_DTDBGF_Field;
      --  Read-only. DTI Lockup Fault
      DTLOCKUPF     : DTFAULT_DTLOCKUPF_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTFAULT_Register use record
      DTPRS0F       at 0 range 0 .. 0;
      DTPRS1F       at 0 range 1 .. 1;
      DTDBGF        at 0 range 2 .. 2;
      DTLOCKUPF     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DTFAULTC_DTPRS0FC_Field is Interfaces.EFM32.Bit;
   subtype DTFAULTC_DTPRS1FC_Field is Interfaces.EFM32.Bit;
   subtype DTFAULTC_DTDBGFC_Field is Interfaces.EFM32.Bit;
   subtype DTFAULTC_TLOCKUPFC_Field is Interfaces.EFM32.Bit;

   --  DTI Fault Clear Register
   type DTFAULTC_Register is record
      --  Write-only. DTI PRS0 Fault Clear
      DTPRS0FC      : DTFAULTC_DTPRS0FC_Field := 16#0#;
      --  Write-only. DTI PRS1 Fault Clear
      DTPRS1FC      : DTFAULTC_DTPRS1FC_Field := 16#0#;
      --  Write-only. DTI Debugger Fault Clear
      DTDBGFC       : DTFAULTC_DTDBGFC_Field := 16#0#;
      --  Write-only. DTI Lockup Fault Clear
      TLOCKUPFC     : DTFAULTC_TLOCKUPFC_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTFAULTC_Register use record
      DTPRS0FC      at 0 range 0 .. 0;
      DTPRS1FC      at 0 range 1 .. 1;
      DTDBGFC       at 0 range 2 .. 2;
      TLOCKUPFC     at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  DTI Lock Key
   type DTLOCK_LOCKKEY_Field is
     (UNLOCKED,
      LOCKED)
     with Size => 16;
   for DTLOCK_LOCKKEY_Field use
     (UNLOCKED => 0,
      LOCKED => 1);

   --  DTI Configuration Lock Register
   type DTLOCK_Register is record
      --  DTI Lock Key
      LOCKKEY        : DTLOCK_LOCKKEY_Field :=
                        Interfaces.EFM32.WTIMER1.UNLOCKED;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTLOCK_Register use record
      LOCKKEY        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  WTIMER1
   type WTIMER1_Peripheral is record
      --  Control Register
      CTRL      : aliased CTRL_Register;
      --  Command Register
      CMD       : aliased CMD_Register;
      --  Status Register
      STATUS    : aliased STATUS_Register;
      --  Interrupt Flag Register
      IF_k      : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS       : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC       : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN       : aliased IEN_Register;
      --  Counter Top Value Register
      TOP       : aliased Interfaces.EFM32.UInt32;
      --  Counter Top Value Buffer Register
      TOPB      : aliased Interfaces.EFM32.UInt32;
      --  Counter Value Register
      CNT       : aliased Interfaces.EFM32.UInt32;
      --  TIMER Configuration Lock Register
      LOCK      : aliased LOCK_Register;
      --  I/O Routing Pin Enable Register
      ROUTEPEN  : aliased ROUTEPEN_Register;
      --  I/O Routing Location Register
      ROUTELOC0 : aliased ROUTELOC0_Register;
      --  I/O Routing Location Register
      ROUTELOC2 : aliased ROUTELOC2_Register;
      --  CC Channel Control Register
      CC0_CTRL  : aliased CC0_CTRL_Register;
      --  CC Channel Value Register
      CC0_CCV   : aliased Interfaces.EFM32.UInt32;
      --  CC Channel Value Peek Register
      CC0_CCVP  : aliased Interfaces.EFM32.UInt32;
      --  CC Channel Buffer Register
      CC0_CCVB  : aliased Interfaces.EFM32.UInt32;
      --  CC Channel Control Register
      CC1_CTRL  : aliased CC1_CTRL_Register;
      --  CC Channel Value Register
      CC1_CCV   : aliased Interfaces.EFM32.UInt32;
      --  CC Channel Value Peek Register
      CC1_CCVP  : aliased Interfaces.EFM32.UInt32;
      --  CC Channel Buffer Register
      CC1_CCVB  : aliased Interfaces.EFM32.UInt32;
      --  CC Channel Control Register
      CC2_CTRL  : aliased CC2_CTRL_Register;
      --  CC Channel Value Register
      CC2_CCV   : aliased Interfaces.EFM32.UInt32;
      --  CC Channel Value Peek Register
      CC2_CCVP  : aliased Interfaces.EFM32.UInt32;
      --  CC Channel Buffer Register
      CC2_CCVB  : aliased Interfaces.EFM32.UInt32;
      --  CC Channel Control Register
      CC3_CTRL  : aliased CC3_CTRL_Register;
      --  CC Channel Value Register
      CC3_CCV   : aliased Interfaces.EFM32.UInt32;
      --  CC Channel Value Peek Register
      CC3_CCVP  : aliased Interfaces.EFM32.UInt32;
      --  CC Channel Buffer Register
      CC3_CCVB  : aliased Interfaces.EFM32.UInt32;
      --  DTI Control Register
      DTCTRL    : aliased DTCTRL_Register;
      --  DTI Time Control Register
      DTTIME    : aliased DTTIME_Register;
      --  DTI Fault Configuration Register
      DTFC      : aliased DTFC_Register;
      --  DTI Output Generation Enable Register
      DTOGEN    : aliased DTOGEN_Register;
      --  DTI Fault Register
      DTFAULT   : aliased DTFAULT_Register;
      --  DTI Fault Clear Register
      DTFAULTC  : aliased DTFAULTC_Register;
      --  DTI Configuration Lock Register
      DTLOCK    : aliased DTLOCK_Register;
   end record
     with Volatile;

   for WTIMER1_Peripheral use record
      CTRL      at 16#0# range 0 .. 31;
      CMD       at 16#4# range 0 .. 31;
      STATUS    at 16#8# range 0 .. 31;
      IF_k      at 16#C# range 0 .. 31;
      IFS       at 16#10# range 0 .. 31;
      IFC       at 16#14# range 0 .. 31;
      IEN       at 16#18# range 0 .. 31;
      TOP       at 16#1C# range 0 .. 31;
      TOPB      at 16#20# range 0 .. 31;
      CNT       at 16#24# range 0 .. 31;
      LOCK      at 16#2C# range 0 .. 31;
      ROUTEPEN  at 16#30# range 0 .. 31;
      ROUTELOC0 at 16#34# range 0 .. 31;
      ROUTELOC2 at 16#3C# range 0 .. 31;
      CC0_CTRL  at 16#60# range 0 .. 31;
      CC0_CCV   at 16#64# range 0 .. 31;
      CC0_CCVP  at 16#68# range 0 .. 31;
      CC0_CCVB  at 16#6C# range 0 .. 31;
      CC1_CTRL  at 16#70# range 0 .. 31;
      CC1_CCV   at 16#74# range 0 .. 31;
      CC1_CCVP  at 16#78# range 0 .. 31;
      CC1_CCVB  at 16#7C# range 0 .. 31;
      CC2_CTRL  at 16#80# range 0 .. 31;
      CC2_CCV   at 16#84# range 0 .. 31;
      CC2_CCVP  at 16#88# range 0 .. 31;
      CC2_CCVB  at 16#8C# range 0 .. 31;
      CC3_CTRL  at 16#90# range 0 .. 31;
      CC3_CCV   at 16#94# range 0 .. 31;
      CC3_CCVP  at 16#98# range 0 .. 31;
      CC3_CCVB  at 16#9C# range 0 .. 31;
      DTCTRL    at 16#A0# range 0 .. 31;
      DTTIME    at 16#A4# range 0 .. 31;
      DTFC      at 16#A8# range 0 .. 31;
      DTOGEN    at 16#AC# range 0 .. 31;
      DTFAULT   at 16#B0# range 0 .. 31;
      DTFAULTC  at 16#B4# range 0 .. 31;
      DTLOCK    at 16#B8# range 0 .. 31;
   end record;

   --  WTIMER1
   WTIMER1_Periph : aliased WTIMER1_Peripheral
     with Import, Address => WTIMER1_Base;

end Interfaces.EFM32.WTIMER1;
