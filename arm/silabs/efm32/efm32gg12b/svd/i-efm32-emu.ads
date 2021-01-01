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

--  EMU
package Interfaces.EFM32.EMU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_EM2BLOCK_Field is Interfaces.EFM32.Bit;
   subtype CTRL_EM2BODDIS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_EM01LD_Field is Interfaces.EFM32.Bit;
   subtype CTRL_EM23VSCALEAUTOWSEN_Field is Interfaces.EFM32.Bit;

   --  EM23 Voltage Scale
   type CTRL_EM23VSCALE_Field is
     (--  Voltage Scale Level 2
      VSCALE2,
      --  Voltage Scale Level 0
      VSCALE0,
      --  RESV
      RESV)
     with Size => 2;
   for CTRL_EM23VSCALE_Field use
     (VSCALE2 => 0,
      VSCALE0 => 2,
      RESV => 3);

   --  EM4H Voltage Scale
   type CTRL_EM4HVSCALE_Field is
     (--  Voltage Scale Level 2
      VSCALE2,
      --  Voltage Scale Level 0
      VSCALE0,
      --  RESV
      RESV)
     with Size => 2;
   for CTRL_EM4HVSCALE_Field use
     (VSCALE2 => 0,
      VSCALE0 => 2,
      RESV => 3);

   --  Control Register
   type CTRL_Register is record
      --  unspecified
      Reserved_0_0       : Interfaces.EFM32.Bit := 16#0#;
      --  Energy Mode 2 Block
      EM2BLOCK           : CTRL_EM2BLOCK_Field := 16#0#;
      --  Disable BOD in EM2
      EM2BODDIS          : CTRL_EM2BODDIS_Field := 16#0#;
      --  Reserved for internal use. Do not change.
      EM01LD             : CTRL_EM01LD_Field := 16#0#;
      --  Automatically Configures Flash and Frequency to Wakeup From EM2 or
      --  EM3 at Low Voltage
      EM23VSCALEAUTOWSEN : CTRL_EM23VSCALEAUTOWSEN_Field := 16#0#;
      --  unspecified
      Reserved_5_7       : Interfaces.EFM32.UInt3 := 16#0#;
      --  EM23 Voltage Scale
      EM23VSCALE         : CTRL_EM23VSCALE_Field :=
                            Interfaces.EFM32.EMU.VSCALE2;
      --  unspecified
      Reserved_10_15     : Interfaces.EFM32.UInt6 := 16#0#;
      --  EM4H Voltage Scale
      EM4HVSCALE         : CTRL_EM4HVSCALE_Field :=
                            Interfaces.EFM32.EMU.VSCALE2;
      --  unspecified
      Reserved_18_31     : Interfaces.EFM32.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      Reserved_0_0       at 0 range 0 .. 0;
      EM2BLOCK           at 0 range 1 .. 1;
      EM2BODDIS          at 0 range 2 .. 2;
      EM01LD             at 0 range 3 .. 3;
      EM23VSCALEAUTOWSEN at 0 range 4 .. 4;
      Reserved_5_7       at 0 range 5 .. 7;
      EM23VSCALE         at 0 range 8 .. 9;
      Reserved_10_15     at 0 range 10 .. 15;
      EM4HVSCALE         at 0 range 16 .. 17;
      Reserved_18_31     at 0 range 18 .. 31;
   end record;

   subtype STATUS_VMONRDY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_VMONAVDD_Field is Interfaces.EFM32.Bit;
   subtype STATUS_VMONALTAVDD_Field is Interfaces.EFM32.Bit;
   subtype STATUS_VMONDVDD_Field is Interfaces.EFM32.Bit;
   --  STATUS_VMONIO array element
   subtype STATUS_VMONIO_Element is Interfaces.EFM32.Bit;

   --  STATUS_VMONIO array
   type STATUS_VMONIO_Field_Array is array (0 .. 1) of STATUS_VMONIO_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for STATUS_VMONIO
   type STATUS_VMONIO_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  VMONIO as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  VMONIO as an array
            Arr : STATUS_VMONIO_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for STATUS_VMONIO_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype STATUS_VMONBUVDD_Field is Interfaces.EFM32.Bit;
   subtype STATUS_BURDY_Field is Interfaces.EFM32.Bit;

   --  Current Voltage Scale Value
   type STATUS_VSCALE_Field is
     (--  Voltage Scale Level 2
      VSCALE2,
      --  Voltage Scale Level 0
      VSCALE0,
      --  RESV
      RESV)
     with Size => 2;
   for STATUS_VSCALE_Field use
     (VSCALE2 => 0,
      VSCALE0 => 2,
      RESV => 3);

   subtype STATUS_VSCALEBUSY_Field is Interfaces.EFM32.Bit;
   subtype STATUS_EM4IORET_Field is Interfaces.EFM32.Bit;
   subtype STATUS_TEMPACTIVE_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. VMON Ready
      VMONRDY        : STATUS_VMONRDY_Field;
      --  Read-only. VMON AVDD Channel
      VMONAVDD       : STATUS_VMONAVDD_Field;
      --  Read-only. Alternate VMON AVDD Channel
      VMONALTAVDD    : STATUS_VMONALTAVDD_Field;
      --  Read-only. VMON DVDD Channel
      VMONDVDD       : STATUS_VMONDVDD_Field;
      --  Read-only. VMON IOVDD0 Channel
      VMONIO         : STATUS_VMONIO_Field;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit;
      --  Read-only. VMON BUVDD Channel
      VMONBUVDD      : STATUS_VMONBUVDD_Field;
      --  unspecified
      Reserved_8_11  : Interfaces.EFM32.UInt4;
      --  Read-only. Backup Mode Ready
      BURDY          : STATUS_BURDY_Field;
      --  unspecified
      Reserved_13_15 : Interfaces.EFM32.UInt3;
      --  Read-only. Current Voltage Scale Value
      VSCALE         : STATUS_VSCALE_Field;
      --  Read-only. System is Busy Scaling Voltage
      VSCALEBUSY     : STATUS_VSCALEBUSY_Field;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit;
      --  Read-only. IO Retention Status
      EM4IORET       : STATUS_EM4IORET_Field;
      --  unspecified
      Reserved_21_25 : Interfaces.EFM32.UInt5;
      --  Read-only. Temperature Measurement Active
      TEMPACTIVE     : STATUS_TEMPACTIVE_Field;
      --  unspecified
      Reserved_27_31 : Interfaces.EFM32.UInt5;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      VMONRDY        at 0 range 0 .. 0;
      VMONAVDD       at 0 range 1 .. 1;
      VMONALTAVDD    at 0 range 2 .. 2;
      VMONDVDD       at 0 range 3 .. 3;
      VMONIO         at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      VMONBUVDD      at 0 range 7 .. 7;
      Reserved_8_11  at 0 range 8 .. 11;
      BURDY          at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      VSCALE         at 0 range 16 .. 17;
      VSCALEBUSY     at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      EM4IORET       at 0 range 20 .. 20;
      Reserved_21_25 at 0 range 21 .. 25;
      TEMPACTIVE     at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   --  Configuration Lock Key
   type LOCK_LOCKKEY_Field is
     (UNLOCKED,
      LOCKED)
     with Size => 16;
   for LOCK_LOCKKEY_Field use
     (UNLOCKED => 0,
      LOCKED => 1);

   --  Configuration Lock Register
   type LOCK_Register is record
      --  Configuration Lock Key
      LOCKKEY        : LOCK_LOCKKEY_Field := Interfaces.EFM32.EMU.UNLOCKED;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LOCK_Register use record
      LOCKKEY        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RAM0 Blockset Power-down
   type RAM0CTRL_RAMPOWERDOWN_Field is
     (--  None of the RAM blocks powered down
      NONE,
      --  Power down RAM block 3
      BLK3,
      --  Power down RAM blocks 2 and above
      BLK2TO3,
      --  Power down RAM blocks 1 and above
      BLK1TO3)
     with Size => 3;
   for RAM0CTRL_RAMPOWERDOWN_Field use
     (NONE => 0,
      BLK3 => 4,
      BLK2TO3 => 6,
      BLK1TO3 => 7);

   --  Memory Control Register
   type RAM0CTRL_Register is record
      --  RAM0 Blockset Power-down
      RAMPOWERDOWN  : RAM0CTRL_RAMPOWERDOWN_Field :=
                       Interfaces.EFM32.EMU.NONE;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAM0CTRL_Register use record
      RAMPOWERDOWN  at 0 range 0 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype CMD_EM4UNLATCH_Field is Interfaces.EFM32.Bit;
   subtype CMD_EM01VSCALE0_Field is Interfaces.EFM32.Bit;
   subtype CMD_EM01VSCALE2_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. EM4 Unlatch
      EM4UNLATCH    : CMD_EM4UNLATCH_Field := 16#0#;
      --  unspecified
      Reserved_1_3  : Interfaces.EFM32.UInt3 := 16#0#;
      --  Write-only. EM01 Voltage Scale Command to Scale to Voltage Scale
      --  Level 0
      EM01VSCALE0   : CMD_EM01VSCALE0_Field := 16#0#;
      --  unspecified
      Reserved_5_5  : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. EM01 Voltage Scale Command to Scale to Voltage Scale
      --  Level 2
      EM01VSCALE2   : CMD_EM01VSCALE2_Field := 16#0#;
      --  unspecified
      Reserved_7_31 : Interfaces.EFM32.UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      EM4UNLATCH    at 0 range 0 .. 0;
      Reserved_1_3  at 0 range 1 .. 3;
      EM01VSCALE0   at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      EM01VSCALE2   at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype EM4CTRL_EM4STATE_Field is Interfaces.EFM32.Bit;
   subtype EM4CTRL_RETAINLFRCO_Field is Interfaces.EFM32.Bit;
   subtype EM4CTRL_RETAINLFXO_Field is Interfaces.EFM32.Bit;
   subtype EM4CTRL_RETAINULFRCO_Field is Interfaces.EFM32.Bit;

   --  EM4 IO Retention Disable
   type EM4CTRL_EM4IORETMODE_Field is
     (--  No Retention: Pads enter reset state when entering EM4
      DISABLE,
      --  Retention through EM4: Pads enter reset state when exiting EM4
      EM4EXIT,
      --  Retention through EM4 and Wakeup: software writes UNLATCH register to
--  remove retention
      SWUNLATCH)
     with Size => 2;
   for EM4CTRL_EM4IORETMODE_Field use
     (DISABLE => 0,
      EM4EXIT => 1,
      SWUNLATCH => 2);

   subtype EM4CTRL_EM4ENTRY_Field is Interfaces.EFM32.UInt2;

   --  EM4 Control Register
   type EM4CTRL_Register is record
      --  Energy Mode 4 State
      EM4STATE       : EM4CTRL_EM4STATE_Field := 16#0#;
      --  LFRCO Retain During EM4
      RETAINLFRCO    : EM4CTRL_RETAINLFRCO_Field := 16#0#;
      --  LFXO Retain During EM4
      RETAINLFXO     : EM4CTRL_RETAINLFXO_Field := 16#0#;
      --  ULFRCO Retain During EM4S
      RETAINULFRCO   : EM4CTRL_RETAINULFRCO_Field := 16#0#;
      --  EM4 IO Retention Disable
      EM4IORETMODE   : EM4CTRL_EM4IORETMODE_Field :=
                        Interfaces.EFM32.EMU.DISABLE;
      --  unspecified
      Reserved_6_15  : Interfaces.EFM32.UInt10 := 16#0#;
      --  Write-only. Energy Mode 4 Entry
      EM4ENTRY       : EM4CTRL_EM4ENTRY_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.EFM32.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EM4CTRL_Register use record
      EM4STATE       at 0 range 0 .. 0;
      RETAINLFRCO    at 0 range 1 .. 1;
      RETAINLFXO     at 0 range 2 .. 2;
      RETAINULFRCO   at 0 range 3 .. 3;
      EM4IORETMODE   at 0 range 4 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      EM4ENTRY       at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype TEMPLIMITS_TEMPLOW_Field is Interfaces.EFM32.Byte;
   subtype TEMPLIMITS_TEMPHIGH_Field is Interfaces.EFM32.Byte;
   subtype TEMPLIMITS_EM4WUEN_Field is Interfaces.EFM32.Bit;

   --  Temperature Limits for Interrupt Generation
   type TEMPLIMITS_Register is record
      --  Temperature Low Limit
      TEMPLOW        : TEMPLIMITS_TEMPLOW_Field := 16#0#;
      --  Temperature High Limit
      TEMPHIGH       : TEMPLIMITS_TEMPHIGH_Field := 16#FF#;
      --  Enable EM4 Wakeup Due to Low/high Temperature
      EM4WUEN        : TEMPLIMITS_EM4WUEN_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEMPLIMITS_Register use record
      TEMPLOW        at 0 range 0 .. 7;
      TEMPHIGH       at 0 range 8 .. 15;
      EM4WUEN        at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype TEMP_TEMP_Field is Interfaces.EFM32.Byte;

   --  Value of Last Temperature Measurement
   type TEMP_Register is record
      --  Read-only. Temperature Measurement
      TEMP          : TEMP_TEMP_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TEMP_Register use record
      TEMP          at 0 range 0 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype IF_VMONAVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IF_VMONAVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IF_VMONALTAVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IF_VMONALTAVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IF_VMONDVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IF_VMONDVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IF_VMONIO0FALL_Field is Interfaces.EFM32.Bit;
   subtype IF_VMONIO0RISE_Field is Interfaces.EFM32.Bit;
   subtype IF_VMONIO1FALL_Field is Interfaces.EFM32.Bit;
   subtype IF_VMONIO1RISE_Field is Interfaces.EFM32.Bit;
   subtype IF_R5VREADY_Field is Interfaces.EFM32.Bit;
   subtype IF_VMONBUVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IF_VMONBUVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IF_PFETOVERCURRENTLIMIT_Field is Interfaces.EFM32.Bit;
   subtype IF_NFETOVERCURRENTLIMIT_Field is Interfaces.EFM32.Bit;
   subtype IF_DCDCLPRUNNING_Field is Interfaces.EFM32.Bit;
   subtype IF_DCDCLNRUNNING_Field is Interfaces.EFM32.Bit;
   subtype IF_DCDCINBYPASS_Field is Interfaces.EFM32.Bit;
   subtype IF_BURDY_Field is Interfaces.EFM32.Bit;
   subtype IF_R5VVSINT_Field is Interfaces.EFM32.Bit;
   subtype IF_EM23WAKEUP_Field is Interfaces.EFM32.Bit;
   subtype IF_VSCALEDONE_Field is Interfaces.EFM32.Bit;
   subtype IF_TEMP_Field is Interfaces.EFM32.Bit;
   subtype IF_TEMPLOW_Field is Interfaces.EFM32.Bit;
   subtype IF_TEMPHIGH_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. VMON AVDD Channel Fall
      VMONAVDDFALL         : IF_VMONAVDDFALL_Field;
      --  Read-only. VMON AVDD Channel Rise
      VMONAVDDRISE         : IF_VMONAVDDRISE_Field;
      --  Read-only. Alternate VMON AVDD Channel Fall
      VMONALTAVDDFALL      : IF_VMONALTAVDDFALL_Field;
      --  Read-only. Alternate VMON AVDD Channel Rise
      VMONALTAVDDRISE      : IF_VMONALTAVDDRISE_Field;
      --  Read-only. VMON DVDD Channel Fall
      VMONDVDDFALL         : IF_VMONDVDDFALL_Field;
      --  Read-only. VMON DVDD Channel Rise
      VMONDVDDRISE         : IF_VMONDVDDRISE_Field;
      --  Read-only. VMON IOVDD0 Channel Fall
      VMONIO0FALL          : IF_VMONIO0FALL_Field;
      --  Read-only. VMON IOVDD0 Channel Rise
      VMONIO0RISE          : IF_VMONIO0RISE_Field;
      --  Read-only. VMON IOVDD1 Channel Fall
      VMONIO1FALL          : IF_VMONIO1FALL_Field;
      --  Read-only. VMON IOVDD1 Channel Rise
      VMONIO1RISE          : IF_VMONIO1RISE_Field;
      --  Read-only. 5V Regulator is Ready to Use
      R5VREADY             : IF_R5VREADY_Field;
      --  unspecified
      Reserved_11_11       : Interfaces.EFM32.Bit;
      --  Read-only. VMON BACKUP Channel Fall
      VMONBUVDDFALL        : IF_VMONBUVDDFALL_Field;
      --  Read-only. VMON BUVDD Channel Rise
      VMONBUVDDRISE        : IF_VMONBUVDDRISE_Field;
      --  unspecified
      Reserved_14_15       : Interfaces.EFM32.UInt2;
      --  Read-only. PFET Current Limit Hit
      PFETOVERCURRENTLIMIT : IF_PFETOVERCURRENTLIMIT_Field;
      --  Read-only. NFET Current Limit Hit
      NFETOVERCURRENTLIMIT : IF_NFETOVERCURRENTLIMIT_Field;
      --  Read-only. LP Mode is Running
      DCDCLPRUNNING        : IF_DCDCLPRUNNING_Field;
      --  Read-only. LN Mode is Running
      DCDCLNRUNNING        : IF_DCDCLNRUNNING_Field;
      --  Read-only. DCDC is in Bypass
      DCDCINBYPASS         : IF_DCDCINBYPASS_Field;
      --  unspecified
      Reserved_21_21       : Interfaces.EFM32.Bit;
      --  Read-only. Backup Functionality Ready Interrupt Flag
      BURDY                : IF_BURDY_Field;
      --  Read-only. 5V Regulator Voltage Update Done
      R5VVSINT             : IF_R5VVSINT_Field;
      --  Read-only. Wakeup IRQ From EM2 and EM3
      EM23WAKEUP           : IF_EM23WAKEUP_Field;
      --  Read-only. Voltage Scale Steps Done IRQ
      VSCALEDONE           : IF_VSCALEDONE_Field;
      --  unspecified
      Reserved_26_28       : Interfaces.EFM32.UInt3;
      --  Read-only. New Temperature Measurement Valid
      TEMP                 : IF_TEMP_Field;
      --  Read-only. Temperature Low Limit Reached
      TEMPLOW              : IF_TEMPLOW_Field;
      --  Read-only. Temperature High Limit Reached
      TEMPHIGH             : IF_TEMPHIGH_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      VMONAVDDFALL         at 0 range 0 .. 0;
      VMONAVDDRISE         at 0 range 1 .. 1;
      VMONALTAVDDFALL      at 0 range 2 .. 2;
      VMONALTAVDDRISE      at 0 range 3 .. 3;
      VMONDVDDFALL         at 0 range 4 .. 4;
      VMONDVDDRISE         at 0 range 5 .. 5;
      VMONIO0FALL          at 0 range 6 .. 6;
      VMONIO0RISE          at 0 range 7 .. 7;
      VMONIO1FALL          at 0 range 8 .. 8;
      VMONIO1RISE          at 0 range 9 .. 9;
      R5VREADY             at 0 range 10 .. 10;
      Reserved_11_11       at 0 range 11 .. 11;
      VMONBUVDDFALL        at 0 range 12 .. 12;
      VMONBUVDDRISE        at 0 range 13 .. 13;
      Reserved_14_15       at 0 range 14 .. 15;
      PFETOVERCURRENTLIMIT at 0 range 16 .. 16;
      NFETOVERCURRENTLIMIT at 0 range 17 .. 17;
      DCDCLPRUNNING        at 0 range 18 .. 18;
      DCDCLNRUNNING        at 0 range 19 .. 19;
      DCDCINBYPASS         at 0 range 20 .. 20;
      Reserved_21_21       at 0 range 21 .. 21;
      BURDY                at 0 range 22 .. 22;
      R5VVSINT             at 0 range 23 .. 23;
      EM23WAKEUP           at 0 range 24 .. 24;
      VSCALEDONE           at 0 range 25 .. 25;
      Reserved_26_28       at 0 range 26 .. 28;
      TEMP                 at 0 range 29 .. 29;
      TEMPLOW              at 0 range 30 .. 30;
      TEMPHIGH             at 0 range 31 .. 31;
   end record;

   subtype IFS_VMONAVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IFS_VMONAVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IFS_VMONALTAVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IFS_VMONALTAVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IFS_VMONDVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IFS_VMONDVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IFS_VMONIO0FALL_Field is Interfaces.EFM32.Bit;
   subtype IFS_VMONIO0RISE_Field is Interfaces.EFM32.Bit;
   subtype IFS_VMONIO1FALL_Field is Interfaces.EFM32.Bit;
   subtype IFS_VMONIO1RISE_Field is Interfaces.EFM32.Bit;
   subtype IFS_R5VREADY_Field is Interfaces.EFM32.Bit;
   subtype IFS_VMONBUVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IFS_VMONBUVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IFS_PFETOVERCURRENTLIMIT_Field is Interfaces.EFM32.Bit;
   subtype IFS_NFETOVERCURRENTLIMIT_Field is Interfaces.EFM32.Bit;
   subtype IFS_DCDCLPRUNNING_Field is Interfaces.EFM32.Bit;
   subtype IFS_DCDCLNRUNNING_Field is Interfaces.EFM32.Bit;
   subtype IFS_DCDCINBYPASS_Field is Interfaces.EFM32.Bit;
   subtype IFS_BURDY_Field is Interfaces.EFM32.Bit;
   subtype IFS_R5VVSINT_Field is Interfaces.EFM32.Bit;
   subtype IFS_EM23WAKEUP_Field is Interfaces.EFM32.Bit;
   subtype IFS_VSCALEDONE_Field is Interfaces.EFM32.Bit;
   subtype IFS_TEMP_Field is Interfaces.EFM32.Bit;
   subtype IFS_TEMPLOW_Field is Interfaces.EFM32.Bit;
   subtype IFS_TEMPHIGH_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set VMONAVDDFALL Interrupt Flag
      VMONAVDDFALL         : IFS_VMONAVDDFALL_Field := 16#0#;
      --  Write-only. Set VMONAVDDRISE Interrupt Flag
      VMONAVDDRISE         : IFS_VMONAVDDRISE_Field := 16#0#;
      --  Write-only. Set VMONALTAVDDFALL Interrupt Flag
      VMONALTAVDDFALL      : IFS_VMONALTAVDDFALL_Field := 16#0#;
      --  Write-only. Set VMONALTAVDDRISE Interrupt Flag
      VMONALTAVDDRISE      : IFS_VMONALTAVDDRISE_Field := 16#0#;
      --  Write-only. Set VMONDVDDFALL Interrupt Flag
      VMONDVDDFALL         : IFS_VMONDVDDFALL_Field := 16#0#;
      --  Write-only. Set VMONDVDDRISE Interrupt Flag
      VMONDVDDRISE         : IFS_VMONDVDDRISE_Field := 16#0#;
      --  Write-only. Set VMONIO0FALL Interrupt Flag
      VMONIO0FALL          : IFS_VMONIO0FALL_Field := 16#0#;
      --  Write-only. Set VMONIO0RISE Interrupt Flag
      VMONIO0RISE          : IFS_VMONIO0RISE_Field := 16#0#;
      --  Write-only. Set VMONIO1FALL Interrupt Flag
      VMONIO1FALL          : IFS_VMONIO1FALL_Field := 16#0#;
      --  Write-only. Set VMONIO1RISE Interrupt Flag
      VMONIO1RISE          : IFS_VMONIO1RISE_Field := 16#0#;
      --  Write-only. Set R5VREADY Interrupt Flag
      R5VREADY             : IFS_R5VREADY_Field := 16#0#;
      --  unspecified
      Reserved_11_11       : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Set VMONBUVDDFALL Interrupt Flag
      VMONBUVDDFALL        : IFS_VMONBUVDDFALL_Field := 16#0#;
      --  Write-only. Set VMONBUVDDRISE Interrupt Flag
      VMONBUVDDRISE        : IFS_VMONBUVDDRISE_Field := 16#0#;
      --  unspecified
      Reserved_14_15       : Interfaces.EFM32.UInt2 := 16#0#;
      --  Write-only. Set PFETOVERCURRENTLIMIT Interrupt Flag
      PFETOVERCURRENTLIMIT : IFS_PFETOVERCURRENTLIMIT_Field := 16#0#;
      --  Write-only. Set NFETOVERCURRENTLIMIT Interrupt Flag
      NFETOVERCURRENTLIMIT : IFS_NFETOVERCURRENTLIMIT_Field := 16#0#;
      --  Write-only. Set DCDCLPRUNNING Interrupt Flag
      DCDCLPRUNNING        : IFS_DCDCLPRUNNING_Field := 16#0#;
      --  Write-only. Set DCDCLNRUNNING Interrupt Flag
      DCDCLNRUNNING        : IFS_DCDCLNRUNNING_Field := 16#0#;
      --  Write-only. Set DCDCINBYPASS Interrupt Flag
      DCDCINBYPASS         : IFS_DCDCINBYPASS_Field := 16#0#;
      --  unspecified
      Reserved_21_21       : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Set BURDY Interrupt Flag
      BURDY                : IFS_BURDY_Field := 16#0#;
      --  Write-only. Set R5VVSINT Interrupt Flag
      R5VVSINT             : IFS_R5VVSINT_Field := 16#0#;
      --  Write-only. Set EM23WAKEUP Interrupt Flag
      EM23WAKEUP           : IFS_EM23WAKEUP_Field := 16#0#;
      --  Write-only. Set VSCALEDONE Interrupt Flag
      VSCALEDONE           : IFS_VSCALEDONE_Field := 16#0#;
      --  unspecified
      Reserved_26_28       : Interfaces.EFM32.UInt3 := 16#0#;
      --  Write-only. Set TEMP Interrupt Flag
      TEMP                 : IFS_TEMP_Field := 16#0#;
      --  Write-only. Set TEMPLOW Interrupt Flag
      TEMPLOW              : IFS_TEMPLOW_Field := 16#0#;
      --  Write-only. Set TEMPHIGH Interrupt Flag
      TEMPHIGH             : IFS_TEMPHIGH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      VMONAVDDFALL         at 0 range 0 .. 0;
      VMONAVDDRISE         at 0 range 1 .. 1;
      VMONALTAVDDFALL      at 0 range 2 .. 2;
      VMONALTAVDDRISE      at 0 range 3 .. 3;
      VMONDVDDFALL         at 0 range 4 .. 4;
      VMONDVDDRISE         at 0 range 5 .. 5;
      VMONIO0FALL          at 0 range 6 .. 6;
      VMONIO0RISE          at 0 range 7 .. 7;
      VMONIO1FALL          at 0 range 8 .. 8;
      VMONIO1RISE          at 0 range 9 .. 9;
      R5VREADY             at 0 range 10 .. 10;
      Reserved_11_11       at 0 range 11 .. 11;
      VMONBUVDDFALL        at 0 range 12 .. 12;
      VMONBUVDDRISE        at 0 range 13 .. 13;
      Reserved_14_15       at 0 range 14 .. 15;
      PFETOVERCURRENTLIMIT at 0 range 16 .. 16;
      NFETOVERCURRENTLIMIT at 0 range 17 .. 17;
      DCDCLPRUNNING        at 0 range 18 .. 18;
      DCDCLNRUNNING        at 0 range 19 .. 19;
      DCDCINBYPASS         at 0 range 20 .. 20;
      Reserved_21_21       at 0 range 21 .. 21;
      BURDY                at 0 range 22 .. 22;
      R5VVSINT             at 0 range 23 .. 23;
      EM23WAKEUP           at 0 range 24 .. 24;
      VSCALEDONE           at 0 range 25 .. 25;
      Reserved_26_28       at 0 range 26 .. 28;
      TEMP                 at 0 range 29 .. 29;
      TEMPLOW              at 0 range 30 .. 30;
      TEMPHIGH             at 0 range 31 .. 31;
   end record;

   subtype IFC_VMONAVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IFC_VMONAVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IFC_VMONALTAVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IFC_VMONALTAVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IFC_VMONDVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IFC_VMONDVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IFC_VMONIO0FALL_Field is Interfaces.EFM32.Bit;
   subtype IFC_VMONIO0RISE_Field is Interfaces.EFM32.Bit;
   subtype IFC_VMONIO1FALL_Field is Interfaces.EFM32.Bit;
   subtype IFC_VMONIO1RISE_Field is Interfaces.EFM32.Bit;
   subtype IFC_R5VREADY_Field is Interfaces.EFM32.Bit;
   subtype IFC_VMONBUVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IFC_VMONBUVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IFC_PFETOVERCURRENTLIMIT_Field is Interfaces.EFM32.Bit;
   subtype IFC_NFETOVERCURRENTLIMIT_Field is Interfaces.EFM32.Bit;
   subtype IFC_DCDCLPRUNNING_Field is Interfaces.EFM32.Bit;
   subtype IFC_DCDCLNRUNNING_Field is Interfaces.EFM32.Bit;
   subtype IFC_DCDCINBYPASS_Field is Interfaces.EFM32.Bit;
   subtype IFC_BURDY_Field is Interfaces.EFM32.Bit;
   subtype IFC_R5VVSINT_Field is Interfaces.EFM32.Bit;
   subtype IFC_EM23WAKEUP_Field is Interfaces.EFM32.Bit;
   subtype IFC_VSCALEDONE_Field is Interfaces.EFM32.Bit;
   subtype IFC_TEMP_Field is Interfaces.EFM32.Bit;
   subtype IFC_TEMPLOW_Field is Interfaces.EFM32.Bit;
   subtype IFC_TEMPHIGH_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear VMONAVDDFALL Interrupt Flag
      VMONAVDDFALL         : IFC_VMONAVDDFALL_Field := 16#0#;
      --  Write-only. Clear VMONAVDDRISE Interrupt Flag
      VMONAVDDRISE         : IFC_VMONAVDDRISE_Field := 16#0#;
      --  Write-only. Clear VMONALTAVDDFALL Interrupt Flag
      VMONALTAVDDFALL      : IFC_VMONALTAVDDFALL_Field := 16#0#;
      --  Write-only. Clear VMONALTAVDDRISE Interrupt Flag
      VMONALTAVDDRISE      : IFC_VMONALTAVDDRISE_Field := 16#0#;
      --  Write-only. Clear VMONDVDDFALL Interrupt Flag
      VMONDVDDFALL         : IFC_VMONDVDDFALL_Field := 16#0#;
      --  Write-only. Clear VMONDVDDRISE Interrupt Flag
      VMONDVDDRISE         : IFC_VMONDVDDRISE_Field := 16#0#;
      --  Write-only. Clear VMONIO0FALL Interrupt Flag
      VMONIO0FALL          : IFC_VMONIO0FALL_Field := 16#0#;
      --  Write-only. Clear VMONIO0RISE Interrupt Flag
      VMONIO0RISE          : IFC_VMONIO0RISE_Field := 16#0#;
      --  Write-only. Clear VMONIO1FALL Interrupt Flag
      VMONIO1FALL          : IFC_VMONIO1FALL_Field := 16#0#;
      --  Write-only. Clear VMONIO1RISE Interrupt Flag
      VMONIO1RISE          : IFC_VMONIO1RISE_Field := 16#0#;
      --  Write-only. Clear R5VREADY Interrupt Flag
      R5VREADY             : IFC_R5VREADY_Field := 16#0#;
      --  unspecified
      Reserved_11_11       : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Clear VMONBUVDDFALL Interrupt Flag
      VMONBUVDDFALL        : IFC_VMONBUVDDFALL_Field := 16#0#;
      --  Write-only. Clear VMONBUVDDRISE Interrupt Flag
      VMONBUVDDRISE        : IFC_VMONBUVDDRISE_Field := 16#0#;
      --  unspecified
      Reserved_14_15       : Interfaces.EFM32.UInt2 := 16#0#;
      --  Write-only. Clear PFETOVERCURRENTLIMIT Interrupt Flag
      PFETOVERCURRENTLIMIT : IFC_PFETOVERCURRENTLIMIT_Field := 16#0#;
      --  Write-only. Clear NFETOVERCURRENTLIMIT Interrupt Flag
      NFETOVERCURRENTLIMIT : IFC_NFETOVERCURRENTLIMIT_Field := 16#0#;
      --  Write-only. Clear DCDCLPRUNNING Interrupt Flag
      DCDCLPRUNNING        : IFC_DCDCLPRUNNING_Field := 16#0#;
      --  Write-only. Clear DCDCLNRUNNING Interrupt Flag
      DCDCLNRUNNING        : IFC_DCDCLNRUNNING_Field := 16#0#;
      --  Write-only. Clear DCDCINBYPASS Interrupt Flag
      DCDCINBYPASS         : IFC_DCDCINBYPASS_Field := 16#0#;
      --  unspecified
      Reserved_21_21       : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Clear BURDY Interrupt Flag
      BURDY                : IFC_BURDY_Field := 16#0#;
      --  Write-only. Clear R5VVSINT Interrupt Flag
      R5VVSINT             : IFC_R5VVSINT_Field := 16#0#;
      --  Write-only. Clear EM23WAKEUP Interrupt Flag
      EM23WAKEUP           : IFC_EM23WAKEUP_Field := 16#0#;
      --  Write-only. Clear VSCALEDONE Interrupt Flag
      VSCALEDONE           : IFC_VSCALEDONE_Field := 16#0#;
      --  unspecified
      Reserved_26_28       : Interfaces.EFM32.UInt3 := 16#0#;
      --  Write-only. Clear TEMP Interrupt Flag
      TEMP                 : IFC_TEMP_Field := 16#0#;
      --  Write-only. Clear TEMPLOW Interrupt Flag
      TEMPLOW              : IFC_TEMPLOW_Field := 16#0#;
      --  Write-only. Clear TEMPHIGH Interrupt Flag
      TEMPHIGH             : IFC_TEMPHIGH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      VMONAVDDFALL         at 0 range 0 .. 0;
      VMONAVDDRISE         at 0 range 1 .. 1;
      VMONALTAVDDFALL      at 0 range 2 .. 2;
      VMONALTAVDDRISE      at 0 range 3 .. 3;
      VMONDVDDFALL         at 0 range 4 .. 4;
      VMONDVDDRISE         at 0 range 5 .. 5;
      VMONIO0FALL          at 0 range 6 .. 6;
      VMONIO0RISE          at 0 range 7 .. 7;
      VMONIO1FALL          at 0 range 8 .. 8;
      VMONIO1RISE          at 0 range 9 .. 9;
      R5VREADY             at 0 range 10 .. 10;
      Reserved_11_11       at 0 range 11 .. 11;
      VMONBUVDDFALL        at 0 range 12 .. 12;
      VMONBUVDDRISE        at 0 range 13 .. 13;
      Reserved_14_15       at 0 range 14 .. 15;
      PFETOVERCURRENTLIMIT at 0 range 16 .. 16;
      NFETOVERCURRENTLIMIT at 0 range 17 .. 17;
      DCDCLPRUNNING        at 0 range 18 .. 18;
      DCDCLNRUNNING        at 0 range 19 .. 19;
      DCDCINBYPASS         at 0 range 20 .. 20;
      Reserved_21_21       at 0 range 21 .. 21;
      BURDY                at 0 range 22 .. 22;
      R5VVSINT             at 0 range 23 .. 23;
      EM23WAKEUP           at 0 range 24 .. 24;
      VSCALEDONE           at 0 range 25 .. 25;
      Reserved_26_28       at 0 range 26 .. 28;
      TEMP                 at 0 range 29 .. 29;
      TEMPLOW              at 0 range 30 .. 30;
      TEMPHIGH             at 0 range 31 .. 31;
   end record;

   subtype IEN_VMONAVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IEN_VMONAVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IEN_VMONALTAVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IEN_VMONALTAVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IEN_VMONDVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IEN_VMONDVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IEN_VMONIO0FALL_Field is Interfaces.EFM32.Bit;
   subtype IEN_VMONIO0RISE_Field is Interfaces.EFM32.Bit;
   subtype IEN_VMONIO1FALL_Field is Interfaces.EFM32.Bit;
   subtype IEN_VMONIO1RISE_Field is Interfaces.EFM32.Bit;
   subtype IEN_R5VREADY_Field is Interfaces.EFM32.Bit;
   subtype IEN_VMONBUVDDFALL_Field is Interfaces.EFM32.Bit;
   subtype IEN_VMONBUVDDRISE_Field is Interfaces.EFM32.Bit;
   subtype IEN_PFETOVERCURRENTLIMIT_Field is Interfaces.EFM32.Bit;
   subtype IEN_NFETOVERCURRENTLIMIT_Field is Interfaces.EFM32.Bit;
   subtype IEN_DCDCLPRUNNING_Field is Interfaces.EFM32.Bit;
   subtype IEN_DCDCLNRUNNING_Field is Interfaces.EFM32.Bit;
   subtype IEN_DCDCINBYPASS_Field is Interfaces.EFM32.Bit;
   subtype IEN_BURDY_Field is Interfaces.EFM32.Bit;
   subtype IEN_R5VVSINT_Field is Interfaces.EFM32.Bit;
   subtype IEN_EM23WAKEUP_Field is Interfaces.EFM32.Bit;
   subtype IEN_VSCALEDONE_Field is Interfaces.EFM32.Bit;
   subtype IEN_TEMP_Field is Interfaces.EFM32.Bit;
   subtype IEN_TEMPLOW_Field is Interfaces.EFM32.Bit;
   subtype IEN_TEMPHIGH_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  VMONAVDDFALL Interrupt Enable
      VMONAVDDFALL         : IEN_VMONAVDDFALL_Field := 16#0#;
      --  VMONAVDDRISE Interrupt Enable
      VMONAVDDRISE         : IEN_VMONAVDDRISE_Field := 16#0#;
      --  VMONALTAVDDFALL Interrupt Enable
      VMONALTAVDDFALL      : IEN_VMONALTAVDDFALL_Field := 16#0#;
      --  VMONALTAVDDRISE Interrupt Enable
      VMONALTAVDDRISE      : IEN_VMONALTAVDDRISE_Field := 16#0#;
      --  VMONDVDDFALL Interrupt Enable
      VMONDVDDFALL         : IEN_VMONDVDDFALL_Field := 16#0#;
      --  VMONDVDDRISE Interrupt Enable
      VMONDVDDRISE         : IEN_VMONDVDDRISE_Field := 16#0#;
      --  VMONIO0FALL Interrupt Enable
      VMONIO0FALL          : IEN_VMONIO0FALL_Field := 16#0#;
      --  VMONIO0RISE Interrupt Enable
      VMONIO0RISE          : IEN_VMONIO0RISE_Field := 16#0#;
      --  VMONIO1FALL Interrupt Enable
      VMONIO1FALL          : IEN_VMONIO1FALL_Field := 16#0#;
      --  VMONIO1RISE Interrupt Enable
      VMONIO1RISE          : IEN_VMONIO1RISE_Field := 16#0#;
      --  R5VREADY Interrupt Enable
      R5VREADY             : IEN_R5VREADY_Field := 16#0#;
      --  unspecified
      Reserved_11_11       : Interfaces.EFM32.Bit := 16#0#;
      --  VMONBUVDDFALL Interrupt Enable
      VMONBUVDDFALL        : IEN_VMONBUVDDFALL_Field := 16#0#;
      --  VMONBUVDDRISE Interrupt Enable
      VMONBUVDDRISE        : IEN_VMONBUVDDRISE_Field := 16#0#;
      --  unspecified
      Reserved_14_15       : Interfaces.EFM32.UInt2 := 16#0#;
      --  PFETOVERCURRENTLIMIT Interrupt Enable
      PFETOVERCURRENTLIMIT : IEN_PFETOVERCURRENTLIMIT_Field := 16#0#;
      --  NFETOVERCURRENTLIMIT Interrupt Enable
      NFETOVERCURRENTLIMIT : IEN_NFETOVERCURRENTLIMIT_Field := 16#0#;
      --  DCDCLPRUNNING Interrupt Enable
      DCDCLPRUNNING        : IEN_DCDCLPRUNNING_Field := 16#0#;
      --  DCDCLNRUNNING Interrupt Enable
      DCDCLNRUNNING        : IEN_DCDCLNRUNNING_Field := 16#0#;
      --  DCDCINBYPASS Interrupt Enable
      DCDCINBYPASS         : IEN_DCDCINBYPASS_Field := 16#0#;
      --  unspecified
      Reserved_21_21       : Interfaces.EFM32.Bit := 16#0#;
      --  BURDY Interrupt Enable
      BURDY                : IEN_BURDY_Field := 16#0#;
      --  R5VVSINT Interrupt Enable
      R5VVSINT             : IEN_R5VVSINT_Field := 16#0#;
      --  EM23WAKEUP Interrupt Enable
      EM23WAKEUP           : IEN_EM23WAKEUP_Field := 16#0#;
      --  VSCALEDONE Interrupt Enable
      VSCALEDONE           : IEN_VSCALEDONE_Field := 16#0#;
      --  unspecified
      Reserved_26_28       : Interfaces.EFM32.UInt3 := 16#0#;
      --  TEMP Interrupt Enable
      TEMP                 : IEN_TEMP_Field := 16#0#;
      --  TEMPLOW Interrupt Enable
      TEMPLOW              : IEN_TEMPLOW_Field := 16#0#;
      --  TEMPHIGH Interrupt Enable
      TEMPHIGH             : IEN_TEMPHIGH_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      VMONAVDDFALL         at 0 range 0 .. 0;
      VMONAVDDRISE         at 0 range 1 .. 1;
      VMONALTAVDDFALL      at 0 range 2 .. 2;
      VMONALTAVDDRISE      at 0 range 3 .. 3;
      VMONDVDDFALL         at 0 range 4 .. 4;
      VMONDVDDRISE         at 0 range 5 .. 5;
      VMONIO0FALL          at 0 range 6 .. 6;
      VMONIO0RISE          at 0 range 7 .. 7;
      VMONIO1FALL          at 0 range 8 .. 8;
      VMONIO1RISE          at 0 range 9 .. 9;
      R5VREADY             at 0 range 10 .. 10;
      Reserved_11_11       at 0 range 11 .. 11;
      VMONBUVDDFALL        at 0 range 12 .. 12;
      VMONBUVDDRISE        at 0 range 13 .. 13;
      Reserved_14_15       at 0 range 14 .. 15;
      PFETOVERCURRENTLIMIT at 0 range 16 .. 16;
      NFETOVERCURRENTLIMIT at 0 range 17 .. 17;
      DCDCLPRUNNING        at 0 range 18 .. 18;
      DCDCLNRUNNING        at 0 range 19 .. 19;
      DCDCINBYPASS         at 0 range 20 .. 20;
      Reserved_21_21       at 0 range 21 .. 21;
      BURDY                at 0 range 22 .. 22;
      R5VVSINT             at 0 range 23 .. 23;
      EM23WAKEUP           at 0 range 24 .. 24;
      VSCALEDONE           at 0 range 25 .. 25;
      Reserved_26_28       at 0 range 26 .. 28;
      TEMP                 at 0 range 29 .. 29;
      TEMPLOW              at 0 range 30 .. 30;
      TEMPHIGH             at 0 range 31 .. 31;
   end record;

   --  Regulator and Supply Configuration Lock Key
   type PWRLOCK_LOCKKEY_Field is
     (UNLOCKED,
      LOCKED)
     with Size => 16;
   for PWRLOCK_LOCKKEY_Field use
     (UNLOCKED => 0,
      LOCKED => 1);

   --  Regulator and Supply Lock Register
   type PWRLOCK_Register is record
      --  Regulator and Supply Configuration Lock Key
      LOCKKEY        : PWRLOCK_LOCKKEY_Field := Interfaces.EFM32.EMU.UNLOCKED;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWRLOCK_Register use record
      LOCKKEY        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PWRCTRL_ANASW_Field is Interfaces.EFM32.Bit;
   subtype PWRCTRL_REGPWRSEL_Field is Interfaces.EFM32.Bit;
   subtype PWRCTRL_IMMEDIATEPWRSWITCH_Field is Interfaces.EFM32.Bit;

   --  Power Control Register
   type PWRCTRL_Register is record
      --  unspecified
      Reserved_0_4       : Interfaces.EFM32.UInt5 := 16#0#;
      --  Analog Switch Selection
      ANASW              : PWRCTRL_ANASW_Field := 16#0#;
      --  unspecified
      Reserved_6_9       : Interfaces.EFM32.UInt4 := 16#0#;
      --  This Field Selects the Input Supply Pin for the Digital LDO
      REGPWRSEL          : PWRCTRL_REGPWRSEL_Field := 16#0#;
      --  unspecified
      Reserved_11_12     : Interfaces.EFM32.UInt2 := 16#0#;
      --  Allows Immediate Switching of ANASW and REGPWRSEL Bitfields
      IMMEDIATEPWRSWITCH : PWRCTRL_IMMEDIATEPWRSWITCH_Field := 16#0#;
      --  unspecified
      Reserved_14_31     : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PWRCTRL_Register use record
      Reserved_0_4       at 0 range 0 .. 4;
      ANASW              at 0 range 5 .. 5;
      Reserved_6_9       at 0 range 6 .. 9;
      REGPWRSEL          at 0 range 10 .. 10;
      Reserved_11_12     at 0 range 11 .. 12;
      IMMEDIATEPWRSWITCH at 0 range 13 .. 13;
      Reserved_14_31     at 0 range 14 .. 31;
   end record;

   --  Regulator Mode
   type DCDCCTRL_DCDCMODE_Field is
     (--  DCDC regulator is operating in bypass mode. Prior to configuring
--  DCDCMODE=BYPASS, software must set EMU_DCDCCLIMCTRL.BYPLIMEN=1 to prevent
--  excessive current between VREGVDD and DVDD supplies.
      BYPASS,
      --  DCDC regulator is operating in low noise mode.
      LOWNOISE,
      --  DCDC regulator is operating in low power mode.
      LOWPOWER,
      --  DCDC regulator is off and the bypass switch is off. Note: DVDD must be
--  supplied externally
      OFF)
     with Size => 2;
   for DCDCCTRL_DCDCMODE_Field use
     (BYPASS => 0,
      LOWNOISE => 1,
      LOWPOWER => 2,
      OFF => 3);

   subtype DCDCCTRL_DCDCMODEEM23_Field is Interfaces.EFM32.Bit;
   subtype DCDCCTRL_DCDCMODEEM4_Field is Interfaces.EFM32.Bit;

   --  DCDC Control
   type DCDCCTRL_Register is record
      --  Regulator Mode
      DCDCMODE      : DCDCCTRL_DCDCMODE_Field := Interfaces.EFM32.EMU.OFF;
      --  unspecified
      Reserved_2_3  : Interfaces.EFM32.UInt2 := 16#0#;
      --  DCDC Mode EM23
      DCDCMODEEM23  : DCDCCTRL_DCDCMODEEM23_Field := 16#1#;
      --  DCDC Mode EM4H
      DCDCMODEEM4   : DCDCCTRL_DCDCMODEEM4_Field := 16#1#;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCDCCTRL_Register use record
      DCDCMODE      at 0 range 0 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      DCDCMODEEM23  at 0 range 4 .. 4;
      DCDCMODEEM4   at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype DCDCMISCCTRL_LNFORCECCM_Field is Interfaces.EFM32.Bit;
   subtype DCDCMISCCTRL_LPCMPHYSDIS_Field is Interfaces.EFM32.Bit;
   subtype DCDCMISCCTRL_LPCMPHYSHI_Field is Interfaces.EFM32.Bit;
   subtype DCDCMISCCTRL_LNFORCECCMIMM_Field is Interfaces.EFM32.Bit;
   subtype DCDCMISCCTRL_PFETCNT_Field is Interfaces.EFM32.UInt4;
   subtype DCDCMISCCTRL_NFETCNT_Field is Interfaces.EFM32.UInt4;
   subtype DCDCMISCCTRL_BYPLIMSEL_Field is Interfaces.EFM32.UInt4;
   subtype DCDCMISCCTRL_LPCLIMILIMSEL_Field is Interfaces.EFM32.UInt3;
   subtype DCDCMISCCTRL_LNCLIMILIMSEL_Field is Interfaces.EFM32.UInt3;

   --  LP Mode Comparator Bias Selection for EM23 or EM4H
   type DCDCMISCCTRL_LPCMPBIASEM234H_Field is
     (--  Maximum load current less than 75uA.
      BIAS0,
      --  Maximum load current less than 500uA.
      BIAS1,
      --  Maximum load current less than 2.5mA.
      BIAS2,
      --  Maximum load current less than 10mA.
      BIAS3)
     with Size => 2;
   for DCDCMISCCTRL_LPCMPBIASEM234H_Field use
     (BIAS0 => 0,
      BIAS1 => 1,
      BIAS2 => 2,
      BIAS3 => 3);

   --  DCDC Miscellaneous Control Register
   type DCDCMISCCTRL_Register is record
      --  Force DCDC Into CCM Mode in Low Noise Operation
      LNFORCECCM      : DCDCMISCCTRL_LNFORCECCM_Field := 16#0#;
      --  Disable LP Mode Hysteresis in the State Machine Control
      LPCMPHYSDIS     : DCDCMISCCTRL_LPCMPHYSDIS_Field := 16#1#;
      --  Comparator Threshold on the High Side
      LPCMPHYSHI      : DCDCMISCCTRL_LPCMPHYSHI_Field := 16#1#;
      --  unspecified
      Reserved_3_4    : Interfaces.EFM32.UInt2 := 16#0#;
      --  Force DCDC Into CCM Mode Immediately, Based on LNFORCECCM
      LNFORCECCMIMM   : DCDCMISCCTRL_LNFORCECCMIMM_Field := 16#0#;
      --  unspecified
      Reserved_6_7    : Interfaces.EFM32.UInt2 := 16#0#;
      --  PFET Switch Number Selection
      PFETCNT         : DCDCMISCCTRL_PFETCNT_Field := 16#7#;
      --  NFET Switch Number Selection
      NFETCNT         : DCDCMISCCTRL_NFETCNT_Field := 16#7#;
      --  Current Limit in Bypass Mode
      BYPLIMSEL       : DCDCMISCCTRL_BYPLIMSEL_Field := 16#0#;
      --  Current Limit Level Selection for Current Limiter in LP Mode
      LPCLIMILIMSEL   : DCDCMISCCTRL_LPCLIMILIMSEL_Field := 16#1#;
      --  unspecified
      Reserved_23_23  : Interfaces.EFM32.Bit := 16#0#;
      --  Current Limit Level Selection for Current Limiter in LN Mode
      LNCLIMILIMSEL   : DCDCMISCCTRL_LNCLIMILIMSEL_Field := 16#3#;
      --  unspecified
      Reserved_27_27  : Interfaces.EFM32.Bit := 16#0#;
      --  LP Mode Comparator Bias Selection for EM23 or EM4H
      LPCMPBIASEM234H : DCDCMISCCTRL_LPCMPBIASEM234H_Field :=
                         Interfaces.EFM32.EMU.BIAS0;
      --  unspecified
      Reserved_30_31  : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCDCMISCCTRL_Register use record
      LNFORCECCM      at 0 range 0 .. 0;
      LPCMPHYSDIS     at 0 range 1 .. 1;
      LPCMPHYSHI      at 0 range 2 .. 2;
      Reserved_3_4    at 0 range 3 .. 4;
      LNFORCECCMIMM   at 0 range 5 .. 5;
      Reserved_6_7    at 0 range 6 .. 7;
      PFETCNT         at 0 range 8 .. 11;
      NFETCNT         at 0 range 12 .. 15;
      BYPLIMSEL       at 0 range 16 .. 19;
      LPCLIMILIMSEL   at 0 range 20 .. 22;
      Reserved_23_23  at 0 range 23 .. 23;
      LNCLIMILIMSEL   at 0 range 24 .. 26;
      Reserved_27_27  at 0 range 27 .. 27;
      LPCMPBIASEM234H at 0 range 28 .. 29;
      Reserved_30_31  at 0 range 30 .. 31;
   end record;

   subtype DCDCZDETCTRL_ZDETILIMSEL_Field is Interfaces.EFM32.UInt3;
   subtype DCDCZDETCTRL_ZDETBLANKDLY_Field is Interfaces.EFM32.UInt2;

   --  DCDC Power Train NFET Zero Current Detector Control Register
   type DCDCZDETCTRL_Register is record
      --  unspecified
      Reserved_0_3   : Interfaces.EFM32.UInt4 := 16#0#;
      --  Reverse Current Limit Level Selection for Zero Detector
      ZDETILIMSEL    : DCDCZDETCTRL_ZDETILIMSEL_Field := 16#5#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Reserved for internal use. Do not change.
      ZDETBLANKDLY   : DCDCZDETCTRL_ZDETBLANKDLY_Field := 16#1#;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCDCZDETCTRL_Register use record
      Reserved_0_3   at 0 range 0 .. 3;
      ZDETILIMSEL    at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      ZDETBLANKDLY   at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype DCDCCLIMCTRL_CLIMBLANKDLY_Field is Interfaces.EFM32.UInt2;
   subtype DCDCCLIMCTRL_BYPLIMEN_Field is Interfaces.EFM32.Bit;

   --  DCDC Power Train PFET Current Limiter Control Register
   type DCDCCLIMCTRL_Register is record
      --  unspecified
      Reserved_0_7   : Interfaces.EFM32.Byte := 16#0#;
      --  Reserved for internal use. Do not change.
      CLIMBLANKDLY   : DCDCCLIMCTRL_CLIMBLANKDLY_Field := 16#1#;
      --  unspecified
      Reserved_10_12 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Bypass Current Limit Enable
      BYPLIMEN       : DCDCCLIMCTRL_BYPLIMEN_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCDCCLIMCTRL_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      CLIMBLANKDLY   at 0 range 8 .. 9;
      Reserved_10_12 at 0 range 10 .. 12;
      BYPLIMEN       at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DCDCLNCOMPCTRL_COMPENR1_Field is Interfaces.EFM32.UInt3;
   subtype DCDCLNCOMPCTRL_COMPENR2_Field is Interfaces.EFM32.UInt5;
   subtype DCDCLNCOMPCTRL_COMPENR3_Field is Interfaces.EFM32.UInt4;
   subtype DCDCLNCOMPCTRL_COMPENC1_Field is Interfaces.EFM32.UInt2;
   subtype DCDCLNCOMPCTRL_COMPENC2_Field is Interfaces.EFM32.UInt3;
   subtype DCDCLNCOMPCTRL_COMPENC3_Field is Interfaces.EFM32.UInt4;

   --  DCDC Low Noise Compensator Control Register
   type DCDCLNCOMPCTRL_Register is record
      --  Low Noise Mode Compensator R1 Trim Value
      COMPENR1       : DCDCLNCOMPCTRL_COMPENR1_Field := 16#7#;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit := 16#0#;
      --  Low Noise Mode Compensator R2 Trim Value
      COMPENR2       : DCDCLNCOMPCTRL_COMPENR2_Field := 16#7#;
      --  unspecified
      Reserved_9_11  : Interfaces.EFM32.UInt3 := 16#0#;
      --  Low Noise Mode Compensator R3 Trim Value
      COMPENR3       : DCDCLNCOMPCTRL_COMPENR3_Field := 16#4#;
      --  unspecified
      Reserved_16_19 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Low Noise Mode Compensator C1 Trim Value
      COMPENC1       : DCDCLNCOMPCTRL_COMPENC1_Field := 16#2#;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Low Noise Mode Compensator C2 Trim Value
      COMPENC2       : DCDCLNCOMPCTRL_COMPENC2_Field := 16#7#;
      --  unspecified
      Reserved_27_27 : Interfaces.EFM32.Bit := 16#0#;
      --  Low Noise Mode Compensator C3 Trim Value
      COMPENC3       : DCDCLNCOMPCTRL_COMPENC3_Field := 16#5#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCDCLNCOMPCTRL_Register use record
      COMPENR1       at 0 range 0 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      COMPENR2       at 0 range 4 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      COMPENR3       at 0 range 12 .. 15;
      Reserved_16_19 at 0 range 16 .. 19;
      COMPENC1       at 0 range 20 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      COMPENC2       at 0 range 24 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      COMPENC3       at 0 range 28 .. 31;
   end record;

   subtype DCDCLNVCTRL_LNATT_Field is Interfaces.EFM32.Bit;
   subtype DCDCLNVCTRL_LNVREF_Field is Interfaces.EFM32.UInt7;

   --  DCDC Low Noise Voltage Register
   type DCDCLNVCTRL_Register is record
      --  unspecified
      Reserved_0_0   : Interfaces.EFM32.Bit := 16#0#;
      --  Low Noise Mode Feedback Attenuation
      LNATT          : DCDCLNVCTRL_LNATT_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.EFM32.UInt6 := 16#0#;
      --  Low Noise Mode VREF Trim
      LNVREF         : DCDCLNVCTRL_LNVREF_Field := 16#71#;
      --  unspecified
      Reserved_15_31 : Interfaces.EFM32.UInt17 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCDCLNVCTRL_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      LNATT          at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      LNVREF         at 0 range 8 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype DCDCLPVCTRL_LPATT_Field is Interfaces.EFM32.Bit;
   subtype DCDCLPVCTRL_LPVREF_Field is Interfaces.EFM32.Byte;

   --  DCDC Low Power Voltage Register
   type DCDCLPVCTRL_Register is record
      --  Low Power Feedback Attenuation
      LPATT         : DCDCLPVCTRL_LPATT_Field := 16#0#;
      --  LP Mode Reference Selection for EM23 and EM4H
      LPVREF        : DCDCLPVCTRL_LPVREF_Field := 16#B4#;
      --  unspecified
      Reserved_9_31 : Interfaces.EFM32.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCDCLPVCTRL_Register use record
      LPATT         at 0 range 0 .. 0;
      LPVREF        at 0 range 1 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype DCDCLPCTRL_LPCMPHYSSELEM234H_Field is Interfaces.EFM32.UInt4;
   subtype DCDCLPCTRL_LPVREFDUTYEN_Field is Interfaces.EFM32.Bit;
   subtype DCDCLPCTRL_LPBLANK_Field is Interfaces.EFM32.UInt2;

   --  DCDC Low Power Control Register
   type DCDCLPCTRL_Register is record
      --  unspecified
      Reserved_0_11     : Interfaces.EFM32.UInt12 := 16#0#;
      --  LP Mode Hysteresis Selection for EM23 and EM4H
      LPCMPHYSSELEM234H : DCDCLPCTRL_LPCMPHYSSELEM234H_Field := 16#0#;
      --  unspecified
      Reserved_16_23    : Interfaces.EFM32.Byte := 16#0#;
      --  LP Mode Duty Cycling Enable
      LPVREFDUTYEN      : DCDCLPCTRL_LPVREFDUTYEN_Field := 16#1#;
      --  Reserved for internal use. Do not change.
      LPBLANK           : DCDCLPCTRL_LPBLANK_Field := 16#1#;
      --  unspecified
      Reserved_27_31    : Interfaces.EFM32.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCDCLPCTRL_Register use record
      Reserved_0_11     at 0 range 0 .. 11;
      LPCMPHYSSELEM234H at 0 range 12 .. 15;
      Reserved_16_23    at 0 range 16 .. 23;
      LPVREFDUTYEN      at 0 range 24 .. 24;
      LPBLANK           at 0 range 25 .. 26;
      Reserved_27_31    at 0 range 27 .. 31;
   end record;

   subtype DCDCLNFREQCTRL_RCOBAND_Field is Interfaces.EFM32.UInt3;
   subtype DCDCLNFREQCTRL_RCOTRIM_Field is Interfaces.EFM32.UInt5;

   --  DCDC Low Noise Controller Frequency Control
   type DCDCLNFREQCTRL_Register is record
      --  LN Mode RCO Frequency Band Selection
      RCOBAND        : DCDCLNFREQCTRL_RCOBAND_Field := 16#0#;
      --  unspecified
      Reserved_3_23  : Interfaces.EFM32.UInt21 := 16#0#;
      --  Reserved for internal use. Do not change.
      RCOTRIM        : DCDCLNFREQCTRL_RCOTRIM_Field := 16#10#;
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCDCLNFREQCTRL_Register use record
      RCOBAND        at 0 range 0 .. 2;
      Reserved_3_23  at 0 range 3 .. 23;
      RCOTRIM        at 0 range 24 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype DCDCSYNC_DCDCCTRLBUSY_Field is Interfaces.EFM32.Bit;

   --  DCDC Read Status Register
   type DCDCSYNC_Register is record
      --  Read-only. DCDC CTRL Register Transfer Busy
      DCDCCTRLBUSY  : DCDCSYNC_DCDCCTRLBUSY_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCDCSYNC_Register use record
      DCDCCTRLBUSY  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype VMONAVDDCTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype VMONAVDDCTRL_RISEWU_Field is Interfaces.EFM32.Bit;
   subtype VMONAVDDCTRL_FALLWU_Field is Interfaces.EFM32.Bit;
   subtype VMONAVDDCTRL_FALLTHRESFINE_Field is Interfaces.EFM32.UInt4;
   subtype VMONAVDDCTRL_FALLTHRESCOARSE_Field is Interfaces.EFM32.UInt4;
   subtype VMONAVDDCTRL_RISETHRESFINE_Field is Interfaces.EFM32.UInt4;
   subtype VMONAVDDCTRL_RISETHRESCOARSE_Field is Interfaces.EFM32.UInt4;

   --  VMON AVDD Channel Control
   type VMONAVDDCTRL_Register is record
      --  Enable
      EN              : VMONAVDDCTRL_EN_Field := 16#0#;
      --  unspecified
      Reserved_1_1    : Interfaces.EFM32.Bit := 16#0#;
      --  Rise Wakeup
      RISEWU          : VMONAVDDCTRL_RISEWU_Field := 16#0#;
      --  Fall Wakeup
      FALLWU          : VMONAVDDCTRL_FALLWU_Field := 16#0#;
      --  unspecified
      Reserved_4_7    : Interfaces.EFM32.UInt4 := 16#0#;
      --  Falling Threshold Fine Adjust
      FALLTHRESFINE   : VMONAVDDCTRL_FALLTHRESFINE_Field := 16#0#;
      --  Falling Threshold Coarse Adjust
      FALLTHRESCOARSE : VMONAVDDCTRL_FALLTHRESCOARSE_Field := 16#0#;
      --  Rising Threshold Fine Adjust
      RISETHRESFINE   : VMONAVDDCTRL_RISETHRESFINE_Field := 16#0#;
      --  Rising Threshold Coarse Adjust
      RISETHRESCOARSE : VMONAVDDCTRL_RISETHRESCOARSE_Field := 16#0#;
      --  unspecified
      Reserved_24_31  : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VMONAVDDCTRL_Register use record
      EN              at 0 range 0 .. 0;
      Reserved_1_1    at 0 range 1 .. 1;
      RISEWU          at 0 range 2 .. 2;
      FALLWU          at 0 range 3 .. 3;
      Reserved_4_7    at 0 range 4 .. 7;
      FALLTHRESFINE   at 0 range 8 .. 11;
      FALLTHRESCOARSE at 0 range 12 .. 15;
      RISETHRESFINE   at 0 range 16 .. 19;
      RISETHRESCOARSE at 0 range 20 .. 23;
      Reserved_24_31  at 0 range 24 .. 31;
   end record;

   subtype VMONALTAVDDCTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype VMONALTAVDDCTRL_RISEWU_Field is Interfaces.EFM32.Bit;
   subtype VMONALTAVDDCTRL_FALLWU_Field is Interfaces.EFM32.Bit;
   subtype VMONALTAVDDCTRL_THRESFINE_Field is Interfaces.EFM32.UInt4;
   subtype VMONALTAVDDCTRL_THRESCOARSE_Field is Interfaces.EFM32.UInt4;

   --  Alternate VMON AVDD Channel Control
   type VMONALTAVDDCTRL_Register is record
      --  Enable
      EN             : VMONALTAVDDCTRL_EN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.EFM32.Bit := 16#0#;
      --  Rise Wakeup
      RISEWU         : VMONALTAVDDCTRL_RISEWU_Field := 16#0#;
      --  Fall Wakeup
      FALLWU         : VMONALTAVDDCTRL_FALLWU_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.EFM32.UInt4 := 16#0#;
      --  Threshold Fine Adjust
      THRESFINE      : VMONALTAVDDCTRL_THRESFINE_Field := 16#0#;
      --  Threshold Coarse Adjust
      THRESCOARSE    : VMONALTAVDDCTRL_THRESCOARSE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VMONALTAVDDCTRL_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      RISEWU         at 0 range 2 .. 2;
      FALLWU         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      THRESFINE      at 0 range 8 .. 11;
      THRESCOARSE    at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype VMONDVDDCTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype VMONDVDDCTRL_RISEWU_Field is Interfaces.EFM32.Bit;
   subtype VMONDVDDCTRL_FALLWU_Field is Interfaces.EFM32.Bit;
   subtype VMONDVDDCTRL_THRESFINE_Field is Interfaces.EFM32.UInt4;
   subtype VMONDVDDCTRL_THRESCOARSE_Field is Interfaces.EFM32.UInt4;

   --  VMON DVDD Channel Control
   type VMONDVDDCTRL_Register is record
      --  Enable
      EN             : VMONDVDDCTRL_EN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.EFM32.Bit := 16#0#;
      --  Rise Wakeup
      RISEWU         : VMONDVDDCTRL_RISEWU_Field := 16#0#;
      --  Fall Wakeup
      FALLWU         : VMONDVDDCTRL_FALLWU_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.EFM32.UInt4 := 16#0#;
      --  Threshold Fine Adjust
      THRESFINE      : VMONDVDDCTRL_THRESFINE_Field := 16#0#;
      --  Threshold Coarse Adjust
      THRESCOARSE    : VMONDVDDCTRL_THRESCOARSE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VMONDVDDCTRL_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      RISEWU         at 0 range 2 .. 2;
      FALLWU         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      THRESFINE      at 0 range 8 .. 11;
      THRESCOARSE    at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype VMONIO0CTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype VMONIO0CTRL_RISEWU_Field is Interfaces.EFM32.Bit;
   subtype VMONIO0CTRL_FALLWU_Field is Interfaces.EFM32.Bit;
   subtype VMONIO0CTRL_RETDIS_Field is Interfaces.EFM32.Bit;
   subtype VMONIO0CTRL_THRESFINE_Field is Interfaces.EFM32.UInt4;
   subtype VMONIO0CTRL_THRESCOARSE_Field is Interfaces.EFM32.UInt4;

   --  VMON IOVDD0 Channel Control
   type VMONIO0CTRL_Register is record
      --  Enable
      EN             : VMONIO0CTRL_EN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.EFM32.Bit := 16#0#;
      --  Rise Wakeup
      RISEWU         : VMONIO0CTRL_RISEWU_Field := 16#0#;
      --  Fall Wakeup
      FALLWU         : VMONIO0CTRL_FALLWU_Field := 16#0#;
      --  EM4 IO0 Retention Disable
      RETDIS         : VMONIO0CTRL_RETDIS_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Threshold Fine Adjust
      THRESFINE      : VMONIO0CTRL_THRESFINE_Field := 16#0#;
      --  Threshold Coarse Adjust
      THRESCOARSE    : VMONIO0CTRL_THRESCOARSE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VMONIO0CTRL_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      RISEWU         at 0 range 2 .. 2;
      FALLWU         at 0 range 3 .. 3;
      RETDIS         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      THRESFINE      at 0 range 8 .. 11;
      THRESCOARSE    at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype VMONIO1CTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype VMONIO1CTRL_RISEWU_Field is Interfaces.EFM32.Bit;
   subtype VMONIO1CTRL_FALLWU_Field is Interfaces.EFM32.Bit;
   subtype VMONIO1CTRL_RETDIS_Field is Interfaces.EFM32.Bit;
   subtype VMONIO1CTRL_THRESFINE_Field is Interfaces.EFM32.UInt4;
   subtype VMONIO1CTRL_THRESCOARSE_Field is Interfaces.EFM32.UInt4;

   --  VMON IOVDD1 Channel Control
   type VMONIO1CTRL_Register is record
      --  Enable
      EN             : VMONIO1CTRL_EN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.EFM32.Bit := 16#0#;
      --  Rise Wakeup
      RISEWU         : VMONIO1CTRL_RISEWU_Field := 16#0#;
      --  Fall Wakeup
      FALLWU         : VMONIO1CTRL_FALLWU_Field := 16#0#;
      --  EM4 IO1 Retention Disable
      RETDIS         : VMONIO1CTRL_RETDIS_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Threshold Fine Adjust
      THRESFINE      : VMONIO1CTRL_THRESFINE_Field := 16#0#;
      --  Threshold Coarse Adjust
      THRESCOARSE    : VMONIO1CTRL_THRESCOARSE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VMONIO1CTRL_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      RISEWU         at 0 range 2 .. 2;
      FALLWU         at 0 range 3 .. 3;
      RETDIS         at 0 range 4 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      THRESFINE      at 0 range 8 .. 11;
      THRESCOARSE    at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype VMONBUVDDCTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype VMONBUVDDCTRL_RISEWU_Field is Interfaces.EFM32.Bit;
   subtype VMONBUVDDCTRL_FALLWU_Field is Interfaces.EFM32.Bit;
   subtype VMONBUVDDCTRL_THRESFINE_Field is Interfaces.EFM32.UInt4;
   subtype VMONBUVDDCTRL_THRESCOARSE_Field is Interfaces.EFM32.UInt4;

   --  VMON BUVDD Channel Control
   type VMONBUVDDCTRL_Register is record
      --  Enable
      EN             : VMONBUVDDCTRL_EN_Field := 16#0#;
      --  unspecified
      Reserved_1_1   : Interfaces.EFM32.Bit := 16#0#;
      --  Rise Wakeup
      RISEWU         : VMONBUVDDCTRL_RISEWU_Field := 16#0#;
      --  Fall Wakeup
      FALLWU         : VMONBUVDDCTRL_FALLWU_Field := 16#0#;
      --  unspecified
      Reserved_4_7   : Interfaces.EFM32.UInt4 := 16#0#;
      --  Threshold Fine Adjust
      THRESFINE      : VMONBUVDDCTRL_THRESFINE_Field := 16#0#;
      --  Threshold Coarse Adjust
      THRESCOARSE    : VMONBUVDDCTRL_THRESCOARSE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for VMONBUVDDCTRL_Register use record
      EN             at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      RISEWU         at 0 range 2 .. 2;
      FALLWU         at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      THRESFINE      at 0 range 8 .. 11;
      THRESCOARSE    at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  RAM1 Blockset Power-down
   type RAM1CTRL_RAMPOWERDOWN_Field is
     (--  None of the RAM blocks powered down
      NONE,
      --  Power down RAM block 3 (address range 0x2001C000-0x2001FFFF)
      BLK3,
      --  Power down RAM blocks 2-3 (address range 0x20018000-0x2001FFFF)
      BLK2TO3,
      --  Power down RAM blocks 1-3 (address range 0x20014000-0x2001FFFF)
      BLK1TO3,
      --  Power down RAM blocks 0-3 (address range 0x20010000-0x2001FFFF)
      BLK0TO3)
     with Size => 4;
   for RAM1CTRL_RAMPOWERDOWN_Field use
     (NONE => 0,
      BLK3 => 8,
      BLK2TO3 => 12,
      BLK1TO3 => 14,
      BLK0TO3 => 15);

   --  Memory Control Register
   type RAM1CTRL_Register is record
      --  RAM1 Blockset Power-down
      RAMPOWERDOWN  : RAM1CTRL_RAMPOWERDOWN_Field :=
                       Interfaces.EFM32.EMU.NONE;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAM1CTRL_Register use record
      RAMPOWERDOWN  at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  RAM2 Blockset Power-down
   type RAM2CTRL_RAMPOWERDOWN_Field is
     (--  None of the RAM blocks powered down
      NONE,
      --  Power down RAM block 3
      BLK3,
      --  Power down RAM blocks 2-3
      BLK2TO3,
      --  Power down RAM blocks 1-3
      BLK1TO3,
      --  Power down RAM blocks 0-3
      BLK0TO3)
     with Size => 4;
   for RAM2CTRL_RAMPOWERDOWN_Field use
     (NONE => 0,
      BLK3 => 8,
      BLK2TO3 => 12,
      BLK1TO3 => 14,
      BLK0TO3 => 15);

   --  Memory Control Register
   type RAM2CTRL_Register is record
      --  RAM2 Blockset Power-down
      RAMPOWERDOWN  : RAM2CTRL_RAMPOWERDOWN_Field :=
                       Interfaces.EFM32.EMU.NONE;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for RAM2CTRL_Register use record
      RAMPOWERDOWN  at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype BUCTRL_EN_Field is Interfaces.EFM32.Bit;
   subtype BUCTRL_STATEN_Field is Interfaces.EFM32.Bit;
   subtype BUCTRL_BUVINPROBEEN_Field is Interfaces.EFM32.Bit;

   --  BU_VOUT Resistor Select
   type BUCTRL_VOUTRES_Field is
     (--  BU_VOUT is not connected
      DIS,
      --  Enable weak switch between BU_VOUT and backup domain power supply.
      WEAK,
      --  Enable medium switch between BU_VOUT and backup domain power supply.
      MED,
      --  Enable strong switch between BU_VOUT and backup domain power supply.
      STRONG)
     with Size => 2;
   for BUCTRL_VOUTRES_Field use
     (DIS => 0,
      WEAK => 1,
      MED => 2,
      STRONG => 3);

   --  Power Domain Resistor Select
   type BUCTRL_PWRRES_Field is
     (--  Main power and backup power connected with RES0 series resistance.
      RES0,
      --  Main power and backup power connected with RES1 series resistance.
      RES1,
      --  Main power and backup power connected with RES2 series resistance.
      RES2,
      --  Main power and backup power connected with RES3 series resistance.
      RES3)
     with Size => 2;
   for BUCTRL_PWRRES_Field use
     (RES0 => 0,
      RES1 => 1,
      RES2 => 2,
      RES3 => 3);

   --  Power Connection Configuration in Backup Mode
   type BUCTRL_BUACTPWRCON_Field is
     (--  No connection.
      NONE,
      --  Main power and backup power are connected through a diode, allowing current
--  to flow from backup power source to main power source, but not the other
--  way.
      MAINBU,
      --  Main power and backup power are connected through a diode, allowing current
--  to flow from main power source to backup power source, but not the other
--  way.
      BUMAIN,
      --  Main power and backup power are connected without diode.
      NODIODE)
     with Size => 2;
   for BUCTRL_BUACTPWRCON_Field use
     (NONE => 0,
      MAINBU => 1,
      BUMAIN => 2,
      NODIODE => 3);

   --  Power Connection Configuration When Not in Backup Mode
   type BUCTRL_BUINACTPWRCON_Field is
     (--  No connection.
      NONE,
      --  Main power and backup power are connected through a diode, allowing current
--  to flow from main power source to backup power source, but not the other
--  way.
      MAINBU,
      --  Main power and backup power are connected through a diode, allowing current
--  to flow from backup power source to main power source, but not the other
--  way.
      BUMAIN,
      --  Main power and backup power are connected without diode.
      NODIODE)
     with Size => 2;
   for BUCTRL_BUINACTPWRCON_Field use
     (NONE => 0,
      MAINBU => 1,
      BUMAIN => 2,
      NODIODE => 3);

   subtype BUCTRL_DISMAXCOMP_Field is Interfaces.EFM32.Bit;

   --  Backup Power Configuration Register
   type BUCTRL_Register is record
      --  Enable Backup Mode
      EN             : BUCTRL_EN_Field := 16#0#;
      --  Enable Backup Mode Status Export
      STATEN         : BUCTRL_STATEN_Field := 16#0#;
      --  Enable BU_VIN Probing
      BUVINPROBEEN   : BUCTRL_BUVINPROBEEN_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  BU_VOUT Resistor Select
      VOUTRES        : BUCTRL_VOUTRES_Field := Interfaces.EFM32.EMU.DIS;
      --  unspecified
      Reserved_10_11 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Power Domain Resistor Select
      PWRRES         : BUCTRL_PWRRES_Field := Interfaces.EFM32.EMU.RES0;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Power Connection Configuration in Backup Mode
      BUACTPWRCON    : BUCTRL_BUACTPWRCON_Field := Interfaces.EFM32.EMU.NONE;
      --  unspecified
      Reserved_18_19 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Power Connection Configuration When Not in Backup Mode
      BUINACTPWRCON  : BUCTRL_BUINACTPWRCON_Field :=
                        Interfaces.EFM32.EMU.NONE;
      --  unspecified
      Reserved_22_30 : Interfaces.EFM32.UInt9 := 16#0#;
      --  Disable MAIN-BU Comparator
      DISMAXCOMP     : BUCTRL_DISMAXCOMP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUCTRL_Register use record
      EN             at 0 range 0 .. 0;
      STATEN         at 0 range 1 .. 1;
      BUVINPROBEEN   at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      VOUTRES        at 0 range 8 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      PWRRES         at 0 range 12 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      BUACTPWRCON    at 0 range 16 .. 17;
      Reserved_18_19 at 0 range 18 .. 19;
      BUINACTPWRCON  at 0 range 20 .. 21;
      Reserved_22_30 at 0 range 22 .. 30;
      DISMAXCOMP     at 0 range 31 .. 31;
   end record;

   subtype R5VCTRL_BYPASS_Field is Interfaces.EFM32.Bit;
   subtype R5VCTRL_EM4WUEN_Field is Interfaces.EFM32.Bit;
   subtype R5VCTRL_IMONEN_Field is Interfaces.EFM32.Bit;

   --  5V Input Mode
   type R5VCTRL_INPUTMODE_Field is
     (--  Regulator input supply switched automatically to the highest voltage of
--  either VBUS or VREGI
      AUTO,
      --  Force VBUS pin as the regulator input
      VBUS,
      --  Force VREGI pin as the regulator input
      VREGI)
     with Size => 2;
   for R5VCTRL_INPUTMODE_Field use
     (AUTO => 0,
      VBUS => 1,
      VREGI => 2);

   --  5V Regulator Control
   type R5VCTRL_Register is record
      --  5V Regulator Bypass
      BYPASS         : R5VCTRL_BYPASS_Field := 16#0#;
      --  Enable EM4 Wakeup Due to VBUS Detection
      EM4WUEN        : R5VCTRL_EM4WUEN_Field := 16#0#;
      --  Enable the Regulator Current Monitor for Selected Current Path to
      --  Either VREGI or VBUS
      IMONEN         : R5VCTRL_IMONEN_Field := 16#0#;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5 := 16#0#;
      --  5V Input Mode
      INPUTMODE      : R5VCTRL_INPUTMODE_Field := Interfaces.EFM32.EMU.AUTO;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for R5VCTRL_Register use record
      BYPASS         at 0 range 0 .. 0;
      EM4WUEN        at 0 range 1 .. 1;
      IMONEN         at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      INPUTMODE      at 0 range 8 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype R5VADCCTRL_ENAMUX_Field is Interfaces.EFM32.Bit;

   --  ADC Mux Selection
   type R5VADCCTRL_AMUXSEL_Field is
     (--  VBUS divided by 10
      VBUSDIV10,
      --  VREGI divided by 10
      VREGIDIV10,
      --  VREGO divided by 6
      VREGODIV6,
      --  VREGI current monitor
      VREGIIMON,
      --  VBUS current monitor
      VBUSIMON)
     with Size => 4;
   for R5VADCCTRL_AMUXSEL_Field use
     (VBUSDIV10 => 0,
      VREGIDIV10 => 1,
      VREGODIV6 => 2,
      VREGIIMON => 3,
      VBUSIMON => 4);

   --  5V Regulator Control
   type R5VADCCTRL_Register is record
      --  Enable the 5V Subsystem ADC MUX
      ENAMUX         : R5VADCCTRL_ENAMUX_Field := 16#0#;
      --  unspecified
      Reserved_1_11  : Interfaces.EFM32.UInt11 := 16#0#;
      --  ADC Mux Selection
      AMUXSEL        : R5VADCCTRL_AMUXSEL_Field :=
                        Interfaces.EFM32.EMU.VBUSDIV10;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for R5VADCCTRL_Register use record
      ENAMUX         at 0 range 0 .. 0;
      Reserved_1_11  at 0 range 1 .. 11;
      AMUXSEL        at 0 range 12 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype R5VOUTLEVEL_OUTLEVEL_Field is Interfaces.EFM32.UInt4;

   --  5V Regulator Voltage Select
   type R5VOUTLEVEL_Register is record
      --  5V Regulator Voltage
      OUTLEVEL      : R5VOUTLEVEL_OUTLEVEL_Field := 16#1#;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for R5VOUTLEVEL_Register use record
      OUTLEVEL      at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype R5VDETCTRL_VREGIDETDIS_Field is Interfaces.EFM32.Bit;
   subtype R5VDETCTRL_VBUSDETDIS_Field is Interfaces.EFM32.Bit;
   subtype R5VDETCTRL_VREGODETDIS_Field is Interfaces.EFM32.Bit;

   --  5V Detector Enables
   type R5VDETCTRL_Register is record
      --  VREGI Detector Disable
      VREGIDETDIS   : R5VDETCTRL_VREGIDETDIS_Field := 16#0#;
      --  VBUS Detector Disable
      VBUSDETDIS    : R5VDETCTRL_VBUSDETDIS_Field := 16#0#;
      --  VREGO Detector Disable
      VREGODETDIS   : R5VDETCTRL_VREGODETDIS_Field := 16#0#;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for R5VDETCTRL_Register use record
      VREGIDETDIS   at 0 range 0 .. 0;
      VBUSDETDIS    at 0 range 1 .. 1;
      VREGODETDIS   at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   --  LP Mode Comparator Bias Selection for EM01
   type DCDCLPEM01CFG_LPCMPBIASEM01_Field is
     (--  Maximum load current less than 75uA.
      BIAS0,
      --  Maximum load current less than 500uA.
      BIAS1,
      --  Maximum load current less than 2.5mA.
      BIAS2,
      --  Maximum load current less than 10mA.
      BIAS3)
     with Size => 2;
   for DCDCLPEM01CFG_LPCMPBIASEM01_Field use
     (BIAS0 => 0,
      BIAS1 => 1,
      BIAS2 => 2,
      BIAS3 => 3);

   subtype DCDCLPEM01CFG_LPCMPHYSSELEM01_Field is Interfaces.EFM32.UInt4;

   --  Configuration Bits for Low Power Mode to Be Applied During EM01, This
   --  Field is Only Relevant If LP Mode is Used in EM01
   type DCDCLPEM01CFG_Register is record
      --  unspecified
      Reserved_0_7    : Interfaces.EFM32.Byte := 16#0#;
      --  LP Mode Comparator Bias Selection for EM01
      LPCMPBIASEM01   : DCDCLPEM01CFG_LPCMPBIASEM01_Field :=
                         Interfaces.EFM32.EMU.BIAS3;
      --  unspecified
      Reserved_10_11  : Interfaces.EFM32.UInt2 := 16#0#;
      --  LP Mode Hysteresis Selection for EM01
      LPCMPHYSSELEM01 : DCDCLPEM01CFG_LPCMPHYSSELEM01_Field := 16#0#;
      --  unspecified
      Reserved_16_31  : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCDCLPEM01CFG_Register use record
      Reserved_0_7    at 0 range 0 .. 7;
      LPCMPBIASEM01   at 0 range 8 .. 9;
      Reserved_10_11  at 0 range 10 .. 11;
      LPCMPHYSSELEM01 at 0 range 12 .. 15;
      Reserved_16_31  at 0 range 16 .. 31;
   end record;

   subtype R5VSTATUS_VREGIDET_Field is Interfaces.EFM32.Bit;
   subtype R5VSTATUS_VBUSDET_Field is Interfaces.EFM32.Bit;
   subtype R5VSTATUS_VREGODET_Field is Interfaces.EFM32.Bit;
   subtype R5VSTATUS_VBUSGTVREGI_Field is Interfaces.EFM32.Bit;
   subtype R5VSTATUS_LDODROPOUTDET_Field is Interfaces.EFM32.Bit;
   subtype R5VSTATUS_COLDSTART_Field is Interfaces.EFM32.Bit;

   --  5V Detector Status Register
   type R5VSTATUS_Register is record
      --  Read-only. VREGI Detected
      VREGIDET      : R5VSTATUS_VREGIDET_Field;
      --  Read-only. USB VBUS Detected
      VBUSDET       : R5VSTATUS_VBUSDET_Field;
      --  Read-only. VREGO Detected
      VREGODET      : R5VSTATUS_VREGODET_Field;
      --  Read-only. Output of the Supply Comparator Between VBUS and VREGI
      VBUSGTVREGI   : R5VSTATUS_VBUSGTVREGI_Field;
      --  Read-only. Regulator Dropout Detection
      LDODROPOUTDET : R5VSTATUS_LDODROPOUTDET_Field;
      --  Read-only. Indicates If the Regulator is Going Through a Cold Start
      COLDSTART     : R5VSTATUS_COLDSTART_Field;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for R5VSTATUS_Register use record
      VREGIDET      at 0 range 0 .. 0;
      VBUSDET       at 0 range 1 .. 1;
      VREGODET      at 0 range 2 .. 2;
      VBUSGTVREGI   at 0 range 3 .. 3;
      LDODROPOUTDET at 0 range 4 .. 4;
      COLDSTART     at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype R5VSYNC_OUTLEVELBUSY_Field is Interfaces.EFM32.Bit;

   --  5V Read Status Register
   type R5VSYNC_Register is record
      --  Read-only. 5V Regulator Voltage Register Transfer Busy
      OUTLEVELBUSY  : R5VSYNC_OUTLEVELBUSY_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for R5VSYNC_Register use record
      OUTLEVELBUSY  at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype EM23PERNORETAINCMD_ACMP0UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_ACMP1UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_PCNT0UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_PCNT1UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_PCNT2UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_I2C0UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_I2C1UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_DAC0UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_IDAC0UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_ADC0UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_LETIMER0UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_WDOG0UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_WDOG1UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_LESENSE0UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_CSENUNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_LEUART0UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_LEUART1UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_LCDUNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_LETIMER1UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_ADC1UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_ACMP2UNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_RTCUNLOCK_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCMD_USBUNLOCK_Field is Interfaces.EFM32.Bit;

   --  Clears Corresponding Bits in EM23PERNORETAINSTATUS Unlocking Access to
   --  Peripheral
   type EM23PERNORETAINCMD_Register is record
      --  Write-only. Clears Status Bit of ACMP0 and Unlocks Access to It
      ACMP0UNLOCK    : EM23PERNORETAINCMD_ACMP0UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of ACMP1 and Unlocks Access to It
      ACMP1UNLOCK    : EM23PERNORETAINCMD_ACMP1UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of PCNT0 and Unlocks Access to It
      PCNT0UNLOCK    : EM23PERNORETAINCMD_PCNT0UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of PCNT1 and Unlocks Access to It
      PCNT1UNLOCK    : EM23PERNORETAINCMD_PCNT1UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of PCNT2 and Unlocks Access to It
      PCNT2UNLOCK    : EM23PERNORETAINCMD_PCNT2UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of I2C0 and Unlocks Access to It
      I2C0UNLOCK     : EM23PERNORETAINCMD_I2C0UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of I2C1 and Unlocks Access to It
      I2C1UNLOCK     : EM23PERNORETAINCMD_I2C1UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of DAC0 and Unlocks Access to It
      DAC0UNLOCK     : EM23PERNORETAINCMD_DAC0UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of IDAC0 and Unlocks Access to It
      IDAC0UNLOCK    : EM23PERNORETAINCMD_IDAC0UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of ADC0 and Unlocks Access to It
      ADC0UNLOCK     : EM23PERNORETAINCMD_ADC0UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of LETIMER0 and Unlocks Access to It
      LETIMER0UNLOCK : EM23PERNORETAINCMD_LETIMER0UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of WDOG0 and Unlocks Access to It
      WDOG0UNLOCK    : EM23PERNORETAINCMD_WDOG0UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of WDOG1 and Unlocks Access to It
      WDOG1UNLOCK    : EM23PERNORETAINCMD_WDOG1UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of LESENSE0 and Unlocks Access to It
      LESENSE0UNLOCK : EM23PERNORETAINCMD_LESENSE0UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of CSEN and Unlocks Access to It
      CSENUNLOCK     : EM23PERNORETAINCMD_CSENUNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of LEUART0 and Unlocks Access to It
      LEUART0UNLOCK  : EM23PERNORETAINCMD_LEUART0UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of LEUART1 and Unlocks Access to It
      LEUART1UNLOCK  : EM23PERNORETAINCMD_LEUART1UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of LCD and Unlocks Access to It
      LCDUNLOCK      : EM23PERNORETAINCMD_LCDUNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of LETIMER1 and Unlocks Access to It
      LETIMER1UNLOCK : EM23PERNORETAINCMD_LETIMER1UNLOCK_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Clears Status Bit of ADC1 and Unlocks Access to It
      ADC1UNLOCK     : EM23PERNORETAINCMD_ADC1UNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of ACMP2 and Unlocks Access to It
      ACMP2UNLOCK    : EM23PERNORETAINCMD_ACMP2UNLOCK_Field := 16#0#;
      --  unspecified
      Reserved_22_22 : Interfaces.EFM32.Bit := 16#0#;
      --  Write-only. Clears Status Bit of RTC and Unlocks Access to It
      RTCUNLOCK      : EM23PERNORETAINCMD_RTCUNLOCK_Field := 16#0#;
      --  Write-only. Clears Status Bit of USB and Unlocks Access to It
      USBUNLOCK      : EM23PERNORETAINCMD_USBUNLOCK_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.EFM32.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EM23PERNORETAINCMD_Register use record
      ACMP0UNLOCK    at 0 range 0 .. 0;
      ACMP1UNLOCK    at 0 range 1 .. 1;
      PCNT0UNLOCK    at 0 range 2 .. 2;
      PCNT1UNLOCK    at 0 range 3 .. 3;
      PCNT2UNLOCK    at 0 range 4 .. 4;
      I2C0UNLOCK     at 0 range 5 .. 5;
      I2C1UNLOCK     at 0 range 6 .. 6;
      DAC0UNLOCK     at 0 range 7 .. 7;
      IDAC0UNLOCK    at 0 range 8 .. 8;
      ADC0UNLOCK     at 0 range 9 .. 9;
      LETIMER0UNLOCK at 0 range 10 .. 10;
      WDOG0UNLOCK    at 0 range 11 .. 11;
      WDOG1UNLOCK    at 0 range 12 .. 12;
      LESENSE0UNLOCK at 0 range 13 .. 13;
      CSENUNLOCK     at 0 range 14 .. 14;
      LEUART0UNLOCK  at 0 range 15 .. 15;
      LEUART1UNLOCK  at 0 range 16 .. 16;
      LCDUNLOCK      at 0 range 17 .. 17;
      LETIMER1UNLOCK at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ADC1UNLOCK     at 0 range 20 .. 20;
      ACMP2UNLOCK    at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      RTCUNLOCK      at 0 range 23 .. 23;
      USBUNLOCK      at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype EM23PERNORETAINSTATUS_ACMP0LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_ACMP1LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_PCNT0LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_PCNT1LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_PCNT2LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_I2C0LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_I2C1LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_DAC0LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_IDAC0LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_ADC0LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_LETIMER0LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_WDOG0LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_WDOG1LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_LESENSE0LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_CSENLOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_LEUART0LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_LEUART1LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_LCDLOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_LETIMER1LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_ADC1LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_ACMP2LOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_RTCLOCKED_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINSTATUS_USBLOCKED_Field is Interfaces.EFM32.Bit;

   --  Status Indicating If Peripherals Were Powered Down in EM23, Subsequently
   --  Locking Access to It
   type EM23PERNORETAINSTATUS_Register is record
      --  Read-only. Indicates If ACMP0 Powered Down During EM23
      ACMP0LOCKED    : EM23PERNORETAINSTATUS_ACMP0LOCKED_Field;
      --  Read-only. Indicates If ACMP1 Powered Down During EM23
      ACMP1LOCKED    : EM23PERNORETAINSTATUS_ACMP1LOCKED_Field;
      --  Read-only. Indicates If PCNT0 Powered Down During EM23
      PCNT0LOCKED    : EM23PERNORETAINSTATUS_PCNT0LOCKED_Field;
      --  Read-only. Indicates If PCNT1 Powered Down During EM23
      PCNT1LOCKED    : EM23PERNORETAINSTATUS_PCNT1LOCKED_Field;
      --  Read-only. Indicates If PCNT2 Powered Down During EM23
      PCNT2LOCKED    : EM23PERNORETAINSTATUS_PCNT2LOCKED_Field;
      --  Read-only. Indicates If I2C0 Powered Down During EM23
      I2C0LOCKED     : EM23PERNORETAINSTATUS_I2C0LOCKED_Field;
      --  Read-only. Indicates If I2C1 Powered Down During EM23
      I2C1LOCKED     : EM23PERNORETAINSTATUS_I2C1LOCKED_Field;
      --  Read-only. Indicates If DAC0 Powered Down During EM23
      DAC0LOCKED     : EM23PERNORETAINSTATUS_DAC0LOCKED_Field;
      --  Read-only. Indicates If IDAC0 Powered Down During EM23
      IDAC0LOCKED    : EM23PERNORETAINSTATUS_IDAC0LOCKED_Field;
      --  Read-only. Indicates If ADC0 Powered Down During EM23
      ADC0LOCKED     : EM23PERNORETAINSTATUS_ADC0LOCKED_Field;
      --  Read-only. Indicates If LETIMER0 Powered Down During EM23
      LETIMER0LOCKED : EM23PERNORETAINSTATUS_LETIMER0LOCKED_Field;
      --  Read-only. Indicates If WDOG0 Powered Down During EM23
      WDOG0LOCKED    : EM23PERNORETAINSTATUS_WDOG0LOCKED_Field;
      --  Read-only. Indicates If WDOG1 Powered Down During EM23
      WDOG1LOCKED    : EM23PERNORETAINSTATUS_WDOG1LOCKED_Field;
      --  Read-only. Indicates If LESENSE0 Powered Down During EM23
      LESENSE0LOCKED : EM23PERNORETAINSTATUS_LESENSE0LOCKED_Field;
      --  Read-only. Indicates If CSEN Powered Down During EM23
      CSENLOCKED     : EM23PERNORETAINSTATUS_CSENLOCKED_Field;
      --  Read-only. Indicates If LEUART0 Powered Down During EM23
      LEUART0LOCKED  : EM23PERNORETAINSTATUS_LEUART0LOCKED_Field;
      --  Read-only. Indicates If LEUART1 Powered Down During EM23
      LEUART1LOCKED  : EM23PERNORETAINSTATUS_LEUART1LOCKED_Field;
      --  Read-only. Indicates If LCD Powered Down During EM23
      LCDLOCKED      : EM23PERNORETAINSTATUS_LCDLOCKED_Field;
      --  Read-only. Indicates If LETIMER1 Powered Down During EM23
      LETIMER1LOCKED : EM23PERNORETAINSTATUS_LETIMER1LOCKED_Field;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit;
      --  Read-only. Indicates If ADC1 Powered Down During EM23
      ADC1LOCKED     : EM23PERNORETAINSTATUS_ADC1LOCKED_Field;
      --  Read-only. Indicates If ACMP2 Powered Down During EM23
      ACMP2LOCKED    : EM23PERNORETAINSTATUS_ACMP2LOCKED_Field;
      --  unspecified
      Reserved_22_22 : Interfaces.EFM32.Bit;
      --  Read-only. Indicates If RTC Powered Down During EM23
      RTCLOCKED      : EM23PERNORETAINSTATUS_RTCLOCKED_Field;
      --  Read-only. Indicates If USB Powered Down During EM23
      USBLOCKED      : EM23PERNORETAINSTATUS_USBLOCKED_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.EFM32.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EM23PERNORETAINSTATUS_Register use record
      ACMP0LOCKED    at 0 range 0 .. 0;
      ACMP1LOCKED    at 0 range 1 .. 1;
      PCNT0LOCKED    at 0 range 2 .. 2;
      PCNT1LOCKED    at 0 range 3 .. 3;
      PCNT2LOCKED    at 0 range 4 .. 4;
      I2C0LOCKED     at 0 range 5 .. 5;
      I2C1LOCKED     at 0 range 6 .. 6;
      DAC0LOCKED     at 0 range 7 .. 7;
      IDAC0LOCKED    at 0 range 8 .. 8;
      ADC0LOCKED     at 0 range 9 .. 9;
      LETIMER0LOCKED at 0 range 10 .. 10;
      WDOG0LOCKED    at 0 range 11 .. 11;
      WDOG1LOCKED    at 0 range 12 .. 12;
      LESENSE0LOCKED at 0 range 13 .. 13;
      CSENLOCKED     at 0 range 14 .. 14;
      LEUART0LOCKED  at 0 range 15 .. 15;
      LEUART1LOCKED  at 0 range 16 .. 16;
      LCDLOCKED      at 0 range 17 .. 17;
      LETIMER1LOCKED at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ADC1LOCKED     at 0 range 20 .. 20;
      ACMP2LOCKED    at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      RTCLOCKED      at 0 range 23 .. 23;
      USBLOCKED      at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype EM23PERNORETAINCTRL_ACMP0DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_ACMP1DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_PCNT0DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_PCNT1DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_PCNT2DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_I2C0DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_I2C1DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_VDAC0DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_IDAC0DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_ADC0DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_LETIMER0DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_WDOG0DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_WDOG1DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_LESENSE0DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_CSENDIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_LEUART0DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_LEUART1DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_LCDDIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_LETIMER1DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_ADC1DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_ACMP2DIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_RTCDIS_Field is Interfaces.EFM32.Bit;
   subtype EM23PERNORETAINCTRL_USBDIS_Field is Interfaces.EFM32.Bit;

   --  When Set Corresponding Peripherals May Get Powered Down in EM23
   type EM23PERNORETAINCTRL_Register is record
      --  Allow Power Down of ACMP0 During EM23
      ACMP0DIS       : EM23PERNORETAINCTRL_ACMP0DIS_Field := 16#0#;
      --  Allow Power Down of ACMP1 During EM23
      ACMP1DIS       : EM23PERNORETAINCTRL_ACMP1DIS_Field := 16#0#;
      --  Allow Power Down of PCNT0 During EM23
      PCNT0DIS       : EM23PERNORETAINCTRL_PCNT0DIS_Field := 16#0#;
      --  Allow Power Down of PCNT1 During EM23
      PCNT1DIS       : EM23PERNORETAINCTRL_PCNT1DIS_Field := 16#0#;
      --  Allow Power Down of PCNT2 During EM23
      PCNT2DIS       : EM23PERNORETAINCTRL_PCNT2DIS_Field := 16#0#;
      --  Allow Power Down of I2C0 During EM23
      I2C0DIS        : EM23PERNORETAINCTRL_I2C0DIS_Field := 16#0#;
      --  Allow Power Down of I2C1 During EM23
      I2C1DIS        : EM23PERNORETAINCTRL_I2C1DIS_Field := 16#0#;
      --  Allow Power Down of DAC0 During EM23
      VDAC0DIS       : EM23PERNORETAINCTRL_VDAC0DIS_Field := 16#0#;
      --  Allow Power Down of IDAC0 During EM23
      IDAC0DIS       : EM23PERNORETAINCTRL_IDAC0DIS_Field := 16#0#;
      --  Allow Power Down of ADC0 During EM23
      ADC0DIS        : EM23PERNORETAINCTRL_ADC0DIS_Field := 16#0#;
      --  Allow Power Down of LETIMER0 During EM23
      LETIMER0DIS    : EM23PERNORETAINCTRL_LETIMER0DIS_Field := 16#0#;
      --  Allow Power Down of WDOG0 During EM23
      WDOG0DIS       : EM23PERNORETAINCTRL_WDOG0DIS_Field := 16#0#;
      --  Allow Power Down of WDOG1 During EM23
      WDOG1DIS       : EM23PERNORETAINCTRL_WDOG1DIS_Field := 16#0#;
      --  Allow Power Down of LESENSE0 During EM23
      LESENSE0DIS    : EM23PERNORETAINCTRL_LESENSE0DIS_Field := 16#0#;
      --  Allow Power Down of CSEN During EM23
      CSENDIS        : EM23PERNORETAINCTRL_CSENDIS_Field := 16#0#;
      --  Allow Power Down of LEUART0 During EM23
      LEUART0DIS     : EM23PERNORETAINCTRL_LEUART0DIS_Field := 16#0#;
      --  Allow Power Down of LEUART1 During EM23
      LEUART1DIS     : EM23PERNORETAINCTRL_LEUART1DIS_Field := 16#0#;
      --  Allow Power Down of LCD During EM23
      LCDDIS         : EM23PERNORETAINCTRL_LCDDIS_Field := 16#0#;
      --  Allow Power Down of LETIMER1 During EM23
      LETIMER1DIS    : EM23PERNORETAINCTRL_LETIMER1DIS_Field := 16#0#;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit := 16#0#;
      --  Allow Power Down of ADC1 During EM23
      ADC1DIS        : EM23PERNORETAINCTRL_ADC1DIS_Field := 16#0#;
      --  Allow Power Down of ACMP2 During EM23
      ACMP2DIS       : EM23PERNORETAINCTRL_ACMP2DIS_Field := 16#0#;
      --  unspecified
      Reserved_22_22 : Interfaces.EFM32.Bit := 16#0#;
      --  Allow Power Down of RTC During EM23
      RTCDIS         : EM23PERNORETAINCTRL_RTCDIS_Field := 16#0#;
      --  Allow Power Down of USB During EM23
      USBDIS         : EM23PERNORETAINCTRL_USBDIS_Field := 16#0#;
      --  unspecified
      Reserved_25_31 : Interfaces.EFM32.UInt7 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EM23PERNORETAINCTRL_Register use record
      ACMP0DIS       at 0 range 0 .. 0;
      ACMP1DIS       at 0 range 1 .. 1;
      PCNT0DIS       at 0 range 2 .. 2;
      PCNT1DIS       at 0 range 3 .. 3;
      PCNT2DIS       at 0 range 4 .. 4;
      I2C0DIS        at 0 range 5 .. 5;
      I2C1DIS        at 0 range 6 .. 6;
      VDAC0DIS       at 0 range 7 .. 7;
      IDAC0DIS       at 0 range 8 .. 8;
      ADC0DIS        at 0 range 9 .. 9;
      LETIMER0DIS    at 0 range 10 .. 10;
      WDOG0DIS       at 0 range 11 .. 11;
      WDOG1DIS       at 0 range 12 .. 12;
      LESENSE0DIS    at 0 range 13 .. 13;
      CSENDIS        at 0 range 14 .. 14;
      LEUART0DIS     at 0 range 15 .. 15;
      LEUART1DIS     at 0 range 16 .. 16;
      LCDDIS         at 0 range 17 .. 17;
      LETIMER1DIS    at 0 range 18 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      ADC1DIS        at 0 range 20 .. 20;
      ACMP2DIS       at 0 range 21 .. 21;
      Reserved_22_22 at 0 range 22 .. 22;
      RTCDIS         at 0 range 23 .. 23;
      USBDIS         at 0 range 24 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  EMU
   type EMU_Peripheral is record
      --  Control Register
      CTRL                  : aliased CTRL_Register;
      --  Status Register
      STATUS                : aliased STATUS_Register;
      --  Configuration Lock Register
      LOCK                  : aliased LOCK_Register;
      --  Memory Control Register
      RAM0CTRL              : aliased RAM0CTRL_Register;
      --  Command Register
      CMD                   : aliased CMD_Register;
      --  EM4 Control Register
      EM4CTRL               : aliased EM4CTRL_Register;
      --  Temperature Limits for Interrupt Generation
      TEMPLIMITS            : aliased TEMPLIMITS_Register;
      --  Value of Last Temperature Measurement
      TEMP                  : aliased TEMP_Register;
      --  Interrupt Flag Register
      IF_k                  : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS                   : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC                   : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN                   : aliased IEN_Register;
      --  Regulator and Supply Lock Register
      PWRLOCK               : aliased PWRLOCK_Register;
      --  Power Control Register
      PWRCTRL               : aliased PWRCTRL_Register;
      --  DCDC Control
      DCDCCTRL              : aliased DCDCCTRL_Register;
      --  DCDC Miscellaneous Control Register
      DCDCMISCCTRL          : aliased DCDCMISCCTRL_Register;
      --  DCDC Power Train NFET Zero Current Detector Control Register
      DCDCZDETCTRL          : aliased DCDCZDETCTRL_Register;
      --  DCDC Power Train PFET Current Limiter Control Register
      DCDCCLIMCTRL          : aliased DCDCCLIMCTRL_Register;
      --  DCDC Low Noise Compensator Control Register
      DCDCLNCOMPCTRL        : aliased DCDCLNCOMPCTRL_Register;
      --  DCDC Low Noise Voltage Register
      DCDCLNVCTRL           : aliased DCDCLNVCTRL_Register;
      --  DCDC Low Power Voltage Register
      DCDCLPVCTRL           : aliased DCDCLPVCTRL_Register;
      --  DCDC Low Power Control Register
      DCDCLPCTRL            : aliased DCDCLPCTRL_Register;
      --  DCDC Low Noise Controller Frequency Control
      DCDCLNFREQCTRL        : aliased DCDCLNFREQCTRL_Register;
      --  DCDC Read Status Register
      DCDCSYNC              : aliased DCDCSYNC_Register;
      --  VMON AVDD Channel Control
      VMONAVDDCTRL          : aliased VMONAVDDCTRL_Register;
      --  Alternate VMON AVDD Channel Control
      VMONALTAVDDCTRL       : aliased VMONALTAVDDCTRL_Register;
      --  VMON DVDD Channel Control
      VMONDVDDCTRL          : aliased VMONDVDDCTRL_Register;
      --  VMON IOVDD0 Channel Control
      VMONIO0CTRL           : aliased VMONIO0CTRL_Register;
      --  VMON IOVDD1 Channel Control
      VMONIO1CTRL           : aliased VMONIO1CTRL_Register;
      --  VMON BUVDD Channel Control
      VMONBUVDDCTRL         : aliased VMONBUVDDCTRL_Register;
      --  Memory Control Register
      RAM1CTRL              : aliased RAM1CTRL_Register;
      --  Memory Control Register
      RAM2CTRL              : aliased RAM2CTRL_Register;
      --  Backup Power Configuration Register
      BUCTRL                : aliased BUCTRL_Register;
      --  5V Regulator Control
      R5VCTRL               : aliased R5VCTRL_Register;
      --  5V Regulator Control
      R5VADCCTRL            : aliased R5VADCCTRL_Register;
      --  5V Regulator Voltage Select
      R5VOUTLEVEL           : aliased R5VOUTLEVEL_Register;
      --  5V Detector Enables
      R5VDETCTRL            : aliased R5VDETCTRL_Register;
      --  Configuration Bits for Low Power Mode to Be Applied During EM01, This
      --  Field is Only Relevant If LP Mode is Used in EM01
      DCDCLPEM01CFG         : aliased DCDCLPEM01CFG_Register;
      --  5V Detector Status Register
      R5VSTATUS             : aliased R5VSTATUS_Register;
      --  5V Read Status Register
      R5VSYNC               : aliased R5VSYNC_Register;
      --  Clears Corresponding Bits in EM23PERNORETAINSTATUS Unlocking Access
      --  to Peripheral
      EM23PERNORETAINCMD    : aliased EM23PERNORETAINCMD_Register;
      --  Status Indicating If Peripherals Were Powered Down in EM23,
      --  Subsequently Locking Access to It
      EM23PERNORETAINSTATUS : aliased EM23PERNORETAINSTATUS_Register;
      --  When Set Corresponding Peripherals May Get Powered Down in EM23
      EM23PERNORETAINCTRL   : aliased EM23PERNORETAINCTRL_Register;
   end record
     with Volatile;

   for EMU_Peripheral use record
      CTRL                  at 16#0# range 0 .. 31;
      STATUS                at 16#4# range 0 .. 31;
      LOCK                  at 16#8# range 0 .. 31;
      RAM0CTRL              at 16#C# range 0 .. 31;
      CMD                   at 16#10# range 0 .. 31;
      EM4CTRL               at 16#18# range 0 .. 31;
      TEMPLIMITS            at 16#1C# range 0 .. 31;
      TEMP                  at 16#20# range 0 .. 31;
      IF_k                  at 16#24# range 0 .. 31;
      IFS                   at 16#28# range 0 .. 31;
      IFC                   at 16#2C# range 0 .. 31;
      IEN                   at 16#30# range 0 .. 31;
      PWRLOCK               at 16#34# range 0 .. 31;
      PWRCTRL               at 16#3C# range 0 .. 31;
      DCDCCTRL              at 16#40# range 0 .. 31;
      DCDCMISCCTRL          at 16#4C# range 0 .. 31;
      DCDCZDETCTRL          at 16#50# range 0 .. 31;
      DCDCCLIMCTRL          at 16#54# range 0 .. 31;
      DCDCLNCOMPCTRL        at 16#58# range 0 .. 31;
      DCDCLNVCTRL           at 16#5C# range 0 .. 31;
      DCDCLPVCTRL           at 16#64# range 0 .. 31;
      DCDCLPCTRL            at 16#6C# range 0 .. 31;
      DCDCLNFREQCTRL        at 16#70# range 0 .. 31;
      DCDCSYNC              at 16#78# range 0 .. 31;
      VMONAVDDCTRL          at 16#90# range 0 .. 31;
      VMONALTAVDDCTRL       at 16#94# range 0 .. 31;
      VMONDVDDCTRL          at 16#98# range 0 .. 31;
      VMONIO0CTRL           at 16#9C# range 0 .. 31;
      VMONIO1CTRL           at 16#A0# range 0 .. 31;
      VMONBUVDDCTRL         at 16#A4# range 0 .. 31;
      RAM1CTRL              at 16#B4# range 0 .. 31;
      RAM2CTRL              at 16#B8# range 0 .. 31;
      BUCTRL                at 16#BC# range 0 .. 31;
      R5VCTRL               at 16#C8# range 0 .. 31;
      R5VADCCTRL            at 16#CC# range 0 .. 31;
      R5VOUTLEVEL           at 16#D0# range 0 .. 31;
      R5VDETCTRL            at 16#DC# range 0 .. 31;
      DCDCLPEM01CFG         at 16#EC# range 0 .. 31;
      R5VSTATUS             at 16#F0# range 0 .. 31;
      R5VSYNC               at 16#F8# range 0 .. 31;
      EM23PERNORETAINCMD    at 16#100# range 0 .. 31;
      EM23PERNORETAINSTATUS at 16#104# range 0 .. 31;
      EM23PERNORETAINCTRL   at 16#108# range 0 .. 31;
   end record;

   --  EMU
   EMU_Periph : aliased EMU_Peripheral
     with Import, Address => EMU_Base;

end Interfaces.EFM32.EMU;
