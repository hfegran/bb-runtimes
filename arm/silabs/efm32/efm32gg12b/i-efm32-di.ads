pragma Style_Checks (Off);

with System;

-- Device Info
package Interfaces.EFM32.DI is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype CAL_CRC_Field  is Interfaces.EFM32.UInt16;
   subtype CAL_TEMP_Field is Interfaces.EFM32.Byte;

   type CAL_Register is record
      CRC            : CAL_CRC_Field;
      TEMP           : CAL_TEMP_Field;
      Reserved_24_31 : Interfaces.EFM32.Byte;
   end record
      with Volatile_Full_Access, Object_Size => 32,
         Bit_Order => System.Low_Order_First;

   for CAL_Register use record
      CRC            at 0 range  0 .. 15;
      TEMP           at 0 range 16 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype MODULEINFO_HWREV_Field   is Interfaces.EFM32.UInt5;
   type MODULEINFO_ANTENNA_Field is 
      (BUILTIN,
       CONNECTOR,
       RFPAD)
     with Size => 3;
   for MODULEINFO_ANTENNA_Field use
      (BUILTIN   => 0,
       CONNECTOR => 1,
       RFPAD     => 2);

   subtype MODULEINFO_MODNUMBER_Field is Interfaces.EFM32.UInt7;
   type MODULEINFO_TTYPE_Field     is 
      (PCB,
       SIP)
     with Size => 1;
   for MODULEINFO_TTYPE_Field use
      (PCB     => 0,
       SIP     => 1);

   type MODULEINFO_LFXO_Field is 
      (VALID,
       NOTVALID)
     with Size => 1;
   for MODULEINFO_LFXO_Field use
      (VALID    => 0,
       NOTVALID => 1);

   type MODULEINFO_EXPRESS_Field is 
      (SUPPORTED,
       NONE)
     with Size => 1;
   for MODULEINFO_EXPRESS_Field use
      (SUPPORTED => 0,
       NONE      => 1);

   type MODULEINFO_LFXOCALVAL_Field is 
      (VALID,
       NOTVALID)
     with Size => 1;
   for MODULEINFO_LFXOCALVAL_Field use
      (VALID    => 0,
       NOTVALID => 1);

   type MODULEINFO_HFXOCALVAL_Field is 
      (VALID,
       NOTVALID)
     with Size => 1;
   for MODULEINFO_HFXOCALVAL_Field use
      (VALID    => 0,
       NOTVALID => 1);


   type MODULEINFO_Register is record
      HWREV          : MODULEINFO_HWREV_Field;
      ANTENNA        : MODULEINFO_ANTENNA_Field;
      MODNUMBER      : MODULEINFO_MODNUMBER_Field;
      TTYPE          : MODULEINFO_TTYPE_Field; -- TYPE is reserved name
      LFXO           : MODULEINFO_LFXO_Field; 
      EXPRESS        : MODULEINFO_EXPRESS_Field; 
      LFXOCALVAL     : MODULEINFO_LFXOCALVAL_Field; 
      HFXOCALVAL     : MODULEINFO_HFXOCALVAL_Field; 
      Reserved_20_31 : Interfaces.EFM32.Uint12; 
   end record
      with Volatile_Full_Access, Object_Size => 32,
         Bit_Order => System .Low_Order_First;
                             
   for MODULEINFO_Register use record
      HWREV          at 0 range  0 ..  4;
      ANTENNA        at 0 range  5 ..  7;
      MODNUMBER      at 0 range  8 .. 14;
      TTYPE          at 0 range 15 .. 15;
      LFXO           at 0 range 16 .. 16;
      EXPRESS        at 0 range 17 .. 17;
      LFXOCALVAL     at 0 range 18 .. 18;
      HFXOCALVAL     at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;               
                             
   subtype MODXOCAL_HFXOCTUNE_Field  is Interfaces.EFM32.UInt9;
   subtype MODXOCAL_LFXOTUNING_Field is Interfaces.EFM32.UInt7;
                             
   -- TODO Check bit positions, Magni doc ambiguous.
   type MODXOCAL_Register is  record
      HFXOCTUNE   : MODXOCAL_HFXOCTUNE_Field;
      LFXOTUNING  : MODXOCAL_LFXOTUNING_Field;
   end record                
      with Volatile_Full_Access, Object_Size => 16,
         Bit_Order => System.Low_Order_First;
                             
   for MODXOCAL_Register use record
      HFXOCTUNE  at 0 range 0 ..  8;
      LFXOTUNING at 0 range 9 .. 15;
   end record;               
                             
   type EXTINFO_TTYPE_Field is
      (IS25LQ040B,           
       AT25S041,             
       WF200,                
       NONE)                 
       with Size => 8;
   for EXTINFO_TTYPE_Field use
      (IS25LQ040B => 1,
       AT25S041   => 2,
       WF200      => 3,
       NONE       => 255);

   type EXTINFO_CONNECTION_Field is
      (SPI,
       SDIO,
       NONE)
     with Size => 8;
   for EXTINFO_CONNECTION_Field use
      (SPI  => 1,
       SDIO => 2,
       NONE => 255);
   
   type EXTINFO_REV_Field is
      (REV1,
       NONE)
     with Size => 8;
   for EXTINFO_REV_Field use
      (REV1 => 0, 
       NONE => 255);

   type EXTINFO_Register is record
      TTYPE      : EXTINFO_TTYPE_Field;
      CONNECTION : EXTINFO_CONNECTION_Field;
      REV        : EXTINFO_REV_Field;
   end record
      with Volatile_Full_Access, Object_Size => 32,
         Bit_Order => System.Low_Order_First;

   for EXTINFO_Register use record
      TTYPE      at 0 range  0 ..  7;
      CONNECTION at 0 range  8 .. 15;
      REV        at 0 range 16 .. 23;
   end record;

   subtype EUI48L_OUI48L_Field   is Interfaces.EFM32.Byte;
   subtype EUI48L_UNIQUEID_Field is Interfaces.EFM32.UInt24;

   type EUI48L_Register is record
      OUI48L   : EUI48L_OUI48L_Field;
      UNIQUEID : EUI48L_UNIQUEID_Field;
   end record
     with Volatile_Full_Access, Object_Size => 32,
        Bit_Order => System.Low_Order_First;

   for EUI48L_Register use record
      UNIQUEID at 0 range  0 .. 23;
      OUI48L   at 0 range 24 .. 31;
   end record;

   subtype EUI48H_OUI48H_Field is Interfaces.EFM32.UInt16;

   type EUI48H_Register is record
      OUI48H         : EUI48H_OUI48H_Field;
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
     with Volatile_Full_Access, Object_Size => 32,
        Bit_Order => System.Low_Order_First;

   for EUI48H_Register use record
      OUI48H         at 0 range  0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;
   

   subtype CUSTOMINFO_PARTNO_Field is Interfaces.EFM32.UInt16;

   type CUSTOMINFO_Register is record 
      Reserved_0_15  : Interfaces.EFM32.UInt16;
      PARTNO         : CUSTOMINFO_PARTNO_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for CUSTOMINFO_Register use record
      Reserved_0_15 at 0 range  0 .. 15;
      PARTNO        at 0 range 16 .. 31;
   end record;

   type MEMINFO_TEMPGRADE_Field is 
     (N40TO85,
      N40TO125,
      N40TO105,
      N0TO70)
     with Size => 8;
   for MEMINFO_TEMPGRADE_Field use
      (N40TO85  => 0,
       N40TO125 => 1,
       N40TO105 => 2,
       N0TO70   => 3);

   type MEMINFO_PKGTYPE_Field is
      (WLCSP,
       BGA,
       QFN,
       QFP)
      with Size => 8;
   for MEMINFO_PKGTYPE_Field use
      (WLCSP => 74,
       BGA   => 76,
       QFN   => 77,
       QFP   => 81);

   subtype MEMINFO_PINCOUNT_Field        is Interfaces.EFM32.Byte;
   subtype MEMINFO_FLASH_PAGE_SIZE_Field is Interfaces.EFM32.Byte;

   type MEMINFO_Register is record 
      TEMPGRADE       : MEMINFO_TEMPGRADE_Field;
      PKGTYPE         : MEMINFO_PKGTYPE_Field;
      PINCOUNT        : MEMINFO_PINCOUNT_Field;
      FLASH_PAGE_SIZE : MEMINFO_FLASH_PAGE_SIZE_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for MEMINFO_Register use record
     TEMPGRADE       at 0 range  0 ..  7;
     PKGTYPE         at 0 range  8 .. 15;
     PINCOUNT        at 0 range 16 .. 23;
     FLASH_PAGE_SIZE at 0 range 24 .. 31;
   end record;

   subtype UNIQUEL_UNIQUEL_Field is Interfaces.EFM32.UInt32;

   type UNIQUEL_Register is record 
      UNIQUEL : UNIQUEL_UNIQUEL_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for UNIQUEL_Register use record
      UNIQUEL at 0 range 0 .. 31;
   end record;

   subtype UNIQUEH_UNIQUEH_Field is Interfaces.EFM32.UInt32;

   type UNIQUEH_Register is record 
      UNIQUEH : UNIQUEH_UNIQUEH_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for UNIQUEH_Register use record
      UNIQUEH at 0 range 0 .. 31;
   end record;

   subtype MSIZE_SRAM_Field  is Interfaces.EFM32.UInt16;
   subtype MSIZE_FLASH_Field is Interfaces.EFM32.UInt16;

   type MSIZE_Register is record 
      FLASH : MSIZE_FLASH_Field;
      SRAM  : MSIZE_SRAM_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for MSIZE_Register use record
      FLASH at 0 range  0 .. 15;
      SRAM  at 0 range 16 .. 31;
   end record;

   -- TODO Fill inn remaining registers below 

   subtype PART_DEVICE_NUMBER_Field is Interfaces.EFM32.UInt16;
   type PART_DEVICE_FAMILY_Field is
      (EFR32MG1P,
       EFR32MG1B,
       EFR32MG1V,
       EFR32BG1P,
       EFR32BG1B,
       EFR32BG1V,
       EFR32PG1P,
       EFR32PG1B,
       EFR32PG1V,
       EFR32MG12P,
       EFR32MG12B,
       EFR32MG12V,
       EFR32BG12P,
       EFR32BG12B,
       EFR32BG12V,
       EFR32FG12P,
       EFR32FG12B,
       EFR32FG12V,
       EFR32MG13P,
       EFR32MG13B,
       EFR32MG13V,
       EFR32BG13P,
       EFR32BG13B,
       EFR32BG13V,
       EFR32ZG13P,
       EFR32ZG13L,
       EFR32ZG13S,
       EFR32FG13P,
       EFR32FG13B,
       EFR32FG13V,
       EFR32MG14P,
       EFR32MG14B,
       EFR32MG14V,
       EFR32BG14P,
       EFR32BG14B,
       EFR32BG14V,
       EFR32ZG14P,
       EFR32FG14P,
       EFR32FG14B,
       EFR32FG14V,
       EFM32G,
       EFM32GG,
       EFM32TG,
       EFM32LG,
       EFM32WG,
       EFM32ZG,
       EFM32HG,
       EFM32PG1B,
       EFM32JG1B,
       EFM32PG12B,
       EFM32JG12B,
       EFM32GG11B,
       EFM32TG11B,
       EFM32GG12B,
       EZR32LG,
       EZR32WG,
       EZR32HG)
     with Size => 8;
   for PART_DEVICE_FAMILY_Field use
      (EFR32MG1P  => 16,
       EFR32MG1B  => 17,
       EFR32MG1V  => 18,
       EFR32BG1P  => 19,
       EFR32BG1B  => 20,
       EFR32BG1V  => 21,
       EFR32PG1P  => 25,
       EFR32PG1B  => 26,
       EFR32PG1V  => 27,
       EFR32MG12P => 28,
       EFR32MG12B => 29,
       EFR32MG12V => 30,
       EFR32BG12P => 31,
       EFR32BG12B => 32,
       EFR32BG12V => 33,
       EFR32FG12P => 37,
       EFR32FG12B => 38,
       EFR32FG12V => 39,
       EFR32MG13P => 40,
       EFR32MG13B => 41,
       EFR32MG13V => 42,
       EFR32BG13P => 43,
       EFR32BG13B => 44,
       EFR32BG13V => 45,
       EFR32ZG13P => 46,
       EFR32ZG13L => 47,
       EFR32ZG13S => 48,
       EFR32FG13P => 49,
       EFR32FG13B => 50,
       EFR32FG13V => 51,
       EFR32MG14P => 52,
       EFR32MG14B => 53,
       EFR32MG14V => 54,
       EFR32BG14P => 55,
       EFR32BG14B => 56,
       EFR32BG14V => 57,
       EFR32ZG14P => 58,
       EFR32FG14P => 61,
       EFR32FG14B => 62,
       EFR32FG14V => 63,
       EFM32G     => 71,
       EFM32GG    => 72,
       EFM32TG    => 73,
       EFM32LG    => 74,
       EFM32WG    => 75,
       EFM32ZG    => 76,
       EFM32HG    => 77,
       EFM32PG1B  => 81,
       EFM32JG1B  => 83,
       EFM32PG12B => 85,
       EFM32JG12B => 87,
       EFM32GG11B => 100,
       EFM32TG11B => 103,
       EFM32GG12B => 106,
       EZR32LG    => 120,
       EZR32WG    => 121,
       EZR32HG    => 122);

   subtype PART_PROD_REV_Field is Interfaces.EFM32.Byte;

   type PART_Register is record 
      DEVICE_NUMBER : PART_DEVICE_NUMBER_Field;
      DEVICE_FAMILY : PART_DEVICE_FAMILY_Field;
      PROD_REV      : PART_PROD_REV_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for PART_Register use record
      DEVICE_NUMBER at 0 range  0 .. 15;
      DEVICE_FAMILY at 0 range 16 .. 23;
      PROD_REV      at 0 range 24 .. 31;
   end record;

   subtype DEVINFOREV_MINOR_Field is Interfaces.EFM32.UInt5;
   subtype DEVINFOREV_MAJOR_Field is Interfaces.EFM32.UInt3;

   type DEVINFOREV_Register is record 
      MINOR         : DEVINFOREV_MINOR_Field;
      MAJOR         : DEVINFOREV_MAJOR_Field;
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for DEVINFOREV_Register use record
      MINOR         at 0 range  0 ..  4;
      MAJOR         at 0 range  5 ..  7;
      Reserved_8_31 at 0 range  8 .. 31;
   end record;

   subtype EMUTEMP_EMUTEMPROOM_Field is Interfaces.EFM32.Byte;

   type EMUTEMP_Register is record 
      EMUTEMPROOM   : EMUTEMP_EMUTEMPROOM_Field;
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for EMUTEMP_Register use record
      EMUTEMPROOM   at 0 range  0 ..  7;
      Reserved_8_31 at 0 range  8 .. 31;
   end record;

   subtype ADC0CAL0_OFFSET1V25_Field      is Interfaces.EFM32.UInt4;
   subtype ADC0CAL0_NEGSEOFFSET1V25_Field is Interfaces.EFM32.UInt4;
   subtype ADC0CAL0_GAIN1V25_Field        is Interfaces.EFM32.UInt7;
   subtype ADC0CAL0_OFFSET2V5_Field       is Interfaces.EFM32.UInt4;
   subtype ADC0CAL0_NEGSEOFFSET2V5_Field  is Interfaces.EFM32.UInt4;
   subtype ADC0CAL0_GAIN2V5_Field         is Interfaces.EFM32.UInt7;

   type ADC0CAL0_Register is record 
      OFFSET1V25      : ADC0CAL0_OFFSET1V25_Field;
      NEGSEOFFSET1V25 : ADC0CAL0_NEGSEOFFSET1V25_Field;
      GAIN1V25        : ADC0CAL0_GAIN1V25_Field;
      Reserved_15_15  : Interfaces.EFM32.Bit;
      OFFSET2V5       : ADC0CAL0_OFFSET2V5_Field;
      NEGSEOFFSET2V5  : ADC0CAL0_NEGSEOFFSET2V5_Field;
      GAIN2V5         : ADC0CAL0_GAIN2V5_Field;
      Reserved_31_31  : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for ADC0CAL0_Register use record
      OFFSET1V25      at 0 range  0 ..  3;
      NEGSEOFFSET1V25 at 0 range  4 ..  7;
      GAIN1V25        at 0 range  8 .. 14;
      Reserved_15_15  at 0 range 15 .. 15;
      OFFSET2V5       at 0 range 16 .. 19;
      NEGSEOFFSET2V5  at 0 range 20 .. 23;
      GAIN2V5         at 0 range 24 .. 30;
      Reserved_31_31  at 0 range 31 .. 31;
   end record;

   subtype ADC0CAL1_OFFSETVDD_Field         is Interfaces.EFM32.UInt4;
   subtype ADC0CAL1_NEGSEOFFSETVDD_Field    is Interfaces.EFM32.UInt4;
   subtype ADC0CAL1_GAINVDD_Field           is Interfaces.EFM32.UInt7;
   subtype ADC0CAL1_OFFSET5VDIFF_Field      is Interfaces.EFM32.UInt4;
   subtype ADC0CAL1_NEGSEOFFSET5VDIFF_Field is Interfaces.EFM32.UInt4;
   subtype ADC0CAL1_GAIN5VDIFF_Field        is Interfaces.EFM32.UInt7;

   type ADC0CAL1_Register is record 
      OFFSETVDD         : ADC0CAL1_OFFSETVDD_Field;
      NEGSEOFFSETVDD    : ADC0CAL1_NEGSEOFFSETVDD_Field;
      GAINVDD           : ADC0CAL1_GAINVDD_Field;
      Reserved_15_15    : Interfaces.EFM32.Bit;
      OFFSET5VDIFF      : ADC0CAL1_OFFSET5VDIFF_Field;
      NEGSEOFFSET5VDIFF : ADC0CAL1_NEGSEOFFSET5VDIFF_Field;
      GAIN5VDIFF        : ADC0CAL1_GAIN5VDIFF_Field;
      Reserved_31_31    : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for ADC0CAL1_Register use record
      OFFSETVDD         at 0 range  0 ..  3;
      NEGSEOFFSETVDD    at 0 range  4 ..  7;
      GAINVDD           at 0 range  8 .. 14;
      Reserved_15_15    at 0 range 15 .. 15;
      OFFSET5VDIFF      at 0 range 16 .. 19;
      NEGSEOFFSET5VDIFF at 0 range 20 .. 23;
      GAIN5VDIFF        at 0 range 24 .. 30;
      Reserved_31_31    at 0 range 31 .. 31;
   end record;

   subtype ADC0CAL2_OFFSET2XVDD_Field      is Interfaces.EFM32.UInt4;
   subtype ADC0CAL2_NEGSEOFFSET2XVDD_Field is Interfaces.EFM32.UInt4;

   type ADC0CAL2_Register is record 
      OFFSET2XVDD      : ADC0CAL2_OFFSET2XVDD_Field;
      NEGSEOFFSET2XVDD : ADC0CAL2_NEGSEOFFSET2XVDD_Field;
      Reserved_8_15    : Interfaces.EFM32.Byte;
      Reserved_16_19   : Interfaces.EFM32.UInt4;
      Reserved_20_23   : Interfaces.EFM32.UInt4;
      Reserved_24_30   : Interfaces.EFM32.UInt7; 
      Reserved_31_31   : Interfaces.EFM32.Bit; 
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for ADC0CAL2_Register use record
      OFFSET2XVDD      at 0 range  0 ..  3;
      NEGSEOFFSET2XVDD at 0 range  4 ..  7;
      Reserved_8_15    at 0 range  8 .. 15;
      Reserved_16_19   at 0 range 16 .. 19;
      Reserved_20_23   at 0 range 20 .. 23;
      Reserved_24_30   at 0 range 24 .. 30; 
      Reserved_31_31   at 0 range 31 .. 31; 
   end record;

   subtype ADC0CAL3_TEMPREAD1V25_Field is Interfaces.EFM32.UInt12;

   type ADC0CAL3_Register is record 
      Reserved_0_3   : Interfaces.EFM32.UInt4;
      TEMPREAD1V25   : ADC0CAL3_TEMPREAD1V25_Field;
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for ADC0CAL3_Register use record
      Reserved_0_3   at 0 range  0 ..  3;
      TEMPREAD1V25   at 0 range  4 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype ADC1CAL0_OFFSET1V25_Field      is Interfaces.EFM32.UInt4;
   subtype ADC1CAL0_NEGSEOFFSET1V25_Field is Interfaces.EFM32.UInt4;
   subtype ADC1CAL0_GAIN1V25_Field        is Interfaces.EFM32.UInt7;
   subtype ADC1CAL0_OFFSET2V5_Field       is Interfaces.EFM32.UInt4;
   subtype ADC1CAL0_NEGSEOFFSET2V5_Field  is Interfaces.EFM32.UInt4;
   subtype ADC1CAL0_GAIN2V5_Field         is Interfaces.EFM32.UInt7;

   type ADC1CAL0_Register is record 
      OFFSET1V25      : ADC1CAL0_OFFSET1V25_Field;
      NEGSEOFFSET1V25 : ADC1CAL0_NEGSEOFFSET1V25_Field;
      GAIN1V25        : ADC1CAL0_GAIN1V25_Field;
      Reserved_15_15  : Interfaces.EFM32.Bit;
      OFFSET2V5       : ADC1CAL0_OFFSET2V5_Field;
      NEGSEOFFSET2V5  : ADC1CAL0_NEGSEOFFSET2V5_Field;
      GAIN2V5         : ADC1CAL0_GAIN2V5_Field;
      Reserved_31_31  : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for ADC1CAL0_Register use record
      OFFSET1V25      at 0 range  0 ..  3;
      NEGSEOFFSET1V25 at 0 range  4 ..  7;
      GAIN1V25        at 0 range  8 .. 14;
      Reserved_15_15  at 0 range 15 .. 15;
      OFFSET2V5       at 0 range 16 .. 19;
      NEGSEOFFSET2V5  at 0 range 20 .. 23;
      GAIN2V5         at 0 range 24 .. 30;
      Reserved_31_31  at 0 range 31 .. 31;
   end record;

   subtype ADC1CAL1_OFFSETVDD_Field         is Interfaces.EFM32.UInt4;
   subtype ADC1CAL1_NEGSEOFFSETVDD_Field    is Interfaces.EFM32.UInt4;
   subtype ADC1CAL1_GAINVDD_Field           is Interfaces.EFM32.UInt7;
   subtype ADC1CAL1_OFFSET5VDIFF_Field      is Interfaces.EFM32.UInt4;
   subtype ADC1CAL1_NEGSEOFFSET5VDIFF_Field is Interfaces.EFM32.UInt4;
   subtype ADC1CAL1_GAIN5VDIFF_Field        is Interfaces.EFM32.UInt7;

   type ADC1CAL1_Register is record 
      OFFSETVDD         : ADC1CAL1_OFFSETVDD_Field;
      NEGSEOFFSETVDD    : ADC1CAL1_NEGSEOFFSETVDD_Field;
      GAINVDD           : ADC1CAL1_GAINVDD_Field;
      Reserved_15_15    : Interfaces.EFM32.Bit;
      OFFSET5VDIFF      : ADC1CAL1_OFFSET5VDIFF_Field;
      NEGSEOFFSET5VDIFF : ADC1CAL1_NEGSEOFFSET5VDIFF_Field;
      GAIN5VDIFF        : ADC1CAL1_GAIN5VDIFF_Field;
      Reserved_31_31    : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for ADC1CAL1_Register use record
      OFFSETVDD         at 0 range  0 ..  3;
      NEGSEOFFSETVDD    at 0 range  4 ..  7;
      GAINVDD           at 0 range  8 .. 14;
      Reserved_15_15    at 0 range 15 .. 15;
      OFFSET5VDIFF      at 0 range 16 .. 19;
      NEGSEOFFSET5VDIFF at 0 range 20 .. 23;
      GAIN5VDIFF        at 0 range 24 .. 30;
      Reserved_31_31    at 0 range 31 .. 31;
   end record;

   subtype ADC1CAL2_OFFSET2XVDD_Field      is Interfaces.EFM32.UInt4;
   subtype ADC1CAL2_NEGSEOFFSET2XVDD_Field is Interfaces.EFM32.UInt4;

   type ADC1CAL2_Register is record 
      OFFSET2XVDD      : ADC1CAL2_OFFSET2XVDD_Field;
      NEGSEOFFSET2XVDD : ADC1CAL2_NEGSEOFFSET2XVDD_Field;
      Reserved_8_15    : Interfaces.EFM32.Byte;
      Reserved_16_19   : Interfaces.EFM32.UInt4;
      Reserved_20_23   : Interfaces.EFM32.UInt4;
      Reserved_24_30   : Interfaces.EFM32.UInt7; 
      Reserved_31_31   : Interfaces.EFM32.Bit; 
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for ADC1CAL2_Register use record
      OFFSET2XVDD      at 0 range  0 ..  3;
      NEGSEOFFSET2XVDD at 0 range  4 ..  7;
      Reserved_8_15    at 0 range  8 .. 15;
      Reserved_16_19   at 0 range 16 .. 19;
      Reserved_20_23   at 0 range 20 .. 23;
      Reserved_24_30   at 0 range 24 .. 30; 
      Reserved_31_31   at 0 range 31 .. 31; 
   end record;

   subtype ADC1CAL3_TEMPREAD1V25_Field is Interfaces.EFM32.UInt12;

   type ADC1CAL3_Register is record 
      Reserved_0_3   : Interfaces.EFM32.UInt4;
      TEMPREAD1V25   : ADC1CAL3_TEMPREAD1V25_Field;
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for ADC1CAL3_Register use record
      Reserved_0_3   at 0 range  0 ..  3;
      TEMPREAD1V25   at 0 range  4 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype HFRCOCAL0_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype HFRCOCAL0_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype HFRCOCAL0_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype HFRCOCAL0_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype HFRCOCAL0_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype HFRCOCAL0_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype HFRCOCAL0_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype HFRCOCAL0_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type HFRCOCAL0_Register is record 
      TUNING         : HFRCOCAL0_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : HFRCOCAL0_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : HFRCOCAL0_FREQRANGE_Field;
      CMPBIAS        : HFRCOCAL0_CMPBIAS_Field;
      LDOHP          : HFRCOCAL0_LDOHP_Field;
      CLKDIV         : HFRCOCAL0_CLKDIV_Field;
      FINETUNINGEN   : HFRCOCAL0_FINETUNINGEN_Field;
      VREFTC         : HFRCOCAL0_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for HFRCOCAL0_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype HFRCOCAL3_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype HFRCOCAL3_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype HFRCOCAL3_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype HFRCOCAL3_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype HFRCOCAL3_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype HFRCOCAL3_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype HFRCOCAL3_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype HFRCOCAL3_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type HFRCOCAL3_Register is record 
      TUNING         : HFRCOCAL3_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : HFRCOCAL3_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : HFRCOCAL3_FREQRANGE_Field;
      CMPBIAS        : HFRCOCAL3_CMPBIAS_Field;
      LDOHP          : HFRCOCAL3_LDOHP_Field;
      CLKDIV         : HFRCOCAL3_CLKDIV_Field;
      FINETUNINGEN   : HFRCOCAL3_FINETUNINGEN_Field;
      VREFTC         : HFRCOCAL3_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for HFRCOCAL3_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype HFRCOCAL6_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype HFRCOCAL6_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype HFRCOCAL6_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype HFRCOCAL6_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype HFRCOCAL6_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype HFRCOCAL6_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype HFRCOCAL6_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype HFRCOCAL6_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type HFRCOCAL6_Register is record 
      TUNING         : HFRCOCAL6_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : HFRCOCAL6_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : HFRCOCAL6_FREQRANGE_Field;
      CMPBIAS        : HFRCOCAL6_CMPBIAS_Field;
      LDOHP          : HFRCOCAL6_LDOHP_Field;
      CLKDIV         : HFRCOCAL6_CLKDIV_Field;
      FINETUNINGEN   : HFRCOCAL6_FINETUNINGEN_Field;
      VREFTC         : HFRCOCAL6_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for HFRCOCAL6_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype HFRCOCAL7_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype HFRCOCAL7_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype HFRCOCAL7_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype HFRCOCAL7_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype HFRCOCAL7_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype HFRCOCAL7_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype HFRCOCAL7_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype HFRCOCAL7_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type HFRCOCAL7_Register is record 
      TUNING         : HFRCOCAL7_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : HFRCOCAL7_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : HFRCOCAL7_FREQRANGE_Field;
      CMPBIAS        : HFRCOCAL7_CMPBIAS_Field;
      LDOHP          : HFRCOCAL7_LDOHP_Field;
      CLKDIV         : HFRCOCAL7_CLKDIV_Field;
      FINETUNINGEN   : HFRCOCAL7_FINETUNINGEN_Field;
      VREFTC         : HFRCOCAL7_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for HFRCOCAL7_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype HFRCOCAL8_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype HFRCOCAL8_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype HFRCOCAL8_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype HFRCOCAL8_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype HFRCOCAL8_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype HFRCOCAL8_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype HFRCOCAL8_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype HFRCOCAL8_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type HFRCOCAL8_Register is record 
      TUNING         : HFRCOCAL8_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : HFRCOCAL8_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : HFRCOCAL8_FREQRANGE_Field;
      CMPBIAS        : HFRCOCAL8_CMPBIAS_Field;
      LDOHP          : HFRCOCAL8_LDOHP_Field;
      CLKDIV         : HFRCOCAL8_CLKDIV_Field;
      FINETUNINGEN   : HFRCOCAL8_FINETUNINGEN_Field;
      VREFTC         : HFRCOCAL8_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for HFRCOCAL8_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype HFRCOCAL10_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype HFRCOCAL10_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype HFRCOCAL10_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype HFRCOCAL10_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype HFRCOCAL10_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype HFRCOCAL10_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype HFRCOCAL10_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype HFRCOCAL10_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type HFRCOCAL10_Register is record 
      TUNING         : HFRCOCAL10_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : HFRCOCAL10_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : HFRCOCAL10_FREQRANGE_Field;
      CMPBIAS        : HFRCOCAL10_CMPBIAS_Field;
      LDOHP          : HFRCOCAL10_LDOHP_Field;
      CLKDIV         : HFRCOCAL10_CLKDIV_Field;
      FINETUNINGEN   : HFRCOCAL10_FINETUNINGEN_Field;
      VREFTC         : HFRCOCAL10_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for HFRCOCAL10_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype HFRCOCAL11_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype HFRCOCAL11_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype HFRCOCAL11_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype HFRCOCAL11_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype HFRCOCAL11_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype HFRCOCAL11_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype HFRCOCAL11_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype HFRCOCAL11_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type HFRCOCAL11_Register is record 
      TUNING         : HFRCOCAL11_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : HFRCOCAL11_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : HFRCOCAL11_FREQRANGE_Field;
      CMPBIAS        : HFRCOCAL11_CMPBIAS_Field;
      LDOHP          : HFRCOCAL11_LDOHP_Field;
      CLKDIV         : HFRCOCAL11_CLKDIV_Field;
      FINETUNINGEN   : HFRCOCAL11_FINETUNINGEN_Field;
      VREFTC         : HFRCOCAL11_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for HFRCOCAL11_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype HFRCOCAL12_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype HFRCOCAL12_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype HFRCOCAL12_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype HFRCOCAL12_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype HFRCOCAL12_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype HFRCOCAL12_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype HFRCOCAL12_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype HFRCOCAL12_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type HFRCOCAL12_Register is record 
      TUNING         : HFRCOCAL12_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : HFRCOCAL12_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : HFRCOCAL12_FREQRANGE_Field;
      CMPBIAS        : HFRCOCAL12_CMPBIAS_Field;
      LDOHP          : HFRCOCAL12_LDOHP_Field;
      CLKDIV         : HFRCOCAL12_CLKDIV_Field;
      FINETUNINGEN   : HFRCOCAL12_FINETUNINGEN_Field;
      VREFTC         : HFRCOCAL12_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for HFRCOCAL12_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype HFRCOCAL13_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype HFRCOCAL13_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype HFRCOCAL13_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype HFRCOCAL13_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype HFRCOCAL13_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype HFRCOCAL13_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype HFRCOCAL13_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype HFRCOCAL13_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type HFRCOCAL13_Register is record 
      TUNING         : HFRCOCAL13_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : HFRCOCAL13_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : HFRCOCAL13_FREQRANGE_Field;
      CMPBIAS        : HFRCOCAL13_CMPBIAS_Field;
      LDOHP          : HFRCOCAL13_LDOHP_Field;
      CLKDIV         : HFRCOCAL13_CLKDIV_Field;
      FINETUNINGEN   : HFRCOCAL13_FINETUNINGEN_Field;
      VREFTC         : HFRCOCAL13_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for HFRCOCAL13_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype HFRCOCAL14_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype HFRCOCAL14_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype HFRCOCAL14_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype HFRCOCAL14_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype HFRCOCAL14_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype HFRCOCAL14_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype HFRCOCAL14_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype HFRCOCAL14_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type HFRCOCAL14_Register is record 
      TUNING         : HFRCOCAL14_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : HFRCOCAL14_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : HFRCOCAL14_FREQRANGE_Field;
      CMPBIAS        : HFRCOCAL14_CMPBIAS_Field;
      LDOHP          : HFRCOCAL14_LDOHP_Field;
      CLKDIV         : HFRCOCAL14_CLKDIV_Field;
      FINETUNINGEN   : HFRCOCAL14_FINETUNINGEN_Field;
      VREFTC         : HFRCOCAL14_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for HFRCOCAL14_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype HFRCOCAL15_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype HFRCOCAL15_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype HFRCOCAL15_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype HFRCOCAL15_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype HFRCOCAL15_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype HFRCOCAL15_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype HFRCOCAL15_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype HFRCOCAL15_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type HFRCOCAL15_Register is record 
      TUNING         : HFRCOCAL15_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : HFRCOCAL15_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : HFRCOCAL15_FREQRANGE_Field;
      CMPBIAS        : HFRCOCAL15_CMPBIAS_Field;
      LDOHP          : HFRCOCAL15_LDOHP_Field;
      CLKDIV         : HFRCOCAL15_CLKDIV_Field;
      FINETUNINGEN   : HFRCOCAL15_FINETUNINGEN_Field;
      VREFTC         : HFRCOCAL15_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for HFRCOCAL15_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype HFRCOCAL16_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype HFRCOCAL16_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype HFRCOCAL16_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype HFRCOCAL16_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype HFRCOCAL16_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype HFRCOCAL16_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype HFRCOCAL16_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype HFRCOCAL16_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type HFRCOCAL16_Register is record 
      TUNING         : HFRCOCAL16_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : HFRCOCAL16_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : HFRCOCAL16_FREQRANGE_Field;
      CMPBIAS        : HFRCOCAL16_CMPBIAS_Field;
      LDOHP          : HFRCOCAL16_LDOHP_Field;
      CLKDIV         : HFRCOCAL16_CLKDIV_Field;
      FINETUNINGEN   : HFRCOCAL16_FINETUNINGEN_Field;
      VREFTC         : HFRCOCAL16_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for HFRCOCAL16_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype AUXHFRCOCAL0_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype AUXHFRCOCAL0_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype AUXHFRCOCAL0_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype AUXHFRCOCAL0_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype AUXHFRCOCAL0_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL0_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype AUXHFRCOCAL0_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL0_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type AUXHFRCOCAL0_Register is record 
      TUNING         : AUXHFRCOCAL0_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : AUXHFRCOCAL0_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : AUXHFRCOCAL0_FREQRANGE_Field;
      CMPBIAS        : AUXHFRCOCAL0_CMPBIAS_Field;
      LDOHP          : AUXHFRCOCAL0_LDOHP_Field;
      CLKDIV         : AUXHFRCOCAL0_CLKDIV_Field;
      FINETUNINGEN   : AUXHFRCOCAL0_FINETUNINGEN_Field;
      VREFTC         : AUXHFRCOCAL0_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for AUXHFRCOCAL0_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype AUXHFRCOCAL3_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype AUXHFRCOCAL3_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype AUXHFRCOCAL3_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype AUXHFRCOCAL3_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype AUXHFRCOCAL3_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL3_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype AUXHFRCOCAL3_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL3_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type AUXHFRCOCAL3_Register is record 
      TUNING         : AUXHFRCOCAL3_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : AUXHFRCOCAL3_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : AUXHFRCOCAL3_FREQRANGE_Field;
      CMPBIAS        : AUXHFRCOCAL3_CMPBIAS_Field;
      LDOHP          : AUXHFRCOCAL3_LDOHP_Field;
      CLKDIV         : AUXHFRCOCAL3_CLKDIV_Field;
      FINETUNINGEN   : AUXHFRCOCAL3_FINETUNINGEN_Field;
      VREFTC         : AUXHFRCOCAL3_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for AUXHFRCOCAL3_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype AUXHFRCOCAL6_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype AUXHFRCOCAL6_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype AUXHFRCOCAL6_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype AUXHFRCOCAL6_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype AUXHFRCOCAL6_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL6_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype AUXHFRCOCAL6_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL6_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type AUXHFRCOCAL6_Register is record 
      TUNING         : AUXHFRCOCAL6_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : AUXHFRCOCAL6_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : AUXHFRCOCAL6_FREQRANGE_Field;
      CMPBIAS        : AUXHFRCOCAL6_CMPBIAS_Field;
      LDOHP          : AUXHFRCOCAL6_LDOHP_Field;
      CLKDIV         : AUXHFRCOCAL6_CLKDIV_Field;
      FINETUNINGEN   : AUXHFRCOCAL6_FINETUNINGEN_Field;
      VREFTC         : AUXHFRCOCAL6_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for AUXHFRCOCAL6_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype AUXHFRCOCAL7_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype AUXHFRCOCAL7_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype AUXHFRCOCAL7_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype AUXHFRCOCAL7_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype AUXHFRCOCAL7_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL7_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype AUXHFRCOCAL7_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL7_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type AUXHFRCOCAL7_Register is record 
      TUNING         : AUXHFRCOCAL7_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : AUXHFRCOCAL7_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : AUXHFRCOCAL7_FREQRANGE_Field;
      CMPBIAS        : AUXHFRCOCAL7_CMPBIAS_Field;
      LDOHP          : AUXHFRCOCAL7_LDOHP_Field;
      CLKDIV         : AUXHFRCOCAL7_CLKDIV_Field;
      FINETUNINGEN   : AUXHFRCOCAL7_FINETUNINGEN_Field;
      VREFTC         : AUXHFRCOCAL7_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for AUXHFRCOCAL7_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype AUXHFRCOCAL8_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype AUXHFRCOCAL8_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype AUXHFRCOCAL8_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype AUXHFRCOCAL8_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype AUXHFRCOCAL8_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL8_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype AUXHFRCOCAL8_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL8_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type AUXHFRCOCAL8_Register is record 
      TUNING         : AUXHFRCOCAL8_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : AUXHFRCOCAL8_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : AUXHFRCOCAL8_FREQRANGE_Field;
      CMPBIAS        : AUXHFRCOCAL8_CMPBIAS_Field;
      LDOHP          : AUXHFRCOCAL8_LDOHP_Field;
      CLKDIV         : AUXHFRCOCAL8_CLKDIV_Field;
      FINETUNINGEN   : AUXHFRCOCAL8_FINETUNINGEN_Field;
      VREFTC         : AUXHFRCOCAL8_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for AUXHFRCOCAL8_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype AUXHFRCOCAL10_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype AUXHFRCOCAL10_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype AUXHFRCOCAL10_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype AUXHFRCOCAL10_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype AUXHFRCOCAL10_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL10_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype AUXHFRCOCAL10_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL10_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type AUXHFRCOCAL10_Register is record 
      TUNING         : AUXHFRCOCAL10_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : AUXHFRCOCAL10_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : AUXHFRCOCAL10_FREQRANGE_Field;
      CMPBIAS        : AUXHFRCOCAL10_CMPBIAS_Field;
      LDOHP          : AUXHFRCOCAL10_LDOHP_Field;
      CLKDIV         : AUXHFRCOCAL10_CLKDIV_Field;
      FINETUNINGEN   : AUXHFRCOCAL10_FINETUNINGEN_Field;
      VREFTC         : AUXHFRCOCAL10_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for AUXHFRCOCAL10_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype AUXHFRCOCAL11_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype AUXHFRCOCAL11_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype AUXHFRCOCAL11_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype AUXHFRCOCAL11_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype AUXHFRCOCAL11_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL11_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype AUXHFRCOCAL11_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL11_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type AUXHFRCOCAL11_Register is record 
      TUNING         : AUXHFRCOCAL11_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : AUXHFRCOCAL11_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : AUXHFRCOCAL11_FREQRANGE_Field;
      CMPBIAS        : AUXHFRCOCAL11_CMPBIAS_Field;
      LDOHP          : AUXHFRCOCAL11_LDOHP_Field;
      CLKDIV         : AUXHFRCOCAL11_CLKDIV_Field;
      FINETUNINGEN   : AUXHFRCOCAL11_FINETUNINGEN_Field;
      VREFTC         : AUXHFRCOCAL11_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for AUXHFRCOCAL11_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype AUXHFRCOCAL12_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype AUXHFRCOCAL12_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype AUXHFRCOCAL12_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype AUXHFRCOCAL12_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype AUXHFRCOCAL12_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL12_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype AUXHFRCOCAL12_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL12_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type AUXHFRCOCAL12_Register is record 
      TUNING         : AUXHFRCOCAL12_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : AUXHFRCOCAL12_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : AUXHFRCOCAL12_FREQRANGE_Field;
      CMPBIAS        : AUXHFRCOCAL12_CMPBIAS_Field;
      LDOHP          : AUXHFRCOCAL12_LDOHP_Field;
      CLKDIV         : AUXHFRCOCAL12_CLKDIV_Field;
      FINETUNINGEN   : AUXHFRCOCAL12_FINETUNINGEN_Field;
      VREFTC         : AUXHFRCOCAL12_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for AUXHFRCOCAL12_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype AUXHFRCOCAL13_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype AUXHFRCOCAL13_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype AUXHFRCOCAL13_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype AUXHFRCOCAL13_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype AUXHFRCOCAL13_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL13_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype AUXHFRCOCAL13_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL13_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type AUXHFRCOCAL13_Register is record 
      TUNING         : AUXHFRCOCAL13_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : AUXHFRCOCAL13_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : AUXHFRCOCAL13_FREQRANGE_Field;
      CMPBIAS        : AUXHFRCOCAL13_CMPBIAS_Field;
      LDOHP          : AUXHFRCOCAL13_LDOHP_Field;
      CLKDIV         : AUXHFRCOCAL13_CLKDIV_Field;
      FINETUNINGEN   : AUXHFRCOCAL13_FINETUNINGEN_Field;
      VREFTC         : AUXHFRCOCAL13_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for AUXHFRCOCAL13_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype AUXHFRCOCAL14_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype AUXHFRCOCAL14_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype AUXHFRCOCAL14_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype AUXHFRCOCAL14_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype AUXHFRCOCAL14_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL14_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype AUXHFRCOCAL14_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype AUXHFRCOCAL14_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type AUXHFRCOCAL14_Register is record 
      TUNING         : AUXHFRCOCAL14_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : AUXHFRCOCAL14_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : AUXHFRCOCAL14_FREQRANGE_Field;
      CMPBIAS        : AUXHFRCOCAL14_CMPBIAS_Field;
      LDOHP          : AUXHFRCOCAL14_LDOHP_Field;
      CLKDIV         : AUXHFRCOCAL14_CLKDIV_Field;
      FINETUNINGEN   : AUXHFRCOCAL14_FINETUNINGEN_Field;
      VREFTC         : AUXHFRCOCAL14_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for AUXHFRCOCAL14_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;
   
   subtype VMONCAL0_AVDD1V86THRESFINE_Field      is Interfaces.EFM32.UInt4;
   subtype VMONCAL0_AVDD1V86THRESCOARSE_Field    is Interfaces.EFM32.UInt4;
   subtype VMONCAL0_AVDD2V98THRESFINE_Field      is Interfaces.EFM32.UInt4;
   subtype VMONCAL0_AVDD2V98THRESCOARSE_Field    is Interfaces.EFM32.UInt4;
   subtype VMONCAL0_ALTAVDD1V86THRESFINE_Field   is Interfaces.EFM32.UInt4;
   subtype VMONCAL0_ALTAVDD1V86THRESCOARSE_Field is Interfaces.EFM32.UInt4;
   subtype VMONCAL0_ALTAVDD2V98THRESFINE_Field   is Interfaces.EFM32.UInt4;
   subtype VMONCAL0_ALTAVDD2V98THRESCOARSE_Field is Interfaces.EFM32.UInt4;

   type VMONCAL0_Register is record 
      AVDD1V86THRESFINE      : VMONCAL0_AVDD1V86THRESFINE_Field;
      AVDD1V86THRESCOARSE    : VMONCAL0_AVDD1V86THRESCOARSE_Field;
      AVDD2V98THRESFINE      : VMONCAL0_AVDD2V98THRESFINE_Field;
      AVDD2V98THRESCOARSE    : VMONCAL0_AVDD2V98THRESCOARSE_Field;
      ALTAVDD1V86THRESFINE   : VMONCAL0_ALTAVDD1V86THRESFINE_Field;
      ALTAVDD1V86THRESCOARSE : VMONCAL0_ALTAVDD1V86THRESCOARSE_Field;
      ALTAVDD2V98THRESFINE   : VMONCAL0_ALTAVDD2V98THRESFINE_Field;
      ALTAVDD2V98THRESCOARSE : VMONCAL0_ALTAVDD2V98THRESCOARSE_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for VMONCAL0_Register use record
      AVDD1V86THRESFINE      at 0 range  0 ..  3;
      AVDD1V86THRESCOARSE    at 0 range  4 ..  7;
      AVDD2V98THRESFINE      at 0 range  8 .. 11;
      AVDD2V98THRESCOARSE    at 0 range 12 .. 15;
      ALTAVDD1V86THRESFINE   at 0 range 16 .. 19;
      ALTAVDD1V86THRESCOARSE at 0 range 20 .. 23;
      ALTAVDD2V98THRESFINE   at 0 range 24 .. 27;
      ALTAVDD2V98THRESCOARSE at 0 range 28 .. 31;
   end record;

   subtype VMONCAL1_DVDD1V86THRESFINE_Field      is Interfaces.EFM32.UInt4;
   subtype VMONCAL1_DVDD1V86THRESCOARSE_Field    is Interfaces.EFM32.UInt4;
   subtype VMONCAL1_DVDD2V98THRESFINE_Field      is Interfaces.EFM32.UInt4;
   subtype VMONCAL1_DVDD2V98THRESCOARSE_Field    is Interfaces.EFM32.UInt4;
   subtype VMONCAL1_IO01V86THRESFINE_Field       is Interfaces.EFM32.UInt4;
   subtype VMONCAL1_IO01V86THRESCOARSE_Field     is Interfaces.EFM32.UInt4;
   subtype VMONCAL1_IO02V98THRESFINE_Field       is Interfaces.EFM32.UInt4;
   subtype VMONCAL1_IO02V98THRESCOARSE_Field     is Interfaces.EFM32.UInt4;

   type VMONCAL1_Register is record 
      DVDD1V86THRESFINE      : VMONCAL1_DVDD1V86THRESFINE_Field;
      DVDD1V86THRESCOARSE    : VMONCAL1_DVDD1V86THRESCOARSE_Field;
      DVDD2V98THRESFINE      : VMONCAL1_DVDD2V98THRESFINE_Field;
      DVDD2V98THRESCOARSE    : VMONCAL1_DVDD2V98THRESCOARSE_Field;
      IO01V86THRESFINE       : VMONCAL1_IO01V86THRESFINE_Field;
      IO01V86THRESCOARSE     : VMONCAL1_IO01V86THRESCOARSE_Field;
      IO02V98THRESFINE       : VMONCAL1_IO02V98THRESFINE_Field;
      IO02V98THRESCOARSE     : VMONCAL1_IO02V98THRESCOARSE_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for VMONCAL1_Register use record
      DVDD1V86THRESFINE      at 0 range  0 ..  3;
      DVDD1V86THRESCOARSE    at 0 range  4 ..  7;
      DVDD2V98THRESFINE      at 0 range  8 .. 11;
      DVDD2V98THRESCOARSE    at 0 range 12 .. 15;
      IO01V86THRESFINE       at 0 range 16 .. 19;
      IO01V86THRESCOARSE     at 0 range 20 .. 23;
      IO02V98THRESFINE       at 0 range 24 .. 27;
      IO02V98THRESCOARSE     at 0 range 28 .. 31;
   end record;

   subtype VMONCAL2_BUVDD1V86THRESFINE_Field     is Interfaces.EFM32.UInt4;
   subtype VMONCAL2_BUVDD1V86THRESCOARSE_Field   is Interfaces.EFM32.UInt4;
   subtype VMONCAL2_BUVDD2V98THRESFINE_Field     is Interfaces.EFM32.UInt4;
   subtype VMONCAL2_BUVDD2V98THRESCOARSE_Field   is Interfaces.EFM32.UInt4;
   subtype VMONCAL2_IO11V86THRESFINE_Field       is Interfaces.EFM32.UInt4;
   subtype VMONCAL2_IO11V86THRESCOARSE_Field     is Interfaces.EFM32.UInt4;
   subtype VMONCAL2_IO12V98THRESFINE_Field       is Interfaces.EFM32.UInt4;
   subtype VMONCAL2_IO12V98THRESCOARSE_Field     is Interfaces.EFM32.UInt4;

   type VMONCAL2_Register is record 
      BUVDD1V86THRESFINE    : VMONCAL2_BUVDD1V86THRESFINE_Field;
      BUVDD1V86THRESCOARSE  : VMONCAL2_BUVDD1V86THRESCOARSE_Field;
      BUVDD2V98THRESFINE    : VMONCAL2_BUVDD2V98THRESFINE_Field;
      BUVDD2V98THRESCOARSE  : VMONCAL2_BUVDD2V98THRESCOARSE_Field;
      IO11V86THRESFINE      : VMONCAL2_IO11V86THRESFINE_Field;
      IO11V86THRESCOARSE    : VMONCAL2_IO11V86THRESCOARSE_Field;
      IO12V98THRESFINE      : VMONCAL2_IO12V98THRESFINE_Field;
      IO12V98THRESCOARSE    : VMONCAL2_IO12V98THRESCOARSE_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for VMONCAL2_Register use record
      BUVDD1V86THRESFINE      at 0 range  0 ..  3;
      BUVDD1V86THRESCOARSE    at 0 range  4 ..  7;
      BUVDD2V98THRESFINE      at 0 range  8 .. 11;
      BUVDD2V98THRESCOARSE    at 0 range 12 .. 15;
      IO11V86THRESFINE         at 0 range 16 .. 19;
      IO11V86THRESCOARSE       at 0 range 20 .. 23;
      IO12V98THRESFINE         at 0 range 24 .. 27;
      IO12V98THRESCOARSE       at 0 range 28 .. 31;
   end record;

   subtype IDAC0CAL0_SOURCERANGE0TUNING_Field is Interfaces.EFM32.Byte;
   subtype IDAC0CAL0_SOURCERANGE1TUNING_Field is Interfaces.EFM32.Byte;
   subtype IDAC0CAL0_SOURCERANGE2TUNING_Field is Interfaces.EFM32.Byte;
   subtype IDAC0CAL0_SOURCERANGE3TUNING_Field is Interfaces.EFM32.Byte;

   type IDAC0CAL0_Register is record 
      SOURCERANGE0TUNING : IDAC0CAL0_SOURCERANGE0TUNING_Field;
      SOURCERANGE1TUNING : IDAC0CAL0_SOURCERANGE1TUNING_Field;
      SOURCERANGE2TUNING : IDAC0CAL0_SOURCERANGE2TUNING_Field;
      SOURCERANGE3TUNING : IDAC0CAL0_SOURCERANGE3TUNING_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for IDAC0CAL0_Register use record
      SOURCERANGE0TUNING at 0 range  0 ..  7;
      SOURCERANGE1TUNING at 0 range  8 .. 15;
      SOURCERANGE2TUNING at 0 range 16 .. 23;
      SOURCERANGE3TUNING at 0 range 24 .. 31;
   end record;

   subtype IDAC0CAL1_SINKRANGE0TUNING_Field is Interfaces.EFM32.Byte;
   subtype IDAC0CAL1_SINKRANGE1TUNING_Field is Interfaces.EFM32.Byte;
   subtype IDAC0CAL1_SINKRANGE2TUNING_Field is Interfaces.EFM32.Byte;
   subtype IDAC0CAL1_SINKRANGE3TUNING_Field is Interfaces.EFM32.Byte;

   type IDAC0CAL1_Register is record 
      SINKRANGE0TUNING : IDAC0CAL1_SINKRANGE0TUNING_Field;
      SINKRANGE1TUNING : IDAC0CAL1_SINKRANGE1TUNING_Field;
      SINKRANGE2TUNING : IDAC0CAL1_SINKRANGE2TUNING_Field;
      SINKRANGE3TUNING : IDAC0CAL1_SINKRANGE3TUNING_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for IDAC0CAL1_Register use record
      SINKRANGE0TUNING at 0 range  0 ..  7;
      SINKRANGE1TUNING at 0 range  8 .. 15;
      SINKRANGE2TUNING at 0 range 16 .. 23;
      SINKRANGE3TUNING at 0 range 24 .. 31;
   end record;

   subtype DCDCLNVCTRL0_1V2LNATT0_Field is Interfaces.EFM32.Byte;
   subtype DCDCLNVCTRL0_1V8LNATT0_Field is Interfaces.EFM32.Byte;
   subtype DCDCLNVCTRL0_1V8LNATT1_Field is Interfaces.EFM32.Byte;
   subtype DCDCLNVCTRL0_3V0LNATT1_Field is Interfaces.EFM32.Byte;

   type DCDCLNVCTRL0_Register is record 
      LNATT01V2 : DCDCLNVCTRL0_1V2LNATT0_Field;
      LNATT01V8 : DCDCLNVCTRL0_1V8LNATT0_Field;
      LNATT11V8 : DCDCLNVCTRL0_1V8LNATT1_Field;
      LNATT13V0 : DCDCLNVCTRL0_3V0LNATT1_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for DCDCLNVCTRL0_Register use record
      LNATT01V2 at 0 range  0 ..  7;
      LNATT01V8 at 0 range  8 .. 15;
      LNATT11V8 at 0 range 16 .. 23;
      LNATT13V0 at 0 range 24 .. 31;
   end record;

   subtype DCDCLPVCTRL0_1V2LPATT0LPCMPBIAS0_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPVCTRL0_1V8LPATT0LPCMPBIAS0_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPVCTRL0_1V2LPATT0LPCMPBIAS1_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPVCTRL0_1V8LPATT0LPCMPBIAS1_Field is Interfaces.EFM32.Byte;

   type DCDCLPVCTRL0_Register is record 
      LPATT0LPCMPBIAS01V2 : DCDCLPVCTRL0_1V2LPATT0LPCMPBIAS0_Field;
      LPATT0LPCMPBIAS01V8 : DCDCLPVCTRL0_1V8LPATT0LPCMPBIAS0_Field;
      LPATT0LPCMPBIAS11V2 : DCDCLPVCTRL0_1V2LPATT0LPCMPBIAS1_Field;
      LPATT0LPCMPBIAS11V8 : DCDCLPVCTRL0_1V8LPATT0LPCMPBIAS1_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for DCDCLPVCTRL0_Register use record
      LPATT0LPCMPBIAS01V2 at 0 range  0 ..  7;
      LPATT0LPCMPBIAS01V8 at 0 range  8 .. 15;
      LPATT0LPCMPBIAS11V2 at 0 range 16 .. 23;
      LPATT0LPCMPBIAS11V8 at 0 range 24 .. 31;
   end record;

   subtype DCDCLPVCTRL1_1V2LPATT0LPCMPBIAS2_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPVCTRL1_1V8LPATT0LPCMPBIAS2_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPVCTRL1_1V2LPATT0LPCMPBIAS3_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPVCTRL1_1V8LPATT0LPCMPBIAS3_Field is Interfaces.EFM32.Byte;

   type DCDCLPVCTRL1_Register is record 
      LPATT0LPCMPBIAS21V2 : DCDCLPVCTRL1_1V2LPATT0LPCMPBIAS2_Field;
      LPATT0LPCMPBIAS21V8 : DCDCLPVCTRL1_1V8LPATT0LPCMPBIAS2_Field;
      LPATT0LPCMPBIAS31V2 : DCDCLPVCTRL1_1V2LPATT0LPCMPBIAS3_Field;
      LPATT0LPCMPBIAS31V8 : DCDCLPVCTRL1_1V8LPATT0LPCMPBIAS3_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for DCDCLPVCTRL1_Register use record
      LPATT0LPCMPBIAS21V2 at 0 range  0 ..  7;
      LPATT0LPCMPBIAS21V8 at 0 range  8 .. 15;
      LPATT0LPCMPBIAS31V2 at 0 range 16 .. 23;
      LPATT0LPCMPBIAS31V8 at 0 range 24 .. 31;
   end record;

   subtype DCDCLPVCTRL2_1V8LPATT1LPCMPBIAS0_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPVCTRL2_3V0LPATT1LPCMPBIAS0_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPVCTRL2_1V8LPATT1LPCMPBIAS1_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPVCTRL2_3V0LPATT1LPCMPBIAS1_Field is Interfaces.EFM32.Byte;

   type DCDCLPVCTRL2_Register is record 
      LPATT1LPCMPBIAS01V8 : DCDCLPVCTRL2_1V8LPATT1LPCMPBIAS0_Field;
      LPATT1LPCMPBIAS03V0 : DCDCLPVCTRL2_3V0LPATT1LPCMPBIAS0_Field;
      LPATT1LPCMPBIAS11V8 : DCDCLPVCTRL2_1V8LPATT1LPCMPBIAS1_Field;
      LPATT1LPCMPBIAS13V0 : DCDCLPVCTRL2_3V0LPATT1LPCMPBIAS1_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for DCDCLPVCTRL2_Register use record
      LPATT1LPCMPBIAS01V8 at 0 range  0 ..  7;
      LPATT1LPCMPBIAS03V0 at 0 range  8 .. 15;
      LPATT1LPCMPBIAS11V8 at 0 range 16 .. 23;
      LPATT1LPCMPBIAS13V0 at 0 range 24 .. 31;
   end record;

   subtype DCDCLPVCTRL3_1V8LPATT1LPCMPBIAS2_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPVCTRL3_3V0LPATT1LPCMPBIAS2_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPVCTRL3_1V8LPATT1LPCMPBIAS3_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPVCTRL3_3V0LPATT1LPCMPBIAS3_Field is Interfaces.EFM32.Byte;

   type DCDCLPVCTRL3_Register is record 
      LPATT1LPCMPBIAS21V8 : DCDCLPVCTRL3_1V8LPATT1LPCMPBIAS2_Field;
      LPATT1LPCMPBIAS23V0 : DCDCLPVCTRL3_3V0LPATT1LPCMPBIAS2_Field;
      LPATT1LPCMPBIAS31V8 : DCDCLPVCTRL3_1V8LPATT1LPCMPBIAS3_Field;
      LPATT1LPCMPBIAS33V0 : DCDCLPVCTRL3_3V0LPATT1LPCMPBIAS3_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for DCDCLPVCTRL3_Register use record
      LPATT1LPCMPBIAS21V8 at 0 range  0 ..  7;
      LPATT1LPCMPBIAS23V0 at 0 range  8 .. 15;
      LPATT1LPCMPBIAS31V8 at 0 range 16 .. 23;
      LPATT1LPCMPBIAS33V0 at 0 range 24 .. 31;
   end record;

   subtype DCDCLPCMPHYSSEL0_LPCMPHYSSELPATT0_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPCMPHYSSEL0_LPCMPHYSSELPATT1_Field is Interfaces.EFM32.Byte;

   type DCDCLPCMPHYSSEL0_Register is record 
      LPCMPHYSSELPATT0 : DCDCLPCMPHYSSEL0_LPCMPHYSSELPATT0_Field;
      LPCMPHYSSELPATT1 : DCDCLPCMPHYSSEL0_LPCMPHYSSELPATT1_Field;
      Reserved_16_31   : Interfaces.EFM32.UInt16;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for DCDCLPCMPHYSSEL0_Register use record
      LPCMPHYSSELPATT0 at 0 range  0 ..  7;
      LPCMPHYSSELPATT1 at 0 range  8 .. 15;
      Reserved_16_31   at 0 range 16 .. 31;
   end record;

   subtype DCDCLPCMPHYSSEL1_LPCMPHYSSELLPCMBIAS0_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPCMPHYSSEL1_LPCMPHYSSELLPCMBIAS1_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPCMPHYSSEL1_LPCMPHYSSELLPCMBIAS2_Field is Interfaces.EFM32.Byte;
   subtype DCDCLPCMPHYSSEL1_LPCMPHYSSELLPCMBIAS3_Field is Interfaces.EFM32.Byte;

   type DCDCLPCMPHYSSEL1_Register is record 
      LPCMPHYSSELLPCMBIAS0 : DCDCLPCMPHYSSEL1_LPCMPHYSSELLPCMBIAS0_Field;
      LPCMPHYSSELLPCMBIAS1 : DCDCLPCMPHYSSEL1_LPCMPHYSSELLPCMBIAS1_Field;
      LPCMPHYSSELLPCMBIAS2 : DCDCLPCMPHYSSEL1_LPCMPHYSSELLPCMBIAS2_Field;
      LPCMPHYSSELLPCMBIAS3 : DCDCLPCMPHYSSEL1_LPCMPHYSSELLPCMBIAS3_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for DCDCLPCMPHYSSEL1_Register use record
      LPCMPHYSSELLPCMBIAS0 at 0 range  0 ..  7;
      LPCMPHYSSELLPCMBIAS1 at 0 range  8 .. 15;
      LPCMPHYSSELLPCMBIAS2 at 0 range 16 .. 23;
      LPCMPHYSSELLPCMBIAS3 at 0 range 24 .. 31;
   end record;

   subtype VDAC0MAINCAL_GAINERRTRIM1V25LN_Field       is Interfaces.EFM32.UInt6;
   subtype VDAC0MAINCAL_GAINERRTRIM2V5LN_Field        is Interfaces.EFM32.UInt6;
   subtype VDAC0MAINCAL_GAINERRTRIM1V25_Field         is Interfaces.EFM32.UInt6;
   subtype VDAC0MAINCAL_GAINERRTRIM2V5_Field          is Interfaces.EFM32.UInt6;
   subtype VDAC0MAINCAL_GAINERRTRIMVDDANAEXTPIN_Field is Interfaces.EFM32.UInt6;

   type VDAC0MAINCAL_Register is record 
      GAINERRTRIM1V25LN       : VDAC0MAINCAL_GAINERRTRIM1V25LN_Field;
      GAINERRTRIM2V5LN        : VDAC0MAINCAL_GAINERRTRIM2V5LN_Field;
      GAINERRTRIM1V25         : VDAC0MAINCAL_GAINERRTRIM1V25_Field;
      GAINERRTRIM2V5          : VDAC0MAINCAL_GAINERRTRIM2V5_Field;
      GAINERRTRIMVDDANAEXTPIN : VDAC0MAINCAL_GAINERRTRIMVDDANAEXTPIN_Field;
      Reserved_30_31          : Interfaces.EFM32.UInt2;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for VDAC0MAINCAL_Register use record
      GAINERRTRIM1V25LN       at 0 range  0 ..  5;
      GAINERRTRIM2V5LN        at 0 range  6 .. 11;
      GAINERRTRIM1V25         at 0 range 12 .. 17;
      GAINERRTRIM2V5          at 0 range 18 .. 23;
      GAINERRTRIMVDDANAEXTPIN at 0 range 24 .. 29;
      Reserved_30_31          at 0 range 30 .. 31;
   end record;

   subtype VDAC0ALTCAL_GAINERRTRIM1V25LNALT_Field       is Interfaces.EFM32.UInt6;
   subtype VDAC0ALTCAL_GAINERRTRIM2V5LNALT_Field        is Interfaces.EFM32.UInt6;
   subtype VDAC0ALTCAL_GAINERRTRIM1V25ALT_Field         is Interfaces.EFM32.UInt6;
   subtype VDAC0ALTCAL_GAINERRTRIM2V5ALT_Field          is Interfaces.EFM32.UInt6;
   subtype VDAC0ALTCAL_GAINERRTRIMVDDANAEXTPINALT_Field is Interfaces.EFM32.UInt6;

   type VDAC0ALTCAL_Register is record 
      GAINERRTRIM1V25LNALT       : VDAC0ALTCAL_GAINERRTRIM1V25LNALT_Field;
      GAINERRTRIM2V5LNALT        : VDAC0ALTCAL_GAINERRTRIM2V5LNALT_Field;
      GAINERRTRIM1V25ALT         : VDAC0ALTCAL_GAINERRTRIM1V25ALT_Field;
      GAINERRTRIM2V5ALT          : VDAC0ALTCAL_GAINERRTRIM2V5ALT_Field;
      GAINERRTRIMVDDANAEXTPINALT : VDAC0ALTCAL_GAINERRTRIMVDDANAEXTPINALT_Field;
      Reserved_30_31             : Interfaces.EFM32.UInt2;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for VDAC0ALTCAL_Register use record
      GAINERRTRIM1V25LNALT       at 0 range  0 .. 5;
      GAINERRTRIM2V5LNALT        at 0 range  6 .. 11;
      GAINERRTRIM1V25ALT         at 0 range 12 .. 17;
      GAINERRTRIM2V5ALT          at 0 range 18 .. 23;
      GAINERRTRIMVDDANAEXTPINALT at 0 range 24 .. 29;
      Reserved_30_31             at 0 range 30 .. 31;
   end record;

   subtype VDAC0CH1CAL_OFFSETTRIM_Field      is Interfaces.EFM32.UInt3;
   subtype VDAC0CH1CAL_GAINERRTRIMCH1A_Field is Interfaces.EFM32.UInt4;
   subtype VDAC0CH1CAL_GAINERRTRIMCH1B_Field is Interfaces.EFM32.UInt4;

   type VDAC0CH1CAL_Register is record 
      OFFSETTRIM      : VDAC0CH1CAL_OFFSETTRIM_Field;
      Reserved_3_3    : Interfaces.EFM32.Bit;
      GAINERRTRIMCH1A : VDAC0CH1CAL_GAINERRTRIMCH1A_Field;
      GAINERRTRIMCH1B : VDAC0CH1CAL_GAINERRTRIMCH1B_Field;
      Reserved_12_31  : Interfaces.EFM32.UInt20;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for VDAC0CH1CAL_Register use record
      OFFSETTRIM      at 0 range  0 ..  2;
      Reserved_3_3    at 0 range  3 ..  3;
      GAINERRTRIMCH1A at 0 range  4 ..  7;
      GAINERRTRIMCH1B at 0 range  8 .. 11;
      Reserved_12_31  at 0 range 12 .. 31;
   end record;

   subtype OPA0CAL0_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL0_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL0_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL0_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA0CAL0_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL0_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA0CAL0_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA0CAL0_Register is record 
      CM1            : OPA0CAL0_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA0CAL0_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA0CAL0_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA0CAL0_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA0CAL0_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA0CAL0_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA0CAL0_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA0CAL0_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA0CAL1_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL1_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL1_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL1_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA0CAL1_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL1_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA0CAL1_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA0CAL1_Register is record 
      CM1            : OPA0CAL1_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA0CAL1_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA0CAL1_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA0CAL1_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA0CAL1_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA0CAL1_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA0CAL1_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA0CAL1_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA0CAL2_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL2_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL2_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL2_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA0CAL2_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL2_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA0CAL2_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA0CAL2_Register is record 
      CM1            : OPA0CAL2_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA0CAL2_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA0CAL2_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA0CAL2_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA0CAL2_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA0CAL2_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA0CAL2_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA0CAL2_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA0CAL3_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL3_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL3_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL3_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA0CAL3_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL3_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA0CAL3_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA0CAL3_Register is record 
      CM1            : OPA0CAL3_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA0CAL3_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA0CAL3_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA0CAL3_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA0CAL3_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA0CAL3_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA0CAL3_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA0CAL3_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA0CAL4_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL4_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL4_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL4_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA0CAL4_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL4_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA0CAL4_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA0CAL4_Register is record 
      CM1            : OPA0CAL4_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA0CAL4_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA0CAL4_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA0CAL4_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA0CAL4_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA0CAL4_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA0CAL4_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA0CAL4_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA0CAL5_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL5_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL5_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL5_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA0CAL5_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL5_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA0CAL5_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA0CAL5_Register is record 
      CM1            : OPA0CAL5_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA0CAL5_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA0CAL5_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA0CAL5_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA0CAL5_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA0CAL5_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA0CAL5_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA0CAL5_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA0CAL6_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL6_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL6_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL6_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA0CAL6_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL6_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA0CAL6_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA0CAL6_Register is record 
      CM1            : OPA0CAL6_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA0CAL6_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA0CAL6_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA0CAL6_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA0CAL6_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA0CAL6_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA0CAL6_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA0CAL6_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA0CAL7_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL7_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA0CAL7_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL7_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA0CAL7_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA0CAL7_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA0CAL7_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA0CAL7_Register is record 
      CM1            : OPA0CAL7_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA0CAL7_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA0CAL7_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA0CAL7_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA0CAL7_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA0CAL7_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA0CAL7_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA0CAL7_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA1CAL0_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL0_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL0_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL0_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA1CAL0_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL0_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA1CAL0_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA1CAL0_Register is record 
      CM1            : OPA1CAL0_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA1CAL0_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA1CAL0_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA1CAL0_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA1CAL0_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA1CAL0_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA1CAL0_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA1CAL0_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA1CAL1_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL1_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL1_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL1_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA1CAL1_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL1_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA1CAL1_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA1CAL1_Register is record 
      CM1            : OPA1CAL1_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA1CAL1_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA1CAL1_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA1CAL1_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA1CAL1_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA1CAL1_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA1CAL1_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA1CAL1_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA1CAL2_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL2_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL2_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL2_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA1CAL2_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL2_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA1CAL2_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA1CAL2_Register is record 
      CM1            : OPA1CAL2_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA1CAL2_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA1CAL2_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA1CAL2_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA1CAL2_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA1CAL2_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA1CAL2_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA1CAL2_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA1CAL3_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL3_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL3_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL3_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA1CAL3_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL3_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA1CAL3_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA1CAL3_Register is record 
      CM1            : OPA1CAL3_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA1CAL3_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA1CAL3_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA1CAL3_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA1CAL3_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA1CAL3_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA1CAL3_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA1CAL3_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA1CAL4_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL4_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL4_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL4_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA1CAL4_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL4_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA1CAL4_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA1CAL4_Register is record 
      CM1            : OPA1CAL4_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA1CAL4_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA1CAL4_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA1CAL4_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA1CAL4_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA1CAL4_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA1CAL4_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA1CAL4_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA1CAL5_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL5_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL5_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL5_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA1CAL5_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL5_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA1CAL5_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA1CAL5_Register is record 
      CM1            : OPA1CAL5_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA1CAL5_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA1CAL5_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA1CAL5_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA1CAL5_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA1CAL5_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA1CAL5_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA1CAL5_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA1CAL6_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL6_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL6_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL6_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA1CAL6_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL6_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA1CAL6_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA1CAL6_Register is record 
      CM1            : OPA1CAL6_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA1CAL6_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA1CAL6_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA1CAL6_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA1CAL6_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA1CAL6_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA1CAL6_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA1CAL6_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA1CAL7_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL7_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA1CAL7_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL7_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA1CAL7_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA1CAL7_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA1CAL7_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA1CAL7_Register is record 
      CM1            : OPA1CAL7_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA1CAL7_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA1CAL7_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA1CAL7_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA1CAL7_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA1CAL7_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA1CAL7_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA1CAL7_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA2CAL0_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL0_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL0_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL0_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA2CAL0_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL0_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA2CAL0_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA2CAL0_Register is record 
      CM1            : OPA2CAL0_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA2CAL0_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA2CAL0_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA2CAL0_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA2CAL0_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA2CAL0_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA2CAL0_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA2CAL0_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA2CAL1_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL1_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL1_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL1_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA2CAL1_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL1_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA2CAL1_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA2CAL1_Register is record 
      CM1            : OPA2CAL1_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA2CAL1_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA2CAL1_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA2CAL1_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA2CAL1_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA2CAL1_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA2CAL1_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA2CAL1_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA2CAL2_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL2_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL2_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL2_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA2CAL2_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL2_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA2CAL2_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA2CAL2_Register is record 
      CM1            : OPA2CAL2_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA2CAL2_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA2CAL2_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA2CAL2_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA2CAL2_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA2CAL2_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA2CAL2_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA2CAL2_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA2CAL3_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL3_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL3_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL3_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA2CAL3_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL3_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA2CAL3_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA2CAL3_Register is record 
      CM1            : OPA2CAL3_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA2CAL3_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA2CAL3_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA2CAL3_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA2CAL3_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA2CAL3_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA2CAL3_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA2CAL3_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA2CAL4_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL4_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL4_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL4_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA2CAL4_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL4_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA2CAL4_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA2CAL4_Register is record 
      CM1            : OPA2CAL4_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA2CAL4_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA2CAL4_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA2CAL4_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA2CAL4_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA2CAL4_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA2CAL4_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA2CAL4_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA2CAL5_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL5_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL5_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL5_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA2CAL5_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL5_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA2CAL5_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA2CAL5_Register is record 
      CM1            : OPA2CAL5_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA2CAL5_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA2CAL5_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA2CAL5_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA2CAL5_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA2CAL5_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA2CAL5_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA2CAL5_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA2CAL6_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL6_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL6_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL6_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA2CAL6_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL6_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA2CAL6_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA2CAL6_Register is record 
      CM1            : OPA2CAL6_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA2CAL6_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA2CAL6_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA2CAL6_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA2CAL6_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA2CAL6_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA2CAL6_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA2CAL6_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA2CAL7_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL7_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA2CAL7_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL7_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA2CAL7_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA2CAL7_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA2CAL7_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA2CAL7_Register is record 
      CM1            : OPA2CAL7_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA2CAL7_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA2CAL7_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA2CAL7_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA2CAL7_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA2CAL7_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA2CAL7_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA2CAL7_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA3CAL0_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL0_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL0_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL0_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA3CAL0_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL0_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA3CAL0_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA3CAL0_Register is record 
      CM1            : OPA3CAL0_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA3CAL0_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA3CAL0_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA3CAL0_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA3CAL0_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA3CAL0_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA3CAL0_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA3CAL0_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA3CAL1_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL1_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL1_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL1_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA3CAL1_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL1_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA3CAL1_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA3CAL1_Register is record 
      CM1            : OPA3CAL1_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA3CAL1_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA3CAL1_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA3CAL1_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA3CAL1_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA3CAL1_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA3CAL1_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA3CAL1_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA3CAL2_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL2_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL2_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL2_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA3CAL2_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL2_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA3CAL2_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA3CAL2_Register is record 
      CM1            : OPA3CAL2_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA3CAL2_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA3CAL2_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA3CAL2_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA3CAL2_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA3CAL2_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA3CAL2_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA3CAL2_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA3CAL3_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL3_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL3_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL3_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA3CAL3_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL3_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA3CAL3_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA3CAL3_Register is record 
      CM1            : OPA3CAL3_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA3CAL3_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA3CAL3_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA3CAL3_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA3CAL3_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA3CAL3_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA3CAL3_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA3CAL3_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA3CAL4_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL4_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL4_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL4_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA3CAL4_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL4_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA3CAL4_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA3CAL4_Register is record 
      CM1            : OPA3CAL4_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA3CAL4_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA3CAL4_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA3CAL4_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA3CAL4_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA3CAL4_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA3CAL4_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA3CAL4_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA3CAL5_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL5_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL5_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL5_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA3CAL5_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL5_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA3CAL5_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA3CAL5_Register is record 
      CM1            : OPA3CAL5_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA3CAL5_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA3CAL5_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA3CAL5_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA3CAL5_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA3CAL5_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA3CAL5_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA3CAL5_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA3CAL6_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL6_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL6_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL6_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA3CAL6_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL6_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA3CAL6_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA3CAL6_Register is record 
      CM1            : OPA3CAL6_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA3CAL6_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA3CAL6_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA3CAL6_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA3CAL6_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA3CAL6_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA3CAL6_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA3CAL6_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OPA3CAL7_CM1_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL7_CM2_Field     is Interfaces.EFM32.Uint4;
   subtype OPA3CAL7_CM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL7_GM_Field      is Interfaces.EFM32.Uint3;
   subtype OPA3CAL7_GM3_Field     is Interfaces.EFM32.Uint2;
   subtype OPA3CAL7_OFFSETP_Field is Interfaces.EFM32.Uint5;
   subtype OPA3CAL7_OFFSETN_Field is Interfaces.EFM32.Uint5;

   type OPA3CAL7_Register is record 
      CM1            : OPA3CAL7_CM1_Field;
      Reserved_4_4   : Interfaces.EFM32.Bit;
      CM2            : OPA3CAL7_CM2_Field;
      Reserved_9_9   : Interfaces.EFM32.Bit;
      CM3            : OPA3CAL7_CM3_Field;
      Reserved_12_12 : Interfaces.EFM32.Bit;
      GM             : OPA3CAL7_GM_Field;
      Reserved_16_16 : Interfaces.EFM32.Bit;
      GM3            : OPA3CAL7_GM3_Field;
      Reserved_19_19 : Interfaces.EFM32.Bit;
      OFFSETP        : OPA3CAL7_OFFSETP_Field;
      Reserved_25_25 : Interfaces.EFM32.Bit;
      OFFSETN        : OPA3CAL7_OFFSETN_Field;
      Reserved_31_31 : Interfaces.EFM32.Bit;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for OPA3CAL7_Register use record
      CM1            at 0 range  0 ..  3;
      Reserved_4_4   at 0 range  4 ..  4;
      CM2            at 0 range  5 ..  8;
      Reserved_9_9   at 0 range  9 ..  9;
      CM3            at 0 range 10 .. 11;
      Reserved_12_12 at 0 range 12 .. 12;
      GM             at 0 range 13 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      GM3            at 0 range 17 .. 18;
      Reserved_19_19 at 0 range 19 .. 19;
      OFFSETP        at 0 range 20 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      OFFSETN        at 0 range 26 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype CSENGAINCAL_GAINCAL_Field is Interfaces.EFM32.Byte;

   type CSENGAINCAL_Register is record 
      GAINCAL       : CSENGAINCAL_GAINCAL_Field;
      Reserved_8_31 : Interfaces.EFM32.UInt24;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for CSENGAINCAL_Register use record
      GAINCAL       at 0 range  0 ..  7;
      Reserved_8_31 at 0 range  8 .. 31;
   end record;

   subtype USHFRCOCAL7_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype USHFRCOCAL7_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype USHFRCOCAL7_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype USHFRCOCAL7_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype USHFRCOCAL7_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype USHFRCOCAL7_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype USHFRCOCAL7_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype USHFRCOCAL7_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type USHFRCOCAL7_Register is record 
      TUNING         : USHFRCOCAL7_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : USHFRCOCAL7_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : USHFRCOCAL7_FREQRANGE_Field;
      CMPBIAS        : USHFRCOCAL7_CMPBIAS_Field;
      LDOHP          : USHFRCOCAL7_LDOHP_Field;
      CLKDIV         : USHFRCOCAL7_CLKDIV_Field;
      FINETUNINGEN   : USHFRCOCAL7_FINETUNINGEN_Field;
      VREFTC         : USHFRCOCAL7_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for USHFRCOCAL7_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype USHFRCOCAL11_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype USHFRCOCAL11_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype USHFRCOCAL11_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype USHFRCOCAL11_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype USHFRCOCAL11_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype USHFRCOCAL11_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype USHFRCOCAL11_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype USHFRCOCAL11_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type USHFRCOCAL11_Register is record 
      TUNING         : USHFRCOCAL11_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : USHFRCOCAL11_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : USHFRCOCAL11_FREQRANGE_Field;
      CMPBIAS        : USHFRCOCAL11_CMPBIAS_Field;
      LDOHP          : USHFRCOCAL11_LDOHP_Field;
      CLKDIV         : USHFRCOCAL11_CLKDIV_Field;
      FINETUNINGEN   : USHFRCOCAL11_FINETUNINGEN_Field;
      VREFTC         : USHFRCOCAL11_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for USHFRCOCAL11_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype USHFRCOCAL13_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype USHFRCOCAL13_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype USHFRCOCAL13_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype USHFRCOCAL13_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype USHFRCOCAL13_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype USHFRCOCAL13_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype USHFRCOCAL13_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype USHFRCOCAL13_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type USHFRCOCAL13_Register is record 
      TUNING         : USHFRCOCAL13_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : USHFRCOCAL13_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : USHFRCOCAL13_FREQRANGE_Field;
      CMPBIAS        : USHFRCOCAL13_CMPBIAS_Field;
      LDOHP          : USHFRCOCAL13_LDOHP_Field;
      CLKDIV         : USHFRCOCAL13_CLKDIV_Field;
      FINETUNINGEN   : USHFRCOCAL13_FINETUNINGEN_Field;
      VREFTC         : USHFRCOCAL13_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for USHFRCOCAL13_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   subtype USHFRCOCAL14_TUNING_Field       is Interfaces.EFM32.UInt7;
   subtype USHFRCOCAL14_FINETUNING_Field   is Interfaces.EFM32.UInt6;
   subtype USHFRCOCAL14_FREQRANGE_Field    is Interfaces.EFM32.UInt5;
   subtype USHFRCOCAL14_CMPBIAS_Field      is Interfaces.EFM32.UInt3;
   subtype USHFRCOCAL14_LDOHP_Field        is Interfaces.EFM32.Bit;
   subtype USHFRCOCAL14_CLKDIV_Field       is Interfaces.EFM32.UInt2;
   subtype USHFRCOCAL14_FINETUNINGEN_Field is Interfaces.EFM32.Bit;
   subtype USHFRCOCAL14_VREFTC_Field       is Interfaces.EFM32.UInt4;

   type USHFRCOCAL14_Register is record 
      TUNING         : USHFRCOCAL14_TUNING_Field;
      Reserved_7_7   : Interfaces.EFM32.Bit;
      FINETUNING     : USHFRCOCAL14_FINETUNING_Field;
      Reserved_14_15 : Interfaces.EFM32.UInt2;
      FREQRANGE      : USHFRCOCAL14_FREQRANGE_Field;
      CMPBIAS        : USHFRCOCAL14_CMPBIAS_Field;
      LDOHP          : USHFRCOCAL14_LDOHP_Field;
      CLKDIV         : USHFRCOCAL14_CLKDIV_Field;
      FINETUNINGEN   : USHFRCOCAL14_FINETUNINGEN_Field;
      VREFTC         : USHFRCOCAL14_VREFTC_Field;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for USHFRCOCAL14_Register use record
      TUNING         at 0 range  0 ..  6;
      Reserved_7_7   at 0 range  7 ..  7;
      FINETUNING     at 0 range  8 .. 13;
      Reserved_14_15 at 0 range 14 .. 15;
      FREQRANGE      at 0 range 16 .. 20;
      CMPBIAS        at 0 range 21 .. 23;
      LDOHP          at 0 range 24 .. 24;
      CLKDIV         at 0 range 25 .. 26;
      FINETUNINGEN   at 0 range 27 .. 27;
      VREFTC         at 0 range 28 .. 31;
   end record;

   type CURRMON5V_Register is record 
      Reserved_0_15  : Interfaces.EFM32.UInt16;
      Reserved_16_31 : Interfaces.EFM32.UInt16;
   end record
    with Volatile_Full_Access, Object_Size => 32, 
      Bit_Order => System.Low_Order_First;

   for CURRMON5V_Register use record
      Reserved_0_15  at 0 range  0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   
   -----------------
   -- Peripherals --
   -----------------

   type DI_Peripheral is record 
      CAL               : aliased CAL_Register;
      MODULEINFO        : aliased MODULEINFO_Register;
      MODXOCAL          : aliased MODXOCAL_Register;
      EXTINFO           : aliased EXTINFO_Register;
      EUI48L            : aliased EUI48L_Register;
      EUI48H            : aliased EUI48H_Register;
      CUSTOMINFO        : aliased CUSTOMINFO_Register;
      MEMINFO           : aliased MEMINFO_Register;
      UNIQUEL           : aliased UNIQUEL_Register;
      UNIQUEH           : aliased UNIQUEH_Register;
      MSIZE             : aliased MSIZE_Register;
      PART              : aliased PART_Register;
      DEVINFOREV        : aliased DEVINFOREV_Register;
      EMUTEMP           : aliased EMUTEMP_Register;
      ADC0CAL0          : aliased ADC0CAL0_Register;
      ADC0CAL1          : aliased ADC0CAL1_Register;
      ADC0CAL2          : aliased ADC0CAL2_Register;
      ADC0CAL3          : aliased ADC0CAL3_Register;
      ADC1CAL0          : aliased ADC1CAL0_Register;
      ADC1CAL1          : aliased ADC1CAL1_Register;
      ADC1CAL2          : aliased ADC1CAL2_Register;
      ADC1CAL3          : aliased ADC1CAL3_Register;
      HFRCOCAL0         : aliased HFRCOCAL0_Register;
      HFRCOCAL3         : aliased HFRCOCAL3_Register;
      HFRCOCAL6         : aliased HFRCOCAL6_Register;
      HFRCOCAL7         : aliased HFRCOCAL7_Register;
      HFRCOCAL8         : aliased HFRCOCAL8_Register;
      HFRCOCAL10        : aliased HFRCOCAL10_Register;
      HFRCOCAL11        : aliased HFRCOCAL11_Register;
      HFRCOCAL12        : aliased HFRCOCAL12_Register;
      HFRCOCAL13        : aliased HFRCOCAL13_Register;
      HFRCOCAL14        : aliased HFRCOCAL14_Register;
      HFRCOCAL15        : aliased HFRCOCAL15_Register;
      HFRCOCAL16        : aliased HFRCOCAL16_Register;
      AUXHFRCOCAL0      : aliased AUXHFRCOCAL0_Register;
      AUXHFRCOCAL3      : aliased AUXHFRCOCAL3_Register;
      AUXHFRCOCAL6      : aliased AUXHFRCOCAL6_Register;
      AUXHFRCOCAL7      : aliased AUXHFRCOCAL7_Register;
      AUXHFRCOCAL8      : aliased AUXHFRCOCAL8_Register;
      AUXHFRCOCAL10     : aliased AUXHFRCOCAL10_Register;
      AUXHFRCOCAL11     : aliased AUXHFRCOCAL11_Register;
      AUXHFRCOCAL12     : aliased AUXHFRCOCAL12_Register;
      AUXHFRCOCAL13     : aliased AUXHFRCOCAL13_Register;
      AUXHFRCOCAL14     : aliased AUXHFRCOCAL14_Register;
      VMONCAL0          : aliased VMONCAL0_Register;
      VMONCAL1          : aliased VMONCAL1_Register;
      VMONCAL2          : aliased VMONCAL2_Register;
      IDAC0CAL0         : aliased IDAC0CAL0_Register;
      IDAC0CAL1         : aliased IDAC0CAL1_Register;
      DCDCLNVCTRL0      : aliased DCDCLNVCTRL0_Register;
      DCDCLPVCTRL0      : aliased DCDCLPVCTRL0_Register;
      DCDCLPVCTRL1      : aliased DCDCLPVCTRL1_Register;
      DCDCLPVCTRL2      : aliased DCDCLPVCTRL2_Register;
      DCDCLPVCTRL3      : aliased DCDCLPVCTRL3_Register;
      DCDCLPCMPHYSSEL0  : aliased DCDCLPCMPHYSSEL0_Register;
      DCDCLPCMPHYSSEL1  : aliased DCDCLPCMPHYSSEL1_Register;
      VDAC0MAINCAL      : aliased VDAC0MAINCAL_Register;
      VDAC0ALTCAL       : aliased VDAC0ALTCAL_Register;
      VDAC0CH1CAL       : aliased VDAC0CH1CAL_Register;
      OPA0CAL0          : aliased OPA0CAL0_Register;
      OPA0CAL1          : aliased OPA0CAL1_Register;
      OPA0CAL2          : aliased OPA0CAL2_Register;
      OPA0CAL3          : aliased OPA0CAL3_Register;
      OPA0CAL4          : aliased OPA0CAL4_Register;
      OPA0CAL5          : aliased OPA0CAL5_Register;
      OPA0CAL6          : aliased OPA0CAL6_Register;
      OPA0CAL7          : aliased OPA0CAL7_Register;
      OPA1CAL0          : aliased OPA1CAL0_Register;
      OPA1CAL1          : aliased OPA1CAL1_Register;
      OPA1CAL2          : aliased OPA1CAL2_Register;
      OPA1CAL3          : aliased OPA1CAL3_Register;
      OPA1CAL4          : aliased OPA1CAL4_Register;
      OPA1CAL5          : aliased OPA1CAL5_Register;
      OPA1CAL6          : aliased OPA1CAL6_Register;
      OPA1CAL7          : aliased OPA1CAL7_Register;
      OPA2CAL0          : aliased OPA2CAL0_Register;
      OPA2CAL1          : aliased OPA2CAL1_Register;
      OPA2CAL2          : aliased OPA2CAL2_Register;
      OPA2CAL3          : aliased OPA2CAL3_Register;
      OPA2CAL4          : aliased OPA2CAL4_Register;
      OPA2CAL5          : aliased OPA2CAL5_Register;
      OPA2CAL6          : aliased OPA2CAL6_Register;
      OPA2CAL7          : aliased OPA2CAL7_Register;
      OPA3CAL0          : aliased OPA3CAL0_Register;
      OPA3CAL1          : aliased OPA3CAL1_Register;
      OPA3CAL2          : aliased OPA3CAL2_Register;
      OPA3CAL3          : aliased OPA3CAL3_Register;
      OPA3CAL4          : aliased OPA3CAL4_Register;
      OPA3CAL5          : aliased OPA3CAL5_Register;
      OPA3CAL6          : aliased OPA3CAL6_Register;
      OPA3CAL7          : aliased OPA3CAL7_Register;
      CSENGAINCAL       : aliased CSENGAINCAL_Register;
      USHFRCOCAL7       : aliased USHFRCOCAL7_Register;
      USHFRCOCAL11      : aliased USHFRCOCAL11_Register;
      USHFRCOCAL13      : aliased USHFRCOCAL13_Register;
      USHFRCOCAL14      : aliased USHFRCOCAL14_Register;
      CURRMON5V         : aliased CURRMON5V_Register;
   end record
      with Volatile;

   for DI_Peripheral use record
      CAL               at 16#000# range 0 .. 31;
      MODULEINFO        at 16#004# range 0 .. 31;
      MODXOCAL          at 16#008# range 0 .. 15;
      EXTINFO           at 16#020# range 0 .. 31;
      EUI48L            at 16#028# range 0 .. 31;
      EUI48H            at 16#02C# range 0 .. 31;
      CUSTOMINFO        at 16#030# range 0 .. 31;
      MEMINFO           at 16#034# range 0 .. 31;
      UNIQUEL           at 16#040# range 0 .. 31;
      UNIQUEH           at 16#044# range 0 .. 31;
      MSIZE             at 16#048# range 0 .. 31;
      PART              at 16#04C# range 0 .. 31;
      DEVINFOREV        at 16#050# range 0 .. 31;
      EMUTEMP           at 16#054# range 0 .. 31;
      ADC0CAL0          at 16#060# range 0 .. 31;
      ADC0CAL1          at 16#064# range 0 .. 31;
      ADC0CAL2          at 16#068# range 0 .. 31;
      ADC0CAL3          at 16#06C# range 0 .. 31;
      ADC1CAL0          at 16#070# range 0 .. 31;
      ADC1CAL1          at 16#074# range 0 .. 31;
      ADC1CAL2          at 16#078# range 0 .. 31;
      ADC1CAL3          at 16#07C# range 0 .. 31;
      HFRCOCAL0         at 16#080# range 0 .. 31;
      HFRCOCAL3         at 16#08C# range 0 .. 31;
      HFRCOCAL6         at 16#098# range 0 .. 31;
      HFRCOCAL7         at 16#09C# range 0 .. 31;
      HFRCOCAL8         at 16#0A0# range 0 .. 31;
      HFRCOCAL10        at 16#0A8# range 0 .. 31;
      HFRCOCAL11        at 16#0AC# range 0 .. 31;
      HFRCOCAL12        at 16#0B0# range 0 .. 31;
      HFRCOCAL13        at 16#0B4# range 0 .. 31;
      HFRCOCAL14        at 16#0B8# range 0 .. 31;
      HFRCOCAL15        at 16#0BC# range 0 .. 31;
      HFRCOCAL16        at 16#0C0# range 0 .. 31;
      AUXHFRCOCAL0      at 16#0E0# range 0 .. 31;
      AUXHFRCOCAL3      at 16#0EC# range 0 .. 31;
      AUXHFRCOCAL6      at 16#0F8# range 0 .. 31;
      AUXHFRCOCAL7      at 16#0FC# range 0 .. 31;
      AUXHFRCOCAL8      at 16#100# range 0 .. 31;
      AUXHFRCOCAL10     at 16#108# range 0 .. 31;
      AUXHFRCOCAL11     at 16#10C# range 0 .. 31;
      AUXHFRCOCAL12     at 16#110# range 0 .. 31;
      AUXHFRCOCAL13     at 16#114# range 0 .. 31;
      AUXHFRCOCAL14     at 16#118# range 0 .. 31;
      VMONCAL0          at 16#140# range 0 .. 31;
      VMONCAL1          at 16#144# range 0 .. 31;
      VMONCAL2          at 16#148# range 0 .. 31;
      IDAC0CAL0         at 16#158# range 0 .. 31;
      IDAC0CAL1         at 16#15C# range 0 .. 31;
      DCDCLNVCTRL0      at 16#168# range 0 .. 31;
      DCDCLPVCTRL0      at 16#16C# range 0 .. 31;
      DCDCLPVCTRL1      at 16#170# range 0 .. 31;
      DCDCLPVCTRL2      at 16#174# range 0 .. 31;
      DCDCLPVCTRL3      at 16#178# range 0 .. 31;
      DCDCLPCMPHYSSEL0  at 16#17C# range 0 .. 31;
      DCDCLPCMPHYSSEL1  at 16#180# range 0 .. 31;
      VDAC0MAINCAL      at 16#184# range 0 .. 31;
      VDAC0ALTCAL       at 16#188# range 0 .. 31;
      VDAC0CH1CAL       at 16#18C# range 0 .. 31;
      OPA0CAL0          at 16#190# range 0 .. 31;
      OPA0CAL1          at 16#194# range 0 .. 31;
      OPA0CAL2          at 16#198# range 0 .. 31;
      OPA0CAL3          at 16#19C# range 0 .. 31;
      OPA0CAL4          at 16#1A0# range 0 .. 31;
      OPA0CAL5          at 16#1A4# range 0 .. 31;
      OPA0CAL6          at 16#1A8# range 0 .. 31;
      OPA0CAL7          at 16#1AC# range 0 .. 31;
      OPA1CAL0          at 16#1B0# range 0 .. 31;
      OPA1CAL1          at 16#1B4# range 0 .. 31;
      OPA1CAL2          at 16#1B8# range 0 .. 31;
      OPA1CAL3          at 16#1BC# range 0 .. 31;
      OPA1CAL4          at 16#1C0# range 0 .. 31;
      OPA1CAL5          at 16#1C4# range 0 .. 31;
      OPA1CAL6          at 16#1C8# range 0 .. 31;
      OPA1CAL7          at 16#1CC# range 0 .. 31;
      OPA2CAL0          at 16#1D0# range 0 .. 31;
      OPA2CAL1          at 16#1D4# range 0 .. 31;
      OPA2CAL2          at 16#1D8# range 0 .. 31;
      OPA2CAL3          at 16#1DC# range 0 .. 31;
      OPA2CAL4          at 16#1E0# range 0 .. 31;
      OPA2CAL5          at 16#1E4# range 0 .. 31;
      OPA2CAL6          at 16#1E8# range 0 .. 31;
      OPA2CAL7          at 16#1EC# range 0 .. 31;
      OPA3CAL0          at 16#1F0# range 0 .. 31;
      OPA3CAL1          at 16#1F4# range 0 .. 31;
      OPA3CAL2          at 16#1F8# range 0 .. 31;
      OPA3CAL3          at 16#1FC# range 0 .. 31;
      OPA3CAL4          at 16#200# range 0 .. 31;
      OPA3CAL5          at 16#204# range 0 .. 31;
      OPA3CAL6          at 16#208# range 0 .. 31;
      OPA3CAL7          at 16#20C# range 0 .. 31;
      CSENGAINCAL       at 16#210# range 0 .. 31;
      USHFRCOCAL7       at 16#26C# range 0 .. 31;
      USHFRCOCAL11      at 16#27C# range 0 .. 31;
      USHFRCOCAL13      at 16#284# range 0 .. 31;
      USHFRCOCAL14      at 16#288# range 0 .. 31;
      CURRMON5V         at 16#2B0# range 0 .. 31;
   end record;

   --------------------
   -- Base addresses --
   --------------------
   DI_Base : constant System.Address := System'To_Address (16#0FE081B0#);

   DI_Periph : aliased DI_Peripheral
      with Import, Address => DI_Base; 

end Interfaces.EFM32.DI;
