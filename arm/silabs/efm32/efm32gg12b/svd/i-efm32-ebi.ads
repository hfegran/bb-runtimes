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

--  EBI
package Interfaces.EFM32.EBI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Mode
   type CTRL_MODE_Field is
     (--  EBI_AD drives 8 bit data, 8 bit address, ALE not used. Extended address
--  bits can be enabled.
      D8A8,
      --  EBI_AD drives 16 bit data, 16 bit address, ALE is used for address
--  latching. Extended address bits can be enabled.
      D16A16ALE,
      --  EBI_AD drives 8 bit data, 24 bit address, ALE is used for address latching.
--  Extended address bits can be enabled.
      D8A24ALE,
      --  EBI_AD drives 16 bit data, ALE not used. Extended address bits can be
--  enabled.
      D16)
     with Size => 2;
   for CTRL_MODE_Field use
     (D8A8 => 0,
      D16A16ALE => 1,
      D8A24ALE => 2,
      D16 => 3);

   --  CTRL_MODE array
   type CTRL_MODE_Field_Array is array (1 .. 4) of CTRL_MODE_Field
     with Component_Size => 2, Size => 8;

   --  Type definition for CTRL_MODE
   type CTRL_MODE_Field_1
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  MODE as a value
            Val : Interfaces.EFM32.Byte;
         when True =>
            --  MODE as an array
            Arr : CTRL_MODE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for CTRL_MODE_Field_1 use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   subtype CTRL_BANK0EN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_BANK1EN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_BANK2EN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_BANK3EN_Field is Interfaces.EFM32.Bit;
   --  CTRL_NOIDLE array element
   subtype CTRL_NOIDLE_Element is Interfaces.EFM32.Bit;

   --  CTRL_NOIDLE array
   type CTRL_NOIDLE_Field_Array is array (1 .. 4) of CTRL_NOIDLE_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for CTRL_NOIDLE
   type CTRL_NOIDLE_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  NOIDLE as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  NOIDLE as an array
            Arr : CTRL_NOIDLE_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CTRL_NOIDLE_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype CTRL_ARDYEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ARDYTODIS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ARDY1EN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ARDYTO1DIS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ARDY2EN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ARDYTO2DIS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ARDY3EN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ARDYTO3DIS_Field is Interfaces.EFM32.Bit;
   --  CTRL_BL array element
   subtype CTRL_BL_Element is Interfaces.EFM32.Bit;

   --  CTRL_BL array
   type CTRL_BL_Field_Array is array (1 .. 4) of CTRL_BL_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for CTRL_BL
   type CTRL_BL_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  BL as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  BL as an array
            Arr : CTRL_BL_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for CTRL_BL_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype CTRL_ITS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ALTMAP_Field is Interfaces.EFM32.Bit;

   --  Control Register
   type CTRL_Register is record
      --  Mode
      MODE           : CTRL_MODE_Field_1 := (As_Array => False, Val => 16#0#);
      --  Bank 0 Enable
      BANK0EN        : CTRL_BANK0EN_Field := 16#0#;
      --  Bank 1 Enable
      BANK1EN        : CTRL_BANK1EN_Field := 16#0#;
      --  Bank 2 Enable
      BANK2EN        : CTRL_BANK2EN_Field := 16#0#;
      --  Bank 3 Enable
      BANK3EN        : CTRL_BANK3EN_Field := 16#0#;
      --  No Idle Cycle Insertion on Bank 0
      NOIDLE         : CTRL_NOIDLE_Field := (As_Array => False, Val => 16#0#);
      --  ARDY Enable
      ARDYEN         : CTRL_ARDYEN_Field := 16#0#;
      --  ARDY Timeout Disable
      ARDYTODIS      : CTRL_ARDYTODIS_Field := 16#0#;
      --  ARDY Enable for Bank 1
      ARDY1EN        : CTRL_ARDY1EN_Field := 16#0#;
      --  ARDY Timeout Disable for Bank 1
      ARDYTO1DIS     : CTRL_ARDYTO1DIS_Field := 16#0#;
      --  ARDY Enable for Bank 2
      ARDY2EN        : CTRL_ARDY2EN_Field := 16#0#;
      --  ARDY Timeout Disable for Bank 2
      ARDYTO2DIS     : CTRL_ARDYTO2DIS_Field := 16#0#;
      --  ARDY Enable for Bank 3
      ARDY3EN        : CTRL_ARDY3EN_Field := 16#0#;
      --  ARDY Timeout Disable for Bank 3
      ARDYTO3DIS     : CTRL_ARDYTO3DIS_Field := 16#0#;
      --  Byte Lane Enable for Bank 0
      BL             : CTRL_BL_Field := (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_28_29 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Individual Timing Set, Line Polarity and Mode Definition Enable
      ITS            : CTRL_ITS_Field := 16#0#;
      --  Alternative Address Map Enable
      ALTMAP         : CTRL_ALTMAP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      MODE           at 0 range 0 .. 7;
      BANK0EN        at 0 range 8 .. 8;
      BANK1EN        at 0 range 9 .. 9;
      BANK2EN        at 0 range 10 .. 10;
      BANK3EN        at 0 range 11 .. 11;
      NOIDLE         at 0 range 12 .. 15;
      ARDYEN         at 0 range 16 .. 16;
      ARDYTODIS      at 0 range 17 .. 17;
      ARDY1EN        at 0 range 18 .. 18;
      ARDYTO1DIS     at 0 range 19 .. 19;
      ARDY2EN        at 0 range 20 .. 20;
      ARDYTO2DIS     at 0 range 21 .. 21;
      ARDY3EN        at 0 range 22 .. 22;
      ARDYTO3DIS     at 0 range 23 .. 23;
      BL             at 0 range 24 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      ITS            at 0 range 30 .. 30;
      ALTMAP         at 0 range 31 .. 31;
   end record;

   subtype ADDRTIMING_ADDRSETUP_Field is Interfaces.EFM32.UInt3;
   subtype ADDRTIMING_ADDRHOLD_Field is Interfaces.EFM32.UInt3;
   subtype ADDRTIMING_HALFALE_Field is Interfaces.EFM32.Bit;

   --  Address Timing Register
   type ADDRTIMING_Register is record
      --  Address Setup Time
      ADDRSETUP      : ADDRTIMING_ADDRSETUP_Field := 16#7#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Address Hold Time
      ADDRHOLD       : ADDRTIMING_ADDRHOLD_Field := 16#7#;
      --  unspecified
      Reserved_11_27 : Interfaces.EFM32.UInt17 := 16#0#;
      --  Half Cycle ALE Strobe Duration Enable
      HALFALE        : ADDRTIMING_HALFALE_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADDRTIMING_Register use record
      ADDRSETUP      at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      ADDRHOLD       at 0 range 8 .. 10;
      Reserved_11_27 at 0 range 11 .. 27;
      HALFALE        at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype RDTIMING_RDSETUP_Field is Interfaces.EFM32.UInt3;
   subtype RDTIMING_RDSTRB_Field is Interfaces.EFM32.UInt7;
   subtype RDTIMING_RDHOLD_Field is Interfaces.EFM32.UInt3;
   subtype RDTIMING_HALFRE_Field is Interfaces.EFM32.Bit;
   subtype RDTIMING_PREFETCH_Field is Interfaces.EFM32.Bit;
   subtype RDTIMING_PAGEMODE_Field is Interfaces.EFM32.Bit;

   --  Read Timing Register
   type RDTIMING_Register is record
      --  Read Setup Time
      RDSETUP        : RDTIMING_RDSETUP_Field := 16#7#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Read Strobe Time
      RDSTRB         : RDTIMING_RDSTRB_Field := 16#7F#;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit := 16#0#;
      --  Read Hold Time
      RDHOLD         : RDTIMING_RDHOLD_Field := 16#7#;
      --  unspecified
      Reserved_19_27 : Interfaces.EFM32.UInt9 := 16#0#;
      --  Half Cycle REn Strobe Duration Enable
      HALFRE         : RDTIMING_HALFRE_Field := 16#0#;
      --  Prefetch Enable
      PREFETCH       : RDTIMING_PREFETCH_Field := 16#0#;
      --  Page Mode Access Enable
      PAGEMODE       : RDTIMING_PAGEMODE_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RDTIMING_Register use record
      RDSETUP        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      RDSTRB         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      RDHOLD         at 0 range 16 .. 18;
      Reserved_19_27 at 0 range 19 .. 27;
      HALFRE         at 0 range 28 .. 28;
      PREFETCH       at 0 range 29 .. 29;
      PAGEMODE       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype WRTIMING_WRSETUP_Field is Interfaces.EFM32.UInt3;
   subtype WRTIMING_WRSTRB_Field is Interfaces.EFM32.UInt7;
   subtype WRTIMING_WRHOLD_Field is Interfaces.EFM32.UInt3;
   subtype WRTIMING_HALFWE_Field is Interfaces.EFM32.Bit;
   subtype WRTIMING_WBUFDIS_Field is Interfaces.EFM32.Bit;

   --  Write Timing Register
   type WRTIMING_Register is record
      --  Write Setup Time
      WRSETUP        : WRTIMING_WRSETUP_Field := 16#7#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Write Strobe Time
      WRSTRB         : WRTIMING_WRSTRB_Field := 16#7F#;
      --  unspecified
      Reserved_15_15 : Interfaces.EFM32.Bit := 16#0#;
      --  Write Hold Time
      WRHOLD         : WRTIMING_WRHOLD_Field := 16#7#;
      --  unspecified
      Reserved_19_27 : Interfaces.EFM32.UInt9 := 16#0#;
      --  Half Cycle WEn Strobe Duration Enable
      HALFWE         : WRTIMING_HALFWE_Field := 16#0#;
      --  Write Buffer Disable
      WBUFDIS        : WRTIMING_WBUFDIS_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for WRTIMING_Register use record
      WRSETUP        at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      WRSTRB         at 0 range 8 .. 14;
      Reserved_15_15 at 0 range 15 .. 15;
      WRHOLD         at 0 range 16 .. 18;
      Reserved_19_27 at 0 range 19 .. 27;
      HALFWE         at 0 range 28 .. 28;
      WBUFDIS        at 0 range 29 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype POLARITY_CSPOL_Field is Interfaces.EFM32.Bit;
   subtype POLARITY_REPOL_Field is Interfaces.EFM32.Bit;
   subtype POLARITY_WEPOL_Field is Interfaces.EFM32.Bit;
   subtype POLARITY_ALEPOL_Field is Interfaces.EFM32.Bit;
   subtype POLARITY_ARDYPOL_Field is Interfaces.EFM32.Bit;
   subtype POLARITY_BLPOL_Field is Interfaces.EFM32.Bit;

   --  Polarity Register
   type POLARITY_Register is record
      --  Chip Select Polarity
      CSPOL         : POLARITY_CSPOL_Field := 16#0#;
      --  Read Enable Polarity
      REPOL         : POLARITY_REPOL_Field := 16#0#;
      --  Write Enable Polarity
      WEPOL         : POLARITY_WEPOL_Field := 16#0#;
      --  Address Latch Polarity
      ALEPOL        : POLARITY_ALEPOL_Field := 16#0#;
      --  ARDY Polarity
      ARDYPOL       : POLARITY_ARDYPOL_Field := 16#0#;
      --  BL Polarity
      BLPOL         : POLARITY_BLPOL_Field := 16#0#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for POLARITY_Register use record
      CSPOL         at 0 range 0 .. 0;
      REPOL         at 0 range 1 .. 1;
      WEPOL         at 0 range 2 .. 2;
      ALEPOL        at 0 range 3 .. 3;
      ARDYPOL       at 0 range 4 .. 4;
      BLPOL         at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   --  Page Length
   type PAGECTRL_PAGELEN_Field is
     (--  4 members in a page.
      MEMBER4,
      --  8 members in a page.
      MEMBER8,
      --  16 members in a page.
      MEMBER16,
      --  32 members in a page.
      MEMBER32)
     with Size => 2;
   for PAGECTRL_PAGELEN_Field use
     (MEMBER4 => 0,
      MEMBER8 => 1,
      MEMBER16 => 2,
      MEMBER32 => 3);

   subtype PAGECTRL_INCHIT_Field is Interfaces.EFM32.Bit;
   subtype PAGECTRL_RDPA_Field is Interfaces.EFM32.UInt4;
   subtype PAGECTRL_KEEPOPEN_Field is Interfaces.EFM32.UInt7;

   --  Page Control Register
   type PAGECTRL_Register is record
      --  Page Length
      PAGELEN        : PAGECTRL_PAGELEN_Field := Interfaces.EFM32.EBI.MEMBER4;
      --  unspecified
      Reserved_2_3   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Intrapage Hit Only on Incremental Addresses
      INCHIT         : PAGECTRL_INCHIT_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Page Read Access Time
      RDPA           : PAGECTRL_RDPA_Field := 16#F#;
      --  unspecified
      Reserved_12_19 : Interfaces.EFM32.Byte := 16#0#;
      --  Maximum Page Open Time
      KEEPOPEN       : PAGECTRL_KEEPOPEN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.EFM32.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PAGECTRL_Register use record
      PAGELEN        at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      INCHIT         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      RDPA           at 0 range 8 .. 11;
      Reserved_12_19 at 0 range 12 .. 19;
      KEEPOPEN       at 0 range 20 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype NANDCTRL_EN_Field is Interfaces.EFM32.Bit;

   --  NAND Flash Bank
   type NANDCTRL_BANKSEL_Field is
     (--  Memory bank 0 is connected to a NAND Flash device.
      BANK0,
      --  Memory bank 1 is connected to a NAND Flash device.
      BANK1,
      --  Memory bank 2 is connected to a NAND Flash device.
      BANK2,
      --  Memory bank 3 is connected to a NAND Flash device.
      BANK3)
     with Size => 2;
   for NANDCTRL_BANKSEL_Field use
     (BANK0 => 0,
      BANK1 => 1,
      BANK2 => 2,
      BANK3 => 3);

   --  NAND Control Register
   type NANDCTRL_Register is record
      --  NAND Flash Control Enable
      EN            : NANDCTRL_EN_Field := 16#0#;
      --  unspecified
      Reserved_1_3  : Interfaces.EFM32.UInt3 := 16#0#;
      --  NAND Flash Bank
      BANKSEL       : NANDCTRL_BANKSEL_Field := Interfaces.EFM32.EBI.BANK0;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for NANDCTRL_Register use record
      EN            at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      BANKSEL       at 0 range 4 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype CMD_ECCSTART_Field is Interfaces.EFM32.Bit;
   subtype CMD_ECCSTOP_Field is Interfaces.EFM32.Bit;
   subtype CMD_ECCCLEAR_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Error Correction Code Generation Start
      ECCSTART      : CMD_ECCSTART_Field := 16#0#;
      --  Write-only. Error Correction Code Generation Stop
      ECCSTOP       : CMD_ECCSTOP_Field := 16#0#;
      --  Write-only. Error Correction Code Clear
      ECCCLEAR      : CMD_ECCCLEAR_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      ECCSTART      at 0 range 0 .. 0;
      ECCSTOP       at 0 range 1 .. 1;
      ECCCLEAR      at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype STATUS_AHBACT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_ECCACT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TFTPIXEL0EMPTY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TFTPIXEL1EMPTY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TFTPIXELFULL_Field is Interfaces.EFM32.Bit;
   subtype STATUS_DDACT_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TFTDDEMPTY_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. EBI Busy With AHB Transaction
      AHBACT         : STATUS_AHBACT_Field;
      --  unspecified
      Reserved_1_3   : Interfaces.EFM32.UInt3;
      --  Read-only. EBI ECC Generation Active
      ECCACT         : STATUS_ECCACT_Field;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3;
      --  Read-only. EBI_TFTPIXEL0 is Empty
      TFTPIXEL0EMPTY : STATUS_TFTPIXEL0EMPTY_Field;
      --  Read-only. EBI_TFTPIXEL1 is Empty
      TFTPIXEL1EMPTY : STATUS_TFTPIXEL1EMPTY_Field;
      --  Read-only. EBI_TFTPIXEL0 is Full
      TFTPIXELFULL   : STATUS_TFTPIXELFULL_Field;
      --  unspecified
      Reserved_11_11 : Interfaces.EFM32.Bit;
      --  Read-only. EBI Busy With Direct Drive Transactions
      DDACT          : STATUS_DDACT_Field;
      --  Read-only. EBI_TFTDD Register is Empty
      TFTDDEMPTY     : STATUS_TFTDDEMPTY_Field;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      AHBACT         at 0 range 0 .. 0;
      Reserved_1_3   at 0 range 1 .. 3;
      ECCACT         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      TFTPIXEL0EMPTY at 0 range 8 .. 8;
      TFTPIXEL1EMPTY at 0 range 9 .. 9;
      TFTPIXELFULL   at 0 range 10 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      DDACT          at 0 range 12 .. 12;
      TFTDDEMPTY     at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  TFT Direct Drive Mode
   type TFTCTRL_DD_Field is
     (--  Direct Drive is disabled.
      DISABLED,
      --  Direct Drive from internal memory enabled and started.
      INTERNAL,
      --  Direct Drive from external memory enabled and started.
      EXTERNAL)
     with Size => 2;
   for TFTCTRL_DD_Field use
     (DISABLED => 0,
      INTERNAL => 1,
      EXTERNAL => 2);

   --  TFT Mask and Blend Mode
   type TFTCTRL_MASKBLEND_Field is
     (--  Masking and Blending are disabled.
      DISABLED,
      --  Internal Masking is enabled.
      IMASK,
      --  Internal Alpha Blending is enabled.
      IALPHA,
      --  Internal Masking and Alpha Blending are enabled.
      IMASKALPHA,
      --  External Frame Buffer Masking is enabled.
      EFBMASK,
      --  External Frame Buffer Alpha Blending is enabled.
      EFBALPHA,
      --  External Frame Buffer Masking and Alpha Blending are enabled.
      EFBMASKALPHA,
      --  Internal Frame Buffer Masking is enabled.
      IFBMASK,
      --  Internal Frame Buffer Alpha Blending is enabled.
      IFBALPHA,
      --  Internal Frame Buffer Masking and Alpha Blending are enabled.
      IFBMASKALPHA)
     with Size => 4;
   for TFTCTRL_MASKBLEND_Field use
     (DISABLED => 0,
      IMASK => 1,
      IALPHA => 2,
      IMASKALPHA => 3,
      EFBMASK => 4,
      EFBALPHA => 5,
      EFBMASKALPHA => 6,
      IFBMASK => 7,
      IFBALPHA => 8,
      IFBMASKALPHA => 9);

   subtype TFTCTRL_SHIFTDCLKEN_Field is Interfaces.EFM32.Bit;
   subtype TFTCTRL_FBCTRIG_Field is Interfaces.EFM32.Bit;

   --  Interleave Mode
   type TFTCTRL_INTERLEAVE_Field is
     (--  Allow unlimited interleaved EBI accesses per EBI_DCLK period. This can
--  cause jitter on the EBI_DCLK
      UNLIMITED,
      --  Allow 1 interleaved EBI access per EBI_DCLK period.
      ONEPERDCLK,
      --  Only allow EBI accesses during TFT porches.
      PORCH)
     with Size => 2;
   for TFTCTRL_INTERLEAVE_Field use
     (UNLIMITED => 0,
      ONEPERDCLK => 1,
      PORCH => 2);

   subtype TFTCTRL_COLOR1SRC_Field is Interfaces.EFM32.Bit;

   --  TFT Transaction Width
   type TFTCTRL_WIDTH_Field is
     (--  TFT Data is 8 bit wide.
      BYTE,
      --  TFT Data is 16 bit wide.
      HALFWORD)
     with Size => 2;
   for TFTCTRL_WIDTH_Field use
     (BYTE => 0,
      HALFWORD => 1);

   subtype TFTCTRL_ALIASBANKEN_Field is Interfaces.EFM32.Bit;

   --  Graphics Bank
   type TFTCTRL_BANKSEL_Field is
     (--  Memory bank 0 is used for Direct Drive, Masking, and Alpha Blending.
      BANK0,
      --  Memory bank 1 is used for Direct Drive, Masking, and Alpha Blending.
      BANK1,
      --  Memory bank 2 is used for Direct Drive, Masking, and Alpha Blending.
      BANK2,
      --  Memory bank 3 is used for Direct Drive, Masking, and Alpha Blending.
      BANK3)
     with Size => 2;
   for TFTCTRL_BANKSEL_Field use
     (BANK0 => 0,
      BANK1 => 1,
      BANK2 => 2,
      BANK3 => 3);

   --  Graphic Bank Select Aliasing
   type TFTCTRL_ALIASBANK_Field is
     (--  Graphic Bank Select is alias to Bank Select 0
      ALIASBANK0,
      --  Graphic Bank Select is alias to Bank Select 1
      ALIASBANK1,
      --  Graphic Bank Select is alias to Bank Select 2
      ALIASBANK2,
      --  Graphic Bank Select is alias to Bank Select 3
      ALIASBANK3)
     with Size => 2;
   for TFTCTRL_ALIASBANK_Field use
     (ALIASBANK0 => 0,
      ALIASBANK1 => 1,
      ALIASBANK2 => 2,
      ALIASBANK3 => 3);

   --  TFT Control Register
   type TFTCTRL_Register is record
      --  TFT Direct Drive Mode
      DD             : TFTCTRL_DD_Field := Interfaces.EFM32.EBI.DISABLED;
      --  TFT Mask and Blend Mode
      MASKBLEND      : TFTCTRL_MASKBLEND_Field :=
                        Interfaces.EFM32.EBI.DISABLED;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  TFT EBI_DCLK Shift Enable
      SHIFTDCLKEN    : TFTCTRL_SHIFTDCLKEN_Field := 16#0#;
      --  TFT Frame Base Copy Trigger
      FBCTRIG        : TFTCTRL_FBCTRIG_Field := 16#0#;
      --  Interleave Mode
      INTERLEAVE     : TFTCTRL_INTERLEAVE_Field :=
                        Interfaces.EFM32.EBI.UNLIMITED;
      --  Masking/Alpha Blending Color1 Source
      COLOR1SRC      : TFTCTRL_COLOR1SRC_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.EFM32.UInt3 := 16#0#;
      --  TFT Transaction Width
      WIDTH          : TFTCTRL_WIDTH_Field := Interfaces.EFM32.EBI.BYTE;
      --  unspecified
      Reserved_18_18 : Interfaces.EFM32.Bit := 16#0#;
      --  Alias to Graphics Bank Enable
      ALIASBANKEN    : TFTCTRL_ALIASBANKEN_Field := 16#0#;
      --  Graphics Bank
      BANKSEL        : TFTCTRL_BANKSEL_Field := Interfaces.EFM32.EBI.BANK0;
      --  Graphic Bank Select Aliasing
      ALIASBANK      : TFTCTRL_ALIASBANK_Field :=
                        Interfaces.EFM32.EBI.ALIASBANK0;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFTCTRL_Register use record
      DD             at 0 range 0 .. 1;
      MASKBLEND      at 0 range 2 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SHIFTDCLKEN    at 0 range 8 .. 8;
      FBCTRIG        at 0 range 9 .. 9;
      INTERLEAVE     at 0 range 10 .. 11;
      COLOR1SRC      at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      WIDTH          at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      ALIASBANKEN    at 0 range 19 .. 19;
      BANKSEL        at 0 range 20 .. 21;
      ALIASBANK      at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TFTSTATUS_HCNT_Field is Interfaces.EFM32.UInt11;
   subtype TFTSTATUS_VCNT_Field is Interfaces.EFM32.UInt15;

   --  TFT Status Register
   type TFTSTATUS_Register is record
      --  Read-only. Horizontal Count
      HCNT           : TFTSTATUS_HCNT_Field;
      --  unspecified
      Reserved_11_15 : Interfaces.EFM32.UInt5;
      --  Read-only. Vertical Count
      VCNT           : TFTSTATUS_VCNT_Field;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFTSTATUS_Register use record
      HCNT           at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      VCNT           at 0 range 16 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Sprite Pixel Color Format
   type TFTCOLORFORMAT_PIXEL0FORMAT_Field is
     (--  ARGB data is 0555
      ARGB0555,
      --  ARGB data is 0565
      ARGB0565,
      --  ARGB data is 0666
      ARGB0666,
      --  ARGB data is 0888
      ARGB0888,
      --  ARGB data is 5555
      ARGB5555,
      --  ARGB data is 6565
      ARGB6565,
      --  ARGB data is 6666
      ARGB6666,
      --  ARGB data is 8888
      ARGB8888)
     with Size => 3;
   for TFTCOLORFORMAT_PIXEL0FORMAT_Field use
     (ARGB0555 => 0,
      ARGB0565 => 1,
      ARGB0666 => 2,
      ARGB0888 => 3,
      ARGB5555 => 4,
      ARGB6565 => 5,
      ARGB6666 => 6,
      ARGB8888 => 7);

   --  Source and Destination Pixel Color Format
   type TFTCOLORFORMAT_PIXEL1FORMAT_Field is
     (--  RGB data is 555
      RGB555,
      --  RGB data is 565
      RGB565,
      --  RGB data is 666
      RGB666,
      --  RGB data is 888
      RGB888)
     with Size => 2;
   for TFTCOLORFORMAT_PIXEL1FORMAT_Field use
     (RGB555 => 0,
      RGB565 => 1,
      RGB666 => 2,
      RGB888 => 3);

   --  Color Format Register
   type TFTCOLORFORMAT_Register is record
      --  Sprite Pixel Color Format
      PIXEL0FORMAT   : TFTCOLORFORMAT_PIXEL0FORMAT_Field :=
                        Interfaces.EFM32.EBI.ARGB0555;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  Source and Destination Pixel Color Format
      PIXEL1FORMAT   : TFTCOLORFORMAT_PIXEL1FORMAT_Field :=
                        Interfaces.EFM32.EBI.RGB555;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFTCOLORFORMAT_Register use record
      PIXEL0FORMAT   at 0 range 0 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      PIXEL1FORMAT   at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype TFTFRAMEBASE_FRAMEBASE_Field is Interfaces.EFM32.UInt28;

   --  TFT Frame Base Register
   type TFTFRAMEBASE_Register is record
      --  Frame Base Address
      FRAMEBASE      : TFTFRAMEBASE_FRAMEBASE_Field := 16#0#;
      --  unspecified
      Reserved_28_31 : Interfaces.EFM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFTFRAMEBASE_Register use record
      FRAMEBASE      at 0 range 0 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype TFTSTRIDE_HSTRIDE_Field is Interfaces.EFM32.UInt12;

   --  TFT Stride Register
   type TFTSTRIDE_Register is record
      --  Horizontal Stride
      HSTRIDE        : TFTSTRIDE_HSTRIDE_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFTSTRIDE_Register use record
      HSTRIDE        at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype TFTSIZE_HSZ_Field is Interfaces.EFM32.UInt10;
   subtype TFTSIZE_VSZ_Field is Interfaces.EFM32.UInt10;

   --  TFT Size Register
   type TFTSIZE_Register is record
      --  Horizontal Size (excluding Porches)
      HSZ            : TFTSIZE_HSZ_Field := 16#0#;
      --  unspecified
      Reserved_10_15 : Interfaces.EFM32.UInt6 := 16#0#;
      --  Vertical Size (excluding Porches)
      VSZ            : TFTSIZE_VSZ_Field := 16#0#;
      --  unspecified
      Reserved_26_31 : Interfaces.EFM32.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFTSIZE_Register use record
      HSZ            at 0 range 0 .. 9;
      Reserved_10_15 at 0 range 10 .. 15;
      VSZ            at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype TFTHPORCH_HSYNC_Field is Interfaces.EFM32.UInt7;
   subtype TFTHPORCH_HFPORCH_Field is Interfaces.EFM32.Byte;
   subtype TFTHPORCH_HBPORCH_Field is Interfaces.EFM32.Byte;
   subtype TFTHPORCH_HSYNCSTART_Field is Interfaces.EFM32.UInt2;

   --  TFT Horizontal Porch Register
   type TFTHPORCH_Register is record
      --  Horizontal Synchronization Pulse Width
      HSYNC          : TFTHPORCH_HSYNC_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Horizontal Front Porch Size
      HFPORCH        : TFTHPORCH_HFPORCH_Field := 16#0#;
      --  unspecified
      Reserved_16_17 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Horizontal Back Porch Size
      HBPORCH        : TFTHPORCH_HBPORCH_Field := 16#0#;
      --  unspecified
      Reserved_26_27 : Interfaces.EFM32.UInt2 := 16#0#;
      --  HSYNC Start Delay
      HSYNCSTART     : TFTHPORCH_HSYNCSTART_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFTHPORCH_Register use record
      HSYNC          at 0 range 0 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      HFPORCH        at 0 range 8 .. 15;
      Reserved_16_17 at 0 range 16 .. 17;
      HBPORCH        at 0 range 18 .. 25;
      Reserved_26_27 at 0 range 26 .. 27;
      HSYNCSTART     at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype TFTVPORCH_VSYNC_Field is Interfaces.EFM32.UInt7;
   subtype TFTVPORCH_VFPORCH_Field is Interfaces.EFM32.UInt12;
   subtype TFTVPORCH_VBPORCH_Field is Interfaces.EFM32.UInt12;

   --  TFT Vertical Porch Register
   type TFTVPORCH_Register is record
      --  Vertical Synchronization Pulse Width
      VSYNC        : TFTVPORCH_VSYNC_Field := 16#0#;
      --  unspecified
      Reserved_7_7 : Interfaces.EFM32.Bit := 16#0#;
      --  Vertical Front Porch Size
      VFPORCH      : TFTVPORCH_VFPORCH_Field := 16#0#;
      --  Vertical Back Porch Size
      VBPORCH      : TFTVPORCH_VBPORCH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFTVPORCH_Register use record
      VSYNC        at 0 range 0 .. 6;
      Reserved_7_7 at 0 range 7 .. 7;
      VFPORCH      at 0 range 8 .. 19;
      VBPORCH      at 0 range 20 .. 31;
   end record;

   subtype TFTTIMING_DCLKPERIOD_Field is Interfaces.EFM32.UInt12;
   subtype TFTTIMING_TFTSTART_Field is Interfaces.EFM32.UInt12;
   subtype TFTTIMING_TFTSETUP_Field is Interfaces.EFM32.UInt3;
   subtype TFTTIMING_TFTHOLD_Field is Interfaces.EFM32.UInt3;

   --  TFT Timing Register
   type TFTTIMING_Register is record
      --  TFT Direct Drive Transaction (EBI_DCLK) Period
      DCLKPERIOD     : TFTTIMING_DCLKPERIOD_Field := 16#0#;
      --  TFT Direct Drive Transaction Start
      TFTSTART       : TFTTIMING_TFTSTART_Field := 16#0#;
      --  TFT Setup Time
      TFTSETUP       : TFTTIMING_TFTSETUP_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.EFM32.Bit := 16#0#;
      --  TFT Hold Time
      TFTHOLD        : TFTTIMING_TFTHOLD_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFTTIMING_Register use record
      DCLKPERIOD     at 0 range 0 .. 11;
      TFTSTART       at 0 range 12 .. 23;
      TFTSETUP       at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      TFTHOLD        at 0 range 28 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype TFTPOLARITY_CSPOL_Field is Interfaces.EFM32.Bit;
   subtype TFTPOLARITY_DCLKPOL_Field is Interfaces.EFM32.Bit;
   subtype TFTPOLARITY_DATAENPOL_Field is Interfaces.EFM32.Bit;
   subtype TFTPOLARITY_HSYNCPOL_Field is Interfaces.EFM32.Bit;
   subtype TFTPOLARITY_VSYNCPOL_Field is Interfaces.EFM32.Bit;

   --  TFT Polarity Register
   type TFTPOLARITY_Register is record
      --  TFT Chip Select Polarity
      CSPOL         : TFTPOLARITY_CSPOL_Field := 16#0#;
      --  TFT DCLK Polarity
      DCLKPOL       : TFTPOLARITY_DCLKPOL_Field := 16#0#;
      --  TFT DATAEN Polarity
      DATAENPOL     : TFTPOLARITY_DATAENPOL_Field := 16#0#;
      --  Address Latch Polarity
      HSYNCPOL      : TFTPOLARITY_HSYNCPOL_Field := 16#0#;
      --  VSYNC Polarity
      VSYNCPOL      : TFTPOLARITY_VSYNCPOL_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFTPOLARITY_Register use record
      CSPOL         at 0 range 0 .. 0;
      DCLKPOL       at 0 range 1 .. 1;
      DATAENPOL     at 0 range 2 .. 2;
      HSYNCPOL      at 0 range 3 .. 3;
      VSYNCPOL      at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype TFTDD_DATA_Field is Interfaces.EFM32.UInt24;

   --  TFT Direct Drive Data Register
   type TFTDD_Register is record
      --  TFT Direct Drive Data From Internal Memory
      DATA           : TFTDD_DATA_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFTDD_Register use record
      DATA           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TFTALPHA_ALPHA_Field is Interfaces.EFM32.UInt9;

   --  TFT Alpha Blending Register
   type TFTALPHA_Register is record
      --  TFT Alpha Blending Factor
      ALPHA         : TFTALPHA_ALPHA_Field := 16#0#;
      --  unspecified
      Reserved_9_31 : Interfaces.EFM32.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFTALPHA_Register use record
      ALPHA         at 0 range 0 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype TFTPIXEL_DATA_Field is Interfaces.EFM32.UInt24;

   --  TFT Pixel 0 Register
   type TFTPIXEL_Register is record
      --  RGB Data
      DATA           : TFTPIXEL_DATA_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFTPIXEL_Register use record
      DATA           at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype TFTMASK_TFTMASK_Field is Interfaces.EFM32.UInt24;

   --  TFT Masking Register
   type TFTMASK_Register is record
      --  TFT Mask Value
      TFTMASK        : TFTMASK_TFTMASK_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFTMASK_Register use record
      TFTMASK        at 0 range 0 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype IF_VSYNC_Field is Interfaces.EFM32.Bit;
   subtype IF_HSYNC_Field is Interfaces.EFM32.Bit;
   subtype IF_VBPORCH_Field is Interfaces.EFM32.Bit;
   subtype IF_VFPORCH_Field is Interfaces.EFM32.Bit;
   subtype IF_DDEMPTY_Field is Interfaces.EFM32.Bit;
   subtype IF_DDJIT_Field is Interfaces.EFM32.Bit;
   subtype IF_TFTPIXEL0EMPTY_Field is Interfaces.EFM32.Bit;
   subtype IF_TFTPIXEL1EMPTY_Field is Interfaces.EFM32.Bit;
   subtype IF_TFTPIXELFULL_Field is Interfaces.EFM32.Bit;
   subtype IF_TFTPIXELOF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. Vertical Sync Interrupt Flag
      VSYNC          : IF_VSYNC_Field;
      --  Read-only. Horizontal Sync Interrupt Flag
      HSYNC          : IF_HSYNC_Field;
      --  Read-only. Vertical Back Porch Interrupt Flag
      VBPORCH        : IF_VBPORCH_Field;
      --  Read-only. Vertical Front Porch Interrupt Flag
      VFPORCH        : IF_VFPORCH_Field;
      --  Read-only. Direct Drive Data Empty Interrupt Flag
      DDEMPTY        : IF_DDEMPTY_Field;
      --  Read-only. Direct Drive Jitter Interrupt Flag
      DDJIT          : IF_DDJIT_Field;
      --  Read-only. EBI_TFTPIXEL0 is Empty Interrupt Flag
      TFTPIXEL0EMPTY : IF_TFTPIXEL0EMPTY_Field;
      --  Read-only. EBI_TFTPIXEL1 is Empty Interrupt Flag
      TFTPIXEL1EMPTY : IF_TFTPIXEL1EMPTY_Field;
      --  Read-only. EBI_TFTPIXEL is Full Interrupt Flag
      TFTPIXELFULL   : IF_TFTPIXELFULL_Field;
      --  Read-only. EBI_TFTPIXEL Register Overflow Interrupt Flag
      TFTPIXELOF     : IF_TFTPIXELOF_Field;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      VSYNC          at 0 range 0 .. 0;
      HSYNC          at 0 range 1 .. 1;
      VBPORCH        at 0 range 2 .. 2;
      VFPORCH        at 0 range 3 .. 3;
      DDEMPTY        at 0 range 4 .. 4;
      DDJIT          at 0 range 5 .. 5;
      TFTPIXEL0EMPTY at 0 range 6 .. 6;
      TFTPIXEL1EMPTY at 0 range 7 .. 7;
      TFTPIXELFULL   at 0 range 8 .. 8;
      TFTPIXELOF     at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype IFS_VSYNC_Field is Interfaces.EFM32.Bit;
   subtype IFS_HSYNC_Field is Interfaces.EFM32.Bit;
   subtype IFS_VBPORCH_Field is Interfaces.EFM32.Bit;
   subtype IFS_VFPORCH_Field is Interfaces.EFM32.Bit;
   subtype IFS_DDEMPTY_Field is Interfaces.EFM32.Bit;
   subtype IFS_DDJIT_Field is Interfaces.EFM32.Bit;
   subtype IFS_TFTPIXEL0EMPTY_Field is Interfaces.EFM32.Bit;
   subtype IFS_TFTPIXEL1EMPTY_Field is Interfaces.EFM32.Bit;
   subtype IFS_TFTPIXELFULL_Field is Interfaces.EFM32.Bit;
   subtype IFS_TFTPIXELOF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Vertical Sync Interrupt Flag Set
      VSYNC          : IFS_VSYNC_Field := 16#0#;
      --  Write-only. Horizontal Sync Interrupt Flag Set
      HSYNC          : IFS_HSYNC_Field := 16#0#;
      --  Write-only. Vertical Back Porch Interrupt Flag Set
      VBPORCH        : IFS_VBPORCH_Field := 16#0#;
      --  Write-only. Vertical Front Porch Interrupt Flag Set
      VFPORCH        : IFS_VFPORCH_Field := 16#0#;
      --  Write-only. Direct Drive Data Empty Interrupt Flag Set
      DDEMPTY        : IFS_DDEMPTY_Field := 16#0#;
      --  Write-only. Direct Drive Jitter Interrupt Flag Set
      DDJIT          : IFS_DDJIT_Field := 16#0#;
      --  Write-only. EBI_TFTPIXEL0 Empty Interrupt Flag Set
      TFTPIXEL0EMPTY : IFS_TFTPIXEL0EMPTY_Field := 16#0#;
      --  Write-only. EBI_TFTPIXEL1 Empty Interrupt Flag Set
      TFTPIXEL1EMPTY : IFS_TFTPIXEL1EMPTY_Field := 16#0#;
      --  Write-only. EBI_TFTPIXEL Full Interrupt Flag Set
      TFTPIXELFULL   : IFS_TFTPIXELFULL_Field := 16#0#;
      --  Write-only. EBI_TFTPIXEL Overflow Interrupt Flag Set
      TFTPIXELOF     : IFS_TFTPIXELOF_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      VSYNC          at 0 range 0 .. 0;
      HSYNC          at 0 range 1 .. 1;
      VBPORCH        at 0 range 2 .. 2;
      VFPORCH        at 0 range 3 .. 3;
      DDEMPTY        at 0 range 4 .. 4;
      DDJIT          at 0 range 5 .. 5;
      TFTPIXEL0EMPTY at 0 range 6 .. 6;
      TFTPIXEL1EMPTY at 0 range 7 .. 7;
      TFTPIXELFULL   at 0 range 8 .. 8;
      TFTPIXELOF     at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype IFC_VSYNC_Field is Interfaces.EFM32.Bit;
   subtype IFC_HSYNC_Field is Interfaces.EFM32.Bit;
   subtype IFC_VBPORCH_Field is Interfaces.EFM32.Bit;
   subtype IFC_VFPORCH_Field is Interfaces.EFM32.Bit;
   subtype IFC_DDEMPTY_Field is Interfaces.EFM32.Bit;
   subtype IFC_DDJIT_Field is Interfaces.EFM32.Bit;
   subtype IFC_TFTPIXEL0EMPTY_Field is Interfaces.EFM32.Bit;
   subtype IFC_TFTPIXEL1EMPTY_Field is Interfaces.EFM32.Bit;
   subtype IFC_TFTPIXELFULL_Field is Interfaces.EFM32.Bit;
   subtype IFC_TFTPIXELOF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Vertical Sync Interrupt Flag Clear
      VSYNC          : IFC_VSYNC_Field := 16#0#;
      --  Write-only. Horizontal Sync Interrupt Flag Clear
      HSYNC          : IFC_HSYNC_Field := 16#0#;
      --  Write-only. Vertical Back Porch Interrupt Flag Clear
      VBPORCH        : IFC_VBPORCH_Field := 16#0#;
      --  Write-only. Vertical Front Porch Interrupt Flag Clear
      VFPORCH        : IFC_VFPORCH_Field := 16#0#;
      --  Write-only. Direct Drive Data Empty Interrupt Flag Clear
      DDEMPTY        : IFC_DDEMPTY_Field := 16#0#;
      --  Write-only. Direct Drive Jitter Interrupt Flag Clear
      DDJIT          : IFC_DDJIT_Field := 16#0#;
      --  Write-only. EBI_TFTPIXEL0 Empty Interrupt Flag Clear
      TFTPIXEL0EMPTY : IFC_TFTPIXEL0EMPTY_Field := 16#0#;
      --  Write-only. EBI_TFTPIXEL1 Empty Interrupt Flag Clear
      TFTPIXEL1EMPTY : IFC_TFTPIXEL1EMPTY_Field := 16#0#;
      --  Write-only. EBI_TFTPIXEL Full Interrupt Flag Clear
      TFTPIXELFULL   : IFC_TFTPIXELFULL_Field := 16#0#;
      --  Write-only. EBI_TFTPIXEL Overflow Interrupt Flag Clear
      TFTPIXELOF     : IFC_TFTPIXELOF_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      VSYNC          at 0 range 0 .. 0;
      HSYNC          at 0 range 1 .. 1;
      VBPORCH        at 0 range 2 .. 2;
      VFPORCH        at 0 range 3 .. 3;
      DDEMPTY        at 0 range 4 .. 4;
      DDJIT          at 0 range 5 .. 5;
      TFTPIXEL0EMPTY at 0 range 6 .. 6;
      TFTPIXEL1EMPTY at 0 range 7 .. 7;
      TFTPIXELFULL   at 0 range 8 .. 8;
      TFTPIXELOF     at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype IEN_VSYNC_Field is Interfaces.EFM32.Bit;
   subtype IEN_HSYNC_Field is Interfaces.EFM32.Bit;
   subtype IEN_VBPORCH_Field is Interfaces.EFM32.Bit;
   subtype IEN_VFPORCH_Field is Interfaces.EFM32.Bit;
   subtype IEN_DDEMPTY_Field is Interfaces.EFM32.Bit;
   subtype IEN_DDJIT_Field is Interfaces.EFM32.Bit;
   subtype IEN_TFTPIXEL0EMPTY_Field is Interfaces.EFM32.Bit;
   subtype IEN_TFTPIXEL1EMPTY_Field is Interfaces.EFM32.Bit;
   subtype IEN_TFTPIXELFULL_Field is Interfaces.EFM32.Bit;
   subtype IEN_TFTPIXELOF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  Vertical Sync Interrupt Enable
      VSYNC          : IEN_VSYNC_Field := 16#0#;
      --  Horizontal Sync Interrupt Enable
      HSYNC          : IEN_HSYNC_Field := 16#0#;
      --  Vertical Back Porch Interrupt Enable
      VBPORCH        : IEN_VBPORCH_Field := 16#0#;
      --  Vertical Front Porch Interrupt Enable
      VFPORCH        : IEN_VFPORCH_Field := 16#0#;
      --  Direct Drive Data Empty Interrupt Enable
      DDEMPTY        : IEN_DDEMPTY_Field := 16#0#;
      --  Direct Drive Jitter Interrupt Enable
      DDJIT          : IEN_DDJIT_Field := 16#0#;
      --  EBI_TFTPIXEL0 Empty Interrupt Enable
      TFTPIXEL0EMPTY : IEN_TFTPIXEL0EMPTY_Field := 16#0#;
      --  EBI_TFTPIXEL1 Empty Interrupt Enable
      TFTPIXEL1EMPTY : IEN_TFTPIXEL1EMPTY_Field := 16#0#;
      --  EBI_TFTPIXEL Full Interrupt Enable
      TFTPIXELFULL   : IEN_TFTPIXELFULL_Field := 16#0#;
      --  EBI_TFTPIXEL Overflow Interrupt Enable
      TFTPIXELOF     : IEN_TFTPIXELOF_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      VSYNC          at 0 range 0 .. 0;
      HSYNC          at 0 range 1 .. 1;
      VBPORCH        at 0 range 2 .. 2;
      VFPORCH        at 0 range 3 .. 3;
      DDEMPTY        at 0 range 4 .. 4;
      DDJIT          at 0 range 5 .. 5;
      TFTPIXEL0EMPTY at 0 range 6 .. 6;
      TFTPIXEL1EMPTY at 0 range 7 .. 7;
      TFTPIXELFULL   at 0 range 8 .. 8;
      TFTPIXELOF     at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype ROUTEPEN_EBIPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CS0PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CS1PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CS2PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CS3PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_ALEPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_ARDYPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_BLPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_NANDPEN_Field is Interfaces.EFM32.Bit;

   --  Sets the Lower Bound for EBI_A Enabling
   type ROUTEPEN_ALB_Field is
     (--  Address lines from EBI_A[0] and upwards can be enabled via APEN.
      A0,
      --  Address lines from EBI_A[8] and upwards can be enabled via APEN.
      A8,
      --  Address lines from EBI_A[16] and upwards can be enabled via APEN.
      A16,
      --  Address lines from EBI_A[24] and upwards can be enabled via APEN.
      A24)
     with Size => 2;
   for ROUTEPEN_ALB_Field use
     (A0 => 0,
      A8 => 1,
      A16 => 2,
      A24 => 3);

   --  EBI_A Pin Enable
   type ROUTEPEN_APEN_Field is
     (--  All EBI_A pins are disabled.
      A0,
      --  EBI_A[4:L] pins enabled.
      A5,
      --  EBI_A[5:L] pins enabled.
      A6,
      --  EBI_A[6:L] pins enabled.
      A7,
      --  EBI_A[7:L] pins enabled.
      A8,
      --  EBI_A[8:L] pins enabled.
      A9,
      --  EBI_A[9:L] pins enabled.
      A10,
      --  EBI_A[10:L] pins enabled.
      A11,
      --  EBI_A[11:L] pins enabled.
      A12,
      --  EBI_A[12:L] pins enabled.
      A13,
      --  EBI_A[13:L] pins enabled.
      A14,
      --  EBI_A[14:L] pins enabled.
      A15,
      --  EBI_A[15:L] pins enabled.
      A16,
      --  EBI_A[16:L] pins enabled.
      A17,
      --  EBI_A[17:L] pins enabled.
      A18,
      --  EBI_A[18:L] pins enabled.
      A19,
      --  EBI_A[19:L] pins enabled.
      A20,
      --  EBI_A[20:L] pins enabled.
      A21,
      --  EBI_A[21:L] pins enabled.
      A22,
      --  EBI_A[22:L] pins enabled.
      A23,
      --  EBI_A[23:L] pins enabled.
      A24,
      --  EBI_A[24:L] pins enabled.
      A25,
      --  EBI_A[25:L] pins enabled.
      A26,
      --  EBI_A[26:L] pins enabled.
      A27,
      --  EBI_A[27:L] pins enabled.
      A28)
     with Size => 5;
   for ROUTEPEN_APEN_Field use
     (A0 => 0,
      A5 => 5,
      A6 => 6,
      A7 => 7,
      A8 => 8,
      A9 => 9,
      A10 => 10,
      A11 => 11,
      A12 => 12,
      A13 => 13,
      A14 => 14,
      A15 => 15,
      A16 => 16,
      A17 => 17,
      A18 => 18,
      A19 => 19,
      A20 => 20,
      A21 => 21,
      A22 => 22,
      A23 => 23,
      A24 => 24,
      A25 => 25,
      A26 => 26,
      A27 => 27,
      A28 => 28);

   subtype ROUTEPEN_TFTPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_DATAENPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CSTFTPEN_Field is Interfaces.EFM32.Bit;

   --  I/O Routing Register
   type ROUTEPEN_Register is record
      --  EBI Pin Enable
      EBIPEN         : ROUTEPEN_EBIPEN_Field := 16#0#;
      --  EBI_CS0 Pin Enable
      CS0PEN         : ROUTEPEN_CS0PEN_Field := 16#0#;
      --  EBI_CS1 Pin Enable
      CS1PEN         : ROUTEPEN_CS1PEN_Field := 16#0#;
      --  EBI_CS2 Pin Enable
      CS2PEN         : ROUTEPEN_CS2PEN_Field := 16#0#;
      --  EBI_CS3 Pin Enable
      CS3PEN         : ROUTEPEN_CS3PEN_Field := 16#0#;
      --  EBI_ALE Pin Enable
      ALEPEN         : ROUTEPEN_ALEPEN_Field := 16#0#;
      --  EBI_ARDY Pin Enable
      ARDYPEN        : ROUTEPEN_ARDYPEN_Field := 16#0#;
      --  EBI_BL[1:0] Pin Enable
      BLPEN          : ROUTEPEN_BLPEN_Field := 16#0#;
      --  unspecified
      Reserved_8_11  : Interfaces.EFM32.UInt4 := 16#0#;
      --  NANDRE and NANDWE Pin Enable
      NANDPEN        : ROUTEPEN_NANDPEN_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Sets the Lower Bound for EBI_A Enabling
      ALB            : ROUTEPEN_ALB_Field := Interfaces.EFM32.EBI.A0;
      --  EBI_A Pin Enable
      APEN           : ROUTEPEN_APEN_Field := Interfaces.EFM32.EBI.A0;
      --  unspecified
      Reserved_23_23 : Interfaces.EFM32.Bit := 16#0#;
      --  EBI_TFT Pin Enable
      TFTPEN         : ROUTEPEN_TFTPEN_Field := 16#0#;
      --  EBI_DATA Pin Enable
      DATAENPEN      : ROUTEPEN_DATAENPEN_Field := 16#0#;
      --  EBI_CSTFT Pin Enable
      CSTFTPEN       : ROUTEPEN_CSTFTPEN_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.EFM32.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTEPEN_Register use record
      EBIPEN         at 0 range 0 .. 0;
      CS0PEN         at 0 range 1 .. 1;
      CS1PEN         at 0 range 2 .. 2;
      CS2PEN         at 0 range 3 .. 3;
      CS3PEN         at 0 range 4 .. 4;
      ALEPEN         at 0 range 5 .. 5;
      ARDYPEN        at 0 range 6 .. 6;
      BLPEN          at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      NANDPEN        at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      ALB            at 0 range 16 .. 17;
      APEN           at 0 range 18 .. 22;
      Reserved_23_23 at 0 range 23 .. 23;
      TFTPEN         at 0 range 24 .. 24;
      DATAENPEN      at 0 range 25 .. 25;
      CSTFTPEN       at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC0_EBILOC_Field is
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
   for ROUTELOC0_EBILOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5);

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
      LOC4)
     with Size => 6;
   for ROUTELOC0_CSLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4);

   --  I/O Location
   type ROUTELOC0_NANDLOC_Field is
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
   for ROUTELOC0_NANDLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5);

   --  I/O Location
   type ROUTELOC0_TFTLOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3)
     with Size => 6;
   for ROUTELOC0_TFTLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3);

   --  I/O Routing Location Register
   type ROUTELOC0_Register is record
      --  I/O Location
      EBILOC         : ROUTELOC0_EBILOC_Field := Interfaces.EFM32.EBI.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      CSLOC          : ROUTELOC0_CSLOC_Field := Interfaces.EFM32.EBI.LOC0;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      NANDLOC        : ROUTELOC0_NANDLOC_Field := Interfaces.EFM32.EBI.LOC0;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      TFTLOC         : ROUTELOC0_TFTLOC_Field := Interfaces.EFM32.EBI.LOC0;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC0_Register use record
      EBILOC         at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CSLOC          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      NANDLOC        at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      TFTLOC         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC1_ADLOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1)
     with Size => 6;
   for ROUTELOC1_ADLOC_Field use
     (LOC0 => 0,
      LOC1 => 1);

   --  I/O Location
   type ROUTELOC1_ALOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3)
     with Size => 6;
   for ROUTELOC1_ALOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3);

   --  I/O Location
   type ROUTELOC1_RDYLOC_Field is
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
   for ROUTELOC1_RDYLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3,
      LOC4 => 4,
      LOC5 => 5);

   --  I/O Routing Location Register
   type ROUTELOC1_Register is record
      --  I/O Location
      ADLOC          : ROUTELOC1_ADLOC_Field := Interfaces.EFM32.EBI.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      ALOC           : ROUTELOC1_ALOC_Field := Interfaces.EFM32.EBI.LOC0;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location
      RDYLOC         : ROUTELOC1_RDYLOC_Field := Interfaces.EFM32.EBI.LOC0;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC1_Register use record
      ADLOC          at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      ALOC           at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      RDYLOC         at 0 range 16 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  EBI
   type EBI_Peripheral is record
      --  Control Register
      CTRL           : aliased CTRL_Register;
      --  Address Timing Register
      ADDRTIMING     : aliased ADDRTIMING_Register;
      --  Read Timing Register
      RDTIMING       : aliased RDTIMING_Register;
      --  Write Timing Register
      WRTIMING       : aliased WRTIMING_Register;
      --  Polarity Register
      POLARITY       : aliased POLARITY_Register;
      --  Address Timing Register 1
      ADDRTIMING1    : aliased ADDRTIMING_Register;
      --  Read Timing Register 1
      RDTIMING1      : aliased RDTIMING_Register;
      --  Write Timing Register 1
      WRTIMING1      : aliased WRTIMING_Register;
      --  Polarity Register 1
      POLARITY1      : aliased POLARITY_Register;
      --  Address Timing Register 2
      ADDRTIMING2    : aliased ADDRTIMING_Register;
      --  Read Timing Register 2
      RDTIMING2      : aliased RDTIMING_Register;
      --  Write Timing Register 2
      WRTIMING2      : aliased WRTIMING_Register;
      --  Polarity Register 2
      POLARITY2      : aliased POLARITY_Register;
      --  Address Timing Register 3
      ADDRTIMING3    : aliased ADDRTIMING_Register;
      --  Read Timing Register 3
      RDTIMING3      : aliased RDTIMING_Register;
      --  Write Timing Register 3
      WRTIMING3      : aliased WRTIMING_Register;
      --  Polarity Register 3
      POLARITY3      : aliased POLARITY_Register;
      --  Page Control Register
      PAGECTRL       : aliased PAGECTRL_Register;
      --  NAND Control Register
      NANDCTRL       : aliased NANDCTRL_Register;
      --  Command Register
      CMD            : aliased CMD_Register;
      --  Status Register
      STATUS         : aliased STATUS_Register;
      --  ECC Parity Register
      ECCPARITY      : aliased Interfaces.EFM32.UInt32;
      --  TFT Control Register
      TFTCTRL        : aliased TFTCTRL_Register;
      --  TFT Status Register
      TFTSTATUS      : aliased TFTSTATUS_Register;
      --  Color Format Register
      TFTCOLORFORMAT : aliased TFTCOLORFORMAT_Register;
      --  TFT Frame Base Register
      TFTFRAMEBASE   : aliased TFTFRAMEBASE_Register;
      --  TFT Stride Register
      TFTSTRIDE      : aliased TFTSTRIDE_Register;
      --  TFT Size Register
      TFTSIZE        : aliased TFTSIZE_Register;
      --  TFT Horizontal Porch Register
      TFTHPORCH      : aliased TFTHPORCH_Register;
      --  TFT Vertical Porch Register
      TFTVPORCH      : aliased TFTVPORCH_Register;
      --  TFT Timing Register
      TFTTIMING      : aliased TFTTIMING_Register;
      --  TFT Polarity Register
      TFTPOLARITY    : aliased TFTPOLARITY_Register;
      --  TFT Direct Drive Data Register
      TFTDD          : aliased TFTDD_Register;
      --  TFT Alpha Blending Register
      TFTALPHA       : aliased TFTALPHA_Register;
      --  TFT Pixel 0 Register
      TFTPIXEL0      : aliased TFTPIXEL_Register;
      --  TFT Pixel 1 Register
      TFTPIXEL1      : aliased TFTPIXEL_Register;
      --  TFT Alpha Blending Result Pixel Register
      TFTPIXEL       : aliased TFTPIXEL_Register;
      --  TFT Masking Register
      TFTMASK        : aliased TFTMASK_Register;
      --  Interrupt Flag Register
      IF_k           : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS            : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC            : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN            : aliased IEN_Register;
      --  I/O Routing Register
      ROUTEPEN       : aliased ROUTEPEN_Register;
      --  I/O Routing Location Register
      ROUTELOC0      : aliased ROUTELOC0_Register;
      --  I/O Routing Location Register
      ROUTELOC1      : aliased ROUTELOC1_Register;
   end record
     with Volatile;

   for EBI_Peripheral use record
      CTRL           at 16#0# range 0 .. 31;
      ADDRTIMING     at 16#4# range 0 .. 31;
      RDTIMING       at 16#8# range 0 .. 31;
      WRTIMING       at 16#C# range 0 .. 31;
      POLARITY       at 16#10# range 0 .. 31;
      ADDRTIMING1    at 16#18# range 0 .. 31;
      RDTIMING1      at 16#1C# range 0 .. 31;
      WRTIMING1      at 16#20# range 0 .. 31;
      POLARITY1      at 16#24# range 0 .. 31;
      ADDRTIMING2    at 16#28# range 0 .. 31;
      RDTIMING2      at 16#2C# range 0 .. 31;
      WRTIMING2      at 16#30# range 0 .. 31;
      POLARITY2      at 16#34# range 0 .. 31;
      ADDRTIMING3    at 16#38# range 0 .. 31;
      RDTIMING3      at 16#3C# range 0 .. 31;
      WRTIMING3      at 16#40# range 0 .. 31;
      POLARITY3      at 16#44# range 0 .. 31;
      PAGECTRL       at 16#48# range 0 .. 31;
      NANDCTRL       at 16#4C# range 0 .. 31;
      CMD            at 16#50# range 0 .. 31;
      STATUS         at 16#54# range 0 .. 31;
      ECCPARITY      at 16#58# range 0 .. 31;
      TFTCTRL        at 16#5C# range 0 .. 31;
      TFTSTATUS      at 16#60# range 0 .. 31;
      TFTCOLORFORMAT at 16#64# range 0 .. 31;
      TFTFRAMEBASE   at 16#68# range 0 .. 31;
      TFTSTRIDE      at 16#70# range 0 .. 31;
      TFTSIZE        at 16#74# range 0 .. 31;
      TFTHPORCH      at 16#78# range 0 .. 31;
      TFTVPORCH      at 16#7C# range 0 .. 31;
      TFTTIMING      at 16#80# range 0 .. 31;
      TFTPOLARITY    at 16#84# range 0 .. 31;
      TFTDD          at 16#88# range 0 .. 31;
      TFTALPHA       at 16#8C# range 0 .. 31;
      TFTPIXEL0      at 16#90# range 0 .. 31;
      TFTPIXEL1      at 16#94# range 0 .. 31;
      TFTPIXEL       at 16#98# range 0 .. 31;
      TFTMASK        at 16#9C# range 0 .. 31;
      IF_k           at 16#A0# range 0 .. 31;
      IFS            at 16#A4# range 0 .. 31;
      IFC            at 16#A8# range 0 .. 31;
      IEN            at 16#AC# range 0 .. 31;
      ROUTEPEN       at 16#B0# range 0 .. 31;
      ROUTELOC0      at 16#B4# range 0 .. 31;
      ROUTELOC1      at 16#B8# range 0 .. 31;
   end record;

   --  EBI
   EBI_Periph : aliased EBI_Peripheral
     with Import, Address => EBI_Base;

end Interfaces.EFM32.EBI;
