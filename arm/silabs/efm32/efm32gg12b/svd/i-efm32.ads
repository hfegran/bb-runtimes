pragma Ada_2012;
pragma Style_Checks (Off);

--
--  Copyright (C) 2020, AdaCore
--

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

--  Silicon Labs EFM32GG12B810F1024GM64 Cortex-M MCU
package Interfaces.EFM32 is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Base type --
   ---------------

   type UInt32 is new Interfaces.Unsigned_32;
   type UInt16 is new Interfaces.Unsigned_16;
   type Byte is new Interfaces.Unsigned_8;
   type Bit is mod 2**1
     with Size => 1;
   type UInt2 is mod 2**2
     with Size => 2;
   type UInt3 is mod 2**3
     with Size => 3;
   type UInt4 is mod 2**4
     with Size => 4;
   type UInt5 is mod 2**5
     with Size => 5;
   type UInt6 is mod 2**6
     with Size => 6;
   type UInt7 is mod 2**7
     with Size => 7;
   type UInt9 is mod 2**9
     with Size => 9;
   type UInt10 is mod 2**10
     with Size => 10;
   type UInt11 is mod 2**11
     with Size => 11;
   type UInt12 is mod 2**12
     with Size => 12;
   type UInt13 is mod 2**13
     with Size => 13;
   type UInt14 is mod 2**14
     with Size => 14;
   type UInt15 is mod 2**15
     with Size => 15;
   type UInt17 is mod 2**17
     with Size => 17;
   type UInt18 is mod 2**18
     with Size => 18;
   type UInt19 is mod 2**19
     with Size => 19;
   type UInt20 is mod 2**20
     with Size => 20;
   type UInt21 is mod 2**21
     with Size => 21;
   type UInt22 is mod 2**22
     with Size => 22;
   type UInt23 is mod 2**23
     with Size => 23;
   type UInt24 is mod 2**24
     with Size => 24;
   type UInt25 is mod 2**25
     with Size => 25;
   type UInt26 is mod 2**26
     with Size => 26;
   type UInt27 is mod 2**27
     with Size => 27;
   type UInt28 is mod 2**28
     with Size => 28;
   type UInt29 is mod 2**29
     with Size => 29;
   type UInt30 is mod 2**30
     with Size => 30;
   type UInt31 is mod 2**31
     with Size => 31;

   --------------------
   -- Base addresses --
   --------------------

   MSC_Base : constant System.Address := System'To_Address (16#40000000#);
   EMU_Base : constant System.Address := System'To_Address (16#400E3000#);
   RMU_Base : constant System.Address := System'To_Address (16#400E5000#);
   CMU_Base : constant System.Address := System'To_Address (16#400E4000#);
   CRYPTO0_Base : constant System.Address := System'To_Address (16#400F0000#);
   LESENSE_Base : constant System.Address := System'To_Address (16#40055000#);
   EBI_Base : constant System.Address := System'To_Address (16#4000B000#);
   SDIO_Base : constant System.Address := System'To_Address (16#400F1000#);
   PDM_Base : constant System.Address := System'To_Address (16#40028000#);
   GPIO_Base : constant System.Address := System'To_Address (16#40088000#);
   PRS_Base : constant System.Address := System'To_Address (16#400E6000#);
   LDMA_Base : constant System.Address := System'To_Address (16#40002000#);
   FPUEH_Base : constant System.Address := System'To_Address (16#40001000#);
   GPCRC_Base : constant System.Address := System'To_Address (16#4001C000#);
   CAN0_Base : constant System.Address := System'To_Address (16#40004000#);
   CAN1_Base : constant System.Address := System'To_Address (16#40004400#);
   TIMER0_Base : constant System.Address := System'To_Address (16#40018000#);
   TIMER1_Base : constant System.Address := System'To_Address (16#40018400#);
   TIMER2_Base : constant System.Address := System'To_Address (16#40018800#);
   TIMER3_Base : constant System.Address := System'To_Address (16#40018C00#);
   WTIMER0_Base : constant System.Address := System'To_Address (16#4001A000#);
   WTIMER1_Base : constant System.Address := System'To_Address (16#4001A400#);
   USART0_Base : constant System.Address := System'To_Address (16#40010000#);
   USART1_Base : constant System.Address := System'To_Address (16#40010400#);
   USART2_Base : constant System.Address := System'To_Address (16#40010800#);
   USART3_Base : constant System.Address := System'To_Address (16#40010C00#);
   USART4_Base : constant System.Address := System'To_Address (16#40011000#);
   UART0_Base : constant System.Address := System'To_Address (16#40014000#);
   UART1_Base : constant System.Address := System'To_Address (16#40014400#);
   QSPI0_Base : constant System.Address := System'To_Address (16#4001C400#);
   LEUART0_Base : constant System.Address := System'To_Address (16#4006A000#);
   LEUART1_Base : constant System.Address := System'To_Address (16#4006A400#);
   LETIMER0_Base : constant System.Address := System'To_Address (16#40066000#);
   LETIMER1_Base : constant System.Address := System'To_Address (16#40066400#);
   CRYOTIMER_Base : constant System.Address := System'To_Address (16#4008F000#);
   PCNT0_Base : constant System.Address := System'To_Address (16#4006E000#);
   PCNT1_Base : constant System.Address := System'To_Address (16#4006E400#);
   PCNT2_Base : constant System.Address := System'To_Address (16#4006E800#);
   I2C0_Base : constant System.Address := System'To_Address (16#40089000#);
   I2C1_Base : constant System.Address := System'To_Address (16#40089400#);
   ADC0_Base : constant System.Address := System'To_Address (16#40082000#);
   ADC1_Base : constant System.Address := System'To_Address (16#40082400#);
   ACMP0_Base : constant System.Address := System'To_Address (16#40080000#);
   ACMP1_Base : constant System.Address := System'To_Address (16#40080400#);
   ACMP2_Base : constant System.Address := System'To_Address (16#40080800#);
   VDAC0_Base : constant System.Address := System'To_Address (16#40086000#);
   USB_Base : constant System.Address := System'To_Address (16#40022000#);
   IDAC0_Base : constant System.Address := System'To_Address (16#40084000#);
   CSEN_Base : constant System.Address := System'To_Address (16#4008E000#);
   LCD_Base : constant System.Address := System'To_Address (16#40054000#);
   RTC_Base : constant System.Address := System'To_Address (16#40060000#);
   RTCC_Base : constant System.Address := System'To_Address (16#40062000#);
   WDOG0_Base : constant System.Address := System'To_Address (16#40052000#);
   WDOG1_Base : constant System.Address := System'To_Address (16#40052400#);
   ETM_Base : constant System.Address := System'To_Address (16#E0041000#);
   SMU_Base : constant System.Address := System'To_Address (16#40020000#);
   TRNG0_Base : constant System.Address := System'To_Address (16#4001D000#);

end Interfaces.EFM32;
