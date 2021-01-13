ARM GAS  /tmp/ccizFQRG.s 			page 1


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
  12              		.file	"sysclk.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.sysclk_set_prescalers,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	sysclk_set_prescalers
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	sysclk_set_prescalers, %function
  25              	sysclk_set_prescalers:
  26              	.LFB162:
  27              		.file 1 "../asf/common/services/clock/same70/sysclk.c"
   1:../asf/common/services/clock/same70/sysclk.c **** /**
   2:../asf/common/services/clock/same70/sysclk.c ****  * \file
   3:../asf/common/services/clock/same70/sysclk.c ****  *
   4:../asf/common/services/clock/same70/sysclk.c ****  * \brief Chip-specific system clock management functions.
   5:../asf/common/services/clock/same70/sysclk.c ****  *
   6:../asf/common/services/clock/same70/sysclk.c ****  * Copyright (c) 2015 Atmel Corporation. All rights reserved.
   7:../asf/common/services/clock/same70/sysclk.c ****  *
   8:../asf/common/services/clock/same70/sysclk.c ****  * \asf_license_start
   9:../asf/common/services/clock/same70/sysclk.c ****  *
  10:../asf/common/services/clock/same70/sysclk.c ****  * \page License
  11:../asf/common/services/clock/same70/sysclk.c ****  *
  12:../asf/common/services/clock/same70/sysclk.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/common/services/clock/same70/sysclk.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/common/services/clock/same70/sysclk.c ****  *
  15:../asf/common/services/clock/same70/sysclk.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/common/services/clock/same70/sysclk.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/common/services/clock/same70/sysclk.c ****  *
  18:../asf/common/services/clock/same70/sysclk.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/common/services/clock/same70/sysclk.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/common/services/clock/same70/sysclk.c ****  *    and/or other materials provided with the distribution.
  21:../asf/common/services/clock/same70/sysclk.c ****  *
  22:../asf/common/services/clock/same70/sysclk.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/common/services/clock/same70/sysclk.c ****  *    from this software without specific prior written permission.
  24:../asf/common/services/clock/same70/sysclk.c ****  *
  25:../asf/common/services/clock/same70/sysclk.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/common/services/clock/same70/sysclk.c ****  *    Atmel microcontroller product.
  27:../asf/common/services/clock/same70/sysclk.c ****  *
  28:../asf/common/services/clock/same70/sysclk.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/common/services/clock/same70/sysclk.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/common/services/clock/same70/sysclk.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccizFQRG.s 			page 2


  31:../asf/common/services/clock/same70/sysclk.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/common/services/clock/same70/sysclk.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/common/services/clock/same70/sysclk.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/common/services/clock/same70/sysclk.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/common/services/clock/same70/sysclk.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/common/services/clock/same70/sysclk.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/common/services/clock/same70/sysclk.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/common/services/clock/same70/sysclk.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/common/services/clock/same70/sysclk.c ****  *
  40:../asf/common/services/clock/same70/sysclk.c ****  * \asf_license_stop
  41:../asf/common/services/clock/same70/sysclk.c ****  *
  42:../asf/common/services/clock/same70/sysclk.c ****  */
  43:../asf/common/services/clock/same70/sysclk.c **** /*
  44:../asf/common/services/clock/same70/sysclk.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/common/services/clock/same70/sysclk.c ****  */
  46:../asf/common/services/clock/same70/sysclk.c **** 
  47:../asf/common/services/clock/same70/sysclk.c **** #include <sysclk.h>
  48:../asf/common/services/clock/same70/sysclk.c **** 
  49:../asf/common/services/clock/same70/sysclk.c **** /// @cond 0
  50:../asf/common/services/clock/same70/sysclk.c **** /**INDENT-OFF**/
  51:../asf/common/services/clock/same70/sysclk.c **** #ifdef __cplusplus
  52:../asf/common/services/clock/same70/sysclk.c **** extern "C" {
  53:../asf/common/services/clock/same70/sysclk.c **** #endif
  54:../asf/common/services/clock/same70/sysclk.c **** /**INDENT-ON**/
  55:../asf/common/services/clock/same70/sysclk.c **** /// @endcond
  56:../asf/common/services/clock/same70/sysclk.c **** 
  57:../asf/common/services/clock/same70/sysclk.c **** /**
  58:../asf/common/services/clock/same70/sysclk.c ****  * \weakgroup sysclk_group
  59:../asf/common/services/clock/same70/sysclk.c ****  * @{
  60:../asf/common/services/clock/same70/sysclk.c ****  */
  61:../asf/common/services/clock/same70/sysclk.c **** 
  62:../asf/common/services/clock/same70/sysclk.c **** #if defined(CONFIG_SYSCLK_DEFAULT_RETURNS_SLOW_OSC)
  63:../asf/common/services/clock/same70/sysclk.c **** /**
  64:../asf/common/services/clock/same70/sysclk.c ****  * \brief boolean signalling that the sysclk_init is done.
  65:../asf/common/services/clock/same70/sysclk.c ****  */
  66:../asf/common/services/clock/same70/sysclk.c **** uint32_t sysclk_initialized = 0;
  67:../asf/common/services/clock/same70/sysclk.c **** #endif
  68:../asf/common/services/clock/same70/sysclk.c **** 
  69:../asf/common/services/clock/same70/sysclk.c **** /**
  70:../asf/common/services/clock/same70/sysclk.c ****  * \brief Set system clock prescaler configuration
  71:../asf/common/services/clock/same70/sysclk.c ****  *
  72:../asf/common/services/clock/same70/sysclk.c ****  * This function will change the system clock prescaler configuration to
  73:../asf/common/services/clock/same70/sysclk.c ****  * match the parameters.
  74:../asf/common/services/clock/same70/sysclk.c ****  *
  75:../asf/common/services/clock/same70/sysclk.c ****  * \note The parameters to this function are device-specific.
  76:../asf/common/services/clock/same70/sysclk.c ****  *
  77:../asf/common/services/clock/same70/sysclk.c ****  * \param ul_pres The CPU clock will be divided by \f$2^{mck\_pres}\f$
  78:../asf/common/services/clock/same70/sysclk.c ****  */
  79:../asf/common/services/clock/same70/sysclk.c **** void sysclk_set_prescalers(uint32_t ul_pres)
  80:../asf/common/services/clock/same70/sysclk.c **** {
  28              		.loc 1 80 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              	.LVL0:
  33 0000 08B5     		push	{r3, lr}
  34              		.cfi_def_cfa_offset 8
ARM GAS  /tmp/ccizFQRG.s 			page 3


  35              		.cfi_offset 3, -8
  36              		.cfi_offset 14, -4
  81:../asf/common/services/clock/same70/sysclk.c **** 	pmc_mck_set_prescaler(ul_pres);
  37              		.loc 1 81 0
  38 0002 FFF7FEFF 		bl	pmc_mck_set_prescaler
  39              	.LVL1:
  82:../asf/common/services/clock/same70/sysclk.c **** 	SystemCoreClockUpdate();
  83:../asf/common/services/clock/same70/sysclk.c **** }
  40              		.loc 1 83 0
  41 0006 BDE80840 		pop	{r3, lr}
  42              		.cfi_restore 14
  43              		.cfi_restore 3
  44              		.cfi_def_cfa_offset 0
  82:../asf/common/services/clock/same70/sysclk.c **** 	SystemCoreClockUpdate();
  45              		.loc 1 82 0
  46 000a FFF7FEBF 		b	SystemCoreClockUpdate
  47              	.LVL2:
  48              		.cfi_endproc
  49              	.LFE162:
  50              		.size	sysclk_set_prescalers, .-sysclk_set_prescalers
  51 000e 00BF     		.section	.text.sysclk_set_source,"ax",%progbits
  52              		.align	1
  53              		.p2align 2,,3
  54              		.global	sysclk_set_source
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
  58              		.fpu fpv5-d16
  59              		.type	sysclk_set_source, %function
  60              	sysclk_set_source:
  61              	.LFB163:
  84:../asf/common/services/clock/same70/sysclk.c **** 
  85:../asf/common/services/clock/same70/sysclk.c **** /**
  86:../asf/common/services/clock/same70/sysclk.c ****  * \brief Change the source of the main system clock.
  87:../asf/common/services/clock/same70/sysclk.c ****  *
  88:../asf/common/services/clock/same70/sysclk.c ****  * \param ul_src The new system clock source. Must be one of the constants
  89:../asf/common/services/clock/same70/sysclk.c ****  * from the <em>System Clock Sources</em> section.
  90:../asf/common/services/clock/same70/sysclk.c ****  */
  91:../asf/common/services/clock/same70/sysclk.c **** void sysclk_set_source(uint32_t ul_src)
  92:../asf/common/services/clock/same70/sysclk.c **** {
  62              		.loc 1 92 0
  63              		.cfi_startproc
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66              	.LVL3:
  67 0000 08B5     		push	{r3, lr}
  68              		.cfi_def_cfa_offset 8
  69              		.cfi_offset 3, -8
  70              		.cfi_offset 14, -4
  93:../asf/common/services/clock/same70/sysclk.c **** 	switch (ul_src) {
  71              		.loc 1 93 0
  72 0002 0928     		cmp	r0, #9
  73 0004 09D8     		bhi	.L4
  74 0006 DFE800F0 		tbb	[pc, r0]
  75              	.L6:
  76 000a 1A       		.byte	(.L5-.L6)/2
  77 000b 1A       		.byte	(.L5-.L6)/2
ARM GAS  /tmp/ccizFQRG.s 			page 4


  78 000c 1A       		.byte	(.L5-.L6)/2
  79 000d 13       		.byte	(.L7-.L6)/2
  80 000e 13       		.byte	(.L7-.L6)/2
  81 000f 13       		.byte	(.L7-.L6)/2
  82 0010 13       		.byte	(.L7-.L6)/2
  83 0011 13       		.byte	(.L7-.L6)/2
  84 0012 0C       		.byte	(.L8-.L6)/2
  85 0013 05       		.byte	(.L9-.L6)/2
  86              		.p2align 1
  87              	.L9:
  94:../asf/common/services/clock/same70/sysclk.c **** 	case SYSCLK_SRC_SLCK_RC:
  95:../asf/common/services/clock/same70/sysclk.c **** 	case SYSCLK_SRC_SLCK_XTAL:
  96:../asf/common/services/clock/same70/sysclk.c **** 	case SYSCLK_SRC_SLCK_BYPASS:
  97:../asf/common/services/clock/same70/sysclk.c **** 		pmc_mck_set_source(PMC_MCKR_CSS_SLOW_CLK);
  98:../asf/common/services/clock/same70/sysclk.c **** 		break;
  99:../asf/common/services/clock/same70/sysclk.c **** 
 100:../asf/common/services/clock/same70/sysclk.c **** 	case SYSCLK_SRC_MAINCK_4M_RC:
 101:../asf/common/services/clock/same70/sysclk.c **** 	case SYSCLK_SRC_MAINCK_8M_RC:
 102:../asf/common/services/clock/same70/sysclk.c **** 	case SYSCLK_SRC_MAINCK_12M_RC:
 103:../asf/common/services/clock/same70/sysclk.c **** 	case SYSCLK_SRC_MAINCK_XTAL:
 104:../asf/common/services/clock/same70/sysclk.c **** 	case SYSCLK_SRC_MAINCK_BYPASS:
 105:../asf/common/services/clock/same70/sysclk.c **** 		pmc_mck_set_source(PMC_MCKR_CSS_MAIN_CLK);
 106:../asf/common/services/clock/same70/sysclk.c **** 		break;
 107:../asf/common/services/clock/same70/sysclk.c **** 
 108:../asf/common/services/clock/same70/sysclk.c **** 	case SYSCLK_SRC_PLLACK:
 109:../asf/common/services/clock/same70/sysclk.c **** 		pmc_mck_set_source(PMC_MCKR_CSS_PLLA_CLK);
 110:../asf/common/services/clock/same70/sysclk.c **** 		break;
 111:../asf/common/services/clock/same70/sysclk.c **** 
 112:../asf/common/services/clock/same70/sysclk.c **** 	case SYSCLK_SRC_UPLLCK:
 113:../asf/common/services/clock/same70/sysclk.c **** 		pmc_mck_set_source(PMC_MCKR_CSS_UPLL_CLK);
  88              		.loc 1 113 0
  89 0014 0320     		movs	r0, #3
  90              	.LVL4:
  91 0016 FFF7FEFF 		bl	pmc_mck_set_source
  92              	.LVL5:
  93              	.L4:
 114:../asf/common/services/clock/same70/sysclk.c **** 		break;
 115:../asf/common/services/clock/same70/sysclk.c **** 	}
 116:../asf/common/services/clock/same70/sysclk.c **** 
 117:../asf/common/services/clock/same70/sysclk.c **** 	SystemCoreClockUpdate();
 118:../asf/common/services/clock/same70/sysclk.c **** }
  94              		.loc 1 118 0
  95 001a BDE80840 		pop	{r3, lr}
  96              		.cfi_remember_state
  97              		.cfi_restore 14
  98              		.cfi_restore 3
  99              		.cfi_def_cfa_offset 0
 117:../asf/common/services/clock/same70/sysclk.c **** }
 100              		.loc 1 117 0
 101 001e FFF7FEBF 		b	SystemCoreClockUpdate
 102              	.LVL6:
 103              	.L8:
 104              		.cfi_restore_state
 109:../asf/common/services/clock/same70/sysclk.c **** 		break;
 105              		.loc 1 109 0
 106 0022 0220     		movs	r0, #2
 107              	.LVL7:
ARM GAS  /tmp/ccizFQRG.s 			page 5


 108 0024 FFF7FEFF 		bl	pmc_mck_set_source
 109              	.LVL8:
 110              		.loc 1 118 0
 111 0028 BDE80840 		pop	{r3, lr}
 112              		.cfi_remember_state
 113              		.cfi_restore 3
 114              		.cfi_restore 14
 115              		.cfi_def_cfa_offset 0
 117:../asf/common/services/clock/same70/sysclk.c **** }
 116              		.loc 1 117 0
 117 002c FFF7FEBF 		b	SystemCoreClockUpdate
 118              	.LVL9:
 119              	.L7:
 120              		.cfi_restore_state
 105:../asf/common/services/clock/same70/sysclk.c **** 		break;
 121              		.loc 1 105 0
 122 0030 0120     		movs	r0, #1
 123              	.LVL10:
 124 0032 FFF7FEFF 		bl	pmc_mck_set_source
 125              	.LVL11:
 126              		.loc 1 118 0
 127 0036 BDE80840 		pop	{r3, lr}
 128              		.cfi_remember_state
 129              		.cfi_restore 3
 130              		.cfi_restore 14
 131              		.cfi_def_cfa_offset 0
 117:../asf/common/services/clock/same70/sysclk.c **** }
 132              		.loc 1 117 0
 133 003a FFF7FEBF 		b	SystemCoreClockUpdate
 134              	.LVL12:
 135              	.L5:
 136              		.cfi_restore_state
  97:../asf/common/services/clock/same70/sysclk.c **** 		break;
 137              		.loc 1 97 0
 138 003e 0020     		movs	r0, #0
 139              	.LVL13:
 140 0040 FFF7FEFF 		bl	pmc_mck_set_source
 141              	.LVL14:
 142              		.loc 1 118 0
 143 0044 BDE80840 		pop	{r3, lr}
 144              		.cfi_restore 3
 145              		.cfi_restore 14
 146              		.cfi_def_cfa_offset 0
 117:../asf/common/services/clock/same70/sysclk.c **** }
 147              		.loc 1 117 0
 148 0048 FFF7FEBF 		b	SystemCoreClockUpdate
 149              	.LVL15:
 150              		.cfi_endproc
 151              	.LFE163:
 152              		.size	sysclk_set_source, .-sysclk_set_source
 153              		.section	.text.sysclk_enable_usb,"ax",%progbits
 154              		.align	1
 155              		.p2align 2,,3
 156              		.global	sysclk_enable_usb
 157              		.syntax unified
 158              		.thumb
 159              		.thumb_func
ARM GAS  /tmp/ccizFQRG.s 			page 6


 160              		.fpu fpv5-d16
 161              		.type	sysclk_enable_usb, %function
 162              	sysclk_enable_usb:
 163              	.LFB164:
 119:../asf/common/services/clock/same70/sysclk.c **** 
 120:../asf/common/services/clock/same70/sysclk.c **** #if defined(CONFIG_USBCLK_SOURCE) || defined(__DOXYGEN__)
 121:../asf/common/services/clock/same70/sysclk.c **** /**
 122:../asf/common/services/clock/same70/sysclk.c ****  * \brief Enable USB clock.
 123:../asf/common/services/clock/same70/sysclk.c ****  *
 124:../asf/common/services/clock/same70/sysclk.c ****  * \note The SAMV71 UDP hardware interprets div as div+1. For readability the hardware div+1
 125:../asf/common/services/clock/same70/sysclk.c ****  * is hidden in this implementation. Use div as div effective value.
 126:../asf/common/services/clock/same70/sysclk.c ****  *
 127:../asf/common/services/clock/same70/sysclk.c ****  * \param pll_id Source of the USB clock.
 128:../asf/common/services/clock/same70/sysclk.c ****  * \param div Actual clock divisor. Must be superior to 0.
 129:../asf/common/services/clock/same70/sysclk.c ****  */
 130:../asf/common/services/clock/same70/sysclk.c **** void sysclk_enable_usb(void)
 131:../asf/common/services/clock/same70/sysclk.c **** {
 164              		.loc 1 131 0
 165              		.cfi_startproc
 166              		@ args = 0, pretend = 0, frame = 0
 167              		@ frame_needed = 0, uses_anonymous_args = 0
 168 0000 08B5     		push	{r3, lr}
 169              		.cfi_def_cfa_offset 8
 170              		.cfi_offset 3, -8
 171              		.cfi_offset 14, -4
 132:../asf/common/services/clock/same70/sysclk.c **** 	Assert(CONFIG_USBCLK_DIV > 0);
 133:../asf/common/services/clock/same70/sysclk.c **** 
 134:../asf/common/services/clock/same70/sysclk.c **** #ifdef CONFIG_PLL0_SOURCE
 135:../asf/common/services/clock/same70/sysclk.c **** 	if (CONFIG_USBCLK_SOURCE == USBCLK_SRC_PLL0) {
 136:../asf/common/services/clock/same70/sysclk.c **** 		struct pll_config pllcfg;
 137:../asf/common/services/clock/same70/sysclk.c **** 
 138:../asf/common/services/clock/same70/sysclk.c **** 		pll_enable_source(CONFIG_PLL0_SOURCE);
 139:../asf/common/services/clock/same70/sysclk.c **** 		pll_config_defaults(&pllcfg, 0);
 140:../asf/common/services/clock/same70/sysclk.c **** 		pll_enable(&pllcfg, 0);
 141:../asf/common/services/clock/same70/sysclk.c **** 		pll_wait_for_lock(0);
 142:../asf/common/services/clock/same70/sysclk.c **** 		pmc_switch_udpck_to_pllack(CONFIG_USBCLK_DIV - 1);
 143:../asf/common/services/clock/same70/sysclk.c **** 		pmc_enable_udpck();
 144:../asf/common/services/clock/same70/sysclk.c **** 		return;
 145:../asf/common/services/clock/same70/sysclk.c **** 	}
 146:../asf/common/services/clock/same70/sysclk.c **** #endif
 147:../asf/common/services/clock/same70/sysclk.c **** 
 148:../asf/common/services/clock/same70/sysclk.c **** 	if (CONFIG_USBCLK_SOURCE == USBCLK_SRC_UPLL) {
 149:../asf/common/services/clock/same70/sysclk.c **** 
 150:../asf/common/services/clock/same70/sysclk.c **** 		pmc_enable_upll_clock();
 172              		.loc 1 150 0
 173 0002 FFF7FEFF 		bl	pmc_enable_upll_clock
 174              	.LVL16:
 151:../asf/common/services/clock/same70/sysclk.c **** 		pmc_switch_udpck_to_upllck(CONFIG_USBCLK_DIV - 1);
 175              		.loc 1 151 0
 176 0006 0020     		movs	r0, #0
 177 0008 FFF7FEFF 		bl	pmc_switch_udpck_to_upllck
 178              	.LVL17:
 152:../asf/common/services/clock/same70/sysclk.c **** 		pmc_enable_udpck();
 153:../asf/common/services/clock/same70/sysclk.c **** 		return;
 154:../asf/common/services/clock/same70/sysclk.c **** 	}
 155:../asf/common/services/clock/same70/sysclk.c **** }
 179              		.loc 1 155 0
ARM GAS  /tmp/ccizFQRG.s 			page 7


 180 000c BDE80840 		pop	{r3, lr}
 181              		.cfi_restore 14
 182              		.cfi_restore 3
 183              		.cfi_def_cfa_offset 0
 152:../asf/common/services/clock/same70/sysclk.c **** 		pmc_enable_udpck();
 184              		.loc 1 152 0
 185 0010 FFF7FEBF 		b	pmc_enable_udpck
 186              	.LVL18:
 187              		.cfi_endproc
 188              	.LFE164:
 189              		.size	sysclk_enable_usb, .-sysclk_enable_usb
 190              		.section	.text.sysclk_disable_usb,"ax",%progbits
 191              		.align	1
 192              		.p2align 2,,3
 193              		.global	sysclk_disable_usb
 194              		.syntax unified
 195              		.thumb
 196              		.thumb_func
 197              		.fpu fpv5-d16
 198              		.type	sysclk_disable_usb, %function
 199              	sysclk_disable_usb:
 200              	.LFB165:
 156:../asf/common/services/clock/same70/sysclk.c **** 
 157:../asf/common/services/clock/same70/sysclk.c **** /**
 158:../asf/common/services/clock/same70/sysclk.c ****  * \brief Disable the USB clock.
 159:../asf/common/services/clock/same70/sysclk.c ****  *
 160:../asf/common/services/clock/same70/sysclk.c ****  * \note This implementation does not switch off the PLL, it just turns off the USB clock.
 161:../asf/common/services/clock/same70/sysclk.c ****  */
 162:../asf/common/services/clock/same70/sysclk.c **** void sysclk_disable_usb(void)
 163:../asf/common/services/clock/same70/sysclk.c **** {
 201              		.loc 1 163 0
 202              		.cfi_startproc
 203              		@ args = 0, pretend = 0, frame = 0
 204              		@ frame_needed = 0, uses_anonymous_args = 0
 205              		@ link register save eliminated.
 164:../asf/common/services/clock/same70/sysclk.c **** 	pmc_disable_udpck();
 206              		.loc 1 164 0
 207 0000 FFF7FEBF 		b	pmc_disable_udpck
 208              	.LVL19:
 209              		.cfi_endproc
 210              	.LFE165:
 211              		.size	sysclk_disable_usb, .-sysclk_disable_usb
 212              		.section	.text.sysclk_init,"ax",%progbits
 213              		.align	1
 214              		.p2align 2,,3
 215              		.global	sysclk_init
 216              		.syntax unified
 217              		.thumb
 218              		.thumb_func
 219              		.fpu fpv5-d16
 220              		.type	sysclk_init, %function
 221              	sysclk_init:
 222              	.LFB166:
 165:../asf/common/services/clock/same70/sysclk.c **** }
 166:../asf/common/services/clock/same70/sysclk.c **** #endif // CONFIG_USBCLK_SOURCE
 167:../asf/common/services/clock/same70/sysclk.c **** 
 168:../asf/common/services/clock/same70/sysclk.c **** void sysclk_init(void)
