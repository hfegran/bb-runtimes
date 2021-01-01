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

--  SMU
package Interfaces.EFM32.SMU is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype IF_PPUPRIV_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Register
   type IF_Register is record
      --  Read-only. PPU Privilege Interrupt Flag
      PPUPRIV       : IF_PPUPRIV_Field;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IF_Register use record
      PPUPRIV       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype IFS_PPUPRIV_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Set Register
   type IFS_Register is record
      --  Write-only. Set PPUPRIV Interrupt Flag
      PPUPRIV       : IFS_PPUPRIV_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFS_Register use record
      PPUPRIV       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype IFC_PPUPRIV_Field is Interfaces.EFM32.Bit;

   --  Interrupt Flag Clear Register
   type IFC_Register is record
      --  Write-only. Clear PPUPRIV Interrupt Flag
      PPUPRIV       : IFC_PPUPRIV_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IFC_Register use record
      PPUPRIV       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype IEN_PPUPRIV_Field is Interfaces.EFM32.Bit;

   --  Interrupt Enable Register
   type IEN_Register is record
      --  PPUPRIV Interrupt Enable
      PPUPRIV       : IEN_PPUPRIV_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for IEN_Register use record
      PPUPRIV       at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   subtype PPUCTRL_ENABLE_Field is Interfaces.EFM32.Bit;

   --  PPU Control Register
   type PPUCTRL_Register is record
      ENABLE        : PPUCTRL_ENABLE_Field := 16#0#;
      --  unspecified
      Reserved_1_31 : Interfaces.EFM32.UInt31 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PPUCTRL_Register use record
      ENABLE        at 0 range 0 .. 0;
      Reserved_1_31 at 0 range 1 .. 31;
   end record;

   --  PPUPATD0_ACMP array element
   subtype PPUPATD0_ACMP_Element is Interfaces.EFM32.Bit;

   --  PPUPATD0_ACMP array
   type PPUPATD0_ACMP_Field_Array is array (0 .. 2) of PPUPATD0_ACMP_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for PPUPATD0_ACMP
   type PPUPATD0_ACMP_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ACMP as a value
            Val : Interfaces.EFM32.UInt3;
         when True =>
            --  ACMP as an array
            Arr : PPUPATD0_ACMP_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PPUPATD0_ACMP_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   --  PPUPATD0_ADC array element
   subtype PPUPATD0_ADC_Element is Interfaces.EFM32.Bit;

   --  PPUPATD0_ADC array
   type PPUPATD0_ADC_Field_Array is array (0 .. 1) of PPUPATD0_ADC_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for PPUPATD0_ADC
   type PPUPATD0_ADC_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ADC as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  ADC as an array
            Arr : PPUPATD0_ADC_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PPUPATD0_ADC_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PPUPATD0_CAN array element
   subtype PPUPATD0_CAN_Element is Interfaces.EFM32.Bit;

   --  PPUPATD0_CAN array
   type PPUPATD0_CAN_Field_Array is array (0 .. 1) of PPUPATD0_CAN_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for PPUPATD0_CAN
   type PPUPATD0_CAN_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  CAN as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  CAN as an array
            Arr : PPUPATD0_CAN_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PPUPATD0_CAN_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype PPUPATD0_CMU_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD0_CRYOTIMER_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD0_CRYPTO0_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD0_CSEN_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD0_VDAC0_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD0_PRS_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD0_EBI_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD0_EMU_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD0_FPUEH_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD0_GPCRC_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD0_GPIO_Field is Interfaces.EFM32.Bit;
   --  PPUPATD0_I2C array element
   subtype PPUPATD0_I2C_Element is Interfaces.EFM32.Bit;

   --  PPUPATD0_I2C array
   type PPUPATD0_I2C_Field_Array is array (0 .. 1) of PPUPATD0_I2C_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for PPUPATD0_I2C
   type PPUPATD0_I2C_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  I2C as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  I2C as an array
            Arr : PPUPATD0_I2C_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PPUPATD0_I2C_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   subtype PPUPATD0_IDAC0_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD0_MSC_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD0_LCD_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD0_LDMA_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD0_LESENSE_Field is Interfaces.EFM32.Bit;
   --  PPUPATD0_LETIMER array element
   subtype PPUPATD0_LETIMER_Element is Interfaces.EFM32.Bit;

   --  PPUPATD0_LETIMER array
   type PPUPATD0_LETIMER_Field_Array is array (0 .. 1)
     of PPUPATD0_LETIMER_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for PPUPATD0_LETIMER
   type PPUPATD0_LETIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LETIMER as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  LETIMER as an array
            Arr : PPUPATD0_LETIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PPUPATD0_LETIMER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PPUPATD0_LEUART array element
   subtype PPUPATD0_LEUART_Element is Interfaces.EFM32.Bit;

   --  PPUPATD0_LEUART array
   type PPUPATD0_LEUART_Field_Array is array (0 .. 1)
     of PPUPATD0_LEUART_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for PPUPATD0_LEUART
   type PPUPATD0_LEUART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  LEUART as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  LEUART as an array
            Arr : PPUPATD0_LEUART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PPUPATD0_LEUART_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PPU Privilege Access Type Descriptor 0
   type PPUPATD0_Register is record
      --  Analog Comparator 0 access control bit
      ACMP           : PPUPATD0_ACMP_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Analog to Digital Converter 0 access control bit
      ADC            : PPUPATD0_ADC_Field :=
                        (As_Array => False, Val => 16#0#);
      --  CAN 0 access control bit
      CAN            : PPUPATD0_CAN_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Clock Management Unit access control bit
      CMU            : PPUPATD0_CMU_Field := 16#0#;
      --  CRYOTIMER access control bit
      CRYOTIMER      : PPUPATD0_CRYOTIMER_Field := 16#0#;
      --  Advanced Encryption Standard Accelerator access control bit
      CRYPTO0        : PPUPATD0_CRYPTO0_Field := 16#0#;
      --  Capacitive touch sense module access control bit
      CSEN           : PPUPATD0_CSEN_Field := 16#0#;
      --  Digital to Analog Converter 0 access control bit
      VDAC0          : PPUPATD0_VDAC0_Field := 16#0#;
      --  Peripheral Reflex System access control bit
      PRS            : PPUPATD0_PRS_Field := 16#0#;
      --  External Bus Interface access control bit
      EBI            : PPUPATD0_EBI_Field := 16#0#;
      --  Energy Management Unit access control bit
      EMU            : PPUPATD0_EMU_Field := 16#0#;
      --  FPU Exception Handler access control bit
      FPUEH          : PPUPATD0_FPUEH_Field := 16#0#;
      --  General Purpose CRC access control bit
      GPCRC          : PPUPATD0_GPCRC_Field := 16#0#;
      --  General purpose Input/Output access control bit
      GPIO           : PPUPATD0_GPIO_Field := 16#0#;
      --  I2C 0 access control bit
      I2C            : PPUPATD0_I2C_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Current Digital to Analog Converter 0 access control bit
      IDAC0          : PPUPATD0_IDAC0_Field := 16#0#;
      --  Memory System Controller access control bit
      MSC            : PPUPATD0_MSC_Field := 16#0#;
      --  Liquid Crystal Display Controller access control bit
      LCD            : PPUPATD0_LCD_Field := 16#0#;
      --  Linked Direct Memory Access Controller access control bit
      LDMA           : PPUPATD0_LDMA_Field := 16#0#;
      --  Low Energy Sensor Interface access control bit
      LESENSE        : PPUPATD0_LESENSE_Field := 16#0#;
      --  Low Energy Timer 0 access control bit
      LETIMER        : PPUPATD0_LETIMER_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Low Energy UART 0 access control bit
      LEUART         : PPUPATD0_LEUART_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_29_31 : Interfaces.EFM32.UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PPUPATD0_Register use record
      ACMP           at 0 range 0 .. 2;
      ADC            at 0 range 3 .. 4;
      CAN            at 0 range 5 .. 6;
      CMU            at 0 range 7 .. 7;
      CRYOTIMER      at 0 range 8 .. 8;
      CRYPTO0        at 0 range 9 .. 9;
      CSEN           at 0 range 10 .. 10;
      VDAC0          at 0 range 11 .. 11;
      PRS            at 0 range 12 .. 12;
      EBI            at 0 range 13 .. 13;
      EMU            at 0 range 14 .. 14;
      FPUEH          at 0 range 15 .. 15;
      GPCRC          at 0 range 16 .. 16;
      GPIO           at 0 range 17 .. 17;
      I2C            at 0 range 18 .. 19;
      IDAC0          at 0 range 20 .. 20;
      MSC            at 0 range 21 .. 21;
      LCD            at 0 range 22 .. 22;
      LDMA           at 0 range 23 .. 23;
      LESENSE        at 0 range 24 .. 24;
      LETIMER        at 0 range 25 .. 26;
      LEUART         at 0 range 27 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  PPUPATD1_PCNT array element
   subtype PPUPATD1_PCNT_Element is Interfaces.EFM32.Bit;

   --  PPUPATD1_PCNT array
   type PPUPATD1_PCNT_Field_Array is array (0 .. 2) of PPUPATD1_PCNT_Element
     with Component_Size => 1, Size => 3;

   --  Type definition for PPUPATD1_PCNT
   type PPUPATD1_PCNT_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  PCNT as a value
            Val : Interfaces.EFM32.UInt3;
         when True =>
            --  PCNT as an array
            Arr : PPUPATD1_PCNT_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 3;

   for PPUPATD1_PCNT_Field use record
      Val at 0 range 0 .. 2;
      Arr at 0 range 0 .. 2;
   end record;

   subtype PPUPATD1_PDM_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD1_QSPI0_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD1_RMU_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD1_RTC_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD1_RTCC_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD1_SDIO_Field is Interfaces.EFM32.Bit;
   subtype PPUPATD1_SMU_Field is Interfaces.EFM32.Bit;
   --  PPUPATD1_TIMER array element
   subtype PPUPATD1_TIMER_Element is Interfaces.EFM32.Bit;

   --  PPUPATD1_TIMER array
   type PPUPATD1_TIMER_Field_Array is array (0 .. 3)
     of PPUPATD1_TIMER_Element
     with Component_Size => 1, Size => 4;

   --  Type definition for PPUPATD1_TIMER
   type PPUPATD1_TIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  TIMER as a value
            Val : Interfaces.EFM32.UInt4;
         when True =>
            --  TIMER as an array
            Arr : PPUPATD1_TIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 4;

   for PPUPATD1_TIMER_Field use record
      Val at 0 range 0 .. 3;
      Arr at 0 range 0 .. 3;
   end record;

   subtype PPUPATD1_TRNG0_Field is Interfaces.EFM32.Bit;
   --  PPUPATD1_UART array element
   subtype PPUPATD1_UART_Element is Interfaces.EFM32.Bit;

   --  PPUPATD1_UART array
   type PPUPATD1_UART_Field_Array is array (0 .. 1) of PPUPATD1_UART_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for PPUPATD1_UART
   type PPUPATD1_UART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  UART as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  UART as an array
            Arr : PPUPATD1_UART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PPUPATD1_UART_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PPUPATD1_USART array element
   subtype PPUPATD1_USART_Element is Interfaces.EFM32.Bit;

   --  PPUPATD1_USART array
   type PPUPATD1_USART_Field_Array is array (0 .. 4)
     of PPUPATD1_USART_Element
     with Component_Size => 1, Size => 5;

   --  Type definition for PPUPATD1_USART
   type PPUPATD1_USART_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  USART as a value
            Val : Interfaces.EFM32.UInt5;
         when True =>
            --  USART as an array
            Arr : PPUPATD1_USART_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 5;

   for PPUPATD1_USART_Field use record
      Val at 0 range 0 .. 4;
      Arr at 0 range 0 .. 4;
   end record;

   subtype PPUPATD1_USB_Field is Interfaces.EFM32.Bit;
   --  PPUPATD1_WDOG array element
   subtype PPUPATD1_WDOG_Element is Interfaces.EFM32.Bit;

   --  PPUPATD1_WDOG array
   type PPUPATD1_WDOG_Field_Array is array (0 .. 1) of PPUPATD1_WDOG_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for PPUPATD1_WDOG
   type PPUPATD1_WDOG_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WDOG as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  WDOG as an array
            Arr : PPUPATD1_WDOG_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PPUPATD1_WDOG_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PPUPATD1_WTIMER array element
   subtype PPUPATD1_WTIMER_Element is Interfaces.EFM32.Bit;

   --  PPUPATD1_WTIMER array
   type PPUPATD1_WTIMER_Field_Array is array (0 .. 1)
     of PPUPATD1_WTIMER_Element
     with Component_Size => 1, Size => 2;

   --  Type definition for PPUPATD1_WTIMER
   type PPUPATD1_WTIMER_Field
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  WTIMER as a value
            Val : Interfaces.EFM32.UInt2;
         when True =>
            --  WTIMER as an array
            Arr : PPUPATD1_WTIMER_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 2;

   for PPUPATD1_WTIMER_Field use record
      Val at 0 range 0 .. 1;
      Arr at 0 range 0 .. 1;
   end record;

   --  PPU Privilege Access Type Descriptor 1
   type PPUPATD1_Register is record
      --  Pulse Counter 0 access control bit
      PCNT           : PPUPATD1_PCNT_Field :=
                        (As_Array => False, Val => 16#0#);
      --  PDM Interface access control bit
      PDM            : PPUPATD1_PDM_Field := 16#0#;
      --  Quad-SPI access control bit
      QSPI0          : PPUPATD1_QSPI0_Field := 16#0#;
      --  Reset Management Unit access control bit
      RMU            : PPUPATD1_RMU_Field := 16#0#;
      --  Real-Time Counter access control bit
      RTC            : PPUPATD1_RTC_Field := 16#0#;
      --  Real-Time Counter and Calendar access control bit
      RTCC           : PPUPATD1_RTCC_Field := 16#0#;
      --  SDIO Controller access control bit
      SDIO           : PPUPATD1_SDIO_Field := 16#0#;
      --  Security Management Unit access control bit
      SMU            : PPUPATD1_SMU_Field := 16#0#;
      --  Timer 0 access control bit
      TIMER          : PPUPATD1_TIMER_Field :=
                        (As_Array => False, Val => 16#0#);
      --  True Random Number Generator 0 access control bit
      TRNG0          : PPUPATD1_TRNG0_Field := 16#0#;
      --  Universal Asynchronous Receiver/Transmitter 0 access control bit
      UART           : PPUPATD1_UART_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0 access
      --  control bit
      USART          : PPUPATD1_USART_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Universal Serial Bus Interface access control bit
      USB            : PPUPATD1_USB_Field := 16#0#;
      --  Watchdog access control bit
      WDOG           : PPUPATD1_WDOG_Field :=
                        (As_Array => False, Val => 16#0#);
      --  Wide Timer 0 access control bit
      WTIMER         : PPUPATD1_WTIMER_Field :=
                        (As_Array => False, Val => 16#0#);
      --  unspecified
      Reserved_27_31 : Interfaces.EFM32.UInt5 := 16#0#;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PPUPATD1_Register use record
      PCNT           at 0 range 0 .. 2;
      PDM            at 0 range 3 .. 3;
      QSPI0          at 0 range 4 .. 4;
      RMU            at 0 range 5 .. 5;
      RTC            at 0 range 6 .. 6;
      RTCC           at 0 range 7 .. 7;
      SDIO           at 0 range 8 .. 8;
      SMU            at 0 range 9 .. 9;
      TIMER          at 0 range 10 .. 13;
      TRNG0          at 0 range 14 .. 14;
      UART           at 0 range 15 .. 16;
      USART          at 0 range 17 .. 21;
      USB            at 0 range 22 .. 22;
      WDOG           at 0 range 23 .. 24;
      WTIMER         at 0 range 25 .. 26;
      Reserved_27_31 at 0 range 27 .. 31;
   end record;

   type PPUFS_PERIPHID_Field is
     (--  Analog Comparator 0
      ACMP0,
      --  Analog Comparator 1
      ACMP1,
      --  Analog Comparator 2
      ACMP2,
      --  Analog to Digital Converter 0
      ADC0,
      --  Analog to Digital Converter 0
      ADC1,
      --  CAN 0
      CAN0,
      --  CAN 1
      CAN1,
      --  Clock Management Unit
      CMU,
      --  CRYOTIMER
      CRYOTIMER,
      --  Advanced Encryption Standard Accelerator
      CRYPTO0,
      --  Capacitive touch sense module
      CSEN,
      --  Digital to Analog Converter 0
      VDAC0,
      --  Peripheral Reflex System
      PRS,
      --  External Bus Interface
      EBI,
      --  Energy Management Unit
      EMU,
      --  FPU Exception Handler
      FPUEH,
      --  General Purpose CRC
      GPCRC,
      --  General purpose Input/Output
      GPIO,
      --  I2C 0
      I2C0,
      --  I2C 1
      I2C1,
      --  Current Digital to Analog Converter 0
      IDAC0,
      --  Memory System Controller
      MSC,
      --  Liquid Crystal Display Controller
      LCD,
      --  Linked Direct Memory Access Controller
      LDMA,
      --  Low Energy Sensor Interface
      LESENSE,
      --  Low Energy Timer 0
      LETIMER0,
      --  Low Energy Timer 1
      LETIMER1,
      --  Low Energy UART 0
      LEUART0,
      --  Low Energy UART 1
      LEUART1,
      --  Pulse Counter 0
      PCNT0,
      --  Pulse Counter 1
      PCNT1,
      --  Pulse Counter 2
      PCNT2,
      --  PDM Interface
      PDM,
      --  Quad-SPI
      QSPI0,
      --  Reset Management Unit
      RMU,
      --  Real-Time Counter
      RTC,
      --  Real-Time Counter and Calendar
      RTCC,
      --  SDIO Controller
      SDIO,
      --  Security Management Unit
      SMU,
      --  Timer 0
      TIMER0,
      --  Timer 1
      TIMER1,
      --  Timer 2
      TIMER2,
      --  Timer 3
      TIMER3,
      --  True Random Number Generator 0
      TRNG0,
      --  Universal Asynchronous Receiver/Transmitter 0
      UART0,
      --  Universal Asynchronous Receiver/Transmitter 1
      UART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 0
      USART0,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 1
      USART1,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 2
      USART2,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 3
      USART3,
      --  Universal Synchronous/Asynchronous Receiver/Transmitter 4
      USART4,
      --  Universal Serial Bus Interface
      USB,
      --  Watchdog
      WDOG0,
      --  Watchdog
      WDOG1,
      --  Wide Timer 0
      WTIMER0,
      --  Wide Timer 0
      WTIMER1)
     with Size => 7;
   for PPUFS_PERIPHID_Field use
     (ACMP0 => 0,
      ACMP1 => 1,
      ACMP2 => 2,
      ADC0 => 3,
      ADC1 => 4,
      CAN0 => 5,
      CAN1 => 6,
      CMU => 7,
      CRYOTIMER => 8,
      CRYPTO0 => 9,
      CSEN => 10,
      VDAC0 => 11,
      PRS => 12,
      EBI => 13,
      EMU => 14,
      FPUEH => 15,
      GPCRC => 16,
      GPIO => 17,
      I2C0 => 18,
      I2C1 => 19,
      IDAC0 => 20,
      MSC => 21,
      LCD => 22,
      LDMA => 23,
      LESENSE => 24,
      LETIMER0 => 25,
      LETIMER1 => 26,
      LEUART0 => 27,
      LEUART1 => 28,
      PCNT0 => 32,
      PCNT1 => 33,
      PCNT2 => 34,
      PDM => 35,
      QSPI0 => 36,
      RMU => 37,
      RTC => 38,
      RTCC => 39,
      SDIO => 40,
      SMU => 41,
      TIMER0 => 42,
      TIMER1 => 43,
      TIMER2 => 44,
      TIMER3 => 45,
      TRNG0 => 46,
      UART0 => 47,
      UART1 => 48,
      USART0 => 49,
      USART1 => 50,
      USART2 => 51,
      USART3 => 52,
      USART4 => 53,
      USB => 54,
      WDOG0 => 55,
      WDOG1 => 56,
      WTIMER0 => 57,
      WTIMER1 => 58);

   --  PPU Fault Status
   type PPUFS_Register is record
      --  Read-only.
      PERIPHID      : PPUFS_PERIPHID_Field;
      --  unspecified
      Reserved_7_31 : Interfaces.EFM32.UInt25;
   end record
     with Volatile_Full_Access, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for PPUFS_Register use record
      PERIPHID      at 0 range 0 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  SMU
   type SMU_Peripheral is record
      --  Interrupt Flag Register
      IF_k     : aliased IF_Register;
      --  Interrupt Flag Set Register
      IFS      : aliased IFS_Register;
      --  Interrupt Flag Clear Register
      IFC      : aliased IFC_Register;
      --  Interrupt Enable Register
      IEN      : aliased IEN_Register;
      --  PPU Control Register
      PPUCTRL  : aliased PPUCTRL_Register;
      --  PPU Privilege Access Type Descriptor 0
      PPUPATD0 : aliased PPUPATD0_Register;
      --  PPU Privilege Access Type Descriptor 1
      PPUPATD1 : aliased PPUPATD1_Register;
      --  PPU Privilege Access Type Descriptor 2
      PPUPATD2 : aliased Interfaces.EFM32.UInt32;
      --  PPU Fault Status
      PPUFS    : aliased PPUFS_Register;
   end record
     with Volatile;

   for SMU_Peripheral use record
      IF_k     at 16#C# range 0 .. 31;
      IFS      at 16#10# range 0 .. 31;
      IFC      at 16#14# range 0 .. 31;
      IEN      at 16#18# range 0 .. 31;
      PPUCTRL  at 16#40# range 0 .. 31;
      PPUPATD0 at 16#50# range 0 .. 31;
      PPUPATD1 at 16#54# range 0 .. 31;
      PPUPATD2 at 16#58# range 0 .. 31;
      PPUFS    at 16#90# range 0 .. 31;
   end record;

   --  SMU
   SMU_Periph : aliased SMU_Peripheral
     with Import, Address => SMU_Base;

end Interfaces.EFM32.SMU;
