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

--  USB
package Interfaces.EFM32.USB is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CTRL_VBUSENAP_Field is Interfaces.EFM32.Bit;
   subtype CTRL_SELFPOWERED_Field is Interfaces.EFM32.Bit;

   --  Low Energy Mode Oscillator Control
   type CTRL_LEMOSCCTRL_Field is
     (--  Low Energy Mode has no effect on neither USBC or USHFRCO.
      NONE,
      --  The USBC clock is gated when Low Energy Mode is active.
      GATE,
      --  Reset value for the field
      CTRL_LEMOSCCTRL_Field_Reset)
     with Size => 2;
   for CTRL_LEMOSCCTRL_Field use
     (NONE => 0,
      GATE => 1,
      CTRL_LEMOSCCTRL_Field_Reset => 2);

   subtype CTRL_LEMPHYCTRL_Field is Interfaces.EFM32.Bit;
   subtype CTRL_LEMIDLEEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_IDCDEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_OTGCLKCDIS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_OTGIDINDIS_Field is Interfaces.EFM32.Bit;
   subtype CTRL_OTGPHYCTRLDIS_Field is Interfaces.EFM32.Bit;

   --  Data Contact Detection Enable
   type CTRL_DCDEN_Field is
     (--  DCD is disabled.
      DISABLED,
      --  Only DCD timeout will be initiated.
      TIMEOUT,
      --  Full DCD operation (physical contact and timeout) will be initiated.
      ENABLED)
     with Size => 2;
   for CTRL_DCDEN_Field use
     (DISABLED => 0,
      TIMEOUT => 2,
      ENABLED => 3);

   subtype CTRL_PDEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_SDEN_Field is Interfaces.EFM32.Bit;

   --  System Control Register
   type CTRL_Register is record
      --  VBUSEN Active Polarity
      VBUSENAP       : CTRL_VBUSENAP_Field := 16#0#;
      --  unspecified
      Reserved_1_2   : Interfaces.EFM32.UInt2 := 16#0#;
      --  PHY Power
      SELFPOWERED    : CTRL_SELFPOWERED_Field := 16#0#;
      --  Low Energy Mode Oscillator Control
      LEMOSCCTRL     : CTRL_LEMOSCCTRL_Field := CTRL_LEMOSCCTRL_Field_Reset;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Low Energy Mode USB PHY Control
      LEMPHYCTRL     : CTRL_LEMPHYCTRL_Field := 16#0#;
      --  unspecified
      Reserved_8_8   : Interfaces.EFM32.Bit := 16#0#;
      --  Low Energy Mode on Bus Idle Enable
      LEMIDLEEN      : CTRL_LEMIDLEEN_Field := 16#0#;
      --  unspecified
      Reserved_10_11 : Interfaces.EFM32.UInt2 := 16#0#;
      --  ID Pull-up Enable
      IDCDEN         : CTRL_IDCDEN_Field := 16#0#;
      --  unspecified
      Reserved_13_24 : Interfaces.EFM32.UInt12 := 16#0#;
      --  OTG CLKC Disable
      OTGCLKCDIS     : CTRL_OTGCLKCDIS_Field := 16#0#;
      --  OTG ID Input Disable
      OTGIDINDIS     : CTRL_OTGIDINDIS_Field := 16#0#;
      --  OTG Control Signals to PHY Disable
      OTGPHYCTRLDIS  : CTRL_OTGPHYCTRLDIS_Field := 16#0#;
      --  Data Contact Detection Enable
      DCDEN          : CTRL_DCDEN_Field := Interfaces.EFM32.USB.DISABLED;
      --  Primary Detection Enable
      PDEN           : CTRL_PDEN_Field := 16#0#;
      --  Secondary Detection Enable
      SDEN           : CTRL_SDEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      VBUSENAP       at 0 range 0 .. 0;
      Reserved_1_2   at 0 range 1 .. 2;
      SELFPOWERED    at 0 range 3 .. 3;
      LEMOSCCTRL     at 0 range 4 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      LEMPHYCTRL     at 0 range 7 .. 7;
      Reserved_8_8   at 0 range 8 .. 8;
      LEMIDLEEN      at 0 range 9 .. 9;
      Reserved_10_11 at 0 range 10 .. 11;
      IDCDEN         at 0 range 12 .. 12;
      Reserved_13_24 at 0 range 13 .. 24;
      OTGCLKCDIS     at 0 range 25 .. 25;
      OTGIDINDIS     at 0 range 26 .. 26;
      OTGPHYCTRLDIS  at 0 range 27 .. 27;
      DCDEN          at 0 range 28 .. 29;
      PDEN           at 0 range 30 .. 30;
      SDEN           at 0 range 31 .. 31;
   end record;

   subtype STATUS_VBUSDETH_Field is Interfaces.EFM32.Bit;
   subtype STATUS_LEMACTIVE_Field is Interfaces.EFM32.Bit;
   subtype STATUS_DCDTO_Field is Interfaces.EFM32.Bit;
   subtype STATUS_SDP_Field is Interfaces.EFM32.Bit;
   subtype STATUS_CDP_Field is Interfaces.EFM32.Bit;
   subtype STATUS_DCP_Field is Interfaces.EFM32.Bit;
   subtype STATUS_ACAFS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_ACALS_Field is Interfaces.EFM32.Bit;
   subtype STATUS_USBCDBUSY_Field is Interfaces.EFM32.Bit;

   --  System Status Register
   type STATUS_Register is record
      --  Read-only. VBUS Detect High
      VBUSDETH       : STATUS_VBUSDETH_Field;
      --  unspecified
      Reserved_1_1   : Interfaces.EFM32.Bit;
      --  Read-only. Low Energy Mode Active
      LEMACTIVE      : STATUS_LEMACTIVE_Field;
      --  unspecified
      Reserved_3_7   : Interfaces.EFM32.UInt5;
      --  Read-only. Data Contact Detection Timeout
      DCDTO          : STATUS_DCDTO_Field;
      --  Read-only. Standard Downstream Port Detected
      SDP            : STATUS_SDP_Field;
      --  Read-only. Charging Downstream Port Detected
      CDP            : STATUS_CDP_Field;
      --  Read-only. Dedicated Charging Port Detected
      DCP            : STATUS_DCP_Field;
      --  Read-only. ACA Full Speed TypeB Device
      ACAFS          : STATUS_ACAFS_Field;
      --  Read-only. ACA Low Speed TypeB Device
      ACALS          : STATUS_ACALS_Field;
      --  unspecified
      Reserved_14_14 : Interfaces.EFM32.Bit;
      --  Read-only. USB Charger Detect Busy
      USBCDBUSY      : STATUS_USBCDBUSY_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      VBUSDETH       at 0 range 0 .. 0;
      Reserved_1_1   at 0 range 1 .. 1;
      LEMACTIVE      at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      DCDTO          at 0 range 8 .. 8;
      SDP            at 0 range 9 .. 9;
      CDP            at 0 range 10 .. 10;
      DCP            at 0 range 11 .. 11;
      ACAFS          at 0 range 12 .. 12;
      ACALS          at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      USBCDBUSY      at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype IF_VBUSDETH_Field is Interfaces.EFM32.Bit;
   subtype IF_VBUSDETL_Field is Interfaces.EFM32.Bit;
   subtype IF_ERR_Field is Interfaces.EFM32.Bit;
   subtype IF_DCD_Field is Interfaces.EFM32.Bit;
   subtype IF_PD_Field is Interfaces.EFM32.Bit;
   subtype IF_SD_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. VBUS Detect High Interrupt Flag
      VBUSDETH       : IF_VBUSDETH_Field;
      --  Read-only. VBUS Detect Low Interrupt Flag
      VBUSDETL       : IF_VBUSDETL_Field;
      --  unspecified
      Reserved_2_7   : Interfaces.EFM32.UInt6;
      --  Read-only. Detection Error Interrupt Flag
      ERR            : IF_ERR_Field;
      --  Read-only. Data Contact Detection Complete Interrupt Flag
      DCD            : IF_DCD_Field;
      --  Read-only. Primary Detection Complete Interrupt Flag
      PD             : IF_PD_Field;
      --  Read-only. Secondary Detection Complete Interrupt Flag
      SD             : IF_SD_Field;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      VBUSDETH       at 0 range 0 .. 0;
      VBUSDETL       at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      ERR            at 0 range 8 .. 8;
      DCD            at 0 range 9 .. 9;
      PD             at 0 range 10 .. 10;
      SD             at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype IFS_VBUSDETH_Field is Interfaces.EFM32.Bit;
   subtype IFS_VBUSDETL_Field is Interfaces.EFM32.Bit;
   subtype IFS_ERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_DCD_Field is Interfaces.EFM32.Bit;
   subtype IFS_PD_Field is Interfaces.EFM32.Bit;
   subtype IFS_SD_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set VBUSDETH Interrupt Flag
      VBUSDETH       : IFS_VBUSDETH_Field := 16#0#;
      --  Write-only. Set VBUSDETL Interrupt Flag
      VBUSDETL       : IFS_VBUSDETL_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.EFM32.UInt6 := 16#0#;
      --  Write-only. Set ERR Interrupt Flag
      ERR            : IFS_ERR_Field := 16#0#;
      --  Write-only. Set DCD Interrupt Flag
      DCD            : IFS_DCD_Field := 16#0#;
      --  Write-only. Set PD Interrupt Flag
      PD             : IFS_PD_Field := 16#0#;
      --  Write-only. Set SD Interrupt Flag
      SD             : IFS_SD_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      VBUSDETH       at 0 range 0 .. 0;
      VBUSDETL       at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      ERR            at 0 range 8 .. 8;
      DCD            at 0 range 9 .. 9;
      PD             at 0 range 10 .. 10;
      SD             at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype IFC_VBUSDETH_Field is Interfaces.EFM32.Bit;
   subtype IFC_VBUSDETL_Field is Interfaces.EFM32.Bit;
   subtype IFC_ERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_DCD_Field is Interfaces.EFM32.Bit;
   subtype IFC_PD_Field is Interfaces.EFM32.Bit;
   subtype IFC_SD_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear VBUSDETH Interrupt Flag
      VBUSDETH       : IFC_VBUSDETH_Field := 16#0#;
      --  Write-only. Clear VBUSDETL Interrupt Flag
      VBUSDETL       : IFC_VBUSDETL_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.EFM32.UInt6 := 16#0#;
      --  Write-only. Clear ERR Interrupt Flag
      ERR            : IFC_ERR_Field := 16#0#;
      --  Write-only. Clear DCD Interrupt Flag
      DCD            : IFC_DCD_Field := 16#0#;
      --  Write-only. Clear PD Interrupt Flag
      PD             : IFC_PD_Field := 16#0#;
      --  Write-only. Clear SD Interrupt Flag
      SD             : IFC_SD_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      VBUSDETH       at 0 range 0 .. 0;
      VBUSDETL       at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      ERR            at 0 range 8 .. 8;
      DCD            at 0 range 9 .. 9;
      PD             at 0 range 10 .. 10;
      SD             at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype IEN_VBUSDETH_Field is Interfaces.EFM32.Bit;
   subtype IEN_VBUSDETL_Field is Interfaces.EFM32.Bit;
   subtype IEN_ERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_DCD_Field is Interfaces.EFM32.Bit;
   subtype IEN_PD_Field is Interfaces.EFM32.Bit;
   subtype IEN_SD_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  VBUSDETH Interrupt Enable
      VBUSDETH       : IEN_VBUSDETH_Field := 16#0#;
      --  VBUSDETL Interrupt Enable
      VBUSDETL       : IEN_VBUSDETL_Field := 16#0#;
      --  unspecified
      Reserved_2_7   : Interfaces.EFM32.UInt6 := 16#0#;
      --  ERR Interrupt Enable
      ERR            : IEN_ERR_Field := 16#0#;
      --  DCD Interrupt Enable
      DCD            : IEN_DCD_Field := 16#0#;
      --  PD Interrupt Enable
      PD             : IEN_PD_Field := 16#0#;
      --  SD Interrupt Enable
      SD             : IEN_SD_Field := 16#0#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      VBUSDETH       at 0 range 0 .. 0;
      VBUSDETL       at 0 range 1 .. 1;
      Reserved_2_7   at 0 range 2 .. 7;
      ERR            at 0 range 8 .. 8;
      DCD            at 0 range 9 .. 9;
      PD             at 0 range 10 .. 10;
      SD             at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype ROUTE_PHYPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTE_VBUSENPEN_Field is Interfaces.EFM32.Bit;

   --  I/O Routing Register
   type ROUTE_Register is record
      --  USB PHY Pin Enable
      PHYPEN        : ROUTE_PHYPEN_Field := 16#0#;
      --  VBUSEN Pin Enable
      VBUSENPEN     : ROUTE_VBUSENPEN_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTE_Register use record
      PHYPEN        at 0 range 0 .. 0;
      VBUSENPEN     at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype CDCONF_DCDTOCONF_Field is Interfaces.EFM32.UInt10;

   --  Charger Detect Configuration Register
   type CDCONF_Register is record
      --  DCD Timeout (TDCD_TIMEOUT) Configuration
      DCDTOCONF      : CDCONF_DCDTOCONF_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CDCONF_Register use record
      DCDTOCONF      at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype CMD_STARTCD_Field is Interfaces.EFM32.Bit;
   subtype CMD_STOPCD_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Start Charger Detection Enabled
      STARTCD       : CMD_STARTCD_Field := 16#0#;
      --  Write-only. Start Charger Detection in Progress
      STOPCD        : CMD_STOPCD_Field := 16#0#;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      STARTCD       at 0 range 0 .. 0;
      STOPCD        at 0 range 1 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype DATTRIM1_ROUT_Field is Interfaces.EFM32.UInt6;
   subtype DATTRIM1_ENDLYPULLUP_Field is Interfaces.EFM32.Bit;
   subtype DATTRIM1_DLYPULLUPFS_Field is Interfaces.EFM32.UInt2;
   subtype DATTRIM1_VCRSFS_Field is Interfaces.EFM32.UInt2;
   subtype DATTRIM1_TFDMFS_Field is Interfaces.EFM32.UInt2;
   subtype DATTRIM1_TRDMFS_Field is Interfaces.EFM32.UInt2;
   subtype DATTRIM1_TFDPFS_Field is Interfaces.EFM32.UInt2;
   subtype DATTRIM1_TRDPFS_Field is Interfaces.EFM32.UInt2;

   --  Data TRIM 1 Values for USB DP and DM
   type DATTRIM1_Register is record
      --  Trim for DP and DM Output Impedance for Both FS and LS
      ROUT           : DATTRIM1_ROUT_Field := 16#24#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Enables Delay of Pull in TX Mode for Both FS and LS
      ENDLYPULLUP    : DATTRIM1_ENDLYPULLUP_Field := 16#0#;
      --  Trim for Rising Crossover Voltage in FS
      DLYPULLUPFS    : DATTRIM1_DLYPULLUPFS_Field := 16#0#;
      --  Trim for Falling Crossover Voltage in FS
      VCRSFS         : DATTRIM1_VCRSFS_Field := 16#0#;
      --  Trim for DM Fall Time in FS
      TFDMFS         : DATTRIM1_TFDMFS_Field := 16#0#;
      --  Trim for DM Rise Time in FS
      TRDMFS         : DATTRIM1_TRDMFS_Field := 16#0#;
      --  Trim for DP Fall Time in FS
      TFDPFS         : DATTRIM1_TFDPFS_Field := 16#0#;
      --  Trim for DP Rise Time in FS
      TRDPFS         : DATTRIM1_TRDPFS_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DATTRIM1_Register use record
      ROUT           at 0 range 0 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      ENDLYPULLUP    at 0 range 7 .. 7;
      DLYPULLUPFS    at 0 range 8 .. 9;
      VCRSFS         at 0 range 10 .. 11;
      TFDMFS         at 0 range 12 .. 13;
      TRDMFS         at 0 range 14 .. 15;
      TFDPFS         at 0 range 16 .. 17;
      TRDPFS         at 0 range 18 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype LEMCTRL_TIMEBASE_Field is Interfaces.EFM32.UInt10;

   --  USB LEM Control Register
   type LEMCTRL_Register is record
      --  Set the Number of LFC Clk Counts to Form 3ms
      TIMEBASE       : LEMCTRL_TIMEBASE_Field := 16#67#;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for LEMCTRL_Register use record
      TIMEBASE       at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  I/O Location
   type ROUTELOC0_VBUSENPENLOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2)
     with Size => 6;
   for ROUTELOC0_VBUSENPENLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2);

   --  I/O Routing Location Register
   type ROUTELOC0_Register is record
      --  I/O Location
      VBUSENPENLOC  : ROUTELOC0_VBUSENPENLOC_Field :=
                       Interfaces.EFM32.USB.LOC0;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC0_Register use record
      VBUSENPENLOC  at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype GOTGCTL_SESREQSCS_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_SESREQ_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_VBVALIDOVEN_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_VBVALIDOVVAL_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_AVALIDOVEN_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_AVALIDOVVAL_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_BVALIDOVEN_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_BVALIDOVVAL_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_HSTNEGSCS_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_HNPREQ_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_HSTSETHNPEN_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_DEVHNPEN_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_EHEN_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_DBNCEFLTRBYPASS_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_CONIDSTS_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_DBNCTIME_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_ASESVLD_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_BSESVLD_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_OTGVER_Field is Interfaces.EFM32.Bit;
   subtype GOTGCTL_CURMOD_Field is Interfaces.EFM32.Bit;

   --  OTG Control and Status Register
   type GOTGCTL_Register is record
      --  Read-only. Session Request Success
      SESREQSCS       : GOTGCTL_SESREQSCS_Field := 16#0#;
      --  Session Request
      SESREQ          : GOTGCTL_SESREQ_Field := 16#0#;
      --  VBUS Valid Override Enable
      VBVALIDOVEN     : GOTGCTL_VBVALIDOVEN_Field := 16#0#;
      --  VBUS Valid OverrideValue
      VBVALIDOVVAL    : GOTGCTL_VBVALIDOVVAL_Field := 16#0#;
      --  A-Peripheral Session Valid Override Enable
      AVALIDOVEN      : GOTGCTL_AVALIDOVEN_Field := 16#0#;
      --  A-Peripheral Session Valid OverrideValue
      AVALIDOVVAL     : GOTGCTL_AVALIDOVVAL_Field := 16#0#;
      --  B-Peripheral Session Valid Override Enable
      BVALIDOVEN      : GOTGCTL_BVALIDOVEN_Field := 16#0#;
      --  B-Peripheral Session Valid OverrideValue
      BVALIDOVVAL     : GOTGCTL_BVALIDOVVAL_Field := 16#0#;
      --  Read-only. Host Negotiation Success
      HSTNEGSCS       : GOTGCTL_HSTNEGSCS_Field := 16#0#;
      --  HNP Request
      HNPREQ          : GOTGCTL_HNPREQ_Field := 16#0#;
      --  Host Set HNP Enable
      HSTSETHNPEN     : GOTGCTL_HSTSETHNPEN_Field := 16#0#;
      --  Device HNP Enabled
      DEVHNPEN        : GOTGCTL_DEVHNPEN_Field := 16#0#;
      --  Embedded Host Enable
      EHEN            : GOTGCTL_EHEN_Field := 16#0#;
      --  unspecified
      Reserved_13_14  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Debounce Filter Bypass
      DBNCEFLTRBYPASS : GOTGCTL_DBNCEFLTRBYPASS_Field := 16#0#;
      --  Read-only. Connector ID Status
      CONIDSTS        : GOTGCTL_CONIDSTS_Field := 16#1#;
      --  Read-only. Long/Short Debounce Time
      DBNCTIME        : GOTGCTL_DBNCTIME_Field := 16#0#;
      --  Read-only. A-Session Valid
      ASESVLD         : GOTGCTL_ASESVLD_Field := 16#0#;
      --  Read-only. B-Session Valid
      BSESVLD         : GOTGCTL_BSESVLD_Field := 16#0#;
      --  OTG Version
      OTGVER          : GOTGCTL_OTGVER_Field := 16#0#;
      --  Read-only. Current Mode of Operation
      CURMOD          : GOTGCTL_CURMOD_Field := 16#0#;
      --  unspecified
      Reserved_22_31  : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GOTGCTL_Register use record
      SESREQSCS       at 0 range 0 .. 0;
      SESREQ          at 0 range 1 .. 1;
      VBVALIDOVEN     at 0 range 2 .. 2;
      VBVALIDOVVAL    at 0 range 3 .. 3;
      AVALIDOVEN      at 0 range 4 .. 4;
      AVALIDOVVAL     at 0 range 5 .. 5;
      BVALIDOVEN      at 0 range 6 .. 6;
      BVALIDOVVAL     at 0 range 7 .. 7;
      HSTNEGSCS       at 0 range 8 .. 8;
      HNPREQ          at 0 range 9 .. 9;
      HSTSETHNPEN     at 0 range 10 .. 10;
      DEVHNPEN        at 0 range 11 .. 11;
      EHEN            at 0 range 12 .. 12;
      Reserved_13_14  at 0 range 13 .. 14;
      DBNCEFLTRBYPASS at 0 range 15 .. 15;
      CONIDSTS        at 0 range 16 .. 16;
      DBNCTIME        at 0 range 17 .. 17;
      ASESVLD         at 0 range 18 .. 18;
      BSESVLD         at 0 range 19 .. 19;
      OTGVER          at 0 range 20 .. 20;
      CURMOD          at 0 range 21 .. 21;
      Reserved_22_31  at 0 range 22 .. 31;
   end record;

   subtype GOTGINT_SESENDDET_Field is Interfaces.EFM32.Bit;
   subtype GOTGINT_SESREQSUCSTSCHNG_Field is Interfaces.EFM32.Bit;
   subtype GOTGINT_HSTNEGSUCSTSCHNG_Field is Interfaces.EFM32.Bit;
   subtype GOTGINT_HSTNEGDET_Field is Interfaces.EFM32.Bit;
   subtype GOTGINT_ADEVTOUTCHG_Field is Interfaces.EFM32.Bit;
   subtype GOTGINT_DBNCEDONE_Field is Interfaces.EFM32.Bit;

   --  OTG Interrupt Register
   type GOTGINT_Register is record
      --  unspecified
      Reserved_0_1     : Interfaces.EFM32.UInt2 := 16#0#;
      --  Session End Detected
      SESENDDET        : GOTGINT_SESENDDET_Field := 16#0#;
      --  unspecified
      Reserved_3_7     : Interfaces.EFM32.UInt5 := 16#0#;
      --  Session Request Success Status Change
      SESREQSUCSTSCHNG : GOTGINT_SESREQSUCSTSCHNG_Field := 16#0#;
      --  Host Negotiation Success Status Change
      HSTNEGSUCSTSCHNG : GOTGINT_HSTNEGSUCSTSCHNG_Field := 16#0#;
      --  unspecified
      Reserved_10_16   : Interfaces.EFM32.UInt7 := 16#0#;
      --  Host Negotiation Detected
      HSTNEGDET        : GOTGINT_HSTNEGDET_Field := 16#0#;
      --  A-Device Timeout Change
      ADEVTOUTCHG      : GOTGINT_ADEVTOUTCHG_Field := 16#0#;
      --  Debounce Done
      DBNCEDONE        : GOTGINT_DBNCEDONE_Field := 16#0#;
      --  unspecified
      Reserved_20_31   : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GOTGINT_Register use record
      Reserved_0_1     at 0 range 0 .. 1;
      SESENDDET        at 0 range 2 .. 2;
      Reserved_3_7     at 0 range 3 .. 7;
      SESREQSUCSTSCHNG at 0 range 8 .. 8;
      HSTNEGSUCSTSCHNG at 0 range 9 .. 9;
      Reserved_10_16   at 0 range 10 .. 16;
      HSTNEGDET        at 0 range 17 .. 17;
      ADEVTOUTCHG      at 0 range 18 .. 18;
      DBNCEDONE        at 0 range 19 .. 19;
      Reserved_20_31   at 0 range 20 .. 31;
   end record;

   subtype GAHBCFG_GLBLINTRMSK_Field is Interfaces.EFM32.Bit;

   --  Burst Length/Type
   type GAHBCFG_HBSTLEN_Field is
     (--  Single transfer.
      SINGLE,
      --  Incrementing burst of unspecified length.
      INCR,
      --  4-beat incrementing burst.
      INCR4,
      --  8-beat incrementing burst.
      INCR8,
      --  16-beat incrementing burst.
      INCR16)
     with Size => 4;
   for GAHBCFG_HBSTLEN_Field use
     (SINGLE => 0,
      INCR => 1,
      INCR4 => 3,
      INCR8 => 5,
      INCR16 => 7);

   subtype GAHBCFG_DMAEN_Field is Interfaces.EFM32.Bit;
   subtype GAHBCFG_NPTXFEMPLVL_Field is Interfaces.EFM32.Bit;
   subtype GAHBCFG_PTXFEMPLVL_Field is Interfaces.EFM32.Bit;
   subtype GAHBCFG_REMMEMSUPP_Field is Interfaces.EFM32.Bit;
   subtype GAHBCFG_NOTIALLDMAWRIT_Field is Interfaces.EFM32.Bit;
   subtype GAHBCFG_AHBSINGLE_Field is Interfaces.EFM32.Bit;

   --  AHB Configuration Register
   type GAHBCFG_Register is record
      --  Global Interrupt Mask
      GLBLINTRMSK    : GAHBCFG_GLBLINTRMSK_Field := 16#0#;
      --  Burst Length/Type
      HBSTLEN        : GAHBCFG_HBSTLEN_Field := Interfaces.EFM32.USB.SINGLE;
      --  DMA Enable
      DMAEN          : GAHBCFG_DMAEN_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Non-Periodic TxFIFO Empty Level
      NPTXFEMPLVL    : GAHBCFG_NPTXFEMPLVL_Field := 16#0#;
      --  Periodic TxFIFO Empty Level
      PTXFEMPLVL     : GAHBCFG_PTXFEMPLVL_Field := 16#0#;
      --  unspecified
      Reserved_9_20  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Remote Memory Support
      REMMEMSUPP     : GAHBCFG_REMMEMSUPP_Field := 16#0#;
      --  Notify All Dma Write Transactions
      NOTIALLDMAWRIT : GAHBCFG_NOTIALLDMAWRIT_Field := 16#0#;
      --  AHB Single Support
      AHBSINGLE      : GAHBCFG_AHBSINGLE_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GAHBCFG_Register use record
      GLBLINTRMSK    at 0 range 0 .. 0;
      HBSTLEN        at 0 range 1 .. 4;
      DMAEN          at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      NPTXFEMPLVL    at 0 range 7 .. 7;
      PTXFEMPLVL     at 0 range 8 .. 8;
      Reserved_9_20  at 0 range 9 .. 20;
      REMMEMSUPP     at 0 range 21 .. 21;
      NOTIALLDMAWRIT at 0 range 22 .. 22;
      AHBSINGLE      at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype GUSBCFG_TOUTCAL_Field is Interfaces.EFM32.UInt3;
   subtype GUSBCFG_FSINTF_Field is Interfaces.EFM32.Bit;
   subtype GUSBCFG_SRPCAP_Field is Interfaces.EFM32.Bit;
   subtype GUSBCFG_HNPCAP_Field is Interfaces.EFM32.Bit;
   subtype GUSBCFG_USBTRDTIM_Field is Interfaces.EFM32.UInt4;
   subtype GUSBCFG_TERMSELDLPULSE_Field is Interfaces.EFM32.Bit;
   subtype GUSBCFG_TXENDDELAY_Field is Interfaces.EFM32.Bit;
   subtype GUSBCFG_FORCEHSTMODE_Field is Interfaces.EFM32.Bit;
   subtype GUSBCFG_FORCEDEVMODE_Field is Interfaces.EFM32.Bit;
   subtype GUSBCFG_CORRUPTTXPKT_Field is Interfaces.EFM32.Bit;

   --  USB Configuration Register
   type GUSBCFG_Register is record
      --  Timeout Calibration (host and device)
      TOUTCAL        : GUSBCFG_TOUTCAL_Field := 16#0#;
      --  unspecified
      Reserved_3_4   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Full-Speed Serial Interface Select
      FSINTF         : GUSBCFG_FSINTF_Field := 16#0#;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  SRP-Capable
      SRPCAP         : GUSBCFG_SRPCAP_Field := 16#0#;
      --  HNP-Capable
      HNPCAP         : GUSBCFG_HNPCAP_Field := 16#0#;
      --  USB Turnaround Time
      USBTRDTIM      : GUSBCFG_USBTRDTIM_Field := 16#5#;
      --  unspecified
      Reserved_14_21 : Interfaces.EFM32.Byte := 16#0#;
      --  TermSel DLine Pulsing Selection
      TERMSELDLPULSE : GUSBCFG_TERMSELDLPULSE_Field := 16#0#;
      --  unspecified
      Reserved_23_27 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Tx End Delay
      TXENDDELAY     : GUSBCFG_TXENDDELAY_Field := 16#0#;
      --  Force Host Mode
      FORCEHSTMODE   : GUSBCFG_FORCEHSTMODE_Field := 16#0#;
      --  Force Device Mode
      FORCEDEVMODE   : GUSBCFG_FORCEDEVMODE_Field := 16#0#;
      --  Write-only. Corrupt Tx packet (host and device)
      CORRUPTTXPKT   : GUSBCFG_CORRUPTTXPKT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GUSBCFG_Register use record
      TOUTCAL        at 0 range 0 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      FSINTF         at 0 range 5 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      SRPCAP         at 0 range 8 .. 8;
      HNPCAP         at 0 range 9 .. 9;
      USBTRDTIM      at 0 range 10 .. 13;
      Reserved_14_21 at 0 range 14 .. 21;
      TERMSELDLPULSE at 0 range 22 .. 22;
      Reserved_23_27 at 0 range 23 .. 27;
      TXENDDELAY     at 0 range 28 .. 28;
      FORCEHSTMODE   at 0 range 29 .. 29;
      FORCEDEVMODE   at 0 range 30 .. 30;
      CORRUPTTXPKT   at 0 range 31 .. 31;
   end record;

   subtype GRSTCTL_CSFTRST_Field is Interfaces.EFM32.Bit;
   subtype GRSTCTL_PIUFSSFTRST_Field is Interfaces.EFM32.Bit;
   subtype GRSTCTL_FRMCNTRRST_Field is Interfaces.EFM32.Bit;
   subtype GRSTCTL_RXFFLSH_Field is Interfaces.EFM32.Bit;
   subtype GRSTCTL_TXFFLSH_Field is Interfaces.EFM32.Bit;

   --  TxFIFO Number (host and device)
   type GRSTCTL_TXFNUM_Field is
     (--  Host mode: Non-periodic TxFIFO flush. Device: Tx FIFO 0 flush
      F0,
      --  Host mode: Periodic TxFIFO flush. Device: TXFIFO 1 flush.
      F1,
      --  Device mode: TXFIFO 2 flush.
      F2,
      --  Device mode: TXFIFO 3 flush.
      F3,
      --  Device mode: TXFIFO 4 flush.
      F4,
      --  Device mode: TXFIFO 5 flush.
      F5,
      --  Device mode: TXFIFO 6 flush.
      F6,
      --  Flush all the transmit FIFOs in device or host mode.
      FALL)
     with Size => 5;
   for GRSTCTL_TXFNUM_Field use
     (F0 => 0,
      F1 => 1,
      F2 => 2,
      F3 => 3,
      F4 => 4,
      F5 => 5,
      F6 => 6,
      FALL => 16);

   subtype GRSTCTL_DMAREQ_Field is Interfaces.EFM32.Bit;
   subtype GRSTCTL_AHBIDLE_Field is Interfaces.EFM32.Bit;

   --  Reset Register
   type GRSTCTL_Register is record
      --  Core Soft Reset (host and device)
      CSFTRST        : GRSTCTL_CSFTRST_Field := 16#0#;
      --  PIU FS Dedicated Controller Soft Reset
      PIUFSSFTRST    : GRSTCTL_PIUFSSFTRST_Field := 16#0#;
      --  Host Frame Counter Reset
      FRMCNTRRST     : GRSTCTL_FRMCNTRRST_Field := 16#0#;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit := 16#0#;
      --  RxFIFO Flush
      RXFFLSH        : GRSTCTL_RXFFLSH_Field := 16#0#;
      --  TxFIFO Flush
      TXFFLSH        : GRSTCTL_TXFFLSH_Field := 16#0#;
      --  TxFIFO Number (host and device)
      TXFNUM         : GRSTCTL_TXFNUM_Field := Interfaces.EFM32.USB.F0;
      --  unspecified
      Reserved_11_29 : Interfaces.EFM32.UInt19 := 16#0#;
      --  Read-only. DMA Request Signal
      DMAREQ         : GRSTCTL_DMAREQ_Field := 16#0#;
      --  Read-only. AHB Master Idle
      AHBIDLE        : GRSTCTL_AHBIDLE_Field := 16#1#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRSTCTL_Register use record
      CSFTRST        at 0 range 0 .. 0;
      PIUFSSFTRST    at 0 range 1 .. 1;
      FRMCNTRRST     at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RXFFLSH        at 0 range 4 .. 4;
      TXFFLSH        at 0 range 5 .. 5;
      TXFNUM         at 0 range 6 .. 10;
      Reserved_11_29 at 0 range 11 .. 29;
      DMAREQ         at 0 range 30 .. 30;
      AHBIDLE        at 0 range 31 .. 31;
   end record;

   subtype GINTSTS_CURMOD_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_MODEMIS_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_OTGINT_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_SOF_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_RXFLVL_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_NPTXFEMP_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_GINNAKEFF_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_GOUTNAKEFF_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_ERLYSUSP_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_USBSUSP_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_USBRST_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_ENUMDONE_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_ISOOUTDROP_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_EOPF_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_EPMIS_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_IEPINT_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_OEPINT_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_INCOMPISOIN_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_INCOMPLP_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_FETSUSP_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_RESETDET_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_PRTINT_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_HCHINT_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_PTXFEMP_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_CONIDSTSCHNG_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_DISCONNINT_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_SESSREQINT_Field is Interfaces.EFM32.Bit;
   subtype GINTSTS_WKUPINT_Field is Interfaces.EFM32.Bit;

   --  Interrupt Register
   type GINTSTS_Register is record
      --  Read-only. Current Mode of Operation (host and device)
      CURMOD         : GINTSTS_CURMOD_Field := 16#0#;
      --  Mode Mismatch Interrupt (host and device)
      MODEMIS        : GINTSTS_MODEMIS_Field := 16#0#;
      --  Read-only. OTG Interrupt (host and device)
      OTGINT         : GINTSTS_OTGINT_Field := 16#0#;
      --  Start of Frame (host and device)
      SOF            : GINTSTS_SOF_Field := 16#0#;
      --  Read-only. RxFIFO Non-Empty (host and device)
      RXFLVL         : GINTSTS_RXFLVL_Field := 16#0#;
      --  Read-only. Non-Periodic TxFIFO Empty (host only)
      NPTXFEMP       : GINTSTS_NPTXFEMP_Field := 16#1#;
      --  Read-only. Global IN Non-periodic NAK Effective (device only)
      GINNAKEFF      : GINTSTS_GINNAKEFF_Field := 16#0#;
      --  Read-only. Global OUT NAK Effective (device only)
      GOUTNAKEFF     : GINTSTS_GOUTNAKEFF_Field := 16#0#;
      --  unspecified
      Reserved_8_9   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Early Suspend (device only)
      ERLYSUSP       : GINTSTS_ERLYSUSP_Field := 16#0#;
      --  USB Suspend (device only)
      USBSUSP        : GINTSTS_USBSUSP_Field := 16#0#;
      --  USB Reset (device only)
      USBRST         : GINTSTS_USBRST_Field := 16#0#;
      --  Enumeration Done (device only)
      ENUMDONE       : GINTSTS_ENUMDONE_Field := 16#0#;
      --  Isochronous OUT Packet Dropped Interrupt (device only)
      ISOOUTDROP     : GINTSTS_ISOOUTDROP_Field := 16#0#;
      --  End of Periodic Frame Interrupt
      EOPF           : GINTSTS_EOPF_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Endpoint Mismatch Interrupt (device only)
      EPMIS          : GINTSTS_EPMIS_Field := 16#0#;
      --  Read-only. IN Endpoints Interrupt (device only)
      IEPINT         : GINTSTS_IEPINT_Field := 16#0#;
      --  Read-only. OUT Endpoints Interrupt (device only)
      OEPINT         : GINTSTS_OEPINT_Field := 16#0#;
      --  Incomplete Isochronous IN Transfer (device only)
      INCOMPISOIN    : GINTSTS_INCOMPISOIN_Field := 16#0#;
      --  Incomplete Periodic Transfer (device only)
      INCOMPLP       : GINTSTS_INCOMPLP_Field := 16#0#;
      --  Data Fetch Suspended (device only)
      FETSUSP        : GINTSTS_FETSUSP_Field := 16#0#;
      --  Reset detected Interrupt (device only)
      RESETDET       : GINTSTS_RESETDET_Field := 16#0#;
      --  Read-only. Host Port Interrupt (host only)
      PRTINT         : GINTSTS_PRTINT_Field := 16#0#;
      --  Read-only. Host Channels Interrupt (host only)
      HCHINT         : GINTSTS_HCHINT_Field := 16#0#;
      --  Read-only. Periodic TxFIFO Empty (host only)
      PTXFEMP        : GINTSTS_PTXFEMP_Field := 16#1#;
      --  unspecified
      Reserved_27_27 : Interfaces.EFM32.Bit := 16#0#;
      --  Connector ID Status Change (host and device)
      CONIDSTSCHNG   : GINTSTS_CONIDSTSCHNG_Field := 16#1#;
      --  Disconnect Detected Interrupt (host only)
      DISCONNINT     : GINTSTS_DISCONNINT_Field := 16#0#;
      --  Session Request/New Session Detected Interrupt (host and device)
      SESSREQINT     : GINTSTS_SESSREQINT_Field := 16#0#;
      --  Resume/Remote Wakeup Detected Interrupt (host and device)
      WKUPINT        : GINTSTS_WKUPINT_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GINTSTS_Register use record
      CURMOD         at 0 range 0 .. 0;
      MODEMIS        at 0 range 1 .. 1;
      OTGINT         at 0 range 2 .. 2;
      SOF            at 0 range 3 .. 3;
      RXFLVL         at 0 range 4 .. 4;
      NPTXFEMP       at 0 range 5 .. 5;
      GINNAKEFF      at 0 range 6 .. 6;
      GOUTNAKEFF     at 0 range 7 .. 7;
      Reserved_8_9   at 0 range 8 .. 9;
      ERLYSUSP       at 0 range 10 .. 10;
      USBSUSP        at 0 range 11 .. 11;
      USBRST         at 0 range 12 .. 12;
      ENUMDONE       at 0 range 13 .. 13;
      ISOOUTDROP     at 0 range 14 .. 14;
      EOPF           at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      EPMIS          at 0 range 17 .. 17;
      IEPINT         at 0 range 18 .. 18;
      OEPINT         at 0 range 19 .. 19;
      INCOMPISOIN    at 0 range 20 .. 20;
      INCOMPLP       at 0 range 21 .. 21;
      FETSUSP        at 0 range 22 .. 22;
      RESETDET       at 0 range 23 .. 23;
      PRTINT         at 0 range 24 .. 24;
      HCHINT         at 0 range 25 .. 25;
      PTXFEMP        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      CONIDSTSCHNG   at 0 range 28 .. 28;
      DISCONNINT     at 0 range 29 .. 29;
      SESSREQINT     at 0 range 30 .. 30;
      WKUPINT        at 0 range 31 .. 31;
   end record;

   subtype GINTMSK_MODEMISMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_OTGINTMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_SOFMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_RXFLVLMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_NPTXFEMPMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_GINNAKEFFMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_GOUTNAKEFFMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_ERLYSUSPMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_USBSUSPMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_USBRSTMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_ENUMDONEMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_ISOOUTDROPMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_EOPFMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_EPMISMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_IEPINTMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_OEPINTMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_INCOMPISOINMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_INCOMPLPMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_FETSUSPMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_RESETDETMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_PRTINTMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_HCHINTMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_PTXFEMPMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_CONIDSTSCHNGMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_DISCONNINTMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_SESSREQINTMSK_Field is Interfaces.EFM32.Bit;
   subtype GINTMSK_WKUPINTMSK_Field is Interfaces.EFM32.Bit;

   --  Interrupt Mask Register
   type GINTMSK_Register is record
      --  unspecified
      Reserved_0_0    : Interfaces.EFM32.Bit := 16#0#;
      --  Mode Mismatch Interrupt Mask (host and device)
      MODEMISMSK      : GINTMSK_MODEMISMSK_Field := 16#0#;
      --  OTG Interrupt Mask (host and device)
      OTGINTMSK       : GINTMSK_OTGINTMSK_Field := 16#0#;
      --  Start of Frame Mask (host and device)
      SOFMSK          : GINTMSK_SOFMSK_Field := 16#0#;
      --  Receive FIFO Non-Empty Mask (host and device)
      RXFLVLMSK       : GINTMSK_RXFLVLMSK_Field := 16#0#;
      --  Non-Periodic TxFIFO Empty Mask (host only)
      NPTXFEMPMSK     : GINTMSK_NPTXFEMPMSK_Field := 16#0#;
      --  Global Non-periodic IN NAK Effective Mask (device only)
      GINNAKEFFMSK    : GINTMSK_GINNAKEFFMSK_Field := 16#0#;
      --  Global OUT NAK Effective Mask (device only)
      GOUTNAKEFFMSK   : GINTMSK_GOUTNAKEFFMSK_Field := 16#0#;
      --  unspecified
      Reserved_8_9    : Interfaces.EFM32.UInt2 := 16#0#;
      --  Early Suspend Mask (device only)
      ERLYSUSPMSK     : GINTMSK_ERLYSUSPMSK_Field := 16#0#;
      --  USB Suspend Mask (device only)
      USBSUSPMSK      : GINTMSK_USBSUSPMSK_Field := 16#0#;
      --  USB Reset Mask (device only)
      USBRSTMSK       : GINTMSK_USBRSTMSK_Field := 16#0#;
      --  Enumeration Done Mask (device only)
      ENUMDONEMSK     : GINTMSK_ENUMDONEMSK_Field := 16#0#;
      --  Isochronous OUT Packet Dropped Interrupt Mask (device only)
      ISOOUTDROPMSK   : GINTMSK_ISOOUTDROPMSK_Field := 16#0#;
      --  End of Periodic Frame Interrupt Mask (device only)
      EOPFMSK         : GINTMSK_EOPFMSK_Field := 16#0#;
      --  unspecified
      Reserved_16_16  : Interfaces.EFM32.Bit := 16#0#;
      --  Endpoint Mismatch Interrupt Mask (device only)
      EPMISMSK        : GINTMSK_EPMISMSK_Field := 16#0#;
      --  IN Endpoints Interrupt Mask (device only)
      IEPINTMSK       : GINTMSK_IEPINTMSK_Field := 16#0#;
      --  OUT Endpoints Interrupt Mask (device only)
      OEPINTMSK       : GINTMSK_OEPINTMSK_Field := 16#0#;
      --  Incomplete Isochronous IN Transfer Mask (device only)
      INCOMPISOINMSK  : GINTMSK_INCOMPISOINMSK_Field := 16#0#;
      --  Incomplete Periodic Transfer Mask (host only)
      INCOMPLPMSK     : GINTMSK_INCOMPLPMSK_Field := 16#0#;
      --  Data Fetch Suspended Mask (device only)
      FETSUSPMSK      : GINTMSK_FETSUSPMSK_Field := 16#0#;
      --  Reset detected Interrupt Mask (device only)
      RESETDETMSK     : GINTMSK_RESETDETMSK_Field := 16#0#;
      --  Host Port Interrupt Mask (host only)
      PRTINTMSK       : GINTMSK_PRTINTMSK_Field := 16#0#;
      --  Host Channels Interrupt Mask (host only)
      HCHINTMSK       : GINTMSK_HCHINTMSK_Field := 16#0#;
      --  Periodic TxFIFO Empty Mask (host only)
      PTXFEMPMSK      : GINTMSK_PTXFEMPMSK_Field := 16#0#;
      --  unspecified
      Reserved_27_27  : Interfaces.EFM32.Bit := 16#0#;
      --  Connector ID Status Change Mask (host and device)
      CONIDSTSCHNGMSK : GINTMSK_CONIDSTSCHNGMSK_Field := 16#0#;
      --  Disconnect Detected Interrupt Mask (host and device)
      DISCONNINTMSK   : GINTMSK_DISCONNINTMSK_Field := 16#0#;
      --  Session Request/New Session Detected Interrupt Mask (host and device)
      SESSREQINTMSK   : GINTMSK_SESSREQINTMSK_Field := 16#0#;
      --  Resume/Remote Wakeup Detected Interrupt Mask (host and device)
      WKUPINTMSK      : GINTMSK_WKUPINTMSK_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GINTMSK_Register use record
      Reserved_0_0    at 0 range 0 .. 0;
      MODEMISMSK      at 0 range 1 .. 1;
      OTGINTMSK       at 0 range 2 .. 2;
      SOFMSK          at 0 range 3 .. 3;
      RXFLVLMSK       at 0 range 4 .. 4;
      NPTXFEMPMSK     at 0 range 5 .. 5;
      GINNAKEFFMSK    at 0 range 6 .. 6;
      GOUTNAKEFFMSK   at 0 range 7 .. 7;
      Reserved_8_9    at 0 range 8 .. 9;
      ERLYSUSPMSK     at 0 range 10 .. 10;
      USBSUSPMSK      at 0 range 11 .. 11;
      USBRSTMSK       at 0 range 12 .. 12;
      ENUMDONEMSK     at 0 range 13 .. 13;
      ISOOUTDROPMSK   at 0 range 14 .. 14;
      EOPFMSK         at 0 range 15 .. 15;
      Reserved_16_16  at 0 range 16 .. 16;
      EPMISMSK        at 0 range 17 .. 17;
      IEPINTMSK       at 0 range 18 .. 18;
      OEPINTMSK       at 0 range 19 .. 19;
      INCOMPISOINMSK  at 0 range 20 .. 20;
      INCOMPLPMSK     at 0 range 21 .. 21;
      FETSUSPMSK      at 0 range 22 .. 22;
      RESETDETMSK     at 0 range 23 .. 23;
      PRTINTMSK       at 0 range 24 .. 24;
      HCHINTMSK       at 0 range 25 .. 25;
      PTXFEMPMSK      at 0 range 26 .. 26;
      Reserved_27_27  at 0 range 27 .. 27;
      CONIDSTSCHNGMSK at 0 range 28 .. 28;
      DISCONNINTMSK   at 0 range 29 .. 29;
      SESSREQINTMSK   at 0 range 30 .. 30;
      WKUPINTMSK      at 0 range 31 .. 31;
   end record;

   subtype GRXSTSR_CHNUM_Field is Interfaces.EFM32.UInt4;
   subtype GRXSTSR_BCNT_Field is Interfaces.EFM32.UInt11;

   --  Data PID
   type GRXSTSR_DPID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA1 PID.
      DATA1,
      --  DATA2 PID.
      DATA2,
      --  MDATA PID.
      MDATA)
     with Size => 2;
   for GRXSTSR_DPID_Field use
     (DATA0 => 0,
      DATA1 => 1,
      DATA2 => 2,
      MDATA => 3);

   --  Packet Status
   type GRXSTSR_PKTSTS_Field is
     (--  Device mode: Global OUT NAK (triggers an interrupt).
      GOUTNAK,
      --  Host mode: IN data packet received. Device mode: OUT data packet received.
      PKTRCV,
      --  Host mode: IN transfer completed (triggers an interrupt). Device mode: OUT
--  transfer completed (triggers an interrupt).
      XFERCOMPL,
      --  Device mode: SETUP transaction completed (triggers an interrupt).
      SETUPCOMPL,
      --  Host mode: Data toggle error (triggers an interrupt).
      TGLERR,
      --  Device mode: SETUP data packet received.
      SETUPRCV,
      --  Host mode: Channel halted (triggers an interrupt).
      CHLT)
     with Size => 4;
   for GRXSTSR_PKTSTS_Field use
     (GOUTNAK => 1,
      PKTRCV => 2,
      XFERCOMPL => 3,
      SETUPCOMPL => 4,
      TGLERR => 5,
      SETUPRCV => 6,
      CHLT => 7);

   subtype GRXSTSR_FN_Field is Interfaces.EFM32.UInt4;

   --  Receive Status Debug Read Register
   type GRXSTSR_Register is record
      --  Read-only. Channel Number
      CHNUM          : GRXSTSR_CHNUM_Field;
      --  Read-only. Byte Count
      BCNT           : GRXSTSR_BCNT_Field;
      --  Read-only. Data PID
      DPID           : GRXSTSR_DPID_Field;
      --  Read-only. Packet Status
      PKTSTS         : GRXSTSR_PKTSTS_Field;
      --  Read-only. Frame Number
      FN             : GRXSTSR_FN_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.EFM32.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRXSTSR_Register use record
      CHNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      FN             at 0 range 21 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype GRXSTSP_CHNUM_Field is Interfaces.EFM32.UInt4;
   subtype GRXSTSP_BCNT_Field is Interfaces.EFM32.UInt11;

   --  Data PID (host or device)
   type GRXSTSP_DPID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA1 PID.
      DATA1,
      --  DATA2 PID.
      DATA2,
      --  MDATA PID.
      MDATA)
     with Size => 2;
   for GRXSTSP_DPID_Field use
     (DATA0 => 0,
      DATA1 => 1,
      DATA2 => 2,
      MDATA => 3);

   --  Packet Status (host or device)
   type GRXSTSP_PKTSTS_Field is
     (--  Device mode: Global OUT NAK (triggers an interrupt).
      GOUTNAK,
      --  Host mode: IN data packet received. Device mode: OUT data packet received.
      PKTRCV,
      --  Host mode: IN transfer completed (triggers an interrupt). Device mode: OUT
--  transfer completed (triggers an interrupt).
      XFERCOMPL,
      --  Device mode: SETUP transaction completed (triggers an interrupt).
      SETUPCOMPL,
      --  Host mode: Data toggle error (triggers an interrupt).
      TGLERR,
      --  Device mode: SETUP data packet received.
      SETUPRCV,
      --  Host mode: Channel halted (triggers an interrupt).
      CHLT)
     with Size => 4;
   for GRXSTSP_PKTSTS_Field use
     (GOUTNAK => 1,
      PKTRCV => 2,
      XFERCOMPL => 3,
      SETUPCOMPL => 4,
      TGLERR => 5,
      SETUPRCV => 6,
      CHLT => 7);

   subtype GRXSTSP_FN_Field is Interfaces.EFM32.UInt4;

   --  Receive Status Read /Pop Register
   type GRXSTSP_Register is record
      --  Read-only. Channel Number
      CHNUM          : GRXSTSP_CHNUM_Field;
      --  Read-only. Byte Count
      BCNT           : GRXSTSP_BCNT_Field;
      --  Read-only. Data PID (host or device)
      DPID           : GRXSTSP_DPID_Field;
      --  Read-only. Packet Status (host or device)
      PKTSTS         : GRXSTSP_PKTSTS_Field;
      --  Read-only. Frame Number
      FN             : GRXSTSP_FN_Field;
      --  unspecified
      Reserved_25_31 : Interfaces.EFM32.UInt7;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRXSTSP_Register use record
      CHNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      FN             at 0 range 21 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype GRXFSIZ_RXFDEP_Field is Interfaces.EFM32.UInt10;

   --  Receive FIFO Size Register
   type GRXFSIZ_Register is record
      --  RxFIFO Depth
      RXFDEP         : GRXFSIZ_RXFDEP_Field := 16#200#;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GRXFSIZ_Register use record
      RXFDEP         at 0 range 0 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype GNPTXFSIZ_NPTXFSTADDR_Field is Interfaces.EFM32.UInt16;
   subtype GNPTXFSIZ_NPTXFINEPTXF0DEP_Field is Interfaces.EFM32.UInt16;

   --  Non-periodic Transmit FIFO Size Register
   type GNPTXFSIZ_Register is record
      --  Non-periodic Transmit RAM Start Address
      NPTXFSTADDR      : GNPTXFSIZ_NPTXFSTADDR_Field := 16#200#;
      --  Non-periodic TxFIFO Depth (host only) / IN Endpoint TxFIFO 0 Depth
      --  (device only)
      NPTXFINEPTXF0DEP : GNPTXFSIZ_NPTXFINEPTXF0DEP_Field := 16#200#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GNPTXFSIZ_Register use record
      NPTXFSTADDR      at 0 range 0 .. 15;
      NPTXFINEPTXF0DEP at 0 range 16 .. 31;
   end record;

   subtype GNPTXSTS_NPTXFSPCAVAIL_Field is Interfaces.EFM32.UInt16;
   subtype GNPTXSTS_NPTXQSPCAVAIL_Field is Interfaces.EFM32.Byte;
   subtype GNPTXSTS_NPTXQTOP_Field is Interfaces.EFM32.UInt7;

   --  Non-periodic Transmit FIFO/Queue Status Register
   type GNPTXSTS_Register is record
      --  Read-only. Non-periodic TxFIFO Space Avail
      NPTXFSPCAVAIL  : GNPTXSTS_NPTXFSPCAVAIL_Field;
      --  Read-only. Non-periodic Transmit Request Queue Space Available
      NPTXQSPCAVAIL  : GNPTXSTS_NPTXQSPCAVAIL_Field;
      --  Read-only. Top of the Non-periodic Transmit Request Queue
      NPTXQTOP       : GNPTXSTS_NPTXQTOP_Field;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GNPTXSTS_Register use record
      NPTXFSPCAVAIL  at 0 range 0 .. 15;
      NPTXQSPCAVAIL  at 0 range 16 .. 23;
      NPTXQTOP       at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype GDFIFOCFG_GDFIFOCFG_Field is Interfaces.EFM32.UInt16;
   subtype GDFIFOCFG_EPINFOBASEADDR_Field is Interfaces.EFM32.UInt16;

   --  Global DFIFO Configuration Register
   type GDFIFOCFG_Register is record
      GDFIFOCFG      : GDFIFOCFG_GDFIFOCFG_Field := 16#200#;
      EPINFOBASEADDR : GDFIFOCFG_EPINFOBASEADDR_Field := 16#1F2#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for GDFIFOCFG_Register use record
      GDFIFOCFG      at 0 range 0 .. 15;
      EPINFOBASEADDR at 0 range 16 .. 31;
   end record;

   subtype HPTXFSIZ_PTXFSTADDR_Field is Interfaces.EFM32.UInt11;
   subtype HPTXFSIZ_PTXFSIZE_Field is Interfaces.EFM32.UInt10;

   --  Host Periodic Transmit FIFO Size Register
   type HPTXFSIZ_Register is record
      --  Host Periodic TxFIFO Start Address
      PTXFSTADDR     : HPTXFSIZ_PTXFSTADDR_Field := 16#400#;
      --  unspecified
      Reserved_11_15 : Interfaces.EFM32.UInt5 := 16#0#;
      --  Host Periodic TxFIFO Depth
      PTXFSIZE       : HPTXFSIZ_PTXFSIZE_Field := 16#200#;
      --  unspecified
      Reserved_26_31 : Interfaces.EFM32.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPTXFSIZ_Register use record
      PTXFSTADDR     at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      PTXFSIZE       at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DIEPTXF_INEPNTXFSTADDR_Field is Interfaces.EFM32.UInt11;
   subtype DIEPTXF_INEPNTXFDEP_Field is Interfaces.EFM32.UInt10;

   --  Device IN Endpoint Transmit FIFO Size Register 1
   type DIEPTXF_Register is record
      --  IN Endpoint FIFOn Transmit RAM Start Address
      INEPNTXFSTADDR : DIEPTXF_INEPNTXFSTADDR_Field := 16#400#;
      --  unspecified
      Reserved_11_15 : Interfaces.EFM32.UInt5 := 16#0#;
      --  IN Endpoint TxFIFO Depth
      INEPNTXFDEP    : DIEPTXF_INEPNTXFDEP_Field := 16#200#;
      --  unspecified
      Reserved_26_31 : Interfaces.EFM32.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTXF_Register use record
      INEPNTXFSTADDR at 0 range 0 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      INEPNTXFDEP    at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype DIEPTXF_INEPNTXFSTADDR_Field_1 is Interfaces.EFM32.UInt12;

   --  Device IN Endpoint Transmit FIFO Size Register 3
   type DIEPTXF_Register_1 is record
      --  IN Endpoint FIFOn Transmit RAM Start Address
      INEPNTXFSTADDR : DIEPTXF_INEPNTXFSTADDR_Field_1 := 16#800#;
      --  unspecified
      Reserved_12_15 : Interfaces.EFM32.UInt4 := 16#0#;
      --  IN Endpoint TxFIFO Depth
      INEPNTXFDEP    : DIEPTXF_INEPNTXFDEP_Field := 16#200#;
      --  unspecified
      Reserved_26_31 : Interfaces.EFM32.UInt6 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPTXF_Register_1 use record
      INEPNTXFSTADDR at 0 range 0 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      INEPNTXFDEP    at 0 range 16 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   --  FS/LS PHY Clock Select
   type HCFG_FSLSPCLKSEL_Field is
     (--  Reset value for the field
      HCFG_FSLSPCLKSEL_Field_Reset,
      --  Internal PHY clock is running at 48 MHz (undivided).
      DIV1,
      --  Internal PHY clock is running at 6 MHz (48 MHz divided by 8).
      DIV8)
     with Size => 2;
   for HCFG_FSLSPCLKSEL_Field use
     (HCFG_FSLSPCLKSEL_Field_Reset => 0,
      DIV1 => 1,
      DIV8 => 2);

   subtype HCFG_FSLSSUPP_Field is Interfaces.EFM32.Bit;
   subtype HCFG_ENA32KHZS_Field is Interfaces.EFM32.Bit;
   subtype HCFG_RESVALID_Field is Interfaces.EFM32.Byte;
   subtype HCFG_MODECHTIMEN_Field is Interfaces.EFM32.Bit;

   --  Host Configuration Register
   type HCFG_Register is record
      --  FS/LS PHY Clock Select
      FSLSPCLKSEL    : HCFG_FSLSPCLKSEL_Field := HCFG_FSLSPCLKSEL_Field_Reset;
      --  FS- and LS-Only Support
      FSLSSUPP       : HCFG_FSLSSUPP_Field := 16#0#;
      --  unspecified
      Reserved_3_6   : Interfaces.EFM32.UInt4 := 16#0#;
      --  Enable 32 kHz Suspend Mode
      ENA32KHZS      : HCFG_ENA32KHZS_Field := 16#0#;
      --  Resume Validation Period
      RESVALID       : HCFG_RESVALID_Field := 16#2#;
      --  unspecified
      Reserved_16_30 : Interfaces.EFM32.UInt15 := 16#0#;
      --  Mode Change Time
      MODECHTIMEN    : HCFG_MODECHTIMEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HCFG_Register use record
      FSLSPCLKSEL    at 0 range 0 .. 1;
      FSLSSUPP       at 0 range 2 .. 2;
      Reserved_3_6   at 0 range 3 .. 6;
      ENA32KHZS      at 0 range 7 .. 7;
      RESVALID       at 0 range 8 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      MODECHTIMEN    at 0 range 31 .. 31;
   end record;

   subtype HFIR_FRINT_Field is Interfaces.EFM32.UInt16;
   subtype HFIR_HFIRRLDCTRL_Field is Interfaces.EFM32.Bit;

   --  Host Frame Interval Register
   type HFIR_Register is record
      --  Frame Interval
      FRINT          : HFIR_FRINT_Field := 16#EA60#;
      --  Reload Control
      HFIRRLDCTRL    : HFIR_HFIRRLDCTRL_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFIR_Register use record
      FRINT          at 0 range 0 .. 15;
      HFIRRLDCTRL    at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype HFNUM_FRNUM_Field is Interfaces.EFM32.UInt16;
   subtype HFNUM_FRREM_Field is Interfaces.EFM32.UInt16;

   --  Host Frame Number/Frame Time Remaining Register
   type HFNUM_Register is record
      --  Read-only. Frame Number
      FRNUM : HFNUM_FRNUM_Field;
      --  Read-only. Frame Time Remaining
      FRREM : HFNUM_FRREM_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HFNUM_Register use record
      FRNUM at 0 range 0 .. 15;
      FRREM at 0 range 16 .. 31;
   end record;

   subtype HPTXSTS_PTXFSPCAVAIL_Field is Interfaces.EFM32.UInt16;
   subtype HPTXSTS_PTXQSPCAVAIL_Field is Interfaces.EFM32.Byte;
   subtype HPTXSTS_PTXQTOP_Field is Interfaces.EFM32.Byte;

   --  Host Periodic Transmit FIFO/Queue Status Register
   type HPTXSTS_Register is record
      --  Read-only. Periodic Transmit Data FIFO Space Available
      PTXFSPCAVAIL : HPTXSTS_PTXFSPCAVAIL_Field;
      --  Read-only. Periodic Transmit Request Queue Space Available
      PTXQSPCAVAIL : HPTXSTS_PTXQSPCAVAIL_Field;
      --  Read-only. Top of the Periodic Transmit Request Queue
      PTXQTOP      : HPTXSTS_PTXQTOP_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPTXSTS_Register use record
      PTXFSPCAVAIL at 0 range 0 .. 15;
      PTXQSPCAVAIL at 0 range 16 .. 23;
      PTXQTOP      at 0 range 24 .. 31;
   end record;

   subtype HAINT_HAINT_Field is Interfaces.EFM32.UInt14;

   --  Host All Channels Interrupt Register
   type HAINT_Register is record
      --  Read-only. Channel Interrupt for channel 0 - 13.
      HAINT          : HAINT_HAINT_Field;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HAINT_Register use record
      HAINT          at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype HAINTMSK_HAINTMSK_Field is Interfaces.EFM32.UInt14;

   --  Host All Channels Interrupt Mask Register
   type HAINTMSK_Register is record
      --  Channel Interrupt Mask for channel 0 - 13
      HAINTMSK       : HAINTMSK_HAINTMSK_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HAINTMSK_Register use record
      HAINTMSK       at 0 range 0 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype HPRT_PRTCONNSTS_Field is Interfaces.EFM32.Bit;
   subtype HPRT_PRTCONNDET_Field is Interfaces.EFM32.Bit;
   subtype HPRT_PRTENA_Field is Interfaces.EFM32.Bit;
   subtype HPRT_PRTENCHNG_Field is Interfaces.EFM32.Bit;
   subtype HPRT_PRTOVRCURRACT_Field is Interfaces.EFM32.Bit;
   subtype HPRT_PRTOVRCURRCHNG_Field is Interfaces.EFM32.Bit;
   subtype HPRT_PRTRES_Field is Interfaces.EFM32.Bit;
   subtype HPRT_PRTSUSP_Field is Interfaces.EFM32.Bit;
   subtype HPRT_PRTRST_Field is Interfaces.EFM32.Bit;
   subtype HPRT_PRTLNSTS_Field is Interfaces.EFM32.UInt2;
   subtype HPRT_PRTPWR_Field is Interfaces.EFM32.Bit;

   --  Port Test Control
   type HPRT_PRTTSTCTL_Field is
     (--  Test mode disabled.
      DISABLE,
      --  Test_J mode.
      J,
      --  Test_K mode.
      K,
      --  Test_SE0_NAK mode.
      SE0NAK,
      --  Test_Packet mode.
      PACKET,
      --  Test_Force_Enable.
      FORCE)
     with Size => 4;
   for HPRT_PRTTSTCTL_Field use
     (DISABLE => 0,
      J => 1,
      K => 2,
      SE0NAK => 3,
      PACKET => 4,
      FORCE => 5);

   --  Port Speed
   type HPRT_PRTSPD_Field is
     (--  Reset value for the field
      HPRT_PRTSPD_Field_Reset,
      --  Full speed.
      FS,
      --  Low speed.
      LS)
     with Size => 2;
   for HPRT_PRTSPD_Field use
     (HPRT_PRTSPD_Field_Reset => 0,
      FS => 1,
      LS => 2);

   --  Host Port Control and Status Register
   type HPRT_Register is record
      --  Read-only. Port Connect Status
      PRTCONNSTS     : HPRT_PRTCONNSTS_Field := 16#0#;
      --  Port Connect Detected
      PRTCONNDET     : HPRT_PRTCONNDET_Field := 16#0#;
      --  Port Enable
      PRTENA         : HPRT_PRTENA_Field := 16#0#;
      --  Port Enable/Disable Change
      PRTENCHNG      : HPRT_PRTENCHNG_Field := 16#0#;
      --  Read-only. Port Overcurrent Active
      PRTOVRCURRACT  : HPRT_PRTOVRCURRACT_Field := 16#0#;
      --  Port Overcurrent Change
      PRTOVRCURRCHNG : HPRT_PRTOVRCURRCHNG_Field := 16#0#;
      --  Port Resume
      PRTRES         : HPRT_PRTRES_Field := 16#0#;
      --  Port Suspend
      PRTSUSP        : HPRT_PRTSUSP_Field := 16#0#;
      --  Port Reset
      PRTRST         : HPRT_PRTRST_Field := 16#0#;
      --  unspecified
      Reserved_9_9   : Interfaces.EFM32.Bit := 16#0#;
      --  Read-only. Port Line Status
      PRTLNSTS       : HPRT_PRTLNSTS_Field := 16#0#;
      --  Port Power
      PRTPWR         : HPRT_PRTPWR_Field := 16#0#;
      --  Port Test Control
      PRTTSTCTL      : HPRT_PRTTSTCTL_Field := Interfaces.EFM32.USB.DISABLE;
      --  Read-only. Port Speed
      PRTSPD         : HPRT_PRTSPD_Field := HPRT_PRTSPD_Field_Reset;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HPRT_Register use record
      PRTCONNSTS     at 0 range 0 .. 0;
      PRTCONNDET     at 0 range 1 .. 1;
      PRTENA         at 0 range 2 .. 2;
      PRTENCHNG      at 0 range 3 .. 3;
      PRTOVRCURRACT  at 0 range 4 .. 4;
      PRTOVRCURRCHNG at 0 range 5 .. 5;
      PRTRES         at 0 range 6 .. 6;
      PRTSUSP        at 0 range 7 .. 7;
      PRTRST         at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      PRTLNSTS       at 0 range 10 .. 11;
      PRTPWR         at 0 range 12 .. 12;
      PRTTSTCTL      at 0 range 13 .. 16;
      PRTSPD         at 0 range 17 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype HC0_CHAR_MPS_Field is Interfaces.EFM32.UInt11;
   subtype HC0_CHAR_EPNUM_Field is Interfaces.EFM32.UInt4;
   subtype HC0_CHAR_EPDIR_Field is Interfaces.EFM32.Bit;
   subtype HC0_CHAR_LSPDDEV_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type HC0_CHAR_EPTYPE_Field is
     (--  Control endpoint.
      CONTROL,
      --  Isochronous endpoint.
      ISO,
      --  Bulk endpoint.
      BULK,
      --  Interrupt endpoint.
      INT)
     with Size => 2;
   for HC0_CHAR_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype HC0_CHAR_MC_Field is Interfaces.EFM32.UInt2;
   subtype HC0_CHAR_DEVADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC0_CHAR_ODDFRM_Field is Interfaces.EFM32.Bit;
   subtype HC0_CHAR_CHDIS_Field is Interfaces.EFM32.Bit;
   subtype HC0_CHAR_CHENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Characteristics Register
   type HC0_CHAR_Register is record
      --  Maximum Packet Size
      MPS            : HC0_CHAR_MPS_Field := 16#0#;
      --  Endpoint Number
      EPNUM          : HC0_CHAR_EPNUM_Field := 16#0#;
      --  Endpoint Direction
      EPDIR          : HC0_CHAR_EPDIR_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Low-Speed Device
      LSPDDEV        : HC0_CHAR_LSPDDEV_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : HC0_CHAR_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Multi Count (MC) / Error Count
      MC             : HC0_CHAR_MC_Field := 16#0#;
      --  Device Address
      DEVADDR        : HC0_CHAR_DEVADDR_Field := 16#0#;
      --  Odd Frame
      ODDFRM         : HC0_CHAR_ODDFRM_Field := 16#0#;
      --  Channel Disable
      CHDIS          : HC0_CHAR_CHDIS_Field := 16#0#;
      --  Channel Enable
      CHENA          : HC0_CHAR_CHENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC0_CHAR_Register use record
      MPS            at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSPDDEV        at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      MC             at 0 range 20 .. 21;
      DEVADDR        at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype HC0_SPLT_PRTADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC0_SPLT_HUBADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC0_SPLT_XACTPOS_Field is Interfaces.EFM32.UInt2;
   subtype HC0_SPLT_COMPSPLT_Field is Interfaces.EFM32.Bit;
   subtype HC0_SPLT_SPLTENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Split Control Register
   type HC0_SPLT_Register is record
      --  Port Address
      PRTADDR        : HC0_SPLT_PRTADDR_Field := 16#0#;
      --  Hub Address
      HUBADDR        : HC0_SPLT_HUBADDR_Field := 16#0#;
      --  Transaction Position
      XACTPOS        : HC0_SPLT_XACTPOS_Field := 16#0#;
      --  Do Complete Split
      COMPSPLT       : HC0_SPLT_COMPSPLT_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.EFM32.UInt14 := 16#0#;
      --  Split Enable
      SPLTENA        : HC0_SPLT_SPLTENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC0_SPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPSPLT       at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLTENA        at 0 range 31 .. 31;
   end record;

   subtype HC0_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype HC0_INT_CHHLTD_Field is Interfaces.EFM32.Bit;
   subtype HC0_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype HC0_INT_STALL_Field is Interfaces.EFM32.Bit;
   subtype HC0_INT_NAK_Field is Interfaces.EFM32.Bit;
   subtype HC0_INT_ACK_Field is Interfaces.EFM32.Bit;
   subtype HC0_INT_XACTERR_Field is Interfaces.EFM32.Bit;
   subtype HC0_INT_BBLERR_Field is Interfaces.EFM32.Bit;
   subtype HC0_INT_FRMOVRUN_Field is Interfaces.EFM32.Bit;
   subtype HC0_INT_DATATGLERR_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Register
   type HC0_INT_Register is record
      --  Transfer Completed
      XFERCOMPL      : HC0_INT_XFERCOMPL_Field := 16#0#;
      --  Channel Halted
      CHHLTD         : HC0_INT_CHHLTD_Field := 16#0#;
      --  AHB Error
      AHBERR         : HC0_INT_AHBERR_Field := 16#0#;
      --  STALL Response Received Interrupt
      STALL          : HC0_INT_STALL_Field := 16#0#;
      --  NAK Response Received Interrupt
      NAK            : HC0_INT_NAK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt
      ACK            : HC0_INT_ACK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error
      XACTERR        : HC0_INT_XACTERR_Field := 16#0#;
      --  Babble Error
      BBLERR         : HC0_INT_BBLERR_Field := 16#0#;
      --  Frame Overrun
      FRMOVRUN       : HC0_INT_FRMOVRUN_Field := 16#0#;
      --  Data Toggle Error
      DATATGLERR     : HC0_INT_DATATGLERR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC0_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      CHHLTD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERR        at 0 range 7 .. 7;
      BBLERR         at 0 range 8 .. 8;
      FRMOVRUN       at 0 range 9 .. 9;
      DATATGLERR     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC0_INTMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC0_INTMSK_CHHLTDMSK_Field is Interfaces.EFM32.Bit;
   subtype HC0_INTMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC0_INTMSK_STALLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC0_INTMSK_NAKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC0_INTMSK_ACKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC0_INTMSK_XACTERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC0_INTMSK_BBLERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC0_INTMSK_FRMOVRUNMSK_Field is Interfaces.EFM32.Bit;
   subtype HC0_INTMSK_DATATGLERRMSK_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Mask Register
   type HC0_INTMSK_Register is record
      --  Transfer Completed Mask
      XFERCOMPLMSK   : HC0_INTMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Channel Halted Mask
      CHHLTDMSK      : HC0_INTMSK_CHHLTDMSK_Field := 16#0#;
      --  AHB Error Mask
      AHBERRMSK      : HC0_INTMSK_AHBERRMSK_Field := 16#0#;
      --  STALL Response Received Interrupt Mask
      STALLMSK       : HC0_INTMSK_STALLMSK_Field := 16#0#;
      --  NAK Response Received Interrupt Mask
      NAKMSK         : HC0_INTMSK_NAKMSK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt Mask
      ACKMSK         : HC0_INTMSK_ACKMSK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error Mask
      XACTERRMSK     : HC0_INTMSK_XACTERRMSK_Field := 16#0#;
      --  Babble Error Mask
      BBLERRMSK      : HC0_INTMSK_BBLERRMSK_Field := 16#0#;
      --  Frame Overrun Mask
      FRMOVRUNMSK    : HC0_INTMSK_FRMOVRUNMSK_Field := 16#0#;
      --  Data Toggle Error Mask
      DATATGLERRMSK  : HC0_INTMSK_DATATGLERRMSK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC0_INTMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      CHHLTDMSK      at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      STALLMSK       at 0 range 3 .. 3;
      NAKMSK         at 0 range 4 .. 4;
      ACKMSK         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERRMSK     at 0 range 7 .. 7;
      BBLERRMSK      at 0 range 8 .. 8;
      FRMOVRUNMSK    at 0 range 9 .. 9;
      DATATGLERRMSK  at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC0_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype HC0_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  The Application Programs This Field With the Type of
   type HC0_TSIZ_PID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID.
      DATA2,
      --  DATA1 PID.
      DATA1,
      --  MDATA (non-control) / SETUP (control) PID.
      MDATA)
     with Size => 2;
   for HC0_TSIZ_PID_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Host Channel x Transfer Size Register
   type HC0_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : HC0_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : HC0_TSIZ_PKTCNT_Field := 16#0#;
      --  The Application Programs This Field With the Type of
      PID            : HC0_TSIZ_PID_Field := Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC0_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      PID            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HC1_CHAR_MPS_Field is Interfaces.EFM32.UInt11;
   subtype HC1_CHAR_EPNUM_Field is Interfaces.EFM32.UInt4;
   subtype HC1_CHAR_EPDIR_Field is Interfaces.EFM32.Bit;
   subtype HC1_CHAR_LSPDDEV_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type HC1_CHAR_EPTYPE_Field is
     (--  Control endpoint.
      CONTROL,
      --  Isochronous endpoint.
      ISO,
      --  Bulk endpoint.
      BULK,
      --  Interrupt endpoint.
      INT)
     with Size => 2;
   for HC1_CHAR_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype HC1_CHAR_MC_Field is Interfaces.EFM32.UInt2;
   subtype HC1_CHAR_DEVADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC1_CHAR_ODDFRM_Field is Interfaces.EFM32.Bit;
   subtype HC1_CHAR_CHDIS_Field is Interfaces.EFM32.Bit;
   subtype HC1_CHAR_CHENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Characteristics Register
   type HC1_CHAR_Register is record
      --  Maximum Packet Size
      MPS            : HC1_CHAR_MPS_Field := 16#0#;
      --  Endpoint Number
      EPNUM          : HC1_CHAR_EPNUM_Field := 16#0#;
      --  Endpoint Direction
      EPDIR          : HC1_CHAR_EPDIR_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Low-Speed Device
      LSPDDEV        : HC1_CHAR_LSPDDEV_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : HC1_CHAR_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Multi Count (MC) / Error Count
      MC             : HC1_CHAR_MC_Field := 16#0#;
      --  Device Address
      DEVADDR        : HC1_CHAR_DEVADDR_Field := 16#0#;
      --  Odd Frame
      ODDFRM         : HC1_CHAR_ODDFRM_Field := 16#0#;
      --  Channel Disable
      CHDIS          : HC1_CHAR_CHDIS_Field := 16#0#;
      --  Channel Enable
      CHENA          : HC1_CHAR_CHENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC1_CHAR_Register use record
      MPS            at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSPDDEV        at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      MC             at 0 range 20 .. 21;
      DEVADDR        at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype HC1_SPLT_PRTADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC1_SPLT_HUBADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC1_SPLT_XACTPOS_Field is Interfaces.EFM32.UInt2;
   subtype HC1_SPLT_COMPSPLT_Field is Interfaces.EFM32.Bit;
   subtype HC1_SPLT_SPLTENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Split Control Register
   type HC1_SPLT_Register is record
      --  Port Address
      PRTADDR        : HC1_SPLT_PRTADDR_Field := 16#0#;
      --  Hub Address
      HUBADDR        : HC1_SPLT_HUBADDR_Field := 16#0#;
      --  Transaction Position
      XACTPOS        : HC1_SPLT_XACTPOS_Field := 16#0#;
      --  Do Complete Split
      COMPSPLT       : HC1_SPLT_COMPSPLT_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.EFM32.UInt14 := 16#0#;
      --  Split Enable
      SPLTENA        : HC1_SPLT_SPLTENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC1_SPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPSPLT       at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLTENA        at 0 range 31 .. 31;
   end record;

   subtype HC1_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype HC1_INT_CHHLTD_Field is Interfaces.EFM32.Bit;
   subtype HC1_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype HC1_INT_STALL_Field is Interfaces.EFM32.Bit;
   subtype HC1_INT_NAK_Field is Interfaces.EFM32.Bit;
   subtype HC1_INT_ACK_Field is Interfaces.EFM32.Bit;
   subtype HC1_INT_XACTERR_Field is Interfaces.EFM32.Bit;
   subtype HC1_INT_BBLERR_Field is Interfaces.EFM32.Bit;
   subtype HC1_INT_FRMOVRUN_Field is Interfaces.EFM32.Bit;
   subtype HC1_INT_DATATGLERR_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Register
   type HC1_INT_Register is record
      --  Transfer Completed
      XFERCOMPL      : HC1_INT_XFERCOMPL_Field := 16#0#;
      --  Channel Halted
      CHHLTD         : HC1_INT_CHHLTD_Field := 16#0#;
      --  AHB Error
      AHBERR         : HC1_INT_AHBERR_Field := 16#0#;
      --  STALL Response Received Interrupt
      STALL          : HC1_INT_STALL_Field := 16#0#;
      --  NAK Response Received Interrupt
      NAK            : HC1_INT_NAK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt
      ACK            : HC1_INT_ACK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error
      XACTERR        : HC1_INT_XACTERR_Field := 16#0#;
      --  Babble Error
      BBLERR         : HC1_INT_BBLERR_Field := 16#0#;
      --  Frame Overrun
      FRMOVRUN       : HC1_INT_FRMOVRUN_Field := 16#0#;
      --  Data Toggle Error
      DATATGLERR     : HC1_INT_DATATGLERR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC1_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      CHHLTD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERR        at 0 range 7 .. 7;
      BBLERR         at 0 range 8 .. 8;
      FRMOVRUN       at 0 range 9 .. 9;
      DATATGLERR     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC1_INTMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC1_INTMSK_CHHLTDMSK_Field is Interfaces.EFM32.Bit;
   subtype HC1_INTMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC1_INTMSK_STALLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC1_INTMSK_NAKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC1_INTMSK_ACKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC1_INTMSK_XACTERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC1_INTMSK_BBLERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC1_INTMSK_FRMOVRUNMSK_Field is Interfaces.EFM32.Bit;
   subtype HC1_INTMSK_DATATGLERRMSK_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Mask Register
   type HC1_INTMSK_Register is record
      --  Transfer Completed Mask
      XFERCOMPLMSK   : HC1_INTMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Channel Halted Mask
      CHHLTDMSK      : HC1_INTMSK_CHHLTDMSK_Field := 16#0#;
      --  AHB Error Mask
      AHBERRMSK      : HC1_INTMSK_AHBERRMSK_Field := 16#0#;
      --  STALL Response Received Interrupt Mask
      STALLMSK       : HC1_INTMSK_STALLMSK_Field := 16#0#;
      --  NAK Response Received Interrupt Mask
      NAKMSK         : HC1_INTMSK_NAKMSK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt Mask
      ACKMSK         : HC1_INTMSK_ACKMSK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error Mask
      XACTERRMSK     : HC1_INTMSK_XACTERRMSK_Field := 16#0#;
      --  Babble Error Mask
      BBLERRMSK      : HC1_INTMSK_BBLERRMSK_Field := 16#0#;
      --  Frame Overrun Mask
      FRMOVRUNMSK    : HC1_INTMSK_FRMOVRUNMSK_Field := 16#0#;
      --  Data Toggle Error Mask
      DATATGLERRMSK  : HC1_INTMSK_DATATGLERRMSK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC1_INTMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      CHHLTDMSK      at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      STALLMSK       at 0 range 3 .. 3;
      NAKMSK         at 0 range 4 .. 4;
      ACKMSK         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERRMSK     at 0 range 7 .. 7;
      BBLERRMSK      at 0 range 8 .. 8;
      FRMOVRUNMSK    at 0 range 9 .. 9;
      DATATGLERRMSK  at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC1_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype HC1_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  The Application Programs This Field With the Type of
   type HC1_TSIZ_PID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID.
      DATA2,
      --  DATA1 PID.
      DATA1,
      --  MDATA (non-control) / SETUP (control) PID.
      MDATA)
     with Size => 2;
   for HC1_TSIZ_PID_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Host Channel x Transfer Size Register
   type HC1_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : HC1_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : HC1_TSIZ_PKTCNT_Field := 16#0#;
      --  The Application Programs This Field With the Type of
      PID            : HC1_TSIZ_PID_Field := Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC1_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      PID            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HC2_CHAR_MPS_Field is Interfaces.EFM32.UInt11;
   subtype HC2_CHAR_EPNUM_Field is Interfaces.EFM32.UInt4;
   subtype HC2_CHAR_EPDIR_Field is Interfaces.EFM32.Bit;
   subtype HC2_CHAR_LSPDDEV_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type HC2_CHAR_EPTYPE_Field is
     (--  Control endpoint.
      CONTROL,
      --  Isochronous endpoint.
      ISO,
      --  Bulk endpoint.
      BULK,
      --  Interrupt endpoint.
      INT)
     with Size => 2;
   for HC2_CHAR_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype HC2_CHAR_MC_Field is Interfaces.EFM32.UInt2;
   subtype HC2_CHAR_DEVADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC2_CHAR_ODDFRM_Field is Interfaces.EFM32.Bit;
   subtype HC2_CHAR_CHDIS_Field is Interfaces.EFM32.Bit;
   subtype HC2_CHAR_CHENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Characteristics Register
   type HC2_CHAR_Register is record
      --  Maximum Packet Size
      MPS            : HC2_CHAR_MPS_Field := 16#0#;
      --  Endpoint Number
      EPNUM          : HC2_CHAR_EPNUM_Field := 16#0#;
      --  Endpoint Direction
      EPDIR          : HC2_CHAR_EPDIR_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Low-Speed Device
      LSPDDEV        : HC2_CHAR_LSPDDEV_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : HC2_CHAR_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Multi Count (MC) / Error Count
      MC             : HC2_CHAR_MC_Field := 16#0#;
      --  Device Address
      DEVADDR        : HC2_CHAR_DEVADDR_Field := 16#0#;
      --  Odd Frame
      ODDFRM         : HC2_CHAR_ODDFRM_Field := 16#0#;
      --  Channel Disable
      CHDIS          : HC2_CHAR_CHDIS_Field := 16#0#;
      --  Channel Enable
      CHENA          : HC2_CHAR_CHENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC2_CHAR_Register use record
      MPS            at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSPDDEV        at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      MC             at 0 range 20 .. 21;
      DEVADDR        at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype HC2_SPLT_PRTADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC2_SPLT_HUBADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC2_SPLT_XACTPOS_Field is Interfaces.EFM32.UInt2;
   subtype HC2_SPLT_COMPSPLT_Field is Interfaces.EFM32.Bit;
   subtype HC2_SPLT_SPLTENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Split Control Register
   type HC2_SPLT_Register is record
      --  Port Address
      PRTADDR        : HC2_SPLT_PRTADDR_Field := 16#0#;
      --  Hub Address
      HUBADDR        : HC2_SPLT_HUBADDR_Field := 16#0#;
      --  Transaction Position
      XACTPOS        : HC2_SPLT_XACTPOS_Field := 16#0#;
      --  Do Complete Split
      COMPSPLT       : HC2_SPLT_COMPSPLT_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.EFM32.UInt14 := 16#0#;
      --  Split Enable
      SPLTENA        : HC2_SPLT_SPLTENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC2_SPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPSPLT       at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLTENA        at 0 range 31 .. 31;
   end record;

   subtype HC2_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype HC2_INT_CHHLTD_Field is Interfaces.EFM32.Bit;
   subtype HC2_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype HC2_INT_STALL_Field is Interfaces.EFM32.Bit;
   subtype HC2_INT_NAK_Field is Interfaces.EFM32.Bit;
   subtype HC2_INT_ACK_Field is Interfaces.EFM32.Bit;
   subtype HC2_INT_XACTERR_Field is Interfaces.EFM32.Bit;
   subtype HC2_INT_BBLERR_Field is Interfaces.EFM32.Bit;
   subtype HC2_INT_FRMOVRUN_Field is Interfaces.EFM32.Bit;
   subtype HC2_INT_DATATGLERR_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Register
   type HC2_INT_Register is record
      --  Transfer Completed
      XFERCOMPL      : HC2_INT_XFERCOMPL_Field := 16#0#;
      --  Channel Halted
      CHHLTD         : HC2_INT_CHHLTD_Field := 16#0#;
      --  AHB Error
      AHBERR         : HC2_INT_AHBERR_Field := 16#0#;
      --  STALL Response Received Interrupt
      STALL          : HC2_INT_STALL_Field := 16#0#;
      --  NAK Response Received Interrupt
      NAK            : HC2_INT_NAK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt
      ACK            : HC2_INT_ACK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error
      XACTERR        : HC2_INT_XACTERR_Field := 16#0#;
      --  Babble Error
      BBLERR         : HC2_INT_BBLERR_Field := 16#0#;
      --  Frame Overrun
      FRMOVRUN       : HC2_INT_FRMOVRUN_Field := 16#0#;
      --  Data Toggle Error
      DATATGLERR     : HC2_INT_DATATGLERR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC2_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      CHHLTD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERR        at 0 range 7 .. 7;
      BBLERR         at 0 range 8 .. 8;
      FRMOVRUN       at 0 range 9 .. 9;
      DATATGLERR     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC2_INTMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC2_INTMSK_CHHLTDMSK_Field is Interfaces.EFM32.Bit;
   subtype HC2_INTMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC2_INTMSK_STALLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC2_INTMSK_NAKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC2_INTMSK_ACKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC2_INTMSK_XACTERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC2_INTMSK_BBLERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC2_INTMSK_FRMOVRUNMSK_Field is Interfaces.EFM32.Bit;
   subtype HC2_INTMSK_DATATGLERRMSK_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Mask Register
   type HC2_INTMSK_Register is record
      --  Transfer Completed Mask
      XFERCOMPLMSK   : HC2_INTMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Channel Halted Mask
      CHHLTDMSK      : HC2_INTMSK_CHHLTDMSK_Field := 16#0#;
      --  AHB Error Mask
      AHBERRMSK      : HC2_INTMSK_AHBERRMSK_Field := 16#0#;
      --  STALL Response Received Interrupt Mask
      STALLMSK       : HC2_INTMSK_STALLMSK_Field := 16#0#;
      --  NAK Response Received Interrupt Mask
      NAKMSK         : HC2_INTMSK_NAKMSK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt Mask
      ACKMSK         : HC2_INTMSK_ACKMSK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error Mask
      XACTERRMSK     : HC2_INTMSK_XACTERRMSK_Field := 16#0#;
      --  Babble Error Mask
      BBLERRMSK      : HC2_INTMSK_BBLERRMSK_Field := 16#0#;
      --  Frame Overrun Mask
      FRMOVRUNMSK    : HC2_INTMSK_FRMOVRUNMSK_Field := 16#0#;
      --  Data Toggle Error Mask
      DATATGLERRMSK  : HC2_INTMSK_DATATGLERRMSK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC2_INTMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      CHHLTDMSK      at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      STALLMSK       at 0 range 3 .. 3;
      NAKMSK         at 0 range 4 .. 4;
      ACKMSK         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERRMSK     at 0 range 7 .. 7;
      BBLERRMSK      at 0 range 8 .. 8;
      FRMOVRUNMSK    at 0 range 9 .. 9;
      DATATGLERRMSK  at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC2_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype HC2_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  The Application Programs This Field With the Type of
   type HC2_TSIZ_PID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID.
      DATA2,
      --  DATA1 PID.
      DATA1,
      --  MDATA (non-control) / SETUP (control) PID.
      MDATA)
     with Size => 2;
   for HC2_TSIZ_PID_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Host Channel x Transfer Size Register
   type HC2_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : HC2_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : HC2_TSIZ_PKTCNT_Field := 16#0#;
      --  The Application Programs This Field With the Type of
      PID            : HC2_TSIZ_PID_Field := Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC2_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      PID            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HC3_CHAR_MPS_Field is Interfaces.EFM32.UInt11;
   subtype HC3_CHAR_EPNUM_Field is Interfaces.EFM32.UInt4;
   subtype HC3_CHAR_EPDIR_Field is Interfaces.EFM32.Bit;
   subtype HC3_CHAR_LSPDDEV_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type HC3_CHAR_EPTYPE_Field is
     (--  Control endpoint.
      CONTROL,
      --  Isochronous endpoint.
      ISO,
      --  Bulk endpoint.
      BULK,
      --  Interrupt endpoint.
      INT)
     with Size => 2;
   for HC3_CHAR_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype HC3_CHAR_MC_Field is Interfaces.EFM32.UInt2;
   subtype HC3_CHAR_DEVADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC3_CHAR_ODDFRM_Field is Interfaces.EFM32.Bit;
   subtype HC3_CHAR_CHDIS_Field is Interfaces.EFM32.Bit;
   subtype HC3_CHAR_CHENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Characteristics Register
   type HC3_CHAR_Register is record
      --  Maximum Packet Size
      MPS            : HC3_CHAR_MPS_Field := 16#0#;
      --  Endpoint Number
      EPNUM          : HC3_CHAR_EPNUM_Field := 16#0#;
      --  Endpoint Direction
      EPDIR          : HC3_CHAR_EPDIR_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Low-Speed Device
      LSPDDEV        : HC3_CHAR_LSPDDEV_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : HC3_CHAR_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Multi Count (MC) / Error Count
      MC             : HC3_CHAR_MC_Field := 16#0#;
      --  Device Address
      DEVADDR        : HC3_CHAR_DEVADDR_Field := 16#0#;
      --  Odd Frame
      ODDFRM         : HC3_CHAR_ODDFRM_Field := 16#0#;
      --  Channel Disable
      CHDIS          : HC3_CHAR_CHDIS_Field := 16#0#;
      --  Channel Enable
      CHENA          : HC3_CHAR_CHENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC3_CHAR_Register use record
      MPS            at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSPDDEV        at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      MC             at 0 range 20 .. 21;
      DEVADDR        at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype HC3_SPLT_PRTADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC3_SPLT_HUBADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC3_SPLT_XACTPOS_Field is Interfaces.EFM32.UInt2;
   subtype HC3_SPLT_COMPSPLT_Field is Interfaces.EFM32.Bit;
   subtype HC3_SPLT_SPLTENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Split Control Register
   type HC3_SPLT_Register is record
      --  Port Address
      PRTADDR        : HC3_SPLT_PRTADDR_Field := 16#0#;
      --  Hub Address
      HUBADDR        : HC3_SPLT_HUBADDR_Field := 16#0#;
      --  Transaction Position
      XACTPOS        : HC3_SPLT_XACTPOS_Field := 16#0#;
      --  Do Complete Split
      COMPSPLT       : HC3_SPLT_COMPSPLT_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.EFM32.UInt14 := 16#0#;
      --  Split Enable
      SPLTENA        : HC3_SPLT_SPLTENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC3_SPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPSPLT       at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLTENA        at 0 range 31 .. 31;
   end record;

   subtype HC3_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype HC3_INT_CHHLTD_Field is Interfaces.EFM32.Bit;
   subtype HC3_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype HC3_INT_STALL_Field is Interfaces.EFM32.Bit;
   subtype HC3_INT_NAK_Field is Interfaces.EFM32.Bit;
   subtype HC3_INT_ACK_Field is Interfaces.EFM32.Bit;
   subtype HC3_INT_XACTERR_Field is Interfaces.EFM32.Bit;
   subtype HC3_INT_BBLERR_Field is Interfaces.EFM32.Bit;
   subtype HC3_INT_FRMOVRUN_Field is Interfaces.EFM32.Bit;
   subtype HC3_INT_DATATGLERR_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Register
   type HC3_INT_Register is record
      --  Transfer Completed
      XFERCOMPL      : HC3_INT_XFERCOMPL_Field := 16#0#;
      --  Channel Halted
      CHHLTD         : HC3_INT_CHHLTD_Field := 16#0#;
      --  AHB Error
      AHBERR         : HC3_INT_AHBERR_Field := 16#0#;
      --  STALL Response Received Interrupt
      STALL          : HC3_INT_STALL_Field := 16#0#;
      --  NAK Response Received Interrupt
      NAK            : HC3_INT_NAK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt
      ACK            : HC3_INT_ACK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error
      XACTERR        : HC3_INT_XACTERR_Field := 16#0#;
      --  Babble Error
      BBLERR         : HC3_INT_BBLERR_Field := 16#0#;
      --  Frame Overrun
      FRMOVRUN       : HC3_INT_FRMOVRUN_Field := 16#0#;
      --  Data Toggle Error
      DATATGLERR     : HC3_INT_DATATGLERR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC3_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      CHHLTD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERR        at 0 range 7 .. 7;
      BBLERR         at 0 range 8 .. 8;
      FRMOVRUN       at 0 range 9 .. 9;
      DATATGLERR     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC3_INTMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC3_INTMSK_CHHLTDMSK_Field is Interfaces.EFM32.Bit;
   subtype HC3_INTMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC3_INTMSK_STALLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC3_INTMSK_NAKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC3_INTMSK_ACKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC3_INTMSK_XACTERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC3_INTMSK_BBLERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC3_INTMSK_FRMOVRUNMSK_Field is Interfaces.EFM32.Bit;
   subtype HC3_INTMSK_DATATGLERRMSK_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Mask Register
   type HC3_INTMSK_Register is record
      --  Transfer Completed Mask
      XFERCOMPLMSK   : HC3_INTMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Channel Halted Mask
      CHHLTDMSK      : HC3_INTMSK_CHHLTDMSK_Field := 16#0#;
      --  AHB Error Mask
      AHBERRMSK      : HC3_INTMSK_AHBERRMSK_Field := 16#0#;
      --  STALL Response Received Interrupt Mask
      STALLMSK       : HC3_INTMSK_STALLMSK_Field := 16#0#;
      --  NAK Response Received Interrupt Mask
      NAKMSK         : HC3_INTMSK_NAKMSK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt Mask
      ACKMSK         : HC3_INTMSK_ACKMSK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error Mask
      XACTERRMSK     : HC3_INTMSK_XACTERRMSK_Field := 16#0#;
      --  Babble Error Mask
      BBLERRMSK      : HC3_INTMSK_BBLERRMSK_Field := 16#0#;
      --  Frame Overrun Mask
      FRMOVRUNMSK    : HC3_INTMSK_FRMOVRUNMSK_Field := 16#0#;
      --  Data Toggle Error Mask
      DATATGLERRMSK  : HC3_INTMSK_DATATGLERRMSK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC3_INTMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      CHHLTDMSK      at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      STALLMSK       at 0 range 3 .. 3;
      NAKMSK         at 0 range 4 .. 4;
      ACKMSK         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERRMSK     at 0 range 7 .. 7;
      BBLERRMSK      at 0 range 8 .. 8;
      FRMOVRUNMSK    at 0 range 9 .. 9;
      DATATGLERRMSK  at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC3_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype HC3_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  The Application Programs This Field With the Type of
   type HC3_TSIZ_PID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID.
      DATA2,
      --  DATA1 PID.
      DATA1,
      --  MDATA (non-control) / SETUP (control) PID.
      MDATA)
     with Size => 2;
   for HC3_TSIZ_PID_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Host Channel x Transfer Size Register
   type HC3_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : HC3_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : HC3_TSIZ_PKTCNT_Field := 16#0#;
      --  The Application Programs This Field With the Type of
      PID            : HC3_TSIZ_PID_Field := Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC3_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      PID            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HC4_CHAR_MPS_Field is Interfaces.EFM32.UInt11;
   subtype HC4_CHAR_EPNUM_Field is Interfaces.EFM32.UInt4;
   subtype HC4_CHAR_EPDIR_Field is Interfaces.EFM32.Bit;
   subtype HC4_CHAR_LSPDDEV_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type HC4_CHAR_EPTYPE_Field is
     (--  Control endpoint.
      CONTROL,
      --  Isochronous endpoint.
      ISO,
      --  Bulk endpoint.
      BULK,
      --  Interrupt endpoint.
      INT)
     with Size => 2;
   for HC4_CHAR_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype HC4_CHAR_MC_Field is Interfaces.EFM32.UInt2;
   subtype HC4_CHAR_DEVADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC4_CHAR_ODDFRM_Field is Interfaces.EFM32.Bit;
   subtype HC4_CHAR_CHDIS_Field is Interfaces.EFM32.Bit;
   subtype HC4_CHAR_CHENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Characteristics Register
   type HC4_CHAR_Register is record
      --  Maximum Packet Size
      MPS            : HC4_CHAR_MPS_Field := 16#0#;
      --  Endpoint Number
      EPNUM          : HC4_CHAR_EPNUM_Field := 16#0#;
      --  Endpoint Direction
      EPDIR          : HC4_CHAR_EPDIR_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Low-Speed Device
      LSPDDEV        : HC4_CHAR_LSPDDEV_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : HC4_CHAR_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Multi Count (MC) / Error Count
      MC             : HC4_CHAR_MC_Field := 16#0#;
      --  Device Address
      DEVADDR        : HC4_CHAR_DEVADDR_Field := 16#0#;
      --  Odd Frame
      ODDFRM         : HC4_CHAR_ODDFRM_Field := 16#0#;
      --  Channel Disable
      CHDIS          : HC4_CHAR_CHDIS_Field := 16#0#;
      --  Channel Enable
      CHENA          : HC4_CHAR_CHENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC4_CHAR_Register use record
      MPS            at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSPDDEV        at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      MC             at 0 range 20 .. 21;
      DEVADDR        at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype HC4_SPLT_PRTADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC4_SPLT_HUBADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC4_SPLT_XACTPOS_Field is Interfaces.EFM32.UInt2;
   subtype HC4_SPLT_COMPSPLT_Field is Interfaces.EFM32.Bit;
   subtype HC4_SPLT_SPLTENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Split Control Register
   type HC4_SPLT_Register is record
      --  Port Address
      PRTADDR        : HC4_SPLT_PRTADDR_Field := 16#0#;
      --  Hub Address
      HUBADDR        : HC4_SPLT_HUBADDR_Field := 16#0#;
      --  Transaction Position
      XACTPOS        : HC4_SPLT_XACTPOS_Field := 16#0#;
      --  Do Complete Split
      COMPSPLT       : HC4_SPLT_COMPSPLT_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.EFM32.UInt14 := 16#0#;
      --  Split Enable
      SPLTENA        : HC4_SPLT_SPLTENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC4_SPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPSPLT       at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLTENA        at 0 range 31 .. 31;
   end record;

   subtype HC4_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype HC4_INT_CHHLTD_Field is Interfaces.EFM32.Bit;
   subtype HC4_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype HC4_INT_STALL_Field is Interfaces.EFM32.Bit;
   subtype HC4_INT_NAK_Field is Interfaces.EFM32.Bit;
   subtype HC4_INT_ACK_Field is Interfaces.EFM32.Bit;
   subtype HC4_INT_XACTERR_Field is Interfaces.EFM32.Bit;
   subtype HC4_INT_BBLERR_Field is Interfaces.EFM32.Bit;
   subtype HC4_INT_FRMOVRUN_Field is Interfaces.EFM32.Bit;
   subtype HC4_INT_DATATGLERR_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Register
   type HC4_INT_Register is record
      --  Transfer Completed
      XFERCOMPL      : HC4_INT_XFERCOMPL_Field := 16#0#;
      --  Channel Halted
      CHHLTD         : HC4_INT_CHHLTD_Field := 16#0#;
      --  AHB Error
      AHBERR         : HC4_INT_AHBERR_Field := 16#0#;
      --  STALL Response Received Interrupt
      STALL          : HC4_INT_STALL_Field := 16#0#;
      --  NAK Response Received Interrupt
      NAK            : HC4_INT_NAK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt
      ACK            : HC4_INT_ACK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error
      XACTERR        : HC4_INT_XACTERR_Field := 16#0#;
      --  Babble Error
      BBLERR         : HC4_INT_BBLERR_Field := 16#0#;
      --  Frame Overrun
      FRMOVRUN       : HC4_INT_FRMOVRUN_Field := 16#0#;
      --  Data Toggle Error
      DATATGLERR     : HC4_INT_DATATGLERR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC4_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      CHHLTD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERR        at 0 range 7 .. 7;
      BBLERR         at 0 range 8 .. 8;
      FRMOVRUN       at 0 range 9 .. 9;
      DATATGLERR     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC4_INTMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC4_INTMSK_CHHLTDMSK_Field is Interfaces.EFM32.Bit;
   subtype HC4_INTMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC4_INTMSK_STALLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC4_INTMSK_NAKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC4_INTMSK_ACKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC4_INTMSK_XACTERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC4_INTMSK_BBLERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC4_INTMSK_FRMOVRUNMSK_Field is Interfaces.EFM32.Bit;
   subtype HC4_INTMSK_DATATGLERRMSK_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Mask Register
   type HC4_INTMSK_Register is record
      --  Transfer Completed Mask
      XFERCOMPLMSK   : HC4_INTMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Channel Halted Mask
      CHHLTDMSK      : HC4_INTMSK_CHHLTDMSK_Field := 16#0#;
      --  AHB Error Mask
      AHBERRMSK      : HC4_INTMSK_AHBERRMSK_Field := 16#0#;
      --  STALL Response Received Interrupt Mask
      STALLMSK       : HC4_INTMSK_STALLMSK_Field := 16#0#;
      --  NAK Response Received Interrupt Mask
      NAKMSK         : HC4_INTMSK_NAKMSK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt Mask
      ACKMSK         : HC4_INTMSK_ACKMSK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error Mask
      XACTERRMSK     : HC4_INTMSK_XACTERRMSK_Field := 16#0#;
      --  Babble Error Mask
      BBLERRMSK      : HC4_INTMSK_BBLERRMSK_Field := 16#0#;
      --  Frame Overrun Mask
      FRMOVRUNMSK    : HC4_INTMSK_FRMOVRUNMSK_Field := 16#0#;
      --  Data Toggle Error Mask
      DATATGLERRMSK  : HC4_INTMSK_DATATGLERRMSK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC4_INTMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      CHHLTDMSK      at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      STALLMSK       at 0 range 3 .. 3;
      NAKMSK         at 0 range 4 .. 4;
      ACKMSK         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERRMSK     at 0 range 7 .. 7;
      BBLERRMSK      at 0 range 8 .. 8;
      FRMOVRUNMSK    at 0 range 9 .. 9;
      DATATGLERRMSK  at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC4_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype HC4_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  The Application Programs This Field With the Type of
   type HC4_TSIZ_PID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID.
      DATA2,
      --  DATA1 PID.
      DATA1,
      --  MDATA (non-control) / SETUP (control) PID.
      MDATA)
     with Size => 2;
   for HC4_TSIZ_PID_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Host Channel x Transfer Size Register
   type HC4_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : HC4_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : HC4_TSIZ_PKTCNT_Field := 16#0#;
      --  The Application Programs This Field With the Type of
      PID            : HC4_TSIZ_PID_Field := Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC4_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      PID            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HC5_CHAR_MPS_Field is Interfaces.EFM32.UInt11;
   subtype HC5_CHAR_EPNUM_Field is Interfaces.EFM32.UInt4;
   subtype HC5_CHAR_EPDIR_Field is Interfaces.EFM32.Bit;
   subtype HC5_CHAR_LSPDDEV_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type HC5_CHAR_EPTYPE_Field is
     (--  Control endpoint.
      CONTROL,
      --  Isochronous endpoint.
      ISO,
      --  Bulk endpoint.
      BULK,
      --  Interrupt endpoint.
      INT)
     with Size => 2;
   for HC5_CHAR_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype HC5_CHAR_MC_Field is Interfaces.EFM32.UInt2;
   subtype HC5_CHAR_DEVADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC5_CHAR_ODDFRM_Field is Interfaces.EFM32.Bit;
   subtype HC5_CHAR_CHDIS_Field is Interfaces.EFM32.Bit;
   subtype HC5_CHAR_CHENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Characteristics Register
   type HC5_CHAR_Register is record
      --  Maximum Packet Size
      MPS            : HC5_CHAR_MPS_Field := 16#0#;
      --  Endpoint Number
      EPNUM          : HC5_CHAR_EPNUM_Field := 16#0#;
      --  Endpoint Direction
      EPDIR          : HC5_CHAR_EPDIR_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Low-Speed Device
      LSPDDEV        : HC5_CHAR_LSPDDEV_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : HC5_CHAR_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Multi Count (MC) / Error Count
      MC             : HC5_CHAR_MC_Field := 16#0#;
      --  Device Address
      DEVADDR        : HC5_CHAR_DEVADDR_Field := 16#0#;
      --  Odd Frame
      ODDFRM         : HC5_CHAR_ODDFRM_Field := 16#0#;
      --  Channel Disable
      CHDIS          : HC5_CHAR_CHDIS_Field := 16#0#;
      --  Channel Enable
      CHENA          : HC5_CHAR_CHENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC5_CHAR_Register use record
      MPS            at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSPDDEV        at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      MC             at 0 range 20 .. 21;
      DEVADDR        at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype HC5_SPLT_PRTADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC5_SPLT_HUBADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC5_SPLT_XACTPOS_Field is Interfaces.EFM32.UInt2;
   subtype HC5_SPLT_COMPSPLT_Field is Interfaces.EFM32.Bit;
   subtype HC5_SPLT_SPLTENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Split Control Register
   type HC5_SPLT_Register is record
      --  Port Address
      PRTADDR        : HC5_SPLT_PRTADDR_Field := 16#0#;
      --  Hub Address
      HUBADDR        : HC5_SPLT_HUBADDR_Field := 16#0#;
      --  Transaction Position
      XACTPOS        : HC5_SPLT_XACTPOS_Field := 16#0#;
      --  Do Complete Split
      COMPSPLT       : HC5_SPLT_COMPSPLT_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.EFM32.UInt14 := 16#0#;
      --  Split Enable
      SPLTENA        : HC5_SPLT_SPLTENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC5_SPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPSPLT       at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLTENA        at 0 range 31 .. 31;
   end record;

   subtype HC5_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype HC5_INT_CHHLTD_Field is Interfaces.EFM32.Bit;
   subtype HC5_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype HC5_INT_STALL_Field is Interfaces.EFM32.Bit;
   subtype HC5_INT_NAK_Field is Interfaces.EFM32.Bit;
   subtype HC5_INT_ACK_Field is Interfaces.EFM32.Bit;
   subtype HC5_INT_XACTERR_Field is Interfaces.EFM32.Bit;
   subtype HC5_INT_BBLERR_Field is Interfaces.EFM32.Bit;
   subtype HC5_INT_FRMOVRUN_Field is Interfaces.EFM32.Bit;
   subtype HC5_INT_DATATGLERR_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Register
   type HC5_INT_Register is record
      --  Transfer Completed
      XFERCOMPL      : HC5_INT_XFERCOMPL_Field := 16#0#;
      --  Channel Halted
      CHHLTD         : HC5_INT_CHHLTD_Field := 16#0#;
      --  AHB Error
      AHBERR         : HC5_INT_AHBERR_Field := 16#0#;
      --  STALL Response Received Interrupt
      STALL          : HC5_INT_STALL_Field := 16#0#;
      --  NAK Response Received Interrupt
      NAK            : HC5_INT_NAK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt
      ACK            : HC5_INT_ACK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error
      XACTERR        : HC5_INT_XACTERR_Field := 16#0#;
      --  Babble Error
      BBLERR         : HC5_INT_BBLERR_Field := 16#0#;
      --  Frame Overrun
      FRMOVRUN       : HC5_INT_FRMOVRUN_Field := 16#0#;
      --  Data Toggle Error
      DATATGLERR     : HC5_INT_DATATGLERR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC5_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      CHHLTD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERR        at 0 range 7 .. 7;
      BBLERR         at 0 range 8 .. 8;
      FRMOVRUN       at 0 range 9 .. 9;
      DATATGLERR     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC5_INTMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC5_INTMSK_CHHLTDMSK_Field is Interfaces.EFM32.Bit;
   subtype HC5_INTMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC5_INTMSK_STALLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC5_INTMSK_NAKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC5_INTMSK_ACKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC5_INTMSK_XACTERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC5_INTMSK_BBLERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC5_INTMSK_FRMOVRUNMSK_Field is Interfaces.EFM32.Bit;
   subtype HC5_INTMSK_DATATGLERRMSK_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Mask Register
   type HC5_INTMSK_Register is record
      --  Transfer Completed Mask
      XFERCOMPLMSK   : HC5_INTMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Channel Halted Mask
      CHHLTDMSK      : HC5_INTMSK_CHHLTDMSK_Field := 16#0#;
      --  AHB Error Mask
      AHBERRMSK      : HC5_INTMSK_AHBERRMSK_Field := 16#0#;
      --  STALL Response Received Interrupt Mask
      STALLMSK       : HC5_INTMSK_STALLMSK_Field := 16#0#;
      --  NAK Response Received Interrupt Mask
      NAKMSK         : HC5_INTMSK_NAKMSK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt Mask
      ACKMSK         : HC5_INTMSK_ACKMSK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error Mask
      XACTERRMSK     : HC5_INTMSK_XACTERRMSK_Field := 16#0#;
      --  Babble Error Mask
      BBLERRMSK      : HC5_INTMSK_BBLERRMSK_Field := 16#0#;
      --  Frame Overrun Mask
      FRMOVRUNMSK    : HC5_INTMSK_FRMOVRUNMSK_Field := 16#0#;
      --  Data Toggle Error Mask
      DATATGLERRMSK  : HC5_INTMSK_DATATGLERRMSK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC5_INTMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      CHHLTDMSK      at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      STALLMSK       at 0 range 3 .. 3;
      NAKMSK         at 0 range 4 .. 4;
      ACKMSK         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERRMSK     at 0 range 7 .. 7;
      BBLERRMSK      at 0 range 8 .. 8;
      FRMOVRUNMSK    at 0 range 9 .. 9;
      DATATGLERRMSK  at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC5_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype HC5_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  The Application Programs This Field With the Type of
   type HC5_TSIZ_PID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID.
      DATA2,
      --  DATA1 PID.
      DATA1,
      --  MDATA (non-control) / SETUP (control) PID.
      MDATA)
     with Size => 2;
   for HC5_TSIZ_PID_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Host Channel x Transfer Size Register
   type HC5_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : HC5_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : HC5_TSIZ_PKTCNT_Field := 16#0#;
      --  The Application Programs This Field With the Type of
      PID            : HC5_TSIZ_PID_Field := Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC5_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      PID            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HC6_CHAR_MPS_Field is Interfaces.EFM32.UInt11;
   subtype HC6_CHAR_EPNUM_Field is Interfaces.EFM32.UInt4;
   subtype HC6_CHAR_EPDIR_Field is Interfaces.EFM32.Bit;
   subtype HC6_CHAR_LSPDDEV_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type HC6_CHAR_EPTYPE_Field is
     (--  Control endpoint.
      CONTROL,
      --  Isochronous endpoint.
      ISO,
      --  Bulk endpoint.
      BULK,
      --  Interrupt endpoint.
      INT)
     with Size => 2;
   for HC6_CHAR_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype HC6_CHAR_MC_Field is Interfaces.EFM32.UInt2;
   subtype HC6_CHAR_DEVADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC6_CHAR_ODDFRM_Field is Interfaces.EFM32.Bit;
   subtype HC6_CHAR_CHDIS_Field is Interfaces.EFM32.Bit;
   subtype HC6_CHAR_CHENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Characteristics Register
   type HC6_CHAR_Register is record
      --  Maximum Packet Size
      MPS            : HC6_CHAR_MPS_Field := 16#0#;
      --  Endpoint Number
      EPNUM          : HC6_CHAR_EPNUM_Field := 16#0#;
      --  Endpoint Direction
      EPDIR          : HC6_CHAR_EPDIR_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Low-Speed Device
      LSPDDEV        : HC6_CHAR_LSPDDEV_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : HC6_CHAR_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Multi Count (MC) / Error Count
      MC             : HC6_CHAR_MC_Field := 16#0#;
      --  Device Address
      DEVADDR        : HC6_CHAR_DEVADDR_Field := 16#0#;
      --  Odd Frame
      ODDFRM         : HC6_CHAR_ODDFRM_Field := 16#0#;
      --  Channel Disable
      CHDIS          : HC6_CHAR_CHDIS_Field := 16#0#;
      --  Channel Enable
      CHENA          : HC6_CHAR_CHENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC6_CHAR_Register use record
      MPS            at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSPDDEV        at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      MC             at 0 range 20 .. 21;
      DEVADDR        at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype HC6_SPLT_PRTADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC6_SPLT_HUBADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC6_SPLT_XACTPOS_Field is Interfaces.EFM32.UInt2;
   subtype HC6_SPLT_COMPSPLT_Field is Interfaces.EFM32.Bit;
   subtype HC6_SPLT_SPLTENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Split Control Register
   type HC6_SPLT_Register is record
      --  Port Address
      PRTADDR        : HC6_SPLT_PRTADDR_Field := 16#0#;
      --  Hub Address
      HUBADDR        : HC6_SPLT_HUBADDR_Field := 16#0#;
      --  Transaction Position
      XACTPOS        : HC6_SPLT_XACTPOS_Field := 16#0#;
      --  Do Complete Split
      COMPSPLT       : HC6_SPLT_COMPSPLT_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.EFM32.UInt14 := 16#0#;
      --  Split Enable
      SPLTENA        : HC6_SPLT_SPLTENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC6_SPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPSPLT       at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLTENA        at 0 range 31 .. 31;
   end record;

   subtype HC6_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype HC6_INT_CHHLTD_Field is Interfaces.EFM32.Bit;
   subtype HC6_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype HC6_INT_STALL_Field is Interfaces.EFM32.Bit;
   subtype HC6_INT_NAK_Field is Interfaces.EFM32.Bit;
   subtype HC6_INT_ACK_Field is Interfaces.EFM32.Bit;
   subtype HC6_INT_XACTERR_Field is Interfaces.EFM32.Bit;
   subtype HC6_INT_BBLERR_Field is Interfaces.EFM32.Bit;
   subtype HC6_INT_FRMOVRUN_Field is Interfaces.EFM32.Bit;
   subtype HC6_INT_DATATGLERR_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Register
   type HC6_INT_Register is record
      --  Transfer Completed
      XFERCOMPL      : HC6_INT_XFERCOMPL_Field := 16#0#;
      --  Channel Halted
      CHHLTD         : HC6_INT_CHHLTD_Field := 16#0#;
      --  AHB Error
      AHBERR         : HC6_INT_AHBERR_Field := 16#0#;
      --  STALL Response Received Interrupt
      STALL          : HC6_INT_STALL_Field := 16#0#;
      --  NAK Response Received Interrupt
      NAK            : HC6_INT_NAK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt
      ACK            : HC6_INT_ACK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error
      XACTERR        : HC6_INT_XACTERR_Field := 16#0#;
      --  Babble Error
      BBLERR         : HC6_INT_BBLERR_Field := 16#0#;
      --  Frame Overrun
      FRMOVRUN       : HC6_INT_FRMOVRUN_Field := 16#0#;
      --  Data Toggle Error
      DATATGLERR     : HC6_INT_DATATGLERR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC6_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      CHHLTD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERR        at 0 range 7 .. 7;
      BBLERR         at 0 range 8 .. 8;
      FRMOVRUN       at 0 range 9 .. 9;
      DATATGLERR     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC6_INTMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC6_INTMSK_CHHLTDMSK_Field is Interfaces.EFM32.Bit;
   subtype HC6_INTMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC6_INTMSK_STALLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC6_INTMSK_NAKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC6_INTMSK_ACKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC6_INTMSK_XACTERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC6_INTMSK_BBLERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC6_INTMSK_FRMOVRUNMSK_Field is Interfaces.EFM32.Bit;
   subtype HC6_INTMSK_DATATGLERRMSK_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Mask Register
   type HC6_INTMSK_Register is record
      --  Transfer Completed Mask
      XFERCOMPLMSK   : HC6_INTMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Channel Halted Mask
      CHHLTDMSK      : HC6_INTMSK_CHHLTDMSK_Field := 16#0#;
      --  AHB Error Mask
      AHBERRMSK      : HC6_INTMSK_AHBERRMSK_Field := 16#0#;
      --  STALL Response Received Interrupt Mask
      STALLMSK       : HC6_INTMSK_STALLMSK_Field := 16#0#;
      --  NAK Response Received Interrupt Mask
      NAKMSK         : HC6_INTMSK_NAKMSK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt Mask
      ACKMSK         : HC6_INTMSK_ACKMSK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error Mask
      XACTERRMSK     : HC6_INTMSK_XACTERRMSK_Field := 16#0#;
      --  Babble Error Mask
      BBLERRMSK      : HC6_INTMSK_BBLERRMSK_Field := 16#0#;
      --  Frame Overrun Mask
      FRMOVRUNMSK    : HC6_INTMSK_FRMOVRUNMSK_Field := 16#0#;
      --  Data Toggle Error Mask
      DATATGLERRMSK  : HC6_INTMSK_DATATGLERRMSK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC6_INTMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      CHHLTDMSK      at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      STALLMSK       at 0 range 3 .. 3;
      NAKMSK         at 0 range 4 .. 4;
      ACKMSK         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERRMSK     at 0 range 7 .. 7;
      BBLERRMSK      at 0 range 8 .. 8;
      FRMOVRUNMSK    at 0 range 9 .. 9;
      DATATGLERRMSK  at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC6_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype HC6_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  The Application Programs This Field With the Type of
   type HC6_TSIZ_PID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID.
      DATA2,
      --  DATA1 PID.
      DATA1,
      --  MDATA (non-control) / SETUP (control) PID.
      MDATA)
     with Size => 2;
   for HC6_TSIZ_PID_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Host Channel x Transfer Size Register
   type HC6_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : HC6_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : HC6_TSIZ_PKTCNT_Field := 16#0#;
      --  The Application Programs This Field With the Type of
      PID            : HC6_TSIZ_PID_Field := Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC6_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      PID            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HC7_CHAR_MPS_Field is Interfaces.EFM32.UInt11;
   subtype HC7_CHAR_EPNUM_Field is Interfaces.EFM32.UInt4;
   subtype HC7_CHAR_EPDIR_Field is Interfaces.EFM32.Bit;
   subtype HC7_CHAR_LSPDDEV_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type HC7_CHAR_EPTYPE_Field is
     (--  Control endpoint.
      CONTROL,
      --  Isochronous endpoint.
      ISO,
      --  Bulk endpoint.
      BULK,
      --  Interrupt endpoint.
      INT)
     with Size => 2;
   for HC7_CHAR_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype HC7_CHAR_MC_Field is Interfaces.EFM32.UInt2;
   subtype HC7_CHAR_DEVADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC7_CHAR_ODDFRM_Field is Interfaces.EFM32.Bit;
   subtype HC7_CHAR_CHDIS_Field is Interfaces.EFM32.Bit;
   subtype HC7_CHAR_CHENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Characteristics Register
   type HC7_CHAR_Register is record
      --  Maximum Packet Size
      MPS            : HC7_CHAR_MPS_Field := 16#0#;
      --  Endpoint Number
      EPNUM          : HC7_CHAR_EPNUM_Field := 16#0#;
      --  Endpoint Direction
      EPDIR          : HC7_CHAR_EPDIR_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Low-Speed Device
      LSPDDEV        : HC7_CHAR_LSPDDEV_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : HC7_CHAR_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Multi Count (MC) / Error Count
      MC             : HC7_CHAR_MC_Field := 16#0#;
      --  Device Address
      DEVADDR        : HC7_CHAR_DEVADDR_Field := 16#0#;
      --  Odd Frame
      ODDFRM         : HC7_CHAR_ODDFRM_Field := 16#0#;
      --  Channel Disable
      CHDIS          : HC7_CHAR_CHDIS_Field := 16#0#;
      --  Channel Enable
      CHENA          : HC7_CHAR_CHENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC7_CHAR_Register use record
      MPS            at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSPDDEV        at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      MC             at 0 range 20 .. 21;
      DEVADDR        at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype HC7_SPLT_PRTADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC7_SPLT_HUBADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC7_SPLT_XACTPOS_Field is Interfaces.EFM32.UInt2;
   subtype HC7_SPLT_COMPSPLT_Field is Interfaces.EFM32.Bit;
   subtype HC7_SPLT_SPLTENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Split Control Register
   type HC7_SPLT_Register is record
      --  Port Address
      PRTADDR        : HC7_SPLT_PRTADDR_Field := 16#0#;
      --  Hub Address
      HUBADDR        : HC7_SPLT_HUBADDR_Field := 16#0#;
      --  Transaction Position
      XACTPOS        : HC7_SPLT_XACTPOS_Field := 16#0#;
      --  Do Complete Split
      COMPSPLT       : HC7_SPLT_COMPSPLT_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.EFM32.UInt14 := 16#0#;
      --  Split Enable
      SPLTENA        : HC7_SPLT_SPLTENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC7_SPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPSPLT       at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLTENA        at 0 range 31 .. 31;
   end record;

   subtype HC7_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype HC7_INT_CHHLTD_Field is Interfaces.EFM32.Bit;
   subtype HC7_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype HC7_INT_STALL_Field is Interfaces.EFM32.Bit;
   subtype HC7_INT_NAK_Field is Interfaces.EFM32.Bit;
   subtype HC7_INT_ACK_Field is Interfaces.EFM32.Bit;
   subtype HC7_INT_XACTERR_Field is Interfaces.EFM32.Bit;
   subtype HC7_INT_BBLERR_Field is Interfaces.EFM32.Bit;
   subtype HC7_INT_FRMOVRUN_Field is Interfaces.EFM32.Bit;
   subtype HC7_INT_DATATGLERR_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Register
   type HC7_INT_Register is record
      --  Transfer Completed
      XFERCOMPL      : HC7_INT_XFERCOMPL_Field := 16#0#;
      --  Channel Halted
      CHHLTD         : HC7_INT_CHHLTD_Field := 16#0#;
      --  AHB Error
      AHBERR         : HC7_INT_AHBERR_Field := 16#0#;
      --  STALL Response Received Interrupt
      STALL          : HC7_INT_STALL_Field := 16#0#;
      --  NAK Response Received Interrupt
      NAK            : HC7_INT_NAK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt
      ACK            : HC7_INT_ACK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error
      XACTERR        : HC7_INT_XACTERR_Field := 16#0#;
      --  Babble Error
      BBLERR         : HC7_INT_BBLERR_Field := 16#0#;
      --  Frame Overrun
      FRMOVRUN       : HC7_INT_FRMOVRUN_Field := 16#0#;
      --  Data Toggle Error
      DATATGLERR     : HC7_INT_DATATGLERR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC7_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      CHHLTD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERR        at 0 range 7 .. 7;
      BBLERR         at 0 range 8 .. 8;
      FRMOVRUN       at 0 range 9 .. 9;
      DATATGLERR     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC7_INTMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC7_INTMSK_CHHLTDMSK_Field is Interfaces.EFM32.Bit;
   subtype HC7_INTMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC7_INTMSK_STALLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC7_INTMSK_NAKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC7_INTMSK_ACKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC7_INTMSK_XACTERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC7_INTMSK_BBLERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC7_INTMSK_FRMOVRUNMSK_Field is Interfaces.EFM32.Bit;
   subtype HC7_INTMSK_DATATGLERRMSK_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Mask Register
   type HC7_INTMSK_Register is record
      --  Transfer Completed Mask
      XFERCOMPLMSK   : HC7_INTMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Channel Halted Mask
      CHHLTDMSK      : HC7_INTMSK_CHHLTDMSK_Field := 16#0#;
      --  AHB Error Mask
      AHBERRMSK      : HC7_INTMSK_AHBERRMSK_Field := 16#0#;
      --  STALL Response Received Interrupt Mask
      STALLMSK       : HC7_INTMSK_STALLMSK_Field := 16#0#;
      --  NAK Response Received Interrupt Mask
      NAKMSK         : HC7_INTMSK_NAKMSK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt Mask
      ACKMSK         : HC7_INTMSK_ACKMSK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error Mask
      XACTERRMSK     : HC7_INTMSK_XACTERRMSK_Field := 16#0#;
      --  Babble Error Mask
      BBLERRMSK      : HC7_INTMSK_BBLERRMSK_Field := 16#0#;
      --  Frame Overrun Mask
      FRMOVRUNMSK    : HC7_INTMSK_FRMOVRUNMSK_Field := 16#0#;
      --  Data Toggle Error Mask
      DATATGLERRMSK  : HC7_INTMSK_DATATGLERRMSK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC7_INTMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      CHHLTDMSK      at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      STALLMSK       at 0 range 3 .. 3;
      NAKMSK         at 0 range 4 .. 4;
      ACKMSK         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERRMSK     at 0 range 7 .. 7;
      BBLERRMSK      at 0 range 8 .. 8;
      FRMOVRUNMSK    at 0 range 9 .. 9;
      DATATGLERRMSK  at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC7_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype HC7_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  The Application Programs This Field With the Type of
   type HC7_TSIZ_PID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID.
      DATA2,
      --  DATA1 PID.
      DATA1,
      --  MDATA (non-control) / SETUP (control) PID.
      MDATA)
     with Size => 2;
   for HC7_TSIZ_PID_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Host Channel x Transfer Size Register
   type HC7_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : HC7_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : HC7_TSIZ_PKTCNT_Field := 16#0#;
      --  The Application Programs This Field With the Type of
      PID            : HC7_TSIZ_PID_Field := Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC7_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      PID            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HC8_CHAR_MPS_Field is Interfaces.EFM32.UInt11;
   subtype HC8_CHAR_EPNUM_Field is Interfaces.EFM32.UInt4;
   subtype HC8_CHAR_EPDIR_Field is Interfaces.EFM32.Bit;
   subtype HC8_CHAR_LSPDDEV_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type HC8_CHAR_EPTYPE_Field is
     (--  Control endpoint.
      CONTROL,
      --  Isochronous endpoint.
      ISO,
      --  Bulk endpoint.
      BULK,
      --  Interrupt endpoint.
      INT)
     with Size => 2;
   for HC8_CHAR_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype HC8_CHAR_MC_Field is Interfaces.EFM32.UInt2;
   subtype HC8_CHAR_DEVADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC8_CHAR_ODDFRM_Field is Interfaces.EFM32.Bit;
   subtype HC8_CHAR_CHDIS_Field is Interfaces.EFM32.Bit;
   subtype HC8_CHAR_CHENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Characteristics Register
   type HC8_CHAR_Register is record
      --  Maximum Packet Size
      MPS            : HC8_CHAR_MPS_Field := 16#0#;
      --  Endpoint Number
      EPNUM          : HC8_CHAR_EPNUM_Field := 16#0#;
      --  Endpoint Direction
      EPDIR          : HC8_CHAR_EPDIR_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Low-Speed Device
      LSPDDEV        : HC8_CHAR_LSPDDEV_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : HC8_CHAR_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Multi Count (MC) / Error Count
      MC             : HC8_CHAR_MC_Field := 16#0#;
      --  Device Address
      DEVADDR        : HC8_CHAR_DEVADDR_Field := 16#0#;
      --  Odd Frame
      ODDFRM         : HC8_CHAR_ODDFRM_Field := 16#0#;
      --  Channel Disable
      CHDIS          : HC8_CHAR_CHDIS_Field := 16#0#;
      --  Channel Enable
      CHENA          : HC8_CHAR_CHENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC8_CHAR_Register use record
      MPS            at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSPDDEV        at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      MC             at 0 range 20 .. 21;
      DEVADDR        at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype HC8_SPLT_PRTADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC8_SPLT_HUBADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC8_SPLT_XACTPOS_Field is Interfaces.EFM32.UInt2;
   subtype HC8_SPLT_COMPSPLT_Field is Interfaces.EFM32.Bit;
   subtype HC8_SPLT_SPLTENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Split Control Register
   type HC8_SPLT_Register is record
      --  Port Address
      PRTADDR        : HC8_SPLT_PRTADDR_Field := 16#0#;
      --  Hub Address
      HUBADDR        : HC8_SPLT_HUBADDR_Field := 16#0#;
      --  Transaction Position
      XACTPOS        : HC8_SPLT_XACTPOS_Field := 16#0#;
      --  Do Complete Split
      COMPSPLT       : HC8_SPLT_COMPSPLT_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.EFM32.UInt14 := 16#0#;
      --  Split Enable
      SPLTENA        : HC8_SPLT_SPLTENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC8_SPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPSPLT       at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLTENA        at 0 range 31 .. 31;
   end record;

   subtype HC8_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype HC8_INT_CHHLTD_Field is Interfaces.EFM32.Bit;
   subtype HC8_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype HC8_INT_STALL_Field is Interfaces.EFM32.Bit;
   subtype HC8_INT_NAK_Field is Interfaces.EFM32.Bit;
   subtype HC8_INT_ACK_Field is Interfaces.EFM32.Bit;
   subtype HC8_INT_XACTERR_Field is Interfaces.EFM32.Bit;
   subtype HC8_INT_BBLERR_Field is Interfaces.EFM32.Bit;
   subtype HC8_INT_FRMOVRUN_Field is Interfaces.EFM32.Bit;
   subtype HC8_INT_DATATGLERR_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Register
   type HC8_INT_Register is record
      --  Transfer Completed
      XFERCOMPL      : HC8_INT_XFERCOMPL_Field := 16#0#;
      --  Channel Halted
      CHHLTD         : HC8_INT_CHHLTD_Field := 16#0#;
      --  AHB Error
      AHBERR         : HC8_INT_AHBERR_Field := 16#0#;
      --  STALL Response Received Interrupt
      STALL          : HC8_INT_STALL_Field := 16#0#;
      --  NAK Response Received Interrupt
      NAK            : HC8_INT_NAK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt
      ACK            : HC8_INT_ACK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error
      XACTERR        : HC8_INT_XACTERR_Field := 16#0#;
      --  Babble Error
      BBLERR         : HC8_INT_BBLERR_Field := 16#0#;
      --  Frame Overrun
      FRMOVRUN       : HC8_INT_FRMOVRUN_Field := 16#0#;
      --  Data Toggle Error
      DATATGLERR     : HC8_INT_DATATGLERR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC8_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      CHHLTD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERR        at 0 range 7 .. 7;
      BBLERR         at 0 range 8 .. 8;
      FRMOVRUN       at 0 range 9 .. 9;
      DATATGLERR     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC8_INTMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC8_INTMSK_CHHLTDMSK_Field is Interfaces.EFM32.Bit;
   subtype HC8_INTMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC8_INTMSK_STALLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC8_INTMSK_NAKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC8_INTMSK_ACKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC8_INTMSK_XACTERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC8_INTMSK_BBLERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC8_INTMSK_FRMOVRUNMSK_Field is Interfaces.EFM32.Bit;
   subtype HC8_INTMSK_DATATGLERRMSK_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Mask Register
   type HC8_INTMSK_Register is record
      --  Transfer Completed Mask
      XFERCOMPLMSK   : HC8_INTMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Channel Halted Mask
      CHHLTDMSK      : HC8_INTMSK_CHHLTDMSK_Field := 16#0#;
      --  AHB Error Mask
      AHBERRMSK      : HC8_INTMSK_AHBERRMSK_Field := 16#0#;
      --  STALL Response Received Interrupt Mask
      STALLMSK       : HC8_INTMSK_STALLMSK_Field := 16#0#;
      --  NAK Response Received Interrupt Mask
      NAKMSK         : HC8_INTMSK_NAKMSK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt Mask
      ACKMSK         : HC8_INTMSK_ACKMSK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error Mask
      XACTERRMSK     : HC8_INTMSK_XACTERRMSK_Field := 16#0#;
      --  Babble Error Mask
      BBLERRMSK      : HC8_INTMSK_BBLERRMSK_Field := 16#0#;
      --  Frame Overrun Mask
      FRMOVRUNMSK    : HC8_INTMSK_FRMOVRUNMSK_Field := 16#0#;
      --  Data Toggle Error Mask
      DATATGLERRMSK  : HC8_INTMSK_DATATGLERRMSK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC8_INTMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      CHHLTDMSK      at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      STALLMSK       at 0 range 3 .. 3;
      NAKMSK         at 0 range 4 .. 4;
      ACKMSK         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERRMSK     at 0 range 7 .. 7;
      BBLERRMSK      at 0 range 8 .. 8;
      FRMOVRUNMSK    at 0 range 9 .. 9;
      DATATGLERRMSK  at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC8_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype HC8_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  The Application Programs This Field With the Type of
   type HC8_TSIZ_PID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID.
      DATA2,
      --  DATA1 PID.
      DATA1,
      --  MDATA (non-control) / SETUP (control) PID.
      MDATA)
     with Size => 2;
   for HC8_TSIZ_PID_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Host Channel x Transfer Size Register
   type HC8_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : HC8_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : HC8_TSIZ_PKTCNT_Field := 16#0#;
      --  The Application Programs This Field With the Type of
      PID            : HC8_TSIZ_PID_Field := Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC8_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      PID            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HC9_CHAR_MPS_Field is Interfaces.EFM32.UInt11;
   subtype HC9_CHAR_EPNUM_Field is Interfaces.EFM32.UInt4;
   subtype HC9_CHAR_EPDIR_Field is Interfaces.EFM32.Bit;
   subtype HC9_CHAR_LSPDDEV_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type HC9_CHAR_EPTYPE_Field is
     (--  Control endpoint.
      CONTROL,
      --  Isochronous endpoint.
      ISO,
      --  Bulk endpoint.
      BULK,
      --  Interrupt endpoint.
      INT)
     with Size => 2;
   for HC9_CHAR_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype HC9_CHAR_MC_Field is Interfaces.EFM32.UInt2;
   subtype HC9_CHAR_DEVADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC9_CHAR_ODDFRM_Field is Interfaces.EFM32.Bit;
   subtype HC9_CHAR_CHDIS_Field is Interfaces.EFM32.Bit;
   subtype HC9_CHAR_CHENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Characteristics Register
   type HC9_CHAR_Register is record
      --  Maximum Packet Size
      MPS            : HC9_CHAR_MPS_Field := 16#0#;
      --  Endpoint Number
      EPNUM          : HC9_CHAR_EPNUM_Field := 16#0#;
      --  Endpoint Direction
      EPDIR          : HC9_CHAR_EPDIR_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Low-Speed Device
      LSPDDEV        : HC9_CHAR_LSPDDEV_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : HC9_CHAR_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Multi Count (MC) / Error Count
      MC             : HC9_CHAR_MC_Field := 16#0#;
      --  Device Address
      DEVADDR        : HC9_CHAR_DEVADDR_Field := 16#0#;
      --  Odd Frame
      ODDFRM         : HC9_CHAR_ODDFRM_Field := 16#0#;
      --  Channel Disable
      CHDIS          : HC9_CHAR_CHDIS_Field := 16#0#;
      --  Channel Enable
      CHENA          : HC9_CHAR_CHENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC9_CHAR_Register use record
      MPS            at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSPDDEV        at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      MC             at 0 range 20 .. 21;
      DEVADDR        at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype HC9_SPLT_PRTADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC9_SPLT_HUBADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC9_SPLT_XACTPOS_Field is Interfaces.EFM32.UInt2;
   subtype HC9_SPLT_COMPSPLT_Field is Interfaces.EFM32.Bit;
   subtype HC9_SPLT_SPLTENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Split Control Register
   type HC9_SPLT_Register is record
      --  Port Address
      PRTADDR        : HC9_SPLT_PRTADDR_Field := 16#0#;
      --  Hub Address
      HUBADDR        : HC9_SPLT_HUBADDR_Field := 16#0#;
      --  Transaction Position
      XACTPOS        : HC9_SPLT_XACTPOS_Field := 16#0#;
      --  Do Complete Split
      COMPSPLT       : HC9_SPLT_COMPSPLT_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.EFM32.UInt14 := 16#0#;
      --  Split Enable
      SPLTENA        : HC9_SPLT_SPLTENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC9_SPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPSPLT       at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLTENA        at 0 range 31 .. 31;
   end record;

   subtype HC9_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype HC9_INT_CHHLTD_Field is Interfaces.EFM32.Bit;
   subtype HC9_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype HC9_INT_STALL_Field is Interfaces.EFM32.Bit;
   subtype HC9_INT_NAK_Field is Interfaces.EFM32.Bit;
   subtype HC9_INT_ACK_Field is Interfaces.EFM32.Bit;
   subtype HC9_INT_XACTERR_Field is Interfaces.EFM32.Bit;
   subtype HC9_INT_BBLERR_Field is Interfaces.EFM32.Bit;
   subtype HC9_INT_FRMOVRUN_Field is Interfaces.EFM32.Bit;
   subtype HC9_INT_DATATGLERR_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Register
   type HC9_INT_Register is record
      --  Transfer Completed
      XFERCOMPL      : HC9_INT_XFERCOMPL_Field := 16#0#;
      --  Channel Halted
      CHHLTD         : HC9_INT_CHHLTD_Field := 16#0#;
      --  AHB Error
      AHBERR         : HC9_INT_AHBERR_Field := 16#0#;
      --  STALL Response Received Interrupt
      STALL          : HC9_INT_STALL_Field := 16#0#;
      --  NAK Response Received Interrupt
      NAK            : HC9_INT_NAK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt
      ACK            : HC9_INT_ACK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error
      XACTERR        : HC9_INT_XACTERR_Field := 16#0#;
      --  Babble Error
      BBLERR         : HC9_INT_BBLERR_Field := 16#0#;
      --  Frame Overrun
      FRMOVRUN       : HC9_INT_FRMOVRUN_Field := 16#0#;
      --  Data Toggle Error
      DATATGLERR     : HC9_INT_DATATGLERR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC9_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      CHHLTD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERR        at 0 range 7 .. 7;
      BBLERR         at 0 range 8 .. 8;
      FRMOVRUN       at 0 range 9 .. 9;
      DATATGLERR     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC9_INTMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC9_INTMSK_CHHLTDMSK_Field is Interfaces.EFM32.Bit;
   subtype HC9_INTMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC9_INTMSK_STALLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC9_INTMSK_NAKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC9_INTMSK_ACKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC9_INTMSK_XACTERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC9_INTMSK_BBLERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC9_INTMSK_FRMOVRUNMSK_Field is Interfaces.EFM32.Bit;
   subtype HC9_INTMSK_DATATGLERRMSK_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Mask Register
   type HC9_INTMSK_Register is record
      --  Transfer Completed Mask
      XFERCOMPLMSK   : HC9_INTMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Channel Halted Mask
      CHHLTDMSK      : HC9_INTMSK_CHHLTDMSK_Field := 16#0#;
      --  AHB Error Mask
      AHBERRMSK      : HC9_INTMSK_AHBERRMSK_Field := 16#0#;
      --  STALL Response Received Interrupt Mask
      STALLMSK       : HC9_INTMSK_STALLMSK_Field := 16#0#;
      --  NAK Response Received Interrupt Mask
      NAKMSK         : HC9_INTMSK_NAKMSK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt Mask
      ACKMSK         : HC9_INTMSK_ACKMSK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error Mask
      XACTERRMSK     : HC9_INTMSK_XACTERRMSK_Field := 16#0#;
      --  Babble Error Mask
      BBLERRMSK      : HC9_INTMSK_BBLERRMSK_Field := 16#0#;
      --  Frame Overrun Mask
      FRMOVRUNMSK    : HC9_INTMSK_FRMOVRUNMSK_Field := 16#0#;
      --  Data Toggle Error Mask
      DATATGLERRMSK  : HC9_INTMSK_DATATGLERRMSK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC9_INTMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      CHHLTDMSK      at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      STALLMSK       at 0 range 3 .. 3;
      NAKMSK         at 0 range 4 .. 4;
      ACKMSK         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERRMSK     at 0 range 7 .. 7;
      BBLERRMSK      at 0 range 8 .. 8;
      FRMOVRUNMSK    at 0 range 9 .. 9;
      DATATGLERRMSK  at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC9_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype HC9_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  The Application Programs This Field With the Type of
   type HC9_TSIZ_PID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID.
      DATA2,
      --  DATA1 PID.
      DATA1,
      --  MDATA (non-control) / SETUP (control) PID.
      MDATA)
     with Size => 2;
   for HC9_TSIZ_PID_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Host Channel x Transfer Size Register
   type HC9_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : HC9_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : HC9_TSIZ_PKTCNT_Field := 16#0#;
      --  The Application Programs This Field With the Type of
      PID            : HC9_TSIZ_PID_Field := Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC9_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      PID            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HC10_CHAR_MPS_Field is Interfaces.EFM32.UInt11;
   subtype HC10_CHAR_EPNUM_Field is Interfaces.EFM32.UInt4;
   subtype HC10_CHAR_EPDIR_Field is Interfaces.EFM32.Bit;
   subtype HC10_CHAR_LSPDDEV_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type HC10_CHAR_EPTYPE_Field is
     (--  Control endpoint.
      CONTROL,
      --  Isochronous endpoint.
      ISO,
      --  Bulk endpoint.
      BULK,
      --  Interrupt endpoint.
      INT)
     with Size => 2;
   for HC10_CHAR_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype HC10_CHAR_MC_Field is Interfaces.EFM32.UInt2;
   subtype HC10_CHAR_DEVADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC10_CHAR_ODDFRM_Field is Interfaces.EFM32.Bit;
   subtype HC10_CHAR_CHDIS_Field is Interfaces.EFM32.Bit;
   subtype HC10_CHAR_CHENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Characteristics Register
   type HC10_CHAR_Register is record
      --  Maximum Packet Size
      MPS            : HC10_CHAR_MPS_Field := 16#0#;
      --  Endpoint Number
      EPNUM          : HC10_CHAR_EPNUM_Field := 16#0#;
      --  Endpoint Direction
      EPDIR          : HC10_CHAR_EPDIR_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Low-Speed Device
      LSPDDEV        : HC10_CHAR_LSPDDEV_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : HC10_CHAR_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Multi Count (MC) / Error Count
      MC             : HC10_CHAR_MC_Field := 16#0#;
      --  Device Address
      DEVADDR        : HC10_CHAR_DEVADDR_Field := 16#0#;
      --  Odd Frame
      ODDFRM         : HC10_CHAR_ODDFRM_Field := 16#0#;
      --  Channel Disable
      CHDIS          : HC10_CHAR_CHDIS_Field := 16#0#;
      --  Channel Enable
      CHENA          : HC10_CHAR_CHENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC10_CHAR_Register use record
      MPS            at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSPDDEV        at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      MC             at 0 range 20 .. 21;
      DEVADDR        at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype HC10_SPLT_PRTADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC10_SPLT_HUBADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC10_SPLT_XACTPOS_Field is Interfaces.EFM32.UInt2;
   subtype HC10_SPLT_COMPSPLT_Field is Interfaces.EFM32.Bit;
   subtype HC10_SPLT_SPLTENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Split Control Register
   type HC10_SPLT_Register is record
      --  Port Address
      PRTADDR        : HC10_SPLT_PRTADDR_Field := 16#0#;
      --  Hub Address
      HUBADDR        : HC10_SPLT_HUBADDR_Field := 16#0#;
      --  Transaction Position
      XACTPOS        : HC10_SPLT_XACTPOS_Field := 16#0#;
      --  Do Complete Split
      COMPSPLT       : HC10_SPLT_COMPSPLT_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.EFM32.UInt14 := 16#0#;
      --  Split Enable
      SPLTENA        : HC10_SPLT_SPLTENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC10_SPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPSPLT       at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLTENA        at 0 range 31 .. 31;
   end record;

   subtype HC10_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype HC10_INT_CHHLTD_Field is Interfaces.EFM32.Bit;
   subtype HC10_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype HC10_INT_STALL_Field is Interfaces.EFM32.Bit;
   subtype HC10_INT_NAK_Field is Interfaces.EFM32.Bit;
   subtype HC10_INT_ACK_Field is Interfaces.EFM32.Bit;
   subtype HC10_INT_XACTERR_Field is Interfaces.EFM32.Bit;
   subtype HC10_INT_BBLERR_Field is Interfaces.EFM32.Bit;
   subtype HC10_INT_FRMOVRUN_Field is Interfaces.EFM32.Bit;
   subtype HC10_INT_DATATGLERR_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Register
   type HC10_INT_Register is record
      --  Transfer Completed
      XFERCOMPL      : HC10_INT_XFERCOMPL_Field := 16#0#;
      --  Channel Halted
      CHHLTD         : HC10_INT_CHHLTD_Field := 16#0#;
      --  AHB Error
      AHBERR         : HC10_INT_AHBERR_Field := 16#0#;
      --  STALL Response Received Interrupt
      STALL          : HC10_INT_STALL_Field := 16#0#;
      --  NAK Response Received Interrupt
      NAK            : HC10_INT_NAK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt
      ACK            : HC10_INT_ACK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error
      XACTERR        : HC10_INT_XACTERR_Field := 16#0#;
      --  Babble Error
      BBLERR         : HC10_INT_BBLERR_Field := 16#0#;
      --  Frame Overrun
      FRMOVRUN       : HC10_INT_FRMOVRUN_Field := 16#0#;
      --  Data Toggle Error
      DATATGLERR     : HC10_INT_DATATGLERR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC10_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      CHHLTD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERR        at 0 range 7 .. 7;
      BBLERR         at 0 range 8 .. 8;
      FRMOVRUN       at 0 range 9 .. 9;
      DATATGLERR     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC10_INTMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC10_INTMSK_CHHLTDMSK_Field is Interfaces.EFM32.Bit;
   subtype HC10_INTMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC10_INTMSK_STALLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC10_INTMSK_NAKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC10_INTMSK_ACKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC10_INTMSK_XACTERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC10_INTMSK_BBLERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC10_INTMSK_FRMOVRUNMSK_Field is Interfaces.EFM32.Bit;
   subtype HC10_INTMSK_DATATGLERRMSK_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Mask Register
   type HC10_INTMSK_Register is record
      --  Transfer Completed Mask
      XFERCOMPLMSK   : HC10_INTMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Channel Halted Mask
      CHHLTDMSK      : HC10_INTMSK_CHHLTDMSK_Field := 16#0#;
      --  AHB Error Mask
      AHBERRMSK      : HC10_INTMSK_AHBERRMSK_Field := 16#0#;
      --  STALL Response Received Interrupt Mask
      STALLMSK       : HC10_INTMSK_STALLMSK_Field := 16#0#;
      --  NAK Response Received Interrupt Mask
      NAKMSK         : HC10_INTMSK_NAKMSK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt Mask
      ACKMSK         : HC10_INTMSK_ACKMSK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error Mask
      XACTERRMSK     : HC10_INTMSK_XACTERRMSK_Field := 16#0#;
      --  Babble Error Mask
      BBLERRMSK      : HC10_INTMSK_BBLERRMSK_Field := 16#0#;
      --  Frame Overrun Mask
      FRMOVRUNMSK    : HC10_INTMSK_FRMOVRUNMSK_Field := 16#0#;
      --  Data Toggle Error Mask
      DATATGLERRMSK  : HC10_INTMSK_DATATGLERRMSK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC10_INTMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      CHHLTDMSK      at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      STALLMSK       at 0 range 3 .. 3;
      NAKMSK         at 0 range 4 .. 4;
      ACKMSK         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERRMSK     at 0 range 7 .. 7;
      BBLERRMSK      at 0 range 8 .. 8;
      FRMOVRUNMSK    at 0 range 9 .. 9;
      DATATGLERRMSK  at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC10_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype HC10_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  The Application Programs This Field With the Type of
   type HC10_TSIZ_PID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID.
      DATA2,
      --  DATA1 PID.
      DATA1,
      --  MDATA (non-control) / SETUP (control) PID.
      MDATA)
     with Size => 2;
   for HC10_TSIZ_PID_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Host Channel x Transfer Size Register
   type HC10_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : HC10_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : HC10_TSIZ_PKTCNT_Field := 16#0#;
      --  The Application Programs This Field With the Type of
      PID            : HC10_TSIZ_PID_Field := Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC10_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      PID            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HC11_CHAR_MPS_Field is Interfaces.EFM32.UInt11;
   subtype HC11_CHAR_EPNUM_Field is Interfaces.EFM32.UInt4;
   subtype HC11_CHAR_EPDIR_Field is Interfaces.EFM32.Bit;
   subtype HC11_CHAR_LSPDDEV_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type HC11_CHAR_EPTYPE_Field is
     (--  Control endpoint.
      CONTROL,
      --  Isochronous endpoint.
      ISO,
      --  Bulk endpoint.
      BULK,
      --  Interrupt endpoint.
      INT)
     with Size => 2;
   for HC11_CHAR_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype HC11_CHAR_MC_Field is Interfaces.EFM32.UInt2;
   subtype HC11_CHAR_DEVADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC11_CHAR_ODDFRM_Field is Interfaces.EFM32.Bit;
   subtype HC11_CHAR_CHDIS_Field is Interfaces.EFM32.Bit;
   subtype HC11_CHAR_CHENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Characteristics Register
   type HC11_CHAR_Register is record
      --  Maximum Packet Size
      MPS            : HC11_CHAR_MPS_Field := 16#0#;
      --  Endpoint Number
      EPNUM          : HC11_CHAR_EPNUM_Field := 16#0#;
      --  Endpoint Direction
      EPDIR          : HC11_CHAR_EPDIR_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Low-Speed Device
      LSPDDEV        : HC11_CHAR_LSPDDEV_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : HC11_CHAR_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Multi Count (MC) / Error Count
      MC             : HC11_CHAR_MC_Field := 16#0#;
      --  Device Address
      DEVADDR        : HC11_CHAR_DEVADDR_Field := 16#0#;
      --  Odd Frame
      ODDFRM         : HC11_CHAR_ODDFRM_Field := 16#0#;
      --  Channel Disable
      CHDIS          : HC11_CHAR_CHDIS_Field := 16#0#;
      --  Channel Enable
      CHENA          : HC11_CHAR_CHENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC11_CHAR_Register use record
      MPS            at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSPDDEV        at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      MC             at 0 range 20 .. 21;
      DEVADDR        at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype HC11_SPLT_PRTADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC11_SPLT_HUBADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC11_SPLT_XACTPOS_Field is Interfaces.EFM32.UInt2;
   subtype HC11_SPLT_COMPSPLT_Field is Interfaces.EFM32.Bit;
   subtype HC11_SPLT_SPLTENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Split Control Register
   type HC11_SPLT_Register is record
      --  Port Address
      PRTADDR        : HC11_SPLT_PRTADDR_Field := 16#0#;
      --  Hub Address
      HUBADDR        : HC11_SPLT_HUBADDR_Field := 16#0#;
      --  Transaction Position
      XACTPOS        : HC11_SPLT_XACTPOS_Field := 16#0#;
      --  Do Complete Split
      COMPSPLT       : HC11_SPLT_COMPSPLT_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.EFM32.UInt14 := 16#0#;
      --  Split Enable
      SPLTENA        : HC11_SPLT_SPLTENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC11_SPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPSPLT       at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLTENA        at 0 range 31 .. 31;
   end record;

   subtype HC11_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype HC11_INT_CHHLTD_Field is Interfaces.EFM32.Bit;
   subtype HC11_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype HC11_INT_STALL_Field is Interfaces.EFM32.Bit;
   subtype HC11_INT_NAK_Field is Interfaces.EFM32.Bit;
   subtype HC11_INT_ACK_Field is Interfaces.EFM32.Bit;
   subtype HC11_INT_XACTERR_Field is Interfaces.EFM32.Bit;
   subtype HC11_INT_BBLERR_Field is Interfaces.EFM32.Bit;
   subtype HC11_INT_FRMOVRUN_Field is Interfaces.EFM32.Bit;
   subtype HC11_INT_DATATGLERR_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Register
   type HC11_INT_Register is record
      --  Transfer Completed
      XFERCOMPL      : HC11_INT_XFERCOMPL_Field := 16#0#;
      --  Channel Halted
      CHHLTD         : HC11_INT_CHHLTD_Field := 16#0#;
      --  AHB Error
      AHBERR         : HC11_INT_AHBERR_Field := 16#0#;
      --  STALL Response Received Interrupt
      STALL          : HC11_INT_STALL_Field := 16#0#;
      --  NAK Response Received Interrupt
      NAK            : HC11_INT_NAK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt
      ACK            : HC11_INT_ACK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error
      XACTERR        : HC11_INT_XACTERR_Field := 16#0#;
      --  Babble Error
      BBLERR         : HC11_INT_BBLERR_Field := 16#0#;
      --  Frame Overrun
      FRMOVRUN       : HC11_INT_FRMOVRUN_Field := 16#0#;
      --  Data Toggle Error
      DATATGLERR     : HC11_INT_DATATGLERR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC11_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      CHHLTD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERR        at 0 range 7 .. 7;
      BBLERR         at 0 range 8 .. 8;
      FRMOVRUN       at 0 range 9 .. 9;
      DATATGLERR     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC11_INTMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC11_INTMSK_CHHLTDMSK_Field is Interfaces.EFM32.Bit;
   subtype HC11_INTMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC11_INTMSK_STALLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC11_INTMSK_NAKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC11_INTMSK_ACKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC11_INTMSK_XACTERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC11_INTMSK_BBLERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC11_INTMSK_FRMOVRUNMSK_Field is Interfaces.EFM32.Bit;
   subtype HC11_INTMSK_DATATGLERRMSK_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Mask Register
   type HC11_INTMSK_Register is record
      --  Transfer Completed Mask
      XFERCOMPLMSK   : HC11_INTMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Channel Halted Mask
      CHHLTDMSK      : HC11_INTMSK_CHHLTDMSK_Field := 16#0#;
      --  AHB Error Mask
      AHBERRMSK      : HC11_INTMSK_AHBERRMSK_Field := 16#0#;
      --  STALL Response Received Interrupt Mask
      STALLMSK       : HC11_INTMSK_STALLMSK_Field := 16#0#;
      --  NAK Response Received Interrupt Mask
      NAKMSK         : HC11_INTMSK_NAKMSK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt Mask
      ACKMSK         : HC11_INTMSK_ACKMSK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error Mask
      XACTERRMSK     : HC11_INTMSK_XACTERRMSK_Field := 16#0#;
      --  Babble Error Mask
      BBLERRMSK      : HC11_INTMSK_BBLERRMSK_Field := 16#0#;
      --  Frame Overrun Mask
      FRMOVRUNMSK    : HC11_INTMSK_FRMOVRUNMSK_Field := 16#0#;
      --  Data Toggle Error Mask
      DATATGLERRMSK  : HC11_INTMSK_DATATGLERRMSK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC11_INTMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      CHHLTDMSK      at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      STALLMSK       at 0 range 3 .. 3;
      NAKMSK         at 0 range 4 .. 4;
      ACKMSK         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERRMSK     at 0 range 7 .. 7;
      BBLERRMSK      at 0 range 8 .. 8;
      FRMOVRUNMSK    at 0 range 9 .. 9;
      DATATGLERRMSK  at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC11_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype HC11_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  The Application Programs This Field With the Type of
   type HC11_TSIZ_PID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID.
      DATA2,
      --  DATA1 PID.
      DATA1,
      --  MDATA (non-control) / SETUP (control) PID.
      MDATA)
     with Size => 2;
   for HC11_TSIZ_PID_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Host Channel x Transfer Size Register
   type HC11_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : HC11_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : HC11_TSIZ_PKTCNT_Field := 16#0#;
      --  The Application Programs This Field With the Type of
      PID            : HC11_TSIZ_PID_Field := Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC11_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      PID            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HC12_CHAR_MPS_Field is Interfaces.EFM32.UInt11;
   subtype HC12_CHAR_EPNUM_Field is Interfaces.EFM32.UInt4;
   subtype HC12_CHAR_EPDIR_Field is Interfaces.EFM32.Bit;
   subtype HC12_CHAR_LSPDDEV_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type HC12_CHAR_EPTYPE_Field is
     (--  Control endpoint.
      CONTROL,
      --  Isochronous endpoint.
      ISO,
      --  Bulk endpoint.
      BULK,
      --  Interrupt endpoint.
      INT)
     with Size => 2;
   for HC12_CHAR_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype HC12_CHAR_MC_Field is Interfaces.EFM32.UInt2;
   subtype HC12_CHAR_DEVADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC12_CHAR_ODDFRM_Field is Interfaces.EFM32.Bit;
   subtype HC12_CHAR_CHDIS_Field is Interfaces.EFM32.Bit;
   subtype HC12_CHAR_CHENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Characteristics Register
   type HC12_CHAR_Register is record
      --  Maximum Packet Size
      MPS            : HC12_CHAR_MPS_Field := 16#0#;
      --  Endpoint Number
      EPNUM          : HC12_CHAR_EPNUM_Field := 16#0#;
      --  Endpoint Direction
      EPDIR          : HC12_CHAR_EPDIR_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Low-Speed Device
      LSPDDEV        : HC12_CHAR_LSPDDEV_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : HC12_CHAR_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Multi Count (MC) / Error Count
      MC             : HC12_CHAR_MC_Field := 16#0#;
      --  Device Address
      DEVADDR        : HC12_CHAR_DEVADDR_Field := 16#0#;
      --  Odd Frame
      ODDFRM         : HC12_CHAR_ODDFRM_Field := 16#0#;
      --  Channel Disable
      CHDIS          : HC12_CHAR_CHDIS_Field := 16#0#;
      --  Channel Enable
      CHENA          : HC12_CHAR_CHENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC12_CHAR_Register use record
      MPS            at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSPDDEV        at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      MC             at 0 range 20 .. 21;
      DEVADDR        at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype HC12_SPLT_PRTADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC12_SPLT_HUBADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC12_SPLT_XACTPOS_Field is Interfaces.EFM32.UInt2;
   subtype HC12_SPLT_COMPSPLT_Field is Interfaces.EFM32.Bit;
   subtype HC12_SPLT_SPLTENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Split Control Register
   type HC12_SPLT_Register is record
      --  Port Address
      PRTADDR        : HC12_SPLT_PRTADDR_Field := 16#0#;
      --  Hub Address
      HUBADDR        : HC12_SPLT_HUBADDR_Field := 16#0#;
      --  Transaction Position
      XACTPOS        : HC12_SPLT_XACTPOS_Field := 16#0#;
      --  Do Complete Split
      COMPSPLT       : HC12_SPLT_COMPSPLT_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.EFM32.UInt14 := 16#0#;
      --  Split Enable
      SPLTENA        : HC12_SPLT_SPLTENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC12_SPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPSPLT       at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLTENA        at 0 range 31 .. 31;
   end record;

   subtype HC12_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype HC12_INT_CHHLTD_Field is Interfaces.EFM32.Bit;
   subtype HC12_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype HC12_INT_STALL_Field is Interfaces.EFM32.Bit;
   subtype HC12_INT_NAK_Field is Interfaces.EFM32.Bit;
   subtype HC12_INT_ACK_Field is Interfaces.EFM32.Bit;
   subtype HC12_INT_XACTERR_Field is Interfaces.EFM32.Bit;
   subtype HC12_INT_BBLERR_Field is Interfaces.EFM32.Bit;
   subtype HC12_INT_FRMOVRUN_Field is Interfaces.EFM32.Bit;
   subtype HC12_INT_DATATGLERR_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Register
   type HC12_INT_Register is record
      --  Transfer Completed
      XFERCOMPL      : HC12_INT_XFERCOMPL_Field := 16#0#;
      --  Channel Halted
      CHHLTD         : HC12_INT_CHHLTD_Field := 16#0#;
      --  AHB Error
      AHBERR         : HC12_INT_AHBERR_Field := 16#0#;
      --  STALL Response Received Interrupt
      STALL          : HC12_INT_STALL_Field := 16#0#;
      --  NAK Response Received Interrupt
      NAK            : HC12_INT_NAK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt
      ACK            : HC12_INT_ACK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error
      XACTERR        : HC12_INT_XACTERR_Field := 16#0#;
      --  Babble Error
      BBLERR         : HC12_INT_BBLERR_Field := 16#0#;
      --  Frame Overrun
      FRMOVRUN       : HC12_INT_FRMOVRUN_Field := 16#0#;
      --  Data Toggle Error
      DATATGLERR     : HC12_INT_DATATGLERR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC12_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      CHHLTD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERR        at 0 range 7 .. 7;
      BBLERR         at 0 range 8 .. 8;
      FRMOVRUN       at 0 range 9 .. 9;
      DATATGLERR     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC12_INTMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC12_INTMSK_CHHLTDMSK_Field is Interfaces.EFM32.Bit;
   subtype HC12_INTMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC12_INTMSK_STALLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC12_INTMSK_NAKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC12_INTMSK_ACKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC12_INTMSK_XACTERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC12_INTMSK_BBLERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC12_INTMSK_FRMOVRUNMSK_Field is Interfaces.EFM32.Bit;
   subtype HC12_INTMSK_DATATGLERRMSK_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Mask Register
   type HC12_INTMSK_Register is record
      --  Transfer Completed Mask
      XFERCOMPLMSK   : HC12_INTMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Channel Halted Mask
      CHHLTDMSK      : HC12_INTMSK_CHHLTDMSK_Field := 16#0#;
      --  AHB Error Mask
      AHBERRMSK      : HC12_INTMSK_AHBERRMSK_Field := 16#0#;
      --  STALL Response Received Interrupt Mask
      STALLMSK       : HC12_INTMSK_STALLMSK_Field := 16#0#;
      --  NAK Response Received Interrupt Mask
      NAKMSK         : HC12_INTMSK_NAKMSK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt Mask
      ACKMSK         : HC12_INTMSK_ACKMSK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error Mask
      XACTERRMSK     : HC12_INTMSK_XACTERRMSK_Field := 16#0#;
      --  Babble Error Mask
      BBLERRMSK      : HC12_INTMSK_BBLERRMSK_Field := 16#0#;
      --  Frame Overrun Mask
      FRMOVRUNMSK    : HC12_INTMSK_FRMOVRUNMSK_Field := 16#0#;
      --  Data Toggle Error Mask
      DATATGLERRMSK  : HC12_INTMSK_DATATGLERRMSK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC12_INTMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      CHHLTDMSK      at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      STALLMSK       at 0 range 3 .. 3;
      NAKMSK         at 0 range 4 .. 4;
      ACKMSK         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERRMSK     at 0 range 7 .. 7;
      BBLERRMSK      at 0 range 8 .. 8;
      FRMOVRUNMSK    at 0 range 9 .. 9;
      DATATGLERRMSK  at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC12_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype HC12_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  The Application Programs This Field With the Type of
   type HC12_TSIZ_PID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID.
      DATA2,
      --  DATA1 PID.
      DATA1,
      --  MDATA (non-control) / SETUP (control) PID.
      MDATA)
     with Size => 2;
   for HC12_TSIZ_PID_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Host Channel x Transfer Size Register
   type HC12_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : HC12_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : HC12_TSIZ_PKTCNT_Field := 16#0#;
      --  The Application Programs This Field With the Type of
      PID            : HC12_TSIZ_PID_Field := Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC12_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      PID            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype HC13_CHAR_MPS_Field is Interfaces.EFM32.UInt11;
   subtype HC13_CHAR_EPNUM_Field is Interfaces.EFM32.UInt4;
   subtype HC13_CHAR_EPDIR_Field is Interfaces.EFM32.Bit;
   subtype HC13_CHAR_LSPDDEV_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type HC13_CHAR_EPTYPE_Field is
     (--  Control endpoint.
      CONTROL,
      --  Isochronous endpoint.
      ISO,
      --  Bulk endpoint.
      BULK,
      --  Interrupt endpoint.
      INT)
     with Size => 2;
   for HC13_CHAR_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype HC13_CHAR_MC_Field is Interfaces.EFM32.UInt2;
   subtype HC13_CHAR_DEVADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC13_CHAR_ODDFRM_Field is Interfaces.EFM32.Bit;
   subtype HC13_CHAR_CHDIS_Field is Interfaces.EFM32.Bit;
   subtype HC13_CHAR_CHENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Characteristics Register
   type HC13_CHAR_Register is record
      --  Maximum Packet Size
      MPS            : HC13_CHAR_MPS_Field := 16#0#;
      --  Endpoint Number
      EPNUM          : HC13_CHAR_EPNUM_Field := 16#0#;
      --  Endpoint Direction
      EPDIR          : HC13_CHAR_EPDIR_Field := 16#0#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Low-Speed Device
      LSPDDEV        : HC13_CHAR_LSPDDEV_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : HC13_CHAR_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Multi Count (MC) / Error Count
      MC             : HC13_CHAR_MC_Field := 16#0#;
      --  Device Address
      DEVADDR        : HC13_CHAR_DEVADDR_Field := 16#0#;
      --  Odd Frame
      ODDFRM         : HC13_CHAR_ODDFRM_Field := 16#0#;
      --  Channel Disable
      CHDIS          : HC13_CHAR_CHDIS_Field := 16#0#;
      --  Channel Enable
      CHENA          : HC13_CHAR_CHENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC13_CHAR_Register use record
      MPS            at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSPDDEV        at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      MC             at 0 range 20 .. 21;
      DEVADDR        at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype HC13_SPLT_PRTADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC13_SPLT_HUBADDR_Field is Interfaces.EFM32.UInt7;
   subtype HC13_SPLT_XACTPOS_Field is Interfaces.EFM32.UInt2;
   subtype HC13_SPLT_COMPSPLT_Field is Interfaces.EFM32.Bit;
   subtype HC13_SPLT_SPLTENA_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Split Control Register
   type HC13_SPLT_Register is record
      --  Port Address
      PRTADDR        : HC13_SPLT_PRTADDR_Field := 16#0#;
      --  Hub Address
      HUBADDR        : HC13_SPLT_HUBADDR_Field := 16#0#;
      --  Transaction Position
      XACTPOS        : HC13_SPLT_XACTPOS_Field := 16#0#;
      --  Do Complete Split
      COMPSPLT       : HC13_SPLT_COMPSPLT_Field := 16#0#;
      --  unspecified
      Reserved_17_30 : Interfaces.EFM32.UInt14 := 16#0#;
      --  Split Enable
      SPLTENA        : HC13_SPLT_SPLTENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC13_SPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPSPLT       at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLTENA        at 0 range 31 .. 31;
   end record;

   subtype HC13_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype HC13_INT_CHHLTD_Field is Interfaces.EFM32.Bit;
   subtype HC13_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype HC13_INT_STALL_Field is Interfaces.EFM32.Bit;
   subtype HC13_INT_NAK_Field is Interfaces.EFM32.Bit;
   subtype HC13_INT_ACK_Field is Interfaces.EFM32.Bit;
   subtype HC13_INT_XACTERR_Field is Interfaces.EFM32.Bit;
   subtype HC13_INT_BBLERR_Field is Interfaces.EFM32.Bit;
   subtype HC13_INT_FRMOVRUN_Field is Interfaces.EFM32.Bit;
   subtype HC13_INT_DATATGLERR_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Register
   type HC13_INT_Register is record
      --  Transfer Completed
      XFERCOMPL      : HC13_INT_XFERCOMPL_Field := 16#0#;
      --  Channel Halted
      CHHLTD         : HC13_INT_CHHLTD_Field := 16#0#;
      --  AHB Error
      AHBERR         : HC13_INT_AHBERR_Field := 16#0#;
      --  STALL Response Received Interrupt
      STALL          : HC13_INT_STALL_Field := 16#0#;
      --  NAK Response Received Interrupt
      NAK            : HC13_INT_NAK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt
      ACK            : HC13_INT_ACK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error
      XACTERR        : HC13_INT_XACTERR_Field := 16#0#;
      --  Babble Error
      BBLERR         : HC13_INT_BBLERR_Field := 16#0#;
      --  Frame Overrun
      FRMOVRUN       : HC13_INT_FRMOVRUN_Field := 16#0#;
      --  Data Toggle Error
      DATATGLERR     : HC13_INT_DATATGLERR_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC13_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      CHHLTD         at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERR        at 0 range 7 .. 7;
      BBLERR         at 0 range 8 .. 8;
      FRMOVRUN       at 0 range 9 .. 9;
      DATATGLERR     at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC13_INTMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC13_INTMSK_CHHLTDMSK_Field is Interfaces.EFM32.Bit;
   subtype HC13_INTMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC13_INTMSK_STALLMSK_Field is Interfaces.EFM32.Bit;
   subtype HC13_INTMSK_NAKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC13_INTMSK_ACKMSK_Field is Interfaces.EFM32.Bit;
   subtype HC13_INTMSK_XACTERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC13_INTMSK_BBLERRMSK_Field is Interfaces.EFM32.Bit;
   subtype HC13_INTMSK_FRMOVRUNMSK_Field is Interfaces.EFM32.Bit;
   subtype HC13_INTMSK_DATATGLERRMSK_Field is Interfaces.EFM32.Bit;

   --  Host Channel x Interrupt Mask Register
   type HC13_INTMSK_Register is record
      --  Transfer Completed Mask
      XFERCOMPLMSK   : HC13_INTMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Channel Halted Mask
      CHHLTDMSK      : HC13_INTMSK_CHHLTDMSK_Field := 16#0#;
      --  AHB Error Mask
      AHBERRMSK      : HC13_INTMSK_AHBERRMSK_Field := 16#0#;
      --  STALL Response Received Interrupt Mask
      STALLMSK       : HC13_INTMSK_STALLMSK_Field := 16#0#;
      --  NAK Response Received Interrupt Mask
      NAKMSK         : HC13_INTMSK_NAKMSK_Field := 16#0#;
      --  ACK Response Received/Transmitted Interrupt Mask
      ACKMSK         : HC13_INTMSK_ACKMSK_Field := 16#0#;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Transaction Error Mask
      XACTERRMSK     : HC13_INTMSK_XACTERRMSK_Field := 16#0#;
      --  Babble Error Mask
      BBLERRMSK      : HC13_INTMSK_BBLERRMSK_Field := 16#0#;
      --  Frame Overrun Mask
      FRMOVRUNMSK    : HC13_INTMSK_FRMOVRUNMSK_Field := 16#0#;
      --  Data Toggle Error Mask
      DATATGLERRMSK  : HC13_INTMSK_DATATGLERRMSK_Field := 16#0#;
      --  unspecified
      Reserved_11_31 : Interfaces.EFM32.UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC13_INTMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      CHHLTDMSK      at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      STALLMSK       at 0 range 3 .. 3;
      NAKMSK         at 0 range 4 .. 4;
      ACKMSK         at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      XACTERRMSK     at 0 range 7 .. 7;
      BBLERRMSK      at 0 range 8 .. 8;
      FRMOVRUNMSK    at 0 range 9 .. 9;
      DATATGLERRMSK  at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype HC13_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype HC13_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  The Application Programs This Field With the Type of
   type HC13_TSIZ_PID_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID.
      DATA2,
      --  DATA1 PID.
      DATA1,
      --  MDATA (non-control) / SETUP (control) PID.
      MDATA)
     with Size => 2;
   for HC13_TSIZ_PID_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Host Channel x Transfer Size Register
   type HC13_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : HC13_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : HC13_TSIZ_PKTCNT_Field := 16#0#;
      --  The Application Programs This Field With the Type of
      PID            : HC13_TSIZ_PID_Field := Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HC13_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      PID            at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Device Speed
   type DCFG_DEVSPD_Field is
     (--  Reset value for the field
      DCFG_DEVSPD_Field_Reset,
      --  Low speed (PHY clock is 6 MHz). If you select 6 MHz LS mode, you must do a
--  soft reset.
      LS,
      --  Full speed (PHY clock is 48 MHz).
      FS)
     with Size => 2;
   for DCFG_DEVSPD_Field use
     (DCFG_DEVSPD_Field_Reset => 0,
      LS => 2,
      FS => 3);

   subtype DCFG_NZSTSOUTHSHK_Field is Interfaces.EFM32.Bit;
   subtype DCFG_ENA32KHZSUSP_Field is Interfaces.EFM32.Bit;
   subtype DCFG_DEVADDR_Field is Interfaces.EFM32.UInt7;

   --  Periodic Frame Interval
   type DCFG_PERFRINT_Field is
     (--  80% of the frame interval.
      Val_80PCNT,
      --  85% of the frame interval.
      Val_85PCNT,
      --  90% of the frame interval.
      Val_90PCNT,
      --  95% of the frame interval.
      Val_95PCNT)
     with Size => 2;
   for DCFG_PERFRINT_Field use
     (Val_80PCNT => 0,
      Val_85PCNT => 1,
      Val_90PCNT => 2,
      Val_95PCNT => 3);

   subtype DCFG_ENDEVOUTNAK_Field is Interfaces.EFM32.Bit;
   subtype DCFG_XCVRDLY_Field is Interfaces.EFM32.Bit;
   subtype DCFG_ERRATICINTMSK_Field is Interfaces.EFM32.Bit;
   subtype DCFG_RESVALID_Field is Interfaces.EFM32.UInt6;

   --  Device Configuration Register
   type DCFG_Register is record
      --  Device Speed
      DEVSPD         : DCFG_DEVSPD_Field := DCFG_DEVSPD_Field_Reset;
      --  Non-Zero-Length Status OUT Handshake
      NZSTSOUTHSHK   : DCFG_NZSTSOUTHSHK_Field := 16#0#;
      --  Enable 32 kHz Suspend Mode
      ENA32KHZSUSP   : DCFG_ENA32KHZSUSP_Field := 16#0#;
      --  Device Address
      DEVADDR        : DCFG_DEVADDR_Field := 16#0#;
      --  Periodic Frame Interval
      PERFRINT       : DCFG_PERFRINT_Field := Interfaces.EFM32.USB.Val_80PCNT;
      --  Enable Device OUT NAK
      ENDEVOUTNAK    : DCFG_ENDEVOUTNAK_Field := 16#0#;
      XCVRDLY        : DCFG_XCVRDLY_Field := 16#0#;
      ERRATICINTMSK  : DCFG_ERRATICINTMSK_Field := 16#0#;
      --  unspecified
      Reserved_16_25 : Interfaces.EFM32.UInt10 := 16#0#;
      --  Resume Validation Period
      RESVALID       : DCFG_RESVALID_Field := 16#2#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCFG_Register use record
      DEVSPD         at 0 range 0 .. 1;
      NZSTSOUTHSHK   at 0 range 2 .. 2;
      ENA32KHZSUSP   at 0 range 3 .. 3;
      DEVADDR        at 0 range 4 .. 10;
      PERFRINT       at 0 range 11 .. 12;
      ENDEVOUTNAK    at 0 range 13 .. 13;
      XCVRDLY        at 0 range 14 .. 14;
      ERRATICINTMSK  at 0 range 15 .. 15;
      Reserved_16_25 at 0 range 16 .. 25;
      RESVALID       at 0 range 26 .. 31;
   end record;

   subtype DCTL_RMTWKUPSIG_Field is Interfaces.EFM32.Bit;
   subtype DCTL_SFTDISCON_Field is Interfaces.EFM32.Bit;
   subtype DCTL_GNPINNAKSTS_Field is Interfaces.EFM32.Bit;
   subtype DCTL_GOUTNAKSTS_Field is Interfaces.EFM32.Bit;

   --  Test Control
   type DCTL_TSTCTL_Field is
     (--  Test mode disabled.
      DISABLE,
      --  Test_J mode.
      J,
      --  Test_K mode.
      K,
      --  Test_SE0_NAK mode.
      SE0NAK,
      --  Test_Packet mode.
      PACKET,
      --  Test_Force_Enable.
      FORCE)
     with Size => 3;
   for DCTL_TSTCTL_Field use
     (DISABLE => 0,
      J => 1,
      K => 2,
      SE0NAK => 3,
      PACKET => 4,
      FORCE => 5);

   subtype DCTL_SGNPINNAK_Field is Interfaces.EFM32.Bit;
   subtype DCTL_CGNPINNAK_Field is Interfaces.EFM32.Bit;
   subtype DCTL_SGOUTNAK_Field is Interfaces.EFM32.Bit;
   subtype DCTL_CGOUTNAK_Field is Interfaces.EFM32.Bit;
   subtype DCTL_PWRONPRGDONE_Field is Interfaces.EFM32.Bit;
   subtype DCTL_IGNRFRMNUM_Field is Interfaces.EFM32.Bit;
   subtype DCTL_NAKONBBLE_Field is Interfaces.EFM32.Bit;

   --  Device Control Register
   type DCTL_Register is record
      --  Remote Wakeup Signaling
      RMTWKUPSIG     : DCTL_RMTWKUPSIG_Field := 16#0#;
      --  Soft Disconnect
      SFTDISCON      : DCTL_SFTDISCON_Field := 16#1#;
      --  Read-only. Global Non-periodic IN NAK Status
      GNPINNAKSTS    : DCTL_GNPINNAKSTS_Field := 16#0#;
      --  Read-only. Global OUT NAK Status
      GOUTNAKSTS     : DCTL_GOUTNAKSTS_Field := 16#0#;
      --  Test Control
      TSTCTL         : DCTL_TSTCTL_Field := Interfaces.EFM32.USB.DISABLE;
      --  Write-only. Set Global Non-periodic IN NAK
      SGNPINNAK      : DCTL_SGNPINNAK_Field := 16#0#;
      --  Write-only. Clear Global Non-periodic IN NAK
      CGNPINNAK      : DCTL_CGNPINNAK_Field := 16#0#;
      --  Write-only. Set Global OUT NAK
      SGOUTNAK       : DCTL_SGOUTNAK_Field := 16#0#;
      --  Write-only. Clear Global OUT NAK
      CGOUTNAK       : DCTL_CGOUTNAK_Field := 16#0#;
      --  Power-On Programming Done
      PWRONPRGDONE   : DCTL_PWRONPRGDONE_Field := 16#0#;
      --  unspecified
      Reserved_12_14 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Ignore Frame number For Isochronous End points
      IGNRFRMNUM     : DCTL_IGNRFRMNUM_Field := 16#0#;
      --  NAK on Babble Error
      NAKONBBLE      : DCTL_NAKONBBLE_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DCTL_Register use record
      RMTWKUPSIG     at 0 range 0 .. 0;
      SFTDISCON      at 0 range 1 .. 1;
      GNPINNAKSTS    at 0 range 2 .. 2;
      GOUTNAKSTS     at 0 range 3 .. 3;
      TSTCTL         at 0 range 4 .. 6;
      SGNPINNAK      at 0 range 7 .. 7;
      CGNPINNAK      at 0 range 8 .. 8;
      SGOUTNAK       at 0 range 9 .. 9;
      CGOUTNAK       at 0 range 10 .. 10;
      PWRONPRGDONE   at 0 range 11 .. 11;
      Reserved_12_14 at 0 range 12 .. 14;
      IGNRFRMNUM     at 0 range 15 .. 15;
      NAKONBBLE      at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype DSTS_SUSPSTS_Field is Interfaces.EFM32.Bit;

   --  Enumerated Speed
   type DSTS_ENUMSPD_Field is
     (--  Low speed (PHY clock is running at 6 MHz).
      LS,
      --  Full speed (PHY clock is running at 48 MHz).
      FS)
     with Size => 2;
   for DSTS_ENUMSPD_Field use
     (LS => 2,
      FS => 3);

   subtype DSTS_ERRTICERR_Field is Interfaces.EFM32.Bit;
   subtype DSTS_SOFFN_Field is Interfaces.EFM32.UInt14;
   subtype DSTS_DEVLNSTS_Field is Interfaces.EFM32.UInt2;

   --  Device Status Register
   type DSTS_Register is record
      --  Read-only. Suspend Status
      SUSPSTS        : DSTS_SUSPSTS_Field;
      --  Read-only. Enumerated Speed
      ENUMSPD        : DSTS_ENUMSPD_Field;
      --  Read-only. Erratic Error
      ERRTICERR      : DSTS_ERRTICERR_Field;
      --  unspecified
      Reserved_4_7   : Interfaces.EFM32.UInt4;
      --  Read-only. Frame Number of the Received SOF
      SOFFN          : DSTS_SOFFN_Field;
      --  Read-only. Device Line Status
      DEVLNSTS       : DSTS_DEVLNSTS_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DSTS_Register use record
      SUSPSTS        at 0 range 0 .. 0;
      ENUMSPD        at 0 range 1 .. 2;
      ERRTICERR      at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      SOFFN          at 0 range 8 .. 21;
      DEVLNSTS       at 0 range 22 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype DIEPMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype DIEPMSK_EPDISBLDMSK_Field is Interfaces.EFM32.Bit;
   subtype DIEPMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype DIEPMSK_TIMEOUTMSK_Field is Interfaces.EFM32.Bit;
   subtype DIEPMSK_INTKNTXFEMPMSK_Field is Interfaces.EFM32.Bit;
   subtype DIEPMSK_INTKNEPMISMSK_Field is Interfaces.EFM32.Bit;
   subtype DIEPMSK_INEPNAKEFFMSK_Field is Interfaces.EFM32.Bit;
   subtype DIEPMSK_TXFIFOUNDRNMSK_Field is Interfaces.EFM32.Bit;
   subtype DIEPMSK_NAKMSK_Field is Interfaces.EFM32.Bit;

   --  Device IN Endpoint Common Interrupt Mask Register
   type DIEPMSK_Register is record
      --  Transfer Completed Interrupt Mask
      XFERCOMPLMSK   : DIEPMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Endpoint Disabled Interrupt Mask
      EPDISBLDMSK    : DIEPMSK_EPDISBLDMSK_Field := 16#0#;
      --  AHB Error Mask
      AHBERRMSK      : DIEPMSK_AHBERRMSK_Field := 16#0#;
      --  Timeout Condition Mask
      TIMEOUTMSK     : DIEPMSK_TIMEOUTMSK_Field := 16#0#;
      --  IN Token Received When TxFIFO Empty Mask
      INTKNTXFEMPMSK : DIEPMSK_INTKNTXFEMPMSK_Field := 16#0#;
      --  IN Token received with EP Mismatch Mask
      INTKNEPMISMSK  : DIEPMSK_INTKNEPMISMSK_Field := 16#0#;
      --  IN Endpoint NAK Effective Mask
      INEPNAKEFFMSK  : DIEPMSK_INEPNAKEFFMSK_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Fifo Underrun Mask
      TXFIFOUNDRNMSK : DIEPMSK_TXFIFOUNDRNMSK_Field := 16#0#;
      --  unspecified
      Reserved_9_12  : Interfaces.EFM32.UInt4 := 16#0#;
      --  NAK interrupt Mask
      NAKMSK         : DIEPMSK_NAKMSK_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      EPDISBLDMSK    at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      TIMEOUTMSK     at 0 range 3 .. 3;
      INTKNTXFEMPMSK at 0 range 4 .. 4;
      INTKNEPMISMSK  at 0 range 5 .. 5;
      INEPNAKEFFMSK  at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TXFIFOUNDRNMSK at 0 range 8 .. 8;
      Reserved_9_12  at 0 range 9 .. 12;
      NAKMSK         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DOEPMSK_XFERCOMPLMSK_Field is Interfaces.EFM32.Bit;
   subtype DOEPMSK_EPDISBLDMSK_Field is Interfaces.EFM32.Bit;
   subtype DOEPMSK_AHBERRMSK_Field is Interfaces.EFM32.Bit;
   subtype DOEPMSK_SETUPMSK_Field is Interfaces.EFM32.Bit;
   subtype DOEPMSK_OUTTKNEPDISMSK_Field is Interfaces.EFM32.Bit;
   subtype DOEPMSK_STSPHSERCVDMSK_Field is Interfaces.EFM32.Bit;
   subtype DOEPMSK_BACK2BACKSETUP_Field is Interfaces.EFM32.Bit;
   subtype DOEPMSK_OUTPKTERRMSK_Field is Interfaces.EFM32.Bit;
   subtype DOEPMSK_BBLEERRMSK_Field is Interfaces.EFM32.Bit;
   subtype DOEPMSK_NAKMSK_Field is Interfaces.EFM32.Bit;

   --  Device OUT Endpoint Common Interrupt Mask Register
   type DOEPMSK_Register is record
      --  Transfer Completed Interrupt Mask
      XFERCOMPLMSK   : DOEPMSK_XFERCOMPLMSK_Field := 16#0#;
      --  Endpoint Disabled Interrupt Mask
      EPDISBLDMSK    : DOEPMSK_EPDISBLDMSK_Field := 16#0#;
      --  AHB Error
      AHBERRMSK      : DOEPMSK_AHBERRMSK_Field := 16#0#;
      --  SETUP Phase Done Mask
      SETUPMSK       : DOEPMSK_SETUPMSK_Field := 16#0#;
      --  OUT Token Received when Endpoint Disabled Mask
      OUTTKNEPDISMSK : DOEPMSK_OUTTKNEPDISMSK_Field := 16#0#;
      --  Status Phase Received Mask
      STSPHSERCVDMSK : DOEPMSK_STSPHSERCVDMSK_Field := 16#0#;
      --  Back-to-Back SETUP Packets Received Mask
      BACK2BACKSETUP : DOEPMSK_BACK2BACKSETUP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  OUT Packet Error Mask
      OUTPKTERRMSK   : DOEPMSK_OUTPKTERRMSK_Field := 16#0#;
      --  unspecified
      Reserved_9_11  : Interfaces.EFM32.UInt3 := 16#0#;
      --  Babble Error interrupt Mask
      BBLEERRMSK     : DOEPMSK_BBLEERRMSK_Field := 16#0#;
      --  NAK interrupt Mask
      NAKMSK         : DOEPMSK_NAKMSK_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEPMSK_Register use record
      XFERCOMPLMSK   at 0 range 0 .. 0;
      EPDISBLDMSK    at 0 range 1 .. 1;
      AHBERRMSK      at 0 range 2 .. 2;
      SETUPMSK       at 0 range 3 .. 3;
      OUTTKNEPDISMSK at 0 range 4 .. 4;
      STSPHSERCVDMSK at 0 range 5 .. 5;
      BACK2BACKSETUP at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OUTPKTERRMSK   at 0 range 8 .. 8;
      Reserved_9_11  at 0 range 9 .. 11;
      BBLEERRMSK     at 0 range 12 .. 12;
      NAKMSK         at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   --  DAINT_INEPINT array element
   subtype DAINT_INEPINT_Element is Interfaces.EFM32.Bit;

   --  DAINT_INEPINT array
   type DAINT_INEPINT_Field_Array is array (0 .. 6) of DAINT_INEPINT_Element
     with Component_Size => 1, Size => 7;

   --  Type definition for DAINT_INEPINT
   type DAINT_INEPINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INEPINT as a value
            Val : Interfaces.EFM32.UInt7;
         when True =>
            --  INEPINT as an array
            Arr : DAINT_INEPINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for DAINT_INEPINT_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  DAINT_OUTEPINT array element
   subtype DAINT_OUTEPINT_Element is Interfaces.EFM32.Bit;

   --  DAINT_OUTEPINT array
   type DAINT_OUTEPINT_Field_Array is array (0 .. 6)
     of DAINT_OUTEPINT_Element
     with Component_Size => 1, Size => 7;

   --  Type definition for DAINT_OUTEPINT
   type DAINT_OUTEPINT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OUTEPINT as a value
            Val : Interfaces.EFM32.UInt7;
         when True =>
            --  OUTEPINT as an array
            Arr : DAINT_OUTEPINT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for DAINT_OUTEPINT_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  Device All Endpoints Interrupt Register
   type DAINT_Register is record
      --  Read-only. IN Endpoint 0 Interrupt Bit
      INEPINT        : DAINT_INEPINT_Field;
      --  unspecified
      Reserved_7_15  : Interfaces.EFM32.UInt9;
      --  Read-only. OUT Endpoint 0 Interrupt Bit
      OUTEPINT       : DAINT_OUTEPINT_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAINT_Register use record
      INEPINT        at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      OUTEPINT       at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  DAINTMSK_INEPMSK array element
   subtype DAINTMSK_INEPMSK_Element is Interfaces.EFM32.Bit;

   --  DAINTMSK_INEPMSK array
   type DAINTMSK_INEPMSK_Field_Array is array (0 .. 6)
     of DAINTMSK_INEPMSK_Element
     with Component_Size => 1, Size => 7;

   --  Type definition for DAINTMSK_INEPMSK
   type DAINTMSK_INEPMSK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  INEPMSK as a value
            Val : Interfaces.EFM32.UInt7;
         when True =>
            --  INEPMSK as an array
            Arr : DAINTMSK_INEPMSK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for DAINTMSK_INEPMSK_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  DAINTMSK_OUTEPMSK array element
   subtype DAINTMSK_OUTEPMSK_Element is Interfaces.EFM32.Bit;

   --  DAINTMSK_OUTEPMSK array
   type DAINTMSK_OUTEPMSK_Field_Array is array (0 .. 6)
     of DAINTMSK_OUTEPMSK_Element
     with Component_Size => 1, Size => 7;

   --  Type definition for DAINTMSK_OUTEPMSK
   type DAINTMSK_OUTEPMSK_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  OUTEPMSK as a value
            Val : Interfaces.EFM32.UInt7;
         when True =>
            --  OUTEPMSK as an array
            Arr : DAINTMSK_OUTEPMSK_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 7;

   for DAINTMSK_OUTEPMSK_Field use record
      Val at 0 range 0 .. 6;
      Arr at 0 range 0 .. 6;
   end record;

   --  Device All Endpoints Interrupt Mask Register
   type DAINTMSK_Register is record
      --  IN Endpoint 0 Interrupt mask Bit
      INEPMSK        : DAINTMSK_INEPMSK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_7_15  : Interfaces.EFM32.UInt9 := 16#0#;
      --  OUT Endpoint 0 Interrupt mask Bit
      OUTEPMSK       : DAINTMSK_OUTEPMSK_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DAINTMSK_Register use record
      INEPMSK        at 0 range 0 .. 6;
      Reserved_7_15  at 0 range 7 .. 15;
      OUTEPMSK       at 0 range 16 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype DVBUSDIS_DVBUSDIS_Field is Interfaces.EFM32.UInt16;

   --  Device VBUS Discharge Time Register
   type DVBUSDIS_Register is record
      --  Device VBUS Discharge Time
      DVBUSDIS       : DVBUSDIS_DVBUSDIS_Field := 16#17D7#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DVBUSDIS_Register use record
      DVBUSDIS       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DVBUSPULSE_DVBUSPULSE_Field is Interfaces.EFM32.UInt12;

   --  Device VBUS Pulsing Time Register
   type DVBUSPULSE_Register is record
      --  Device VBUS Pulsing Time
      DVBUSPULSE     : DVBUSPULSE_DVBUSPULSE_Field := 16#5B8#;
      --  unspecified
      Reserved_12_31 : Interfaces.EFM32.UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DVBUSPULSE_Register use record
      DVBUSPULSE     at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype DTHRCTL_NONISOTHREN_Field is Interfaces.EFM32.Bit;
   subtype DTHRCTL_ISOTHREN_Field is Interfaces.EFM32.Bit;
   subtype DTHRCTL_TXTHRLEN_Field is Interfaces.EFM32.UInt9;

   --  AHB Threshold Ratio
   type DTHRCTL_AHBTHRRATIO_Field is
     (--  AHB threshold = MAC threshold.
      DIV1,
      --  AHB threshold = MAC threshold / 2.
      DIV2,
      --  AHB threshold = MAC threshold / 4.
      DIV4,
      --  AHB threshold = MAC threshold / 8.
      DIV8)
     with Size => 2;
   for DTHRCTL_AHBTHRRATIO_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3);

   subtype DTHRCTL_RXTHREN_Field is Interfaces.EFM32.Bit;
   subtype DTHRCTL_RXTHRLEN_Field is Interfaces.EFM32.UInt9;
   subtype DTHRCTL_ARBPRKEN_Field is Interfaces.EFM32.Bit;

   --  Device Threshold Control Register
   type DTHRCTL_Register is record
      --  Non-ISO IN Endpoints Threshold Enable
      NONISOTHREN    : DTHRCTL_NONISOTHREN_Field := 16#0#;
      --  ISO IN Endpoints Threshold Enable
      ISOTHREN       : DTHRCTL_ISOTHREN_Field := 16#0#;
      --  Transmit Threshold Length
      TXTHRLEN       : DTHRCTL_TXTHRLEN_Field := 16#8#;
      --  AHB Threshold Ratio
      AHBTHRRATIO    : DTHRCTL_AHBTHRRATIO_Field := Interfaces.EFM32.USB.DIV1;
      --  unspecified
      Reserved_13_15 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Receive Threshold Enable
      RXTHREN        : DTHRCTL_RXTHREN_Field := 16#0#;
      --  Receive Threshold Length
      RXTHRLEN       : DTHRCTL_RXTHRLEN_Field := 16#8#;
      --  unspecified
      Reserved_26_26 : Interfaces.EFM32.Bit := 16#0#;
      --  Arbiter Parking Enable
      ARBPRKEN       : DTHRCTL_ARBPRKEN_Field := 16#1#;
      --  unspecified
      Reserved_28_31 : Interfaces.EFM32.UInt4 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DTHRCTL_Register use record
      NONISOTHREN    at 0 range 0 .. 0;
      ISOTHREN       at 0 range 1 .. 1;
      TXTHRLEN       at 0 range 2 .. 10;
      AHBTHRRATIO    at 0 range 11 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      RXTHREN        at 0 range 16 .. 16;
      RXTHRLEN       at 0 range 17 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      ARBPRKEN       at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype DIEPEMPMSK_INEPTXFEMPMSK_Field is Interfaces.EFM32.UInt16;

   --  Device IN Endpoint FIFO Empty Interrupt Mask Register
   type DIEPEMPMSK_Register is record
      --  IN EP Tx FIFO Empty Interrupt Mask Bits
      INEPTXFEMPMSK  : DIEPEMPMSK_INEPTXFEMPMSK_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEPEMPMSK_Register use record
      INEPTXFEMPMSK  at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Maximum Packet Size
   type DIEP0CTL_MPS_Field is
     (--  64 bytes.
      Val_64B,
      --  32 bytes.
      Val_32B,
      --  16 bytes.
      Val_16B,
      --  8 bytes.
      Val_8B)
     with Size => 2;
   for DIEP0CTL_MPS_Field use
     (Val_64B => 0,
      Val_32B => 1,
      Val_16B => 2,
      Val_8B => 3);

   subtype DIEP0CTL_USBACTEP_Field is Interfaces.EFM32.Bit;
   subtype DIEP0CTL_NAKSTS_Field is Interfaces.EFM32.Bit;
   subtype DIEP0CTL_EPTYPE_Field is Interfaces.EFM32.UInt2;
   subtype DIEP0CTL_STALL_Field is Interfaces.EFM32.Bit;
   subtype DIEP0CTL_TXFNUM_Field is Interfaces.EFM32.UInt4;
   subtype DIEP0CTL_CNAK_Field is Interfaces.EFM32.Bit;
   subtype DIEP0CTL_SNAK_Field is Interfaces.EFM32.Bit;
   subtype DIEP0CTL_EPDIS_Field is Interfaces.EFM32.Bit;
   subtype DIEP0CTL_EPENA_Field is Interfaces.EFM32.Bit;

   --  Device Control IN Endpoint 0 Control Register
   type DIEP0CTL_Register is record
      --  Maximum Packet Size
      MPS            : DIEP0CTL_MPS_Field := Interfaces.EFM32.USB.Val_64B;
      --  unspecified
      Reserved_2_14  : Interfaces.EFM32.UInt13 := 16#0#;
      --  Read-only. USB Active Endpoint
      USBACTEP       : DIEP0CTL_USBACTEP_Field := 16#1#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Read-only. NAK Status
      NAKSTS         : DIEP0CTL_NAKSTS_Field := 16#0#;
      --  Read-only. Endpoint Type
      EPTYPE         : DIEP0CTL_EPTYPE_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : Interfaces.EFM32.Bit := 16#0#;
      --  Handshake
      STALL          : DIEP0CTL_STALL_Field := 16#0#;
      --  TxFIFO Number
      TXFNUM         : DIEP0CTL_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : DIEP0CTL_CNAK_Field := 16#0#;
      --  Write-only. Set NAK
      SNAK           : DIEP0CTL_SNAK_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Endpoint Disable
      EPDIS          : DIEP0CTL_EPDIS_Field := 16#0#;
      --  Endpoint Enable
      EPENA          : DIEP0CTL_EPENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP0CTL_Register use record
      MPS            at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      USBACTEP       at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DIEP0INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype DIEP0INT_EPDISBLD_Field is Interfaces.EFM32.Bit;
   subtype DIEP0INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype DIEP0INT_TIMEOUT_Field is Interfaces.EFM32.Bit;
   subtype DIEP0INT_INTKNTXFEMP_Field is Interfaces.EFM32.Bit;
   subtype DIEP0INT_INTKNEPMIS_Field is Interfaces.EFM32.Bit;
   subtype DIEP0INT_INEPNAKEFF_Field is Interfaces.EFM32.Bit;
   subtype DIEP0INT_TXFEMP_Field is Interfaces.EFM32.Bit;
   subtype DIEP0INT_TXFIFOUNDRN_Field is Interfaces.EFM32.Bit;
   subtype DIEP0INT_PKTDRPSTS_Field is Interfaces.EFM32.Bit;
   subtype DIEP0INT_BBLEERR_Field is Interfaces.EFM32.Bit;
   subtype DIEP0INT_NAKINTRPT_Field is Interfaces.EFM32.Bit;

   --  Device IN Endpoint 0 Interrupt Register
   type DIEP0INT_Register is record
      --  Transfer Completed Interrupt
      XFERCOMPL      : DIEP0INT_XFERCOMPL_Field := 16#0#;
      --  Endpoint Disabled Interrupt
      EPDISBLD       : DIEP0INT_EPDISBLD_Field := 16#0#;
      --  AHB Error
      AHBERR         : DIEP0INT_AHBERR_Field := 16#0#;
      --  Timeout Condition
      TIMEOUT        : DIEP0INT_TIMEOUT_Field := 16#0#;
      --  IN Token Received When TxFIFO is Empty
      INTKNTXFEMP    : DIEP0INT_INTKNTXFEMP_Field := 16#0#;
      --  IN Token Received with EP Mismatch
      INTKNEPMIS     : DIEP0INT_INTKNEPMIS_Field := 16#0#;
      --  IN Endpoint NAK Effective
      INEPNAKEFF     : DIEP0INT_INEPNAKEFF_Field := 16#0#;
      --  Read-only. Transmit FIFO Empty
      TXFEMP         : DIEP0INT_TXFEMP_Field := 16#1#;
      --  Fifo Underrun
      TXFIFOUNDRN    : DIEP0INT_TXFIFOUNDRN_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Packet Drop Status
      PKTDRPSTS      : DIEP0INT_PKTDRPSTS_Field := 16#0#;
      --  Babble Interrupt
      BBLEERR        : DIEP0INT_BBLEERR_Field := 16#0#;
      --  NAK Interrupt
      NAKINTRPT      : DIEP0INT_NAKINTRPT_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP0INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      EPDISBLD       at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      TIMEOUT        at 0 range 3 .. 3;
      INTKNTXFEMP    at 0 range 4 .. 4;
      INTKNEPMIS     at 0 range 5 .. 5;
      INEPNAKEFF     at 0 range 6 .. 6;
      TXFEMP         at 0 range 7 .. 7;
      TXFIFOUNDRN    at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      BBLEERR        at 0 range 12 .. 12;
      NAKINTRPT      at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DIEP0TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt7;
   subtype DIEP0TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt2;

   --  Device IN Endpoint 0 Transfer Size Register
   type DIEP0TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : DIEP0TSIZ_XFERSIZE_Field := 16#0#;
      --  unspecified
      Reserved_7_18  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Packet Count
      PKTCNT         : DIEP0TSIZ_PKTCNT_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : Interfaces.EFM32.UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP0TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT         at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype DIEP0TXFSTS_SPCAVAIL_Field is Interfaces.EFM32.UInt16;

   --  Device IN Endpoint Transmit FIFO Status Register 0
   type DIEP0TXFSTS_Register is record
      --  Read-only. IN Endpoint TxFIFO Space Avail
      SPCAVAIL       : DIEP0TXFSTS_SPCAVAIL_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP0TXFSTS_Register use record
      SPCAVAIL       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DIEP0_CTL_MPS_Field is Interfaces.EFM32.UInt11;
   subtype DIEP0_CTL_USBACTEP_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_CTL_DPIDEOF_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_CTL_NAKSTS_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type DIEP0_CTL_EPTYPE_Field is
     (--  Control Endpoint.
      CONTROL,
      --  Isochronous Endpoint.
      ISO,
      --  Bulk Endpoint.
      BULK,
      --  Interrupt Endpoint.
      INT)
     with Size => 2;
   for DIEP0_CTL_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype DIEP0_CTL_STALL_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_CTL_TXFNUM_Field is Interfaces.EFM32.UInt4;
   subtype DIEP0_CTL_CNAK_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_CTL_SNAK_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_CTL_SETD0PIDEF_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_CTL_SETD1PIDOF_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_CTL_EPDIS_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_CTL_EPENA_Field is Interfaces.EFM32.Bit;

   --  Device Control IN Endpoint x+1 Control Register
   type DIEP0_CTL_Register is record
      --  Maximum Packet Size
      MPS            : DIEP0_CTL_MPS_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.EFM32.UInt4 := 16#0#;
      --  USB Active Endpoint
      USBACTEP       : DIEP0_CTL_USBACTEP_Field := 16#0#;
      --  Read-only. Endpoint Data PID / Even or Odd Frame
      DPIDEOF        : DIEP0_CTL_DPIDEOF_Field := 16#0#;
      --  Read-only. NAK Status
      NAKSTS         : DIEP0_CTL_NAKSTS_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : DIEP0_CTL_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  unspecified
      Reserved_20_20 : Interfaces.EFM32.Bit := 16#0#;
      --  Handshake
      STALL          : DIEP0_CTL_STALL_Field := 16#0#;
      --  TxFIFO Number
      TXFNUM         : DIEP0_CTL_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : DIEP0_CTL_CNAK_Field := 16#0#;
      --  Write-only. Set NAK
      SNAK           : DIEP0_CTL_SNAK_Field := 16#0#;
      --  Write-only. Set DATA0 PID / Even Frame
      SETD0PIDEF     : DIEP0_CTL_SETD0PIDEF_Field := 16#0#;
      --  Write-only. Set DATA1 PID / Odd Frame
      SETD1PIDOF     : DIEP0_CTL_SETD1PIDOF_Field := 16#0#;
      --  Endpoint Disable
      EPDIS          : DIEP0_CTL_EPDIS_Field := 16#0#;
      --  Endpoint Enable
      EPENA          : DIEP0_CTL_EPENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP0_CTL_Register use record
      MPS            at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP       at 0 range 15 .. 15;
      DPIDEOF        at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SETD0PIDEF     at 0 range 28 .. 28;
      SETD1PIDOF     at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DIEP0_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_INT_EPDISBLD_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_INT_TIMEOUT_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_INT_INTKNTXFEMP_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_INT_INTKNEPMIS_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_INT_INEPNAKEFF_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_INT_TXFEMP_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_INT_TXFIFOUNDRN_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_INT_PKTDRPSTS_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_INT_BBLEERR_Field is Interfaces.EFM32.Bit;
   subtype DIEP0_INT_NAKINTRPT_Field is Interfaces.EFM32.Bit;

   --  Device IN Endpoint x+1 Interrupt Register
   type DIEP0_INT_Register is record
      --  Transfer Completed Interrupt
      XFERCOMPL      : DIEP0_INT_XFERCOMPL_Field := 16#0#;
      --  Endpoint Disabled Interrupt
      EPDISBLD       : DIEP0_INT_EPDISBLD_Field := 16#0#;
      --  AHB Error
      AHBERR         : DIEP0_INT_AHBERR_Field := 16#0#;
      --  Timeout Condition
      TIMEOUT        : DIEP0_INT_TIMEOUT_Field := 16#0#;
      --  IN Token Received When TxFIFO is Empty
      INTKNTXFEMP    : DIEP0_INT_INTKNTXFEMP_Field := 16#0#;
      --  IN Token Received with EP Mismatch
      INTKNEPMIS     : DIEP0_INT_INTKNEPMIS_Field := 16#0#;
      --  IN Endpoint NAK Effective
      INEPNAKEFF     : DIEP0_INT_INEPNAKEFF_Field := 16#0#;
      --  Read-only. Transmit FIFO Empty
      TXFEMP         : DIEP0_INT_TXFEMP_Field := 16#1#;
      --  Fifo Underrun
      TXFIFOUNDRN    : DIEP0_INT_TXFIFOUNDRN_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Packet Drop Status
      PKTDRPSTS      : DIEP0_INT_PKTDRPSTS_Field := 16#0#;
      --  Babble Interrupt
      BBLEERR        : DIEP0_INT_BBLEERR_Field := 16#0#;
      --  NAK Interrupt
      NAKINTRPT      : DIEP0_INT_NAKINTRPT_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP0_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      EPDISBLD       at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      TIMEOUT        at 0 range 3 .. 3;
      INTKNTXFEMP    at 0 range 4 .. 4;
      INTKNEPMIS     at 0 range 5 .. 5;
      INEPNAKEFF     at 0 range 6 .. 6;
      TXFEMP         at 0 range 7 .. 7;
      TXFIFOUNDRN    at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      BBLEERR        at 0 range 12 .. 12;
      NAKINTRPT      at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DIEP0_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype DIEP0_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;
   subtype DIEP0_TSIZ_MC_Field is Interfaces.EFM32.UInt2;

   --  Device IN Endpoint x+1 Transfer Size Register
   type DIEP0_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : DIEP0_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : DIEP0_TSIZ_PKTCNT_Field := 16#0#;
      --  Multi Count
      MC             : DIEP0_TSIZ_MC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP0_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      MC             at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DIEP0_DTXFSTS_SPCAVAIL_Field is Interfaces.EFM32.UInt16;

   --  Device IN Endpoint Transmit FIFO Status Register 1
   type DIEP0_DTXFSTS_Register is record
      --  Read-only. IN Endpoint TxFIFO Space Avail
      SPCAVAIL       : DIEP0_DTXFSTS_SPCAVAIL_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP0_DTXFSTS_Register use record
      SPCAVAIL       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DIEP1_CTL_MPS_Field is Interfaces.EFM32.UInt11;
   subtype DIEP1_CTL_USBACTEP_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_CTL_DPIDEOF_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_CTL_NAKSTS_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type DIEP1_CTL_EPTYPE_Field is
     (--  Control Endpoint.
      CONTROL,
      --  Isochronous Endpoint.
      ISO,
      --  Bulk Endpoint.
      BULK,
      --  Interrupt Endpoint.
      INT)
     with Size => 2;
   for DIEP1_CTL_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype DIEP1_CTL_STALL_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_CTL_TXFNUM_Field is Interfaces.EFM32.UInt4;
   subtype DIEP1_CTL_CNAK_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_CTL_SNAK_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_CTL_SETD0PIDEF_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_CTL_SETD1PIDOF_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_CTL_EPDIS_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_CTL_EPENA_Field is Interfaces.EFM32.Bit;

   --  Device Control IN Endpoint x+1 Control Register
   type DIEP1_CTL_Register is record
      --  Maximum Packet Size
      MPS            : DIEP1_CTL_MPS_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.EFM32.UInt4 := 16#0#;
      --  USB Active Endpoint
      USBACTEP       : DIEP1_CTL_USBACTEP_Field := 16#0#;
      --  Read-only. Endpoint Data PID / Even or Odd Frame
      DPIDEOF        : DIEP1_CTL_DPIDEOF_Field := 16#0#;
      --  Read-only. NAK Status
      NAKSTS         : DIEP1_CTL_NAKSTS_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : DIEP1_CTL_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  unspecified
      Reserved_20_20 : Interfaces.EFM32.Bit := 16#0#;
      --  Handshake
      STALL          : DIEP1_CTL_STALL_Field := 16#0#;
      --  TxFIFO Number
      TXFNUM         : DIEP1_CTL_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : DIEP1_CTL_CNAK_Field := 16#0#;
      --  Write-only. Set NAK
      SNAK           : DIEP1_CTL_SNAK_Field := 16#0#;
      --  Write-only. Set DATA0 PID / Even Frame
      SETD0PIDEF     : DIEP1_CTL_SETD0PIDEF_Field := 16#0#;
      --  Write-only. Set DATA1 PID / Odd Frame
      SETD1PIDOF     : DIEP1_CTL_SETD1PIDOF_Field := 16#0#;
      --  Endpoint Disable
      EPDIS          : DIEP1_CTL_EPDIS_Field := 16#0#;
      --  Endpoint Enable
      EPENA          : DIEP1_CTL_EPENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP1_CTL_Register use record
      MPS            at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP       at 0 range 15 .. 15;
      DPIDEOF        at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SETD0PIDEF     at 0 range 28 .. 28;
      SETD1PIDOF     at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DIEP1_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_INT_EPDISBLD_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_INT_TIMEOUT_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_INT_INTKNTXFEMP_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_INT_INTKNEPMIS_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_INT_INEPNAKEFF_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_INT_TXFEMP_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_INT_TXFIFOUNDRN_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_INT_PKTDRPSTS_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_INT_BBLEERR_Field is Interfaces.EFM32.Bit;
   subtype DIEP1_INT_NAKINTRPT_Field is Interfaces.EFM32.Bit;

   --  Device IN Endpoint x+1 Interrupt Register
   type DIEP1_INT_Register is record
      --  Transfer Completed Interrupt
      XFERCOMPL      : DIEP1_INT_XFERCOMPL_Field := 16#0#;
      --  Endpoint Disabled Interrupt
      EPDISBLD       : DIEP1_INT_EPDISBLD_Field := 16#0#;
      --  AHB Error
      AHBERR         : DIEP1_INT_AHBERR_Field := 16#0#;
      --  Timeout Condition
      TIMEOUT        : DIEP1_INT_TIMEOUT_Field := 16#0#;
      --  IN Token Received When TxFIFO is Empty
      INTKNTXFEMP    : DIEP1_INT_INTKNTXFEMP_Field := 16#0#;
      --  IN Token Received with EP Mismatch
      INTKNEPMIS     : DIEP1_INT_INTKNEPMIS_Field := 16#0#;
      --  IN Endpoint NAK Effective
      INEPNAKEFF     : DIEP1_INT_INEPNAKEFF_Field := 16#0#;
      --  Read-only. Transmit FIFO Empty
      TXFEMP         : DIEP1_INT_TXFEMP_Field := 16#1#;
      --  Fifo Underrun
      TXFIFOUNDRN    : DIEP1_INT_TXFIFOUNDRN_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Packet Drop Status
      PKTDRPSTS      : DIEP1_INT_PKTDRPSTS_Field := 16#0#;
      --  Babble Interrupt
      BBLEERR        : DIEP1_INT_BBLEERR_Field := 16#0#;
      --  NAK Interrupt
      NAKINTRPT      : DIEP1_INT_NAKINTRPT_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP1_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      EPDISBLD       at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      TIMEOUT        at 0 range 3 .. 3;
      INTKNTXFEMP    at 0 range 4 .. 4;
      INTKNEPMIS     at 0 range 5 .. 5;
      INEPNAKEFF     at 0 range 6 .. 6;
      TXFEMP         at 0 range 7 .. 7;
      TXFIFOUNDRN    at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      BBLEERR        at 0 range 12 .. 12;
      NAKINTRPT      at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DIEP1_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype DIEP1_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;
   subtype DIEP1_TSIZ_MC_Field is Interfaces.EFM32.UInt2;

   --  Device IN Endpoint x+1 Transfer Size Register
   type DIEP1_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : DIEP1_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : DIEP1_TSIZ_PKTCNT_Field := 16#0#;
      --  Multi Count
      MC             : DIEP1_TSIZ_MC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP1_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      MC             at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DIEP1_DTXFSTS_SPCAVAIL_Field is Interfaces.EFM32.UInt16;

   --  Device IN Endpoint Transmit FIFO Status Register 1
   type DIEP1_DTXFSTS_Register is record
      --  Read-only. IN Endpoint TxFIFO Space Avail
      SPCAVAIL       : DIEP1_DTXFSTS_SPCAVAIL_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP1_DTXFSTS_Register use record
      SPCAVAIL       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DIEP2_CTL_MPS_Field is Interfaces.EFM32.UInt11;
   subtype DIEP2_CTL_USBACTEP_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_CTL_DPIDEOF_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_CTL_NAKSTS_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type DIEP2_CTL_EPTYPE_Field is
     (--  Control Endpoint.
      CONTROL,
      --  Isochronous Endpoint.
      ISO,
      --  Bulk Endpoint.
      BULK,
      --  Interrupt Endpoint.
      INT)
     with Size => 2;
   for DIEP2_CTL_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype DIEP2_CTL_STALL_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_CTL_TXFNUM_Field is Interfaces.EFM32.UInt4;
   subtype DIEP2_CTL_CNAK_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_CTL_SNAK_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_CTL_SETD0PIDEF_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_CTL_SETD1PIDOF_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_CTL_EPDIS_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_CTL_EPENA_Field is Interfaces.EFM32.Bit;

   --  Device Control IN Endpoint x+1 Control Register
   type DIEP2_CTL_Register is record
      --  Maximum Packet Size
      MPS            : DIEP2_CTL_MPS_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.EFM32.UInt4 := 16#0#;
      --  USB Active Endpoint
      USBACTEP       : DIEP2_CTL_USBACTEP_Field := 16#0#;
      --  Read-only. Endpoint Data PID / Even or Odd Frame
      DPIDEOF        : DIEP2_CTL_DPIDEOF_Field := 16#0#;
      --  Read-only. NAK Status
      NAKSTS         : DIEP2_CTL_NAKSTS_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : DIEP2_CTL_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  unspecified
      Reserved_20_20 : Interfaces.EFM32.Bit := 16#0#;
      --  Handshake
      STALL          : DIEP2_CTL_STALL_Field := 16#0#;
      --  TxFIFO Number
      TXFNUM         : DIEP2_CTL_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : DIEP2_CTL_CNAK_Field := 16#0#;
      --  Write-only. Set NAK
      SNAK           : DIEP2_CTL_SNAK_Field := 16#0#;
      --  Write-only. Set DATA0 PID / Even Frame
      SETD0PIDEF     : DIEP2_CTL_SETD0PIDEF_Field := 16#0#;
      --  Write-only. Set DATA1 PID / Odd Frame
      SETD1PIDOF     : DIEP2_CTL_SETD1PIDOF_Field := 16#0#;
      --  Endpoint Disable
      EPDIS          : DIEP2_CTL_EPDIS_Field := 16#0#;
      --  Endpoint Enable
      EPENA          : DIEP2_CTL_EPENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP2_CTL_Register use record
      MPS            at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP       at 0 range 15 .. 15;
      DPIDEOF        at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SETD0PIDEF     at 0 range 28 .. 28;
      SETD1PIDOF     at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DIEP2_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_INT_EPDISBLD_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_INT_TIMEOUT_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_INT_INTKNTXFEMP_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_INT_INTKNEPMIS_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_INT_INEPNAKEFF_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_INT_TXFEMP_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_INT_TXFIFOUNDRN_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_INT_PKTDRPSTS_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_INT_BBLEERR_Field is Interfaces.EFM32.Bit;
   subtype DIEP2_INT_NAKINTRPT_Field is Interfaces.EFM32.Bit;

   --  Device IN Endpoint x+1 Interrupt Register
   type DIEP2_INT_Register is record
      --  Transfer Completed Interrupt
      XFERCOMPL      : DIEP2_INT_XFERCOMPL_Field := 16#0#;
      --  Endpoint Disabled Interrupt
      EPDISBLD       : DIEP2_INT_EPDISBLD_Field := 16#0#;
      --  AHB Error
      AHBERR         : DIEP2_INT_AHBERR_Field := 16#0#;
      --  Timeout Condition
      TIMEOUT        : DIEP2_INT_TIMEOUT_Field := 16#0#;
      --  IN Token Received When TxFIFO is Empty
      INTKNTXFEMP    : DIEP2_INT_INTKNTXFEMP_Field := 16#0#;
      --  IN Token Received with EP Mismatch
      INTKNEPMIS     : DIEP2_INT_INTKNEPMIS_Field := 16#0#;
      --  IN Endpoint NAK Effective
      INEPNAKEFF     : DIEP2_INT_INEPNAKEFF_Field := 16#0#;
      --  Read-only. Transmit FIFO Empty
      TXFEMP         : DIEP2_INT_TXFEMP_Field := 16#1#;
      --  Fifo Underrun
      TXFIFOUNDRN    : DIEP2_INT_TXFIFOUNDRN_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Packet Drop Status
      PKTDRPSTS      : DIEP2_INT_PKTDRPSTS_Field := 16#0#;
      --  Babble Interrupt
      BBLEERR        : DIEP2_INT_BBLEERR_Field := 16#0#;
      --  NAK Interrupt
      NAKINTRPT      : DIEP2_INT_NAKINTRPT_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP2_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      EPDISBLD       at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      TIMEOUT        at 0 range 3 .. 3;
      INTKNTXFEMP    at 0 range 4 .. 4;
      INTKNEPMIS     at 0 range 5 .. 5;
      INEPNAKEFF     at 0 range 6 .. 6;
      TXFEMP         at 0 range 7 .. 7;
      TXFIFOUNDRN    at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      BBLEERR        at 0 range 12 .. 12;
      NAKINTRPT      at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DIEP2_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype DIEP2_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;
   subtype DIEP2_TSIZ_MC_Field is Interfaces.EFM32.UInt2;

   --  Device IN Endpoint x+1 Transfer Size Register
   type DIEP2_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : DIEP2_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : DIEP2_TSIZ_PKTCNT_Field := 16#0#;
      --  Multi Count
      MC             : DIEP2_TSIZ_MC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP2_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      MC             at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DIEP2_DTXFSTS_SPCAVAIL_Field is Interfaces.EFM32.UInt16;

   --  Device IN Endpoint Transmit FIFO Status Register 1
   type DIEP2_DTXFSTS_Register is record
      --  Read-only. IN Endpoint TxFIFO Space Avail
      SPCAVAIL       : DIEP2_DTXFSTS_SPCAVAIL_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP2_DTXFSTS_Register use record
      SPCAVAIL       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DIEP3_CTL_MPS_Field is Interfaces.EFM32.UInt11;
   subtype DIEP3_CTL_USBACTEP_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_CTL_DPIDEOF_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_CTL_NAKSTS_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type DIEP3_CTL_EPTYPE_Field is
     (--  Control Endpoint.
      CONTROL,
      --  Isochronous Endpoint.
      ISO,
      --  Bulk Endpoint.
      BULK,
      --  Interrupt Endpoint.
      INT)
     with Size => 2;
   for DIEP3_CTL_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype DIEP3_CTL_STALL_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_CTL_TXFNUM_Field is Interfaces.EFM32.UInt4;
   subtype DIEP3_CTL_CNAK_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_CTL_SNAK_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_CTL_SETD0PIDEF_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_CTL_SETD1PIDOF_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_CTL_EPDIS_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_CTL_EPENA_Field is Interfaces.EFM32.Bit;

   --  Device Control IN Endpoint x+1 Control Register
   type DIEP3_CTL_Register is record
      --  Maximum Packet Size
      MPS            : DIEP3_CTL_MPS_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.EFM32.UInt4 := 16#0#;
      --  USB Active Endpoint
      USBACTEP       : DIEP3_CTL_USBACTEP_Field := 16#0#;
      --  Read-only. Endpoint Data PID / Even or Odd Frame
      DPIDEOF        : DIEP3_CTL_DPIDEOF_Field := 16#0#;
      --  Read-only. NAK Status
      NAKSTS         : DIEP3_CTL_NAKSTS_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : DIEP3_CTL_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  unspecified
      Reserved_20_20 : Interfaces.EFM32.Bit := 16#0#;
      --  Handshake
      STALL          : DIEP3_CTL_STALL_Field := 16#0#;
      --  TxFIFO Number
      TXFNUM         : DIEP3_CTL_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : DIEP3_CTL_CNAK_Field := 16#0#;
      --  Write-only. Set NAK
      SNAK           : DIEP3_CTL_SNAK_Field := 16#0#;
      --  Write-only. Set DATA0 PID / Even Frame
      SETD0PIDEF     : DIEP3_CTL_SETD0PIDEF_Field := 16#0#;
      --  Write-only. Set DATA1 PID / Odd Frame
      SETD1PIDOF     : DIEP3_CTL_SETD1PIDOF_Field := 16#0#;
      --  Endpoint Disable
      EPDIS          : DIEP3_CTL_EPDIS_Field := 16#0#;
      --  Endpoint Enable
      EPENA          : DIEP3_CTL_EPENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP3_CTL_Register use record
      MPS            at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP       at 0 range 15 .. 15;
      DPIDEOF        at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SETD0PIDEF     at 0 range 28 .. 28;
      SETD1PIDOF     at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DIEP3_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_INT_EPDISBLD_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_INT_TIMEOUT_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_INT_INTKNTXFEMP_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_INT_INTKNEPMIS_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_INT_INEPNAKEFF_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_INT_TXFEMP_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_INT_TXFIFOUNDRN_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_INT_PKTDRPSTS_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_INT_BBLEERR_Field is Interfaces.EFM32.Bit;
   subtype DIEP3_INT_NAKINTRPT_Field is Interfaces.EFM32.Bit;

   --  Device IN Endpoint x+1 Interrupt Register
   type DIEP3_INT_Register is record
      --  Transfer Completed Interrupt
      XFERCOMPL      : DIEP3_INT_XFERCOMPL_Field := 16#0#;
      --  Endpoint Disabled Interrupt
      EPDISBLD       : DIEP3_INT_EPDISBLD_Field := 16#0#;
      --  AHB Error
      AHBERR         : DIEP3_INT_AHBERR_Field := 16#0#;
      --  Timeout Condition
      TIMEOUT        : DIEP3_INT_TIMEOUT_Field := 16#0#;
      --  IN Token Received When TxFIFO is Empty
      INTKNTXFEMP    : DIEP3_INT_INTKNTXFEMP_Field := 16#0#;
      --  IN Token Received with EP Mismatch
      INTKNEPMIS     : DIEP3_INT_INTKNEPMIS_Field := 16#0#;
      --  IN Endpoint NAK Effective
      INEPNAKEFF     : DIEP3_INT_INEPNAKEFF_Field := 16#0#;
      --  Read-only. Transmit FIFO Empty
      TXFEMP         : DIEP3_INT_TXFEMP_Field := 16#1#;
      --  Fifo Underrun
      TXFIFOUNDRN    : DIEP3_INT_TXFIFOUNDRN_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Packet Drop Status
      PKTDRPSTS      : DIEP3_INT_PKTDRPSTS_Field := 16#0#;
      --  Babble Interrupt
      BBLEERR        : DIEP3_INT_BBLEERR_Field := 16#0#;
      --  NAK Interrupt
      NAKINTRPT      : DIEP3_INT_NAKINTRPT_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP3_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      EPDISBLD       at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      TIMEOUT        at 0 range 3 .. 3;
      INTKNTXFEMP    at 0 range 4 .. 4;
      INTKNEPMIS     at 0 range 5 .. 5;
      INEPNAKEFF     at 0 range 6 .. 6;
      TXFEMP         at 0 range 7 .. 7;
      TXFIFOUNDRN    at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      BBLEERR        at 0 range 12 .. 12;
      NAKINTRPT      at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DIEP3_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype DIEP3_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;
   subtype DIEP3_TSIZ_MC_Field is Interfaces.EFM32.UInt2;

   --  Device IN Endpoint x+1 Transfer Size Register
   type DIEP3_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : DIEP3_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : DIEP3_TSIZ_PKTCNT_Field := 16#0#;
      --  Multi Count
      MC             : DIEP3_TSIZ_MC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP3_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      MC             at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DIEP3_DTXFSTS_SPCAVAIL_Field is Interfaces.EFM32.UInt16;

   --  Device IN Endpoint Transmit FIFO Status Register 1
   type DIEP3_DTXFSTS_Register is record
      --  Read-only. IN Endpoint TxFIFO Space Avail
      SPCAVAIL       : DIEP3_DTXFSTS_SPCAVAIL_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP3_DTXFSTS_Register use record
      SPCAVAIL       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DIEP4_CTL_MPS_Field is Interfaces.EFM32.UInt11;
   subtype DIEP4_CTL_USBACTEP_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_CTL_DPIDEOF_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_CTL_NAKSTS_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type DIEP4_CTL_EPTYPE_Field is
     (--  Control Endpoint.
      CONTROL,
      --  Isochronous Endpoint.
      ISO,
      --  Bulk Endpoint.
      BULK,
      --  Interrupt Endpoint.
      INT)
     with Size => 2;
   for DIEP4_CTL_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype DIEP4_CTL_STALL_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_CTL_TXFNUM_Field is Interfaces.EFM32.UInt4;
   subtype DIEP4_CTL_CNAK_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_CTL_SNAK_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_CTL_SETD0PIDEF_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_CTL_SETD1PIDOF_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_CTL_EPDIS_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_CTL_EPENA_Field is Interfaces.EFM32.Bit;

   --  Device Control IN Endpoint x+1 Control Register
   type DIEP4_CTL_Register is record
      --  Maximum Packet Size
      MPS            : DIEP4_CTL_MPS_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.EFM32.UInt4 := 16#0#;
      --  USB Active Endpoint
      USBACTEP       : DIEP4_CTL_USBACTEP_Field := 16#0#;
      --  Read-only. Endpoint Data PID / Even or Odd Frame
      DPIDEOF        : DIEP4_CTL_DPIDEOF_Field := 16#0#;
      --  Read-only. NAK Status
      NAKSTS         : DIEP4_CTL_NAKSTS_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : DIEP4_CTL_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  unspecified
      Reserved_20_20 : Interfaces.EFM32.Bit := 16#0#;
      --  Handshake
      STALL          : DIEP4_CTL_STALL_Field := 16#0#;
      --  TxFIFO Number
      TXFNUM         : DIEP4_CTL_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : DIEP4_CTL_CNAK_Field := 16#0#;
      --  Write-only. Set NAK
      SNAK           : DIEP4_CTL_SNAK_Field := 16#0#;
      --  Write-only. Set DATA0 PID / Even Frame
      SETD0PIDEF     : DIEP4_CTL_SETD0PIDEF_Field := 16#0#;
      --  Write-only. Set DATA1 PID / Odd Frame
      SETD1PIDOF     : DIEP4_CTL_SETD1PIDOF_Field := 16#0#;
      --  Endpoint Disable
      EPDIS          : DIEP4_CTL_EPDIS_Field := 16#0#;
      --  Endpoint Enable
      EPENA          : DIEP4_CTL_EPENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP4_CTL_Register use record
      MPS            at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP       at 0 range 15 .. 15;
      DPIDEOF        at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SETD0PIDEF     at 0 range 28 .. 28;
      SETD1PIDOF     at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DIEP4_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_INT_EPDISBLD_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_INT_TIMEOUT_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_INT_INTKNTXFEMP_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_INT_INTKNEPMIS_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_INT_INEPNAKEFF_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_INT_TXFEMP_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_INT_TXFIFOUNDRN_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_INT_PKTDRPSTS_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_INT_BBLEERR_Field is Interfaces.EFM32.Bit;
   subtype DIEP4_INT_NAKINTRPT_Field is Interfaces.EFM32.Bit;

   --  Device IN Endpoint x+1 Interrupt Register
   type DIEP4_INT_Register is record
      --  Transfer Completed Interrupt
      XFERCOMPL      : DIEP4_INT_XFERCOMPL_Field := 16#0#;
      --  Endpoint Disabled Interrupt
      EPDISBLD       : DIEP4_INT_EPDISBLD_Field := 16#0#;
      --  AHB Error
      AHBERR         : DIEP4_INT_AHBERR_Field := 16#0#;
      --  Timeout Condition
      TIMEOUT        : DIEP4_INT_TIMEOUT_Field := 16#0#;
      --  IN Token Received When TxFIFO is Empty
      INTKNTXFEMP    : DIEP4_INT_INTKNTXFEMP_Field := 16#0#;
      --  IN Token Received with EP Mismatch
      INTKNEPMIS     : DIEP4_INT_INTKNEPMIS_Field := 16#0#;
      --  IN Endpoint NAK Effective
      INEPNAKEFF     : DIEP4_INT_INEPNAKEFF_Field := 16#0#;
      --  Read-only. Transmit FIFO Empty
      TXFEMP         : DIEP4_INT_TXFEMP_Field := 16#1#;
      --  Fifo Underrun
      TXFIFOUNDRN    : DIEP4_INT_TXFIFOUNDRN_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Packet Drop Status
      PKTDRPSTS      : DIEP4_INT_PKTDRPSTS_Field := 16#0#;
      --  Babble Interrupt
      BBLEERR        : DIEP4_INT_BBLEERR_Field := 16#0#;
      --  NAK Interrupt
      NAKINTRPT      : DIEP4_INT_NAKINTRPT_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP4_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      EPDISBLD       at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      TIMEOUT        at 0 range 3 .. 3;
      INTKNTXFEMP    at 0 range 4 .. 4;
      INTKNEPMIS     at 0 range 5 .. 5;
      INEPNAKEFF     at 0 range 6 .. 6;
      TXFEMP         at 0 range 7 .. 7;
      TXFIFOUNDRN    at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      BBLEERR        at 0 range 12 .. 12;
      NAKINTRPT      at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DIEP4_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype DIEP4_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;
   subtype DIEP4_TSIZ_MC_Field is Interfaces.EFM32.UInt2;

   --  Device IN Endpoint x+1 Transfer Size Register
   type DIEP4_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : DIEP4_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : DIEP4_TSIZ_PKTCNT_Field := 16#0#;
      --  Multi Count
      MC             : DIEP4_TSIZ_MC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP4_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      MC             at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DIEP4_DTXFSTS_SPCAVAIL_Field is Interfaces.EFM32.UInt16;

   --  Device IN Endpoint Transmit FIFO Status Register 1
   type DIEP4_DTXFSTS_Register is record
      --  Read-only. IN Endpoint TxFIFO Space Avail
      SPCAVAIL       : DIEP4_DTXFSTS_SPCAVAIL_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP4_DTXFSTS_Register use record
      SPCAVAIL       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DIEP5_CTL_MPS_Field is Interfaces.EFM32.UInt11;
   subtype DIEP5_CTL_USBACTEP_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_CTL_DPIDEOF_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_CTL_NAKSTS_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type DIEP5_CTL_EPTYPE_Field is
     (--  Control Endpoint.
      CONTROL,
      --  Isochronous Endpoint.
      ISO,
      --  Bulk Endpoint.
      BULK,
      --  Interrupt Endpoint.
      INT)
     with Size => 2;
   for DIEP5_CTL_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype DIEP5_CTL_STALL_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_CTL_TXFNUM_Field is Interfaces.EFM32.UInt4;
   subtype DIEP5_CTL_CNAK_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_CTL_SNAK_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_CTL_SETD0PIDEF_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_CTL_SETD1PIDOF_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_CTL_EPDIS_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_CTL_EPENA_Field is Interfaces.EFM32.Bit;

   --  Device Control IN Endpoint x+1 Control Register
   type DIEP5_CTL_Register is record
      --  Maximum Packet Size
      MPS            : DIEP5_CTL_MPS_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.EFM32.UInt4 := 16#0#;
      --  USB Active Endpoint
      USBACTEP       : DIEP5_CTL_USBACTEP_Field := 16#0#;
      --  Read-only. Endpoint Data PID / Even or Odd Frame
      DPIDEOF        : DIEP5_CTL_DPIDEOF_Field := 16#0#;
      --  Read-only. NAK Status
      NAKSTS         : DIEP5_CTL_NAKSTS_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : DIEP5_CTL_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  unspecified
      Reserved_20_20 : Interfaces.EFM32.Bit := 16#0#;
      --  Handshake
      STALL          : DIEP5_CTL_STALL_Field := 16#0#;
      --  TxFIFO Number
      TXFNUM         : DIEP5_CTL_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : DIEP5_CTL_CNAK_Field := 16#0#;
      --  Write-only. Set NAK
      SNAK           : DIEP5_CTL_SNAK_Field := 16#0#;
      --  Write-only. Set DATA0 PID / Even Frame
      SETD0PIDEF     : DIEP5_CTL_SETD0PIDEF_Field := 16#0#;
      --  Write-only. Set DATA1 PID / Odd Frame
      SETD1PIDOF     : DIEP5_CTL_SETD1PIDOF_Field := 16#0#;
      --  Endpoint Disable
      EPDIS          : DIEP5_CTL_EPDIS_Field := 16#0#;
      --  Endpoint Enable
      EPENA          : DIEP5_CTL_EPENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP5_CTL_Register use record
      MPS            at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP       at 0 range 15 .. 15;
      DPIDEOF        at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SETD0PIDEF     at 0 range 28 .. 28;
      SETD1PIDOF     at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DIEP5_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_INT_EPDISBLD_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_INT_TIMEOUT_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_INT_INTKNTXFEMP_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_INT_INTKNEPMIS_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_INT_INEPNAKEFF_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_INT_TXFEMP_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_INT_TXFIFOUNDRN_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_INT_PKTDRPSTS_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_INT_BBLEERR_Field is Interfaces.EFM32.Bit;
   subtype DIEP5_INT_NAKINTRPT_Field is Interfaces.EFM32.Bit;

   --  Device IN Endpoint x+1 Interrupt Register
   type DIEP5_INT_Register is record
      --  Transfer Completed Interrupt
      XFERCOMPL      : DIEP5_INT_XFERCOMPL_Field := 16#0#;
      --  Endpoint Disabled Interrupt
      EPDISBLD       : DIEP5_INT_EPDISBLD_Field := 16#0#;
      --  AHB Error
      AHBERR         : DIEP5_INT_AHBERR_Field := 16#0#;
      --  Timeout Condition
      TIMEOUT        : DIEP5_INT_TIMEOUT_Field := 16#0#;
      --  IN Token Received When TxFIFO is Empty
      INTKNTXFEMP    : DIEP5_INT_INTKNTXFEMP_Field := 16#0#;
      --  IN Token Received with EP Mismatch
      INTKNEPMIS     : DIEP5_INT_INTKNEPMIS_Field := 16#0#;
      --  IN Endpoint NAK Effective
      INEPNAKEFF     : DIEP5_INT_INEPNAKEFF_Field := 16#0#;
      --  Read-only. Transmit FIFO Empty
      TXFEMP         : DIEP5_INT_TXFEMP_Field := 16#1#;
      --  Fifo Underrun
      TXFIFOUNDRN    : DIEP5_INT_TXFIFOUNDRN_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Packet Drop Status
      PKTDRPSTS      : DIEP5_INT_PKTDRPSTS_Field := 16#0#;
      --  Babble Interrupt
      BBLEERR        : DIEP5_INT_BBLEERR_Field := 16#0#;
      --  NAK Interrupt
      NAKINTRPT      : DIEP5_INT_NAKINTRPT_Field := 16#0#;
      --  unspecified
      Reserved_14_31 : Interfaces.EFM32.UInt18 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP5_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      EPDISBLD       at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      TIMEOUT        at 0 range 3 .. 3;
      INTKNTXFEMP    at 0 range 4 .. 4;
      INTKNEPMIS     at 0 range 5 .. 5;
      INEPNAKEFF     at 0 range 6 .. 6;
      TXFEMP         at 0 range 7 .. 7;
      TXFIFOUNDRN    at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      BBLEERR        at 0 range 12 .. 12;
      NAKINTRPT      at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype DIEP5_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype DIEP5_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;
   subtype DIEP5_TSIZ_MC_Field is Interfaces.EFM32.UInt2;

   --  Device IN Endpoint x+1 Transfer Size Register
   type DIEP5_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : DIEP5_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : DIEP5_TSIZ_PKTCNT_Field := 16#0#;
      --  Multi Count
      MC             : DIEP5_TSIZ_MC_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP5_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      MC             at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DIEP5_DTXFSTS_SPCAVAIL_Field is Interfaces.EFM32.UInt16;

   --  Device IN Endpoint Transmit FIFO Status Register 1
   type DIEP5_DTXFSTS_Register is record
      --  Read-only. IN Endpoint TxFIFO Space Avail
      SPCAVAIL       : DIEP5_DTXFSTS_SPCAVAIL_Field;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DIEP5_DTXFSTS_Register use record
      SPCAVAIL       at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  Maximum Packet Size
   type DOEP0CTL_MPS_Field is
     (--  64 bytes.
      Val_64B,
      --  32 bytes.
      Val_32B,
      --  16 bytes.
      Val_16B,
      --  8 bytes.
      Val_8B)
     with Size => 2;
   for DOEP0CTL_MPS_Field use
     (Val_64B => 0,
      Val_32B => 1,
      Val_16B => 2,
      Val_8B => 3);

   subtype DOEP0CTL_USBACTEP_Field is Interfaces.EFM32.Bit;
   subtype DOEP0CTL_NAKSTS_Field is Interfaces.EFM32.Bit;
   subtype DOEP0CTL_EPTYPE_Field is Interfaces.EFM32.UInt2;
   subtype DOEP0CTL_SNP_Field is Interfaces.EFM32.Bit;
   subtype DOEP0CTL_STALL_Field is Interfaces.EFM32.Bit;
   subtype DOEP0CTL_CNAK_Field is Interfaces.EFM32.Bit;
   subtype DOEP0CTL_SNAK_Field is Interfaces.EFM32.Bit;
   subtype DOEP0CTL_EPDIS_Field is Interfaces.EFM32.Bit;
   subtype DOEP0CTL_EPENA_Field is Interfaces.EFM32.Bit;

   --  Device Control OUT Endpoint 0 Control Register
   type DOEP0CTL_Register is record
      --  Read-only. Maximum Packet Size
      MPS            : DOEP0CTL_MPS_Field := Interfaces.EFM32.USB.Val_64B;
      --  unspecified
      Reserved_2_14  : Interfaces.EFM32.UInt13 := 16#0#;
      --  Read-only. USB Active Endpoint
      USBACTEP       : DOEP0CTL_USBACTEP_Field := 16#1#;
      --  unspecified
      Reserved_16_16 : Interfaces.EFM32.Bit := 16#0#;
      --  Read-only. NAK Status
      NAKSTS         : DOEP0CTL_NAKSTS_Field := 16#0#;
      --  Read-only. Endpoint Type
      EPTYPE         : DOEP0CTL_EPTYPE_Field := 16#0#;
      --  Snoop Mode
      SNP            : DOEP0CTL_SNP_Field := 16#0#;
      --  Handshake
      STALL          : DOEP0CTL_STALL_Field := 16#0#;
      --  unspecified
      Reserved_22_25 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : DOEP0CTL_CNAK_Field := 16#0#;
      --  Write-only. Set NAK
      SNAK           : DOEP0CTL_SNAK_Field := 16#0#;
      --  unspecified
      Reserved_28_29 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Read-only. Endpoint Disable
      EPDIS          : DOEP0CTL_EPDIS_Field := 16#0#;
      --  Endpoint Enable
      EPENA          : DOEP0CTL_EPENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP0CTL_Register use record
      MPS            at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      USBACTEP       at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      SNP            at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DOEP0INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype DOEP0INT_EPDISBLD_Field is Interfaces.EFM32.Bit;
   subtype DOEP0INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP0INT_SETUP_Field is Interfaces.EFM32.Bit;
   subtype DOEP0INT_OUTTKNEPDIS_Field is Interfaces.EFM32.Bit;
   subtype DOEP0INT_STSPHSERCVD_Field is Interfaces.EFM32.Bit;
   subtype DOEP0INT_BACK2BACKSETUP_Field is Interfaces.EFM32.Bit;
   subtype DOEP0INT_OUTPKTERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP0INT_PKTDRPSTS_Field is Interfaces.EFM32.Bit;
   subtype DOEP0INT_BBLEERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP0INT_NAKINTRPT_Field is Interfaces.EFM32.Bit;
   subtype DOEP0INT_STUPPKTRCVD_Field is Interfaces.EFM32.Bit;

   --  Device OUT Endpoint 0 Interrupt Register
   type DOEP0INT_Register is record
      --  Transfer Completed Interrupt
      XFERCOMPL      : DOEP0INT_XFERCOMPL_Field := 16#0#;
      --  Endpoint Disabled Interrupt
      EPDISBLD       : DOEP0INT_EPDISBLD_Field := 16#0#;
      --  AHB Error
      AHBERR         : DOEP0INT_AHBERR_Field := 16#0#;
      --  Setup Phase Done
      SETUP          : DOEP0INT_SETUP_Field := 16#0#;
      --  OUT Token Received When Endpoint Disabled
      OUTTKNEPDIS    : DOEP0INT_OUTTKNEPDIS_Field := 16#0#;
      --  Status Phase Received For Control Write
      STSPHSERCVD    : DOEP0INT_STSPHSERCVD_Field := 16#0#;
      --  Back-to-Back SETUP Packets Received
      BACK2BACKSETUP : DOEP0INT_BACK2BACKSETUP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  OUT Packet Error
      OUTPKTERR      : DOEP0INT_OUTPKTERR_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Packet Drop Status
      PKTDRPSTS      : DOEP0INT_PKTDRPSTS_Field := 16#0#;
      --  NAK Interrupt
      BBLEERR        : DOEP0INT_BBLEERR_Field := 16#0#;
      --  NAK Interrupt
      NAKINTRPT      : DOEP0INT_NAKINTRPT_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.EFM32.Bit := 16#0#;
      STUPPKTRCVD    : DOEP0INT_STUPPKTRCVD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP0INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      EPDISBLD       at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      SETUP          at 0 range 3 .. 3;
      OUTTKNEPDIS    at 0 range 4 .. 4;
      STSPHSERCVD    at 0 range 5 .. 5;
      BACK2BACKSETUP at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OUTPKTERR      at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      BBLEERR        at 0 range 12 .. 12;
      NAKINTRPT      at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      STUPPKTRCVD    at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DOEP0TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt7;
   subtype DOEP0TSIZ_PKTCNT_Field is Interfaces.EFM32.Bit;
   subtype DOEP0TSIZ_SUPCNT_Field is Interfaces.EFM32.UInt2;

   --  Device OUT Endpoint 0 Transfer Size Register
   type DOEP0TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : DOEP0TSIZ_XFERSIZE_Field := 16#0#;
      --  unspecified
      Reserved_7_18  : Interfaces.EFM32.UInt12 := 16#0#;
      --  Packet Count
      PKTCNT         : DOEP0TSIZ_PKTCNT_Field := 16#0#;
      --  unspecified
      Reserved_20_28 : Interfaces.EFM32.UInt9 := 16#0#;
      --  SETUP Packet Count
      SUPCNT         : DOEP0TSIZ_SUPCNT_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP0TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT         at 0 range 19 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      SUPCNT         at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DOEP0_CTL_MPS_Field is Interfaces.EFM32.UInt11;
   subtype DOEP0_CTL_USBACTEP_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_CTL_DPIDEOF_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_CTL_NAKSTS_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type DOEP0_CTL_EPTYPE_Field is
     (--  Control Endpoint.
      CONTROL,
      --  Isochronous Endpoint.
      ISO,
      --  Bulk Endpoint.
      BULK,
      --  Interrupt Endpoint.
      INT)
     with Size => 2;
   for DOEP0_CTL_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype DOEP0_CTL_SNP_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_CTL_STALL_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_CTL_CNAK_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_CTL_SNAK_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_CTL_SETD0PIDEF_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_CTL_SETD1PIDOF_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_CTL_EPDIS_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_CTL_EPENA_Field is Interfaces.EFM32.Bit;

   --  Device Control OUT Endpoint x+1 Control Register
   type DOEP0_CTL_Register is record
      --  Maximum Packet Size
      MPS            : DOEP0_CTL_MPS_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.EFM32.UInt4 := 16#0#;
      --  USB Active Endpoint
      USBACTEP       : DOEP0_CTL_USBACTEP_Field := 16#0#;
      --  Read-only. Endpoint Data PID / Even-odd Frame
      DPIDEOF        : DOEP0_CTL_DPIDEOF_Field := 16#0#;
      --  Read-only. NAK Status
      NAKSTS         : DOEP0_CTL_NAKSTS_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : DOEP0_CTL_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Snoop Mode
      SNP            : DOEP0_CTL_SNP_Field := 16#0#;
      --  STALL Handshake
      STALL          : DOEP0_CTL_STALL_Field := 16#0#;
      --  unspecified
      Reserved_22_25 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : DOEP0_CTL_CNAK_Field := 16#0#;
      --  Write-only. Set NAK
      SNAK           : DOEP0_CTL_SNAK_Field := 16#0#;
      --  Write-only. Set DATA0 PID / Even Frame
      SETD0PIDEF     : DOEP0_CTL_SETD0PIDEF_Field := 16#0#;
      --  Write-only. Set DATA1 PID / Odd Frame
      SETD1PIDOF     : DOEP0_CTL_SETD1PIDOF_Field := 16#0#;
      --  Endpoint Disable
      EPDIS          : DOEP0_CTL_EPDIS_Field := 16#0#;
      --  Endpoint Enable
      EPENA          : DOEP0_CTL_EPENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP0_CTL_Register use record
      MPS            at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP       at 0 range 15 .. 15;
      DPIDEOF        at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      SNP            at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SETD0PIDEF     at 0 range 28 .. 28;
      SETD1PIDOF     at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DOEP0_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_INT_EPDISBLD_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_INT_SETUP_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_INT_OUTTKNEPDIS_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_INT_STSPHSERCVD_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_INT_BACK2BACKSETUP_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_INT_OUTPKTERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_INT_PKTDRPSTS_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_INT_BBLEERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_INT_NAKINTRPT_Field is Interfaces.EFM32.Bit;
   subtype DOEP0_INT_STUPPKTRCVD_Field is Interfaces.EFM32.Bit;

   --  Device OUT Endpoint x+1 Interrupt Register
   type DOEP0_INT_Register is record
      --  Transfer Completed Interrupt
      XFERCOMPL      : DOEP0_INT_XFERCOMPL_Field := 16#0#;
      --  Endpoint Disabled Interrupt
      EPDISBLD       : DOEP0_INT_EPDISBLD_Field := 16#0#;
      --  AHB Error
      AHBERR         : DOEP0_INT_AHBERR_Field := 16#0#;
      --  Setup Phase Done
      SETUP          : DOEP0_INT_SETUP_Field := 16#0#;
      --  OUT Token Received When Endpoint Disabled
      OUTTKNEPDIS    : DOEP0_INT_OUTTKNEPDIS_Field := 16#0#;
      --  Status Phase Received For Control Write
      STSPHSERCVD    : DOEP0_INT_STSPHSERCVD_Field := 16#0#;
      --  Back-to-Back SETUP Packets Received
      BACK2BACKSETUP : DOEP0_INT_BACK2BACKSETUP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  OUT Packet Error
      OUTPKTERR      : DOEP0_INT_OUTPKTERR_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Packet Drop Status
      PKTDRPSTS      : DOEP0_INT_PKTDRPSTS_Field := 16#0#;
      --  Babble Error
      BBLEERR        : DOEP0_INT_BBLEERR_Field := 16#0#;
      --  NAK Interrupt
      NAKINTRPT      : DOEP0_INT_NAKINTRPT_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.EFM32.Bit := 16#0#;
      STUPPKTRCVD    : DOEP0_INT_STUPPKTRCVD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP0_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      EPDISBLD       at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      SETUP          at 0 range 3 .. 3;
      OUTTKNEPDIS    at 0 range 4 .. 4;
      STSPHSERCVD    at 0 range 5 .. 5;
      BACK2BACKSETUP at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OUTPKTERR      at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      BBLEERR        at 0 range 12 .. 12;
      NAKINTRPT      at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      STUPPKTRCVD    at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DOEP0_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype DOEP0_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  Receive Data PID / SETUP Packet Count
   type DOEP0_TSIZ_RXDPIDSUPCNT_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID / 1 Packet.
      DATA2,
      --  DATA1 PID / 2 Packets.
      DATA1,
      --  MDATA PID / 3 Packets.
      MDATA)
     with Size => 2;
   for DOEP0_TSIZ_RXDPIDSUPCNT_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Device OUT Endpoint x+1 Transfer Size Register
   type DOEP0_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : DOEP0_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : DOEP0_TSIZ_PKTCNT_Field := 16#0#;
      --  Read-only. Receive Data PID / SETUP Packet Count
      RXDPIDSUPCNT   : DOEP0_TSIZ_RXDPIDSUPCNT_Field :=
                        Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP0_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      RXDPIDSUPCNT   at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DOEP1_CTL_MPS_Field is Interfaces.EFM32.UInt11;
   subtype DOEP1_CTL_USBACTEP_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_CTL_DPIDEOF_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_CTL_NAKSTS_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type DOEP1_CTL_EPTYPE_Field is
     (--  Control Endpoint.
      CONTROL,
      --  Isochronous Endpoint.
      ISO,
      --  Bulk Endpoint.
      BULK,
      --  Interrupt Endpoint.
      INT)
     with Size => 2;
   for DOEP1_CTL_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype DOEP1_CTL_SNP_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_CTL_STALL_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_CTL_CNAK_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_CTL_SNAK_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_CTL_SETD0PIDEF_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_CTL_SETD1PIDOF_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_CTL_EPDIS_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_CTL_EPENA_Field is Interfaces.EFM32.Bit;

   --  Device Control OUT Endpoint x+1 Control Register
   type DOEP1_CTL_Register is record
      --  Maximum Packet Size
      MPS            : DOEP1_CTL_MPS_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.EFM32.UInt4 := 16#0#;
      --  USB Active Endpoint
      USBACTEP       : DOEP1_CTL_USBACTEP_Field := 16#0#;
      --  Read-only. Endpoint Data PID / Even-odd Frame
      DPIDEOF        : DOEP1_CTL_DPIDEOF_Field := 16#0#;
      --  Read-only. NAK Status
      NAKSTS         : DOEP1_CTL_NAKSTS_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : DOEP1_CTL_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Snoop Mode
      SNP            : DOEP1_CTL_SNP_Field := 16#0#;
      --  STALL Handshake
      STALL          : DOEP1_CTL_STALL_Field := 16#0#;
      --  unspecified
      Reserved_22_25 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : DOEP1_CTL_CNAK_Field := 16#0#;
      --  Write-only. Set NAK
      SNAK           : DOEP1_CTL_SNAK_Field := 16#0#;
      --  Write-only. Set DATA0 PID / Even Frame
      SETD0PIDEF     : DOEP1_CTL_SETD0PIDEF_Field := 16#0#;
      --  Write-only. Set DATA1 PID / Odd Frame
      SETD1PIDOF     : DOEP1_CTL_SETD1PIDOF_Field := 16#0#;
      --  Endpoint Disable
      EPDIS          : DOEP1_CTL_EPDIS_Field := 16#0#;
      --  Endpoint Enable
      EPENA          : DOEP1_CTL_EPENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP1_CTL_Register use record
      MPS            at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP       at 0 range 15 .. 15;
      DPIDEOF        at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      SNP            at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SETD0PIDEF     at 0 range 28 .. 28;
      SETD1PIDOF     at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DOEP1_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_INT_EPDISBLD_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_INT_SETUP_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_INT_OUTTKNEPDIS_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_INT_STSPHSERCVD_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_INT_BACK2BACKSETUP_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_INT_OUTPKTERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_INT_PKTDRPSTS_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_INT_BBLEERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_INT_NAKINTRPT_Field is Interfaces.EFM32.Bit;
   subtype DOEP1_INT_STUPPKTRCVD_Field is Interfaces.EFM32.Bit;

   --  Device OUT Endpoint x+1 Interrupt Register
   type DOEP1_INT_Register is record
      --  Transfer Completed Interrupt
      XFERCOMPL      : DOEP1_INT_XFERCOMPL_Field := 16#0#;
      --  Endpoint Disabled Interrupt
      EPDISBLD       : DOEP1_INT_EPDISBLD_Field := 16#0#;
      --  AHB Error
      AHBERR         : DOEP1_INT_AHBERR_Field := 16#0#;
      --  Setup Phase Done
      SETUP          : DOEP1_INT_SETUP_Field := 16#0#;
      --  OUT Token Received When Endpoint Disabled
      OUTTKNEPDIS    : DOEP1_INT_OUTTKNEPDIS_Field := 16#0#;
      --  Status Phase Received For Control Write
      STSPHSERCVD    : DOEP1_INT_STSPHSERCVD_Field := 16#0#;
      --  Back-to-Back SETUP Packets Received
      BACK2BACKSETUP : DOEP1_INT_BACK2BACKSETUP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  OUT Packet Error
      OUTPKTERR      : DOEP1_INT_OUTPKTERR_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Packet Drop Status
      PKTDRPSTS      : DOEP1_INT_PKTDRPSTS_Field := 16#0#;
      --  Babble Error
      BBLEERR        : DOEP1_INT_BBLEERR_Field := 16#0#;
      --  NAK Interrupt
      NAKINTRPT      : DOEP1_INT_NAKINTRPT_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.EFM32.Bit := 16#0#;
      STUPPKTRCVD    : DOEP1_INT_STUPPKTRCVD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP1_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      EPDISBLD       at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      SETUP          at 0 range 3 .. 3;
      OUTTKNEPDIS    at 0 range 4 .. 4;
      STSPHSERCVD    at 0 range 5 .. 5;
      BACK2BACKSETUP at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OUTPKTERR      at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      BBLEERR        at 0 range 12 .. 12;
      NAKINTRPT      at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      STUPPKTRCVD    at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DOEP1_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype DOEP1_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  Receive Data PID / SETUP Packet Count
   type DOEP1_TSIZ_RXDPIDSUPCNT_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID / 1 Packet.
      DATA2,
      --  DATA1 PID / 2 Packets.
      DATA1,
      --  MDATA PID / 3 Packets.
      MDATA)
     with Size => 2;
   for DOEP1_TSIZ_RXDPIDSUPCNT_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Device OUT Endpoint x+1 Transfer Size Register
   type DOEP1_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : DOEP1_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : DOEP1_TSIZ_PKTCNT_Field := 16#0#;
      --  Read-only. Receive Data PID / SETUP Packet Count
      RXDPIDSUPCNT   : DOEP1_TSIZ_RXDPIDSUPCNT_Field :=
                        Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP1_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      RXDPIDSUPCNT   at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DOEP2_CTL_MPS_Field is Interfaces.EFM32.UInt11;
   subtype DOEP2_CTL_USBACTEP_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_CTL_DPIDEOF_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_CTL_NAKSTS_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type DOEP2_CTL_EPTYPE_Field is
     (--  Control Endpoint.
      CONTROL,
      --  Isochronous Endpoint.
      ISO,
      --  Bulk Endpoint.
      BULK,
      --  Interrupt Endpoint.
      INT)
     with Size => 2;
   for DOEP2_CTL_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype DOEP2_CTL_SNP_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_CTL_STALL_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_CTL_CNAK_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_CTL_SNAK_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_CTL_SETD0PIDEF_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_CTL_SETD1PIDOF_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_CTL_EPDIS_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_CTL_EPENA_Field is Interfaces.EFM32.Bit;

   --  Device Control OUT Endpoint x+1 Control Register
   type DOEP2_CTL_Register is record
      --  Maximum Packet Size
      MPS            : DOEP2_CTL_MPS_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.EFM32.UInt4 := 16#0#;
      --  USB Active Endpoint
      USBACTEP       : DOEP2_CTL_USBACTEP_Field := 16#0#;
      --  Read-only. Endpoint Data PID / Even-odd Frame
      DPIDEOF        : DOEP2_CTL_DPIDEOF_Field := 16#0#;
      --  Read-only. NAK Status
      NAKSTS         : DOEP2_CTL_NAKSTS_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : DOEP2_CTL_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Snoop Mode
      SNP            : DOEP2_CTL_SNP_Field := 16#0#;
      --  STALL Handshake
      STALL          : DOEP2_CTL_STALL_Field := 16#0#;
      --  unspecified
      Reserved_22_25 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : DOEP2_CTL_CNAK_Field := 16#0#;
      --  Write-only. Set NAK
      SNAK           : DOEP2_CTL_SNAK_Field := 16#0#;
      --  Write-only. Set DATA0 PID / Even Frame
      SETD0PIDEF     : DOEP2_CTL_SETD0PIDEF_Field := 16#0#;
      --  Write-only. Set DATA1 PID / Odd Frame
      SETD1PIDOF     : DOEP2_CTL_SETD1PIDOF_Field := 16#0#;
      --  Endpoint Disable
      EPDIS          : DOEP2_CTL_EPDIS_Field := 16#0#;
      --  Endpoint Enable
      EPENA          : DOEP2_CTL_EPENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP2_CTL_Register use record
      MPS            at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP       at 0 range 15 .. 15;
      DPIDEOF        at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      SNP            at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SETD0PIDEF     at 0 range 28 .. 28;
      SETD1PIDOF     at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DOEP2_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_INT_EPDISBLD_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_INT_SETUP_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_INT_OUTTKNEPDIS_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_INT_STSPHSERCVD_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_INT_BACK2BACKSETUP_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_INT_OUTPKTERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_INT_PKTDRPSTS_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_INT_BBLEERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_INT_NAKINTRPT_Field is Interfaces.EFM32.Bit;
   subtype DOEP2_INT_STUPPKTRCVD_Field is Interfaces.EFM32.Bit;

   --  Device OUT Endpoint x+1 Interrupt Register
   type DOEP2_INT_Register is record
      --  Transfer Completed Interrupt
      XFERCOMPL      : DOEP2_INT_XFERCOMPL_Field := 16#0#;
      --  Endpoint Disabled Interrupt
      EPDISBLD       : DOEP2_INT_EPDISBLD_Field := 16#0#;
      --  AHB Error
      AHBERR         : DOEP2_INT_AHBERR_Field := 16#0#;
      --  Setup Phase Done
      SETUP          : DOEP2_INT_SETUP_Field := 16#0#;
      --  OUT Token Received When Endpoint Disabled
      OUTTKNEPDIS    : DOEP2_INT_OUTTKNEPDIS_Field := 16#0#;
      --  Status Phase Received For Control Write
      STSPHSERCVD    : DOEP2_INT_STSPHSERCVD_Field := 16#0#;
      --  Back-to-Back SETUP Packets Received
      BACK2BACKSETUP : DOEP2_INT_BACK2BACKSETUP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  OUT Packet Error
      OUTPKTERR      : DOEP2_INT_OUTPKTERR_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Packet Drop Status
      PKTDRPSTS      : DOEP2_INT_PKTDRPSTS_Field := 16#0#;
      --  Babble Error
      BBLEERR        : DOEP2_INT_BBLEERR_Field := 16#0#;
      --  NAK Interrupt
      NAKINTRPT      : DOEP2_INT_NAKINTRPT_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.EFM32.Bit := 16#0#;
      STUPPKTRCVD    : DOEP2_INT_STUPPKTRCVD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP2_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      EPDISBLD       at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      SETUP          at 0 range 3 .. 3;
      OUTTKNEPDIS    at 0 range 4 .. 4;
      STSPHSERCVD    at 0 range 5 .. 5;
      BACK2BACKSETUP at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OUTPKTERR      at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      BBLEERR        at 0 range 12 .. 12;
      NAKINTRPT      at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      STUPPKTRCVD    at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DOEP2_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype DOEP2_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  Receive Data PID / SETUP Packet Count
   type DOEP2_TSIZ_RXDPIDSUPCNT_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID / 1 Packet.
      DATA2,
      --  DATA1 PID / 2 Packets.
      DATA1,
      --  MDATA PID / 3 Packets.
      MDATA)
     with Size => 2;
   for DOEP2_TSIZ_RXDPIDSUPCNT_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Device OUT Endpoint x+1 Transfer Size Register
   type DOEP2_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : DOEP2_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : DOEP2_TSIZ_PKTCNT_Field := 16#0#;
      --  Read-only. Receive Data PID / SETUP Packet Count
      RXDPIDSUPCNT   : DOEP2_TSIZ_RXDPIDSUPCNT_Field :=
                        Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP2_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      RXDPIDSUPCNT   at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DOEP3_CTL_MPS_Field is Interfaces.EFM32.UInt11;
   subtype DOEP3_CTL_USBACTEP_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_CTL_DPIDEOF_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_CTL_NAKSTS_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type DOEP3_CTL_EPTYPE_Field is
     (--  Control Endpoint.
      CONTROL,
      --  Isochronous Endpoint.
      ISO,
      --  Bulk Endpoint.
      BULK,
      --  Interrupt Endpoint.
      INT)
     with Size => 2;
   for DOEP3_CTL_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype DOEP3_CTL_SNP_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_CTL_STALL_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_CTL_CNAK_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_CTL_SNAK_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_CTL_SETD0PIDEF_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_CTL_SETD1PIDOF_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_CTL_EPDIS_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_CTL_EPENA_Field is Interfaces.EFM32.Bit;

   --  Device Control OUT Endpoint x+1 Control Register
   type DOEP3_CTL_Register is record
      --  Maximum Packet Size
      MPS            : DOEP3_CTL_MPS_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.EFM32.UInt4 := 16#0#;
      --  USB Active Endpoint
      USBACTEP       : DOEP3_CTL_USBACTEP_Field := 16#0#;
      --  Read-only. Endpoint Data PID / Even-odd Frame
      DPIDEOF        : DOEP3_CTL_DPIDEOF_Field := 16#0#;
      --  Read-only. NAK Status
      NAKSTS         : DOEP3_CTL_NAKSTS_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : DOEP3_CTL_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Snoop Mode
      SNP            : DOEP3_CTL_SNP_Field := 16#0#;
      --  STALL Handshake
      STALL          : DOEP3_CTL_STALL_Field := 16#0#;
      --  unspecified
      Reserved_22_25 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : DOEP3_CTL_CNAK_Field := 16#0#;
      --  Write-only. Set NAK
      SNAK           : DOEP3_CTL_SNAK_Field := 16#0#;
      --  Write-only. Set DATA0 PID / Even Frame
      SETD0PIDEF     : DOEP3_CTL_SETD0PIDEF_Field := 16#0#;
      --  Write-only. Set DATA1 PID / Odd Frame
      SETD1PIDOF     : DOEP3_CTL_SETD1PIDOF_Field := 16#0#;
      --  Endpoint Disable
      EPDIS          : DOEP3_CTL_EPDIS_Field := 16#0#;
      --  Endpoint Enable
      EPENA          : DOEP3_CTL_EPENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP3_CTL_Register use record
      MPS            at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP       at 0 range 15 .. 15;
      DPIDEOF        at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      SNP            at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SETD0PIDEF     at 0 range 28 .. 28;
      SETD1PIDOF     at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DOEP3_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_INT_EPDISBLD_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_INT_SETUP_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_INT_OUTTKNEPDIS_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_INT_STSPHSERCVD_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_INT_BACK2BACKSETUP_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_INT_OUTPKTERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_INT_PKTDRPSTS_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_INT_BBLEERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_INT_NAKINTRPT_Field is Interfaces.EFM32.Bit;
   subtype DOEP3_INT_STUPPKTRCVD_Field is Interfaces.EFM32.Bit;

   --  Device OUT Endpoint x+1 Interrupt Register
   type DOEP3_INT_Register is record
      --  Transfer Completed Interrupt
      XFERCOMPL      : DOEP3_INT_XFERCOMPL_Field := 16#0#;
      --  Endpoint Disabled Interrupt
      EPDISBLD       : DOEP3_INT_EPDISBLD_Field := 16#0#;
      --  AHB Error
      AHBERR         : DOEP3_INT_AHBERR_Field := 16#0#;
      --  Setup Phase Done
      SETUP          : DOEP3_INT_SETUP_Field := 16#0#;
      --  OUT Token Received When Endpoint Disabled
      OUTTKNEPDIS    : DOEP3_INT_OUTTKNEPDIS_Field := 16#0#;
      --  Status Phase Received For Control Write
      STSPHSERCVD    : DOEP3_INT_STSPHSERCVD_Field := 16#0#;
      --  Back-to-Back SETUP Packets Received
      BACK2BACKSETUP : DOEP3_INT_BACK2BACKSETUP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  OUT Packet Error
      OUTPKTERR      : DOEP3_INT_OUTPKTERR_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Packet Drop Status
      PKTDRPSTS      : DOEP3_INT_PKTDRPSTS_Field := 16#0#;
      --  Babble Error
      BBLEERR        : DOEP3_INT_BBLEERR_Field := 16#0#;
      --  NAK Interrupt
      NAKINTRPT      : DOEP3_INT_NAKINTRPT_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.EFM32.Bit := 16#0#;
      STUPPKTRCVD    : DOEP3_INT_STUPPKTRCVD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP3_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      EPDISBLD       at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      SETUP          at 0 range 3 .. 3;
      OUTTKNEPDIS    at 0 range 4 .. 4;
      STSPHSERCVD    at 0 range 5 .. 5;
      BACK2BACKSETUP at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OUTPKTERR      at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      BBLEERR        at 0 range 12 .. 12;
      NAKINTRPT      at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      STUPPKTRCVD    at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DOEP3_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype DOEP3_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  Receive Data PID / SETUP Packet Count
   type DOEP3_TSIZ_RXDPIDSUPCNT_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID / 1 Packet.
      DATA2,
      --  DATA1 PID / 2 Packets.
      DATA1,
      --  MDATA PID / 3 Packets.
      MDATA)
     with Size => 2;
   for DOEP3_TSIZ_RXDPIDSUPCNT_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Device OUT Endpoint x+1 Transfer Size Register
   type DOEP3_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : DOEP3_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : DOEP3_TSIZ_PKTCNT_Field := 16#0#;
      --  Read-only. Receive Data PID / SETUP Packet Count
      RXDPIDSUPCNT   : DOEP3_TSIZ_RXDPIDSUPCNT_Field :=
                        Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP3_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      RXDPIDSUPCNT   at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DOEP4_CTL_MPS_Field is Interfaces.EFM32.UInt11;
   subtype DOEP4_CTL_USBACTEP_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_CTL_DPIDEOF_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_CTL_NAKSTS_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type DOEP4_CTL_EPTYPE_Field is
     (--  Control Endpoint.
      CONTROL,
      --  Isochronous Endpoint.
      ISO,
      --  Bulk Endpoint.
      BULK,
      --  Interrupt Endpoint.
      INT)
     with Size => 2;
   for DOEP4_CTL_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype DOEP4_CTL_SNP_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_CTL_STALL_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_CTL_CNAK_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_CTL_SNAK_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_CTL_SETD0PIDEF_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_CTL_SETD1PIDOF_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_CTL_EPDIS_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_CTL_EPENA_Field is Interfaces.EFM32.Bit;

   --  Device Control OUT Endpoint x+1 Control Register
   type DOEP4_CTL_Register is record
      --  Maximum Packet Size
      MPS            : DOEP4_CTL_MPS_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.EFM32.UInt4 := 16#0#;
      --  USB Active Endpoint
      USBACTEP       : DOEP4_CTL_USBACTEP_Field := 16#0#;
      --  Read-only. Endpoint Data PID / Even-odd Frame
      DPIDEOF        : DOEP4_CTL_DPIDEOF_Field := 16#0#;
      --  Read-only. NAK Status
      NAKSTS         : DOEP4_CTL_NAKSTS_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : DOEP4_CTL_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Snoop Mode
      SNP            : DOEP4_CTL_SNP_Field := 16#0#;
      --  STALL Handshake
      STALL          : DOEP4_CTL_STALL_Field := 16#0#;
      --  unspecified
      Reserved_22_25 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : DOEP4_CTL_CNAK_Field := 16#0#;
      --  Write-only. Set NAK
      SNAK           : DOEP4_CTL_SNAK_Field := 16#0#;
      --  Write-only. Set DATA0 PID / Even Frame
      SETD0PIDEF     : DOEP4_CTL_SETD0PIDEF_Field := 16#0#;
      --  Write-only. Set DATA1 PID / Odd Frame
      SETD1PIDOF     : DOEP4_CTL_SETD1PIDOF_Field := 16#0#;
      --  Endpoint Disable
      EPDIS          : DOEP4_CTL_EPDIS_Field := 16#0#;
      --  Endpoint Enable
      EPENA          : DOEP4_CTL_EPENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP4_CTL_Register use record
      MPS            at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP       at 0 range 15 .. 15;
      DPIDEOF        at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      SNP            at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SETD0PIDEF     at 0 range 28 .. 28;
      SETD1PIDOF     at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DOEP4_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_INT_EPDISBLD_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_INT_SETUP_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_INT_OUTTKNEPDIS_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_INT_STSPHSERCVD_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_INT_BACK2BACKSETUP_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_INT_OUTPKTERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_INT_PKTDRPSTS_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_INT_BBLEERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_INT_NAKINTRPT_Field is Interfaces.EFM32.Bit;
   subtype DOEP4_INT_STUPPKTRCVD_Field is Interfaces.EFM32.Bit;

   --  Device OUT Endpoint x+1 Interrupt Register
   type DOEP4_INT_Register is record
      --  Transfer Completed Interrupt
      XFERCOMPL      : DOEP4_INT_XFERCOMPL_Field := 16#0#;
      --  Endpoint Disabled Interrupt
      EPDISBLD       : DOEP4_INT_EPDISBLD_Field := 16#0#;
      --  AHB Error
      AHBERR         : DOEP4_INT_AHBERR_Field := 16#0#;
      --  Setup Phase Done
      SETUP          : DOEP4_INT_SETUP_Field := 16#0#;
      --  OUT Token Received When Endpoint Disabled
      OUTTKNEPDIS    : DOEP4_INT_OUTTKNEPDIS_Field := 16#0#;
      --  Status Phase Received For Control Write
      STSPHSERCVD    : DOEP4_INT_STSPHSERCVD_Field := 16#0#;
      --  Back-to-Back SETUP Packets Received
      BACK2BACKSETUP : DOEP4_INT_BACK2BACKSETUP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  OUT Packet Error
      OUTPKTERR      : DOEP4_INT_OUTPKTERR_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Packet Drop Status
      PKTDRPSTS      : DOEP4_INT_PKTDRPSTS_Field := 16#0#;
      --  Babble Error
      BBLEERR        : DOEP4_INT_BBLEERR_Field := 16#0#;
      --  NAK Interrupt
      NAKINTRPT      : DOEP4_INT_NAKINTRPT_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.EFM32.Bit := 16#0#;
      STUPPKTRCVD    : DOEP4_INT_STUPPKTRCVD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP4_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      EPDISBLD       at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      SETUP          at 0 range 3 .. 3;
      OUTTKNEPDIS    at 0 range 4 .. 4;
      STSPHSERCVD    at 0 range 5 .. 5;
      BACK2BACKSETUP at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OUTPKTERR      at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      BBLEERR        at 0 range 12 .. 12;
      NAKINTRPT      at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      STUPPKTRCVD    at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DOEP4_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype DOEP4_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  Receive Data PID / SETUP Packet Count
   type DOEP4_TSIZ_RXDPIDSUPCNT_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID / 1 Packet.
      DATA2,
      --  DATA1 PID / 2 Packets.
      DATA1,
      --  MDATA PID / 3 Packets.
      MDATA)
     with Size => 2;
   for DOEP4_TSIZ_RXDPIDSUPCNT_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Device OUT Endpoint x+1 Transfer Size Register
   type DOEP4_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : DOEP4_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : DOEP4_TSIZ_PKTCNT_Field := 16#0#;
      --  Read-only. Receive Data PID / SETUP Packet Count
      RXDPIDSUPCNT   : DOEP4_TSIZ_RXDPIDSUPCNT_Field :=
                        Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP4_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      RXDPIDSUPCNT   at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype DOEP5_CTL_MPS_Field is Interfaces.EFM32.UInt11;
   subtype DOEP5_CTL_USBACTEP_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_CTL_DPIDEOF_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_CTL_NAKSTS_Field is Interfaces.EFM32.Bit;

   --  Endpoint Type
   type DOEP5_CTL_EPTYPE_Field is
     (--  Control Endpoint.
      CONTROL,
      --  Isochronous Endpoint.
      ISO,
      --  Bulk Endpoint.
      BULK,
      --  Interrupt Endpoint.
      INT)
     with Size => 2;
   for DOEP5_CTL_EPTYPE_Field use
     (CONTROL => 0,
      ISO => 1,
      BULK => 2,
      INT => 3);

   subtype DOEP5_CTL_SNP_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_CTL_STALL_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_CTL_CNAK_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_CTL_SNAK_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_CTL_SETD0PIDEF_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_CTL_SETD1PIDOF_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_CTL_EPDIS_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_CTL_EPENA_Field is Interfaces.EFM32.Bit;

   --  Device Control OUT Endpoint x+1 Control Register
   type DOEP5_CTL_Register is record
      --  Maximum Packet Size
      MPS            : DOEP5_CTL_MPS_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : Interfaces.EFM32.UInt4 := 16#0#;
      --  USB Active Endpoint
      USBACTEP       : DOEP5_CTL_USBACTEP_Field := 16#0#;
      --  Read-only. Endpoint Data PID / Even-odd Frame
      DPIDEOF        : DOEP5_CTL_DPIDEOF_Field := 16#0#;
      --  Read-only. NAK Status
      NAKSTS         : DOEP5_CTL_NAKSTS_Field := 16#0#;
      --  Endpoint Type
      EPTYPE         : DOEP5_CTL_EPTYPE_Field := Interfaces.EFM32.USB.CONTROL;
      --  Snoop Mode
      SNP            : DOEP5_CTL_SNP_Field := 16#0#;
      --  STALL Handshake
      STALL          : DOEP5_CTL_STALL_Field := 16#0#;
      --  unspecified
      Reserved_22_25 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : DOEP5_CTL_CNAK_Field := 16#0#;
      --  Write-only. Set NAK
      SNAK           : DOEP5_CTL_SNAK_Field := 16#0#;
      --  Write-only. Set DATA0 PID / Even Frame
      SETD0PIDEF     : DOEP5_CTL_SETD0PIDEF_Field := 16#0#;
      --  Write-only. Set DATA1 PID / Odd Frame
      SETD1PIDOF     : DOEP5_CTL_SETD1PIDOF_Field := 16#0#;
      --  Endpoint Disable
      EPDIS          : DOEP5_CTL_EPDIS_Field := 16#0#;
      --  Endpoint Enable
      EPENA          : DOEP5_CTL_EPENA_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP5_CTL_Register use record
      MPS            at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBACTEP       at 0 range 15 .. 15;
      DPIDEOF        at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYPE         at 0 range 18 .. 19;
      SNP            at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SETD0PIDEF     at 0 range 28 .. 28;
      SETD1PIDOF     at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype DOEP5_INT_XFERCOMPL_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_INT_EPDISBLD_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_INT_AHBERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_INT_SETUP_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_INT_OUTTKNEPDIS_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_INT_STSPHSERCVD_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_INT_BACK2BACKSETUP_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_INT_OUTPKTERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_INT_PKTDRPSTS_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_INT_BBLEERR_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_INT_NAKINTRPT_Field is Interfaces.EFM32.Bit;
   subtype DOEP5_INT_STUPPKTRCVD_Field is Interfaces.EFM32.Bit;

   --  Device OUT Endpoint x+1 Interrupt Register
   type DOEP5_INT_Register is record
      --  Transfer Completed Interrupt
      XFERCOMPL      : DOEP5_INT_XFERCOMPL_Field := 16#0#;
      --  Endpoint Disabled Interrupt
      EPDISBLD       : DOEP5_INT_EPDISBLD_Field := 16#0#;
      --  AHB Error
      AHBERR         : DOEP5_INT_AHBERR_Field := 16#0#;
      --  Setup Phase Done
      SETUP          : DOEP5_INT_SETUP_Field := 16#0#;
      --  OUT Token Received When Endpoint Disabled
      OUTTKNEPDIS    : DOEP5_INT_OUTTKNEPDIS_Field := 16#0#;
      --  Status Phase Received For Control Write
      STSPHSERCVD    : DOEP5_INT_STSPHSERCVD_Field := 16#0#;
      --  Back-to-Back SETUP Packets Received
      BACK2BACKSETUP : DOEP5_INT_BACK2BACKSETUP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  OUT Packet Error
      OUTPKTERR      : DOEP5_INT_OUTPKTERR_Field := 16#0#;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Packet Drop Status
      PKTDRPSTS      : DOEP5_INT_PKTDRPSTS_Field := 16#0#;
      --  Babble Error
      BBLEERR        : DOEP5_INT_BBLEERR_Field := 16#0#;
      --  NAK Interrupt
      NAKINTRPT      : DOEP5_INT_NAKINTRPT_Field := 16#0#;
      --  unspecified
      Reserved_14_14 : Interfaces.EFM32.Bit := 16#0#;
      STUPPKTRCVD    : DOEP5_INT_STUPPKTRCVD_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP5_INT_Register use record
      XFERCOMPL      at 0 range 0 .. 0;
      EPDISBLD       at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      SETUP          at 0 range 3 .. 3;
      OUTTKNEPDIS    at 0 range 4 .. 4;
      STSPHSERCVD    at 0 range 5 .. 5;
      BACK2BACKSETUP at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OUTPKTERR      at 0 range 8 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      BBLEERR        at 0 range 12 .. 12;
      NAKINTRPT      at 0 range 13 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      STUPPKTRCVD    at 0 range 15 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype DOEP5_TSIZ_XFERSIZE_Field is Interfaces.EFM32.UInt19;
   subtype DOEP5_TSIZ_PKTCNT_Field is Interfaces.EFM32.UInt10;

   --  Receive Data PID / SETUP Packet Count
   type DOEP5_TSIZ_RXDPIDSUPCNT_Field is
     (--  DATA0 PID.
      DATA0,
      --  DATA2 PID / 1 Packet.
      DATA2,
      --  DATA1 PID / 2 Packets.
      DATA1,
      --  MDATA PID / 3 Packets.
      MDATA)
     with Size => 2;
   for DOEP5_TSIZ_RXDPIDSUPCNT_Field use
     (DATA0 => 0,
      DATA2 => 1,
      DATA1 => 2,
      MDATA => 3);

   --  Device OUT Endpoint x+1 Transfer Size Register
   type DOEP5_TSIZ_Register is record
      --  Transfer Size
      XFERSIZE       : DOEP5_TSIZ_XFERSIZE_Field := 16#0#;
      --  Packet Count
      PKTCNT         : DOEP5_TSIZ_PKTCNT_Field := 16#0#;
      --  Read-only. Receive Data PID / SETUP Packet Count
      RXDPIDSUPCNT   : DOEP5_TSIZ_RXDPIDSUPCNT_Field :=
                        Interfaces.EFM32.USB.DATA0;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DOEP5_TSIZ_Register use record
      XFERSIZE       at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      RXDPIDSUPCNT   at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype PCGCCTL_STOPPCLK_Field is Interfaces.EFM32.Bit;
   subtype PCGCCTL_GATEHCLK_Field is Interfaces.EFM32.Bit;
   subtype PCGCCTL_PWRCLMP_Field is Interfaces.EFM32.Bit;
   subtype PCGCCTL_RSTPDWNMODULE_Field is Interfaces.EFM32.Bit;
   subtype PCGCCTL_PHYSLEEP_Field is Interfaces.EFM32.Bit;
   subtype PCGCCTL_RESETAFTERSUSP_Field is Interfaces.EFM32.Bit;

   --  Power and Clock Gating Control Register
   type PCGCCTL_Register is record
      --  Stop PHY clock
      STOPPCLK       : PCGCCTL_STOPPCLK_Field := 16#0#;
      --  Gate HCLK
      GATEHCLK       : PCGCCTL_GATEHCLK_Field := 16#0#;
      --  Power Clamp
      PWRCLMP        : PCGCCTL_PWRCLMP_Field := 16#0#;
      --  Reset Power-Down Modules
      RSTPDWNMODULE  : PCGCCTL_RSTPDWNMODULE_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Read-only. PHY In Sleep
      PHYSLEEP       : PCGCCTL_PHYSLEEP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Read-only. Reset after suspend
      RESETAFTERSUSP : PCGCCTL_RESETAFTERSUSP_Field := 16#0#;
      --  unspecified
      Reserved_9_31  : Interfaces.EFM32.UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PCGCCTL_Register use record
      STOPPCLK       at 0 range 0 .. 0;
      GATEHCLK       at 0 range 1 .. 1;
      PWRCLMP        at 0 range 2 .. 2;
      RSTPDWNMODULE  at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      PHYSLEEP       at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      RESETAFTERSUSP at 0 range 8 .. 8;
      Reserved_9_31  at 0 range 9 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USB
   type USB_Peripheral is record
      --  System Control Register
      CTRL          : aliased CTRL_Register;
      --  System Status Register
      STATUS        : aliased STATUS_Register;
      --  Interrupt Flag Register
      IF_k          : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS           : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC           : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN           : aliased IEN_Register;
      --  I/O Routing Register
      ROUTE         : aliased ROUTE_Register;
      --  Charger Detect Configuration Register
      CDCONF        : aliased CDCONF_Register;
      --  Command Register
      CMD           : aliased CMD_Register;
      --  Data TRIM 1 Values for USB DP and DM
      DATTRIM1      : aliased DATTRIM1_Register;
      --  USB LEM Control Register
      LEMCTRL       : aliased LEMCTRL_Register;
      --  I/O Routing Location Register
      ROUTELOC0     : aliased ROUTELOC0_Register;
      --  OTG Control and Status Register
      GOTGCTL       : aliased GOTGCTL_Register;
      --  OTG Interrupt Register
      GOTGINT       : aliased GOTGINT_Register;
      --  AHB Configuration Register
      GAHBCFG       : aliased GAHBCFG_Register;
      --  USB Configuration Register
      GUSBCFG       : aliased GUSBCFG_Register;
      --  Reset Register
      GRSTCTL       : aliased GRSTCTL_Register;
      --  Interrupt Register
      GINTSTS       : aliased GINTSTS_Register;
      --  Interrupt Mask Register
      GINTMSK       : aliased GINTMSK_Register;
      --  Receive Status Debug Read Register
      GRXSTSR       : aliased GRXSTSR_Register;
      --  Receive Status Read /Pop Register
      GRXSTSP       : aliased GRXSTSP_Register;
      --  Receive FIFO Size Register
      GRXFSIZ       : aliased GRXFSIZ_Register;
      --  Non-periodic Transmit FIFO Size Register
      GNPTXFSIZ     : aliased GNPTXFSIZ_Register;
      --  Non-periodic Transmit FIFO/Queue Status Register
      GNPTXSTS      : aliased GNPTXSTS_Register;
      --  Synopsys ID Register
      GSNPSID       : aliased Interfaces.EFM32.UInt32;
      --  Global DFIFO Configuration Register
      GDFIFOCFG     : aliased GDFIFOCFG_Register;
      --  Host Periodic Transmit FIFO Size Register
      HPTXFSIZ      : aliased HPTXFSIZ_Register;
      --  Device IN Endpoint Transmit FIFO Size Register 1
      DIEPTXF1      : aliased DIEPTXF_Register;
      --  Device IN Endpoint Transmit FIFO Size Register 2
      DIEPTXF2      : aliased DIEPTXF_Register;
      --  Device IN Endpoint Transmit FIFO Size Register 3
      DIEPTXF3      : aliased DIEPTXF_Register_1;
      --  Device IN Endpoint Transmit FIFO Size Register 4
      DIEPTXF4      : aliased DIEPTXF_Register_1;
      --  Device IN Endpoint Transmit FIFO Size Register 5
      DIEPTXF5      : aliased DIEPTXF_Register_1;
      --  Device IN Endpoint Transmit FIFO Size Register 6
      DIEPTXF6      : aliased DIEPTXF_Register_1;
      --  Host Configuration Register
      HCFG          : aliased HCFG_Register;
      --  Host Frame Interval Register
      HFIR          : aliased HFIR_Register;
      --  Host Frame Number/Frame Time Remaining Register
      HFNUM         : aliased HFNUM_Register;
      --  Host Periodic Transmit FIFO/Queue Status Register
      HPTXSTS       : aliased HPTXSTS_Register;
      --  Host All Channels Interrupt Register
      HAINT         : aliased HAINT_Register;
      --  Host All Channels Interrupt Mask Register
      HAINTMSK      : aliased HAINTMSK_Register;
      --  Host Port Control and Status Register
      HPRT          : aliased HPRT_Register;
      --  Host Channel x Characteristics Register
      HC0_CHAR      : aliased HC0_CHAR_Register;
      --  Host Channel x Split Control Register
      HC0_SPLT      : aliased HC0_SPLT_Register;
      --  Host Channel x Interrupt Register
      HC0_INT       : aliased HC0_INT_Register;
      --  Host Channel x Interrupt Mask Register
      HC0_INTMSK    : aliased HC0_INTMSK_Register;
      --  Host Channel x Transfer Size Register
      HC0_TSIZ      : aliased HC0_TSIZ_Register;
      --  Host Channel x DMA Address Register
      HC0_DMAADDR   : aliased Interfaces.EFM32.UInt32;
      --  Host Channel x Characteristics Register
      HC1_CHAR      : aliased HC1_CHAR_Register;
      --  Host Channel x Split Control Register
      HC1_SPLT      : aliased HC1_SPLT_Register;
      --  Host Channel x Interrupt Register
      HC1_INT       : aliased HC1_INT_Register;
      --  Host Channel x Interrupt Mask Register
      HC1_INTMSK    : aliased HC1_INTMSK_Register;
      --  Host Channel x Transfer Size Register
      HC1_TSIZ      : aliased HC1_TSIZ_Register;
      --  Host Channel x DMA Address Register
      HC1_DMAADDR   : aliased Interfaces.EFM32.UInt32;
      --  Host Channel x Characteristics Register
      HC2_CHAR      : aliased HC2_CHAR_Register;
      --  Host Channel x Split Control Register
      HC2_SPLT      : aliased HC2_SPLT_Register;
      --  Host Channel x Interrupt Register
      HC2_INT       : aliased HC2_INT_Register;
      --  Host Channel x Interrupt Mask Register
      HC2_INTMSK    : aliased HC2_INTMSK_Register;
      --  Host Channel x Transfer Size Register
      HC2_TSIZ      : aliased HC2_TSIZ_Register;
      --  Host Channel x DMA Address Register
      HC2_DMAADDR   : aliased Interfaces.EFM32.UInt32;
      --  Host Channel x Characteristics Register
      HC3_CHAR      : aliased HC3_CHAR_Register;
      --  Host Channel x Split Control Register
      HC3_SPLT      : aliased HC3_SPLT_Register;
      --  Host Channel x Interrupt Register
      HC3_INT       : aliased HC3_INT_Register;
      --  Host Channel x Interrupt Mask Register
      HC3_INTMSK    : aliased HC3_INTMSK_Register;
      --  Host Channel x Transfer Size Register
      HC3_TSIZ      : aliased HC3_TSIZ_Register;
      --  Host Channel x DMA Address Register
      HC3_DMAADDR   : aliased Interfaces.EFM32.UInt32;
      --  Host Channel x Characteristics Register
      HC4_CHAR      : aliased HC4_CHAR_Register;
      --  Host Channel x Split Control Register
      HC4_SPLT      : aliased HC4_SPLT_Register;
      --  Host Channel x Interrupt Register
      HC4_INT       : aliased HC4_INT_Register;
      --  Host Channel x Interrupt Mask Register
      HC4_INTMSK    : aliased HC4_INTMSK_Register;
      --  Host Channel x Transfer Size Register
      HC4_TSIZ      : aliased HC4_TSIZ_Register;
      --  Host Channel x DMA Address Register
      HC4_DMAADDR   : aliased Interfaces.EFM32.UInt32;
      --  Host Channel x Characteristics Register
      HC5_CHAR      : aliased HC5_CHAR_Register;
      --  Host Channel x Split Control Register
      HC5_SPLT      : aliased HC5_SPLT_Register;
      --  Host Channel x Interrupt Register
      HC5_INT       : aliased HC5_INT_Register;
      --  Host Channel x Interrupt Mask Register
      HC5_INTMSK    : aliased HC5_INTMSK_Register;
      --  Host Channel x Transfer Size Register
      HC5_TSIZ      : aliased HC5_TSIZ_Register;
      --  Host Channel x DMA Address Register
      HC5_DMAADDR   : aliased Interfaces.EFM32.UInt32;
      --  Host Channel x Characteristics Register
      HC6_CHAR      : aliased HC6_CHAR_Register;
      --  Host Channel x Split Control Register
      HC6_SPLT      : aliased HC6_SPLT_Register;
      --  Host Channel x Interrupt Register
      HC6_INT       : aliased HC6_INT_Register;
      --  Host Channel x Interrupt Mask Register
      HC6_INTMSK    : aliased HC6_INTMSK_Register;
      --  Host Channel x Transfer Size Register
      HC6_TSIZ      : aliased HC6_TSIZ_Register;
      --  Host Channel x DMA Address Register
      HC6_DMAADDR   : aliased Interfaces.EFM32.UInt32;
      --  Host Channel x Characteristics Register
      HC7_CHAR      : aliased HC7_CHAR_Register;
      --  Host Channel x Split Control Register
      HC7_SPLT      : aliased HC7_SPLT_Register;
      --  Host Channel x Interrupt Register
      HC7_INT       : aliased HC7_INT_Register;
      --  Host Channel x Interrupt Mask Register
      HC7_INTMSK    : aliased HC7_INTMSK_Register;
      --  Host Channel x Transfer Size Register
      HC7_TSIZ      : aliased HC7_TSIZ_Register;
      --  Host Channel x DMA Address Register
      HC7_DMAADDR   : aliased Interfaces.EFM32.UInt32;
      --  Host Channel x Characteristics Register
      HC8_CHAR      : aliased HC8_CHAR_Register;
      --  Host Channel x Split Control Register
      HC8_SPLT      : aliased HC8_SPLT_Register;
      --  Host Channel x Interrupt Register
      HC8_INT       : aliased HC8_INT_Register;
      --  Host Channel x Interrupt Mask Register
      HC8_INTMSK    : aliased HC8_INTMSK_Register;
      --  Host Channel x Transfer Size Register
      HC8_TSIZ      : aliased HC8_TSIZ_Register;
      --  Host Channel x DMA Address Register
      HC8_DMAADDR   : aliased Interfaces.EFM32.UInt32;
      --  Host Channel x Characteristics Register
      HC9_CHAR      : aliased HC9_CHAR_Register;
      --  Host Channel x Split Control Register
      HC9_SPLT      : aliased HC9_SPLT_Register;
      --  Host Channel x Interrupt Register
      HC9_INT       : aliased HC9_INT_Register;
      --  Host Channel x Interrupt Mask Register
      HC9_INTMSK    : aliased HC9_INTMSK_Register;
      --  Host Channel x Transfer Size Register
      HC9_TSIZ      : aliased HC9_TSIZ_Register;
      --  Host Channel x DMA Address Register
      HC9_DMAADDR   : aliased Interfaces.EFM32.UInt32;
      --  Host Channel x Characteristics Register
      HC10_CHAR     : aliased HC10_CHAR_Register;
      --  Host Channel x Split Control Register
      HC10_SPLT     : aliased HC10_SPLT_Register;
      --  Host Channel x Interrupt Register
      HC10_INT      : aliased HC10_INT_Register;
      --  Host Channel x Interrupt Mask Register
      HC10_INTMSK   : aliased HC10_INTMSK_Register;
      --  Host Channel x Transfer Size Register
      HC10_TSIZ     : aliased HC10_TSIZ_Register;
      --  Host Channel x DMA Address Register
      HC10_DMAADDR  : aliased Interfaces.EFM32.UInt32;
      --  Host Channel x Characteristics Register
      HC11_CHAR     : aliased HC11_CHAR_Register;
      --  Host Channel x Split Control Register
      HC11_SPLT     : aliased HC11_SPLT_Register;
      --  Host Channel x Interrupt Register
      HC11_INT      : aliased HC11_INT_Register;
      --  Host Channel x Interrupt Mask Register
      HC11_INTMSK   : aliased HC11_INTMSK_Register;
      --  Host Channel x Transfer Size Register
      HC11_TSIZ     : aliased HC11_TSIZ_Register;
      --  Host Channel x DMA Address Register
      HC11_DMAADDR  : aliased Interfaces.EFM32.UInt32;
      --  Host Channel x Characteristics Register
      HC12_CHAR     : aliased HC12_CHAR_Register;
      --  Host Channel x Split Control Register
      HC12_SPLT     : aliased HC12_SPLT_Register;
      --  Host Channel x Interrupt Register
      HC12_INT      : aliased HC12_INT_Register;
      --  Host Channel x Interrupt Mask Register
      HC12_INTMSK   : aliased HC12_INTMSK_Register;
      --  Host Channel x Transfer Size Register
      HC12_TSIZ     : aliased HC12_TSIZ_Register;
      --  Host Channel x DMA Address Register
      HC12_DMAADDR  : aliased Interfaces.EFM32.UInt32;
      --  Host Channel x Characteristics Register
      HC13_CHAR     : aliased HC13_CHAR_Register;
      --  Host Channel x Split Control Register
      HC13_SPLT     : aliased HC13_SPLT_Register;
      --  Host Channel x Interrupt Register
      HC13_INT      : aliased HC13_INT_Register;
      --  Host Channel x Interrupt Mask Register
      HC13_INTMSK   : aliased HC13_INTMSK_Register;
      --  Host Channel x Transfer Size Register
      HC13_TSIZ     : aliased HC13_TSIZ_Register;
      --  Host Channel x DMA Address Register
      HC13_DMAADDR  : aliased Interfaces.EFM32.UInt32;
      --  Device Configuration Register
      DCFG          : aliased DCFG_Register;
      --  Device Control Register
      DCTL          : aliased DCTL_Register;
      --  Device Status Register
      DSTS          : aliased DSTS_Register;
      --  Device IN Endpoint Common Interrupt Mask Register
      DIEPMSK       : aliased DIEPMSK_Register;
      --  Device OUT Endpoint Common Interrupt Mask Register
      DOEPMSK       : aliased DOEPMSK_Register;
      --  Device All Endpoints Interrupt Register
      DAINT         : aliased DAINT_Register;
      --  Device All Endpoints Interrupt Mask Register
      DAINTMSK      : aliased DAINTMSK_Register;
      --  Device VBUS Discharge Time Register
      DVBUSDIS      : aliased DVBUSDIS_Register;
      --  Device VBUS Pulsing Time Register
      DVBUSPULSE    : aliased DVBUSPULSE_Register;
      --  Device Threshold Control Register
      DTHRCTL       : aliased DTHRCTL_Register;
      --  Device IN Endpoint FIFO Empty Interrupt Mask Register
      DIEPEMPMSK    : aliased DIEPEMPMSK_Register;
      --  Device Control IN Endpoint 0 Control Register
      DIEP0CTL      : aliased DIEP0CTL_Register;
      --  Device IN Endpoint 0 Interrupt Register
      DIEP0INT      : aliased DIEP0INT_Register;
      --  Device IN Endpoint 0 Transfer Size Register
      DIEP0TSIZ     : aliased DIEP0TSIZ_Register;
      --  Device IN Endpoint 0 DMA Address Register
      DIEP0DMAADDR  : aliased Interfaces.EFM32.UInt32;
      --  Device IN Endpoint Transmit FIFO Status Register 0
      DIEP0TXFSTS   : aliased DIEP0TXFSTS_Register;
      --  Device Control IN Endpoint x+1 Control Register
      DIEP0_CTL     : aliased DIEP0_CTL_Register;
      --  Device IN Endpoint x+1 Interrupt Register
      DIEP0_INT     : aliased DIEP0_INT_Register;
      --  Device IN Endpoint x+1 Transfer Size Register
      DIEP0_TSIZ    : aliased DIEP0_TSIZ_Register;
      --  Device IN Endpoint x+1 DMA Address Register
      DIEP0_DMAADDR : aliased Interfaces.EFM32.UInt32;
      --  Device IN Endpoint Transmit FIFO Status Register 1
      DIEP0_DTXFSTS : aliased DIEP0_DTXFSTS_Register;
      --  Device Control IN Endpoint x+1 Control Register
      DIEP1_CTL     : aliased DIEP1_CTL_Register;
      --  Device IN Endpoint x+1 Interrupt Register
      DIEP1_INT     : aliased DIEP1_INT_Register;
      --  Device IN Endpoint x+1 Transfer Size Register
      DIEP1_TSIZ    : aliased DIEP1_TSIZ_Register;
      --  Device IN Endpoint x+1 DMA Address Register
      DIEP1_DMAADDR : aliased Interfaces.EFM32.UInt32;
      --  Device IN Endpoint Transmit FIFO Status Register 1
      DIEP1_DTXFSTS : aliased DIEP1_DTXFSTS_Register;
      --  Device Control IN Endpoint x+1 Control Register
      DIEP2_CTL     : aliased DIEP2_CTL_Register;
      --  Device IN Endpoint x+1 Interrupt Register
      DIEP2_INT     : aliased DIEP2_INT_Register;
      --  Device IN Endpoint x+1 Transfer Size Register
      DIEP2_TSIZ    : aliased DIEP2_TSIZ_Register;
      --  Device IN Endpoint x+1 DMA Address Register
      DIEP2_DMAADDR : aliased Interfaces.EFM32.UInt32;
      --  Device IN Endpoint Transmit FIFO Status Register 1
      DIEP2_DTXFSTS : aliased DIEP2_DTXFSTS_Register;
      --  Device Control IN Endpoint x+1 Control Register
      DIEP3_CTL     : aliased DIEP3_CTL_Register;
      --  Device IN Endpoint x+1 Interrupt Register
      DIEP3_INT     : aliased DIEP3_INT_Register;
      --  Device IN Endpoint x+1 Transfer Size Register
      DIEP3_TSIZ    : aliased DIEP3_TSIZ_Register;
      --  Device IN Endpoint x+1 DMA Address Register
      DIEP3_DMAADDR : aliased Interfaces.EFM32.UInt32;
      --  Device IN Endpoint Transmit FIFO Status Register 1
      DIEP3_DTXFSTS : aliased DIEP3_DTXFSTS_Register;
      --  Device Control IN Endpoint x+1 Control Register
      DIEP4_CTL     : aliased DIEP4_CTL_Register;
      --  Device IN Endpoint x+1 Interrupt Register
      DIEP4_INT     : aliased DIEP4_INT_Register;
      --  Device IN Endpoint x+1 Transfer Size Register
      DIEP4_TSIZ    : aliased DIEP4_TSIZ_Register;
      --  Device IN Endpoint x+1 DMA Address Register
      DIEP4_DMAADDR : aliased Interfaces.EFM32.UInt32;
      --  Device IN Endpoint Transmit FIFO Status Register 1
      DIEP4_DTXFSTS : aliased DIEP4_DTXFSTS_Register;
      --  Device Control IN Endpoint x+1 Control Register
      DIEP5_CTL     : aliased DIEP5_CTL_Register;
      --  Device IN Endpoint x+1 Interrupt Register
      DIEP5_INT     : aliased DIEP5_INT_Register;
      --  Device IN Endpoint x+1 Transfer Size Register
      DIEP5_TSIZ    : aliased DIEP5_TSIZ_Register;
      --  Device IN Endpoint x+1 DMA Address Register
      DIEP5_DMAADDR : aliased Interfaces.EFM32.UInt32;
      --  Device IN Endpoint Transmit FIFO Status Register 1
      DIEP5_DTXFSTS : aliased DIEP5_DTXFSTS_Register;
      --  Device Control OUT Endpoint 0 Control Register
      DOEP0CTL      : aliased DOEP0CTL_Register;
      --  Device OUT Endpoint 0 Interrupt Register
      DOEP0INT      : aliased DOEP0INT_Register;
      --  Device OUT Endpoint 0 Transfer Size Register
      DOEP0TSIZ     : aliased DOEP0TSIZ_Register;
      --  Device OUT Endpoint 0 DMA Address Register
      DOEP0DMAADDR  : aliased Interfaces.EFM32.UInt32;
      --  Device Control OUT Endpoint x+1 Control Register
      DOEP0_CTL     : aliased DOEP0_CTL_Register;
      --  Device OUT Endpoint x+1 Interrupt Register
      DOEP0_INT     : aliased DOEP0_INT_Register;
      --  Device OUT Endpoint x+1 Transfer Size Register
      DOEP0_TSIZ    : aliased DOEP0_TSIZ_Register;
      --  Device OUT Endpoint x+1 DMA Address Register
      DOEP0_DMAADDR : aliased Interfaces.EFM32.UInt32;
      --  Device Control OUT Endpoint x+1 Control Register
      DOEP1_CTL     : aliased DOEP1_CTL_Register;
      --  Device OUT Endpoint x+1 Interrupt Register
      DOEP1_INT     : aliased DOEP1_INT_Register;
      --  Device OUT Endpoint x+1 Transfer Size Register
      DOEP1_TSIZ    : aliased DOEP1_TSIZ_Register;
      --  Device OUT Endpoint x+1 DMA Address Register
      DOEP1_DMAADDR : aliased Interfaces.EFM32.UInt32;
      --  Device Control OUT Endpoint x+1 Control Register
      DOEP2_CTL     : aliased DOEP2_CTL_Register;
      --  Device OUT Endpoint x+1 Interrupt Register
      DOEP2_INT     : aliased DOEP2_INT_Register;
      --  Device OUT Endpoint x+1 Transfer Size Register
      DOEP2_TSIZ    : aliased DOEP2_TSIZ_Register;
      --  Device OUT Endpoint x+1 DMA Address Register
      DOEP2_DMAADDR : aliased Interfaces.EFM32.UInt32;
      --  Device Control OUT Endpoint x+1 Control Register
      DOEP3_CTL     : aliased DOEP3_CTL_Register;
      --  Device OUT Endpoint x+1 Interrupt Register
      DOEP3_INT     : aliased DOEP3_INT_Register;
      --  Device OUT Endpoint x+1 Transfer Size Register
      DOEP3_TSIZ    : aliased DOEP3_TSIZ_Register;
      --  Device OUT Endpoint x+1 DMA Address Register
      DOEP3_DMAADDR : aliased Interfaces.EFM32.UInt32;
      --  Device Control OUT Endpoint x+1 Control Register
      DOEP4_CTL     : aliased DOEP4_CTL_Register;
      --  Device OUT Endpoint x+1 Interrupt Register
      DOEP4_INT     : aliased DOEP4_INT_Register;
      --  Device OUT Endpoint x+1 Transfer Size Register
      DOEP4_TSIZ    : aliased DOEP4_TSIZ_Register;
      --  Device OUT Endpoint x+1 DMA Address Register
      DOEP4_DMAADDR : aliased Interfaces.EFM32.UInt32;
      --  Device Control OUT Endpoint x+1 Control Register
      DOEP5_CTL     : aliased DOEP5_CTL_Register;
      --  Device OUT Endpoint x+1 Interrupt Register
      DOEP5_INT     : aliased DOEP5_INT_Register;
      --  Device OUT Endpoint x+1 Transfer Size Register
      DOEP5_TSIZ    : aliased DOEP5_TSIZ_Register;
      --  Device OUT Endpoint x+1 DMA Address Register
      DOEP5_DMAADDR : aliased Interfaces.EFM32.UInt32;
      --  Power and Clock Gating Control Register
      PCGCCTL       : aliased PCGCCTL_Register;
   end record
     with Volatile;

   for USB_Peripheral use record
      CTRL          at 16#0# range 0 .. 31;
      STATUS        at 16#4# range 0 .. 31;
      IF_k          at 16#8# range 0 .. 31;
      IFS           at 16#C# range 0 .. 31;
      IFC           at 16#10# range 0 .. 31;
      IEN           at 16#14# range 0 .. 31;
      ROUTE         at 16#18# range 0 .. 31;
      CDCONF        at 16#2C# range 0 .. 31;
      CMD           at 16#30# range 0 .. 31;
      DATTRIM1      at 16#34# range 0 .. 31;
      LEMCTRL       at 16#3C# range 0 .. 31;
      ROUTELOC0     at 16#40# range 0 .. 31;
      GOTGCTL       at 16#DE000# range 0 .. 31;
      GOTGINT       at 16#DE004# range 0 .. 31;
      GAHBCFG       at 16#DE008# range 0 .. 31;
      GUSBCFG       at 16#DE00C# range 0 .. 31;
      GRSTCTL       at 16#DE010# range 0 .. 31;
      GINTSTS       at 16#DE014# range 0 .. 31;
      GINTMSK       at 16#DE018# range 0 .. 31;
      GRXSTSR       at 16#DE01C# range 0 .. 31;
      GRXSTSP       at 16#DE020# range 0 .. 31;
      GRXFSIZ       at 16#DE024# range 0 .. 31;
      GNPTXFSIZ     at 16#DE028# range 0 .. 31;
      GNPTXSTS      at 16#DE02C# range 0 .. 31;
      GSNPSID       at 16#DE040# range 0 .. 31;
      GDFIFOCFG     at 16#DE05C# range 0 .. 31;
      HPTXFSIZ      at 16#DE100# range 0 .. 31;
      DIEPTXF1      at 16#DE104# range 0 .. 31;
      DIEPTXF2      at 16#DE108# range 0 .. 31;
      DIEPTXF3      at 16#DE10C# range 0 .. 31;
      DIEPTXF4      at 16#DE110# range 0 .. 31;
      DIEPTXF5      at 16#DE114# range 0 .. 31;
      DIEPTXF6      at 16#DE118# range 0 .. 31;
      HCFG          at 16#DE400# range 0 .. 31;
      HFIR          at 16#DE404# range 0 .. 31;
      HFNUM         at 16#DE408# range 0 .. 31;
      HPTXSTS       at 16#DE410# range 0 .. 31;
      HAINT         at 16#DE414# range 0 .. 31;
      HAINTMSK      at 16#DE418# range 0 .. 31;
      HPRT          at 16#DE440# range 0 .. 31;
      HC0_CHAR      at 16#DE500# range 0 .. 31;
      HC0_SPLT      at 16#DE504# range 0 .. 31;
      HC0_INT       at 16#DE508# range 0 .. 31;
      HC0_INTMSK    at 16#DE50C# range 0 .. 31;
      HC0_TSIZ      at 16#DE510# range 0 .. 31;
      HC0_DMAADDR   at 16#DE514# range 0 .. 31;
      HC1_CHAR      at 16#DE520# range 0 .. 31;
      HC1_SPLT      at 16#DE524# range 0 .. 31;
      HC1_INT       at 16#DE528# range 0 .. 31;
      HC1_INTMSK    at 16#DE52C# range 0 .. 31;
      HC1_TSIZ      at 16#DE530# range 0 .. 31;
      HC1_DMAADDR   at 16#DE534# range 0 .. 31;
      HC2_CHAR      at 16#DE540# range 0 .. 31;
      HC2_SPLT      at 16#DE544# range 0 .. 31;
      HC2_INT       at 16#DE548# range 0 .. 31;
      HC2_INTMSK    at 16#DE54C# range 0 .. 31;
      HC2_TSIZ      at 16#DE550# range 0 .. 31;
      HC2_DMAADDR   at 16#DE554# range 0 .. 31;
      HC3_CHAR      at 16#DE560# range 0 .. 31;
      HC3_SPLT      at 16#DE564# range 0 .. 31;
      HC3_INT       at 16#DE568# range 0 .. 31;
      HC3_INTMSK    at 16#DE56C# range 0 .. 31;
      HC3_TSIZ      at 16#DE570# range 0 .. 31;
      HC3_DMAADDR   at 16#DE574# range 0 .. 31;
      HC4_CHAR      at 16#DE580# range 0 .. 31;
      HC4_SPLT      at 16#DE584# range 0 .. 31;
      HC4_INT       at 16#DE588# range 0 .. 31;
      HC4_INTMSK    at 16#DE58C# range 0 .. 31;
      HC4_TSIZ      at 16#DE590# range 0 .. 31;
      HC4_DMAADDR   at 16#DE594# range 0 .. 31;
      HC5_CHAR      at 16#DE5A0# range 0 .. 31;
      HC5_SPLT      at 16#DE5A4# range 0 .. 31;
      HC5_INT       at 16#DE5A8# range 0 .. 31;
      HC5_INTMSK    at 16#DE5AC# range 0 .. 31;
      HC5_TSIZ      at 16#DE5B0# range 0 .. 31;
      HC5_DMAADDR   at 16#DE5B4# range 0 .. 31;
      HC6_CHAR      at 16#DE5C0# range 0 .. 31;
      HC6_SPLT      at 16#DE5C4# range 0 .. 31;
      HC6_INT       at 16#DE5C8# range 0 .. 31;
      HC6_INTMSK    at 16#DE5CC# range 0 .. 31;
      HC6_TSIZ      at 16#DE5D0# range 0 .. 31;
      HC6_DMAADDR   at 16#DE5D4# range 0 .. 31;
      HC7_CHAR      at 16#DE5E0# range 0 .. 31;
      HC7_SPLT      at 16#DE5E4# range 0 .. 31;
      HC7_INT       at 16#DE5E8# range 0 .. 31;
      HC7_INTMSK    at 16#DE5EC# range 0 .. 31;
      HC7_TSIZ      at 16#DE5F0# range 0 .. 31;
      HC7_DMAADDR   at 16#DE5F4# range 0 .. 31;
      HC8_CHAR      at 16#DE600# range 0 .. 31;
      HC8_SPLT      at 16#DE604# range 0 .. 31;
      HC8_INT       at 16#DE608# range 0 .. 31;
      HC8_INTMSK    at 16#DE60C# range 0 .. 31;
      HC8_TSIZ      at 16#DE610# range 0 .. 31;
      HC8_DMAADDR   at 16#DE614# range 0 .. 31;
      HC9_CHAR      at 16#DE620# range 0 .. 31;
      HC9_SPLT      at 16#DE624# range 0 .. 31;
      HC9_INT       at 16#DE628# range 0 .. 31;
      HC9_INTMSK    at 16#DE62C# range 0 .. 31;
      HC9_TSIZ      at 16#DE630# range 0 .. 31;
      HC9_DMAADDR   at 16#DE634# range 0 .. 31;
      HC10_CHAR     at 16#DE640# range 0 .. 31;
      HC10_SPLT     at 16#DE644# range 0 .. 31;
      HC10_INT      at 16#DE648# range 0 .. 31;
      HC10_INTMSK   at 16#DE64C# range 0 .. 31;
      HC10_TSIZ     at 16#DE650# range 0 .. 31;
      HC10_DMAADDR  at 16#DE654# range 0 .. 31;
      HC11_CHAR     at 16#DE660# range 0 .. 31;
      HC11_SPLT     at 16#DE664# range 0 .. 31;
      HC11_INT      at 16#DE668# range 0 .. 31;
      HC11_INTMSK   at 16#DE66C# range 0 .. 31;
      HC11_TSIZ     at 16#DE670# range 0 .. 31;
      HC11_DMAADDR  at 16#DE674# range 0 .. 31;
      HC12_CHAR     at 16#DE680# range 0 .. 31;
      HC12_SPLT     at 16#DE684# range 0 .. 31;
      HC12_INT      at 16#DE688# range 0 .. 31;
      HC12_INTMSK   at 16#DE68C# range 0 .. 31;
      HC12_TSIZ     at 16#DE690# range 0 .. 31;
      HC12_DMAADDR  at 16#DE694# range 0 .. 31;
      HC13_CHAR     at 16#DE6A0# range 0 .. 31;
      HC13_SPLT     at 16#DE6A4# range 0 .. 31;
      HC13_INT      at 16#DE6A8# range 0 .. 31;
      HC13_INTMSK   at 16#DE6AC# range 0 .. 31;
      HC13_TSIZ     at 16#DE6B0# range 0 .. 31;
      HC13_DMAADDR  at 16#DE6B4# range 0 .. 31;
      DCFG          at 16#DE800# range 0 .. 31;
      DCTL          at 16#DE804# range 0 .. 31;
      DSTS          at 16#DE808# range 0 .. 31;
      DIEPMSK       at 16#DE810# range 0 .. 31;
      DOEPMSK       at 16#DE814# range 0 .. 31;
      DAINT         at 16#DE818# range 0 .. 31;
      DAINTMSK      at 16#DE81C# range 0 .. 31;
      DVBUSDIS      at 16#DE828# range 0 .. 31;
      DVBUSPULSE    at 16#DE82C# range 0 .. 31;
      DTHRCTL       at 16#DE830# range 0 .. 31;
      DIEPEMPMSK    at 16#DE834# range 0 .. 31;
      DIEP0CTL      at 16#DE900# range 0 .. 31;
      DIEP0INT      at 16#DE908# range 0 .. 31;
      DIEP0TSIZ     at 16#DE910# range 0 .. 31;
      DIEP0DMAADDR  at 16#DE914# range 0 .. 31;
      DIEP0TXFSTS   at 16#DE918# range 0 .. 31;
      DIEP0_CTL     at 16#DE920# range 0 .. 31;
      DIEP0_INT     at 16#DE928# range 0 .. 31;
      DIEP0_TSIZ    at 16#DE930# range 0 .. 31;
      DIEP0_DMAADDR at 16#DE934# range 0 .. 31;
      DIEP0_DTXFSTS at 16#DE938# range 0 .. 31;
      DIEP1_CTL     at 16#DE940# range 0 .. 31;
      DIEP1_INT     at 16#DE948# range 0 .. 31;
      DIEP1_TSIZ    at 16#DE950# range 0 .. 31;
      DIEP1_DMAADDR at 16#DE954# range 0 .. 31;
      DIEP1_DTXFSTS at 16#DE958# range 0 .. 31;
      DIEP2_CTL     at 16#DE960# range 0 .. 31;
      DIEP2_INT     at 16#DE968# range 0 .. 31;
      DIEP2_TSIZ    at 16#DE970# range 0 .. 31;
      DIEP2_DMAADDR at 16#DE974# range 0 .. 31;
      DIEP2_DTXFSTS at 16#DE978# range 0 .. 31;
      DIEP3_CTL     at 16#DE980# range 0 .. 31;
      DIEP3_INT     at 16#DE988# range 0 .. 31;
      DIEP3_TSIZ    at 16#DE990# range 0 .. 31;
      DIEP3_DMAADDR at 16#DE994# range 0 .. 31;
      DIEP3_DTXFSTS at 16#DE998# range 0 .. 31;
      DIEP4_CTL     at 16#DE9A0# range 0 .. 31;
      DIEP4_INT     at 16#DE9A8# range 0 .. 31;
      DIEP4_TSIZ    at 16#DE9B0# range 0 .. 31;
      DIEP4_DMAADDR at 16#DE9B4# range 0 .. 31;
      DIEP4_DTXFSTS at 16#DE9B8# range 0 .. 31;
      DIEP5_CTL     at 16#DE9C0# range 0 .. 31;
      DIEP5_INT     at 16#DE9C8# range 0 .. 31;
      DIEP5_TSIZ    at 16#DE9D0# range 0 .. 31;
      DIEP5_DMAADDR at 16#DE9D4# range 0 .. 31;
      DIEP5_DTXFSTS at 16#DE9D8# range 0 .. 31;
      DOEP0CTL      at 16#DEB00# range 0 .. 31;
      DOEP0INT      at 16#DEB08# range 0 .. 31;
      DOEP0TSIZ     at 16#DEB10# range 0 .. 31;
      DOEP0DMAADDR  at 16#DEB14# range 0 .. 31;
      DOEP0_CTL     at 16#DEB20# range 0 .. 31;
      DOEP0_INT     at 16#DEB28# range 0 .. 31;
      DOEP0_TSIZ    at 16#DEB30# range 0 .. 31;
      DOEP0_DMAADDR at 16#DEB34# range 0 .. 31;
      DOEP1_CTL     at 16#DEB40# range 0 .. 31;
      DOEP1_INT     at 16#DEB48# range 0 .. 31;
      DOEP1_TSIZ    at 16#DEB50# range 0 .. 31;
      DOEP1_DMAADDR at 16#DEB54# range 0 .. 31;
      DOEP2_CTL     at 16#DEB60# range 0 .. 31;
      DOEP2_INT     at 16#DEB68# range 0 .. 31;
      DOEP2_TSIZ    at 16#DEB70# range 0 .. 31;
      DOEP2_DMAADDR at 16#DEB74# range 0 .. 31;
      DOEP3_CTL     at 16#DEB80# range 0 .. 31;
      DOEP3_INT     at 16#DEB88# range 0 .. 31;
      DOEP3_TSIZ    at 16#DEB90# range 0 .. 31;
      DOEP3_DMAADDR at 16#DEB94# range 0 .. 31;
      DOEP4_CTL     at 16#DEBA0# range 0 .. 31;
      DOEP4_INT     at 16#DEBA8# range 0 .. 31;
      DOEP4_TSIZ    at 16#DEBB0# range 0 .. 31;
      DOEP4_DMAADDR at 16#DEBB4# range 0 .. 31;
      DOEP5_CTL     at 16#DEBC0# range 0 .. 31;
      DOEP5_INT     at 16#DEBC8# range 0 .. 31;
      DOEP5_TSIZ    at 16#DEBD0# range 0 .. 31;
      DOEP5_DMAADDR at 16#DEBD4# range 0 .. 31;
      PCGCCTL       at 16#DEE00# range 0 .. 31;
   end record;

   --  USB
   USB_Periph : aliased USB_Peripheral
     with Import, Address => USB_Base;

end Interfaces.EFM32.USB;
