ARM GAS  /tmp/cczatnhQ.s 			page 1


   1              		.cpu cortex-m7
   2              		.eabi_attribute 28, 1
   3              		.eabi_attribute 20, 1
   4              		.eabi_attribute 21, 1
   5              		.eabi_attribute 23, 3
   6              		.eabi_attribute 24, 1
   7              		.eabi_attribute 25, 1
   8              		.eabi_attribute 26, 1
   9              		.eabi_attribute 30, 2
  10              		.eabi_attribute 34, 1
  11              		.eabi_attribute 18, 4
  12              		.file	"spi.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.spi_enable_clock,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	spi_enable_clock
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	spi_enable_clock, %function
  25              	spi_enable_clock:
  26              	.LFB196:
  27              		.file 1 "../asf/sam/drivers/spi/spi.c"
   1:../asf/sam/drivers/spi/spi.c **** /**
   2:../asf/sam/drivers/spi/spi.c ****  * \file
   3:../asf/sam/drivers/spi/spi.c ****  *
   4:../asf/sam/drivers/spi/spi.c ****  * \brief Serial Peripheral Interface (SPI) driver for SAM.
   5:../asf/sam/drivers/spi/spi.c ****  *
   6:../asf/sam/drivers/spi/spi.c ****  * Copyright (c) 2011-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/spi/spi.c ****  *
   8:../asf/sam/drivers/spi/spi.c ****  * \asf_license_start
   9:../asf/sam/drivers/spi/spi.c ****  *
  10:../asf/sam/drivers/spi/spi.c ****  * \page License
  11:../asf/sam/drivers/spi/spi.c ****  *
  12:../asf/sam/drivers/spi/spi.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/spi/spi.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/spi/spi.c ****  *
  15:../asf/sam/drivers/spi/spi.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/spi/spi.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/spi/spi.c ****  *
  18:../asf/sam/drivers/spi/spi.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/spi/spi.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/spi/spi.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/spi/spi.c ****  *
  22:../asf/sam/drivers/spi/spi.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/spi/spi.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/spi/spi.c ****  *
  25:../asf/sam/drivers/spi/spi.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/spi/spi.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/spi/spi.c ****  *
  28:../asf/sam/drivers/spi/spi.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/spi/spi.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/spi/spi.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/cczatnhQ.s 			page 2


  31:../asf/sam/drivers/spi/spi.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/spi/spi.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/spi/spi.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/spi/spi.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/spi/spi.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/spi/spi.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/spi/spi.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/spi/spi.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/spi/spi.c ****  *
  40:../asf/sam/drivers/spi/spi.c ****  * \asf_license_stop
  41:../asf/sam/drivers/spi/spi.c ****  *
  42:../asf/sam/drivers/spi/spi.c ****  */
  43:../asf/sam/drivers/spi/spi.c **** /*
  44:../asf/sam/drivers/spi/spi.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/spi/spi.c ****  */
  46:../asf/sam/drivers/spi/spi.c **** 
  47:../asf/sam/drivers/spi/spi.c **** #include "spi.h"
  48:../asf/sam/drivers/spi/spi.c **** #include "sysclk.h"
  49:../asf/sam/drivers/spi/spi.c **** 
  50:../asf/sam/drivers/spi/spi.c **** /**
  51:../asf/sam/drivers/spi/spi.c ****  * \defgroup sam_drivers_spi_group Serial Peripheral Interface (SPI)
  52:../asf/sam/drivers/spi/spi.c ****  *
  53:../asf/sam/drivers/spi/spi.c ****  * See \ref sam_spi_quickstart.
  54:../asf/sam/drivers/spi/spi.c ****  *
  55:../asf/sam/drivers/spi/spi.c ****  * The SPI circuit is a synchronous serial data link that provides communication
  56:../asf/sam/drivers/spi/spi.c ****  * with external devices in Master or Slave mode. Connection to Peripheral DMA
  57:../asf/sam/drivers/spi/spi.c ****  * Controller channel capabilities optimizes data transfers.
  58:../asf/sam/drivers/spi/spi.c ****  *
  59:../asf/sam/drivers/spi/spi.c ****  * @{
  60:../asf/sam/drivers/spi/spi.c ****  */
  61:../asf/sam/drivers/spi/spi.c **** #ifndef SPI_WPMR_WPKEY_PASSWD
  62:../asf/sam/drivers/spi/spi.c **** #define SPI_WPMR_WPKEY_PASSWD SPI_WPMR_WPKEY((uint32_t) 0x535049)
  63:../asf/sam/drivers/spi/spi.c **** #endif
  64:../asf/sam/drivers/spi/spi.c **** 
  65:../asf/sam/drivers/spi/spi.c **** /**
  66:../asf/sam/drivers/spi/spi.c ****  * \brief Enable SPI clock.
  67:../asf/sam/drivers/spi/spi.c ****  *
  68:../asf/sam/drivers/spi/spi.c ****  * \param p_spi Pointer to an SPI instance.
  69:../asf/sam/drivers/spi/spi.c ****  */
  70:../asf/sam/drivers/spi/spi.c **** void spi_enable_clock(Spi *p_spi)
  71:../asf/sam/drivers/spi/spi.c **** {
  28              		.loc 1 71 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
  72:../asf/sam/drivers/spi/spi.c **** #if (SAM4S || SAM3S || SAM3N || SAM3U || SAM4E || SAM4N || SAMG51|| SAMG53|| SAMG54)
  73:../asf/sam/drivers/spi/spi.c **** 	UNUSED(p_spi);
  74:../asf/sam/drivers/spi/spi.c **** 	sysclk_enable_peripheral_clock(ID_SPI);
  75:../asf/sam/drivers/spi/spi.c **** #elif (SAM3XA || SAM4C || SAM4CP || SAM4CM || SAMV71 || SAMV70 || SAME70 || SAMS70)
  76:../asf/sam/drivers/spi/spi.c **** 	if (p_spi == SPI0) {
  34              		.loc 1 76 0
  35 0000 064B     		ldr	r3, .L7
  36 0002 9842     		cmp	r0, r3
  37 0004 06D0     		beq	.L5
  77:../asf/sam/drivers/spi/spi.c **** 		sysclk_enable_peripheral_clock(ID_SPI0);
ARM GAS  /tmp/cczatnhQ.s 			page 3


  78:../asf/sam/drivers/spi/spi.c **** 	}
  79:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI1
  80:../asf/sam/drivers/spi/spi.c **** 	else if (p_spi == SPI1) {
  38              		.loc 1 80 0
  39 0006 064B     		ldr	r3, .L7+4
  40 0008 9842     		cmp	r0, r3
  41 000a 00D0     		beq	.L6
  42 000c 7047     		bx	lr
  43              	.L6:
  44              	.LVL1:
  45              	.LBB14:
  46              	.LBB15:
  47              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \file
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \brief Chip-specific system clock management functions.
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * Copyright (c) 2015 Atmel Corporation. All rights reserved.
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \asf_license_start
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \page License
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * Redistribution and use in source and binary forms, with or without
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * modification, are permitted provided that the following conditions are met:
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *    this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *    and/or other materials provided with the distribution.
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *    from this software without specific prior written permission.
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * 4. This software may only be redistributed and used in connection with an
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *    Atmel microcontroller product.
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \asf_license_stop
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /*
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
ARM GAS  /tmp/cczatnhQ.s 			page 4


  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #ifndef CHIP_SYSCLK_H_INCLUDED
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define CHIP_SYSCLK_H_INCLUDED
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #include <osc.h>
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #include <pll.h>
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \page sysclk_quickstart Quick Start Guide for the System Clock Management
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * service (SAMV71)
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * This is the quick start guide for the \ref sysclk_group "System Clock
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * Management" service, with step-by-step instructions on how to configure and
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * use the service for specific use cases.
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \section sysclk_quickstart_usecases System Clock Management use cases
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * - \ref sysclk_quickstart_basic
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * - \ref sysclk_quickstart_use_case_2
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \section sysclk_quickstart_basic Basic usage of the System Clock Management
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * service
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * This section will present a basic use case for the System Clock Management
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * service. This use case will configure the main system clock to 120MHz,
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * using an internal PLL module to multiply the frequency of a crystal attached
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * to the microcontroller.
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \subsection sysclk_quickstart_use_case_1_prereq Prerequisites
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *  - None
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \subsection sysclk_quickstart_use_case_1_setup_steps Initialization code
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * Add to the application initialization code:
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \code
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	sysclk_init();
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** \endcode
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \subsection sysclk_quickstart_use_case_1_setup_steps_workflow Workflow
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * -# Configure the system clocks according to the settings in conf_clock.h:
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *    \code sysclk_init(); \endcode
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \subsection sysclk_quickstart_use_case_1_example_code Example code
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   Add or uncomment the following in your conf_clock.h header file,
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   commenting out all other definitions of the same symbol(s):
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   \code
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   #define CONFIG_SYSCLK_SOURCE        SYSCLK_SRC_PLLACK
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   // Fpll0 = (Fclk * PLL_mul) / PLL_div
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   #define CONFIG_PLL0_SOURCE          PLL_SRC_MAINCK_XTAL
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   #define CONFIG_PLL0_MUL             (120000000UL / BOARD_FREQ_MAINCK_XTAL)
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   #define CONFIG_PLL0_DIV             1
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   // Fbus = Fsys / BUS_div
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   #define CONFIG_SYSCLK_PRES          SYSCLK_PRES_1
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** \endcode
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \subsection sysclk_quickstart_use_case_1_example_workflow Workflow
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *  -# Configure the main system clock to use the output of the PLL module as
ARM GAS  /tmp/cczatnhQ.s 			page 5


 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *     its source:
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   \code #define CONFIG_SYSCLK_SOURCE          SYSCLK_SRC_PLLACK \endcode
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *  -# Configure the PLL module to use the fast external fast crystal
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *     oscillator as its source:
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   \code #define CONFIG_PLL0_SOURCE            PLL_SRC_MAINCK_XTAL \endcode
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *  -# Configure the PLL module to multiply the external fast crystal
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *     oscillator frequency up to 120MHz:
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   \code
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	#define CONFIG_PLL0_MUL             (120000000UL / BOARD_FREQ_MAINCK_XTAL)
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	#define CONFIG_PLL0_DIV             1
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** \endcode
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   \note For user boards, \c BOARD_FREQ_MAINCK_XTAL should be defined in the
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   board \c conf_board.h configuration
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *         file as the frequency of the fast crystal attached to the microcontroller.
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *  -# Configure the main clock to run at the full 120MHz, disable scaling of
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *     the main system clock speed:
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *    \code
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	#define CONFIG_SYSCLK_PRES         SYSCLK_PRES_1
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** \endcode
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *    \note Some dividers are powers of two, while others are integer division
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *    factors. Refer to the formulas in the conf_clock.h template commented
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *    above each division define.
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \page sysclk_quickstart_use_case_2 Advanced use case - Peripheral Bus Clock
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * Management (SAMV71)
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \section sysclk_quickstart_use_case_2 Advanced use case - Peripheral Bus
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * Clock Management
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * This section will present a more advanced use case for the System Clock
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * Management service. This use case will configure the main system clock to
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * 96MHz, using an internal PLL module to multiply the frequency of a crystal
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * attached to the microcontroller. The USB clock will be configured via the
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * same PLL module.
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \subsection sysclk_quickstart_use_case_2_prereq Prerequisites
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *  - None
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \subsection sysclk_quickstart_use_case_2_setup_steps Initialization code
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * Add to the application initialization code:
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \code
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	sysclk_init();
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** \endcode
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \subsection sysclk_quickstart_use_case_2_setup_steps_workflow Workflow
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * -# Configure the system clocks according to the settings in conf_clock.h:
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *    \code sysclk_init(); \endcode
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \subsection sysclk_quickstart_use_case_2_example_code Example code
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   Add or uncomment the following in your conf_clock.h header file,
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   commenting out all other definitions of the same symbol(s):
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   \code
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   #define CONFIG_SYSCLK_SOURCE        SYSCLK_SRC_PLLACK
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   // Fpll0 = (Fclk * PLL_mul) / PLL_div
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   #define CONFIG_PLL0_SOURCE          PLL_SRC_MAINCK_XTAL
ARM GAS  /tmp/cczatnhQ.s 			page 6


 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   #define CONFIG_PLL0_MUL             (96000000UL / BOARD_FREQ_MAINCK_XTAL)
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   #define CONFIG_PLL0_DIV             1
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   // Fbus = Fsys / BUS_div
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   #define CONFIG_SYSCLK_PRES          SYSCLK_PRES_1
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   // Fusb = Fsys / USB_div
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   #define CONFIG_USBCLK_SOURCE        USBCLK_SRC_PLL0
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	   #define CONFIG_USBCLK_DIV           2
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** \endcode
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \subsection sysclk_quickstart_use_case_2_example_workflow Workflow
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *  -# Configure the main system clock to use the output of the PLL0 module as
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *     its source:
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   \code #define CONFIG_SYSCLK_SOURCE          SYSCLK_SRC_PLLACK \endcode
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *  -# Configure the PLL0 module to use the fast external fast crystal
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *     oscillator as its source:
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   \code #define CONFIG_PLL0_SOURCE            PLL_SRC_MAINCK_XTAL \endcode
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *  -# Configure the PLL0 module to multiply the external fast crystal
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *     oscillator frequency up to 96MHz:
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   \code
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	#define CONFIG_PLL0_MUL             (96000000UL / BOARD_FREQ_MAINCK_XTAL)
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	#define CONFIG_PLL0_DIV             1
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** \endcode
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   \note For user boards, \c BOARD_FREQ_MAINCK_XTAL should be defined in the
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   board \c conf_board.h configuration file as the frequency of the fast
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   crystal attached to the microcontroller.
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *  -# Configure the main clock to run at the full 96MHz, disable scaling of
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *     the main system clock speed:
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *    \code
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	#define CONFIG_SYSCLK_PRES         SYSCLK_PRES_1
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** \endcode
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *    \note Some dividers are powers of two, while others are integer division
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *    factors. Refer to the formulas in the conf_clock.h template commented
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *    above each division define.
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *  -# Configure the USB module clock to use the output of the PLL0 module as
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *     its source with division 2:
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   \code
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	#define CONFIG_USBCLK_SOURCE        USBCLK_SRC_PLL0
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	#define CONFIG_USBCLK_DIV           2
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** \endcode
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /// @cond 0
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**INDENT-OFF**/
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #ifdef __cplusplus
 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** extern "C" {
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #endif
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**INDENT-ON**/
 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /// @endcond
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \weakgroup sysclk_group
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * @{
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //! \name Configuration Symbols
ARM GAS  /tmp/cczatnhQ.s 			page 7


 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //@{
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \def CONFIG_SYSCLK_SOURCE
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \brief Initial/static main system clock source
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * The main system clock will be configured to use this clock during
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * initialization.
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #ifndef CONFIG_SYSCLK_SOURCE
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** # define CONFIG_SYSCLK_SOURCE   SYSCLK_SRC_MAINCK_4M_RC
 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #endif
 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \def CONFIG_SYSCLK_PRES
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \brief Initial CPU clock divider (mck)
 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * The MCK will run at
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \f[
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *   f_{MCK} = \frac{f_{sys}}{\mathrm{CONFIG\_SYSCLK\_PRES}}\,\mbox{Hz}
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \f]
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * after initialization.
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #ifndef CONFIG_SYSCLK_PRES
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** # define CONFIG_SYSCLK_PRES  0
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #endif
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //@}
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //! \name Master Clock Sources (MCK)
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //@{
 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_SRC_SLCK_RC         0 //!< Internal 32kHz RC oscillator as master source clock
 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_SRC_SLCK_XTAL       1 //!< External 32kHz crystal oscillator as master source clock
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_SRC_SLCK_BYPASS     2 //!< External 32kHz bypass oscillator as master source clock
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_SRC_MAINCK_4M_RC    3 //!< Internal 4MHz RC oscillator as master source clock
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_SRC_MAINCK_8M_RC    4 //!< Internal 8MHz RC oscillator as master source clock
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_SRC_MAINCK_12M_RC   5 //!< Internal 12MHz RC oscillator as master source clock
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_SRC_MAINCK_XTAL     6 //!< External crystal oscillator as master source clock
 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_SRC_MAINCK_BYPASS   7 //!< External bypass oscillator as master source clock
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_SRC_PLLACK          8 //!< Use PLLACK as master source clock
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_SRC_UPLLCK          9       //!< Use UPLLCK as master source clock
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //@}
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //! \name Master Clock Prescalers (MCK)
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //@{
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_PRES_1   PMC_MCKR_PRES_CLK_1  //!< Set master clock prescaler to 1
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_PRES_2   PMC_MCKR_PRES_CLK_2  //!< Set master clock prescaler to 2
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_PRES_4   PMC_MCKR_PRES_CLK_4  //!< Set master clock prescaler to 4
 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_PRES_8   PMC_MCKR_PRES_CLK_8  //!< Set master clock prescaler to 8
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_PRES_16  PMC_MCKR_PRES_CLK_16 //!< Set master clock prescaler to 16
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_PRES_32  PMC_MCKR_PRES_CLK_32 //!< Set master clock prescaler to 32
 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_PRES_64  PMC_MCKR_PRES_CLK_64 //!< Set master clock prescaler to 64
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_PRES_3   PMC_MCKR_PRES_CLK_3  //!< Set master clock prescaler to 3
 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //@}
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //! \name Master Clock Division (MCK)
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //@{
 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_DIV_1   PMC_MCKR_MDIV_EQ_PCK  //!< Set master clock division to 1
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_DIV_2   PMC_MCKR_MDIV_PCK_DIV2  //!< Set master clock division to 2
ARM GAS  /tmp/cczatnhQ.s 			page 8


 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_DIV_4   PMC_MCKR_MDIV_PCK_DIV4  //!< Set master clock division to 4
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define SYSCLK_DIV_3   PMC_MCKR_MDIV_PCK_DIV3  //!< Set master clock division to 3
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //@}
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //! \name USB Clock Sources
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //@{
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define USBCLK_SRC_PLL0       0     //!< Use PLLA
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #define USBCLK_SRC_UPLL       1     //!< Use UPLL
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //@}
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**
 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \def CONFIG_USBCLK_SOURCE
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \brief Configuration symbol for the USB generic clock source
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * Sets the clock source to use for the USB. The source must also be properly
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * configured.
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * Define this to one of the \c USBCLK_SRC_xxx settings. Leave it undefined if
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * USB is not required.
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #ifdef __DOXYGEN__
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** # define CONFIG_USBCLK_SOURCE
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #endif
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \def CONFIG_USBCLK_DIV
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \brief Configuration symbol for the USB generic clock divider setting
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * Sets the clock division for the USB generic clock. If a USB clock source is
 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * selected with CONFIG_USBCLK_SOURCE, this configuration symbol must also be
 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * defined.
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #ifdef __DOXYGEN__
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** # define CONFIG_USBCLK_DIV
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #endif
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \name Querying the system clock
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * The following functions may be used to query the current frequency of
 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * the system clock and the CPU and bus clocks derived from it.
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * sysclk_get_main_hz() and sysclk_get_cpu_hz() can be assumed to be
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * available on all platforms, although some platforms may define
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * additional accessors for various chip-internal bus clocks. These are
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * usually not intended to be queried directly by generic code.
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //@{
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**
 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \brief Return the current rate in Hz of the main system clock
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \todo This function assumes that the main clock source never changes
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * once it's been set up, and that PLL0 always runs at the compile-time
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * configured default rate. While this is probably the most common
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * configuration, which we want to support as a special case for
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * performance reasons, we will at some point need to support more
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * dynamic setups as well.
ARM GAS  /tmp/cczatnhQ.s 			page 9


 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #if (defined CONFIG_SYSCLK_DEFAULT_RETURNS_SLOW_OSC)
 332:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** extern uint32_t sysclk_initialized;
 333:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #endif
 334:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** static inline uint32_t sysclk_get_main_hz(void)
 335:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** {
 336:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #if (defined CONFIG_SYSCLK_DEFAULT_RETURNS_SLOW_OSC)
 337:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	if (!sysclk_initialized ) {
 338:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 		return OSC_MAINCK_4M_RC_HZ;
 339:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	}
 340:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #endif
 341:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	/* Config system clock setting */
 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_SLCK_RC) {
 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 		return OSC_SLCK_32K_RC_HZ;
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	} else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_SLCK_XTAL) {
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 		return OSC_SLCK_32K_XTAL_HZ;
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	} else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_SLCK_BYPASS) {
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 		return OSC_SLCK_32K_BYPASS_HZ;
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	} else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_MAINCK_4M_RC) {
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 		return OSC_MAINCK_4M_RC_HZ;
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	} else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_MAINCK_8M_RC) {
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 		return OSC_MAINCK_8M_RC_HZ;
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	} else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_MAINCK_12M_RC) {
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 		return OSC_MAINCK_12M_RC_HZ;
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	} else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_MAINCK_XTAL) {
 356:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 		return OSC_MAINCK_XTAL_HZ;
 357:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	} else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_MAINCK_BYPASS) {
 358:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 		return OSC_MAINCK_BYPASS_HZ;
 359:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	}
 360:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #ifdef CONFIG_PLL0_SOURCE
 361:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_PLLACK) {
 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 		return pll_get_default_rate(0);
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	}
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #endif
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #ifdef CONFIG_PLL1_SOURCE
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_UPLLCK) {
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 		return PLL_UPLL_HZ;
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	}
 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** #endif
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	else {
 372:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 		/* unhandled_case(CONFIG_SYSCLK_SOURCE); */
 373:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 		return 0;
 374:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	}
 375:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** }
 376:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 377:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**
 378:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \brief Return the current rate in Hz of the CPU clock
 379:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 380:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \todo This function assumes that the CPU always runs at the system
 381:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * clock frequency. We want to support at least two more scenarios:
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * Fixed CPU/bus clock dividers (config symbols) and dynamic CPU/bus
 383:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * clock dividers (which may change at run time). Ditto for all the bus
 384:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * clocks.
 385:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 386:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \return Frequency of the CPU clock, in Hz.
