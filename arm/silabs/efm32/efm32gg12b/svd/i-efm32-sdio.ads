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

--  SDIO
package Interfaces.EFM32.SDIO is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Transfer Block Size, Specifies the Block Size for Block Data Transfers
   --  for CMD17, CMD18, CMD24, CMD25, and CMD53
   type BLKSIZE_TFRBLKSIZE_Field is
     (NOXFER)
     with Size => 12;
   for BLKSIZE_TFRBLKSIZE_Field use
     (NOXFER => 0);

   --  Host SDMA Buffer Size
   type BLKSIZE_HSTSDMABUFSIZE_Field is
     (--  4KB(Detects A11 Carry out)
      SIZE4,
      --  8KB(Detects A12 Carry out)
      SIZE8,
      --  16KB(Detects A13 Carry out)
      SIZE16,
      --  32KB(Detects A14 Carry out)
      SIZE32,
      --  64KB(Detects A15 Carry out)
      SIZE64,
      --  128KB(Detects A16 Carry out)
      SIZE128,
      --  256KB(Detects A17 Carry out)
      SIZE256,
      --  512KB(Detects A18 Carry out)
      SIZE512)
     with Size => 3;
   for BLKSIZE_HSTSDMABUFSIZE_Field use
     (SIZE4 => 0,
      SIZE8 => 1,
      SIZE16 => 2,
      SIZE32 => 3,
      SIZE64 => 4,
      SIZE128 => 5,
      SIZE256 => 6,
      SIZE512 => 7);

   --  Blocks Count for Current Transfer
   type BLKSIZE_BLKSCNTFORCURRTFR_Field is
     (STOPCNT)
     with Size => 16;
   for BLKSIZE_BLKSCNTFORCURRTFR_Field use
     (STOPCNT => 0);

   --  Block Size and Block Count Register
   type BLKSIZE_Register is record
      --  Transfer Block Size, Specifies the Block Size for Block Data
      --  Transfers for CMD17, CMD18, CMD24, CMD25, and CMD53
      TFRBLKSIZE        : BLKSIZE_TFRBLKSIZE_Field :=
                           Interfaces.EFM32.SDIO.NOXFER;
      --  Host SDMA Buffer Size
      HSTSDMABUFSIZE    : BLKSIZE_HSTSDMABUFSIZE_Field :=
                           Interfaces.EFM32.SDIO.SIZE4;
      --  unspecified
      Reserved_15_15    : Interfaces.EFM32.Bit := 16#0#;
      --  Blocks Count for Current Transfer
      BLKSCNTFORCURRTFR : BLKSIZE_BLKSCNTFORCURRTFR_Field :=
                           Interfaces.EFM32.SDIO.STOPCNT;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BLKSIZE_Register use record
      TFRBLKSIZE        at 0 range 0 .. 11;
      HSTSDMABUFSIZE    at 0 range 12 .. 14;
      Reserved_15_15    at 0 range 15 .. 15;
      BLKSCNTFORCURRTFR at 0 range 16 .. 31;
   end record;

   subtype TFRMODE_DMAEN_Field is Interfaces.EFM32.Bit;
   subtype TFRMODE_BLKCNTEN_Field is Interfaces.EFM32.Bit;

   --  Auto Command Enable
   type TFRMODE_AUTOCMDEN_Field is
     (--  Auto CMD Disabled
      ACMDDISABLED,
      --  Auto CMD12 Enable
      ACMD12EN,
      --  Auto CMD23 Enable
      ACMD23EN)
     with Size => 2;
   for TFRMODE_AUTOCMDEN_Field use
     (ACMDDISABLED => 0,
      ACMD12EN => 1,
      ACMD23EN => 2);

   subtype TFRMODE_DATDIRSEL_Field is Interfaces.EFM32.Bit;
   subtype TFRMODE_MULTSINGBLKSEL_Field is Interfaces.EFM32.Bit;

   --  Response Type Select
   type TFRMODE_RESPTYPESEL_Field is
     (--  No RESP
      NORESP,
      --  RESP Length 136
      RESP136,
      --  RESP Length 48
      RESP48,
      --  RESP Length 48 check busy after RESP
      BUSYAFTRESP)
     with Size => 2;
   for TFRMODE_RESPTYPESEL_Field use
     (NORESP => 0,
      RESP136 => 1,
      RESP48 => 2,
      BUSYAFTRESP => 3);

   subtype TFRMODE_CMDCRCCHKEN_Field is Interfaces.EFM32.Bit;
   subtype TFRMODE_CMDINDXCHKEN_Field is Interfaces.EFM32.Bit;
   subtype TFRMODE_DATPRESSEL_Field is Interfaces.EFM32.Bit;

   --  Command Type
   type TFRMODE_CMDTYPE_Field is
     (--  Normal Command
      NORMAL,
      --  Suspend command
      SUSPEND,
      --  Resume command
      RESUME,
      --  Abort command
      ABORT_k)
     with Size => 2;
   for TFRMODE_CMDTYPE_Field use
     (NORMAL => 0,
      SUSPEND => 1,
      RESUME => 2,
      ABORT_k => 3);

   subtype TFRMODE_CMDINDEX_Field is Interfaces.EFM32.UInt6;

   --  Transfer Mode and Command Register
   type TFRMODE_Register is record
      --  DMA Enable
      DMAEN          : TFRMODE_DMAEN_Field := 16#0#;
      --  Block Count Enable
      BLKCNTEN       : TFRMODE_BLKCNTEN_Field := 16#0#;
      --  Auto Command Enable
      AUTOCMDEN      : TFRMODE_AUTOCMDEN_Field :=
                        Interfaces.EFM32.SDIO.ACMDDISABLED;
      --  Data Transfer Direction Select
      DATDIRSEL      : TFRMODE_DATDIRSEL_Field := 16#0#;
      --  Multiple or Single Block Data Transfer Selection
      MULTSINGBLKSEL : TFRMODE_MULTSINGBLKSEL_Field := 16#0#;
      --  unspecified
      Reserved_6_15  : Interfaces.EFM32.UInt10 := 16#0#;
      --  Response Type Select
      RESPTYPESEL    : TFRMODE_RESPTYPESEL_Field :=
                        Interfaces.EFM32.SDIO.NORESP;
      --  unspecified
      Reserved_18_18 : Interfaces.EFM32.Bit := 16#0#;
      --  Command CRC Check Enable
      CMDCRCCHKEN    : TFRMODE_CMDCRCCHKEN_Field := 16#0#;
      --  Command Index Check Enable
      CMDINDXCHKEN   : TFRMODE_CMDINDXCHKEN_Field := 16#0#;
      --  Data Present Select
      DATPRESSEL     : TFRMODE_DATPRESSEL_Field := 16#0#;
      --  Command Type
      CMDTYPE        : TFRMODE_CMDTYPE_Field := Interfaces.EFM32.SDIO.NORMAL;
      --  Command Index
      CMDINDEX       : TFRMODE_CMDINDEX_Field := 16#0#;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TFRMODE_Register use record
      DMAEN          at 0 range 0 .. 0;
      BLKCNTEN       at 0 range 1 .. 1;
      AUTOCMDEN      at 0 range 2 .. 3;
      DATDIRSEL      at 0 range 4 .. 4;
      MULTSINGBLKSEL at 0 range 5 .. 5;
      Reserved_6_15  at 0 range 6 .. 15;
      RESPTYPESEL    at 0 range 16 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      CMDCRCCHKEN    at 0 range 19 .. 19;
      CMDINDXCHKEN   at 0 range 20 .. 20;
      DATPRESSEL     at 0 range 21 .. 21;
      CMDTYPE        at 0 range 22 .. 23;
      CMDINDEX       at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype PRSSTAT_CMDINHIBITCMD_Field is Interfaces.EFM32.Bit;
   subtype PRSSTAT_CMDINHIBITDAT_Field is Interfaces.EFM32.Bit;
   subtype PRSSTAT_DATLINEACTIVE_Field is Interfaces.EFM32.Bit;
   subtype PRSSTAT_RETUNINGREQ_Field is Interfaces.EFM32.Bit;
   subtype PRSSTAT_WRTRANACT_Field is Interfaces.EFM32.Bit;
   subtype PRSSTAT_RDTRANACT_Field is Interfaces.EFM32.Bit;
   subtype PRSSTAT_BUFFERWRITEENABLE_Field is Interfaces.EFM32.Bit;
   subtype PRSSTAT_BUFRDEN_Field is Interfaces.EFM32.Bit;
   subtype PRSSTAT_CARDINS_Field is Interfaces.EFM32.Bit;
   subtype PRSSTAT_CARDSTATESTABLE_Field is Interfaces.EFM32.Bit;
   subtype PRSSTAT_CARDDETPINLVL_Field is Interfaces.EFM32.Bit;
   subtype PRSSTAT_WRPROTSWPINLVL_Field is Interfaces.EFM32.Bit;
   subtype PRSSTAT_DAT3TO0SIGLVL_Field is Interfaces.EFM32.UInt4;
   subtype PRSSTAT_CMDSIGLVL_Field is Interfaces.EFM32.Bit;
   subtype PRSSTAT_DAT7TO4SIGLVL_Field is Interfaces.EFM32.UInt4;

   --  Present State Register
   type PRSSTAT_Register is record
      --  Read-only. Command Inhibit (CMD)
      CMDINHIBITCMD     : PRSSTAT_CMDINHIBITCMD_Field;
      --  Read-only. Command Inhibit (DAT)
      CMDINHIBITDAT     : PRSSTAT_CMDINHIBITDAT_Field;
      --  Read-only. DAT Line Active
      DATLINEACTIVE     : PRSSTAT_DATLINEACTIVE_Field;
      --  Read-only. Re-Tuning Request
      RETUNINGREQ       : PRSSTAT_RETUNINGREQ_Field;
      --  unspecified
      Reserved_4_7      : Interfaces.EFM32.UInt4;
      --  Read-only. Write Transfer Active
      WRTRANACT         : PRSSTAT_WRTRANACT_Field;
      --  Read-only. Read Transfer Active
      RDTRANACT         : PRSSTAT_RDTRANACT_Field;
      --  Read-only. Buffer Write Enable
      BUFFERWRITEENABLE : PRSSTAT_BUFFERWRITEENABLE_Field;
      --  Read-only. Buffer Read Enable
      BUFRDEN           : PRSSTAT_BUFRDEN_Field;
      --  unspecified
      Reserved_12_15    : Interfaces.EFM32.UInt4;
      --  Read-only. Card Inserted Status
      CARDINS           : PRSSTAT_CARDINS_Field;
      --  Read-only. Card State Stable Status
      CARDSTATESTABLE   : PRSSTAT_CARDSTATESTABLE_Field;
      --  Read-only. Card Detect Pin Level
      CARDDETPINLVL     : PRSSTAT_CARDDETPINLVL_Field;
      --  Read-only. Write Protect Switch Pin Level
      WRPROTSWPINLVL    : PRSSTAT_WRPROTSWPINLVL_Field;
      --  Read-only. DAT[3:0] Line Signal Level
      DAT3TO0SIGLVL     : PRSSTAT_DAT3TO0SIGLVL_Field;
      --  Read-only. Command Line Signal Level
      CMDSIGLVL         : PRSSTAT_CMDSIGLVL_Field;
      --  Read-only. DAT[7:4] Line Signal Level
      DAT7TO4SIGLVL     : PRSSTAT_DAT7TO4SIGLVL_Field;
      --  unspecified
      Reserved_29_31    : Interfaces.EFM32.UInt3;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRSSTAT_Register use record
      CMDINHIBITCMD     at 0 range 0 .. 0;
      CMDINHIBITDAT     at 0 range 1 .. 1;
      DATLINEACTIVE     at 0 range 2 .. 2;
      RETUNINGREQ       at 0 range 3 .. 3;
      Reserved_4_7      at 0 range 4 .. 7;
      WRTRANACT         at 0 range 8 .. 8;
      RDTRANACT         at 0 range 9 .. 9;
      BUFFERWRITEENABLE at 0 range 10 .. 10;
      BUFRDEN           at 0 range 11 .. 11;
      Reserved_12_15    at 0 range 12 .. 15;
      CARDINS           at 0 range 16 .. 16;
      CARDSTATESTABLE   at 0 range 17 .. 17;
      CARDDETPINLVL     at 0 range 18 .. 18;
      WRPROTSWPINLVL    at 0 range 19 .. 19;
      DAT3TO0SIGLVL     at 0 range 20 .. 23;
      CMDSIGLVL         at 0 range 24 .. 24;
      DAT7TO4SIGLVL     at 0 range 25 .. 28;
      Reserved_29_31    at 0 range 29 .. 31;
   end record;

   subtype HOSTCTRL1_LEDCTRL_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_DATTRANWD_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_HSEN_Field is Interfaces.EFM32.Bit;

   --  DMA Select
   type HOSTCTRL1_DMASEL_Field is
     (--  SDMA selected
      SDMA,
      --  32-bit ADMA1 selected
      ADMA1,
      --  32-bit ADMA2 selected
      ADMA2,
      --  64-bit ADMA2 selected
      Val_64BITADMA2)
     with Size => 2;
   for HOSTCTRL1_DMASEL_Field use
     (SDMA => 0,
      ADMA1 => 1,
      ADMA2 => 2,
      Val_64BITADMA2 => 3);

   subtype HOSTCTRL1_EXTDATTRANWD_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_CDTSTLVL_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_CDSIGDET_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_SDBUSPOWER_Field is Interfaces.EFM32.Bit;

   --  SD Bus Voltage Select
   type HOSTCTRL1_SDBUSVOLTSEL_Field is
     (--  Reset value for the field
      HOSTCTRL1_SDBUSVOLTSEL_Field_Reset,
      --  Select 1.8V
      Val_1P8V,
      --  Select 3.0V
      Val_3P0V,
      --  Select 3.3V
      Val_3P3V)
     with Size => 3;
   for HOSTCTRL1_SDBUSVOLTSEL_Field use
     (HOSTCTRL1_SDBUSVOLTSEL_Field_Reset => 0,
      Val_1P8V => 5,
      Val_3P0V => 6,
      Val_3P3V => 7);

   subtype HOSTCTRL1_HRDRST_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_STOPATBLKGAPREQ_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_CONTINUEREQ_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_RDWAITCTRL_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_INTATBLKGAP_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_SPIMODE_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_BOOTEN_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_ALTBOOTEN_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_BOOTACKCHK_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_WKUPEVNTENONCARDINT_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_WKUPEVNTENONCINS_Field is Interfaces.EFM32.Bit;
   subtype HOSTCTRL1_WKUPEVNTENONCRM_Field is Interfaces.EFM32.Bit;

   --  Host Control1, Power, Block Gap and Wakeup-up Control Register
   type HOSTCTRL1_Register is record
      --  LED Control
      LEDCTRL             : HOSTCTRL1_LEDCTRL_Field := 16#0#;
      --  Data Transfer Width 1-bit or 4-bit Mode
      DATTRANWD           : HOSTCTRL1_DATTRANWD_Field := 16#0#;
      --  High Speed Enable
      HSEN                : HOSTCTRL1_HSEN_Field := 16#0#;
      --  DMA Select
      DMASEL              : HOSTCTRL1_DMASEL_Field :=
                             Interfaces.EFM32.SDIO.SDMA;
      --  Extended Data Transfer Width
      EXTDATTRANWD        : HOSTCTRL1_EXTDATTRANWD_Field := 16#0#;
      --  Card Detect Test Level
      CDTSTLVL            : HOSTCTRL1_CDTSTLVL_Field := 16#0#;
      --  Card Detetct Signal Detection
      CDSIGDET            : HOSTCTRL1_CDSIGDET_Field := 16#0#;
      --  SD Bus Power
      SDBUSPOWER          : HOSTCTRL1_SDBUSPOWER_Field := 16#0#;
      --  SD Bus Voltage Select
      SDBUSVOLTSEL        : HOSTCTRL1_SDBUSVOLTSEL_Field :=
                             HOSTCTRL1_SDBUSVOLTSEL_Field_Reset;
      --  Hardware Reset Signal
      HRDRST              : HOSTCTRL1_HRDRST_Field := 16#0#;
      --  unspecified
      Reserved_13_15      : Interfaces.EFM32.UInt3 := 16#0#;
      --  Stop at Block Gap Request
      STOPATBLKGAPREQ     : HOSTCTRL1_STOPATBLKGAPREQ_Field := 16#0#;
      --  Continue Request
      CONTINUEREQ         : HOSTCTRL1_CONTINUEREQ_Field := 16#0#;
      --  Read Wait Control
      RDWAITCTRL          : HOSTCTRL1_RDWAITCTRL_Field := 16#0#;
      --  Interrupt at Block Gap
      INTATBLKGAP         : HOSTCTRL1_INTATBLKGAP_Field := 16#0#;
      --  SPI Mode Enable
      SPIMODE             : HOSTCTRL1_SPIMODE_Field := 16#0#;
      --  Boot Enable
      BOOTEN              : HOSTCTRL1_BOOTEN_Field := 16#0#;
      --  Alternate Boot Enable
      ALTBOOTEN           : HOSTCTRL1_ALTBOOTEN_Field := 16#0#;
      --  Boot Ack Check
      BOOTACKCHK          : HOSTCTRL1_BOOTACKCHK_Field := 16#1#;
      --  Wakeup Event Enable on Card Interrupt
      WKUPEVNTENONCARDINT : HOSTCTRL1_WKUPEVNTENONCARDINT_Field := 16#0#;
      --  Wakeup Event Enable on SD Card Insertion
      WKUPEVNTENONCINS    : HOSTCTRL1_WKUPEVNTENONCINS_Field := 16#0#;
      --  Wakeup Event Enable on SD Card Removal
      WKUPEVNTENONCRM     : HOSTCTRL1_WKUPEVNTENONCRM_Field := 16#0#;
      --  unspecified
      Reserved_27_31      : Interfaces.EFM32.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HOSTCTRL1_Register use record
      LEDCTRL             at 0 range 0 .. 0;
      DATTRANWD           at 0 range 1 .. 1;
      HSEN                at 0 range 2 .. 2;
      DMASEL              at 0 range 3 .. 4;
      EXTDATTRANWD        at 0 range 5 .. 5;
      CDTSTLVL            at 0 range 6 .. 6;
      CDSIGDET            at 0 range 7 .. 7;
      SDBUSPOWER          at 0 range 8 .. 8;
      SDBUSVOLTSEL        at 0 range 9 .. 11;
      HRDRST              at 0 range 12 .. 12;
      Reserved_13_15      at 0 range 13 .. 15;
      STOPATBLKGAPREQ     at 0 range 16 .. 16;
      CONTINUEREQ         at 0 range 17 .. 17;
      RDWAITCTRL          at 0 range 18 .. 18;
      INTATBLKGAP         at 0 range 19 .. 19;
      SPIMODE             at 0 range 20 .. 20;
      BOOTEN              at 0 range 21 .. 21;
      ALTBOOTEN           at 0 range 22 .. 22;
      BOOTACKCHK          at 0 range 23 .. 23;
      WKUPEVNTENONCARDINT at 0 range 24 .. 24;
      WKUPEVNTENONCINS    at 0 range 25 .. 25;
      WKUPEVNTENONCRM     at 0 range 26 .. 26;
      Reserved_27_31      at 0 range 27 .. 31;
   end record;

   subtype CLOCKCTRL_INTCLKEN_Field is Interfaces.EFM32.Bit;
   subtype CLOCKCTRL_INTCLKSTABLE_Field is Interfaces.EFM32.Bit;
   subtype CLOCKCTRL_SDCLKEN_Field is Interfaces.EFM32.Bit;
   subtype CLOCKCTRL_CLKGENSEL_Field is Interfaces.EFM32.Bit;
   subtype CLOCKCTRL_UPPSDCLKFRE_Field is Interfaces.EFM32.UInt2;

   --  SD_CLK Frequency Select
   type CLOCKCTRL_SDCLKFREQSEL_Field is
     (NODIVISION)
     with Size => 8;
   for CLOCKCTRL_SDCLKFREQSEL_Field use
     (NODIVISION => 0);

   subtype CLOCKCTRL_DATTOUTCNTVAL_Field is Interfaces.EFM32.UInt4;
   subtype CLOCKCTRL_SFTRSTA_Field is Interfaces.EFM32.Bit;
   subtype CLOCKCTRL_SFTRSTCMD_Field is Interfaces.EFM32.Bit;
   subtype CLOCKCTRL_SFTRSTDAT_Field is Interfaces.EFM32.Bit;

   --  Clock Control, Timeout Control and Software Register
   type CLOCKCTRL_Register is record
      --  Internal Clock Enable
      INTCLKEN       : CLOCKCTRL_INTCLKEN_Field := 16#0#;
      --  Read-only. Internal Clock Stable
      INTCLKSTABLE   : CLOCKCTRL_INTCLKSTABLE_Field := 16#0#;
      --  SDIO_CLK Pin Clock Enable
      SDCLKEN        : CLOCKCTRL_SDCLKEN_Field := 16#0#;
      --  unspecified
      Reserved_3_4   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Clock Generator Select
      CLKGENSEL      : CLOCKCTRL_CLKGENSEL_Field := 16#0#;
      --  Upper Bits of SD_CLK Frequency Select
      UPPSDCLKFRE    : CLOCKCTRL_UPPSDCLKFRE_Field := 16#0#;
      --  SD_CLK Frequency Select
      SDCLKFREQSEL   : CLOCKCTRL_SDCLKFREQSEL_Field :=
                        Interfaces.EFM32.SDIO.NODIVISION;
      --  Data Timeout Counter Value
      DATTOUTCNTVAL  : CLOCKCTRL_DATTOUTCNTVAL_Field := 16#0#;
      --  unspecified
      Reserved_20_23 : Interfaces.EFM32.UInt4 := 16#0#;
      --  Software Reset for All
      SFTRSTA        : CLOCKCTRL_SFTRSTA_Field := 16#0#;
      --  Software Reset for CMD Line
      SFTRSTCMD      : CLOCKCTRL_SFTRSTCMD_Field := 16#0#;
      --  Software Reset for DAT Line
      SFTRSTDAT      : CLOCKCTRL_SFTRSTDAT_Field := 16#0#;
      --  unspecified
      Reserved_27_31 : Interfaces.EFM32.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CLOCKCTRL_Register use record
      INTCLKEN       at 0 range 0 .. 0;
      INTCLKSTABLE   at 0 range 1 .. 1;
      SDCLKEN        at 0 range 2 .. 2;
      Reserved_3_4   at 0 range 3 .. 4;
      CLKGENSEL      at 0 range 5 .. 5;
      UPPSDCLKFRE    at 0 range 6 .. 7;
      SDCLKFREQSEL   at 0 range 8 .. 15;
      DATTOUTCNTVAL  at 0 range 16 .. 19;
      Reserved_20_23 at 0 range 20 .. 23;
      SFTRSTA        at 0 range 24 .. 24;
      SFTRSTCMD      at 0 range 25 .. 25;
      SFTRSTDAT      at 0 range 26 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   subtype IFCR_CMDCOM_Field is Interfaces.EFM32.Bit;
   subtype IFCR_TRANCOM_Field is Interfaces.EFM32.Bit;
   subtype IFCR_BLKGAPEVT_Field is Interfaces.EFM32.Bit;
   subtype IFCR_DMAINT_Field is Interfaces.EFM32.Bit;
   subtype IFCR_BFRWRRDY_Field is Interfaces.EFM32.Bit;
   subtype IFCR_BFRRDRDY_Field is Interfaces.EFM32.Bit;
   subtype IFCR_CARDINS_Field is Interfaces.EFM32.Bit;
   subtype IFCR_CARDRM_Field is Interfaces.EFM32.Bit;
   subtype IFCR_CARDINT_Field is Interfaces.EFM32.Bit;
   subtype IFCR_RETUNINGEVT_Field is Interfaces.EFM32.Bit;
   subtype IFCR_BOOTACKRCV_Field is Interfaces.EFM32.Bit;
   subtype IFCR_BOOTTERMINATE_Field is Interfaces.EFM32.Bit;
   subtype IFCR_ERRINT_Field is Interfaces.EFM32.Bit;
   subtype IFCR_CMDTOUTERR_Field is Interfaces.EFM32.Bit;
   subtype IFCR_CMDCRCERR_Field is Interfaces.EFM32.Bit;
   subtype IFCR_CMDENDBITERR_Field is Interfaces.EFM32.Bit;
   subtype IFCR_CMDINDEXERR_Field is Interfaces.EFM32.Bit;
   subtype IFCR_DATTOUTERR_Field is Interfaces.EFM32.Bit;
   subtype IFCR_DATCRCERR_Field is Interfaces.EFM32.Bit;
   subtype IFCR_DATENDBITERR_Field is Interfaces.EFM32.Bit;
   subtype IFCR_CURRENTLIMITERR_Field is Interfaces.EFM32.Bit;
   subtype IFCR_AUTOCMDERR_Field is Interfaces.EFM32.Bit;
   subtype IFCR_ADMAERR_Field is Interfaces.EFM32.Bit;
   subtype IFCR_TARGETRESP_Field is Interfaces.EFM32.Bit;

   --  Normal and Error Interrupt Status Register
   type IFCR_Register is record
      --  Command Complete
      CMDCOM          : IFCR_CMDCOM_Field := 16#0#;
      --  Transfer Complete
      TRANCOM         : IFCR_TRANCOM_Field := 16#0#;
      --  Block Gap Event
      BLKGAPEVT       : IFCR_BLKGAPEVT_Field := 16#0#;
      --  DMA Interrupt
      DMAINT          : IFCR_DMAINT_Field := 16#0#;
      --  Buffer Write Ready
      BFRWRRDY        : IFCR_BFRWRRDY_Field := 16#0#;
      --  Buffer Read Ready
      BFRRDRDY        : IFCR_BFRRDRDY_Field := 16#0#;
      --  Card Insertion
      CARDINS         : IFCR_CARDINS_Field := 16#0#;
      --  Card Removal
      CARDRM          : IFCR_CARDRM_Field := 16#0#;
      --  Read-only. Card Interrupt
      CARDINT         : IFCR_CARDINT_Field := 16#0#;
      --  unspecified
      Reserved_9_11   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Read-only. Re-Tunning Event
      RETUNINGEVT     : IFCR_RETUNINGEVT_Field := 16#0#;
      --  Boot Ack Received
      BOOTACKRCV      : IFCR_BOOTACKRCV_Field := 16#0#;
      --  Boot Terminate Interrupt
      BOOTTERMINATE   : IFCR_BOOTTERMINATE_Field := 16#0#;
      --  Read-only. Error Interrupt
      ERRINT          : IFCR_ERRINT_Field := 16#0#;
      --  Command Timeout Error
      CMDTOUTERR      : IFCR_CMDTOUTERR_Field := 16#0#;
      --  CMD CRC Error
      CMDCRCERR       : IFCR_CMDCRCERR_Field := 16#0#;
      --  Command End Bit Error
      CMDENDBITERR    : IFCR_CMDENDBITERR_Field := 16#0#;
      --  Command Index Error
      CMDINDEXERR     : IFCR_CMDINDEXERR_Field := 16#0#;
      --  Data Time-out Error
      DATTOUTERR      : IFCR_DATTOUTERR_Field := 16#0#;
      --  Data CRC Error
      DATCRCERR       : IFCR_DATCRCERR_Field := 16#0#;
      --  Data End Bit Error
      DATENDBITERR    : IFCR_DATENDBITERR_Field := 16#0#;
      --  Current Limit Error
      CURRENTLIMITERR : IFCR_CURRENTLIMITERR_Field := 16#0#;
      --  Auto CMD Error
      AUTOCMDERR      : IFCR_AUTOCMDERR_Field := 16#0#;
      --  ADMA Error
      ADMAERR         : IFCR_ADMAERR_Field := 16#0#;
      --  unspecified
      Reserved_26_27  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Specific Error STAT
      TARGETRESP      : IFCR_TARGETRESP_Field := 16#0#;
      --  unspecified
      Reserved_29_31  : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFCR_Register use record
      CMDCOM          at 0 range 0 .. 0;
      TRANCOM         at 0 range 1 .. 1;
      BLKGAPEVT       at 0 range 2 .. 2;
      DMAINT          at 0 range 3 .. 3;
      BFRWRRDY        at 0 range 4 .. 4;
      BFRRDRDY        at 0 range 5 .. 5;
      CARDINS         at 0 range 6 .. 6;
      CARDRM          at 0 range 7 .. 7;
      CARDINT         at 0 range 8 .. 8;
      Reserved_9_11   at 0 range 9 .. 11;
      RETUNINGEVT     at 0 range 12 .. 12;
      BOOTACKRCV      at 0 range 13 .. 13;
      BOOTTERMINATE   at 0 range 14 .. 14;
      ERRINT          at 0 range 15 .. 15;
      CMDTOUTERR      at 0 range 16 .. 16;
      CMDCRCERR       at 0 range 17 .. 17;
      CMDENDBITERR    at 0 range 18 .. 18;
      CMDINDEXERR     at 0 range 19 .. 19;
      DATTOUTERR      at 0 range 20 .. 20;
      DATCRCERR       at 0 range 21 .. 21;
      DATENDBITERR    at 0 range 22 .. 22;
      CURRENTLIMITERR at 0 range 23 .. 23;
      AUTOCMDERR      at 0 range 24 .. 24;
      ADMAERR         at 0 range 25 .. 25;
      Reserved_26_27  at 0 range 26 .. 27;
      TARGETRESP      at 0 range 28 .. 28;
      Reserved_29_31  at 0 range 29 .. 31;
   end record;

   subtype IFENC_CMDCOMEN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_TRANCOMEN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_BLKGAPEVTEN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_DMAINTEN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_BUFWRRDYEN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_BUFRDRDYEN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_CARDINSEN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_CARDRMEN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_CARDINTEN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_RETUNINGEVTEN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_BOOTACKRCVEN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_BOOTTERMINATEEN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_CMDTOUTERREN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_CMDCRCERREN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_CMDENDBITERREN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_CMDINDEXERREN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_DATTOUTERREN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_DATCRCERREN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_DATENDBITERREN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_CURRENTLIMITERREN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_AUTOCMDERREN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_ADMAERREN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_TUNINGERREN_Field is Interfaces.EFM32.Bit;
   subtype IFENC_TARGETRESPEN_Field is Interfaces.EFM32.Bit;

   --  Normal and Error Interrupt Status Enable Register
   type IFENC_Register is record
      --  Command Complete Signal Enable
      CMDCOMEN          : IFENC_CMDCOMEN_Field := 16#0#;
      --  Transfer Complete Signal Enable
      TRANCOMEN         : IFENC_TRANCOMEN_Field := 16#0#;
      --  Block Gap Event Signal Enable
      BLKGAPEVTEN       : IFENC_BLKGAPEVTEN_Field := 16#0#;
      --  DMA Interrupt Signal Enable
      DMAINTEN          : IFENC_DMAINTEN_Field := 16#0#;
      --  Buffer Write Ready Signal Enable
      BUFWRRDYEN        : IFENC_BUFWRRDYEN_Field := 16#0#;
      --  Buffer Read Ready Signal Enable
      BUFRDRDYEN        : IFENC_BUFRDRDYEN_Field := 16#0#;
      --  Card Insertion Signal Enable
      CARDINSEN         : IFENC_CARDINSEN_Field := 16#0#;
      --  Card Removal Signal Enable
      CARDRMEN          : IFENC_CARDRMEN_Field := 16#0#;
      --  Card Interrupt Signal Enable
      CARDINTEN         : IFENC_CARDINTEN_Field := 16#0#;
      --  unspecified
      Reserved_9_11     : Interfaces.EFM32.UInt3 := 16#0#;
      --  Re-Tunning Event Signal Enable
      RETUNINGEVTEN     : IFENC_RETUNINGEVTEN_Field := 16#0#;
      --  Boot Ack Received Signal Enable
      BOOTACKRCVEN      : IFENC_BOOTACKRCVEN_Field := 16#0#;
      --  Boot Terminate Interrupt Signal Enable
      BOOTTERMINATEEN   : IFENC_BOOTTERMINATEEN_Field := 16#0#;
      --  unspecified
      Reserved_15_15    : Interfaces.EFM32.Bit := 16#0#;
      --  Command Time-out Error Status Enable
      CMDTOUTERREN      : IFENC_CMDTOUTERREN_Field := 16#0#;
      --  Command CRC Error Status Enable
      CMDCRCERREN       : IFENC_CMDCRCERREN_Field := 16#0#;
      --  Command End Bit Error Status Enable
      CMDENDBITERREN    : IFENC_CMDENDBITERREN_Field := 16#0#;
      --  Command Index Error Status Enable
      CMDINDEXERREN     : IFENC_CMDINDEXERREN_Field := 16#0#;
      --  Data Timeout Error Status Enable
      DATTOUTERREN      : IFENC_DATTOUTERREN_Field := 16#0#;
      --  Data CRC Error Status Enable
      DATCRCERREN       : IFENC_DATCRCERREN_Field := 16#0#;
      --  Data End Bit Error Status Enable
      DATENDBITERREN    : IFENC_DATENDBITERREN_Field := 16#0#;
      --  Current Limit Error Status Enable
      CURRENTLIMITERREN : IFENC_CURRENTLIMITERREN_Field := 16#0#;
      --  Auto CMD12 Error Status Enable
      AUTOCMDERREN      : IFENC_AUTOCMDERREN_Field := 16#0#;
      --  ADMA Error Status Enable
      ADMAERREN         : IFENC_ADMAERREN_Field := 16#0#;
      --  Tuning Error Status Enable
      TUNINGERREN       : IFENC_TUNINGERREN_Field := 16#0#;
      --  unspecified
      Reserved_27_27    : Interfaces.EFM32.Bit := 16#0#;
      --  Target Response/Host Error Status Enable
      TARGETRESPEN      : IFENC_TARGETRESPEN_Field := 16#0#;
      --  unspecified
      Reserved_29_31    : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFENC_Register use record
      CMDCOMEN          at 0 range 0 .. 0;
      TRANCOMEN         at 0 range 1 .. 1;
      BLKGAPEVTEN       at 0 range 2 .. 2;
      DMAINTEN          at 0 range 3 .. 3;
      BUFWRRDYEN        at 0 range 4 .. 4;
      BUFRDRDYEN        at 0 range 5 .. 5;
      CARDINSEN         at 0 range 6 .. 6;
      CARDRMEN          at 0 range 7 .. 7;
      CARDINTEN         at 0 range 8 .. 8;
      Reserved_9_11     at 0 range 9 .. 11;
      RETUNINGEVTEN     at 0 range 12 .. 12;
      BOOTACKRCVEN      at 0 range 13 .. 13;
      BOOTTERMINATEEN   at 0 range 14 .. 14;
      Reserved_15_15    at 0 range 15 .. 15;
      CMDTOUTERREN      at 0 range 16 .. 16;
      CMDCRCERREN       at 0 range 17 .. 17;
      CMDENDBITERREN    at 0 range 18 .. 18;
      CMDINDEXERREN     at 0 range 19 .. 19;
      DATTOUTERREN      at 0 range 20 .. 20;
      DATCRCERREN       at 0 range 21 .. 21;
      DATENDBITERREN    at 0 range 22 .. 22;
      CURRENTLIMITERREN at 0 range 23 .. 23;
      AUTOCMDERREN      at 0 range 24 .. 24;
      ADMAERREN         at 0 range 25 .. 25;
      TUNINGERREN       at 0 range 26 .. 26;
      Reserved_27_27    at 0 range 27 .. 27;
      TARGETRESPEN      at 0 range 28 .. 28;
      Reserved_29_31    at 0 range 29 .. 31;
   end record;

   subtype IEN_CMDCOMSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_TRANCOMSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_BLKGAPEVTSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_DMAINTSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_BUFWRRDYSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_BUFRDRDYSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_CARDINSSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_CARDREMSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_CARDINTSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_RETUNINGEVTSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_BOOTACKRCVSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_BOOTTERMINATESEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_CMDTOUTERRSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_CMDCRCERRSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_CMDENDBITERRSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_CMDINDEXERRSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_DATTOUTERRSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_DATCRCERRSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_DATENDBITERRSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_CURRENTLIMITERRSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_AUTOCMDERRSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_ADMAERRSEN_Field is Interfaces.EFM32.Bit;
   subtype IEN_TUNINGERRSIGNALENABLE_Field is Interfaces.EFM32.Bit;
   subtype IEN_TARGETRESPERRSEN_Field is Interfaces.EFM32.Bit;

   --  Normal and Error Interrupt Signal Enable Register
   type IEN_Register is record
      --  Command Complete Signal Enable
      CMDCOMSEN             : IEN_CMDCOMSEN_Field := 16#0#;
      --  Transfer Complete Signal Enable
      TRANCOMSEN            : IEN_TRANCOMSEN_Field := 16#0#;
      --  Block Gap Event Signal Enable
      BLKGAPEVTSEN          : IEN_BLKGAPEVTSEN_Field := 16#0#;
      --  DMA Interrupt Signal Enable
      DMAINTSEN             : IEN_DMAINTSEN_Field := 16#0#;
      --  Buffer Write Ready Signal Enable
      BUFWRRDYSEN           : IEN_BUFWRRDYSEN_Field := 16#0#;
      --  Buffer Read Ready Signal Enable
      BUFRDRDYSEN           : IEN_BUFRDRDYSEN_Field := 16#0#;
      --  Card Insertion Signal Enable
      CARDINSSEN            : IEN_CARDINSSEN_Field := 16#0#;
      --  Card Removal Signal Enable
      CARDREMSEN            : IEN_CARDREMSEN_Field := 16#0#;
      --  Card Interrupt Signal Enable
      CARDINTSEN            : IEN_CARDINTSEN_Field := 16#0#;
      --  unspecified
      Reserved_9_11         : Interfaces.EFM32.UInt3 := 16#0#;
      --  Re-Tuning Event Signal Enable
      RETUNINGEVTSEN        : IEN_RETUNINGEVTSEN_Field := 16#0#;
      --  Boot Ack Received Signal Enable
      BOOTACKRCVSEN         : IEN_BOOTACKRCVSEN_Field := 16#0#;
      --  Boot Terminate Interrupt Signal Enable
      BOOTTERMINATESEN      : IEN_BOOTTERMINATESEN_Field := 16#0#;
      --  unspecified
      Reserved_15_15        : Interfaces.EFM32.Bit := 16#0#;
      --  Command Timeout Error Signal Enable
      CMDTOUTERRSEN         : IEN_CMDTOUTERRSEN_Field := 16#0#;
      --  Command CRC Error Signal Enable
      CMDCRCERRSEN          : IEN_CMDCRCERRSEN_Field := 16#0#;
      --  Command End Bit Error Signal Enable
      CMDENDBITERRSEN       : IEN_CMDENDBITERRSEN_Field := 16#0#;
      --  Command Index Error Signal Enable
      CMDINDEXERRSEN        : IEN_CMDINDEXERRSEN_Field := 16#0#;
      --  Data Timeout Error Signal Enable
      DATTOUTERRSEN         : IEN_DATTOUTERRSEN_Field := 16#0#;
      --  Data CRC Error Signal Enable
      DATCRCERRSEN          : IEN_DATCRCERRSEN_Field := 16#0#;
      --  Data End Bit Error Signal Enable
      DATENDBITERRSEN       : IEN_DATENDBITERRSEN_Field := 16#0#;
      --  Current Limit Error Signal Enable
      CURRENTLIMITERRSEN    : IEN_CURRENTLIMITERRSEN_Field := 16#0#;
      --  Auto CMD12 Error Signal Enable
      AUTOCMDERRSEN         : IEN_AUTOCMDERRSEN_Field := 16#0#;
      --  ADMA Error Signal Enable
      ADMAERRSEN            : IEN_ADMAERRSEN_Field := 16#0#;
      --  Tuning Error Signal Enable
      TUNINGERRSIGNALENABLE : IEN_TUNINGERRSIGNALENABLE_Field := 16#0#;
      --  unspecified
      Reserved_27_27        : Interfaces.EFM32.Bit := 16#0#;
      --  Target Response Error Signal Enable
      TARGETRESPERRSEN      : IEN_TARGETRESPERRSEN_Field := 16#0#;
      --  unspecified
      Reserved_29_31        : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      CMDCOMSEN             at 0 range 0 .. 0;
      TRANCOMSEN            at 0 range 1 .. 1;
      BLKGAPEVTSEN          at 0 range 2 .. 2;
      DMAINTSEN             at 0 range 3 .. 3;
      BUFWRRDYSEN           at 0 range 4 .. 4;
      BUFRDRDYSEN           at 0 range 5 .. 5;
      CARDINSSEN            at 0 range 6 .. 6;
      CARDREMSEN            at 0 range 7 .. 7;
      CARDINTSEN            at 0 range 8 .. 8;
      Reserved_9_11         at 0 range 9 .. 11;
      RETUNINGEVTSEN        at 0 range 12 .. 12;
      BOOTACKRCVSEN         at 0 range 13 .. 13;
      BOOTTERMINATESEN      at 0 range 14 .. 14;
      Reserved_15_15        at 0 range 15 .. 15;
      CMDTOUTERRSEN         at 0 range 16 .. 16;
      CMDCRCERRSEN          at 0 range 17 .. 17;
      CMDENDBITERRSEN       at 0 range 18 .. 18;
      CMDINDEXERRSEN        at 0 range 19 .. 19;
      DATTOUTERRSEN         at 0 range 20 .. 20;
      DATCRCERRSEN          at 0 range 21 .. 21;
      DATENDBITERRSEN       at 0 range 22 .. 22;
      CURRENTLIMITERRSEN    at 0 range 23 .. 23;
      AUTOCMDERRSEN         at 0 range 24 .. 24;
      ADMAERRSEN            at 0 range 25 .. 25;
      TUNINGERRSIGNALENABLE at 0 range 26 .. 26;
      Reserved_27_27        at 0 range 27 .. 27;
      TARGETRESPERRSEN      at 0 range 28 .. 28;
      Reserved_29_31        at 0 range 29 .. 31;
   end record;

   subtype AC12ERRSTAT_AC12NOTEXE_Field is Interfaces.EFM32.Bit;
   subtype AC12ERRSTAT_AC12TOE_Field is Interfaces.EFM32.Bit;
   subtype AC12ERRSTAT_AC12CRCERR_Field is Interfaces.EFM32.Bit;
   subtype AC12ERRSTAT_AC12ENDBITERR_Field is Interfaces.EFM32.Bit;
   subtype AC12ERRSTAT_AC12INDEXERR_Field is Interfaces.EFM32.Bit;
   subtype AC12ERRSTAT_CNIBAC12ERR_Field is Interfaces.EFM32.Bit;

   --  UHS Mode Select
   type AC12ERRSTAT_UHSMODESEL_Field is
     (--  SDR12
      SDR12,
      --  SDR25
      SDR25,
      --  SDR50
      SDR50,
      --  SDR104
      SDR104,
      --  DDR50
      DDR50)
     with Size => 3;
   for AC12ERRSTAT_UHSMODESEL_Field use
     (SDR12 => 0,
      SDR25 => 1,
      SDR50 => 2,
      SDR104 => 3,
      DDR50 => 4);

   subtype AC12ERRSTAT_SIGEN1P8V_Field is Interfaces.EFM32.Bit;

   --  Driver Strength Select
   type AC12ERRSTAT_DRVSTNSEL_Field is
     (--  Driver Type B is selected (Default)
      TYPEB,
      --  Driver Type A is selected
      TYPEA,
      --  Driver Type C is selected
      TYPEC,
      --  Driver Type D is selected
      TYPED)
     with Size => 2;
   for AC12ERRSTAT_DRVSTNSEL_Field use
     (TYPEB => 0,
      TYPEA => 1,
      TYPEC => 2,
      TYPED => 3);

   subtype AC12ERRSTAT_EXETUNING_Field is Interfaces.EFM32.Bit;
   subtype AC12ERRSTAT_SAMPCLKSEL_Field is Interfaces.EFM32.Bit;
   subtype AC12ERRSTAT_ASYNCINTEN_Field is Interfaces.EFM32.Bit;
   subtype AC12ERRSTAT_PRSTVALEN_Field is Interfaces.EFM32.Bit;

   --  AUTO CMD12 Error Status and Host Control2 Register
   type AC12ERRSTAT_Register is record
      --  Read-only. Auto CMD12 Not Executed
      AC12NOTEXE     : AC12ERRSTAT_AC12NOTEXE_Field := 16#0#;
      --  Read-only. Auto CMD12 Timeout Error
      AC12TOE        : AC12ERRSTAT_AC12TOE_Field := 16#0#;
      --  Read-only. Auto CMD CRC Error
      AC12CRCERR     : AC12ERRSTAT_AC12CRCERR_Field := 16#0#;
      --  Read-only. Auto CMD End Bit Error
      AC12ENDBITERR  : AC12ERRSTAT_AC12ENDBITERR_Field := 16#0#;
      --  Read-only. Auto CMD Index Error
      AC12INDEXERR   : AC12ERRSTAT_AC12INDEXERR_Field := 16#0#;
      --  unspecified
      Reserved_5_6   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Read-only. Command Not Issued By Auto CMD12 Error
      CNIBAC12ERR    : AC12ERRSTAT_CNIBAC12ERR_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.EFM32.Byte := 16#0#;
      --  UHS Mode Select
      UHSMODESEL     : AC12ERRSTAT_UHSMODESEL_Field :=
                        Interfaces.EFM32.SDIO.SDR12;
      --  Voltage 1.8V Signal Enable
      SIGEN1P8V      : AC12ERRSTAT_SIGEN1P8V_Field := 16#0#;
      --  Driver Strength Select
      DRVSTNSEL      : AC12ERRSTAT_DRVSTNSEL_Field :=
                        Interfaces.EFM32.SDIO.TYPEB;
      --  Execute Tuning
      EXETUNING      : AC12ERRSTAT_EXETUNING_Field := 16#0#;
      --  Sampling Clock Select
      SAMPCLKSEL     : AC12ERRSTAT_SAMPCLKSEL_Field := 16#0#;
      --  unspecified
      Reserved_24_29 : Interfaces.EFM32.UInt6 := 16#0#;
      --  Asynchronous Interrupt Enable
      ASYNCINTEN     : AC12ERRSTAT_ASYNCINTEN_Field := 16#0#;
      --  Preset Value Enable
      PRSTVALEN      : AC12ERRSTAT_PRSTVALEN_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for AC12ERRSTAT_Register use record
      AC12NOTEXE     at 0 range 0 .. 0;
      AC12TOE        at 0 range 1 .. 1;
      AC12CRCERR     at 0 range 2 .. 2;
      AC12ENDBITERR  at 0 range 3 .. 3;
      AC12INDEXERR   at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      CNIBAC12ERR    at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      UHSMODESEL     at 0 range 16 .. 18;
      SIGEN1P8V      at 0 range 19 .. 19;
      DRVSTNSEL      at 0 range 20 .. 21;
      EXETUNING      at 0 range 22 .. 22;
      SAMPCLKSEL     at 0 range 23 .. 23;
      Reserved_24_29 at 0 range 24 .. 29;
      ASYNCINTEN     at 0 range 30 .. 30;
      PRSTVALEN      at 0 range 31 .. 31;
   end record;

   subtype CAPAB0_TMOUTCLKFREQ_Field is Interfaces.EFM32.UInt6;
   subtype CAPAB0_TMOUTCLKUNIT_Field is Interfaces.EFM32.Bit;
   subtype CAPAB0_BASECLKFREQSD_Field is Interfaces.EFM32.Byte;
   subtype CAPAB0_MAXBLOCKLEN_Field is Interfaces.EFM32.UInt2;
   subtype CAPAB0_EXTMEDIABUSSUP_Field is Interfaces.EFM32.Bit;
   subtype CAPAB0_ADMA2SUP_Field is Interfaces.EFM32.Bit;
   subtype CAPAB0_HSSUP_Field is Interfaces.EFM32.Bit;
   subtype CAPAB0_SDMASUP_Field is Interfaces.EFM32.Bit;
   subtype CAPAB0_SUSRESSUP_Field is Interfaces.EFM32.Bit;
   subtype CAPAB0_VOLTSUP3P3V_Field is Interfaces.EFM32.Bit;
   subtype CAPAB0_VOLTSUP3P0V_Field is Interfaces.EFM32.Bit;
   subtype CAPAB0_VOLTSUP1P8V_Field is Interfaces.EFM32.Bit;
   subtype CAPAB0_SYSBUS64BSUP_Field is Interfaces.EFM32.Bit;
   subtype CAPAB0_ASYNCINTSUP_Field is Interfaces.EFM32.Bit;

   --  Interface Card Slot Type
   type CAPAB0_IFSLOTTYPE_Field is
     (--  Removable Card Slot
      REMOVABLE,
      --  Only one non-removable device is conected to a SD bus slot
      EMBEDDED,
      --  Can be set if Host controller supports Shared Bus CTRL register
      SHARED)
     with Size => 2;
   for CAPAB0_IFSLOTTYPE_Field use
     (REMOVABLE => 0,
      EMBEDDED => 1,
      SHARED => 2);

   --  Capabilities Register to Hold Bits 31~0
   type CAPAB0_Register is record
      --  Read-only. Timeout Clock Frequency
      TMOUTCLKFREQ   : CAPAB0_TMOUTCLKFREQ_Field;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit;
      --  Read-only. Timeout Clock Unit
      TMOUTCLKUNIT   : CAPAB0_TMOUTCLKUNIT_Field;
      --  Read-only. Base Clock Frequency for SD_CLK
      BASECLKFREQSD  : CAPAB0_BASECLKFREQSD_Field;
      --  Read-only. Maximum Block Length
      MAXBLOCKLEN    : CAPAB0_MAXBLOCKLEN_Field;
      --  Read-only. Extended Media Bus Support
      EXTMEDIABUSSUP : CAPAB0_EXTMEDIABUSSUP_Field;
      --  Read-only. ADMA2 Support
      ADMA2SUP       : CAPAB0_ADMA2SUP_Field;
      --  unspecified
      Reserved_20_20 : Interfaces.EFM32.Bit;
      --  Read-only. High Speed Support
      HSSUP          : CAPAB0_HSSUP_Field;
      --  Read-only. SDMA Support
      SDMASUP        : CAPAB0_SDMASUP_Field;
      --  Read-only. Suspend / Resume Support
      SUSRESSUP      : CAPAB0_SUSRESSUP_Field;
      --  Read-only. Voltage Support 3.3V
      VOLTSUP3P3V    : CAPAB0_VOLTSUP3P3V_Field;
      --  Read-only. Voltage Support 3.0V
      VOLTSUP3P0V    : CAPAB0_VOLTSUP3P0V_Field;
      --  Read-only. Voltage Support 1.8V
      VOLTSUP1P8V    : CAPAB0_VOLTSUP1P8V_Field;
      --  unspecified
      Reserved_27_27 : Interfaces.EFM32.Bit;
      --  Read-only. System Bus 64-bit Support
      SYSBUS64BSUP   : CAPAB0_SYSBUS64BSUP_Field;
      --  Read-only. Asynchronous Interrupt Support
      ASYNCINTSUP    : CAPAB0_ASYNCINTSUP_Field;
      --  Read-only. Interface Card Slot Type
      IFSLOTTYPE     : CAPAB0_IFSLOTTYPE_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAPAB0_Register use record
      TMOUTCLKFREQ   at 0 range 0 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      TMOUTCLKUNIT   at 0 range 7 .. 7;
      BASECLKFREQSD  at 0 range 8 .. 15;
      MAXBLOCKLEN    at 0 range 16 .. 17;
      EXTMEDIABUSSUP at 0 range 18 .. 18;
      ADMA2SUP       at 0 range 19 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      HSSUP          at 0 range 21 .. 21;
      SDMASUP        at 0 range 22 .. 22;
      SUSRESSUP      at 0 range 23 .. 23;
      VOLTSUP3P3V    at 0 range 24 .. 24;
      VOLTSUP3P0V    at 0 range 25 .. 25;
      VOLTSUP1P8V    at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      SYSBUS64BSUP   at 0 range 28 .. 28;
      ASYNCINTSUP    at 0 range 29 .. 29;
      IFSLOTTYPE     at 0 range 30 .. 31;
   end record;

   subtype CAPAB2_SDR50SUP_Field is Interfaces.EFM32.Bit;
   subtype CAPAB2_SDR104SUP_Field is Interfaces.EFM32.Bit;
   subtype CAPAB2_DDR50SUP_Field is Interfaces.EFM32.Bit;
   subtype CAPAB2_DRVTYPASUP_Field is Interfaces.EFM32.Bit;
   subtype CAPAB2_DRVTYPCSUP_Field is Interfaces.EFM32.Bit;
   subtype CAPAB2_DRVTYPDSUP_Field is Interfaces.EFM32.Bit;
   subtype CAPAB2_TIMCNTRETUN_Field is Interfaces.EFM32.UInt4;
   subtype CAPAB2_USETUNSDR50_Field is Interfaces.EFM32.Bit;
   subtype CAPAB2_RETUNEMODES_Field is Interfaces.EFM32.UInt2;
   subtype CAPAB2_CLOCKKMUL_Field is Interfaces.EFM32.Byte;
   subtype CAPAB2_SPIMODE_Field is Interfaces.EFM32.Bit;
   subtype CAPAB2_SPIBLOCKMODE_Field is Interfaces.EFM32.Bit;

   --  Capabilities Register to Hold Bits 63~32
   type CAPAB2_Register is record
      --  Read-only. SDR50 Support
      SDR50SUP       : CAPAB2_SDR50SUP_Field;
      --  Read-only. SDR104 Support
      SDR104SUP      : CAPAB2_SDR104SUP_Field;
      --  Read-only. DDR50 Support
      DDR50SUP       : CAPAB2_DDR50SUP_Field;
      --  unspecified
      Reserved_3_3   : Interfaces.EFM32.Bit;
      --  Read-only. Driver Type a Support
      DRVTYPASUP     : CAPAB2_DRVTYPASUP_Field;
      --  Read-only. Driver Type C Support
      DRVTYPCSUP     : CAPAB2_DRVTYPCSUP_Field;
      --  Read-only. Driver Type D Support
      DRVTYPDSUP     : CAPAB2_DRVTYPDSUP_Field;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit;
      --  Read-only. Timer Count for Re-Tuning
      TIMCNTRETUN    : CAPAB2_TIMCNTRETUN_Field;
      --  unspecified
      Reserved_12_12 : Interfaces.EFM32.Bit;
      --  Read-only. Use Tuning for SDR50
      USETUNSDR50    : CAPAB2_USETUNSDR50_Field;
      --  Read-only. Re-tuning Modes
      RETUNEMODES    : CAPAB2_RETUNEMODES_Field;
      --  Read-only. Clock Multiplier
      CLOCKKMUL      : CAPAB2_CLOCKKMUL_Field;
      --  Read-only. SPI Mode Support
      SPIMODE        : CAPAB2_SPIMODE_Field;
      --  Read-only. SPI Block Mode Support
      SPIBLOCKMODE   : CAPAB2_SPIBLOCKMODE_Field;
      --  unspecified
      Reserved_26_31 : Interfaces.EFM32.UInt6;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CAPAB2_Register use record
      SDR50SUP       at 0 range 0 .. 0;
      SDR104SUP      at 0 range 1 .. 1;
      DDR50SUP       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DRVTYPASUP     at 0 range 4 .. 4;
      DRVTYPCSUP     at 0 range 5 .. 5;
      DRVTYPDSUP     at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TIMCNTRETUN    at 0 range 8 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      USETUNSDR50    at 0 range 13 .. 13;
      RETUNEMODES    at 0 range 14 .. 15;
      CLOCKKMUL      at 0 range 16 .. 23;
      SPIMODE        at 0 range 24 .. 24;
      SPIBLOCKMODE   at 0 range 25 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype MAXCURCAPAB_MAXCUR3P3VAL_Field is Interfaces.EFM32.Byte;
   subtype MAXCURCAPAB_MAXCUR3P0VAL_Field is Interfaces.EFM32.Byte;
   subtype MAXCURCAPAB_MAXCUR1P8VAL_Field is Interfaces.EFM32.Byte;

   --  Maximum Current Capabilities Register
   type MAXCURCAPAB_Register is record
      --  Read-only. Maximum Current for 3.3V
      MAXCUR3P3VAL   : MAXCURCAPAB_MAXCUR3P3VAL_Field;
      --  Read-only. Maximum Current for 3.0V
      MAXCUR3P0VAL   : MAXCURCAPAB_MAXCUR3P0VAL_Field;
      --  Read-only. Maximum Current for 1.8V
      MAXCUR1P8VAL   : MAXCURCAPAB_MAXCUR1P8VAL_Field;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for MAXCURCAPAB_Register use record
      MAXCUR3P3VAL   at 0 range 0 .. 7;
      MAXCUR3P0VAL   at 0 range 8 .. 15;
      MAXCUR1P8VAL   at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype FEVTERRSTAT_AC12NEX_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_AC12TOE_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_AC12CRCE_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_AC12EBE_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_AC12INDXE_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_CNIBAC12E_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_CMDTOE_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_CMDCRCE_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_CMDEBE_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_CMDINDXE_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_DATTOE_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_DATCRCE_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_DATEBE_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_CURLIMITE_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_AC12E_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_ADMAE_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_TUNINGE_Field is Interfaces.EFM32.Bit;
   subtype FEVTERRSTAT_VENSPECE_Field is Interfaces.EFM32.UInt4;

   --  Force Event Register for Auto CMD Error Status
   type FEVTERRSTAT_Register is record
      --  Force Event for Command Not Issued By Auto CM12 Not Executed
      AC12NEX        : FEVTERRSTAT_AC12NEX_Field := 16#0#;
      --  Force Event for Auto CMD Timeout Error
      AC12TOE        : FEVTERRSTAT_AC12TOE_Field := 16#0#;
      --  Force Event for Auto CMD CRC Error
      AC12CRCE       : FEVTERRSTAT_AC12CRCE_Field := 16#0#;
      --  Force Event for Auto CMD End Bit Error
      AC12EBE        : FEVTERRSTAT_AC12EBE_Field := 16#0#;
      --  Force Event for Auto CMD Index Error
      AC12INDXE      : FEVTERRSTAT_AC12INDXE_Field := 16#0#;
      --  unspecified
      Reserved_5_6   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Force Event for Command Not Issued By Auto CMD12 Error
      CNIBAC12E      : FEVTERRSTAT_CNIBAC12E_Field := 16#0#;
      --  unspecified
      Reserved_8_15  : Interfaces.EFM32.Byte := 16#0#;
      --  Force Event for Command Timeout Error
      CMDTOE         : FEVTERRSTAT_CMDTOE_Field := 16#0#;
      --  Force Event for Command CRC Error
      CMDCRCE        : FEVTERRSTAT_CMDCRCE_Field := 16#0#;
      --  Force Event for Command End Bit Error
      CMDEBE         : FEVTERRSTAT_CMDEBE_Field := 16#0#;
      --  Force Event for Command Index Error
      CMDINDXE       : FEVTERRSTAT_CMDINDXE_Field := 16#0#;
      --  Force Event for Data Timeout Error
      DATTOE         : FEVTERRSTAT_DATTOE_Field := 16#0#;
      --  Force Event for Data CRC Error
      DATCRCE        : FEVTERRSTAT_DATCRCE_Field := 16#0#;
      --  Force Event for Data End Bit Error
      DATEBE         : FEVTERRSTAT_DATEBE_Field := 16#0#;
      --  Force Event for Current Limit Error
      CURLIMITE      : FEVTERRSTAT_CURLIMITE_Field := 16#0#;
      --  Force Event for Auto CMD Error
      AC12E          : FEVTERRSTAT_AC12E_Field := 16#0#;
      --  Force Event for ADMA Error
      ADMAE          : FEVTERRSTAT_ADMAE_Field := 16#0#;
      --  Read-only. Force Event for Tuning Errro
      TUNINGE        : FEVTERRSTAT_TUNINGE_Field := 16#0#;
      --  unspecified
      Reserved_27_27 : Interfaces.EFM32.Bit := 16#0#;
      --  Read-only. Force Event for Vendox Specific Error Status
      VENSPECE       : FEVTERRSTAT_VENSPECE_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for FEVTERRSTAT_Register use record
      AC12NEX        at 0 range 0 .. 0;
      AC12TOE        at 0 range 1 .. 1;
      AC12CRCE       at 0 range 2 .. 2;
      AC12EBE        at 0 range 3 .. 3;
      AC12INDXE      at 0 range 4 .. 4;
      Reserved_5_6   at 0 range 5 .. 6;
      CNIBAC12E      at 0 range 7 .. 7;
      Reserved_8_15  at 0 range 8 .. 15;
      CMDTOE         at 0 range 16 .. 16;
      CMDCRCE        at 0 range 17 .. 17;
      CMDEBE         at 0 range 18 .. 18;
      CMDINDXE       at 0 range 19 .. 19;
      DATTOE         at 0 range 20 .. 20;
      DATCRCE        at 0 range 21 .. 21;
      DATEBE         at 0 range 22 .. 22;
      CURLIMITE      at 0 range 23 .. 23;
      AC12E          at 0 range 24 .. 24;
      ADMAE          at 0 range 25 .. 25;
      TUNINGE        at 0 range 26 .. 26;
      Reserved_27_27 at 0 range 27 .. 27;
      VENSPECE       at 0 range 28 .. 31;
   end record;

   subtype ADMAES_ADMAES_Field is Interfaces.EFM32.UInt2;
   subtype ADMAES_ADMALME_Field is Interfaces.EFM32.Bit;

   --  ADMA Error Status Register
   type ADMAES_Register is record
      --  Read-only. ADMA Error State
      ADMAES        : ADMAES_ADMAES_Field;
      --  Read-only. ADMA Length Mismatch Error
      ADMALME       : ADMAES_ADMALME_Field;
      --  unspecified
      Reserved_3_31 : Interfaces.EFM32.UInt29;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ADMAES_Register use record
      ADMAES        at 0 range 0 .. 1;
      ADMALME       at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype PRSTVAL0_INITSDCLKFREQVAL_Field is Interfaces.EFM32.UInt10;
   subtype PRSTVAL0_INITCLCKGENVAL_Field is Interfaces.EFM32.Bit;

   --  Driver Strength Select Value for Initialization
   type PRSTVAL0_INITDRVSTVAL_Field is
     (--  Driver Type B is selected (Default)
      TYPEB,
      --  Driver Type A is selected
      TYPEA,
      --  Driver Type C is selected
      TYPEC,
      --  Driver Type D is selected
      TYPED)
     with Size => 2;
   for PRSTVAL0_INITDRVSTVAL_Field use
     (TYPEB => 0,
      TYPEA => 1,
      TYPEC => 2,
      TYPED => 3);

   subtype PRSTVAL0_DSPSDCLKFREQVAL_Field is Interfaces.EFM32.UInt10;
   subtype PRSTVAL0_DSPCLKGENVAL_Field is Interfaces.EFM32.Bit;

   --  Driver Strength Select Value for Default Speed
   type PRSTVAL0_DSPDRVSTVAL_Field is
     (--  Driver Type B is selected (Default)
      TYPEB,
      --  Driver Type A is selected
      TYPEA,
      --  Driver Type C is selected
      TYPEC,
      --  Driver Type D is selected
      TYPED)
     with Size => 2;
   for PRSTVAL0_DSPDRVSTVAL_Field use
     (TYPEB => 0,
      TYPEA => 1,
      TYPEC => 2,
      TYPED => 3);

   --  Preset Value for Initialization and Default Speed Mode
   type PRSTVAL0_Register is record
      --  Read-only. SD_CLK Frequency Select Value for Initialization
      INITSDCLKFREQVAL : PRSTVAL0_INITSDCLKFREQVAL_Field;
      --  Read-only. Clock Generator Select Value for Initialization
      INITCLCKGENVAL   : PRSTVAL0_INITCLCKGENVAL_Field;
      --  unspecified
      Reserved_11_13   : Interfaces.EFM32.UInt3;
      --  Read-only. Driver Strength Select Value for Initialization
      INITDRVSTVAL     : PRSTVAL0_INITDRVSTVAL_Field;
      --  Read-only. SD_CLK Frequency Select Value for Default Speed
      DSPSDCLKFREQVAL  : PRSTVAL0_DSPSDCLKFREQVAL_Field;
      --  Read-only. Clock Generator Select Value for Default Speed
      DSPCLKGENVAL     : PRSTVAL0_DSPCLKGENVAL_Field;
      --  unspecified
      Reserved_27_29   : Interfaces.EFM32.UInt3;
      --  Read-only. Driver Strength Select Value for Default Speed
      DSPDRVSTVAL      : PRSTVAL0_DSPDRVSTVAL_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRSTVAL0_Register use record
      INITSDCLKFREQVAL at 0 range 0 .. 9;
      INITCLCKGENVAL   at 0 range 10 .. 10;
      Reserved_11_13   at 0 range 11 .. 13;
      INITDRVSTVAL     at 0 range 14 .. 15;
      DSPSDCLKFREQVAL  at 0 range 16 .. 25;
      DSPCLKGENVAL     at 0 range 26 .. 26;
      Reserved_27_29   at 0 range 27 .. 29;
      DSPDRVSTVAL      at 0 range 30 .. 31;
   end record;

   subtype PRSTVAL2_HSPSDCLKFREQVAL_Field is Interfaces.EFM32.UInt10;
   subtype PRSTVAL2_HSPCLKGENVAL_Field is Interfaces.EFM32.Bit;

   --  Driver Strength Select Value for High Speed
   type PRSTVAL2_HSPDRVSTVAL_Field is
     (--  Driver Type B is selected (Default)
      TYPEB,
      --  Driver Type A is selected
      TYPEA,
      --  Driver Type C is selected
      TYPEC,
      --  Driver Type D is selected
      TYPED)
     with Size => 2;
   for PRSTVAL2_HSPDRVSTVAL_Field use
     (TYPEB => 0,
      TYPEA => 1,
      TYPEC => 2,
      TYPED => 3);

   subtype PRSTVAL2_SDR12SDCLKFREQVAL_Field is Interfaces.EFM32.UInt10;
   subtype PRSTVAL2_SDR12CLKGENVAL_Field is Interfaces.EFM32.Bit;

   --  Driver Strength Select Value for SDR12
   type PRSTVAL2_SDR12DRVSTVAL_Field is
     (--  Driver Type B is selected (Default)
      TYPEB,
      --  Driver Type A is selected
      TYPEA,
      --  Driver Type C is selected
      TYPEC,
      --  Driver Type D is selected
      TYPED)
     with Size => 2;
   for PRSTVAL2_SDR12DRVSTVAL_Field use
     (TYPEB => 0,
      TYPEA => 1,
      TYPEC => 2,
      TYPED => 3);

   --  Preset Value for High Speed and SDR12 Modes
   type PRSTVAL2_Register is record
      --  Read-only. SD_CLK Frequency Select Value for High Speed
      HSPSDCLKFREQVAL   : PRSTVAL2_HSPSDCLKFREQVAL_Field;
      --  Read-only. Clock Generator Select Value for High Speed
      HSPCLKGENVAL      : PRSTVAL2_HSPCLKGENVAL_Field;
      --  unspecified
      Reserved_11_13    : Interfaces.EFM32.UInt3;
      --  Read-only. Driver Strength Select Value for High Speed
      HSPDRVSTVAL       : PRSTVAL2_HSPDRVSTVAL_Field;
      --  Read-only. SD_CLK Frequency Select Value for SDR12
      SDR12SDCLKFREQVAL : PRSTVAL2_SDR12SDCLKFREQVAL_Field;
      --  Read-only. Clock Generator Select Value for SDR12
      SDR12CLKGENVAL    : PRSTVAL2_SDR12CLKGENVAL_Field;
      --  unspecified
      Reserved_27_29    : Interfaces.EFM32.UInt3;
      --  Read-only. Driver Strength Select Value for SDR12
      SDR12DRVSTVAL     : PRSTVAL2_SDR12DRVSTVAL_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRSTVAL2_Register use record
      HSPSDCLKFREQVAL   at 0 range 0 .. 9;
      HSPCLKGENVAL      at 0 range 10 .. 10;
      Reserved_11_13    at 0 range 11 .. 13;
      HSPDRVSTVAL       at 0 range 14 .. 15;
      SDR12SDCLKFREQVAL at 0 range 16 .. 25;
      SDR12CLKGENVAL    at 0 range 26 .. 26;
      Reserved_27_29    at 0 range 27 .. 29;
      SDR12DRVSTVAL     at 0 range 30 .. 31;
   end record;

   subtype PRSTVAL4_SDR25SDCLKFREQVAL_Field is Interfaces.EFM32.UInt10;
   subtype PRSTVAL4_SDR25CLKGENVAL_Field is Interfaces.EFM32.Bit;

   --  Driver Strength Select Value for SDR25
   type PRSTVAL4_SDR25DRVSTVAL_Field is
     (--  Driver Type B is selected (Default)
      TYPEB,
      --  Driver Type A is selected
      TYPEA,
      --  Driver Type C is selected
      TYPEC,
      --  Driver Type D is selected
      TYPED)
     with Size => 2;
   for PRSTVAL4_SDR25DRVSTVAL_Field use
     (TYPEB => 0,
      TYPEA => 1,
      TYPEC => 2,
      TYPED => 3);

   subtype PRSTVAL4_SDR50SDCLKFREQVAL_Field is Interfaces.EFM32.UInt10;
   subtype PRSTVAL4_SDR50CLCKGENVAL_Field is Interfaces.EFM32.Bit;

   --  Driver Strength Select Value for SDR50
   type PRSTVAL4_SDR50DRVSTVAL_Field is
     (--  Driver Type B is selected (Default)
      TYPEB,
      --  Driver Type A is selected
      TYPEA,
      --  Driver Type C is selected
      TYPEC,
      --  Driver Type D is selected
      TYPED)
     with Size => 2;
   for PRSTVAL4_SDR50DRVSTVAL_Field use
     (TYPEB => 0,
      TYPEA => 1,
      TYPEC => 2,
      TYPED => 3);

   --  Preset Value for SDR25 and SDR50 Modes
   type PRSTVAL4_Register is record
      --  Read-only. SD_CLK Frequency Select Value for SDR25
      SDR25SDCLKFREQVAL : PRSTVAL4_SDR25SDCLKFREQVAL_Field;
      --  Read-only. Clock Generator Select Value for SDR25
      SDR25CLKGENVAL    : PRSTVAL4_SDR25CLKGENVAL_Field;
      --  unspecified
      Reserved_11_13    : Interfaces.EFM32.UInt3;
      --  Read-only. Driver Strength Select Value for SDR25
      SDR25DRVSTVAL     : PRSTVAL4_SDR25DRVSTVAL_Field;
      --  Read-only. SD_CLK Frequency Select Value for SDR50
      SDR50SDCLKFREQVAL : PRSTVAL4_SDR50SDCLKFREQVAL_Field;
      --  Read-only. Clock Generator Select Value for SDR50
      SDR50CLCKGENVAL   : PRSTVAL4_SDR50CLCKGENVAL_Field;
      --  unspecified
      Reserved_27_29    : Interfaces.EFM32.UInt3;
      --  Read-only. Driver Strength Select Value for SDR50
      SDR50DRVSTVAL     : PRSTVAL4_SDR50DRVSTVAL_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRSTVAL4_Register use record
      SDR25SDCLKFREQVAL at 0 range 0 .. 9;
      SDR25CLKGENVAL    at 0 range 10 .. 10;
      Reserved_11_13    at 0 range 11 .. 13;
      SDR25DRVSTVAL     at 0 range 14 .. 15;
      SDR50SDCLKFREQVAL at 0 range 16 .. 25;
      SDR50CLCKGENVAL   at 0 range 26 .. 26;
      Reserved_27_29    at 0 range 27 .. 29;
      SDR50DRVSTVAL     at 0 range 30 .. 31;
   end record;

   subtype PRSTVAL6_SDR104SDCLKFREQVAL_Field is Interfaces.EFM32.UInt10;
   subtype PRSTVAL6_SDR104CLKGENVAL_Field is Interfaces.EFM32.Bit;

   --  Driver Strength Select Value for SDR104
   type PRSTVAL6_SDR104DRVSTVAL_Field is
     (--  Driver Type B is selected (Default)
      TYPEB,
      --  Driver Type A is selected
      TYPEA,
      --  Driver Type C is selected
      TYPEC,
      --  Driver Type D is selected
      TYPED)
     with Size => 2;
   for PRSTVAL6_SDR104DRVSTVAL_Field use
     (TYPEB => 0,
      TYPEA => 1,
      TYPEC => 2,
      TYPED => 3);

   subtype PRSTVAL6_DDR50SDCLKFREQVAL_Field is Interfaces.EFM32.UInt10;
   subtype PRSTVAL6_DDR50CLKGENVAL_Field is Interfaces.EFM32.Bit;

   --  Driver Strength Select Value for DDR50
   type PRSTVAL6_DDR50DRVSTVAL_Field is
     (--  Driver Type B is selected (Default)
      TYPEB,
      --  Driver Type A is selected
      TYPEA,
      --  Driver Type C is selected
      TYPEC,
      --  Driver Type D is selected
      TYPED)
     with Size => 2;
   for PRSTVAL6_DDR50DRVSTVAL_Field use
     (TYPEB => 0,
      TYPEA => 1,
      TYPEC => 2,
      TYPED => 3);

   --  Preset Value for SDR104 and DDR50 Modes
   type PRSTVAL6_Register is record
      --  Read-only. SD_CLK Frequency Select Value for SDR104
      SDR104SDCLKFREQVAL : PRSTVAL6_SDR104SDCLKFREQVAL_Field;
      --  Read-only. Clock Generator Select Value for SDR104
      SDR104CLKGENVAL    : PRSTVAL6_SDR104CLKGENVAL_Field;
      --  unspecified
      Reserved_11_13     : Interfaces.EFM32.UInt3;
      --  Read-only. Driver Strength Select Value for SDR104
      SDR104DRVSTVAL     : PRSTVAL6_SDR104DRVSTVAL_Field;
      --  Read-only. SD_CLK Frequency Select Value for DDR50
      DDR50SDCLKFREQVAL  : PRSTVAL6_DDR50SDCLKFREQVAL_Field;
      --  Read-only. Clock Generator Select Value for DDR50
      DDR50CLKGENVAL     : PRSTVAL6_DDR50CLKGENVAL_Field;
      --  unspecified
      Reserved_27_29     : Interfaces.EFM32.UInt3;
      --  Read-only. Driver Strength Select Value for DDR50
      DDR50DRVSTVAL      : PRSTVAL6_DDR50DRVSTVAL_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRSTVAL6_Register use record
      SDR104SDCLKFREQVAL at 0 range 0 .. 9;
      SDR104CLKGENVAL    at 0 range 10 .. 10;
      Reserved_11_13     at 0 range 11 .. 13;
      SDR104DRVSTVAL     at 0 range 14 .. 15;
      DDR50SDCLKFREQVAL  at 0 range 16 .. 25;
      DDR50CLKGENVAL     at 0 range 26 .. 26;
      Reserved_27_29     at 0 range 27 .. 29;
      DDR50DRVSTVAL      at 0 range 30 .. 31;
   end record;

   subtype SLOTINTSTAT_INTSLOT0_Field is Interfaces.EFM32.Bit;
   subtype SLOTINTSTAT_SPECVERNUM_Field is Interfaces.EFM32.Byte;
   subtype SLOTINTSTAT_VENDVERNUM_Field is Interfaces.EFM32.Byte;

   --  Slot Interrupt Status Register
   type SLOTINTSTAT_Register is record
      --  Read-only. Interrupt Signal for Slot#0
      INTSLOT0      : SLOTINTSTAT_INTSLOT0_Field;
      --  unspecified
      Reserved_1_15 : Interfaces.EFM32.UInt15;
      --  Read-only. Host Controller Compliant Spec Version Number
      SPECVERNUM    : SLOTINTSTAT_SPECVERNUM_Field;
      --  Read-only. Vendor Version Number
      VENDVERNUM    : SLOTINTSTAT_VENDVERNUM_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SLOTINTSTAT_Register use record
      INTSLOT0      at 0 range 0 .. 0;
      Reserved_1_15 at 0 range 1 .. 15;
      SPECVERNUM    at 0 range 16 .. 23;
      VENDVERNUM    at 0 range 24 .. 31;
   end record;

   subtype CTRL_ITAPDLYEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_ITAPDLYSEL_Field is Interfaces.EFM32.UInt5;
   subtype CTRL_ITAPCHGWIN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_OTAPDLYEN_Field is Interfaces.EFM32.Bit;
   subtype CTRL_OTAPDLYSEL_Field is Interfaces.EFM32.UInt4;
   subtype CTRL_TXDLYMUXSEL_Field is Interfaces.EFM32.UInt2;

   --  Core Control Signals
   type CTRL_Register is record
      --  Selective Tap Delay Line Enable on Rxclk_in
      ITAPDLYEN      : CTRL_ITAPDLYEN_Field := 16#0#;
      --  Selects One of 32 Taps on the Rxclk_in Line
      ITAPDLYSEL     : CTRL_ITAPDLYSEL_Field := 16#0#;
      --  Gating Signal for Tap Delay Change
      ITAPCHGWIN     : CTRL_ITAPCHGWIN_Field := 16#0#;
      --  Selective Tap Delay Line Enable on SDIO_CLK Pin
      OTAPDLYEN      : CTRL_OTAPDLYEN_Field := 16#0#;
      --  Selects One of 32 Taps on the SDIO_CLK Pin
      OTAPDLYSEL     : CTRL_OTAPDLYSEL_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : Interfaces.EFM32.UInt4 := 16#0#;
      --  TX Delay Mux Selection
      TXDLYMUXSEL    : CTRL_TXDLYMUXSEL_Field := 16#0#;
      --  unspecified
      Reserved_18_31 : Interfaces.EFM32.UInt14 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      ITAPDLYEN      at 0 range 0 .. 0;
      ITAPDLYSEL     at 0 range 1 .. 5;
      ITAPCHGWIN     at 0 range 6 .. 6;
      OTAPDLYEN      at 0 range 7 .. 7;
      OTAPDLYSEL     at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      TXDLYMUXSEL    at 0 range 16 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype CFG0_TUNINGCNT_Field is Interfaces.EFM32.UInt6;
   subtype CFG0_TOUTCLKFREQ_Field is Interfaces.EFM32.UInt6;
   subtype CFG0_TOUTCLKUNIT_Field is Interfaces.EFM32.Bit;
   subtype CFG0_BASECLKFREQ_Field is Interfaces.EFM32.Byte;

   --  MAX Block Length of Transfer
   type CFG0_MAXBLKLEN_Field is
     (--  512 Bytes are Selected
      Val_512B,
      --  1024 Bytes are Selected
      Val_1024B,
      --  2048 Bytes are Selected
      Val_2048B)
     with Size => 2;
   for CFG0_MAXBLKLEN_Field use
     (Val_512B => 0,
      Val_1024B => 1,
      Val_2048B => 2);

   subtype CFG0_C8BITSUP_Field is Interfaces.EFM32.Bit;
   subtype CFG0_CADMA2SUP_Field is Interfaces.EFM32.Bit;
   subtype CFG0_CHSSUP_Field is Interfaces.EFM32.Bit;
   subtype CFG0_CSDMASUP_Field is Interfaces.EFM32.Bit;
   subtype CFG0_CSUSPRESSUP_Field is Interfaces.EFM32.Bit;
   subtype CFG0_C3P3VSUP_Field is Interfaces.EFM32.Bit;
   subtype CFG0_C3P0VSUP_Field is Interfaces.EFM32.Bit;
   subtype CFG0_C1P8VSUP_Field is Interfaces.EFM32.Bit;

   --  Core Configuration 0
   type CFG0_Register is record
      --  Tuning Counter Value
      TUNINGCNT      : CFG0_TUNINGCNT_Field := 16#0#;
      --  Timeout Clock Frequency
      TOUTCLKFREQ    : CFG0_TOUTCLKFREQ_Field := 16#0#;
      --  Timeout Clock Unit in kHz or MHz
      TOUTCLKUNIT    : CFG0_TOUTCLKUNIT_Field := 16#0#;
      --  Base Clock Frequency for SD_CLK
      BASECLKFREQ    : CFG0_BASECLKFREQ_Field := 16#0#;
      --  MAX Block Length of Transfer
      MAXBLKLEN      : CFG0_MAXBLKLEN_Field := Interfaces.EFM32.SDIO.Val_512B;
      --  8-bit Interface Support
      C8BITSUP       : CFG0_C8BITSUP_Field := 16#0#;
      --  ADMA2 Mode Support
      CADMA2SUP      : CFG0_CADMA2SUP_Field := 16#0#;
      --  High Speed Mode Support
      CHSSUP         : CFG0_CHSSUP_Field := 16#0#;
      --  SDMA Mode Support
      CSDMASUP       : CFG0_CSDMASUP_Field := 16#0#;
      --  Suspend/Resume Support
      CSUSPRESSUP    : CFG0_CSUSPRESSUP_Field := 16#0#;
      --  Core 3P3V Support
      C3P3VSUP       : CFG0_C3P3VSUP_Field := 16#0#;
      --  3P0V Support
      C3P0VSUP       : CFG0_C3P0VSUP_Field := 16#0#;
      --  1P8V Support
      C1P8VSUP       : CFG0_C1P8VSUP_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Interfaces.EFM32.Bit := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG0_Register use record
      TUNINGCNT      at 0 range 0 .. 5;
      TOUTCLKFREQ    at 0 range 6 .. 11;
      TOUTCLKUNIT    at 0 range 12 .. 12;
      BASECLKFREQ    at 0 range 13 .. 20;
      MAXBLKLEN      at 0 range 21 .. 22;
      C8BITSUP       at 0 range 23 .. 23;
      CADMA2SUP      at 0 range 24 .. 24;
      CHSSUP         at 0 range 25 .. 25;
      CSDMASUP       at 0 range 26 .. 26;
      CSUSPRESSUP    at 0 range 27 .. 27;
      C3P3VSUP       at 0 range 28 .. 28;
      C3P0VSUP       at 0 range 29 .. 29;
      C1P8VSUP       at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CFG1_ASYNCINTRSUP_Field is Interfaces.EFM32.Bit;

   --  Slot Type
   type CFG1_SLOTTYPE_Field is
     (--  Removable SD Card Slot
      RMSDSLOT,
      --  Embedded SD Card Slot
      EMSDSLOT,
      --  Shared SD Card Slot
      SHBUSSLOT)
     with Size => 2;
   for CFG1_SLOTTYPE_Field use
     (RMSDSLOT => 0,
      EMSDSLOT => 1,
      SHBUSSLOT => 2);

   subtype CFG1_CSDR50SUP_Field is Interfaces.EFM32.Bit;
   subtype CFG1_CSDR104SUP_Field is Interfaces.EFM32.Bit;
   subtype CFG1_CDDR50SUP_Field is Interfaces.EFM32.Bit;
   subtype CFG1_CDRVASUP_Field is Interfaces.EFM32.Bit;
   subtype CFG1_CDRVCSUP_Field is Interfaces.EFM32.Bit;
   subtype CFG1_CDRVDSUP_Field is Interfaces.EFM32.Bit;
   subtype CFG1_RETUNTMRCTL_Field is Interfaces.EFM32.UInt4;
   subtype CFG1_TUNSDR50_Field is Interfaces.EFM32.Bit;
   subtype CFG1_RETUNMODES_Field is Interfaces.EFM32.UInt2;
   subtype CFG1_SPISUP_Field is Interfaces.EFM32.Bit;
   subtype CFG1_ASYNCWKUPEN_Field is Interfaces.EFM32.Bit;

   --  Core Configuration 1
   type CFG1_Register is record
      --  Asynchronous Interrupt Support
      ASYNCINTRSUP   : CFG1_ASYNCINTRSUP_Field := 16#0#;
      --  Slot Type
      SLOTTYPE       : CFG1_SLOTTYPE_Field := Interfaces.EFM32.SDIO.RMSDSLOT;
      --  Core Support SDR50
      CSDR50SUP      : CFG1_CSDR50SUP_Field := 16#0#;
      --  Support SDR104
      CSDR104SUP     : CFG1_CSDR104SUP_Field := 16#0#;
      --  Support DDR50
      CDDR50SUP      : CFG1_CDDR50SUP_Field := 16#0#;
      --  Support Type a Driver
      CDRVASUP       : CFG1_CDRVASUP_Field := 16#0#;
      --  Support Type C Driver
      CDRVCSUP       : CFG1_CDRVCSUP_Field := 16#0#;
      --  Support Type D Driver
      CDRVDSUP       : CFG1_CDRVDSUP_Field := 16#0#;
      --  Retuning Timer Control
      RETUNTMRCTL    : CFG1_RETUNTMRCTL_Field := 16#0#;
      --  Tuning for SDR50
      TUNSDR50       : CFG1_TUNSDR50_Field := 16#0#;
      --  Retuning Modes
      RETUNMODES     : CFG1_RETUNMODES_Field := 16#0#;
      --  SPI Support
      SPISUP         : CFG1_SPISUP_Field := 16#0#;
      --  unspecified
      Reserved_17_17 : Interfaces.EFM32.Bit := 16#0#;
      --  Asynchronous Wakeup Enable
      ASYNCWKUPEN    : CFG1_ASYNCWKUPEN_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFG1_Register use record
      ASYNCINTRSUP   at 0 range 0 .. 0;
      SLOTTYPE       at 0 range 1 .. 2;
      CSDR50SUP      at 0 range 3 .. 3;
      CSDR104SUP     at 0 range 4 .. 4;
      CDDR50SUP      at 0 range 5 .. 5;
      CDRVASUP       at 0 range 6 .. 6;
      CDRVCSUP       at 0 range 7 .. 7;
      CDRVDSUP       at 0 range 8 .. 8;
      RETUNTMRCTL    at 0 range 9 .. 12;
      TUNSDR50       at 0 range 13 .. 13;
      RETUNMODES     at 0 range 14 .. 15;
      SPISUP         at 0 range 16 .. 16;
      Reserved_17_17 at 0 range 17 .. 17;
      ASYNCWKUPEN    at 0 range 18 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype CFGPRESETVAL0_INITSDCLKFREQ_Field is Interfaces.EFM32.UInt10;
   subtype CFGPRESETVAL0_INITCLKGENEN_Field is Interfaces.EFM32.Bit;
   subtype CFGPRESETVAL0_INITDRVST_Field is Interfaces.EFM32.UInt2;
   subtype CFGPRESETVAL0_DSPSDCLKFREQ_Field is Interfaces.EFM32.UInt10;
   subtype CFGPRESETVAL0_DSPCLKGENEN_Field is Interfaces.EFM32.Bit;
   subtype CFGPRESETVAL0_DSPDRVST_Field is Interfaces.EFM32.UInt2;

   --  Core Configuration Preset Value 0
   type CFGPRESETVAL0_Register is record
      --  Initial SD_CLK Frequency
      INITSDCLKFREQ  : CFGPRESETVAL0_INITSDCLKFREQ_Field := 16#0#;
      --  Initial Clock Gen Enable
      INITCLKGENEN   : CFGPRESETVAL0_INITCLKGENEN_Field := 16#0#;
      --  Initial Drive Strength
      INITDRVST      : CFGPRESETVAL0_INITDRVST_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Preset Value for Default Speed of SD_CLK
      DSPSDCLKFREQ   : CFGPRESETVAL0_DSPSDCLKFREQ_Field := 16#0#;
      --  Default Speed Clock Gen Enable
      DSPCLKGENEN    : CFGPRESETVAL0_DSPCLKGENEN_Field := 16#0#;
      --  Default Speed Drive Strength
      DSPDRVST       : CFGPRESETVAL0_DSPDRVST_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGPRESETVAL0_Register use record
      INITSDCLKFREQ  at 0 range 0 .. 9;
      INITCLKGENEN   at 0 range 10 .. 10;
      INITDRVST      at 0 range 11 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DSPSDCLKFREQ   at 0 range 16 .. 25;
      DSPCLKGENEN    at 0 range 26 .. 26;
      DSPDRVST       at 0 range 27 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CFGPRESETVAL1_HSPSDCLKFREQ_Field is Interfaces.EFM32.UInt10;
   subtype CFGPRESETVAL1_HSPCLKGENEN_Field is Interfaces.EFM32.Bit;
   subtype CFGPRESETVAL1_HSPDRVST_Field is Interfaces.EFM32.UInt2;
   subtype CFGPRESETVAL1_SDR12SDCLKFREQ_Field is Interfaces.EFM32.UInt10;
   subtype CFGPRESETVAL1_SDR12CLKGENEN_Field is Interfaces.EFM32.Bit;
   subtype CFGPRESETVAL1_SDR12DRVST_Field is Interfaces.EFM32.UInt2;

   --  Core Configuration Preset Value 1
   type CFGPRESETVAL1_Register is record
      --  High Speed SD_CLK Frequency
      HSPSDCLKFREQ   : CFGPRESETVAL1_HSPSDCLKFREQ_Field := 16#0#;
      --  High Speed SD_CLK Gen Enable
      HSPCLKGENEN    : CFGPRESETVAL1_HSPCLKGENEN_Field := 16#0#;
      --  High Speed SD Drive Strength
      HSPDRVST       : CFGPRESETVAL1_HSPDRVST_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Preset Value for SDR12 Speed of SD_CLK
      SDR12SDCLKFREQ : CFGPRESETVAL1_SDR12SDCLKFREQ_Field := 16#0#;
      --  SDR12 Speed Clock Gen Enable
      SDR12CLKGENEN  : CFGPRESETVAL1_SDR12CLKGENEN_Field := 16#0#;
      --  SDR12 Speed Drive Strength
      SDR12DRVST     : CFGPRESETVAL1_SDR12DRVST_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGPRESETVAL1_Register use record
      HSPSDCLKFREQ   at 0 range 0 .. 9;
      HSPCLKGENEN    at 0 range 10 .. 10;
      HSPDRVST       at 0 range 11 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      SDR12SDCLKFREQ at 0 range 16 .. 25;
      SDR12CLKGENEN  at 0 range 26 .. 26;
      SDR12DRVST     at 0 range 27 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CFGPRESETVAL2_SDR25SDCLKFREQ_Field is Interfaces.EFM32.UInt10;
   subtype CFGPRESETVAL2_SDR25CLKGENEN_Field is Interfaces.EFM32.Bit;
   subtype CFGPRESETVAL2_SDR25DRVST_Field is Interfaces.EFM32.UInt2;
   subtype CFGPRESETVAL2_SDR50SDCLKFREQ_Field is Interfaces.EFM32.UInt10;
   subtype CFGPRESETVAL2_SDR50CLKGENEN_Field is Interfaces.EFM32.Bit;
   subtype CFGPRESETVAL2_SDR50DRVST_Field is Interfaces.EFM32.UInt2;

   --  Core Configuration Preset Value 2
   type CFGPRESETVAL2_Register is record
      --  SDR25 SD_CLK Frequency
      SDR25SDCLKFREQ : CFGPRESETVAL2_SDR25SDCLKFREQ_Field := 16#0#;
      --  SDR25 SD_CLK Gen Enable
      SDR25CLKGENEN  : CFGPRESETVAL2_SDR25CLKGENEN_Field := 16#0#;
      --  SDR25 SD Drive Strength
      SDR25DRVST     : CFGPRESETVAL2_SDR25DRVST_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Preset Value for SDR50 Speed of SD_CLK
      SDR50SDCLKFREQ : CFGPRESETVAL2_SDR50SDCLKFREQ_Field := 16#0#;
      --  SDR50 Speed Clock Gen Enable
      SDR50CLKGENEN  : CFGPRESETVAL2_SDR50CLKGENEN_Field := 16#0#;
      --  SDR50 Speed Drive Strength
      SDR50DRVST     : CFGPRESETVAL2_SDR50DRVST_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGPRESETVAL2_Register use record
      SDR25SDCLKFREQ at 0 range 0 .. 9;
      SDR25CLKGENEN  at 0 range 10 .. 10;
      SDR25DRVST     at 0 range 11 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      SDR50SDCLKFREQ at 0 range 16 .. 25;
      SDR50CLKGENEN  at 0 range 26 .. 26;
      SDR50DRVST     at 0 range 27 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype CFGPRESETVAL3_SDR104SDCLKFREQ_Field is Interfaces.EFM32.UInt10;
   subtype CFGPRESETVAL3_SDR104CLKGENEN_Field is Interfaces.EFM32.Bit;
   subtype CFGPRESETVAL3_SDR104DRVST_Field is Interfaces.EFM32.UInt2;
   subtype CFGPRESETVAL3_DDR50SDCLKFREQ_Field is Interfaces.EFM32.UInt10;
   subtype CFGPRESETVAL3_DDR50CLKGENEN_Field is Interfaces.EFM32.Bit;
   subtype CFGPRESETVAL3_DDR50DRVST_Field is Interfaces.EFM32.UInt2;

   --  Core Configuration Preset Value 3
   type CFGPRESETVAL3_Register is record
      --  SDR104 SD_CLK Frequency
      SDR104SDCLKFREQ : CFGPRESETVAL3_SDR104SDCLKFREQ_Field := 16#0#;
      --  SDR104 SD_CLK Gen Enable
      SDR104CLKGENEN  : CFGPRESETVAL3_SDR104CLKGENEN_Field := 16#0#;
      --  SDR104 SD Drive Strength
      SDR104DRVST     : CFGPRESETVAL3_SDR104DRVST_Field := 16#0#;
      --  unspecified
      Reserved_13_15  : Interfaces.EFM32.UInt3 := 16#0#;
      --  Preset Value for DDR50 Speed of SD_CLK
      DDR50SDCLKFREQ  : CFGPRESETVAL3_DDR50SDCLKFREQ_Field := 16#0#;
      --  DDR50 Speed Clock Gen Enable
      DDR50CLKGENEN   : CFGPRESETVAL3_DDR50CLKGENEN_Field := 16#0#;
      --  DDR50 Speed Drive Strength
      DDR50DRVST      : CFGPRESETVAL3_DDR50DRVST_Field := 16#0#;
      --  unspecified
      Reserved_29_31  : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CFGPRESETVAL3_Register use record
      SDR104SDCLKFREQ at 0 range 0 .. 9;
      SDR104CLKGENEN  at 0 range 10 .. 10;
      SDR104DRVST     at 0 range 11 .. 12;
      Reserved_13_15  at 0 range 13 .. 15;
      DDR50SDCLKFREQ  at 0 range 16 .. 25;
      DDR50CLKGENEN   at 0 range 26 .. 26;
      DDR50DRVST      at 0 range 27 .. 28;
      Reserved_29_31  at 0 range 29 .. 31;
   end record;

   --  I/O Location for D0-7 Pins
   type ROUTELOC0_DATLOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1)
     with Size => 6;
   for ROUTELOC0_DATLOC_Field use
     (LOC0 => 0,
      LOC1 => 1);

   --  I/O Location for CD
   type ROUTELOC0_CDLOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3)
     with Size => 6;
   for ROUTELOC0_CDLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3);

   --  I/O Location for WP
   type ROUTELOC0_WPLOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1,
      --  Location 2
      LOC2,
      --  Location 3
      LOC3)
     with Size => 6;
   for ROUTELOC0_WPLOC_Field use
     (LOC0 => 0,
      LOC1 => 1,
      LOC2 => 2,
      LOC3 => 3);

   --  I/O Location for CLK
   type ROUTELOC0_CLKLOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1)
     with Size => 6;
   for ROUTELOC0_CLKLOC_Field use
     (LOC0 => 0,
      LOC1 => 1);

   --  I/O LOCATION Register
   type ROUTELOC0_Register is record
      --  I/O Location for D0-7 Pins
      DATLOC         : ROUTELOC0_DATLOC_Field := Interfaces.EFM32.SDIO.LOC0;
      --  unspecified
      Reserved_6_7   : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location for CD
      CDLOC          : ROUTELOC0_CDLOC_Field := Interfaces.EFM32.SDIO.LOC0;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location for WP
      WPLOC          : ROUTELOC0_WPLOC_Field := Interfaces.EFM32.SDIO.LOC0;
      --  unspecified
      Reserved_22_23 : Interfaces.EFM32.UInt2 := 16#0#;
      --  I/O Location for CLK
      CLKLOC         : ROUTELOC0_CLKLOC_Field := Interfaces.EFM32.SDIO.LOC0;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC0_Register use record
      DATLOC         at 0 range 0 .. 5;
      Reserved_6_7   at 0 range 6 .. 7;
      CDLOC          at 0 range 8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      WPLOC          at 0 range 16 .. 21;
      Reserved_22_23 at 0 range 22 .. 23;
      CLKLOC         at 0 range 24 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   --  I/O Location for CMD Pin
   type ROUTELOC1_CMDLOC_Field is
     (--  Location 0
      LOC0,
      --  Location 1
      LOC1)
     with Size => 6;
   for ROUTELOC1_CMDLOC_Field use
     (LOC0 => 0,
      LOC1 => 1);

   --  I/O LOCATION Register
   type ROUTELOC1_Register is record
      --  I/O Location for CMD Pin
      CMDLOC        : ROUTELOC1_CMDLOC_Field := Interfaces.EFM32.SDIO.LOC0;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTELOC1_Register use record
      CMDLOC        at 0 range 0 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype ROUTEPEN_CLKPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CMDPEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_D0PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_D1PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_D2PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_D3PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_D4PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_D5PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_D6PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_D7PEN_Field is Interfaces.EFM32.Bit;

   --  I/O LOCATION Enable Register
   type ROUTEPEN_Register is record
      --  CLK I/O Enable
      CLKPEN         : ROUTEPEN_CLKPEN_Field := 16#0#;
      --  CMD I/O Enable
      CMDPEN         : ROUTEPEN_CMDPEN_Field := 16#0#;
      --  Dat0 I/O Enable
      D0PEN          : ROUTEPEN_D0PEN_Field := 16#0#;
      --  Dat1 I/O Enable
      D1PEN          : ROUTEPEN_D1PEN_Field := 16#0#;
      --  Dat2 I/O Enable
      D2PEN          : ROUTEPEN_D2PEN_Field := 16#0#;
      --  Dat3 I/O Enable
      D3PEN          : ROUTEPEN_D3PEN_Field := 16#0#;
      --  Dat4 I/O Enable
      D4PEN          : ROUTEPEN_D4PEN_Field := 16#0#;
      --  Dat5 Enable
      D5PEN          : ROUTEPEN_D5PEN_Field := 16#0#;
      --  Dat6 Enable
      D6PEN          : ROUTEPEN_D6PEN_Field := 16#0#;
      --  Data7 I/O Enable
      D7PEN          : ROUTEPEN_D7PEN_Field := 16#0#;
      --  unspecified
      Reserved_10_31 : Interfaces.EFM32.UInt22 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTEPEN_Register use record
      CLKPEN         at 0 range 0 .. 0;
      CMDPEN         at 0 range 1 .. 1;
      D0PEN          at 0 range 2 .. 2;
      D1PEN          at 0 range 3 .. 3;
      D2PEN          at 0 range 4 .. 4;
      D3PEN          at 0 range 5 .. 5;
      D4PEN          at 0 range 6 .. 6;
      D5PEN          at 0 range 7 .. 7;
      D6PEN          at 0 range 8 .. 8;
      D7PEN          at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SDIO
   type SDIO_Peripheral is record
      --  SDMA System Address Register
      SDMASYSADDR   : aliased Interfaces.EFM32.UInt32;
      --  Block Size and Block Count Register
      BLKSIZE       : aliased BLKSIZE_Register;
      --  SD Command Argument Register
      CMDARG1       : aliased Interfaces.EFM32.UInt32;
      --  Transfer Mode and Command Register
      TFRMODE       : aliased TFRMODE_Register;
      --  Response0 and Response1 Register
      RESP0         : aliased Interfaces.EFM32.UInt32;
      --  Response2 and Response3 Register
      RESP2         : aliased Interfaces.EFM32.UInt32;
      --  Response4 and Response5 Register
      RESP4         : aliased Interfaces.EFM32.UInt32;
      --  Response6 and Response7 Register
      RESP6         : aliased Interfaces.EFM32.UInt32;
      --  Buffer Data Register
      BUFDATPORT    : aliased Interfaces.EFM32.UInt32;
      --  Present State Register
      PRSSTAT       : aliased PRSSTAT_Register;
      --  Host Control1, Power, Block Gap and Wakeup-up Control Register
      HOSTCTRL1     : aliased HOSTCTRL1_Register;
      --  Clock Control, Timeout Control and Software Register
      CLOCKCTRL     : aliased CLOCKCTRL_Register;
      --  Normal and Error Interrupt Status Register
      IFCR          : aliased IFCR_Register;
      --  Normal and Error Interrupt Status Enable Register
      IFENC         : aliased IFENC_Register;
      --  Normal and Error Interrupt Signal Enable Register
      IEN           : aliased IEN_Register;
      --  AUTO CMD12 Error Status and Host Control2 Register
      AC12ERRSTAT   : aliased AC12ERRSTAT_Register;
      --  Capabilities Register to Hold Bits 31~0
      CAPAB0        : aliased CAPAB0_Register;
      --  Capabilities Register to Hold Bits 63~32
      CAPAB2        : aliased CAPAB2_Register;
      --  Maximum Current Capabilities Register
      MAXCURCAPAB   : aliased MAXCURCAPAB_Register;
      --  Force Event Register for Auto CMD Error Status
      FEVTERRSTAT   : aliased FEVTERRSTAT_Register;
      --  ADMA Error Status Register
      ADMAES        : aliased ADMAES_Register;
      --  ADMA System Address Register
      ADSADDR       : aliased Interfaces.EFM32.UInt32;
      --  Preset Value for Initialization and Default Speed Mode
      PRSTVAL0      : aliased PRSTVAL0_Register;
      --  Preset Value for High Speed and SDR12 Modes
      PRSTVAL2      : aliased PRSTVAL2_Register;
      --  Preset Value for SDR25 and SDR50 Modes
      PRSTVAL4      : aliased PRSTVAL4_Register;
      --  Preset Value for SDR104 and DDR50 Modes
      PRSTVAL6      : aliased PRSTVAL6_Register;
      --  Boot Timeout Control Register
      BOOTTOCTRL    : aliased Interfaces.EFM32.UInt32;
      --  Slot Interrupt Status Register
      SLOTINTSTAT   : aliased SLOTINTSTAT_Register;
      --  Core Control Signals
      CTRL          : aliased CTRL_Register;
      --  Core Configuration 0
      CFG0          : aliased CFG0_Register;
      --  Core Configuration 1
      CFG1          : aliased CFG1_Register;
      --  Core Configuration Preset Value 0
      CFGPRESETVAL0 : aliased CFGPRESETVAL0_Register;
      --  Core Configuration Preset Value 1
      CFGPRESETVAL1 : aliased CFGPRESETVAL1_Register;
      --  Core Configuration Preset Value 2
      CFGPRESETVAL2 : aliased CFGPRESETVAL2_Register;
      --  Core Configuration Preset Value 3
      CFGPRESETVAL3 : aliased CFGPRESETVAL3_Register;
      --  I/O LOCATION Register
      ROUTELOC0     : aliased ROUTELOC0_Register;
      --  I/O LOCATION Register
      ROUTELOC1     : aliased ROUTELOC1_Register;
      --  I/O LOCATION Enable Register
      ROUTEPEN      : aliased ROUTEPEN_Register;
   end record
     with Volatile;

   for SDIO_Peripheral use record
      SDMASYSADDR   at 16#0# range 0 .. 31;
      BLKSIZE       at 16#4# range 0 .. 31;
      CMDARG1       at 16#8# range 0 .. 31;
      TFRMODE       at 16#C# range 0 .. 31;
      RESP0         at 16#10# range 0 .. 31;
      RESP2         at 16#14# range 0 .. 31;
      RESP4         at 16#18# range 0 .. 31;
      RESP6         at 16#1C# range 0 .. 31;
      BUFDATPORT    at 16#20# range 0 .. 31;
      PRSSTAT       at 16#24# range 0 .. 31;
      HOSTCTRL1     at 16#28# range 0 .. 31;
      CLOCKCTRL     at 16#2C# range 0 .. 31;
      IFCR          at 16#30# range 0 .. 31;
      IFENC         at 16#34# range 0 .. 31;
      IEN           at 16#38# range 0 .. 31;
      AC12ERRSTAT   at 16#3C# range 0 .. 31;
      CAPAB0        at 16#40# range 0 .. 31;
      CAPAB2        at 16#44# range 0 .. 31;
      MAXCURCAPAB   at 16#48# range 0 .. 31;
      FEVTERRSTAT   at 16#50# range 0 .. 31;
      ADMAES        at 16#54# range 0 .. 31;
      ADSADDR       at 16#58# range 0 .. 31;
      PRSTVAL0      at 16#60# range 0 .. 31;
      PRSTVAL2      at 16#64# range 0 .. 31;
      PRSTVAL4      at 16#68# range 0 .. 31;
      PRSTVAL6      at 16#6C# range 0 .. 31;
      BOOTTOCTRL    at 16#70# range 0 .. 31;
      SLOTINTSTAT   at 16#FC# range 0 .. 31;
      CTRL          at 16#800# range 0 .. 31;
      CFG0          at 16#804# range 0 .. 31;
      CFG1          at 16#808# range 0 .. 31;
      CFGPRESETVAL0 at 16#80C# range 0 .. 31;
      CFGPRESETVAL1 at 16#810# range 0 .. 31;
      CFGPRESETVAL2 at 16#814# range 0 .. 31;
      CFGPRESETVAL3 at 16#818# range 0 .. 31;
      ROUTELOC0     at 16#81C# range 0 .. 31;
      ROUTELOC1     at 16#820# range 0 .. 31;
      ROUTEPEN      at 16#824# range 0 .. 31;
   end record;

   --  SDIO
   SDIO_Periph : aliased SDIO_Peripheral
     with Import, Address => SDIO_Base;

end Interfaces.EFM32.SDIO;
