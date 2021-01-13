ARM GAS  /tmp/ccTYR2Ee.s 			page 1


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
  12              		.file	"pmc.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.pmc_mck_set_prescaler,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	pmc_mck_set_prescaler
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	pmc_mck_set_prescaler, %function
  25              	pmc_mck_set_prescaler:
  26              	.LFB142:
  27              		.file 1 "../asf/sam/drivers/pmc/pmc.c"
   1:../asf/sam/drivers/pmc/pmc.c **** /**
   2:../asf/sam/drivers/pmc/pmc.c ****  * \file
   3:../asf/sam/drivers/pmc/pmc.c ****  *
   4:../asf/sam/drivers/pmc/pmc.c ****  * \brief Power Management Controller (PMC) driver for SAM.
   5:../asf/sam/drivers/pmc/pmc.c ****  *
   6:../asf/sam/drivers/pmc/pmc.c ****  * Copyright (c) 2011-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/pmc/pmc.c ****  *
   8:../asf/sam/drivers/pmc/pmc.c ****  * \asf_license_start
   9:../asf/sam/drivers/pmc/pmc.c ****  *
  10:../asf/sam/drivers/pmc/pmc.c ****  * \page License
  11:../asf/sam/drivers/pmc/pmc.c ****  *
  12:../asf/sam/drivers/pmc/pmc.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/pmc/pmc.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/pmc/pmc.c ****  *
  15:../asf/sam/drivers/pmc/pmc.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/pmc/pmc.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/pmc/pmc.c ****  *
  18:../asf/sam/drivers/pmc/pmc.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/pmc/pmc.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/pmc/pmc.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/pmc/pmc.c ****  *
  22:../asf/sam/drivers/pmc/pmc.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/pmc/pmc.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/pmc/pmc.c ****  *
  25:../asf/sam/drivers/pmc/pmc.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/pmc/pmc.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/pmc/pmc.c ****  *
  28:../asf/sam/drivers/pmc/pmc.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/pmc/pmc.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/pmc/pmc.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccTYR2Ee.s 			page 2


  31:../asf/sam/drivers/pmc/pmc.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/pmc/pmc.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/pmc/pmc.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/pmc/pmc.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/pmc/pmc.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/pmc/pmc.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/pmc/pmc.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/pmc/pmc.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/pmc/pmc.c ****  *
  40:../asf/sam/drivers/pmc/pmc.c ****  * \asf_license_stop
  41:../asf/sam/drivers/pmc/pmc.c ****  *
  42:../asf/sam/drivers/pmc/pmc.c ****  */
  43:../asf/sam/drivers/pmc/pmc.c **** /*
  44:../asf/sam/drivers/pmc/pmc.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/pmc/pmc.c ****  */
  46:../asf/sam/drivers/pmc/pmc.c **** 
  47:../asf/sam/drivers/pmc/pmc.c **** #include "pmc.h"
  48:../asf/sam/drivers/pmc/pmc.c **** 
  49:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3N)
  50:../asf/sam/drivers/pmc/pmc.c **** # define MAX_PERIPH_ID    31
  51:../asf/sam/drivers/pmc/pmc.c **** #elif (SAM3XA)
  52:../asf/sam/drivers/pmc/pmc.c **** # define MAX_PERIPH_ID    44
  53:../asf/sam/drivers/pmc/pmc.c **** #elif (SAM3U)
  54:../asf/sam/drivers/pmc/pmc.c **** # define MAX_PERIPH_ID    29
  55:../asf/sam/drivers/pmc/pmc.c **** #elif (SAM3S || SAM4S)
  56:../asf/sam/drivers/pmc/pmc.c **** # define MAX_PERIPH_ID    34
  57:../asf/sam/drivers/pmc/pmc.c **** #elif (SAM4E)
  58:../asf/sam/drivers/pmc/pmc.c **** # define MAX_PERIPH_ID    47
  59:../asf/sam/drivers/pmc/pmc.c **** #elif (SAMV71)
  60:../asf/sam/drivers/pmc/pmc.c **** # define MAX_PERIPH_ID    63
  61:../asf/sam/drivers/pmc/pmc.c **** #elif (SAMV70)
  62:../asf/sam/drivers/pmc/pmc.c **** # define MAX_PERIPH_ID    63
  63:../asf/sam/drivers/pmc/pmc.c **** #elif (SAME70)
  64:../asf/sam/drivers/pmc/pmc.c **** # define MAX_PERIPH_ID    63
  65:../asf/sam/drivers/pmc/pmc.c **** #elif (SAMS70)
  66:../asf/sam/drivers/pmc/pmc.c **** # define MAX_PERIPH_ID    63
  67:../asf/sam/drivers/pmc/pmc.c **** #elif (SAM4N)
  68:../asf/sam/drivers/pmc/pmc.c **** # define MAX_PERIPH_ID    31
  69:../asf/sam/drivers/pmc/pmc.c **** #elif (SAM4C || SAM4CM || SAM4CP)
  70:../asf/sam/drivers/pmc/pmc.c **** # define MAX_PERIPH_ID    43
  71:../asf/sam/drivers/pmc/pmc.c **** #elif (SAMG51)
  72:../asf/sam/drivers/pmc/pmc.c **** # define MAX_PERIPH_ID    47
  73:../asf/sam/drivers/pmc/pmc.c **** #elif (SAMG53)
  74:../asf/sam/drivers/pmc/pmc.c **** # define MAX_PERIPH_ID    47
  75:../asf/sam/drivers/pmc/pmc.c **** #elif (SAMG54)
  76:../asf/sam/drivers/pmc/pmc.c **** # define MAX_PERIPH_ID    47
  77:../asf/sam/drivers/pmc/pmc.c **** #elif (SAMG55)
  78:../asf/sam/drivers/pmc/pmc.c **** # define MAX_PERIPH_ID    50
  79:../asf/sam/drivers/pmc/pmc.c **** #endif
  80:../asf/sam/drivers/pmc/pmc.c **** 
  81:../asf/sam/drivers/pmc/pmc.c **** /// @cond 0
  82:../asf/sam/drivers/pmc/pmc.c **** /**INDENT-OFF**/
  83:../asf/sam/drivers/pmc/pmc.c **** #ifdef __cplusplus
  84:../asf/sam/drivers/pmc/pmc.c **** extern "C" {
  85:../asf/sam/drivers/pmc/pmc.c **** #endif
  86:../asf/sam/drivers/pmc/pmc.c **** /**INDENT-ON**/
  87:../asf/sam/drivers/pmc/pmc.c **** /// @endcond
ARM GAS  /tmp/ccTYR2Ee.s 			page 3


  88:../asf/sam/drivers/pmc/pmc.c **** 
  89:../asf/sam/drivers/pmc/pmc.c **** /**
  90:../asf/sam/drivers/pmc/pmc.c ****  * \defgroup sam_drivers_pmc_group Power Management Controller (PMC)
  91:../asf/sam/drivers/pmc/pmc.c ****  *
  92:../asf/sam/drivers/pmc/pmc.c ****  * \par Purpose
  93:../asf/sam/drivers/pmc/pmc.c ****  *
  94:../asf/sam/drivers/pmc/pmc.c ****  * The Power Management Controller (PMC) optimizes power consumption by
  95:../asf/sam/drivers/pmc/pmc.c ****  * controlling all system and user peripheral clocks. The PMC enables/disables
  96:../asf/sam/drivers/pmc/pmc.c ****  * the clock inputs to many of the peripherals and the Cortex-M Processor.
  97:../asf/sam/drivers/pmc/pmc.c ****  *
  98:../asf/sam/drivers/pmc/pmc.c ****  * @{
  99:../asf/sam/drivers/pmc/pmc.c ****  */
 100:../asf/sam/drivers/pmc/pmc.c **** 
 101:../asf/sam/drivers/pmc/pmc.c **** /**
 102:../asf/sam/drivers/pmc/pmc.c ****  * \brief Set the prescaler of the MCK.
 103:../asf/sam/drivers/pmc/pmc.c ****  *
 104:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_pres Prescaler value.
 105:../asf/sam/drivers/pmc/pmc.c ****  */
 106:../asf/sam/drivers/pmc/pmc.c **** void pmc_mck_set_prescaler(uint32_t ul_pres)
 107:../asf/sam/drivers/pmc/pmc.c **** {
  28              		.loc 1 107 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
 108:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR =
 109:../asf/sam/drivers/pmc/pmc.c **** 			(PMC->PMC_MCKR & (~PMC_MCKR_PRES_Msk)) | ul_pres;
  34              		.loc 1 109 0
  35 0000 0549     		ldr	r1, .L6
  36 0002 0B6B     		ldr	r3, [r1, #48]
 110:../asf/sam/drivers/pmc/pmc.c **** 	while (!(PMC->PMC_SR & PMC_SR_MCKRDY));
  37              		.loc 1 110 0
  38 0004 0A46     		mov	r2, r1
 109:../asf/sam/drivers/pmc/pmc.c **** 	while (!(PMC->PMC_SR & PMC_SR_MCKRDY));
  39              		.loc 1 109 0
  40 0006 23F07003 		bic	r3, r3, #112
  41 000a 1843     		orrs	r0, r0, r3
  42              	.LVL1:
 108:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR =
  43              		.loc 1 108 0
  44 000c 0863     		str	r0, [r1, #48]
  45              	.L2:
  46              		.loc 1 110 0 discriminator 1
  47 000e 936E     		ldr	r3, [r2, #104]
  48 0010 1B07     		lsls	r3, r3, #28
  49 0012 FCD5     		bpl	.L2
 111:../asf/sam/drivers/pmc/pmc.c **** }
  50              		.loc 1 111 0
  51 0014 7047     		bx	lr
  52              	.L7:
  53 0016 00BF     		.align	2
  54              	.L6:
  55 0018 00060E40 		.word	1074660864
  56              		.cfi_endproc
  57              	.LFE142:
  58              		.size	pmc_mck_set_prescaler, .-pmc_mck_set_prescaler
ARM GAS  /tmp/ccTYR2Ee.s 			page 4


  59              		.section	.text.pmc_mck_set_division,"ax",%progbits
  60              		.align	1
  61              		.p2align 2,,3
  62              		.global	pmc_mck_set_division
  63              		.syntax unified
  64              		.thumb
  65              		.thumb_func
  66              		.fpu fpv5-d16
  67              		.type	pmc_mck_set_division, %function
  68              	pmc_mck_set_division:
  69              	.LFB143:
 112:../asf/sam/drivers/pmc/pmc.c **** 
 113:../asf/sam/drivers/pmc/pmc.c **** #if SAMV71 || SAMV70 || SAME70 || SAMS70
 114:../asf/sam/drivers/pmc/pmc.c **** /**
 115:../asf/sam/drivers/pmc/pmc.c ****  * \brief Set the division of the MCK.
 116:../asf/sam/drivers/pmc/pmc.c ****  *
 117:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_div Division value.
 118:../asf/sam/drivers/pmc/pmc.c ****  */
 119:../asf/sam/drivers/pmc/pmc.c **** void pmc_mck_set_division(uint32_t ul_div)
 120:../asf/sam/drivers/pmc/pmc.c **** {
  70              		.loc 1 120 0
  71              		.cfi_startproc
  72              		@ args = 0, pretend = 0, frame = 0
  73              		@ frame_needed = 0, uses_anonymous_args = 0
  74              		@ link register save eliminated.
  75              	.LVL2:
  76 0000 0238     		subs	r0, r0, #2
  77              	.LVL3:
  78 0002 0228     		cmp	r0, #2
  79 0004 0DD8     		bhi	.L11
  80 0006 084B     		ldr	r3, .L14
  81 0008 53F82000 		ldr	r0, [r3, r0, lsl #2]
  82              	.LVL4:
  83              	.L9:
 121:../asf/sam/drivers/pmc/pmc.c **** 	switch (ul_div) {
 122:../asf/sam/drivers/pmc/pmc.c **** 		case 1:
 123:../asf/sam/drivers/pmc/pmc.c **** 			ul_div = PMC_MCKR_MDIV_EQ_PCK;
 124:../asf/sam/drivers/pmc/pmc.c **** 			break;
 125:../asf/sam/drivers/pmc/pmc.c **** 		case 2:
 126:../asf/sam/drivers/pmc/pmc.c **** 			ul_div = PMC_MCKR_MDIV_PCK_DIV2;
 127:../asf/sam/drivers/pmc/pmc.c **** 			break;
 128:../asf/sam/drivers/pmc/pmc.c **** 		case 3:
 129:../asf/sam/drivers/pmc/pmc.c **** 			ul_div = PMC_MCKR_MDIV_PCK_DIV3;
 130:../asf/sam/drivers/pmc/pmc.c **** 			break;
 131:../asf/sam/drivers/pmc/pmc.c **** 		case 4:
 132:../asf/sam/drivers/pmc/pmc.c **** 			ul_div = PMC_MCKR_MDIV_PCK_DIV4;
 133:../asf/sam/drivers/pmc/pmc.c **** 			break;
 134:../asf/sam/drivers/pmc/pmc.c **** 		default:
 135:../asf/sam/drivers/pmc/pmc.c **** 			ul_div = PMC_MCKR_MDIV_EQ_PCK;
 136:../asf/sam/drivers/pmc/pmc.c **** 			break;
 137:../asf/sam/drivers/pmc/pmc.c **** 	}
 138:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR =
 139:../asf/sam/drivers/pmc/pmc.c **** 			(PMC->PMC_MCKR & (~PMC_MCKR_MDIV_Msk)) | ul_div;
  84              		.loc 1 139 0
  85 000c 0749     		ldr	r1, .L14+4
  86 000e 0B6B     		ldr	r3, [r1, #48]
 140:../asf/sam/drivers/pmc/pmc.c **** 	while (!(PMC->PMC_SR & PMC_SR_MCKRDY));
ARM GAS  /tmp/ccTYR2Ee.s 			page 5


  87              		.loc 1 140 0
  88 0010 0A46     		mov	r2, r1
 139:../asf/sam/drivers/pmc/pmc.c **** 	while (!(PMC->PMC_SR & PMC_SR_MCKRDY));
  89              		.loc 1 139 0
  90 0012 23F44073 		bic	r3, r3, #768
  91 0016 0343     		orrs	r3, r3, r0
 138:../asf/sam/drivers/pmc/pmc.c **** 			(PMC->PMC_MCKR & (~PMC_MCKR_MDIV_Msk)) | ul_div;
  92              		.loc 1 138 0
  93 0018 0B63     		str	r3, [r1, #48]
  94              	.L10:
  95              		.loc 1 140 0 discriminator 1
  96 001a 936E     		ldr	r3, [r2, #104]
  97 001c 1B07     		lsls	r3, r3, #28
  98 001e FCD5     		bpl	.L10
 141:../asf/sam/drivers/pmc/pmc.c **** }
  99              		.loc 1 141 0
 100 0020 7047     		bx	lr
 101              	.LVL5:
 102              	.L11:
 120:../asf/sam/drivers/pmc/pmc.c **** 	switch (ul_div) {
 103              		.loc 1 120 0
 104 0022 0020     		movs	r0, #0
 105 0024 F2E7     		b	.L9
 106              	.L15:
 107 0026 00BF     		.align	2
 108              	.L14:
 109 0028 00000000 		.word	.LANCHOR0
 110 002c 00060E40 		.word	1074660864
 111              		.cfi_endproc
 112              	.LFE143:
 113              		.size	pmc_mck_set_division, .-pmc_mck_set_division
 114              		.section	.text.pmc_mck_set_source,"ax",%progbits
 115              		.align	1
 116              		.p2align 2,,3
 117              		.global	pmc_mck_set_source
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu fpv5-d16
 122              		.type	pmc_mck_set_source, %function
 123              	pmc_mck_set_source:
 124              	.LFB144:
 142:../asf/sam/drivers/pmc/pmc.c **** #endif
 143:../asf/sam/drivers/pmc/pmc.c **** 
 144:../asf/sam/drivers/pmc/pmc.c **** /**
 145:../asf/sam/drivers/pmc/pmc.c ****  * \brief Set the source of the MCK.
 146:../asf/sam/drivers/pmc/pmc.c ****  *
 147:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_source Source selection value.
 148:../asf/sam/drivers/pmc/pmc.c ****  */
 149:../asf/sam/drivers/pmc/pmc.c **** void pmc_mck_set_source(uint32_t ul_source)
 150:../asf/sam/drivers/pmc/pmc.c **** {
 125              		.loc 1 150 0
 126              		.cfi_startproc
 127              		@ args = 0, pretend = 0, frame = 0
 128              		@ frame_needed = 0, uses_anonymous_args = 0
 129              		@ link register save eliminated.
 130              	.LVL6:
ARM GAS  /tmp/ccTYR2Ee.s 			page 6


 151:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR =
 152:../asf/sam/drivers/pmc/pmc.c **** 			(PMC->PMC_MCKR & (~PMC_MCKR_CSS_Msk)) | ul_source;
 131              		.loc 1 152 0
 132 0000 0549     		ldr	r1, .L20
 133 0002 0B6B     		ldr	r3, [r1, #48]
 153:../asf/sam/drivers/pmc/pmc.c **** 	while (!(PMC->PMC_SR & PMC_SR_MCKRDY));
 134              		.loc 1 153 0
 135 0004 0A46     		mov	r2, r1
 152:../asf/sam/drivers/pmc/pmc.c **** 	while (!(PMC->PMC_SR & PMC_SR_MCKRDY));
 136              		.loc 1 152 0
 137 0006 23F00303 		bic	r3, r3, #3
 138 000a 1843     		orrs	r0, r0, r3
 139              	.LVL7:
 151:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR =
 140              		.loc 1 151 0
 141 000c 0863     		str	r0, [r1, #48]
 142              	.L17:
 143              		.loc 1 153 0 discriminator 1
 144 000e 936E     		ldr	r3, [r2, #104]
 145 0010 1B07     		lsls	r3, r3, #28
 146 0012 FCD5     		bpl	.L17
 154:../asf/sam/drivers/pmc/pmc.c **** }
 147              		.loc 1 154 0
 148 0014 7047     		bx	lr
 149              	.L21:
 150 0016 00BF     		.align	2
 151              	.L20:
 152 0018 00060E40 		.word	1074660864
 153              		.cfi_endproc
 154              	.LFE144:
 155              		.size	pmc_mck_set_source, .-pmc_mck_set_source
 156              		.section	.text.pmc_switch_mck_to_sclk,"ax",%progbits
 157              		.align	1
 158              		.p2align 2,,3
 159              		.global	pmc_switch_mck_to_sclk
 160              		.syntax unified
 161              		.thumb
 162              		.thumb_func
 163              		.fpu fpv5-d16
 164              		.type	pmc_switch_mck_to_sclk, %function
 165              	pmc_switch_mck_to_sclk:
 166              	.LFB145:
 155:../asf/sam/drivers/pmc/pmc.c **** 
 156:../asf/sam/drivers/pmc/pmc.c **** /**
 157:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch master clock source selection to slow clock.
 158:../asf/sam/drivers/pmc/pmc.c ****  *
 159:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_pres Processor clock prescaler.
 160:../asf/sam/drivers/pmc/pmc.c ****  *
 161:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
 162:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Timeout error.
 163:../asf/sam/drivers/pmc/pmc.c ****  */
 164:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_switch_mck_to_sclk(uint32_t ul_pres)
 165:../asf/sam/drivers/pmc/pmc.c **** {
 167              		.loc 1 165 0
 168              		.cfi_startproc
 169              		@ args = 0, pretend = 0, frame = 0
 170              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccTYR2Ee.s 			page 7


 171              		@ link register save eliminated.
 172              	.LVL8:
 166:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_timeout;
 167:../asf/sam/drivers/pmc/pmc.c **** 
 168:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR = (PMC->PMC_MCKR & (~PMC_MCKR_CSS_Msk)) |
 173              		.loc 1 168 0
 174 0000 1249     		ldr	r1, .L38
 175 0002 0B6B     		ldr	r3, [r1, #48]
 176 0004 23F00303 		bic	r3, r3, #3
 177 0008 0B63     		str	r3, [r1, #48]
 178              	.LVL9:
 169:../asf/sam/drivers/pmc/pmc.c **** 			PMC_MCKR_CSS_SLOW_CLK;
 170:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT; !(PMC->PMC_SR & PMC_SR_MCKRDY);
 179              		.loc 1 170 0
 180 000a 8B6E     		ldr	r3, [r1, #104]
 181 000c 1B07     		lsls	r3, r3, #28
 182 000e 07D4     		bmi	.L24
 183 0010 4FF48053 		mov	r3, #4096
 184 0014 01E0     		b	.L25
 185              	.LVL10:
 186              	.L27:
 171:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 172:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 187              		.loc 1 172 0
 188 0016 013B     		subs	r3, r3, #1
 189              	.LVL11:
 190 0018 15D0     		beq	.L29
 191              	.LVL12:
 192              	.L25:
 170:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 193              		.loc 1 170 0
 194 001a 8A6E     		ldr	r2, [r1, #104]
 195 001c 1207     		lsls	r2, r2, #28
 196 001e FAD5     		bpl	.L27
 197              	.LVL13:
 198              	.L24:
 173:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 174:../asf/sam/drivers/pmc/pmc.c **** 		}
 175:../asf/sam/drivers/pmc/pmc.c **** 	}
 176:../asf/sam/drivers/pmc/pmc.c **** 
 177:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR = (PMC->PMC_MCKR & (~PMC_MCKR_PRES_Msk)) | ul_pres;
 199              		.loc 1 177 0
 200 0020 0A49     		ldr	r1, .L38
 201 0022 0B6B     		ldr	r3, [r1, #48]
 202 0024 23F07003 		bic	r3, r3, #112
 203 0028 1843     		orrs	r0, r0, r3
 204              	.LVL14:
 205 002a 0863     		str	r0, [r1, #48]
 206              	.LVL15:
 178:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT; !(PMC->PMC_SR & PMC_SR_MCKRDY);
 207              		.loc 1 178 0
 208 002c 8B6E     		ldr	r3, [r1, #104]
 209 002e 1807     		lsls	r0, r3, #28
 210 0030 07D4     		bmi	.L37
 211 0032 4FF48053 		mov	r3, #4096
 212 0036 01E0     		b	.L30
 213              	.LVL16:
ARM GAS  /tmp/ccTYR2Ee.s 			page 8


 214              	.L31:
 179:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 180:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 215              		.loc 1 180 0
 216 0038 013B     		subs	r3, r3, #1
 217              	.LVL17:
 218 003a 04D0     		beq	.L29
 219              	.LVL18:
 220              	.L30:
 178:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT; !(PMC->PMC_SR & PMC_SR_MCKRDY);
 221              		.loc 1 178 0
 222 003c 8A6E     		ldr	r2, [r1, #104]
 223 003e 1207     		lsls	r2, r2, #28
 224 0040 FAD5     		bpl	.L31
 225              	.LVL19:
 226              	.L37:
 181:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 182:../asf/sam/drivers/pmc/pmc.c **** 		}
 183:../asf/sam/drivers/pmc/pmc.c **** 	}
 184:../asf/sam/drivers/pmc/pmc.c **** 
 185:../asf/sam/drivers/pmc/pmc.c **** 	return 0;
 227              		.loc 1 185 0
 228 0042 0020     		movs	r0, #0
 186:../asf/sam/drivers/pmc/pmc.c **** }
 229              		.loc 1 186 0
 230 0044 7047     		bx	lr
 231              	.L29:
 173:../asf/sam/drivers/pmc/pmc.c **** 		}
 232              		.loc 1 173 0
 233 0046 0120     		movs	r0, #1
 234 0048 7047     		bx	lr
 235              	.L39:
 236 004a 00BF     		.align	2
 237              	.L38:
 238 004c 00060E40 		.word	1074660864
 239              		.cfi_endproc
 240              	.LFE145:
 241              		.size	pmc_switch_mck_to_sclk, .-pmc_switch_mck_to_sclk
 242              		.section	.text.pmc_switch_mck_to_mainck,"ax",%progbits
 243              		.align	1
 244              		.p2align 2,,3
 245              		.global	pmc_switch_mck_to_mainck
 246              		.syntax unified
 247              		.thumb
 248              		.thumb_func
 249              		.fpu fpv5-d16
 250              		.type	pmc_switch_mck_to_mainck, %function
 251              	pmc_switch_mck_to_mainck:
 252              	.LFB146:
 187:../asf/sam/drivers/pmc/pmc.c **** 
 188:../asf/sam/drivers/pmc/pmc.c **** /**
 189:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch master clock source selection to main clock.
 190:../asf/sam/drivers/pmc/pmc.c ****  *
 191:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_pres Processor clock prescaler.
 192:../asf/sam/drivers/pmc/pmc.c ****  *
 193:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
 194:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Timeout error.
ARM GAS  /tmp/ccTYR2Ee.s 			page 9


 195:../asf/sam/drivers/pmc/pmc.c ****  */
 196:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_switch_mck_to_mainck(uint32_t ul_pres)
 197:../asf/sam/drivers/pmc/pmc.c **** {
 253              		.loc 1 197 0
 254              		.cfi_startproc
 255              		@ args = 0, pretend = 0, frame = 0
 256              		@ frame_needed = 0, uses_anonymous_args = 0
 257              		@ link register save eliminated.
 258              	.LVL20:
 198:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_timeout;
 199:../asf/sam/drivers/pmc/pmc.c **** 
 200:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR = (PMC->PMC_MCKR & (~PMC_MCKR_CSS_Msk)) |
 259              		.loc 1 200 0
 260 0000 1349     		ldr	r1, .L56
 261 0002 0B6B     		ldr	r3, [r1, #48]
 262 0004 23F00303 		bic	r3, r3, #3
 263 0008 43F00103 		orr	r3, r3, #1
 264 000c 0B63     		str	r3, [r1, #48]
 265              	.LVL21:
 201:../asf/sam/drivers/pmc/pmc.c **** 			PMC_MCKR_CSS_MAIN_CLK;
 202:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT; !(PMC->PMC_SR & PMC_SR_MCKRDY);
 266              		.loc 1 202 0
 267 000e 8B6E     		ldr	r3, [r1, #104]
 268 0010 1B07     		lsls	r3, r3, #28
 269 0012 07D4     		bmi	.L42
 270 0014 4FF48053 		mov	r3, #4096
 271 0018 01E0     		b	.L43
 272              	.LVL22:
 273              	.L45:
 203:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 204:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 274              		.loc 1 204 0
 275 001a 013B     		subs	r3, r3, #1
 276              	.LVL23:
 277 001c 15D0     		beq	.L47
 278              	.LVL24:
 279              	.L43:
 202:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 280              		.loc 1 202 0
 281 001e 8A6E     		ldr	r2, [r1, #104]
 282 0020 1207     		lsls	r2, r2, #28
 283 0022 FAD5     		bpl	.L45
 284              	.LVL25:
 285              	.L42:
 205:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 206:../asf/sam/drivers/pmc/pmc.c **** 		}
 207:../asf/sam/drivers/pmc/pmc.c **** 	}
 208:../asf/sam/drivers/pmc/pmc.c **** 
 209:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR = (PMC->PMC_MCKR & (~PMC_MCKR_PRES_Msk)) | ul_pres;
 286              		.loc 1 209 0
 287 0024 0A49     		ldr	r1, .L56
 288 0026 0B6B     		ldr	r3, [r1, #48]
 289 0028 23F07003 		bic	r3, r3, #112
 290 002c 1843     		orrs	r0, r0, r3
 291              	.LVL26:
 292 002e 0863     		str	r0, [r1, #48]
 293              	.LVL27:
ARM GAS  /tmp/ccTYR2Ee.s 			page 10


 210:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT; !(PMC->PMC_SR & PMC_SR_MCKRDY);
 294              		.loc 1 210 0
 295 0030 8B6E     		ldr	r3, [r1, #104]
 296 0032 1807     		lsls	r0, r3, #28
 297 0034 07D4     		bmi	.L55
 298 0036 4FF48053 		mov	r3, #4096
 299 003a 01E0     		b	.L48
 300              	.LVL28:
 301              	.L49:
 211:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 212:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 302              		.loc 1 212 0
 303 003c 013B     		subs	r3, r3, #1
 304              	.LVL29:
 305 003e 04D0     		beq	.L47
 306              	.LVL30:
 307              	.L48:
 210:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT; !(PMC->PMC_SR & PMC_SR_MCKRDY);
 308              		.loc 1 210 0
 309 0040 8A6E     		ldr	r2, [r1, #104]
 310 0042 1207     		lsls	r2, r2, #28
 311 0044 FAD5     		bpl	.L49
 312              	.LVL31:
 313              	.L55:
 213:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 214:../asf/sam/drivers/pmc/pmc.c **** 		}
 215:../asf/sam/drivers/pmc/pmc.c **** 	}
 216:../asf/sam/drivers/pmc/pmc.c **** 
 217:../asf/sam/drivers/pmc/pmc.c **** 	return 0;
 314              		.loc 1 217 0
 315 0046 0020     		movs	r0, #0
 218:../asf/sam/drivers/pmc/pmc.c **** }
 316              		.loc 1 218 0
 317 0048 7047     		bx	lr
 318              	.L47:
 205:../asf/sam/drivers/pmc/pmc.c **** 		}
 319              		.loc 1 205 0
 320 004a 0120     		movs	r0, #1
 321 004c 7047     		bx	lr
 322              	.L57:
 323 004e 00BF     		.align	2
 324              	.L56:
 325 0050 00060E40 		.word	1074660864
 326              		.cfi_endproc
 327              	.LFE146:
 328              		.size	pmc_switch_mck_to_mainck, .-pmc_switch_mck_to_mainck
 329              		.section	.text.pmc_switch_mck_to_pllack,"ax",%progbits
 330              		.align	1
 331              		.p2align 2,,3
 332              		.global	pmc_switch_mck_to_pllack
 333              		.syntax unified
 334              		.thumb
 335              		.thumb_func
 336              		.fpu fpv5-d16
 337              		.type	pmc_switch_mck_to_pllack, %function
 338              	pmc_switch_mck_to_pllack:
 339              	.LFB147:
ARM GAS  /tmp/ccTYR2Ee.s 			page 11


 219:../asf/sam/drivers/pmc/pmc.c **** 
 220:../asf/sam/drivers/pmc/pmc.c **** /**
 221:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch master clock source selection to PLLA clock.
 222:../asf/sam/drivers/pmc/pmc.c ****  *
 223:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_pres Processor clock prescaler.
 224:../asf/sam/drivers/pmc/pmc.c ****  *
 225:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
 226:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Timeout error.
 227:../asf/sam/drivers/pmc/pmc.c ****  */
 228:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_switch_mck_to_pllack(uint32_t ul_pres)
 229:../asf/sam/drivers/pmc/pmc.c **** {
 340              		.loc 1 229 0
 341              		.cfi_startproc
 342              		@ args = 0, pretend = 0, frame = 0
 343              		@ frame_needed = 0, uses_anonymous_args = 0
 344              		@ link register save eliminated.
 345              	.LVL32:
 230:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_timeout;
 231:../asf/sam/drivers/pmc/pmc.c **** 
 232:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR = (PMC->PMC_MCKR & (~PMC_MCKR_PRES_Msk)) | ul_pres;
 346              		.loc 1 232 0
 347 0000 1349     		ldr	r1, .L74
 348 0002 0B6B     		ldr	r3, [r1, #48]
 349 0004 23F07003 		bic	r3, r3, #112
 350 0008 1843     		orrs	r0, r0, r3
 351              	.LVL33:
 352 000a 0863     		str	r0, [r1, #48]
 353              	.LVL34:
 233:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT; !(PMC->PMC_SR & PMC_SR_MCKRDY);
 354              		.loc 1 233 0
 355 000c 8B6E     		ldr	r3, [r1, #104]
 356 000e 1807     		lsls	r0, r3, #28
 357 0010 07D4     		bmi	.L60
 358 0012 4FF48053 		mov	r3, #4096
 359 0016 01E0     		b	.L61
 360              	.LVL35:
 361              	.L63:
 234:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 235:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 362              		.loc 1 235 0
 363 0018 013B     		subs	r3, r3, #1
 364              	.LVL36:
 365 001a 16D0     		beq	.L65
 366              	.LVL37:
 367              	.L61:
 233:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT; !(PMC->PMC_SR & PMC_SR_MCKRDY);
 368              		.loc 1 233 0
 369 001c 8A6E     		ldr	r2, [r1, #104]
 370 001e 1207     		lsls	r2, r2, #28
 371 0020 FAD5     		bpl	.L63
 372              	.LVL38:
 373              	.L60:
 236:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 237:../asf/sam/drivers/pmc/pmc.c **** 		}
 238:../asf/sam/drivers/pmc/pmc.c **** 	}
 239:../asf/sam/drivers/pmc/pmc.c **** 
 240:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR = (PMC->PMC_MCKR & (~PMC_MCKR_CSS_Msk)) |
ARM GAS  /tmp/ccTYR2Ee.s 			page 12


 374              		.loc 1 240 0
 375 0022 0B49     		ldr	r1, .L74
 376 0024 0B6B     		ldr	r3, [r1, #48]
 377 0026 23F00303 		bic	r3, r3, #3
 378 002a 43F00203 		orr	r3, r3, #2
 379 002e 0B63     		str	r3, [r1, #48]
 380              	.LVL39:
 241:../asf/sam/drivers/pmc/pmc.c **** 			PMC_MCKR_CSS_PLLA_CLK;
 242:../asf/sam/drivers/pmc/pmc.c **** 
 243:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT; !(PMC->PMC_SR & PMC_SR_MCKRDY);
 381              		.loc 1 243 0
 382 0030 8B6E     		ldr	r3, [r1, #104]
 383 0032 1807     		lsls	r0, r3, #28
 384 0034 07D4     		bmi	.L73
 385 0036 4FF48053 		mov	r3, #4096
 386 003a 01E0     		b	.L66
 387              	.LVL40:
 388              	.L67:
 244:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 245:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 389              		.loc 1 245 0
 390 003c 013B     		subs	r3, r3, #1
 391              	.LVL41:
 392 003e 04D0     		beq	.L65
 393              	.LVL42:
 394              	.L66:
 243:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 395              		.loc 1 243 0
 396 0040 8A6E     		ldr	r2, [r1, #104]
 397 0042 1207     		lsls	r2, r2, #28
 398 0044 FAD5     		bpl	.L67
 399              	.LVL43:
 400              	.L73:
 246:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 247:../asf/sam/drivers/pmc/pmc.c **** 		}
 248:../asf/sam/drivers/pmc/pmc.c **** 	}
 249:../asf/sam/drivers/pmc/pmc.c **** 
 250:../asf/sam/drivers/pmc/pmc.c **** 	return 0;
 401              		.loc 1 250 0
 402 0046 0020     		movs	r0, #0
 251:../asf/sam/drivers/pmc/pmc.c **** }
 403              		.loc 1 251 0
 404 0048 7047     		bx	lr
 405              	.L65:
 236:../asf/sam/drivers/pmc/pmc.c **** 		}
 406              		.loc 1 236 0
 407 004a 0120     		movs	r0, #1
 408 004c 7047     		bx	lr
 409              	.L75:
 410 004e 00BF     		.align	2
 411              	.L74:
 412 0050 00060E40 		.word	1074660864
 413              		.cfi_endproc
 414              	.LFE147:
 415              		.size	pmc_switch_mck_to_pllack, .-pmc_switch_mck_to_pllack
 416              		.section	.text.pmc_switch_mck_to_upllck,"ax",%progbits
 417              		.align	1
ARM GAS  /tmp/ccTYR2Ee.s 			page 13


 418              		.p2align 2,,3
 419              		.global	pmc_switch_mck_to_upllck
 420              		.syntax unified
 421              		.thumb
 422              		.thumb_func
 423              		.fpu fpv5-d16
 424              		.type	pmc_switch_mck_to_upllck, %function
 425              	pmc_switch_mck_to_upllck:
 426              	.LFB148:
 252:../asf/sam/drivers/pmc/pmc.c **** 
 253:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3S || SAM4S || SAM4C || SAM4CM || SAM4CP || SAMG55)
 254:../asf/sam/drivers/pmc/pmc.c **** /**
 255:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch master clock source selection to PLLB clock.
 256:../asf/sam/drivers/pmc/pmc.c ****  *
 257:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_pres Processor clock prescaler.
 258:../asf/sam/drivers/pmc/pmc.c ****  *
 259:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
 260:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Timeout error.
 261:../asf/sam/drivers/pmc/pmc.c ****  */
 262:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_switch_mck_to_pllbck(uint32_t ul_pres)
 263:../asf/sam/drivers/pmc/pmc.c **** {
 264:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_timeout;
 265:../asf/sam/drivers/pmc/pmc.c **** 
 266:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR = (PMC->PMC_MCKR & (~PMC_MCKR_PRES_Msk)) | ul_pres;
 267:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT; !(PMC->PMC_SR & PMC_SR_MCKRDY);
 268:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 269:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 270:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 271:../asf/sam/drivers/pmc/pmc.c **** 		}
 272:../asf/sam/drivers/pmc/pmc.c **** 	}
 273:../asf/sam/drivers/pmc/pmc.c **** 
 274:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR = (PMC->PMC_MCKR & (~PMC_MCKR_CSS_Msk)) |
 275:../asf/sam/drivers/pmc/pmc.c **** 			PMC_MCKR_CSS_PLLB_CLK;
 276:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT; !(PMC->PMC_SR & PMC_SR_MCKRDY);
 277:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 278:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 279:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 280:../asf/sam/drivers/pmc/pmc.c **** 		}
 281:../asf/sam/drivers/pmc/pmc.c **** 	}
 282:../asf/sam/drivers/pmc/pmc.c **** 
 283:../asf/sam/drivers/pmc/pmc.c **** 	return 0;
 284:../asf/sam/drivers/pmc/pmc.c **** }
 285:../asf/sam/drivers/pmc/pmc.c **** #endif
 286:../asf/sam/drivers/pmc/pmc.c **** 
 287:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3XA || SAM3U || SAMV71 || SAMV70 || SAME70 || SAMS70)
 288:../asf/sam/drivers/pmc/pmc.c **** /**
 289:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch master clock source selection to UPLL clock.
 290:../asf/sam/drivers/pmc/pmc.c ****  *
 291:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_pres Processor clock prescaler.
 292:../asf/sam/drivers/pmc/pmc.c ****  *
 293:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
 294:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Timeout error.
 295:../asf/sam/drivers/pmc/pmc.c ****  */
 296:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_switch_mck_to_upllck(uint32_t ul_pres)
 297:../asf/sam/drivers/pmc/pmc.c **** {
 427              		.loc 1 297 0
 428              		.cfi_startproc
ARM GAS  /tmp/ccTYR2Ee.s 			page 14


 429              		@ args = 0, pretend = 0, frame = 0
 430              		@ frame_needed = 0, uses_anonymous_args = 0
 431              		@ link register save eliminated.
 432              	.LVL44:
 298:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_timeout;
 299:../asf/sam/drivers/pmc/pmc.c **** 
 300:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR = (PMC->PMC_MCKR & (~PMC_MCKR_PRES_Msk)) | ul_pres;
 433              		.loc 1 300 0
 434 0000 1249     		ldr	r1, .L92
 435 0002 0B6B     		ldr	r3, [r1, #48]
 436 0004 23F07003 		bic	r3, r3, #112
 437 0008 1843     		orrs	r0, r0, r3
 438              	.LVL45:
 439 000a 0863     		str	r0, [r1, #48]
 440              	.LVL46:
 301:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT; !(PMC->PMC_SR & PMC_SR_MCKRDY);
 441              		.loc 1 301 0
 442 000c 8B6E     		ldr	r3, [r1, #104]
 443 000e 1807     		lsls	r0, r3, #28
 444 0010 07D4     		bmi	.L78
 445 0012 4FF48053 		mov	r3, #4096
 446 0016 01E0     		b	.L79
 447              	.LVL47:
 448              	.L81:
 302:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 303:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 449              		.loc 1 303 0
 450 0018 013B     		subs	r3, r3, #1
 451              	.LVL48:
 452 001a 14D0     		beq	.L83
 453              	.LVL49:
 454              	.L79:
 301:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT; !(PMC->PMC_SR & PMC_SR_MCKRDY);
 455              		.loc 1 301 0
 456 001c 8A6E     		ldr	r2, [r1, #104]
 457 001e 1207     		lsls	r2, r2, #28
 458 0020 FAD5     		bpl	.L81
 459              	.LVL50:
 460              	.L78:
 304:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 305:../asf/sam/drivers/pmc/pmc.c **** 		}
 306:../asf/sam/drivers/pmc/pmc.c **** 	}
 307:../asf/sam/drivers/pmc/pmc.c **** 
 308:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR = (PMC->PMC_MCKR & (~PMC_MCKR_CSS_Msk)) |
 461              		.loc 1 308 0
 462 0022 0A49     		ldr	r1, .L92
 463 0024 0B6B     		ldr	r3, [r1, #48]
 464 0026 43F00303 		orr	r3, r3, #3
 465 002a 0B63     		str	r3, [r1, #48]
 466              	.LVL51:
 309:../asf/sam/drivers/pmc/pmc.c **** 			PMC_MCKR_CSS_UPLL_CLK;
 310:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT; !(PMC->PMC_SR & PMC_SR_MCKRDY);
 467              		.loc 1 310 0
 468 002c 8B6E     		ldr	r3, [r1, #104]
 469 002e 1807     		lsls	r0, r3, #28
 470 0030 07D4     		bmi	.L91
 471 0032 4FF48053 		mov	r3, #4096
ARM GAS  /tmp/ccTYR2Ee.s 			page 15


 472 0036 01E0     		b	.L84
 473              	.LVL52:
 474              	.L85:
 311:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 312:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 475              		.loc 1 312 0
 476 0038 013B     		subs	r3, r3, #1
 477              	.LVL53:
 478 003a 04D0     		beq	.L83
 479              	.LVL54:
 480              	.L84:
 310:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 481              		.loc 1 310 0
 482 003c 8A6E     		ldr	r2, [r1, #104]
 483 003e 1207     		lsls	r2, r2, #28
 484 0040 FAD5     		bpl	.L85
 485              	.LVL55:
 486              	.L91:
 313:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 314:../asf/sam/drivers/pmc/pmc.c **** 		}
 315:../asf/sam/drivers/pmc/pmc.c **** 	}
 316:../asf/sam/drivers/pmc/pmc.c **** 
 317:../asf/sam/drivers/pmc/pmc.c **** 	return 0;
 487              		.loc 1 317 0
 488 0042 0020     		movs	r0, #0
 318:../asf/sam/drivers/pmc/pmc.c **** }
 489              		.loc 1 318 0
 490 0044 7047     		bx	lr
 491              	.L83:
 304:../asf/sam/drivers/pmc/pmc.c **** 		}
 492              		.loc 1 304 0
 493 0046 0120     		movs	r0, #1
 494 0048 7047     		bx	lr
 495              	.L93:
 496 004a 00BF     		.align	2
 497              	.L92:
 498 004c 00060E40 		.word	1074660864
 499              		.cfi_endproc
 500              	.LFE148:
 501              		.size	pmc_switch_mck_to_upllck, .-pmc_switch_mck_to_upllck
 502              		.section	.text.pmc_switch_sclk_to_32kxtal,"ax",%progbits
 503              		.align	1
 504              		.p2align 2,,3
 505              		.global	pmc_switch_sclk_to_32kxtal
 506              		.syntax unified
 507              		.thumb
 508              		.thumb_func
 509              		.fpu fpv5-d16
 510              		.type	pmc_switch_sclk_to_32kxtal, %function
 511              	pmc_switch_sclk_to_32kxtal:
 512              	.LFB149:
 319:../asf/sam/drivers/pmc/pmc.c **** #endif
 320:../asf/sam/drivers/pmc/pmc.c **** 
 321:../asf/sam/drivers/pmc/pmc.c **** /**
 322:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch slow clock source selection to external 32k (Xtal or Bypass).
 323:../asf/sam/drivers/pmc/pmc.c ****  *
 324:../asf/sam/drivers/pmc/pmc.c ****  * \note Switching SCLK back to 32krc is only possible by shutting down the
ARM GAS  /tmp/ccTYR2Ee.s 			page 16


 325:../asf/sam/drivers/pmc/pmc.c ****  *       VDDIO power supply.
 326:../asf/sam/drivers/pmc/pmc.c ****  *
 327:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_bypass 0 for Xtal, 1 for bypass.
 328:../asf/sam/drivers/pmc/pmc.c ****  */
 329:../asf/sam/drivers/pmc/pmc.c **** void pmc_switch_sclk_to_32kxtal(uint32_t ul_bypass)
 330:../asf/sam/drivers/pmc/pmc.c **** {
 513              		.loc 1 330 0
 514              		.cfi_startproc
 515              		@ args = 0, pretend = 0, frame = 0
 516              		@ frame_needed = 0, uses_anonymous_args = 0
 517              		@ link register save eliminated.
 518              	.LVL56:
 331:../asf/sam/drivers/pmc/pmc.c **** 	/* Set Bypass mode if required */
 332:../asf/sam/drivers/pmc/pmc.c **** 	if (ul_bypass == 1) {
 519              		.loc 1 332 0
 520 0000 0128     		cmp	r0, #1
 521 0002 04D1     		bne	.L95
 333:../asf/sam/drivers/pmc/pmc.c **** 		SUPC->SUPC_MR |= SUPC_MR_KEY_PASSWD |
 522              		.loc 1 333 0
 523 0004 044A     		ldr	r2, .L96
 524 0006 054B     		ldr	r3, .L96+4
 525 0008 9168     		ldr	r1, [r2, #8]
 526 000a 0B43     		orrs	r3, r3, r1
 527 000c 9360     		str	r3, [r2, #8]
 528              	.L95:
 334:../asf/sam/drivers/pmc/pmc.c **** 			SUPC_MR_OSCBYPASS;
 335:../asf/sam/drivers/pmc/pmc.c **** 	}
 336:../asf/sam/drivers/pmc/pmc.c **** 
 337:../asf/sam/drivers/pmc/pmc.c **** 	SUPC->SUPC_CR = SUPC_CR_KEY_PASSWD | SUPC_CR_XTALSEL;
 529              		.loc 1 337 0
 530 000e 024B     		ldr	r3, .L96
 531 0010 034A     		ldr	r2, .L96+8
 532 0012 1A60     		str	r2, [r3]
 533 0014 7047     		bx	lr
 534              	.L97:
 535 0016 00BF     		.align	2
 536              	.L96:
 537 0018 10180E40 		.word	1074665488
 538 001c 000010A5 		.word	-1525678080
 539 0020 080000A5 		.word	-1526726648
 540              		.cfi_endproc
 541              	.LFE149:
 542              		.size	pmc_switch_sclk_to_32kxtal, .-pmc_switch_sclk_to_32kxtal
 543              		.section	.text.pmc_osc_is_ready_32kxtal,"ax",%progbits
 544              		.align	1
 545              		.p2align 2,,3
 546              		.global	pmc_osc_is_ready_32kxtal
 547              		.syntax unified
 548              		.thumb
 549              		.thumb_func
 550              		.fpu fpv5-d16
 551              		.type	pmc_osc_is_ready_32kxtal, %function
 552              	pmc_osc_is_ready_32kxtal:
 553              	.LFB150:
 338:../asf/sam/drivers/pmc/pmc.c **** }
 339:../asf/sam/drivers/pmc/pmc.c **** 
 340:../asf/sam/drivers/pmc/pmc.c **** /**
ARM GAS  /tmp/ccTYR2Ee.s 			page 17


 341:../asf/sam/drivers/pmc/pmc.c ****  * \brief Check if the external 32k Xtal is ready.
 342:../asf/sam/drivers/pmc/pmc.c ****  *
 343:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 External 32k Xtal is ready.
 344:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 External 32k Xtal is not ready.
 345:../asf/sam/drivers/pmc/pmc.c ****  */
 346:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_osc_is_ready_32kxtal(void)
 347:../asf/sam/drivers/pmc/pmc.c **** {
 554              		.loc 1 347 0
 555              		.cfi_startproc
 556              		@ args = 0, pretend = 0, frame = 0
 557              		@ frame_needed = 0, uses_anonymous_args = 0
 558              		@ link register save eliminated.
 348:../asf/sam/drivers/pmc/pmc.c **** 	return ((SUPC->SUPC_SR & SUPC_SR_OSCSEL)
 559              		.loc 1 348 0
 560 0000 054B     		ldr	r3, .L101
 561 0002 5869     		ldr	r0, [r3, #20]
 349:../asf/sam/drivers/pmc/pmc.c **** 			&& (PMC->PMC_SR & PMC_SR_OSCSELS));
 562              		.loc 1 349 0
 563 0004 10F08000 		ands	r0, r0, #128
 564 0008 05D0     		beq	.L99
 565              		.loc 1 349 0 is_stmt 0 discriminator 1
 566 000a A3F59053 		sub	r3, r3, #4608
 567 000e 103B     		subs	r3, r3, #16
 568 0010 986E     		ldr	r0, [r3, #104]
 569 0012 C0F3C010 		ubfx	r0, r0, #7, #1
 570              	.L99:
 350:../asf/sam/drivers/pmc/pmc.c **** }
 571              		.loc 1 350 0 is_stmt 1 discriminator 6
 572 0016 7047     		bx	lr
 573              	.L102:
 574              		.align	2
 575              	.L101:
 576 0018 10180E40 		.word	1074665488
 577              		.cfi_endproc
 578              	.LFE150:
 579              		.size	pmc_osc_is_ready_32kxtal, .-pmc_osc_is_ready_32kxtal
 580              		.section	.text.pmc_switch_mainck_to_fastrc,"ax",%progbits
 581              		.align	1
 582              		.p2align 2,,3
 583              		.global	pmc_switch_mainck_to_fastrc
 584              		.syntax unified
 585              		.thumb
 586              		.thumb_func
 587              		.fpu fpv5-d16
 588              		.type	pmc_switch_mainck_to_fastrc, %function
 589              	pmc_switch_mainck_to_fastrc:
 590              	.LFB151:
 351:../asf/sam/drivers/pmc/pmc.c **** 
 352:../asf/sam/drivers/pmc/pmc.c **** /**
 353:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch main clock source selection to internal fast RC.
 354:../asf/sam/drivers/pmc/pmc.c ****  *
 355:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_moscrcf Fast RC oscillator(4/8/12Mhz).
 356:../asf/sam/drivers/pmc/pmc.c ****  *
 357:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
 358:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Timeout error.
 359:../asf/sam/drivers/pmc/pmc.c ****  * \retval 2 Invalid frequency.
 360:../asf/sam/drivers/pmc/pmc.c ****  */
ARM GAS  /tmp/ccTYR2Ee.s 			page 18


 361:../asf/sam/drivers/pmc/pmc.c **** void pmc_switch_mainck_to_fastrc(uint32_t ul_moscrcf)
 362:../asf/sam/drivers/pmc/pmc.c **** {
 591              		.loc 1 362 0
 592              		.cfi_startproc
 593              		@ args = 0, pretend = 0, frame = 0
 594              		@ frame_needed = 0, uses_anonymous_args = 0
 595              		@ link register save eliminated.
 596              	.LVL57:
 363:../asf/sam/drivers/pmc/pmc.c **** 	/* Enable Fast RC oscillator but DO NOT switch to RC now */
 364:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_MOR |= (CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCRCEN);
 597              		.loc 1 364 0
 598 0000 0E4A     		ldr	r2, .L111
 362:../asf/sam/drivers/pmc/pmc.c **** 	/* Enable Fast RC oscillator but DO NOT switch to RC now */
 599              		.loc 1 362 0
 600 0002 10B4     		push	{r4}
 601              		.cfi_def_cfa_offset 4
 602              		.cfi_offset 4, -4
 603              		.loc 1 364 0
 604 0004 136A     		ldr	r3, [r2, #32]
 365:../asf/sam/drivers/pmc/pmc.c **** 
 366:../asf/sam/drivers/pmc/pmc.c **** 	/* Wait the Fast RC to stabilize */
 367:../asf/sam/drivers/pmc/pmc.c **** 	while (!(PMC->PMC_SR & PMC_SR_MOSCRCS));
 605              		.loc 1 367 0
 606 0006 1146     		mov	r1, r2
 364:../asf/sam/drivers/pmc/pmc.c **** 
 607              		.loc 1 364 0
 608 0008 0D4C     		ldr	r4, .L111+4
 609 000a 1C43     		orrs	r4, r4, r3
 610 000c 1462     		str	r4, [r2, #32]
 611              	.L104:
 612              		.loc 1 367 0 discriminator 1
 613 000e 8B6E     		ldr	r3, [r1, #104]
 614 0010 9A03     		lsls	r2, r3, #14
 615 0012 FCD5     		bpl	.L104
 368:../asf/sam/drivers/pmc/pmc.c **** 
 369:../asf/sam/drivers/pmc/pmc.c **** 	/* Change Fast RC oscillator frequency */
 370:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCRCF_Msk) |
 616              		.loc 1 370 0
 617 0014 0C6A     		ldr	r4, [r1, #32]
 618 0016 0B4B     		ldr	r3, .L111+8
 371:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_MOR_KEY_PASSWD | ul_moscrcf;
 372:../asf/sam/drivers/pmc/pmc.c **** 
 373:../asf/sam/drivers/pmc/pmc.c **** 	/* Wait the Fast RC to stabilize */
 374:../asf/sam/drivers/pmc/pmc.c **** 	while (!(PMC->PMC_SR & PMC_SR_MOSCRCS));
 619              		.loc 1 374 0
 620 0018 084A     		ldr	r2, .L111
 370:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_MOR_KEY_PASSWD | ul_moscrcf;
 621              		.loc 1 370 0
 622 001a 2340     		ands	r3, r3, r4
 371:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_MOR_KEY_PASSWD | ul_moscrcf;
 623              		.loc 1 371 0
 624 001c 43F45C13 		orr	r3, r3, #3604480
 625 0020 1843     		orrs	r0, r0, r3
 626              	.LVL58:
 370:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_MOR_KEY_PASSWD | ul_moscrcf;
 627              		.loc 1 370 0
 628 0022 0862     		str	r0, [r1, #32]
ARM GAS  /tmp/ccTYR2Ee.s 			page 19


 629              	.L105:
 630              		.loc 1 374 0 discriminator 1
 631 0024 936E     		ldr	r3, [r2, #104]
 632 0026 9B03     		lsls	r3, r3, #14
 633 0028 FCD5     		bpl	.L105
 375:../asf/sam/drivers/pmc/pmc.c **** 
 376:../asf/sam/drivers/pmc/pmc.c **** 	/* Switch to Fast RC */
 377:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCSEL) |
 634              		.loc 1 377 0
 635 002a 116A     		ldr	r1, [r2, #32]
 636 002c 064B     		ldr	r3, .L111+12
 378:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_MOR_KEY_PASSWD;
 379:../asf/sam/drivers/pmc/pmc.c **** }
 637              		.loc 1 379 0
 638 002e 5DF8044B 		ldr	r4, [sp], #4
 639              		.cfi_restore 4
 640              		.cfi_def_cfa_offset 0
 377:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_MOR_KEY_PASSWD;
 641              		.loc 1 377 0
 642 0032 0B40     		ands	r3, r3, r1
 643 0034 43F45C13 		orr	r3, r3, #3604480
 644 0038 1362     		str	r3, [r2, #32]
 645              		.loc 1 379 0
 646 003a 7047     		bx	lr
 647              	.L112:
 648              		.align	2
 649              	.L111:
 650 003c 00060E40 		.word	1074660864
 651 0040 08003700 		.word	3604488
 652 0044 8FFFC8FF 		.word	-3604593
 653 0048 FFFFC8FE 		.word	-20381697
 654              		.cfi_endproc
 655              	.LFE151:
 656              		.size	pmc_switch_mainck_to_fastrc, .-pmc_switch_mainck_to_fastrc
 657              		.section	.text.pmc_osc_enable_fastrc,"ax",%progbits
 658              		.align	1
 659              		.p2align 2,,3
 660              		.global	pmc_osc_enable_fastrc
 661              		.syntax unified
 662              		.thumb
 663              		.thumb_func
 664              		.fpu fpv5-d16
 665              		.type	pmc_osc_enable_fastrc, %function
 666              	pmc_osc_enable_fastrc:
 667              	.LFB152:
 380:../asf/sam/drivers/pmc/pmc.c **** 
 381:../asf/sam/drivers/pmc/pmc.c **** /**
 382:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable fast RC oscillator.
 383:../asf/sam/drivers/pmc/pmc.c ****  *
 384:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_rc Fast RC oscillator(4/8/12Mhz).
 385:../asf/sam/drivers/pmc/pmc.c ****  */
 386:../asf/sam/drivers/pmc/pmc.c **** void pmc_osc_enable_fastrc(uint32_t ul_rc)
 387:../asf/sam/drivers/pmc/pmc.c **** {
 668              		.loc 1 387 0
 669              		.cfi_startproc
 670              		@ args = 0, pretend = 0, frame = 0
 671              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccTYR2Ee.s 			page 20


 672              		@ link register save eliminated.
 673              	.LVL59:
 388:../asf/sam/drivers/pmc/pmc.c **** 	/* Enable Fast RC oscillator but DO NOT switch to RC */
 389:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_MOR |= (CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCRCEN);
 674              		.loc 1 389 0
 675 0000 0B49     		ldr	r1, .L121
 387:../asf/sam/drivers/pmc/pmc.c **** 	/* Enable Fast RC oscillator but DO NOT switch to RC */
 676              		.loc 1 387 0
 677 0002 10B4     		push	{r4}
 678              		.cfi_def_cfa_offset 4
 679              		.cfi_offset 4, -4
 680              		.loc 1 389 0
 681 0004 0B6A     		ldr	r3, [r1, #32]
 390:../asf/sam/drivers/pmc/pmc.c **** 	/* Wait the Fast RC to stabilize */
 391:../asf/sam/drivers/pmc/pmc.c **** 	while (!(PMC->PMC_SR & PMC_SR_MOSCRCS));
 682              		.loc 1 391 0
 683 0006 0A46     		mov	r2, r1
 389:../asf/sam/drivers/pmc/pmc.c **** 	/* Wait the Fast RC to stabilize */
 684              		.loc 1 389 0
 685 0008 0A4C     		ldr	r4, .L121+4
 686 000a 1C43     		orrs	r4, r4, r3
 687 000c 0C62     		str	r4, [r1, #32]
 688              	.L114:
 689              		.loc 1 391 0 discriminator 1
 690 000e 936E     		ldr	r3, [r2, #104]
 691 0010 9903     		lsls	r1, r3, #14
 692 0012 FCD5     		bpl	.L114
 392:../asf/sam/drivers/pmc/pmc.c **** 
 393:../asf/sam/drivers/pmc/pmc.c **** 	/* Change Fast RC oscillator frequency */
 394:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCRCF_Msk) |
 693              		.loc 1 394 0
 694 0014 146A     		ldr	r4, [r2, #32]
 695 0016 084B     		ldr	r3, .L121+8
 395:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_MOR_KEY_PASSWD | ul_rc;
 396:../asf/sam/drivers/pmc/pmc.c **** 	/* Wait the Fast RC to stabilize */
 397:../asf/sam/drivers/pmc/pmc.c **** 	while (!(PMC->PMC_SR & PMC_SR_MOSCRCS));
 696              		.loc 1 397 0
 697 0018 0549     		ldr	r1, .L121
 394:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_MOR_KEY_PASSWD | ul_rc;
 698              		.loc 1 394 0
 699 001a 2340     		ands	r3, r3, r4
 395:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_MOR_KEY_PASSWD | ul_rc;
 700              		.loc 1 395 0
 701 001c 43F45C13 		orr	r3, r3, #3604480
 702 0020 1843     		orrs	r0, r0, r3
 703              	.LVL60:
 394:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_MOR_KEY_PASSWD | ul_rc;
 704              		.loc 1 394 0
 705 0022 1062     		str	r0, [r2, #32]
 706              	.L115:
 707              		.loc 1 397 0 discriminator 1
 708 0024 8B6E     		ldr	r3, [r1, #104]
 709 0026 9B03     		lsls	r3, r3, #14
 710 0028 FCD5     		bpl	.L115
 398:../asf/sam/drivers/pmc/pmc.c **** }
 711              		.loc 1 398 0
 712 002a 5DF8044B 		ldr	r4, [sp], #4
ARM GAS  /tmp/ccTYR2Ee.s 			page 21


 713              		.cfi_restore 4
 714              		.cfi_def_cfa_offset 0
 715 002e 7047     		bx	lr
 716              	.L122:
 717              		.align	2
 718              	.L121:
 719 0030 00060E40 		.word	1074660864
 720 0034 08003700 		.word	3604488
 721 0038 8FFFC8FF 		.word	-3604593
 722              		.cfi_endproc
 723              	.LFE152:
 724              		.size	pmc_osc_enable_fastrc, .-pmc_osc_enable_fastrc
 725              		.section	.text.pmc_osc_disable_fastrc,"ax",%progbits
 726              		.align	1
 727              		.p2align 2,,3
 728              		.global	pmc_osc_disable_fastrc
 729              		.syntax unified
 730              		.thumb
 731              		.thumb_func
 732              		.fpu fpv5-d16
 733              		.type	pmc_osc_disable_fastrc, %function
 734              	pmc_osc_disable_fastrc:
 735              	.LFB153:
 399:../asf/sam/drivers/pmc/pmc.c **** 
 400:../asf/sam/drivers/pmc/pmc.c **** /**
 401:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable the internal fast RC.
 402:../asf/sam/drivers/pmc/pmc.c ****  */
 403:../asf/sam/drivers/pmc/pmc.c **** void pmc_osc_disable_fastrc(void)
 404:../asf/sam/drivers/pmc/pmc.c **** {
 736              		.loc 1 404 0
 737              		.cfi_startproc
 738              		@ args = 0, pretend = 0, frame = 0
 739              		@ frame_needed = 0, uses_anonymous_args = 0
 740              		@ link register save eliminated.
 405:../asf/sam/drivers/pmc/pmc.c **** 	/* Disable Fast RC oscillator */
 406:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCRCEN &
 741              		.loc 1 406 0
 742 0000 034A     		ldr	r2, .L124
 407:../asf/sam/drivers/pmc/pmc.c **** 					~CKGR_MOR_MOSCRCF_Msk)
 408:../asf/sam/drivers/pmc/pmc.c **** 				| CKGR_MOR_KEY_PASSWD;
 743              		.loc 1 408 0
 744 0002 044B     		ldr	r3, .L124+4
 406:../asf/sam/drivers/pmc/pmc.c **** 					~CKGR_MOR_MOSCRCF_Msk)
 745              		.loc 1 406 0
 746 0004 116A     		ldr	r1, [r2, #32]
 747              		.loc 1 408 0
 748 0006 0B40     		ands	r3, r3, r1
 749 0008 43F45C13 		orr	r3, r3, #3604480
 406:../asf/sam/drivers/pmc/pmc.c **** 					~CKGR_MOR_MOSCRCF_Msk)
 750              		.loc 1 406 0
 751 000c 1362     		str	r3, [r2, #32]
 752 000e 7047     		bx	lr
 753              	.L125:
 754              		.align	2
 755              	.L124:
 756 0010 00060E40 		.word	1074660864
 757 0014 87FFC8FF 		.word	-3604601
ARM GAS  /tmp/ccTYR2Ee.s 			page 22


 758              		.cfi_endproc
 759              	.LFE153:
 760              		.size	pmc_osc_disable_fastrc, .-pmc_osc_disable_fastrc
 761              		.section	.text.pmc_osc_is_ready_fastrc,"ax",%progbits
 762              		.align	1
 763              		.p2align 2,,3
 764              		.global	pmc_osc_is_ready_fastrc
 765              		.syntax unified
 766              		.thumb
 767              		.thumb_func
 768              		.fpu fpv5-d16
 769              		.type	pmc_osc_is_ready_fastrc, %function
 770              	pmc_osc_is_ready_fastrc:
 771              	.LFB154:
 409:../asf/sam/drivers/pmc/pmc.c **** }
 410:../asf/sam/drivers/pmc/pmc.c **** 
 411:../asf/sam/drivers/pmc/pmc.c **** /**
 412:../asf/sam/drivers/pmc/pmc.c ****  * \brief Check if the main fastrc is ready.
 413:../asf/sam/drivers/pmc/pmc.c ****  *
 414:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Xtal is not ready, otherwise ready.
 415:../asf/sam/drivers/pmc/pmc.c ****  */
 416:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_osc_is_ready_fastrc(void)
 417:../asf/sam/drivers/pmc/pmc.c **** {
 772              		.loc 1 417 0
 773              		.cfi_startproc
 774              		@ args = 0, pretend = 0, frame = 0
 775              		@ frame_needed = 0, uses_anonymous_args = 0
 776              		@ link register save eliminated.
 418:../asf/sam/drivers/pmc/pmc.c **** 	return (PMC->PMC_SR & PMC_SR_MOSCRCS);
 777              		.loc 1 418 0
 778 0000 024B     		ldr	r3, .L127
 779 0002 986E     		ldr	r0, [r3, #104]
 419:../asf/sam/drivers/pmc/pmc.c **** }
 780              		.loc 1 419 0
 781 0004 00F40030 		and	r0, r0, #131072
 782 0008 7047     		bx	lr
 783              	.L128:
 784 000a 00BF     		.align	2
 785              	.L127:
 786 000c 00060E40 		.word	1074660864
 787              		.cfi_endproc
 788              	.LFE154:
 789              		.size	pmc_osc_is_ready_fastrc, .-pmc_osc_is_ready_fastrc
 790              		.section	.text.pmc_osc_enable_main_xtal,"ax",%progbits
 791              		.align	1
 792              		.p2align 2,,3
 793              		.global	pmc_osc_enable_main_xtal
 794              		.syntax unified
 795              		.thumb
 796              		.thumb_func
 797              		.fpu fpv5-d16
 798              		.type	pmc_osc_enable_main_xtal, %function
 799              	pmc_osc_enable_main_xtal:
 800              	.LFB155:
 420:../asf/sam/drivers/pmc/pmc.c **** 
 421:../asf/sam/drivers/pmc/pmc.c **** /**
 422:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable main XTAL oscillator.
ARM GAS  /tmp/ccTYR2Ee.s 			page 23


 423:../asf/sam/drivers/pmc/pmc.c ****  *
 424:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_xtal_startup_time Xtal start-up time, in number of slow clocks.
 425:../asf/sam/drivers/pmc/pmc.c ****  */
 426:../asf/sam/drivers/pmc/pmc.c **** void pmc_osc_enable_main_xtal(uint32_t ul_xtal_startup_time)
 427:../asf/sam/drivers/pmc/pmc.c **** {
 801              		.loc 1 427 0
 802              		.cfi_startproc
 803              		@ args = 0, pretend = 0, frame = 0
 804              		@ frame_needed = 0, uses_anonymous_args = 0
 805              		@ link register save eliminated.
 806              	.LVL61:
 428:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t mor = PMC->CKGR_MOR;
 807              		.loc 1 428 0
 808 0000 084B     		ldr	r3, .L134
 429:../asf/sam/drivers/pmc/pmc.c **** 	mor &= ~(CKGR_MOR_MOSCXTBY|CKGR_MOR_MOSCXTEN);
 430:../asf/sam/drivers/pmc/pmc.c **** 	mor |= CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTEN |
 431:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_MOR_MOSCXTST(ul_xtal_startup_time);
 809              		.loc 1 431 0
 810 0002 0002     		lsls	r0, r0, #8
 811              	.LVL62:
 812 0004 0849     		ldr	r1, .L134+4
 813 0006 80B2     		uxth	r0, r0
 432:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_MOR = mor;
 433:../asf/sam/drivers/pmc/pmc.c **** 	/* Wait the main Xtal to stabilize */
 434:../asf/sam/drivers/pmc/pmc.c **** 	while (!(PMC->PMC_SR & PMC_SR_MOSCXTS));
 814              		.loc 1 434 0
 815 0008 1A46     		mov	r2, r3
 427:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t mor = PMC->CKGR_MOR;
 816              		.loc 1 427 0
 817 000a 10B4     		push	{r4}
 818              		.cfi_def_cfa_offset 4
 819              		.cfi_offset 4, -4
 428:../asf/sam/drivers/pmc/pmc.c **** 	mor &= ~(CKGR_MOR_MOSCXTBY|CKGR_MOR_MOSCXTEN);
 820              		.loc 1 428 0
 821 000c 1C6A     		ldr	r4, [r3, #32]
 822              	.LVL63:
 429:../asf/sam/drivers/pmc/pmc.c **** 	mor |= CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTEN |
 823              		.loc 1 429 0
 824 000e 24F00304 		bic	r4, r4, #3
 825              	.LVL64:
 826 0012 2143     		orrs	r1, r1, r4
 430:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_MOR_MOSCXTST(ul_xtal_startup_time);
 827              		.loc 1 430 0
 828 0014 0843     		orrs	r0, r0, r1
 829              	.LVL65:
 432:../asf/sam/drivers/pmc/pmc.c **** 	/* Wait the main Xtal to stabilize */
 830              		.loc 1 432 0
 831 0016 1862     		str	r0, [r3, #32]
 832              	.L130:
 833              		.loc 1 434 0 discriminator 1
 834 0018 936E     		ldr	r3, [r2, #104]
 835 001a DB07     		lsls	r3, r3, #31
 836 001c FCD5     		bpl	.L130
 435:../asf/sam/drivers/pmc/pmc.c **** }
 837              		.loc 1 435 0
 838 001e 5DF8044B 		ldr	r4, [sp], #4
 839              		.cfi_restore 4
ARM GAS  /tmp/ccTYR2Ee.s 			page 24


 840              		.cfi_def_cfa_offset 0
 841 0022 7047     		bx	lr
 842              	.L135:
 843              		.align	2
 844              	.L134:
 845 0024 00060E40 		.word	1074660864
 846 0028 01003700 		.word	3604481
 847              		.cfi_endproc
 848              	.LFE155:
 849              		.size	pmc_osc_enable_main_xtal, .-pmc_osc_enable_main_xtal
 850              		.section	.text.pmc_osc_bypass_main_xtal,"ax",%progbits
 851              		.align	1
 852              		.p2align 2,,3
 853              		.global	pmc_osc_bypass_main_xtal
 854              		.syntax unified
 855              		.thumb
 856              		.thumb_func
 857              		.fpu fpv5-d16
 858              		.type	pmc_osc_bypass_main_xtal, %function
 859              	pmc_osc_bypass_main_xtal:
 860              	.LFB156:
 436:../asf/sam/drivers/pmc/pmc.c **** 
 437:../asf/sam/drivers/pmc/pmc.c **** /**
 438:../asf/sam/drivers/pmc/pmc.c ****  * \brief Bypass main XTAL.
 439:../asf/sam/drivers/pmc/pmc.c ****  */
 440:../asf/sam/drivers/pmc/pmc.c **** void pmc_osc_bypass_main_xtal(void)
 441:../asf/sam/drivers/pmc/pmc.c **** {
 861              		.loc 1 441 0
 862              		.cfi_startproc
 863              		@ args = 0, pretend = 0, frame = 0
 864              		@ frame_needed = 0, uses_anonymous_args = 0
 865              		@ link register save eliminated.
 442:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t mor = PMC->CKGR_MOR;
 866              		.loc 1 442 0
 867 0000 0349     		ldr	r1, .L137
 443:../asf/sam/drivers/pmc/pmc.c **** 	mor &= ~(CKGR_MOR_MOSCXTBY|CKGR_MOR_MOSCXTEN);
 444:../asf/sam/drivers/pmc/pmc.c **** 	mor |= CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTBY;
 868              		.loc 1 444 0
 869 0002 044B     		ldr	r3, .L137+4
 442:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t mor = PMC->CKGR_MOR;
 870              		.loc 1 442 0
 871 0004 0A6A     		ldr	r2, [r1, #32]
 872              	.LVL66:
 443:../asf/sam/drivers/pmc/pmc.c **** 	mor &= ~(CKGR_MOR_MOSCXTBY|CKGR_MOR_MOSCXTEN);
 873              		.loc 1 443 0
 874 0006 22F00302 		bic	r2, r2, #3
 875              	.LVL67:
 876              		.loc 1 444 0
 877 000a 1343     		orrs	r3, r3, r2
 878              	.LVL68:
 445:../asf/sam/drivers/pmc/pmc.c **** 	/* Enable Crystal oscillator but DO NOT switch now. Keep MOSCSEL to 0 */
 446:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_MOR = mor;
 879              		.loc 1 446 0
 880 000c 0B62     		str	r3, [r1, #32]
 881 000e 7047     		bx	lr
 882              	.L138:
 883              		.align	2
ARM GAS  /tmp/ccTYR2Ee.s 			page 25


 884              	.L137:
 885 0010 00060E40 		.word	1074660864
 886 0014 02003700 		.word	3604482
 887              		.cfi_endproc
 888              	.LFE156:
 889              		.size	pmc_osc_bypass_main_xtal, .-pmc_osc_bypass_main_xtal
 890              		.section	.text.pmc_osc_disable_main_xtal,"ax",%progbits
 891              		.align	1
 892              		.p2align 2,,3
 893              		.global	pmc_osc_disable_main_xtal
 894              		.syntax unified
 895              		.thumb
 896              		.thumb_func
 897              		.fpu fpv5-d16
 898              		.type	pmc_osc_disable_main_xtal, %function
 899              	pmc_osc_disable_main_xtal:
 900              	.LFB157:
 447:../asf/sam/drivers/pmc/pmc.c **** 	/* The MOSCXTS in PMC_SR is automatically set */
 448:../asf/sam/drivers/pmc/pmc.c **** }
 449:../asf/sam/drivers/pmc/pmc.c **** 
 450:../asf/sam/drivers/pmc/pmc.c **** /**
 451:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable the main Xtal.
 452:../asf/sam/drivers/pmc/pmc.c ****  */
 453:../asf/sam/drivers/pmc/pmc.c **** void pmc_osc_disable_main_xtal(void)
 454:../asf/sam/drivers/pmc/pmc.c **** {
 901              		.loc 1 454 0
 902              		.cfi_startproc
 903              		@ args = 0, pretend = 0, frame = 0
 904              		@ frame_needed = 0, uses_anonymous_args = 0
 905              		@ link register save eliminated.
 455:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t mor = PMC->CKGR_MOR;
 906              		.loc 1 455 0
 907 0000 034A     		ldr	r2, .L140
 908 0002 136A     		ldr	r3, [r2, #32]
 909              	.LVL69:
 456:../asf/sam/drivers/pmc/pmc.c **** 	mor &= ~(CKGR_MOR_MOSCXTBY|CKGR_MOR_MOSCXTEN);
 910              		.loc 1 456 0
 911 0004 23F00303 		bic	r3, r3, #3
 912              	.LVL70:
 457:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_MOR = CKGR_MOR_KEY_PASSWD | mor;
 913              		.loc 1 457 0
 914 0008 43F45C13 		orr	r3, r3, #3604480
 915              	.LVL71:
 916 000c 1362     		str	r3, [r2, #32]
 917 000e 7047     		bx	lr
 918              	.L141:
 919              		.align	2
 920              	.L140:
 921 0010 00060E40 		.word	1074660864
 922              		.cfi_endproc
 923              	.LFE157:
 924              		.size	pmc_osc_disable_main_xtal, .-pmc_osc_disable_main_xtal
 925              		.section	.text.pmc_osc_is_bypassed_main_xtal,"ax",%progbits
 926              		.align	1
 927              		.p2align 2,,3
 928              		.global	pmc_osc_is_bypassed_main_xtal
 929              		.syntax unified
ARM GAS  /tmp/ccTYR2Ee.s 			page 26


 930              		.thumb
 931              		.thumb_func
 932              		.fpu fpv5-d16
 933              		.type	pmc_osc_is_bypassed_main_xtal, %function
 934              	pmc_osc_is_bypassed_main_xtal:
 935              	.LFB158:
 458:../asf/sam/drivers/pmc/pmc.c **** }
 459:../asf/sam/drivers/pmc/pmc.c **** 
 460:../asf/sam/drivers/pmc/pmc.c **** /**
 461:../asf/sam/drivers/pmc/pmc.c ****  * \brief Check if the main crystal is bypassed.
 462:../asf/sam/drivers/pmc/pmc.c ****  *
 463:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Xtal is bypassed, otherwise not.
 464:../asf/sam/drivers/pmc/pmc.c ****  */
 465:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_osc_is_bypassed_main_xtal(void)
 466:../asf/sam/drivers/pmc/pmc.c **** {
 936              		.loc 1 466 0
 937              		.cfi_startproc
 938              		@ args = 0, pretend = 0, frame = 0
 939              		@ frame_needed = 0, uses_anonymous_args = 0
 940              		@ link register save eliminated.
 467:../asf/sam/drivers/pmc/pmc.c **** 	return (PMC->CKGR_MOR & CKGR_MOR_MOSCXTBY);
 941              		.loc 1 467 0
 942 0000 024B     		ldr	r3, .L143
 943 0002 186A     		ldr	r0, [r3, #32]
 468:../asf/sam/drivers/pmc/pmc.c **** }
 944              		.loc 1 468 0
 945 0004 00F00200 		and	r0, r0, #2
 946 0008 7047     		bx	lr
 947              	.L144:
 948 000a 00BF     		.align	2
 949              	.L143:
 950 000c 00060E40 		.word	1074660864
 951              		.cfi_endproc
 952              	.LFE158:
 953              		.size	pmc_osc_is_bypassed_main_xtal, .-pmc_osc_is_bypassed_main_xtal
 954              		.section	.text.pmc_osc_is_ready_main_xtal,"ax",%progbits
 955              		.align	1
 956              		.p2align 2,,3
 957              		.global	pmc_osc_is_ready_main_xtal
 958              		.syntax unified
 959              		.thumb
 960              		.thumb_func
 961              		.fpu fpv5-d16
 962              		.type	pmc_osc_is_ready_main_xtal, %function
 963              	pmc_osc_is_ready_main_xtal:
 964              	.LFB159:
 469:../asf/sam/drivers/pmc/pmc.c **** 
 470:../asf/sam/drivers/pmc/pmc.c **** /**
 471:../asf/sam/drivers/pmc/pmc.c ****  * \brief Check if the main crystal is ready.
 472:../asf/sam/drivers/pmc/pmc.c ****  *
 473:../asf/sam/drivers/pmc/pmc.c ****  * \note If main crystal is bypassed, it's always ready.
 474:../asf/sam/drivers/pmc/pmc.c ****  *
 475:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 main crystal is not ready, otherwise ready.
 476:../asf/sam/drivers/pmc/pmc.c ****  */
 477:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_osc_is_ready_main_xtal(void)
 478:../asf/sam/drivers/pmc/pmc.c **** {
 965              		.loc 1 478 0
ARM GAS  /tmp/ccTYR2Ee.s 			page 27


 966              		.cfi_startproc
 967              		@ args = 0, pretend = 0, frame = 0
 968              		@ frame_needed = 0, uses_anonymous_args = 0
 969              		@ link register save eliminated.
 479:../asf/sam/drivers/pmc/pmc.c **** 	return (PMC->PMC_SR & PMC_SR_MOSCXTS);
 970              		.loc 1 479 0
 971 0000 024B     		ldr	r3, .L146
 972 0002 986E     		ldr	r0, [r3, #104]
 480:../asf/sam/drivers/pmc/pmc.c **** }
 973              		.loc 1 480 0
 974 0004 00F00100 		and	r0, r0, #1
 975 0008 7047     		bx	lr
 976              	.L147:
 977 000a 00BF     		.align	2
 978              	.L146:
 979 000c 00060E40 		.word	1074660864
 980              		.cfi_endproc
 981              	.LFE159:
 982              		.size	pmc_osc_is_ready_main_xtal, .-pmc_osc_is_ready_main_xtal
 983              		.section	.text.pmc_switch_mainck_to_xtal,"ax",%progbits
 984              		.align	1
 985              		.p2align 2,,3
 986              		.global	pmc_switch_mainck_to_xtal
 987              		.syntax unified
 988              		.thumb
 989              		.thumb_func
 990              		.fpu fpv5-d16
 991              		.type	pmc_switch_mainck_to_xtal, %function
 992              	pmc_switch_mainck_to_xtal:
 993              	.LFB160:
 481:../asf/sam/drivers/pmc/pmc.c **** 
 482:../asf/sam/drivers/pmc/pmc.c **** /**
 483:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch main clock source selection to external Xtal/Bypass.
 484:../asf/sam/drivers/pmc/pmc.c ****  *
 485:../asf/sam/drivers/pmc/pmc.c ****  * \note The function may switch MCK to SCLK if MCK source is MAINCK to avoid
 486:../asf/sam/drivers/pmc/pmc.c ****  *       any system crash.
 487:../asf/sam/drivers/pmc/pmc.c ****  *
 488:../asf/sam/drivers/pmc/pmc.c ****  * \note If used in Xtal mode, the Xtal is automatically enabled.
 489:../asf/sam/drivers/pmc/pmc.c ****  *
 490:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_bypass 0 for Xtal, 1 for bypass.
 491:../asf/sam/drivers/pmc/pmc.c ****  *
 492:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
 493:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Timeout error.
 494:../asf/sam/drivers/pmc/pmc.c ****  */
 495:../asf/sam/drivers/pmc/pmc.c **** void pmc_switch_mainck_to_xtal(uint32_t ul_bypass,
 496:../asf/sam/drivers/pmc/pmc.c **** 		uint32_t ul_xtal_startup_time)
 497:../asf/sam/drivers/pmc/pmc.c **** {
 994              		.loc 1 497 0
 995              		.cfi_startproc
 996              		@ args = 0, pretend = 0, frame = 0
 997              		@ frame_needed = 0, uses_anonymous_args = 0
 998              		@ link register save eliminated.
 999              	.LVL72:
 498:../asf/sam/drivers/pmc/pmc.c **** 	/* Enable Main Xtal oscillator */
 499:../asf/sam/drivers/pmc/pmc.c **** 	if (ul_bypass) {
 1000              		.loc 1 499 0
 1001 0000 A0B9     		cbnz	r0, .L157
ARM GAS  /tmp/ccTYR2Ee.s 			page 28


 500:../asf/sam/drivers/pmc/pmc.c **** 		PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCXTEN) |
 501:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTBY |
 502:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_MOSCSEL;
 503:../asf/sam/drivers/pmc/pmc.c **** 	} else {
 504:../asf/sam/drivers/pmc/pmc.c **** 		PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCXTBY) |
 1002              		.loc 1 504 0
 1003 0002 0E4B     		ldr	r3, .L158
 505:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTEN |
 506:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_MOSCXTST(ul_xtal_startup_time);
 1004              		.loc 1 506 0
 1005 0004 0902     		lsls	r1, r1, #8
 1006              	.LVL73:
 505:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTEN |
 1007              		.loc 1 505 0
 1008 0006 0E48     		ldr	r0, .L158+4
 1009              	.LVL74:
 1010              		.loc 1 506 0
 1011 0008 89B2     		uxth	r1, r1
 507:../asf/sam/drivers/pmc/pmc.c **** 		/* Wait the Xtal to stabilize */
 508:../asf/sam/drivers/pmc/pmc.c **** 		while (!(PMC->PMC_SR & PMC_SR_MOSCXTS));
 1012              		.loc 1 508 0
 1013 000a 1A46     		mov	r2, r3
 497:../asf/sam/drivers/pmc/pmc.c **** 	/* Enable Main Xtal oscillator */
 1014              		.loc 1 497 0
 1015 000c 30B4     		push	{r4, r5}
 1016              		.cfi_def_cfa_offset 8
 1017              		.cfi_offset 4, -8
 1018              		.cfi_offset 5, -4
 504:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTEN |
 1019              		.loc 1 504 0
 1020 000e 1D6A     		ldr	r5, [r3, #32]
 505:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_MOSCXTST(ul_xtal_startup_time);
 1021              		.loc 1 505 0
 1022 0010 0C4C     		ldr	r4, .L158+8
 1023 0012 2C40     		ands	r4, r4, r5
 1024 0014 2043     		orrs	r0, r0, r4
 1025 0016 0143     		orrs	r1, r1, r0
 504:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTEN |
 1026              		.loc 1 504 0
 1027 0018 1962     		str	r1, [r3, #32]
 1028              	.L151:
 1029              		.loc 1 508 0 discriminator 1
 1030 001a 936E     		ldr	r3, [r2, #104]
 1031 001c DB07     		lsls	r3, r3, #31
 1032 001e FCD5     		bpl	.L151
 509:../asf/sam/drivers/pmc/pmc.c **** 
 510:../asf/sam/drivers/pmc/pmc.c **** 		PMC->CKGR_MOR |= CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCSEL;
 1033              		.loc 1 510 0
 1034 0020 116A     		ldr	r1, [r2, #32]
 1035 0022 094B     		ldr	r3, .L158+12
 1036 0024 0B43     		orrs	r3, r3, r1
 511:../asf/sam/drivers/pmc/pmc.c **** 	}
 512:../asf/sam/drivers/pmc/pmc.c **** }
 1037              		.loc 1 512 0
 1038 0026 30BC     		pop	{r4, r5}
 1039              		.cfi_restore 5
 1040              		.cfi_restore 4
ARM GAS  /tmp/ccTYR2Ee.s 			page 29


 1041              		.cfi_def_cfa_offset 0
 510:../asf/sam/drivers/pmc/pmc.c **** 	}
 1042              		.loc 1 510 0
 1043 0028 1362     		str	r3, [r2, #32]
 1044              		.loc 1 512 0
 1045 002a 7047     		bx	lr
 1046              	.LVL75:
 1047              	.L157:
 500:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTBY |
 1048              		.loc 1 500 0
 1049 002c 0349     		ldr	r1, .L158
 1050              	.LVL76:
 501:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_MOSCSEL;
 1051              		.loc 1 501 0
 1052 002e 074A     		ldr	r2, .L158+16
 500:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTBY |
 1053              		.loc 1 500 0
 1054 0030 086A     		ldr	r0, [r1, #32]
 1055              	.LVL77:
 501:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_MOSCSEL;
 1056              		.loc 1 501 0
 1057 0032 074B     		ldr	r3, .L158+20
 1058 0034 0240     		ands	r2, r2, r0
 1059 0036 1343     		orrs	r3, r3, r2
 500:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_KEY_PASSWD | CKGR_MOR_MOSCXTBY |
 1060              		.loc 1 500 0
 1061 0038 0B62     		str	r3, [r1, #32]
 1062 003a 7047     		bx	lr
 1063              	.L159:
 1064              		.align	2
 1065              	.L158:
 1066 003c 00060E40 		.word	1074660864
 1067 0040 01003700 		.word	3604481
 1068 0044 FCFFC8FF 		.word	-3604484
 1069 0048 00003701 		.word	20381696
 1070 004c FCFFC8FE 		.word	-20381700
 1071 0050 02003701 		.word	20381698
 1072              		.cfi_endproc
 1073              	.LFE160:
 1074              		.size	pmc_switch_mainck_to_xtal, .-pmc_switch_mainck_to_xtal
 1075              		.section	.text.pmc_osc_disable_xtal,"ax",%progbits
 1076              		.align	1
 1077              		.p2align 2,,3
 1078              		.global	pmc_osc_disable_xtal
 1079              		.syntax unified
 1080              		.thumb
 1081              		.thumb_func
 1082              		.fpu fpv5-d16
 1083              		.type	pmc_osc_disable_xtal, %function
 1084              	pmc_osc_disable_xtal:
 1085              	.LFB161:
 513:../asf/sam/drivers/pmc/pmc.c **** 
 514:../asf/sam/drivers/pmc/pmc.c **** /**
 515:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable the external Xtal.
 516:../asf/sam/drivers/pmc/pmc.c ****  *
 517:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_bypass 0 for Xtal, 1 for bypass.
 518:../asf/sam/drivers/pmc/pmc.c ****  */
ARM GAS  /tmp/ccTYR2Ee.s 			page 30


 519:../asf/sam/drivers/pmc/pmc.c **** void pmc_osc_disable_xtal(uint32_t ul_bypass)
 520:../asf/sam/drivers/pmc/pmc.c **** {
 1086              		.loc 1 520 0
 1087              		.cfi_startproc
 1088              		@ args = 0, pretend = 0, frame = 0
 1089              		@ frame_needed = 0, uses_anonymous_args = 0
 1090              		@ link register save eliminated.
 1091              	.LVL78:
 521:../asf/sam/drivers/pmc/pmc.c **** 	/* Disable xtal oscillator */
 522:../asf/sam/drivers/pmc/pmc.c **** 	if (ul_bypass) {
 523:../asf/sam/drivers/pmc/pmc.c **** 		PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCXTBY) |
 1092              		.loc 1 523 0
 1093 0000 074A     		ldr	r2, .L164
 522:../asf/sam/drivers/pmc/pmc.c **** 		PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCXTBY) |
 1094              		.loc 1 522 0
 1095 0002 30B9     		cbnz	r0, .L163
 524:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_KEY_PASSWD;
 525:../asf/sam/drivers/pmc/pmc.c **** 	} else {
 526:../asf/sam/drivers/pmc/pmc.c **** 		PMC->CKGR_MOR = (PMC->CKGR_MOR & ~CKGR_MOR_MOSCXTEN) |
 1096              		.loc 1 526 0
 1097 0004 116A     		ldr	r1, [r2, #32]
 1098 0006 074B     		ldr	r3, .L164+4
 1099 0008 0B40     		ands	r3, r3, r1
 1100 000a 43F45C13 		orr	r3, r3, #3604480
 1101 000e 1362     		str	r3, [r2, #32]
 1102 0010 7047     		bx	lr
 1103              	.L163:
 523:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_KEY_PASSWD;
 1104              		.loc 1 523 0
 1105 0012 116A     		ldr	r1, [r2, #32]
 1106 0014 044B     		ldr	r3, .L164+8
 1107 0016 0B40     		ands	r3, r3, r1
 1108 0018 43F45C13 		orr	r3, r3, #3604480
 1109 001c 1362     		str	r3, [r2, #32]
 1110 001e 7047     		bx	lr
 1111              	.L165:
 1112              		.align	2
 1113              	.L164:
 1114 0020 00060E40 		.word	1074660864
 1115 0024 FEFFC8FF 		.word	-3604482
 1116 0028 FDFFC8FF 		.word	-3604483
 1117              		.cfi_endproc
 1118              	.LFE161:
 1119              		.size	pmc_osc_disable_xtal, .-pmc_osc_disable_xtal
 1120              		.section	.text.pmc_osc_is_ready_mainck,"ax",%progbits
 1121              		.align	1
 1122              		.p2align 2,,3
 1123              		.global	pmc_osc_is_ready_mainck
 1124              		.syntax unified
 1125              		.thumb
 1126              		.thumb_func
 1127              		.fpu fpv5-d16
 1128              		.type	pmc_osc_is_ready_mainck, %function
 1129              	pmc_osc_is_ready_mainck:
 1130              	.LFB162:
 527:../asf/sam/drivers/pmc/pmc.c **** 				CKGR_MOR_KEY_PASSWD;
 528:../asf/sam/drivers/pmc/pmc.c **** 	}
ARM GAS  /tmp/ccTYR2Ee.s 			page 31


 529:../asf/sam/drivers/pmc/pmc.c **** }
 530:../asf/sam/drivers/pmc/pmc.c **** 
 531:../asf/sam/drivers/pmc/pmc.c **** /**
 532:../asf/sam/drivers/pmc/pmc.c ****  * \brief Check if the MAINCK is ready. Depending on MOSCEL, MAINCK can be one
 533:../asf/sam/drivers/pmc/pmc.c ****  * of Xtal, bypass or internal RC.
 534:../asf/sam/drivers/pmc/pmc.c ****  *
 535:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Xtal is ready.
 536:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Xtal is not ready.
 537:../asf/sam/drivers/pmc/pmc.c ****  */
 538:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_osc_is_ready_mainck(void)
 539:../asf/sam/drivers/pmc/pmc.c **** {
 1131              		.loc 1 539 0
 1132              		.cfi_startproc
 1133              		@ args = 0, pretend = 0, frame = 0
 1134              		@ frame_needed = 0, uses_anonymous_args = 0
 1135              		@ link register save eliminated.
 540:../asf/sam/drivers/pmc/pmc.c **** 	return PMC->PMC_SR & PMC_SR_MOSCSELS;
 1136              		.loc 1 540 0
 1137 0000 024B     		ldr	r3, .L167
 1138 0002 986E     		ldr	r0, [r3, #104]
 541:../asf/sam/drivers/pmc/pmc.c **** }
 1139              		.loc 1 541 0
 1140 0004 00F48030 		and	r0, r0, #65536
 1141 0008 7047     		bx	lr
 1142              	.L168:
 1143 000a 00BF     		.align	2
 1144              	.L167:
 1145 000c 00060E40 		.word	1074660864
 1146              		.cfi_endproc
 1147              	.LFE162:
 1148              		.size	pmc_osc_is_ready_mainck, .-pmc_osc_is_ready_mainck
 1149              		.section	.text.pmc_mainck_osc_select,"ax",%progbits
 1150              		.align	1
 1151              		.p2align 2,,3
 1152              		.global	pmc_mainck_osc_select
 1153              		.syntax unified
 1154              		.thumb
 1155              		.thumb_func
 1156              		.fpu fpv5-d16
 1157              		.type	pmc_mainck_osc_select, %function
 1158              	pmc_mainck_osc_select:
 1159              	.LFB163:
 542:../asf/sam/drivers/pmc/pmc.c **** 
 543:../asf/sam/drivers/pmc/pmc.c **** /**
 544:../asf/sam/drivers/pmc/pmc.c ****  * \brief Select Main Crystal or internal RC as main clock source.
 545:../asf/sam/drivers/pmc/pmc.c ****  *
 546:../asf/sam/drivers/pmc/pmc.c ****  * \note This function will not enable/disable RC or Main Crystal.
 547:../asf/sam/drivers/pmc/pmc.c ****  *
 548:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_xtal_rc 0 internal RC is selected, otherwise Main Crystal.
 549:../asf/sam/drivers/pmc/pmc.c ****  */
 550:../asf/sam/drivers/pmc/pmc.c **** void pmc_mainck_osc_select(uint32_t ul_xtal_rc)
 551:../asf/sam/drivers/pmc/pmc.c **** {
 1160              		.loc 1 551 0
 1161              		.cfi_startproc
 1162              		@ args = 0, pretend = 0, frame = 0
 1163              		@ frame_needed = 0, uses_anonymous_args = 0
 1164              		@ link register save eliminated.
ARM GAS  /tmp/ccTYR2Ee.s 			page 32


 1165              	.LVL79:
 552:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t mor = PMC->CKGR_MOR;
 1166              		.loc 1 552 0
 1167 0000 084B     		ldr	r3, .L173
 1168 0002 1B6A     		ldr	r3, [r3, #32]
 1169              	.LVL80:
 553:../asf/sam/drivers/pmc/pmc.c **** 	if (ul_xtal_rc) {
 1170              		.loc 1 553 0
 1171 0004 30B9     		cbnz	r0, .L172
 554:../asf/sam/drivers/pmc/pmc.c **** 		mor |=  CKGR_MOR_MOSCSEL;
 555:../asf/sam/drivers/pmc/pmc.c **** 	} else {
 556:../asf/sam/drivers/pmc/pmc.c **** 		mor &= ~CKGR_MOR_MOSCSEL;
 1172              		.loc 1 556 0
 1173 0006 23F08073 		bic	r3, r3, #16777216
 1174              	.LVL81:
 557:../asf/sam/drivers/pmc/pmc.c **** 	}
 558:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_MOR = CKGR_MOR_KEY_PASSWD | mor;
 1175              		.loc 1 558 0
 1176 000a 064A     		ldr	r2, .L173
 1177 000c 43F45C13 		orr	r3, r3, #3604480
 1178              	.LVL82:
 1179 0010 1362     		str	r3, [r2, #32]
 1180 0012 7047     		bx	lr
 1181              	.LVL83:
 1182              	.L172:
 554:../asf/sam/drivers/pmc/pmc.c **** 		mor |=  CKGR_MOR_MOSCSEL;
 1183              		.loc 1 554 0
 1184 0014 43F08073 		orr	r3, r3, #16777216
 1185              	.LVL84:
 1186              		.loc 1 558 0
 1187 0018 024A     		ldr	r2, .L173
 1188 001a 43F45C13 		orr	r3, r3, #3604480
 1189              	.LVL85:
 1190 001e 1362     		str	r3, [r2, #32]
 1191 0020 7047     		bx	lr
 1192              	.L174:
 1193 0022 00BF     		.align	2
 1194              	.L173:
 1195 0024 00060E40 		.word	1074660864
 1196              		.cfi_endproc
 1197              	.LFE163:
 1198              		.size	pmc_mainck_osc_select, .-pmc_mainck_osc_select
 1199              		.section	.text.pmc_enable_pllack,"ax",%progbits
 1200              		.align	1
 1201              		.p2align 2,,3
 1202              		.global	pmc_enable_pllack
 1203              		.syntax unified
 1204              		.thumb
 1205              		.thumb_func
 1206              		.fpu fpv5-d16
 1207              		.type	pmc_enable_pllack, %function
 1208              	pmc_enable_pllack:
 1209              	.LFB164:
 559:../asf/sam/drivers/pmc/pmc.c **** }
 560:../asf/sam/drivers/pmc/pmc.c **** 
 561:../asf/sam/drivers/pmc/pmc.c **** /**
 562:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable PLLA clock.
ARM GAS  /tmp/ccTYR2Ee.s 			page 33


 563:../asf/sam/drivers/pmc/pmc.c ****  *
 564:../asf/sam/drivers/pmc/pmc.c ****  * \param mula PLLA multiplier.
 565:../asf/sam/drivers/pmc/pmc.c ****  * \param pllacount PLLA counter.
 566:../asf/sam/drivers/pmc/pmc.c ****  * \param diva Divider.
 567:../asf/sam/drivers/pmc/pmc.c ****  */
 568:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_pllack(uint32_t mula, uint32_t pllacount, uint32_t diva)
 569:../asf/sam/drivers/pmc/pmc.c **** {
 1210              		.loc 1 569 0
 1211              		.cfi_startproc
 1212              		@ args = 0, pretend = 0, frame = 0
 1213              		@ frame_needed = 0, uses_anonymous_args = 0
 1214              		@ link register save eliminated.
 1215              	.LVL86:
 570:../asf/sam/drivers/pmc/pmc.c **** 	/* first disable the PLL to unlock the lock */
 571:../asf/sam/drivers/pmc/pmc.c **** 	pmc_disable_pllack();
 572:../asf/sam/drivers/pmc/pmc.c **** 
 573:../asf/sam/drivers/pmc/pmc.c **** #if (SAM4C || SAM4CM || SAM4CP || SAMG)
 574:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_PLLAR = CKGR_PLLAR_PLLAEN(diva) |
 575:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_PLLAR_PLLACOUNT(pllacount) | CKGR_PLLAR_MULA(mula);
 576:../asf/sam/drivers/pmc/pmc.c **** #else
 577:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_PLLAR = CKGR_PLLAR_ONE | CKGR_PLLAR_DIVA(diva) |
 578:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_PLLAR_PLLACOUNT(pllacount) | CKGR_PLLAR_MULA(mula);
 1216              		.loc 1 578 0
 1217 0000 0B4B     		ldr	r3, .L180
 1218 0002 0902     		lsls	r1, r1, #8
 1219              	.LVL87:
 1220 0004 03EA0040 		and	r0, r3, r0, lsl #16
 1221              	.LVL88:
 1222              	.LBB28:
 1223              	.LBB29:
 579:../asf/sam/drivers/pmc/pmc.c **** #endif
 580:../asf/sam/drivers/pmc/pmc.c **** 	while ((PMC->PMC_SR & PMC_SR_LOCKA) == 0);
 581:../asf/sam/drivers/pmc/pmc.c **** }
 582:../asf/sam/drivers/pmc/pmc.c **** 
 583:../asf/sam/drivers/pmc/pmc.c **** /**
 584:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable PLLA clock.
 585:../asf/sam/drivers/pmc/pmc.c ****  */
 586:../asf/sam/drivers/pmc/pmc.c **** void pmc_disable_pllack(void)
 587:../asf/sam/drivers/pmc/pmc.c **** {
 588:../asf/sam/drivers/pmc/pmc.c **** #if (SAM4C || SAM4CM || SAM4CP || SAMG)
 589:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_PLLAR = CKGR_PLLAR_MULA(0);
 590:../asf/sam/drivers/pmc/pmc.c **** #else
 591:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_PLLAR = CKGR_PLLAR_ONE | CKGR_PLLAR_MULA(0);
 1224              		.loc 1 591 0
 1225 0008 4FF00053 		mov	r3, #536870912
 1226              	.LBE29:
 1227              	.LBE28:
 578:../asf/sam/drivers/pmc/pmc.c **** #endif
 1228              		.loc 1 578 0
 1229 000c 01F47C51 		and	r1, r1, #16128
 569:../asf/sam/drivers/pmc/pmc.c **** 	/* first disable the PLL to unlock the lock */
 1230              		.loc 1 569 0
 1231 0010 70B4     		push	{r4, r5, r6}
 1232              		.cfi_def_cfa_offset 12
 1233              		.cfi_offset 4, -12
 1234              		.cfi_offset 5, -8
 1235              		.cfi_offset 6, -4
ARM GAS  /tmp/ccTYR2Ee.s 			page 34


 577:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_PLLAR_PLLACOUNT(pllacount) | CKGR_PLLAR_MULA(mula);
 1236              		.loc 1 577 0
 1237 0012 D6B2     		uxtb	r6, r2
 578:../asf/sam/drivers/pmc/pmc.c **** #endif
 1238              		.loc 1 578 0
 1239 0014 40EA0302 		orr	r2, r0, r3
 1240              	.LVL89:
 1241              	.LBB32:
 1242              	.LBB30:
 1243              		.loc 1 591 0
 1244 0018 064D     		ldr	r5, .L180+4
 1245              	.LBE30:
 1246              	.LBE32:
 578:../asf/sam/drivers/pmc/pmc.c **** #endif
 1247              		.loc 1 578 0
 1248 001a 3243     		orrs	r2, r2, r6
 580:../asf/sam/drivers/pmc/pmc.c **** }
 1249              		.loc 1 580 0
 1250 001c 2C46     		mov	r4, r5
 1251              	.LBB33:
 1252              	.LBB31:
 1253              		.loc 1 591 0
 1254 001e AB62     		str	r3, [r5, #40]
 1255              	.LBE31:
 1256              	.LBE33:
 578:../asf/sam/drivers/pmc/pmc.c **** #endif
 1257              		.loc 1 578 0
 1258 0020 0A43     		orrs	r2, r2, r1
 577:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_PLLAR_PLLACOUNT(pllacount) | CKGR_PLLAR_MULA(mula);
 1259              		.loc 1 577 0
 1260 0022 AA62     		str	r2, [r5, #40]
 1261              	.L176:
 580:../asf/sam/drivers/pmc/pmc.c **** }
 1262              		.loc 1 580 0 discriminator 1
 1263 0024 A36E     		ldr	r3, [r4, #104]
 1264 0026 9B07     		lsls	r3, r3, #30
 1265 0028 FCD5     		bpl	.L176
 581:../asf/sam/drivers/pmc/pmc.c **** 
 1266              		.loc 1 581 0
 1267 002a 70BC     		pop	{r4, r5, r6}
 1268              		.cfi_restore 6
 1269              		.cfi_restore 5
 1270              		.cfi_restore 4
 1271              		.cfi_def_cfa_offset 0
 1272 002c 7047     		bx	lr
 1273              	.L181:
 1274 002e 00BF     		.align	2
 1275              	.L180:
 1276 0030 0000FF07 		.word	134152192
 1277 0034 00060E40 		.word	1074660864
 1278              		.cfi_endproc
 1279              	.LFE164:
 1280              		.size	pmc_enable_pllack, .-pmc_enable_pllack
 1281              		.section	.text.pmc_disable_pllack,"ax",%progbits
 1282              		.align	1
 1283              		.p2align 2,,3
 1284              		.global	pmc_disable_pllack
ARM GAS  /tmp/ccTYR2Ee.s 			page 35


 1285              		.syntax unified
 1286              		.thumb
 1287              		.thumb_func
 1288              		.fpu fpv5-d16
 1289              		.type	pmc_disable_pllack, %function
 1290              	pmc_disable_pllack:
 1291              	.LFB165:
 587:../asf/sam/drivers/pmc/pmc.c **** #if (SAM4C || SAM4CM || SAM4CP || SAMG)
 1292              		.loc 1 587 0
 1293              		.cfi_startproc
 1294              		@ args = 0, pretend = 0, frame = 0
 1295              		@ frame_needed = 0, uses_anonymous_args = 0
 1296              		@ link register save eliminated.
 1297              		.loc 1 591 0
 1298 0000 024B     		ldr	r3, .L183
 1299 0002 4FF00052 		mov	r2, #536870912
 1300 0006 9A62     		str	r2, [r3, #40]
 1301 0008 7047     		bx	lr
 1302              	.L184:
 1303 000a 00BF     		.align	2
 1304              	.L183:
 1305 000c 00060E40 		.word	1074660864
 1306              		.cfi_endproc
 1307              	.LFE165:
 1308              		.size	pmc_disable_pllack, .-pmc_disable_pllack
 1309              		.section	.text.pmc_is_locked_pllack,"ax",%progbits
 1310              		.align	1
 1311              		.p2align 2,,3
 1312              		.global	pmc_is_locked_pllack
 1313              		.syntax unified
 1314              		.thumb
 1315              		.thumb_func
 1316              		.fpu fpv5-d16
 1317              		.type	pmc_is_locked_pllack, %function
 1318              	pmc_is_locked_pllack:
 1319              	.LFB166:
 592:../asf/sam/drivers/pmc/pmc.c **** #endif
 593:../asf/sam/drivers/pmc/pmc.c **** }
 594:../asf/sam/drivers/pmc/pmc.c **** 
 595:../asf/sam/drivers/pmc/pmc.c **** /**
 596:../asf/sam/drivers/pmc/pmc.c ****  * \brief Is PLLA locked?
 597:../asf/sam/drivers/pmc/pmc.c ****  *
 598:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Not locked.
 599:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Locked.
 600:../asf/sam/drivers/pmc/pmc.c ****  */
 601:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_is_locked_pllack(void)
 602:../asf/sam/drivers/pmc/pmc.c **** {
 1320              		.loc 1 602 0
 1321              		.cfi_startproc
 1322              		@ args = 0, pretend = 0, frame = 0
 1323              		@ frame_needed = 0, uses_anonymous_args = 0
 1324              		@ link register save eliminated.
 603:../asf/sam/drivers/pmc/pmc.c **** 	return (PMC->PMC_SR & PMC_SR_LOCKA);
 1325              		.loc 1 603 0
 1326 0000 024B     		ldr	r3, .L186
 1327 0002 986E     		ldr	r0, [r3, #104]
 604:../asf/sam/drivers/pmc/pmc.c **** }
ARM GAS  /tmp/ccTYR2Ee.s 			page 36


 1328              		.loc 1 604 0
 1329 0004 00F00200 		and	r0, r0, #2
 1330 0008 7047     		bx	lr
 1331              	.L187:
 1332 000a 00BF     		.align	2
 1333              	.L186:
 1334 000c 00060E40 		.word	1074660864
 1335              		.cfi_endproc
 1336              	.LFE166:
 1337              		.size	pmc_is_locked_pllack, .-pmc_is_locked_pllack
 1338              		.section	.text.pmc_enable_upll_clock,"ax",%progbits
 1339              		.align	1
 1340              		.p2align 2,,3
 1341              		.global	pmc_enable_upll_clock
 1342              		.syntax unified
 1343              		.thumb
 1344              		.thumb_func
 1345              		.fpu fpv5-d16
 1346              		.type	pmc_enable_upll_clock, %function
 1347              	pmc_enable_upll_clock:
 1348              	.LFB167:
 605:../asf/sam/drivers/pmc/pmc.c **** 
 606:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3S || SAM4S || SAM4C || SAM4CM || SAM4CP || SAMG55)
 607:../asf/sam/drivers/pmc/pmc.c **** /**
 608:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable PLLB clock.
 609:../asf/sam/drivers/pmc/pmc.c ****  *
 610:../asf/sam/drivers/pmc/pmc.c ****  * \param mulb PLLB multiplier.
 611:../asf/sam/drivers/pmc/pmc.c ****  * \param pllbcount PLLB counter.
 612:../asf/sam/drivers/pmc/pmc.c ****  * \param divb Divider.
 613:../asf/sam/drivers/pmc/pmc.c ****  */
 614:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_pllbck(uint32_t mulb, uint32_t pllbcount, uint32_t divb)
 615:../asf/sam/drivers/pmc/pmc.c **** {
 616:../asf/sam/drivers/pmc/pmc.c **** 	/* first disable the PLL to unlock the lock */
 617:../asf/sam/drivers/pmc/pmc.c **** 	pmc_disable_pllbck();
 618:../asf/sam/drivers/pmc/pmc.c **** 
 619:../asf/sam/drivers/pmc/pmc.c **** #if SAMG55
 620:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_PLLAR = CKGR_PLLAR_PLLAEN(divb) |
 621:../asf/sam/drivers/pmc/pmc.c **** 		CKGR_PLLAR_PLLACOUNT(pllbcount) | CKGR_PLLAR_MULA(mulb);
 622:../asf/sam/drivers/pmc/pmc.c **** #else
 623:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_PLLBR =
 624:../asf/sam/drivers/pmc/pmc.c **** 			CKGR_PLLBR_DIVB(divb) | CKGR_PLLBR_PLLBCOUNT(pllbcount)
 625:../asf/sam/drivers/pmc/pmc.c **** 			| CKGR_PLLBR_MULB(mulb);
 626:../asf/sam/drivers/pmc/pmc.c **** #endif
 627:../asf/sam/drivers/pmc/pmc.c **** 	while ((PMC->PMC_SR & PMC_SR_LOCKB) == 0);
 628:../asf/sam/drivers/pmc/pmc.c **** }
 629:../asf/sam/drivers/pmc/pmc.c **** 
 630:../asf/sam/drivers/pmc/pmc.c **** /**
 631:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable PLLB clock.
 632:../asf/sam/drivers/pmc/pmc.c ****  */
 633:../asf/sam/drivers/pmc/pmc.c **** void pmc_disable_pllbck(void)
 634:../asf/sam/drivers/pmc/pmc.c **** {
 635:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_PLLBR = CKGR_PLLBR_MULB(0);
 636:../asf/sam/drivers/pmc/pmc.c **** }
 637:../asf/sam/drivers/pmc/pmc.c **** 
 638:../asf/sam/drivers/pmc/pmc.c **** /**
 639:../asf/sam/drivers/pmc/pmc.c ****  * \brief Is PLLB locked?
 640:../asf/sam/drivers/pmc/pmc.c ****  *
ARM GAS  /tmp/ccTYR2Ee.s 			page 37


 641:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Not locked.
 642:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Locked.
 643:../asf/sam/drivers/pmc/pmc.c ****  */
 644:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_is_locked_pllbck(void)
 645:../asf/sam/drivers/pmc/pmc.c **** {
 646:../asf/sam/drivers/pmc/pmc.c **** 	return (PMC->PMC_SR & PMC_SR_LOCKB);
 647:../asf/sam/drivers/pmc/pmc.c **** }
 648:../asf/sam/drivers/pmc/pmc.c **** #endif
 649:../asf/sam/drivers/pmc/pmc.c **** 
 650:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3XA || SAM3U || SAMV71 || SAMV70 || SAME70 || SAMS70)
 651:../asf/sam/drivers/pmc/pmc.c **** /**
 652:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable UPLL clock.
 653:../asf/sam/drivers/pmc/pmc.c ****  */
 654:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_upll_clock(void)
 655:../asf/sam/drivers/pmc/pmc.c **** {
 1349              		.loc 1 655 0
 1350              		.cfi_startproc
 1351              		@ args = 0, pretend = 0, frame = 0
 1352              		@ frame_needed = 0, uses_anonymous_args = 0
 1353              		@ link register save eliminated.
 656:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_UCKR = CKGR_UCKR_UPLLCOUNT(3) | CKGR_UCKR_UPLLEN;
 1354              		.loc 1 656 0
 1355 0000 044B     		ldr	r3, .L192
 1356 0002 4FF44411 		mov	r1, #3211264
 657:../asf/sam/drivers/pmc/pmc.c **** 
 658:../asf/sam/drivers/pmc/pmc.c **** 	/* Wait UTMI PLL Lock Status */
 659:../asf/sam/drivers/pmc/pmc.c **** 	while (!(PMC->PMC_SR & PMC_SR_LOCKU));
 1357              		.loc 1 659 0
 1358 0006 1A46     		mov	r2, r3
 656:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_UCKR = CKGR_UCKR_UPLLCOUNT(3) | CKGR_UCKR_UPLLEN;
 1359              		.loc 1 656 0
 1360 0008 D961     		str	r1, [r3, #28]
 1361              	.L189:
 1362              		.loc 1 659 0 discriminator 1
 1363 000a 936E     		ldr	r3, [r2, #104]
 1364 000c 5B06     		lsls	r3, r3, #25
 1365 000e FCD5     		bpl	.L189
 660:../asf/sam/drivers/pmc/pmc.c **** }
 1366              		.loc 1 660 0
 1367 0010 7047     		bx	lr
 1368              	.L193:
 1369 0012 00BF     		.align	2
 1370              	.L192:
 1371 0014 00060E40 		.word	1074660864
 1372              		.cfi_endproc
 1373              	.LFE167:
 1374              		.size	pmc_enable_upll_clock, .-pmc_enable_upll_clock
 1375              		.section	.text.pmc_disable_upll_clock,"ax",%progbits
 1376              		.align	1
 1377              		.p2align 2,,3
 1378              		.global	pmc_disable_upll_clock
 1379              		.syntax unified
 1380              		.thumb
 1381              		.thumb_func
 1382              		.fpu fpv5-d16
 1383              		.type	pmc_disable_upll_clock, %function
 1384              	pmc_disable_upll_clock:
ARM GAS  /tmp/ccTYR2Ee.s 			page 38


 1385              	.LFB168:
 661:../asf/sam/drivers/pmc/pmc.c **** 
 662:../asf/sam/drivers/pmc/pmc.c **** /**
 663:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable UPLL clock.
 664:../asf/sam/drivers/pmc/pmc.c ****  */
 665:../asf/sam/drivers/pmc/pmc.c **** void pmc_disable_upll_clock(void)
 666:../asf/sam/drivers/pmc/pmc.c **** {
 1386              		.loc 1 666 0
 1387              		.cfi_startproc
 1388              		@ args = 0, pretend = 0, frame = 0
 1389              		@ frame_needed = 0, uses_anonymous_args = 0
 1390              		@ link register save eliminated.
 667:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_UCKR &= ~CKGR_UCKR_UPLLEN;
 1391              		.loc 1 667 0
 1392 0000 024A     		ldr	r2, .L195
 1393 0002 D369     		ldr	r3, [r2, #28]
 1394 0004 23F48033 		bic	r3, r3, #65536
 1395 0008 D361     		str	r3, [r2, #28]
 1396 000a 7047     		bx	lr
 1397              	.L196:
 1398              		.align	2
 1399              	.L195:
 1400 000c 00060E40 		.word	1074660864
 1401              		.cfi_endproc
 1402              	.LFE168:
 1403              		.size	pmc_disable_upll_clock, .-pmc_disable_upll_clock
 1404              		.section	.text.pmc_is_locked_upll,"ax",%progbits
 1405              		.align	1
 1406              		.p2align 2,,3
 1407              		.global	pmc_is_locked_upll
 1408              		.syntax unified
 1409              		.thumb
 1410              		.thumb_func
 1411              		.fpu fpv5-d16
 1412              		.type	pmc_is_locked_upll, %function
 1413              	pmc_is_locked_upll:
 1414              	.LFB169:
 668:../asf/sam/drivers/pmc/pmc.c **** }
 669:../asf/sam/drivers/pmc/pmc.c **** 
 670:../asf/sam/drivers/pmc/pmc.c **** /**
 671:../asf/sam/drivers/pmc/pmc.c ****  * \brief Is UPLL locked?
 672:../asf/sam/drivers/pmc/pmc.c ****  *
 673:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Not locked.
 674:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Locked.
 675:../asf/sam/drivers/pmc/pmc.c ****  */
 676:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_is_locked_upll(void)
 677:../asf/sam/drivers/pmc/pmc.c **** {
 1415              		.loc 1 677 0
 1416              		.cfi_startproc
 1417              		@ args = 0, pretend = 0, frame = 0
 1418              		@ frame_needed = 0, uses_anonymous_args = 0
 1419              		@ link register save eliminated.
 678:../asf/sam/drivers/pmc/pmc.c **** 	return (PMC->PMC_SR & PMC_SR_LOCKU);
 1420              		.loc 1 678 0
 1421 0000 024B     		ldr	r3, .L198
 1422 0002 986E     		ldr	r0, [r3, #104]
 679:../asf/sam/drivers/pmc/pmc.c **** }
ARM GAS  /tmp/ccTYR2Ee.s 			page 39


 1423              		.loc 1 679 0
 1424 0004 00F04000 		and	r0, r0, #64
 1425 0008 7047     		bx	lr
 1426              	.L199:
 1427 000a 00BF     		.align	2
 1428              	.L198:
 1429 000c 00060E40 		.word	1074660864
 1430              		.cfi_endproc
 1431              	.LFE169:
 1432              		.size	pmc_is_locked_upll, .-pmc_is_locked_upll
 1433              		.section	.text.pmc_enable_periph_clk,"ax",%progbits
 1434              		.align	1
 1435              		.p2align 2,,3
 1436              		.global	pmc_enable_periph_clk
 1437              		.syntax unified
 1438              		.thumb
 1439              		.thumb_func
 1440              		.fpu fpv5-d16
 1441              		.type	pmc_enable_periph_clk, %function
 1442              	pmc_enable_periph_clk:
 1443              	.LFB170:
 680:../asf/sam/drivers/pmc/pmc.c **** #endif
 681:../asf/sam/drivers/pmc/pmc.c **** 
 682:../asf/sam/drivers/pmc/pmc.c **** /**
 683:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable the specified peripheral clock.
 684:../asf/sam/drivers/pmc/pmc.c ****  *
 685:../asf/sam/drivers/pmc/pmc.c ****  * \note The ID must NOT be shifted (i.e., 1 << ID_xxx).
 686:../asf/sam/drivers/pmc/pmc.c ****  *
 687:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Peripheral ID (ID_xxx).
 688:../asf/sam/drivers/pmc/pmc.c ****  *
 689:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
 690:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Invalid parameter.
 691:../asf/sam/drivers/pmc/pmc.c ****  */
 692:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_enable_periph_clk(uint32_t ul_id)
 693:../asf/sam/drivers/pmc/pmc.c **** {
 1444              		.loc 1 693 0
 1445              		.cfi_startproc
 1446              		@ args = 0, pretend = 0, frame = 0
 1447              		@ frame_needed = 0, uses_anonymous_args = 0
 1448              		@ link register save eliminated.
 1449              	.LVL90:
 694:../asf/sam/drivers/pmc/pmc.c **** 	if (ul_id > MAX_PERIPH_ID) {
 1450              		.loc 1 694 0
 1451 0000 3F28     		cmp	r0, #63
 1452 0002 1AD8     		bhi	.L203
 695:../asf/sam/drivers/pmc/pmc.c **** 		return 1;
 696:../asf/sam/drivers/pmc/pmc.c **** 	}
 697:../asf/sam/drivers/pmc/pmc.c **** 
 698:../asf/sam/drivers/pmc/pmc.c **** 	if (ul_id < 32) {
 1453              		.loc 1 698 0
 1454 0004 1F28     		cmp	r0, #31
 1455 0006 0AD8     		bhi	.L202
 699:../asf/sam/drivers/pmc/pmc.c **** 		if ((PMC->PMC_PCSR0 & (1u << ul_id)) != (1u << ul_id)) {
 1456              		.loc 1 699 0
 1457 0008 0123     		movs	r3, #1
 1458 000a 0E4A     		ldr	r2, .L206
 1459 000c 03FA00F0 		lsl	r0, r3, r0
ARM GAS  /tmp/ccTYR2Ee.s 			page 40


 1460              	.LVL91:
 1461 0010 9169     		ldr	r1, [r2, #24]
 1462 0012 30EA0103 		bics	r3, r0, r1
 1463 0016 12D0     		beq	.L205
 700:../asf/sam/drivers/pmc/pmc.c **** 			PMC->PMC_PCER0 = 1 << ul_id;
 1464              		.loc 1 700 0
 1465 0018 1061     		str	r0, [r2, #16]
 701:../asf/sam/drivers/pmc/pmc.c **** 		}
 702:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3S || SAM3XA || SAM4S || SAM4E || SAM4C || SAM4CM || SAM4CP || SAMG55 || SAMV71 || SAMV70 |
 703:../asf/sam/drivers/pmc/pmc.c **** 	} else {
 704:../asf/sam/drivers/pmc/pmc.c **** 		ul_id -= 32;
 705:../asf/sam/drivers/pmc/pmc.c **** 		if ((PMC->PMC_PCSR1 & (1u << ul_id)) != (1u << ul_id)) {
 706:../asf/sam/drivers/pmc/pmc.c **** 			PMC->PMC_PCER1 = 1 << ul_id;
 707:../asf/sam/drivers/pmc/pmc.c **** 		}
 708:../asf/sam/drivers/pmc/pmc.c **** #endif
 709:../asf/sam/drivers/pmc/pmc.c **** 	}
 710:../asf/sam/drivers/pmc/pmc.c **** 
 711:../asf/sam/drivers/pmc/pmc.c **** 	return 0;
 1466              		.loc 1 711 0
 1467 001a 0020     		movs	r0, #0
 1468 001c 7047     		bx	lr
 1469              	.LVL92:
 1470              	.L202:
 705:../asf/sam/drivers/pmc/pmc.c **** 			PMC->PMC_PCER1 = 1 << ul_id;
 1471              		.loc 1 705 0
 1472 001e 0123     		movs	r3, #1
 704:../asf/sam/drivers/pmc/pmc.c **** 		if ((PMC->PMC_PCSR1 & (1u << ul_id)) != (1u << ul_id)) {
 1473              		.loc 1 704 0
 1474 0020 2038     		subs	r0, r0, #32
 1475              	.LVL93:
 705:../asf/sam/drivers/pmc/pmc.c **** 			PMC->PMC_PCER1 = 1 << ul_id;
 1476              		.loc 1 705 0
 1477 0022 084A     		ldr	r2, .L206
 1478 0024 03FA00F0 		lsl	r0, r3, r0
 1479              	.LVL94:
 1480 0028 D2F80831 		ldr	r3, [r2, #264]
 1481 002c 30EA0303 		bics	r3, r0, r3
 1482 0030 05D0     		beq	.L205
 706:../asf/sam/drivers/pmc/pmc.c **** 		}
 1483              		.loc 1 706 0
 1484 0032 C2F80001 		str	r0, [r2, #256]
 1485              		.loc 1 711 0
 1486 0036 0020     		movs	r0, #0
 1487 0038 7047     		bx	lr
 1488              	.LVL95:
 1489              	.L203:
 695:../asf/sam/drivers/pmc/pmc.c **** 	}
 1490              		.loc 1 695 0
 1491 003a 0120     		movs	r0, #1
 1492              	.LVL96:
 1493 003c 7047     		bx	lr
 1494              	.LVL97:
 1495              	.L205:
 1496              		.loc 1 711 0
 1497 003e 0020     		movs	r0, #0
 712:../asf/sam/drivers/pmc/pmc.c **** }
 1498              		.loc 1 712 0
ARM GAS  /tmp/ccTYR2Ee.s 			page 41


 1499 0040 7047     		bx	lr
 1500              	.L207:
 1501 0042 00BF     		.align	2
 1502              	.L206:
 1503 0044 00060E40 		.word	1074660864
 1504              		.cfi_endproc
 1505              	.LFE170:
 1506              		.size	pmc_enable_periph_clk, .-pmc_enable_periph_clk
 1507              		.section	.text.pmc_disable_periph_clk,"ax",%progbits
 1508              		.align	1
 1509              		.p2align 2,,3
 1510              		.global	pmc_disable_periph_clk
 1511              		.syntax unified
 1512              		.thumb
 1513              		.thumb_func
 1514              		.fpu fpv5-d16
 1515              		.type	pmc_disable_periph_clk, %function
 1516              	pmc_disable_periph_clk:
 1517              	.LFB171:
 713:../asf/sam/drivers/pmc/pmc.c **** 
 714:../asf/sam/drivers/pmc/pmc.c **** /**
 715:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable the specified peripheral clock.
 716:../asf/sam/drivers/pmc/pmc.c ****  *
 717:../asf/sam/drivers/pmc/pmc.c ****  * \note The ID must NOT be shifted (i.e., 1 << ID_xxx).
 718:../asf/sam/drivers/pmc/pmc.c ****  *
 719:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Peripheral ID (ID_xxx).
 720:../asf/sam/drivers/pmc/pmc.c ****  *
 721:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
 722:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Invalid parameter.
 723:../asf/sam/drivers/pmc/pmc.c ****  */
 724:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_disable_periph_clk(uint32_t ul_id)
 725:../asf/sam/drivers/pmc/pmc.c **** {
 1518              		.loc 1 725 0
 1519              		.cfi_startproc
 1520              		@ args = 0, pretend = 0, frame = 0
 1521              		@ frame_needed = 0, uses_anonymous_args = 0
 1522              		@ link register save eliminated.
 1523              	.LVL98:
 726:../asf/sam/drivers/pmc/pmc.c **** 	if (ul_id > MAX_PERIPH_ID) {
 1524              		.loc 1 726 0
 1525 0000 3F28     		cmp	r0, #63
 1526 0002 19D8     		bhi	.L211
 727:../asf/sam/drivers/pmc/pmc.c **** 		return 1;
 728:../asf/sam/drivers/pmc/pmc.c **** 	}
 729:../asf/sam/drivers/pmc/pmc.c **** 
 730:../asf/sam/drivers/pmc/pmc.c **** 	if (ul_id < 32) {
 1527              		.loc 1 730 0
 1528 0004 1F28     		cmp	r0, #31
 1529 0006 09D8     		bhi	.L210
 731:../asf/sam/drivers/pmc/pmc.c **** 		if ((PMC->PMC_PCSR0 & (1u << ul_id)) == (1u << ul_id)) {
 1530              		.loc 1 731 0
 1531 0008 0123     		movs	r3, #1
 1532 000a 0E4A     		ldr	r2, .L215
 1533 000c 03FA00F0 		lsl	r0, r3, r0
 1534              	.LVL99:
 1535 0010 9169     		ldr	r1, [r2, #24]
 1536 0012 30EA0103 		bics	r3, r0, r1
ARM GAS  /tmp/ccTYR2Ee.s 			page 42


 1537 0016 11D0     		beq	.L214
 1538              	.LVL100:
 1539              	.L213:
 732:../asf/sam/drivers/pmc/pmc.c **** 			PMC->PMC_PCDR0 = 1 << ul_id;
 733:../asf/sam/drivers/pmc/pmc.c **** 		}
 734:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3S || SAM3XA || SAM4S || SAM4E || SAM4C || SAM4CM || SAM4CP || SAMG55 || SAMV71 \
 735:../asf/sam/drivers/pmc/pmc.c **** 		|| SAMV70 || SAME70 || SAMS70)
 736:../asf/sam/drivers/pmc/pmc.c **** 	} else {
 737:../asf/sam/drivers/pmc/pmc.c **** 		ul_id -= 32;
 738:../asf/sam/drivers/pmc/pmc.c **** 		if ((PMC->PMC_PCSR1 & (1u << ul_id)) == (1u << ul_id)) {
 739:../asf/sam/drivers/pmc/pmc.c **** 			PMC->PMC_PCDR1 = 1 << ul_id;
 740:../asf/sam/drivers/pmc/pmc.c **** 		}
 741:../asf/sam/drivers/pmc/pmc.c **** #endif
 742:../asf/sam/drivers/pmc/pmc.c **** 	}
 743:../asf/sam/drivers/pmc/pmc.c **** 	return 0;
 1540              		.loc 1 743 0
 1541 0018 0020     		movs	r0, #0
 744:../asf/sam/drivers/pmc/pmc.c **** }
 1542              		.loc 1 744 0
 1543 001a 7047     		bx	lr
 1544              	.LVL101:
 1545              	.L210:
 738:../asf/sam/drivers/pmc/pmc.c **** 			PMC->PMC_PCDR1 = 1 << ul_id;
 1546              		.loc 1 738 0
 1547 001c 0123     		movs	r3, #1
 737:../asf/sam/drivers/pmc/pmc.c **** 		if ((PMC->PMC_PCSR1 & (1u << ul_id)) == (1u << ul_id)) {
 1548              		.loc 1 737 0
 1549 001e 2038     		subs	r0, r0, #32
 1550              	.LVL102:
 738:../asf/sam/drivers/pmc/pmc.c **** 			PMC->PMC_PCDR1 = 1 << ul_id;
 1551              		.loc 1 738 0
 1552 0020 084A     		ldr	r2, .L215
 1553 0022 03FA00F0 		lsl	r0, r3, r0
 1554              	.LVL103:
 1555 0026 D2F80831 		ldr	r3, [r2, #264]
 1556 002a 30EA0303 		bics	r3, r0, r3
 1557 002e F3D1     		bne	.L213
 739:../asf/sam/drivers/pmc/pmc.c **** 		}
 1558              		.loc 1 739 0
 1559 0030 C2F80401 		str	r0, [r2, #260]
 743:../asf/sam/drivers/pmc/pmc.c **** }
 1560              		.loc 1 743 0
 1561 0034 0020     		movs	r0, #0
 1562 0036 7047     		bx	lr
 1563              	.LVL104:
 1564              	.L211:
 727:../asf/sam/drivers/pmc/pmc.c **** 	}
 1565              		.loc 1 727 0
 1566 0038 0120     		movs	r0, #1
 1567              	.LVL105:
 1568 003a 7047     		bx	lr
 1569              	.L214:
 732:../asf/sam/drivers/pmc/pmc.c **** 		}
 1570              		.loc 1 732 0
 1571 003c 5061     		str	r0, [r2, #20]
 743:../asf/sam/drivers/pmc/pmc.c **** }
 1572              		.loc 1 743 0
ARM GAS  /tmp/ccTYR2Ee.s 			page 43


 1573 003e 0020     		movs	r0, #0
 1574 0040 7047     		bx	lr
 1575              	.L216:
 1576 0042 00BF     		.align	2
 1577              	.L215:
 1578 0044 00060E40 		.word	1074660864
 1579              		.cfi_endproc
 1580              	.LFE171:
 1581              		.size	pmc_disable_periph_clk, .-pmc_disable_periph_clk
 1582              		.section	.text.pmc_enable_all_periph_clk,"ax",%progbits
 1583              		.align	1
 1584              		.p2align 2,,3
 1585              		.global	pmc_enable_all_periph_clk
 1586              		.syntax unified
 1587              		.thumb
 1588              		.thumb_func
 1589              		.fpu fpv5-d16
 1590              		.type	pmc_enable_all_periph_clk, %function
 1591              	pmc_enable_all_periph_clk:
 1592              	.LFB172:
 745:../asf/sam/drivers/pmc/pmc.c **** 
 746:../asf/sam/drivers/pmc/pmc.c **** /**
 747:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable all peripheral clocks.
 748:../asf/sam/drivers/pmc/pmc.c ****  */
 749:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_all_periph_clk(void)
 750:../asf/sam/drivers/pmc/pmc.c **** {
 1593              		.loc 1 750 0
 1594              		.cfi_startproc
 1595              		@ args = 0, pretend = 0, frame = 0
 1596              		@ frame_needed = 0, uses_anonymous_args = 0
 1597              		@ link register save eliminated.
 751:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCER0 = PMC_MASK_STATUS0;
 1598              		.loc 1 751 0
 1599 0000 094B     		ldr	r3, .L222
 1600 0002 6FF00301 		mvn	r1, #3
 752:../asf/sam/drivers/pmc/pmc.c **** 	while ((PMC->PMC_PCSR0 & PMC_MASK_STATUS0) != PMC_MASK_STATUS0);
 1601              		.loc 1 752 0
 1602 0006 1A46     		mov	r2, r3
 751:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCER0 = PMC_MASK_STATUS0;
 1603              		.loc 1 751 0
 1604 0008 1961     		str	r1, [r3, #16]
 1605              	.L218:
 1606              		.loc 1 752 0 discriminator 1
 1607 000a 9369     		ldr	r3, [r2, #24]
 1608 000c 23F00303 		bic	r3, r3, #3
 1609 0010 0433     		adds	r3, r3, #4
 1610 0012 FAD1     		bne	.L218
 753:../asf/sam/drivers/pmc/pmc.c **** 
 754:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3S || SAM3XA || SAM4S || SAM4E || SAM4C || SAM4CM || SAM4CP || SAMV71  \
 755:../asf/sam/drivers/pmc/pmc.c **** 		|| SAMV70 || SAME70 || SAMS70)
 756:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCER1 = PMC_MASK_STATUS1;
 1611              		.loc 1 756 0
 1612 0014 4FF0FF33 		mov	r3, #-1
 757:../asf/sam/drivers/pmc/pmc.c **** 	while ((PMC->PMC_PCSR1 & PMC_MASK_STATUS1) != PMC_MASK_STATUS1);
 1613              		.loc 1 757 0
 1614 0018 0349     		ldr	r1, .L222
 756:../asf/sam/drivers/pmc/pmc.c **** 	while ((PMC->PMC_PCSR1 & PMC_MASK_STATUS1) != PMC_MASK_STATUS1);
ARM GAS  /tmp/ccTYR2Ee.s 			page 44


 1615              		.loc 1 756 0
 1616 001a C2F80031 		str	r3, [r2, #256]
 1617              	.L219:
 1618              		.loc 1 757 0 discriminator 1
 1619 001e D1F80831 		ldr	r3, [r1, #264]
 1620 0022 0133     		adds	r3, r3, #1
 1621 0024 FBD1     		bne	.L219
 758:../asf/sam/drivers/pmc/pmc.c **** #endif
 759:../asf/sam/drivers/pmc/pmc.c **** }
 1622              		.loc 1 759 0
 1623 0026 7047     		bx	lr
 1624              	.L223:
 1625              		.align	2
 1626              	.L222:
 1627 0028 00060E40 		.word	1074660864
 1628              		.cfi_endproc
 1629              	.LFE172:
 1630              		.size	pmc_enable_all_periph_clk, .-pmc_enable_all_periph_clk
 1631              		.section	.text.pmc_disable_all_periph_clk,"ax",%progbits
 1632              		.align	1
 1633              		.p2align 2,,3
 1634              		.global	pmc_disable_all_periph_clk
 1635              		.syntax unified
 1636              		.thumb
 1637              		.thumb_func
 1638              		.fpu fpv5-d16
 1639              		.type	pmc_disable_all_periph_clk, %function
 1640              	pmc_disable_all_periph_clk:
 1641              	.LFB173:
 760:../asf/sam/drivers/pmc/pmc.c **** 
 761:../asf/sam/drivers/pmc/pmc.c **** /**
 762:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable all peripheral clocks.
 763:../asf/sam/drivers/pmc/pmc.c ****  */
 764:../asf/sam/drivers/pmc/pmc.c **** void pmc_disable_all_periph_clk(void)
 765:../asf/sam/drivers/pmc/pmc.c **** {
 1642              		.loc 1 765 0
 1643              		.cfi_startproc
 1644              		@ args = 0, pretend = 0, frame = 0
 1645              		@ frame_needed = 0, uses_anonymous_args = 0
 1646              		@ link register save eliminated.
 766:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCDR0 = PMC_MASK_STATUS0;
 1647              		.loc 1 766 0
 1648 0000 094B     		ldr	r3, .L229
 1649 0002 6FF00301 		mvn	r1, #3
 767:../asf/sam/drivers/pmc/pmc.c **** 	while ((PMC->PMC_PCSR0 & PMC_MASK_STATUS0) != 0);
 1650              		.loc 1 767 0
 1651 0006 1A46     		mov	r2, r3
 766:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCDR0 = PMC_MASK_STATUS0;
 1652              		.loc 1 766 0
 1653 0008 5961     		str	r1, [r3, #20]
 1654              	.L225:
 1655              		.loc 1 767 0 discriminator 1
 1656 000a 9369     		ldr	r3, [r2, #24]
 1657 000c 33F00303 		bics	r3, r3, #3
 1658 0010 FBD1     		bne	.L225
 768:../asf/sam/drivers/pmc/pmc.c **** 
 769:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3S || SAM3XA || SAM4S || SAM4E || SAM4C || SAM4CM || SAM4CP || SAMV71 \
ARM GAS  /tmp/ccTYR2Ee.s 			page 45


 770:../asf/sam/drivers/pmc/pmc.c **** 		|| SAMV70 || SAME70 || SAMS70)
 771:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCDR1 = PMC_MASK_STATUS1;
 1659              		.loc 1 771 0
 1660 0012 4FF0FF33 		mov	r3, #-1
 772:../asf/sam/drivers/pmc/pmc.c **** 	while ((PMC->PMC_PCSR1 & PMC_MASK_STATUS1) != 0);
 1661              		.loc 1 772 0
 1662 0016 0449     		ldr	r1, .L229
 771:../asf/sam/drivers/pmc/pmc.c **** 	while ((PMC->PMC_PCSR1 & PMC_MASK_STATUS1) != 0);
 1663              		.loc 1 771 0
 1664 0018 C2F80431 		str	r3, [r2, #260]
 1665              	.L226:
 1666              		.loc 1 772 0 discriminator 1
 1667 001c D1F80831 		ldr	r3, [r1, #264]
 1668 0020 002B     		cmp	r3, #0
 1669 0022 FBD1     		bne	.L226
 773:../asf/sam/drivers/pmc/pmc.c **** #endif
 774:../asf/sam/drivers/pmc/pmc.c **** }
 1670              		.loc 1 774 0
 1671 0024 7047     		bx	lr
 1672              	.L230:
 1673 0026 00BF     		.align	2
 1674              	.L229:
 1675 0028 00060E40 		.word	1074660864
 1676              		.cfi_endproc
 1677              	.LFE173:
 1678              		.size	pmc_disable_all_periph_clk, .-pmc_disable_all_periph_clk
 1679              		.section	.text.pmc_is_periph_clk_enabled,"ax",%progbits
 1680              		.align	1
 1681              		.p2align 2,,3
 1682              		.global	pmc_is_periph_clk_enabled
 1683              		.syntax unified
 1684              		.thumb
 1685              		.thumb_func
 1686              		.fpu fpv5-d16
 1687              		.type	pmc_is_periph_clk_enabled, %function
 1688              	pmc_is_periph_clk_enabled:
 1689              	.LFB174:
 775:../asf/sam/drivers/pmc/pmc.c **** 
 776:../asf/sam/drivers/pmc/pmc.c **** /**
 777:../asf/sam/drivers/pmc/pmc.c ****  * \brief Check if the specified peripheral clock is enabled.
 778:../asf/sam/drivers/pmc/pmc.c ****  *
 779:../asf/sam/drivers/pmc/pmc.c ****  * \note The ID must NOT be shifted (i.e., 1 << ID_xxx).
 780:../asf/sam/drivers/pmc/pmc.c ****  *
 781:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Peripheral ID (ID_xxx).
 782:../asf/sam/drivers/pmc/pmc.c ****  *
 783:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Peripheral clock is disabled or unknown.
 784:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Peripheral clock is enabled.
 785:../asf/sam/drivers/pmc/pmc.c ****  */
 786:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_is_periph_clk_enabled(uint32_t ul_id)
 787:../asf/sam/drivers/pmc/pmc.c **** {
 1690              		.loc 1 787 0
 1691              		.cfi_startproc
 1692              		@ args = 0, pretend = 0, frame = 0
 1693              		@ frame_needed = 0, uses_anonymous_args = 0
 1694              		@ link register save eliminated.
 1695              	.LVL106:
 788:../asf/sam/drivers/pmc/pmc.c **** 	if (ul_id > MAX_PERIPH_ID) {
ARM GAS  /tmp/ccTYR2Ee.s 			page 46


 1696              		.loc 1 788 0
 1697 0000 3F28     		cmp	r0, #63
 1698 0002 17D8     		bhi	.L234
 789:../asf/sam/drivers/pmc/pmc.c **** 		return 0;
 790:../asf/sam/drivers/pmc/pmc.c **** 	}
 791:../asf/sam/drivers/pmc/pmc.c **** 
 792:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3S || SAM3XA || SAM4S || SAM4E || SAM4C || SAM4CM || SAM4CP || SAMV71 \
 793:../asf/sam/drivers/pmc/pmc.c **** 		|| SAMV70 || SAME70 || SAMS70)
 794:../asf/sam/drivers/pmc/pmc.c **** 	if (ul_id < 32) {
 1699              		.loc 1 794 0
 1700 0004 1F28     		cmp	r0, #31
 1701 0006 09D8     		bhi	.L233
 795:../asf/sam/drivers/pmc/pmc.c **** #endif
 796:../asf/sam/drivers/pmc/pmc.c **** 		if ((PMC->PMC_PCSR0 & (1u << ul_id))) {
 1702              		.loc 1 796 0
 1703 0008 0123     		movs	r3, #1
 1704 000a 0B4A     		ldr	r2, .L235
 1705 000c 03FA00F0 		lsl	r0, r3, r0
 1706              	.LVL107:
 1707 0010 9269     		ldr	r2, [r2, #24]
 1708 0012 1042     		tst	r0, r2
 1709 0014 14BF     		ite	ne
 1710 0016 1846     		movne	r0, r3
 1711 0018 0020     		moveq	r0, #0
 1712 001a 7047     		bx	lr
 1713              	.LVL108:
 1714              	.L233:
 797:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 798:../asf/sam/drivers/pmc/pmc.c **** 		} else {
 799:../asf/sam/drivers/pmc/pmc.c **** 			return 0;
 800:../asf/sam/drivers/pmc/pmc.c **** 		}
 801:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3S || SAM3XA || SAM4S || SAM4E || SAM4C || SAM4CM || SAM4CP || SAMV71 \
 802:../asf/sam/drivers/pmc/pmc.c **** 		|| SAMV70 || SAME70 || SAMS70)
 803:../asf/sam/drivers/pmc/pmc.c **** 	} else {
 804:../asf/sam/drivers/pmc/pmc.c **** 		ul_id -= 32;
 805:../asf/sam/drivers/pmc/pmc.c **** 		if ((PMC->PMC_PCSR1 & (1u << ul_id))) {
 1715              		.loc 1 805 0
 1716 001c 0123     		movs	r3, #1
 1717 001e 064A     		ldr	r2, .L235
 804:../asf/sam/drivers/pmc/pmc.c **** 		if ((PMC->PMC_PCSR1 & (1u << ul_id))) {
 1718              		.loc 1 804 0
 1719 0020 2038     		subs	r0, r0, #32
 1720              	.LVL109:
 1721              		.loc 1 805 0
 1722 0022 03FA00F0 		lsl	r0, r3, r0
 1723              	.LVL110:
 1724 0026 D2F80831 		ldr	r3, [r2, #264]
 1725 002a 1842     		tst	r0, r3
 1726 002c 14BF     		ite	ne
 1727 002e 0120     		movne	r0, #1
 1728 0030 0020     		moveq	r0, #0
 1729 0032 7047     		bx	lr
 1730              	.LVL111:
 1731              	.L234:
 789:../asf/sam/drivers/pmc/pmc.c **** 	}
 1732              		.loc 1 789 0
 1733 0034 0020     		movs	r0, #0
ARM GAS  /tmp/ccTYR2Ee.s 			page 47


 1734              	.LVL112:
 806:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 807:../asf/sam/drivers/pmc/pmc.c **** 		} else {
 808:../asf/sam/drivers/pmc/pmc.c **** 			return 0;
 809:../asf/sam/drivers/pmc/pmc.c **** 		}
 810:../asf/sam/drivers/pmc/pmc.c **** 	}
 811:../asf/sam/drivers/pmc/pmc.c **** #endif
 812:../asf/sam/drivers/pmc/pmc.c **** }
 1735              		.loc 1 812 0
 1736 0036 7047     		bx	lr
 1737              	.L236:
 1738              		.align	2
 1739              	.L235:
 1740 0038 00060E40 		.word	1074660864
 1741              		.cfi_endproc
 1742              	.LFE174:
 1743              		.size	pmc_is_periph_clk_enabled, .-pmc_is_periph_clk_enabled
 1744              		.section	.text.pmc_pck_set_prescaler,"ax",%progbits
 1745              		.align	1
 1746              		.p2align 2,,3
 1747              		.global	pmc_pck_set_prescaler
 1748              		.syntax unified
 1749              		.thumb
 1750              		.thumb_func
 1751              		.fpu fpv5-d16
 1752              		.type	pmc_pck_set_prescaler, %function
 1753              	pmc_pck_set_prescaler:
 1754              	.LFB175:
 813:../asf/sam/drivers/pmc/pmc.c **** 
 814:../asf/sam/drivers/pmc/pmc.c **** /**
 815:../asf/sam/drivers/pmc/pmc.c ****  * \brief Set the prescaler for the specified programmable clock.
 816:../asf/sam/drivers/pmc/pmc.c ****  *
 817:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Peripheral ID.
 818:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_pres Prescaler value.
 819:../asf/sam/drivers/pmc/pmc.c ****  */
 820:../asf/sam/drivers/pmc/pmc.c **** void pmc_pck_set_prescaler(uint32_t ul_id, uint32_t ul_pres)
 821:../asf/sam/drivers/pmc/pmc.c **** {
 1755              		.loc 1 821 0
 1756              		.cfi_startproc
 1757              		@ args = 0, pretend = 0, frame = 0
 1758              		@ frame_needed = 0, uses_anonymous_args = 0
 1759              		@ link register save eliminated.
 1760              	.LVL113:
 1761 0000 0B4B     		ldr	r3, .L247
 1762 0002 4FF48072 		mov	r2, #256
 1763 0006 10B4     		push	{r4}
 1764              		.cfi_def_cfa_offset 4
 1765              		.cfi_offset 4, -4
 1766 0008 03EB8004 		add	r4, r3, r0, lsl #2
 1767 000c 02FA00F0 		lsl	r0, r2, r0
 1768              	.LVL114:
 822:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCK[ul_id] =
 823:../asf/sam/drivers/pmc/pmc.c **** 			(PMC->PMC_PCK[ul_id] & ~PMC_PCK_PRES_Msk) | ul_pres;
 1769              		.loc 1 823 0
 1770 0010 226C     		ldr	r2, [r4, #64]
 1771 0012 22F47F62 		bic	r2, r2, #4080
 1772 0016 1143     		orrs	r1, r1, r2
ARM GAS  /tmp/ccTYR2Ee.s 			page 48


 1773              	.LVL115:
 822:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCK[ul_id] =
 1774              		.loc 1 822 0
 1775 0018 2164     		str	r1, [r4, #64]
 824:../asf/sam/drivers/pmc/pmc.c **** 	while ((PMC->PMC_SCER & (PMC_SCER_PCK0 << ul_id))
 1776              		.loc 1 824 0
 1777 001a 02E0     		b	.L239
 1778              	.L246:
 825:../asf/sam/drivers/pmc/pmc.c **** 			&& !(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)));
 1779              		.loc 1 825 0
 1780 001c 9A6E     		ldr	r2, [r3, #104]
 1781 001e 0242     		tst	r2, r0
 1782 0020 02D1     		bne	.L237
 1783              	.L239:
 824:../asf/sam/drivers/pmc/pmc.c **** 	while ((PMC->PMC_SCER & (PMC_SCER_PCK0 << ul_id))
 1784              		.loc 1 824 0
 1785 0022 1A68     		ldr	r2, [r3]
 1786 0024 0242     		tst	r2, r0
 1787 0026 F9D1     		bne	.L246
 1788              	.L237:
 826:../asf/sam/drivers/pmc/pmc.c **** }
 1789              		.loc 1 826 0
 1790 0028 5DF8044B 		ldr	r4, [sp], #4
 1791              		.cfi_restore 4
 1792              		.cfi_def_cfa_offset 0
 1793 002c 7047     		bx	lr
 1794              	.L248:
 1795 002e 00BF     		.align	2
 1796              	.L247:
 1797 0030 00060E40 		.word	1074660864
 1798              		.cfi_endproc
 1799              	.LFE175:
 1800              		.size	pmc_pck_set_prescaler, .-pmc_pck_set_prescaler
 1801              		.section	.text.pmc_pck_set_source,"ax",%progbits
 1802              		.align	1
 1803              		.p2align 2,,3
 1804              		.global	pmc_pck_set_source
 1805              		.syntax unified
 1806              		.thumb
 1807              		.thumb_func
 1808              		.fpu fpv5-d16
 1809              		.type	pmc_pck_set_source, %function
 1810              	pmc_pck_set_source:
 1811              	.LFB176:
 827:../asf/sam/drivers/pmc/pmc.c **** 
 828:../asf/sam/drivers/pmc/pmc.c **** /**
 829:../asf/sam/drivers/pmc/pmc.c ****  * \brief Set the source oscillator for the specified programmable clock.
 830:../asf/sam/drivers/pmc/pmc.c ****  *
 831:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Peripheral ID.
 832:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_source Source selection value.
 833:../asf/sam/drivers/pmc/pmc.c ****  */
 834:../asf/sam/drivers/pmc/pmc.c **** void pmc_pck_set_source(uint32_t ul_id, uint32_t ul_source)
 835:../asf/sam/drivers/pmc/pmc.c **** {
 1812              		.loc 1 835 0
 1813              		.cfi_startproc
 1814              		@ args = 0, pretend = 0, frame = 0
 1815              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccTYR2Ee.s 			page 49


 1816              		@ link register save eliminated.
 1817              	.LVL116:
 1818 0000 0B4B     		ldr	r3, .L259
 1819 0002 4FF48072 		mov	r2, #256
 1820 0006 10B4     		push	{r4}
 1821              		.cfi_def_cfa_offset 4
 1822              		.cfi_offset 4, -4
 1823 0008 03EB8004 		add	r4, r3, r0, lsl #2
 1824 000c 02FA00F0 		lsl	r0, r2, r0
 1825              	.LVL117:
 836:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCK[ul_id] =
 837:../asf/sam/drivers/pmc/pmc.c **** 			(PMC->PMC_PCK[ul_id] & ~PMC_PCK_CSS_Msk) | ul_source;
 1826              		.loc 1 837 0
 1827 0010 226C     		ldr	r2, [r4, #64]
 1828 0012 22F00702 		bic	r2, r2, #7
 1829 0016 1143     		orrs	r1, r1, r2
 1830              	.LVL118:
 836:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCK[ul_id] =
 1831              		.loc 1 836 0
 1832 0018 2164     		str	r1, [r4, #64]
 838:../asf/sam/drivers/pmc/pmc.c **** 	while ((PMC->PMC_SCER & (PMC_SCER_PCK0 << ul_id))
 1833              		.loc 1 838 0
 1834 001a 02E0     		b	.L251
 1835              	.L258:
 839:../asf/sam/drivers/pmc/pmc.c **** 			&& !(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)));
 1836              		.loc 1 839 0
 1837 001c 9A6E     		ldr	r2, [r3, #104]
 1838 001e 0242     		tst	r2, r0
 1839 0020 02D1     		bne	.L249
 1840              	.L251:
 838:../asf/sam/drivers/pmc/pmc.c **** 	while ((PMC->PMC_SCER & (PMC_SCER_PCK0 << ul_id))
 1841              		.loc 1 838 0
 1842 0022 1A68     		ldr	r2, [r3]
 1843 0024 0242     		tst	r2, r0
 1844 0026 F9D1     		bne	.L258
 1845              	.L249:
 840:../asf/sam/drivers/pmc/pmc.c **** }
 1846              		.loc 1 840 0
 1847 0028 5DF8044B 		ldr	r4, [sp], #4
 1848              		.cfi_restore 4
 1849              		.cfi_def_cfa_offset 0
 1850 002c 7047     		bx	lr
 1851              	.L260:
 1852 002e 00BF     		.align	2
 1853              	.L259:
 1854 0030 00060E40 		.word	1074660864
 1855              		.cfi_endproc
 1856              	.LFE176:
 1857              		.size	pmc_pck_set_source, .-pmc_pck_set_source
 1858              		.section	.text.pmc_switch_pck_to_sclk,"ax",%progbits
 1859              		.align	1
 1860              		.p2align 2,,3
 1861              		.global	pmc_switch_pck_to_sclk
 1862              		.syntax unified
 1863              		.thumb
 1864              		.thumb_func
 1865              		.fpu fpv5-d16
ARM GAS  /tmp/ccTYR2Ee.s 			page 50


 1866              		.type	pmc_switch_pck_to_sclk, %function
 1867              	pmc_switch_pck_to_sclk:
 1868              	.LFB177:
 841:../asf/sam/drivers/pmc/pmc.c **** 
 842:../asf/sam/drivers/pmc/pmc.c **** /**
 843:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch programmable clock source selection to slow clock.
 844:../asf/sam/drivers/pmc/pmc.c ****  *
 845:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Id of the programmable clock.
 846:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_pres Programmable clock prescaler.
 847:../asf/sam/drivers/pmc/pmc.c ****  *
 848:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
 849:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Timeout error.
 850:../asf/sam/drivers/pmc/pmc.c ****  */
 851:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_switch_pck_to_sclk(uint32_t ul_id, uint32_t ul_pres)
 852:../asf/sam/drivers/pmc/pmc.c **** {
 1869              		.loc 1 852 0
 1870              		.cfi_startproc
 1871              		@ args = 0, pretend = 0, frame = 0
 1872              		@ frame_needed = 0, uses_anonymous_args = 0
 1873              		@ link register save eliminated.
 1874              	.LVL119:
 1875 0000 10B4     		push	{r4}
 1876              		.cfi_def_cfa_offset 4
 1877              		.cfi_offset 4, -4
 853:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_timeout;
 854:../asf/sam/drivers/pmc/pmc.c **** 
 855:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCK[ul_id] = PMC_PCK_CSS_SLOW_CLK | ul_pres;
 1878              		.loc 1 855 0
 1879 0002 0E4B     		ldr	r3, .L272
 856:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 857:../asf/sam/drivers/pmc/pmc.c **** 	!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)); --ul_timeout) {
 1880              		.loc 1 857 0
 1881 0004 4FF48072 		mov	r2, #256
 855:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 1882              		.loc 1 855 0
 1883 0008 00F11004 		add	r4, r0, #16
 1884              		.loc 1 857 0
 1885 000c 02FA00F0 		lsl	r0, r2, r0
 1886              	.LVL120:
 855:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 1887              		.loc 1 855 0
 1888 0010 43F82410 		str	r1, [r3, r4, lsl #2]
 1889              	.LVL121:
 1890              		.loc 1 857 0
 1891 0014 9A6E     		ldr	r2, [r3, #104]
 856:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 1892              		.loc 1 856 0
 1893 0016 0242     		tst	r2, r0
 1894 0018 08D1     		bne	.L269
 1895              		.loc 1 857 0 discriminator 1
 1896 001a 1946     		mov	r1, r3
 1897              	.LVL122:
 856:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 1898              		.loc 1 856 0 discriminator 1
 1899 001c 4FF48053 		mov	r3, #4096
 1900 0020 01E0     		b	.L264
 1901              	.LVL123:
ARM GAS  /tmp/ccTYR2Ee.s 			page 51


 1902              	.L265:
 858:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 1903              		.loc 1 858 0
 1904 0022 013B     		subs	r3, r3, #1
 1905              	.LVL124:
 1906 0024 06D0     		beq	.L271
 1907              	.LVL125:
 1908              	.L264:
 857:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 1909              		.loc 1 857 0 discriminator 1
 1910 0026 8A6E     		ldr	r2, [r1, #104]
 856:../asf/sam/drivers/pmc/pmc.c **** 	!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)); --ul_timeout) {
 1911              		.loc 1 856 0 discriminator 1
 1912 0028 0242     		tst	r2, r0
 1913 002a FAD0     		beq	.L265
 1914              	.LVL126:
 1915              	.L269:
 859:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 860:../asf/sam/drivers/pmc/pmc.c **** 		}
 861:../asf/sam/drivers/pmc/pmc.c **** 	}
 862:../asf/sam/drivers/pmc/pmc.c **** 
 863:../asf/sam/drivers/pmc/pmc.c **** 	return 0;
 1916              		.loc 1 863 0
 1917 002c 0020     		movs	r0, #0
 864:../asf/sam/drivers/pmc/pmc.c **** }
 1918              		.loc 1 864 0
 1919 002e 5DF8044B 		ldr	r4, [sp], #4
 1920              		.cfi_remember_state
 1921              		.cfi_restore 4
 1922              		.cfi_def_cfa_offset 0
 1923              	.LVL127:
 1924 0032 7047     		bx	lr
 1925              	.LVL128:
 1926              	.L271:
 1927              		.cfi_restore_state
 859:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 1928              		.loc 1 859 0
 1929 0034 0120     		movs	r0, #1
 1930              		.loc 1 864 0
 1931 0036 5DF8044B 		ldr	r4, [sp], #4
 1932              		.cfi_restore 4
 1933              		.cfi_def_cfa_offset 0
 1934              	.LVL129:
 1935 003a 7047     		bx	lr
 1936              	.L273:
 1937              		.align	2
 1938              	.L272:
 1939 003c 00060E40 		.word	1074660864
 1940              		.cfi_endproc
 1941              	.LFE177:
 1942              		.size	pmc_switch_pck_to_sclk, .-pmc_switch_pck_to_sclk
 1943              		.section	.text.pmc_switch_pck_to_mainck,"ax",%progbits
 1944              		.align	1
 1945              		.p2align 2,,3
 1946              		.global	pmc_switch_pck_to_mainck
 1947              		.syntax unified
 1948              		.thumb
ARM GAS  /tmp/ccTYR2Ee.s 			page 52


 1949              		.thumb_func
 1950              		.fpu fpv5-d16
 1951              		.type	pmc_switch_pck_to_mainck, %function
 1952              	pmc_switch_pck_to_mainck:
 1953              	.LFB178:
 865:../asf/sam/drivers/pmc/pmc.c **** 
 866:../asf/sam/drivers/pmc/pmc.c **** /**
 867:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch programmable clock source selection to main clock.
 868:../asf/sam/drivers/pmc/pmc.c ****  *
 869:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Id of the programmable clock.
 870:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_pres Programmable clock prescaler.
 871:../asf/sam/drivers/pmc/pmc.c ****  *
 872:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
 873:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Timeout error.
 874:../asf/sam/drivers/pmc/pmc.c ****  */
 875:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_switch_pck_to_mainck(uint32_t ul_id, uint32_t ul_pres)
 876:../asf/sam/drivers/pmc/pmc.c **** {
 1954              		.loc 1 876 0
 1955              		.cfi_startproc
 1956              		@ args = 0, pretend = 0, frame = 0
 1957              		@ frame_needed = 0, uses_anonymous_args = 0
 1958              		@ link register save eliminated.
 1959              	.LVL130:
 1960 0000 10B4     		push	{r4}
 1961              		.cfi_def_cfa_offset 4
 1962              		.cfi_offset 4, -4
 877:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_timeout;
 878:../asf/sam/drivers/pmc/pmc.c **** 
 879:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCK[ul_id] = PMC_PCK_CSS_MAIN_CLK | ul_pres;
 880:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 881:../asf/sam/drivers/pmc/pmc.c **** 	!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)); --ul_timeout) {
 1963              		.loc 1 881 0
 1964 0002 4FF48073 		mov	r3, #256
 879:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 1965              		.loc 1 879 0
 1966 0006 41F00104 		orr	r4, r1, #1
 1967 000a 00F11002 		add	r2, r0, #16
 1968 000e 0C49     		ldr	r1, .L285
 1969              	.LVL131:
 1970              		.loc 1 881 0
 1971 0010 03FA00F0 		lsl	r0, r3, r0
 1972              	.LVL132:
 879:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 1973              		.loc 1 879 0
 1974 0014 41F82240 		str	r4, [r1, r2, lsl #2]
 1975              	.LVL133:
 1976              		.loc 1 881 0
 1977 0018 8B6E     		ldr	r3, [r1, #104]
 880:../asf/sam/drivers/pmc/pmc.c **** 	!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)); --ul_timeout) {
 1978              		.loc 1 880 0
 1979 001a 0342     		tst	r3, r0
 1980 001c 07D1     		bne	.L282
 880:../asf/sam/drivers/pmc/pmc.c **** 	!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)); --ul_timeout) {
 1981              		.loc 1 880 0 is_stmt 0 discriminator 1
 1982 001e 4FF48053 		mov	r3, #4096
 1983 0022 01E0     		b	.L277
 1984              	.LVL134:
ARM GAS  /tmp/ccTYR2Ee.s 			page 53


 1985              	.L278:
 882:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 1986              		.loc 1 882 0 is_stmt 1
 1987 0024 013B     		subs	r3, r3, #1
 1988              	.LVL135:
 1989 0026 06D0     		beq	.L284
 1990              	.LVL136:
 1991              	.L277:
 881:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 1992              		.loc 1 881 0 discriminator 1
 1993 0028 8A6E     		ldr	r2, [r1, #104]
 880:../asf/sam/drivers/pmc/pmc.c **** 	!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)); --ul_timeout) {
 1994              		.loc 1 880 0 discriminator 1
 1995 002a 0242     		tst	r2, r0
 1996 002c FAD0     		beq	.L278
 1997              	.LVL137:
 1998              	.L282:
 883:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 884:../asf/sam/drivers/pmc/pmc.c **** 		}
 885:../asf/sam/drivers/pmc/pmc.c **** 	}
 886:../asf/sam/drivers/pmc/pmc.c **** 
 887:../asf/sam/drivers/pmc/pmc.c **** 	return 0;
 1999              		.loc 1 887 0
 2000 002e 0020     		movs	r0, #0
 888:../asf/sam/drivers/pmc/pmc.c **** }
 2001              		.loc 1 888 0
 2002 0030 5DF8044B 		ldr	r4, [sp], #4
 2003              		.cfi_remember_state
 2004              		.cfi_restore 4
 2005              		.cfi_def_cfa_offset 0
 2006 0034 7047     		bx	lr
 2007              	.LVL138:
 2008              	.L284:
 2009              		.cfi_restore_state
 883:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 2010              		.loc 1 883 0
 2011 0036 0120     		movs	r0, #1
 2012              		.loc 1 888 0
 2013 0038 5DF8044B 		ldr	r4, [sp], #4
 2014              		.cfi_restore 4
 2015              		.cfi_def_cfa_offset 0
 2016 003c 7047     		bx	lr
 2017              	.L286:
 2018 003e 00BF     		.align	2
 2019              	.L285:
 2020 0040 00060E40 		.word	1074660864
 2021              		.cfi_endproc
 2022              	.LFE178:
 2023              		.size	pmc_switch_pck_to_mainck, .-pmc_switch_pck_to_mainck
 2024              		.section	.text.pmc_switch_pck_to_pllack,"ax",%progbits
 2025              		.align	1
 2026              		.p2align 2,,3
 2027              		.global	pmc_switch_pck_to_pllack
 2028              		.syntax unified
 2029              		.thumb
 2030              		.thumb_func
 2031              		.fpu fpv5-d16
ARM GAS  /tmp/ccTYR2Ee.s 			page 54


 2032              		.type	pmc_switch_pck_to_pllack, %function
 2033              	pmc_switch_pck_to_pllack:
 2034              	.LFB179:
 889:../asf/sam/drivers/pmc/pmc.c **** 
 890:../asf/sam/drivers/pmc/pmc.c **** /**
 891:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch programmable clock source selection to PLLA clock.
 892:../asf/sam/drivers/pmc/pmc.c ****  *
 893:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Id of the programmable clock.
 894:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_pres Programmable clock prescaler.
 895:../asf/sam/drivers/pmc/pmc.c ****  *
 896:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
 897:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Timeout error.
 898:../asf/sam/drivers/pmc/pmc.c ****  */
 899:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_switch_pck_to_pllack(uint32_t ul_id, uint32_t ul_pres)
 900:../asf/sam/drivers/pmc/pmc.c **** {
 2035              		.loc 1 900 0
 2036              		.cfi_startproc
 2037              		@ args = 0, pretend = 0, frame = 0
 2038              		@ frame_needed = 0, uses_anonymous_args = 0
 2039              		@ link register save eliminated.
 2040              	.LVL139:
 2041 0000 10B4     		push	{r4}
 2042              		.cfi_def_cfa_offset 4
 2043              		.cfi_offset 4, -4
 901:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_timeout;
 902:../asf/sam/drivers/pmc/pmc.c **** 
 903:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCK[ul_id] = PMC_PCK_CSS_PLLA_CLK | ul_pres;
 904:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 905:../asf/sam/drivers/pmc/pmc.c **** 	!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)); --ul_timeout) {
 2044              		.loc 1 905 0
 2045 0002 4FF48073 		mov	r3, #256
 903:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 2046              		.loc 1 903 0
 2047 0006 41F00204 		orr	r4, r1, #2
 2048 000a 00F11002 		add	r2, r0, #16
 2049 000e 0C49     		ldr	r1, .L298
 2050              	.LVL140:
 2051              		.loc 1 905 0
 2052 0010 03FA00F0 		lsl	r0, r3, r0
 2053              	.LVL141:
 903:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 2054              		.loc 1 903 0
 2055 0014 41F82240 		str	r4, [r1, r2, lsl #2]
 2056              	.LVL142:
 2057              		.loc 1 905 0
 2058 0018 8B6E     		ldr	r3, [r1, #104]
 904:../asf/sam/drivers/pmc/pmc.c **** 	!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)); --ul_timeout) {
 2059              		.loc 1 904 0
 2060 001a 0342     		tst	r3, r0
 2061 001c 07D1     		bne	.L295
 904:../asf/sam/drivers/pmc/pmc.c **** 	!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)); --ul_timeout) {
 2062              		.loc 1 904 0 is_stmt 0 discriminator 1
 2063 001e 4FF48053 		mov	r3, #4096
 2064 0022 01E0     		b	.L290
 2065              	.LVL143:
 2066              	.L291:
 906:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
ARM GAS  /tmp/ccTYR2Ee.s 			page 55


 2067              		.loc 1 906 0 is_stmt 1
 2068 0024 013B     		subs	r3, r3, #1
 2069              	.LVL144:
 2070 0026 06D0     		beq	.L297
 2071              	.LVL145:
 2072              	.L290:
 905:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 2073              		.loc 1 905 0 discriminator 1
 2074 0028 8A6E     		ldr	r2, [r1, #104]
 904:../asf/sam/drivers/pmc/pmc.c **** 	!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)); --ul_timeout) {
 2075              		.loc 1 904 0 discriminator 1
 2076 002a 0242     		tst	r2, r0
 2077 002c FAD0     		beq	.L291
 2078              	.LVL146:
 2079              	.L295:
 907:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 908:../asf/sam/drivers/pmc/pmc.c **** 		}
 909:../asf/sam/drivers/pmc/pmc.c **** 	}
 910:../asf/sam/drivers/pmc/pmc.c **** 
 911:../asf/sam/drivers/pmc/pmc.c **** 	return 0;
 2080              		.loc 1 911 0
 2081 002e 0020     		movs	r0, #0
 912:../asf/sam/drivers/pmc/pmc.c **** }
 2082              		.loc 1 912 0
 2083 0030 5DF8044B 		ldr	r4, [sp], #4
 2084              		.cfi_remember_state
 2085              		.cfi_restore 4
 2086              		.cfi_def_cfa_offset 0
 2087 0034 7047     		bx	lr
 2088              	.LVL147:
 2089              	.L297:
 2090              		.cfi_restore_state
 907:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 2091              		.loc 1 907 0
 2092 0036 0120     		movs	r0, #1
 2093              		.loc 1 912 0
 2094 0038 5DF8044B 		ldr	r4, [sp], #4
 2095              		.cfi_restore 4
 2096              		.cfi_def_cfa_offset 0
 2097 003c 7047     		bx	lr
 2098              	.L299:
 2099 003e 00BF     		.align	2
 2100              	.L298:
 2101 0040 00060E40 		.word	1074660864
 2102              		.cfi_endproc
 2103              	.LFE179:
 2104              		.size	pmc_switch_pck_to_pllack, .-pmc_switch_pck_to_pllack
 2105              		.section	.text.pmc_switch_pck_to_upllck,"ax",%progbits
 2106              		.align	1
 2107              		.p2align 2,,3
 2108              		.global	pmc_switch_pck_to_upllck
 2109              		.syntax unified
 2110              		.thumb
 2111              		.thumb_func
 2112              		.fpu fpv5-d16
 2113              		.type	pmc_switch_pck_to_upllck, %function
 2114              	pmc_switch_pck_to_upllck:
ARM GAS  /tmp/ccTYR2Ee.s 			page 56


 2115              	.LFB180:
 913:../asf/sam/drivers/pmc/pmc.c **** 
 914:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3S || SAM4S || SAM4C || SAM4CM || SAM4CP || SAMG55)
 915:../asf/sam/drivers/pmc/pmc.c **** /**
 916:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch programmable clock source selection to PLLB clock.
 917:../asf/sam/drivers/pmc/pmc.c ****  *
 918:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Id of the programmable clock.
 919:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_pres Programmable clock prescaler.
 920:../asf/sam/drivers/pmc/pmc.c ****  *
 921:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
 922:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Timeout error.
 923:../asf/sam/drivers/pmc/pmc.c ****  */
 924:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_switch_pck_to_pllbck(uint32_t ul_id, uint32_t ul_pres)
 925:../asf/sam/drivers/pmc/pmc.c **** {
 926:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_timeout;
 927:../asf/sam/drivers/pmc/pmc.c **** 
 928:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCK[ul_id] = PMC_PCK_CSS_PLLB_CLK | ul_pres;
 929:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 930:../asf/sam/drivers/pmc/pmc.c **** 			!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id));
 931:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 932:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 933:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 934:../asf/sam/drivers/pmc/pmc.c **** 		}
 935:../asf/sam/drivers/pmc/pmc.c **** 	}
 936:../asf/sam/drivers/pmc/pmc.c **** 
 937:../asf/sam/drivers/pmc/pmc.c **** 	return 0;
 938:../asf/sam/drivers/pmc/pmc.c **** }
 939:../asf/sam/drivers/pmc/pmc.c **** #endif
 940:../asf/sam/drivers/pmc/pmc.c **** 
 941:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3XA || SAM3U || SAMV71 || SAMV70 || SAME70 || SAMS70)
 942:../asf/sam/drivers/pmc/pmc.c **** /**
 943:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch programmable clock source selection to UPLL clock.
 944:../asf/sam/drivers/pmc/pmc.c ****  *
 945:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Id of the programmable clock.
 946:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_pres Programmable clock prescaler.
 947:../asf/sam/drivers/pmc/pmc.c ****  *
 948:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
 949:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Timeout error.
 950:../asf/sam/drivers/pmc/pmc.c ****  */
 951:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_switch_pck_to_upllck(uint32_t ul_id, uint32_t ul_pres)
 952:../asf/sam/drivers/pmc/pmc.c **** {
 2116              		.loc 1 952 0
 2117              		.cfi_startproc
 2118              		@ args = 0, pretend = 0, frame = 0
 2119              		@ frame_needed = 0, uses_anonymous_args = 0
 2120              		@ link register save eliminated.
 2121              	.LVL148:
 2122 0000 10B4     		push	{r4}
 2123              		.cfi_def_cfa_offset 4
 2124              		.cfi_offset 4, -4
 953:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_timeout;
 954:../asf/sam/drivers/pmc/pmc.c **** 
 955:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCK[ul_id] = PMC_PCK_CSS_UPLL_CLK | ul_pres;
 956:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 957:../asf/sam/drivers/pmc/pmc.c **** 			!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id));
 2125              		.loc 1 957 0
 2126 0002 4FF48073 		mov	r3, #256
ARM GAS  /tmp/ccTYR2Ee.s 			page 57


 955:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 2127              		.loc 1 955 0
 2128 0006 41F00304 		orr	r4, r1, #3
 2129 000a 00F11002 		add	r2, r0, #16
 2130 000e 0C49     		ldr	r1, .L311
 2131              	.LVL149:
 2132              		.loc 1 957 0
 2133 0010 03FA00F0 		lsl	r0, r3, r0
 2134              	.LVL150:
 955:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 2135              		.loc 1 955 0
 2136 0014 41F82240 		str	r4, [r1, r2, lsl #2]
 2137              	.LVL151:
 2138              		.loc 1 957 0
 2139 0018 8B6E     		ldr	r3, [r1, #104]
 956:../asf/sam/drivers/pmc/pmc.c **** 			!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id));
 2140              		.loc 1 956 0
 2141 001a 0342     		tst	r3, r0
 2142 001c 07D1     		bne	.L308
 2143 001e 4FF48053 		mov	r3, #4096
 2144 0022 01E0     		b	.L303
 2145              	.LVL152:
 2146              	.L304:
 958:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 959:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 2147              		.loc 1 959 0
 2148 0024 013B     		subs	r3, r3, #1
 2149              	.LVL153:
 2150 0026 06D0     		beq	.L310
 2151              	.LVL154:
 2152              	.L303:
 957:../asf/sam/drivers/pmc/pmc.c **** 			--ul_timeout) {
 2153              		.loc 1 957 0
 2154 0028 8A6E     		ldr	r2, [r1, #104]
 956:../asf/sam/drivers/pmc/pmc.c **** 			!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id));
 2155              		.loc 1 956 0
 2156 002a 0242     		tst	r2, r0
 2157 002c FAD0     		beq	.L304
 2158              	.LVL155:
 2159              	.L308:
 960:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 961:../asf/sam/drivers/pmc/pmc.c **** 		}
 962:../asf/sam/drivers/pmc/pmc.c **** 	}
 963:../asf/sam/drivers/pmc/pmc.c **** 
 964:../asf/sam/drivers/pmc/pmc.c **** 	return 0;
 2160              		.loc 1 964 0
 2161 002e 0020     		movs	r0, #0
 965:../asf/sam/drivers/pmc/pmc.c **** }
 2162              		.loc 1 965 0
 2163 0030 5DF8044B 		ldr	r4, [sp], #4
 2164              		.cfi_remember_state
 2165              		.cfi_restore 4
 2166              		.cfi_def_cfa_offset 0
 2167 0034 7047     		bx	lr
 2168              	.LVL156:
 2169              	.L310:
 2170              		.cfi_restore_state
ARM GAS  /tmp/ccTYR2Ee.s 			page 58


 960:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 2171              		.loc 1 960 0
 2172 0036 0120     		movs	r0, #1
 2173              		.loc 1 965 0
 2174 0038 5DF8044B 		ldr	r4, [sp], #4
 2175              		.cfi_restore 4
 2176              		.cfi_def_cfa_offset 0
 2177 003c 7047     		bx	lr
 2178              	.L312:
 2179 003e 00BF     		.align	2
 2180              	.L311:
 2181 0040 00060E40 		.word	1074660864
 2182              		.cfi_endproc
 2183              	.LFE180:
 2184              		.size	pmc_switch_pck_to_upllck, .-pmc_switch_pck_to_upllck
 2185              		.section	.text.pmc_switch_pck_to_mck,"ax",%progbits
 2186              		.align	1
 2187              		.p2align 2,,3
 2188              		.global	pmc_switch_pck_to_mck
 2189              		.syntax unified
 2190              		.thumb
 2191              		.thumb_func
 2192              		.fpu fpv5-d16
 2193              		.type	pmc_switch_pck_to_mck, %function
 2194              	pmc_switch_pck_to_mck:
 2195              	.LFB181:
 966:../asf/sam/drivers/pmc/pmc.c **** #endif
 967:../asf/sam/drivers/pmc/pmc.c **** 
 968:../asf/sam/drivers/pmc/pmc.c **** /**
 969:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch programmable clock source selection to mck.
 970:../asf/sam/drivers/pmc/pmc.c ****  *
 971:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Id of the programmable clock.
 972:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_pres Programmable clock prescaler.
 973:../asf/sam/drivers/pmc/pmc.c ****  *
 974:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
 975:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Timeout error.
 976:../asf/sam/drivers/pmc/pmc.c ****  */
 977:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_switch_pck_to_mck(uint32_t ul_id, uint32_t ul_pres)
 978:../asf/sam/drivers/pmc/pmc.c **** {
 2196              		.loc 1 978 0
 2197              		.cfi_startproc
 2198              		@ args = 0, pretend = 0, frame = 0
 2199              		@ frame_needed = 0, uses_anonymous_args = 0
 2200              		@ link register save eliminated.
 2201              	.LVL157:
 2202 0000 10B4     		push	{r4}
 2203              		.cfi_def_cfa_offset 4
 2204              		.cfi_offset 4, -4
 979:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_timeout;
 980:../asf/sam/drivers/pmc/pmc.c **** 
 981:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_PCK[ul_id] = PMC_PCK_CSS_MCK | ul_pres;
 982:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 983:../asf/sam/drivers/pmc/pmc.c **** 	!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)); --ul_timeout) {
 2205              		.loc 1 983 0
 2206 0002 4FF48073 		mov	r3, #256
 981:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 2207              		.loc 1 981 0
ARM GAS  /tmp/ccTYR2Ee.s 			page 59


 2208 0006 41F00404 		orr	r4, r1, #4
 2209 000a 00F11002 		add	r2, r0, #16
 2210 000e 0C49     		ldr	r1, .L324
 2211              	.LVL158:
 2212              		.loc 1 983 0
 2213 0010 03FA00F0 		lsl	r0, r3, r0
 2214              	.LVL159:
 981:../asf/sam/drivers/pmc/pmc.c **** 	for (ul_timeout = PMC_TIMEOUT;
 2215              		.loc 1 981 0
 2216 0014 41F82240 		str	r4, [r1, r2, lsl #2]
 2217              	.LVL160:
 2218              		.loc 1 983 0
 2219 0018 8B6E     		ldr	r3, [r1, #104]
 982:../asf/sam/drivers/pmc/pmc.c **** 	!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)); --ul_timeout) {
 2220              		.loc 1 982 0
 2221 001a 0342     		tst	r3, r0
 2222 001c 07D1     		bne	.L321
 982:../asf/sam/drivers/pmc/pmc.c **** 	!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)); --ul_timeout) {
 2223              		.loc 1 982 0 is_stmt 0 discriminator 1
 2224 001e 4FF48053 		mov	r3, #4096
 2225 0022 01E0     		b	.L316
 2226              	.LVL161:
 2227              	.L317:
 984:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 2228              		.loc 1 984 0 is_stmt 1
 2229 0024 013B     		subs	r3, r3, #1
 2230              	.LVL162:
 2231 0026 06D0     		beq	.L323
 2232              	.LVL163:
 2233              	.L316:
 983:../asf/sam/drivers/pmc/pmc.c **** 		if (ul_timeout == 0) {
 2234              		.loc 1 983 0 discriminator 1
 2235 0028 8A6E     		ldr	r2, [r1, #104]
 982:../asf/sam/drivers/pmc/pmc.c **** 	!(PMC->PMC_SR & (PMC_SR_PCKRDY0 << ul_id)); --ul_timeout) {
 2236              		.loc 1 982 0 discriminator 1
 2237 002a 0242     		tst	r2, r0
 2238 002c FAD0     		beq	.L317
 2239              	.LVL164:
 2240              	.L321:
 985:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 986:../asf/sam/drivers/pmc/pmc.c **** 		}
 987:../asf/sam/drivers/pmc/pmc.c **** 	}
 988:../asf/sam/drivers/pmc/pmc.c **** 
 989:../asf/sam/drivers/pmc/pmc.c **** 	return 0;
 2241              		.loc 1 989 0
 2242 002e 0020     		movs	r0, #0
 990:../asf/sam/drivers/pmc/pmc.c **** }
 2243              		.loc 1 990 0
 2244 0030 5DF8044B 		ldr	r4, [sp], #4
 2245              		.cfi_remember_state
 2246              		.cfi_restore 4
 2247              		.cfi_def_cfa_offset 0
 2248 0034 7047     		bx	lr
 2249              	.LVL165:
 2250              	.L323:
 2251              		.cfi_restore_state
 985:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
ARM GAS  /tmp/ccTYR2Ee.s 			page 60


 2252              		.loc 1 985 0
 2253 0036 0120     		movs	r0, #1
 2254              		.loc 1 990 0
 2255 0038 5DF8044B 		ldr	r4, [sp], #4
 2256              		.cfi_restore 4
 2257              		.cfi_def_cfa_offset 0
 2258 003c 7047     		bx	lr
 2259              	.L325:
 2260 003e 00BF     		.align	2
 2261              	.L324:
 2262 0040 00060E40 		.word	1074660864
 2263              		.cfi_endproc
 2264              	.LFE181:
 2265              		.size	pmc_switch_pck_to_mck, .-pmc_switch_pck_to_mck
 2266              		.section	.text.pmc_enable_pck,"ax",%progbits
 2267              		.align	1
 2268              		.p2align 2,,3
 2269              		.global	pmc_enable_pck
 2270              		.syntax unified
 2271              		.thumb
 2272              		.thumb_func
 2273              		.fpu fpv5-d16
 2274              		.type	pmc_enable_pck, %function
 2275              	pmc_enable_pck:
 2276              	.LFB182:
 991:../asf/sam/drivers/pmc/pmc.c **** 
 992:../asf/sam/drivers/pmc/pmc.c **** /**
 993:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable the specified programmable clock.
 994:../asf/sam/drivers/pmc/pmc.c ****  *
 995:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Id of the programmable clock.
 996:../asf/sam/drivers/pmc/pmc.c ****  */
 997:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_pck(uint32_t ul_id)
 998:../asf/sam/drivers/pmc/pmc.c **** {
 2277              		.loc 1 998 0
 2278              		.cfi_startproc
 2279              		@ args = 0, pretend = 0, frame = 0
 2280              		@ frame_needed = 0, uses_anonymous_args = 0
 2281              		@ link register save eliminated.
 2282              	.LVL166:
 999:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_SCER = PMC_SCER_PCK0 << ul_id;
 2283              		.loc 1 999 0
 2284 0000 4FF48073 		mov	r3, #256
 2285 0004 024A     		ldr	r2, .L327
 2286 0006 03FA00F0 		lsl	r0, r3, r0
 2287              	.LVL167:
 2288 000a 1060     		str	r0, [r2]
 2289 000c 7047     		bx	lr
 2290              	.L328:
 2291 000e 00BF     		.align	2
 2292              	.L327:
 2293 0010 00060E40 		.word	1074660864
 2294              		.cfi_endproc
 2295              	.LFE182:
 2296              		.size	pmc_enable_pck, .-pmc_enable_pck
 2297              		.section	.text.pmc_disable_pck,"ax",%progbits
 2298              		.align	1
 2299              		.p2align 2,,3
ARM GAS  /tmp/ccTYR2Ee.s 			page 61


 2300              		.global	pmc_disable_pck
 2301              		.syntax unified
 2302              		.thumb
 2303              		.thumb_func
 2304              		.fpu fpv5-d16
 2305              		.type	pmc_disable_pck, %function
 2306              	pmc_disable_pck:
 2307              	.LFB183:
1000:../asf/sam/drivers/pmc/pmc.c **** }
1001:../asf/sam/drivers/pmc/pmc.c **** 
1002:../asf/sam/drivers/pmc/pmc.c **** /**
1003:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable the specified programmable clock.
1004:../asf/sam/drivers/pmc/pmc.c ****  *
1005:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Id of the programmable clock.
1006:../asf/sam/drivers/pmc/pmc.c ****  */
1007:../asf/sam/drivers/pmc/pmc.c **** void pmc_disable_pck(uint32_t ul_id)
1008:../asf/sam/drivers/pmc/pmc.c **** {
 2308              		.loc 1 1008 0
 2309              		.cfi_startproc
 2310              		@ args = 0, pretend = 0, frame = 0
 2311              		@ frame_needed = 0, uses_anonymous_args = 0
 2312              		@ link register save eliminated.
 2313              	.LVL168:
1009:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_SCDR = PMC_SCER_PCK0 << ul_id;
 2314              		.loc 1 1009 0
 2315 0000 4FF48073 		mov	r3, #256
 2316 0004 024A     		ldr	r2, .L330
 2317 0006 03FA00F0 		lsl	r0, r3, r0
 2318              	.LVL169:
 2319 000a 5060     		str	r0, [r2, #4]
 2320 000c 7047     		bx	lr
 2321              	.L331:
 2322 000e 00BF     		.align	2
 2323              	.L330:
 2324 0010 00060E40 		.word	1074660864
 2325              		.cfi_endproc
 2326              	.LFE183:
 2327              		.size	pmc_disable_pck, .-pmc_disable_pck
 2328              		.section	.text.pmc_enable_all_pck,"ax",%progbits
 2329              		.align	1
 2330              		.p2align 2,,3
 2331              		.global	pmc_enable_all_pck
 2332              		.syntax unified
 2333              		.thumb
 2334              		.thumb_func
 2335              		.fpu fpv5-d16
 2336              		.type	pmc_enable_all_pck, %function
 2337              	pmc_enable_all_pck:
 2338              	.LFB184:
1010:../asf/sam/drivers/pmc/pmc.c **** }
1011:../asf/sam/drivers/pmc/pmc.c **** 
1012:../asf/sam/drivers/pmc/pmc.c **** /**
1013:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable all programmable clocks.
1014:../asf/sam/drivers/pmc/pmc.c ****  */
1015:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_all_pck(void)
1016:../asf/sam/drivers/pmc/pmc.c **** {
 2339              		.loc 1 1016 0
ARM GAS  /tmp/ccTYR2Ee.s 			page 62


 2340              		.cfi_startproc
 2341              		@ args = 0, pretend = 0, frame = 0
 2342              		@ frame_needed = 0, uses_anonymous_args = 0
 2343              		@ link register save eliminated.
1017:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_SCER = PMC_SCER_PCK0 | PMC_SCER_PCK1 | PMC_SCER_PCK2;
 2344              		.loc 1 1017 0
 2345 0000 024B     		ldr	r3, .L333
 2346 0002 4FF4E062 		mov	r2, #1792
 2347 0006 1A60     		str	r2, [r3]
 2348 0008 7047     		bx	lr
 2349              	.L334:
 2350 000a 00BF     		.align	2
 2351              	.L333:
 2352 000c 00060E40 		.word	1074660864
 2353              		.cfi_endproc
 2354              	.LFE184:
 2355              		.size	pmc_enable_all_pck, .-pmc_enable_all_pck
 2356              		.section	.text.pmc_disable_all_pck,"ax",%progbits
 2357              		.align	1
 2358              		.p2align 2,,3
 2359              		.global	pmc_disable_all_pck
 2360              		.syntax unified
 2361              		.thumb
 2362              		.thumb_func
 2363              		.fpu fpv5-d16
 2364              		.type	pmc_disable_all_pck, %function
 2365              	pmc_disable_all_pck:
 2366              	.LFB185:
1018:../asf/sam/drivers/pmc/pmc.c **** }
1019:../asf/sam/drivers/pmc/pmc.c **** 
1020:../asf/sam/drivers/pmc/pmc.c **** /**
1021:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable all programmable clocks.
1022:../asf/sam/drivers/pmc/pmc.c ****  */
1023:../asf/sam/drivers/pmc/pmc.c **** void pmc_disable_all_pck(void)
1024:../asf/sam/drivers/pmc/pmc.c **** {
 2367              		.loc 1 1024 0
 2368              		.cfi_startproc
 2369              		@ args = 0, pretend = 0, frame = 0
 2370              		@ frame_needed = 0, uses_anonymous_args = 0
 2371              		@ link register save eliminated.
1025:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_SCDR = PMC_SCDR_PCK0 | PMC_SCDR_PCK1 | PMC_SCDR_PCK2;
 2372              		.loc 1 1025 0
 2373 0000 024B     		ldr	r3, .L336
 2374 0002 4FF4E062 		mov	r2, #1792
 2375 0006 5A60     		str	r2, [r3, #4]
 2376 0008 7047     		bx	lr
 2377              	.L337:
 2378 000a 00BF     		.align	2
 2379              	.L336:
 2380 000c 00060E40 		.word	1074660864
 2381              		.cfi_endproc
 2382              	.LFE185:
 2383              		.size	pmc_disable_all_pck, .-pmc_disable_all_pck
 2384              		.section	.text.pmc_is_pck_enabled,"ax",%progbits
 2385              		.align	1
 2386              		.p2align 2,,3
 2387              		.global	pmc_is_pck_enabled
ARM GAS  /tmp/ccTYR2Ee.s 			page 63


 2388              		.syntax unified
 2389              		.thumb
 2390              		.thumb_func
 2391              		.fpu fpv5-d16
 2392              		.type	pmc_is_pck_enabled, %function
 2393              	pmc_is_pck_enabled:
 2394              	.LFB186:
1026:../asf/sam/drivers/pmc/pmc.c **** }
1027:../asf/sam/drivers/pmc/pmc.c **** 
1028:../asf/sam/drivers/pmc/pmc.c **** /**
1029:../asf/sam/drivers/pmc/pmc.c ****  * \brief Check if the specified programmable clock is enabled.
1030:../asf/sam/drivers/pmc/pmc.c ****  *
1031:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Id of the programmable clock.
1032:../asf/sam/drivers/pmc/pmc.c ****  *
1033:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Programmable clock is disabled or unknown.
1034:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Programmable clock is enabled.
1035:../asf/sam/drivers/pmc/pmc.c ****  */
1036:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_is_pck_enabled(uint32_t ul_id)
1037:../asf/sam/drivers/pmc/pmc.c **** {
 2395              		.loc 1 1037 0
 2396              		.cfi_startproc
 2397              		@ args = 0, pretend = 0, frame = 0
 2398              		@ frame_needed = 0, uses_anonymous_args = 0
 2399              		@ link register save eliminated.
 2400              	.LVL170:
1038:../asf/sam/drivers/pmc/pmc.c **** 	if (ul_id > 2) {
 2401              		.loc 1 1038 0
 2402 0000 0228     		cmp	r0, #2
 2403 0002 07D8     		bhi	.L340
1039:../asf/sam/drivers/pmc/pmc.c **** 		return 0;
1040:../asf/sam/drivers/pmc/pmc.c **** 	}
1041:../asf/sam/drivers/pmc/pmc.c **** 
1042:../asf/sam/drivers/pmc/pmc.c **** 	return (PMC->PMC_SCSR & (PMC_SCSR_PCK0 << ul_id));
 2404              		.loc 1 1042 0
 2405 0004 4FF48073 		mov	r3, #256
 2406 0008 034A     		ldr	r2, .L341
 2407 000a 03FA00F0 		lsl	r0, r3, r0
 2408              	.LVL171:
 2409 000e 9268     		ldr	r2, [r2, #8]
 2410 0010 1040     		ands	r0, r0, r2
 2411 0012 7047     		bx	lr
 2412              	.LVL172:
 2413              	.L340:
1039:../asf/sam/drivers/pmc/pmc.c **** 		return 0;
 2414              		.loc 1 1039 0
 2415 0014 0020     		movs	r0, #0
 2416              	.LVL173:
1043:../asf/sam/drivers/pmc/pmc.c **** }
 2417              		.loc 1 1043 0
 2418 0016 7047     		bx	lr
 2419              	.L342:
 2420              		.align	2
 2421              	.L341:
 2422 0018 00060E40 		.word	1074660864
 2423              		.cfi_endproc
 2424              	.LFE186:
 2425              		.size	pmc_is_pck_enabled, .-pmc_is_pck_enabled
ARM GAS  /tmp/ccTYR2Ee.s 			page 64


 2426              		.section	.text.pmc_switch_udpck_to_pllack,"ax",%progbits
 2427              		.align	1
 2428              		.p2align 2,,3
 2429              		.global	pmc_switch_udpck_to_pllack
 2430              		.syntax unified
 2431              		.thumb
 2432              		.thumb_func
 2433              		.fpu fpv5-d16
 2434              		.type	pmc_switch_udpck_to_pllack, %function
 2435              	pmc_switch_udpck_to_pllack:
 2436              	.LFB187:
1044:../asf/sam/drivers/pmc/pmc.c **** 
1045:../asf/sam/drivers/pmc/pmc.c **** #if (SAM4C || SAM4CM || SAM4CP)
1046:../asf/sam/drivers/pmc/pmc.c **** /**
1047:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable Coprocessor Clocks.
1048:../asf/sam/drivers/pmc/pmc.c ****  */
1049:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_cpck(void)
1050:../asf/sam/drivers/pmc/pmc.c **** {
1051:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_SCER = PMC_SCER_CPCK | PMC_SCER_CPKEY_PASSWD;
1052:../asf/sam/drivers/pmc/pmc.c **** }
1053:../asf/sam/drivers/pmc/pmc.c **** 
1054:../asf/sam/drivers/pmc/pmc.c **** /**
1055:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable Coprocessor Clocks.
1056:../asf/sam/drivers/pmc/pmc.c ****  */
1057:../asf/sam/drivers/pmc/pmc.c **** void pmc_disable_cpck(void)
1058:../asf/sam/drivers/pmc/pmc.c **** {
1059:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_SCDR = PMC_SCDR_CPCK | PMC_SCDR_CPKEY_PASSWD;
1060:../asf/sam/drivers/pmc/pmc.c **** }
1061:../asf/sam/drivers/pmc/pmc.c **** 
1062:../asf/sam/drivers/pmc/pmc.c **** /**
1063:../asf/sam/drivers/pmc/pmc.c ****  * \brief Check if the Coprocessor Clocks is enabled.
1064:../asf/sam/drivers/pmc/pmc.c ****  *
1065:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Coprocessor Clocks is disabled.
1066:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Coprocessor Clocks is enabled.
1067:../asf/sam/drivers/pmc/pmc.c ****  */
1068:../asf/sam/drivers/pmc/pmc.c **** bool pmc_is_cpck_enabled(void)
1069:../asf/sam/drivers/pmc/pmc.c **** {
1070:../asf/sam/drivers/pmc/pmc.c **** 	if(PMC->PMC_SCSR & PMC_SCSR_CPCK) {
1071:../asf/sam/drivers/pmc/pmc.c **** 		return 1;
1072:../asf/sam/drivers/pmc/pmc.c **** 	} else {
1073:../asf/sam/drivers/pmc/pmc.c **** 		return 0;
1074:../asf/sam/drivers/pmc/pmc.c **** 	}
1075:../asf/sam/drivers/pmc/pmc.c **** }
1076:../asf/sam/drivers/pmc/pmc.c **** 
1077:../asf/sam/drivers/pmc/pmc.c **** /**
1078:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable Coprocessor Bus Master Clocks.
1079:../asf/sam/drivers/pmc/pmc.c ****  */
1080:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_cpbmck(void)
1081:../asf/sam/drivers/pmc/pmc.c **** {
1082:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_SCER = PMC_SCER_CPBMCK | PMC_SCER_CPKEY_PASSWD;
1083:../asf/sam/drivers/pmc/pmc.c **** }
1084:../asf/sam/drivers/pmc/pmc.c **** 
1085:../asf/sam/drivers/pmc/pmc.c **** /**
1086:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable Coprocessor Bus Master Clocks.
1087:../asf/sam/drivers/pmc/pmc.c ****  */
1088:../asf/sam/drivers/pmc/pmc.c **** void pmc_disable_cpbmck(void)
1089:../asf/sam/drivers/pmc/pmc.c **** {
ARM GAS  /tmp/ccTYR2Ee.s 			page 65


1090:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_SCDR = PMC_SCDR_CPBMCK | PMC_SCDR_CPKEY_PASSWD;
1091:../asf/sam/drivers/pmc/pmc.c **** }
1092:../asf/sam/drivers/pmc/pmc.c **** 
1093:../asf/sam/drivers/pmc/pmc.c **** /**
1094:../asf/sam/drivers/pmc/pmc.c ****  * \brief Check if the Coprocessor Bus Master Clocks is enabled.
1095:../asf/sam/drivers/pmc/pmc.c ****  *
1096:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Coprocessor Bus Master Clocks is disabled.
1097:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Coprocessor Bus Master Clocks is enabled.
1098:../asf/sam/drivers/pmc/pmc.c ****  */
1099:../asf/sam/drivers/pmc/pmc.c **** bool pmc_is_cpbmck_enabled(void)
1100:../asf/sam/drivers/pmc/pmc.c **** {
1101:../asf/sam/drivers/pmc/pmc.c **** 	if(PMC->PMC_SCSR & PMC_SCSR_CPBMCK) {
1102:../asf/sam/drivers/pmc/pmc.c **** 		return 1;
1103:../asf/sam/drivers/pmc/pmc.c **** 	} else {
1104:../asf/sam/drivers/pmc/pmc.c **** 		return 0;
1105:../asf/sam/drivers/pmc/pmc.c **** 	}
1106:../asf/sam/drivers/pmc/pmc.c **** }
1107:../asf/sam/drivers/pmc/pmc.c **** 
1108:../asf/sam/drivers/pmc/pmc.c **** /**
1109:../asf/sam/drivers/pmc/pmc.c ****  * \brief Set the prescaler for the Coprocessor Master Clock.
1110:../asf/sam/drivers/pmc/pmc.c ****  *
1111:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_pres Prescaler value.
1112:../asf/sam/drivers/pmc/pmc.c ****  */
1113:../asf/sam/drivers/pmc/pmc.c **** void pmc_cpck_set_prescaler(uint32_t ul_pres)
1114:../asf/sam/drivers/pmc/pmc.c **** {
1115:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR =
1116:../asf/sam/drivers/pmc/pmc.c **** 			(PMC->PMC_MCKR & (~PMC_MCKR_CPPRES_Msk)) | PMC_MCKR_CPPRES(ul_pres);
1117:../asf/sam/drivers/pmc/pmc.c **** }
1118:../asf/sam/drivers/pmc/pmc.c **** 
1119:../asf/sam/drivers/pmc/pmc.c **** /**
1120:../asf/sam/drivers/pmc/pmc.c ****  * \brief Set the source for the Coprocessor Master Clock.
1121:../asf/sam/drivers/pmc/pmc.c ****  *
1122:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_source Source selection value.
1123:../asf/sam/drivers/pmc/pmc.c ****  */
1124:../asf/sam/drivers/pmc/pmc.c **** void pmc_cpck_set_source(uint32_t ul_source)
1125:../asf/sam/drivers/pmc/pmc.c **** {
1126:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_MCKR =
1127:../asf/sam/drivers/pmc/pmc.c **** 			(PMC->PMC_MCKR & (~PMC_MCKR_CPCSS_Msk)) | ul_source;
1128:../asf/sam/drivers/pmc/pmc.c **** }
1129:../asf/sam/drivers/pmc/pmc.c **** #endif
1130:../asf/sam/drivers/pmc/pmc.c **** 
1131:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3S || SAM3XA || SAM4S || SAM4E || SAMG55 || SAMV71 || SAMV70 || SAME70 || SAMS70)
1132:../asf/sam/drivers/pmc/pmc.c **** /**
1133:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch UDP (USB) clock source selection to PLLA clock.
1134:../asf/sam/drivers/pmc/pmc.c ****  *
1135:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_usbdiv Clock divisor.
1136:../asf/sam/drivers/pmc/pmc.c ****  */
1137:../asf/sam/drivers/pmc/pmc.c **** void pmc_switch_udpck_to_pllack(uint32_t ul_usbdiv)
1138:../asf/sam/drivers/pmc/pmc.c **** {
 2437              		.loc 1 1138 0
 2438              		.cfi_startproc
 2439              		@ args = 0, pretend = 0, frame = 0
 2440              		@ frame_needed = 0, uses_anonymous_args = 0
 2441              		@ link register save eliminated.
 2442              	.LVL174:
1139:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_USB = PMC_USB_USBDIV(ul_usbdiv);
 2443              		.loc 1 1139 0
ARM GAS  /tmp/ccTYR2Ee.s 			page 66


 2444 0000 0002     		lsls	r0, r0, #8
 2445              	.LVL175:
 2446 0002 024B     		ldr	r3, .L344
 2447 0004 00F47060 		and	r0, r0, #3840
 2448 0008 9863     		str	r0, [r3, #56]
 2449 000a 7047     		bx	lr
 2450              	.L345:
 2451              		.align	2
 2452              	.L344:
 2453 000c 00060E40 		.word	1074660864
 2454              		.cfi_endproc
 2455              	.LFE187:
 2456              		.size	pmc_switch_udpck_to_pllack, .-pmc_switch_udpck_to_pllack
 2457              		.section	.text.pmc_switch_udpck_to_upllck,"ax",%progbits
 2458              		.align	1
 2459              		.p2align 2,,3
 2460              		.global	pmc_switch_udpck_to_upllck
 2461              		.syntax unified
 2462              		.thumb
 2463              		.thumb_func
 2464              		.fpu fpv5-d16
 2465              		.type	pmc_switch_udpck_to_upllck, %function
 2466              	pmc_switch_udpck_to_upllck:
 2467              	.LFB188:
1140:../asf/sam/drivers/pmc/pmc.c **** }
1141:../asf/sam/drivers/pmc/pmc.c **** #endif
1142:../asf/sam/drivers/pmc/pmc.c **** 
1143:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3S || SAM4S || SAMG55)
1144:../asf/sam/drivers/pmc/pmc.c **** /**
1145:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch UDP (USB) clock source selection to PLLB clock.
1146:../asf/sam/drivers/pmc/pmc.c ****  *
1147:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_usbdiv Clock divisor.
1148:../asf/sam/drivers/pmc/pmc.c ****  */
1149:../asf/sam/drivers/pmc/pmc.c **** void pmc_switch_udpck_to_pllbck(uint32_t ul_usbdiv)
1150:../asf/sam/drivers/pmc/pmc.c **** {
1151:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_USB = PMC_USB_USBDIV(ul_usbdiv) | PMC_USB_USBS;
1152:../asf/sam/drivers/pmc/pmc.c **** }
1153:../asf/sam/drivers/pmc/pmc.c **** #endif
1154:../asf/sam/drivers/pmc/pmc.c **** 
1155:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3XA || SAMV71 || SAMV70 || SAME70 || SAMS70)
1156:../asf/sam/drivers/pmc/pmc.c **** /**
1157:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch UDP (USB) clock source selection to UPLL clock.
1158:../asf/sam/drivers/pmc/pmc.c ****  *
1159:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_usbdiv Clock divisor.
1160:../asf/sam/drivers/pmc/pmc.c ****  */
1161:../asf/sam/drivers/pmc/pmc.c **** void pmc_switch_udpck_to_upllck(uint32_t ul_usbdiv)
1162:../asf/sam/drivers/pmc/pmc.c **** {
 2468              		.loc 1 1162 0
 2469              		.cfi_startproc
 2470              		@ args = 0, pretend = 0, frame = 0
 2471              		@ frame_needed = 0, uses_anonymous_args = 0
 2472              		@ link register save eliminated.
 2473              	.LVL176:
1163:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_USB = PMC_USB_USBS | PMC_USB_USBDIV(ul_usbdiv);
 2474              		.loc 1 1163 0
 2475 0000 0002     		lsls	r0, r0, #8
 2476              	.LVL177:
ARM GAS  /tmp/ccTYR2Ee.s 			page 67


 2477 0002 034B     		ldr	r3, .L347
 2478 0004 00F47060 		and	r0, r0, #3840
 2479 0008 40F00100 		orr	r0, r0, #1
 2480 000c 9863     		str	r0, [r3, #56]
 2481 000e 7047     		bx	lr
 2482              	.L348:
 2483              		.align	2
 2484              	.L347:
 2485 0010 00060E40 		.word	1074660864
 2486              		.cfi_endproc
 2487              	.LFE188:
 2488              		.size	pmc_switch_udpck_to_upllck, .-pmc_switch_udpck_to_upllck
 2489              		.section	.text.pmc_enable_udpck,"ax",%progbits
 2490              		.align	1
 2491              		.p2align 2,,3
 2492              		.global	pmc_enable_udpck
 2493              		.syntax unified
 2494              		.thumb
 2495              		.thumb_func
 2496              		.fpu fpv5-d16
 2497              		.type	pmc_enable_udpck, %function
 2498              	pmc_enable_udpck:
 2499              	.LFB189:
1164:../asf/sam/drivers/pmc/pmc.c **** }
1165:../asf/sam/drivers/pmc/pmc.c **** #endif
1166:../asf/sam/drivers/pmc/pmc.c **** 
1167:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3S || SAM3XA || SAM4S || SAM4E || SAMG55 || SAMV71 || SAMV70 || SAME70 || SAMS70)
1168:../asf/sam/drivers/pmc/pmc.c **** /**
1169:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable UDP (USB) clock.
1170:../asf/sam/drivers/pmc/pmc.c ****  */
1171:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_udpck(void)
1172:../asf/sam/drivers/pmc/pmc.c **** {
 2500              		.loc 1 1172 0
 2501              		.cfi_startproc
 2502              		@ args = 0, pretend = 0, frame = 0
 2503              		@ frame_needed = 0, uses_anonymous_args = 0
 2504              		@ link register save eliminated.
1173:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3S || SAM4S || SAM4E || SAMG55)
1174:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_SCER = PMC_SCER_UDP;
1175:../asf/sam/drivers/pmc/pmc.c **** #elif (SAMV71 || SAMV70 || SAME70 || SAMS70)
1176:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_SCER = PMC_SCER_USBCLK;
 2505              		.loc 1 1176 0
 2506 0000 014B     		ldr	r3, .L350
 2507 0002 2022     		movs	r2, #32
 2508 0004 1A60     		str	r2, [r3]
 2509 0006 7047     		bx	lr
 2510              	.L351:
 2511              		.align	2
 2512              	.L350:
 2513 0008 00060E40 		.word	1074660864
 2514              		.cfi_endproc
 2515              	.LFE189:
 2516              		.size	pmc_enable_udpck, .-pmc_enable_udpck
 2517              		.section	.text.pmc_disable_udpck,"ax",%progbits
 2518              		.align	1
 2519              		.p2align 2,,3
 2520              		.global	pmc_disable_udpck
ARM GAS  /tmp/ccTYR2Ee.s 			page 68


 2521              		.syntax unified
 2522              		.thumb
 2523              		.thumb_func
 2524              		.fpu fpv5-d16
 2525              		.type	pmc_disable_udpck, %function
 2526              	pmc_disable_udpck:
 2527              	.LFB190:
1177:../asf/sam/drivers/pmc/pmc.c **** #else
1178:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_SCER = PMC_SCER_UOTGCLK;
1179:../asf/sam/drivers/pmc/pmc.c **** # endif
1180:../asf/sam/drivers/pmc/pmc.c **** }
1181:../asf/sam/drivers/pmc/pmc.c **** 
1182:../asf/sam/drivers/pmc/pmc.c **** /**
1183:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable UDP (USB) clock.
1184:../asf/sam/drivers/pmc/pmc.c ****  */
1185:../asf/sam/drivers/pmc/pmc.c **** void pmc_disable_udpck(void)
1186:../asf/sam/drivers/pmc/pmc.c **** {
 2528              		.loc 1 1186 0
 2529              		.cfi_startproc
 2530              		@ args = 0, pretend = 0, frame = 0
 2531              		@ frame_needed = 0, uses_anonymous_args = 0
 2532              		@ link register save eliminated.
1187:../asf/sam/drivers/pmc/pmc.c **** #if (SAM3S || SAM4S || SAM4E || SAMG55)
1188:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_SCDR = PMC_SCDR_UDP;
1189:../asf/sam/drivers/pmc/pmc.c **** #elif (SAMV71 || SAMV70 || SAME70 || SAMS70)
1190:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_SCDR = PMC_SCDR_USBCLK;
 2533              		.loc 1 1190 0
 2534 0000 014B     		ldr	r3, .L353
 2535 0002 2022     		movs	r2, #32
 2536 0004 5A60     		str	r2, [r3, #4]
 2537 0006 7047     		bx	lr
 2538              	.L354:
 2539              		.align	2
 2540              	.L353:
 2541 0008 00060E40 		.word	1074660864
 2542              		.cfi_endproc
 2543              	.LFE190:
 2544              		.size	pmc_disable_udpck, .-pmc_disable_udpck
 2545              		.section	.text.pmc_enable_interrupt,"ax",%progbits
 2546              		.align	1
 2547              		.p2align 2,,3
 2548              		.global	pmc_enable_interrupt
 2549              		.syntax unified
 2550              		.thumb
 2551              		.thumb_func
 2552              		.fpu fpv5-d16
 2553              		.type	pmc_enable_interrupt, %function
 2554              	pmc_enable_interrupt:
 2555              	.LFB191:
1191:../asf/sam/drivers/pmc/pmc.c **** #else
1192:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_SCDR = PMC_SCDR_UOTGCLK;
1193:../asf/sam/drivers/pmc/pmc.c **** # endif
1194:../asf/sam/drivers/pmc/pmc.c **** }
1195:../asf/sam/drivers/pmc/pmc.c **** #endif
1196:../asf/sam/drivers/pmc/pmc.c **** 
1197:../asf/sam/drivers/pmc/pmc.c **** #if SAMG55
1198:../asf/sam/drivers/pmc/pmc.c **** /**
ARM GAS  /tmp/ccTYR2Ee.s 			page 69


1199:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch UHP (USB) clock source selection to PLLA clock.
1200:../asf/sam/drivers/pmc/pmc.c ****  *
1201:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_usbdiv Clock divisor.
1202:../asf/sam/drivers/pmc/pmc.c ****  */
1203:../asf/sam/drivers/pmc/pmc.c **** void pmc_switch_uhpck_to_pllack(uint32_t ul_usbdiv)
1204:../asf/sam/drivers/pmc/pmc.c **** {
1205:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_USB = PMC_USB_USBDIV(ul_usbdiv);
1206:../asf/sam/drivers/pmc/pmc.c **** }
1207:../asf/sam/drivers/pmc/pmc.c **** 
1208:../asf/sam/drivers/pmc/pmc.c **** /**
1209:../asf/sam/drivers/pmc/pmc.c ****  * \brief Switch UHP (USB) clock source selection to PLLB clock.
1210:../asf/sam/drivers/pmc/pmc.c ****  *
1211:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_usbdiv Clock divisor.
1212:../asf/sam/drivers/pmc/pmc.c ****  */
1213:../asf/sam/drivers/pmc/pmc.c **** void pmc_switch_uhpck_to_pllbck(uint32_t ul_usbdiv)
1214:../asf/sam/drivers/pmc/pmc.c **** {
1215:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_USB = PMC_USB_USBDIV(ul_usbdiv) | PMC_USB_USBS;
1216:../asf/sam/drivers/pmc/pmc.c **** }
1217:../asf/sam/drivers/pmc/pmc.c **** 
1218:../asf/sam/drivers/pmc/pmc.c **** /**
1219:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable UHP (USB) clock.
1220:../asf/sam/drivers/pmc/pmc.c ****  */
1221:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_uhpck(void)
1222:../asf/sam/drivers/pmc/pmc.c **** {
1223:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_SCER = PMC_SCER_UHP;
1224:../asf/sam/drivers/pmc/pmc.c **** }
1225:../asf/sam/drivers/pmc/pmc.c **** #endif
1226:../asf/sam/drivers/pmc/pmc.c **** 
1227:../asf/sam/drivers/pmc/pmc.c **** /**
1228:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable PMC interrupts.
1229:../asf/sam/drivers/pmc/pmc.c ****  *
1230:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_sources Interrupt sources bit map.
1231:../asf/sam/drivers/pmc/pmc.c ****  */
1232:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_interrupt(uint32_t ul_sources)
1233:../asf/sam/drivers/pmc/pmc.c **** {
 2556              		.loc 1 1233 0
 2557              		.cfi_startproc
 2558              		@ args = 0, pretend = 0, frame = 0
 2559              		@ frame_needed = 0, uses_anonymous_args = 0
 2560              		@ link register save eliminated.
 2561              	.LVL178:
1234:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_IER = ul_sources;
 2562              		.loc 1 1234 0
 2563 0000 014B     		ldr	r3, .L356
 2564 0002 1866     		str	r0, [r3, #96]
 2565 0004 7047     		bx	lr
 2566              	.L357:
 2567 0006 00BF     		.align	2
 2568              	.L356:
 2569 0008 00060E40 		.word	1074660864
 2570              		.cfi_endproc
 2571              	.LFE191:
 2572              		.size	pmc_enable_interrupt, .-pmc_enable_interrupt
 2573              		.section	.text.pmc_disable_interrupt,"ax",%progbits
 2574              		.align	1
 2575              		.p2align 2,,3
 2576              		.global	pmc_disable_interrupt
ARM GAS  /tmp/ccTYR2Ee.s 			page 70


 2577              		.syntax unified
 2578              		.thumb
 2579              		.thumb_func
 2580              		.fpu fpv5-d16
 2581              		.type	pmc_disable_interrupt, %function
 2582              	pmc_disable_interrupt:
 2583              	.LFB192:
1235:../asf/sam/drivers/pmc/pmc.c **** }
1236:../asf/sam/drivers/pmc/pmc.c **** 
1237:../asf/sam/drivers/pmc/pmc.c **** /**
1238:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable PMC interrupts.
1239:../asf/sam/drivers/pmc/pmc.c ****  *
1240:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_sources Interrupt sources bit map.
1241:../asf/sam/drivers/pmc/pmc.c ****  */
1242:../asf/sam/drivers/pmc/pmc.c **** void pmc_disable_interrupt(uint32_t ul_sources)
1243:../asf/sam/drivers/pmc/pmc.c **** {
 2584              		.loc 1 1243 0
 2585              		.cfi_startproc
 2586              		@ args = 0, pretend = 0, frame = 0
 2587              		@ frame_needed = 0, uses_anonymous_args = 0
 2588              		@ link register save eliminated.
 2589              	.LVL179:
1244:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_IDR = ul_sources;
 2590              		.loc 1 1244 0
 2591 0000 014B     		ldr	r3, .L359
 2592 0002 5866     		str	r0, [r3, #100]
 2593 0004 7047     		bx	lr
 2594              	.L360:
 2595 0006 00BF     		.align	2
 2596              	.L359:
 2597 0008 00060E40 		.word	1074660864
 2598              		.cfi_endproc
 2599              	.LFE192:
 2600              		.size	pmc_disable_interrupt, .-pmc_disable_interrupt
 2601              		.section	.text.pmc_get_interrupt_mask,"ax",%progbits
 2602              		.align	1
 2603              		.p2align 2,,3
 2604              		.global	pmc_get_interrupt_mask
 2605              		.syntax unified
 2606              		.thumb
 2607              		.thumb_func
 2608              		.fpu fpv5-d16
 2609              		.type	pmc_get_interrupt_mask, %function
 2610              	pmc_get_interrupt_mask:
 2611              	.LFB193:
1245:../asf/sam/drivers/pmc/pmc.c **** }
1246:../asf/sam/drivers/pmc/pmc.c **** 
1247:../asf/sam/drivers/pmc/pmc.c **** /**
1248:../asf/sam/drivers/pmc/pmc.c ****  * \brief Get PMC interrupt mask.
1249:../asf/sam/drivers/pmc/pmc.c ****  *
1250:../asf/sam/drivers/pmc/pmc.c ****  * \return The interrupt mask value.
1251:../asf/sam/drivers/pmc/pmc.c ****  */
1252:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_get_interrupt_mask(void)
1253:../asf/sam/drivers/pmc/pmc.c **** {
 2612              		.loc 1 1253 0
 2613              		.cfi_startproc
 2614              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccTYR2Ee.s 			page 71


 2615              		@ frame_needed = 0, uses_anonymous_args = 0
 2616              		@ link register save eliminated.
1254:../asf/sam/drivers/pmc/pmc.c **** 	return PMC->PMC_IMR;
 2617              		.loc 1 1254 0
 2618 0000 014B     		ldr	r3, .L362
 2619 0002 D86E     		ldr	r0, [r3, #108]
1255:../asf/sam/drivers/pmc/pmc.c **** }
 2620              		.loc 1 1255 0
 2621 0004 7047     		bx	lr
 2622              	.L363:
 2623 0006 00BF     		.align	2
 2624              	.L362:
 2625 0008 00060E40 		.word	1074660864
 2626              		.cfi_endproc
 2627              	.LFE193:
 2628              		.size	pmc_get_interrupt_mask, .-pmc_get_interrupt_mask
 2629              		.section	.text.pmc_get_status,"ax",%progbits
 2630              		.align	1
 2631              		.p2align 2,,3
 2632              		.global	pmc_get_status
 2633              		.syntax unified
 2634              		.thumb
 2635              		.thumb_func
 2636              		.fpu fpv5-d16
 2637              		.type	pmc_get_status, %function
 2638              	pmc_get_status:
 2639              	.LFB194:
1256:../asf/sam/drivers/pmc/pmc.c **** 
1257:../asf/sam/drivers/pmc/pmc.c **** /**
1258:../asf/sam/drivers/pmc/pmc.c ****  * \brief Get current status.
1259:../asf/sam/drivers/pmc/pmc.c ****  *
1260:../asf/sam/drivers/pmc/pmc.c ****  * \return The current PMC status.
1261:../asf/sam/drivers/pmc/pmc.c ****  */
1262:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_get_status(void)
1263:../asf/sam/drivers/pmc/pmc.c **** {
 2640              		.loc 1 1263 0
 2641              		.cfi_startproc
 2642              		@ args = 0, pretend = 0, frame = 0
 2643              		@ frame_needed = 0, uses_anonymous_args = 0
 2644              		@ link register save eliminated.
1264:../asf/sam/drivers/pmc/pmc.c **** 	return PMC->PMC_SR;
 2645              		.loc 1 1264 0
 2646 0000 014B     		ldr	r3, .L365
 2647 0002 986E     		ldr	r0, [r3, #104]
1265:../asf/sam/drivers/pmc/pmc.c **** }
 2648              		.loc 1 1265 0
 2649 0004 7047     		bx	lr
 2650              	.L366:
 2651 0006 00BF     		.align	2
 2652              	.L365:
 2653 0008 00060E40 		.word	1074660864
 2654              		.cfi_endproc
 2655              	.LFE194:
 2656              		.size	pmc_get_status, .-pmc_get_status
 2657              		.section	.text.pmc_set_fast_startup_input,"ax",%progbits
 2658              		.align	1
 2659              		.p2align 2,,3
ARM GAS  /tmp/ccTYR2Ee.s 			page 72


 2660              		.global	pmc_set_fast_startup_input
 2661              		.syntax unified
 2662              		.thumb
 2663              		.thumb_func
 2664              		.fpu fpv5-d16
 2665              		.type	pmc_set_fast_startup_input, %function
 2666              	pmc_set_fast_startup_input:
 2667              	.LFB195:
1266:../asf/sam/drivers/pmc/pmc.c **** 
1267:../asf/sam/drivers/pmc/pmc.c **** /**
1268:../asf/sam/drivers/pmc/pmc.c ****  * \brief Set the wake-up inputs for fast startup mode registers
1269:../asf/sam/drivers/pmc/pmc.c ****  *        (event generation).
1270:../asf/sam/drivers/pmc/pmc.c ****  *
1271:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_inputs Wake up inputs to enable.
1272:../asf/sam/drivers/pmc/pmc.c ****  */
1273:../asf/sam/drivers/pmc/pmc.c **** void pmc_set_fast_startup_input(uint32_t ul_inputs)
1274:../asf/sam/drivers/pmc/pmc.c **** {
 2668              		.loc 1 1274 0
 2669              		.cfi_startproc
 2670              		@ args = 0, pretend = 0, frame = 0
 2671              		@ frame_needed = 0, uses_anonymous_args = 0
 2672              		@ link register save eliminated.
 2673              	.LVL180:
1275:../asf/sam/drivers/pmc/pmc.c **** 	ul_inputs &= PMC_FAST_STARTUP_Msk;
1276:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_FSMR |= ul_inputs;
 2674              		.loc 1 1276 0
 2675 0000 034B     		ldr	r3, .L368
1275:../asf/sam/drivers/pmc/pmc.c **** 	ul_inputs &= PMC_FAST_STARTUP_Msk;
 2676              		.loc 1 1275 0
 2677 0002 C0F31200 		ubfx	r0, r0, #0, #19
 2678              	.LVL181:
 2679              		.loc 1 1276 0
 2680 0006 1A6F     		ldr	r2, [r3, #112]
 2681 0008 1043     		orrs	r0, r0, r2
 2682 000a 1867     		str	r0, [r3, #112]
 2683 000c 7047     		bx	lr
 2684              	.L369:
 2685 000e 00BF     		.align	2
 2686              	.L368:
 2687 0010 00060E40 		.word	1074660864
 2688              		.cfi_endproc
 2689              	.LFE195:
 2690              		.size	pmc_set_fast_startup_input, .-pmc_set_fast_startup_input
 2691              		.section	.text.pmc_clr_fast_startup_input,"ax",%progbits
 2692              		.align	1
 2693              		.p2align 2,,3
 2694              		.global	pmc_clr_fast_startup_input
 2695              		.syntax unified
 2696              		.thumb
 2697              		.thumb_func
 2698              		.fpu fpv5-d16
 2699              		.type	pmc_clr_fast_startup_input, %function
 2700              	pmc_clr_fast_startup_input:
 2701              	.LFB196:
1277:../asf/sam/drivers/pmc/pmc.c **** }
1278:../asf/sam/drivers/pmc/pmc.c **** 
1279:../asf/sam/drivers/pmc/pmc.c **** /**
ARM GAS  /tmp/ccTYR2Ee.s 			page 73


1280:../asf/sam/drivers/pmc/pmc.c ****  * \brief Clear the wake-up inputs for fast startup mode registers
1281:../asf/sam/drivers/pmc/pmc.c ****  *        (remove event generation).
1282:../asf/sam/drivers/pmc/pmc.c ****  *
1283:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_inputs Wake up inputs to disable.
1284:../asf/sam/drivers/pmc/pmc.c ****  */
1285:../asf/sam/drivers/pmc/pmc.c **** void pmc_clr_fast_startup_input(uint32_t ul_inputs)
1286:../asf/sam/drivers/pmc/pmc.c **** {
 2702              		.loc 1 1286 0
 2703              		.cfi_startproc
 2704              		@ args = 0, pretend = 0, frame = 0
 2705              		@ frame_needed = 0, uses_anonymous_args = 0
 2706              		@ link register save eliminated.
 2707              	.LVL182:
1287:../asf/sam/drivers/pmc/pmc.c **** 	ul_inputs &= PMC_FAST_STARTUP_Msk;
1288:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_FSMR &= ~ul_inputs;
 2708              		.loc 1 1288 0
 2709 0000 034A     		ldr	r2, .L371
1287:../asf/sam/drivers/pmc/pmc.c **** 	ul_inputs &= PMC_FAST_STARTUP_Msk;
 2710              		.loc 1 1287 0
 2711 0002 C0F31200 		ubfx	r0, r0, #0, #19
 2712              	.LVL183:
 2713              		.loc 1 1288 0
 2714 0006 136F     		ldr	r3, [r2, #112]
 2715 0008 23EA0000 		bic	r0, r3, r0
 2716 000c 1067     		str	r0, [r2, #112]
 2717 000e 7047     		bx	lr
 2718              	.L372:
 2719              		.align	2
 2720              	.L371:
 2721 0010 00060E40 		.word	1074660864
 2722              		.cfi_endproc
 2723              	.LFE196:
 2724              		.size	pmc_clr_fast_startup_input, .-pmc_clr_fast_startup_input
 2725              		.section	.text.pmc_enable_sleepmode,"ax",%progbits
 2726              		.align	1
 2727              		.p2align 2,,3
 2728              		.global	pmc_enable_sleepmode
 2729              		.syntax unified
 2730              		.thumb
 2731              		.thumb_func
 2732              		.fpu fpv5-d16
 2733              		.type	pmc_enable_sleepmode, %function
 2734              	pmc_enable_sleepmode:
 2735              	.LFB197:
1289:../asf/sam/drivers/pmc/pmc.c **** }
1290:../asf/sam/drivers/pmc/pmc.c **** 
1291:../asf/sam/drivers/pmc/pmc.c **** #if (SAM4C || SAM4CM || SAM4CP)
1292:../asf/sam/drivers/pmc/pmc.c **** /**
1293:../asf/sam/drivers/pmc/pmc.c ****  * \brief Set the wake-up inputs of coprocessor for fast startup mode registers
1294:../asf/sam/drivers/pmc/pmc.c ****  *        (event generation).
1295:../asf/sam/drivers/pmc/pmc.c ****  *
1296:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_inputs Wake up inputs to enable.
1297:../asf/sam/drivers/pmc/pmc.c ****  */
1298:../asf/sam/drivers/pmc/pmc.c **** void pmc_cp_set_fast_startup_input(uint32_t ul_inputs)
1299:../asf/sam/drivers/pmc/pmc.c **** {
1300:../asf/sam/drivers/pmc/pmc.c **** 	ul_inputs &= PMC_FAST_STARTUP_Msk;
1301:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_CPFSMR |= ul_inputs;
ARM GAS  /tmp/ccTYR2Ee.s 			page 74


1302:../asf/sam/drivers/pmc/pmc.c **** }
1303:../asf/sam/drivers/pmc/pmc.c **** 
1304:../asf/sam/drivers/pmc/pmc.c **** /**
1305:../asf/sam/drivers/pmc/pmc.c ****  * \brief Clear the wake-up inputs of coprocessor for fast startup mode registers
1306:../asf/sam/drivers/pmc/pmc.c ****  *        (remove event generation).
1307:../asf/sam/drivers/pmc/pmc.c ****  *
1308:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_inputs Wake up inputs to disable.
1309:../asf/sam/drivers/pmc/pmc.c ****  */
1310:../asf/sam/drivers/pmc/pmc.c **** void pmc_cp_clr_fast_startup_input(uint32_t ul_inputs)
1311:../asf/sam/drivers/pmc/pmc.c **** {
1312:../asf/sam/drivers/pmc/pmc.c **** 	ul_inputs &= PMC_FAST_STARTUP_Msk;
1313:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_CPFSMR &= ~ul_inputs;
1314:../asf/sam/drivers/pmc/pmc.c **** }
1315:../asf/sam/drivers/pmc/pmc.c **** #endif
1316:../asf/sam/drivers/pmc/pmc.c **** 
1317:../asf/sam/drivers/pmc/pmc.c **** /**
1318:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable Sleep Mode.
1319:../asf/sam/drivers/pmc/pmc.c ****  * Enter condition: (WFE or WFI) + (SLEEPDEEP bit = 0) + (LPM bit = 0)
1320:../asf/sam/drivers/pmc/pmc.c ****  *
1321:../asf/sam/drivers/pmc/pmc.c ****  * \param uc_type 0 for wait for interrupt, 1 for wait for event.
1322:../asf/sam/drivers/pmc/pmc.c ****  * \note For SAM4S, SAM4C, SAM4CM, SAM4CP, SAMV71 and SAM4E series,
1323:../asf/sam/drivers/pmc/pmc.c ****  * since only WFI is effective, uc_type = 1 will be treated as uc_type = 0.
1324:../asf/sam/drivers/pmc/pmc.c ****  */
1325:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_sleepmode(uint8_t uc_type)
1326:../asf/sam/drivers/pmc/pmc.c **** {
 2736              		.loc 1 1326 0
 2737              		.cfi_startproc
 2738              		@ args = 0, pretend = 0, frame = 0
 2739              		@ frame_needed = 0, uses_anonymous_args = 0
 2740              		@ link register save eliminated.
 2741              	.LVL184:
1327:../asf/sam/drivers/pmc/pmc.c **** #if !(SAM4S || SAM4E || SAM4N || SAM4C || SAM4CM || SAM4CP || SAMV71 || SAMV70 || SAME70 || SAMS70)
1328:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_FSMR &= (uint32_t) ~ PMC_FSMR_LPM; // Enter Sleep mode
1329:../asf/sam/drivers/pmc/pmc.c **** #endif
1330:../asf/sam/drivers/pmc/pmc.c **** 	SCB->SCR &= (uint32_t) ~ SCB_SCR_SLEEPDEEP_Msk; // Deep sleep
 2742              		.loc 1 1330 0
 2743 0000 044A     		ldr	r2, .L374
 2744 0002 1369     		ldr	r3, [r2, #16]
 2745 0004 23F00403 		bic	r3, r3, #4
 2746 0008 1361     		str	r3, [r2, #16]
 2747              	.LBB34:
 2748              	.LBB35:
 2749              		.file 2 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /**************************************************************************//**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @file     core_cmInstr.h
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @brief    CMSIS Cortex-M Core Instruction Access Header File
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @version  V4.00
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @date     28. August 2014
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  *
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * @note
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  *
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  ******************************************************************************/
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* Copyright (c) 2009 - 2014 ARM LIMITED
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    All rights reserved.
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    Redistribution and use in source and binary forms, with or without
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    modification, are permitted provided that the following conditions are met:
ARM GAS  /tmp/ccTYR2Ee.s 			page 75


  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    - Redistributions of source code must retain the above copyright
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      notice, this list of conditions and the following disclaimer.
  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    - Redistributions in binary form must reproduce the above copyright
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      notice, this list of conditions and the following disclaimer in the
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      documentation and/or other materials provided with the distribution.
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    - Neither the name of ARM nor the names of its contributors may be used
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      to endorse or promote products derived from this software without
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****      specific prior written permission.
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    *
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    POSSIBILITY OF SUCH DAMAGE.
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****    ---------------------------------------------------------------------------*/
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __CORE_CMINSTR_H
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CORE_CMINSTR_H
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* ##########################  Core Instruction Access  ######################### */
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \defgroup CMSIS_Core_InstructionInterface CMSIS Core Instruction Interface
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   Access to dedicated instructions
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   @{
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** */
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if   defined ( __CC_ARM ) /*------------------RealView Compiler -----------------*/
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* ARM armcc specific functions */
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if (__ARMCC_VERSION < 400677)
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   #error "Please use ARM Compiler Toolchain V4.0.677 or later!"
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  No Operation
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     No Operation does nothing. This instruction can be used for code alignment purposes.
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __NOP                             __nop
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Interrupt
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Interrupt is a hint instruction that suspends execution
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     until one of a number of events occurs.
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __WFI                             __wfi
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Event
ARM GAS  /tmp/ccTYR2Ee.s 			page 76


  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Event is a hint instruction that permits the processor to enter
  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     a low-power state until one of a number of events occurs.
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __WFE                             __wfe
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Send Event
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Send Event is a hint instruction. It causes an event to be signaled to the CPU.
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __SEV                             __sev
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Instruction Synchronization Barrier
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Instruction Synchronization Barrier flushes the pipeline in the processor,
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     so that all instructions following the ISB are fetched from cache or
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     memory, after the instruction has been completed.
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __ISB()                           __isb(0xF)
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Data Synchronization Barrier
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function acts as a special kind of Data Memory Barrier.
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     It completes when all explicit memory accesses before this instruction complete.
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __DSB()                           __dsb(0xF)
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Data Memory Barrier
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function ensures the apparent order of the explicit memory operations before
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     and after the instruction, without ensuring their completion.
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __DMB()                           __dmb(0xF)
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse byte order (32 bit)
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the byte order in integer value.
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __REV                             __rev
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse byte order (16 bit)
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the byte order in two unsigned short values.
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __NO_EMBEDDED_ASM
ARM GAS  /tmp/ccTYR2Ee.s 			page 77


 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__((section(".rev16_text"))) __STATIC_INLINE __ASM uint32_t __REV16(uint32_t value)
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   rev16 r0, r0
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   bx lr
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse byte order in signed short value
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the byte order in a signed short value with sign extension to integer.
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __NO_EMBEDDED_ASM
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__((section(".revsh_text"))) __STATIC_INLINE __ASM int32_t __REVSH(int32_t value)
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   revsh r0, r0
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   bx lr
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Rotate Right in unsigned value (32 bit)
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function Rotate Right (immediate) provides the value of the contents of a register rotated
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to rotate
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Number of Bits to rotate
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Rotated value
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __ROR                             __ror
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Breakpoint
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function causes the processor to enter Debug state.
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Debug tools can use this to investigate system state when the instruction at a particular addre
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  is ignored by the processor.
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****                    If required, a debugger can use it to store additional information about the bre
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __BKPT(value)                       __breakpoint(value)
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if       (__CORTEX_M >= 0x03) || (__CORTEX_SC >= 300)
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Reverse bit order of value
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function reverses the bit order of the given value.
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to reverse
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Reversed value
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __RBIT                            __rbit
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccTYR2Ee.s 			page 78


 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDR Exclusive (8 bit)
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive LDR instruction for 8 bit value.
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             value of type uint8_t at (*ptr)
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDREXB(ptr)                     ((uint8_t ) __ldrex(ptr))
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDR Exclusive (16 bit)
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive LDR instruction for 16 bit values.
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint16_t at (*ptr)
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDREXH(ptr)                     ((uint16_t) __ldrex(ptr))
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDR Exclusive (32 bit)
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive LDR instruction for 32 bit values.
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint32_t at (*ptr)
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDREXW(ptr)                     ((uint32_t ) __ldrex(ptr))
 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STR Exclusive (8 bit)
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive STR instruction for 8 bit values.
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          0  Function succeeded
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          1  Function failed
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STREXB(value, ptr)              __strex(value, ptr)
 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STR Exclusive (16 bit)
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive STR instruction for 16 bit values.
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          0  Function succeeded
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          1  Function failed
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STREXH(value, ptr)              __strex(value, ptr)
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STR Exclusive (32 bit)
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a exclusive STR instruction for 32 bit values.
ARM GAS  /tmp/ccTYR2Ee.s 			page 79


 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          0  Function succeeded
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return          1  Function failed
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STREXW(value, ptr)              __strex(value, ptr)
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Remove the exclusive lock
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function removes the exclusive lock which is created by LDREX.
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CLREX                           __clrex
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Signed Saturate
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function saturates a signed value.
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to be saturated
 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    sat  Bit position to saturate to (1..32)
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             Saturated value
 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __SSAT                            __ssat
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Unsigned Saturate
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function saturates an unsigned value.
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to be saturated
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    sat  Bit position to saturate to (0..31)
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             Saturated value
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __USAT                            __usat
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Count leading zeros
 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function counts the number of leading zeros of a data value.
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to count the leading zeros
 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             number of leading zeros in value
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CLZ                             __clz
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Rotate Right with Extend (32 bit)
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function moves each bit of a bitstring right by one bit. The carry input is shifted in at 
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    value  Value to rotate
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return               Rotated value
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #ifndef __NO_EMBEDDED_ASM
ARM GAS  /tmp/ccTYR2Ee.s 			page 80


 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__((section(".rrx_text"))) __STATIC_INLINE __ASM uint32_t __RRX(uint32_t value)
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   rrx r0, r0
 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   bx lr
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDRT Unprivileged (8 bit)
 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged LDRT instruction for 8 bit value.
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return             value of type uint8_t at (*ptr)
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDRBT(ptr)                      ((uint8_t )  __ldrt(ptr))
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDRT Unprivileged (16 bit)
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged LDRT instruction for 16 bit values.
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint16_t at (*ptr)
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDRHT(ptr)                      ((uint16_t)  __ldrt(ptr))
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  LDRT Unprivileged (32 bit)
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged LDRT instruction for 32 bit values.
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 332:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to data
 333:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \return        value of type uint32_t at (*ptr)
 334:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 335:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __LDRT(ptr)                       ((uint32_t ) __ldrt(ptr))
 336:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 337:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 338:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STRT Unprivileged (8 bit)
 339:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 340:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged STRT instruction for 8 bit values.
 341:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STRBT(value, ptr)               __strt(value, ptr)
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STRT Unprivileged (16 bit)
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged STRT instruction for 16 bit values.
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STRHT(value, ptr)               __strt(value, ptr)
 356:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
ARM GAS  /tmp/ccTYR2Ee.s 			page 81


 357:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 358:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  STRT Unprivileged (32 bit)
 359:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 360:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function executes a Unprivileged STRT instruction for 32 bit values.
 361:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]  value  Value to store
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     \param [in]    ptr  Pointer to location
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __STRT(value, ptr)                __strt(value, ptr)
 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif /* (__CORTEX_M >= 0x03) || (__CORTEX_SC >= 300) */
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #elif defined ( __GNUC__ ) /*------------------ GNU Compiler ---------------------*/
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* GNU gcc specific functions */
 372:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 373:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /* Define macros for porting to both thumb1 and thumb2.
 374:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * For thumb1, use low register (r0-r7), specified by constrant "l"
 375:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  * Otherwise, use general registers, specified by constrant "r" */
 376:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #if defined (__thumb__) && !defined (__thumb2__)
 377:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_OUT_REG(r) "=l" (r)
 378:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_USE_REG(r) "l" (r)
 379:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #else
 380:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_OUT_REG(r) "=r" (r)
 381:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #define __CMSIS_GCC_USE_REG(r) "r" (r)
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** #endif
 383:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 384:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  No Operation
 385:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 386:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     No Operation does nothing. This instruction can be used for code alignment purposes.
 387:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 388:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __NOP(void)
 389:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("nop");
 391:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 392:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 393:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 394:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Interrupt
 395:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 396:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Interrupt is a hint instruction that suspends execution
 397:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     until one of a number of events occurs.
 398:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __WFI(void)
 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("wfi");
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Wait For Event
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Wait For Event is a hint instruction that permits the processor to enter
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     a low-power state until one of a number of events occurs.
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __WFE(void)
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("wfe");
 413:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
ARM GAS  /tmp/ccTYR2Ee.s 			page 82


 414:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 415:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 416:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Send Event
 417:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 418:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Send Event is a hint instruction. It causes an event to be signaled to the CPU.
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __SEV(void)
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("sev");
 423:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 426:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Instruction Synchronization Barrier
 427:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     Instruction Synchronization Barrier flushes the pipeline in the processor,
 429:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     so that all instructions following the ISB are fetched from cache or
 430:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     memory, after the instruction has been completed.
 431:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 432:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __ISB(void)
 433:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("isb");
 435:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 436:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 437:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 438:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** /** \brief  Data Synchronization Barrier
 439:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** 
 440:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     This function acts as a special kind of Data Memory Barrier.
 441:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****     It completes when all explicit memory accesses before this instruction complete.
 442:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****  */
 443:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __DSB(void)
 444:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** {
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h ****   __ASM volatile ("dsb");
 2750              		.loc 2 445 0
 2751              		.syntax unified
 2752              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2753 000a BFF34F8F 		dsb
 2754              	@ 0 "" 2
 2755              		.thumb
 2756              		.syntax unified
 2757              	.LBE35:
 2758              	.LBE34:
 2759              	.LBB36:
 2760              	.LBB37:
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 2761              		.loc 2 401 0
 2762              		.syntax unified
 2763              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2764 000e 30BF     		wfi
 2765              	@ 0 "" 2
 2766              		.thumb
 2767              		.syntax unified
 2768 0010 7047     		bx	lr
 2769              	.L375:
 2770 0012 00BF     		.align	2
 2771              	.L374:
 2772 0014 00ED00E0 		.word	-536810240
 2773              	.LBE37:
ARM GAS  /tmp/ccTYR2Ee.s 			page 83


 2774              	.LBE36:
 2775              		.cfi_endproc
 2776              	.LFE197:
 2777              		.size	pmc_enable_sleepmode, .-pmc_enable_sleepmode
 2778              		.section	.text.pmc_set_flash_in_wait_mode,"ax",%progbits
 2779              		.align	1
 2780              		.p2align 2,,3
 2781              		.global	pmc_set_flash_in_wait_mode
 2782              		.syntax unified
 2783              		.thumb
 2784              		.thumb_func
 2785              		.fpu fpv5-d16
 2786              		.type	pmc_set_flash_in_wait_mode, %function
 2787              	pmc_set_flash_in_wait_mode:
 2788              	.LFB198:
1331:../asf/sam/drivers/pmc/pmc.c **** 
1332:../asf/sam/drivers/pmc/pmc.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAM4CM || SAM4CP || SAMV71 || SAMV70 || SAME70 || SAMS70)
1333:../asf/sam/drivers/pmc/pmc.c **** 	UNUSED(uc_type);
1334:../asf/sam/drivers/pmc/pmc.c **** 	__DSB();
1335:../asf/sam/drivers/pmc/pmc.c **** 	__WFI();
1336:../asf/sam/drivers/pmc/pmc.c **** #else
1337:../asf/sam/drivers/pmc/pmc.c **** 	if (uc_type == 0) {
1338:../asf/sam/drivers/pmc/pmc.c **** 		__DSB();
1339:../asf/sam/drivers/pmc/pmc.c **** 		__WFI();
1340:../asf/sam/drivers/pmc/pmc.c **** 	} else {
1341:../asf/sam/drivers/pmc/pmc.c **** 		__DSB();
1342:../asf/sam/drivers/pmc/pmc.c **** 		__WFE();
1343:../asf/sam/drivers/pmc/pmc.c **** 	}
1344:../asf/sam/drivers/pmc/pmc.c **** #endif
1345:../asf/sam/drivers/pmc/pmc.c **** }
1346:../asf/sam/drivers/pmc/pmc.c **** 
1347:../asf/sam/drivers/pmc/pmc.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAM4CM || SAMG || SAM4CP || SAMV71 || SAMV70 || SAME70 || 
1348:../asf/sam/drivers/pmc/pmc.c **** static uint32_t ul_flash_in_wait_mode = PMC_WAIT_MODE_FLASH_DEEP_POWERDOWN;
1349:../asf/sam/drivers/pmc/pmc.c **** /**
1350:../asf/sam/drivers/pmc/pmc.c ****  * \brief Set the embedded flash state in wait mode
1351:../asf/sam/drivers/pmc/pmc.c ****  *
1352:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_flash_state PMC_WAIT_MODE_FLASH_STANDBY flash in standby mode,
1353:../asf/sam/drivers/pmc/pmc.c ****  * PMC_WAIT_MODE_FLASH_DEEP_POWERDOWN flash in deep power down mode.
1354:../asf/sam/drivers/pmc/pmc.c ****  */
1355:../asf/sam/drivers/pmc/pmc.c **** void pmc_set_flash_in_wait_mode(uint32_t ul_flash_state)
1356:../asf/sam/drivers/pmc/pmc.c **** {
 2789              		.loc 1 1356 0
 2790              		.cfi_startproc
 2791              		@ args = 0, pretend = 0, frame = 0
 2792              		@ frame_needed = 0, uses_anonymous_args = 0
 2793              		@ link register save eliminated.
 2794              	.LVL185:
 2795 0000 7047     		bx	lr
 2796              		.cfi_endproc
 2797              	.LFE198:
 2798              		.size	pmc_set_flash_in_wait_mode, .-pmc_set_flash_in_wait_mode
 2799 0002 00BF     		.section	.text.pmc_enable_waitmode,"ax",%progbits
 2800              		.align	1
 2801              		.p2align 2,,3
 2802              		.global	pmc_enable_waitmode
 2803              		.syntax unified
 2804              		.thumb
ARM GAS  /tmp/ccTYR2Ee.s 			page 84


 2805              		.thumb_func
 2806              		.fpu fpv5-d16
 2807              		.type	pmc_enable_waitmode, %function
 2808              	pmc_enable_waitmode:
 2809              	.LFB199:
1357:../asf/sam/drivers/pmc/pmc.c **** 	ul_flash_in_wait_mode = ul_flash_state;
1358:../asf/sam/drivers/pmc/pmc.c **** }
1359:../asf/sam/drivers/pmc/pmc.c **** 
1360:../asf/sam/drivers/pmc/pmc.c **** /**
1361:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable Wait Mode. Enter condition: (WAITMODE bit = 1) + FLPM
1362:../asf/sam/drivers/pmc/pmc.c ****  *
1363:../asf/sam/drivers/pmc/pmc.c ****  * \note In this function, FLPM will retain, WAITMODE bit will be set,
1364:../asf/sam/drivers/pmc/pmc.c ****  * Generally, this function will be called by pmc_sleep() in order to
1365:../asf/sam/drivers/pmc/pmc.c ****  * complete all sequence entering wait mode.
1366:../asf/sam/drivers/pmc/pmc.c ****  * See \ref pmc_sleep() for entering different sleep modes.
1367:../asf/sam/drivers/pmc/pmc.c ****  */
1368:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_waitmode(void)
1369:../asf/sam/drivers/pmc/pmc.c **** {
 2810              		.loc 1 1369 0
 2811              		.cfi_startproc
 2812              		@ args = 0, pretend = 0, frame = 0
 2813              		@ frame_needed = 0, uses_anonymous_args = 0
 2814              		@ link register save eliminated.
1370:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t i;
1371:../asf/sam/drivers/pmc/pmc.c **** 
1372:../asf/sam/drivers/pmc/pmc.c **** 	/* Flash in wait mode */
1373:../asf/sam/drivers/pmc/pmc.c **** 	i = PMC->PMC_FSMR;
 2815              		.loc 1 1373 0
 2816 0000 0F4B     		ldr	r3, .L386
1374:../asf/sam/drivers/pmc/pmc.c **** 	i &= ~PMC_FSMR_FLPM_Msk;
1375:../asf/sam/drivers/pmc/pmc.c **** #if !(SAMV71 || SAMV70 || SAME70 || SAMS70)
1376:../asf/sam/drivers/pmc/pmc.c **** 	i |= ul_flash_in_wait_mode;
1377:../asf/sam/drivers/pmc/pmc.c **** #else
1378:../asf/sam/drivers/pmc/pmc.c **** 	i |= PMC_WAIT_MODE_FLASH_IDLE;
1379:../asf/sam/drivers/pmc/pmc.c **** #endif
1380:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_FSMR = i;
1381:../asf/sam/drivers/pmc/pmc.c **** 
1382:../asf/sam/drivers/pmc/pmc.c **** 	/* Set the WAITMODE bit = 1 */
1383:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_MOR |= CKGR_MOR_KEY_PASSWD | CKGR_MOR_WAITMODE;
 2817              		.loc 1 1383 0
 2818 0002 1048     		ldr	r0, .L386+4
1373:../asf/sam/drivers/pmc/pmc.c **** 	i &= ~PMC_FSMR_FLPM_Msk;
 2819              		.loc 1 1373 0
 2820 0004 196F     		ldr	r1, [r3, #112]
 2821              	.LVL186:
1384:../asf/sam/drivers/pmc/pmc.c **** 
1385:../asf/sam/drivers/pmc/pmc.c **** 	/* Waiting for Master Clock Ready MCKRDY = 1 */
1386:../asf/sam/drivers/pmc/pmc.c **** 	while (!(PMC->PMC_SR & PMC_SR_MCKRDY));
 2822              		.loc 1 1386 0
 2823 0006 1A46     		mov	r2, r3
1374:../asf/sam/drivers/pmc/pmc.c **** #if !(SAMV71 || SAMV70 || SAME70 || SAMS70)
 2824              		.loc 1 1374 0
 2825 0008 21F4C001 		bic	r1, r1, #6291456
 2826              	.LVL187:
1378:../asf/sam/drivers/pmc/pmc.c **** #endif
 2827              		.loc 1 1378 0
 2828 000c 41F48001 		orr	r1, r1, #4194304
ARM GAS  /tmp/ccTYR2Ee.s 			page 85


 2829              	.LVL188:
1380:../asf/sam/drivers/pmc/pmc.c **** 
 2830              		.loc 1 1380 0
 2831 0010 1967     		str	r1, [r3, #112]
1383:../asf/sam/drivers/pmc/pmc.c **** 
 2832              		.loc 1 1383 0
 2833 0012 196A     		ldr	r1, [r3, #32]
 2834              	.LVL189:
 2835 0014 0843     		orrs	r0, r0, r1
 2836 0016 1862     		str	r0, [r3, #32]
 2837              	.LVL190:
 2838              	.L378:
 2839              		.loc 1 1386 0 discriminator 1
 2840 0018 936E     		ldr	r3, [r2, #104]
 2841 001a 1907     		lsls	r1, r3, #28
 2842 001c FCD5     		bpl	.L378
 2843 001e 4FF4FA73 		mov	r3, #500
 2844              	.L379:
 2845              	.LVL191:
 2846              	.LBB38:
 2847              	.LBB39:
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 2848              		.loc 2 390 0
 2849              		.syntax unified
 2850              	@ 390 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2851 0022 00BF     		nop
 2852              	@ 0 "" 2
 2853              	.LVL192:
 2854              		.thumb
 2855              		.syntax unified
 2856              	.LBE39:
 2857              	.LBE38:
1387:../asf/sam/drivers/pmc/pmc.c **** 
1388:../asf/sam/drivers/pmc/pmc.c **** 	/* Waiting for MOSCRCEN bit cleared is strongly recommended
1389:../asf/sam/drivers/pmc/pmc.c **** 	 * to ensure that the core will not execute undesired instructions
1390:../asf/sam/drivers/pmc/pmc.c **** 	 */
1391:../asf/sam/drivers/pmc/pmc.c **** 	for (i = 0; i < 500; i++) {
 2858              		.loc 1 1391 0
 2859 0024 013B     		subs	r3, r3, #1
 2860              	.LVL193:
 2861 0026 FCD1     		bne	.L379
1392:../asf/sam/drivers/pmc/pmc.c **** 		__NOP();
1393:../asf/sam/drivers/pmc/pmc.c **** 	}
1394:../asf/sam/drivers/pmc/pmc.c **** 	while (!(PMC->CKGR_MOR & CKGR_MOR_MOSCRCEN));
 2862              		.loc 1 1394 0
 2863 0028 054A     		ldr	r2, .L386
 2864              	.LVL194:
 2865              	.L380:
 2866              		.loc 1 1394 0 is_stmt 0 discriminator 1
 2867 002a 136A     		ldr	r3, [r2, #32]
 2868 002c 1B07     		lsls	r3, r3, #28
 2869 002e FCD5     		bpl	.L380
1395:../asf/sam/drivers/pmc/pmc.c **** 
1396:../asf/sam/drivers/pmc/pmc.c **** #if (!SAMG)
1397:../asf/sam/drivers/pmc/pmc.c **** 	/* Restore Flash in idle mode */
1398:../asf/sam/drivers/pmc/pmc.c **** 	i = PMC->PMC_FSMR;
 2870              		.loc 1 1398 0 is_stmt 1
ARM GAS  /tmp/ccTYR2Ee.s 			page 86


 2871 0030 136F     		ldr	r3, [r2, #112]
 2872              	.LVL195:
1399:../asf/sam/drivers/pmc/pmc.c **** 	i &= ~PMC_FSMR_FLPM_Msk;
 2873              		.loc 1 1399 0
 2874 0032 23F4C003 		bic	r3, r3, #6291456
 2875              	.LVL196:
1400:../asf/sam/drivers/pmc/pmc.c **** 	i |= PMC_WAIT_MODE_FLASH_IDLE;
 2876              		.loc 1 1400 0
 2877 0036 43F48003 		orr	r3, r3, #4194304
 2878              	.LVL197:
1401:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_FSMR = i;
 2879              		.loc 1 1401 0
 2880 003a 1367     		str	r3, [r2, #112]
 2881 003c 7047     		bx	lr
 2882              	.L387:
 2883 003e 00BF     		.align	2
 2884              	.L386:
 2885 0040 00060E40 		.word	1074660864
 2886 0044 04003700 		.word	3604484
 2887              		.cfi_endproc
 2888              	.LFE199:
 2889              		.size	pmc_enable_waitmode, .-pmc_enable_waitmode
 2890              		.section	.text.pmc_enable_backupmode,"ax",%progbits
 2891              		.align	1
 2892              		.p2align 2,,3
 2893              		.global	pmc_enable_backupmode
 2894              		.syntax unified
 2895              		.thumb
 2896              		.thumb_func
 2897              		.fpu fpv5-d16
 2898              		.type	pmc_enable_backupmode, %function
 2899              	pmc_enable_backupmode:
 2900              	.LFB200:
1402:../asf/sam/drivers/pmc/pmc.c **** #endif
1403:../asf/sam/drivers/pmc/pmc.c **** }
1404:../asf/sam/drivers/pmc/pmc.c **** #else
1405:../asf/sam/drivers/pmc/pmc.c **** /**
1406:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable Wait Mode. Enter condition: WFE + (SLEEPDEEP bit = 0) +
1407:../asf/sam/drivers/pmc/pmc.c ****  * (LPM bit = 1)
1408:../asf/sam/drivers/pmc/pmc.c ****  */
1409:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_waitmode(void)
1410:../asf/sam/drivers/pmc/pmc.c **** {
1411:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t i;
1412:../asf/sam/drivers/pmc/pmc.c **** 
1413:../asf/sam/drivers/pmc/pmc.c **** 	PMC->PMC_FSMR |= PMC_FSMR_LPM; /* Enter Wait mode */
1414:../asf/sam/drivers/pmc/pmc.c **** 	SCB->SCR &= (uint32_t) ~ SCB_SCR_SLEEPDEEP_Msk; /* Deep sleep */
1415:../asf/sam/drivers/pmc/pmc.c **** 
1416:../asf/sam/drivers/pmc/pmc.c **** 	__DSB();
1417:../asf/sam/drivers/pmc/pmc.c **** 	__WFE();
1418:../asf/sam/drivers/pmc/pmc.c **** 
1419:../asf/sam/drivers/pmc/pmc.c **** 	/* Waiting for MOSCRCEN bit cleared is strongly recommended
1420:../asf/sam/drivers/pmc/pmc.c **** 	 * to ensure that the core will not execute undesired instructions
1421:../asf/sam/drivers/pmc/pmc.c **** 	 */
1422:../asf/sam/drivers/pmc/pmc.c **** 	for (i = 0; i < 500; i++) {
1423:../asf/sam/drivers/pmc/pmc.c **** 		__NOP();
1424:../asf/sam/drivers/pmc/pmc.c **** 	}
1425:../asf/sam/drivers/pmc/pmc.c **** 	while (!(PMC->CKGR_MOR & CKGR_MOR_MOSCRCEN));
ARM GAS  /tmp/ccTYR2Ee.s 			page 87


1426:../asf/sam/drivers/pmc/pmc.c **** 
1427:../asf/sam/drivers/pmc/pmc.c **** }
1428:../asf/sam/drivers/pmc/pmc.c **** #endif
1429:../asf/sam/drivers/pmc/pmc.c **** 
1430:../asf/sam/drivers/pmc/pmc.c **** #if (!(SAMG51 || SAMG53 || SAMG54))
1431:../asf/sam/drivers/pmc/pmc.c **** /**
1432:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable Backup Mode. Enter condition: WFE/(VROFF bit = 1) +
1433:../asf/sam/drivers/pmc/pmc.c ****  * (SLEEPDEEP bit = 1)
1434:../asf/sam/drivers/pmc/pmc.c ****  */
1435:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_backupmode(void)
1436:../asf/sam/drivers/pmc/pmc.c **** {
 2901              		.loc 1 1436 0
 2902              		.cfi_startproc
 2903              		@ args = 0, pretend = 0, frame = 0
 2904              		@ frame_needed = 0, uses_anonymous_args = 0
 2905              		@ link register save eliminated.
1437:../asf/sam/drivers/pmc/pmc.c **** #if (SAM4C || SAM4CM || SAM4CP)
1438:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t tmp = SUPC->SUPC_MR & ~(SUPC_MR_BUPPOREN | SUPC_MR_KEY_Msk);
1439:../asf/sam/drivers/pmc/pmc.c **** 	SUPC->SUPC_MR = tmp | SUPC_MR_KEY_PASSWD;
1440:../asf/sam/drivers/pmc/pmc.c **** 	while (SUPC->SUPC_SR & SUPC_SR_BUPPORS);
1441:../asf/sam/drivers/pmc/pmc.c **** #endif
1442:../asf/sam/drivers/pmc/pmc.c **** 	SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk;
 2906              		.loc 1 1442 0
 2907 0000 0649     		ldr	r1, .L389
1443:../asf/sam/drivers/pmc/pmc.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAM4CM || SAM4CP || SAMG55 || SAMV71 || SAMV70 || SAME70 |
1444:../asf/sam/drivers/pmc/pmc.c **** 	SUPC->SUPC_CR = SUPC_CR_KEY_PASSWD | SUPC_CR_VROFF_STOP_VREG;
 2908              		.loc 1 1444 0
 2909 0002 074A     		ldr	r2, .L389+4
1442:../asf/sam/drivers/pmc/pmc.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAM4CM || SAM4CP || SAMG55 || SAMV71 || SAMV70 || SAME70 |
 2910              		.loc 1 1442 0
 2911 0004 0B69     		ldr	r3, [r1, #16]
 2912              		.loc 1 1444 0
 2913 0006 0748     		ldr	r0, .L389+8
1442:../asf/sam/drivers/pmc/pmc.c **** #if (SAM4S || SAM4E || SAM4N || SAM4C || SAM4CM || SAM4CP || SAMG55 || SAMV71 || SAMV70 || SAME70 |
 2914              		.loc 1 1442 0
 2915 0008 43F00403 		orr	r3, r3, #4
 2916 000c 0B61     		str	r3, [r1, #16]
 2917              		.loc 1 1444 0
 2918 000e 1060     		str	r0, [r2]
1445:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_dummy = SUPC->SUPC_MR;
 2919              		.loc 1 1445 0
 2920 0010 9368     		ldr	r3, [r2, #8]
 2921              	.LBB40:
 2922              	.LBB41:
 2923              		.loc 2 445 0
 2924              		.syntax unified
 2925              	@ 445 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2926 0012 BFF34F8F 		dsb
 2927              	@ 0 "" 2
 2928              		.thumb
 2929              		.syntax unified
 2930              	.LBE41:
 2931              	.LBE40:
 2932              	.LBB42:
 2933              	.LBB43:
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 2934              		.loc 2 412 0
ARM GAS  /tmp/ccTYR2Ee.s 			page 88


 2935              		.syntax unified
 2936              	@ 412 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2937 0016 20BF     		wfe
 2938              	@ 0 "" 2
 2939              		.thumb
 2940              		.syntax unified
 2941              	.LBE43:
 2942              	.LBE42:
 2943              	.LBB44:
 2944              	.LBB45:
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h **** }
 2945              		.loc 2 401 0
 2946              		.syntax unified
 2947              	@ 401 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cmInstr.h" 1
 2948 0018 30BF     		wfi
 2949              	@ 0 "" 2
 2950              		.thumb
 2951              		.syntax unified
 2952 001a 7047     		bx	lr
 2953              	.L390:
 2954              		.align	2
 2955              	.L389:
 2956 001c 00ED00E0 		.word	-536810240
 2957 0020 10180E40 		.word	1074665488
 2958 0024 040000A5 		.word	-1526726652
 2959              	.LBE45:
 2960              	.LBE44:
 2961              		.cfi_endproc
 2962              	.LFE200:
 2963              		.size	pmc_enable_backupmode, .-pmc_enable_backupmode
 2964              		.section	.text.pmc_enable_clock_failure_detector,"ax",%progbits
 2965              		.align	1
 2966              		.p2align 2,,3
 2967              		.global	pmc_enable_clock_failure_detector
 2968              		.syntax unified
 2969              		.thumb
 2970              		.thumb_func
 2971              		.fpu fpv5-d16
 2972              		.type	pmc_enable_clock_failure_detector, %function
 2973              	pmc_enable_clock_failure_detector:
 2974              	.LFB201:
1446:../asf/sam/drivers/pmc/pmc.c **** 	UNUSED(ul_dummy);
1447:../asf/sam/drivers/pmc/pmc.c **** 	__DSB();
1448:../asf/sam/drivers/pmc/pmc.c **** 	__WFE();
1449:../asf/sam/drivers/pmc/pmc.c **** 	__WFI();
1450:../asf/sam/drivers/pmc/pmc.c **** #else
1451:../asf/sam/drivers/pmc/pmc.c **** 	__DSB();
1452:../asf/sam/drivers/pmc/pmc.c **** 	__WFE();
1453:../asf/sam/drivers/pmc/pmc.c **** #endif
1454:../asf/sam/drivers/pmc/pmc.c **** }
1455:../asf/sam/drivers/pmc/pmc.c **** #endif
1456:../asf/sam/drivers/pmc/pmc.c **** 
1457:../asf/sam/drivers/pmc/pmc.c **** /**
1458:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable Clock Failure Detector.
1459:../asf/sam/drivers/pmc/pmc.c ****  */
1460:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_clock_failure_detector(void)
1461:../asf/sam/drivers/pmc/pmc.c **** {
ARM GAS  /tmp/ccTYR2Ee.s 			page 89


 2975              		.loc 1 1461 0
 2976              		.cfi_startproc
 2977              		@ args = 0, pretend = 0, frame = 0
 2978              		@ frame_needed = 0, uses_anonymous_args = 0
 2979              		@ link register save eliminated.
1462:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_reg = PMC->CKGR_MOR;
 2980              		.loc 1 1462 0
 2981 0000 024A     		ldr	r2, .L392
1463:../asf/sam/drivers/pmc/pmc.c **** 
1464:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_MOR = CKGR_MOR_KEY_PASSWD | CKGR_MOR_CFDEN | ul_reg;
 2982              		.loc 1 1464 0
 2983 0002 034B     		ldr	r3, .L392+4
1462:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_reg = PMC->CKGR_MOR;
 2984              		.loc 1 1462 0
 2985 0004 116A     		ldr	r1, [r2, #32]
 2986              	.LVL198:
 2987              		.loc 1 1464 0
 2988 0006 0B43     		orrs	r3, r3, r1
 2989 0008 1362     		str	r3, [r2, #32]
 2990 000a 7047     		bx	lr
 2991              	.L393:
 2992              		.align	2
 2993              	.L392:
 2994 000c 00060E40 		.word	1074660864
 2995 0010 00003702 		.word	37158912
 2996              		.cfi_endproc
 2997              	.LFE201:
 2998              		.size	pmc_enable_clock_failure_detector, .-pmc_enable_clock_failure_detector
 2999              		.section	.text.pmc_disable_clock_failure_detector,"ax",%progbits
 3000              		.align	1
 3001              		.p2align 2,,3
 3002              		.global	pmc_disable_clock_failure_detector
 3003              		.syntax unified
 3004              		.thumb
 3005              		.thumb_func
 3006              		.fpu fpv5-d16
 3007              		.type	pmc_disable_clock_failure_detector, %function
 3008              	pmc_disable_clock_failure_detector:
 3009              	.LFB202:
1465:../asf/sam/drivers/pmc/pmc.c **** }
1466:../asf/sam/drivers/pmc/pmc.c **** 
1467:../asf/sam/drivers/pmc/pmc.c **** /**
1468:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable Clock Failure Detector.
1469:../asf/sam/drivers/pmc/pmc.c ****  */
1470:../asf/sam/drivers/pmc/pmc.c **** void pmc_disable_clock_failure_detector(void)
1471:../asf/sam/drivers/pmc/pmc.c **** {
 3010              		.loc 1 1471 0
 3011              		.cfi_startproc
 3012              		@ args = 0, pretend = 0, frame = 0
 3013              		@ frame_needed = 0, uses_anonymous_args = 0
 3014              		@ link register save eliminated.
1472:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_reg = PMC->CKGR_MOR & (~CKGR_MOR_CFDEN);
 3015              		.loc 1 1472 0
 3016 0000 034A     		ldr	r2, .L395
 3017 0002 136A     		ldr	r3, [r2, #32]
 3018              	.LVL199:
 3019 0004 23F00073 		bic	r3, r3, #33554432
ARM GAS  /tmp/ccTYR2Ee.s 			page 90


 3020              	.LVL200:
1473:../asf/sam/drivers/pmc/pmc.c **** 
1474:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_MOR = CKGR_MOR_KEY_PASSWD | ul_reg;
 3021              		.loc 1 1474 0
 3022 0008 43F45C13 		orr	r3, r3, #3604480
 3023              	.LVL201:
 3024 000c 1362     		str	r3, [r2, #32]
 3025 000e 7047     		bx	lr
 3026              	.L396:
 3027              		.align	2
 3028              	.L395:
 3029 0010 00060E40 		.word	1074660864
 3030              		.cfi_endproc
 3031              	.LFE202:
 3032              		.size	pmc_disable_clock_failure_detector, .-pmc_disable_clock_failure_detector
 3033              		.section	.text.pmc_enable_sclk_osc_freq_monitor,"ax",%progbits
 3034              		.align	1
 3035              		.p2align 2,,3
 3036              		.global	pmc_enable_sclk_osc_freq_monitor
 3037              		.syntax unified
 3038              		.thumb
 3039              		.thumb_func
 3040              		.fpu fpv5-d16
 3041              		.type	pmc_enable_sclk_osc_freq_monitor, %function
 3042              	pmc_enable_sclk_osc_freq_monitor:
 3043              	.LFB203:
1475:../asf/sam/drivers/pmc/pmc.c **** }
1476:../asf/sam/drivers/pmc/pmc.c **** 
1477:../asf/sam/drivers/pmc/pmc.c **** #if (SAM4N || SAM4C || SAM4CM || SAM4CP || SAMV71 || SAMV70 || SAME70 || SAMS70)
1478:../asf/sam/drivers/pmc/pmc.c **** /**
1479:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable Slow Crystal Oscillator Frequency Monitoring.
1480:../asf/sam/drivers/pmc/pmc.c ****  */
1481:../asf/sam/drivers/pmc/pmc.c **** void pmc_enable_sclk_osc_freq_monitor(void)
1482:../asf/sam/drivers/pmc/pmc.c **** {
 3044              		.loc 1 1482 0
 3045              		.cfi_startproc
 3046              		@ args = 0, pretend = 0, frame = 0
 3047              		@ frame_needed = 0, uses_anonymous_args = 0
 3048              		@ link register save eliminated.
1483:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_reg = PMC->CKGR_MOR;
 3049              		.loc 1 1483 0
 3050 0000 024A     		ldr	r2, .L398
1484:../asf/sam/drivers/pmc/pmc.c **** 
1485:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_MOR = CKGR_MOR_KEY_PASSWD | CKGR_MOR_XT32KFME | ul_reg;
 3051              		.loc 1 1485 0
 3052 0002 034B     		ldr	r3, .L398+4
1483:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_reg = PMC->CKGR_MOR;
 3053              		.loc 1 1483 0
 3054 0004 116A     		ldr	r1, [r2, #32]
 3055              	.LVL202:
 3056              		.loc 1 1485 0
 3057 0006 0B43     		orrs	r3, r3, r1
 3058 0008 1362     		str	r3, [r2, #32]
 3059 000a 7047     		bx	lr
 3060              	.L399:
 3061              		.align	2
 3062              	.L398:
ARM GAS  /tmp/ccTYR2Ee.s 			page 91


 3063 000c 00060E40 		.word	1074660864
 3064 0010 00003704 		.word	70713344
 3065              		.cfi_endproc
 3066              	.LFE203:
 3067              		.size	pmc_enable_sclk_osc_freq_monitor, .-pmc_enable_sclk_osc_freq_monitor
 3068              		.section	.text.pmc_disable_sclk_osc_freq_monitor,"ax",%progbits
 3069              		.align	1
 3070              		.p2align 2,,3
 3071              		.global	pmc_disable_sclk_osc_freq_monitor
 3072              		.syntax unified
 3073              		.thumb
 3074              		.thumb_func
 3075              		.fpu fpv5-d16
 3076              		.type	pmc_disable_sclk_osc_freq_monitor, %function
 3077              	pmc_disable_sclk_osc_freq_monitor:
 3078              	.LFB204:
1486:../asf/sam/drivers/pmc/pmc.c **** }
1487:../asf/sam/drivers/pmc/pmc.c **** 
1488:../asf/sam/drivers/pmc/pmc.c **** /**
1489:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable Slow Crystal Oscillator Frequency Monitoring.
1490:../asf/sam/drivers/pmc/pmc.c ****  */
1491:../asf/sam/drivers/pmc/pmc.c **** void pmc_disable_sclk_osc_freq_monitor(void)
1492:../asf/sam/drivers/pmc/pmc.c **** {
 3079              		.loc 1 1492 0
 3080              		.cfi_startproc
 3081              		@ args = 0, pretend = 0, frame = 0
 3082              		@ frame_needed = 0, uses_anonymous_args = 0
 3083              		@ link register save eliminated.
1493:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t ul_reg = PMC->CKGR_MOR & (~CKGR_MOR_XT32KFME);
 3084              		.loc 1 1493 0
 3085 0000 034A     		ldr	r2, .L401
 3086 0002 136A     		ldr	r3, [r2, #32]
 3087              	.LVL203:
 3088 0004 23F08063 		bic	r3, r3, #67108864
 3089              	.LVL204:
1494:../asf/sam/drivers/pmc/pmc.c **** 
1495:../asf/sam/drivers/pmc/pmc.c **** 	PMC->CKGR_MOR = CKGR_MOR_KEY_PASSWD | ul_reg;
 3090              		.loc 1 1495 0
 3091 0008 43F45C13 		orr	r3, r3, #3604480
 3092              	.LVL205:
 3093 000c 1362     		str	r3, [r2, #32]
 3094 000e 7047     		bx	lr
 3095              	.L402:
 3096              		.align	2
 3097              	.L401:
 3098 0010 00060E40 		.word	1074660864
 3099              		.cfi_endproc
 3100              	.LFE204:
 3101              		.size	pmc_disable_sclk_osc_freq_monitor, .-pmc_disable_sclk_osc_freq_monitor
 3102              		.section	.text.pmc_set_writeprotect,"ax",%progbits
 3103              		.align	1
 3104              		.p2align 2,,3
 3105              		.global	pmc_set_writeprotect
 3106              		.syntax unified
 3107              		.thumb
 3108              		.thumb_func
 3109              		.fpu fpv5-d16
ARM GAS  /tmp/ccTYR2Ee.s 			page 92


 3110              		.type	pmc_set_writeprotect, %function
 3111              	pmc_set_writeprotect:
 3112              	.LFB205:
1496:../asf/sam/drivers/pmc/pmc.c **** }
1497:../asf/sam/drivers/pmc/pmc.c **** #endif
1498:../asf/sam/drivers/pmc/pmc.c **** 
1499:../asf/sam/drivers/pmc/pmc.c **** /**
1500:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable or disable write protect of PMC registers.
1501:../asf/sam/drivers/pmc/pmc.c ****  *
1502:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_enable 1 to enable, 0 to disable.
1503:../asf/sam/drivers/pmc/pmc.c ****  */
1504:../asf/sam/drivers/pmc/pmc.c **** void pmc_set_writeprotect(uint32_t ul_enable)
1505:../asf/sam/drivers/pmc/pmc.c **** {
 3113              		.loc 1 1505 0
 3114              		.cfi_startproc
 3115              		@ args = 0, pretend = 0, frame = 0
 3116              		@ frame_needed = 0, uses_anonymous_args = 0
 3117              		@ link register save eliminated.
 3118              	.LVL206:
1506:../asf/sam/drivers/pmc/pmc.c **** 	if (ul_enable) {
1507:../asf/sam/drivers/pmc/pmc.c **** 		PMC->PMC_WPMR = PMC_WPMR_WPKEY_PASSWD | PMC_WPMR_WPEN;
 3119              		.loc 1 1507 0
 3120 0000 044B     		ldr	r3, .L407
1506:../asf/sam/drivers/pmc/pmc.c **** 	if (ul_enable) {
 3121              		.loc 1 1506 0
 3122 0002 18B9     		cbnz	r0, .L406
1508:../asf/sam/drivers/pmc/pmc.c **** 	} else {
1509:../asf/sam/drivers/pmc/pmc.c **** 		PMC->PMC_WPMR = PMC_WPMR_WPKEY_PASSWD;
 3123              		.loc 1 1509 0
 3124 0004 044A     		ldr	r2, .L407+4
 3125 0006 C3F8E420 		str	r2, [r3, #228]
 3126 000a 7047     		bx	lr
 3127              	.L406:
1507:../asf/sam/drivers/pmc/pmc.c **** 	} else {
 3128              		.loc 1 1507 0
 3129 000c 034A     		ldr	r2, .L407+8
 3130 000e C3F8E420 		str	r2, [r3, #228]
 3131 0012 7047     		bx	lr
 3132              	.L408:
 3133              		.align	2
 3134              	.L407:
 3135 0014 00060E40 		.word	1074660864
 3136 0018 00434D50 		.word	1347240704
 3137 001c 01434D50 		.word	1347240705
 3138              		.cfi_endproc
 3139              	.LFE205:
 3140              		.size	pmc_set_writeprotect, .-pmc_set_writeprotect
 3141              		.section	.text.pmc_get_writeprotect_status,"ax",%progbits
 3142              		.align	1
 3143              		.p2align 2,,3
 3144              		.global	pmc_get_writeprotect_status
 3145              		.syntax unified
 3146              		.thumb
 3147              		.thumb_func
 3148              		.fpu fpv5-d16
 3149              		.type	pmc_get_writeprotect_status, %function
 3150              	pmc_get_writeprotect_status:
ARM GAS  /tmp/ccTYR2Ee.s 			page 93


 3151              	.LFB206:
1510:../asf/sam/drivers/pmc/pmc.c **** 	}
1511:../asf/sam/drivers/pmc/pmc.c **** }
1512:../asf/sam/drivers/pmc/pmc.c **** 
1513:../asf/sam/drivers/pmc/pmc.c **** /**
1514:../asf/sam/drivers/pmc/pmc.c ****  * \brief Return write protect status.
1515:../asf/sam/drivers/pmc/pmc.c ****  *
1516:../asf/sam/drivers/pmc/pmc.c ****  * \return Return write protect status.
1517:../asf/sam/drivers/pmc/pmc.c ****  */
1518:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_get_writeprotect_status(void)
1519:../asf/sam/drivers/pmc/pmc.c **** {
 3152              		.loc 1 1519 0
 3153              		.cfi_startproc
 3154              		@ args = 0, pretend = 0, frame = 0
 3155              		@ frame_needed = 0, uses_anonymous_args = 0
 3156              		@ link register save eliminated.
1520:../asf/sam/drivers/pmc/pmc.c **** 	return PMC->PMC_WPSR;
 3157              		.loc 1 1520 0
 3158 0000 014B     		ldr	r3, .L410
 3159 0002 D3F8E800 		ldr	r0, [r3, #232]
1521:../asf/sam/drivers/pmc/pmc.c **** }
 3160              		.loc 1 1521 0
 3161 0006 7047     		bx	lr
 3162              	.L411:
 3163              		.align	2
 3164              	.L410:
 3165 0008 00060E40 		.word	1074660864
 3166              		.cfi_endproc
 3167              	.LFE206:
 3168              		.size	pmc_get_writeprotect_status, .-pmc_get_writeprotect_status
 3169              		.section	.text.pmc_enable_sleepwalking,"ax",%progbits
 3170              		.align	1
 3171              		.p2align 2,,3
 3172              		.global	pmc_enable_sleepwalking
 3173              		.syntax unified
 3174              		.thumb
 3175              		.thumb_func
 3176              		.fpu fpv5-d16
 3177              		.type	pmc_enable_sleepwalking, %function
 3178              	pmc_enable_sleepwalking:
 3179              	.LFB207:
1522:../asf/sam/drivers/pmc/pmc.c **** 
1523:../asf/sam/drivers/pmc/pmc.c **** #if (SAMG53 || SAMG54 || SAMG55 || SAMV71 || SAMV70 || SAME70 || SAMS70)
1524:../asf/sam/drivers/pmc/pmc.c **** /**
1525:../asf/sam/drivers/pmc/pmc.c ****  * \brief Enable the specified peripheral clock.
1526:../asf/sam/drivers/pmc/pmc.c ****  *
1527:../asf/sam/drivers/pmc/pmc.c ****  * \note The ID must NOT be shifted (i.e., 1 << ID_xxx).
1528:../asf/sam/drivers/pmc/pmc.c ****  *
1529:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Peripheral ID (ID_xxx).
1530:../asf/sam/drivers/pmc/pmc.c ****  *
1531:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
1532:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Fail.
1533:../asf/sam/drivers/pmc/pmc.c ****  */
1534:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_enable_sleepwalking(uint32_t ul_id)
1535:../asf/sam/drivers/pmc/pmc.c **** {
 3180              		.loc 1 1535 0
 3181              		.cfi_startproc
ARM GAS  /tmp/ccTYR2Ee.s 			page 94


 3182              		@ args = 0, pretend = 0, frame = 0
 3183              		@ frame_needed = 0, uses_anonymous_args = 0
 3184              		@ link register save eliminated.
 3185              	.LVL207:
1536:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t temp;
1537:../asf/sam/drivers/pmc/pmc.c **** #if (SAMG55 || SAMV71 || SAMV70 || SAME70 || SAMS70)
1538:../asf/sam/drivers/pmc/pmc.c **** 	if ((7 <= ul_id) && (ul_id<= 29)) {
 3186              		.loc 1 1538 0
 3187 0000 C31F     		subs	r3, r0, #7
 3188 0002 162B     		cmp	r3, #22
 3189 0004 11D8     		bhi	.L413
 3190              	.LBB60:
 3191              	.LBB61:
1539:../asf/sam/drivers/pmc/pmc.c **** #else
1540:../asf/sam/drivers/pmc/pmc.c **** 	if ((8 <= ul_id) && (ul_id<= 29)) {
1541:../asf/sam/drivers/pmc/pmc.c **** #endif
1542:../asf/sam/drivers/pmc/pmc.c **** 		temp = pmc_get_active_status0();
1543:../asf/sam/drivers/pmc/pmc.c **** 		if (temp & (1 << ul_id)) {
1544:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
1545:../asf/sam/drivers/pmc/pmc.c **** 		}
1546:../asf/sam/drivers/pmc/pmc.c **** 		PMC->PMC_SLPWK_ER0 = 1 << ul_id;
1547:../asf/sam/drivers/pmc/pmc.c **** 		temp = pmc_get_active_status0();
1548:../asf/sam/drivers/pmc/pmc.c **** 		if (temp & (1 << ul_id)) {
1549:../asf/sam/drivers/pmc/pmc.c **** 			pmc_disable_sleepwalking(ul_id);
1550:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
1551:../asf/sam/drivers/pmc/pmc.c **** 		}
1552:../asf/sam/drivers/pmc/pmc.c **** 		return 0;
1553:../asf/sam/drivers/pmc/pmc.c **** 	}
1554:../asf/sam/drivers/pmc/pmc.c **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
1555:../asf/sam/drivers/pmc/pmc.c **** 	else if ((32 <= ul_id) && (ul_id<= 60)) {
1556:../asf/sam/drivers/pmc/pmc.c **** 		ul_id -= 32;
1557:../asf/sam/drivers/pmc/pmc.c **** 		temp = pmc_get_active_status1();
1558:../asf/sam/drivers/pmc/pmc.c **** 		if (temp & (1 << ul_id)) {
1559:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
1560:../asf/sam/drivers/pmc/pmc.c **** 		}
1561:../asf/sam/drivers/pmc/pmc.c **** 		PMC->PMC_SLPWK_ER1 = 1 << ul_id;
1562:../asf/sam/drivers/pmc/pmc.c **** 		temp = pmc_get_active_status1();
1563:../asf/sam/drivers/pmc/pmc.c **** 		if (temp & (1 << ul_id)) {
1564:../asf/sam/drivers/pmc/pmc.c **** 			pmc_disable_sleepwalking(ul_id);
1565:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
1566:../asf/sam/drivers/pmc/pmc.c **** 		}
1567:../asf/sam/drivers/pmc/pmc.c **** 		return 0;
1568:../asf/sam/drivers/pmc/pmc.c **** 	}
1569:../asf/sam/drivers/pmc/pmc.c **** #endif
1570:../asf/sam/drivers/pmc/pmc.c **** 	else {
1571:../asf/sam/drivers/pmc/pmc.c **** 		return 1;
1572:../asf/sam/drivers/pmc/pmc.c **** 	}
1573:../asf/sam/drivers/pmc/pmc.c **** }
1574:../asf/sam/drivers/pmc/pmc.c **** 
1575:../asf/sam/drivers/pmc/pmc.c **** /**
1576:../asf/sam/drivers/pmc/pmc.c ****  * \brief Disable the sleepwalking of specified peripheral.
1577:../asf/sam/drivers/pmc/pmc.c ****  *
1578:../asf/sam/drivers/pmc/pmc.c ****  * \note The ID must NOT be shifted (i.e., 1 << ID_xxx).
1579:../asf/sam/drivers/pmc/pmc.c ****  *
1580:../asf/sam/drivers/pmc/pmc.c ****  * \param ul_id Peripheral ID (ID_xxx).
1581:../asf/sam/drivers/pmc/pmc.c ****  *
1582:../asf/sam/drivers/pmc/pmc.c ****  * \retval 0 Success.
ARM GAS  /tmp/ccTYR2Ee.s 			page 95


1583:../asf/sam/drivers/pmc/pmc.c ****  * \retval 1 Invalid parameter.
1584:../asf/sam/drivers/pmc/pmc.c ****  */
1585:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_disable_sleepwalking(uint32_t ul_id)
1586:../asf/sam/drivers/pmc/pmc.c **** {
1587:../asf/sam/drivers/pmc/pmc.c **** #if (SAMG55 || SAMV71 || SAMV70 || SAME70 || SAMS70)
1588:../asf/sam/drivers/pmc/pmc.c **** 	if ((7 <= ul_id) && (ul_id<= 29)) {
1589:../asf/sam/drivers/pmc/pmc.c **** #else
1590:../asf/sam/drivers/pmc/pmc.c **** 	if ((8 <= ul_id) && (ul_id<= 29)) {
1591:../asf/sam/drivers/pmc/pmc.c **** #endif
1592:../asf/sam/drivers/pmc/pmc.c **** 		PMC->PMC_SLPWK_DR0 = 1 << ul_id;
1593:../asf/sam/drivers/pmc/pmc.c **** 		return 0;
1594:../asf/sam/drivers/pmc/pmc.c **** 	}
1595:../asf/sam/drivers/pmc/pmc.c **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
1596:../asf/sam/drivers/pmc/pmc.c **** 	else if ((32 <= ul_id) && (ul_id<= 60)) {
1597:../asf/sam/drivers/pmc/pmc.c **** 		ul_id -= 32;
1598:../asf/sam/drivers/pmc/pmc.c **** 		PMC->PMC_SLPWK_DR1 = 1 << ul_id;
1599:../asf/sam/drivers/pmc/pmc.c **** 		return 0;
1600:../asf/sam/drivers/pmc/pmc.c **** 	}
1601:../asf/sam/drivers/pmc/pmc.c **** #endif
1602:../asf/sam/drivers/pmc/pmc.c **** 	else {
1603:../asf/sam/drivers/pmc/pmc.c **** 		return 1;
1604:../asf/sam/drivers/pmc/pmc.c **** 	}
1605:../asf/sam/drivers/pmc/pmc.c **** }
1606:../asf/sam/drivers/pmc/pmc.c **** 
1607:../asf/sam/drivers/pmc/pmc.c **** /**
1608:../asf/sam/drivers/pmc/pmc.c ****  * \brief Return peripheral sleepwalking enable status.
1609:../asf/sam/drivers/pmc/pmc.c ****  *
1610:../asf/sam/drivers/pmc/pmc.c ****  * \return the status register value.
1611:../asf/sam/drivers/pmc/pmc.c ****  */
1612:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_get_sleepwalking_status0(void)
1613:../asf/sam/drivers/pmc/pmc.c **** {
1614:../asf/sam/drivers/pmc/pmc.c **** 	return PMC->PMC_SLPWK_SR0;
1615:../asf/sam/drivers/pmc/pmc.c **** }
1616:../asf/sam/drivers/pmc/pmc.c **** 
1617:../asf/sam/drivers/pmc/pmc.c **** /**
1618:../asf/sam/drivers/pmc/pmc.c ****  * \brief Return peripheral active status.
1619:../asf/sam/drivers/pmc/pmc.c ****  *
1620:../asf/sam/drivers/pmc/pmc.c ****  * \return the status register value.
1621:../asf/sam/drivers/pmc/pmc.c ****  */
1622:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_get_active_status0(void)
1623:../asf/sam/drivers/pmc/pmc.c **** {
1624:../asf/sam/drivers/pmc/pmc.c **** 	return PMC->PMC_SLPWK_ASR0;
 3192              		.loc 1 1624 0
 3193 0006 1B4A     		ldr	r2, .L430
 3194              	.LBE61:
 3195              	.LBE60:
1543:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 3196              		.loc 1 1543 0
 3197 0008 0123     		movs	r3, #1
 3198              	.LBB63:
 3199              	.LBB62:
 3200              		.loc 1 1624 0
 3201 000a D2F82011 		ldr	r1, [r2, #288]
 3202              	.LBE62:
 3203              	.LBE63:
1543:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 3204              		.loc 1 1543 0
ARM GAS  /tmp/ccTYR2Ee.s 			page 96


 3205 000e 03FA00F0 		lsl	r0, r3, r0
 3206              	.LVL208:
 3207 0012 0842     		tst	r0, r1
 3208 0014 24D1     		bne	.L423
1546:../asf/sam/drivers/pmc/pmc.c **** 		temp = pmc_get_active_status0();
 3209              		.loc 1 1546 0
 3210 0016 C2F81401 		str	r0, [r2, #276]
 3211              	.LBB64:
 3212              	.LBB65:
 3213              		.loc 1 1624 0
 3214 001a D2F82011 		ldr	r1, [r2, #288]
 3215              	.LBE65:
 3216              	.LBE64:
1548:../asf/sam/drivers/pmc/pmc.c **** 			pmc_disable_sleepwalking(ul_id);
 3217              		.loc 1 1548 0
 3218 001e 0842     		tst	r0, r1
 3219 0020 23D0     		beq	.L429
 3220              	.LVL209:
 3221              	.LBB66:
 3222              	.LBB67:
1592:../asf/sam/drivers/pmc/pmc.c **** 		return 0;
 3223              		.loc 1 1592 0
 3224 0022 C2F81801 		str	r0, [r2, #280]
 3225              	.LVL210:
 3226              	.LBE67:
 3227              	.LBE66:
1550:../asf/sam/drivers/pmc/pmc.c **** 		}
 3228              		.loc 1 1550 0
 3229 0026 1846     		mov	r0, r3
 3230 0028 7047     		bx	lr
 3231              	.LVL211:
 3232              	.L413:
1555:../asf/sam/drivers/pmc/pmc.c **** 		ul_id -= 32;
 3233              		.loc 1 1555 0
 3234 002a A0F12003 		sub	r3, r0, #32
 3235 002e 1C2B     		cmp	r3, #28
 3236 0030 16D8     		bhi	.L423
 3237              	.LVL212:
1558:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 3238              		.loc 1 1558 0
 3239 0032 0122     		movs	r2, #1
1535:../asf/sam/drivers/pmc/pmc.c **** 	uint32_t temp;
 3240              		.loc 1 1535 0
 3241 0034 30B4     		push	{r4, r5}
 3242              		.cfi_def_cfa_offset 8
 3243              		.cfi_offset 4, -8
 3244              		.cfi_offset 5, -4
 3245              	.LBB68:
 3246              	.LBB69:
1625:../asf/sam/drivers/pmc/pmc.c **** }
1626:../asf/sam/drivers/pmc/pmc.c **** 
1627:../asf/sam/drivers/pmc/pmc.c **** #endif
1628:../asf/sam/drivers/pmc/pmc.c **** 
1629:../asf/sam/drivers/pmc/pmc.c **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
1630:../asf/sam/drivers/pmc/pmc.c **** /**
1631:../asf/sam/drivers/pmc/pmc.c ****  * \brief Return peripheral sleepwalking enable status.
1632:../asf/sam/drivers/pmc/pmc.c ****  *
ARM GAS  /tmp/ccTYR2Ee.s 			page 97


1633:../asf/sam/drivers/pmc/pmc.c ****  * \return the status register value.
1634:../asf/sam/drivers/pmc/pmc.c ****  */
1635:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_get_sleepwalking_status1(void)
1636:../asf/sam/drivers/pmc/pmc.c **** {
1637:../asf/sam/drivers/pmc/pmc.c **** 	return PMC->PMC_SLPWK_SR1;
1638:../asf/sam/drivers/pmc/pmc.c **** }
1639:../asf/sam/drivers/pmc/pmc.c **** 
1640:../asf/sam/drivers/pmc/pmc.c **** /**
1641:../asf/sam/drivers/pmc/pmc.c ****  * \brief Return peripheral active status.
1642:../asf/sam/drivers/pmc/pmc.c ****  *
1643:../asf/sam/drivers/pmc/pmc.c ****  * \return the status register value.
1644:../asf/sam/drivers/pmc/pmc.c ****  */
1645:../asf/sam/drivers/pmc/pmc.c **** uint32_t pmc_get_active_status1(void)
1646:../asf/sam/drivers/pmc/pmc.c **** {
1647:../asf/sam/drivers/pmc/pmc.c **** 	return PMC->PMC_SLPWK_ASR1;
 3247              		.loc 1 1647 0
 3248 0036 0F4C     		ldr	r4, .L430
 3249              	.LBE69:
 3250              	.LBE68:
1558:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 3251              		.loc 1 1558 0
 3252 0038 02FA03F1 		lsl	r1, r2, r3
 3253              	.LBB71:
 3254              	.LBB70:
 3255              		.loc 1 1647 0
 3256 003c D4F84051 		ldr	r5, [r4, #320]
 3257              	.LBE70:
 3258              	.LBE71:
1558:../asf/sam/drivers/pmc/pmc.c **** 			return 1;
 3259              		.loc 1 1558 0
 3260 0040 2942     		tst	r1, r5
 3261 0042 0FD1     		bne	.L417
1561:../asf/sam/drivers/pmc/pmc.c **** 		temp = pmc_get_active_status1();
 3262              		.loc 1 1561 0
 3263 0044 C4F83411 		str	r1, [r4, #308]
 3264              	.LBB72:
 3265              	.LBB73:
 3266              		.loc 1 1647 0
 3267 0048 D4F84031 		ldr	r3, [r4, #320]
 3268              	.LVL213:
 3269              	.LBE73:
 3270              	.LBE72:
1563:../asf/sam/drivers/pmc/pmc.c **** 			pmc_disable_sleepwalking(ul_id);
 3271              		.loc 1 1563 0
 3272 004c 1942     		tst	r1, r3
 3273 004e 0ED0     		beq	.L418
 3274              	.LVL214:
 3275              	.LBB74:
 3276              	.LBB75:
1588:../asf/sam/drivers/pmc/pmc.c **** #else
 3277              		.loc 1 1588 0
 3278 0050 A0F12703 		sub	r3, r0, #39
 3279 0054 162B     		cmp	r3, #22
 3280 0056 05D8     		bhi	.L417
 3281              	.LBE75:
 3282              	.LBE74:
1565:../asf/sam/drivers/pmc/pmc.c **** 		}
ARM GAS  /tmp/ccTYR2Ee.s 			page 98


 3283              		.loc 1 1565 0
 3284 0058 1046     		mov	r0, r2
 3285              	.LVL215:
 3286              	.LBB77:
 3287              	.LBB76:
1592:../asf/sam/drivers/pmc/pmc.c **** 		return 0;
 3288              		.loc 1 1592 0
 3289 005a C4F81811 		str	r1, [r4, #280]
 3290 005e 02E0     		b	.L412
 3291              	.LVL216:
 3292              	.L423:
 3293              		.cfi_def_cfa_offset 0
 3294              		.cfi_restore 4
 3295              		.cfi_restore 5
 3296              	.LBE76:
 3297              	.LBE77:
1544:../asf/sam/drivers/pmc/pmc.c **** 		}
 3298              		.loc 1 1544 0
 3299 0060 0120     		movs	r0, #1
 3300 0062 7047     		bx	lr
 3301              	.LVL217:
 3302              	.L417:
 3303              		.cfi_def_cfa_offset 8
 3304              		.cfi_offset 4, -8
 3305              		.cfi_offset 5, -4
 3306 0064 0120     		movs	r0, #1
 3307              	.LVL218:
 3308              	.L412:
1573:../asf/sam/drivers/pmc/pmc.c **** 
 3309              		.loc 1 1573 0
 3310 0066 30BC     		pop	{r4, r5}
 3311              		.cfi_restore 5
 3312              		.cfi_restore 4
 3313              		.cfi_def_cfa_offset 0
 3314 0068 7047     		bx	lr
 3315              	.LVL219:
 3316              	.L429:
1552:../asf/sam/drivers/pmc/pmc.c **** 	}
 3317              		.loc 1 1552 0
 3318 006a 0020     		movs	r0, #0
1573:../asf/sam/drivers/pmc/pmc.c **** 
 3319              		.loc 1 1573 0
 3320 006c 7047     		bx	lr
 3321              	.LVL220:
 3322              	.L418:
 3323              		.cfi_def_cfa_offset 8
 3324              		.cfi_offset 4, -8
 3325              		.cfi_offset 5, -4
1552:../asf/sam/drivers/pmc/pmc.c **** 	}
 3326              		.loc 1 1552 0
 3327 006e 0020     		movs	r0, #0
 3328              	.LVL221:
1573:../asf/sam/drivers/pmc/pmc.c **** 
 3329              		.loc 1 1573 0
 3330 0070 30BC     		pop	{r4, r5}
 3331              		.cfi_restore 4
 3332              		.cfi_restore 5
ARM GAS  /tmp/ccTYR2Ee.s 			page 99


 3333              		.cfi_def_cfa_offset 0
 3334 0072 7047     		bx	lr
 3335              	.L431:
 3336              		.align	2
 3337              	.L430:
 3338 0074 00060E40 		.word	1074660864
 3339              		.cfi_endproc
 3340              	.LFE207:
 3341              		.size	pmc_enable_sleepwalking, .-pmc_enable_sleepwalking
 3342              		.section	.text.pmc_disable_sleepwalking,"ax",%progbits
 3343              		.align	1
 3344              		.p2align 2,,3
 3345              		.global	pmc_disable_sleepwalking
 3346              		.syntax unified
 3347              		.thumb
 3348              		.thumb_func
 3349              		.fpu fpv5-d16
 3350              		.type	pmc_disable_sleepwalking, %function
 3351              	pmc_disable_sleepwalking:
 3352              	.LFB208:
1586:../asf/sam/drivers/pmc/pmc.c **** #if (SAMG55 || SAMV71 || SAMV70 || SAME70 || SAMS70)
 3353              		.loc 1 1586 0
 3354              		.cfi_startproc
 3355              		@ args = 0, pretend = 0, frame = 0
 3356              		@ frame_needed = 0, uses_anonymous_args = 0
 3357              		@ link register save eliminated.
 3358              	.LVL222:
1588:../asf/sam/drivers/pmc/pmc.c **** #else
 3359              		.loc 1 1588 0
 3360 0000 C21F     		subs	r2, r0, #7
1586:../asf/sam/drivers/pmc/pmc.c **** #if (SAMG55 || SAMV71 || SAMV70 || SAME70 || SAMS70)
 3361              		.loc 1 1586 0
 3362 0002 0346     		mov	r3, r0
1588:../asf/sam/drivers/pmc/pmc.c **** #else
 3363              		.loc 1 1588 0
 3364 0004 162A     		cmp	r2, #22
 3365 0006 0DD9     		bls	.L436
 3366              	.LVL223:
 3367              	.LBB80:
 3368              	.LBB81:
1596:../asf/sam/drivers/pmc/pmc.c **** 		ul_id -= 32;
 3369              		.loc 1 1596 0
 3370 0008 A0F12003 		sub	r3, r0, #32
 3371 000c 1C2B     		cmp	r3, #28
 3372 000e 07D8     		bhi	.L435
 3373              	.LVL224:
1598:../asf/sam/drivers/pmc/pmc.c **** 		return 0;
 3374              		.loc 1 1598 0
 3375 0010 0122     		movs	r2, #1
 3376 0012 0849     		ldr	r1, .L437
1599:../asf/sam/drivers/pmc/pmc.c **** 	}
 3377              		.loc 1 1599 0
 3378 0014 0020     		movs	r0, #0
 3379              	.LVL225:
1598:../asf/sam/drivers/pmc/pmc.c **** 		return 0;
 3380              		.loc 1 1598 0
 3381 0016 02FA03F3 		lsl	r3, r2, r3
ARM GAS  /tmp/ccTYR2Ee.s 			page 100


 3382              	.LVL226:
 3383 001a C1F83831 		str	r3, [r1, #312]
 3384 001e 7047     		bx	lr
 3385              	.LVL227:
 3386              	.L435:
1603:../asf/sam/drivers/pmc/pmc.c **** 	}
 3387              		.loc 1 1603 0
 3388 0020 0120     		movs	r0, #1
 3389              	.LVL228:
 3390              	.LBE81:
 3391              	.LBE80:
1605:../asf/sam/drivers/pmc/pmc.c **** 
 3392              		.loc 1 1605 0
 3393 0022 7047     		bx	lr
 3394              	.LVL229:
 3395              	.L436:
1592:../asf/sam/drivers/pmc/pmc.c **** 		return 0;
 3396              		.loc 1 1592 0
 3397 0024 0122     		movs	r2, #1
 3398 0026 0349     		ldr	r1, .L437
1593:../asf/sam/drivers/pmc/pmc.c **** 	}
 3399              		.loc 1 1593 0
 3400 0028 0020     		movs	r0, #0
 3401              	.LVL230:
1592:../asf/sam/drivers/pmc/pmc.c **** 		return 0;
 3402              		.loc 1 1592 0
 3403 002a 02FA03F3 		lsl	r3, r2, r3
 3404              	.LVL231:
 3405 002e C1F81831 		str	r3, [r1, #280]
1593:../asf/sam/drivers/pmc/pmc.c **** 	}
 3406              		.loc 1 1593 0
 3407 0032 7047     		bx	lr
 3408              	.L438:
 3409              		.align	2
 3410              	.L437:
 3411 0034 00060E40 		.word	1074660864
 3412              		.cfi_endproc
 3413              	.LFE208:
 3414              		.size	pmc_disable_sleepwalking, .-pmc_disable_sleepwalking
 3415              		.section	.text.pmc_get_sleepwalking_status0,"ax",%progbits
 3416              		.align	1
 3417              		.p2align 2,,3
 3418              		.global	pmc_get_sleepwalking_status0
 3419              		.syntax unified
 3420              		.thumb
 3421              		.thumb_func
 3422              		.fpu fpv5-d16
 3423              		.type	pmc_get_sleepwalking_status0, %function
 3424              	pmc_get_sleepwalking_status0:
 3425              	.LFB209:
1613:../asf/sam/drivers/pmc/pmc.c **** 	return PMC->PMC_SLPWK_SR0;
 3426              		.loc 1 1613 0
 3427              		.cfi_startproc
 3428              		@ args = 0, pretend = 0, frame = 0
 3429              		@ frame_needed = 0, uses_anonymous_args = 0
 3430              		@ link register save eliminated.
1614:../asf/sam/drivers/pmc/pmc.c **** }
ARM GAS  /tmp/ccTYR2Ee.s 			page 101


 3431              		.loc 1 1614 0
 3432 0000 014B     		ldr	r3, .L440
 3433 0002 D3F81C01 		ldr	r0, [r3, #284]
1615:../asf/sam/drivers/pmc/pmc.c **** 
 3434              		.loc 1 1615 0
 3435 0006 7047     		bx	lr
 3436              	.L441:
 3437              		.align	2
 3438              	.L440:
 3439 0008 00060E40 		.word	1074660864
 3440              		.cfi_endproc
 3441              	.LFE209:
 3442              		.size	pmc_get_sleepwalking_status0, .-pmc_get_sleepwalking_status0
 3443              		.section	.text.pmc_get_active_status0,"ax",%progbits
 3444              		.align	1
 3445              		.p2align 2,,3
 3446              		.global	pmc_get_active_status0
 3447              		.syntax unified
 3448              		.thumb
 3449              		.thumb_func
 3450              		.fpu fpv5-d16
 3451              		.type	pmc_get_active_status0, %function
 3452              	pmc_get_active_status0:
 3453              	.LFB210:
1623:../asf/sam/drivers/pmc/pmc.c **** 	return PMC->PMC_SLPWK_ASR0;
 3454              		.loc 1 1623 0
 3455              		.cfi_startproc
 3456              		@ args = 0, pretend = 0, frame = 0
 3457              		@ frame_needed = 0, uses_anonymous_args = 0
 3458              		@ link register save eliminated.
1624:../asf/sam/drivers/pmc/pmc.c **** }
 3459              		.loc 1 1624 0
 3460 0000 014B     		ldr	r3, .L443
 3461 0002 D3F82001 		ldr	r0, [r3, #288]
1625:../asf/sam/drivers/pmc/pmc.c **** 
 3462              		.loc 1 1625 0
 3463 0006 7047     		bx	lr
 3464              	.L444:
 3465              		.align	2
 3466              	.L443:
 3467 0008 00060E40 		.word	1074660864
 3468              		.cfi_endproc
 3469              	.LFE210:
 3470              		.size	pmc_get_active_status0, .-pmc_get_active_status0
 3471              		.section	.text.pmc_get_sleepwalking_status1,"ax",%progbits
 3472              		.align	1
 3473              		.p2align 2,,3
 3474              		.global	pmc_get_sleepwalking_status1
 3475              		.syntax unified
 3476              		.thumb
 3477              		.thumb_func
 3478              		.fpu fpv5-d16
 3479              		.type	pmc_get_sleepwalking_status1, %function
 3480              	pmc_get_sleepwalking_status1:
 3481              	.LFB211:
1636:../asf/sam/drivers/pmc/pmc.c **** 	return PMC->PMC_SLPWK_SR1;
 3482              		.loc 1 1636 0
ARM GAS  /tmp/ccTYR2Ee.s 			page 102


 3483              		.cfi_startproc
 3484              		@ args = 0, pretend = 0, frame = 0
 3485              		@ frame_needed = 0, uses_anonymous_args = 0
 3486              		@ link register save eliminated.
1637:../asf/sam/drivers/pmc/pmc.c **** }
 3487              		.loc 1 1637 0
 3488 0000 014B     		ldr	r3, .L446
 3489 0002 D3F83C01 		ldr	r0, [r3, #316]
1638:../asf/sam/drivers/pmc/pmc.c **** 
 3490              		.loc 1 1638 0
 3491 0006 7047     		bx	lr
 3492              	.L447:
 3493              		.align	2
 3494              	.L446:
 3495 0008 00060E40 		.word	1074660864
 3496              		.cfi_endproc
 3497              	.LFE211:
 3498              		.size	pmc_get_sleepwalking_status1, .-pmc_get_sleepwalking_status1
 3499              		.section	.text.pmc_get_active_status1,"ax",%progbits
 3500              		.align	1
 3501              		.p2align 2,,3
 3502              		.global	pmc_get_active_status1
 3503              		.syntax unified
 3504              		.thumb
 3505              		.thumb_func
 3506              		.fpu fpv5-d16
 3507              		.type	pmc_get_active_status1, %function
 3508              	pmc_get_active_status1:
 3509              	.LFB212:
1646:../asf/sam/drivers/pmc/pmc.c **** 	return PMC->PMC_SLPWK_ASR1;
 3510              		.loc 1 1646 0
 3511              		.cfi_startproc
 3512              		@ args = 0, pretend = 0, frame = 0
 3513              		@ frame_needed = 0, uses_anonymous_args = 0
 3514              		@ link register save eliminated.
 3515              		.loc 1 1647 0
 3516 0000 014B     		ldr	r3, .L449
 3517 0002 D3F84001 		ldr	r0, [r3, #320]
1648:../asf/sam/drivers/pmc/pmc.c **** }
 3518              		.loc 1 1648 0
 3519 0006 7047     		bx	lr
 3520              	.L450:
 3521              		.align	2
 3522              	.L449:
 3523 0008 00060E40 		.word	1074660864
 3524              		.cfi_endproc
 3525              	.LFE212:
 3526              		.size	pmc_get_active_status1, .-pmc_get_active_status1
 3527              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 3528              		.align	2
 3529              		.type	cpu_irq_critical_section_counter, %object
 3530              		.size	cpu_irq_critical_section_counter, 4
 3531              	cpu_irq_critical_section_counter:
 3532 0000 00000000 		.space	4
 3533              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 3534              		.type	cpu_irq_prev_interrupt_state, %object
 3535              		.size	cpu_irq_prev_interrupt_state, 1
ARM GAS  /tmp/ccTYR2Ee.s 			page 103


 3536              	cpu_irq_prev_interrupt_state:
 3537 0000 00       		.space	1
 3538              		.section	.rodata.CSWTCH.7,"a",%progbits
 3539              		.align	2
 3540              		.set	.LANCHOR0,. + 0
 3541              		.type	CSWTCH.7, %object
 3542              		.size	CSWTCH.7, 12
 3543              	CSWTCH.7:
 3544 0000 00010000 		.word	256
 3545 0004 00030000 		.word	768
 3546 0008 00020000 		.word	512
 3547              		.text
 3548              	.Letext0:
 3549              		.file 3 "/usr/include/newlib/machine/_default_types.h"
 3550              		.file 4 "/usr/include/newlib/sys/_stdint.h"
 3551              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 3552              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 3553              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/pmc.
 3554              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/supc
 3555              		.file 9 "/usr/include/newlib/sys/lock.h"
 3556              		.file 10 "/usr/include/newlib/sys/_types.h"
 3557              		.file 11 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 3558              		.file 12 "/usr/include/newlib/sys/reent.h"
 3559              		.file 13 "/usr/include/newlib/stdlib.h"
 3560              		.file 14 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 3561              		.section	.debug_info,"",%progbits
 3562              	.Ldebug_info0:
 3563 0000 5C1B0000 		.4byte	0x1b5c
 3564 0004 0400     		.2byte	0x4
 3565 0006 00000000 		.4byte	.Ldebug_abbrev0
 3566 000a 04       		.byte	0x4
 3567 000b 01       		.uleb128 0x1
 3568 000c BC0D0000 		.4byte	.LASF329
 3569 0010 0C       		.byte	0xc
 3570 0011 2A0C0000 		.4byte	.LASF330
 3571 0015 9B0E0000 		.4byte	.LASF331
 3572 0019 68000000 		.4byte	.Ldebug_ranges0+0x68
 3573 001d 00000000 		.4byte	0
 3574 0021 00000000 		.4byte	.Ldebug_line0
 3575 0025 02       		.uleb128 0x2
 3576 0026 04       		.byte	0x4
 3577 0027 05       		.byte	0x5
 3578 0028 696E7400 		.ascii	"int\000"
 3579 002c 03       		.uleb128 0x3
 3580 002d 04       		.byte	0x4
 3581 002e 07       		.byte	0x7
 3582 002f E0000000 		.4byte	.LASF0
 3583 0033 03       		.uleb128 0x3
 3584 0034 01       		.byte	0x1
 3585 0035 06       		.byte	0x6
 3586 0036 2C0F0000 		.4byte	.LASF1
 3587 003a 04       		.uleb128 0x4
 3588 003b F80B0000 		.4byte	.LASF5
 3589 003f 03       		.byte	0x3
 3590 0040 1D       		.byte	0x1d
 3591 0041 45000000 		.4byte	0x45
 3592 0045 03       		.uleb128 0x3
ARM GAS  /tmp/ccTYR2Ee.s 			page 104


 3593 0046 01       		.byte	0x1
 3594 0047 08       		.byte	0x8
 3595 0048 3B0D0000 		.4byte	.LASF2
 3596 004c 03       		.uleb128 0x3
 3597 004d 02       		.byte	0x2
 3598 004e 05       		.byte	0x5
 3599 004f A2010000 		.4byte	.LASF3
 3600 0053 03       		.uleb128 0x3
 3601 0054 02       		.byte	0x2
 3602 0055 07       		.byte	0x7
 3603 0056 460F0000 		.4byte	.LASF4
 3604 005a 04       		.uleb128 0x4
 3605 005b 7C010000 		.4byte	.LASF6
 3606 005f 03       		.byte	0x3
 3607 0060 3F       		.byte	0x3f
 3608 0061 65000000 		.4byte	0x65
 3609 0065 03       		.uleb128 0x3
 3610 0066 04       		.byte	0x4
 3611 0067 05       		.byte	0x5
 3612 0068 00000000 		.4byte	.LASF7
 3613 006c 04       		.uleb128 0x4
 3614 006d E1090000 		.4byte	.LASF8
 3615 0071 03       		.byte	0x3
 3616 0072 41       		.byte	0x41
 3617 0073 77000000 		.4byte	0x77
 3618 0077 03       		.uleb128 0x3
 3619 0078 04       		.byte	0x4
 3620 0079 07       		.byte	0x7
 3621 007a A10C0000 		.4byte	.LASF9
 3622 007e 03       		.uleb128 0x3
 3623 007f 08       		.byte	0x8
 3624 0080 05       		.byte	0x5
 3625 0081 45070000 		.4byte	.LASF10
 3626 0085 03       		.uleb128 0x3
 3627 0086 08       		.byte	0x8
 3628 0087 07       		.byte	0x7
 3629 0088 AF030000 		.4byte	.LASF11
 3630 008c 04       		.uleb128 0x4
 3631 008d CA060000 		.4byte	.LASF12
 3632 0091 04       		.byte	0x4
 3633 0092 18       		.byte	0x18
 3634 0093 3A000000 		.4byte	0x3a
 3635 0097 05       		.uleb128 0x5
 3636 0098 8C000000 		.4byte	0x8c
 3637 009c 04       		.uleb128 0x4
 3638 009d F70C0000 		.4byte	.LASF13
 3639 00a1 04       		.byte	0x4
 3640 00a2 2C       		.byte	0x2c
 3641 00a3 5A000000 		.4byte	0x5a
 3642 00a7 05       		.uleb128 0x5
 3643 00a8 9C000000 		.4byte	0x9c
 3644 00ac 04       		.uleb128 0x4
 3645 00ad 10010000 		.4byte	.LASF14
 3646 00b1 04       		.byte	0x4
 3647 00b2 30       		.byte	0x30
 3648 00b3 6C000000 		.4byte	0x6c
 3649 00b7 05       		.uleb128 0x5
ARM GAS  /tmp/ccTYR2Ee.s 			page 105


 3650 00b8 AC000000 		.4byte	0xac
 3651 00bc 06       		.uleb128 0x6
 3652 00bd B7000000 		.4byte	0xb7
 3653 00c1 07       		.uleb128 0x7
 3654 00c2 04       		.byte	0x4
 3655 00c3 03       		.uleb128 0x3
 3656 00c4 04       		.byte	0x4
 3657 00c5 07       		.byte	0x7
 3658 00c6 930C0000 		.4byte	.LASF15
 3659 00ca 08       		.uleb128 0x8
 3660 00cb AC02     		.2byte	0x2ac
 3661 00cd 05       		.byte	0x5
 3662 00ce 9A01     		.2byte	0x19a
 3663 00d0 77030000 		.4byte	0x377
 3664 00d4 09       		.uleb128 0x9
 3665 00d5 06050000 		.4byte	.LASF16
 3666 00d9 05       		.byte	0x5
 3667 00da 9C01     		.2byte	0x19c
 3668 00dc BC000000 		.4byte	0xbc
 3669 00e0 00       		.byte	0
 3670 00e1 09       		.uleb128 0x9
 3671 00e2 9C0C0000 		.4byte	.LASF17
 3672 00e6 05       		.byte	0x5
 3673 00e7 9D01     		.2byte	0x19d
 3674 00e9 B7000000 		.4byte	0xb7
 3675 00ed 04       		.byte	0x4
 3676 00ee 09       		.uleb128 0x9
 3677 00ef 470C0000 		.4byte	.LASF18
 3678 00f3 05       		.byte	0x5
 3679 00f4 9E01     		.2byte	0x19e
 3680 00f6 B7000000 		.4byte	0xb7
 3681 00fa 08       		.byte	0x8
 3682 00fb 09       		.uleb128 0x9
 3683 00fc 69060000 		.4byte	.LASF19
 3684 0100 05       		.byte	0x5
 3685 0101 9F01     		.2byte	0x19f
 3686 0103 B7000000 		.4byte	0xb7
 3687 0107 0C       		.byte	0xc
 3688 0108 0A       		.uleb128 0xa
 3689 0109 53435200 		.ascii	"SCR\000"
 3690 010d 05       		.byte	0x5
 3691 010e A001     		.2byte	0x1a0
 3692 0110 B7000000 		.4byte	0xb7
 3693 0114 10       		.byte	0x10
 3694 0115 0A       		.uleb128 0xa
 3695 0116 43435200 		.ascii	"CCR\000"
 3696 011a 05       		.byte	0x5
 3697 011b A101     		.2byte	0x1a1
 3698 011d B7000000 		.4byte	0xb7
 3699 0121 14       		.byte	0x14
 3700 0122 09       		.uleb128 0x9
 3701 0123 3D050000 		.4byte	.LASF20
 3702 0127 05       		.byte	0x5
 3703 0128 A201     		.2byte	0x1a2
 3704 012a 87030000 		.4byte	0x387
 3705 012e 18       		.byte	0x18
 3706 012f 09       		.uleb128 0x9
ARM GAS  /tmp/ccTYR2Ee.s 			page 106


 3707 0130 750A0000 		.4byte	.LASF21
 3708 0134 05       		.byte	0x5
 3709 0135 A301     		.2byte	0x1a3
 3710 0137 B7000000 		.4byte	0xb7
 3711 013b 24       		.byte	0x24
 3712 013c 09       		.uleb128 0x9
 3713 013d 7F070000 		.4byte	.LASF22
 3714 0141 05       		.byte	0x5
 3715 0142 A401     		.2byte	0x1a4
 3716 0144 B7000000 		.4byte	0xb7
 3717 0148 28       		.byte	0x28
 3718 0149 09       		.uleb128 0x9
 3719 014a F0050000 		.4byte	.LASF23
 3720 014e 05       		.byte	0x5
 3721 014f A501     		.2byte	0x1a5
 3722 0151 B7000000 		.4byte	0xb7
 3723 0155 2C       		.byte	0x2c
 3724 0156 09       		.uleb128 0x9
 3725 0157 81020000 		.4byte	.LASF24
 3726 015b 05       		.byte	0x5
 3727 015c A601     		.2byte	0x1a6
 3728 015e B7000000 		.4byte	0xb7
 3729 0162 30       		.byte	0x30
 3730 0163 09       		.uleb128 0x9
 3731 0164 090A0000 		.4byte	.LASF25
 3732 0168 05       		.byte	0x5
 3733 0169 A701     		.2byte	0x1a7
 3734 016b B7000000 		.4byte	0xb7
 3735 016f 34       		.byte	0x34
 3736 0170 09       		.uleb128 0x9
 3737 0171 950F0000 		.4byte	.LASF26
 3738 0175 05       		.byte	0x5
 3739 0176 A801     		.2byte	0x1a8
 3740 0178 B7000000 		.4byte	0xb7
 3741 017c 38       		.byte	0x38
 3742 017d 09       		.uleb128 0x9
 3743 017e 66050000 		.4byte	.LASF27
 3744 0182 05       		.byte	0x5
 3745 0183 A901     		.2byte	0x1a9
 3746 0185 B7000000 		.4byte	0xb7
 3747 0189 3C       		.byte	0x3c
 3748 018a 09       		.uleb128 0x9
 3749 018b D7020000 		.4byte	.LASF28
 3750 018f 05       		.byte	0x5
 3751 0190 AA01     		.2byte	0x1aa
 3752 0192 A1030000 		.4byte	0x3a1
 3753 0196 40       		.byte	0x40
 3754 0197 09       		.uleb128 0x9
 3755 0198 93060000 		.4byte	.LASF29
 3756 019c 05       		.byte	0x5
 3757 019d AB01     		.2byte	0x1ab
 3758 019f BC000000 		.4byte	0xbc
 3759 01a3 48       		.byte	0x48
 3760 01a4 09       		.uleb128 0x9
 3761 01a5 09080000 		.4byte	.LASF30
 3762 01a9 05       		.byte	0x5
 3763 01aa AC01     		.2byte	0x1ac
ARM GAS  /tmp/ccTYR2Ee.s 			page 107


 3764 01ac BC000000 		.4byte	0xbc
 3765 01b0 4C       		.byte	0x4c
 3766 01b1 09       		.uleb128 0x9
 3767 01b2 EC040000 		.4byte	.LASF31
 3768 01b6 05       		.byte	0x5
 3769 01b7 AD01     		.2byte	0x1ad
 3770 01b9 BB030000 		.4byte	0x3bb
 3771 01bd 50       		.byte	0x50
 3772 01be 09       		.uleb128 0x9
 3773 01bf 32100000 		.4byte	.LASF32
 3774 01c3 05       		.byte	0x5
 3775 01c4 AE01     		.2byte	0x1ae
 3776 01c6 DA030000 		.4byte	0x3da
 3777 01ca 60       		.byte	0x60
 3778 01cb 09       		.uleb128 0x9
 3779 01cc 6B0A0000 		.4byte	.LASF33
 3780 01d0 05       		.byte	0x5
 3781 01d1 AF01     		.2byte	0x1af
 3782 01d3 E4030000 		.4byte	0x3e4
 3783 01d7 74       		.byte	0x74
 3784 01d8 09       		.uleb128 0x9
 3785 01d9 9E090000 		.4byte	.LASF34
 3786 01dd 05       		.byte	0x5
 3787 01de B001     		.2byte	0x1b0
 3788 01e0 BC000000 		.4byte	0xbc
 3789 01e4 78       		.byte	0x78
 3790 01e5 0A       		.uleb128 0xa
 3791 01e6 43545200 		.ascii	"CTR\000"
 3792 01ea 05       		.byte	0x5
 3793 01eb B101     		.2byte	0x1b1
 3794 01ed BC000000 		.4byte	0xbc
 3795 01f1 7C       		.byte	0x7c
 3796 01f2 09       		.uleb128 0x9
 3797 01f3 75010000 		.4byte	.LASF35
 3798 01f7 05       		.byte	0x5
 3799 01f8 B201     		.2byte	0x1b2
 3800 01fa BC000000 		.4byte	0xbc
 3801 01fe 80       		.byte	0x80
 3802 01ff 09       		.uleb128 0x9
 3803 0200 3E070000 		.4byte	.LASF36
 3804 0204 05       		.byte	0x5
 3805 0205 B301     		.2byte	0x1b3
 3806 0207 B7000000 		.4byte	0xb7
 3807 020b 84       		.byte	0x84
 3808 020c 09       		.uleb128 0x9
 3809 020d 09000000 		.4byte	.LASF37
 3810 0211 05       		.byte	0x5
 3811 0212 B401     		.2byte	0x1b4
 3812 0214 B7000000 		.4byte	0xb7
 3813 0218 88       		.byte	0x88
 3814 0219 09       		.uleb128 0x9
 3815 021a 7B0A0000 		.4byte	.LASF38
 3816 021e 05       		.byte	0x5
 3817 021f B501     		.2byte	0x1b5
 3818 0221 F4030000 		.4byte	0x3f4
 3819 0225 8C       		.byte	0x8c
 3820 0226 0B       		.uleb128 0xb
ARM GAS  /tmp/ccTYR2Ee.s 			page 108


 3821 0227 DC090000 		.4byte	.LASF39
 3822 022b 05       		.byte	0x5
 3823 022c B601     		.2byte	0x1b6
 3824 022e B7000000 		.4byte	0xb7
 3825 0232 0002     		.2byte	0x200
 3826 0234 0B       		.uleb128 0xb
 3827 0235 850A0000 		.4byte	.LASF40
 3828 0239 05       		.byte	0x5
 3829 023a B701     		.2byte	0x1b7
 3830 023c 04040000 		.4byte	0x404
 3831 0240 0402     		.2byte	0x204
 3832 0242 0B       		.uleb128 0xb
 3833 0243 830F0000 		.4byte	.LASF41
 3834 0247 05       		.byte	0x5
 3835 0248 B801     		.2byte	0x1b8
 3836 024a BC000000 		.4byte	0xbc
 3837 024e 4002     		.2byte	0x240
 3838 0250 0B       		.uleb128 0xb
 3839 0251 890F0000 		.4byte	.LASF42
 3840 0255 05       		.byte	0x5
 3841 0256 B901     		.2byte	0x1b9
 3842 0258 BC000000 		.4byte	0xbc
 3843 025c 4402     		.2byte	0x244
 3844 025e 0B       		.uleb128 0xb
 3845 025f 8F0F0000 		.4byte	.LASF43
 3846 0263 05       		.byte	0x5
 3847 0264 BA01     		.2byte	0x1ba
 3848 0266 BC000000 		.4byte	0xbc
 3849 026a 4802     		.2byte	0x248
 3850 026c 0B       		.uleb128 0xb
 3851 026d 8F0A0000 		.4byte	.LASF44
 3852 0271 05       		.byte	0x5
 3853 0272 BB01     		.2byte	0x1bb
 3854 0274 E4030000 		.4byte	0x3e4
 3855 0278 4C02     		.2byte	0x24c
 3856 027a 0B       		.uleb128 0xb
 3857 027b 39010000 		.4byte	.LASF45
 3858 027f 05       		.byte	0x5
 3859 0280 BC01     		.2byte	0x1bc
 3860 0282 B7000000 		.4byte	0xb7
 3861 0286 5002     		.2byte	0x250
 3862 0288 0B       		.uleb128 0xb
 3863 0289 990A0000 		.4byte	.LASF46
 3864 028d 05       		.byte	0x5
 3865 028e BD01     		.2byte	0x1bd
 3866 0290 E4030000 		.4byte	0x3e4
 3867 0294 5402     		.2byte	0x254
 3868 0296 0B       		.uleb128 0xb
 3869 0297 FE030000 		.4byte	.LASF47
 3870 029b 05       		.byte	0x5
 3871 029c BE01     		.2byte	0x1be
 3872 029e B7000000 		.4byte	0xb7
 3873 02a2 5802     		.2byte	0x258
 3874 02a4 0B       		.uleb128 0xb
 3875 02a5 6F060000 		.4byte	.LASF48
 3876 02a9 05       		.byte	0x5
 3877 02aa BF01     		.2byte	0x1bf
ARM GAS  /tmp/ccTYR2Ee.s 			page 109


 3878 02ac B7000000 		.4byte	0xb7
 3879 02b0 5C02     		.2byte	0x25c
 3880 02b2 0B       		.uleb128 0xb
 3881 02b3 F5050000 		.4byte	.LASF49
 3882 02b7 05       		.byte	0x5
 3883 02b8 C001     		.2byte	0x1c0
 3884 02ba B7000000 		.4byte	0xb7
 3885 02be 6002     		.2byte	0x260
 3886 02c0 0B       		.uleb128 0xb
 3887 02c1 B2070000 		.4byte	.LASF50
 3888 02c5 05       		.byte	0x5
 3889 02c6 C101     		.2byte	0x1c1
 3890 02c8 B7000000 		.4byte	0xb7
 3891 02cc 6402     		.2byte	0x264
 3892 02ce 0B       		.uleb128 0xb
 3893 02cf 72070000 		.4byte	.LASF51
 3894 02d3 05       		.byte	0x5
 3895 02d4 C201     		.2byte	0x1c2
 3896 02d6 B7000000 		.4byte	0xb7
 3897 02da 6802     		.2byte	0x268
 3898 02dc 0B       		.uleb128 0xb
 3899 02dd 28000000 		.4byte	.LASF52
 3900 02e1 05       		.byte	0x5
 3901 02e2 C301     		.2byte	0x1c3
 3902 02e4 B7000000 		.4byte	0xb7
 3903 02e8 6C02     		.2byte	0x26c
 3904 02ea 0B       		.uleb128 0xb
 3905 02eb 53070000 		.4byte	.LASF53
 3906 02ef 05       		.byte	0x5
 3907 02f0 C401     		.2byte	0x1c4
 3908 02f2 B7000000 		.4byte	0xb7
 3909 02f6 7002     		.2byte	0x270
 3910 02f8 0B       		.uleb128 0xb
 3911 02f9 37070000 		.4byte	.LASF54
 3912 02fd 05       		.byte	0x5
 3913 02fe C501     		.2byte	0x1c5
 3914 0300 B7000000 		.4byte	0xb7
 3915 0304 7402     		.2byte	0x274
 3916 0306 0B       		.uleb128 0xb
 3917 0307 1F100000 		.4byte	.LASF55
 3918 030b 05       		.byte	0x5
 3919 030c C601     		.2byte	0x1c6
 3920 030e 14040000 		.4byte	0x414
 3921 0312 7802     		.2byte	0x278
 3922 0314 0B       		.uleb128 0xb
 3923 0315 3F0F0000 		.4byte	.LASF56
 3924 0319 05       		.byte	0x5
 3925 031a C701     		.2byte	0x1c7
 3926 031c B7000000 		.4byte	0xb7
 3927 0320 9002     		.2byte	0x290
 3928 0322 0B       		.uleb128 0xb
 3929 0323 9F0B0000 		.4byte	.LASF57
 3930 0327 05       		.byte	0x5
 3931 0328 C801     		.2byte	0x1c8
 3932 032a B7000000 		.4byte	0xb7
 3933 032e 9402     		.2byte	0x294
 3934 0330 0B       		.uleb128 0xb
ARM GAS  /tmp/ccTYR2Ee.s 			page 110


 3935 0331 32010000 		.4byte	.LASF58
 3936 0335 05       		.byte	0x5
 3937 0336 C901     		.2byte	0x1c9
 3938 0338 B7000000 		.4byte	0xb7
 3939 033c 9802     		.2byte	0x298
 3940 033e 0B       		.uleb128 0xb
 3941 033f 04070000 		.4byte	.LASF59
 3942 0343 05       		.byte	0x5
 3943 0344 CA01     		.2byte	0x1ca
 3944 0346 B7000000 		.4byte	0xb7
 3945 034a 9C02     		.2byte	0x29c
 3946 034c 0B       		.uleb128 0xb
 3947 034d 2E040000 		.4byte	.LASF60
 3948 0351 05       		.byte	0x5
 3949 0352 CB01     		.2byte	0x1cb
 3950 0354 B7000000 		.4byte	0xb7
 3951 0358 A002     		.2byte	0x2a0
 3952 035a 0B       		.uleb128 0xb
 3953 035b A90A0000 		.4byte	.LASF61
 3954 035f 05       		.byte	0x5
 3955 0360 CC01     		.2byte	0x1cc
 3956 0362 E4030000 		.4byte	0x3e4
 3957 0366 A402     		.2byte	0x2a4
 3958 0368 0B       		.uleb128 0xb
 3959 0369 A30A0000 		.4byte	.LASF62
 3960 036d 05       		.byte	0x5
 3961 036e CD01     		.2byte	0x1cd
 3962 0370 B7000000 		.4byte	0xb7
 3963 0374 A802     		.2byte	0x2a8
 3964 0376 00       		.byte	0
 3965 0377 0C       		.uleb128 0xc
 3966 0378 97000000 		.4byte	0x97
 3967 037c 87030000 		.4byte	0x387
 3968 0380 0D       		.uleb128 0xd
 3969 0381 C3000000 		.4byte	0xc3
 3970 0385 0B       		.byte	0xb
 3971 0386 00       		.byte	0
 3972 0387 05       		.uleb128 0x5
 3973 0388 77030000 		.4byte	0x377
 3974 038c 0C       		.uleb128 0xc
 3975 038d BC000000 		.4byte	0xbc
 3976 0391 9C030000 		.4byte	0x39c
 3977 0395 0D       		.uleb128 0xd
 3978 0396 C3000000 		.4byte	0xc3
 3979 039a 01       		.byte	0x1
 3980 039b 00       		.byte	0
 3981 039c 06       		.uleb128 0x6
 3982 039d 8C030000 		.4byte	0x38c
 3983 03a1 05       		.uleb128 0x5
 3984 03a2 9C030000 		.4byte	0x39c
 3985 03a6 0C       		.uleb128 0xc
 3986 03a7 BC000000 		.4byte	0xbc
 3987 03ab B6030000 		.4byte	0x3b6
 3988 03af 0D       		.uleb128 0xd
 3989 03b0 C3000000 		.4byte	0xc3
 3990 03b4 03       		.byte	0x3
 3991 03b5 00       		.byte	0
ARM GAS  /tmp/ccTYR2Ee.s 			page 111


 3992 03b6 06       		.uleb128 0x6
 3993 03b7 A6030000 		.4byte	0x3a6
 3994 03bb 05       		.uleb128 0x5
 3995 03bc B6030000 		.4byte	0x3b6
 3996 03c0 05       		.uleb128 0x5
 3997 03c1 B6030000 		.4byte	0x3b6
 3998 03c5 0C       		.uleb128 0xc
 3999 03c6 BC000000 		.4byte	0xbc
 4000 03ca D5030000 		.4byte	0x3d5
 4001 03ce 0D       		.uleb128 0xd
 4002 03cf C3000000 		.4byte	0xc3
 4003 03d3 04       		.byte	0x4
 4004 03d4 00       		.byte	0
 4005 03d5 06       		.uleb128 0x6
 4006 03d6 C5030000 		.4byte	0x3c5
 4007 03da 05       		.uleb128 0x5
 4008 03db D5030000 		.4byte	0x3d5
 4009 03df 05       		.uleb128 0x5
 4010 03e0 D5030000 		.4byte	0x3d5
 4011 03e4 0C       		.uleb128 0xc
 4012 03e5 AC000000 		.4byte	0xac
 4013 03e9 F4030000 		.4byte	0x3f4
 4014 03ed 0D       		.uleb128 0xd
 4015 03ee C3000000 		.4byte	0xc3
 4016 03f2 00       		.byte	0
 4017 03f3 00       		.byte	0
 4018 03f4 0C       		.uleb128 0xc
 4019 03f5 AC000000 		.4byte	0xac
 4020 03f9 04040000 		.4byte	0x404
 4021 03fd 0D       		.uleb128 0xd
 4022 03fe C3000000 		.4byte	0xc3
 4023 0402 5C       		.byte	0x5c
 4024 0403 00       		.byte	0
 4025 0404 0C       		.uleb128 0xc
 4026 0405 AC000000 		.4byte	0xac
 4027 0409 14040000 		.4byte	0x414
 4028 040d 0D       		.uleb128 0xd
 4029 040e C3000000 		.4byte	0xc3
 4030 0412 0E       		.byte	0xe
 4031 0413 00       		.byte	0
 4032 0414 0C       		.uleb128 0xc
 4033 0415 AC000000 		.4byte	0xac
 4034 0419 24040000 		.4byte	0x424
 4035 041d 0D       		.uleb128 0xd
 4036 041e C3000000 		.4byte	0xc3
 4037 0422 05       		.byte	0x5
 4038 0423 00       		.byte	0
 4039 0424 0E       		.uleb128 0xe
 4040 0425 070C0000 		.4byte	.LASF63
 4041 0429 05       		.byte	0x5
 4042 042a CE01     		.2byte	0x1ce
 4043 042c CA000000 		.4byte	0xca
 4044 0430 0F       		.uleb128 0xf
 4045 0431 F60A0000 		.4byte	.LASF64
 4046 0435 05       		.byte	0x5
 4047 0436 6508     		.2byte	0x865
 4048 0438 A7000000 		.4byte	0xa7
ARM GAS  /tmp/ccTYR2Ee.s 			page 112


 4049 043c 10       		.uleb128 0x10
 4050 043d A4090000 		.4byte	.LASF65
 4051 0441 06       		.byte	0x6
 4052 0442 3A       		.byte	0x3a
 4053 0443 AC000000 		.4byte	0xac
 4054 0447 0C       		.uleb128 0xc
 4055 0448 BC000000 		.4byte	0xbc
 4056 044c 57040000 		.4byte	0x457
 4057 0450 0D       		.uleb128 0xd
 4058 0451 C3000000 		.4byte	0xc3
 4059 0455 00       		.byte	0
 4060 0456 00       		.byte	0
 4061 0457 06       		.uleb128 0x6
 4062 0458 47040000 		.4byte	0x447
 4063 045c 05       		.uleb128 0x5
 4064 045d 57040000 		.4byte	0x457
 4065 0461 05       		.uleb128 0x5
 4066 0462 57040000 		.4byte	0x457
 4067 0466 05       		.uleb128 0x5
 4068 0467 57040000 		.4byte	0x457
 4069 046b 05       		.uleb128 0x5
 4070 046c 57040000 		.4byte	0x457
 4071 0470 05       		.uleb128 0x5
 4072 0471 57040000 		.4byte	0x457
 4073 0475 11       		.uleb128 0x11
 4074 0476 4801     		.2byte	0x148
 4075 0478 07       		.byte	0x7
 4076 0479 38       		.byte	0x38
 4077 047a 9E060000 		.4byte	0x69e
 4078 047e 12       		.uleb128 0x12
 4079 047f 29100000 		.4byte	.LASF66
 4080 0483 07       		.byte	0x7
 4081 0484 39       		.byte	0x39
 4082 0485 B7000000 		.4byte	0xb7
 4083 0489 00       		.byte	0
 4084 048a 12       		.uleb128 0x12
 4085 048b 6B050000 		.4byte	.LASF67
 4086 048f 07       		.byte	0x7
 4087 0490 3A       		.byte	0x3a
 4088 0491 B7000000 		.4byte	0xb7
 4089 0495 04       		.byte	0x4
 4090 0496 12       		.uleb128 0x12
 4091 0497 880E0000 		.4byte	.LASF68
 4092 049b 07       		.byte	0x7
 4093 049c 3B       		.byte	0x3b
 4094 049d BC000000 		.4byte	0xbc
 4095 04a1 08       		.byte	0x8
 4096 04a2 12       		.uleb128 0x12
 4097 04a3 4A080000 		.4byte	.LASF69
 4098 04a7 07       		.byte	0x7
 4099 04a8 3C       		.byte	0x3c
 4100 04a9 70040000 		.4byte	0x470
 4101 04ad 0C       		.byte	0xc
 4102 04ae 12       		.uleb128 0x12
 4103 04af 74050000 		.4byte	.LASF70
 4104 04b3 07       		.byte	0x7
 4105 04b4 3D       		.byte	0x3d
ARM GAS  /tmp/ccTYR2Ee.s 			page 113


 4106 04b5 B7000000 		.4byte	0xb7
 4107 04b9 10       		.byte	0x10
 4108 04ba 12       		.uleb128 0x12
 4109 04bb 57100000 		.4byte	.LASF71
 4110 04bf 07       		.byte	0x7
 4111 04c0 3E       		.byte	0x3e
 4112 04c1 B7000000 		.4byte	0xb7
 4113 04c5 14       		.byte	0x14
 4114 04c6 12       		.uleb128 0x12
 4115 04c7 E2040000 		.4byte	.LASF72
 4116 04cb 07       		.byte	0x7
 4117 04cc 3F       		.byte	0x3f
 4118 04cd BC000000 		.4byte	0xbc
 4119 04d1 18       		.byte	0x18
 4120 04d2 12       		.uleb128 0x12
 4121 04d3 E8020000 		.4byte	.LASF73
 4122 04d7 07       		.byte	0x7
 4123 04d8 40       		.byte	0x40
 4124 04d9 B7000000 		.4byte	0xb7
 4125 04dd 1C       		.byte	0x1c
 4126 04de 12       		.uleb128 0x12
 4127 04df 030B0000 		.4byte	.LASF74
 4128 04e3 07       		.byte	0x7
 4129 04e4 41       		.byte	0x41
 4130 04e5 B7000000 		.4byte	0xb7
 4131 04e9 20       		.byte	0x20
 4132 04ea 12       		.uleb128 0x12
 4133 04eb 15040000 		.4byte	.LASF75
 4134 04ef 07       		.byte	0x7
 4135 04f0 42       		.byte	0x42
 4136 04f1 B7000000 		.4byte	0xb7
 4137 04f5 24       		.byte	0x24
 4138 04f6 12       		.uleb128 0x12
 4139 04f7 4F020000 		.4byte	.LASF76
 4140 04fb 07       		.byte	0x7
 4141 04fc 43       		.byte	0x43
 4142 04fd B7000000 		.4byte	0xb7
 4143 0501 28       		.byte	0x28
 4144 0502 12       		.uleb128 0x12
 4145 0503 780E0000 		.4byte	.LASF77
 4146 0507 07       		.byte	0x7
 4147 0508 44       		.byte	0x44
 4148 0509 6B040000 		.4byte	0x46b
 4149 050d 2C       		.byte	0x2c
 4150 050e 12       		.uleb128 0x12
 4151 050f F20E0000 		.4byte	.LASF78
 4152 0513 07       		.byte	0x7
 4153 0514 45       		.byte	0x45
 4154 0515 B7000000 		.4byte	0xb7
 4155 0519 30       		.byte	0x30
 4156 051a 12       		.uleb128 0x12
 4157 051b 5E080000 		.4byte	.LASF79
 4158 051f 07       		.byte	0x7
 4159 0520 46       		.byte	0x46
 4160 0521 66040000 		.4byte	0x466
 4161 0525 34       		.byte	0x34
 4162 0526 12       		.uleb128 0x12
ARM GAS  /tmp/ccTYR2Ee.s 			page 114


 4163 0527 30060000 		.4byte	.LASF80
 4164 052b 07       		.byte	0x7
 4165 052c 47       		.byte	0x47
 4166 052d B7000000 		.4byte	0xb7
 4167 0531 38       		.byte	0x38
 4168 0532 12       		.uleb128 0x12
 4169 0533 910E0000 		.4byte	.LASF81
 4170 0537 07       		.byte	0x7
 4171 0538 48       		.byte	0x48
 4172 0539 61040000 		.4byte	0x461
 4173 053d 3C       		.byte	0x3c
 4174 053e 12       		.uleb128 0x12
 4175 053f 9D050000 		.4byte	.LASF82
 4176 0543 07       		.byte	0x7
 4177 0544 49       		.byte	0x49
 4178 0545 AE060000 		.4byte	0x6ae
 4179 0549 40       		.byte	0x40
 4180 054a 12       		.uleb128 0x12
 4181 054b 890C0000 		.4byte	.LASF83
 4182 054f 07       		.byte	0x7
 4183 0550 4A       		.byte	0x4a
 4184 0551 5C040000 		.4byte	0x45c
 4185 0555 5C       		.byte	0x5c
 4186 0556 12       		.uleb128 0x12
 4187 0557 C7000000 		.4byte	.LASF84
 4188 055b 07       		.byte	0x7
 4189 055c 4B       		.byte	0x4b
 4190 055d B7000000 		.4byte	0xb7
 4191 0561 60       		.byte	0x60
 4192 0562 12       		.uleb128 0x12
 4193 0563 BD0A0000 		.4byte	.LASF85
 4194 0567 07       		.byte	0x7
 4195 0568 4C       		.byte	0x4c
 4196 0569 B7000000 		.4byte	0xb7
 4197 056d 64       		.byte	0x64
 4198 056e 12       		.uleb128 0x12
 4199 056f 42100000 		.4byte	.LASF86
 4200 0573 07       		.byte	0x7
 4201 0574 4D       		.byte	0x4d
 4202 0575 BC000000 		.4byte	0xbc
 4203 0579 68       		.byte	0x68
 4204 057a 12       		.uleb128 0x12
 4205 057b 1F040000 		.4byte	.LASF87
 4206 057f 07       		.byte	0x7
 4207 0580 4E       		.byte	0x4e
 4208 0581 BC000000 		.4byte	0xbc
 4209 0585 6C       		.byte	0x6c
 4210 0586 12       		.uleb128 0x12
 4211 0587 1F050000 		.4byte	.LASF88
 4212 058b 07       		.byte	0x7
 4213 058c 4F       		.byte	0x4f
 4214 058d B7000000 		.4byte	0xb7
 4215 0591 70       		.byte	0x70
 4216 0592 12       		.uleb128 0x12
 4217 0593 BA070000 		.4byte	.LASF89
 4218 0597 07       		.byte	0x7
 4219 0598 50       		.byte	0x50
ARM GAS  /tmp/ccTYR2Ee.s 			page 115


 4220 0599 B7000000 		.4byte	0xb7
 4221 059d 74       		.byte	0x74
 4222 059e 12       		.uleb128 0x12
 4223 059f 51010000 		.4byte	.LASF90
 4224 05a3 07       		.byte	0x7
 4225 05a4 51       		.byte	0x51
 4226 05a5 B7000000 		.4byte	0xb7
 4227 05a9 78       		.byte	0x78
 4228 05aa 12       		.uleb128 0x12
 4229 05ab 8A080000 		.4byte	.LASF91
 4230 05af 07       		.byte	0x7
 4231 05b0 52       		.byte	0x52
 4232 05b1 C8060000 		.4byte	0x6c8
 4233 05b5 7C       		.byte	0x7c
 4234 05b6 12       		.uleb128 0x12
 4235 05b7 E40F0000 		.4byte	.LASF92
 4236 05bb 07       		.byte	0x7
 4237 05bc 53       		.byte	0x53
 4238 05bd B7000000 		.4byte	0xb7
 4239 05c1 E4       		.byte	0xe4
 4240 05c2 12       		.uleb128 0x12
 4241 05c3 57050000 		.4byte	.LASF93
 4242 05c7 07       		.byte	0x7
 4243 05c8 54       		.byte	0x54
 4244 05c9 BC000000 		.4byte	0xbc
 4245 05cd E8       		.byte	0xe8
 4246 05ce 12       		.uleb128 0x12
 4247 05cf B30A0000 		.4byte	.LASF94
 4248 05d3 07       		.byte	0x7
 4249 05d4 55       		.byte	0x55
 4250 05d5 DF030000 		.4byte	0x3df
 4251 05d9 EC       		.byte	0xec
 4252 05da 13       		.uleb128 0x13
 4253 05db 7E050000 		.4byte	.LASF95
 4254 05df 07       		.byte	0x7
 4255 05e0 56       		.byte	0x56
 4256 05e1 B7000000 		.4byte	0xb7
 4257 05e5 0001     		.2byte	0x100
 4258 05e7 13       		.uleb128 0x13
 4259 05e8 61100000 		.4byte	.LASF96
 4260 05ec 07       		.byte	0x7
 4261 05ed 57       		.byte	0x57
 4262 05ee B7000000 		.4byte	0xb7
 4263 05f2 0401     		.2byte	0x104
 4264 05f4 13       		.uleb128 0x13
 4265 05f5 F3040000 		.4byte	.LASF97
 4266 05f9 07       		.byte	0x7
 4267 05fa 58       		.byte	0x58
 4268 05fb BC000000 		.4byte	0xbc
 4269 05ff 0801     		.2byte	0x108
 4270 0601 13       		.uleb128 0x13
 4271 0602 B2050000 		.4byte	.LASF98
 4272 0606 07       		.byte	0x7
 4273 0607 59       		.byte	0x59
 4274 0608 B7000000 		.4byte	0xb7
 4275 060c 0C01     		.2byte	0x10c
 4276 060e 13       		.uleb128 0x13
ARM GAS  /tmp/ccTYR2Ee.s 			page 116


 4277 060f DF100000 		.4byte	.LASF99
 4278 0613 07       		.byte	0x7
 4279 0614 5A       		.byte	0x5a
 4280 0615 B7000000 		.4byte	0xb7
 4281 0619 1001     		.2byte	0x110
 4282 061b 13       		.uleb128 0x13
 4283 061c 9C000000 		.4byte	.LASF100
 4284 0620 07       		.byte	0x7
 4285 0621 5B       		.byte	0x5b
 4286 0622 B7000000 		.4byte	0xb7
 4287 0626 1401     		.2byte	0x114
 4288 0628 13       		.uleb128 0x13
 4289 0629 2E0A0000 		.4byte	.LASF101
 4290 062d 07       		.byte	0x7
 4291 062e 5C       		.byte	0x5c
 4292 062f B7000000 		.4byte	0xb7
 4293 0633 1801     		.2byte	0x118
 4294 0635 13       		.uleb128 0x13
 4295 0636 36090000 		.4byte	.LASF102
 4296 063a 07       		.byte	0x7
 4297 063b 5D       		.byte	0x5d
 4298 063c BC000000 		.4byte	0xbc
 4299 0640 1C01     		.2byte	0x11c
 4300 0642 13       		.uleb128 0x13
 4301 0643 43040000 		.4byte	.LASF103
 4302 0647 07       		.byte	0x7
 4303 0648 5E       		.byte	0x5e
 4304 0649 BC000000 		.4byte	0xbc
 4305 064d 2001     		.2byte	0x120
 4306 064f 13       		.uleb128 0x13
 4307 0650 9F080000 		.4byte	.LASF104
 4308 0654 07       		.byte	0x7
 4309 0655 5F       		.byte	0x5f
 4310 0656 C0030000 		.4byte	0x3c0
 4311 065a 2401     		.2byte	0x124
 4312 065c 13       		.uleb128 0x13
 4313 065d AA000000 		.4byte	.LASF105
 4314 0661 07       		.byte	0x7
 4315 0662 60       		.byte	0x60
 4316 0663 B7000000 		.4byte	0xb7
 4317 0667 3401     		.2byte	0x134
 4318 0669 13       		.uleb128 0x13
 4319 066a 3C0A0000 		.4byte	.LASF106
 4320 066e 07       		.byte	0x7
 4321 066f 61       		.byte	0x61
 4322 0670 B7000000 		.4byte	0xb7
 4323 0674 3801     		.2byte	0x138
 4324 0676 13       		.uleb128 0x13
 4325 0677 44090000 		.4byte	.LASF107
 4326 067b 07       		.byte	0x7
 4327 067c 62       		.byte	0x62
 4328 067d BC000000 		.4byte	0xbc
 4329 0681 3C01     		.2byte	0x13c
 4330 0683 13       		.uleb128 0x13
 4331 0684 CD0B0000 		.4byte	.LASF108
 4332 0688 07       		.byte	0x7
 4333 0689 63       		.byte	0x63
ARM GAS  /tmp/ccTYR2Ee.s 			page 117


 4334 068a BC000000 		.4byte	0xbc
 4335 068e 4001     		.2byte	0x140
 4336 0690 13       		.uleb128 0x13
 4337 0691 5F030000 		.4byte	.LASF109
 4338 0695 07       		.byte	0x7
 4339 0696 64       		.byte	0x64
 4340 0697 BC000000 		.4byte	0xbc
 4341 069b 4401     		.2byte	0x144
 4342 069d 00       		.byte	0
 4343 069e 0C       		.uleb128 0xc
 4344 069f B7000000 		.4byte	0xb7
 4345 06a3 AE060000 		.4byte	0x6ae
 4346 06a7 0D       		.uleb128 0xd
 4347 06a8 C3000000 		.4byte	0xc3
 4348 06ac 06       		.byte	0x6
 4349 06ad 00       		.byte	0
 4350 06ae 05       		.uleb128 0x5
 4351 06af 9E060000 		.4byte	0x69e
 4352 06b3 0C       		.uleb128 0xc
 4353 06b4 BC000000 		.4byte	0xbc
 4354 06b8 C3060000 		.4byte	0x6c3
 4355 06bc 0D       		.uleb128 0xd
 4356 06bd C3000000 		.4byte	0xc3
 4357 06c1 19       		.byte	0x19
 4358 06c2 00       		.byte	0
 4359 06c3 06       		.uleb128 0x6
 4360 06c4 B3060000 		.4byte	0x6b3
 4361 06c8 05       		.uleb128 0x5
 4362 06c9 C3060000 		.4byte	0x6c3
 4363 06cd 14       		.uleb128 0x14
 4364 06ce 506D6300 		.ascii	"Pmc\000"
 4365 06d2 07       		.byte	0x7
 4366 06d3 65       		.byte	0x65
 4367 06d4 75040000 		.4byte	0x475
 4368 06d8 15       		.uleb128 0x15
 4369 06d9 18       		.byte	0x18
 4370 06da 08       		.byte	0x8
 4371 06db 37       		.byte	0x37
 4372 06dc 29070000 		.4byte	0x729
 4373 06e0 12       		.uleb128 0x12
 4374 06e1 F5010000 		.4byte	.LASF110
 4375 06e5 08       		.byte	0x8
 4376 06e6 38       		.byte	0x38
 4377 06e7 B7000000 		.4byte	0xb7
 4378 06eb 00       		.byte	0
 4379 06ec 12       		.uleb128 0x12
 4380 06ed 90040000 		.4byte	.LASF111
 4381 06f1 08       		.byte	0x8
 4382 06f2 39       		.byte	0x39
 4383 06f3 B7000000 		.4byte	0xb7
 4384 06f7 04       		.byte	0x4
 4385 06f8 12       		.uleb128 0x12
 4386 06f9 E80C0000 		.4byte	.LASF112
 4387 06fd 08       		.byte	0x8
 4388 06fe 3A       		.byte	0x3a
 4389 06ff B7000000 		.4byte	0xb7
 4390 0703 08       		.byte	0x8
ARM GAS  /tmp/ccTYR2Ee.s 			page 118


 4391 0704 12       		.uleb128 0x12
 4392 0705 B30C0000 		.4byte	.LASF113
 4393 0709 08       		.byte	0x8
 4394 070a 3B       		.byte	0x3b
 4395 070b B7000000 		.4byte	0xb7
 4396 070f 0C       		.byte	0xc
 4397 0710 12       		.uleb128 0x12
 4398 0711 A30F0000 		.4byte	.LASF114
 4399 0715 08       		.byte	0x8
 4400 0716 3C       		.byte	0x3c
 4401 0717 B7000000 		.4byte	0xb7
 4402 071b 10       		.byte	0x10
 4403 071c 12       		.uleb128 0x12
 4404 071d D2060000 		.4byte	.LASF115
 4405 0721 08       		.byte	0x8
 4406 0722 3D       		.byte	0x3d
 4407 0723 BC000000 		.4byte	0xbc
 4408 0727 14       		.byte	0x14
 4409 0728 00       		.byte	0
 4410 0729 04       		.uleb128 0x4
 4411 072a 8B040000 		.4byte	.LASF116
 4412 072e 08       		.byte	0x8
 4413 072f 3E       		.byte	0x3e
 4414 0730 D8060000 		.4byte	0x6d8
 4415 0734 04       		.uleb128 0x4
 4416 0735 690D0000 		.4byte	.LASF117
 4417 0739 09       		.byte	0x9
 4418 073a 07       		.byte	0x7
 4419 073b 25000000 		.4byte	0x25
 4420 073f 04       		.uleb128 0x4
 4421 0740 DD0F0000 		.4byte	.LASF118
 4422 0744 0A       		.byte	0xa
 4423 0745 2C       		.byte	0x2c
 4424 0746 65000000 		.4byte	0x65
 4425 074a 04       		.uleb128 0x4
 4426 074b 47020000 		.4byte	.LASF119
 4427 074f 0A       		.byte	0xa
 4428 0750 72       		.byte	0x72
 4429 0751 65000000 		.4byte	0x65
 4430 0755 0E       		.uleb128 0xe
 4431 0756 F00C0000 		.4byte	.LASF120
 4432 075a 0B       		.byte	0xb
 4433 075b 6501     		.2byte	0x165
 4434 075d 2C000000 		.4byte	0x2c
 4435 0761 16       		.uleb128 0x16
 4436 0762 04       		.byte	0x4
 4437 0763 0A       		.byte	0xa
 4438 0764 A6       		.byte	0xa6
 4439 0765 80070000 		.4byte	0x780
 4440 0769 17       		.uleb128 0x17
 4441 076a BE060000 		.4byte	.LASF121
 4442 076e 0A       		.byte	0xa
 4443 076f A8       		.byte	0xa8
 4444 0770 55070000 		.4byte	0x755
 4445 0774 17       		.uleb128 0x17
 4446 0775 7B0B0000 		.4byte	.LASF122
 4447 0779 0A       		.byte	0xa
ARM GAS  /tmp/ccTYR2Ee.s 			page 119


 4448 077a A9       		.byte	0xa9
 4449 077b 80070000 		.4byte	0x780
 4450 077f 00       		.byte	0
 4451 0780 0C       		.uleb128 0xc
 4452 0781 45000000 		.4byte	0x45
 4453 0785 90070000 		.4byte	0x790
 4454 0789 0D       		.uleb128 0xd
 4455 078a C3000000 		.4byte	0xc3
 4456 078e 03       		.byte	0x3
 4457 078f 00       		.byte	0
 4458 0790 15       		.uleb128 0x15
 4459 0791 08       		.byte	0x8
 4460 0792 0A       		.byte	0xa
 4461 0793 A3       		.byte	0xa3
 4462 0794 B1070000 		.4byte	0x7b1
 4463 0798 12       		.uleb128 0x12
 4464 0799 20030000 		.4byte	.LASF123
 4465 079d 0A       		.byte	0xa
 4466 079e A5       		.byte	0xa5
 4467 079f 25000000 		.4byte	0x25
 4468 07a3 00       		.byte	0
 4469 07a4 12       		.uleb128 0x12
 4470 07a5 A5050000 		.4byte	.LASF124
 4471 07a9 0A       		.byte	0xa
 4472 07aa AA       		.byte	0xaa
 4473 07ab 61070000 		.4byte	0x761
 4474 07af 04       		.byte	0x4
 4475 07b0 00       		.byte	0
 4476 07b1 04       		.uleb128 0x4
 4477 07b2 1A080000 		.4byte	.LASF125
 4478 07b6 0A       		.byte	0xa
 4479 07b7 AB       		.byte	0xab
 4480 07b8 90070000 		.4byte	0x790
 4481 07bc 04       		.uleb128 0x4
 4482 07bd 68080000 		.4byte	.LASF126
 4483 07c1 0A       		.byte	0xa
 4484 07c2 AF       		.byte	0xaf
 4485 07c3 34070000 		.4byte	0x734
 4486 07c7 04       		.uleb128 0x4
 4487 07c8 620C0000 		.4byte	.LASF127
 4488 07cc 0C       		.byte	0xc
 4489 07cd 16       		.byte	0x16
 4490 07ce 77000000 		.4byte	0x77
 4491 07d2 18       		.uleb128 0x18
 4492 07d3 9A020000 		.4byte	.LASF132
 4493 07d7 18       		.byte	0x18
 4494 07d8 0C       		.byte	0xc
 4495 07d9 2D       		.byte	0x2d
 4496 07da 25080000 		.4byte	0x825
 4497 07de 12       		.uleb128 0x12
 4498 07df 60050000 		.4byte	.LASF128
 4499 07e3 0C       		.byte	0xc
 4500 07e4 2F       		.byte	0x2f
 4501 07e5 25080000 		.4byte	0x825
 4502 07e9 00       		.byte	0
 4503 07ea 19       		.uleb128 0x19
 4504 07eb 5F6B00   		.ascii	"_k\000"
ARM GAS  /tmp/ccTYR2Ee.s 			page 120


 4505 07ee 0C       		.byte	0xc
 4506 07ef 30       		.byte	0x30
 4507 07f0 25000000 		.4byte	0x25
 4508 07f4 04       		.byte	0x4
 4509 07f5 12       		.uleb128 0x12
 4510 07f6 180C0000 		.4byte	.LASF129
 4511 07fa 0C       		.byte	0xc
 4512 07fb 30       		.byte	0x30
 4513 07fc 25000000 		.4byte	0x25
 4514 0800 08       		.byte	0x8
 4515 0801 12       		.uleb128 0x12
 4516 0802 1B0B0000 		.4byte	.LASF130
 4517 0806 0C       		.byte	0xc
 4518 0807 30       		.byte	0x30
 4519 0808 25000000 		.4byte	0x25
 4520 080c 0C       		.byte	0xc
 4521 080d 12       		.uleb128 0x12
 4522 080e F9030000 		.4byte	.LASF131
 4523 0812 0C       		.byte	0xc
 4524 0813 30       		.byte	0x30
 4525 0814 25000000 		.4byte	0x25
 4526 0818 10       		.byte	0x10
 4527 0819 19       		.uleb128 0x19
 4528 081a 5F7800   		.ascii	"_x\000"
 4529 081d 0C       		.byte	0xc
 4530 081e 31       		.byte	0x31
 4531 081f 2B080000 		.4byte	0x82b
 4532 0823 14       		.byte	0x14
 4533 0824 00       		.byte	0
 4534 0825 1A       		.uleb128 0x1a
 4535 0826 04       		.byte	0x4
 4536 0827 D2070000 		.4byte	0x7d2
 4537 082b 0C       		.uleb128 0xc
 4538 082c C7070000 		.4byte	0x7c7
 4539 0830 3B080000 		.4byte	0x83b
 4540 0834 0D       		.uleb128 0xd
 4541 0835 C3000000 		.4byte	0xc3
 4542 0839 00       		.byte	0
 4543 083a 00       		.byte	0
 4544 083b 18       		.uleb128 0x18
 4545 083c 730C0000 		.4byte	.LASF133
 4546 0840 24       		.byte	0x24
 4547 0841 0C       		.byte	0xc
 4548 0842 35       		.byte	0x35
 4549 0843 B4080000 		.4byte	0x8b4
 4550 0847 12       		.uleb128 0x12
 4551 0848 FD040000 		.4byte	.LASF134
 4552 084c 0C       		.byte	0xc
 4553 084d 37       		.byte	0x37
 4554 084e 25000000 		.4byte	0x25
 4555 0852 00       		.byte	0
 4556 0853 12       		.uleb128 0x12
 4557 0854 2E030000 		.4byte	.LASF135
 4558 0858 0C       		.byte	0xc
 4559 0859 38       		.byte	0x38
 4560 085a 25000000 		.4byte	0x25
 4561 085e 04       		.byte	0x4
ARM GAS  /tmp/ccTYR2Ee.s 			page 121


 4562 085f 12       		.uleb128 0x12
 4563 0860 DE020000 		.4byte	.LASF136
 4564 0864 0C       		.byte	0xc
 4565 0865 39       		.byte	0x39
 4566 0866 25000000 		.4byte	0x25
 4567 086a 08       		.byte	0x8
 4568 086b 12       		.uleb128 0x12
 4569 086c 3D060000 		.4byte	.LASF137
 4570 0870 0C       		.byte	0xc
 4571 0871 3A       		.byte	0x3a
 4572 0872 25000000 		.4byte	0x25
 4573 0876 0C       		.byte	0xc
 4574 0877 12       		.uleb128 0x12
 4575 0878 5C090000 		.4byte	.LASF138
 4576 087c 0C       		.byte	0xc
 4577 087d 3B       		.byte	0x3b
 4578 087e 25000000 		.4byte	0x25
 4579 0882 10       		.byte	0x10
 4580 0883 12       		.uleb128 0x12
 4581 0884 950B0000 		.4byte	.LASF139
 4582 0888 0C       		.byte	0xc
 4583 0889 3C       		.byte	0x3c
 4584 088a 25000000 		.4byte	0x25
 4585 088e 14       		.byte	0x14
 4586 088f 12       		.uleb128 0x12
 4587 0890 B5020000 		.4byte	.LASF140
 4588 0894 0C       		.byte	0xc
 4589 0895 3D       		.byte	0x3d
 4590 0896 25000000 		.4byte	0x25
 4591 089a 18       		.byte	0x18
 4592 089b 12       		.uleb128 0x12
 4593 089c 28050000 		.4byte	.LASF141
 4594 08a0 0C       		.byte	0xc
 4595 08a1 3E       		.byte	0x3e
 4596 08a2 25000000 		.4byte	0x25
 4597 08a6 1C       		.byte	0x1c
 4598 08a7 12       		.uleb128 0x12
 4599 08a8 94080000 		.4byte	.LASF142
 4600 08ac 0C       		.byte	0xc
 4601 08ad 3F       		.byte	0x3f
 4602 08ae 25000000 		.4byte	0x25
 4603 08b2 20       		.byte	0x20
 4604 08b3 00       		.byte	0
 4605 08b4 1B       		.uleb128 0x1b
 4606 08b5 5E000000 		.4byte	.LASF143
 4607 08b9 0801     		.2byte	0x108
 4608 08bb 0C       		.byte	0xc
 4609 08bc 48       		.byte	0x48
 4610 08bd F4080000 		.4byte	0x8f4
 4611 08c1 12       		.uleb128 0x12
 4612 08c2 42080000 		.4byte	.LASF144
 4613 08c6 0C       		.byte	0xc
 4614 08c7 49       		.byte	0x49
 4615 08c8 F4080000 		.4byte	0x8f4
 4616 08cc 00       		.byte	0
 4617 08cd 12       		.uleb128 0x12
 4618 08ce 120D0000 		.4byte	.LASF145
ARM GAS  /tmp/ccTYR2Ee.s 			page 122


 4619 08d2 0C       		.byte	0xc
 4620 08d3 4A       		.byte	0x4a
 4621 08d4 F4080000 		.4byte	0x8f4
 4622 08d8 80       		.byte	0x80
 4623 08d9 13       		.uleb128 0x13
 4624 08da 9A0F0000 		.4byte	.LASF146
 4625 08de 0C       		.byte	0xc
 4626 08df 4C       		.byte	0x4c
 4627 08e0 C7070000 		.4byte	0x7c7
 4628 08e4 0001     		.2byte	0x100
 4629 08e6 13       		.uleb128 0x13
 4630 08e7 49100000 		.4byte	.LASF147
 4631 08eb 0C       		.byte	0xc
 4632 08ec 4F       		.byte	0x4f
 4633 08ed C7070000 		.4byte	0x7c7
 4634 08f1 0401     		.2byte	0x104
 4635 08f3 00       		.byte	0
 4636 08f4 0C       		.uleb128 0xc
 4637 08f5 C1000000 		.4byte	0xc1
 4638 08f9 04090000 		.4byte	0x904
 4639 08fd 0D       		.uleb128 0xd
 4640 08fe C3000000 		.4byte	0xc3
 4641 0902 1F       		.byte	0x1f
 4642 0903 00       		.byte	0
 4643 0904 1B       		.uleb128 0x1b
 4644 0905 0F0A0000 		.4byte	.LASF148
 4645 0909 9001     		.2byte	0x190
 4646 090b 0C       		.byte	0xc
 4647 090c 5B       		.byte	0x5b
 4648 090d 42090000 		.4byte	0x942
 4649 0911 12       		.uleb128 0x12
 4650 0912 60050000 		.4byte	.LASF128
 4651 0916 0C       		.byte	0xc
 4652 0917 5C       		.byte	0x5c
 4653 0918 42090000 		.4byte	0x942
 4654 091c 00       		.byte	0
 4655 091d 12       		.uleb128 0x12
 4656 091e C2080000 		.4byte	.LASF149
 4657 0922 0C       		.byte	0xc
 4658 0923 5D       		.byte	0x5d
 4659 0924 25000000 		.4byte	0x25
 4660 0928 04       		.byte	0x4
 4661 0929 12       		.uleb128 0x12
 4662 092a 5A020000 		.4byte	.LASF150
 4663 092e 0C       		.byte	0xc
 4664 092f 5F       		.byte	0x5f
 4665 0930 48090000 		.4byte	0x948
 4666 0934 08       		.byte	0x8
 4667 0935 12       		.uleb128 0x12
 4668 0936 5E000000 		.4byte	.LASF143
 4669 093a 0C       		.byte	0xc
 4670 093b 60       		.byte	0x60
 4671 093c B4080000 		.4byte	0x8b4
 4672 0940 88       		.byte	0x88
 4673 0941 00       		.byte	0
 4674 0942 1A       		.uleb128 0x1a
 4675 0943 04       		.byte	0x4
ARM GAS  /tmp/ccTYR2Ee.s 			page 123


 4676 0944 04090000 		.4byte	0x904
 4677 0948 0C       		.uleb128 0xc
 4678 0949 58090000 		.4byte	0x958
 4679 094d 58090000 		.4byte	0x958
 4680 0951 0D       		.uleb128 0xd
 4681 0952 C3000000 		.4byte	0xc3
 4682 0956 1F       		.byte	0x1f
 4683 0957 00       		.byte	0
 4684 0958 1A       		.uleb128 0x1a
 4685 0959 04       		.byte	0x4
 4686 095a 5E090000 		.4byte	0x95e
 4687 095e 1C       		.uleb128 0x1c
 4688 095f 18       		.uleb128 0x18
 4689 0960 5D0E0000 		.4byte	.LASF151
 4690 0964 08       		.byte	0x8
 4691 0965 0C       		.byte	0xc
 4692 0966 73       		.byte	0x73
 4693 0967 84090000 		.4byte	0x984
 4694 096b 12       		.uleb128 0x12
 4695 096c 5C070000 		.4byte	.LASF152
 4696 0970 0C       		.byte	0xc
 4697 0971 74       		.byte	0x74
 4698 0972 84090000 		.4byte	0x984
 4699 0976 00       		.byte	0
 4700 0977 12       		.uleb128 0x12
 4701 0978 AD0F0000 		.4byte	.LASF153
 4702 097c 0C       		.byte	0xc
 4703 097d 75       		.byte	0x75
 4704 097e 25000000 		.4byte	0x25
 4705 0982 04       		.byte	0x4
 4706 0983 00       		.byte	0
 4707 0984 1A       		.uleb128 0x1a
 4708 0985 04       		.byte	0x4
 4709 0986 45000000 		.4byte	0x45
 4710 098a 18       		.uleb128 0x18
 4711 098b F1030000 		.4byte	.LASF154
 4712 098f 68       		.byte	0x68
 4713 0990 0C       		.byte	0xc
 4714 0991 B3       		.byte	0xb3
 4715 0992 B40A0000 		.4byte	0xab4
 4716 0996 19       		.uleb128 0x19
 4717 0997 5F7000   		.ascii	"_p\000"
 4718 099a 0C       		.byte	0xc
 4719 099b B4       		.byte	0xb4
 4720 099c 84090000 		.4byte	0x984
 4721 09a0 00       		.byte	0
 4722 09a1 19       		.uleb128 0x19
 4723 09a2 5F7200   		.ascii	"_r\000"
 4724 09a5 0C       		.byte	0xc
 4725 09a6 B5       		.byte	0xb5
 4726 09a7 25000000 		.4byte	0x25
 4727 09ab 04       		.byte	0x4
 4728 09ac 19       		.uleb128 0x19
 4729 09ad 5F7700   		.ascii	"_w\000"
 4730 09b0 0C       		.byte	0xc
 4731 09b1 B6       		.byte	0xb6
 4732 09b2 25000000 		.4byte	0x25
ARM GAS  /tmp/ccTYR2Ee.s 			page 124


 4733 09b6 08       		.byte	0x8
 4734 09b7 12       		.uleb128 0x12
 4735 09b8 4A010000 		.4byte	.LASF155
 4736 09bc 0C       		.byte	0xc
 4737 09bd B7       		.byte	0xb7
 4738 09be 4C000000 		.4byte	0x4c
 4739 09c2 0C       		.byte	0xc
 4740 09c3 12       		.uleb128 0x12
 4741 09c4 AC070000 		.4byte	.LASF156
 4742 09c8 0C       		.byte	0xc
 4743 09c9 B8       		.byte	0xb8
 4744 09ca 4C000000 		.4byte	0x4c
 4745 09ce 0E       		.byte	0xe
 4746 09cf 19       		.uleb128 0x19
 4747 09d0 5F626600 		.ascii	"_bf\000"
 4748 09d4 0C       		.byte	0xc
 4749 09d5 B9       		.byte	0xb9
 4750 09d6 5F090000 		.4byte	0x95f
 4751 09da 10       		.byte	0x10
 4752 09db 12       		.uleb128 0x12
 4753 09dc 41010000 		.4byte	.LASF157
 4754 09e0 0C       		.byte	0xc
 4755 09e1 BA       		.byte	0xba
 4756 09e2 25000000 		.4byte	0x25
 4757 09e6 18       		.byte	0x18
 4758 09e7 12       		.uleb128 0x12
 4759 09e8 79020000 		.4byte	.LASF158
 4760 09ec 0C       		.byte	0xc
 4761 09ed C1       		.byte	0xc1
 4762 09ee C1000000 		.4byte	0xc1
 4763 09f2 1C       		.byte	0x1c
 4764 09f3 12       		.uleb128 0x12
 4765 09f4 EF010000 		.4byte	.LASF159
 4766 09f8 0C       		.byte	0xc
 4767 09f9 C3       		.byte	0xc3
 4768 09fa 210C0000 		.4byte	0xc21
 4769 09fe 20       		.byte	0x20
 4770 09ff 12       		.uleb128 0x12
 4771 0a00 D5090000 		.4byte	.LASF160
 4772 0a04 0C       		.byte	0xc
 4773 0a05 C5       		.byte	0xc5
 4774 0a06 4B0C0000 		.4byte	0xc4b
 4775 0a0a 24       		.byte	0x24
 4776 0a0b 12       		.uleb128 0x12
 4777 0a0c 7C100000 		.4byte	.LASF161
 4778 0a10 0C       		.byte	0xc
 4779 0a11 C8       		.byte	0xc8
 4780 0a12 6F0C0000 		.4byte	0xc6f
 4781 0a16 28       		.byte	0x28
 4782 0a17 12       		.uleb128 0x12
 4783 0a18 DA060000 		.4byte	.LASF162
 4784 0a1c 0C       		.byte	0xc
 4785 0a1d C9       		.byte	0xc9
 4786 0a1e 890C0000 		.4byte	0xc89
 4787 0a22 2C       		.byte	0x2c
 4788 0a23 19       		.uleb128 0x19
 4789 0a24 5F756200 		.ascii	"_ub\000"
ARM GAS  /tmp/ccTYR2Ee.s 			page 125


 4790 0a28 0C       		.byte	0xc
 4791 0a29 CC       		.byte	0xcc
 4792 0a2a 5F090000 		.4byte	0x95f
 4793 0a2e 30       		.byte	0x30
 4794 0a2f 19       		.uleb128 0x19
 4795 0a30 5F757000 		.ascii	"_up\000"
 4796 0a34 0C       		.byte	0xc
 4797 0a35 CD       		.byte	0xcd
 4798 0a36 84090000 		.4byte	0x984
 4799 0a3a 38       		.byte	0x38
 4800 0a3b 19       		.uleb128 0x19
 4801 0a3c 5F757200 		.ascii	"_ur\000"
 4802 0a40 0C       		.byte	0xc
 4803 0a41 CE       		.byte	0xce
 4804 0a42 25000000 		.4byte	0x25
 4805 0a46 3C       		.byte	0x3c
 4806 0a47 12       		.uleb128 0x12
 4807 0a48 3D040000 		.4byte	.LASF163
 4808 0a4c 0C       		.byte	0xc
 4809 0a4d D1       		.byte	0xd1
 4810 0a4e 8F0C0000 		.4byte	0xc8f
 4811 0a52 40       		.byte	0x40
 4812 0a53 12       		.uleb128 0x12
 4813 0a54 ED0F0000 		.4byte	.LASF164
 4814 0a58 0C       		.byte	0xc
 4815 0a59 D2       		.byte	0xd2
 4816 0a5a 9F0C0000 		.4byte	0xc9f
 4817 0a5e 43       		.byte	0x43
 4818 0a5f 19       		.uleb128 0x19
 4819 0a60 5F6C6200 		.ascii	"_lb\000"
 4820 0a64 0C       		.byte	0xc
 4821 0a65 D5       		.byte	0xd5
 4822 0a66 5F090000 		.4byte	0x95f
 4823 0a6a 44       		.byte	0x44
 4824 0a6b 12       		.uleb128 0x12
 4825 0a6c 6A0C0000 		.4byte	.LASF165
 4826 0a70 0C       		.byte	0xc
 4827 0a71 D8       		.byte	0xd8
 4828 0a72 25000000 		.4byte	0x25
 4829 0a76 4C       		.byte	0x4c
 4830 0a77 12       		.uleb128 0x12
 4831 0a78 35040000 		.4byte	.LASF166
 4832 0a7c 0C       		.byte	0xc
 4833 0a7d D9       		.byte	0xd9
 4834 0a7e 3F070000 		.4byte	0x73f
 4835 0a82 50       		.byte	0x50
 4836 0a83 12       		.uleb128 0x12
 4837 0a84 630B0000 		.4byte	.LASF167
 4838 0a88 0C       		.byte	0xc
 4839 0a89 DC       		.byte	0xdc
 4840 0a8a D20A0000 		.4byte	0xad2
 4841 0a8e 54       		.byte	0x54
 4842 0a8f 12       		.uleb128 0x12
 4843 0a90 830C0000 		.4byte	.LASF168
 4844 0a94 0C       		.byte	0xc
 4845 0a95 E0       		.byte	0xe0
 4846 0a96 BC070000 		.4byte	0x7bc
ARM GAS  /tmp/ccTYR2Ee.s 			page 126


 4847 0a9a 58       		.byte	0x58
 4848 0a9b 12       		.uleb128 0x12
 4849 0a9c C6010000 		.4byte	.LASF169
 4850 0aa0 0C       		.byte	0xc
 4851 0aa1 E2       		.byte	0xe2
 4852 0aa2 B1070000 		.4byte	0x7b1
 4853 0aa6 5C       		.byte	0x5c
 4854 0aa7 12       		.uleb128 0x12
 4855 0aa8 3A100000 		.4byte	.LASF170
 4856 0aac 0C       		.byte	0xc
 4857 0aad E3       		.byte	0xe3
 4858 0aae 25000000 		.4byte	0x25
 4859 0ab2 64       		.byte	0x64
 4860 0ab3 00       		.byte	0
 4861 0ab4 1D       		.uleb128 0x1d
 4862 0ab5 25000000 		.4byte	0x25
 4863 0ab9 D20A0000 		.4byte	0xad2
 4864 0abd 1E       		.uleb128 0x1e
 4865 0abe D20A0000 		.4byte	0xad2
 4866 0ac2 1E       		.uleb128 0x1e
 4867 0ac3 C1000000 		.4byte	0xc1
 4868 0ac7 1E       		.uleb128 0x1e
 4869 0ac8 0F0C0000 		.4byte	0xc0f
 4870 0acc 1E       		.uleb128 0x1e
 4871 0acd 25000000 		.4byte	0x25
 4872 0ad1 00       		.byte	0
 4873 0ad2 1A       		.uleb128 0x1a
 4874 0ad3 04       		.byte	0x4
 4875 0ad4 DD0A0000 		.4byte	0xadd
 4876 0ad8 06       		.uleb128 0x6
 4877 0ad9 D20A0000 		.4byte	0xad2
 4878 0add 1F       		.uleb128 0x1f
 4879 0ade 380F0000 		.4byte	.LASF171
 4880 0ae2 2804     		.2byte	0x428
 4881 0ae4 0C       		.byte	0xc
 4882 0ae5 3802     		.2byte	0x238
 4883 0ae7 0F0C0000 		.4byte	0xc0f
 4884 0aeb 09       		.uleb128 0x9
 4885 0aec 9B010000 		.4byte	.LASF172
 4886 0af0 0C       		.byte	0xc
 4887 0af1 3A02     		.2byte	0x23a
 4888 0af3 25000000 		.4byte	0x25
 4889 0af7 00       		.byte	0
 4890 0af8 09       		.uleb128 0x9
 4891 0af9 21070000 		.4byte	.LASF173
 4892 0afd 0C       		.byte	0xc
 4893 0afe 3F02     		.2byte	0x23f
 4894 0b00 F60C0000 		.4byte	0xcf6
 4895 0b04 04       		.byte	0x4
 4896 0b05 09       		.uleb128 0x9
 4897 0b06 3F020000 		.4byte	.LASF174
 4898 0b0a 0C       		.byte	0xc
 4899 0b0b 3F02     		.2byte	0x23f
 4900 0b0d F60C0000 		.4byte	0xcf6
 4901 0b11 08       		.byte	0x8
 4902 0b12 09       		.uleb128 0x9
 4903 0b13 BA100000 		.4byte	.LASF175
ARM GAS  /tmp/ccTYR2Ee.s 			page 127


 4904 0b17 0C       		.byte	0xc
 4905 0b18 3F02     		.2byte	0x23f
 4906 0b1a F60C0000 		.4byte	0xcf6
 4907 0b1e 0C       		.byte	0xc
 4908 0b1f 09       		.uleb128 0x9
 4909 0b20 32050000 		.4byte	.LASF176
 4910 0b24 0C       		.byte	0xc
 4911 0b25 4102     		.2byte	0x241
 4912 0b27 25000000 		.4byte	0x25
 4913 0b2b 10       		.byte	0x10
 4914 0b2c 09       		.uleb128 0x9
 4915 0b2d 52040000 		.4byte	.LASF177
 4916 0b31 0C       		.byte	0xc
 4917 0b32 4202     		.2byte	0x242
 4918 0b34 D80E0000 		.4byte	0xed8
 4919 0b38 14       		.byte	0x14
 4920 0b39 09       		.uleb128 0x9
 4921 0b3a 690B0000 		.4byte	.LASF178
 4922 0b3e 0C       		.byte	0xc
 4923 0b3f 4402     		.2byte	0x244
 4924 0b41 25000000 		.4byte	0x25
 4925 0b45 30       		.byte	0x30
 4926 0b46 09       		.uleb128 0x9
 4927 0b47 3D0B0000 		.4byte	.LASF179
 4928 0b4b 0C       		.byte	0xc
 4929 0b4c 4502     		.2byte	0x245
 4930 0b4e 450C0000 		.4byte	0xc45
 4931 0b52 34       		.byte	0x34
 4932 0b53 09       		.uleb128 0x9
 4933 0b54 E1060000 		.4byte	.LASF180
 4934 0b58 0C       		.byte	0xc
 4935 0b59 4702     		.2byte	0x247
 4936 0b5b 25000000 		.4byte	0x25
 4937 0b5f 38       		.byte	0x38
 4938 0b60 09       		.uleb128 0x9
 4939 0b61 10080000 		.4byte	.LASF181
 4940 0b65 0C       		.byte	0xc
 4941 0b66 4902     		.2byte	0x249
 4942 0b68 F30E0000 		.4byte	0xef3
 4943 0b6c 3C       		.byte	0x3c
 4944 0b6d 09       		.uleb128 0x9
 4945 0b6e CF020000 		.4byte	.LASF182
 4946 0b72 0C       		.byte	0xc
 4947 0b73 4C02     		.2byte	0x24c
 4948 0b75 25080000 		.4byte	0x825
 4949 0b79 40       		.byte	0x40
 4950 0b7a 09       		.uleb128 0x9
 4951 0b7b B4060000 		.4byte	.LASF183
 4952 0b7f 0C       		.byte	0xc
 4953 0b80 4D02     		.2byte	0x24d
 4954 0b82 25000000 		.4byte	0x25
 4955 0b86 44       		.byte	0x44
 4956 0b87 09       		.uleb128 0x9
 4957 0b88 AD050000 		.4byte	.LASF184
 4958 0b8c 0C       		.byte	0xc
 4959 0b8d 4E02     		.2byte	0x24e
 4960 0b8f 25080000 		.4byte	0x825
ARM GAS  /tmp/ccTYR2Ee.s 			page 128


 4961 0b93 48       		.byte	0x48
 4962 0b94 09       		.uleb128 0x9
 4963 0b95 62070000 		.4byte	.LASF185
 4964 0b99 0C       		.byte	0xc
 4965 0b9a 4F02     		.2byte	0x24f
 4966 0b9c F90E0000 		.4byte	0xef9
 4967 0ba0 4C       		.byte	0x4c
 4968 0ba1 09       		.uleb128 0x9
 4969 0ba2 100C0000 		.4byte	.LASF186
 4970 0ba6 0C       		.byte	0xc
 4971 0ba7 5202     		.2byte	0x252
 4972 0ba9 25000000 		.4byte	0x25
 4973 0bad 50       		.byte	0x50
 4974 0bae 09       		.uleb128 0x9
 4975 0baf 330D0000 		.4byte	.LASF187
 4976 0bb3 0C       		.byte	0xc
 4977 0bb4 5302     		.2byte	0x253
 4978 0bb6 0F0C0000 		.4byte	0xc0f
 4979 0bba 54       		.byte	0x54
 4980 0bbb 09       		.uleb128 0x9
 4981 0bbc 020C0000 		.4byte	.LASF188
 4982 0bc0 0C       		.byte	0xc
 4983 0bc1 7602     		.2byte	0x276
 4984 0bc3 B60E0000 		.4byte	0xeb6
 4985 0bc7 58       		.byte	0x58
 4986 0bc8 0B       		.uleb128 0xb
 4987 0bc9 0F0A0000 		.4byte	.LASF148
 4988 0bcd 0C       		.byte	0xc
 4989 0bce 7A02     		.2byte	0x27a
 4990 0bd0 42090000 		.4byte	0x942
 4991 0bd4 4801     		.2byte	0x148
 4992 0bd6 0B       		.uleb128 0xb
 4993 0bd7 60060000 		.4byte	.LASF189
 4994 0bdb 0C       		.byte	0xc
 4995 0bdc 7B02     		.2byte	0x27b
 4996 0bde 04090000 		.4byte	0x904
 4997 0be2 4C01     		.2byte	0x14c
 4998 0be4 0B       		.uleb128 0xb
 4999 0be5 47060000 		.4byte	.LASF190
 5000 0be9 0C       		.byte	0xc
 5001 0bea 7F02     		.2byte	0x27f
 5002 0bec 0A0F0000 		.4byte	0xf0a
 5003 0bf0 DC02     		.2byte	0x2dc
 5004 0bf2 0B       		.uleb128 0xb
 5005 0bf3 DD0E0000 		.4byte	.LASF191
 5006 0bf7 0C       		.byte	0xc
 5007 0bf8 8402     		.2byte	0x284
 5008 0bfa BB0C0000 		.4byte	0xcbb
 5009 0bfe E002     		.2byte	0x2e0
 5010 0c00 0B       		.uleb128 0xb
 5011 0c01 160B0000 		.4byte	.LASF192
 5012 0c05 0C       		.byte	0xc
 5013 0c06 8502     		.2byte	0x285
 5014 0c08 160F0000 		.4byte	0xf16
 5015 0c0c EC02     		.2byte	0x2ec
 5016 0c0e 00       		.byte	0
 5017 0c0f 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccTYR2Ee.s 			page 129


 5018 0c10 04       		.byte	0x4
 5019 0c11 150C0000 		.4byte	0xc15
 5020 0c15 03       		.uleb128 0x3
 5021 0c16 01       		.byte	0x1
 5022 0c17 08       		.byte	0x8
 5023 0c18 38060000 		.4byte	.LASF193
 5024 0c1c 06       		.uleb128 0x6
 5025 0c1d 150C0000 		.4byte	0xc15
 5026 0c21 1A       		.uleb128 0x1a
 5027 0c22 04       		.byte	0x4
 5028 0c23 B40A0000 		.4byte	0xab4
 5029 0c27 1D       		.uleb128 0x1d
 5030 0c28 25000000 		.4byte	0x25
 5031 0c2c 450C0000 		.4byte	0xc45
 5032 0c30 1E       		.uleb128 0x1e
 5033 0c31 D20A0000 		.4byte	0xad2
 5034 0c35 1E       		.uleb128 0x1e
 5035 0c36 C1000000 		.4byte	0xc1
 5036 0c3a 1E       		.uleb128 0x1e
 5037 0c3b 450C0000 		.4byte	0xc45
 5038 0c3f 1E       		.uleb128 0x1e
 5039 0c40 25000000 		.4byte	0x25
 5040 0c44 00       		.byte	0
 5041 0c45 1A       		.uleb128 0x1a
 5042 0c46 04       		.byte	0x4
 5043 0c47 1C0C0000 		.4byte	0xc1c
 5044 0c4b 1A       		.uleb128 0x1a
 5045 0c4c 04       		.byte	0x4
 5046 0c4d 270C0000 		.4byte	0xc27
 5047 0c51 1D       		.uleb128 0x1d
 5048 0c52 4A070000 		.4byte	0x74a
 5049 0c56 6F0C0000 		.4byte	0xc6f
 5050 0c5a 1E       		.uleb128 0x1e
 5051 0c5b D20A0000 		.4byte	0xad2
 5052 0c5f 1E       		.uleb128 0x1e
 5053 0c60 C1000000 		.4byte	0xc1
 5054 0c64 1E       		.uleb128 0x1e
 5055 0c65 4A070000 		.4byte	0x74a
 5056 0c69 1E       		.uleb128 0x1e
 5057 0c6a 25000000 		.4byte	0x25
 5058 0c6e 00       		.byte	0
 5059 0c6f 1A       		.uleb128 0x1a
 5060 0c70 04       		.byte	0x4
 5061 0c71 510C0000 		.4byte	0xc51
 5062 0c75 1D       		.uleb128 0x1d
 5063 0c76 25000000 		.4byte	0x25
 5064 0c7a 890C0000 		.4byte	0xc89
 5065 0c7e 1E       		.uleb128 0x1e
 5066 0c7f D20A0000 		.4byte	0xad2
 5067 0c83 1E       		.uleb128 0x1e
 5068 0c84 C1000000 		.4byte	0xc1
 5069 0c88 00       		.byte	0
 5070 0c89 1A       		.uleb128 0x1a
 5071 0c8a 04       		.byte	0x4
 5072 0c8b 750C0000 		.4byte	0xc75
 5073 0c8f 0C       		.uleb128 0xc
 5074 0c90 45000000 		.4byte	0x45
ARM GAS  /tmp/ccTYR2Ee.s 			page 130


 5075 0c94 9F0C0000 		.4byte	0xc9f
 5076 0c98 0D       		.uleb128 0xd
 5077 0c99 C3000000 		.4byte	0xc3
 5078 0c9d 02       		.byte	0x2
 5079 0c9e 00       		.byte	0
 5080 0c9f 0C       		.uleb128 0xc
 5081 0ca0 45000000 		.4byte	0x45
 5082 0ca4 AF0C0000 		.4byte	0xcaf
 5083 0ca8 0D       		.uleb128 0xd
 5084 0ca9 C3000000 		.4byte	0xc3
 5085 0cad 00       		.byte	0
 5086 0cae 00       		.byte	0
 5087 0caf 0E       		.uleb128 0xe
 5088 0cb0 27040000 		.4byte	.LASF194
 5089 0cb4 0C       		.byte	0xc
 5090 0cb5 1D01     		.2byte	0x11d
 5091 0cb7 8A090000 		.4byte	0x98a
 5092 0cbb 20       		.uleb128 0x20
 5093 0cbc 820E0000 		.4byte	.LASF195
 5094 0cc0 0C       		.byte	0xc
 5095 0cc1 0C       		.byte	0xc
 5096 0cc2 2101     		.2byte	0x121
 5097 0cc4 F00C0000 		.4byte	0xcf0
 5098 0cc8 09       		.uleb128 0x9
 5099 0cc9 60050000 		.4byte	.LASF128
 5100 0ccd 0C       		.byte	0xc
 5101 0cce 2301     		.2byte	0x123
 5102 0cd0 F00C0000 		.4byte	0xcf0
 5103 0cd4 00       		.byte	0
 5104 0cd5 09       		.uleb128 0x9
 5105 0cd6 B50D0000 		.4byte	.LASF196
 5106 0cda 0C       		.byte	0xc
 5107 0cdb 2401     		.2byte	0x124
 5108 0cdd 25000000 		.4byte	0x25
 5109 0ce1 04       		.byte	0x4
 5110 0ce2 09       		.uleb128 0x9
 5111 0ce3 C4060000 		.4byte	.LASF197
 5112 0ce7 0C       		.byte	0xc
 5113 0ce8 2501     		.2byte	0x125
 5114 0cea F60C0000 		.4byte	0xcf6
 5115 0cee 08       		.byte	0x8
 5116 0cef 00       		.byte	0
 5117 0cf0 1A       		.uleb128 0x1a
 5118 0cf1 04       		.byte	0x4
 5119 0cf2 BB0C0000 		.4byte	0xcbb
 5120 0cf6 1A       		.uleb128 0x1a
 5121 0cf7 04       		.byte	0x4
 5122 0cf8 AF0C0000 		.4byte	0xcaf
 5123 0cfc 20       		.uleb128 0x20
 5124 0cfd E9030000 		.4byte	.LASF198
 5125 0d01 0E       		.byte	0xe
 5126 0d02 0C       		.byte	0xc
 5127 0d03 3D01     		.2byte	0x13d
 5128 0d05 310D0000 		.4byte	0xd31
 5129 0d09 09       		.uleb128 0x9
 5130 0d0a 51100000 		.4byte	.LASF199
 5131 0d0e 0C       		.byte	0xc
ARM GAS  /tmp/ccTYR2Ee.s 			page 131


 5132 0d0f 3E01     		.2byte	0x13e
 5133 0d11 310D0000 		.4byte	0xd31
 5134 0d15 00       		.byte	0
 5135 0d16 09       		.uleb128 0x9
 5136 0d17 6C070000 		.4byte	.LASF200
 5137 0d1b 0C       		.byte	0xc
 5138 0d1c 3F01     		.2byte	0x13f
 5139 0d1e 310D0000 		.4byte	0xd31
 5140 0d22 06       		.byte	0x6
 5141 0d23 09       		.uleb128 0x9
 5142 0d24 7A070000 		.4byte	.LASF201
 5143 0d28 0C       		.byte	0xc
 5144 0d29 4001     		.2byte	0x140
 5145 0d2b 53000000 		.4byte	0x53
 5146 0d2f 0C       		.byte	0xc
 5147 0d30 00       		.byte	0
 5148 0d31 0C       		.uleb128 0xc
 5149 0d32 53000000 		.4byte	0x53
 5150 0d36 410D0000 		.4byte	0xd41
 5151 0d3a 0D       		.uleb128 0xd
 5152 0d3b C3000000 		.4byte	0xc3
 5153 0d3f 02       		.byte	0x2
 5154 0d40 00       		.byte	0
 5155 0d41 21       		.uleb128 0x21
 5156 0d42 D0       		.byte	0xd0
 5157 0d43 0C       		.byte	0xc
 5158 0d44 5702     		.2byte	0x257
 5159 0d46 420E0000 		.4byte	0xe42
 5160 0d4a 09       		.uleb128 0x9
 5161 0d4b F30F0000 		.4byte	.LASF202
 5162 0d4f 0C       		.byte	0xc
 5163 0d50 5902     		.2byte	0x259
 5164 0d52 2C000000 		.4byte	0x2c
 5165 0d56 00       		.byte	0
 5166 0d57 09       		.uleb128 0x9
 5167 0d58 FB0E0000 		.4byte	.LASF203
 5168 0d5c 0C       		.byte	0xc
 5169 0d5d 5A02     		.2byte	0x25a
 5170 0d5f 0F0C0000 		.4byte	0xc0f
 5171 0d63 04       		.byte	0x4
 5172 0d64 09       		.uleb128 0x9
 5173 0d65 DC030000 		.4byte	.LASF204
 5174 0d69 0C       		.byte	0xc
 5175 0d6a 5B02     		.2byte	0x25b
 5176 0d6c 420E0000 		.4byte	0xe42
 5177 0d70 08       		.byte	0x8
 5178 0d71 09       		.uleb128 0x9
 5179 0d72 DC0B0000 		.4byte	.LASF205
 5180 0d76 0C       		.byte	0xc
 5181 0d77 5C02     		.2byte	0x25c
 5182 0d79 3B080000 		.4byte	0x83b
 5183 0d7d 24       		.byte	0x24
 5184 0d7e 09       		.uleb128 0x9
 5185 0d7f 28070000 		.4byte	.LASF206
 5186 0d83 0C       		.byte	0xc
 5187 0d84 5D02     		.2byte	0x25d
 5188 0d86 25000000 		.4byte	0x25
ARM GAS  /tmp/ccTYR2Ee.s 			page 132


 5189 0d8a 48       		.byte	0x48
 5190 0d8b 09       		.uleb128 0x9
 5191 0d8c FE090000 		.4byte	.LASF207
 5192 0d90 0C       		.byte	0xc
 5193 0d91 5E02     		.2byte	0x25e
 5194 0d93 85000000 		.4byte	0x85
 5195 0d97 50       		.byte	0x50
 5196 0d98 09       		.uleb128 0x9
 5197 0d99 CF000000 		.4byte	.LASF208
 5198 0d9d 0C       		.byte	0xc
 5199 0d9e 5F02     		.2byte	0x25f
 5200 0da0 FC0C0000 		.4byte	0xcfc
 5201 0da4 58       		.byte	0x58
 5202 0da5 09       		.uleb128 0x9
 5203 0da6 11060000 		.4byte	.LASF209
 5204 0daa 0C       		.byte	0xc
 5205 0dab 6002     		.2byte	0x260
 5206 0dad B1070000 		.4byte	0x7b1
 5207 0db1 68       		.byte	0x68
 5208 0db2 09       		.uleb128 0x9
 5209 0db3 080F0000 		.4byte	.LASF210
 5210 0db7 0C       		.byte	0xc
 5211 0db8 6102     		.2byte	0x261
 5212 0dba B1070000 		.4byte	0x7b1
 5213 0dbe 70       		.byte	0x70
 5214 0dbf 09       		.uleb128 0x9
 5215 0dc0 8E000000 		.4byte	.LASF211
 5216 0dc4 0C       		.byte	0xc
 5217 0dc5 6202     		.2byte	0x262
 5218 0dc7 B1070000 		.4byte	0x7b1
 5219 0dcb 78       		.byte	0x78
 5220 0dcc 09       		.uleb128 0x9
 5221 0dcd 200C0000 		.4byte	.LASF212
 5222 0dd1 0C       		.byte	0xc
 5223 0dd2 6302     		.2byte	0x263
 5224 0dd4 520E0000 		.4byte	0xe52
 5225 0dd8 80       		.byte	0x80
 5226 0dd9 09       		.uleb128 0x9
 5227 0dda D4000000 		.4byte	.LASF213
 5228 0dde 0C       		.byte	0xc
 5229 0ddf 6402     		.2byte	0x264
 5230 0de1 620E0000 		.4byte	0xe62
 5231 0de5 88       		.byte	0x88
 5232 0de6 09       		.uleb128 0x9
 5233 0de7 E50E0000 		.4byte	.LASF214
 5234 0deb 0C       		.byte	0xc
 5235 0dec 6502     		.2byte	0x265
 5236 0dee 25000000 		.4byte	0x25
 5237 0df2 A0       		.byte	0xa0
 5238 0df3 09       		.uleb128 0x9
 5239 0df4 FD010000 		.4byte	.LASF215
 5240 0df8 0C       		.byte	0xc
 5241 0df9 6602     		.2byte	0x266
 5242 0dfb B1070000 		.4byte	0x7b1
 5243 0dff A4       		.byte	0xa4
 5244 0e00 09       		.uleb128 0x9
 5245 0e01 51060000 		.4byte	.LASF216
ARM GAS  /tmp/ccTYR2Ee.s 			page 133


 5246 0e05 0C       		.byte	0xc
 5247 0e06 6702     		.2byte	0x267
 5248 0e08 B1070000 		.4byte	0x7b1
 5249 0e0c AC       		.byte	0xac
 5250 0e0d 09       		.uleb128 0x9
 5251 0e0e 6E030000 		.4byte	.LASF217
 5252 0e12 0C       		.byte	0xc
 5253 0e13 6802     		.2byte	0x268
 5254 0e15 B1070000 		.4byte	0x7b1
 5255 0e19 B4       		.byte	0xb4
 5256 0e1a 09       		.uleb128 0x9
 5257 0e1b 9D070000 		.4byte	.LASF218
 5258 0e1f 0C       		.byte	0xc
 5259 0e20 6902     		.2byte	0x269
 5260 0e22 B1070000 		.4byte	0x7b1
 5261 0e26 BC       		.byte	0xbc
 5262 0e27 09       		.uleb128 0x9
 5263 0e28 A9080000 		.4byte	.LASF219
 5264 0e2c 0C       		.byte	0xc
 5265 0e2d 6A02     		.2byte	0x26a
 5266 0e2f B1070000 		.4byte	0x7b1
 5267 0e33 C4       		.byte	0xc4
 5268 0e34 09       		.uleb128 0x9
 5269 0e35 16100000 		.4byte	.LASF220
 5270 0e39 0C       		.byte	0xc
 5271 0e3a 6B02     		.2byte	0x26b
 5272 0e3c 25000000 		.4byte	0x25
 5273 0e40 CC       		.byte	0xcc
 5274 0e41 00       		.byte	0
 5275 0e42 0C       		.uleb128 0xc
 5276 0e43 150C0000 		.4byte	0xc15
 5277 0e47 520E0000 		.4byte	0xe52
 5278 0e4b 0D       		.uleb128 0xd
 5279 0e4c C3000000 		.4byte	0xc3
 5280 0e50 19       		.byte	0x19
 5281 0e51 00       		.byte	0
 5282 0e52 0C       		.uleb128 0xc
 5283 0e53 150C0000 		.4byte	0xc15
 5284 0e57 620E0000 		.4byte	0xe62
 5285 0e5b 0D       		.uleb128 0xd
 5286 0e5c C3000000 		.4byte	0xc3
 5287 0e60 07       		.byte	0x7
 5288 0e61 00       		.byte	0
 5289 0e62 0C       		.uleb128 0xc
 5290 0e63 150C0000 		.4byte	0xc15
 5291 0e67 720E0000 		.4byte	0xe72
 5292 0e6b 0D       		.uleb128 0xd
 5293 0e6c C3000000 		.4byte	0xc3
 5294 0e70 17       		.byte	0x17
 5295 0e71 00       		.byte	0
 5296 0e72 21       		.uleb128 0x21
 5297 0e73 F0       		.byte	0xf0
 5298 0e74 0C       		.byte	0xc
 5299 0e75 7002     		.2byte	0x270
 5300 0e77 960E0000 		.4byte	0xe96
 5301 0e7b 09       		.uleb128 0x9
 5302 0e7c 43030000 		.4byte	.LASF221
ARM GAS  /tmp/ccTYR2Ee.s 			page 134


 5303 0e80 0C       		.byte	0xc
 5304 0e81 7302     		.2byte	0x273
 5305 0e83 960E0000 		.4byte	0xe96
 5306 0e87 00       		.byte	0
 5307 0e88 09       		.uleb128 0x9
 5308 0e89 C2100000 		.4byte	.LASF222
 5309 0e8d 0C       		.byte	0xc
 5310 0e8e 7402     		.2byte	0x274
 5311 0e90 A60E0000 		.4byte	0xea6
 5312 0e94 78       		.byte	0x78
 5313 0e95 00       		.byte	0
 5314 0e96 0C       		.uleb128 0xc
 5315 0e97 84090000 		.4byte	0x984
 5316 0e9b A60E0000 		.4byte	0xea6
 5317 0e9f 0D       		.uleb128 0xd
 5318 0ea0 C3000000 		.4byte	0xc3
 5319 0ea4 1D       		.byte	0x1d
 5320 0ea5 00       		.byte	0
 5321 0ea6 0C       		.uleb128 0xc
 5322 0ea7 2C000000 		.4byte	0x2c
 5323 0eab B60E0000 		.4byte	0xeb6
 5324 0eaf 0D       		.uleb128 0xd
 5325 0eb0 C3000000 		.4byte	0xc3
 5326 0eb4 1D       		.byte	0x1d
 5327 0eb5 00       		.byte	0
 5328 0eb6 22       		.uleb128 0x22
 5329 0eb7 F0       		.byte	0xf0
 5330 0eb8 0C       		.byte	0xc
 5331 0eb9 5502     		.2byte	0x255
 5332 0ebb D80E0000 		.4byte	0xed8
 5333 0ebf 23       		.uleb128 0x23
 5334 0ec0 380F0000 		.4byte	.LASF171
 5335 0ec4 0C       		.byte	0xc
 5336 0ec5 6C02     		.2byte	0x26c
 5337 0ec7 410D0000 		.4byte	0xd41
 5338 0ecb 23       		.uleb128 0x23
 5339 0ecc F00B0000 		.4byte	.LASF223
 5340 0ed0 0C       		.byte	0xc
 5341 0ed1 7502     		.2byte	0x275
 5342 0ed3 720E0000 		.4byte	0xe72
 5343 0ed7 00       		.byte	0
 5344 0ed8 0C       		.uleb128 0xc
 5345 0ed9 150C0000 		.4byte	0xc15
 5346 0edd E80E0000 		.4byte	0xee8
 5347 0ee1 0D       		.uleb128 0xd
 5348 0ee2 C3000000 		.4byte	0xc3
 5349 0ee6 18       		.byte	0x18
 5350 0ee7 00       		.byte	0
 5351 0ee8 24       		.uleb128 0x24
 5352 0ee9 F30E0000 		.4byte	0xef3
 5353 0eed 1E       		.uleb128 0x1e
 5354 0eee D20A0000 		.4byte	0xad2
 5355 0ef2 00       		.byte	0
 5356 0ef3 1A       		.uleb128 0x1a
 5357 0ef4 04       		.byte	0x4
 5358 0ef5 E80E0000 		.4byte	0xee8
 5359 0ef9 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccTYR2Ee.s 			page 135


 5360 0efa 04       		.byte	0x4
 5361 0efb 25080000 		.4byte	0x825
 5362 0eff 24       		.uleb128 0x24
 5363 0f00 0A0F0000 		.4byte	0xf0a
 5364 0f04 1E       		.uleb128 0x1e
 5365 0f05 25000000 		.4byte	0x25
 5366 0f09 00       		.byte	0
 5367 0f0a 1A       		.uleb128 0x1a
 5368 0f0b 04       		.byte	0x4
 5369 0f0c 100F0000 		.4byte	0xf10
 5370 0f10 1A       		.uleb128 0x1a
 5371 0f11 04       		.byte	0x4
 5372 0f12 FF0E0000 		.4byte	0xeff
 5373 0f16 0C       		.uleb128 0xc
 5374 0f17 AF0C0000 		.4byte	0xcaf
 5375 0f1b 260F0000 		.4byte	0xf26
 5376 0f1f 0D       		.uleb128 0xd
 5377 0f20 C3000000 		.4byte	0xc3
 5378 0f24 02       		.byte	0x2
 5379 0f25 00       		.byte	0
 5380 0f26 0F       		.uleb128 0xf
 5381 0f27 37030000 		.4byte	.LASF224
 5382 0f2b 0C       		.byte	0xc
 5383 0f2c FD02     		.2byte	0x2fd
 5384 0f2e D20A0000 		.4byte	0xad2
 5385 0f32 0F       		.uleb128 0xf
 5386 0f33 820B0000 		.4byte	.LASF225
 5387 0f37 0C       		.byte	0xc
 5388 0f38 FE02     		.2byte	0x2fe
 5389 0f3a D80A0000 		.4byte	0xad8
 5390 0f3e 10       		.uleb128 0x10
 5391 0f3f 5F0D0000 		.4byte	.LASF226
 5392 0f43 0D       		.byte	0xd
 5393 0f44 5F       		.byte	0x5f
 5394 0f45 0F0C0000 		.4byte	0xc0f
 5395 0f49 10       		.uleb128 0x10
 5396 0f4a 86020000 		.4byte	.LASF227
 5397 0f4e 0E       		.byte	0xe
 5398 0f4f 8F       		.byte	0x8f
 5399 0f50 5B0F0000 		.4byte	0xf5b
 5400 0f54 03       		.uleb128 0x3
 5401 0f55 01       		.byte	0x1
 5402 0f56 02       		.byte	0x2
 5403 0f57 37050000 		.4byte	.LASF228
 5404 0f5b 05       		.uleb128 0x5
 5405 0f5c 540F0000 		.4byte	0xf54
 5406 0f60 25       		.uleb128 0x25
 5407 0f61 BD0C0000 		.4byte	.LASF229
 5408 0f65 0E       		.byte	0xe
 5409 0f66 94       		.byte	0x94
 5410 0f67 B7000000 		.4byte	0xb7
 5411 0f6b 05       		.uleb128 0x5
 5412 0f6c 03       		.byte	0x3
 5413 0f6d 00000000 		.4byte	cpu_irq_critical_section_counter
 5414 0f71 25       		.uleb128 0x25
 5415 0f72 AC040000 		.4byte	.LASF230
 5416 0f76 0E       		.byte	0xe
ARM GAS  /tmp/ccTYR2Ee.s 			page 136


 5417 0f77 95       		.byte	0x95
 5418 0f78 5B0F0000 		.4byte	0xf5b
 5419 0f7c 05       		.uleb128 0x5
 5420 0f7d 03       		.byte	0x3
 5421 0f7e 00000000 		.4byte	cpu_irq_prev_interrupt_state
 5422 0f82 03       		.uleb128 0x3
 5423 0f83 04       		.byte	0x4
 5424 0f84 04       		.byte	0x4
 5425 0f85 28030000 		.4byte	.LASF231
 5426 0f89 03       		.uleb128 0x3
 5427 0f8a 08       		.byte	0x8
 5428 0f8b 04       		.byte	0x4
 5429 0f8c B30F0000 		.4byte	.LASF232
 5430 0f90 26       		.uleb128 0x26
 5431 0f91 4D0B0000 		.4byte	.LASF237
 5432 0f95 01       		.byte	0x1
 5433 0f96 4405     		.2byte	0x544
 5434 0f98 AC000000 		.4byte	0xac
 5435 0f9c 27       		.uleb128 0x27
 5436 0f9d 09030000 		.4byte	.LASF233
 5437 0fa1 01       		.byte	0x1
 5438 0fa2 6D06     		.2byte	0x66d
 5439 0fa4 AC000000 		.4byte	0xac
 5440 0fa8 01       		.byte	0x1
 5441 0fa9 28       		.uleb128 0x28
 5442 0faa 19090000 		.4byte	.LASF235
 5443 0fae 01       		.byte	0x1
 5444 0faf 6306     		.2byte	0x663
 5445 0fb1 AC000000 		.4byte	0xac
 5446 0fb5 00000000 		.4byte	.LFB211
 5447 0fb9 0C000000 		.4byte	.LFE211-.LFB211
 5448 0fbd 01       		.uleb128 0x1
 5449 0fbe 9C       		.byte	0x9c
 5450 0fbf 27       		.uleb128 0x27
 5451 0fc0 F2020000 		.4byte	.LASF234
 5452 0fc4 01       		.byte	0x1
 5453 0fc5 5606     		.2byte	0x656
 5454 0fc7 AC000000 		.4byte	0xac
 5455 0fcb 01       		.byte	0x1
 5456 0fcc 28       		.uleb128 0x28
 5457 0fcd FC080000 		.4byte	.LASF236
 5458 0fd1 01       		.byte	0x1
 5459 0fd2 4C06     		.2byte	0x64c
 5460 0fd4 AC000000 		.4byte	0xac
 5461 0fd8 00000000 		.4byte	.LFB209
 5462 0fdc 0C000000 		.4byte	.LFE209-.LFB209
 5463 0fe0 01       		.uleb128 0x1
 5464 0fe1 9C       		.byte	0x9c
 5465 0fe2 29       		.uleb128 0x29
 5466 0fe3 810D0000 		.4byte	.LASF332
 5467 0fe7 01       		.byte	0x1
 5468 0fe8 3106     		.2byte	0x631
 5469 0fea AC000000 		.4byte	0xac
 5470 0fee 01       		.byte	0x1
 5471 0fef 00100000 		.4byte	0x1000
 5472 0ff3 2A       		.uleb128 0x2a
 5473 0ff4 71000000 		.4byte	.LASF240
ARM GAS  /tmp/ccTYR2Ee.s 			page 137


 5474 0ff8 01       		.byte	0x1
 5475 0ff9 3106     		.2byte	0x631
 5476 0ffb AC000000 		.4byte	0xac
 5477 0fff 00       		.byte	0
 5478 1000 2B       		.uleb128 0x2b
 5479 1001 F1070000 		.4byte	.LASF268
 5480 1005 01       		.byte	0x1
 5481 1006 FE05     		.2byte	0x5fe
 5482 1008 AC000000 		.4byte	0xac
 5483 100c 00000000 		.4byte	.LFB207
 5484 1010 78000000 		.4byte	.LFE207-.LFB207
 5485 1014 01       		.uleb128 0x1
 5486 1015 9C       		.byte	0x9c
 5487 1016 AF100000 		.4byte	0x10af
 5488 101a 2C       		.uleb128 0x2c
 5489 101b 71000000 		.4byte	.LASF240
 5490 101f 01       		.byte	0x1
 5491 1020 FE05     		.2byte	0x5fe
 5492 1022 AC000000 		.4byte	0xac
 5493 1026 00000000 		.4byte	.LLST55
 5494 102a 26       		.uleb128 0x26
 5495 102b 210B0000 		.4byte	.LASF238
 5496 102f 01       		.byte	0x1
 5497 1030 0006     		.2byte	0x600
 5498 1032 AC000000 		.4byte	0xac
 5499 1036 2D       		.uleb128 0x2d
 5500 1037 BF0F0000 		.4byte	0xfbf
 5501 103b 06000000 		.4byte	.LBB60
 5502 103f 20000000 		.4byte	.Ldebug_ranges0+0x20
 5503 1043 01       		.byte	0x1
 5504 1044 0606     		.2byte	0x606
 5505 1046 2E       		.uleb128 0x2e
 5506 1047 BF0F0000 		.4byte	0xfbf
 5507 104b 1A000000 		.4byte	.LBB64
 5508 104f 04000000 		.4byte	.LBE64-.LBB64
 5509 1053 01       		.byte	0x1
 5510 1054 0B06     		.2byte	0x60b
 5511 1056 2F       		.uleb128 0x2f
 5512 1057 E20F0000 		.4byte	0xfe2
 5513 105b 22000000 		.4byte	.LBB66
 5514 105f 04000000 		.4byte	.LBE66-.LBB66
 5515 1063 01       		.byte	0x1
 5516 1064 0D06     		.2byte	0x60d
 5517 1066 74100000 		.4byte	0x1074
 5518 106a 30       		.uleb128 0x30
 5519 106b F30F0000 		.4byte	0xff3
 5520 106f A9000000 		.4byte	.LLST56
 5521 1073 00       		.byte	0
 5522 1074 2D       		.uleb128 0x2d
 5523 1075 9C0F0000 		.4byte	0xf9c
 5524 1079 36000000 		.4byte	.LBB68
 5525 107d 38000000 		.4byte	.Ldebug_ranges0+0x38
 5526 1081 01       		.byte	0x1
 5527 1082 1506     		.2byte	0x615
 5528 1084 2E       		.uleb128 0x2e
 5529 1085 9C0F0000 		.4byte	0xf9c
 5530 1089 48000000 		.4byte	.LBB72
ARM GAS  /tmp/ccTYR2Ee.s 			page 138


 5531 108d 04000000 		.4byte	.LBE72-.LBB72
 5532 1091 01       		.byte	0x1
 5533 1092 1A06     		.2byte	0x61a
 5534 1094 31       		.uleb128 0x31
 5535 1095 E20F0000 		.4byte	0xfe2
 5536 1099 50000000 		.4byte	.LBB74
 5537 109d 50000000 		.4byte	.Ldebug_ranges0+0x50
 5538 10a1 01       		.byte	0x1
 5539 10a2 1C06     		.2byte	0x61c
 5540 10a4 30       		.uleb128 0x30
 5541 10a5 F30F0000 		.4byte	0xff3
 5542 10a9 BF000000 		.4byte	.LLST57
 5543 10ad 00       		.byte	0
 5544 10ae 00       		.byte	0
 5545 10af 28       		.uleb128 0x28
 5546 10b0 B10B0000 		.4byte	.LASF239
 5547 10b4 01       		.byte	0x1
 5548 10b5 EE05     		.2byte	0x5ee
 5549 10b7 AC000000 		.4byte	0xac
 5550 10bb 00000000 		.4byte	.LFB206
 5551 10bf 0C000000 		.4byte	.LFE206-.LFB206
 5552 10c3 01       		.uleb128 0x1
 5553 10c4 9C       		.byte	0x9c
 5554 10c5 32       		.uleb128 0x32
 5555 10c6 86010000 		.4byte	.LASF242
 5556 10ca 01       		.byte	0x1
 5557 10cb E005     		.2byte	0x5e0
 5558 10cd 00000000 		.4byte	.LFB205
 5559 10d1 20000000 		.4byte	.LFE205-.LFB205
 5560 10d5 01       		.uleb128 0x1
 5561 10d6 9C       		.byte	0x9c
 5562 10d7 EA100000 		.4byte	0x10ea
 5563 10db 33       		.uleb128 0x33
 5564 10dc 52090000 		.4byte	.LASF241
 5565 10e0 01       		.byte	0x1
 5566 10e1 E005     		.2byte	0x5e0
 5567 10e3 AC000000 		.4byte	0xac
 5568 10e7 01       		.uleb128 0x1
 5569 10e8 50       		.byte	0x50
 5570 10e9 00       		.byte	0
 5571 10ea 32       		.uleb128 0x32
 5572 10eb 7C090000 		.4byte	.LASF243
 5573 10ef 01       		.byte	0x1
 5574 10f0 D305     		.2byte	0x5d3
 5575 10f2 00000000 		.4byte	.LFB204
 5576 10f6 14000000 		.4byte	.LFE204-.LFB204
 5577 10fa 01       		.uleb128 0x1
 5578 10fb 9C       		.byte	0x9c
 5579 10fc 11110000 		.4byte	0x1111
 5580 1100 34       		.uleb128 0x34
 5581 1101 29060000 		.4byte	.LASF244
 5582 1105 01       		.byte	0x1
 5583 1106 D505     		.2byte	0x5d5
 5584 1108 AC000000 		.4byte	0xac
 5585 110c E1000000 		.4byte	.LLST54
 5586 1110 00       		.byte	0
 5587 1111 32       		.uleb128 0x32
ARM GAS  /tmp/ccTYR2Ee.s 			page 139


 5588 1112 4A0A0000 		.4byte	.LASF245
 5589 1116 01       		.byte	0x1
 5590 1117 C905     		.2byte	0x5c9
 5591 1119 00000000 		.4byte	.LFB203
 5592 111d 14000000 		.4byte	.LFE203-.LFB203
 5593 1121 01       		.uleb128 0x1
 5594 1122 9C       		.byte	0x9c
 5595 1123 36110000 		.4byte	0x1136
 5596 1127 35       		.uleb128 0x35
 5597 1128 29060000 		.4byte	.LASF244
 5598 112c 01       		.byte	0x1
 5599 112d CB05     		.2byte	0x5cb
 5600 112f AC000000 		.4byte	0xac
 5601 1133 01       		.uleb128 0x1
 5602 1134 51       		.byte	0x51
 5603 1135 00       		.byte	0
 5604 1136 32       		.uleb128 0x32
 5605 1137 5D040000 		.4byte	.LASF246
 5606 113b 01       		.byte	0x1
 5607 113c BE05     		.2byte	0x5be
 5608 113e 00000000 		.4byte	.LFB202
 5609 1142 14000000 		.4byte	.LFE202-.LFB202
 5610 1146 01       		.uleb128 0x1
 5611 1147 9C       		.byte	0x9c
 5612 1148 5D110000 		.4byte	0x115d
 5613 114c 34       		.uleb128 0x34
 5614 114d 29060000 		.4byte	.LASF244
 5615 1151 01       		.byte	0x1
 5616 1152 C005     		.2byte	0x5c0
 5617 1154 AC000000 		.4byte	0xac
 5618 1158 07010000 		.4byte	.LLST53
 5619 115c 00       		.byte	0
 5620 115d 32       		.uleb128 0x32
 5621 115e 98100000 		.4byte	.LASF247
 5622 1162 01       		.byte	0x1
 5623 1163 B405     		.2byte	0x5b4
 5624 1165 00000000 		.4byte	.LFB201
 5625 1169 14000000 		.4byte	.LFE201-.LFB201
 5626 116d 01       		.uleb128 0x1
 5627 116e 9C       		.byte	0x9c
 5628 116f 82110000 		.4byte	0x1182
 5629 1173 35       		.uleb128 0x35
 5630 1174 29060000 		.4byte	.LASF244
 5631 1178 01       		.byte	0x1
 5632 1179 B605     		.2byte	0x5b6
 5633 117b AC000000 		.4byte	0xac
 5634 117f 01       		.uleb128 0x1
 5635 1180 51       		.byte	0x51
 5636 1181 00       		.byte	0
 5637 1182 32       		.uleb128 0x32
 5638 1183 C50A0000 		.4byte	.LASF248
 5639 1187 01       		.byte	0x1
 5640 1188 9B05     		.2byte	0x59b
 5641 118a 00000000 		.4byte	.LFB200
 5642 118e 28000000 		.4byte	.LFE200-.LFB200
 5643 1192 01       		.uleb128 0x1
 5644 1193 9C       		.byte	0x9c
ARM GAS  /tmp/ccTYR2Ee.s 			page 140


 5645 1194 D7110000 		.4byte	0x11d7
 5646 1198 35       		.uleb128 0x35
 5647 1199 1E0D0000 		.4byte	.LASF249
 5648 119d 01       		.byte	0x1
 5649 119e A505     		.2byte	0x5a5
 5650 11a0 AC000000 		.4byte	0xac
 5651 11a4 01       		.uleb128 0x1
 5652 11a5 53       		.byte	0x53
 5653 11a6 2E       		.uleb128 0x2e
 5654 11a7 DE1A0000 		.4byte	0x1ade
 5655 11ab 12000000 		.4byte	.LBB40
 5656 11af 04000000 		.4byte	.LBE40-.LBB40
 5657 11b3 01       		.byte	0x1
 5658 11b4 A705     		.2byte	0x5a7
 5659 11b6 2E       		.uleb128 0x2e
 5660 11b7 E71A0000 		.4byte	0x1ae7
 5661 11bb 16000000 		.4byte	.LBB42
 5662 11bf 02000000 		.4byte	.LBE42-.LBB42
 5663 11c3 01       		.byte	0x1
 5664 11c4 A805     		.2byte	0x5a8
 5665 11c6 2E       		.uleb128 0x2e
 5666 11c7 F01A0000 		.4byte	0x1af0
 5667 11cb 18000000 		.4byte	.LBB44
 5668 11cf 10000000 		.4byte	.LBE44-.LBB44
 5669 11d3 01       		.byte	0x1
 5670 11d4 A905     		.2byte	0x5a9
 5671 11d6 00       		.byte	0
 5672 11d7 32       		.uleb128 0x32
 5673 11d8 CB100000 		.4byte	.LASF250
 5674 11dc 01       		.byte	0x1
 5675 11dd 5805     		.2byte	0x558
 5676 11df 00000000 		.4byte	.LFB199
 5677 11e3 48000000 		.4byte	.LFE199-.LFB199
 5678 11e7 01       		.uleb128 0x1
 5679 11e8 9C       		.byte	0x9c
 5680 11e9 0C120000 		.4byte	0x120c
 5681 11ed 36       		.uleb128 0x36
 5682 11ee 6900     		.ascii	"i\000"
 5683 11f0 01       		.byte	0x1
 5684 11f1 5A05     		.2byte	0x55a
 5685 11f3 AC000000 		.4byte	0xac
 5686 11f7 2D010000 		.4byte	.LLST52
 5687 11fb 2E       		.uleb128 0x2e
 5688 11fc F91A0000 		.4byte	0x1af9
 5689 1200 22000000 		.4byte	.LBB38
 5690 1204 02000000 		.4byte	.LBE38-.LBB38
 5691 1208 01       		.byte	0x1
 5692 1209 7005     		.2byte	0x570
 5693 120b 00       		.byte	0
 5694 120c 32       		.uleb128 0x32
 5695 120d E1080000 		.4byte	.LASF251
 5696 1211 01       		.byte	0x1
 5697 1212 4B05     		.2byte	0x54b
 5698 1214 00000000 		.4byte	.LFB198
 5699 1218 02000000 		.4byte	.LFE198-.LFB198
 5700 121c 01       		.uleb128 0x1
 5701 121d 9C       		.byte	0x9c
ARM GAS  /tmp/ccTYR2Ee.s 			page 141


 5702 121e 31120000 		.4byte	0x1231
 5703 1222 33       		.uleb128 0x33
 5704 1223 E7100000 		.4byte	.LASF252
 5705 1227 01       		.byte	0x1
 5706 1228 4B05     		.2byte	0x54b
 5707 122a AC000000 		.4byte	0xac
 5708 122e 01       		.uleb128 0x1
 5709 122f 50       		.byte	0x50
 5710 1230 00       		.byte	0
 5711 1231 32       		.uleb128 0x32
 5712 1232 6E0F0000 		.4byte	.LASF253
 5713 1236 01       		.byte	0x1
 5714 1237 2D05     		.2byte	0x52d
 5715 1239 00000000 		.4byte	.LFB197
 5716 123d 18000000 		.4byte	.LFE197-.LFB197
 5717 1241 01       		.uleb128 0x1
 5718 1242 9C       		.byte	0x9c
 5719 1243 76120000 		.4byte	0x1276
 5720 1247 33       		.uleb128 0x33
 5721 1248 D50F0000 		.4byte	.LASF254
 5722 124c 01       		.byte	0x1
 5723 124d 2D05     		.2byte	0x52d
 5724 124f 8C000000 		.4byte	0x8c
 5725 1253 01       		.uleb128 0x1
 5726 1254 50       		.byte	0x50
 5727 1255 2E       		.uleb128 0x2e
 5728 1256 DE1A0000 		.4byte	0x1ade
 5729 125a 0A000000 		.4byte	.LBB34
 5730 125e 04000000 		.4byte	.LBE34-.LBB34
 5731 1262 01       		.byte	0x1
 5732 1263 3605     		.2byte	0x536
 5733 1265 2E       		.uleb128 0x2e
 5734 1266 F01A0000 		.4byte	0x1af0
 5735 126a 0E000000 		.4byte	.LBB36
 5736 126e 0A000000 		.4byte	.LBE36-.LBB36
 5737 1272 01       		.byte	0x1
 5738 1273 3705     		.2byte	0x537
 5739 1275 00       		.byte	0
 5740 1276 32       		.uleb128 0x32
 5741 1277 9A0D0000 		.4byte	.LASF255
 5742 127b 01       		.byte	0x1
 5743 127c 0505     		.2byte	0x505
 5744 127e 00000000 		.4byte	.LFB196
 5745 1282 14000000 		.4byte	.LFE196-.LFB196
 5746 1286 01       		.uleb128 0x1
 5747 1287 9C       		.byte	0x9c
 5748 1288 9D120000 		.4byte	0x129d
 5749 128c 2C       		.uleb128 0x2c
 5750 128d DE0C0000 		.4byte	.LASF256
 5751 1291 01       		.byte	0x1
 5752 1292 0505     		.2byte	0x505
 5753 1294 AC000000 		.4byte	0xac
 5754 1298 8B010000 		.4byte	.LLST51
 5755 129c 00       		.byte	0
 5756 129d 32       		.uleb128 0x32
 5757 129e BA0F0000 		.4byte	.LASF257
 5758 12a2 01       		.byte	0x1
ARM GAS  /tmp/ccTYR2Ee.s 			page 142


 5759 12a3 F904     		.2byte	0x4f9
 5760 12a5 00000000 		.4byte	.LFB195
 5761 12a9 14000000 		.4byte	.LFE195-.LFB195
 5762 12ad 01       		.uleb128 0x1
 5763 12ae 9C       		.byte	0x9c
 5764 12af C4120000 		.4byte	0x12c4
 5765 12b3 2C       		.uleb128 0x2c
 5766 12b4 DE0C0000 		.4byte	.LASF256
 5767 12b8 01       		.byte	0x1
 5768 12b9 F904     		.2byte	0x4f9
 5769 12bb AC000000 		.4byte	0xac
 5770 12bf C5010000 		.4byte	.LLST50
 5771 12c3 00       		.byte	0
 5772 12c4 28       		.uleb128 0x28
 5773 12c5 B8000000 		.4byte	.LASF258
 5774 12c9 01       		.byte	0x1
 5775 12ca EE04     		.2byte	0x4ee
 5776 12cc AC000000 		.4byte	0xac
 5777 12d0 00000000 		.4byte	.LFB194
 5778 12d4 0C000000 		.4byte	.LFE194-.LFB194
 5779 12d8 01       		.uleb128 0x1
 5780 12d9 9C       		.byte	0x9c
 5781 12da 28       		.uleb128 0x28
 5782 12db 77000000 		.4byte	.LASF259
 5783 12df 01       		.byte	0x1
 5784 12e0 E404     		.2byte	0x4e4
 5785 12e2 AC000000 		.4byte	0xac
 5786 12e6 00000000 		.4byte	.LFB193
 5787 12ea 0C000000 		.4byte	.LFE193-.LFB193
 5788 12ee 01       		.uleb128 0x1
 5789 12ef 9C       		.byte	0x9c
 5790 12f0 32       		.uleb128 0x32
 5791 12f1 00100000 		.4byte	.LASF260
 5792 12f5 01       		.byte	0x1
 5793 12f6 DA04     		.2byte	0x4da
 5794 12f8 00000000 		.4byte	.LFB192
 5795 12fc 0C000000 		.4byte	.LFE192-.LFB192
 5796 1300 01       		.uleb128 0x1
 5797 1301 9C       		.byte	0x9c
 5798 1302 15130000 		.4byte	0x1315
 5799 1306 33       		.uleb128 0x33
 5800 1307 A60B0000 		.4byte	.LASF261
 5801 130b 01       		.byte	0x1
 5802 130c DA04     		.2byte	0x4da
 5803 130e AC000000 		.4byte	0xac
 5804 1312 01       		.uleb128 0x1
 5805 1313 50       		.byte	0x50
 5806 1314 00       		.byte	0
 5807 1315 32       		.uleb128 0x32
 5808 1316 C3070000 		.4byte	.LASF262
 5809 131a 01       		.byte	0x1
 5810 131b D004     		.2byte	0x4d0
 5811 131d 00000000 		.4byte	.LFB191
 5812 1321 0C000000 		.4byte	.LFE191-.LFB191
 5813 1325 01       		.uleb128 0x1
 5814 1326 9C       		.byte	0x9c
 5815 1327 3A130000 		.4byte	0x133a
ARM GAS  /tmp/ccTYR2Ee.s 			page 143


 5816 132b 33       		.uleb128 0x33
 5817 132c A60B0000 		.4byte	.LASF261
 5818 1330 01       		.byte	0x1
 5819 1331 D004     		.2byte	0x4d0
 5820 1333 AC000000 		.4byte	0xac
 5821 1337 01       		.uleb128 0x1
 5822 1338 50       		.byte	0x50
 5823 1339 00       		.byte	0
 5824 133a 37       		.uleb128 0x37
 5825 133b EC090000 		.4byte	.LASF263
 5826 133f 01       		.byte	0x1
 5827 1340 A104     		.2byte	0x4a1
 5828 1342 00000000 		.4byte	.LFB190
 5829 1346 0C000000 		.4byte	.LFE190-.LFB190
 5830 134a 01       		.uleb128 0x1
 5831 134b 9C       		.byte	0x9c
 5832 134c 37       		.uleb128 0x37
 5833 134d 6B100000 		.4byte	.LASF264
 5834 1351 01       		.byte	0x1
 5835 1352 9304     		.2byte	0x493
 5836 1354 00000000 		.4byte	.LFB189
 5837 1358 0C000000 		.4byte	.LFE189-.LFB189
 5838 135c 01       		.uleb128 0x1
 5839 135d 9C       		.byte	0x9c
 5840 135e 32       		.uleb128 0x32
 5841 135f DB0A0000 		.4byte	.LASF265
 5842 1363 01       		.byte	0x1
 5843 1364 8904     		.2byte	0x489
 5844 1366 00000000 		.4byte	.LFB188
 5845 136a 14000000 		.4byte	.LFE188-.LFB188
 5846 136e 01       		.uleb128 0x1
 5847 136f 9C       		.byte	0x9c
 5848 1370 85130000 		.4byte	0x1385
 5849 1374 2C       		.uleb128 0x2c
 5850 1375 54080000 		.4byte	.LASF266
 5851 1379 01       		.byte	0x1
 5852 137a 8904     		.2byte	0x489
 5853 137c AC000000 		.4byte	0xac
 5854 1380 FF010000 		.4byte	.LLST49
 5855 1384 00       		.byte	0
 5856 1385 32       		.uleb128 0x32
 5857 1386 B4090000 		.4byte	.LASF267
 5858 138a 01       		.byte	0x1
 5859 138b 7104     		.2byte	0x471
 5860 138d 00000000 		.4byte	.LFB187
 5861 1391 10000000 		.4byte	.LFE187-.LFB187
 5862 1395 01       		.uleb128 0x1
 5863 1396 9C       		.byte	0x9c
 5864 1397 AC130000 		.4byte	0x13ac
 5865 139b 2C       		.uleb128 0x2c
 5866 139c 54080000 		.4byte	.LASF266
 5867 13a0 01       		.byte	0x1
 5868 13a1 7104     		.2byte	0x471
 5869 13a3 AC000000 		.4byte	0xac
 5870 13a7 20020000 		.4byte	.LLST48
 5871 13ab 00       		.byte	0
 5872 13ac 2B       		.uleb128 0x2b
ARM GAS  /tmp/ccTYR2Ee.s 			page 144


 5873 13ad CA0E0000 		.4byte	.LASF269
 5874 13b1 01       		.byte	0x1
 5875 13b2 0C04     		.2byte	0x40c
 5876 13b4 AC000000 		.4byte	0xac
 5877 13b8 00000000 		.4byte	.LFB186
 5878 13bc 1C000000 		.4byte	.LFE186-.LFB186
 5879 13c0 01       		.uleb128 0x1
 5880 13c1 9C       		.byte	0x9c
 5881 13c2 D7130000 		.4byte	0x13d7
 5882 13c6 2C       		.uleb128 0x2c
 5883 13c7 71000000 		.4byte	.LASF240
 5884 13cb 01       		.byte	0x1
 5885 13cc 0C04     		.2byte	0x40c
 5886 13ce AC000000 		.4byte	0xac
 5887 13d2 41020000 		.4byte	.LLST47
 5888 13d6 00       		.byte	0
 5889 13d7 37       		.uleb128 0x37
 5890 13d8 640E0000 		.4byte	.LASF270
 5891 13dc 01       		.byte	0x1
 5892 13dd FF03     		.2byte	0x3ff
 5893 13df 00000000 		.4byte	.LFB185
 5894 13e3 10000000 		.4byte	.LFE185-.LFB185
 5895 13e7 01       		.uleb128 0x1
 5896 13e8 9C       		.byte	0x9c
 5897 13e9 37       		.uleb128 0x37
 5898 13ea 25080000 		.4byte	.LASF271
 5899 13ee 01       		.byte	0x1
 5900 13ef F703     		.2byte	0x3f7
 5901 13f1 00000000 		.4byte	.LFB184
 5902 13f5 10000000 		.4byte	.LFE184-.LFB184
 5903 13f9 01       		.uleb128 0x1
 5904 13fa 9C       		.byte	0x9c
 5905 13fb 32       		.uleb128 0x32
 5906 13fc BF020000 		.4byte	.LASF272
 5907 1400 01       		.byte	0x1
 5908 1401 EF03     		.2byte	0x3ef
 5909 1403 00000000 		.4byte	.LFB183
 5910 1407 14000000 		.4byte	.LFE183-.LFB183
 5911 140b 01       		.uleb128 0x1
 5912 140c 9C       		.byte	0x9c
 5913 140d 22140000 		.4byte	0x1422
 5914 1411 2C       		.uleb128 0x2c
 5915 1412 71000000 		.4byte	.LASF240
 5916 1416 01       		.byte	0x1
 5917 1417 EF03     		.2byte	0x3ef
 5918 1419 AC000000 		.4byte	0xac
 5919 141d 7B020000 		.4byte	.LLST46
 5920 1421 00       		.byte	0
 5921 1422 32       		.uleb128 0x32
 5922 1423 06040000 		.4byte	.LASF273
 5923 1427 01       		.byte	0x1
 5924 1428 E503     		.2byte	0x3e5
 5925 142a 00000000 		.4byte	.LFB182
 5926 142e 14000000 		.4byte	.LFE182-.LFB182
 5927 1432 01       		.uleb128 0x1
 5928 1433 9C       		.byte	0x9c
 5929 1434 49140000 		.4byte	0x1449
ARM GAS  /tmp/ccTYR2Ee.s 			page 145


 5930 1438 2C       		.uleb128 0x2c
 5931 1439 71000000 		.4byte	.LASF240
 5932 143d 01       		.byte	0x1
 5933 143e E503     		.2byte	0x3e5
 5934 1440 AC000000 		.4byte	0xac
 5935 1444 9C020000 		.4byte	.LLST45
 5936 1448 00       		.byte	0
 5937 1449 2B       		.uleb128 0x2b
 5938 144a 4C0C0000 		.4byte	.LASF274
 5939 144e 01       		.byte	0x1
 5940 144f D103     		.2byte	0x3d1
 5941 1451 AC000000 		.4byte	0xac
 5942 1455 00000000 		.4byte	.LFB181
 5943 1459 44000000 		.4byte	.LFE181-.LFB181
 5944 145d 01       		.uleb128 0x1
 5945 145e 9C       		.byte	0x9c
 5946 145f 94140000 		.4byte	0x1494
 5947 1463 2C       		.uleb128 0x2c
 5948 1464 71000000 		.4byte	.LASF240
 5949 1468 01       		.byte	0x1
 5950 1469 D103     		.2byte	0x3d1
 5951 146b AC000000 		.4byte	0xac
 5952 146f BD020000 		.4byte	.LLST42
 5953 1473 2C       		.uleb128 0x2c
 5954 1474 BA080000 		.4byte	.LASF275
 5955 1478 01       		.byte	0x1
 5956 1479 D103     		.2byte	0x3d1
 5957 147b AC000000 		.4byte	0xac
 5958 147f EB020000 		.4byte	.LLST43
 5959 1483 34       		.uleb128 0x34
 5960 1484 780C0000 		.4byte	.LASF276
 5961 1488 01       		.byte	0x1
 5962 1489 D303     		.2byte	0x3d3
 5963 148b AC000000 		.4byte	0xac
 5964 148f 0C030000 		.4byte	.LLST44
 5965 1493 00       		.byte	0
 5966 1494 2B       		.uleb128 0x2b
 5967 1495 84070000 		.4byte	.LASF277
 5968 1499 01       		.byte	0x1
 5969 149a B703     		.2byte	0x3b7
 5970 149c AC000000 		.4byte	0xac
 5971 14a0 00000000 		.4byte	.LFB180
 5972 14a4 44000000 		.4byte	.LFE180-.LFB180
 5973 14a8 01       		.uleb128 0x1
 5974 14a9 9C       		.byte	0x9c
 5975 14aa DF140000 		.4byte	0x14df
 5976 14ae 2C       		.uleb128 0x2c
 5977 14af 71000000 		.4byte	.LASF240
 5978 14b3 01       		.byte	0x1
 5979 14b4 B703     		.2byte	0x3b7
 5980 14b6 AC000000 		.4byte	0xac
 5981 14ba 52030000 		.4byte	.LLST39
 5982 14be 2C       		.uleb128 0x2c
 5983 14bf BA080000 		.4byte	.LASF275
 5984 14c3 01       		.byte	0x1
 5985 14c4 B703     		.2byte	0x3b7
 5986 14c6 AC000000 		.4byte	0xac
ARM GAS  /tmp/ccTYR2Ee.s 			page 146


 5987 14ca 80030000 		.4byte	.LLST40
 5988 14ce 34       		.uleb128 0x34
 5989 14cf 780C0000 		.4byte	.LASF276
 5990 14d3 01       		.byte	0x1
 5991 14d4 B903     		.2byte	0x3b9
 5992 14d6 AC000000 		.4byte	0xac
 5993 14da A1030000 		.4byte	.LLST41
 5994 14de 00       		.byte	0
 5995 14df 2B       		.uleb128 0x2b
 5996 14e0 71080000 		.4byte	.LASF278
 5997 14e4 01       		.byte	0x1
 5998 14e5 8303     		.2byte	0x383
 5999 14e7 AC000000 		.4byte	0xac
 6000 14eb 00000000 		.4byte	.LFB179
 6001 14ef 44000000 		.4byte	.LFE179-.LFB179
 6002 14f3 01       		.uleb128 0x1
 6003 14f4 9C       		.byte	0x9c
 6004 14f5 2A150000 		.4byte	0x152a
 6005 14f9 2C       		.uleb128 0x2c
 6006 14fa 71000000 		.4byte	.LASF240
 6007 14fe 01       		.byte	0x1
 6008 14ff 8303     		.2byte	0x383
 6009 1501 AC000000 		.4byte	0xac
 6010 1505 E7030000 		.4byte	.LLST36
 6011 1509 2C       		.uleb128 0x2c
 6012 150a BA080000 		.4byte	.LASF275
 6013 150e 01       		.byte	0x1
 6014 150f 8303     		.2byte	0x383
 6015 1511 AC000000 		.4byte	0xac
 6016 1515 15040000 		.4byte	.LLST37
 6017 1519 34       		.uleb128 0x34
 6018 151a 780C0000 		.4byte	.LASF276
 6019 151e 01       		.byte	0x1
 6020 151f 8503     		.2byte	0x385
 6021 1521 AC000000 		.4byte	0xac
 6022 1525 36040000 		.4byte	.LLST38
 6023 1529 00       		.byte	0
 6024 152a 2B       		.uleb128 0x2b
 6025 152b 0F000000 		.4byte	.LASF279
 6026 152f 01       		.byte	0x1
 6027 1530 6B03     		.2byte	0x36b
 6028 1532 AC000000 		.4byte	0xac
 6029 1536 00000000 		.4byte	.LFB178
 6030 153a 44000000 		.4byte	.LFE178-.LFB178
 6031 153e 01       		.uleb128 0x1
 6032 153f 9C       		.byte	0x9c
 6033 1540 75150000 		.4byte	0x1575
 6034 1544 2C       		.uleb128 0x2c
 6035 1545 71000000 		.4byte	.LASF240
 6036 1549 01       		.byte	0x1
 6037 154a 6B03     		.2byte	0x36b
 6038 154c AC000000 		.4byte	0xac
 6039 1550 7C040000 		.4byte	.LLST33
 6040 1554 2C       		.uleb128 0x2c
 6041 1555 BA080000 		.4byte	.LASF275
 6042 1559 01       		.byte	0x1
 6043 155a 6B03     		.2byte	0x36b
ARM GAS  /tmp/ccTYR2Ee.s 			page 147


 6044 155c AC000000 		.4byte	0xac
 6045 1560 AA040000 		.4byte	.LLST34
 6046 1564 34       		.uleb128 0x34
 6047 1565 780C0000 		.4byte	.LASF276
 6048 1569 01       		.byte	0x1
 6049 156a 6D03     		.2byte	0x36d
 6050 156c AC000000 		.4byte	0xac
 6051 1570 CB040000 		.4byte	.LLST35
 6052 1574 00       		.byte	0
 6053 1575 2B       		.uleb128 0x2b
 6054 1576 260B0000 		.4byte	.LASF280
 6055 157a 01       		.byte	0x1
 6056 157b 5303     		.2byte	0x353
 6057 157d AC000000 		.4byte	0xac
 6058 1581 00000000 		.4byte	.LFB177
 6059 1585 40000000 		.4byte	.LFE177-.LFB177
 6060 1589 01       		.uleb128 0x1
 6061 158a 9C       		.byte	0x9c
 6062 158b C0150000 		.4byte	0x15c0
 6063 158f 2C       		.uleb128 0x2c
 6064 1590 71000000 		.4byte	.LASF240
 6065 1594 01       		.byte	0x1
 6066 1595 5303     		.2byte	0x353
 6067 1597 AC000000 		.4byte	0xac
 6068 159b 11050000 		.4byte	.LLST30
 6069 159f 2C       		.uleb128 0x2c
 6070 15a0 BA080000 		.4byte	.LASF275
 6071 15a4 01       		.byte	0x1
 6072 15a5 5303     		.2byte	0x353
 6073 15a7 AC000000 		.4byte	0xac
 6074 15ab 3F050000 		.4byte	.LLST31
 6075 15af 34       		.uleb128 0x34
 6076 15b0 780C0000 		.4byte	.LASF276
 6077 15b4 01       		.byte	0x1
 6078 15b5 5503     		.2byte	0x355
 6079 15b7 AC000000 		.4byte	0xac
 6080 15bb B3050000 		.4byte	.LLST32
 6081 15bf 00       		.byte	0
 6082 15c0 32       		.uleb128 0x32
 6083 15c1 0C050000 		.4byte	.LASF281
 6084 15c5 01       		.byte	0x1
 6085 15c6 4203     		.2byte	0x342
 6086 15c8 00000000 		.4byte	.LFB176
 6087 15cc 34000000 		.4byte	.LFE176-.LFB176
 6088 15d0 01       		.uleb128 0x1
 6089 15d1 9C       		.byte	0x9c
 6090 15d2 F7150000 		.4byte	0x15f7
 6091 15d6 2C       		.uleb128 0x2c
 6092 15d7 71000000 		.4byte	.LASF240
 6093 15db 01       		.byte	0x1
 6094 15dc 4203     		.2byte	0x342
 6095 15de AC000000 		.4byte	0xac
 6096 15e2 F9050000 		.4byte	.LLST28
 6097 15e6 2C       		.uleb128 0x2c
 6098 15e7 06010000 		.4byte	.LASF282
 6099 15eb 01       		.byte	0x1
 6100 15ec 4203     		.2byte	0x342
ARM GAS  /tmp/ccTYR2Ee.s 			page 148


 6101 15ee AC000000 		.4byte	0xac
 6102 15f2 1A060000 		.4byte	.LLST29
 6103 15f6 00       		.byte	0
 6104 15f7 32       		.uleb128 0x32
 6105 15f8 82100000 		.4byte	.LASF283
 6106 15fc 01       		.byte	0x1
 6107 15fd 3403     		.2byte	0x334
 6108 15ff 00000000 		.4byte	.LFB175
 6109 1603 34000000 		.4byte	.LFE175-.LFB175
 6110 1607 01       		.uleb128 0x1
 6111 1608 9C       		.byte	0x9c
 6112 1609 2E160000 		.4byte	0x162e
 6113 160d 2C       		.uleb128 0x2c
 6114 160e 71000000 		.4byte	.LASF240
 6115 1612 01       		.byte	0x1
 6116 1613 3403     		.2byte	0x334
 6117 1615 AC000000 		.4byte	0xac
 6118 1619 3B060000 		.4byte	.LLST26
 6119 161d 2C       		.uleb128 0x2c
 6120 161e BA080000 		.4byte	.LASF275
 6121 1622 01       		.byte	0x1
 6122 1623 3403     		.2byte	0x334
 6123 1625 AC000000 		.4byte	0xac
 6124 1629 5C060000 		.4byte	.LLST27
 6125 162d 00       		.byte	0
 6126 162e 2B       		.uleb128 0x2b
 6127 162f AC010000 		.4byte	.LASF284
 6128 1633 01       		.byte	0x1
 6129 1634 1203     		.2byte	0x312
 6130 1636 AC000000 		.4byte	0xac
 6131 163a 00000000 		.4byte	.LFB174
 6132 163e 3C000000 		.4byte	.LFE174-.LFB174
 6133 1642 01       		.uleb128 0x1
 6134 1643 9C       		.byte	0x9c
 6135 1644 59160000 		.4byte	0x1659
 6136 1648 2C       		.uleb128 0x2c
 6137 1649 71000000 		.4byte	.LASF240
 6138 164d 01       		.byte	0x1
 6139 164e 1203     		.2byte	0x312
 6140 1650 AC000000 		.4byte	0xac
 6141 1654 7D060000 		.4byte	.LLST25
 6142 1658 00       		.byte	0
 6143 1659 37       		.uleb128 0x37
 6144 165a D5050000 		.4byte	.LASF285
 6145 165e 01       		.byte	0x1
 6146 165f FC02     		.2byte	0x2fc
 6147 1661 00000000 		.4byte	.LFB173
 6148 1665 2C000000 		.4byte	.LFE173-.LFB173
 6149 1669 01       		.uleb128 0x1
 6150 166a 9C       		.byte	0x9c
 6151 166b 37       		.uleb128 0x37
 6152 166c C7080000 		.4byte	.LASF286
 6153 1670 01       		.byte	0x1
 6154 1671 ED02     		.2byte	0x2ed
 6155 1673 00000000 		.4byte	.LFB172
 6156 1677 2C000000 		.4byte	.LFE172-.LFB172
 6157 167b 01       		.uleb128 0x1
ARM GAS  /tmp/ccTYR2Ee.s 			page 149


 6158 167c 9C       		.byte	0x9c
 6159 167d 2B       		.uleb128 0x2b
 6160 167e 65090000 		.4byte	.LASF287
 6161 1682 01       		.byte	0x1
 6162 1683 D402     		.2byte	0x2d4
 6163 1685 AC000000 		.4byte	0xac
 6164 1689 00000000 		.4byte	.LFB171
 6165 168d 48000000 		.4byte	.LFE171-.LFB171
 6166 1691 01       		.uleb128 0x1
 6167 1692 9C       		.byte	0x9c
 6168 1693 A8160000 		.4byte	0x16a8
 6169 1697 2C       		.uleb128 0x2c
 6170 1698 71000000 		.4byte	.LASF240
 6171 169c 01       		.byte	0x1
 6172 169d D402     		.2byte	0x2d4
 6173 169f AC000000 		.4byte	0xac
 6174 16a3 E0060000 		.4byte	.LLST24
 6175 16a7 00       		.byte	0
 6176 16a8 2B       		.uleb128 0x2b
 6177 16a9 160F0000 		.4byte	.LASF288
 6178 16ad 01       		.byte	0x1
 6179 16ae B402     		.2byte	0x2b4
 6180 16b0 AC000000 		.4byte	0xac
 6181 16b4 00000000 		.4byte	.LFB170
 6182 16b8 48000000 		.4byte	.LFE170-.LFB170
 6183 16bc 01       		.uleb128 0x1
 6184 16bd 9C       		.byte	0x9c
 6185 16be D3160000 		.4byte	0x16d3
 6186 16c2 2C       		.uleb128 0x2c
 6187 16c3 71000000 		.4byte	.LASF240
 6188 16c7 01       		.byte	0x1
 6189 16c8 B402     		.2byte	0x2b4
 6190 16ca AC000000 		.4byte	0xac
 6191 16ce 36070000 		.4byte	.LLST23
 6192 16d2 00       		.byte	0
 6193 16d3 28       		.uleb128 0x28
 6194 16d4 DC010000 		.4byte	.LASF289
 6195 16d8 01       		.byte	0x1
 6196 16d9 A402     		.2byte	0x2a4
 6197 16db AC000000 		.4byte	0xac
 6198 16df 00000000 		.4byte	.LFB169
 6199 16e3 10000000 		.4byte	.LFE169-.LFB169
 6200 16e7 01       		.uleb128 0x1
 6201 16e8 9C       		.byte	0x9c
 6202 16e9 37       		.uleb128 0x37
 6203 16ea 170A0000 		.4byte	.LASF290
 6204 16ee 01       		.byte	0x1
 6205 16ef 9902     		.2byte	0x299
 6206 16f1 00000000 		.4byte	.LFB168
 6207 16f5 10000000 		.4byte	.LFE168-.LFB168
 6208 16f9 01       		.uleb128 0x1
 6209 16fa 9C       		.byte	0x9c
 6210 16fb 37       		.uleb128 0x37
 6211 16fc 490D0000 		.4byte	.LASF291
 6212 1700 01       		.byte	0x1
 6213 1701 8E02     		.2byte	0x28e
 6214 1703 00000000 		.4byte	.LFB167
ARM GAS  /tmp/ccTYR2Ee.s 			page 150


 6215 1707 18000000 		.4byte	.LFE167-.LFB167
 6216 170b 01       		.uleb128 0x1
 6217 170c 9C       		.byte	0x9c
 6218 170d 28       		.uleb128 0x28
 6219 170e 88050000 		.4byte	.LASF292
 6220 1712 01       		.byte	0x1
 6221 1713 5902     		.2byte	0x259
 6222 1715 AC000000 		.4byte	0xac
 6223 1719 00000000 		.4byte	.LFB166
 6224 171d 10000000 		.4byte	.LFE166-.LFB166
 6225 1721 01       		.uleb128 0x1
 6226 1722 9C       		.byte	0x9c
 6227 1723 38       		.uleb128 0x38
 6228 1724 A2020000 		.4byte	.LASF333
 6229 1728 01       		.byte	0x1
 6230 1729 4A02     		.2byte	0x24a
 6231 172b 01       		.byte	0x1
 6232 172c 32       		.uleb128 0x32
 6233 172d 9A040000 		.4byte	.LASF293
 6234 1731 01       		.byte	0x1
 6235 1732 3802     		.2byte	0x238
 6236 1734 00000000 		.4byte	.LFB164
 6237 1738 38000000 		.4byte	.LFE164-.LFB164
 6238 173c 01       		.uleb128 0x1
 6239 173d 9C       		.byte	0x9c
 6240 173e 83170000 		.4byte	0x1783
 6241 1742 2C       		.uleb128 0x2c
 6242 1743 6C000000 		.4byte	.LASF294
 6243 1747 01       		.byte	0x1
 6244 1748 3802     		.2byte	0x238
 6245 174a AC000000 		.4byte	0xac
 6246 174e 8C070000 		.4byte	.LLST20
 6247 1752 2C       		.uleb128 0x2c
 6248 1753 38080000 		.4byte	.LASF295
 6249 1757 01       		.byte	0x1
 6250 1758 3802     		.2byte	0x238
 6251 175a AC000000 		.4byte	0xac
 6252 175e AD070000 		.4byte	.LLST21
 6253 1762 2C       		.uleb128 0x2c
 6254 1763 EB0B0000 		.4byte	.LASF296
 6255 1767 01       		.byte	0x1
 6256 1768 3802     		.2byte	0x238
 6257 176a AC000000 		.4byte	0xac
 6258 176e CE070000 		.4byte	.LLST22
 6259 1772 2D       		.uleb128 0x2d
 6260 1773 23170000 		.4byte	0x1723
 6261 1777 08000000 		.4byte	.LBB28
 6262 177b 00000000 		.4byte	.Ldebug_ranges0+0
 6263 177f 01       		.byte	0x1
 6264 1780 3B02     		.2byte	0x23b
 6265 1782 00       		.byte	0
 6266 1783 32       		.uleb128 0x32
 6267 1784 0B020000 		.4byte	.LASF297
 6268 1788 01       		.byte	0x1
 6269 1789 2602     		.2byte	0x226
 6270 178b 00000000 		.4byte	.LFB163
 6271 178f 28000000 		.4byte	.LFE163-.LFB163
ARM GAS  /tmp/ccTYR2Ee.s 			page 151


 6272 1793 01       		.uleb128 0x1
 6273 1794 9C       		.byte	0x9c
 6274 1795 B8170000 		.4byte	0x17b8
 6275 1799 33       		.uleb128 0x33
 6276 179a 1E060000 		.4byte	.LASF298
 6277 179e 01       		.byte	0x1
 6278 179f 2602     		.2byte	0x226
 6279 17a1 AC000000 		.4byte	0xac
 6280 17a5 01       		.uleb128 0x1
 6281 17a6 50       		.byte	0x50
 6282 17a7 36       		.uleb128 0x36
 6283 17a8 6D6F7200 		.ascii	"mor\000"
 6284 17ac 01       		.byte	0x1
 6285 17ad 2802     		.2byte	0x228
 6286 17af AC000000 		.4byte	0xac
 6287 17b3 EF070000 		.4byte	.LLST19
 6288 17b7 00       		.byte	0
 6289 17b8 28       		.uleb128 0x28
 6290 17b9 09070000 		.4byte	.LASF299
 6291 17bd 01       		.byte	0x1
 6292 17be 1A02     		.2byte	0x21a
 6293 17c0 AC000000 		.4byte	0xac
 6294 17c4 00000000 		.4byte	.LFB162
 6295 17c8 10000000 		.4byte	.LFE162-.LFB162
 6296 17cc 01       		.uleb128 0x1
 6297 17cd 9C       		.byte	0x9c
 6298 17ce 32       		.uleb128 0x32
 6299 17cf 590F0000 		.4byte	.LASF300
 6300 17d3 01       		.byte	0x1
 6301 17d4 0702     		.2byte	0x207
 6302 17d6 00000000 		.4byte	.LFB161
 6303 17da 2C000000 		.4byte	.LFE161-.LFB161
 6304 17de 01       		.uleb128 0x1
 6305 17df 9C       		.byte	0x9c
 6306 17e0 F3170000 		.4byte	0x17f3
 6307 17e4 33       		.uleb128 0x33
 6308 17e5 0C0B0000 		.4byte	.LASF301
 6309 17e9 01       		.byte	0x1
 6310 17ea 0702     		.2byte	0x207
 6311 17ec AC000000 		.4byte	0xac
 6312 17f0 01       		.uleb128 0x1
 6313 17f1 50       		.byte	0x50
 6314 17f2 00       		.byte	0
 6315 17f3 32       		.uleb128 0x32
 6316 17f4 5F020000 		.4byte	.LASF302
 6317 17f8 01       		.byte	0x1
 6318 17f9 EF01     		.2byte	0x1ef
 6319 17fb 00000000 		.4byte	.LFB160
 6320 17ff 54000000 		.4byte	.LFE160-.LFB160
 6321 1803 01       		.uleb128 0x1
 6322 1804 9C       		.byte	0x9c
 6323 1805 2A180000 		.4byte	0x182a
 6324 1809 2C       		.uleb128 0x2c
 6325 180a 0C0B0000 		.4byte	.LASF301
 6326 180e 01       		.byte	0x1
 6327 180f EF01     		.2byte	0x1ef
 6328 1811 AC000000 		.4byte	0xac
ARM GAS  /tmp/ccTYR2Ee.s 			page 152


 6329 1815 0D080000 		.4byte	.LLST17
 6330 1819 2C       		.uleb128 0x2c
 6331 181a 4A030000 		.4byte	.LASF303
 6332 181e 01       		.byte	0x1
 6333 181f F001     		.2byte	0x1f0
 6334 1821 AC000000 		.4byte	0xac
 6335 1825 47080000 		.4byte	.LLST18
 6336 1829 00       		.byte	0
 6337 182a 28       		.uleb128 0x28
 6338 182b BA050000 		.4byte	.LASF304
 6339 182f 01       		.byte	0x1
 6340 1830 DD01     		.2byte	0x1dd
 6341 1832 AC000000 		.4byte	0xac
 6342 1836 00000000 		.4byte	.LFB159
 6343 183a 10000000 		.4byte	.LFE159-.LFB159
 6344 183e 01       		.uleb128 0x1
 6345 183f 9C       		.byte	0x9c
 6346 1840 28       		.uleb128 0x28
 6347 1841 21020000 		.4byte	.LASF305
 6348 1845 01       		.byte	0x1
 6349 1846 D101     		.2byte	0x1d1
 6350 1848 AC000000 		.4byte	0xac
 6351 184c 00000000 		.4byte	.LFB158
 6352 1850 10000000 		.4byte	.LFE158-.LFB158
 6353 1854 01       		.uleb128 0x1
 6354 1855 9C       		.byte	0x9c
 6355 1856 32       		.uleb128 0x32
 6356 1857 9A060000 		.4byte	.LASF306
 6357 185b 01       		.byte	0x1
 6358 185c C501     		.2byte	0x1c5
 6359 185e 00000000 		.4byte	.LFB157
 6360 1862 14000000 		.4byte	.LFE157-.LFB157
 6361 1866 01       		.uleb128 0x1
 6362 1867 9C       		.byte	0x9c
 6363 1868 7D180000 		.4byte	0x187d
 6364 186c 36       		.uleb128 0x36
 6365 186d 6D6F7200 		.ascii	"mor\000"
 6366 1871 01       		.byte	0x1
 6367 1872 C701     		.2byte	0x1c7
 6368 1874 AC000000 		.4byte	0xac
 6369 1878 81080000 		.4byte	.LLST16
 6370 187c 00       		.byte	0
 6371 187d 32       		.uleb128 0x32
 6372 187e ED000000 		.4byte	.LASF307
 6373 1882 01       		.byte	0x1
 6374 1883 B801     		.2byte	0x1b8
 6375 1885 00000000 		.4byte	.LFB156
 6376 1889 18000000 		.4byte	.LFE156-.LFB156
 6377 188d 01       		.uleb128 0x1
 6378 188e 9C       		.byte	0x9c
 6379 188f A4180000 		.4byte	0x18a4
 6380 1893 36       		.uleb128 0x36
 6381 1894 6D6F7200 		.ascii	"mor\000"
 6382 1898 01       		.byte	0x1
 6383 1899 BA01     		.2byte	0x1ba
 6384 189b AC000000 		.4byte	0xac
 6385 189f A4080000 		.4byte	.LLST15
ARM GAS  /tmp/ccTYR2Ee.s 			page 153


 6386 18a3 00       		.byte	0
 6387 18a4 32       		.uleb128 0x32
 6388 18a5 96030000 		.4byte	.LASF308
 6389 18a9 01       		.byte	0x1
 6390 18aa AA01     		.2byte	0x1aa
 6391 18ac 00000000 		.4byte	.LFB155
 6392 18b0 2C000000 		.4byte	.LFE155-.LFB155
 6393 18b4 01       		.uleb128 0x1
 6394 18b5 9C       		.byte	0x9c
 6395 18b6 DB180000 		.4byte	0x18db
 6396 18ba 2C       		.uleb128 0x2c
 6397 18bb 4A030000 		.4byte	.LASF303
 6398 18bf 01       		.byte	0x1
 6399 18c0 AA01     		.2byte	0x1aa
 6400 18c2 AC000000 		.4byte	0xac
 6401 18c6 C2080000 		.4byte	.LLST13
 6402 18ca 36       		.uleb128 0x36
 6403 18cb 6D6F7200 		.ascii	"mor\000"
 6404 18cf 01       		.byte	0x1
 6405 18d0 AC01     		.2byte	0x1ac
 6406 18d2 AC000000 		.4byte	0xac
 6407 18d6 E3080000 		.4byte	.LLST14
 6408 18da 00       		.byte	0
 6409 18db 28       		.uleb128 0x28
 6410 18dc EC060000 		.4byte	.LASF309
 6411 18e0 01       		.byte	0x1
 6412 18e1 A001     		.2byte	0x1a0
 6413 18e3 AC000000 		.4byte	0xac
 6414 18e7 00000000 		.4byte	.LFB154
 6415 18eb 10000000 		.4byte	.LFE154-.LFB154
 6416 18ef 01       		.uleb128 0x1
 6417 18f0 9C       		.byte	0x9c
 6418 18f1 37       		.uleb128 0x37
 6419 18f2 47000000 		.4byte	.LASF310
 6420 18f6 01       		.byte	0x1
 6421 18f7 9301     		.2byte	0x193
 6422 18f9 00000000 		.4byte	.LFB153
 6423 18fd 18000000 		.4byte	.LFE153-.LFB153
 6424 1901 01       		.uleb128 0x1
 6425 1902 9C       		.byte	0x9c
 6426 1903 32       		.uleb128 0x32
 6427 1904 FB050000 		.4byte	.LASF311
 6428 1908 01       		.byte	0x1
 6429 1909 8201     		.2byte	0x182
 6430 190b 00000000 		.4byte	.LFB152
 6431 190f 3C000000 		.4byte	.LFE152-.LFB152
 6432 1913 01       		.uleb128 0x1
 6433 1914 9C       		.byte	0x9c
 6434 1915 2A190000 		.4byte	0x192a
 6435 1919 2C       		.uleb128 0x2c
 6436 191a CF090000 		.4byte	.LASF312
 6437 191e 01       		.byte	0x1
 6438 191f 8201     		.2byte	0x182
 6439 1921 AC000000 		.4byte	0xac
 6440 1925 11090000 		.4byte	.LLST12
 6441 1929 00       		.byte	0
 6442 192a 32       		.uleb128 0x32
ARM GAS  /tmp/ccTYR2Ee.s 			page 154


 6443 192b 77060000 		.4byte	.LASF313
 6444 192f 01       		.byte	0x1
 6445 1930 6901     		.2byte	0x169
 6446 1932 00000000 		.4byte	.LFB151
 6447 1936 4C000000 		.4byte	.LFE151-.LFB151
 6448 193a 01       		.uleb128 0x1
 6449 193b 9C       		.byte	0x9c
 6450 193c 51190000 		.4byte	0x1951
 6451 1940 2C       		.uleb128 0x2c
 6452 1941 80040000 		.4byte	.LASF314
 6453 1945 01       		.byte	0x1
 6454 1946 6901     		.2byte	0x169
 6455 1948 AC000000 		.4byte	0xac
 6456 194c 32090000 		.4byte	.LLST11
 6457 1950 00       		.byte	0
 6458 1951 28       		.uleb128 0x28
 6459 1952 C9040000 		.4byte	.LASF315
 6460 1956 01       		.byte	0x1
 6461 1957 5A01     		.2byte	0x15a
 6462 1959 AC000000 		.4byte	0xac
 6463 195d 00000000 		.4byte	.LFB150
 6464 1961 1C000000 		.4byte	.LFE150-.LFB150
 6465 1965 01       		.uleb128 0x1
 6466 1966 9C       		.byte	0x9c
 6467 1967 32       		.uleb128 0x32
 6468 1968 5A010000 		.4byte	.LASF316
 6469 196c 01       		.byte	0x1
 6470 196d 4901     		.2byte	0x149
 6471 196f 00000000 		.4byte	.LFB149
 6472 1973 24000000 		.4byte	.LFE149-.LFB149
 6473 1977 01       		.uleb128 0x1
 6474 1978 9C       		.byte	0x9c
 6475 1979 8C190000 		.4byte	0x198c
 6476 197d 33       		.uleb128 0x33
 6477 197e 0C0B0000 		.4byte	.LASF301
 6478 1982 01       		.byte	0x1
 6479 1983 4901     		.2byte	0x149
 6480 1985 AC000000 		.4byte	0xac
 6481 1989 01       		.uleb128 0x1
 6482 198a 50       		.byte	0x50
 6483 198b 00       		.byte	0
 6484 198c 2B       		.uleb128 0x2b
 6485 198d 2E000000 		.4byte	.LASF317
 6486 1991 01       		.byte	0x1
 6487 1992 2801     		.2byte	0x128
 6488 1994 AC000000 		.4byte	0xac
 6489 1998 00000000 		.4byte	.LFB148
 6490 199c 50000000 		.4byte	.LFE148-.LFB148
 6491 19a0 01       		.uleb128 0x1
 6492 19a1 9C       		.byte	0x9c
 6493 19a2 C7190000 		.4byte	0x19c7
 6494 19a6 2C       		.uleb128 0x2c
 6495 19a7 BA080000 		.4byte	.LASF275
 6496 19ab 01       		.byte	0x1
 6497 19ac 2801     		.2byte	0x128
 6498 19ae AC000000 		.4byte	0xac
 6499 19b2 53090000 		.4byte	.LLST9
ARM GAS  /tmp/ccTYR2Ee.s 			page 155


 6500 19b6 34       		.uleb128 0x34
 6501 19b7 780C0000 		.4byte	.LASF276
 6502 19bb 01       		.byte	0x1
 6503 19bc 2A01     		.2byte	0x12a
 6504 19be AC000000 		.4byte	0xac
 6505 19c2 74090000 		.4byte	.LLST10
 6506 19c6 00       		.byte	0
 6507 19c7 39       		.uleb128 0x39
 6508 19c8 19010000 		.4byte	.LASF318
 6509 19cc 01       		.byte	0x1
 6510 19cd E4       		.byte	0xe4
 6511 19ce AC000000 		.4byte	0xac
 6512 19d2 00000000 		.4byte	.LFB147
 6513 19d6 54000000 		.4byte	.LFE147-.LFB147
 6514 19da 01       		.uleb128 0x1
 6515 19db 9C       		.byte	0x9c
 6516 19dc FF190000 		.4byte	0x19ff
 6517 19e0 3A       		.uleb128 0x3a
 6518 19e1 BA080000 		.4byte	.LASF275
 6519 19e5 01       		.byte	0x1
 6520 19e6 E4       		.byte	0xe4
 6521 19e7 AC000000 		.4byte	0xac
 6522 19eb E2090000 		.4byte	.LLST7
 6523 19ef 3B       		.uleb128 0x3b
 6524 19f0 780C0000 		.4byte	.LASF276
 6525 19f4 01       		.byte	0x1
 6526 19f5 E6       		.byte	0xe6
 6527 19f6 AC000000 		.4byte	0xac
 6528 19fa 030A0000 		.4byte	.LLST8
 6529 19fe 00       		.byte	0
 6530 19ff 39       		.uleb128 0x39
 6531 1a00 D8070000 		.4byte	.LASF319
 6532 1a04 01       		.byte	0x1
 6533 1a05 C4       		.byte	0xc4
 6534 1a06 AC000000 		.4byte	0xac
 6535 1a0a 00000000 		.4byte	.LFB146
 6536 1a0e 54000000 		.4byte	.LFE146-.LFB146
 6537 1a12 01       		.uleb128 0x1
 6538 1a13 9C       		.byte	0x9c
 6539 1a14 371A0000 		.4byte	0x1a37
 6540 1a18 3A       		.uleb128 0x3a
 6541 1a19 BA080000 		.4byte	.LASF275
 6542 1a1d 01       		.byte	0x1
 6543 1a1e C4       		.byte	0xc4
 6544 1a1f AC000000 		.4byte	0xac
 6545 1a23 710A0000 		.4byte	.LLST5
 6546 1a27 3B       		.uleb128 0x3b
 6547 1a28 780C0000 		.4byte	.LASF276
 6548 1a2c 01       		.byte	0x1
 6549 1a2d C6       		.byte	0xc6
 6550 1a2e AC000000 		.4byte	0xac
 6551 1a32 920A0000 		.4byte	.LLST6
 6552 1a36 00       		.byte	0
 6553 1a37 39       		.uleb128 0x39
 6554 1a38 7F030000 		.4byte	.LASF320
 6555 1a3c 01       		.byte	0x1
 6556 1a3d A4       		.byte	0xa4
ARM GAS  /tmp/ccTYR2Ee.s 			page 156


 6557 1a3e AC000000 		.4byte	0xac
 6558 1a42 00000000 		.4byte	.LFB145
 6559 1a46 50000000 		.4byte	.LFE145-.LFB145
 6560 1a4a 01       		.uleb128 0x1
 6561 1a4b 9C       		.byte	0x9c
 6562 1a4c 6F1A0000 		.4byte	0x1a6f
 6563 1a50 3A       		.uleb128 0x3a
 6564 1a51 BA080000 		.4byte	.LASF275
 6565 1a55 01       		.byte	0x1
 6566 1a56 A4       		.byte	0xa4
 6567 1a57 AC000000 		.4byte	0xac
 6568 1a5b 000B0000 		.4byte	.LLST3
 6569 1a5f 3B       		.uleb128 0x3b
 6570 1a60 780C0000 		.4byte	.LASF276
 6571 1a64 01       		.byte	0x1
 6572 1a65 A6       		.byte	0xa6
 6573 1a66 AC000000 		.4byte	0xac
 6574 1a6a 210B0000 		.4byte	.LLST4
 6575 1a6e 00       		.byte	0
 6576 1a6f 3C       		.uleb128 0x3c
 6577 1a70 FF0C0000 		.4byte	.LASF321
 6578 1a74 01       		.byte	0x1
 6579 1a75 95       		.byte	0x95
 6580 1a76 00000000 		.4byte	.LFB144
 6581 1a7a 1C000000 		.4byte	.LFE144-.LFB144
 6582 1a7e 01       		.uleb128 0x1
 6583 1a7f 9C       		.byte	0x9c
 6584 1a80 941A0000 		.4byte	0x1a94
 6585 1a84 3A       		.uleb128 0x3a
 6586 1a85 06010000 		.4byte	.LASF282
 6587 1a89 01       		.byte	0x1
 6588 1a8a 95       		.byte	0x95
 6589 1a8b AC000000 		.4byte	0xac
 6590 1a8f 8F0B0000 		.4byte	.LLST2
 6591 1a93 00       		.byte	0
 6592 1a94 3C       		.uleb128 0x3c
 6593 1a95 42050000 		.4byte	.LASF322
 6594 1a99 01       		.byte	0x1
 6595 1a9a 77       		.byte	0x77
 6596 1a9b 00000000 		.4byte	.LFB143
 6597 1a9f 30000000 		.4byte	.LFE143-.LFB143
 6598 1aa3 01       		.uleb128 0x1
 6599 1aa4 9C       		.byte	0x9c
 6600 1aa5 B91A0000 		.4byte	0x1ab9
 6601 1aa9 3A       		.uleb128 0x3a
 6602 1aaa CF010000 		.4byte	.LASF323
 6603 1aae 01       		.byte	0x1
 6604 1aaf 77       		.byte	0x77
 6605 1ab0 AC000000 		.4byte	0xac
 6606 1ab4 B00B0000 		.4byte	.LLST1
 6607 1ab8 00       		.byte	0
 6608 1ab9 3C       		.uleb128 0x3c
 6609 1aba C6030000 		.4byte	.LASF324
 6610 1abe 01       		.byte	0x1
 6611 1abf 6A       		.byte	0x6a
 6612 1ac0 00000000 		.4byte	.LFB142
 6613 1ac4 1C000000 		.4byte	.LFE142-.LFB142
ARM GAS  /tmp/ccTYR2Ee.s 			page 157


 6614 1ac8 01       		.uleb128 0x1
 6615 1ac9 9C       		.byte	0x9c
 6616 1aca DE1A0000 		.4byte	0x1ade
 6617 1ace 3A       		.uleb128 0x3a
 6618 1acf BA080000 		.4byte	.LASF275
 6619 1ad3 01       		.byte	0x1
 6620 1ad4 6A       		.byte	0x6a
 6621 1ad5 AC000000 		.4byte	0xac
 6622 1ad9 E90B0000 		.4byte	.LLST0
 6623 1add 00       		.byte	0
 6624 1ade 3D       		.uleb128 0x3d
 6625 1adf D6010000 		.4byte	.LASF325
 6626 1ae3 02       		.byte	0x2
 6627 1ae4 BB01     		.2byte	0x1bb
 6628 1ae6 03       		.byte	0x3
 6629 1ae7 3D       		.uleb128 0x3d
 6630 1ae8 270D0000 		.4byte	.LASF326
 6631 1aec 02       		.byte	0x2
 6632 1aed 9A01     		.2byte	0x19a
 6633 1aef 03       		.byte	0x3
 6634 1af0 3D       		.uleb128 0x3d
 6635 1af1 2D0D0000 		.4byte	.LASF327
 6636 1af5 02       		.byte	0x2
 6637 1af6 8F01     		.2byte	0x18f
 6638 1af8 03       		.byte	0x3
 6639 1af9 3D       		.uleb128 0x3d
 6640 1afa 7B0D0000 		.4byte	.LASF328
 6641 1afe 02       		.byte	0x2
 6642 1aff 8401     		.2byte	0x184
 6643 1b01 03       		.byte	0x3
 6644 1b02 3E       		.uleb128 0x3e
 6645 1b03 23170000 		.4byte	0x1723
 6646 1b07 00000000 		.4byte	.LFB165
 6647 1b0b 10000000 		.4byte	.LFE165-.LFB165
 6648 1b0f 01       		.uleb128 0x1
 6649 1b10 9C       		.byte	0x9c
 6650 1b11 3F       		.uleb128 0x3f
 6651 1b12 E20F0000 		.4byte	0xfe2
 6652 1b16 00000000 		.4byte	.LFB208
 6653 1b1a 38000000 		.4byte	.LFE208-.LFB208
 6654 1b1e 01       		.uleb128 0x1
 6655 1b1f 9C       		.byte	0x9c
 6656 1b20 411B0000 		.4byte	0x1b41
 6657 1b24 30       		.uleb128 0x30
 6658 1b25 F30F0000 		.4byte	0xff3
 6659 1b29 0A0C0000 		.4byte	.LLST58
 6660 1b2d 40       		.uleb128 0x40
 6661 1b2e 08000000 		.4byte	.LBB80
 6662 1b32 1A000000 		.4byte	.LBE80-.LBB80
 6663 1b36 30       		.uleb128 0x30
 6664 1b37 F30F0000 		.4byte	0xff3
 6665 1b3b 740C0000 		.4byte	.LLST59
 6666 1b3f 00       		.byte	0
 6667 1b40 00       		.byte	0
 6668 1b41 3E       		.uleb128 0x3e
 6669 1b42 BF0F0000 		.4byte	0xfbf
 6670 1b46 00000000 		.4byte	.LFB210
ARM GAS  /tmp/ccTYR2Ee.s 			page 158


 6671 1b4a 0C000000 		.4byte	.LFE210-.LFB210
 6672 1b4e 01       		.uleb128 0x1
 6673 1b4f 9C       		.byte	0x9c
 6674 1b50 3E       		.uleb128 0x3e
 6675 1b51 9C0F0000 		.4byte	0xf9c
 6676 1b55 00000000 		.4byte	.LFB212
 6677 1b59 0C000000 		.4byte	.LFE212-.LFB212
 6678 1b5d 01       		.uleb128 0x1
 6679 1b5e 9C       		.byte	0x9c
 6680 1b5f 00       		.byte	0
 6681              		.section	.debug_abbrev,"",%progbits
 6682              	.Ldebug_abbrev0:
 6683 0000 01       		.uleb128 0x1
 6684 0001 11       		.uleb128 0x11
 6685 0002 01       		.byte	0x1
 6686 0003 25       		.uleb128 0x25
 6687 0004 0E       		.uleb128 0xe
 6688 0005 13       		.uleb128 0x13
 6689 0006 0B       		.uleb128 0xb
 6690 0007 03       		.uleb128 0x3
 6691 0008 0E       		.uleb128 0xe
 6692 0009 1B       		.uleb128 0x1b
 6693 000a 0E       		.uleb128 0xe
 6694 000b 55       		.uleb128 0x55
 6695 000c 17       		.uleb128 0x17
 6696 000d 11       		.uleb128 0x11
 6697 000e 01       		.uleb128 0x1
 6698 000f 10       		.uleb128 0x10
 6699 0010 17       		.uleb128 0x17
 6700 0011 00       		.byte	0
 6701 0012 00       		.byte	0
 6702 0013 02       		.uleb128 0x2
 6703 0014 24       		.uleb128 0x24
 6704 0015 00       		.byte	0
 6705 0016 0B       		.uleb128 0xb
 6706 0017 0B       		.uleb128 0xb
 6707 0018 3E       		.uleb128 0x3e
 6708 0019 0B       		.uleb128 0xb
 6709 001a 03       		.uleb128 0x3
 6710 001b 08       		.uleb128 0x8
 6711 001c 00       		.byte	0
 6712 001d 00       		.byte	0
 6713 001e 03       		.uleb128 0x3
 6714 001f 24       		.uleb128 0x24
 6715 0020 00       		.byte	0
 6716 0021 0B       		.uleb128 0xb
 6717 0022 0B       		.uleb128 0xb
 6718 0023 3E       		.uleb128 0x3e
 6719 0024 0B       		.uleb128 0xb
 6720 0025 03       		.uleb128 0x3
 6721 0026 0E       		.uleb128 0xe
 6722 0027 00       		.byte	0
 6723 0028 00       		.byte	0
 6724 0029 04       		.uleb128 0x4
 6725 002a 16       		.uleb128 0x16
 6726 002b 00       		.byte	0
 6727 002c 03       		.uleb128 0x3
ARM GAS  /tmp/ccTYR2Ee.s 			page 159


 6728 002d 0E       		.uleb128 0xe
 6729 002e 3A       		.uleb128 0x3a
 6730 002f 0B       		.uleb128 0xb
 6731 0030 3B       		.uleb128 0x3b
 6732 0031 0B       		.uleb128 0xb
 6733 0032 49       		.uleb128 0x49
 6734 0033 13       		.uleb128 0x13
 6735 0034 00       		.byte	0
 6736 0035 00       		.byte	0
 6737 0036 05       		.uleb128 0x5
 6738 0037 35       		.uleb128 0x35
 6739 0038 00       		.byte	0
 6740 0039 49       		.uleb128 0x49
 6741 003a 13       		.uleb128 0x13
 6742 003b 00       		.byte	0
 6743 003c 00       		.byte	0
 6744 003d 06       		.uleb128 0x6
 6745 003e 26       		.uleb128 0x26
 6746 003f 00       		.byte	0
 6747 0040 49       		.uleb128 0x49
 6748 0041 13       		.uleb128 0x13
 6749 0042 00       		.byte	0
 6750 0043 00       		.byte	0
 6751 0044 07       		.uleb128 0x7
 6752 0045 0F       		.uleb128 0xf
 6753 0046 00       		.byte	0
 6754 0047 0B       		.uleb128 0xb
 6755 0048 0B       		.uleb128 0xb
 6756 0049 00       		.byte	0
 6757 004a 00       		.byte	0
 6758 004b 08       		.uleb128 0x8
 6759 004c 13       		.uleb128 0x13
 6760 004d 01       		.byte	0x1
 6761 004e 0B       		.uleb128 0xb
 6762 004f 05       		.uleb128 0x5
 6763 0050 3A       		.uleb128 0x3a
 6764 0051 0B       		.uleb128 0xb
 6765 0052 3B       		.uleb128 0x3b
 6766 0053 05       		.uleb128 0x5
 6767 0054 01       		.uleb128 0x1
 6768 0055 13       		.uleb128 0x13
 6769 0056 00       		.byte	0
 6770 0057 00       		.byte	0
 6771 0058 09       		.uleb128 0x9
 6772 0059 0D       		.uleb128 0xd
 6773 005a 00       		.byte	0
 6774 005b 03       		.uleb128 0x3
 6775 005c 0E       		.uleb128 0xe
 6776 005d 3A       		.uleb128 0x3a
 6777 005e 0B       		.uleb128 0xb
 6778 005f 3B       		.uleb128 0x3b
 6779 0060 05       		.uleb128 0x5
 6780 0061 49       		.uleb128 0x49
 6781 0062 13       		.uleb128 0x13
 6782 0063 38       		.uleb128 0x38
 6783 0064 0B       		.uleb128 0xb
 6784 0065 00       		.byte	0
ARM GAS  /tmp/ccTYR2Ee.s 			page 160


 6785 0066 00       		.byte	0
 6786 0067 0A       		.uleb128 0xa
 6787 0068 0D       		.uleb128 0xd
 6788 0069 00       		.byte	0
 6789 006a 03       		.uleb128 0x3
 6790 006b 08       		.uleb128 0x8
 6791 006c 3A       		.uleb128 0x3a
 6792 006d 0B       		.uleb128 0xb
 6793 006e 3B       		.uleb128 0x3b
 6794 006f 05       		.uleb128 0x5
 6795 0070 49       		.uleb128 0x49
 6796 0071 13       		.uleb128 0x13
 6797 0072 38       		.uleb128 0x38
 6798 0073 0B       		.uleb128 0xb
 6799 0074 00       		.byte	0
 6800 0075 00       		.byte	0
 6801 0076 0B       		.uleb128 0xb
 6802 0077 0D       		.uleb128 0xd
 6803 0078 00       		.byte	0
 6804 0079 03       		.uleb128 0x3
 6805 007a 0E       		.uleb128 0xe
 6806 007b 3A       		.uleb128 0x3a
 6807 007c 0B       		.uleb128 0xb
 6808 007d 3B       		.uleb128 0x3b
 6809 007e 05       		.uleb128 0x5
 6810 007f 49       		.uleb128 0x49
 6811 0080 13       		.uleb128 0x13
 6812 0081 38       		.uleb128 0x38
 6813 0082 05       		.uleb128 0x5
 6814 0083 00       		.byte	0
 6815 0084 00       		.byte	0
 6816 0085 0C       		.uleb128 0xc
 6817 0086 01       		.uleb128 0x1
 6818 0087 01       		.byte	0x1
 6819 0088 49       		.uleb128 0x49
 6820 0089 13       		.uleb128 0x13
 6821 008a 01       		.uleb128 0x1
 6822 008b 13       		.uleb128 0x13
 6823 008c 00       		.byte	0
 6824 008d 00       		.byte	0
 6825 008e 0D       		.uleb128 0xd
 6826 008f 21       		.uleb128 0x21
 6827 0090 00       		.byte	0
 6828 0091 49       		.uleb128 0x49
 6829 0092 13       		.uleb128 0x13
 6830 0093 2F       		.uleb128 0x2f
 6831 0094 0B       		.uleb128 0xb
 6832 0095 00       		.byte	0
 6833 0096 00       		.byte	0
 6834 0097 0E       		.uleb128 0xe
 6835 0098 16       		.uleb128 0x16
 6836 0099 00       		.byte	0
 6837 009a 03       		.uleb128 0x3
 6838 009b 0E       		.uleb128 0xe
 6839 009c 3A       		.uleb128 0x3a
 6840 009d 0B       		.uleb128 0xb
 6841 009e 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccTYR2Ee.s 			page 161


 6842 009f 05       		.uleb128 0x5
 6843 00a0 49       		.uleb128 0x49
 6844 00a1 13       		.uleb128 0x13
 6845 00a2 00       		.byte	0
 6846 00a3 00       		.byte	0
 6847 00a4 0F       		.uleb128 0xf
 6848 00a5 34       		.uleb128 0x34
 6849 00a6 00       		.byte	0
 6850 00a7 03       		.uleb128 0x3
 6851 00a8 0E       		.uleb128 0xe
 6852 00a9 3A       		.uleb128 0x3a
 6853 00aa 0B       		.uleb128 0xb
 6854 00ab 3B       		.uleb128 0x3b
 6855 00ac 05       		.uleb128 0x5
 6856 00ad 49       		.uleb128 0x49
 6857 00ae 13       		.uleb128 0x13
 6858 00af 3F       		.uleb128 0x3f
 6859 00b0 19       		.uleb128 0x19
 6860 00b1 3C       		.uleb128 0x3c
 6861 00b2 19       		.uleb128 0x19
 6862 00b3 00       		.byte	0
 6863 00b4 00       		.byte	0
 6864 00b5 10       		.uleb128 0x10
 6865 00b6 34       		.uleb128 0x34
 6866 00b7 00       		.byte	0
 6867 00b8 03       		.uleb128 0x3
 6868 00b9 0E       		.uleb128 0xe
 6869 00ba 3A       		.uleb128 0x3a
 6870 00bb 0B       		.uleb128 0xb
 6871 00bc 3B       		.uleb128 0x3b
 6872 00bd 0B       		.uleb128 0xb
 6873 00be 49       		.uleb128 0x49
 6874 00bf 13       		.uleb128 0x13
 6875 00c0 3F       		.uleb128 0x3f
 6876 00c1 19       		.uleb128 0x19
 6877 00c2 3C       		.uleb128 0x3c
 6878 00c3 19       		.uleb128 0x19
 6879 00c4 00       		.byte	0
 6880 00c5 00       		.byte	0
 6881 00c6 11       		.uleb128 0x11
 6882 00c7 13       		.uleb128 0x13
 6883 00c8 01       		.byte	0x1
 6884 00c9 0B       		.uleb128 0xb
 6885 00ca 05       		.uleb128 0x5
 6886 00cb 3A       		.uleb128 0x3a
 6887 00cc 0B       		.uleb128 0xb
 6888 00cd 3B       		.uleb128 0x3b
 6889 00ce 0B       		.uleb128 0xb
 6890 00cf 01       		.uleb128 0x1
 6891 00d0 13       		.uleb128 0x13
 6892 00d1 00       		.byte	0
 6893 00d2 00       		.byte	0
 6894 00d3 12       		.uleb128 0x12
 6895 00d4 0D       		.uleb128 0xd
 6896 00d5 00       		.byte	0
 6897 00d6 03       		.uleb128 0x3
 6898 00d7 0E       		.uleb128 0xe
ARM GAS  /tmp/ccTYR2Ee.s 			page 162


 6899 00d8 3A       		.uleb128 0x3a
 6900 00d9 0B       		.uleb128 0xb
 6901 00da 3B       		.uleb128 0x3b
 6902 00db 0B       		.uleb128 0xb
 6903 00dc 49       		.uleb128 0x49
 6904 00dd 13       		.uleb128 0x13
 6905 00de 38       		.uleb128 0x38
 6906 00df 0B       		.uleb128 0xb
 6907 00e0 00       		.byte	0
 6908 00e1 00       		.byte	0
 6909 00e2 13       		.uleb128 0x13
 6910 00e3 0D       		.uleb128 0xd
 6911 00e4 00       		.byte	0
 6912 00e5 03       		.uleb128 0x3
 6913 00e6 0E       		.uleb128 0xe
 6914 00e7 3A       		.uleb128 0x3a
 6915 00e8 0B       		.uleb128 0xb
 6916 00e9 3B       		.uleb128 0x3b
 6917 00ea 0B       		.uleb128 0xb
 6918 00eb 49       		.uleb128 0x49
 6919 00ec 13       		.uleb128 0x13
 6920 00ed 38       		.uleb128 0x38
 6921 00ee 05       		.uleb128 0x5
 6922 00ef 00       		.byte	0
 6923 00f0 00       		.byte	0
 6924 00f1 14       		.uleb128 0x14
 6925 00f2 16       		.uleb128 0x16
 6926 00f3 00       		.byte	0
 6927 00f4 03       		.uleb128 0x3
 6928 00f5 08       		.uleb128 0x8
 6929 00f6 3A       		.uleb128 0x3a
 6930 00f7 0B       		.uleb128 0xb
 6931 00f8 3B       		.uleb128 0x3b
 6932 00f9 0B       		.uleb128 0xb
 6933 00fa 49       		.uleb128 0x49
 6934 00fb 13       		.uleb128 0x13
 6935 00fc 00       		.byte	0
 6936 00fd 00       		.byte	0
 6937 00fe 15       		.uleb128 0x15
 6938 00ff 13       		.uleb128 0x13
 6939 0100 01       		.byte	0x1
 6940 0101 0B       		.uleb128 0xb
 6941 0102 0B       		.uleb128 0xb
 6942 0103 3A       		.uleb128 0x3a
 6943 0104 0B       		.uleb128 0xb
 6944 0105 3B       		.uleb128 0x3b
 6945 0106 0B       		.uleb128 0xb
 6946 0107 01       		.uleb128 0x1
 6947 0108 13       		.uleb128 0x13
 6948 0109 00       		.byte	0
 6949 010a 00       		.byte	0
 6950 010b 16       		.uleb128 0x16
 6951 010c 17       		.uleb128 0x17
 6952 010d 01       		.byte	0x1
 6953 010e 0B       		.uleb128 0xb
 6954 010f 0B       		.uleb128 0xb
 6955 0110 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccTYR2Ee.s 			page 163


 6956 0111 0B       		.uleb128 0xb
 6957 0112 3B       		.uleb128 0x3b
 6958 0113 0B       		.uleb128 0xb
 6959 0114 01       		.uleb128 0x1
 6960 0115 13       		.uleb128 0x13
 6961 0116 00       		.byte	0
 6962 0117 00       		.byte	0
 6963 0118 17       		.uleb128 0x17
 6964 0119 0D       		.uleb128 0xd
 6965 011a 00       		.byte	0
 6966 011b 03       		.uleb128 0x3
 6967 011c 0E       		.uleb128 0xe
 6968 011d 3A       		.uleb128 0x3a
 6969 011e 0B       		.uleb128 0xb
 6970 011f 3B       		.uleb128 0x3b
 6971 0120 0B       		.uleb128 0xb
 6972 0121 49       		.uleb128 0x49
 6973 0122 13       		.uleb128 0x13
 6974 0123 00       		.byte	0
 6975 0124 00       		.byte	0
 6976 0125 18       		.uleb128 0x18
 6977 0126 13       		.uleb128 0x13
 6978 0127 01       		.byte	0x1
 6979 0128 03       		.uleb128 0x3
 6980 0129 0E       		.uleb128 0xe
 6981 012a 0B       		.uleb128 0xb
 6982 012b 0B       		.uleb128 0xb
 6983 012c 3A       		.uleb128 0x3a
 6984 012d 0B       		.uleb128 0xb
 6985 012e 3B       		.uleb128 0x3b
 6986 012f 0B       		.uleb128 0xb
 6987 0130 01       		.uleb128 0x1
 6988 0131 13       		.uleb128 0x13
 6989 0132 00       		.byte	0
 6990 0133 00       		.byte	0
 6991 0134 19       		.uleb128 0x19
 6992 0135 0D       		.uleb128 0xd
 6993 0136 00       		.byte	0
 6994 0137 03       		.uleb128 0x3
 6995 0138 08       		.uleb128 0x8
 6996 0139 3A       		.uleb128 0x3a
 6997 013a 0B       		.uleb128 0xb
 6998 013b 3B       		.uleb128 0x3b
 6999 013c 0B       		.uleb128 0xb
 7000 013d 49       		.uleb128 0x49
 7001 013e 13       		.uleb128 0x13
 7002 013f 38       		.uleb128 0x38
 7003 0140 0B       		.uleb128 0xb
 7004 0141 00       		.byte	0
 7005 0142 00       		.byte	0
 7006 0143 1A       		.uleb128 0x1a
 7007 0144 0F       		.uleb128 0xf
 7008 0145 00       		.byte	0
 7009 0146 0B       		.uleb128 0xb
 7010 0147 0B       		.uleb128 0xb
 7011 0148 49       		.uleb128 0x49
 7012 0149 13       		.uleb128 0x13
ARM GAS  /tmp/ccTYR2Ee.s 			page 164


 7013 014a 00       		.byte	0
 7014 014b 00       		.byte	0
 7015 014c 1B       		.uleb128 0x1b
 7016 014d 13       		.uleb128 0x13
 7017 014e 01       		.byte	0x1
 7018 014f 03       		.uleb128 0x3
 7019 0150 0E       		.uleb128 0xe
 7020 0151 0B       		.uleb128 0xb
 7021 0152 05       		.uleb128 0x5
 7022 0153 3A       		.uleb128 0x3a
 7023 0154 0B       		.uleb128 0xb
 7024 0155 3B       		.uleb128 0x3b
 7025 0156 0B       		.uleb128 0xb
 7026 0157 01       		.uleb128 0x1
 7027 0158 13       		.uleb128 0x13
 7028 0159 00       		.byte	0
 7029 015a 00       		.byte	0
 7030 015b 1C       		.uleb128 0x1c
 7031 015c 15       		.uleb128 0x15
 7032 015d 00       		.byte	0
 7033 015e 27       		.uleb128 0x27
 7034 015f 19       		.uleb128 0x19
 7035 0160 00       		.byte	0
 7036 0161 00       		.byte	0
 7037 0162 1D       		.uleb128 0x1d
 7038 0163 15       		.uleb128 0x15
 7039 0164 01       		.byte	0x1
 7040 0165 27       		.uleb128 0x27
 7041 0166 19       		.uleb128 0x19
 7042 0167 49       		.uleb128 0x49
 7043 0168 13       		.uleb128 0x13
 7044 0169 01       		.uleb128 0x1
 7045 016a 13       		.uleb128 0x13
 7046 016b 00       		.byte	0
 7047 016c 00       		.byte	0
 7048 016d 1E       		.uleb128 0x1e
 7049 016e 05       		.uleb128 0x5
 7050 016f 00       		.byte	0
 7051 0170 49       		.uleb128 0x49
 7052 0171 13       		.uleb128 0x13
 7053 0172 00       		.byte	0
 7054 0173 00       		.byte	0
 7055 0174 1F       		.uleb128 0x1f
 7056 0175 13       		.uleb128 0x13
 7057 0176 01       		.byte	0x1
 7058 0177 03       		.uleb128 0x3
 7059 0178 0E       		.uleb128 0xe
 7060 0179 0B       		.uleb128 0xb
 7061 017a 05       		.uleb128 0x5
 7062 017b 3A       		.uleb128 0x3a
 7063 017c 0B       		.uleb128 0xb
 7064 017d 3B       		.uleb128 0x3b
 7065 017e 05       		.uleb128 0x5
 7066 017f 01       		.uleb128 0x1
 7067 0180 13       		.uleb128 0x13
 7068 0181 00       		.byte	0
 7069 0182 00       		.byte	0
ARM GAS  /tmp/ccTYR2Ee.s 			page 165


 7070 0183 20       		.uleb128 0x20
 7071 0184 13       		.uleb128 0x13
 7072 0185 01       		.byte	0x1
 7073 0186 03       		.uleb128 0x3
 7074 0187 0E       		.uleb128 0xe
 7075 0188 0B       		.uleb128 0xb
 7076 0189 0B       		.uleb128 0xb
 7077 018a 3A       		.uleb128 0x3a
 7078 018b 0B       		.uleb128 0xb
 7079 018c 3B       		.uleb128 0x3b
 7080 018d 05       		.uleb128 0x5
 7081 018e 01       		.uleb128 0x1
 7082 018f 13       		.uleb128 0x13
 7083 0190 00       		.byte	0
 7084 0191 00       		.byte	0
 7085 0192 21       		.uleb128 0x21
 7086 0193 13       		.uleb128 0x13
 7087 0194 01       		.byte	0x1
 7088 0195 0B       		.uleb128 0xb
 7089 0196 0B       		.uleb128 0xb
 7090 0197 3A       		.uleb128 0x3a
 7091 0198 0B       		.uleb128 0xb
 7092 0199 3B       		.uleb128 0x3b
 7093 019a 05       		.uleb128 0x5
 7094 019b 01       		.uleb128 0x1
 7095 019c 13       		.uleb128 0x13
 7096 019d 00       		.byte	0
 7097 019e 00       		.byte	0
 7098 019f 22       		.uleb128 0x22
 7099 01a0 17       		.uleb128 0x17
 7100 01a1 01       		.byte	0x1
 7101 01a2 0B       		.uleb128 0xb
 7102 01a3 0B       		.uleb128 0xb
 7103 01a4 3A       		.uleb128 0x3a
 7104 01a5 0B       		.uleb128 0xb
 7105 01a6 3B       		.uleb128 0x3b
 7106 01a7 05       		.uleb128 0x5
 7107 01a8 01       		.uleb128 0x1
 7108 01a9 13       		.uleb128 0x13
 7109 01aa 00       		.byte	0
 7110 01ab 00       		.byte	0
 7111 01ac 23       		.uleb128 0x23
 7112 01ad 0D       		.uleb128 0xd
 7113 01ae 00       		.byte	0
 7114 01af 03       		.uleb128 0x3
 7115 01b0 0E       		.uleb128 0xe
 7116 01b1 3A       		.uleb128 0x3a
 7117 01b2 0B       		.uleb128 0xb
 7118 01b3 3B       		.uleb128 0x3b
 7119 01b4 05       		.uleb128 0x5
 7120 01b5 49       		.uleb128 0x49
 7121 01b6 13       		.uleb128 0x13
 7122 01b7 00       		.byte	0
 7123 01b8 00       		.byte	0
 7124 01b9 24       		.uleb128 0x24
 7125 01ba 15       		.uleb128 0x15
 7126 01bb 01       		.byte	0x1
ARM GAS  /tmp/ccTYR2Ee.s 			page 166


 7127 01bc 27       		.uleb128 0x27
 7128 01bd 19       		.uleb128 0x19
 7129 01be 01       		.uleb128 0x1
 7130 01bf 13       		.uleb128 0x13
 7131 01c0 00       		.byte	0
 7132 01c1 00       		.byte	0
 7133 01c2 25       		.uleb128 0x25
 7134 01c3 34       		.uleb128 0x34
 7135 01c4 00       		.byte	0
 7136 01c5 03       		.uleb128 0x3
 7137 01c6 0E       		.uleb128 0xe
 7138 01c7 3A       		.uleb128 0x3a
 7139 01c8 0B       		.uleb128 0xb
 7140 01c9 3B       		.uleb128 0x3b
 7141 01ca 0B       		.uleb128 0xb
 7142 01cb 49       		.uleb128 0x49
 7143 01cc 13       		.uleb128 0x13
 7144 01cd 02       		.uleb128 0x2
 7145 01ce 18       		.uleb128 0x18
 7146 01cf 00       		.byte	0
 7147 01d0 00       		.byte	0
 7148 01d1 26       		.uleb128 0x26
 7149 01d2 34       		.uleb128 0x34
 7150 01d3 00       		.byte	0
 7151 01d4 03       		.uleb128 0x3
 7152 01d5 0E       		.uleb128 0xe
 7153 01d6 3A       		.uleb128 0x3a
 7154 01d7 0B       		.uleb128 0xb
 7155 01d8 3B       		.uleb128 0x3b
 7156 01d9 05       		.uleb128 0x5
 7157 01da 49       		.uleb128 0x49
 7158 01db 13       		.uleb128 0x13
 7159 01dc 00       		.byte	0
 7160 01dd 00       		.byte	0
 7161 01de 27       		.uleb128 0x27
 7162 01df 2E       		.uleb128 0x2e
 7163 01e0 00       		.byte	0
 7164 01e1 3F       		.uleb128 0x3f
 7165 01e2 19       		.uleb128 0x19
 7166 01e3 03       		.uleb128 0x3
 7167 01e4 0E       		.uleb128 0xe
 7168 01e5 3A       		.uleb128 0x3a
 7169 01e6 0B       		.uleb128 0xb
 7170 01e7 3B       		.uleb128 0x3b
 7171 01e8 05       		.uleb128 0x5
 7172 01e9 27       		.uleb128 0x27
 7173 01ea 19       		.uleb128 0x19
 7174 01eb 49       		.uleb128 0x49
 7175 01ec 13       		.uleb128 0x13
 7176 01ed 20       		.uleb128 0x20
 7177 01ee 0B       		.uleb128 0xb
 7178 01ef 00       		.byte	0
 7179 01f0 00       		.byte	0
 7180 01f1 28       		.uleb128 0x28
 7181 01f2 2E       		.uleb128 0x2e
 7182 01f3 00       		.byte	0
 7183 01f4 3F       		.uleb128 0x3f
ARM GAS  /tmp/ccTYR2Ee.s 			page 167


 7184 01f5 19       		.uleb128 0x19
 7185 01f6 03       		.uleb128 0x3
 7186 01f7 0E       		.uleb128 0xe
 7187 01f8 3A       		.uleb128 0x3a
 7188 01f9 0B       		.uleb128 0xb
 7189 01fa 3B       		.uleb128 0x3b
 7190 01fb 05       		.uleb128 0x5
 7191 01fc 27       		.uleb128 0x27
 7192 01fd 19       		.uleb128 0x19
 7193 01fe 49       		.uleb128 0x49
 7194 01ff 13       		.uleb128 0x13
 7195 0200 11       		.uleb128 0x11
 7196 0201 01       		.uleb128 0x1
 7197 0202 12       		.uleb128 0x12
 7198 0203 06       		.uleb128 0x6
 7199 0204 40       		.uleb128 0x40
 7200 0205 18       		.uleb128 0x18
 7201 0206 9742     		.uleb128 0x2117
 7202 0208 19       		.uleb128 0x19
 7203 0209 00       		.byte	0
 7204 020a 00       		.byte	0
 7205 020b 29       		.uleb128 0x29
 7206 020c 2E       		.uleb128 0x2e
 7207 020d 01       		.byte	0x1
 7208 020e 3F       		.uleb128 0x3f
 7209 020f 19       		.uleb128 0x19
 7210 0210 03       		.uleb128 0x3
 7211 0211 0E       		.uleb128 0xe
 7212 0212 3A       		.uleb128 0x3a
 7213 0213 0B       		.uleb128 0xb
 7214 0214 3B       		.uleb128 0x3b
 7215 0215 05       		.uleb128 0x5
 7216 0216 27       		.uleb128 0x27
 7217 0217 19       		.uleb128 0x19
 7218 0218 49       		.uleb128 0x49
 7219 0219 13       		.uleb128 0x13
 7220 021a 20       		.uleb128 0x20
 7221 021b 0B       		.uleb128 0xb
 7222 021c 01       		.uleb128 0x1
 7223 021d 13       		.uleb128 0x13
 7224 021e 00       		.byte	0
 7225 021f 00       		.byte	0
 7226 0220 2A       		.uleb128 0x2a
 7227 0221 05       		.uleb128 0x5
 7228 0222 00       		.byte	0
 7229 0223 03       		.uleb128 0x3
 7230 0224 0E       		.uleb128 0xe
 7231 0225 3A       		.uleb128 0x3a
 7232 0226 0B       		.uleb128 0xb
 7233 0227 3B       		.uleb128 0x3b
 7234 0228 05       		.uleb128 0x5
 7235 0229 49       		.uleb128 0x49
 7236 022a 13       		.uleb128 0x13
 7237 022b 00       		.byte	0
 7238 022c 00       		.byte	0
 7239 022d 2B       		.uleb128 0x2b
 7240 022e 2E       		.uleb128 0x2e
ARM GAS  /tmp/ccTYR2Ee.s 			page 168


 7241 022f 01       		.byte	0x1
 7242 0230 3F       		.uleb128 0x3f
 7243 0231 19       		.uleb128 0x19
 7244 0232 03       		.uleb128 0x3
 7245 0233 0E       		.uleb128 0xe
 7246 0234 3A       		.uleb128 0x3a
 7247 0235 0B       		.uleb128 0xb
 7248 0236 3B       		.uleb128 0x3b
 7249 0237 05       		.uleb128 0x5
 7250 0238 27       		.uleb128 0x27
 7251 0239 19       		.uleb128 0x19
 7252 023a 49       		.uleb128 0x49
 7253 023b 13       		.uleb128 0x13
 7254 023c 11       		.uleb128 0x11
 7255 023d 01       		.uleb128 0x1
 7256 023e 12       		.uleb128 0x12
 7257 023f 06       		.uleb128 0x6
 7258 0240 40       		.uleb128 0x40
 7259 0241 18       		.uleb128 0x18
 7260 0242 9742     		.uleb128 0x2117
 7261 0244 19       		.uleb128 0x19
 7262 0245 01       		.uleb128 0x1
 7263 0246 13       		.uleb128 0x13
 7264 0247 00       		.byte	0
 7265 0248 00       		.byte	0
 7266 0249 2C       		.uleb128 0x2c
 7267 024a 05       		.uleb128 0x5
 7268 024b 00       		.byte	0
 7269 024c 03       		.uleb128 0x3
 7270 024d 0E       		.uleb128 0xe
 7271 024e 3A       		.uleb128 0x3a
 7272 024f 0B       		.uleb128 0xb
 7273 0250 3B       		.uleb128 0x3b
 7274 0251 05       		.uleb128 0x5
 7275 0252 49       		.uleb128 0x49
 7276 0253 13       		.uleb128 0x13
 7277 0254 02       		.uleb128 0x2
 7278 0255 17       		.uleb128 0x17
 7279 0256 00       		.byte	0
 7280 0257 00       		.byte	0
 7281 0258 2D       		.uleb128 0x2d
 7282 0259 1D       		.uleb128 0x1d
 7283 025a 00       		.byte	0
 7284 025b 31       		.uleb128 0x31
 7285 025c 13       		.uleb128 0x13
 7286 025d 52       		.uleb128 0x52
 7287 025e 01       		.uleb128 0x1
 7288 025f 55       		.uleb128 0x55
 7289 0260 17       		.uleb128 0x17
 7290 0261 58       		.uleb128 0x58
 7291 0262 0B       		.uleb128 0xb
 7292 0263 59       		.uleb128 0x59
 7293 0264 05       		.uleb128 0x5
 7294 0265 00       		.byte	0
 7295 0266 00       		.byte	0
 7296 0267 2E       		.uleb128 0x2e
 7297 0268 1D       		.uleb128 0x1d
ARM GAS  /tmp/ccTYR2Ee.s 			page 169


 7298 0269 00       		.byte	0
 7299 026a 31       		.uleb128 0x31
 7300 026b 13       		.uleb128 0x13
 7301 026c 11       		.uleb128 0x11
 7302 026d 01       		.uleb128 0x1
 7303 026e 12       		.uleb128 0x12
 7304 026f 06       		.uleb128 0x6
 7305 0270 58       		.uleb128 0x58
 7306 0271 0B       		.uleb128 0xb
 7307 0272 59       		.uleb128 0x59
 7308 0273 05       		.uleb128 0x5
 7309 0274 00       		.byte	0
 7310 0275 00       		.byte	0
 7311 0276 2F       		.uleb128 0x2f
 7312 0277 1D       		.uleb128 0x1d
 7313 0278 01       		.byte	0x1
 7314 0279 31       		.uleb128 0x31
 7315 027a 13       		.uleb128 0x13
 7316 027b 11       		.uleb128 0x11
 7317 027c 01       		.uleb128 0x1
 7318 027d 12       		.uleb128 0x12
 7319 027e 06       		.uleb128 0x6
 7320 027f 58       		.uleb128 0x58
 7321 0280 0B       		.uleb128 0xb
 7322 0281 59       		.uleb128 0x59
 7323 0282 05       		.uleb128 0x5
 7324 0283 01       		.uleb128 0x1
 7325 0284 13       		.uleb128 0x13
 7326 0285 00       		.byte	0
 7327 0286 00       		.byte	0
 7328 0287 30       		.uleb128 0x30
 7329 0288 05       		.uleb128 0x5
 7330 0289 00       		.byte	0
 7331 028a 31       		.uleb128 0x31
 7332 028b 13       		.uleb128 0x13
 7333 028c 02       		.uleb128 0x2
 7334 028d 17       		.uleb128 0x17
 7335 028e 00       		.byte	0
 7336 028f 00       		.byte	0
 7337 0290 31       		.uleb128 0x31
 7338 0291 1D       		.uleb128 0x1d
 7339 0292 01       		.byte	0x1
 7340 0293 31       		.uleb128 0x31
 7341 0294 13       		.uleb128 0x13
 7342 0295 52       		.uleb128 0x52
 7343 0296 01       		.uleb128 0x1
 7344 0297 55       		.uleb128 0x55
 7345 0298 17       		.uleb128 0x17
 7346 0299 58       		.uleb128 0x58
 7347 029a 0B       		.uleb128 0xb
 7348 029b 59       		.uleb128 0x59
 7349 029c 05       		.uleb128 0x5
 7350 029d 00       		.byte	0
 7351 029e 00       		.byte	0
 7352 029f 32       		.uleb128 0x32
 7353 02a0 2E       		.uleb128 0x2e
 7354 02a1 01       		.byte	0x1
ARM GAS  /tmp/ccTYR2Ee.s 			page 170


 7355 02a2 3F       		.uleb128 0x3f
 7356 02a3 19       		.uleb128 0x19
 7357 02a4 03       		.uleb128 0x3
 7358 02a5 0E       		.uleb128 0xe
 7359 02a6 3A       		.uleb128 0x3a
 7360 02a7 0B       		.uleb128 0xb
 7361 02a8 3B       		.uleb128 0x3b
 7362 02a9 05       		.uleb128 0x5
 7363 02aa 27       		.uleb128 0x27
 7364 02ab 19       		.uleb128 0x19
 7365 02ac 11       		.uleb128 0x11
 7366 02ad 01       		.uleb128 0x1
 7367 02ae 12       		.uleb128 0x12
 7368 02af 06       		.uleb128 0x6
 7369 02b0 40       		.uleb128 0x40
 7370 02b1 18       		.uleb128 0x18
 7371 02b2 9742     		.uleb128 0x2117
 7372 02b4 19       		.uleb128 0x19
 7373 02b5 01       		.uleb128 0x1
 7374 02b6 13       		.uleb128 0x13
 7375 02b7 00       		.byte	0
 7376 02b8 00       		.byte	0
 7377 02b9 33       		.uleb128 0x33
 7378 02ba 05       		.uleb128 0x5
 7379 02bb 00       		.byte	0
 7380 02bc 03       		.uleb128 0x3
 7381 02bd 0E       		.uleb128 0xe
 7382 02be 3A       		.uleb128 0x3a
 7383 02bf 0B       		.uleb128 0xb
 7384 02c0 3B       		.uleb128 0x3b
 7385 02c1 05       		.uleb128 0x5
 7386 02c2 49       		.uleb128 0x49
 7387 02c3 13       		.uleb128 0x13
 7388 02c4 02       		.uleb128 0x2
 7389 02c5 18       		.uleb128 0x18
 7390 02c6 00       		.byte	0
 7391 02c7 00       		.byte	0
 7392 02c8 34       		.uleb128 0x34
 7393 02c9 34       		.uleb128 0x34
 7394 02ca 00       		.byte	0
 7395 02cb 03       		.uleb128 0x3
 7396 02cc 0E       		.uleb128 0xe
 7397 02cd 3A       		.uleb128 0x3a
 7398 02ce 0B       		.uleb128 0xb
 7399 02cf 3B       		.uleb128 0x3b
 7400 02d0 05       		.uleb128 0x5
 7401 02d1 49       		.uleb128 0x49
 7402 02d2 13       		.uleb128 0x13
 7403 02d3 02       		.uleb128 0x2
 7404 02d4 17       		.uleb128 0x17
 7405 02d5 00       		.byte	0
 7406 02d6 00       		.byte	0
 7407 02d7 35       		.uleb128 0x35
 7408 02d8 34       		.uleb128 0x34
 7409 02d9 00       		.byte	0
 7410 02da 03       		.uleb128 0x3
 7411 02db 0E       		.uleb128 0xe
ARM GAS  /tmp/ccTYR2Ee.s 			page 171


 7412 02dc 3A       		.uleb128 0x3a
 7413 02dd 0B       		.uleb128 0xb
 7414 02de 3B       		.uleb128 0x3b
 7415 02df 05       		.uleb128 0x5
 7416 02e0 49       		.uleb128 0x49
 7417 02e1 13       		.uleb128 0x13
 7418 02e2 02       		.uleb128 0x2
 7419 02e3 18       		.uleb128 0x18
 7420 02e4 00       		.byte	0
 7421 02e5 00       		.byte	0
 7422 02e6 36       		.uleb128 0x36
 7423 02e7 34       		.uleb128 0x34
 7424 02e8 00       		.byte	0
 7425 02e9 03       		.uleb128 0x3
 7426 02ea 08       		.uleb128 0x8
 7427 02eb 3A       		.uleb128 0x3a
 7428 02ec 0B       		.uleb128 0xb
 7429 02ed 3B       		.uleb128 0x3b
 7430 02ee 05       		.uleb128 0x5
 7431 02ef 49       		.uleb128 0x49
 7432 02f0 13       		.uleb128 0x13
 7433 02f1 02       		.uleb128 0x2
 7434 02f2 17       		.uleb128 0x17
 7435 02f3 00       		.byte	0
 7436 02f4 00       		.byte	0
 7437 02f5 37       		.uleb128 0x37
 7438 02f6 2E       		.uleb128 0x2e
 7439 02f7 00       		.byte	0
 7440 02f8 3F       		.uleb128 0x3f
 7441 02f9 19       		.uleb128 0x19
 7442 02fa 03       		.uleb128 0x3
 7443 02fb 0E       		.uleb128 0xe
 7444 02fc 3A       		.uleb128 0x3a
 7445 02fd 0B       		.uleb128 0xb
 7446 02fe 3B       		.uleb128 0x3b
 7447 02ff 05       		.uleb128 0x5
 7448 0300 27       		.uleb128 0x27
 7449 0301 19       		.uleb128 0x19
 7450 0302 11       		.uleb128 0x11
 7451 0303 01       		.uleb128 0x1
 7452 0304 12       		.uleb128 0x12
 7453 0305 06       		.uleb128 0x6
 7454 0306 40       		.uleb128 0x40
 7455 0307 18       		.uleb128 0x18
 7456 0308 9742     		.uleb128 0x2117
 7457 030a 19       		.uleb128 0x19
 7458 030b 00       		.byte	0
 7459 030c 00       		.byte	0
 7460 030d 38       		.uleb128 0x38
 7461 030e 2E       		.uleb128 0x2e
 7462 030f 00       		.byte	0
 7463 0310 3F       		.uleb128 0x3f
 7464 0311 19       		.uleb128 0x19
 7465 0312 03       		.uleb128 0x3
 7466 0313 0E       		.uleb128 0xe
 7467 0314 3A       		.uleb128 0x3a
 7468 0315 0B       		.uleb128 0xb
ARM GAS  /tmp/ccTYR2Ee.s 			page 172


 7469 0316 3B       		.uleb128 0x3b
 7470 0317 05       		.uleb128 0x5
 7471 0318 27       		.uleb128 0x27
 7472 0319 19       		.uleb128 0x19
 7473 031a 20       		.uleb128 0x20
 7474 031b 0B       		.uleb128 0xb
 7475 031c 00       		.byte	0
 7476 031d 00       		.byte	0
 7477 031e 39       		.uleb128 0x39
 7478 031f 2E       		.uleb128 0x2e
 7479 0320 01       		.byte	0x1
 7480 0321 3F       		.uleb128 0x3f
 7481 0322 19       		.uleb128 0x19
 7482 0323 03       		.uleb128 0x3
 7483 0324 0E       		.uleb128 0xe
 7484 0325 3A       		.uleb128 0x3a
 7485 0326 0B       		.uleb128 0xb
 7486 0327 3B       		.uleb128 0x3b
 7487 0328 0B       		.uleb128 0xb
 7488 0329 27       		.uleb128 0x27
 7489 032a 19       		.uleb128 0x19
 7490 032b 49       		.uleb128 0x49
 7491 032c 13       		.uleb128 0x13
 7492 032d 11       		.uleb128 0x11
 7493 032e 01       		.uleb128 0x1
 7494 032f 12       		.uleb128 0x12
 7495 0330 06       		.uleb128 0x6
 7496 0331 40       		.uleb128 0x40
 7497 0332 18       		.uleb128 0x18
 7498 0333 9742     		.uleb128 0x2117
 7499 0335 19       		.uleb128 0x19
 7500 0336 01       		.uleb128 0x1
 7501 0337 13       		.uleb128 0x13
 7502 0338 00       		.byte	0
 7503 0339 00       		.byte	0
 7504 033a 3A       		.uleb128 0x3a
 7505 033b 05       		.uleb128 0x5
 7506 033c 00       		.byte	0
 7507 033d 03       		.uleb128 0x3
 7508 033e 0E       		.uleb128 0xe
 7509 033f 3A       		.uleb128 0x3a
 7510 0340 0B       		.uleb128 0xb
 7511 0341 3B       		.uleb128 0x3b
 7512 0342 0B       		.uleb128 0xb
 7513 0343 49       		.uleb128 0x49
 7514 0344 13       		.uleb128 0x13
 7515 0345 02       		.uleb128 0x2
 7516 0346 17       		.uleb128 0x17
 7517 0347 00       		.byte	0
 7518 0348 00       		.byte	0
 7519 0349 3B       		.uleb128 0x3b
 7520 034a 34       		.uleb128 0x34
 7521 034b 00       		.byte	0
 7522 034c 03       		.uleb128 0x3
 7523 034d 0E       		.uleb128 0xe
 7524 034e 3A       		.uleb128 0x3a
 7525 034f 0B       		.uleb128 0xb
ARM GAS  /tmp/ccTYR2Ee.s 			page 173


 7526 0350 3B       		.uleb128 0x3b
 7527 0351 0B       		.uleb128 0xb
 7528 0352 49       		.uleb128 0x49
 7529 0353 13       		.uleb128 0x13
 7530 0354 02       		.uleb128 0x2
 7531 0355 17       		.uleb128 0x17
 7532 0356 00       		.byte	0
 7533 0357 00       		.byte	0
 7534 0358 3C       		.uleb128 0x3c
 7535 0359 2E       		.uleb128 0x2e
 7536 035a 01       		.byte	0x1
 7537 035b 3F       		.uleb128 0x3f
 7538 035c 19       		.uleb128 0x19
 7539 035d 03       		.uleb128 0x3
 7540 035e 0E       		.uleb128 0xe
 7541 035f 3A       		.uleb128 0x3a
 7542 0360 0B       		.uleb128 0xb
 7543 0361 3B       		.uleb128 0x3b
 7544 0362 0B       		.uleb128 0xb
 7545 0363 27       		.uleb128 0x27
 7546 0364 19       		.uleb128 0x19
 7547 0365 11       		.uleb128 0x11
 7548 0366 01       		.uleb128 0x1
 7549 0367 12       		.uleb128 0x12
 7550 0368 06       		.uleb128 0x6
 7551 0369 40       		.uleb128 0x40
 7552 036a 18       		.uleb128 0x18
 7553 036b 9742     		.uleb128 0x2117
 7554 036d 19       		.uleb128 0x19
 7555 036e 01       		.uleb128 0x1
 7556 036f 13       		.uleb128 0x13
 7557 0370 00       		.byte	0
 7558 0371 00       		.byte	0
 7559 0372 3D       		.uleb128 0x3d
 7560 0373 2E       		.uleb128 0x2e
 7561 0374 00       		.byte	0
 7562 0375 03       		.uleb128 0x3
 7563 0376 0E       		.uleb128 0xe
 7564 0377 3A       		.uleb128 0x3a
 7565 0378 0B       		.uleb128 0xb
 7566 0379 3B       		.uleb128 0x3b
 7567 037a 05       		.uleb128 0x5
 7568 037b 27       		.uleb128 0x27
 7569 037c 19       		.uleb128 0x19
 7570 037d 20       		.uleb128 0x20
 7571 037e 0B       		.uleb128 0xb
 7572 037f 00       		.byte	0
 7573 0380 00       		.byte	0
 7574 0381 3E       		.uleb128 0x3e
 7575 0382 2E       		.uleb128 0x2e
 7576 0383 00       		.byte	0
 7577 0384 31       		.uleb128 0x31
 7578 0385 13       		.uleb128 0x13
 7579 0386 11       		.uleb128 0x11
 7580 0387 01       		.uleb128 0x1
 7581 0388 12       		.uleb128 0x12
 7582 0389 06       		.uleb128 0x6
ARM GAS  /tmp/ccTYR2Ee.s 			page 174


 7583 038a 40       		.uleb128 0x40
 7584 038b 18       		.uleb128 0x18
 7585 038c 9742     		.uleb128 0x2117
 7586 038e 19       		.uleb128 0x19
 7587 038f 00       		.byte	0
 7588 0390 00       		.byte	0
 7589 0391 3F       		.uleb128 0x3f
 7590 0392 2E       		.uleb128 0x2e
 7591 0393 01       		.byte	0x1
 7592 0394 31       		.uleb128 0x31
 7593 0395 13       		.uleb128 0x13
 7594 0396 11       		.uleb128 0x11
 7595 0397 01       		.uleb128 0x1
 7596 0398 12       		.uleb128 0x12
 7597 0399 06       		.uleb128 0x6
 7598 039a 40       		.uleb128 0x40
 7599 039b 18       		.uleb128 0x18
 7600 039c 9742     		.uleb128 0x2117
 7601 039e 19       		.uleb128 0x19
 7602 039f 01       		.uleb128 0x1
 7603 03a0 13       		.uleb128 0x13
 7604 03a1 00       		.byte	0
 7605 03a2 00       		.byte	0
 7606 03a3 40       		.uleb128 0x40
 7607 03a4 0B       		.uleb128 0xb
 7608 03a5 01       		.byte	0x1
 7609 03a6 11       		.uleb128 0x11
 7610 03a7 01       		.uleb128 0x1
 7611 03a8 12       		.uleb128 0x12
 7612 03a9 06       		.uleb128 0x6
 7613 03aa 00       		.byte	0
 7614 03ab 00       		.byte	0
 7615 03ac 00       		.byte	0
 7616              		.section	.debug_loc,"",%progbits
 7617              	.Ldebug_loc0:
 7618              	.LLST55:
 7619 0000 00000000 		.4byte	.LVL207
 7620 0004 12000000 		.4byte	.LVL208
 7621 0008 0100     		.2byte	0x1
 7622 000a 50       		.byte	0x50
 7623 000b 12000000 		.4byte	.LVL208
 7624 000f 2A000000 		.4byte	.LVL211
 7625 0013 0400     		.2byte	0x4
 7626 0015 F3       		.byte	0xf3
 7627 0016 01       		.uleb128 0x1
 7628 0017 50       		.byte	0x50
 7629 0018 9F       		.byte	0x9f
 7630 0019 2A000000 		.4byte	.LVL211
 7631 001d 32000000 		.4byte	.LVL212
 7632 0021 0100     		.2byte	0x1
 7633 0023 50       		.byte	0x50
 7634 0024 32000000 		.4byte	.LVL212
 7635 0028 4C000000 		.4byte	.LVL213
 7636 002c 0100     		.2byte	0x1
 7637 002e 53       		.byte	0x53
 7638 002f 4C000000 		.4byte	.LVL213
 7639 0033 5A000000 		.4byte	.LVL215
ARM GAS  /tmp/ccTYR2Ee.s 			page 175


 7640 0037 0300     		.2byte	0x3
 7641 0039 70       		.byte	0x70
 7642 003a 60       		.sleb128 -32
 7643 003b 9F       		.byte	0x9f
 7644 003c 5A000000 		.4byte	.LVL215
 7645 0040 60000000 		.4byte	.LVL216
 7646 0044 0300     		.2byte	0x3
 7647 0046 73       		.byte	0x73
 7648 0047 07       		.sleb128 7
 7649 0048 9F       		.byte	0x9f
 7650 0049 60000000 		.4byte	.LVL216
 7651 004d 64000000 		.4byte	.LVL217
 7652 0051 0400     		.2byte	0x4
 7653 0053 F3       		.byte	0xf3
 7654 0054 01       		.uleb128 0x1
 7655 0055 50       		.byte	0x50
 7656 0056 9F       		.byte	0x9f
 7657 0057 64000000 		.4byte	.LVL217
 7658 005b 66000000 		.4byte	.LVL218
 7659 005f 0300     		.2byte	0x3
 7660 0061 70       		.byte	0x70
 7661 0062 60       		.sleb128 -32
 7662 0063 9F       		.byte	0x9f
 7663 0064 66000000 		.4byte	.LVL218
 7664 0068 6A000000 		.4byte	.LVL219
 7665 006c 0700     		.2byte	0x7
 7666 006e F3       		.byte	0xf3
 7667 006f 01       		.uleb128 0x1
 7668 0070 50       		.byte	0x50
 7669 0071 08       		.byte	0x8
 7670 0072 20       		.byte	0x20
 7671 0073 1C       		.byte	0x1c
 7672 0074 9F       		.byte	0x9f
 7673 0075 6A000000 		.4byte	.LVL219
 7674 0079 6E000000 		.4byte	.LVL220
 7675 007d 0400     		.2byte	0x4
 7676 007f F3       		.byte	0xf3
 7677 0080 01       		.uleb128 0x1
 7678 0081 50       		.byte	0x50
 7679 0082 9F       		.byte	0x9f
 7680 0083 6E000000 		.4byte	.LVL220
 7681 0087 70000000 		.4byte	.LVL221
 7682 008b 0300     		.2byte	0x3
 7683 008d 70       		.byte	0x70
 7684 008e 60       		.sleb128 -32
 7685 008f 9F       		.byte	0x9f
 7686 0090 70000000 		.4byte	.LVL221
 7687 0094 78000000 		.4byte	.LFE207
 7688 0098 0700     		.2byte	0x7
 7689 009a F3       		.byte	0xf3
 7690 009b 01       		.uleb128 0x1
 7691 009c 50       		.byte	0x50
 7692 009d 08       		.byte	0x8
 7693 009e 20       		.byte	0x20
 7694 009f 1C       		.byte	0x1c
 7695 00a0 9F       		.byte	0x9f
 7696 00a1 00000000 		.4byte	0
ARM GAS  /tmp/ccTYR2Ee.s 			page 176


 7697 00a5 00000000 		.4byte	0
 7698              	.LLST56:
 7699 00a9 22000000 		.4byte	.LVL209
 7700 00ad 26000000 		.4byte	.LVL210
 7701 00b1 0400     		.2byte	0x4
 7702 00b3 F3       		.byte	0xf3
 7703 00b4 01       		.uleb128 0x1
 7704 00b5 50       		.byte	0x50
 7705 00b6 9F       		.byte	0x9f
 7706 00b7 00000000 		.4byte	0
 7707 00bb 00000000 		.4byte	0
 7708              	.LLST57:
 7709 00bf 50000000 		.4byte	.LVL214
 7710 00c3 5A000000 		.4byte	.LVL215
 7711 00c7 0300     		.2byte	0x3
 7712 00c9 70       		.byte	0x70
 7713 00ca 60       		.sleb128 -32
 7714 00cb 9F       		.byte	0x9f
 7715 00cc 5A000000 		.4byte	.LVL215
 7716 00d0 60000000 		.4byte	.LVL216
 7717 00d4 0300     		.2byte	0x3
 7718 00d6 73       		.byte	0x73
 7719 00d7 07       		.sleb128 7
 7720 00d8 9F       		.byte	0x9f
 7721 00d9 00000000 		.4byte	0
 7722 00dd 00000000 		.4byte	0
 7723              	.LLST54:
 7724 00e1 04000000 		.4byte	.LVL203
 7725 00e5 08000000 		.4byte	.LVL204
 7726 00e9 0900     		.2byte	0x9
 7727 00eb 73       		.byte	0x73
 7728 00ec 00       		.sleb128 0
 7729 00ed 11       		.byte	0x11
 7730 00ee FFFFFF5F 		.sleb128 -67108865
 7731 00f2 1A       		.byte	0x1a
 7732 00f3 9F       		.byte	0x9f
 7733 00f4 08000000 		.4byte	.LVL204
 7734 00f8 0C000000 		.4byte	.LVL205
 7735 00fc 0100     		.2byte	0x1
 7736 00fe 53       		.byte	0x53
 7737 00ff 00000000 		.4byte	0
 7738 0103 00000000 		.4byte	0
 7739              	.LLST53:
 7740 0107 04000000 		.4byte	.LVL199
 7741 010b 08000000 		.4byte	.LVL200
 7742 010f 0900     		.2byte	0x9
 7743 0111 73       		.byte	0x73
 7744 0112 00       		.sleb128 0
 7745 0113 11       		.byte	0x11
 7746 0114 FFFFFF6F 		.sleb128 -33554433
 7747 0118 1A       		.byte	0x1a
 7748 0119 9F       		.byte	0x9f
 7749 011a 08000000 		.4byte	.LVL200
 7750 011e 0C000000 		.4byte	.LVL201
 7751 0122 0100     		.2byte	0x1
 7752 0124 53       		.byte	0x53
 7753 0125 00000000 		.4byte	0
ARM GAS  /tmp/ccTYR2Ee.s 			page 177


 7754 0129 00000000 		.4byte	0
 7755              	.LLST52:
 7756 012d 06000000 		.4byte	.LVL186
 7757 0131 14000000 		.4byte	.LVL189
 7758 0135 0100     		.2byte	0x1
 7759 0137 51       		.byte	0x51
 7760 0138 14000000 		.4byte	.LVL189
 7761 013c 18000000 		.4byte	.LVL190
 7762 0140 0300     		.2byte	0x3
 7763 0142 72       		.byte	0x72
 7764 0143 F000     		.sleb128 112
 7765 0145 22000000 		.4byte	.LVL191
 7766 0149 24000000 		.4byte	.LVL192
 7767 014d 0700     		.2byte	0x7
 7768 014f 0A       		.byte	0xa
 7769 0150 F401     		.2byte	0x1f4
 7770 0152 73       		.byte	0x73
 7771 0153 00       		.sleb128 0
 7772 0154 1C       		.byte	0x1c
 7773 0155 9F       		.byte	0x9f
 7774 0156 24000000 		.4byte	.LVL192
 7775 015a 26000000 		.4byte	.LVL193
 7776 015e 0700     		.2byte	0x7
 7777 0160 0A       		.byte	0xa
 7778 0161 F501     		.2byte	0x1f5
 7779 0163 73       		.byte	0x73
 7780 0164 00       		.sleb128 0
 7781 0165 1C       		.byte	0x1c
 7782 0166 9F       		.byte	0x9f
 7783 0167 26000000 		.4byte	.LVL193
 7784 016b 2A000000 		.4byte	.LVL194
 7785 016f 0700     		.2byte	0x7
 7786 0171 0A       		.byte	0xa
 7787 0172 F401     		.2byte	0x1f4
 7788 0174 73       		.byte	0x73
 7789 0175 00       		.sleb128 0
 7790 0176 1C       		.byte	0x1c
 7791 0177 9F       		.byte	0x9f
 7792 0178 32000000 		.4byte	.LVL195
 7793 017c 48000000 		.4byte	.LFE199
 7794 0180 0100     		.2byte	0x1
 7795 0182 53       		.byte	0x53
 7796 0183 00000000 		.4byte	0
 7797 0187 00000000 		.4byte	0
 7798              	.LLST51:
 7799 018b 00000000 		.4byte	.LVL182
 7800 018f 00000000 		.4byte	.LVL182
 7801 0193 0100     		.2byte	0x1
 7802 0195 50       		.byte	0x50
 7803 0196 00000000 		.4byte	.LVL182
 7804 019a 06000000 		.4byte	.LVL183
 7805 019e 0900     		.2byte	0x9
 7806 01a0 70       		.byte	0x70
 7807 01a1 00       		.sleb128 0
 7808 01a2 0C       		.byte	0xc
 7809 01a3 FFFF0700 		.4byte	0x7ffff
 7810 01a7 1A       		.byte	0x1a
ARM GAS  /tmp/ccTYR2Ee.s 			page 178


 7811 01a8 9F       		.byte	0x9f
 7812 01a9 06000000 		.4byte	.LVL183
 7813 01ad 14000000 		.4byte	.LFE196
 7814 01b1 0A00     		.2byte	0xa
 7815 01b3 F3       		.byte	0xf3
 7816 01b4 01       		.uleb128 0x1
 7817 01b5 50       		.byte	0x50
 7818 01b6 0C       		.byte	0xc
 7819 01b7 FFFF0700 		.4byte	0x7ffff
 7820 01bb 1A       		.byte	0x1a
 7821 01bc 9F       		.byte	0x9f
 7822 01bd 00000000 		.4byte	0
 7823 01c1 00000000 		.4byte	0
 7824              	.LLST50:
 7825 01c5 00000000 		.4byte	.LVL180
 7826 01c9 00000000 		.4byte	.LVL180
 7827 01cd 0100     		.2byte	0x1
 7828 01cf 50       		.byte	0x50
 7829 01d0 00000000 		.4byte	.LVL180
 7830 01d4 06000000 		.4byte	.LVL181
 7831 01d8 0900     		.2byte	0x9
 7832 01da 70       		.byte	0x70
 7833 01db 00       		.sleb128 0
 7834 01dc 0C       		.byte	0xc
 7835 01dd FFFF0700 		.4byte	0x7ffff
 7836 01e1 1A       		.byte	0x1a
 7837 01e2 9F       		.byte	0x9f
 7838 01e3 06000000 		.4byte	.LVL181
 7839 01e7 14000000 		.4byte	.LFE195
 7840 01eb 0A00     		.2byte	0xa
 7841 01ed F3       		.byte	0xf3
 7842 01ee 01       		.uleb128 0x1
 7843 01ef 50       		.byte	0x50
 7844 01f0 0C       		.byte	0xc
 7845 01f1 FFFF0700 		.4byte	0x7ffff
 7846 01f5 1A       		.byte	0x1a
 7847 01f6 9F       		.byte	0x9f
 7848 01f7 00000000 		.4byte	0
 7849 01fb 00000000 		.4byte	0
 7850              	.LLST49:
 7851 01ff 00000000 		.4byte	.LVL176
 7852 0203 02000000 		.4byte	.LVL177
 7853 0207 0100     		.2byte	0x1
 7854 0209 50       		.byte	0x50
 7855 020a 02000000 		.4byte	.LVL177
 7856 020e 14000000 		.4byte	.LFE188
 7857 0212 0400     		.2byte	0x4
 7858 0214 F3       		.byte	0xf3
 7859 0215 01       		.uleb128 0x1
 7860 0216 50       		.byte	0x50
 7861 0217 9F       		.byte	0x9f
 7862 0218 00000000 		.4byte	0
 7863 021c 00000000 		.4byte	0
 7864              	.LLST48:
 7865 0220 00000000 		.4byte	.LVL174
 7866 0224 02000000 		.4byte	.LVL175
 7867 0228 0100     		.2byte	0x1
ARM GAS  /tmp/ccTYR2Ee.s 			page 179


 7868 022a 50       		.byte	0x50
 7869 022b 02000000 		.4byte	.LVL175
 7870 022f 10000000 		.4byte	.LFE187
 7871 0233 0400     		.2byte	0x4
 7872 0235 F3       		.byte	0xf3
 7873 0236 01       		.uleb128 0x1
 7874 0237 50       		.byte	0x50
 7875 0238 9F       		.byte	0x9f
 7876 0239 00000000 		.4byte	0
 7877 023d 00000000 		.4byte	0
 7878              	.LLST47:
 7879 0241 00000000 		.4byte	.LVL170
 7880 0245 0E000000 		.4byte	.LVL171
 7881 0249 0100     		.2byte	0x1
 7882 024b 50       		.byte	0x50
 7883 024c 0E000000 		.4byte	.LVL171
 7884 0250 14000000 		.4byte	.LVL172
 7885 0254 0400     		.2byte	0x4
 7886 0256 F3       		.byte	0xf3
 7887 0257 01       		.uleb128 0x1
 7888 0258 50       		.byte	0x50
 7889 0259 9F       		.byte	0x9f
 7890 025a 14000000 		.4byte	.LVL172
 7891 025e 16000000 		.4byte	.LVL173
 7892 0262 0100     		.2byte	0x1
 7893 0264 50       		.byte	0x50
 7894 0265 16000000 		.4byte	.LVL173
 7895 0269 1C000000 		.4byte	.LFE186
 7896 026d 0400     		.2byte	0x4
 7897 026f F3       		.byte	0xf3
 7898 0270 01       		.uleb128 0x1
 7899 0271 50       		.byte	0x50
 7900 0272 9F       		.byte	0x9f
 7901 0273 00000000 		.4byte	0
 7902 0277 00000000 		.4byte	0
 7903              	.LLST46:
 7904 027b 00000000 		.4byte	.LVL168
 7905 027f 0A000000 		.4byte	.LVL169
 7906 0283 0100     		.2byte	0x1
 7907 0285 50       		.byte	0x50
 7908 0286 0A000000 		.4byte	.LVL169
 7909 028a 14000000 		.4byte	.LFE183
 7910 028e 0400     		.2byte	0x4
 7911 0290 F3       		.byte	0xf3
 7912 0291 01       		.uleb128 0x1
 7913 0292 50       		.byte	0x50
 7914 0293 9F       		.byte	0x9f
 7915 0294 00000000 		.4byte	0
 7916 0298 00000000 		.4byte	0
 7917              	.LLST45:
 7918 029c 00000000 		.4byte	.LVL166
 7919 02a0 0A000000 		.4byte	.LVL167
 7920 02a4 0100     		.2byte	0x1
 7921 02a6 50       		.byte	0x50
 7922 02a7 0A000000 		.4byte	.LVL167
 7923 02ab 14000000 		.4byte	.LFE182
 7924 02af 0400     		.2byte	0x4
ARM GAS  /tmp/ccTYR2Ee.s 			page 180


 7925 02b1 F3       		.byte	0xf3
 7926 02b2 01       		.uleb128 0x1
 7927 02b3 50       		.byte	0x50
 7928 02b4 9F       		.byte	0x9f
 7929 02b5 00000000 		.4byte	0
 7930 02b9 00000000 		.4byte	0
 7931              	.LLST42:
 7932 02bd 00000000 		.4byte	.LVL157
 7933 02c1 14000000 		.4byte	.LVL159
 7934 02c5 0100     		.2byte	0x1
 7935 02c7 50       		.byte	0x50
 7936 02c8 14000000 		.4byte	.LVL159
 7937 02cc 24000000 		.4byte	.LVL161
 7938 02d0 0300     		.2byte	0x3
 7939 02d2 72       		.byte	0x72
 7940 02d3 70       		.sleb128 -16
 7941 02d4 9F       		.byte	0x9f
 7942 02d5 24000000 		.4byte	.LVL161
 7943 02d9 44000000 		.4byte	.LFE181
 7944 02dd 0400     		.2byte	0x4
 7945 02df F3       		.byte	0xf3
 7946 02e0 01       		.uleb128 0x1
 7947 02e1 50       		.byte	0x50
 7948 02e2 9F       		.byte	0x9f
 7949 02e3 00000000 		.4byte	0
 7950 02e7 00000000 		.4byte	0
 7951              	.LLST43:
 7952 02eb 00000000 		.4byte	.LVL157
 7953 02ef 10000000 		.4byte	.LVL158
 7954 02f3 0100     		.2byte	0x1
 7955 02f5 51       		.byte	0x51
 7956 02f6 10000000 		.4byte	.LVL158
 7957 02fa 44000000 		.4byte	.LFE181
 7958 02fe 0400     		.2byte	0x4
 7959 0300 F3       		.byte	0xf3
 7960 0301 01       		.uleb128 0x1
 7961 0302 51       		.byte	0x51
 7962 0303 9F       		.byte	0x9f
 7963 0304 00000000 		.4byte	0
 7964 0308 00000000 		.4byte	0
 7965              	.LLST44:
 7966 030c 18000000 		.4byte	.LVL160
 7967 0310 24000000 		.4byte	.LVL161
 7968 0314 0400     		.2byte	0x4
 7969 0316 0A       		.byte	0xa
 7970 0317 0010     		.2byte	0x1000
 7971 0319 9F       		.byte	0x9f
 7972 031a 24000000 		.4byte	.LVL161
 7973 031e 26000000 		.4byte	.LVL162
 7974 0322 0300     		.2byte	0x3
 7975 0324 73       		.byte	0x73
 7976 0325 7F       		.sleb128 -1
 7977 0326 9F       		.byte	0x9f
 7978 0327 26000000 		.4byte	.LVL162
 7979 032b 28000000 		.4byte	.LVL163
 7980 032f 0100     		.2byte	0x1
 7981 0331 53       		.byte	0x53
ARM GAS  /tmp/ccTYR2Ee.s 			page 181


 7982 0332 28000000 		.4byte	.LVL163
 7983 0336 2E000000 		.4byte	.LVL164
 7984 033a 0300     		.2byte	0x3
 7985 033c 73       		.byte	0x73
 7986 033d 7F       		.sleb128 -1
 7987 033e 9F       		.byte	0x9f
 7988 033f 36000000 		.4byte	.LVL165
 7989 0343 44000000 		.4byte	.LFE181
 7990 0347 0100     		.2byte	0x1
 7991 0349 53       		.byte	0x53
 7992 034a 00000000 		.4byte	0
 7993 034e 00000000 		.4byte	0
 7994              	.LLST39:
 7995 0352 00000000 		.4byte	.LVL148
 7996 0356 14000000 		.4byte	.LVL150
 7997 035a 0100     		.2byte	0x1
 7998 035c 50       		.byte	0x50
 7999 035d 14000000 		.4byte	.LVL150
 8000 0361 24000000 		.4byte	.LVL152
 8001 0365 0300     		.2byte	0x3
 8002 0367 72       		.byte	0x72
 8003 0368 70       		.sleb128 -16
 8004 0369 9F       		.byte	0x9f
 8005 036a 24000000 		.4byte	.LVL152
 8006 036e 44000000 		.4byte	.LFE180
 8007 0372 0400     		.2byte	0x4
 8008 0374 F3       		.byte	0xf3
 8009 0375 01       		.uleb128 0x1
 8010 0376 50       		.byte	0x50
 8011 0377 9F       		.byte	0x9f
 8012 0378 00000000 		.4byte	0
 8013 037c 00000000 		.4byte	0
 8014              	.LLST40:
 8015 0380 00000000 		.4byte	.LVL148
 8016 0384 10000000 		.4byte	.LVL149
 8017 0388 0100     		.2byte	0x1
 8018 038a 51       		.byte	0x51
 8019 038b 10000000 		.4byte	.LVL149
 8020 038f 44000000 		.4byte	.LFE180
 8021 0393 0400     		.2byte	0x4
 8022 0395 F3       		.byte	0xf3
 8023 0396 01       		.uleb128 0x1
 8024 0397 51       		.byte	0x51
 8025 0398 9F       		.byte	0x9f
 8026 0399 00000000 		.4byte	0
 8027 039d 00000000 		.4byte	0
 8028              	.LLST41:
 8029 03a1 18000000 		.4byte	.LVL151
 8030 03a5 24000000 		.4byte	.LVL152
 8031 03a9 0400     		.2byte	0x4
 8032 03ab 0A       		.byte	0xa
 8033 03ac 0010     		.2byte	0x1000
 8034 03ae 9F       		.byte	0x9f
 8035 03af 24000000 		.4byte	.LVL152
 8036 03b3 26000000 		.4byte	.LVL153
 8037 03b7 0300     		.2byte	0x3
 8038 03b9 73       		.byte	0x73
ARM GAS  /tmp/ccTYR2Ee.s 			page 182


 8039 03ba 7F       		.sleb128 -1
 8040 03bb 9F       		.byte	0x9f
 8041 03bc 26000000 		.4byte	.LVL153
 8042 03c0 28000000 		.4byte	.LVL154
 8043 03c4 0100     		.2byte	0x1
 8044 03c6 53       		.byte	0x53
 8045 03c7 28000000 		.4byte	.LVL154
 8046 03cb 2E000000 		.4byte	.LVL155
 8047 03cf 0300     		.2byte	0x3
 8048 03d1 73       		.byte	0x73
 8049 03d2 7F       		.sleb128 -1
 8050 03d3 9F       		.byte	0x9f
 8051 03d4 36000000 		.4byte	.LVL156
 8052 03d8 44000000 		.4byte	.LFE180
 8053 03dc 0100     		.2byte	0x1
 8054 03de 53       		.byte	0x53
 8055 03df 00000000 		.4byte	0
 8056 03e3 00000000 		.4byte	0
 8057              	.LLST36:
 8058 03e7 00000000 		.4byte	.LVL139
 8059 03eb 14000000 		.4byte	.LVL141
 8060 03ef 0100     		.2byte	0x1
 8061 03f1 50       		.byte	0x50
 8062 03f2 14000000 		.4byte	.LVL141
 8063 03f6 24000000 		.4byte	.LVL143
 8064 03fa 0300     		.2byte	0x3
 8065 03fc 72       		.byte	0x72
 8066 03fd 70       		.sleb128 -16
 8067 03fe 9F       		.byte	0x9f
 8068 03ff 24000000 		.4byte	.LVL143
 8069 0403 44000000 		.4byte	.LFE179
 8070 0407 0400     		.2byte	0x4
 8071 0409 F3       		.byte	0xf3
 8072 040a 01       		.uleb128 0x1
 8073 040b 50       		.byte	0x50
 8074 040c 9F       		.byte	0x9f
 8075 040d 00000000 		.4byte	0
 8076 0411 00000000 		.4byte	0
 8077              	.LLST37:
 8078 0415 00000000 		.4byte	.LVL139
 8079 0419 10000000 		.4byte	.LVL140
 8080 041d 0100     		.2byte	0x1
 8081 041f 51       		.byte	0x51
 8082 0420 10000000 		.4byte	.LVL140
 8083 0424 44000000 		.4byte	.LFE179
 8084 0428 0400     		.2byte	0x4
 8085 042a F3       		.byte	0xf3
 8086 042b 01       		.uleb128 0x1
 8087 042c 51       		.byte	0x51
 8088 042d 9F       		.byte	0x9f
 8089 042e 00000000 		.4byte	0
 8090 0432 00000000 		.4byte	0
 8091              	.LLST38:
 8092 0436 18000000 		.4byte	.LVL142
 8093 043a 24000000 		.4byte	.LVL143
 8094 043e 0400     		.2byte	0x4
 8095 0440 0A       		.byte	0xa
ARM GAS  /tmp/ccTYR2Ee.s 			page 183


 8096 0441 0010     		.2byte	0x1000
 8097 0443 9F       		.byte	0x9f
 8098 0444 24000000 		.4byte	.LVL143
 8099 0448 26000000 		.4byte	.LVL144
 8100 044c 0300     		.2byte	0x3
 8101 044e 73       		.byte	0x73
 8102 044f 7F       		.sleb128 -1
 8103 0450 9F       		.byte	0x9f
 8104 0451 26000000 		.4byte	.LVL144
 8105 0455 28000000 		.4byte	.LVL145
 8106 0459 0100     		.2byte	0x1
 8107 045b 53       		.byte	0x53
 8108 045c 28000000 		.4byte	.LVL145
 8109 0460 2E000000 		.4byte	.LVL146
 8110 0464 0300     		.2byte	0x3
 8111 0466 73       		.byte	0x73
 8112 0467 7F       		.sleb128 -1
 8113 0468 9F       		.byte	0x9f
 8114 0469 36000000 		.4byte	.LVL147
 8115 046d 44000000 		.4byte	.LFE179
 8116 0471 0100     		.2byte	0x1
 8117 0473 53       		.byte	0x53
 8118 0474 00000000 		.4byte	0
 8119 0478 00000000 		.4byte	0
 8120              	.LLST33:
 8121 047c 00000000 		.4byte	.LVL130
 8122 0480 14000000 		.4byte	.LVL132
 8123 0484 0100     		.2byte	0x1
 8124 0486 50       		.byte	0x50
 8125 0487 14000000 		.4byte	.LVL132
 8126 048b 24000000 		.4byte	.LVL134
 8127 048f 0300     		.2byte	0x3
 8128 0491 72       		.byte	0x72
 8129 0492 70       		.sleb128 -16
 8130 0493 9F       		.byte	0x9f
 8131 0494 24000000 		.4byte	.LVL134
 8132 0498 44000000 		.4byte	.LFE178
 8133 049c 0400     		.2byte	0x4
 8134 049e F3       		.byte	0xf3
 8135 049f 01       		.uleb128 0x1
 8136 04a0 50       		.byte	0x50
 8137 04a1 9F       		.byte	0x9f
 8138 04a2 00000000 		.4byte	0
 8139 04a6 00000000 		.4byte	0
 8140              	.LLST34:
 8141 04aa 00000000 		.4byte	.LVL130
 8142 04ae 10000000 		.4byte	.LVL131
 8143 04b2 0100     		.2byte	0x1
 8144 04b4 51       		.byte	0x51
 8145 04b5 10000000 		.4byte	.LVL131
 8146 04b9 44000000 		.4byte	.LFE178
 8147 04bd 0400     		.2byte	0x4
 8148 04bf F3       		.byte	0xf3
 8149 04c0 01       		.uleb128 0x1
 8150 04c1 51       		.byte	0x51
 8151 04c2 9F       		.byte	0x9f
 8152 04c3 00000000 		.4byte	0
ARM GAS  /tmp/ccTYR2Ee.s 			page 184


 8153 04c7 00000000 		.4byte	0
 8154              	.LLST35:
 8155 04cb 18000000 		.4byte	.LVL133
 8156 04cf 24000000 		.4byte	.LVL134
 8157 04d3 0400     		.2byte	0x4
 8158 04d5 0A       		.byte	0xa
 8159 04d6 0010     		.2byte	0x1000
 8160 04d8 9F       		.byte	0x9f
 8161 04d9 24000000 		.4byte	.LVL134
 8162 04dd 26000000 		.4byte	.LVL135
 8163 04e1 0300     		.2byte	0x3
 8164 04e3 73       		.byte	0x73
 8165 04e4 7F       		.sleb128 -1
 8166 04e5 9F       		.byte	0x9f
 8167 04e6 26000000 		.4byte	.LVL135
 8168 04ea 28000000 		.4byte	.LVL136
 8169 04ee 0100     		.2byte	0x1
 8170 04f0 53       		.byte	0x53
 8171 04f1 28000000 		.4byte	.LVL136
 8172 04f5 2E000000 		.4byte	.LVL137
 8173 04f9 0300     		.2byte	0x3
 8174 04fb 73       		.byte	0x73
 8175 04fc 7F       		.sleb128 -1
 8176 04fd 9F       		.byte	0x9f
 8177 04fe 36000000 		.4byte	.LVL138
 8178 0502 44000000 		.4byte	.LFE178
 8179 0506 0100     		.2byte	0x1
 8180 0508 53       		.byte	0x53
 8181 0509 00000000 		.4byte	0
 8182 050d 00000000 		.4byte	0
 8183              	.LLST30:
 8184 0511 00000000 		.4byte	.LVL119
 8185 0515 10000000 		.4byte	.LVL120
 8186 0519 0100     		.2byte	0x1
 8187 051b 50       		.byte	0x50
 8188 051c 10000000 		.4byte	.LVL120
 8189 0520 32000000 		.4byte	.LVL127
 8190 0524 0300     		.2byte	0x3
 8191 0526 74       		.byte	0x74
 8192 0527 70       		.sleb128 -16
 8193 0528 9F       		.byte	0x9f
 8194 0529 32000000 		.4byte	.LVL127
 8195 052d 40000000 		.4byte	.LFE177
 8196 0531 0400     		.2byte	0x4
 8197 0533 F3       		.byte	0xf3
 8198 0534 01       		.uleb128 0x1
 8199 0535 50       		.byte	0x50
 8200 0536 9F       		.byte	0x9f
 8201 0537 00000000 		.4byte	0
 8202 053b 00000000 		.4byte	0
 8203              	.LLST31:
 8204 053f 00000000 		.4byte	.LVL119
 8205 0543 1C000000 		.4byte	.LVL122
 8206 0547 0100     		.2byte	0x1
 8207 0549 51       		.byte	0x51
 8208 054a 1C000000 		.4byte	.LVL122
 8209 054e 2C000000 		.4byte	.LVL126
ARM GAS  /tmp/ccTYR2Ee.s 			page 185


 8210 0552 0700     		.2byte	0x7
 8211 0554 74       		.byte	0x74
 8212 0555 00       		.sleb128 0
 8213 0556 32       		.byte	0x32
 8214 0557 24       		.byte	0x24
 8215 0558 71       		.byte	0x71
 8216 0559 00       		.sleb128 0
 8217 055a 22       		.byte	0x22
 8218 055b 2C000000 		.4byte	.LVL126
 8219 055f 32000000 		.4byte	.LVL127
 8220 0563 0A00     		.2byte	0xa
 8221 0565 74       		.byte	0x74
 8222 0566 00       		.sleb128 0
 8223 0567 32       		.byte	0x32
 8224 0568 24       		.byte	0x24
 8225 0569 23       		.byte	0x23
 8226 056a 808CB880 		.uleb128 0x400e0600
 8226      04
 8227 056f 32000000 		.4byte	.LVL127
 8228 0573 34000000 		.4byte	.LVL128
 8229 0577 0D00     		.2byte	0xd
 8230 0579 F3       		.byte	0xf3
 8231 057a 01       		.uleb128 0x1
 8232 057b 50       		.byte	0x50
 8233 057c 23       		.byte	0x23
 8234 057d 10       		.uleb128 0x10
 8235 057e 32       		.byte	0x32
 8236 057f 24       		.byte	0x24
 8237 0580 23       		.byte	0x23
 8238 0581 808CB880 		.uleb128 0x400e0600
 8238      04
 8239 0586 34000000 		.4byte	.LVL128
 8240 058a 3A000000 		.4byte	.LVL129
 8241 058e 0700     		.2byte	0x7
 8242 0590 74       		.byte	0x74
 8243 0591 00       		.sleb128 0
 8244 0592 32       		.byte	0x32
 8245 0593 24       		.byte	0x24
 8246 0594 71       		.byte	0x71
 8247 0595 00       		.sleb128 0
 8248 0596 22       		.byte	0x22
 8249 0597 3A000000 		.4byte	.LVL129
 8250 059b 40000000 		.4byte	.LFE177
 8251 059f 0A00     		.2byte	0xa
 8252 05a1 F3       		.byte	0xf3
 8253 05a2 01       		.uleb128 0x1
 8254 05a3 50       		.byte	0x50
 8255 05a4 23       		.byte	0x23
 8256 05a5 10       		.uleb128 0x10
 8257 05a6 32       		.byte	0x32
 8258 05a7 24       		.byte	0x24
 8259 05a8 71       		.byte	0x71
 8260 05a9 00       		.sleb128 0
 8261 05aa 22       		.byte	0x22
 8262 05ab 00000000 		.4byte	0
 8263 05af 00000000 		.4byte	0
 8264              	.LLST32:
ARM GAS  /tmp/ccTYR2Ee.s 			page 186


 8265 05b3 14000000 		.4byte	.LVL121
 8266 05b7 22000000 		.4byte	.LVL123
 8267 05bb 0400     		.2byte	0x4
 8268 05bd 0A       		.byte	0xa
 8269 05be 0010     		.2byte	0x1000
 8270 05c0 9F       		.byte	0x9f
 8271 05c1 22000000 		.4byte	.LVL123
 8272 05c5 24000000 		.4byte	.LVL124
 8273 05c9 0300     		.2byte	0x3
 8274 05cb 73       		.byte	0x73
 8275 05cc 7F       		.sleb128 -1
 8276 05cd 9F       		.byte	0x9f
 8277 05ce 24000000 		.4byte	.LVL124
 8278 05d2 26000000 		.4byte	.LVL125
 8279 05d6 0100     		.2byte	0x1
 8280 05d8 53       		.byte	0x53
 8281 05d9 26000000 		.4byte	.LVL125
 8282 05dd 2C000000 		.4byte	.LVL126
 8283 05e1 0300     		.2byte	0x3
 8284 05e3 73       		.byte	0x73
 8285 05e4 7F       		.sleb128 -1
 8286 05e5 9F       		.byte	0x9f
 8287 05e6 34000000 		.4byte	.LVL128
 8288 05ea 40000000 		.4byte	.LFE177
 8289 05ee 0100     		.2byte	0x1
 8290 05f0 53       		.byte	0x53
 8291 05f1 00000000 		.4byte	0
 8292 05f5 00000000 		.4byte	0
 8293              	.LLST28:
 8294 05f9 00000000 		.4byte	.LVL116
 8295 05fd 10000000 		.4byte	.LVL117
 8296 0601 0100     		.2byte	0x1
 8297 0603 50       		.byte	0x50
 8298 0604 10000000 		.4byte	.LVL117
 8299 0608 34000000 		.4byte	.LFE176
 8300 060c 0400     		.2byte	0x4
 8301 060e F3       		.byte	0xf3
 8302 060f 01       		.uleb128 0x1
 8303 0610 50       		.byte	0x50
 8304 0611 9F       		.byte	0x9f
 8305 0612 00000000 		.4byte	0
 8306 0616 00000000 		.4byte	0
 8307              	.LLST29:
 8308 061a 00000000 		.4byte	.LVL116
 8309 061e 18000000 		.4byte	.LVL118
 8310 0622 0100     		.2byte	0x1
 8311 0624 51       		.byte	0x51
 8312 0625 18000000 		.4byte	.LVL118
 8313 0629 34000000 		.4byte	.LFE176
 8314 062d 0400     		.2byte	0x4
 8315 062f F3       		.byte	0xf3
 8316 0630 01       		.uleb128 0x1
 8317 0631 51       		.byte	0x51
 8318 0632 9F       		.byte	0x9f
 8319 0633 00000000 		.4byte	0
 8320 0637 00000000 		.4byte	0
 8321              	.LLST26:
ARM GAS  /tmp/ccTYR2Ee.s 			page 187


 8322 063b 00000000 		.4byte	.LVL113
 8323 063f 10000000 		.4byte	.LVL114
 8324 0643 0100     		.2byte	0x1
 8325 0645 50       		.byte	0x50
 8326 0646 10000000 		.4byte	.LVL114
 8327 064a 34000000 		.4byte	.LFE175
 8328 064e 0400     		.2byte	0x4
 8329 0650 F3       		.byte	0xf3
 8330 0651 01       		.uleb128 0x1
 8331 0652 50       		.byte	0x50
 8332 0653 9F       		.byte	0x9f
 8333 0654 00000000 		.4byte	0
 8334 0658 00000000 		.4byte	0
 8335              	.LLST27:
 8336 065c 00000000 		.4byte	.LVL113
 8337 0660 18000000 		.4byte	.LVL115
 8338 0664 0100     		.2byte	0x1
 8339 0666 51       		.byte	0x51
 8340 0667 18000000 		.4byte	.LVL115
 8341 066b 34000000 		.4byte	.LFE175
 8342 066f 0400     		.2byte	0x4
 8343 0671 F3       		.byte	0xf3
 8344 0672 01       		.uleb128 0x1
 8345 0673 51       		.byte	0x51
 8346 0674 9F       		.byte	0x9f
 8347 0675 00000000 		.4byte	0
 8348 0679 00000000 		.4byte	0
 8349              	.LLST25:
 8350 067d 00000000 		.4byte	.LVL106
 8351 0681 10000000 		.4byte	.LVL107
 8352 0685 0100     		.2byte	0x1
 8353 0687 50       		.byte	0x50
 8354 0688 10000000 		.4byte	.LVL107
 8355 068c 1C000000 		.4byte	.LVL108
 8356 0690 0400     		.2byte	0x4
 8357 0692 F3       		.byte	0xf3
 8358 0693 01       		.uleb128 0x1
 8359 0694 50       		.byte	0x50
 8360 0695 9F       		.byte	0x9f
 8361 0696 1C000000 		.4byte	.LVL108
 8362 069a 22000000 		.4byte	.LVL109
 8363 069e 0300     		.2byte	0x3
 8364 06a0 70       		.byte	0x70
 8365 06a1 60       		.sleb128 -32
 8366 06a2 9F       		.byte	0x9f
 8367 06a3 22000000 		.4byte	.LVL109
 8368 06a7 26000000 		.4byte	.LVL110
 8369 06ab 0100     		.2byte	0x1
 8370 06ad 50       		.byte	0x50
 8371 06ae 26000000 		.4byte	.LVL110
 8372 06b2 34000000 		.4byte	.LVL111
 8373 06b6 0700     		.2byte	0x7
 8374 06b8 F3       		.byte	0xf3
 8375 06b9 01       		.uleb128 0x1
 8376 06ba 50       		.byte	0x50
 8377 06bb 08       		.byte	0x8
 8378 06bc 20       		.byte	0x20
ARM GAS  /tmp/ccTYR2Ee.s 			page 188


 8379 06bd 1C       		.byte	0x1c
 8380 06be 9F       		.byte	0x9f
 8381 06bf 34000000 		.4byte	.LVL111
 8382 06c3 36000000 		.4byte	.LVL112
 8383 06c7 0100     		.2byte	0x1
 8384 06c9 50       		.byte	0x50
 8385 06ca 36000000 		.4byte	.LVL112
 8386 06ce 3C000000 		.4byte	.LFE174
 8387 06d2 0400     		.2byte	0x4
 8388 06d4 F3       		.byte	0xf3
 8389 06d5 01       		.uleb128 0x1
 8390 06d6 50       		.byte	0x50
 8391 06d7 9F       		.byte	0x9f
 8392 06d8 00000000 		.4byte	0
 8393 06dc 00000000 		.4byte	0
 8394              	.LLST24:
 8395 06e0 00000000 		.4byte	.LVL98
 8396 06e4 10000000 		.4byte	.LVL99
 8397 06e8 0100     		.2byte	0x1
 8398 06ea 50       		.byte	0x50
 8399 06eb 10000000 		.4byte	.LVL99
 8400 06ef 18000000 		.4byte	.LVL100
 8401 06f3 0400     		.2byte	0x4
 8402 06f5 F3       		.byte	0xf3
 8403 06f6 01       		.uleb128 0x1
 8404 06f7 50       		.byte	0x50
 8405 06f8 9F       		.byte	0x9f
 8406 06f9 1C000000 		.4byte	.LVL101
 8407 06fd 26000000 		.4byte	.LVL103
 8408 0701 0100     		.2byte	0x1
 8409 0703 50       		.byte	0x50
 8410 0704 26000000 		.4byte	.LVL103
 8411 0708 38000000 		.4byte	.LVL104
 8412 070c 0700     		.2byte	0x7
 8413 070e F3       		.byte	0xf3
 8414 070f 01       		.uleb128 0x1
 8415 0710 50       		.byte	0x50
 8416 0711 08       		.byte	0x8
 8417 0712 20       		.byte	0x20
 8418 0713 1C       		.byte	0x1c
 8419 0714 9F       		.byte	0x9f
 8420 0715 38000000 		.4byte	.LVL104
 8421 0719 3A000000 		.4byte	.LVL105
 8422 071d 0100     		.2byte	0x1
 8423 071f 50       		.byte	0x50
 8424 0720 3A000000 		.4byte	.LVL105
 8425 0724 48000000 		.4byte	.LFE171
 8426 0728 0400     		.2byte	0x4
 8427 072a F3       		.byte	0xf3
 8428 072b 01       		.uleb128 0x1
 8429 072c 50       		.byte	0x50
 8430 072d 9F       		.byte	0x9f
 8431 072e 00000000 		.4byte	0
 8432 0732 00000000 		.4byte	0
 8433              	.LLST23:
 8434 0736 00000000 		.4byte	.LVL90
 8435 073a 10000000 		.4byte	.LVL91
ARM GAS  /tmp/ccTYR2Ee.s 			page 189


 8436 073e 0100     		.2byte	0x1
 8437 0740 50       		.byte	0x50
 8438 0741 10000000 		.4byte	.LVL91
 8439 0745 1E000000 		.4byte	.LVL92
 8440 0749 0400     		.2byte	0x4
 8441 074b F3       		.byte	0xf3
 8442 074c 01       		.uleb128 0x1
 8443 074d 50       		.byte	0x50
 8444 074e 9F       		.byte	0x9f
 8445 074f 1E000000 		.4byte	.LVL92
 8446 0753 28000000 		.4byte	.LVL94
 8447 0757 0100     		.2byte	0x1
 8448 0759 50       		.byte	0x50
 8449 075a 28000000 		.4byte	.LVL94
 8450 075e 3A000000 		.4byte	.LVL95
 8451 0762 0700     		.2byte	0x7
 8452 0764 F3       		.byte	0xf3
 8453 0765 01       		.uleb128 0x1
 8454 0766 50       		.byte	0x50
 8455 0767 08       		.byte	0x8
 8456 0768 20       		.byte	0x20
 8457 0769 1C       		.byte	0x1c
 8458 076a 9F       		.byte	0x9f
 8459 076b 3A000000 		.4byte	.LVL95
 8460 076f 3C000000 		.4byte	.LVL96
 8461 0773 0100     		.2byte	0x1
 8462 0775 50       		.byte	0x50
 8463 0776 3C000000 		.4byte	.LVL96
 8464 077a 3E000000 		.4byte	.LVL97
 8465 077e 0400     		.2byte	0x4
 8466 0780 F3       		.byte	0xf3
 8467 0781 01       		.uleb128 0x1
 8468 0782 50       		.byte	0x50
 8469 0783 9F       		.byte	0x9f
 8470 0784 00000000 		.4byte	0
 8471 0788 00000000 		.4byte	0
 8472              	.LLST20:
 8473 078c 00000000 		.4byte	.LVL86
 8474 0790 08000000 		.4byte	.LVL88
 8475 0794 0100     		.2byte	0x1
 8476 0796 50       		.byte	0x50
 8477 0797 08000000 		.4byte	.LVL88
 8478 079b 38000000 		.4byte	.LFE164
 8479 079f 0400     		.2byte	0x4
 8480 07a1 F3       		.byte	0xf3
 8481 07a2 01       		.uleb128 0x1
 8482 07a3 50       		.byte	0x50
 8483 07a4 9F       		.byte	0x9f
 8484 07a5 00000000 		.4byte	0
 8485 07a9 00000000 		.4byte	0
 8486              	.LLST21:
 8487 07ad 00000000 		.4byte	.LVL86
 8488 07b1 04000000 		.4byte	.LVL87
 8489 07b5 0100     		.2byte	0x1
 8490 07b7 51       		.byte	0x51
 8491 07b8 04000000 		.4byte	.LVL87
 8492 07bc 38000000 		.4byte	.LFE164
ARM GAS  /tmp/ccTYR2Ee.s 			page 190


 8493 07c0 0400     		.2byte	0x4
 8494 07c2 F3       		.byte	0xf3
 8495 07c3 01       		.uleb128 0x1
 8496 07c4 51       		.byte	0x51
 8497 07c5 9F       		.byte	0x9f
 8498 07c6 00000000 		.4byte	0
 8499 07ca 00000000 		.4byte	0
 8500              	.LLST22:
 8501 07ce 00000000 		.4byte	.LVL86
 8502 07d2 18000000 		.4byte	.LVL89
 8503 07d6 0100     		.2byte	0x1
 8504 07d8 52       		.byte	0x52
 8505 07d9 18000000 		.4byte	.LVL89
 8506 07dd 38000000 		.4byte	.LFE164
 8507 07e1 0400     		.2byte	0x4
 8508 07e3 F3       		.byte	0xf3
 8509 07e4 01       		.uleb128 0x1
 8510 07e5 52       		.byte	0x52
 8511 07e6 9F       		.byte	0x9f
 8512 07e7 00000000 		.4byte	0
 8513 07eb 00000000 		.4byte	0
 8514              	.LLST19:
 8515 07ef 04000000 		.4byte	.LVL80
 8516 07f3 10000000 		.4byte	.LVL82
 8517 07f7 0100     		.2byte	0x1
 8518 07f9 53       		.byte	0x53
 8519 07fa 14000000 		.4byte	.LVL83
 8520 07fe 1E000000 		.4byte	.LVL85
 8521 0802 0100     		.2byte	0x1
 8522 0804 53       		.byte	0x53
 8523 0805 00000000 		.4byte	0
 8524 0809 00000000 		.4byte	0
 8525              	.LLST17:
 8526 080d 00000000 		.4byte	.LVL72
 8527 0811 08000000 		.4byte	.LVL74
 8528 0815 0100     		.2byte	0x1
 8529 0817 50       		.byte	0x50
 8530 0818 08000000 		.4byte	.LVL74
 8531 081c 2C000000 		.4byte	.LVL75
 8532 0820 0400     		.2byte	0x4
 8533 0822 F3       		.byte	0xf3
 8534 0823 01       		.uleb128 0x1
 8535 0824 50       		.byte	0x50
 8536 0825 9F       		.byte	0x9f
 8537 0826 2C000000 		.4byte	.LVL75
 8538 082a 32000000 		.4byte	.LVL77
 8539 082e 0100     		.2byte	0x1
 8540 0830 50       		.byte	0x50
 8541 0831 32000000 		.4byte	.LVL77
 8542 0835 54000000 		.4byte	.LFE160
 8543 0839 0400     		.2byte	0x4
 8544 083b F3       		.byte	0xf3
 8545 083c 01       		.uleb128 0x1
 8546 083d 50       		.byte	0x50
 8547 083e 9F       		.byte	0x9f
 8548 083f 00000000 		.4byte	0
 8549 0843 00000000 		.4byte	0
ARM GAS  /tmp/ccTYR2Ee.s 			page 191


 8550              	.LLST18:
 8551 0847 00000000 		.4byte	.LVL72
 8552 084b 06000000 		.4byte	.LVL73
 8553 084f 0100     		.2byte	0x1
 8554 0851 51       		.byte	0x51
 8555 0852 06000000 		.4byte	.LVL73
 8556 0856 2C000000 		.4byte	.LVL75
 8557 085a 0400     		.2byte	0x4
 8558 085c F3       		.byte	0xf3
 8559 085d 01       		.uleb128 0x1
 8560 085e 51       		.byte	0x51
 8561 085f 9F       		.byte	0x9f
 8562 0860 2C000000 		.4byte	.LVL75
 8563 0864 2E000000 		.4byte	.LVL76
 8564 0868 0100     		.2byte	0x1
 8565 086a 51       		.byte	0x51
 8566 086b 2E000000 		.4byte	.LVL76
 8567 086f 54000000 		.4byte	.LFE160
 8568 0873 0400     		.2byte	0x4
 8569 0875 F3       		.byte	0xf3
 8570 0876 01       		.uleb128 0x1
 8571 0877 51       		.byte	0x51
 8572 0878 9F       		.byte	0x9f
 8573 0879 00000000 		.4byte	0
 8574 087d 00000000 		.4byte	0
 8575              	.LLST16:
 8576 0881 04000000 		.4byte	.LVL69
 8577 0885 08000000 		.4byte	.LVL70
 8578 0889 0600     		.2byte	0x6
 8579 088b 73       		.byte	0x73
 8580 088c 00       		.sleb128 0
 8581 088d 09       		.byte	0x9
 8582 088e FC       		.byte	0xfc
 8583 088f 1A       		.byte	0x1a
 8584 0890 9F       		.byte	0x9f
 8585 0891 08000000 		.4byte	.LVL70
 8586 0895 0C000000 		.4byte	.LVL71
 8587 0899 0100     		.2byte	0x1
 8588 089b 53       		.byte	0x53
 8589 089c 00000000 		.4byte	0
 8590 08a0 00000000 		.4byte	0
 8591              	.LLST15:
 8592 08a4 06000000 		.4byte	.LVL66
 8593 08a8 0C000000 		.4byte	.LVL68
 8594 08ac 0100     		.2byte	0x1
 8595 08ae 52       		.byte	0x52
 8596 08af 0C000000 		.4byte	.LVL68
 8597 08b3 18000000 		.4byte	.LFE156
 8598 08b7 0100     		.2byte	0x1
 8599 08b9 53       		.byte	0x53
 8600 08ba 00000000 		.4byte	0
 8601 08be 00000000 		.4byte	0
 8602              	.LLST13:
 8603 08c2 00000000 		.4byte	.LVL61
 8604 08c6 04000000 		.4byte	.LVL62
 8605 08ca 0100     		.2byte	0x1
 8606 08cc 50       		.byte	0x50
ARM GAS  /tmp/ccTYR2Ee.s 			page 192


 8607 08cd 04000000 		.4byte	.LVL62
 8608 08d1 2C000000 		.4byte	.LFE155
 8609 08d5 0400     		.2byte	0x4
 8610 08d7 F3       		.byte	0xf3
 8611 08d8 01       		.uleb128 0x1
 8612 08d9 50       		.byte	0x50
 8613 08da 9F       		.byte	0x9f
 8614 08db 00000000 		.4byte	0
 8615 08df 00000000 		.4byte	0
 8616              	.LLST14:
 8617 08e3 0E000000 		.4byte	.LVL63
 8618 08e7 12000000 		.4byte	.LVL64
 8619 08eb 0600     		.2byte	0x6
 8620 08ed 74       		.byte	0x74
 8621 08ee 00       		.sleb128 0
 8622 08ef 09       		.byte	0x9
 8623 08f0 FC       		.byte	0xfc
 8624 08f1 1A       		.byte	0x1a
 8625 08f2 9F       		.byte	0x9f
 8626 08f3 12000000 		.4byte	.LVL64
 8627 08f7 16000000 		.4byte	.LVL65
 8628 08fb 0100     		.2byte	0x1
 8629 08fd 54       		.byte	0x54
 8630 08fe 16000000 		.4byte	.LVL65
 8631 0902 2C000000 		.4byte	.LFE155
 8632 0906 0100     		.2byte	0x1
 8633 0908 50       		.byte	0x50
 8634 0909 00000000 		.4byte	0
 8635 090d 00000000 		.4byte	0
 8636              	.LLST12:
 8637 0911 00000000 		.4byte	.LVL59
 8638 0915 22000000 		.4byte	.LVL60
 8639 0919 0100     		.2byte	0x1
 8640 091b 50       		.byte	0x50
 8641 091c 22000000 		.4byte	.LVL60
 8642 0920 3C000000 		.4byte	.LFE152
 8643 0924 0400     		.2byte	0x4
 8644 0926 F3       		.byte	0xf3
 8645 0927 01       		.uleb128 0x1
 8646 0928 50       		.byte	0x50
 8647 0929 9F       		.byte	0x9f
 8648 092a 00000000 		.4byte	0
 8649 092e 00000000 		.4byte	0
 8650              	.LLST11:
 8651 0932 00000000 		.4byte	.LVL57
 8652 0936 22000000 		.4byte	.LVL58
 8653 093a 0100     		.2byte	0x1
 8654 093c 50       		.byte	0x50
 8655 093d 22000000 		.4byte	.LVL58
 8656 0941 4C000000 		.4byte	.LFE151
 8657 0945 0400     		.2byte	0x4
 8658 0947 F3       		.byte	0xf3
 8659 0948 01       		.uleb128 0x1
 8660 0949 50       		.byte	0x50
 8661 094a 9F       		.byte	0x9f
 8662 094b 00000000 		.4byte	0
 8663 094f 00000000 		.4byte	0
ARM GAS  /tmp/ccTYR2Ee.s 			page 193


 8664              	.LLST9:
 8665 0953 00000000 		.4byte	.LVL44
 8666 0957 0A000000 		.4byte	.LVL45
 8667 095b 0100     		.2byte	0x1
 8668 095d 50       		.byte	0x50
 8669 095e 0A000000 		.4byte	.LVL45
 8670 0962 50000000 		.4byte	.LFE148
 8671 0966 0400     		.2byte	0x4
 8672 0968 F3       		.byte	0xf3
 8673 0969 01       		.uleb128 0x1
 8674 096a 50       		.byte	0x50
 8675 096b 9F       		.byte	0x9f
 8676 096c 00000000 		.4byte	0
 8677 0970 00000000 		.4byte	0
 8678              	.LLST10:
 8679 0974 0C000000 		.4byte	.LVL46
 8680 0978 18000000 		.4byte	.LVL47
 8681 097c 0400     		.2byte	0x4
 8682 097e 0A       		.byte	0xa
 8683 097f 0010     		.2byte	0x1000
 8684 0981 9F       		.byte	0x9f
 8685 0982 18000000 		.4byte	.LVL47
 8686 0986 1A000000 		.4byte	.LVL48
 8687 098a 0300     		.2byte	0x3
 8688 098c 73       		.byte	0x73
 8689 098d 7F       		.sleb128 -1
 8690 098e 9F       		.byte	0x9f
 8691 098f 1A000000 		.4byte	.LVL48
 8692 0993 1C000000 		.4byte	.LVL49
 8693 0997 0100     		.2byte	0x1
 8694 0999 53       		.byte	0x53
 8695 099a 1C000000 		.4byte	.LVL49
 8696 099e 22000000 		.4byte	.LVL50
 8697 09a2 0300     		.2byte	0x3
 8698 09a4 73       		.byte	0x73
 8699 09a5 7F       		.sleb128 -1
 8700 09a6 9F       		.byte	0x9f
 8701 09a7 2C000000 		.4byte	.LVL51
 8702 09ab 38000000 		.4byte	.LVL52
 8703 09af 0400     		.2byte	0x4
 8704 09b1 0A       		.byte	0xa
 8705 09b2 0010     		.2byte	0x1000
 8706 09b4 9F       		.byte	0x9f
 8707 09b5 38000000 		.4byte	.LVL52
 8708 09b9 3A000000 		.4byte	.LVL53
 8709 09bd 0300     		.2byte	0x3
 8710 09bf 73       		.byte	0x73
 8711 09c0 7F       		.sleb128 -1
 8712 09c1 9F       		.byte	0x9f
 8713 09c2 3A000000 		.4byte	.LVL53
 8714 09c6 3C000000 		.4byte	.LVL54
 8715 09ca 0100     		.2byte	0x1
 8716 09cc 53       		.byte	0x53
 8717 09cd 3C000000 		.4byte	.LVL54
 8718 09d1 42000000 		.4byte	.LVL55
 8719 09d5 0300     		.2byte	0x3
 8720 09d7 73       		.byte	0x73
ARM GAS  /tmp/ccTYR2Ee.s 			page 194


 8721 09d8 7F       		.sleb128 -1
 8722 09d9 9F       		.byte	0x9f
 8723 09da 00000000 		.4byte	0
 8724 09de 00000000 		.4byte	0
 8725              	.LLST7:
 8726 09e2 00000000 		.4byte	.LVL32
 8727 09e6 0A000000 		.4byte	.LVL33
 8728 09ea 0100     		.2byte	0x1
 8729 09ec 50       		.byte	0x50
 8730 09ed 0A000000 		.4byte	.LVL33
 8731 09f1 54000000 		.4byte	.LFE147
 8732 09f5 0400     		.2byte	0x4
 8733 09f7 F3       		.byte	0xf3
 8734 09f8 01       		.uleb128 0x1
 8735 09f9 50       		.byte	0x50
 8736 09fa 9F       		.byte	0x9f
 8737 09fb 00000000 		.4byte	0
 8738 09ff 00000000 		.4byte	0
 8739              	.LLST8:
 8740 0a03 0C000000 		.4byte	.LVL34
 8741 0a07 18000000 		.4byte	.LVL35
 8742 0a0b 0400     		.2byte	0x4
 8743 0a0d 0A       		.byte	0xa
 8744 0a0e 0010     		.2byte	0x1000
 8745 0a10 9F       		.byte	0x9f
 8746 0a11 18000000 		.4byte	.LVL35
 8747 0a15 1A000000 		.4byte	.LVL36
 8748 0a19 0300     		.2byte	0x3
 8749 0a1b 73       		.byte	0x73
 8750 0a1c 7F       		.sleb128 -1
 8751 0a1d 9F       		.byte	0x9f
 8752 0a1e 1A000000 		.4byte	.LVL36
 8753 0a22 1C000000 		.4byte	.LVL37
 8754 0a26 0100     		.2byte	0x1
 8755 0a28 53       		.byte	0x53
 8756 0a29 1C000000 		.4byte	.LVL37
 8757 0a2d 22000000 		.4byte	.LVL38
 8758 0a31 0300     		.2byte	0x3
 8759 0a33 73       		.byte	0x73
 8760 0a34 7F       		.sleb128 -1
 8761 0a35 9F       		.byte	0x9f
 8762 0a36 30000000 		.4byte	.LVL39
 8763 0a3a 3C000000 		.4byte	.LVL40
 8764 0a3e 0400     		.2byte	0x4
 8765 0a40 0A       		.byte	0xa
 8766 0a41 0010     		.2byte	0x1000
 8767 0a43 9F       		.byte	0x9f
 8768 0a44 3C000000 		.4byte	.LVL40
 8769 0a48 3E000000 		.4byte	.LVL41
 8770 0a4c 0300     		.2byte	0x3
 8771 0a4e 73       		.byte	0x73
 8772 0a4f 7F       		.sleb128 -1
 8773 0a50 9F       		.byte	0x9f
 8774 0a51 3E000000 		.4byte	.LVL41
 8775 0a55 40000000 		.4byte	.LVL42
 8776 0a59 0100     		.2byte	0x1
 8777 0a5b 53       		.byte	0x53
ARM GAS  /tmp/ccTYR2Ee.s 			page 195


 8778 0a5c 40000000 		.4byte	.LVL42
 8779 0a60 46000000 		.4byte	.LVL43
 8780 0a64 0300     		.2byte	0x3
 8781 0a66 73       		.byte	0x73
 8782 0a67 7F       		.sleb128 -1
 8783 0a68 9F       		.byte	0x9f
 8784 0a69 00000000 		.4byte	0
 8785 0a6d 00000000 		.4byte	0
 8786              	.LLST5:
 8787 0a71 00000000 		.4byte	.LVL20
 8788 0a75 2E000000 		.4byte	.LVL26
 8789 0a79 0100     		.2byte	0x1
 8790 0a7b 50       		.byte	0x50
 8791 0a7c 2E000000 		.4byte	.LVL26
 8792 0a80 54000000 		.4byte	.LFE146
 8793 0a84 0400     		.2byte	0x4
 8794 0a86 F3       		.byte	0xf3
 8795 0a87 01       		.uleb128 0x1
 8796 0a88 50       		.byte	0x50
 8797 0a89 9F       		.byte	0x9f
 8798 0a8a 00000000 		.4byte	0
 8799 0a8e 00000000 		.4byte	0
 8800              	.LLST6:
 8801 0a92 0E000000 		.4byte	.LVL21
 8802 0a96 1A000000 		.4byte	.LVL22
 8803 0a9a 0400     		.2byte	0x4
 8804 0a9c 0A       		.byte	0xa
 8805 0a9d 0010     		.2byte	0x1000
 8806 0a9f 9F       		.byte	0x9f
 8807 0aa0 1A000000 		.4byte	.LVL22
 8808 0aa4 1C000000 		.4byte	.LVL23
 8809 0aa8 0300     		.2byte	0x3
 8810 0aaa 73       		.byte	0x73
 8811 0aab 7F       		.sleb128 -1
 8812 0aac 9F       		.byte	0x9f
 8813 0aad 1C000000 		.4byte	.LVL23
 8814 0ab1 1E000000 		.4byte	.LVL24
 8815 0ab5 0100     		.2byte	0x1
 8816 0ab7 53       		.byte	0x53
 8817 0ab8 1E000000 		.4byte	.LVL24
 8818 0abc 24000000 		.4byte	.LVL25
 8819 0ac0 0300     		.2byte	0x3
 8820 0ac2 73       		.byte	0x73
 8821 0ac3 7F       		.sleb128 -1
 8822 0ac4 9F       		.byte	0x9f
 8823 0ac5 30000000 		.4byte	.LVL27
 8824 0ac9 3C000000 		.4byte	.LVL28
 8825 0acd 0400     		.2byte	0x4
 8826 0acf 0A       		.byte	0xa
 8827 0ad0 0010     		.2byte	0x1000
 8828 0ad2 9F       		.byte	0x9f
 8829 0ad3 3C000000 		.4byte	.LVL28
 8830 0ad7 3E000000 		.4byte	.LVL29
 8831 0adb 0300     		.2byte	0x3
 8832 0add 73       		.byte	0x73
 8833 0ade 7F       		.sleb128 -1
 8834 0adf 9F       		.byte	0x9f
ARM GAS  /tmp/ccTYR2Ee.s 			page 196


 8835 0ae0 3E000000 		.4byte	.LVL29
 8836 0ae4 40000000 		.4byte	.LVL30
 8837 0ae8 0100     		.2byte	0x1
 8838 0aea 53       		.byte	0x53
 8839 0aeb 40000000 		.4byte	.LVL30
 8840 0aef 46000000 		.4byte	.LVL31
 8841 0af3 0300     		.2byte	0x3
 8842 0af5 73       		.byte	0x73
 8843 0af6 7F       		.sleb128 -1
 8844 0af7 9F       		.byte	0x9f
 8845 0af8 00000000 		.4byte	0
 8846 0afc 00000000 		.4byte	0
 8847              	.LLST3:
 8848 0b00 00000000 		.4byte	.LVL8
 8849 0b04 2A000000 		.4byte	.LVL14
 8850 0b08 0100     		.2byte	0x1
 8851 0b0a 50       		.byte	0x50
 8852 0b0b 2A000000 		.4byte	.LVL14
 8853 0b0f 50000000 		.4byte	.LFE145
 8854 0b13 0400     		.2byte	0x4
 8855 0b15 F3       		.byte	0xf3
 8856 0b16 01       		.uleb128 0x1
 8857 0b17 50       		.byte	0x50
 8858 0b18 9F       		.byte	0x9f
 8859 0b19 00000000 		.4byte	0
 8860 0b1d 00000000 		.4byte	0
 8861              	.LLST4:
 8862 0b21 0A000000 		.4byte	.LVL9
 8863 0b25 16000000 		.4byte	.LVL10
 8864 0b29 0400     		.2byte	0x4
 8865 0b2b 0A       		.byte	0xa
 8866 0b2c 0010     		.2byte	0x1000
 8867 0b2e 9F       		.byte	0x9f
 8868 0b2f 16000000 		.4byte	.LVL10
 8869 0b33 18000000 		.4byte	.LVL11
 8870 0b37 0300     		.2byte	0x3
 8871 0b39 73       		.byte	0x73
 8872 0b3a 7F       		.sleb128 -1
 8873 0b3b 9F       		.byte	0x9f
 8874 0b3c 18000000 		.4byte	.LVL11
 8875 0b40 1A000000 		.4byte	.LVL12
 8876 0b44 0100     		.2byte	0x1
 8877 0b46 53       		.byte	0x53
 8878 0b47 1A000000 		.4byte	.LVL12
 8879 0b4b 20000000 		.4byte	.LVL13
 8880 0b4f 0300     		.2byte	0x3
 8881 0b51 73       		.byte	0x73
 8882 0b52 7F       		.sleb128 -1
 8883 0b53 9F       		.byte	0x9f
 8884 0b54 2C000000 		.4byte	.LVL15
 8885 0b58 38000000 		.4byte	.LVL16
 8886 0b5c 0400     		.2byte	0x4
 8887 0b5e 0A       		.byte	0xa
 8888 0b5f 0010     		.2byte	0x1000
 8889 0b61 9F       		.byte	0x9f
 8890 0b62 38000000 		.4byte	.LVL16
 8891 0b66 3A000000 		.4byte	.LVL17
ARM GAS  /tmp/ccTYR2Ee.s 			page 197


 8892 0b6a 0300     		.2byte	0x3
 8893 0b6c 73       		.byte	0x73
 8894 0b6d 7F       		.sleb128 -1
 8895 0b6e 9F       		.byte	0x9f
 8896 0b6f 3A000000 		.4byte	.LVL17
 8897 0b73 3C000000 		.4byte	.LVL18
 8898 0b77 0100     		.2byte	0x1
 8899 0b79 53       		.byte	0x53
 8900 0b7a 3C000000 		.4byte	.LVL18
 8901 0b7e 42000000 		.4byte	.LVL19
 8902 0b82 0300     		.2byte	0x3
 8903 0b84 73       		.byte	0x73
 8904 0b85 7F       		.sleb128 -1
 8905 0b86 9F       		.byte	0x9f
 8906 0b87 00000000 		.4byte	0
 8907 0b8b 00000000 		.4byte	0
 8908              	.LLST2:
 8909 0b8f 00000000 		.4byte	.LVL6
 8910 0b93 0C000000 		.4byte	.LVL7
 8911 0b97 0100     		.2byte	0x1
 8912 0b99 50       		.byte	0x50
 8913 0b9a 0C000000 		.4byte	.LVL7
 8914 0b9e 1C000000 		.4byte	.LFE144
 8915 0ba2 0400     		.2byte	0x4
 8916 0ba4 F3       		.byte	0xf3
 8917 0ba5 01       		.uleb128 0x1
 8918 0ba6 50       		.byte	0x50
 8919 0ba7 9F       		.byte	0x9f
 8920 0ba8 00000000 		.4byte	0
 8921 0bac 00000000 		.4byte	0
 8922              	.LLST1:
 8923 0bb0 00000000 		.4byte	.LVL2
 8924 0bb4 02000000 		.4byte	.LVL3
 8925 0bb8 0100     		.2byte	0x1
 8926 0bba 50       		.byte	0x50
 8927 0bbb 02000000 		.4byte	.LVL3
 8928 0bbf 0C000000 		.4byte	.LVL4
 8929 0bc3 0300     		.2byte	0x3
 8930 0bc5 70       		.byte	0x70
 8931 0bc6 02       		.sleb128 2
 8932 0bc7 9F       		.byte	0x9f
 8933 0bc8 0C000000 		.4byte	.LVL4
 8934 0bcc 22000000 		.4byte	.LVL5
 8935 0bd0 0100     		.2byte	0x1
 8936 0bd2 50       		.byte	0x50
 8937 0bd3 22000000 		.4byte	.LVL5
 8938 0bd7 30000000 		.4byte	.LFE143
 8939 0bdb 0400     		.2byte	0x4
 8940 0bdd F3       		.byte	0xf3
 8941 0bde 01       		.uleb128 0x1
 8942 0bdf 50       		.byte	0x50
 8943 0be0 9F       		.byte	0x9f
 8944 0be1 00000000 		.4byte	0
 8945 0be5 00000000 		.4byte	0
 8946              	.LLST0:
 8947 0be9 00000000 		.4byte	.LVL0
 8948 0bed 0C000000 		.4byte	.LVL1
ARM GAS  /tmp/ccTYR2Ee.s 			page 198


 8949 0bf1 0100     		.2byte	0x1
 8950 0bf3 50       		.byte	0x50
 8951 0bf4 0C000000 		.4byte	.LVL1
 8952 0bf8 1C000000 		.4byte	.LFE142
 8953 0bfc 0400     		.2byte	0x4
 8954 0bfe F3       		.byte	0xf3
 8955 0bff 01       		.uleb128 0x1
 8956 0c00 50       		.byte	0x50
 8957 0c01 9F       		.byte	0x9f
 8958 0c02 00000000 		.4byte	0
 8959 0c06 00000000 		.4byte	0
 8960              	.LLST58:
 8961 0c0a 00000000 		.4byte	.LVL222
 8962 0c0e 16000000 		.4byte	.LVL225
 8963 0c12 0100     		.2byte	0x1
 8964 0c14 50       		.byte	0x50
 8965 0c15 16000000 		.4byte	.LVL225
 8966 0c19 1A000000 		.4byte	.LVL226
 8967 0c1d 0300     		.2byte	0x3
 8968 0c1f 73       		.byte	0x73
 8969 0c20 20       		.sleb128 32
 8970 0c21 9F       		.byte	0x9f
 8971 0c22 1A000000 		.4byte	.LVL226
 8972 0c26 20000000 		.4byte	.LVL227
 8973 0c2a 0400     		.2byte	0x4
 8974 0c2c F3       		.byte	0xf3
 8975 0c2d 01       		.uleb128 0x1
 8976 0c2e 50       		.byte	0x50
 8977 0c2f 9F       		.byte	0x9f
 8978 0c30 20000000 		.4byte	.LVL227
 8979 0c34 22000000 		.4byte	.LVL228
 8980 0c38 0100     		.2byte	0x1
 8981 0c3a 50       		.byte	0x50
 8982 0c3b 22000000 		.4byte	.LVL228
 8983 0c3f 24000000 		.4byte	.LVL229
 8984 0c43 0300     		.2byte	0x3
 8985 0c45 73       		.byte	0x73
 8986 0c46 20       		.sleb128 32
 8987 0c47 9F       		.byte	0x9f
 8988 0c48 24000000 		.4byte	.LVL229
 8989 0c4c 2A000000 		.4byte	.LVL230
 8990 0c50 0100     		.2byte	0x1
 8991 0c52 50       		.byte	0x50
 8992 0c53 2A000000 		.4byte	.LVL230
 8993 0c57 2E000000 		.4byte	.LVL231
 8994 0c5b 0100     		.2byte	0x1
 8995 0c5d 53       		.byte	0x53
 8996 0c5e 2E000000 		.4byte	.LVL231
 8997 0c62 38000000 		.4byte	.LFE208
 8998 0c66 0400     		.2byte	0x4
 8999 0c68 F3       		.byte	0xf3
 9000 0c69 01       		.uleb128 0x1
 9001 0c6a 50       		.byte	0x50
 9002 0c6b 9F       		.byte	0x9f
 9003 0c6c 00000000 		.4byte	0
 9004 0c70 00000000 		.4byte	0
 9005              	.LLST59:
ARM GAS  /tmp/ccTYR2Ee.s 			page 199


 9006 0c74 08000000 		.4byte	.LVL223
 9007 0c78 10000000 		.4byte	.LVL224
 9008 0c7c 0100     		.2byte	0x1
 9009 0c7e 50       		.byte	0x50
 9010 0c7f 10000000 		.4byte	.LVL224
 9011 0c83 1A000000 		.4byte	.LVL226
 9012 0c87 0100     		.2byte	0x1
 9013 0c89 53       		.byte	0x53
 9014 0c8a 1A000000 		.4byte	.LVL226
 9015 0c8e 20000000 		.4byte	.LVL227
 9016 0c92 0700     		.2byte	0x7
 9017 0c94 F3       		.byte	0xf3
 9018 0c95 01       		.uleb128 0x1
 9019 0c96 50       		.byte	0x50
 9020 0c97 08       		.byte	0x8
 9021 0c98 20       		.byte	0x20
 9022 0c99 1C       		.byte	0x1c
 9023 0c9a 9F       		.byte	0x9f
 9024 0c9b 20000000 		.4byte	.LVL227
 9025 0c9f 22000000 		.4byte	.LVL228
 9026 0ca3 0100     		.2byte	0x1
 9027 0ca5 50       		.byte	0x50
 9028 0ca6 22000000 		.4byte	.LVL228
 9029 0caa 24000000 		.4byte	.LVL229
 9030 0cae 0300     		.2byte	0x3
 9031 0cb0 73       		.byte	0x73
 9032 0cb1 20       		.sleb128 32
 9033 0cb2 9F       		.byte	0x9f
 9034 0cb3 00000000 		.4byte	0
 9035 0cb7 00000000 		.4byte	0
 9036              		.section	.debug_aranges,"",%progbits
 9037 0000 4C020000 		.4byte	0x24c
 9038 0004 0200     		.2byte	0x2
 9039 0006 00000000 		.4byte	.Ldebug_info0
 9040 000a 04       		.byte	0x4
 9041 000b 00       		.byte	0
 9042 000c 0000     		.2byte	0
 9043 000e 0000     		.2byte	0
 9044 0010 00000000 		.4byte	.LFB142
 9045 0014 1C000000 		.4byte	.LFE142-.LFB142
 9046 0018 00000000 		.4byte	.LFB143
 9047 001c 30000000 		.4byte	.LFE143-.LFB143
 9048 0020 00000000 		.4byte	.LFB144
 9049 0024 1C000000 		.4byte	.LFE144-.LFB144
 9050 0028 00000000 		.4byte	.LFB145
 9051 002c 50000000 		.4byte	.LFE145-.LFB145
 9052 0030 00000000 		.4byte	.LFB146
 9053 0034 54000000 		.4byte	.LFE146-.LFB146
 9054 0038 00000000 		.4byte	.LFB147
 9055 003c 54000000 		.4byte	.LFE147-.LFB147
 9056 0040 00000000 		.4byte	.LFB148
 9057 0044 50000000 		.4byte	.LFE148-.LFB148
 9058 0048 00000000 		.4byte	.LFB149
 9059 004c 24000000 		.4byte	.LFE149-.LFB149
 9060 0050 00000000 		.4byte	.LFB150
 9061 0054 1C000000 		.4byte	.LFE150-.LFB150
 9062 0058 00000000 		.4byte	.LFB151
ARM GAS  /tmp/ccTYR2Ee.s 			page 200


 9063 005c 4C000000 		.4byte	.LFE151-.LFB151
 9064 0060 00000000 		.4byte	.LFB152
 9065 0064 3C000000 		.4byte	.LFE152-.LFB152
 9066 0068 00000000 		.4byte	.LFB153
 9067 006c 18000000 		.4byte	.LFE153-.LFB153
 9068 0070 00000000 		.4byte	.LFB154
 9069 0074 10000000 		.4byte	.LFE154-.LFB154
 9070 0078 00000000 		.4byte	.LFB155
 9071 007c 2C000000 		.4byte	.LFE155-.LFB155
 9072 0080 00000000 		.4byte	.LFB156
 9073 0084 18000000 		.4byte	.LFE156-.LFB156
 9074 0088 00000000 		.4byte	.LFB157
 9075 008c 14000000 		.4byte	.LFE157-.LFB157
 9076 0090 00000000 		.4byte	.LFB158
 9077 0094 10000000 		.4byte	.LFE158-.LFB158
 9078 0098 00000000 		.4byte	.LFB159
 9079 009c 10000000 		.4byte	.LFE159-.LFB159
 9080 00a0 00000000 		.4byte	.LFB160
 9081 00a4 54000000 		.4byte	.LFE160-.LFB160
 9082 00a8 00000000 		.4byte	.LFB161
 9083 00ac 2C000000 		.4byte	.LFE161-.LFB161
 9084 00b0 00000000 		.4byte	.LFB162
 9085 00b4 10000000 		.4byte	.LFE162-.LFB162
 9086 00b8 00000000 		.4byte	.LFB163
 9087 00bc 28000000 		.4byte	.LFE163-.LFB163
 9088 00c0 00000000 		.4byte	.LFB164
 9089 00c4 38000000 		.4byte	.LFE164-.LFB164
 9090 00c8 00000000 		.4byte	.LFB165
 9091 00cc 10000000 		.4byte	.LFE165-.LFB165
 9092 00d0 00000000 		.4byte	.LFB166
 9093 00d4 10000000 		.4byte	.LFE166-.LFB166
 9094 00d8 00000000 		.4byte	.LFB167
 9095 00dc 18000000 		.4byte	.LFE167-.LFB167
 9096 00e0 00000000 		.4byte	.LFB168
 9097 00e4 10000000 		.4byte	.LFE168-.LFB168
 9098 00e8 00000000 		.4byte	.LFB169
 9099 00ec 10000000 		.4byte	.LFE169-.LFB169
 9100 00f0 00000000 		.4byte	.LFB170
 9101 00f4 48000000 		.4byte	.LFE170-.LFB170
 9102 00f8 00000000 		.4byte	.LFB171
 9103 00fc 48000000 		.4byte	.LFE171-.LFB171
 9104 0100 00000000 		.4byte	.LFB172
 9105 0104 2C000000 		.4byte	.LFE172-.LFB172
 9106 0108 00000000 		.4byte	.LFB173
 9107 010c 2C000000 		.4byte	.LFE173-.LFB173
 9108 0110 00000000 		.4byte	.LFB174
 9109 0114 3C000000 		.4byte	.LFE174-.LFB174
 9110 0118 00000000 		.4byte	.LFB175
 9111 011c 34000000 		.4byte	.LFE175-.LFB175
 9112 0120 00000000 		.4byte	.LFB176
 9113 0124 34000000 		.4byte	.LFE176-.LFB176
 9114 0128 00000000 		.4byte	.LFB177
 9115 012c 40000000 		.4byte	.LFE177-.LFB177
 9116 0130 00000000 		.4byte	.LFB178
 9117 0134 44000000 		.4byte	.LFE178-.LFB178
 9118 0138 00000000 		.4byte	.LFB179
 9119 013c 44000000 		.4byte	.LFE179-.LFB179
ARM GAS  /tmp/ccTYR2Ee.s 			page 201


 9120 0140 00000000 		.4byte	.LFB180
 9121 0144 44000000 		.4byte	.LFE180-.LFB180
 9122 0148 00000000 		.4byte	.LFB181
 9123 014c 44000000 		.4byte	.LFE181-.LFB181
 9124 0150 00000000 		.4byte	.LFB182
 9125 0154 14000000 		.4byte	.LFE182-.LFB182
 9126 0158 00000000 		.4byte	.LFB183
 9127 015c 14000000 		.4byte	.LFE183-.LFB183
 9128 0160 00000000 		.4byte	.LFB184
 9129 0164 10000000 		.4byte	.LFE184-.LFB184
 9130 0168 00000000 		.4byte	.LFB185
 9131 016c 10000000 		.4byte	.LFE185-.LFB185
 9132 0170 00000000 		.4byte	.LFB186
 9133 0174 1C000000 		.4byte	.LFE186-.LFB186
 9134 0178 00000000 		.4byte	.LFB187
 9135 017c 10000000 		.4byte	.LFE187-.LFB187
 9136 0180 00000000 		.4byte	.LFB188
 9137 0184 14000000 		.4byte	.LFE188-.LFB188
 9138 0188 00000000 		.4byte	.LFB189
 9139 018c 0C000000 		.4byte	.LFE189-.LFB189
 9140 0190 00000000 		.4byte	.LFB190
 9141 0194 0C000000 		.4byte	.LFE190-.LFB190
 9142 0198 00000000 		.4byte	.LFB191
 9143 019c 0C000000 		.4byte	.LFE191-.LFB191
 9144 01a0 00000000 		.4byte	.LFB192
 9145 01a4 0C000000 		.4byte	.LFE192-.LFB192
 9146 01a8 00000000 		.4byte	.LFB193
 9147 01ac 0C000000 		.4byte	.LFE193-.LFB193
 9148 01b0 00000000 		.4byte	.LFB194
 9149 01b4 0C000000 		.4byte	.LFE194-.LFB194
 9150 01b8 00000000 		.4byte	.LFB195
 9151 01bc 14000000 		.4byte	.LFE195-.LFB195
 9152 01c0 00000000 		.4byte	.LFB196
 9153 01c4 14000000 		.4byte	.LFE196-.LFB196
 9154 01c8 00000000 		.4byte	.LFB197
 9155 01cc 18000000 		.4byte	.LFE197-.LFB197
 9156 01d0 00000000 		.4byte	.LFB198
 9157 01d4 02000000 		.4byte	.LFE198-.LFB198
 9158 01d8 00000000 		.4byte	.LFB199
 9159 01dc 48000000 		.4byte	.LFE199-.LFB199
 9160 01e0 00000000 		.4byte	.LFB200
 9161 01e4 28000000 		.4byte	.LFE200-.LFB200
 9162 01e8 00000000 		.4byte	.LFB201
 9163 01ec 14000000 		.4byte	.LFE201-.LFB201
 9164 01f0 00000000 		.4byte	.LFB202
 9165 01f4 14000000 		.4byte	.LFE202-.LFB202
 9166 01f8 00000000 		.4byte	.LFB203
 9167 01fc 14000000 		.4byte	.LFE203-.LFB203
 9168 0200 00000000 		.4byte	.LFB204
 9169 0204 14000000 		.4byte	.LFE204-.LFB204
 9170 0208 00000000 		.4byte	.LFB205
 9171 020c 20000000 		.4byte	.LFE205-.LFB205
 9172 0210 00000000 		.4byte	.LFB206
 9173 0214 0C000000 		.4byte	.LFE206-.LFB206
 9174 0218 00000000 		.4byte	.LFB207
 9175 021c 78000000 		.4byte	.LFE207-.LFB207
 9176 0220 00000000 		.4byte	.LFB208
ARM GAS  /tmp/ccTYR2Ee.s 			page 202


 9177 0224 38000000 		.4byte	.LFE208-.LFB208
 9178 0228 00000000 		.4byte	.LFB209
 9179 022c 0C000000 		.4byte	.LFE209-.LFB209
 9180 0230 00000000 		.4byte	.LFB210
 9181 0234 0C000000 		.4byte	.LFE210-.LFB210
 9182 0238 00000000 		.4byte	.LFB211
 9183 023c 0C000000 		.4byte	.LFE211-.LFB211
 9184 0240 00000000 		.4byte	.LFB212
 9185 0244 0C000000 		.4byte	.LFE212-.LFB212
 9186 0248 00000000 		.4byte	0
 9187 024c 00000000 		.4byte	0
 9188              		.section	.debug_ranges,"",%progbits
 9189              	.Ldebug_ranges0:
 9190 0000 08000000 		.4byte	.LBB28
 9191 0004 0C000000 		.4byte	.LBE28
 9192 0008 18000000 		.4byte	.LBB32
 9193 000c 1A000000 		.4byte	.LBE32
 9194 0010 1E000000 		.4byte	.LBB33
 9195 0014 20000000 		.4byte	.LBE33
 9196 0018 00000000 		.4byte	0
 9197 001c 00000000 		.4byte	0
 9198 0020 06000000 		.4byte	.LBB60
 9199 0024 08000000 		.4byte	.LBE60
 9200 0028 0A000000 		.4byte	.LBB63
 9201 002c 0E000000 		.4byte	.LBE63
 9202 0030 00000000 		.4byte	0
 9203 0034 00000000 		.4byte	0
 9204 0038 36000000 		.4byte	.LBB68
 9205 003c 38000000 		.4byte	.LBE68
 9206 0040 3C000000 		.4byte	.LBB71
 9207 0044 40000000 		.4byte	.LBE71
 9208 0048 00000000 		.4byte	0
 9209 004c 00000000 		.4byte	0
 9210 0050 50000000 		.4byte	.LBB74
 9211 0054 58000000 		.4byte	.LBE74
 9212 0058 5A000000 		.4byte	.LBB77
 9213 005c 60000000 		.4byte	.LBE77
 9214 0060 00000000 		.4byte	0
 9215 0064 00000000 		.4byte	0
 9216 0068 00000000 		.4byte	.LFB142
 9217 006c 1C000000 		.4byte	.LFE142
 9218 0070 00000000 		.4byte	.LFB143
 9219 0074 30000000 		.4byte	.LFE143
 9220 0078 00000000 		.4byte	.LFB144
 9221 007c 1C000000 		.4byte	.LFE144
 9222 0080 00000000 		.4byte	.LFB145
 9223 0084 50000000 		.4byte	.LFE145
 9224 0088 00000000 		.4byte	.LFB146
 9225 008c 54000000 		.4byte	.LFE146
 9226 0090 00000000 		.4byte	.LFB147
 9227 0094 54000000 		.4byte	.LFE147
 9228 0098 00000000 		.4byte	.LFB148
 9229 009c 50000000 		.4byte	.LFE148
 9230 00a0 00000000 		.4byte	.LFB149
 9231 00a4 24000000 		.4byte	.LFE149
 9232 00a8 00000000 		.4byte	.LFB150
 9233 00ac 1C000000 		.4byte	.LFE150
ARM GAS  /tmp/ccTYR2Ee.s 			page 203


 9234 00b0 00000000 		.4byte	.LFB151
 9235 00b4 4C000000 		.4byte	.LFE151
 9236 00b8 00000000 		.4byte	.LFB152
 9237 00bc 3C000000 		.4byte	.LFE152
 9238 00c0 00000000 		.4byte	.LFB153
 9239 00c4 18000000 		.4byte	.LFE153
 9240 00c8 00000000 		.4byte	.LFB154
 9241 00cc 10000000 		.4byte	.LFE154
 9242 00d0 00000000 		.4byte	.LFB155
 9243 00d4 2C000000 		.4byte	.LFE155
 9244 00d8 00000000 		.4byte	.LFB156
 9245 00dc 18000000 		.4byte	.LFE156
 9246 00e0 00000000 		.4byte	.LFB157
 9247 00e4 14000000 		.4byte	.LFE157
 9248 00e8 00000000 		.4byte	.LFB158
 9249 00ec 10000000 		.4byte	.LFE158
 9250 00f0 00000000 		.4byte	.LFB159
 9251 00f4 10000000 		.4byte	.LFE159
 9252 00f8 00000000 		.4byte	.LFB160
 9253 00fc 54000000 		.4byte	.LFE160
 9254 0100 00000000 		.4byte	.LFB161
 9255 0104 2C000000 		.4byte	.LFE161
 9256 0108 00000000 		.4byte	.LFB162
 9257 010c 10000000 		.4byte	.LFE162
 9258 0110 00000000 		.4byte	.LFB163
 9259 0114 28000000 		.4byte	.LFE163
 9260 0118 00000000 		.4byte	.LFB164
 9261 011c 38000000 		.4byte	.LFE164
 9262 0120 00000000 		.4byte	.LFB165
 9263 0124 10000000 		.4byte	.LFE165
 9264 0128 00000000 		.4byte	.LFB166
 9265 012c 10000000 		.4byte	.LFE166
 9266 0130 00000000 		.4byte	.LFB167
 9267 0134 18000000 		.4byte	.LFE167
 9268 0138 00000000 		.4byte	.LFB168
 9269 013c 10000000 		.4byte	.LFE168
 9270 0140 00000000 		.4byte	.LFB169
 9271 0144 10000000 		.4byte	.LFE169
 9272 0148 00000000 		.4byte	.LFB170
 9273 014c 48000000 		.4byte	.LFE170
 9274 0150 00000000 		.4byte	.LFB171
 9275 0154 48000000 		.4byte	.LFE171
 9276 0158 00000000 		.4byte	.LFB172
 9277 015c 2C000000 		.4byte	.LFE172
 9278 0160 00000000 		.4byte	.LFB173
 9279 0164 2C000000 		.4byte	.LFE173
 9280 0168 00000000 		.4byte	.LFB174
 9281 016c 3C000000 		.4byte	.LFE174
 9282 0170 00000000 		.4byte	.LFB175
 9283 0174 34000000 		.4byte	.LFE175
 9284 0178 00000000 		.4byte	.LFB176
 9285 017c 34000000 		.4byte	.LFE176
 9286 0180 00000000 		.4byte	.LFB177
 9287 0184 40000000 		.4byte	.LFE177
 9288 0188 00000000 		.4byte	.LFB178
 9289 018c 44000000 		.4byte	.LFE178
 9290 0190 00000000 		.4byte	.LFB179
ARM GAS  /tmp/ccTYR2Ee.s 			page 204


 9291 0194 44000000 		.4byte	.LFE179
 9292 0198 00000000 		.4byte	.LFB180
 9293 019c 44000000 		.4byte	.LFE180
 9294 01a0 00000000 		.4byte	.LFB181
 9295 01a4 44000000 		.4byte	.LFE181
 9296 01a8 00000000 		.4byte	.LFB182
 9297 01ac 14000000 		.4byte	.LFE182
 9298 01b0 00000000 		.4byte	.LFB183
 9299 01b4 14000000 		.4byte	.LFE183
 9300 01b8 00000000 		.4byte	.LFB184
 9301 01bc 10000000 		.4byte	.LFE184
 9302 01c0 00000000 		.4byte	.LFB185
 9303 01c4 10000000 		.4byte	.LFE185
 9304 01c8 00000000 		.4byte	.LFB186
 9305 01cc 1C000000 		.4byte	.LFE186
 9306 01d0 00000000 		.4byte	.LFB187
 9307 01d4 10000000 		.4byte	.LFE187
 9308 01d8 00000000 		.4byte	.LFB188
 9309 01dc 14000000 		.4byte	.LFE188
 9310 01e0 00000000 		.4byte	.LFB189
 9311 01e4 0C000000 		.4byte	.LFE189
 9312 01e8 00000000 		.4byte	.LFB190
 9313 01ec 0C000000 		.4byte	.LFE190
 9314 01f0 00000000 		.4byte	.LFB191
 9315 01f4 0C000000 		.4byte	.LFE191
 9316 01f8 00000000 		.4byte	.LFB192
 9317 01fc 0C000000 		.4byte	.LFE192
 9318 0200 00000000 		.4byte	.LFB193
 9319 0204 0C000000 		.4byte	.LFE193
 9320 0208 00000000 		.4byte	.LFB194
 9321 020c 0C000000 		.4byte	.LFE194
 9322 0210 00000000 		.4byte	.LFB195
 9323 0214 14000000 		.4byte	.LFE195
 9324 0218 00000000 		.4byte	.LFB196
 9325 021c 14000000 		.4byte	.LFE196
 9326 0220 00000000 		.4byte	.LFB197
 9327 0224 18000000 		.4byte	.LFE197
 9328 0228 00000000 		.4byte	.LFB198
 9329 022c 02000000 		.4byte	.LFE198
 9330 0230 00000000 		.4byte	.LFB199
 9331 0234 48000000 		.4byte	.LFE199
 9332 0238 00000000 		.4byte	.LFB200
 9333 023c 28000000 		.4byte	.LFE200
 9334 0240 00000000 		.4byte	.LFB201
 9335 0244 14000000 		.4byte	.LFE201
 9336 0248 00000000 		.4byte	.LFB202
 9337 024c 14000000 		.4byte	.LFE202
 9338 0250 00000000 		.4byte	.LFB203
 9339 0254 14000000 		.4byte	.LFE203
 9340 0258 00000000 		.4byte	.LFB204
 9341 025c 14000000 		.4byte	.LFE204
 9342 0260 00000000 		.4byte	.LFB205
 9343 0264 20000000 		.4byte	.LFE205
 9344 0268 00000000 		.4byte	.LFB206
 9345 026c 0C000000 		.4byte	.LFE206
 9346 0270 00000000 		.4byte	.LFB207
 9347 0274 78000000 		.4byte	.LFE207
ARM GAS  /tmp/ccTYR2Ee.s 			page 205


 9348 0278 00000000 		.4byte	.LFB208
 9349 027c 38000000 		.4byte	.LFE208
 9350 0280 00000000 		.4byte	.LFB209
 9351 0284 0C000000 		.4byte	.LFE209
 9352 0288 00000000 		.4byte	.LFB210
 9353 028c 0C000000 		.4byte	.LFE210
 9354 0290 00000000 		.4byte	.LFB211
 9355 0294 0C000000 		.4byte	.LFE211
 9356 0298 00000000 		.4byte	.LFB212
 9357 029c 0C000000 		.4byte	.LFE212
 9358 02a0 00000000 		.4byte	0
 9359 02a4 00000000 		.4byte	0
 9360              		.section	.debug_line,"",%progbits
 9361              	.Ldebug_line0:
 9362 0000 C4090000 		.section	.debug_str,"MS",%progbits,1
 9362      02007102 
 9362      00000201 
 9362      FB0E0D00 
 9362      01010101 
 9363              	.LASF7:
 9364 0000 6C6F6E67 		.ascii	"long int\000"
 9364      20696E74 
 9364      00
 9365              	.LASF37:
 9366 0009 43504143 		.ascii	"CPACR\000"
 9366      5200
 9367              	.LASF279:
 9368 000f 706D635F 		.ascii	"pmc_switch_pck_to_mainck\000"
 9368      73776974 
 9368      63685F70 
 9368      636B5F74 
 9368      6F5F6D61 
 9369              	.LASF52:
 9370 0028 44434353 		.ascii	"DCCSW\000"
 9370      5700
 9371              	.LASF317:
 9372 002e 706D635F 		.ascii	"pmc_switch_mck_to_upllck\000"
 9372      73776974 
 9372      63685F6D 
 9372      636B5F74 
 9372      6F5F7570 
 9373              	.LASF310:
 9374 0047 706D635F 		.ascii	"pmc_osc_disable_fastrc\000"
 9374      6F73635F 
 9374      64697361 
 9374      626C655F 
 9374      66617374 
 9375              	.LASF143:
 9376 005e 5F6F6E5F 		.ascii	"_on_exit_args\000"
 9376      65786974 
 9376      5F617267 
 9376      7300
 9377              	.LASF294:
 9378 006c 6D756C61 		.ascii	"mula\000"
 9378      00
 9379              	.LASF240:
 9380 0071 756C5F69 		.ascii	"ul_id\000"
ARM GAS  /tmp/ccTYR2Ee.s 			page 206


 9380      6400
 9381              	.LASF259:
 9382 0077 706D635F 		.ascii	"pmc_get_interrupt_mask\000"
 9382      6765745F 
 9382      696E7465 
 9382      72727570 
 9382      745F6D61 
 9383              	.LASF211:
 9384 008e 5F776374 		.ascii	"_wctomb_state\000"
 9384      6F6D625F 
 9384      73746174 
 9384      6500
 9385              	.LASF100:
 9386 009c 504D435F 		.ascii	"PMC_SLPWK_ER0\000"
 9386      534C5057 
 9386      4B5F4552 
 9386      3000
 9387              	.LASF105:
 9388 00aa 504D435F 		.ascii	"PMC_SLPWK_ER1\000"
 9388      534C5057 
 9388      4B5F4552 
 9388      3100
 9389              	.LASF258:
 9390 00b8 706D635F 		.ascii	"pmc_get_status\000"
 9390      6765745F 
 9390      73746174 
 9390      757300
 9391              	.LASF84:
 9392 00c7 504D435F 		.ascii	"PMC_IER\000"
 9392      49455200 
 9393              	.LASF208:
 9394 00cf 5F723438 		.ascii	"_r48\000"
 9394      00
 9395              	.LASF213:
 9396 00d4 5F736967 		.ascii	"_signal_buf\000"
 9396      6E616C5F 
 9396      62756600 
 9397              	.LASF0:
 9398 00e0 756E7369 		.ascii	"unsigned int\000"
 9398      676E6564 
 9398      20696E74 
 9398      00
 9399              	.LASF307:
 9400 00ed 706D635F 		.ascii	"pmc_osc_bypass_main_xtal\000"
 9400      6F73635F 
 9400      62797061 
 9400      73735F6D 
 9400      61696E5F 
 9401              	.LASF282:
 9402 0106 756C5F73 		.ascii	"ul_source\000"
 9402      6F757263 
 9402      6500
 9403              	.LASF14:
 9404 0110 75696E74 		.ascii	"uint32_t\000"
 9404      33325F74 
 9404      00
 9405              	.LASF318:
ARM GAS  /tmp/ccTYR2Ee.s 			page 207


 9406 0119 706D635F 		.ascii	"pmc_switch_mck_to_pllack\000"
 9406      73776974 
 9406      63685F6D 
 9406      636B5F74 
 9406      6F5F706C 
 9407              	.LASF58:
 9408 0132 41484250 		.ascii	"AHBPCR\000"
 9408      435200
 9409              	.LASF45:
 9410 0139 49434941 		.ascii	"ICIALLU\000"
 9410      4C4C5500 
 9411              	.LASF157:
 9412 0141 5F6C6266 		.ascii	"_lbfsize\000"
 9412      73697A65 
 9412      00
 9413              	.LASF155:
 9414 014a 5F666C61 		.ascii	"_flags\000"
 9414      677300
 9415              	.LASF90:
 9416 0151 504D435F 		.ascii	"PMC_FOCR\000"
 9416      464F4352 
 9416      00
 9417              	.LASF316:
 9418 015a 706D635F 		.ascii	"pmc_switch_sclk_to_32kxtal\000"
 9418      73776974 
 9418      63685F73 
 9418      636C6B5F 
 9418      746F5F33 
 9419              	.LASF35:
 9420 0175 43435349 		.ascii	"CCSIDR\000"
 9420      445200
 9421              	.LASF6:
 9422 017c 5F5F696E 		.ascii	"__int32_t\000"
 9422      7433325F 
 9422      7400
 9423              	.LASF242:
 9424 0186 706D635F 		.ascii	"pmc_set_writeprotect\000"
 9424      7365745F 
 9424      77726974 
 9424      6570726F 
 9424      74656374 
 9425              	.LASF172:
 9426 019b 5F657272 		.ascii	"_errno\000"
 9426      6E6F00
 9427              	.LASF3:
 9428 01a2 73686F72 		.ascii	"short int\000"
 9428      7420696E 
 9428      7400
 9429              	.LASF284:
 9430 01ac 706D635F 		.ascii	"pmc_is_periph_clk_enabled\000"
 9430      69735F70 
 9430      65726970 
 9430      685F636C 
 9430      6B5F656E 
 9431              	.LASF169:
 9432 01c6 5F6D6273 		.ascii	"_mbstate\000"
 9432      74617465 
ARM GAS  /tmp/ccTYR2Ee.s 			page 208


 9432      00
 9433              	.LASF323:
 9434 01cf 756C5F64 		.ascii	"ul_div\000"
 9434      697600
 9435              	.LASF325:
 9436 01d6 5F5F4453 		.ascii	"__DSB\000"
 9436      4200
 9437              	.LASF289:
 9438 01dc 706D635F 		.ascii	"pmc_is_locked_upll\000"
 9438      69735F6C 
 9438      6F636B65 
 9438      645F7570 
 9438      6C6C00
 9439              	.LASF159:
 9440 01ef 5F726561 		.ascii	"_read\000"
 9440      6400
 9441              	.LASF110:
 9442 01f5 53555043 		.ascii	"SUPC_CR\000"
 9442      5F435200 
 9443              	.LASF215:
 9444 01fd 5F6D6272 		.ascii	"_mbrlen_state\000"
 9444      6C656E5F 
 9444      73746174 
 9444      6500
 9445              	.LASF297:
 9446 020b 706D635F 		.ascii	"pmc_mainck_osc_select\000"
 9446      6D61696E 
 9446      636B5F6F 
 9446      73635F73 
 9446      656C6563 
 9447              	.LASF305:
 9448 0221 706D635F 		.ascii	"pmc_osc_is_bypassed_main_xtal\000"
 9448      6F73635F 
 9448      69735F62 
 9448      79706173 
 9448      7365645F 
 9449              	.LASF174:
 9450 023f 5F737464 		.ascii	"_stdout\000"
 9450      6F757400 
 9451              	.LASF119:
 9452 0247 5F66706F 		.ascii	"_fpos_t\000"
 9452      735F7400 
 9453              	.LASF76:
 9454 024f 434B4752 		.ascii	"CKGR_PLLAR\000"
 9454      5F504C4C 
 9454      415200
 9455              	.LASF150:
 9456 025a 5F666E73 		.ascii	"_fns\000"
 9456      00
 9457              	.LASF302:
 9458 025f 706D635F 		.ascii	"pmc_switch_mainck_to_xtal\000"
 9458      73776974 
 9458      63685F6D 
 9458      61696E63 
 9458      6B5F746F 
 9459              	.LASF158:
 9460 0279 5F636F6F 		.ascii	"_cookie\000"
ARM GAS  /tmp/ccTYR2Ee.s 			page 209


 9460      6B696500 
 9461              	.LASF24:
 9462 0281 44465352 		.ascii	"DFSR\000"
 9462      00
 9463              	.LASF227:
 9464 0286 675F696E 		.ascii	"g_interrupt_enabled\000"
 9464      74657272 
 9464      7570745F 
 9464      656E6162 
 9464      6C656400 
 9465              	.LASF132:
 9466 029a 5F426967 		.ascii	"_Bigint\000"
 9466      696E7400 
 9467              	.LASF333:
 9468 02a2 706D635F 		.ascii	"pmc_disable_pllack\000"
 9468      64697361 
 9468      626C655F 
 9468      706C6C61 
 9468      636B00
 9469              	.LASF140:
 9470 02b5 5F5F746D 		.ascii	"__tm_wday\000"
 9470      5F776461 
 9470      7900
 9471              	.LASF272:
 9472 02bf 706D635F 		.ascii	"pmc_disable_pck\000"
 9472      64697361 
 9472      626C655F 
 9472      70636B00 
 9473              	.LASF182:
 9474 02cf 5F726573 		.ascii	"_result\000"
 9474      756C7400 
 9475              	.LASF28:
 9476 02d7 49445F50 		.ascii	"ID_PFR\000"
 9476      465200
 9477              	.LASF136:
 9478 02de 5F5F746D 		.ascii	"__tm_hour\000"
 9478      5F686F75 
 9478      7200
 9479              	.LASF73:
 9480 02e8 434B4752 		.ascii	"CKGR_UCKR\000"
 9480      5F55434B 
 9480      5200
 9481              	.LASF234:
 9482 02f2 706D635F 		.ascii	"pmc_get_active_status0\000"
 9482      6765745F 
 9482      61637469 
 9482      76655F73 
 9482      74617475 
 9483              	.LASF233:
 9484 0309 706D635F 		.ascii	"pmc_get_active_status1\000"
 9484      6765745F 
 9484      61637469 
 9484      76655F73 
 9484      74617475 
 9485              	.LASF123:
 9486 0320 5F5F636F 		.ascii	"__count\000"
 9486      756E7400 
ARM GAS  /tmp/ccTYR2Ee.s 			page 210


 9487              	.LASF231:
 9488 0328 666C6F61 		.ascii	"float\000"
 9488      7400
 9489              	.LASF135:
 9490 032e 5F5F746D 		.ascii	"__tm_min\000"
 9490      5F6D696E 
 9490      00
 9491              	.LASF224:
 9492 0337 5F696D70 		.ascii	"_impure_ptr\000"
 9492      7572655F 
 9492      70747200 
 9493              	.LASF221:
 9494 0343 5F6E6578 		.ascii	"_nextf\000"
 9494      746600
 9495              	.LASF303:
 9496 034a 756C5F78 		.ascii	"ul_xtal_startup_time\000"
 9496      74616C5F 
 9496      73746172 
 9496      7475705F 
 9496      74696D65 
 9497              	.LASF109:
 9498 035f 504D435F 		.ascii	"PMC_SLPWK_AIPR\000"
 9498      534C5057 
 9498      4B5F4149 
 9498      505200
 9499              	.LASF217:
 9500 036e 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 9500      72746F77 
 9500      63735F73 
 9500      74617465 
 9500      00
 9501              	.LASF320:
 9502 037f 706D635F 		.ascii	"pmc_switch_mck_to_sclk\000"
 9502      73776974 
 9502      63685F6D 
 9502      636B5F74 
 9502      6F5F7363 
 9503              	.LASF308:
 9504 0396 706D635F 		.ascii	"pmc_osc_enable_main_xtal\000"
 9504      6F73635F 
 9504      656E6162 
 9504      6C655F6D 
 9504      61696E5F 
 9505              	.LASF11:
 9506 03af 6C6F6E67 		.ascii	"long long unsigned int\000"
 9506      206C6F6E 
 9506      6720756E 
 9506      7369676E 
 9506      65642069 
 9507              	.LASF324:
 9508 03c6 706D635F 		.ascii	"pmc_mck_set_prescaler\000"
 9508      6D636B5F 
 9508      7365745F 
 9508      70726573 
 9508      63616C65 
 9509              	.LASF204:
 9510 03dc 5F617363 		.ascii	"_asctime_buf\000"
ARM GAS  /tmp/ccTYR2Ee.s 			page 211


 9510      74696D65 
 9510      5F627566 
 9510      00
 9511              	.LASF198:
 9512 03e9 5F72616E 		.ascii	"_rand48\000"
 9512      64343800 
 9513              	.LASF154:
 9514 03f1 5F5F7346 		.ascii	"__sFILE\000"
 9514      494C4500 
 9515              	.LASF131:
 9516 03f9 5F776473 		.ascii	"_wds\000"
 9516      00
 9517              	.LASF47:
 9518 03fe 4943494D 		.ascii	"ICIMVAU\000"
 9518      56415500 
 9519              	.LASF273:
 9520 0406 706D635F 		.ascii	"pmc_enable_pck\000"
 9520      656E6162 
 9520      6C655F70 
 9520      636B00
 9521              	.LASF75:
 9522 0415 434B4752 		.ascii	"CKGR_MCFR\000"
 9522      5F4D4346 
 9522      5200
 9523              	.LASF87:
 9524 041f 504D435F 		.ascii	"PMC_IMR\000"
 9524      494D5200 
 9525              	.LASF194:
 9526 0427 5F5F4649 		.ascii	"__FILE\000"
 9526      4C4500
 9527              	.LASF60:
 9528 042e 41484253 		.ascii	"AHBSCR\000"
 9528      435200
 9529              	.LASF166:
 9530 0435 5F6F6666 		.ascii	"_offset\000"
 9530      73657400 
 9531              	.LASF163:
 9532 043d 5F756275 		.ascii	"_ubuf\000"
 9532      6600
 9533              	.LASF103:
 9534 0443 504D435F 		.ascii	"PMC_SLPWK_ASR0\000"
 9534      534C5057 
 9534      4B5F4153 
 9534      523000
 9535              	.LASF177:
 9536 0452 5F656D65 		.ascii	"_emergency\000"
 9536      7267656E 
 9536      637900
 9537              	.LASF246:
 9538 045d 706D635F 		.ascii	"pmc_disable_clock_failure_detector\000"
 9538      64697361 
 9538      626C655F 
 9538      636C6F63 
 9538      6B5F6661 
 9539              	.LASF314:
 9540 0480 756C5F6D 		.ascii	"ul_moscrcf\000"
 9540      6F736372 
ARM GAS  /tmp/ccTYR2Ee.s 			page 212


 9540      636600
 9541              	.LASF116:
 9542 048b 53757063 		.ascii	"Supc\000"
 9542      00
 9543              	.LASF111:
 9544 0490 53555043 		.ascii	"SUPC_SMMR\000"
 9544      5F534D4D 
 9544      5200
 9545              	.LASF293:
 9546 049a 706D635F 		.ascii	"pmc_enable_pllack\000"
 9546      656E6162 
 9546      6C655F70 
 9546      6C6C6163 
 9546      6B00
 9547              	.LASF230:
 9548 04ac 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 9548      6972715F 
 9548      70726576 
 9548      5F696E74 
 9548      65727275 
 9549              	.LASF315:
 9550 04c9 706D635F 		.ascii	"pmc_osc_is_ready_32kxtal\000"
 9550      6F73635F 
 9550      69735F72 
 9550      65616479 
 9550      5F33326B 
 9551              	.LASF72:
 9552 04e2 504D435F 		.ascii	"PMC_PCSR0\000"
 9552      50435352 
 9552      3000
 9553              	.LASF31:
 9554 04ec 49445F4D 		.ascii	"ID_MFR\000"
 9554      465200
 9555              	.LASF97:
 9556 04f3 504D435F 		.ascii	"PMC_PCSR1\000"
 9556      50435352 
 9556      3100
 9557              	.LASF134:
 9558 04fd 5F5F746D 		.ascii	"__tm_sec\000"
 9558      5F736563 
 9558      00
 9559              	.LASF16:
 9560 0506 43505549 		.ascii	"CPUID\000"
 9560      4400
 9561              	.LASF281:
 9562 050c 706D635F 		.ascii	"pmc_pck_set_source\000"
 9562      70636B5F 
 9562      7365745F 
 9562      736F7572 
 9562      636500
 9563              	.LASF88:
 9564 051f 504D435F 		.ascii	"PMC_FSMR\000"
 9564      46534D52 
 9564      00
 9565              	.LASF141:
 9566 0528 5F5F746D 		.ascii	"__tm_yday\000"
 9566      5F796461 
ARM GAS  /tmp/ccTYR2Ee.s 			page 213


 9566      7900
 9567              	.LASF176:
 9568 0532 5F696E63 		.ascii	"_inc\000"
 9568      00
 9569              	.LASF228:
 9570 0537 5F426F6F 		.ascii	"_Bool\000"
 9570      6C00
 9571              	.LASF20:
 9572 053d 53485052 		.ascii	"SHPR\000"
 9572      00
 9573              	.LASF322:
 9574 0542 706D635F 		.ascii	"pmc_mck_set_division\000"
 9574      6D636B5F 
 9574      7365745F 
 9574      64697669 
 9574      73696F6E 
 9575              	.LASF93:
 9576 0557 504D435F 		.ascii	"PMC_WPSR\000"
 9576      57505352 
 9576      00
 9577              	.LASF128:
 9578 0560 5F6E6578 		.ascii	"_next\000"
 9578      7400
 9579              	.LASF27:
 9580 0566 41465352 		.ascii	"AFSR\000"
 9580      00
 9581              	.LASF67:
 9582 056b 504D435F 		.ascii	"PMC_SCDR\000"
 9582      53434452 
 9582      00
 9583              	.LASF70:
 9584 0574 504D435F 		.ascii	"PMC_PCER0\000"
 9584      50434552 
 9584      3000
 9585              	.LASF95:
 9586 057e 504D435F 		.ascii	"PMC_PCER1\000"
 9586      50434552 
 9586      3100
 9587              	.LASF292:
 9588 0588 706D635F 		.ascii	"pmc_is_locked_pllack\000"
 9588      69735F6C 
 9588      6F636B65 
 9588      645F706C 
 9588      6C61636B 
 9589              	.LASF82:
 9590 059d 504D435F 		.ascii	"PMC_PCK\000"
 9590      50434B00 
 9591              	.LASF124:
 9592 05a5 5F5F7661 		.ascii	"__value\000"
 9592      6C756500 
 9593              	.LASF184:
 9594 05ad 5F703573 		.ascii	"_p5s\000"
 9594      00
 9595              	.LASF98:
 9596 05b2 504D435F 		.ascii	"PMC_PCR\000"
 9596      50435200 
 9597              	.LASF304:
ARM GAS  /tmp/ccTYR2Ee.s 			page 214


 9598 05ba 706D635F 		.ascii	"pmc_osc_is_ready_main_xtal\000"
 9598      6F73635F 
 9598      69735F72 
 9598      65616479 
 9598      5F6D6169 
 9599              	.LASF285:
 9600 05d5 706D635F 		.ascii	"pmc_disable_all_periph_clk\000"
 9600      64697361 
 9600      626C655F 
 9600      616C6C5F 
 9600      70657269 
 9601              	.LASF23:
 9602 05f0 48465352 		.ascii	"HFSR\000"
 9602      00
 9603              	.LASF49:
 9604 05f5 44434953 		.ascii	"DCISW\000"
 9604      5700
 9605              	.LASF311:
 9606 05fb 706D635F 		.ascii	"pmc_osc_enable_fastrc\000"
 9606      6F73635F 
 9606      656E6162 
 9606      6C655F66 
 9606      61737472 
 9607              	.LASF209:
 9608 0611 5F6D626C 		.ascii	"_mblen_state\000"
 9608      656E5F73 
 9608      74617465 
 9608      00
 9609              	.LASF298:
 9610 061e 756C5F78 		.ascii	"ul_xtal_rc\000"
 9610      74616C5F 
 9610      726300
 9611              	.LASF244:
 9612 0629 756C5F72 		.ascii	"ul_reg\000"
 9612      656700
 9613              	.LASF80:
 9614 0630 504D435F 		.ascii	"PMC_USB\000"
 9614      55534200 
 9615              	.LASF193:
 9616 0638 63686172 		.ascii	"char\000"
 9616      00
 9617              	.LASF137:
 9618 063d 5F5F746D 		.ascii	"__tm_mday\000"
 9618      5F6D6461 
 9618      7900
 9619              	.LASF190:
 9620 0647 5F736967 		.ascii	"_sig_func\000"
 9620      5F66756E 
 9620      6300
 9621              	.LASF216:
 9622 0651 5F6D6272 		.ascii	"_mbrtowc_state\000"
 9622      746F7763 
 9622      5F737461 
 9622      746500
 9623              	.LASF189:
 9624 0660 5F617465 		.ascii	"_atexit0\000"
 9624      78697430 
ARM GAS  /tmp/ccTYR2Ee.s 			page 215


 9624      00
 9625              	.LASF19:
 9626 0669 41495243 		.ascii	"AIRCR\000"
 9626      5200
 9627              	.LASF48:
 9628 066f 4443494D 		.ascii	"DCIMVAU\000"
 9628      56415500 
 9629              	.LASF313:
 9630 0677 706D635F 		.ascii	"pmc_switch_mainck_to_fastrc\000"
 9630      73776974 
 9630      63685F6D 
 9630      61696E63 
 9630      6B5F746F 
 9631              	.LASF29:
 9632 0693 49445F44 		.ascii	"ID_DFR\000"
 9632      465200
 9633              	.LASF306:
 9634 069a 706D635F 		.ascii	"pmc_osc_disable_main_xtal\000"
 9634      6F73635F 
 9634      64697361 
 9634      626C655F 
 9634      6D61696E 
 9635              	.LASF183:
 9636 06b4 5F726573 		.ascii	"_result_k\000"
 9636      756C745F 
 9636      6B00
 9637              	.LASF121:
 9638 06be 5F5F7763 		.ascii	"__wch\000"
 9638      6800
 9639              	.LASF197:
 9640 06c4 5F696F62 		.ascii	"_iobs\000"
 9640      7300
 9641              	.LASF12:
 9642 06ca 75696E74 		.ascii	"uint8_t\000"
 9642      385F7400 
 9643              	.LASF115:
 9644 06d2 53555043 		.ascii	"SUPC_SR\000"
 9644      5F535200 
 9645              	.LASF162:
 9646 06da 5F636C6F 		.ascii	"_close\000"
 9646      736500
 9647              	.LASF180:
 9648 06e1 5F5F7364 		.ascii	"__sdidinit\000"
 9648      6964696E 
 9648      697400
 9649              	.LASF309:
 9650 06ec 706D635F 		.ascii	"pmc_osc_is_ready_fastrc\000"
 9650      6F73635F 
 9650      69735F72 
 9650      65616479 
 9650      5F666173 
 9651              	.LASF59:
 9652 0704 43414352 		.ascii	"CACR\000"
 9652      00
 9653              	.LASF299:
 9654 0709 706D635F 		.ascii	"pmc_osc_is_ready_mainck\000"
 9654      6F73635F 
ARM GAS  /tmp/ccTYR2Ee.s 			page 216


 9654      69735F72 
 9654      65616479 
 9654      5F6D6169 
 9655              	.LASF173:
 9656 0721 5F737464 		.ascii	"_stdin\000"
 9656      696E00
 9657              	.LASF206:
 9658 0728 5F67616D 		.ascii	"_gamma_signgam\000"
 9658      6D615F73 
 9658      69676E67 
 9658      616D00
 9659              	.LASF54:
 9660 0737 44434349 		.ascii	"DCCISW\000"
 9660      535700
 9661              	.LASF36:
 9662 073e 43535345 		.ascii	"CSSELR\000"
 9662      4C5200
 9663              	.LASF10:
 9664 0745 6C6F6E67 		.ascii	"long long int\000"
 9664      206C6F6E 
 9664      6720696E 
 9664      7400
 9665              	.LASF53:
 9666 0753 44434349 		.ascii	"DCCIMVAC\000"
 9666      4D564143 
 9666      00
 9667              	.LASF152:
 9668 075c 5F626173 		.ascii	"_base\000"
 9668      6500
 9669              	.LASF185:
 9670 0762 5F667265 		.ascii	"_freelist\000"
 9670      656C6973 
 9670      7400
 9671              	.LASF200:
 9672 076c 5F6D756C 		.ascii	"_mult\000"
 9672      7400
 9673              	.LASF51:
 9674 0772 4443434D 		.ascii	"DCCMVAC\000"
 9674      56414300 
 9675              	.LASF201:
 9676 077a 5F616464 		.ascii	"_add\000"
 9676      00
 9677              	.LASF22:
 9678 077f 43465352 		.ascii	"CFSR\000"
 9678      00
 9679              	.LASF277:
 9680 0784 706D635F 		.ascii	"pmc_switch_pck_to_upllck\000"
 9680      73776974 
 9680      63685F70 
 9680      636B5F74 
 9680      6F5F7570 
 9681              	.LASF218:
 9682 079d 5F776372 		.ascii	"_wcrtomb_state\000"
 9682      746F6D62 
 9682      5F737461 
 9682      746500
 9683              	.LASF156:
ARM GAS  /tmp/ccTYR2Ee.s 			page 217


 9684 07ac 5F66696C 		.ascii	"_file\000"
 9684      6500
 9685              	.LASF50:
 9686 07b2 4443434D 		.ascii	"DCCMVAU\000"
 9686      56415500 
 9687              	.LASF89:
 9688 07ba 504D435F 		.ascii	"PMC_FSPR\000"
 9688      46535052 
 9688      00
 9689              	.LASF262:
 9690 07c3 706D635F 		.ascii	"pmc_enable_interrupt\000"
 9690      656E6162 
 9690      6C655F69 
 9690      6E746572 
 9690      72757074 
 9691              	.LASF319:
 9692 07d8 706D635F 		.ascii	"pmc_switch_mck_to_mainck\000"
 9692      73776974 
 9692      63685F6D 
 9692      636B5F74 
 9692      6F5F6D61 
 9693              	.LASF268:
 9694 07f1 706D635F 		.ascii	"pmc_enable_sleepwalking\000"
 9694      656E6162 
 9694      6C655F73 
 9694      6C656570 
 9694      77616C6B 
 9695              	.LASF30:
 9696 0809 49445F41 		.ascii	"ID_AFR\000"
 9696      465200
 9697              	.LASF181:
 9698 0810 5F5F636C 		.ascii	"__cleanup\000"
 9698      65616E75 
 9698      7000
 9699              	.LASF125:
 9700 081a 5F6D6273 		.ascii	"_mbstate_t\000"
 9700      74617465 
 9700      5F7400
 9701              	.LASF271:
 9702 0825 706D635F 		.ascii	"pmc_enable_all_pck\000"
 9702      656E6162 
 9702      6C655F61 
 9702      6C6C5F70 
 9702      636B00
 9703              	.LASF295:
 9704 0838 706C6C61 		.ascii	"pllacount\000"
 9704      636F756E 
 9704      7400
 9705              	.LASF144:
 9706 0842 5F666E61 		.ascii	"_fnargs\000"
 9706      72677300 
 9707              	.LASF69:
 9708 084a 52657365 		.ascii	"Reserved1\000"
 9708      72766564 
 9708      3100
 9709              	.LASF266:
 9710 0854 756C5F75 		.ascii	"ul_usbdiv\000"
ARM GAS  /tmp/ccTYR2Ee.s 			page 218


 9710      73626469 
 9710      7600
 9711              	.LASF79:
 9712 085e 52657365 		.ascii	"Reserved3\000"
 9712      72766564 
 9712      3300
 9713              	.LASF126:
 9714 0868 5F666C6F 		.ascii	"_flock_t\000"
 9714      636B5F74 
 9714      00
 9715              	.LASF278:
 9716 0871 706D635F 		.ascii	"pmc_switch_pck_to_pllack\000"
 9716      73776974 
 9716      63685F70 
 9716      636B5F74 
 9716      6F5F706C 
 9717              	.LASF91:
 9718 088a 52657365 		.ascii	"Reserved6\000"
 9718      72766564 
 9718      3600
 9719              	.LASF142:
 9720 0894 5F5F746D 		.ascii	"__tm_isdst\000"
 9720      5F697364 
 9720      737400
 9721              	.LASF104:
 9722 089f 52657365 		.ascii	"Reserved8\000"
 9722      72766564 
 9722      3800
 9723              	.LASF219:
 9724 08a9 5F776373 		.ascii	"_wcsrtombs_state\000"
 9724      72746F6D 
 9724      62735F73 
 9724      74617465 
 9724      00
 9725              	.LASF275:
 9726 08ba 756C5F70 		.ascii	"ul_pres\000"
 9726      72657300 
 9727              	.LASF149:
 9728 08c2 5F696E64 		.ascii	"_ind\000"
 9728      00
 9729              	.LASF286:
 9730 08c7 706D635F 		.ascii	"pmc_enable_all_periph_clk\000"
 9730      656E6162 
 9730      6C655F61 
 9730      6C6C5F70 
 9730      65726970 
 9731              	.LASF251:
 9732 08e1 706D635F 		.ascii	"pmc_set_flash_in_wait_mode\000"
 9732      7365745F 
 9732      666C6173 
 9732      685F696E 
 9732      5F776169 
 9733              	.LASF236:
 9734 08fc 706D635F 		.ascii	"pmc_get_sleepwalking_status0\000"
 9734      6765745F 
 9734      736C6565 
 9734      7077616C 
ARM GAS  /tmp/ccTYR2Ee.s 			page 219


 9734      6B696E67 
 9735              	.LASF235:
 9736 0919 706D635F 		.ascii	"pmc_get_sleepwalking_status1\000"
 9736      6765745F 
 9736      736C6565 
 9736      7077616C 
 9736      6B696E67 
 9737              	.LASF102:
 9738 0936 504D435F 		.ascii	"PMC_SLPWK_SR0\000"
 9738      534C5057 
 9738      4B5F5352 
 9738      3000
 9739              	.LASF107:
 9740 0944 504D435F 		.ascii	"PMC_SLPWK_SR1\000"
 9740      534C5057 
 9740      4B5F5352 
 9740      3100
 9741              	.LASF241:
 9742 0952 756C5F65 		.ascii	"ul_enable\000"
 9742      6E61626C 
 9742      6500
 9743              	.LASF138:
 9744 095c 5F5F746D 		.ascii	"__tm_mon\000"
 9744      5F6D6F6E 
 9744      00
 9745              	.LASF287:
 9746 0965 706D635F 		.ascii	"pmc_disable_periph_clk\000"
 9746      64697361 
 9746      626C655F 
 9746      70657269 
 9746      70685F63 
 9747              	.LASF243:
 9748 097c 706D635F 		.ascii	"pmc_disable_sclk_osc_freq_monitor\000"
 9748      64697361 
 9748      626C655F 
 9748      73636C6B 
 9748      5F6F7363 
 9749              	.LASF34:
 9750 099e 434C4944 		.ascii	"CLIDR\000"
 9750      5200
 9751              	.LASF65:
 9752 09a4 53797374 		.ascii	"SystemCoreClock\000"
 9752      656D436F 
 9752      7265436C 
 9752      6F636B00 
 9753              	.LASF267:
 9754 09b4 706D635F 		.ascii	"pmc_switch_udpck_to_pllack\000"
 9754      73776974 
 9754      63685F75 
 9754      6470636B 
 9754      5F746F5F 
 9755              	.LASF312:
 9756 09cf 756C5F72 		.ascii	"ul_rc\000"
 9756      6300
 9757              	.LASF160:
 9758 09d5 5F777269 		.ascii	"_write\000"
 9758      746500
ARM GAS  /tmp/ccTYR2Ee.s 			page 220


 9759              	.LASF39:
 9760 09dc 53544952 		.ascii	"STIR\000"
 9760      00
 9761              	.LASF8:
 9762 09e1 5F5F7569 		.ascii	"__uint32_t\000"
 9762      6E743332 
 9762      5F7400
 9763              	.LASF263:
 9764 09ec 706D635F 		.ascii	"pmc_disable_udpck\000"
 9764      64697361 
 9764      626C655F 
 9764      75647063 
 9764      6B00
 9765              	.LASF207:
 9766 09fe 5F72616E 		.ascii	"_rand_next\000"
 9766      645F6E65 
 9766      787400
 9767              	.LASF25:
 9768 0a09 4D4D4641 		.ascii	"MMFAR\000"
 9768      5200
 9769              	.LASF148:
 9770 0a0f 5F617465 		.ascii	"_atexit\000"
 9770      78697400 
 9771              	.LASF290:
 9772 0a17 706D635F 		.ascii	"pmc_disable_upll_clock\000"
 9772      64697361 
 9772      626C655F 
 9772      75706C6C 
 9772      5F636C6F 
 9773              	.LASF101:
 9774 0a2e 504D435F 		.ascii	"PMC_SLPWK_DR0\000"
 9774      534C5057 
 9774      4B5F4452 
 9774      3000
 9775              	.LASF106:
 9776 0a3c 504D435F 		.ascii	"PMC_SLPWK_DR1\000"
 9776      534C5057 
 9776      4B5F4452 
 9776      3100
 9777              	.LASF245:
 9778 0a4a 706D635F 		.ascii	"pmc_enable_sclk_osc_freq_monitor\000"
 9778      656E6162 
 9778      6C655F73 
 9778      636C6B5F 
 9778      6F73635F 
 9779              	.LASF33:
 9780 0a6b 52455345 		.ascii	"RESERVED0\000"
 9780      52564544 
 9780      3000
 9781              	.LASF21:
 9782 0a75 53484353 		.ascii	"SHCSR\000"
 9782      5200
 9783              	.LASF38:
 9784 0a7b 52455345 		.ascii	"RESERVED3\000"
 9784      52564544 
 9784      3300
 9785              	.LASF40:
ARM GAS  /tmp/ccTYR2Ee.s 			page 221


 9786 0a85 52455345 		.ascii	"RESERVED4\000"
 9786      52564544 
 9786      3400
 9787              	.LASF44:
 9788 0a8f 52455345 		.ascii	"RESERVED5\000"
 9788      52564544 
 9788      3500
 9789              	.LASF46:
 9790 0a99 52455345 		.ascii	"RESERVED6\000"
 9790      52564544 
 9790      3600
 9791              	.LASF62:
 9792 0aa3 41424653 		.ascii	"ABFSR\000"
 9792      5200
 9793              	.LASF61:
 9794 0aa9 52455345 		.ascii	"RESERVED8\000"
 9794      52564544 
 9794      3800
 9795              	.LASF94:
 9796 0ab3 52657365 		.ascii	"Reserved7\000"
 9796      72766564 
 9796      3700
 9797              	.LASF85:
 9798 0abd 504D435F 		.ascii	"PMC_IDR\000"
 9798      49445200 
 9799              	.LASF248:
 9800 0ac5 706D635F 		.ascii	"pmc_enable_backupmode\000"
 9800      656E6162 
 9800      6C655F62 
 9800      61636B75 
 9800      706D6F64 
 9801              	.LASF265:
 9802 0adb 706D635F 		.ascii	"pmc_switch_udpck_to_upllck\000"
 9802      73776974 
 9802      63685F75 
 9802      6470636B 
 9802      5F746F5F 
 9803              	.LASF64:
 9804 0af6 49544D5F 		.ascii	"ITM_RxBuffer\000"
 9804      52784275 
 9804      66666572 
 9804      00
 9805              	.LASF74:
 9806 0b03 434B4752 		.ascii	"CKGR_MOR\000"
 9806      5F4D4F52 
 9806      00
 9807              	.LASF301:
 9808 0b0c 756C5F62 		.ascii	"ul_bypass\000"
 9808      79706173 
 9808      7300
 9809              	.LASF192:
 9810 0b16 5F5F7366 		.ascii	"__sf\000"
 9810      00
 9811              	.LASF130:
 9812 0b1b 5F736967 		.ascii	"_sign\000"
 9812      6E00
 9813              	.LASF238:
ARM GAS  /tmp/ccTYR2Ee.s 			page 222


 9814 0b21 74656D70 		.ascii	"temp\000"
 9814      00
 9815              	.LASF280:
 9816 0b26 706D635F 		.ascii	"pmc_switch_pck_to_sclk\000"
 9816      73776974 
 9816      63685F70 
 9816      636B5F74 
 9816      6F5F7363 
 9817              	.LASF179:
 9818 0b3d 5F637572 		.ascii	"_current_locale\000"
 9818      72656E74 
 9818      5F6C6F63 
 9818      616C6500 
 9819              	.LASF237:
 9820 0b4d 756C5F66 		.ascii	"ul_flash_in_wait_mode\000"
 9820      6C617368 
 9820      5F696E5F 
 9820      77616974 
 9820      5F6D6F64 
 9821              	.LASF167:
 9822 0b63 5F646174 		.ascii	"_data\000"
 9822      6100
 9823              	.LASF178:
 9824 0b69 5F637572 		.ascii	"_current_category\000"
 9824      72656E74 
 9824      5F636174 
 9824      65676F72 
 9824      7900
 9825              	.LASF122:
 9826 0b7b 5F5F7763 		.ascii	"__wchb\000"
 9826      686200
 9827              	.LASF225:
 9828 0b82 5F676C6F 		.ascii	"_global_impure_ptr\000"
 9828      62616C5F 
 9828      696D7075 
 9828      72655F70 
 9828      747200
 9829              	.LASF139:
 9830 0b95 5F5F746D 		.ascii	"__tm_year\000"
 9830      5F796561 
 9830      7200
 9831              	.LASF57:
 9832 0b9f 4454434D 		.ascii	"DTCMCR\000"
 9832      435200
 9833              	.LASF261:
 9834 0ba6 756C5F73 		.ascii	"ul_sources\000"
 9834      6F757263 
 9834      657300
 9835              	.LASF239:
 9836 0bb1 706D635F 		.ascii	"pmc_get_writeprotect_status\000"
 9836      6765745F 
 9836      77726974 
 9836      6570726F 
 9836      74656374 
 9837              	.LASF108:
 9838 0bcd 504D435F 		.ascii	"PMC_SLPWK_ASR1\000"
 9838      534C5057 
ARM GAS  /tmp/ccTYR2Ee.s 			page 223


 9838      4B5F4153 
 9838      523100
 9839              	.LASF205:
 9840 0bdc 5F6C6F63 		.ascii	"_localtime_buf\000"
 9840      616C7469 
 9840      6D655F62 
 9840      756600
 9841              	.LASF296:
 9842 0beb 64697661 		.ascii	"diva\000"
 9842      00
 9843              	.LASF223:
 9844 0bf0 5F756E75 		.ascii	"_unused\000"
 9844      73656400 
 9845              	.LASF5:
 9846 0bf8 5F5F7569 		.ascii	"__uint8_t\000"
 9846      6E74385F 
 9846      7400
 9847              	.LASF188:
 9848 0c02 5F6E6577 		.ascii	"_new\000"
 9848      00
 9849              	.LASF63:
 9850 0c07 5343425F 		.ascii	"SCB_Type\000"
 9850      54797065 
 9850      00
 9851              	.LASF186:
 9852 0c10 5F637674 		.ascii	"_cvtlen\000"
 9852      6C656E00 
 9853              	.LASF129:
 9854 0c18 5F6D6178 		.ascii	"_maxwds\000"
 9854      77647300 
 9855              	.LASF212:
 9856 0c20 5F6C3634 		.ascii	"_l64a_buf\000"
 9856      615F6275 
 9856      6600
 9857              	.LASF330:
 9858 0c2a 2E2E2F61 		.ascii	"../asf/sam/drivers/pmc/pmc.c\000"
 9858      73662F73 
 9858      616D2F64 
 9858      72697665 
 9858      72732F70 
 9859              	.LASF18:
 9860 0c47 56544F52 		.ascii	"VTOR\000"
 9860      00
 9861              	.LASF274:
 9862 0c4c 706D635F 		.ascii	"pmc_switch_pck_to_mck\000"
 9862      73776974 
 9862      63685F70 
 9862      636B5F74 
 9862      6F5F6D63 
 9863              	.LASF127:
 9864 0c62 5F5F554C 		.ascii	"__ULong\000"
 9864      6F6E6700 
 9865              	.LASF165:
 9866 0c6a 5F626C6B 		.ascii	"_blksize\000"
 9866      73697A65 
 9866      00
 9867              	.LASF133:
ARM GAS  /tmp/ccTYR2Ee.s 			page 224


 9868 0c73 5F5F746D 		.ascii	"__tm\000"
 9868      00
 9869              	.LASF276:
 9870 0c78 756C5F74 		.ascii	"ul_timeout\000"
 9870      696D656F 
 9870      757400
 9871              	.LASF168:
 9872 0c83 5F6C6F63 		.ascii	"_lock\000"
 9872      6B00
 9873              	.LASF83:
 9874 0c89 52657365 		.ascii	"Reserved5\000"
 9874      72766564 
 9874      3500
 9875              	.LASF15:
 9876 0c93 73697A65 		.ascii	"sizetype\000"
 9876      74797065 
 9876      00
 9877              	.LASF17:
 9878 0c9c 49435352 		.ascii	"ICSR\000"
 9878      00
 9879              	.LASF9:
 9880 0ca1 6C6F6E67 		.ascii	"long unsigned int\000"
 9880      20756E73 
 9880      69676E65 
 9880      6420696E 
 9880      7400
 9881              	.LASF113:
 9882 0cb3 53555043 		.ascii	"SUPC_WUMR\000"
 9882      5F57554D 
 9882      5200
 9883              	.LASF229:
 9884 0cbd 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 9884      6972715F 
 9884      63726974 
 9884      6963616C 
 9884      5F736563 
 9885              	.LASF256:
 9886 0cde 756C5F69 		.ascii	"ul_inputs\000"
 9886      6E707574 
 9886      7300
 9887              	.LASF112:
 9888 0ce8 53555043 		.ascii	"SUPC_MR\000"
 9888      5F4D5200 
 9889              	.LASF120:
 9890 0cf0 77696E74 		.ascii	"wint_t\000"
 9890      5F7400
 9891              	.LASF13:
 9892 0cf7 696E7433 		.ascii	"int32_t\000"
 9892      325F7400 
 9893              	.LASF321:
 9894 0cff 706D635F 		.ascii	"pmc_mck_set_source\000"
 9894      6D636B5F 
 9894      7365745F 
 9894      736F7572 
 9894      636500
 9895              	.LASF145:
 9896 0d12 5F64736F 		.ascii	"_dso_handle\000"
ARM GAS  /tmp/ccTYR2Ee.s 			page 225


 9896      5F68616E 
 9896      646C6500 
 9897              	.LASF249:
 9898 0d1e 756C5F64 		.ascii	"ul_dummy\000"
 9898      756D6D79 
 9898      00
 9899              	.LASF326:
 9900 0d27 5F5F5746 		.ascii	"__WFE\000"
 9900      4500
 9901              	.LASF327:
 9902 0d2d 5F5F5746 		.ascii	"__WFI\000"
 9902      4900
 9903              	.LASF187:
 9904 0d33 5F637674 		.ascii	"_cvtbuf\000"
 9904      62756600 
 9905              	.LASF2:
 9906 0d3b 756E7369 		.ascii	"unsigned char\000"
 9906      676E6564 
 9906      20636861 
 9906      7200
 9907              	.LASF291:
 9908 0d49 706D635F 		.ascii	"pmc_enable_upll_clock\000"
 9908      656E6162 
 9908      6C655F75 
 9908      706C6C5F 
 9908      636C6F63 
 9909              	.LASF226:
 9910 0d5f 7375626F 		.ascii	"suboptarg\000"
 9910      70746172 
 9910      6700
 9911              	.LASF117:
 9912 0d69 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 9912      4B5F5245 
 9912      43555253 
 9912      4956455F 
 9912      5400
 9913              	.LASF328:
 9914 0d7b 5F5F4E4F 		.ascii	"__NOP\000"
 9914      5000
 9915              	.LASF332:
 9916 0d81 706D635F 		.ascii	"pmc_disable_sleepwalking\000"
 9916      64697361 
 9916      626C655F 
 9916      736C6565 
 9916      7077616C 
 9917              	.LASF255:
 9918 0d9a 706D635F 		.ascii	"pmc_clr_fast_startup_input\000"
 9918      636C725F 
 9918      66617374 
 9918      5F737461 
 9918      72747570 
 9919              	.LASF196:
 9920 0db5 5F6E696F 		.ascii	"_niobs\000"
 9920      627300
 9921              	.LASF329:
 9922 0dbc 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 9922      43393920 
ARM GAS  /tmp/ccTYR2Ee.s 			page 226


 9922      362E332E 
 9922      31203230 
 9922      31373036 
 9923 0def 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 9923      76352D64 
 9923      3136202D 
 9923      6D666C6F 
 9923      61742D61 
 9924 0e22 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 9924      6E2D7365 
 9924      6374696F 
 9924      6E73202D 
 9924      66646174 
 9925 0e55 6F6E7374 		.ascii	"onstant\000"
 9925      616E7400 
 9926              	.LASF151:
 9927 0e5d 5F5F7362 		.ascii	"__sbuf\000"
 9927      756600
 9928              	.LASF270:
 9929 0e64 706D635F 		.ascii	"pmc_disable_all_pck\000"
 9929      64697361 
 9929      626C655F 
 9929      616C6C5F 
 9929      70636B00 
 9930              	.LASF77:
 9931 0e78 52657365 		.ascii	"Reserved2\000"
 9931      72766564 
 9931      3200
 9932              	.LASF195:
 9933 0e82 5F676C75 		.ascii	"_glue\000"
 9933      6500
 9934              	.LASF68:
 9935 0e88 504D435F 		.ascii	"PMC_SCSR\000"
 9935      53435352 
 9935      00
 9936              	.LASF81:
 9937 0e91 52657365 		.ascii	"Reserved4\000"
 9937      72766564 
 9937      3400
 9938              	.LASF331:
 9939 0e9b 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 9939      652F746F 
 9939      72626A6F 
 9939      726E2F65 
 9939      636C6970 
 9940              	.LASF269:
 9941 0eca 706D635F 		.ascii	"pmc_is_pck_enabled\000"
 9941      69735F70 
 9941      636B5F65 
 9941      6E61626C 
 9941      656400
 9942              	.LASF191:
 9943 0edd 5F5F7367 		.ascii	"__sglue\000"
 9943      6C756500 
 9944              	.LASF214:
 9945 0ee5 5F676574 		.ascii	"_getdate_err\000"
 9945      64617465 
ARM GAS  /tmp/ccTYR2Ee.s 			page 227


 9945      5F657272 
 9945      00
 9946              	.LASF78:
 9947 0ef2 504D435F 		.ascii	"PMC_MCKR\000"
 9947      4D434B52 
 9947      00
 9948              	.LASF203:
 9949 0efb 5F737472 		.ascii	"_strtok_last\000"
 9949      746F6B5F 
 9949      6C617374 
 9949      00
 9950              	.LASF210:
 9951 0f08 5F6D6274 		.ascii	"_mbtowc_state\000"
 9951      6F77635F 
 9951      73746174 
 9951      6500
 9952              	.LASF288:
 9953 0f16 706D635F 		.ascii	"pmc_enable_periph_clk\000"
 9953      656E6162 
 9953      6C655F70 
 9953      65726970 
 9953      685F636C 
 9954              	.LASF1:
 9955 0f2c 7369676E 		.ascii	"signed char\000"
 9955      65642063 
 9955      68617200 
 9956              	.LASF171:
 9957 0f38 5F726565 		.ascii	"_reent\000"
 9957      6E7400
 9958              	.LASF56:
 9959 0f3f 4954434D 		.ascii	"ITCMCR\000"
 9959      435200
 9960              	.LASF4:
 9961 0f46 73686F72 		.ascii	"short unsigned int\000"
 9961      7420756E 
 9961      7369676E 
 9961      65642069 
 9961      6E7400
 9962              	.LASF300:
 9963 0f59 706D635F 		.ascii	"pmc_osc_disable_xtal\000"
 9963      6F73635F 
 9963      64697361 
 9963      626C655F 
 9963      7874616C 
 9964              	.LASF253:
 9965 0f6e 706D635F 		.ascii	"pmc_enable_sleepmode\000"
 9965      656E6162 
 9965      6C655F73 
 9965      6C656570 
 9965      6D6F6465 
 9966              	.LASF41:
 9967 0f83 4D564652 		.ascii	"MVFR0\000"
 9967      3000
 9968              	.LASF42:
 9969 0f89 4D564652 		.ascii	"MVFR1\000"
 9969      3100
 9970              	.LASF43:
ARM GAS  /tmp/ccTYR2Ee.s 			page 228


 9971 0f8f 4D564652 		.ascii	"MVFR2\000"
 9971      3200
 9972              	.LASF26:
 9973 0f95 42464152 		.ascii	"BFAR\000"
 9973      00
 9974              	.LASF146:
 9975 0f9a 5F666E74 		.ascii	"_fntypes\000"
 9975      79706573 
 9975      00
 9976              	.LASF114:
 9977 0fa3 53555043 		.ascii	"SUPC_WUIR\000"
 9977      5F575549 
 9977      5200
 9978              	.LASF153:
 9979 0fad 5F73697A 		.ascii	"_size\000"
 9979      6500
 9980              	.LASF232:
 9981 0fb3 646F7562 		.ascii	"double\000"
 9981      6C6500
 9982              	.LASF257:
 9983 0fba 706D635F 		.ascii	"pmc_set_fast_startup_input\000"
 9983      7365745F 
 9983      66617374 
 9983      5F737461 
 9983      72747570 
 9984              	.LASF254:
 9985 0fd5 75635F74 		.ascii	"uc_type\000"
 9985      79706500 
 9986              	.LASF118:
 9987 0fdd 5F6F6666 		.ascii	"_off_t\000"
 9987      5F7400
 9988              	.LASF92:
 9989 0fe4 504D435F 		.ascii	"PMC_WPMR\000"
 9989      57504D52 
 9989      00
 9990              	.LASF164:
 9991 0fed 5F6E6275 		.ascii	"_nbuf\000"
 9991      6600
 9992              	.LASF202:
 9993 0ff3 5F756E75 		.ascii	"_unused_rand\000"
 9993      7365645F 
 9993      72616E64 
 9993      00
 9994              	.LASF260:
 9995 1000 706D635F 		.ascii	"pmc_disable_interrupt\000"
 9995      64697361 
 9995      626C655F 
 9995      696E7465 
 9995      72727570 
 9996              	.LASF220:
 9997 1016 5F685F65 		.ascii	"_h_errno\000"
 9997      72726E6F 
 9997      00
 9998              	.LASF55:
 9999 101f 52455345 		.ascii	"RESERVED7\000"
 9999      52564544 
 9999      3700
ARM GAS  /tmp/ccTYR2Ee.s 			page 229


 10000              	.LASF66:
 10001 1029 504D435F 		.ascii	"PMC_SCER\000"
 10001      53434552 
 10001      00
 10002              	.LASF32:
 10003 1032 49445F49 		.ascii	"ID_ISAR\000"
 10003      53415200 
 10004              	.LASF170:
 10005 103a 5F666C61 		.ascii	"_flags2\000"
 10005      67733200 
 10006              	.LASF86:
 10007 1042 504D435F 		.ascii	"PMC_SR\000"
 10007      535200
 10008              	.LASF147:
 10009 1049 5F69735F 		.ascii	"_is_cxa\000"
 10009      63786100 
 10010              	.LASF199:
 10011 1051 5F736565 		.ascii	"_seed\000"
 10011      6400
 10012              	.LASF71:
 10013 1057 504D435F 		.ascii	"PMC_PCDR0\000"
 10013      50434452 
 10013      3000
 10014              	.LASF96:
 10015 1061 504D435F 		.ascii	"PMC_PCDR1\000"
 10015      50434452 
 10015      3100
 10016              	.LASF264:
 10017 106b 706D635F 		.ascii	"pmc_enable_udpck\000"
 10017      656E6162 
 10017      6C655F75 
 10017      6470636B 
 10017      00
 10018              	.LASF161:
 10019 107c 5F736565 		.ascii	"_seek\000"
 10019      6B00
 10020              	.LASF283:
 10021 1082 706D635F 		.ascii	"pmc_pck_set_prescaler\000"
 10021      70636B5F 
 10021      7365745F 
 10021      70726573 
 10021      63616C65 
 10022              	.LASF247:
 10023 1098 706D635F 		.ascii	"pmc_enable_clock_failure_detector\000"
 10023      656E6162 
 10023      6C655F63 
 10023      6C6F636B 
 10023      5F666169 
 10024              	.LASF175:
 10025 10ba 5F737464 		.ascii	"_stderr\000"
 10025      65727200 
 10026              	.LASF222:
 10027 10c2 5F6E6D61 		.ascii	"_nmalloc\000"
 10027      6C6C6F63 
 10027      00
 10028              	.LASF250:
 10029 10cb 706D635F 		.ascii	"pmc_enable_waitmode\000"
ARM GAS  /tmp/ccTYR2Ee.s 			page 230


 10029      656E6162 
 10029      6C655F77 
 10029      6169746D 
 10029      6F646500 
 10030              	.LASF99:
 10031 10df 504D435F 		.ascii	"PMC_OCR\000"
 10031      4F435200 
 10032              	.LASF252:
 10033 10e7 756C5F66 		.ascii	"ul_flash_state\000"
 10033      6C617368 
 10033      5F737461 
 10033      746500
 10034              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
