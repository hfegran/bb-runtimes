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

--  This is a version for the Silicon Labs EFM32GG12B810F1024GM64 Cortex-M MCU
--  MCU
package Ada.Interrupts.Names is

   --  All identifiers in this unit are implementation defined

   pragma Implementation_Defined;

   ----------------
   -- Interrupts --
   ----------------

   --  System tick
   Sys_Tick_Interrupt   : constant Interrupt_ID := -1;
   EMU_Interrupt        : constant Interrupt_ID := 0;
   WDOG0_Interrupt      : constant Interrupt_ID := 1;
   LDMA_Interrupt       : constant Interrupt_ID := 2;
   GPIO_EVEN_Interrupt  : constant Interrupt_ID := 3;
   SMU_Interrupt        : constant Interrupt_ID := 4;
   TIMER0_Interrupt     : constant Interrupt_ID := 5;
   USART0_RX_Interrupt  : constant Interrupt_ID := 6;
   USART0_TX_Interrupt  : constant Interrupt_ID := 7;
   ACMP0_Interrupt      : constant Interrupt_ID := 8;
   ADC0_Interrupt       : constant Interrupt_ID := 9;
   IDAC0_Interrupt      : constant Interrupt_ID := 10;
   I2C0_Interrupt       : constant Interrupt_ID := 11;
   I2C1_Interrupt       : constant Interrupt_ID := 12;
   GPIO_ODD_Interrupt   : constant Interrupt_ID := 13;
   TIMER1_Interrupt     : constant Interrupt_ID := 14;
   TIMER2_Interrupt     : constant Interrupt_ID := 15;
   TIMER3_Interrupt     : constant Interrupt_ID := 16;
   USART1_RX_Interrupt  : constant Interrupt_ID := 17;
   USART1_TX_Interrupt  : constant Interrupt_ID := 18;
   USART2_RX_Interrupt  : constant Interrupt_ID := 19;
   USART2_TX_Interrupt  : constant Interrupt_ID := 20;
   UART0_RX_Interrupt   : constant Interrupt_ID := 21;
   UART0_TX_Interrupt   : constant Interrupt_ID := 22;
   UART1_RX_Interrupt   : constant Interrupt_ID := 23;
   UART1_TX_Interrupt   : constant Interrupt_ID := 24;
   LEUART0_Interrupt    : constant Interrupt_ID := 25;
   LEUART1_Interrupt    : constant Interrupt_ID := 26;
   LETIMER0_Interrupt   : constant Interrupt_ID := 27;
   PCNT0_Interrupt      : constant Interrupt_ID := 28;
   PCNT1_Interrupt      : constant Interrupt_ID := 29;
   PCNT2_Interrupt      : constant Interrupt_ID := 30;
   RTCC_Interrupt       : constant Interrupt_ID := 31;
   CMU_Interrupt        : constant Interrupt_ID := 32;
   MSC_Interrupt        : constant Interrupt_ID := 33;
   CRYPTO0_Interrupt    : constant Interrupt_ID := 34;
   CRYOTIMER_Interrupt  : constant Interrupt_ID := 35;
   FPUEH_Interrupt      : constant Interrupt_ID := 36;
   USART3_RX_Interrupt  : constant Interrupt_ID := 37;
   USART3_TX_Interrupt  : constant Interrupt_ID := 38;
   USART4_RX_Interrupt  : constant Interrupt_ID := 39;
   USART4_TX_Interrupt  : constant Interrupt_ID := 40;
   WTIMER0_Interrupt    : constant Interrupt_ID := 41;
   WTIMER1_Interrupt    : constant Interrupt_ID := 42;
   VDAC0_Interrupt      : constant Interrupt_ID := 43;
   CSEN_Interrupt       : constant Interrupt_ID := 44;
   LESENSE_Interrupt    : constant Interrupt_ID := 45;
   EBI_Interrupt        : constant Interrupt_ID := 46;
   ACMP2_Interrupt      : constant Interrupt_ID := 47;
   ADC1_Interrupt       : constant Interrupt_ID := 48;
   LCD_Interrupt        : constant Interrupt_ID := 49;
   SDIO_Interrupt       : constant Interrupt_ID := 50;
   CAN0_Interrupt       : constant Interrupt_ID := 51;
   CAN1_Interrupt       : constant Interrupt_ID := 52;
   USB_Interrupt        : constant Interrupt_ID := 53;
   RTC_Interrupt        : constant Interrupt_ID := 54;
   WDOG1_Interrupt      : constant Interrupt_ID := 55;
   LETIMER1_Interrupt   : constant Interrupt_ID := 56;
   TRNG0_Interrupt      : constant Interrupt_ID := 57;
   QSPI0_Interrupt      : constant Interrupt_ID := 58;
   PDM_Interrupt        : constant Interrupt_ID := 59;

end Ada.Interrupts.Names;
