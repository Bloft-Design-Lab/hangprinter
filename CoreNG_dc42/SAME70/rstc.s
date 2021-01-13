ARM GAS  /tmp/ccXVTxD7.s 			page 1


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
  12              		.file	"rstc.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.rstc_set_external_reset,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	rstc_set_external_reset
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	rstc_set_external_reset, %function
  25              	rstc_set_external_reset:
  26              	.LFB142:
  27              		.file 1 "../asf/sam/drivers/rstc/rstc.c"
   1:../asf/sam/drivers/rstc/rstc.c **** /**
   2:../asf/sam/drivers/rstc/rstc.c ****  * \file
   3:../asf/sam/drivers/rstc/rstc.c ****  *
   4:../asf/sam/drivers/rstc/rstc.c ****  * \brief SAM Reset Controller (RSTC) driver.
   5:../asf/sam/drivers/rstc/rstc.c ****  *
   6:../asf/sam/drivers/rstc/rstc.c ****  * Copyright (c) 2011-2015 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/rstc/rstc.c ****  *
   8:../asf/sam/drivers/rstc/rstc.c ****  * \asf_license_start
   9:../asf/sam/drivers/rstc/rstc.c ****  *
  10:../asf/sam/drivers/rstc/rstc.c ****  * \page License
  11:../asf/sam/drivers/rstc/rstc.c ****  *
  12:../asf/sam/drivers/rstc/rstc.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/rstc/rstc.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/rstc/rstc.c ****  *
  15:../asf/sam/drivers/rstc/rstc.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/rstc/rstc.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/rstc/rstc.c ****  *
  18:../asf/sam/drivers/rstc/rstc.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/rstc/rstc.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/rstc/rstc.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/rstc/rstc.c ****  *
  22:../asf/sam/drivers/rstc/rstc.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/rstc/rstc.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/rstc/rstc.c ****  *
  25:../asf/sam/drivers/rstc/rstc.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/rstc/rstc.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/rstc/rstc.c ****  *
  28:../asf/sam/drivers/rstc/rstc.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/rstc/rstc.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/rstc/rstc.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccXVTxD7.s 			page 2


  31:../asf/sam/drivers/rstc/rstc.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/rstc/rstc.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/rstc/rstc.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/rstc/rstc.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/rstc/rstc.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/rstc/rstc.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/rstc/rstc.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/rstc/rstc.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/rstc/rstc.c ****  *
  40:../asf/sam/drivers/rstc/rstc.c ****  * \asf_license_stop
  41:../asf/sam/drivers/rstc/rstc.c ****  *
  42:../asf/sam/drivers/rstc/rstc.c ****  */
  43:../asf/sam/drivers/rstc/rstc.c **** /*
  44:../asf/sam/drivers/rstc/rstc.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/rstc/rstc.c ****  */
  46:../asf/sam/drivers/rstc/rstc.c ****  
  47:../asf/sam/drivers/rstc/rstc.c **** #include "rstc.h"
  48:../asf/sam/drivers/rstc/rstc.c **** 
  49:../asf/sam/drivers/rstc/rstc.c **** /// @cond
  50:../asf/sam/drivers/rstc/rstc.c **** /**INDENT-OFF**/
  51:../asf/sam/drivers/rstc/rstc.c **** #ifdef __cplusplus
  52:../asf/sam/drivers/rstc/rstc.c **** extern "C" {
  53:../asf/sam/drivers/rstc/rstc.c **** #endif
  54:../asf/sam/drivers/rstc/rstc.c **** /**INDENT-ON**/
  55:../asf/sam/drivers/rstc/rstc.c **** /// @endcond
  56:../asf/sam/drivers/rstc/rstc.c **** 
  57:../asf/sam/drivers/rstc/rstc.c **** #define RSTC_KEY  0xA5000000
  58:../asf/sam/drivers/rstc/rstc.c **** 
  59:../asf/sam/drivers/rstc/rstc.c **** /**
  60:../asf/sam/drivers/rstc/rstc.c ****  * \brief Set the external reset length.
  61:../asf/sam/drivers/rstc/rstc.c ****  *
  62:../asf/sam/drivers/rstc/rstc.c ****  * \param[in,out] p_rstc Module hardware register base address pointer
  63:../asf/sam/drivers/rstc/rstc.c ****  * \param[in] ul_length The length of external reset
  64:../asf/sam/drivers/rstc/rstc.c ****  */
  65:../asf/sam/drivers/rstc/rstc.c **** void rstc_set_external_reset(
  66:../asf/sam/drivers/rstc/rstc.c **** 		Rstc *p_rstc,
  67:../asf/sam/drivers/rstc/rstc.c **** 		const uint32_t ul_length)
  68:../asf/sam/drivers/rstc/rstc.c **** {
  28              		.loc 1 68 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
  69:../asf/sam/drivers/rstc/rstc.c **** 	/* Validate the parameters. */
  70:../asf/sam/drivers/rstc/rstc.c **** 	Assert(p_rstc);
  71:../asf/sam/drivers/rstc/rstc.c **** 	
  72:../asf/sam/drivers/rstc/rstc.c **** 	uint32_t mode = p_rstc->RSTC_MR;
  73:../asf/sam/drivers/rstc/rstc.c **** 
  74:../asf/sam/drivers/rstc/rstc.c **** 	mode &= ~(RSTC_MR_ERSTL_Msk | RSTC_MR_KEY_Msk);
  75:../asf/sam/drivers/rstc/rstc.c **** 	mode |= (RSTC_MR_ERSTL(ul_length) | RSTC_KEY);
  34              		.loc 1 75 0
  35 0000 0902     		lsls	r1, r1, #8
  36              	.LVL1:
  72:../asf/sam/drivers/rstc/rstc.c **** 
  37              		.loc 1 72 0
  38 0002 8268     		ldr	r2, [r0, #8]
ARM GAS  /tmp/ccXVTxD7.s 			page 3


  39              	.LVL2:
  74:../asf/sam/drivers/rstc/rstc.c **** 	mode |= (RSTC_MR_ERSTL(ul_length) | RSTC_KEY);
  40              		.loc 1 74 0
  41 0004 044B     		ldr	r3, .L2
  42              		.loc 1 75 0
  43 0006 01F47061 		and	r1, r1, #3840
  74:../asf/sam/drivers/rstc/rstc.c **** 	mode |= (RSTC_MR_ERSTL(ul_length) | RSTC_KEY);
  44              		.loc 1 74 0
  45 000a 1340     		ands	r3, r3, r2
  46              	.LVL3:
  47              		.loc 1 75 0
  48 000c 41F02541 		orr	r1, r1, #-1526726656
  49 0010 1943     		orrs	r1, r1, r3
  50              	.LVL4:
  76:../asf/sam/drivers/rstc/rstc.c **** 
  77:../asf/sam/drivers/rstc/rstc.c **** 	p_rstc->RSTC_MR = mode;
  51              		.loc 1 77 0
  52 0012 8160     		str	r1, [r0, #8]
  53 0014 7047     		bx	lr
  54              	.L3:
  55 0016 00BF     		.align	2
  56              	.L2:
  57 0018 FFF0FF00 		.word	16773375
  58              		.cfi_endproc
  59              	.LFE142:
  60              		.size	rstc_set_external_reset, .-rstc_set_external_reset
  61              		.section	.text.rstc_enable_user_reset,"ax",%progbits
  62              		.align	1
  63              		.p2align 2,,3
  64              		.global	rstc_enable_user_reset
  65              		.syntax unified
  66              		.thumb
  67              		.thumb_func
  68              		.fpu fpv5-d16
  69              		.type	rstc_enable_user_reset, %function
  70              	rstc_enable_user_reset:
  71              	.LFB143:
  78:../asf/sam/drivers/rstc/rstc.c **** }
  79:../asf/sam/drivers/rstc/rstc.c **** 
  80:../asf/sam/drivers/rstc/rstc.c **** /**
  81:../asf/sam/drivers/rstc/rstc.c ****  * \brief Enable User Reset.
  82:../asf/sam/drivers/rstc/rstc.c ****  *
  83:../asf/sam/drivers/rstc/rstc.c ****  * \param[in,out] p_rstc Module hardware register base address pointer
  84:../asf/sam/drivers/rstc/rstc.c ****  */
  85:../asf/sam/drivers/rstc/rstc.c **** void rstc_enable_user_reset(
  86:../asf/sam/drivers/rstc/rstc.c **** 		Rstc *p_rstc)
  87:../asf/sam/drivers/rstc/rstc.c **** {
  72              		.loc 1 87 0
  73              		.cfi_startproc
  74              		@ args = 0, pretend = 0, frame = 0
  75              		@ frame_needed = 0, uses_anonymous_args = 0
  76              		@ link register save eliminated.
  77              	.LVL5:
  88:../asf/sam/drivers/rstc/rstc.c **** 	/* Validate the parameters. */
  89:../asf/sam/drivers/rstc/rstc.c **** 	Assert(p_rstc);
  90:../asf/sam/drivers/rstc/rstc.c **** 	
  91:../asf/sam/drivers/rstc/rstc.c **** 	uint32_t mode = p_rstc->RSTC_MR;
ARM GAS  /tmp/ccXVTxD7.s 			page 4


  78              		.loc 1 91 0
  79 0000 8268     		ldr	r2, [r0, #8]
  80              	.LVL6:
  92:../asf/sam/drivers/rstc/rstc.c **** 
  93:../asf/sam/drivers/rstc/rstc.c **** 	mode &= ~RSTC_MR_KEY_Msk;
  94:../asf/sam/drivers/rstc/rstc.c **** 	mode |= (RSTC_MR_URSTEN | RSTC_KEY);
  81              		.loc 1 94 0
  82 0002 034B     		ldr	r3, .L5
  93:../asf/sam/drivers/rstc/rstc.c **** 	mode |= (RSTC_MR_URSTEN | RSTC_KEY);
  83              		.loc 1 93 0
  84 0004 22F07F42 		bic	r2, r2, #-16777216
  85              	.LVL7:
  86              		.loc 1 94 0
  87 0008 1343     		orrs	r3, r3, r2
  88              	.LVL8:
  95:../asf/sam/drivers/rstc/rstc.c **** 
  96:../asf/sam/drivers/rstc/rstc.c **** 	p_rstc->RSTC_MR = mode;
  89              		.loc 1 96 0
  90 000a 8360     		str	r3, [r0, #8]
  91 000c 7047     		bx	lr
  92              	.L6:
  93 000e 00BF     		.align	2
  94              	.L5:
  95 0010 010000A5 		.word	-1526726655
  96              		.cfi_endproc
  97              	.LFE143:
  98              		.size	rstc_enable_user_reset, .-rstc_enable_user_reset
  99              		.section	.text.rstc_disable_user_reset,"ax",%progbits
 100              		.align	1
 101              		.p2align 2,,3
 102              		.global	rstc_disable_user_reset
 103              		.syntax unified
 104              		.thumb
 105              		.thumb_func
 106              		.fpu fpv5-d16
 107              		.type	rstc_disable_user_reset, %function
 108              	rstc_disable_user_reset:
 109              	.LFB144:
  97:../asf/sam/drivers/rstc/rstc.c **** }
  98:../asf/sam/drivers/rstc/rstc.c **** 
  99:../asf/sam/drivers/rstc/rstc.c **** /**
 100:../asf/sam/drivers/rstc/rstc.c ****  * \brief Disable User Reset.
 101:../asf/sam/drivers/rstc/rstc.c ****  *
 102:../asf/sam/drivers/rstc/rstc.c ****  * \param[in,out] p_rstc Module hardware register base address pointer
 103:../asf/sam/drivers/rstc/rstc.c ****  */
 104:../asf/sam/drivers/rstc/rstc.c **** void rstc_disable_user_reset(
 105:../asf/sam/drivers/rstc/rstc.c **** 		Rstc *p_rstc)
 106:../asf/sam/drivers/rstc/rstc.c **** {
 110              		.loc 1 106 0
 111              		.cfi_startproc
 112              		@ args = 0, pretend = 0, frame = 0
 113              		@ frame_needed = 0, uses_anonymous_args = 0
 114              		@ link register save eliminated.
 115              	.LVL9:
 107:../asf/sam/drivers/rstc/rstc.c **** 	/* Validate the parameters. */
 108:../asf/sam/drivers/rstc/rstc.c **** 	Assert(p_rstc);
 109:../asf/sam/drivers/rstc/rstc.c **** 	
ARM GAS  /tmp/ccXVTxD7.s 			page 5


 110:../asf/sam/drivers/rstc/rstc.c **** 	uint32_t mode = p_rstc->RSTC_MR;
 116              		.loc 1 110 0
 117 0000 8268     		ldr	r2, [r0, #8]
 118              	.LVL10:
 111:../asf/sam/drivers/rstc/rstc.c **** 
 112:../asf/sam/drivers/rstc/rstc.c **** 	mode &= ~(RSTC_MR_URSTEN | RSTC_MR_KEY_Msk);
 119              		.loc 1 112 0
 120 0002 034B     		ldr	r3, .L8
 121 0004 1340     		ands	r3, r3, r2
 122              	.LVL11:
 113:../asf/sam/drivers/rstc/rstc.c **** 	mode |= RSTC_KEY;
 123              		.loc 1 113 0
 124 0006 43F02543 		orr	r3, r3, #-1526726656
 125              	.LVL12:
 114:../asf/sam/drivers/rstc/rstc.c **** 
 115:../asf/sam/drivers/rstc/rstc.c **** 	p_rstc->RSTC_MR = mode;
 126              		.loc 1 115 0
 127 000a 8360     		str	r3, [r0, #8]
 128 000c 7047     		bx	lr
 129              	.L9:
 130 000e 00BF     		.align	2
 131              	.L8:
 132 0010 FEFFFF00 		.word	16777214
 133              		.cfi_endproc
 134              	.LFE144:
 135              		.size	rstc_disable_user_reset, .-rstc_disable_user_reset
 136              		.section	.text.rstc_enable_user_reset_interrupt,"ax",%progbits
 137              		.align	1
 138              		.p2align 2,,3
 139              		.global	rstc_enable_user_reset_interrupt
 140              		.syntax unified
 141              		.thumb
 142              		.thumb_func
 143              		.fpu fpv5-d16
 144              		.type	rstc_enable_user_reset_interrupt, %function
 145              	rstc_enable_user_reset_interrupt:
 146              	.LFB145:
 116:../asf/sam/drivers/rstc/rstc.c **** }
 117:../asf/sam/drivers/rstc/rstc.c **** 
 118:../asf/sam/drivers/rstc/rstc.c **** /**
 119:../asf/sam/drivers/rstc/rstc.c ****  * \brief Enable the User Reset interrupt.
 120:../asf/sam/drivers/rstc/rstc.c ****  *
 121:../asf/sam/drivers/rstc/rstc.c ****  * \param[in,out] p_rstc Module hardware register base address pointer
 122:../asf/sam/drivers/rstc/rstc.c ****  */
 123:../asf/sam/drivers/rstc/rstc.c **** void rstc_enable_user_reset_interrupt(
 124:../asf/sam/drivers/rstc/rstc.c **** 		Rstc *p_rstc)
 125:../asf/sam/drivers/rstc/rstc.c **** {
 147              		.loc 1 125 0
 148              		.cfi_startproc
 149              		@ args = 0, pretend = 0, frame = 0
 150              		@ frame_needed = 0, uses_anonymous_args = 0
 151              		@ link register save eliminated.
 152              	.LVL13:
 126:../asf/sam/drivers/rstc/rstc.c **** 	/* Validate the parameters. */
 127:../asf/sam/drivers/rstc/rstc.c **** 	Assert(p_rstc);
 128:../asf/sam/drivers/rstc/rstc.c **** 	
 129:../asf/sam/drivers/rstc/rstc.c **** 	uint32_t mode = p_rstc->RSTC_MR;
ARM GAS  /tmp/ccXVTxD7.s 			page 6


 153              		.loc 1 129 0
 154 0000 8268     		ldr	r2, [r0, #8]
 155              	.LVL14:
 130:../asf/sam/drivers/rstc/rstc.c **** 
 131:../asf/sam/drivers/rstc/rstc.c **** 	mode &= ~RSTC_MR_KEY_Msk;
 132:../asf/sam/drivers/rstc/rstc.c **** 	mode |= (RSTC_MR_URSTIEN | RSTC_KEY);
 156              		.loc 1 132 0
 157 0002 034B     		ldr	r3, .L11
 131:../asf/sam/drivers/rstc/rstc.c **** 	mode |= (RSTC_MR_URSTIEN | RSTC_KEY);
 158              		.loc 1 131 0
 159 0004 22F07F42 		bic	r2, r2, #-16777216
 160              	.LVL15:
 161              		.loc 1 132 0
 162 0008 1343     		orrs	r3, r3, r2
 163              	.LVL16:
 133:../asf/sam/drivers/rstc/rstc.c **** 
 134:../asf/sam/drivers/rstc/rstc.c **** 	p_rstc->RSTC_MR = mode;
 164              		.loc 1 134 0
 165 000a 8360     		str	r3, [r0, #8]
 166 000c 7047     		bx	lr
 167              	.L12:
 168 000e 00BF     		.align	2
 169              	.L11:
 170 0010 100000A5 		.word	-1526726640
 171              		.cfi_endproc
 172              	.LFE145:
 173              		.size	rstc_enable_user_reset_interrupt, .-rstc_enable_user_reset_interrupt
 174              		.section	.text.rstc_disable_user_reset_interrupt,"ax",%progbits
 175              		.align	1
 176              		.p2align 2,,3
 177              		.global	rstc_disable_user_reset_interrupt
 178              		.syntax unified
 179              		.thumb
 180              		.thumb_func
 181              		.fpu fpv5-d16
 182              		.type	rstc_disable_user_reset_interrupt, %function
 183              	rstc_disable_user_reset_interrupt:
 184              	.LFB146:
 135:../asf/sam/drivers/rstc/rstc.c **** }
 136:../asf/sam/drivers/rstc/rstc.c **** 
 137:../asf/sam/drivers/rstc/rstc.c **** /**
 138:../asf/sam/drivers/rstc/rstc.c ****  * \brief Disable the User Reset interrupt.
 139:../asf/sam/drivers/rstc/rstc.c ****  *
 140:../asf/sam/drivers/rstc/rstc.c ****  * \param[in,out] p_rstc Module hardware register base address pointer
 141:../asf/sam/drivers/rstc/rstc.c ****  */
 142:../asf/sam/drivers/rstc/rstc.c **** void rstc_disable_user_reset_interrupt(
 143:../asf/sam/drivers/rstc/rstc.c **** 		Rstc *p_rstc)
 144:../asf/sam/drivers/rstc/rstc.c **** {
 185              		.loc 1 144 0
 186              		.cfi_startproc
 187              		@ args = 0, pretend = 0, frame = 0
 188              		@ frame_needed = 0, uses_anonymous_args = 0
 189              		@ link register save eliminated.
 190              	.LVL17:
 145:../asf/sam/drivers/rstc/rstc.c **** 	/* Validate the parameters. */
 146:../asf/sam/drivers/rstc/rstc.c **** 	Assert(p_rstc);
 147:../asf/sam/drivers/rstc/rstc.c **** 	
ARM GAS  /tmp/ccXVTxD7.s 			page 7


 148:../asf/sam/drivers/rstc/rstc.c **** 	uint32_t mode = p_rstc->RSTC_MR;
 191              		.loc 1 148 0
 192 0000 8268     		ldr	r2, [r0, #8]
 193              	.LVL18:
 149:../asf/sam/drivers/rstc/rstc.c **** 
 150:../asf/sam/drivers/rstc/rstc.c **** 	mode &= ~(RSTC_MR_URSTIEN | RSTC_MR_KEY_Msk);
 194              		.loc 1 150 0
 195 0002 034B     		ldr	r3, .L14
 196 0004 1340     		ands	r3, r3, r2
 197              	.LVL19:
 151:../asf/sam/drivers/rstc/rstc.c **** 	mode |= RSTC_KEY;
 198              		.loc 1 151 0
 199 0006 43F02543 		orr	r3, r3, #-1526726656
 200              	.LVL20:
 152:../asf/sam/drivers/rstc/rstc.c **** 
 153:../asf/sam/drivers/rstc/rstc.c **** 	p_rstc->RSTC_MR = mode;
 201              		.loc 1 153 0
 202 000a 8360     		str	r3, [r0, #8]
 203 000c 7047     		bx	lr
 204              	.L15:
 205 000e 00BF     		.align	2
 206              	.L14:
 207 0010 EFFFFF00 		.word	16777199
 208              		.cfi_endproc
 209              	.LFE146:
 210              		.size	rstc_disable_user_reset_interrupt, .-rstc_disable_user_reset_interrupt
 211              		.section	.text.rstc_start_software_reset,"ax",%progbits
 212              		.align	1
 213              		.p2align 2,,3
 214              		.global	rstc_start_software_reset
 215              		.syntax unified
 216              		.thumb
 217              		.thumb_func
 218              		.fpu fpv5-d16
 219              		.type	rstc_start_software_reset, %function
 220              	rstc_start_software_reset:
 221              	.LFB147:
 154:../asf/sam/drivers/rstc/rstc.c **** }
 155:../asf/sam/drivers/rstc/rstc.c **** 
 156:../asf/sam/drivers/rstc/rstc.c **** /**
 157:../asf/sam/drivers/rstc/rstc.c ****  * \brief Perform a Software Reset.
 158:../asf/sam/drivers/rstc/rstc.c ****  *
 159:../asf/sam/drivers/rstc/rstc.c ****  * \param[out] p_rstc Module hardware register base address pointer
 160:../asf/sam/drivers/rstc/rstc.c ****  */
 161:../asf/sam/drivers/rstc/rstc.c **** void rstc_start_software_reset(
 162:../asf/sam/drivers/rstc/rstc.c **** 		Rstc *p_rstc)
 163:../asf/sam/drivers/rstc/rstc.c **** {
 222              		.loc 1 163 0
 223              		.cfi_startproc
 224              		@ args = 0, pretend = 0, frame = 0
 225              		@ frame_needed = 0, uses_anonymous_args = 0
 226              		@ link register save eliminated.
 227              	.LVL21:
 164:../asf/sam/drivers/rstc/rstc.c **** #if (SAMV71 || SAMV70 || SAMS70 || SAME70)
 165:../asf/sam/drivers/rstc/rstc.c **** 	p_rstc->RSTC_CR = RSTC_KEY | RSTC_CR_PROCRST;
 228              		.loc 1 165 0
 229 0000 014B     		ldr	r3, .L17
ARM GAS  /tmp/ccXVTxD7.s 			page 8


 230 0002 0360     		str	r3, [r0]
 231 0004 7047     		bx	lr
 232              	.L18:
 233 0006 00BF     		.align	2
 234              	.L17:
 235 0008 010000A5 		.word	-1526726655
 236              		.cfi_endproc
 237              	.LFE147:
 238              		.size	rstc_start_software_reset, .-rstc_start_software_reset
 239              		.section	.text.rstc_reset_extern,"ax",%progbits
 240              		.align	1
 241              		.p2align 2,,3
 242              		.global	rstc_reset_extern
 243              		.syntax unified
 244              		.thumb
 245              		.thumb_func
 246              		.fpu fpv5-d16
 247              		.type	rstc_reset_extern, %function
 248              	rstc_reset_extern:
 249              	.LFB148:
 166:../asf/sam/drivers/rstc/rstc.c **** #else
 167:../asf/sam/drivers/rstc/rstc.c **** 	p_rstc->RSTC_CR = RSTC_KEY | RSTC_CR_PROCRST | RSTC_CR_PERRST;
 168:../asf/sam/drivers/rstc/rstc.c **** #endif
 169:../asf/sam/drivers/rstc/rstc.c **** }
 170:../asf/sam/drivers/rstc/rstc.c **** 
 171:../asf/sam/drivers/rstc/rstc.c **** /**
 172:../asf/sam/drivers/rstc/rstc.c ****  * \brief Asserts the NRST pin for external resets.
 173:../asf/sam/drivers/rstc/rstc.c ****  *
 174:../asf/sam/drivers/rstc/rstc.c ****  * \param[out] p_rstc Module hardware register base address pointer
 175:../asf/sam/drivers/rstc/rstc.c ****  */
 176:../asf/sam/drivers/rstc/rstc.c **** void rstc_reset_extern(
 177:../asf/sam/drivers/rstc/rstc.c **** 		Rstc *p_rstc)
 178:../asf/sam/drivers/rstc/rstc.c **** {
 250              		.loc 1 178 0
 251              		.cfi_startproc
 252              		@ args = 0, pretend = 0, frame = 0
 253              		@ frame_needed = 0, uses_anonymous_args = 0
 254              		@ link register save eliminated.
 255              	.LVL22:
 179:../asf/sam/drivers/rstc/rstc.c **** 	p_rstc->RSTC_CR = RSTC_KEY | RSTC_CR_EXTRST;
 256              		.loc 1 179 0
 257 0000 014B     		ldr	r3, .L20
 258 0002 0360     		str	r3, [r0]
 259 0004 7047     		bx	lr
 260              	.L21:
 261 0006 00BF     		.align	2
 262              	.L20:
 263 0008 080000A5 		.word	-1526726648
 264              		.cfi_endproc
 265              	.LFE148:
 266              		.size	rstc_reset_extern, .-rstc_reset_extern
 267              		.section	.text.rstc_get_status,"ax",%progbits
 268              		.align	1
 269              		.p2align 2,,3
 270              		.global	rstc_get_status
 271              		.syntax unified
 272              		.thumb
ARM GAS  /tmp/ccXVTxD7.s 			page 9


 273              		.thumb_func
 274              		.fpu fpv5-d16
 275              		.type	rstc_get_status, %function
 276              	rstc_get_status:
 277              	.LFB149:
 180:../asf/sam/drivers/rstc/rstc.c **** }
 181:../asf/sam/drivers/rstc/rstc.c **** 
 182:../asf/sam/drivers/rstc/rstc.c **** /**
 183:../asf/sam/drivers/rstc/rstc.c ****  * \brief Get the RSTC status.
 184:../asf/sam/drivers/rstc/rstc.c ****  *
 185:../asf/sam/drivers/rstc/rstc.c ****  * \param[in] p_rstc Module hardware register base address pointer
 186:../asf/sam/drivers/rstc/rstc.c ****  *
 187:../asf/sam/drivers/rstc/rstc.c ****  * \return RSTC status.
 188:../asf/sam/drivers/rstc/rstc.c ****  */
 189:../asf/sam/drivers/rstc/rstc.c **** uint32_t rstc_get_status(
 190:../asf/sam/drivers/rstc/rstc.c **** 		Rstc *p_rstc)
 191:../asf/sam/drivers/rstc/rstc.c **** {
 278              		.loc 1 191 0
 279              		.cfi_startproc
 280              		@ args = 0, pretend = 0, frame = 0
 281              		@ frame_needed = 0, uses_anonymous_args = 0
 282              		@ link register save eliminated.
 283              	.LVL23:
 192:../asf/sam/drivers/rstc/rstc.c **** 	return p_rstc->RSTC_SR;
 284              		.loc 1 192 0
 285 0000 4068     		ldr	r0, [r0, #4]
 286              	.LVL24:
 193:../asf/sam/drivers/rstc/rstc.c **** }
 287              		.loc 1 193 0
 288 0002 7047     		bx	lr
 289              		.cfi_endproc
 290              	.LFE149:
 291              		.size	rstc_get_status, .-rstc_get_status
 292              		.section	.text.rstc_get_reset_cause,"ax",%progbits
 293              		.align	1
 294              		.p2align 2,,3
 295              		.global	rstc_get_reset_cause
 296              		.syntax unified
 297              		.thumb
 298              		.thumb_func
 299              		.fpu fpv5-d16
 300              		.type	rstc_get_reset_cause, %function
 301              	rstc_get_reset_cause:
 302              	.LFB150:
 194:../asf/sam/drivers/rstc/rstc.c **** 
 195:../asf/sam/drivers/rstc/rstc.c **** /**
 196:../asf/sam/drivers/rstc/rstc.c ****  * \brief Get the reset cause.
 197:../asf/sam/drivers/rstc/rstc.c ****  *
 198:../asf/sam/drivers/rstc/rstc.c ****  * \param[in] p_rstc Module hardware register base address pointer
 199:../asf/sam/drivers/rstc/rstc.c ****  *
 200:../asf/sam/drivers/rstc/rstc.c ****  * \return The last reset cause.
 201:../asf/sam/drivers/rstc/rstc.c ****  */
 202:../asf/sam/drivers/rstc/rstc.c **** uint32_t rstc_get_reset_cause(
 203:../asf/sam/drivers/rstc/rstc.c **** 		Rstc *p_rstc)
 204:../asf/sam/drivers/rstc/rstc.c **** {
 303              		.loc 1 204 0
 304              		.cfi_startproc
ARM GAS  /tmp/ccXVTxD7.s 			page 10


 305              		@ args = 0, pretend = 0, frame = 0
 306              		@ frame_needed = 0, uses_anonymous_args = 0
 307              		@ link register save eliminated.
 308              	.LVL25:
 205:../asf/sam/drivers/rstc/rstc.c **** 	return (p_rstc->RSTC_SR & RSTC_SR_RSTTYP_Msk);
 309              		.loc 1 205 0
 310 0000 4068     		ldr	r0, [r0, #4]
 311              	.LVL26:
 206:../asf/sam/drivers/rstc/rstc.c **** }
 312              		.loc 1 206 0
 313 0002 00F4E060 		and	r0, r0, #1792
 314 0006 7047     		bx	lr
 315              		.cfi_endproc
 316              	.LFE150:
 317              		.size	rstc_get_reset_cause, .-rstc_get_reset_cause
 318              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 319              		.align	2
 320              		.type	cpu_irq_critical_section_counter, %object
 321              		.size	cpu_irq_critical_section_counter, 4
 322              	cpu_irq_critical_section_counter:
 323 0000 00000000 		.space	4
 324              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 325              		.type	cpu_irq_prev_interrupt_state, %object
 326              		.size	cpu_irq_prev_interrupt_state, 1
 327              	cpu_irq_prev_interrupt_state:
 328 0000 00       		.space	1
 329              		.text
 330              	.Letext0:
 331              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 332              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 333              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 334              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 335              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/rstc
 336              		.file 7 "/usr/include/newlib/sys/lock.h"
 337              		.file 8 "/usr/include/newlib/sys/_types.h"
 338              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 339              		.file 10 "/usr/include/newlib/sys/reent.h"
 340              		.file 11 "/usr/include/newlib/stdlib.h"
 341              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 342              		.section	.debug_info,"",%progbits
 343              	.Ldebug_info0:
 344 0000 FF0A0000 		.4byte	0xaff
 345 0004 0400     		.2byte	0x4
 346 0006 00000000 		.4byte	.Ldebug_abbrev0
 347 000a 04       		.byte	0x4
 348 000b 01       		.uleb128 0x1
 349 000c F1020000 		.4byte	.LASF147
 350 0010 0C       		.byte	0xc
 351 0011 D0060000 		.4byte	.LASF148
 352 0015 B0050000 		.4byte	.LASF149
 353 0019 00000000 		.4byte	.Ldebug_ranges0+0
 354 001d 00000000 		.4byte	0
 355 0021 00000000 		.4byte	.Ldebug_line0
 356 0025 02       		.uleb128 0x2
 357 0026 04       		.byte	0x4
 358 0027 05       		.byte	0x5
 359 0028 696E7400 		.ascii	"int\000"
ARM GAS  /tmp/ccXVTxD7.s 			page 11


 360 002c 03       		.uleb128 0x3
 361 002d 04       		.byte	0x4
 362 002e 07       		.byte	0x7
 363 002f 34050000 		.4byte	.LASF0
 364 0033 03       		.uleb128 0x3
 365 0034 01       		.byte	0x1
 366 0035 06       		.byte	0x6
 367 0036 D3000000 		.4byte	.LASF1
 368 003a 03       		.uleb128 0x3
 369 003b 01       		.byte	0x1
 370 003c 08       		.byte	0x8
 371 003d 23040000 		.4byte	.LASF2
 372 0041 03       		.uleb128 0x3
 373 0042 02       		.byte	0x2
 374 0043 05       		.byte	0x5
 375 0044 0C000000 		.4byte	.LASF3
 376 0048 03       		.uleb128 0x3
 377 0049 02       		.byte	0x2
 378 004a 07       		.byte	0x7
 379 004b B5010000 		.4byte	.LASF4
 380 004f 04       		.uleb128 0x4
 381 0050 47050000 		.4byte	.LASF6
 382 0054 02       		.byte	0x2
 383 0055 3F       		.byte	0x3f
 384 0056 5A000000 		.4byte	0x5a
 385 005a 03       		.uleb128 0x3
 386 005b 04       		.byte	0x4
 387 005c 05       		.byte	0x5
 388 005d 30010000 		.4byte	.LASF5
 389 0061 04       		.uleb128 0x4
 390 0062 CD010000 		.4byte	.LASF7
 391 0066 02       		.byte	0x2
 392 0067 41       		.byte	0x41
 393 0068 6C000000 		.4byte	0x6c
 394 006c 03       		.uleb128 0x3
 395 006d 04       		.byte	0x4
 396 006e 07       		.byte	0x7
 397 006f 2C020000 		.4byte	.LASF8
 398 0073 03       		.uleb128 0x3
 399 0074 08       		.byte	0x8
 400 0075 05       		.byte	0x5
 401 0076 59010000 		.4byte	.LASF9
 402 007a 03       		.uleb128 0x3
 403 007b 08       		.byte	0x8
 404 007c 07       		.byte	0x7
 405 007d EC000000 		.4byte	.LASF10
 406 0081 04       		.uleb128 0x4
 407 0082 1B040000 		.4byte	.LASF11
 408 0086 03       		.byte	0x3
 409 0087 2C       		.byte	0x2c
 410 0088 4F000000 		.4byte	0x4f
 411 008c 05       		.uleb128 0x5
 412 008d 81000000 		.4byte	0x81
 413 0091 04       		.uleb128 0x4
 414 0092 11060000 		.4byte	.LASF12
 415 0096 03       		.byte	0x3
 416 0097 30       		.byte	0x30
ARM GAS  /tmp/ccXVTxD7.s 			page 12


 417 0098 61000000 		.4byte	0x61
 418 009c 05       		.uleb128 0x5
 419 009d 91000000 		.4byte	0x91
 420 00a1 06       		.uleb128 0x6
 421 00a2 9C000000 		.4byte	0x9c
 422 00a6 06       		.uleb128 0x6
 423 00a7 91000000 		.4byte	0x91
 424 00ab 07       		.uleb128 0x7
 425 00ac 04       		.byte	0x4
 426 00ad 03       		.uleb128 0x3
 427 00ae 04       		.byte	0x4
 428 00af 07       		.byte	0x7
 429 00b0 E8020000 		.4byte	.LASF13
 430 00b4 08       		.uleb128 0x8
 431 00b5 92000000 		.4byte	.LASF14
 432 00b9 04       		.byte	0x4
 433 00ba 6508     		.2byte	0x865
 434 00bc 8C000000 		.4byte	0x8c
 435 00c0 09       		.uleb128 0x9
 436 00c1 0C020000 		.4byte	.LASF15
 437 00c5 05       		.byte	0x5
 438 00c6 3A       		.byte	0x3a
 439 00c7 91000000 		.4byte	0x91
 440 00cb 0A       		.uleb128 0xa
 441 00cc 0C       		.byte	0xc
 442 00cd 06       		.byte	0x6
 443 00ce 38       		.byte	0x38
 444 00cf F8000000 		.4byte	0xf8
 445 00d3 0B       		.uleb128 0xb
 446 00d4 E4040000 		.4byte	.LASF16
 447 00d8 06       		.byte	0x6
 448 00d9 39       		.byte	0x39
 449 00da 9C000000 		.4byte	0x9c
 450 00de 00       		.byte	0
 451 00df 0B       		.uleb128 0xb
 452 00e0 A8050000 		.4byte	.LASF17
 453 00e4 06       		.byte	0x6
 454 00e5 3A       		.byte	0x3a
 455 00e6 A1000000 		.4byte	0xa1
 456 00ea 04       		.byte	0x4
 457 00eb 0B       		.uleb128 0xb
 458 00ec 37040000 		.4byte	.LASF18
 459 00f0 06       		.byte	0x6
 460 00f1 3B       		.byte	0x3b
 461 00f2 9C000000 		.4byte	0x9c
 462 00f6 08       		.byte	0x8
 463 00f7 00       		.byte	0
 464 00f8 04       		.uleb128 0x4
 465 00f9 8D000000 		.4byte	.LASF19
 466 00fd 06       		.byte	0x6
 467 00fe 3C       		.byte	0x3c
 468 00ff CB000000 		.4byte	0xcb
 469 0103 04       		.uleb128 0x4
 470 0104 FD030000 		.4byte	.LASF20
 471 0108 07       		.byte	0x7
 472 0109 07       		.byte	0x7
 473 010a 25000000 		.4byte	0x25
ARM GAS  /tmp/ccXVTxD7.s 			page 13


 474 010e 04       		.uleb128 0x4
 475 010f C5000000 		.4byte	.LASF21
 476 0113 08       		.byte	0x8
 477 0114 2C       		.byte	0x2c
 478 0115 5A000000 		.4byte	0x5a
 479 0119 04       		.uleb128 0x4
 480 011a 0C050000 		.4byte	.LASF22
 481 011e 08       		.byte	0x8
 482 011f 72       		.byte	0x72
 483 0120 5A000000 		.4byte	0x5a
 484 0124 0C       		.uleb128 0xc
 485 0125 CC030000 		.4byte	.LASF23
 486 0129 09       		.byte	0x9
 487 012a 6501     		.2byte	0x165
 488 012c 2C000000 		.4byte	0x2c
 489 0130 0D       		.uleb128 0xd
 490 0131 04       		.byte	0x4
 491 0132 08       		.byte	0x8
 492 0133 A6       		.byte	0xa6
 493 0134 4F010000 		.4byte	0x14f
 494 0138 0E       		.uleb128 0xe
 495 0139 82020000 		.4byte	.LASF24
 496 013d 08       		.byte	0x8
 497 013e A8       		.byte	0xa8
 498 013f 24010000 		.4byte	0x124
 499 0143 0E       		.uleb128 0xe
 500 0144 05020000 		.4byte	.LASF25
 501 0148 08       		.byte	0x8
 502 0149 A9       		.byte	0xa9
 503 014a 4F010000 		.4byte	0x14f
 504 014e 00       		.byte	0
 505 014f 0F       		.uleb128 0xf
 506 0150 3A000000 		.4byte	0x3a
 507 0154 5F010000 		.4byte	0x15f
 508 0158 10       		.uleb128 0x10
 509 0159 AD000000 		.4byte	0xad
 510 015d 03       		.byte	0x3
 511 015e 00       		.byte	0
 512 015f 0A       		.uleb128 0xa
 513 0160 08       		.byte	0x8
 514 0161 08       		.byte	0x8
 515 0162 A3       		.byte	0xa3
 516 0163 80010000 		.4byte	0x180
 517 0167 0B       		.uleb128 0xb
 518 0168 EC040000 		.4byte	.LASF26
 519 016c 08       		.byte	0x8
 520 016d A5       		.byte	0xa5
 521 016e 25000000 		.4byte	0x25
 522 0172 00       		.byte	0
 523 0173 0B       		.uleb128 0xb
 524 0174 F4040000 		.4byte	.LASF27
 525 0178 08       		.byte	0x8
 526 0179 AA       		.byte	0xaa
 527 017a 30010000 		.4byte	0x130
 528 017e 04       		.byte	0x4
 529 017f 00       		.byte	0
 530 0180 04       		.uleb128 0x4
ARM GAS  /tmp/ccXVTxD7.s 			page 14


 531 0181 7B040000 		.4byte	.LASF28
 532 0185 08       		.byte	0x8
 533 0186 AB       		.byte	0xab
 534 0187 5F010000 		.4byte	0x15f
 535 018b 04       		.uleb128 0x4
 536 018c 48040000 		.4byte	.LASF29
 537 0190 08       		.byte	0x8
 538 0191 AF       		.byte	0xaf
 539 0192 03010000 		.4byte	0x103
 540 0196 04       		.uleb128 0x4
 541 0197 DF050000 		.4byte	.LASF30
 542 019b 0A       		.byte	0xa
 543 019c 16       		.byte	0x16
 544 019d 6C000000 		.4byte	0x6c
 545 01a1 11       		.uleb128 0x11
 546 01a2 F2010000 		.4byte	.LASF35
 547 01a6 18       		.byte	0x18
 548 01a7 0A       		.byte	0xa
 549 01a8 2D       		.byte	0x2d
 550 01a9 F4010000 		.4byte	0x1f4
 551 01ad 0B       		.uleb128 0xb
 552 01ae 51050000 		.4byte	.LASF31
 553 01b2 0A       		.byte	0xa
 554 01b3 2F       		.byte	0x2f
 555 01b4 F4010000 		.4byte	0x1f4
 556 01b8 00       		.byte	0
 557 01b9 12       		.uleb128 0x12
 558 01ba 5F6B00   		.ascii	"_k\000"
 559 01bd 0A       		.byte	0xa
 560 01be 30       		.byte	0x30
 561 01bf 25000000 		.4byte	0x25
 562 01c3 04       		.byte	0x4
 563 01c4 0B       		.uleb128 0xb
 564 01c5 D5040000 		.4byte	.LASF32
 565 01c9 0A       		.byte	0xa
 566 01ca 30       		.byte	0x30
 567 01cb 25000000 		.4byte	0x25
 568 01cf 08       		.byte	0x8
 569 01d0 0B       		.uleb128 0xb
 570 01d1 D8010000 		.4byte	.LASF33
 571 01d5 0A       		.byte	0xa
 572 01d6 30       		.byte	0x30
 573 01d7 25000000 		.4byte	0x25
 574 01db 0C       		.byte	0xc
 575 01dc 0B       		.uleb128 0xb
 576 01dd 3E060000 		.4byte	.LASF34
 577 01e1 0A       		.byte	0xa
 578 01e2 30       		.byte	0x30
 579 01e3 25000000 		.4byte	0x25
 580 01e7 10       		.byte	0x10
 581 01e8 12       		.uleb128 0x12
 582 01e9 5F7800   		.ascii	"_x\000"
 583 01ec 0A       		.byte	0xa
 584 01ed 31       		.byte	0x31
 585 01ee FA010000 		.4byte	0x1fa
 586 01f2 14       		.byte	0x14
 587 01f3 00       		.byte	0
ARM GAS  /tmp/ccXVTxD7.s 			page 15


 588 01f4 13       		.uleb128 0x13
 589 01f5 04       		.byte	0x4
 590 01f6 A1010000 		.4byte	0x1a1
 591 01fa 0F       		.uleb128 0xf
 592 01fb 96010000 		.4byte	0x196
 593 01ff 0A020000 		.4byte	0x20a
 594 0203 10       		.uleb128 0x10
 595 0204 AD000000 		.4byte	0xad
 596 0208 00       		.byte	0
 597 0209 00       		.byte	0
 598 020a 11       		.uleb128 0x11
 599 020b 00020000 		.4byte	.LASF36
 600 020f 24       		.byte	0x24
 601 0210 0A       		.byte	0xa
 602 0211 35       		.byte	0x35
 603 0212 83020000 		.4byte	0x283
 604 0216 0B       		.uleb128 0xb
 605 0217 BC000000 		.4byte	.LASF37
 606 021b 0A       		.byte	0xa
 607 021c 37       		.byte	0x37
 608 021d 25000000 		.4byte	0x25
 609 0221 00       		.byte	0
 610 0222 0B       		.uleb128 0xb
 611 0223 C7060000 		.4byte	.LASF38
 612 0227 0A       		.byte	0xa
 613 0228 38       		.byte	0x38
 614 0229 25000000 		.4byte	0x25
 615 022d 04       		.byte	0x4
 616 022e 0B       		.uleb128 0xb
 617 022f 03010000 		.4byte	.LASF39
 618 0233 0A       		.byte	0xa
 619 0234 39       		.byte	0x39
 620 0235 25000000 		.4byte	0x25
 621 0239 08       		.byte	0x8
 622 023a 0B       		.uleb128 0xb
 623 023b 02070000 		.4byte	.LASF40
 624 023f 0A       		.byte	0xa
 625 0240 3A       		.byte	0x3a
 626 0241 25000000 		.4byte	0x25
 627 0245 0C       		.byte	0xc
 628 0246 0B       		.uleb128 0xb
 629 0247 97030000 		.4byte	.LASF41
 630 024b 0A       		.byte	0xa
 631 024c 3B       		.byte	0x3b
 632 024d 25000000 		.4byte	0x25
 633 0251 10       		.byte	0x10
 634 0252 0B       		.uleb128 0xb
 635 0253 A7020000 		.4byte	.LASF42
 636 0257 0A       		.byte	0xa
 637 0258 3C       		.byte	0x3c
 638 0259 25000000 		.4byte	0x25
 639 025d 14       		.byte	0x14
 640 025e 0B       		.uleb128 0xb
 641 025f 02050000 		.4byte	.LASF43
 642 0263 0A       		.byte	0xa
 643 0264 3D       		.byte	0x3d
 644 0265 25000000 		.4byte	0x25
ARM GAS  /tmp/ccXVTxD7.s 			page 16


 645 0269 18       		.byte	0x18
 646 026a 0B       		.uleb128 0xb
 647 026b 51040000 		.4byte	.LASF44
 648 026f 0A       		.byte	0xa
 649 0270 3E       		.byte	0x3e
 650 0271 25000000 		.4byte	0x25
 651 0275 1C       		.byte	0x1c
 652 0276 0B       		.uleb128 0xb
 653 0277 AD060000 		.4byte	.LASF45
 654 027b 0A       		.byte	0xa
 655 027c 3F       		.byte	0x3f
 656 027d 25000000 		.4byte	0x25
 657 0281 20       		.byte	0x20
 658 0282 00       		.byte	0
 659 0283 14       		.uleb128 0x14
 660 0284 12010000 		.4byte	.LASF46
 661 0288 0801     		.2byte	0x108
 662 028a 0A       		.byte	0xa
 663 028b 48       		.byte	0x48
 664 028c C3020000 		.4byte	0x2c3
 665 0290 0B       		.uleb128 0xb
 666 0291 16000000 		.4byte	.LASF47
 667 0295 0A       		.byte	0xa
 668 0296 49       		.byte	0x49
 669 0297 C3020000 		.4byte	0x2c3
 670 029b 00       		.byte	0
 671 029c 0B       		.uleb128 0xb
 672 029d 00000000 		.4byte	.LASF48
 673 02a1 0A       		.byte	0xa
 674 02a2 4A       		.byte	0x4a
 675 02a3 C3020000 		.4byte	0x2c3
 676 02a7 80       		.byte	0x80
 677 02a8 15       		.uleb128 0x15
 678 02a9 85050000 		.4byte	.LASF49
 679 02ad 0A       		.byte	0xa
 680 02ae 4C       		.byte	0x4c
 681 02af 96010000 		.4byte	0x196
 682 02b3 0001     		.2byte	0x100
 683 02b5 15       		.uleb128 0x15
 684 02b6 40010000 		.4byte	.LASF50
 685 02ba 0A       		.byte	0xa
 686 02bb 4F       		.byte	0x4f
 687 02bc 96010000 		.4byte	0x196
 688 02c0 0401     		.2byte	0x104
 689 02c2 00       		.byte	0
 690 02c3 0F       		.uleb128 0xf
 691 02c4 AB000000 		.4byte	0xab
 692 02c8 D3020000 		.4byte	0x2d3
 693 02cc 10       		.uleb128 0x10
 694 02cd AD000000 		.4byte	0xad
 695 02d1 1F       		.byte	0x1f
 696 02d2 00       		.byte	0
 697 02d3 14       		.uleb128 0x14
 698 02d4 A0030000 		.4byte	.LASF51
 699 02d8 9001     		.2byte	0x190
 700 02da 0A       		.byte	0xa
 701 02db 5B       		.byte	0x5b
ARM GAS  /tmp/ccXVTxD7.s 			page 17


 702 02dc 11030000 		.4byte	0x311
 703 02e0 0B       		.uleb128 0xb
 704 02e1 51050000 		.4byte	.LASF31
 705 02e5 0A       		.byte	0xa
 706 02e6 5C       		.byte	0x5c
 707 02e7 11030000 		.4byte	0x311
 708 02eb 00       		.byte	0
 709 02ec 0B       		.uleb128 0xb
 710 02ed 44020000 		.4byte	.LASF52
 711 02f1 0A       		.byte	0xa
 712 02f2 5D       		.byte	0x5d
 713 02f3 25000000 		.4byte	0x25
 714 02f7 04       		.byte	0x4
 715 02f8 0B       		.uleb128 0xb
 716 02f9 C8010000 		.4byte	.LASF53
 717 02fd 0A       		.byte	0xa
 718 02fe 5F       		.byte	0x5f
 719 02ff 17030000 		.4byte	0x317
 720 0303 08       		.byte	0x8
 721 0304 0B       		.uleb128 0xb
 722 0305 12010000 		.4byte	.LASF46
 723 0309 0A       		.byte	0xa
 724 030a 60       		.byte	0x60
 725 030b 83020000 		.4byte	0x283
 726 030f 88       		.byte	0x88
 727 0310 00       		.byte	0
 728 0311 13       		.uleb128 0x13
 729 0312 04       		.byte	0x4
 730 0313 D3020000 		.4byte	0x2d3
 731 0317 0F       		.uleb128 0xf
 732 0318 27030000 		.4byte	0x327
 733 031c 27030000 		.4byte	0x327
 734 0320 10       		.uleb128 0x10
 735 0321 AD000000 		.4byte	0xad
 736 0325 1F       		.byte	0x1f
 737 0326 00       		.byte	0
 738 0327 13       		.uleb128 0x13
 739 0328 04       		.byte	0x4
 740 0329 2D030000 		.4byte	0x32d
 741 032d 16       		.uleb128 0x16
 742 032e 11       		.uleb128 0x11
 743 032f 5B040000 		.4byte	.LASF54
 744 0333 08       		.byte	0x8
 745 0334 0A       		.byte	0xa
 746 0335 73       		.byte	0x73
 747 0336 53030000 		.4byte	0x353
 748 033a 0B       		.uleb128 0xb
 749 033b 0F040000 		.4byte	.LASF55
 750 033f 0A       		.byte	0xa
 751 0340 74       		.byte	0x74
 752 0341 53030000 		.4byte	0x353
 753 0345 00       		.byte	0
 754 0346 0B       		.uleb128 0xb
 755 0347 2E050000 		.4byte	.LASF56
 756 034b 0A       		.byte	0xa
 757 034c 75       		.byte	0x75
 758 034d 25000000 		.4byte	0x25
ARM GAS  /tmp/ccXVTxD7.s 			page 18


 759 0351 04       		.byte	0x4
 760 0352 00       		.byte	0
 761 0353 13       		.uleb128 0x13
 762 0354 04       		.byte	0x4
 763 0355 3A000000 		.4byte	0x3a
 764 0359 11       		.uleb128 0x11
 765 035a 86040000 		.4byte	.LASF57
 766 035e 68       		.byte	0x68
 767 035f 0A       		.byte	0xa
 768 0360 B3       		.byte	0xb3
 769 0361 83040000 		.4byte	0x483
 770 0365 12       		.uleb128 0x12
 771 0366 5F7000   		.ascii	"_p\000"
 772 0369 0A       		.byte	0xa
 773 036a B4       		.byte	0xb4
 774 036b 53030000 		.4byte	0x353
 775 036f 00       		.byte	0
 776 0370 12       		.uleb128 0x12
 777 0371 5F7200   		.ascii	"_r\000"
 778 0374 0A       		.byte	0xa
 779 0375 B5       		.byte	0xb5
 780 0376 25000000 		.4byte	0x25
 781 037a 04       		.byte	0x4
 782 037b 12       		.uleb128 0x12
 783 037c 5F7700   		.ascii	"_w\000"
 784 037f 0A       		.byte	0xa
 785 0380 B6       		.byte	0xb6
 786 0381 25000000 		.4byte	0x25
 787 0385 08       		.byte	0x8
 788 0386 0B       		.uleb128 0xb
 789 0387 39010000 		.4byte	.LASF58
 790 038b 0A       		.byte	0xa
 791 038c B7       		.byte	0xb7
 792 038d 41000000 		.4byte	0x41
 793 0391 0C       		.byte	0xc
 794 0392 0B       		.uleb128 0xb
 795 0393 3E020000 		.4byte	.LASF59
 796 0397 0A       		.byte	0xa
 797 0398 B8       		.byte	0xb8
 798 0399 41000000 		.4byte	0x41
 799 039d 0E       		.byte	0xe
 800 039e 12       		.uleb128 0x12
 801 039f 5F626600 		.ascii	"_bf\000"
 802 03a3 0A       		.byte	0xa
 803 03a4 B9       		.byte	0xb9
 804 03a5 2E030000 		.4byte	0x32e
 805 03a9 10       		.byte	0x10
 806 03aa 0B       		.uleb128 0xb
 807 03ab 84000000 		.4byte	.LASF60
 808 03af 0A       		.byte	0xa
 809 03b0 BA       		.byte	0xba
 810 03b1 25000000 		.4byte	0x25
 811 03b5 18       		.byte	0x18
 812 03b6 0B       		.uleb128 0xb
 813 03b7 20010000 		.4byte	.LASF61
 814 03bb 0A       		.byte	0xa
 815 03bc C1       		.byte	0xc1
ARM GAS  /tmp/ccXVTxD7.s 			page 19


 816 03bd AB000000 		.4byte	0xab
 817 03c1 1C       		.byte	0x1c
 818 03c2 0B       		.uleb128 0xb
 819 03c3 FA010000 		.4byte	.LASF62
 820 03c7 0A       		.byte	0xa
 821 03c8 C3       		.byte	0xc3
 822 03c9 F0050000 		.4byte	0x5f0
 823 03cd 20       		.byte	0x20
 824 03ce 0B       		.uleb128 0xb
 825 03cf A0020000 		.4byte	.LASF63
 826 03d3 0A       		.byte	0xa
 827 03d4 C5       		.byte	0xc5
 828 03d5 1A060000 		.4byte	0x61a
 829 03d9 24       		.byte	0x24
 830 03da 0B       		.uleb128 0xb
 831 03db FC040000 		.4byte	.LASF64
 832 03df 0A       		.byte	0xa
 833 03e0 C8       		.byte	0xc8
 834 03e1 3E060000 		.4byte	0x63e
 835 03e5 28       		.byte	0x28
 836 03e6 0B       		.uleb128 0xb
 837 03e7 CC000000 		.4byte	.LASF65
 838 03eb 0A       		.byte	0xa
 839 03ec C9       		.byte	0xc9
 840 03ed 58060000 		.4byte	0x658
 841 03f1 2C       		.byte	0x2c
 842 03f2 12       		.uleb128 0x12
 843 03f3 5F756200 		.ascii	"_ub\000"
 844 03f7 0A       		.byte	0xa
 845 03f8 CC       		.byte	0xcc
 846 03f9 2E030000 		.4byte	0x32e
 847 03fd 30       		.byte	0x30
 848 03fe 12       		.uleb128 0x12
 849 03ff 5F757000 		.ascii	"_up\000"
 850 0403 0A       		.byte	0xa
 851 0404 CD       		.byte	0xcd
 852 0405 53030000 		.4byte	0x353
 853 0409 38       		.byte	0x38
 854 040a 12       		.uleb128 0x12
 855 040b 5F757200 		.ascii	"_ur\000"
 856 040f 0A       		.byte	0xa
 857 0410 CE       		.byte	0xce
 858 0411 25000000 		.4byte	0x25
 859 0415 3C       		.byte	0x3c
 860 0416 0B       		.uleb128 0xb
 861 0417 E6000000 		.4byte	.LASF66
 862 041b 0A       		.byte	0xa
 863 041c D1       		.byte	0xd1
 864 041d 5E060000 		.4byte	0x65e
 865 0421 40       		.byte	0x40
 866 0422 0B       		.uleb128 0xb
 867 0423 9F060000 		.4byte	.LASF67
 868 0427 0A       		.byte	0xa
 869 0428 D2       		.byte	0xd2
 870 0429 6E060000 		.4byte	0x66e
 871 042d 43       		.byte	0x43
 872 042e 12       		.uleb128 0x12
ARM GAS  /tmp/ccXVTxD7.s 			page 20


 873 042f 5F6C6200 		.ascii	"_lb\000"
 874 0433 0A       		.byte	0xa
 875 0434 D5       		.byte	0xd5
 876 0435 2E030000 		.4byte	0x32e
 877 0439 44       		.byte	0x44
 878 043a 0B       		.uleb128 0xb
 879 043b 20050000 		.4byte	.LASF68
 880 043f 0A       		.byte	0xa
 881 0440 D8       		.byte	0xd8
 882 0441 25000000 		.4byte	0x25
 883 0445 4C       		.byte	0x4c
 884 0446 0B       		.uleb128 0xb
 885 0447 76010000 		.4byte	.LASF69
 886 044b 0A       		.byte	0xa
 887 044c D9       		.byte	0xd9
 888 044d 0E010000 		.4byte	0x10e
 889 0451 50       		.byte	0x50
 890 0452 0B       		.uleb128 0xb
 891 0453 49020000 		.4byte	.LASF70
 892 0457 0A       		.byte	0xa
 893 0458 DC       		.byte	0xdc
 894 0459 A1040000 		.4byte	0x4a1
 895 045d 54       		.byte	0x54
 896 045e 0B       		.uleb128 0xb
 897 045f 94020000 		.4byte	.LASF71
 898 0463 0A       		.byte	0xa
 899 0464 E0       		.byte	0xe0
 900 0465 8B010000 		.4byte	0x18b
 901 0469 58       		.byte	0x58
 902 046a 0B       		.uleb128 0xb
 903 046b 8E040000 		.4byte	.LASF72
 904 046f 0A       		.byte	0xa
 905 0470 E2       		.byte	0xe2
 906 0471 80010000 		.4byte	0x180
 907 0475 5C       		.byte	0x5c
 908 0476 0B       		.uleb128 0xb
 909 0477 62040000 		.4byte	.LASF73
 910 047b 0A       		.byte	0xa
 911 047c E3       		.byte	0xe3
 912 047d 25000000 		.4byte	0x25
 913 0481 64       		.byte	0x64
 914 0482 00       		.byte	0
 915 0483 17       		.uleb128 0x17
 916 0484 25000000 		.4byte	0x25
 917 0488 A1040000 		.4byte	0x4a1
 918 048c 18       		.uleb128 0x18
 919 048d A1040000 		.4byte	0x4a1
 920 0491 18       		.uleb128 0x18
 921 0492 AB000000 		.4byte	0xab
 922 0496 18       		.uleb128 0x18
 923 0497 DE050000 		.4byte	0x5de
 924 049b 18       		.uleb128 0x18
 925 049c 25000000 		.4byte	0x25
 926 04a0 00       		.byte	0
 927 04a1 13       		.uleb128 0x13
 928 04a2 04       		.byte	0x4
 929 04a3 AC040000 		.4byte	0x4ac
ARM GAS  /tmp/ccXVTxD7.s 			page 21


 930 04a7 06       		.uleb128 0x6
 931 04a8 A1040000 		.4byte	0x4a1
 932 04ac 19       		.uleb128 0x19
 933 04ad DD040000 		.4byte	.LASF74
 934 04b1 2804     		.2byte	0x428
 935 04b3 0A       		.byte	0xa
 936 04b4 3802     		.2byte	0x238
 937 04b6 DE050000 		.4byte	0x5de
 938 04ba 1A       		.uleb128 0x1a
 939 04bb 14050000 		.4byte	.LASF75
 940 04bf 0A       		.byte	0xa
 941 04c0 3A02     		.2byte	0x23a
 942 04c2 25000000 		.4byte	0x25
 943 04c6 00       		.byte	0
 944 04c7 1A       		.uleb128 0x1a
 945 04c8 48010000 		.4byte	.LASF76
 946 04cc 0A       		.byte	0xa
 947 04cd 3F02     		.2byte	0x23f
 948 04cf C5060000 		.4byte	0x6c5
 949 04d3 04       		.byte	0x4
 950 04d4 1A       		.uleb128 0x1a
 951 04d5 1C020000 		.4byte	.LASF77
 952 04d9 0A       		.byte	0xa
 953 04da 3F02     		.2byte	0x23f
 954 04dc C5060000 		.4byte	0x6c5
 955 04e0 08       		.byte	0x8
 956 04e1 1A       		.uleb128 0x1a
 957 04e2 EA010000 		.4byte	.LASF78
 958 04e6 0A       		.byte	0xa
 959 04e7 3F02     		.2byte	0x23f
 960 04e9 C5060000 		.4byte	0x6c5
 961 04ed 0C       		.byte	0xc
 962 04ee 1A       		.uleb128 0x1a
 963 04ef A4040000 		.4byte	.LASF79
 964 04f3 0A       		.byte	0xa
 965 04f4 4102     		.2byte	0x241
 966 04f6 25000000 		.4byte	0x25
 967 04fa 10       		.byte	0x10
 968 04fb 1A       		.uleb128 0x1a
 969 04fc 26000000 		.4byte	.LASF80
 970 0500 0A       		.byte	0xa
 971 0501 4202     		.2byte	0x242
 972 0503 A7080000 		.4byte	0x8a7
 973 0507 14       		.byte	0x14
 974 0508 1A       		.uleb128 0x1a
 975 0509 FF050000 		.4byte	.LASF81
 976 050d 0A       		.byte	0xa
 977 050e 4402     		.2byte	0x244
 978 0510 25000000 		.4byte	0x25
 979 0514 30       		.byte	0x30
 980 0515 1A       		.uleb128 0x1a
 981 0516 BB040000 		.4byte	.LASF82
 982 051a 0A       		.byte	0xa
 983 051b 4502     		.2byte	0x245
 984 051d 14060000 		.4byte	0x614
 985 0521 34       		.byte	0x34
 986 0522 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccXVTxD7.s 			page 22


 987 0523 B2030000 		.4byte	.LASF83
 988 0527 0A       		.byte	0xa
 989 0528 4702     		.2byte	0x247
 990 052a 25000000 		.4byte	0x25
 991 052e 38       		.byte	0x38
 992 052f 1A       		.uleb128 0x1a
 993 0530 CB040000 		.4byte	.LASF84
 994 0534 0A       		.byte	0xa
 995 0535 4902     		.2byte	0x249
 996 0537 C2080000 		.4byte	0x8c2
 997 053b 3C       		.byte	0x3c
 998 053c 1A       		.uleb128 0x1a
 999 053d 7A020000 		.4byte	.LASF85
 1000 0541 0A       		.byte	0xa
 1001 0542 4C02     		.2byte	0x24c
 1002 0544 F4010000 		.4byte	0x1f4
 1003 0548 40       		.byte	0x40
 1004 0549 1A       		.uleb128 0x1a
 1005 054a 4F010000 		.4byte	.LASF86
 1006 054e 0A       		.byte	0xa
 1007 054f 4D02     		.2byte	0x24d
 1008 0551 25000000 		.4byte	0x25
 1009 0555 44       		.byte	0x44
 1010 0556 1A       		.uleb128 0x1a
 1011 0557 FD060000 		.4byte	.LASF87
 1012 055b 0A       		.byte	0xa
 1013 055c 4E02     		.2byte	0x24e
 1014 055e F4010000 		.4byte	0x1f4
 1015 0562 48       		.byte	0x48
 1016 0563 1A       		.uleb128 0x1a
 1017 0564 6A040000 		.4byte	.LASF88
 1018 0568 0A       		.byte	0xa
 1019 0569 4F02     		.2byte	0x24f
 1020 056b C8080000 		.4byte	0x8c8
 1021 056f 4C       		.byte	0x4c
 1022 0570 1A       		.uleb128 0x1a
 1023 0571 24020000 		.4byte	.LASF89
 1024 0575 0A       		.byte	0xa
 1025 0576 5202     		.2byte	0x252
 1026 0578 25000000 		.4byte	0x25
 1027 057c 50       		.byte	0x50
 1028 057d 1A       		.uleb128 0x1a
 1029 057e 6E010000 		.4byte	.LASF90
 1030 0582 0A       		.byte	0xa
 1031 0583 5302     		.2byte	0x253
 1032 0585 DE050000 		.4byte	0x5de
 1033 0589 54       		.byte	0x54
 1034 058a 1A       		.uleb128 0x1a
 1035 058b 8F020000 		.4byte	.LASF91
 1036 058f 0A       		.byte	0xa
 1037 0590 7602     		.2byte	0x276
 1038 0592 85080000 		.4byte	0x885
 1039 0596 58       		.byte	0x58
 1040 0597 1B       		.uleb128 0x1b
 1041 0598 A0030000 		.4byte	.LASF51
 1042 059c 0A       		.byte	0xa
 1043 059d 7A02     		.2byte	0x27a
ARM GAS  /tmp/ccXVTxD7.s 			page 23


 1044 059f 11030000 		.4byte	0x311
 1045 05a3 4801     		.2byte	0x148
 1046 05a5 1B       		.uleb128 0x1b
 1047 05a6 3E000000 		.4byte	.LASF92
 1048 05aa 0A       		.byte	0xa
 1049 05ab 7B02     		.2byte	0x27b
 1050 05ad D3020000 		.4byte	0x2d3
 1051 05b1 4C01     		.2byte	0x14c
 1052 05b3 1B       		.uleb128 0x1b
 1053 05b4 74060000 		.4byte	.LASF93
 1054 05b8 0A       		.byte	0xa
 1055 05b9 7F02     		.2byte	0x27f
 1056 05bb D9080000 		.4byte	0x8d9
 1057 05bf DC02     		.2byte	0x2dc
 1058 05c1 1B       		.uleb128 0x1b
 1059 05c2 28010000 		.4byte	.LASF94
 1060 05c6 0A       		.byte	0xa
 1061 05c7 8402     		.2byte	0x284
 1062 05c9 8A060000 		.4byte	0x68a
 1063 05cd E002     		.2byte	0x2e0
 1064 05cf 1B       		.uleb128 0x1b
 1065 05d0 0D010000 		.4byte	.LASF95
 1066 05d4 0A       		.byte	0xa
 1067 05d5 8502     		.2byte	0x285
 1068 05d7 E5080000 		.4byte	0x8e5
 1069 05db EC02     		.2byte	0x2ec
 1070 05dd 00       		.byte	0
 1071 05de 13       		.uleb128 0x13
 1072 05df 04       		.byte	0x4
 1073 05e0 E4050000 		.4byte	0x5e4
 1074 05e4 03       		.uleb128 0x3
 1075 05e5 01       		.byte	0x1
 1076 05e6 08       		.byte	0x8
 1077 05e7 1B050000 		.4byte	.LASF96
 1078 05eb 06       		.uleb128 0x6
 1079 05ec E4050000 		.4byte	0x5e4
 1080 05f0 13       		.uleb128 0x13
 1081 05f1 04       		.byte	0x4
 1082 05f2 83040000 		.4byte	0x483
 1083 05f6 17       		.uleb128 0x17
 1084 05f7 25000000 		.4byte	0x25
 1085 05fb 14060000 		.4byte	0x614
 1086 05ff 18       		.uleb128 0x18
 1087 0600 A1040000 		.4byte	0x4a1
 1088 0604 18       		.uleb128 0x18
 1089 0605 AB000000 		.4byte	0xab
 1090 0609 18       		.uleb128 0x18
 1091 060a 14060000 		.4byte	0x614
 1092 060e 18       		.uleb128 0x18
 1093 060f 25000000 		.4byte	0x25
 1094 0613 00       		.byte	0
 1095 0614 13       		.uleb128 0x13
 1096 0615 04       		.byte	0x4
 1097 0616 EB050000 		.4byte	0x5eb
 1098 061a 13       		.uleb128 0x13
 1099 061b 04       		.byte	0x4
 1100 061c F6050000 		.4byte	0x5f6
ARM GAS  /tmp/ccXVTxD7.s 			page 24


 1101 0620 17       		.uleb128 0x17
 1102 0621 19010000 		.4byte	0x119
 1103 0625 3E060000 		.4byte	0x63e
 1104 0629 18       		.uleb128 0x18
 1105 062a A1040000 		.4byte	0x4a1
 1106 062e 18       		.uleb128 0x18
 1107 062f AB000000 		.4byte	0xab
 1108 0633 18       		.uleb128 0x18
 1109 0634 19010000 		.4byte	0x119
 1110 0638 18       		.uleb128 0x18
 1111 0639 25000000 		.4byte	0x25
 1112 063d 00       		.byte	0
 1113 063e 13       		.uleb128 0x13
 1114 063f 04       		.byte	0x4
 1115 0640 20060000 		.4byte	0x620
 1116 0644 17       		.uleb128 0x17
 1117 0645 25000000 		.4byte	0x25
 1118 0649 58060000 		.4byte	0x658
 1119 064d 18       		.uleb128 0x18
 1120 064e A1040000 		.4byte	0x4a1
 1121 0652 18       		.uleb128 0x18
 1122 0653 AB000000 		.4byte	0xab
 1123 0657 00       		.byte	0
 1124 0658 13       		.uleb128 0x13
 1125 0659 04       		.byte	0x4
 1126 065a 44060000 		.4byte	0x644
 1127 065e 0F       		.uleb128 0xf
 1128 065f 3A000000 		.4byte	0x3a
 1129 0663 6E060000 		.4byte	0x66e
 1130 0667 10       		.uleb128 0x10
 1131 0668 AD000000 		.4byte	0xad
 1132 066c 02       		.byte	0x2
 1133 066d 00       		.byte	0
 1134 066e 0F       		.uleb128 0xf
 1135 066f 3A000000 		.4byte	0x3a
 1136 0673 7E060000 		.4byte	0x67e
 1137 0677 10       		.uleb128 0x10
 1138 0678 AD000000 		.4byte	0xad
 1139 067c 00       		.byte	0
 1140 067d 00       		.byte	0
 1141 067e 0C       		.uleb128 0xc
 1142 067f 74040000 		.4byte	.LASF97
 1143 0683 0A       		.byte	0xa
 1144 0684 1D01     		.2byte	0x11d
 1145 0686 59030000 		.4byte	0x359
 1146 068a 1C       		.uleb128 0x1c
 1147 068b 43060000 		.4byte	.LASF98
 1148 068f 0C       		.byte	0xc
 1149 0690 0A       		.byte	0xa
 1150 0691 2101     		.2byte	0x121
 1151 0693 BF060000 		.4byte	0x6bf
 1152 0697 1A       		.uleb128 0x1a
 1153 0698 51050000 		.4byte	.LASF31
 1154 069c 0A       		.byte	0xa
 1155 069d 2301     		.2byte	0x123
 1156 069f BF060000 		.4byte	0x6bf
 1157 06a3 00       		.byte	0
ARM GAS  /tmp/ccXVTxD7.s 			page 25


 1158 06a4 1A       		.uleb128 0x1a
 1159 06a5 4F020000 		.4byte	.LASF99
 1160 06a9 0A       		.byte	0xa
 1161 06aa 2401     		.2byte	0x124
 1162 06ac 25000000 		.4byte	0x25
 1163 06b0 04       		.byte	0x4
 1164 06b1 1A       		.uleb128 0x1a
 1165 06b2 31040000 		.4byte	.LASF100
 1166 06b6 0A       		.byte	0xa
 1167 06b7 2501     		.2byte	0x125
 1168 06b9 C5060000 		.4byte	0x6c5
 1169 06bd 08       		.byte	0x8
 1170 06be 00       		.byte	0
 1171 06bf 13       		.uleb128 0x13
 1172 06c0 04       		.byte	0x4
 1173 06c1 8A060000 		.4byte	0x68a
 1174 06c5 13       		.uleb128 0x13
 1175 06c6 04       		.byte	0x4
 1176 06c7 7E060000 		.4byte	0x67e
 1177 06cb 1C       		.uleb128 0x1c
 1178 06cc 1E000000 		.4byte	.LASF101
 1179 06d0 0E       		.byte	0xe
 1180 06d1 0A       		.byte	0xa
 1181 06d2 3D01     		.2byte	0x13d
 1182 06d4 00070000 		.4byte	0x700
 1183 06d8 1A       		.uleb128 0x1a
 1184 06d9 41050000 		.4byte	.LASF102
 1185 06dd 0A       		.byte	0xa
 1186 06de 3E01     		.2byte	0x13e
 1187 06e0 00070000 		.4byte	0x700
 1188 06e4 00       		.byte	0
 1189 06e5 1A       		.uleb128 0x1a
 1190 06e6 9A020000 		.4byte	.LASF103
 1191 06ea 0A       		.byte	0xa
 1192 06eb 3F01     		.2byte	0x13f
 1193 06ed 00070000 		.4byte	0x700
 1194 06f1 06       		.byte	0x6
 1195 06f2 1A       		.uleb128 0x1a
 1196 06f3 E7050000 		.4byte	.LASF104
 1197 06f7 0A       		.byte	0xa
 1198 06f8 4001     		.2byte	0x140
 1199 06fa 48000000 		.4byte	0x48
 1200 06fe 0C       		.byte	0xc
 1201 06ff 00       		.byte	0
 1202 0700 0F       		.uleb128 0xf
 1203 0701 48000000 		.4byte	0x48
 1204 0705 10070000 		.4byte	0x710
 1205 0709 10       		.uleb128 0x10
 1206 070a AD000000 		.4byte	0xad
 1207 070e 02       		.byte	0x2
 1208 070f 00       		.byte	0
 1209 0710 1D       		.uleb128 0x1d
 1210 0711 D0       		.byte	0xd0
 1211 0712 0A       		.byte	0xa
 1212 0713 5702     		.2byte	0x257
 1213 0715 11080000 		.4byte	0x811
 1214 0719 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccXVTxD7.s 			page 26


 1215 071a 31060000 		.4byte	.LASF105
 1216 071e 0A       		.byte	0xa
 1217 071f 5902     		.2byte	0x259
 1218 0721 2C000000 		.4byte	0x2c
 1219 0725 00       		.byte	0
 1220 0726 1A       		.uleb128 0x1a
 1221 0727 57050000 		.4byte	.LASF106
 1222 072b 0A       		.byte	0xa
 1223 072c 5A02     		.2byte	0x25a
 1224 072e DE050000 		.4byte	0x5de
 1225 0732 04       		.byte	0x4
 1226 0733 1A       		.uleb128 0x1a
 1227 0734 6D020000 		.4byte	.LASF107
 1228 0738 0A       		.byte	0xa
 1229 0739 5B02     		.2byte	0x25b
 1230 073b 11080000 		.4byte	0x811
 1231 073f 08       		.byte	0x8
 1232 0740 1A       		.uleb128 0x1a
 1233 0741 B8060000 		.4byte	.LASF108
 1234 0745 0A       		.byte	0xa
 1235 0746 5C02     		.2byte	0x25c
 1236 0748 0A020000 		.4byte	0x20a
 1237 074c 24       		.byte	0x24
 1238 074d 1A       		.uleb128 0x1a
 1239 074e BD030000 		.4byte	.LASF109
 1240 0752 0A       		.byte	0xa
 1241 0753 5D02     		.2byte	0x25d
 1242 0755 25000000 		.4byte	0x25
 1243 0759 48       		.byte	0x48
 1244 075a 1A       		.uleb128 0x1a
 1245 075b 56020000 		.4byte	.LASF110
 1246 075f 0A       		.byte	0xa
 1247 0760 5E02     		.2byte	0x25e
 1248 0762 7A000000 		.4byte	0x7a
 1249 0766 50       		.byte	0x50
 1250 0767 1A       		.uleb128 0x1a
 1251 0768 92030000 		.4byte	.LASF111
 1252 076c 0A       		.byte	0xa
 1253 076d 5F02     		.2byte	0x25f
 1254 076f CB060000 		.4byte	0x6cb
 1255 0773 58       		.byte	0x58
 1256 0774 1A       		.uleb128 0x1a
 1257 0775 97040000 		.4byte	.LASF112
 1258 0779 0A       		.byte	0xa
 1259 077a 6002     		.2byte	0x260
 1260 077c 80010000 		.4byte	0x180
 1261 0780 68       		.byte	0x68
 1262 0781 1A       		.uleb128 0x1a
 1263 0782 EF060000 		.4byte	.LASF113
 1264 0786 0A       		.byte	0xa
 1265 0787 6102     		.2byte	0x261
 1266 0789 80010000 		.4byte	0x180
 1267 078d 70       		.byte	0x70
 1268 078e 1A       		.uleb128 0x1a
 1269 078f AE000000 		.4byte	.LASF114
 1270 0793 0A       		.byte	0xa
 1271 0794 6202     		.2byte	0x262
ARM GAS  /tmp/ccXVTxD7.s 			page 27


 1272 0796 80010000 		.4byte	0x180
 1273 079a 78       		.byte	0x78
 1274 079b 1A       		.uleb128 0x1a
 1275 079c 52060000 		.4byte	.LASF115
 1276 07a0 0A       		.byte	0xa
 1277 07a1 6302     		.2byte	0x263
 1278 07a3 21080000 		.4byte	0x821
 1279 07a7 80       		.byte	0x80
 1280 07a8 1A       		.uleb128 0x1a
 1281 07a9 61020000 		.4byte	.LASF116
 1282 07ad 0A       		.byte	0xa
 1283 07ae 6402     		.2byte	0x264
 1284 07b0 31080000 		.4byte	0x831
 1285 07b4 88       		.byte	0x88
 1286 07b5 1A       		.uleb128 0x1a
 1287 07b6 31000000 		.4byte	.LASF117
 1288 07ba 0A       		.byte	0xa
 1289 07bb 6502     		.2byte	0x265
 1290 07bd 25000000 		.4byte	0x25
 1291 07c1 A0       		.byte	0xa0
 1292 07c2 1A       		.uleb128 0x1a
 1293 07c3 A7010000 		.4byte	.LASF118
 1294 07c7 0A       		.byte	0xa
 1295 07c8 6602     		.2byte	0x266
 1296 07ca 80010000 		.4byte	0x180
 1297 07ce A4       		.byte	0xa4
 1298 07cf 1A       		.uleb128 0x1a
 1299 07d0 9F000000 		.4byte	.LASF119
 1300 07d4 0A       		.byte	0xa
 1301 07d5 6702     		.2byte	0x267
 1302 07d7 80010000 		.4byte	0x180
 1303 07db AC       		.byte	0xac
 1304 07dc 1A       		.uleb128 0x1a
 1305 07dd 7E010000 		.4byte	.LASF120
 1306 07e1 0A       		.byte	0xa
 1307 07e2 6802     		.2byte	0x268
 1308 07e4 80010000 		.4byte	0x180
 1309 07e8 B4       		.byte	0xb4
 1310 07e9 1A       		.uleb128 0x1a
 1311 07ea 47000000 		.4byte	.LASF121
 1312 07ee 0A       		.byte	0xa
 1313 07ef 6902     		.2byte	0x269
 1314 07f1 80010000 		.4byte	0x180
 1315 07f5 BC       		.byte	0xbc
 1316 07f6 1A       		.uleb128 0x1a
 1317 07f7 56000000 		.4byte	.LASF122
 1318 07fb 0A       		.byte	0xa
 1319 07fc 6A02     		.2byte	0x26a
 1320 07fe 80010000 		.4byte	0x180
 1321 0802 C4       		.byte	0xc4
 1322 0803 1A       		.uleb128 0x1a
 1323 0804 3F040000 		.4byte	.LASF123
 1324 0808 0A       		.byte	0xa
 1325 0809 6B02     		.2byte	0x26b
 1326 080b 25000000 		.4byte	0x25
 1327 080f CC       		.byte	0xcc
 1328 0810 00       		.byte	0
ARM GAS  /tmp/ccXVTxD7.s 			page 28


 1329 0811 0F       		.uleb128 0xf
 1330 0812 E4050000 		.4byte	0x5e4
 1331 0816 21080000 		.4byte	0x821
 1332 081a 10       		.uleb128 0x10
 1333 081b AD000000 		.4byte	0xad
 1334 081f 19       		.byte	0x19
 1335 0820 00       		.byte	0
 1336 0821 0F       		.uleb128 0xf
 1337 0822 E4050000 		.4byte	0x5e4
 1338 0826 31080000 		.4byte	0x831
 1339 082a 10       		.uleb128 0x10
 1340 082b AD000000 		.4byte	0xad
 1341 082f 07       		.byte	0x7
 1342 0830 00       		.byte	0
 1343 0831 0F       		.uleb128 0xf
 1344 0832 E4050000 		.4byte	0x5e4
 1345 0836 41080000 		.4byte	0x841
 1346 083a 10       		.uleb128 0x10
 1347 083b AD000000 		.4byte	0xad
 1348 083f 17       		.byte	0x17
 1349 0840 00       		.byte	0
 1350 0841 1D       		.uleb128 0x1d
 1351 0842 F0       		.byte	0xf0
 1352 0843 0A       		.byte	0xa
 1353 0844 7002     		.2byte	0x270
 1354 0846 65080000 		.4byte	0x865
 1355 084a 1A       		.uleb128 0x1a
 1356 084b 88020000 		.4byte	.LASF124
 1357 084f 0A       		.byte	0xa
 1358 0850 7302     		.2byte	0x273
 1359 0852 65080000 		.4byte	0x865
 1360 0856 00       		.byte	0
 1361 0857 1A       		.uleb128 0x1a
 1362 0858 49060000 		.4byte	.LASF125
 1363 085c 0A       		.byte	0xa
 1364 085d 7402     		.2byte	0x274
 1365 085f 75080000 		.4byte	0x875
 1366 0863 78       		.byte	0x78
 1367 0864 00       		.byte	0
 1368 0865 0F       		.uleb128 0xf
 1369 0866 53030000 		.4byte	0x353
 1370 086a 75080000 		.4byte	0x875
 1371 086e 10       		.uleb128 0x10
 1372 086f AD000000 		.4byte	0xad
 1373 0873 1D       		.byte	0x1d
 1374 0874 00       		.byte	0
 1375 0875 0F       		.uleb128 0xf
 1376 0876 2C000000 		.4byte	0x2c
 1377 087a 85080000 		.4byte	0x885
 1378 087e 10       		.uleb128 0x10
 1379 087f AD000000 		.4byte	0xad
 1380 0883 1D       		.byte	0x1d
 1381 0884 00       		.byte	0
 1382 0885 1E       		.uleb128 0x1e
 1383 0886 F0       		.byte	0xf0
 1384 0887 0A       		.byte	0xa
 1385 0888 5502     		.2byte	0x255
ARM GAS  /tmp/ccXVTxD7.s 			page 29


 1386 088a A7080000 		.4byte	0x8a7
 1387 088e 1F       		.uleb128 0x1f
 1388 088f DD040000 		.4byte	.LASF74
 1389 0893 0A       		.byte	0xa
 1390 0894 6C02     		.2byte	0x26c
 1391 0896 10070000 		.4byte	0x710
 1392 089a 1F       		.uleb128 0x1f
 1393 089b A5060000 		.4byte	.LASF126
 1394 089f 0A       		.byte	0xa
 1395 08a0 7502     		.2byte	0x275
 1396 08a2 41080000 		.4byte	0x841
 1397 08a6 00       		.byte	0
 1398 08a7 0F       		.uleb128 0xf
 1399 08a8 E4050000 		.4byte	0x5e4
 1400 08ac B7080000 		.4byte	0x8b7
 1401 08b0 10       		.uleb128 0x10
 1402 08b1 AD000000 		.4byte	0xad
 1403 08b5 18       		.byte	0x18
 1404 08b6 00       		.byte	0
 1405 08b7 20       		.uleb128 0x20
 1406 08b8 C2080000 		.4byte	0x8c2
 1407 08bc 18       		.uleb128 0x18
 1408 08bd A1040000 		.4byte	0x4a1
 1409 08c1 00       		.byte	0
 1410 08c2 13       		.uleb128 0x13
 1411 08c3 04       		.byte	0x4
 1412 08c4 B7080000 		.4byte	0x8b7
 1413 08c8 13       		.uleb128 0x13
 1414 08c9 04       		.byte	0x4
 1415 08ca F4010000 		.4byte	0x1f4
 1416 08ce 20       		.uleb128 0x20
 1417 08cf D9080000 		.4byte	0x8d9
 1418 08d3 18       		.uleb128 0x18
 1419 08d4 25000000 		.4byte	0x25
 1420 08d8 00       		.byte	0
 1421 08d9 13       		.uleb128 0x13
 1422 08da 04       		.byte	0x4
 1423 08db DF080000 		.4byte	0x8df
 1424 08df 13       		.uleb128 0x13
 1425 08e0 04       		.byte	0x4
 1426 08e1 CE080000 		.4byte	0x8ce
 1427 08e5 0F       		.uleb128 0xf
 1428 08e6 7E060000 		.4byte	0x67e
 1429 08ea F5080000 		.4byte	0x8f5
 1430 08ee 10       		.uleb128 0x10
 1431 08ef AD000000 		.4byte	0xad
 1432 08f3 02       		.byte	0x2
 1433 08f4 00       		.byte	0
 1434 08f5 08       		.uleb128 0x8
 1435 08f6 DE010000 		.4byte	.LASF127
 1436 08fa 0A       		.byte	0xa
 1437 08fb FD02     		.2byte	0x2fd
 1438 08fd A1040000 		.4byte	0x4a1
 1439 0901 08       		.uleb128 0x8
 1440 0902 EC050000 		.4byte	.LASF128
 1441 0906 0A       		.byte	0xa
 1442 0907 FE02     		.2byte	0x2fe
ARM GAS  /tmp/ccXVTxD7.s 			page 30


 1443 0909 A7040000 		.4byte	0x4a7
 1444 090d 09       		.uleb128 0x9
 1445 090e A8030000 		.4byte	.LASF129
 1446 0912 0B       		.byte	0xb
 1447 0913 5F       		.byte	0x5f
 1448 0914 DE050000 		.4byte	0x5de
 1449 0918 09       		.uleb128 0x9
 1450 0919 E9030000 		.4byte	.LASF130
 1451 091d 0C       		.byte	0xc
 1452 091e 8F       		.byte	0x8f
 1453 091f 2A090000 		.4byte	0x92a
 1454 0923 03       		.uleb128 0x3
 1455 0924 01       		.byte	0x1
 1456 0925 02       		.byte	0x2
 1457 0926 15040000 		.4byte	.LASF131
 1458 092a 05       		.uleb128 0x5
 1459 092b 23090000 		.4byte	0x923
 1460 092f 21       		.uleb128 0x21
 1461 0930 7E060000 		.4byte	.LASF132
 1462 0934 0C       		.byte	0xc
 1463 0935 94       		.byte	0x94
 1464 0936 9C000000 		.4byte	0x9c
 1465 093a 05       		.uleb128 0x5
 1466 093b 03       		.byte	0x3
 1467 093c 00000000 		.4byte	cpu_irq_critical_section_counter
 1468 0940 21       		.uleb128 0x21
 1469 0941 67000000 		.4byte	.LASF133
 1470 0945 0C       		.byte	0xc
 1471 0946 95       		.byte	0x95
 1472 0947 2A090000 		.4byte	0x92a
 1473 094b 05       		.uleb128 0x5
 1474 094c 03       		.byte	0x3
 1475 094d 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1476 0951 03       		.uleb128 0x3
 1477 0952 04       		.byte	0x4
 1478 0953 04       		.byte	0x4
 1479 0954 E3030000 		.4byte	.LASF134
 1480 0958 03       		.uleb128 0x3
 1481 0959 08       		.byte	0x8
 1482 095a 04       		.byte	0x4
 1483 095b 67010000 		.4byte	.LASF135
 1484 095f 22       		.uleb128 0x22
 1485 0960 D3020000 		.4byte	.LASF136
 1486 0964 01       		.byte	0x1
 1487 0965 CA       		.byte	0xca
 1488 0966 91000000 		.4byte	0x91
 1489 096a 00000000 		.4byte	.LFB150
 1490 096e 08000000 		.4byte	.LFE150-.LFB150
 1491 0972 01       		.uleb128 0x1
 1492 0973 9C       		.byte	0x9c
 1493 0974 88090000 		.4byte	0x988
 1494 0978 23       		.uleb128 0x23
 1495 0979 DF000000 		.4byte	.LASF138
 1496 097d 01       		.byte	0x1
 1497 097e CB       		.byte	0xcb
 1498 097f 88090000 		.4byte	0x988
 1499 0983 00000000 		.4byte	.LLST7
ARM GAS  /tmp/ccXVTxD7.s 			page 31


 1500 0987 00       		.byte	0
 1501 0988 13       		.uleb128 0x13
 1502 0989 04       		.byte	0x4
 1503 098a F8000000 		.4byte	0xf8
 1504 098e 22       		.uleb128 0x22
 1505 098f D3030000 		.4byte	.LASF137
 1506 0993 01       		.byte	0x1
 1507 0994 BD       		.byte	0xbd
 1508 0995 91000000 		.4byte	0x91
 1509 0999 00000000 		.4byte	.LFB149
 1510 099d 04000000 		.4byte	.LFE149-.LFB149
 1511 09a1 01       		.uleb128 0x1
 1512 09a2 9C       		.byte	0x9c
 1513 09a3 B7090000 		.4byte	0x9b7
 1514 09a7 23       		.uleb128 0x23
 1515 09a8 DF000000 		.4byte	.LASF138
 1516 09ac 01       		.byte	0x1
 1517 09ad BE       		.byte	0xbe
 1518 09ae 88090000 		.4byte	0x988
 1519 09b2 21000000 		.4byte	.LLST6
 1520 09b6 00       		.byte	0
 1521 09b7 24       		.uleb128 0x24
 1522 09b8 A9040000 		.4byte	.LASF139
 1523 09bc 01       		.byte	0x1
 1524 09bd B0       		.byte	0xb0
 1525 09be 00000000 		.4byte	.LFB148
 1526 09c2 0C000000 		.4byte	.LFE148-.LFB148
 1527 09c6 01       		.uleb128 0x1
 1528 09c7 9C       		.byte	0x9c
 1529 09c8 DA090000 		.4byte	0x9da
 1530 09cc 25       		.uleb128 0x25
 1531 09cd DF000000 		.4byte	.LASF138
 1532 09d1 01       		.byte	0x1
 1533 09d2 B1       		.byte	0xb1
 1534 09d3 88090000 		.4byte	0x988
 1535 09d7 01       		.uleb128 0x1
 1536 09d8 50       		.byte	0x50
 1537 09d9 00       		.byte	0
 1538 09da 24       		.uleb128 0x24
 1539 09db 8E050000 		.4byte	.LASF140
 1540 09df 01       		.byte	0x1
 1541 09e0 A1       		.byte	0xa1
 1542 09e1 00000000 		.4byte	.LFB147
 1543 09e5 0C000000 		.4byte	.LFE147-.LFB147
 1544 09e9 01       		.uleb128 0x1
 1545 09ea 9C       		.byte	0x9c
 1546 09eb FD090000 		.4byte	0x9fd
 1547 09ef 25       		.uleb128 0x25
 1548 09f0 DF000000 		.4byte	.LASF138
 1549 09f4 01       		.byte	0x1
 1550 09f5 A2       		.byte	0xa2
 1551 09f6 88090000 		.4byte	0x988
 1552 09fa 01       		.uleb128 0x1
 1553 09fb 50       		.byte	0x50
 1554 09fc 00       		.byte	0
 1555 09fd 24       		.uleb128 0x24
 1556 09fe B1020000 		.4byte	.LASF141
ARM GAS  /tmp/ccXVTxD7.s 			page 32


 1557 0a02 01       		.byte	0x1
 1558 0a03 8E       		.byte	0x8e
 1559 0a04 00000000 		.4byte	.LFB146
 1560 0a08 14000000 		.4byte	.LFE146-.LFB146
 1561 0a0c 01       		.uleb128 0x1
 1562 0a0d 9C       		.byte	0x9c
 1563 0a0e 2F0A0000 		.4byte	0xa2f
 1564 0a12 25       		.uleb128 0x25
 1565 0a13 DF000000 		.4byte	.LASF138
 1566 0a17 01       		.byte	0x1
 1567 0a18 8F       		.byte	0x8f
 1568 0a19 88090000 		.4byte	0x988
 1569 0a1d 01       		.uleb128 0x1
 1570 0a1e 50       		.byte	0x50
 1571 0a1f 26       		.uleb128 0x26
 1572 0a20 29050000 		.4byte	.LASF142
 1573 0a24 01       		.byte	0x1
 1574 0a25 94       		.byte	0x94
 1575 0a26 91000000 		.4byte	0x91
 1576 0a2a 42000000 		.4byte	.LLST5
 1577 0a2e 00       		.byte	0
 1578 0a2f 24       		.uleb128 0x24
 1579 0a30 64050000 		.4byte	.LASF143
 1580 0a34 01       		.byte	0x1
 1581 0a35 7B       		.byte	0x7b
 1582 0a36 00000000 		.4byte	.LFB145
 1583 0a3a 14000000 		.4byte	.LFE145-.LFB145
 1584 0a3e 01       		.uleb128 0x1
 1585 0a3f 9C       		.byte	0x9c
 1586 0a40 610A0000 		.4byte	0xa61
 1587 0a44 25       		.uleb128 0x25
 1588 0a45 DF000000 		.4byte	.LASF138
 1589 0a49 01       		.byte	0x1
 1590 0a4a 7C       		.byte	0x7c
 1591 0a4b 88090000 		.4byte	0x988
 1592 0a4f 01       		.uleb128 0x1
 1593 0a50 50       		.byte	0x50
 1594 0a51 26       		.uleb128 0x26
 1595 0a52 29050000 		.4byte	.LASF142
 1596 0a56 01       		.byte	0x1
 1597 0a57 81       		.byte	0x81
 1598 0a58 91000000 		.4byte	0x91
 1599 0a5c 60000000 		.4byte	.LLST4
 1600 0a60 00       		.byte	0
 1601 0a61 24       		.uleb128 0x24
 1602 0a62 5C060000 		.4byte	.LASF144
 1603 0a66 01       		.byte	0x1
 1604 0a67 68       		.byte	0x68
 1605 0a68 00000000 		.4byte	.LFB144
 1606 0a6c 14000000 		.4byte	.LFE144-.LFB144
 1607 0a70 01       		.uleb128 0x1
 1608 0a71 9C       		.byte	0x9c
 1609 0a72 930A0000 		.4byte	0xa93
 1610 0a76 25       		.uleb128 0x25
 1611 0a77 DF000000 		.4byte	.LASF138
 1612 0a7b 01       		.byte	0x1
 1613 0a7c 69       		.byte	0x69
ARM GAS  /tmp/ccXVTxD7.s 			page 33


 1614 0a7d 88090000 		.4byte	0x988
 1615 0a81 01       		.uleb128 0x1
 1616 0a82 50       		.byte	0x50
 1617 0a83 26       		.uleb128 0x26
 1618 0a84 29050000 		.4byte	.LASF142
 1619 0a88 01       		.byte	0x1
 1620 0a89 6E       		.byte	0x6e
 1621 0a8a 91000000 		.4byte	0x91
 1622 0a8e 7E000000 		.4byte	.LLST3
 1623 0a92 00       		.byte	0
 1624 0a93 24       		.uleb128 0x24
 1625 0a94 1A060000 		.4byte	.LASF145
 1626 0a98 01       		.byte	0x1
 1627 0a99 55       		.byte	0x55
 1628 0a9a 00000000 		.4byte	.LFB143
 1629 0a9e 14000000 		.4byte	.LFE143-.LFB143
 1630 0aa2 01       		.uleb128 0x1
 1631 0aa3 9C       		.byte	0x9c
 1632 0aa4 C50A0000 		.4byte	0xac5
 1633 0aa8 25       		.uleb128 0x25
 1634 0aa9 DF000000 		.4byte	.LASF138
 1635 0aad 01       		.byte	0x1
 1636 0aae 56       		.byte	0x56
 1637 0aaf 88090000 		.4byte	0x988
 1638 0ab3 01       		.uleb128 0x1
 1639 0ab4 50       		.byte	0x50
 1640 0ab5 26       		.uleb128 0x26
 1641 0ab6 29050000 		.4byte	.LASF142
 1642 0aba 01       		.byte	0x1
 1643 0abb 5B       		.byte	0x5b
 1644 0abc 91000000 		.4byte	0x91
 1645 0ac0 9C000000 		.4byte	.LLST2
 1646 0ac4 00       		.byte	0
 1647 0ac5 27       		.uleb128 0x27
 1648 0ac6 8F010000 		.4byte	.LASF150
 1649 0aca 01       		.byte	0x1
 1650 0acb 41       		.byte	0x41
 1651 0acc 00000000 		.4byte	.LFB142
 1652 0ad0 1C000000 		.4byte	.LFE142-.LFB142
 1653 0ad4 01       		.uleb128 0x1
 1654 0ad5 9C       		.byte	0x9c
 1655 0ad6 25       		.uleb128 0x25
 1656 0ad7 DF000000 		.4byte	.LASF138
 1657 0adb 01       		.byte	0x1
 1658 0adc 42       		.byte	0x42
 1659 0add 88090000 		.4byte	0x988
 1660 0ae1 01       		.uleb128 0x1
 1661 0ae2 50       		.byte	0x50
 1662 0ae3 23       		.uleb128 0x23
 1663 0ae4 0C070000 		.4byte	.LASF146
 1664 0ae8 01       		.byte	0x1
 1665 0ae9 43       		.byte	0x43
 1666 0aea A6000000 		.4byte	0xa6
 1667 0aee BA000000 		.4byte	.LLST0
 1668 0af2 26       		.uleb128 0x26
 1669 0af3 29050000 		.4byte	.LASF142
 1670 0af7 01       		.byte	0x1
ARM GAS  /tmp/ccXVTxD7.s 			page 34


 1671 0af8 48       		.byte	0x48
 1672 0af9 91000000 		.4byte	0x91
 1673 0afd DB000000 		.4byte	.LLST1
 1674 0b01 00       		.byte	0
 1675 0b02 00       		.byte	0
 1676              		.section	.debug_abbrev,"",%progbits
 1677              	.Ldebug_abbrev0:
 1678 0000 01       		.uleb128 0x1
 1679 0001 11       		.uleb128 0x11
 1680 0002 01       		.byte	0x1
 1681 0003 25       		.uleb128 0x25
 1682 0004 0E       		.uleb128 0xe
 1683 0005 13       		.uleb128 0x13
 1684 0006 0B       		.uleb128 0xb
 1685 0007 03       		.uleb128 0x3
 1686 0008 0E       		.uleb128 0xe
 1687 0009 1B       		.uleb128 0x1b
 1688 000a 0E       		.uleb128 0xe
 1689 000b 55       		.uleb128 0x55
 1690 000c 17       		.uleb128 0x17
 1691 000d 11       		.uleb128 0x11
 1692 000e 01       		.uleb128 0x1
 1693 000f 10       		.uleb128 0x10
 1694 0010 17       		.uleb128 0x17
 1695 0011 00       		.byte	0
 1696 0012 00       		.byte	0
 1697 0013 02       		.uleb128 0x2
 1698 0014 24       		.uleb128 0x24
 1699 0015 00       		.byte	0
 1700 0016 0B       		.uleb128 0xb
 1701 0017 0B       		.uleb128 0xb
 1702 0018 3E       		.uleb128 0x3e
 1703 0019 0B       		.uleb128 0xb
 1704 001a 03       		.uleb128 0x3
 1705 001b 08       		.uleb128 0x8
 1706 001c 00       		.byte	0
 1707 001d 00       		.byte	0
 1708 001e 03       		.uleb128 0x3
 1709 001f 24       		.uleb128 0x24
 1710 0020 00       		.byte	0
 1711 0021 0B       		.uleb128 0xb
 1712 0022 0B       		.uleb128 0xb
 1713 0023 3E       		.uleb128 0x3e
 1714 0024 0B       		.uleb128 0xb
 1715 0025 03       		.uleb128 0x3
 1716 0026 0E       		.uleb128 0xe
 1717 0027 00       		.byte	0
 1718 0028 00       		.byte	0
 1719 0029 04       		.uleb128 0x4
 1720 002a 16       		.uleb128 0x16
 1721 002b 00       		.byte	0
 1722 002c 03       		.uleb128 0x3
 1723 002d 0E       		.uleb128 0xe
 1724 002e 3A       		.uleb128 0x3a
 1725 002f 0B       		.uleb128 0xb
 1726 0030 3B       		.uleb128 0x3b
 1727 0031 0B       		.uleb128 0xb
ARM GAS  /tmp/ccXVTxD7.s 			page 35


 1728 0032 49       		.uleb128 0x49
 1729 0033 13       		.uleb128 0x13
 1730 0034 00       		.byte	0
 1731 0035 00       		.byte	0
 1732 0036 05       		.uleb128 0x5
 1733 0037 35       		.uleb128 0x35
 1734 0038 00       		.byte	0
 1735 0039 49       		.uleb128 0x49
 1736 003a 13       		.uleb128 0x13
 1737 003b 00       		.byte	0
 1738 003c 00       		.byte	0
 1739 003d 06       		.uleb128 0x6
 1740 003e 26       		.uleb128 0x26
 1741 003f 00       		.byte	0
 1742 0040 49       		.uleb128 0x49
 1743 0041 13       		.uleb128 0x13
 1744 0042 00       		.byte	0
 1745 0043 00       		.byte	0
 1746 0044 07       		.uleb128 0x7
 1747 0045 0F       		.uleb128 0xf
 1748 0046 00       		.byte	0
 1749 0047 0B       		.uleb128 0xb
 1750 0048 0B       		.uleb128 0xb
 1751 0049 00       		.byte	0
 1752 004a 00       		.byte	0
 1753 004b 08       		.uleb128 0x8
 1754 004c 34       		.uleb128 0x34
 1755 004d 00       		.byte	0
 1756 004e 03       		.uleb128 0x3
 1757 004f 0E       		.uleb128 0xe
 1758 0050 3A       		.uleb128 0x3a
 1759 0051 0B       		.uleb128 0xb
 1760 0052 3B       		.uleb128 0x3b
 1761 0053 05       		.uleb128 0x5
 1762 0054 49       		.uleb128 0x49
 1763 0055 13       		.uleb128 0x13
 1764 0056 3F       		.uleb128 0x3f
 1765 0057 19       		.uleb128 0x19
 1766 0058 3C       		.uleb128 0x3c
 1767 0059 19       		.uleb128 0x19
 1768 005a 00       		.byte	0
 1769 005b 00       		.byte	0
 1770 005c 09       		.uleb128 0x9
 1771 005d 34       		.uleb128 0x34
 1772 005e 00       		.byte	0
 1773 005f 03       		.uleb128 0x3
 1774 0060 0E       		.uleb128 0xe
 1775 0061 3A       		.uleb128 0x3a
 1776 0062 0B       		.uleb128 0xb
 1777 0063 3B       		.uleb128 0x3b
 1778 0064 0B       		.uleb128 0xb
 1779 0065 49       		.uleb128 0x49
 1780 0066 13       		.uleb128 0x13
 1781 0067 3F       		.uleb128 0x3f
 1782 0068 19       		.uleb128 0x19
 1783 0069 3C       		.uleb128 0x3c
 1784 006a 19       		.uleb128 0x19
ARM GAS  /tmp/ccXVTxD7.s 			page 36


 1785 006b 00       		.byte	0
 1786 006c 00       		.byte	0
 1787 006d 0A       		.uleb128 0xa
 1788 006e 13       		.uleb128 0x13
 1789 006f 01       		.byte	0x1
 1790 0070 0B       		.uleb128 0xb
 1791 0071 0B       		.uleb128 0xb
 1792 0072 3A       		.uleb128 0x3a
 1793 0073 0B       		.uleb128 0xb
 1794 0074 3B       		.uleb128 0x3b
 1795 0075 0B       		.uleb128 0xb
 1796 0076 01       		.uleb128 0x1
 1797 0077 13       		.uleb128 0x13
 1798 0078 00       		.byte	0
 1799 0079 00       		.byte	0
 1800 007a 0B       		.uleb128 0xb
 1801 007b 0D       		.uleb128 0xd
 1802 007c 00       		.byte	0
 1803 007d 03       		.uleb128 0x3
 1804 007e 0E       		.uleb128 0xe
 1805 007f 3A       		.uleb128 0x3a
 1806 0080 0B       		.uleb128 0xb
 1807 0081 3B       		.uleb128 0x3b
 1808 0082 0B       		.uleb128 0xb
 1809 0083 49       		.uleb128 0x49
 1810 0084 13       		.uleb128 0x13
 1811 0085 38       		.uleb128 0x38
 1812 0086 0B       		.uleb128 0xb
 1813 0087 00       		.byte	0
 1814 0088 00       		.byte	0
 1815 0089 0C       		.uleb128 0xc
 1816 008a 16       		.uleb128 0x16
 1817 008b 00       		.byte	0
 1818 008c 03       		.uleb128 0x3
 1819 008d 0E       		.uleb128 0xe
 1820 008e 3A       		.uleb128 0x3a
 1821 008f 0B       		.uleb128 0xb
 1822 0090 3B       		.uleb128 0x3b
 1823 0091 05       		.uleb128 0x5
 1824 0092 49       		.uleb128 0x49
 1825 0093 13       		.uleb128 0x13
 1826 0094 00       		.byte	0
 1827 0095 00       		.byte	0
 1828 0096 0D       		.uleb128 0xd
 1829 0097 17       		.uleb128 0x17
 1830 0098 01       		.byte	0x1
 1831 0099 0B       		.uleb128 0xb
 1832 009a 0B       		.uleb128 0xb
 1833 009b 3A       		.uleb128 0x3a
 1834 009c 0B       		.uleb128 0xb
 1835 009d 3B       		.uleb128 0x3b
 1836 009e 0B       		.uleb128 0xb
 1837 009f 01       		.uleb128 0x1
 1838 00a0 13       		.uleb128 0x13
 1839 00a1 00       		.byte	0
 1840 00a2 00       		.byte	0
 1841 00a3 0E       		.uleb128 0xe
ARM GAS  /tmp/ccXVTxD7.s 			page 37


 1842 00a4 0D       		.uleb128 0xd
 1843 00a5 00       		.byte	0
 1844 00a6 03       		.uleb128 0x3
 1845 00a7 0E       		.uleb128 0xe
 1846 00a8 3A       		.uleb128 0x3a
 1847 00a9 0B       		.uleb128 0xb
 1848 00aa 3B       		.uleb128 0x3b
 1849 00ab 0B       		.uleb128 0xb
 1850 00ac 49       		.uleb128 0x49
 1851 00ad 13       		.uleb128 0x13
 1852 00ae 00       		.byte	0
 1853 00af 00       		.byte	0
 1854 00b0 0F       		.uleb128 0xf
 1855 00b1 01       		.uleb128 0x1
 1856 00b2 01       		.byte	0x1
 1857 00b3 49       		.uleb128 0x49
 1858 00b4 13       		.uleb128 0x13
 1859 00b5 01       		.uleb128 0x1
 1860 00b6 13       		.uleb128 0x13
 1861 00b7 00       		.byte	0
 1862 00b8 00       		.byte	0
 1863 00b9 10       		.uleb128 0x10
 1864 00ba 21       		.uleb128 0x21
 1865 00bb 00       		.byte	0
 1866 00bc 49       		.uleb128 0x49
 1867 00bd 13       		.uleb128 0x13
 1868 00be 2F       		.uleb128 0x2f
 1869 00bf 0B       		.uleb128 0xb
 1870 00c0 00       		.byte	0
 1871 00c1 00       		.byte	0
 1872 00c2 11       		.uleb128 0x11
 1873 00c3 13       		.uleb128 0x13
 1874 00c4 01       		.byte	0x1
 1875 00c5 03       		.uleb128 0x3
 1876 00c6 0E       		.uleb128 0xe
 1877 00c7 0B       		.uleb128 0xb
 1878 00c8 0B       		.uleb128 0xb
 1879 00c9 3A       		.uleb128 0x3a
 1880 00ca 0B       		.uleb128 0xb
 1881 00cb 3B       		.uleb128 0x3b
 1882 00cc 0B       		.uleb128 0xb
 1883 00cd 01       		.uleb128 0x1
 1884 00ce 13       		.uleb128 0x13
 1885 00cf 00       		.byte	0
 1886 00d0 00       		.byte	0
 1887 00d1 12       		.uleb128 0x12
 1888 00d2 0D       		.uleb128 0xd
 1889 00d3 00       		.byte	0
 1890 00d4 03       		.uleb128 0x3
 1891 00d5 08       		.uleb128 0x8
 1892 00d6 3A       		.uleb128 0x3a
 1893 00d7 0B       		.uleb128 0xb
 1894 00d8 3B       		.uleb128 0x3b
 1895 00d9 0B       		.uleb128 0xb
 1896 00da 49       		.uleb128 0x49
 1897 00db 13       		.uleb128 0x13
 1898 00dc 38       		.uleb128 0x38
ARM GAS  /tmp/ccXVTxD7.s 			page 38


 1899 00dd 0B       		.uleb128 0xb
 1900 00de 00       		.byte	0
 1901 00df 00       		.byte	0
 1902 00e0 13       		.uleb128 0x13
 1903 00e1 0F       		.uleb128 0xf
 1904 00e2 00       		.byte	0
 1905 00e3 0B       		.uleb128 0xb
 1906 00e4 0B       		.uleb128 0xb
 1907 00e5 49       		.uleb128 0x49
 1908 00e6 13       		.uleb128 0x13
 1909 00e7 00       		.byte	0
 1910 00e8 00       		.byte	0
 1911 00e9 14       		.uleb128 0x14
 1912 00ea 13       		.uleb128 0x13
 1913 00eb 01       		.byte	0x1
 1914 00ec 03       		.uleb128 0x3
 1915 00ed 0E       		.uleb128 0xe
 1916 00ee 0B       		.uleb128 0xb
 1917 00ef 05       		.uleb128 0x5
 1918 00f0 3A       		.uleb128 0x3a
 1919 00f1 0B       		.uleb128 0xb
 1920 00f2 3B       		.uleb128 0x3b
 1921 00f3 0B       		.uleb128 0xb
 1922 00f4 01       		.uleb128 0x1
 1923 00f5 13       		.uleb128 0x13
 1924 00f6 00       		.byte	0
 1925 00f7 00       		.byte	0
 1926 00f8 15       		.uleb128 0x15
 1927 00f9 0D       		.uleb128 0xd
 1928 00fa 00       		.byte	0
 1929 00fb 03       		.uleb128 0x3
 1930 00fc 0E       		.uleb128 0xe
 1931 00fd 3A       		.uleb128 0x3a
 1932 00fe 0B       		.uleb128 0xb
 1933 00ff 3B       		.uleb128 0x3b
 1934 0100 0B       		.uleb128 0xb
 1935 0101 49       		.uleb128 0x49
 1936 0102 13       		.uleb128 0x13
 1937 0103 38       		.uleb128 0x38
 1938 0104 05       		.uleb128 0x5
 1939 0105 00       		.byte	0
 1940 0106 00       		.byte	0
 1941 0107 16       		.uleb128 0x16
 1942 0108 15       		.uleb128 0x15
 1943 0109 00       		.byte	0
 1944 010a 27       		.uleb128 0x27
 1945 010b 19       		.uleb128 0x19
 1946 010c 00       		.byte	0
 1947 010d 00       		.byte	0
 1948 010e 17       		.uleb128 0x17
 1949 010f 15       		.uleb128 0x15
 1950 0110 01       		.byte	0x1
 1951 0111 27       		.uleb128 0x27
 1952 0112 19       		.uleb128 0x19
 1953 0113 49       		.uleb128 0x49
 1954 0114 13       		.uleb128 0x13
 1955 0115 01       		.uleb128 0x1
ARM GAS  /tmp/ccXVTxD7.s 			page 39


 1956 0116 13       		.uleb128 0x13
 1957 0117 00       		.byte	0
 1958 0118 00       		.byte	0
 1959 0119 18       		.uleb128 0x18
 1960 011a 05       		.uleb128 0x5
 1961 011b 00       		.byte	0
 1962 011c 49       		.uleb128 0x49
 1963 011d 13       		.uleb128 0x13
 1964 011e 00       		.byte	0
 1965 011f 00       		.byte	0
 1966 0120 19       		.uleb128 0x19
 1967 0121 13       		.uleb128 0x13
 1968 0122 01       		.byte	0x1
 1969 0123 03       		.uleb128 0x3
 1970 0124 0E       		.uleb128 0xe
 1971 0125 0B       		.uleb128 0xb
 1972 0126 05       		.uleb128 0x5
 1973 0127 3A       		.uleb128 0x3a
 1974 0128 0B       		.uleb128 0xb
 1975 0129 3B       		.uleb128 0x3b
 1976 012a 05       		.uleb128 0x5
 1977 012b 01       		.uleb128 0x1
 1978 012c 13       		.uleb128 0x13
 1979 012d 00       		.byte	0
 1980 012e 00       		.byte	0
 1981 012f 1A       		.uleb128 0x1a
 1982 0130 0D       		.uleb128 0xd
 1983 0131 00       		.byte	0
 1984 0132 03       		.uleb128 0x3
 1985 0133 0E       		.uleb128 0xe
 1986 0134 3A       		.uleb128 0x3a
 1987 0135 0B       		.uleb128 0xb
 1988 0136 3B       		.uleb128 0x3b
 1989 0137 05       		.uleb128 0x5
 1990 0138 49       		.uleb128 0x49
 1991 0139 13       		.uleb128 0x13
 1992 013a 38       		.uleb128 0x38
 1993 013b 0B       		.uleb128 0xb
 1994 013c 00       		.byte	0
 1995 013d 00       		.byte	0
 1996 013e 1B       		.uleb128 0x1b
 1997 013f 0D       		.uleb128 0xd
 1998 0140 00       		.byte	0
 1999 0141 03       		.uleb128 0x3
 2000 0142 0E       		.uleb128 0xe
 2001 0143 3A       		.uleb128 0x3a
 2002 0144 0B       		.uleb128 0xb
 2003 0145 3B       		.uleb128 0x3b
 2004 0146 05       		.uleb128 0x5
 2005 0147 49       		.uleb128 0x49
 2006 0148 13       		.uleb128 0x13
 2007 0149 38       		.uleb128 0x38
 2008 014a 05       		.uleb128 0x5
 2009 014b 00       		.byte	0
 2010 014c 00       		.byte	0
 2011 014d 1C       		.uleb128 0x1c
 2012 014e 13       		.uleb128 0x13
ARM GAS  /tmp/ccXVTxD7.s 			page 40


 2013 014f 01       		.byte	0x1
 2014 0150 03       		.uleb128 0x3
 2015 0151 0E       		.uleb128 0xe
 2016 0152 0B       		.uleb128 0xb
 2017 0153 0B       		.uleb128 0xb
 2018 0154 3A       		.uleb128 0x3a
 2019 0155 0B       		.uleb128 0xb
 2020 0156 3B       		.uleb128 0x3b
 2021 0157 05       		.uleb128 0x5
 2022 0158 01       		.uleb128 0x1
 2023 0159 13       		.uleb128 0x13
 2024 015a 00       		.byte	0
 2025 015b 00       		.byte	0
 2026 015c 1D       		.uleb128 0x1d
 2027 015d 13       		.uleb128 0x13
 2028 015e 01       		.byte	0x1
 2029 015f 0B       		.uleb128 0xb
 2030 0160 0B       		.uleb128 0xb
 2031 0161 3A       		.uleb128 0x3a
 2032 0162 0B       		.uleb128 0xb
 2033 0163 3B       		.uleb128 0x3b
 2034 0164 05       		.uleb128 0x5
 2035 0165 01       		.uleb128 0x1
 2036 0166 13       		.uleb128 0x13
 2037 0167 00       		.byte	0
 2038 0168 00       		.byte	0
 2039 0169 1E       		.uleb128 0x1e
 2040 016a 17       		.uleb128 0x17
 2041 016b 01       		.byte	0x1
 2042 016c 0B       		.uleb128 0xb
 2043 016d 0B       		.uleb128 0xb
 2044 016e 3A       		.uleb128 0x3a
 2045 016f 0B       		.uleb128 0xb
 2046 0170 3B       		.uleb128 0x3b
 2047 0171 05       		.uleb128 0x5
 2048 0172 01       		.uleb128 0x1
 2049 0173 13       		.uleb128 0x13
 2050 0174 00       		.byte	0
 2051 0175 00       		.byte	0
 2052 0176 1F       		.uleb128 0x1f
 2053 0177 0D       		.uleb128 0xd
 2054 0178 00       		.byte	0
 2055 0179 03       		.uleb128 0x3
 2056 017a 0E       		.uleb128 0xe
 2057 017b 3A       		.uleb128 0x3a
 2058 017c 0B       		.uleb128 0xb
 2059 017d 3B       		.uleb128 0x3b
 2060 017e 05       		.uleb128 0x5
 2061 017f 49       		.uleb128 0x49
 2062 0180 13       		.uleb128 0x13
 2063 0181 00       		.byte	0
 2064 0182 00       		.byte	0
 2065 0183 20       		.uleb128 0x20
 2066 0184 15       		.uleb128 0x15
 2067 0185 01       		.byte	0x1
 2068 0186 27       		.uleb128 0x27
 2069 0187 19       		.uleb128 0x19
ARM GAS  /tmp/ccXVTxD7.s 			page 41


 2070 0188 01       		.uleb128 0x1
 2071 0189 13       		.uleb128 0x13
 2072 018a 00       		.byte	0
 2073 018b 00       		.byte	0
 2074 018c 21       		.uleb128 0x21
 2075 018d 34       		.uleb128 0x34
 2076 018e 00       		.byte	0
 2077 018f 03       		.uleb128 0x3
 2078 0190 0E       		.uleb128 0xe
 2079 0191 3A       		.uleb128 0x3a
 2080 0192 0B       		.uleb128 0xb
 2081 0193 3B       		.uleb128 0x3b
 2082 0194 0B       		.uleb128 0xb
 2083 0195 49       		.uleb128 0x49
 2084 0196 13       		.uleb128 0x13
 2085 0197 02       		.uleb128 0x2
 2086 0198 18       		.uleb128 0x18
 2087 0199 00       		.byte	0
 2088 019a 00       		.byte	0
 2089 019b 22       		.uleb128 0x22
 2090 019c 2E       		.uleb128 0x2e
 2091 019d 01       		.byte	0x1
 2092 019e 3F       		.uleb128 0x3f
 2093 019f 19       		.uleb128 0x19
 2094 01a0 03       		.uleb128 0x3
 2095 01a1 0E       		.uleb128 0xe
 2096 01a2 3A       		.uleb128 0x3a
 2097 01a3 0B       		.uleb128 0xb
 2098 01a4 3B       		.uleb128 0x3b
 2099 01a5 0B       		.uleb128 0xb
 2100 01a6 27       		.uleb128 0x27
 2101 01a7 19       		.uleb128 0x19
 2102 01a8 49       		.uleb128 0x49
 2103 01a9 13       		.uleb128 0x13
 2104 01aa 11       		.uleb128 0x11
 2105 01ab 01       		.uleb128 0x1
 2106 01ac 12       		.uleb128 0x12
 2107 01ad 06       		.uleb128 0x6
 2108 01ae 40       		.uleb128 0x40
 2109 01af 18       		.uleb128 0x18
 2110 01b0 9742     		.uleb128 0x2117
 2111 01b2 19       		.uleb128 0x19
 2112 01b3 01       		.uleb128 0x1
 2113 01b4 13       		.uleb128 0x13
 2114 01b5 00       		.byte	0
 2115 01b6 00       		.byte	0
 2116 01b7 23       		.uleb128 0x23
 2117 01b8 05       		.uleb128 0x5
 2118 01b9 00       		.byte	0
 2119 01ba 03       		.uleb128 0x3
 2120 01bb 0E       		.uleb128 0xe
 2121 01bc 3A       		.uleb128 0x3a
 2122 01bd 0B       		.uleb128 0xb
 2123 01be 3B       		.uleb128 0x3b
 2124 01bf 0B       		.uleb128 0xb
 2125 01c0 49       		.uleb128 0x49
 2126 01c1 13       		.uleb128 0x13
ARM GAS  /tmp/ccXVTxD7.s 			page 42


 2127 01c2 02       		.uleb128 0x2
 2128 01c3 17       		.uleb128 0x17
 2129 01c4 00       		.byte	0
 2130 01c5 00       		.byte	0
 2131 01c6 24       		.uleb128 0x24
 2132 01c7 2E       		.uleb128 0x2e
 2133 01c8 01       		.byte	0x1
 2134 01c9 3F       		.uleb128 0x3f
 2135 01ca 19       		.uleb128 0x19
 2136 01cb 03       		.uleb128 0x3
 2137 01cc 0E       		.uleb128 0xe
 2138 01cd 3A       		.uleb128 0x3a
 2139 01ce 0B       		.uleb128 0xb
 2140 01cf 3B       		.uleb128 0x3b
 2141 01d0 0B       		.uleb128 0xb
 2142 01d1 27       		.uleb128 0x27
 2143 01d2 19       		.uleb128 0x19
 2144 01d3 11       		.uleb128 0x11
 2145 01d4 01       		.uleb128 0x1
 2146 01d5 12       		.uleb128 0x12
 2147 01d6 06       		.uleb128 0x6
 2148 01d7 40       		.uleb128 0x40
 2149 01d8 18       		.uleb128 0x18
 2150 01d9 9742     		.uleb128 0x2117
 2151 01db 19       		.uleb128 0x19
 2152 01dc 01       		.uleb128 0x1
 2153 01dd 13       		.uleb128 0x13
 2154 01de 00       		.byte	0
 2155 01df 00       		.byte	0
 2156 01e0 25       		.uleb128 0x25
 2157 01e1 05       		.uleb128 0x5
 2158 01e2 00       		.byte	0
 2159 01e3 03       		.uleb128 0x3
 2160 01e4 0E       		.uleb128 0xe
 2161 01e5 3A       		.uleb128 0x3a
 2162 01e6 0B       		.uleb128 0xb
 2163 01e7 3B       		.uleb128 0x3b
 2164 01e8 0B       		.uleb128 0xb
 2165 01e9 49       		.uleb128 0x49
 2166 01ea 13       		.uleb128 0x13
 2167 01eb 02       		.uleb128 0x2
 2168 01ec 18       		.uleb128 0x18
 2169 01ed 00       		.byte	0
 2170 01ee 00       		.byte	0
 2171 01ef 26       		.uleb128 0x26
 2172 01f0 34       		.uleb128 0x34
 2173 01f1 00       		.byte	0
 2174 01f2 03       		.uleb128 0x3
 2175 01f3 0E       		.uleb128 0xe
 2176 01f4 3A       		.uleb128 0x3a
 2177 01f5 0B       		.uleb128 0xb
 2178 01f6 3B       		.uleb128 0x3b
 2179 01f7 0B       		.uleb128 0xb
 2180 01f8 49       		.uleb128 0x49
 2181 01f9 13       		.uleb128 0x13
 2182 01fa 02       		.uleb128 0x2
 2183 01fb 17       		.uleb128 0x17
ARM GAS  /tmp/ccXVTxD7.s 			page 43


 2184 01fc 00       		.byte	0
 2185 01fd 00       		.byte	0
 2186 01fe 27       		.uleb128 0x27
 2187 01ff 2E       		.uleb128 0x2e
 2188 0200 01       		.byte	0x1
 2189 0201 3F       		.uleb128 0x3f
 2190 0202 19       		.uleb128 0x19
 2191 0203 03       		.uleb128 0x3
 2192 0204 0E       		.uleb128 0xe
 2193 0205 3A       		.uleb128 0x3a
 2194 0206 0B       		.uleb128 0xb
 2195 0207 3B       		.uleb128 0x3b
 2196 0208 0B       		.uleb128 0xb
 2197 0209 27       		.uleb128 0x27
 2198 020a 19       		.uleb128 0x19
 2199 020b 11       		.uleb128 0x11
 2200 020c 01       		.uleb128 0x1
 2201 020d 12       		.uleb128 0x12
 2202 020e 06       		.uleb128 0x6
 2203 020f 40       		.uleb128 0x40
 2204 0210 18       		.uleb128 0x18
 2205 0211 9742     		.uleb128 0x2117
 2206 0213 19       		.uleb128 0x19
 2207 0214 00       		.byte	0
 2208 0215 00       		.byte	0
 2209 0216 00       		.byte	0
 2210              		.section	.debug_loc,"",%progbits
 2211              	.Ldebug_loc0:
 2212              	.LLST7:
 2213 0000 00000000 		.4byte	.LVL25
 2214 0004 02000000 		.4byte	.LVL26
 2215 0008 0100     		.2byte	0x1
 2216 000a 50       		.byte	0x50
 2217 000b 02000000 		.4byte	.LVL26
 2218 000f 08000000 		.4byte	.LFE150
 2219 0013 0400     		.2byte	0x4
 2220 0015 F3       		.byte	0xf3
 2221 0016 01       		.uleb128 0x1
 2222 0017 50       		.byte	0x50
 2223 0018 9F       		.byte	0x9f
 2224 0019 00000000 		.4byte	0
 2225 001d 00000000 		.4byte	0
 2226              	.LLST6:
 2227 0021 00000000 		.4byte	.LVL23
 2228 0025 02000000 		.4byte	.LVL24
 2229 0029 0100     		.2byte	0x1
 2230 002b 50       		.byte	0x50
 2231 002c 02000000 		.4byte	.LVL24
 2232 0030 04000000 		.4byte	.LFE149
 2233 0034 0400     		.2byte	0x4
 2234 0036 F3       		.byte	0xf3
 2235 0037 01       		.uleb128 0x1
 2236 0038 50       		.byte	0x50
 2237 0039 9F       		.byte	0x9f
 2238 003a 00000000 		.4byte	0
 2239 003e 00000000 		.4byte	0
 2240              	.LLST5:
ARM GAS  /tmp/ccXVTxD7.s 			page 44


 2241 0042 02000000 		.4byte	.LVL18
 2242 0046 06000000 		.4byte	.LVL19
 2243 004a 0100     		.2byte	0x1
 2244 004c 52       		.byte	0x52
 2245 004d 06000000 		.4byte	.LVL19
 2246 0051 14000000 		.4byte	.LFE146
 2247 0055 0100     		.2byte	0x1
 2248 0057 53       		.byte	0x53
 2249 0058 00000000 		.4byte	0
 2250 005c 00000000 		.4byte	0
 2251              	.LLST4:
 2252 0060 02000000 		.4byte	.LVL14
 2253 0064 0A000000 		.4byte	.LVL16
 2254 0068 0100     		.2byte	0x1
 2255 006a 52       		.byte	0x52
 2256 006b 0A000000 		.4byte	.LVL16
 2257 006f 14000000 		.4byte	.LFE145
 2258 0073 0100     		.2byte	0x1
 2259 0075 53       		.byte	0x53
 2260 0076 00000000 		.4byte	0
 2261 007a 00000000 		.4byte	0
 2262              	.LLST3:
 2263 007e 02000000 		.4byte	.LVL10
 2264 0082 06000000 		.4byte	.LVL11
 2265 0086 0100     		.2byte	0x1
 2266 0088 52       		.byte	0x52
 2267 0089 06000000 		.4byte	.LVL11
 2268 008d 14000000 		.4byte	.LFE144
 2269 0091 0100     		.2byte	0x1
 2270 0093 53       		.byte	0x53
 2271 0094 00000000 		.4byte	0
 2272 0098 00000000 		.4byte	0
 2273              	.LLST2:
 2274 009c 02000000 		.4byte	.LVL6
 2275 00a0 0A000000 		.4byte	.LVL8
 2276 00a4 0100     		.2byte	0x1
 2277 00a6 52       		.byte	0x52
 2278 00a7 0A000000 		.4byte	.LVL8
 2279 00ab 14000000 		.4byte	.LFE143
 2280 00af 0100     		.2byte	0x1
 2281 00b1 53       		.byte	0x53
 2282 00b2 00000000 		.4byte	0
 2283 00b6 00000000 		.4byte	0
 2284              	.LLST0:
 2285 00ba 00000000 		.4byte	.LVL0
 2286 00be 02000000 		.4byte	.LVL1
 2287 00c2 0100     		.2byte	0x1
 2288 00c4 51       		.byte	0x51
 2289 00c5 02000000 		.4byte	.LVL1
 2290 00c9 1C000000 		.4byte	.LFE142
 2291 00cd 0400     		.2byte	0x4
 2292 00cf F3       		.byte	0xf3
 2293 00d0 01       		.uleb128 0x1
 2294 00d1 51       		.byte	0x51
 2295 00d2 9F       		.byte	0x9f
 2296 00d3 00000000 		.4byte	0
 2297 00d7 00000000 		.4byte	0
ARM GAS  /tmp/ccXVTxD7.s 			page 45


 2298              	.LLST1:
 2299 00db 04000000 		.4byte	.LVL2
 2300 00df 0C000000 		.4byte	.LVL3
 2301 00e3 0100     		.2byte	0x1
 2302 00e5 52       		.byte	0x52
 2303 00e6 0C000000 		.4byte	.LVL3
 2304 00ea 12000000 		.4byte	.LVL4
 2305 00ee 0100     		.2byte	0x1
 2306 00f0 53       		.byte	0x53
 2307 00f1 12000000 		.4byte	.LVL4
 2308 00f5 1C000000 		.4byte	.LFE142
 2309 00f9 0100     		.2byte	0x1
 2310 00fb 51       		.byte	0x51
 2311 00fc 00000000 		.4byte	0
 2312 0100 00000000 		.4byte	0
 2313              		.section	.debug_aranges,"",%progbits
 2314 0000 5C000000 		.4byte	0x5c
 2315 0004 0200     		.2byte	0x2
 2316 0006 00000000 		.4byte	.Ldebug_info0
 2317 000a 04       		.byte	0x4
 2318 000b 00       		.byte	0
 2319 000c 0000     		.2byte	0
 2320 000e 0000     		.2byte	0
 2321 0010 00000000 		.4byte	.LFB142
 2322 0014 1C000000 		.4byte	.LFE142-.LFB142
 2323 0018 00000000 		.4byte	.LFB143
 2324 001c 14000000 		.4byte	.LFE143-.LFB143
 2325 0020 00000000 		.4byte	.LFB144
 2326 0024 14000000 		.4byte	.LFE144-.LFB144
 2327 0028 00000000 		.4byte	.LFB145
 2328 002c 14000000 		.4byte	.LFE145-.LFB145
 2329 0030 00000000 		.4byte	.LFB146
 2330 0034 14000000 		.4byte	.LFE146-.LFB146
 2331 0038 00000000 		.4byte	.LFB147
 2332 003c 0C000000 		.4byte	.LFE147-.LFB147
 2333 0040 00000000 		.4byte	.LFB148
 2334 0044 0C000000 		.4byte	.LFE148-.LFB148
 2335 0048 00000000 		.4byte	.LFB149
 2336 004c 04000000 		.4byte	.LFE149-.LFB149
 2337 0050 00000000 		.4byte	.LFB150
 2338 0054 08000000 		.4byte	.LFE150-.LFB150
 2339 0058 00000000 		.4byte	0
 2340 005c 00000000 		.4byte	0
 2341              		.section	.debug_ranges,"",%progbits
 2342              	.Ldebug_ranges0:
 2343 0000 00000000 		.4byte	.LFB142
 2344 0004 1C000000 		.4byte	.LFE142
 2345 0008 00000000 		.4byte	.LFB143
 2346 000c 14000000 		.4byte	.LFE143
 2347 0010 00000000 		.4byte	.LFB144
 2348 0014 14000000 		.4byte	.LFE144
 2349 0018 00000000 		.4byte	.LFB145
 2350 001c 14000000 		.4byte	.LFE145
 2351 0020 00000000 		.4byte	.LFB146
 2352 0024 14000000 		.4byte	.LFE146
 2353 0028 00000000 		.4byte	.LFB147
 2354 002c 0C000000 		.4byte	.LFE147
ARM GAS  /tmp/ccXVTxD7.s 			page 46


 2355 0030 00000000 		.4byte	.LFB148
 2356 0034 0C000000 		.4byte	.LFE148
 2357 0038 00000000 		.4byte	.LFB149
 2358 003c 04000000 		.4byte	.LFE149
 2359 0040 00000000 		.4byte	.LFB150
 2360 0044 08000000 		.4byte	.LFE150
 2361 0048 00000000 		.4byte	0
 2362 004c 00000000 		.4byte	0
 2363              		.section	.debug_line,"",%progbits
 2364              	.Ldebug_line0:
 2365 0000 0D030000 		.section	.debug_str,"MS",%progbits,1
 2365      02005802 
 2365      00000201 
 2365      FB0E0D00 
 2365      01010101 
 2366              	.LASF48:
 2367 0000 5F64736F 		.ascii	"_dso_handle\000"
 2367      5F68616E 
 2367      646C6500 
 2368              	.LASF3:
 2369 000c 73686F72 		.ascii	"short int\000"
 2369      7420696E 
 2369      7400
 2370              	.LASF47:
 2371 0016 5F666E61 		.ascii	"_fnargs\000"
 2371      72677300 
 2372              	.LASF101:
 2373 001e 5F72616E 		.ascii	"_rand48\000"
 2373      64343800 
 2374              	.LASF80:
 2375 0026 5F656D65 		.ascii	"_emergency\000"
 2375      7267656E 
 2375      637900
 2376              	.LASF117:
 2377 0031 5F676574 		.ascii	"_getdate_err\000"
 2377      64617465 
 2377      5F657272 
 2377      00
 2378              	.LASF92:
 2379 003e 5F617465 		.ascii	"_atexit0\000"
 2379      78697430 
 2379      00
 2380              	.LASF121:
 2381 0047 5F776372 		.ascii	"_wcrtomb_state\000"
 2381      746F6D62 
 2381      5F737461 
 2381      746500
 2382              	.LASF122:
 2383 0056 5F776373 		.ascii	"_wcsrtombs_state\000"
 2383      72746F6D 
 2383      62735F73 
 2383      74617465 
 2383      00
 2384              	.LASF133:
 2385 0067 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 2385      6972715F 
 2385      70726576 
ARM GAS  /tmp/ccXVTxD7.s 			page 47


 2385      5F696E74 
 2385      65727275 
 2386              	.LASF60:
 2387 0084 5F6C6266 		.ascii	"_lbfsize\000"
 2387      73697A65 
 2387      00
 2388              	.LASF19:
 2389 008d 52737463 		.ascii	"Rstc\000"
 2389      00
 2390              	.LASF14:
 2391 0092 49544D5F 		.ascii	"ITM_RxBuffer\000"
 2391      52784275 
 2391      66666572 
 2391      00
 2392              	.LASF119:
 2393 009f 5F6D6272 		.ascii	"_mbrtowc_state\000"
 2393      746F7763 
 2393      5F737461 
 2393      746500
 2394              	.LASF114:
 2395 00ae 5F776374 		.ascii	"_wctomb_state\000"
 2395      6F6D625F 
 2395      73746174 
 2395      6500
 2396              	.LASF37:
 2397 00bc 5F5F746D 		.ascii	"__tm_sec\000"
 2397      5F736563 
 2397      00
 2398              	.LASF21:
 2399 00c5 5F6F6666 		.ascii	"_off_t\000"
 2399      5F7400
 2400              	.LASF65:
 2401 00cc 5F636C6F 		.ascii	"_close\000"
 2401      736500
 2402              	.LASF1:
 2403 00d3 7369676E 		.ascii	"signed char\000"
 2403      65642063 
 2403      68617200 
 2404              	.LASF138:
 2405 00df 705F7273 		.ascii	"p_rstc\000"
 2405      746300
 2406              	.LASF66:
 2407 00e6 5F756275 		.ascii	"_ubuf\000"
 2407      6600
 2408              	.LASF10:
 2409 00ec 6C6F6E67 		.ascii	"long long unsigned int\000"
 2409      206C6F6E 
 2409      6720756E 
 2409      7369676E 
 2409      65642069 
 2410              	.LASF39:
 2411 0103 5F5F746D 		.ascii	"__tm_hour\000"
 2411      5F686F75 
 2411      7200
 2412              	.LASF95:
 2413 010d 5F5F7366 		.ascii	"__sf\000"
 2413      00
ARM GAS  /tmp/ccXVTxD7.s 			page 48


 2414              	.LASF46:
 2415 0112 5F6F6E5F 		.ascii	"_on_exit_args\000"
 2415      65786974 
 2415      5F617267 
 2415      7300
 2416              	.LASF61:
 2417 0120 5F636F6F 		.ascii	"_cookie\000"
 2417      6B696500 
 2418              	.LASF94:
 2419 0128 5F5F7367 		.ascii	"__sglue\000"
 2419      6C756500 
 2420              	.LASF5:
 2421 0130 6C6F6E67 		.ascii	"long int\000"
 2421      20696E74 
 2421      00
 2422              	.LASF58:
 2423 0139 5F666C61 		.ascii	"_flags\000"
 2423      677300
 2424              	.LASF50:
 2425 0140 5F69735F 		.ascii	"_is_cxa\000"
 2425      63786100 
 2426              	.LASF76:
 2427 0148 5F737464 		.ascii	"_stdin\000"
 2427      696E00
 2428              	.LASF86:
 2429 014f 5F726573 		.ascii	"_result_k\000"
 2429      756C745F 
 2429      6B00
 2430              	.LASF9:
 2431 0159 6C6F6E67 		.ascii	"long long int\000"
 2431      206C6F6E 
 2431      6720696E 
 2431      7400
 2432              	.LASF135:
 2433 0167 646F7562 		.ascii	"double\000"
 2433      6C6500
 2434              	.LASF90:
 2435 016e 5F637674 		.ascii	"_cvtbuf\000"
 2435      62756600 
 2436              	.LASF69:
 2437 0176 5F6F6666 		.ascii	"_offset\000"
 2437      73657400 
 2438              	.LASF120:
 2439 017e 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 2439      72746F77 
 2439      63735F73 
 2439      74617465 
 2439      00
 2440              	.LASF150:
 2441 018f 72737463 		.ascii	"rstc_set_external_reset\000"
 2441      5F736574 
 2441      5F657874 
 2441      65726E61 
 2441      6C5F7265 
 2442              	.LASF118:
 2443 01a7 5F6D6272 		.ascii	"_mbrlen_state\000"
 2443      6C656E5F 
ARM GAS  /tmp/ccXVTxD7.s 			page 49


 2443      73746174 
 2443      6500
 2444              	.LASF4:
 2445 01b5 73686F72 		.ascii	"short unsigned int\000"
 2445      7420756E 
 2445      7369676E 
 2445      65642069 
 2445      6E7400
 2446              	.LASF53:
 2447 01c8 5F666E73 		.ascii	"_fns\000"
 2447      00
 2448              	.LASF7:
 2449 01cd 5F5F7569 		.ascii	"__uint32_t\000"
 2449      6E743332 
 2449      5F7400
 2450              	.LASF33:
 2451 01d8 5F736967 		.ascii	"_sign\000"
 2451      6E00
 2452              	.LASF127:
 2453 01de 5F696D70 		.ascii	"_impure_ptr\000"
 2453      7572655F 
 2453      70747200 
 2454              	.LASF78:
 2455 01ea 5F737464 		.ascii	"_stderr\000"
 2455      65727200 
 2456              	.LASF35:
 2457 01f2 5F426967 		.ascii	"_Bigint\000"
 2457      696E7400 
 2458              	.LASF62:
 2459 01fa 5F726561 		.ascii	"_read\000"
 2459      6400
 2460              	.LASF36:
 2461 0200 5F5F746D 		.ascii	"__tm\000"
 2461      00
 2462              	.LASF25:
 2463 0205 5F5F7763 		.ascii	"__wchb\000"
 2463      686200
 2464              	.LASF15:
 2465 020c 53797374 		.ascii	"SystemCoreClock\000"
 2465      656D436F 
 2465      7265436C 
 2465      6F636B00 
 2466              	.LASF77:
 2467 021c 5F737464 		.ascii	"_stdout\000"
 2467      6F757400 
 2468              	.LASF89:
 2469 0224 5F637674 		.ascii	"_cvtlen\000"
 2469      6C656E00 
 2470              	.LASF8:
 2471 022c 6C6F6E67 		.ascii	"long unsigned int\000"
 2471      20756E73 
 2471      69676E65 
 2471      6420696E 
 2471      7400
 2472              	.LASF59:
 2473 023e 5F66696C 		.ascii	"_file\000"
 2473      6500
ARM GAS  /tmp/ccXVTxD7.s 			page 50


 2474              	.LASF52:
 2475 0244 5F696E64 		.ascii	"_ind\000"
 2475      00
 2476              	.LASF70:
 2477 0249 5F646174 		.ascii	"_data\000"
 2477      6100
 2478              	.LASF99:
 2479 024f 5F6E696F 		.ascii	"_niobs\000"
 2479      627300
 2480              	.LASF110:
 2481 0256 5F72616E 		.ascii	"_rand_next\000"
 2481      645F6E65 
 2481      787400
 2482              	.LASF116:
 2483 0261 5F736967 		.ascii	"_signal_buf\000"
 2483      6E616C5F 
 2483      62756600 
 2484              	.LASF107:
 2485 026d 5F617363 		.ascii	"_asctime_buf\000"
 2485      74696D65 
 2485      5F627566 
 2485      00
 2486              	.LASF85:
 2487 027a 5F726573 		.ascii	"_result\000"
 2487      756C7400 
 2488              	.LASF24:
 2489 0282 5F5F7763 		.ascii	"__wch\000"
 2489      6800
 2490              	.LASF124:
 2491 0288 5F6E6578 		.ascii	"_nextf\000"
 2491      746600
 2492              	.LASF91:
 2493 028f 5F6E6577 		.ascii	"_new\000"
 2493      00
 2494              	.LASF71:
 2495 0294 5F6C6F63 		.ascii	"_lock\000"
 2495      6B00
 2496              	.LASF103:
 2497 029a 5F6D756C 		.ascii	"_mult\000"
 2497      7400
 2498              	.LASF63:
 2499 02a0 5F777269 		.ascii	"_write\000"
 2499      746500
 2500              	.LASF42:
 2501 02a7 5F5F746D 		.ascii	"__tm_year\000"
 2501      5F796561 
 2501      7200
 2502              	.LASF141:
 2503 02b1 72737463 		.ascii	"rstc_disable_user_reset_interrupt\000"
 2503      5F646973 
 2503      61626C65 
 2503      5F757365 
 2503      725F7265 
 2504              	.LASF136:
 2505 02d3 72737463 		.ascii	"rstc_get_reset_cause\000"
 2505      5F676574 
 2505      5F726573 
ARM GAS  /tmp/ccXVTxD7.s 			page 51


 2505      65745F63 
 2505      61757365 
 2506              	.LASF13:
 2507 02e8 73697A65 		.ascii	"sizetype\000"
 2507      74797065 
 2507      00
 2508              	.LASF147:
 2509 02f1 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 2509      43393920 
 2509      362E332E 
 2509      31203230 
 2509      31373036 
 2510 0324 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 2510      76352D64 
 2510      3136202D 
 2510      6D666C6F 
 2510      61742D61 
 2511 0357 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 2511      6E2D7365 
 2511      6374696F 
 2511      6E73202D 
 2511      66646174 
 2512 038a 6F6E7374 		.ascii	"onstant\000"
 2512      616E7400 
 2513              	.LASF111:
 2514 0392 5F723438 		.ascii	"_r48\000"
 2514      00
 2515              	.LASF41:
 2516 0397 5F5F746D 		.ascii	"__tm_mon\000"
 2516      5F6D6F6E 
 2516      00
 2517              	.LASF51:
 2518 03a0 5F617465 		.ascii	"_atexit\000"
 2518      78697400 
 2519              	.LASF129:
 2520 03a8 7375626F 		.ascii	"suboptarg\000"
 2520      70746172 
 2520      6700
 2521              	.LASF83:
 2522 03b2 5F5F7364 		.ascii	"__sdidinit\000"
 2522      6964696E 
 2522      697400
 2523              	.LASF109:
 2524 03bd 5F67616D 		.ascii	"_gamma_signgam\000"
 2524      6D615F73 
 2524      69676E67 
 2524      616D00
 2525              	.LASF23:
 2526 03cc 77696E74 		.ascii	"wint_t\000"
 2526      5F7400
 2527              	.LASF137:
 2528 03d3 72737463 		.ascii	"rstc_get_status\000"
 2528      5F676574 
 2528      5F737461 
 2528      74757300 
 2529              	.LASF134:
 2530 03e3 666C6F61 		.ascii	"float\000"
ARM GAS  /tmp/ccXVTxD7.s 			page 52


 2530      7400
 2531              	.LASF130:
 2532 03e9 675F696E 		.ascii	"g_interrupt_enabled\000"
 2532      74657272 
 2532      7570745F 
 2532      656E6162 
 2532      6C656400 
 2533              	.LASF20:
 2534 03fd 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 2534      4B5F5245 
 2534      43555253 
 2534      4956455F 
 2534      5400
 2535              	.LASF55:
 2536 040f 5F626173 		.ascii	"_base\000"
 2536      6500
 2537              	.LASF131:
 2538 0415 5F426F6F 		.ascii	"_Bool\000"
 2538      6C00
 2539              	.LASF11:
 2540 041b 696E7433 		.ascii	"int32_t\000"
 2540      325F7400 
 2541              	.LASF2:
 2542 0423 756E7369 		.ascii	"unsigned char\000"
 2542      676E6564 
 2542      20636861 
 2542      7200
 2543              	.LASF100:
 2544 0431 5F696F62 		.ascii	"_iobs\000"
 2544      7300
 2545              	.LASF18:
 2546 0437 52535443 		.ascii	"RSTC_MR\000"
 2546      5F4D5200 
 2547              	.LASF123:
 2548 043f 5F685F65 		.ascii	"_h_errno\000"
 2548      72726E6F 
 2548      00
 2549              	.LASF29:
 2550 0448 5F666C6F 		.ascii	"_flock_t\000"
 2550      636B5F74 
 2550      00
 2551              	.LASF44:
 2552 0451 5F5F746D 		.ascii	"__tm_yday\000"
 2552      5F796461 
 2552      7900
 2553              	.LASF54:
 2554 045b 5F5F7362 		.ascii	"__sbuf\000"
 2554      756600
 2555              	.LASF73:
 2556 0462 5F666C61 		.ascii	"_flags2\000"
 2556      67733200 
 2557              	.LASF88:
 2558 046a 5F667265 		.ascii	"_freelist\000"
 2558      656C6973 
 2558      7400
 2559              	.LASF97:
 2560 0474 5F5F4649 		.ascii	"__FILE\000"
ARM GAS  /tmp/ccXVTxD7.s 			page 53


 2560      4C4500
 2561              	.LASF28:
 2562 047b 5F6D6273 		.ascii	"_mbstate_t\000"
 2562      74617465 
 2562      5F7400
 2563              	.LASF57:
 2564 0486 5F5F7346 		.ascii	"__sFILE\000"
 2564      494C4500 
 2565              	.LASF72:
 2566 048e 5F6D6273 		.ascii	"_mbstate\000"
 2566      74617465 
 2566      00
 2567              	.LASF112:
 2568 0497 5F6D626C 		.ascii	"_mblen_state\000"
 2568      656E5F73 
 2568      74617465 
 2568      00
 2569              	.LASF79:
 2570 04a4 5F696E63 		.ascii	"_inc\000"
 2570      00
 2571              	.LASF139:
 2572 04a9 72737463 		.ascii	"rstc_reset_extern\000"
 2572      5F726573 
 2572      65745F65 
 2572      78746572 
 2572      6E00
 2573              	.LASF82:
 2574 04bb 5F637572 		.ascii	"_current_locale\000"
 2574      72656E74 
 2574      5F6C6F63 
 2574      616C6500 
 2575              	.LASF84:
 2576 04cb 5F5F636C 		.ascii	"__cleanup\000"
 2576      65616E75 
 2576      7000
 2577              	.LASF32:
 2578 04d5 5F6D6178 		.ascii	"_maxwds\000"
 2578      77647300 
 2579              	.LASF74:
 2580 04dd 5F726565 		.ascii	"_reent\000"
 2580      6E7400
 2581              	.LASF16:
 2582 04e4 52535443 		.ascii	"RSTC_CR\000"
 2582      5F435200 
 2583              	.LASF26:
 2584 04ec 5F5F636F 		.ascii	"__count\000"
 2584      756E7400 
 2585              	.LASF27:
 2586 04f4 5F5F7661 		.ascii	"__value\000"
 2586      6C756500 
 2587              	.LASF64:
 2588 04fc 5F736565 		.ascii	"_seek\000"
 2588      6B00
 2589              	.LASF43:
 2590 0502 5F5F746D 		.ascii	"__tm_wday\000"
 2590      5F776461 
 2590      7900
ARM GAS  /tmp/ccXVTxD7.s 			page 54


 2591              	.LASF22:
 2592 050c 5F66706F 		.ascii	"_fpos_t\000"
 2592      735F7400 
 2593              	.LASF75:
 2594 0514 5F657272 		.ascii	"_errno\000"
 2594      6E6F00
 2595              	.LASF96:
 2596 051b 63686172 		.ascii	"char\000"
 2596      00
 2597              	.LASF68:
 2598 0520 5F626C6B 		.ascii	"_blksize\000"
 2598      73697A65 
 2598      00
 2599              	.LASF142:
 2600 0529 6D6F6465 		.ascii	"mode\000"
 2600      00
 2601              	.LASF56:
 2602 052e 5F73697A 		.ascii	"_size\000"
 2602      6500
 2603              	.LASF0:
 2604 0534 756E7369 		.ascii	"unsigned int\000"
 2604      676E6564 
 2604      20696E74 
 2604      00
 2605              	.LASF102:
 2606 0541 5F736565 		.ascii	"_seed\000"
 2606      6400
 2607              	.LASF6:
 2608 0547 5F5F696E 		.ascii	"__int32_t\000"
 2608      7433325F 
 2608      7400
 2609              	.LASF31:
 2610 0551 5F6E6578 		.ascii	"_next\000"
 2610      7400
 2611              	.LASF106:
 2612 0557 5F737472 		.ascii	"_strtok_last\000"
 2612      746F6B5F 
 2612      6C617374 
 2612      00
 2613              	.LASF143:
 2614 0564 72737463 		.ascii	"rstc_enable_user_reset_interrupt\000"
 2614      5F656E61 
 2614      626C655F 
 2614      75736572 
 2614      5F726573 
 2615              	.LASF49:
 2616 0585 5F666E74 		.ascii	"_fntypes\000"
 2616      79706573 
 2616      00
 2617              	.LASF140:
 2618 058e 72737463 		.ascii	"rstc_start_software_reset\000"
 2618      5F737461 
 2618      72745F73 
 2618      6F667477 
 2618      6172655F 
 2619              	.LASF17:
 2620 05a8 52535443 		.ascii	"RSTC_SR\000"
ARM GAS  /tmp/ccXVTxD7.s 			page 55


 2620      5F535200 
 2621              	.LASF149:
 2622 05b0 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 2622      652F746F 
 2622      72626A6F 
 2622      726E2F65 
 2622      636C6970 
 2623              	.LASF30:
 2624 05df 5F5F554C 		.ascii	"__ULong\000"
 2624      6F6E6700 
 2625              	.LASF104:
 2626 05e7 5F616464 		.ascii	"_add\000"
 2626      00
 2627              	.LASF128:
 2628 05ec 5F676C6F 		.ascii	"_global_impure_ptr\000"
 2628      62616C5F 
 2628      696D7075 
 2628      72655F70 
 2628      747200
 2629              	.LASF81:
 2630 05ff 5F637572 		.ascii	"_current_category\000"
 2630      72656E74 
 2630      5F636174 
 2630      65676F72 
 2630      7900
 2631              	.LASF12:
 2632 0611 75696E74 		.ascii	"uint32_t\000"
 2632      33325F74 
 2632      00
 2633              	.LASF145:
 2634 061a 72737463 		.ascii	"rstc_enable_user_reset\000"
 2634      5F656E61 
 2634      626C655F 
 2634      75736572 
 2634      5F726573 
 2635              	.LASF105:
 2636 0631 5F756E75 		.ascii	"_unused_rand\000"
 2636      7365645F 
 2636      72616E64 
 2636      00
 2637              	.LASF34:
 2638 063e 5F776473 		.ascii	"_wds\000"
 2638      00
 2639              	.LASF98:
 2640 0643 5F676C75 		.ascii	"_glue\000"
 2640      6500
 2641              	.LASF125:
 2642 0649 5F6E6D61 		.ascii	"_nmalloc\000"
 2642      6C6C6F63 
 2642      00
 2643              	.LASF115:
 2644 0652 5F6C3634 		.ascii	"_l64a_buf\000"
 2644      615F6275 
 2644      6600
 2645              	.LASF144:
 2646 065c 72737463 		.ascii	"rstc_disable_user_reset\000"
 2646      5F646973 
ARM GAS  /tmp/ccXVTxD7.s 			page 56


 2646      61626C65 
 2646      5F757365 
 2646      725F7265 
 2647              	.LASF93:
 2648 0674 5F736967 		.ascii	"_sig_func\000"
 2648      5F66756E 
 2648      6300
 2649              	.LASF132:
 2650 067e 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 2650      6972715F 
 2650      63726974 
 2650      6963616C 
 2650      5F736563 
 2651              	.LASF67:
 2652 069f 5F6E6275 		.ascii	"_nbuf\000"
 2652      6600
 2653              	.LASF126:
 2654 06a5 5F756E75 		.ascii	"_unused\000"
 2654      73656400 
 2655              	.LASF45:
 2656 06ad 5F5F746D 		.ascii	"__tm_isdst\000"
 2656      5F697364 
 2656      737400
 2657              	.LASF108:
 2658 06b8 5F6C6F63 		.ascii	"_localtime_buf\000"
 2658      616C7469 
 2658      6D655F62 
 2658      756600
 2659              	.LASF38:
 2660 06c7 5F5F746D 		.ascii	"__tm_min\000"
 2660      5F6D696E 
 2660      00
 2661              	.LASF148:
 2662 06d0 2E2E2F61 		.ascii	"../asf/sam/drivers/rstc/rstc.c\000"
 2662      73662F73 
 2662      616D2F64 
 2662      72697665 
 2662      72732F72 
 2663              	.LASF113:
 2664 06ef 5F6D6274 		.ascii	"_mbtowc_state\000"
 2664      6F77635F 
 2664      73746174 
 2664      6500
 2665              	.LASF87:
 2666 06fd 5F703573 		.ascii	"_p5s\000"
 2666      00
 2667              	.LASF40:
 2668 0702 5F5F746D 		.ascii	"__tm_mday\000"
 2668      5F6D6461 
 2668      7900
 2669              	.LASF146:
 2670 070c 756C5F6C 		.ascii	"ul_length\000"
 2670      656E6774 
 2670      6800
 2671              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
