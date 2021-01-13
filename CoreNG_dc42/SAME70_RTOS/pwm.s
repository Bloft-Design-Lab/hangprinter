ARM GAS  /tmp/ccmSFvTJ.s 			page 1


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
  12              		.file	"pwm.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.pwm_clocks_generate,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  23              		.type	pwm_clocks_generate, %function
  24              	pwm_clocks_generate:
  25              	.LFB142:
  26              		.file 1 "../asf/sam/drivers/pwm/pwm.c"
   1:../asf/sam/drivers/pwm/pwm.c **** /**
   2:../asf/sam/drivers/pwm/pwm.c ****  * \file
   3:../asf/sam/drivers/pwm/pwm.c ****  *
   4:../asf/sam/drivers/pwm/pwm.c ****  * \brief Pulse Width Modulation (PWM) driver for SAM.
   5:../asf/sam/drivers/pwm/pwm.c ****  *
   6:../asf/sam/drivers/pwm/pwm.c ****  * Copyright (c) 2011-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/pwm/pwm.c ****  *
   8:../asf/sam/drivers/pwm/pwm.c ****  * \asf_license_start
   9:../asf/sam/drivers/pwm/pwm.c ****  *
  10:../asf/sam/drivers/pwm/pwm.c ****  * \page License
  11:../asf/sam/drivers/pwm/pwm.c ****  *
  12:../asf/sam/drivers/pwm/pwm.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/pwm/pwm.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/pwm/pwm.c ****  *
  15:../asf/sam/drivers/pwm/pwm.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/pwm/pwm.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/pwm/pwm.c ****  *
  18:../asf/sam/drivers/pwm/pwm.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/pwm/pwm.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/pwm/pwm.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/pwm/pwm.c ****  *
  22:../asf/sam/drivers/pwm/pwm.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/pwm/pwm.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/pwm/pwm.c ****  *
  25:../asf/sam/drivers/pwm/pwm.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/pwm/pwm.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/pwm/pwm.c ****  *
  28:../asf/sam/drivers/pwm/pwm.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/pwm/pwm.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/pwm/pwm.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:../asf/sam/drivers/pwm/pwm.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
ARM GAS  /tmp/ccmSFvTJ.s 			page 2


  32:../asf/sam/drivers/pwm/pwm.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/pwm/pwm.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/pwm/pwm.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/pwm/pwm.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/pwm/pwm.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/pwm/pwm.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/pwm/pwm.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/pwm/pwm.c ****  *
  40:../asf/sam/drivers/pwm/pwm.c ****  * \asf_license_stop
  41:../asf/sam/drivers/pwm/pwm.c ****  *
  42:../asf/sam/drivers/pwm/pwm.c ****  */
  43:../asf/sam/drivers/pwm/pwm.c **** /*
  44:../asf/sam/drivers/pwm/pwm.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/pwm/pwm.c ****  */
  46:../asf/sam/drivers/pwm/pwm.c **** 
  47:../asf/sam/drivers/pwm/pwm.c **** #include "pwm.h"
  48:../asf/sam/drivers/pwm/pwm.c **** 
  49:../asf/sam/drivers/pwm/pwm.c **** /// @cond 0
  50:../asf/sam/drivers/pwm/pwm.c **** /**INDENT-OFF**/
  51:../asf/sam/drivers/pwm/pwm.c **** #ifdef __cplusplus
  52:../asf/sam/drivers/pwm/pwm.c **** extern "C" {
  53:../asf/sam/drivers/pwm/pwm.c **** #endif
  54:../asf/sam/drivers/pwm/pwm.c **** /**INDENT-ON**/
  55:../asf/sam/drivers/pwm/pwm.c **** /// @endcond
  56:../asf/sam/drivers/pwm/pwm.c **** 
  57:../asf/sam/drivers/pwm/pwm.c **** /**
  58:../asf/sam/drivers/pwm/pwm.c ****  * \defgroup sam_drivers_pwm_group Pulse Width Modulation (PWM)
  59:../asf/sam/drivers/pwm/pwm.c ****  *
  60:../asf/sam/drivers/pwm/pwm.c ****  * See \ref sam_pwm_quickstart.
  61:../asf/sam/drivers/pwm/pwm.c ****  *
  62:../asf/sam/drivers/pwm/pwm.c ****  * Driver for the PWM (Pulse Width Modulation). This driver provides access to the
  63:../asf/sam/drivers/pwm/pwm.c ****  * main features of the PWM controller.
  64:../asf/sam/drivers/pwm/pwm.c ****  *
  65:../asf/sam/drivers/pwm/pwm.c ****  * @{
  66:../asf/sam/drivers/pwm/pwm.c ****  */
  67:../asf/sam/drivers/pwm/pwm.c **** 
  68:../asf/sam/drivers/pwm/pwm.c **** #ifndef PWM_WPCR_WPKEY_PASSWD
  69:../asf/sam/drivers/pwm/pwm.c **** #  define PWM_WPCR_WPKEY_PASSWD 0x50574D00
  70:../asf/sam/drivers/pwm/pwm.c **** #endif
  71:../asf/sam/drivers/pwm/pwm.c **** 
  72:../asf/sam/drivers/pwm/pwm.c **** #ifndef PWM_WPCR_WPCMD_DISABLE_SW_PROT
  73:../asf/sam/drivers/pwm/pwm.c **** #  define PWM_WPCR_WPCMD_DISABLE_SW_PROT (PWM_WPCR_WPCMD(0))
  74:../asf/sam/drivers/pwm/pwm.c **** #endif
  75:../asf/sam/drivers/pwm/pwm.c **** 
  76:../asf/sam/drivers/pwm/pwm.c **** #ifndef PWM_WPCR_WPCMD_ENABLE_SW_PROT
  77:../asf/sam/drivers/pwm/pwm.c **** #  define PWM_WPCR_WPCMD_ENABLE_SW_PROT (PWM_WPCR_WPCMD(1))
  78:../asf/sam/drivers/pwm/pwm.c **** #endif
  79:../asf/sam/drivers/pwm/pwm.c **** 
  80:../asf/sam/drivers/pwm/pwm.c **** #ifndef PWM_WPCR_WPCMD_ENABLE_HW_PROT
  81:../asf/sam/drivers/pwm/pwm.c **** #  define PWM_WPCR_WPCMD_ENABLE_HW_PROT (PWM_WPCR_WPCMD(2))
  82:../asf/sam/drivers/pwm/pwm.c **** #endif
  83:../asf/sam/drivers/pwm/pwm.c **** 
  84:../asf/sam/drivers/pwm/pwm.c **** #define PWM_CLOCK_DIV_MAX  256
  85:../asf/sam/drivers/pwm/pwm.c **** #define PWM_CLOCK_PRE_MAX  11
  86:../asf/sam/drivers/pwm/pwm.c **** 
  87:../asf/sam/drivers/pwm/pwm.c **** /**
  88:../asf/sam/drivers/pwm/pwm.c ****  * \brief Find a prescaler/divisor couple to generate the desired ul_frequency
ARM GAS  /tmp/ccmSFvTJ.s 			page 3


  89:../asf/sam/drivers/pwm/pwm.c ****  * from ul_mck.
  90:../asf/sam/drivers/pwm/pwm.c ****  *
  91:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_frequency Desired frequency in Hz.
  92:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_mck Master clock frequency in Hz.
  93:../asf/sam/drivers/pwm/pwm.c ****  *
  94:../asf/sam/drivers/pwm/pwm.c ****  * \retval Return the value to be set in the PWM Clock Register (PWM Mode Register for
  95:../asf/sam/drivers/pwm/pwm.c ****  * SAM3N/SAM4N/SAM4C/SAM4CP/SAM4CM) or PWM_INVALID_ARGUMENT if the configuration cannot be met.
  96:../asf/sam/drivers/pwm/pwm.c ****  */
  97:../asf/sam/drivers/pwm/pwm.c **** static uint32_t pwm_clocks_generate(uint32_t ul_frequency, uint32_t ul_mck)
  98:../asf/sam/drivers/pwm/pwm.c **** {
  27              		.loc 1 98 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 48
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              	.LVL0:
  32 0000 F0B5     		push	{r4, r5, r6, r7, lr}
  33              		.cfi_def_cfa_offset 20
  34              		.cfi_offset 4, -20
  35              		.cfi_offset 5, -16
  36              		.cfi_offset 6, -12
  37              		.cfi_offset 7, -8
  38              		.cfi_offset 14, -4
  99:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t ul_divisors[PWM_CLOCK_PRE_MAX] =
  39              		.loc 1 99 0
  40 0002 114E     		ldr	r6, .L8
  98:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t ul_divisors[PWM_CLOCK_PRE_MAX] =
  41              		.loc 1 98 0
  42 0004 8DB0     		sub	sp, sp, #52
  43              		.cfi_def_cfa_offset 72
  98:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t ul_divisors[PWM_CLOCK_PRE_MAX] =
  44              		.loc 1 98 0
  45 0006 8646     		mov	lr, r0
  46 0008 0F46     		mov	r7, r1
  47              		.loc 1 99 0
  48 000a 01AD     		add	r5, sp, #4
  49 000c 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
  50              	.LVL1:
  51 000e 2C46     		mov	r4, r5
  52 0010 0FC5     		stmia	r5!, {r0, r1, r2, r3}
  53 0012 0FCE     		ldmia	r6!, {r0, r1, r2, r3}
  54 0014 0FC5     		stmia	r5!, {r0, r1, r2, r3}
  55 0016 96E80700 		ldm	r6, {r0, r1, r2}
 100:../asf/sam/drivers/pwm/pwm.c **** 			{1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024 };
 101:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t ul_pre = 0;
  56              		.loc 1 101 0
  57 001a 0023     		movs	r3, #0
  99:../asf/sam/drivers/pwm/pwm.c **** 			{1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024 };
  58              		.loc 1 99 0
  59 001c 85E80700 		stm	r5, {r0, r1, r2}
  60              	.LVL2:
  61              	.L3:
 102:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t ul_div;
 103:../asf/sam/drivers/pwm/pwm.c **** 
 104:../asf/sam/drivers/pwm/pwm.c **** 	/* Find prescaler and divisor values */
 105:../asf/sam/drivers/pwm/pwm.c **** 	do {
 106:../asf/sam/drivers/pwm/pwm.c **** 		ul_div = (ul_mck / ul_divisors[ul_pre]) / ul_frequency;
  62              		.loc 1 106 0
ARM GAS  /tmp/ccmSFvTJ.s 			page 4


  63 0020 54F8040B 		ldr	r0, [r4], #4
  64 0024 B7FBF0F0 		udiv	r0, r7, r0
  65 0028 B0FBFEF0 		udiv	r0, r0, lr
  66              	.LVL3:
 107:../asf/sam/drivers/pwm/pwm.c **** 		if (ul_div <= PWM_CLOCK_DIV_MAX) {
  67              		.loc 1 107 0
  68 002c B0F5807F 		cmp	r0, #256
  69 0030 06D9     		bls	.L2
 108:../asf/sam/drivers/pwm/pwm.c **** 			break;
 109:../asf/sam/drivers/pwm/pwm.c **** 		}
 110:../asf/sam/drivers/pwm/pwm.c **** 		ul_pre++;
  70              		.loc 1 110 0
  71 0032 0133     		adds	r3, r3, #1
  72              	.LVL4:
 111:../asf/sam/drivers/pwm/pwm.c **** 	} while (ul_pre < PWM_CLOCK_PRE_MAX);
  73              		.loc 1 111 0
  74 0034 0B2B     		cmp	r3, #11
  75 0036 F3D1     		bne	.L3
 112:../asf/sam/drivers/pwm/pwm.c **** 
 113:../asf/sam/drivers/pwm/pwm.c **** 	/* Return result */
 114:../asf/sam/drivers/pwm/pwm.c **** 	if (ul_pre < PWM_CLOCK_PRE_MAX) {
 115:../asf/sam/drivers/pwm/pwm.c **** 		return ul_div | (ul_pre << 8);
 116:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 117:../asf/sam/drivers/pwm/pwm.c **** 		return PWM_INVALID_ARGUMENT;
  76              		.loc 1 117 0
  77 0038 4FF6FF70 		movw	r0, #65535
  78              	.LVL5:
 118:../asf/sam/drivers/pwm/pwm.c **** 	}
 119:../asf/sam/drivers/pwm/pwm.c **** }
  79              		.loc 1 119 0
  80 003c 0DB0     		add	sp, sp, #52
  81              		.cfi_remember_state
  82              		.cfi_def_cfa_offset 20
  83              		@ sp needed
  84 003e F0BD     		pop	{r4, r5, r6, r7, pc}
  85              	.LVL6:
  86              	.L2:
  87              		.cfi_restore_state
 115:../asf/sam/drivers/pwm/pwm.c **** 	} else {
  88              		.loc 1 115 0
  89 0040 40EA0320 		orr	r0, r0, r3, lsl #8
  90              	.LVL7:
  91              		.loc 1 119 0
  92 0044 0DB0     		add	sp, sp, #52
  93              		.cfi_def_cfa_offset 20
  94              		@ sp needed
  95 0046 F0BD     		pop	{r4, r5, r6, r7, pc}
  96              	.LVL8:
  97              	.L9:
  98              		.align	2
  99              	.L8:
 100 0048 00000000 		.word	.LANCHOR0
 101              		.cfi_endproc
 102              	.LFE142:
 103              		.size	pwm_clocks_generate, .-pwm_clocks_generate
 104              		.section	.text.pwm_init,"ax",%progbits
 105              		.align	1
ARM GAS  /tmp/ccmSFvTJ.s 			page 5


 106              		.p2align 2,,3
 107              		.global	pwm_init
 108              		.syntax unified
 109              		.thumb
 110              		.thumb_func
 111              		.fpu fpv5-d16
 112              		.type	pwm_init, %function
 113              	pwm_init:
 114              	.LFB143:
 120:../asf/sam/drivers/pwm/pwm.c **** 
 121:../asf/sam/drivers/pwm/pwm.c **** /**
 122:../asf/sam/drivers/pwm/pwm.c ****  * \brief Initialize the PWM source clock (clock A and clock B).
 123:../asf/sam/drivers/pwm/pwm.c ****  *
 124:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 125:../asf/sam/drivers/pwm/pwm.c ****  * \param clock_config PWM clock configuration.
 126:../asf/sam/drivers/pwm/pwm.c ****  *
 127:../asf/sam/drivers/pwm/pwm.c ****  * \retval 0 if initialization succeeds, otherwise fails.
 128:../asf/sam/drivers/pwm/pwm.c ****  */
 129:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_init(Pwm *p_pwm, pwm_clock_t *clock_config)
 130:../asf/sam/drivers/pwm/pwm.c **** {
 115              		.loc 1 130 0
 116              		.cfi_startproc
 117              		@ args = 0, pretend = 0, frame = 0
 118              		@ frame_needed = 0, uses_anonymous_args = 0
 119              	.LVL9:
 120 0000 70B5     		push	{r4, r5, r6, lr}
 121              		.cfi_def_cfa_offset 16
 122              		.cfi_offset 4, -16
 123              		.cfi_offset 5, -12
 124              		.cfi_offset 6, -8
 125              		.cfi_offset 14, -4
 131:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t clock = 0;
 132:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t result;
 133:../asf/sam/drivers/pwm/pwm.c **** 
 134:../asf/sam/drivers/pwm/pwm.c **** 	/* Clock A */
 135:../asf/sam/drivers/pwm/pwm.c **** 	if (clock_config->ul_clka != 0) {
 126              		.loc 1 135 0
 127 0002 0C68     		ldr	r4, [r1]
 130:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t clock = 0;
 128              		.loc 1 130 0
 129 0004 0D46     		mov	r5, r1
 130 0006 0646     		mov	r6, r0
 131              		.loc 1 135 0
 132 0008 44B1     		cbz	r4, .L11
 136:../asf/sam/drivers/pwm/pwm.c **** 		result = pwm_clocks_generate(clock_config->ul_clka, clock_config->ul_mck);
 133              		.loc 1 136 0
 134 000a 2046     		mov	r0, r4
 135              	.LVL10:
 136 000c 8968     		ldr	r1, [r1, #8]
 137              	.LVL11:
 138 000e FFF7FEFF 		bl	pwm_clocks_generate
 139              	.LVL12:
 137:../asf/sam/drivers/pwm/pwm.c **** 		if (result == PWM_INVALID_ARGUMENT) {
 140              		.loc 1 137 0
 141 0012 4FF6FF73 		movw	r3, #65535
 136:../asf/sam/drivers/pwm/pwm.c **** 		result = pwm_clocks_generate(clock_config->ul_clka, clock_config->ul_mck);
 142              		.loc 1 136 0
ARM GAS  /tmp/ccmSFvTJ.s 			page 6


 143 0016 0446     		mov	r4, r0
 144              	.LVL13:
 145              		.loc 1 137 0
 146 0018 9842     		cmp	r0, r3
 147 001a 0CD0     		beq	.L10
 148              	.LVL14:
 149              	.L11:
 138:../asf/sam/drivers/pwm/pwm.c **** 			return result;
 139:../asf/sam/drivers/pwm/pwm.c **** 		}
 140:../asf/sam/drivers/pwm/pwm.c **** 
 141:../asf/sam/drivers/pwm/pwm.c **** 		clock = result;
 142:../asf/sam/drivers/pwm/pwm.c **** 	}
 143:../asf/sam/drivers/pwm/pwm.c **** 
 144:../asf/sam/drivers/pwm/pwm.c **** 	/* Clock B */
 145:../asf/sam/drivers/pwm/pwm.c **** 	if (clock_config->ul_clkb != 0) {
 150              		.loc 1 145 0
 151 001c 6868     		ldr	r0, [r5, #4]
 152 001e 40B1     		cbz	r0, .L13
 146:../asf/sam/drivers/pwm/pwm.c **** 		result = pwm_clocks_generate(clock_config->ul_clkb, clock_config->ul_mck);
 153              		.loc 1 146 0
 154 0020 A968     		ldr	r1, [r5, #8]
 155 0022 FFF7FEFF 		bl	pwm_clocks_generate
 156              	.LVL15:
 147:../asf/sam/drivers/pwm/pwm.c **** 
 148:../asf/sam/drivers/pwm/pwm.c **** 		if (result == PWM_INVALID_ARGUMENT) {
 157              		.loc 1 148 0
 158 0026 4FF6FF73 		movw	r3, #65535
 159 002a 9842     		cmp	r0, r3
 160 002c 05D0     		beq	.L14
 149:../asf/sam/drivers/pwm/pwm.c **** 			return result;
 150:../asf/sam/drivers/pwm/pwm.c **** 		}
 151:../asf/sam/drivers/pwm/pwm.c **** 
 152:../asf/sam/drivers/pwm/pwm.c **** 		clock |= (result << 16);
 161              		.loc 1 152 0
 162 002e 44EA0044 		orr	r4, r4, r0, lsl #16
 163              	.LVL16:
 164              	.L13:
 153:../asf/sam/drivers/pwm/pwm.c **** 	}
 154:../asf/sam/drivers/pwm/pwm.c **** #if (SAM3N || SAM4N || SAM4C || SAM4CP || SAM4CM)
 155:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_MR = clock;
 156:../asf/sam/drivers/pwm/pwm.c **** #else
 157:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CLK = clock;
 165              		.loc 1 157 0
 166 0032 3460     		str	r4, [r6]
 158:../asf/sam/drivers/pwm/pwm.c **** #endif
 159:../asf/sam/drivers/pwm/pwm.c **** 	return 0;
 167              		.loc 1 159 0
 168 0034 0024     		movs	r4, #0
 169              	.LVL17:
 170              	.L10:
 160:../asf/sam/drivers/pwm/pwm.c **** }
 171              		.loc 1 160 0
 172 0036 2046     		mov	r0, r4
 173 0038 70BD     		pop	{r4, r5, r6, pc}
 174              	.LVL18:
 175              	.L14:
 176 003a 0446     		mov	r4, r0
ARM GAS  /tmp/ccmSFvTJ.s 			page 7


 177              	.LVL19:
 178 003c FBE7     		b	.L10
 179              		.cfi_endproc
 180              	.LFE143:
 181              		.size	pwm_init, .-pwm_init
 182 003e 00BF     		.section	.text.pwm_channel_init,"ax",%progbits
 183              		.align	1
 184              		.p2align 2,,3
 185              		.global	pwm_channel_init
 186              		.syntax unified
 187              		.thumb
 188              		.thumb_func
 189              		.fpu fpv5-d16
 190              		.type	pwm_channel_init, %function
 191              	pwm_channel_init:
 192              	.LFB144:
 161:../asf/sam/drivers/pwm/pwm.c **** 
 162:../asf/sam/drivers/pwm/pwm.c **** /**
 163:../asf/sam/drivers/pwm/pwm.c ****  * \brief Initialize one PWM channel.
 164:../asf/sam/drivers/pwm/pwm.c ****  *
 165:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 166:../asf/sam/drivers/pwm/pwm.c ****  * \param p_channel Configurations of the specified PWM channel.
 167:../asf/sam/drivers/pwm/pwm.c ****  *
 168:../asf/sam/drivers/pwm/pwm.c ****  * \retval 0 if initialization succeeds, otherwise fails.
 169:../asf/sam/drivers/pwm/pwm.c ****  */
 170:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_channel_init(Pwm *p_pwm, pwm_channel_t *p_channel)
 171:../asf/sam/drivers/pwm/pwm.c **** {
 193              		.loc 1 171 0
 194              		.cfi_startproc
 195              		@ args = 0, pretend = 0, frame = 0
 196              		@ frame_needed = 0, uses_anonymous_args = 0
 197              	.LVL20:
 172:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t tmp_reg = 0;
 173:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t ch_num = p_channel->channel;
 174:../asf/sam/drivers/pwm/pwm.c **** 
 175:../asf/sam/drivers/pwm/pwm.c **** 	/* Channel Mode/Clock Register */
 176:../asf/sam/drivers/pwm/pwm.c **** 	tmp_reg = (p_channel->ul_prescaler & 0xF) |
 198              		.loc 1 176 0
 199 0000 4B68     		ldr	r3, [r1, #4]
 177:../asf/sam/drivers/pwm/pwm.c **** 			(p_channel->polarity << 9) |
 178:../asf/sam/drivers/pwm/pwm.c **** #if (SAM3U || SAM3S || SAM3XA || SAM4S || SAM4E || SAMV70 || SAMV71 || SAME70 || SAMS70)
 179:../asf/sam/drivers/pwm/pwm.c **** 			(p_channel->counter_event) |
 200              		.loc 1 179 0
 201 0002 8A8A     		ldrh	r2, [r1, #20]
 176:../asf/sam/drivers/pwm/pwm.c **** 			(p_channel->polarity << 9) |
 202              		.loc 1 176 0
 203 0004 03F00F03 		and	r3, r3, #15
 171:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t tmp_reg = 0;
 204              		.loc 1 171 0
 205 0008 F0B5     		push	{r4, r5, r6, r7, lr}
 206              		.cfi_def_cfa_offset 20
 207              		.cfi_offset 4, -20
 208              		.cfi_offset 5, -16
 209              		.cfi_offset 6, -12
 210              		.cfi_offset 7, -8
 211              		.cfi_offset 14, -4
 176:../asf/sam/drivers/pwm/pwm.c **** 			(p_channel->polarity << 9) |
ARM GAS  /tmp/ccmSFvTJ.s 			page 8


 212              		.loc 1 176 0
 213 000a 1A43     		orrs	r2, r2, r3
 180:../asf/sam/drivers/pwm/pwm.c **** 			(p_channel->b_deadtime_generator << 16) |
 181:../asf/sam/drivers/pwm/pwm.c **** 			(p_channel->b_pwmh_output_inverted << 17) |
 182:../asf/sam/drivers/pwm/pwm.c **** 			(p_channel->b_pwml_output_inverted << 18) |
 183:../asf/sam/drivers/pwm/pwm.c **** #endif
 184:../asf/sam/drivers/pwm/pwm.c **** 			(p_channel->alignment);
 214              		.loc 1 184 0
 215 000c 0C89     		ldrh	r4, [r1, #8]
 177:../asf/sam/drivers/pwm/pwm.c **** #if (SAM3U || SAM3S || SAM3XA || SAM4S || SAM4E || SAMV70 || SAMV71 || SAME70 || SAMS70)
 216              		.loc 1 177 0
 217 000e 8E7A     		ldrb	r6, [r1, #10]	@ zero_extendqisi2
 176:../asf/sam/drivers/pwm/pwm.c **** 			(p_channel->polarity << 9) |
 218              		.loc 1 176 0
 219 0010 2243     		orrs	r2, r2, r4
 180:../asf/sam/drivers/pwm/pwm.c **** 			(p_channel->b_deadtime_generator << 16) |
 220              		.loc 1 180 0
 221 0012 8D7D     		ldrb	r5, [r1, #22]	@ zero_extendqisi2
 181:../asf/sam/drivers/pwm/pwm.c **** 			(p_channel->b_pwml_output_inverted << 18) |
 222              		.loc 1 181 0
 223 0014 91F817E0 		ldrb	lr, [r1, #23]	@ zero_extendqisi2
 176:../asf/sam/drivers/pwm/pwm.c **** 			(p_channel->polarity << 9) |
 224              		.loc 1 176 0
 225 0018 42EA4622 		orr	r2, r2, r6, lsl #9
 182:../asf/sam/drivers/pwm/pwm.c **** #endif
 226              		.loc 1 182 0
 227 001c 0C7E     		ldrb	r4, [r1, #24]	@ zero_extendqisi2
 173:../asf/sam/drivers/pwm/pwm.c **** 
 228              		.loc 1 173 0
 229 001e 0B68     		ldr	r3, [r1]
 230              	.LVL21:
 176:../asf/sam/drivers/pwm/pwm.c **** 			(p_channel->polarity << 9) |
 231              		.loc 1 176 0
 232 0020 42EA0542 		orr	r2, r2, r5, lsl #16
 185:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CH_NUM[ch_num].PWM_CMR = tmp_reg;
 186:../asf/sam/drivers/pwm/pwm.c **** 
 187:../asf/sam/drivers/pwm/pwm.c **** 	/* Channel Duty Cycle Register */
 188:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CH_NUM[ch_num].PWM_CDTY = p_channel->ul_duty;
 233              		.loc 1 188 0
 234 0024 CF68     		ldr	r7, [r1, #12]
 189:../asf/sam/drivers/pwm/pwm.c **** 
 190:../asf/sam/drivers/pwm/pwm.c **** 	/* Channel Period Register */
 191:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CH_NUM[ch_num].PWM_CPRD = p_channel->ul_period;
 235              		.loc 1 191 0
 236 0026 0E69     		ldr	r6, [r1, #16]
 176:../asf/sam/drivers/pwm/pwm.c **** 			(p_channel->polarity << 9) |
 237              		.loc 1 176 0
 238 0028 42EA4E42 		orr	r2, r2, lr, lsl #17
 239 002c 42EA8442 		orr	r2, r2, r4, lsl #18
 240              	.LVL22:
 241 0030 00EB4314 		add	r4, r0, r3, lsl #5
 185:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CH_NUM[ch_num].PWM_CMR = tmp_reg;
 242              		.loc 1 185 0
 243 0034 C4F80022 		str	r2, [r4, #512]
 188:../asf/sam/drivers/pwm/pwm.c **** 
 244              		.loc 1 188 0
 245 0038 C4F80472 		str	r7, [r4, #516]
ARM GAS  /tmp/ccmSFvTJ.s 			page 9


 246              		.loc 1 191 0
 247 003c C4F80C62 		str	r6, [r4, #524]
 192:../asf/sam/drivers/pwm/pwm.c **** 	
 193:../asf/sam/drivers/pwm/pwm.c **** #if (SAM3U || SAM3S || SAM3XA || SAM4S || SAM4E || SAMV70 || SAMV71 || SAME70 || SAMS70)
 194:../asf/sam/drivers/pwm/pwm.c **** 	/* Channel Dead Time Register */
 195:../asf/sam/drivers/pwm/pwm.c **** 	if (p_channel->b_deadtime_generator) {
 248              		.loc 1 195 0
 249 0040 1DB1     		cbz	r5, .L23
 196:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CH_NUM[ch_num].PWM_DT =
 197:../asf/sam/drivers/pwm/pwm.c **** 				PWM_DT_DTL(p_channel->
 198:../asf/sam/drivers/pwm/pwm.c **** 				us_deadtime_pwml) | PWM_DT_DTH(p_channel->
 250              		.loc 1 198 0
 251 0042 D1F81A20 		ldr	r2, [r1, #26]	@ unaligned
 252              	.LVL23:
 196:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CH_NUM[ch_num].PWM_DT =
 253              		.loc 1 196 0
 254 0046 C4F81822 		str	r2, [r4, #536]
 255              	.L23:
 199:../asf/sam/drivers/pwm/pwm.c **** 				us_deadtime_pwmh);
 200:../asf/sam/drivers/pwm/pwm.c **** 	}
 201:../asf/sam/drivers/pwm/pwm.c **** 
 202:../asf/sam/drivers/pwm/pwm.c **** 	/* Output Selection Register */
 203:../asf/sam/drivers/pwm/pwm.c **** 	tmp_reg  = p_pwm->PWM_OS & (~((PWM_OS_OSH0 | PWM_OS_OSL0) << ch_num));
 256              		.loc 1 203 0
 257 004a 4FF0011E 		mov	lr, #65537
 258              	.LVL24:
 204:../asf/sam/drivers/pwm/pwm.c **** 	tmp_reg |= ((p_channel->output_selection.b_override_pwmh) << ch_num) |
 205:../asf/sam/drivers/pwm/pwm.c **** 			(((p_channel->output_selection.b_override_pwml) << ch_num)
 259              		.loc 1 205 0
 260 004e CF7F     		ldrb	r7, [r1, #31]	@ zero_extendqisi2
 204:../asf/sam/drivers/pwm/pwm.c **** 	tmp_reg |= ((p_channel->output_selection.b_override_pwmh) << ch_num) |
 261              		.loc 1 204 0
 262 0050 8D7F     		ldrb	r5, [r1, #30]	@ zero_extendqisi2
 263              	.LVL25:
 206:../asf/sam/drivers/pwm/pwm.c **** 					<< 16);
 207:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_OS = tmp_reg;
 208:../asf/sam/drivers/pwm/pwm.c **** 
 209:../asf/sam/drivers/pwm/pwm.c **** 	/* Output Override Value Register */
 210:../asf/sam/drivers/pwm/pwm.c **** 	tmp_reg  = p_pwm->PWM_OOV & (~((PWM_OOV_OOVH0 | PWM_OOV_OOVL0) << ch_num));
 211:../asf/sam/drivers/pwm/pwm.c **** 	tmp_reg |= ((p_channel->output_selection.override_level_pwmh) << ch_num) |
 212:../asf/sam/drivers/pwm/pwm.c **** 			(((p_channel->output_selection.override_level_pwml) << ch_num)
 213:../asf/sam/drivers/pwm/pwm.c **** 					<< 16);
 214:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_OOV = tmp_reg;
 215:../asf/sam/drivers/pwm/pwm.c **** 
 216:../asf/sam/drivers/pwm/pwm.c **** 	/* Sync Channels Mode Register */
 217:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t channel = (1 << ch_num);
 264              		.loc 1 217 0
 265 0052 0126     		movs	r6, #1
 203:../asf/sam/drivers/pwm/pwm.c **** 	tmp_reg |= ((p_channel->output_selection.b_override_pwmh) << ch_num) |
 266              		.loc 1 203 0
 267 0054 0EFA03FE 		lsl	lr, lr, r3
 268 0058 846C     		ldr	r4, [r0, #72]
 205:../asf/sam/drivers/pwm/pwm.c **** 					<< 16);
 269              		.loc 1 205 0
 270 005a 9F40     		lsls	r7, r7, r3
 204:../asf/sam/drivers/pwm/pwm.c **** 			(((p_channel->output_selection.b_override_pwml) << ch_num)
 271              		.loc 1 204 0
ARM GAS  /tmp/ccmSFvTJ.s 			page 10


 272 005c 9D40     		lsls	r5, r5, r3
 203:../asf/sam/drivers/pwm/pwm.c **** 	tmp_reg |= ((p_channel->output_selection.b_override_pwmh) << ch_num) |
 273              		.loc 1 203 0
 274 005e 6FEA0E02 		mvn	r2, lr
 275              		.loc 1 217 0
 276 0062 9E40     		lsls	r6, r6, r3
 204:../asf/sam/drivers/pwm/pwm.c **** 			(((p_channel->output_selection.b_override_pwml) << ch_num)
 277              		.loc 1 204 0
 278 0064 45EA0745 		orr	r5, r5, r7, lsl #16
 212:../asf/sam/drivers/pwm/pwm.c **** 					<< 16);
 279              		.loc 1 212 0
 280 0068 91F82170 		ldrb	r7, [r1, #33]	@ zero_extendqisi2
 203:../asf/sam/drivers/pwm/pwm.c **** 	tmp_reg |= ((p_channel->output_selection.b_override_pwmh) << ch_num) |
 281              		.loc 1 203 0
 282 006c 04EA020E 		and	lr, r4, r2
 283              	.LVL26:
 211:../asf/sam/drivers/pwm/pwm.c **** 			(((p_channel->output_selection.override_level_pwml) << ch_num)
 284              		.loc 1 211 0
 285 0070 91F82040 		ldrb	r4, [r1, #32]	@ zero_extendqisi2
 212:../asf/sam/drivers/pwm/pwm.c **** 					<< 16);
 286              		.loc 1 212 0
 287 0074 9F40     		lsls	r7, r7, r3
 204:../asf/sam/drivers/pwm/pwm.c **** 			(((p_channel->output_selection.b_override_pwml) << ch_num)
 288              		.loc 1 204 0
 289 0076 45EA0E05 		orr	r5, r5, lr
 290              	.LVL27:
 211:../asf/sam/drivers/pwm/pwm.c **** 			(((p_channel->output_selection.override_level_pwml) << ch_num)
 291              		.loc 1 211 0
 292 007a 9C40     		lsls	r4, r4, r3
 207:../asf/sam/drivers/pwm/pwm.c **** 
 293              		.loc 1 207 0
 294 007c 8564     		str	r5, [r0, #72]
 211:../asf/sam/drivers/pwm/pwm.c **** 			(((p_channel->output_selection.override_level_pwml) << ch_num)
 295              		.loc 1 211 0
 296 007e 44EA0744 		orr	r4, r4, r7, lsl #16
 210:../asf/sam/drivers/pwm/pwm.c **** 	tmp_reg |= ((p_channel->output_selection.override_level_pwmh) << ch_num) |
 297              		.loc 1 210 0
 298 0082 476C     		ldr	r7, [r0, #68]
 218:../asf/sam/drivers/pwm/pwm.c **** 	if (p_channel->b_sync_ch) {
 299              		.loc 1 218 0
 300 0084 91F82250 		ldrb	r5, [r1, #34]	@ zero_extendqisi2
 301              	.LVL28:
 210:../asf/sam/drivers/pwm/pwm.c **** 	tmp_reg |= ((p_channel->output_selection.override_level_pwmh) << ch_num) |
 302              		.loc 1 210 0
 303 0088 3A40     		ands	r2, r2, r7
 304              	.LVL29:
 211:../asf/sam/drivers/pwm/pwm.c **** 			(((p_channel->output_selection.override_level_pwml) << ch_num)
 305              		.loc 1 211 0
 306 008a 2243     		orrs	r2, r2, r4
 307              	.LVL30:
 214:../asf/sam/drivers/pwm/pwm.c **** 
 308              		.loc 1 214 0
 309 008c 4264     		str	r2, [r0, #68]
 219:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_SCM |= channel;
 310              		.loc 1 219 0
 311 008e 026A     		ldr	r2, [r0, #32]
 312              	.LVL31:
ARM GAS  /tmp/ccmSFvTJ.s 			page 11


 218:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_SCM |= channel;
 313              		.loc 1 218 0
 314 0090 002D     		cmp	r5, #0
 315 0092 4CD0     		beq	.L24
 220:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 221:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_SCM &= ~((uint32_t) channel);
 222:../asf/sam/drivers/pwm/pwm.c **** 	}
 223:../asf/sam/drivers/pwm/pwm.c **** 
 224:../asf/sam/drivers/pwm/pwm.c **** 	/* Fault Protection Value Register */
 225:../asf/sam/drivers/pwm/pwm.c **** #if (SAM4E || SAMV70 || SAMV71 || SAME70 || SAMS70)
 226:../asf/sam/drivers/pwm/pwm.c **** 	if (p_channel->ul_fault_output_pwmh == PWM_HIGHZ) {
 316              		.loc 1 226 0
 317 0094 91F82450 		ldrb	r5, [r1, #36]	@ zero_extendqisi2
 219:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 318              		.loc 1 219 0
 319 0098 3243     		orrs	r2, r2, r6
 320              		.loc 1 226 0
 321 009a 022D     		cmp	r5, #2
 219:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 322              		.loc 1 219 0
 323 009c 0262     		str	r2, [r0, #32]
 324              	.LVL32:
 325              		.loc 1 226 0
 326 009e 4DD0     		beq	.L38
 327              	.L26:
 227:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPV2 |= (0x01 << ch_num);
 228:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 229:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPV2 &= ~(0x01 << ch_num);
 328              		.loc 1 229 0
 329 00a0 D0F8C040 		ldr	r4, [r0, #192]
 330              	.LVL33:
 331 00a4 F243     		mvns	r2, r6
 230:../asf/sam/drivers/pwm/pwm.c **** 		if (p_channel->ul_fault_output_pwmh == PWM_HIGH) {
 332              		.loc 1 230 0
 333 00a6 012D     		cmp	r5, #1
 229:../asf/sam/drivers/pwm/pwm.c **** 		if (p_channel->ul_fault_output_pwmh == PWM_HIGH) {
 334              		.loc 1 229 0
 335 00a8 04EA0204 		and	r4, r4, r2
 336 00ac C0F8C040 		str	r4, [r0, #192]
 337              		.loc 1 230 0
 338 00b0 58D0     		beq	.L39
 231:../asf/sam/drivers/pwm/pwm.c **** 			p_pwm->PWM_FPV1 |= (0x01 << ch_num);
 232:../asf/sam/drivers/pwm/pwm.c **** 		} else {
 233:../asf/sam/drivers/pwm/pwm.c **** 			p_pwm->PWM_FPV1 &= (~(0x01 << ch_num));
 339              		.loc 1 233 0
 340 00b2 846E     		ldr	r4, [r0, #104]
 341 00b4 2240     		ands	r2, r2, r4
 342 00b6 8266     		str	r2, [r0, #104]
 343              	.L27:
 234:../asf/sam/drivers/pwm/pwm.c **** 		}
 235:../asf/sam/drivers/pwm/pwm.c **** 	}
 236:../asf/sam/drivers/pwm/pwm.c **** 	if (p_channel->ul_fault_output_pwml == PWM_HIGHZ) {
 344              		.loc 1 236 0
 345 00b8 91F82570 		ldrb	r7, [r1, #37]	@ zero_extendqisi2
 346              	.LVL34:
 347 00bc 022F     		cmp	r7, #2
 348 00be 46D0     		beq	.L40
ARM GAS  /tmp/ccmSFvTJ.s 			page 12


 349              	.L29:
 237:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPV2 |= ((0x01 << ch_num) << 16);
 238:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 239:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPV2 &= ~((0x01 << ch_num) << 16);
 350              		.loc 1 239 0
 351 00c0 3204     		lsls	r2, r6, #16
 352 00c2 D0F8C050 		ldr	r5, [r0, #192]
 240:../asf/sam/drivers/pwm/pwm.c **** 		if (p_channel->ul_fault_output_pwml == PWM_HIGH) {
 353              		.loc 1 240 0
 354 00c6 012F     		cmp	r7, #1
 239:../asf/sam/drivers/pwm/pwm.c **** 		if (p_channel->ul_fault_output_pwml == PWM_HIGH) {
 355              		.loc 1 239 0
 356 00c8 6FEA0204 		mvn	r4, r2
 357 00cc 05EA0405 		and	r5, r5, r4
 358 00d0 C0F8C050 		str	r5, [r0, #192]
 359              		.loc 1 240 0
 360 00d4 42D0     		beq	.L41
 241:../asf/sam/drivers/pwm/pwm.c **** 			p_pwm->PWM_FPV1 |= ((0x01 << ch_num) << 16);
 242:../asf/sam/drivers/pwm/pwm.c **** 		} else {
 243:../asf/sam/drivers/pwm/pwm.c **** 			p_pwm->PWM_FPV1 &= (~((0x01 << ch_num) << 16));
 361              		.loc 1 243 0
 362 00d6 826E     		ldr	r2, [r0, #104]
 363 00d8 1440     		ands	r4, r4, r2
 364 00da 8466     		str	r4, [r0, #104]
 365              	.L30:
 366              	.LVL35:
 244:../asf/sam/drivers/pwm/pwm.c **** 		}
 245:../asf/sam/drivers/pwm/pwm.c **** 	}
 246:../asf/sam/drivers/pwm/pwm.c **** #else
 247:../asf/sam/drivers/pwm/pwm.c **** 	if (p_channel->ul_fault_output_pwmh == PWM_HIGH) {
 248:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPV |= (0x01 << ch_num);
 249:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 250:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPV &= (~(0x01 << ch_num));
 251:../asf/sam/drivers/pwm/pwm.c **** 	}
 252:../asf/sam/drivers/pwm/pwm.c **** 	if (p_channel->ul_fault_output_pwml == PWM_HIGH) {
 253:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPV |= ((0x01 << ch_num) << 16);
 254:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 255:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPV &= (~((0x01 << ch_num) << 16));
 256:../asf/sam/drivers/pwm/pwm.c **** 	}
 257:../asf/sam/drivers/pwm/pwm.c **** #endif
 258:../asf/sam/drivers/pwm/pwm.c **** 	/* Fault Protection Enable Register */
 259:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t fault_enable_reg = 0;
 260:../asf/sam/drivers/pwm/pwm.c **** #if (SAM3XA)
 261:../asf/sam/drivers/pwm/pwm.c **** 	if (ch_num < 4) {
 262:../asf/sam/drivers/pwm/pwm.c **** 		ch_num *= 8;
 263:../asf/sam/drivers/pwm/pwm.c **** 		fault_enable_reg = p_pwm->PWM_FPE1;
 264:../asf/sam/drivers/pwm/pwm.c **** 		fault_enable_reg &= ~(0xFF << ch_num);
 265:../asf/sam/drivers/pwm/pwm.c **** 		fault_enable_reg |= ((p_channel->fault_id) << ch_num);
 266:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPE1 = fault_enable_reg;
 267:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 268:../asf/sam/drivers/pwm/pwm.c **** 		ch_num -= 4;
 269:../asf/sam/drivers/pwm/pwm.c **** 		ch_num *= 8;
 270:../asf/sam/drivers/pwm/pwm.c **** 		fault_enable_reg = p_pwm->PWM_FPE2;
 271:../asf/sam/drivers/pwm/pwm.c **** 		fault_enable_reg &= ~(0xFF << ch_num);
 272:../asf/sam/drivers/pwm/pwm.c **** 		fault_enable_reg |= ((p_channel->fault_id) << ch_num);
 273:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPE2 = fault_enable_reg;
 274:../asf/sam/drivers/pwm/pwm.c **** 	}
ARM GAS  /tmp/ccmSFvTJ.s 			page 13


 275:../asf/sam/drivers/pwm/pwm.c **** #endif
 276:../asf/sam/drivers/pwm/pwm.c **** 
 277:../asf/sam/drivers/pwm/pwm.c **** #if (SAM3U || SAM3S || SAM4S || SAM4E || SAMV70 || SAMV71 || SAME70 || SAMS70)
 278:../asf/sam/drivers/pwm/pwm.c **** 	ch_num *= 8;
 367              		.loc 1 278 0
 368 00dc DB00     		lsls	r3, r3, #3
 369              	.LVL36:
 279:../asf/sam/drivers/pwm/pwm.c **** 	fault_enable_reg = p_pwm->PWM_FPE;
 280:../asf/sam/drivers/pwm/pwm.c **** 	fault_enable_reg &= ~(0xFF << ch_num);
 370              		.loc 1 280 0
 371 00de FF25     		movs	r5, #255
 279:../asf/sam/drivers/pwm/pwm.c **** 	fault_enable_reg = p_pwm->PWM_FPE;
 372              		.loc 1 279 0
 373 00e0 C46E     		ldr	r4, [r0, #108]
 374              	.LVL37:
 281:../asf/sam/drivers/pwm/pwm.c **** 	fault_enable_reg |= ((p_channel->fault_id) << ch_num);
 375              		.loc 1 281 0
 376 00e2 91F82320 		ldrb	r2, [r1, #35]	@ zero_extendqisi2
 280:../asf/sam/drivers/pwm/pwm.c **** 	fault_enable_reg |= ((p_channel->fault_id) << ch_num);
 377              		.loc 1 280 0
 378 00e6 9D40     		lsls	r5, r5, r3
 379              		.loc 1 281 0
 380 00e8 9A40     		lsls	r2, r2, r3
 280:../asf/sam/drivers/pwm/pwm.c **** 	fault_enable_reg |= ((p_channel->fault_id) << ch_num);
 381              		.loc 1 280 0
 382 00ea 24EA0504 		bic	r4, r4, r5
 383              	.LVL38:
 384              		.loc 1 281 0
 385 00ee 2243     		orrs	r2, r2, r4
 386              	.LVL39:
 282:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_FPE = fault_enable_reg;
 387              		.loc 1 282 0
 388 00f0 C266     		str	r2, [r0, #108]
 283:../asf/sam/drivers/pwm/pwm.c **** #endif
 284:../asf/sam/drivers/pwm/pwm.c **** #endif
 285:../asf/sam/drivers/pwm/pwm.c **** 
 286:../asf/sam/drivers/pwm/pwm.c **** #if SAM4E
 287:../asf/sam/drivers/pwm/pwm.c **** 	if (!ch_num) {
 288:../asf/sam/drivers/pwm/pwm.c **** 		if (p_channel->spread_spectrum_mode ==
 289:../asf/sam/drivers/pwm/pwm.c **** 				PWM_SPREAD_SPECTRUM_MODE_RANDOM) {
 290:../asf/sam/drivers/pwm/pwm.c **** 			p_pwm->PWM_SSPR = PWM_SSPR_SPRD(p_channel->ul_spread) |
 291:../asf/sam/drivers/pwm/pwm.c **** 					PWM_SSPR_SPRDM;
 292:../asf/sam/drivers/pwm/pwm.c **** 		} else {
 293:../asf/sam/drivers/pwm/pwm.c **** 			p_pwm->PWM_SSPR = PWM_SSPR_SPRD(p_channel->ul_spread);
 294:../asf/sam/drivers/pwm/pwm.c **** 		}
 295:../asf/sam/drivers/pwm/pwm.c **** 	}
 296:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CH_NUM_0X400[ch_num].PWM_CAE =
 297:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CAE_ADEDGV(p_channel->ul_additional_edge) |
 298:../asf/sam/drivers/pwm/pwm.c **** 			p_channel->additional_edge_mode;
 299:../asf/sam/drivers/pwm/pwm.c **** #elif (SAMV70 || SAMV71 || SAME70 || SAMS70)
 300:../asf/sam/drivers/pwm/pwm.c **** 	if (!ch_num) {
 389              		.loc 1 300 0
 390 00f2 53B9     		cbnz	r3, .L32
 301:../asf/sam/drivers/pwm/pwm.c **** 		if (p_channel->spread_spectrum_mode ==
 391              		.loc 1 301 0
 392 00f4 91F82C20 		ldrb	r2, [r1, #44]	@ zero_extendqisi2
 393              	.LVL40:
ARM GAS  /tmp/ccmSFvTJ.s 			page 14


 394 00f8 012A     		cmp	r2, #1
 302:../asf/sam/drivers/pwm/pwm.c **** 		PWM_SPREAD_SPECTRUM_MODE_RANDOM) {
 303:../asf/sam/drivers/pwm/pwm.c **** 			p_pwm->PWM_SSPR = PWM_SSPR_SPRD(p_channel->ul_spread) |
 395              		.loc 1 303 0
 396 00fa 8A6A     		ldr	r2, [r1, #40]
 397 00fc 22F07F42 		bic	r2, r2, #-16777216
 398 0100 08BF     		it	eq
 399 0102 42F08072 		orreq	r2, r2, #16777216
 304:../asf/sam/drivers/pwm/pwm.c **** 			PWM_SSPR_SPRDM;
 305:../asf/sam/drivers/pwm/pwm.c **** 			} else {
 306:../asf/sam/drivers/pwm/pwm.c **** 			p_pwm->PWM_SSPR = PWM_SSPR_SPRD(p_channel->ul_spread);
 400              		.loc 1 306 0
 401 0106 C0F8A020 		str	r2, [r0, #160]
 402              	.LVL41:
 403              	.L32:
 404 010a 00EB4313 		add	r3, r0, r3, lsl #5
 405              	.LVL42:
 307:../asf/sam/drivers/pwm/pwm.c **** 		}
 308:../asf/sam/drivers/pwm/pwm.c **** 	}
 309:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CH_NUM[ch_num].PWM_CMR &= (~PWM_CMR_PPM);
 310:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CH_NUM[ch_num].PWM_CMR |= (p_channel->ul_ppm_mode & PWM_CMR_PPM);
 406              		.loc 1 310 0
 407 010e 8A6B     		ldr	r2, [r1, #56]
 311:../asf/sam/drivers/pwm/pwm.c **** #endif
 312:../asf/sam/drivers/pwm/pwm.c **** 
 313:../asf/sam/drivers/pwm/pwm.c **** 	return 0;
 314:../asf/sam/drivers/pwm/pwm.c **** }
 408              		.loc 1 314 0
 409 0110 0020     		movs	r0, #0
 410              	.LVL43:
 309:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CH_NUM[ch_num].PWM_CMR |= (p_channel->ul_ppm_mode & PWM_CMR_PPM);
 411              		.loc 1 309 0
 412 0112 D3F80012 		ldr	r1, [r3, #512]
 413              	.LVL44:
 310:../asf/sam/drivers/pwm/pwm.c **** #endif
 414              		.loc 1 310 0
 415 0116 02F40022 		and	r2, r2, #524288
 309:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CH_NUM[ch_num].PWM_CMR |= (p_channel->ul_ppm_mode & PWM_CMR_PPM);
 416              		.loc 1 309 0
 417 011a 21F40021 		bic	r1, r1, #524288
 418 011e C3F80012 		str	r1, [r3, #512]
 310:../asf/sam/drivers/pwm/pwm.c **** #endif
 419              		.loc 1 310 0
 420 0122 D3F80012 		ldr	r1, [r3, #512]
 421 0126 0A43     		orrs	r2, r2, r1
 422 0128 C3F80022 		str	r2, [r3, #512]
 423              		.loc 1 314 0
 424 012c F0BD     		pop	{r4, r5, r6, r7, pc}
 425              	.LVL45:
 426              	.L24:
 226:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPV2 |= (0x01 << ch_num);
 427              		.loc 1 226 0
 428 012e 91F82450 		ldrb	r5, [r1, #36]	@ zero_extendqisi2
 221:../asf/sam/drivers/pwm/pwm.c **** 	}
 429              		.loc 1 221 0
 430 0132 22EA0602 		bic	r2, r2, r6
 226:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPV2 |= (0x01 << ch_num);
ARM GAS  /tmp/ccmSFvTJ.s 			page 15


 431              		.loc 1 226 0
 432 0136 022D     		cmp	r5, #2
 221:../asf/sam/drivers/pwm/pwm.c **** 	}
 433              		.loc 1 221 0
 434 0138 0262     		str	r2, [r0, #32]
 435              	.LVL46:
 226:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPV2 |= (0x01 << ch_num);
 436              		.loc 1 226 0
 437 013a B1D1     		bne	.L26
 438              	.L38:
 227:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 439              		.loc 1 227 0
 440 013c D0F8C020 		ldr	r2, [r0, #192]
 236:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPV2 |= ((0x01 << ch_num) << 16);
 441              		.loc 1 236 0
 442 0140 91F82570 		ldrb	r7, [r1, #37]	@ zero_extendqisi2
 443              	.LVL47:
 227:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 444              		.loc 1 227 0
 445 0144 3243     		orrs	r2, r2, r6
 236:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPV2 |= ((0x01 << ch_num) << 16);
 446              		.loc 1 236 0
 447 0146 022F     		cmp	r7, #2
 227:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 448              		.loc 1 227 0
 449 0148 C0F8C020 		str	r2, [r0, #192]
 236:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_FPV2 |= ((0x01 << ch_num) << 16);
 450              		.loc 1 236 0
 451 014c B8D1     		bne	.L29
 452              	.L40:
 237:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 453              		.loc 1 237 0
 454 014e D0F8C020 		ldr	r2, [r0, #192]
 455 0152 42EA0642 		orr	r2, r2, r6, lsl #16
 456 0156 C0F8C020 		str	r2, [r0, #192]
 457 015a BFE7     		b	.L30
 458              	.L41:
 241:../asf/sam/drivers/pwm/pwm.c **** 		} else {
 459              		.loc 1 241 0
 460 015c 846E     		ldr	r4, [r0, #104]
 461 015e 2243     		orrs	r2, r2, r4
 462 0160 8266     		str	r2, [r0, #104]
 463 0162 BBE7     		b	.L30
 464              	.LVL48:
 465              	.L39:
 231:../asf/sam/drivers/pwm/pwm.c **** 		} else {
 466              		.loc 1 231 0
 467 0164 826E     		ldr	r2, [r0, #104]
 468 0166 3243     		orrs	r2, r2, r6
 469 0168 8266     		str	r2, [r0, #104]
 470 016a A5E7     		b	.L27
 471              		.cfi_endproc
 472              	.LFE144:
 473              		.size	pwm_channel_init, .-pwm_channel_init
 474              		.section	.text.pwm_channel_update_period,"ax",%progbits
 475              		.align	1
 476              		.p2align 2,,3
ARM GAS  /tmp/ccmSFvTJ.s 			page 16


 477              		.global	pwm_channel_update_period
 478              		.syntax unified
 479              		.thumb
 480              		.thumb_func
 481              		.fpu fpv5-d16
 482              		.type	pwm_channel_update_period, %function
 483              	pwm_channel_update_period:
 484              	.LFB145:
 315:../asf/sam/drivers/pwm/pwm.c **** 
 316:../asf/sam/drivers/pwm/pwm.c **** /**
 317:../asf/sam/drivers/pwm/pwm.c ****  * \brief Change the period of the PWM channel.
 318:../asf/sam/drivers/pwm/pwm.c ****  *
 319:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 320:../asf/sam/drivers/pwm/pwm.c ****  * \param p_channel Configurations of the specified PWM channel.
 321:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_period New period value.
 322:../asf/sam/drivers/pwm/pwm.c ****  *
 323:../asf/sam/drivers/pwm/pwm.c ****  * \retval 0 if changing succeeds, otherwise fails.
 324:../asf/sam/drivers/pwm/pwm.c ****  */
 325:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_channel_update_period(Pwm *p_pwm, pwm_channel_t *p_channel,
 326:../asf/sam/drivers/pwm/pwm.c **** 		uint32_t ul_period)
 327:../asf/sam/drivers/pwm/pwm.c **** {
 485              		.loc 1 327 0
 486              		.cfi_startproc
 487              		@ args = 0, pretend = 0, frame = 0
 488              		@ frame_needed = 0, uses_anonymous_args = 0
 489              		@ link register save eliminated.
 490              	.LVL49:
 328:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t ch_num = p_channel->channel;
 329:../asf/sam/drivers/pwm/pwm.c **** 
 330:../asf/sam/drivers/pwm/pwm.c **** 	/** Check parameter */
 331:../asf/sam/drivers/pwm/pwm.c **** 	if (p_channel->ul_duty > ul_period) {
 491              		.loc 1 331 0
 492 0000 CB68     		ldr	r3, [r1, #12]
 493 0002 9342     		cmp	r3, r2
 494 0004 03D9     		bls	.L49
 332:../asf/sam/drivers/pwm/pwm.c **** 		return PWM_INVALID_ARGUMENT;
 495              		.loc 1 332 0
 496 0006 4FF6FF73 		movw	r3, #65535
 333:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 334:../asf/sam/drivers/pwm/pwm.c **** 		/* Save new period value */
 335:../asf/sam/drivers/pwm/pwm.c **** 		p_channel->ul_period = ul_period;
 336:../asf/sam/drivers/pwm/pwm.c **** 
 337:../asf/sam/drivers/pwm/pwm.c **** #if (SAM3N || SAM4N || SAM4C || SAM4CP || SAM4CM)
 338:../asf/sam/drivers/pwm/pwm.c **** 		/* Set CPD bit to change period value */
 339:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CH_NUM[ch_num].PWM_CMR |= PWM_CMR_CPD;
 340:../asf/sam/drivers/pwm/pwm.c **** 
 341:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CH_NUM[ch_num].PWM_CUPD = ul_period;
 342:../asf/sam/drivers/pwm/pwm.c **** #else
 343:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CH_NUM[ch_num].PWM_CPRDUPD = ul_period;
 344:../asf/sam/drivers/pwm/pwm.c **** #endif
 345:../asf/sam/drivers/pwm/pwm.c **** 	}
 346:../asf/sam/drivers/pwm/pwm.c **** 
 347:../asf/sam/drivers/pwm/pwm.c **** 	return 0;
 348:../asf/sam/drivers/pwm/pwm.c **** }
 497              		.loc 1 348 0
 498 000a 1846     		mov	r0, r3
 499              	.LVL50:
ARM GAS  /tmp/ccmSFvTJ.s 			page 17


 500 000c 7047     		bx	lr
 501              	.LVL51:
 502              	.L49:
 327:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t ch_num = p_channel->channel;
 503              		.loc 1 327 0
 504 000e 10B4     		push	{r4}
 505              		.cfi_def_cfa_offset 4
 506              		.cfi_offset 4, -4
 328:../asf/sam/drivers/pwm/pwm.c **** 
 507              		.loc 1 328 0
 508 0010 0C68     		ldr	r4, [r1]
 347:../asf/sam/drivers/pwm/pwm.c **** }
 509              		.loc 1 347 0
 510 0012 0023     		movs	r3, #0
 335:../asf/sam/drivers/pwm/pwm.c **** 
 511              		.loc 1 335 0
 512 0014 0A61     		str	r2, [r1, #16]
 343:../asf/sam/drivers/pwm/pwm.c **** #endif
 513              		.loc 1 343 0
 514 0016 00EB4410 		add	r0, r0, r4, lsl #5
 515              	.LVL52:
 516              		.loc 1 348 0
 517 001a 5DF8044B 		ldr	r4, [sp], #4
 518              		.cfi_restore 4
 519              		.cfi_def_cfa_offset 0
 343:../asf/sam/drivers/pwm/pwm.c **** #endif
 520              		.loc 1 343 0
 521 001e C0F81022 		str	r2, [r0, #528]
 522              		.loc 1 348 0
 523 0022 1846     		mov	r0, r3
 524 0024 7047     		bx	lr
 525              		.cfi_endproc
 526              	.LFE145:
 527              		.size	pwm_channel_update_period, .-pwm_channel_update_period
 528 0026 00BF     		.section	.text.pwm_channel_update_duty,"ax",%progbits
 529              		.align	1
 530              		.p2align 2,,3
 531              		.global	pwm_channel_update_duty
 532              		.syntax unified
 533              		.thumb
 534              		.thumb_func
 535              		.fpu fpv5-d16
 536              		.type	pwm_channel_update_duty, %function
 537              	pwm_channel_update_duty:
 538              	.LFB146:
 349:../asf/sam/drivers/pwm/pwm.c **** 
 350:../asf/sam/drivers/pwm/pwm.c **** /**
 351:../asf/sam/drivers/pwm/pwm.c ****  * \brief Change the duty cycle of the PWM channel.
 352:../asf/sam/drivers/pwm/pwm.c ****  *
 353:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 354:../asf/sam/drivers/pwm/pwm.c ****  * \param p_channel Configurations of the specified PWM channel.
 355:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_duty New duty cycle value.
 356:../asf/sam/drivers/pwm/pwm.c ****  *
 357:../asf/sam/drivers/pwm/pwm.c ****  * \retval 0 if changing succeeds, otherwise fails.
 358:../asf/sam/drivers/pwm/pwm.c ****  */
 359:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_channel_update_duty(Pwm *p_pwm, pwm_channel_t *p_channel,
 360:../asf/sam/drivers/pwm/pwm.c **** 		uint32_t ul_duty)
ARM GAS  /tmp/ccmSFvTJ.s 			page 18


 361:../asf/sam/drivers/pwm/pwm.c **** {
 539              		.loc 1 361 0
 540              		.cfi_startproc
 541              		@ args = 0, pretend = 0, frame = 0
 542              		@ frame_needed = 0, uses_anonymous_args = 0
 543              		@ link register save eliminated.
 544              	.LVL53:
 362:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t ch_num = p_channel->channel;
 363:../asf/sam/drivers/pwm/pwm.c **** 
 364:../asf/sam/drivers/pwm/pwm.c **** 		/** Check parameter */
 365:../asf/sam/drivers/pwm/pwm.c **** 	if (p_channel->ul_period < ul_duty) {
 545              		.loc 1 365 0
 546 0000 0B69     		ldr	r3, [r1, #16]
 547 0002 9342     		cmp	r3, r2
 548 0004 03D2     		bcs	.L57
 366:../asf/sam/drivers/pwm/pwm.c **** 		return PWM_INVALID_ARGUMENT;
 549              		.loc 1 366 0
 550 0006 4FF6FF73 		movw	r3, #65535
 367:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 368:../asf/sam/drivers/pwm/pwm.c **** 		/* Save new duty cycle value */
 369:../asf/sam/drivers/pwm/pwm.c **** 		p_channel->ul_duty = ul_duty;
 370:../asf/sam/drivers/pwm/pwm.c **** 
 371:../asf/sam/drivers/pwm/pwm.c **** #if (SAM3N || SAM4N || SAM4C || SAM4CP || SAM4CM)
 372:../asf/sam/drivers/pwm/pwm.c **** 		/* Clear CPD bit to change duty cycle value */
 373:../asf/sam/drivers/pwm/pwm.c **** 		uint32_t mode = p_pwm->PWM_CH_NUM[ch_num].PWM_CMR;
 374:../asf/sam/drivers/pwm/pwm.c **** 		mode &= ~PWM_CMR_CPD;
 375:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CH_NUM[ch_num].PWM_CMR = mode;
 376:../asf/sam/drivers/pwm/pwm.c **** 
 377:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CH_NUM[ch_num].PWM_CUPD = ul_duty;
 378:../asf/sam/drivers/pwm/pwm.c **** #else
 379:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CH_NUM[ch_num].PWM_CDTYUPD = ul_duty;
 380:../asf/sam/drivers/pwm/pwm.c **** #endif
 381:../asf/sam/drivers/pwm/pwm.c **** 	}
 382:../asf/sam/drivers/pwm/pwm.c **** 
 383:../asf/sam/drivers/pwm/pwm.c **** 	return 0;
 384:../asf/sam/drivers/pwm/pwm.c **** }
 551              		.loc 1 384 0
 552 000a 1846     		mov	r0, r3
 553              	.LVL54:
 554 000c 7047     		bx	lr
 555              	.LVL55:
 556              	.L57:
 361:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t ch_num = p_channel->channel;
 557              		.loc 1 361 0
 558 000e 10B4     		push	{r4}
 559              		.cfi_def_cfa_offset 4
 560              		.cfi_offset 4, -4
 362:../asf/sam/drivers/pwm/pwm.c **** 
 561              		.loc 1 362 0
 562 0010 0C68     		ldr	r4, [r1]
 383:../asf/sam/drivers/pwm/pwm.c **** }
 563              		.loc 1 383 0
 564 0012 0023     		movs	r3, #0
 369:../asf/sam/drivers/pwm/pwm.c **** 
 565              		.loc 1 369 0
 566 0014 CA60     		str	r2, [r1, #12]
 379:../asf/sam/drivers/pwm/pwm.c **** #endif
ARM GAS  /tmp/ccmSFvTJ.s 			page 19


 567              		.loc 1 379 0
 568 0016 00EB4410 		add	r0, r0, r4, lsl #5
 569              	.LVL56:
 570              		.loc 1 384 0
 571 001a 5DF8044B 		ldr	r4, [sp], #4
 572              		.cfi_restore 4
 573              		.cfi_def_cfa_offset 0
 379:../asf/sam/drivers/pwm/pwm.c **** #endif
 574              		.loc 1 379 0
 575 001e C0F80822 		str	r2, [r0, #520]
 576              		.loc 1 384 0
 577 0022 1846     		mov	r0, r3
 578 0024 7047     		bx	lr
 579              		.cfi_endproc
 580              	.LFE146:
 581              		.size	pwm_channel_update_duty, .-pwm_channel_update_duty
 582 0026 00BF     		.section	.text.pwm_channel_get_counter,"ax",%progbits
 583              		.align	1
 584              		.p2align 2,,3
 585              		.global	pwm_channel_get_counter
 586              		.syntax unified
 587              		.thumb
 588              		.thumb_func
 589              		.fpu fpv5-d16
 590              		.type	pwm_channel_get_counter, %function
 591              	pwm_channel_get_counter:
 592              	.LFB147:
 385:../asf/sam/drivers/pwm/pwm.c **** 
 386:../asf/sam/drivers/pwm/pwm.c **** /**
 387:../asf/sam/drivers/pwm/pwm.c ****  * \brief Return channel counter value.
 388:../asf/sam/drivers/pwm/pwm.c ****  *
 389:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 390:../asf/sam/drivers/pwm/pwm.c ****  * \param p_channel Configurations of the specified PWM channel.
 391:../asf/sam/drivers/pwm/pwm.c ****  *
 392:../asf/sam/drivers/pwm/pwm.c ****  * \return channel Counter value.
 393:../asf/sam/drivers/pwm/pwm.c ****  */
 394:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_channel_get_counter(Pwm *p_pwm, pwm_channel_t *p_channel)
 395:../asf/sam/drivers/pwm/pwm.c **** {
 593              		.loc 1 395 0
 594              		.cfi_startproc
 595              		@ args = 0, pretend = 0, frame = 0
 596              		@ frame_needed = 0, uses_anonymous_args = 0
 597              		@ link register save eliminated.
 598              	.LVL57:
 396:../asf/sam/drivers/pwm/pwm.c **** 	return p_pwm->PWM_CH_NUM[p_channel->channel].PWM_CCNT;
 599              		.loc 1 396 0
 600 0000 0B68     		ldr	r3, [r1]
 601 0002 00EB4310 		add	r0, r0, r3, lsl #5
 602              	.LVL58:
 603 0006 D0F81402 		ldr	r0, [r0, #532]
 397:../asf/sam/drivers/pwm/pwm.c **** }
 604              		.loc 1 397 0
 605 000a 7047     		bx	lr
 606              		.cfi_endproc
 607              	.LFE147:
 608              		.size	pwm_channel_get_counter, .-pwm_channel_get_counter
 609              		.section	.text.pwm_channel_enable,"ax",%progbits
ARM GAS  /tmp/ccmSFvTJ.s 			page 20


 610              		.align	1
 611              		.p2align 2,,3
 612              		.global	pwm_channel_enable
 613              		.syntax unified
 614              		.thumb
 615              		.thumb_func
 616              		.fpu fpv5-d16
 617              		.type	pwm_channel_enable, %function
 618              	pwm_channel_enable:
 619              	.LFB148:
 398:../asf/sam/drivers/pwm/pwm.c **** 
 399:../asf/sam/drivers/pwm/pwm.c **** 
 400:../asf/sam/drivers/pwm/pwm.c **** /**
 401:../asf/sam/drivers/pwm/pwm.c ****  * \brief Enable the PWM channel.
 402:../asf/sam/drivers/pwm/pwm.c ****  *
 403:../asf/sam/drivers/pwm/pwm.c ****  * \note The PWM channel should be initialized by pwm_channel_init() before it is enabled.
 404:../asf/sam/drivers/pwm/pwm.c ****  *
 405:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 406:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_channel PWM channel number to enable.
 407:../asf/sam/drivers/pwm/pwm.c ****  */
 408:../asf/sam/drivers/pwm/pwm.c **** void pwm_channel_enable(Pwm *p_pwm, uint32_t ul_channel)
 409:../asf/sam/drivers/pwm/pwm.c **** {
 620              		.loc 1 409 0
 621              		.cfi_startproc
 622              		@ args = 0, pretend = 0, frame = 0
 623              		@ frame_needed = 0, uses_anonymous_args = 0
 624              		@ link register save eliminated.
 625              	.LVL59:
 410:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_ENA = (1 << ul_channel);
 626              		.loc 1 410 0
 627 0000 0123     		movs	r3, #1
 628 0002 03FA01F1 		lsl	r1, r3, r1
 629              	.LVL60:
 630 0006 4160     		str	r1, [r0, #4]
 631 0008 7047     		bx	lr
 632              		.cfi_endproc
 633              	.LFE148:
 634              		.size	pwm_channel_enable, .-pwm_channel_enable
 635              		.section	.text.pwm_channel_disable,"ax",%progbits
 636              		.align	1
 637              		.p2align 2,,3
 638              		.global	pwm_channel_disable
 639              		.syntax unified
 640              		.thumb
 641              		.thumb_func
 642              		.fpu fpv5-d16
 643              		.type	pwm_channel_disable, %function
 644              	pwm_channel_disable:
 645              	.LFB149:
 411:../asf/sam/drivers/pwm/pwm.c **** }
 412:../asf/sam/drivers/pwm/pwm.c **** 
 413:../asf/sam/drivers/pwm/pwm.c **** /**
 414:../asf/sam/drivers/pwm/pwm.c ****  * \brief Disable the PWM channel.
 415:../asf/sam/drivers/pwm/pwm.c ****  *
 416:../asf/sam/drivers/pwm/pwm.c ****  * \note A disabled PWM channel can be re-initialized using pwm_channel_init().
 417:../asf/sam/drivers/pwm/pwm.c ****  *
 418:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
ARM GAS  /tmp/ccmSFvTJ.s 			page 21


 419:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_channel PWM channel number to disable.
 420:../asf/sam/drivers/pwm/pwm.c ****  */
 421:../asf/sam/drivers/pwm/pwm.c **** void pwm_channel_disable(Pwm *p_pwm, uint32_t ul_channel)
 422:../asf/sam/drivers/pwm/pwm.c **** {
 646              		.loc 1 422 0
 647              		.cfi_startproc
 648              		@ args = 0, pretend = 0, frame = 0
 649              		@ frame_needed = 0, uses_anonymous_args = 0
 650              		@ link register save eliminated.
 651              	.LVL61:
 423:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_DIS = (1 << ul_channel);
 652              		.loc 1 423 0
 653 0000 0123     		movs	r3, #1
 654 0002 03FA01F1 		lsl	r1, r3, r1
 655              	.LVL62:
 656 0006 8160     		str	r1, [r0, #8]
 657 0008 7047     		bx	lr
 658              		.cfi_endproc
 659              	.LFE149:
 660              		.size	pwm_channel_disable, .-pwm_channel_disable
 661              		.section	.text.pwm_channel_get_status,"ax",%progbits
 662              		.align	1
 663              		.p2align 2,,3
 664              		.global	pwm_channel_get_status
 665              		.syntax unified
 666              		.thumb
 667              		.thumb_func
 668              		.fpu fpv5-d16
 669              		.type	pwm_channel_get_status, %function
 670              	pwm_channel_get_status:
 671              	.LFB150:
 424:../asf/sam/drivers/pwm/pwm.c **** }
 425:../asf/sam/drivers/pwm/pwm.c **** 
 426:../asf/sam/drivers/pwm/pwm.c **** 
 427:../asf/sam/drivers/pwm/pwm.c **** /**
 428:../asf/sam/drivers/pwm/pwm.c ****  * \brief Check which PWM channel is enabled.
 429:../asf/sam/drivers/pwm/pwm.c ****  *
 430:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 431:../asf/sam/drivers/pwm/pwm.c ****  * \param p_channel Configurations of the specified PWM channel.
 432:../asf/sam/drivers/pwm/pwm.c ****  *
 433:../asf/sam/drivers/pwm/pwm.c ****  * \return Bitmask of enabled PWM channel(s).
 434:../asf/sam/drivers/pwm/pwm.c ****  */
 435:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_channel_get_status(Pwm *p_pwm)
 436:../asf/sam/drivers/pwm/pwm.c **** {
 672              		.loc 1 436 0
 673              		.cfi_startproc
 674              		@ args = 0, pretend = 0, frame = 0
 675              		@ frame_needed = 0, uses_anonymous_args = 0
 676              		@ link register save eliminated.
 677              	.LVL63:
 437:../asf/sam/drivers/pwm/pwm.c **** 	return p_pwm->PWM_SR;
 678              		.loc 1 437 0
 679 0000 C068     		ldr	r0, [r0, #12]
 680              	.LVL64:
 438:../asf/sam/drivers/pwm/pwm.c **** }
 681              		.loc 1 438 0
 682 0002 7047     		bx	lr
ARM GAS  /tmp/ccmSFvTJ.s 			page 22


 683              		.cfi_endproc
 684              	.LFE150:
 685              		.size	pwm_channel_get_status, .-pwm_channel_get_status
 686              		.section	.text.pwm_channel_get_interrupt_status,"ax",%progbits
 687              		.align	1
 688              		.p2align 2,,3
 689              		.global	pwm_channel_get_interrupt_status
 690              		.syntax unified
 691              		.thumb
 692              		.thumb_func
 693              		.fpu fpv5-d16
 694              		.type	pwm_channel_get_interrupt_status, %function
 695              	pwm_channel_get_interrupt_status:
 696              	.LFB151:
 439:../asf/sam/drivers/pwm/pwm.c **** 
 440:../asf/sam/drivers/pwm/pwm.c **** /**
 441:../asf/sam/drivers/pwm/pwm.c ****  * \brief Get channel counter event and fault protection trigger interrupt status.
 442:../asf/sam/drivers/pwm/pwm.c ****  *
 443:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 444:../asf/sam/drivers/pwm/pwm.c ****  *
 445:../asf/sam/drivers/pwm/pwm.c ****  * \return Channel counter event and fault protection trigger interrupt status.
 446:../asf/sam/drivers/pwm/pwm.c ****  */
 447:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_channel_get_interrupt_status(Pwm *p_pwm)
 448:../asf/sam/drivers/pwm/pwm.c **** {
 697              		.loc 1 448 0
 698              		.cfi_startproc
 699              		@ args = 0, pretend = 0, frame = 0
 700              		@ frame_needed = 0, uses_anonymous_args = 0
 701              		@ link register save eliminated.
 702              	.LVL65:
 449:../asf/sam/drivers/pwm/pwm.c **** #if (SAM3N || SAM4N || SAM4C || SAM4CP || SAM4CM)
 450:../asf/sam/drivers/pwm/pwm.c **** 	return p_pwm->PWM_ISR;
 451:../asf/sam/drivers/pwm/pwm.c **** #else
 452:../asf/sam/drivers/pwm/pwm.c **** 	return p_pwm->PWM_ISR1;
 703              		.loc 1 452 0
 704 0000 C069     		ldr	r0, [r0, #28]
 705              	.LVL66:
 453:../asf/sam/drivers/pwm/pwm.c **** #endif
 454:../asf/sam/drivers/pwm/pwm.c **** }
 706              		.loc 1 454 0
 707 0002 7047     		bx	lr
 708              		.cfi_endproc
 709              	.LFE151:
 710              		.size	pwm_channel_get_interrupt_status, .-pwm_channel_get_interrupt_status
 711              		.section	.text.pwm_channel_get_interrupt_mask,"ax",%progbits
 712              		.align	1
 713              		.p2align 2,,3
 714              		.global	pwm_channel_get_interrupt_mask
 715              		.syntax unified
 716              		.thumb
 717              		.thumb_func
 718              		.fpu fpv5-d16
 719              		.type	pwm_channel_get_interrupt_mask, %function
 720              	pwm_channel_get_interrupt_mask:
 721              	.LFB152:
 455:../asf/sam/drivers/pwm/pwm.c **** 
 456:../asf/sam/drivers/pwm/pwm.c **** /**
ARM GAS  /tmp/ccmSFvTJ.s 			page 23


 457:../asf/sam/drivers/pwm/pwm.c ****  * \brief Get channel counter event and fault protection trigger interrupt mask.
 458:../asf/sam/drivers/pwm/pwm.c ****  *
 459:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 460:../asf/sam/drivers/pwm/pwm.c ****  *
 461:../asf/sam/drivers/pwm/pwm.c ****  * \return Channel counter event and fault protection trigger interrupt mask.
 462:../asf/sam/drivers/pwm/pwm.c ****  */
 463:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_channel_get_interrupt_mask(Pwm *p_pwm)
 464:../asf/sam/drivers/pwm/pwm.c **** {
 722              		.loc 1 464 0
 723              		.cfi_startproc
 724              		@ args = 0, pretend = 0, frame = 0
 725              		@ frame_needed = 0, uses_anonymous_args = 0
 726              		@ link register save eliminated.
 727              	.LVL67:
 465:../asf/sam/drivers/pwm/pwm.c **** #if (SAM3N || SAM4N || SAM4C || SAM4CP || SAM4CM)
 466:../asf/sam/drivers/pwm/pwm.c **** 	return p_pwm->PWM_IMR;
 467:../asf/sam/drivers/pwm/pwm.c **** #else
 468:../asf/sam/drivers/pwm/pwm.c **** 	return p_pwm->PWM_IMR1;
 728              		.loc 1 468 0
 729 0000 8069     		ldr	r0, [r0, #24]
 730              	.LVL68:
 469:../asf/sam/drivers/pwm/pwm.c **** #endif
 470:../asf/sam/drivers/pwm/pwm.c **** }
 731              		.loc 1 470 0
 732 0002 7047     		bx	lr
 733              		.cfi_endproc
 734              	.LFE152:
 735              		.size	pwm_channel_get_interrupt_mask, .-pwm_channel_get_interrupt_mask
 736              		.section	.text.pwm_channel_enable_interrupt,"ax",%progbits
 737              		.align	1
 738              		.p2align 2,,3
 739              		.global	pwm_channel_enable_interrupt
 740              		.syntax unified
 741              		.thumb
 742              		.thumb_func
 743              		.fpu fpv5-d16
 744              		.type	pwm_channel_enable_interrupt, %function
 745              	pwm_channel_enable_interrupt:
 746              	.LFB153:
 471:../asf/sam/drivers/pwm/pwm.c **** 
 472:../asf/sam/drivers/pwm/pwm.c **** /**
 473:../asf/sam/drivers/pwm/pwm.c ****  * \brief Enable the interrupt of a channel counter event and fault protection.
 474:../asf/sam/drivers/pwm/pwm.c ****  *
 475:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 476:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_event Channel number to enable counter event interrupt.
 477:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_fault Channel number to enable fault protection interrupt(ignored
 478:../asf/sam/drivers/pwm/pwm.c ****  * by SAM3N/SAM4N/SAM4C/SAM4CP/SAM4CM).
 479:../asf/sam/drivers/pwm/pwm.c ****  */
 480:../asf/sam/drivers/pwm/pwm.c **** void pwm_channel_enable_interrupt(Pwm *p_pwm, uint32_t ul_event,
 481:../asf/sam/drivers/pwm/pwm.c **** 		uint32_t ul_fault)
 482:../asf/sam/drivers/pwm/pwm.c **** {
 747              		.loc 1 482 0
 748              		.cfi_startproc
 749              		@ args = 0, pretend = 0, frame = 0
 750              		@ frame_needed = 0, uses_anonymous_args = 0
 751              		@ link register save eliminated.
 752              	.LVL69:
ARM GAS  /tmp/ccmSFvTJ.s 			page 24


 483:../asf/sam/drivers/pwm/pwm.c **** #if (SAM3N || SAM4N || SAM4C || SAM4CP || SAM4CM)
 484:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_IER = (1 << ul_event);
 485:../asf/sam/drivers/pwm/pwm.c **** 	/* avoid Cppcheck Warning */
 486:../asf/sam/drivers/pwm/pwm.c **** 	UNUSED(ul_fault);
 487:../asf/sam/drivers/pwm/pwm.c **** #else
 488:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_IER1 = (1 << ul_event) | (1 << (ul_fault + 16));
 753              		.loc 1 488 0
 754 0000 0123     		movs	r3, #1
 755 0002 1032     		adds	r2, r2, #16
 756              	.LVL70:
 757 0004 03FA01F1 		lsl	r1, r3, r1
 758              	.LVL71:
 759 0008 03FA02F2 		lsl	r2, r3, r2
 760              	.LVL72:
 761 000c 0A43     		orrs	r2, r2, r1
 762 000e 0261     		str	r2, [r0, #16]
 763 0010 7047     		bx	lr
 764              		.cfi_endproc
 765              	.LFE153:
 766              		.size	pwm_channel_enable_interrupt, .-pwm_channel_enable_interrupt
 767 0012 00BF     		.section	.text.pwm_channel_disable_interrupt,"ax",%progbits
 768              		.align	1
 769              		.p2align 2,,3
 770              		.global	pwm_channel_disable_interrupt
 771              		.syntax unified
 772              		.thumb
 773              		.thumb_func
 774              		.fpu fpv5-d16
 775              		.type	pwm_channel_disable_interrupt, %function
 776              	pwm_channel_disable_interrupt:
 777              	.LFB154:
 489:../asf/sam/drivers/pwm/pwm.c **** #endif
 490:../asf/sam/drivers/pwm/pwm.c **** }
 491:../asf/sam/drivers/pwm/pwm.c **** 
 492:../asf/sam/drivers/pwm/pwm.c **** 
 493:../asf/sam/drivers/pwm/pwm.c **** /**
 494:../asf/sam/drivers/pwm/pwm.c ****  * \brief Disable the interrupt of a channel counter event and fault protection.
 495:../asf/sam/drivers/pwm/pwm.c ****  *
 496:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 497:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_event Bitmask of channel number to disable counter event interrupt.
 498:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_fault Bitmask of channel number to disable fault protection
 499:../asf/sam/drivers/pwm/pwm.c ****  * interrupt(ignored by SAM3N/SAM4N/SAM4C/SAM4CP/SAM4CM).
 500:../asf/sam/drivers/pwm/pwm.c ****  */
 501:../asf/sam/drivers/pwm/pwm.c **** void pwm_channel_disable_interrupt(Pwm *p_pwm, uint32_t ul_event,
 502:../asf/sam/drivers/pwm/pwm.c **** 		uint32_t ul_fault)
 503:../asf/sam/drivers/pwm/pwm.c **** {
 778              		.loc 1 503 0
 779              		.cfi_startproc
 780              		@ args = 0, pretend = 0, frame = 0
 781              		@ frame_needed = 0, uses_anonymous_args = 0
 782              		@ link register save eliminated.
 783              	.LVL73:
 504:../asf/sam/drivers/pwm/pwm.c **** #if (SAM3N || SAM4N || SAM4C || SAM4CP || SAM4CM)
 505:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_IDR = (1 << ul_event);
 506:../asf/sam/drivers/pwm/pwm.c **** 	/* avoid Cppcheck Warning */
 507:../asf/sam/drivers/pwm/pwm.c **** 	UNUSED(ul_fault);
 508:../asf/sam/drivers/pwm/pwm.c **** #else
ARM GAS  /tmp/ccmSFvTJ.s 			page 25


 509:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_IDR1 = (1 << ul_event) | (1 << (ul_fault + 16));
 784              		.loc 1 509 0
 785 0000 0123     		movs	r3, #1
 786 0002 1032     		adds	r2, r2, #16
 787              	.LVL74:
 788 0004 03FA01F1 		lsl	r1, r3, r1
 789              	.LVL75:
 790 0008 03FA02F2 		lsl	r2, r3, r2
 791              	.LVL76:
 792 000c 0A43     		orrs	r2, r2, r1
 793 000e 4261     		str	r2, [r0, #20]
 794 0010 7047     		bx	lr
 795              		.cfi_endproc
 796              	.LFE154:
 797              		.size	pwm_channel_disable_interrupt, .-pwm_channel_disable_interrupt
 798 0012 00BF     		.section	.text.pwm_channel_update_output,"ax",%progbits
 799              		.align	1
 800              		.p2align 2,,3
 801              		.global	pwm_channel_update_output
 802              		.syntax unified
 803              		.thumb
 804              		.thumb_func
 805              		.fpu fpv5-d16
 806              		.type	pwm_channel_update_output, %function
 807              	pwm_channel_update_output:
 808              	.LFB155:
 510:../asf/sam/drivers/pwm/pwm.c **** #endif
 511:../asf/sam/drivers/pwm/pwm.c **** }
 512:../asf/sam/drivers/pwm/pwm.c **** 
 513:../asf/sam/drivers/pwm/pwm.c **** 
 514:../asf/sam/drivers/pwm/pwm.c **** #if (SAM3U || SAM3S || SAM3XA || SAM4S || SAM4E || SAMV70 || SAMV71 || SAME70 || SAMS70)
 515:../asf/sam/drivers/pwm/pwm.c **** /**
 516:../asf/sam/drivers/pwm/pwm.c ****  * \brief Change output selection of the PWM channel.
 517:../asf/sam/drivers/pwm/pwm.c ****  *
 518:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 519:../asf/sam/drivers/pwm/pwm.c ****  * \param p_channel Configurations of the specified PWM channel.
 520:../asf/sam/drivers/pwm/pwm.c ****  * \param p_output New PWM channel output selection.
 521:../asf/sam/drivers/pwm/pwm.c ****  * \param b_sync Boolean of changing of output selection. Set true to change the output synchronous
 522:../asf/sam/drivers/pwm/pwm.c ****  */
 523:../asf/sam/drivers/pwm/pwm.c **** void pwm_channel_update_output(Pwm *p_pwm, pwm_channel_t *p_channel,
 524:../asf/sam/drivers/pwm/pwm.c **** 		pwm_output_t *p_output, bool b_sync)
 525:../asf/sam/drivers/pwm/pwm.c **** {
 809              		.loc 1 525 0
 810              		.cfi_startproc
 811              		@ args = 0, pretend = 0, frame = 0
 812              		@ frame_needed = 0, uses_anonymous_args = 0
 813              	.LVL77:
 814 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 815              		.cfi_def_cfa_offset 20
 816              		.cfi_offset 4, -20
 817              		.cfi_offset 5, -16
 818              		.cfi_offset 6, -12
 819              		.cfi_offset 7, -8
 820              		.cfi_offset 14, -4
 526:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t ch_num = p_channel->channel;
 527:../asf/sam/drivers/pwm/pwm.c **** #if 0	// dc42
 528:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t channel = (1 << ch_num);
ARM GAS  /tmp/ccmSFvTJ.s 			page 26


 529:../asf/sam/drivers/pwm/pwm.c **** #endif
 530:../asf/sam/drivers/pwm/pwm.c **** 
 531:../asf/sam/drivers/pwm/pwm.c **** 	bool override_pwmh = p_output->b_override_pwmh;
 532:../asf/sam/drivers/pwm/pwm.c **** 	bool override_pwml = p_output->b_override_pwml;
 533:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t pwmh = p_output->override_level_pwmh;
 821              		.loc 1 533 0
 822 0002 92F802C0 		ldrb	ip, [r2, #2]	@ zero_extendqisi2
 534:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t pwml = p_output->override_level_pwml;
 535:../asf/sam/drivers/pwm/pwm.c **** 
 536:../asf/sam/drivers/pwm/pwm.c **** 	/* Save new output configuration */
 537:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->output_selection.b_override_pwmh = override_pwmh;
 538:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->output_selection.b_override_pwml = override_pwml;
 539:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->output_selection.override_level_pwmh = (pwm_level_t) pwmh;
 540:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->output_selection.override_level_pwml = (pwm_level_t) pwml;
 541:../asf/sam/drivers/pwm/pwm.c **** 
 542:../asf/sam/drivers/pwm/pwm.c **** 	/* Change override output level */
 543:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t override_value = p_pwm->PWM_OOV;
 544:../asf/sam/drivers/pwm/pwm.c **** 	override_value &= ~((PWM_OOV_OOVH0 | PWM_OOV_OOVL0) << ch_num);
 823              		.loc 1 544 0
 824 0006 4FF00117 		mov	r7, #65537
 534:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t pwml = p_output->override_level_pwml;
 825              		.loc 1 534 0
 826 000a 92F803E0 		ldrb	lr, [r2, #3]	@ zero_extendqisi2
 526:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t ch_num = p_channel->channel;
 827              		.loc 1 526 0
 828 000e 0D68     		ldr	r5, [r1]
 829              	.LVL78:
 545:../asf/sam/drivers/pwm/pwm.c **** 	override_value |= (((pwml << 16) | pwmh) << ch_num);
 830              		.loc 1 545 0
 831 0010 4CEA0E46 		orr	r6, ip, lr, lsl #16
 544:../asf/sam/drivers/pwm/pwm.c **** 	override_value |= (((pwml << 16) | pwmh) << ch_num);
 832              		.loc 1 544 0
 833 0014 07FA05F4 		lsl	r4, r7, r5
 543:../asf/sam/drivers/pwm/pwm.c **** 	override_value &= ~((PWM_OOV_OOVH0 | PWM_OOV_OOVL0) << ch_num);
 834              		.loc 1 543 0
 835 0018 476C     		ldr	r7, [r0, #68]
 836              		.loc 1 545 0
 837 001a AE40     		lsls	r6, r6, r5
 544:../asf/sam/drivers/pwm/pwm.c **** 	override_value |= (((pwml << 16) | pwmh) << ch_num);
 838              		.loc 1 544 0
 839 001c 27EA0407 		bic	r7, r7, r4
 531:../asf/sam/drivers/pwm/pwm.c **** 	bool override_pwml = p_output->b_override_pwml;
 840              		.loc 1 531 0
 841 0020 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 842              	.LVL79:
 532:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t pwmh = p_output->override_level_pwmh;
 843              		.loc 1 532 0
 844 0022 5278     		ldrb	r2, [r2, #1]	@ zero_extendqisi2
 845              	.LVL80:
 846              		.loc 1 545 0
 847 0024 3E43     		orrs	r6, r6, r7
 848              	.LVL81:
 539:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->output_selection.override_level_pwml = (pwm_level_t) pwml;
 849              		.loc 1 539 0
 850 0026 81F820C0 		strb	ip, [r1, #32]
 537:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->output_selection.b_override_pwml = override_pwml;
 851              		.loc 1 537 0
ARM GAS  /tmp/ccmSFvTJ.s 			page 27


 852 002a 8C77     		strb	r4, [r1, #30]
 538:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->output_selection.override_level_pwmh = (pwm_level_t) pwmh;
 853              		.loc 1 538 0
 854 002c CA77     		strb	r2, [r1, #31]
 540:../asf/sam/drivers/pwm/pwm.c **** 
 855              		.loc 1 540 0
 856 002e 81F821E0 		strb	lr, [r1, #33]
 546:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_OOV = override_value;
 547:../asf/sam/drivers/pwm/pwm.c **** 
 548:../asf/sam/drivers/pwm/pwm.c **** 	/* Apply new output selection */
 549:../asf/sam/drivers/pwm/pwm.c **** 	if (b_sync) {
 550:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_OSSUPD = ((override_pwml << ch_num) << 16) |
 551:../asf/sam/drivers/pwm/pwm.c **** 			(override_pwmh << ch_num);
 552:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_OSCUPD = ((!override_pwml << ch_num) << 16) |
 857              		.loc 1 552 0
 858 0032 82F00101 		eor	r1, r2, #1
 859              	.LVL82:
 546:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_OOV = override_value;
 860              		.loc 1 546 0
 861 0036 4664     		str	r6, [r0, #68]
 549:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_OSSUPD = ((override_pwml << ch_num) << 16) |
 862              		.loc 1 549 0
 863 0038 6BB9     		cbnz	r3, .L70
 553:../asf/sam/drivers/pwm/pwm.c **** 			(!override_pwmh << ch_num);
 554:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 555:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_OSS = ((override_pwml << ch_num) << 16) |
 556:../asf/sam/drivers/pwm/pwm.c **** 			(override_pwmh << ch_num);
 557:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_OSC = ((!override_pwml << ch_num) << 16) |
 558:../asf/sam/drivers/pwm/pwm.c **** 			(!override_pwmh << ch_num);
 864              		.loc 1 558 0
 865 003a 84F00103 		eor	r3, r4, #1
 866              	.LVL83:
 555:../asf/sam/drivers/pwm/pwm.c **** 			(override_pwmh << ch_num);
 867              		.loc 1 555 0
 868 003e AA40     		lsls	r2, r2, r5
 869              	.LVL84:
 556:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_OSC = ((!override_pwml << ch_num) << 16) |
 870              		.loc 1 556 0
 871 0040 AC40     		lsls	r4, r4, r5
 872              	.LVL85:
 557:../asf/sam/drivers/pwm/pwm.c **** 			(!override_pwmh << ch_num);
 873              		.loc 1 557 0
 874 0042 A940     		lsls	r1, r1, r5
 875              	.LVL86:
 876              		.loc 1 558 0
 877 0044 03FA05F5 		lsl	r5, r3, r5
 878              	.LVL87:
 555:../asf/sam/drivers/pwm/pwm.c **** 			(override_pwmh << ch_num);
 879              		.loc 1 555 0
 880 0048 44EA0244 		orr	r4, r4, r2, lsl #16
 557:../asf/sam/drivers/pwm/pwm.c **** 			(!override_pwmh << ch_num);
 881              		.loc 1 557 0
 882 004c 45EA0145 		orr	r5, r5, r1, lsl #16
 555:../asf/sam/drivers/pwm/pwm.c **** 			(override_pwmh << ch_num);
 883              		.loc 1 555 0
 884 0050 C464     		str	r4, [r0, #76]
 557:../asf/sam/drivers/pwm/pwm.c **** 			(!override_pwmh << ch_num);
ARM GAS  /tmp/ccmSFvTJ.s 			page 28


 885              		.loc 1 557 0
 886 0052 0565     		str	r5, [r0, #80]
 887 0054 F0BD     		pop	{r4, r5, r6, r7, pc}
 888              	.LVL88:
 889              	.L70:
 553:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 890              		.loc 1 553 0
 891 0056 84F00103 		eor	r3, r4, #1
 892              	.LVL89:
 550:../asf/sam/drivers/pwm/pwm.c **** 			(override_pwmh << ch_num);
 893              		.loc 1 550 0
 894 005a AA40     		lsls	r2, r2, r5
 895              	.LVL90:
 551:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_OSCUPD = ((!override_pwml << ch_num) << 16) |
 896              		.loc 1 551 0
 897 005c AC40     		lsls	r4, r4, r5
 898              	.LVL91:
 552:../asf/sam/drivers/pwm/pwm.c **** 			(!override_pwmh << ch_num);
 899              		.loc 1 552 0
 900 005e A940     		lsls	r1, r1, r5
 901              	.LVL92:
 553:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 902              		.loc 1 553 0
 903 0060 03FA05F5 		lsl	r5, r3, r5
 904              	.LVL93:
 550:../asf/sam/drivers/pwm/pwm.c **** 			(override_pwmh << ch_num);
 905              		.loc 1 550 0
 906 0064 44EA0244 		orr	r4, r4, r2, lsl #16
 552:../asf/sam/drivers/pwm/pwm.c **** 			(!override_pwmh << ch_num);
 907              		.loc 1 552 0
 908 0068 45EA0145 		orr	r5, r5, r1, lsl #16
 550:../asf/sam/drivers/pwm/pwm.c **** 			(override_pwmh << ch_num);
 909              		.loc 1 550 0
 910 006c 4465     		str	r4, [r0, #84]
 552:../asf/sam/drivers/pwm/pwm.c **** 			(!override_pwmh << ch_num);
 911              		.loc 1 552 0
 912 006e 8565     		str	r5, [r0, #88]
 913 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 914              		.cfi_endproc
 915              	.LFE155:
 916              		.size	pwm_channel_update_output, .-pwm_channel_update_output
 917 0072 00BF     		.section	.text.pwm_channel_update_dead_time,"ax",%progbits
 918              		.align	1
 919              		.p2align 2,,3
 920              		.global	pwm_channel_update_dead_time
 921              		.syntax unified
 922              		.thumb
 923              		.thumb_func
 924              		.fpu fpv5-d16
 925              		.type	pwm_channel_update_dead_time, %function
 926              	pwm_channel_update_dead_time:
 927              	.LFB156:
 559:../asf/sam/drivers/pwm/pwm.c **** 	}
 560:../asf/sam/drivers/pwm/pwm.c **** }
 561:../asf/sam/drivers/pwm/pwm.c **** 
 562:../asf/sam/drivers/pwm/pwm.c **** /**
 563:../asf/sam/drivers/pwm/pwm.c ****  * \brief Change dead-time value for PWM outputs.
ARM GAS  /tmp/ccmSFvTJ.s 			page 29


 564:../asf/sam/drivers/pwm/pwm.c ****  *
 565:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 566:../asf/sam/drivers/pwm/pwm.c ****  * \param p_channel Configurations of the specified PWM channel.
 567:../asf/sam/drivers/pwm/pwm.c ****  * \param us_deadtime_pwmh New dead-time value for PWMH output.
 568:../asf/sam/drivers/pwm/pwm.c ****  * \param us_deadtime_pwml New dead-time value for PWML output.
 569:../asf/sam/drivers/pwm/pwm.c ****  */
 570:../asf/sam/drivers/pwm/pwm.c **** void pwm_channel_update_dead_time(Pwm *p_pwm, pwm_channel_t *p_channel,
 571:../asf/sam/drivers/pwm/pwm.c **** 		uint16_t us_deadtime_pwmh, uint16_t us_deadtime_pwml)
 572:../asf/sam/drivers/pwm/pwm.c **** {
 928              		.loc 1 572 0
 929              		.cfi_startproc
 930              		@ args = 0, pretend = 0, frame = 0
 931              		@ frame_needed = 0, uses_anonymous_args = 0
 932              		@ link register save eliminated.
 933              	.LVL94:
 934 0000 30B4     		push	{r4, r5}
 935              		.cfi_def_cfa_offset 8
 936              		.cfi_offset 4, -8
 937              		.cfi_offset 5, -4
 573:../asf/sam/drivers/pwm/pwm.c **** 	/* Save new dead time value */
 574:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->us_deadtime_pwmh = us_deadtime_pwmh;
 575:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->us_deadtime_pwml = us_deadtime_pwml;
 576:../asf/sam/drivers/pwm/pwm.c **** 
 577:../asf/sam/drivers/pwm/pwm.c **** 	/* Write channel dead time update register */
 578:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CH_NUM[p_channel->channel].PWM_DTUPD =
 938              		.loc 1 578 0
 939 0002 0C68     		ldr	r4, [r1]
 579:../asf/sam/drivers/pwm/pwm.c **** 			PWM_DTUPD_DTLUPD(us_deadtime_pwml) |
 940              		.loc 1 579 0
 941 0004 42EA0345 		orr	r5, r2, r3, lsl #16
 574:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->us_deadtime_pwml = us_deadtime_pwml;
 942              		.loc 1 574 0
 943 0008 4A83     		strh	r2, [r1, #26]	@ movhi
 578:../asf/sam/drivers/pwm/pwm.c **** 			PWM_DTUPD_DTLUPD(us_deadtime_pwml) |
 944              		.loc 1 578 0
 945 000a 00EB4410 		add	r0, r0, r4, lsl #5
 946              	.LVL95:
 575:../asf/sam/drivers/pwm/pwm.c **** 
 947              		.loc 1 575 0
 948 000e 8B83     		strh	r3, [r1, #28]	@ movhi
 578:../asf/sam/drivers/pwm/pwm.c **** 			PWM_DTUPD_DTLUPD(us_deadtime_pwml) |
 949              		.loc 1 578 0
 950 0010 C0F81C52 		str	r5, [r0, #540]
 580:../asf/sam/drivers/pwm/pwm.c **** 			PWM_DTUPD_DTHUPD(us_deadtime_pwmh);
 581:../asf/sam/drivers/pwm/pwm.c **** }
 951              		.loc 1 581 0
 952 0014 30BC     		pop	{r4, r5}
 953              		.cfi_restore 5
 954              		.cfi_restore 4
 955              		.cfi_def_cfa_offset 0
 956 0016 7047     		bx	lr
 957              		.cfi_endproc
 958              	.LFE156:
 959              		.size	pwm_channel_update_dead_time, .-pwm_channel_update_dead_time
 960              		.section	.text.pwm_fault_init,"ax",%progbits
 961              		.align	1
 962              		.p2align 2,,3
ARM GAS  /tmp/ccmSFvTJ.s 			page 30


 963              		.global	pwm_fault_init
 964              		.syntax unified
 965              		.thumb
 966              		.thumb_func
 967              		.fpu fpv5-d16
 968              		.type	pwm_fault_init, %function
 969              	pwm_fault_init:
 970              	.LFB157:
 582:../asf/sam/drivers/pwm/pwm.c **** 
 583:../asf/sam/drivers/pwm/pwm.c **** 
 584:../asf/sam/drivers/pwm/pwm.c **** 
 585:../asf/sam/drivers/pwm/pwm.c **** /**
 586:../asf/sam/drivers/pwm/pwm.c ****  * \brief Initialize the behavior of a fault input.
 587:../asf/sam/drivers/pwm/pwm.c ****  *
 588:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 589:../asf/sam/drivers/pwm/pwm.c ****  * \param p_fault Configurations of a fault input.
 590:../asf/sam/drivers/pwm/pwm.c ****  *
 591:../asf/sam/drivers/pwm/pwm.c ****  * \retval 0 if configuration succeeds, otherwise fails.
 592:../asf/sam/drivers/pwm/pwm.c ****  */
 593:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_fault_init(Pwm *p_pwm, pwm_fault_t *p_fault)
 594:../asf/sam/drivers/pwm/pwm.c **** {
 971              		.loc 1 594 0
 972              		.cfi_startproc
 973              		@ args = 0, pretend = 0, frame = 0
 974              		@ frame_needed = 0, uses_anonymous_args = 0
 975              		@ link register save eliminated.
 976              	.LVL96:
 977 0000 10B4     		push	{r4}
 978              		.cfi_def_cfa_offset 4
 979              		.cfi_offset 4, -4
 595:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t fault_id = p_fault->fault_id;
 596:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t fault_reg = p_pwm->PWM_FMR;
 597:../asf/sam/drivers/pwm/pwm.c **** 
 598:../asf/sam/drivers/pwm/pwm.c **** 	/** Polarity of fault input */
 599:../asf/sam/drivers/pwm/pwm.c **** 	if (p_fault->polarity == PWM_HIGH) {
 980              		.loc 1 599 0
 981 0002 4C78     		ldrb	r4, [r1, #1]	@ zero_extendqisi2
 595:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t fault_id = p_fault->fault_id;
 982              		.loc 1 595 0
 983 0004 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 984              	.LVL97:
 985              		.loc 1 599 0
 986 0006 012C     		cmp	r4, #1
 596:../asf/sam/drivers/pwm/pwm.c **** 
 987              		.loc 1 596 0
 988 0008 C36D     		ldr	r3, [r0, #92]
 989              	.LVL98:
 600:../asf/sam/drivers/pwm/pwm.c **** 		fault_reg |= fault_id;
 601:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 602:../asf/sam/drivers/pwm/pwm.c **** 		fault_reg &= ~fault_id;
 603:../asf/sam/drivers/pwm/pwm.c **** 	}
 604:../asf/sam/drivers/pwm/pwm.c **** 	/** Boolean of clearing fault flag */
 605:../asf/sam/drivers/pwm/pwm.c **** 	if (p_fault->b_clear) {
 990              		.loc 1 605 0
 991 000a 8C78     		ldrb	r4, [r1, #2]	@ zero_extendqisi2
 600:../asf/sam/drivers/pwm/pwm.c **** 		fault_reg |= fault_id;
 992              		.loc 1 600 0
ARM GAS  /tmp/ccmSFvTJ.s 			page 31


 993 000c 0CBF     		ite	eq
 994 000e 1343     		orreq	r3, r3, r2
 995              	.LVL99:
 602:../asf/sam/drivers/pwm/pwm.c **** 	}
 996              		.loc 1 602 0
 997 0010 9343     		bicne	r3, r3, r2
 998              	.LVL100:
 999              		.loc 1 605 0
 1000 0012 54B1     		cbz	r4, .L76
 606:../asf/sam/drivers/pwm/pwm.c **** 		fault_reg |= (fault_id << 8);
 607:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 608:../asf/sam/drivers/pwm/pwm.c **** 		fault_reg &= ~(fault_id << 8);
 609:../asf/sam/drivers/pwm/pwm.c **** 	}
 610:../asf/sam/drivers/pwm/pwm.c **** 	/** Boolean of fault filtering */
 611:../asf/sam/drivers/pwm/pwm.c **** 	if (p_fault->b_filtered) {
 1001              		.loc 1 611 0
 1002 0014 C978     		ldrb	r1, [r1, #3]	@ zero_extendqisi2
 1003              	.LVL101:
 606:../asf/sam/drivers/pwm/pwm.c **** 		fault_reg |= (fault_id << 8);
 1004              		.loc 1 606 0
 1005 0016 43EA0223 		orr	r3, r3, r2, lsl #8
 1006              	.LVL102:
 1007              		.loc 1 611 0
 1008 001a 59B9     		cbnz	r1, .L81
 1009              	.L78:
 612:../asf/sam/drivers/pwm/pwm.c **** 		fault_reg |= (fault_id << 16);
 613:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 614:../asf/sam/drivers/pwm/pwm.c **** 		fault_reg &= ~(fault_id << 16);
 1010              		.loc 1 614 0
 1011 001c 23EA0243 		bic	r3, r3, r2, lsl #16
 1012              	.LVL103:
 615:../asf/sam/drivers/pwm/pwm.c **** 	}
 616:../asf/sam/drivers/pwm/pwm.c **** 
 617:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_FMR = fault_reg;
 618:../asf/sam/drivers/pwm/pwm.c **** 
 619:../asf/sam/drivers/pwm/pwm.c **** 	return 0;
 620:../asf/sam/drivers/pwm/pwm.c **** }
 1013              		.loc 1 620 0
 1014 0020 5DF8044B 		ldr	r4, [sp], #4
 1015              		.cfi_remember_state
 1016              		.cfi_restore 4
 1017              		.cfi_def_cfa_offset 0
 617:../asf/sam/drivers/pwm/pwm.c **** 
 1018              		.loc 1 617 0
 1019 0024 C365     		str	r3, [r0, #92]
 1020              		.loc 1 620 0
 1021 0026 0020     		movs	r0, #0
 1022              	.LVL104:
 1023 0028 7047     		bx	lr
 1024              	.LVL105:
 1025              	.L76:
 1026              		.cfi_restore_state
 611:../asf/sam/drivers/pwm/pwm.c **** 		fault_reg |= (fault_id << 16);
 1027              		.loc 1 611 0
 1028 002a C978     		ldrb	r1, [r1, #3]	@ zero_extendqisi2
 1029              	.LVL106:
 608:../asf/sam/drivers/pwm/pwm.c **** 	}
ARM GAS  /tmp/ccmSFvTJ.s 			page 32


 1030              		.loc 1 608 0
 1031 002c 23EA0223 		bic	r3, r3, r2, lsl #8
 1032              	.LVL107:
 611:../asf/sam/drivers/pwm/pwm.c **** 		fault_reg |= (fault_id << 16);
 1033              		.loc 1 611 0
 1034 0030 0029     		cmp	r1, #0
 1035 0032 F3D0     		beq	.L78
 1036              	.L81:
 612:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 1037              		.loc 1 612 0
 1038 0034 43EA0243 		orr	r3, r3, r2, lsl #16
 1039              	.LVL108:
 1040              		.loc 1 620 0
 1041 0038 5DF8044B 		ldr	r4, [sp], #4
 1042              		.cfi_restore 4
 1043              		.cfi_def_cfa_offset 0
 617:../asf/sam/drivers/pwm/pwm.c **** 
 1044              		.loc 1 617 0
 1045 003c C365     		str	r3, [r0, #92]
 1046              		.loc 1 620 0
 1047 003e 0020     		movs	r0, #0
 1048              	.LVL109:
 1049 0040 7047     		bx	lr
 1050              		.cfi_endproc
 1051              	.LFE157:
 1052              		.size	pwm_fault_init, .-pwm_fault_init
 1053 0042 00BF     		.section	.text.pwm_fault_get_status,"ax",%progbits
 1054              		.align	1
 1055              		.p2align 2,,3
 1056              		.global	pwm_fault_get_status
 1057              		.syntax unified
 1058              		.thumb
 1059              		.thumb_func
 1060              		.fpu fpv5-d16
 1061              		.type	pwm_fault_get_status, %function
 1062              	pwm_fault_get_status:
 1063              	.LFB158:
 621:../asf/sam/drivers/pwm/pwm.c **** 
 622:../asf/sam/drivers/pwm/pwm.c **** /**
 623:../asf/sam/drivers/pwm/pwm.c ****  * \brief Get fault status.
 624:../asf/sam/drivers/pwm/pwm.c ****  *
 625:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 626:../asf/sam/drivers/pwm/pwm.c ****  *
 627:../asf/sam/drivers/pwm/pwm.c ****  * \return Bitmask of IDs of all active faulty.
 628:../asf/sam/drivers/pwm/pwm.c ****  */
 629:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_fault_get_status(Pwm *p_pwm)
 630:../asf/sam/drivers/pwm/pwm.c **** {
 1064              		.loc 1 630 0
 1065              		.cfi_startproc
 1066              		@ args = 0, pretend = 0, frame = 0
 1067              		@ frame_needed = 0, uses_anonymous_args = 0
 1068              		@ link register save eliminated.
 1069              	.LVL110:
 631:../asf/sam/drivers/pwm/pwm.c **** 	return ((p_pwm->PWM_FSR >> 8) & 0xFF);
 1070              		.loc 1 631 0
 1071 0000 006E     		ldr	r0, [r0, #96]
 1072              	.LVL111:
ARM GAS  /tmp/ccmSFvTJ.s 			page 33


 632:../asf/sam/drivers/pwm/pwm.c **** }
 1073              		.loc 1 632 0
 1074 0002 C0F30720 		ubfx	r0, r0, #8, #8
 1075 0006 7047     		bx	lr
 1076              		.cfi_endproc
 1077              	.LFE158:
 1078              		.size	pwm_fault_get_status, .-pwm_fault_get_status
 1079              		.section	.text.pwm_fault_get_input_level,"ax",%progbits
 1080              		.align	1
 1081              		.p2align 2,,3
 1082              		.global	pwm_fault_get_input_level
 1083              		.syntax unified
 1084              		.thumb
 1085              		.thumb_func
 1086              		.fpu fpv5-d16
 1087              		.type	pwm_fault_get_input_level, %function
 1088              	pwm_fault_get_input_level:
 1089              	.LFB159:
 633:../asf/sam/drivers/pwm/pwm.c **** 
 634:../asf/sam/drivers/pwm/pwm.c **** /**
 635:../asf/sam/drivers/pwm/pwm.c ****  * \brief Get the level of a fault input.
 636:../asf/sam/drivers/pwm/pwm.c ****  *
 637:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 638:../asf/sam/drivers/pwm/pwm.c ****  * \param id Faulty ID.
 639:../asf/sam/drivers/pwm/pwm.c ****  *
 640:../asf/sam/drivers/pwm/pwm.c ****  * \return Level of the fault input.
 641:../asf/sam/drivers/pwm/pwm.c ****  */
 642:../asf/sam/drivers/pwm/pwm.c **** pwm_level_t pwm_fault_get_input_level(Pwm *p_pwm, pwm_fault_id_t id)
 643:../asf/sam/drivers/pwm/pwm.c **** {
 1090              		.loc 1 643 0
 1091              		.cfi_startproc
 1092              		@ args = 0, pretend = 0, frame = 0
 1093              		@ frame_needed = 0, uses_anonymous_args = 0
 1094              		@ link register save eliminated.
 1095              	.LVL112:
 644:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t fault_status_reg = p_pwm->PWM_FSR;
 1096              		.loc 1 644 0
 1097 0000 006E     		ldr	r0, [r0, #96]
 1098              	.LVL113:
 645:../asf/sam/drivers/pwm/pwm.c **** 	fault_status_reg >>= id;
 1099              		.loc 1 645 0
 1100 0002 C840     		lsrs	r0, r0, r1
 1101              	.LVL114:
 646:../asf/sam/drivers/pwm/pwm.c **** 
 647:../asf/sam/drivers/pwm/pwm.c **** 	return ((fault_status_reg & 1) ? PWM_HIGH : PWM_LOW);
 648:../asf/sam/drivers/pwm/pwm.c **** }
 1102              		.loc 1 648 0
 1103 0004 00F00100 		and	r0, r0, #1
 1104 0008 7047     		bx	lr
 1105              		.cfi_endproc
 1106              	.LFE159:
 1107              		.size	pwm_fault_get_input_level, .-pwm_fault_get_input_level
 1108 000a 00BF     		.section	.text.pwm_fault_clear_status,"ax",%progbits
 1109              		.align	1
 1110              		.p2align 2,,3
 1111              		.global	pwm_fault_clear_status
 1112              		.syntax unified
ARM GAS  /tmp/ccmSFvTJ.s 			page 34


 1113              		.thumb
 1114              		.thumb_func
 1115              		.fpu fpv5-d16
 1116              		.type	pwm_fault_clear_status, %function
 1117              	pwm_fault_clear_status:
 1118              	.LFB160:
 649:../asf/sam/drivers/pwm/pwm.c **** 
 650:../asf/sam/drivers/pwm/pwm.c **** /**
 651:../asf/sam/drivers/pwm/pwm.c ****  * \brief Clear a fault input.
 652:../asf/sam/drivers/pwm/pwm.c ****  *
 653:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 654:../asf/sam/drivers/pwm/pwm.c ****  * \param id Faulty ID.
 655:../asf/sam/drivers/pwm/pwm.c ****  */
 656:../asf/sam/drivers/pwm/pwm.c **** void pwm_fault_clear_status(Pwm *p_pwm, pwm_fault_id_t id)
 657:../asf/sam/drivers/pwm/pwm.c **** {
 1119              		.loc 1 657 0
 1120              		.cfi_startproc
 1121              		@ args = 0, pretend = 0, frame = 0
 1122              		@ frame_needed = 0, uses_anonymous_args = 0
 1123              		@ link register save eliminated.
 1124              	.LVL115:
 658:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_FCR = id;
 1125              		.loc 1 658 0
 1126 0000 4166     		str	r1, [r0, #100]
 1127 0002 7047     		bx	lr
 1128              		.cfi_endproc
 1129              	.LFE160:
 1130              		.size	pwm_fault_clear_status, .-pwm_fault_clear_status
 1131              		.section	.text.pwm_cmp_init,"ax",%progbits
 1132              		.align	1
 1133              		.p2align 2,,3
 1134              		.global	pwm_cmp_init
 1135              		.syntax unified
 1136              		.thumb
 1137              		.thumb_func
 1138              		.fpu fpv5-d16
 1139              		.type	pwm_cmp_init, %function
 1140              	pwm_cmp_init:
 1141              	.LFB161:
 659:../asf/sam/drivers/pwm/pwm.c **** }
 660:../asf/sam/drivers/pwm/pwm.c **** 
 661:../asf/sam/drivers/pwm/pwm.c **** /**
 662:../asf/sam/drivers/pwm/pwm.c ****  * \brief Initialize PWM comparison unit.
 663:../asf/sam/drivers/pwm/pwm.c ****  *
 664:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 665:../asf/sam/drivers/pwm/pwm.c ****  * \param p_cmp Configurations of PWM comparison tagged by unit.
 666:../asf/sam/drivers/pwm/pwm.c ****  *
 667:../asf/sam/drivers/pwm/pwm.c ****  * \retval 0 if initialization succeeds, otherwise fails.
 668:../asf/sam/drivers/pwm/pwm.c ****  */
 669:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_cmp_init(Pwm *p_pwm, pwm_cmp_t *p_cmp)
 670:../asf/sam/drivers/pwm/pwm.c **** {
 1142              		.loc 1 670 0
 1143              		.cfi_startproc
 1144              		@ args = 0, pretend = 0, frame = 0
 1145              		@ frame_needed = 0, uses_anonymous_args = 0
 1146              	.LVL116:
 1147 0000 F0B5     		push	{r4, r5, r6, r7, lr}
ARM GAS  /tmp/ccmSFvTJ.s 			page 35


 1148              		.cfi_def_cfa_offset 20
 1149              		.cfi_offset 4, -20
 1150              		.cfi_offset 5, -16
 1151              		.cfi_offset 6, -12
 1152              		.cfi_offset 7, -8
 1153              		.cfi_offset 14, -4
 671:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t unit = p_cmp->unit;
 672:../asf/sam/drivers/pwm/pwm.c **** 
 673:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CMP[unit].PWM_CMPV = PWM_CMPV_CV(p_cmp->ul_value) |
 674:../asf/sam/drivers/pwm/pwm.c **** 			(p_cmp->b_is_decrementing << 24);
 675:../asf/sam/drivers/pwm/pwm.c **** 
 676:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CMP[unit].PWM_CMPM = PWM_CMPM_CTR(p_cmp->ul_trigger) |
 1154              		.loc 1 676 0
 1155 0002 0B69     		ldr	r3, [r1, #16]
 677:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
 1156              		.loc 1 677 0
 1157 0004 4C69     		ldr	r4, [r1, #20]
 671:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t unit = p_cmp->unit;
 1158              		.loc 1 671 0
 1159 0006 0A68     		ldr	r2, [r1]
 1160              	.LVL117:
 676:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
 1161              		.loc 1 676 0
 1162 0008 1B01     		lsls	r3, r3, #4
 678:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CUPR(p_cmp->ul_update_period);
 1163              		.loc 1 678 0
 1164 000a 8D69     		ldr	r5, [r1, #24]
 677:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
 1165              		.loc 1 677 0
 1166 000c 2602     		lsls	r6, r4, #8
 673:../asf/sam/drivers/pwm/pwm.c **** 			(p_cmp->b_is_decrementing << 24);
 1167              		.loc 1 673 0
 1168 000e 8C68     		ldr	r4, [r1, #8]
 1169 0010 02F11307 		add	r7, r2, #19
 674:../asf/sam/drivers/pwm/pwm.c **** 
 1170              		.loc 1 674 0
 1171 0014 91F80CE0 		ldrb	lr, [r1, #12]	@ zero_extendqisi2
 677:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CUPR(p_cmp->ul_update_period);
 1172              		.loc 1 677 0
 1173 0018 06F47066 		and	r6, r6, #3840
 676:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
 1174              		.loc 1 676 0
 1175 001c DBB2     		uxtb	r3, r3
 673:../asf/sam/drivers/pwm/pwm.c **** 			(p_cmp->b_is_decrementing << 24);
 1176              		.loc 1 673 0
 1177 001e 24F07F44 		bic	r4, r4, #-16777216
 1178              		.loc 1 678 0
 1179 0022 2D04     		lsls	r5, r5, #16
 673:../asf/sam/drivers/pwm/pwm.c **** 			(p_cmp->b_is_decrementing << 24);
 1180              		.loc 1 673 0
 1181 0024 44EA0E64 		orr	r4, r4, lr, lsl #24
 676:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
 1182              		.loc 1 676 0
 1183 0028 3343     		orrs	r3, r3, r6
 1184              		.loc 1 678 0
 1185 002a 05F47025 		and	r5, r5, #983040
 676:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
ARM GAS  /tmp/ccmSFvTJ.s 			page 36


 1186              		.loc 1 676 0
 1187 002e 1601     		lsls	r6, r2, #4
 673:../asf/sam/drivers/pwm/pwm.c **** 			(p_cmp->b_is_decrementing << 24);
 1188              		.loc 1 673 0
 1189 0030 3F01     		lsls	r7, r7, #4
 677:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CUPR(p_cmp->ul_update_period);
 1190              		.loc 1 677 0
 1191 0032 2B43     		orrs	r3, r3, r5
 676:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
 1192              		.loc 1 676 0
 1193 0034 00EB060E 		add	lr, r0, r6
 679:../asf/sam/drivers/pwm/pwm.c **** 
 680:../asf/sam/drivers/pwm/pwm.c **** 	/** Boolean of generating a match pulse */
 681:../asf/sam/drivers/pwm/pwm.c **** 	if (p_cmp->b_pulse_on_line_0) {
 1194              		.loc 1 681 0
 1195 0038 0D7F     		ldrb	r5, [r1, #28]	@ zero_extendqisi2
 673:../asf/sam/drivers/pwm/pwm.c **** 			(p_cmp->b_is_decrementing << 24);
 1196              		.loc 1 673 0
 1197 003a C451     		str	r4, [r0, r7]
 682:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_ELMR[0] |= (1 << unit);
 1198              		.loc 1 682 0
 1199 003c 0124     		movs	r4, #1
 676:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
 1200              		.loc 1 676 0
 1201 003e CEF83831 		str	r3, [lr, #312]
 1202              		.loc 1 682 0
 1203 0042 04FA02F2 		lsl	r2, r4, r2
 1204              	.LVL118:
 1205 0046 C36F     		ldr	r3, [r0, #124]
 681:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_ELMR[0] |= (1 << unit);
 1206              		.loc 1 681 0
 1207 0048 9DB1     		cbz	r5, .L86
 1208              		.loc 1 682 0
 1209 004a 1343     		orrs	r3, r3, r2
 1210 004c C367     		str	r3, [r0, #124]
 1211              	.LVL119:
 683:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 684:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_ELMR[0] &= ~((uint32_t) (1 << unit));
 685:../asf/sam/drivers/pwm/pwm.c **** 	}
 686:../asf/sam/drivers/pwm/pwm.c **** 	/** Boolean of generating a match pulse */
 687:../asf/sam/drivers/pwm/pwm.c **** 	if (p_cmp->b_pulse_on_line_1) {
 1212              		.loc 1 687 0
 1213 004e 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 1214 0050 ABB1     		cbz	r3, .L88
 1215              	.L94:
 688:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_ELMR[1] |= (1 << unit);
 1216              		.loc 1 688 0
 1217 0052 D0F88030 		ldr	r3, [r0, #128]
 1218 0056 1A43     		orrs	r2, r2, r3
 689:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 690:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_ELMR[1] &= ~((uint32_t) (1 << unit));
 691:../asf/sam/drivers/pwm/pwm.c **** 	}
 692:../asf/sam/drivers/pwm/pwm.c **** 
 693:../asf/sam/drivers/pwm/pwm.c **** 	/** Boolean of comparison enable */
 694:../asf/sam/drivers/pwm/pwm.c **** 	if (p_cmp->b_enable) {
 1219              		.loc 1 694 0
 1220 0058 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
ARM GAS  /tmp/ccmSFvTJ.s 			page 37


 688:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_ELMR[1] |= (1 << unit);
 1221              		.loc 1 688 0
 1222 005a C0F88020 		str	r2, [r0, #128]
 695:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CMP[unit].PWM_CMPM |= PWM_CMPM_CEN;
 1223              		.loc 1 695 0
 1224 005e 3044     		add	r0, r0, r6
 1225              	.LVL120:
 694:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CMP[unit].PWM_CMPM |= PWM_CMPM_CEN;
 1226              		.loc 1 694 0
 1227 0060 BBB9     		cbnz	r3, .L93
 1228              	.L90:
 696:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 697:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CMP[unit].PWM_CMPM &= ~PWM_CMPM_CEN;
 1229              		.loc 1 697 0
 1230 0062 D0F83831 		ldr	r3, [r0, #312]
 1231 0066 23F00103 		bic	r3, r3, #1
 1232 006a C0F83831 		str	r3, [r0, #312]
 698:../asf/sam/drivers/pwm/pwm.c **** 	}
 699:../asf/sam/drivers/pwm/pwm.c **** 
 700:../asf/sam/drivers/pwm/pwm.c **** 	return 0;
 701:../asf/sam/drivers/pwm/pwm.c **** }
 1233              		.loc 1 701 0
 1234 006e 0020     		movs	r0, #0
 1235 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 1236              	.LVL121:
 1237              	.L86:
 684:../asf/sam/drivers/pwm/pwm.c **** 	}
 1238              		.loc 1 684 0
 1239 0072 23EA0203 		bic	r3, r3, r2
 1240 0076 C367     		str	r3, [r0, #124]
 1241              	.LVL122:
 687:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_ELMR[1] |= (1 << unit);
 1242              		.loc 1 687 0
 1243 0078 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 1244 007a 002B     		cmp	r3, #0
 1245 007c E9D1     		bne	.L94
 1246              	.L88:
 690:../asf/sam/drivers/pwm/pwm.c **** 	}
 1247              		.loc 1 690 0
 1248 007e D0F88030 		ldr	r3, [r0, #128]
 1249 0082 23EA0202 		bic	r2, r3, r2
 694:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CMP[unit].PWM_CMPM |= PWM_CMPM_CEN;
 1250              		.loc 1 694 0
 1251 0086 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 690:../asf/sam/drivers/pwm/pwm.c **** 	}
 1252              		.loc 1 690 0
 1253 0088 C0F88020 		str	r2, [r0, #128]
 695:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 1254              		.loc 1 695 0
 1255 008c 3044     		add	r0, r0, r6
 1256              	.LVL123:
 694:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CMP[unit].PWM_CMPM |= PWM_CMPM_CEN;
 1257              		.loc 1 694 0
 1258 008e 002B     		cmp	r3, #0
 1259 0090 E7D0     		beq	.L90
 1260              	.L93:
 695:../asf/sam/drivers/pwm/pwm.c **** 	} else {
ARM GAS  /tmp/ccmSFvTJ.s 			page 38


 1261              		.loc 1 695 0
 1262 0092 D0F83831 		ldr	r3, [r0, #312]
 1263 0096 43F00103 		orr	r3, r3, #1
 1264 009a C0F83831 		str	r3, [r0, #312]
 1265              		.loc 1 701 0
 1266 009e 0020     		movs	r0, #0
 1267 00a0 F0BD     		pop	{r4, r5, r6, r7, pc}
 1268              		.cfi_endproc
 1269              	.LFE161:
 1270              		.size	pwm_cmp_init, .-pwm_cmp_init
 1271 00a2 00BF     		.section	.text.pwm_cmp_change_setting,"ax",%progbits
 1272              		.align	1
 1273              		.p2align 2,,3
 1274              		.global	pwm_cmp_change_setting
 1275              		.syntax unified
 1276              		.thumb
 1277              		.thumb_func
 1278              		.fpu fpv5-d16
 1279              		.type	pwm_cmp_change_setting, %function
 1280              	pwm_cmp_change_setting:
 1281              	.LFB162:
 702:../asf/sam/drivers/pwm/pwm.c **** 
 703:../asf/sam/drivers/pwm/pwm.c **** 
 704:../asf/sam/drivers/pwm/pwm.c **** /**
 705:../asf/sam/drivers/pwm/pwm.c ****  * \brief Change the setting of PWM comparison.
 706:../asf/sam/drivers/pwm/pwm.c ****  *
 707:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 708:../asf/sam/drivers/pwm/pwm.c ****  * \param p_cmp Configurations of PWM comparison tagged by unit.
 709:../asf/sam/drivers/pwm/pwm.c ****  *
 710:../asf/sam/drivers/pwm/pwm.c ****  * \retval 0 if changing succeeds, otherwise fails.
 711:../asf/sam/drivers/pwm/pwm.c ****  */
 712:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_cmp_change_setting(Pwm *p_pwm, pwm_cmp_t *p_cmp)
 713:../asf/sam/drivers/pwm/pwm.c **** {
 1282              		.loc 1 713 0
 1283              		.cfi_startproc
 1284              		@ args = 0, pretend = 0, frame = 0
 1285              		@ frame_needed = 0, uses_anonymous_args = 0
 1286              	.LVL124:
 714:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t unit = p_cmp->unit;
 715:../asf/sam/drivers/pwm/pwm.c **** 
 716:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CMP[unit].PWM_CMPVUPD = PWM_CMPV_CV(p_cmp->ul_value) |
 717:../asf/sam/drivers/pwm/pwm.c **** 			(p_cmp->b_is_decrementing << 24);
 718:../asf/sam/drivers/pwm/pwm.c **** 
 719:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CMP[unit].PWM_CMPMUPD = PWM_CMPM_CTR(p_cmp->ul_trigger) |
 720:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
 1287              		.loc 1 720 0
 1288 0000 4A69     		ldr	r2, [r1, #20]
 719:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
 1289              		.loc 1 719 0
 1290 0002 0B69     		ldr	r3, [r1, #16]
 713:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t unit = p_cmp->unit;
 1291              		.loc 1 713 0
 1292 0004 F0B5     		push	{r4, r5, r6, r7, lr}
 1293              		.cfi_def_cfa_offset 20
 1294              		.cfi_offset 4, -20
 1295              		.cfi_offset 5, -16
 1296              		.cfi_offset 6, -12
ARM GAS  /tmp/ccmSFvTJ.s 			page 39


 1297              		.cfi_offset 7, -8
 1298              		.cfi_offset 14, -4
 719:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
 1299              		.loc 1 719 0
 1300 0006 1B01     		lsls	r3, r3, #4
 721:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CUPR(p_cmp->ul_update_period);
 1301              		.loc 1 721 0
 1302 0008 8D69     		ldr	r5, [r1, #24]
 720:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CUPR(p_cmp->ul_update_period);
 1303              		.loc 1 720 0
 1304 000a 1602     		lsls	r6, r2, #8
 716:../asf/sam/drivers/pwm/pwm.c **** 			(p_cmp->b_is_decrementing << 24);
 1305              		.loc 1 716 0
 1306 000c 8C68     		ldr	r4, [r1, #8]
 714:../asf/sam/drivers/pwm/pwm.c **** 
 1307              		.loc 1 714 0
 1308 000e 0A68     		ldr	r2, [r1]
 1309              	.LVL125:
 719:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
 1310              		.loc 1 719 0
 1311 0010 DBB2     		uxtb	r3, r3
 720:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CUPR(p_cmp->ul_update_period);
 1312              		.loc 1 720 0
 1313 0012 06F47066 		and	r6, r6, #3840
 1314              		.loc 1 721 0
 1315 0016 2D04     		lsls	r5, r5, #16
 717:../asf/sam/drivers/pwm/pwm.c **** 
 1316              		.loc 1 717 0
 1317 0018 91F80CE0 		ldrb	lr, [r1, #12]	@ zero_extendqisi2
 716:../asf/sam/drivers/pwm/pwm.c **** 			(p_cmp->b_is_decrementing << 24);
 1318              		.loc 1 716 0
 1319 001c 02F11307 		add	r7, r2, #19
 719:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
 1320              		.loc 1 719 0
 1321 0020 3343     		orrs	r3, r3, r6
 1322              		.loc 1 721 0
 1323 0022 05F47025 		and	r5, r5, #983040
 716:../asf/sam/drivers/pwm/pwm.c **** 			(p_cmp->b_is_decrementing << 24);
 1324              		.loc 1 716 0
 1325 0026 24F07F44 		bic	r4, r4, #-16777216
 719:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
 1326              		.loc 1 719 0
 1327 002a 1601     		lsls	r6, r2, #4
 720:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CUPR(p_cmp->ul_update_period);
 1328              		.loc 1 720 0
 1329 002c 2B43     		orrs	r3, r3, r5
 716:../asf/sam/drivers/pwm/pwm.c **** 			(p_cmp->b_is_decrementing << 24);
 1330              		.loc 1 716 0
 1331 002e 00EB0715 		add	r5, r0, r7, lsl #4
 1332 0032 44EA0E64 		orr	r4, r4, lr, lsl #24
 722:../asf/sam/drivers/pwm/pwm.c **** 
 723:../asf/sam/drivers/pwm/pwm.c **** 	/** Boolean of generating a match pulse */
 724:../asf/sam/drivers/pwm/pwm.c **** 	if (p_cmp->b_pulse_on_line_0) {
 1333              		.loc 1 724 0
 1334 0036 0F7F     		ldrb	r7, [r1, #28]	@ zero_extendqisi2
 719:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
 1335              		.loc 1 719 0
ARM GAS  /tmp/ccmSFvTJ.s 			page 40


 1336 0038 00EB060E 		add	lr, r0, r6
 716:../asf/sam/drivers/pwm/pwm.c **** 			(p_cmp->b_is_decrementing << 24);
 1337              		.loc 1 716 0
 1338 003c 6C60     		str	r4, [r5, #4]
 725:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_ELMR[0] |= (1 << unit);
 1339              		.loc 1 725 0
 1340 003e 0124     		movs	r4, #1
 719:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CMPM_CPR(p_cmp->ul_period) |
 1341              		.loc 1 719 0
 1342 0040 CEF83C31 		str	r3, [lr, #316]
 1343              		.loc 1 725 0
 1344 0044 04FA02F2 		lsl	r2, r4, r2
 1345              	.LVL126:
 1346 0048 C36F     		ldr	r3, [r0, #124]
 724:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_ELMR[0] |= (1 << unit);
 1347              		.loc 1 724 0
 1348 004a 9FB1     		cbz	r7, .L96
 1349              		.loc 1 725 0
 1350 004c 1343     		orrs	r3, r3, r2
 1351 004e C367     		str	r3, [r0, #124]
 1352              	.LVL127:
 726:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 727:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_ELMR[0] &= ~((uint32_t) (1 << unit));
 728:../asf/sam/drivers/pwm/pwm.c **** 	}
 729:../asf/sam/drivers/pwm/pwm.c **** 	/** Boolean of generating a match pulse */
 730:../asf/sam/drivers/pwm/pwm.c **** 	if (p_cmp->b_pulse_on_line_1) {
 1353              		.loc 1 730 0
 1354 0050 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 1355 0052 ABB1     		cbz	r3, .L98
 1356              	.L104:
 731:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_ELMR[1] |= (1 << unit);
 1357              		.loc 1 731 0
 1358 0054 D0F88030 		ldr	r3, [r0, #128]
 1359 0058 1A43     		orrs	r2, r2, r3
 732:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 733:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_ELMR[1] &= ~((uint32_t) (1 << unit));
 734:../asf/sam/drivers/pwm/pwm.c **** 	}
 735:../asf/sam/drivers/pwm/pwm.c **** 
 736:../asf/sam/drivers/pwm/pwm.c **** 	/** Boolean of comparison enable */
 737:../asf/sam/drivers/pwm/pwm.c **** 	if (p_cmp->b_enable) {
 1360              		.loc 1 737 0
 1361 005a 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 731:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_ELMR[1] |= (1 << unit);
 1362              		.loc 1 731 0
 1363 005c C0F88020 		str	r2, [r0, #128]
 738:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CMP[unit].PWM_CMPMUPD |= PWM_CMPM_CEN;
 1364              		.loc 1 738 0
 1365 0060 3044     		add	r0, r0, r6
 1366              	.LVL128:
 737:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CMP[unit].PWM_CMPMUPD |= PWM_CMPM_CEN;
 1367              		.loc 1 737 0
 1368 0062 BBB9     		cbnz	r3, .L103
 1369              	.L100:
 739:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 740:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CMP[unit].PWM_CMPMUPD &= ~PWM_CMPM_CEN;
 1370              		.loc 1 740 0
 1371 0064 D0F83C31 		ldr	r3, [r0, #316]
ARM GAS  /tmp/ccmSFvTJ.s 			page 41


 1372 0068 23F00103 		bic	r3, r3, #1
 1373 006c C0F83C31 		str	r3, [r0, #316]
 741:../asf/sam/drivers/pwm/pwm.c **** 	}
 742:../asf/sam/drivers/pwm/pwm.c **** 
 743:../asf/sam/drivers/pwm/pwm.c **** 	return 0;
 744:../asf/sam/drivers/pwm/pwm.c **** }
 1374              		.loc 1 744 0
 1375 0070 0020     		movs	r0, #0
 1376 0072 F0BD     		pop	{r4, r5, r6, r7, pc}
 1377              	.LVL129:
 1378              	.L96:
 727:../asf/sam/drivers/pwm/pwm.c **** 	}
 1379              		.loc 1 727 0
 1380 0074 23EA0203 		bic	r3, r3, r2
 1381 0078 C367     		str	r3, [r0, #124]
 1382              	.LVL130:
 730:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_ELMR[1] |= (1 << unit);
 1383              		.loc 1 730 0
 1384 007a 4B7F     		ldrb	r3, [r1, #29]	@ zero_extendqisi2
 1385 007c 002B     		cmp	r3, #0
 1386 007e E9D1     		bne	.L104
 1387              	.L98:
 733:../asf/sam/drivers/pwm/pwm.c **** 	}
 1388              		.loc 1 733 0
 1389 0080 D0F88030 		ldr	r3, [r0, #128]
 1390 0084 23EA0202 		bic	r2, r3, r2
 737:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CMP[unit].PWM_CMPMUPD |= PWM_CMPM_CEN;
 1391              		.loc 1 737 0
 1392 0088 0B79     		ldrb	r3, [r1, #4]	@ zero_extendqisi2
 733:../asf/sam/drivers/pwm/pwm.c **** 	}
 1393              		.loc 1 733 0
 1394 008a C0F88020 		str	r2, [r0, #128]
 738:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 1395              		.loc 1 738 0
 1396 008e 3044     		add	r0, r0, r6
 1397              	.LVL131:
 737:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CMP[unit].PWM_CMPMUPD |= PWM_CMPM_CEN;
 1398              		.loc 1 737 0
 1399 0090 002B     		cmp	r3, #0
 1400 0092 E7D0     		beq	.L100
 1401              	.L103:
 738:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 1402              		.loc 1 738 0
 1403 0094 D0F83C31 		ldr	r3, [r0, #316]
 1404 0098 43F00103 		orr	r3, r3, #1
 1405 009c C0F83C31 		str	r3, [r0, #316]
 1406              		.loc 1 744 0
 1407 00a0 0020     		movs	r0, #0
 1408 00a2 F0BD     		pop	{r4, r5, r6, r7, pc}
 1409              		.cfi_endproc
 1410              	.LFE162:
 1411              		.size	pwm_cmp_change_setting, .-pwm_cmp_change_setting
 1412              		.section	.text.pwm_cmp_get_period_counter,"ax",%progbits
 1413              		.align	1
 1414              		.p2align 2,,3
 1415              		.global	pwm_cmp_get_period_counter
 1416              		.syntax unified
ARM GAS  /tmp/ccmSFvTJ.s 			page 42


 1417              		.thumb
 1418              		.thumb_func
 1419              		.fpu fpv5-d16
 1420              		.type	pwm_cmp_get_period_counter, %function
 1421              	pwm_cmp_get_period_counter:
 1422              	.LFB184:
 1423              		.cfi_startproc
 1424              		@ args = 0, pretend = 0, frame = 0
 1425              		@ frame_needed = 0, uses_anonymous_args = 0
 1426              		@ link register save eliminated.
 1427 0000 00EB0111 		add	r1, r0, r1, lsl #4
 1428 0004 D1F83801 		ldr	r0, [r1, #312]
 1429 0008 00F00F00 		and	r0, r0, #15
 1430 000c 7047     		bx	lr
 1431              		.cfi_endproc
 1432              	.LFE184:
 1433              		.size	pwm_cmp_get_period_counter, .-pwm_cmp_get_period_counter
 1434 000e 00BF     		.section	.text.pwm_cmp_get_update_counter,"ax",%progbits
 1435              		.align	1
 1436              		.p2align 2,,3
 1437              		.global	pwm_cmp_get_update_counter
 1438              		.syntax unified
 1439              		.thumb
 1440              		.thumb_func
 1441              		.fpu fpv5-d16
 1442              		.type	pwm_cmp_get_update_counter, %function
 1443              	pwm_cmp_get_update_counter:
 1444              	.LFB164:
 745:../asf/sam/drivers/pwm/pwm.c **** 
 746:../asf/sam/drivers/pwm/pwm.c **** 
 747:../asf/sam/drivers/pwm/pwm.c **** /**
 748:../asf/sam/drivers/pwm/pwm.c ****  * \brief Report the value of the comparison period counter.
 749:../asf/sam/drivers/pwm/pwm.c ****  *
 750:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm	Pointer to a PWM instance.
 751:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_cmp_unit PWM comparison unit number.
 752:../asf/sam/drivers/pwm/pwm.c ****  *
 753:../asf/sam/drivers/pwm/pwm.c ****  * \return Value of the comparison period counter.
 754:../asf/sam/drivers/pwm/pwm.c ****  */
 755:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_cmp_get_period_counter(Pwm *p_pwm, uint32_t ul_cmp_unit)
 756:../asf/sam/drivers/pwm/pwm.c **** {
 757:../asf/sam/drivers/pwm/pwm.c **** 	return (PWM_CMPM_CPRCNT(p_pwm->PWM_CMP[ul_cmp_unit].PWM_CMPM)
 758:../asf/sam/drivers/pwm/pwm.c **** 			>> PWM_CMPM_CPRCNT_Pos);
 759:../asf/sam/drivers/pwm/pwm.c **** }
 760:../asf/sam/drivers/pwm/pwm.c **** 
 761:../asf/sam/drivers/pwm/pwm.c **** /**
 762:../asf/sam/drivers/pwm/pwm.c ****  * \brief Report the value of the comparison update period counter.
 763:../asf/sam/drivers/pwm/pwm.c ****  *
 764:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 765:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_cmp_unit PWM comparison unit number.
 766:../asf/sam/drivers/pwm/pwm.c ****  *
 767:../asf/sam/drivers/pwm/pwm.c ****  * \return Value of the comparison update period counter.
 768:../asf/sam/drivers/pwm/pwm.c ****  */
 769:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_cmp_get_update_counter(Pwm *p_pwm, uint32_t ul_cmp_unit)
 770:../asf/sam/drivers/pwm/pwm.c **** {
 1445              		.loc 1 770 0
 1446              		.cfi_startproc
 1447              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccmSFvTJ.s 			page 43


 1448              		@ frame_needed = 0, uses_anonymous_args = 0
 1449              		@ link register save eliminated.
 1450              	.LVL132:
 771:../asf/sam/drivers/pwm/pwm.c **** 	return (PWM_CMPM_CUPRCNT(p_pwm->PWM_CMP[ul_cmp_unit].PWM_CMPM)
 1451              		.loc 1 771 0
 1452 0000 00EB0111 		add	r1, r0, r1, lsl #4
 1453              	.LVL133:
 1454 0004 D1F83801 		ldr	r0, [r1, #312]
 1455              	.LVL134:
 772:../asf/sam/drivers/pwm/pwm.c **** 			>> PWM_CMPM_CUPRCNT_Pos);
 773:../asf/sam/drivers/pwm/pwm.c **** }
 1456              		.loc 1 773 0
 1457 0008 00F00F00 		and	r0, r0, #15
 1458 000c 7047     		bx	lr
 1459              		.cfi_endproc
 1460              	.LFE164:
 1461              		.size	pwm_cmp_get_update_counter, .-pwm_cmp_get_update_counter
 1462 000e 00BF     		.section	.text.pwm_cmp_enable_interrupt,"ax",%progbits
 1463              		.align	1
 1464              		.p2align 2,,3
 1465              		.global	pwm_cmp_enable_interrupt
 1466              		.syntax unified
 1467              		.thumb
 1468              		.thumb_func
 1469              		.fpu fpv5-d16
 1470              		.type	pwm_cmp_enable_interrupt, %function
 1471              	pwm_cmp_enable_interrupt:
 1472              	.LFB165:
 774:../asf/sam/drivers/pwm/pwm.c **** 
 775:../asf/sam/drivers/pwm/pwm.c **** 
 776:../asf/sam/drivers/pwm/pwm.c **** /**
 777:../asf/sam/drivers/pwm/pwm.c ****  * \brief Enable the interrupt of comparison.
 778:../asf/sam/drivers/pwm/pwm.c ****  *
 779:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 780:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_sources Bitmask of comparison unit.
 781:../asf/sam/drivers/pwm/pwm.c ****  * \param type PWM_CMP_MATCH enables the match interrupt of the unit. PWM_CMP_UPDATE enables the up
 782:../asf/sam/drivers/pwm/pwm.c ****  */
 783:../asf/sam/drivers/pwm/pwm.c **** void pwm_cmp_enable_interrupt(Pwm *p_pwm, uint32_t ul_sources,
 784:../asf/sam/drivers/pwm/pwm.c **** 		pwm_cmp_interrupt_t type)
 785:../asf/sam/drivers/pwm/pwm.c **** {
 1473              		.loc 1 785 0
 1474              		.cfi_startproc
 1475              		@ args = 0, pretend = 0, frame = 0
 1476              		@ frame_needed = 0, uses_anonymous_args = 0
 1477              		@ link register save eliminated.
 1478              	.LVL135:
 786:../asf/sam/drivers/pwm/pwm.c **** 	if (type == PWM_CMP_MATCH) {
 1479              		.loc 1 786 0
 1480 0000 082A     		cmp	r2, #8
 1481 0002 08D0     		beq	.L110
 787:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_IER2 = ((1 << ul_sources) << 8);
 788:../asf/sam/drivers/pwm/pwm.c **** 	} else if (type == PWM_CMP_UPDATE) {
 1482              		.loc 1 788 0
 1483 0004 102A     		cmp	r2, #16
 1484 0006 00D0     		beq	.L111
 1485 0008 7047     		bx	lr
 1486              	.L111:
ARM GAS  /tmp/ccmSFvTJ.s 			page 44


 789:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_IER2 = ((1 << ul_sources) << 16);
 1487              		.loc 1 789 0
 1488 000a 4FF48033 		mov	r3, #65536
 1489 000e 03FA01F1 		lsl	r1, r3, r1
 1490              	.LVL136:
 1491 0012 4163     		str	r1, [r0, #52]
 1492 0014 7047     		bx	lr
 1493              	.LVL137:
 1494              	.L110:
 787:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_IER2 = ((1 << ul_sources) << 8);
 1495              		.loc 1 787 0
 1496 0016 4FF48073 		mov	r3, #256
 1497 001a 03FA01F1 		lsl	r1, r3, r1
 1498              	.LVL138:
 1499 001e 4163     		str	r1, [r0, #52]
 1500 0020 7047     		bx	lr
 1501              		.cfi_endproc
 1502              	.LFE165:
 1503              		.size	pwm_cmp_enable_interrupt, .-pwm_cmp_enable_interrupt
 1504 0022 00BF     		.section	.text.pwm_cmp_disable_interrupt,"ax",%progbits
 1505              		.align	1
 1506              		.p2align 2,,3
 1507              		.global	pwm_cmp_disable_interrupt
 1508              		.syntax unified
 1509              		.thumb
 1510              		.thumb_func
 1511              		.fpu fpv5-d16
 1512              		.type	pwm_cmp_disable_interrupt, %function
 1513              	pwm_cmp_disable_interrupt:
 1514              	.LFB166:
 790:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 791:../asf/sam/drivers/pwm/pwm.c **** 		/* Do Nothing */
 792:../asf/sam/drivers/pwm/pwm.c **** 	}
 793:../asf/sam/drivers/pwm/pwm.c **** }
 794:../asf/sam/drivers/pwm/pwm.c **** 
 795:../asf/sam/drivers/pwm/pwm.c **** 
 796:../asf/sam/drivers/pwm/pwm.c **** /**
 797:../asf/sam/drivers/pwm/pwm.c ****  * \brief Disable the interrupt of comparison.
 798:../asf/sam/drivers/pwm/pwm.c ****  *
 799:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 800:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_sources Bitmask of comparison unit.
 801:../asf/sam/drivers/pwm/pwm.c ****  * \param type PWM_CMP_MATCH disables the match interrupt of the unit. PWM_CMP_UPDATE disables the 
 802:../asf/sam/drivers/pwm/pwm.c ****  */
 803:../asf/sam/drivers/pwm/pwm.c **** void pwm_cmp_disable_interrupt(Pwm *p_pwm, uint32_t ul_sources,
 804:../asf/sam/drivers/pwm/pwm.c **** 		pwm_cmp_interrupt_t type)
 805:../asf/sam/drivers/pwm/pwm.c **** {
 1515              		.loc 1 805 0
 1516              		.cfi_startproc
 1517              		@ args = 0, pretend = 0, frame = 0
 1518              		@ frame_needed = 0, uses_anonymous_args = 0
 1519              		@ link register save eliminated.
 1520              	.LVL139:
 806:../asf/sam/drivers/pwm/pwm.c **** 	if (type == PWM_CMP_MATCH) {
 1521              		.loc 1 806 0
 1522 0000 082A     		cmp	r2, #8
 1523 0002 08D0     		beq	.L115
 807:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_IDR2 = ((1 << ul_sources) << 8);
ARM GAS  /tmp/ccmSFvTJ.s 			page 45


 808:../asf/sam/drivers/pwm/pwm.c **** 	} else if (type == PWM_CMP_UPDATE) {
 1524              		.loc 1 808 0
 1525 0004 102A     		cmp	r2, #16
 1526 0006 00D0     		beq	.L116
 1527 0008 7047     		bx	lr
 1528              	.L116:
 809:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_IDR2 = ((1 << ul_sources) << 16);
 1529              		.loc 1 809 0
 1530 000a 4FF48033 		mov	r3, #65536
 1531 000e 03FA01F1 		lsl	r1, r3, r1
 1532              	.LVL140:
 1533 0012 8163     		str	r1, [r0, #56]
 1534 0014 7047     		bx	lr
 1535              	.LVL141:
 1536              	.L115:
 807:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_IDR2 = ((1 << ul_sources) << 8);
 1537              		.loc 1 807 0
 1538 0016 4FF48073 		mov	r3, #256
 1539 001a 03FA01F1 		lsl	r1, r3, r1
 1540              	.LVL142:
 1541 001e 8163     		str	r1, [r0, #56]
 1542 0020 7047     		bx	lr
 1543              		.cfi_endproc
 1544              	.LFE166:
 1545              		.size	pwm_cmp_disable_interrupt, .-pwm_cmp_disable_interrupt
 1546 0022 00BF     		.section	.text.pwm_sync_init,"ax",%progbits
 1547              		.align	1
 1548              		.p2align 2,,3
 1549              		.global	pwm_sync_init
 1550              		.syntax unified
 1551              		.thumb
 1552              		.thumb_func
 1553              		.fpu fpv5-d16
 1554              		.type	pwm_sync_init, %function
 1555              	pwm_sync_init:
 1556              	.LFB167:
 810:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 811:../asf/sam/drivers/pwm/pwm.c **** 		/* Do Nothing */
 812:../asf/sam/drivers/pwm/pwm.c **** 	}
 813:../asf/sam/drivers/pwm/pwm.c **** }
 814:../asf/sam/drivers/pwm/pwm.c **** 
 815:../asf/sam/drivers/pwm/pwm.c **** #if !(SAMV70 || SAMV71 || SAME70 || SAMS70)
 816:../asf/sam/drivers/pwm/pwm.c **** /**
 817:../asf/sam/drivers/pwm/pwm.c ****  * \brief Set PDC transfer request mode.
 818:../asf/sam/drivers/pwm/pwm.c ****  *
 819:../asf/sam/drivers/pwm/pwm.c ****  * \note If configure Synchronous channels update mode as 'PWM_SYNC_UPDATE_MODE_0' or 'PWM_SYNC_UPD
 820:../asf/sam/drivers/pwm/pwm.c ****  *
 821:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 822:../asf/sam/drivers/pwm/pwm.c ****  * \param request_mode PDC transfer request mode.
 823:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_cmp_unit PWM comparison unit number for PDC transfer request.
 824:../asf/sam/drivers/pwm/pwm.c ****  */
 825:../asf/sam/drivers/pwm/pwm.c **** void pwm_pdc_set_request_mode(Pwm *p_pwm, pwm_pdc_request_mode_t request_mode,
 826:../asf/sam/drivers/pwm/pwm.c **** 		uint32_t ul_cmp_unit)
 827:../asf/sam/drivers/pwm/pwm.c **** {
 828:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t sync_mode = p_pwm->PWM_SCM;
 829:../asf/sam/drivers/pwm/pwm.c **** 
 830:../asf/sam/drivers/pwm/pwm.c **** 	sync_mode &= ~(PWM_SCM_PTRCS_Msk | PWM_SCM_PTRM);
ARM GAS  /tmp/ccmSFvTJ.s 			page 46


 831:../asf/sam/drivers/pwm/pwm.c **** 	sync_mode |= (PWM_SCM_PTRCS(ul_cmp_unit) | request_mode);
 832:../asf/sam/drivers/pwm/pwm.c **** 
 833:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_SCM = sync_mode;
 834:../asf/sam/drivers/pwm/pwm.c **** }
 835:../asf/sam/drivers/pwm/pwm.c **** 
 836:../asf/sam/drivers/pwm/pwm.c **** 
 837:../asf/sam/drivers/pwm/pwm.c **** 
 838:../asf/sam/drivers/pwm/pwm.c **** /**
 839:../asf/sam/drivers/pwm/pwm.c ****  * \brief Enable the interrupt of PDC transfer.
 840:../asf/sam/drivers/pwm/pwm.c ****  *
 841:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 842:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_sources Bitmask of PWM PDC transfer interrupt sources.
 843:../asf/sam/drivers/pwm/pwm.c ****  */
 844:../asf/sam/drivers/pwm/pwm.c **** void pwm_pdc_enable_interrupt(Pwm *p_pwm, uint32_t ul_sources)
 845:../asf/sam/drivers/pwm/pwm.c **** {
 846:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_IER2 = ul_sources;
 847:../asf/sam/drivers/pwm/pwm.c **** }
 848:../asf/sam/drivers/pwm/pwm.c **** 
 849:../asf/sam/drivers/pwm/pwm.c **** /**
 850:../asf/sam/drivers/pwm/pwm.c ****  * \brief Disable the interrupt of PDC transfer.
 851:../asf/sam/drivers/pwm/pwm.c ****  *
 852:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 853:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_sources Bitmask of PWM PDC transfer interrupt sources.
 854:../asf/sam/drivers/pwm/pwm.c ****  */
 855:../asf/sam/drivers/pwm/pwm.c **** void pwm_pdc_disable_interrupt(Pwm *p_pwm, uint32_t ul_sources)
 856:../asf/sam/drivers/pwm/pwm.c **** {
 857:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_IDR2 = ul_sources;
 858:../asf/sam/drivers/pwm/pwm.c **** }
 859:../asf/sam/drivers/pwm/pwm.c **** #endif
 860:../asf/sam/drivers/pwm/pwm.c **** 
 861:../asf/sam/drivers/pwm/pwm.c **** /**
 862:../asf/sam/drivers/pwm/pwm.c ****  * \brief Initialize synchronous channels update mode and period.
 863:../asf/sam/drivers/pwm/pwm.c ****  *
 864:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 865:../asf/sam/drivers/pwm/pwm.c ****  * \param mode Synchronous channels update mode.
 866:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_update_period Time between each update of the synchronous channels.
 867:../asf/sam/drivers/pwm/pwm.c ****  *
 868:../asf/sam/drivers/pwm/pwm.c ****  * \retval 0 if initialization succeeds, otherwise fails.
 869:../asf/sam/drivers/pwm/pwm.c ****  */
 870:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_sync_init(Pwm *p_pwm, pwm_sync_update_mode_t mode,
 871:../asf/sam/drivers/pwm/pwm.c **** 		uint32_t ul_update_period)
 872:../asf/sam/drivers/pwm/pwm.c **** {
 1557              		.loc 1 872 0
 1558              		.cfi_startproc
 1559              		@ args = 0, pretend = 0, frame = 0
 1560              		@ frame_needed = 0, uses_anonymous_args = 0
 1561              		@ link register save eliminated.
 1562              	.LVL143:
 1563 0000 10B4     		push	{r4}
 1564              		.cfi_def_cfa_offset 4
 1565              		.cfi_offset 4, -4
 1566              		.loc 1 872 0
 1567 0002 0446     		mov	r4, r0
 873:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t sync_mode = p_pwm->PWM_SCM;
 874:../asf/sam/drivers/pwm/pwm.c **** 
 875:../asf/sam/drivers/pwm/pwm.c **** 	sync_mode &= ~PWM_SCM_UPDM_Msk;
 876:../asf/sam/drivers/pwm/pwm.c **** 	sync_mode |= mode;
ARM GAS  /tmp/ccmSFvTJ.s 			page 47


 877:../asf/sam/drivers/pwm/pwm.c **** 
 878:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_SCM = sync_mode;
 879:../asf/sam/drivers/pwm/pwm.c **** 
 880:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_SCUP = PWM_SCUP_UPR(ul_update_period);
 1568              		.loc 1 880 0
 1569 0004 02F00F02 		and	r2, r2, #15
 1570              	.LVL144:
 881:../asf/sam/drivers/pwm/pwm.c **** 
 882:../asf/sam/drivers/pwm/pwm.c **** 	return 0;
 883:../asf/sam/drivers/pwm/pwm.c **** }
 1571              		.loc 1 883 0
 1572 0008 0020     		movs	r0, #0
 1573              	.LVL145:
 873:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t sync_mode = p_pwm->PWM_SCM;
 1574              		.loc 1 873 0
 1575 000a 236A     		ldr	r3, [r4, #32]
 1576              	.LVL146:
 875:../asf/sam/drivers/pwm/pwm.c **** 	sync_mode |= mode;
 1577              		.loc 1 875 0
 1578 000c 23F44033 		bic	r3, r3, #196608
 1579              	.LVL147:
 876:../asf/sam/drivers/pwm/pwm.c **** 
 1580              		.loc 1 876 0
 1581 0010 1943     		orrs	r1, r1, r3
 1582              	.LVL148:
 878:../asf/sam/drivers/pwm/pwm.c **** 
 1583              		.loc 1 878 0
 1584 0012 2162     		str	r1, [r4, #32]
 880:../asf/sam/drivers/pwm/pwm.c **** 
 1585              		.loc 1 880 0
 1586 0014 E262     		str	r2, [r4, #44]
 1587              		.loc 1 883 0
 1588 0016 5DF8044B 		ldr	r4, [sp], #4
 1589              		.cfi_restore 4
 1590              		.cfi_def_cfa_offset 0
 1591              	.LVL149:
 1592 001a 7047     		bx	lr
 1593              		.cfi_endproc
 1594              	.LFE167:
 1595              		.size	pwm_sync_init, .-pwm_sync_init
 1596              		.section	.text.pwm_sync_unlock_update,"ax",%progbits
 1597              		.align	1
 1598              		.p2align 2,,3
 1599              		.global	pwm_sync_unlock_update
 1600              		.syntax unified
 1601              		.thumb
 1602              		.thumb_func
 1603              		.fpu fpv5-d16
 1604              		.type	pwm_sync_unlock_update, %function
 1605              	pwm_sync_unlock_update:
 1606              	.LFB168:
 884:../asf/sam/drivers/pwm/pwm.c **** 
 885:../asf/sam/drivers/pwm/pwm.c **** /**
 886:../asf/sam/drivers/pwm/pwm.c ****  * \brief Unlock the update of synchronous channels.
 887:../asf/sam/drivers/pwm/pwm.c ****  *
 888:../asf/sam/drivers/pwm/pwm.c ****  * \note After unlock, synchronous channels will be updated at the next PWM period.
 889:../asf/sam/drivers/pwm/pwm.c ****  *
ARM GAS  /tmp/ccmSFvTJ.s 			page 48


 890:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 891:../asf/sam/drivers/pwm/pwm.c ****  */
 892:../asf/sam/drivers/pwm/pwm.c **** void pwm_sync_unlock_update(Pwm *p_pwm)
 893:../asf/sam/drivers/pwm/pwm.c **** {
 1607              		.loc 1 893 0
 1608              		.cfi_startproc
 1609              		@ args = 0, pretend = 0, frame = 0
 1610              		@ frame_needed = 0, uses_anonymous_args = 0
 1611              		@ link register save eliminated.
 1612              	.LVL150:
 894:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_SCUC = PWM_SCUC_UPDULOCK;
 1613              		.loc 1 894 0
 1614 0000 0123     		movs	r3, #1
 1615 0002 8362     		str	r3, [r0, #40]
 1616 0004 7047     		bx	lr
 1617              		.cfi_endproc
 1618              	.LFE168:
 1619              		.size	pwm_sync_unlock_update, .-pwm_sync_unlock_update
 1620 0006 00BF     		.section	.text.pwm_sync_change_period,"ax",%progbits
 1621              		.align	1
 1622              		.p2align 2,,3
 1623              		.global	pwm_sync_change_period
 1624              		.syntax unified
 1625              		.thumb
 1626              		.thumb_func
 1627              		.fpu fpv5-d16
 1628              		.type	pwm_sync_change_period, %function
 1629              	pwm_sync_change_period:
 1630              	.LFB169:
 895:../asf/sam/drivers/pwm/pwm.c **** }
 896:../asf/sam/drivers/pwm/pwm.c **** 
 897:../asf/sam/drivers/pwm/pwm.c **** /**
 898:../asf/sam/drivers/pwm/pwm.c ****  * \brief Change the wanted time between each update of the synchronous channels.
 899:../asf/sam/drivers/pwm/pwm.c ****  *
 900:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 901:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_update_period Time between each update of the synchronous channels.
 902:../asf/sam/drivers/pwm/pwm.c ****  */
 903:../asf/sam/drivers/pwm/pwm.c **** void pwm_sync_change_period(Pwm *p_pwm, uint32_t ul_update_period)
 904:../asf/sam/drivers/pwm/pwm.c **** {
 1631              		.loc 1 904 0
 1632              		.cfi_startproc
 1633              		@ args = 0, pretend = 0, frame = 0
 1634              		@ frame_needed = 0, uses_anonymous_args = 0
 1635              		@ link register save eliminated.
 1636              	.LVL151:
 905:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_SCUPUPD = PWM_SCUPUPD_UPRUPD(ul_update_period);
 1637              		.loc 1 905 0
 1638 0000 01F00F01 		and	r1, r1, #15
 1639              	.LVL152:
 1640 0004 0163     		str	r1, [r0, #48]
 1641 0006 7047     		bx	lr
 1642              		.cfi_endproc
 1643              	.LFE169:
 1644              		.size	pwm_sync_change_period, .-pwm_sync_change_period
 1645              		.section	.text.pwm_sync_get_period_counter,"ax",%progbits
 1646              		.align	1
 1647              		.p2align 2,,3
ARM GAS  /tmp/ccmSFvTJ.s 			page 49


 1648              		.global	pwm_sync_get_period_counter
 1649              		.syntax unified
 1650              		.thumb
 1651              		.thumb_func
 1652              		.fpu fpv5-d16
 1653              		.type	pwm_sync_get_period_counter, %function
 1654              	pwm_sync_get_period_counter:
 1655              	.LFB170:
 906:../asf/sam/drivers/pwm/pwm.c **** }
 907:../asf/sam/drivers/pwm/pwm.c **** 
 908:../asf/sam/drivers/pwm/pwm.c **** /**
 909:../asf/sam/drivers/pwm/pwm.c ****  * \brief Get the value of the synchronization update period counter.
 910:../asf/sam/drivers/pwm/pwm.c ****  *
 911:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 912:../asf/sam/drivers/pwm/pwm.c ****  *
 913:../asf/sam/drivers/pwm/pwm.c ****  * \return Value of the synchronization update Period Counter.
 914:../asf/sam/drivers/pwm/pwm.c ****  */
 915:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_sync_get_period_counter(Pwm *p_pwm)
 916:../asf/sam/drivers/pwm/pwm.c **** {
 1656              		.loc 1 916 0
 1657              		.cfi_startproc
 1658              		@ args = 0, pretend = 0, frame = 0
 1659              		@ frame_needed = 0, uses_anonymous_args = 0
 1660              		@ link register save eliminated.
 1661              	.LVL153:
 917:../asf/sam/drivers/pwm/pwm.c **** 	return PWM_SCUP_UPRCNT(p_pwm->PWM_SCUP);
 1662              		.loc 1 917 0
 1663 0000 C06A     		ldr	r0, [r0, #44]
 1664              	.LVL154:
 1665 0002 0001     		lsls	r0, r0, #4
 918:../asf/sam/drivers/pwm/pwm.c **** }
 1666              		.loc 1 918 0
 1667 0004 00F0F000 		and	r0, r0, #240
 1668 0008 7047     		bx	lr
 1669              		.cfi_endproc
 1670              	.LFE170:
 1671              		.size	pwm_sync_get_period_counter, .-pwm_sync_get_period_counter
 1672 000a 00BF     		.section	.text.pwm_sync_enable_interrupt,"ax",%progbits
 1673              		.align	1
 1674              		.p2align 2,,3
 1675              		.global	pwm_sync_enable_interrupt
 1676              		.syntax unified
 1677              		.thumb
 1678              		.thumb_func
 1679              		.fpu fpv5-d16
 1680              		.type	pwm_sync_enable_interrupt, %function
 1681              	pwm_sync_enable_interrupt:
 1682              	.LFB171:
 919:../asf/sam/drivers/pwm/pwm.c **** 
 920:../asf/sam/drivers/pwm/pwm.c **** /**
 921:../asf/sam/drivers/pwm/pwm.c ****  * \brief Enable the interrupt of synchronous channel.
 922:../asf/sam/drivers/pwm/pwm.c ****  *
 923:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 924:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_sources Bitmask of PWM synchronous channels interrupt sources.
 925:../asf/sam/drivers/pwm/pwm.c ****  */
 926:../asf/sam/drivers/pwm/pwm.c **** void pwm_sync_enable_interrupt(Pwm *p_pwm, uint32_t ul_sources)
 927:../asf/sam/drivers/pwm/pwm.c **** {
ARM GAS  /tmp/ccmSFvTJ.s 			page 50


 1683              		.loc 1 927 0
 1684              		.cfi_startproc
 1685              		@ args = 0, pretend = 0, frame = 0
 1686              		@ frame_needed = 0, uses_anonymous_args = 0
 1687              		@ link register save eliminated.
 1688              	.LVL155:
 928:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_IER2 = ul_sources;
 1689              		.loc 1 928 0
 1690 0000 4163     		str	r1, [r0, #52]
 1691 0002 7047     		bx	lr
 1692              		.cfi_endproc
 1693              	.LFE171:
 1694              		.size	pwm_sync_enable_interrupt, .-pwm_sync_enable_interrupt
 1695              		.section	.text.pwm_sync_disable_interrupt,"ax",%progbits
 1696              		.align	1
 1697              		.p2align 2,,3
 1698              		.global	pwm_sync_disable_interrupt
 1699              		.syntax unified
 1700              		.thumb
 1701              		.thumb_func
 1702              		.fpu fpv5-d16
 1703              		.type	pwm_sync_disable_interrupt, %function
 1704              	pwm_sync_disable_interrupt:
 1705              	.LFB172:
 929:../asf/sam/drivers/pwm/pwm.c **** }
 930:../asf/sam/drivers/pwm/pwm.c **** 
 931:../asf/sam/drivers/pwm/pwm.c **** /**
 932:../asf/sam/drivers/pwm/pwm.c ****  * \brief Disable the interrupt of synchronous channels.
 933:../asf/sam/drivers/pwm/pwm.c ****  *
 934:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 935:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_sources Bitmask of PWM synchronous channels interrupt sources.
 936:../asf/sam/drivers/pwm/pwm.c ****  */
 937:../asf/sam/drivers/pwm/pwm.c **** void pwm_sync_disable_interrupt(Pwm *p_pwm, uint32_t ul_sources)
 938:../asf/sam/drivers/pwm/pwm.c **** {
 1706              		.loc 1 938 0
 1707              		.cfi_startproc
 1708              		@ args = 0, pretend = 0, frame = 0
 1709              		@ frame_needed = 0, uses_anonymous_args = 0
 1710              		@ link register save eliminated.
 1711              	.LVL156:
 939:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_IDR2 = ul_sources;
 1712              		.loc 1 939 0
 1713 0000 8163     		str	r1, [r0, #56]
 1714 0002 7047     		bx	lr
 1715              		.cfi_endproc
 1716              	.LFE172:
 1717              		.size	pwm_sync_disable_interrupt, .-pwm_sync_disable_interrupt
 1718              		.section	.text.pwm_enable_protect,"ax",%progbits
 1719              		.align	1
 1720              		.p2align 2,,3
 1721              		.global	pwm_enable_protect
 1722              		.syntax unified
 1723              		.thumb
 1724              		.thumb_func
 1725              		.fpu fpv5-d16
 1726              		.type	pwm_enable_protect, %function
 1727              	pwm_enable_protect:
ARM GAS  /tmp/ccmSFvTJ.s 			page 51


 1728              	.LFB173:
 940:../asf/sam/drivers/pwm/pwm.c **** }
 941:../asf/sam/drivers/pwm/pwm.c **** 
 942:../asf/sam/drivers/pwm/pwm.c **** /**
 943:../asf/sam/drivers/pwm/pwm.c ****  * \brief Enable PWM write protect.
 944:../asf/sam/drivers/pwm/pwm.c ****  *
 945:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 946:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_group Bitmask of PWM register group.
 947:../asf/sam/drivers/pwm/pwm.c ****  * \param b_sw Boolean of software protect. True for software protect and false for hardware protec
 948:../asf/sam/drivers/pwm/pwm.c ****  */
 949:../asf/sam/drivers/pwm/pwm.c **** void pwm_enable_protect(Pwm *p_pwm, uint32_t ul_group, bool b_sw)
 950:../asf/sam/drivers/pwm/pwm.c **** {
 1729              		.loc 1 950 0
 1730              		.cfi_startproc
 1731              		@ args = 0, pretend = 0, frame = 0
 1732              		@ frame_needed = 0, uses_anonymous_args = 0
 1733              		@ link register save eliminated.
 1734              	.LVL157:
 951:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t wp = 0;
 952:../asf/sam/drivers/pwm/pwm.c **** 
 953:../asf/sam/drivers/pwm/pwm.c **** 	if (b_sw) {
 1735              		.loc 1 953 0
 1736 0000 2AB9     		cbnz	r2, .L127
 954:../asf/sam/drivers/pwm/pwm.c **** 		wp = PWM_WPCR_WPKEY_PASSWD | (ul_group << 2) |
 955:../asf/sam/drivers/pwm/pwm.c **** 				PWM_WPCR_WPCMD_ENABLE_SW_PROT;
 956:../asf/sam/drivers/pwm/pwm.c **** 	} else {
 957:../asf/sam/drivers/pwm/pwm.c **** 		wp = PWM_WPCR_WPKEY_PASSWD | (ul_group << 2) |
 1737              		.loc 1 957 0
 1738 0002 064B     		ldr	r3, .L128
 1739 0004 43EA8101 		orr	r1, r3, r1, lsl #2
 1740              	.LVL158:
 958:../asf/sam/drivers/pwm/pwm.c **** 				PWM_WPCR_WPCMD_ENABLE_HW_PROT;
 959:../asf/sam/drivers/pwm/pwm.c **** 	}
 960:../asf/sam/drivers/pwm/pwm.c **** 
 961:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_WPCR = wp;
 1741              		.loc 1 961 0
 1742 0008 C0F8E410 		str	r1, [r0, #228]
 1743 000c 7047     		bx	lr
 1744              	.LVL159:
 1745              	.L127:
 954:../asf/sam/drivers/pwm/pwm.c **** 		wp = PWM_WPCR_WPKEY_PASSWD | (ul_group << 2) |
 1746              		.loc 1 954 0
 1747 000e 044B     		ldr	r3, .L128+4
 1748 0010 43EA8101 		orr	r1, r3, r1, lsl #2
 1749              	.LVL160:
 1750              		.loc 1 961 0
 1751 0014 C0F8E410 		str	r1, [r0, #228]
 1752 0018 7047     		bx	lr
 1753              	.L129:
 1754 001a 00BF     		.align	2
 1755              	.L128:
 1756 001c 024D5750 		.word	1347898626
 1757 0020 014D5750 		.word	1347898625
 1758              		.cfi_endproc
 1759              	.LFE173:
 1760              		.size	pwm_enable_protect, .-pwm_enable_protect
 1761              		.section	.text.pwm_disable_protect,"ax",%progbits
ARM GAS  /tmp/ccmSFvTJ.s 			page 52


 1762              		.align	1
 1763              		.p2align 2,,3
 1764              		.global	pwm_disable_protect
 1765              		.syntax unified
 1766              		.thumb
 1767              		.thumb_func
 1768              		.fpu fpv5-d16
 1769              		.type	pwm_disable_protect, %function
 1770              	pwm_disable_protect:
 1771              	.LFB174:
 962:../asf/sam/drivers/pwm/pwm.c **** }
 963:../asf/sam/drivers/pwm/pwm.c **** 
 964:../asf/sam/drivers/pwm/pwm.c **** /**
 965:../asf/sam/drivers/pwm/pwm.c ****  * \brief Disable PWM write protect.
 966:../asf/sam/drivers/pwm/pwm.c ****  *
 967:../asf/sam/drivers/pwm/pwm.c ****  * \note Only a hardware reset of PWM controller (handled by PMC) can disable hardware write protec
 968:../asf/sam/drivers/pwm/pwm.c ****  *
 969:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 970:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_group Bitmask of PWM register group.
 971:../asf/sam/drivers/pwm/pwm.c ****  */
 972:../asf/sam/drivers/pwm/pwm.c **** void pwm_disable_protect(Pwm *p_pwm, uint32_t ul_group)
 973:../asf/sam/drivers/pwm/pwm.c **** {
 1772              		.loc 1 973 0
 1773              		.cfi_startproc
 1774              		@ args = 0, pretend = 0, frame = 0
 1775              		@ frame_needed = 0, uses_anonymous_args = 0
 1776              		@ link register save eliminated.
 1777              	.LVL161:
 974:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_WPCR = PWM_WPCR_WPKEY_PASSWD
 975:../asf/sam/drivers/pwm/pwm.c **** 			 | (ul_group << 2) | PWM_WPCR_WPCMD_DISABLE_SW_PROT;
 1778              		.loc 1 975 0
 1779 0000 024B     		ldr	r3, .L131
 1780 0002 43EA8101 		orr	r1, r3, r1, lsl #2
 1781              	.LVL162:
 974:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_WPCR = PWM_WPCR_WPKEY_PASSWD
 1782              		.loc 1 974 0
 1783 0006 C0F8E410 		str	r1, [r0, #228]
 1784 000a 7047     		bx	lr
 1785              	.L132:
 1786              		.align	2
 1787              	.L131:
 1788 000c 004D5750 		.word	1347898624
 1789              		.cfi_endproc
 1790              	.LFE174:
 1791              		.size	pwm_disable_protect, .-pwm_disable_protect
 1792              		.section	.text.pwm_get_protect_status,"ax",%progbits
 1793              		.align	1
 1794              		.p2align 2,,3
 1795              		.global	pwm_get_protect_status
 1796              		.syntax unified
 1797              		.thumb
 1798              		.thumb_func
 1799              		.fpu fpv5-d16
 1800              		.type	pwm_get_protect_status, %function
 1801              	pwm_get_protect_status:
 1802              	.LFB175:
 976:../asf/sam/drivers/pwm/pwm.c **** }
ARM GAS  /tmp/ccmSFvTJ.s 			page 53


 977:../asf/sam/drivers/pwm/pwm.c **** 
 978:../asf/sam/drivers/pwm/pwm.c **** /**
 979:../asf/sam/drivers/pwm/pwm.c ****  * \brief Get PWM write protect status.
 980:../asf/sam/drivers/pwm/pwm.c ****  *
 981:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
 982:../asf/sam/drivers/pwm/pwm.c ****  * \param p_protect Pointer to a structure stored PWM protect status.
 983:../asf/sam/drivers/pwm/pwm.c ****  *
 984:../asf/sam/drivers/pwm/pwm.c ****  * \retval 0 Protection disabled.
 985:../asf/sam/drivers/pwm/pwm.c ****  * \retval 1 Protection enabled.
 986:../asf/sam/drivers/pwm/pwm.c ****  */
 987:../asf/sam/drivers/pwm/pwm.c **** bool pwm_get_protect_status(Pwm *p_pwm, pwm_protect_t *p_protect)
 988:../asf/sam/drivers/pwm/pwm.c **** {
 1803              		.loc 1 988 0
 1804              		.cfi_startproc
 1805              		@ args = 0, pretend = 0, frame = 0
 1806              		@ frame_needed = 0, uses_anonymous_args = 0
 1807              		@ link register save eliminated.
 1808              	.LVL163:
 989:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t wpsr = p_pwm->PWM_WPSR;
 1809              		.loc 1 989 0
 1810 0000 D0F8E830 		ldr	r3, [r0, #232]
 1811              	.LVL164:
 990:../asf/sam/drivers/pwm/pwm.c **** 
 991:../asf/sam/drivers/pwm/pwm.c **** 	p_protect->ul_hw_status = (wpsr >> 8) & 0x3F;
 1812              		.loc 1 991 0
 1813 0004 C3F30520 		ubfx	r0, r3, #8, #6
 1814              	.LVL165:
 992:../asf/sam/drivers/pwm/pwm.c **** 	/** Bitmask of PWM register group for write protect software status */
 993:../asf/sam/drivers/pwm/pwm.c **** 	p_protect->ul_sw_status = (wpsr & 0x3F);
 1815              		.loc 1 993 0
 1816 0008 03F03F02 		and	r2, r3, #63
 1817 000c 81E80500 		stm	r1, {r0, r2}
 994:../asf/sam/drivers/pwm/pwm.c **** 
 995:../asf/sam/drivers/pwm/pwm.c **** 	if ((PWM_WPSR_WPVS & wpsr) == PWM_WPSR_WPVS) {
 1818              		.loc 1 995 0
 1819 0010 13F08000 		ands	r0, r3, #128
 1820 0014 02D0     		beq	.L134
 996:../asf/sam/drivers/pwm/pwm.c **** 		p_protect->ul_offset =
 997:../asf/sam/drivers/pwm/pwm.c **** 				(wpsr & PWM_WPSR_WPVSRC_Msk) >>
 1821              		.loc 1 997 0
 1822 0016 1B0C     		lsrs	r3, r3, #16
 1823              	.LVL166:
 998:../asf/sam/drivers/pwm/pwm.c **** 				PWM_WPSR_WPVSRC_Pos;
 999:../asf/sam/drivers/pwm/pwm.c **** 		return true;
 1824              		.loc 1 999 0
 1825 0018 0120     		movs	r0, #1
 996:../asf/sam/drivers/pwm/pwm.c **** 		p_protect->ul_offset =
 1826              		.loc 1 996 0
 1827 001a 8B60     		str	r3, [r1, #8]
 1828              	.L134:
1000:../asf/sam/drivers/pwm/pwm.c **** 	} else {
1001:../asf/sam/drivers/pwm/pwm.c **** 		return false;
1002:../asf/sam/drivers/pwm/pwm.c **** 	}
1003:../asf/sam/drivers/pwm/pwm.c **** }
 1829              		.loc 1 1003 0
 1830 001c 7047     		bx	lr
 1831              		.cfi_endproc
ARM GAS  /tmp/ccmSFvTJ.s 			page 54


 1832              	.LFE175:
 1833              		.size	pwm_get_protect_status, .-pwm_get_protect_status
 1834 001e 00BF     		.section	.text.pwm_get_interrupt_status,"ax",%progbits
 1835              		.align	1
 1836              		.p2align 2,,3
 1837              		.global	pwm_get_interrupt_status
 1838              		.syntax unified
 1839              		.thumb
 1840              		.thumb_func
 1841              		.fpu fpv5-d16
 1842              		.type	pwm_get_interrupt_status, %function
 1843              	pwm_get_interrupt_status:
 1844              	.LFB176:
1004:../asf/sam/drivers/pwm/pwm.c **** 
1005:../asf/sam/drivers/pwm/pwm.c **** /**
1006:../asf/sam/drivers/pwm/pwm.c ****  * \brief Get interrupt status of PDC transfer, synchronous channels and comparison.
1007:../asf/sam/drivers/pwm/pwm.c ****  *
1008:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
1009:../asf/sam/drivers/pwm/pwm.c ****  *
1010:../asf/sam/drivers/pwm/pwm.c ****  * \return Interrupt status of PDC transfer, synchronous channels and comparison.
1011:../asf/sam/drivers/pwm/pwm.c ****  */
1012:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_get_interrupt_status(Pwm *p_pwm)
1013:../asf/sam/drivers/pwm/pwm.c **** {
 1845              		.loc 1 1013 0
 1846              		.cfi_startproc
 1847              		@ args = 0, pretend = 0, frame = 0
 1848              		@ frame_needed = 0, uses_anonymous_args = 0
 1849              		@ link register save eliminated.
 1850              	.LVL167:
1014:../asf/sam/drivers/pwm/pwm.c **** 	return p_pwm->PWM_ISR2;
 1851              		.loc 1 1014 0
 1852 0000 006C     		ldr	r0, [r0, #64]
 1853              	.LVL168:
1015:../asf/sam/drivers/pwm/pwm.c **** }
 1854              		.loc 1 1015 0
 1855 0002 7047     		bx	lr
 1856              		.cfi_endproc
 1857              	.LFE176:
 1858              		.size	pwm_get_interrupt_status, .-pwm_get_interrupt_status
 1859              		.section	.text.pwm_get_interrupt_mask,"ax",%progbits
 1860              		.align	1
 1861              		.p2align 2,,3
 1862              		.global	pwm_get_interrupt_mask
 1863              		.syntax unified
 1864              		.thumb
 1865              		.thumb_func
 1866              		.fpu fpv5-d16
 1867              		.type	pwm_get_interrupt_mask, %function
 1868              	pwm_get_interrupt_mask:
 1869              	.LFB177:
1016:../asf/sam/drivers/pwm/pwm.c **** 
1017:../asf/sam/drivers/pwm/pwm.c **** /**
1018:../asf/sam/drivers/pwm/pwm.c ****  * \brief Get interrupt mask of PDC transfer, synchronous channels and comparison.
1019:../asf/sam/drivers/pwm/pwm.c ****  *
1020:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
1021:../asf/sam/drivers/pwm/pwm.c ****  *
1022:../asf/sam/drivers/pwm/pwm.c ****  * \return Interrupt mask of PDC transfer, synchronous channels and comparison.
ARM GAS  /tmp/ccmSFvTJ.s 			page 55


1023:../asf/sam/drivers/pwm/pwm.c ****  */
1024:../asf/sam/drivers/pwm/pwm.c **** uint32_t pwm_get_interrupt_mask(Pwm *p_pwm)
1025:../asf/sam/drivers/pwm/pwm.c **** {
 1870              		.loc 1 1025 0
 1871              		.cfi_startproc
 1872              		@ args = 0, pretend = 0, frame = 0
 1873              		@ frame_needed = 0, uses_anonymous_args = 0
 1874              		@ link register save eliminated.
 1875              	.LVL169:
1026:../asf/sam/drivers/pwm/pwm.c **** 	return p_pwm->PWM_IMR2;
 1876              		.loc 1 1026 0
 1877 0000 C06B     		ldr	r0, [r0, #60]
 1878              	.LVL170:
1027:../asf/sam/drivers/pwm/pwm.c **** }
 1879              		.loc 1 1027 0
 1880 0002 7047     		bx	lr
 1881              		.cfi_endproc
 1882              	.LFE177:
 1883              		.size	pwm_get_interrupt_mask, .-pwm_get_interrupt_mask
 1884              		.section	.text.pwm_stepper_motor_init,"ax",%progbits
 1885              		.align	1
 1886              		.p2align 2,,3
 1887              		.global	pwm_stepper_motor_init
 1888              		.syntax unified
 1889              		.thumb
 1890              		.thumb_func
 1891              		.fpu fpv5-d16
 1892              		.type	pwm_stepper_motor_init, %function
 1893              	pwm_stepper_motor_init:
 1894              	.LFB178:
1028:../asf/sam/drivers/pwm/pwm.c **** #endif
1029:../asf/sam/drivers/pwm/pwm.c **** 
1030:../asf/sam/drivers/pwm/pwm.c **** #if (SAM3S || SAM3XA || SAM4S || SAM4E || SAMV70 || SAMV71 || SAME70 || SAMS70)
1031:../asf/sam/drivers/pwm/pwm.c **** /**
1032:../asf/sam/drivers/pwm/pwm.c ****  * \brief Initialize PWM stepper motor mode.
1033:../asf/sam/drivers/pwm/pwm.c ****  *
1034:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
1035:../asf/sam/drivers/pwm/pwm.c ****  * \param pair PWM channels used by stepper motor.
1036:../asf/sam/drivers/pwm/pwm.c ****  * \param b_enable_gray Set true to enable gray count generation. Set false to disable it.
1037:../asf/sam/drivers/pwm/pwm.c ****  * \param b_down Set true to use down counter. Set false to use up counter.
1038:../asf/sam/drivers/pwm/pwm.c ****  */
1039:../asf/sam/drivers/pwm/pwm.c **** void pwm_stepper_motor_init(Pwm *p_pwm, pwm_stepper_motor_pair_t pair,
1040:../asf/sam/drivers/pwm/pwm.c **** 		bool b_enable_gray, bool b_down)
1041:../asf/sam/drivers/pwm/pwm.c **** {
 1895              		.loc 1 1041 0
 1896              		.cfi_startproc
 1897              		@ args = 0, pretend = 0, frame = 0
 1898              		@ frame_needed = 0, uses_anonymous_args = 0
 1899              		@ link register save eliminated.
 1900              	.LVL171:
 1901 0000 10B4     		push	{r4}
 1902              		.cfi_def_cfa_offset 4
 1903              		.cfi_offset 4, -4
1042:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t motor = p_pwm->PWM_SMMR;
1043:../asf/sam/drivers/pwm/pwm.c **** 
1044:../asf/sam/drivers/pwm/pwm.c **** 	motor &= ~((PWM_SMMR_GCEN0 | PWM_SMMR_DOWN0) << pair);
 1904              		.loc 1 1044 0
ARM GAS  /tmp/ccmSFvTJ.s 			page 56


 1905 0002 4FF00114 		mov	r4, #65537
1045:../asf/sam/drivers/pwm/pwm.c **** 	motor |= ((b_enable_gray | (b_down << 16)) << pair);
 1906              		.loc 1 1045 0
 1907 0006 42EA0343 		orr	r3, r2, r3, lsl #16
 1908              	.LVL172:
1042:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t motor = p_pwm->PWM_SMMR;
 1909              		.loc 1 1042 0
 1910 000a D0F8B020 		ldr	r2, [r0, #176]
 1911              	.LVL173:
1044:../asf/sam/drivers/pwm/pwm.c **** 	motor |= ((b_enable_gray | (b_down << 16)) << pair);
 1912              		.loc 1 1044 0
 1913 000e 8C40     		lsls	r4, r4, r1
 1914              		.loc 1 1045 0
 1915 0010 8B40     		lsls	r3, r3, r1
1044:../asf/sam/drivers/pwm/pwm.c **** 	motor |= ((b_enable_gray | (b_down << 16)) << pair);
 1916              		.loc 1 1044 0
 1917 0012 22EA0401 		bic	r1, r2, r4
 1918              	.LVL174:
1046:../asf/sam/drivers/pwm/pwm.c **** 
1047:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_SMMR = motor;
1048:../asf/sam/drivers/pwm/pwm.c **** }
 1919              		.loc 1 1048 0
 1920 0016 5DF8044B 		ldr	r4, [sp], #4
 1921              		.cfi_restore 4
 1922              		.cfi_def_cfa_offset 0
1045:../asf/sam/drivers/pwm/pwm.c **** 
 1923              		.loc 1 1045 0
 1924 001a 0B43     		orrs	r3, r3, r1
 1925              	.LVL175:
1047:../asf/sam/drivers/pwm/pwm.c **** }
 1926              		.loc 1 1047 0
 1927 001c C0F8B030 		str	r3, [r0, #176]
 1928              		.loc 1 1048 0
 1929 0020 7047     		bx	lr
 1930              		.cfi_endproc
 1931              	.LFE178:
 1932              		.size	pwm_stepper_motor_init, .-pwm_stepper_motor_init
 1933 0022 00BF     		.section	.text.pwm_channel_update_spread,"ax",%progbits
 1934              		.align	1
 1935              		.p2align 2,,3
 1936              		.global	pwm_channel_update_spread
 1937              		.syntax unified
 1938              		.thumb
 1939              		.thumb_func
 1940              		.fpu fpv5-d16
 1941              		.type	pwm_channel_update_spread, %function
 1942              	pwm_channel_update_spread:
 1943              	.LFB179:
1049:../asf/sam/drivers/pwm/pwm.c **** #endif
1050:../asf/sam/drivers/pwm/pwm.c **** 
1051:../asf/sam/drivers/pwm/pwm.c **** #if SAM4E
1052:../asf/sam/drivers/pwm/pwm.c **** /**
1053:../asf/sam/drivers/pwm/pwm.c ****  * \brief Change spread spectrum value.
1054:../asf/sam/drivers/pwm/pwm.c ****  *
1055:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
1056:../asf/sam/drivers/pwm/pwm.c ****  * \param p_channel Configurations of the specified PWM channel.
1057:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_spread New spread spectrum value.
ARM GAS  /tmp/ccmSFvTJ.s 			page 57


1058:../asf/sam/drivers/pwm/pwm.c ****  */
1059:../asf/sam/drivers/pwm/pwm.c **** void pwm_channel_update_spread(Pwm *p_pwm, pwm_channel_t *p_channel,
1060:../asf/sam/drivers/pwm/pwm.c **** 		uint32_t ul_spread)
1061:../asf/sam/drivers/pwm/pwm.c **** {
1062:../asf/sam/drivers/pwm/pwm.c **** 	/* Save new spread spectrum value */
1063:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->ul_spread = ul_spread;
1064:../asf/sam/drivers/pwm/pwm.c **** 
1065:../asf/sam/drivers/pwm/pwm.c **** 	/* Write spread spectrum update register */
1066:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_SSPUP = PWM_SSPUP_SPRDUP(ul_spread);
1067:../asf/sam/drivers/pwm/pwm.c **** }
1068:../asf/sam/drivers/pwm/pwm.c **** 
1069:../asf/sam/drivers/pwm/pwm.c **** /**
1070:../asf/sam/drivers/pwm/pwm.c ****  * \brief Change additional edge value and mode.
1071:../asf/sam/drivers/pwm/pwm.c ****  *
1072:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
1073:../asf/sam/drivers/pwm/pwm.c ****  * \param p_channel Configurations of the specified PWM channel.
1074:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_additional_edge New additional edge value.
1075:../asf/sam/drivers/pwm/pwm.c ****  * \param additional_edge_mode New additional edge mode.
1076:../asf/sam/drivers/pwm/pwm.c ****  */
1077:../asf/sam/drivers/pwm/pwm.c **** void pwm_channel_update_additional_edge(Pwm *p_pwm, pwm_channel_t *p_channel,
1078:../asf/sam/drivers/pwm/pwm.c **** 		uint32_t ul_additional_edge,
1079:../asf/sam/drivers/pwm/pwm.c **** 		pwm_additional_edge_mode_t additional_edge_mode)
1080:../asf/sam/drivers/pwm/pwm.c **** {
1081:../asf/sam/drivers/pwm/pwm.c **** 	/* Save new additional edge value */
1082:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->ul_additional_edge = ul_additional_edge;
1083:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->additional_edge_mode = additional_edge_mode;
1084:../asf/sam/drivers/pwm/pwm.c **** 
1085:../asf/sam/drivers/pwm/pwm.c **** 	/* Write channel additional edge update register */
1086:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_CH_NUM_0X400[p_channel->channel].PWM_CAEUPD =
1087:../asf/sam/drivers/pwm/pwm.c **** 			PWM_CAEUPD_ADEDGVUP(ul_additional_edge) | additional_edge_mode;
1088:../asf/sam/drivers/pwm/pwm.c **** }
1089:../asf/sam/drivers/pwm/pwm.c **** 
1090:../asf/sam/drivers/pwm/pwm.c **** /**
1091:../asf/sam/drivers/pwm/pwm.c ****  * \brief Change polarity mode.
1092:../asf/sam/drivers/pwm/pwm.c ****  *
1093:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
1094:../asf/sam/drivers/pwm/pwm.c ****  * \param p_channel Configurations of the specified PWM channel.
1095:../asf/sam/drivers/pwm/pwm.c ****  * \param polarity_inversion_flag Polarity invertion.
1096:../asf/sam/drivers/pwm/pwm.c ****  * \param polarity_flag Polarity value.
1097:../asf/sam/drivers/pwm/pwm.c ****  */
1098:../asf/sam/drivers/pwm/pwm.c **** void pwm_channel_update_polarity_mode(Pwm *p_pwm, pwm_channel_t *p_channel,
1099:../asf/sam/drivers/pwm/pwm.c **** 		bool polarity_inversion_flag, pwm_level_t polarity_value)
1100:../asf/sam/drivers/pwm/pwm.c **** {
1101:../asf/sam/drivers/pwm/pwm.c **** 	if (polarity_inversion_flag) {
1102:../asf/sam/drivers/pwm/pwm.c **** 		/* Set polarity inversion to the update register */
1103:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_CH_NUM_0X400[p_channel->channel].PWM_CMUPD =
1104:../asf/sam/drivers/pwm/pwm.c **** 				PWM_CMUPD_CPOLINVUP;
1105:../asf/sam/drivers/pwm/pwm.c **** 	} else {
1106:../asf/sam/drivers/pwm/pwm.c **** 		/* Save new polarity value */
1107:../asf/sam/drivers/pwm/pwm.c **** 		p_channel->polarity = polarity_value;
1108:../asf/sam/drivers/pwm/pwm.c **** 
1109:../asf/sam/drivers/pwm/pwm.c **** 		/* Write new polarity value to update register */
1110:../asf/sam/drivers/pwm/pwm.c **** 		if (polarity_value == PWM_HIGH) {
1111:../asf/sam/drivers/pwm/pwm.c **** 			p_pwm->PWM_CH_NUM_0X400[p_channel->channel].PWM_CMUPD =
1112:../asf/sam/drivers/pwm/pwm.c **** 					PWM_CMUPD_CPOLUP;
1113:../asf/sam/drivers/pwm/pwm.c **** 		} else {
1114:../asf/sam/drivers/pwm/pwm.c **** 			p_pwm->PWM_CH_NUM_0X400[p_channel->channel].PWM_CMUPD = 0;
ARM GAS  /tmp/ccmSFvTJ.s 			page 58


1115:../asf/sam/drivers/pwm/pwm.c **** 		}
1116:../asf/sam/drivers/pwm/pwm.c **** 	}
1117:../asf/sam/drivers/pwm/pwm.c **** }
1118:../asf/sam/drivers/pwm/pwm.c **** #elif (SAMV70 || SAMV71 || SAME70 || SAMS70)
1119:../asf/sam/drivers/pwm/pwm.c **** /**
1120:../asf/sam/drivers/pwm/pwm.c ****  * \brief Change spread spectrum value.
1121:../asf/sam/drivers/pwm/pwm.c ****  *
1122:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
1123:../asf/sam/drivers/pwm/pwm.c ****  * \param p_channel Configurations of the specified PWM channel.
1124:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_spread New spread spectrum value.
1125:../asf/sam/drivers/pwm/pwm.c ****  */
1126:../asf/sam/drivers/pwm/pwm.c **** void pwm_channel_update_spread(Pwm *p_pwm, pwm_channel_t *p_channel,
1127:../asf/sam/drivers/pwm/pwm.c **** 		uint32_t ul_spread)
1128:../asf/sam/drivers/pwm/pwm.c **** {
 1944              		.loc 1 1128 0
 1945              		.cfi_startproc
 1946              		@ args = 0, pretend = 0, frame = 0
 1947              		@ frame_needed = 0, uses_anonymous_args = 0
 1948              		@ link register save eliminated.
 1949              	.LVL176:
1129:../asf/sam/drivers/pwm/pwm.c **** 	/* Save new spread spectrum value */
1130:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->ul_spread = ul_spread;
1131:../asf/sam/drivers/pwm/pwm.c **** 
1132:../asf/sam/drivers/pwm/pwm.c **** 	/* Write spread spectrum update register */
1133:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_SSPUP = PWM_SSPUP_SPRDUP(ul_spread);
 1950              		.loc 1 1133 0
 1951 0000 22F07F43 		bic	r3, r2, #-16777216
1130:../asf/sam/drivers/pwm/pwm.c **** 
 1952              		.loc 1 1130 0
 1953 0004 8A62     		str	r2, [r1, #40]
 1954              		.loc 1 1133 0
 1955 0006 C0F8A430 		str	r3, [r0, #164]
 1956 000a 7047     		bx	lr
 1957              		.cfi_endproc
 1958              	.LFE179:
 1959              		.size	pwm_channel_update_spread, .-pwm_channel_update_spread
 1960              		.section	.text.pwm_channel_update_leading_edge,"ax",%progbits
 1961              		.align	1
 1962              		.p2align 2,,3
 1963              		.global	pwm_channel_update_leading_edge
 1964              		.syntax unified
 1965              		.thumb
 1966              		.thumb_func
 1967              		.fpu fpv5-d16
 1968              		.type	pwm_channel_update_leading_edge, %function
 1969              	pwm_channel_update_leading_edge:
 1970              	.LFB180:
1134:../asf/sam/drivers/pwm/pwm.c **** }
1135:../asf/sam/drivers/pwm/pwm.c **** 
1136:../asf/sam/drivers/pwm/pwm.c **** /**
1137:../asf/sam/drivers/pwm/pwm.c ****  * \brief Change leading edge value and mode.
1138:../asf/sam/drivers/pwm/pwm.c ****  *
1139:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
1140:../asf/sam/drivers/pwm/pwm.c ****  * \param p_channel Configurations of the specified PWM channel.
1141:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_leading_edge_delay Leading-Edge Blanking Delay for TRGINx.
1142:../asf/sam/drivers/pwm/pwm.c ****  * \param leading_edge_blanking_mode New additional edge mode.
1143:../asf/sam/drivers/pwm/pwm.c ****  */
ARM GAS  /tmp/ccmSFvTJ.s 			page 59


1144:../asf/sam/drivers/pwm/pwm.c **** void pwm_channel_update_leading_edge(Pwm *p_pwm, pwm_channel_t *p_channel,
1145:../asf/sam/drivers/pwm/pwm.c **** 		uint32_t ul_leading_edge_delay,
1146:../asf/sam/drivers/pwm/pwm.c **** 		pwm_leading_edge_blanking_mode_t leading_edge_blanking_mode)
1147:../asf/sam/drivers/pwm/pwm.c **** {
 1971              		.loc 1 1147 0
 1972              		.cfi_startproc
 1973              		@ args = 0, pretend = 0, frame = 0
 1974              		@ frame_needed = 0, uses_anonymous_args = 0
 1975              		@ link register save eliminated.
 1976              	.LVL177:
 1977 0000 10B4     		push	{r4}
 1978              		.cfi_def_cfa_offset 4
 1979              		.cfi_offset 4, -4
1148:../asf/sam/drivers/pwm/pwm.c **** 	/* Save new leading edge value */
1149:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->ul_leading_edge_delay = ul_leading_edge_delay;
1150:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->leading_edge_blanking_mode = leading_edge_blanking_mode;
1151:../asf/sam/drivers/pwm/pwm.c **** 
1152:../asf/sam/drivers/pwm/pwm.c **** 	/* Write channel leading edge update register */
1153:../asf/sam/drivers/pwm/pwm.c **** 	if (p_channel->channel == 1) {
 1980              		.loc 1 1153 0
 1981 0002 0C68     		ldr	r4, [r1]
1149:../asf/sam/drivers/pwm/pwm.c **** 	p_channel->leading_edge_blanking_mode = leading_edge_blanking_mode;
 1982              		.loc 1 1149 0
 1983 0004 0A63     		str	r2, [r1, #48]
 1984              		.loc 1 1153 0
 1985 0006 012C     		cmp	r4, #1
1150:../asf/sam/drivers/pwm/pwm.c **** 
 1986              		.loc 1 1150 0
 1987 0008 4B63     		str	r3, [r1, #52]
 1988              		.loc 1 1153 0
 1989 000a 10D0     		beq	.L147
1154:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_LEBR1 = PWM_LEBR1_LEBDELAY(ul_leading_edge_delay) | leading_edge_blanking_mode;
1155:../asf/sam/drivers/pwm/pwm.c **** 	} else if (p_channel->channel == 2) {
 1990              		.loc 1 1155 0
 1991 000c 022C     		cmp	r4, #2
 1992 000e 16D0     		beq	.L148
1156:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_LEBR2 = PWM_LEBR2_LEBDELAY(ul_leading_edge_delay) | leading_edge_blanking_mode;
1157:../asf/sam/drivers/pwm/pwm.c **** 	} else if (p_channel->channel == 3) {
 1993              		.loc 1 1157 0
 1994 0010 032C     		cmp	r4, #3
 1995 0012 1CD0     		beq	.L149
1158:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_LEBR3 = PWM_LEBR3_LEBDELAY(ul_leading_edge_delay) | leading_edge_blanking_mode;
1159:../asf/sam/drivers/pwm/pwm.c **** 	} else if (p_channel->channel == 4) {
 1996              		.loc 1 1159 0
 1997 0014 042C     		cmp	r4, #4
 1998 0016 02D0     		beq	.L150
1160:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_LEBR4 = PWM_LEBR4_LEBDELAY(ul_leading_edge_delay) | leading_edge_blanking_mode;
1161:../asf/sam/drivers/pwm/pwm.c **** 	}
1162:../asf/sam/drivers/pwm/pwm.c **** }
 1999              		.loc 1 1162 0
 2000 0018 5DF8044B 		ldr	r4, [sp], #4
 2001              		.cfi_remember_state
 2002              		.cfi_restore 4
 2003              		.cfi_def_cfa_offset 0
 2004 001c 7047     		bx	lr
 2005              	.L150:
 2006              		.cfi_restore_state
ARM GAS  /tmp/ccmSFvTJ.s 			page 60


1160:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_LEBR4 = PWM_LEBR4_LEBDELAY(ul_leading_edge_delay) | leading_edge_blanking_mode;
 2007              		.loc 1 1160 0
 2008 001e 02F07F02 		and	r2, r2, #127
 2009              	.LVL178:
 2010              		.loc 1 1162 0
 2011 0022 5DF8044B 		ldr	r4, [sp], #4
 2012              		.cfi_remember_state
 2013              		.cfi_restore 4
 2014              		.cfi_def_cfa_offset 0
1160:../asf/sam/drivers/pwm/pwm.c **** 		p_pwm->PWM_LEBR4 = PWM_LEBR4_LEBDELAY(ul_leading_edge_delay) | leading_edge_blanking_mode;
 2015              		.loc 1 1160 0
 2016 0026 1343     		orrs	r3, r3, r2
 2017              	.LVL179:
 2018 0028 C0F89034 		str	r3, [r0, #1168]
 2019              		.loc 1 1162 0
 2020 002c 7047     		bx	lr
 2021              	.LVL180:
 2022              	.L147:
 2023              		.cfi_restore_state
1154:../asf/sam/drivers/pwm/pwm.c **** 	} else if (p_channel->channel == 2) {
 2024              		.loc 1 1154 0
 2025 002e 02F07F02 		and	r2, r2, #127
 2026              	.LVL181:
 2027              		.loc 1 1162 0
 2028 0032 5DF8044B 		ldr	r4, [sp], #4
 2029              		.cfi_remember_state
 2030              		.cfi_restore 4
 2031              		.cfi_def_cfa_offset 0
1154:../asf/sam/drivers/pwm/pwm.c **** 	} else if (p_channel->channel == 2) {
 2032              		.loc 1 1154 0
 2033 0036 1343     		orrs	r3, r3, r2
 2034              	.LVL182:
 2035 0038 C0F83034 		str	r3, [r0, #1072]
 2036              		.loc 1 1162 0
 2037 003c 7047     		bx	lr
 2038              	.LVL183:
 2039              	.L148:
 2040              		.cfi_restore_state
1156:../asf/sam/drivers/pwm/pwm.c **** 	} else if (p_channel->channel == 3) {
 2041              		.loc 1 1156 0
 2042 003e 02F07F02 		and	r2, r2, #127
 2043              	.LVL184:
 2044              		.loc 1 1162 0
 2045 0042 5DF8044B 		ldr	r4, [sp], #4
 2046              		.cfi_remember_state
 2047              		.cfi_restore 4
 2048              		.cfi_def_cfa_offset 0
1156:../asf/sam/drivers/pwm/pwm.c **** 	} else if (p_channel->channel == 3) {
 2049              		.loc 1 1156 0
 2050 0046 1343     		orrs	r3, r3, r2
 2051              	.LVL185:
 2052 0048 C0F85034 		str	r3, [r0, #1104]
 2053              		.loc 1 1162 0
 2054 004c 7047     		bx	lr
 2055              	.LVL186:
 2056              	.L149:
 2057              		.cfi_restore_state
ARM GAS  /tmp/ccmSFvTJ.s 			page 61


1158:../asf/sam/drivers/pwm/pwm.c **** 	} else if (p_channel->channel == 4) {
 2058              		.loc 1 1158 0
 2059 004e 02F07F02 		and	r2, r2, #127
 2060              	.LVL187:
 2061              		.loc 1 1162 0
 2062 0052 5DF8044B 		ldr	r4, [sp], #4
 2063              		.cfi_restore 4
 2064              		.cfi_def_cfa_offset 0
1158:../asf/sam/drivers/pwm/pwm.c **** 	} else if (p_channel->channel == 4) {
 2065              		.loc 1 1158 0
 2066 0056 1343     		orrs	r3, r3, r2
 2067              	.LVL188:
 2068 0058 C0F87034 		str	r3, [r0, #1136]
 2069              		.loc 1 1162 0
 2070 005c 7047     		bx	lr
 2071              		.cfi_endproc
 2072              	.LFE180:
 2073              		.size	pwm_channel_update_leading_edge, .-pwm_channel_update_leading_edge
 2074 005e 00BF     		.section	.text.pwm_set_dma_duty,"ax",%progbits
 2075              		.align	1
 2076              		.p2align 2,,3
 2077              		.global	pwm_set_dma_duty
 2078              		.syntax unified
 2079              		.thumb
 2080              		.thumb_func
 2081              		.fpu fpv5-d16
 2082              		.type	pwm_set_dma_duty, %function
 2083              	pwm_set_dma_duty:
 2084              	.LFB181:
1163:../asf/sam/drivers/pwm/pwm.c **** #endif
1164:../asf/sam/drivers/pwm/pwm.c **** 
1165:../asf/sam/drivers/pwm/pwm.c **** #if (SAMV70 || SAMV71 || SAME70 || SAMS70)
1166:../asf/sam/drivers/pwm/pwm.c **** /**
1167:../asf/sam/drivers/pwm/pwm.c ****  * \brief Set dma duty.
1168:../asf/sam/drivers/pwm/pwm.c ****  *
1169:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
1170:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_dma_duty_value The dma duty to be set.
1171:../asf/sam/drivers/pwm/pwm.c ****  */
1172:../asf/sam/drivers/pwm/pwm.c **** void pwm_set_dma_duty(Pwm *p_pwm, uint32_t ul_dma_duty_value)
1173:../asf/sam/drivers/pwm/pwm.c **** {
 2085              		.loc 1 1173 0
 2086              		.cfi_startproc
 2087              		@ args = 0, pretend = 0, frame = 0
 2088              		@ frame_needed = 0, uses_anonymous_args = 0
 2089              		@ link register save eliminated.
 2090              	.LVL189:
1174:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t ul_mask = p_pwm->PWM_DMAR & (~PWM_DMAR_DMADUTY_Msk);
1175:../asf/sam/drivers/pwm/pwm.c **** 	p_pwm->PWM_DMAR = ul_mask | PWM_DMAR_DMADUTY(ul_dma_duty_value);
 2091              		.loc 1 1175 0
 2092 0000 21F07F43 		bic	r3, r1, #-16777216
1174:../asf/sam/drivers/pwm/pwm.c **** 	uint32_t ul_mask = p_pwm->PWM_DMAR & (~PWM_DMAR_DMADUTY_Msk);
 2093              		.loc 1 1174 0
 2094 0004 416A     		ldr	r1, [r0, #36]
 2095              	.LVL190:
 2096 0006 01F07F41 		and	r1, r1, #-16777216
 2097              	.LVL191:
 2098              		.loc 1 1175 0
ARM GAS  /tmp/ccmSFvTJ.s 			page 62


 2099 000a 1943     		orrs	r1, r1, r3
 2100              	.LVL192:
 2101 000c 4162     		str	r1, [r0, #36]
 2102 000e 7047     		bx	lr
 2103              		.cfi_endproc
 2104              	.LFE181:
 2105              		.size	pwm_set_dma_duty, .-pwm_set_dma_duty
 2106              		.section	.text.pwm_set_ext_trigger_mode,"ax",%progbits
 2107              		.align	1
 2108              		.p2align 2,,3
 2109              		.global	pwm_set_ext_trigger_mode
 2110              		.syntax unified
 2111              		.thumb
 2112              		.thumb_func
 2113              		.fpu fpv5-d16
 2114              		.type	pwm_set_ext_trigger_mode, %function
 2115              	pwm_set_ext_trigger_mode:
 2116              	.LFB182:
1176:../asf/sam/drivers/pwm/pwm.c **** }
1177:../asf/sam/drivers/pwm/pwm.c **** 
1178:../asf/sam/drivers/pwm/pwm.c **** /**
1179:../asf/sam/drivers/pwm/pwm.c ****  * \brief set external trigger mode.
1180:../asf/sam/drivers/pwm/pwm.c ****  *
1181:../asf/sam/drivers/pwm/pwm.c ****  * \param p_pwm Pointer to a PWM instance.
1182:../asf/sam/drivers/pwm/pwm.c ****  * \param p_channel Configurations of the specified PWM channel.
1183:../asf/sam/drivers/pwm/pwm.c ****  * \param ul_mode The external trigger mode to be set.
1184:../asf/sam/drivers/pwm/pwm.c ****  */
1185:../asf/sam/drivers/pwm/pwm.c **** void pwm_set_ext_trigger_mode(Pwm *p_pwm, pwm_channel_t *p_channel, uint32_t ul_mode)
1186:../asf/sam/drivers/pwm/pwm.c **** {
 2117              		.loc 1 1186 0
 2118              		.cfi_startproc
 2119              		@ args = 0, pretend = 0, frame = 0
 2120              		@ frame_needed = 0, uses_anonymous_args = 0
 2121              		@ link register save eliminated.
 2122              	.LVL193:
1187:../asf/sam/drivers/pwm/pwm.c **** 	if (p_channel->channel == 1) {
 2123              		.loc 1 1187 0
 2124 0000 0B68     		ldr	r3, [r1]
 2125 0002 012B     		cmp	r3, #1
 2126 0004 09D0     		beq	.L157
1188:../asf/sam/drivers/pwm/pwm.c **** 			p_pwm->PWM_ETRG1 = ul_mode;
1189:../asf/sam/drivers/pwm/pwm.c **** 		} else if (p_channel->channel == 2) {
 2127              		.loc 1 1189 0
 2128 0006 022B     		cmp	r3, #2
 2129 0008 0AD0     		beq	.L158
1190:../asf/sam/drivers/pwm/pwm.c **** 			p_pwm->PWM_ETRG2 = ul_mode;
1191:../asf/sam/drivers/pwm/pwm.c **** 		} else if (p_channel->channel == 3) {
 2130              		.loc 1 1191 0
 2131 000a 032B     		cmp	r3, #3
 2132 000c 0BD0     		beq	.L159
1192:../asf/sam/drivers/pwm/pwm.c **** 			p_pwm->PWM_ETRG3 = ul_mode;
1193:../asf/sam/drivers/pwm/pwm.c **** 		} else if (p_channel->channel == 4) {
 2133              		.loc 1 1193 0
 2134 000e 042B     		cmp	r3, #4
 2135 0010 00D0     		beq	.L160
 2136 0012 7047     		bx	lr
 2137              	.L160:
ARM GAS  /tmp/ccmSFvTJ.s 			page 63


1194:../asf/sam/drivers/pwm/pwm.c **** 			p_pwm->PWM_ETRG4 = ul_mode;
 2138              		.loc 1 1194 0
 2139 0014 C0F88C24 		str	r2, [r0, #1164]
 2140 0018 7047     		bx	lr
 2141              	.L157:
1188:../asf/sam/drivers/pwm/pwm.c **** 		} else if (p_channel->channel == 2) {
 2142              		.loc 1 1188 0
 2143 001a C0F82C24 		str	r2, [r0, #1068]
 2144 001e 7047     		bx	lr
 2145              	.L158:
1190:../asf/sam/drivers/pwm/pwm.c **** 		} else if (p_channel->channel == 3) {
 2146              		.loc 1 1190 0
 2147 0020 C0F84C24 		str	r2, [r0, #1100]
 2148 0024 7047     		bx	lr
 2149              	.L159:
1192:../asf/sam/drivers/pwm/pwm.c **** 		} else if (p_channel->channel == 4) {
 2150              		.loc 1 1192 0
 2151 0026 C0F86C24 		str	r2, [r0, #1132]
 2152 002a 7047     		bx	lr
 2153              		.cfi_endproc
 2154              	.LFE182:
 2155              		.size	pwm_set_ext_trigger_mode, .-pwm_set_ext_trigger_mode
 2156              		.section	.rodata
 2157              		.align	2
 2158              		.set	.LANCHOR0,. + 0
 2159              	.LC0:
 2160 0000 01000000 		.word	1
 2161 0004 02000000 		.word	2
 2162 0008 04000000 		.word	4
 2163 000c 08000000 		.word	8
 2164 0010 10000000 		.word	16
 2165 0014 20000000 		.word	32
 2166 0018 40000000 		.word	64
 2167 001c 80000000 		.word	128
 2168 0020 00010000 		.word	256
 2169 0024 00020000 		.word	512
 2170 0028 00040000 		.word	1024
 2171              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 2172              		.align	2
 2173              		.type	cpu_irq_critical_section_counter, %object
 2174              		.size	cpu_irq_critical_section_counter, 4
 2175              	cpu_irq_critical_section_counter:
 2176 0000 00000000 		.space	4
 2177              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 2178              		.type	cpu_irq_prev_interrupt_state, %object
 2179              		.size	cpu_irq_prev_interrupt_state, 1
 2180              	cpu_irq_prev_interrupt_state:
 2181 0000 00       		.space	1
 2182              		.text
 2183              	.Letext0:
 2184              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 2185              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 2186              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 2187              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 2188              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/pwm.
 2189              		.file 7 "/usr/include/newlib/sys/lock.h"
 2190              		.file 8 "/usr/include/newlib/sys/_types.h"
ARM GAS  /tmp/ccmSFvTJ.s 			page 64


 2191              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 2192              		.file 10 "/usr/include/newlib/sys/reent.h"
 2193              		.file 11 "/usr/include/newlib/stdlib.h"
 2194              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 2195              		.file 13 "../asf/sam/drivers/pwm/pwm.h"
 2196              		.section	.debug_info,"",%progbits
 2197              	.Ldebug_info0:
 2198 0000 611E0000 		.4byte	0x1e61
 2199 0004 0400     		.2byte	0x4
 2200 0006 00000000 		.4byte	.Ldebug_abbrev0
 2201 000a 04       		.byte	0x4
 2202 000b 01       		.uleb128 0x1
 2203 000c A3110000 		.4byte	.LASF387
 2204 0010 0C       		.byte	0xc
 2205 0011 780D0000 		.4byte	.LASF388
 2206 0015 57080000 		.4byte	.LASF389
 2207 0019 00000000 		.4byte	.Ldebug_ranges0+0
 2208 001d 00000000 		.4byte	0
 2209 0021 00000000 		.4byte	.Ldebug_line0
 2210 0025 02       		.uleb128 0x2
 2211 0026 04       		.byte	0x4
 2212 0027 07       		.byte	0x7
 2213 0028 4E010000 		.4byte	.LASF0
 2214 002c 03       		.uleb128 0x3
 2215 002d 04       		.byte	0x4
 2216 002e 05       		.byte	0x5
 2217 002f 696E7400 		.ascii	"int\000"
 2218 0033 02       		.uleb128 0x2
 2219 0034 01       		.byte	0x1
 2220 0035 06       		.byte	0x6
 2221 0036 4C130000 		.4byte	.LASF1
 2222 003a 02       		.uleb128 0x2
 2223 003b 01       		.byte	0x1
 2224 003c 08       		.byte	0x8
 2225 003d B7100000 		.4byte	.LASF2
 2226 0041 02       		.uleb128 0x2
 2227 0042 02       		.byte	0x2
 2228 0043 05       		.byte	0x5
 2229 0044 30020000 		.4byte	.LASF3
 2230 0048 04       		.uleb128 0x4
 2231 0049 F7040000 		.4byte	.LASF5
 2232 004d 02       		.byte	0x2
 2233 004e 2B       		.byte	0x2b
 2234 004f 53000000 		.4byte	0x53
 2235 0053 02       		.uleb128 0x2
 2236 0054 02       		.byte	0x2
 2237 0055 07       		.byte	0x7
 2238 0056 67130000 		.4byte	.LASF4
 2239 005a 04       		.uleb128 0x4
 2240 005b C7010000 		.4byte	.LASF6
 2241 005f 02       		.byte	0x2
 2242 0060 3F       		.byte	0x3f
 2243 0061 65000000 		.4byte	0x65
 2244 0065 02       		.uleb128 0x2
 2245 0066 04       		.byte	0x4
 2246 0067 05       		.byte	0x5
 2247 0068 BA0D0000 		.4byte	.LASF7
ARM GAS  /tmp/ccmSFvTJ.s 			page 65


 2248 006c 04       		.uleb128 0x4
 2249 006d 000D0000 		.4byte	.LASF8
 2250 0071 02       		.byte	0x2
 2251 0072 41       		.byte	0x41
 2252 0073 77000000 		.4byte	0x77
 2253 0077 02       		.uleb128 0x2
 2254 0078 04       		.byte	0x4
 2255 0079 07       		.byte	0x7
 2256 007a B90F0000 		.4byte	.LASF9
 2257 007e 02       		.uleb128 0x2
 2258 007f 08       		.byte	0x8
 2259 0080 05       		.byte	0x5
 2260 0081 A3070000 		.4byte	.LASF10
 2261 0085 02       		.uleb128 0x2
 2262 0086 08       		.byte	0x8
 2263 0087 07       		.byte	0x7
 2264 0088 98040000 		.4byte	.LASF11
 2265 008c 04       		.uleb128 0x4
 2266 008d BB0C0000 		.4byte	.LASF12
 2267 0091 03       		.byte	0x3
 2268 0092 24       		.byte	0x24
 2269 0093 48000000 		.4byte	0x48
 2270 0097 04       		.uleb128 0x4
 2271 0098 26100000 		.4byte	.LASF13
 2272 009c 03       		.byte	0x3
 2273 009d 2C       		.byte	0x2c
 2274 009e 5A000000 		.4byte	0x5a
 2275 00a2 05       		.uleb128 0x5
 2276 00a3 97000000 		.4byte	0x97
 2277 00a7 04       		.uleb128 0x4
 2278 00a8 6A030000 		.4byte	.LASF14
 2279 00ac 03       		.byte	0x3
 2280 00ad 30       		.byte	0x30
 2281 00ae 6C000000 		.4byte	0x6c
 2282 00b2 05       		.uleb128 0x5
 2283 00b3 A7000000 		.4byte	0xa7
 2284 00b7 06       		.uleb128 0x6
 2285 00b8 B2000000 		.4byte	0xb2
 2286 00bc 07       		.uleb128 0x7
 2287 00bd 04       		.byte	0x4
 2288 00be 08       		.uleb128 0x8
 2289 00bf B2000000 		.4byte	0xb2
 2290 00c3 CE000000 		.4byte	0xce
 2291 00c7 09       		.uleb128 0x9
 2292 00c8 D3000000 		.4byte	0xd3
 2293 00cc 07       		.byte	0x7
 2294 00cd 00       		.byte	0
 2295 00ce 05       		.uleb128 0x5
 2296 00cf BE000000 		.4byte	0xbe
 2297 00d3 02       		.uleb128 0x2
 2298 00d4 04       		.byte	0x4
 2299 00d5 07       		.byte	0x7
 2300 00d6 B00F0000 		.4byte	.LASF15
 2301 00da 08       		.uleb128 0x8
 2302 00db B7000000 		.4byte	0xb7
 2303 00df EA000000 		.4byte	0xea
 2304 00e3 09       		.uleb128 0x9
ARM GAS  /tmp/ccmSFvTJ.s 			page 66


 2305 00e4 D3000000 		.4byte	0xd3
 2306 00e8 01       		.byte	0x1
 2307 00e9 00       		.byte	0
 2308 00ea 06       		.uleb128 0x6
 2309 00eb DA000000 		.4byte	0xda
 2310 00ef 05       		.uleb128 0x5
 2311 00f0 EA000000 		.4byte	0xea
 2312 00f4 05       		.uleb128 0x5
 2313 00f5 EA000000 		.4byte	0xea
 2314 00f9 05       		.uleb128 0x5
 2315 00fa EA000000 		.4byte	0xea
 2316 00fe 05       		.uleb128 0x5
 2317 00ff EA000000 		.4byte	0xea
 2318 0103 0A       		.uleb128 0xa
 2319 0104 CC0D0000 		.4byte	.LASF16
 2320 0108 04       		.byte	0x4
 2321 0109 6508     		.2byte	0x865
 2322 010b A2000000 		.4byte	0xa2
 2323 010f 0B       		.uleb128 0xb
 2324 0110 FB070000 		.4byte	.LASF17
 2325 0114 05       		.byte	0x5
 2326 0115 3A       		.byte	0x3a
 2327 0116 A7000000 		.4byte	0xa7
 2328 011a 08       		.uleb128 0x8
 2329 011b B7000000 		.4byte	0xb7
 2330 011f 2A010000 		.4byte	0x12a
 2331 0123 09       		.uleb128 0x9
 2332 0124 D3000000 		.4byte	0xd3
 2333 0128 06       		.byte	0x6
 2334 0129 00       		.byte	0
 2335 012a 06       		.uleb128 0x6
 2336 012b 1A010000 		.4byte	0x11a
 2337 012f 05       		.uleb128 0x5
 2338 0130 2A010000 		.4byte	0x12a
 2339 0134 08       		.uleb128 0x8
 2340 0135 B7000000 		.4byte	0xb7
 2341 0139 44010000 		.4byte	0x144
 2342 013d 09       		.uleb128 0x9
 2343 013e D3000000 		.4byte	0xd3
 2344 0142 05       		.byte	0x5
 2345 0143 00       		.byte	0
 2346 0144 06       		.uleb128 0x6
 2347 0145 34010000 		.4byte	0x134
 2348 0149 05       		.uleb128 0x5
 2349 014a 44010000 		.4byte	0x144
 2350 014e 08       		.uleb128 0x8
 2351 014f B7000000 		.4byte	0xb7
 2352 0153 5E010000 		.4byte	0x15e
 2353 0157 09       		.uleb128 0x9
 2354 0158 D3000000 		.4byte	0xd3
 2355 015c 00       		.byte	0
 2356 015d 00       		.byte	0
 2357 015e 06       		.uleb128 0x6
 2358 015f 4E010000 		.4byte	0x14e
 2359 0163 05       		.uleb128 0x5
 2360 0164 5E010000 		.4byte	0x15e
 2361 0168 08       		.uleb128 0x8
ARM GAS  /tmp/ccmSFvTJ.s 			page 67


 2362 0169 B7000000 		.4byte	0xb7
 2363 016d 78010000 		.4byte	0x178
 2364 0171 09       		.uleb128 0x9
 2365 0172 D3000000 		.4byte	0xd3
 2366 0176 02       		.byte	0x2
 2367 0177 00       		.byte	0
 2368 0178 06       		.uleb128 0x6
 2369 0179 68010000 		.4byte	0x168
 2370 017d 05       		.uleb128 0x5
 2371 017e 78010000 		.4byte	0x178
 2372 0182 05       		.uleb128 0x5
 2373 0183 78010000 		.4byte	0x178
 2374 0187 05       		.uleb128 0x5
 2375 0188 78010000 		.4byte	0x178
 2376 018c 05       		.uleb128 0x5
 2377 018d 78010000 		.4byte	0x178
 2378 0191 08       		.uleb128 0x8
 2379 0192 B7000000 		.4byte	0xb7
 2380 0196 A1010000 		.4byte	0x1a1
 2381 019a 09       		.uleb128 0x9
 2382 019b D3000000 		.4byte	0xd3
 2383 019f 07       		.byte	0x7
 2384 01a0 00       		.byte	0
 2385 01a1 06       		.uleb128 0x6
 2386 01a2 91010000 		.4byte	0x191
 2387 01a6 05       		.uleb128 0x5
 2388 01a7 A1010000 		.4byte	0x1a1
 2389 01ab 0C       		.uleb128 0xc
 2390 01ac 20       		.byte	0x20
 2391 01ad 06       		.byte	0x6
 2392 01ae 38       		.byte	0x38
 2393 01af 14020000 		.4byte	0x214
 2394 01b3 0D       		.uleb128 0xd
 2395 01b4 17090000 		.4byte	.LASF18
 2396 01b8 06       		.byte	0x6
 2397 01b9 39       		.byte	0x39
 2398 01ba B2000000 		.4byte	0xb2
 2399 01be 00       		.byte	0
 2400 01bf 0D       		.uleb128 0xd
 2401 01c0 6D0E0000 		.4byte	.LASF19
 2402 01c4 06       		.byte	0x6
 2403 01c5 3A       		.byte	0x3a
 2404 01c6 B2000000 		.4byte	0xb2
 2405 01ca 04       		.byte	0x4
 2406 01cb 0D       		.uleb128 0xd
 2407 01cc 99120000 		.4byte	.LASF20
 2408 01d0 06       		.byte	0x6
 2409 01d1 3B       		.byte	0x3b
 2410 01d2 B2000000 		.4byte	0xb2
 2411 01d6 08       		.byte	0x8
 2412 01d7 0D       		.uleb128 0xd
 2413 01d8 10060000 		.4byte	.LASF21
 2414 01dc 06       		.byte	0x6
 2415 01dd 3C       		.byte	0x3c
 2416 01de B2000000 		.4byte	0xb2
 2417 01e2 0C       		.byte	0xc
 2418 01e3 0D       		.uleb128 0xd
ARM GAS  /tmp/ccmSFvTJ.s 			page 68


 2419 01e4 FF0D0000 		.4byte	.LASF22
 2420 01e8 06       		.byte	0x6
 2421 01e9 3D       		.byte	0x3d
 2422 01ea B2000000 		.4byte	0xb2
 2423 01ee 10       		.byte	0x10
 2424 01ef 0D       		.uleb128 0xd
 2425 01f0 AF130000 		.4byte	.LASF23
 2426 01f4 06       		.byte	0x6
 2427 01f5 3E       		.byte	0x3e
 2428 01f6 B7000000 		.4byte	0xb7
 2429 01fa 14       		.byte	0x14
 2430 01fb 0D       		.uleb128 0xd
 2431 01fc F0040000 		.4byte	.LASF24
 2432 0200 06       		.byte	0x6
 2433 0201 3F       		.byte	0x3f
 2434 0202 B2000000 		.4byte	0xb2
 2435 0206 18       		.byte	0x18
 2436 0207 0D       		.uleb128 0xd
 2437 0208 8F120000 		.4byte	.LASF25
 2438 020c 06       		.byte	0x6
 2439 020d 40       		.byte	0x40
 2440 020e B2000000 		.4byte	0xb2
 2441 0212 1C       		.byte	0x1c
 2442 0213 00       		.byte	0
 2443 0214 04       		.uleb128 0x4
 2444 0215 E3080000 		.4byte	.LASF26
 2445 0219 06       		.byte	0x6
 2446 021a 41       		.byte	0x41
 2447 021b AB010000 		.4byte	0x1ab
 2448 021f 0C       		.uleb128 0xc
 2449 0220 10       		.byte	0x10
 2450 0221 06       		.byte	0x6
 2451 0222 43       		.byte	0x43
 2452 0223 58020000 		.4byte	0x258
 2453 0227 0D       		.uleb128 0xd
 2454 0228 A0000000 		.4byte	.LASF27
 2455 022c 06       		.byte	0x6
 2456 022d 44       		.byte	0x44
 2457 022e B2000000 		.4byte	0xb2
 2458 0232 00       		.byte	0
 2459 0233 0D       		.uleb128 0xd
 2460 0234 BF140000 		.4byte	.LASF28
 2461 0238 06       		.byte	0x6
 2462 0239 45       		.byte	0x45
 2463 023a B2000000 		.4byte	0xb2
 2464 023e 04       		.byte	0x4
 2465 023f 0D       		.uleb128 0xd
 2466 0240 82030000 		.4byte	.LASF29
 2467 0244 06       		.byte	0x6
 2468 0245 46       		.byte	0x46
 2469 0246 B2000000 		.4byte	0xb2
 2470 024a 08       		.byte	0x8
 2471 024b 0D       		.uleb128 0xd
 2472 024c CB0F0000 		.4byte	.LASF30
 2473 0250 06       		.byte	0x6
 2474 0251 47       		.byte	0x47
 2475 0252 B2000000 		.4byte	0xb2
ARM GAS  /tmp/ccmSFvTJ.s 			page 69


 2476 0256 0C       		.byte	0xc
 2477 0257 00       		.byte	0
 2478 0258 04       		.uleb128 0x4
 2479 0259 2E030000 		.4byte	.LASF31
 2480 025d 06       		.byte	0x6
 2481 025e 48       		.byte	0x48
 2482 025f 1F020000 		.4byte	0x21f
 2483 0263 0E       		.uleb128 0xe
 2484 0264 9404     		.2byte	0x494
 2485 0266 06       		.byte	0x6
 2486 0267 4C       		.byte	0x4c
 2487 0268 84050000 		.4byte	0x584
 2488 026c 0D       		.uleb128 0xd
 2489 026d B1070000 		.4byte	.LASF32
 2490 0271 06       		.byte	0x6
 2491 0272 4D       		.byte	0x4d
 2492 0273 B2000000 		.4byte	0xb2
 2493 0277 00       		.byte	0
 2494 0278 0D       		.uleb128 0xd
 2495 0279 CF050000 		.4byte	.LASF33
 2496 027d 06       		.byte	0x6
 2497 027e 4E       		.byte	0x4e
 2498 027f B2000000 		.4byte	0xb2
 2499 0283 04       		.byte	0x4
 2500 0284 0D       		.uleb128 0xd
 2501 0285 E6130000 		.4byte	.LASF34
 2502 0289 06       		.byte	0x6
 2503 028a 4F       		.byte	0x4f
 2504 028b B2000000 		.4byte	0xb2
 2505 028f 08       		.byte	0x8
 2506 0290 0D       		.uleb128 0xd
 2507 0291 C4040000 		.4byte	.LASF35
 2508 0295 06       		.byte	0x6
 2509 0296 50       		.byte	0x50
 2510 0297 B7000000 		.4byte	0xb7
 2511 029b 0C       		.byte	0xc
 2512 029c 0D       		.uleb128 0xd
 2513 029d 12080000 		.4byte	.LASF36
 2514 02a1 06       		.byte	0x6
 2515 02a2 51       		.byte	0x51
 2516 02a3 B2000000 		.4byte	0xb2
 2517 02a7 10       		.byte	0x10
 2518 02a8 0D       		.uleb128 0xd
 2519 02a9 4E000000 		.4byte	.LASF37
 2520 02ad 06       		.byte	0x6
 2521 02ae 52       		.byte	0x52
 2522 02af B2000000 		.4byte	0xb2
 2523 02b3 14       		.byte	0x14
 2524 02b4 0D       		.uleb128 0xd
 2525 02b5 06100000 		.4byte	.LASF38
 2526 02b9 06       		.byte	0x6
 2527 02ba 53       		.byte	0x53
 2528 02bb B7000000 		.4byte	0xb7
 2529 02bf 18       		.byte	0x18
 2530 02c0 0D       		.uleb128 0xd
 2531 02c1 75140000 		.4byte	.LASF39
 2532 02c5 06       		.byte	0x6
ARM GAS  /tmp/ccmSFvTJ.s 			page 70


 2533 02c6 54       		.byte	0x54
 2534 02c7 B7000000 		.4byte	0xb7
 2535 02cb 1C       		.byte	0x1c
 2536 02cc 0D       		.uleb128 0xd
 2537 02cd B7020000 		.4byte	.LASF40
 2538 02d1 06       		.byte	0x6
 2539 02d2 55       		.byte	0x55
 2540 02d3 B2000000 		.4byte	0xb2
 2541 02d7 20       		.byte	0x20
 2542 02d8 0D       		.uleb128 0xd
 2543 02d9 640C0000 		.4byte	.LASF41
 2544 02dd 06       		.byte	0x6
 2545 02de 56       		.byte	0x56
 2546 02df B2000000 		.4byte	0xb2
 2547 02e3 24       		.byte	0x24
 2548 02e4 0D       		.uleb128 0xd
 2549 02e5 BF0B0000 		.4byte	.LASF42
 2550 02e9 06       		.byte	0x6
 2551 02ea 57       		.byte	0x57
 2552 02eb B2000000 		.4byte	0xb2
 2553 02ef 28       		.byte	0x28
 2554 02f0 0D       		.uleb128 0xd
 2555 02f1 360C0000 		.4byte	.LASF43
 2556 02f5 06       		.byte	0x6
 2557 02f6 58       		.byte	0x58
 2558 02f7 B2000000 		.4byte	0xb2
 2559 02fb 2C       		.byte	0x2c
 2560 02fc 0D       		.uleb128 0xd
 2561 02fd 5D050000 		.4byte	.LASF44
 2562 0301 06       		.byte	0x6
 2563 0302 59       		.byte	0x59
 2564 0303 B2000000 		.4byte	0xb2
 2565 0307 30       		.byte	0x30
 2566 0308 0D       		.uleb128 0xd
 2567 0309 1B080000 		.4byte	.LASF45
 2568 030d 06       		.byte	0x6
 2569 030e 5A       		.byte	0x5a
 2570 030f B2000000 		.4byte	0xb2
 2571 0313 34       		.byte	0x34
 2572 0314 0D       		.uleb128 0xd
 2573 0315 57000000 		.4byte	.LASF46
 2574 0319 06       		.byte	0x6
 2575 031a 5B       		.byte	0x5b
 2576 031b B2000000 		.4byte	0xb2
 2577 031f 38       		.byte	0x38
 2578 0320 0D       		.uleb128 0xd
 2579 0321 1D100000 		.4byte	.LASF47
 2580 0325 06       		.byte	0x6
 2581 0326 5C       		.byte	0x5c
 2582 0327 B7000000 		.4byte	0xb7
 2583 032b 3C       		.byte	0x3c
 2584 032c 0D       		.uleb128 0xd
 2585 032d 7E140000 		.4byte	.LASF48
 2586 0331 06       		.byte	0x6
 2587 0332 5D       		.byte	0x5d
 2588 0333 B7000000 		.4byte	0xb7
 2589 0337 40       		.byte	0x40
ARM GAS  /tmp/ccmSFvTJ.s 			page 71


 2590 0338 0D       		.uleb128 0xd
 2591 0339 53070000 		.4byte	.LASF49
 2592 033d 06       		.byte	0x6
 2593 033e 5E       		.byte	0x5e
 2594 033f B2000000 		.4byte	0xb2
 2595 0343 44       		.byte	0x44
 2596 0344 0D       		.uleb128 0xd
 2597 0345 3D130000 		.4byte	.LASF50
 2598 0349 06       		.byte	0x6
 2599 034a 5F       		.byte	0x5f
 2600 034b B2000000 		.4byte	0xb2
 2601 034f 48       		.byte	0x48
 2602 0350 0D       		.uleb128 0xd
 2603 0351 B30C0000 		.4byte	.LASF51
 2604 0355 06       		.byte	0x6
 2605 0356 60       		.byte	0x60
 2606 0357 B2000000 		.4byte	0xb2
 2607 035b 4C       		.byte	0x4c
 2608 035c 0D       		.uleb128 0xd
 2609 035d BC000000 		.4byte	.LASF52
 2610 0361 06       		.byte	0x6
 2611 0362 61       		.byte	0x61
 2612 0363 B2000000 		.4byte	0xb2
 2613 0367 50       		.byte	0x50
 2614 0368 0D       		.uleb128 0xd
 2615 0369 D1140000 		.4byte	.LASF53
 2616 036d 06       		.byte	0x6
 2617 036e 62       		.byte	0x62
 2618 036f B2000000 		.4byte	0xb2
 2619 0373 54       		.byte	0x54
 2620 0374 0D       		.uleb128 0xd
 2621 0375 11110000 		.4byte	.LASF54
 2622 0379 06       		.byte	0x6
 2623 037a 63       		.byte	0x63
 2624 037b B2000000 		.4byte	0xb2
 2625 037f 58       		.byte	0x58
 2626 0380 0D       		.uleb128 0xd
 2627 0381 44090000 		.4byte	.LASF55
 2628 0385 06       		.byte	0x6
 2629 0386 64       		.byte	0x64
 2630 0387 B2000000 		.4byte	0xb2
 2631 038b 5C       		.byte	0x5c
 2632 038c 0D       		.uleb128 0xd
 2633 038d EC000000 		.4byte	.LASF56
 2634 0391 06       		.byte	0x6
 2635 0392 65       		.byte	0x65
 2636 0393 B7000000 		.4byte	0xb7
 2637 0397 60       		.byte	0x60
 2638 0398 0D       		.uleb128 0xd
 2639 0399 390F0000 		.4byte	.LASF57
 2640 039d 06       		.byte	0x6
 2641 039e 66       		.byte	0x66
 2642 039f B2000000 		.4byte	0xb2
 2643 03a3 64       		.byte	0x64
 2644 03a4 0D       		.uleb128 0xd
 2645 03a5 87050000 		.4byte	.LASF58
 2646 03a9 06       		.byte	0x6
ARM GAS  /tmp/ccmSFvTJ.s 			page 72


 2647 03aa 67       		.byte	0x67
 2648 03ab B2000000 		.4byte	0xb2
 2649 03af 68       		.byte	0x68
 2650 03b0 0D       		.uleb128 0xd
 2651 03b1 B0080000 		.4byte	.LASF59
 2652 03b5 06       		.byte	0x6
 2653 03b6 68       		.byte	0x68
 2654 03b7 B2000000 		.4byte	0xb2
 2655 03bb 6C       		.byte	0x6c
 2656 03bc 0D       		.uleb128 0xd
 2657 03bd E60A0000 		.4byte	.LASF60
 2658 03c1 06       		.byte	0x6
 2659 03c2 69       		.byte	0x69
 2660 03c3 7D010000 		.4byte	0x17d
 2661 03c7 70       		.byte	0x70
 2662 03c8 0D       		.uleb128 0xd
 2663 03c9 1F090000 		.4byte	.LASF61
 2664 03cd 06       		.byte	0x6
 2665 03ce 6A       		.byte	0x6a
 2666 03cf CE000000 		.4byte	0xce
 2667 03d3 7C       		.byte	0x7c
 2668 03d4 0D       		.uleb128 0xd
 2669 03d5 F00A0000 		.4byte	.LASF62
 2670 03d9 06       		.byte	0x6
 2671 03da 6B       		.byte	0x6b
 2672 03db 63010000 		.4byte	0x163
 2673 03df 9C       		.byte	0x9c
 2674 03e0 0D       		.uleb128 0xd
 2675 03e1 CB0C0000 		.4byte	.LASF63
 2676 03e5 06       		.byte	0x6
 2677 03e6 6C       		.byte	0x6c
 2678 03e7 B2000000 		.4byte	0xb2
 2679 03eb A0       		.byte	0xa0
 2680 03ec 0D       		.uleb128 0xd
 2681 03ed 8B080000 		.4byte	.LASF64
 2682 03f1 06       		.byte	0x6
 2683 03f2 6D       		.byte	0x6d
 2684 03f3 B2000000 		.4byte	0xb2
 2685 03f7 A4       		.byte	0xa4
 2686 03f8 0D       		.uleb128 0xd
 2687 03f9 FA0A0000 		.4byte	.LASF65
 2688 03fd 06       		.byte	0x6
 2689 03fe 6E       		.byte	0x6e
 2690 03ff EF000000 		.4byte	0xef
 2691 0403 A8       		.byte	0xa8
 2692 0404 0D       		.uleb128 0xd
 2693 0405 F4000000 		.4byte	.LASF66
 2694 0409 06       		.byte	0x6
 2695 040a 6F       		.byte	0x6f
 2696 040b B2000000 		.4byte	0xb2
 2697 040f B0       		.byte	0xb0
 2698 0410 0D       		.uleb128 0xd
 2699 0411 040B0000 		.4byte	.LASF67
 2700 0415 06       		.byte	0x6
 2701 0416 70       		.byte	0x70
 2702 0417 82010000 		.4byte	0x182
 2703 041b B4       		.byte	0xb4
ARM GAS  /tmp/ccmSFvTJ.s 			page 73


 2704 041c 0D       		.uleb128 0xd
 2705 041d 90050000 		.4byte	.LASF68
 2706 0421 06       		.byte	0x6
 2707 0422 71       		.byte	0x71
 2708 0423 B2000000 		.4byte	0xb2
 2709 0427 C0       		.byte	0xc0
 2710 0428 0D       		.uleb128 0xd
 2711 0429 A60F0000 		.4byte	.LASF69
 2712 042d 06       		.byte	0x6
 2713 042e 72       		.byte	0x72
 2714 042f A6010000 		.4byte	0x1a6
 2715 0433 C4       		.byte	0xc4
 2716 0434 0D       		.uleb128 0xd
 2717 0435 09130000 		.4byte	.LASF70
 2718 0439 06       		.byte	0x6
 2719 043a 73       		.byte	0x73
 2720 043b B2000000 		.4byte	0xb2
 2721 043f E4       		.byte	0xe4
 2722 0440 0D       		.uleb128 0xd
 2723 0441 130D0000 		.4byte	.LASF71
 2724 0445 06       		.byte	0x6
 2725 0446 74       		.byte	0x74
 2726 0447 B7000000 		.4byte	0xb7
 2727 044b E8       		.byte	0xe8
 2728 044c 0D       		.uleb128 0xd
 2729 044d 250B0000 		.4byte	.LASF72
 2730 0451 06       		.byte	0x6
 2731 0452 75       		.byte	0x75
 2732 0453 99050000 		.4byte	0x599
 2733 0457 EC       		.byte	0xec
 2734 0458 0F       		.uleb128 0xf
 2735 0459 0F090000 		.4byte	.LASF73
 2736 045d 06       		.byte	0x6
 2737 045e 76       		.byte	0x76
 2738 045f 9E050000 		.4byte	0x59e
 2739 0463 3001     		.2byte	0x130
 2740 0465 0F       		.uleb128 0xf
 2741 0466 9F0D0000 		.4byte	.LASF74
 2742 046a 06       		.byte	0x6
 2743 046b 77       		.byte	0x77
 2744 046c C3050000 		.4byte	0x5c3
 2745 0470 B001     		.2byte	0x1b0
 2746 0472 0F       		.uleb128 0xf
 2747 0473 08010000 		.4byte	.LASF75
 2748 0477 06       		.byte	0x6
 2749 0478 78       		.byte	0x78
 2750 0479 C8050000 		.4byte	0x5c8
 2751 047d 0002     		.2byte	0x200
 2752 047f 0F       		.uleb128 0xf
 2753 0480 3A0B0000 		.4byte	.LASF76
 2754 0484 06       		.byte	0x6
 2755 0485 79       		.byte	0x79
 2756 0486 ED050000 		.4byte	0x5ed
 2757 048a 8002     		.2byte	0x280
 2758 048c 0F       		.uleb128 0xf
 2759 048d 9E030000 		.4byte	.LASF77
 2760 0491 06       		.byte	0x6
ARM GAS  /tmp/ccmSFvTJ.s 			page 74


 2761 0492 7A       		.byte	0x7a
 2762 0493 B2000000 		.4byte	0xb2
 2763 0497 0004     		.2byte	0x400
 2764 0499 0F       		.uleb128 0xf
 2765 049a 440B0000 		.4byte	.LASF78
 2766 049e 06       		.byte	0x6
 2767 049f 7B       		.byte	0x7b
 2768 04a0 2F010000 		.4byte	0x12f
 2769 04a4 0404     		.2byte	0x404
 2770 04a6 0F       		.uleb128 0xf
 2771 04a7 A9030000 		.4byte	.LASF79
 2772 04ab 06       		.byte	0x6
 2773 04ac 7C       		.byte	0x7c
 2774 04ad B2000000 		.4byte	0xb2
 2775 04b1 2004     		.2byte	0x420
 2776 04b3 0F       		.uleb128 0xf
 2777 04b4 C5100000 		.4byte	.LASF80
 2778 04b8 06       		.byte	0x6
 2779 04b9 7D       		.byte	0x7d
 2780 04ba F4000000 		.4byte	0xf4
 2781 04be 2404     		.2byte	0x424
 2782 04c0 0F       		.uleb128 0xf
 2783 04c1 930E0000 		.4byte	.LASF81
 2784 04c5 06       		.byte	0x6
 2785 04c6 7E       		.byte	0x7e
 2786 04c7 B2000000 		.4byte	0xb2
 2787 04cb 2C04     		.2byte	0x42c
 2788 04cd 0F       		.uleb128 0xf
 2789 04ce 650B0000 		.4byte	.LASF82
 2790 04d2 06       		.byte	0x6
 2791 04d3 7F       		.byte	0x7f
 2792 04d4 B2000000 		.4byte	0xb2
 2793 04d8 3004     		.2byte	0x430
 2794 04da 0F       		.uleb128 0xf
 2795 04db D0100000 		.4byte	.LASF83
 2796 04df 06       		.byte	0x6
 2797 04e0 80       		.byte	0x80
 2798 04e1 87010000 		.4byte	0x187
 2799 04e5 3404     		.2byte	0x434
 2800 04e7 0F       		.uleb128 0xf
 2801 04e8 B4030000 		.4byte	.LASF84
 2802 04ec 06       		.byte	0x6
 2803 04ed 81       		.byte	0x81
 2804 04ee B2000000 		.4byte	0xb2
 2805 04f2 4004     		.2byte	0x440
 2806 04f4 0F       		.uleb128 0xf
 2807 04f5 DB100000 		.4byte	.LASF85
 2808 04f9 06       		.byte	0x6
 2809 04fa 82       		.byte	0x82
 2810 04fb F9000000 		.4byte	0xf9
 2811 04ff 4404     		.2byte	0x444
 2812 0501 0F       		.uleb128 0xf
 2813 0502 9D0E0000 		.4byte	.LASF86
 2814 0506 06       		.byte	0x6
 2815 0507 83       		.byte	0x83
 2816 0508 B2000000 		.4byte	0xb2
 2817 050c 4C04     		.2byte	0x44c
ARM GAS  /tmp/ccmSFvTJ.s 			page 75


 2818 050e 0F       		.uleb128 0xf
 2819 050f 6E000000 		.4byte	.LASF87
 2820 0513 06       		.byte	0x6
 2821 0514 84       		.byte	0x84
 2822 0515 B2000000 		.4byte	0xb2
 2823 0519 5004     		.2byte	0x450
 2824 051b 0F       		.uleb128 0xf
 2825 051c E6100000 		.4byte	.LASF88
 2826 0520 06       		.byte	0x6
 2827 0521 85       		.byte	0x85
 2828 0522 8C010000 		.4byte	0x18c
 2829 0526 5404     		.2byte	0x454
 2830 0528 0F       		.uleb128 0xf
 2831 0529 BF030000 		.4byte	.LASF89
 2832 052d 06       		.byte	0x6
 2833 052e 86       		.byte	0x86
 2834 052f B2000000 		.4byte	0xb2
 2835 0533 6004     		.2byte	0x460
 2836 0535 0F       		.uleb128 0xf
 2837 0536 F1100000 		.4byte	.LASF90
 2838 053a 06       		.byte	0x6
 2839 053b 87       		.byte	0x87
 2840 053c FE000000 		.4byte	0xfe
 2841 0540 6404     		.2byte	0x464
 2842 0542 0F       		.uleb128 0xf
 2843 0543 A70E0000 		.4byte	.LASF91
 2844 0547 06       		.byte	0x6
 2845 0548 88       		.byte	0x88
 2846 0549 B2000000 		.4byte	0xb2
 2847 054d 6C04     		.2byte	0x46c
 2848 054f 0F       		.uleb128 0xf
 2849 0550 78000000 		.4byte	.LASF92
 2850 0554 06       		.byte	0x6
 2851 0555 89       		.byte	0x89
 2852 0556 B2000000 		.4byte	0xb2
 2853 055a 7004     		.2byte	0x470
 2854 055c 0F       		.uleb128 0xf
 2855 055d FC100000 		.4byte	.LASF93
 2856 0561 06       		.byte	0x6
 2857 0562 8A       		.byte	0x8a
 2858 0563 49010000 		.4byte	0x149
 2859 0567 7404     		.2byte	0x474
 2860 0569 0F       		.uleb128 0xf
 2861 056a B10E0000 		.4byte	.LASF94
 2862 056e 06       		.byte	0x6
 2863 056f 8B       		.byte	0x8b
 2864 0570 B2000000 		.4byte	0xb2
 2865 0574 8C04     		.2byte	0x48c
 2866 0576 0F       		.uleb128 0xf
 2867 0577 82000000 		.4byte	.LASF95
 2868 057b 06       		.byte	0x6
 2869 057c 8C       		.byte	0x8c
 2870 057d B2000000 		.4byte	0xb2
 2871 0581 9004     		.2byte	0x490
 2872 0583 00       		.byte	0
 2873 0584 08       		.uleb128 0x8
 2874 0585 B7000000 		.4byte	0xb7
ARM GAS  /tmp/ccmSFvTJ.s 			page 76


 2875 0589 94050000 		.4byte	0x594
 2876 058d 09       		.uleb128 0x9
 2877 058e D3000000 		.4byte	0xd3
 2878 0592 10       		.byte	0x10
 2879 0593 00       		.byte	0
 2880 0594 06       		.uleb128 0x6
 2881 0595 84050000 		.4byte	0x584
 2882 0599 05       		.uleb128 0x5
 2883 059a 94050000 		.4byte	0x594
 2884 059e 08       		.uleb128 0x8
 2885 059f 58020000 		.4byte	0x258
 2886 05a3 AE050000 		.4byte	0x5ae
 2887 05a7 09       		.uleb128 0x9
 2888 05a8 D3000000 		.4byte	0xd3
 2889 05ac 07       		.byte	0x7
 2890 05ad 00       		.byte	0
 2891 05ae 08       		.uleb128 0x8
 2892 05af B7000000 		.4byte	0xb7
 2893 05b3 BE050000 		.4byte	0x5be
 2894 05b7 09       		.uleb128 0x9
 2895 05b8 D3000000 		.4byte	0xd3
 2896 05bc 13       		.byte	0x13
 2897 05bd 00       		.byte	0
 2898 05be 06       		.uleb128 0x6
 2899 05bf AE050000 		.4byte	0x5ae
 2900 05c3 05       		.uleb128 0x5
 2901 05c4 BE050000 		.4byte	0x5be
 2902 05c8 08       		.uleb128 0x8
 2903 05c9 14020000 		.4byte	0x214
 2904 05cd D8050000 		.4byte	0x5d8
 2905 05d1 09       		.uleb128 0x9
 2906 05d2 D3000000 		.4byte	0xd3
 2907 05d6 03       		.byte	0x3
 2908 05d7 00       		.byte	0
 2909 05d8 08       		.uleb128 0x8
 2910 05d9 B7000000 		.4byte	0xb7
 2911 05dd E8050000 		.4byte	0x5e8
 2912 05e1 09       		.uleb128 0x9
 2913 05e2 D3000000 		.4byte	0xd3
 2914 05e6 5F       		.byte	0x5f
 2915 05e7 00       		.byte	0
 2916 05e8 06       		.uleb128 0x6
 2917 05e9 D8050000 		.4byte	0x5d8
 2918 05ed 05       		.uleb128 0x5
 2919 05ee E8050000 		.4byte	0x5e8
 2920 05f2 10       		.uleb128 0x10
 2921 05f3 50776D00 		.ascii	"Pwm\000"
 2922 05f7 06       		.byte	0x6
 2923 05f8 8D       		.byte	0x8d
 2924 05f9 63020000 		.4byte	0x263
 2925 05fd 04       		.uleb128 0x4
 2926 05fe 24110000 		.4byte	.LASF96
 2927 0602 07       		.byte	0x7
 2928 0603 07       		.byte	0x7
 2929 0604 2C000000 		.4byte	0x2c
 2930 0608 04       		.uleb128 0x4
 2931 0609 16140000 		.4byte	.LASF97
ARM GAS  /tmp/ccmSFvTJ.s 			page 77


 2932 060d 08       		.byte	0x8
 2933 060e 2C       		.byte	0x2c
 2934 060f 65000000 		.4byte	0x65
 2935 0613 04       		.uleb128 0x4
 2936 0614 BF020000 		.4byte	.LASF98
 2937 0618 08       		.byte	0x8
 2938 0619 72       		.byte	0x72
 2939 061a 65000000 		.4byte	0x65
 2940 061e 11       		.uleb128 0x11
 2941 061f FF0F0000 		.4byte	.LASF99
 2942 0623 09       		.byte	0x9
 2943 0624 6501     		.2byte	0x165
 2944 0626 25000000 		.4byte	0x25
 2945 062a 12       		.uleb128 0x12
 2946 062b 04       		.byte	0x4
 2947 062c 08       		.byte	0x8
 2948 062d A6       		.byte	0xa6
 2949 062e 49060000 		.4byte	0x649
 2950 0632 13       		.uleb128 0x13
 2951 0633 DD080000 		.4byte	.LASF100
 2952 0637 08       		.byte	0x8
 2953 0638 A8       		.byte	0xa8
 2954 0639 1E060000 		.4byte	0x61e
 2955 063d 13       		.uleb128 0x13
 2956 063e 4A0E0000 		.4byte	.LASF101
 2957 0642 08       		.byte	0x8
 2958 0643 A9       		.byte	0xa9
 2959 0644 49060000 		.4byte	0x649
 2960 0648 00       		.byte	0
 2961 0649 08       		.uleb128 0x8
 2962 064a 3A000000 		.4byte	0x3a
 2963 064e 59060000 		.4byte	0x659
 2964 0652 09       		.uleb128 0x9
 2965 0653 D3000000 		.4byte	0xd3
 2966 0657 03       		.byte	0x3
 2967 0658 00       		.byte	0
 2968 0659 0C       		.uleb128 0xc
 2969 065a 08       		.byte	0x8
 2970 065b 08       		.byte	0x8
 2971 065c A3       		.byte	0xa3
 2972 065d 7A060000 		.4byte	0x67a
 2973 0661 0D       		.uleb128 0xd
 2974 0662 E0030000 		.4byte	.LASF102
 2975 0666 08       		.byte	0x8
 2976 0667 A5       		.byte	0xa5
 2977 0668 2C000000 		.4byte	0x2c
 2978 066c 00       		.byte	0
 2979 066d 0D       		.uleb128 0xd
 2980 066e 2D060000 		.4byte	.LASF103
 2981 0672 08       		.byte	0x8
 2982 0673 AA       		.byte	0xaa
 2983 0674 2A060000 		.4byte	0x62a
 2984 0678 04       		.byte	0x4
 2985 0679 00       		.byte	0
 2986 067a 04       		.uleb128 0x4
 2987 067b 40060000 		.4byte	.LASF104
 2988 067f 08       		.byte	0x8
ARM GAS  /tmp/ccmSFvTJ.s 			page 78


 2989 0680 AB       		.byte	0xab
 2990 0681 59060000 		.4byte	0x659
 2991 0685 04       		.uleb128 0x4
 2992 0686 11000000 		.4byte	.LASF105
 2993 068a 08       		.byte	0x8
 2994 068b AF       		.byte	0xaf
 2995 068c FD050000 		.4byte	0x5fd
 2996 0690 04       		.uleb128 0x4
 2997 0691 80020000 		.4byte	.LASF106
 2998 0695 0A       		.byte	0xa
 2999 0696 16       		.byte	0x16
 3000 0697 77000000 		.4byte	0x77
 3001 069b 14       		.uleb128 0x14
 3002 069c 1E030000 		.4byte	.LASF111
 3003 06a0 18       		.byte	0x18
 3004 06a1 0A       		.byte	0xa
 3005 06a2 2D       		.byte	0x2d
 3006 06a3 EE060000 		.4byte	0x6ee
 3007 06a7 0D       		.uleb128 0xd
 3008 06a8 A5060000 		.4byte	.LASF107
 3009 06ac 0A       		.byte	0xa
 3010 06ad 2F       		.byte	0x2f
 3011 06ae EE060000 		.4byte	0x6ee
 3012 06b2 00       		.byte	0
 3013 06b3 15       		.uleb128 0x15
 3014 06b4 5F6B00   		.ascii	"_k\000"
 3015 06b7 0A       		.byte	0xa
 3016 06b8 30       		.byte	0x30
 3017 06b9 2C000000 		.4byte	0x2c
 3018 06bd 04       		.byte	0x4
 3019 06be 0D       		.uleb128 0xd
 3020 06bf 270F0000 		.4byte	.LASF108
 3021 06c3 0A       		.byte	0xa
 3022 06c4 30       		.byte	0x30
 3023 06c5 2C000000 		.4byte	0x2c
 3024 06c9 08       		.byte	0x8
 3025 06ca 0D       		.uleb128 0xd
 3026 06cb DE0D0000 		.4byte	.LASF109
 3027 06cf 0A       		.byte	0xa
 3028 06d0 30       		.byte	0x30
 3029 06d1 2C000000 		.4byte	0x2c
 3030 06d5 0C       		.byte	0xc
 3031 06d6 0D       		.uleb128 0xd
 3032 06d7 D3040000 		.4byte	.LASF110
 3033 06db 0A       		.byte	0xa
 3034 06dc 30       		.byte	0x30
 3035 06dd 2C000000 		.4byte	0x2c
 3036 06e1 10       		.byte	0x10
 3037 06e2 15       		.uleb128 0x15
 3038 06e3 5F7800   		.ascii	"_x\000"
 3039 06e6 0A       		.byte	0xa
 3040 06e7 31       		.byte	0x31
 3041 06e8 F4060000 		.4byte	0x6f4
 3042 06ec 14       		.byte	0x14
 3043 06ed 00       		.byte	0
 3044 06ee 16       		.uleb128 0x16
 3045 06ef 04       		.byte	0x4
ARM GAS  /tmp/ccmSFvTJ.s 			page 79


 3046 06f0 9B060000 		.4byte	0x69b
 3047 06f4 08       		.uleb128 0x8
 3048 06f5 90060000 		.4byte	0x690
 3049 06f9 04070000 		.4byte	0x704
 3050 06fd 09       		.uleb128 0x9
 3051 06fe D3000000 		.4byte	0xd3
 3052 0702 00       		.byte	0
 3053 0703 00       		.byte	0
 3054 0704 14       		.uleb128 0x14
 3055 0705 7F0F0000 		.4byte	.LASF112
 3056 0709 24       		.byte	0x24
 3057 070a 0A       		.byte	0xa
 3058 070b 35       		.byte	0x35
 3059 070c 7D070000 		.4byte	0x77d
 3060 0710 0D       		.uleb128 0xd
 3061 0711 FB050000 		.4byte	.LASF113
 3062 0715 0A       		.byte	0xa
 3063 0716 37       		.byte	0x37
 3064 0717 2C000000 		.4byte	0x2c
 3065 071b 00       		.byte	0
 3066 071c 0D       		.uleb128 0xd
 3067 071d 0F040000 		.4byte	.LASF114
 3068 0721 0A       		.byte	0xa
 3069 0722 38       		.byte	0x38
 3070 0723 2C000000 		.4byte	0x2c
 3071 0727 04       		.byte	0x4
 3072 0728 0D       		.uleb128 0xd
 3073 0729 78030000 		.4byte	.LASF115
 3074 072d 0A       		.byte	0xa
 3075 072e 39       		.byte	0x39
 3076 072f 2C000000 		.4byte	0x2c
 3077 0733 08       		.byte	0x8
 3078 0734 0D       		.uleb128 0xd
 3079 0735 13010000 		.4byte	.LASF116
 3080 0739 0A       		.byte	0xa
 3081 073a 3A       		.byte	0x3a
 3082 073b 2C000000 		.4byte	0x2c
 3083 073f 0C       		.byte	0xc
 3084 0740 0D       		.uleb128 0xd
 3085 0741 3F0C0000 		.4byte	.LASF117
 3086 0745 0A       		.byte	0xa
 3087 0746 3B       		.byte	0x3b
 3088 0747 2C000000 		.4byte	0x2c
 3089 074b 10       		.byte	0x10
 3090 074c 0D       		.uleb128 0xd
 3091 074d 760E0000 		.4byte	.LASF118
 3092 0751 0A       		.byte	0xa
 3093 0752 3C       		.byte	0x3c
 3094 0753 2C000000 		.4byte	0x2c
 3095 0757 14       		.byte	0x14
 3096 0758 0D       		.uleb128 0xd
 3097 0759 35030000 		.4byte	.LASF119
 3098 075d 0A       		.byte	0xa
 3099 075e 3D       		.byte	0x3d
 3100 075f 2C000000 		.4byte	0x2c
 3101 0763 18       		.byte	0x18
 3102 0764 0D       		.uleb128 0xd
ARM GAS  /tmp/ccmSFvTJ.s 			page 80


 3103 0765 23060000 		.4byte	.LASF120
 3104 0769 0A       		.byte	0xa
 3105 076a 3E       		.byte	0x3e
 3106 076b 2C000000 		.4byte	0x2c
 3107 076f 1C       		.byte	0x1c
 3108 0770 0D       		.uleb128 0xd
 3109 0771 2F0B0000 		.4byte	.LASF121
 3110 0775 0A       		.byte	0xa
 3111 0776 3F       		.byte	0x3f
 3112 0777 2C000000 		.4byte	0x2c
 3113 077b 20       		.byte	0x20
 3114 077c 00       		.byte	0
 3115 077d 17       		.uleb128 0x17
 3116 077e AE000000 		.4byte	.LASF122
 3117 0782 0801     		.2byte	0x108
 3118 0784 0A       		.byte	0xa
 3119 0785 48       		.byte	0x48
 3120 0786 BD070000 		.4byte	0x7bd
 3121 078a 0D       		.uleb128 0xd
 3122 078b 44130000 		.4byte	.LASF123
 3123 078f 0A       		.byte	0xa
 3124 0790 49       		.byte	0x49
 3125 0791 BD070000 		.4byte	0x7bd
 3126 0795 00       		.byte	0
 3127 0796 0D       		.uleb128 0xd
 3128 0797 67100000 		.4byte	.LASF124
 3129 079b 0A       		.byte	0xa
 3130 079c 4A       		.byte	0x4a
 3131 079d BD070000 		.4byte	0x7bd
 3132 07a1 80       		.byte	0x80
 3133 07a2 0F       		.uleb128 0xf
 3134 07a3 C1130000 		.4byte	.LASF125
 3135 07a7 0A       		.byte	0xa
 3136 07a8 4C       		.byte	0x4c
 3137 07a9 90060000 		.4byte	0x690
 3138 07ad 0001     		.2byte	0x100
 3139 07af 0F       		.uleb128 0xf
 3140 07b0 87140000 		.4byte	.LASF126
 3141 07b4 0A       		.byte	0xa
 3142 07b5 4F       		.byte	0x4f
 3143 07b6 90060000 		.4byte	0x690
 3144 07ba 0401     		.2byte	0x104
 3145 07bc 00       		.byte	0
 3146 07bd 08       		.uleb128 0x8
 3147 07be BC000000 		.4byte	0xbc
 3148 07c2 CD070000 		.4byte	0x7cd
 3149 07c6 09       		.uleb128 0x9
 3150 07c7 D3000000 		.4byte	0xd3
 3151 07cb 1F       		.byte	0x1f
 3152 07cc 00       		.byte	0
 3153 07cd 17       		.uleb128 0x17
 3154 07ce 1C0D0000 		.4byte	.LASF127
 3155 07d2 9001     		.2byte	0x190
 3156 07d4 0A       		.byte	0xa
 3157 07d5 5B       		.byte	0x5b
 3158 07d6 0B080000 		.4byte	0x80b
 3159 07da 0D       		.uleb128 0xd
ARM GAS  /tmp/ccmSFvTJ.s 			page 81


 3160 07db A5060000 		.4byte	.LASF107
 3161 07df 0A       		.byte	0xa
 3162 07e0 5C       		.byte	0x5c
 3163 07e1 0B080000 		.4byte	0x80b
 3164 07e5 00       		.byte	0
 3165 07e6 0D       		.uleb128 0xd
 3166 07e7 A30B0000 		.4byte	.LASF128
 3167 07eb 0A       		.byte	0xa
 3168 07ec 5D       		.byte	0x5d
 3169 07ed 2C000000 		.4byte	0x2c
 3170 07f1 04       		.byte	0x4
 3171 07f2 0D       		.uleb128 0xd
 3172 07f3 D4020000 		.4byte	.LASF129
 3173 07f7 0A       		.byte	0xa
 3174 07f8 5F       		.byte	0x5f
 3175 07f9 11080000 		.4byte	0x811
 3176 07fd 08       		.byte	0x8
 3177 07fe 0D       		.uleb128 0xd
 3178 07ff AE000000 		.4byte	.LASF122
 3179 0803 0A       		.byte	0xa
 3180 0804 60       		.byte	0x60
 3181 0805 7D070000 		.4byte	0x77d
 3182 0809 88       		.byte	0x88
 3183 080a 00       		.byte	0
 3184 080b 16       		.uleb128 0x16
 3185 080c 04       		.byte	0x4
 3186 080d CD070000 		.4byte	0x7cd
 3187 0811 08       		.uleb128 0x8
 3188 0812 21080000 		.4byte	0x821
 3189 0816 21080000 		.4byte	0x821
 3190 081a 09       		.uleb128 0x9
 3191 081b D3000000 		.4byte	0xd3
 3192 081f 1F       		.byte	0x1f
 3193 0820 00       		.byte	0
 3194 0821 16       		.uleb128 0x16
 3195 0822 04       		.byte	0x4
 3196 0823 27080000 		.4byte	0x827
 3197 0827 18       		.uleb128 0x18
 3198 0828 14       		.uleb128 0x14
 3199 0829 C40C0000 		.4byte	.LASF130
 3200 082d 08       		.byte	0x8
 3201 082e 0A       		.byte	0xa
 3202 082f 73       		.byte	0x73
 3203 0830 4D080000 		.4byte	0x84d
 3204 0834 0D       		.uleb128 0xd
 3205 0835 C7090000 		.4byte	.LASF131
 3206 0839 0A       		.byte	0xa
 3207 083a 74       		.byte	0x74
 3208 083b 4D080000 		.4byte	0x84d
 3209 083f 00       		.byte	0
 3210 0840 0D       		.uleb128 0xd
 3211 0841 D9130000 		.4byte	.LASF132
 3212 0845 0A       		.byte	0xa
 3213 0846 75       		.byte	0x75
 3214 0847 2C000000 		.4byte	0x2c
 3215 084b 04       		.byte	0x4
 3216 084c 00       		.byte	0
ARM GAS  /tmp/ccmSFvTJ.s 			page 82


 3217 084d 16       		.uleb128 0x16
 3218 084e 04       		.byte	0x4
 3219 084f 3A000000 		.4byte	0x3a
 3220 0853 14       		.uleb128 0x14
 3221 0854 CB040000 		.4byte	.LASF133
 3222 0858 68       		.byte	0x68
 3223 0859 0A       		.byte	0xa
 3224 085a B3       		.byte	0xb3
 3225 085b 7D090000 		.4byte	0x97d
 3226 085f 15       		.uleb128 0x15
 3227 0860 5F7000   		.ascii	"_p\000"
 3228 0863 0A       		.byte	0xa
 3229 0864 B4       		.byte	0xb4
 3230 0865 4D080000 		.4byte	0x84d
 3231 0869 00       		.byte	0
 3232 086a 15       		.uleb128 0x15
 3233 086b 5F7200   		.ascii	"_r\000"
 3234 086e 0A       		.byte	0xa
 3235 086f B5       		.byte	0xb5
 3236 0870 2C000000 		.4byte	0x2c
 3237 0874 04       		.byte	0x4
 3238 0875 15       		.uleb128 0x15
 3239 0876 5F7700   		.ascii	"_w\000"
 3240 0879 0A       		.byte	0xa
 3241 087a B6       		.byte	0xb6
 3242 087b 2C000000 		.4byte	0x2c
 3243 087f 08       		.byte	0x8
 3244 0880 0D       		.uleb128 0xd
 3245 0881 A9010000 		.4byte	.LASF134
 3246 0885 0A       		.byte	0xa
 3247 0886 B7       		.byte	0xb7
 3248 0887 41000000 		.4byte	0x41
 3249 088b 0C       		.byte	0xc
 3250 088c 0D       		.uleb128 0xd
 3251 088d 680A0000 		.4byte	.LASF135
 3252 0891 0A       		.byte	0xa
 3253 0892 B8       		.byte	0xb8
 3254 0893 41000000 		.4byte	0x41
 3255 0897 0E       		.byte	0xe
 3256 0898 15       		.uleb128 0x15
 3257 0899 5F626600 		.ascii	"_bf\000"
 3258 089d 0A       		.byte	0xa
 3259 089e B9       		.byte	0xb9
 3260 089f 28080000 		.4byte	0x828
 3261 08a3 10       		.byte	0x10
 3262 08a4 0D       		.uleb128 0xd
 3263 08a5 A0010000 		.4byte	.LASF136
 3264 08a9 0A       		.byte	0xa
 3265 08aa BA       		.byte	0xba
 3266 08ab 2C000000 		.4byte	0x2c
 3267 08af 18       		.byte	0x18
 3268 08b0 0D       		.uleb128 0xd
 3269 08b1 D9020000 		.4byte	.LASF137
 3270 08b5 0A       		.byte	0xa
 3271 08b6 C1       		.byte	0xc1
 3272 08b7 BC000000 		.4byte	0xbc
 3273 08bb 1C       		.byte	0x1c
ARM GAS  /tmp/ccmSFvTJ.s 			page 83


 3274 08bc 0D       		.uleb128 0xd
 3275 08bd 69020000 		.4byte	.LASF138
 3276 08c1 0A       		.byte	0xa
 3277 08c2 C3       		.byte	0xc3
 3278 08c3 EA0A0000 		.4byte	0xaea
 3279 08c7 20       		.byte	0x20
 3280 08c8 0D       		.uleb128 0xd
 3281 08c9 D40C0000 		.4byte	.LASF139
 3282 08cd 0A       		.byte	0xa
 3283 08ce C5       		.byte	0xc5
 3284 08cf 140B0000 		.4byte	0xb14
 3285 08d3 24       		.byte	0x24
 3286 08d4 0D       		.uleb128 0xd
 3287 08d5 CB140000 		.4byte	.LASF140
 3288 08d9 0A       		.byte	0xa
 3289 08da C8       		.byte	0xc8
 3290 08db 380B0000 		.4byte	0xb38
 3291 08df 28       		.byte	0x28
 3292 08e0 0D       		.uleb128 0xd
 3293 08e1 F6080000 		.4byte	.LASF141
 3294 08e5 0A       		.byte	0xa
 3295 08e6 C9       		.byte	0xc9
 3296 08e7 520B0000 		.4byte	0xb52
 3297 08eb 2C       		.byte	0x2c
 3298 08ec 15       		.uleb128 0x15
 3299 08ed 5F756200 		.ascii	"_ub\000"
 3300 08f1 0A       		.byte	0xa
 3301 08f2 CC       		.byte	0xcc
 3302 08f3 28080000 		.4byte	0x828
 3303 08f7 30       		.byte	0x30
 3304 08f8 15       		.uleb128 0x15
 3305 08f9 5F757000 		.ascii	"_up\000"
 3306 08fd 0A       		.byte	0xa
 3307 08fe CD       		.byte	0xcd
 3308 08ff 4D080000 		.4byte	0x84d
 3309 0903 38       		.byte	0x38
 3310 0904 15       		.uleb128 0x15
 3311 0905 5F757200 		.ascii	"_ur\000"
 3312 0909 0A       		.byte	0xa
 3313 090a CE       		.byte	0xce
 3314 090b 2C000000 		.4byte	0x2c
 3315 090f 3C       		.byte	0x3c
 3316 0910 0D       		.uleb128 0xd
 3317 0911 57050000 		.4byte	.LASF142
 3318 0915 0A       		.byte	0xa
 3319 0916 D1       		.byte	0xd1
 3320 0917 580B0000 		.4byte	0xb58
 3321 091b 40       		.byte	0x40
 3322 091c 0D       		.uleb128 0xd
 3323 091d 2E140000 		.4byte	.LASF143
 3324 0921 0A       		.byte	0xa
 3325 0922 D2       		.byte	0xd2
 3326 0923 680B0000 		.4byte	0xb68
 3327 0927 43       		.byte	0x43
 3328 0928 15       		.uleb128 0x15
 3329 0929 5F6C6200 		.ascii	"_lb\000"
 3330 092d 0A       		.byte	0xa
ARM GAS  /tmp/ccmSFvTJ.s 			page 84


 3331 092e D5       		.byte	0xd5
 3332 092f 28080000 		.4byte	0x828
 3333 0933 44       		.byte	0x44
 3334 0934 0D       		.uleb128 0xd
 3335 0935 760F0000 		.4byte	.LASF144
 3336 0939 0A       		.byte	0xa
 3337 093a D8       		.byte	0xd8
 3338 093b 2C000000 		.4byte	0x2c
 3339 093f 4C       		.byte	0x4c
 3340 0940 0D       		.uleb128 0xd
 3341 0941 800E0000 		.4byte	.LASF145
 3342 0945 0A       		.byte	0xa
 3343 0946 D9       		.byte	0xd9
 3344 0947 08060000 		.4byte	0x608
 3345 094b 50       		.byte	0x50
 3346 094c 0D       		.uleb128 0xd
 3347 094d 320E0000 		.4byte	.LASF146
 3348 0951 0A       		.byte	0xa
 3349 0952 DC       		.byte	0xdc
 3350 0953 9B090000 		.4byte	0x99b
 3351 0957 54       		.byte	0x54
 3352 0958 0D       		.uleb128 0xd
 3353 0959 840F0000 		.4byte	.LASF147
 3354 095d 0A       		.byte	0xa
 3355 095e E0       		.byte	0xe0
 3356 095f 85060000 		.4byte	0x685
 3357 0963 58       		.byte	0x58
 3358 0964 0D       		.uleb128 0xd
 3359 0965 3A020000 		.4byte	.LASF148
 3360 0969 0A       		.byte	0xa
 3361 096a E2       		.byte	0xe2
 3362 096b 7A060000 		.4byte	0x67a
 3363 096f 5C       		.byte	0x5c
 3364 0970 0D       		.uleb128 0xd
 3365 0971 1F020000 		.4byte	.LASF149
 3366 0975 0A       		.byte	0xa
 3367 0976 E3       		.byte	0xe3
 3368 0977 2C000000 		.4byte	0x2c
 3369 097b 64       		.byte	0x64
 3370 097c 00       		.byte	0
 3371 097d 19       		.uleb128 0x19
 3372 097e 2C000000 		.4byte	0x2c
 3373 0982 9B090000 		.4byte	0x99b
 3374 0986 1A       		.uleb128 0x1a
 3375 0987 9B090000 		.4byte	0x99b
 3376 098b 1A       		.uleb128 0x1a
 3377 098c BC000000 		.4byte	0xbc
 3378 0990 1A       		.uleb128 0x1a
 3379 0991 D80A0000 		.4byte	0xad8
 3380 0995 1A       		.uleb128 0x1a
 3381 0996 2C000000 		.4byte	0x2c
 3382 099a 00       		.byte	0
 3383 099b 16       		.uleb128 0x16
 3384 099c 04       		.byte	0x4
 3385 099d A6090000 		.4byte	0x9a6
 3386 09a1 06       		.uleb128 0x6
 3387 09a2 9B090000 		.4byte	0x99b
ARM GAS  /tmp/ccmSFvTJ.s 			page 85


 3388 09a6 1B       		.uleb128 0x1b
 3389 09a7 60130000 		.4byte	.LASF150
 3390 09ab 2804     		.2byte	0x428
 3391 09ad 0A       		.byte	0xa
 3392 09ae 3802     		.2byte	0x238
 3393 09b0 D80A0000 		.4byte	0xad8
 3394 09b4 1C       		.uleb128 0x1c
 3395 09b5 EA010000 		.4byte	.LASF151
 3396 09b9 0A       		.byte	0xa
 3397 09ba 3A02     		.2byte	0x23a
 3398 09bc 2C000000 		.4byte	0x2c
 3399 09c0 00       		.byte	0
 3400 09c1 1C       		.uleb128 0x1c
 3401 09c2 4C090000 		.4byte	.LASF152
 3402 09c6 0A       		.byte	0xa
 3403 09c7 3F02     		.2byte	0x23f
 3404 09c9 BF0B0000 		.4byte	0xbbf
 3405 09cd 04       		.byte	0x4
 3406 09ce 1C       		.uleb128 0x1c
 3407 09cf AF020000 		.4byte	.LASF153
 3408 09d3 0A       		.byte	0xa
 3409 09d4 3F02     		.2byte	0x23f
 3410 09d6 BF0B0000 		.4byte	0xbbf
 3411 09da 08       		.byte	0x8
 3412 09db 1C       		.uleb128 0x1c
 3413 09dc DC140000 		.4byte	.LASF154
 3414 09e0 0A       		.byte	0xa
 3415 09e1 3F02     		.2byte	0x23f
 3416 09e3 BF0B0000 		.4byte	0xbbf
 3417 09e7 0C       		.byte	0xc
 3418 09e8 1C       		.uleb128 0x1c
 3419 09e9 35060000 		.4byte	.LASF155
 3420 09ed 0A       		.byte	0xa
 3421 09ee 4102     		.2byte	0x241
 3422 09f0 2C000000 		.4byte	0x2c
 3423 09f4 10       		.byte	0x10
 3424 09f5 1C       		.uleb128 0x1c
 3425 09f6 70050000 		.4byte	.LASF156
 3426 09fa 0A       		.byte	0xa
 3427 09fb 4202     		.2byte	0x242
 3428 09fd A10D0000 		.4byte	0xda1
 3429 0a01 14       		.byte	0x14
 3430 0a02 1C       		.uleb128 0x1c
 3431 0a03 380E0000 		.4byte	.LASF157
 3432 0a07 0A       		.byte	0xa
 3433 0a08 4402     		.2byte	0x244
 3434 0a0a 2C000000 		.4byte	0x2c
 3435 0a0e 30       		.byte	0x30
 3436 0a0f 1C       		.uleb128 0x1c
 3437 0a10 0B0E0000 		.4byte	.LASF158
 3438 0a14 0A       		.byte	0xa
 3439 0a15 4502     		.2byte	0x245
 3440 0a17 0E0B0000 		.4byte	0xb0e
 3441 0a1b 34       		.byte	0x34
 3442 0a1c 1C       		.uleb128 0x1c
 3443 0a1d 04090000 		.4byte	.LASF159
 3444 0a21 0A       		.byte	0xa
ARM GAS  /tmp/ccmSFvTJ.s 			page 86


 3445 0a22 4702     		.2byte	0x247
 3446 0a24 2C000000 		.4byte	0x2c
 3447 0a28 38       		.byte	0x38
 3448 0a29 1C       		.uleb128 0x1c
 3449 0a2a 940A0000 		.4byte	.LASF160
 3450 0a2e 0A       		.byte	0xa
 3451 0a2f 4902     		.2byte	0x249
 3452 0a31 BC0D0000 		.4byte	0xdbc
 3453 0a35 3C       		.byte	0x3c
 3454 0a36 1C       		.uleb128 0x1c
 3455 0a37 3F030000 		.4byte	.LASF161
 3456 0a3b 0A       		.byte	0xa
 3457 0a3c 4C02     		.2byte	0x24c
 3458 0a3e EE060000 		.4byte	0x6ee
 3459 0a42 40       		.byte	0x40
 3460 0a43 1C       		.uleb128 0x1c
 3461 0a44 B8080000 		.4byte	.LASF162
 3462 0a48 0A       		.byte	0xa
 3463 0a49 4D02     		.2byte	0x24d
 3464 0a4b 2C000000 		.4byte	0x2c
 3465 0a4f 44       		.byte	0x44
 3466 0a50 1C       		.uleb128 0x1c
 3467 0a51 9E070000 		.4byte	.LASF163
 3468 0a55 0A       		.byte	0xa
 3469 0a56 4E02     		.2byte	0x24e
 3470 0a58 EE060000 		.4byte	0x6ee
 3471 0a5c 48       		.byte	0x48
 3472 0a5d 1C       		.uleb128 0x1c
 3473 0a5e 5A040000 		.4byte	.LASF164
 3474 0a62 0A       		.byte	0xa
 3475 0a63 4F02     		.2byte	0x24f
 3476 0a65 C20D0000 		.4byte	0xdc2
 3477 0a69 4C       		.byte	0x4c
 3478 0a6a 1C       		.uleb128 0x1c
 3479 0a6b 1F0F0000 		.4byte	.LASF165
 3480 0a6f 0A       		.byte	0xa
 3481 0a70 5202     		.2byte	0x252
 3482 0a72 2C000000 		.4byte	0x2c
 3483 0a76 50       		.byte	0x50
 3484 0a77 1C       		.uleb128 0x1c
 3485 0a78 AF100000 		.4byte	.LASF166
 3486 0a7c 0A       		.byte	0xa
 3487 0a7d 5302     		.2byte	0x253
 3488 0a7f D80A0000 		.4byte	0xad8
 3489 0a83 54       		.byte	0x54
 3490 0a84 1C       		.uleb128 0x1c
 3491 0a85 1A0F0000 		.4byte	.LASF167
 3492 0a89 0A       		.byte	0xa
 3493 0a8a 7602     		.2byte	0x276
 3494 0a8c 7F0D0000 		.4byte	0xd7f
 3495 0a90 58       		.byte	0x58
 3496 0a91 1D       		.uleb128 0x1d
 3497 0a92 1C0D0000 		.4byte	.LASF127
 3498 0a96 0A       		.byte	0xa
 3499 0a97 7A02     		.2byte	0x27a
 3500 0a99 0B080000 		.4byte	0x80b
 3501 0a9d 4801     		.2byte	0x148
ARM GAS  /tmp/ccmSFvTJ.s 			page 87


 3502 0a9f 1D       		.uleb128 0x1d
 3503 0aa0 3D080000 		.4byte	.LASF168
 3504 0aa4 0A       		.byte	0xa
 3505 0aa5 7B02     		.2byte	0x27b
 3506 0aa7 CD070000 		.4byte	0x7cd
 3507 0aab 4C01     		.2byte	0x14c
 3508 0aad 1D       		.uleb128 0x1d
 3509 0aae 24080000 		.4byte	.LASF169
 3510 0ab2 0A       		.byte	0xa
 3511 0ab3 7F02     		.2byte	0x27f
 3512 0ab5 D30D0000 		.4byte	0xdd3
 3513 0ab9 DC02     		.2byte	0x2dc
 3514 0abb 1D       		.uleb128 0x1d
 3515 0abc B4120000 		.4byte	.LASF170
 3516 0ac0 0A       		.byte	0xa
 3517 0ac1 8402     		.2byte	0x284
 3518 0ac3 840B0000 		.4byte	0xb84
 3519 0ac7 E002     		.2byte	0x2e0
 3520 0ac9 1D       		.uleb128 0x1d
 3521 0aca D90D0000 		.4byte	.LASF171
 3522 0ace 0A       		.byte	0xa
 3523 0acf 8502     		.2byte	0x285
 3524 0ad1 DF0D0000 		.4byte	0xddf
 3525 0ad5 EC02     		.2byte	0x2ec
 3526 0ad7 00       		.byte	0
 3527 0ad8 16       		.uleb128 0x16
 3528 0ad9 04       		.byte	0x4
 3529 0ada DE0A0000 		.4byte	0xade
 3530 0ade 02       		.uleb128 0x2
 3531 0adf 01       		.byte	0x1
 3532 0ae0 08       		.byte	0x8
 3533 0ae1 A9000000 		.4byte	.LASF172
 3534 0ae5 06       		.uleb128 0x6
 3535 0ae6 DE0A0000 		.4byte	0xade
 3536 0aea 16       		.uleb128 0x16
 3537 0aeb 04       		.byte	0x4
 3538 0aec 7D090000 		.4byte	0x97d
 3539 0af0 19       		.uleb128 0x19
 3540 0af1 2C000000 		.4byte	0x2c
 3541 0af5 0E0B0000 		.4byte	0xb0e
 3542 0af9 1A       		.uleb128 0x1a
 3543 0afa 9B090000 		.4byte	0x99b
 3544 0afe 1A       		.uleb128 0x1a
 3545 0aff BC000000 		.4byte	0xbc
 3546 0b03 1A       		.uleb128 0x1a
 3547 0b04 0E0B0000 		.4byte	0xb0e
 3548 0b08 1A       		.uleb128 0x1a
 3549 0b09 2C000000 		.4byte	0x2c
 3550 0b0d 00       		.byte	0
 3551 0b0e 16       		.uleb128 0x16
 3552 0b0f 04       		.byte	0x4
 3553 0b10 E50A0000 		.4byte	0xae5
 3554 0b14 16       		.uleb128 0x16
 3555 0b15 04       		.byte	0x4
 3556 0b16 F00A0000 		.4byte	0xaf0
 3557 0b1a 19       		.uleb128 0x19
 3558 0b1b 13060000 		.4byte	0x613
ARM GAS  /tmp/ccmSFvTJ.s 			page 88


 3559 0b1f 380B0000 		.4byte	0xb38
 3560 0b23 1A       		.uleb128 0x1a
 3561 0b24 9B090000 		.4byte	0x99b
 3562 0b28 1A       		.uleb128 0x1a
 3563 0b29 BC000000 		.4byte	0xbc
 3564 0b2d 1A       		.uleb128 0x1a
 3565 0b2e 13060000 		.4byte	0x613
 3566 0b32 1A       		.uleb128 0x1a
 3567 0b33 2C000000 		.4byte	0x2c
 3568 0b37 00       		.byte	0
 3569 0b38 16       		.uleb128 0x16
 3570 0b39 04       		.byte	0x4
 3571 0b3a 1A0B0000 		.4byte	0xb1a
 3572 0b3e 19       		.uleb128 0x19
 3573 0b3f 2C000000 		.4byte	0x2c
 3574 0b43 520B0000 		.4byte	0xb52
 3575 0b47 1A       		.uleb128 0x1a
 3576 0b48 9B090000 		.4byte	0x99b
 3577 0b4c 1A       		.uleb128 0x1a
 3578 0b4d BC000000 		.4byte	0xbc
 3579 0b51 00       		.byte	0
 3580 0b52 16       		.uleb128 0x16
 3581 0b53 04       		.byte	0x4
 3582 0b54 3E0B0000 		.4byte	0xb3e
 3583 0b58 08       		.uleb128 0x8
 3584 0b59 3A000000 		.4byte	0x3a
 3585 0b5d 680B0000 		.4byte	0xb68
 3586 0b61 09       		.uleb128 0x9
 3587 0b62 D3000000 		.4byte	0xd3
 3588 0b66 02       		.byte	0x2
 3589 0b67 00       		.byte	0
 3590 0b68 08       		.uleb128 0x8
 3591 0b69 3A000000 		.4byte	0x3a
 3592 0b6d 780B0000 		.4byte	0xb78
 3593 0b71 09       		.uleb128 0x9
 3594 0b72 D3000000 		.4byte	0xd3
 3595 0b76 00       		.byte	0
 3596 0b77 00       		.byte	0
 3597 0b78 11       		.uleb128 0x11
 3598 0b79 63030000 		.4byte	.LASF173
 3599 0b7d 0A       		.byte	0xa
 3600 0b7e 1D01     		.2byte	0x11d
 3601 0b80 53080000 		.4byte	0x853
 3602 0b84 1E       		.uleb128 0x1e
 3603 0b85 6D120000 		.4byte	.LASF174
 3604 0b89 0C       		.byte	0xc
 3605 0b8a 0A       		.byte	0xa
 3606 0b8b 2101     		.2byte	0x121
 3607 0b8d B90B0000 		.4byte	0xbb9
 3608 0b91 1C       		.uleb128 0x1c
 3609 0b92 A5060000 		.4byte	.LASF107
 3610 0b96 0A       		.byte	0xa
 3611 0b97 2301     		.2byte	0x123
 3612 0b99 B90B0000 		.4byte	0xbb9
 3613 0b9d 00       		.byte	0
 3614 0b9e 1C       		.uleb128 0x1c
 3615 0b9f F80F0000 		.4byte	.LASF175
ARM GAS  /tmp/ccmSFvTJ.s 			page 89


 3616 0ba3 0A       		.byte	0xa
 3617 0ba4 2401     		.2byte	0x124
 3618 0ba6 2C000000 		.4byte	0x2c
 3619 0baa 04       		.byte	0x4
 3620 0bab 1C       		.uleb128 0x1c
 3621 0bac ED140000 		.4byte	.LASF176
 3622 0bb0 0A       		.byte	0xa
 3623 0bb1 2501     		.2byte	0x125
 3624 0bb3 BF0B0000 		.4byte	0xbbf
 3625 0bb7 08       		.byte	0x8
 3626 0bb8 00       		.byte	0
 3627 0bb9 16       		.uleb128 0x16
 3628 0bba 04       		.byte	0x4
 3629 0bbb 840B0000 		.4byte	0xb84
 3630 0bbf 16       		.uleb128 0x16
 3631 0bc0 04       		.byte	0x4
 3632 0bc1 780B0000 		.4byte	0xb78
 3633 0bc5 1E       		.uleb128 0x1e
 3634 0bc6 BC040000 		.4byte	.LASF177
 3635 0bca 0E       		.byte	0xe
 3636 0bcb 0A       		.byte	0xa
 3637 0bcc 3D01     		.2byte	0x13d
 3638 0bce FA0B0000 		.4byte	0xbfa
 3639 0bd2 1C       		.uleb128 0x1c
 3640 0bd3 AE140000 		.4byte	.LASF178
 3641 0bd7 0A       		.byte	0xa
 3642 0bd8 3E01     		.2byte	0x13e
 3643 0bda FA0B0000 		.4byte	0xbfa
 3644 0bde 00       		.byte	0
 3645 0bdf 1C       		.uleb128 0x1c
 3646 0be0 A90D0000 		.4byte	.LASF179
 3647 0be4 0A       		.byte	0xa
 3648 0be5 3F01     		.2byte	0x13f
 3649 0be7 FA0B0000 		.4byte	0xbfa
 3650 0beb 06       		.byte	0x6
 3651 0bec 1C       		.uleb128 0x1c
 3652 0bed 040A0000 		.4byte	.LASF180
 3653 0bf1 0A       		.byte	0xa
 3654 0bf2 4001     		.2byte	0x140
 3655 0bf4 53000000 		.4byte	0x53
 3656 0bf8 0C       		.byte	0xc
 3657 0bf9 00       		.byte	0
 3658 0bfa 08       		.uleb128 0x8
 3659 0bfb 53000000 		.4byte	0x53
 3660 0bff 0A0C0000 		.4byte	0xc0a
 3661 0c03 09       		.uleb128 0x9
 3662 0c04 D3000000 		.4byte	0xd3
 3663 0c08 02       		.byte	0x2
 3664 0c09 00       		.byte	0
 3665 0c0a 1F       		.uleb128 0x1f
 3666 0c0b D0       		.byte	0xd0
 3667 0c0c 0A       		.byte	0xa
 3668 0c0d 5702     		.2byte	0x257
 3669 0c0f 0B0D0000 		.4byte	0xd0b
 3670 0c13 1C       		.uleb128 0x1c
 3671 0c14 34140000 		.4byte	.LASF181
 3672 0c18 0A       		.byte	0xa
ARM GAS  /tmp/ccmSFvTJ.s 			page 90


 3673 0c19 5902     		.2byte	0x259
 3674 0c1b 25000000 		.4byte	0x25
 3675 0c1f 00       		.byte	0
 3676 0c20 1C       		.uleb128 0x1c
 3677 0c21 DE120000 		.4byte	.LASF182
 3678 0c25 0A       		.byte	0xa
 3679 0c26 5A02     		.2byte	0x25a
 3680 0c28 D80A0000 		.4byte	0xad8
 3681 0c2c 04       		.byte	0x4
 3682 0c2d 1C       		.uleb128 0x1c
 3683 0c2e AF040000 		.4byte	.LASF183
 3684 0c32 0A       		.byte	0xa
 3685 0c33 5B02     		.2byte	0x25b
 3686 0c35 0B0D0000 		.4byte	0xd0b
 3687 0c39 08       		.byte	0x8
 3688 0c3a 1C       		.uleb128 0x1c
 3689 0c3b D70E0000 		.4byte	.LASF184
 3690 0c3f 0A       		.byte	0xa
 3691 0c40 5C02     		.2byte	0x25c
 3692 0c42 04070000 		.4byte	0x704
 3693 0c46 24       		.byte	0x24
 3694 0c47 1C       		.uleb128 0x1c
 3695 0c48 CA130000 		.4byte	.LASF185
 3696 0c4c 0A       		.byte	0xa
 3697 0c4d 5D02     		.2byte	0x25d
 3698 0c4f 2C000000 		.4byte	0x2c
 3699 0c53 48       		.byte	0x48
 3700 0c54 1C       		.uleb128 0x1c
 3701 0c55 B4140000 		.4byte	.LASF186
 3702 0c59 0A       		.byte	0xa
 3703 0c5a 5E02     		.2byte	0x25e
 3704 0c5c 85000000 		.4byte	0x85
 3705 0c60 50       		.byte	0x50
 3706 0c61 1C       		.uleb128 0x1c
 3707 0c62 FD000000 		.4byte	.LASF187
 3708 0c66 0A       		.byte	0xa
 3709 0c67 5F02     		.2byte	0x25f
 3710 0c69 C50B0000 		.4byte	0xbc5
 3711 0c6d 58       		.byte	0x58
 3712 0c6e 1C       		.uleb128 0x1c
 3713 0c6f CA070000 		.4byte	.LASF188
 3714 0c73 0A       		.byte	0xa
 3715 0c74 6002     		.2byte	0x260
 3716 0c76 7A060000 		.4byte	0x67a
 3717 0c7a 68       		.byte	0x68
 3718 0c7b 1C       		.uleb128 0x1c
 3719 0c7c EB120000 		.4byte	.LASF189
 3720 0c80 0A       		.byte	0xa
 3721 0c81 6102     		.2byte	0x261
 3722 0c83 7A060000 		.4byte	0x67a
 3723 0c87 70       		.byte	0x70
 3724 0c88 1C       		.uleb128 0x1c
 3725 0c89 EE130000 		.4byte	.LASF190
 3726 0c8d 0A       		.byte	0xa
 3727 0c8e 6202     		.2byte	0x262
 3728 0c90 7A060000 		.4byte	0x67a
 3729 0c94 78       		.byte	0x78
ARM GAS  /tmp/ccmSFvTJ.s 			page 91


 3730 0c95 1C       		.uleb128 0x1c
 3731 0c96 2F0F0000 		.4byte	.LASF191
 3732 0c9a 0A       		.byte	0xa
 3733 0c9b 6302     		.2byte	0x263
 3734 0c9d 1B0D0000 		.4byte	0xd1b
 3735 0ca1 80       		.byte	0x80
 3736 0ca2 1C       		.uleb128 0x1c
 3737 0ca3 1D010000 		.4byte	.LASF192
 3738 0ca7 0A       		.byte	0xa
 3739 0ca8 6402     		.2byte	0x264
 3740 0caa 2B0D0000 		.4byte	0xd2b
 3741 0cae 88       		.byte	0x88
 3742 0caf 1C       		.uleb128 0x1c
 3743 0cb0 BC120000 		.4byte	.LASF193
 3744 0cb4 0A       		.byte	0xa
 3745 0cb5 6502     		.2byte	0x265
 3746 0cb7 2C000000 		.4byte	0x2c
 3747 0cbb A0       		.byte	0xa0
 3748 0cbc 1C       		.uleb128 0x1c
 3749 0cbd 8D020000 		.4byte	.LASF194
 3750 0cc1 0A       		.byte	0xa
 3751 0cc2 6602     		.2byte	0x266
 3752 0cc4 7A060000 		.4byte	0x67a
 3753 0cc8 A4       		.byte	0xa4
 3754 0cc9 1C       		.uleb128 0x1c
 3755 0cca 2E080000 		.4byte	.LASF195
 3756 0cce 0A       		.byte	0xa
 3757 0ccf 6702     		.2byte	0x267
 3758 0cd1 7A060000 		.4byte	0x67a
 3759 0cd5 AC       		.byte	0xac
 3760 0cd6 1C       		.uleb128 0x1c
 3761 0cd7 64040000 		.4byte	.LASF196
 3762 0cdb 0A       		.byte	0xa
 3763 0cdc 6802     		.2byte	0x268
 3764 0cde 7A060000 		.4byte	0x67a
 3765 0ce2 B4       		.byte	0xb4
 3766 0ce3 1C       		.uleb128 0x1c
 3767 0ce4 370A0000 		.4byte	.LASF197
 3768 0ce8 0A       		.byte	0xa
 3769 0ce9 6902     		.2byte	0x269
 3770 0ceb 7A060000 		.4byte	0x67a
 3771 0cef BC       		.byte	0xbc
 3772 0cf0 1C       		.uleb128 0x1c
 3773 0cf1 B9070000 		.4byte	.LASF198
 3774 0cf5 0A       		.byte	0xa
 3775 0cf6 6A02     		.2byte	0x26a
 3776 0cf8 7A060000 		.4byte	0x67a
 3777 0cfc C4       		.byte	0xc4
 3778 0cfd 1C       		.uleb128 0x1c
 3779 0cfe 60140000 		.4byte	.LASF199
 3780 0d02 0A       		.byte	0xa
 3781 0d03 6B02     		.2byte	0x26b
 3782 0d05 2C000000 		.4byte	0x2c
 3783 0d09 CC       		.byte	0xcc
 3784 0d0a 00       		.byte	0
 3785 0d0b 08       		.uleb128 0x8
 3786 0d0c DE0A0000 		.4byte	0xade
ARM GAS  /tmp/ccmSFvTJ.s 			page 92


 3787 0d10 1B0D0000 		.4byte	0xd1b
 3788 0d14 09       		.uleb128 0x9
 3789 0d15 D3000000 		.4byte	0xd3
 3790 0d19 19       		.byte	0x19
 3791 0d1a 00       		.byte	0
 3792 0d1b 08       		.uleb128 0x8
 3793 0d1c DE0A0000 		.4byte	0xade
 3794 0d20 2B0D0000 		.4byte	0xd2b
 3795 0d24 09       		.uleb128 0x9
 3796 0d25 D3000000 		.4byte	0xd3
 3797 0d29 07       		.byte	0x7
 3798 0d2a 00       		.byte	0
 3799 0d2b 08       		.uleb128 0x8
 3800 0d2c DE0A0000 		.4byte	0xade
 3801 0d30 3B0D0000 		.4byte	0xd3b
 3802 0d34 09       		.uleb128 0x9
 3803 0d35 D3000000 		.4byte	0xd3
 3804 0d39 17       		.byte	0x17
 3805 0d3a 00       		.byte	0
 3806 0d3b 1F       		.uleb128 0x1f
 3807 0d3c F0       		.byte	0xf0
 3808 0d3d 0A       		.byte	0xa
 3809 0d3e 7002     		.2byte	0x270
 3810 0d40 5F0D0000 		.4byte	0xd5f
 3811 0d44 1C       		.uleb128 0x1c
 3812 0d45 37040000 		.4byte	.LASF200
 3813 0d49 0A       		.byte	0xa
 3814 0d4a 7302     		.2byte	0x273
 3815 0d4c 5F0D0000 		.4byte	0xd5f
 3816 0d50 00       		.byte	0
 3817 0d51 1C       		.uleb128 0x1c
 3818 0d52 E4140000 		.4byte	.LASF201
 3819 0d56 0A       		.byte	0xa
 3820 0d57 7402     		.2byte	0x274
 3821 0d59 6F0D0000 		.4byte	0xd6f
 3822 0d5d 78       		.byte	0x78
 3823 0d5e 00       		.byte	0
 3824 0d5f 08       		.uleb128 0x8
 3825 0d60 4D080000 		.4byte	0x84d
 3826 0d64 6F0D0000 		.4byte	0xd6f
 3827 0d68 09       		.uleb128 0x9
 3828 0d69 D3000000 		.4byte	0xd3
 3829 0d6d 1D       		.byte	0x1d
 3830 0d6e 00       		.byte	0
 3831 0d6f 08       		.uleb128 0x8
 3832 0d70 25000000 		.4byte	0x25
 3833 0d74 7F0D0000 		.4byte	0xd7f
 3834 0d78 09       		.uleb128 0x9
 3835 0d79 D3000000 		.4byte	0xd3
 3836 0d7d 1D       		.byte	0x1d
 3837 0d7e 00       		.byte	0
 3838 0d7f 20       		.uleb128 0x20
 3839 0d80 F0       		.byte	0xf0
 3840 0d81 0A       		.byte	0xa
 3841 0d82 5502     		.2byte	0x255
 3842 0d84 A10D0000 		.4byte	0xda1
 3843 0d88 21       		.uleb128 0x21
ARM GAS  /tmp/ccmSFvTJ.s 			page 93


 3844 0d89 60130000 		.4byte	.LASF150
 3845 0d8d 0A       		.byte	0xa
 3846 0d8e 6C02     		.2byte	0x26c
 3847 0d90 0A0C0000 		.4byte	0xc0a
 3848 0d94 21       		.uleb128 0x21
 3849 0d95 FD0E0000 		.4byte	.LASF202
 3850 0d99 0A       		.byte	0xa
 3851 0d9a 7502     		.2byte	0x275
 3852 0d9c 3B0D0000 		.4byte	0xd3b
 3853 0da0 00       		.byte	0
 3854 0da1 08       		.uleb128 0x8
 3855 0da2 DE0A0000 		.4byte	0xade
 3856 0da6 B10D0000 		.4byte	0xdb1
 3857 0daa 09       		.uleb128 0x9
 3858 0dab D3000000 		.4byte	0xd3
 3859 0daf 18       		.byte	0x18
 3860 0db0 00       		.byte	0
 3861 0db1 22       		.uleb128 0x22
 3862 0db2 BC0D0000 		.4byte	0xdbc
 3863 0db6 1A       		.uleb128 0x1a
 3864 0db7 9B090000 		.4byte	0x99b
 3865 0dbb 00       		.byte	0
 3866 0dbc 16       		.uleb128 0x16
 3867 0dbd 04       		.byte	0x4
 3868 0dbe B10D0000 		.4byte	0xdb1
 3869 0dc2 16       		.uleb128 0x16
 3870 0dc3 04       		.byte	0x4
 3871 0dc4 EE060000 		.4byte	0x6ee
 3872 0dc8 22       		.uleb128 0x22
 3873 0dc9 D30D0000 		.4byte	0xdd3
 3874 0dcd 1A       		.uleb128 0x1a
 3875 0dce 2C000000 		.4byte	0x2c
 3876 0dd2 00       		.byte	0
 3877 0dd3 16       		.uleb128 0x16
 3878 0dd4 04       		.byte	0x4
 3879 0dd5 D90D0000 		.4byte	0xdd9
 3880 0dd9 16       		.uleb128 0x16
 3881 0dda 04       		.byte	0x4
 3882 0ddb C80D0000 		.4byte	0xdc8
 3883 0ddf 08       		.uleb128 0x8
 3884 0de0 780B0000 		.4byte	0xb78
 3885 0de4 EF0D0000 		.4byte	0xdef
 3886 0de8 09       		.uleb128 0x9
 3887 0de9 D3000000 		.4byte	0xd3
 3888 0ded 02       		.byte	0x2
 3889 0dee 00       		.byte	0
 3890 0def 0A       		.uleb128 0xa
 3891 0df0 18040000 		.4byte	.LASF203
 3892 0df4 0A       		.byte	0xa
 3893 0df5 FD02     		.2byte	0x2fd
 3894 0df7 9B090000 		.4byte	0x99b
 3895 0dfb 0A       		.uleb128 0xa
 3896 0dfc 510E0000 		.4byte	.LASF204
 3897 0e00 0A       		.byte	0xa
 3898 0e01 FE02     		.2byte	0x2fe
 3899 0e03 A1090000 		.4byte	0x9a1
 3900 0e07 0B       		.uleb128 0xb
ARM GAS  /tmp/ccmSFvTJ.s 			page 94


 3901 0e08 19060000 		.4byte	.LASF205
 3902 0e0c 0B       		.byte	0xb
 3903 0e0d 5F       		.byte	0x5f
 3904 0e0e D80A0000 		.4byte	0xad8
 3905 0e12 0B       		.uleb128 0xb
 3906 0e13 0A030000 		.4byte	.LASF206
 3907 0e17 0C       		.byte	0xc
 3908 0e18 8F       		.byte	0x8f
 3909 0e19 240E0000 		.4byte	0xe24
 3910 0e1d 02       		.uleb128 0x2
 3911 0e1e 01       		.byte	0x1
 3912 0e1f 02       		.byte	0x2
 3913 0e20 3A060000 		.4byte	.LASF207
 3914 0e24 05       		.uleb128 0x5
 3915 0e25 1D0E0000 		.4byte	0xe1d
 3916 0e29 23       		.uleb128 0x23
 3917 0e2a D70F0000 		.4byte	.LASF208
 3918 0e2e 0C       		.byte	0xc
 3919 0e2f 94       		.byte	0x94
 3920 0e30 B2000000 		.4byte	0xb2
 3921 0e34 05       		.uleb128 0x5
 3922 0e35 03       		.byte	0x3
 3923 0e36 00000000 		.4byte	cpu_irq_critical_section_counter
 3924 0e3a 23       		.uleb128 0x23
 3925 0e3b D7050000 		.4byte	.LASF209
 3926 0e3f 0C       		.byte	0xc
 3927 0e40 95       		.byte	0x95
 3928 0e41 240E0000 		.4byte	0xe24
 3929 0e45 05       		.uleb128 0x5
 3930 0e46 03       		.byte	0x3
 3931 0e47 00000000 		.4byte	cpu_irq_prev_interrupt_state
 3932 0e4b 02       		.uleb128 0x2
 3933 0e4c 04       		.byte	0x4
 3934 0e4d 04       		.byte	0x4
 3935 0e4e 01040000 		.4byte	.LASF210
 3936 0e52 02       		.uleb128 0x2
 3937 0e53 08       		.byte	0x8
 3938 0e54 04       		.byte	0x4
 3939 0e55 DF130000 		.4byte	.LASF211
 3940 0e59 24       		.uleb128 0x24
 3941 0e5a 02       		.byte	0x2
 3942 0e5b 53000000 		.4byte	0x53
 3943 0e5f 0D       		.byte	0xd
 3944 0e60 4D       		.byte	0x4d
 3945 0e61 730E0000 		.4byte	0xe73
 3946 0e65 25       		.uleb128 0x25
 3947 0e66 A5120000 		.4byte	.LASF212
 3948 0e6a 00       		.byte	0
 3949 0e6b 26       		.uleb128 0x26
 3950 0e6c 46050000 		.4byte	.LASF213
 3951 0e70 0001     		.2byte	0x100
 3952 0e72 00       		.byte	0
 3953 0e73 04       		.uleb128 0x4
 3954 0e74 5E0D0000 		.4byte	.LASF214
 3955 0e78 0D       		.byte	0xd
 3956 0e79 50       		.byte	0x50
 3957 0e7a 590E0000 		.4byte	0xe59
ARM GAS  /tmp/ccmSFvTJ.s 			page 95


 3958 0e7e 24       		.uleb128 0x24
 3959 0e7f 01       		.byte	0x1
 3960 0e80 3A000000 		.4byte	0x3a
 3961 0e84 0D       		.byte	0xd
 3962 0e85 53       		.byte	0x53
 3963 0e86 9D0E0000 		.4byte	0xe9d
 3964 0e8a 25       		.uleb128 0x25
 3965 0e8b 26030000 		.4byte	.LASF215
 3966 0e8f 00       		.byte	0
 3967 0e90 25       		.uleb128 0x25
 3968 0e91 640E0000 		.4byte	.LASF216
 3969 0e95 01       		.byte	0x1
 3970 0e96 25       		.uleb128 0x25
 3971 0e97 07110000 		.4byte	.LASF217
 3972 0e9b 02       		.byte	0x2
 3973 0e9c 00       		.byte	0
 3974 0e9d 04       		.uleb128 0x4
 3975 0e9e 04060000 		.4byte	.LASF218
 3976 0ea2 0D       		.byte	0xd
 3977 0ea3 59       		.byte	0x59
 3978 0ea4 7E0E0000 		.4byte	0xe7e
 3979 0ea8 0C       		.uleb128 0xc
 3980 0ea9 0C       		.byte	0xc
 3981 0eaa 0D       		.byte	0xd
 3982 0eab 5C       		.byte	0x5c
 3983 0eac D50E0000 		.4byte	0xed5
 3984 0eb0 0D       		.uleb128 0xd
 3985 0eb1 74010000 		.4byte	.LASF219
 3986 0eb5 0D       		.byte	0xd
 3987 0eb6 5E       		.byte	0x5e
 3988 0eb7 A7000000 		.4byte	0xa7
 3989 0ebb 00       		.byte	0
 3990 0ebc 0D       		.uleb128 0xd
 3991 0ebd 7C010000 		.4byte	.LASF220
 3992 0ec1 0D       		.byte	0xd
 3993 0ec2 60       		.byte	0x60
 3994 0ec3 A7000000 		.4byte	0xa7
 3995 0ec7 04       		.byte	0x4
 3996 0ec8 0D       		.uleb128 0xd
 3997 0ec9 69050000 		.4byte	.LASF221
 3998 0ecd 0D       		.byte	0xd
 3999 0ece 62       		.byte	0x62
 4000 0ecf A7000000 		.4byte	0xa7
 4001 0ed3 08       		.byte	0x8
 4002 0ed4 00       		.byte	0
 4003 0ed5 04       		.uleb128 0x4
 4004 0ed6 D4030000 		.4byte	.LASF222
 4005 0eda 0D       		.byte	0xd
 4006 0edb 63       		.byte	0x63
 4007 0edc A80E0000 		.4byte	0xea8
 4008 0ee0 24       		.uleb128 0x24
 4009 0ee1 01       		.byte	0x1
 4010 0ee2 3A000000 		.4byte	0x3a
 4011 0ee6 0D       		.byte	0xd
 4012 0ee7 67       		.byte	0x67
 4013 0ee8 F90E0000 		.4byte	0xef9
 4014 0eec 25       		.uleb128 0x25
ARM GAS  /tmp/ccmSFvTJ.s 			page 96


 4015 0eed E8030000 		.4byte	.LASF223
 4016 0ef1 00       		.byte	0
 4017 0ef2 25       		.uleb128 0x25
 4018 0ef3 27000000 		.4byte	.LASF224
 4019 0ef7 01       		.byte	0x1
 4020 0ef8 00       		.byte	0
 4021 0ef9 04       		.uleb128 0x4
 4022 0efa 5B010000 		.4byte	.LASF225
 4023 0efe 0D       		.byte	0xd
 4024 0eff 6E       		.byte	0x6e
 4025 0f00 E00E0000 		.4byte	0xee0
 4026 0f04 24       		.uleb128 0x24
 4027 0f05 04       		.byte	0x4
 4028 0f06 25000000 		.4byte	0x25
 4029 0f0a 0D       		.byte	0xd
 4030 0f0b 71       		.byte	0x71
 4031 0f0c 290F0000 		.4byte	0xf29
 4032 0f10 25       		.uleb128 0x25
 4033 0f11 EF060000 		.4byte	.LASF226
 4034 0f15 00       		.byte	0
 4035 0f16 27       		.uleb128 0x27
 4036 0f17 06070000 		.4byte	.LASF227
 4037 0f1b 00000100 		.4byte	0x10000
 4038 0f1f 27       		.uleb128 0x27
 4039 0f20 1D070000 		.4byte	.LASF228
 4040 0f24 00000200 		.4byte	0x20000
 4041 0f28 00       		.byte	0
 4042 0f29 04       		.uleb128 0x4
 4043 0f2a 8F140000 		.4byte	.LASF229
 4044 0f2e 0D       		.byte	0xd
 4045 0f2f 75       		.byte	0x75
 4046 0f30 040F0000 		.4byte	0xf04
 4047 0f34 24       		.uleb128 0x24
 4048 0f35 02       		.byte	0x2
 4049 0f36 53000000 		.4byte	0x53
 4050 0f3a 0D       		.byte	0xd
 4051 0f3b 78       		.byte	0x78
 4052 0f3c 4E0F0000 		.4byte	0xf4e
 4053 0f40 25       		.uleb128 0x25
 4054 0f41 C9120000 		.4byte	.LASF230
 4055 0f45 00       		.byte	0
 4056 0f46 26       		.uleb128 0x26
 4057 0f47 23130000 		.4byte	.LASF231
 4058 0f4b 0004     		.2byte	0x400
 4059 0f4d 00       		.byte	0
 4060 0f4e 04       		.uleb128 0x4
 4061 0f4f 9F0C0000 		.4byte	.LASF232
 4062 0f53 0D       		.byte	0xd
 4063 0f54 7B       		.byte	0x7b
 4064 0f55 340F0000 		.4byte	0xf34
 4065 0f59 24       		.uleb128 0x24
 4066 0f5a 01       		.byte	0x1
 4067 0f5b 3A000000 		.4byte	0x3a
 4068 0f5f 0D       		.byte	0xd
 4069 0f60 7E       		.byte	0x7e
 4070 0f61 8A0F0000 		.4byte	0xf8a
 4071 0f65 25       		.uleb128 0x25
ARM GAS  /tmp/ccmSFvTJ.s 			page 97


 4072 0f66 35050000 		.4byte	.LASF233
 4073 0f6a 01       		.byte	0x1
 4074 0f6b 25       		.uleb128 0x25
 4075 0f6c 7C040000 		.4byte	.LASF234
 4076 0f70 02       		.byte	0x2
 4077 0f71 25       		.uleb128 0x25
 4078 0f72 6A0D0000 		.4byte	.LASF235
 4079 0f76 04       		.byte	0x4
 4080 0f77 25       		.uleb128 0x25
 4081 0f78 C80B0000 		.4byte	.LASF236
 4082 0f7c 08       		.byte	0x8
 4083 0f7d 25       		.uleb128 0x25
 4084 0f7e 81060000 		.4byte	.LASF237
 4085 0f82 10       		.byte	0x10
 4086 0f83 25       		.uleb128 0x25
 4087 0f84 93060000 		.4byte	.LASF238
 4088 0f88 20       		.byte	0x20
 4089 0f89 00       		.byte	0
 4090 0f8a 04       		.uleb128 0x4
 4091 0f8b 5B070000 		.4byte	.LASF239
 4092 0f8f 0D       		.byte	0xd
 4093 0f90 93       		.byte	0x93
 4094 0f91 590F0000 		.4byte	0xf59
 4095 0f95 24       		.uleb128 0x24
 4096 0f96 01       		.byte	0x1
 4097 0f97 3A000000 		.4byte	0x3a
 4098 0f9b 0D       		.byte	0xd
 4099 0f9c A0       		.byte	0xa0
 4100 0f9d AE0F0000 		.4byte	0xfae
 4101 0fa1 25       		.uleb128 0x25
 4102 0fa2 40000000 		.4byte	.LASF240
 4103 0fa6 08       		.byte	0x8
 4104 0fa7 25       		.uleb128 0x25
 4105 0fa8 4F0D0000 		.4byte	.LASF241
 4106 0fac 10       		.byte	0x10
 4107 0fad 00       		.byte	0
 4108 0fae 04       		.uleb128 0x4
 4109 0faf F1010000 		.4byte	.LASF242
 4110 0fb3 0D       		.byte	0xd
 4111 0fb4 A3       		.byte	0xa3
 4112 0fb5 950F0000 		.4byte	0xf95
 4113 0fb9 24       		.uleb128 0x24
 4114 0fba 01       		.byte	0x1
 4115 0fbb 3A000000 		.4byte	0x3a
 4116 0fbf 0D       		.byte	0xd
 4117 0fc0 C4       		.byte	0xc4
 4118 0fc1 D20F0000 		.4byte	0xfd2
 4119 0fc5 25       		.uleb128 0x25
 4120 0fc6 73100000 		.4byte	.LASF243
 4121 0fca 00       		.byte	0
 4122 0fcb 25       		.uleb128 0x25
 4123 0fcc 36110000 		.4byte	.LASF244
 4124 0fd0 01       		.byte	0x1
 4125 0fd1 00       		.byte	0
 4126 0fd2 04       		.uleb128 0x4
 4127 0fd3 840C0000 		.4byte	.LASF245
 4128 0fd7 0D       		.byte	0xd
ARM GAS  /tmp/ccmSFvTJ.s 			page 98


 4129 0fd8 C7       		.byte	0xc7
 4130 0fd9 B90F0000 		.4byte	0xfb9
 4131 0fdd 24       		.uleb128 0x24
 4132 0fde 04       		.byte	0x4
 4133 0fdf 25000000 		.4byte	0x25
 4134 0fe3 0D       		.byte	0xd
 4135 0fe4 C9       		.byte	0xc9
 4136 0fe5 7A100000 		.4byte	0x107a
 4137 0fe9 27       		.uleb128 0x27
 4138 0fea 47030000 		.4byte	.LASF246
 4139 0fee 00000100 		.4byte	0x10000
 4140 0ff2 27       		.uleb128 0x27
 4141 0ff3 480C0000 		.4byte	.LASF247
 4142 0ff7 00000200 		.4byte	0x20000
 4143 0ffb 27       		.uleb128 0x27
 4144 0ffc 73120000 		.4byte	.LASF248
 4145 1000 00000400 		.4byte	0x40000
 4146 1004 27       		.uleb128 0x27
 4147 1005 99050000 		.4byte	.LASF249
 4148 1009 00000800 		.4byte	0x80000
 4149 100d 27       		.uleb128 0x27
 4150 100e D0000000 		.4byte	.LASF250
 4151 1012 00000100 		.4byte	0x10000
 4152 1016 27       		.uleb128 0x27
 4153 1017 28090000 		.4byte	.LASF251
 4154 101b 00000200 		.4byte	0x20000
 4155 101f 27       		.uleb128 0x27
 4156 1020 BB0E0000 		.4byte	.LASF252
 4157 1024 00000400 		.4byte	0x40000
 4158 1028 27       		.uleb128 0x27
 4159 1029 E1020000 		.4byte	.LASF253
 4160 102d 00000800 		.4byte	0x80000
 4161 1031 27       		.uleb128 0x27
 4162 1032 2E100000 		.4byte	.LASF254
 4163 1036 00000100 		.4byte	0x10000
 4164 103a 27       		.uleb128 0x27
 4165 103b 3E040000 		.4byte	.LASF255
 4166 103f 00000200 		.4byte	0x20000
 4167 1043 27       		.uleb128 0x27
 4168 1044 A1090000 		.4byte	.LASF256
 4169 1048 00000400 		.4byte	0x40000
 4170 104c 27       		.uleb128 0x27
 4171 104d 93130000 		.4byte	.LASF257
 4172 1051 00000800 		.4byte	0x80000
 4173 1055 27       		.uleb128 0x27
 4174 1056 330D0000 		.4byte	.LASF258
 4175 105a 00000100 		.4byte	0x10000
 4176 105e 27       		.uleb128 0x27
 4177 105f 84010000 		.4byte	.LASF259
 4178 1063 00000200 		.4byte	0x20000
 4179 1067 27       		.uleb128 0x27
 4180 1068 AB060000 		.4byte	.LASF260
 4181 106c 00000400 		.4byte	0x40000
 4182 1070 27       		.uleb128 0x27
 4183 1071 8A0F0000 		.4byte	.LASF261
 4184 1075 00000800 		.4byte	0x80000
 4185 1079 00       		.byte	0
ARM GAS  /tmp/ccmSFvTJ.s 			page 99


 4186 107a 04       		.uleb128 0x4
 4187 107b A70A0000 		.4byte	.LASF262
 4188 107f 0D       		.byte	0xd
 4189 1080 DA       		.byte	0xda
 4190 1081 DD0F0000 		.4byte	0xfdd
 4191 1085 0C       		.uleb128 0xc
 4192 1086 04       		.byte	0x4
 4193 1087 0D       		.byte	0xd
 4194 1088 E5       		.byte	0xe5
 4195 1089 BE100000 		.4byte	0x10be
 4196 108d 0D       		.uleb128 0xd
 4197 108e F9120000 		.4byte	.LASF263
 4198 1092 0D       		.byte	0xd
 4199 1093 E7       		.byte	0xe7
 4200 1094 1D0E0000 		.4byte	0xe1d
 4201 1098 00       		.byte	0
 4202 1099 0D       		.uleb128 0xd
 4203 109a 06140000 		.4byte	.LASF264
 4204 109e 0D       		.byte	0xd
 4205 109f E9       		.byte	0xe9
 4206 10a0 1D0E0000 		.4byte	0xe1d
 4207 10a4 01       		.byte	0x1
 4208 10a5 0D       		.uleb128 0xd
 4209 10a6 53090000 		.4byte	.LASF265
 4210 10aa 0D       		.byte	0xd
 4211 10ab EB       		.byte	0xeb
 4212 10ac 9D0E0000 		.4byte	0xe9d
 4213 10b0 02       		.byte	0x2
 4214 10b1 0D       		.uleb128 0xd
 4215 10b2 7B090000 		.4byte	.LASF266
 4216 10b6 0D       		.byte	0xd
 4217 10b7 ED       		.byte	0xed
 4218 10b8 9D0E0000 		.4byte	0xe9d
 4219 10bc 03       		.byte	0x3
 4220 10bd 00       		.byte	0
 4221 10be 04       		.uleb128 0x4
 4222 10bf 460A0000 		.4byte	.LASF267
 4223 10c3 0D       		.byte	0xd
 4224 10c4 EE       		.byte	0xee
 4225 10c5 85100000 		.4byte	0x1085
 4226 10c9 0C       		.uleb128 0xc
 4227 10ca 20       		.byte	0x20
 4228 10cb 0D       		.byte	0xd
 4229 10cc F1       		.byte	0xf1
 4230 10cd 40110000 		.4byte	0x1140
 4231 10d1 0D       		.uleb128 0xd
 4232 10d2 A80B0000 		.4byte	.LASF268
 4233 10d6 0D       		.byte	0xd
 4234 10d7 F3       		.byte	0xf3
 4235 10d8 A7000000 		.4byte	0xa7
 4236 10dc 00       		.byte	0
 4237 10dd 0D       		.uleb128 0xd
 4238 10de A1100000 		.4byte	.LASF269
 4239 10e2 0D       		.byte	0xd
 4240 10e3 F5       		.byte	0xf5
 4241 10e4 1D0E0000 		.4byte	0xe1d
 4242 10e8 04       		.byte	0x4
ARM GAS  /tmp/ccmSFvTJ.s 			page 100


 4243 10e9 0D       		.uleb128 0xd
 4244 10ea 27020000 		.4byte	.LASF270
 4245 10ee 0D       		.byte	0xd
 4246 10ef F7       		.byte	0xf7
 4247 10f0 A7000000 		.4byte	0xa7
 4248 10f4 08       		.byte	0x8
 4249 10f5 0D       		.uleb128 0xd
 4250 10f6 8F090000 		.4byte	.LASF271
 4251 10fa 0D       		.byte	0xd
 4252 10fb F9       		.byte	0xf9
 4253 10fc 1D0E0000 		.4byte	0xe1d
 4254 1100 0C       		.byte	0xc
 4255 1101 0D       		.uleb128 0xd
 4256 1102 DB0C0000 		.4byte	.LASF272
 4257 1106 0D       		.byte	0xd
 4258 1107 FB       		.byte	0xfb
 4259 1108 A7000000 		.4byte	0xa7
 4260 110c 10       		.byte	0x10
 4261 110d 0D       		.uleb128 0xd
 4262 110e 8E040000 		.4byte	.LASF273
 4263 1112 0D       		.byte	0xd
 4264 1113 FD       		.byte	0xfd
 4265 1114 A7000000 		.4byte	0xa7
 4266 1118 14       		.byte	0x14
 4267 1119 0D       		.uleb128 0xd
 4268 111a 00000000 		.4byte	.LASF274
 4269 111e 0D       		.byte	0xd
 4270 111f FF       		.byte	0xff
 4271 1120 A7000000 		.4byte	0xa7
 4272 1124 18       		.byte	0x18
 4273 1125 1C       		.uleb128 0x1c
 4274 1126 DE040000 		.4byte	.LASF275
 4275 112a 0D       		.byte	0xd
 4276 112b 0101     		.2byte	0x101
 4277 112d 1D0E0000 		.4byte	0xe1d
 4278 1131 1C       		.byte	0x1c
 4279 1132 1C       		.uleb128 0x1c
 4280 1133 DD060000 		.4byte	.LASF276
 4281 1137 0D       		.byte	0xd
 4282 1138 0301     		.2byte	0x103
 4283 113a 1D0E0000 		.4byte	0xe1d
 4284 113e 1D       		.byte	0x1d
 4285 113f 00       		.byte	0
 4286 1140 11       		.uleb128 0x11
 4287 1141 CA030000 		.4byte	.LASF277
 4288 1145 0D       		.byte	0xd
 4289 1146 0401     		.2byte	0x104
 4290 1148 C9100000 		.4byte	0x10c9
 4291 114c 1F       		.uleb128 0x1f
 4292 114d 04       		.byte	0x4
 4293 114e 0D       		.byte	0xd
 4294 114f 0701     		.2byte	0x107
 4295 1151 8A110000 		.4byte	0x118a
 4296 1155 1C       		.uleb128 0x1c
 4297 1156 B60B0000 		.4byte	.LASF278
 4298 115a 0D       		.byte	0xd
 4299 115b 0901     		.2byte	0x109
ARM GAS  /tmp/ccmSFvTJ.s 			page 101


 4300 115d 8A0F0000 		.4byte	0xf8a
 4301 1161 00       		.byte	0
 4302 1162 1C       		.uleb128 0x1c
 4303 1163 ED080000 		.4byte	.LASF279
 4304 1167 0D       		.byte	0xd
 4305 1168 0B01     		.2byte	0x10b
 4306 116a 9D0E0000 		.4byte	0xe9d
 4307 116e 01       		.byte	0x1
 4308 116f 1C       		.uleb128 0x1c
 4309 1170 A6140000 		.4byte	.LASF280
 4310 1174 0D       		.byte	0xd
 4311 1175 0D01     		.2byte	0x10d
 4312 1177 1D0E0000 		.4byte	0xe1d
 4313 117b 02       		.byte	0x2
 4314 117c 1C       		.uleb128 0x1c
 4315 117d 6E0A0000 		.4byte	.LASF281
 4316 1181 0D       		.byte	0xd
 4317 1182 0F01     		.2byte	0x10f
 4318 1184 1D0E0000 		.4byte	0xe1d
 4319 1188 03       		.byte	0x3
 4320 1189 00       		.byte	0
 4321 118a 11       		.uleb128 0x11
 4322 118b 7A110000 		.4byte	.LASF282
 4323 118f 0D       		.byte	0xd
 4324 1190 1001     		.2byte	0x110
 4325 1192 4C110000 		.4byte	0x114c
 4326 1196 1F       		.uleb128 0x1f
 4327 1197 0C       		.byte	0xc
 4328 1198 0D       		.byte	0xd
 4329 1199 1301     		.2byte	0x113
 4330 119b C7110000 		.4byte	0x11c7
 4331 119f 1C       		.uleb128 0x1c
 4332 11a0 1A000000 		.4byte	.LASF283
 4333 11a4 0D       		.byte	0xd
 4334 11a5 1501     		.2byte	0x115
 4335 11a7 A7000000 		.4byte	0xa7
 4336 11ab 00       		.byte	0
 4337 11ac 1C       		.uleb128 0x1c
 4338 11ad C7020000 		.4byte	.LASF284
 4339 11b1 0D       		.byte	0xd
 4340 11b2 1701     		.2byte	0x117
 4341 11b4 A7000000 		.4byte	0xa7
 4342 11b8 04       		.byte	0x4
 4343 11b9 1C       		.uleb128 0x1c
 4344 11ba 240D0000 		.4byte	.LASF285
 4345 11be 0D       		.byte	0xd
 4346 11bf 1901     		.2byte	0x119
 4347 11c1 A7000000 		.4byte	0xa7
 4348 11c5 08       		.byte	0x8
 4349 11c6 00       		.byte	0
 4350 11c7 11       		.uleb128 0x11
 4351 11c8 60000000 		.4byte	.LASF286
 4352 11cc 0D       		.byte	0xd
 4353 11cd 1A01     		.2byte	0x11a
 4354 11cf 96110000 		.4byte	0x1196
 4355 11d3 1F       		.uleb128 0x1f
 4356 11d4 3C       		.byte	0x3c
ARM GAS  /tmp/ccmSFvTJ.s 			page 102


 4357 11d5 0D       		.byte	0xd
 4358 11d6 1E01     		.2byte	0x11e
 4359 11d8 FB120000 		.4byte	0x12fb
 4360 11dc 1C       		.uleb128 0x1c
 4361 11dd 0B0D0000 		.4byte	.LASF287
 4362 11e1 0D       		.byte	0xd
 4363 11e2 2001     		.2byte	0x120
 4364 11e4 A7000000 		.4byte	0xa7
 4365 11e8 00       		.byte	0
 4366 11e9 1C       		.uleb128 0x1c
 4367 11ea 2A0A0000 		.4byte	.LASF288
 4368 11ee 0D       		.byte	0xd
 4369 11ef 2201     		.2byte	0x122
 4370 11f1 A7000000 		.4byte	0xa7
 4371 11f5 04       		.byte	0x4
 4372 11f6 1C       		.uleb128 0x1c
 4373 11f7 FC130000 		.4byte	.LASF289
 4374 11fb 0D       		.byte	0xd
 4375 11fc 2401     		.2byte	0x124
 4376 11fe 730E0000 		.4byte	0xe73
 4377 1202 08       		.byte	0x8
 4378 1203 1C       		.uleb128 0x1c
 4379 1204 ED080000 		.4byte	.LASF279
 4380 1208 0D       		.byte	0xd
 4381 1209 2601     		.2byte	0x126
 4382 120b 9D0E0000 		.4byte	0xe9d
 4383 120f 0A       		.byte	0xa
 4384 1210 1C       		.uleb128 0x1c
 4385 1211 1C110000 		.4byte	.LASF290
 4386 1215 0D       		.byte	0xd
 4387 1216 2801     		.2byte	0x128
 4388 1218 A7000000 		.4byte	0xa7
 4389 121c 0C       		.byte	0xc
 4390 121d 1C       		.uleb128 0x1c
 4391 121e 8E040000 		.4byte	.LASF273
 4392 1222 0D       		.byte	0xd
 4393 1223 2A01     		.2byte	0x12a
 4394 1225 A7000000 		.4byte	0xa7
 4395 1229 10       		.byte	0x10
 4396 122a 1C       		.uleb128 0x1c
 4397 122b 0F100000 		.4byte	.LASF291
 4398 122f 0D       		.byte	0xd
 4399 1230 2E01     		.2byte	0x12e
 4400 1232 4E0F0000 		.4byte	0xf4e
 4401 1236 14       		.byte	0x14
 4402 1237 1C       		.uleb128 0x1c
 4403 1238 530A0000 		.4byte	.LASF292
 4404 123c 0D       		.byte	0xd
 4405 123d 3001     		.2byte	0x130
 4406 123f 1D0E0000 		.4byte	0xe1d
 4407 1243 16       		.byte	0x16
 4408 1244 1C       		.uleb128 0x1c
 4409 1245 0E0B0000 		.4byte	.LASF293
 4410 1249 0D       		.byte	0xd
 4411 124a 3201     		.2byte	0x132
 4412 124c 1D0E0000 		.4byte	0xe1d
 4413 1250 17       		.byte	0x17
ARM GAS  /tmp/ccmSFvTJ.s 			page 103


 4414 1251 1C       		.uleb128 0x1c
 4415 1252 6D0C0000 		.4byte	.LASF294
 4416 1256 0D       		.byte	0xd
 4417 1257 3401     		.2byte	0x134
 4418 1259 1D0E0000 		.4byte	0xe1d
 4419 125d 18       		.byte	0x18
 4420 125e 1C       		.uleb128 0x1c
 4421 125f E40D0000 		.4byte	.LASF295
 4422 1263 0D       		.byte	0xd
 4423 1264 3601     		.2byte	0x136
 4424 1266 8C000000 		.4byte	0x8c
 4425 126a 1A       		.byte	0x1a
 4426 126b 1C       		.uleb128 0x1c
 4427 126c D50A0000 		.4byte	.LASF296
 4428 1270 0D       		.byte	0xd
 4429 1271 3801     		.2byte	0x138
 4430 1273 8C000000 		.4byte	0x8c
 4431 1277 1C       		.byte	0x1c
 4432 1278 1C       		.uleb128 0x1c
 4433 1279 1D140000 		.4byte	.LASF297
 4434 127d 0D       		.byte	0xd
 4435 127e 3A01     		.2byte	0x13a
 4436 1280 BE100000 		.4byte	0x10be
 4437 1284 1E       		.byte	0x1e
 4438 1285 1C       		.uleb128 0x1c
 4439 1286 70110000 		.4byte	.LASF298
 4440 128a 0D       		.byte	0xd
 4441 128b 3C01     		.2byte	0x13c
 4442 128d 1D0E0000 		.4byte	0xe1d
 4443 1291 22       		.byte	0x22
 4444 1292 1C       		.uleb128 0x1c
 4445 1293 B60B0000 		.4byte	.LASF278
 4446 1297 0D       		.byte	0xd
 4447 1298 3E01     		.2byte	0x13e
 4448 129a 8A0F0000 		.4byte	0xf8a
 4449 129e 23       		.byte	0x23
 4450 129f 1C       		.uleb128 0x1c
 4451 12a0 410F0000 		.4byte	.LASF299
 4452 12a4 0D       		.byte	0xd
 4453 12a5 4001     		.2byte	0x140
 4454 12a7 9D0E0000 		.4byte	0xe9d
 4455 12ab 24       		.byte	0x24
 4456 12ac 1C       		.uleb128 0x1c
 4457 12ad 050F0000 		.4byte	.LASF300
 4458 12b1 0D       		.byte	0xd
 4459 12b2 4201     		.2byte	0x142
 4460 12b4 9D0E0000 		.4byte	0xe9d
 4461 12b8 25       		.byte	0x25
 4462 12b9 1C       		.uleb128 0x1c
 4463 12ba F50D0000 		.4byte	.LASF301
 4464 12be 0D       		.byte	0xd
 4465 12bf 4F01     		.2byte	0x14f
 4466 12c1 A7000000 		.4byte	0xa7
 4467 12c5 28       		.byte	0x28
 4468 12c6 1C       		.uleb128 0x1c
 4469 12c7 EE0B0000 		.4byte	.LASF302
 4470 12cb 0D       		.byte	0xd
ARM GAS  /tmp/ccmSFvTJ.s 			page 104


 4471 12cc 5101     		.2byte	0x151
 4472 12ce D20F0000 		.4byte	0xfd2
 4473 12d2 2C       		.byte	0x2c
 4474 12d3 1C       		.uleb128 0x1c
 4475 12d4 C7060000 		.4byte	.LASF303
 4476 12d8 0D       		.byte	0xd
 4477 12d9 5301     		.2byte	0x153
 4478 12db A7000000 		.4byte	0xa7
 4479 12df 30       		.byte	0x30
 4480 12e0 1C       		.uleb128 0x1c
 4481 12e1 95080000 		.4byte	.LASF304
 4482 12e5 0D       		.byte	0xd
 4483 12e6 5501     		.2byte	0x155
 4484 12e8 7A100000 		.4byte	0x107a
 4485 12ec 34       		.byte	0x34
 4486 12ed 1C       		.uleb128 0x1c
 4487 12ee 7B050000 		.4byte	.LASF305
 4488 12f2 0D       		.byte	0xd
 4489 12f3 5701     		.2byte	0x157
 4490 12f5 A7000000 		.4byte	0xa7
 4491 12f9 38       		.byte	0x38
 4492 12fa 00       		.byte	0
 4493 12fb 11       		.uleb128 0x11
 4494 12fc 29010000 		.4byte	.LASF306
 4495 1300 0D       		.byte	0xd
 4496 1301 5901     		.2byte	0x159
 4497 1303 D3110000 		.4byte	0x11d3
 4498 1307 28       		.uleb128 0x28
 4499 1308 D1010000 		.4byte	.LASF310
 4500 130c 01       		.byte	0x1
 4501 130d A104     		.2byte	0x4a1
 4502 130f 00000000 		.4byte	.LFB182
 4503 1313 2C000000 		.4byte	.LFE182-.LFB182
 4504 1317 01       		.uleb128 0x1
 4505 1318 9C       		.byte	0x9c
 4506 1319 48130000 		.4byte	0x1348
 4507 131d 29       		.uleb128 0x29
 4508 131e 02010000 		.4byte	.LASF307
 4509 1322 01       		.byte	0x1
 4510 1323 A104     		.2byte	0x4a1
 4511 1325 48130000 		.4byte	0x1348
 4512 1329 01       		.uleb128 0x1
 4513 132a 50       		.byte	0x50
 4514 132b 29       		.uleb128 0x29
 4515 132c 97100000 		.4byte	.LASF308
 4516 1330 01       		.byte	0x1
 4517 1331 A104     		.2byte	0x4a1
 4518 1333 4E130000 		.4byte	0x134e
 4519 1337 01       		.uleb128 0x1
 4520 1338 51       		.byte	0x51
 4521 1339 29       		.uleb128 0x29
 4522 133a 9B0B0000 		.4byte	.LASF309
 4523 133e 01       		.byte	0x1
 4524 133f A104     		.2byte	0x4a1
 4525 1341 A7000000 		.4byte	0xa7
 4526 1345 01       		.uleb128 0x1
 4527 1346 52       		.byte	0x52
ARM GAS  /tmp/ccmSFvTJ.s 			page 105


 4528 1347 00       		.byte	0
 4529 1348 16       		.uleb128 0x16
 4530 1349 04       		.byte	0x4
 4531 134a F2050000 		.4byte	0x5f2
 4532 134e 16       		.uleb128 0x16
 4533 134f 04       		.byte	0x4
 4534 1350 FB120000 		.4byte	0x12fb
 4535 1354 28       		.uleb128 0x28
 4536 1355 12130000 		.4byte	.LASF311
 4537 1359 01       		.byte	0x1
 4538 135a 9404     		.2byte	0x494
 4539 135c 00000000 		.4byte	.LFB181
 4540 1360 10000000 		.4byte	.LFE181-.LFB181
 4541 1364 01       		.uleb128 0x1
 4542 1365 9C       		.byte	0x9c
 4543 1366 99130000 		.4byte	0x1399
 4544 136a 29       		.uleb128 0x29
 4545 136b 02010000 		.4byte	.LASF307
 4546 136f 01       		.byte	0x1
 4547 1370 9404     		.2byte	0x494
 4548 1372 48130000 		.4byte	0x1348
 4549 1376 01       		.uleb128 0x1
 4550 1377 50       		.byte	0x50
 4551 1378 2A       		.uleb128 0x2a
 4552 1379 6F0B0000 		.4byte	.LASF312
 4553 137d 01       		.byte	0x1
 4554 137e 9404     		.2byte	0x494
 4555 1380 A7000000 		.4byte	0xa7
 4556 1384 00000000 		.4byte	.LLST64
 4557 1388 2B       		.uleb128 0x2b
 4558 1389 07040000 		.4byte	.LASF313
 4559 138d 01       		.byte	0x1
 4560 138e 9604     		.2byte	0x496
 4561 1390 A7000000 		.4byte	0xa7
 4562 1394 21000000 		.4byte	.LLST65
 4563 1398 00       		.byte	0
 4564 1399 28       		.uleb128 0x28
 4565 139a 560F0000 		.4byte	.LASF314
 4566 139e 01       		.byte	0x1
 4567 139f 7804     		.2byte	0x478
 4568 13a1 00000000 		.4byte	.LFB180
 4569 13a5 5E000000 		.4byte	.LFE180-.LFB180
 4570 13a9 01       		.uleb128 0x1
 4571 13aa 9C       		.byte	0x9c
 4572 13ab EC130000 		.4byte	0x13ec
 4573 13af 29       		.uleb128 0x29
 4574 13b0 02010000 		.4byte	.LASF307
 4575 13b4 01       		.byte	0x1
 4576 13b5 7804     		.2byte	0x478
 4577 13b7 48130000 		.4byte	0x1348
 4578 13bb 01       		.uleb128 0x1
 4579 13bc 50       		.byte	0x50
 4580 13bd 29       		.uleb128 0x29
 4581 13be 97100000 		.4byte	.LASF308
 4582 13c2 01       		.byte	0x1
 4583 13c3 7804     		.2byte	0x478
 4584 13c5 4E130000 		.4byte	0x134e
ARM GAS  /tmp/ccmSFvTJ.s 			page 106


 4585 13c9 01       		.uleb128 0x1
 4586 13ca 51       		.byte	0x51
 4587 13cb 2A       		.uleb128 0x2a
 4588 13cc C7060000 		.4byte	.LASF303
 4589 13d0 01       		.byte	0x1
 4590 13d1 7904     		.2byte	0x479
 4591 13d3 A7000000 		.4byte	0xa7
 4592 13d7 46000000 		.4byte	.LLST62
 4593 13db 2A       		.uleb128 0x2a
 4594 13dc 95080000 		.4byte	.LASF304
 4595 13e0 01       		.byte	0x1
 4596 13e1 7A04     		.2byte	0x47a
 4597 13e3 7A100000 		.4byte	0x107a
 4598 13e7 AA000000 		.4byte	.LLST63
 4599 13eb 00       		.byte	0
 4600 13ec 28       		.uleb128 0x28
 4601 13ed 4F020000 		.4byte	.LASF315
 4602 13f1 01       		.byte	0x1
 4603 13f2 6604     		.2byte	0x466
 4604 13f4 00000000 		.4byte	.LFB179
 4605 13f8 0C000000 		.4byte	.LFE179-.LFB179
 4606 13fc 01       		.uleb128 0x1
 4607 13fd 9C       		.byte	0x9c
 4608 13fe 2D140000 		.4byte	0x142d
 4609 1402 29       		.uleb128 0x29
 4610 1403 02010000 		.4byte	.LASF307
 4611 1407 01       		.byte	0x1
 4612 1408 6604     		.2byte	0x466
 4613 140a 48130000 		.4byte	0x1348
 4614 140e 01       		.uleb128 0x1
 4615 140f 50       		.byte	0x50
 4616 1410 29       		.uleb128 0x29
 4617 1411 97100000 		.4byte	.LASF308
 4618 1415 01       		.byte	0x1
 4619 1416 6604     		.2byte	0x466
 4620 1418 4E130000 		.4byte	0x134e
 4621 141c 01       		.uleb128 0x1
 4622 141d 51       		.byte	0x51
 4623 141e 29       		.uleb128 0x29
 4624 141f F50D0000 		.4byte	.LASF301
 4625 1423 01       		.byte	0x1
 4626 1424 6704     		.2byte	0x467
 4627 1426 A7000000 		.4byte	0xa7
 4628 142a 01       		.uleb128 0x1
 4629 142b 52       		.byte	0x52
 4630 142c 00       		.byte	0
 4631 142d 28       		.uleb128 0x28
 4632 142e B0010000 		.4byte	.LASF316
 4633 1432 01       		.byte	0x1
 4634 1433 0F04     		.2byte	0x40f
 4635 1435 00000000 		.4byte	.LFB178
 4636 1439 22000000 		.4byte	.LFE178-.LFB178
 4637 143d 01       		.uleb128 0x1
 4638 143e 9C       		.byte	0x9c
 4639 143f 92140000 		.4byte	0x1492
 4640 1443 29       		.uleb128 0x29
 4641 1444 02010000 		.4byte	.LASF307
ARM GAS  /tmp/ccmSFvTJ.s 			page 107


 4642 1448 01       		.byte	0x1
 4643 1449 0F04     		.2byte	0x40f
 4644 144b 48130000 		.4byte	0x1348
 4645 144f 01       		.uleb128 0x1
 4646 1450 50       		.byte	0x50
 4647 1451 2A       		.uleb128 0x2a
 4648 1452 2E0D0000 		.4byte	.LASF317
 4649 1456 01       		.byte	0x1
 4650 1457 0F04     		.2byte	0x40f
 4651 1459 F90E0000 		.4byte	0xef9
 4652 145d 0E010000 		.4byte	.LLST58
 4653 1461 2A       		.uleb128 0x2a
 4654 1462 34070000 		.4byte	.LASF318
 4655 1466 01       		.byte	0x1
 4656 1467 1004     		.2byte	0x410
 4657 1469 1D0E0000 		.4byte	0xe1d
 4658 146d 2F010000 		.4byte	.LLST59
 4659 1471 2A       		.uleb128 0x2a
 4660 1472 F4050000 		.4byte	.LASF319
 4661 1476 01       		.byte	0x1
 4662 1477 1004     		.2byte	0x410
 4663 1479 1D0E0000 		.4byte	0xe1d
 4664 147d 50010000 		.4byte	.LLST60
 4665 1481 2B       		.uleb128 0x2b
 4666 1482 D7070000 		.4byte	.LASF320
 4667 1486 01       		.byte	0x1
 4668 1487 1204     		.2byte	0x412
 4669 1489 A7000000 		.4byte	0xa7
 4670 148d 71010000 		.4byte	.LLST61
 4671 1491 00       		.byte	0
 4672 1492 2C       		.uleb128 0x2c
 4673 1493 37010000 		.4byte	.LASF321
 4674 1497 01       		.byte	0x1
 4675 1498 0004     		.2byte	0x400
 4676 149a A7000000 		.4byte	0xa7
 4677 149e 00000000 		.4byte	.LFB177
 4678 14a2 04000000 		.4byte	.LFE177-.LFB177
 4679 14a6 01       		.uleb128 0x1
 4680 14a7 9C       		.byte	0x9c
 4681 14a8 BD140000 		.4byte	0x14bd
 4682 14ac 2A       		.uleb128 0x2a
 4683 14ad 02010000 		.4byte	.LASF307
 4684 14b1 01       		.byte	0x1
 4685 14b2 0004     		.2byte	0x400
 4686 14b4 48130000 		.4byte	0x1348
 4687 14b8 9A010000 		.4byte	.LLST57
 4688 14bc 00       		.byte	0
 4689 14bd 2C       		.uleb128 0x2c
 4690 14be 7A130000 		.4byte	.LASF322
 4691 14c2 01       		.byte	0x1
 4692 14c3 F403     		.2byte	0x3f4
 4693 14c5 A7000000 		.4byte	0xa7
 4694 14c9 00000000 		.4byte	.LFB176
 4695 14cd 04000000 		.4byte	.LFE176-.LFB176
 4696 14d1 01       		.uleb128 0x1
 4697 14d2 9C       		.byte	0x9c
 4698 14d3 E8140000 		.4byte	0x14e8
ARM GAS  /tmp/ccmSFvTJ.s 			page 108


 4699 14d7 2A       		.uleb128 0x2a
 4700 14d8 02010000 		.4byte	.LASF307
 4701 14dc 01       		.byte	0x1
 4702 14dd F403     		.2byte	0x3f4
 4703 14df 48130000 		.4byte	0x1348
 4704 14e3 BB010000 		.4byte	.LLST56
 4705 14e7 00       		.byte	0
 4706 14e8 2C       		.uleb128 0x2c
 4707 14e9 6A060000 		.4byte	.LASF323
 4708 14ed 01       		.byte	0x1
 4709 14ee DB03     		.2byte	0x3db
 4710 14f0 1D0E0000 		.4byte	0xe1d
 4711 14f4 00000000 		.4byte	.LFB175
 4712 14f8 1E000000 		.4byte	.LFE175-.LFB175
 4713 14fc 01       		.uleb128 0x1
 4714 14fd 9C       		.byte	0x9c
 4715 14fe 31150000 		.4byte	0x1531
 4716 1502 2A       		.uleb128 0x2a
 4717 1503 02010000 		.4byte	.LASF307
 4718 1507 01       		.byte	0x1
 4719 1508 DB03     		.2byte	0x3db
 4720 150a 48130000 		.4byte	0x1348
 4721 150e DC010000 		.4byte	.LLST54
 4722 1512 29       		.uleb128 0x29
 4723 1513 02150000 		.4byte	.LASF324
 4724 1517 01       		.byte	0x1
 4725 1518 DB03     		.2byte	0x3db
 4726 151a 31150000 		.4byte	0x1531
 4727 151e 01       		.uleb128 0x1
 4728 151f 51       		.byte	0x51
 4729 1520 2B       		.uleb128 0x2b
 4730 1521 73030000 		.4byte	.LASF325
 4731 1525 01       		.byte	0x1
 4732 1526 DD03     		.2byte	0x3dd
 4733 1528 A7000000 		.4byte	0xa7
 4734 152c FD010000 		.4byte	.LLST55
 4735 1530 00       		.byte	0
 4736 1531 16       		.uleb128 0x16
 4737 1532 04       		.byte	0x4
 4738 1533 C7110000 		.4byte	0x11c7
 4739 1537 28       		.uleb128 0x28
 4740 1538 9B020000 		.4byte	.LASF326
 4741 153c 01       		.byte	0x1
 4742 153d CC03     		.2byte	0x3cc
 4743 153f 00000000 		.4byte	.LFB174
 4744 1543 10000000 		.4byte	.LFE174-.LFB174
 4745 1547 01       		.uleb128 0x1
 4746 1548 9C       		.byte	0x9c
 4747 1549 6C150000 		.4byte	0x156c
 4748 154d 29       		.uleb128 0x29
 4749 154e 02010000 		.4byte	.LASF307
 4750 1552 01       		.byte	0x1
 4751 1553 CC03     		.2byte	0x3cc
 4752 1555 48130000 		.4byte	0x1348
 4753 1559 01       		.uleb128 0x1
 4754 155a 50       		.byte	0x50
 4755 155b 2A       		.uleb128 0x2a
ARM GAS  /tmp/ccmSFvTJ.s 			page 109


 4756 155c AD0B0000 		.4byte	.LASF327
 4757 1560 01       		.byte	0x1
 4758 1561 CC03     		.2byte	0x3cc
 4759 1563 A7000000 		.4byte	0xa7
 4760 1567 10020000 		.4byte	.LLST53
 4761 156b 00       		.byte	0
 4762 156c 28       		.uleb128 0x28
 4763 156d 8B030000 		.4byte	.LASF328
 4764 1571 01       		.byte	0x1
 4765 1572 B503     		.2byte	0x3b5
 4766 1574 00000000 		.4byte	.LFB173
 4767 1578 24000000 		.4byte	.LFE173-.LFB173
 4768 157c 01       		.uleb128 0x1
 4769 157d 9C       		.byte	0x9c
 4770 157e BE150000 		.4byte	0x15be
 4771 1582 29       		.uleb128 0x29
 4772 1583 02010000 		.4byte	.LASF307
 4773 1587 01       		.byte	0x1
 4774 1588 B503     		.2byte	0x3b5
 4775 158a 48130000 		.4byte	0x1348
 4776 158e 01       		.uleb128 0x1
 4777 158f 50       		.byte	0x50
 4778 1590 2A       		.uleb128 0x2a
 4779 1591 AD0B0000 		.4byte	.LASF327
 4780 1595 01       		.byte	0x1
 4781 1596 B503     		.2byte	0x3b5
 4782 1598 A7000000 		.4byte	0xa7
 4783 159c 31020000 		.4byte	.LLST51
 4784 15a0 29       		.uleb128 0x29
 4785 15a1 D8080000 		.4byte	.LASF329
 4786 15a5 01       		.byte	0x1
 4787 15a6 B503     		.2byte	0x3b5
 4788 15a8 1D0E0000 		.4byte	0xe1d
 4789 15ac 01       		.uleb128 0x1
 4790 15ad 52       		.byte	0x52
 4791 15ae 2D       		.uleb128 0x2d
 4792 15af 777000   		.ascii	"wp\000"
 4793 15b2 01       		.byte	0x1
 4794 15b3 B703     		.2byte	0x3b7
 4795 15b5 A7000000 		.4byte	0xa7
 4796 15b9 6B020000 		.4byte	.LLST52
 4797 15bd 00       		.byte	0
 4798 15be 28       		.uleb128 0x28
 4799 15bf CD090000 		.4byte	.LASF330
 4800 15c3 01       		.byte	0x1
 4801 15c4 A903     		.2byte	0x3a9
 4802 15c6 00000000 		.4byte	.LFB172
 4803 15ca 04000000 		.4byte	.LFE172-.LFB172
 4804 15ce 01       		.uleb128 0x1
 4805 15cf 9C       		.byte	0x9c
 4806 15d0 F1150000 		.4byte	0x15f1
 4807 15d4 29       		.uleb128 0x29
 4808 15d5 02010000 		.4byte	.LASF307
 4809 15d9 01       		.byte	0x1
 4810 15da A903     		.2byte	0x3a9
 4811 15dc 48130000 		.4byte	0x1348
 4812 15e0 01       		.uleb128 0x1
ARM GAS  /tmp/ccmSFvTJ.s 			page 110


 4813 15e1 50       		.byte	0x50
 4814 15e2 29       		.uleb128 0x29
 4815 15e3 880E0000 		.4byte	.LASF331
 4816 15e7 01       		.byte	0x1
 4817 15e8 A903     		.2byte	0x3a9
 4818 15ea A7000000 		.4byte	0xa7
 4819 15ee 01       		.uleb128 0x1
 4820 15ef 51       		.byte	0x51
 4821 15f0 00       		.byte	0
 4822 15f1 28       		.uleb128 0x28
 4823 15f2 56110000 		.4byte	.LASF332
 4824 15f6 01       		.byte	0x1
 4825 15f7 9E03     		.2byte	0x39e
 4826 15f9 00000000 		.4byte	.LFB171
 4827 15fd 04000000 		.4byte	.LFE171-.LFB171
 4828 1601 01       		.uleb128 0x1
 4829 1602 9C       		.byte	0x9c
 4830 1603 24160000 		.4byte	0x1624
 4831 1607 29       		.uleb128 0x29
 4832 1608 02010000 		.4byte	.LASF307
 4833 160c 01       		.byte	0x1
 4834 160d 9E03     		.2byte	0x39e
 4835 160f 48130000 		.4byte	0x1348
 4836 1613 01       		.uleb128 0x1
 4837 1614 50       		.byte	0x50
 4838 1615 29       		.uleb128 0x29
 4839 1616 880E0000 		.4byte	.LASF331
 4840 161a 01       		.byte	0x1
 4841 161b 9E03     		.2byte	0x39e
 4842 161d A7000000 		.4byte	0xa7
 4843 1621 01       		.uleb128 0x1
 4844 1622 51       		.byte	0x51
 4845 1623 00       		.byte	0
 4846 1624 2C       		.uleb128 0x2c
 4847 1625 E8090000 		.4byte	.LASF333
 4848 1629 01       		.byte	0x1
 4849 162a 9303     		.2byte	0x393
 4850 162c A7000000 		.4byte	0xa7
 4851 1630 00000000 		.4byte	.LFB170
 4852 1634 0A000000 		.4byte	.LFE170-.LFB170
 4853 1638 01       		.uleb128 0x1
 4854 1639 9C       		.byte	0x9c
 4855 163a 4F160000 		.4byte	0x164f
 4856 163e 2A       		.uleb128 0x2a
 4857 163f 02010000 		.4byte	.LASF307
 4858 1643 01       		.byte	0x1
 4859 1644 9303     		.2byte	0x393
 4860 1646 48130000 		.4byte	0x1348
 4861 164a A1020000 		.4byte	.LLST50
 4862 164e 00       		.byte	0
 4863 164f 28       		.uleb128 0x28
 4864 1650 87070000 		.4byte	.LASF334
 4865 1654 01       		.byte	0x1
 4866 1655 8703     		.2byte	0x387
 4867 1657 00000000 		.4byte	.LFB169
 4868 165b 08000000 		.4byte	.LFE169-.LFB169
 4869 165f 01       		.uleb128 0x1
ARM GAS  /tmp/ccmSFvTJ.s 			page 111


 4870 1660 9C       		.byte	0x9c
 4871 1661 84160000 		.4byte	0x1684
 4872 1665 29       		.uleb128 0x29
 4873 1666 02010000 		.4byte	.LASF307
 4874 166a 01       		.byte	0x1
 4875 166b 8703     		.2byte	0x387
 4876 166d 48130000 		.4byte	0x1348
 4877 1671 01       		.uleb128 0x1
 4878 1672 50       		.byte	0x50
 4879 1673 2A       		.uleb128 0x2a
 4880 1674 00000000 		.4byte	.LASF274
 4881 1678 01       		.byte	0x1
 4882 1679 8703     		.2byte	0x387
 4883 167b A7000000 		.4byte	0xa7
 4884 167f C2020000 		.4byte	.LLST49
 4885 1683 00       		.byte	0
 4886 1684 28       		.uleb128 0x28
 4887 1685 E60E0000 		.4byte	.LASF335
 4888 1689 01       		.byte	0x1
 4889 168a 7C03     		.2byte	0x37c
 4890 168c 00000000 		.4byte	.LFB168
 4891 1690 06000000 		.4byte	.LFE168-.LFB168
 4892 1694 01       		.uleb128 0x1
 4893 1695 9C       		.byte	0x9c
 4894 1696 A9160000 		.4byte	0x16a9
 4895 169a 29       		.uleb128 0x29
 4896 169b 02010000 		.4byte	.LASF307
 4897 169f 01       		.byte	0x1
 4898 16a0 7C03     		.2byte	0x37c
 4899 16a2 48130000 		.4byte	0x1348
 4900 16a6 01       		.uleb128 0x1
 4901 16a7 50       		.byte	0x50
 4902 16a8 00       		.byte	0
 4903 16a9 2C       		.uleb128 0x2c
 4904 16aa CA080000 		.4byte	.LASF336
 4905 16ae 01       		.byte	0x1
 4906 16af 6603     		.2byte	0x366
 4907 16b1 A7000000 		.4byte	0xa7
 4908 16b5 00000000 		.4byte	.LFB167
 4909 16b9 1C000000 		.4byte	.LFE167-.LFB167
 4910 16bd 01       		.uleb128 0x1
 4911 16be 9C       		.byte	0x9c
 4912 16bf 04170000 		.4byte	0x1704
 4913 16c3 2A       		.uleb128 0x2a
 4914 16c4 02010000 		.4byte	.LASF307
 4915 16c8 01       		.byte	0x1
 4916 16c9 6603     		.2byte	0x366
 4917 16cb 48130000 		.4byte	0x1348
 4918 16cf E3020000 		.4byte	.LLST45
 4919 16d3 2A       		.uleb128 0x2a
 4920 16d4 88020000 		.4byte	.LASF337
 4921 16d8 01       		.byte	0x1
 4922 16d9 6603     		.2byte	0x366
 4923 16db 290F0000 		.4byte	0xf29
 4924 16df 0F030000 		.4byte	.LLST46
 4925 16e3 2A       		.uleb128 0x2a
 4926 16e4 00000000 		.4byte	.LASF274
ARM GAS  /tmp/ccmSFvTJ.s 			page 112


 4927 16e8 01       		.byte	0x1
 4928 16e9 6703     		.2byte	0x367
 4929 16eb A7000000 		.4byte	0xa7
 4930 16ef 30030000 		.4byte	.LLST47
 4931 16f3 2B       		.uleb128 0x2b
 4932 16f4 950D0000 		.4byte	.LASF338
 4933 16f8 01       		.byte	0x1
 4934 16f9 6903     		.2byte	0x369
 4935 16fb A7000000 		.4byte	0xa7
 4936 16ff 51030000 		.4byte	.LLST48
 4937 1703 00       		.byte	0
 4938 1704 28       		.uleb128 0x28
 4939 1705 030C0000 		.4byte	.LASF339
 4940 1709 01       		.byte	0x1
 4941 170a 2303     		.2byte	0x323
 4942 170c 00000000 		.4byte	.LFB166
 4943 1710 22000000 		.4byte	.LFE166-.LFB166
 4944 1714 01       		.uleb128 0x1
 4945 1715 9C       		.byte	0x9c
 4946 1716 47170000 		.4byte	0x1747
 4947 171a 29       		.uleb128 0x29
 4948 171b 02010000 		.4byte	.LASF307
 4949 171f 01       		.byte	0x1
 4950 1720 2303     		.2byte	0x323
 4951 1722 48130000 		.4byte	0x1348
 4952 1726 01       		.uleb128 0x1
 4953 1727 50       		.byte	0x50
 4954 1728 2A       		.uleb128 0x2a
 4955 1729 880E0000 		.4byte	.LASF331
 4956 172d 01       		.byte	0x1
 4957 172e 2303     		.2byte	0x323
 4958 1730 A7000000 		.4byte	0xa7
 4959 1734 6F030000 		.4byte	.LLST44
 4960 1738 29       		.uleb128 0x29
 4961 1739 AA100000 		.4byte	.LASF340
 4962 173d 01       		.byte	0x1
 4963 173e 2403     		.2byte	0x324
 4964 1740 AE0F0000 		.4byte	0xfae
 4965 1744 01       		.uleb128 0x1
 4966 1745 52       		.byte	0x52
 4967 1746 00       		.byte	0
 4968 1747 28       		.uleb128 0x28
 4969 1748 1D0C0000 		.4byte	.LASF341
 4970 174c 01       		.byte	0x1
 4971 174d 0F03     		.2byte	0x30f
 4972 174f 00000000 		.4byte	.LFB165
 4973 1753 22000000 		.4byte	.LFE165-.LFB165
 4974 1757 01       		.uleb128 0x1
 4975 1758 9C       		.byte	0x9c
 4976 1759 8A170000 		.4byte	0x178a
 4977 175d 29       		.uleb128 0x29
 4978 175e 02010000 		.4byte	.LASF307
 4979 1762 01       		.byte	0x1
 4980 1763 0F03     		.2byte	0x30f
 4981 1765 48130000 		.4byte	0x1348
 4982 1769 01       		.uleb128 0x1
 4983 176a 50       		.byte	0x50
ARM GAS  /tmp/ccmSFvTJ.s 			page 113


 4984 176b 2A       		.uleb128 0x2a
 4985 176c 880E0000 		.4byte	.LASF331
 4986 1770 01       		.byte	0x1
 4987 1771 0F03     		.2byte	0x30f
 4988 1773 A7000000 		.4byte	0xa7
 4989 1777 A9030000 		.4byte	.LLST43
 4990 177b 29       		.uleb128 0x29
 4991 177c AA100000 		.4byte	.LASF340
 4992 1780 01       		.byte	0x1
 4993 1781 1003     		.2byte	0x310
 4994 1783 AE0F0000 		.4byte	0xfae
 4995 1787 01       		.uleb128 0x1
 4996 1788 52       		.byte	0x52
 4997 1789 00       		.byte	0
 4998 178a 2E       		.uleb128 0x2e
 4999 178b 790A0000 		.4byte	.LASF390
 5000 178f 01       		.byte	0x1
 5001 1790 0103     		.2byte	0x301
 5002 1792 A7000000 		.4byte	0xa7
 5003 1796 01       		.byte	0x1
 5004 1797 B4170000 		.4byte	0x17b4
 5005 179b 2F       		.uleb128 0x2f
 5006 179c 02010000 		.4byte	.LASF307
 5007 17a0 01       		.byte	0x1
 5008 17a1 0103     		.2byte	0x301
 5009 17a3 48130000 		.4byte	0x1348
 5010 17a7 2F       		.uleb128 0x2f
 5011 17a8 69140000 		.4byte	.LASF342
 5012 17ac 01       		.byte	0x1
 5013 17ad 0103     		.2byte	0x301
 5014 17af A7000000 		.4byte	0xa7
 5015 17b3 00       		.byte	0
 5016 17b4 30       		.uleb128 0x30
 5017 17b5 1A050000 		.4byte	.LASF391
 5018 17b9 01       		.byte	0x1
 5019 17ba F302     		.2byte	0x2f3
 5020 17bc A7000000 		.4byte	0xa7
 5021 17c0 DD170000 		.4byte	0x17dd
 5022 17c4 2F       		.uleb128 0x2f
 5023 17c5 02010000 		.4byte	.LASF307
 5024 17c9 01       		.byte	0x1
 5025 17ca F302     		.2byte	0x2f3
 5026 17cc 48130000 		.4byte	0x1348
 5027 17d0 2F       		.uleb128 0x2f
 5028 17d1 69140000 		.4byte	.LASF342
 5029 17d5 01       		.byte	0x1
 5030 17d6 F302     		.2byte	0x2f3
 5031 17d8 A7000000 		.4byte	0xa7
 5032 17dc 00       		.byte	0
 5033 17dd 2C       		.uleb128 0x2c
 5034 17de 1B0E0000 		.4byte	.LASF343
 5035 17e2 01       		.byte	0x1
 5036 17e3 C802     		.2byte	0x2c8
 5037 17e5 A7000000 		.4byte	0xa7
 5038 17e9 00000000 		.4byte	.LFB162
 5039 17ed A4000000 		.4byte	.LFE162-.LFB162
 5040 17f1 01       		.uleb128 0x1
ARM GAS  /tmp/ccmSFvTJ.s 			page 114


 5041 17f2 9C       		.byte	0x9c
 5042 17f3 26180000 		.4byte	0x1826
 5043 17f7 2A       		.uleb128 0x2a
 5044 17f8 02010000 		.4byte	.LASF307
 5045 17fc 01       		.byte	0x1
 5046 17fd C802     		.2byte	0x2c8
 5047 17ff 48130000 		.4byte	0x1348
 5048 1803 E3030000 		.4byte	.LLST39
 5049 1807 29       		.uleb128 0x29
 5050 1808 D8040000 		.4byte	.LASF344
 5051 180c 01       		.byte	0x1
 5052 180d C802     		.2byte	0x2c8
 5053 180f 26180000 		.4byte	0x1826
 5054 1813 01       		.uleb128 0x1
 5055 1814 51       		.byte	0x51
 5056 1815 2B       		.uleb128 0x2b
 5057 1816 A80B0000 		.4byte	.LASF268
 5058 181a 01       		.byte	0x1
 5059 181b CA02     		.2byte	0x2ca
 5060 181d A7000000 		.4byte	0xa7
 5061 1821 1D040000 		.4byte	.LLST40
 5062 1825 00       		.byte	0
 5063 1826 16       		.uleb128 0x16
 5064 1827 04       		.byte	0x4
 5065 1828 40110000 		.4byte	0x1140
 5066 182c 2C       		.uleb128 0x2c
 5067 182d C80A0000 		.4byte	.LASF345
 5068 1831 01       		.byte	0x1
 5069 1832 9D02     		.2byte	0x29d
 5070 1834 A7000000 		.4byte	0xa7
 5071 1838 00000000 		.4byte	.LFB161
 5072 183c A2000000 		.4byte	.LFE161-.LFB161
 5073 1840 01       		.uleb128 0x1
 5074 1841 9C       		.byte	0x9c
 5075 1842 75180000 		.4byte	0x1875
 5076 1846 2A       		.uleb128 0x2a
 5077 1847 02010000 		.4byte	.LASF307
 5078 184b 01       		.byte	0x1
 5079 184c 9D02     		.2byte	0x29d
 5080 184e 48130000 		.4byte	0x1348
 5081 1852 48040000 		.4byte	.LLST37
 5082 1856 29       		.uleb128 0x29
 5083 1857 D8040000 		.4byte	.LASF344
 5084 185b 01       		.byte	0x1
 5085 185c 9D02     		.2byte	0x29d
 5086 185e 26180000 		.4byte	0x1826
 5087 1862 01       		.uleb128 0x1
 5088 1863 51       		.byte	0x51
 5089 1864 2B       		.uleb128 0x2b
 5090 1865 A80B0000 		.4byte	.LASF268
 5091 1869 01       		.byte	0x1
 5092 186a 9F02     		.2byte	0x29f
 5093 186c A7000000 		.4byte	0xa7
 5094 1870 82040000 		.4byte	.LLST38
 5095 1874 00       		.byte	0
 5096 1875 28       		.uleb128 0x28
 5097 1876 6A070000 		.4byte	.LASF346
ARM GAS  /tmp/ccmSFvTJ.s 			page 115


 5098 187a 01       		.byte	0x1
 5099 187b 9002     		.2byte	0x290
 5100 187d 00000000 		.4byte	.LFB160
 5101 1881 04000000 		.4byte	.LFE160-.LFB160
 5102 1885 01       		.uleb128 0x1
 5103 1886 9C       		.byte	0x9c
 5104 1887 A7180000 		.4byte	0x18a7
 5105 188b 29       		.uleb128 0x29
 5106 188c 02010000 		.4byte	.LASF307
 5107 1890 01       		.byte	0x1
 5108 1891 9002     		.2byte	0x290
 5109 1893 48130000 		.4byte	0x1348
 5110 1897 01       		.uleb128 0x1
 5111 1898 50       		.byte	0x50
 5112 1899 31       		.uleb128 0x31
 5113 189a 696400   		.ascii	"id\000"
 5114 189d 01       		.byte	0x1
 5115 189e 9002     		.2byte	0x290
 5116 18a0 8A0F0000 		.4byte	0xf8a
 5117 18a4 01       		.uleb128 0x1
 5118 18a5 51       		.byte	0x51
 5119 18a6 00       		.byte	0
 5120 18a7 2C       		.uleb128 0x2c
 5121 18a8 810B0000 		.4byte	.LASF347
 5122 18ac 01       		.byte	0x1
 5123 18ad 8202     		.2byte	0x282
 5124 18af 9D0E0000 		.4byte	0xe9d
 5125 18b3 00000000 		.4byte	.LFB159
 5126 18b7 0A000000 		.4byte	.LFE159-.LFB159
 5127 18bb 01       		.uleb128 0x1
 5128 18bc 9C       		.byte	0x9c
 5129 18bd EF180000 		.4byte	0x18ef
 5130 18c1 2A       		.uleb128 0x2a
 5131 18c2 02010000 		.4byte	.LASF307
 5132 18c6 01       		.byte	0x1
 5133 18c7 8202     		.2byte	0x282
 5134 18c9 48130000 		.4byte	0x1348
 5135 18cd AD040000 		.4byte	.LLST35
 5136 18d1 31       		.uleb128 0x31
 5137 18d2 696400   		.ascii	"id\000"
 5138 18d5 01       		.byte	0x1
 5139 18d6 8202     		.2byte	0x282
 5140 18d8 8A0F0000 		.4byte	0xf8a
 5141 18dc 01       		.uleb128 0x1
 5142 18dd 51       		.byte	0x51
 5143 18de 2B       		.uleb128 0x2b
 5144 18df 6F020000 		.4byte	.LASF348
 5145 18e3 01       		.byte	0x1
 5146 18e4 8402     		.2byte	0x284
 5147 18e6 A7000000 		.4byte	0xa7
 5148 18ea CE040000 		.4byte	.LLST36
 5149 18ee 00       		.byte	0
 5150 18ef 2C       		.uleb128 0x2c
 5151 18f0 E60C0000 		.4byte	.LASF349
 5152 18f4 01       		.byte	0x1
 5153 18f5 7502     		.2byte	0x275
 5154 18f7 A7000000 		.4byte	0xa7
ARM GAS  /tmp/ccmSFvTJ.s 			page 116


 5155 18fb 00000000 		.4byte	.LFB158
 5156 18ff 08000000 		.4byte	.LFE158-.LFB158
 5157 1903 01       		.uleb128 0x1
 5158 1904 9C       		.byte	0x9c
 5159 1905 1A190000 		.4byte	0x191a
 5160 1909 2A       		.uleb128 0x2a
 5161 190a 02010000 		.4byte	.LASF307
 5162 190e 01       		.byte	0x1
 5163 190f 7502     		.2byte	0x275
 5164 1911 48130000 		.4byte	0x1348
 5165 1915 E9040000 		.4byte	.LLST34
 5166 1919 00       		.byte	0
 5167 191a 2C       		.uleb128 0x2c
 5168 191b F3140000 		.4byte	.LASF350
 5169 191f 01       		.byte	0x1
 5170 1920 5102     		.2byte	0x251
 5171 1922 A7000000 		.4byte	0xa7
 5172 1926 00000000 		.4byte	.LFB157
 5173 192a 42000000 		.4byte	.LFE157-.LFB157
 5174 192e 01       		.uleb128 0x1
 5175 192f 9C       		.byte	0x9c
 5176 1930 71190000 		.4byte	0x1971
 5177 1934 2A       		.uleb128 0x2a
 5178 1935 02010000 		.4byte	.LASF307
 5179 1939 01       		.byte	0x1
 5180 193a 5102     		.2byte	0x251
 5181 193c 48130000 		.4byte	0x1348
 5182 1940 0A050000 		.4byte	.LLST32
 5183 1944 2A       		.uleb128 0x2a
 5184 1945 C2080000 		.4byte	.LASF351
 5185 1949 01       		.byte	0x1
 5186 194a 5102     		.2byte	0x251
 5187 194c 71190000 		.4byte	0x1971
 5188 1950 44050000 		.4byte	.LLST33
 5189 1954 32       		.uleb128 0x32
 5190 1955 B60B0000 		.4byte	.LASF278
 5191 1959 01       		.byte	0x1
 5192 195a 5302     		.2byte	0x253
 5193 195c A7000000 		.4byte	0xa7
 5194 1960 01       		.uleb128 0x1
 5195 1961 52       		.byte	0x52
 5196 1962 32       		.uleb128 0x32
 5197 1963 BD090000 		.4byte	.LASF352
 5198 1967 01       		.byte	0x1
 5199 1968 5402     		.2byte	0x254
 5200 196a A7000000 		.4byte	0xa7
 5201 196e 01       		.uleb128 0x1
 5202 196f 53       		.byte	0x53
 5203 1970 00       		.byte	0
 5204 1971 16       		.uleb128 0x16
 5205 1972 04       		.byte	0x4
 5206 1973 8A110000 		.4byte	0x118a
 5207 1977 28       		.uleb128 0x28
 5208 1978 4A100000 		.4byte	.LASF353
 5209 197c 01       		.byte	0x1
 5210 197d 3A02     		.2byte	0x23a
 5211 197f 00000000 		.4byte	.LFB156
ARM GAS  /tmp/ccmSFvTJ.s 			page 117


 5212 1983 18000000 		.4byte	.LFE156-.LFB156
 5213 1987 01       		.uleb128 0x1
 5214 1988 9C       		.byte	0x9c
 5215 1989 C8190000 		.4byte	0x19c8
 5216 198d 2A       		.uleb128 0x2a
 5217 198e 02010000 		.4byte	.LASF307
 5218 1992 01       		.byte	0x1
 5219 1993 3A02     		.2byte	0x23a
 5220 1995 48130000 		.4byte	0x1348
 5221 1999 7E050000 		.4byte	.LLST31
 5222 199d 29       		.uleb128 0x29
 5223 199e 97100000 		.4byte	.LASF308
 5224 19a2 01       		.byte	0x1
 5225 19a3 3A02     		.2byte	0x23a
 5226 19a5 4E130000 		.4byte	0x134e
 5227 19a9 01       		.uleb128 0x1
 5228 19aa 51       		.byte	0x51
 5229 19ab 29       		.uleb128 0x29
 5230 19ac E40D0000 		.4byte	.LASF295
 5231 19b0 01       		.byte	0x1
 5232 19b1 3B02     		.2byte	0x23b
 5233 19b3 8C000000 		.4byte	0x8c
 5234 19b7 01       		.uleb128 0x1
 5235 19b8 52       		.byte	0x52
 5236 19b9 29       		.uleb128 0x29
 5237 19ba D50A0000 		.4byte	.LASF296
 5238 19be 01       		.byte	0x1
 5239 19bf 3B02     		.2byte	0x23b
 5240 19c1 8C000000 		.4byte	0x8c
 5241 19c5 01       		.uleb128 0x1
 5242 19c6 53       		.byte	0x53
 5243 19c7 00       		.byte	0
 5244 19c8 28       		.uleb128 0x28
 5245 19c9 05020000 		.4byte	.LASF354
 5246 19cd 01       		.byte	0x1
 5247 19ce 0B02     		.2byte	0x20b
 5248 19d0 00000000 		.4byte	.LFB155
 5249 19d4 72000000 		.4byte	.LFE155-.LFB155
 5250 19d8 01       		.uleb128 0x1
 5251 19d9 9C       		.byte	0x9c
 5252 19da 831A0000 		.4byte	0x1a83
 5253 19de 29       		.uleb128 0x29
 5254 19df 02010000 		.4byte	.LASF307
 5255 19e3 01       		.byte	0x1
 5256 19e4 0B02     		.2byte	0x20b
 5257 19e6 48130000 		.4byte	0x1348
 5258 19ea 01       		.uleb128 0x1
 5259 19eb 50       		.byte	0x50
 5260 19ec 2A       		.uleb128 0x2a
 5261 19ed 97100000 		.4byte	.LASF308
 5262 19f1 01       		.byte	0x1
 5263 19f2 0B02     		.2byte	0x20b
 5264 19f4 4E130000 		.4byte	0x134e
 5265 19f8 9F050000 		.4byte	.LLST24
 5266 19fc 2A       		.uleb128 0x2a
 5267 19fd E50B0000 		.4byte	.LASF355
 5268 1a01 01       		.byte	0x1
ARM GAS  /tmp/ccmSFvTJ.s 			page 118


 5269 1a02 0C02     		.2byte	0x20c
 5270 1a04 831A0000 		.4byte	0x1a83
 5271 1a08 C0050000 		.4byte	.LLST25
 5272 1a0c 2A       		.uleb128 0x2a
 5273 1a0d 63060000 		.4byte	.LASF356
 5274 1a11 01       		.byte	0x1
 5275 1a12 0C02     		.2byte	0x20c
 5276 1a14 1D0E0000 		.4byte	0xe1d
 5277 1a18 E1050000 		.4byte	.LLST26
 5278 1a1c 2B       		.uleb128 0x2b
 5279 1a1d 0B080000 		.4byte	.LASF357
 5280 1a21 01       		.byte	0x1
 5281 1a22 0E02     		.2byte	0x20e
 5282 1a24 A7000000 		.4byte	0xa7
 5283 1a28 1B060000 		.4byte	.LLST27
 5284 1a2c 2B       		.uleb128 0x2b
 5285 1a2d 44120000 		.4byte	.LASF358
 5286 1a31 01       		.byte	0x1
 5287 1a32 1302     		.2byte	0x213
 5288 1a34 1D0E0000 		.4byte	0xe1d
 5289 1a38 53060000 		.4byte	.LLST28
 5290 1a3c 2B       		.uleb128 0x2b
 5291 1a3d 52120000 		.4byte	.LASF359
 5292 1a41 01       		.byte	0x1
 5293 1a42 1402     		.2byte	0x214
 5294 1a44 1D0E0000 		.4byte	0xe1d
 5295 1a48 8F060000 		.4byte	.LLST29
 5296 1a4c 32       		.uleb128 0x32
 5297 1a4d 4A020000 		.4byte	.LASF360
 5298 1a51 01       		.byte	0x1
 5299 1a52 1502     		.2byte	0x215
 5300 1a54 A7000000 		.4byte	0xa7
 5301 1a58 06       		.uleb128 0x6
 5302 1a59 7C       		.byte	0x7c
 5303 1a5a 00       		.sleb128 0
 5304 1a5b 08       		.byte	0x8
 5305 1a5c FF       		.byte	0xff
 5306 1a5d 1A       		.byte	0x1a
 5307 1a5e 9F       		.byte	0x9f
 5308 1a5f 32       		.uleb128 0x32
 5309 1a60 FB0C0000 		.4byte	.LASF361
 5310 1a64 01       		.byte	0x1
 5311 1a65 1602     		.2byte	0x216
 5312 1a67 A7000000 		.4byte	0xa7
 5313 1a6b 06       		.uleb128 0x6
 5314 1a6c 7E       		.byte	0x7e
 5315 1a6d 00       		.sleb128 0
 5316 1a6e 08       		.byte	0x8
 5317 1a6f FF       		.byte	0xff
 5318 1a70 1A       		.byte	0x1a
 5319 1a71 9F       		.byte	0x9f
 5320 1a72 2B       		.uleb128 0x2b
 5321 1a73 D60B0000 		.4byte	.LASF362
 5322 1a77 01       		.byte	0x1
 5323 1a78 1F02     		.2byte	0x21f
 5324 1a7a A7000000 		.4byte	0xa7
 5325 1a7e E9060000 		.4byte	.LLST30
ARM GAS  /tmp/ccmSFvTJ.s 			page 119


 5326 1a82 00       		.byte	0
 5327 1a83 16       		.uleb128 0x16
 5328 1a84 04       		.byte	0x4
 5329 1a85 BE100000 		.4byte	0x10be
 5330 1a89 28       		.uleb128 0x28
 5331 1a8a DD070000 		.4byte	.LASF363
 5332 1a8e 01       		.byte	0x1
 5333 1a8f F501     		.2byte	0x1f5
 5334 1a91 00000000 		.4byte	.LFB154
 5335 1a95 12000000 		.4byte	.LFE154-.LFB154
 5336 1a99 01       		.uleb128 0x1
 5337 1a9a 9C       		.byte	0x9c
 5338 1a9b CE1A0000 		.4byte	0x1ace
 5339 1a9f 29       		.uleb128 0x29
 5340 1aa0 02010000 		.4byte	.LASF307
 5341 1aa4 01       		.byte	0x1
 5342 1aa5 F501     		.2byte	0x1f5
 5343 1aa7 48130000 		.4byte	0x1348
 5344 1aab 01       		.uleb128 0x1
 5345 1aac 50       		.byte	0x50
 5346 1aad 2A       		.uleb128 0x2a
 5347 1aae B8130000 		.4byte	.LASF364
 5348 1ab2 01       		.byte	0x1
 5349 1ab3 F501     		.2byte	0x1f5
 5350 1ab5 A7000000 		.4byte	0xa7
 5351 1ab9 07070000 		.4byte	.LLST22
 5352 1abd 2A       		.uleb128 0x2a
 5353 1abe C30D0000 		.4byte	.LASF365
 5354 1ac2 01       		.byte	0x1
 5355 1ac3 F601     		.2byte	0x1f6
 5356 1ac5 A7000000 		.4byte	0xa7
 5357 1ac9 28070000 		.4byte	.LLST23
 5358 1acd 00       		.byte	0
 5359 1ace 28       		.uleb128 0x28
 5360 1acf 86110000 		.4byte	.LASF366
 5361 1ad3 01       		.byte	0x1
 5362 1ad4 E001     		.2byte	0x1e0
 5363 1ad6 00000000 		.4byte	.LFB153
 5364 1ada 12000000 		.4byte	.LFE153-.LFB153
 5365 1ade 01       		.uleb128 0x1
 5366 1adf 9C       		.byte	0x9c
 5367 1ae0 131B0000 		.4byte	0x1b13
 5368 1ae4 29       		.uleb128 0x29
 5369 1ae5 02010000 		.4byte	.LASF307
 5370 1ae9 01       		.byte	0x1
 5371 1aea E001     		.2byte	0x1e0
 5372 1aec 48130000 		.4byte	0x1348
 5373 1af0 01       		.uleb128 0x1
 5374 1af1 50       		.byte	0x50
 5375 1af2 2A       		.uleb128 0x2a
 5376 1af3 B8130000 		.4byte	.LASF364
 5377 1af7 01       		.byte	0x1
 5378 1af8 E001     		.2byte	0x1e0
 5379 1afa A7000000 		.4byte	0xa7
 5380 1afe 56070000 		.4byte	.LLST20
 5381 1b02 2A       		.uleb128 0x2a
 5382 1b03 C30D0000 		.4byte	.LASF365
ARM GAS  /tmp/ccmSFvTJ.s 			page 120


 5383 1b07 01       		.byte	0x1
 5384 1b08 E101     		.2byte	0x1e1
 5385 1b0a A7000000 		.4byte	0xa7
 5386 1b0e 77070000 		.4byte	.LLST21
 5387 1b12 00       		.byte	0
 5388 1b13 2C       		.uleb128 0x2c
 5389 1b14 41140000 		.4byte	.LASF367
 5390 1b18 01       		.byte	0x1
 5391 1b19 CF01     		.2byte	0x1cf
 5392 1b1b A7000000 		.4byte	0xa7
 5393 1b1f 00000000 		.4byte	.LFB152
 5394 1b23 04000000 		.4byte	.LFE152-.LFB152
 5395 1b27 01       		.uleb128 0x1
 5396 1b28 9C       		.byte	0x9c
 5397 1b29 3E1B0000 		.4byte	0x1b3e
 5398 1b2d 2A       		.uleb128 0x2a
 5399 1b2e 02010000 		.4byte	.LASF307
 5400 1b32 01       		.byte	0x1
 5401 1b33 CF01     		.2byte	0x1cf
 5402 1b35 48130000 		.4byte	0x1348
 5403 1b39 A5070000 		.4byte	.LLST19
 5404 1b3d 00       		.byte	0
 5405 1b3e 2C       		.uleb128 0x2c
 5406 1b3f 090A0000 		.4byte	.LASF368
 5407 1b43 01       		.byte	0x1
 5408 1b44 BF01     		.2byte	0x1bf
 5409 1b46 A7000000 		.4byte	0xa7
 5410 1b4a 00000000 		.4byte	.LFB151
 5411 1b4e 04000000 		.4byte	.LFE151-.LFB151
 5412 1b52 01       		.uleb128 0x1
 5413 1b53 9C       		.byte	0x9c
 5414 1b54 691B0000 		.4byte	0x1b69
 5415 1b58 2A       		.uleb128 0x2a
 5416 1b59 02010000 		.4byte	.LASF307
 5417 1b5d 01       		.byte	0x1
 5418 1b5e BF01     		.2byte	0x1bf
 5419 1b60 48130000 		.4byte	0x1348
 5420 1b64 C6070000 		.4byte	.LLST18
 5421 1b68 00       		.byte	0
 5422 1b69 2C       		.uleb128 0x2c
 5423 1b6a 4E0B0000 		.4byte	.LASF369
 5424 1b6e 01       		.byte	0x1
 5425 1b6f B301     		.2byte	0x1b3
 5426 1b71 A7000000 		.4byte	0xa7
 5427 1b75 00000000 		.4byte	.LFB150
 5428 1b79 04000000 		.4byte	.LFE150-.LFB150
 5429 1b7d 01       		.uleb128 0x1
 5430 1b7e 9C       		.byte	0x9c
 5431 1b7f 941B0000 		.4byte	0x1b94
 5432 1b83 2A       		.uleb128 0x2a
 5433 1b84 02010000 		.4byte	.LASF307
 5434 1b88 01       		.byte	0x1
 5435 1b89 B301     		.2byte	0x1b3
 5436 1b8b 48130000 		.4byte	0x1348
 5437 1b8f E7070000 		.4byte	.LLST17
 5438 1b93 00       		.byte	0
 5439 1b94 28       		.uleb128 0x28
ARM GAS  /tmp/ccmSFvTJ.s 			page 121


 5440 1b95 8C000000 		.4byte	.LASF370
 5441 1b99 01       		.byte	0x1
 5442 1b9a A501     		.2byte	0x1a5
 5443 1b9c 00000000 		.4byte	.LFB149
 5444 1ba0 0A000000 		.4byte	.LFE149-.LFB149
 5445 1ba4 01       		.uleb128 0x1
 5446 1ba5 9C       		.byte	0x9c
 5447 1ba6 C91B0000 		.4byte	0x1bc9
 5448 1baa 29       		.uleb128 0x29
 5449 1bab 02010000 		.4byte	.LASF307
 5450 1baf 01       		.byte	0x1
 5451 1bb0 A501     		.2byte	0x1a5
 5452 1bb2 48130000 		.4byte	0x1348
 5453 1bb6 01       		.uleb128 0x1
 5454 1bb7 50       		.byte	0x50
 5455 1bb8 2A       		.uleb128 0x2a
 5456 1bb9 AF0D0000 		.4byte	.LASF371
 5457 1bbd 01       		.byte	0x1
 5458 1bbe A501     		.2byte	0x1a5
 5459 1bc0 A7000000 		.4byte	0xa7
 5460 1bc4 08080000 		.4byte	.LLST16
 5461 1bc8 00       		.byte	0
 5462 1bc9 28       		.uleb128 0x28
 5463 1bca 24040000 		.4byte	.LASF372
 5464 1bce 01       		.byte	0x1
 5465 1bcf 9801     		.2byte	0x198
 5466 1bd1 00000000 		.4byte	.LFB148
 5467 1bd5 0A000000 		.4byte	.LFE148-.LFB148
 5468 1bd9 01       		.uleb128 0x1
 5469 1bda 9C       		.byte	0x9c
 5470 1bdb FE1B0000 		.4byte	0x1bfe
 5471 1bdf 29       		.uleb128 0x29
 5472 1be0 02010000 		.4byte	.LASF307
 5473 1be4 01       		.byte	0x1
 5474 1be5 9801     		.2byte	0x198
 5475 1be7 48130000 		.4byte	0x1348
 5476 1beb 01       		.uleb128 0x1
 5477 1bec 50       		.byte	0x50
 5478 1bed 2A       		.uleb128 0x2a
 5479 1bee AF0D0000 		.4byte	.LASF371
 5480 1bf2 01       		.byte	0x1
 5481 1bf3 9801     		.2byte	0x198
 5482 1bf5 A7000000 		.4byte	0xa7
 5483 1bf9 29080000 		.4byte	.LLST15
 5484 1bfd 00       		.byte	0
 5485 1bfe 2C       		.uleb128 0x2c
 5486 1bff 02050000 		.4byte	.LASF373
 5487 1c03 01       		.byte	0x1
 5488 1c04 8A01     		.2byte	0x18a
 5489 1c06 A7000000 		.4byte	0xa7
 5490 1c0a 00000000 		.4byte	.LFB147
 5491 1c0e 0C000000 		.4byte	.LFE147-.LFB147
 5492 1c12 01       		.uleb128 0x1
 5493 1c13 9C       		.byte	0x9c
 5494 1c14 371C0000 		.4byte	0x1c37
 5495 1c18 2A       		.uleb128 0x2a
 5496 1c19 02010000 		.4byte	.LASF307
ARM GAS  /tmp/ccmSFvTJ.s 			page 122


 5497 1c1d 01       		.byte	0x1
 5498 1c1e 8A01     		.2byte	0x18a
 5499 1c20 48130000 		.4byte	0x1348
 5500 1c24 4A080000 		.4byte	.LLST14
 5501 1c28 29       		.uleb128 0x29
 5502 1c29 97100000 		.4byte	.LASF308
 5503 1c2d 01       		.byte	0x1
 5504 1c2e 8A01     		.2byte	0x18a
 5505 1c30 4E130000 		.4byte	0x134e
 5506 1c34 01       		.uleb128 0x1
 5507 1c35 51       		.byte	0x51
 5508 1c36 00       		.byte	0
 5509 1c37 2C       		.uleb128 0x2c
 5510 1c38 4B060000 		.4byte	.LASF374
 5511 1c3c 01       		.byte	0x1
 5512 1c3d 6701     		.2byte	0x167
 5513 1c3f A7000000 		.4byte	0xa7
 5514 1c43 00000000 		.4byte	.LFB146
 5515 1c47 26000000 		.4byte	.LFE146-.LFB146
 5516 1c4b 01       		.uleb128 0x1
 5517 1c4c 9C       		.byte	0x9c
 5518 1c4d 8D1C0000 		.4byte	0x1c8d
 5519 1c51 2A       		.uleb128 0x2a
 5520 1c52 02010000 		.4byte	.LASF307
 5521 1c56 01       		.byte	0x1
 5522 1c57 6701     		.2byte	0x167
 5523 1c59 48130000 		.4byte	0x1348
 5524 1c5d 6B080000 		.4byte	.LLST13
 5525 1c61 29       		.uleb128 0x29
 5526 1c62 97100000 		.4byte	.LASF308
 5527 1c66 01       		.byte	0x1
 5528 1c67 6701     		.2byte	0x167
 5529 1c69 4E130000 		.4byte	0x134e
 5530 1c6d 01       		.uleb128 0x1
 5531 1c6e 51       		.byte	0x51
 5532 1c6f 29       		.uleb128 0x29
 5533 1c70 1C110000 		.4byte	.LASF290
 5534 1c74 01       		.byte	0x1
 5535 1c75 6801     		.2byte	0x168
 5536 1c77 A7000000 		.4byte	0xa7
 5537 1c7b 01       		.uleb128 0x1
 5538 1c7c 52       		.byte	0x52
 5539 1c7d 32       		.uleb128 0x32
 5540 1c7e 0B080000 		.4byte	.LASF357
 5541 1c82 01       		.byte	0x1
 5542 1c83 6A01     		.2byte	0x16a
 5543 1c85 A7000000 		.4byte	0xa7
 5544 1c89 02       		.uleb128 0x2
 5545 1c8a 71       		.byte	0x71
 5546 1c8b 00       		.sleb128 0
 5547 1c8c 00       		.byte	0
 5548 1c8d 2C       		.uleb128 0x2c
 5549 1c8e B5050000 		.4byte	.LASF375
 5550 1c92 01       		.byte	0x1
 5551 1c93 4501     		.2byte	0x145
 5552 1c95 A7000000 		.4byte	0xa7
 5553 1c99 00000000 		.4byte	.LFB145
ARM GAS  /tmp/ccmSFvTJ.s 			page 123


 5554 1c9d 26000000 		.4byte	.LFE145-.LFB145
 5555 1ca1 01       		.uleb128 0x1
 5556 1ca2 9C       		.byte	0x9c
 5557 1ca3 E31C0000 		.4byte	0x1ce3
 5558 1ca7 2A       		.uleb128 0x2a
 5559 1ca8 02010000 		.4byte	.LASF307
 5560 1cac 01       		.byte	0x1
 5561 1cad 4501     		.2byte	0x145
 5562 1caf 48130000 		.4byte	0x1348
 5563 1cb3 A5080000 		.4byte	.LLST12
 5564 1cb7 29       		.uleb128 0x29
 5565 1cb8 97100000 		.4byte	.LASF308
 5566 1cbc 01       		.byte	0x1
 5567 1cbd 4501     		.2byte	0x145
 5568 1cbf 4E130000 		.4byte	0x134e
 5569 1cc3 01       		.uleb128 0x1
 5570 1cc4 51       		.byte	0x51
 5571 1cc5 29       		.uleb128 0x29
 5572 1cc6 8E040000 		.4byte	.LASF273
 5573 1cca 01       		.byte	0x1
 5574 1ccb 4601     		.2byte	0x146
 5575 1ccd A7000000 		.4byte	0xa7
 5576 1cd1 01       		.uleb128 0x1
 5577 1cd2 52       		.byte	0x52
 5578 1cd3 32       		.uleb128 0x32
 5579 1cd4 0B080000 		.4byte	.LASF357
 5580 1cd8 01       		.byte	0x1
 5581 1cd9 4801     		.2byte	0x148
 5582 1cdb A7000000 		.4byte	0xa7
 5583 1cdf 02       		.uleb128 0x2
 5584 1ce0 71       		.byte	0x71
 5585 1ce1 00       		.sleb128 0
 5586 1ce2 00       		.byte	0
 5587 1ce3 33       		.uleb128 0x33
 5588 1ce4 42070000 		.4byte	.LASF376
 5589 1ce8 01       		.byte	0x1
 5590 1ce9 AA       		.byte	0xaa
 5591 1cea A7000000 		.4byte	0xa7
 5592 1cee 00000000 		.4byte	.LFB144
 5593 1cf2 6C010000 		.4byte	.LFE144-.LFB144
 5594 1cf6 01       		.uleb128 0x1
 5595 1cf7 9C       		.byte	0x9c
 5596 1cf8 561D0000 		.4byte	0x1d56
 5597 1cfc 34       		.uleb128 0x34
 5598 1cfd 02010000 		.4byte	.LASF307
 5599 1d01 01       		.byte	0x1
 5600 1d02 AA       		.byte	0xaa
 5601 1d03 48130000 		.4byte	0x1348
 5602 1d07 DF080000 		.4byte	.LLST7
 5603 1d0b 34       		.uleb128 0x34
 5604 1d0c 97100000 		.4byte	.LASF308
 5605 1d10 01       		.byte	0x1
 5606 1d11 AA       		.byte	0xaa
 5607 1d12 4E130000 		.4byte	0x134e
 5608 1d16 0B090000 		.4byte	.LLST8
 5609 1d1a 35       		.uleb128 0x35
 5610 1d1b 58130000 		.4byte	.LASF377
ARM GAS  /tmp/ccmSFvTJ.s 			page 124


 5611 1d1f 01       		.byte	0x1
 5612 1d20 AC       		.byte	0xac
 5613 1d21 A7000000 		.4byte	0xa7
 5614 1d25 37090000 		.4byte	.LLST9
 5615 1d29 35       		.uleb128 0x35
 5616 1d2a 0B080000 		.4byte	.LASF357
 5617 1d2e 01       		.byte	0x1
 5618 1d2f AD       		.byte	0xad
 5619 1d30 A7000000 		.4byte	0xa7
 5620 1d34 FF0A0000 		.4byte	.LLST10
 5621 1d38 23       		.uleb128 0x23
 5622 1d39 0B0D0000 		.4byte	.LASF287
 5623 1d3d 01       		.byte	0x1
 5624 1d3e D9       		.byte	0xd9
 5625 1d3f A7000000 		.4byte	0xa7
 5626 1d43 01       		.uleb128 0x1
 5627 1d44 56       		.byte	0x56
 5628 1d45 2B       		.uleb128 0x2b
 5629 1d46 46080000 		.4byte	.LASF378
 5630 1d4a 01       		.byte	0x1
 5631 1d4b 0301     		.2byte	0x103
 5632 1d4d A7000000 		.4byte	0xa7
 5633 1d51 1D0B0000 		.4byte	.LLST11
 5634 1d55 00       		.byte	0
 5635 1d56 33       		.uleb128 0x33
 5636 1d57 9E0A0000 		.4byte	.LASF379
 5637 1d5b 01       		.byte	0x1
 5638 1d5c 81       		.byte	0x81
 5639 1d5d A7000000 		.4byte	0xa7
 5640 1d61 00000000 		.4byte	.LFB143
 5641 1d65 3E000000 		.4byte	.LFE143-.LFB143
 5642 1d69 01       		.uleb128 0x1
 5643 1d6a 9C       		.byte	0x9c
 5644 1d6b C91D0000 		.4byte	0x1dc9
 5645 1d6f 34       		.uleb128 0x34
 5646 1d70 02010000 		.4byte	.LASF307
 5647 1d74 01       		.byte	0x1
 5648 1d75 81       		.byte	0x81
 5649 1d76 48130000 		.4byte	0x1348
 5650 1d7a 6C0B0000 		.4byte	.LLST3
 5651 1d7e 34       		.uleb128 0x34
 5652 1d7f 60120000 		.4byte	.LASF380
 5653 1d83 01       		.byte	0x1
 5654 1d84 81       		.byte	0x81
 5655 1d85 C91D0000 		.4byte	0x1dc9
 5656 1d89 8A0B0000 		.4byte	.LLST4
 5657 1d8d 35       		.uleb128 0x35
 5658 1d8e 81070000 		.4byte	.LASF381
 5659 1d92 01       		.byte	0x1
 5660 1d93 83       		.byte	0x83
 5661 1d94 A7000000 		.4byte	0xa7
 5662 1d98 A80B0000 		.4byte	.LLST5
 5663 1d9c 35       		.uleb128 0x35
 5664 1d9d 75040000 		.4byte	.LASF382
 5665 1da1 01       		.byte	0x1
 5666 1da2 84       		.byte	0x84
 5667 1da3 A7000000 		.4byte	0xa7
ARM GAS  /tmp/ccmSFvTJ.s 			page 125


 5668 1da7 D20B0000 		.4byte	.LLST6
 5669 1dab 36       		.uleb128 0x36
 5670 1dac 12000000 		.4byte	.LVL12
 5671 1db0 CF1D0000 		.4byte	0x1dcf
 5672 1db4 BF1D0000 		.4byte	0x1dbf
 5673 1db8 37       		.uleb128 0x37
 5674 1db9 01       		.uleb128 0x1
 5675 1dba 50       		.byte	0x50
 5676 1dbb 02       		.uleb128 0x2
 5677 1dbc 74       		.byte	0x74
 5678 1dbd 00       		.sleb128 0
 5679 1dbe 00       		.byte	0
 5680 1dbf 38       		.uleb128 0x38
 5681 1dc0 26000000 		.4byte	.LVL15
 5682 1dc4 CF1D0000 		.4byte	0x1dcf
 5683 1dc8 00       		.byte	0
 5684 1dc9 16       		.uleb128 0x16
 5685 1dca 04       		.byte	0x4
 5686 1dcb D50E0000 		.4byte	0xed5
 5687 1dcf 39       		.uleb128 0x39
 5688 1dd0 67090000 		.4byte	.LASF392
 5689 1dd4 01       		.byte	0x1
 5690 1dd5 61       		.byte	0x61
 5691 1dd6 A7000000 		.4byte	0xa7
 5692 1dda 00000000 		.4byte	.LFB142
 5693 1dde 4C000000 		.4byte	.LFE142-.LFB142
 5694 1de2 01       		.uleb128 0x1
 5695 1de3 9C       		.byte	0x9c
 5696 1de4 321E0000 		.4byte	0x1e32
 5697 1de8 34       		.uleb128 0x34
 5698 1de9 FD020000 		.4byte	.LASF383
 5699 1ded 01       		.byte	0x1
 5700 1dee 61       		.byte	0x61
 5701 1def A7000000 		.4byte	0xa7
 5702 1df3 FB0B0000 		.4byte	.LLST0
 5703 1df7 34       		.uleb128 0x34
 5704 1df8 69050000 		.4byte	.LASF221
 5705 1dfc 01       		.byte	0x1
 5706 1dfd 61       		.byte	0x61
 5707 1dfe A7000000 		.4byte	0xa7
 5708 1e02 190C0000 		.4byte	.LLST1
 5709 1e06 23       		.uleb128 0x23
 5710 1e07 C4000000 		.4byte	.LASF384
 5711 1e0b 01       		.byte	0x1
 5712 1e0c 63       		.byte	0x63
 5713 1e0d 321E0000 		.4byte	0x1e32
 5714 1e11 03       		.uleb128 0x3
 5715 1e12 91       		.byte	0x91
 5716 1e13 BC7F     		.sleb128 -68
 5717 1e15 23       		.uleb128 0x23
 5718 1e16 FD080000 		.4byte	.LASF385
 5719 1e1a 01       		.byte	0x1
 5720 1e1b 65       		.byte	0x65
 5721 1e1c A7000000 		.4byte	0xa7
 5722 1e20 01       		.uleb128 0x1
 5723 1e21 53       		.byte	0x53
 5724 1e22 35       		.uleb128 0x35
ARM GAS  /tmp/ccmSFvTJ.s 			page 126


 5725 1e23 43020000 		.4byte	.LASF386
 5726 1e27 01       		.byte	0x1
 5727 1e28 66       		.byte	0x66
 5728 1e29 A7000000 		.4byte	0xa7
 5729 1e2d 450C0000 		.4byte	.LLST2
 5730 1e31 00       		.byte	0
 5731 1e32 08       		.uleb128 0x8
 5732 1e33 A7000000 		.4byte	0xa7
 5733 1e37 421E0000 		.4byte	0x1e42
 5734 1e3b 09       		.uleb128 0x9
 5735 1e3c D3000000 		.4byte	0xd3
 5736 1e40 0A       		.byte	0xa
 5737 1e41 00       		.byte	0
 5738 1e42 3A       		.uleb128 0x3a
 5739 1e43 8A170000 		.4byte	0x178a
 5740 1e47 00000000 		.4byte	.LFB164
 5741 1e4b 0E000000 		.4byte	.LFE164-.LFB164
 5742 1e4f 01       		.uleb128 0x1
 5743 1e50 9C       		.byte	0x9c
 5744 1e51 3B       		.uleb128 0x3b
 5745 1e52 9B170000 		.4byte	0x179b
 5746 1e56 A30C0000 		.4byte	.LLST41
 5747 1e5a 3B       		.uleb128 0x3b
 5748 1e5b A7170000 		.4byte	0x17a7
 5749 1e5f C40C0000 		.4byte	.LLST42
 5750 1e63 00       		.byte	0
 5751 1e64 00       		.byte	0
 5752              		.section	.debug_abbrev,"",%progbits
 5753              	.Ldebug_abbrev0:
 5754 0000 01       		.uleb128 0x1
 5755 0001 11       		.uleb128 0x11
 5756 0002 01       		.byte	0x1
 5757 0003 25       		.uleb128 0x25
 5758 0004 0E       		.uleb128 0xe
 5759 0005 13       		.uleb128 0x13
 5760 0006 0B       		.uleb128 0xb
 5761 0007 03       		.uleb128 0x3
 5762 0008 0E       		.uleb128 0xe
 5763 0009 1B       		.uleb128 0x1b
 5764 000a 0E       		.uleb128 0xe
 5765 000b 55       		.uleb128 0x55
 5766 000c 17       		.uleb128 0x17
 5767 000d 11       		.uleb128 0x11
 5768 000e 01       		.uleb128 0x1
 5769 000f 10       		.uleb128 0x10
 5770 0010 17       		.uleb128 0x17
 5771 0011 00       		.byte	0
 5772 0012 00       		.byte	0
 5773 0013 02       		.uleb128 0x2
 5774 0014 24       		.uleb128 0x24
 5775 0015 00       		.byte	0
 5776 0016 0B       		.uleb128 0xb
 5777 0017 0B       		.uleb128 0xb
 5778 0018 3E       		.uleb128 0x3e
 5779 0019 0B       		.uleb128 0xb
 5780 001a 03       		.uleb128 0x3
 5781 001b 0E       		.uleb128 0xe
ARM GAS  /tmp/ccmSFvTJ.s 			page 127


 5782 001c 00       		.byte	0
 5783 001d 00       		.byte	0
 5784 001e 03       		.uleb128 0x3
 5785 001f 24       		.uleb128 0x24
 5786 0020 00       		.byte	0
 5787 0021 0B       		.uleb128 0xb
 5788 0022 0B       		.uleb128 0xb
 5789 0023 3E       		.uleb128 0x3e
 5790 0024 0B       		.uleb128 0xb
 5791 0025 03       		.uleb128 0x3
 5792 0026 08       		.uleb128 0x8
 5793 0027 00       		.byte	0
 5794 0028 00       		.byte	0
 5795 0029 04       		.uleb128 0x4
 5796 002a 16       		.uleb128 0x16
 5797 002b 00       		.byte	0
 5798 002c 03       		.uleb128 0x3
 5799 002d 0E       		.uleb128 0xe
 5800 002e 3A       		.uleb128 0x3a
 5801 002f 0B       		.uleb128 0xb
 5802 0030 3B       		.uleb128 0x3b
 5803 0031 0B       		.uleb128 0xb
 5804 0032 49       		.uleb128 0x49
 5805 0033 13       		.uleb128 0x13
 5806 0034 00       		.byte	0
 5807 0035 00       		.byte	0
 5808 0036 05       		.uleb128 0x5
 5809 0037 35       		.uleb128 0x35
 5810 0038 00       		.byte	0
 5811 0039 49       		.uleb128 0x49
 5812 003a 13       		.uleb128 0x13
 5813 003b 00       		.byte	0
 5814 003c 00       		.byte	0
 5815 003d 06       		.uleb128 0x6
 5816 003e 26       		.uleb128 0x26
 5817 003f 00       		.byte	0
 5818 0040 49       		.uleb128 0x49
 5819 0041 13       		.uleb128 0x13
 5820 0042 00       		.byte	0
 5821 0043 00       		.byte	0
 5822 0044 07       		.uleb128 0x7
 5823 0045 0F       		.uleb128 0xf
 5824 0046 00       		.byte	0
 5825 0047 0B       		.uleb128 0xb
 5826 0048 0B       		.uleb128 0xb
 5827 0049 00       		.byte	0
 5828 004a 00       		.byte	0
 5829 004b 08       		.uleb128 0x8
 5830 004c 01       		.uleb128 0x1
 5831 004d 01       		.byte	0x1
 5832 004e 49       		.uleb128 0x49
 5833 004f 13       		.uleb128 0x13
 5834 0050 01       		.uleb128 0x1
 5835 0051 13       		.uleb128 0x13
 5836 0052 00       		.byte	0
 5837 0053 00       		.byte	0
 5838 0054 09       		.uleb128 0x9
ARM GAS  /tmp/ccmSFvTJ.s 			page 128


 5839 0055 21       		.uleb128 0x21
 5840 0056 00       		.byte	0
 5841 0057 49       		.uleb128 0x49
 5842 0058 13       		.uleb128 0x13
 5843 0059 2F       		.uleb128 0x2f
 5844 005a 0B       		.uleb128 0xb
 5845 005b 00       		.byte	0
 5846 005c 00       		.byte	0
 5847 005d 0A       		.uleb128 0xa
 5848 005e 34       		.uleb128 0x34
 5849 005f 00       		.byte	0
 5850 0060 03       		.uleb128 0x3
 5851 0061 0E       		.uleb128 0xe
 5852 0062 3A       		.uleb128 0x3a
 5853 0063 0B       		.uleb128 0xb
 5854 0064 3B       		.uleb128 0x3b
 5855 0065 05       		.uleb128 0x5
 5856 0066 49       		.uleb128 0x49
 5857 0067 13       		.uleb128 0x13
 5858 0068 3F       		.uleb128 0x3f
 5859 0069 19       		.uleb128 0x19
 5860 006a 3C       		.uleb128 0x3c
 5861 006b 19       		.uleb128 0x19
 5862 006c 00       		.byte	0
 5863 006d 00       		.byte	0
 5864 006e 0B       		.uleb128 0xb
 5865 006f 34       		.uleb128 0x34
 5866 0070 00       		.byte	0
 5867 0071 03       		.uleb128 0x3
 5868 0072 0E       		.uleb128 0xe
 5869 0073 3A       		.uleb128 0x3a
 5870 0074 0B       		.uleb128 0xb
 5871 0075 3B       		.uleb128 0x3b
 5872 0076 0B       		.uleb128 0xb
 5873 0077 49       		.uleb128 0x49
 5874 0078 13       		.uleb128 0x13
 5875 0079 3F       		.uleb128 0x3f
 5876 007a 19       		.uleb128 0x19
 5877 007b 3C       		.uleb128 0x3c
 5878 007c 19       		.uleb128 0x19
 5879 007d 00       		.byte	0
 5880 007e 00       		.byte	0
 5881 007f 0C       		.uleb128 0xc
 5882 0080 13       		.uleb128 0x13
 5883 0081 01       		.byte	0x1
 5884 0082 0B       		.uleb128 0xb
 5885 0083 0B       		.uleb128 0xb
 5886 0084 3A       		.uleb128 0x3a
 5887 0085 0B       		.uleb128 0xb
 5888 0086 3B       		.uleb128 0x3b
 5889 0087 0B       		.uleb128 0xb
 5890 0088 01       		.uleb128 0x1
 5891 0089 13       		.uleb128 0x13
 5892 008a 00       		.byte	0
 5893 008b 00       		.byte	0
 5894 008c 0D       		.uleb128 0xd
 5895 008d 0D       		.uleb128 0xd
ARM GAS  /tmp/ccmSFvTJ.s 			page 129


 5896 008e 00       		.byte	0
 5897 008f 03       		.uleb128 0x3
 5898 0090 0E       		.uleb128 0xe
 5899 0091 3A       		.uleb128 0x3a
 5900 0092 0B       		.uleb128 0xb
 5901 0093 3B       		.uleb128 0x3b
 5902 0094 0B       		.uleb128 0xb
 5903 0095 49       		.uleb128 0x49
 5904 0096 13       		.uleb128 0x13
 5905 0097 38       		.uleb128 0x38
 5906 0098 0B       		.uleb128 0xb
 5907 0099 00       		.byte	0
 5908 009a 00       		.byte	0
 5909 009b 0E       		.uleb128 0xe
 5910 009c 13       		.uleb128 0x13
 5911 009d 01       		.byte	0x1
 5912 009e 0B       		.uleb128 0xb
 5913 009f 05       		.uleb128 0x5
 5914 00a0 3A       		.uleb128 0x3a
 5915 00a1 0B       		.uleb128 0xb
 5916 00a2 3B       		.uleb128 0x3b
 5917 00a3 0B       		.uleb128 0xb
 5918 00a4 01       		.uleb128 0x1
 5919 00a5 13       		.uleb128 0x13
 5920 00a6 00       		.byte	0
 5921 00a7 00       		.byte	0
 5922 00a8 0F       		.uleb128 0xf
 5923 00a9 0D       		.uleb128 0xd
 5924 00aa 00       		.byte	0
 5925 00ab 03       		.uleb128 0x3
 5926 00ac 0E       		.uleb128 0xe
 5927 00ad 3A       		.uleb128 0x3a
 5928 00ae 0B       		.uleb128 0xb
 5929 00af 3B       		.uleb128 0x3b
 5930 00b0 0B       		.uleb128 0xb
 5931 00b1 49       		.uleb128 0x49
 5932 00b2 13       		.uleb128 0x13
 5933 00b3 38       		.uleb128 0x38
 5934 00b4 05       		.uleb128 0x5
 5935 00b5 00       		.byte	0
 5936 00b6 00       		.byte	0
 5937 00b7 10       		.uleb128 0x10
 5938 00b8 16       		.uleb128 0x16
 5939 00b9 00       		.byte	0
 5940 00ba 03       		.uleb128 0x3
 5941 00bb 08       		.uleb128 0x8
 5942 00bc 3A       		.uleb128 0x3a
 5943 00bd 0B       		.uleb128 0xb
 5944 00be 3B       		.uleb128 0x3b
 5945 00bf 0B       		.uleb128 0xb
 5946 00c0 49       		.uleb128 0x49
 5947 00c1 13       		.uleb128 0x13
 5948 00c2 00       		.byte	0
 5949 00c3 00       		.byte	0
 5950 00c4 11       		.uleb128 0x11
 5951 00c5 16       		.uleb128 0x16
 5952 00c6 00       		.byte	0
ARM GAS  /tmp/ccmSFvTJ.s 			page 130


 5953 00c7 03       		.uleb128 0x3
 5954 00c8 0E       		.uleb128 0xe
 5955 00c9 3A       		.uleb128 0x3a
 5956 00ca 0B       		.uleb128 0xb
 5957 00cb 3B       		.uleb128 0x3b
 5958 00cc 05       		.uleb128 0x5
 5959 00cd 49       		.uleb128 0x49
 5960 00ce 13       		.uleb128 0x13
 5961 00cf 00       		.byte	0
 5962 00d0 00       		.byte	0
 5963 00d1 12       		.uleb128 0x12
 5964 00d2 17       		.uleb128 0x17
 5965 00d3 01       		.byte	0x1
 5966 00d4 0B       		.uleb128 0xb
 5967 00d5 0B       		.uleb128 0xb
 5968 00d6 3A       		.uleb128 0x3a
 5969 00d7 0B       		.uleb128 0xb
 5970 00d8 3B       		.uleb128 0x3b
 5971 00d9 0B       		.uleb128 0xb
 5972 00da 01       		.uleb128 0x1
 5973 00db 13       		.uleb128 0x13
 5974 00dc 00       		.byte	0
 5975 00dd 00       		.byte	0
 5976 00de 13       		.uleb128 0x13
 5977 00df 0D       		.uleb128 0xd
 5978 00e0 00       		.byte	0
 5979 00e1 03       		.uleb128 0x3
 5980 00e2 0E       		.uleb128 0xe
 5981 00e3 3A       		.uleb128 0x3a
 5982 00e4 0B       		.uleb128 0xb
 5983 00e5 3B       		.uleb128 0x3b
 5984 00e6 0B       		.uleb128 0xb
 5985 00e7 49       		.uleb128 0x49
 5986 00e8 13       		.uleb128 0x13
 5987 00e9 00       		.byte	0
 5988 00ea 00       		.byte	0
 5989 00eb 14       		.uleb128 0x14
 5990 00ec 13       		.uleb128 0x13
 5991 00ed 01       		.byte	0x1
 5992 00ee 03       		.uleb128 0x3
 5993 00ef 0E       		.uleb128 0xe
 5994 00f0 0B       		.uleb128 0xb
 5995 00f1 0B       		.uleb128 0xb
 5996 00f2 3A       		.uleb128 0x3a
 5997 00f3 0B       		.uleb128 0xb
 5998 00f4 3B       		.uleb128 0x3b
 5999 00f5 0B       		.uleb128 0xb
 6000 00f6 01       		.uleb128 0x1
 6001 00f7 13       		.uleb128 0x13
 6002 00f8 00       		.byte	0
 6003 00f9 00       		.byte	0
 6004 00fa 15       		.uleb128 0x15
 6005 00fb 0D       		.uleb128 0xd
 6006 00fc 00       		.byte	0
 6007 00fd 03       		.uleb128 0x3
 6008 00fe 08       		.uleb128 0x8
 6009 00ff 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccmSFvTJ.s 			page 131


 6010 0100 0B       		.uleb128 0xb
 6011 0101 3B       		.uleb128 0x3b
 6012 0102 0B       		.uleb128 0xb
 6013 0103 49       		.uleb128 0x49
 6014 0104 13       		.uleb128 0x13
 6015 0105 38       		.uleb128 0x38
 6016 0106 0B       		.uleb128 0xb
 6017 0107 00       		.byte	0
 6018 0108 00       		.byte	0
 6019 0109 16       		.uleb128 0x16
 6020 010a 0F       		.uleb128 0xf
 6021 010b 00       		.byte	0
 6022 010c 0B       		.uleb128 0xb
 6023 010d 0B       		.uleb128 0xb
 6024 010e 49       		.uleb128 0x49
 6025 010f 13       		.uleb128 0x13
 6026 0110 00       		.byte	0
 6027 0111 00       		.byte	0
 6028 0112 17       		.uleb128 0x17
 6029 0113 13       		.uleb128 0x13
 6030 0114 01       		.byte	0x1
 6031 0115 03       		.uleb128 0x3
 6032 0116 0E       		.uleb128 0xe
 6033 0117 0B       		.uleb128 0xb
 6034 0118 05       		.uleb128 0x5
 6035 0119 3A       		.uleb128 0x3a
 6036 011a 0B       		.uleb128 0xb
 6037 011b 3B       		.uleb128 0x3b
 6038 011c 0B       		.uleb128 0xb
 6039 011d 01       		.uleb128 0x1
 6040 011e 13       		.uleb128 0x13
 6041 011f 00       		.byte	0
 6042 0120 00       		.byte	0
 6043 0121 18       		.uleb128 0x18
 6044 0122 15       		.uleb128 0x15
 6045 0123 00       		.byte	0
 6046 0124 27       		.uleb128 0x27
 6047 0125 19       		.uleb128 0x19
 6048 0126 00       		.byte	0
 6049 0127 00       		.byte	0
 6050 0128 19       		.uleb128 0x19
 6051 0129 15       		.uleb128 0x15
 6052 012a 01       		.byte	0x1
 6053 012b 27       		.uleb128 0x27
 6054 012c 19       		.uleb128 0x19
 6055 012d 49       		.uleb128 0x49
 6056 012e 13       		.uleb128 0x13
 6057 012f 01       		.uleb128 0x1
 6058 0130 13       		.uleb128 0x13
 6059 0131 00       		.byte	0
 6060 0132 00       		.byte	0
 6061 0133 1A       		.uleb128 0x1a
 6062 0134 05       		.uleb128 0x5
 6063 0135 00       		.byte	0
 6064 0136 49       		.uleb128 0x49
 6065 0137 13       		.uleb128 0x13
 6066 0138 00       		.byte	0
ARM GAS  /tmp/ccmSFvTJ.s 			page 132


 6067 0139 00       		.byte	0
 6068 013a 1B       		.uleb128 0x1b
 6069 013b 13       		.uleb128 0x13
 6070 013c 01       		.byte	0x1
 6071 013d 03       		.uleb128 0x3
 6072 013e 0E       		.uleb128 0xe
 6073 013f 0B       		.uleb128 0xb
 6074 0140 05       		.uleb128 0x5
 6075 0141 3A       		.uleb128 0x3a
 6076 0142 0B       		.uleb128 0xb
 6077 0143 3B       		.uleb128 0x3b
 6078 0144 05       		.uleb128 0x5
 6079 0145 01       		.uleb128 0x1
 6080 0146 13       		.uleb128 0x13
 6081 0147 00       		.byte	0
 6082 0148 00       		.byte	0
 6083 0149 1C       		.uleb128 0x1c
 6084 014a 0D       		.uleb128 0xd
 6085 014b 00       		.byte	0
 6086 014c 03       		.uleb128 0x3
 6087 014d 0E       		.uleb128 0xe
 6088 014e 3A       		.uleb128 0x3a
 6089 014f 0B       		.uleb128 0xb
 6090 0150 3B       		.uleb128 0x3b
 6091 0151 05       		.uleb128 0x5
 6092 0152 49       		.uleb128 0x49
 6093 0153 13       		.uleb128 0x13
 6094 0154 38       		.uleb128 0x38
 6095 0155 0B       		.uleb128 0xb
 6096 0156 00       		.byte	0
 6097 0157 00       		.byte	0
 6098 0158 1D       		.uleb128 0x1d
 6099 0159 0D       		.uleb128 0xd
 6100 015a 00       		.byte	0
 6101 015b 03       		.uleb128 0x3
 6102 015c 0E       		.uleb128 0xe
 6103 015d 3A       		.uleb128 0x3a
 6104 015e 0B       		.uleb128 0xb
 6105 015f 3B       		.uleb128 0x3b
 6106 0160 05       		.uleb128 0x5
 6107 0161 49       		.uleb128 0x49
 6108 0162 13       		.uleb128 0x13
 6109 0163 38       		.uleb128 0x38
 6110 0164 05       		.uleb128 0x5
 6111 0165 00       		.byte	0
 6112 0166 00       		.byte	0
 6113 0167 1E       		.uleb128 0x1e
 6114 0168 13       		.uleb128 0x13
 6115 0169 01       		.byte	0x1
 6116 016a 03       		.uleb128 0x3
 6117 016b 0E       		.uleb128 0xe
 6118 016c 0B       		.uleb128 0xb
 6119 016d 0B       		.uleb128 0xb
 6120 016e 3A       		.uleb128 0x3a
 6121 016f 0B       		.uleb128 0xb
 6122 0170 3B       		.uleb128 0x3b
 6123 0171 05       		.uleb128 0x5
ARM GAS  /tmp/ccmSFvTJ.s 			page 133


 6124 0172 01       		.uleb128 0x1
 6125 0173 13       		.uleb128 0x13
 6126 0174 00       		.byte	0
 6127 0175 00       		.byte	0
 6128 0176 1F       		.uleb128 0x1f
 6129 0177 13       		.uleb128 0x13
 6130 0178 01       		.byte	0x1
 6131 0179 0B       		.uleb128 0xb
 6132 017a 0B       		.uleb128 0xb
 6133 017b 3A       		.uleb128 0x3a
 6134 017c 0B       		.uleb128 0xb
 6135 017d 3B       		.uleb128 0x3b
 6136 017e 05       		.uleb128 0x5
 6137 017f 01       		.uleb128 0x1
 6138 0180 13       		.uleb128 0x13
 6139 0181 00       		.byte	0
 6140 0182 00       		.byte	0
 6141 0183 20       		.uleb128 0x20
 6142 0184 17       		.uleb128 0x17
 6143 0185 01       		.byte	0x1
 6144 0186 0B       		.uleb128 0xb
 6145 0187 0B       		.uleb128 0xb
 6146 0188 3A       		.uleb128 0x3a
 6147 0189 0B       		.uleb128 0xb
 6148 018a 3B       		.uleb128 0x3b
 6149 018b 05       		.uleb128 0x5
 6150 018c 01       		.uleb128 0x1
 6151 018d 13       		.uleb128 0x13
 6152 018e 00       		.byte	0
 6153 018f 00       		.byte	0
 6154 0190 21       		.uleb128 0x21
 6155 0191 0D       		.uleb128 0xd
 6156 0192 00       		.byte	0
 6157 0193 03       		.uleb128 0x3
 6158 0194 0E       		.uleb128 0xe
 6159 0195 3A       		.uleb128 0x3a
 6160 0196 0B       		.uleb128 0xb
 6161 0197 3B       		.uleb128 0x3b
 6162 0198 05       		.uleb128 0x5
 6163 0199 49       		.uleb128 0x49
 6164 019a 13       		.uleb128 0x13
 6165 019b 00       		.byte	0
 6166 019c 00       		.byte	0
 6167 019d 22       		.uleb128 0x22
 6168 019e 15       		.uleb128 0x15
 6169 019f 01       		.byte	0x1
 6170 01a0 27       		.uleb128 0x27
 6171 01a1 19       		.uleb128 0x19
 6172 01a2 01       		.uleb128 0x1
 6173 01a3 13       		.uleb128 0x13
 6174 01a4 00       		.byte	0
 6175 01a5 00       		.byte	0
 6176 01a6 23       		.uleb128 0x23
 6177 01a7 34       		.uleb128 0x34
 6178 01a8 00       		.byte	0
 6179 01a9 03       		.uleb128 0x3
 6180 01aa 0E       		.uleb128 0xe
ARM GAS  /tmp/ccmSFvTJ.s 			page 134


 6181 01ab 3A       		.uleb128 0x3a
 6182 01ac 0B       		.uleb128 0xb
 6183 01ad 3B       		.uleb128 0x3b
 6184 01ae 0B       		.uleb128 0xb
 6185 01af 49       		.uleb128 0x49
 6186 01b0 13       		.uleb128 0x13
 6187 01b1 02       		.uleb128 0x2
 6188 01b2 18       		.uleb128 0x18
 6189 01b3 00       		.byte	0
 6190 01b4 00       		.byte	0
 6191 01b5 24       		.uleb128 0x24
 6192 01b6 04       		.uleb128 0x4
 6193 01b7 01       		.byte	0x1
 6194 01b8 0B       		.uleb128 0xb
 6195 01b9 0B       		.uleb128 0xb
 6196 01ba 49       		.uleb128 0x49
 6197 01bb 13       		.uleb128 0x13
 6198 01bc 3A       		.uleb128 0x3a
 6199 01bd 0B       		.uleb128 0xb
 6200 01be 3B       		.uleb128 0x3b
 6201 01bf 0B       		.uleb128 0xb
 6202 01c0 01       		.uleb128 0x1
 6203 01c1 13       		.uleb128 0x13
 6204 01c2 00       		.byte	0
 6205 01c3 00       		.byte	0
 6206 01c4 25       		.uleb128 0x25
 6207 01c5 28       		.uleb128 0x28
 6208 01c6 00       		.byte	0
 6209 01c7 03       		.uleb128 0x3
 6210 01c8 0E       		.uleb128 0xe
 6211 01c9 1C       		.uleb128 0x1c
 6212 01ca 0B       		.uleb128 0xb
 6213 01cb 00       		.byte	0
 6214 01cc 00       		.byte	0
 6215 01cd 26       		.uleb128 0x26
 6216 01ce 28       		.uleb128 0x28
 6217 01cf 00       		.byte	0
 6218 01d0 03       		.uleb128 0x3
 6219 01d1 0E       		.uleb128 0xe
 6220 01d2 1C       		.uleb128 0x1c
 6221 01d3 05       		.uleb128 0x5
 6222 01d4 00       		.byte	0
 6223 01d5 00       		.byte	0
 6224 01d6 27       		.uleb128 0x27
 6225 01d7 28       		.uleb128 0x28
 6226 01d8 00       		.byte	0
 6227 01d9 03       		.uleb128 0x3
 6228 01da 0E       		.uleb128 0xe
 6229 01db 1C       		.uleb128 0x1c
 6230 01dc 06       		.uleb128 0x6
 6231 01dd 00       		.byte	0
 6232 01de 00       		.byte	0
 6233 01df 28       		.uleb128 0x28
 6234 01e0 2E       		.uleb128 0x2e
 6235 01e1 01       		.byte	0x1
 6236 01e2 3F       		.uleb128 0x3f
 6237 01e3 19       		.uleb128 0x19
ARM GAS  /tmp/ccmSFvTJ.s 			page 135


 6238 01e4 03       		.uleb128 0x3
 6239 01e5 0E       		.uleb128 0xe
 6240 01e6 3A       		.uleb128 0x3a
 6241 01e7 0B       		.uleb128 0xb
 6242 01e8 3B       		.uleb128 0x3b
 6243 01e9 05       		.uleb128 0x5
 6244 01ea 27       		.uleb128 0x27
 6245 01eb 19       		.uleb128 0x19
 6246 01ec 11       		.uleb128 0x11
 6247 01ed 01       		.uleb128 0x1
 6248 01ee 12       		.uleb128 0x12
 6249 01ef 06       		.uleb128 0x6
 6250 01f0 40       		.uleb128 0x40
 6251 01f1 18       		.uleb128 0x18
 6252 01f2 9742     		.uleb128 0x2117
 6253 01f4 19       		.uleb128 0x19
 6254 01f5 01       		.uleb128 0x1
 6255 01f6 13       		.uleb128 0x13
 6256 01f7 00       		.byte	0
 6257 01f8 00       		.byte	0
 6258 01f9 29       		.uleb128 0x29
 6259 01fa 05       		.uleb128 0x5
 6260 01fb 00       		.byte	0
 6261 01fc 03       		.uleb128 0x3
 6262 01fd 0E       		.uleb128 0xe
 6263 01fe 3A       		.uleb128 0x3a
 6264 01ff 0B       		.uleb128 0xb
 6265 0200 3B       		.uleb128 0x3b
 6266 0201 05       		.uleb128 0x5
 6267 0202 49       		.uleb128 0x49
 6268 0203 13       		.uleb128 0x13
 6269 0204 02       		.uleb128 0x2
 6270 0205 18       		.uleb128 0x18
 6271 0206 00       		.byte	0
 6272 0207 00       		.byte	0
 6273 0208 2A       		.uleb128 0x2a
 6274 0209 05       		.uleb128 0x5
 6275 020a 00       		.byte	0
 6276 020b 03       		.uleb128 0x3
 6277 020c 0E       		.uleb128 0xe
 6278 020d 3A       		.uleb128 0x3a
 6279 020e 0B       		.uleb128 0xb
 6280 020f 3B       		.uleb128 0x3b
 6281 0210 05       		.uleb128 0x5
 6282 0211 49       		.uleb128 0x49
 6283 0212 13       		.uleb128 0x13
 6284 0213 02       		.uleb128 0x2
 6285 0214 17       		.uleb128 0x17
 6286 0215 00       		.byte	0
 6287 0216 00       		.byte	0
 6288 0217 2B       		.uleb128 0x2b
 6289 0218 34       		.uleb128 0x34
 6290 0219 00       		.byte	0
 6291 021a 03       		.uleb128 0x3
 6292 021b 0E       		.uleb128 0xe
 6293 021c 3A       		.uleb128 0x3a
 6294 021d 0B       		.uleb128 0xb
ARM GAS  /tmp/ccmSFvTJ.s 			page 136


 6295 021e 3B       		.uleb128 0x3b
 6296 021f 05       		.uleb128 0x5
 6297 0220 49       		.uleb128 0x49
 6298 0221 13       		.uleb128 0x13
 6299 0222 02       		.uleb128 0x2
 6300 0223 17       		.uleb128 0x17
 6301 0224 00       		.byte	0
 6302 0225 00       		.byte	0
 6303 0226 2C       		.uleb128 0x2c
 6304 0227 2E       		.uleb128 0x2e
 6305 0228 01       		.byte	0x1
 6306 0229 3F       		.uleb128 0x3f
 6307 022a 19       		.uleb128 0x19
 6308 022b 03       		.uleb128 0x3
 6309 022c 0E       		.uleb128 0xe
 6310 022d 3A       		.uleb128 0x3a
 6311 022e 0B       		.uleb128 0xb
 6312 022f 3B       		.uleb128 0x3b
 6313 0230 05       		.uleb128 0x5
 6314 0231 27       		.uleb128 0x27
 6315 0232 19       		.uleb128 0x19
 6316 0233 49       		.uleb128 0x49
 6317 0234 13       		.uleb128 0x13
 6318 0235 11       		.uleb128 0x11
 6319 0236 01       		.uleb128 0x1
 6320 0237 12       		.uleb128 0x12
 6321 0238 06       		.uleb128 0x6
 6322 0239 40       		.uleb128 0x40
 6323 023a 18       		.uleb128 0x18
 6324 023b 9742     		.uleb128 0x2117
 6325 023d 19       		.uleb128 0x19
 6326 023e 01       		.uleb128 0x1
 6327 023f 13       		.uleb128 0x13
 6328 0240 00       		.byte	0
 6329 0241 00       		.byte	0
 6330 0242 2D       		.uleb128 0x2d
 6331 0243 34       		.uleb128 0x34
 6332 0244 00       		.byte	0
 6333 0245 03       		.uleb128 0x3
 6334 0246 08       		.uleb128 0x8
 6335 0247 3A       		.uleb128 0x3a
 6336 0248 0B       		.uleb128 0xb
 6337 0249 3B       		.uleb128 0x3b
 6338 024a 05       		.uleb128 0x5
 6339 024b 49       		.uleb128 0x49
 6340 024c 13       		.uleb128 0x13
 6341 024d 02       		.uleb128 0x2
 6342 024e 17       		.uleb128 0x17
 6343 024f 00       		.byte	0
 6344 0250 00       		.byte	0
 6345 0251 2E       		.uleb128 0x2e
 6346 0252 2E       		.uleb128 0x2e
 6347 0253 01       		.byte	0x1
 6348 0254 3F       		.uleb128 0x3f
 6349 0255 19       		.uleb128 0x19
 6350 0256 03       		.uleb128 0x3
 6351 0257 0E       		.uleb128 0xe
ARM GAS  /tmp/ccmSFvTJ.s 			page 137


 6352 0258 3A       		.uleb128 0x3a
 6353 0259 0B       		.uleb128 0xb
 6354 025a 3B       		.uleb128 0x3b
 6355 025b 05       		.uleb128 0x5
 6356 025c 27       		.uleb128 0x27
 6357 025d 19       		.uleb128 0x19
 6358 025e 49       		.uleb128 0x49
 6359 025f 13       		.uleb128 0x13
 6360 0260 20       		.uleb128 0x20
 6361 0261 0B       		.uleb128 0xb
 6362 0262 01       		.uleb128 0x1
 6363 0263 13       		.uleb128 0x13
 6364 0264 00       		.byte	0
 6365 0265 00       		.byte	0
 6366 0266 2F       		.uleb128 0x2f
 6367 0267 05       		.uleb128 0x5
 6368 0268 00       		.byte	0
 6369 0269 03       		.uleb128 0x3
 6370 026a 0E       		.uleb128 0xe
 6371 026b 3A       		.uleb128 0x3a
 6372 026c 0B       		.uleb128 0xb
 6373 026d 3B       		.uleb128 0x3b
 6374 026e 05       		.uleb128 0x5
 6375 026f 49       		.uleb128 0x49
 6376 0270 13       		.uleb128 0x13
 6377 0271 00       		.byte	0
 6378 0272 00       		.byte	0
 6379 0273 30       		.uleb128 0x30
 6380 0274 2E       		.uleb128 0x2e
 6381 0275 01       		.byte	0x1
 6382 0276 3F       		.uleb128 0x3f
 6383 0277 19       		.uleb128 0x19
 6384 0278 03       		.uleb128 0x3
 6385 0279 0E       		.uleb128 0xe
 6386 027a 3A       		.uleb128 0x3a
 6387 027b 0B       		.uleb128 0xb
 6388 027c 3B       		.uleb128 0x3b
 6389 027d 05       		.uleb128 0x5
 6390 027e 27       		.uleb128 0x27
 6391 027f 19       		.uleb128 0x19
 6392 0280 49       		.uleb128 0x49
 6393 0281 13       		.uleb128 0x13
 6394 0282 01       		.uleb128 0x1
 6395 0283 13       		.uleb128 0x13
 6396 0284 00       		.byte	0
 6397 0285 00       		.byte	0
 6398 0286 31       		.uleb128 0x31
 6399 0287 05       		.uleb128 0x5
 6400 0288 00       		.byte	0
 6401 0289 03       		.uleb128 0x3
 6402 028a 08       		.uleb128 0x8
 6403 028b 3A       		.uleb128 0x3a
 6404 028c 0B       		.uleb128 0xb
 6405 028d 3B       		.uleb128 0x3b
 6406 028e 05       		.uleb128 0x5
 6407 028f 49       		.uleb128 0x49
 6408 0290 13       		.uleb128 0x13
ARM GAS  /tmp/ccmSFvTJ.s 			page 138


 6409 0291 02       		.uleb128 0x2
 6410 0292 18       		.uleb128 0x18
 6411 0293 00       		.byte	0
 6412 0294 00       		.byte	0
 6413 0295 32       		.uleb128 0x32
 6414 0296 34       		.uleb128 0x34
 6415 0297 00       		.byte	0
 6416 0298 03       		.uleb128 0x3
 6417 0299 0E       		.uleb128 0xe
 6418 029a 3A       		.uleb128 0x3a
 6419 029b 0B       		.uleb128 0xb
 6420 029c 3B       		.uleb128 0x3b
 6421 029d 05       		.uleb128 0x5
 6422 029e 49       		.uleb128 0x49
 6423 029f 13       		.uleb128 0x13
 6424 02a0 02       		.uleb128 0x2
 6425 02a1 18       		.uleb128 0x18
 6426 02a2 00       		.byte	0
 6427 02a3 00       		.byte	0
 6428 02a4 33       		.uleb128 0x33
 6429 02a5 2E       		.uleb128 0x2e
 6430 02a6 01       		.byte	0x1
 6431 02a7 3F       		.uleb128 0x3f
 6432 02a8 19       		.uleb128 0x19
 6433 02a9 03       		.uleb128 0x3
 6434 02aa 0E       		.uleb128 0xe
 6435 02ab 3A       		.uleb128 0x3a
 6436 02ac 0B       		.uleb128 0xb
 6437 02ad 3B       		.uleb128 0x3b
 6438 02ae 0B       		.uleb128 0xb
 6439 02af 27       		.uleb128 0x27
 6440 02b0 19       		.uleb128 0x19
 6441 02b1 49       		.uleb128 0x49
 6442 02b2 13       		.uleb128 0x13
 6443 02b3 11       		.uleb128 0x11
 6444 02b4 01       		.uleb128 0x1
 6445 02b5 12       		.uleb128 0x12
 6446 02b6 06       		.uleb128 0x6
 6447 02b7 40       		.uleb128 0x40
 6448 02b8 18       		.uleb128 0x18
 6449 02b9 9742     		.uleb128 0x2117
 6450 02bb 19       		.uleb128 0x19
 6451 02bc 01       		.uleb128 0x1
 6452 02bd 13       		.uleb128 0x13
 6453 02be 00       		.byte	0
 6454 02bf 00       		.byte	0
 6455 02c0 34       		.uleb128 0x34
 6456 02c1 05       		.uleb128 0x5
 6457 02c2 00       		.byte	0
 6458 02c3 03       		.uleb128 0x3
 6459 02c4 0E       		.uleb128 0xe
 6460 02c5 3A       		.uleb128 0x3a
 6461 02c6 0B       		.uleb128 0xb
 6462 02c7 3B       		.uleb128 0x3b
 6463 02c8 0B       		.uleb128 0xb
 6464 02c9 49       		.uleb128 0x49
 6465 02ca 13       		.uleb128 0x13
ARM GAS  /tmp/ccmSFvTJ.s 			page 139


 6466 02cb 02       		.uleb128 0x2
 6467 02cc 17       		.uleb128 0x17
 6468 02cd 00       		.byte	0
 6469 02ce 00       		.byte	0
 6470 02cf 35       		.uleb128 0x35
 6471 02d0 34       		.uleb128 0x34
 6472 02d1 00       		.byte	0
 6473 02d2 03       		.uleb128 0x3
 6474 02d3 0E       		.uleb128 0xe
 6475 02d4 3A       		.uleb128 0x3a
 6476 02d5 0B       		.uleb128 0xb
 6477 02d6 3B       		.uleb128 0x3b
 6478 02d7 0B       		.uleb128 0xb
 6479 02d8 49       		.uleb128 0x49
 6480 02d9 13       		.uleb128 0x13
 6481 02da 02       		.uleb128 0x2
 6482 02db 17       		.uleb128 0x17
 6483 02dc 00       		.byte	0
 6484 02dd 00       		.byte	0
 6485 02de 36       		.uleb128 0x36
 6486 02df 898201   		.uleb128 0x4109
 6487 02e2 01       		.byte	0x1
 6488 02e3 11       		.uleb128 0x11
 6489 02e4 01       		.uleb128 0x1
 6490 02e5 31       		.uleb128 0x31
 6491 02e6 13       		.uleb128 0x13
 6492 02e7 01       		.uleb128 0x1
 6493 02e8 13       		.uleb128 0x13
 6494 02e9 00       		.byte	0
 6495 02ea 00       		.byte	0
 6496 02eb 37       		.uleb128 0x37
 6497 02ec 8A8201   		.uleb128 0x410a
 6498 02ef 00       		.byte	0
 6499 02f0 02       		.uleb128 0x2
 6500 02f1 18       		.uleb128 0x18
 6501 02f2 9142     		.uleb128 0x2111
 6502 02f4 18       		.uleb128 0x18
 6503 02f5 00       		.byte	0
 6504 02f6 00       		.byte	0
 6505 02f7 38       		.uleb128 0x38
 6506 02f8 898201   		.uleb128 0x4109
 6507 02fb 00       		.byte	0
 6508 02fc 11       		.uleb128 0x11
 6509 02fd 01       		.uleb128 0x1
 6510 02fe 31       		.uleb128 0x31
 6511 02ff 13       		.uleb128 0x13
 6512 0300 00       		.byte	0
 6513 0301 00       		.byte	0
 6514 0302 39       		.uleb128 0x39
 6515 0303 2E       		.uleb128 0x2e
 6516 0304 01       		.byte	0x1
 6517 0305 03       		.uleb128 0x3
 6518 0306 0E       		.uleb128 0xe
 6519 0307 3A       		.uleb128 0x3a
 6520 0308 0B       		.uleb128 0xb
 6521 0309 3B       		.uleb128 0x3b
 6522 030a 0B       		.uleb128 0xb
ARM GAS  /tmp/ccmSFvTJ.s 			page 140


 6523 030b 27       		.uleb128 0x27
 6524 030c 19       		.uleb128 0x19
 6525 030d 49       		.uleb128 0x49
 6526 030e 13       		.uleb128 0x13
 6527 030f 11       		.uleb128 0x11
 6528 0310 01       		.uleb128 0x1
 6529 0311 12       		.uleb128 0x12
 6530 0312 06       		.uleb128 0x6
 6531 0313 40       		.uleb128 0x40
 6532 0314 18       		.uleb128 0x18
 6533 0315 9742     		.uleb128 0x2117
 6534 0317 19       		.uleb128 0x19
 6535 0318 01       		.uleb128 0x1
 6536 0319 13       		.uleb128 0x13
 6537 031a 00       		.byte	0
 6538 031b 00       		.byte	0
 6539 031c 3A       		.uleb128 0x3a
 6540 031d 2E       		.uleb128 0x2e
 6541 031e 01       		.byte	0x1
 6542 031f 31       		.uleb128 0x31
 6543 0320 13       		.uleb128 0x13
 6544 0321 11       		.uleb128 0x11
 6545 0322 01       		.uleb128 0x1
 6546 0323 12       		.uleb128 0x12
 6547 0324 06       		.uleb128 0x6
 6548 0325 40       		.uleb128 0x40
 6549 0326 18       		.uleb128 0x18
 6550 0327 9742     		.uleb128 0x2117
 6551 0329 19       		.uleb128 0x19
 6552 032a 00       		.byte	0
 6553 032b 00       		.byte	0
 6554 032c 3B       		.uleb128 0x3b
 6555 032d 05       		.uleb128 0x5
 6556 032e 00       		.byte	0
 6557 032f 31       		.uleb128 0x31
 6558 0330 13       		.uleb128 0x13
 6559 0331 02       		.uleb128 0x2
 6560 0332 17       		.uleb128 0x17
 6561 0333 00       		.byte	0
 6562 0334 00       		.byte	0
 6563 0335 00       		.byte	0
 6564              		.section	.debug_loc,"",%progbits
 6565              	.Ldebug_loc0:
 6566              	.LLST64:
 6567 0000 00000000 		.4byte	.LVL189
 6568 0004 06000000 		.4byte	.LVL190
 6569 0008 0100     		.2byte	0x1
 6570 000a 51       		.byte	0x51
 6571 000b 06000000 		.4byte	.LVL190
 6572 000f 10000000 		.4byte	.LFE181
 6573 0013 0400     		.2byte	0x4
 6574 0015 F3       		.byte	0xf3
 6575 0016 01       		.uleb128 0x1
 6576 0017 51       		.byte	0x51
 6577 0018 9F       		.byte	0x9f
 6578 0019 00000000 		.4byte	0
 6579 001d 00000000 		.4byte	0
ARM GAS  /tmp/ccmSFvTJ.s 			page 141


 6580              	.LLST65:
 6581 0021 06000000 		.4byte	.LVL190
 6582 0025 0A000000 		.4byte	.LVL191
 6583 0029 0800     		.2byte	0x8
 6584 002b 71       		.byte	0x71
 6585 002c 00       		.sleb128 0
 6586 002d 40       		.byte	0x40
 6587 002e 44       		.byte	0x44
 6588 002f 24       		.byte	0x24
 6589 0030 1F       		.byte	0x1f
 6590 0031 1A       		.byte	0x1a
 6591 0032 9F       		.byte	0x9f
 6592 0033 0A000000 		.4byte	.LVL191
 6593 0037 0C000000 		.4byte	.LVL192
 6594 003b 0100     		.2byte	0x1
 6595 003d 51       		.byte	0x51
 6596 003e 00000000 		.4byte	0
 6597 0042 00000000 		.4byte	0
 6598              	.LLST62:
 6599 0046 00000000 		.4byte	.LVL177
 6600 004a 22000000 		.4byte	.LVL178
 6601 004e 0100     		.2byte	0x1
 6602 0050 52       		.byte	0x52
 6603 0051 22000000 		.4byte	.LVL178
 6604 0055 2E000000 		.4byte	.LVL180
 6605 0059 0200     		.2byte	0x2
 6606 005b 71       		.byte	0x71
 6607 005c 30       		.sleb128 48
 6608 005d 2E000000 		.4byte	.LVL180
 6609 0061 32000000 		.4byte	.LVL181
 6610 0065 0100     		.2byte	0x1
 6611 0067 52       		.byte	0x52
 6612 0068 32000000 		.4byte	.LVL181
 6613 006c 3E000000 		.4byte	.LVL183
 6614 0070 0200     		.2byte	0x2
 6615 0072 71       		.byte	0x71
 6616 0073 30       		.sleb128 48
 6617 0074 3E000000 		.4byte	.LVL183
 6618 0078 42000000 		.4byte	.LVL184
 6619 007c 0100     		.2byte	0x1
 6620 007e 52       		.byte	0x52
 6621 007f 42000000 		.4byte	.LVL184
 6622 0083 4E000000 		.4byte	.LVL186
 6623 0087 0200     		.2byte	0x2
 6624 0089 71       		.byte	0x71
 6625 008a 30       		.sleb128 48
 6626 008b 4E000000 		.4byte	.LVL186
 6627 008f 52000000 		.4byte	.LVL187
 6628 0093 0100     		.2byte	0x1
 6629 0095 52       		.byte	0x52
 6630 0096 52000000 		.4byte	.LVL187
 6631 009a 5E000000 		.4byte	.LFE180
 6632 009e 0200     		.2byte	0x2
 6633 00a0 71       		.byte	0x71
 6634 00a1 30       		.sleb128 48
 6635 00a2 00000000 		.4byte	0
 6636 00a6 00000000 		.4byte	0
ARM GAS  /tmp/ccmSFvTJ.s 			page 142


 6637              	.LLST63:
 6638 00aa 00000000 		.4byte	.LVL177
 6639 00ae 28000000 		.4byte	.LVL179
 6640 00b2 0100     		.2byte	0x1
 6641 00b4 53       		.byte	0x53
 6642 00b5 28000000 		.4byte	.LVL179
 6643 00b9 2E000000 		.4byte	.LVL180
 6644 00bd 0200     		.2byte	0x2
 6645 00bf 71       		.byte	0x71
 6646 00c0 34       		.sleb128 52
 6647 00c1 2E000000 		.4byte	.LVL180
 6648 00c5 38000000 		.4byte	.LVL182
 6649 00c9 0100     		.2byte	0x1
 6650 00cb 53       		.byte	0x53
 6651 00cc 38000000 		.4byte	.LVL182
 6652 00d0 3E000000 		.4byte	.LVL183
 6653 00d4 0200     		.2byte	0x2
 6654 00d6 71       		.byte	0x71
 6655 00d7 34       		.sleb128 52
 6656 00d8 3E000000 		.4byte	.LVL183
 6657 00dc 48000000 		.4byte	.LVL185
 6658 00e0 0100     		.2byte	0x1
 6659 00e2 53       		.byte	0x53
 6660 00e3 48000000 		.4byte	.LVL185
 6661 00e7 4E000000 		.4byte	.LVL186
 6662 00eb 0200     		.2byte	0x2
 6663 00ed 71       		.byte	0x71
 6664 00ee 34       		.sleb128 52
 6665 00ef 4E000000 		.4byte	.LVL186
 6666 00f3 58000000 		.4byte	.LVL188
 6667 00f7 0100     		.2byte	0x1
 6668 00f9 53       		.byte	0x53
 6669 00fa 58000000 		.4byte	.LVL188
 6670 00fe 5E000000 		.4byte	.LFE180
 6671 0102 0200     		.2byte	0x2
 6672 0104 71       		.byte	0x71
 6673 0105 34       		.sleb128 52
 6674 0106 00000000 		.4byte	0
 6675 010a 00000000 		.4byte	0
 6676              	.LLST58:
 6677 010e 00000000 		.4byte	.LVL171
 6678 0112 16000000 		.4byte	.LVL174
 6679 0116 0100     		.2byte	0x1
 6680 0118 51       		.byte	0x51
 6681 0119 16000000 		.4byte	.LVL174
 6682 011d 22000000 		.4byte	.LFE178
 6683 0121 0400     		.2byte	0x4
 6684 0123 F3       		.byte	0xf3
 6685 0124 01       		.uleb128 0x1
 6686 0125 51       		.byte	0x51
 6687 0126 9F       		.byte	0x9f
 6688 0127 00000000 		.4byte	0
 6689 012b 00000000 		.4byte	0
 6690              	.LLST59:
 6691 012f 00000000 		.4byte	.LVL171
 6692 0133 0E000000 		.4byte	.LVL173
 6693 0137 0100     		.2byte	0x1
ARM GAS  /tmp/ccmSFvTJ.s 			page 143


 6694 0139 52       		.byte	0x52
 6695 013a 0E000000 		.4byte	.LVL173
 6696 013e 22000000 		.4byte	.LFE178
 6697 0142 0400     		.2byte	0x4
 6698 0144 F3       		.byte	0xf3
 6699 0145 01       		.uleb128 0x1
 6700 0146 52       		.byte	0x52
 6701 0147 9F       		.byte	0x9f
 6702 0148 00000000 		.4byte	0
 6703 014c 00000000 		.4byte	0
 6704              	.LLST60:
 6705 0150 00000000 		.4byte	.LVL171
 6706 0154 0A000000 		.4byte	.LVL172
 6707 0158 0100     		.2byte	0x1
 6708 015a 53       		.byte	0x53
 6709 015b 0A000000 		.4byte	.LVL172
 6710 015f 22000000 		.4byte	.LFE178
 6711 0163 0400     		.2byte	0x4
 6712 0165 F3       		.byte	0xf3
 6713 0166 01       		.uleb128 0x1
 6714 0167 53       		.byte	0x53
 6715 0168 9F       		.byte	0x9f
 6716 0169 00000000 		.4byte	0
 6717 016d 00000000 		.4byte	0
 6718              	.LLST61:
 6719 0171 0E000000 		.4byte	.LVL173
 6720 0175 16000000 		.4byte	.LVL174
 6721 0179 0100     		.2byte	0x1
 6722 017b 52       		.byte	0x52
 6723 017c 16000000 		.4byte	.LVL174
 6724 0180 1C000000 		.4byte	.LVL175
 6725 0184 0100     		.2byte	0x1
 6726 0186 51       		.byte	0x51
 6727 0187 1C000000 		.4byte	.LVL175
 6728 018b 22000000 		.4byte	.LFE178
 6729 018f 0100     		.2byte	0x1
 6730 0191 53       		.byte	0x53
 6731 0192 00000000 		.4byte	0
 6732 0196 00000000 		.4byte	0
 6733              	.LLST57:
 6734 019a 00000000 		.4byte	.LVL169
 6735 019e 02000000 		.4byte	.LVL170
 6736 01a2 0100     		.2byte	0x1
 6737 01a4 50       		.byte	0x50
 6738 01a5 02000000 		.4byte	.LVL170
 6739 01a9 04000000 		.4byte	.LFE177
 6740 01ad 0400     		.2byte	0x4
 6741 01af F3       		.byte	0xf3
 6742 01b0 01       		.uleb128 0x1
 6743 01b1 50       		.byte	0x50
 6744 01b2 9F       		.byte	0x9f
 6745 01b3 00000000 		.4byte	0
 6746 01b7 00000000 		.4byte	0
 6747              	.LLST56:
 6748 01bb 00000000 		.4byte	.LVL167
 6749 01bf 02000000 		.4byte	.LVL168
 6750 01c3 0100     		.2byte	0x1
ARM GAS  /tmp/ccmSFvTJ.s 			page 144


 6751 01c5 50       		.byte	0x50
 6752 01c6 02000000 		.4byte	.LVL168
 6753 01ca 04000000 		.4byte	.LFE176
 6754 01ce 0400     		.2byte	0x4
 6755 01d0 F3       		.byte	0xf3
 6756 01d1 01       		.uleb128 0x1
 6757 01d2 50       		.byte	0x50
 6758 01d3 9F       		.byte	0x9f
 6759 01d4 00000000 		.4byte	0
 6760 01d8 00000000 		.4byte	0
 6761              	.LLST54:
 6762 01dc 00000000 		.4byte	.LVL163
 6763 01e0 08000000 		.4byte	.LVL165
 6764 01e4 0100     		.2byte	0x1
 6765 01e6 50       		.byte	0x50
 6766 01e7 08000000 		.4byte	.LVL165
 6767 01eb 1E000000 		.4byte	.LFE175
 6768 01ef 0400     		.2byte	0x4
 6769 01f1 F3       		.byte	0xf3
 6770 01f2 01       		.uleb128 0x1
 6771 01f3 50       		.byte	0x50
 6772 01f4 9F       		.byte	0x9f
 6773 01f5 00000000 		.4byte	0
 6774 01f9 00000000 		.4byte	0
 6775              	.LLST55:
 6776 01fd 04000000 		.4byte	.LVL164
 6777 0201 18000000 		.4byte	.LVL166
 6778 0205 0100     		.2byte	0x1
 6779 0207 53       		.byte	0x53
 6780 0208 00000000 		.4byte	0
 6781 020c 00000000 		.4byte	0
 6782              	.LLST53:
 6783 0210 00000000 		.4byte	.LVL161
 6784 0214 06000000 		.4byte	.LVL162
 6785 0218 0100     		.2byte	0x1
 6786 021a 51       		.byte	0x51
 6787 021b 06000000 		.4byte	.LVL162
 6788 021f 10000000 		.4byte	.LFE174
 6789 0223 0400     		.2byte	0x4
 6790 0225 F3       		.byte	0xf3
 6791 0226 01       		.uleb128 0x1
 6792 0227 51       		.byte	0x51
 6793 0228 9F       		.byte	0x9f
 6794 0229 00000000 		.4byte	0
 6795 022d 00000000 		.4byte	0
 6796              	.LLST51:
 6797 0231 00000000 		.4byte	.LVL157
 6798 0235 08000000 		.4byte	.LVL158
 6799 0239 0100     		.2byte	0x1
 6800 023b 51       		.byte	0x51
 6801 023c 08000000 		.4byte	.LVL158
 6802 0240 0E000000 		.4byte	.LVL159
 6803 0244 0400     		.2byte	0x4
 6804 0246 F3       		.byte	0xf3
 6805 0247 01       		.uleb128 0x1
 6806 0248 51       		.byte	0x51
 6807 0249 9F       		.byte	0x9f
ARM GAS  /tmp/ccmSFvTJ.s 			page 145


 6808 024a 0E000000 		.4byte	.LVL159
 6809 024e 14000000 		.4byte	.LVL160
 6810 0252 0100     		.2byte	0x1
 6811 0254 51       		.byte	0x51
 6812 0255 14000000 		.4byte	.LVL160
 6813 0259 24000000 		.4byte	.LFE173
 6814 025d 0400     		.2byte	0x4
 6815 025f F3       		.byte	0xf3
 6816 0260 01       		.uleb128 0x1
 6817 0261 51       		.byte	0x51
 6818 0262 9F       		.byte	0x9f
 6819 0263 00000000 		.4byte	0
 6820 0267 00000000 		.4byte	0
 6821              	.LLST52:
 6822 026b 00000000 		.4byte	.LVL157
 6823 026f 08000000 		.4byte	.LVL158
 6824 0273 0200     		.2byte	0x2
 6825 0275 30       		.byte	0x30
 6826 0276 9F       		.byte	0x9f
 6827 0277 08000000 		.4byte	.LVL158
 6828 027b 0E000000 		.4byte	.LVL159
 6829 027f 0100     		.2byte	0x1
 6830 0281 51       		.byte	0x51
 6831 0282 0E000000 		.4byte	.LVL159
 6832 0286 14000000 		.4byte	.LVL160
 6833 028a 0200     		.2byte	0x2
 6834 028c 30       		.byte	0x30
 6835 028d 9F       		.byte	0x9f
 6836 028e 14000000 		.4byte	.LVL160
 6837 0292 24000000 		.4byte	.LFE173
 6838 0296 0100     		.2byte	0x1
 6839 0298 51       		.byte	0x51
 6840 0299 00000000 		.4byte	0
 6841 029d 00000000 		.4byte	0
 6842              	.LLST50:
 6843 02a1 00000000 		.4byte	.LVL153
 6844 02a5 02000000 		.4byte	.LVL154
 6845 02a9 0100     		.2byte	0x1
 6846 02ab 50       		.byte	0x50
 6847 02ac 02000000 		.4byte	.LVL154
 6848 02b0 0A000000 		.4byte	.LFE170
 6849 02b4 0400     		.2byte	0x4
 6850 02b6 F3       		.byte	0xf3
 6851 02b7 01       		.uleb128 0x1
 6852 02b8 50       		.byte	0x50
 6853 02b9 9F       		.byte	0x9f
 6854 02ba 00000000 		.4byte	0
 6855 02be 00000000 		.4byte	0
 6856              	.LLST49:
 6857 02c2 00000000 		.4byte	.LVL151
 6858 02c6 04000000 		.4byte	.LVL152
 6859 02ca 0100     		.2byte	0x1
 6860 02cc 51       		.byte	0x51
 6861 02cd 04000000 		.4byte	.LVL152
 6862 02d1 08000000 		.4byte	.LFE169
 6863 02d5 0400     		.2byte	0x4
 6864 02d7 F3       		.byte	0xf3
ARM GAS  /tmp/ccmSFvTJ.s 			page 146


 6865 02d8 01       		.uleb128 0x1
 6866 02d9 51       		.byte	0x51
 6867 02da 9F       		.byte	0x9f
 6868 02db 00000000 		.4byte	0
 6869 02df 00000000 		.4byte	0
 6870              	.LLST45:
 6871 02e3 00000000 		.4byte	.LVL143
 6872 02e7 0A000000 		.4byte	.LVL145
 6873 02eb 0100     		.2byte	0x1
 6874 02ed 50       		.byte	0x50
 6875 02ee 0A000000 		.4byte	.LVL145
 6876 02f2 1A000000 		.4byte	.LVL149
 6877 02f6 0100     		.2byte	0x1
 6878 02f8 54       		.byte	0x54
 6879 02f9 1A000000 		.4byte	.LVL149
 6880 02fd 1C000000 		.4byte	.LFE167
 6881 0301 0400     		.2byte	0x4
 6882 0303 F3       		.byte	0xf3
 6883 0304 01       		.uleb128 0x1
 6884 0305 50       		.byte	0x50
 6885 0306 9F       		.byte	0x9f
 6886 0307 00000000 		.4byte	0
 6887 030b 00000000 		.4byte	0
 6888              	.LLST46:
 6889 030f 00000000 		.4byte	.LVL143
 6890 0313 12000000 		.4byte	.LVL148
 6891 0317 0100     		.2byte	0x1
 6892 0319 51       		.byte	0x51
 6893 031a 12000000 		.4byte	.LVL148
 6894 031e 1C000000 		.4byte	.LFE167
 6895 0322 0400     		.2byte	0x4
 6896 0324 F3       		.byte	0xf3
 6897 0325 01       		.uleb128 0x1
 6898 0326 51       		.byte	0x51
 6899 0327 9F       		.byte	0x9f
 6900 0328 00000000 		.4byte	0
 6901 032c 00000000 		.4byte	0
 6902              	.LLST47:
 6903 0330 00000000 		.4byte	.LVL143
 6904 0334 08000000 		.4byte	.LVL144
 6905 0338 0100     		.2byte	0x1
 6906 033a 52       		.byte	0x52
 6907 033b 08000000 		.4byte	.LVL144
 6908 033f 1C000000 		.4byte	.LFE167
 6909 0343 0400     		.2byte	0x4
 6910 0345 F3       		.byte	0xf3
 6911 0346 01       		.uleb128 0x1
 6912 0347 52       		.byte	0x52
 6913 0348 9F       		.byte	0x9f
 6914 0349 00000000 		.4byte	0
 6915 034d 00000000 		.4byte	0
 6916              	.LLST48:
 6917 0351 0C000000 		.4byte	.LVL146
 6918 0355 12000000 		.4byte	.LVL148
 6919 0359 0100     		.2byte	0x1
 6920 035b 53       		.byte	0x53
 6921 035c 12000000 		.4byte	.LVL148
ARM GAS  /tmp/ccmSFvTJ.s 			page 147


 6922 0360 1C000000 		.4byte	.LFE167
 6923 0364 0100     		.2byte	0x1
 6924 0366 51       		.byte	0x51
 6925 0367 00000000 		.4byte	0
 6926 036b 00000000 		.4byte	0
 6927              	.LLST44:
 6928 036f 00000000 		.4byte	.LVL139
 6929 0373 12000000 		.4byte	.LVL140
 6930 0377 0100     		.2byte	0x1
 6931 0379 51       		.byte	0x51
 6932 037a 12000000 		.4byte	.LVL140
 6933 037e 16000000 		.4byte	.LVL141
 6934 0382 0400     		.2byte	0x4
 6935 0384 F3       		.byte	0xf3
 6936 0385 01       		.uleb128 0x1
 6937 0386 51       		.byte	0x51
 6938 0387 9F       		.byte	0x9f
 6939 0388 16000000 		.4byte	.LVL141
 6940 038c 1E000000 		.4byte	.LVL142
 6941 0390 0100     		.2byte	0x1
 6942 0392 51       		.byte	0x51
 6943 0393 1E000000 		.4byte	.LVL142
 6944 0397 22000000 		.4byte	.LFE166
 6945 039b 0400     		.2byte	0x4
 6946 039d F3       		.byte	0xf3
 6947 039e 01       		.uleb128 0x1
 6948 039f 51       		.byte	0x51
 6949 03a0 9F       		.byte	0x9f
 6950 03a1 00000000 		.4byte	0
 6951 03a5 00000000 		.4byte	0
 6952              	.LLST43:
 6953 03a9 00000000 		.4byte	.LVL135
 6954 03ad 12000000 		.4byte	.LVL136
 6955 03b1 0100     		.2byte	0x1
 6956 03b3 51       		.byte	0x51
 6957 03b4 12000000 		.4byte	.LVL136
 6958 03b8 16000000 		.4byte	.LVL137
 6959 03bc 0400     		.2byte	0x4
 6960 03be F3       		.byte	0xf3
 6961 03bf 01       		.uleb128 0x1
 6962 03c0 51       		.byte	0x51
 6963 03c1 9F       		.byte	0x9f
 6964 03c2 16000000 		.4byte	.LVL137
 6965 03c6 1E000000 		.4byte	.LVL138
 6966 03ca 0100     		.2byte	0x1
 6967 03cc 51       		.byte	0x51
 6968 03cd 1E000000 		.4byte	.LVL138
 6969 03d1 22000000 		.4byte	.LFE165
 6970 03d5 0400     		.2byte	0x4
 6971 03d7 F3       		.byte	0xf3
 6972 03d8 01       		.uleb128 0x1
 6973 03d9 51       		.byte	0x51
 6974 03da 9F       		.byte	0x9f
 6975 03db 00000000 		.4byte	0
 6976 03df 00000000 		.4byte	0
 6977              	.LLST39:
 6978 03e3 00000000 		.4byte	.LVL124
ARM GAS  /tmp/ccmSFvTJ.s 			page 148


 6979 03e7 62000000 		.4byte	.LVL128
 6980 03eb 0100     		.2byte	0x1
 6981 03ed 50       		.byte	0x50
 6982 03ee 62000000 		.4byte	.LVL128
 6983 03f2 74000000 		.4byte	.LVL129
 6984 03f6 0400     		.2byte	0x4
 6985 03f8 F3       		.byte	0xf3
 6986 03f9 01       		.uleb128 0x1
 6987 03fa 50       		.byte	0x50
 6988 03fb 9F       		.byte	0x9f
 6989 03fc 74000000 		.4byte	.LVL129
 6990 0400 90000000 		.4byte	.LVL131
 6991 0404 0100     		.2byte	0x1
 6992 0406 50       		.byte	0x50
 6993 0407 90000000 		.4byte	.LVL131
 6994 040b A4000000 		.4byte	.LFE162
 6995 040f 0400     		.2byte	0x4
 6996 0411 F3       		.byte	0xf3
 6997 0412 01       		.uleb128 0x1
 6998 0413 50       		.byte	0x50
 6999 0414 9F       		.byte	0x9f
 7000 0415 00000000 		.4byte	0
 7001 0419 00000000 		.4byte	0
 7002              	.LLST40:
 7003 041d 10000000 		.4byte	.LVL125
 7004 0421 48000000 		.4byte	.LVL126
 7005 0425 0100     		.2byte	0x1
 7006 0427 52       		.byte	0x52
 7007 0428 48000000 		.4byte	.LVL126
 7008 042c 50000000 		.4byte	.LVL127
 7009 0430 0200     		.2byte	0x2
 7010 0432 71       		.byte	0x71
 7011 0433 00       		.sleb128 0
 7012 0434 74000000 		.4byte	.LVL129
 7013 0438 7A000000 		.4byte	.LVL130
 7014 043c 0200     		.2byte	0x2
 7015 043e 71       		.byte	0x71
 7016 043f 00       		.sleb128 0
 7017 0440 00000000 		.4byte	0
 7018 0444 00000000 		.4byte	0
 7019              	.LLST37:
 7020 0448 00000000 		.4byte	.LVL116
 7021 044c 60000000 		.4byte	.LVL120
 7022 0450 0100     		.2byte	0x1
 7023 0452 50       		.byte	0x50
 7024 0453 60000000 		.4byte	.LVL120
 7025 0457 72000000 		.4byte	.LVL121
 7026 045b 0400     		.2byte	0x4
 7027 045d F3       		.byte	0xf3
 7028 045e 01       		.uleb128 0x1
 7029 045f 50       		.byte	0x50
 7030 0460 9F       		.byte	0x9f
 7031 0461 72000000 		.4byte	.LVL121
 7032 0465 8E000000 		.4byte	.LVL123
 7033 0469 0100     		.2byte	0x1
 7034 046b 50       		.byte	0x50
 7035 046c 8E000000 		.4byte	.LVL123
ARM GAS  /tmp/ccmSFvTJ.s 			page 149


 7036 0470 A2000000 		.4byte	.LFE161
 7037 0474 0400     		.2byte	0x4
 7038 0476 F3       		.byte	0xf3
 7039 0477 01       		.uleb128 0x1
 7040 0478 50       		.byte	0x50
 7041 0479 9F       		.byte	0x9f
 7042 047a 00000000 		.4byte	0
 7043 047e 00000000 		.4byte	0
 7044              	.LLST38:
 7045 0482 08000000 		.4byte	.LVL117
 7046 0486 46000000 		.4byte	.LVL118
 7047 048a 0100     		.2byte	0x1
 7048 048c 52       		.byte	0x52
 7049 048d 46000000 		.4byte	.LVL118
 7050 0491 4E000000 		.4byte	.LVL119
 7051 0495 0200     		.2byte	0x2
 7052 0497 71       		.byte	0x71
 7053 0498 00       		.sleb128 0
 7054 0499 72000000 		.4byte	.LVL121
 7055 049d 78000000 		.4byte	.LVL122
 7056 04a1 0200     		.2byte	0x2
 7057 04a3 71       		.byte	0x71
 7058 04a4 00       		.sleb128 0
 7059 04a5 00000000 		.4byte	0
 7060 04a9 00000000 		.4byte	0
 7061              	.LLST35:
 7062 04ad 00000000 		.4byte	.LVL112
 7063 04b1 02000000 		.4byte	.LVL113
 7064 04b5 0100     		.2byte	0x1
 7065 04b7 50       		.byte	0x50
 7066 04b8 02000000 		.4byte	.LVL113
 7067 04bc 0A000000 		.4byte	.LFE159
 7068 04c0 0400     		.2byte	0x4
 7069 04c2 F3       		.byte	0xf3
 7070 04c3 01       		.uleb128 0x1
 7071 04c4 50       		.byte	0x50
 7072 04c5 9F       		.byte	0x9f
 7073 04c6 00000000 		.4byte	0
 7074 04ca 00000000 		.4byte	0
 7075              	.LLST36:
 7076 04ce 02000000 		.4byte	.LVL113
 7077 04d2 04000000 		.4byte	.LVL114
 7078 04d6 0900     		.2byte	0x9
 7079 04d8 70       		.byte	0x70
 7080 04d9 00       		.sleb128 0
 7081 04da 71       		.byte	0x71
 7082 04db 00       		.sleb128 0
 7083 04dc 08       		.byte	0x8
 7084 04dd FF       		.byte	0xff
 7085 04de 1A       		.byte	0x1a
 7086 04df 25       		.byte	0x25
 7087 04e0 9F       		.byte	0x9f
 7088 04e1 00000000 		.4byte	0
 7089 04e5 00000000 		.4byte	0
 7090              	.LLST34:
 7091 04e9 00000000 		.4byte	.LVL110
 7092 04ed 02000000 		.4byte	.LVL111
ARM GAS  /tmp/ccmSFvTJ.s 			page 150


 7093 04f1 0100     		.2byte	0x1
 7094 04f3 50       		.byte	0x50
 7095 04f4 02000000 		.4byte	.LVL111
 7096 04f8 08000000 		.4byte	.LFE158
 7097 04fc 0400     		.2byte	0x4
 7098 04fe F3       		.byte	0xf3
 7099 04ff 01       		.uleb128 0x1
 7100 0500 50       		.byte	0x50
 7101 0501 9F       		.byte	0x9f
 7102 0502 00000000 		.4byte	0
 7103 0506 00000000 		.4byte	0
 7104              	.LLST32:
 7105 050a 00000000 		.4byte	.LVL96
 7106 050e 28000000 		.4byte	.LVL104
 7107 0512 0100     		.2byte	0x1
 7108 0514 50       		.byte	0x50
 7109 0515 28000000 		.4byte	.LVL104
 7110 0519 2A000000 		.4byte	.LVL105
 7111 051d 0400     		.2byte	0x4
 7112 051f F3       		.byte	0xf3
 7113 0520 01       		.uleb128 0x1
 7114 0521 50       		.byte	0x50
 7115 0522 9F       		.byte	0x9f
 7116 0523 2A000000 		.4byte	.LVL105
 7117 0527 40000000 		.4byte	.LVL109
 7118 052b 0100     		.2byte	0x1
 7119 052d 50       		.byte	0x50
 7120 052e 40000000 		.4byte	.LVL109
 7121 0532 42000000 		.4byte	.LFE157
 7122 0536 0400     		.2byte	0x4
 7123 0538 F3       		.byte	0xf3
 7124 0539 01       		.uleb128 0x1
 7125 053a 50       		.byte	0x50
 7126 053b 9F       		.byte	0x9f
 7127 053c 00000000 		.4byte	0
 7128 0540 00000000 		.4byte	0
 7129              	.LLST33:
 7130 0544 00000000 		.4byte	.LVL96
 7131 0548 16000000 		.4byte	.LVL101
 7132 054c 0100     		.2byte	0x1
 7133 054e 51       		.byte	0x51
 7134 054f 16000000 		.4byte	.LVL101
 7135 0553 2A000000 		.4byte	.LVL105
 7136 0557 0400     		.2byte	0x4
 7137 0559 F3       		.byte	0xf3
 7138 055a 01       		.uleb128 0x1
 7139 055b 51       		.byte	0x51
 7140 055c 9F       		.byte	0x9f
 7141 055d 2A000000 		.4byte	.LVL105
 7142 0561 2C000000 		.4byte	.LVL106
 7143 0565 0100     		.2byte	0x1
 7144 0567 51       		.byte	0x51
 7145 0568 2C000000 		.4byte	.LVL106
 7146 056c 42000000 		.4byte	.LFE157
 7147 0570 0400     		.2byte	0x4
 7148 0572 F3       		.byte	0xf3
 7149 0573 01       		.uleb128 0x1
ARM GAS  /tmp/ccmSFvTJ.s 			page 151


 7150 0574 51       		.byte	0x51
 7151 0575 9F       		.byte	0x9f
 7152 0576 00000000 		.4byte	0
 7153 057a 00000000 		.4byte	0
 7154              	.LLST31:
 7155 057e 00000000 		.4byte	.LVL94
 7156 0582 0E000000 		.4byte	.LVL95
 7157 0586 0100     		.2byte	0x1
 7158 0588 50       		.byte	0x50
 7159 0589 0E000000 		.4byte	.LVL95
 7160 058d 18000000 		.4byte	.LFE156
 7161 0591 0400     		.2byte	0x4
 7162 0593 F3       		.byte	0xf3
 7163 0594 01       		.uleb128 0x1
 7164 0595 50       		.byte	0x50
 7165 0596 9F       		.byte	0x9f
 7166 0597 00000000 		.4byte	0
 7167 059b 00000000 		.4byte	0
 7168              	.LLST24:
 7169 059f 00000000 		.4byte	.LVL77
 7170 05a3 36000000 		.4byte	.LVL82
 7171 05a7 0100     		.2byte	0x1
 7172 05a9 51       		.byte	0x51
 7173 05aa 36000000 		.4byte	.LVL82
 7174 05ae 72000000 		.4byte	.LFE155
 7175 05b2 0400     		.2byte	0x4
 7176 05b4 F3       		.byte	0xf3
 7177 05b5 01       		.uleb128 0x1
 7178 05b6 51       		.byte	0x51
 7179 05b7 9F       		.byte	0x9f
 7180 05b8 00000000 		.4byte	0
 7181 05bc 00000000 		.4byte	0
 7182              	.LLST25:
 7183 05c0 00000000 		.4byte	.LVL77
 7184 05c4 24000000 		.4byte	.LVL80
 7185 05c8 0100     		.2byte	0x1
 7186 05ca 52       		.byte	0x52
 7187 05cb 24000000 		.4byte	.LVL80
 7188 05cf 72000000 		.4byte	.LFE155
 7189 05d3 0400     		.2byte	0x4
 7190 05d5 F3       		.byte	0xf3
 7191 05d6 01       		.uleb128 0x1
 7192 05d7 52       		.byte	0x52
 7193 05d8 9F       		.byte	0x9f
 7194 05d9 00000000 		.4byte	0
 7195 05dd 00000000 		.4byte	0
 7196              	.LLST26:
 7197 05e1 00000000 		.4byte	.LVL77
 7198 05e5 3E000000 		.4byte	.LVL83
 7199 05e9 0100     		.2byte	0x1
 7200 05eb 53       		.byte	0x53
 7201 05ec 3E000000 		.4byte	.LVL83
 7202 05f0 56000000 		.4byte	.LVL88
 7203 05f4 0400     		.2byte	0x4
 7204 05f6 F3       		.byte	0xf3
 7205 05f7 01       		.uleb128 0x1
 7206 05f8 53       		.byte	0x53
ARM GAS  /tmp/ccmSFvTJ.s 			page 152


 7207 05f9 9F       		.byte	0x9f
 7208 05fa 56000000 		.4byte	.LVL88
 7209 05fe 5A000000 		.4byte	.LVL89
 7210 0602 0100     		.2byte	0x1
 7211 0604 53       		.byte	0x53
 7212 0605 5A000000 		.4byte	.LVL89
 7213 0609 72000000 		.4byte	.LFE155
 7214 060d 0400     		.2byte	0x4
 7215 060f F3       		.byte	0xf3
 7216 0610 01       		.uleb128 0x1
 7217 0611 53       		.byte	0x53
 7218 0612 9F       		.byte	0x9f
 7219 0613 00000000 		.4byte	0
 7220 0617 00000000 		.4byte	0
 7221              	.LLST27:
 7222 061b 10000000 		.4byte	.LVL78
 7223 061f 48000000 		.4byte	.LVL87
 7224 0623 0100     		.2byte	0x1
 7225 0625 55       		.byte	0x55
 7226 0626 48000000 		.4byte	.LVL87
 7227 062a 56000000 		.4byte	.LVL88
 7228 062e 0300     		.2byte	0x3
 7229 0630 F3       		.byte	0xf3
 7230 0631 01       		.uleb128 0x1
 7231 0632 51       		.byte	0x51
 7232 0633 56000000 		.4byte	.LVL88
 7233 0637 64000000 		.4byte	.LVL93
 7234 063b 0100     		.2byte	0x1
 7235 063d 55       		.byte	0x55
 7236 063e 64000000 		.4byte	.LVL93
 7237 0642 72000000 		.4byte	.LFE155
 7238 0646 0300     		.2byte	0x3
 7239 0648 F3       		.byte	0xf3
 7240 0649 01       		.uleb128 0x1
 7241 064a 51       		.byte	0x51
 7242 064b 00000000 		.4byte	0
 7243 064f 00000000 		.4byte	0
 7244              	.LLST28:
 7245 0653 22000000 		.4byte	.LVL79
 7246 0657 42000000 		.4byte	.LVL85
 7247 065b 0100     		.2byte	0x1
 7248 065d 54       		.byte	0x54
 7249 065e 42000000 		.4byte	.LVL85
 7250 0662 56000000 		.4byte	.LVL88
 7251 0666 0500     		.2byte	0x5
 7252 0668 73       		.byte	0x73
 7253 0669 00       		.sleb128 0
 7254 066a 31       		.byte	0x31
 7255 066b 27       		.byte	0x27
 7256 066c 9F       		.byte	0x9f
 7257 066d 56000000 		.4byte	.LVL88
 7258 0671 5E000000 		.4byte	.LVL91
 7259 0675 0100     		.2byte	0x1
 7260 0677 54       		.byte	0x54
 7261 0678 5E000000 		.4byte	.LVL91
 7262 067c 72000000 		.4byte	.LFE155
 7263 0680 0500     		.2byte	0x5
ARM GAS  /tmp/ccmSFvTJ.s 			page 153


 7264 0682 73       		.byte	0x73
 7265 0683 00       		.sleb128 0
 7266 0684 31       		.byte	0x31
 7267 0685 27       		.byte	0x27
 7268 0686 9F       		.byte	0x9f
 7269 0687 00000000 		.4byte	0
 7270 068b 00000000 		.4byte	0
 7271              	.LLST29:
 7272 068f 24000000 		.4byte	.LVL80
 7273 0693 40000000 		.4byte	.LVL84
 7274 0697 0100     		.2byte	0x1
 7275 0699 52       		.byte	0x52
 7276 069a 40000000 		.4byte	.LVL84
 7277 069e 44000000 		.4byte	.LVL86
 7278 06a2 0500     		.2byte	0x5
 7279 06a4 71       		.byte	0x71
 7280 06a5 00       		.sleb128 0
 7281 06a6 31       		.byte	0x31
 7282 06a7 27       		.byte	0x27
 7283 06a8 9F       		.byte	0x9f
 7284 06a9 44000000 		.4byte	.LVL86
 7285 06ad 56000000 		.4byte	.LVL88
 7286 06b1 0500     		.2byte	0x5
 7287 06b3 F3       		.byte	0xf3
 7288 06b4 01       		.uleb128 0x1
 7289 06b5 51       		.byte	0x51
 7290 06b6 23       		.byte	0x23
 7291 06b7 1F       		.uleb128 0x1f
 7292 06b8 56000000 		.4byte	.LVL88
 7293 06bc 5C000000 		.4byte	.LVL90
 7294 06c0 0100     		.2byte	0x1
 7295 06c2 52       		.byte	0x52
 7296 06c3 5C000000 		.4byte	.LVL90
 7297 06c7 60000000 		.4byte	.LVL92
 7298 06cb 0500     		.2byte	0x5
 7299 06cd 71       		.byte	0x71
 7300 06ce 00       		.sleb128 0
 7301 06cf 31       		.byte	0x31
 7302 06d0 27       		.byte	0x27
 7303 06d1 9F       		.byte	0x9f
 7304 06d2 60000000 		.4byte	.LVL92
 7305 06d6 72000000 		.4byte	.LFE155
 7306 06da 0500     		.2byte	0x5
 7307 06dc F3       		.byte	0xf3
 7308 06dd 01       		.uleb128 0x1
 7309 06de 51       		.byte	0x51
 7310 06df 23       		.byte	0x23
 7311 06e0 1F       		.uleb128 0x1f
 7312 06e1 00000000 		.4byte	0
 7313 06e5 00000000 		.4byte	0
 7314              	.LLST30:
 7315 06e9 24000000 		.4byte	.LVL80
 7316 06ed 26000000 		.4byte	.LVL81
 7317 06f1 0100     		.2byte	0x1
 7318 06f3 57       		.byte	0x57
 7319 06f4 26000000 		.4byte	.LVL81
 7320 06f8 72000000 		.4byte	.LFE155
ARM GAS  /tmp/ccmSFvTJ.s 			page 154


 7321 06fc 0100     		.2byte	0x1
 7322 06fe 56       		.byte	0x56
 7323 06ff 00000000 		.4byte	0
 7324 0703 00000000 		.4byte	0
 7325              	.LLST22:
 7326 0707 00000000 		.4byte	.LVL73
 7327 070b 08000000 		.4byte	.LVL75
 7328 070f 0100     		.2byte	0x1
 7329 0711 51       		.byte	0x51
 7330 0712 08000000 		.4byte	.LVL75
 7331 0716 12000000 		.4byte	.LFE154
 7332 071a 0400     		.2byte	0x4
 7333 071c F3       		.byte	0xf3
 7334 071d 01       		.uleb128 0x1
 7335 071e 51       		.byte	0x51
 7336 071f 9F       		.byte	0x9f
 7337 0720 00000000 		.4byte	0
 7338 0724 00000000 		.4byte	0
 7339              	.LLST23:
 7340 0728 00000000 		.4byte	.LVL73
 7341 072c 04000000 		.4byte	.LVL74
 7342 0730 0100     		.2byte	0x1
 7343 0732 52       		.byte	0x52
 7344 0733 04000000 		.4byte	.LVL74
 7345 0737 0C000000 		.4byte	.LVL76
 7346 073b 0300     		.2byte	0x3
 7347 073d 72       		.byte	0x72
 7348 073e 70       		.sleb128 -16
 7349 073f 9F       		.byte	0x9f
 7350 0740 0C000000 		.4byte	.LVL76
 7351 0744 12000000 		.4byte	.LFE154
 7352 0748 0400     		.2byte	0x4
 7353 074a F3       		.byte	0xf3
 7354 074b 01       		.uleb128 0x1
 7355 074c 52       		.byte	0x52
 7356 074d 9F       		.byte	0x9f
 7357 074e 00000000 		.4byte	0
 7358 0752 00000000 		.4byte	0
 7359              	.LLST20:
 7360 0756 00000000 		.4byte	.LVL69
 7361 075a 08000000 		.4byte	.LVL71
 7362 075e 0100     		.2byte	0x1
 7363 0760 51       		.byte	0x51
 7364 0761 08000000 		.4byte	.LVL71
 7365 0765 12000000 		.4byte	.LFE153
 7366 0769 0400     		.2byte	0x4
 7367 076b F3       		.byte	0xf3
 7368 076c 01       		.uleb128 0x1
 7369 076d 51       		.byte	0x51
 7370 076e 9F       		.byte	0x9f
 7371 076f 00000000 		.4byte	0
 7372 0773 00000000 		.4byte	0
 7373              	.LLST21:
 7374 0777 00000000 		.4byte	.LVL69
 7375 077b 04000000 		.4byte	.LVL70
 7376 077f 0100     		.2byte	0x1
 7377 0781 52       		.byte	0x52
ARM GAS  /tmp/ccmSFvTJ.s 			page 155


 7378 0782 04000000 		.4byte	.LVL70
 7379 0786 0C000000 		.4byte	.LVL72
 7380 078a 0300     		.2byte	0x3
 7381 078c 72       		.byte	0x72
 7382 078d 70       		.sleb128 -16
 7383 078e 9F       		.byte	0x9f
 7384 078f 0C000000 		.4byte	.LVL72
 7385 0793 12000000 		.4byte	.LFE153
 7386 0797 0400     		.2byte	0x4
 7387 0799 F3       		.byte	0xf3
 7388 079a 01       		.uleb128 0x1
 7389 079b 52       		.byte	0x52
 7390 079c 9F       		.byte	0x9f
 7391 079d 00000000 		.4byte	0
 7392 07a1 00000000 		.4byte	0
 7393              	.LLST19:
 7394 07a5 00000000 		.4byte	.LVL67
 7395 07a9 02000000 		.4byte	.LVL68
 7396 07ad 0100     		.2byte	0x1
 7397 07af 50       		.byte	0x50
 7398 07b0 02000000 		.4byte	.LVL68
 7399 07b4 04000000 		.4byte	.LFE152
 7400 07b8 0400     		.2byte	0x4
 7401 07ba F3       		.byte	0xf3
 7402 07bb 01       		.uleb128 0x1
 7403 07bc 50       		.byte	0x50
 7404 07bd 9F       		.byte	0x9f
 7405 07be 00000000 		.4byte	0
 7406 07c2 00000000 		.4byte	0
 7407              	.LLST18:
 7408 07c6 00000000 		.4byte	.LVL65
 7409 07ca 02000000 		.4byte	.LVL66
 7410 07ce 0100     		.2byte	0x1
 7411 07d0 50       		.byte	0x50
 7412 07d1 02000000 		.4byte	.LVL66
 7413 07d5 04000000 		.4byte	.LFE151
 7414 07d9 0400     		.2byte	0x4
 7415 07db F3       		.byte	0xf3
 7416 07dc 01       		.uleb128 0x1
 7417 07dd 50       		.byte	0x50
 7418 07de 9F       		.byte	0x9f
 7419 07df 00000000 		.4byte	0
 7420 07e3 00000000 		.4byte	0
 7421              	.LLST17:
 7422 07e7 00000000 		.4byte	.LVL63
 7423 07eb 02000000 		.4byte	.LVL64
 7424 07ef 0100     		.2byte	0x1
 7425 07f1 50       		.byte	0x50
 7426 07f2 02000000 		.4byte	.LVL64
 7427 07f6 04000000 		.4byte	.LFE150
 7428 07fa 0400     		.2byte	0x4
 7429 07fc F3       		.byte	0xf3
 7430 07fd 01       		.uleb128 0x1
 7431 07fe 50       		.byte	0x50
 7432 07ff 9F       		.byte	0x9f
 7433 0800 00000000 		.4byte	0
 7434 0804 00000000 		.4byte	0
ARM GAS  /tmp/ccmSFvTJ.s 			page 156


 7435              	.LLST16:
 7436 0808 00000000 		.4byte	.LVL61
 7437 080c 06000000 		.4byte	.LVL62
 7438 0810 0100     		.2byte	0x1
 7439 0812 51       		.byte	0x51
 7440 0813 06000000 		.4byte	.LVL62
 7441 0817 0A000000 		.4byte	.LFE149
 7442 081b 0400     		.2byte	0x4
 7443 081d F3       		.byte	0xf3
 7444 081e 01       		.uleb128 0x1
 7445 081f 51       		.byte	0x51
 7446 0820 9F       		.byte	0x9f
 7447 0821 00000000 		.4byte	0
 7448 0825 00000000 		.4byte	0
 7449              	.LLST15:
 7450 0829 00000000 		.4byte	.LVL59
 7451 082d 06000000 		.4byte	.LVL60
 7452 0831 0100     		.2byte	0x1
 7453 0833 51       		.byte	0x51
 7454 0834 06000000 		.4byte	.LVL60
 7455 0838 0A000000 		.4byte	.LFE148
 7456 083c 0400     		.2byte	0x4
 7457 083e F3       		.byte	0xf3
 7458 083f 01       		.uleb128 0x1
 7459 0840 51       		.byte	0x51
 7460 0841 9F       		.byte	0x9f
 7461 0842 00000000 		.4byte	0
 7462 0846 00000000 		.4byte	0
 7463              	.LLST14:
 7464 084a 00000000 		.4byte	.LVL57
 7465 084e 06000000 		.4byte	.LVL58
 7466 0852 0100     		.2byte	0x1
 7467 0854 50       		.byte	0x50
 7468 0855 06000000 		.4byte	.LVL58
 7469 0859 0C000000 		.4byte	.LFE147
 7470 085d 0400     		.2byte	0x4
 7471 085f F3       		.byte	0xf3
 7472 0860 01       		.uleb128 0x1
 7473 0861 50       		.byte	0x50
 7474 0862 9F       		.byte	0x9f
 7475 0863 00000000 		.4byte	0
 7476 0867 00000000 		.4byte	0
 7477              	.LLST13:
 7478 086b 00000000 		.4byte	.LVL53
 7479 086f 0C000000 		.4byte	.LVL54
 7480 0873 0100     		.2byte	0x1
 7481 0875 50       		.byte	0x50
 7482 0876 0C000000 		.4byte	.LVL54
 7483 087a 0E000000 		.4byte	.LVL55
 7484 087e 0400     		.2byte	0x4
 7485 0880 F3       		.byte	0xf3
 7486 0881 01       		.uleb128 0x1
 7487 0882 50       		.byte	0x50
 7488 0883 9F       		.byte	0x9f
 7489 0884 0E000000 		.4byte	.LVL55
 7490 0888 1A000000 		.4byte	.LVL56
 7491 088c 0100     		.2byte	0x1
ARM GAS  /tmp/ccmSFvTJ.s 			page 157


 7492 088e 50       		.byte	0x50
 7493 088f 1A000000 		.4byte	.LVL56
 7494 0893 26000000 		.4byte	.LFE146
 7495 0897 0400     		.2byte	0x4
 7496 0899 F3       		.byte	0xf3
 7497 089a 01       		.uleb128 0x1
 7498 089b 50       		.byte	0x50
 7499 089c 9F       		.byte	0x9f
 7500 089d 00000000 		.4byte	0
 7501 08a1 00000000 		.4byte	0
 7502              	.LLST12:
 7503 08a5 00000000 		.4byte	.LVL49
 7504 08a9 0C000000 		.4byte	.LVL50
 7505 08ad 0100     		.2byte	0x1
 7506 08af 50       		.byte	0x50
 7507 08b0 0C000000 		.4byte	.LVL50
 7508 08b4 0E000000 		.4byte	.LVL51
 7509 08b8 0400     		.2byte	0x4
 7510 08ba F3       		.byte	0xf3
 7511 08bb 01       		.uleb128 0x1
 7512 08bc 50       		.byte	0x50
 7513 08bd 9F       		.byte	0x9f
 7514 08be 0E000000 		.4byte	.LVL51
 7515 08c2 1A000000 		.4byte	.LVL52
 7516 08c6 0100     		.2byte	0x1
 7517 08c8 50       		.byte	0x50
 7518 08c9 1A000000 		.4byte	.LVL52
 7519 08cd 26000000 		.4byte	.LFE145
 7520 08d1 0400     		.2byte	0x4
 7521 08d3 F3       		.byte	0xf3
 7522 08d4 01       		.uleb128 0x1
 7523 08d5 50       		.byte	0x50
 7524 08d6 9F       		.byte	0x9f
 7525 08d7 00000000 		.4byte	0
 7526 08db 00000000 		.4byte	0
 7527              	.LLST7:
 7528 08df 00000000 		.4byte	.LVL20
 7529 08e3 12010000 		.4byte	.LVL43
 7530 08e7 0100     		.2byte	0x1
 7531 08e9 50       		.byte	0x50
 7532 08ea 12010000 		.4byte	.LVL43
 7533 08ee 2E010000 		.4byte	.LVL45
 7534 08f2 0400     		.2byte	0x4
 7535 08f4 F3       		.byte	0xf3
 7536 08f5 01       		.uleb128 0x1
 7537 08f6 50       		.byte	0x50
 7538 08f7 9F       		.byte	0x9f
 7539 08f8 2E010000 		.4byte	.LVL45
 7540 08fc 6C010000 		.4byte	.LFE144
 7541 0900 0100     		.2byte	0x1
 7542 0902 50       		.byte	0x50
 7543 0903 00000000 		.4byte	0
 7544 0907 00000000 		.4byte	0
 7545              	.LLST8:
 7546 090b 00000000 		.4byte	.LVL20
 7547 090f 16010000 		.4byte	.LVL44
 7548 0913 0100     		.2byte	0x1
ARM GAS  /tmp/ccmSFvTJ.s 			page 158


 7549 0915 51       		.byte	0x51
 7550 0916 16010000 		.4byte	.LVL44
 7551 091a 2E010000 		.4byte	.LVL45
 7552 091e 0400     		.2byte	0x4
 7553 0920 F3       		.byte	0xf3
 7554 0921 01       		.uleb128 0x1
 7555 0922 51       		.byte	0x51
 7556 0923 9F       		.byte	0x9f
 7557 0924 2E010000 		.4byte	.LVL45
 7558 0928 6C010000 		.4byte	.LFE144
 7559 092c 0100     		.2byte	0x1
 7560 092e 51       		.byte	0x51
 7561 092f 00000000 		.4byte	0
 7562 0933 00000000 		.4byte	0
 7563              	.LLST9:
 7564 0937 00000000 		.4byte	.LVL20
 7565 093b 30000000 		.4byte	.LVL22
 7566 093f 0200     		.2byte	0x2
 7567 0941 30       		.byte	0x30
 7568 0942 9F       		.byte	0x9f
 7569 0943 30000000 		.4byte	.LVL22
 7570 0947 46000000 		.4byte	.LVL23
 7571 094b 0100     		.2byte	0x1
 7572 094d 52       		.byte	0x52
 7573 094e 46000000 		.4byte	.LVL23
 7574 0952 4E000000 		.4byte	.LVL24
 7575 0956 3600     		.2byte	0x36
 7576 0958 71       		.byte	0x71
 7577 0959 04       		.sleb128 4
 7578 095a 06       		.byte	0x6
 7579 095b 3F       		.byte	0x3f
 7580 095c 1A       		.byte	0x1a
 7581 095d 71       		.byte	0x71
 7582 095e 0A       		.sleb128 10
 7583 095f 94       		.byte	0x94
 7584 0960 01       		.byte	0x1
 7585 0961 08       		.byte	0x8
 7586 0962 FF       		.byte	0xff
 7587 0963 1A       		.byte	0x1a
 7588 0964 39       		.byte	0x39
 7589 0965 24       		.byte	0x24
 7590 0966 21       		.byte	0x21
 7591 0967 75       		.byte	0x75
 7592 0968 00       		.sleb128 0
 7593 0969 40       		.byte	0x40
 7594 096a 24       		.byte	0x24
 7595 096b 21       		.byte	0x21
 7596 096c 7E       		.byte	0x7e
 7597 096d 00       		.sleb128 0
 7598 096e 41       		.byte	0x41
 7599 096f 24       		.byte	0x24
 7600 0970 21       		.byte	0x21
 7601 0971 71       		.byte	0x71
 7602 0972 18       		.sleb128 24
 7603 0973 94       		.byte	0x94
 7604 0974 01       		.byte	0x1
 7605 0975 08       		.byte	0x8
ARM GAS  /tmp/ccmSFvTJ.s 			page 159


 7606 0976 FF       		.byte	0xff
 7607 0977 1A       		.byte	0x1a
 7608 0978 42       		.byte	0x42
 7609 0979 24       		.byte	0x24
 7610 097a 21       		.byte	0x21
 7611 097b 71       		.byte	0x71
 7612 097c 14       		.sleb128 20
 7613 097d 94       		.byte	0x94
 7614 097e 02       		.byte	0x2
 7615 097f 0A       		.byte	0xa
 7616 0980 FFFF     		.2byte	0xffff
 7617 0982 1A       		.byte	0x1a
 7618 0983 21       		.byte	0x21
 7619 0984 71       		.byte	0x71
 7620 0985 08       		.sleb128 8
 7621 0986 94       		.byte	0x94
 7622 0987 02       		.byte	0x2
 7623 0988 0A       		.byte	0xa
 7624 0989 FFFF     		.2byte	0xffff
 7625 098b 1A       		.byte	0x1a
 7626 098c 21       		.byte	0x21
 7627 098d 9F       		.byte	0x9f
 7628 098e 4E000000 		.4byte	.LVL24
 7629 0992 52000000 		.4byte	.LVL25
 7630 0996 3B00     		.2byte	0x3b
 7631 0998 71       		.byte	0x71
 7632 0999 04       		.sleb128 4
 7633 099a 06       		.byte	0x6
 7634 099b 3F       		.byte	0x3f
 7635 099c 1A       		.byte	0x1a
 7636 099d 71       		.byte	0x71
 7637 099e 0A       		.sleb128 10
 7638 099f 94       		.byte	0x94
 7639 09a0 01       		.byte	0x1
 7640 09a1 08       		.byte	0x8
 7641 09a2 FF       		.byte	0xff
 7642 09a3 1A       		.byte	0x1a
 7643 09a4 39       		.byte	0x39
 7644 09a5 24       		.byte	0x24
 7645 09a6 21       		.byte	0x21
 7646 09a7 75       		.byte	0x75
 7647 09a8 00       		.sleb128 0
 7648 09a9 40       		.byte	0x40
 7649 09aa 24       		.byte	0x24
 7650 09ab 21       		.byte	0x21
 7651 09ac 71       		.byte	0x71
 7652 09ad 17       		.sleb128 23
 7653 09ae 94       		.byte	0x94
 7654 09af 01       		.byte	0x1
 7655 09b0 08       		.byte	0x8
 7656 09b1 FF       		.byte	0xff
 7657 09b2 1A       		.byte	0x1a
 7658 09b3 41       		.byte	0x41
 7659 09b4 24       		.byte	0x24
 7660 09b5 21       		.byte	0x21
 7661 09b6 71       		.byte	0x71
 7662 09b7 18       		.sleb128 24
ARM GAS  /tmp/ccmSFvTJ.s 			page 160


 7663 09b8 94       		.byte	0x94
 7664 09b9 01       		.byte	0x1
 7665 09ba 08       		.byte	0x8
 7666 09bb FF       		.byte	0xff
 7667 09bc 1A       		.byte	0x1a
 7668 09bd 42       		.byte	0x42
 7669 09be 24       		.byte	0x24
 7670 09bf 21       		.byte	0x21
 7671 09c0 71       		.byte	0x71
 7672 09c1 14       		.sleb128 20
 7673 09c2 94       		.byte	0x94
 7674 09c3 02       		.byte	0x2
 7675 09c4 0A       		.byte	0xa
 7676 09c5 FFFF     		.2byte	0xffff
 7677 09c7 1A       		.byte	0x1a
 7678 09c8 21       		.byte	0x21
 7679 09c9 71       		.byte	0x71
 7680 09ca 08       		.sleb128 8
 7681 09cb 94       		.byte	0x94
 7682 09cc 02       		.byte	0x2
 7683 09cd 0A       		.byte	0xa
 7684 09ce FFFF     		.2byte	0xffff
 7685 09d0 1A       		.byte	0x1a
 7686 09d1 21       		.byte	0x21
 7687 09d2 9F       		.byte	0x9f
 7688 09d3 52000000 		.4byte	.LVL25
 7689 09d7 70000000 		.4byte	.LVL26
 7690 09db 4000     		.2byte	0x40
 7691 09dd 71       		.byte	0x71
 7692 09de 04       		.sleb128 4
 7693 09df 06       		.byte	0x6
 7694 09e0 3F       		.byte	0x3f
 7695 09e1 1A       		.byte	0x1a
 7696 09e2 71       		.byte	0x71
 7697 09e3 0A       		.sleb128 10
 7698 09e4 94       		.byte	0x94
 7699 09e5 01       		.byte	0x1
 7700 09e6 08       		.byte	0x8
 7701 09e7 FF       		.byte	0xff
 7702 09e8 1A       		.byte	0x1a
 7703 09e9 39       		.byte	0x39
 7704 09ea 24       		.byte	0x24
 7705 09eb 21       		.byte	0x21
 7706 09ec 71       		.byte	0x71
 7707 09ed 16       		.sleb128 22
 7708 09ee 94       		.byte	0x94
 7709 09ef 01       		.byte	0x1
 7710 09f0 08       		.byte	0x8
 7711 09f1 FF       		.byte	0xff
 7712 09f2 1A       		.byte	0x1a
 7713 09f3 40       		.byte	0x40
 7714 09f4 24       		.byte	0x24
 7715 09f5 21       		.byte	0x21
 7716 09f6 71       		.byte	0x71
 7717 09f7 17       		.sleb128 23
 7718 09f8 94       		.byte	0x94
 7719 09f9 01       		.byte	0x1
ARM GAS  /tmp/ccmSFvTJ.s 			page 161


 7720 09fa 08       		.byte	0x8
 7721 09fb FF       		.byte	0xff
 7722 09fc 1A       		.byte	0x1a
 7723 09fd 41       		.byte	0x41
 7724 09fe 24       		.byte	0x24
 7725 09ff 21       		.byte	0x21
 7726 0a00 71       		.byte	0x71
 7727 0a01 18       		.sleb128 24
 7728 0a02 94       		.byte	0x94
 7729 0a03 01       		.byte	0x1
 7730 0a04 08       		.byte	0x8
 7731 0a05 FF       		.byte	0xff
 7732 0a06 1A       		.byte	0x1a
 7733 0a07 42       		.byte	0x42
 7734 0a08 24       		.byte	0x24
 7735 0a09 21       		.byte	0x21
 7736 0a0a 71       		.byte	0x71
 7737 0a0b 14       		.sleb128 20
 7738 0a0c 94       		.byte	0x94
 7739 0a0d 02       		.byte	0x2
 7740 0a0e 0A       		.byte	0xa
 7741 0a0f FFFF     		.2byte	0xffff
 7742 0a11 1A       		.byte	0x1a
 7743 0a12 21       		.byte	0x21
 7744 0a13 71       		.byte	0x71
 7745 0a14 08       		.sleb128 8
 7746 0a15 94       		.byte	0x94
 7747 0a16 02       		.byte	0x2
 7748 0a17 0A       		.byte	0xa
 7749 0a18 FFFF     		.2byte	0xffff
 7750 0a1a 1A       		.byte	0x1a
 7751 0a1b 21       		.byte	0x21
 7752 0a1c 9F       		.byte	0x9f
 7753 0a1d 70000000 		.4byte	.LVL26
 7754 0a21 7A000000 		.4byte	.LVL27
 7755 0a25 0100     		.2byte	0x1
 7756 0a27 5E       		.byte	0x5e
 7757 0a28 7A000000 		.4byte	.LVL27
 7758 0a2c 88000000 		.4byte	.LVL28
 7759 0a30 0100     		.2byte	0x1
 7760 0a32 55       		.byte	0x55
 7761 0a33 88000000 		.4byte	.LVL28
 7762 0a37 8A000000 		.4byte	.LVL29
 7763 0a3b 0300     		.2byte	0x3
 7764 0a3d 70       		.byte	0x70
 7765 0a3e C800     		.sleb128 72
 7766 0a40 8A000000 		.4byte	.LVL29
 7767 0a44 90000000 		.4byte	.LVL31
 7768 0a48 0100     		.2byte	0x1
 7769 0a4a 52       		.byte	0x52
 7770 0a4b 90000000 		.4byte	.LVL31
 7771 0a4f 9E000000 		.4byte	.LVL32
 7772 0a53 0300     		.2byte	0x3
 7773 0a55 70       		.byte	0x70
 7774 0a56 C400     		.sleb128 68
 7775 0a58 9E000000 		.4byte	.LVL32
 7776 0a5c A4000000 		.4byte	.LVL33
ARM GAS  /tmp/ccmSFvTJ.s 			page 162


 7777 0a60 1000     		.2byte	0x10
 7778 0a62 0C       		.byte	0xc
 7779 0a63 01000100 		.4byte	0x10001
 7780 0a67 73       		.byte	0x73
 7781 0a68 00       		.sleb128 0
 7782 0a69 24       		.byte	0x24
 7783 0a6a 20       		.byte	0x20
 7784 0a6b 77       		.byte	0x77
 7785 0a6c 00       		.sleb128 0
 7786 0a6d 1A       		.byte	0x1a
 7787 0a6e 74       		.byte	0x74
 7788 0a6f 00       		.sleb128 0
 7789 0a70 21       		.byte	0x21
 7790 0a71 9F       		.byte	0x9f
 7791 0a72 A4000000 		.4byte	.LVL33
 7792 0a76 BC000000 		.4byte	.LVL34
 7793 0a7a 2500     		.2byte	0x25
 7794 0a7c 0C       		.byte	0xc
 7795 0a7d 01000100 		.4byte	0x10001
 7796 0a81 73       		.byte	0x73
 7797 0a82 00       		.sleb128 0
 7798 0a83 24       		.byte	0x24
 7799 0a84 20       		.byte	0x20
 7800 0a85 77       		.byte	0x77
 7801 0a86 00       		.sleb128 0
 7802 0a87 1A       		.byte	0x1a
 7803 0a88 71       		.byte	0x71
 7804 0a89 21       		.sleb128 33
 7805 0a8a 94       		.byte	0x94
 7806 0a8b 01       		.byte	0x1
 7807 0a8c 08       		.byte	0x8
 7808 0a8d FF       		.byte	0xff
 7809 0a8e 1A       		.byte	0x1a
 7810 0a8f 73       		.byte	0x73
 7811 0a90 00       		.sleb128 0
 7812 0a91 24       		.byte	0x24
 7813 0a92 40       		.byte	0x40
 7814 0a93 24       		.byte	0x24
 7815 0a94 21       		.byte	0x21
 7816 0a95 71       		.byte	0x71
 7817 0a96 20       		.sleb128 32
 7818 0a97 94       		.byte	0x94
 7819 0a98 01       		.byte	0x1
 7820 0a99 08       		.byte	0x8
 7821 0a9a FF       		.byte	0xff
 7822 0a9b 1A       		.byte	0x1a
 7823 0a9c 73       		.byte	0x73
 7824 0a9d 00       		.sleb128 0
 7825 0a9e 24       		.byte	0x24
 7826 0a9f 21       		.byte	0x21
 7827 0aa0 9F       		.byte	0x9f
 7828 0aa1 2E010000 		.4byte	.LVL45
 7829 0aa5 3A010000 		.4byte	.LVL46
 7830 0aa9 0300     		.2byte	0x3
 7831 0aab 70       		.byte	0x70
 7832 0aac C400     		.sleb128 68
 7833 0aae 3A010000 		.4byte	.LVL46
ARM GAS  /tmp/ccmSFvTJ.s 			page 163


 7834 0ab2 44010000 		.4byte	.LVL47
 7835 0ab6 1000     		.2byte	0x10
 7836 0ab8 0C       		.byte	0xc
 7837 0ab9 01000100 		.4byte	0x10001
 7838 0abd 73       		.byte	0x73
 7839 0abe 00       		.sleb128 0
 7840 0abf 24       		.byte	0x24
 7841 0ac0 20       		.byte	0x20
 7842 0ac1 77       		.byte	0x77
 7843 0ac2 00       		.sleb128 0
 7844 0ac3 1A       		.byte	0x1a
 7845 0ac4 74       		.byte	0x74
 7846 0ac5 00       		.sleb128 0
 7847 0ac6 21       		.byte	0x21
 7848 0ac7 9F       		.byte	0x9f
 7849 0ac8 64010000 		.4byte	.LVL48
 7850 0acc 6C010000 		.4byte	.LFE144
 7851 0ad0 2500     		.2byte	0x25
 7852 0ad2 0C       		.byte	0xc
 7853 0ad3 01000100 		.4byte	0x10001
 7854 0ad7 73       		.byte	0x73
 7855 0ad8 00       		.sleb128 0
 7856 0ad9 24       		.byte	0x24
 7857 0ada 20       		.byte	0x20
 7858 0adb 77       		.byte	0x77
 7859 0adc 00       		.sleb128 0
 7860 0add 1A       		.byte	0x1a
 7861 0ade 71       		.byte	0x71
 7862 0adf 21       		.sleb128 33
 7863 0ae0 94       		.byte	0x94
 7864 0ae1 01       		.byte	0x1
 7865 0ae2 08       		.byte	0x8
 7866 0ae3 FF       		.byte	0xff
 7867 0ae4 1A       		.byte	0x1a
 7868 0ae5 73       		.byte	0x73
 7869 0ae6 00       		.sleb128 0
 7870 0ae7 24       		.byte	0x24
 7871 0ae8 40       		.byte	0x40
 7872 0ae9 24       		.byte	0x24
 7873 0aea 21       		.byte	0x21
 7874 0aeb 71       		.byte	0x71
 7875 0aec 20       		.sleb128 32
 7876 0aed 94       		.byte	0x94
 7877 0aee 01       		.byte	0x1
 7878 0aef 08       		.byte	0x8
 7879 0af0 FF       		.byte	0xff
 7880 0af1 1A       		.byte	0x1a
 7881 0af2 73       		.byte	0x73
 7882 0af3 00       		.sleb128 0
 7883 0af4 24       		.byte	0x24
 7884 0af5 21       		.byte	0x21
 7885 0af6 9F       		.byte	0x9f
 7886 0af7 00000000 		.4byte	0
 7887 0afb 00000000 		.4byte	0
 7888              	.LLST10:
 7889 0aff 20000000 		.4byte	.LVL21
 7890 0b03 0E010000 		.4byte	.LVL42
ARM GAS  /tmp/ccmSFvTJ.s 			page 164


 7891 0b07 0100     		.2byte	0x1
 7892 0b09 53       		.byte	0x53
 7893 0b0a 2E010000 		.4byte	.LVL45
 7894 0b0e 6C010000 		.4byte	.LFE144
 7895 0b12 0100     		.2byte	0x1
 7896 0b14 53       		.byte	0x53
 7897 0b15 00000000 		.4byte	0
 7898 0b19 00000000 		.4byte	0
 7899              	.LLST11:
 7900 0b1d DC000000 		.4byte	.LVL35
 7901 0b21 E2000000 		.4byte	.LVL37
 7902 0b25 0200     		.2byte	0x2
 7903 0b27 30       		.byte	0x30
 7904 0b28 9F       		.byte	0x9f
 7905 0b29 E2000000 		.4byte	.LVL37
 7906 0b2d F0000000 		.4byte	.LVL39
 7907 0b31 0100     		.2byte	0x1
 7908 0b33 54       		.byte	0x54
 7909 0b34 F0000000 		.4byte	.LVL39
 7910 0b38 F8000000 		.4byte	.LVL40
 7911 0b3c 0100     		.2byte	0x1
 7912 0b3e 52       		.byte	0x52
 7913 0b3f F8000000 		.4byte	.LVL40
 7914 0b43 0A010000 		.4byte	.LVL41
 7915 0b47 0300     		.2byte	0x3
 7916 0b49 70       		.byte	0x70
 7917 0b4a EC00     		.sleb128 108
 7918 0b4c 0A010000 		.4byte	.LVL41
 7919 0b50 0E010000 		.4byte	.LVL42
 7920 0b54 0E00     		.2byte	0xe
 7921 0b56 71       		.byte	0x71
 7922 0b57 23       		.sleb128 35
 7923 0b58 94       		.byte	0x94
 7924 0b59 01       		.byte	0x1
 7925 0b5a 08       		.byte	0x8
 7926 0b5b FF       		.byte	0xff
 7927 0b5c 1A       		.byte	0x1a
 7928 0b5d 73       		.byte	0x73
 7929 0b5e 00       		.sleb128 0
 7930 0b5f 24       		.byte	0x24
 7931 0b60 74       		.byte	0x74
 7932 0b61 00       		.sleb128 0
 7933 0b62 21       		.byte	0x21
 7934 0b63 9F       		.byte	0x9f
 7935 0b64 00000000 		.4byte	0
 7936 0b68 00000000 		.4byte	0
 7937              	.LLST3:
 7938 0b6c 00000000 		.4byte	.LVL9
 7939 0b70 0C000000 		.4byte	.LVL10
 7940 0b74 0100     		.2byte	0x1
 7941 0b76 50       		.byte	0x50
 7942 0b77 0C000000 		.4byte	.LVL10
 7943 0b7b 3E000000 		.4byte	.LFE143
 7944 0b7f 0100     		.2byte	0x1
 7945 0b81 56       		.byte	0x56
 7946 0b82 00000000 		.4byte	0
 7947 0b86 00000000 		.4byte	0
ARM GAS  /tmp/ccmSFvTJ.s 			page 165


 7948              	.LLST4:
 7949 0b8a 00000000 		.4byte	.LVL9
 7950 0b8e 0E000000 		.4byte	.LVL11
 7951 0b92 0100     		.2byte	0x1
 7952 0b94 51       		.byte	0x51
 7953 0b95 0E000000 		.4byte	.LVL11
 7954 0b99 3E000000 		.4byte	.LFE143
 7955 0b9d 0100     		.2byte	0x1
 7956 0b9f 55       		.byte	0x55
 7957 0ba0 00000000 		.4byte	0
 7958 0ba4 00000000 		.4byte	0
 7959              	.LLST5:
 7960 0ba8 00000000 		.4byte	.LVL9
 7961 0bac 1C000000 		.4byte	.LVL14
 7962 0bb0 0200     		.2byte	0x2
 7963 0bb2 30       		.byte	0x30
 7964 0bb3 9F       		.byte	0x9f
 7965 0bb4 1C000000 		.4byte	.LVL14
 7966 0bb8 36000000 		.4byte	.LVL17
 7967 0bbc 0100     		.2byte	0x1
 7968 0bbe 54       		.byte	0x54
 7969 0bbf 3A000000 		.4byte	.LVL18
 7970 0bc3 3C000000 		.4byte	.LVL19
 7971 0bc7 0100     		.2byte	0x1
 7972 0bc9 54       		.byte	0x54
 7973 0bca 00000000 		.4byte	0
 7974 0bce 00000000 		.4byte	0
 7975              	.LLST6:
 7976 0bd2 18000000 		.4byte	.LVL13
 7977 0bd6 1C000000 		.4byte	.LVL14
 7978 0bda 0100     		.2byte	0x1
 7979 0bdc 50       		.byte	0x50
 7980 0bdd 26000000 		.4byte	.LVL15
 7981 0be1 32000000 		.4byte	.LVL16
 7982 0be5 0100     		.2byte	0x1
 7983 0be7 50       		.byte	0x50
 7984 0be8 3A000000 		.4byte	.LVL18
 7985 0bec 3E000000 		.4byte	.LFE143
 7986 0bf0 0100     		.2byte	0x1
 7987 0bf2 50       		.byte	0x50
 7988 0bf3 00000000 		.4byte	0
 7989 0bf7 00000000 		.4byte	0
 7990              	.LLST0:
 7991 0bfb 00000000 		.4byte	.LVL0
 7992 0bff 0E000000 		.4byte	.LVL1
 7993 0c03 0100     		.2byte	0x1
 7994 0c05 50       		.byte	0x50
 7995 0c06 0E000000 		.4byte	.LVL1
 7996 0c0a 4C000000 		.4byte	.LFE142
 7997 0c0e 0100     		.2byte	0x1
 7998 0c10 5E       		.byte	0x5e
 7999 0c11 00000000 		.4byte	0
 8000 0c15 00000000 		.4byte	0
 8001              	.LLST1:
 8002 0c19 00000000 		.4byte	.LVL0
 8003 0c1d 0E000000 		.4byte	.LVL1
 8004 0c21 0100     		.2byte	0x1
ARM GAS  /tmp/ccmSFvTJ.s 			page 166


 8005 0c23 51       		.byte	0x51
 8006 0c24 0E000000 		.4byte	.LVL1
 8007 0c28 48000000 		.4byte	.LVL8
 8008 0c2c 0100     		.2byte	0x1
 8009 0c2e 57       		.byte	0x57
 8010 0c2f 48000000 		.4byte	.LVL8
 8011 0c33 4C000000 		.4byte	.LFE142
 8012 0c37 0400     		.2byte	0x4
 8013 0c39 F3       		.byte	0xf3
 8014 0c3a 01       		.uleb128 0x1
 8015 0c3b 51       		.byte	0x51
 8016 0c3c 9F       		.byte	0x9f
 8017 0c3d 00000000 		.4byte	0
 8018 0c41 00000000 		.4byte	0
 8019              	.LLST2:
 8020 0c45 2C000000 		.4byte	.LVL3
 8021 0c49 3C000000 		.4byte	.LVL5
 8022 0c4d 0100     		.2byte	0x1
 8023 0c4f 50       		.byte	0x50
 8024 0c50 3C000000 		.4byte	.LVL5
 8025 0c54 40000000 		.4byte	.LVL6
 8026 0c58 1600     		.2byte	0x16
 8027 0c5a 77       		.byte	0x77
 8028 0c5b 00       		.sleb128 0
 8029 0c5c F7       		.byte	0xf7
 8030 0c5d 25       		.uleb128 0x25
 8031 0c5e 74       		.byte	0x74
 8032 0c5f 7C       		.sleb128 -4
 8033 0c60 06       		.byte	0x6
 8034 0c61 F7       		.byte	0xf7
 8035 0c62 25       		.uleb128 0x25
 8036 0c63 1B       		.byte	0x1b
 8037 0c64 F7       		.byte	0xf7
 8038 0c65 00       		.uleb128 0
 8039 0c66 F7       		.byte	0xf7
 8040 0c67 25       		.uleb128 0x25
 8041 0c68 7E       		.byte	0x7e
 8042 0c69 00       		.sleb128 0
 8043 0c6a F7       		.byte	0xf7
 8044 0c6b 25       		.uleb128 0x25
 8045 0c6c 1B       		.byte	0x1b
 8046 0c6d F7       		.byte	0xf7
 8047 0c6e 00       		.uleb128 0
 8048 0c6f 9F       		.byte	0x9f
 8049 0c70 40000000 		.4byte	.LVL6
 8050 0c74 44000000 		.4byte	.LVL7
 8051 0c78 0100     		.2byte	0x1
 8052 0c7a 50       		.byte	0x50
 8053 0c7b 44000000 		.4byte	.LVL7
 8054 0c7f 48000000 		.4byte	.LVL8
 8055 0c83 1600     		.2byte	0x16
 8056 0c85 77       		.byte	0x77
 8057 0c86 00       		.sleb128 0
 8058 0c87 F7       		.byte	0xf7
 8059 0c88 25       		.uleb128 0x25
 8060 0c89 74       		.byte	0x74
 8061 0c8a 7C       		.sleb128 -4
ARM GAS  /tmp/ccmSFvTJ.s 			page 167


 8062 0c8b 06       		.byte	0x6
 8063 0c8c F7       		.byte	0xf7
 8064 0c8d 25       		.uleb128 0x25
 8065 0c8e 1B       		.byte	0x1b
 8066 0c8f F7       		.byte	0xf7
 8067 0c90 00       		.uleb128 0
 8068 0c91 F7       		.byte	0xf7
 8069 0c92 25       		.uleb128 0x25
 8070 0c93 7E       		.byte	0x7e
 8071 0c94 00       		.sleb128 0
 8072 0c95 F7       		.byte	0xf7
 8073 0c96 25       		.uleb128 0x25
 8074 0c97 1B       		.byte	0x1b
 8075 0c98 F7       		.byte	0xf7
 8076 0c99 00       		.uleb128 0
 8077 0c9a 9F       		.byte	0x9f
 8078 0c9b 00000000 		.4byte	0
 8079 0c9f 00000000 		.4byte	0
 8080              	.LLST41:
 8081 0ca3 00000000 		.4byte	.LVL132
 8082 0ca7 08000000 		.4byte	.LVL134
 8083 0cab 0100     		.2byte	0x1
 8084 0cad 50       		.byte	0x50
 8085 0cae 08000000 		.4byte	.LVL134
 8086 0cb2 0E000000 		.4byte	.LFE164
 8087 0cb6 0400     		.2byte	0x4
 8088 0cb8 F3       		.byte	0xf3
 8089 0cb9 01       		.uleb128 0x1
 8090 0cba 50       		.byte	0x50
 8091 0cbb 9F       		.byte	0x9f
 8092 0cbc 00000000 		.4byte	0
 8093 0cc0 00000000 		.4byte	0
 8094              	.LLST42:
 8095 0cc4 00000000 		.4byte	.LVL132
 8096 0cc8 04000000 		.4byte	.LVL133
 8097 0ccc 0100     		.2byte	0x1
 8098 0cce 51       		.byte	0x51
 8099 0ccf 04000000 		.4byte	.LVL133
 8100 0cd3 0E000000 		.4byte	.LFE164
 8101 0cd7 0400     		.2byte	0x4
 8102 0cd9 F3       		.byte	0xf3
 8103 0cda 01       		.uleb128 0x1
 8104 0cdb 51       		.byte	0x51
 8105 0cdc 9F       		.byte	0x9f
 8106 0cdd 00000000 		.4byte	0
 8107 0ce1 00000000 		.4byte	0
 8108              		.section	.debug_aranges,"",%progbits
 8109 0000 54010000 		.4byte	0x154
 8110 0004 0200     		.2byte	0x2
 8111 0006 00000000 		.4byte	.Ldebug_info0
 8112 000a 04       		.byte	0x4
 8113 000b 00       		.byte	0
 8114 000c 0000     		.2byte	0
 8115 000e 0000     		.2byte	0
 8116 0010 00000000 		.4byte	.LFB142
 8117 0014 4C000000 		.4byte	.LFE142-.LFB142
 8118 0018 00000000 		.4byte	.LFB143
ARM GAS  /tmp/ccmSFvTJ.s 			page 168


 8119 001c 3E000000 		.4byte	.LFE143-.LFB143
 8120 0020 00000000 		.4byte	.LFB144
 8121 0024 6C010000 		.4byte	.LFE144-.LFB144
 8122 0028 00000000 		.4byte	.LFB145
 8123 002c 26000000 		.4byte	.LFE145-.LFB145
 8124 0030 00000000 		.4byte	.LFB146
 8125 0034 26000000 		.4byte	.LFE146-.LFB146
 8126 0038 00000000 		.4byte	.LFB147
 8127 003c 0C000000 		.4byte	.LFE147-.LFB147
 8128 0040 00000000 		.4byte	.LFB148
 8129 0044 0A000000 		.4byte	.LFE148-.LFB148
 8130 0048 00000000 		.4byte	.LFB149
 8131 004c 0A000000 		.4byte	.LFE149-.LFB149
 8132 0050 00000000 		.4byte	.LFB150
 8133 0054 04000000 		.4byte	.LFE150-.LFB150
 8134 0058 00000000 		.4byte	.LFB151
 8135 005c 04000000 		.4byte	.LFE151-.LFB151
 8136 0060 00000000 		.4byte	.LFB152
 8137 0064 04000000 		.4byte	.LFE152-.LFB152
 8138 0068 00000000 		.4byte	.LFB153
 8139 006c 12000000 		.4byte	.LFE153-.LFB153
 8140 0070 00000000 		.4byte	.LFB154
 8141 0074 12000000 		.4byte	.LFE154-.LFB154
 8142 0078 00000000 		.4byte	.LFB155
 8143 007c 72000000 		.4byte	.LFE155-.LFB155
 8144 0080 00000000 		.4byte	.LFB156
 8145 0084 18000000 		.4byte	.LFE156-.LFB156
 8146 0088 00000000 		.4byte	.LFB157
 8147 008c 42000000 		.4byte	.LFE157-.LFB157
 8148 0090 00000000 		.4byte	.LFB158
 8149 0094 08000000 		.4byte	.LFE158-.LFB158
 8150 0098 00000000 		.4byte	.LFB159
 8151 009c 0A000000 		.4byte	.LFE159-.LFB159
 8152 00a0 00000000 		.4byte	.LFB160
 8153 00a4 04000000 		.4byte	.LFE160-.LFB160
 8154 00a8 00000000 		.4byte	.LFB161
 8155 00ac A2000000 		.4byte	.LFE161-.LFB161
 8156 00b0 00000000 		.4byte	.LFB162
 8157 00b4 A4000000 		.4byte	.LFE162-.LFB162
 8158 00b8 00000000 		.4byte	.LFB164
 8159 00bc 0E000000 		.4byte	.LFE164-.LFB164
 8160 00c0 00000000 		.4byte	.LFB165
 8161 00c4 22000000 		.4byte	.LFE165-.LFB165
 8162 00c8 00000000 		.4byte	.LFB166
 8163 00cc 22000000 		.4byte	.LFE166-.LFB166
 8164 00d0 00000000 		.4byte	.LFB167
 8165 00d4 1C000000 		.4byte	.LFE167-.LFB167
 8166 00d8 00000000 		.4byte	.LFB168
 8167 00dc 06000000 		.4byte	.LFE168-.LFB168
 8168 00e0 00000000 		.4byte	.LFB169
 8169 00e4 08000000 		.4byte	.LFE169-.LFB169
 8170 00e8 00000000 		.4byte	.LFB170
 8171 00ec 0A000000 		.4byte	.LFE170-.LFB170
 8172 00f0 00000000 		.4byte	.LFB171
 8173 00f4 04000000 		.4byte	.LFE171-.LFB171
 8174 00f8 00000000 		.4byte	.LFB172
 8175 00fc 04000000 		.4byte	.LFE172-.LFB172
ARM GAS  /tmp/ccmSFvTJ.s 			page 169


 8176 0100 00000000 		.4byte	.LFB173
 8177 0104 24000000 		.4byte	.LFE173-.LFB173
 8178 0108 00000000 		.4byte	.LFB174
 8179 010c 10000000 		.4byte	.LFE174-.LFB174
 8180 0110 00000000 		.4byte	.LFB175
 8181 0114 1E000000 		.4byte	.LFE175-.LFB175
 8182 0118 00000000 		.4byte	.LFB176
 8183 011c 04000000 		.4byte	.LFE176-.LFB176
 8184 0120 00000000 		.4byte	.LFB177
 8185 0124 04000000 		.4byte	.LFE177-.LFB177
 8186 0128 00000000 		.4byte	.LFB178
 8187 012c 22000000 		.4byte	.LFE178-.LFB178
 8188 0130 00000000 		.4byte	.LFB179
 8189 0134 0C000000 		.4byte	.LFE179-.LFB179
 8190 0138 00000000 		.4byte	.LFB180
 8191 013c 5E000000 		.4byte	.LFE180-.LFB180
 8192 0140 00000000 		.4byte	.LFB181
 8193 0144 10000000 		.4byte	.LFE181-.LFB181
 8194 0148 00000000 		.4byte	.LFB182
 8195 014c 2C000000 		.4byte	.LFE182-.LFB182
 8196 0150 00000000 		.4byte	0
 8197 0154 00000000 		.4byte	0
 8198              		.section	.debug_ranges,"",%progbits
 8199              	.Ldebug_ranges0:
 8200 0000 00000000 		.4byte	.LFB142
 8201 0004 4C000000 		.4byte	.LFE142
 8202 0008 00000000 		.4byte	.LFB143
 8203 000c 3E000000 		.4byte	.LFE143
 8204 0010 00000000 		.4byte	.LFB144
 8205 0014 6C010000 		.4byte	.LFE144
 8206 0018 00000000 		.4byte	.LFB145
 8207 001c 26000000 		.4byte	.LFE145
 8208 0020 00000000 		.4byte	.LFB146
 8209 0024 26000000 		.4byte	.LFE146
 8210 0028 00000000 		.4byte	.LFB147
 8211 002c 0C000000 		.4byte	.LFE147
 8212 0030 00000000 		.4byte	.LFB148
 8213 0034 0A000000 		.4byte	.LFE148
 8214 0038 00000000 		.4byte	.LFB149
 8215 003c 0A000000 		.4byte	.LFE149
 8216 0040 00000000 		.4byte	.LFB150
 8217 0044 04000000 		.4byte	.LFE150
 8218 0048 00000000 		.4byte	.LFB151
 8219 004c 04000000 		.4byte	.LFE151
 8220 0050 00000000 		.4byte	.LFB152
 8221 0054 04000000 		.4byte	.LFE152
 8222 0058 00000000 		.4byte	.LFB153
 8223 005c 12000000 		.4byte	.LFE153
 8224 0060 00000000 		.4byte	.LFB154
 8225 0064 12000000 		.4byte	.LFE154
 8226 0068 00000000 		.4byte	.LFB155
 8227 006c 72000000 		.4byte	.LFE155
 8228 0070 00000000 		.4byte	.LFB156
 8229 0074 18000000 		.4byte	.LFE156
 8230 0078 00000000 		.4byte	.LFB157
 8231 007c 42000000 		.4byte	.LFE157
 8232 0080 00000000 		.4byte	.LFB158
ARM GAS  /tmp/ccmSFvTJ.s 			page 170


 8233 0084 08000000 		.4byte	.LFE158
 8234 0088 00000000 		.4byte	.LFB159
 8235 008c 0A000000 		.4byte	.LFE159
 8236 0090 00000000 		.4byte	.LFB160
 8237 0094 04000000 		.4byte	.LFE160
 8238 0098 00000000 		.4byte	.LFB161
 8239 009c A2000000 		.4byte	.LFE161
 8240 00a0 00000000 		.4byte	.LFB162
 8241 00a4 A4000000 		.4byte	.LFE162
 8242 00a8 00000000 		.4byte	.LFB164
 8243 00ac 0E000000 		.4byte	.LFE164
 8244 00b0 00000000 		.4byte	.LFB165
 8245 00b4 22000000 		.4byte	.LFE165
 8246 00b8 00000000 		.4byte	.LFB166
 8247 00bc 22000000 		.4byte	.LFE166
 8248 00c0 00000000 		.4byte	.LFB167
 8249 00c4 1C000000 		.4byte	.LFE167
 8250 00c8 00000000 		.4byte	.LFB168
 8251 00cc 06000000 		.4byte	.LFE168
 8252 00d0 00000000 		.4byte	.LFB169
 8253 00d4 08000000 		.4byte	.LFE169
 8254 00d8 00000000 		.4byte	.LFB170
 8255 00dc 0A000000 		.4byte	.LFE170
 8256 00e0 00000000 		.4byte	.LFB171
 8257 00e4 04000000 		.4byte	.LFE171
 8258 00e8 00000000 		.4byte	.LFB172
 8259 00ec 04000000 		.4byte	.LFE172
 8260 00f0 00000000 		.4byte	.LFB173
 8261 00f4 24000000 		.4byte	.LFE173
 8262 00f8 00000000 		.4byte	.LFB174
 8263 00fc 10000000 		.4byte	.LFE174
 8264 0100 00000000 		.4byte	.LFB175
 8265 0104 1E000000 		.4byte	.LFE175
 8266 0108 00000000 		.4byte	.LFB176
 8267 010c 04000000 		.4byte	.LFE176
 8268 0110 00000000 		.4byte	.LFB177
 8269 0114 04000000 		.4byte	.LFE177
 8270 0118 00000000 		.4byte	.LFB178
 8271 011c 22000000 		.4byte	.LFE178
 8272 0120 00000000 		.4byte	.LFB179
 8273 0124 0C000000 		.4byte	.LFE179
 8274 0128 00000000 		.4byte	.LFB180
 8275 012c 5E000000 		.4byte	.LFE180
 8276 0130 00000000 		.4byte	.LFB181
 8277 0134 10000000 		.4byte	.LFE181
 8278 0138 00000000 		.4byte	.LFB182
 8279 013c 2C000000 		.4byte	.LFE182
 8280 0140 00000000 		.4byte	0
 8281 0144 00000000 		.4byte	0
 8282              		.section	.debug_line,"",%progbits
 8283              	.Ldebug_line0:
 8284 0000 FD060000 		.section	.debug_str,"MS",%progbits,1
 8284      02005E02 
 8284      00000201 
 8284      FB0E0D00 
 8284      01010101 
 8285              	.LASF274:
ARM GAS  /tmp/ccmSFvTJ.s 			page 171


 8286 0000 756C5F75 		.ascii	"ul_update_period\000"
 8286      70646174 
 8286      655F7065 
 8286      72696F64 
 8286      00
 8287              	.LASF105:
 8288 0011 5F666C6F 		.ascii	"_flock_t\000"
 8288      636B5F74 
 8288      00
 8289              	.LASF283:
 8290 001a 756C5F68 		.ascii	"ul_hw_status\000"
 8290      775F7374 
 8290      61747573 
 8290      00
 8291              	.LASF224:
 8292 0027 50574D5F 		.ascii	"PWM_STEPPER_MOTOR_CH_2_3\000"
 8292      53544550 
 8292      5045525F 
 8292      4D4F544F 
 8292      525F4348 
 8293              	.LASF240:
 8294 0040 50574D5F 		.ascii	"PWM_CMP_MATCH\000"
 8294      434D505F 
 8294      4D415443 
 8294      4800
 8295              	.LASF37:
 8296 004e 50574D5F 		.ascii	"PWM_IDR1\000"
 8296      49445231 
 8296      00
 8297              	.LASF46:
 8298 0057 50574D5F 		.ascii	"PWM_IDR2\000"
 8298      49445232 
 8298      00
 8299              	.LASF286:
 8300 0060 70776D5F 		.ascii	"pwm_protect_t\000"
 8300      70726F74 
 8300      6563745F 
 8300      7400
 8301              	.LASF87:
 8302 006e 50574D5F 		.ascii	"PWM_LEBR2\000"
 8302      4C454252 
 8302      3200
 8303              	.LASF92:
 8304 0078 50574D5F 		.ascii	"PWM_LEBR3\000"
 8304      4C454252 
 8304      3300
 8305              	.LASF95:
 8306 0082 50574D5F 		.ascii	"PWM_LEBR4\000"
 8306      4C454252 
 8306      3400
 8307              	.LASF370:
 8308 008c 70776D5F 		.ascii	"pwm_channel_disable\000"
 8308      6368616E 
 8308      6E656C5F 
 8308      64697361 
 8308      626C6500 
 8309              	.LASF27:
ARM GAS  /tmp/ccmSFvTJ.s 			page 172


 8310 00a0 50574D5F 		.ascii	"PWM_CMPV\000"
 8310      434D5056 
 8310      00
 8311              	.LASF172:
 8312 00a9 63686172 		.ascii	"char\000"
 8312      00
 8313              	.LASF122:
 8314 00ae 5F6F6E5F 		.ascii	"_on_exit_args\000"
 8314      65786974 
 8314      5F617267 
 8314      7300
 8315              	.LASF52:
 8316 00bc 50574D5F 		.ascii	"PWM_OSC\000"
 8316      4F534300 
 8317              	.LASF384:
 8318 00c4 756C5F64 		.ascii	"ul_divisors\000"
 8318      69766973 
 8318      6F727300 
 8319              	.LASF250:
 8320 00d0 50574D5F 		.ascii	"PWM_LEADING_EDGE2_MODE_LINC\000"
 8320      4C454144 
 8320      494E475F 
 8320      45444745 
 8320      325F4D4F 
 8321              	.LASF56:
 8322 00ec 50574D5F 		.ascii	"PWM_FSR\000"
 8322      46535200 
 8323              	.LASF66:
 8324 00f4 50574D5F 		.ascii	"PWM_SMMR\000"
 8324      534D4D52 
 8324      00
 8325              	.LASF187:
 8326 00fd 5F723438 		.ascii	"_r48\000"
 8326      00
 8327              	.LASF307:
 8328 0102 705F7077 		.ascii	"p_pwm\000"
 8328      6D00
 8329              	.LASF75:
 8330 0108 50574D5F 		.ascii	"PWM_CH_NUM\000"
 8330      43485F4E 
 8330      554D00
 8331              	.LASF116:
 8332 0113 5F5F746D 		.ascii	"__tm_mday\000"
 8332      5F6D6461 
 8332      7900
 8333              	.LASF192:
 8334 011d 5F736967 		.ascii	"_signal_buf\000"
 8334      6E616C5F 
 8334      62756600 
 8335              	.LASF306:
 8336 0129 70776D5F 		.ascii	"pwm_channel_t\000"
 8336      6368616E 
 8336      6E656C5F 
 8336      7400
 8337              	.LASF321:
 8338 0137 70776D5F 		.ascii	"pwm_get_interrupt_mask\000"
 8338      6765745F 
ARM GAS  /tmp/ccmSFvTJ.s 			page 173


 8338      696E7465 
 8338      72727570 
 8338      745F6D61 
 8339              	.LASF0:
 8340 014e 756E7369 		.ascii	"unsigned int\000"
 8340      676E6564 
 8340      20696E74 
 8340      00
 8341              	.LASF225:
 8342 015b 70776D5F 		.ascii	"pwm_stepper_motor_pair_t\000"
 8342      73746570 
 8342      7065725F 
 8342      6D6F746F 
 8342      725F7061 
 8343              	.LASF219:
 8344 0174 756C5F63 		.ascii	"ul_clka\000"
 8344      6C6B6100 
 8345              	.LASF220:
 8346 017c 756C5F63 		.ascii	"ul_clkb\000"
 8346      6C6B6200 
 8347              	.LASF259:
 8348 0184 50574D5F 		.ascii	"PWM_LEADING_EDGE4_MODE_LDEC\000"
 8348      4C454144 
 8348      494E475F 
 8348      45444745 
 8348      345F4D4F 
 8349              	.LASF136:
 8350 01a0 5F6C6266 		.ascii	"_lbfsize\000"
 8350      73697A65 
 8350      00
 8351              	.LASF134:
 8352 01a9 5F666C61 		.ascii	"_flags\000"
 8352      677300
 8353              	.LASF316:
 8354 01b0 70776D5F 		.ascii	"pwm_stepper_motor_init\000"
 8354      73746570 
 8354      7065725F 
 8354      6D6F746F 
 8354      725F696E 
 8355              	.LASF6:
 8356 01c7 5F5F696E 		.ascii	"__int32_t\000"
 8356      7433325F 
 8356      7400
 8357              	.LASF310:
 8358 01d1 70776D5F 		.ascii	"pwm_set_ext_trigger_mode\000"
 8358      7365745F 
 8358      6578745F 
 8358      74726967 
 8358      6765725F 
 8359              	.LASF151:
 8360 01ea 5F657272 		.ascii	"_errno\000"
 8360      6E6F00
 8361              	.LASF242:
 8362 01f1 70776D5F 		.ascii	"pwm_cmp_interrupt_t\000"
 8362      636D705F 
 8362      696E7465 
 8362      72727570 
ARM GAS  /tmp/ccmSFvTJ.s 			page 174


 8362      745F7400 
 8363              	.LASF354:
 8364 0205 70776D5F 		.ascii	"pwm_channel_update_output\000"
 8364      6368616E 
 8364      6E656C5F 
 8364      75706461 
 8364      74655F6F 
 8365              	.LASF149:
 8366 021f 5F666C61 		.ascii	"_flags2\000"
 8366      67733200 
 8367              	.LASF270:
 8368 0227 756C5F76 		.ascii	"ul_value\000"
 8368      616C7565 
 8368      00
 8369              	.LASF3:
 8370 0230 73686F72 		.ascii	"short int\000"
 8370      7420696E 
 8370      7400
 8371              	.LASF148:
 8372 023a 5F6D6273 		.ascii	"_mbstate\000"
 8372      74617465 
 8372      00
 8373              	.LASF386:
 8374 0243 756C5F64 		.ascii	"ul_div\000"
 8374      697600
 8375              	.LASF360:
 8376 024a 70776D68 		.ascii	"pwmh\000"
 8376      00
 8377              	.LASF315:
 8378 024f 70776D5F 		.ascii	"pwm_channel_update_spread\000"
 8378      6368616E 
 8378      6E656C5F 
 8378      75706461 
 8378      74655F73 
 8379              	.LASF138:
 8380 0269 5F726561 		.ascii	"_read\000"
 8380      6400
 8381              	.LASF348:
 8382 026f 6661756C 		.ascii	"fault_status_reg\000"
 8382      745F7374 
 8382      61747573 
 8382      5F726567 
 8382      00
 8383              	.LASF106:
 8384 0280 5F5F554C 		.ascii	"__ULong\000"
 8384      6F6E6700 
 8385              	.LASF337:
 8386 0288 6D6F6465 		.ascii	"mode\000"
 8386      00
 8387              	.LASF194:
 8388 028d 5F6D6272 		.ascii	"_mbrlen_state\000"
 8388      6C656E5F 
 8388      73746174 
 8388      6500
 8389              	.LASF326:
 8390 029b 70776D5F 		.ascii	"pwm_disable_protect\000"
 8390      64697361 
ARM GAS  /tmp/ccmSFvTJ.s 			page 175


 8390      626C655F 
 8390      70726F74 
 8390      65637400 
 8391              	.LASF153:
 8392 02af 5F737464 		.ascii	"_stdout\000"
 8392      6F757400 
 8393              	.LASF40:
 8394 02b7 50574D5F 		.ascii	"PWM_SCM\000"
 8394      53434D00 
 8395              	.LASF98:
 8396 02bf 5F66706F 		.ascii	"_fpos_t\000"
 8396      735F7400 
 8397              	.LASF284:
 8398 02c7 756C5F73 		.ascii	"ul_sw_status\000"
 8398      775F7374 
 8398      61747573 
 8398      00
 8399              	.LASF129:
 8400 02d4 5F666E73 		.ascii	"_fns\000"
 8400      00
 8401              	.LASF137:
 8402 02d9 5F636F6F 		.ascii	"_cookie\000"
 8402      6B696500 
 8403              	.LASF253:
 8404 02e1 50574D5F 		.ascii	"PWM_LEADING_EDGE2_MODE_HDEC\000"
 8404      4C454144 
 8404      494E475F 
 8404      45444745 
 8404      325F4D4F 
 8405              	.LASF383:
 8406 02fd 756C5F66 		.ascii	"ul_frequency\000"
 8406      72657175 
 8406      656E6379 
 8406      00
 8407              	.LASF206:
 8408 030a 675F696E 		.ascii	"g_interrupt_enabled\000"
 8408      74657272 
 8408      7570745F 
 8408      656E6162 
 8408      6C656400 
 8409              	.LASF111:
 8410 031e 5F426967 		.ascii	"_Bigint\000"
 8410      696E7400 
 8411              	.LASF215:
 8412 0326 50574D5F 		.ascii	"PWM_LOW\000"
 8412      4C4F5700 
 8413              	.LASF31:
 8414 032e 50776D43 		.ascii	"PwmCmp\000"
 8414      6D7000
 8415              	.LASF119:
 8416 0335 5F5F746D 		.ascii	"__tm_wday\000"
 8416      5F776461 
 8416      7900
 8417              	.LASF161:
 8418 033f 5F726573 		.ascii	"_result\000"
 8418      756C7400 
 8419              	.LASF246:
ARM GAS  /tmp/ccmSFvTJ.s 			page 176


 8420 0347 50574D5F 		.ascii	"PWM_LEADING_EDGE1_MODE_LINC\000"
 8420      4C454144 
 8420      494E475F 
 8420      45444745 
 8420      315F4D4F 
 8421              	.LASF173:
 8422 0363 5F5F4649 		.ascii	"__FILE\000"
 8422      4C4500
 8423              	.LASF14:
 8424 036a 75696E74 		.ascii	"uint32_t\000"
 8424      33325F74 
 8424      00
 8425              	.LASF325:
 8426 0373 77707372 		.ascii	"wpsr\000"
 8426      00
 8427              	.LASF115:
 8428 0378 5F5F746D 		.ascii	"__tm_hour\000"
 8428      5F686F75 
 8428      7200
 8429              	.LASF29:
 8430 0382 50574D5F 		.ascii	"PWM_CMPM\000"
 8430      434D504D 
 8430      00
 8431              	.LASF328:
 8432 038b 70776D5F 		.ascii	"pwm_enable_protect\000"
 8432      656E6162 
 8432      6C655F70 
 8432      726F7465 
 8432      637400
 8433              	.LASF77:
 8434 039e 50574D5F 		.ascii	"PWM_CMUPD0\000"
 8434      434D5550 
 8434      443000
 8435              	.LASF79:
 8436 03a9 50574D5F 		.ascii	"PWM_CMUPD1\000"
 8436      434D5550 
 8436      443100
 8437              	.LASF84:
 8438 03b4 50574D5F 		.ascii	"PWM_CMUPD2\000"
 8438      434D5550 
 8438      443200
 8439              	.LASF89:
 8440 03bf 50574D5F 		.ascii	"PWM_CMUPD3\000"
 8440      434D5550 
 8440      443300
 8441              	.LASF277:
 8442 03ca 70776D5F 		.ascii	"pwm_cmp_t\000"
 8442      636D705F 
 8442      7400
 8443              	.LASF222:
 8444 03d4 70776D5F 		.ascii	"pwm_clock_t\000"
 8444      636C6F63 
 8444      6B5F7400 
 8445              	.LASF102:
 8446 03e0 5F5F636F 		.ascii	"__count\000"
 8446      756E7400 
 8447              	.LASF223:
ARM GAS  /tmp/ccmSFvTJ.s 			page 177


 8448 03e8 50574D5F 		.ascii	"PWM_STEPPER_MOTOR_CH_0_1\000"
 8448      53544550 
 8448      5045525F 
 8448      4D4F544F 
 8448      525F4348 
 8449              	.LASF210:
 8450 0401 666C6F61 		.ascii	"float\000"
 8450      7400
 8451              	.LASF313:
 8452 0407 756C5F6D 		.ascii	"ul_mask\000"
 8452      61736B00 
 8453              	.LASF114:
 8454 040f 5F5F746D 		.ascii	"__tm_min\000"
 8454      5F6D696E 
 8454      00
 8455              	.LASF203:
 8456 0418 5F696D70 		.ascii	"_impure_ptr\000"
 8456      7572655F 
 8456      70747200 
 8457              	.LASF372:
 8458 0424 70776D5F 		.ascii	"pwm_channel_enable\000"
 8458      6368616E 
 8458      6E656C5F 
 8458      656E6162 
 8458      6C6500
 8459              	.LASF200:
 8460 0437 5F6E6578 		.ascii	"_nextf\000"
 8460      746600
 8461              	.LASF255:
 8462 043e 50574D5F 		.ascii	"PWM_LEADING_EDGE3_MODE_LDEC\000"
 8462      4C454144 
 8462      494E475F 
 8462      45444745 
 8462      335F4D4F 
 8463              	.LASF164:
 8464 045a 5F667265 		.ascii	"_freelist\000"
 8464      656C6973 
 8464      7400
 8465              	.LASF196:
 8466 0464 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 8466      72746F77 
 8466      63735F73 
 8466      74617465 
 8466      00
 8467              	.LASF382:
 8468 0475 72657375 		.ascii	"result\000"
 8468      6C7400
 8469              	.LASF234:
 8470 047c 50574D5F 		.ascii	"PWM_FAULT_MAINOSC\000"
 8470      4641554C 
 8470      545F4D41 
 8470      494E4F53 
 8470      4300
 8471              	.LASF273:
 8472 048e 756C5F70 		.ascii	"ul_period\000"
 8472      6572696F 
 8472      6400
ARM GAS  /tmp/ccmSFvTJ.s 			page 178


 8473              	.LASF11:
 8474 0498 6C6F6E67 		.ascii	"long long unsigned int\000"
 8474      206C6F6E 
 8474      6720756E 
 8474      7369676E 
 8474      65642069 
 8475              	.LASF183:
 8476 04af 5F617363 		.ascii	"_asctime_buf\000"
 8476      74696D65 
 8476      5F627566 
 8476      00
 8477              	.LASF177:
 8478 04bc 5F72616E 		.ascii	"_rand48\000"
 8478      64343800 
 8479              	.LASF35:
 8480 04c4 50574D5F 		.ascii	"PWM_SR\000"
 8480      535200
 8481              	.LASF133:
 8482 04cb 5F5F7346 		.ascii	"__sFILE\000"
 8482      494C4500 
 8483              	.LASF110:
 8484 04d3 5F776473 		.ascii	"_wds\000"
 8484      00
 8485              	.LASF344:
 8486 04d8 705F636D 		.ascii	"p_cmp\000"
 8486      7000
 8487              	.LASF275:
 8488 04de 625F7075 		.ascii	"b_pulse_on_line_0\000"
 8488      6C73655F 
 8488      6F6E5F6C 
 8488      696E655F 
 8488      3000
 8489              	.LASF24:
 8490 04f0 50574D5F 		.ascii	"PWM_DT\000"
 8490      445400
 8491              	.LASF5:
 8492 04f7 5F5F7569 		.ascii	"__uint16_t\000"
 8492      6E743136 
 8492      5F7400
 8493              	.LASF373:
 8494 0502 70776D5F 		.ascii	"pwm_channel_get_counter\000"
 8494      6368616E 
 8494      6E656C5F 
 8494      6765745F 
 8494      636F756E 
 8495              	.LASF391:
 8496 051a 70776D5F 		.ascii	"pwm_cmp_get_period_counter\000"
 8496      636D705F 
 8496      6765745F 
 8496      70657269 
 8496      6F645F63 
 8497              	.LASF233:
 8498 0535 50574D5F 		.ascii	"PWM_FAULT_PWMFI1\000"
 8498      4641554C 
 8498      545F5057 
 8498      4D464931 
 8498      00
ARM GAS  /tmp/ccmSFvTJ.s 			page 179


 8499              	.LASF213:
 8500 0546 50574D5F 		.ascii	"PWM_ALIGN_CENTER\000"
 8500      414C4947 
 8500      4E5F4345 
 8500      4E544552 
 8500      00
 8501              	.LASF142:
 8502 0557 5F756275 		.ascii	"_ubuf\000"
 8502      6600
 8503              	.LASF44:
 8504 055d 50574D5F 		.ascii	"PWM_SCUPUPD\000"
 8504      53435550 
 8504      55504400 
 8505              	.LASF221:
 8506 0569 756C5F6D 		.ascii	"ul_mck\000"
 8506      636B00
 8507              	.LASF156:
 8508 0570 5F656D65 		.ascii	"_emergency\000"
 8508      7267656E 
 8508      637900
 8509              	.LASF305:
 8510 057b 756C5F70 		.ascii	"ul_ppm_mode\000"
 8510      706D5F6D 
 8510      6F646500 
 8511              	.LASF58:
 8512 0587 50574D5F 		.ascii	"PWM_FPV1\000"
 8512      46505631 
 8512      00
 8513              	.LASF68:
 8514 0590 50574D5F 		.ascii	"PWM_FPV2\000"
 8514      46505632 
 8514      00
 8515              	.LASF249:
 8516 0599 50574D5F 		.ascii	"PWM_LEADING_EDGE1_MODE_HDEC\000"
 8516      4C454144 
 8516      494E475F 
 8516      45444745 
 8516      315F4D4F 
 8517              	.LASF375:
 8518 05b5 70776D5F 		.ascii	"pwm_channel_update_period\000"
 8518      6368616E 
 8518      6E656C5F 
 8518      75706461 
 8518      74655F70 
 8519              	.LASF33:
 8520 05cf 50574D5F 		.ascii	"PWM_ENA\000"
 8520      454E4100 
 8521              	.LASF209:
 8522 05d7 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 8522      6972715F 
 8522      70726576 
 8522      5F696E74 
 8522      65727275 
 8523              	.LASF319:
 8524 05f4 625F646F 		.ascii	"b_down\000"
 8524      776E00
 8525              	.LASF113:
ARM GAS  /tmp/ccmSFvTJ.s 			page 180


 8526 05fb 5F5F746D 		.ascii	"__tm_sec\000"
 8526      5F736563 
 8526      00
 8527              	.LASF218:
 8528 0604 70776D5F 		.ascii	"pwm_level_t\000"
 8528      6C657665 
 8528      6C5F7400 
 8529              	.LASF21:
 8530 0610 50574D5F 		.ascii	"PWM_CPRD\000"
 8530      43505244 
 8530      00
 8531              	.LASF205:
 8532 0619 7375626F 		.ascii	"suboptarg\000"
 8532      70746172 
 8532      6700
 8533              	.LASF120:
 8534 0623 5F5F746D 		.ascii	"__tm_yday\000"
 8534      5F796461 
 8534      7900
 8535              	.LASF103:
 8536 062d 5F5F7661 		.ascii	"__value\000"
 8536      6C756500 
 8537              	.LASF155:
 8538 0635 5F696E63 		.ascii	"_inc\000"
 8538      00
 8539              	.LASF207:
 8540 063a 5F426F6F 		.ascii	"_Bool\000"
 8540      6C00
 8541              	.LASF104:
 8542 0640 5F6D6273 		.ascii	"_mbstate_t\000"
 8542      74617465 
 8542      5F7400
 8543              	.LASF374:
 8544 064b 70776D5F 		.ascii	"pwm_channel_update_duty\000"
 8544      6368616E 
 8544      6E656C5F 
 8544      75706461 
 8544      74655F64 
 8545              	.LASF356:
 8546 0663 625F7379 		.ascii	"b_sync\000"
 8546      6E6300
 8547              	.LASF323:
 8548 066a 70776D5F 		.ascii	"pwm_get_protect_status\000"
 8548      6765745F 
 8548      70726F74 
 8548      6563745F 
 8548      73746174 
 8549              	.LASF237:
 8550 0681 50574D5F 		.ascii	"PWM_FAULT_TIMER_0\000"
 8550      4641554C 
 8550      545F5449 
 8550      4D45525F 
 8550      3000
 8551              	.LASF238:
 8552 0693 50574D5F 		.ascii	"PWM_FAULT_TIMER_1\000"
 8552      4641554C 
 8552      545F5449 
ARM GAS  /tmp/ccmSFvTJ.s 			page 181


 8552      4D45525F 
 8552      3100
 8553              	.LASF107:
 8554 06a5 5F6E6578 		.ascii	"_next\000"
 8554      7400
 8555              	.LASF260:
 8556 06ab 50574D5F 		.ascii	"PWM_LEADING_EDGE4_MODE_HINC\000"
 8556      4C454144 
 8556      494E475F 
 8556      45444745 
 8556      345F4D4F 
 8557              	.LASF303:
 8558 06c7 756C5F6C 		.ascii	"ul_leading_edge_delay\000"
 8558      65616469 
 8558      6E675F65 
 8558      6467655F 
 8558      64656C61 
 8559              	.LASF276:
 8560 06dd 625F7075 		.ascii	"b_pulse_on_line_1\000"
 8560      6C73655F 
 8560      6F6E5F6C 
 8560      696E655F 
 8560      3100
 8561              	.LASF226:
 8562 06ef 50574D5F 		.ascii	"PWM_SYNC_UPDATE_MODE_0\000"
 8562      53594E43 
 8562      5F555044 
 8562      4154455F 
 8562      4D4F4445 
 8563              	.LASF227:
 8564 0706 50574D5F 		.ascii	"PWM_SYNC_UPDATE_MODE_1\000"
 8564      53594E43 
 8564      5F555044 
 8564      4154455F 
 8564      4D4F4445 
 8565              	.LASF228:
 8566 071d 50574D5F 		.ascii	"PWM_SYNC_UPDATE_MODE_2\000"
 8566      53594E43 
 8566      5F555044 
 8566      4154455F 
 8566      4D4F4445 
 8567              	.LASF318:
 8568 0734 625F656E 		.ascii	"b_enable_gray\000"
 8568      61626C65 
 8568      5F677261 
 8568      7900
 8569              	.LASF376:
 8570 0742 70776D5F 		.ascii	"pwm_channel_init\000"
 8570      6368616E 
 8570      6E656C5F 
 8570      696E6974 
 8570      00
 8571              	.LASF49:
 8572 0753 50574D5F 		.ascii	"PWM_OOV\000"
 8572      4F4F5600 
 8573              	.LASF239:
 8574 075b 70776D5F 		.ascii	"pwm_fault_id_t\000"
ARM GAS  /tmp/ccmSFvTJ.s 			page 182


 8574      6661756C 
 8574      745F6964 
 8574      5F7400
 8575              	.LASF346:
 8576 076a 70776D5F 		.ascii	"pwm_fault_clear_status\000"
 8576      6661756C 
 8576      745F636C 
 8576      6561725F 
 8576      73746174 
 8577              	.LASF381:
 8578 0781 636C6F63 		.ascii	"clock\000"
 8578      6B00
 8579              	.LASF334:
 8580 0787 70776D5F 		.ascii	"pwm_sync_change_period\000"
 8580      73796E63 
 8580      5F636861 
 8580      6E67655F 
 8580      70657269 
 8581              	.LASF163:
 8582 079e 5F703573 		.ascii	"_p5s\000"
 8582      00
 8583              	.LASF10:
 8584 07a3 6C6F6E67 		.ascii	"long long int\000"
 8584      206C6F6E 
 8584      6720696E 
 8584      7400
 8585              	.LASF32:
 8586 07b1 50574D5F 		.ascii	"PWM_CLK\000"
 8586      434C4B00 
 8587              	.LASF198:
 8588 07b9 5F776373 		.ascii	"_wcsrtombs_state\000"
 8588      72746F6D 
 8588      62735F73 
 8588      74617465 
 8588      00
 8589              	.LASF188:
 8590 07ca 5F6D626C 		.ascii	"_mblen_state\000"
 8590      656E5F73 
 8590      74617465 
 8590      00
 8591              	.LASF320:
 8592 07d7 6D6F746F 		.ascii	"motor\000"
 8592      7200
 8593              	.LASF363:
 8594 07dd 70776D5F 		.ascii	"pwm_channel_disable_interrupt\000"
 8594      6368616E 
 8594      6E656C5F 
 8594      64697361 
 8594      626C655F 
 8595              	.LASF17:
 8596 07fb 53797374 		.ascii	"SystemCoreClock\000"
 8596      656D436F 
 8596      7265436C 
 8596      6F636B00 
 8597              	.LASF357:
 8598 080b 63685F6E 		.ascii	"ch_num\000"
 8598      756D00
ARM GAS  /tmp/ccmSFvTJ.s 			page 183


 8599              	.LASF36:
 8600 0812 50574D5F 		.ascii	"PWM_IER1\000"
 8600      49455231 
 8600      00
 8601              	.LASF45:
 8602 081b 50574D5F 		.ascii	"PWM_IER2\000"
 8602      49455232 
 8602      00
 8603              	.LASF169:
 8604 0824 5F736967 		.ascii	"_sig_func\000"
 8604      5F66756E 
 8604      6300
 8605              	.LASF195:
 8606 082e 5F6D6272 		.ascii	"_mbrtowc_state\000"
 8606      746F7763 
 8606      5F737461 
 8606      746500
 8607              	.LASF168:
 8608 083d 5F617465 		.ascii	"_atexit0\000"
 8608      78697430 
 8608      00
 8609              	.LASF378:
 8610 0846 6661756C 		.ascii	"fault_enable_reg\000"
 8610      745F656E 
 8610      61626C65 
 8610      5F726567 
 8610      00
 8611              	.LASF389:
 8612 0857 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 8612      652F746F 
 8612      72626A6F 
 8612      726E2F65 
 8612      636C6970 
 8613 088a 00       		.ascii	"\000"
 8614              	.LASF64:
 8615 088b 50574D5F 		.ascii	"PWM_SSPUP\000"
 8615      53535055 
 8615      5000
 8616              	.LASF304:
 8617 0895 6C656164 		.ascii	"leading_edge_blanking_mode\000"
 8617      696E675F 
 8617      65646765 
 8617      5F626C61 
 8617      6E6B696E 
 8618              	.LASF59:
 8619 08b0 50574D5F 		.ascii	"PWM_FPE\000"
 8619      46504500 
 8620              	.LASF162:
 8621 08b8 5F726573 		.ascii	"_result_k\000"
 8621      756C745F 
 8621      6B00
 8622              	.LASF351:
 8623 08c2 705F6661 		.ascii	"p_fault\000"
 8623      756C7400 
 8624              	.LASF336:
 8625 08ca 70776D5F 		.ascii	"pwm_sync_init\000"
 8625      73796E63 
ARM GAS  /tmp/ccmSFvTJ.s 			page 184


 8625      5F696E69 
 8625      7400
 8626              	.LASF329:
 8627 08d8 625F7377 		.ascii	"b_sw\000"
 8627      00
 8628              	.LASF100:
 8629 08dd 5F5F7763 		.ascii	"__wch\000"
 8629      6800
 8630              	.LASF26:
 8631 08e3 50776D43 		.ascii	"PwmCh_num\000"
 8631      685F6E75 
 8631      6D00
 8632              	.LASF279:
 8633 08ed 706F6C61 		.ascii	"polarity\000"
 8633      72697479 
 8633      00
 8634              	.LASF141:
 8635 08f6 5F636C6F 		.ascii	"_close\000"
 8635      736500
 8636              	.LASF385:
 8637 08fd 756C5F70 		.ascii	"ul_pre\000"
 8637      726500
 8638              	.LASF159:
 8639 0904 5F5F7364 		.ascii	"__sdidinit\000"
 8639      6964696E 
 8639      697400
 8640              	.LASF73:
 8641 090f 50574D5F 		.ascii	"PWM_CMP\000"
 8641      434D5000 
 8642              	.LASF18:
 8643 0917 50574D5F 		.ascii	"PWM_CMR\000"
 8643      434D5200 
 8644              	.LASF61:
 8645 091f 50574D5F 		.ascii	"PWM_ELMR\000"
 8645      454C4D52 
 8645      00
 8646              	.LASF251:
 8647 0928 50574D5F 		.ascii	"PWM_LEADING_EDGE2_MODE_LDEC\000"
 8647      4C454144 
 8647      494E475F 
 8647      45444745 
 8647      325F4D4F 
 8648              	.LASF55:
 8649 0944 50574D5F 		.ascii	"PWM_FMR\000"
 8649      464D5200 
 8650              	.LASF152:
 8651 094c 5F737464 		.ascii	"_stdin\000"
 8651      696E00
 8652              	.LASF265:
 8653 0953 6F766572 		.ascii	"override_level_pwmh\000"
 8653      72696465 
 8653      5F6C6576 
 8653      656C5F70 
 8653      776D6800 
 8654              	.LASF392:
 8655 0967 70776D5F 		.ascii	"pwm_clocks_generate\000"
 8655      636C6F63 
ARM GAS  /tmp/ccmSFvTJ.s 			page 185


 8655      6B735F67 
 8655      656E6572 
 8655      61746500 
 8656              	.LASF266:
 8657 097b 6F766572 		.ascii	"override_level_pwml\000"
 8657      72696465 
 8657      5F6C6576 
 8657      656C5F70 
 8657      776D6C00 
 8658              	.LASF271:
 8659 098f 625F6973 		.ascii	"b_is_decrementing\000"
 8659      5F646563 
 8659      72656D65 
 8659      6E74696E 
 8659      6700
 8660              	.LASF256:
 8661 09a1 50574D5F 		.ascii	"PWM_LEADING_EDGE3_MODE_HINC\000"
 8661      4C454144 
 8661      494E475F 
 8661      45444745 
 8661      335F4D4F 
 8662              	.LASF352:
 8663 09bd 6661756C 		.ascii	"fault_reg\000"
 8663      745F7265 
 8663      6700
 8664              	.LASF131:
 8665 09c7 5F626173 		.ascii	"_base\000"
 8665      6500
 8666              	.LASF330:
 8667 09cd 70776D5F 		.ascii	"pwm_sync_disable_interrupt\000"
 8667      73796E63 
 8667      5F646973 
 8667      61626C65 
 8667      5F696E74 
 8668              	.LASF333:
 8669 09e8 70776D5F 		.ascii	"pwm_sync_get_period_counter\000"
 8669      73796E63 
 8669      5F676574 
 8669      5F706572 
 8669      696F645F 
 8670              	.LASF180:
 8671 0a04 5F616464 		.ascii	"_add\000"
 8671      00
 8672              	.LASF368:
 8673 0a09 70776D5F 		.ascii	"pwm_channel_get_interrupt_status\000"
 8673      6368616E 
 8673      6E656C5F 
 8673      6765745F 
 8673      696E7465 
 8674              	.LASF288:
 8675 0a2a 756C5F70 		.ascii	"ul_prescaler\000"
 8675      72657363 
 8675      616C6572 
 8675      00
 8676              	.LASF197:
 8677 0a37 5F776372 		.ascii	"_wcrtomb_state\000"
 8677      746F6D62 
ARM GAS  /tmp/ccmSFvTJ.s 			page 186


 8677      5F737461 
 8677      746500
 8678              	.LASF267:
 8679 0a46 70776D5F 		.ascii	"pwm_output_t\000"
 8679      6F757470 
 8679      75745F74 
 8679      00
 8680              	.LASF292:
 8681 0a53 625F6465 		.ascii	"b_deadtime_generator\000"
 8681      61647469 
 8681      6D655F67 
 8681      656E6572 
 8681      61746F72 
 8682              	.LASF135:
 8683 0a68 5F66696C 		.ascii	"_file\000"
 8683      6500
 8684              	.LASF281:
 8685 0a6e 625F6669 		.ascii	"b_filtered\000"
 8685      6C746572 
 8685      656400
 8686              	.LASF390:
 8687 0a79 70776D5F 		.ascii	"pwm_cmp_get_update_counter\000"
 8687      636D705F 
 8687      6765745F 
 8687      75706461 
 8687      74655F63 
 8688              	.LASF160:
 8689 0a94 5F5F636C 		.ascii	"__cleanup\000"
 8689      65616E75 
 8689      7000
 8690              	.LASF379:
 8691 0a9e 70776D5F 		.ascii	"pwm_init\000"
 8691      696E6974 
 8691      00
 8692              	.LASF262:
 8693 0aa7 70776D5F 		.ascii	"pwm_leading_edge_blanking_mode_t\000"
 8693      6C656164 
 8693      696E675F 
 8693      65646765 
 8693      5F626C61 
 8694              	.LASF345:
 8695 0ac8 70776D5F 		.ascii	"pwm_cmp_init\000"
 8695      636D705F 
 8695      696E6974 
 8695      00
 8696              	.LASF296:
 8697 0ad5 75735F64 		.ascii	"us_deadtime_pwml\000"
 8697      65616474 
 8697      696D655F 
 8697      70776D6C 
 8697      00
 8698              	.LASF60:
 8699 0ae6 52657365 		.ascii	"Reserved1\000"
 8699      72766564 
 8699      3100
 8700              	.LASF62:
 8701 0af0 52657365 		.ascii	"Reserved2\000"
ARM GAS  /tmp/ccmSFvTJ.s 			page 187


 8701      72766564 
 8701      3200
 8702              	.LASF65:
 8703 0afa 52657365 		.ascii	"Reserved3\000"
 8703      72766564 
 8703      3300
 8704              	.LASF67:
 8705 0b04 52657365 		.ascii	"Reserved4\000"
 8705      72766564 
 8705      3400
 8706              	.LASF293:
 8707 0b0e 625F7077 		.ascii	"b_pwmh_output_inverted\000"
 8707      6D685F6F 
 8707      75747075 
 8707      745F696E 
 8707      76657274 
 8708              	.LASF72:
 8709 0b25 52657365 		.ascii	"Reserved6\000"
 8709      72766564 
 8709      3600
 8710              	.LASF121:
 8711 0b2f 5F5F746D 		.ascii	"__tm_isdst\000"
 8711      5F697364 
 8711      737400
 8712              	.LASF76:
 8713 0b3a 52657365 		.ascii	"Reserved8\000"
 8713      72766564 
 8713      3800
 8714              	.LASF78:
 8715 0b44 52657365 		.ascii	"Reserved9\000"
 8715      72766564 
 8715      3900
 8716              	.LASF369:
 8717 0b4e 70776D5F 		.ascii	"pwm_channel_get_status\000"
 8717      6368616E 
 8717      6E656C5F 
 8717      6765745F 
 8717      73746174 
 8718              	.LASF82:
 8719 0b65 50574D5F 		.ascii	"PWM_LEBR1\000"
 8719      4C454252 
 8719      3100
 8720              	.LASF312:
 8721 0b6f 756C5F64 		.ascii	"ul_dma_duty_value\000"
 8721      6D615F64 
 8721      7574795F 
 8721      76616C75 
 8721      6500
 8722              	.LASF347:
 8723 0b81 70776D5F 		.ascii	"pwm_fault_get_input_level\000"
 8723      6661756C 
 8723      745F6765 
 8723      745F696E 
 8723      7075745F 
 8724              	.LASF309:
 8725 0b9b 756C5F6D 		.ascii	"ul_mode\000"
 8725      6F646500 
ARM GAS  /tmp/ccmSFvTJ.s 			page 188


 8726              	.LASF128:
 8727 0ba3 5F696E64 		.ascii	"_ind\000"
 8727      00
 8728              	.LASF268:
 8729 0ba8 756E6974 		.ascii	"unit\000"
 8729      00
 8730              	.LASF327:
 8731 0bad 756C5F67 		.ascii	"ul_group\000"
 8731      726F7570 
 8731      00
 8732              	.LASF278:
 8733 0bb6 6661756C 		.ascii	"fault_id\000"
 8733      745F6964 
 8733      00
 8734              	.LASF42:
 8735 0bbf 50574D5F 		.ascii	"PWM_SCUC\000"
 8735      53435543 
 8735      00
 8736              	.LASF236:
 8737 0bc8 50574D5F 		.ascii	"PWM_FAULT_ACC\000"
 8737      4641554C 
 8737      545F4143 
 8737      4300
 8738              	.LASF362:
 8739 0bd6 6F766572 		.ascii	"override_value\000"
 8739      72696465 
 8739      5F76616C 
 8739      756500
 8740              	.LASF355:
 8741 0be5 705F6F75 		.ascii	"p_output\000"
 8741      74707574 
 8741      00
 8742              	.LASF302:
 8743 0bee 73707265 		.ascii	"spread_spectrum_mode\000"
 8743      61645F73 
 8743      70656374 
 8743      72756D5F 
 8743      6D6F6465 
 8744              	.LASF339:
 8745 0c03 70776D5F 		.ascii	"pwm_cmp_disable_interrupt\000"
 8745      636D705F 
 8745      64697361 
 8745      626C655F 
 8745      696E7465 
 8746              	.LASF341:
 8747 0c1d 70776D5F 		.ascii	"pwm_cmp_enable_interrupt\000"
 8747      636D705F 
 8747      656E6162 
 8747      6C655F69 
 8747      6E746572 
 8748              	.LASF43:
 8749 0c36 50574D5F 		.ascii	"PWM_SCUP\000"
 8749      53435550 
 8749      00
 8750              	.LASF117:
 8751 0c3f 5F5F746D 		.ascii	"__tm_mon\000"
 8751      5F6D6F6E 
ARM GAS  /tmp/ccmSFvTJ.s 			page 189


 8751      00
 8752              	.LASF247:
 8753 0c48 50574D5F 		.ascii	"PWM_LEADING_EDGE1_MODE_LDEC\000"
 8753      4C454144 
 8753      494E475F 
 8753      45444745 
 8753      315F4D4F 
 8754              	.LASF41:
 8755 0c64 50574D5F 		.ascii	"PWM_DMAR\000"
 8755      444D4152 
 8755      00
 8756              	.LASF294:
 8757 0c6d 625F7077 		.ascii	"b_pwml_output_inverted\000"
 8757      6D6C5F6F 
 8757      75747075 
 8757      745F696E 
 8757      76657274 
 8758              	.LASF245:
 8759 0c84 70776D5F 		.ascii	"pwm_spread_spectrum_mode_t\000"
 8759      73707265 
 8759      61645F73 
 8759      70656374 
 8759      72756D5F 
 8760              	.LASF232:
 8761 0c9f 70776D5F 		.ascii	"pwm_counter_event_t\000"
 8761      636F756E 
 8761      7465725F 
 8761      6576656E 
 8761      745F7400 
 8762              	.LASF51:
 8763 0cb3 50574D5F 		.ascii	"PWM_OSS\000"
 8763      4F535300 
 8764              	.LASF12:
 8765 0cbb 75696E74 		.ascii	"uint16_t\000"
 8765      31365F74 
 8765      00
 8766              	.LASF130:
 8767 0cc4 5F5F7362 		.ascii	"__sbuf\000"
 8767      756600
 8768              	.LASF63:
 8769 0ccb 50574D5F 		.ascii	"PWM_SSPR\000"
 8769      53535052 
 8769      00
 8770              	.LASF139:
 8771 0cd4 5F777269 		.ascii	"_write\000"
 8771      746500
 8772              	.LASF272:
 8773 0cdb 756C5F74 		.ascii	"ul_trigger\000"
 8773      72696767 
 8773      657200
 8774              	.LASF349:
 8775 0ce6 70776D5F 		.ascii	"pwm_fault_get_status\000"
 8775      6661756C 
 8775      745F6765 
 8775      745F7374 
 8775      61747573 
 8776              	.LASF361:
ARM GAS  /tmp/ccmSFvTJ.s 			page 190


 8777 0cfb 70776D6C 		.ascii	"pwml\000"
 8777      00
 8778              	.LASF8:
 8779 0d00 5F5F7569 		.ascii	"__uint32_t\000"
 8779      6E743332 
 8779      5F7400
 8780              	.LASF287:
 8781 0d0b 6368616E 		.ascii	"channel\000"
 8781      6E656C00 
 8782              	.LASF71:
 8783 0d13 50574D5F 		.ascii	"PWM_WPSR\000"
 8783      57505352 
 8783      00
 8784              	.LASF127:
 8785 0d1c 5F617465 		.ascii	"_atexit\000"
 8785      78697400 
 8786              	.LASF285:
 8787 0d24 756C5F6F 		.ascii	"ul_offset\000"
 8787      66667365 
 8787      7400
 8788              	.LASF317:
 8789 0d2e 70616972 		.ascii	"pair\000"
 8789      00
 8790              	.LASF258:
 8791 0d33 50574D5F 		.ascii	"PWM_LEADING_EDGE4_MODE_LINC\000"
 8791      4C454144 
 8791      494E475F 
 8791      45444745 
 8791      345F4D4F 
 8792              	.LASF241:
 8793 0d4f 50574D5F 		.ascii	"PWM_CMP_UPDATE\000"
 8793      434D505F 
 8793      55504441 
 8793      544500
 8794              	.LASF214:
 8795 0d5e 70776D5F 		.ascii	"pwm_align_t\000"
 8795      616C6967 
 8795      6E5F7400 
 8796              	.LASF235:
 8797 0d6a 50574D5F 		.ascii	"PWM_FAULT_ADC\000"
 8797      4641554C 
 8797      545F4144 
 8797      4300
 8798              	.LASF388:
 8799 0d78 2E2E2F61 		.ascii	"../asf/sam/drivers/pwm/pwm.c\000"
 8799      73662F73 
 8799      616D2F64 
 8799      72697665 
 8799      72732F70 
 8800              	.LASF338:
 8801 0d95 73796E63 		.ascii	"sync_mode\000"
 8801      5F6D6F64 
 8801      6500
 8802              	.LASF74:
 8803 0d9f 52657365 		.ascii	"Reserved7\000"
 8803      72766564 
 8803      3700
ARM GAS  /tmp/ccmSFvTJ.s 			page 191


 8804              	.LASF179:
 8805 0da9 5F6D756C 		.ascii	"_mult\000"
 8805      7400
 8806              	.LASF371:
 8807 0daf 756C5F63 		.ascii	"ul_channel\000"
 8807      68616E6E 
 8807      656C00
 8808              	.LASF7:
 8809 0dba 6C6F6E67 		.ascii	"long int\000"
 8809      20696E74 
 8809      00
 8810              	.LASF365:
 8811 0dc3 756C5F66 		.ascii	"ul_fault\000"
 8811      61756C74 
 8811      00
 8812              	.LASF16:
 8813 0dcc 49544D5F 		.ascii	"ITM_RxBuffer\000"
 8813      52784275 
 8813      66666572 
 8813      00
 8814              	.LASF171:
 8815 0dd9 5F5F7366 		.ascii	"__sf\000"
 8815      00
 8816              	.LASF109:
 8817 0dde 5F736967 		.ascii	"_sign\000"
 8817      6E00
 8818              	.LASF295:
 8819 0de4 75735F64 		.ascii	"us_deadtime_pwmh\000"
 8819      65616474 
 8819      696D655F 
 8819      70776D68 
 8819      00
 8820              	.LASF301:
 8821 0df5 756C5F73 		.ascii	"ul_spread\000"
 8821      70726561 
 8821      6400
 8822              	.LASF22:
 8823 0dff 50574D5F 		.ascii	"PWM_CPRDUPD\000"
 8823      43505244 
 8823      55504400 
 8824              	.LASF158:
 8825 0e0b 5F637572 		.ascii	"_current_locale\000"
 8825      72656E74 
 8825      5F6C6F63 
 8825      616C6500 
 8826              	.LASF343:
 8827 0e1b 70776D5F 		.ascii	"pwm_cmp_change_setting\000"
 8827      636D705F 
 8827      6368616E 
 8827      67655F73 
 8827      65747469 
 8828              	.LASF146:
 8829 0e32 5F646174 		.ascii	"_data\000"
 8829      6100
 8830              	.LASF157:
 8831 0e38 5F637572 		.ascii	"_current_category\000"
 8831      72656E74 
ARM GAS  /tmp/ccmSFvTJ.s 			page 192


 8831      5F636174 
 8831      65676F72 
 8831      7900
 8832              	.LASF101:
 8833 0e4a 5F5F7763 		.ascii	"__wchb\000"
 8833      686200
 8834              	.LASF204:
 8835 0e51 5F676C6F 		.ascii	"_global_impure_ptr\000"
 8835      62616C5F 
 8835      696D7075 
 8835      72655F70 
 8835      747200
 8836              	.LASF216:
 8837 0e64 50574D5F 		.ascii	"PWM_HIGH\000"
 8837      48494748 
 8837      00
 8838              	.LASF19:
 8839 0e6d 50574D5F 		.ascii	"PWM_CDTY\000"
 8839      43445459 
 8839      00
 8840              	.LASF118:
 8841 0e76 5F5F746D 		.ascii	"__tm_year\000"
 8841      5F796561 
 8841      7200
 8842              	.LASF145:
 8843 0e80 5F6F6666 		.ascii	"_offset\000"
 8843      73657400 
 8844              	.LASF331:
 8845 0e88 756C5F73 		.ascii	"ul_sources\000"
 8845      6F757263 
 8845      657300
 8846              	.LASF81:
 8847 0e93 50574D5F 		.ascii	"PWM_ETRG1\000"
 8847      45545247 
 8847      3100
 8848              	.LASF86:
 8849 0e9d 50574D5F 		.ascii	"PWM_ETRG2\000"
 8849      45545247 
 8849      3200
 8850              	.LASF91:
 8851 0ea7 50574D5F 		.ascii	"PWM_ETRG3\000"
 8851      45545247 
 8851      3300
 8852              	.LASF94:
 8853 0eb1 50574D5F 		.ascii	"PWM_ETRG4\000"
 8853      45545247 
 8853      3400
 8854              	.LASF252:
 8855 0ebb 50574D5F 		.ascii	"PWM_LEADING_EDGE2_MODE_HINC\000"
 8855      4C454144 
 8855      494E475F 
 8855      45444745 
 8855      325F4D4F 
 8856              	.LASF184:
 8857 0ed7 5F6C6F63 		.ascii	"_localtime_buf\000"
 8857      616C7469 
 8857      6D655F62 
ARM GAS  /tmp/ccmSFvTJ.s 			page 193


 8857      756600
 8858              	.LASF335:
 8859 0ee6 70776D5F 		.ascii	"pwm_sync_unlock_update\000"
 8859      73796E63 
 8859      5F756E6C 
 8859      6F636B5F 
 8859      75706461 
 8860              	.LASF202:
 8861 0efd 5F756E75 		.ascii	"_unused\000"
 8861      73656400 
 8862              	.LASF300:
 8863 0f05 756C5F66 		.ascii	"ul_fault_output_pwml\000"
 8863      61756C74 
 8863      5F6F7574 
 8863      7075745F 
 8863      70776D6C 
 8864              	.LASF167:
 8865 0f1a 5F6E6577 		.ascii	"_new\000"
 8865      00
 8866              	.LASF165:
 8867 0f1f 5F637674 		.ascii	"_cvtlen\000"
 8867      6C656E00 
 8868              	.LASF108:
 8869 0f27 5F6D6178 		.ascii	"_maxwds\000"
 8869      77647300 
 8870              	.LASF191:
 8871 0f2f 5F6C3634 		.ascii	"_l64a_buf\000"
 8871      615F6275 
 8871      6600
 8872              	.LASF57:
 8873 0f39 50574D5F 		.ascii	"PWM_FCR\000"
 8873      46435200 
 8874              	.LASF299:
 8875 0f41 756C5F66 		.ascii	"ul_fault_output_pwmh\000"
 8875      61756C74 
 8875      5F6F7574 
 8875      7075745F 
 8875      70776D68 
 8876              	.LASF314:
 8877 0f56 70776D5F 		.ascii	"pwm_channel_update_leading_edge\000"
 8877      6368616E 
 8877      6E656C5F 
 8877      75706461 
 8877      74655F6C 
 8878              	.LASF144:
 8879 0f76 5F626C6B 		.ascii	"_blksize\000"
 8879      73697A65 
 8879      00
 8880              	.LASF112:
 8881 0f7f 5F5F746D 		.ascii	"__tm\000"
 8881      00
 8882              	.LASF147:
 8883 0f84 5F6C6F63 		.ascii	"_lock\000"
 8883      6B00
 8884              	.LASF261:
 8885 0f8a 50574D5F 		.ascii	"PWM_LEADING_EDGE4_MODE_HDEC\000"
 8885      4C454144 
ARM GAS  /tmp/ccmSFvTJ.s 			page 194


 8885      494E475F 
 8885      45444745 
 8885      345F4D4F 
 8886              	.LASF69:
 8887 0fa6 52657365 		.ascii	"Reserved5\000"
 8887      72766564 
 8887      3500
 8888              	.LASF15:
 8889 0fb0 73697A65 		.ascii	"sizetype\000"
 8889      74797065 
 8889      00
 8890              	.LASF9:
 8891 0fb9 6C6F6E67 		.ascii	"long unsigned int\000"
 8891      20756E73 
 8891      69676E65 
 8891      6420696E 
 8891      7400
 8892              	.LASF30:
 8893 0fcb 50574D5F 		.ascii	"PWM_CMPMUPD\000"
 8893      434D504D 
 8893      55504400 
 8894              	.LASF208:
 8895 0fd7 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 8895      6972715F 
 8895      63726974 
 8895      6963616C 
 8895      5F736563 
 8896              	.LASF175:
 8897 0ff8 5F6E696F 		.ascii	"_niobs\000"
 8897      627300
 8898              	.LASF99:
 8899 0fff 77696E74 		.ascii	"wint_t\000"
 8899      5F7400
 8900              	.LASF38:
 8901 1006 50574D5F 		.ascii	"PWM_IMR1\000"
 8901      494D5231 
 8901      00
 8902              	.LASF291:
 8903 100f 636F756E 		.ascii	"counter_event\000"
 8903      7465725F 
 8903      6576656E 
 8903      7400
 8904              	.LASF47:
 8905 101d 50574D5F 		.ascii	"PWM_IMR2\000"
 8905      494D5232 
 8905      00
 8906              	.LASF13:
 8907 1026 696E7433 		.ascii	"int32_t\000"
 8907      325F7400 
 8908              	.LASF254:
 8909 102e 50574D5F 		.ascii	"PWM_LEADING_EDGE3_MODE_LINC\000"
 8909      4C454144 
 8909      494E475F 
 8909      45444745 
 8909      335F4D4F 
 8910              	.LASF353:
 8911 104a 70776D5F 		.ascii	"pwm_channel_update_dead_time\000"
ARM GAS  /tmp/ccmSFvTJ.s 			page 195


 8911      6368616E 
 8911      6E656C5F 
 8911      75706461 
 8911      74655F64 
 8912              	.LASF124:
 8913 1067 5F64736F 		.ascii	"_dso_handle\000"
 8913      5F68616E 
 8913      646C6500 
 8914              	.LASF243:
 8915 1073 50574D5F 		.ascii	"PWM_SPREAD_SPECTRUM_MODE_TRIANGULAR\000"
 8915      53505245 
 8915      41445F53 
 8915      50454354 
 8915      52554D5F 
 8916              	.LASF308:
 8917 1097 705F6368 		.ascii	"p_channel\000"
 8917      616E6E65 
 8917      6C00
 8918              	.LASF269:
 8919 10a1 625F656E 		.ascii	"b_enable\000"
 8919      61626C65 
 8919      00
 8920              	.LASF340:
 8921 10aa 74797065 		.ascii	"type\000"
 8921      00
 8922              	.LASF166:
 8923 10af 5F637674 		.ascii	"_cvtbuf\000"
 8923      62756600 
 8924              	.LASF2:
 8925 10b7 756E7369 		.ascii	"unsigned char\000"
 8925      676E6564 
 8925      20636861 
 8925      7200
 8926              	.LASF80:
 8927 10c5 52657365 		.ascii	"Reserved10\000"
 8927      72766564 
 8927      313000
 8928              	.LASF83:
 8929 10d0 52657365 		.ascii	"Reserved11\000"
 8929      72766564 
 8929      313100
 8930              	.LASF85:
 8931 10db 52657365 		.ascii	"Reserved12\000"
 8931      72766564 
 8931      313200
 8932              	.LASF88:
 8933 10e6 52657365 		.ascii	"Reserved13\000"
 8933      72766564 
 8933      313300
 8934              	.LASF90:
 8935 10f1 52657365 		.ascii	"Reserved14\000"
 8935      72766564 
 8935      313400
 8936              	.LASF93:
 8937 10fc 52657365 		.ascii	"Reserved15\000"
 8937      72766564 
 8937      313500
ARM GAS  /tmp/ccmSFvTJ.s 			page 196


 8938              	.LASF217:
 8939 1107 50574D5F 		.ascii	"PWM_HIGHZ\000"
 8939      48494748 
 8939      5A00
 8940              	.LASF54:
 8941 1111 50574D5F 		.ascii	"PWM_OSCUPD\000"
 8941      4F534355 
 8941      504400
 8942              	.LASF290:
 8943 111c 756C5F64 		.ascii	"ul_duty\000"
 8943      75747900 
 8944              	.LASF96:
 8945 1124 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 8945      4B5F5245 
 8945      43555253 
 8945      4956455F 
 8945      5400
 8946              	.LASF244:
 8947 1136 50574D5F 		.ascii	"PWM_SPREAD_SPECTRUM_MODE_RANDOM\000"
 8947      53505245 
 8947      41445F53 
 8947      50454354 
 8947      52554D5F 
 8948              	.LASF332:
 8949 1156 70776D5F 		.ascii	"pwm_sync_enable_interrupt\000"
 8949      73796E63 
 8949      5F656E61 
 8949      626C655F 
 8949      696E7465 
 8950              	.LASF298:
 8951 1170 625F7379 		.ascii	"b_sync_ch\000"
 8951      6E635F63 
 8951      6800
 8952              	.LASF282:
 8953 117a 70776D5F 		.ascii	"pwm_fault_t\000"
 8953      6661756C 
 8953      745F7400 
 8954              	.LASF366:
 8955 1186 70776D5F 		.ascii	"pwm_channel_enable_interrupt\000"
 8955      6368616E 
 8955      6E656C5F 
 8955      656E6162 
 8955      6C655F69 
 8956              	.LASF387:
 8957 11a3 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 8957      43393920 
 8957      362E332E 
 8957      31203230 
 8957      31373036 
 8958 11d6 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 8958      76352D64 
 8958      3136202D 
 8958      6D666C6F 
 8958      61742D61 
 8959 1209 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 8959      6E2D7365 
 8959      6374696F 
ARM GAS  /tmp/ccmSFvTJ.s 			page 197


 8959      6E73202D 
 8959      66646174 
 8960 123c 6F6E7374 		.ascii	"onstant\000"
 8960      616E7400 
 8961              	.LASF358:
 8962 1244 6F766572 		.ascii	"override_pwmh\000"
 8962      72696465 
 8962      5F70776D 
 8962      6800
 8963              	.LASF359:
 8964 1252 6F766572 		.ascii	"override_pwml\000"
 8964      72696465 
 8964      5F70776D 
 8964      6C00
 8965              	.LASF380:
 8966 1260 636C6F63 		.ascii	"clock_config\000"
 8966      6B5F636F 
 8966      6E666967 
 8966      00
 8967              	.LASF174:
 8968 126d 5F676C75 		.ascii	"_glue\000"
 8968      6500
 8969              	.LASF248:
 8970 1273 50574D5F 		.ascii	"PWM_LEADING_EDGE1_MODE_HINC\000"
 8970      4C454144 
 8970      494E475F 
 8970      45444745 
 8970      315F4D4F 
 8971              	.LASF25:
 8972 128f 50574D5F 		.ascii	"PWM_DTUPD\000"
 8972      44545550 
 8972      4400
 8973              	.LASF20:
 8974 1299 50574D5F 		.ascii	"PWM_CDTYUPD\000"
 8974      43445459 
 8974      55504400 
 8975              	.LASF212:
 8976 12a5 50574D5F 		.ascii	"PWM_ALIGN_LEFT\000"
 8976      414C4947 
 8976      4E5F4C45 
 8976      465400
 8977              	.LASF170:
 8978 12b4 5F5F7367 		.ascii	"__sglue\000"
 8978      6C756500 
 8979              	.LASF193:
 8980 12bc 5F676574 		.ascii	"_getdate_err\000"
 8980      64617465 
 8980      5F657272 
 8980      00
 8981              	.LASF230:
 8982 12c9 50574D5F 		.ascii	"PWM_EVENT_PERIOD_END\000"
 8982      4556454E 
 8982      545F5045 
 8982      52494F44 
 8982      5F454E44 
 8983              	.LASF182:
 8984 12de 5F737472 		.ascii	"_strtok_last\000"
ARM GAS  /tmp/ccmSFvTJ.s 			page 198


 8984      746F6B5F 
 8984      6C617374 
 8984      00
 8985              	.LASF189:
 8986 12eb 5F6D6274 		.ascii	"_mbtowc_state\000"
 8986      6F77635F 
 8986      73746174 
 8986      6500
 8987              	.LASF263:
 8988 12f9 625F6F76 		.ascii	"b_override_pwmh\000"
 8988      65727269 
 8988      64655F70 
 8988      776D6800 
 8989              	.LASF70:
 8990 1309 50574D5F 		.ascii	"PWM_WPCR\000"
 8990      57504352 
 8990      00
 8991              	.LASF311:
 8992 1312 70776D5F 		.ascii	"pwm_set_dma_duty\000"
 8992      7365745F 
 8992      646D615F 
 8992      64757479 
 8992      00
 8993              	.LASF231:
 8994 1323 50574D5F 		.ascii	"PWM_EVENT_PERIOD_HALF_END\000"
 8994      4556454E 
 8994      545F5045 
 8994      52494F44 
 8994      5F48414C 
 8995              	.LASF50:
 8996 133d 50574D5F 		.ascii	"PWM_OS\000"
 8996      4F5300
 8997              	.LASF123:
 8998 1344 5F666E61 		.ascii	"_fnargs\000"
 8998      72677300 
 8999              	.LASF1:
 9000 134c 7369676E 		.ascii	"signed char\000"
 9000      65642063 
 9000      68617200 
 9001              	.LASF377:
 9002 1358 746D705F 		.ascii	"tmp_reg\000"
 9002      72656700 
 9003              	.LASF150:
 9004 1360 5F726565 		.ascii	"_reent\000"
 9004      6E7400
 9005              	.LASF4:
 9006 1367 73686F72 		.ascii	"short unsigned int\000"
 9006      7420756E 
 9006      7369676E 
 9006      65642069 
 9006      6E7400
 9007              	.LASF322:
 9008 137a 70776D5F 		.ascii	"pwm_get_interrupt_status\000"
 9008      6765745F 
 9008      696E7465 
 9008      72727570 
 9008      745F7374 
ARM GAS  /tmp/ccmSFvTJ.s 			page 199


 9009              	.LASF257:
 9010 1393 50574D5F 		.ascii	"PWM_LEADING_EDGE3_MODE_HDEC\000"
 9010      4C454144 
 9010      494E475F 
 9010      45444745 
 9010      335F4D4F 
 9011              	.LASF23:
 9012 13af 50574D5F 		.ascii	"PWM_CCNT\000"
 9012      43434E54 
 9012      00
 9013              	.LASF364:
 9014 13b8 756C5F65 		.ascii	"ul_event\000"
 9014      76656E74 
 9014      00
 9015              	.LASF125:
 9016 13c1 5F666E74 		.ascii	"_fntypes\000"
 9016      79706573 
 9016      00
 9017              	.LASF185:
 9018 13ca 5F67616D 		.ascii	"_gamma_signgam\000"
 9018      6D615F73 
 9018      69676E67 
 9018      616D00
 9019              	.LASF132:
 9020 13d9 5F73697A 		.ascii	"_size\000"
 9020      6500
 9021              	.LASF211:
 9022 13df 646F7562 		.ascii	"double\000"
 9022      6C6500
 9023              	.LASF34:
 9024 13e6 50574D5F 		.ascii	"PWM_DIS\000"
 9024      44495300 
 9025              	.LASF190:
 9026 13ee 5F776374 		.ascii	"_wctomb_state\000"
 9026      6F6D625F 
 9026      73746174 
 9026      6500
 9027              	.LASF289:
 9028 13fc 616C6967 		.ascii	"alignment\000"
 9028      6E6D656E 
 9028      7400
 9029              	.LASF264:
 9030 1406 625F6F76 		.ascii	"b_override_pwml\000"
 9030      65727269 
 9030      64655F70 
 9030      776D6C00 
 9031              	.LASF97:
 9032 1416 5F6F6666 		.ascii	"_off_t\000"
 9032      5F7400
 9033              	.LASF297:
 9034 141d 6F757470 		.ascii	"output_selection\000"
 9034      75745F73 
 9034      656C6563 
 9034      74696F6E 
 9034      00
 9035              	.LASF143:
 9036 142e 5F6E6275 		.ascii	"_nbuf\000"
ARM GAS  /tmp/ccmSFvTJ.s 			page 200


 9036      6600
 9037              	.LASF181:
 9038 1434 5F756E75 		.ascii	"_unused_rand\000"
 9038      7365645F 
 9038      72616E64 
 9038      00
 9039              	.LASF367:
 9040 1441 70776D5F 		.ascii	"pwm_channel_get_interrupt_mask\000"
 9040      6368616E 
 9040      6E656C5F 
 9040      6765745F 
 9040      696E7465 
 9041              	.LASF199:
 9042 1460 5F685F65 		.ascii	"_h_errno\000"
 9042      72726E6F 
 9042      00
 9043              	.LASF342:
 9044 1469 756C5F63 		.ascii	"ul_cmp_unit\000"
 9044      6D705F75 
 9044      6E697400 
 9045              	.LASF39:
 9046 1475 50574D5F 		.ascii	"PWM_ISR1\000"
 9046      49535231 
 9046      00
 9047              	.LASF48:
 9048 147e 50574D5F 		.ascii	"PWM_ISR2\000"
 9048      49535232 
 9048      00
 9049              	.LASF126:
 9050 1487 5F69735F 		.ascii	"_is_cxa\000"
 9050      63786100 
 9051              	.LASF229:
 9052 148f 70776D5F 		.ascii	"pwm_sync_update_mode_t\000"
 9052      73796E63 
 9052      5F757064 
 9052      6174655F 
 9052      6D6F6465 
 9053              	.LASF280:
 9054 14a6 625F636C 		.ascii	"b_clear\000"
 9054      65617200 
 9055              	.LASF178:
 9056 14ae 5F736565 		.ascii	"_seed\000"
 9056      6400
 9057              	.LASF186:
 9058 14b4 5F72616E 		.ascii	"_rand_next\000"
 9058      645F6E65 
 9058      787400
 9059              	.LASF28:
 9060 14bf 50574D5F 		.ascii	"PWM_CMPVUPD\000"
 9060      434D5056 
 9060      55504400 
 9061              	.LASF140:
 9062 14cb 5F736565 		.ascii	"_seek\000"
 9062      6B00
 9063              	.LASF53:
 9064 14d1 50574D5F 		.ascii	"PWM_OSSUPD\000"
 9064      4F535355 
ARM GAS  /tmp/ccmSFvTJ.s 			page 201


 9064      504400
 9065              	.LASF154:
 9066 14dc 5F737464 		.ascii	"_stderr\000"
 9066      65727200 
 9067              	.LASF201:
 9068 14e4 5F6E6D61 		.ascii	"_nmalloc\000"
 9068      6C6C6F63 
 9068      00
 9069              	.LASF176:
 9070 14ed 5F696F62 		.ascii	"_iobs\000"
 9070      7300
 9071              	.LASF350:
 9072 14f3 70776D5F 		.ascii	"pwm_fault_init\000"
 9072      6661756C 
 9072      745F696E 
 9072      697400
 9073              	.LASF324:
 9074 1502 705F7072 		.ascii	"p_protect\000"
 9074      6F746563 
 9074      7400
 9075              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