ARM GAS  /tmp/cczatnhQ.s 			page 10


 387:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
 388:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** static inline uint32_t sysclk_get_cpu_hz(void)
 389:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** {
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	/* CONFIG_SYSCLK_PRES is the register value for setting the expected */
 391:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	/* prescaler, not an immediate value. */
 392:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	return sysclk_get_main_hz() /
 393:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 		((CONFIG_SYSCLK_PRES == SYSCLK_PRES_3) ? 3 :
 394:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 			(1 << (CONFIG_SYSCLK_PRES >> PMC_MCKR_PRES_Pos)));
 395:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** }
 396:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 397:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**
 398:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \brief Retrieves the current rate in Hz of the peripheral clocks.
 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \return Frequency of the peripheral clocks, in Hz.
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** static inline uint32_t sysclk_get_peripheral_hz(void)
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** {
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	/* CONFIG_SYSCLK_PRES is the register value for setting the expected */
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	/* prescaler, not an immediate value. */
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	return sysclk_get_main_hz() /
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 		(((CONFIG_SYSCLK_PRES == SYSCLK_PRES_3) ? 3 : (1 << (CONFIG_SYSCLK_PRES >> PMC_MCKR_PRES_Pos))) *
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** }
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \brief Retrieves the current rate in Hz of the Peripheral Bus clock attached
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *        to the specified peripheral.
 413:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 414:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \param module Pointer to the module's base address.
 415:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 416:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \return Frequency of the bus attached to the specified peripheral, in Hz.
 417:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
 418:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** static inline uint32_t sysclk_get_peripheral_bus_hz(const volatile void *module)
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** {
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	UNUSED(module);
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	return sysclk_get_peripheral_hz();
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** }
 423:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //@}
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //! \name Enabling and disabling synchronous clocks
 426:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** //@{
 427:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**
 429:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \brief Enable a peripheral's clock.
 430:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
 431:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \param ul_id Id (number) of the peripheral clock.
 432:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
 433:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** static inline void sysclk_enable_peripheral_clock(uint32_t ul_id)
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** {
 435:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	pmc_enable_periph_clk(ul_id);
  48              		.loc 2 435 0
  49 000e 2A20     		movs	r0, #42
  50              	.LVL2:
  51 0010 FFF7FEBF 		b	pmc_enable_periph_clk
  52              	.LVL3:
  53              	.L5:
  54              	.LBE15:
  55              	.LBE14:
ARM GAS  /tmp/cczatnhQ.s 			page 11


  56              	.LBB16:
  57              	.LBB17:
  58 0014 1520     		movs	r0, #21
  59              	.LVL4:
  60 0016 FFF7FEBF 		b	pmc_enable_periph_clk
  61              	.LVL5:
  62              	.L8:
  63 001a 00BF     		.align	2
  64              	.L7:
  65 001c 00800040 		.word	1073774592
  66 0020 00800540 		.word	1074102272
  67              	.LBE17:
  68              	.LBE16:
  69              		.cfi_endproc
  70              	.LFE196:
  71              		.size	spi_enable_clock, .-spi_enable_clock
  72              		.section	.text.spi_disable_clock,"ax",%progbits
  73              		.align	1
  74              		.p2align 2,,3
  75              		.global	spi_disable_clock
  76              		.syntax unified
  77              		.thumb
  78              		.thumb_func
  79              		.fpu fpv5-d16
  80              		.type	spi_disable_clock, %function
  81              	spi_disable_clock:
  82              	.LFB197:
  81:../asf/sam/drivers/spi/spi.c **** 		sysclk_enable_peripheral_clock(ID_SPI1);
  82:../asf/sam/drivers/spi/spi.c **** 	}
  83:../asf/sam/drivers/spi/spi.c **** 	#endif
  84:../asf/sam/drivers/spi/spi.c **** #elif (SAMG55)
  85:../asf/sam/drivers/spi/spi.c **** 	if (p_spi == SPI0) {
  86:../asf/sam/drivers/spi/spi.c **** 		sysclk_enable_peripheral_clock(ID_FLEXCOM0);
  87:../asf/sam/drivers/spi/spi.c **** 	}
  88:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI1
  89:../asf/sam/drivers/spi/spi.c **** 	else if (p_spi == SPI1) {
  90:../asf/sam/drivers/spi/spi.c **** 		sysclk_enable_peripheral_clock(ID_FLEXCOM1);
  91:../asf/sam/drivers/spi/spi.c **** 	}
  92:../asf/sam/drivers/spi/spi.c **** 	#endif
  93:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI2
  94:../asf/sam/drivers/spi/spi.c **** 	else if (p_spi == SPI2) {
  95:../asf/sam/drivers/spi/spi.c **** 		sysclk_enable_peripheral_clock(ID_FLEXCOM2);
  96:../asf/sam/drivers/spi/spi.c **** 	}
  97:../asf/sam/drivers/spi/spi.c **** 	#endif
  98:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI3
  99:../asf/sam/drivers/spi/spi.c **** 	else if (p_spi == SPI3) {
 100:../asf/sam/drivers/spi/spi.c **** 		sysclk_enable_peripheral_clock(ID_FLEXCOM3);
 101:../asf/sam/drivers/spi/spi.c **** 	}
 102:../asf/sam/drivers/spi/spi.c **** 	#endif
 103:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI4
 104:../asf/sam/drivers/spi/spi.c **** 	else if (p_spi == SPI4) {
 105:../asf/sam/drivers/spi/spi.c **** 		sysclk_enable_peripheral_clock(ID_FLEXCOM4);
 106:../asf/sam/drivers/spi/spi.c **** 	}
 107:../asf/sam/drivers/spi/spi.c **** 	#endif
 108:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI5
 109:../asf/sam/drivers/spi/spi.c **** 	else if (p_spi == SPI5) {
 110:../asf/sam/drivers/spi/spi.c **** 		sysclk_enable_peripheral_clock(ID_FLEXCOM5);
ARM GAS  /tmp/cczatnhQ.s 			page 12


 111:../asf/sam/drivers/spi/spi.c **** 	}
 112:../asf/sam/drivers/spi/spi.c **** 	#endif
 113:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI6
 114:../asf/sam/drivers/spi/spi.c **** 	else if (p_spi == SPI6) {
 115:../asf/sam/drivers/spi/spi.c **** 		sysclk_enable_peripheral_clock(ID_FLEXCOM6);
 116:../asf/sam/drivers/spi/spi.c **** 	}
 117:../asf/sam/drivers/spi/spi.c **** 	#endif
 118:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI7
 119:../asf/sam/drivers/spi/spi.c **** 	else if (p_spi == SPI7) {
 120:../asf/sam/drivers/spi/spi.c **** 		sysclk_enable_peripheral_clock(ID_FLEXCOM7);
 121:../asf/sam/drivers/spi/spi.c **** 	}
 122:../asf/sam/drivers/spi/spi.c **** 	#endif
 123:../asf/sam/drivers/spi/spi.c **** #elif SAM4L
 124:../asf/sam/drivers/spi/spi.c **** 	sysclk_enable_peripheral_clock(p_spi);
 125:../asf/sam/drivers/spi/spi.c **** #endif
 126:../asf/sam/drivers/spi/spi.c **** }
 127:../asf/sam/drivers/spi/spi.c **** 
 128:../asf/sam/drivers/spi/spi.c **** /**
 129:../asf/sam/drivers/spi/spi.c ****  * \brief Disable SPI clock.
 130:../asf/sam/drivers/spi/spi.c ****  *
 131:../asf/sam/drivers/spi/spi.c ****  * \param p_spi Pointer to an SPI instance.
 132:../asf/sam/drivers/spi/spi.c ****  */
 133:../asf/sam/drivers/spi/spi.c **** void spi_disable_clock(Spi *p_spi)
 134:../asf/sam/drivers/spi/spi.c **** {
  83              		.loc 1 134 0
  84              		.cfi_startproc
  85              		@ args = 0, pretend = 0, frame = 0
  86              		@ frame_needed = 0, uses_anonymous_args = 0
  87              		@ link register save eliminated.
  88              	.LVL6:
 135:../asf/sam/drivers/spi/spi.c **** #if (SAM4S || SAM3S || SAM3N || SAM3U || SAM4E || SAM4N || SAMG51|| SAMG53|| SAMG54)
 136:../asf/sam/drivers/spi/spi.c **** 	UNUSED(p_spi);
 137:../asf/sam/drivers/spi/spi.c **** 	sysclk_disable_peripheral_clock(ID_SPI);
 138:../asf/sam/drivers/spi/spi.c **** #elif (SAM3XA || SAM4C || SAM4CP || SAM4CM || SAMV71 || SAMV70 || SAME70 || SAMS70)
 139:../asf/sam/drivers/spi/spi.c **** 	if (p_spi == SPI0) {
  89              		.loc 1 139 0
  90 0000 064B     		ldr	r3, .L14
  91 0002 9842     		cmp	r0, r3
  92 0004 06D0     		beq	.L12
 140:../asf/sam/drivers/spi/spi.c **** 		sysclk_disable_peripheral_clock(ID_SPI0);
 141:../asf/sam/drivers/spi/spi.c **** 	}
 142:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI1
 143:../asf/sam/drivers/spi/spi.c **** 	else if (p_spi == SPI1) {
  93              		.loc 1 143 0
  94 0006 064B     		ldr	r3, .L14+4
  95 0008 9842     		cmp	r0, r3
  96 000a 00D0     		beq	.L13
  97 000c 7047     		bx	lr
  98              	.L13:
  99              	.LVL7:
 100              	.LBB18:
 101              	.LBB19:
 436:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** }
 437:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 
 438:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** /**
 439:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \brief Disable a peripheral's clock.
 440:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  *
ARM GAS  /tmp/cczatnhQ.s 			page 13


 441:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  * \param ul_id Id (number) of the peripheral clock.
 442:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h ****  */
 443:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** static inline void sysclk_disable_peripheral_clock(uint32_t ul_id)
 444:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** {
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h **** 	pmc_disable_periph_clk(ul_id);
 102              		.loc 2 445 0
 103 000e 2A20     		movs	r0, #42
 104              	.LVL8:
 105 0010 FFF7FEBF 		b	pmc_disable_periph_clk
 106              	.LVL9:
 107              	.L12:
 108              	.LBE19:
 109              	.LBE18:
 110              	.LBB20:
 111              	.LBB21:
 112 0014 1520     		movs	r0, #21
 113              	.LVL10:
 114 0016 FFF7FEBF 		b	pmc_disable_periph_clk
 115              	.LVL11:
 116              	.L15:
 117 001a 00BF     		.align	2
 118              	.L14:
 119 001c 00800040 		.word	1073774592
 120 0020 00800540 		.word	1074102272
 121              	.LBE21:
 122              	.LBE20:
 123              		.cfi_endproc
 124              	.LFE197:
 125              		.size	spi_disable_clock, .-spi_disable_clock
 126              		.section	.text.spi_set_peripheral_chip_select_value,"ax",%progbits
 127              		.align	1
 128              		.p2align 2,,3
 129              		.global	spi_set_peripheral_chip_select_value
 130              		.syntax unified
 131              		.thumb
 132              		.thumb_func
 133              		.fpu fpv5-d16
 134              		.type	spi_set_peripheral_chip_select_value, %function
 135              	spi_set_peripheral_chip_select_value:
 136              	.LFB198:
 144:../asf/sam/drivers/spi/spi.c **** 		sysclk_disable_peripheral_clock(ID_SPI1);
 145:../asf/sam/drivers/spi/spi.c **** 	}
 146:../asf/sam/drivers/spi/spi.c **** 	#endif
 147:../asf/sam/drivers/spi/spi.c **** #elif (SAMG55)
 148:../asf/sam/drivers/spi/spi.c **** 	if (p_spi == SPI0) {
 149:../asf/sam/drivers/spi/spi.c **** 		sysclk_disable_peripheral_clock(ID_FLEXCOM0);
 150:../asf/sam/drivers/spi/spi.c **** 	}
 151:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI1
 152:../asf/sam/drivers/spi/spi.c **** 	else if (p_spi == SPI1) {
 153:../asf/sam/drivers/spi/spi.c **** 		sysclk_disable_peripheral_clock(ID_FLEXCOM1);
 154:../asf/sam/drivers/spi/spi.c **** 	}
 155:../asf/sam/drivers/spi/spi.c **** 	#endif
 156:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI2
 157:../asf/sam/drivers/spi/spi.c **** 		else if (p_spi == SPI2) {
 158:../asf/sam/drivers/spi/spi.c **** 			sysclk_disable_peripheral_clock(ID_FLEXCOM2);
 159:../asf/sam/drivers/spi/spi.c **** 		}
 160:../asf/sam/drivers/spi/spi.c **** 	#endif
ARM GAS  /tmp/cczatnhQ.s 			page 14


 161:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI3
 162:../asf/sam/drivers/spi/spi.c **** 		else if (p_spi == SPI3) {
 163:../asf/sam/drivers/spi/spi.c **** 			sysclk_disable_peripheral_clock(ID_FLEXCOM3);
 164:../asf/sam/drivers/spi/spi.c **** 		}
 165:../asf/sam/drivers/spi/spi.c **** 	#endif
 166:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI4
 167:../asf/sam/drivers/spi/spi.c **** 		else if (p_spi == SPI4) {
 168:../asf/sam/drivers/spi/spi.c **** 			sysclk_disable_peripheral_clock(ID_FLEXCOM4);
 169:../asf/sam/drivers/spi/spi.c **** 		}
 170:../asf/sam/drivers/spi/spi.c **** 	#endif
 171:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI5
 172:../asf/sam/drivers/spi/spi.c **** 		else if (p_spi == SPI5) {
 173:../asf/sam/drivers/spi/spi.c **** 			sysclk_disable_peripheral_clock(ID_FLEXCOM5);
 174:../asf/sam/drivers/spi/spi.c **** 		}
 175:../asf/sam/drivers/spi/spi.c **** 	#endif
 176:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI6
 177:../asf/sam/drivers/spi/spi.c **** 		else if (p_spi == SPI6) {
 178:../asf/sam/drivers/spi/spi.c **** 			sysclk_disable_peripheral_clock(ID_FLEXCOM6);
 179:../asf/sam/drivers/spi/spi.c **** 		}
 180:../asf/sam/drivers/spi/spi.c **** 	#endif
 181:../asf/sam/drivers/spi/spi.c **** 	#ifdef SPI7
 182:../asf/sam/drivers/spi/spi.c **** 		else if (p_spi == SPI7) {
 183:../asf/sam/drivers/spi/spi.c **** 			sysclk_disable_peripheral_clock(ID_FLEXCOM7);
 184:../asf/sam/drivers/spi/spi.c **** 		}
 185:../asf/sam/drivers/spi/spi.c **** 	#endif
 186:../asf/sam/drivers/spi/spi.c **** #elif SAM4L
 187:../asf/sam/drivers/spi/spi.c **** 	sysclk_disable_peripheral_clock(p_spi);
 188:../asf/sam/drivers/spi/spi.c **** #endif
 189:../asf/sam/drivers/spi/spi.c **** }
 190:../asf/sam/drivers/spi/spi.c **** 
 191:../asf/sam/drivers/spi/spi.c **** /**
 192:../asf/sam/drivers/spi/spi.c ****  * \brief Set Peripheral Chip Select (PCS) value.
 193:../asf/sam/drivers/spi/spi.c ****  *
 194:../asf/sam/drivers/spi/spi.c ****  * \param p_spi Pointer to an SPI instance.
 195:../asf/sam/drivers/spi/spi.c ****  * \param ul_value Peripheral Chip Select value.
 196:../asf/sam/drivers/spi/spi.c ****  *                 If PCS decode mode is not used, use \ref spi_get_pcs to build
 197:../asf/sam/drivers/spi/spi.c ****  *                 the value to use.
 198:../asf/sam/drivers/spi/spi.c ****  *                 On reset the decode mode is not enabled.
 199:../asf/sam/drivers/spi/spi.c ****  *                 The decode mode can be enabled/disabled by follow functions:
 200:../asf/sam/drivers/spi/spi.c ****  *                 \ref spi_enable_peripheral_select_decode,
 201:../asf/sam/drivers/spi/spi.c ****  *                 \ref spi_disable_peripheral_select_decode.
 202:../asf/sam/drivers/spi/spi.c ****  */
 203:../asf/sam/drivers/spi/spi.c **** void spi_set_peripheral_chip_select_value(Spi *p_spi, uint32_t ul_value)
 204:../asf/sam/drivers/spi/spi.c **** {
 137              		.loc 1 204 0
 138              		.cfi_startproc
 139              		@ args = 0, pretend = 0, frame = 0
 140              		@ frame_needed = 0, uses_anonymous_args = 0
 141              		@ link register save eliminated.
 142              	.LVL12:
 205:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_MR &= (~SPI_MR_PCS_Msk);
 143              		.loc 1 205 0
 144 0000 4368     		ldr	r3, [r0, #4]
 206:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_MR |= SPI_MR_PCS(ul_value);
 145              		.loc 1 206 0
 146 0002 0904     		lsls	r1, r1, #16
 147              	.LVL13:
ARM GAS  /tmp/cczatnhQ.s 			page 15


 205:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_MR &= (~SPI_MR_PCS_Msk);
 148              		.loc 1 205 0
 149 0004 23F47023 		bic	r3, r3, #983040
 150              		.loc 1 206 0
 151 0008 01F47021 		and	r1, r1, #983040
 205:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_MR &= (~SPI_MR_PCS_Msk);
 152              		.loc 1 205 0
 153 000c 4360     		str	r3, [r0, #4]
 154              		.loc 1 206 0
 155 000e 4368     		ldr	r3, [r0, #4]
 156 0010 1943     		orrs	r1, r1, r3
 157 0012 4160     		str	r1, [r0, #4]
 158 0014 7047     		bx	lr
 159              		.cfi_endproc
 160              	.LFE198:
 161              		.size	spi_set_peripheral_chip_select_value, .-spi_set_peripheral_chip_select_value
 162 0016 00BF     		.section	.text.spi_set_delay_between_chip_select,"ax",%progbits
 163              		.align	1
 164              		.p2align 2,,3
 165              		.global	spi_set_delay_between_chip_select
 166              		.syntax unified
 167              		.thumb
 168              		.thumb_func
 169              		.fpu fpv5-d16
 170              		.type	spi_set_delay_between_chip_select, %function
 171              	spi_set_delay_between_chip_select:
 172              	.LFB199:
 207:../asf/sam/drivers/spi/spi.c **** }
 208:../asf/sam/drivers/spi/spi.c **** 
 209:../asf/sam/drivers/spi/spi.c **** /**
 210:../asf/sam/drivers/spi/spi.c ****  * \brief Set delay between chip selects (in number of MCK clocks).
 211:../asf/sam/drivers/spi/spi.c ****  *  If DLYBCS <= 6, 6 MCK clocks will be inserted by default.
 212:../asf/sam/drivers/spi/spi.c ****  *
 213:../asf/sam/drivers/spi/spi.c ****  * \param p_spi Pointer to an SPI instance.
 214:../asf/sam/drivers/spi/spi.c ****  * \param ul_delay Delay between chip selects (in number of MCK clocks).
 215:../asf/sam/drivers/spi/spi.c ****  */
 216:../asf/sam/drivers/spi/spi.c **** void spi_set_delay_between_chip_select(Spi *p_spi, uint32_t ul_delay)
 217:../asf/sam/drivers/spi/spi.c **** {
 173              		.loc 1 217 0
 174              		.cfi_startproc
 175              		@ args = 0, pretend = 0, frame = 0
 176              		@ frame_needed = 0, uses_anonymous_args = 0
 177              		@ link register save eliminated.
 178              	.LVL14:
 218:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_MR &= (~SPI_MR_DLYBCS_Msk);
 179              		.loc 1 218 0
 180 0000 4368     		ldr	r3, [r0, #4]
 181 0002 23F07F43 		bic	r3, r3, #-16777216
 182 0006 4360     		str	r3, [r0, #4]
 219:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_MR |= SPI_MR_DLYBCS(ul_delay);
 183              		.loc 1 219 0
 184 0008 4368     		ldr	r3, [r0, #4]
 185 000a 43EA0161 		orr	r1, r3, r1, lsl #24
 186              	.LVL15:
 187 000e 4160     		str	r1, [r0, #4]
 188 0010 7047     		bx	lr
 189              		.cfi_endproc
ARM GAS  /tmp/cczatnhQ.s 			page 16


 190              	.LFE199:
 191              		.size	spi_set_delay_between_chip_select, .-spi_set_delay_between_chip_select
 192 0012 00BF     		.section	.text.spi_read,"ax",%progbits
 193              		.align	1
 194              		.p2align 2,,3
 195              		.global	spi_read
 196              		.syntax unified
 197              		.thumb
 198              		.thumb_func
 199              		.fpu fpv5-d16
 200              		.type	spi_read, %function
 201              	spi_read:
 202              	.LFB200:
 220:../asf/sam/drivers/spi/spi.c **** }
 221:../asf/sam/drivers/spi/spi.c **** 
 222:../asf/sam/drivers/spi/spi.c **** /**
 223:../asf/sam/drivers/spi/spi.c ****  * \brief Read the received data and it's peripheral chip select value.
 224:../asf/sam/drivers/spi/spi.c ****  * While SPI works in fixed peripheral select mode, the peripheral chip select
 225:../asf/sam/drivers/spi/spi.c ****  * value is meaningless.
 226:../asf/sam/drivers/spi/spi.c ****  *
 227:../asf/sam/drivers/spi/spi.c ****  * \param p_spi Pointer to an SPI instance.
 228:../asf/sam/drivers/spi/spi.c ****  * \param data Pointer to the location where to store the received data word.
 229:../asf/sam/drivers/spi/spi.c ****  * \param p_pcs Pointer to fill Peripheral Chip Select Value.
 230:../asf/sam/drivers/spi/spi.c ****  *
 231:../asf/sam/drivers/spi/spi.c ****  * \retval SPI_OK on Success.
 232:../asf/sam/drivers/spi/spi.c ****  * \retval SPI_ERROR_TIMEOUT on Time-out.
 233:../asf/sam/drivers/spi/spi.c ****  */
 234:../asf/sam/drivers/spi/spi.c **** spi_status_t spi_read(Spi *p_spi, uint16_t *us_data, uint8_t *p_pcs)
 235:../asf/sam/drivers/spi/spi.c **** {
 203              		.loc 1 235 0
 204              		.cfi_startproc
 205              		@ args = 0, pretend = 0, frame = 0
 206              		@ frame_needed = 0, uses_anonymous_args = 0
 207              		@ link register save eliminated.
 208              	.LVL16:
 209 0000 10B4     		push	{r4}
 210              		.cfi_def_cfa_offset 4
 211              		.cfi_offset 4, -4
 236:../asf/sam/drivers/spi/spi.c **** 	uint32_t timeout = SPI_TIMEOUT;
 237:../asf/sam/drivers/spi/spi.c **** 	static uint32_t reg_value;
 238:../asf/sam/drivers/spi/spi.c **** 
 239:../asf/sam/drivers/spi/spi.c **** 	while (!(p_spi->SPI_SR & SPI_SR_RDRF)) {
 212              		.loc 1 239 0
 213 0002 43F69923 		movw	r3, #15001
 214 0006 01E0     		b	.L19
 215              	.LVL17:
 216              	.L21:
 240:../asf/sam/drivers/spi/spi.c **** 		if (!timeout--) {
 217              		.loc 1 240 0
 218 0008 013B     		subs	r3, r3, #1
 219              	.LVL18:
 220 000a 0FD0     		beq	.L24
 221              	.LVL19:
 222              	.L19:
 239:../asf/sam/drivers/spi/spi.c **** 		if (!timeout--) {
 223              		.loc 1 239 0
 224 000c 0469     		ldr	r4, [r0, #16]
ARM GAS  /tmp/cczatnhQ.s 			page 17


 225 000e E407     		lsls	r4, r4, #31
 226 0010 FAD5     		bpl	.L21
 241:../asf/sam/drivers/spi/spi.c **** 			return SPI_ERROR_TIMEOUT;
 242:../asf/sam/drivers/spi/spi.c **** 		}
 243:../asf/sam/drivers/spi/spi.c **** 	}
 244:../asf/sam/drivers/spi/spi.c **** 
 245:../asf/sam/drivers/spi/spi.c **** 	reg_value = p_spi->SPI_RDR;
 227              		.loc 1 245 0
 228 0012 8368     		ldr	r3, [r0, #8]
 229              	.LVL20:
 230              	.LBB22:
 231              	.LBB23:
 232              		.file 3 "../asf/sam/drivers/spi/spi.h"
   1:../asf/sam/drivers/spi/spi.h **** /**
   2:../asf/sam/drivers/spi/spi.h ****  * \file
   3:../asf/sam/drivers/spi/spi.h ****  *
   4:../asf/sam/drivers/spi/spi.h ****  * \brief Serial Peripheral Interface (SPI) driver for SAM.
   5:../asf/sam/drivers/spi/spi.h ****  *
   6:../asf/sam/drivers/spi/spi.h ****  * Copyright (c) 2011-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/spi/spi.h ****  *
   8:../asf/sam/drivers/spi/spi.h ****  * \asf_license_start
   9:../asf/sam/drivers/spi/spi.h ****  *
  10:../asf/sam/drivers/spi/spi.h ****  * \page License
  11:../asf/sam/drivers/spi/spi.h ****  *
  12:../asf/sam/drivers/spi/spi.h ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/spi/spi.h ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/spi/spi.h ****  *
  15:../asf/sam/drivers/spi/spi.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/spi/spi.h ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/spi/spi.h ****  *
  18:../asf/sam/drivers/spi/spi.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/spi/spi.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/spi/spi.h ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/spi/spi.h ****  *
  22:../asf/sam/drivers/spi/spi.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/spi/spi.h ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/spi/spi.h ****  *
  25:../asf/sam/drivers/spi/spi.h ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/spi/spi.h ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/spi/spi.h ****  *
  28:../asf/sam/drivers/spi/spi.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/spi/spi.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/spi/spi.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:../asf/sam/drivers/spi/spi.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/spi/spi.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/spi/spi.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/spi/spi.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/spi/spi.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/spi/spi.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/spi/spi.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/spi/spi.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/spi/spi.h ****  *
  40:../asf/sam/drivers/spi/spi.h ****  * \asf_license_stop
  41:../asf/sam/drivers/spi/spi.h ****  *
  42:../asf/sam/drivers/spi/spi.h ****  */
  43:../asf/sam/drivers/spi/spi.h **** /*
  44:../asf/sam/drivers/spi/spi.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
ARM GAS  /tmp/cczatnhQ.s 			page 18


  45:../asf/sam/drivers/spi/spi.h ****  */
  46:../asf/sam/drivers/spi/spi.h **** 
  47:../asf/sam/drivers/spi/spi.h **** #ifndef SPI_H_INCLUDED
  48:../asf/sam/drivers/spi/spi.h **** #define SPI_H_INCLUDED
  49:../asf/sam/drivers/spi/spi.h **** 
  50:../asf/sam/drivers/spi/spi.h **** #include "compiler.h"
  51:../asf/sam/drivers/spi/spi.h **** 
  52:../asf/sam/drivers/spi/spi.h **** /// @cond 0
  53:../asf/sam/drivers/spi/spi.h **** /**INDENT-OFF**/
  54:../asf/sam/drivers/spi/spi.h **** #ifdef __cplusplus
  55:../asf/sam/drivers/spi/spi.h **** extern "C" {
  56:../asf/sam/drivers/spi/spi.h **** #endif
  57:../asf/sam/drivers/spi/spi.h **** /**INDENT-ON**/
  58:../asf/sam/drivers/spi/spi.h **** /// @endcond
  59:../asf/sam/drivers/spi/spi.h **** 
  60:../asf/sam/drivers/spi/spi.h **** /** Time-out value (number of attempts). */
  61:../asf/sam/drivers/spi/spi.h **** #define SPI_TIMEOUT       15000
  62:../asf/sam/drivers/spi/spi.h **** 
  63:../asf/sam/drivers/spi/spi.h **** /** Status codes used by the SPI driver. */
  64:../asf/sam/drivers/spi/spi.h **** typedef enum
  65:../asf/sam/drivers/spi/spi.h **** {
  66:../asf/sam/drivers/spi/spi.h **** 	SPI_ERROR = -1,
  67:../asf/sam/drivers/spi/spi.h **** 	SPI_OK = 0,
  68:../asf/sam/drivers/spi/spi.h **** 	SPI_ERROR_TIMEOUT = 1,
  69:../asf/sam/drivers/spi/spi.h **** 	SPI_ERROR_ARGUMENT,
  70:../asf/sam/drivers/spi/spi.h **** 	SPI_ERROR_OVERRUN,
  71:../asf/sam/drivers/spi/spi.h **** 	SPI_ERROR_MODE_FAULT,
  72:../asf/sam/drivers/spi/spi.h **** 	SPI_ERROR_OVERRUN_AND_MODE_FAULT
  73:../asf/sam/drivers/spi/spi.h **** } spi_status_t;
  74:../asf/sam/drivers/spi/spi.h **** 
  75:../asf/sam/drivers/spi/spi.h **** /** SPI Chip Select behavior modes while transferring. */
  76:../asf/sam/drivers/spi/spi.h **** typedef enum spi_cs_behavior {
  77:../asf/sam/drivers/spi/spi.h **** 	/** CS does not rise until a new transfer is requested on different chip select. */
  78:../asf/sam/drivers/spi/spi.h **** 	SPI_CS_KEEP_LOW = SPI_CSR_CSAAT,
  79:../asf/sam/drivers/spi/spi.h **** 	/** CS rises if there is no more data to transfer. */
  80:../asf/sam/drivers/spi/spi.h **** 	SPI_CS_RISE_NO_TX = 0,
  81:../asf/sam/drivers/spi/spi.h **** 	/** CS is de-asserted systematically during a time DLYBCS. */
  82:../asf/sam/drivers/spi/spi.h **** 	SPI_CS_RISE_FORCED = SPI_CSR_CSNAAT
  83:../asf/sam/drivers/spi/spi.h **** } spi_cs_behavior_t;
  84:../asf/sam/drivers/spi/spi.h **** 
  85:../asf/sam/drivers/spi/spi.h **** /**
  86:../asf/sam/drivers/spi/spi.h ****  * \brief Generate Peripheral Chip Select Value from Chip Select ID
  87:../asf/sam/drivers/spi/spi.h ****  * \note When chip select n is working, PCS bit n is set to low level.
  88:../asf/sam/drivers/spi/spi.h ****  *
  89:../asf/sam/drivers/spi/spi.h ****  * \param chip_sel_id The chip select number used
  90:../asf/sam/drivers/spi/spi.h ****  */
  91:../asf/sam/drivers/spi/spi.h **** #define spi_get_pcs(chip_sel_id) ((~(1u<<(chip_sel_id)))&0xF)
  92:../asf/sam/drivers/spi/spi.h **** 
  93:../asf/sam/drivers/spi/spi.h **** /**
  94:../asf/sam/drivers/spi/spi.h ****  * \brief Reset SPI and set it to Slave mode.
  95:../asf/sam/drivers/spi/spi.h ****  *
  96:../asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
  97:../asf/sam/drivers/spi/spi.h ****  */
  98:../asf/sam/drivers/spi/spi.h **** static inline void spi_reset(Spi *p_spi)
  99:../asf/sam/drivers/spi/spi.h **** {
 100:../asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_CR = SPI_CR_SWRST;
 101:../asf/sam/drivers/spi/spi.h **** }
ARM GAS  /tmp/cczatnhQ.s 			page 19


 102:../asf/sam/drivers/spi/spi.h **** 
 103:../asf/sam/drivers/spi/spi.h **** /**
 104:../asf/sam/drivers/spi/spi.h ****  * \brief Enable SPI.
 105:../asf/sam/drivers/spi/spi.h ****  *
 106:../asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 107:../asf/sam/drivers/spi/spi.h ****  */
 108:../asf/sam/drivers/spi/spi.h **** static inline void spi_enable(Spi *p_spi)
 109:../asf/sam/drivers/spi/spi.h **** {
 110:../asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_CR = SPI_CR_SPIEN;
 111:../asf/sam/drivers/spi/spi.h **** }
 112:../asf/sam/drivers/spi/spi.h **** 
 113:../asf/sam/drivers/spi/spi.h **** /**
 114:../asf/sam/drivers/spi/spi.h ****  * \brief Disable SPI.
 115:../asf/sam/drivers/spi/spi.h ****  *
 116:../asf/sam/drivers/spi/spi.h ****  * \note CS is de-asserted, which indicates that the last data is done, and user
 117:../asf/sam/drivers/spi/spi.h ****  * should check TX_EMPTY before disabling SPI.
 118:../asf/sam/drivers/spi/spi.h ****  *
 119:../asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 120:../asf/sam/drivers/spi/spi.h ****  */
 121:../asf/sam/drivers/spi/spi.h **** static inline void spi_disable(Spi *p_spi)
 122:../asf/sam/drivers/spi/spi.h **** {
 123:../asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_CR = SPI_CR_SPIDIS;
 124:../asf/sam/drivers/spi/spi.h **** }
 125:../asf/sam/drivers/spi/spi.h **** 
 126:../asf/sam/drivers/spi/spi.h **** /**
 127:../asf/sam/drivers/spi/spi.h ****  * \brief Issue a LASTXFER command.
 128:../asf/sam/drivers/spi/spi.h ****  *  The next transfer is the last transfer and after that CS is de-asserted.
 129:../asf/sam/drivers/spi/spi.h ****  *
 130:../asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 131:../asf/sam/drivers/spi/spi.h ****  */
 132:../asf/sam/drivers/spi/spi.h **** static inline void spi_set_lastxfer(Spi *p_spi)
 133:../asf/sam/drivers/spi/spi.h **** {
 134:../asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_CR = SPI_CR_LASTXFER;
 135:../asf/sam/drivers/spi/spi.h **** }
 136:../asf/sam/drivers/spi/spi.h **** 
 137:../asf/sam/drivers/spi/spi.h **** /**
 138:../asf/sam/drivers/spi/spi.h ****  * \brief Set SPI to Master mode.
 139:../asf/sam/drivers/spi/spi.h ****  *
 140:../asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 141:../asf/sam/drivers/spi/spi.h ****  */
 142:../asf/sam/drivers/spi/spi.h **** static inline void spi_set_master_mode(Spi *p_spi)
 143:../asf/sam/drivers/spi/spi.h **** {
 144:../asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR |= SPI_MR_MSTR;
 145:../asf/sam/drivers/spi/spi.h **** }
 146:../asf/sam/drivers/spi/spi.h **** 
 147:../asf/sam/drivers/spi/spi.h **** /**
 148:../asf/sam/drivers/spi/spi.h ****  * \brief Set SPI to Slave mode.
 149:../asf/sam/drivers/spi/spi.h ****  *
 150:../asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 151:../asf/sam/drivers/spi/spi.h ****  */
 152:../asf/sam/drivers/spi/spi.h **** static inline void spi_set_slave_mode(Spi *p_spi)
 153:../asf/sam/drivers/spi/spi.h **** {
 154:../asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR &= (~SPI_MR_MSTR);
 155:../asf/sam/drivers/spi/spi.h **** }
 156:../asf/sam/drivers/spi/spi.h **** 
 157:../asf/sam/drivers/spi/spi.h **** /**
 158:../asf/sam/drivers/spi/spi.h ****  * \brief Get SPI work mode.
ARM GAS  /tmp/cczatnhQ.s 			page 20


 159:../asf/sam/drivers/spi/spi.h ****  *
 160:../asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 161:../asf/sam/drivers/spi/spi.h ****  *
 162:../asf/sam/drivers/spi/spi.h ****  * \return 1 for master mode, 0 for slave mode.
 163:../asf/sam/drivers/spi/spi.h ****  */
 164:../asf/sam/drivers/spi/spi.h **** static inline uint32_t spi_get_mode(Spi *p_spi)
 165:../asf/sam/drivers/spi/spi.h **** {
 166:../asf/sam/drivers/spi/spi.h **** 	if (p_spi->SPI_MR & SPI_MR_MSTR) {
 167:../asf/sam/drivers/spi/spi.h **** 		return 1;
 168:../asf/sam/drivers/spi/spi.h **** 	} else {
 169:../asf/sam/drivers/spi/spi.h **** 		return 0;
 170:../asf/sam/drivers/spi/spi.h **** 	}
 171:../asf/sam/drivers/spi/spi.h **** }
 172:../asf/sam/drivers/spi/spi.h **** 
 173:../asf/sam/drivers/spi/spi.h **** /**
 174:../asf/sam/drivers/spi/spi.h ****  * \brief Set Variable Peripheral Select.
 175:../asf/sam/drivers/spi/spi.h ****  * Peripheral Chip Select can be controlled by SPI_TDR.
 176:../asf/sam/drivers/spi/spi.h ****  *
 177:../asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 178:../asf/sam/drivers/spi/spi.h ****  */
 179:../asf/sam/drivers/spi/spi.h **** static inline void spi_set_variable_peripheral_select(Spi *p_spi)
 180:../asf/sam/drivers/spi/spi.h **** {
 181:../asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR |= SPI_MR_PS;
 182:../asf/sam/drivers/spi/spi.h **** }
 183:../asf/sam/drivers/spi/spi.h **** 
 184:../asf/sam/drivers/spi/spi.h **** /**
 185:../asf/sam/drivers/spi/spi.h ****  * \brief Set Fixed Peripheral Select.
 186:../asf/sam/drivers/spi/spi.h ****  *  Peripheral Chip Select is controlled by SPI_MR.
 187:../asf/sam/drivers/spi/spi.h ****  *
 188:../asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 189:../asf/sam/drivers/spi/spi.h ****  */
 190:../asf/sam/drivers/spi/spi.h **** static inline void spi_set_fixed_peripheral_select(Spi *p_spi)
 191:../asf/sam/drivers/spi/spi.h **** {
 192:../asf/sam/drivers/spi/spi.h **** 	p_spi->SPI_MR &= (~SPI_MR_PS);
 193:../asf/sam/drivers/spi/spi.h **** }
 194:../asf/sam/drivers/spi/spi.h **** 
 195:../asf/sam/drivers/spi/spi.h **** /**
 196:../asf/sam/drivers/spi/spi.h ****  * \brief Get Peripheral Select mode.
 197:../asf/sam/drivers/spi/spi.h ****  *
 198:../asf/sam/drivers/spi/spi.h ****  * \param p_spi Pointer to an SPI instance.
 199:../asf/sam/drivers/spi/spi.h ****  *
 200:../asf/sam/drivers/spi/spi.h ****  * \return 1 for Variable mode, 0 for fixed mode.
 201:../asf/sam/drivers/spi/spi.h ****  */
 202:../asf/sam/drivers/spi/spi.h **** static inline uint32_t spi_get_peripheral_select_mode(Spi *p_spi)
 203:../asf/sam/drivers/spi/spi.h **** {
 204:../asf/sam/drivers/spi/spi.h **** 	if (p_spi->SPI_MR & SPI_MR_PS) {
 233              		.loc 3 204 0
 234 0014 4068     		ldr	r0, [r0, #4]
 235              	.LVL21:
 236 0016 8007     		lsls	r0, r0, #30
 237 0018 04D4     		bmi	.L22
 238              	.LVL22:
 239              	.L23:
 240              	.LBE23:
 241              	.LBE22:
 246:../asf/sam/drivers/spi/spi.c **** 	if (spi_get_peripheral_select_mode(p_spi)) {
 247:../asf/sam/drivers/spi/spi.c **** 		*p_pcs = (uint8_t) ((reg_value & SPI_RDR_PCS_Msk) >> SPI_RDR_PCS_Pos);
ARM GAS  /tmp/cczatnhQ.s 			page 21


 248:../asf/sam/drivers/spi/spi.c **** 	}
 249:../asf/sam/drivers/spi/spi.c **** 	*us_data = (uint16_t) (reg_value & SPI_RDR_RD_Msk);
 250:../asf/sam/drivers/spi/spi.c **** 
 251:../asf/sam/drivers/spi/spi.c **** 	return SPI_OK;
 242              		.loc 1 251 0
 243 001a 0020     		movs	r0, #0
 249:../asf/sam/drivers/spi/spi.c **** 
 244              		.loc 1 249 0
 245 001c 0B80     		strh	r3, [r1]	@ movhi
 252:../asf/sam/drivers/spi/spi.c **** }
 246              		.loc 1 252 0
 247 001e 5DF8044B 		ldr	r4, [sp], #4
 248              		.cfi_remember_state
 249              		.cfi_restore 4
 250              		.cfi_def_cfa_offset 0
 251 0022 7047     		bx	lr
 252              	.LVL23:
 253              	.L22:
 254              		.cfi_restore_state
 247:../asf/sam/drivers/spi/spi.c **** 	}
 255              		.loc 1 247 0
 256 0024 C3F30340 		ubfx	r0, r3, #16, #4
 257 0028 1070     		strb	r0, [r2]
 258 002a F6E7     		b	.L23
 259              	.LVL24:
 260              	.L24:
 241:../asf/sam/drivers/spi/spi.c **** 		}
 261              		.loc 1 241 0
 262 002c 0120     		movs	r0, #1
 263              	.LVL25:
 264              		.loc 1 252 0
 265 002e 5DF8044B 		ldr	r4, [sp], #4
 266              		.cfi_restore 4
 267              		.cfi_def_cfa_offset 0
 268 0032 7047     		bx	lr
 269              		.cfi_endproc
 270              	.LFE200:
 271              		.size	spi_read, .-spi_read
 272              		.section	.text.spi_write,"ax",%progbits
 273              		.align	1
 274              		.p2align 2,,3
 275              		.global	spi_write
 276              		.syntax unified
 277              		.thumb
 278              		.thumb_func
 279              		.fpu fpv5-d16
 280              		.type	spi_write, %function
 281              	spi_write:
 282              	.LFB201:
 253:../asf/sam/drivers/spi/spi.c **** 
 254:../asf/sam/drivers/spi/spi.c **** /**
 255:../asf/sam/drivers/spi/spi.c ****  * \brief Write the transmitted data with specified peripheral chip select value.
 256:../asf/sam/drivers/spi/spi.c ****  *
 257:../asf/sam/drivers/spi/spi.c ****  * \param p_spi Pointer to an SPI instance.
 258:../asf/sam/drivers/spi/spi.c ****  * \param us_data The data to transmit.
 259:../asf/sam/drivers/spi/spi.c ****  * \param uc_pcs Peripheral Chip Select Value while SPI works in peripheral select
 260:../asf/sam/drivers/spi/spi.c ****  * mode, otherwise it's meaningless.
ARM GAS  /tmp/cczatnhQ.s 			page 22


 261:../asf/sam/drivers/spi/spi.c ****  * \param uc_last Indicate whether this data is the last one while SPI is working
 262:../asf/sam/drivers/spi/spi.c ****  * in variable peripheral select mode.
 263:../asf/sam/drivers/spi/spi.c ****  *
 264:../asf/sam/drivers/spi/spi.c ****  * \retval SPI_OK on Success.
 265:../asf/sam/drivers/spi/spi.c ****  * \retval SPI_ERROR_TIMEOUT on Time-out.
 266:../asf/sam/drivers/spi/spi.c ****  */
 267:../asf/sam/drivers/spi/spi.c **** spi_status_t spi_write(Spi *p_spi, uint16_t us_data,
 268:../asf/sam/drivers/spi/spi.c **** 		uint8_t uc_pcs, uint8_t uc_last)
 269:../asf/sam/drivers/spi/spi.c **** {
 283              		.loc 1 269 0
 284              		.cfi_startproc
 285              		@ args = 0, pretend = 0, frame = 0
 286              		@ frame_needed = 0, uses_anonymous_args = 0
 287              		@ link register save eliminated.
 288              	.LVL26:
 289 0000 30B4     		push	{r4, r5}
 290              		.cfi_def_cfa_offset 8
 291              		.cfi_offset 4, -8
 292              		.cfi_offset 5, -4
 270:../asf/sam/drivers/spi/spi.c **** 	uint32_t timeout = SPI_TIMEOUT;
 271:../asf/sam/drivers/spi/spi.c **** 	uint32_t value;
 272:../asf/sam/drivers/spi/spi.c **** 
 273:../asf/sam/drivers/spi/spi.c **** 	while (!(p_spi->SPI_SR & SPI_SR_TDRE)) {
 293              		.loc 1 273 0
 294 0002 43F69924 		movw	r4, #15001
 295 0006 01E0     		b	.L29
 296              	.LVL27:
 297              	.L31:
 274:../asf/sam/drivers/spi/spi.c **** 		if (!timeout--) {
 298              		.loc 1 274 0
 299 0008 013C     		subs	r4, r4, #1
 300              	.LVL28:
 301 000a 10D0     		beq	.L36
 302              	.LVL29:
 303              	.L29:
 273:../asf/sam/drivers/spi/spi.c **** 		if (!timeout--) {
 304              		.loc 1 273 0
 305 000c 0569     		ldr	r5, [r0, #16]
 306 000e AD07     		lsls	r5, r5, #30
 307 0010 FAD5     		bpl	.L31
 308              	.LVL30:
 309              	.LBB24:
 310              	.LBB25:
 311              		.loc 3 204 0
 312 0012 4468     		ldr	r4, [r0, #4]
 313              	.LVL31:
 314 0014 A407     		lsls	r4, r4, #30
 315 0016 06D5     		bpl	.L35
 316              	.LVL32:
 317              	.LBE25:
 318              	.LBE24:
 275:../asf/sam/drivers/spi/spi.c **** 			return SPI_ERROR_TIMEOUT;
 276:../asf/sam/drivers/spi/spi.c **** 		}
 277:../asf/sam/drivers/spi/spi.c **** 	}
 278:../asf/sam/drivers/spi/spi.c **** 
 279:../asf/sam/drivers/spi/spi.c **** 	if (spi_get_peripheral_select_mode(p_spi)) {
 280:../asf/sam/drivers/spi/spi.c **** 		value = SPI_TDR_TD(us_data) | SPI_TDR_PCS(uc_pcs);
ARM GAS  /tmp/cczatnhQ.s 			page 23


 319              		.loc 1 280 0
 320 0018 1204     		lsls	r2, r2, #16
 321              	.LVL33:
 322 001a 02F47022 		and	r2, r2, #983040
 323 001e 1143     		orrs	r1, r1, r2
 324              	.LVL34:
 281:../asf/sam/drivers/spi/spi.c **** 		if (uc_last) {
 325              		.loc 1 281 0
 326 0020 0BB1     		cbz	r3, .L35
 282:../asf/sam/drivers/spi/spi.c **** 			value |= SPI_TDR_LASTXFER;
 327              		.loc 1 282 0
 328 0022 41F08071 		orr	r1, r1, #16777216
 329              	.LVL35:
 330              	.L35:
 283:../asf/sam/drivers/spi/spi.c **** 		}
 284:../asf/sam/drivers/spi/spi.c **** 	} else {
 285:../asf/sam/drivers/spi/spi.c **** 		value = SPI_TDR_TD(us_data);
 286:../asf/sam/drivers/spi/spi.c **** 	}
 287:../asf/sam/drivers/spi/spi.c **** 
 288:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_TDR = value;
 331              		.loc 1 288 0
 332 0026 C160     		str	r1, [r0, #12]
 289:../asf/sam/drivers/spi/spi.c **** 
 290:../asf/sam/drivers/spi/spi.c **** 	return SPI_OK;
 333              		.loc 1 290 0
 334 0028 0020     		movs	r0, #0
 335              	.LVL36:
 291:../asf/sam/drivers/spi/spi.c **** }
 336              		.loc 1 291 0
 337 002a 30BC     		pop	{r4, r5}
 338              		.cfi_remember_state
 339              		.cfi_restore 5
 340              		.cfi_restore 4
 341              		.cfi_def_cfa_offset 0
 342 002c 7047     		bx	lr
 343              	.LVL37:
 344              	.L36:
 345              		.cfi_restore_state
 275:../asf/sam/drivers/spi/spi.c **** 		}
 346              		.loc 1 275 0
 347 002e 0120     		movs	r0, #1
 348              	.LVL38:
 349              		.loc 1 291 0
 350 0030 30BC     		pop	{r4, r5}
 351              		.cfi_restore 4
 352              		.cfi_restore 5
 353              		.cfi_def_cfa_offset 0
 354              	.LVL39:
 355 0032 7047     		bx	lr
 356              		.cfi_endproc
 357              	.LFE201:
 358              		.size	spi_write, .-spi_write
 359              		.section	.text.spi_set_clock_polarity,"ax",%progbits
 360              		.align	1
 361              		.p2align 2,,3
 362              		.global	spi_set_clock_polarity
 363              		.syntax unified
ARM GAS  /tmp/cczatnhQ.s 			page 24


 364              		.thumb
 365              		.thumb_func
 366              		.fpu fpv5-d16
 367              		.type	spi_set_clock_polarity, %function
 368              	spi_set_clock_polarity:
 369              	.LFB202:
 292:../asf/sam/drivers/spi/spi.c **** 
 293:../asf/sam/drivers/spi/spi.c **** /**
 294:../asf/sam/drivers/spi/spi.c ****  * \brief Set clock default state.
 295:../asf/sam/drivers/spi/spi.c ****  *
 296:../asf/sam/drivers/spi/spi.c ****  * \param p_spi Pointer to an SPI instance.
 297:../asf/sam/drivers/spi/spi.c ****  * \param ul_pcs_ch Peripheral Chip Select channel (0~3).
 298:../asf/sam/drivers/spi/spi.c ****  * \param ul_polarity Default clock state is logical one(high)/zero(low).
 299:../asf/sam/drivers/spi/spi.c ****  */
 300:../asf/sam/drivers/spi/spi.c **** void spi_set_clock_polarity(Spi *p_spi, uint32_t ul_pcs_ch,
 301:../asf/sam/drivers/spi/spi.c **** 		uint32_t ul_polarity)
 302:../asf/sam/drivers/spi/spi.c **** {
 370              		.loc 1 302 0
 371              		.cfi_startproc
 372              		@ args = 0, pretend = 0, frame = 0
 373              		@ frame_needed = 0, uses_anonymous_args = 0
 374              		@ link register save eliminated.
 375              	.LVL40:
 376 0000 00EB8100 		add	r0, r0, r1, lsl #2
 377              	.LVL41:
 303:../asf/sam/drivers/spi/spi.c **** 	if (ul_polarity) {
 304:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_CSR[ul_pcs_ch] |= SPI_CSR_CPOL;
 378              		.loc 1 304 0
 379 0004 036B     		ldr	r3, [r0, #48]
 303:../asf/sam/drivers/spi/spi.c **** 	if (ul_polarity) {
 380              		.loc 1 303 0
 381 0006 1AB9     		cbnz	r2, .L44
 305:../asf/sam/drivers/spi/spi.c **** 	} else {
 306:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_CSR[ul_pcs_ch] &= (~SPI_CSR_CPOL);
 382              		.loc 1 306 0
 383 0008 23F00103 		bic	r3, r3, #1
 384 000c 0363     		str	r3, [r0, #48]
 385 000e 7047     		bx	lr
 386              	.L44:
 304:../asf/sam/drivers/spi/spi.c **** 	} else {
 387              		.loc 1 304 0
 388 0010 43F00103 		orr	r3, r3, #1
 389 0014 0363     		str	r3, [r0, #48]
 390 0016 7047     		bx	lr
 391              		.cfi_endproc
 392              	.LFE202:
 393              		.size	spi_set_clock_polarity, .-spi_set_clock_polarity
 394              		.section	.text.spi_set_clock_phase,"ax",%progbits
 395              		.align	1
 396              		.p2align 2,,3
 397              		.global	spi_set_clock_phase
 398              		.syntax unified
 399              		.thumb
 400              		.thumb_func
 401              		.fpu fpv5-d16
 402              		.type	spi_set_clock_phase, %function
 403              	spi_set_clock_phase:
ARM GAS  /tmp/cczatnhQ.s 			page 25


 404              	.LFB203:
 307:../asf/sam/drivers/spi/spi.c **** 	}
 308:../asf/sam/drivers/spi/spi.c **** }
 309:../asf/sam/drivers/spi/spi.c **** 
 310:../asf/sam/drivers/spi/spi.c **** /**
 311:../asf/sam/drivers/spi/spi.c ****  * \brief Set Data Capture Phase.
 312:../asf/sam/drivers/spi/spi.c ****  *
 313:../asf/sam/drivers/spi/spi.c ****  * \param p_spi Pointer to an SPI instance.
 314:../asf/sam/drivers/spi/spi.c ****  *  \param ul_pcs_ch Peripheral Chip Select channel (0~3).
 315:../asf/sam/drivers/spi/spi.c ****  *  \param ul_phase Data capture on the rising/falling edge of clock.
 316:../asf/sam/drivers/spi/spi.c ****  */
 317:../asf/sam/drivers/spi/spi.c **** void spi_set_clock_phase(Spi *p_spi, uint32_t ul_pcs_ch, uint32_t ul_phase)
 318:../asf/sam/drivers/spi/spi.c **** {
 405              		.loc 1 318 0
 406              		.cfi_startproc
 407              		@ args = 0, pretend = 0, frame = 0
 408              		@ frame_needed = 0, uses_anonymous_args = 0
 409              		@ link register save eliminated.
 410              	.LVL42:
 411 0000 00EB8100 		add	r0, r0, r1, lsl #2
 412              	.LVL43:
 319:../asf/sam/drivers/spi/spi.c **** 	if (ul_phase) {
 320:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_CSR[ul_pcs_ch] |= SPI_CSR_NCPHA;
 413              		.loc 1 320 0
 414 0004 036B     		ldr	r3, [r0, #48]
 319:../asf/sam/drivers/spi/spi.c **** 	if (ul_phase) {
 415              		.loc 1 319 0
 416 0006 1AB9     		cbnz	r2, .L48
 321:../asf/sam/drivers/spi/spi.c **** 	} else {
 322:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_CSR[ul_pcs_ch] &= (~SPI_CSR_NCPHA);
 417              		.loc 1 322 0
 418 0008 23F00203 		bic	r3, r3, #2
 419 000c 0363     		str	r3, [r0, #48]
 420 000e 7047     		bx	lr
 421              	.L48:
 320:../asf/sam/drivers/spi/spi.c **** 	} else {
 422              		.loc 1 320 0
 423 0010 43F00203 		orr	r3, r3, #2
 424 0014 0363     		str	r3, [r0, #48]
 425 0016 7047     		bx	lr
 426              		.cfi_endproc
 427              	.LFE203:
 428              		.size	spi_set_clock_phase, .-spi_set_clock_phase
 429              		.section	.text.spi_configure_cs_behavior,"ax",%progbits
 430              		.align	1
 431              		.p2align 2,,3
 432              		.global	spi_configure_cs_behavior
 433              		.syntax unified
 434              		.thumb
 435              		.thumb_func
 436              		.fpu fpv5-d16
 437              		.type	spi_configure_cs_behavior, %function
 438              	spi_configure_cs_behavior:
 439              	.LFB204:
 323:../asf/sam/drivers/spi/spi.c **** 	}
 324:../asf/sam/drivers/spi/spi.c **** }
 325:../asf/sam/drivers/spi/spi.c **** 
ARM GAS  /tmp/cczatnhQ.s 			page 26


 326:../asf/sam/drivers/spi/spi.c **** /**
 327:../asf/sam/drivers/spi/spi.c ****  * \brief Configure CS behavior for SPI transfer (\ref spi_cs_behavior_t).
 328:../asf/sam/drivers/spi/spi.c ****  *
 329:../asf/sam/drivers/spi/spi.c ****  * \param p_spi Pointer to an SPI instance.
 330:../asf/sam/drivers/spi/spi.c ****  * \param ul_pcs_ch Peripheral Chip Select channel (0~3).
 331:../asf/sam/drivers/spi/spi.c ****  * \param ul_cs_behavior Behavior of the Chip Select after transfer.
 332:../asf/sam/drivers/spi/spi.c ****  */
 333:../asf/sam/drivers/spi/spi.c **** void spi_configure_cs_behavior(Spi *p_spi, uint32_t ul_pcs_ch,
 334:../asf/sam/drivers/spi/spi.c **** 		uint32_t ul_cs_behavior)
 335:../asf/sam/drivers/spi/spi.c **** {
 440              		.loc 1 335 0
 441              		.cfi_startproc
 442              		@ args = 0, pretend = 0, frame = 0
 443              		@ frame_needed = 0, uses_anonymous_args = 0
 444              		@ link register save eliminated.
 445              	.LVL44:
 336:../asf/sam/drivers/spi/spi.c **** 	if (ul_cs_behavior == SPI_CS_RISE_FORCED) {
 446              		.loc 1 336 0
 447 0000 042A     		cmp	r2, #4
 448 0002 14D0     		beq	.L53
 337:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_CSR[ul_pcs_ch] &= (~SPI_CSR_CSAAT);
 338:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_CSR[ul_pcs_ch] |= SPI_CSR_CSNAAT;
 339:../asf/sam/drivers/spi/spi.c **** 	} else if (ul_cs_behavior == SPI_CS_RISE_NO_TX) {
 449              		.loc 1 339 0
 450 0004 42B1     		cbz	r2, .L54
 340:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_CSR[ul_pcs_ch] &= (~SPI_CSR_CSAAT);
 341:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_CSR[ul_pcs_ch] &= (~SPI_CSR_CSNAAT);
 342:../asf/sam/drivers/spi/spi.c **** 	} else if (ul_cs_behavior == SPI_CS_KEEP_LOW) {
 451              		.loc 1 342 0
 452 0006 082A     		cmp	r2, #8
 453 0008 05D1     		bne	.L49
 454 000a 00EB8100 		add	r0, r0, r1, lsl #2
 455              	.LVL45:
 343:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_CSR[ul_pcs_ch] |= SPI_CSR_CSAAT;
 456              		.loc 1 343 0
 457 000e 036B     		ldr	r3, [r0, #48]
 458 0010 43F00803 		orr	r3, r3, #8
 459 0014 0363     		str	r3, [r0, #48]
 460              	.L49:
 461 0016 7047     		bx	lr
 462              	.LVL46:
 463              	.L54:
 464 0018 00EB8100 		add	r0, r0, r1, lsl #2
 465              	.LVL47:
 340:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_CSR[ul_pcs_ch] &= (~SPI_CSR_CSAAT);
 466              		.loc 1 340 0
 467 001c 036B     		ldr	r3, [r0, #48]
 468 001e 23F00803 		bic	r3, r3, #8
 469 0022 0363     		str	r3, [r0, #48]
 341:../asf/sam/drivers/spi/spi.c **** 	} else if (ul_cs_behavior == SPI_CS_KEEP_LOW) {
 470              		.loc 1 341 0
 471 0024 036B     		ldr	r3, [r0, #48]
 472 0026 23F00403 		bic	r3, r3, #4
 473 002a 0363     		str	r3, [r0, #48]
 474 002c 7047     		bx	lr
 475              	.LVL48:
 476              	.L53:
ARM GAS  /tmp/cczatnhQ.s 			page 27


 477 002e 00EB8100 		add	r0, r0, r1, lsl #2
 478              	.LVL49:
 337:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_CSR[ul_pcs_ch] |= SPI_CSR_CSNAAT;
 479              		.loc 1 337 0
 480 0032 036B     		ldr	r3, [r0, #48]
 481 0034 23F00803 		bic	r3, r3, #8
 482 0038 0363     		str	r3, [r0, #48]
 338:../asf/sam/drivers/spi/spi.c **** 	} else if (ul_cs_behavior == SPI_CS_RISE_NO_TX) {
 483              		.loc 1 338 0
 484 003a 036B     		ldr	r3, [r0, #48]
 485 003c 43F00403 		orr	r3, r3, #4
 486 0040 0363     		str	r3, [r0, #48]
 487 0042 7047     		bx	lr
 488              		.cfi_endproc
 489              	.LFE204:
 490              		.size	spi_configure_cs_behavior, .-spi_configure_cs_behavior
 491              		.section	.text.spi_set_bits_per_transfer,"ax",%progbits
 492              		.align	1
 493              		.p2align 2,,3
 494              		.global	spi_set_bits_per_transfer
 495              		.syntax unified
 496              		.thumb
 497              		.thumb_func
 498              		.fpu fpv5-d16
 499              		.type	spi_set_bits_per_transfer, %function
 500              	spi_set_bits_per_transfer:
 501              	.LFB205:
 344:../asf/sam/drivers/spi/spi.c **** 	}
 345:../asf/sam/drivers/spi/spi.c **** }
 346:../asf/sam/drivers/spi/spi.c **** 
 347:../asf/sam/drivers/spi/spi.c **** /**
 348:../asf/sam/drivers/spi/spi.c ****  * \brief Set number of bits per transfer.
 349:../asf/sam/drivers/spi/spi.c ****  *
 350:../asf/sam/drivers/spi/spi.c ****  * \param p_spi Pointer to an SPI instance.
 351:../asf/sam/drivers/spi/spi.c ****  * \param ul_pcs_ch Peripheral Chip Select channel (0~3).
 352:../asf/sam/drivers/spi/spi.c ****  * \param ul_bits Number of bits (8~16), use the pattern defined
 353:../asf/sam/drivers/spi/spi.c ****  *        in the device header file.
 354:../asf/sam/drivers/spi/spi.c ****  */
 355:../asf/sam/drivers/spi/spi.c **** void spi_set_bits_per_transfer(Spi *p_spi, uint32_t ul_pcs_ch,
 356:../asf/sam/drivers/spi/spi.c **** 		uint32_t ul_bits)
 357:../asf/sam/drivers/spi/spi.c **** {
 502              		.loc 1 357 0
 503              		.cfi_startproc
 504              		@ args = 0, pretend = 0, frame = 0
 505              		@ frame_needed = 0, uses_anonymous_args = 0
 506              		@ link register save eliminated.
 507              	.LVL50:
 508 0000 00EB8101 		add	r1, r0, r1, lsl #2
 509              	.LVL51:
 358:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_CSR[ul_pcs_ch] &= (~SPI_CSR_BITS_Msk);
 510              		.loc 1 358 0
 511 0004 0B6B     		ldr	r3, [r1, #48]
 512 0006 23F0F003 		bic	r3, r3, #240
 513 000a 0B63     		str	r3, [r1, #48]
 359:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_CSR[ul_pcs_ch] |= ul_bits;
 514              		.loc 1 359 0
 515 000c 0B6B     		ldr	r3, [r1, #48]
ARM GAS  /tmp/cczatnhQ.s 			page 28


 516 000e 1A43     		orrs	r2, r2, r3
 517              	.LVL52:
 518 0010 0A63     		str	r2, [r1, #48]
 519 0012 7047     		bx	lr
 520              		.cfi_endproc
 521              	.LFE205:
 522              		.size	spi_set_bits_per_transfer, .-spi_set_bits_per_transfer
 523              		.section	.text.spi_calc_baudrate_div,"ax",%progbits
 524              		.align	1
 525              		.p2align 2,,3
 526              		.global	spi_calc_baudrate_div
 527              		.syntax unified
 528              		.thumb
 529              		.thumb_func
 530              		.fpu fpv5-d16
 531              		.type	spi_calc_baudrate_div, %function
 532              	spi_calc_baudrate_div:
 533              	.LFB206:
 360:../asf/sam/drivers/spi/spi.c **** }
 361:../asf/sam/drivers/spi/spi.c **** 
 362:../asf/sam/drivers/spi/spi.c **** /**
 363:../asf/sam/drivers/spi/spi.c ****  * \brief Calculate the baudrate divider.
 364:../asf/sam/drivers/spi/spi.c ****  *
 365:../asf/sam/drivers/spi/spi.c ****  * \param baudrate Baudrate value.
 366:../asf/sam/drivers/spi/spi.c ****  * \param mck      SPI module input clock frequency (MCK clock, Hz).
 367:../asf/sam/drivers/spi/spi.c ****  *
 368:../asf/sam/drivers/spi/spi.c ****  * \return Divider or error code.
 369:../asf/sam/drivers/spi/spi.c ****  *   \retval > 0  Success.
 370:../asf/sam/drivers/spi/spi.c ****  *   \retval < 0  Error.
 371:../asf/sam/drivers/spi/spi.c ****  */
 372:../asf/sam/drivers/spi/spi.c **** int16_t spi_calc_baudrate_div(const uint32_t baudrate, uint32_t mck)
 373:../asf/sam/drivers/spi/spi.c **** {
 534              		.loc 1 373 0
 535              		.cfi_startproc
 536              		@ args = 0, pretend = 0, frame = 0
 537              		@ frame_needed = 0, uses_anonymous_args = 0
 538              		@ link register save eliminated.
 539              	.LVL53:
 374:../asf/sam/drivers/spi/spi.c **** 	int baud_div = div_ceil(mck, baudrate);
 540              		.loc 1 374 0
 541 0000 431E     		subs	r3, r0, #1
 542 0002 1944     		add	r1, r1, r3
 543              	.LVL54:
 544 0004 B1FBF0F0 		udiv	r0, r1, r0
 545              	.LVL55:
 375:../asf/sam/drivers/spi/spi.c **** 
 376:../asf/sam/drivers/spi/spi.c **** 	/* The value of baud_div is from 1 to 255 in the SCBR field. */
 377:../asf/sam/drivers/spi/spi.c **** 	if (baud_div <= 0 || baud_div > 255) {
 546              		.loc 1 377 0
 547 0008 431E     		subs	r3, r0, #1
 548              	.LVL56:
 549 000a FE2B     		cmp	r3, #254
 378:../asf/sam/drivers/spi/spi.c **** 		return -1;
 379:../asf/sam/drivers/spi/spi.c **** 	}
 380:../asf/sam/drivers/spi/spi.c **** 
 381:../asf/sam/drivers/spi/spi.c **** 	return baud_div;
 550              		.loc 1 381 0
ARM GAS  /tmp/cczatnhQ.s 			page 29


 551 000c 94BF     		ite	ls
 552 000e 00B2     		sxthls	r0, r0
 553              	.LVL57:
 378:../asf/sam/drivers/spi/spi.c **** 		return -1;
 554              		.loc 1 378 0
 555 0010 4FF0FF30 		movhi	r0, #-1
 382:../asf/sam/drivers/spi/spi.c **** }
 556              		.loc 1 382 0
 557 0014 7047     		bx	lr
 558              		.cfi_endproc
 559              	.LFE206:
 560              		.size	spi_calc_baudrate_div, .-spi_calc_baudrate_div
 561 0016 00BF     		.section	.text.spi_set_baudrate_div,"ax",%progbits
 562              		.align	1
 563              		.p2align 2,,3
 564              		.global	spi_set_baudrate_div
 565              		.syntax unified
 566              		.thumb
 567              		.thumb_func
 568              		.fpu fpv5-d16
 569              		.type	spi_set_baudrate_div, %function
 570              	spi_set_baudrate_div:
 571              	.LFB207:
 383:../asf/sam/drivers/spi/spi.c **** 
 384:../asf/sam/drivers/spi/spi.c **** /**
 385:../asf/sam/drivers/spi/spi.c ****  * \brief Set Serial Clock Baud Rate divider value (SCBR).
 386:../asf/sam/drivers/spi/spi.c ****  *
 387:../asf/sam/drivers/spi/spi.c ****  * \param p_spi Pointer to an SPI instance.
 388:../asf/sam/drivers/spi/spi.c ****  * \param ul_pcs_ch Peripheral Chip Select channel (0~3).
 389:../asf/sam/drivers/spi/spi.c ****  * \param uc_baudrate_divider Baudrate divider from MCK.
 390:../asf/sam/drivers/spi/spi.c ****  *
 391:../asf/sam/drivers/spi/spi.c ****  * \return
 392:../asf/sam/drivers/spi/spi.c ****  * \retval is 0 Success.
 393:../asf/sam/drivers/spi/spi.c ****  * \retval is -1 Error.
 394:../asf/sam/drivers/spi/spi.c ****  */
 395:../asf/sam/drivers/spi/spi.c **** int16_t spi_set_baudrate_div(Spi *p_spi, uint32_t ul_pcs_ch,
 396:../asf/sam/drivers/spi/spi.c **** 		uint8_t uc_baudrate_divider)
 397:../asf/sam/drivers/spi/spi.c **** {
 572              		.loc 1 397 0
 573              		.cfi_startproc
 574              		@ args = 0, pretend = 0, frame = 0
 575              		@ frame_needed = 0, uses_anonymous_args = 0
 576              		@ link register save eliminated.
 577              	.LVL58:
 398:../asf/sam/drivers/spi/spi.c ****     /* Programming the SCBR field to 0 is forbidden */
 399:../asf/sam/drivers/spi/spi.c ****     if (uc_baudrate_divider == 0)
 578              		.loc 1 399 0
 579 0000 5AB1     		cbz	r2, .L61
 580 0002 00EB8101 		add	r1, r0, r1, lsl #2
 581              	.LVL59:
 400:../asf/sam/drivers/spi/spi.c ****     {
 401:../asf/sam/drivers/spi/spi.c ****         return -1;
 402:../asf/sam/drivers/spi/spi.c ****     }
 403:../asf/sam/drivers/spi/spi.c **** 
 404:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_CSR[ul_pcs_ch] &= (~SPI_CSR_SCBR_Msk);
 405:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_CSR[ul_pcs_ch] |= SPI_CSR_SCBR(uc_baudrate_divider);
 406:../asf/sam/drivers/spi/spi.c ****     return 0;
ARM GAS  /tmp/cczatnhQ.s 			page 30


 582              		.loc 1 406 0
 583 0006 0020     		movs	r0, #0
 584              	.LVL60:
 404:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_CSR[ul_pcs_ch] |= SPI_CSR_SCBR(uc_baudrate_divider);
 585              		.loc 1 404 0
 586 0008 0B6B     		ldr	r3, [r1, #48]
 587 000a 23F47F43 		bic	r3, r3, #65280
 588 000e 0B63     		str	r3, [r1, #48]
 405:../asf/sam/drivers/spi/spi.c ****     return 0;
 589              		.loc 1 405 0
 590 0010 0B6B     		ldr	r3, [r1, #48]
 591 0012 43EA0222 		orr	r2, r3, r2, lsl #8
 592              	.LVL61:
 593 0016 0A63     		str	r2, [r1, #48]
 594              		.loc 1 406 0
 595 0018 7047     		bx	lr
 596              	.LVL62:
 597              	.L61:
 401:../asf/sam/drivers/spi/spi.c ****     }
 598              		.loc 1 401 0
 599 001a 4FF0FF30 		mov	r0, #-1
 600              	.LVL63:
 407:../asf/sam/drivers/spi/spi.c **** }
 601              		.loc 1 407 0
 602 001e 7047     		bx	lr
 603              		.cfi_endproc
 604              	.LFE207:
 605              		.size	spi_set_baudrate_div, .-spi_set_baudrate_div
 606              		.section	.text.spi_set_transfer_delay,"ax",%progbits
 607              		.align	1
 608              		.p2align 2,,3
 609              		.global	spi_set_transfer_delay
 610              		.syntax unified
 611              		.thumb
 612              		.thumb_func
 613              		.fpu fpv5-d16
 614              		.type	spi_set_transfer_delay, %function
 615              	spi_set_transfer_delay:
 616              	.LFB208:
 408:../asf/sam/drivers/spi/spi.c **** 
 409:../asf/sam/drivers/spi/spi.c **** /**
 410:../asf/sam/drivers/spi/spi.c ****  * \brief Configure timing for SPI transfer.
 411:../asf/sam/drivers/spi/spi.c ****  *
 412:../asf/sam/drivers/spi/spi.c ****  * \param p_spi Pointer to an SPI instance.
 413:../asf/sam/drivers/spi/spi.c ****  * \param ul_pcs_ch Peripheral Chip Select channel (0~3).
 414:../asf/sam/drivers/spi/spi.c ****  * \param uc_dlybs Delay before SPCK (in number of MCK clocks).
 415:../asf/sam/drivers/spi/spi.c ****  * \param uc_dlybct Delay between consecutive transfers (in number of MCK clocks).
 416:../asf/sam/drivers/spi/spi.c ****  */
 417:../asf/sam/drivers/spi/spi.c **** void spi_set_transfer_delay(Spi *p_spi, uint32_t ul_pcs_ch,
 418:../asf/sam/drivers/spi/spi.c **** 		uint8_t uc_dlybs, uint8_t uc_dlybct)
 419:../asf/sam/drivers/spi/spi.c **** {
 617              		.loc 1 419 0
 618              		.cfi_startproc
 619              		@ args = 0, pretend = 0, frame = 0
 620              		@ frame_needed = 0, uses_anonymous_args = 0
 621              		@ link register save eliminated.
 622              	.LVL64:
ARM GAS  /tmp/cczatnhQ.s 			page 31


 623 0000 00EB8101 		add	r1, r0, r1, lsl #2
 624              	.LVL65:
 420:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_CSR[ul_pcs_ch] &= ~(SPI_CSR_DLYBS_Msk | SPI_CSR_DLYBCT_Msk);
 625              		.loc 1 420 0
 626 0004 086B     		ldr	r0, [r1, #48]
 627              	.LVL66:
 628 0006 80B2     		uxth	r0, r0
 419:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_CSR[ul_pcs_ch] &= ~(SPI_CSR_DLYBS_Msk | SPI_CSR_DLYBCT_Msk);
 629              		.loc 1 419 0
 630 0008 10B4     		push	{r4}
 631              		.cfi_def_cfa_offset 4
 632              		.cfi_offset 4, -4
 633              		.loc 1 420 0
 634 000a 0863     		str	r0, [r1, #48]
 421:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_CSR[ul_pcs_ch] |= SPI_CSR_DLYBS(uc_dlybs)
 635              		.loc 1 421 0
 636 000c 0C6B     		ldr	r4, [r1, #48]
 637 000e 44EA0363 		orr	r3, r4, r3, lsl #24
 638              	.LVL67:
 422:../asf/sam/drivers/spi/spi.c **** 			| SPI_CSR_DLYBCT(uc_dlybct);
 423:../asf/sam/drivers/spi/spi.c **** }
 639              		.loc 1 423 0
 640 0012 5DF8044B 		ldr	r4, [sp], #4
 641              		.cfi_restore 4
 642              		.cfi_def_cfa_offset 0
 421:../asf/sam/drivers/spi/spi.c **** 	p_spi->SPI_CSR[ul_pcs_ch] |= SPI_CSR_DLYBS(uc_dlybs)
 643              		.loc 1 421 0
 644 0016 43EA0243 		orr	r3, r3, r2, lsl #16
 645 001a 0B63     		str	r3, [r1, #48]
 646              		.loc 1 423 0
 647 001c 7047     		bx	lr
 648              		.cfi_endproc
 649              	.LFE208:
 650              		.size	spi_set_transfer_delay, .-spi_set_transfer_delay
 651 001e 00BF     		.section	.text.spi_set_writeprotect,"ax",%progbits
 652              		.align	1
 653              		.p2align 2,,3
 654              		.global	spi_set_writeprotect
 655              		.syntax unified
 656              		.thumb
 657              		.thumb_func
 658              		.fpu fpv5-d16
 659              		.type	spi_set_writeprotect, %function
 660              	spi_set_writeprotect:
 661              	.LFB209:
 424:../asf/sam/drivers/spi/spi.c **** 
 425:../asf/sam/drivers/spi/spi.c **** 
 426:../asf/sam/drivers/spi/spi.c **** /**
 427:../asf/sam/drivers/spi/spi.c ****  * \brief Enable or disable write protection of SPI registers.
 428:../asf/sam/drivers/spi/spi.c ****  *
 429:../asf/sam/drivers/spi/spi.c ****  * \param p_spi Pointer to an SPI instance.
 430:../asf/sam/drivers/spi/spi.c ****  * \param ul_enable 1 to enable, 0 to disable.
 431:../asf/sam/drivers/spi/spi.c ****  */
 432:../asf/sam/drivers/spi/spi.c **** void spi_set_writeprotect(Spi *p_spi, uint32_t ul_enable)
 433:../asf/sam/drivers/spi/spi.c **** {
 662              		.loc 1 433 0
 663              		.cfi_startproc
ARM GAS  /tmp/cczatnhQ.s 			page 32


 664              		@ args = 0, pretend = 0, frame = 0
 665              		@ frame_needed = 0, uses_anonymous_args = 0
 666              		@ link register save eliminated.
 667              	.LVL68:
 434:../asf/sam/drivers/spi/spi.c **** #if SAM4L
 435:../asf/sam/drivers/spi/spi.c **** 	if (ul_enable) {
 436:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_WPCR = SPI_WPCR_SPIWPKEY_VALUE | SPI_WPCR_SPIWPEN;
 437:../asf/sam/drivers/spi/spi.c **** 	} else {
 438:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_WPCR = SPI_WPCR_SPIWPKEY_VALUE;
 439:../asf/sam/drivers/spi/spi.c **** 	}
 440:../asf/sam/drivers/spi/spi.c **** #else
 441:../asf/sam/drivers/spi/spi.c **** 	if (ul_enable) {
 668              		.loc 1 441 0
 669 0000 19B9     		cbnz	r1, .L67
 442:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_WPMR = SPI_WPMR_WPKEY_PASSWD | SPI_WPMR_WPEN;
 443:../asf/sam/drivers/spi/spi.c **** 	} else {
 444:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_WPMR = SPI_WPMR_WPKEY_PASSWD;
 670              		.loc 1 444 0
 671 0002 044B     		ldr	r3, .L68
 672 0004 C0F8E430 		str	r3, [r0, #228]
 673 0008 7047     		bx	lr
 674              	.L67:
 442:../asf/sam/drivers/spi/spi.c **** 		p_spi->SPI_WPMR = SPI_WPMR_WPKEY_PASSWD | SPI_WPMR_WPEN;
 675              		.loc 1 442 0
 676 000a 034B     		ldr	r3, .L68+4
 677 000c C0F8E430 		str	r3, [r0, #228]
 678 0010 7047     		bx	lr
 679              	.L69:
 680 0012 00BF     		.align	2
 681              	.L68:
 682 0014 00495053 		.word	1397770496
 683 0018 01495053 		.word	1397770497
 684              		.cfi_endproc
 685              	.LFE209:
 686              		.size	spi_set_writeprotect, .-spi_set_writeprotect
 687              		.section	.text.spi_get_writeprotect_status,"ax",%progbits
 688              		.align	1
 689              		.p2align 2,,3
 690              		.global	spi_get_writeprotect_status
 691              		.syntax unified
 692              		.thumb
 693              		.thumb_func
 694              		.fpu fpv5-d16
 695              		.type	spi_get_writeprotect_status, %function
 696              	spi_get_writeprotect_status:
 697              	.LFB210:
 445:../asf/sam/drivers/spi/spi.c **** 	}
 446:../asf/sam/drivers/spi/spi.c **** #endif
 447:../asf/sam/drivers/spi/spi.c **** }
 448:../asf/sam/drivers/spi/spi.c **** 
 449:../asf/sam/drivers/spi/spi.c **** /**
 450:../asf/sam/drivers/spi/spi.c ****  * \brief Indicate write protect status.
 451:../asf/sam/drivers/spi/spi.c ****  *
 452:../asf/sam/drivers/spi/spi.c ****  * \param p_spi Pointer to an SPI instance.
 453:../asf/sam/drivers/spi/spi.c ****  *
 454:../asf/sam/drivers/spi/spi.c ****  * \return SPI_WPSR value.
 455:../asf/sam/drivers/spi/spi.c ****  */
ARM GAS  /tmp/cczatnhQ.s 			page 33


 456:../asf/sam/drivers/spi/spi.c **** uint32_t spi_get_writeprotect_status(Spi *p_spi)
 457:../asf/sam/drivers/spi/spi.c **** {
 698              		.loc 1 457 0
 699              		.cfi_startproc
 700              		@ args = 0, pretend = 0, frame = 0
 701              		@ frame_needed = 0, uses_anonymous_args = 0
 702              		@ link register save eliminated.
 703              	.LVL69:
 458:../asf/sam/drivers/spi/spi.c **** 	return p_spi->SPI_WPSR;
 704              		.loc 1 458 0
 705 0000 D0F8E800 		ldr	r0, [r0, #232]
 706              	.LVL70:
 459:../asf/sam/drivers/spi/spi.c **** }
 707              		.loc 1 459 0
 708 0004 7047     		bx	lr
 709              		.cfi_endproc
 710              	.LFE210:
 711              		.size	spi_get_writeprotect_status, .-spi_get_writeprotect_status
 712 0006 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 713              		.align	2
 714              		.type	cpu_irq_critical_section_counter, %object
 715              		.size	cpu_irq_critical_section_counter, 4
 716              	cpu_irq_critical_section_counter:
 717 0000 00000000 		.space	4
 718              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 719              		.type	cpu_irq_prev_interrupt_state, %object
 720              		.size	cpu_irq_prev_interrupt_state, 1
 721              	cpu_irq_prev_interrupt_state:
 722 0000 00       		.space	1
 723              		.text
 724              	.Letext0:
 725              		.file 4 "/usr/include/newlib/machine/_default_types.h"
 726              		.file 5 "/usr/include/newlib/sys/_stdint.h"
 727              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 728              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 729              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/spi.
 730              		.file 9 "/usr/include/newlib/sys/lock.h"
 731              		.file 10 "/usr/include/newlib/sys/_types.h"
 732              		.file 11 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 733              		.file 12 "/usr/include/newlib/sys/reent.h"
 734              		.file 13 "/usr/include/newlib/stdlib.h"
 735              		.file 14 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 736              		.file 15 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pmc/pmc.h"
 737              		.section	.debug_info,"",%progbits
 738              	.Ldebug_info0:
 739 0000 EE0F0000 		.4byte	0xfee
 740 0004 0400     		.2byte	0x4
 741 0006 00000000 		.4byte	.Ldebug_abbrev0
 742 000a 04       		.byte	0x4
 743 000b 01       		.uleb128 0x1
 744 000c BB040000 		.4byte	.LASF202
 745 0010 0C       		.byte	0xc
 746 0011 8B050000 		.4byte	.LASF203
 747 0015 69060000 		.4byte	.LASF204
 748 0019 00000000 		.4byte	.Ldebug_ranges0+0
 749 001d 00000000 		.4byte	0
 750 0021 00000000 		.4byte	.Ldebug_line0
ARM GAS  /tmp/cczatnhQ.s 			page 34


 751 0025 02       		.uleb128 0x2
 752 0026 04       		.byte	0x4
 753 0027 05       		.byte	0x5
 754 0028 696E7400 		.ascii	"int\000"
 755 002c 03       		.uleb128 0x3
 756 002d 04       		.byte	0x4
 757 002e 07       		.byte	0x7
 758 002f 5C060000 		.4byte	.LASF0
 759 0033 03       		.uleb128 0x3
 760 0034 01       		.byte	0x1
 761 0035 06       		.byte	0x6
 762 0036 69000000 		.4byte	.LASF1
 763 003a 04       		.uleb128 0x4
 764 003b 75000000 		.4byte	.LASF3
 765 003f 04       		.byte	0x4
 766 0040 1D       		.byte	0x1d
 767 0041 45000000 		.4byte	0x45
 768 0045 03       		.uleb128 0x3
 769 0046 01       		.byte	0x1
 770 0047 08       		.byte	0x8
 771 0048 7A080000 		.4byte	.LASF2
 772 004c 04       		.uleb128 0x4
 773 004d D1020000 		.4byte	.LASF4
 774 0051 04       		.byte	0x4
 775 0052 29       		.byte	0x29
 776 0053 57000000 		.4byte	0x57
 777 0057 03       		.uleb128 0x3
 778 0058 02       		.byte	0x2
 779 0059 05       		.byte	0x5
 780 005a 08000000 		.4byte	.LASF5
 781 005e 04       		.uleb128 0x4
 782 005f 3B080000 		.4byte	.LASF6
 783 0063 04       		.byte	0x4
 784 0064 2B       		.byte	0x2b
 785 0065 69000000 		.4byte	0x69
 786 0069 03       		.uleb128 0x3
 787 006a 02       		.byte	0x2
 788 006b 07       		.byte	0x7
 789 006c 86030000 		.4byte	.LASF7
 790 0070 04       		.uleb128 0x4
 791 0071 46080000 		.4byte	.LASF8
 792 0075 04       		.byte	0x4
 793 0076 3F       		.byte	0x3f
 794 0077 7B000000 		.4byte	0x7b
 795 007b 03       		.uleb128 0x3
 796 007c 04       		.byte	0x4
 797 007d 05       		.byte	0x5
 798 007e D0010000 		.4byte	.LASF9
 799 0082 04       		.uleb128 0x4
 800 0083 BC020000 		.4byte	.LASF10
 801 0087 04       		.byte	0x4
 802 0088 41       		.byte	0x41
 803 0089 8D000000 		.4byte	0x8d
 804 008d 03       		.uleb128 0x3
 805 008e 04       		.byte	0x4
 806 008f 07       		.byte	0x7
 807 0090 3D030000 		.4byte	.LASF11
ARM GAS  /tmp/cczatnhQ.s 			page 35


 808 0094 03       		.uleb128 0x3
 809 0095 08       		.byte	0x8
 810 0096 05       		.byte	0x5
 811 0097 43020000 		.4byte	.LASF12
 812 009b 03       		.uleb128 0x3
 813 009c 08       		.byte	0x8
 814 009d 07       		.byte	0x7
 815 009e CE000000 		.4byte	.LASF13
 816 00a2 04       		.uleb128 0x4
 817 00a3 23090000 		.4byte	.LASF14
 818 00a7 05       		.byte	0x5
 819 00a8 18       		.byte	0x18
 820 00a9 3A000000 		.4byte	0x3a
 821 00ad 04       		.uleb128 0x4
 822 00ae 4D010000 		.4byte	.LASF15
 823 00b2 05       		.byte	0x5
 824 00b3 20       		.byte	0x20
 825 00b4 4C000000 		.4byte	0x4c
 826 00b8 04       		.uleb128 0x4
 827 00b9 51020000 		.4byte	.LASF16
 828 00bd 05       		.byte	0x5
 829 00be 24       		.byte	0x24
 830 00bf 5E000000 		.4byte	0x5e
 831 00c3 04       		.uleb128 0x4
 832 00c4 3E060000 		.4byte	.LASF17
 833 00c8 05       		.byte	0x5
 834 00c9 2C       		.byte	0x2c
 835 00ca 70000000 		.4byte	0x70
 836 00ce 05       		.uleb128 0x5
 837 00cf C3000000 		.4byte	0xc3
 838 00d3 04       		.uleb128 0x4
 839 00d4 9B070000 		.4byte	.LASF18
 840 00d8 05       		.byte	0x5
 841 00d9 30       		.byte	0x30
 842 00da 82000000 		.4byte	0x82
 843 00de 05       		.uleb128 0x5
 844 00df D3000000 		.4byte	0xd3
 845 00e3 06       		.uleb128 0x6
 846 00e4 DE000000 		.4byte	0xde
 847 00e8 06       		.uleb128 0x6
 848 00e9 D3000000 		.4byte	0xd3
 849 00ed 07       		.uleb128 0x7
 850 00ee 04       		.byte	0x4
 851 00ef 03       		.uleb128 0x3
 852 00f0 04       		.byte	0x4
 853 00f1 07       		.byte	0x7
 854 00f2 70040000 		.4byte	.LASF19
 855 00f6 08       		.uleb128 0x8
 856 00f7 E3000000 		.4byte	0xe3
 857 00fb 06010000 		.4byte	0x106
 858 00ff 09       		.uleb128 0x9
 859 0100 EF000000 		.4byte	0xef
 860 0104 03       		.byte	0x3
 861 0105 00       		.byte	0
 862 0106 06       		.uleb128 0x6
 863 0107 F6000000 		.4byte	0xf6
 864 010b 05       		.uleb128 0x5
ARM GAS  /tmp/cczatnhQ.s 			page 36


 865 010c 06010000 		.4byte	0x106
 866 0110 0A       		.uleb128 0xa
 867 0111 1A010000 		.4byte	.LASF20
 868 0115 06       		.byte	0x6
 869 0116 6508     		.2byte	0x865
 870 0118 CE000000 		.4byte	0xce
 871 011c 0B       		.uleb128 0xb
 872 011d 25030000 		.4byte	.LASF21
 873 0121 07       		.byte	0x7
 874 0122 3A       		.byte	0x3a
 875 0123 D3000000 		.4byte	0xd3
 876 0127 08       		.uleb128 0x8
 877 0128 DE000000 		.4byte	0xde
 878 012c 37010000 		.4byte	0x137
 879 0130 09       		.uleb128 0x9
 880 0131 EF000000 		.4byte	0xef
 881 0135 03       		.byte	0x3
 882 0136 00       		.byte	0
 883 0137 05       		.uleb128 0x5
 884 0138 27010000 		.4byte	0x127
 885 013c 0C       		.uleb128 0xc
 886 013d EC       		.byte	0xec
 887 013e 08       		.byte	0x8
 888 013f 38       		.byte	0x38
 889 0140 E1010000 		.4byte	0x1e1
 890 0144 0D       		.uleb128 0xd
 891 0145 13010000 		.4byte	.LASF22
 892 0149 08       		.byte	0x8
 893 014a 39       		.byte	0x39
 894 014b DE000000 		.4byte	0xde
 895 014f 00       		.byte	0
 896 0150 0D       		.uleb128 0xd
 897 0151 F7030000 		.4byte	.LASF23
 898 0155 08       		.byte	0x8
 899 0156 3A       		.byte	0x3a
 900 0157 DE000000 		.4byte	0xde
 901 015b 04       		.byte	0x4
 902 015c 0D       		.uleb128 0xd
 903 015d 7F000000 		.4byte	.LASF24
 904 0161 08       		.byte	0x8
 905 0162 3B       		.byte	0x3b
 906 0163 E3000000 		.4byte	0xe3
 907 0167 08       		.byte	0x8
 908 0168 0D       		.uleb128 0xd
 909 0169 1D070000 		.4byte	.LASF25
 910 016d 08       		.byte	0x8
 911 016e 3C       		.byte	0x3c
 912 016f DE000000 		.4byte	0xde
 913 0173 0C       		.byte	0xc
 914 0174 0D       		.uleb128 0xd
 915 0175 13020000 		.4byte	.LASF26
 916 0179 08       		.byte	0x8
 917 017a 3D       		.byte	0x3d
 918 017b E3000000 		.4byte	0xe3
 919 017f 10       		.byte	0x10
 920 0180 0D       		.uleb128 0xd
 921 0181 69080000 		.4byte	.LASF27
ARM GAS  /tmp/cczatnhQ.s 			page 37


 922 0185 08       		.byte	0x8
 923 0186 3E       		.byte	0x3e
 924 0187 DE000000 		.4byte	0xde
 925 018b 14       		.byte	0x14
 926 018c 0D       		.uleb128 0xd
 927 018d EB060000 		.4byte	.LASF28
 928 0191 08       		.byte	0x8
 929 0192 3F       		.byte	0x3f
 930 0193 DE000000 		.4byte	0xde
 931 0197 18       		.byte	0x18
 932 0198 0D       		.uleb128 0xd
 933 0199 DE080000 		.4byte	.LASF29
 934 019d 08       		.byte	0x8
 935 019e 40       		.byte	0x40
 936 019f E3000000 		.4byte	0xe3
 937 01a3 1C       		.byte	0x1c
 938 01a4 0D       		.uleb128 0xd
 939 01a5 5D030000 		.4byte	.LASF30
 940 01a9 08       		.byte	0x8
 941 01aa 41       		.byte	0x41
 942 01ab 0B010000 		.4byte	0x10b
 943 01af 20       		.byte	0x20
 944 01b0 0D       		.uleb128 0xd
 945 01b1 BD070000 		.4byte	.LASF31
 946 01b5 08       		.byte	0x8
 947 01b6 42       		.byte	0x42
 948 01b7 37010000 		.4byte	0x137
 949 01bb 30       		.byte	0x30
 950 01bc 0D       		.uleb128 0xd
 951 01bd 87010000 		.4byte	.LASF32
 952 01c1 08       		.byte	0x8
 953 01c2 43       		.byte	0x43
 954 01c3 F6010000 		.4byte	0x1f6
 955 01c7 40       		.byte	0x40
 956 01c8 0D       		.uleb128 0xd
 957 01c9 AD010000 		.4byte	.LASF33
 958 01cd 08       		.byte	0x8
 959 01ce 44       		.byte	0x44
 960 01cf DE000000 		.4byte	0xde
 961 01d3 E4       		.byte	0xe4
 962 01d4 0D       		.uleb128 0xd
 963 01d5 DC090000 		.4byte	.LASF34
 964 01d9 08       		.byte	0x8
 965 01da 45       		.byte	0x45
 966 01db E3000000 		.4byte	0xe3
 967 01df E8       		.byte	0xe8
 968 01e0 00       		.byte	0
 969 01e1 08       		.uleb128 0x8
 970 01e2 E3000000 		.4byte	0xe3
 971 01e6 F1010000 		.4byte	0x1f1
 972 01ea 09       		.uleb128 0x9
 973 01eb EF000000 		.4byte	0xef
 974 01ef 28       		.byte	0x28
 975 01f0 00       		.byte	0
 976 01f1 06       		.uleb128 0x6
 977 01f2 E1010000 		.4byte	0x1e1
 978 01f6 05       		.uleb128 0x5
ARM GAS  /tmp/cczatnhQ.s 			page 38


 979 01f7 F1010000 		.4byte	0x1f1
 980 01fb 0E       		.uleb128 0xe
 981 01fc 53706900 		.ascii	"Spi\000"
 982 0200 08       		.byte	0x8
 983 0201 46       		.byte	0x46
 984 0202 3C010000 		.4byte	0x13c
 985 0206 04       		.uleb128 0x4
 986 0207 07060000 		.4byte	.LASF35
 987 020b 09       		.byte	0x9
 988 020c 07       		.byte	0x7
 989 020d 25000000 		.4byte	0x25
 990 0211 04       		.uleb128 0x4
 991 0212 B3050000 		.4byte	.LASF36
 992 0216 0A       		.byte	0xa
 993 0217 2C       		.byte	0x2c
 994 0218 7B000000 		.4byte	0x7b
 995 021c 04       		.uleb128 0x4
 996 021d CF070000 		.4byte	.LASF37
 997 0221 0A       		.byte	0xa
 998 0222 72       		.byte	0x72
 999 0223 7B000000 		.4byte	0x7b
 1000 0227 0F       		.uleb128 0xf
 1001 0228 85070000 		.4byte	.LASF38
 1002 022c 0B       		.byte	0xb
 1003 022d 6501     		.2byte	0x165
 1004 022f 2C000000 		.4byte	0x2c
 1005 0233 10       		.uleb128 0x10
 1006 0234 04       		.byte	0x4
 1007 0235 0A       		.byte	0xa
 1008 0236 A6       		.byte	0xa6
 1009 0237 52020000 		.4byte	0x252
 1010 023b 11       		.uleb128 0x11
 1011 023c EA030000 		.4byte	.LASF39
 1012 0240 0A       		.byte	0xa
 1013 0241 A8       		.byte	0xa8
 1014 0242 27020000 		.4byte	0x227
 1015 0246 11       		.uleb128 0x11
 1016 0247 1E030000 		.4byte	.LASF40
 1017 024b 0A       		.byte	0xa
 1018 024c A9       		.byte	0xa9
 1019 024d 52020000 		.4byte	0x252
 1020 0251 00       		.byte	0
 1021 0252 08       		.uleb128 0x8
 1022 0253 45000000 		.4byte	0x45
 1023 0257 62020000 		.4byte	0x262
 1024 025b 09       		.uleb128 0x9
 1025 025c EF000000 		.4byte	0xef
 1026 0260 03       		.byte	0x3
 1027 0261 00       		.byte	0
 1028 0262 0C       		.uleb128 0xc
 1029 0263 08       		.byte	0x8
 1030 0264 0A       		.byte	0xa
 1031 0265 A3       		.byte	0xa3
 1032 0266 83020000 		.4byte	0x283
 1033 026a 0D       		.uleb128 0xd
 1034 026b 93070000 		.4byte	.LASF41
 1035 026f 0A       		.byte	0xa
ARM GAS  /tmp/cczatnhQ.s 			page 39


 1036 0270 A5       		.byte	0xa5
 1037 0271 25000000 		.4byte	0x25
 1038 0275 00       		.byte	0
 1039 0276 0D       		.uleb128 0xd
 1040 0277 1B090000 		.4byte	.LASF42
 1041 027b 0A       		.byte	0xa
 1042 027c AA       		.byte	0xaa
 1043 027d 33020000 		.4byte	0x233
 1044 0281 04       		.byte	0x4
 1045 0282 00       		.byte	0
 1046 0283 04       		.uleb128 0x4
 1047 0284 E0060000 		.4byte	.LASF43
 1048 0288 0A       		.byte	0xa
 1049 0289 AB       		.byte	0xab
 1050 028a 62020000 		.4byte	0x262
 1051 028e 04       		.uleb128 0x4
 1052 028f 62050000 		.4byte	.LASF44
 1053 0293 0A       		.byte	0xa
 1054 0294 AF       		.byte	0xaf
 1055 0295 06020000 		.4byte	0x206
 1056 0299 04       		.uleb128 0x4
 1057 029a 8D080000 		.4byte	.LASF45
 1058 029e 0C       		.byte	0xc
 1059 029f 16       		.byte	0x16
 1060 02a0 8D000000 		.4byte	0x8d
 1061 02a4 12       		.uleb128 0x12
 1062 02a5 E3020000 		.4byte	.LASF50
 1063 02a9 18       		.byte	0x18
 1064 02aa 0C       		.byte	0xc
 1065 02ab 2D       		.byte	0x2d
 1066 02ac F7020000 		.4byte	0x2f7
 1067 02b0 0D       		.uleb128 0xd
 1068 02b1 56080000 		.4byte	.LASF46
 1069 02b5 0C       		.byte	0xc
 1070 02b6 2F       		.byte	0x2f
 1071 02b7 F7020000 		.4byte	0x2f7
 1072 02bb 00       		.byte	0
 1073 02bc 13       		.uleb128 0x13
 1074 02bd 5F6B00   		.ascii	"_k\000"
 1075 02c0 0C       		.byte	0xc
 1076 02c1 30       		.byte	0x30
 1077 02c2 25000000 		.4byte	0x25
 1078 02c6 04       		.byte	0x4
 1079 02c7 0D       		.uleb128 0xd
 1080 02c8 70070000 		.4byte	.LASF47
 1081 02cc 0C       		.byte	0xc
 1082 02cd 30       		.byte	0x30
 1083 02ce 25000000 		.4byte	0x25
 1084 02d2 08       		.byte	0x8
 1085 02d3 0D       		.uleb128 0xd
 1086 02d4 50080000 		.4byte	.LASF48
 1087 02d8 0C       		.byte	0xc
 1088 02d9 30       		.byte	0x30
 1089 02da 25000000 		.4byte	0x25
 1090 02de 0C       		.byte	0xc
 1091 02df 0D       		.uleb128 0xd
 1092 02e0 08020000 		.4byte	.LASF49
ARM GAS  /tmp/cczatnhQ.s 			page 40


 1093 02e4 0C       		.byte	0xc
 1094 02e5 30       		.byte	0x30
 1095 02e6 25000000 		.4byte	0x25
 1096 02ea 10       		.byte	0x10
 1097 02eb 13       		.uleb128 0x13
 1098 02ec 5F7800   		.ascii	"_x\000"
 1099 02ef 0C       		.byte	0xc
 1100 02f0 31       		.byte	0x31
 1101 02f1 FD020000 		.4byte	0x2fd
 1102 02f5 14       		.byte	0x14
 1103 02f6 00       		.byte	0
 1104 02f7 14       		.uleb128 0x14
 1105 02f8 04       		.byte	0x4
 1106 02f9 A4020000 		.4byte	0x2a4
 1107 02fd 08       		.uleb128 0x8
 1108 02fe 99020000 		.4byte	0x299
 1109 0302 0D030000 		.4byte	0x30d
 1110 0306 09       		.uleb128 0x9
 1111 0307 EF000000 		.4byte	0xef
 1112 030b 00       		.byte	0
 1113 030c 00       		.byte	0
 1114 030d 12       		.uleb128 0x12
 1115 030e 10030000 		.4byte	.LASF51
 1116 0312 24       		.byte	0x24
 1117 0313 0C       		.byte	0xc
 1118 0314 35       		.byte	0x35
 1119 0315 86030000 		.4byte	0x386
 1120 0319 0D       		.uleb128 0xd
 1121 031a 44010000 		.4byte	.LASF52
 1122 031e 0C       		.byte	0xc
 1123 031f 37       		.byte	0x37
 1124 0320 25000000 		.4byte	0x25
 1125 0324 00       		.byte	0
 1126 0325 0D       		.uleb128 0xd
 1127 0326 A9090000 		.4byte	.LASF53
 1128 032a 0C       		.byte	0xc
 1129 032b 38       		.byte	0x38
 1130 032c 25000000 		.4byte	0x25
 1131 0330 04       		.byte	0x4
 1132 0331 0D       		.uleb128 0xd
 1133 0332 A4070000 		.4byte	.LASF54
 1134 0336 0C       		.byte	0xc
 1135 0337 39       		.byte	0x39
 1136 0338 25000000 		.4byte	0x25
 1137 033c 08       		.byte	0x8
 1138 033d 0D       		.uleb128 0xd
 1139 033e 150A0000 		.4byte	.LASF55
 1140 0342 0C       		.byte	0xc
 1141 0343 3A       		.byte	0x3a
 1142 0344 25000000 		.4byte	0x25
 1143 0348 0C       		.byte	0xc
 1144 0349 0D       		.uleb128 0xd
 1145 034a 6B050000 		.4byte	.LASF56
 1146 034e 0C       		.byte	0xc
 1147 034f 3B       		.byte	0x3b
 1148 0350 25000000 		.4byte	0x25
 1149 0354 10       		.byte	0x10
ARM GAS  /tmp/cczatnhQ.s 			page 41


 1150 0355 0D       		.uleb128 0xd
 1151 0356 2D040000 		.4byte	.LASF57
 1152 035a 0C       		.byte	0xc
 1153 035b 3C       		.byte	0x3c
 1154 035c 25000000 		.4byte	0x25
 1155 0360 14       		.byte	0x14
 1156 0361 0D       		.uleb128 0xd
 1157 0362 C5070000 		.4byte	.LASF58
 1158 0366 0C       		.byte	0xc
 1159 0367 3D       		.byte	0x3d
 1160 0368 25000000 		.4byte	0x25
 1161 036c 18       		.byte	0x18
 1162 036d 0D       		.uleb128 0xd
 1163 036e AE060000 		.4byte	.LASF59
 1164 0372 0C       		.byte	0xc
 1165 0373 3E       		.byte	0x3e
 1166 0374 25000000 		.4byte	0x25
 1167 0378 1C       		.byte	0x1c
 1168 0379 0D       		.uleb128 0xd
 1169 037a 88090000 		.4byte	.LASF60
 1170 037e 0C       		.byte	0xc
 1171 037f 3F       		.byte	0x3f
 1172 0380 25000000 		.4byte	0x25
 1173 0384 20       		.byte	0x20
 1174 0385 00       		.byte	0
 1175 0386 15       		.uleb128 0x15
 1176 0387 9F010000 		.4byte	.LASF61
 1177 038b 0801     		.2byte	0x108
 1178 038d 0C       		.byte	0xc
 1179 038e 48       		.byte	0x48
 1180 038f C6030000 		.4byte	0x3c6
 1181 0393 0D       		.uleb128 0xd
 1182 0394 AF020000 		.4byte	.LASF62
 1183 0398 0C       		.byte	0xc
 1184 0399 49       		.byte	0x49
 1185 039a C6030000 		.4byte	0x3c6
 1186 039e 00       		.byte	0
 1187 039f 0D       		.uleb128 0xd
 1188 03a0 46060000 		.4byte	.LASF63
 1189 03a4 0C       		.byte	0xc
 1190 03a5 4A       		.byte	0x4a
 1191 03a6 C6030000 		.4byte	0x3c6
 1192 03aa 80       		.byte	0x80
 1193 03ab 16       		.uleb128 0x16
 1194 03ac 71080000 		.4byte	.LASF64
 1195 03b0 0C       		.byte	0xc
 1196 03b1 4C       		.byte	0x4c
 1197 03b2 99020000 		.4byte	0x299
 1198 03b6 0001     		.2byte	0x100
 1199 03b8 16       		.uleb128 0x16
 1200 03b9 00000000 		.4byte	.LASF65
 1201 03bd 0C       		.byte	0xc
 1202 03be 4F       		.byte	0x4f
 1203 03bf 99020000 		.4byte	0x299
 1204 03c3 0401     		.2byte	0x104
 1205 03c5 00       		.byte	0
 1206 03c6 08       		.uleb128 0x8
ARM GAS  /tmp/cczatnhQ.s 			page 42


 1207 03c7 ED000000 		.4byte	0xed
 1208 03cb D6030000 		.4byte	0x3d6
 1209 03cf 09       		.uleb128 0x9
 1210 03d0 EF000000 		.4byte	0xef
 1211 03d4 1F       		.byte	0x1f
 1212 03d5 00       		.byte	0
 1213 03d6 15       		.uleb128 0x15
 1214 03d7 74050000 		.4byte	.LASF66
 1215 03db 9001     		.2byte	0x190
 1216 03dd 0C       		.byte	0xc
 1217 03de 5B       		.byte	0x5b
 1218 03df 14040000 		.4byte	0x414
 1219 03e3 0D       		.uleb128 0xd
 1220 03e4 56080000 		.4byte	.LASF46
 1221 03e8 0C       		.byte	0xc
 1222 03e9 5C       		.byte	0x5c
 1223 03ea 14040000 		.4byte	0x414
 1224 03ee 00       		.byte	0
 1225 03ef 0D       		.uleb128 0xd
 1226 03f0 30070000 		.4byte	.LASF67
 1227 03f4 0C       		.byte	0xc
 1228 03f5 5D       		.byte	0x5d
 1229 03f6 25000000 		.4byte	0x25
 1230 03fa 04       		.byte	0x4
 1231 03fb 0D       		.uleb128 0xd
 1232 03fc B7020000 		.4byte	.LASF68
 1233 0400 0C       		.byte	0xc
 1234 0401 5F       		.byte	0x5f
 1235 0402 1A040000 		.4byte	0x41a
 1236 0406 08       		.byte	0x8
 1237 0407 0D       		.uleb128 0xd
 1238 0408 9F010000 		.4byte	.LASF61
 1239 040c 0C       		.byte	0xc
 1240 040d 60       		.byte	0x60
 1241 040e 86030000 		.4byte	0x386
 1242 0412 88       		.byte	0x88
 1243 0413 00       		.byte	0
 1244 0414 14       		.uleb128 0x14
 1245 0415 04       		.byte	0x4
 1246 0416 D6030000 		.4byte	0x3d6
 1247 041a 08       		.uleb128 0x8
 1248 041b 2A040000 		.4byte	0x42a
 1249 041f 2A040000 		.4byte	0x42a
 1250 0423 09       		.uleb128 0x9
 1251 0424 EF000000 		.4byte	0xef
 1252 0428 1F       		.byte	0x1f
 1253 0429 00       		.byte	0
 1254 042a 14       		.uleb128 0x14
 1255 042b 04       		.byte	0x4
 1256 042c 30040000 		.4byte	0x430
 1257 0430 17       		.uleb128 0x17
 1258 0431 12       		.uleb128 0x12
 1259 0432 EC090000 		.4byte	.LASF69
 1260 0436 08       		.byte	0x8
 1261 0437 0C       		.byte	0xc
 1262 0438 73       		.byte	0x73
 1263 0439 56040000 		.4byte	0x456
ARM GAS  /tmp/cczatnhQ.s 			page 43


 1264 043d 0D       		.uleb128 0xd
 1265 043e 78010000 		.4byte	.LASF70
 1266 0442 0C       		.byte	0xc
 1267 0443 74       		.byte	0x74
 1268 0444 56040000 		.4byte	0x456
 1269 0448 00       		.byte	0
 1270 0449 0D       		.uleb128 0xd
 1271 044a 2B080000 		.4byte	.LASF71
 1272 044e 0C       		.byte	0xc
 1273 044f 75       		.byte	0x75
 1274 0450 25000000 		.4byte	0x25
 1275 0454 04       		.byte	0x4
 1276 0455 00       		.byte	0
 1277 0456 14       		.uleb128 0x14
 1278 0457 04       		.byte	0x4
 1279 0458 45000000 		.4byte	0x45
 1280 045c 12       		.uleb128 0x12
 1281 045d 30000000 		.4byte	.LASF72
 1282 0461 68       		.byte	0x68
 1283 0462 0C       		.byte	0xc
 1284 0463 B3       		.byte	0xb3
 1285 0464 86050000 		.4byte	0x586
 1286 0468 13       		.uleb128 0x13
 1287 0469 5F7000   		.ascii	"_p\000"
 1288 046c 0C       		.byte	0xc
 1289 046d B4       		.byte	0xb4
 1290 046e 56040000 		.4byte	0x456
 1291 0472 00       		.byte	0
 1292 0473 13       		.uleb128 0x13
 1293 0474 5F7200   		.ascii	"_r\000"
 1294 0477 0C       		.byte	0xc
 1295 0478 B5       		.byte	0xb5
 1296 0479 25000000 		.4byte	0x25
 1297 047d 04       		.byte	0x4
 1298 047e 13       		.uleb128 0x13
 1299 047f 5F7700   		.ascii	"_w\000"
 1300 0482 0C       		.byte	0xc
 1301 0483 B6       		.byte	0xb6
 1302 0484 25000000 		.4byte	0x25
 1303 0488 08       		.byte	0x8
 1304 0489 0D       		.uleb128 0xd
 1305 048a EA010000 		.4byte	.LASF73
 1306 048e 0C       		.byte	0xc
 1307 048f B7       		.byte	0xb7
 1308 0490 57000000 		.4byte	0x57
 1309 0494 0C       		.byte	0xc
 1310 0495 0D       		.uleb128 0xd
 1311 0496 4F030000 		.4byte	.LASF74
 1312 049a 0C       		.byte	0xc
 1313 049b B8       		.byte	0xb8
 1314 049c 57000000 		.4byte	0x57
 1315 04a0 0E       		.byte	0xe
 1316 04a1 13       		.uleb128 0x13
 1317 04a2 5F626600 		.ascii	"_bf\000"
 1318 04a6 0C       		.byte	0xc
 1319 04a7 B9       		.byte	0xb9
 1320 04a8 31040000 		.4byte	0x431
ARM GAS  /tmp/cczatnhQ.s 			page 44


 1321 04ac 10       		.byte	0x10
 1322 04ad 0D       		.uleb128 0xd
 1323 04ae E5000000 		.4byte	.LASF75
 1324 04b2 0C       		.byte	0xc
 1325 04b3 BA       		.byte	0xba
 1326 04b4 25000000 		.4byte	0x25
 1327 04b8 18       		.byte	0x18
 1328 04b9 0D       		.uleb128 0xd
 1329 04ba B6010000 		.4byte	.LASF76
 1330 04be 0C       		.byte	0xc
 1331 04bf C1       		.byte	0xc1
 1332 04c0 ED000000 		.4byte	0xed
 1333 04c4 1C       		.byte	0x1c
 1334 04c5 0D       		.uleb128 0xd
 1335 04c6 74090000 		.4byte	.LASF77
 1336 04ca 0C       		.byte	0xc
 1337 04cb C3       		.byte	0xc3
 1338 04cc F3060000 		.4byte	0x6f3
 1339 04d0 20       		.byte	0x20
 1340 04d1 0D       		.uleb128 0xd
 1341 04d2 26040000 		.4byte	.LASF78
 1342 04d6 0C       		.byte	0xc
 1343 04d7 C5       		.byte	0xc5
 1344 04d8 1D070000 		.4byte	0x71d
 1345 04dc 24       		.byte	0x24
 1346 04dd 0D       		.uleb128 0xd
 1347 04de E6080000 		.4byte	.LASF79
 1348 04e2 0C       		.byte	0xc
 1349 04e3 C8       		.byte	0xc8
 1350 04e4 41070000 		.4byte	0x741
 1351 04e8 28       		.byte	0x28
 1352 04e9 0D       		.uleb128 0xd
 1353 04ea 55010000 		.4byte	.LASF80
 1354 04ee 0C       		.byte	0xc
 1355 04ef C9       		.byte	0xc9
 1356 04f0 5B070000 		.4byte	0x75b
 1357 04f4 2C       		.byte	0x2c
 1358 04f5 13       		.uleb128 0x13
 1359 04f6 5F756200 		.ascii	"_ub\000"
 1360 04fa 0C       		.byte	0xc
 1361 04fb CC       		.byte	0xcc
 1362 04fc 31040000 		.4byte	0x431
 1363 0500 30       		.byte	0x30
 1364 0501 13       		.uleb128 0x13
 1365 0502 5F757000 		.ascii	"_up\000"
 1366 0506 0C       		.byte	0xc
 1367 0507 CD       		.byte	0xcd
 1368 0508 56040000 		.4byte	0x456
 1369 050c 38       		.byte	0x38
 1370 050d 13       		.uleb128 0x13
 1371 050e 5F757200 		.ascii	"_ur\000"
 1372 0512 0C       		.byte	0xc
 1373 0513 CE       		.byte	0xce
 1374 0514 25000000 		.4byte	0x25
 1375 0518 3C       		.byte	0x3c
 1376 0519 0D       		.uleb128 0xd
 1377 051a 0D020000 		.4byte	.LASF81
ARM GAS  /tmp/cczatnhQ.s 			page 45


 1378 051e 0C       		.byte	0xc
 1379 051f D1       		.byte	0xd1
 1380 0520 61070000 		.4byte	0x761
 1381 0524 40       		.byte	0x40
 1382 0525 0D       		.uleb128 0xd
 1383 0526 7A090000 		.4byte	.LASF82
 1384 052a 0C       		.byte	0xc
 1385 052b D2       		.byte	0xd2
 1386 052c 71070000 		.4byte	0x771
 1387 0530 43       		.byte	0x43
 1388 0531 13       		.uleb128 0x13
 1389 0532 5F6C6200 		.ascii	"_lb\000"
 1390 0536 0C       		.byte	0xc
 1391 0537 D5       		.byte	0xd5
 1392 0538 31040000 		.4byte	0x431
 1393 053c 44       		.byte	0x44
 1394 053d 0D       		.uleb128 0xd
 1395 053e F4020000 		.4byte	.LASF83
 1396 0542 0C       		.byte	0xc
 1397 0543 D8       		.byte	0xd8
 1398 0544 25000000 		.4byte	0x25
 1399 0548 4C       		.byte	0x4c
 1400 0549 0D       		.uleb128 0xd
 1401 054a 79040000 		.4byte	.LASF84
 1402 054e 0C       		.byte	0xc
 1403 054f D9       		.byte	0xd9
 1404 0550 11020000 		.4byte	0x211
 1405 0554 50       		.byte	0x50
 1406 0555 0D       		.uleb128 0xd
 1407 0556 67030000 		.4byte	.LASF85
 1408 055a 0C       		.byte	0xc
 1409 055b DC       		.byte	0xdc
 1410 055c A4050000 		.4byte	0x5a4
 1411 0560 54       		.byte	0x54
 1412 0561 0D       		.uleb128 0xd
 1413 0562 FE030000 		.4byte	.LASF86
 1414 0566 0C       		.byte	0xc
 1415 0567 E0       		.byte	0xe0
 1416 0568 8E020000 		.4byte	0x28e
 1417 056c 58       		.byte	0x58
 1418 056d 0D       		.uleb128 0xd
 1419 056e 15030000 		.4byte	.LASF87
 1420 0572 0C       		.byte	0xc
 1421 0573 E2       		.byte	0xe2
 1422 0574 83020000 		.4byte	0x283
 1423 0578 5C       		.byte	0x5c
 1424 0579 0D       		.uleb128 0xd
 1425 057a C0060000 		.4byte	.LASF88
 1426 057e 0C       		.byte	0xc
 1427 057f E3       		.byte	0xe3
 1428 0580 25000000 		.4byte	0x25
 1429 0584 64       		.byte	0x64
 1430 0585 00       		.byte	0
 1431 0586 18       		.uleb128 0x18
 1432 0587 25000000 		.4byte	0x25
 1433 058b A4050000 		.4byte	0x5a4
 1434 058f 19       		.uleb128 0x19
ARM GAS  /tmp/cczatnhQ.s 			page 46


 1435 0590 A4050000 		.4byte	0x5a4
 1436 0594 19       		.uleb128 0x19
 1437 0595 ED000000 		.4byte	0xed
 1438 0599 19       		.uleb128 0x19
 1439 059a E1060000 		.4byte	0x6e1
 1440 059e 19       		.uleb128 0x19
 1441 059f 25000000 		.4byte	0x25
 1442 05a3 00       		.byte	0
 1443 05a4 14       		.uleb128 0x14
 1444 05a5 04       		.byte	0x4
 1445 05a6 AF050000 		.4byte	0x5af
 1446 05aa 06       		.uleb128 0x6
 1447 05ab A4050000 		.4byte	0x5a4
 1448 05af 1A       		.uleb128 0x1a
 1449 05b0 78070000 		.4byte	.LASF89
 1450 05b4 2804     		.2byte	0x428
 1451 05b6 0C       		.byte	0xc
 1452 05b7 3802     		.2byte	0x238
 1453 05b9 E1060000 		.4byte	0x6e1
 1454 05bd 1B       		.uleb128 0x1b
 1455 05be 01080000 		.4byte	.LASF90
 1456 05c2 0C       		.byte	0xc
 1457 05c3 3A02     		.2byte	0x23a
 1458 05c5 25000000 		.4byte	0x25
 1459 05c9 00       		.byte	0
 1460 05ca 1B       		.uleb128 0x1b
 1461 05cb 14090000 		.4byte	.LASF91
 1462 05cf 0C       		.byte	0xc
 1463 05d0 3F02     		.2byte	0x23f
 1464 05d2 C8070000 		.4byte	0x7c8
 1465 05d6 04       		.byte	0x4
 1466 05d7 1B       		.uleb128 0x1b
 1467 05d8 EC080000 		.4byte	.LASF92
 1468 05dc 0C       		.byte	0xc
 1469 05dd 3F02     		.2byte	0x23f
 1470 05df C8070000 		.4byte	0x7c8
 1471 05e3 08       		.byte	0x8
 1472 05e4 1B       		.uleb128 0x1b
 1473 05e5 DB020000 		.4byte	.LASF93
 1474 05e9 0C       		.byte	0xc
 1475 05ea 3F02     		.2byte	0x23f
 1476 05ec C8070000 		.4byte	0x7c8
 1477 05f0 0C       		.byte	0xc
 1478 05f1 1B       		.uleb128 0x1b
 1479 05f2 2B070000 		.4byte	.LASF94
 1480 05f6 0C       		.byte	0xc
 1481 05f7 4102     		.2byte	0x241
 1482 05f9 25000000 		.4byte	0x25
 1483 05fd 10       		.byte	0x10
 1484 05fe 1B       		.uleb128 0x1b
 1485 05ff 5E000000 		.4byte	.LASF95
 1486 0603 0C       		.byte	0xc
 1487 0604 4202     		.2byte	0x242
 1488 0606 AA090000 		.4byte	0x9aa
 1489 060a 14       		.byte	0x14
 1490 060b 1B       		.uleb128 0x1b
 1491 060c BB080000 		.4byte	.LASF96
ARM GAS  /tmp/cczatnhQ.s 			page 47


 1492 0610 0C       		.byte	0xc
 1493 0611 4402     		.2byte	0x244
 1494 0613 25000000 		.4byte	0x25
 1495 0617 30       		.byte	0x30
 1496 0618 1B       		.uleb128 0x1b
 1497 0619 35070000 		.4byte	.LASF97
 1498 061d 0C       		.byte	0xc
 1499 061e 4502     		.2byte	0x245
 1500 0620 17070000 		.4byte	0x717
 1501 0624 34       		.byte	0x34
 1502 0625 1B       		.uleb128 0x1b
 1503 0626 A8050000 		.4byte	.LASF98
 1504 062a 0C       		.byte	0xc
 1505 062b 4702     		.2byte	0x247
 1506 062d 25000000 		.4byte	0x25
 1507 0631 38       		.byte	0x38
 1508 0632 1B       		.uleb128 0x1b
 1509 0633 45070000 		.4byte	.LASF99
 1510 0637 0C       		.byte	0xc
 1511 0638 4902     		.2byte	0x249
 1512 063a C5090000 		.4byte	0x9c5
 1513 063e 3C       		.byte	0x3c
 1514 063f 1B       		.uleb128 0x1b
 1515 0640 E2030000 		.4byte	.LASF100
 1516 0644 0C       		.byte	0xc
 1517 0645 4C02     		.2byte	0x24c
 1518 0647 F7020000 		.4byte	0x2f7
 1519 064b 40       		.byte	0x40
 1520 064c 1B       		.uleb128 0x1b
 1521 064d 06030000 		.4byte	.LASF101
 1522 0651 0C       		.byte	0xc
 1523 0652 4D02     		.2byte	0x24d
 1524 0654 25000000 		.4byte	0x25
 1525 0658 44       		.byte	0x44
 1526 0659 1B       		.uleb128 0x1b
 1527 065a C5090000 		.4byte	.LASF102
 1528 065e 0C       		.byte	0xc
 1529 065f 4E02     		.2byte	0x24e
 1530 0661 F7020000 		.4byte	0x2f7
 1531 0665 48       		.byte	0x48
 1532 0666 1B       		.uleb128 0x1b
 1533 0667 C8060000 		.4byte	.LASF103
 1534 066b 0C       		.byte	0xc
 1535 066c 4F02     		.2byte	0x24f
 1536 066e CB090000 		.4byte	0x9cb
 1537 0672 4C       		.byte	0x4c
 1538 0673 1B       		.uleb128 0x1b
 1539 0674 35030000 		.4byte	.LASF104
 1540 0678 0C       		.byte	0xc
 1541 0679 5202     		.2byte	0x252
 1542 067b 25000000 		.4byte	0x25
 1543 067f 50       		.byte	0x50
 1544 0680 1B       		.uleb128 0x1b
 1545 0681 88020000 		.4byte	.LASF105
 1546 0685 0C       		.byte	0xc
 1547 0686 5302     		.2byte	0x253
 1548 0688 E1060000 		.4byte	0x6e1
ARM GAS  /tmp/cczatnhQ.s 			page 48


 1549 068c 54       		.byte	0x54
 1550 068d 1B       		.uleb128 0x1b
 1551 068e E5010000 		.4byte	.LASF106
 1552 0692 0C       		.byte	0xc
 1553 0693 7602     		.2byte	0x276
 1554 0695 88090000 		.4byte	0x988
 1555 0699 58       		.byte	0x58
 1556 069a 1C       		.uleb128 0x1c
 1557 069b 74050000 		.4byte	.LASF66
 1558 069f 0C       		.byte	0xc
 1559 06a0 7A02     		.2byte	0x27a
 1560 06a2 14040000 		.4byte	0x414
 1561 06a6 4801     		.2byte	0x148
 1562 06a8 1C       		.uleb128 0x1c
 1563 06a9 9F030000 		.4byte	.LASF107
 1564 06ad 0C       		.byte	0xc
 1565 06ae 7B02     		.2byte	0x27b
 1566 06b0 D6030000 		.4byte	0x3d6
 1567 06b4 4C01     		.2byte	0x14c
 1568 06b6 1C       		.uleb128 0x1c
 1569 06b7 35090000 		.4byte	.LASF108
 1570 06bb 0C       		.byte	0xc
 1571 06bc 7F02     		.2byte	0x27f
 1572 06be DC090000 		.4byte	0x9dc
 1573 06c2 DC02     		.2byte	0x2dc
 1574 06c4 1C       		.uleb128 0x1c
 1575 06c5 C8010000 		.4byte	.LASF109
 1576 06c9 0C       		.byte	0xc
 1577 06ca 8402     		.2byte	0x284
 1578 06cc 8D070000 		.4byte	0x78d
 1579 06d0 E002     		.2byte	0x2e0
 1580 06d2 1C       		.uleb128 0x1c
 1581 06d3 9A010000 		.4byte	.LASF110
 1582 06d7 0C       		.byte	0xc
 1583 06d8 8502     		.2byte	0x285
 1584 06da E8090000 		.4byte	0x9e8
 1585 06de EC02     		.2byte	0x2ec
 1586 06e0 00       		.byte	0
 1587 06e1 14       		.uleb128 0x14
 1588 06e2 04       		.byte	0x4
 1589 06e3 E7060000 		.4byte	0x6e7
 1590 06e7 03       		.uleb128 0x3
 1591 06e8 01       		.byte	0x1
 1592 06e9 08       		.byte	0x8
 1593 06ea D7070000 		.4byte	.LASF111
 1594 06ee 06       		.uleb128 0x6
 1595 06ef E7060000 		.4byte	0x6e7
 1596 06f3 14       		.uleb128 0x14
 1597 06f4 04       		.byte	0x4
 1598 06f5 86050000 		.4byte	0x586
 1599 06f9 18       		.uleb128 0x18
 1600 06fa 25000000 		.4byte	0x25
 1601 06fe 17070000 		.4byte	0x717
 1602 0702 19       		.uleb128 0x19
 1603 0703 A4050000 		.4byte	0x5a4
 1604 0707 19       		.uleb128 0x19
 1605 0708 ED000000 		.4byte	0xed
ARM GAS  /tmp/cczatnhQ.s 			page 49


 1606 070c 19       		.uleb128 0x19
 1607 070d 17070000 		.4byte	0x717
 1608 0711 19       		.uleb128 0x19
 1609 0712 25000000 		.4byte	0x25
 1610 0716 00       		.byte	0
 1611 0717 14       		.uleb128 0x14
 1612 0718 04       		.byte	0x4
 1613 0719 EE060000 		.4byte	0x6ee
 1614 071d 14       		.uleb128 0x14
 1615 071e 04       		.byte	0x4
 1616 071f F9060000 		.4byte	0x6f9
 1617 0723 18       		.uleb128 0x18
 1618 0724 1C020000 		.4byte	0x21c
 1619 0728 41070000 		.4byte	0x741
 1620 072c 19       		.uleb128 0x19
 1621 072d A4050000 		.4byte	0x5a4
 1622 0731 19       		.uleb128 0x19
 1623 0732 ED000000 		.4byte	0xed
 1624 0736 19       		.uleb128 0x19
 1625 0737 1C020000 		.4byte	0x21c
 1626 073b 19       		.uleb128 0x19
 1627 073c 25000000 		.4byte	0x25
 1628 0740 00       		.byte	0
 1629 0741 14       		.uleb128 0x14
 1630 0742 04       		.byte	0x4
 1631 0743 23070000 		.4byte	0x723
 1632 0747 18       		.uleb128 0x18
 1633 0748 25000000 		.4byte	0x25
 1634 074c 5B070000 		.4byte	0x75b
 1635 0750 19       		.uleb128 0x19
 1636 0751 A4050000 		.4byte	0x5a4
 1637 0755 19       		.uleb128 0x19
 1638 0756 ED000000 		.4byte	0xed
 1639 075a 00       		.byte	0
 1640 075b 14       		.uleb128 0x14
 1641 075c 04       		.byte	0x4
 1642 075d 47070000 		.4byte	0x747
 1643 0761 08       		.uleb128 0x8
 1644 0762 45000000 		.4byte	0x45
 1645 0766 71070000 		.4byte	0x771
 1646 076a 09       		.uleb128 0x9
 1647 076b EF000000 		.4byte	0xef
 1648 076f 02       		.byte	0x2
 1649 0770 00       		.byte	0
 1650 0771 08       		.uleb128 0x8
 1651 0772 45000000 		.4byte	0x45
 1652 0776 81070000 		.4byte	0x781
 1653 077a 09       		.uleb128 0x9
 1654 077b EF000000 		.4byte	0xef
 1655 077f 00       		.byte	0
 1656 0780 00       		.byte	0
 1657 0781 0F       		.uleb128 0xf
 1658 0782 D9060000 		.4byte	.LASF112
 1659 0786 0C       		.byte	0xc
 1660 0787 1D01     		.2byte	0x11d
 1661 0789 5C040000 		.4byte	0x45c
 1662 078d 1D       		.uleb128 0x1d
ARM GAS  /tmp/cczatnhQ.s 			page 50


 1663 078e 0E090000 		.4byte	.LASF113
 1664 0792 0C       		.byte	0xc
 1665 0793 0C       		.byte	0xc
 1666 0794 2101     		.2byte	0x121
 1667 0796 C2070000 		.4byte	0x7c2
 1668 079a 1B       		.uleb128 0x1b
 1669 079b 56080000 		.4byte	.LASF46
 1670 079f 0C       		.byte	0xc
 1671 07a0 2301     		.2byte	0x123
 1672 07a2 C2070000 		.4byte	0x7c2
 1673 07a6 00       		.byte	0
 1674 07a7 1B       		.uleb128 0x1b
 1675 07a8 6D030000 		.4byte	.LASF114
 1676 07ac 0C       		.byte	0xc
 1677 07ad 2401     		.2byte	0x124
 1678 07af 25000000 		.4byte	0x25
 1679 07b3 04       		.byte	0x4
 1680 07b4 1B       		.uleb128 0x1b
 1681 07b5 25070000 		.4byte	.LASF115
 1682 07b9 0C       		.byte	0xc
 1683 07ba 2501     		.2byte	0x125
 1684 07bc C8070000 		.4byte	0x7c8
 1685 07c0 08       		.byte	0x8
 1686 07c1 00       		.byte	0
 1687 07c2 14       		.uleb128 0x14
 1688 07c3 04       		.byte	0x4
 1689 07c4 8D070000 		.4byte	0x78d
 1690 07c8 14       		.uleb128 0x14
 1691 07c9 04       		.byte	0x4
 1692 07ca 81070000 		.4byte	0x781
 1693 07ce 1D       		.uleb128 0x1d
 1694 07cf 4A000000 		.4byte	.LASF116
 1695 07d3 0E       		.byte	0xe
 1696 07d4 0C       		.byte	0xc
 1697 07d5 3D01     		.2byte	0x13d
 1698 07d7 03080000 		.4byte	0x803
 1699 07db 1B       		.uleb128 0x1b
 1700 07dc 7F070000 		.4byte	.LASF117
 1701 07e0 0C       		.byte	0xc
 1702 07e1 3E01     		.2byte	0x13e
 1703 07e3 03080000 		.4byte	0x803
 1704 07e7 00       		.byte	0
 1705 07e8 1B       		.uleb128 0x1b
 1706 07e9 0E040000 		.4byte	.LASF118
 1707 07ed 0C       		.byte	0xc
 1708 07ee 3F01     		.2byte	0x13f
 1709 07f0 03080000 		.4byte	0x803
 1710 07f4 06       		.byte	0x6
 1711 07f5 1B       		.uleb128 0x1b
 1712 07f6 88080000 		.4byte	.LASF119
 1713 07fa 0C       		.byte	0xc
 1714 07fb 4001     		.2byte	0x140
 1715 07fd 69000000 		.4byte	0x69
 1716 0801 0C       		.byte	0xc
 1717 0802 00       		.byte	0
 1718 0803 08       		.uleb128 0x8
 1719 0804 69000000 		.4byte	0x69
ARM GAS  /tmp/cczatnhQ.s 			page 51


 1720 0808 13080000 		.4byte	0x813
 1721 080c 09       		.uleb128 0x9
 1722 080d EF000000 		.4byte	0xef
 1723 0811 02       		.byte	0x2
 1724 0812 00       		.byte	0
 1725 0813 1E       		.uleb128 0x1e
 1726 0814 D0       		.byte	0xd0
 1727 0815 0C       		.byte	0xc
 1728 0816 5702     		.2byte	0x257
 1729 0818 14090000 		.4byte	0x914
 1730 081c 1B       		.uleb128 0x1b
 1731 081d 37040000 		.4byte	.LASF120
 1732 0821 0C       		.byte	0xc
 1733 0822 5902     		.2byte	0x259
 1734 0824 2C000000 		.4byte	0x2c
 1735 0828 00       		.byte	0
 1736 0829 1B       		.uleb128 0x1b
 1737 082a 5C080000 		.4byte	.LASF121
 1738 082e 0C       		.byte	0xc
 1739 082f 5A02     		.2byte	0x25a
 1740 0831 E1060000 		.4byte	0x6e1
 1741 0835 04       		.byte	0x4
 1742 0836 1B       		.uleb128 0x1b
 1743 0837 B4030000 		.4byte	.LASF122
 1744 083b 0C       		.byte	0xc
 1745 083c 5B02     		.2byte	0x25b
 1746 083e 14090000 		.4byte	0x914
 1747 0842 08       		.byte	0x8
 1748 0843 1B       		.uleb128 0x1b
 1749 0844 7C050000 		.4byte	.LASF123
 1750 0848 0C       		.byte	0xc
 1751 0849 5C02     		.2byte	0x25c
 1752 084b 0D030000 		.4byte	0x30d
 1753 084f 24       		.byte	0x24
 1754 0850 1B       		.uleb128 0x1b
 1755 0851 44040000 		.4byte	.LASF124
 1756 0855 0C       		.byte	0xc
 1757 0856 5D02     		.2byte	0x25d
 1758 0858 25000000 		.4byte	0x25
 1759 085c 48       		.byte	0x48
 1760 085d 1B       		.uleb128 0x1b
 1761 085e 12070000 		.4byte	.LASF125
 1762 0862 0C       		.byte	0xc
 1763 0863 5E02     		.2byte	0x25e
 1764 0865 9B000000 		.4byte	0x9b
 1765 0869 50       		.byte	0x50
 1766 086a 1B       		.uleb128 0x1b
 1767 086b B2090000 		.4byte	.LASF126
 1768 086f 0C       		.byte	0xc
 1769 0870 5F02     		.2byte	0x25f
 1770 0872 CE070000 		.4byte	0x7ce
 1771 0876 58       		.byte	0x58
 1772 0877 1B       		.uleb128 0x1b
 1773 0878 A1060000 		.4byte	.LASF127
 1774 087c 0C       		.byte	0xc
 1775 087d 6002     		.2byte	0x260
 1776 087f 83020000 		.4byte	0x283
ARM GAS  /tmp/cczatnhQ.s 			page 52


 1777 0883 68       		.byte	0x68
 1778 0884 1B       		.uleb128 0x1b
 1779 0885 B7090000 		.4byte	.LASF128
 1780 0889 0C       		.byte	0xc
 1781 088a 6102     		.2byte	0x261
 1782 088c 83020000 		.4byte	0x283
 1783 0890 70       		.byte	0x70
 1784 0891 1B       		.uleb128 0x1b
 1785 0892 36010000 		.4byte	.LASF129
 1786 0896 0C       		.byte	0xc
 1787 0897 6202     		.2byte	0x262
 1788 0899 83020000 		.4byte	0x283
 1789 089d 78       		.byte	0x78
 1790 089e 1B       		.uleb128 0x1b
 1791 089f 2B090000 		.4byte	.LASF130
 1792 08a3 0C       		.byte	0xc
 1793 08a4 6302     		.2byte	0x263
 1794 08a6 24090000 		.4byte	0x924
 1795 08aa 80       		.byte	0x80
 1796 08ab 1B       		.uleb128 0x1b
 1797 08ac A8030000 		.4byte	.LASF131
 1798 08b0 0C       		.byte	0xc
 1799 08b1 6402     		.2byte	0x264
 1800 08b3 34090000 		.4byte	0x934
 1801 08b7 88       		.byte	0x88
 1802 08b8 1B       		.uleb128 0x1b
 1803 08b9 87000000 		.4byte	.LASF132
 1804 08bd 0C       		.byte	0xc
 1805 08be 6502     		.2byte	0x265
 1806 08c0 25000000 		.4byte	0x25
 1807 08c4 A0       		.byte	0xa0
 1808 08c5 1B       		.uleb128 0x1b
 1809 08c6 A1020000 		.4byte	.LASF133
 1810 08ca 0C       		.byte	0xc
 1811 08cb 6602     		.2byte	0x266
 1812 08cd 83020000 		.4byte	0x283
 1813 08d1 A4       		.byte	0xa4
 1814 08d2 1B       		.uleb128 0x1b
 1815 08d3 27010000 		.4byte	.LASF134
 1816 08d7 0C       		.byte	0xc
 1817 08d8 6702     		.2byte	0x267
 1818 08da 83020000 		.4byte	0x283
 1819 08de AC       		.byte	0xac
 1820 08df 1B       		.uleb128 0x1b
 1821 08e0 90020000 		.4byte	.LASF135
 1822 08e4 0C       		.byte	0xc
 1823 08e5 6802     		.2byte	0x268
 1824 08e7 83020000 		.4byte	0x283
 1825 08eb B4       		.byte	0xb4
 1826 08ec 1B       		.uleb128 0x1b
 1827 08ed AE000000 		.4byte	.LASF136
 1828 08f1 0C       		.byte	0xc
 1829 08f2 6902     		.2byte	0x269
 1830 08f4 83020000 		.4byte	0x283
 1831 08f8 BC       		.byte	0xbc
 1832 08f9 1B       		.uleb128 0x1b
 1833 08fa BD000000 		.4byte	.LASF137
ARM GAS  /tmp/cczatnhQ.s 			page 53


 1834 08fe 0C       		.byte	0xc
 1835 08ff 6A02     		.2byte	0x26a
 1836 0901 83020000 		.4byte	0x283
 1837 0905 C4       		.byte	0xc4
 1838 0906 1B       		.uleb128 0x1b
 1839 0907 98060000 		.4byte	.LASF138
 1840 090b 0C       		.byte	0xc
 1841 090c 6B02     		.2byte	0x26b
 1842 090e 25000000 		.4byte	0x25
 1843 0912 CC       		.byte	0xcc
 1844 0913 00       		.byte	0
 1845 0914 08       		.uleb128 0x8
 1846 0915 E7060000 		.4byte	0x6e7
 1847 0919 24090000 		.4byte	0x924
 1848 091d 09       		.uleb128 0x9
 1849 091e EF000000 		.4byte	0xef
 1850 0922 19       		.byte	0x19
 1851 0923 00       		.byte	0
 1852 0924 08       		.uleb128 0x8
 1853 0925 E7060000 		.4byte	0x6e7
 1854 0929 34090000 		.4byte	0x934
 1855 092d 09       		.uleb128 0x9
 1856 092e EF000000 		.4byte	0xef
 1857 0932 07       		.byte	0x7
 1858 0933 00       		.byte	0
 1859 0934 08       		.uleb128 0x8
 1860 0935 E7060000 		.4byte	0x6e7
 1861 0939 44090000 		.4byte	0x944
 1862 093d 09       		.uleb128 0x9
 1863 093e EF000000 		.4byte	0xef
 1864 0942 17       		.byte	0x17
 1865 0943 00       		.byte	0
 1866 0944 1E       		.uleb128 0x1e
 1867 0945 F0       		.byte	0xf0
 1868 0946 0C       		.byte	0xc
 1869 0947 7002     		.2byte	0x270
 1870 0949 68090000 		.4byte	0x968
 1871 094d 1B       		.uleb128 0x1b
 1872 094e F0030000 		.4byte	.LASF139
 1873 0952 0C       		.byte	0xc
 1874 0953 7302     		.2byte	0x273
 1875 0955 68090000 		.4byte	0x968
 1876 0959 00       		.byte	0
 1877 095a 1B       		.uleb128 0x1b
 1878 095b FD020000 		.4byte	.LASF140
 1879 095f 0C       		.byte	0xc
 1880 0960 7402     		.2byte	0x274
 1881 0962 78090000 		.4byte	0x978
 1882 0966 78       		.byte	0x78
 1883 0967 00       		.byte	0
 1884 0968 08       		.uleb128 0x8
 1885 0969 56040000 		.4byte	0x456
 1886 096d 78090000 		.4byte	0x978
 1887 0971 09       		.uleb128 0x9
 1888 0972 EF000000 		.4byte	0xef
 1889 0976 1D       		.byte	0x1d
 1890 0977 00       		.byte	0
ARM GAS  /tmp/cczatnhQ.s 			page 54


 1891 0978 08       		.uleb128 0x8
 1892 0979 2C000000 		.4byte	0x2c
 1893 097d 88090000 		.4byte	0x988
 1894 0981 09       		.uleb128 0x9
 1895 0982 EF000000 		.4byte	0xef
 1896 0986 1D       		.byte	0x1d
 1897 0987 00       		.byte	0
 1898 0988 1F       		.uleb128 0x1f
 1899 0989 F0       		.byte	0xf0
 1900 098a 0C       		.byte	0xc
 1901 098b 5502     		.2byte	0x255
 1902 098d AA090000 		.4byte	0x9aa
 1903 0991 20       		.uleb128 0x20
 1904 0992 78070000 		.4byte	.LASF89
 1905 0996 0C       		.byte	0xc
 1906 0997 6C02     		.2byte	0x26c
 1907 0999 13080000 		.4byte	0x813
 1908 099d 20       		.uleb128 0x20
 1909 099e 80090000 		.4byte	.LASF141
 1910 09a2 0C       		.byte	0xc
 1911 09a3 7502     		.2byte	0x275
 1912 09a5 44090000 		.4byte	0x944
 1913 09a9 00       		.byte	0
 1914 09aa 08       		.uleb128 0x8
 1915 09ab E7060000 		.4byte	0x6e7
 1916 09af BA090000 		.4byte	0x9ba
 1917 09b3 09       		.uleb128 0x9
 1918 09b4 EF000000 		.4byte	0xef
 1919 09b8 18       		.byte	0x18
 1920 09b9 00       		.byte	0
 1921 09ba 21       		.uleb128 0x21
 1922 09bb C5090000 		.4byte	0x9c5
 1923 09bf 19       		.uleb128 0x19
 1924 09c0 A4050000 		.4byte	0x5a4
 1925 09c4 00       		.byte	0
 1926 09c5 14       		.uleb128 0x14
 1927 09c6 04       		.byte	0x4
 1928 09c7 BA090000 		.4byte	0x9ba
 1929 09cb 14       		.uleb128 0x14
 1930 09cc 04       		.byte	0x4
 1931 09cd F7020000 		.4byte	0x2f7
 1932 09d1 21       		.uleb128 0x21
 1933 09d2 DC090000 		.4byte	0x9dc
 1934 09d6 19       		.uleb128 0x19
 1935 09d7 25000000 		.4byte	0x25
 1936 09db 00       		.byte	0
 1937 09dc 14       		.uleb128 0x14
 1938 09dd 04       		.byte	0x4
 1939 09de E2090000 		.4byte	0x9e2
 1940 09e2 14       		.uleb128 0x14
 1941 09e3 04       		.byte	0x4
 1942 09e4 D1090000 		.4byte	0x9d1
 1943 09e8 08       		.uleb128 0x8
 1944 09e9 81070000 		.4byte	0x781
 1945 09ed F8090000 		.4byte	0x9f8
 1946 09f1 09       		.uleb128 0x9
 1947 09f2 EF000000 		.4byte	0xef
ARM GAS  /tmp/cczatnhQ.s 			page 55


 1948 09f6 02       		.byte	0x2
 1949 09f7 00       		.byte	0
 1950 09f8 0A       		.uleb128 0xa
 1951 09f9 D9010000 		.4byte	.LASF142
 1952 09fd 0C       		.byte	0xc
 1953 09fe FD02     		.2byte	0x2fd
 1954 0a00 A4050000 		.4byte	0x5a4
 1955 0a04 0A       		.uleb128 0xa
 1956 0a05 A8080000 		.4byte	.LASF143
 1957 0a09 0C       		.byte	0xc
 1958 0a0a FE02     		.2byte	0x2fe
 1959 0a0c AA050000 		.4byte	0x5aa
 1960 0a10 0B       		.uleb128 0xb
 1961 0a11 04040000 		.4byte	.LASF144
 1962 0a15 0D       		.byte	0xd
 1963 0a16 5F       		.byte	0x5f
 1964 0a17 E1060000 		.4byte	0x6e1
 1965 0a1b 0B       		.uleb128 0xb
 1966 0a1c E0050000 		.4byte	.LASF145
 1967 0a20 0E       		.byte	0xe
 1968 0a21 8F       		.byte	0x8f
 1969 0a22 2D0A0000 		.4byte	0xa2d
 1970 0a26 03       		.uleb128 0x3
 1971 0a27 01       		.byte	0x1
 1972 0a28 02       		.byte	0x2
 1973 0a29 38060000 		.4byte	.LASF146
 1974 0a2d 05       		.uleb128 0x5
 1975 0a2e 260A0000 		.4byte	0xa26
 1976 0a32 22       		.uleb128 0x22
 1977 0a33 3F090000 		.4byte	.LASF147
 1978 0a37 0E       		.byte	0xe
 1979 0a38 94       		.byte	0x94
 1980 0a39 DE000000 		.4byte	0xde
 1981 0a3d 05       		.uleb128 0x5
 1982 0a3e 03       		.byte	0x3
 1983 0a3f 00000000 		.4byte	cpu_irq_critical_section_counter
 1984 0a43 22       		.uleb128 0x22
 1985 0a44 53040000 		.4byte	.LASF148
 1986 0a48 0E       		.byte	0xe
 1987 0a49 95       		.byte	0x95
 1988 0a4a 2D0A0000 		.4byte	0xa2d
 1989 0a4e 05       		.uleb128 0x5
 1990 0a4f 03       		.byte	0x3
 1991 0a50 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1992 0a54 03       		.uleb128 0x3
 1993 0a55 04       		.byte	0x4
 1994 0a56 04       		.byte	0x4
 1995 0a57 DA050000 		.4byte	.LASF149
 1996 0a5b 03       		.uleb128 0x3
 1997 0a5c 08       		.byte	0x8
 1998 0a5d 04       		.byte	0x4
 1999 0a5e 8C070000 		.4byte	.LASF150
 2000 0a62 23       		.uleb128 0x23
 2001 0a63 01       		.byte	0x1
 2002 0a64 33000000 		.4byte	0x33
 2003 0a68 03       		.byte	0x3
 2004 0a69 41       		.byte	0x41
ARM GAS  /tmp/cczatnhQ.s 			page 56


 2005 0a6a 990A0000 		.4byte	0xa99
 2006 0a6e 24       		.uleb128 0x24
 2007 0a6f F4050000 		.4byte	.LASF151
 2008 0a73 7F       		.sleb128 -1
 2009 0a74 25       		.uleb128 0x25
 2010 0a75 D2060000 		.4byte	.LASF152
 2011 0a79 00       		.byte	0
 2012 0a7a 25       		.uleb128 0x25
 2013 0a7b 14040000 		.4byte	.LASF153
 2014 0a7f 01       		.byte	0x1
 2015 0a80 25       		.uleb128 0x25
 2016 0a81 95080000 		.4byte	.LASF154
 2017 0a85 02       		.byte	0x2
 2018 0a86 25       		.uleb128 0x25
 2019 0a87 38000000 		.4byte	.LASF155
 2020 0a8b 03       		.byte	0x3
 2021 0a8c 25       		.uleb128 0x25
 2022 0a8d DC070000 		.4byte	.LASF156
 2023 0a91 04       		.byte	0x4
 2024 0a92 25       		.uleb128 0x25
 2025 0a93 C1030000 		.4byte	.LASF157
 2026 0a97 05       		.byte	0x5
 2027 0a98 00       		.byte	0
 2028 0a99 04       		.uleb128 0x4
 2029 0a9a 1E080000 		.4byte	.LASF158
 2030 0a9e 03       		.byte	0x3
 2031 0a9f 49       		.byte	0x49
 2032 0aa0 620A0000 		.4byte	0xa62
 2033 0aa4 26       		.uleb128 0x26
 2034 0aa5 F1070000 		.4byte	.LASF205
 2035 0aa9 01       		.byte	0x1
 2036 0aaa 45000000 		.4byte	0x45
 2037 0aae 03       		.byte	0x3
 2038 0aaf 4C       		.byte	0x4c
 2039 0ab0 C70A0000 		.4byte	0xac7
 2040 0ab4 25       		.uleb128 0x25
 2041 0ab5 12000000 		.4byte	.LASF159
 2042 0ab9 08       		.byte	0x8
 2043 0aba 25       		.uleb128 0x25
 2044 0abb CA090000 		.4byte	.LASF160
 2045 0abf 00       		.byte	0
 2046 0ac0 25       		.uleb128 0x25
 2047 0ac1 65010000 		.4byte	.LASF161
 2048 0ac5 04       		.byte	0x4
 2049 0ac6 00       		.byte	0
 2050 0ac7 27       		.uleb128 0x27
 2051 0ac8 8A040000 		.4byte	.LASF169
 2052 0acc 01       		.byte	0x1
 2053 0acd C801     		.2byte	0x1c8
 2054 0acf D3000000 		.4byte	0xd3
 2055 0ad3 00000000 		.4byte	.LFB210
 2056 0ad7 06000000 		.4byte	.LFE210-.LFB210
 2057 0adb 01       		.uleb128 0x1
 2058 0adc 9C       		.byte	0x9c
 2059 0add F20A0000 		.4byte	0xaf2
 2060 0ae1 28       		.uleb128 0x28
 2061 0ae2 5C050000 		.4byte	.LASF162
ARM GAS  /tmp/cczatnhQ.s 			page 57


 2062 0ae6 01       		.byte	0x1
 2063 0ae7 C801     		.2byte	0x1c8
 2064 0ae9 F20A0000 		.4byte	0xaf2
 2065 0aed 00000000 		.4byte	.LLST29
 2066 0af1 00       		.byte	0
 2067 0af2 14       		.uleb128 0x14
 2068 0af3 04       		.byte	0x4
 2069 0af4 FB010000 		.4byte	0x1fb
 2070 0af8 29       		.uleb128 0x29
 2071 0af9 1A020000 		.4byte	.LASF164
 2072 0afd 01       		.byte	0x1
 2073 0afe B001     		.2byte	0x1b0
 2074 0b00 00000000 		.4byte	.LFB209
 2075 0b04 1C000000 		.4byte	.LFE209-.LFB209
 2076 0b08 01       		.uleb128 0x1
 2077 0b09 9C       		.byte	0x9c
 2078 0b0a 2B0B0000 		.4byte	0xb2b
 2079 0b0e 2A       		.uleb128 0x2a
 2080 0b0f 5C050000 		.4byte	.LASF162
 2081 0b13 01       		.byte	0x1
 2082 0b14 B001     		.2byte	0x1b0
 2083 0b16 F20A0000 		.4byte	0xaf2
 2084 0b1a 01       		.uleb128 0x1
 2085 0b1b 50       		.byte	0x50
 2086 0b1c 2A       		.uleb128 0x2a
 2087 0b1d 4F070000 		.4byte	.LASF163
 2088 0b21 01       		.byte	0x1
 2089 0b22 B001     		.2byte	0x1b0
 2090 0b24 D3000000 		.4byte	0xd3
 2091 0b28 01       		.uleb128 0x1
 2092 0b29 51       		.byte	0x51
 2093 0b2a 00       		.byte	0
 2094 0b2b 29       		.uleb128 0x29
 2095 0b2c 6B020000 		.4byte	.LASF165
 2096 0b30 01       		.byte	0x1
 2097 0b31 A101     		.2byte	0x1a1
 2098 0b33 00000000 		.4byte	.LFB208
 2099 0b37 1E000000 		.4byte	.LFE208-.LFB208
 2100 0b3b 01       		.uleb128 0x1
 2101 0b3c 9C       		.byte	0x9c
 2102 0b3d 800B0000 		.4byte	0xb80
 2103 0b41 28       		.uleb128 0x28
 2104 0b42 5C050000 		.4byte	.LASF162
 2105 0b46 01       		.byte	0x1
 2106 0b47 A101     		.2byte	0x1a1
 2107 0b49 F20A0000 		.4byte	0xaf2
 2108 0b4d 21000000 		.4byte	.LLST26
 2109 0b51 28       		.uleb128 0x28
 2110 0b52 BE010000 		.4byte	.LASF166
 2111 0b56 01       		.byte	0x1
 2112 0b57 A101     		.2byte	0x1a1
 2113 0b59 D3000000 		.4byte	0xd3
 2114 0b5d 42000000 		.4byte	.LLST27
 2115 0b61 2A       		.uleb128 0x2a
 2116 0b62 5A020000 		.4byte	.LASF167
 2117 0b66 01       		.byte	0x1
 2118 0b67 A201     		.2byte	0x1a2
ARM GAS  /tmp/cczatnhQ.s 			page 58


 2119 0b69 A2000000 		.4byte	0xa2
 2120 0b6d 01       		.uleb128 0x1
 2121 0b6e 52       		.byte	0x52
 2122 0b6f 28       		.uleb128 0x28
 2123 0b70 31080000 		.4byte	.LASF168
 2124 0b74 01       		.byte	0x1
 2125 0b75 A201     		.2byte	0x1a2
 2126 0b77 A2000000 		.4byte	0xa2
 2127 0b7b 63000000 		.4byte	.LLST28
 2128 0b7f 00       		.byte	0
 2129 0b80 27       		.uleb128 0x27
 2130 0b81 A6040000 		.4byte	.LASF170
 2131 0b85 01       		.byte	0x1
 2132 0b86 8B01     		.2byte	0x18b
 2133 0b88 AD000000 		.4byte	0xad
 2134 0b8c 00000000 		.4byte	.LFB207
 2135 0b90 20000000 		.4byte	.LFE207-.LFB207
 2136 0b94 01       		.uleb128 0x1
 2137 0b95 9C       		.byte	0x9c
 2138 0b96 CB0B0000 		.4byte	0xbcb
 2139 0b9a 28       		.uleb128 0x28
 2140 0b9b 5C050000 		.4byte	.LASF162
 2141 0b9f 01       		.byte	0x1
 2142 0ba0 8B01     		.2byte	0x18b
 2143 0ba2 F20A0000 		.4byte	0xaf2
 2144 0ba6 84000000 		.4byte	.LLST23
 2145 0baa 28       		.uleb128 0x28
 2146 0bab BE010000 		.4byte	.LASF166
 2147 0baf 01       		.byte	0x1
 2148 0bb0 8B01     		.2byte	0x18b
 2149 0bb2 D3000000 		.4byte	0xd3
 2150 0bb6 BE000000 		.4byte	.LLST24
 2151 0bba 28       		.uleb128 0x28
 2152 0bbb 2F020000 		.4byte	.LASF171
 2153 0bbf 01       		.byte	0x1
 2154 0bc0 8C01     		.2byte	0x18c
 2155 0bc2 A2000000 		.4byte	0xa2
 2156 0bc6 EA000000 		.4byte	.LLST25
 2157 0bca 00       		.byte	0
 2158 0bcb 27       		.uleb128 0x27
 2159 0bcc 93090000 		.4byte	.LASF172
 2160 0bd0 01       		.byte	0x1
 2161 0bd1 7401     		.2byte	0x174
 2162 0bd3 AD000000 		.4byte	0xad
 2163 0bd7 00000000 		.4byte	.LFB206
 2164 0bdb 16000000 		.4byte	.LFE206-.LFB206
 2165 0bdf 01       		.uleb128 0x1
 2166 0be0 9C       		.byte	0x9c
 2167 0be1 160C0000 		.4byte	0xc16
 2168 0be5 28       		.uleb128 0x28
 2169 0be6 7E010000 		.4byte	.LASF173
 2170 0bea 01       		.byte	0x1
 2171 0beb 7401     		.2byte	0x174
 2172 0bed E8000000 		.4byte	0xe8
 2173 0bf1 16010000 		.4byte	.LLST20
 2174 0bf5 2B       		.uleb128 0x2b
 2175 0bf6 6D636B00 		.ascii	"mck\000"
ARM GAS  /tmp/cczatnhQ.s 			page 59


 2176 0bfa 01       		.byte	0x1
 2177 0bfb 7401     		.2byte	0x174
 2178 0bfd D3000000 		.4byte	0xd3
 2179 0c01 44010000 		.4byte	.LLST21
 2180 0c05 2C       		.uleb128 0x2c
 2181 0c06 EB020000 		.4byte	.LASF174
 2182 0c0a 01       		.byte	0x1
 2183 0c0b 7601     		.2byte	0x176
 2184 0c0d 25000000 		.4byte	0x25
 2185 0c11 65010000 		.4byte	.LLST22
 2186 0c15 00       		.byte	0
 2187 0c16 29       		.uleb128 0x29
 2188 0c17 F4080000 		.4byte	.LASF175
 2189 0c1b 01       		.byte	0x1
 2190 0c1c 6301     		.2byte	0x163
 2191 0c1e 00000000 		.4byte	.LFB205
 2192 0c22 14000000 		.4byte	.LFE205-.LFB205
 2193 0c26 01       		.uleb128 0x1
 2194 0c27 9C       		.byte	0x9c
 2195 0c28 5B0C0000 		.4byte	0xc5b
 2196 0c2c 2A       		.uleb128 0x2a
 2197 0c2d 5C050000 		.4byte	.LASF162
 2198 0c31 01       		.byte	0x1
 2199 0c32 6301     		.2byte	0x163
 2200 0c34 F20A0000 		.4byte	0xaf2
 2201 0c38 01       		.uleb128 0x1
 2202 0c39 50       		.byte	0x50
 2203 0c3a 28       		.uleb128 0x28
 2204 0c3b BE010000 		.4byte	.LASF166
 2205 0c3f 01       		.byte	0x1
 2206 0c40 6301     		.2byte	0x163
 2207 0c42 D3000000 		.4byte	0xd3
 2208 0c46 85010000 		.4byte	.LLST18
 2209 0c4a 28       		.uleb128 0x28
 2210 0c4b 28000000 		.4byte	.LASF176
 2211 0c4f 01       		.byte	0x1
 2212 0c50 6401     		.2byte	0x164
 2213 0c52 D3000000 		.4byte	0xd3
 2214 0c56 A6010000 		.4byte	.LLST19
 2215 0c5a 00       		.byte	0
 2216 0c5b 29       		.uleb128 0x29
 2217 0c5c 94000000 		.4byte	.LASF177
 2218 0c60 01       		.byte	0x1
 2219 0c61 4D01     		.2byte	0x14d
 2220 0c63 00000000 		.4byte	.LFB204
 2221 0c67 44000000 		.4byte	.LFE204-.LFB204
 2222 0c6b 01       		.uleb128 0x1
 2223 0c6c 9C       		.byte	0x9c
 2224 0c6d 9E0C0000 		.4byte	0xc9e
 2225 0c71 28       		.uleb128 0x28
 2226 0c72 5C050000 		.4byte	.LASF162
 2227 0c76 01       		.byte	0x1
 2228 0c77 4D01     		.2byte	0x14d
 2229 0c79 F20A0000 		.4byte	0xaf2
 2230 0c7d C7010000 		.4byte	.LLST17
 2231 0c81 2A       		.uleb128 0x2a
 2232 0c82 BE010000 		.4byte	.LASF166
ARM GAS  /tmp/cczatnhQ.s 			page 60


 2233 0c86 01       		.byte	0x1
 2234 0c87 4D01     		.2byte	0x14d
 2235 0c89 D3000000 		.4byte	0xd3
 2236 0c8d 01       		.uleb128 0x1
 2237 0c8e 51       		.byte	0x51
 2238 0c8f 2A       		.uleb128 0x2a
 2239 0c90 AE070000 		.4byte	.LASF178
 2240 0c94 01       		.byte	0x1
 2241 0c95 4E01     		.2byte	0x14e
 2242 0c97 D3000000 		.4byte	0xd3
 2243 0c9b 01       		.uleb128 0x1
 2244 0c9c 52       		.byte	0x52
 2245 0c9d 00       		.byte	0
 2246 0c9e 29       		.uleb128 0x29
 2247 0c9f 60090000 		.4byte	.LASF179
 2248 0ca3 01       		.byte	0x1
 2249 0ca4 3D01     		.2byte	0x13d
 2250 0ca6 00000000 		.4byte	.LFB203
 2251 0caa 18000000 		.4byte	.LFE203-.LFB203
 2252 0cae 01       		.uleb128 0x1
 2253 0caf 9C       		.byte	0x9c
 2254 0cb0 E10C0000 		.4byte	0xce1
 2255 0cb4 28       		.uleb128 0x28
 2256 0cb5 5C050000 		.4byte	.LASF162
 2257 0cb9 01       		.byte	0x1
 2258 0cba 3D01     		.2byte	0x13d
 2259 0cbc F20A0000 		.4byte	0xaf2
 2260 0cc0 1A020000 		.4byte	.LLST16
 2261 0cc4 2A       		.uleb128 0x2a
 2262 0cc5 BE010000 		.4byte	.LASF166
 2263 0cc9 01       		.byte	0x1
 2264 0cca 3D01     		.2byte	0x13d
 2265 0ccc D3000000 		.4byte	0xd3
 2266 0cd0 01       		.uleb128 0x1
 2267 0cd1 51       		.byte	0x51
 2268 0cd2 2A       		.uleb128 0x2a
 2269 0cd3 5C010000 		.4byte	.LASF180
 2270 0cd7 01       		.byte	0x1
 2271 0cd8 3D01     		.2byte	0x13d
 2272 0cda D3000000 		.4byte	0xd3
 2273 0cde 01       		.uleb128 0x1
 2274 0cdf 52       		.byte	0x52
 2275 0ce0 00       		.byte	0
 2276 0ce1 29       		.uleb128 0x29
 2277 0ce2 59070000 		.4byte	.LASF181
 2278 0ce6 01       		.byte	0x1
 2279 0ce7 2C01     		.2byte	0x12c
 2280 0ce9 00000000 		.4byte	.LFB202
 2281 0ced 18000000 		.4byte	.LFE202-.LFB202
 2282 0cf1 01       		.uleb128 0x1
 2283 0cf2 9C       		.byte	0x9c
 2284 0cf3 240D0000 		.4byte	0xd24
 2285 0cf7 28       		.uleb128 0x28
 2286 0cf8 5C050000 		.4byte	.LASF162
 2287 0cfc 01       		.byte	0x1
 2288 0cfd 2C01     		.2byte	0x12c
 2289 0cff F20A0000 		.4byte	0xaf2
ARM GAS  /tmp/cczatnhQ.s 			page 61


 2290 0d03 3B020000 		.4byte	.LLST15
 2291 0d07 2A       		.uleb128 0x2a
 2292 0d08 BE010000 		.4byte	.LASF166
 2293 0d0c 01       		.byte	0x1
 2294 0d0d 2C01     		.2byte	0x12c
 2295 0d0f D3000000 		.4byte	0xd3
 2296 0d13 01       		.uleb128 0x1
 2297 0d14 51       		.byte	0x51
 2298 0d15 2A       		.uleb128 0x2a
 2299 0d16 52000000 		.4byte	.LASF182
 2300 0d1a 01       		.byte	0x1
 2301 0d1b 2D01     		.2byte	0x12d
 2302 0d1d D3000000 		.4byte	0xd3
 2303 0d21 01       		.uleb128 0x1
 2304 0d22 52       		.byte	0x52
 2305 0d23 00       		.byte	0
 2306 0d24 27       		.uleb128 0x27
 2307 0d25 52060000 		.4byte	.LASF183
 2308 0d29 01       		.byte	0x1
 2309 0d2a 0B01     		.2byte	0x10b
 2310 0d2c 990A0000 		.4byte	0xa99
 2311 0d30 00000000 		.4byte	.LFB201
 2312 0d34 34000000 		.4byte	.LFE201-.LFB201
 2313 0d38 01       		.uleb128 0x1
 2314 0d39 9C       		.byte	0x9c
 2315 0d3a B70D0000 		.4byte	0xdb7
 2316 0d3e 28       		.uleb128 0x28
 2317 0d3f 5C050000 		.4byte	.LASF162
 2318 0d43 01       		.byte	0x1
 2319 0d44 0B01     		.2byte	0x10b
 2320 0d46 F20A0000 		.4byte	0xaf2
 2321 0d4a 5C020000 		.4byte	.LLST9
 2322 0d4e 28       		.uleb128 0x28
 2323 0d4f B8060000 		.4byte	.LASF184
 2324 0d53 01       		.byte	0x1
 2325 0d54 0B01     		.2byte	0x10b
 2326 0d56 B8000000 		.4byte	0xb8
 2327 0d5a 96020000 		.4byte	.LLST10
 2328 0d5e 28       		.uleb128 0x28
 2329 0d5f E5090000 		.4byte	.LASF185
 2330 0d63 01       		.byte	0x1
 2331 0d64 0C01     		.2byte	0x10c
 2332 0d66 A2000000 		.4byte	0xa2
 2333 0d6a C2020000 		.4byte	.LLST11
 2334 0d6e 2A       		.uleb128 0x2a
 2335 0d6f 63020000 		.4byte	.LASF186
 2336 0d73 01       		.byte	0x1
 2337 0d74 0C01     		.2byte	0x10c
 2338 0d76 A2000000 		.4byte	0xa2
 2339 0d7a 01       		.uleb128 0x1
 2340 0d7b 53       		.byte	0x53
 2341 0d7c 2C       		.uleb128 0x2c
 2342 0d7d 55030000 		.4byte	.LASF187
 2343 0d81 01       		.byte	0x1
 2344 0d82 0E01     		.2byte	0x10e
 2345 0d84 D3000000 		.4byte	0xd3
 2346 0d88 EE020000 		.4byte	.LLST12
ARM GAS  /tmp/cczatnhQ.s 			page 62


 2347 0d8c 2C       		.uleb128 0x2c
 2348 0d8d 22000000 		.4byte	.LASF188
 2349 0d91 01       		.byte	0x1
 2350 0d92 0F01     		.2byte	0x10f
 2351 0d94 D3000000 		.4byte	0xd3
 2352 0d98 34030000 		.4byte	.LLST13
 2353 0d9c 2D       		.uleb128 0x2d
 2354 0d9d BF0F0000 		.4byte	0xfbf
 2355 0da1 12000000 		.4byte	.LBB24
 2356 0da5 06000000 		.4byte	.LBE24-.LBB24
 2357 0da9 01       		.byte	0x1
 2358 0daa 1701     		.2byte	0x117
 2359 0dac 2E       		.uleb128 0x2e
 2360 0dad CF0F0000 		.4byte	0xfcf
 2361 0db1 47030000 		.4byte	.LLST14
 2362 0db5 00       		.byte	0
 2363 0db6 00       		.byte	0
 2364 0db7 2F       		.uleb128 0x2f
 2365 0db8 FE050000 		.4byte	.LASF189
 2366 0dbc 01       		.byte	0x1
 2367 0dbd EA       		.byte	0xea
 2368 0dbe 990A0000 		.4byte	0xa99
 2369 0dc2 00000000 		.4byte	.LFB200
 2370 0dc6 34000000 		.4byte	.LFE200-.LFB200
 2371 0dca 01       		.uleb128 0x1
 2372 0dcb 9C       		.byte	0x9c
 2373 0dcc 2D0E0000 		.4byte	0xe2d
 2374 0dd0 30       		.uleb128 0x30
 2375 0dd1 5C050000 		.4byte	.LASF162
 2376 0dd5 01       		.byte	0x1
 2377 0dd6 EA       		.byte	0xea
 2378 0dd7 F20A0000 		.4byte	0xaf2
 2379 0ddb 5A030000 		.4byte	.LLST6
 2380 0ddf 31       		.uleb128 0x31
 2381 0de0 B8060000 		.4byte	.LASF184
 2382 0de4 01       		.byte	0x1
 2383 0de5 EA       		.byte	0xea
 2384 0de6 2D0E0000 		.4byte	0xe2d
 2385 0dea 01       		.uleb128 0x1
 2386 0deb 51       		.byte	0x51
 2387 0dec 31       		.uleb128 0x31
 2388 0ded 99030000 		.4byte	.LASF190
 2389 0df1 01       		.byte	0x1
 2390 0df2 EA       		.byte	0xea
 2391 0df3 330E0000 		.4byte	0xe33
 2392 0df7 01       		.uleb128 0x1
 2393 0df8 52       		.byte	0x52
 2394 0df9 32       		.uleb128 0x32
 2395 0dfa 55030000 		.4byte	.LASF187
 2396 0dfe 01       		.byte	0x1
 2397 0dff EC       		.byte	0xec
 2398 0e00 D3000000 		.4byte	0xd3
 2399 0e04 94030000 		.4byte	.LLST7
 2400 0e08 33       		.uleb128 0x33
 2401 0e09 C7020000 		.4byte	.LASF206
 2402 0e0d 01       		.byte	0x1
 2403 0e0e ED       		.byte	0xed
ARM GAS  /tmp/cczatnhQ.s 			page 63


 2404 0e0f D3000000 		.4byte	0xd3
 2405 0e13 34       		.uleb128 0x34
 2406 0e14 BF0F0000 		.4byte	0xfbf
 2407 0e18 14000000 		.4byte	.LBB22
 2408 0e1c 06000000 		.4byte	.LBE22-.LBB22
 2409 0e20 01       		.byte	0x1
 2410 0e21 F6       		.byte	0xf6
 2411 0e22 2E       		.uleb128 0x2e
 2412 0e23 CF0F0000 		.4byte	0xfcf
 2413 0e27 DA030000 		.4byte	.LLST8
 2414 0e2b 00       		.byte	0
 2415 0e2c 00       		.byte	0
 2416 0e2d 14       		.uleb128 0x14
 2417 0e2e 04       		.byte	0x4
 2418 0e2f B8000000 		.4byte	0xb8
 2419 0e33 14       		.uleb128 0x14
 2420 0e34 04       		.byte	0x4
 2421 0e35 A2000000 		.4byte	0xa2
 2422 0e39 35       		.uleb128 0x35
 2423 0e3a F3090000 		.4byte	.LASF191
 2424 0e3e 01       		.byte	0x1
 2425 0e3f D8       		.byte	0xd8
 2426 0e40 00000000 		.4byte	.LFB199
 2427 0e44 12000000 		.4byte	.LFE199-.LFB199
 2428 0e48 01       		.uleb128 0x1
 2429 0e49 9C       		.byte	0x9c
 2430 0e4a 6B0E0000 		.4byte	0xe6b
 2431 0e4e 31       		.uleb128 0x31
 2432 0e4f 5C050000 		.4byte	.LASF162
 2433 0e53 01       		.byte	0x1
 2434 0e54 D8       		.byte	0xd8
 2435 0e55 F20A0000 		.4byte	0xaf2
 2436 0e59 01       		.uleb128 0x1
 2437 0e5a 50       		.byte	0x50
 2438 0e5b 30       		.uleb128 0x30
 2439 0e5c 91010000 		.4byte	.LASF192
 2440 0e60 01       		.byte	0x1
 2441 0e61 D8       		.byte	0xd8
 2442 0e62 D3000000 		.4byte	0xd3
 2443 0e66 FB030000 		.4byte	.LLST5
 2444 0e6a 00       		.byte	0
 2445 0e6b 35       		.uleb128 0x35
 2446 0e6c EE000000 		.4byte	.LASF193
 2447 0e70 01       		.byte	0x1
 2448 0e71 CB       		.byte	0xcb
 2449 0e72 00000000 		.4byte	.LFB198
 2450 0e76 16000000 		.4byte	.LFE198-.LFB198
 2451 0e7a 01       		.uleb128 0x1
 2452 0e7b 9C       		.byte	0x9c
 2453 0e7c 9D0E0000 		.4byte	0xe9d
 2454 0e80 31       		.uleb128 0x31
 2455 0e81 5C050000 		.4byte	.LASF162
 2456 0e85 01       		.byte	0x1
 2457 0e86 CB       		.byte	0xcb
 2458 0e87 F20A0000 		.4byte	0xaf2
 2459 0e8b 01       		.uleb128 0x1
 2460 0e8c 50       		.byte	0x50
ARM GAS  /tmp/cczatnhQ.s 			page 64


 2461 0e8d 30       		.uleb128 0x30
 2462 0e8e 81040000 		.4byte	.LASF194
 2463 0e92 01       		.byte	0x1
 2464 0e93 CB       		.byte	0xcb
 2465 0e94 D3000000 		.4byte	0xd3
 2466 0e98 1C040000 		.4byte	.LLST4
 2467 0e9c 00       		.byte	0
 2468 0e9d 35       		.uleb128 0x35
 2469 0e9e 74030000 		.4byte	.LASF195
 2470 0ea2 01       		.byte	0x1
 2471 0ea3 85       		.byte	0x85
 2472 0ea4 00000000 		.4byte	.LFB197
 2473 0ea8 24000000 		.4byte	.LFE197-.LFB197
 2474 0eac 01       		.uleb128 0x1
 2475 0ead 9C       		.byte	0x9c
 2476 0eae 140F0000 		.4byte	0xf14
 2477 0eb2 30       		.uleb128 0x30
 2478 0eb3 5C050000 		.4byte	.LASF162
 2479 0eb7 01       		.byte	0x1
 2480 0eb8 85       		.byte	0x85
 2481 0eb9 F20A0000 		.4byte	0xaf2
 2482 0ebd 3D040000 		.4byte	.LLST2
 2483 0ec1 36       		.uleb128 0x36
 2484 0ec2 8B0F0000 		.4byte	0xf8b
 2485 0ec6 0E000000 		.4byte	.LBB18
 2486 0eca 06000000 		.4byte	.LBE18-.LBB18
 2487 0ece 01       		.byte	0x1
 2488 0ecf 90       		.byte	0x90
 2489 0ed0 EE0E0000 		.4byte	0xeee
 2490 0ed4 2E       		.uleb128 0x2e
 2491 0ed5 980F0000 		.4byte	0xf98
 2492 0ed9 77040000 		.4byte	.LLST3
 2493 0edd 37       		.uleb128 0x37
 2494 0ede 14000000 		.4byte	.LVL9
 2495 0ee2 DB0F0000 		.4byte	0xfdb
 2496 0ee6 38       		.uleb128 0x38
 2497 0ee7 01       		.uleb128 0x1
 2498 0ee8 50       		.byte	0x50
 2499 0ee9 02       		.uleb128 0x2
 2500 0eea 08       		.byte	0x8
 2501 0eeb 2A       		.byte	0x2a
 2502 0eec 00       		.byte	0
 2503 0eed 00       		.byte	0
 2504 0eee 34       		.uleb128 0x34
 2505 0eef 8B0F0000 		.4byte	0xf8b
 2506 0ef3 14000000 		.4byte	.LBB20
 2507 0ef7 10000000 		.4byte	.LBE20-.LBB20
 2508 0efb 01       		.byte	0x1
 2509 0efc 8C       		.byte	0x8c
 2510 0efd 39       		.uleb128 0x39
 2511 0efe 980F0000 		.4byte	0xf98
 2512 0f02 15       		.byte	0x15
 2513 0f03 37       		.uleb128 0x37
 2514 0f04 1A000000 		.4byte	.LVL11
 2515 0f08 DB0F0000 		.4byte	0xfdb
 2516 0f0c 38       		.uleb128 0x38
 2517 0f0d 01       		.uleb128 0x1
ARM GAS  /tmp/cczatnhQ.s 			page 65


 2518 0f0e 50       		.byte	0x50
 2519 0f0f 01       		.uleb128 0x1
 2520 0f10 45       		.byte	0x45
 2521 0f11 00       		.byte	0
 2522 0f12 00       		.byte	0
 2523 0f13 00       		.byte	0
 2524 0f14 35       		.uleb128 0x35
 2525 0f15 CD080000 		.4byte	.LASF196
 2526 0f19 01       		.byte	0x1
 2527 0f1a 46       		.byte	0x46
 2528 0f1b 00000000 		.4byte	.LFB196
 2529 0f1f 24000000 		.4byte	.LFE196-.LFB196
 2530 0f23 01       		.uleb128 0x1
 2531 0f24 9C       		.byte	0x9c
 2532 0f25 8B0F0000 		.4byte	0xf8b
 2533 0f29 30       		.uleb128 0x30
 2534 0f2a 5C050000 		.4byte	.LASF162
 2535 0f2e 01       		.byte	0x1
 2536 0f2f 46       		.byte	0x46
 2537 0f30 F20A0000 		.4byte	0xaf2
 2538 0f34 8C040000 		.4byte	.LLST0
 2539 0f38 36       		.uleb128 0x36
 2540 0f39 A50F0000 		.4byte	0xfa5
 2541 0f3d 0E000000 		.4byte	.LBB14
 2542 0f41 06000000 		.4byte	.LBE14-.LBB14
 2543 0f45 01       		.byte	0x1
 2544 0f46 51       		.byte	0x51
 2545 0f47 650F0000 		.4byte	0xf65
 2546 0f4b 2E       		.uleb128 0x2e
 2547 0f4c B20F0000 		.4byte	0xfb2
 2548 0f50 C6040000 		.4byte	.LLST1
 2549 0f54 37       		.uleb128 0x37
 2550 0f55 14000000 		.4byte	.LVL3
 2551 0f59 E60F0000 		.4byte	0xfe6
 2552 0f5d 38       		.uleb128 0x38
 2553 0f5e 01       		.uleb128 0x1
 2554 0f5f 50       		.byte	0x50
 2555 0f60 02       		.uleb128 0x2
 2556 0f61 08       		.byte	0x8
 2557 0f62 2A       		.byte	0x2a
 2558 0f63 00       		.byte	0
 2559 0f64 00       		.byte	0
 2560 0f65 34       		.uleb128 0x34
 2561 0f66 A50F0000 		.4byte	0xfa5
 2562 0f6a 14000000 		.4byte	.LBB16
 2563 0f6e 10000000 		.4byte	.LBE16-.LBB16
 2564 0f72 01       		.byte	0x1
 2565 0f73 4D       		.byte	0x4d
 2566 0f74 39       		.uleb128 0x39
 2567 0f75 B20F0000 		.4byte	0xfb2
 2568 0f79 15       		.byte	0x15
 2569 0f7a 37       		.uleb128 0x37
 2570 0f7b 1A000000 		.4byte	.LVL5
 2571 0f7f E60F0000 		.4byte	0xfe6
 2572 0f83 38       		.uleb128 0x38
 2573 0f84 01       		.uleb128 0x1
 2574 0f85 50       		.byte	0x50
ARM GAS  /tmp/cczatnhQ.s 			page 66


 2575 0f86 01       		.uleb128 0x1
 2576 0f87 45       		.byte	0x45
 2577 0f88 00       		.byte	0
 2578 0f89 00       		.byte	0
 2579 0f8a 00       		.byte	0
 2580 0f8b 3A       		.uleb128 0x3a
 2581 0f8c BA050000 		.4byte	.LASF197
 2582 0f90 02       		.byte	0x2
 2583 0f91 BB01     		.2byte	0x1bb
 2584 0f93 03       		.byte	0x3
 2585 0f94 A50F0000 		.4byte	0xfa5
 2586 0f98 3B       		.uleb128 0x3b
 2587 0f99 82020000 		.4byte	.LASF199
 2588 0f9d 02       		.byte	0x2
 2589 0f9e BB01     		.2byte	0x1bb
 2590 0fa0 D3000000 		.4byte	0xd3
 2591 0fa4 00       		.byte	0
 2592 0fa5 3A       		.uleb128 0x3a
 2593 0fa6 19060000 		.4byte	.LASF198
 2594 0faa 02       		.byte	0x2
 2595 0fab B101     		.2byte	0x1b1
 2596 0fad 03       		.byte	0x3
 2597 0fae BF0F0000 		.4byte	0xfbf
 2598 0fb2 3B       		.uleb128 0x3b
 2599 0fb3 82020000 		.4byte	.LASF199
 2600 0fb7 02       		.byte	0x2
 2601 0fb8 B101     		.2byte	0x1b1
 2602 0fba D3000000 		.4byte	0xd3
 2603 0fbe 00       		.byte	0
 2604 0fbf 3C       		.uleb128 0x3c
 2605 0fc0 F3060000 		.4byte	.LASF207
 2606 0fc4 03       		.byte	0x3
 2607 0fc5 CA       		.byte	0xca
 2608 0fc6 D3000000 		.4byte	0xd3
 2609 0fca 03       		.byte	0x3
 2610 0fcb DB0F0000 		.4byte	0xfdb
 2611 0fcf 3D       		.uleb128 0x3d
 2612 0fd0 5C050000 		.4byte	.LASF162
 2613 0fd4 03       		.byte	0x3
 2614 0fd5 CA       		.byte	0xca
 2615 0fd6 F20A0000 		.4byte	0xaf2
 2616 0fda 00       		.byte	0
 2617 0fdb 3E       		.uleb128 0x3e
 2618 0fdc F1010000 		.4byte	.LASF200
 2619 0fe0 F1010000 		.4byte	.LASF200
 2620 0fe4 0F       		.byte	0xf
 2621 0fe5 DC       		.byte	0xdc
 2622 0fe6 3E       		.uleb128 0x3e
 2623 0fe7 08080000 		.4byte	.LASF201
 2624 0feb 08080000 		.4byte	.LASF201
 2625 0fef 0F       		.byte	0xf
 2626 0ff0 DB       		.byte	0xdb
 2627 0ff1 00       		.byte	0
 2628              		.section	.debug_abbrev,"",%progbits
 2629              	.Ldebug_abbrev0:
 2630 0000 01       		.uleb128 0x1
 2631 0001 11       		.uleb128 0x11
ARM GAS  /tmp/cczatnhQ.s 			page 67


 2632 0002 01       		.byte	0x1
 2633 0003 25       		.uleb128 0x25
 2634 0004 0E       		.uleb128 0xe
 2635 0005 13       		.uleb128 0x13
 2636 0006 0B       		.uleb128 0xb
 2637 0007 03       		.uleb128 0x3
 2638 0008 0E       		.uleb128 0xe
 2639 0009 1B       		.uleb128 0x1b
 2640 000a 0E       		.uleb128 0xe
 2641 000b 55       		.uleb128 0x55
 2642 000c 17       		.uleb128 0x17
 2643 000d 11       		.uleb128 0x11
 2644 000e 01       		.uleb128 0x1
 2645 000f 10       		.uleb128 0x10
 2646 0010 17       		.uleb128 0x17
 2647 0011 00       		.byte	0
 2648 0012 00       		.byte	0
 2649 0013 02       		.uleb128 0x2
 2650 0014 24       		.uleb128 0x24
 2651 0015 00       		.byte	0
 2652 0016 0B       		.uleb128 0xb
 2653 0017 0B       		.uleb128 0xb
 2654 0018 3E       		.uleb128 0x3e
 2655 0019 0B       		.uleb128 0xb
 2656 001a 03       		.uleb128 0x3
 2657 001b 08       		.uleb128 0x8
 2658 001c 00       		.byte	0
 2659 001d 00       		.byte	0
 2660 001e 03       		.uleb128 0x3
 2661 001f 24       		.uleb128 0x24
 2662 0020 00       		.byte	0
 2663 0021 0B       		.uleb128 0xb
 2664 0022 0B       		.uleb128 0xb
 2665 0023 3E       		.uleb128 0x3e
 2666 0024 0B       		.uleb128 0xb
 2667 0025 03       		.uleb128 0x3
 2668 0026 0E       		.uleb128 0xe
 2669 0027 00       		.byte	0
 2670 0028 00       		.byte	0
 2671 0029 04       		.uleb128 0x4
 2672 002a 16       		.uleb128 0x16
 2673 002b 00       		.byte	0
 2674 002c 03       		.uleb128 0x3
 2675 002d 0E       		.uleb128 0xe
 2676 002e 3A       		.uleb128 0x3a
 2677 002f 0B       		.uleb128 0xb
 2678 0030 3B       		.uleb128 0x3b
 2679 0031 0B       		.uleb128 0xb
 2680 0032 49       		.uleb128 0x49
 2681 0033 13       		.uleb128 0x13
 2682 0034 00       		.byte	0
 2683 0035 00       		.byte	0
 2684 0036 05       		.uleb128 0x5
 2685 0037 35       		.uleb128 0x35
 2686 0038 00       		.byte	0
 2687 0039 49       		.uleb128 0x49
 2688 003a 13       		.uleb128 0x13
ARM GAS  /tmp/cczatnhQ.s 			page 68


 2689 003b 00       		.byte	0
 2690 003c 00       		.byte	0
 2691 003d 06       		.uleb128 0x6
 2692 003e 26       		.uleb128 0x26
 2693 003f 00       		.byte	0
 2694 0040 49       		.uleb128 0x49
 2695 0041 13       		.uleb128 0x13
 2696 0042 00       		.byte	0
 2697 0043 00       		.byte	0
 2698 0044 07       		.uleb128 0x7
 2699 0045 0F       		.uleb128 0xf
 2700 0046 00       		.byte	0
 2701 0047 0B       		.uleb128 0xb
 2702 0048 0B       		.uleb128 0xb
 2703 0049 00       		.byte	0
 2704 004a 00       		.byte	0
 2705 004b 08       		.uleb128 0x8
 2706 004c 01       		.uleb128 0x1
 2707 004d 01       		.byte	0x1
 2708 004e 49       		.uleb128 0x49
 2709 004f 13       		.uleb128 0x13
 2710 0050 01       		.uleb128 0x1
 2711 0051 13       		.uleb128 0x13
 2712 0052 00       		.byte	0
 2713 0053 00       		.byte	0
 2714 0054 09       		.uleb128 0x9
 2715 0055 21       		.uleb128 0x21
 2716 0056 00       		.byte	0
 2717 0057 49       		.uleb128 0x49
 2718 0058 13       		.uleb128 0x13
 2719 0059 2F       		.uleb128 0x2f
 2720 005a 0B       		.uleb128 0xb
 2721 005b 00       		.byte	0
 2722 005c 00       		.byte	0
 2723 005d 0A       		.uleb128 0xa
 2724 005e 34       		.uleb128 0x34
 2725 005f 00       		.byte	0
 2726 0060 03       		.uleb128 0x3
 2727 0061 0E       		.uleb128 0xe
 2728 0062 3A       		.uleb128 0x3a
 2729 0063 0B       		.uleb128 0xb
 2730 0064 3B       		.uleb128 0x3b
 2731 0065 05       		.uleb128 0x5
 2732 0066 49       		.uleb128 0x49
 2733 0067 13       		.uleb128 0x13
 2734 0068 3F       		.uleb128 0x3f
 2735 0069 19       		.uleb128 0x19
 2736 006a 3C       		.uleb128 0x3c
 2737 006b 19       		.uleb128 0x19
 2738 006c 00       		.byte	0
 2739 006d 00       		.byte	0
 2740 006e 0B       		.uleb128 0xb
 2741 006f 34       		.uleb128 0x34
 2742 0070 00       		.byte	0
 2743 0071 03       		.uleb128 0x3
 2744 0072 0E       		.uleb128 0xe
 2745 0073 3A       		.uleb128 0x3a
ARM GAS  /tmp/cczatnhQ.s 			page 69


 2746 0074 0B       		.uleb128 0xb
 2747 0075 3B       		.uleb128 0x3b
 2748 0076 0B       		.uleb128 0xb
 2749 0077 49       		.uleb128 0x49
 2750 0078 13       		.uleb128 0x13
 2751 0079 3F       		.uleb128 0x3f
 2752 007a 19       		.uleb128 0x19
 2753 007b 3C       		.uleb128 0x3c
 2754 007c 19       		.uleb128 0x19
 2755 007d 00       		.byte	0
 2756 007e 00       		.byte	0
 2757 007f 0C       		.uleb128 0xc
 2758 0080 13       		.uleb128 0x13
 2759 0081 01       		.byte	0x1
 2760 0082 0B       		.uleb128 0xb
 2761 0083 0B       		.uleb128 0xb
 2762 0084 3A       		.uleb128 0x3a
 2763 0085 0B       		.uleb128 0xb
 2764 0086 3B       		.uleb128 0x3b
 2765 0087 0B       		.uleb128 0xb
 2766 0088 01       		.uleb128 0x1
 2767 0089 13       		.uleb128 0x13
 2768 008a 00       		.byte	0
 2769 008b 00       		.byte	0
 2770 008c 0D       		.uleb128 0xd
 2771 008d 0D       		.uleb128 0xd
 2772 008e 00       		.byte	0
 2773 008f 03       		.uleb128 0x3
 2774 0090 0E       		.uleb128 0xe
 2775 0091 3A       		.uleb128 0x3a
 2776 0092 0B       		.uleb128 0xb
 2777 0093 3B       		.uleb128 0x3b
 2778 0094 0B       		.uleb128 0xb
 2779 0095 49       		.uleb128 0x49
 2780 0096 13       		.uleb128 0x13
 2781 0097 38       		.uleb128 0x38
 2782 0098 0B       		.uleb128 0xb
 2783 0099 00       		.byte	0
 2784 009a 00       		.byte	0
 2785 009b 0E       		.uleb128 0xe
 2786 009c 16       		.uleb128 0x16
 2787 009d 00       		.byte	0
 2788 009e 03       		.uleb128 0x3
 2789 009f 08       		.uleb128 0x8
 2790 00a0 3A       		.uleb128 0x3a
 2791 00a1 0B       		.uleb128 0xb
 2792 00a2 3B       		.uleb128 0x3b
 2793 00a3 0B       		.uleb128 0xb
 2794 00a4 49       		.uleb128 0x49
 2795 00a5 13       		.uleb128 0x13
 2796 00a6 00       		.byte	0
 2797 00a7 00       		.byte	0
 2798 00a8 0F       		.uleb128 0xf
 2799 00a9 16       		.uleb128 0x16
 2800 00aa 00       		.byte	0
 2801 00ab 03       		.uleb128 0x3
 2802 00ac 0E       		.uleb128 0xe
ARM GAS  /tmp/cczatnhQ.s 			page 70


 2803 00ad 3A       		.uleb128 0x3a
 2804 00ae 0B       		.uleb128 0xb
 2805 00af 3B       		.uleb128 0x3b
 2806 00b0 05       		.uleb128 0x5
 2807 00b1 49       		.uleb128 0x49
 2808 00b2 13       		.uleb128 0x13
 2809 00b3 00       		.byte	0
 2810 00b4 00       		.byte	0
 2811 00b5 10       		.uleb128 0x10
 2812 00b6 17       		.uleb128 0x17
 2813 00b7 01       		.byte	0x1
 2814 00b8 0B       		.uleb128 0xb
 2815 00b9 0B       		.uleb128 0xb
 2816 00ba 3A       		.uleb128 0x3a
 2817 00bb 0B       		.uleb128 0xb
 2818 00bc 3B       		.uleb128 0x3b
 2819 00bd 0B       		.uleb128 0xb
 2820 00be 01       		.uleb128 0x1
 2821 00bf 13       		.uleb128 0x13
 2822 00c0 00       		.byte	0
 2823 00c1 00       		.byte	0
 2824 00c2 11       		.uleb128 0x11
 2825 00c3 0D       		.uleb128 0xd
 2826 00c4 00       		.byte	0
 2827 00c5 03       		.uleb128 0x3
 2828 00c6 0E       		.uleb128 0xe
 2829 00c7 3A       		.uleb128 0x3a
 2830 00c8 0B       		.uleb128 0xb
 2831 00c9 3B       		.uleb128 0x3b
 2832 00ca 0B       		.uleb128 0xb
 2833 00cb 49       		.uleb128 0x49
 2834 00cc 13       		.uleb128 0x13
 2835 00cd 00       		.byte	0
 2836 00ce 00       		.byte	0
 2837 00cf 12       		.uleb128 0x12
 2838 00d0 13       		.uleb128 0x13
 2839 00d1 01       		.byte	0x1
 2840 00d2 03       		.uleb128 0x3
 2841 00d3 0E       		.uleb128 0xe
 2842 00d4 0B       		.uleb128 0xb
 2843 00d5 0B       		.uleb128 0xb
 2844 00d6 3A       		.uleb128 0x3a
 2845 00d7 0B       		.uleb128 0xb
 2846 00d8 3B       		.uleb128 0x3b
 2847 00d9 0B       		.uleb128 0xb
 2848 00da 01       		.uleb128 0x1
 2849 00db 13       		.uleb128 0x13
 2850 00dc 00       		.byte	0
 2851 00dd 00       		.byte	0
 2852 00de 13       		.uleb128 0x13
 2853 00df 0D       		.uleb128 0xd
 2854 00e0 00       		.byte	0
 2855 00e1 03       		.uleb128 0x3
 2856 00e2 08       		.uleb128 0x8
 2857 00e3 3A       		.uleb128 0x3a
 2858 00e4 0B       		.uleb128 0xb
 2859 00e5 3B       		.uleb128 0x3b
ARM GAS  /tmp/cczatnhQ.s 			page 71


 2860 00e6 0B       		.uleb128 0xb
 2861 00e7 49       		.uleb128 0x49
 2862 00e8 13       		.uleb128 0x13
 2863 00e9 38       		.uleb128 0x38
 2864 00ea 0B       		.uleb128 0xb
 2865 00eb 00       		.byte	0
 2866 00ec 00       		.byte	0
 2867 00ed 14       		.uleb128 0x14
 2868 00ee 0F       		.uleb128 0xf
 2869 00ef 00       		.byte	0
 2870 00f0 0B       		.uleb128 0xb
 2871 00f1 0B       		.uleb128 0xb
 2872 00f2 49       		.uleb128 0x49
 2873 00f3 13       		.uleb128 0x13
 2874 00f4 00       		.byte	0
 2875 00f5 00       		.byte	0
 2876 00f6 15       		.uleb128 0x15
 2877 00f7 13       		.uleb128 0x13
 2878 00f8 01       		.byte	0x1
 2879 00f9 03       		.uleb128 0x3
 2880 00fa 0E       		.uleb128 0xe
 2881 00fb 0B       		.uleb128 0xb
 2882 00fc 05       		.uleb128 0x5
 2883 00fd 3A       		.uleb128 0x3a
 2884 00fe 0B       		.uleb128 0xb
 2885 00ff 3B       		.uleb128 0x3b
 2886 0100 0B       		.uleb128 0xb
 2887 0101 01       		.uleb128 0x1
 2888 0102 13       		.uleb128 0x13
 2889 0103 00       		.byte	0
 2890 0104 00       		.byte	0
 2891 0105 16       		.uleb128 0x16
 2892 0106 0D       		.uleb128 0xd
 2893 0107 00       		.byte	0
 2894 0108 03       		.uleb128 0x3
 2895 0109 0E       		.uleb128 0xe
 2896 010a 3A       		.uleb128 0x3a
 2897 010b 0B       		.uleb128 0xb
 2898 010c 3B       		.uleb128 0x3b
 2899 010d 0B       		.uleb128 0xb
 2900 010e 49       		.uleb128 0x49
 2901 010f 13       		.uleb128 0x13
 2902 0110 38       		.uleb128 0x38
 2903 0111 05       		.uleb128 0x5
 2904 0112 00       		.byte	0
 2905 0113 00       		.byte	0
 2906 0114 17       		.uleb128 0x17
 2907 0115 15       		.uleb128 0x15
 2908 0116 00       		.byte	0
 2909 0117 27       		.uleb128 0x27
 2910 0118 19       		.uleb128 0x19
 2911 0119 00       		.byte	0
 2912 011a 00       		.byte	0
 2913 011b 18       		.uleb128 0x18
 2914 011c 15       		.uleb128 0x15
 2915 011d 01       		.byte	0x1
 2916 011e 27       		.uleb128 0x27
ARM GAS  /tmp/cczatnhQ.s 			page 72


 2917 011f 19       		.uleb128 0x19
 2918 0120 49       		.uleb128 0x49
 2919 0121 13       		.uleb128 0x13
 2920 0122 01       		.uleb128 0x1
 2921 0123 13       		.uleb128 0x13
 2922 0124 00       		.byte	0
 2923 0125 00       		.byte	0
 2924 0126 19       		.uleb128 0x19
 2925 0127 05       		.uleb128 0x5
 2926 0128 00       		.byte	0
 2927 0129 49       		.uleb128 0x49
 2928 012a 13       		.uleb128 0x13
 2929 012b 00       		.byte	0
 2930 012c 00       		.byte	0
 2931 012d 1A       		.uleb128 0x1a
 2932 012e 13       		.uleb128 0x13
 2933 012f 01       		.byte	0x1
 2934 0130 03       		.uleb128 0x3
 2935 0131 0E       		.uleb128 0xe
 2936 0132 0B       		.uleb128 0xb
 2937 0133 05       		.uleb128 0x5
 2938 0134 3A       		.uleb128 0x3a
 2939 0135 0B       		.uleb128 0xb
 2940 0136 3B       		.uleb128 0x3b
 2941 0137 05       		.uleb128 0x5
 2942 0138 01       		.uleb128 0x1
 2943 0139 13       		.uleb128 0x13
 2944 013a 00       		.byte	0
 2945 013b 00       		.byte	0
 2946 013c 1B       		.uleb128 0x1b
 2947 013d 0D       		.uleb128 0xd
 2948 013e 00       		.byte	0
 2949 013f 03       		.uleb128 0x3
 2950 0140 0E       		.uleb128 0xe
 2951 0141 3A       		.uleb128 0x3a
 2952 0142 0B       		.uleb128 0xb
 2953 0143 3B       		.uleb128 0x3b
 2954 0144 05       		.uleb128 0x5
 2955 0145 49       		.uleb128 0x49
 2956 0146 13       		.uleb128 0x13
 2957 0147 38       		.uleb128 0x38
 2958 0148 0B       		.uleb128 0xb
 2959 0149 00       		.byte	0
 2960 014a 00       		.byte	0
 2961 014b 1C       		.uleb128 0x1c
 2962 014c 0D       		.uleb128 0xd
 2963 014d 00       		.byte	0
 2964 014e 03       		.uleb128 0x3
 2965 014f 0E       		.uleb128 0xe
 2966 0150 3A       		.uleb128 0x3a
 2967 0151 0B       		.uleb128 0xb
 2968 0152 3B       		.uleb128 0x3b
 2969 0153 05       		.uleb128 0x5
 2970 0154 49       		.uleb128 0x49
 2971 0155 13       		.uleb128 0x13
 2972 0156 38       		.uleb128 0x38
 2973 0157 05       		.uleb128 0x5
ARM GAS  /tmp/cczatnhQ.s 			page 73


 2974 0158 00       		.byte	0
 2975 0159 00       		.byte	0
 2976 015a 1D       		.uleb128 0x1d
 2977 015b 13       		.uleb128 0x13
 2978 015c 01       		.byte	0x1
 2979 015d 03       		.uleb128 0x3
 2980 015e 0E       		.uleb128 0xe
 2981 015f 0B       		.uleb128 0xb
 2982 0160 0B       		.uleb128 0xb
 2983 0161 3A       		.uleb128 0x3a
 2984 0162 0B       		.uleb128 0xb
 2985 0163 3B       		.uleb128 0x3b
 2986 0164 05       		.uleb128 0x5
 2987 0165 01       		.uleb128 0x1
 2988 0166 13       		.uleb128 0x13
 2989 0167 00       		.byte	0
 2990 0168 00       		.byte	0
 2991 0169 1E       		.uleb128 0x1e
 2992 016a 13       		.uleb128 0x13
 2993 016b 01       		.byte	0x1
 2994 016c 0B       		.uleb128 0xb
 2995 016d 0B       		.uleb128 0xb
 2996 016e 3A       		.uleb128 0x3a
 2997 016f 0B       		.uleb128 0xb
 2998 0170 3B       		.uleb128 0x3b
 2999 0171 05       		.uleb128 0x5
 3000 0172 01       		.uleb128 0x1
 3001 0173 13       		.uleb128 0x13
 3002 0174 00       		.byte	0
 3003 0175 00       		.byte	0
 3004 0176 1F       		.uleb128 0x1f
 3005 0177 17       		.uleb128 0x17
 3006 0178 01       		.byte	0x1
 3007 0179 0B       		.uleb128 0xb
 3008 017a 0B       		.uleb128 0xb
 3009 017b 3A       		.uleb128 0x3a
 3010 017c 0B       		.uleb128 0xb
 3011 017d 3B       		.uleb128 0x3b
 3012 017e 05       		.uleb128 0x5
 3013 017f 01       		.uleb128 0x1
 3014 0180 13       		.uleb128 0x13
 3015 0181 00       		.byte	0
 3016 0182 00       		.byte	0
 3017 0183 20       		.uleb128 0x20
 3018 0184 0D       		.uleb128 0xd
 3019 0185 00       		.byte	0
 3020 0186 03       		.uleb128 0x3
 3021 0187 0E       		.uleb128 0xe
 3022 0188 3A       		.uleb128 0x3a
 3023 0189 0B       		.uleb128 0xb
 3024 018a 3B       		.uleb128 0x3b
 3025 018b 05       		.uleb128 0x5
 3026 018c 49       		.uleb128 0x49
 3027 018d 13       		.uleb128 0x13
 3028 018e 00       		.byte	0
 3029 018f 00       		.byte	0
 3030 0190 21       		.uleb128 0x21
ARM GAS  /tmp/cczatnhQ.s 			page 74


 3031 0191 15       		.uleb128 0x15
 3032 0192 01       		.byte	0x1
 3033 0193 27       		.uleb128 0x27
 3034 0194 19       		.uleb128 0x19
 3035 0195 01       		.uleb128 0x1
 3036 0196 13       		.uleb128 0x13
 3037 0197 00       		.byte	0
 3038 0198 00       		.byte	0
 3039 0199 22       		.uleb128 0x22
 3040 019a 34       		.uleb128 0x34
 3041 019b 00       		.byte	0
 3042 019c 03       		.uleb128 0x3
 3043 019d 0E       		.uleb128 0xe
 3044 019e 3A       		.uleb128 0x3a
 3045 019f 0B       		.uleb128 0xb
 3046 01a0 3B       		.uleb128 0x3b
 3047 01a1 0B       		.uleb128 0xb
 3048 01a2 49       		.uleb128 0x49
 3049 01a3 13       		.uleb128 0x13
 3050 01a4 02       		.uleb128 0x2
 3051 01a5 18       		.uleb128 0x18
 3052 01a6 00       		.byte	0
 3053 01a7 00       		.byte	0
 3054 01a8 23       		.uleb128 0x23
 3055 01a9 04       		.uleb128 0x4
 3056 01aa 01       		.byte	0x1
 3057 01ab 0B       		.uleb128 0xb
 3058 01ac 0B       		.uleb128 0xb
 3059 01ad 49       		.uleb128 0x49
 3060 01ae 13       		.uleb128 0x13
 3061 01af 3A       		.uleb128 0x3a
 3062 01b0 0B       		.uleb128 0xb
 3063 01b1 3B       		.uleb128 0x3b
 3064 01b2 0B       		.uleb128 0xb
 3065 01b3 01       		.uleb128 0x1
 3066 01b4 13       		.uleb128 0x13
 3067 01b5 00       		.byte	0
 3068 01b6 00       		.byte	0
 3069 01b7 24       		.uleb128 0x24
 3070 01b8 28       		.uleb128 0x28
 3071 01b9 00       		.byte	0
 3072 01ba 03       		.uleb128 0x3
 3073 01bb 0E       		.uleb128 0xe
 3074 01bc 1C       		.uleb128 0x1c
 3075 01bd 0D       		.uleb128 0xd
 3076 01be 00       		.byte	0
 3077 01bf 00       		.byte	0
 3078 01c0 25       		.uleb128 0x25
 3079 01c1 28       		.uleb128 0x28
 3080 01c2 00       		.byte	0
 3081 01c3 03       		.uleb128 0x3
 3082 01c4 0E       		.uleb128 0xe
 3083 01c5 1C       		.uleb128 0x1c
 3084 01c6 0B       		.uleb128 0xb
 3085 01c7 00       		.byte	0
 3086 01c8 00       		.byte	0
 3087 01c9 26       		.uleb128 0x26
ARM GAS  /tmp/cczatnhQ.s 			page 75


 3088 01ca 04       		.uleb128 0x4
 3089 01cb 01       		.byte	0x1
 3090 01cc 03       		.uleb128 0x3
 3091 01cd 0E       		.uleb128 0xe
 3092 01ce 0B       		.uleb128 0xb
 3093 01cf 0B       		.uleb128 0xb
 3094 01d0 49       		.uleb128 0x49
 3095 01d1 13       		.uleb128 0x13
 3096 01d2 3A       		.uleb128 0x3a
 3097 01d3 0B       		.uleb128 0xb
 3098 01d4 3B       		.uleb128 0x3b
 3099 01d5 0B       		.uleb128 0xb
 3100 01d6 01       		.uleb128 0x1
 3101 01d7 13       		.uleb128 0x13
 3102 01d8 00       		.byte	0
 3103 01d9 00       		.byte	0
 3104 01da 27       		.uleb128 0x27
 3105 01db 2E       		.uleb128 0x2e
 3106 01dc 01       		.byte	0x1
 3107 01dd 3F       		.uleb128 0x3f
 3108 01de 19       		.uleb128 0x19
 3109 01df 03       		.uleb128 0x3
 3110 01e0 0E       		.uleb128 0xe
 3111 01e1 3A       		.uleb128 0x3a
 3112 01e2 0B       		.uleb128 0xb
 3113 01e3 3B       		.uleb128 0x3b
 3114 01e4 05       		.uleb128 0x5
 3115 01e5 27       		.uleb128 0x27
 3116 01e6 19       		.uleb128 0x19
 3117 01e7 49       		.uleb128 0x49
 3118 01e8 13       		.uleb128 0x13
 3119 01e9 11       		.uleb128 0x11
 3120 01ea 01       		.uleb128 0x1
 3121 01eb 12       		.uleb128 0x12
 3122 01ec 06       		.uleb128 0x6
 3123 01ed 40       		.uleb128 0x40
 3124 01ee 18       		.uleb128 0x18
 3125 01ef 9742     		.uleb128 0x2117
 3126 01f1 19       		.uleb128 0x19
 3127 01f2 01       		.uleb128 0x1
 3128 01f3 13       		.uleb128 0x13
 3129 01f4 00       		.byte	0
 3130 01f5 00       		.byte	0
 3131 01f6 28       		.uleb128 0x28
 3132 01f7 05       		.uleb128 0x5
 3133 01f8 00       		.byte	0
 3134 01f9 03       		.uleb128 0x3
 3135 01fa 0E       		.uleb128 0xe
 3136 01fb 3A       		.uleb128 0x3a
 3137 01fc 0B       		.uleb128 0xb
 3138 01fd 3B       		.uleb128 0x3b
 3139 01fe 05       		.uleb128 0x5
 3140 01ff 49       		.uleb128 0x49
 3141 0200 13       		.uleb128 0x13
 3142 0201 02       		.uleb128 0x2
 3143 0202 17       		.uleb128 0x17
 3144 0203 00       		.byte	0
ARM GAS  /tmp/cczatnhQ.s 			page 76


 3145 0204 00       		.byte	0
 3146 0205 29       		.uleb128 0x29
 3147 0206 2E       		.uleb128 0x2e
 3148 0207 01       		.byte	0x1
 3149 0208 3F       		.uleb128 0x3f
 3150 0209 19       		.uleb128 0x19
 3151 020a 03       		.uleb128 0x3
 3152 020b 0E       		.uleb128 0xe
 3153 020c 3A       		.uleb128 0x3a
 3154 020d 0B       		.uleb128 0xb
 3155 020e 3B       		.uleb128 0x3b
 3156 020f 05       		.uleb128 0x5
 3157 0210 27       		.uleb128 0x27
 3158 0211 19       		.uleb128 0x19
 3159 0212 11       		.uleb128 0x11
 3160 0213 01       		.uleb128 0x1
 3161 0214 12       		.uleb128 0x12
 3162 0215 06       		.uleb128 0x6
 3163 0216 40       		.uleb128 0x40
 3164 0217 18       		.uleb128 0x18
 3165 0218 9742     		.uleb128 0x2117
 3166 021a 19       		.uleb128 0x19
 3167 021b 01       		.uleb128 0x1
 3168 021c 13       		.uleb128 0x13
 3169 021d 00       		.byte	0
 3170 021e 00       		.byte	0
 3171 021f 2A       		.uleb128 0x2a
 3172 0220 05       		.uleb128 0x5
 3173 0221 00       		.byte	0
 3174 0222 03       		.uleb128 0x3
 3175 0223 0E       		.uleb128 0xe
 3176 0224 3A       		.uleb128 0x3a
 3177 0225 0B       		.uleb128 0xb
 3178 0226 3B       		.uleb128 0x3b
 3179 0227 05       		.uleb128 0x5
 3180 0228 49       		.uleb128 0x49
 3181 0229 13       		.uleb128 0x13
 3182 022a 02       		.uleb128 0x2
 3183 022b 18       		.uleb128 0x18
 3184 022c 00       		.byte	0
 3185 022d 00       		.byte	0
 3186 022e 2B       		.uleb128 0x2b
 3187 022f 05       		.uleb128 0x5
 3188 0230 00       		.byte	0
 3189 0231 03       		.uleb128 0x3
 3190 0232 08       		.uleb128 0x8
 3191 0233 3A       		.uleb128 0x3a
 3192 0234 0B       		.uleb128 0xb
 3193 0235 3B       		.uleb128 0x3b
 3194 0236 05       		.uleb128 0x5
 3195 0237 49       		.uleb128 0x49
 3196 0238 13       		.uleb128 0x13
 3197 0239 02       		.uleb128 0x2
 3198 023a 17       		.uleb128 0x17
 3199 023b 00       		.byte	0
 3200 023c 00       		.byte	0
 3201 023d 2C       		.uleb128 0x2c
ARM GAS  /tmp/cczatnhQ.s 			page 77


 3202 023e 34       		.uleb128 0x34
 3203 023f 00       		.byte	0
 3204 0240 03       		.uleb128 0x3
 3205 0241 0E       		.uleb128 0xe
 3206 0242 3A       		.uleb128 0x3a
 3207 0243 0B       		.uleb128 0xb
 3208 0244 3B       		.uleb128 0x3b
 3209 0245 05       		.uleb128 0x5
 3210 0246 49       		.uleb128 0x49
 3211 0247 13       		.uleb128 0x13
 3212 0248 02       		.uleb128 0x2
 3213 0249 17       		.uleb128 0x17
 3214 024a 00       		.byte	0
 3215 024b 00       		.byte	0
 3216 024c 2D       		.uleb128 0x2d
 3217 024d 1D       		.uleb128 0x1d
 3218 024e 01       		.byte	0x1
 3219 024f 31       		.uleb128 0x31
 3220 0250 13       		.uleb128 0x13
 3221 0251 11       		.uleb128 0x11
 3222 0252 01       		.uleb128 0x1
 3223 0253 12       		.uleb128 0x12
 3224 0254 06       		.uleb128 0x6
 3225 0255 58       		.uleb128 0x58
 3226 0256 0B       		.uleb128 0xb
 3227 0257 59       		.uleb128 0x59
 3228 0258 05       		.uleb128 0x5
 3229 0259 00       		.byte	0
 3230 025a 00       		.byte	0
 3231 025b 2E       		.uleb128 0x2e
 3232 025c 05       		.uleb128 0x5
 3233 025d 00       		.byte	0
 3234 025e 31       		.uleb128 0x31
 3235 025f 13       		.uleb128 0x13
 3236 0260 02       		.uleb128 0x2
 3237 0261 17       		.uleb128 0x17
 3238 0262 00       		.byte	0
 3239 0263 00       		.byte	0
 3240 0264 2F       		.uleb128 0x2f
 3241 0265 2E       		.uleb128 0x2e
 3242 0266 01       		.byte	0x1
 3243 0267 3F       		.uleb128 0x3f
 3244 0268 19       		.uleb128 0x19
 3245 0269 03       		.uleb128 0x3
 3246 026a 0E       		.uleb128 0xe
 3247 026b 3A       		.uleb128 0x3a
 3248 026c 0B       		.uleb128 0xb
 3249 026d 3B       		.uleb128 0x3b
 3250 026e 0B       		.uleb128 0xb
 3251 026f 27       		.uleb128 0x27
 3252 0270 19       		.uleb128 0x19
 3253 0271 49       		.uleb128 0x49
 3254 0272 13       		.uleb128 0x13
 3255 0273 11       		.uleb128 0x11
 3256 0274 01       		.uleb128 0x1
 3257 0275 12       		.uleb128 0x12
 3258 0276 06       		.uleb128 0x6
ARM GAS  /tmp/cczatnhQ.s 			page 78


 3259 0277 40       		.uleb128 0x40
 3260 0278 18       		.uleb128 0x18
 3261 0279 9742     		.uleb128 0x2117
 3262 027b 19       		.uleb128 0x19
 3263 027c 01       		.uleb128 0x1
 3264 027d 13       		.uleb128 0x13
 3265 027e 00       		.byte	0
 3266 027f 00       		.byte	0
 3267 0280 30       		.uleb128 0x30
 3268 0281 05       		.uleb128 0x5
 3269 0282 00       		.byte	0
 3270 0283 03       		.uleb128 0x3
 3271 0284 0E       		.uleb128 0xe
 3272 0285 3A       		.uleb128 0x3a
 3273 0286 0B       		.uleb128 0xb
 3274 0287 3B       		.uleb128 0x3b
 3275 0288 0B       		.uleb128 0xb
 3276 0289 49       		.uleb128 0x49
 3277 028a 13       		.uleb128 0x13
 3278 028b 02       		.uleb128 0x2
 3279 028c 17       		.uleb128 0x17
 3280 028d 00       		.byte	0
 3281 028e 00       		.byte	0
 3282 028f 31       		.uleb128 0x31
 3283 0290 05       		.uleb128 0x5
 3284 0291 00       		.byte	0
 3285 0292 03       		.uleb128 0x3
 3286 0293 0E       		.uleb128 0xe
 3287 0294 3A       		.uleb128 0x3a
 3288 0295 0B       		.uleb128 0xb
 3289 0296 3B       		.uleb128 0x3b
 3290 0297 0B       		.uleb128 0xb
 3291 0298 49       		.uleb128 0x49
 3292 0299 13       		.uleb128 0x13
 3293 029a 02       		.uleb128 0x2
 3294 029b 18       		.uleb128 0x18
 3295 029c 00       		.byte	0
 3296 029d 00       		.byte	0
 3297 029e 32       		.uleb128 0x32
 3298 029f 34       		.uleb128 0x34
 3299 02a0 00       		.byte	0
 3300 02a1 03       		.uleb128 0x3
 3301 02a2 0E       		.uleb128 0xe
 3302 02a3 3A       		.uleb128 0x3a
 3303 02a4 0B       		.uleb128 0xb
 3304 02a5 3B       		.uleb128 0x3b
 3305 02a6 0B       		.uleb128 0xb
 3306 02a7 49       		.uleb128 0x49
 3307 02a8 13       		.uleb128 0x13
 3308 02a9 02       		.uleb128 0x2
 3309 02aa 17       		.uleb128 0x17
 3310 02ab 00       		.byte	0
 3311 02ac 00       		.byte	0
 3312 02ad 33       		.uleb128 0x33
 3313 02ae 34       		.uleb128 0x34
 3314 02af 00       		.byte	0
 3315 02b0 03       		.uleb128 0x3
ARM GAS  /tmp/cczatnhQ.s 			page 79


 3316 02b1 0E       		.uleb128 0xe
 3317 02b2 3A       		.uleb128 0x3a
 3318 02b3 0B       		.uleb128 0xb
 3319 02b4 3B       		.uleb128 0x3b
 3320 02b5 0B       		.uleb128 0xb
 3321 02b6 49       		.uleb128 0x49
 3322 02b7 13       		.uleb128 0x13
 3323 02b8 00       		.byte	0
 3324 02b9 00       		.byte	0
 3325 02ba 34       		.uleb128 0x34
 3326 02bb 1D       		.uleb128 0x1d
 3327 02bc 01       		.byte	0x1
 3328 02bd 31       		.uleb128 0x31
 3329 02be 13       		.uleb128 0x13
 3330 02bf 11       		.uleb128 0x11
 3331 02c0 01       		.uleb128 0x1
 3332 02c1 12       		.uleb128 0x12
 3333 02c2 06       		.uleb128 0x6
 3334 02c3 58       		.uleb128 0x58
 3335 02c4 0B       		.uleb128 0xb
 3336 02c5 59       		.uleb128 0x59
 3337 02c6 0B       		.uleb128 0xb
 3338 02c7 00       		.byte	0
 3339 02c8 00       		.byte	0
 3340 02c9 35       		.uleb128 0x35
 3341 02ca 2E       		.uleb128 0x2e
 3342 02cb 01       		.byte	0x1
 3343 02cc 3F       		.uleb128 0x3f
 3344 02cd 19       		.uleb128 0x19
 3345 02ce 03       		.uleb128 0x3
 3346 02cf 0E       		.uleb128 0xe
 3347 02d0 3A       		.uleb128 0x3a
 3348 02d1 0B       		.uleb128 0xb
 3349 02d2 3B       		.uleb128 0x3b
 3350 02d3 0B       		.uleb128 0xb
 3351 02d4 27       		.uleb128 0x27
 3352 02d5 19       		.uleb128 0x19
 3353 02d6 11       		.uleb128 0x11
 3354 02d7 01       		.uleb128 0x1
 3355 02d8 12       		.uleb128 0x12
 3356 02d9 06       		.uleb128 0x6
 3357 02da 40       		.uleb128 0x40
 3358 02db 18       		.uleb128 0x18
 3359 02dc 9742     		.uleb128 0x2117
 3360 02de 19       		.uleb128 0x19
 3361 02df 01       		.uleb128 0x1
 3362 02e0 13       		.uleb128 0x13
 3363 02e1 00       		.byte	0
 3364 02e2 00       		.byte	0
 3365 02e3 36       		.uleb128 0x36
 3366 02e4 1D       		.uleb128 0x1d
 3367 02e5 01       		.byte	0x1
 3368 02e6 31       		.uleb128 0x31
 3369 02e7 13       		.uleb128 0x13
 3370 02e8 11       		.uleb128 0x11
 3371 02e9 01       		.uleb128 0x1
 3372 02ea 12       		.uleb128 0x12
ARM GAS  /tmp/cczatnhQ.s 			page 80


 3373 02eb 06       		.uleb128 0x6
 3374 02ec 58       		.uleb128 0x58
 3375 02ed 0B       		.uleb128 0xb
 3376 02ee 59       		.uleb128 0x59
 3377 02ef 0B       		.uleb128 0xb
 3378 02f0 01       		.uleb128 0x1
 3379 02f1 13       		.uleb128 0x13
 3380 02f2 00       		.byte	0
 3381 02f3 00       		.byte	0
 3382 02f4 37       		.uleb128 0x37
 3383 02f5 898201   		.uleb128 0x4109
 3384 02f8 01       		.byte	0x1
 3385 02f9 11       		.uleb128 0x11
 3386 02fa 01       		.uleb128 0x1
 3387 02fb 9542     		.uleb128 0x2115
 3388 02fd 19       		.uleb128 0x19
 3389 02fe 31       		.uleb128 0x31
 3390 02ff 13       		.uleb128 0x13
 3391 0300 00       		.byte	0
 3392 0301 00       		.byte	0
 3393 0302 38       		.uleb128 0x38
 3394 0303 8A8201   		.uleb128 0x410a
 3395 0306 00       		.byte	0
 3396 0307 02       		.uleb128 0x2
 3397 0308 18       		.uleb128 0x18
 3398 0309 9142     		.uleb128 0x2111
 3399 030b 18       		.uleb128 0x18
 3400 030c 00       		.byte	0
 3401 030d 00       		.byte	0
 3402 030e 39       		.uleb128 0x39
 3403 030f 05       		.uleb128 0x5
 3404 0310 00       		.byte	0
 3405 0311 31       		.uleb128 0x31
 3406 0312 13       		.uleb128 0x13
 3407 0313 1C       		.uleb128 0x1c
 3408 0314 0B       		.uleb128 0xb
 3409 0315 00       		.byte	0
 3410 0316 00       		.byte	0
 3411 0317 3A       		.uleb128 0x3a
 3412 0318 2E       		.uleb128 0x2e
 3413 0319 01       		.byte	0x1
 3414 031a 03       		.uleb128 0x3
 3415 031b 0E       		.uleb128 0xe
 3416 031c 3A       		.uleb128 0x3a
 3417 031d 0B       		.uleb128 0xb
 3418 031e 3B       		.uleb128 0x3b
 3419 031f 05       		.uleb128 0x5
 3420 0320 27       		.uleb128 0x27
 3421 0321 19       		.uleb128 0x19
 3422 0322 20       		.uleb128 0x20
 3423 0323 0B       		.uleb128 0xb
 3424 0324 01       		.uleb128 0x1
 3425 0325 13       		.uleb128 0x13
 3426 0326 00       		.byte	0
 3427 0327 00       		.byte	0
 3428 0328 3B       		.uleb128 0x3b
 3429 0329 05       		.uleb128 0x5
ARM GAS  /tmp/cczatnhQ.s 			page 81


 3430 032a 00       		.byte	0
 3431 032b 03       		.uleb128 0x3
 3432 032c 0E       		.uleb128 0xe
 3433 032d 3A       		.uleb128 0x3a
 3434 032e 0B       		.uleb128 0xb
 3435 032f 3B       		.uleb128 0x3b
 3436 0330 05       		.uleb128 0x5
 3437 0331 49       		.uleb128 0x49
 3438 0332 13       		.uleb128 0x13
 3439 0333 00       		.byte	0
 3440 0334 00       		.byte	0
 3441 0335 3C       		.uleb128 0x3c
 3442 0336 2E       		.uleb128 0x2e
 3443 0337 01       		.byte	0x1
 3444 0338 03       		.uleb128 0x3
 3445 0339 0E       		.uleb128 0xe
 3446 033a 3A       		.uleb128 0x3a
 3447 033b 0B       		.uleb128 0xb
 3448 033c 3B       		.uleb128 0x3b
 3449 033d 0B       		.uleb128 0xb
 3450 033e 27       		.uleb128 0x27
 3451 033f 19       		.uleb128 0x19
 3452 0340 49       		.uleb128 0x49
 3453 0341 13       		.uleb128 0x13
 3454 0342 20       		.uleb128 0x20
 3455 0343 0B       		.uleb128 0xb
 3456 0344 01       		.uleb128 0x1
 3457 0345 13       		.uleb128 0x13
 3458 0346 00       		.byte	0
 3459 0347 00       		.byte	0
 3460 0348 3D       		.uleb128 0x3d
 3461 0349 05       		.uleb128 0x5
 3462 034a 00       		.byte	0
 3463 034b 03       		.uleb128 0x3
 3464 034c 0E       		.uleb128 0xe
 3465 034d 3A       		.uleb128 0x3a
 3466 034e 0B       		.uleb128 0xb
 3467 034f 3B       		.uleb128 0x3b
 3468 0350 0B       		.uleb128 0xb
 3469 0351 49       		.uleb128 0x49
 3470 0352 13       		.uleb128 0x13
 3471 0353 00       		.byte	0
 3472 0354 00       		.byte	0
 3473 0355 3E       		.uleb128 0x3e
 3474 0356 2E       		.uleb128 0x2e
 3475 0357 00       		.byte	0
 3476 0358 3F       		.uleb128 0x3f
 3477 0359 19       		.uleb128 0x19
 3478 035a 3C       		.uleb128 0x3c
 3479 035b 19       		.uleb128 0x19
 3480 035c 6E       		.uleb128 0x6e
 3481 035d 0E       		.uleb128 0xe
 3482 035e 03       		.uleb128 0x3
 3483 035f 0E       		.uleb128 0xe
 3484 0360 3A       		.uleb128 0x3a
 3485 0361 0B       		.uleb128 0xb
 3486 0362 3B       		.uleb128 0x3b
ARM GAS  /tmp/cczatnhQ.s 			page 82


 3487 0363 0B       		.uleb128 0xb
 3488 0364 00       		.byte	0
 3489 0365 00       		.byte	0
 3490 0366 00       		.byte	0
 3491              		.section	.debug_loc,"",%progbits
 3492              	.Ldebug_loc0:
 3493              	.LLST29:
 3494 0000 00000000 		.4byte	.LVL69
 3495 0004 04000000 		.4byte	.LVL70
 3496 0008 0100     		.2byte	0x1
 3497 000a 50       		.byte	0x50
 3498 000b 04000000 		.4byte	.LVL70
 3499 000f 06000000 		.4byte	.LFE210
 3500 0013 0400     		.2byte	0x4
 3501 0015 F3       		.byte	0xf3
 3502 0016 01       		.uleb128 0x1
 3503 0017 50       		.byte	0x50
 3504 0018 9F       		.byte	0x9f
 3505 0019 00000000 		.4byte	0
 3506 001d 00000000 		.4byte	0
 3507              	.LLST26:
 3508 0021 00000000 		.4byte	.LVL64
 3509 0025 06000000 		.4byte	.LVL66
 3510 0029 0100     		.2byte	0x1
 3511 002b 50       		.byte	0x50
 3512 002c 06000000 		.4byte	.LVL66
 3513 0030 1E000000 		.4byte	.LFE208
 3514 0034 0400     		.2byte	0x4
 3515 0036 F3       		.byte	0xf3
 3516 0037 01       		.uleb128 0x1
 3517 0038 50       		.byte	0x50
 3518 0039 9F       		.byte	0x9f
 3519 003a 00000000 		.4byte	0
 3520 003e 00000000 		.4byte	0
 3521              	.LLST27:
 3522 0042 00000000 		.4byte	.LVL64
 3523 0046 04000000 		.4byte	.LVL65
 3524 004a 0100     		.2byte	0x1
 3525 004c 51       		.byte	0x51
 3526 004d 04000000 		.4byte	.LVL65
 3527 0051 1E000000 		.4byte	.LFE208
 3528 0055 0400     		.2byte	0x4
 3529 0057 F3       		.byte	0xf3
 3530 0058 01       		.uleb128 0x1
 3531 0059 51       		.byte	0x51
 3532 005a 9F       		.byte	0x9f
 3533 005b 00000000 		.4byte	0
 3534 005f 00000000 		.4byte	0
 3535              	.LLST28:
 3536 0063 00000000 		.4byte	.LVL64
 3537 0067 12000000 		.4byte	.LVL67
 3538 006b 0100     		.2byte	0x1
 3539 006d 53       		.byte	0x53
 3540 006e 12000000 		.4byte	.LVL67
 3541 0072 1E000000 		.4byte	.LFE208
 3542 0076 0400     		.2byte	0x4
 3543 0078 F3       		.byte	0xf3
ARM GAS  /tmp/cczatnhQ.s 			page 83


 3544 0079 01       		.uleb128 0x1
 3545 007a 53       		.byte	0x53
 3546 007b 9F       		.byte	0x9f
 3547 007c 00000000 		.4byte	0
 3548 0080 00000000 		.4byte	0
 3549              	.LLST23:
 3550 0084 00000000 		.4byte	.LVL58
 3551 0088 08000000 		.4byte	.LVL60
 3552 008c 0100     		.2byte	0x1
 3553 008e 50       		.byte	0x50
 3554 008f 08000000 		.4byte	.LVL60
 3555 0093 1A000000 		.4byte	.LVL62
 3556 0097 0400     		.2byte	0x4
 3557 0099 F3       		.byte	0xf3
 3558 009a 01       		.uleb128 0x1
 3559 009b 50       		.byte	0x50
 3560 009c 9F       		.byte	0x9f
 3561 009d 1A000000 		.4byte	.LVL62
 3562 00a1 1E000000 		.4byte	.LVL63
 3563 00a5 0100     		.2byte	0x1
 3564 00a7 50       		.byte	0x50
 3565 00a8 1E000000 		.4byte	.LVL63
 3566 00ac 20000000 		.4byte	.LFE207
 3567 00b0 0400     		.2byte	0x4
 3568 00b2 F3       		.byte	0xf3
 3569 00b3 01       		.uleb128 0x1
 3570 00b4 50       		.byte	0x50
 3571 00b5 9F       		.byte	0x9f
 3572 00b6 00000000 		.4byte	0
 3573 00ba 00000000 		.4byte	0
 3574              	.LLST24:
 3575 00be 00000000 		.4byte	.LVL58
 3576 00c2 06000000 		.4byte	.LVL59
 3577 00c6 0100     		.2byte	0x1
 3578 00c8 51       		.byte	0x51
 3579 00c9 06000000 		.4byte	.LVL59
 3580 00cd 1A000000 		.4byte	.LVL62
 3581 00d1 0400     		.2byte	0x4
 3582 00d3 F3       		.byte	0xf3
 3583 00d4 01       		.uleb128 0x1
 3584 00d5 51       		.byte	0x51
 3585 00d6 9F       		.byte	0x9f
 3586 00d7 1A000000 		.4byte	.LVL62
 3587 00db 20000000 		.4byte	.LFE207
 3588 00df 0100     		.2byte	0x1
 3589 00e1 51       		.byte	0x51
 3590 00e2 00000000 		.4byte	0
 3591 00e6 00000000 		.4byte	0
 3592              	.LLST25:
 3593 00ea 00000000 		.4byte	.LVL58
 3594 00ee 16000000 		.4byte	.LVL61
 3595 00f2 0100     		.2byte	0x1
 3596 00f4 52       		.byte	0x52
 3597 00f5 16000000 		.4byte	.LVL61
 3598 00f9 1A000000 		.4byte	.LVL62
 3599 00fd 0400     		.2byte	0x4
 3600 00ff F3       		.byte	0xf3
ARM GAS  /tmp/cczatnhQ.s 			page 84


 3601 0100 01       		.uleb128 0x1
 3602 0101 52       		.byte	0x52
 3603 0102 9F       		.byte	0x9f
 3604 0103 1A000000 		.4byte	.LVL62
 3605 0107 20000000 		.4byte	.LFE207
 3606 010b 0100     		.2byte	0x1
 3607 010d 52       		.byte	0x52
 3608 010e 00000000 		.4byte	0
 3609 0112 00000000 		.4byte	0
 3610              	.LLST20:
 3611 0116 00000000 		.4byte	.LVL53
 3612 011a 08000000 		.4byte	.LVL55
 3613 011e 0100     		.2byte	0x1
 3614 0120 50       		.byte	0x50
 3615 0121 08000000 		.4byte	.LVL55
 3616 0125 0A000000 		.4byte	.LVL56
 3617 0129 0300     		.2byte	0x3
 3618 012b 73       		.byte	0x73
 3619 012c 01       		.sleb128 1
 3620 012d 9F       		.byte	0x9f
 3621 012e 0A000000 		.4byte	.LVL56
 3622 0132 16000000 		.4byte	.LFE206
 3623 0136 0400     		.2byte	0x4
 3624 0138 F3       		.byte	0xf3
 3625 0139 01       		.uleb128 0x1
 3626 013a 50       		.byte	0x50
 3627 013b 9F       		.byte	0x9f
 3628 013c 00000000 		.4byte	0
 3629 0140 00000000 		.4byte	0
 3630              	.LLST21:
 3631 0144 00000000 		.4byte	.LVL53
 3632 0148 04000000 		.4byte	.LVL54
 3633 014c 0100     		.2byte	0x1
 3634 014e 51       		.byte	0x51
 3635 014f 04000000 		.4byte	.LVL54
 3636 0153 16000000 		.4byte	.LFE206
 3637 0157 0400     		.2byte	0x4
 3638 0159 F3       		.byte	0xf3
 3639 015a 01       		.uleb128 0x1
 3640 015b 51       		.byte	0x51
 3641 015c 9F       		.byte	0x9f
 3642 015d 00000000 		.4byte	0
 3643 0161 00000000 		.4byte	0
 3644              	.LLST22:
 3645 0165 08000000 		.4byte	.LVL55
 3646 0169 10000000 		.4byte	.LVL57
 3647 016d 0100     		.2byte	0x1
 3648 016f 50       		.byte	0x50
 3649 0170 10000000 		.4byte	.LVL57
 3650 0174 16000000 		.4byte	.LFE206
 3651 0178 0300     		.2byte	0x3
 3652 017a 73       		.byte	0x73
 3653 017b 01       		.sleb128 1
 3654 017c 9F       		.byte	0x9f
 3655 017d 00000000 		.4byte	0
 3656 0181 00000000 		.4byte	0
 3657              	.LLST18:
ARM GAS  /tmp/cczatnhQ.s 			page 85


 3658 0185 00000000 		.4byte	.LVL50
 3659 0189 04000000 		.4byte	.LVL51
 3660 018d 0100     		.2byte	0x1
 3661 018f 51       		.byte	0x51
 3662 0190 04000000 		.4byte	.LVL51
 3663 0194 14000000 		.4byte	.LFE205
 3664 0198 0400     		.2byte	0x4
 3665 019a F3       		.byte	0xf3
 3666 019b 01       		.uleb128 0x1
 3667 019c 51       		.byte	0x51
 3668 019d 9F       		.byte	0x9f
 3669 019e 00000000 		.4byte	0
 3670 01a2 00000000 		.4byte	0
 3671              	.LLST19:
 3672 01a6 00000000 		.4byte	.LVL50
 3673 01aa 10000000 		.4byte	.LVL52
 3674 01ae 0100     		.2byte	0x1
 3675 01b0 52       		.byte	0x52
 3676 01b1 10000000 		.4byte	.LVL52
 3677 01b5 14000000 		.4byte	.LFE205
 3678 01b9 0400     		.2byte	0x4
 3679 01bb F3       		.byte	0xf3
 3680 01bc 01       		.uleb128 0x1
 3681 01bd 52       		.byte	0x52
 3682 01be 9F       		.byte	0x9f
 3683 01bf 00000000 		.4byte	0
 3684 01c3 00000000 		.4byte	0
 3685              	.LLST17:
 3686 01c7 00000000 		.4byte	.LVL44
 3687 01cb 0E000000 		.4byte	.LVL45
 3688 01cf 0100     		.2byte	0x1
 3689 01d1 50       		.byte	0x50
 3690 01d2 0E000000 		.4byte	.LVL45
 3691 01d6 18000000 		.4byte	.LVL46
 3692 01da 0400     		.2byte	0x4
 3693 01dc F3       		.byte	0xf3
 3694 01dd 01       		.uleb128 0x1
 3695 01de 50       		.byte	0x50
 3696 01df 9F       		.byte	0x9f
 3697 01e0 18000000 		.4byte	.LVL46
 3698 01e4 1C000000 		.4byte	.LVL47
 3699 01e8 0100     		.2byte	0x1
 3700 01ea 50       		.byte	0x50
 3701 01eb 1C000000 		.4byte	.LVL47
 3702 01ef 2E000000 		.4byte	.LVL48
 3703 01f3 0400     		.2byte	0x4
 3704 01f5 F3       		.byte	0xf3
 3705 01f6 01       		.uleb128 0x1
 3706 01f7 50       		.byte	0x50
 3707 01f8 9F       		.byte	0x9f
 3708 01f9 2E000000 		.4byte	.LVL48
 3709 01fd 32000000 		.4byte	.LVL49
 3710 0201 0100     		.2byte	0x1
 3711 0203 50       		.byte	0x50
 3712 0204 32000000 		.4byte	.LVL49
 3713 0208 44000000 		.4byte	.LFE204
 3714 020c 0400     		.2byte	0x4
ARM GAS  /tmp/cczatnhQ.s 			page 86


 3715 020e F3       		.byte	0xf3
 3716 020f 01       		.uleb128 0x1
 3717 0210 50       		.byte	0x50
 3718 0211 9F       		.byte	0x9f
 3719 0212 00000000 		.4byte	0
 3720 0216 00000000 		.4byte	0
 3721              	.LLST16:
 3722 021a 00000000 		.4byte	.LVL42
 3723 021e 04000000 		.4byte	.LVL43
 3724 0222 0100     		.2byte	0x1
 3725 0224 50       		.byte	0x50
 3726 0225 04000000 		.4byte	.LVL43
 3727 0229 18000000 		.4byte	.LFE203
 3728 022d 0400     		.2byte	0x4
 3729 022f F3       		.byte	0xf3
 3730 0230 01       		.uleb128 0x1
 3731 0231 50       		.byte	0x50
 3732 0232 9F       		.byte	0x9f
 3733 0233 00000000 		.4byte	0
 3734 0237 00000000 		.4byte	0
 3735              	.LLST15:
 3736 023b 00000000 		.4byte	.LVL40
 3737 023f 04000000 		.4byte	.LVL41
 3738 0243 0100     		.2byte	0x1
 3739 0245 50       		.byte	0x50
 3740 0246 04000000 		.4byte	.LVL41
 3741 024a 18000000 		.4byte	.LFE202
 3742 024e 0400     		.2byte	0x4
 3743 0250 F3       		.byte	0xf3
 3744 0251 01       		.uleb128 0x1
 3745 0252 50       		.byte	0x50
 3746 0253 9F       		.byte	0x9f
 3747 0254 00000000 		.4byte	0
 3748 0258 00000000 		.4byte	0
 3749              	.LLST9:
 3750 025c 00000000 		.4byte	.LVL26
 3751 0260 2A000000 		.4byte	.LVL36
 3752 0264 0100     		.2byte	0x1
 3753 0266 50       		.byte	0x50
 3754 0267 2A000000 		.4byte	.LVL36
 3755 026b 2E000000 		.4byte	.LVL37
 3756 026f 0400     		.2byte	0x4
 3757 0271 F3       		.byte	0xf3
 3758 0272 01       		.uleb128 0x1
 3759 0273 50       		.byte	0x50
 3760 0274 9F       		.byte	0x9f
 3761 0275 2E000000 		.4byte	.LVL37
 3762 0279 30000000 		.4byte	.LVL38
 3763 027d 0100     		.2byte	0x1
 3764 027f 50       		.byte	0x50
 3765 0280 30000000 		.4byte	.LVL38
 3766 0284 34000000 		.4byte	.LFE201
 3767 0288 0400     		.2byte	0x4
 3768 028a F3       		.byte	0xf3
 3769 028b 01       		.uleb128 0x1
 3770 028c 50       		.byte	0x50
 3771 028d 9F       		.byte	0x9f
ARM GAS  /tmp/cczatnhQ.s 			page 87


 3772 028e 00000000 		.4byte	0
 3773 0292 00000000 		.4byte	0
 3774              	.LLST10:
 3775 0296 00000000 		.4byte	.LVL26
 3776 029a 20000000 		.4byte	.LVL34
 3777 029e 0100     		.2byte	0x1
 3778 02a0 51       		.byte	0x51
 3779 02a1 20000000 		.4byte	.LVL34
 3780 02a5 2E000000 		.4byte	.LVL37
 3781 02a9 0400     		.2byte	0x4
 3782 02ab F3       		.byte	0xf3
 3783 02ac 01       		.uleb128 0x1
 3784 02ad 51       		.byte	0x51
 3785 02ae 9F       		.byte	0x9f
 3786 02af 2E000000 		.4byte	.LVL37
 3787 02b3 34000000 		.4byte	.LFE201
 3788 02b7 0100     		.2byte	0x1
 3789 02b9 51       		.byte	0x51
 3790 02ba 00000000 		.4byte	0
 3791 02be 00000000 		.4byte	0
 3792              	.LLST11:
 3793 02c2 00000000 		.4byte	.LVL26
 3794 02c6 1A000000 		.4byte	.LVL33
 3795 02ca 0100     		.2byte	0x1
 3796 02cc 52       		.byte	0x52
 3797 02cd 1A000000 		.4byte	.LVL33
 3798 02d1 2E000000 		.4byte	.LVL37
 3799 02d5 0400     		.2byte	0x4
 3800 02d7 F3       		.byte	0xf3
 3801 02d8 01       		.uleb128 0x1
 3802 02d9 52       		.byte	0x52
 3803 02da 9F       		.byte	0x9f
 3804 02db 2E000000 		.4byte	.LVL37
 3805 02df 34000000 		.4byte	.LFE201
 3806 02e3 0100     		.2byte	0x1
 3807 02e5 52       		.byte	0x52
 3808 02e6 00000000 		.4byte	0
 3809 02ea 00000000 		.4byte	0
 3810              	.LLST12:
 3811 02ee 00000000 		.4byte	.LVL26
 3812 02f2 08000000 		.4byte	.LVL27
 3813 02f6 0400     		.2byte	0x4
 3814 02f8 0A       		.byte	0xa
 3815 02f9 983A     		.2byte	0x3a98
 3816 02fb 9F       		.byte	0x9f
 3817 02fc 08000000 		.4byte	.LVL27
 3818 0300 0A000000 		.4byte	.LVL28
 3819 0304 0300     		.2byte	0x3
 3820 0306 74       		.byte	0x74
 3821 0307 7F       		.sleb128 -1
 3822 0308 9F       		.byte	0x9f
 3823 0309 0A000000 		.4byte	.LVL28
 3824 030d 0C000000 		.4byte	.LVL29
 3825 0311 0100     		.2byte	0x1
 3826 0313 54       		.byte	0x54
 3827 0314 0C000000 		.4byte	.LVL29
 3828 0318 14000000 		.4byte	.LVL31
ARM GAS  /tmp/cczatnhQ.s 			page 88


 3829 031c 0300     		.2byte	0x3
 3830 031e 74       		.byte	0x74
 3831 031f 7F       		.sleb128 -1
 3832 0320 9F       		.byte	0x9f
 3833 0321 2E000000 		.4byte	.LVL37
 3834 0325 32000000 		.4byte	.LVL39
 3835 0329 0100     		.2byte	0x1
 3836 032b 54       		.byte	0x54
 3837 032c 00000000 		.4byte	0
 3838 0330 00000000 		.4byte	0
 3839              	.LLST13:
 3840 0334 20000000 		.4byte	.LVL34
 3841 0338 2E000000 		.4byte	.LVL37
 3842 033c 0100     		.2byte	0x1
 3843 033e 51       		.byte	0x51
 3844 033f 00000000 		.4byte	0
 3845 0343 00000000 		.4byte	0
 3846              	.LLST14:
 3847 0347 12000000 		.4byte	.LVL30
 3848 034b 18000000 		.4byte	.LVL32
 3849 034f 0100     		.2byte	0x1
 3850 0351 50       		.byte	0x50
 3851 0352 00000000 		.4byte	0
 3852 0356 00000000 		.4byte	0
 3853              	.LLST6:
 3854 035a 00000000 		.4byte	.LVL16
 3855 035e 16000000 		.4byte	.LVL21
 3856 0362 0100     		.2byte	0x1
 3857 0364 50       		.byte	0x50
 3858 0365 16000000 		.4byte	.LVL21
 3859 0369 2C000000 		.4byte	.LVL24
 3860 036d 0400     		.2byte	0x4
 3861 036f F3       		.byte	0xf3
 3862 0370 01       		.uleb128 0x1
 3863 0371 50       		.byte	0x50
 3864 0372 9F       		.byte	0x9f
 3865 0373 2C000000 		.4byte	.LVL24
 3866 0377 2E000000 		.4byte	.LVL25
 3867 037b 0100     		.2byte	0x1
 3868 037d 50       		.byte	0x50
 3869 037e 2E000000 		.4byte	.LVL25
 3870 0382 34000000 		.4byte	.LFE200
 3871 0386 0400     		.2byte	0x4
 3872 0388 F3       		.byte	0xf3
 3873 0389 01       		.uleb128 0x1
 3874 038a 50       		.byte	0x50
 3875 038b 9F       		.byte	0x9f
 3876 038c 00000000 		.4byte	0
 3877 0390 00000000 		.4byte	0
 3878              	.LLST7:
 3879 0394 00000000 		.4byte	.LVL16
 3880 0398 08000000 		.4byte	.LVL17
 3881 039c 0400     		.2byte	0x4
 3882 039e 0A       		.byte	0xa
 3883 039f 983A     		.2byte	0x3a98
 3884 03a1 9F       		.byte	0x9f
 3885 03a2 08000000 		.4byte	.LVL17
ARM GAS  /tmp/cczatnhQ.s 			page 89


 3886 03a6 0A000000 		.4byte	.LVL18
 3887 03aa 0300     		.2byte	0x3
 3888 03ac 73       		.byte	0x73
 3889 03ad 7F       		.sleb128 -1
 3890 03ae 9F       		.byte	0x9f
 3891 03af 0A000000 		.4byte	.LVL18
 3892 03b3 0C000000 		.4byte	.LVL19
 3893 03b7 0100     		.2byte	0x1
 3894 03b9 53       		.byte	0x53
 3895 03ba 0C000000 		.4byte	.LVL19
 3896 03be 14000000 		.4byte	.LVL20
 3897 03c2 0300     		.2byte	0x3
 3898 03c4 73       		.byte	0x73
 3899 03c5 7F       		.sleb128 -1
 3900 03c6 9F       		.byte	0x9f
 3901 03c7 2C000000 		.4byte	.LVL24
 3902 03cb 34000000 		.4byte	.LFE200
 3903 03cf 0100     		.2byte	0x1
 3904 03d1 53       		.byte	0x53
 3905 03d2 00000000 		.4byte	0
 3906 03d6 00000000 		.4byte	0
 3907              	.LLST8:
 3908 03da 14000000 		.4byte	.LVL20
 3909 03de 16000000 		.4byte	.LVL21
 3910 03e2 0100     		.2byte	0x1
 3911 03e4 50       		.byte	0x50
 3912 03e5 16000000 		.4byte	.LVL21
 3913 03e9 1A000000 		.4byte	.LVL22
 3914 03ed 0400     		.2byte	0x4
 3915 03ef F3       		.byte	0xf3
 3916 03f0 01       		.uleb128 0x1
 3917 03f1 50       		.byte	0x50
 3918 03f2 9F       		.byte	0x9f
 3919 03f3 00000000 		.4byte	0
 3920 03f7 00000000 		.4byte	0
 3921              	.LLST5:
 3922 03fb 00000000 		.4byte	.LVL14
 3923 03ff 0E000000 		.4byte	.LVL15
 3924 0403 0100     		.2byte	0x1
 3925 0405 51       		.byte	0x51
 3926 0406 0E000000 		.4byte	.LVL15
 3927 040a 12000000 		.4byte	.LFE199
 3928 040e 0400     		.2byte	0x4
 3929 0410 F3       		.byte	0xf3
 3930 0411 01       		.uleb128 0x1
 3931 0412 51       		.byte	0x51
 3932 0413 9F       		.byte	0x9f
 3933 0414 00000000 		.4byte	0
 3934 0418 00000000 		.4byte	0
 3935              	.LLST4:
 3936 041c 00000000 		.4byte	.LVL12
 3937 0420 04000000 		.4byte	.LVL13
 3938 0424 0100     		.2byte	0x1
 3939 0426 51       		.byte	0x51
 3940 0427 04000000 		.4byte	.LVL13
 3941 042b 16000000 		.4byte	.LFE198
 3942 042f 0400     		.2byte	0x4
ARM GAS  /tmp/cczatnhQ.s 			page 90


 3943 0431 F3       		.byte	0xf3
 3944 0432 01       		.uleb128 0x1
 3945 0433 51       		.byte	0x51
 3946 0434 9F       		.byte	0x9f
 3947 0435 00000000 		.4byte	0
 3948 0439 00000000 		.4byte	0
 3949              	.LLST2:
 3950 043d 00000000 		.4byte	.LVL6
 3951 0441 10000000 		.4byte	.LVL8
 3952 0445 0100     		.2byte	0x1
 3953 0447 50       		.byte	0x50
 3954 0448 10000000 		.4byte	.LVL8
 3955 044c 14000000 		.4byte	.LVL9
 3956 0450 0400     		.2byte	0x4
 3957 0452 F3       		.byte	0xf3
 3958 0453 01       		.uleb128 0x1
 3959 0454 50       		.byte	0x50
 3960 0455 9F       		.byte	0x9f
 3961 0456 14000000 		.4byte	.LVL9
 3962 045a 16000000 		.4byte	.LVL10
 3963 045e 0100     		.2byte	0x1
 3964 0460 50       		.byte	0x50
 3965 0461 16000000 		.4byte	.LVL10
 3966 0465 24000000 		.4byte	.LFE197
 3967 0469 0400     		.2byte	0x4
 3968 046b F3       		.byte	0xf3
 3969 046c 01       		.uleb128 0x1
 3970 046d 50       		.byte	0x50
 3971 046e 9F       		.byte	0x9f
 3972 046f 00000000 		.4byte	0
 3973 0473 00000000 		.4byte	0
 3974              	.LLST3:
 3975 0477 0E000000 		.4byte	.LVL7
 3976 047b 14000000 		.4byte	.LVL9
 3977 047f 0300     		.2byte	0x3
 3978 0481 08       		.byte	0x8
 3979 0482 2A       		.byte	0x2a
 3980 0483 9F       		.byte	0x9f
 3981 0484 00000000 		.4byte	0
 3982 0488 00000000 		.4byte	0
 3983              	.LLST0:
 3984 048c 00000000 		.4byte	.LVL0
 3985 0490 10000000 		.4byte	.LVL2
 3986 0494 0100     		.2byte	0x1
 3987 0496 50       		.byte	0x50
 3988 0497 10000000 		.4byte	.LVL2
 3989 049b 14000000 		.4byte	.LVL3
 3990 049f 0400     		.2byte	0x4
 3991 04a1 F3       		.byte	0xf3
 3992 04a2 01       		.uleb128 0x1
 3993 04a3 50       		.byte	0x50
 3994 04a4 9F       		.byte	0x9f
 3995 04a5 14000000 		.4byte	.LVL3
 3996 04a9 16000000 		.4byte	.LVL4
 3997 04ad 0100     		.2byte	0x1
 3998 04af 50       		.byte	0x50
 3999 04b0 16000000 		.4byte	.LVL4
ARM GAS  /tmp/cczatnhQ.s 			page 91


 4000 04b4 24000000 		.4byte	.LFE196
 4001 04b8 0400     		.2byte	0x4
 4002 04ba F3       		.byte	0xf3
 4003 04bb 01       		.uleb128 0x1
 4004 04bc 50       		.byte	0x50
 4005 04bd 9F       		.byte	0x9f
 4006 04be 00000000 		.4byte	0
 4007 04c2 00000000 		.4byte	0
 4008              	.LLST1:
 4009 04c6 0E000000 		.4byte	.LVL1
 4010 04ca 14000000 		.4byte	.LVL3
 4011 04ce 0300     		.2byte	0x3
 4012 04d0 08       		.byte	0x8
 4013 04d1 2A       		.byte	0x2a
 4014 04d2 9F       		.byte	0x9f
 4015 04d3 00000000 		.4byte	0
 4016 04d7 00000000 		.4byte	0
 4017              		.section	.debug_aranges,"",%progbits
 4018 0000 8C000000 		.4byte	0x8c
 4019 0004 0200     		.2byte	0x2
 4020 0006 00000000 		.4byte	.Ldebug_info0
 4021 000a 04       		.byte	0x4
 4022 000b 00       		.byte	0
 4023 000c 0000     		.2byte	0
 4024 000e 0000     		.2byte	0
 4025 0010 00000000 		.4byte	.LFB196
 4026 0014 24000000 		.4byte	.LFE196-.LFB196
 4027 0018 00000000 		.4byte	.LFB197
 4028 001c 24000000 		.4byte	.LFE197-.LFB197
 4029 0020 00000000 		.4byte	.LFB198
 4030 0024 16000000 		.4byte	.LFE198-.LFB198
 4031 0028 00000000 		.4byte	.LFB199
 4032 002c 12000000 		.4byte	.LFE199-.LFB199
 4033 0030 00000000 		.4byte	.LFB200
 4034 0034 34000000 		.4byte	.LFE200-.LFB200
 4035 0038 00000000 		.4byte	.LFB201
 4036 003c 34000000 		.4byte	.LFE201-.LFB201
 4037 0040 00000000 		.4byte	.LFB202
 4038 0044 18000000 		.4byte	.LFE202-.LFB202
 4039 0048 00000000 		.4byte	.LFB203
 4040 004c 18000000 		.4byte	.LFE203-.LFB203
 4041 0050 00000000 		.4byte	.LFB204
 4042 0054 44000000 		.4byte	.LFE204-.LFB204
 4043 0058 00000000 		.4byte	.LFB205
 4044 005c 14000000 		.4byte	.LFE205-.LFB205
 4045 0060 00000000 		.4byte	.LFB206
 4046 0064 16000000 		.4byte	.LFE206-.LFB206
 4047 0068 00000000 		.4byte	.LFB207
 4048 006c 20000000 		.4byte	.LFE207-.LFB207
 4049 0070 00000000 		.4byte	.LFB208
 4050 0074 1E000000 		.4byte	.LFE208-.LFB208
 4051 0078 00000000 		.4byte	.LFB209
 4052 007c 1C000000 		.4byte	.LFE209-.LFB209
 4053 0080 00000000 		.4byte	.LFB210
 4054 0084 06000000 		.4byte	.LFE210-.LFB210
 4055 0088 00000000 		.4byte	0
 4056 008c 00000000 		.4byte	0
ARM GAS  /tmp/cczatnhQ.s 			page 92


 4057              		.section	.debug_ranges,"",%progbits
 4058              	.Ldebug_ranges0:
 4059 0000 00000000 		.4byte	.LFB196
 4060 0004 24000000 		.4byte	.LFE196
 4061 0008 00000000 		.4byte	.LFB197
 4062 000c 24000000 		.4byte	.LFE197
 4063 0010 00000000 		.4byte	.LFB198
 4064 0014 16000000 		.4byte	.LFE198
 4065 0018 00000000 		.4byte	.LFB199
 4066 001c 12000000 		.4byte	.LFE199
 4067 0020 00000000 		.4byte	.LFB200
 4068 0024 34000000 		.4byte	.LFE200
 4069 0028 00000000 		.4byte	.LFB201
 4070 002c 34000000 		.4byte	.LFE201
 4071 0030 00000000 		.4byte	.LFB202
 4072 0034 18000000 		.4byte	.LFE202
 4073 0038 00000000 		.4byte	.LFB203
 4074 003c 18000000 		.4byte	.LFE203
 4075 0040 00000000 		.4byte	.LFB204
 4076 0044 44000000 		.4byte	.LFE204
 4077 0048 00000000 		.4byte	.LFB205
 4078 004c 14000000 		.4byte	.LFE205
 4079 0050 00000000 		.4byte	.LFB206
 4080 0054 16000000 		.4byte	.LFE206
 4081 0058 00000000 		.4byte	.LFB207
 4082 005c 20000000 		.4byte	.LFE207
 4083 0060 00000000 		.4byte	.LFB208
 4084 0064 1E000000 		.4byte	.LFE208
 4085 0068 00000000 		.4byte	.LFB209
 4086 006c 1C000000 		.4byte	.LFE209
 4087 0070 00000000 		.4byte	.LFB210
 4088 0074 06000000 		.4byte	.LFE210
 4089 0078 00000000 		.4byte	0
 4090 007c 00000000 		.4byte	0
 4091              		.section	.debug_line,"",%progbits
 4092              	.Ldebug_line0:
 4093 0000 61040000 		.section	.debug_str,"MS",%progbits,1
 4093      0200F802 
 4093      00000201 
 4093      FB0E0D00 
 4093      01010101 
 4094              	.LASF65:
 4095 0000 5F69735F 		.ascii	"_is_cxa\000"
 4095      63786100 
 4096              	.LASF5:
 4097 0008 73686F72 		.ascii	"short int\000"
 4097      7420696E 
 4097      7400
 4098              	.LASF159:
 4099 0012 5350495F 		.ascii	"SPI_CS_KEEP_LOW\000"
 4099      43535F4B 
 4099      4545505F 
 4099      4C4F5700 
 4100              	.LASF188:
 4101 0022 76616C75 		.ascii	"value\000"
 4101      6500
 4102              	.LASF176:
ARM GAS  /tmp/cczatnhQ.s 			page 93


 4103 0028 756C5F62 		.ascii	"ul_bits\000"
 4103      69747300 
 4104              	.LASF72:
 4105 0030 5F5F7346 		.ascii	"__sFILE\000"
 4105      494C4500 
 4106              	.LASF155:
 4107 0038 5350495F 		.ascii	"SPI_ERROR_OVERRUN\000"
 4107      4552524F 
 4107      525F4F56 
 4107      45525255 
 4107      4E00
 4108              	.LASF116:
 4109 004a 5F72616E 		.ascii	"_rand48\000"
 4109      64343800 
 4110              	.LASF182:
 4111 0052 756C5F70 		.ascii	"ul_polarity\000"
 4111      6F6C6172 
 4111      69747900 
 4112              	.LASF95:
 4113 005e 5F656D65 		.ascii	"_emergency\000"
 4113      7267656E 
 4113      637900
 4114              	.LASF1:
 4115 0069 7369676E 		.ascii	"signed char\000"
 4115      65642063 
 4115      68617200 
 4116              	.LASF3:
 4117 0075 5F5F7569 		.ascii	"__uint8_t\000"
 4117      6E74385F 
 4117      7400
 4118              	.LASF24:
 4119 007f 5350495F 		.ascii	"SPI_RDR\000"
 4119      52445200 
 4120              	.LASF132:
 4121 0087 5F676574 		.ascii	"_getdate_err\000"
 4121      64617465 
 4121      5F657272 
 4121      00
 4122              	.LASF177:
 4123 0094 7370695F 		.ascii	"spi_configure_cs_behavior\000"
 4123      636F6E66 
 4123      69677572 
 4123      655F6373 
 4123      5F626568 
 4124              	.LASF136:
 4125 00ae 5F776372 		.ascii	"_wcrtomb_state\000"
 4125      746F6D62 
 4125      5F737461 
 4125      746500
 4126              	.LASF137:
 4127 00bd 5F776373 		.ascii	"_wcsrtombs_state\000"
 4127      72746F6D 
 4127      62735F73 
 4127      74617465 
 4127      00
 4128              	.LASF13:
 4129 00ce 6C6F6E67 		.ascii	"long long unsigned int\000"
ARM GAS  /tmp/cczatnhQ.s 			page 94


 4129      206C6F6E 
 4129      6720756E 
 4129      7369676E 
 4129      65642069 
 4130              	.LASF75:
 4131 00e5 5F6C6266 		.ascii	"_lbfsize\000"
 4131      73697A65 
 4131      00
 4132              	.LASF193:
 4133 00ee 7370695F 		.ascii	"spi_set_peripheral_chip_select_value\000"
 4133      7365745F 
 4133      70657269 
 4133      70686572 
 4133      616C5F63 
 4134              	.LASF22:
 4135 0113 5350495F 		.ascii	"SPI_CR\000"
 4135      435200
 4136              	.LASF20:
 4137 011a 49544D5F 		.ascii	"ITM_RxBuffer\000"
 4137      52784275 
 4137      66666572 
 4137      00
 4138              	.LASF134:
 4139 0127 5F6D6272 		.ascii	"_mbrtowc_state\000"
 4139      746F7763 
 4139      5F737461 
 4139      746500
 4140              	.LASF129:
 4141 0136 5F776374 		.ascii	"_wctomb_state\000"
 4141      6F6D625F 
 4141      73746174 
 4141      6500
 4142              	.LASF52:
 4143 0144 5F5F746D 		.ascii	"__tm_sec\000"
 4143      5F736563 
 4143      00
 4144              	.LASF15:
 4145 014d 696E7431 		.ascii	"int16_t\000"
 4145      365F7400 
 4146              	.LASF80:
 4147 0155 5F636C6F 		.ascii	"_close\000"
 4147      736500
 4148              	.LASF180:
 4149 015c 756C5F70 		.ascii	"ul_phase\000"
 4149      68617365 
 4149      00
 4150              	.LASF161:
 4151 0165 5350495F 		.ascii	"SPI_CS_RISE_FORCED\000"
 4151      43535F52 
 4151      4953455F 
 4151      464F5243 
 4151      454400
 4152              	.LASF70:
 4153 0178 5F626173 		.ascii	"_base\000"
 4153      6500
 4154              	.LASF173:
 4155 017e 62617564 		.ascii	"baudrate\000"
ARM GAS  /tmp/cczatnhQ.s 			page 95


 4155      72617465 
 4155      00
 4156              	.LASF32:
 4157 0187 52657365 		.ascii	"Reserved2\000"
 4157      72766564 
 4157      3200
 4158              	.LASF192:
 4159 0191 756C5F64 		.ascii	"ul_delay\000"
 4159      656C6179 
 4159      00
 4160              	.LASF110:
 4161 019a 5F5F7366 		.ascii	"__sf\000"
 4161      00
 4162              	.LASF61:
 4163 019f 5F6F6E5F 		.ascii	"_on_exit_args\000"
 4163      65786974 
 4163      5F617267 
 4163      7300
 4164              	.LASF33:
 4165 01ad 5350495F 		.ascii	"SPI_WPMR\000"
 4165      57504D52 
 4165      00
 4166              	.LASF76:
 4167 01b6 5F636F6F 		.ascii	"_cookie\000"
 4167      6B696500 
 4168              	.LASF166:
 4169 01be 756C5F70 		.ascii	"ul_pcs_ch\000"
 4169      63735F63 
 4169      6800
 4170              	.LASF109:
 4171 01c8 5F5F7367 		.ascii	"__sglue\000"
 4171      6C756500 
 4172              	.LASF9:
 4173 01d0 6C6F6E67 		.ascii	"long int\000"
 4173      20696E74 
 4173      00
 4174              	.LASF142:
 4175 01d9 5F696D70 		.ascii	"_impure_ptr\000"
 4175      7572655F 
 4175      70747200 
 4176              	.LASF106:
 4177 01e5 5F6E6577 		.ascii	"_new\000"
 4177      00
 4178              	.LASF73:
 4179 01ea 5F666C61 		.ascii	"_flags\000"
 4179      677300
 4180              	.LASF200:
 4181 01f1 706D635F 		.ascii	"pmc_disable_periph_clk\000"
 4181      64697361 
 4181      626C655F 
 4181      70657269 
 4181      70685F63 
 4182              	.LASF49:
 4183 0208 5F776473 		.ascii	"_wds\000"
 4183      00
 4184              	.LASF81:
 4185 020d 5F756275 		.ascii	"_ubuf\000"
ARM GAS  /tmp/cczatnhQ.s 			page 96


 4185      6600
 4186              	.LASF26:
 4187 0213 5350495F 		.ascii	"SPI_SR\000"
 4187      535200
 4188              	.LASF164:
 4189 021a 7370695F 		.ascii	"spi_set_writeprotect\000"
 4189      7365745F 
 4189      77726974 
 4189      6570726F 
 4189      74656374 
 4190              	.LASF171:
 4191 022f 75635F62 		.ascii	"uc_baudrate_divider\000"
 4191      61756472 
 4191      6174655F 
 4191      64697669 
 4191      64657200 
 4192              	.LASF12:
 4193 0243 6C6F6E67 		.ascii	"long long int\000"
 4193      206C6F6E 
 4193      6720696E 
 4193      7400
 4194              	.LASF16:
 4195 0251 75696E74 		.ascii	"uint16_t\000"
 4195      31365F74 
 4195      00
 4196              	.LASF167:
 4197 025a 75635F64 		.ascii	"uc_dlybs\000"
 4197      6C796273 
 4197      00
 4198              	.LASF186:
 4199 0263 75635F6C 		.ascii	"uc_last\000"
 4199      61737400 
 4200              	.LASF165:
 4201 026b 7370695F 		.ascii	"spi_set_transfer_delay\000"
 4201      7365745F 
 4201      7472616E 
 4201      73666572 
 4201      5F64656C 
 4202              	.LASF199:
 4203 0282 756C5F69 		.ascii	"ul_id\000"
 4203      6400
 4204              	.LASF105:
 4205 0288 5F637674 		.ascii	"_cvtbuf\000"
 4205      62756600 
 4206              	.LASF135:
 4207 0290 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 4207      72746F77 
 4207      63735F73 
 4207      74617465 
 4207      00
 4208              	.LASF133:
 4209 02a1 5F6D6272 		.ascii	"_mbrlen_state\000"
 4209      6C656E5F 
 4209      73746174 
 4209      6500
 4210              	.LASF62:
 4211 02af 5F666E61 		.ascii	"_fnargs\000"
ARM GAS  /tmp/cczatnhQ.s 			page 97


 4211      72677300 
 4212              	.LASF68:
 4213 02b7 5F666E73 		.ascii	"_fns\000"
 4213      00
 4214              	.LASF10:
 4215 02bc 5F5F7569 		.ascii	"__uint32_t\000"
 4215      6E743332 
 4215      5F7400
 4216              	.LASF206:
 4217 02c7 7265675F 		.ascii	"reg_value\000"
 4217      76616C75 
 4217      6500
 4218              	.LASF4:
 4219 02d1 5F5F696E 		.ascii	"__int16_t\000"
 4219      7431365F 
 4219      7400
 4220              	.LASF93:
 4221 02db 5F737464 		.ascii	"_stderr\000"
 4221      65727200 
 4222              	.LASF50:
 4223 02e3 5F426967 		.ascii	"_Bigint\000"
 4223      696E7400 
 4224              	.LASF174:
 4225 02eb 62617564 		.ascii	"baud_div\000"
 4225      5F646976 
 4225      00
 4226              	.LASF83:
 4227 02f4 5F626C6B 		.ascii	"_blksize\000"
 4227      73697A65 
 4227      00
 4228              	.LASF140:
 4229 02fd 5F6E6D61 		.ascii	"_nmalloc\000"
 4229      6C6C6F63 
 4229      00
 4230              	.LASF101:
 4231 0306 5F726573 		.ascii	"_result_k\000"
 4231      756C745F 
 4231      6B00
 4232              	.LASF51:
 4233 0310 5F5F746D 		.ascii	"__tm\000"
 4233      00
 4234              	.LASF87:
 4235 0315 5F6D6273 		.ascii	"_mbstate\000"
 4235      74617465 
 4235      00
 4236              	.LASF40:
 4237 031e 5F5F7763 		.ascii	"__wchb\000"
 4237      686200
 4238              	.LASF21:
 4239 0325 53797374 		.ascii	"SystemCoreClock\000"
 4239      656D436F 
 4239      7265436C 
 4239      6F636B00 
 4240              	.LASF104:
 4241 0335 5F637674 		.ascii	"_cvtlen\000"
 4241      6C656E00 
 4242              	.LASF11:
ARM GAS  /tmp/cczatnhQ.s 			page 98


 4243 033d 6C6F6E67 		.ascii	"long unsigned int\000"
 4243      20756E73 
 4243      69676E65 
 4243      6420696E 
 4243      7400
 4244              	.LASF74:
 4245 034f 5F66696C 		.ascii	"_file\000"
 4245      6500
 4246              	.LASF187:
 4247 0355 74696D65 		.ascii	"timeout\000"
 4247      6F757400 
 4248              	.LASF30:
 4249 035d 52657365 		.ascii	"Reserved1\000"
 4249      72766564 
 4249      3100
 4250              	.LASF85:
 4251 0367 5F646174 		.ascii	"_data\000"
 4251      6100
 4252              	.LASF114:
 4253 036d 5F6E696F 		.ascii	"_niobs\000"
 4253      627300
 4254              	.LASF195:
 4255 0374 7370695F 		.ascii	"spi_disable_clock\000"
 4255      64697361 
 4255      626C655F 
 4255      636C6F63 
 4255      6B00
 4256              	.LASF7:
 4257 0386 73686F72 		.ascii	"short unsigned int\000"
 4257      7420756E 
 4257      7369676E 
 4257      65642069 
 4257      6E7400
 4258              	.LASF190:
 4259 0399 705F7063 		.ascii	"p_pcs\000"
 4259      7300
 4260              	.LASF107:
 4261 039f 5F617465 		.ascii	"_atexit0\000"
 4261      78697430 
 4261      00
 4262              	.LASF131:
 4263 03a8 5F736967 		.ascii	"_signal_buf\000"
 4263      6E616C5F 
 4263      62756600 
 4264              	.LASF122:
 4265 03b4 5F617363 		.ascii	"_asctime_buf\000"
 4265      74696D65 
 4265      5F627566 
 4265      00
 4266              	.LASF157:
 4267 03c1 5350495F 		.ascii	"SPI_ERROR_OVERRUN_AND_MODE_FAULT\000"
 4267      4552524F 
 4267      525F4F56 
 4267      45525255 
 4267      4E5F414E 
 4268              	.LASF100:
 4269 03e2 5F726573 		.ascii	"_result\000"
ARM GAS  /tmp/cczatnhQ.s 			page 99


 4269      756C7400 
 4270              	.LASF39:
 4271 03ea 5F5F7763 		.ascii	"__wch\000"
 4271      6800
 4272              	.LASF139:
 4273 03f0 5F6E6578 		.ascii	"_nextf\000"
 4273      746600
 4274              	.LASF23:
 4275 03f7 5350495F 		.ascii	"SPI_MR\000"
 4275      4D5200
 4276              	.LASF86:
 4277 03fe 5F6C6F63 		.ascii	"_lock\000"
 4277      6B00
 4278              	.LASF144:
 4279 0404 7375626F 		.ascii	"suboptarg\000"
 4279      70746172 
 4279      6700
 4280              	.LASF118:
 4281 040e 5F6D756C 		.ascii	"_mult\000"
 4281      7400
 4282              	.LASF153:
 4283 0414 5350495F 		.ascii	"SPI_ERROR_TIMEOUT\000"
 4283      4552524F 
 4283      525F5449 
 4283      4D454F55 
 4283      5400
 4284              	.LASF78:
 4285 0426 5F777269 		.ascii	"_write\000"
 4285      746500
 4286              	.LASF57:
 4287 042d 5F5F746D 		.ascii	"__tm_year\000"
 4287      5F796561 
 4287      7200
 4288              	.LASF120:
 4289 0437 5F756E75 		.ascii	"_unused_rand\000"
 4289      7365645F 
 4289      72616E64 
 4289      00
 4290              	.LASF124:
 4291 0444 5F67616D 		.ascii	"_gamma_signgam\000"
 4291      6D615F73 
 4291      69676E67 
 4291      616D00
 4292              	.LASF148:
 4293 0453 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 4293      6972715F 
 4293      70726576 
 4293      5F696E74 
 4293      65727275 
 4294              	.LASF19:
 4295 0470 73697A65 		.ascii	"sizetype\000"
 4295      74797065 
 4295      00
 4296              	.LASF84:
 4297 0479 5F6F6666 		.ascii	"_offset\000"
 4297      73657400 
 4298              	.LASF194:
ARM GAS  /tmp/cczatnhQ.s 			page 100


 4299 0481 756C5F76 		.ascii	"ul_value\000"
 4299      616C7565 
 4299      00
 4300              	.LASF169:
 4301 048a 7370695F 		.ascii	"spi_get_writeprotect_status\000"
 4301      6765745F 
 4301      77726974 
 4301      6570726F 
 4301      74656374 
 4302              	.LASF170:
 4303 04a6 7370695F 		.ascii	"spi_set_baudrate_div\000"
 4303      7365745F 
 4303      62617564 
 4303      72617465 
 4303      5F646976 
 4304              	.LASF202:
 4305 04bb 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 4305      43393920 
 4305      362E332E 
 4305      31203230 
 4305      31373036 
 4306 04ee 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 4306      76352D64 
 4306      3136202D 
 4306      6D666C6F 
 4306      61742D61 
 4307 0521 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 4307      6E2D7365 
 4307      6374696F 
 4307      6E73202D 
 4307      66646174 
 4308 0554 6F6E7374 		.ascii	"onstant\000"
 4308      616E7400 
 4309              	.LASF162:
 4310 055c 705F7370 		.ascii	"p_spi\000"
 4310      6900
 4311              	.LASF44:
 4312 0562 5F666C6F 		.ascii	"_flock_t\000"
 4312      636B5F74 
 4312      00
 4313              	.LASF56:
 4314 056b 5F5F746D 		.ascii	"__tm_mon\000"
 4314      5F6D6F6E 
 4314      00
 4315              	.LASF66:
 4316 0574 5F617465 		.ascii	"_atexit\000"
 4316      78697400 
 4317              	.LASF123:
 4318 057c 5F6C6F63 		.ascii	"_localtime_buf\000"
 4318      616C7469 
 4318      6D655F62 
 4318      756600
 4319              	.LASF203:
 4320 058b 2E2E2F61 		.ascii	"../asf/sam/drivers/spi/spi.c\000"
 4320      73662F73 
 4320      616D2F64 
 4320      72697665 
ARM GAS  /tmp/cczatnhQ.s 			page 101


 4320      72732F73 
 4321              	.LASF98:
 4322 05a8 5F5F7364 		.ascii	"__sdidinit\000"
 4322      6964696E 
 4322      697400
 4323              	.LASF36:
 4324 05b3 5F6F6666 		.ascii	"_off_t\000"
 4324      5F7400
 4325              	.LASF197:
 4326 05ba 73797363 		.ascii	"sysclk_disable_peripheral_clock\000"
 4326      6C6B5F64 
 4326      69736162 
 4326      6C655F70 
 4326      65726970 
 4327              	.LASF149:
 4328 05da 666C6F61 		.ascii	"float\000"
 4328      7400
 4329              	.LASF145:
 4330 05e0 675F696E 		.ascii	"g_interrupt_enabled\000"
 4330      74657272 
 4330      7570745F 
 4330      656E6162 
 4330      6C656400 
 4331              	.LASF151:
 4332 05f4 5350495F 		.ascii	"SPI_ERROR\000"
 4332      4552524F 
 4332      5200
 4333              	.LASF189:
 4334 05fe 7370695F 		.ascii	"spi_read\000"
 4334      72656164 
 4334      00
 4335              	.LASF35:
 4336 0607 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 4336      4B5F5245 
 4336      43555253 
 4336      4956455F 
 4336      5400
 4337              	.LASF198:
 4338 0619 73797363 		.ascii	"sysclk_enable_peripheral_clock\000"
 4338      6C6B5F65 
 4338      6E61626C 
 4338      655F7065 
 4338      72697068 
 4339              	.LASF146:
 4340 0638 5F426F6F 		.ascii	"_Bool\000"
 4340      6C00
 4341              	.LASF17:
 4342 063e 696E7433 		.ascii	"int32_t\000"
 4342      325F7400 
 4343              	.LASF63:
 4344 0646 5F64736F 		.ascii	"_dso_handle\000"
 4344      5F68616E 
 4344      646C6500 
 4345              	.LASF183:
 4346 0652 7370695F 		.ascii	"spi_write\000"
 4346      77726974 
 4346      6500
ARM GAS  /tmp/cczatnhQ.s 			page 102


 4347              	.LASF0:
 4348 065c 756E7369 		.ascii	"unsigned int\000"
 4348      676E6564 
 4348      20696E74 
 4348      00
 4349              	.LASF204:
 4350 0669 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 4350      652F746F 
 4350      72626A6F 
 4350      726E2F65 
 4350      636C6970 
 4351              	.LASF138:
 4352 0698 5F685F65 		.ascii	"_h_errno\000"
 4352      72726E6F 
 4352      00
 4353              	.LASF127:
 4354 06a1 5F6D626C 		.ascii	"_mblen_state\000"
 4354      656E5F73 
 4354      74617465 
 4354      00
 4355              	.LASF59:
 4356 06ae 5F5F746D 		.ascii	"__tm_yday\000"
 4356      5F796461 
 4356      7900
 4357              	.LASF184:
 4358 06b8 75735F64 		.ascii	"us_data\000"
 4358      61746100 
 4359              	.LASF88:
 4360 06c0 5F666C61 		.ascii	"_flags2\000"
 4360      67733200 
 4361              	.LASF103:
 4362 06c8 5F667265 		.ascii	"_freelist\000"
 4362      656C6973 
 4362      7400
 4363              	.LASF152:
 4364 06d2 5350495F 		.ascii	"SPI_OK\000"
 4364      4F4B00
 4365              	.LASF112:
 4366 06d9 5F5F4649 		.ascii	"__FILE\000"
 4366      4C4500
 4367              	.LASF43:
 4368 06e0 5F6D6273 		.ascii	"_mbstate_t\000"
 4368      74617465 
 4368      5F7400
 4369              	.LASF28:
 4370 06eb 5350495F 		.ascii	"SPI_IDR\000"
 4370      49445200 
 4371              	.LASF207:
 4372 06f3 7370695F 		.ascii	"spi_get_peripheral_select_mode\000"
 4372      6765745F 
 4372      70657269 
 4372      70686572 
 4372      616C5F73 
 4373              	.LASF125:
 4374 0712 5F72616E 		.ascii	"_rand_next\000"
 4374      645F6E65 
 4374      787400
ARM GAS  /tmp/cczatnhQ.s 			page 103


 4375              	.LASF25:
 4376 071d 5350495F 		.ascii	"SPI_TDR\000"
 4376      54445200 
 4377              	.LASF115:
 4378 0725 5F696F62 		.ascii	"_iobs\000"
 4378      7300
 4379              	.LASF94:
 4380 072b 5F696E63 		.ascii	"_inc\000"
 4380      00
 4381              	.LASF67:
 4382 0730 5F696E64 		.ascii	"_ind\000"
 4382      00
 4383              	.LASF97:
 4384 0735 5F637572 		.ascii	"_current_locale\000"
 4384      72656E74 
 4384      5F6C6F63 
 4384      616C6500 
 4385              	.LASF99:
 4386 0745 5F5F636C 		.ascii	"__cleanup\000"
 4386      65616E75 
 4386      7000
 4387              	.LASF163:
 4388 074f 756C5F65 		.ascii	"ul_enable\000"
 4388      6E61626C 
 4388      6500
 4389              	.LASF181:
 4390 0759 7370695F 		.ascii	"spi_set_clock_polarity\000"
 4390      7365745F 
 4390      636C6F63 
 4390      6B5F706F 
 4390      6C617269 
 4391              	.LASF47:
 4392 0770 5F6D6178 		.ascii	"_maxwds\000"
 4392      77647300 
 4393              	.LASF89:
 4394 0778 5F726565 		.ascii	"_reent\000"
 4394      6E7400
 4395              	.LASF117:
 4396 077f 5F736565 		.ascii	"_seed\000"
 4396      6400
 4397              	.LASF38:
 4398 0785 77696E74 		.ascii	"wint_t\000"
 4398      5F7400
 4399              	.LASF150:
 4400 078c 646F7562 		.ascii	"double\000"
 4400      6C6500
 4401              	.LASF41:
 4402 0793 5F5F636F 		.ascii	"__count\000"
 4402      756E7400 
 4403              	.LASF18:
 4404 079b 75696E74 		.ascii	"uint32_t\000"
 4404      33325F74 
 4404      00
 4405              	.LASF54:
 4406 07a4 5F5F746D 		.ascii	"__tm_hour\000"
 4406      5F686F75 
 4406      7200
ARM GAS  /tmp/cczatnhQ.s 			page 104


 4407              	.LASF178:
 4408 07ae 756C5F63 		.ascii	"ul_cs_behavior\000"
 4408      735F6265 
 4408      68617669 
 4408      6F7200
 4409              	.LASF31:
 4410 07bd 5350495F 		.ascii	"SPI_CSR\000"
 4410      43535200 
 4411              	.LASF58:
 4412 07c5 5F5F746D 		.ascii	"__tm_wday\000"
 4412      5F776461 
 4412      7900
 4413              	.LASF37:
 4414 07cf 5F66706F 		.ascii	"_fpos_t\000"
 4414      735F7400 
 4415              	.LASF111:
 4416 07d7 63686172 		.ascii	"char\000"
 4416      00
 4417              	.LASF156:
 4418 07dc 5350495F 		.ascii	"SPI_ERROR_MODE_FAULT\000"
 4418      4552524F 
 4418      525F4D4F 
 4418      44455F46 
 4418      41554C54 
 4419              	.LASF205:
 4420 07f1 7370695F 		.ascii	"spi_cs_behavior\000"
 4420      63735F62 
 4420      65686176 
 4420      696F7200 
 4421              	.LASF90:
 4422 0801 5F657272 		.ascii	"_errno\000"
 4422      6E6F00
 4423              	.LASF201:
 4424 0808 706D635F 		.ascii	"pmc_enable_periph_clk\000"
 4424      656E6162 
 4424      6C655F70 
 4424      65726970 
 4424      685F636C 
 4425              	.LASF158:
 4426 081e 7370695F 		.ascii	"spi_status_t\000"
 4426      73746174 
 4426      75735F74 
 4426      00
 4427              	.LASF71:
 4428 082b 5F73697A 		.ascii	"_size\000"
 4428      6500
 4429              	.LASF168:
 4430 0831 75635F64 		.ascii	"uc_dlybct\000"
 4430      6C796263 
 4430      7400
 4431              	.LASF6:
 4432 083b 5F5F7569 		.ascii	"__uint16_t\000"
 4432      6E743136 
 4432      5F7400
 4433              	.LASF8:
 4434 0846 5F5F696E 		.ascii	"__int32_t\000"
 4434      7433325F 
ARM GAS  /tmp/cczatnhQ.s 			page 105


 4434      7400
 4435              	.LASF48:
 4436 0850 5F736967 		.ascii	"_sign\000"
 4436      6E00
 4437              	.LASF46:
 4438 0856 5F6E6578 		.ascii	"_next\000"
 4438      7400
 4439              	.LASF121:
 4440 085c 5F737472 		.ascii	"_strtok_last\000"
 4440      746F6B5F 
 4440      6C617374 
 4440      00
 4441              	.LASF27:
 4442 0869 5350495F 		.ascii	"SPI_IER\000"
 4442      49455200 
 4443              	.LASF64:
 4444 0871 5F666E74 		.ascii	"_fntypes\000"
 4444      79706573 
 4444      00
 4445              	.LASF2:
 4446 087a 756E7369 		.ascii	"unsigned char\000"
 4446      676E6564 
 4446      20636861 
 4446      7200
 4447              	.LASF119:
 4448 0888 5F616464 		.ascii	"_add\000"
 4448      00
 4449              	.LASF45:
 4450 088d 5F5F554C 		.ascii	"__ULong\000"
 4450      6F6E6700 
 4451              	.LASF154:
 4452 0895 5350495F 		.ascii	"SPI_ERROR_ARGUMENT\000"
 4452      4552524F 
 4452      525F4152 
 4452      47554D45 
 4452      4E5400
 4453              	.LASF143:
 4454 08a8 5F676C6F 		.ascii	"_global_impure_ptr\000"
 4454      62616C5F 
 4454      696D7075 
 4454      72655F70 
 4454      747200
 4455              	.LASF96:
 4456 08bb 5F637572 		.ascii	"_current_category\000"
 4456      72656E74 
 4456      5F636174 
 4456      65676F72 
 4456      7900
 4457              	.LASF196:
 4458 08cd 7370695F 		.ascii	"spi_enable_clock\000"
 4458      656E6162 
 4458      6C655F63 
 4458      6C6F636B 
 4458      00
 4459              	.LASF29:
 4460 08de 5350495F 		.ascii	"SPI_IMR\000"
 4460      494D5200 
ARM GAS  /tmp/cczatnhQ.s 			page 106


 4461              	.LASF79:
 4462 08e6 5F736565 		.ascii	"_seek\000"
 4462      6B00
 4463              	.LASF92:
 4464 08ec 5F737464 		.ascii	"_stdout\000"
 4464      6F757400 
 4465              	.LASF175:
 4466 08f4 7370695F 		.ascii	"spi_set_bits_per_transfer\000"
 4466      7365745F 
 4466      62697473 
 4466      5F706572 
 4466      5F747261 
 4467              	.LASF113:
 4468 090e 5F676C75 		.ascii	"_glue\000"
 4468      6500
 4469              	.LASF91:
 4470 0914 5F737464 		.ascii	"_stdin\000"
 4470      696E00
 4471              	.LASF42:
 4472 091b 5F5F7661 		.ascii	"__value\000"
 4472      6C756500 
 4473              	.LASF14:
 4474 0923 75696E74 		.ascii	"uint8_t\000"
 4474      385F7400 
 4475              	.LASF130:
 4476 092b 5F6C3634 		.ascii	"_l64a_buf\000"
 4476      615F6275 
 4476      6600
 4477              	.LASF108:
 4478 0935 5F736967 		.ascii	"_sig_func\000"
 4478      5F66756E 
 4478      6300
 4479              	.LASF147:
 4480 093f 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 4480      6972715F 
 4480      63726974 
 4480      6963616C 
 4480      5F736563 
 4481              	.LASF179:
 4482 0960 7370695F 		.ascii	"spi_set_clock_phase\000"
 4482      7365745F 
 4482      636C6F63 
 4482      6B5F7068 
 4482      61736500 
 4483              	.LASF77:
 4484 0974 5F726561 		.ascii	"_read\000"
 4484      6400
 4485              	.LASF82:
 4486 097a 5F6E6275 		.ascii	"_nbuf\000"
 4486      6600
 4487              	.LASF141:
 4488 0980 5F756E75 		.ascii	"_unused\000"
 4488      73656400 
 4489              	.LASF60:
 4490 0988 5F5F746D 		.ascii	"__tm_isdst\000"
 4490      5F697364 
 4490      737400
ARM GAS  /tmp/cczatnhQ.s 			page 107


 4491              	.LASF172:
 4492 0993 7370695F 		.ascii	"spi_calc_baudrate_div\000"
 4492      63616C63 
 4492      5F626175 
 4492      64726174 
 4492      655F6469 
 4493              	.LASF53:
 4494 09a9 5F5F746D 		.ascii	"__tm_min\000"
 4494      5F6D696E 
 4494      00
 4495              	.LASF126:
 4496 09b2 5F723438 		.ascii	"_r48\000"
 4496      00
 4497              	.LASF128:
 4498 09b7 5F6D6274 		.ascii	"_mbtowc_state\000"
 4498      6F77635F 
 4498      73746174 
 4498      6500
 4499              	.LASF102:
 4500 09c5 5F703573 		.ascii	"_p5s\000"
 4500      00
 4501              	.LASF160:
 4502 09ca 5350495F 		.ascii	"SPI_CS_RISE_NO_TX\000"
 4502      43535F52 
 4502      4953455F 
 4502      4E4F5F54 
 4502      5800
 4503              	.LASF34:
 4504 09dc 5350495F 		.ascii	"SPI_WPSR\000"
 4504      57505352 
 4504      00
 4505              	.LASF185:
 4506 09e5 75635F70 		.ascii	"uc_pcs\000"
 4506      637300
 4507              	.LASF69:
 4508 09ec 5F5F7362 		.ascii	"__sbuf\000"
 4508      756600
 4509              	.LASF191:
 4510 09f3 7370695F 		.ascii	"spi_set_delay_between_chip_select\000"
 4510      7365745F 
 4510      64656C61 
 4510      795F6265 
 4510      74776565 
 4511              	.LASF55:
 4512 0a15 5F5F746D 		.ascii	"__tm_mday\000"
 4512      5F6D6461 
 4512      7900
 4513              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
