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

--  LESENSE
package Interfaces.EFM32.LESENSE is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   --  Configure Scan Mode
   type CTRL_SCANMODE_Field is
     (--  A new scan is started each time the period counter overflows
      PERIODIC,
      --  A single scan is performed when START in CMD is set
      ONESHOT,
      --  Pulse on PRS channel
      PRS)
     with Size => 2;
   for CTRL_SCANMODE_Field use
     (PERIODIC => 0,
      ONESHOT => 1,
      PRS => 2);

   --  Scan Start PRS Select
   type CTRL_PRSSEL_Field is
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
   for CTRL_PRSSEL_Field use
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

   --  Select Scan Configuration
   type CTRL_SCANCONF_Field is
     (--  The channel configuration register registers used are directly mapped to
--  the channel number.
      DIRMAP,
      --  The channel configuration register registers used are CHX+8_CONF for
--  channels 0-7 and CHX-8_CONF for channels 8-15.
      INVMAP,
      --  The channel configuration register registers used toggles between CHX_CONF
--  and CHX+8_CONF when channel x triggers
      TOGGLE,
      --  The decoder state defines the CONF registers to be used.
      DECDEF)
     with Size => 2;
   for CTRL_SCANCONF_Field use
     (DIRMAP => 0,
      INVMAP => 1,
      TOGGLE => 2,
      DECDEF => 3);

   subtype CTRL_ALTEXMAP_Field is Interfaces.EFM32.Bit;
   subtype CTRL_DUALSAMPLE_Field is Interfaces.EFM32.Bit;
   subtype CTRL_BUFOW_Field is Interfaces.EFM32.Bit;
   subtype CTRL_STRSCANRES_Field is Interfaces.EFM32.Bit;
   subtype CTRL_BUFIDL_Field is Interfaces.EFM32.Bit;

   --  DMA Wake-up From EM2
   type CTRL_DMAWU_Field is
     (--  No DMA wake-up from EM2
      DISABLE,
      --  DMA wake-up from EM2 when data is valid in the result buffer
      BUFDATAV,
      --  DMA wake-up from EM2 when the result buffer is full/half-full depending on
--  BUFIDL configuration
      BUFLEVEL)
     with Size => 2;
   for CTRL_DMAWU_Field use
     (DISABLE => 0,
      BUFDATAV => 1,
      BUFLEVEL => 2);

   subtype CTRL_DEBUGRUN_Field is Interfaces.EFM32.Bit;

   --  Control Register
   type CTRL_Register is record
      --  Configure Scan Mode
      SCANMODE       : CTRL_SCANMODE_Field :=
                        Interfaces.EFM32.LESENSE.PERIODIC;
      --  Scan Start PRS Select
      PRSSEL         : CTRL_PRSSEL_Field := Interfaces.EFM32.LESENSE.PRSCH0;
      --  unspecified
      Reserved_6_6   : Interfaces.EFM32.Bit := 16#0#;
      --  Select Scan Configuration
      SCANCONF       : CTRL_SCANCONF_Field := Interfaces.EFM32.LESENSE.DIRMAP;
      --  unspecified
      Reserved_9_10  : Interfaces.EFM32.UInt2 := 16#0#;
      --  Alternative Excitation Map
      ALTEXMAP       : CTRL_ALTEXMAP_Field := 16#0#;
      --  unspecified
      Reserved_12_12 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable Dual Sample Mode
      DUALSAMPLE     : CTRL_DUALSAMPLE_Field := 16#0#;
      --  unspecified
      Reserved_14_15 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Result Buffer Overwrite
      BUFOW          : CTRL_BUFOW_Field := 16#0#;
      --  Enable Storing of SCANRES
      STRSCANRES     : CTRL_STRSCANRES_Field := 16#0#;
      --  unspecified
      Reserved_18_18 : Interfaces.EFM32.Bit := 16#0#;
      --  Result Buffer Interrupt and DMA Trigger Level
      BUFIDL         : CTRL_BUFIDL_Field := 16#0#;
      --  DMA Wake-up From EM2
      DMAWU          : CTRL_DMAWU_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Debug Mode Run Enable
      DEBUGRUN       : CTRL_DEBUGRUN_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CTRL_Register use record
      SCANMODE       at 0 range 0 .. 1;
      PRSSEL         at 0 range 2 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      SCANCONF       at 0 range 7 .. 8;
      Reserved_9_10  at 0 range 9 .. 10;
      ALTEXMAP       at 0 range 11 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      DUALSAMPLE     at 0 range 13 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      BUFOW          at 0 range 16 .. 16;
      STRSCANRES     at 0 range 17 .. 17;
      Reserved_18_18 at 0 range 18 .. 18;
      BUFIDL         at 0 range 19 .. 19;
      DMAWU          at 0 range 20 .. 21;
      DEBUGRUN       at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  Prescaling Factor for High Frequency Timer
   type TIMCTRL_AUXPRESC_Field is
     (--  High frequency timer is clocked with AUXHFRCO/1
      DIV1,
      --  High frequency timer is clocked with AUXHFRCO/2
      DIV2,
      --  High frequency timer is clocked with AUXHFRCO/4
      DIV4,
      --  High frequency timer is clocked with AUXHFRCO/8
      DIV8)
     with Size => 2;
   for TIMCTRL_AUXPRESC_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3);

   --  Prescaling Factor for Low Frequency Timer
   type TIMCTRL_LFPRESC_Field is
     (--  Low frequency timer is clocked with LFACLKLESENSE/1
      DIV1,
      --  Low frequency timer is clocked with LFACLKLESENSE/2
      DIV2,
      --  Low frequency timer is clocked with LFACLKLESENSE/4
      DIV4,
      --  Low frequency timer is clocked with LFACLKLESENSE/8
      DIV8,
      --  Low frequency timer is clocked with LFACLKLESENSE/16
      DIV16,
      --  Low frequency timer is clocked with LFACLKLESENSE/32
      DIV32,
      --  Low frequency timer is clocked with LFACLKLESENSE/64
      DIV64,
      --  Low frequency timer is clocked with LFACLKLESENSE/128
      DIV128)
     with Size => 3;
   for TIMCTRL_LFPRESC_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3,
      DIV16 => 4,
      DIV32 => 5,
      DIV64 => 6,
      DIV128 => 7);

   --  Period Counter Prescaling
   type TIMCTRL_PCPRESC_Field is
     (--  The period counter clock frequency is LFACLKLESENSE/1
      DIV1,
      --  The period counter clock frequency is LFACLKLESENSE/2
      DIV2,
      --  The period counter clock frequency is LFACLKLESENSE/4
      DIV4,
      --  The period counter clock frequency is LFACLKLESENSE/8
      DIV8,
      --  The period counter clock frequency is LFACLKLESENSE/16
      DIV16,
      --  The period counter clock frequency is LFACLKLESENSE/32
      DIV32,
      --  The period counter clock frequency is LFACLKLESENSE/64
      DIV64,
      --  The period counter clock frequency is LFACLKLESENSE/128
      DIV128)
     with Size => 3;
   for TIMCTRL_PCPRESC_Field use
     (DIV1 => 0,
      DIV2 => 1,
      DIV4 => 2,
      DIV8 => 3,
      DIV16 => 4,
      DIV32 => 5,
      DIV64 => 6,
      DIV128 => 7);

   subtype TIMCTRL_PCTOP_Field is Interfaces.EFM32.Byte;
   subtype TIMCTRL_STARTDLY_Field is Interfaces.EFM32.UInt2;
   subtype TIMCTRL_AUXSTARTUP_Field is Interfaces.EFM32.Bit;

   --  Timing Control Register
   type TIMCTRL_Register is record
      --  Prescaling Factor for High Frequency Timer
      AUXPRESC       : TIMCTRL_AUXPRESC_Field :=
                        Interfaces.EFM32.LESENSE.DIV1;
      --  unspecified
      Reserved_2_3   : Interfaces.EFM32.UInt2 := 16#0#;
      --  Prescaling Factor for Low Frequency Timer
      LFPRESC        : TIMCTRL_LFPRESC_Field := Interfaces.EFM32.LESENSE.DIV1;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  Period Counter Prescaling
      PCPRESC        : TIMCTRL_PCPRESC_Field := Interfaces.EFM32.LESENSE.DIV1;
      --  unspecified
      Reserved_11_11 : Interfaces.EFM32.Bit := 16#0#;
      --  Period Counter Top Value
      PCTOP          : TIMCTRL_PCTOP_Field := 16#0#;
      --  unspecified
      Reserved_20_21 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Start Delay Configuration
      STARTDLY       : TIMCTRL_STARTDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_27 : Interfaces.EFM32.UInt4 := 16#0#;
      --  AUXHFRCO Startup Configuration
      AUXSTARTUP     : TIMCTRL_AUXSTARTUP_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for TIMCTRL_Register use record
      AUXPRESC       at 0 range 0 .. 1;
      Reserved_2_3   at 0 range 2 .. 3;
      LFPRESC        at 0 range 4 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      PCPRESC        at 0 range 8 .. 10;
      Reserved_11_11 at 0 range 11 .. 11;
      PCTOP          at 0 range 12 .. 19;
      Reserved_20_21 at 0 range 20 .. 21;
      STARTDLY       at 0 range 22 .. 23;
      Reserved_24_27 at 0 range 24 .. 27;
      AUXSTARTUP     at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype PERCTRL_DACCH0EN_Field is Interfaces.EFM32.Bit;
   subtype PERCTRL_DACCH1EN_Field is Interfaces.EFM32.Bit;
   subtype PERCTRL_DACCH0DATA_Field is Interfaces.EFM32.Bit;
   subtype PERCTRL_DACCH1DATA_Field is Interfaces.EFM32.Bit;
   subtype PERCTRL_DACSTARTUP_Field is Interfaces.EFM32.Bit;
   subtype PERCTRL_DACCONVTRIG_Field is Interfaces.EFM32.Bit;

   --  ACMP0 Mode
   type PERCTRL_ACMP0MODE_Field is
     (--  LESENSE does not control ACMP0
      DISABLE,
      --  LESENSE controls the input mux (POSSEL) of ACMP0
      MUX,
      --  LESENSE controls the input mux (POSSEL) and the threshold value (VDDLEVEL)
--  of ACMP0
      MUXTHRES)
     with Size => 2;
   for PERCTRL_ACMP0MODE_Field use
     (DISABLE => 0,
      MUX => 1,
      MUXTHRES => 2);

   --  ACMP1 Mode
   type PERCTRL_ACMP1MODE_Field is
     (--  LESENSE does not control ACMP1
      DISABLE,
      --  LESENSE controls the input mux (POSSEL) of ACMP1
      MUX,
      --  LESENSE controls the input mux and the threshold value (VDDLEVEL) of ACMP1
      MUXTHRES)
     with Size => 2;
   for PERCTRL_ACMP1MODE_Field use
     (DISABLE => 0,
      MUX => 1,
      MUXTHRES => 2);

   subtype PERCTRL_ACMP0INV_Field is Interfaces.EFM32.Bit;
   subtype PERCTRL_ACMP1INV_Field is Interfaces.EFM32.Bit;
   subtype PERCTRL_ACMP0HYSTEN_Field is Interfaces.EFM32.Bit;
   subtype PERCTRL_ACMP1HYSTEN_Field is Interfaces.EFM32.Bit;

   --  ACMP and VDAC Duty Cycle Mode
   type PERCTRL_WARMUPMODE_Field is
     (--  The analog comparators and VDAC are shut down when LESENSE is idle
      NORMAL,
      --  The analog comparators are kept powered up when LESENSE is idle
      KEEPACMPWARM,
      --  The VDAC is kept powered up when LESENSE is idle
      KEEPDACWARM,
      --  The analog comparators and VDAC are kept powered up when LESENSE is idle
      KEEPACMPDACWARM)
     with Size => 2;
   for PERCTRL_WARMUPMODE_Field use
     (NORMAL => 0,
      KEEPACMPWARM => 1,
      KEEPDACWARM => 2,
      KEEPACMPDACWARM => 3);

   --  Peripheral Control Register
   type PERCTRL_Register is record
      --  VDAC CH0 Enable
      DACCH0EN       : PERCTRL_DACCH0EN_Field := 16#0#;
      --  VDAC CH1 Enable
      DACCH1EN       : PERCTRL_DACCH1EN_Field := 16#0#;
      --  VDAC CH0 Data Selection
      DACCH0DATA     : PERCTRL_DACCH0DATA_Field := 16#0#;
      --  VDAC CH1 Data Selection
      DACCH1DATA     : PERCTRL_DACCH1DATA_Field := 16#0#;
      --  unspecified
      Reserved_4_5   : Interfaces.EFM32.UInt2 := 16#0#;
      --  VDAC Startup Configuration
      DACSTARTUP     : PERCTRL_DACSTARTUP_Field := 16#0#;
      --  unspecified
      Reserved_7_7   : Interfaces.EFM32.Bit := 16#0#;
      --  VDAC Conversion Trigger Configuration
      DACCONVTRIG    : PERCTRL_DACCONVTRIG_Field := 16#0#;
      --  unspecified
      Reserved_9_19  : Interfaces.EFM32.UInt11 := 16#0#;
      --  ACMP0 Mode
      ACMP0MODE      : PERCTRL_ACMP0MODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  ACMP1 Mode
      ACMP1MODE      : PERCTRL_ACMP1MODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Invert Analog Comparator 0 Output
      ACMP0INV       : PERCTRL_ACMP0INV_Field := 16#0#;
      --  Invert Analog Comparator 1 Output
      ACMP1INV       : PERCTRL_ACMP1INV_Field := 16#0#;
      --  ACMP0 Hysteresis Enable
      ACMP0HYSTEN    : PERCTRL_ACMP0HYSTEN_Field := 16#0#;
      --  ACMP1 Hysteresis Enable
      ACMP1HYSTEN    : PERCTRL_ACMP1HYSTEN_Field := 16#0#;
      --  ACMP and VDAC Duty Cycle Mode
      WARMUPMODE     : PERCTRL_WARMUPMODE_Field :=
                        Interfaces.EFM32.LESENSE.NORMAL;
      --  unspecified
      Reserved_30_31 : Interfaces.EFM32.UInt2 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PERCTRL_Register use record
      DACCH0EN       at 0 range 0 .. 0;
      DACCH1EN       at 0 range 1 .. 1;
      DACCH0DATA     at 0 range 2 .. 2;
      DACCH1DATA     at 0 range 3 .. 3;
      Reserved_4_5   at 0 range 4 .. 5;
      DACSTARTUP     at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      DACCONVTRIG    at 0 range 8 .. 8;
      Reserved_9_19  at 0 range 9 .. 19;
      ACMP0MODE      at 0 range 20 .. 21;
      ACMP1MODE      at 0 range 22 .. 23;
      ACMP0INV       at 0 range 24 .. 24;
      ACMP1INV       at 0 range 25 .. 25;
      ACMP0HYSTEN    at 0 range 26 .. 26;
      ACMP1HYSTEN    at 0 range 27 .. 27;
      WARMUPMODE     at 0 range 28 .. 29;
      Reserved_30_31 at 0 range 30 .. 31;
   end record;

   subtype DECCTRL_DISABLE_Field is Interfaces.EFM32.Bit;
   subtype DECCTRL_ERRCHK_Field is Interfaces.EFM32.Bit;
   subtype DECCTRL_INTMAP_Field is Interfaces.EFM32.Bit;
   --  DECCTRL_HYSTPRS array element
   subtype DECCTRL_HYSTPRS_Element is Interfaces.EFM32.Bit;

   --  DECCTRL_HYSTPRS array
   type DECCTRL_HYSTPRS_Field_Array is array (0 .. 2)
     of DECCTRL_HYSTPRS_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for DECCTRL_HYSTPRS
   type DECCTRL_HYSTPRS_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  HYSTPRS as a value
            Val : Interfaces.EFM32.UInt3;
         when True =>
            --  HYSTPRS as an array
            Arr : DECCTRL_HYSTPRS_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for DECCTRL_HYSTPRS_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype DECCTRL_HYSTIRQ_Field is Interfaces.EFM32.Bit;
   subtype DECCTRL_PRSCNT_Field is Interfaces.EFM32.Bit;
   subtype DECCTRL_INPUT_Field is Interfaces.EFM32.Bit;

   --  LESENSE Decoder PRS Input 0 Configuration
   type DECCTRL_PRSSEL0_Field is
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
   for DECCTRL_PRSSEL0_Field use
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

   --  LESENSE Decoder PRS Input 1 Configuration
   type DECCTRL_PRSSEL1_Field is
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
   for DECCTRL_PRSSEL1_Field use
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

   --  LESENSE Decoder PRS Input 2 Configuration
   type DECCTRL_PRSSEL2_Field is
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
   for DECCTRL_PRSSEL2_Field use
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

   --  LESENSE Decoder PRS Input 3 Configuration
   type DECCTRL_PRSSEL3_Field is
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
   for DECCTRL_PRSSEL3_Field use
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

   --  Decoder Control Register
   type DECCTRL_Register is record
      --  Disable the Decoder
      DISABLE        : DECCTRL_DISABLE_Field := 16#0#;
      --  Enable Check of Current State
      ERRCHK         : DECCTRL_ERRCHK_Field := 16#0#;
      --  Enable Decoder to Channel Interrupt Mapping
      INTMAP         : DECCTRL_INTMAP_Field := 16#0#;
      --  Enable Decoder Hysteresis on PRS0 Output
      HYSTPRS        : DECCTRL_HYSTPRS_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Enable Decoder Hysteresis on Interrupt Requests
      HYSTIRQ        : DECCTRL_HYSTIRQ_Field := 16#0#;
      --  Enable Count Mode on Decoder PRS Channels 0 and 1
      PRSCNT         : DECCTRL_PRSCNT_Field := 16#0#;
      --  LESENSE Decoder Input Configuration
      INPUT          : DECCTRL_INPUT_Field := 16#0#;
      --  unspecified
      Reserved_9_9   : Interfaces.EFM32.Bit := 16#0#;
      --  LESENSE Decoder PRS Input 0 Configuration
      PRSSEL0        : DECCTRL_PRSSEL0_Field :=
                        Interfaces.EFM32.LESENSE.PRSCH0;
      --  unspecified
      Reserved_14_14 : Interfaces.EFM32.Bit := 16#0#;
      --  LESENSE Decoder PRS Input 1 Configuration
      PRSSEL1        : DECCTRL_PRSSEL1_Field :=
                        Interfaces.EFM32.LESENSE.PRSCH0;
      --  unspecified
      Reserved_19_19 : Interfaces.EFM32.Bit := 16#0#;
      --  LESENSE Decoder PRS Input 2 Configuration
      PRSSEL2        : DECCTRL_PRSSEL2_Field :=
                        Interfaces.EFM32.LESENSE.PRSCH0;
      --  unspecified
      Reserved_24_24 : Interfaces.EFM32.Bit := 16#0#;
      --  LESENSE Decoder PRS Input 3 Configuration
      PRSSEL3        : DECCTRL_PRSSEL3_Field :=
                        Interfaces.EFM32.LESENSE.PRSCH0;
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DECCTRL_Register use record
      DISABLE        at 0 range 0 .. 0;
      ERRCHK         at 0 range 1 .. 1;
      INTMAP         at 0 range 2 .. 2;
      HYSTPRS        at 0 range 3 .. 5;
      HYSTIRQ        at 0 range 6 .. 6;
      PRSCNT         at 0 range 7 .. 7;
      INPUT          at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      PRSSEL0        at 0 range 10 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      PRSSEL1        at 0 range 15 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      PRSSEL2        at 0 range 20 .. 23;
      Reserved_24_24 at 0 range 24 .. 24;
      PRSSEL3        at 0 range 25 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  Select Bias Mode
   type BIASCTRL_BIASMODE_Field is
     (--  Bias module is controlled by the EMU and is not affected by LESENSE
      DONTTOUCH,
      --  Bias module duty cycled between low power and high accuracy mode
      DUTYCYCLE,
      --  Bias module always in high accuracy mode
      HIGHACC)
     with Size => 2;
   for BIASCTRL_BIASMODE_Field use
     (DONTTOUCH => 0,
      DUTYCYCLE => 1,
      HIGHACC => 2);

   --  Bias Control Register
   type BIASCTRL_Register is record
      --  Select Bias Mode
      BIASMODE      : BIASCTRL_BIASMODE_Field :=
                       Interfaces.EFM32.LESENSE.DONTTOUCH;
      --  unspecified
      Reserved_2_31 : Interfaces.EFM32.UInt30 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BIASCTRL_Register use record
      BIASMODE      at 0 range 0 .. 1;
      Reserved_2_31 at 0 range 2 .. 31;
   end record;

   subtype EVALCTRL_WINSIZE_Field is Interfaces.EFM32.UInt16;

   --  LESENSE Evaluation Control
   type EVALCTRL_Register is record
      --  Sliding Window and Step Detection Size
      WINSIZE        : EVALCTRL_WINSIZE_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for EVALCTRL_Register use record
      WINSIZE        at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype PRSCTRL_DECCMPVAL_Field is Interfaces.EFM32.UInt5;
   subtype PRSCTRL_DECCMPMASK_Field is Interfaces.EFM32.UInt5;
   subtype PRSCTRL_DECCMPEN_Field is Interfaces.EFM32.Bit;

   --  PRS Control Register
   type PRSCTRL_Register is record
      --  Decoder State Compare Value
      DECCMPVAL      : PRSCTRL_DECCMPVAL_Field := 16#0#;
      --  unspecified
      Reserved_5_7   : Interfaces.EFM32.UInt3 := 16#0#;
      --  Decoder State Compare Value Mask
      DECCMPMASK     : PRSCTRL_DECCMPMASK_Field := 16#0#;
      --  unspecified
      Reserved_13_15 : Interfaces.EFM32.UInt3 := 16#0#;
      --  Enable PRS Output DECCMP
      DECCMPEN       : PRSCTRL_DECCMPEN_Field := 16#0#;
      --  unspecified
      Reserved_17_31 : Interfaces.EFM32.UInt15 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PRSCTRL_Register use record
      DECCMPVAL      at 0 range 0 .. 4;
      Reserved_5_7   at 0 range 5 .. 7;
      DECCMPMASK     at 0 range 8 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      DECCMPEN       at 0 range 16 .. 16;
      Reserved_17_31 at 0 range 17 .. 31;
   end record;

   subtype CMD_START_Field is Interfaces.EFM32.Bit;
   subtype CMD_STOP_Field is Interfaces.EFM32.Bit;
   subtype CMD_DECODE_Field is Interfaces.EFM32.Bit;
   subtype CMD_CLEARBUF_Field is Interfaces.EFM32.Bit;

   --  Command Register
   type CMD_Register is record
      --  Write-only. Start Scanning of Sensors
      START         : CMD_START_Field := 16#0#;
      --  Write-only. Stop Scanning of Sensors
      STOP          : CMD_STOP_Field := 16#0#;
      --  Write-only. Start Decoder
      DECODE        : CMD_DECODE_Field := 16#0#;
      --  Write-only. Clear Result Buffer
      CLEARBUF      : CMD_CLEARBUF_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CMD_Register use record
      START         at 0 range 0 .. 0;
      STOP          at 0 range 1 .. 1;
      DECODE        at 0 range 2 .. 2;
      CLEARBUF      at 0 range 3 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype CHEN_CHEN_Field is Interfaces.EFM32.UInt16;

   --  Channel Enable Register
   type CHEN_Register is record
      --  Enable Scan Channel
      CHEN           : CHEN_CHEN_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : Interfaces.EFM32.UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CHEN_Register use record
      CHEN           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype SCANRES_SCANRES_Field is Interfaces.EFM32.UInt16;
   subtype SCANRES_STEPDIR_Field is Interfaces.EFM32.UInt16;

   --  Scan Result Register
   type SCANRES_Register is record
      --  Scan Results
      SCANRES : SCANRES_SCANRES_Field := 16#0#;
      --  Direction of Previous Step Detection
      STEPDIR : SCANRES_STEPDIR_Field := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SCANRES_Register use record
      SCANRES at 0 range 0 .. 15;
      STEPDIR at 0 range 16 .. 31;
   end record;

   subtype STATUS_BUFDATAV_Field is Interfaces.EFM32.Bit;
   subtype STATUS_BUFHALFFULL_Field is Interfaces.EFM32.Bit;
   subtype STATUS_BUFFULL_Field is Interfaces.EFM32.Bit;
   subtype STATUS_RUNNING_Field is Interfaces.EFM32.Bit;
   subtype STATUS_SCANACTIVE_Field is Interfaces.EFM32.Bit;
   subtype STATUS_DACACTIVE_Field is Interfaces.EFM32.Bit;

   --  Status Register
   type STATUS_Register is record
      --  Read-only. Result Data Valid
      BUFDATAV      : STATUS_BUFDATAV_Field;
      --  Read-only. Result Buffer Half Full
      BUFHALFFULL   : STATUS_BUFHALFFULL_Field;
      --  Read-only. Result Buffer Full
      BUFFULL       : STATUS_BUFFULL_Field;
      --  Read-only. LESENSE Periodic Counter Running
      RUNNING       : STATUS_RUNNING_Field;
      --  Read-only. LESENSE Scan Active
      SCANACTIVE    : STATUS_SCANACTIVE_Field;
      --  Read-only. LESENSE VDAC Interface is Active
      DACACTIVE     : STATUS_DACACTIVE_Field;
      --  unspecified
      Reserved_6_31 : Interfaces.EFM32.UInt26;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for STATUS_Register use record
      BUFDATAV      at 0 range 0 .. 0;
      BUFHALFFULL   at 0 range 1 .. 1;
      BUFFULL       at 0 range 2 .. 2;
      RUNNING       at 0 range 3 .. 3;
      SCANACTIVE    at 0 range 4 .. 4;
      DACACTIVE     at 0 range 5 .. 5;
      Reserved_6_31 at 0 range 6 .. 31;
   end record;

   subtype PTR_RD_Field is Interfaces.EFM32.UInt4;
   subtype PTR_WR_Field is Interfaces.EFM32.UInt4;

   --  Result Buffer Pointers
   type PTR_Register is record
      --  Read-only. Result Buffer Read Pointer
      RD            : PTR_RD_Field;
      --  Read-only. Result Buffer Write Pointer
      WR            : PTR_WR_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PTR_Register use record
      RD            at 0 range 0 .. 3;
      WR            at 0 range 4 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype BUFDATA_BUFDATA_Field is Interfaces.EFM32.UInt16;
   subtype BUFDATA_BUFDATASRC_Field is Interfaces.EFM32.UInt4;

   --  Result Buffer Data Register
   type BUFDATA_Register is record
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Result Data
      BUFDATA        : BUFDATA_BUFDATA_Field;
      --  Read-only. *** Reading this field has side effects on other resources
      --  ***. Result Data Source
      BUFDATASRC     : BUFDATA_BUFDATASRC_Field;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUFDATA_Register use record
      BUFDATA        at 0 range 0 .. 15;
      BUFDATASRC     at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype CURCH_CURCH_Field is Interfaces.EFM32.UInt4;

   --  Current Channel Index
   type CURCH_Register is record
      --  Read-only. Current Channel Index
      CURCH         : CURCH_CURCH_Field;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CURCH_Register use record
      CURCH         at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   subtype DECSTATE_DECSTATE_Field is Interfaces.EFM32.UInt5;

   --  Current Decoder State
   type DECSTATE_Register is record
      --  Current Decoder State
      DECSTATE      : DECSTATE_DECSTATE_Field := 16#0#;
      --  unspecified
      Reserved_5_31 : Interfaces.EFM32.UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for DECSTATE_Register use record
      DECSTATE      at 0 range 0 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype SENSORSTATE_SENSORSTATE_Field is Interfaces.EFM32.UInt4;

   --  Decoder Input Register
   type SENSORSTATE_Register is record
      --  Decoder Input Register
      SENSORSTATE   : SENSORSTATE_SENSORSTATE_Field := 16#0#;
      --  unspecified
      Reserved_4_31 : Interfaces.EFM32.UInt28 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SENSORSTATE_Register use record
      SENSORSTATE   at 0 range 0 .. 3;
      Reserved_4_31 at 0 range 4 .. 31;
   end record;

   --  Channel 0 Idle Phase Configuration
   type IDLECONF_CH0_Field is
     (--  CH0 output is disabled in idle phase
      DISABLE,
      --  CH0 output is high in idle phase
      HIGH,
      --  CH0 output is low in idle phase
      LOW,
      --  CH0 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH0_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  Channel 1 Idle Phase Configuration
   type IDLECONF_CH1_Field is
     (--  CH1 output is disabled in idle phase
      DISABLE,
      --  CH1 output is high in idle phase
      HIGH,
      --  CH1 output is low in idle phase
      LOW,
      --  CH1 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH1_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  Channel 2 Idle Phase Configuration
   type IDLECONF_CH2_Field is
     (--  CH2 output is disabled in idle phase
      DISABLE,
      --  CH2 output is high in idle phase
      HIGH,
      --  CH2 output is low in idle phase
      LOW,
      --  CH2 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH2_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  Channel 3 Idle Phase Configuration
   type IDLECONF_CH3_Field is
     (--  CH3 output is disabled in idle phase
      DISABLE,
      --  CH3 output is high in idle phase
      HIGH,
      --  CH3 output is low in idle phase
      LOW,
      --  CH3 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH3_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  Channel 4 Idle Phase Configuration
   type IDLECONF_CH4_Field is
     (--  CH4 output is disabled in idle phase
      DISABLE,
      --  CH4 output is high in idle phase
      HIGH,
      --  CH4 output is low in idle phase
      LOW,
      --  CH4 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH4_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  Channel 5 Idle Phase Configuration
   type IDLECONF_CH5_Field is
     (--  CH5 output is disabled in idle phase
      DISABLE,
      --  CH5 output is high in idle phase
      HIGH,
      --  CH5 output is low in idle phase
      LOW,
      --  CH5 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH5_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  Channel 6 Idle Phase Configuration
   type IDLECONF_CH6_Field is
     (--  CH6 output is disabled in idle phase
      DISABLE,
      --  CH6 output is high in idle phase
      HIGH,
      --  CH6 output is low in idle phase
      LOW,
      --  CH6 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH6_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  Channel 7 Idle Phase Configuration
   type IDLECONF_CH7_Field is
     (--  CH7 output is disabled in idle phase
      DISABLE,
      --  CH7 output is high in idle phase
      HIGH,
      --  CH7 output is low in idle phase
      LOW,
      --  CH7 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH7_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  Channel 8 Idle Phase Configuration
   type IDLECONF_CH8_Field is
     (--  CH8 output is disabled in idle phase
      DISABLE,
      --  CH8 output is high in idle phase
      HIGH,
      --  CH8 output is low in idle phase
      LOW,
      --  CH8 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH8_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  Channel 9 Idle Phase Configuration
   type IDLECONF_CH9_Field is
     (--  CH9 output is disabled in idle phase
      DISABLE,
      --  CH9 output is high in idle phase
      HIGH,
      --  CH9 output is low in idle phase
      LOW,
      --  CH9 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH9_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  Channel 10 Idle Phase Configuration
   type IDLECONF_CH10_Field is
     (--  CH10 output is disabled in idle phase
      DISABLE,
      --  CH10 output is high in idle phase
      HIGH,
      --  CH10 output is low in idle phase
      LOW,
      --  CH10 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH10_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  Channel 11 Idle Phase Configuration
   type IDLECONF_CH11_Field is
     (--  CH11 output is disabled in idle phase
      DISABLE,
      --  CH11 output is high in idle phase
      HIGH,
      --  CH11 output is low in idle phase
      LOW,
      --  CH11 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH11_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  Channel 12 Idle Phase Configuration
   type IDLECONF_CH12_Field is
     (--  CH12 output is disabled in idle phase
      DISABLE,
      --  CH12 output is high in idle phase
      HIGH,
      --  CH12 output is low in idle phase
      LOW,
      --  CH12 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH12_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  Channel 13 Idle Phase Configuration
   type IDLECONF_CH13_Field is
     (--  CH13 output is disabled in idle phase
      DISABLE,
      --  CH13 output is high in idle phase
      HIGH,
      --  CH13 output is low in idle phase
      LOW,
      --  CH13 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH13_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  Channel 14 Idle Phase Configuration
   type IDLECONF_CH14_Field is
     (--  CH14 output is disabled in idle phase
      DISABLE,
      --  CH14 output is high in idle phase
      HIGH,
      --  CH14 output is low in idle phase
      LOW,
      --  CH14 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH14_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  Channel 15 Idle Phase Configuration
   type IDLECONF_CH15_Field is
     (--  CH15 output is disabled in idle phase
      DISABLE,
      --  CH15 output is high in idle phase
      HIGH,
      --  CH15 output is low in idle phase
      LOW,
      --  CH15 output is connected to VDAC output in idle phase. Note that this mode
--  is only available on channels 0, 1, 2, 3, 12, 13, 14, 15
      DAC)
     with Size => 2;
   for IDLECONF_CH15_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DAC => 3);

   --  GPIO Idle Phase Configuration
   type IDLECONF_Register is record
      --  Channel 0 Idle Phase Configuration
      CH0  : IDLECONF_CH0_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Channel 1 Idle Phase Configuration
      CH1  : IDLECONF_CH1_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Channel 2 Idle Phase Configuration
      CH2  : IDLECONF_CH2_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Channel 3 Idle Phase Configuration
      CH3  : IDLECONF_CH3_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Channel 4 Idle Phase Configuration
      CH4  : IDLECONF_CH4_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Channel 5 Idle Phase Configuration
      CH5  : IDLECONF_CH5_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Channel 6 Idle Phase Configuration
      CH6  : IDLECONF_CH6_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Channel 7 Idle Phase Configuration
      CH7  : IDLECONF_CH7_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Channel 8 Idle Phase Configuration
      CH8  : IDLECONF_CH8_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Channel 9 Idle Phase Configuration
      CH9  : IDLECONF_CH9_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Channel 10 Idle Phase Configuration
      CH10 : IDLECONF_CH10_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Channel 11 Idle Phase Configuration
      CH11 : IDLECONF_CH11_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Channel 12 Idle Phase Configuration
      CH12 : IDLECONF_CH12_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Channel 13 Idle Phase Configuration
      CH13 : IDLECONF_CH13_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Channel 14 Idle Phase Configuration
      CH14 : IDLECONF_CH14_Field := Interfaces.EFM32.LESENSE.DISABLE;
      --  Channel 15 Idle Phase Configuration
      CH15 : IDLECONF_CH15_Field := Interfaces.EFM32.LESENSE.DISABLE;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IDLECONF_Register use record
      CH0  at 0 range 0 .. 1;
      CH1  at 0 range 2 .. 3;
      CH2  at 0 range 4 .. 5;
      CH3  at 0 range 6 .. 7;
      CH4  at 0 range 8 .. 9;
      CH5  at 0 range 10 .. 11;
      CH6  at 0 range 12 .. 13;
      CH7  at 0 range 14 .. 15;
      CH8  at 0 range 16 .. 17;
      CH9  at 0 range 18 .. 19;
      CH10 at 0 range 20 .. 21;
      CH11 at 0 range 22 .. 23;
      CH12 at 0 range 24 .. 25;
      CH13 at 0 range 26 .. 27;
      CH14 at 0 range 28 .. 29;
      CH15 at 0 range 30 .. 31;
   end record;

   --  ALTEX0 Idle Phase Configuration
   type ALTEXCONF_IDLECONF0_Field is
     (--  ALTEX0 output is disabled in idle phase
      DISABLE,
      --  ALTEX0 output is high in idle phase
      HIGH,
      --  ALTEX0 output is low in idle phase
      LOW)
     with Size => 2;
   for ALTEXCONF_IDLECONF0_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2);

   --  ALTEX1 Idle Phase Configuration
   type ALTEXCONF_IDLECONF1_Field is
     (--  ALTEX1 output is disabled in idle phase
      DISABLE,
      --  ALTEX1 output is high in idle phase
      HIGH,
      --  ALTEX1 output is low in idle phase
      LOW)
     with Size => 2;
   for ALTEXCONF_IDLECONF1_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2);

   --  ALTEX2 Idle Phase Configuration
   type ALTEXCONF_IDLECONF2_Field is
     (--  ALTEX2 output is disabled in idle phase
      DISABLE,
      --  ALTEX2 output is high in idle phase
      HIGH,
      --  ALTEX2 output is low in idle phase
      LOW)
     with Size => 2;
   for ALTEXCONF_IDLECONF2_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2);

   --  ALTEX3 Idle Phase Configuration
   type ALTEXCONF_IDLECONF3_Field is
     (--  ALTEX3 output is disabled in idle phase
      DISABLE,
      --  ALTEX3 output is high in idle phase
      HIGH,
      --  ALTEX3 output is low in idle phase
      LOW)
     with Size => 2;
   for ALTEXCONF_IDLECONF3_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2);

   --  ALTEX4 Idle Phase Configuration
   type ALTEXCONF_IDLECONF4_Field is
     (--  ALTEX4 output is disabled in idle phase
      DISABLE,
      --  ALTEX4 output is high in idle phase
      HIGH,
      --  ALTEX4 output is low in idle phase
      LOW)
     with Size => 2;
   for ALTEXCONF_IDLECONF4_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2);

   --  ALTEX5 Idle Phase Configuration
   type ALTEXCONF_IDLECONF5_Field is
     (--  ALTEX5 output is disabled in idle phase
      DISABLE,
      --  ALTEX5 output is high in idle phase
      HIGH,
      --  ALTEX5 output is low in idle phase
      LOW)
     with Size => 2;
   for ALTEXCONF_IDLECONF5_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2);

   --  ALTEX6 Idle Phase Configuration
   type ALTEXCONF_IDLECONF6_Field is
     (--  ALTEX6 output is disabled in idle phase
      DISABLE,
      --  ALTEX6 output is high in idle phase
      HIGH,
      --  ALTEX6 output is low in idle phase
      LOW)
     with Size => 2;
   for ALTEXCONF_IDLECONF6_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2);

   --  ALTEX7 Idle Phase Configuration
   type ALTEXCONF_IDLECONF7_Field is
     (--  ALTEX7 output is disabled in idle phase
      DISABLE,
      --  ALTEX7 output is high in idle phase
      HIGH,
      --  ALTEX7 output is low in idle phase
      LOW)
     with Size => 2;
   for ALTEXCONF_IDLECONF7_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2);

   --  ALTEXCONF_AEX array element
   subtype ALTEXCONF_AEX_Element is Interfaces.EFM32.Bit;

   --  ALTEXCONF_AEX array
   type ALTEXCONF_AEX_Field_Array is array (0 .. 7) of ALTEXCONF_AEX_Element
     with Component_Size => 1, Size => 8;

   --  Type definition for ALTEXCONF_AEX
   type ALTEXCONF_AEX_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  AEX as a value
            Val : Interfaces.EFM32.Byte;
         when True =>
            --  AEX as an array
            Arr : ALTEXCONF_AEX_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 8;

   for ALTEXCONF_AEX_Field use record
      Val at 0 range 0 .. 7;
      Arr at 0 range 0 .. 7;
   end record;

   --  Alternative Excite Pin Configuration
   type ALTEXCONF_Register is record
      --  ALTEX0 Idle Phase Configuration
      IDLECONF0      : ALTEXCONF_IDLECONF0_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  ALTEX1 Idle Phase Configuration
      IDLECONF1      : ALTEXCONF_IDLECONF1_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  ALTEX2 Idle Phase Configuration
      IDLECONF2      : ALTEXCONF_IDLECONF2_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  ALTEX3 Idle Phase Configuration
      IDLECONF3      : ALTEXCONF_IDLECONF3_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  ALTEX4 Idle Phase Configuration
      IDLECONF4      : ALTEXCONF_IDLECONF4_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  ALTEX5 Idle Phase Configuration
      IDLECONF5      : ALTEXCONF_IDLECONF5_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  ALTEX6 Idle Phase Configuration
      IDLECONF6      : ALTEXCONF_IDLECONF6_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  ALTEX7 Idle Phase Configuration
      IDLECONF7      : ALTEXCONF_IDLECONF7_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  ALTEX0 Always Excite Enable
      AEX            : ALTEXCONF_AEX_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ALTEXCONF_Register use record
      IDLECONF0      at 0 range 0 .. 1;
      IDLECONF1      at 0 range 2 .. 3;
      IDLECONF2      at 0 range 4 .. 5;
      IDLECONF3      at 0 range 6 .. 7;
      IDLECONF4      at 0 range 8 .. 9;
      IDLECONF5      at 0 range 10 .. 11;
      IDLECONF6      at 0 range 12 .. 13;
      IDLECONF7      at 0 range 14 .. 15;
      AEX            at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   --  IF_CH array element
   subtype IF_CH_Element is Interfaces.EFM32.Bit;

   --  IF_CH array
   type IF_CH_Field_Array is array (0 .. 15) of IF_CH_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for IF_CH
   type IF_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : Interfaces.EFM32.UInt16;
         when True =>
            --  CH as an array
            Arr : IF_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for IF_CH_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype IF_SCANCOMPLETE_Field is Interfaces.EFM32.Bit;
   subtype IF_DEC_Field is Interfaces.EFM32.Bit;
   subtype IF_DECERR_Field is Interfaces.EFM32.Bit;
   subtype IF_BUFDATAV_Field is Interfaces.EFM32.Bit;
   subtype IF_BUFLEVEL_Field is Interfaces.EFM32.Bit;
   subtype IF_BUFOF_Field is Interfaces.EFM32.Bit;
   subtype IF_CNTOF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. CH0 Interrupt Flag
      CH             : IF_CH_Field;
      --  Read-only. SCANCOMPLETE Interrupt Flag
      SCANCOMPLETE   : IF_SCANCOMPLETE_Field;
      --  Read-only. DEC Interrupt Flag
      DEC            : IF_DEC_Field;
      --  Read-only. DECERR Interrupt Flag
      DECERR         : IF_DECERR_Field;
      --  Read-only. BUFDATAV Interrupt Flag
      BUFDATAV       : IF_BUFDATAV_Field;
      --  Read-only. BUFLEVEL Interrupt Flag
      BUFLEVEL       : IF_BUFLEVEL_Field;
      --  Read-only. BUFOF Interrupt Flag
      BUFOF          : IF_BUFOF_Field;
      --  Read-only. CNTOF Interrupt Flag
      CNTOF          : IF_CNTOF_Field;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      CH             at 0 range 0 .. 15;
      SCANCOMPLETE   at 0 range 16 .. 16;
      DEC            at 0 range 17 .. 17;
      DECERR         at 0 range 18 .. 18;
      BUFDATAV       at 0 range 19 .. 19;
      BUFLEVEL       at 0 range 20 .. 20;
      BUFOF          at 0 range 21 .. 21;
      CNTOF          at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  IFS_CH array element
   subtype IFS_CH_Element is Interfaces.EFM32.Bit;

   --  IFS_CH array
   type IFS_CH_Field_Array is array (0 .. 15) of IFS_CH_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for IFS_CH
   type IFS_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : Interfaces.EFM32.UInt16;
         when True =>
            --  CH as an array
            Arr : IFS_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for IFS_CH_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype IFS_SCANCOMPLETE_Field is Interfaces.EFM32.Bit;
   subtype IFS_DEC_Field is Interfaces.EFM32.Bit;
   subtype IFS_DECERR_Field is Interfaces.EFM32.Bit;
   subtype IFS_BUFDATAV_Field is Interfaces.EFM32.Bit;
   subtype IFS_BUFLEVEL_Field is Interfaces.EFM32.Bit;
   subtype IFS_BUFOF_Field is Interfaces.EFM32.Bit;
   subtype IFS_CNTOF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set CH0 Interrupt Flag
      CH             : IFS_CH_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Set SCANCOMPLETE Interrupt Flag
      SCANCOMPLETE   : IFS_SCANCOMPLETE_Field := 16#0#;
      --  Write-only. Set DEC Interrupt Flag
      DEC            : IFS_DEC_Field := 16#0#;
      --  Write-only. Set DECERR Interrupt Flag
      DECERR         : IFS_DECERR_Field := 16#0#;
      --  Write-only. Set BUFDATAV Interrupt Flag
      BUFDATAV       : IFS_BUFDATAV_Field := 16#0#;
      --  Write-only. Set BUFLEVEL Interrupt Flag
      BUFLEVEL       : IFS_BUFLEVEL_Field := 16#0#;
      --  Write-only. Set BUFOF Interrupt Flag
      BUFOF          : IFS_BUFOF_Field := 16#0#;
      --  Write-only. Set CNTOF Interrupt Flag
      CNTOF          : IFS_CNTOF_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      CH             at 0 range 0 .. 15;
      SCANCOMPLETE   at 0 range 16 .. 16;
      DEC            at 0 range 17 .. 17;
      DECERR         at 0 range 18 .. 18;
      BUFDATAV       at 0 range 19 .. 19;
      BUFLEVEL       at 0 range 20 .. 20;
      BUFOF          at 0 range 21 .. 21;
      CNTOF          at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  IFC_CH array element
   subtype IFC_CH_Element is Interfaces.EFM32.Bit;

   --  IFC_CH array
   type IFC_CH_Field_Array is array (0 .. 15) of IFC_CH_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for IFC_CH
   type IFC_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : Interfaces.EFM32.UInt16;
         when True =>
            --  CH as an array
            Arr : IFC_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for IFC_CH_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype IFC_SCANCOMPLETE_Field is Interfaces.EFM32.Bit;
   subtype IFC_DEC_Field is Interfaces.EFM32.Bit;
   subtype IFC_DECERR_Field is Interfaces.EFM32.Bit;
   subtype IFC_BUFDATAV_Field is Interfaces.EFM32.Bit;
   subtype IFC_BUFLEVEL_Field is Interfaces.EFM32.Bit;
   subtype IFC_BUFOF_Field is Interfaces.EFM32.Bit;
   subtype IFC_CNTOF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear CH0 Interrupt Flag
      CH             : IFC_CH_Field := (As_Array => False, Val => 16#0#);
      --  Write-only. Clear SCANCOMPLETE Interrupt Flag
      SCANCOMPLETE   : IFC_SCANCOMPLETE_Field := 16#0#;
      --  Write-only. Clear DEC Interrupt Flag
      DEC            : IFC_DEC_Field := 16#0#;
      --  Write-only. Clear DECERR Interrupt Flag
      DECERR         : IFC_DECERR_Field := 16#0#;
      --  Write-only. Clear BUFDATAV Interrupt Flag
      BUFDATAV       : IFC_BUFDATAV_Field := 16#0#;
      --  Write-only. Clear BUFLEVEL Interrupt Flag
      BUFLEVEL       : IFC_BUFLEVEL_Field := 16#0#;
      --  Write-only. Clear BUFOF Interrupt Flag
      BUFOF          : IFC_BUFOF_Field := 16#0#;
      --  Write-only. Clear CNTOF Interrupt Flag
      CNTOF          : IFC_CNTOF_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      CH             at 0 range 0 .. 15;
      SCANCOMPLETE   at 0 range 16 .. 16;
      DEC            at 0 range 17 .. 17;
      DECERR         at 0 range 18 .. 18;
      BUFDATAV       at 0 range 19 .. 19;
      BUFLEVEL       at 0 range 20 .. 20;
      BUFOF          at 0 range 21 .. 21;
      CNTOF          at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   --  IEN_CH array element
   subtype IEN_CH_Element is Interfaces.EFM32.Bit;

   --  IEN_CH array
   type IEN_CH_Field_Array is array (0 .. 15) of IEN_CH_Element
     with Component_Size => 1, Size => 16;

   --  Type definition for IEN_CH
   type IEN_CH_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CH as a value
            Val : Interfaces.EFM32.UInt16;
         when True =>
            --  CH as an array
            Arr : IEN_CH_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 16;

   for IEN_CH_Field use record
      Val at 0 range 0 .. 15;
      Arr at 0 range 0 .. 15;
   end record;

   subtype IEN_SCANCOMPLETE_Field is Interfaces.EFM32.Bit;
   subtype IEN_DEC_Field is Interfaces.EFM32.Bit;
   subtype IEN_DECERR_Field is Interfaces.EFM32.Bit;
   subtype IEN_BUFDATAV_Field is Interfaces.EFM32.Bit;
   subtype IEN_BUFLEVEL_Field is Interfaces.EFM32.Bit;
   subtype IEN_BUFOF_Field is Interfaces.EFM32.Bit;
   subtype IEN_CNTOF_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  CH0 Interrupt Enable
      CH             : IEN_CH_Field := (As_Array => False, Val => 16#0#);
      --  SCANCOMPLETE Interrupt Enable
      SCANCOMPLETE   : IEN_SCANCOMPLETE_Field := 16#0#;
      --  DEC Interrupt Enable
      DEC            : IEN_DEC_Field := 16#0#;
      --  DECERR Interrupt Enable
      DECERR         : IEN_DECERR_Field := 16#0#;
      --  BUFDATAV Interrupt Enable
      BUFDATAV       : IEN_BUFDATAV_Field := 16#0#;
      --  BUFLEVEL Interrupt Enable
      BUFLEVEL       : IEN_BUFLEVEL_Field := 16#0#;
      --  BUFOF Interrupt Enable
      BUFOF          : IEN_BUFOF_Field := 16#0#;
      --  CNTOF Interrupt Enable
      CNTOF          : IEN_CNTOF_Field := 16#0#;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      CH             at 0 range 0 .. 15;
      SCANCOMPLETE   at 0 range 16 .. 16;
      DEC            at 0 range 17 .. 17;
      DECERR         at 0 range 18 .. 18;
      BUFDATAV       at 0 range 19 .. 19;
      BUFLEVEL       at 0 range 20 .. 20;
      BUFOF          at 0 range 21 .. 21;
      CNTOF          at 0 range 22 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype SYNCBUSY_CMD_Field is Interfaces.EFM32.Bit;

   --  Synchronization Busy Register
   type SYNCBUSY_Register is record
      --  unspecified
      Reserved_0_6  : Interfaces.EFM32.UInt7;
      --  Read-only. CMD Register Busy
      CMD           : SYNCBUSY_CMD_Field;
      --  unspecified
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for SYNCBUSY_Register use record
      Reserved_0_6  at 0 range 0 .. 6;
      CMD           at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype ROUTEPEN_CH0PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH1PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH2PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH3PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH4PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH5PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH6PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH7PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH8PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH9PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH10PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH11PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH12PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH13PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH14PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_CH15PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_ALTEX0PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_ALTEX1PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_ALTEX2PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_ALTEX3PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_ALTEX4PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_ALTEX5PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_ALTEX6PEN_Field is Interfaces.EFM32.Bit;
   subtype ROUTEPEN_ALTEX7PEN_Field is Interfaces.EFM32.Bit;

   --  I/O Routing Register
   type ROUTEPEN_Register is record
      --  CH0 Pin Enable
      CH0PEN         : ROUTEPEN_CH0PEN_Field := 16#0#;
      --  CH1 Pin Enable
      CH1PEN         : ROUTEPEN_CH1PEN_Field := 16#0#;
      --  CH2 Pin Enable
      CH2PEN         : ROUTEPEN_CH2PEN_Field := 16#0#;
      --  CH3 Pin Enable
      CH3PEN         : ROUTEPEN_CH3PEN_Field := 16#0#;
      --  CH4 Pin Enable
      CH4PEN         : ROUTEPEN_CH4PEN_Field := 16#0#;
      --  CH5 Pin Enable
      CH5PEN         : ROUTEPEN_CH5PEN_Field := 16#0#;
      --  CH6 Pin Enable
      CH6PEN         : ROUTEPEN_CH6PEN_Field := 16#0#;
      --  CH7 Pin Enable
      CH7PEN         : ROUTEPEN_CH7PEN_Field := 16#0#;
      --  CH8 Pin Enable
      CH8PEN         : ROUTEPEN_CH8PEN_Field := 16#0#;
      --  CH9 Pin Enable
      CH9PEN         : ROUTEPEN_CH9PEN_Field := 16#0#;
      --  CH10 Pin Enable
      CH10PEN        : ROUTEPEN_CH10PEN_Field := 16#0#;
      --  CH11 Pin Enable
      CH11PEN        : ROUTEPEN_CH11PEN_Field := 16#0#;
      --  CH12 Pin Enable
      CH12PEN        : ROUTEPEN_CH12PEN_Field := 16#0#;
      --  CH13 Pin Enable
      CH13PEN        : ROUTEPEN_CH13PEN_Field := 16#0#;
      --  CH14 Pin Enable
      CH14PEN        : ROUTEPEN_CH14PEN_Field := 16#0#;
      --  CH15 Pin Enable
      CH15PEN        : ROUTEPEN_CH15PEN_Field := 16#0#;
      --  ALTEX0 Pin Enable
      ALTEX0PEN      : ROUTEPEN_ALTEX0PEN_Field := 16#0#;
      --  ALTEX1 Pin Enable
      ALTEX1PEN      : ROUTEPEN_ALTEX1PEN_Field := 16#0#;
      --  ALTEX2 Pin Enable
      ALTEX2PEN      : ROUTEPEN_ALTEX2PEN_Field := 16#0#;
      --  ALTEX3 Pin Enable
      ALTEX3PEN      : ROUTEPEN_ALTEX3PEN_Field := 16#0#;
      --  ALTEX4 Pin Enable
      ALTEX4PEN      : ROUTEPEN_ALTEX4PEN_Field := 16#0#;
      --  ALTEX5 Pin Enable
      ALTEX5PEN      : ROUTEPEN_ALTEX5PEN_Field := 16#0#;
      --  ALTEX6 Pin Enable
      ALTEX6PEN      : ROUTEPEN_ALTEX6PEN_Field := 16#0#;
      --  ALTEX7 Pin Enable
      ALTEX7PEN      : ROUTEPEN_ALTEX7PEN_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ROUTEPEN_Register use record
      CH0PEN         at 0 range 0 .. 0;
      CH1PEN         at 0 range 1 .. 1;
      CH2PEN         at 0 range 2 .. 2;
      CH3PEN         at 0 range 3 .. 3;
      CH4PEN         at 0 range 4 .. 4;
      CH5PEN         at 0 range 5 .. 5;
      CH6PEN         at 0 range 6 .. 6;
      CH7PEN         at 0 range 7 .. 7;
      CH8PEN         at 0 range 8 .. 8;
      CH9PEN         at 0 range 9 .. 9;
      CH10PEN        at 0 range 10 .. 10;
      CH11PEN        at 0 range 11 .. 11;
      CH12PEN        at 0 range 12 .. 12;
      CH13PEN        at 0 range 13 .. 13;
      CH14PEN        at 0 range 14 .. 14;
      CH15PEN        at 0 range 15 .. 15;
      ALTEX0PEN      at 0 range 16 .. 16;
      ALTEX1PEN      at 0 range 17 .. 17;
      ALTEX2PEN      at 0 range 18 .. 18;
      ALTEX3PEN      at 0 range 19 .. 19;
      ALTEX4PEN      at 0 range 20 .. 20;
      ALTEX5PEN      at 0 range 21 .. 21;
      ALTEX6PEN      at 0 range 22 .. 22;
      ALTEX7PEN      at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype ST0_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST0_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST0_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST0_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST0_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST0_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST0_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST0_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST0_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST0_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST0_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST0_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST0_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST0_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST0_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST0_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST0_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST0_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST0_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST0_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST0_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST0_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST0_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST0_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST0_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST0_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST1_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST1_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST1_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST1_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST1_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST1_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST1_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST1_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST1_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST1_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST1_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST1_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST1_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST1_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST1_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST1_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST1_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST1_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST1_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST1_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST1_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST1_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST1_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST1_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST1_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST1_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST2_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST2_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST2_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST2_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST2_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST2_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST2_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST2_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST2_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST2_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST2_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST2_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST2_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST2_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST2_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST2_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST2_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST2_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST2_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST2_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST2_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST2_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST2_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST2_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST2_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST2_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST3_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST3_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST3_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST3_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST3_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST3_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST3_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST3_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST3_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST3_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST3_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST3_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST3_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST3_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST3_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST3_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST3_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST3_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST3_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST3_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST3_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST3_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST3_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST3_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST3_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST3_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST4_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST4_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST4_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST4_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST4_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST4_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST4_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST4_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST4_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST4_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST4_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST4_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST4_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST4_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST4_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST4_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST4_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST4_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST4_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST4_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST4_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST4_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST4_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST4_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST4_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST4_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST5_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST5_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST5_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST5_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST5_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST5_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST5_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST5_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST5_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST5_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST5_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST5_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST5_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST5_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST5_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST5_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST5_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST5_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST5_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST5_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST5_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST5_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST5_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST5_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST5_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST5_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST6_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST6_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST6_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST6_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST6_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST6_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST6_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST6_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST6_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST6_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST6_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST6_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST6_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST6_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST6_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST6_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST6_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST6_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST6_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST6_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST6_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST6_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST6_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST6_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST6_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST6_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST7_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST7_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST7_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST7_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST7_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST7_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST7_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST7_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST7_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST7_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST7_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST7_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST7_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST7_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST7_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST7_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST7_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST7_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST7_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST7_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST7_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST7_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST7_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST7_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST7_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST7_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST8_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST8_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST8_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST8_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST8_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST8_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST8_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST8_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST8_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST8_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST8_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST8_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST8_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST8_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST8_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST8_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST8_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST8_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST8_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST8_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST8_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST8_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST8_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST8_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST8_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST8_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST9_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST9_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST9_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST9_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST9_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST9_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST9_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST9_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST9_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST9_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST9_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST9_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST9_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST9_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST9_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST9_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST9_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST9_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST9_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST9_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST9_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST9_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST9_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST9_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST9_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST9_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST10_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST10_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST10_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST10_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST10_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST10_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST10_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST10_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST10_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST10_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST10_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST10_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST10_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST10_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST10_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST10_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST10_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST10_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST10_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST10_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST10_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST10_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST10_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST10_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST10_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST10_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST11_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST11_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST11_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST11_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST11_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST11_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST11_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST11_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST11_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST11_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST11_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST11_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST11_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST11_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST11_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST11_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST11_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST11_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST11_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST11_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST11_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST11_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST11_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST11_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST11_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST11_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST12_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST12_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST12_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST12_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST12_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST12_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST12_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST12_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST12_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST12_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST12_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST12_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST12_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST12_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST12_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST12_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST12_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST12_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST12_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST12_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST12_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST12_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST12_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST12_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST12_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST12_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST13_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST13_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST13_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST13_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST13_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST13_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST13_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST13_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST13_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST13_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST13_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST13_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST13_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST13_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST13_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST13_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST13_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST13_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST13_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST13_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST13_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST13_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST13_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST13_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST13_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST13_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST14_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST14_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST14_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST14_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST14_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST14_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST14_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST14_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST14_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST14_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST14_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST14_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST14_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST14_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST14_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST14_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST14_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST14_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST14_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST14_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST14_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST14_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST14_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST14_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST14_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST14_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST15_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST15_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST15_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST15_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST15_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST15_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST15_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST15_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST15_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST15_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST15_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST15_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST15_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST15_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST15_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST15_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST15_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST15_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST15_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST15_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST15_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST15_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST15_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST15_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST15_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST15_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST16_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST16_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST16_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST16_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST16_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST16_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST16_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST16_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST16_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST16_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST16_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST16_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST16_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST16_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST16_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST16_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST16_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST16_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST16_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST16_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST16_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST16_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST16_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST16_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST16_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST16_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST17_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST17_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST17_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST17_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST17_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST17_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST17_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST17_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST17_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST17_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST17_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST17_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST17_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST17_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST17_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST17_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST17_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST17_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST17_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST17_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST17_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST17_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST17_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST17_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST17_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST17_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST18_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST18_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST18_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST18_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST18_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST18_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST18_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST18_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST18_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST18_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST18_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST18_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST18_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST18_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST18_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST18_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST18_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST18_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST18_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST18_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST18_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST18_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST18_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST18_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST18_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST18_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST19_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST19_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST19_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST19_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST19_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST19_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST19_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST19_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST19_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST19_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST19_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST19_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST19_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST19_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST19_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST19_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST19_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST19_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST19_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST19_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST19_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST19_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST19_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST19_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST19_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST19_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST20_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST20_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST20_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST20_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST20_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST20_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST20_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST20_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST20_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST20_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST20_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST20_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST20_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST20_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST20_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST20_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST20_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST20_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST20_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST20_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST20_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST20_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST20_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST20_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST20_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST20_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST21_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST21_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST21_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST21_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST21_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST21_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST21_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST21_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST21_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST21_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST21_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST21_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST21_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST21_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST21_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST21_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST21_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST21_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST21_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST21_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST21_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST21_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST21_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST21_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST21_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST21_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST22_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST22_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST22_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST22_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST22_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST22_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST22_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST22_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST22_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST22_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST22_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST22_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST22_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST22_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST22_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST22_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST22_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST22_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST22_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST22_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST22_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST22_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST22_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST22_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST22_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST22_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST23_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST23_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST23_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST23_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST23_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST23_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST23_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST23_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST23_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST23_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST23_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST23_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST23_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST23_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST23_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST23_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST23_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST23_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST23_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST23_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST23_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST23_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST23_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST23_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST23_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST23_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST24_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST24_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST24_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST24_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST24_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST24_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST24_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST24_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST24_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST24_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST24_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST24_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST24_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST24_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST24_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST24_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST24_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST24_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST24_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST24_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST24_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST24_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST24_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST24_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST24_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST24_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST25_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST25_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST25_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST25_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST25_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST25_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST25_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST25_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST25_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST25_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST25_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST25_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST25_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST25_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST25_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST25_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST25_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST25_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST25_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST25_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST25_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST25_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST25_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST25_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST25_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST25_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST26_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST26_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST26_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST26_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST26_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST26_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST26_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST26_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST26_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST26_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST26_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST26_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST26_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST26_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST26_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST26_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST26_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST26_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST26_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST26_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST26_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST26_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST26_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST26_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST26_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST26_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST27_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST27_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST27_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST27_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST27_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST27_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST27_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST27_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST27_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST27_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST27_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST27_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST27_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST27_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST27_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST27_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST27_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST27_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST27_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST27_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST27_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST27_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST27_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST27_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST27_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST27_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST28_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST28_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST28_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST28_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST28_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST28_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST28_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST28_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST28_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST28_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST28_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST28_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST28_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST28_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST28_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST28_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST28_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST28_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST28_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST28_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST28_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST28_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST28_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST28_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST28_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST28_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST29_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST29_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST29_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST29_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST29_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST29_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST29_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST29_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST29_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST29_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST29_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST29_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST29_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST29_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST29_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST29_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST29_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST29_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST29_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST29_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST29_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST29_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST29_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST29_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST29_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST29_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST30_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST30_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST30_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST30_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST30_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST30_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST30_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST30_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST30_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST30_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST30_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST30_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST30_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST30_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST30_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST30_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST30_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST30_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST30_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST30_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST30_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST30_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST30_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST30_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST30_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST30_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST31_TCONFA_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST31_TCONFA_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST31_TCONFA_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST31_TCONFA_CHAIN_Field is Interfaces.EFM32.Bit;
   subtype ST31_TCONFA_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST31_TCONFA_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration a
   type ST31_TCONFA_Register is record
      --  Sensor Compare Value
      COMP           : ST31_TCONFA_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST31_TCONFA_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST31_TCONFA_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_13 : Interfaces.EFM32.Bit := 16#0#;
      --  Enable State Descriptor Chaining
      CHAIN          : ST31_TCONFA_CHAIN_Field := 16#0#;
      --  Set Interrupt Flag Enable
      SETIF          : ST31_TCONFA_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST31_TCONFA_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST31_TCONFA_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_13 at 0 range 13 .. 13;
      CHAIN          at 0 range 14 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype ST31_TCONFB_COMP_Field is Interfaces.EFM32.UInt4;
   subtype ST31_TCONFB_MASK_Field is Interfaces.EFM32.UInt4;
   subtype ST31_TCONFB_NEXTSTATE_Field is Interfaces.EFM32.UInt5;
   subtype ST31_TCONFB_SETIF_Field is Interfaces.EFM32.Bit;
   subtype ST31_TCONFB_PRSACT_Field is Interfaces.EFM32.UInt3;

   --  State Transition Configuration B
   type ST31_TCONFB_Register is record
      --  Sensor Compare Value
      COMP           : ST31_TCONFB_COMP_Field := 16#0#;
      --  Sensor Mask
      MASK           : ST31_TCONFB_MASK_Field := 16#0#;
      --  Next State Index
      NEXTSTATE      : ST31_TCONFB_NEXTSTATE_Field := 16#0#;
      --  unspecified
      Reserved_13_14 : Interfaces.EFM32.UInt2 := 16#0#;
      --  Set Interrupt Flag
      SETIF          : ST31_TCONFB_SETIF_Field := 16#0#;
      --  Configure Transition Action
      PRSACT         : ST31_TCONFB_PRSACT_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : Interfaces.EFM32.UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for ST31_TCONFB_Register use record
      COMP           at 0 range 0 .. 3;
      MASK           at 0 range 4 .. 7;
      NEXTSTATE      at 0 range 8 .. 12;
      Reserved_13_14 at 0 range 13 .. 14;
      SETIF          at 0 range 15 .. 15;
      PRSACT         at 0 range 16 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype BUF0_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF0_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF0_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF0_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF0_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF0_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BUF1_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF1_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF1_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF1_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF1_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF1_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BUF2_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF2_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF2_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF2_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF2_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF2_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BUF3_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF3_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF3_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF3_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF3_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF3_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BUF4_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF4_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF4_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF4_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF4_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF4_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BUF5_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF5_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF5_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF5_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF5_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF5_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BUF6_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF6_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF6_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF6_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF6_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF6_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BUF7_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF7_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF7_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF7_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF7_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF7_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BUF8_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF8_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF8_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF8_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF8_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF8_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BUF9_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF9_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF9_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF9_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF9_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF9_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BUF10_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF10_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF10_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF10_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF10_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF10_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BUF11_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF11_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF11_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF11_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF11_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF11_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BUF12_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF12_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF12_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF12_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF12_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF12_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BUF13_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF13_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF13_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF13_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF13_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF13_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BUF14_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF14_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF14_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF14_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF14_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF14_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype BUF15_DATA_DATA_Field is Interfaces.EFM32.UInt16;
   subtype BUF15_DATA_DATASRC_Field is Interfaces.EFM32.UInt4;

   --  Scan Results
   type BUF15_DATA_Register is record
      --  Scan Result Buffer
      DATA           : BUF15_DATA_DATA_Field := 16#0#;
      --  Read-only. Result Data Source
      DATASRC        : BUF15_DATA_DATASRC_Field := 16#0#;
      --  unspecified
      Reserved_20_31 : Interfaces.EFM32.UInt12 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for BUF15_DATA_Register use record
      DATA           at 0 range 0 .. 15;
      DATASRC        at 0 range 16 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype CH0_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH0_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH0_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH0_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH0_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH0_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH0_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH0_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH0_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH0_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH0_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH0_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH0_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH0_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH0_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH0_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH0_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH0_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH0_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH0_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH0_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH0_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH0_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH0_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH0_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH0_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH0_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH0_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH0_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH0_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH0_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH0_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH0_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH0_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH0_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH0_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH0_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH0_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH0_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH0_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH0_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CH1_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH1_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH1_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH1_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH1_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH1_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH1_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH1_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH1_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH1_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH1_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH1_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH1_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH1_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH1_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH1_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH1_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH1_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH1_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH1_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH1_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH1_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH1_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH1_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH1_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH1_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH1_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH1_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH1_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH1_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH1_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH1_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH1_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH1_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH1_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH1_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH1_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH1_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH1_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH1_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH1_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CH2_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH2_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH2_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH2_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH2_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH2_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH2_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH2_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH2_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH2_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH2_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH2_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH2_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH2_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH2_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH2_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH2_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH2_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH2_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH2_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH2_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH2_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH2_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH2_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH2_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH2_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH2_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH2_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH2_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH2_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH2_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH2_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH2_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH2_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH2_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH2_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH2_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH2_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH2_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH2_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH2_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CH3_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH3_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH3_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH3_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH3_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH3_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH3_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH3_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH3_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH3_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH3_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH3_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH3_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH3_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH3_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH3_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH3_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH3_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH3_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH3_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH3_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH3_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH3_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH3_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH3_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH3_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH3_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH3_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH3_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH3_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH3_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH3_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH3_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH3_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH3_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH3_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH3_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH3_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH3_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH3_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH3_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CH4_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH4_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH4_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH4_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH4_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH4_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH4_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH4_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH4_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH4_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH4_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH4_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH4_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH4_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH4_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH4_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH4_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH4_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH4_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH4_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH4_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH4_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH4_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH4_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH4_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH4_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH4_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH4_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH4_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH4_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH4_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH4_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH4_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH4_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH4_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH4_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH4_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH4_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH4_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH4_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH4_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH4_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH4_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CH5_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH5_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH5_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH5_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH5_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH5_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH5_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH5_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH5_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH5_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH5_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH5_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH5_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH5_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH5_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH5_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH5_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH5_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH5_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH5_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH5_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH5_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH5_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH5_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH5_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH5_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH5_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH5_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH5_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH5_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH5_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH5_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH5_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH5_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH5_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH5_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH5_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH5_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH5_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH5_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH5_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH5_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH5_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CH6_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH6_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH6_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH6_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH6_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH6_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH6_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH6_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH6_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH6_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH6_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH6_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH6_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH6_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH6_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH6_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH6_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH6_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH6_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH6_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH6_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH6_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH6_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH6_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH6_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH6_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH6_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH6_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH6_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH6_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH6_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH6_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH6_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH6_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH6_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH6_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH6_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH6_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH6_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH6_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH6_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH6_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH6_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CH7_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH7_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH7_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH7_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH7_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH7_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH7_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH7_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH7_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH7_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH7_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH7_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH7_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH7_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH7_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH7_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH7_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH7_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH7_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH7_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH7_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH7_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH7_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH7_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH7_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH7_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH7_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH7_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH7_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH7_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH7_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH7_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH7_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH7_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH7_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH7_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH7_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH7_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH7_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH7_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH7_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH7_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH7_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CH8_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH8_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH8_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH8_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH8_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH8_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH8_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH8_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH8_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH8_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH8_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH8_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH8_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH8_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH8_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH8_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH8_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH8_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH8_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH8_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH8_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH8_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH8_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH8_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH8_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH8_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH8_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH8_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH8_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH8_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH8_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH8_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH8_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH8_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH8_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH8_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH8_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH8_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH8_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH8_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH8_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH8_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH8_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CH9_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH9_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH9_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH9_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH9_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH9_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH9_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH9_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH9_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH9_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH9_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH9_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH9_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH9_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH9_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH9_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH9_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH9_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH9_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH9_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH9_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH9_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH9_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH9_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH9_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH9_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH9_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH9_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH9_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH9_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH9_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH9_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH9_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH9_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH9_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH9_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH9_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH9_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH9_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH9_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH9_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH9_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH9_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CH10_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH10_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH10_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH10_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH10_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH10_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH10_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH10_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH10_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH10_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH10_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH10_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH10_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH10_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH10_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH10_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH10_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH10_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH10_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH10_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH10_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH10_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH10_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH10_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH10_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH10_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH10_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH10_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH10_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH10_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH10_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH10_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH10_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH10_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH10_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH10_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH10_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH10_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH10_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH10_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH10_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH10_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH10_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CH11_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH11_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH11_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH11_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH11_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH11_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH11_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH11_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH11_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH11_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH11_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH11_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH11_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH11_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH11_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH11_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH11_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH11_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH11_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH11_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH11_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH11_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH11_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH11_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH11_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH11_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH11_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH11_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH11_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH11_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH11_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH11_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH11_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH11_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH11_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH11_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH11_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH11_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH11_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH11_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH11_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH11_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH11_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CH12_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH12_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH12_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH12_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH12_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH12_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH12_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH12_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH12_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH12_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH12_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH12_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH12_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH12_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH12_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH12_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH12_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH12_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH12_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH12_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH12_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH12_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH12_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH12_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH12_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH12_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH12_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH12_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH12_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH12_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH12_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH12_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH12_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH12_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH12_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH12_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH12_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH12_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH12_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH12_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH12_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH12_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH12_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CH13_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH13_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH13_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH13_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH13_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH13_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH13_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH13_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH13_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH13_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH13_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH13_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH13_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH13_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH13_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH13_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH13_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH13_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH13_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH13_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH13_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH13_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH13_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH13_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH13_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH13_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH13_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH13_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH13_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH13_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH13_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH13_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH13_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH13_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH13_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH13_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH13_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH13_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH13_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH13_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH13_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH13_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH13_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CH14_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH14_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH14_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH14_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH14_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH14_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH14_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH14_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH14_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH14_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH14_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH14_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH14_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH14_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH14_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH14_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH14_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH14_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH14_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH14_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH14_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH14_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH14_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH14_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH14_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH14_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH14_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH14_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH14_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH14_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH14_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH14_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH14_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH14_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH14_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH14_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH14_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH14_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH14_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH14_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH14_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH14_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH14_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   subtype CH15_TIMING_EXTIME_Field is Interfaces.EFM32.UInt6;
   subtype CH15_TIMING_SAMPLEDLY_Field is Interfaces.EFM32.Byte;
   subtype CH15_TIMING_MEASUREDLY_Field is Interfaces.EFM32.UInt10;

   --  Scan Configuration
   type CH15_TIMING_Register is record
      --  Set Excitation Time
      EXTIME         : CH15_TIMING_EXTIME_Field := 16#0#;
      --  Set Sample Delay
      SAMPLEDLY      : CH15_TIMING_SAMPLEDLY_Field := 16#0#;
      --  Set Measure Delay
      MEASUREDLY     : CH15_TIMING_MEASUREDLY_Field := 16#0#;
      --  unspecified
      Reserved_24_31 : Interfaces.EFM32.Byte := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH15_TIMING_Register use record
      EXTIME         at 0 range 0 .. 5;
      SAMPLEDLY      at 0 range 6 .. 13;
      MEASUREDLY     at 0 range 14 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype CH15_INTERACT_THRES_Field is Interfaces.EFM32.UInt12;

   --  Select Sample Mode
   type CH15_INTERACT_SAMPLE_Field is
     (--  Counter output will be used in evaluation
      ACMPCOUNT,
      --  ACMP output will be used in evaluation
      ACMP,
      --  ADC output will be used in evaluation
      ADC,
      --  Differential ADC output will be used in evaluation
      ADCDIFF)
     with Size => 2;
   for CH15_INTERACT_SAMPLE_Field use
     (ACMPCOUNT => 0,
      ACMP => 1,
      ADC => 2,
      ADCDIFF => 3);

   --  Enable Interrupt Generation
   type CH15_INTERACT_SETIF_Field is
     (--  No interrupt is generated
      NONE,
      --  Set interrupt flag if the sensor triggers.
      LEVEL,
      --  Set interrupt flag on positive edge of the sensor state
      POSEDGE,
      --  Set interrupt flag on negative edge of the sensor state
      NEGEDGE,
      --  Set interrupt flag on both edges of the sensor state
      BOTHEDGES)
     with Size => 3;
   for CH15_INTERACT_SETIF_Field use
     (NONE => 0,
      LEVEL => 1,
      POSEDGE => 2,
      NEGEDGE => 3,
      BOTHEDGES => 4);

   --  Set GPIO Mode
   type CH15_INTERACT_EXMODE_Field is
     (--  Disabled
      DISABLE,
      --  Push Pull, GPIO is driven high
      HIGH,
      --  Push Pull, GPIO is driven low
      LOW,
      --  VDAC output
      DACOUT)
     with Size => 2;
   for CH15_INTERACT_EXMODE_Field use
     (DISABLE => 0,
      HIGH => 1,
      LOW => 2,
      DACOUT => 3);

   subtype CH15_INTERACT_EXCLK_Field is Interfaces.EFM32.Bit;
   subtype CH15_INTERACT_SAMPLECLK_Field is Interfaces.EFM32.Bit;
   subtype CH15_INTERACT_ALTEX_Field is Interfaces.EFM32.Bit;

   --  Scan Configuration
   type CH15_INTERACT_Register is record
      --  ACMP Threshold or VDAC Data
      THRES          : CH15_INTERACT_THRES_Field := 16#0#;
      --  Select Sample Mode
      SAMPLE         : CH15_INTERACT_SAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.ACMPCOUNT;
      --  Enable Interrupt Generation
      SETIF          : CH15_INTERACT_SETIF_Field :=
                        Interfaces.EFM32.LESENSE.NONE;
      --  Set GPIO Mode
      EXMODE         : CH15_INTERACT_EXMODE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Select Clock Used for Excitation Timing
      EXCLK          : CH15_INTERACT_EXCLK_Field := 16#0#;
      --  Select Clock Used for Timing of Sample Delay
      SAMPLECLK      : CH15_INTERACT_SAMPLECLK_Field := 16#0#;
      --  Use Alternative Excite Pin
      ALTEX          : CH15_INTERACT_ALTEX_Field := 16#0#;
      --  unspecified
      Reserved_22_31 : Interfaces.EFM32.UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH15_INTERACT_Register use record
      THRES          at 0 range 0 .. 11;
      SAMPLE         at 0 range 12 .. 13;
      SETIF          at 0 range 14 .. 16;
      EXMODE         at 0 range 17 .. 18;
      EXCLK          at 0 range 19 .. 19;
      SAMPLECLK      at 0 range 20 .. 20;
      ALTEX          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype CH15_EVAL_COMPTHRES_Field is Interfaces.EFM32.UInt16;
   subtype CH15_EVAL_COMP_Field is Interfaces.EFM32.Bit;
   subtype CH15_EVAL_DECODE_Field is Interfaces.EFM32.Bit;

   --  Enable Storing of Sensor Sample in Result Buffer
   type CH15_EVAL_STRSAMPLE_Field is
     (--  Nothing will be stored in the result buffer.
      DISABLE,
      --  The sensor sample data will be stored in the result buffer.
      DATA,
      --  The data source (i.e., the channel) will be stored alongside the sensor
--  sample data.
      DATASRC)
     with Size => 2;
   for CH15_EVAL_STRSAMPLE_Field use
     (DISABLE => 0,
      DATA => 1,
      DATASRC => 2);

   subtype CH15_EVAL_SCANRESINV_Field is Interfaces.EFM32.Bit;

   --  Configure Evaluation Mode
   type CH15_EVAL_MODE_Field is
     (--  Threshold comparison is used to evaluate sensor result
      THRES,
      --  Sliding window is used to evaluate sensor result
      SLIDINGWIN,
      --  Step detection is used to evaluate sensor result
      STEPDET)
     with Size => 2;
   for CH15_EVAL_MODE_Field use
     (THRES => 0,
      SLIDINGWIN => 1,
      STEPDET => 2);

   --  Scan Configuration
   type CH15_EVAL_Register is record
      --  Decision Threshold for Sensor Data
      COMPTHRES      : CH15_EVAL_COMPTHRES_Field := 16#0#;
      --  Select Mode for Threshold Comparison
      COMP           : CH15_EVAL_COMP_Field := 16#0#;
      --  Send Result to Decoder
      DECODE         : CH15_EVAL_DECODE_Field := 16#0#;
      --  Enable Storing of Sensor Sample in Result Buffer
      STRSAMPLE      : CH15_EVAL_STRSAMPLE_Field :=
                        Interfaces.EFM32.LESENSE.DISABLE;
      --  Enable Inversion of Result
      SCANRESINV     : CH15_EVAL_SCANRESINV_Field := 16#0#;
      --  Configure Evaluation Mode
      MODE           : CH15_EVAL_MODE_Field := Interfaces.EFM32.LESENSE.THRES;
      --  unspecified
      Reserved_23_31 : Interfaces.EFM32.UInt9 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for CH15_EVAL_Register use record
      COMPTHRES      at 0 range 0 .. 15;
      COMP           at 0 range 16 .. 16;
      DECODE         at 0 range 17 .. 17;
      STRSAMPLE      at 0 range 18 .. 19;
      SCANRESINV     at 0 range 20 .. 20;
      MODE           at 0 range 21 .. 22;
      Reserved_23_31 at 0 range 23 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  LESENSE
   type LESENSE_Peripheral is record
      --  Control Register
      CTRL          : aliased CTRL_Register;
      --  Timing Control Register
      TIMCTRL       : aliased TIMCTRL_Register;
      --  Peripheral Control Register
      PERCTRL       : aliased PERCTRL_Register;
      --  Decoder Control Register
      DECCTRL       : aliased DECCTRL_Register;
      --  Bias Control Register
      BIASCTRL      : aliased BIASCTRL_Register;
      --  LESENSE Evaluation Control
      EVALCTRL      : aliased EVALCTRL_Register;
      --  PRS Control Register
      PRSCTRL       : aliased PRSCTRL_Register;
      --  Command Register
      CMD           : aliased CMD_Register;
      --  Channel Enable Register
      CHEN          : aliased CHEN_Register;
      --  Scan Result Register
      SCANRES       : aliased SCANRES_Register;
      --  Status Register
      STATUS        : aliased STATUS_Register;
      --  Result Buffer Pointers
      PTR           : aliased PTR_Register;
      --  Result Buffer Data Register
      BUFDATA       : aliased BUFDATA_Register;
      --  Current Channel Index
      CURCH         : aliased CURCH_Register;
      --  Current Decoder State
      DECSTATE      : aliased DECSTATE_Register;
      --  Decoder Input Register
      SENSORSTATE   : aliased SENSORSTATE_Register;
      --  GPIO Idle Phase Configuration
      IDLECONF      : aliased IDLECONF_Register;
      --  Alternative Excite Pin Configuration
      ALTEXCONF     : aliased ALTEXCONF_Register;
      --  Interrupt Flag Register
      IF_k          : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS           : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC           : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN           : aliased IEN_Register;
      --  Synchronization Busy Register
      SYNCBUSY      : aliased SYNCBUSY_Register;
      --  I/O Routing Register
      ROUTEPEN      : aliased ROUTEPEN_Register;
      --  State Transition Configuration a
      ST0_TCONFA    : aliased ST0_TCONFA_Register;
      --  State Transition Configuration B
      ST0_TCONFB    : aliased ST0_TCONFB_Register;
      --  State Transition Configuration a
      ST1_TCONFA    : aliased ST1_TCONFA_Register;
      --  State Transition Configuration B
      ST1_TCONFB    : aliased ST1_TCONFB_Register;
      --  State Transition Configuration a
      ST2_TCONFA    : aliased ST2_TCONFA_Register;
      --  State Transition Configuration B
      ST2_TCONFB    : aliased ST2_TCONFB_Register;
      --  State Transition Configuration a
      ST3_TCONFA    : aliased ST3_TCONFA_Register;
      --  State Transition Configuration B
      ST3_TCONFB    : aliased ST3_TCONFB_Register;
      --  State Transition Configuration a
      ST4_TCONFA    : aliased ST4_TCONFA_Register;
      --  State Transition Configuration B
      ST4_TCONFB    : aliased ST4_TCONFB_Register;
      --  State Transition Configuration a
      ST5_TCONFA    : aliased ST5_TCONFA_Register;
      --  State Transition Configuration B
      ST5_TCONFB    : aliased ST5_TCONFB_Register;
      --  State Transition Configuration a
      ST6_TCONFA    : aliased ST6_TCONFA_Register;
      --  State Transition Configuration B
      ST6_TCONFB    : aliased ST6_TCONFB_Register;
      --  State Transition Configuration a
      ST7_TCONFA    : aliased ST7_TCONFA_Register;
      --  State Transition Configuration B
      ST7_TCONFB    : aliased ST7_TCONFB_Register;
      --  State Transition Configuration a
      ST8_TCONFA    : aliased ST8_TCONFA_Register;
      --  State Transition Configuration B
      ST8_TCONFB    : aliased ST8_TCONFB_Register;
      --  State Transition Configuration a
      ST9_TCONFA    : aliased ST9_TCONFA_Register;
      --  State Transition Configuration B
      ST9_TCONFB    : aliased ST9_TCONFB_Register;
      --  State Transition Configuration a
      ST10_TCONFA   : aliased ST10_TCONFA_Register;
      --  State Transition Configuration B
      ST10_TCONFB   : aliased ST10_TCONFB_Register;
      --  State Transition Configuration a
      ST11_TCONFA   : aliased ST11_TCONFA_Register;
      --  State Transition Configuration B
      ST11_TCONFB   : aliased ST11_TCONFB_Register;
      --  State Transition Configuration a
      ST12_TCONFA   : aliased ST12_TCONFA_Register;
      --  State Transition Configuration B
      ST12_TCONFB   : aliased ST12_TCONFB_Register;
      --  State Transition Configuration a
      ST13_TCONFA   : aliased ST13_TCONFA_Register;
      --  State Transition Configuration B
      ST13_TCONFB   : aliased ST13_TCONFB_Register;
      --  State Transition Configuration a
      ST14_TCONFA   : aliased ST14_TCONFA_Register;
      --  State Transition Configuration B
      ST14_TCONFB   : aliased ST14_TCONFB_Register;
      --  State Transition Configuration a
      ST15_TCONFA   : aliased ST15_TCONFA_Register;
      --  State Transition Configuration B
      ST15_TCONFB   : aliased ST15_TCONFB_Register;
      --  State Transition Configuration a
      ST16_TCONFA   : aliased ST16_TCONFA_Register;
      --  State Transition Configuration B
      ST16_TCONFB   : aliased ST16_TCONFB_Register;
      --  State Transition Configuration a
      ST17_TCONFA   : aliased ST17_TCONFA_Register;
      --  State Transition Configuration B
      ST17_TCONFB   : aliased ST17_TCONFB_Register;
      --  State Transition Configuration a
      ST18_TCONFA   : aliased ST18_TCONFA_Register;
      --  State Transition Configuration B
      ST18_TCONFB   : aliased ST18_TCONFB_Register;
      --  State Transition Configuration a
      ST19_TCONFA   : aliased ST19_TCONFA_Register;
      --  State Transition Configuration B
      ST19_TCONFB   : aliased ST19_TCONFB_Register;
      --  State Transition Configuration a
      ST20_TCONFA   : aliased ST20_TCONFA_Register;
      --  State Transition Configuration B
      ST20_TCONFB   : aliased ST20_TCONFB_Register;
      --  State Transition Configuration a
      ST21_TCONFA   : aliased ST21_TCONFA_Register;
      --  State Transition Configuration B
      ST21_TCONFB   : aliased ST21_TCONFB_Register;
      --  State Transition Configuration a
      ST22_TCONFA   : aliased ST22_TCONFA_Register;
      --  State Transition Configuration B
      ST22_TCONFB   : aliased ST22_TCONFB_Register;
      --  State Transition Configuration a
      ST23_TCONFA   : aliased ST23_TCONFA_Register;
      --  State Transition Configuration B
      ST23_TCONFB   : aliased ST23_TCONFB_Register;
      --  State Transition Configuration a
      ST24_TCONFA   : aliased ST24_TCONFA_Register;
      --  State Transition Configuration B
      ST24_TCONFB   : aliased ST24_TCONFB_Register;
      --  State Transition Configuration a
      ST25_TCONFA   : aliased ST25_TCONFA_Register;
      --  State Transition Configuration B
      ST25_TCONFB   : aliased ST25_TCONFB_Register;
      --  State Transition Configuration a
      ST26_TCONFA   : aliased ST26_TCONFA_Register;
      --  State Transition Configuration B
      ST26_TCONFB   : aliased ST26_TCONFB_Register;
      --  State Transition Configuration a
      ST27_TCONFA   : aliased ST27_TCONFA_Register;
      --  State Transition Configuration B
      ST27_TCONFB   : aliased ST27_TCONFB_Register;
      --  State Transition Configuration a
      ST28_TCONFA   : aliased ST28_TCONFA_Register;
      --  State Transition Configuration B
      ST28_TCONFB   : aliased ST28_TCONFB_Register;
      --  State Transition Configuration a
      ST29_TCONFA   : aliased ST29_TCONFA_Register;
      --  State Transition Configuration B
      ST29_TCONFB   : aliased ST29_TCONFB_Register;
      --  State Transition Configuration a
      ST30_TCONFA   : aliased ST30_TCONFA_Register;
      --  State Transition Configuration B
      ST30_TCONFB   : aliased ST30_TCONFB_Register;
      --  State Transition Configuration a
      ST31_TCONFA   : aliased ST31_TCONFA_Register;
      --  State Transition Configuration B
      ST31_TCONFB   : aliased ST31_TCONFB_Register;
      --  Scan Results
      BUF0_DATA     : aliased BUF0_DATA_Register;
      --  Scan Results
      BUF1_DATA     : aliased BUF1_DATA_Register;
      --  Scan Results
      BUF2_DATA     : aliased BUF2_DATA_Register;
      --  Scan Results
      BUF3_DATA     : aliased BUF3_DATA_Register;
      --  Scan Results
      BUF4_DATA     : aliased BUF4_DATA_Register;
      --  Scan Results
      BUF5_DATA     : aliased BUF5_DATA_Register;
      --  Scan Results
      BUF6_DATA     : aliased BUF6_DATA_Register;
      --  Scan Results
      BUF7_DATA     : aliased BUF7_DATA_Register;
      --  Scan Results
      BUF8_DATA     : aliased BUF8_DATA_Register;
      --  Scan Results
      BUF9_DATA     : aliased BUF9_DATA_Register;
      --  Scan Results
      BUF10_DATA    : aliased BUF10_DATA_Register;
      --  Scan Results
      BUF11_DATA    : aliased BUF11_DATA_Register;
      --  Scan Results
      BUF12_DATA    : aliased BUF12_DATA_Register;
      --  Scan Results
      BUF13_DATA    : aliased BUF13_DATA_Register;
      --  Scan Results
      BUF14_DATA    : aliased BUF14_DATA_Register;
      --  Scan Results
      BUF15_DATA    : aliased BUF15_DATA_Register;
      --  Scan Configuration
      CH0_TIMING    : aliased CH0_TIMING_Register;
      --  Scan Configuration
      CH0_INTERACT  : aliased CH0_INTERACT_Register;
      --  Scan Configuration
      CH0_EVAL      : aliased CH0_EVAL_Register;
      --  Scan Configuration
      CH1_TIMING    : aliased CH1_TIMING_Register;
      --  Scan Configuration
      CH1_INTERACT  : aliased CH1_INTERACT_Register;
      --  Scan Configuration
      CH1_EVAL      : aliased CH1_EVAL_Register;
      --  Scan Configuration
      CH2_TIMING    : aliased CH2_TIMING_Register;
      --  Scan Configuration
      CH2_INTERACT  : aliased CH2_INTERACT_Register;
      --  Scan Configuration
      CH2_EVAL      : aliased CH2_EVAL_Register;
      --  Scan Configuration
      CH3_TIMING    : aliased CH3_TIMING_Register;
      --  Scan Configuration
      CH3_INTERACT  : aliased CH3_INTERACT_Register;
      --  Scan Configuration
      CH3_EVAL      : aliased CH3_EVAL_Register;
      --  Scan Configuration
      CH4_TIMING    : aliased CH4_TIMING_Register;
      --  Scan Configuration
      CH4_INTERACT  : aliased CH4_INTERACT_Register;
      --  Scan Configuration
      CH4_EVAL      : aliased CH4_EVAL_Register;
      --  Scan Configuration
      CH5_TIMING    : aliased CH5_TIMING_Register;
      --  Scan Configuration
      CH5_INTERACT  : aliased CH5_INTERACT_Register;
      --  Scan Configuration
      CH5_EVAL      : aliased CH5_EVAL_Register;
      --  Scan Configuration
      CH6_TIMING    : aliased CH6_TIMING_Register;
      --  Scan Configuration
      CH6_INTERACT  : aliased CH6_INTERACT_Register;
      --  Scan Configuration
      CH6_EVAL      : aliased CH6_EVAL_Register;
      --  Scan Configuration
      CH7_TIMING    : aliased CH7_TIMING_Register;
      --  Scan Configuration
      CH7_INTERACT  : aliased CH7_INTERACT_Register;
      --  Scan Configuration
      CH7_EVAL      : aliased CH7_EVAL_Register;
      --  Scan Configuration
      CH8_TIMING    : aliased CH8_TIMING_Register;
      --  Scan Configuration
      CH8_INTERACT  : aliased CH8_INTERACT_Register;
      --  Scan Configuration
      CH8_EVAL      : aliased CH8_EVAL_Register;
      --  Scan Configuration
      CH9_TIMING    : aliased CH9_TIMING_Register;
      --  Scan Configuration
      CH9_INTERACT  : aliased CH9_INTERACT_Register;
      --  Scan Configuration
      CH9_EVAL      : aliased CH9_EVAL_Register;
      --  Scan Configuration
      CH10_TIMING   : aliased CH10_TIMING_Register;
      --  Scan Configuration
      CH10_INTERACT : aliased CH10_INTERACT_Register;
      --  Scan Configuration
      CH10_EVAL     : aliased CH10_EVAL_Register;
      --  Scan Configuration
      CH11_TIMING   : aliased CH11_TIMING_Register;
      --  Scan Configuration
      CH11_INTERACT : aliased CH11_INTERACT_Register;
      --  Scan Configuration
      CH11_EVAL     : aliased CH11_EVAL_Register;
      --  Scan Configuration
      CH12_TIMING   : aliased CH12_TIMING_Register;
      --  Scan Configuration
      CH12_INTERACT : aliased CH12_INTERACT_Register;
      --  Scan Configuration
      CH12_EVAL     : aliased CH12_EVAL_Register;
      --  Scan Configuration
      CH13_TIMING   : aliased CH13_TIMING_Register;
      --  Scan Configuration
      CH13_INTERACT : aliased CH13_INTERACT_Register;
      --  Scan Configuration
      CH13_EVAL     : aliased CH13_EVAL_Register;
      --  Scan Configuration
      CH14_TIMING   : aliased CH14_TIMING_Register;
      --  Scan Configuration
      CH14_INTERACT : aliased CH14_INTERACT_Register;
      --  Scan Configuration
      CH14_EVAL     : aliased CH14_EVAL_Register;
      --  Scan Configuration
      CH15_TIMING   : aliased CH15_TIMING_Register;
      --  Scan Configuration
      CH15_INTERACT : aliased CH15_INTERACT_Register;
      --  Scan Configuration
      CH15_EVAL     : aliased CH15_EVAL_Register;
   end record
     with Volatile;

   for LESENSE_Peripheral use record
      CTRL          at 16#0# range 0 .. 31;
      TIMCTRL       at 16#4# range 0 .. 31;
      PERCTRL       at 16#8# range 0 .. 31;
      DECCTRL       at 16#C# range 0 .. 31;
      BIASCTRL      at 16#10# range 0 .. 31;
      EVALCTRL      at 16#14# range 0 .. 31;
      PRSCTRL       at 16#18# range 0 .. 31;
      CMD           at 16#1C# range 0 .. 31;
      CHEN          at 16#20# range 0 .. 31;
      SCANRES       at 16#24# range 0 .. 31;
      STATUS        at 16#28# range 0 .. 31;
      PTR           at 16#2C# range 0 .. 31;
      BUFDATA       at 16#30# range 0 .. 31;
      CURCH         at 16#34# range 0 .. 31;
      DECSTATE      at 16#38# range 0 .. 31;
      SENSORSTATE   at 16#3C# range 0 .. 31;
      IDLECONF      at 16#40# range 0 .. 31;
      ALTEXCONF     at 16#44# range 0 .. 31;
      IF_k          at 16#50# range 0 .. 31;
      IFS           at 16#54# range 0 .. 31;
      IFC           at 16#58# range 0 .. 31;
      IEN           at 16#5C# range 0 .. 31;
      SYNCBUSY      at 16#60# range 0 .. 31;
      ROUTEPEN      at 16#64# range 0 .. 31;
      ST0_TCONFA    at 16#100# range 0 .. 31;
      ST0_TCONFB    at 16#104# range 0 .. 31;
      ST1_TCONFA    at 16#108# range 0 .. 31;
      ST1_TCONFB    at 16#10C# range 0 .. 31;
      ST2_TCONFA    at 16#110# range 0 .. 31;
      ST2_TCONFB    at 16#114# range 0 .. 31;
      ST3_TCONFA    at 16#118# range 0 .. 31;
      ST3_TCONFB    at 16#11C# range 0 .. 31;
      ST4_TCONFA    at 16#120# range 0 .. 31;
      ST4_TCONFB    at 16#124# range 0 .. 31;
      ST5_TCONFA    at 16#128# range 0 .. 31;
      ST5_TCONFB    at 16#12C# range 0 .. 31;
      ST6_TCONFA    at 16#130# range 0 .. 31;
      ST6_TCONFB    at 16#134# range 0 .. 31;
      ST7_TCONFA    at 16#138# range 0 .. 31;
      ST7_TCONFB    at 16#13C# range 0 .. 31;
      ST8_TCONFA    at 16#140# range 0 .. 31;
      ST8_TCONFB    at 16#144# range 0 .. 31;
      ST9_TCONFA    at 16#148# range 0 .. 31;
      ST9_TCONFB    at 16#14C# range 0 .. 31;
      ST10_TCONFA   at 16#150# range 0 .. 31;
      ST10_TCONFB   at 16#154# range 0 .. 31;
      ST11_TCONFA   at 16#158# range 0 .. 31;
      ST11_TCONFB   at 16#15C# range 0 .. 31;
      ST12_TCONFA   at 16#160# range 0 .. 31;
      ST12_TCONFB   at 16#164# range 0 .. 31;
      ST13_TCONFA   at 16#168# range 0 .. 31;
      ST13_TCONFB   at 16#16C# range 0 .. 31;
      ST14_TCONFA   at 16#170# range 0 .. 31;
      ST14_TCONFB   at 16#174# range 0 .. 31;
      ST15_TCONFA   at 16#178# range 0 .. 31;
      ST15_TCONFB   at 16#17C# range 0 .. 31;
      ST16_TCONFA   at 16#180# range 0 .. 31;
      ST16_TCONFB   at 16#184# range 0 .. 31;
      ST17_TCONFA   at 16#188# range 0 .. 31;
      ST17_TCONFB   at 16#18C# range 0 .. 31;
      ST18_TCONFA   at 16#190# range 0 .. 31;
      ST18_TCONFB   at 16#194# range 0 .. 31;
      ST19_TCONFA   at 16#198# range 0 .. 31;
      ST19_TCONFB   at 16#19C# range 0 .. 31;
      ST20_TCONFA   at 16#1A0# range 0 .. 31;
      ST20_TCONFB   at 16#1A4# range 0 .. 31;
      ST21_TCONFA   at 16#1A8# range 0 .. 31;
      ST21_TCONFB   at 16#1AC# range 0 .. 31;
      ST22_TCONFA   at 16#1B0# range 0 .. 31;
      ST22_TCONFB   at 16#1B4# range 0 .. 31;
      ST23_TCONFA   at 16#1B8# range 0 .. 31;
      ST23_TCONFB   at 16#1BC# range 0 .. 31;
      ST24_TCONFA   at 16#1C0# range 0 .. 31;
      ST24_TCONFB   at 16#1C4# range 0 .. 31;
      ST25_TCONFA   at 16#1C8# range 0 .. 31;
      ST25_TCONFB   at 16#1CC# range 0 .. 31;
      ST26_TCONFA   at 16#1D0# range 0 .. 31;
      ST26_TCONFB   at 16#1D4# range 0 .. 31;
      ST27_TCONFA   at 16#1D8# range 0 .. 31;
      ST27_TCONFB   at 16#1DC# range 0 .. 31;
      ST28_TCONFA   at 16#1E0# range 0 .. 31;
      ST28_TCONFB   at 16#1E4# range 0 .. 31;
      ST29_TCONFA   at 16#1E8# range 0 .. 31;
      ST29_TCONFB   at 16#1EC# range 0 .. 31;
      ST30_TCONFA   at 16#1F0# range 0 .. 31;
      ST30_TCONFB   at 16#1F4# range 0 .. 31;
      ST31_TCONFA   at 16#1F8# range 0 .. 31;
      ST31_TCONFB   at 16#1FC# range 0 .. 31;
      BUF0_DATA     at 16#200# range 0 .. 31;
      BUF1_DATA     at 16#204# range 0 .. 31;
      BUF2_DATA     at 16#208# range 0 .. 31;
      BUF3_DATA     at 16#20C# range 0 .. 31;
      BUF4_DATA     at 16#210# range 0 .. 31;
      BUF5_DATA     at 16#214# range 0 .. 31;
      BUF6_DATA     at 16#218# range 0 .. 31;
      BUF7_DATA     at 16#21C# range 0 .. 31;
      BUF8_DATA     at 16#220# range 0 .. 31;
      BUF9_DATA     at 16#224# range 0 .. 31;
      BUF10_DATA    at 16#228# range 0 .. 31;
      BUF11_DATA    at 16#22C# range 0 .. 31;
      BUF12_DATA    at 16#230# range 0 .. 31;
      BUF13_DATA    at 16#234# range 0 .. 31;
      BUF14_DATA    at 16#238# range 0 .. 31;
      BUF15_DATA    at 16#23C# range 0 .. 31;
      CH0_TIMING    at 16#240# range 0 .. 31;
      CH0_INTERACT  at 16#244# range 0 .. 31;
      CH0_EVAL      at 16#248# range 0 .. 31;
      CH1_TIMING    at 16#250# range 0 .. 31;
      CH1_INTERACT  at 16#254# range 0 .. 31;
      CH1_EVAL      at 16#258# range 0 .. 31;
      CH2_TIMING    at 16#260# range 0 .. 31;
      CH2_INTERACT  at 16#264# range 0 .. 31;
      CH2_EVAL      at 16#268# range 0 .. 31;
      CH3_TIMING    at 16#270# range 0 .. 31;
      CH3_INTERACT  at 16#274# range 0 .. 31;
      CH3_EVAL      at 16#278# range 0 .. 31;
      CH4_TIMING    at 16#280# range 0 .. 31;
      CH4_INTERACT  at 16#284# range 0 .. 31;
      CH4_EVAL      at 16#288# range 0 .. 31;
      CH5_TIMING    at 16#290# range 0 .. 31;
      CH5_INTERACT  at 16#294# range 0 .. 31;
      CH5_EVAL      at 16#298# range 0 .. 31;
      CH6_TIMING    at 16#2A0# range 0 .. 31;
      CH6_INTERACT  at 16#2A4# range 0 .. 31;
      CH6_EVAL      at 16#2A8# range 0 .. 31;
      CH7_TIMING    at 16#2B0# range 0 .. 31;
      CH7_INTERACT  at 16#2B4# range 0 .. 31;
      CH7_EVAL      at 16#2B8# range 0 .. 31;
      CH8_TIMING    at 16#2C0# range 0 .. 31;
      CH8_INTERACT  at 16#2C4# range 0 .. 31;
      CH8_EVAL      at 16#2C8# range 0 .. 31;
      CH9_TIMING    at 16#2D0# range 0 .. 31;
      CH9_INTERACT  at 16#2D4# range 0 .. 31;
      CH9_EVAL      at 16#2D8# range 0 .. 31;
      CH10_TIMING   at 16#2E0# range 0 .. 31;
      CH10_INTERACT at 16#2E4# range 0 .. 31;
      CH10_EVAL     at 16#2E8# range 0 .. 31;
      CH11_TIMING   at 16#2F0# range 0 .. 31;
      CH11_INTERACT at 16#2F4# range 0 .. 31;
      CH11_EVAL     at 16#2F8# range 0 .. 31;
      CH12_TIMING   at 16#300# range 0 .. 31;
      CH12_INTERACT at 16#304# range 0 .. 31;
      CH12_EVAL     at 16#308# range 0 .. 31;
      CH13_TIMING   at 16#310# range 0 .. 31;
      CH13_INTERACT at 16#314# range 0 .. 31;
      CH13_EVAL     at 16#318# range 0 .. 31;
      CH14_TIMING   at 16#320# range 0 .. 31;
      CH14_INTERACT at 16#324# range 0 .. 31;
      CH14_EVAL     at 16#328# range 0 .. 31;
      CH15_TIMING   at 16#330# range 0 .. 31;
      CH15_INTERACT at 16#334# range 0 .. 31;
      CH15_EVAL     at 16#338# range 0 .. 31;
   end record;

   --  LESENSE
   LESENSE_Periph : aliased LESENSE_Peripheral
     with Import, Address => LESENSE_Base;

end Interfaces.EFM32.LESENSE;