ARM GAS  /tmp/ccizFQRG.s 			page 8


 169:../asf/common/services/clock/same70/sysclk.c **** {
 223              		.loc 1 169 0
 224              		.cfi_startproc
 225              		@ args = 0, pretend = 0, frame = 0
 226              		@ frame_needed = 0, uses_anonymous_args = 0
 170:../asf/common/services/clock/same70/sysclk.c **** 	struct pll_config pllcfg;
 171:../asf/common/services/clock/same70/sysclk.c **** 
 172:../asf/common/services/clock/same70/sysclk.c **** 	/* Set flash wait state to max in case the below clock switching. */
 173:../asf/common/services/clock/same70/sysclk.c **** 	system_init_flash(CHIP_FREQ_CPU_MAX);
 227              		.loc 1 173 0
 228 0000 1048     		ldr	r0, .L23
 169:../asf/common/services/clock/same70/sysclk.c **** 	struct pll_config pllcfg;
 229              		.loc 1 169 0
 230 0002 08B5     		push	{r3, lr}
 231              		.cfi_def_cfa_offset 8
 232              		.cfi_offset 3, -8
 233              		.cfi_offset 14, -4
 234              		.loc 1 173 0
 235 0004 FFF7FEFF 		bl	system_init_flash
 236              	.LVL20:
 237              	.LBB39:
 238              	.LBB40:
 239              	.LBB41:
 240              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** /**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * \file
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * \brief Chip-specific oscillator management functions.
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * Copyright (c) 2015 Atmel Corporation. All rights reserved.
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * \asf_license_start
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * \page License
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * Redistribution and use in source and binary forms, with or without
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * modification, are permitted provided that the following conditions are met:
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *    this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *    and/or other materials provided with the distribution.
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *    from this software without specific prior written permission.
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * 4. This software may only be redistributed and used in connection with an
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *    Atmel microcontroller product.
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
ARM GAS  /tmp/ccizFQRG.s 			page 9


  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * \asf_license_stop
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  *
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** /*
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  */
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #ifndef CHIP_OSC_H_INCLUDED
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define CHIP_OSC_H_INCLUDED
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #include "board.h"
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #include "pmc.h"
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** /// @cond 0
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** /**INDENT-OFF**/
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #ifdef __cplusplus
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** extern "C" {
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #endif
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** /**INDENT-ON**/
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** /// @endcond
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** /*
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * Below BOARD_XXX macros are related to the specific board, and
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * should be defined by the board code, otherwise default value are used.
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  */
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #if !defined(BOARD_FREQ_SLCK_XTAL)
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #  warning The board slow clock xtal frequency has not been defined.
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #  define BOARD_FREQ_SLCK_XTAL      (32768UL)
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #endif
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #if !defined(BOARD_FREQ_SLCK_BYPASS)
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #  warning The board slow clock bypass frequency has not been defined.
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #  define BOARD_FREQ_SLCK_BYPASS    (32768UL)
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #endif
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #if !defined(BOARD_FREQ_MAINCK_XTAL)
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #  warning The board main clock xtal frequency has not been defined.
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #  define BOARD_FREQ_MAINCK_XTAL    (12000000UL)
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #endif
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #if !defined(BOARD_FREQ_MAINCK_BYPASS)
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #  warning The board main clock bypass frequency has not been defined.
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #  define BOARD_FREQ_MAINCK_BYPASS  (12000000UL)
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #endif
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #if !defined(BOARD_OSC_STARTUP_US)
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #  warning The board main clock xtal startup time has not been defined.
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #  define BOARD_OSC_STARTUP_US      (15625UL)
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #endif
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** /**
ARM GAS  /tmp/ccizFQRG.s 			page 10


  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * \weakgroup osc_group
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  * @{
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h ****  */
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** //! \name Oscillator identifiers
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** //@{
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_SLCK_32K_RC      0    //!< Internal 32kHz RC oscillator.
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_SLCK_32K_XTAL    1    //!< External 32kHz crystal oscillator.
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_SLCK_32K_BYPASS  2    //!< External 32kHz bypass oscillator.
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_MAINCK_4M_RC     3    //!< Internal 4MHz RC oscillator.
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_MAINCK_8M_RC     4    //!< Internal 8MHz RC oscillator.
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_MAINCK_12M_RC    5    //!< Internal 12MHz RC oscillator.
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_MAINCK_XTAL      6    //!< External crystal oscillator.
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_MAINCK_BYPASS    7    //!< External bypass oscillator.
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** //@}
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** //! \name Oscillator clock speed in hertz
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** //@{
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_SLCK_32K_RC_HZ      CHIP_FREQ_SLCK_RC         //!< Internal 32kHz RC oscillator.
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_SLCK_32K_XTAL_HZ    BOARD_FREQ_SLCK_XTAL      //!< External 32kHz crystal oscillator.
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_SLCK_32K_BYPASS_HZ  BOARD_FREQ_SLCK_BYPASS    //!< External 32kHz bypass oscillator.
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_MAINCK_4M_RC_HZ     CHIP_FREQ_MAINCK_RC_4MHZ  //!< Internal 4MHz RC oscillator.
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_MAINCK_8M_RC_HZ     CHIP_FREQ_MAINCK_RC_8MHZ  //!< Internal 8MHz RC oscillator.
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_MAINCK_12M_RC_HZ    CHIP_FREQ_MAINCK_RC_12MHZ //!< Internal 12MHz RC oscillator.
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_MAINCK_XTAL_HZ      BOARD_FREQ_MAINCK_XTAL    //!< External crystal oscillator.
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** #define OSC_MAINCK_BYPASS_HZ    BOARD_FREQ_MAINCK_BYPASS  //!< External bypass oscillator.
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** //@}
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** static inline void osc_enable(uint32_t ul_id)
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** {
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	switch (ul_id) {
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_SLCK_32K_RC:
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		break;
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_SLCK_32K_XTAL:
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		pmc_switch_sclk_to_32kxtal(PMC_OSC_XTAL);
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		break;
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_SLCK_32K_BYPASS:
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		pmc_switch_sclk_to_32kxtal(PMC_OSC_BYPASS);
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		break;
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_MAINCK_4M_RC:
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		pmc_switch_mainck_to_fastrc(CKGR_MOR_MOSCRCF_4_MHz);
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		break;
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_MAINCK_8M_RC:
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		pmc_switch_mainck_to_fastrc(CKGR_MOR_MOSCRCF_8_MHz);
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		break;
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_MAINCK_12M_RC:
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		pmc_switch_mainck_to_fastrc(CKGR_MOR_MOSCRCF_12_MHz);
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		break;
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_MAINCK_XTAL:
ARM GAS  /tmp/ccizFQRG.s 			page 11


 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		pmc_switch_mainck_to_xtal(PMC_OSC_XTAL,
 241              		.loc 2 148 0
 242 0008 3E21     		movs	r1, #62
 243 000a 0020     		movs	r0, #0
 244 000c FFF7FEFF 		bl	pmc_switch_mainck_to_xtal
 245              	.LVL21:
 246              	.L16:
 247              	.LBE41:
 248              	.LBE40:
 249              	.LBB42:
 250              	.LBB43:
 251              	.LBB44:
 252              	.LBB45:
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 			pmc_us_to_moscxtst(BOARD_OSC_STARTUP_US,
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 				OSC_SLCK_32K_RC_HZ));
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		break;
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_MAINCK_BYPASS:
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		pmc_switch_mainck_to_xtal(PMC_OSC_BYPASS,
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 			pmc_us_to_moscxtst(BOARD_OSC_STARTUP_US,
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 				OSC_SLCK_32K_RC_HZ));
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		break;
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	}
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** }
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** static inline void osc_disable(uint32_t ul_id)
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** {
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	switch (ul_id) {
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_SLCK_32K_RC:
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_SLCK_32K_XTAL:
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_SLCK_32K_BYPASS:
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		break;
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_MAINCK_4M_RC:
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_MAINCK_8M_RC:
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_MAINCK_12M_RC:
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		pmc_osc_disable_fastrc();
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		break;
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_MAINCK_XTAL:
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		pmc_osc_disable_xtal(PMC_OSC_XTAL);
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		break;
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_MAINCK_BYPASS:
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		pmc_osc_disable_xtal(PMC_OSC_BYPASS);
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		break;
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	}
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** }
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** static inline bool osc_is_ready(uint32_t ul_id)
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** {
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	switch (ul_id) {
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_SLCK_32K_RC:
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		return 1;
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_SLCK_32K_XTAL:
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_SLCK_32K_BYPASS:
ARM GAS  /tmp/ccizFQRG.s 			page 12


 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		return pmc_osc_is_ready_32kxtal();
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_MAINCK_4M_RC:
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_MAINCK_8M_RC:
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_MAINCK_12M_RC:
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_MAINCK_XTAL:
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 	case OSC_MAINCK_BYPASS:
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h **** 		return pmc_osc_is_ready_mainck();
 253              		.loc 2 200 0
 254 0010 FFF7FEFF 		bl	pmc_osc_is_ready_mainck
 255              	.LVL22:
 256              	.LBE45:
 257              	.LBE44:
 258              		.file 3 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** /**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \file
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \brief Oscillator management
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * Copyright (c) 2010-2015 Atmel Corporation. All rights reserved.
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \asf_license_start
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \page License
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * Redistribution and use in source and binary forms, with or without
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * modification, are permitted provided that the following conditions are met:
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *    this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *    and/or other materials provided with the distribution.
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *    from this software without specific prior written permission.
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * 4. This software may only be redistributed and used in connection with an
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *    Atmel microcontroller product.
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \asf_license_stop
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** /*
ARM GAS  /tmp/ccizFQRG.s 			page 13


  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  */
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #ifndef OSC_H_INCLUDED
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #define OSC_H_INCLUDED
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** 
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #include "parts.h"
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #include "conf_clock.h"
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** 
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #if SAM3S
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "sam3s/osc.h"
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif SAM3XA
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "sam3x/osc.h"
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif SAM3U
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "sam3u/osc.h"
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif SAM3N
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "sam3n/osc.h"
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif SAM4S
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "sam4s/osc.h"
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif SAM4E
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "sam4e/osc.h"
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif SAM4C
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "sam4c/osc.h"
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif SAM4CM
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "sam4cm/osc.h"
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif SAM4CP
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "sam4cp/osc.h"
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif SAM4L
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "sam4l/osc.h"
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif SAM4N
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "sam4n/osc.h"
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif SAMG
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "samg/osc.h"
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif SAMV71
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "samv71/osc.h"
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif SAMV70
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "samv70/osc.h"
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif SAME70
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "same70/osc.h"
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif SAMS70
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "sams70/osc.h"
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif (UC3A0 || UC3A1)
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "uc3a0_a1/osc.h"
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif UC3A3
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "uc3a3_a4/osc.h"
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif UC3B
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "uc3b0_b1/osc.h"
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif UC3C
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "uc3c/osc.h"
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif UC3D
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "uc3d/osc.h"
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif UC3L
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "uc3l/osc.h"
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #elif XMEGA
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # include "xmega/osc.h"
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #else
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** # error Unsupported chip type
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #endif
ARM GAS  /tmp/ccizFQRG.s 			page 14


 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** 
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** /**
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \ingroup clk_group
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \defgroup osc_group Oscillator Management
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * This group contains functions and definitions related to configuring
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * and enabling/disabling on-chip oscillators. Internal RC-oscillators,
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * external crystal oscillators and external clock generators are
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * supported by this module. What all of these have in common is that
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * they swing at a fixed, nominal frequency which is normally not
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * adjustable.
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \par Example: Enabling an oscillator
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * The following example demonstrates how to enable the external
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * oscillator on XMEGA A and wait for it to be ready to use. The
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * oscillator identifiers are platform-specific, so while the same
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * procedure is used on all platforms, the parameter to osc_enable()
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * will be different from device to device.
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \code
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** 	osc_enable(OSC_ID_XOSC);
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** 	osc_wait_ready(OSC_ID_XOSC); \endcode
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \section osc_group_board Board-specific Definitions
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * If external oscillators are used, the board code must provide the
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * following definitions for each of those:
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *   - \b BOARD_<osc name>_HZ: The nominal frequency of the oscillator.
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *   - \b BOARD_<osc name>_STARTUP_US: The startup time of the
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *     oscillator in microseconds.
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *   - \b BOARD_<osc name>_TYPE: The type of oscillator connected, i.e.
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *     whether it's a crystal or external clock, and sometimes what kind
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *     of crystal it is. The meaning of this value is platform-specific.
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * @{
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  */
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** 
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** //! \name Oscillator Management
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** //@{
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** /**
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \fn void osc_enable(uint8_t id)
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \brief Enable oscillator \a id
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * The startup time and mode value is automatically determined based on
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * definitions in the board code.
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  */
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** /**
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \fn void osc_disable(uint8_t id)
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \brief Disable oscillator \a id
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  */
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** /**
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \fn osc_is_ready(uint8_t id)
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \brief Determine whether oscillator \a id is ready.
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \retval true Oscillator \a id is running and ready to use as a clock
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * source.
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \retval false Oscillator \a id is not running.
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  */
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** /**
ARM GAS  /tmp/ccizFQRG.s 			page 15


 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \fn uint32_t osc_get_rate(uint8_t id)
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \brief Return the frequency of oscillator \a id in Hz
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  */
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** 
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** #ifndef __ASSEMBLY__
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** 
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** /**
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \brief Wait until the oscillator identified by \a id is ready
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * This function will busy-wait for the oscillator identified by \a id
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * to become stable and ready to use as a clock source.
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  *
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  * \param id A number identifying the oscillator to wait for.
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h ****  */
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** static inline void osc_wait_ready(uint8_t id)
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** {
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/osc.h **** 	while (!osc_is_ready(id)) {
 259              		.loc 3 174 0
 260 0014 0028     		cmp	r0, #0
 261 0016 FBD0     		beq	.L16
 262              	.LVL23:
 263              	.LBE43:
 264              	.LBE42:
 265              	.LBE39:
 266              	.LBB46:
 267              	.LBB47:
 268              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** /**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * \file
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * \brief Chip-specific PLL definitions.
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * Copyright (c) 2015 Atmel Corporation. All rights reserved.
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * \asf_license_start
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * \page License
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * Redistribution and use in source and binary forms, with or without
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * modification, are permitted provided that the following conditions are met:
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *    this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *    and/or other materials provided with the distribution.
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *    from this software without specific prior written permission.
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * 4. This software may only be redistributed and used in connection with an
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *    Atmel microcontroller product.
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccizFQRG.s 			page 16


  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * \asf_license_stop
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  *
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** /*
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  */
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #ifndef CHIP_PLL_H_INCLUDED
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #define CHIP_PLL_H_INCLUDED
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #include <osc.h>
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** /// @cond 0
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** /**INDENT-OFF**/
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #ifdef __cplusplus
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** extern "C" {
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #endif
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** /**INDENT-ON**/
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** /// @endcond
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** /**
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * \weakgroup pll_group
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * @{
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  */
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #define PLL_OUTPUT_MIN_HZ       160000000
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #define PLL_OUTPUT_MAX_HZ       500000000
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #define PLL_INPUT_MIN_HZ        3000000
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #define PLL_INPUT_MAX_HZ        32000000
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #define NR_PLLS             2
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #define PLLA_ID             0
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #define UPLL_ID             1   //!< USB UTMI PLL.
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #define PLL_UPLL_HZ     480000000
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #define PLL_COUNT   0x3fU
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** enum pll_source {
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	PLL_SRC_MAINCK_4M_RC   = OSC_MAINCK_4M_RC,  //!< Internal 4MHz RC oscillator.
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	PLL_SRC_MAINCK_8M_RC   = OSC_MAINCK_8M_RC,  //!< Internal 8MHz RC oscillator.
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	PLL_SRC_MAINCK_12M_RC  = OSC_MAINCK_12M_RC, //!< Internal 12MHz RC oscillator.
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	PLL_SRC_MAINCK_XTAL    = OSC_MAINCK_XTAL,   //!< External crystal oscillator.
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	PLL_SRC_MAINCK_BYPASS  = OSC_MAINCK_BYPASS, //!< External bypass oscillator.
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	PLL_NR_SOURCES,                             //!< Number of PLL sources.
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** };
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
ARM GAS  /tmp/ccizFQRG.s 			page 17


  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** struct pll_config {
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	uint32_t ctrl;
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** };
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #define pll_get_default_rate(pll_id)                                     \
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	((osc_get_rate(CONFIG_PLL##pll_id##_SOURCE)                      \
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 			* CONFIG_PLL##pll_id##_MUL)                      \
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 			/ CONFIG_PLL##pll_id##_DIV)
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** /* Force UTMI PLL parameters (Hardware defined) */
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #ifdef CONFIG_PLL1_SOURCE
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** # undef CONFIG_PLL1_SOURCE
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #endif
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #ifdef CONFIG_PLL1_MUL
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** # undef CONFIG_PLL1_MUL
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #endif
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #ifdef CONFIG_PLL1_DIV
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** # undef CONFIG_PLL1_DIV
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #endif
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #define CONFIG_PLL1_SOURCE  PLL_SRC_MAINCK_XTAL
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #define CONFIG_PLL1_MUL     0
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #define CONFIG_PLL1_DIV     0
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** /**
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * \note The SAMV71 PLL hardware interprets mul as mul+1. For readability the
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * hardware mul+1 is hidden in this implementation. Use mul as mul effective
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * value.
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  */
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** static inline void pll_config_init(struct pll_config *p_cfg,
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 		enum pll_source e_src, uint32_t ul_div, uint32_t ul_mul)
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** {
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	uint32_t vco_hz;
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	Assert(e_src < PLL_NR_SOURCES);
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	if (ul_div == 0 && ul_mul == 0) { /* Must only be true for UTMI PLL */
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 		p_cfg->ctrl = CKGR_UCKR_UPLLCOUNT(PLL_COUNT);
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	} else { /* PLLA */
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	/* Calculate internal VCO frequency */
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	vco_hz = osc_get_rate(e_src) / ul_div;
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	Assert(vco_hz >= PLL_INPUT_MIN_HZ);
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	Assert(vco_hz <= PLL_INPUT_MAX_HZ);
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	vco_hz *= ul_mul;
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	Assert(vco_hz >= PLL_OUTPUT_MIN_HZ);
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	Assert(vco_hz <= PLL_OUTPUT_MAX_HZ);
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	/* PMC hardware will automatically make it mul+1 */
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 		p_cfg->ctrl = CKGR_PLLAR_MULA(ul_mul - 1) | CKGR_PLLAR_DIVA(ul_div)  \
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 		| CKGR_PLLAR_PLLACOUNT(PLL_COUNT);
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	}
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** }
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** #define pll_config_defaults(cfg, pll_id)                                 \
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	pll_config_init(cfg,                                             \
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 			CONFIG_PLL##pll_id##_SOURCE,                     \
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 			CONFIG_PLL##pll_id##_DIV,                        \
ARM GAS  /tmp/ccizFQRG.s 			page 18


 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 			CONFIG_PLL##pll_id##_MUL)
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** static inline void pll_config_read(struct pll_config *p_cfg, uint32_t ul_pll_id)
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** {
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	Assert(ul_pll_id < NR_PLLS);
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	if (ul_pll_id == PLLA_ID) {
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 		p_cfg->ctrl = PMC->CKGR_PLLAR;
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	} else {
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 		p_cfg->ctrl = PMC->CKGR_UCKR;
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	}
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** }
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** static inline void pll_config_write(const struct pll_config *p_cfg, uint32_t ul_pll_id)
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** {
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	Assert(ul_pll_id < NR_PLLS);
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	if (ul_pll_id == PLLA_ID) {
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 		pmc_disable_pllack(); // Always stop PLL first!
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 		PMC->CKGR_PLLAR = CKGR_PLLAR_ONE | p_cfg->ctrl;
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	} else {
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 		PMC->CKGR_UCKR = p_cfg->ctrl;
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	}
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** }
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** static inline void pll_enable(const struct pll_config *p_cfg, uint32_t ul_pll_id)
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** {
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	Assert(ul_pll_id < NR_PLLS);
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	if (ul_pll_id == PLLA_ID) {
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 		pmc_disable_pllack(); // Always stop PLL first!
 269              		.loc 4 175 0
 270 0018 FFF7FEFF 		bl	pmc_disable_pllack
 271              	.LVL24:
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 		PMC->CKGR_PLLAR = CKGR_PLLAR_ONE | p_cfg->ctrl;
 272              		.loc 4 176 0
 273 001c 0A4B     		ldr	r3, .L23+4
 274 001e 0B4A     		ldr	r2, .L23+8
 275 0020 9A62     		str	r2, [r3, #40]
 276              	.L17:
 277              	.LVL25:
 278              	.LBE47:
 279              	.LBE46:
 280              	.LBB48:
 281              	.LBB49:
 282              	.LBB50:
 283              	.LBB51:
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	} else {
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 		PMC->CKGR_UCKR = p_cfg->ctrl | CKGR_UCKR_UPLLEN;
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	}
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** }
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** /**
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  * \note This will only disable the selected PLL, not the underlying oscillator (mainck).
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h ****  */
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** static inline void pll_disable(uint32_t ul_pll_id)
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** {
ARM GAS  /tmp/ccizFQRG.s 			page 19


 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	Assert(ul_pll_id < NR_PLLS);
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	if (ul_pll_id == PLLA_ID) {
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 		pmc_disable_pllack();
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	} else {
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 		PMC->CKGR_UCKR &= ~CKGR_UCKR_UPLLEN;
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	}
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** }
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** static inline uint32_t pll_is_locked(uint32_t ul_pll_id)
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** {
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	Assert(ul_pll_id < NR_PLLS);
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	if (ul_pll_id == PLLA_ID) {
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h **** 	return pmc_is_locked_pllack();
 284              		.loc 4 201 0
 285 0022 FFF7FEFF 		bl	pmc_is_locked_pllack
 286              	.LVL26:
 287              	.LBE51:
 288              	.LBE50:
 289              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \file
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief PLL management
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * Copyright (c) 2010-2015 Atmel Corporation. All rights reserved.
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \asf_license_start
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \page License
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * Redistribution and use in source and binary forms, with or without
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * modification, are permitted provided that the following conditions are met:
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *    this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *    and/or other materials provided with the distribution.
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *    from this software without specific prior written permission.
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * 4. This software may only be redistributed and used in connection with an
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *    Atmel microcontroller product.
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
ARM GAS  /tmp/ccizFQRG.s 			page 20


  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \asf_license_stop
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /*
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #ifndef CLK_PLL_H_INCLUDED
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #define CLK_PLL_H_INCLUDED
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #include "parts.h"
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #include "conf_clock.h"
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #if SAM3S
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "sam3s/pll.h"
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif SAM3XA
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "sam3x/pll.h"
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif SAM3U
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "sam3u/pll.h"
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif SAM3N
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "sam3n/pll.h"
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif SAM4S
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "sam4s/pll.h"
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif SAM4E
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "sam4e/pll.h"
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif SAM4C
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "sam4c/pll.h"
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif SAM4CM
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "sam4cm/pll.h"
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif SAM4CP
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "sam4cp/pll.h"
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif SAM4L
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "sam4l/pll.h"
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif SAM4N
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "sam4n/pll.h"
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif SAMG
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "samg/pll.h"
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif SAMV71
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "samv71/pll.h"
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif SAMV70
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "samv70/pll.h"
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif SAME70
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "same70/pll.h"
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif SAMS70
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "sams70/pll.h"
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif (UC3A0 || UC3A1)
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "uc3a0_a1/pll.h"
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif UC3A3
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "uc3a3_a4/pll.h"
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif UC3B
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "uc3b0_b1/pll.h"
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif UC3C
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "uc3c/pll.h"
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif UC3D
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "uc3d/pll.h"
ARM GAS  /tmp/ccizFQRG.s 			page 21


  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif (UC3L0128 || UC3L0256 || UC3L3_L4)
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "uc3l/pll.h"
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #elif XMEGA
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # include "xmega/pll.h"
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #else
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** # error Unsupported chip type
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** #endif
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \ingroup clk_group
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \defgroup pll_group PLL Management
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * This group contains functions and definitions related to configuring
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * and enabling/disabling on-chip PLLs. A PLL will take an input signal
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * (the \em source), optionally divide the frequency by a configurable
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \em divider, and then multiply the frequency by a configurable \em
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * multiplier.
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * Some devices don't support input dividers; specifying any other
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * divisor than 1 on these devices will result in an assertion failure.
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * Other devices may have various restrictions to the frequency range of
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * the input and output signals.
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \par Example: Setting up PLL0 with default parameters
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * The following example shows how to configure and enable PLL0 using
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * the default parameters specified using the configuration symbols
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * listed above.
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \code
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 	pll_enable_config_defaults(0); \endcode
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * To configure, enable PLL0 using the default parameters and to disable
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * a specific feature like Wide Bandwidth Mode (a UC3A3-specific
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * PLL option.), you can use this initialization process.
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \code
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 	struct pll_config pllcfg;
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 	if (pll_is_locked(pll_id)) {
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 		return; // Pll already running
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 	}
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 	pll_enable_source(CONFIG_PLL0_SOURCE);
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 	pll_config_defaults(&pllcfg, 0);
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 	pll_config_set_option(&pllcfg, PLL_OPT_WBM_DISABLE);
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 	pll_enable(&pllcfg, 0);
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 	pll_wait_for_lock(0); \endcode
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * When the last function call returns, PLL0 is ready to be used as the
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * main system clock source.
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \section pll_group_config Configuration Symbols
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * Each PLL has a set of default parameters determined by the following
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * configuration symbols in the application's configuration file:
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *   - \b CONFIG_PLLn_SOURCE: The default clock source connected to the
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *     input of PLL \a n. Must be one of the values defined by the
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *     #pll_source enum.
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *   - \b CONFIG_PLLn_MUL: The default multiplier (loop divider) of PLL
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *     \a n.
ARM GAS  /tmp/ccizFQRG.s 			page 22


 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *   - \b CONFIG_PLLn_DIV: The default input divider of PLL \a n.
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * These configuration symbols determine the result of calling
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * pll_config_defaults() and pll_get_default_rate().
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * @{
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** //! \name Chip-specific PLL characteristics
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** //@{
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \def PLL_MAX_STARTUP_CYCLES
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Maximum PLL startup time in number of slow clock cycles
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \def NR_PLLS
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Number of on-chip PLLs
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \def PLL_MIN_HZ
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Minimum frequency that the PLL can generate
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \def PLL_MAX_HZ
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Maximum frequency that the PLL can generate
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \def PLL_NR_OPTIONS
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Number of PLL option bits
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** //@}
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \enum pll_source
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief PLL clock source
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** //! \name PLL configuration
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** //@{
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \struct pll_config
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Hardware-specific representation of PLL configuration.
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * This structure contains one or more device-specific values
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * representing the current PLL configuration. The contents of this
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * structure is typically different from platform to platform, and the
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * user should not access any fields except through the PLL
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * configuration API.
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \fn void pll_config_init(struct pll_config *cfg,
 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *              enum pll_source src, unsigned int div, unsigned int mul)
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Initialize PLL configuration from standard parameters.
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
ARM GAS  /tmp/ccizFQRG.s 			page 23


 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \note This function may be defined inline because it is assumed to be
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * called very few times, and usually with constant parameters. Inlining
 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * it will in such cases reduce the code size significantly.
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param cfg The PLL configuration to be initialized.
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param src The oscillator to be used as input to the PLL.
 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param div PLL input divider.
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param mul PLL loop divider (i.e. multiplier).
 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \return A configuration which will make the PLL run at
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * (\a mul / \a div) times the frequency of \a src
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \def pll_config_defaults(cfg, pll_id)
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Initialize PLL configuration using default parameters.
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * After this function returns, \a cfg will contain a configuration
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * which will make the PLL run at (CONFIG_PLLx_MUL / CONFIG_PLLx_DIV)
 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * times the frequency of CONFIG_PLLx_SOURCE.
 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param cfg The PLL configuration to be initialized.
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param pll_id Use defaults for this PLL.
 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \def pll_get_default_rate(pll_id)
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Get the default rate in Hz of \a pll_id
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \fn void pll_config_set_option(struct pll_config *cfg,
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *              unsigned int option)
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Set the PLL option bit \a option in the configuration \a cfg.
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param cfg The PLL configuration to be changed.
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param option The PLL option bit to be set.
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \fn void pll_config_clear_option(struct pll_config *cfg,
 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *              unsigned int option)
 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Clear the PLL option bit \a option in the configuration \a cfg.
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param cfg The PLL configuration to be changed.
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param option The PLL option bit to be cleared.
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \fn void pll_config_read(struct pll_config *cfg, unsigned int pll_id)
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Read the currently active configuration of \a pll_id.
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param cfg The configuration object into which to store the currently
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * active configuration.
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param pll_id The ID of the PLL to be accessed.
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \fn void pll_config_write(const struct pll_config *cfg,
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *              unsigned int pll_id)
 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Activate the configuration \a cfg on \a pll_id
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param cfg The configuration object representing the PLL
ARM GAS  /tmp/ccizFQRG.s 			page 24


 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * configuration to be activated.
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param pll_id The ID of the PLL to be updated.
 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** //@}
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 
 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** //! \name Interaction with the PLL hardware
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** //@{
 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \fn void pll_enable(const struct pll_config *cfg,
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *              unsigned int pll_id)
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Activate the configuration \a cfg and enable PLL \a pll_id.
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param cfg The PLL configuration to be activated.
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param pll_id The ID of the PLL to be enabled.
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \fn void pll_disable(unsigned int pll_id)
 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Disable the PLL identified by \a pll_id.
 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * After this function is called, the PLL identified by \a pll_id will
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * be disabled. The PLL configuration stored in hardware may be affected
 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * by this, so if the caller needs to restore the same configuration
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * later, it should either do a pll_config_read() before disabling the
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * PLL, or remember the last configuration written to the PLL.
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param pll_id The ID of the PLL to be disabled.
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \fn bool pll_is_locked(unsigned int pll_id)
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Determine whether the PLL is locked or not.
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param pll_id The ID of the PLL to check.
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \retval true The PLL is locked and ready to use as a clock source
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \retval false The PLL is not yet locked, or has not been enabled.
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \fn void pll_enable_source(enum pll_source src)
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Enable the source of the pll.
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * The source is enabled, if the source is not already running.
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param src The ID of the PLL source to enable.
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \fn void pll_enable_config_defaults(unsigned int pll_id)
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Enable the pll with the default configuration.
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * PLL is enabled, if the PLL is not already locked.
 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param pll_id The ID of the PLL to enable.
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** /**
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \brief Wait for PLL \a pll_id to become locked
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \todo Use a timeout to avoid waiting forever and hanging the system
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
ARM GAS  /tmp/ccizFQRG.s 			page 25


 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \param pll_id The ID of the PLL to wait for.
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  *
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \retval STATUS_OK The PLL is now locked.
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  * \retval ERR_TIMEOUT Timed out waiting for PLL to become locked.
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h ****  */
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** static inline int pll_wait_for_lock(unsigned int pll_id)
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** {
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 	Assert(pll_id < NR_PLLS);
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/pll.h **** 	while (!pll_is_locked(pll_id)) {
 290              		.loc 5 331 0
 291 0026 0028     		cmp	r0, #0
 292 0028 FBD0     		beq	.L17
 293              	.LBE49:
 294              	.LBE48:
 174:../asf/common/services/clock/same70/sysclk.c **** 
 175:../asf/common/services/clock/same70/sysclk.c **** 	/* Config system clock setting */
 176:../asf/common/services/clock/same70/sysclk.c **** 	if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_SLCK_RC) {
 177:../asf/common/services/clock/same70/sysclk.c **** 		osc_enable(OSC_SLCK_32K_RC);
 178:../asf/common/services/clock/same70/sysclk.c **** 		osc_wait_ready(OSC_SLCK_32K_RC);
 179:../asf/common/services/clock/same70/sysclk.c **** 		pmc_switch_mck_to_sclk(CONFIG_SYSCLK_PRES);
 180:../asf/common/services/clock/same70/sysclk.c **** 	}
 181:../asf/common/services/clock/same70/sysclk.c **** 
 182:../asf/common/services/clock/same70/sysclk.c **** 	else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_SLCK_XTAL) {
 183:../asf/common/services/clock/same70/sysclk.c **** 		osc_enable(OSC_SLCK_32K_XTAL);
 184:../asf/common/services/clock/same70/sysclk.c **** 		osc_wait_ready(OSC_SLCK_32K_XTAL);
 185:../asf/common/services/clock/same70/sysclk.c **** 		pmc_switch_mck_to_sclk(CONFIG_SYSCLK_PRES);
 186:../asf/common/services/clock/same70/sysclk.c **** 	}
 187:../asf/common/services/clock/same70/sysclk.c **** 
 188:../asf/common/services/clock/same70/sysclk.c **** 	else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_SLCK_BYPASS) {
 189:../asf/common/services/clock/same70/sysclk.c **** 		osc_enable(OSC_SLCK_32K_BYPASS);
 190:../asf/common/services/clock/same70/sysclk.c **** 		osc_wait_ready(OSC_SLCK_32K_BYPASS);
 191:../asf/common/services/clock/same70/sysclk.c **** 		pmc_switch_mck_to_sclk(CONFIG_SYSCLK_PRES);
 192:../asf/common/services/clock/same70/sysclk.c **** 	}
 193:../asf/common/services/clock/same70/sysclk.c **** 
 194:../asf/common/services/clock/same70/sysclk.c **** 	else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_MAINCK_4M_RC) {
 195:../asf/common/services/clock/same70/sysclk.c **** 		/* Already running from SYSCLK_SRC_MAINCK_4M_RC */
 196:../asf/common/services/clock/same70/sysclk.c **** 	}
 197:../asf/common/services/clock/same70/sysclk.c **** 
 198:../asf/common/services/clock/same70/sysclk.c **** 	else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_MAINCK_8M_RC) {
 199:../asf/common/services/clock/same70/sysclk.c **** 		osc_enable(OSC_MAINCK_8M_RC);
 200:../asf/common/services/clock/same70/sysclk.c **** 		osc_wait_ready(OSC_MAINCK_8M_RC);
 201:../asf/common/services/clock/same70/sysclk.c **** 		pmc_switch_mck_to_mainck(CONFIG_SYSCLK_PRES);
 202:../asf/common/services/clock/same70/sysclk.c **** 	}
 203:../asf/common/services/clock/same70/sysclk.c **** 
 204:../asf/common/services/clock/same70/sysclk.c **** 	else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_MAINCK_12M_RC) {
 205:../asf/common/services/clock/same70/sysclk.c **** 		osc_enable(OSC_MAINCK_12M_RC);
 206:../asf/common/services/clock/same70/sysclk.c **** 		osc_wait_ready(OSC_MAINCK_12M_RC);
 207:../asf/common/services/clock/same70/sysclk.c **** 		pmc_switch_mck_to_mainck(CONFIG_SYSCLK_PRES);
 208:../asf/common/services/clock/same70/sysclk.c **** 	}
 209:../asf/common/services/clock/same70/sysclk.c **** 
 210:../asf/common/services/clock/same70/sysclk.c **** 	else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_MAINCK_XTAL) {
 211:../asf/common/services/clock/same70/sysclk.c **** 		osc_enable(OSC_MAINCK_XTAL);
 212:../asf/common/services/clock/same70/sysclk.c **** 		osc_wait_ready(OSC_MAINCK_XTAL);
 213:../asf/common/services/clock/same70/sysclk.c **** 		pmc_switch_mck_to_mainck(CONFIG_SYSCLK_PRES);
 214:../asf/common/services/clock/same70/sysclk.c **** 	}
 215:../asf/common/services/clock/same70/sysclk.c **** 
ARM GAS  /tmp/ccizFQRG.s 			page 26


 216:../asf/common/services/clock/same70/sysclk.c **** 	else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_MAINCK_BYPASS) {
 217:../asf/common/services/clock/same70/sysclk.c **** 		osc_enable(OSC_MAINCK_BYPASS);
 218:../asf/common/services/clock/same70/sysclk.c **** 		osc_wait_ready(OSC_MAINCK_BYPASS);
 219:../asf/common/services/clock/same70/sysclk.c **** 		pmc_switch_mck_to_mainck(CONFIG_SYSCLK_PRES);
 220:../asf/common/services/clock/same70/sysclk.c **** 	}
 221:../asf/common/services/clock/same70/sysclk.c **** 
 222:../asf/common/services/clock/same70/sysclk.c **** #ifdef CONFIG_PLL0_SOURCE
 223:../asf/common/services/clock/same70/sysclk.c **** 	else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_PLLACK) {
 224:../asf/common/services/clock/same70/sysclk.c **** 		pll_enable_source(CONFIG_PLL0_SOURCE);
 225:../asf/common/services/clock/same70/sysclk.c **** 		pll_config_defaults(&pllcfg, 0);
 226:../asf/common/services/clock/same70/sysclk.c **** 		pll_enable(&pllcfg, 0);
 227:../asf/common/services/clock/same70/sysclk.c **** 		pll_wait_for_lock(0);
 228:../asf/common/services/clock/same70/sysclk.c **** 		pmc_mck_set_division(CONFIG_SYSCLK_DIV);
 295              		.loc 1 228 0
 296 002a 0220     		movs	r0, #2
 297 002c FFF7FEFF 		bl	pmc_mck_set_division
 298              	.LVL27:
 229:../asf/common/services/clock/same70/sysclk.c **** 		pmc_switch_mck_to_pllack(CONFIG_SYSCLK_PRES);
 299              		.loc 1 229 0
 300 0030 0020     		movs	r0, #0
 301 0032 FFF7FEFF 		bl	pmc_switch_mck_to_pllack
 302              	.LVL28:
 230:../asf/common/services/clock/same70/sysclk.c **** 	}
 231:../asf/common/services/clock/same70/sysclk.c **** #endif
 232:../asf/common/services/clock/same70/sysclk.c **** 
 233:../asf/common/services/clock/same70/sysclk.c **** 	else if (CONFIG_SYSCLK_SOURCE == SYSCLK_SRC_UPLLCK) {
 234:../asf/common/services/clock/same70/sysclk.c **** 		pll_enable_source(CONFIG_PLL1_SOURCE);
 235:../asf/common/services/clock/same70/sysclk.c **** 		pll_config_defaults(&pllcfg, 1);
 236:../asf/common/services/clock/same70/sysclk.c **** 		pll_enable(&pllcfg, 1);
 237:../asf/common/services/clock/same70/sysclk.c **** 		pll_wait_for_lock(1);
 238:../asf/common/services/clock/same70/sysclk.c **** 		pmc_mck_set_division(CONFIG_SYSCLK_DIV);
 239:../asf/common/services/clock/same70/sysclk.c **** 		pmc_switch_mck_to_upllck(CONFIG_SYSCLK_PRES);
 240:../asf/common/services/clock/same70/sysclk.c **** 	}
 241:../asf/common/services/clock/same70/sysclk.c **** 	/* Update the SystemFrequency variable */
 242:../asf/common/services/clock/same70/sysclk.c **** 	SystemCoreClockUpdate();
 303              		.loc 1 242 0
 304 0036 FFF7FEFF 		bl	SystemCoreClockUpdate
 305              	.LVL29:
 243:../asf/common/services/clock/same70/sysclk.c **** 
 244:../asf/common/services/clock/same70/sysclk.c **** 	/* Set a flash wait state depending on the new cpu frequency */
 245:../asf/common/services/clock/same70/sysclk.c **** 	system_init_flash(sysclk_get_cpu_hz());
 306              		.loc 1 245 0
 307 003a 0248     		ldr	r0, .L23
 246:../asf/common/services/clock/same70/sysclk.c **** 
 247:../asf/common/services/clock/same70/sysclk.c **** #if (defined CONFIG_SYSCLK_DEFAULT_RETURNS_SLOW_OSC)
 248:../asf/common/services/clock/same70/sysclk.c **** 	/* Signal that the internal frequencies are setup */
 249:../asf/common/services/clock/same70/sysclk.c **** 	sysclk_initialized = 1;
 250:../asf/common/services/clock/same70/sysclk.c **** #endif
 251:../asf/common/services/clock/same70/sysclk.c **** }
 308              		.loc 1 251 0
 309 003c BDE80840 		pop	{r3, lr}
 310              		.cfi_restore 14
 311              		.cfi_restore 3
 312              		.cfi_def_cfa_offset 0
 245:../asf/common/services/clock/same70/sysclk.c **** 
 313              		.loc 1 245 0
 314 0040 FFF7FEBF 		b	system_init_flash
ARM GAS  /tmp/ccizFQRG.s 			page 27


 315              	.LVL30:
 316              	.L24:
 317              		.align	2
 318              	.L23:
 319 0044 00A3E111 		.word	300000000
 320 0048 00060E40 		.word	1074660864
 321 004c 013F1820 		.word	538459905
 322              		.cfi_endproc
 323              	.LFE166:
 324              		.size	sysclk_init, .-sysclk_init
 325              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 326              		.align	2
 327              		.type	cpu_irq_critical_section_counter, %object
 328              		.size	cpu_irq_critical_section_counter, 4
 329              	cpu_irq_critical_section_counter:
 330 0000 00000000 		.space	4
 331              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 332              		.type	cpu_irq_prev_interrupt_state, %object
 333              		.size	cpu_irq_prev_interrupt_state, 1
 334              	cpu_irq_prev_interrupt_state:
 335 0000 00       		.space	1
 336              		.text
 337              	.Letext0:
 338              		.file 6 "/usr/include/newlib/machine/_default_types.h"
 339              		.file 7 "/usr/include/newlib/sys/_stdint.h"
 340              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 341              		.file 9 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 342              		.file 10 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/pmc
 343              		.file 11 "/usr/include/newlib/sys/lock.h"
 344              		.file 12 "/usr/include/newlib/sys/_types.h"
 345              		.file 13 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 346              		.file 14 "/usr/include/newlib/sys/reent.h"
 347              		.file 15 "/usr/include/newlib/stdlib.h"
 348              		.file 16 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 349              		.file 17 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h"
 350              		.file 18 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pmc/pmc.h"
 351              		.section	.debug_info,"",%progbits
 352              	.Ldebug_info0:
 353 0000 E4100000 		.4byte	0x10e4
 354 0004 0400     		.2byte	0x4
 355 0006 00000000 		.4byte	.Ldebug_abbrev0
 356 000a 04       		.byte	0x4
 357 000b 01       		.uleb128 0x1
 358 000c A3050000 		.4byte	.LASF227
 359 0010 0C       		.byte	0xc
 360 0011 46050000 		.4byte	.LASF228
 361 0015 35000000 		.4byte	.LASF229
 362 0019 00000000 		.4byte	.Ldebug_ranges0+0
 363 001d 00000000 		.4byte	0
 364 0021 00000000 		.4byte	.Ldebug_line0
 365 0025 02       		.uleb128 0x2
 366 0026 04       		.byte	0x4
 367 0027 05       		.byte	0x5
 368 0028 696E7400 		.ascii	"int\000"
 369 002c 03       		.uleb128 0x3
 370 002d 04       		.byte	0x4
 371 002e 07       		.byte	0x7
ARM GAS  /tmp/ccizFQRG.s 			page 28


 372 002f C0080000 		.4byte	.LASF0
 373 0033 03       		.uleb128 0x3
 374 0034 01       		.byte	0x1
 375 0035 06       		.byte	0x6
 376 0036 60010000 		.4byte	.LASF1
 377 003a 04       		.uleb128 0x4
 378 003b 64000000 		.4byte	.LASF5
 379 003f 06       		.byte	0x6
 380 0040 1D       		.byte	0x1d
 381 0041 45000000 		.4byte	0x45
 382 0045 03       		.uleb128 0x3
 383 0046 01       		.byte	0x1
 384 0047 08       		.byte	0x8
 385 0048 2E090000 		.4byte	.LASF2
 386 004c 03       		.uleb128 0x3
 387 004d 02       		.byte	0x2
 388 004e 05       		.byte	0x5
 389 004f 00000000 		.4byte	.LASF3
 390 0053 03       		.uleb128 0x3
 391 0054 02       		.byte	0x2
 392 0055 07       		.byte	0x7
 393 0056 18040000 		.4byte	.LASF4
 394 005a 04       		.uleb128 0x4
 395 005b FB080000 		.4byte	.LASF6
 396 005f 06       		.byte	0x6
 397 0060 3F       		.byte	0x3f
 398 0061 65000000 		.4byte	0x65
 399 0065 03       		.uleb128 0x3
 400 0066 04       		.byte	0x4
 401 0067 05       		.byte	0x5
 402 0068 15020000 		.4byte	.LASF7
 403 006c 04       		.uleb128 0x4
 404 006d E3020000 		.4byte	.LASF8
 405 0071 06       		.byte	0x6
 406 0072 41       		.byte	0x41
 407 0073 77000000 		.4byte	0x77
 408 0077 03       		.uleb128 0x3
 409 0078 04       		.byte	0x4
 410 0079 07       		.byte	0x7
 411 007a BD030000 		.4byte	.LASF9
 412 007e 03       		.uleb128 0x3
 413 007f 08       		.byte	0x8
 414 0080 05       		.byte	0x5
 415 0081 7B020000 		.4byte	.LASF10
 416 0085 03       		.uleb128 0x3
 417 0086 08       		.byte	0x8
 418 0087 07       		.byte	0x7
 419 0088 C7000000 		.4byte	.LASF11
 420 008c 04       		.uleb128 0x4
 421 008d 000A0000 		.4byte	.LASF12
 422 0091 07       		.byte	0x7
 423 0092 18       		.byte	0x18
 424 0093 3A000000 		.4byte	0x3a
 425 0097 04       		.uleb128 0x4
 426 0098 47070000 		.4byte	.LASF13
 427 009c 07       		.byte	0x7
 428 009d 2C       		.byte	0x2c
ARM GAS  /tmp/ccizFQRG.s 			page 29


 429 009e 5A000000 		.4byte	0x5a
 430 00a2 05       		.uleb128 0x5
 431 00a3 97000000 		.4byte	0x97
 432 00a7 04       		.uleb128 0x4
 433 00a8 65080000 		.4byte	.LASF14
 434 00ac 07       		.byte	0x7
 435 00ad 30       		.byte	0x30
 436 00ae 6C000000 		.4byte	0x6c
 437 00b2 05       		.uleb128 0x5
 438 00b3 A7000000 		.4byte	0xa7
 439 00b7 06       		.uleb128 0x6
 440 00b8 B2000000 		.4byte	0xb2
 441 00bc 07       		.uleb128 0x7
 442 00bd 04       		.byte	0x4
 443 00be 03       		.uleb128 0x3
 444 00bf 04       		.byte	0x4
 445 00c0 07       		.byte	0x7
 446 00c1 73050000 		.4byte	.LASF15
 447 00c5 08       		.uleb128 0x8
 448 00c6 B7000000 		.4byte	0xb7
 449 00ca D5000000 		.4byte	0xd5
 450 00ce 09       		.uleb128 0x9
 451 00cf BE000000 		.4byte	0xbe
 452 00d3 03       		.byte	0x3
 453 00d4 00       		.byte	0
 454 00d5 06       		.uleb128 0x6
 455 00d6 C5000000 		.4byte	0xc5
 456 00da 05       		.uleb128 0x5
 457 00db D5000000 		.4byte	0xd5
 458 00df 08       		.uleb128 0x8
 459 00e0 B7000000 		.4byte	0xb7
 460 00e4 EF000000 		.4byte	0xef
 461 00e8 09       		.uleb128 0x9
 462 00e9 BE000000 		.4byte	0xbe
 463 00ed 04       		.byte	0x4
 464 00ee 00       		.byte	0
 465 00ef 06       		.uleb128 0x6
 466 00f0 DF000000 		.4byte	0xdf
 467 00f4 05       		.uleb128 0x5
 468 00f5 EF000000 		.4byte	0xef
 469 00f9 0A       		.uleb128 0xa
 470 00fa 05010000 		.4byte	.LASF16
 471 00fe 08       		.byte	0x8
 472 00ff 6508     		.2byte	0x865
 473 0101 A2000000 		.4byte	0xa2
 474 0105 0B       		.uleb128 0xb
 475 0106 87030000 		.4byte	.LASF17
 476 010a 09       		.byte	0x9
 477 010b 3A       		.byte	0x3a
 478 010c A7000000 		.4byte	0xa7
 479 0110 08       		.uleb128 0x8
 480 0111 B7000000 		.4byte	0xb7
 481 0115 20010000 		.4byte	0x120
 482 0119 09       		.uleb128 0x9
 483 011a BE000000 		.4byte	0xbe
 484 011e 00       		.byte	0
 485 011f 00       		.byte	0
ARM GAS  /tmp/ccizFQRG.s 			page 30


 486 0120 06       		.uleb128 0x6
 487 0121 10010000 		.4byte	0x110
 488 0125 05       		.uleb128 0x5
 489 0126 20010000 		.4byte	0x120
 490 012a 05       		.uleb128 0x5
 491 012b 20010000 		.4byte	0x120
 492 012f 05       		.uleb128 0x5
 493 0130 20010000 		.4byte	0x120
 494 0134 05       		.uleb128 0x5
 495 0135 20010000 		.4byte	0x120
 496 0139 05       		.uleb128 0x5
 497 013a 20010000 		.4byte	0x120
 498 013e 0C       		.uleb128 0xc
 499 013f 4801     		.2byte	0x148
 500 0141 0A       		.byte	0xa
 501 0142 38       		.byte	0x38
 502 0143 67030000 		.4byte	0x367
 503 0147 0D       		.uleb128 0xd
 504 0148 870A0000 		.4byte	.LASF18
 505 014c 0A       		.byte	0xa
 506 014d 39       		.byte	0x39
 507 014e B2000000 		.4byte	0xb2
 508 0152 00       		.byte	0
 509 0153 0D       		.uleb128 0xd
 510 0154 6C010000 		.4byte	.LASF19
 511 0158 0A       		.byte	0xa
 512 0159 3A       		.byte	0x3a
 513 015a B2000000 		.4byte	0xb2
 514 015e 04       		.byte	0x4
 515 015f 0D       		.uleb128 0xd
 516 0160 E0080000 		.4byte	.LASF20
 517 0164 0A       		.byte	0xa
 518 0165 3B       		.byte	0x3b
 519 0166 B7000000 		.4byte	0xb7
 520 016a 08       		.byte	0x8
 521 016b 0D       		.uleb128 0xd
 522 016c E2030000 		.4byte	.LASF21
 523 0170 0A       		.byte	0xa
 524 0171 3C       		.byte	0x3c
 525 0172 39010000 		.4byte	0x139
 526 0176 0C       		.byte	0xc
 527 0177 0D       		.uleb128 0xd
 528 0178 67020000 		.4byte	.LASF22
 529 017c 0A       		.byte	0xa
 530 017d 3D       		.byte	0x3d
 531 017e B2000000 		.4byte	0xb2
 532 0182 10       		.byte	0x10
 533 0183 0D       		.uleb128 0xd
 534 0184 48040000 		.4byte	.LASF23
 535 0188 0A       		.byte	0xa
 536 0189 3E       		.byte	0x3e
 537 018a B2000000 		.4byte	0xb2
 538 018e 14       		.byte	0x14
 539 018f 0D       		.uleb128 0xd
 540 0190 DF070000 		.4byte	.LASF24
 541 0194 0A       		.byte	0xa
 542 0195 3F       		.byte	0x3f
ARM GAS  /tmp/ccizFQRG.s 			page 31


 543 0196 B7000000 		.4byte	0xb7
 544 019a 18       		.byte	0x18
 545 019b 0D       		.uleb128 0xd
 546 019c F5000000 		.4byte	.LASF25
 547 01a0 0A       		.byte	0xa
 548 01a1 40       		.byte	0x40
 549 01a2 B2000000 		.4byte	0xb2
 550 01a6 1C       		.byte	0x1c
 551 01a7 0D       		.uleb128 0xd
 552 01a8 2C000000 		.4byte	.LASF26
 553 01ac 0A       		.byte	0xa
 554 01ad 41       		.byte	0x41
 555 01ae B2000000 		.4byte	0xb2
 556 01b2 20       		.byte	0x20
 557 01b3 0D       		.uleb128 0xd
 558 01b4 6D030000 		.4byte	.LASF27
 559 01b8 0A       		.byte	0xa
 560 01b9 42       		.byte	0x42
 561 01ba B2000000 		.4byte	0xb2
 562 01be 24       		.byte	0x24
 563 01bf 0D       		.uleb128 0xd
 564 01c0 00070000 		.4byte	.LASF28
 565 01c4 0A       		.byte	0xa
 566 01c5 43       		.byte	0x43
 567 01c6 B2000000 		.4byte	0xb2
 568 01ca 28       		.byte	0x28
 569 01cb 0D       		.uleb128 0xd
 570 01cc 97010000 		.4byte	.LASF29
 571 01d0 0A       		.byte	0xa
 572 01d1 44       		.byte	0x44
 573 01d2 34010000 		.4byte	0x134
 574 01d6 2C       		.byte	0x2c
 575 01d7 0D       		.uleb128 0xd
 576 01d8 54020000 		.4byte	.LASF30
 577 01dc 0A       		.byte	0xa
 578 01dd 45       		.byte	0x45
 579 01de B2000000 		.4byte	0xb2
 580 01e2 30       		.byte	0x30
 581 01e3 0D       		.uleb128 0xd
 582 01e4 F3030000 		.4byte	.LASF31
 583 01e8 0A       		.byte	0xa
 584 01e9 46       		.byte	0x46
 585 01ea 2F010000 		.4byte	0x12f
 586 01ee 34       		.byte	0x34
 587 01ef 0D       		.uleb128 0xd
 588 01f0 FA040000 		.4byte	.LASF32
 589 01f4 0A       		.byte	0xa
 590 01f5 47       		.byte	0x47
 591 01f6 B2000000 		.4byte	0xb2
 592 01fa 38       		.byte	0x38
 593 01fb 0D       		.uleb128 0xd
 594 01fc A1060000 		.4byte	.LASF33
 595 0200 0A       		.byte	0xa
 596 0201 48       		.byte	0x48
 597 0202 2A010000 		.4byte	0x12a
 598 0206 3C       		.byte	0x3c
 599 0207 0D       		.uleb128 0xd
ARM GAS  /tmp/ccizFQRG.s 			page 32


 600 0208 07030000 		.4byte	.LASF34
 601 020c 0A       		.byte	0xa
 602 020d 49       		.byte	0x49
 603 020e 77030000 		.4byte	0x377
 604 0212 40       		.byte	0x40
 605 0213 0D       		.uleb128 0xd
 606 0214 04040000 		.4byte	.LASF35
 607 0218 0A       		.byte	0xa
 608 0219 4A       		.byte	0x4a
 609 021a 25010000 		.4byte	0x125
 610 021e 5C       		.byte	0x5c
 611 021f 0D       		.uleb128 0xd
 612 0220 3C090000 		.4byte	.LASF36
 613 0224 0A       		.byte	0xa
 614 0225 4B       		.byte	0x4b
 615 0226 B2000000 		.4byte	0xb2
 616 022a 60       		.byte	0x60
 617 022b 0D       		.uleb128 0xd
 618 022c 5B070000 		.4byte	.LASF37
 619 0230 0A       		.byte	0xa
 620 0231 4C       		.byte	0x4c
 621 0232 B2000000 		.4byte	0xb2
 622 0236 64       		.byte	0x64
 623 0237 0D       		.uleb128 0xd
 624 0238 66030000 		.4byte	.LASF38
 625 023c 0A       		.byte	0xa
 626 023d 4D       		.byte	0x4d
 627 023e B7000000 		.4byte	0xb7
 628 0242 68       		.byte	0x68
 629 0243 0D       		.uleb128 0xd
 630 0244 0A000000 		.4byte	.LASF39
 631 0248 0A       		.byte	0xa
 632 0249 4E       		.byte	0x4e
 633 024a B7000000 		.4byte	0xb7
 634 024e 6C       		.byte	0x6c
 635 024f 0D       		.uleb128 0xd
 636 0250 A1090000 		.4byte	.LASF40
 637 0254 0A       		.byte	0xa
 638 0255 4F       		.byte	0x4f
 639 0256 B2000000 		.4byte	0xb2
 640 025a 70       		.byte	0x70
 641 025b 0D       		.uleb128 0xd
 642 025c 63070000 		.4byte	.LASF41
 643 0260 0A       		.byte	0xa
 644 0261 50       		.byte	0x50
 645 0262 B2000000 		.4byte	0xb2
 646 0266 74       		.byte	0x74
 647 0267 0D       		.uleb128 0xd
 648 0268 9A050000 		.4byte	.LASF42
 649 026c 0A       		.byte	0xa
 650 026d 51       		.byte	0x51
 651 026e B2000000 		.4byte	0xb2
 652 0272 78       		.byte	0x78
 653 0273 0D       		.uleb128 0xd
 654 0274 0E040000 		.4byte	.LASF43
 655 0278 0A       		.byte	0xa
 656 0279 52       		.byte	0x52
ARM GAS  /tmp/ccizFQRG.s 			page 33


 657 027a 91030000 		.4byte	0x391
 658 027e 7C       		.byte	0x7c
 659 027f 0D       		.uleb128 0xd
 660 0280 54080000 		.4byte	.LASF44
 661 0284 0A       		.byte	0xa
 662 0285 53       		.byte	0x53
 663 0286 B2000000 		.4byte	0xb2
 664 028a E4       		.byte	0xe4
 665 028b 0D       		.uleb128 0xd
 666 028c F20A0000 		.4byte	.LASF45
 667 0290 0A       		.byte	0xa
 668 0291 54       		.byte	0x54
 669 0292 B7000000 		.4byte	0xb7
 670 0296 E8       		.byte	0xe8
 671 0297 0D       		.uleb128 0xd
 672 0298 F6060000 		.4byte	.LASF46
 673 029c 0A       		.byte	0xa
 674 029d 55       		.byte	0x55
 675 029e F4000000 		.4byte	0xf4
 676 02a2 EC       		.byte	0xec
 677 02a3 0E       		.uleb128 0xe
 678 02a4 71020000 		.4byte	.LASF47
 679 02a8 0A       		.byte	0xa
 680 02a9 56       		.byte	0x56
 681 02aa B2000000 		.4byte	0xb2
 682 02ae 0001     		.2byte	0x100
 683 02b0 0E       		.uleb128 0xe
 684 02b1 A2000000 		.4byte	.LASF48
 685 02b5 0A       		.byte	0xa
 686 02b6 57       		.byte	0x57
 687 02b7 B2000000 		.4byte	0xb2
 688 02bb 0401     		.2byte	0x104
 689 02bd 0E       		.uleb128 0xe
 690 02be C4010000 		.4byte	.LASF49
 691 02c2 0A       		.byte	0xa
 692 02c3 58       		.byte	0x58
 693 02c4 B7000000 		.4byte	0xb7
 694 02c8 0801     		.2byte	0x108
 695 02ca 0E       		.uleb128 0xe
 696 02cb 3A030000 		.4byte	.LASF50
 697 02cf 0A       		.byte	0xa
 698 02d0 59       		.byte	0x59
 699 02d1 B2000000 		.4byte	0xb2
 700 02d5 0C01     		.2byte	0x10c
 701 02d7 0E       		.uleb128 0xe
 702 02d8 0F050000 		.4byte	.LASF51
 703 02dc 0A       		.byte	0xa
 704 02dd 5A       		.byte	0x5a
 705 02de B2000000 		.4byte	0xb2
 706 02e2 1001     		.2byte	0x110
 707 02e4 0E       		.uleb128 0xe
 708 02e5 29080000 		.4byte	.LASF52
 709 02e9 0A       		.byte	0xa
 710 02ea 5B       		.byte	0x5b
 711 02eb B2000000 		.4byte	0xb2
 712 02ef 1401     		.2byte	0x114
 713 02f1 0E       		.uleb128 0xe
ARM GAS  /tmp/ccizFQRG.s 			page 34


 714 02f2 E4090000 		.4byte	.LASF53
 715 02f6 0A       		.byte	0xa
 716 02f7 5C       		.byte	0x5c
 717 02f8 B2000000 		.4byte	0xb2
 718 02fc 1801     		.2byte	0x118
 719 02fe 0E       		.uleb128 0xe
 720 02ff 2C020000 		.4byte	.LASF54
 721 0303 0A       		.byte	0xa
 722 0304 5D       		.byte	0x5d
 723 0305 B7000000 		.4byte	0xb7
 724 0309 1C01     		.2byte	0x11c
 725 030b 0E       		.uleb128 0xe
 726 030c 97030000 		.4byte	.LASF55
 727 0310 0A       		.byte	0xa
 728 0311 5E       		.byte	0x5e
 729 0312 B7000000 		.4byte	0xb7
 730 0316 2001     		.2byte	0x120
 731 0318 0E       		.uleb128 0xe
 732 0319 2B040000 		.4byte	.LASF56
 733 031d 0A       		.byte	0xa
 734 031e 5F       		.byte	0x5f
 735 031f DA000000 		.4byte	0xda
 736 0323 2401     		.2byte	0x124
 737 0325 0E       		.uleb128 0xe
 738 0326 37080000 		.4byte	.LASF57
 739 032a 0A       		.byte	0xa
 740 032b 60       		.byte	0x60
 741 032c B2000000 		.4byte	0xb2
 742 0330 3401     		.2byte	0x134
 743 0332 0E       		.uleb128 0xe
 744 0333 F2090000 		.4byte	.LASF58
 745 0337 0A       		.byte	0xa
 746 0338 61       		.byte	0x61
 747 0339 B2000000 		.4byte	0xb2
 748 033d 3801     		.2byte	0x138
 749 033f 0E       		.uleb128 0xe
 750 0340 1E020000 		.4byte	.LASF59
 751 0344 0A       		.byte	0xa
 752 0345 62       		.byte	0x62
 753 0346 B7000000 		.4byte	0xb7
 754 034a 3C01     		.2byte	0x13c
 755 034c 0E       		.uleb128 0xe
 756 034d A6030000 		.4byte	.LASF60
 757 0351 0A       		.byte	0xa
 758 0352 63       		.byte	0x63
 759 0353 B7000000 		.4byte	0xb7
 760 0357 4001     		.2byte	0x140
 761 0359 0E       		.uleb128 0xe
 762 035a 990A0000 		.4byte	.LASF61
 763 035e 0A       		.byte	0xa
 764 035f 64       		.byte	0x64
 765 0360 B7000000 		.4byte	0xb7
 766 0364 4401     		.2byte	0x144
 767 0366 00       		.byte	0
 768 0367 08       		.uleb128 0x8
 769 0368 B2000000 		.4byte	0xb2
 770 036c 77030000 		.4byte	0x377
ARM GAS  /tmp/ccizFQRG.s 			page 35


 771 0370 09       		.uleb128 0x9
 772 0371 BE000000 		.4byte	0xbe
 773 0375 06       		.byte	0x6
 774 0376 00       		.byte	0
 775 0377 05       		.uleb128 0x5
 776 0378 67030000 		.4byte	0x367
 777 037c 08       		.uleb128 0x8
 778 037d B7000000 		.4byte	0xb7
 779 0381 8C030000 		.4byte	0x38c
 780 0385 09       		.uleb128 0x9
 781 0386 BE000000 		.4byte	0xbe
 782 038a 19       		.byte	0x19
 783 038b 00       		.byte	0
 784 038c 06       		.uleb128 0x6
 785 038d 7C030000 		.4byte	0x37c
 786 0391 05       		.uleb128 0x5
 787 0392 8C030000 		.4byte	0x38c
 788 0396 0F       		.uleb128 0xf
 789 0397 506D6300 		.ascii	"Pmc\000"
 790 039b 0A       		.byte	0xa
 791 039c 65       		.byte	0x65
 792 039d 3E010000 		.4byte	0x13e
 793 03a1 04       		.uleb128 0x4
 794 03a2 34050000 		.4byte	.LASF62
 795 03a6 0B       		.byte	0xb
 796 03a7 07       		.byte	0x7
 797 03a8 25000000 		.4byte	0x25
 798 03ac 04       		.uleb128 0x4
 799 03ad 9A060000 		.4byte	.LASF63
 800 03b1 0C       		.byte	0xc
 801 03b2 2C       		.byte	0x2c
 802 03b3 65000000 		.4byte	0x65
 803 03b7 04       		.uleb128 0x4
 804 03b8 9D080000 		.4byte	.LASF64
 805 03bc 0C       		.byte	0xc
 806 03bd 72       		.byte	0x72
 807 03be 65000000 		.4byte	0x65
 808 03c2 10       		.uleb128 0x10
 809 03c3 90040000 		.4byte	.LASF65
 810 03c7 0D       		.byte	0xd
 811 03c8 6501     		.2byte	0x165
 812 03ca 2C000000 		.4byte	0x2c
 813 03ce 11       		.uleb128 0x11
 814 03cf 04       		.byte	0x4
 815 03d0 0C       		.byte	0xc
 816 03d1 A6       		.byte	0xa6
 817 03d2 ED030000 		.4byte	0x3ed
 818 03d6 12       		.uleb128 0x12
 819 03d7 AB010000 		.4byte	.LASF66
 820 03db 0C       		.byte	0xc
 821 03dc A8       		.byte	0xa8
 822 03dd C2030000 		.4byte	0x3c2
 823 03e1 12       		.uleb128 0x12
 824 03e2 80030000 		.4byte	.LASF67
 825 03e6 0C       		.byte	0xc
 826 03e7 A9       		.byte	0xa9
 827 03e8 ED030000 		.4byte	0x3ed
ARM GAS  /tmp/ccizFQRG.s 			page 36


 828 03ec 00       		.byte	0
 829 03ed 08       		.uleb128 0x8
 830 03ee 45000000 		.4byte	0x45
 831 03f2 FD030000 		.4byte	0x3fd
 832 03f6 09       		.uleb128 0x9
 833 03f7 BE000000 		.4byte	0xbe
 834 03fb 03       		.byte	0x3
 835 03fc 00       		.byte	0
 836 03fd 13       		.uleb128 0x13
 837 03fe 08       		.byte	0x8
 838 03ff 0C       		.byte	0xc
 839 0400 A3       		.byte	0xa3
 840 0401 1E040000 		.4byte	0x41e
 841 0405 0D       		.uleb128 0xd
 842 0406 5D080000 		.4byte	.LASF68
 843 040a 0C       		.byte	0xc
 844 040b A5       		.byte	0xa5
 845 040c 25000000 		.4byte	0x25
 846 0410 00       		.byte	0
 847 0411 0D       		.uleb128 0xd
 848 0412 18090000 		.4byte	.LASF69
 849 0416 0C       		.byte	0xc
 850 0417 AA       		.byte	0xaa
 851 0418 CE030000 		.4byte	0x3ce
 852 041c 04       		.byte	0x4
 853 041d 00       		.byte	0
 854 041e 04       		.uleb128 0x4
 855 041f CC070000 		.4byte	.LASF70
 856 0423 0C       		.byte	0xc
 857 0424 AB       		.byte	0xab
 858 0425 FD030000 		.4byte	0x3fd
 859 0429 04       		.uleb128 0x4
 860 042a 53060000 		.4byte	.LASF71
 861 042e 0C       		.byte	0xc
 862 042f AF       		.byte	0xaf
 863 0430 A1030000 		.4byte	0x3a1
 864 0434 04       		.uleb128 0x4
 865 0435 70090000 		.4byte	.LASF72
 866 0439 0E       		.byte	0xe
 867 043a 16       		.byte	0x16
 868 043b 77000000 		.4byte	0x77
 869 043f 14       		.uleb128 0x14
 870 0440 23030000 		.4byte	.LASF77
 871 0444 18       		.byte	0x18
 872 0445 0E       		.byte	0xe
 873 0446 2D       		.byte	0x2d
 874 0447 92040000 		.4byte	0x492
 875 044b 0D       		.uleb128 0xd
 876 044c 05090000 		.4byte	.LASF73
 877 0450 0E       		.byte	0xe
 878 0451 2F       		.byte	0x2f
 879 0452 92040000 		.4byte	0x492
 880 0456 00       		.byte	0
 881 0457 15       		.uleb128 0x15
 882 0458 5F6B00   		.ascii	"_k\000"
 883 045b 0E       		.byte	0xe
 884 045c 30       		.byte	0x30
ARM GAS  /tmp/ccizFQRG.s 			page 37


 885 045d 25000000 		.4byte	0x25
 886 0461 04       		.byte	0x4
 887 0462 0D       		.uleb128 0xd
 888 0463 45080000 		.4byte	.LASF74
 889 0467 0E       		.byte	0xe
 890 0468 30       		.byte	0x30
 891 0469 25000000 		.4byte	0x25
 892 046d 08       		.byte	0x8
 893 046e 0D       		.uleb128 0xd
 894 046f 01030000 		.4byte	.LASF75
 895 0473 0E       		.byte	0xe
 896 0474 30       		.byte	0x30
 897 0475 25000000 		.4byte	0x25
 898 0479 0C       		.byte	0xc
 899 047a 0D       		.uleb128 0xd
 900 047b 49020000 		.4byte	.LASF76
 901 047f 0E       		.byte	0xe
 902 0480 30       		.byte	0x30
 903 0481 25000000 		.4byte	0x25
 904 0485 10       		.byte	0x10
 905 0486 15       		.uleb128 0x15
 906 0487 5F7800   		.ascii	"_x\000"
 907 048a 0E       		.byte	0xe
 908 048b 31       		.byte	0x31
 909 048c 98040000 		.4byte	0x498
 910 0490 14       		.byte	0x14
 911 0491 00       		.byte	0
 912 0492 16       		.uleb128 0x16
 913 0493 04       		.byte	0x4
 914 0494 3F040000 		.4byte	0x43f
 915 0498 08       		.uleb128 0x8
 916 0499 34040000 		.4byte	0x434
 917 049d A8040000 		.4byte	0x4a8
 918 04a1 09       		.uleb128 0x9
 919 04a2 BE000000 		.4byte	0xbe
 920 04a6 00       		.byte	0
 921 04a7 00       		.byte	0
 922 04a8 14       		.uleb128 0x14
 923 04a9 61030000 		.4byte	.LASF78
 924 04ad 24       		.byte	0x24
 925 04ae 0E       		.byte	0xe
 926 04af 35       		.byte	0x35
 927 04b0 21050000 		.4byte	0x521
 928 04b4 0D       		.uleb128 0xd
 929 04b5 3A010000 		.4byte	.LASF79
 930 04b9 0E       		.byte	0xe
 931 04ba 37       		.byte	0x37
 932 04bb 25000000 		.4byte	0x25
 933 04bf 00       		.byte	0
 934 04c0 0D       		.uleb128 0xd
 935 04c1 900A0000 		.4byte	.LASF80
 936 04c5 0E       		.byte	0xe
 937 04c6 38       		.byte	0x38
 938 04c7 25000000 		.4byte	0x25
 939 04cb 04       		.byte	0x4
 940 04cc 0D       		.uleb128 0xd
 941 04cd A1010000 		.4byte	.LASF81
ARM GAS  /tmp/ccizFQRG.s 			page 38


 942 04d1 0E       		.byte	0xe
 943 04d2 39       		.byte	0x39
 944 04d3 25000000 		.4byte	0x25
 945 04d7 08       		.byte	0x8
 946 04d8 0D       		.uleb128 0xd
 947 04d9 E80A0000 		.4byte	.LASF82
 948 04dd 0E       		.byte	0xe
 949 04de 3A       		.byte	0x3a
 950 04df 25000000 		.4byte	0x25
 951 04e3 0C       		.byte	0xc
 952 04e4 0D       		.uleb128 0xd
 953 04e5 74060000 		.4byte	.LASF83
 954 04e9 0E       		.byte	0xe
 955 04ea 3B       		.byte	0x3b
 956 04eb 25000000 		.4byte	0x25
 957 04ef 10       		.byte	0x10
 958 04f0 0D       		.uleb128 0xd
 959 04f1 0B070000 		.4byte	.LASF84
 960 04f5 0E       		.byte	0xe
 961 04f6 3C       		.byte	0x3c
 962 04f7 25000000 		.4byte	0x25
 963 04fb 14       		.byte	0x14
 964 04fc 0D       		.uleb128 0xd
 965 04fd CD090000 		.4byte	.LASF85
 966 0501 0E       		.byte	0xe
 967 0502 3D       		.byte	0x3d
 968 0503 25000000 		.4byte	0x25
 969 0507 18       		.byte	0x18
 970 0508 0D       		.uleb128 0xd
 971 0509 A2070000 		.4byte	.LASF86
 972 050d 0E       		.byte	0xe
 973 050e 3E       		.byte	0x3e
 974 050f 25000000 		.4byte	0x25
 975 0513 1C       		.byte	0x1c
 976 0514 0D       		.uleb128 0xd
 977 0515 6D0A0000 		.4byte	.LASF87
 978 0519 0E       		.byte	0xe
 979 051a 3F       		.byte	0x3f
 980 051b 25000000 		.4byte	0x25
 981 051f 20       		.byte	0x20
 982 0520 00       		.byte	0
 983 0521 17       		.uleb128 0x17
 984 0522 B6010000 		.4byte	.LASF88
 985 0526 0801     		.2byte	0x108
 986 0528 0E       		.byte	0xe
 987 0529 48       		.byte	0x48
 988 052a 61050000 		.4byte	0x561
 989 052e 0D       		.uleb128 0xd
 990 052f D6020000 		.4byte	.LASF89
 991 0533 0E       		.byte	0xe
 992 0534 49       		.byte	0x49
 993 0535 61050000 		.4byte	0x561
 994 0539 00       		.byte	0
 995 053a 0D       		.uleb128 0xd
 996 053b 4F070000 		.4byte	.LASF90
 997 053f 0E       		.byte	0xe
 998 0540 4A       		.byte	0x4a
ARM GAS  /tmp/ccizFQRG.s 			page 39


 999 0541 61050000 		.4byte	0x561
 1000 0545 80       		.byte	0x80
 1001 0546 0E       		.uleb128 0xe
 1002 0547 25090000 		.4byte	.LASF91
 1003 054b 0E       		.byte	0xe
 1004 054c 4C       		.byte	0x4c
 1005 054d 34040000 		.4byte	0x434
 1006 0551 0001     		.2byte	0x100
 1007 0553 0E       		.uleb128 0xe
 1008 0554 41020000 		.4byte	.LASF92
 1009 0558 0E       		.byte	0xe
 1010 0559 4F       		.byte	0x4f
 1011 055a 34040000 		.4byte	0x434
 1012 055e 0401     		.2byte	0x104
 1013 0560 00       		.byte	0
 1014 0561 08       		.uleb128 0x8
 1015 0562 BC000000 		.4byte	0xbc
 1016 0566 71050000 		.4byte	0x571
 1017 056a 09       		.uleb128 0x9
 1018 056b BE000000 		.4byte	0xbe
 1019 056f 1F       		.byte	0x1f
 1020 0570 00       		.byte	0
 1021 0571 17       		.uleb128 0x17
 1022 0572 7D060000 		.4byte	.LASF93
 1023 0576 9001     		.2byte	0x190
 1024 0578 0E       		.byte	0xe
 1025 0579 5B       		.byte	0x5b
 1026 057a AF050000 		.4byte	0x5af
 1027 057e 0D       		.uleb128 0xd
 1028 057f 05090000 		.4byte	.LASF73
 1029 0583 0E       		.byte	0xe
 1030 0584 5C       		.byte	0x5c
 1031 0585 AF050000 		.4byte	0x5af
 1032 0589 00       		.byte	0
 1033 058a 0D       		.uleb128 0xd
 1034 058b 0A080000 		.4byte	.LASF94
 1035 058f 0E       		.byte	0xe
 1036 0590 5D       		.byte	0x5d
 1037 0591 25000000 		.4byte	0x25
 1038 0595 04       		.byte	0x4
 1039 0596 0D       		.uleb128 0xd
 1040 0597 DE020000 		.4byte	.LASF95
 1041 059b 0E       		.byte	0xe
 1042 059c 5F       		.byte	0x5f
 1043 059d B5050000 		.4byte	0x5b5
 1044 05a1 08       		.byte	0x8
 1045 05a2 0D       		.uleb128 0xd
 1046 05a3 B6010000 		.4byte	.LASF88
 1047 05a7 0E       		.byte	0xe
 1048 05a8 60       		.byte	0x60
 1049 05a9 21050000 		.4byte	0x521
 1050 05ad 88       		.byte	0x88
 1051 05ae 00       		.byte	0
 1052 05af 16       		.uleb128 0x16
 1053 05b0 04       		.byte	0x4
 1054 05b1 71050000 		.4byte	0x571
 1055 05b5 08       		.uleb128 0x8
ARM GAS  /tmp/ccizFQRG.s 			page 40


 1056 05b6 C5050000 		.4byte	0x5c5
 1057 05ba C5050000 		.4byte	0x5c5
 1058 05be 09       		.uleb128 0x9
 1059 05bf BE000000 		.4byte	0xbe
 1060 05c3 1F       		.byte	0x1f
 1061 05c4 00       		.byte	0
 1062 05c5 16       		.uleb128 0x16
 1063 05c6 04       		.byte	0x4
 1064 05c7 CB050000 		.4byte	0x5cb
 1065 05cb 18       		.uleb128 0x18
 1066 05cc 14       		.uleb128 0x14
 1067 05cd AC070000 		.4byte	.LASF96
 1068 05d1 08       		.byte	0x8
 1069 05d2 0E       		.byte	0xe
 1070 05d3 73       		.byte	0x73
 1071 05d4 F1050000 		.4byte	0x5f1
 1072 05d8 0D       		.uleb128 0xd
 1073 05d9 7C010000 		.4byte	.LASF97
 1074 05dd 0E       		.byte	0xe
 1075 05de 74       		.byte	0x74
 1076 05df F1050000 		.4byte	0x5f1
 1077 05e3 00       		.byte	0
 1078 05e4 0D       		.uleb128 0xd
 1079 05e5 BA080000 		.4byte	.LASF98
 1080 05e9 0E       		.byte	0xe
 1081 05ea 75       		.byte	0x75
 1082 05eb 25000000 		.4byte	0x25
 1083 05ef 04       		.byte	0x4
 1084 05f0 00       		.byte	0
 1085 05f1 16       		.uleb128 0x16
 1086 05f2 04       		.byte	0x4
 1087 05f3 45000000 		.4byte	0x45
 1088 05f7 14       		.uleb128 0x14
 1089 05f8 D7070000 		.4byte	.LASF99
 1090 05fc 68       		.byte	0x68
 1091 05fd 0E       		.byte	0xe
 1092 05fe B3       		.byte	0xb3
 1093 05ff 21070000 		.4byte	0x721
 1094 0603 15       		.uleb128 0x15
 1095 0604 5F7000   		.ascii	"_p\000"
 1096 0607 0E       		.byte	0xe
 1097 0608 B4       		.byte	0xb4
 1098 0609 F1050000 		.4byte	0x5f1
 1099 060d 00       		.byte	0
 1100 060e 15       		.uleb128 0x15
 1101 060f 5F7200   		.ascii	"_r\000"
 1102 0612 0E       		.byte	0xe
 1103 0613 B5       		.byte	0xb5
 1104 0614 25000000 		.4byte	0x25
 1105 0618 04       		.byte	0x4
 1106 0619 15       		.uleb128 0x15
 1107 061a 5F7700   		.ascii	"_w\000"
 1108 061d 0E       		.byte	0xe
 1109 061e B6       		.byte	0xb6
 1110 061f 25000000 		.4byte	0x25
 1111 0623 08       		.byte	0x8
 1112 0624 0D       		.uleb128 0xd
ARM GAS  /tmp/ccizFQRG.s 			page 41


 1113 0625 3A020000 		.4byte	.LASF100
 1114 0629 0E       		.byte	0xe
 1115 062a B7       		.byte	0xb7
 1116 062b 4C000000 		.4byte	0x4c
 1117 062f 0C       		.byte	0xc
 1118 0630 0D       		.uleb128 0xd
 1119 0631 DC030000 		.4byte	.LASF101
 1120 0635 0E       		.byte	0xe
 1121 0636 B8       		.byte	0xb8
 1122 0637 4C000000 		.4byte	0x4c
 1123 063b 0E       		.byte	0xe
 1124 063c 15       		.uleb128 0x15
 1125 063d 5F626600 		.ascii	"_bf\000"
 1126 0641 0E       		.byte	0xe
 1127 0642 B9       		.byte	0xb9
 1128 0643 CC050000 		.4byte	0x5cc
 1129 0647 10       		.byte	0x10
 1130 0648 0D       		.uleb128 0xd
 1131 0649 DE000000 		.4byte	.LASF102
 1132 064d 0E       		.byte	0xe
 1133 064e BA       		.byte	0xba
 1134 064f 25000000 		.4byte	0x25
 1135 0653 18       		.byte	0x18
 1136 0654 0D       		.uleb128 0xd
 1137 0655 E0010000 		.4byte	.LASF103
 1138 0659 0E       		.byte	0xe
 1139 065a C1       		.byte	0xc1
 1140 065b BC000000 		.4byte	0xbc
 1141 065f 1C       		.byte	0x1c
 1142 0660 0D       		.uleb128 0xd
 1143 0661 15070000 		.4byte	.LASF104
 1144 0665 0E       		.byte	0xe
 1145 0666 C3       		.byte	0xc3
 1146 0667 8E080000 		.4byte	0x88e
 1147 066b 20       		.byte	0x20
 1148 066c 0D       		.uleb128 0xd
 1149 066d F3040000 		.4byte	.LASF105
 1150 0671 0E       		.byte	0xe
 1151 0672 C5       		.byte	0xc5
 1152 0673 B8080000 		.4byte	0x8b8
 1153 0677 24       		.byte	0x24
 1154 0678 0D       		.uleb128 0xd
 1155 0679 BF090000 		.4byte	.LASF106
 1156 067d 0E       		.byte	0xe
 1157 067e C8       		.byte	0xc8
 1158 067f DC080000 		.4byte	0x8dc
 1159 0683 28       		.byte	0x28
 1160 0684 0D       		.uleb128 0xd
 1161 0685 59010000 		.4byte	.LASF107
 1162 0689 0E       		.byte	0xe
 1163 068a C9       		.byte	0xc9
 1164 068b F6080000 		.4byte	0x8f6
 1165 068f 2C       		.byte	0x2c
 1166 0690 15       		.uleb128 0x15
 1167 0691 5F756200 		.ascii	"_ub\000"
 1168 0695 0E       		.byte	0xe
 1169 0696 CC       		.byte	0xcc
ARM GAS  /tmp/ccizFQRG.s 			page 42


 1170 0697 CC050000 		.4byte	0x5cc
 1171 069b 30       		.byte	0x30
 1172 069c 15       		.uleb128 0x15
 1173 069d 5F757000 		.ascii	"_up\000"
 1174 06a1 0E       		.byte	0xe
 1175 06a2 CD       		.byte	0xcd
 1176 06a3 F1050000 		.4byte	0x5f1
 1177 06a7 38       		.byte	0x38
 1178 06a8 15       		.uleb128 0x15
 1179 06a9 5F757200 		.ascii	"_ur\000"
 1180 06ad 0E       		.byte	0xe
 1181 06ae CE       		.byte	0xce
 1182 06af 25000000 		.4byte	0x25
 1183 06b3 3C       		.byte	0x3c
 1184 06b4 0D       		.uleb128 0xd
 1185 06b5 4E020000 		.4byte	.LASF108
 1186 06b9 0E       		.byte	0xe
 1187 06ba D1       		.byte	0xd1
 1188 06bb FC080000 		.4byte	0x8fc
 1189 06bf 40       		.byte	0x40
 1190 06c0 0D       		.uleb128 0xd
 1191 06c1 580A0000 		.4byte	.LASF109
 1192 06c5 0E       		.byte	0xe
 1193 06c6 D2       		.byte	0xd2
 1194 06c7 0C090000 		.4byte	0x90c
 1195 06cb 43       		.byte	0x43
 1196 06cc 15       		.uleb128 0x15
 1197 06cd 5F6C6200 		.ascii	"_lb\000"
 1198 06d1 0E       		.byte	0xe
 1199 06d2 D5       		.byte	0xd5
 1200 06d3 CC050000 		.4byte	0x5cc
 1201 06d7 44       		.byte	0x44
 1202 06d8 0D       		.uleb128 0xd
 1203 06d9 B1080000 		.4byte	.LASF110
 1204 06dd 0E       		.byte	0xe
 1205 06de D8       		.byte	0xd8
 1206 06df 25000000 		.4byte	0x25
 1207 06e3 4C       		.byte	0x4c
 1208 06e4 0D       		.uleb128 0xd
 1209 06e5 7C050000 		.4byte	.LASF111
 1210 06e9 0E       		.byte	0xe
 1211 06ea D9       		.byte	0xd9
 1212 06eb AC030000 		.4byte	0x3ac
 1213 06ef 50       		.byte	0x50
 1214 06f0 0D       		.uleb128 0xd
 1215 06f1 7B000000 		.4byte	.LASF112
 1216 06f5 0E       		.byte	0xe
 1217 06f6 DC       		.byte	0xdc
 1218 06f7 3F070000 		.4byte	0x73f
 1219 06fb 54       		.byte	0x54
 1220 06fc 0D       		.uleb128 0xd
 1221 06fd 97040000 		.4byte	.LASF113
 1222 0701 0E       		.byte	0xe
 1223 0702 E0       		.byte	0xe0
 1224 0703 29040000 		.4byte	0x429
 1225 0707 58       		.byte	0x58
 1226 0708 0D       		.uleb128 0xd
ARM GAS  /tmp/ccizFQRG.s 			page 43


 1227 0709 77030000 		.4byte	.LASF114
 1228 070d 0E       		.byte	0xe
 1229 070e E2       		.byte	0xe2
 1230 070f 1E040000 		.4byte	0x41e
 1231 0713 5C       		.byte	0x5c
 1232 0714 0D       		.uleb128 0xd
 1233 0715 B3070000 		.4byte	.LASF115
 1234 0719 0E       		.byte	0xe
 1235 071a E3       		.byte	0xe3
 1236 071b 25000000 		.4byte	0x25
 1237 071f 64       		.byte	0x64
 1238 0720 00       		.byte	0
 1239 0721 19       		.uleb128 0x19
 1240 0722 25000000 		.4byte	0x25
 1241 0726 3F070000 		.4byte	0x73f
 1242 072a 1A       		.uleb128 0x1a
 1243 072b 3F070000 		.4byte	0x73f
 1244 072f 1A       		.uleb128 0x1a
 1245 0730 BC000000 		.4byte	0xbc
 1246 0734 1A       		.uleb128 0x1a
 1247 0735 7C080000 		.4byte	0x87c
 1248 0739 1A       		.uleb128 0x1a
 1249 073a 25000000 		.4byte	0x25
 1250 073e 00       		.byte	0
 1251 073f 16       		.uleb128 0x16
 1252 0740 04       		.byte	0x4
 1253 0741 4A070000 		.4byte	0x74a
 1254 0745 06       		.uleb128 0x6
 1255 0746 3F070000 		.4byte	0x73f
 1256 074a 1B       		.uleb128 0x1b
 1257 074b 4D080000 		.4byte	.LASF116
 1258 074f 2804     		.2byte	0x428
 1259 0751 0E       		.byte	0xe
 1260 0752 3802     		.2byte	0x238
 1261 0754 7C080000 		.4byte	0x87c
 1262 0758 1C       		.uleb128 0x1c
 1263 0759 A5080000 		.4byte	.LASF117
 1264 075d 0E       		.byte	0xe
 1265 075e 3A02     		.2byte	0x23a
 1266 0760 25000000 		.4byte	0x25
 1267 0764 00       		.byte	0
 1268 0765 1C       		.uleb128 0x1c
 1269 0766 DD090000 		.4byte	.LASF118
 1270 076a 0E       		.byte	0xe
 1271 076b 3F02     		.2byte	0x23f
 1272 076d 63090000 		.4byte	0x963
 1273 0771 04       		.byte	0x4
 1274 0772 1C       		.uleb128 0x1c
 1275 0773 C5090000 		.4byte	.LASF119
 1276 0777 0E       		.byte	0xe
 1277 0778 3F02     		.2byte	0x23f
 1278 077a 63090000 		.4byte	0x963
 1279 077e 08       		.byte	0x8
 1280 077f 1C       		.uleb128 0x1c
 1281 0780 1B030000 		.4byte	.LASF120
 1282 0784 0E       		.byte	0xe
 1283 0785 3F02     		.2byte	0x23f
ARM GAS  /tmp/ccizFQRG.s 			page 44


 1284 0787 63090000 		.4byte	0x963
 1285 078b 0C       		.byte	0xc
 1286 078c 1C       		.uleb128 0x1c
 1287 078d 05080000 		.4byte	.LASF121
 1288 0791 0E       		.byte	0xe
 1289 0792 4102     		.2byte	0x241
 1290 0794 25000000 		.4byte	0x25
 1291 0798 10       		.byte	0x10
 1292 0799 1C       		.uleb128 0x1c
 1293 079a 1A000000 		.4byte	.LASF122
 1294 079e 0E       		.byte	0xe
 1295 079f 4202     		.2byte	0x242
 1296 07a1 450B0000 		.4byte	0xb45
 1297 07a5 14       		.byte	0x14
 1298 07a6 1C       		.uleb128 0x1c
 1299 07a7 D60A0000 		.4byte	.LASF123
 1300 07ab 0E       		.byte	0xe
 1301 07ac 4402     		.2byte	0x244
 1302 07ae 25000000 		.4byte	0x25
 1303 07b2 30       		.byte	0x30
 1304 07b3 1C       		.uleb128 0x1c
 1305 07b4 0F080000 		.4byte	.LASF124
 1306 07b8 0E       		.byte	0xe
 1307 07b9 4502     		.2byte	0x245
 1308 07bb B2080000 		.4byte	0x8b2
 1309 07bf 34       		.byte	0x34
 1310 07c0 1C       		.uleb128 0x1c
 1311 07c1 8F060000 		.4byte	.LASF125
 1312 07c5 0E       		.byte	0xe
 1313 07c6 4702     		.2byte	0x247
 1314 07c8 25000000 		.4byte	0x25
 1315 07cc 38       		.byte	0x38
 1316 07cd 1C       		.uleb128 0x1c
 1317 07ce 1F080000 		.4byte	.LASF126
 1318 07d2 0E       		.byte	0xe
 1319 07d3 4902     		.2byte	0x249
 1320 07d5 600B0000 		.4byte	0xb60
 1321 07d9 3C       		.byte	0x3c
 1322 07da 1C       		.uleb128 0x1c
 1323 07db 7A040000 		.4byte	.LASF127
 1324 07df 0E       		.byte	0xe
 1325 07e0 4C02     		.2byte	0x24c
 1326 07e2 92040000 		.4byte	0x492
 1327 07e6 40       		.byte	0x40
 1328 07e7 1C       		.uleb128 0x1c
 1329 07e8 5D020000 		.4byte	.LASF128
 1330 07ec 0E       		.byte	0xe
 1331 07ed 4D02     		.2byte	0x24d
 1332 07ef 25000000 		.4byte	0x25
 1333 07f3 44       		.byte	0x44
 1334 07f4 1C       		.uleb128 0x1c
 1335 07f5 BB0A0000 		.4byte	.LASF129
 1336 07f9 0E       		.byte	0xe
 1337 07fa 4E02     		.2byte	0x24e
 1338 07fc 92040000 		.4byte	0x492
 1339 0800 48       		.byte	0x48
 1340 0801 1C       		.uleb128 0x1c
ARM GAS  /tmp/ccizFQRG.s 			page 45


 1341 0802 BB070000 		.4byte	.LASF130
 1342 0806 0E       		.byte	0xe
 1343 0807 4F02     		.2byte	0x24f
 1344 0809 660B0000 		.4byte	0xb66
 1345 080d 4C       		.byte	0x4c
 1346 080e 1C       		.uleb128 0x1c
 1347 080f B5030000 		.4byte	.LASF131
 1348 0813 0E       		.byte	0xe
 1349 0814 5202     		.2byte	0x252
 1350 0816 25000000 		.4byte	0x25
 1351 081a 50       		.byte	0x50
 1352 081b 1C       		.uleb128 0x1c
 1353 081c AF020000 		.4byte	.LASF132
 1354 0820 0E       		.byte	0xe
 1355 0821 5302     		.2byte	0x253
 1356 0823 7C080000 		.4byte	0x87c
 1357 0827 54       		.byte	0x54
 1358 0828 1C       		.uleb128 0x1c
 1359 0829 6C070000 		.4byte	.LASF133
 1360 082d 0E       		.byte	0xe
 1361 082e 7602     		.2byte	0x276
 1362 0830 230B0000 		.4byte	0xb23
 1363 0834 58       		.byte	0x58
 1364 0835 1D       		.uleb128 0x1d
 1365 0836 7D060000 		.4byte	.LASF93
 1366 083a 0E       		.byte	0xe
 1367 083b 7A02     		.2byte	0x27a
 1368 083d AF050000 		.4byte	0x5af
 1369 0841 4801     		.2byte	0x148
 1370 0843 1D       		.uleb128 0x1d
 1371 0844 35040000 		.4byte	.LASF134
 1372 0848 0E       		.byte	0xe
 1373 0849 7B02     		.2byte	0x27b
 1374 084b 71050000 		.4byte	0x571
 1375 084f 4C01     		.2byte	0x14c
 1376 0851 1D       		.uleb128 0x1d
 1377 0852 1A0A0000 		.4byte	.LASF135
 1378 0856 0E       		.byte	0xe
 1379 0857 7F02     		.2byte	0x27f
 1380 0859 770B0000 		.4byte	0xb77
 1381 085d DC02     		.2byte	0x2dc
 1382 085f 1D       		.uleb128 0x1d
 1383 0860 0D020000 		.4byte	.LASF136
 1384 0864 0E       		.byte	0xe
 1385 0865 8402     		.2byte	0x284
 1386 0867 28090000 		.4byte	0x928
 1387 086b E002     		.2byte	0x2e0
 1388 086d 1D       		.uleb128 0x1d
 1389 086e B1010000 		.4byte	.LASF137
 1390 0872 0E       		.byte	0xe
 1391 0873 8502     		.2byte	0x285
 1392 0875 830B0000 		.4byte	0xb83
 1393 0879 EC02     		.2byte	0x2ec
 1394 087b 00       		.byte	0
 1395 087c 16       		.uleb128 0x16
 1396 087d 04       		.byte	0x4
 1397 087e 82080000 		.4byte	0x882
ARM GAS  /tmp/ccizFQRG.s 			page 46


 1398 0882 03       		.uleb128 0x3
 1399 0883 01       		.byte	0x1
 1400 0884 08       		.byte	0x8
 1401 0885 AC080000 		.4byte	.LASF138
 1402 0889 06       		.uleb128 0x6
 1403 088a 82080000 		.4byte	0x882
 1404 088e 16       		.uleb128 0x16
 1405 088f 04       		.byte	0x4
 1406 0890 21070000 		.4byte	0x721
 1407 0894 19       		.uleb128 0x19
 1408 0895 25000000 		.4byte	0x25
 1409 0899 B2080000 		.4byte	0x8b2
 1410 089d 1A       		.uleb128 0x1a
 1411 089e 3F070000 		.4byte	0x73f
 1412 08a2 1A       		.uleb128 0x1a
 1413 08a3 BC000000 		.4byte	0xbc
 1414 08a7 1A       		.uleb128 0x1a
 1415 08a8 B2080000 		.4byte	0x8b2
 1416 08ac 1A       		.uleb128 0x1a
 1417 08ad 25000000 		.4byte	0x25
 1418 08b1 00       		.byte	0
 1419 08b2 16       		.uleb128 0x16
 1420 08b3 04       		.byte	0x4
 1421 08b4 89080000 		.4byte	0x889
 1422 08b8 16       		.uleb128 0x16
 1423 08b9 04       		.byte	0x4
 1424 08ba 94080000 		.4byte	0x894
 1425 08be 19       		.uleb128 0x19
 1426 08bf B7030000 		.4byte	0x3b7
 1427 08c3 DC080000 		.4byte	0x8dc
 1428 08c7 1A       		.uleb128 0x1a
 1429 08c8 3F070000 		.4byte	0x73f
 1430 08cc 1A       		.uleb128 0x1a
 1431 08cd BC000000 		.4byte	0xbc
 1432 08d1 1A       		.uleb128 0x1a
 1433 08d2 B7030000 		.4byte	0x3b7
 1434 08d6 1A       		.uleb128 0x1a
 1435 08d7 25000000 		.4byte	0x25
 1436 08db 00       		.byte	0
 1437 08dc 16       		.uleb128 0x16
 1438 08dd 04       		.byte	0x4
 1439 08de BE080000 		.4byte	0x8be
 1440 08e2 19       		.uleb128 0x19
 1441 08e3 25000000 		.4byte	0x25
 1442 08e7 F6080000 		.4byte	0x8f6
 1443 08eb 1A       		.uleb128 0x1a
 1444 08ec 3F070000 		.4byte	0x73f
 1445 08f0 1A       		.uleb128 0x1a
 1446 08f1 BC000000 		.4byte	0xbc
 1447 08f5 00       		.byte	0
 1448 08f6 16       		.uleb128 0x16
 1449 08f7 04       		.byte	0x4
 1450 08f8 E2080000 		.4byte	0x8e2
 1451 08fc 08       		.uleb128 0x8
 1452 08fd 45000000 		.4byte	0x45
 1453 0901 0C090000 		.4byte	0x90c
 1454 0905 09       		.uleb128 0x9
ARM GAS  /tmp/ccizFQRG.s 			page 47


 1455 0906 BE000000 		.4byte	0xbe
 1456 090a 02       		.byte	0x2
 1457 090b 00       		.byte	0
 1458 090c 08       		.uleb128 0x8
 1459 090d 45000000 		.4byte	0x45
 1460 0911 1C090000 		.4byte	0x91c
 1461 0915 09       		.uleb128 0x9
 1462 0916 BE000000 		.4byte	0xbe
 1463 091a 00       		.byte	0
 1464 091b 00       		.byte	0
 1465 091c 10       		.uleb128 0x10
 1466 091d C5070000 		.4byte	.LASF139
 1467 0921 0E       		.byte	0xe
 1468 0922 1D01     		.2byte	0x11d
 1469 0924 F7050000 		.4byte	0x5f7
 1470 0928 1E       		.uleb128 0x1e
 1471 0929 D7090000 		.4byte	.LASF140
 1472 092d 0C       		.byte	0xc
 1473 092e 0E       		.byte	0xe
 1474 092f 2101     		.2byte	0x121
 1475 0931 5D090000 		.4byte	0x95d
 1476 0935 1C       		.uleb128 0x1c
 1477 0936 05090000 		.4byte	.LASF73
 1478 093a 0E       		.byte	0xe
 1479 093b 2301     		.2byte	0x123
 1480 093d 5D090000 		.4byte	0x95d
 1481 0941 00       		.byte	0
 1482 0942 1C       		.uleb128 0x1c
 1483 0943 FD030000 		.4byte	.LASF141
 1484 0947 0E       		.byte	0xe
 1485 0948 2401     		.2byte	0x124
 1486 094a 25000000 		.4byte	0x25
 1487 094e 04       		.byte	0x4
 1488 094f 1C       		.uleb128 0x1c
 1489 0950 FF070000 		.4byte	.LASF142
 1490 0954 0E       		.byte	0xe
 1491 0955 2501     		.2byte	0x125
 1492 0957 63090000 		.4byte	0x963
 1493 095b 08       		.byte	0x8
 1494 095c 00       		.byte	0
 1495 095d 16       		.uleb128 0x16
 1496 095e 04       		.byte	0x4
 1497 095f 28090000 		.4byte	0x928
 1498 0963 16       		.uleb128 0x16
 1499 0964 04       		.byte	0x4
 1500 0965 1C090000 		.4byte	0x91c
 1501 0969 1E       		.uleb128 0x1e
 1502 096a 12000000 		.4byte	.LASF143
 1503 096e 0E       		.byte	0xe
 1504 096f 0E       		.byte	0xe
 1505 0970 3D01     		.2byte	0x13d
 1506 0972 9E090000 		.4byte	0x99e
 1507 0976 1C       		.uleb128 0x1c
 1508 0977 DA080000 		.4byte	.LASF144
 1509 097b 0E       		.byte	0xe
 1510 097c 3E01     		.2byte	0x13e
 1511 097e 9E090000 		.4byte	0x99e
ARM GAS  /tmp/ccizFQRG.s 			page 48


 1512 0982 00       		.byte	0
 1513 0983 1C       		.uleb128 0x1c
 1514 0984 B7040000 		.4byte	.LASF145
 1515 0988 0E       		.byte	0xe
 1516 0989 3F01     		.2byte	0x13f
 1517 098b 9E090000 		.4byte	0x99e
 1518 098f 06       		.byte	0x6
 1519 0990 1C       		.uleb128 0x1c
 1520 0991 44090000 		.4byte	.LASF146
 1521 0995 0E       		.byte	0xe
 1522 0996 4001     		.2byte	0x140
 1523 0998 53000000 		.4byte	0x53
 1524 099c 0C       		.byte	0xc
 1525 099d 00       		.byte	0
 1526 099e 08       		.uleb128 0x8
 1527 099f 53000000 		.4byte	0x53
 1528 09a3 AE090000 		.4byte	0x9ae
 1529 09a7 09       		.uleb128 0x9
 1530 09a8 BE000000 		.4byte	0xbe
 1531 09ac 02       		.byte	0x2
 1532 09ad 00       		.byte	0
 1533 09ae 1F       		.uleb128 0x1f
 1534 09af D0       		.byte	0xd0
 1535 09b0 0E       		.byte	0xe
 1536 09b1 5702     		.2byte	0x257
 1537 09b3 AF0A0000 		.4byte	0xaaf
 1538 09b7 1C       		.uleb128 0x1c
 1539 09b8 02050000 		.4byte	.LASF147
 1540 09bc 0E       		.byte	0xe
 1541 09bd 5902     		.2byte	0x259
 1542 09bf 2C000000 		.4byte	0x2c
 1543 09c3 00       		.byte	0
 1544 09c4 1C       		.uleb128 0x1c
 1545 09c5 0B090000 		.4byte	.LASF148
 1546 09c9 0E       		.byte	0xe
 1547 09ca 5A02     		.2byte	0x25a
 1548 09cc 7C080000 		.4byte	0x87c
 1549 09d0 04       		.byte	0x4
 1550 09d1 1C       		.uleb128 0x1c
 1551 09d2 6D040000 		.4byte	.LASF149
 1552 09d6 0E       		.byte	0xe
 1553 09d7 5B02     		.2byte	0x25b
 1554 09d9 AF0A0000 		.4byte	0xaaf
 1555 09dd 08       		.byte	0x8
 1556 09de 1C       		.uleb128 0x1c
 1557 09df 780A0000 		.4byte	.LASF150
 1558 09e3 0E       		.byte	0xe
 1559 09e4 5C02     		.2byte	0x25c
 1560 09e6 A8040000 		.4byte	0x4a8
 1561 09ea 24       		.byte	0x24
 1562 09eb 1C       		.uleb128 0x1c
 1563 09ec 2B030000 		.4byte	.LASF151
 1564 09f0 0E       		.byte	0xe
 1565 09f1 5D02     		.2byte	0x25d
 1566 09f3 25000000 		.4byte	0x25
 1567 09f7 48       		.byte	0x48
 1568 09f8 1C       		.uleb128 0x1c
ARM GAS  /tmp/ccizFQRG.s 			page 49


 1569 09f9 E9070000 		.4byte	.LASF152
 1570 09fd 0E       		.byte	0xe
 1571 09fe 5E02     		.2byte	0x25e
 1572 0a00 85000000 		.4byte	0x85
 1573 0a04 50       		.byte	0x50
 1574 0a05 1C       		.uleb128 0x1c
 1575 0a06 A80A0000 		.4byte	.LASF153
 1576 0a0a 0E       		.byte	0xe
 1577 0a0b 5F02     		.2byte	0x25f
 1578 0a0d 69090000 		.4byte	0x969
 1579 0a11 58       		.byte	0x58
 1580 0a12 1C       		.uleb128 0x1c
 1581 0a13 95070000 		.4byte	.LASF154
 1582 0a17 0E       		.byte	0xe
 1583 0a18 6002     		.2byte	0x260
 1584 0a1a 1E040000 		.4byte	0x41e
 1585 0a1e 68       		.byte	0x68
 1586 0a1f 1C       		.uleb128 0x1c
 1587 0a20 AD0A0000 		.4byte	.LASF155
 1588 0a24 0E       		.byte	0xe
 1589 0a25 6102     		.2byte	0x261
 1590 0a27 1E040000 		.4byte	0x41e
 1591 0a2b 70       		.byte	0x70
 1592 0a2c 1C       		.uleb128 0x1c
 1593 0a2d 2C010000 		.4byte	.LASF156
 1594 0a31 0E       		.byte	0xe
 1595 0a32 6202     		.2byte	0x262
 1596 0a34 1E040000 		.4byte	0x41e
 1597 0a38 78       		.byte	0x78
 1598 0a39 1C       		.uleb128 0x1c
 1599 0a3a 81080000 		.4byte	.LASF157
 1600 0a3e 0E       		.byte	0xe
 1601 0a3f 6302     		.2byte	0x263
 1602 0a41 BF0A0000 		.4byte	0xabf
 1603 0a45 80       		.byte	0x80
 1604 0a46 1C       		.uleb128 0x1c
 1605 0a47 BB000000 		.4byte	.LASF158
 1606 0a4b 0E       		.byte	0xe
 1607 0a4c 6402     		.2byte	0x264
 1608 0a4e CF0A0000 		.4byte	0xacf
 1609 0a52 88       		.byte	0x88
 1610 0a53 1C       		.uleb128 0x1c
 1611 0a54 6E000000 		.4byte	.LASF159
 1612 0a58 0E       		.byte	0xe
 1613 0a59 6502     		.2byte	0x265
 1614 0a5b 25000000 		.4byte	0x25
 1615 0a5f A0       		.byte	0xa0
 1616 0a60 1C       		.uleb128 0x1c
 1617 0a61 C8020000 		.4byte	.LASF160
 1618 0a65 0E       		.byte	0xe
 1619 0a66 6602     		.2byte	0x266
 1620 0a68 1E040000 		.4byte	0x41e
 1621 0a6c A4       		.byte	0xa4
 1622 0a6d 1C       		.uleb128 0x1c
 1623 0a6e 12010000 		.4byte	.LASF161
 1624 0a72 0E       		.byte	0xe
 1625 0a73 6702     		.2byte	0x267
ARM GAS  /tmp/ccizFQRG.s 			page 50


 1626 0a75 1E040000 		.4byte	0x41e
 1627 0a79 AC       		.byte	0xac
 1628 0a7a 1C       		.uleb128 0x1c
 1629 0a7b B7020000 		.4byte	.LASF162
 1630 0a7f 0E       		.byte	0xe
 1631 0a80 6802     		.2byte	0x268
 1632 0a82 1E040000 		.4byte	0x41e
 1633 0a86 B4       		.byte	0xb4
 1634 0a87 1C       		.uleb128 0x1c
 1635 0a88 AC000000 		.4byte	.LASF163
 1636 0a8c 0E       		.byte	0xe
 1637 0a8d 6902     		.2byte	0x269
 1638 0a8f 1E040000 		.4byte	0x41e
 1639 0a93 BC       		.byte	0xbc
 1640 0a94 1C       		.uleb128 0x1c
 1641 0a95 5F090000 		.4byte	.LASF164
 1642 0a99 0E       		.byte	0xe
 1643 0a9a 6A02     		.2byte	0x26a
 1644 0a9c 1E040000 		.4byte	0x41e
 1645 0aa0 C4       		.byte	0xc4
 1646 0aa1 1C       		.uleb128 0x1c
 1647 0aa2 8C070000 		.4byte	.LASF165
 1648 0aa6 0E       		.byte	0xe
 1649 0aa7 6B02     		.2byte	0x26b
 1650 0aa9 25000000 		.4byte	0x25
 1651 0aad CC       		.byte	0xcc
 1652 0aae 00       		.byte	0
 1653 0aaf 08       		.uleb128 0x8
 1654 0ab0 82080000 		.4byte	0x882
 1655 0ab4 BF0A0000 		.4byte	0xabf
 1656 0ab8 09       		.uleb128 0x9
 1657 0ab9 BE000000 		.4byte	0xbe
 1658 0abd 19       		.byte	0x19
 1659 0abe 00       		.byte	0
 1660 0abf 08       		.uleb128 0x8
 1661 0ac0 82080000 		.4byte	0x882
 1662 0ac4 CF0A0000 		.4byte	0xacf
 1663 0ac8 09       		.uleb128 0x9
 1664 0ac9 BE000000 		.4byte	0xbe
 1665 0acd 07       		.byte	0x7
 1666 0ace 00       		.byte	0
 1667 0acf 08       		.uleb128 0x8
 1668 0ad0 82080000 		.4byte	0x882
 1669 0ad4 DF0A0000 		.4byte	0xadf
 1670 0ad8 09       		.uleb128 0x9
 1671 0ad9 BE000000 		.4byte	0xbe
 1672 0add 17       		.byte	0x17
 1673 0ade 00       		.byte	0
 1674 0adf 1F       		.uleb128 0x1f
 1675 0ae0 F0       		.byte	0xf0
 1676 0ae1 0E       		.byte	0xe
 1677 0ae2 7002     		.2byte	0x270
 1678 0ae4 030B0000 		.4byte	0xb03
 1679 0ae8 1C       		.uleb128 0x1c
 1680 0ae9 89040000 		.4byte	.LASF166
 1681 0aed 0E       		.byte	0xe
 1682 0aee 7302     		.2byte	0x273
ARM GAS  /tmp/ccizFQRG.s 			page 51


 1683 0af0 030B0000 		.4byte	0xb03
 1684 0af4 00       		.byte	0
 1685 0af5 1C       		.uleb128 0x1c
 1686 0af6 42030000 		.4byte	.LASF167
 1687 0afa 0E       		.byte	0xe
 1688 0afb 7402     		.2byte	0x274
 1689 0afd 130B0000 		.4byte	0xb13
 1690 0b01 78       		.byte	0x78
 1691 0b02 00       		.byte	0
 1692 0b03 08       		.uleb128 0x8
 1693 0b04 F1050000 		.4byte	0x5f1
 1694 0b08 130B0000 		.4byte	0xb13
 1695 0b0c 09       		.uleb128 0x9
 1696 0b0d BE000000 		.4byte	0xbe
 1697 0b11 1D       		.byte	0x1d
 1698 0b12 00       		.byte	0
 1699 0b13 08       		.uleb128 0x8
 1700 0b14 2C000000 		.4byte	0x2c
 1701 0b18 230B0000 		.4byte	0xb23
 1702 0b1c 09       		.uleb128 0x9
 1703 0b1d BE000000 		.4byte	0xbe
 1704 0b21 1D       		.byte	0x1d
 1705 0b22 00       		.byte	0
 1706 0b23 20       		.uleb128 0x20
 1707 0b24 F0       		.byte	0xf0
 1708 0b25 0E       		.byte	0xe
 1709 0b26 5502     		.2byte	0x255
 1710 0b28 450B0000 		.4byte	0xb45
 1711 0b2c 21       		.uleb128 0x21
 1712 0b2d 4D080000 		.4byte	.LASF116
 1713 0b31 0E       		.byte	0xe
 1714 0b32 6C02     		.2byte	0x26c
 1715 0b34 AE090000 		.4byte	0x9ae
 1716 0b38 21       		.uleb128 0x21
 1717 0b39 5E0A0000 		.4byte	.LASF168
 1718 0b3d 0E       		.byte	0xe
 1719 0b3e 7502     		.2byte	0x275
 1720 0b40 DF0A0000 		.4byte	0xadf
 1721 0b44 00       		.byte	0
 1722 0b45 08       		.uleb128 0x8
 1723 0b46 82080000 		.4byte	0x882
 1724 0b4a 550B0000 		.4byte	0xb55
 1725 0b4e 09       		.uleb128 0x9
 1726 0b4f BE000000 		.4byte	0xbe
 1727 0b53 18       		.byte	0x18
 1728 0b54 00       		.byte	0
 1729 0b55 22       		.uleb128 0x22
 1730 0b56 600B0000 		.4byte	0xb60
 1731 0b5a 1A       		.uleb128 0x1a
 1732 0b5b 3F070000 		.4byte	0x73f
 1733 0b5f 00       		.byte	0
 1734 0b60 16       		.uleb128 0x16
 1735 0b61 04       		.byte	0x4
 1736 0b62 550B0000 		.4byte	0xb55
 1737 0b66 16       		.uleb128 0x16
 1738 0b67 04       		.byte	0x4
 1739 0b68 92040000 		.4byte	0x492
ARM GAS  /tmp/ccizFQRG.s 			page 52


 1740 0b6c 22       		.uleb128 0x22
 1741 0b6d 770B0000 		.4byte	0xb77
 1742 0b71 1A       		.uleb128 0x1a
 1743 0b72 25000000 		.4byte	0x25
 1744 0b76 00       		.byte	0
 1745 0b77 16       		.uleb128 0x16
 1746 0b78 04       		.byte	0x4
 1747 0b79 7D0B0000 		.4byte	0xb7d
 1748 0b7d 16       		.uleb128 0x16
 1749 0b7e 04       		.byte	0x4
 1750 0b7f 6C0B0000 		.4byte	0xb6c
 1751 0b83 08       		.uleb128 0x8
 1752 0b84 1C090000 		.4byte	0x91c
 1753 0b88 930B0000 		.4byte	0xb93
 1754 0b8c 09       		.uleb128 0x9
 1755 0b8d BE000000 		.4byte	0xbe
 1756 0b91 02       		.byte	0x2
 1757 0b92 00       		.byte	0
 1758 0b93 0A       		.uleb128 0xa
 1759 0b94 0F030000 		.4byte	.LASF169
 1760 0b98 0E       		.byte	0xe
 1761 0b99 FD02     		.2byte	0x2fd
 1762 0b9b 3F070000 		.4byte	0x73f
 1763 0b9f 0A       		.uleb128 0xa
 1764 0ba0 78090000 		.4byte	.LASF170
 1765 0ba4 0E       		.byte	0xe
 1766 0ba5 FE02     		.2byte	0x2fe
 1767 0ba7 45070000 		.4byte	0x745
 1768 0bab 0B       		.uleb128 0xb
 1769 0bac 85060000 		.4byte	.LASF171
 1770 0bb0 0F       		.byte	0xf
 1771 0bb1 5F       		.byte	0x5f
 1772 0bb2 7C080000 		.4byte	0x87c
 1773 0bb6 0B       		.uleb128 0xb
 1774 0bb7 E2060000 		.4byte	.LASF172
 1775 0bbb 10       		.byte	0x10
 1776 0bbc 8F       		.byte	0x8f
 1777 0bbd C80B0000 		.4byte	0xbc8
 1778 0bc1 03       		.uleb128 0x3
 1779 0bc2 01       		.byte	0x1
 1780 0bc3 02       		.byte	0x2
 1781 0bc4 41070000 		.4byte	.LASF173
 1782 0bc8 05       		.uleb128 0x5
 1783 0bc9 C10B0000 		.4byte	0xbc1
 1784 0bcd 23       		.uleb128 0x23
 1785 0bce 370A0000 		.4byte	.LASF174
 1786 0bd2 10       		.byte	0x10
 1787 0bd3 94       		.byte	0x94
 1788 0bd4 B2000000 		.4byte	0xb2
 1789 0bd8 05       		.uleb128 0x5
 1790 0bd9 03       		.byte	0x3
 1791 0bda 00000000 		.4byte	cpu_irq_critical_section_counter
 1792 0bde 23       		.uleb128 0x23
 1793 0bdf 17050000 		.4byte	.LASF175
 1794 0be3 10       		.byte	0x10
 1795 0be4 95       		.byte	0x95
 1796 0be5 C80B0000 		.4byte	0xbc8
ARM GAS  /tmp/ccizFQRG.s 			page 53


 1797 0be9 05       		.uleb128 0x5
 1798 0bea 03       		.byte	0x3
 1799 0beb 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1800 0bef 03       		.uleb128 0x3
 1801 0bf0 04       		.byte	0x4
 1802 0bf1 04       		.byte	0x4
 1803 0bf2 DC060000 		.4byte	.LASF176
 1804 0bf6 03       		.uleb128 0x3
 1805 0bf7 08       		.byte	0x8
 1806 0bf8 04       		.byte	0x4
 1807 0bf9 A2020000 		.4byte	.LASF177
 1808 0bfd 24       		.uleb128 0x24
 1809 0bfe F4070000 		.4byte	.LASF230
 1810 0c02 01       		.byte	0x1
 1811 0c03 45000000 		.4byte	0x45
 1812 0c07 04       		.byte	0x4
 1813 0c08 4F       		.byte	0x4f
 1814 0c09 320C0000 		.4byte	0xc32
 1815 0c0d 25       		.uleb128 0x25
 1816 0c0e 8D000000 		.4byte	.LASF178
 1817 0c12 03       		.byte	0x3
 1818 0c13 25       		.uleb128 0x25
 1819 0c14 C7060000 		.4byte	.LASF179
 1820 0c18 04       		.byte	0x4
 1821 0c19 25       		.uleb128 0x25
 1822 0c1a 8B090000 		.4byte	.LASF180
 1823 0c1e 05       		.byte	0x5
 1824 0c1f 25       		.uleb128 0x25
 1825 0c20 2D070000 		.4byte	.LASF181
 1826 0c24 06       		.byte	0x6
 1827 0c25 25       		.uleb128 0x25
 1828 0c26 84050000 		.4byte	.LASF182
 1829 0c2a 07       		.byte	0x7
 1830 0c2b 25       		.uleb128 0x25
 1831 0c2c 44060000 		.4byte	.LASF183
 1832 0c30 08       		.byte	0x8
 1833 0c31 00       		.byte	0
 1834 0c32 14       		.uleb128 0x14
 1835 0c33 81070000 		.4byte	.LASF184
 1836 0c37 04       		.byte	0x4
 1837 0c38 04       		.byte	0x4
 1838 0c39 58       		.byte	0x58
 1839 0c3a 4B0C0000 		.4byte	0xc4b
 1840 0c3e 0D       		.uleb128 0xd
 1841 0c3f 20090000 		.4byte	.LASF185
 1842 0c43 04       		.byte	0x4
 1843 0c44 59       		.byte	0x59
 1844 0c45 A7000000 		.4byte	0xa7
 1845 0c49 00       		.byte	0
 1846 0c4a 00       		.byte	0
 1847 0c4b 06       		.uleb128 0x6
 1848 0c4c 320C0000 		.4byte	0xc32
 1849 0c50 26       		.uleb128 0x26
 1850 0c51 81000000 		.4byte	.LASF187
 1851 0c55 01       		.byte	0x1
 1852 0c56 A8       		.byte	0xa8
 1853 0c57 00000000 		.4byte	.LFB166
ARM GAS  /tmp/ccizFQRG.s 			page 54


 1854 0c5b 50000000 		.4byte	.LFE166-.LFB166
 1855 0c5f 01       		.uleb128 0x1
 1856 0c60 9C       		.byte	0x9c
 1857 0c61 C10D0000 		.4byte	0xdc1
 1858 0c65 23       		.uleb128 0x23
 1859 0c66 25000000 		.4byte	.LASF186
 1860 0c6a 01       		.byte	0x1
 1861 0c6b AA       		.byte	0xaa
 1862 0c6c 320C0000 		.4byte	0xc32
 1863 0c70 08       		.uleb128 0x8
 1864 0c71 0C       		.byte	0xc
 1865 0c72 013F1800 		.4byte	0x183f01
 1866 0c76 9F       		.byte	0x9f
 1867 0c77 93       		.byte	0x93
 1868 0c78 04       		.uleb128 0x4
 1869 0c79 27       		.uleb128 0x27
 1870 0c7a 3C0F0000 		.4byte	0xf3c
 1871 0c7e 08000000 		.4byte	.LBB39
 1872 0c82 10000000 		.4byte	.LBE39-.LBB39
 1873 0c86 01       		.byte	0x1
 1874 0c87 E0       		.byte	0xe0
 1875 0c88 FC0C0000 		.4byte	0xcfc
 1876 0c8c 28       		.uleb128 0x28
 1877 0c8d 480F0000 		.4byte	0xf48
 1878 0c91 00000000 		.4byte	.LLST2
 1879 0c95 27       		.uleb128 0x27
 1880 0c96 32100000 		.4byte	0x1032
 1881 0c9a 08000000 		.4byte	.LBB40
 1882 0c9e 08000000 		.4byte	.LBE40-.LBB40
 1883 0ca2 04       		.byte	0x4
 1884 0ca3 D7       		.byte	0xd7
 1885 0ca4 C40C0000 		.4byte	0xcc4
 1886 0ca8 29       		.uleb128 0x29
 1887 0ca9 3E100000 		.4byte	0x103e
 1888 0cad 06       		.byte	0x6
 1889 0cae 2A       		.uleb128 0x2a
 1890 0caf 10000000 		.4byte	.LVL21
 1891 0cb3 4A100000 		.4byte	0x104a
 1892 0cb7 2B       		.uleb128 0x2b
 1893 0cb8 01       		.uleb128 0x1
 1894 0cb9 50       		.byte	0x50
 1895 0cba 01       		.uleb128 0x1
 1896 0cbb 30       		.byte	0x30
 1897 0cbc 2B       		.uleb128 0x2b
 1898 0cbd 01       		.uleb128 0x1
 1899 0cbe 51       		.byte	0x51
 1900 0cbf 02       		.uleb128 0x2
 1901 0cc0 08       		.byte	0x8
 1902 0cc1 3E       		.byte	0x3e
 1903 0cc2 00       		.byte	0
 1904 0cc3 00       		.byte	0
 1905 0cc4 2C       		.uleb128 0x2c
 1906 0cc5 E30F0000 		.4byte	0xfe3
 1907 0cc9 10000000 		.4byte	.LBB42
 1908 0ccd 08000000 		.4byte	.LBE42-.LBB42
 1909 0cd1 04       		.byte	0x4
 1910 0cd2 D8       		.byte	0xd8
ARM GAS  /tmp/ccizFQRG.s 			page 55


 1911 0cd3 2D       		.uleb128 0x2d
 1912 0cd4 EF0F0000 		.4byte	0xfef
 1913 0cd8 2C       		.uleb128 0x2c
 1914 0cd9 16100000 		.4byte	0x1016
 1915 0cdd 10000000 		.4byte	.LBB44
 1916 0ce1 04000000 		.4byte	.LBE44-.LBB44
 1917 0ce5 03       		.byte	0x3
 1918 0ce6 AE       		.byte	0xae
 1919 0ce7 28       		.uleb128 0x28
 1920 0ce8 26100000 		.4byte	0x1026
 1921 0cec 14000000 		.4byte	.LLST3
 1922 0cf0 2E       		.uleb128 0x2e
 1923 0cf1 14000000 		.4byte	.LVL22
 1924 0cf5 55100000 		.4byte	0x1055
 1925 0cf9 00       		.byte	0
 1926 0cfa 00       		.byte	0
 1927 0cfb 00       		.byte	0
 1928 0cfc 27       		.uleb128 0x27
 1929 0cfd 700F0000 		.4byte	0xf70
 1930 0d01 18000000 		.4byte	.LBB46
 1931 0d05 0A000000 		.4byte	.LBE46-.LBB46
 1932 0d09 01       		.byte	0x1
 1933 0d0a E2       		.byte	0xe2
 1934 0d0b 2B0D0000 		.4byte	0xd2b
 1935 0d0f 29       		.uleb128 0x29
 1936 0d10 870F0000 		.4byte	0xf87
 1937 0d14 00       		.byte	0
 1938 0d15 2F       		.uleb128 0x2f
 1939 0d16 7C0F0000 		.4byte	0xf7c
 1940 0d1a 06       		.uleb128 0x6
 1941 0d1b F2       		.byte	0xf2
 1942 0d1c 650C0000 		.4byte	.Ldebug_info0+3173
 1943 0d20 00       		.sleb128 0
 1944 0d21 2E       		.uleb128 0x2e
 1945 0d22 1C000000 		.4byte	.LVL24
 1946 0d26 60100000 		.4byte	0x1060
 1947 0d2a 00       		.byte	0
 1948 0d2b 27       		.uleb128 0x27
 1949 0d2c 1E0F0000 		.4byte	0xf1e
 1950 0d30 22000000 		.4byte	.LBB48
 1951 0d34 08000000 		.4byte	.LBE48-.LBB48
 1952 0d38 01       		.byte	0x1
 1953 0d39 E3       		.byte	0xe3
 1954 0d3a 670D0000 		.4byte	0xd67
 1955 0d3e 2D       		.uleb128 0x2d
 1956 0d3f 2F0F0000 		.4byte	0xf2f
 1957 0d43 30       		.uleb128 0x30
 1958 0d44 540F0000 		.4byte	0xf54
 1959 0d48 22000000 		.4byte	.LBB50
 1960 0d4c 04000000 		.4byte	.LBE50-.LBB50
 1961 0d50 05       		.byte	0x5
 1962 0d51 4B01     		.2byte	0x14b
 1963 0d53 28       		.uleb128 0x28
 1964 0d54 640F0000 		.4byte	0xf64
 1965 0d58 28000000 		.4byte	.LLST4
 1966 0d5c 2E       		.uleb128 0x2e
 1967 0d5d 26000000 		.4byte	.LVL26
ARM GAS  /tmp/ccizFQRG.s 			page 56


 1968 0d61 6B100000 		.4byte	0x106b
 1969 0d65 00       		.byte	0
 1970 0d66 00       		.byte	0
 1971 0d67 31       		.uleb128 0x31
 1972 0d68 08000000 		.4byte	.LVL20
 1973 0d6c 76100000 		.4byte	0x1076
 1974 0d70 7E0D0000 		.4byte	0xd7e
 1975 0d74 2B       		.uleb128 0x2b
 1976 0d75 01       		.uleb128 0x1
 1977 0d76 50       		.byte	0x50
 1978 0d77 05       		.uleb128 0x5
 1979 0d78 0C       		.byte	0xc
 1980 0d79 00A3E111 		.4byte	0x11e1a300
 1981 0d7d 00       		.byte	0
 1982 0d7e 31       		.uleb128 0x31
 1983 0d7f 30000000 		.4byte	.LVL27
 1984 0d83 81100000 		.4byte	0x1081
 1985 0d87 910D0000 		.4byte	0xd91
 1986 0d8b 2B       		.uleb128 0x2b
 1987 0d8c 01       		.uleb128 0x1
 1988 0d8d 50       		.byte	0x50
 1989 0d8e 01       		.uleb128 0x1
 1990 0d8f 32       		.byte	0x32
 1991 0d90 00       		.byte	0
 1992 0d91 31       		.uleb128 0x31
 1993 0d92 36000000 		.4byte	.LVL28
 1994 0d96 8C100000 		.4byte	0x108c
 1995 0d9a A40D0000 		.4byte	0xda4
 1996 0d9e 2B       		.uleb128 0x2b
 1997 0d9f 01       		.uleb128 0x1
 1998 0da0 50       		.byte	0x50
 1999 0da1 01       		.uleb128 0x1
 2000 0da2 30       		.byte	0x30
 2001 0da3 00       		.byte	0
 2002 0da4 2E       		.uleb128 0x2e
 2003 0da5 3A000000 		.4byte	.LVL29
 2004 0da9 97100000 		.4byte	0x1097
 2005 0dad 32       		.uleb128 0x32
 2006 0dae 44000000 		.4byte	.LVL30
 2007 0db2 76100000 		.4byte	0x1076
 2008 0db6 2B       		.uleb128 0x2b
 2009 0db7 01       		.uleb128 0x1
 2010 0db8 50       		.byte	0x50
 2011 0db9 05       		.uleb128 0x5
 2012 0dba 0C       		.byte	0xc
 2013 0dbb 00A3E111 		.4byte	0x11e1a300
 2014 0dbf 00       		.byte	0
 2015 0dc0 00       		.byte	0
 2016 0dc1 26       		.uleb128 0x26
 2017 0dc2 6E080000 		.4byte	.LASF188
 2018 0dc6 01       		.byte	0x1
 2019 0dc7 A2       		.byte	0xa2
 2020 0dc8 00000000 		.4byte	.LFB165
 2021 0dcc 04000000 		.4byte	.LFE165-.LFB165
 2022 0dd0 01       		.uleb128 0x1
 2023 0dd1 9C       		.byte	0x9c
 2024 0dd2 E00D0000 		.4byte	0xde0
ARM GAS  /tmp/ccizFQRG.s 			page 57


 2025 0dd6 33       		.uleb128 0x33
 2026 0dd7 04000000 		.4byte	.LVL19
 2027 0ddb A2100000 		.4byte	0x10a2
 2028 0ddf 00       		.byte	0
 2029 0de0 26       		.uleb128 0x26
 2030 0de1 1B070000 		.4byte	.LASF189
 2031 0de5 01       		.byte	0x1
 2032 0de6 82       		.byte	0x82
 2033 0de7 00000000 		.4byte	.LFB164
 2034 0deb 14000000 		.4byte	.LFE164-.LFB164
 2035 0def 01       		.uleb128 0x1
 2036 0df0 9C       		.byte	0x9c
 2037 0df1 2C0E0000 		.4byte	0xe2c
 2038 0df5 34       		.uleb128 0x34
 2039 0df6 060E0000 		.4byte	0xe06
 2040 0dfa 35       		.uleb128 0x35
 2041 0dfb 25000000 		.4byte	.LASF186
 2042 0dff 01       		.byte	0x1
 2043 0e00 88       		.byte	0x88
 2044 0e01 320C0000 		.4byte	0xc32
 2045 0e05 00       		.byte	0
 2046 0e06 2E       		.uleb128 0x2e
 2047 0e07 06000000 		.4byte	.LVL16
 2048 0e0b AE100000 		.4byte	0x10ae
 2049 0e0f 31       		.uleb128 0x31
 2050 0e10 0C000000 		.4byte	.LVL17
 2051 0e14 B9100000 		.4byte	0x10b9
 2052 0e18 220E0000 		.4byte	0xe22
 2053 0e1c 2B       		.uleb128 0x2b
 2054 0e1d 01       		.uleb128 0x1
 2055 0e1e 50       		.byte	0x50
 2056 0e1f 01       		.uleb128 0x1
 2057 0e20 30       		.byte	0x30
 2058 0e21 00       		.byte	0
 2059 0e22 33       		.uleb128 0x33
 2060 0e23 14000000 		.4byte	.LVL18
 2061 0e27 C5100000 		.4byte	0x10c5
 2062 0e2b 00       		.byte	0
 2063 0e2c 26       		.uleb128 0x26
 2064 0e2d 080A0000 		.4byte	.LASF190
 2065 0e31 01       		.byte	0x1
 2066 0e32 5B       		.byte	0x5b
 2067 0e33 00000000 		.4byte	.LFB163
 2068 0e37 4C000000 		.4byte	.LFE163-.LFB163
 2069 0e3b 01       		.uleb128 0x1
 2070 0e3c 9C       		.byte	0x9c
 2071 0e3d C10E0000 		.4byte	0xec1
 2072 0e41 36       		.uleb128 0x36
 2073 0e42 EC030000 		.4byte	.LASF192
 2074 0e46 01       		.byte	0x1
 2075 0e47 5B       		.byte	0x5b
 2076 0e48 A7000000 		.4byte	0xa7
 2077 0e4c 3C000000 		.4byte	.LLST1
 2078 0e50 31       		.uleb128 0x31
 2079 0e51 1A000000 		.4byte	.LVL5
 2080 0e55 D1100000 		.4byte	0x10d1
 2081 0e59 630E0000 		.4byte	0xe63
ARM GAS  /tmp/ccizFQRG.s 			page 58


 2082 0e5d 2B       		.uleb128 0x2b
 2083 0e5e 01       		.uleb128 0x1
 2084 0e5f 50       		.byte	0x50
 2085 0e60 01       		.uleb128 0x1
 2086 0e61 33       		.byte	0x33
 2087 0e62 00       		.byte	0
 2088 0e63 33       		.uleb128 0x33
 2089 0e64 22000000 		.4byte	.LVL6
 2090 0e68 97100000 		.4byte	0x1097
 2091 0e6c 31       		.uleb128 0x31
 2092 0e6d 28000000 		.4byte	.LVL8
 2093 0e71 D1100000 		.4byte	0x10d1
 2094 0e75 7F0E0000 		.4byte	0xe7f
 2095 0e79 2B       		.uleb128 0x2b
 2096 0e7a 01       		.uleb128 0x1
 2097 0e7b 50       		.byte	0x50
 2098 0e7c 01       		.uleb128 0x1
 2099 0e7d 32       		.byte	0x32
 2100 0e7e 00       		.byte	0
 2101 0e7f 33       		.uleb128 0x33
 2102 0e80 30000000 		.4byte	.LVL9
 2103 0e84 97100000 		.4byte	0x1097
 2104 0e88 31       		.uleb128 0x31
 2105 0e89 36000000 		.4byte	.LVL11
 2106 0e8d D1100000 		.4byte	0x10d1
 2107 0e91 9B0E0000 		.4byte	0xe9b
 2108 0e95 2B       		.uleb128 0x2b
 2109 0e96 01       		.uleb128 0x1
 2110 0e97 50       		.byte	0x50
 2111 0e98 01       		.uleb128 0x1
 2112 0e99 31       		.byte	0x31
 2113 0e9a 00       		.byte	0
 2114 0e9b 33       		.uleb128 0x33
 2115 0e9c 3E000000 		.4byte	.LVL12
 2116 0ea0 97100000 		.4byte	0x1097
 2117 0ea4 31       		.uleb128 0x31
 2118 0ea5 44000000 		.4byte	.LVL14
 2119 0ea9 D1100000 		.4byte	0x10d1
 2120 0ead B70E0000 		.4byte	0xeb7
 2121 0eb1 2B       		.uleb128 0x2b
 2122 0eb2 01       		.uleb128 0x1
 2123 0eb3 50       		.byte	0x50
 2124 0eb4 01       		.uleb128 0x1
 2125 0eb5 30       		.byte	0x30
 2126 0eb6 00       		.byte	0
 2127 0eb7 33       		.uleb128 0x33
 2128 0eb8 4C000000 		.4byte	.LVL15
 2129 0ebc 97100000 		.4byte	0x1097
 2130 0ec0 00       		.byte	0
 2131 0ec1 26       		.uleb128 0x26
 2132 0ec2 49090000 		.4byte	.LASF191
 2133 0ec6 01       		.byte	0x1
 2134 0ec7 4F       		.byte	0x4f
 2135 0ec8 00000000 		.4byte	.LFB162
 2136 0ecc 0E000000 		.4byte	.LFE162-.LFB162
 2137 0ed0 01       		.uleb128 0x1
 2138 0ed1 9C       		.byte	0x9c
ARM GAS  /tmp/ccizFQRG.s 			page 59


 2139 0ed2 040F0000 		.4byte	0xf04
 2140 0ed6 36       		.uleb128 0x36
 2141 0ed7 B7090000 		.4byte	.LASF193
 2142 0edb 01       		.byte	0x1
 2143 0edc 4F       		.byte	0x4f
 2144 0edd A7000000 		.4byte	0xa7
 2145 0ee1 A8000000 		.4byte	.LLST0
 2146 0ee5 31       		.uleb128 0x31
 2147 0ee6 06000000 		.4byte	.LVL1
 2148 0eea DC100000 		.4byte	0x10dc
 2149 0eee FA0E0000 		.4byte	0xefa
 2150 0ef2 2B       		.uleb128 0x2b
 2151 0ef3 01       		.uleb128 0x1
 2152 0ef4 50       		.byte	0x50
 2153 0ef5 03       		.uleb128 0x3
 2154 0ef6 F3       		.byte	0xf3
 2155 0ef7 01       		.uleb128 0x1
 2156 0ef8 50       		.byte	0x50
 2157 0ef9 00       		.byte	0
 2158 0efa 33       		.uleb128 0x33
 2159 0efb 0E000000 		.4byte	.LVL2
 2160 0eff 97100000 		.4byte	0x1097
 2161 0f03 00       		.byte	0
 2162 0f04 37       		.uleb128 0x37
 2163 0f05 E1040000 		.4byte	.LASF194
 2164 0f09 11       		.byte	0x11
 2165 0f0a 8401     		.2byte	0x184
 2166 0f0c A7000000 		.4byte	0xa7
 2167 0f10 03       		.byte	0x3
 2168 0f11 37       		.uleb128 0x37
 2169 0f12 EE020000 		.4byte	.LASF195
 2170 0f16 11       		.byte	0x11
 2171 0f17 4E01     		.2byte	0x14e
 2172 0f19 A7000000 		.4byte	0xa7
 2173 0f1d 03       		.byte	0x3
 2174 0f1e 38       		.uleb128 0x38
 2175 0f1f E9080000 		.4byte	.LASF198
 2176 0f23 05       		.byte	0x5
 2177 0f24 4701     		.2byte	0x147
 2178 0f26 25000000 		.4byte	0x25
 2179 0f2a 03       		.byte	0x3
 2180 0f2b 3C0F0000 		.4byte	0xf3c
 2181 0f2f 39       		.uleb128 0x39
 2182 0f30 75010000 		.4byte	.LASF196
 2183 0f34 05       		.byte	0x5
 2184 0f35 4701     		.2byte	0x147
 2185 0f37 2C000000 		.4byte	0x2c
 2186 0f3b 00       		.byte	0
 2187 0f3c 3A       		.uleb128 0x3a
 2188 0f3d 8B080000 		.4byte	.LASF201
 2189 0f41 04       		.byte	0x4
 2190 0f42 CF       		.byte	0xcf
 2191 0f43 03       		.byte	0x3
 2192 0f44 540F0000 		.4byte	0xf54
 2193 0f48 3B       		.uleb128 0x3b
 2194 0f49 B1090000 		.4byte	.LASF197
 2195 0f4d 04       		.byte	0x4
ARM GAS  /tmp/ccizFQRG.s 			page 60


 2196 0f4e CF       		.byte	0xcf
 2197 0f4f FD0B0000 		.4byte	0xbfd
 2198 0f53 00       		.byte	0
 2199 0f54 3C       		.uleb128 0x3c
 2200 0f55 E7000000 		.4byte	.LASF199
 2201 0f59 04       		.byte	0x4
 2202 0f5a C4       		.byte	0xc4
 2203 0f5b A7000000 		.4byte	0xa7
 2204 0f5f 03       		.byte	0x3
 2205 0f60 700F0000 		.4byte	0xf70
 2206 0f64 3B       		.uleb128 0x3b
 2207 0f65 3E040000 		.4byte	.LASF200
 2208 0f69 04       		.byte	0x4
 2209 0f6a C4       		.byte	0xc4
 2210 0f6b A7000000 		.4byte	0xa7
 2211 0f6f 00       		.byte	0
 2212 0f70 3A       		.uleb128 0x3a
 2213 0f71 21010000 		.4byte	.LASF202
 2214 0f75 04       		.byte	0x4
 2215 0f76 AA       		.byte	0xaa
 2216 0f77 03       		.byte	0x3
 2217 0f78 930F0000 		.4byte	0xf93
 2218 0f7c 3B       		.uleb128 0x3b
 2219 0f7d FF000000 		.4byte	.LASF203
 2220 0f81 04       		.byte	0x4
 2221 0f82 AA       		.byte	0xaa
 2222 0f83 930F0000 		.4byte	0xf93
 2223 0f87 3B       		.uleb128 0x3b
 2224 0f88 3E040000 		.4byte	.LASF200
 2225 0f8c 04       		.byte	0x4
 2226 0f8d AA       		.byte	0xaa
 2227 0f8e A7000000 		.4byte	0xa7
 2228 0f92 00       		.byte	0
 2229 0f93 16       		.uleb128 0x16
 2230 0f94 04       		.byte	0x4
 2231 0f95 4B0C0000 		.4byte	0xc4b
 2232 0f99 3A       		.uleb128 0x3a
 2233 0f9a 71070000 		.4byte	.LASF204
 2234 0f9e 04       		.byte	0x4
 2235 0f9f 74       		.byte	0x74
 2236 0fa0 03       		.byte	0x3
 2237 0fa1 DD0F0000 		.4byte	0xfdd
 2238 0fa5 3B       		.uleb128 0x3b
 2239 0fa6 FF000000 		.4byte	.LASF203
 2240 0faa 04       		.byte	0x4
 2241 0fab 74       		.byte	0x74
 2242 0fac DD0F0000 		.4byte	0xfdd
 2243 0fb0 3B       		.uleb128 0x3b
 2244 0fb1 B1090000 		.4byte	.LASF197
 2245 0fb5 04       		.byte	0x4
 2246 0fb6 75       		.byte	0x75
 2247 0fb7 FD0B0000 		.4byte	0xbfd
 2248 0fbb 3B       		.uleb128 0x3b
 2249 0fbc 660A0000 		.4byte	.LASF205
 2250 0fc0 04       		.byte	0x4
 2251 0fc1 75       		.byte	0x75
 2252 0fc2 A7000000 		.4byte	0xa7
ARM GAS  /tmp/ccizFQRG.s 			page 61


 2253 0fc6 3B       		.uleb128 0x3b
 2254 0fc7 AA090000 		.4byte	.LASF206
 2255 0fcb 04       		.byte	0x4
 2256 0fcc 75       		.byte	0x75
 2257 0fcd A7000000 		.4byte	0xa7
 2258 0fd1 35       		.uleb128 0x35
 2259 0fd2 82040000 		.4byte	.LASF207
 2260 0fd6 04       		.byte	0x4
 2261 0fd7 77       		.byte	0x77
 2262 0fd8 A7000000 		.4byte	0xa7
 2263 0fdc 00       		.byte	0
 2264 0fdd 16       		.uleb128 0x16
 2265 0fde 04       		.byte	0x4
 2266 0fdf 320C0000 		.4byte	0xc32
 2267 0fe3 3A       		.uleb128 0x3a
 2268 0fe4 BD040000 		.4byte	.LASF208
 2269 0fe8 03       		.byte	0x3
 2270 0fe9 AC       		.byte	0xac
 2271 0fea 03       		.byte	0x3
 2272 0feb FA0F0000 		.4byte	0xffa
 2273 0fef 3D       		.uleb128 0x3d
 2274 0ff0 696400   		.ascii	"id\000"
 2275 0ff3 03       		.byte	0x3
 2276 0ff4 AC       		.byte	0xac
 2277 0ff5 8C000000 		.4byte	0x8c
 2278 0ff9 00       		.byte	0
 2279 0ffa 3C       		.uleb128 0x3c
 2280 0ffb CD080000 		.4byte	.LASF209
 2281 0fff 02       		.byte	0x2
 2282 1000 CE       		.byte	0xce
 2283 1001 A7000000 		.4byte	0xa7
 2284 1005 03       		.byte	0x3
 2285 1006 16100000 		.4byte	0x1016
 2286 100a 3B       		.uleb128 0x3b
 2287 100b A9020000 		.4byte	.LASF210
 2288 100f 02       		.byte	0x2
 2289 1010 CE       		.byte	0xce
 2290 1011 A7000000 		.4byte	0xa7
 2291 1015 00       		.byte	0
 2292 1016 3C       		.uleb128 0x3c
 2293 1017 CF030000 		.4byte	.LASF211
 2294 101b 02       		.byte	0x2
 2295 101c B9       		.byte	0xb9
 2296 101d C10B0000 		.4byte	0xbc1
 2297 1021 03       		.byte	0x3
 2298 1022 32100000 		.4byte	0x1032
 2299 1026 3B       		.uleb128 0x3b
 2300 1027 A9020000 		.4byte	.LASF210
 2301 102b 02       		.byte	0x2
 2302 102c B9       		.byte	0xb9
 2303 102d A7000000 		.4byte	0xa7
 2304 1031 00       		.byte	0
 2305 1032 3A       		.uleb128 0x3a
 2306 1033 AB060000 		.4byte	.LASF212
 2307 1037 02       		.byte	0x2
 2308 1038 77       		.byte	0x77
 2309 1039 03       		.byte	0x3
ARM GAS  /tmp/ccizFQRG.s 			page 62


 2310 103a 4A100000 		.4byte	0x104a
 2311 103e 3B       		.uleb128 0x3b
 2312 103f A9020000 		.4byte	.LASF210
 2313 1043 02       		.byte	0x2
 2314 1044 77       		.byte	0x77
 2315 1045 A7000000 		.4byte	0xa7
 2316 1049 00       		.byte	0
 2317 104a 3E       		.uleb128 0x3e
 2318 104b 9D040000 		.4byte	.LASF213
 2319 104f 9D040000 		.4byte	.LASF213
 2320 1053 12       		.byte	0x12
 2321 1054 B5       		.byte	0xb5
 2322 1055 3E       		.uleb128 0x3e
 2323 1056 5C060000 		.4byte	.LASF214
 2324 105a 5C060000 		.4byte	.LASF214
 2325 105e 12       		.byte	0x12
 2326 105f B8       		.byte	0xb8
 2327 1060 3E       		.uleb128 0x3e
 2328 1061 240A0000 		.4byte	.LASF215
 2329 1065 240A0000 		.4byte	.LASF215
 2330 1069 12       		.byte	0x12
 2331 106a C4       		.byte	0xc4
 2332 106b 3E       		.uleb128 0x3e
 2333 106c CC040000 		.4byte	.LASF216
 2334 1070 CC040000 		.4byte	.LASF216
 2335 1074 12       		.byte	0x12
 2336 1075 C5       		.byte	0xc5
 2337 1076 3E       		.uleb128 0x3e
 2338 1077 E8010000 		.4byte	.LASF217
 2339 107b E8010000 		.4byte	.LASF217
 2340 107f 09       		.byte	0x9
 2341 1080 4B       		.byte	0x4b
 2342 1081 3E       		.uleb128 0x3e
 2343 1082 82010000 		.4byte	.LASF218
 2344 1086 82010000 		.4byte	.LASF218
 2345 108a 12       		.byte	0x12
 2346 108b 88       		.byte	0x88
 2347 108c 3E       		.uleb128 0x3e
 2348 108d 89020000 		.4byte	.LASF219
 2349 1091 89020000 		.4byte	.LASF219
 2350 1095 12       		.byte	0x12
 2351 1096 8D       		.byte	0x8d
 2352 1097 3E       		.uleb128 0x3e
 2353 1098 43010000 		.4byte	.LASF220
 2354 109c 43010000 		.4byte	.LASF220
 2355 10a0 09       		.byte	0x9
 2356 10a1 46       		.byte	0x46
 2357 10a2 3F       		.uleb128 0x3f
 2358 10a3 CE010000 		.4byte	.LASF221
 2359 10a7 CE010000 		.4byte	.LASF221
 2360 10ab 12       		.byte	0x12
 2361 10ac 1A01     		.2byte	0x11a
 2362 10ae 3E       		.uleb128 0x3e
 2363 10af C00A0000 		.4byte	.LASF222
 2364 10b3 C00A0000 		.4byte	.LASF222
 2365 10b7 12       		.byte	0x12
 2366 10b8 CE       		.byte	0xce
ARM GAS  /tmp/ccizFQRG.s 			page 63


 2367 10b9 3F       		.uleb128 0x3f
 2368 10ba 52040000 		.4byte	.LASF223
 2369 10be 52040000 		.4byte	.LASF223
 2370 10c2 12       		.byte	0x12
 2371 10c3 1601     		.2byte	0x116
 2372 10c5 3F       		.uleb128 0x3f
 2373 10c6 B6060000 		.4byte	.LASF224
 2374 10ca B6060000 		.4byte	.LASF224
 2375 10ce 12       		.byte	0x12
 2376 10cf 1901     		.2byte	0x119
 2377 10d1 3E       		.uleb128 0x3e
 2378 10d2 FA010000 		.4byte	.LASF225
 2379 10d6 FA010000 		.4byte	.LASF225
 2380 10da 12       		.byte	0x12
 2381 10db 8A       		.byte	0x8a
 2382 10dc 3E       		.uleb128 0x3e
 2383 10dd 4B030000 		.4byte	.LASF226
 2384 10e1 4B030000 		.4byte	.LASF226
 2385 10e5 12       		.byte	0x12
 2386 10e6 86       		.byte	0x86
 2387 10e7 00       		.byte	0
 2388              		.section	.debug_abbrev,"",%progbits
 2389              	.Ldebug_abbrev0:
 2390 0000 01       		.uleb128 0x1
 2391 0001 11       		.uleb128 0x11
 2392 0002 01       		.byte	0x1
 2393 0003 25       		.uleb128 0x25
 2394 0004 0E       		.uleb128 0xe
 2395 0005 13       		.uleb128 0x13
 2396 0006 0B       		.uleb128 0xb
 2397 0007 03       		.uleb128 0x3
 2398 0008 0E       		.uleb128 0xe
 2399 0009 1B       		.uleb128 0x1b
 2400 000a 0E       		.uleb128 0xe
 2401 000b 55       		.uleb128 0x55
 2402 000c 17       		.uleb128 0x17
 2403 000d 11       		.uleb128 0x11
 2404 000e 01       		.uleb128 0x1
 2405 000f 10       		.uleb128 0x10
 2406 0010 17       		.uleb128 0x17
 2407 0011 00       		.byte	0
 2408 0012 00       		.byte	0
 2409 0013 02       		.uleb128 0x2
 2410 0014 24       		.uleb128 0x24
 2411 0015 00       		.byte	0
 2412 0016 0B       		.uleb128 0xb
 2413 0017 0B       		.uleb128 0xb
 2414 0018 3E       		.uleb128 0x3e
 2415 0019 0B       		.uleb128 0xb
 2416 001a 03       		.uleb128 0x3
 2417 001b 08       		.uleb128 0x8
 2418 001c 00       		.byte	0
 2419 001d 00       		.byte	0
 2420 001e 03       		.uleb128 0x3
 2421 001f 24       		.uleb128 0x24
 2422 0020 00       		.byte	0
 2423 0021 0B       		.uleb128 0xb
ARM GAS  /tmp/ccizFQRG.s 			page 64


 2424 0022 0B       		.uleb128 0xb
 2425 0023 3E       		.uleb128 0x3e
 2426 0024 0B       		.uleb128 0xb
 2427 0025 03       		.uleb128 0x3
 2428 0026 0E       		.uleb128 0xe
 2429 0027 00       		.byte	0
 2430 0028 00       		.byte	0
 2431 0029 04       		.uleb128 0x4
 2432 002a 16       		.uleb128 0x16
 2433 002b 00       		.byte	0
 2434 002c 03       		.uleb128 0x3
 2435 002d 0E       		.uleb128 0xe
 2436 002e 3A       		.uleb128 0x3a
 2437 002f 0B       		.uleb128 0xb
 2438 0030 3B       		.uleb128 0x3b
 2439 0031 0B       		.uleb128 0xb
 2440 0032 49       		.uleb128 0x49
 2441 0033 13       		.uleb128 0x13
 2442 0034 00       		.byte	0
 2443 0035 00       		.byte	0
 2444 0036 05       		.uleb128 0x5
 2445 0037 35       		.uleb128 0x35
 2446 0038 00       		.byte	0
 2447 0039 49       		.uleb128 0x49
 2448 003a 13       		.uleb128 0x13
 2449 003b 00       		.byte	0
 2450 003c 00       		.byte	0
 2451 003d 06       		.uleb128 0x6
 2452 003e 26       		.uleb128 0x26
 2453 003f 00       		.byte	0
 2454 0040 49       		.uleb128 0x49
 2455 0041 13       		.uleb128 0x13
 2456 0042 00       		.byte	0
 2457 0043 00       		.byte	0
 2458 0044 07       		.uleb128 0x7
 2459 0045 0F       		.uleb128 0xf
 2460 0046 00       		.byte	0
 2461 0047 0B       		.uleb128 0xb
 2462 0048 0B       		.uleb128 0xb
 2463 0049 00       		.byte	0
 2464 004a 00       		.byte	0
 2465 004b 08       		.uleb128 0x8
 2466 004c 01       		.uleb128 0x1
 2467 004d 01       		.byte	0x1
 2468 004e 49       		.uleb128 0x49
 2469 004f 13       		.uleb128 0x13
 2470 0050 01       		.uleb128 0x1
 2471 0051 13       		.uleb128 0x13
 2472 0052 00       		.byte	0
 2473 0053 00       		.byte	0
 2474 0054 09       		.uleb128 0x9
 2475 0055 21       		.uleb128 0x21
 2476 0056 00       		.byte	0
 2477 0057 49       		.uleb128 0x49
 2478 0058 13       		.uleb128 0x13
 2479 0059 2F       		.uleb128 0x2f
 2480 005a 0B       		.uleb128 0xb
ARM GAS  /tmp/ccizFQRG.s 			page 65


 2481 005b 00       		.byte	0
 2482 005c 00       		.byte	0
 2483 005d 0A       		.uleb128 0xa
 2484 005e 34       		.uleb128 0x34
 2485 005f 00       		.byte	0
 2486 0060 03       		.uleb128 0x3
 2487 0061 0E       		.uleb128 0xe
 2488 0062 3A       		.uleb128 0x3a
 2489 0063 0B       		.uleb128 0xb
 2490 0064 3B       		.uleb128 0x3b
 2491 0065 05       		.uleb128 0x5
 2492 0066 49       		.uleb128 0x49
 2493 0067 13       		.uleb128 0x13
 2494 0068 3F       		.uleb128 0x3f
 2495 0069 19       		.uleb128 0x19
 2496 006a 3C       		.uleb128 0x3c
 2497 006b 19       		.uleb128 0x19
 2498 006c 00       		.byte	0
 2499 006d 00       		.byte	0
 2500 006e 0B       		.uleb128 0xb
 2501 006f 34       		.uleb128 0x34
 2502 0070 00       		.byte	0
 2503 0071 03       		.uleb128 0x3
 2504 0072 0E       		.uleb128 0xe
 2505 0073 3A       		.uleb128 0x3a
 2506 0074 0B       		.uleb128 0xb
 2507 0075 3B       		.uleb128 0x3b
 2508 0076 0B       		.uleb128 0xb
 2509 0077 49       		.uleb128 0x49
 2510 0078 13       		.uleb128 0x13
 2511 0079 3F       		.uleb128 0x3f
 2512 007a 19       		.uleb128 0x19
 2513 007b 3C       		.uleb128 0x3c
 2514 007c 19       		.uleb128 0x19
 2515 007d 00       		.byte	0
 2516 007e 00       		.byte	0
 2517 007f 0C       		.uleb128 0xc
 2518 0080 13       		.uleb128 0x13
 2519 0081 01       		.byte	0x1
 2520 0082 0B       		.uleb128 0xb
 2521 0083 05       		.uleb128 0x5
 2522 0084 3A       		.uleb128 0x3a
 2523 0085 0B       		.uleb128 0xb
 2524 0086 3B       		.uleb128 0x3b
 2525 0087 0B       		.uleb128 0xb
 2526 0088 01       		.uleb128 0x1
 2527 0089 13       		.uleb128 0x13
 2528 008a 00       		.byte	0
 2529 008b 00       		.byte	0
 2530 008c 0D       		.uleb128 0xd
 2531 008d 0D       		.uleb128 0xd
 2532 008e 00       		.byte	0
 2533 008f 03       		.uleb128 0x3
 2534 0090 0E       		.uleb128 0xe
 2535 0091 3A       		.uleb128 0x3a
 2536 0092 0B       		.uleb128 0xb
 2537 0093 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccizFQRG.s 			page 66


 2538 0094 0B       		.uleb128 0xb
 2539 0095 49       		.uleb128 0x49
 2540 0096 13       		.uleb128 0x13
 2541 0097 38       		.uleb128 0x38
 2542 0098 0B       		.uleb128 0xb
 2543 0099 00       		.byte	0
 2544 009a 00       		.byte	0
 2545 009b 0E       		.uleb128 0xe
 2546 009c 0D       		.uleb128 0xd
 2547 009d 00       		.byte	0
 2548 009e 03       		.uleb128 0x3
 2549 009f 0E       		.uleb128 0xe
 2550 00a0 3A       		.uleb128 0x3a
 2551 00a1 0B       		.uleb128 0xb
 2552 00a2 3B       		.uleb128 0x3b
 2553 00a3 0B       		.uleb128 0xb
 2554 00a4 49       		.uleb128 0x49
 2555 00a5 13       		.uleb128 0x13
 2556 00a6 38       		.uleb128 0x38
 2557 00a7 05       		.uleb128 0x5
 2558 00a8 00       		.byte	0
 2559 00a9 00       		.byte	0
 2560 00aa 0F       		.uleb128 0xf
 2561 00ab 16       		.uleb128 0x16
 2562 00ac 00       		.byte	0
 2563 00ad 03       		.uleb128 0x3
 2564 00ae 08       		.uleb128 0x8
 2565 00af 3A       		.uleb128 0x3a
 2566 00b0 0B       		.uleb128 0xb
 2567 00b1 3B       		.uleb128 0x3b
 2568 00b2 0B       		.uleb128 0xb
 2569 00b3 49       		.uleb128 0x49
 2570 00b4 13       		.uleb128 0x13
 2571 00b5 00       		.byte	0
 2572 00b6 00       		.byte	0
 2573 00b7 10       		.uleb128 0x10
 2574 00b8 16       		.uleb128 0x16
 2575 00b9 00       		.byte	0
 2576 00ba 03       		.uleb128 0x3
 2577 00bb 0E       		.uleb128 0xe
 2578 00bc 3A       		.uleb128 0x3a
 2579 00bd 0B       		.uleb128 0xb
 2580 00be 3B       		.uleb128 0x3b
 2581 00bf 05       		.uleb128 0x5
 2582 00c0 49       		.uleb128 0x49
 2583 00c1 13       		.uleb128 0x13
 2584 00c2 00       		.byte	0
 2585 00c3 00       		.byte	0
 2586 00c4 11       		.uleb128 0x11
 2587 00c5 17       		.uleb128 0x17
 2588 00c6 01       		.byte	0x1
 2589 00c7 0B       		.uleb128 0xb
 2590 00c8 0B       		.uleb128 0xb
 2591 00c9 3A       		.uleb128 0x3a
 2592 00ca 0B       		.uleb128 0xb
 2593 00cb 3B       		.uleb128 0x3b
 2594 00cc 0B       		.uleb128 0xb
ARM GAS  /tmp/ccizFQRG.s 			page 67


 2595 00cd 01       		.uleb128 0x1
 2596 00ce 13       		.uleb128 0x13
 2597 00cf 00       		.byte	0
 2598 00d0 00       		.byte	0
 2599 00d1 12       		.uleb128 0x12
 2600 00d2 0D       		.uleb128 0xd
 2601 00d3 00       		.byte	0
 2602 00d4 03       		.uleb128 0x3
 2603 00d5 0E       		.uleb128 0xe
 2604 00d6 3A       		.uleb128 0x3a
 2605 00d7 0B       		.uleb128 0xb
 2606 00d8 3B       		.uleb128 0x3b
 2607 00d9 0B       		.uleb128 0xb
 2608 00da 49       		.uleb128 0x49
 2609 00db 13       		.uleb128 0x13
 2610 00dc 00       		.byte	0
 2611 00dd 00       		.byte	0
 2612 00de 13       		.uleb128 0x13
 2613 00df 13       		.uleb128 0x13
 2614 00e0 01       		.byte	0x1
 2615 00e1 0B       		.uleb128 0xb
 2616 00e2 0B       		.uleb128 0xb
 2617 00e3 3A       		.uleb128 0x3a
 2618 00e4 0B       		.uleb128 0xb
 2619 00e5 3B       		.uleb128 0x3b
 2620 00e6 0B       		.uleb128 0xb
 2621 00e7 01       		.uleb128 0x1
 2622 00e8 13       		.uleb128 0x13
 2623 00e9 00       		.byte	0
 2624 00ea 00       		.byte	0
 2625 00eb 14       		.uleb128 0x14
 2626 00ec 13       		.uleb128 0x13
 2627 00ed 01       		.byte	0x1
 2628 00ee 03       		.uleb128 0x3
 2629 00ef 0E       		.uleb128 0xe
 2630 00f0 0B       		.uleb128 0xb
 2631 00f1 0B       		.uleb128 0xb
 2632 00f2 3A       		.uleb128 0x3a
 2633 00f3 0B       		.uleb128 0xb
 2634 00f4 3B       		.uleb128 0x3b
 2635 00f5 0B       		.uleb128 0xb
 2636 00f6 01       		.uleb128 0x1
 2637 00f7 13       		.uleb128 0x13
 2638 00f8 00       		.byte	0
 2639 00f9 00       		.byte	0
 2640 00fa 15       		.uleb128 0x15
 2641 00fb 0D       		.uleb128 0xd
 2642 00fc 00       		.byte	0
 2643 00fd 03       		.uleb128 0x3
 2644 00fe 08       		.uleb128 0x8
 2645 00ff 3A       		.uleb128 0x3a
 2646 0100 0B       		.uleb128 0xb
 2647 0101 3B       		.uleb128 0x3b
 2648 0102 0B       		.uleb128 0xb
 2649 0103 49       		.uleb128 0x49
 2650 0104 13       		.uleb128 0x13
 2651 0105 38       		.uleb128 0x38
ARM GAS  /tmp/ccizFQRG.s 			page 68


 2652 0106 0B       		.uleb128 0xb
 2653 0107 00       		.byte	0
 2654 0108 00       		.byte	0
 2655 0109 16       		.uleb128 0x16
 2656 010a 0F       		.uleb128 0xf
 2657 010b 00       		.byte	0
 2658 010c 0B       		.uleb128 0xb
 2659 010d 0B       		.uleb128 0xb
 2660 010e 49       		.uleb128 0x49
 2661 010f 13       		.uleb128 0x13
 2662 0110 00       		.byte	0
 2663 0111 00       		.byte	0
 2664 0112 17       		.uleb128 0x17
 2665 0113 13       		.uleb128 0x13
 2666 0114 01       		.byte	0x1
 2667 0115 03       		.uleb128 0x3
 2668 0116 0E       		.uleb128 0xe
 2669 0117 0B       		.uleb128 0xb
 2670 0118 05       		.uleb128 0x5
 2671 0119 3A       		.uleb128 0x3a
 2672 011a 0B       		.uleb128 0xb
 2673 011b 3B       		.uleb128 0x3b
 2674 011c 0B       		.uleb128 0xb
 2675 011d 01       		.uleb128 0x1
 2676 011e 13       		.uleb128 0x13
 2677 011f 00       		.byte	0
 2678 0120 00       		.byte	0
 2679 0121 18       		.uleb128 0x18
 2680 0122 15       		.uleb128 0x15
 2681 0123 00       		.byte	0
 2682 0124 27       		.uleb128 0x27
 2683 0125 19       		.uleb128 0x19
 2684 0126 00       		.byte	0
 2685 0127 00       		.byte	0
 2686 0128 19       		.uleb128 0x19
 2687 0129 15       		.uleb128 0x15
 2688 012a 01       		.byte	0x1
 2689 012b 27       		.uleb128 0x27
 2690 012c 19       		.uleb128 0x19
 2691 012d 49       		.uleb128 0x49
 2692 012e 13       		.uleb128 0x13
 2693 012f 01       		.uleb128 0x1
 2694 0130 13       		.uleb128 0x13
 2695 0131 00       		.byte	0
 2696 0132 00       		.byte	0
 2697 0133 1A       		.uleb128 0x1a
 2698 0134 05       		.uleb128 0x5
 2699 0135 00       		.byte	0
 2700 0136 49       		.uleb128 0x49
 2701 0137 13       		.uleb128 0x13
 2702 0138 00       		.byte	0
 2703 0139 00       		.byte	0
 2704 013a 1B       		.uleb128 0x1b
 2705 013b 13       		.uleb128 0x13
 2706 013c 01       		.byte	0x1
 2707 013d 03       		.uleb128 0x3
 2708 013e 0E       		.uleb128 0xe
ARM GAS  /tmp/ccizFQRG.s 			page 69


 2709 013f 0B       		.uleb128 0xb
 2710 0140 05       		.uleb128 0x5
 2711 0141 3A       		.uleb128 0x3a
 2712 0142 0B       		.uleb128 0xb
 2713 0143 3B       		.uleb128 0x3b
 2714 0144 05       		.uleb128 0x5
 2715 0145 01       		.uleb128 0x1
 2716 0146 13       		.uleb128 0x13
 2717 0147 00       		.byte	0
 2718 0148 00       		.byte	0
 2719 0149 1C       		.uleb128 0x1c
 2720 014a 0D       		.uleb128 0xd
 2721 014b 00       		.byte	0
 2722 014c 03       		.uleb128 0x3
 2723 014d 0E       		.uleb128 0xe
 2724 014e 3A       		.uleb128 0x3a
 2725 014f 0B       		.uleb128 0xb
 2726 0150 3B       		.uleb128 0x3b
 2727 0151 05       		.uleb128 0x5
 2728 0152 49       		.uleb128 0x49
 2729 0153 13       		.uleb128 0x13
 2730 0154 38       		.uleb128 0x38
 2731 0155 0B       		.uleb128 0xb
 2732 0156 00       		.byte	0
 2733 0157 00       		.byte	0
 2734 0158 1D       		.uleb128 0x1d
 2735 0159 0D       		.uleb128 0xd
 2736 015a 00       		.byte	0
 2737 015b 03       		.uleb128 0x3
 2738 015c 0E       		.uleb128 0xe
 2739 015d 3A       		.uleb128 0x3a
 2740 015e 0B       		.uleb128 0xb
 2741 015f 3B       		.uleb128 0x3b
 2742 0160 05       		.uleb128 0x5
 2743 0161 49       		.uleb128 0x49
 2744 0162 13       		.uleb128 0x13
 2745 0163 38       		.uleb128 0x38
 2746 0164 05       		.uleb128 0x5
 2747 0165 00       		.byte	0
 2748 0166 00       		.byte	0
 2749 0167 1E       		.uleb128 0x1e
 2750 0168 13       		.uleb128 0x13
 2751 0169 01       		.byte	0x1
 2752 016a 03       		.uleb128 0x3
 2753 016b 0E       		.uleb128 0xe
 2754 016c 0B       		.uleb128 0xb
 2755 016d 0B       		.uleb128 0xb
 2756 016e 3A       		.uleb128 0x3a
 2757 016f 0B       		.uleb128 0xb
 2758 0170 3B       		.uleb128 0x3b
 2759 0171 05       		.uleb128 0x5
 2760 0172 01       		.uleb128 0x1
 2761 0173 13       		.uleb128 0x13
 2762 0174 00       		.byte	0
 2763 0175 00       		.byte	0
 2764 0176 1F       		.uleb128 0x1f
 2765 0177 13       		.uleb128 0x13
ARM GAS  /tmp/ccizFQRG.s 			page 70


 2766 0178 01       		.byte	0x1
 2767 0179 0B       		.uleb128 0xb
 2768 017a 0B       		.uleb128 0xb
 2769 017b 3A       		.uleb128 0x3a
 2770 017c 0B       		.uleb128 0xb
 2771 017d 3B       		.uleb128 0x3b
 2772 017e 05       		.uleb128 0x5
 2773 017f 01       		.uleb128 0x1
 2774 0180 13       		.uleb128 0x13
 2775 0181 00       		.byte	0
 2776 0182 00       		.byte	0
 2777 0183 20       		.uleb128 0x20
 2778 0184 17       		.uleb128 0x17
 2779 0185 01       		.byte	0x1
 2780 0186 0B       		.uleb128 0xb
 2781 0187 0B       		.uleb128 0xb
 2782 0188 3A       		.uleb128 0x3a
 2783 0189 0B       		.uleb128 0xb
 2784 018a 3B       		.uleb128 0x3b
 2785 018b 05       		.uleb128 0x5
 2786 018c 01       		.uleb128 0x1
 2787 018d 13       		.uleb128 0x13
 2788 018e 00       		.byte	0
 2789 018f 00       		.byte	0
 2790 0190 21       		.uleb128 0x21
 2791 0191 0D       		.uleb128 0xd
 2792 0192 00       		.byte	0
 2793 0193 03       		.uleb128 0x3
 2794 0194 0E       		.uleb128 0xe
 2795 0195 3A       		.uleb128 0x3a
 2796 0196 0B       		.uleb128 0xb
 2797 0197 3B       		.uleb128 0x3b
 2798 0198 05       		.uleb128 0x5
 2799 0199 49       		.uleb128 0x49
 2800 019a 13       		.uleb128 0x13
 2801 019b 00       		.byte	0
 2802 019c 00       		.byte	0
 2803 019d 22       		.uleb128 0x22
 2804 019e 15       		.uleb128 0x15
 2805 019f 01       		.byte	0x1
 2806 01a0 27       		.uleb128 0x27
 2807 01a1 19       		.uleb128 0x19
 2808 01a2 01       		.uleb128 0x1
 2809 01a3 13       		.uleb128 0x13
 2810 01a4 00       		.byte	0
 2811 01a5 00       		.byte	0
 2812 01a6 23       		.uleb128 0x23
 2813 01a7 34       		.uleb128 0x34
 2814 01a8 00       		.byte	0
 2815 01a9 03       		.uleb128 0x3
 2816 01aa 0E       		.uleb128 0xe
 2817 01ab 3A       		.uleb128 0x3a
 2818 01ac 0B       		.uleb128 0xb
 2819 01ad 3B       		.uleb128 0x3b
 2820 01ae 0B       		.uleb128 0xb
 2821 01af 49       		.uleb128 0x49
 2822 01b0 13       		.uleb128 0x13
ARM GAS  /tmp/ccizFQRG.s 			page 71


 2823 01b1 02       		.uleb128 0x2
 2824 01b2 18       		.uleb128 0x18
 2825 01b3 00       		.byte	0
 2826 01b4 00       		.byte	0
 2827 01b5 24       		.uleb128 0x24
 2828 01b6 04       		.uleb128 0x4
 2829 01b7 01       		.byte	0x1
 2830 01b8 03       		.uleb128 0x3
 2831 01b9 0E       		.uleb128 0xe
 2832 01ba 0B       		.uleb128 0xb
 2833 01bb 0B       		.uleb128 0xb
 2834 01bc 49       		.uleb128 0x49
 2835 01bd 13       		.uleb128 0x13
 2836 01be 3A       		.uleb128 0x3a
 2837 01bf 0B       		.uleb128 0xb
 2838 01c0 3B       		.uleb128 0x3b
 2839 01c1 0B       		.uleb128 0xb
 2840 01c2 01       		.uleb128 0x1
 2841 01c3 13       		.uleb128 0x13
 2842 01c4 00       		.byte	0
 2843 01c5 00       		.byte	0
 2844 01c6 25       		.uleb128 0x25
 2845 01c7 28       		.uleb128 0x28
 2846 01c8 00       		.byte	0
 2847 01c9 03       		.uleb128 0x3
 2848 01ca 0E       		.uleb128 0xe
 2849 01cb 1C       		.uleb128 0x1c
 2850 01cc 0B       		.uleb128 0xb
 2851 01cd 00       		.byte	0
 2852 01ce 00       		.byte	0
 2853 01cf 26       		.uleb128 0x26
 2854 01d0 2E       		.uleb128 0x2e
 2855 01d1 01       		.byte	0x1
 2856 01d2 3F       		.uleb128 0x3f
 2857 01d3 19       		.uleb128 0x19
 2858 01d4 03       		.uleb128 0x3
 2859 01d5 0E       		.uleb128 0xe
 2860 01d6 3A       		.uleb128 0x3a
 2861 01d7 0B       		.uleb128 0xb
 2862 01d8 3B       		.uleb128 0x3b
 2863 01d9 0B       		.uleb128 0xb
 2864 01da 27       		.uleb128 0x27
 2865 01db 19       		.uleb128 0x19
 2866 01dc 11       		.uleb128 0x11
 2867 01dd 01       		.uleb128 0x1
 2868 01de 12       		.uleb128 0x12
 2869 01df 06       		.uleb128 0x6
 2870 01e0 40       		.uleb128 0x40
 2871 01e1 18       		.uleb128 0x18
 2872 01e2 9742     		.uleb128 0x2117
 2873 01e4 19       		.uleb128 0x19
 2874 01e5 01       		.uleb128 0x1
 2875 01e6 13       		.uleb128 0x13
 2876 01e7 00       		.byte	0
 2877 01e8 00       		.byte	0
 2878 01e9 27       		.uleb128 0x27
 2879 01ea 1D       		.uleb128 0x1d
ARM GAS  /tmp/ccizFQRG.s 			page 72


 2880 01eb 01       		.byte	0x1
 2881 01ec 31       		.uleb128 0x31
 2882 01ed 13       		.uleb128 0x13
 2883 01ee 11       		.uleb128 0x11
 2884 01ef 01       		.uleb128 0x1
 2885 01f0 12       		.uleb128 0x12
 2886 01f1 06       		.uleb128 0x6
 2887 01f2 58       		.uleb128 0x58
 2888 01f3 0B       		.uleb128 0xb
 2889 01f4 59       		.uleb128 0x59
 2890 01f5 0B       		.uleb128 0xb
 2891 01f6 01       		.uleb128 0x1
 2892 01f7 13       		.uleb128 0x13
 2893 01f8 00       		.byte	0
 2894 01f9 00       		.byte	0
 2895 01fa 28       		.uleb128 0x28
 2896 01fb 05       		.uleb128 0x5
 2897 01fc 00       		.byte	0
 2898 01fd 31       		.uleb128 0x31
 2899 01fe 13       		.uleb128 0x13
 2900 01ff 02       		.uleb128 0x2
 2901 0200 17       		.uleb128 0x17
 2902 0201 00       		.byte	0
 2903 0202 00       		.byte	0
 2904 0203 29       		.uleb128 0x29
 2905 0204 05       		.uleb128 0x5
 2906 0205 00       		.byte	0
 2907 0206 31       		.uleb128 0x31
 2908 0207 13       		.uleb128 0x13
 2909 0208 1C       		.uleb128 0x1c
 2910 0209 0B       		.uleb128 0xb
 2911 020a 00       		.byte	0
 2912 020b 00       		.byte	0
 2913 020c 2A       		.uleb128 0x2a
 2914 020d 898201   		.uleb128 0x4109
 2915 0210 01       		.byte	0x1
 2916 0211 11       		.uleb128 0x11
 2917 0212 01       		.uleb128 0x1
 2918 0213 31       		.uleb128 0x31
 2919 0214 13       		.uleb128 0x13
 2920 0215 00       		.byte	0
 2921 0216 00       		.byte	0
 2922 0217 2B       		.uleb128 0x2b
 2923 0218 8A8201   		.uleb128 0x410a
 2924 021b 00       		.byte	0
 2925 021c 02       		.uleb128 0x2
 2926 021d 18       		.uleb128 0x18
 2927 021e 9142     		.uleb128 0x2111
 2928 0220 18       		.uleb128 0x18
 2929 0221 00       		.byte	0
 2930 0222 00       		.byte	0
 2931 0223 2C       		.uleb128 0x2c
 2932 0224 1D       		.uleb128 0x1d
 2933 0225 01       		.byte	0x1
 2934 0226 31       		.uleb128 0x31
 2935 0227 13       		.uleb128 0x13
 2936 0228 11       		.uleb128 0x11
ARM GAS  /tmp/ccizFQRG.s 			page 73


 2937 0229 01       		.uleb128 0x1
 2938 022a 12       		.uleb128 0x12
 2939 022b 06       		.uleb128 0x6
 2940 022c 58       		.uleb128 0x58
 2941 022d 0B       		.uleb128 0xb
 2942 022e 59       		.uleb128 0x59
 2943 022f 0B       		.uleb128 0xb
 2944 0230 00       		.byte	0
 2945 0231 00       		.byte	0
 2946 0232 2D       		.uleb128 0x2d
 2947 0233 05       		.uleb128 0x5
 2948 0234 00       		.byte	0
 2949 0235 31       		.uleb128 0x31
 2950 0236 13       		.uleb128 0x13
 2951 0237 00       		.byte	0
 2952 0238 00       		.byte	0
 2953 0239 2E       		.uleb128 0x2e
 2954 023a 898201   		.uleb128 0x4109
 2955 023d 00       		.byte	0
 2956 023e 11       		.uleb128 0x11
 2957 023f 01       		.uleb128 0x1
 2958 0240 31       		.uleb128 0x31
 2959 0241 13       		.uleb128 0x13
 2960 0242 00       		.byte	0
 2961 0243 00       		.byte	0
 2962 0244 2F       		.uleb128 0x2f
 2963 0245 05       		.uleb128 0x5
 2964 0246 00       		.byte	0
 2965 0247 31       		.uleb128 0x31
 2966 0248 13       		.uleb128 0x13
 2967 0249 02       		.uleb128 0x2
 2968 024a 18       		.uleb128 0x18
 2969 024b 00       		.byte	0
 2970 024c 00       		.byte	0
 2971 024d 30       		.uleb128 0x30
 2972 024e 1D       		.uleb128 0x1d
 2973 024f 01       		.byte	0x1
 2974 0250 31       		.uleb128 0x31
 2975 0251 13       		.uleb128 0x13
 2976 0252 11       		.uleb128 0x11
 2977 0253 01       		.uleb128 0x1
 2978 0254 12       		.uleb128 0x12
 2979 0255 06       		.uleb128 0x6
 2980 0256 58       		.uleb128 0x58
 2981 0257 0B       		.uleb128 0xb
 2982 0258 59       		.uleb128 0x59
 2983 0259 05       		.uleb128 0x5
 2984 025a 00       		.byte	0
 2985 025b 00       		.byte	0
 2986 025c 31       		.uleb128 0x31
 2987 025d 898201   		.uleb128 0x4109
 2988 0260 01       		.byte	0x1
 2989 0261 11       		.uleb128 0x11
 2990 0262 01       		.uleb128 0x1
 2991 0263 31       		.uleb128 0x31
 2992 0264 13       		.uleb128 0x13
 2993 0265 01       		.uleb128 0x1
ARM GAS  /tmp/ccizFQRG.s 			page 74


 2994 0266 13       		.uleb128 0x13
 2995 0267 00       		.byte	0
 2996 0268 00       		.byte	0
 2997 0269 32       		.uleb128 0x32
 2998 026a 898201   		.uleb128 0x4109
 2999 026d 01       		.byte	0x1
 3000 026e 11       		.uleb128 0x11
 3001 026f 01       		.uleb128 0x1
 3002 0270 9542     		.uleb128 0x2115
 3003 0272 19       		.uleb128 0x19
 3004 0273 31       		.uleb128 0x31
 3005 0274 13       		.uleb128 0x13
 3006 0275 00       		.byte	0
 3007 0276 00       		.byte	0
 3008 0277 33       		.uleb128 0x33
 3009 0278 898201   		.uleb128 0x4109
 3010 027b 00       		.byte	0
 3011 027c 11       		.uleb128 0x11
 3012 027d 01       		.uleb128 0x1
 3013 027e 9542     		.uleb128 0x2115
 3014 0280 19       		.uleb128 0x19
 3015 0281 31       		.uleb128 0x31
 3016 0282 13       		.uleb128 0x13
 3017 0283 00       		.byte	0
 3018 0284 00       		.byte	0
 3019 0285 34       		.uleb128 0x34
 3020 0286 0B       		.uleb128 0xb
 3021 0287 01       		.byte	0x1
 3022 0288 01       		.uleb128 0x1
 3023 0289 13       		.uleb128 0x13
 3024 028a 00       		.byte	0
 3025 028b 00       		.byte	0
 3026 028c 35       		.uleb128 0x35
 3027 028d 34       		.uleb128 0x34
 3028 028e 00       		.byte	0
 3029 028f 03       		.uleb128 0x3
 3030 0290 0E       		.uleb128 0xe
 3031 0291 3A       		.uleb128 0x3a
 3032 0292 0B       		.uleb128 0xb
 3033 0293 3B       		.uleb128 0x3b
 3034 0294 0B       		.uleb128 0xb
 3035 0295 49       		.uleb128 0x49
 3036 0296 13       		.uleb128 0x13
 3037 0297 00       		.byte	0
 3038 0298 00       		.byte	0
 3039 0299 36       		.uleb128 0x36
 3040 029a 05       		.uleb128 0x5
 3041 029b 00       		.byte	0
 3042 029c 03       		.uleb128 0x3
 3043 029d 0E       		.uleb128 0xe
 3044 029e 3A       		.uleb128 0x3a
 3045 029f 0B       		.uleb128 0xb
 3046 02a0 3B       		.uleb128 0x3b
 3047 02a1 0B       		.uleb128 0xb
 3048 02a2 49       		.uleb128 0x49
 3049 02a3 13       		.uleb128 0x13
 3050 02a4 02       		.uleb128 0x2
ARM GAS  /tmp/ccizFQRG.s 			page 75


 3051 02a5 17       		.uleb128 0x17
 3052 02a6 00       		.byte	0
 3053 02a7 00       		.byte	0
 3054 02a8 37       		.uleb128 0x37
 3055 02a9 2E       		.uleb128 0x2e
 3056 02aa 00       		.byte	0
 3057 02ab 03       		.uleb128 0x3
 3058 02ac 0E       		.uleb128 0xe
 3059 02ad 3A       		.uleb128 0x3a
 3060 02ae 0B       		.uleb128 0xb
 3061 02af 3B       		.uleb128 0x3b
 3062 02b0 05       		.uleb128 0x5
 3063 02b1 27       		.uleb128 0x27
 3064 02b2 19       		.uleb128 0x19
 3065 02b3 49       		.uleb128 0x49
 3066 02b4 13       		.uleb128 0x13
 3067 02b5 20       		.uleb128 0x20
 3068 02b6 0B       		.uleb128 0xb
 3069 02b7 00       		.byte	0
 3070 02b8 00       		.byte	0
 3071 02b9 38       		.uleb128 0x38
 3072 02ba 2E       		.uleb128 0x2e
 3073 02bb 01       		.byte	0x1
 3074 02bc 03       		.uleb128 0x3
 3075 02bd 0E       		.uleb128 0xe
 3076 02be 3A       		.uleb128 0x3a
 3077 02bf 0B       		.uleb128 0xb
 3078 02c0 3B       		.uleb128 0x3b
 3079 02c1 05       		.uleb128 0x5
 3080 02c2 27       		.uleb128 0x27
 3081 02c3 19       		.uleb128 0x19
 3082 02c4 49       		.uleb128 0x49
 3083 02c5 13       		.uleb128 0x13
 3084 02c6 20       		.uleb128 0x20
 3085 02c7 0B       		.uleb128 0xb
 3086 02c8 01       		.uleb128 0x1
 3087 02c9 13       		.uleb128 0x13
 3088 02ca 00       		.byte	0
 3089 02cb 00       		.byte	0
 3090 02cc 39       		.uleb128 0x39
 3091 02cd 05       		.uleb128 0x5
 3092 02ce 00       		.byte	0
 3093 02cf 03       		.uleb128 0x3
 3094 02d0 0E       		.uleb128 0xe
 3095 02d1 3A       		.uleb128 0x3a
 3096 02d2 0B       		.uleb128 0xb
 3097 02d3 3B       		.uleb128 0x3b
 3098 02d4 05       		.uleb128 0x5
 3099 02d5 49       		.uleb128 0x49
 3100 02d6 13       		.uleb128 0x13
 3101 02d7 00       		.byte	0
 3102 02d8 00       		.byte	0
 3103 02d9 3A       		.uleb128 0x3a
 3104 02da 2E       		.uleb128 0x2e
 3105 02db 01       		.byte	0x1
 3106 02dc 03       		.uleb128 0x3
 3107 02dd 0E       		.uleb128 0xe
ARM GAS  /tmp/ccizFQRG.s 			page 76


 3108 02de 3A       		.uleb128 0x3a
 3109 02df 0B       		.uleb128 0xb
 3110 02e0 3B       		.uleb128 0x3b
 3111 02e1 0B       		.uleb128 0xb
 3112 02e2 27       		.uleb128 0x27
 3113 02e3 19       		.uleb128 0x19
 3114 02e4 20       		.uleb128 0x20
 3115 02e5 0B       		.uleb128 0xb
 3116 02e6 01       		.uleb128 0x1
 3117 02e7 13       		.uleb128 0x13
 3118 02e8 00       		.byte	0
 3119 02e9 00       		.byte	0
 3120 02ea 3B       		.uleb128 0x3b
 3121 02eb 05       		.uleb128 0x5
 3122 02ec 00       		.byte	0
 3123 02ed 03       		.uleb128 0x3
 3124 02ee 0E       		.uleb128 0xe
 3125 02ef 3A       		.uleb128 0x3a
 3126 02f0 0B       		.uleb128 0xb
 3127 02f1 3B       		.uleb128 0x3b
 3128 02f2 0B       		.uleb128 0xb
 3129 02f3 49       		.uleb128 0x49
 3130 02f4 13       		.uleb128 0x13
 3131 02f5 00       		.byte	0
 3132 02f6 00       		.byte	0
 3133 02f7 3C       		.uleb128 0x3c
 3134 02f8 2E       		.uleb128 0x2e
 3135 02f9 01       		.byte	0x1
 3136 02fa 03       		.uleb128 0x3
 3137 02fb 0E       		.uleb128 0xe
 3138 02fc 3A       		.uleb128 0x3a
 3139 02fd 0B       		.uleb128 0xb
 3140 02fe 3B       		.uleb128 0x3b
 3141 02ff 0B       		.uleb128 0xb
 3142 0300 27       		.uleb128 0x27
 3143 0301 19       		.uleb128 0x19
 3144 0302 49       		.uleb128 0x49
 3145 0303 13       		.uleb128 0x13
 3146 0304 20       		.uleb128 0x20
 3147 0305 0B       		.uleb128 0xb
 3148 0306 01       		.uleb128 0x1
 3149 0307 13       		.uleb128 0x13
 3150 0308 00       		.byte	0
 3151 0309 00       		.byte	0
 3152 030a 3D       		.uleb128 0x3d
 3153 030b 05       		.uleb128 0x5
 3154 030c 00       		.byte	0
 3155 030d 03       		.uleb128 0x3
 3156 030e 08       		.uleb128 0x8
 3157 030f 3A       		.uleb128 0x3a
 3158 0310 0B       		.uleb128 0xb
 3159 0311 3B       		.uleb128 0x3b
 3160 0312 0B       		.uleb128 0xb
 3161 0313 49       		.uleb128 0x49
 3162 0314 13       		.uleb128 0x13
 3163 0315 00       		.byte	0
 3164 0316 00       		.byte	0
ARM GAS  /tmp/ccizFQRG.s 			page 77


 3165 0317 3E       		.uleb128 0x3e
 3166 0318 2E       		.uleb128 0x2e
 3167 0319 00       		.byte	0
 3168 031a 3F       		.uleb128 0x3f
 3169 031b 19       		.uleb128 0x19
 3170 031c 3C       		.uleb128 0x3c
 3171 031d 19       		.uleb128 0x19
 3172 031e 6E       		.uleb128 0x6e
 3173 031f 0E       		.uleb128 0xe
 3174 0320 03       		.uleb128 0x3
 3175 0321 0E       		.uleb128 0xe
 3176 0322 3A       		.uleb128 0x3a
 3177 0323 0B       		.uleb128 0xb
 3178 0324 3B       		.uleb128 0x3b
 3179 0325 0B       		.uleb128 0xb
 3180 0326 00       		.byte	0
 3181 0327 00       		.byte	0
 3182 0328 3F       		.uleb128 0x3f
 3183 0329 2E       		.uleb128 0x2e
 3184 032a 00       		.byte	0
 3185 032b 3F       		.uleb128 0x3f
 3186 032c 19       		.uleb128 0x19
 3187 032d 3C       		.uleb128 0x3c
 3188 032e 19       		.uleb128 0x19
 3189 032f 6E       		.uleb128 0x6e
 3190 0330 0E       		.uleb128 0xe
 3191 0331 03       		.uleb128 0x3
 3192 0332 0E       		.uleb128 0xe
 3193 0333 3A       		.uleb128 0x3a
 3194 0334 0B       		.uleb128 0xb
 3195 0335 3B       		.uleb128 0x3b
 3196 0336 05       		.uleb128 0x5
 3197 0337 00       		.byte	0
 3198 0338 00       		.byte	0
 3199 0339 00       		.byte	0
 3200              		.section	.debug_loc,"",%progbits
 3201              	.Ldebug_loc0:
 3202              	.LLST2:
 3203 0000 08000000 		.4byte	.LVL20
 3204 0004 18000000 		.4byte	.LVL23
 3205 0008 0200     		.2byte	0x2
 3206 000a 36       		.byte	0x36
 3207 000b 9F       		.byte	0x9f
 3208 000c 00000000 		.4byte	0
 3209 0010 00000000 		.4byte	0
 3210              	.LLST3:
 3211 0014 10000000 		.4byte	.LVL21
 3212 0018 14000000 		.4byte	.LVL22
 3213 001c 0200     		.2byte	0x2
 3214 001e 36       		.byte	0x36
 3215 001f 9F       		.byte	0x9f
 3216 0020 00000000 		.4byte	0
 3217 0024 00000000 		.4byte	0
 3218              	.LLST4:
 3219 0028 22000000 		.4byte	.LVL25
 3220 002c 26000000 		.4byte	.LVL26
 3221 0030 0200     		.2byte	0x2
ARM GAS  /tmp/ccizFQRG.s 			page 78


 3222 0032 30       		.byte	0x30
 3223 0033 9F       		.byte	0x9f
 3224 0034 00000000 		.4byte	0
 3225 0038 00000000 		.4byte	0
 3226              	.LLST1:
 3227 003c 00000000 		.4byte	.LVL3
 3228 0040 16000000 		.4byte	.LVL4
 3229 0044 0100     		.2byte	0x1
 3230 0046 50       		.byte	0x50
 3231 0047 16000000 		.4byte	.LVL4
 3232 004b 22000000 		.4byte	.LVL6
 3233 004f 0400     		.2byte	0x4
 3234 0051 F3       		.byte	0xf3
 3235 0052 01       		.uleb128 0x1
 3236 0053 50       		.byte	0x50
 3237 0054 9F       		.byte	0x9f
 3238 0055 22000000 		.4byte	.LVL6
 3239 0059 24000000 		.4byte	.LVL7
 3240 005d 0100     		.2byte	0x1
 3241 005f 50       		.byte	0x50
 3242 0060 24000000 		.4byte	.LVL7
 3243 0064 30000000 		.4byte	.LVL9
 3244 0068 0400     		.2byte	0x4
 3245 006a F3       		.byte	0xf3
 3246 006b 01       		.uleb128 0x1
 3247 006c 50       		.byte	0x50
 3248 006d 9F       		.byte	0x9f
 3249 006e 30000000 		.4byte	.LVL9
 3250 0072 32000000 		.4byte	.LVL10
 3251 0076 0100     		.2byte	0x1
 3252 0078 50       		.byte	0x50
 3253 0079 32000000 		.4byte	.LVL10
 3254 007d 3E000000 		.4byte	.LVL12
 3255 0081 0400     		.2byte	0x4
 3256 0083 F3       		.byte	0xf3
 3257 0084 01       		.uleb128 0x1
 3258 0085 50       		.byte	0x50
 3259 0086 9F       		.byte	0x9f
 3260 0087 3E000000 		.4byte	.LVL12
 3261 008b 40000000 		.4byte	.LVL13
 3262 008f 0100     		.2byte	0x1
 3263 0091 50       		.byte	0x50
 3264 0092 40000000 		.4byte	.LVL13
 3265 0096 4C000000 		.4byte	.LFE163
 3266 009a 0400     		.2byte	0x4
 3267 009c F3       		.byte	0xf3
 3268 009d 01       		.uleb128 0x1
 3269 009e 50       		.byte	0x50
 3270 009f 9F       		.byte	0x9f
 3271 00a0 00000000 		.4byte	0
 3272 00a4 00000000 		.4byte	0
 3273              	.LLST0:
 3274 00a8 00000000 		.4byte	.LVL0
 3275 00ac 05000000 		.4byte	.LVL1-1
 3276 00b0 0100     		.2byte	0x1
 3277 00b2 50       		.byte	0x50
 3278 00b3 05000000 		.4byte	.LVL1-1
ARM GAS  /tmp/ccizFQRG.s 			page 79


 3279 00b7 0E000000 		.4byte	.LFE162
 3280 00bb 0400     		.2byte	0x4
 3281 00bd F3       		.byte	0xf3
 3282 00be 01       		.uleb128 0x1
 3283 00bf 50       		.byte	0x50
 3284 00c0 9F       		.byte	0x9f
 3285 00c1 00000000 		.4byte	0
 3286 00c5 00000000 		.4byte	0
 3287              		.section	.debug_aranges,"",%progbits
 3288 0000 3C000000 		.4byte	0x3c
 3289 0004 0200     		.2byte	0x2
 3290 0006 00000000 		.4byte	.Ldebug_info0
 3291 000a 04       		.byte	0x4
 3292 000b 00       		.byte	0
 3293 000c 0000     		.2byte	0
 3294 000e 0000     		.2byte	0
 3295 0010 00000000 		.4byte	.LFB162
 3296 0014 0E000000 		.4byte	.LFE162-.LFB162
 3297 0018 00000000 		.4byte	.LFB163
 3298 001c 4C000000 		.4byte	.LFE163-.LFB163
 3299 0020 00000000 		.4byte	.LFB164
 3300 0024 14000000 		.4byte	.LFE164-.LFB164
 3301 0028 00000000 		.4byte	.LFB165
 3302 002c 04000000 		.4byte	.LFE165-.LFB165
 3303 0030 00000000 		.4byte	.LFB166
 3304 0034 50000000 		.4byte	.LFE166-.LFB166
 3305 0038 00000000 		.4byte	0
 3306 003c 00000000 		.4byte	0
 3307              		.section	.debug_ranges,"",%progbits
 3308              	.Ldebug_ranges0:
 3309 0000 00000000 		.4byte	.LFB162
 3310 0004 0E000000 		.4byte	.LFE162
 3311 0008 00000000 		.4byte	.LFB163
 3312 000c 4C000000 		.4byte	.LFE163
 3313 0010 00000000 		.4byte	.LFB164
 3314 0014 14000000 		.4byte	.LFE164
 3315 0018 00000000 		.4byte	.LFB165
 3316 001c 04000000 		.4byte	.LFE165
 3317 0020 00000000 		.4byte	.LFB166
 3318 0024 50000000 		.4byte	.LFE166
 3319 0028 00000000 		.4byte	0
 3320 002c 00000000 		.4byte	0
 3321              		.section	.debug_line,"",%progbits
 3322              	.Ldebug_line0:
 3323 0000 0C040000 		.section	.debug_str,"MS",%progbits,1
 3323      02006503 
 3323      00000201 
 3323      FB0E0D00 
 3323      01010101 
 3324              	.LASF3:
 3325 0000 73686F72 		.ascii	"short int\000"
 3325      7420696E 
 3325      7400
 3326              	.LASF39:
 3327 000a 504D435F 		.ascii	"PMC_IMR\000"
 3327      494D5200 
 3328              	.LASF143:
ARM GAS  /tmp/ccizFQRG.s 			page 80


 3329 0012 5F72616E 		.ascii	"_rand48\000"
 3329      64343800 
 3330              	.LASF122:
 3331 001a 5F656D65 		.ascii	"_emergency\000"
 3331      7267656E 
 3331      637900
 3332              	.LASF186:
 3333 0025 706C6C63 		.ascii	"pllcfg\000"
 3333      666700
 3334              	.LASF26:
 3335 002c 434B4752 		.ascii	"CKGR_MOR\000"
 3335      5F4D4F52 
 3335      00
 3336              	.LASF229:
 3337 0035 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 3337      652F746F 
 3337      72626A6F 
 3337      726E2F65 
 3337      636C6970 
 3338              	.LASF5:
 3339 0064 5F5F7569 		.ascii	"__uint8_t\000"
 3339      6E74385F 
 3339      7400
 3340              	.LASF159:
 3341 006e 5F676574 		.ascii	"_getdate_err\000"
 3341      64617465 
 3341      5F657272 
 3341      00
 3342              	.LASF112:
 3343 007b 5F646174 		.ascii	"_data\000"
 3343      6100
 3344              	.LASF187:
 3345 0081 73797363 		.ascii	"sysclk_init\000"
 3345      6C6B5F69 
 3345      6E697400 
 3346              	.LASF178:
 3347 008d 504C4C5F 		.ascii	"PLL_SRC_MAINCK_4M_RC\000"
 3347      5352435F 
 3347      4D41494E 
 3347      434B5F34 
 3347      4D5F5243 
 3348              	.LASF48:
 3349 00a2 504D435F 		.ascii	"PMC_PCDR1\000"
 3349      50434452 
 3349      3100
 3350              	.LASF163:
 3351 00ac 5F776372 		.ascii	"_wcrtomb_state\000"
 3351      746F6D62 
 3351      5F737461 
 3351      746500
 3352              	.LASF158:
 3353 00bb 5F736967 		.ascii	"_signal_buf\000"
 3353      6E616C5F 
 3353      62756600 
 3354              	.LASF11:
 3355 00c7 6C6F6E67 		.ascii	"long long unsigned int\000"
 3355      206C6F6E 
ARM GAS  /tmp/ccizFQRG.s 			page 81


 3355      6720756E 
 3355      7369676E 
 3355      65642069 
 3356              	.LASF102:
 3357 00de 5F6C6266 		.ascii	"_lbfsize\000"
 3357      73697A65 
 3357      00
 3358              	.LASF199:
 3359 00e7 706C6C5F 		.ascii	"pll_is_locked\000"
 3359      69735F6C 
 3359      6F636B65 
 3359      6400
 3360              	.LASF25:
 3361 00f5 434B4752 		.ascii	"CKGR_UCKR\000"
 3361      5F55434B 
 3361      5200
 3362              	.LASF203:
 3363 00ff 705F6366 		.ascii	"p_cfg\000"
 3363      6700
 3364              	.LASF16:
 3365 0105 49544D5F 		.ascii	"ITM_RxBuffer\000"
 3365      52784275 
 3365      66666572 
 3365      00
 3366              	.LASF161:
 3367 0112 5F6D6272 		.ascii	"_mbrtowc_state\000"
 3367      746F7763 
 3367      5F737461 
 3367      746500
 3368              	.LASF202:
 3369 0121 706C6C5F 		.ascii	"pll_enable\000"
 3369      656E6162 
 3369      6C6500
 3370              	.LASF156:
 3371 012c 5F776374 		.ascii	"_wctomb_state\000"
 3371      6F6D625F 
 3371      73746174 
 3371      6500
 3372              	.LASF79:
 3373 013a 5F5F746D 		.ascii	"__tm_sec\000"
 3373      5F736563 
 3373      00
 3374              	.LASF220:
 3375 0143 53797374 		.ascii	"SystemCoreClockUpdate\000"
 3375      656D436F 
 3375      7265436C 
 3375      6F636B55 
 3375      70646174 
 3376              	.LASF107:
 3377 0159 5F636C6F 		.ascii	"_close\000"
 3377      736500
 3378              	.LASF1:
 3379 0160 7369676E 		.ascii	"signed char\000"
 3379      65642063 
 3379      68617200 
 3380              	.LASF19:
 3381 016c 504D435F 		.ascii	"PMC_SCDR\000"
ARM GAS  /tmp/ccizFQRG.s 			page 82


 3381      53434452 
 3381      00
 3382              	.LASF196:
 3383 0175 706C6C5F 		.ascii	"pll_id\000"
 3383      696400
 3384              	.LASF97:
 3385 017c 5F626173 		.ascii	"_base\000"
 3385      6500
 3386              	.LASF218:
 3387 0182 706D635F 		.ascii	"pmc_mck_set_division\000"
 3387      6D636B5F 
 3387      7365745F 
 3387      64697669 
 3387      73696F6E 
 3388              	.LASF29:
 3389 0197 52657365 		.ascii	"Reserved2\000"
 3389      72766564 
 3389      3200
 3390              	.LASF81:
 3391 01a1 5F5F746D 		.ascii	"__tm_hour\000"
 3391      5F686F75 
 3391      7200
 3392              	.LASF66:
 3393 01ab 5F5F7763 		.ascii	"__wch\000"
 3393      6800
 3394              	.LASF137:
 3395 01b1 5F5F7366 		.ascii	"__sf\000"
 3395      00
 3396              	.LASF88:
 3397 01b6 5F6F6E5F 		.ascii	"_on_exit_args\000"
 3397      65786974 
 3397      5F617267 
 3397      7300
 3398              	.LASF49:
 3399 01c4 504D435F 		.ascii	"PMC_PCSR1\000"
 3399      50435352 
 3399      3100
 3400              	.LASF221:
 3401 01ce 706D635F 		.ascii	"pmc_disable_udpck\000"
 3401      64697361 
 3401      626C655F 
 3401      75647063 
 3401      6B00
 3402              	.LASF103:
 3403 01e0 5F636F6F 		.ascii	"_cookie\000"
 3403      6B696500 
 3404              	.LASF217:
 3405 01e8 73797374 		.ascii	"system_init_flash\000"
 3405      656D5F69 
 3405      6E69745F 
 3405      666C6173 
 3405      6800
 3406              	.LASF225:
 3407 01fa 706D635F 		.ascii	"pmc_mck_set_source\000"
 3407      6D636B5F 
 3407      7365745F 
 3407      736F7572 
ARM GAS  /tmp/ccizFQRG.s 			page 83


 3407      636500
 3408              	.LASF136:
 3409 020d 5F5F7367 		.ascii	"__sglue\000"
 3409      6C756500 
 3410              	.LASF7:
 3411 0215 6C6F6E67 		.ascii	"long int\000"
 3411      20696E74 
 3411      00
 3412              	.LASF59:
 3413 021e 504D435F 		.ascii	"PMC_SLPWK_SR1\000"
 3413      534C5057 
 3413      4B5F5352 
 3413      3100
 3414              	.LASF54:
 3415 022c 504D435F 		.ascii	"PMC_SLPWK_SR0\000"
 3415      534C5057 
 3415      4B5F5352 
 3415      3000
 3416              	.LASF100:
 3417 023a 5F666C61 		.ascii	"_flags\000"
 3417      677300
 3418              	.LASF92:
 3419 0241 5F69735F 		.ascii	"_is_cxa\000"
 3419      63786100 
 3420              	.LASF76:
 3421 0249 5F776473 		.ascii	"_wds\000"
 3421      00
 3422              	.LASF108:
 3423 024e 5F756275 		.ascii	"_ubuf\000"
 3423      6600
 3424              	.LASF30:
 3425 0254 504D435F 		.ascii	"PMC_MCKR\000"
 3425      4D434B52 
 3425      00
 3426              	.LASF128:
 3427 025d 5F726573 		.ascii	"_result_k\000"
 3427      756C745F 
 3427      6B00
 3428              	.LASF22:
 3429 0267 504D435F 		.ascii	"PMC_PCER0\000"
 3429      50434552 
 3429      3000
 3430              	.LASF47:
 3431 0271 504D435F 		.ascii	"PMC_PCER1\000"
 3431      50434552 
 3431      3100
 3432              	.LASF10:
 3433 027b 6C6F6E67 		.ascii	"long long int\000"
 3433      206C6F6E 
 3433      6720696E 
 3433      7400
 3434              	.LASF219:
 3435 0289 706D635F 		.ascii	"pmc_switch_mck_to_pllack\000"
 3435      73776974 
 3435      63685F6D 
 3435      636B5F74 
 3435      6F5F706C 
ARM GAS  /tmp/ccizFQRG.s 			page 84


 3436              	.LASF177:
 3437 02a2 646F7562 		.ascii	"double\000"
 3437      6C6500
 3438              	.LASF210:
 3439 02a9 756C5F69 		.ascii	"ul_id\000"
 3439      6400
 3440              	.LASF132:
 3441 02af 5F637674 		.ascii	"_cvtbuf\000"
 3441      62756600 
 3442              	.LASF162:
 3443 02b7 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 3443      72746F77 
 3443      63735F73 
 3443      74617465 
 3443      00
 3444              	.LASF160:
 3445 02c8 5F6D6272 		.ascii	"_mbrlen_state\000"
 3445      6C656E5F 
 3445      73746174 
 3445      6500
 3446              	.LASF89:
 3447 02d6 5F666E61 		.ascii	"_fnargs\000"
 3447      72677300 
 3448              	.LASF95:
 3449 02de 5F666E73 		.ascii	"_fns\000"
 3449      00
 3450              	.LASF8:
 3451 02e3 5F5F7569 		.ascii	"__uint32_t\000"
 3451      6E743332 
 3451      5F7400
 3452              	.LASF195:
 3453 02ee 73797363 		.ascii	"sysclk_get_main_hz\000"
 3453      6C6B5F67 
 3453      65745F6D 
 3453      61696E5F 
 3453      687A00
 3454              	.LASF75:
 3455 0301 5F736967 		.ascii	"_sign\000"
 3455      6E00
 3456              	.LASF34:
 3457 0307 504D435F 		.ascii	"PMC_PCK\000"
 3457      50434B00 
 3458              	.LASF169:
 3459 030f 5F696D70 		.ascii	"_impure_ptr\000"
 3459      7572655F 
 3459      70747200 
 3460              	.LASF120:
 3461 031b 5F737464 		.ascii	"_stderr\000"
 3461      65727200 
 3462              	.LASF77:
 3463 0323 5F426967 		.ascii	"_Bigint\000"
 3463      696E7400 
 3464              	.LASF151:
 3465 032b 5F67616D 		.ascii	"_gamma_signgam\000"
 3465      6D615F73 
 3465      69676E67 
 3465      616D00
ARM GAS  /tmp/ccizFQRG.s 			page 85


 3466              	.LASF50:
 3467 033a 504D435F 		.ascii	"PMC_PCR\000"
 3467      50435200 
 3468              	.LASF167:
 3469 0342 5F6E6D61 		.ascii	"_nmalloc\000"
 3469      6C6C6F63 
 3469      00
 3470              	.LASF226:
 3471 034b 706D635F 		.ascii	"pmc_mck_set_prescaler\000"
 3471      6D636B5F 
 3471      7365745F 
 3471      70726573 
 3471      63616C65 
 3472              	.LASF78:
 3473 0361 5F5F746D 		.ascii	"__tm\000"
 3473      00
 3474              	.LASF38:
 3475 0366 504D435F 		.ascii	"PMC_SR\000"
 3475      535200
 3476              	.LASF27:
 3477 036d 434B4752 		.ascii	"CKGR_MCFR\000"
 3477      5F4D4346 
 3477      5200
 3478              	.LASF114:
 3479 0377 5F6D6273 		.ascii	"_mbstate\000"
 3479      74617465 
 3479      00
 3480              	.LASF67:
 3481 0380 5F5F7763 		.ascii	"__wchb\000"
 3481      686200
 3482              	.LASF17:
 3483 0387 53797374 		.ascii	"SystemCoreClock\000"
 3483      656D436F 
 3483      7265436C 
 3483      6F636B00 
 3484              	.LASF55:
 3485 0397 504D435F 		.ascii	"PMC_SLPWK_ASR0\000"
 3485      534C5057 
 3485      4B5F4153 
 3485      523000
 3486              	.LASF60:
 3487 03a6 504D435F 		.ascii	"PMC_SLPWK_ASR1\000"
 3487      534C5057 
 3487      4B5F4153 
 3487      523100
 3488              	.LASF131:
 3489 03b5 5F637674 		.ascii	"_cvtlen\000"
 3489      6C656E00 
 3490              	.LASF9:
 3491 03bd 6C6F6E67 		.ascii	"long unsigned int\000"
 3491      20756E73 
 3491      69676E65 
 3491      6420696E 
 3491      7400
 3492              	.LASF211:
 3493 03cf 6F73635F 		.ascii	"osc_is_ready\000"
 3493      69735F72 
ARM GAS  /tmp/ccizFQRG.s 			page 86


 3493      65616479 
 3493      00
 3494              	.LASF101:
 3495 03dc 5F66696C 		.ascii	"_file\000"
 3495      6500
 3496              	.LASF21:
 3497 03e2 52657365 		.ascii	"Reserved1\000"
 3497      72766564 
 3497      3100
 3498              	.LASF192:
 3499 03ec 756C5F73 		.ascii	"ul_src\000"
 3499      726300
 3500              	.LASF31:
 3501 03f3 52657365 		.ascii	"Reserved3\000"
 3501      72766564 
 3501      3300
 3502              	.LASF141:
 3503 03fd 5F6E696F 		.ascii	"_niobs\000"
 3503      627300
 3504              	.LASF35:
 3505 0404 52657365 		.ascii	"Reserved5\000"
 3505      72766564 
 3505      3500
 3506              	.LASF43:
 3507 040e 52657365 		.ascii	"Reserved6\000"
 3507      72766564 
 3507      3600
 3508              	.LASF4:
 3509 0418 73686F72 		.ascii	"short unsigned int\000"
 3509      7420756E 
 3509      7369676E 
 3509      65642069 
 3509      6E7400
 3510              	.LASF56:
 3511 042b 52657365 		.ascii	"Reserved8\000"
 3511      72766564 
 3511      3800
 3512              	.LASF134:
 3513 0435 5F617465 		.ascii	"_atexit0\000"
 3513      78697430 
 3513      00
 3514              	.LASF200:
 3515 043e 756C5F70 		.ascii	"ul_pll_id\000"
 3515      6C6C5F69 
 3515      6400
 3516              	.LASF23:
 3517 0448 504D435F 		.ascii	"PMC_PCDR0\000"
 3517      50434452 
 3517      3000
 3518              	.LASF223:
 3519 0452 706D635F 		.ascii	"pmc_switch_udpck_to_upllck\000"
 3519      73776974 
 3519      63685F75 
 3519      6470636B 
 3519      5F746F5F 
 3520              	.LASF149:
 3521 046d 5F617363 		.ascii	"_asctime_buf\000"
ARM GAS  /tmp/ccizFQRG.s 			page 87


 3521      74696D65 
 3521      5F627566 
 3521      00
 3522              	.LASF127:
 3523 047a 5F726573 		.ascii	"_result\000"
 3523      756C7400 
 3524              	.LASF207:
 3525 0482 76636F5F 		.ascii	"vco_hz\000"
 3525      687A00
 3526              	.LASF166:
 3527 0489 5F6E6578 		.ascii	"_nextf\000"
 3527      746600
 3528              	.LASF65:
 3529 0490 77696E74 		.ascii	"wint_t\000"
 3529      5F7400
 3530              	.LASF113:
 3531 0497 5F6C6F63 		.ascii	"_lock\000"
 3531      6B00
 3532              	.LASF213:
 3533 049d 706D635F 		.ascii	"pmc_switch_mainck_to_xtal\000"
 3533      73776974 
 3533      63685F6D 
 3533      61696E63 
 3533      6B5F746F 
 3534              	.LASF145:
 3535 04b7 5F6D756C 		.ascii	"_mult\000"
 3535      7400
 3536              	.LASF208:
 3537 04bd 6F73635F 		.ascii	"osc_wait_ready\000"
 3537      77616974 
 3537      5F726561 
 3537      647900
 3538              	.LASF216:
 3539 04cc 706D635F 		.ascii	"pmc_is_locked_pllack\000"
 3539      69735F6C 
 3539      6F636B65 
 3539      645F706C 
 3539      6C61636B 
 3540              	.LASF194:
 3541 04e1 73797363 		.ascii	"sysclk_get_cpu_hz\000"
 3541      6C6B5F67 
 3541      65745F63 
 3541      70755F68 
 3541      7A00
 3542              	.LASF105:
 3543 04f3 5F777269 		.ascii	"_write\000"
 3543      746500
 3544              	.LASF32:
 3545 04fa 504D435F 		.ascii	"PMC_USB\000"
 3545      55534200 
 3546              	.LASF147:
 3547 0502 5F756E75 		.ascii	"_unused_rand\000"
 3547      7365645F 
 3547      72616E64 
 3547      00
 3548              	.LASF51:
 3549 050f 504D435F 		.ascii	"PMC_OCR\000"
ARM GAS  /tmp/ccizFQRG.s 			page 88


 3549      4F435200 
 3550              	.LASF175:
 3551 0517 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 3551      6972715F 
 3551      70726576 
 3551      5F696E74 
 3551      65727275 
 3552              	.LASF62:
 3553 0534 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 3553      4B5F5245 
 3553      43555253 
 3553      4956455F 
 3553      5400
 3554              	.LASF228:
 3555 0546 2E2E2F61 		.ascii	"../asf/common/services/clock/same70/sysclk.c\000"
 3555      73662F63 
 3555      6F6D6D6F 
 3555      6E2F7365 
 3555      72766963 
 3556              	.LASF15:
 3557 0573 73697A65 		.ascii	"sizetype\000"
 3557      74797065 
 3557      00
 3558              	.LASF111:
 3559 057c 5F6F6666 		.ascii	"_offset\000"
 3559      73657400 
 3560              	.LASF182:
 3561 0584 504C4C5F 		.ascii	"PLL_SRC_MAINCK_BYPASS\000"
 3561      5352435F 
 3561      4D41494E 
 3561      434B5F42 
 3561      59504153 
 3562              	.LASF42:
 3563 059a 504D435F 		.ascii	"PMC_FOCR\000"
 3563      464F4352 
 3563      00
 3564              	.LASF227:
 3565 05a3 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 3565      43393920 
 3565      362E332E 
 3565      31203230 
 3565      31373036 
 3566 05d6 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 3566      76352D64 
 3566      3136202D 
 3566      6D666C6F 
 3566      61742D61 
 3567 0609 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 3567      6E2D7365 
 3567      6374696F 
 3567      6E73202D 
 3567      66646174 
 3568 063c 6F6E7374 		.ascii	"onstant\000"
 3568      616E7400 
 3569              	.LASF183:
 3570 0644 504C4C5F 		.ascii	"PLL_NR_SOURCES\000"
 3570      4E525F53 
ARM GAS  /tmp/ccizFQRG.s 			page 89


 3570      4F555243 
 3570      455300
 3571              	.LASF71:
 3572 0653 5F666C6F 		.ascii	"_flock_t\000"
 3572      636B5F74 
 3572      00
 3573              	.LASF214:
 3574 065c 706D635F 		.ascii	"pmc_osc_is_ready_mainck\000"
 3574      6F73635F 
 3574      69735F72 
 3574      65616479 
 3574      5F6D6169 
 3575              	.LASF83:
 3576 0674 5F5F746D 		.ascii	"__tm_mon\000"
 3576      5F6D6F6E 
 3576      00
 3577              	.LASF93:
 3578 067d 5F617465 		.ascii	"_atexit\000"
 3578      78697400 
 3579              	.LASF171:
 3580 0685 7375626F 		.ascii	"suboptarg\000"
 3580      70746172 
 3580      6700
 3581              	.LASF125:
 3582 068f 5F5F7364 		.ascii	"__sdidinit\000"
 3582      6964696E 
 3582      697400
 3583              	.LASF63:
 3584 069a 5F6F6666 		.ascii	"_off_t\000"
 3584      5F7400
 3585              	.LASF33:
 3586 06a1 52657365 		.ascii	"Reserved4\000"
 3586      72766564 
 3586      3400
 3587              	.LASF212:
 3588 06ab 6F73635F 		.ascii	"osc_enable\000"
 3588      656E6162 
 3588      6C6500
 3589              	.LASF224:
 3590 06b6 706D635F 		.ascii	"pmc_enable_udpck\000"
 3590      656E6162 
 3590      6C655F75 
 3590      6470636B 
 3590      00
 3591              	.LASF179:
 3592 06c7 504C4C5F 		.ascii	"PLL_SRC_MAINCK_8M_RC\000"
 3592      5352435F 
 3592      4D41494E 
 3592      434B5F38 
 3592      4D5F5243 
 3593              	.LASF176:
 3594 06dc 666C6F61 		.ascii	"float\000"
 3594      7400
 3595              	.LASF172:
 3596 06e2 675F696E 		.ascii	"g_interrupt_enabled\000"
 3596      74657272 
 3596      7570745F 
ARM GAS  /tmp/ccizFQRG.s 			page 90


 3596      656E6162 
 3596      6C656400 
 3597              	.LASF46:
 3598 06f6 52657365 		.ascii	"Reserved7\000"
 3598      72766564 
 3598      3700
 3599              	.LASF28:
 3600 0700 434B4752 		.ascii	"CKGR_PLLAR\000"
 3600      5F504C4C 
 3600      415200
 3601              	.LASF84:
 3602 070b 5F5F746D 		.ascii	"__tm_year\000"
 3602      5F796561 
 3602      7200
 3603              	.LASF104:
 3604 0715 5F726561 		.ascii	"_read\000"
 3604      6400
 3605              	.LASF189:
 3606 071b 73797363 		.ascii	"sysclk_enable_usb\000"
 3606      6C6B5F65 
 3606      6E61626C 
 3606      655F7573 
 3606      6200
 3607              	.LASF181:
 3608 072d 504C4C5F 		.ascii	"PLL_SRC_MAINCK_XTAL\000"
 3608      5352435F 
 3608      4D41494E 
 3608      434B5F58 
 3608      54414C00 
 3609              	.LASF173:
 3610 0741 5F426F6F 		.ascii	"_Bool\000"
 3610      6C00
 3611              	.LASF13:
 3612 0747 696E7433 		.ascii	"int32_t\000"
 3612      325F7400 
 3613              	.LASF90:
 3614 074f 5F64736F 		.ascii	"_dso_handle\000"
 3614      5F68616E 
 3614      646C6500 
 3615              	.LASF37:
 3616 075b 504D435F 		.ascii	"PMC_IDR\000"
 3616      49445200 
 3617              	.LASF41:
 3618 0763 504D435F 		.ascii	"PMC_FSPR\000"
 3618      46535052 
 3618      00
 3619              	.LASF133:
 3620 076c 5F6E6577 		.ascii	"_new\000"
 3620      00
 3621              	.LASF204:
 3622 0771 706C6C5F 		.ascii	"pll_config_init\000"
 3622      636F6E66 
 3622      69675F69 
 3622      6E697400 
 3623              	.LASF184:
 3624 0781 706C6C5F 		.ascii	"pll_config\000"
 3624      636F6E66 
ARM GAS  /tmp/ccizFQRG.s 			page 91


 3624      696700
 3625              	.LASF165:
 3626 078c 5F685F65 		.ascii	"_h_errno\000"
 3626      72726E6F 
 3626      00
 3627              	.LASF154:
 3628 0795 5F6D626C 		.ascii	"_mblen_state\000"
 3628      656E5F73 
 3628      74617465 
 3628      00
 3629              	.LASF86:
 3630 07a2 5F5F746D 		.ascii	"__tm_yday\000"
 3630      5F796461 
 3630      7900
 3631              	.LASF96:
 3632 07ac 5F5F7362 		.ascii	"__sbuf\000"
 3632      756600
 3633              	.LASF115:
 3634 07b3 5F666C61 		.ascii	"_flags2\000"
 3634      67733200 
 3635              	.LASF130:
 3636 07bb 5F667265 		.ascii	"_freelist\000"
 3636      656C6973 
 3636      7400
 3637              	.LASF139:
 3638 07c5 5F5F4649 		.ascii	"__FILE\000"
 3638      4C4500
 3639              	.LASF70:
 3640 07cc 5F6D6273 		.ascii	"_mbstate_t\000"
 3640      74617465 
 3640      5F7400
 3641              	.LASF99:
 3642 07d7 5F5F7346 		.ascii	"__sFILE\000"
 3642      494C4500 
 3643              	.LASF24:
 3644 07df 504D435F 		.ascii	"PMC_PCSR0\000"
 3644      50435352 
 3644      3000
 3645              	.LASF152:
 3646 07e9 5F72616E 		.ascii	"_rand_next\000"
 3646      645F6E65 
 3646      787400
 3647              	.LASF230:
 3648 07f4 706C6C5F 		.ascii	"pll_source\000"
 3648      736F7572 
 3648      636500
 3649              	.LASF142:
 3650 07ff 5F696F62 		.ascii	"_iobs\000"
 3650      7300
 3651              	.LASF121:
 3652 0805 5F696E63 		.ascii	"_inc\000"
 3652      00
 3653              	.LASF94:
 3654 080a 5F696E64 		.ascii	"_ind\000"
 3654      00
 3655              	.LASF124:
 3656 080f 5F637572 		.ascii	"_current_locale\000"
ARM GAS  /tmp/ccizFQRG.s 			page 92


 3656      72656E74 
 3656      5F6C6F63 
 3656      616C6500 
 3657              	.LASF126:
 3658 081f 5F5F636C 		.ascii	"__cleanup\000"
 3658      65616E75 
 3658      7000
 3659              	.LASF52:
 3660 0829 504D435F 		.ascii	"PMC_SLPWK_ER0\000"
 3660      534C5057 
 3660      4B5F4552 
 3660      3000
 3661              	.LASF57:
 3662 0837 504D435F 		.ascii	"PMC_SLPWK_ER1\000"
 3662      534C5057 
 3662      4B5F4552 
 3662      3100
 3663              	.LASF74:
 3664 0845 5F6D6178 		.ascii	"_maxwds\000"
 3664      77647300 
 3665              	.LASF116:
 3666 084d 5F726565 		.ascii	"_reent\000"
 3666      6E7400
 3667              	.LASF44:
 3668 0854 504D435F 		.ascii	"PMC_WPMR\000"
 3668      57504D52 
 3668      00
 3669              	.LASF68:
 3670 085d 5F5F636F 		.ascii	"__count\000"
 3670      756E7400 
 3671              	.LASF14:
 3672 0865 75696E74 		.ascii	"uint32_t\000"
 3672      33325F74 
 3672      00
 3673              	.LASF188:
 3674 086e 73797363 		.ascii	"sysclk_disable_usb\000"
 3674      6C6B5F64 
 3674      69736162 
 3674      6C655F75 
 3674      736200
 3675              	.LASF157:
 3676 0881 5F6C3634 		.ascii	"_l64a_buf\000"
 3676      615F6275 
 3676      6600
 3677              	.LASF201:
 3678 088b 706C6C5F 		.ascii	"pll_enable_source\000"
 3678      656E6162 
 3678      6C655F73 
 3678      6F757263 
 3678      6500
 3679              	.LASF64:
 3680 089d 5F66706F 		.ascii	"_fpos_t\000"
 3680      735F7400 
 3681              	.LASF117:
 3682 08a5 5F657272 		.ascii	"_errno\000"
 3682      6E6F00
 3683              	.LASF138:
ARM GAS  /tmp/ccizFQRG.s 			page 93


 3684 08ac 63686172 		.ascii	"char\000"
 3684      00
 3685              	.LASF110:
 3686 08b1 5F626C6B 		.ascii	"_blksize\000"
 3686      73697A65 
 3686      00
 3687              	.LASF98:
 3688 08ba 5F73697A 		.ascii	"_size\000"
 3688      6500
 3689              	.LASF0:
 3690 08c0 756E7369 		.ascii	"unsigned int\000"
 3690      676E6564 
 3690      20696E74 
 3690      00
 3691              	.LASF209:
 3692 08cd 6F73635F 		.ascii	"osc_get_rate\000"
 3692      6765745F 
 3692      72617465 
 3692      00
 3693              	.LASF144:
 3694 08da 5F736565 		.ascii	"_seed\000"
 3694      6400
 3695              	.LASF20:
 3696 08e0 504D435F 		.ascii	"PMC_SCSR\000"
 3696      53435352 
 3696      00
 3697              	.LASF198:
 3698 08e9 706C6C5F 		.ascii	"pll_wait_for_lock\000"
 3698      77616974 
 3698      5F666F72 
 3698      5F6C6F63 
 3698      6B00
 3699              	.LASF6:
 3700 08fb 5F5F696E 		.ascii	"__int32_t\000"
 3700      7433325F 
 3700      7400
 3701              	.LASF73:
 3702 0905 5F6E6578 		.ascii	"_next\000"
 3702      7400
 3703              	.LASF148:
 3704 090b 5F737472 		.ascii	"_strtok_last\000"
 3704      746F6B5F 
 3704      6C617374 
 3704      00
 3705              	.LASF69:
 3706 0918 5F5F7661 		.ascii	"__value\000"
 3706      6C756500 
 3707              	.LASF185:
 3708 0920 6374726C 		.ascii	"ctrl\000"
 3708      00
 3709              	.LASF91:
 3710 0925 5F666E74 		.ascii	"_fntypes\000"
 3710      79706573 
 3710      00
 3711              	.LASF2:
 3712 092e 756E7369 		.ascii	"unsigned char\000"
 3712      676E6564 
ARM GAS  /tmp/ccizFQRG.s 			page 94


 3712      20636861 
 3712      7200
 3713              	.LASF36:
 3714 093c 504D435F 		.ascii	"PMC_IER\000"
 3714      49455200 
 3715              	.LASF146:
 3716 0944 5F616464 		.ascii	"_add\000"
 3716      00
 3717              	.LASF191:
 3718 0949 73797363 		.ascii	"sysclk_set_prescalers\000"
 3718      6C6B5F73 
 3718      65745F70 
 3718      72657363 
 3718      616C6572 
 3719              	.LASF164:
 3720 095f 5F776373 		.ascii	"_wcsrtombs_state\000"
 3720      72746F6D 
 3720      62735F73 
 3720      74617465 
 3720      00
 3721              	.LASF72:
 3722 0970 5F5F554C 		.ascii	"__ULong\000"
 3722      6F6E6700 
 3723              	.LASF170:
 3724 0978 5F676C6F 		.ascii	"_global_impure_ptr\000"
 3724      62616C5F 
 3724      696D7075 
 3724      72655F70 
 3724      747200
 3725              	.LASF180:
 3726 098b 504C4C5F 		.ascii	"PLL_SRC_MAINCK_12M_RC\000"
 3726      5352435F 
 3726      4D41494E 
 3726      434B5F31 
 3726      324D5F52 
 3727              	.LASF40:
 3728 09a1 504D435F 		.ascii	"PMC_FSMR\000"
 3728      46534D52 
 3728      00
 3729              	.LASF206:
 3730 09aa 756C5F6D 		.ascii	"ul_mul\000"
 3730      756C00
 3731              	.LASF197:
 3732 09b1 655F7372 		.ascii	"e_src\000"
 3732      6300
 3733              	.LASF193:
 3734 09b7 756C5F70 		.ascii	"ul_pres\000"
 3734      72657300 
 3735              	.LASF106:
 3736 09bf 5F736565 		.ascii	"_seek\000"
 3736      6B00
 3737              	.LASF119:
 3738 09c5 5F737464 		.ascii	"_stdout\000"
 3738      6F757400 
 3739              	.LASF85:
 3740 09cd 5F5F746D 		.ascii	"__tm_wday\000"
 3740      5F776461 
ARM GAS  /tmp/ccizFQRG.s 			page 95


 3740      7900
 3741              	.LASF140:
 3742 09d7 5F676C75 		.ascii	"_glue\000"
 3742      6500
 3743              	.LASF118:
 3744 09dd 5F737464 		.ascii	"_stdin\000"
 3744      696E00
 3745              	.LASF53:
 3746 09e4 504D435F 		.ascii	"PMC_SLPWK_DR0\000"
 3746      534C5057 
 3746      4B5F4452 
 3746      3000
 3747              	.LASF58:
 3748 09f2 504D435F 		.ascii	"PMC_SLPWK_DR1\000"
 3748      534C5057 
 3748      4B5F4452 
 3748      3100
 3749              	.LASF12:
 3750 0a00 75696E74 		.ascii	"uint8_t\000"
 3750      385F7400 
 3751              	.LASF190:
 3752 0a08 73797363 		.ascii	"sysclk_set_source\000"
 3752      6C6B5F73 
 3752      65745F73 
 3752      6F757263 
 3752      6500
 3753              	.LASF135:
 3754 0a1a 5F736967 		.ascii	"_sig_func\000"
 3754      5F66756E 
 3754      6300
 3755              	.LASF215:
 3756 0a24 706D635F 		.ascii	"pmc_disable_pllack\000"
 3756      64697361 
 3756      626C655F 
 3756      706C6C61 
 3756      636B00
 3757              	.LASF174:
 3758 0a37 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 3758      6972715F 
 3758      63726974 
 3758      6963616C 
 3758      5F736563 
 3759              	.LASF109:
 3760 0a58 5F6E6275 		.ascii	"_nbuf\000"
 3760      6600
 3761              	.LASF168:
 3762 0a5e 5F756E75 		.ascii	"_unused\000"
 3762      73656400 
 3763              	.LASF205:
 3764 0a66 756C5F64 		.ascii	"ul_div\000"
 3764      697600
 3765              	.LASF87:
 3766 0a6d 5F5F746D 		.ascii	"__tm_isdst\000"
 3766      5F697364 
 3766      737400
 3767              	.LASF150:
 3768 0a78 5F6C6F63 		.ascii	"_localtime_buf\000"
ARM GAS  /tmp/ccizFQRG.s 			page 96


 3768      616C7469 
 3768      6D655F62 
 3768      756600
 3769              	.LASF18:
 3770 0a87 504D435F 		.ascii	"PMC_SCER\000"
 3770      53434552 
 3770      00
 3771              	.LASF80:
 3772 0a90 5F5F746D 		.ascii	"__tm_min\000"
 3772      5F6D696E 
 3772      00
 3773              	.LASF61:
 3774 0a99 504D435F 		.ascii	"PMC_SLPWK_AIPR\000"
 3774      534C5057 
 3774      4B5F4149 
 3774      505200
 3775              	.LASF153:
 3776 0aa8 5F723438 		.ascii	"_r48\000"
 3776      00
 3777              	.LASF155:
 3778 0aad 5F6D6274 		.ascii	"_mbtowc_state\000"
 3778      6F77635F 
 3778      73746174 
 3778      6500
 3779              	.LASF129:
 3780 0abb 5F703573 		.ascii	"_p5s\000"
 3780      00
 3781              	.LASF222:
 3782 0ac0 706D635F 		.ascii	"pmc_enable_upll_clock\000"
 3782      656E6162 
 3782      6C655F75 
 3782      706C6C5F 
 3782      636C6F63 
 3783              	.LASF123:
 3784 0ad6 5F637572 		.ascii	"_current_category\000"
 3784      72656E74 
 3784      5F636174 
 3784      65676F72 
 3784      7900
 3785              	.LASF82:
 3786 0ae8 5F5F746D 		.ascii	"__tm_mday\000"
 3786      5F6D6461 
 3786      7900
 3787              	.LASF45:
 3788 0af2 504D435F 		.ascii	"PMC_WPSR\000"
 3788      57505352 
 3788      00
 3789              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
