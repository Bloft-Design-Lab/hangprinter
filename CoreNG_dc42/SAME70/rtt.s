ARM GAS  /tmp/ccQL0uqT.s 			page 1


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
  12              		.file	"rtt.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.rtt_init,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	rtt_init
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	rtt_init, %function
  25              	rtt_init:
  26              	.LFB142:
  27              		.file 1 "../asf/sam/drivers/rtt/rtt.c"
   1:../asf/sam/drivers/rtt/rtt.c **** /**
   2:../asf/sam/drivers/rtt/rtt.c ****  * \file
   3:../asf/sam/drivers/rtt/rtt.c ****  *
   4:../asf/sam/drivers/rtt/rtt.c ****  * \brief Real-time Timer (RTT) driver for SAM.
   5:../asf/sam/drivers/rtt/rtt.c ****  *
   6:../asf/sam/drivers/rtt/rtt.c ****  * Copyright (c) 2011-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/rtt/rtt.c ****  *
   8:../asf/sam/drivers/rtt/rtt.c ****  * \asf_license_start
   9:../asf/sam/drivers/rtt/rtt.c ****  *
  10:../asf/sam/drivers/rtt/rtt.c ****  * \page License
  11:../asf/sam/drivers/rtt/rtt.c ****  *
  12:../asf/sam/drivers/rtt/rtt.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/rtt/rtt.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/rtt/rtt.c ****  *
  15:../asf/sam/drivers/rtt/rtt.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/rtt/rtt.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/rtt/rtt.c ****  *
  18:../asf/sam/drivers/rtt/rtt.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/rtt/rtt.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/rtt/rtt.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/rtt/rtt.c ****  *
  22:../asf/sam/drivers/rtt/rtt.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/rtt/rtt.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/rtt/rtt.c ****  *
  25:../asf/sam/drivers/rtt/rtt.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/rtt/rtt.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/rtt/rtt.c ****  *
  28:../asf/sam/drivers/rtt/rtt.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/rtt/rtt.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/rtt/rtt.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccQL0uqT.s 			page 2


  31:../asf/sam/drivers/rtt/rtt.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/rtt/rtt.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/rtt/rtt.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/rtt/rtt.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/rtt/rtt.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/rtt/rtt.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/rtt/rtt.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/rtt/rtt.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/rtt/rtt.c ****  *
  40:../asf/sam/drivers/rtt/rtt.c ****  * \asf_license_stop
  41:../asf/sam/drivers/rtt/rtt.c ****  *
  42:../asf/sam/drivers/rtt/rtt.c ****  */
  43:../asf/sam/drivers/rtt/rtt.c **** /*
  44:../asf/sam/drivers/rtt/rtt.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/rtt/rtt.c ****  */
  46:../asf/sam/drivers/rtt/rtt.c **** 
  47:../asf/sam/drivers/rtt/rtt.c **** #include "rtt.h"
  48:../asf/sam/drivers/rtt/rtt.c **** 
  49:../asf/sam/drivers/rtt/rtt.c **** /// @cond 0
  50:../asf/sam/drivers/rtt/rtt.c **** /**INDENT-OFF**/
  51:../asf/sam/drivers/rtt/rtt.c **** #ifdef __cplusplus
  52:../asf/sam/drivers/rtt/rtt.c **** extern "C" {
  53:../asf/sam/drivers/rtt/rtt.c **** #endif
  54:../asf/sam/drivers/rtt/rtt.c **** /**INDENT-ON**/
  55:../asf/sam/drivers/rtt/rtt.c **** /// @endcond
  56:../asf/sam/drivers/rtt/rtt.c **** 
  57:../asf/sam/drivers/rtt/rtt.c **** /**
  58:../asf/sam/drivers/rtt/rtt.c ****  * \defgroup sam_drivers_rtt_group Real-time Timer (RTT)
  59:../asf/sam/drivers/rtt/rtt.c ****  *
  60:../asf/sam/drivers/rtt/rtt.c ****  * The Real-time Timer is built around a 32-bit counter used to count
  61:../asf/sam/drivers/rtt/rtt.c ****  * roll-over events of the programmable 16-bit prescaler, which enables
  62:../asf/sam/drivers/rtt/rtt.c ****  * counting elapsed seconds from a 32 kHz slow clock source.
  63:../asf/sam/drivers/rtt/rtt.c ****  * This is a driver for configuration and use of the RTT peripheral.
  64:../asf/sam/drivers/rtt/rtt.c ****  *
  65:../asf/sam/drivers/rtt/rtt.c ****  * @{
  66:../asf/sam/drivers/rtt/rtt.c ****  */
  67:../asf/sam/drivers/rtt/rtt.c **** 
  68:../asf/sam/drivers/rtt/rtt.c **** /*
  69:../asf/sam/drivers/rtt/rtt.c ****  * In follow series chip, the bit RTC1HZ and RTTDIS in RTT_MR are write only.
  70:../asf/sam/drivers/rtt/rtt.c ****  * So we use a variable to record status of these bits.
  71:../asf/sam/drivers/rtt/rtt.c ****  */
  72:../asf/sam/drivers/rtt/rtt.c **** #if (SAM4N || SAM4S || SAM4E || SAM4C || SAMG51 || SAM4CP || SAM4CM || SAMV71 || SAMV70 || SAME70 |
  73:../asf/sam/drivers/rtt/rtt.c **** static uint32_t g_wobits_in_rtt_mr = 0;
  74:../asf/sam/drivers/rtt/rtt.c **** #endif
  75:../asf/sam/drivers/rtt/rtt.c **** 
  76:../asf/sam/drivers/rtt/rtt.c **** /**
  77:../asf/sam/drivers/rtt/rtt.c ****  * \brief Initialize the given RTT.
  78:../asf/sam/drivers/rtt/rtt.c ****  *
  79:../asf/sam/drivers/rtt/rtt.c ****  * \note This function restarts the real-time timer. If w_prescaler is equal to zero,
  80:../asf/sam/drivers/rtt/rtt.c ****  *  the prescaler period is equal to 2^16 * SCLK period. If not, the prescaler period
  81:../asf/sam/drivers/rtt/rtt.c ****  *  is equal to us_prescaler * SCLK period.
  82:../asf/sam/drivers/rtt/rtt.c ****  *
  83:../asf/sam/drivers/rtt/rtt.c ****  * \param p_rtt Pointer to an RTT instance.
  84:../asf/sam/drivers/rtt/rtt.c ****  * \param us_prescaler Prescaler value for the RTT.
  85:../asf/sam/drivers/rtt/rtt.c ****  *
  86:../asf/sam/drivers/rtt/rtt.c ****  * \return 0 if successful.
  87:../asf/sam/drivers/rtt/rtt.c ****  */
ARM GAS  /tmp/ccQL0uqT.s 			page 3


  88:../asf/sam/drivers/rtt/rtt.c **** uint32_t rtt_init(Rtt *p_rtt, uint16_t us_prescaler)
  89:../asf/sam/drivers/rtt/rtt.c **** {
  28              		.loc 1 89 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
  90:../asf/sam/drivers/rtt/rtt.c **** #if (SAM4N || SAM4S || SAM4E || SAM4C || SAMG51 || SAM4CP || SAM4CM || SAMV71 || SAMV70 || SAME70 |
  91:../asf/sam/drivers/rtt/rtt.c **** 	p_rtt->RTT_MR = (us_prescaler | RTT_MR_RTTRST | g_wobits_in_rtt_mr);
  34              		.loc 1 91 0
  35 0000 044B     		ldr	r3, .L2
  89:../asf/sam/drivers/rtt/rtt.c **** #if (SAM4N || SAM4S || SAM4E || SAM4C || SAMG51 || SAM4CP || SAM4CM || SAMV71 || SAMV70 || SAME70 |
  36              		.loc 1 89 0
  37 0002 0246     		mov	r2, r0
  92:../asf/sam/drivers/rtt/rtt.c **** #else
  93:../asf/sam/drivers/rtt/rtt.c **** 	p_rtt->RTT_MR = (us_prescaler | RTT_MR_RTTRST);
  94:../asf/sam/drivers/rtt/rtt.c **** #endif
  95:../asf/sam/drivers/rtt/rtt.c **** 	return 0;
  96:../asf/sam/drivers/rtt/rtt.c **** }
  38              		.loc 1 96 0
  39 0004 0020     		movs	r0, #0
  40              	.LVL1:
  91:../asf/sam/drivers/rtt/rtt.c **** #else
  41              		.loc 1 91 0
  42 0006 1B68     		ldr	r3, [r3]
  43 0008 43F48023 		orr	r3, r3, #262144
  44 000c 1943     		orrs	r1, r1, r3
  45              	.LVL2:
  46 000e 1160     		str	r1, [r2]
  47              		.loc 1 96 0
  48 0010 7047     		bx	lr
  49              	.L3:
  50 0012 00BF     		.align	2
  51              	.L2:
  52 0014 00000000 		.word	.LANCHOR0
  53              		.cfi_endproc
  54              	.LFE142:
  55              		.size	rtt_init, .-rtt_init
  56              		.section	.text.rtt_sel_source,"ax",%progbits
  57              		.align	1
  58              		.p2align 2,,3
  59              		.global	rtt_sel_source
  60              		.syntax unified
  61              		.thumb
  62              		.thumb_func
  63              		.fpu fpv5-d16
  64              		.type	rtt_sel_source, %function
  65              	rtt_sel_source:
  66              	.LFB143:
  97:../asf/sam/drivers/rtt/rtt.c **** 
  98:../asf/sam/drivers/rtt/rtt.c **** #if (SAM4N || SAM4S || SAM4E || SAM4C || SAMG51 || SAM4CP || SAM4CM || SAMV71 || SAMV70 || SAME70 |
  99:../asf/sam/drivers/rtt/rtt.c **** /**
 100:../asf/sam/drivers/rtt/rtt.c ****  * \brief Select RTT counter source.
 101:../asf/sam/drivers/rtt/rtt.c ****  *
 102:../asf/sam/drivers/rtt/rtt.c ****  * \param p_rtt Pointer to an RTT instance.
 103:../asf/sam/drivers/rtt/rtt.c ****  * \param is_rtc_sel RTC 1Hz Clock Selection.
ARM GAS  /tmp/ccQL0uqT.s 			page 4


 104:../asf/sam/drivers/rtt/rtt.c ****  */
 105:../asf/sam/drivers/rtt/rtt.c **** void rtt_sel_source(Rtt *p_rtt, bool is_rtc_sel)
 106:../asf/sam/drivers/rtt/rtt.c **** {
  67              		.loc 1 106 0
  68              		.cfi_startproc
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
  71              		@ link register save eliminated.
  72              	.LVL3:
 107:../asf/sam/drivers/rtt/rtt.c **** 	if(is_rtc_sel) {
  73              		.loc 1 107 0
  74 0000 41B9     		cbnz	r1, .L8
 108:../asf/sam/drivers/rtt/rtt.c **** 		g_wobits_in_rtt_mr |= RTT_MR_RTC1HZ;
 109:../asf/sam/drivers/rtt/rtt.c **** 		p_rtt->RTT_MR |= g_wobits_in_rtt_mr;
 110:../asf/sam/drivers/rtt/rtt.c **** 	} else {
 111:../asf/sam/drivers/rtt/rtt.c **** 		g_wobits_in_rtt_mr &= ~RTT_MR_RTC1HZ;
  75              		.loc 1 111 0
  76 0002 0949     		ldr	r1, .L9
  77              	.LVL4:
 112:../asf/sam/drivers/rtt/rtt.c **** 		p_rtt->RTT_MR |= g_wobits_in_rtt_mr;
  78              		.loc 1 112 0
  79 0004 0268     		ldr	r2, [r0]
 111:../asf/sam/drivers/rtt/rtt.c **** 		p_rtt->RTT_MR |= g_wobits_in_rtt_mr;
  80              		.loc 1 111 0
  81 0006 0B68     		ldr	r3, [r1]
  82 0008 23F08073 		bic	r3, r3, #16777216
  83              		.loc 1 112 0
  84 000c 1A43     		orrs	r2, r2, r3
 111:../asf/sam/drivers/rtt/rtt.c **** 		p_rtt->RTT_MR |= g_wobits_in_rtt_mr;
  85              		.loc 1 111 0
  86 000e 0B60     		str	r3, [r1]
  87              		.loc 1 112 0
  88 0010 0260     		str	r2, [r0]
  89 0012 7047     		bx	lr
  90              	.LVL5:
  91              	.L8:
 108:../asf/sam/drivers/rtt/rtt.c **** 		g_wobits_in_rtt_mr |= RTT_MR_RTC1HZ;
  92              		.loc 1 108 0
  93 0014 0449     		ldr	r1, .L9
  94              	.LVL6:
 109:../asf/sam/drivers/rtt/rtt.c **** 	} else {
  95              		.loc 1 109 0
  96 0016 0268     		ldr	r2, [r0]
 108:../asf/sam/drivers/rtt/rtt.c **** 		p_rtt->RTT_MR |= g_wobits_in_rtt_mr;
  97              		.loc 1 108 0
  98 0018 0B68     		ldr	r3, [r1]
  99 001a 43F08073 		orr	r3, r3, #16777216
 109:../asf/sam/drivers/rtt/rtt.c **** 	} else {
 100              		.loc 1 109 0
 101 001e 1A43     		orrs	r2, r2, r3
 108:../asf/sam/drivers/rtt/rtt.c **** 		p_rtt->RTT_MR |= g_wobits_in_rtt_mr;
 102              		.loc 1 108 0
 103 0020 0B60     		str	r3, [r1]
 109:../asf/sam/drivers/rtt/rtt.c **** 	} else {
 104              		.loc 1 109 0
 105 0022 0260     		str	r2, [r0]
 106 0024 7047     		bx	lr
ARM GAS  /tmp/ccQL0uqT.s 			page 5


 107              	.L10:
 108 0026 00BF     		.align	2
 109              	.L9:
 110 0028 00000000 		.word	.LANCHOR0
 111              		.cfi_endproc
 112              	.LFE143:
 113              		.size	rtt_sel_source, .-rtt_sel_source
 114              		.section	.text.rtt_enable,"ax",%progbits
 115              		.align	1
 116              		.p2align 2,,3
 117              		.global	rtt_enable
 118              		.syntax unified
 119              		.thumb
 120              		.thumb_func
 121              		.fpu fpv5-d16
 122              		.type	rtt_enable, %function
 123              	rtt_enable:
 124              	.LFB144:
 113:../asf/sam/drivers/rtt/rtt.c **** 	}
 114:../asf/sam/drivers/rtt/rtt.c **** }
 115:../asf/sam/drivers/rtt/rtt.c **** 
 116:../asf/sam/drivers/rtt/rtt.c **** /**
 117:../asf/sam/drivers/rtt/rtt.c ****  * \brief Enable RTT.
 118:../asf/sam/drivers/rtt/rtt.c ****  *
 119:../asf/sam/drivers/rtt/rtt.c ****  * \param p_rtt Pointer to an RTT instance.
 120:../asf/sam/drivers/rtt/rtt.c ****  */
 121:../asf/sam/drivers/rtt/rtt.c **** void rtt_enable(Rtt *p_rtt)
 122:../asf/sam/drivers/rtt/rtt.c **** {
 125              		.loc 1 122 0
 126              		.cfi_startproc
 127              		@ args = 0, pretend = 0, frame = 0
 128              		@ frame_needed = 0, uses_anonymous_args = 0
 129              		@ link register save eliminated.
 130              	.LVL7:
 123:../asf/sam/drivers/rtt/rtt.c **** 	g_wobits_in_rtt_mr &= ~RTT_MR_RTTDIS;
 131              		.loc 1 123 0
 132 0000 0449     		ldr	r1, .L12
 124:../asf/sam/drivers/rtt/rtt.c **** 	p_rtt->RTT_MR |= g_wobits_in_rtt_mr;
 133              		.loc 1 124 0
 134 0002 0268     		ldr	r2, [r0]
 123:../asf/sam/drivers/rtt/rtt.c **** 	g_wobits_in_rtt_mr &= ~RTT_MR_RTTDIS;
 135              		.loc 1 123 0
 136 0004 0B68     		ldr	r3, [r1]
 137 0006 23F48013 		bic	r3, r3, #1048576
 138              		.loc 1 124 0
 139 000a 1A43     		orrs	r2, r2, r3
 123:../asf/sam/drivers/rtt/rtt.c **** 	g_wobits_in_rtt_mr &= ~RTT_MR_RTTDIS;
 140              		.loc 1 123 0
 141 000c 0B60     		str	r3, [r1]
 142              		.loc 1 124 0
 143 000e 0260     		str	r2, [r0]
 144 0010 7047     		bx	lr
 145              	.L13:
 146 0012 00BF     		.align	2
 147              	.L12:
 148 0014 00000000 		.word	.LANCHOR0
 149              		.cfi_endproc
ARM GAS  /tmp/ccQL0uqT.s 			page 6


 150              	.LFE144:
 151              		.size	rtt_enable, .-rtt_enable
 152              		.section	.text.rtt_disable,"ax",%progbits
 153              		.align	1
 154              		.p2align 2,,3
 155              		.global	rtt_disable
 156              		.syntax unified
 157              		.thumb
 158              		.thumb_func
 159              		.fpu fpv5-d16
 160              		.type	rtt_disable, %function
 161              	rtt_disable:
 162              	.LFB145:
 125:../asf/sam/drivers/rtt/rtt.c **** }
 126:../asf/sam/drivers/rtt/rtt.c **** /**
 127:../asf/sam/drivers/rtt/rtt.c ****  * \brief Disable RTT.
 128:../asf/sam/drivers/rtt/rtt.c ****  *
 129:../asf/sam/drivers/rtt/rtt.c ****  * \param p_rtt Pointer to an RTT instance.
 130:../asf/sam/drivers/rtt/rtt.c ****  */
 131:../asf/sam/drivers/rtt/rtt.c **** void rtt_disable(Rtt *p_rtt)
 132:../asf/sam/drivers/rtt/rtt.c **** {
 163              		.loc 1 132 0
 164              		.cfi_startproc
 165              		@ args = 0, pretend = 0, frame = 0
 166              		@ frame_needed = 0, uses_anonymous_args = 0
 167              		@ link register save eliminated.
 168              	.LVL8:
 133:../asf/sam/drivers/rtt/rtt.c **** 	g_wobits_in_rtt_mr |= RTT_MR_RTTDIS;
 169              		.loc 1 133 0
 170 0000 0449     		ldr	r1, .L15
 134:../asf/sam/drivers/rtt/rtt.c **** 	p_rtt->RTT_MR |= g_wobits_in_rtt_mr;
 171              		.loc 1 134 0
 172 0002 0268     		ldr	r2, [r0]
 133:../asf/sam/drivers/rtt/rtt.c **** 	g_wobits_in_rtt_mr |= RTT_MR_RTTDIS;
 173              		.loc 1 133 0
 174 0004 0B68     		ldr	r3, [r1]
 175 0006 43F48013 		orr	r3, r3, #1048576
 176              		.loc 1 134 0
 177 000a 1A43     		orrs	r2, r2, r3
 133:../asf/sam/drivers/rtt/rtt.c **** 	g_wobits_in_rtt_mr |= RTT_MR_RTTDIS;
 178              		.loc 1 133 0
 179 000c 0B60     		str	r3, [r1]
 180              		.loc 1 134 0
 181 000e 0260     		str	r2, [r0]
 182 0010 7047     		bx	lr
 183              	.L16:
 184 0012 00BF     		.align	2
 185              	.L15:
 186 0014 00000000 		.word	.LANCHOR0
 187              		.cfi_endproc
 188              	.LFE145:
 189              		.size	rtt_disable, .-rtt_disable
 190              		.section	.text.rtt_enable_interrupt,"ax",%progbits
 191              		.align	1
 192              		.p2align 2,,3
 193              		.global	rtt_enable_interrupt
 194              		.syntax unified
ARM GAS  /tmp/ccQL0uqT.s 			page 7


 195              		.thumb
 196              		.thumb_func
 197              		.fpu fpv5-d16
 198              		.type	rtt_enable_interrupt, %function
 199              	rtt_enable_interrupt:
 200              	.LFB146:
 135:../asf/sam/drivers/rtt/rtt.c **** }
 136:../asf/sam/drivers/rtt/rtt.c **** #elif (SAMG53 || SAMG54 || SAMG55)
 137:../asf/sam/drivers/rtt/rtt.c **** void rtt_sel_source(Rtt *p_rtt, bool is_rtc_sel)
 138:../asf/sam/drivers/rtt/rtt.c **** {
 139:../asf/sam/drivers/rtt/rtt.c **** 	if(is_rtc_sel) {
 140:../asf/sam/drivers/rtt/rtt.c **** 		p_rtt->RTT_MR |= RTT_MR_RTC1HZ;
 141:../asf/sam/drivers/rtt/rtt.c **** 	} else {
 142:../asf/sam/drivers/rtt/rtt.c **** 		p_rtt->RTT_MR &= ~RTT_MR_RTC1HZ;
 143:../asf/sam/drivers/rtt/rtt.c **** 	}
 144:../asf/sam/drivers/rtt/rtt.c **** }
 145:../asf/sam/drivers/rtt/rtt.c **** 
 146:../asf/sam/drivers/rtt/rtt.c **** void rtt_enable(Rtt *p_rtt)
 147:../asf/sam/drivers/rtt/rtt.c **** {
 148:../asf/sam/drivers/rtt/rtt.c **** 	p_rtt->RTT_MR &= ~RTT_MR_RTTDIS;
 149:../asf/sam/drivers/rtt/rtt.c **** }
 150:../asf/sam/drivers/rtt/rtt.c **** /**
 151:../asf/sam/drivers/rtt/rtt.c ****  * \brief Disable RTT.
 152:../asf/sam/drivers/rtt/rtt.c ****  *
 153:../asf/sam/drivers/rtt/rtt.c ****  * \param p_rtt Pointer to an RTT instance.
 154:../asf/sam/drivers/rtt/rtt.c ****  */
 155:../asf/sam/drivers/rtt/rtt.c **** void rtt_disable(Rtt *p_rtt)
 156:../asf/sam/drivers/rtt/rtt.c **** {
 157:../asf/sam/drivers/rtt/rtt.c **** 	p_rtt->RTT_MR |= RTT_MR_RTTDIS;
 158:../asf/sam/drivers/rtt/rtt.c **** }
 159:../asf/sam/drivers/rtt/rtt.c **** #endif
 160:../asf/sam/drivers/rtt/rtt.c **** 
 161:../asf/sam/drivers/rtt/rtt.c **** /**
 162:../asf/sam/drivers/rtt/rtt.c ****  * \brief Enable RTT interrupts.
 163:../asf/sam/drivers/rtt/rtt.c ****  *
 164:../asf/sam/drivers/rtt/rtt.c ****  * \param p_rtt Pointer to an RTT instance.
 165:../asf/sam/drivers/rtt/rtt.c ****  * \param ul_sources Interrupts to be enabled.
 166:../asf/sam/drivers/rtt/rtt.c ****  */
 167:../asf/sam/drivers/rtt/rtt.c **** void rtt_enable_interrupt(Rtt *p_rtt, uint32_t ul_sources)
 168:../asf/sam/drivers/rtt/rtt.c **** {
 201              		.loc 1 168 0
 202              		.cfi_startproc
 203              		@ args = 0, pretend = 0, frame = 0
 204              		@ frame_needed = 0, uses_anonymous_args = 0
 205              		@ link register save eliminated.
 206              	.LVL9:
 169:../asf/sam/drivers/rtt/rtt.c **** 	uint32_t temp;
 170:../asf/sam/drivers/rtt/rtt.c **** 
 171:../asf/sam/drivers/rtt/rtt.c **** 	temp = p_rtt->RTT_MR;
 172:../asf/sam/drivers/rtt/rtt.c **** 	temp |= ul_sources;
 173:../asf/sam/drivers/rtt/rtt.c **** #if (SAM4N || SAM4S || SAM4E || SAM4C || SAMG51 || SAM4CP || SAM4CM || SAMV71 || SAMV70 || SAME70 |
 174:../asf/sam/drivers/rtt/rtt.c **** 	temp |= g_wobits_in_rtt_mr;
 207              		.loc 1 174 0
 208 0000 034B     		ldr	r3, .L18
 171:../asf/sam/drivers/rtt/rtt.c **** 	temp |= ul_sources;
 209              		.loc 1 171 0
 210 0002 0268     		ldr	r2, [r0]
ARM GAS  /tmp/ccQL0uqT.s 			page 8


 211              	.LVL10:
 212              		.loc 1 174 0
 213 0004 1B68     		ldr	r3, [r3]
 214 0006 1943     		orrs	r1, r1, r3
 215              	.LVL11:
 216 0008 1143     		orrs	r1, r1, r2
 217              	.LVL12:
 175:../asf/sam/drivers/rtt/rtt.c **** #endif
 176:../asf/sam/drivers/rtt/rtt.c **** 	p_rtt->RTT_MR = temp;
 218              		.loc 1 176 0
 219 000a 0160     		str	r1, [r0]
 220 000c 7047     		bx	lr
 221              	.L19:
 222 000e 00BF     		.align	2
 223              	.L18:
 224 0010 00000000 		.word	.LANCHOR0
 225              		.cfi_endproc
 226              	.LFE146:
 227              		.size	rtt_enable_interrupt, .-rtt_enable_interrupt
 228              		.section	.text.rtt_disable_interrupt,"ax",%progbits
 229              		.align	1
 230              		.p2align 2,,3
 231              		.global	rtt_disable_interrupt
 232              		.syntax unified
 233              		.thumb
 234              		.thumb_func
 235              		.fpu fpv5-d16
 236              		.type	rtt_disable_interrupt, %function
 237              	rtt_disable_interrupt:
 238              	.LFB147:
 177:../asf/sam/drivers/rtt/rtt.c **** }
 178:../asf/sam/drivers/rtt/rtt.c **** 
 179:../asf/sam/drivers/rtt/rtt.c **** /**
 180:../asf/sam/drivers/rtt/rtt.c ****  * \brief Disable RTT interrupts.
 181:../asf/sam/drivers/rtt/rtt.c ****  *
 182:../asf/sam/drivers/rtt/rtt.c ****  * \param p_rtt Pointer to an RTT instance.
 183:../asf/sam/drivers/rtt/rtt.c ****  * \param ul_sources Interrupts to be disabled.
 184:../asf/sam/drivers/rtt/rtt.c ****  */
 185:../asf/sam/drivers/rtt/rtt.c **** void rtt_disable_interrupt(Rtt *p_rtt, uint32_t ul_sources)
 186:../asf/sam/drivers/rtt/rtt.c **** {
 239              		.loc 1 186 0
 240              		.cfi_startproc
 241              		@ args = 0, pretend = 0, frame = 0
 242              		@ frame_needed = 0, uses_anonymous_args = 0
 243              		@ link register save eliminated.
 244              	.LVL13:
 187:../asf/sam/drivers/rtt/rtt.c **** 	uint32_t temp = 0;
 188:../asf/sam/drivers/rtt/rtt.c **** 
 189:../asf/sam/drivers/rtt/rtt.c **** 	temp = p_rtt->RTT_MR;
 245              		.loc 1 189 0
 246 0000 0368     		ldr	r3, [r0]
 247              	.LVL14:
 190:../asf/sam/drivers/rtt/rtt.c **** 	temp &= (~ul_sources);
 191:../asf/sam/drivers/rtt/rtt.c **** #if (SAM4N || SAM4S || SAM4E || SAM4C || SAMG51 || SAM4CP || SAM4CM || SAMV71 || SAMV70 || SAME70 |
 192:../asf/sam/drivers/rtt/rtt.c **** 	temp |= g_wobits_in_rtt_mr;
 248              		.loc 1 192 0
 249 0002 034A     		ldr	r2, .L21
ARM GAS  /tmp/ccQL0uqT.s 			page 9


 190:../asf/sam/drivers/rtt/rtt.c **** 	temp &= (~ul_sources);
 250              		.loc 1 190 0
 251 0004 23EA0101 		bic	r1, r3, r1
 252              	.LVL15:
 253              		.loc 1 192 0
 254 0008 1268     		ldr	r2, [r2]
 255 000a 1143     		orrs	r1, r1, r2
 256              	.LVL16:
 193:../asf/sam/drivers/rtt/rtt.c **** #endif
 194:../asf/sam/drivers/rtt/rtt.c **** 	p_rtt->RTT_MR = temp;
 257              		.loc 1 194 0
 258 000c 0160     		str	r1, [r0]
 259 000e 7047     		bx	lr
 260              	.L22:
 261              		.align	2
 262              	.L21:
 263 0010 00000000 		.word	.LANCHOR0
 264              		.cfi_endproc
 265              	.LFE147:
 266              		.size	rtt_disable_interrupt, .-rtt_disable_interrupt
 267              		.section	.text.rtt_read_timer_value,"ax",%progbits
 268              		.align	1
 269              		.p2align 2,,3
 270              		.global	rtt_read_timer_value
 271              		.syntax unified
 272              		.thumb
 273              		.thumb_func
 274              		.fpu fpv5-d16
 275              		.type	rtt_read_timer_value, %function
 276              	rtt_read_timer_value:
 277              	.LFB148:
 195:../asf/sam/drivers/rtt/rtt.c **** }
 196:../asf/sam/drivers/rtt/rtt.c **** 
 197:../asf/sam/drivers/rtt/rtt.c **** /**
 198:../asf/sam/drivers/rtt/rtt.c ****  * \brief Read the current value of the RTT timer value.
 199:../asf/sam/drivers/rtt/rtt.c ****  *
 200:../asf/sam/drivers/rtt/rtt.c ****  * \param p_rtt Pointer to an RTT instance.
 201:../asf/sam/drivers/rtt/rtt.c ****  *
 202:../asf/sam/drivers/rtt/rtt.c ****  * \return The current Real-time Timer value.
 203:../asf/sam/drivers/rtt/rtt.c ****  */
 204:../asf/sam/drivers/rtt/rtt.c **** uint32_t rtt_read_timer_value(Rtt *p_rtt)
 205:../asf/sam/drivers/rtt/rtt.c **** {
 278              		.loc 1 205 0
 279              		.cfi_startproc
 280              		@ args = 0, pretend = 0, frame = 0
 281              		@ frame_needed = 0, uses_anonymous_args = 0
 282              		@ link register save eliminated.
 283              	.LVL17:
 206:../asf/sam/drivers/rtt/rtt.c **** 	uint32_t rtt_val = p_rtt->RTT_VR;
 284              		.loc 1 206 0
 285 0000 8268     		ldr	r2, [r0, #8]
 286              	.LVL18:
 207:../asf/sam/drivers/rtt/rtt.c **** 
 208:../asf/sam/drivers/rtt/rtt.c **** 	while (rtt_val != p_rtt->RTT_VR) {
 287              		.loc 1 208 0
 288 0002 8368     		ldr	r3, [r0, #8]
 289 0004 9A42     		cmp	r2, r3
ARM GAS  /tmp/ccQL0uqT.s 			page 10


 290 0006 03D0     		beq	.L23
 291              	.L26:
 209:../asf/sam/drivers/rtt/rtt.c **** 		rtt_val = p_rtt->RTT_VR;
 292              		.loc 1 209 0
 293 0008 8268     		ldr	r2, [r0, #8]
 294              	.LVL19:
 208:../asf/sam/drivers/rtt/rtt.c **** 		rtt_val = p_rtt->RTT_VR;
 295              		.loc 1 208 0
 296 000a 8368     		ldr	r3, [r0, #8]
 297 000c 9342     		cmp	r3, r2
 298 000e FBD1     		bne	.L26
 299              	.LVL20:
 300              	.L23:
 210:../asf/sam/drivers/rtt/rtt.c **** 	}
 211:../asf/sam/drivers/rtt/rtt.c **** 
 212:../asf/sam/drivers/rtt/rtt.c **** 	return rtt_val;
 213:../asf/sam/drivers/rtt/rtt.c **** }
 301              		.loc 1 213 0
 302 0010 1846     		mov	r0, r3
 303              	.LVL21:
 304 0012 7047     		bx	lr
 305              		.cfi_endproc
 306              	.LFE148:
 307              		.size	rtt_read_timer_value, .-rtt_read_timer_value
 308              		.section	.text.rtt_get_status,"ax",%progbits
 309              		.align	1
 310              		.p2align 2,,3
 311              		.global	rtt_get_status
 312              		.syntax unified
 313              		.thumb
 314              		.thumb_func
 315              		.fpu fpv5-d16
 316              		.type	rtt_get_status, %function
 317              	rtt_get_status:
 318              	.LFB149:
 214:../asf/sam/drivers/rtt/rtt.c **** 
 215:../asf/sam/drivers/rtt/rtt.c **** /**
 216:../asf/sam/drivers/rtt/rtt.c ****  * \brief Get the status register value of the given RTT.
 217:../asf/sam/drivers/rtt/rtt.c ****  *
 218:../asf/sam/drivers/rtt/rtt.c ****  * \param p_rtt Pointer to an RTT instance.
 219:../asf/sam/drivers/rtt/rtt.c ****  *
 220:../asf/sam/drivers/rtt/rtt.c ****  * \return The Real-time Timer status.
 221:../asf/sam/drivers/rtt/rtt.c ****  */
 222:../asf/sam/drivers/rtt/rtt.c **** uint32_t rtt_get_status(Rtt *p_rtt)
 223:../asf/sam/drivers/rtt/rtt.c **** {
 319              		.loc 1 223 0
 320              		.cfi_startproc
 321              		@ args = 0, pretend = 0, frame = 0
 322              		@ frame_needed = 0, uses_anonymous_args = 0
 323              		@ link register save eliminated.
 324              	.LVL22:
 224:../asf/sam/drivers/rtt/rtt.c **** 	return p_rtt->RTT_SR;
 325              		.loc 1 224 0
 326 0000 C068     		ldr	r0, [r0, #12]
 327              	.LVL23:
 225:../asf/sam/drivers/rtt/rtt.c **** }
 328              		.loc 1 225 0
ARM GAS  /tmp/ccQL0uqT.s 			page 11


 329 0002 7047     		bx	lr
 330              		.cfi_endproc
 331              	.LFE149:
 332              		.size	rtt_get_status, .-rtt_get_status
 333              		.section	.text.rtt_write_alarm_time,"ax",%progbits
 334              		.align	1
 335              		.p2align 2,,3
 336              		.global	rtt_write_alarm_time
 337              		.syntax unified
 338              		.thumb
 339              		.thumb_func
 340              		.fpu fpv5-d16
 341              		.type	rtt_write_alarm_time, %function
 342              	rtt_write_alarm_time:
 343              	.LFB150:
 226:../asf/sam/drivers/rtt/rtt.c **** 
 227:../asf/sam/drivers/rtt/rtt.c **** /**
 228:../asf/sam/drivers/rtt/rtt.c ****  * \brief Configure the RTT to generate an alarm at the given time.
 229:../asf/sam/drivers/rtt/rtt.c ****  * alarm happens when CRTV value equals ALMV+1, so RTT_AR should be alarmtime - 1.
 230:../asf/sam/drivers/rtt/rtt.c ****  * if you want to get alarm when rtt hit 0 , ALMV should be set to 0xFFFFFFFF.
 231:../asf/sam/drivers/rtt/rtt.c ****  *
 232:../asf/sam/drivers/rtt/rtt.c ****  * \param p_rtt Pointer to an RTT instance.
 233:../asf/sam/drivers/rtt/rtt.c ****  * \param ul_alarm_time Alarm time,Alarm time = ALMV + 1.
 234:../asf/sam/drivers/rtt/rtt.c ****  *
 235:../asf/sam/drivers/rtt/rtt.c ****  * \retval 0 Configuration is done.
 236:../asf/sam/drivers/rtt/rtt.c ****  */
 237:../asf/sam/drivers/rtt/rtt.c **** uint32_t rtt_write_alarm_time(Rtt *p_rtt, uint32_t ul_alarm_time)
 238:../asf/sam/drivers/rtt/rtt.c **** {
 344              		.loc 1 238 0
 345              		.cfi_startproc
 346              		@ args = 0, pretend = 0, frame = 0
 347              		@ frame_needed = 0, uses_anonymous_args = 0
 348              		@ link register save eliminated.
 349              	.LVL24:
 350 0000 30B4     		push	{r4, r5}
 351              		.cfi_def_cfa_offset 8
 352              		.cfi_offset 4, -8
 353              		.cfi_offset 5, -4
 354              	.LBB6:
 355              	.LBB7:
 189:../asf/sam/drivers/rtt/rtt.c **** 	temp &= (~ul_sources);
 356              		.loc 1 189 0
 357 0002 0E4D     		ldr	r5, .L37
 358              	.LBE7:
 359              	.LBE6:
 239:../asf/sam/drivers/rtt/rtt.c **** 	uint32_t flag;
 240:../asf/sam/drivers/rtt/rtt.c **** 
 241:../asf/sam/drivers/rtt/rtt.c **** 	flag = p_rtt->RTT_MR & RTT_MR_ALMIEN;
 360              		.loc 1 241 0
 361 0004 0468     		ldr	r4, [r0]
 362              	.LBB10:
 363              	.LBB8:
 192:../asf/sam/drivers/rtt/rtt.c **** #endif
 364              		.loc 1 192 0
 365 0006 0E4A     		ldr	r2, .L37+4
 189:../asf/sam/drivers/rtt/rtt.c **** 	temp &= (~ul_sources);
 366              		.loc 1 189 0
ARM GAS  /tmp/ccQL0uqT.s 			page 12


 367 0008 2B68     		ldr	r3, [r5]
 368              	.LBE8:
 369              	.LBE10:
 370              		.loc 1 241 0
 371 000a 04F48034 		and	r4, r4, #65536
 372              	.LVL25:
 373              	.LBB11:
 374              	.LBB9:
 192:../asf/sam/drivers/rtt/rtt.c **** #endif
 375              		.loc 1 192 0
 376 000e 1268     		ldr	r2, [r2]
 190:../asf/sam/drivers/rtt/rtt.c **** #if (SAM4N || SAM4S || SAM4E || SAM4C || SAMG51 || SAM4CP || SAM4CM || SAMV71 || SAMV70 || SAME70 |
 377              		.loc 1 190 0
 378 0010 23F48033 		bic	r3, r3, #65536
 379              	.LVL26:
 192:../asf/sam/drivers/rtt/rtt.c **** #endif
 380              		.loc 1 192 0
 381 0014 1343     		orrs	r3, r3, r2
 382              	.LVL27:
 194:../asf/sam/drivers/rtt/rtt.c **** }
 383              		.loc 1 194 0
 384 0016 2B60     		str	r3, [r5]
 385              	.LVL28:
 386              	.LBE9:
 387              	.LBE11:
 242:../asf/sam/drivers/rtt/rtt.c **** 
 243:../asf/sam/drivers/rtt/rtt.c **** 	rtt_disable_interrupt(RTT, RTT_MR_ALMIEN);
 244:../asf/sam/drivers/rtt/rtt.c **** 
 245:../asf/sam/drivers/rtt/rtt.c **** 	/**
 246:../asf/sam/drivers/rtt/rtt.c **** 	 * Alarm time = ALMV + 1,If the incoming parameter 
 247:../asf/sam/drivers/rtt/rtt.c **** 	 * is 0, the ALMV is set to 0xFFFFFFFF.
 248:../asf/sam/drivers/rtt/rtt.c **** 	*/
 249:../asf/sam/drivers/rtt/rtt.c **** 	if(ul_alarm_time == 0) {
 388              		.loc 1 249 0
 389 0018 61B9     		cbnz	r1, .L30
 250:../asf/sam/drivers/rtt/rtt.c **** 		p_rtt->RTT_AR = 0xFFFFFFFF;
 390              		.loc 1 250 0
 391 001a 4FF0FF33 		mov	r3, #-1
 392 001e 4360     		str	r3, [r0, #4]
 393              	.LVL29:
 394              	.L31:
 251:../asf/sam/drivers/rtt/rtt.c **** 	}
 252:../asf/sam/drivers/rtt/rtt.c **** 	else {
 253:../asf/sam/drivers/rtt/rtt.c **** 		p_rtt->RTT_AR = ul_alarm_time - 1;
 254:../asf/sam/drivers/rtt/rtt.c **** 	}
 255:../asf/sam/drivers/rtt/rtt.c **** 
 256:../asf/sam/drivers/rtt/rtt.c **** 	if (flag) {
 395              		.loc 1 256 0
 396 0020 2CB1     		cbz	r4, .L32
 397              	.LVL30:
 398              	.LBB12:
 399              	.LBB13:
 171:../asf/sam/drivers/rtt/rtt.c **** 	temp |= ul_sources;
 400              		.loc 1 171 0
 401 0022 064B     		ldr	r3, .L37
 402 0024 1968     		ldr	r1, [r3]
 403              	.LVL31:
ARM GAS  /tmp/ccQL0uqT.s 			page 13


 404 0026 0A43     		orrs	r2, r2, r1
 405              	.LVL32:
 174:../asf/sam/drivers/rtt/rtt.c **** #endif
 406              		.loc 1 174 0
 407 0028 42F48032 		orr	r2, r2, #65536
 408              	.LVL33:
 176:../asf/sam/drivers/rtt/rtt.c **** }
 409              		.loc 1 176 0
 410 002c 1A60     		str	r2, [r3]
 411              	.LVL34:
 412              	.L32:
 413              	.LBE13:
 414              	.LBE12:
 257:../asf/sam/drivers/rtt/rtt.c **** 		rtt_enable_interrupt(RTT, RTT_MR_ALMIEN);
 258:../asf/sam/drivers/rtt/rtt.c **** 	}
 259:../asf/sam/drivers/rtt/rtt.c **** 
 260:../asf/sam/drivers/rtt/rtt.c **** 	return 0;
 261:../asf/sam/drivers/rtt/rtt.c **** }
 415              		.loc 1 261 0
 416 002e 0020     		movs	r0, #0
 417              	.LVL35:
 418 0030 30BC     		pop	{r4, r5}
 419              		.cfi_remember_state
 420              		.cfi_restore 5
 421              		.cfi_restore 4
 422              		.cfi_def_cfa_offset 0
 423              	.LVL36:
 424 0032 7047     		bx	lr
 425              	.LVL37:
 426              	.L30:
 427              		.cfi_restore_state
 253:../asf/sam/drivers/rtt/rtt.c **** 	}
 428              		.loc 1 253 0
 429 0034 0139     		subs	r1, r1, #1
 430              	.LVL38:
 431 0036 4160     		str	r1, [r0, #4]
 432 0038 F2E7     		b	.L31
 433              	.L38:
 434 003a 00BF     		.align	2
 435              	.L37:
 436 003c 30180E40 		.word	1074665520
 437 0040 00000000 		.word	.LANCHOR0
 438              		.cfi_endproc
 439              	.LFE150:
 440              		.size	rtt_write_alarm_time, .-rtt_write_alarm_time
 441              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 442              		.align	2
 443              		.type	cpu_irq_critical_section_counter, %object
 444              		.size	cpu_irq_critical_section_counter, 4
 445              	cpu_irq_critical_section_counter:
 446 0000 00000000 		.space	4
 447              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 448              		.type	cpu_irq_prev_interrupt_state, %object
 449              		.size	cpu_irq_prev_interrupt_state, 1
 450              	cpu_irq_prev_interrupt_state:
 451 0000 00       		.space	1
 452              		.section	.bss.g_wobits_in_rtt_mr,"aw",%nobits
ARM GAS  /tmp/ccQL0uqT.s 			page 14


 453              		.align	2
 454              		.set	.LANCHOR0,. + 0
 455              		.type	g_wobits_in_rtt_mr, %object
 456              		.size	g_wobits_in_rtt_mr, 4
 457              	g_wobits_in_rtt_mr:
 458 0000 00000000 		.space	4
 459              		.text
 460              	.Letext0:
 461              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 462              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 463              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 464              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 465              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/rtt.
 466              		.file 7 "/usr/include/newlib/sys/lock.h"
 467              		.file 8 "/usr/include/newlib/sys/_types.h"
 468              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 469              		.file 10 "/usr/include/newlib/sys/reent.h"
 470              		.file 11 "/usr/include/newlib/stdlib.h"
 471              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 472              		.section	.debug_info,"",%progbits
 473              	.Ldebug_info0:
 474 0000 FD0B0000 		.4byte	0xbfd
 475 0004 0400     		.2byte	0x4
 476 0006 00000000 		.4byte	.Ldebug_abbrev0
 477 000a 04       		.byte	0x4
 478 000b 01       		.uleb128 0x1
 479 000c 48030000 		.4byte	.LASF156
 480 0010 0C       		.byte	0xc
 481 0011 AC000000 		.4byte	.LASF157
 482 0015 B9050000 		.4byte	.LASF158
 483 0019 20000000 		.4byte	.Ldebug_ranges0+0x20
 484 001d 00000000 		.4byte	0
 485 0021 00000000 		.4byte	.Ldebug_line0
 486 0025 02       		.uleb128 0x2
 487 0026 04       		.byte	0x4
 488 0027 05       		.byte	0x5
 489 0028 696E7400 		.ascii	"int\000"
 490 002c 03       		.uleb128 0x3
 491 002d 04       		.byte	0x4
 492 002e 07       		.byte	0x7
 493 002f 61050000 		.4byte	.LASF0
 494 0033 03       		.uleb128 0x3
 495 0034 01       		.byte	0x1
 496 0035 06       		.byte	0x6
 497 0036 0A010000 		.4byte	.LASF1
 498 003a 03       		.uleb128 0x3
 499 003b 01       		.byte	0x1
 500 003c 08       		.byte	0x8
 501 003d 6C040000 		.4byte	.LASF2
 502 0041 03       		.uleb128 0x3
 503 0042 02       		.byte	0x2
 504 0043 05       		.byte	0x5
 505 0044 14000000 		.4byte	.LASF3
 506 0048 04       		.uleb128 0x4
 507 0049 6E050000 		.4byte	.LASF5
 508 004d 02       		.byte	0x2
 509 004e 2B       		.byte	0x2b
ARM GAS  /tmp/ccQL0uqT.s 			page 15


 510 004f 53000000 		.4byte	0x53
 511 0053 03       		.uleb128 0x3
 512 0054 02       		.byte	0x2
 513 0055 07       		.byte	0x7
 514 0056 A6050000 		.4byte	.LASF4
 515 005a 04       		.uleb128 0x4
 516 005b 79050000 		.4byte	.LASF6
 517 005f 02       		.byte	0x2
 518 0060 3F       		.byte	0x3f
 519 0061 65000000 		.4byte	0x65
 520 0065 03       		.uleb128 0x3
 521 0066 04       		.byte	0x4
 522 0067 05       		.byte	0x5
 523 0068 60010000 		.4byte	.LASF7
 524 006c 04       		.uleb128 0x4
 525 006d F9010000 		.4byte	.LASF8
 526 0071 02       		.byte	0x2
 527 0072 41       		.byte	0x41
 528 0073 77000000 		.4byte	0x77
 529 0077 03       		.uleb128 0x3
 530 0078 04       		.byte	0x4
 531 0079 07       		.byte	0x7
 532 007a 8C020000 		.4byte	.LASF9
 533 007e 03       		.uleb128 0x3
 534 007f 08       		.byte	0x8
 535 0080 05       		.byte	0x5
 536 0081 8C010000 		.4byte	.LASF10
 537 0085 03       		.uleb128 0x3
 538 0086 08       		.byte	0x8
 539 0087 07       		.byte	0x7
 540 0088 1C010000 		.4byte	.LASF11
 541 008c 04       		.uleb128 0x4
 542 008d 9A010000 		.4byte	.LASF12
 543 0091 03       		.byte	0x3
 544 0092 24       		.byte	0x24
 545 0093 48000000 		.4byte	0x48
 546 0097 04       		.uleb128 0x4
 547 0098 64040000 		.4byte	.LASF13
 548 009c 03       		.byte	0x3
 549 009d 2C       		.byte	0x2c
 550 009e 5A000000 		.4byte	0x5a
 551 00a2 05       		.uleb128 0x5
 552 00a3 97000000 		.4byte	0x97
 553 00a7 04       		.uleb128 0x4
 554 00a8 1A060000 		.4byte	.LASF14
 555 00ac 03       		.byte	0x3
 556 00ad 30       		.byte	0x30
 557 00ae 6C000000 		.4byte	0x6c
 558 00b2 05       		.uleb128 0x5
 559 00b3 A7000000 		.4byte	0xa7
 560 00b7 06       		.uleb128 0x6
 561 00b8 B2000000 		.4byte	0xb2
 562 00bc 07       		.uleb128 0x7
 563 00bd 04       		.byte	0x4
 564 00be 03       		.uleb128 0x3
 565 00bf 04       		.byte	0x4
 566 00c0 07       		.byte	0x7
ARM GAS  /tmp/ccQL0uqT.s 			page 16


 567 00c1 34030000 		.4byte	.LASF15
 568 00c5 08       		.uleb128 0x8
 569 00c6 C9000000 		.4byte	.LASF16
 570 00ca 04       		.byte	0x4
 571 00cb 6508     		.2byte	0x865
 572 00cd A2000000 		.4byte	0xa2
 573 00d1 09       		.uleb128 0x9
 574 00d2 6C020000 		.4byte	.LASF17
 575 00d6 05       		.byte	0x5
 576 00d7 3A       		.byte	0x3a
 577 00d8 A7000000 		.4byte	0xa7
 578 00dc 0A       		.uleb128 0xa
 579 00dd 10       		.byte	0x10
 580 00de 06       		.byte	0x6
 581 00df 38       		.byte	0x38
 582 00e0 15010000 		.4byte	0x115
 583 00e4 0B       		.uleb128 0xb
 584 00e5 3F040000 		.4byte	.LASF18
 585 00e9 06       		.byte	0x6
 586 00ea 39       		.byte	0x39
 587 00eb B2000000 		.4byte	0xb2
 588 00ef 00       		.byte	0
 589 00f0 0B       		.uleb128 0xb
 590 00f1 2E000000 		.4byte	.LASF19
 591 00f5 06       		.byte	0x6
 592 00f6 3A       		.byte	0x3a
 593 00f7 B2000000 		.4byte	0xb2
 594 00fb 04       		.byte	0x4
 595 00fc 0B       		.uleb128 0xb
 596 00fd 9F050000 		.4byte	.LASF20
 597 0101 06       		.byte	0x6
 598 0102 3B       		.byte	0x3b
 599 0103 B7000000 		.4byte	0xb7
 600 0107 08       		.byte	0x8
 601 0108 0B       		.uleb128 0xb
 602 0109 C1020000 		.4byte	.LASF21
 603 010d 06       		.byte	0x6
 604 010e 3C       		.byte	0x3c
 605 010f B7000000 		.4byte	0xb7
 606 0113 0C       		.byte	0xc
 607 0114 00       		.byte	0
 608 0115 0C       		.uleb128 0xc
 609 0116 52747400 		.ascii	"Rtt\000"
 610 011a 06       		.byte	0x6
 611 011b 3D       		.byte	0x3d
 612 011c DC000000 		.4byte	0xdc
 613 0120 04       		.uleb128 0x4
 614 0121 46040000 		.4byte	.LASF22
 615 0125 07       		.byte	0x7
 616 0126 07       		.byte	0x7
 617 0127 25000000 		.4byte	0x25
 618 012b 04       		.uleb128 0x4
 619 012c FC000000 		.4byte	.LASF23
 620 0130 08       		.byte	0x8
 621 0131 2C       		.byte	0x2c
 622 0132 65000000 		.4byte	0x65
 623 0136 04       		.uleb128 0x4
ARM GAS  /tmp/ccQL0uqT.s 			page 17


 624 0137 3E050000 		.4byte	.LASF24
 625 013b 08       		.byte	0x8
 626 013c 72       		.byte	0x72
 627 013d 65000000 		.4byte	0x65
 628 0141 0D       		.uleb128 0xd
 629 0142 1E040000 		.4byte	.LASF25
 630 0146 09       		.byte	0x9
 631 0147 6501     		.2byte	0x165
 632 0149 2C000000 		.4byte	0x2c
 633 014d 0E       		.uleb128 0xe
 634 014e 04       		.byte	0x4
 635 014f 08       		.byte	0x8
 636 0150 A6       		.byte	0xa6
 637 0151 6C010000 		.4byte	0x16c
 638 0155 0F       		.uleb128 0xf
 639 0156 E9020000 		.4byte	.LASF26
 640 015a 08       		.byte	0x8
 641 015b A8       		.byte	0xa8
 642 015c 41010000 		.4byte	0x141
 643 0160 0F       		.uleb128 0xf
 644 0161 65020000 		.4byte	.LASF27
 645 0165 08       		.byte	0x8
 646 0166 A9       		.byte	0xa9
 647 0167 6C010000 		.4byte	0x16c
 648 016b 00       		.byte	0
 649 016c 10       		.uleb128 0x10
 650 016d 3A000000 		.4byte	0x3a
 651 0171 7C010000 		.4byte	0x17c
 652 0175 11       		.uleb128 0x11
 653 0176 BE000000 		.4byte	0xbe
 654 017a 03       		.byte	0x3
 655 017b 00       		.byte	0
 656 017c 0A       		.uleb128 0xa
 657 017d 08       		.byte	0x8
 658 017e 08       		.byte	0x8
 659 017f A3       		.byte	0xa3
 660 0180 9D010000 		.4byte	0x19d
 661 0184 0B       		.uleb128 0xb
 662 0185 19050000 		.4byte	.LASF28
 663 0189 08       		.byte	0x8
 664 018a A5       		.byte	0xa5
 665 018b 25000000 		.4byte	0x25
 666 018f 00       		.byte	0
 667 0190 0B       		.uleb128 0xb
 668 0191 21050000 		.4byte	.LASF29
 669 0195 08       		.byte	0x8
 670 0196 AA       		.byte	0xaa
 671 0197 4D010000 		.4byte	0x14d
 672 019b 04       		.byte	0x4
 673 019c 00       		.byte	0
 674 019d 04       		.uleb128 0x4
 675 019e BC040000 		.4byte	.LASF30
 676 01a2 08       		.byte	0x8
 677 01a3 AB       		.byte	0xab
 678 01a4 7C010000 		.4byte	0x17c
 679 01a8 04       		.uleb128 0x4
 680 01a9 89040000 		.4byte	.LASF31
ARM GAS  /tmp/ccQL0uqT.s 			page 18


 681 01ad 08       		.byte	0x8
 682 01ae AF       		.byte	0xaf
 683 01af 20010000 		.4byte	0x120
 684 01b3 04       		.uleb128 0x4
 685 01b4 E8050000 		.4byte	.LASF32
 686 01b8 0A       		.byte	0xa
 687 01b9 16       		.byte	0x16
 688 01ba 77000000 		.4byte	0x77
 689 01be 12       		.uleb128 0x12
 690 01bf 2B020000 		.4byte	.LASF37
 691 01c3 18       		.byte	0x18
 692 01c4 0A       		.byte	0xa
 693 01c5 2D       		.byte	0x2d
 694 01c6 11020000 		.4byte	0x211
 695 01ca 0B       		.uleb128 0xb
 696 01cb 83050000 		.4byte	.LASF33
 697 01cf 0A       		.byte	0xa
 698 01d0 2F       		.byte	0x2f
 699 01d1 11020000 		.4byte	0x211
 700 01d5 00       		.byte	0
 701 01d6 13       		.uleb128 0x13
 702 01d7 5F6B00   		.ascii	"_k\000"
 703 01da 0A       		.byte	0xa
 704 01db 30       		.byte	0x30
 705 01dc 25000000 		.4byte	0x25
 706 01e0 04       		.byte	0x4
 707 01e1 0B       		.uleb128 0xb
 708 01e2 04050000 		.4byte	.LASF34
 709 01e6 0A       		.byte	0xa
 710 01e7 30       		.byte	0x30
 711 01e8 25000000 		.4byte	0x25
 712 01ec 08       		.byte	0x8
 713 01ed 0B       		.uleb128 0xb
 714 01ee 04020000 		.4byte	.LASF35
 715 01f2 0A       		.byte	0xa
 716 01f3 30       		.byte	0x30
 717 01f4 25000000 		.4byte	0x25
 718 01f8 0C       		.byte	0xc
 719 01f9 0B       		.uleb128 0xb
 720 01fa 30060000 		.4byte	.LASF36
 721 01fe 0A       		.byte	0xa
 722 01ff 30       		.byte	0x30
 723 0200 25000000 		.4byte	0x25
 724 0204 10       		.byte	0x10
 725 0205 13       		.uleb128 0x13
 726 0206 5F7800   		.ascii	"_x\000"
 727 0209 0A       		.byte	0xa
 728 020a 31       		.byte	0x31
 729 020b 17020000 		.4byte	0x217
 730 020f 14       		.byte	0x14
 731 0210 00       		.byte	0
 732 0211 14       		.uleb128 0x14
 733 0212 04       		.byte	0x4
 734 0213 BE010000 		.4byte	0x1be
 735 0217 10       		.uleb128 0x10
 736 0218 B3010000 		.4byte	0x1b3
 737 021c 27020000 		.4byte	0x227
ARM GAS  /tmp/ccQL0uqT.s 			page 19


 738 0220 11       		.uleb128 0x11
 739 0221 BE000000 		.4byte	0xbe
 740 0225 00       		.byte	0
 741 0226 00       		.byte	0
 742 0227 12       		.uleb128 0x12
 743 0228 54020000 		.4byte	.LASF38
 744 022c 24       		.byte	0x24
 745 022d 0A       		.byte	0xa
 746 022e 35       		.byte	0x35
 747 022f A0020000 		.4byte	0x2a0
 748 0233 0B       		.uleb128 0xb
 749 0234 F3000000 		.4byte	.LASF39
 750 0238 0A       		.byte	0xa
 751 0239 37       		.byte	0x37
 752 023a 25000000 		.4byte	0x25
 753 023e 00       		.byte	0
 754 023f 0B       		.uleb128 0xb
 755 0240 AF060000 		.4byte	.LASF40
 756 0244 0A       		.byte	0xa
 757 0245 38       		.byte	0x38
 758 0246 25000000 		.4byte	0x25
 759 024a 04       		.byte	0x4
 760 024b 0B       		.uleb128 0xb
 761 024c 33010000 		.4byte	.LASF41
 762 0250 0A       		.byte	0xa
 763 0251 39       		.byte	0x39
 764 0252 25000000 		.4byte	0x25
 765 0256 08       		.byte	0x8
 766 0257 0B       		.uleb128 0xb
 767 0258 1B070000 		.4byte	.LASF42
 768 025c 0A       		.byte	0xa
 769 025d 3A       		.byte	0x3a
 770 025e 25000000 		.4byte	0x25
 771 0262 0C       		.byte	0xc
 772 0263 0B       		.uleb128 0xb
 773 0264 E9030000 		.4byte	.LASF43
 774 0268 0A       		.byte	0xa
 775 0269 3B       		.byte	0x3b
 776 026a 25000000 		.4byte	0x25
 777 026e 10       		.byte	0x10
 778 026f 0B       		.uleb128 0xb
 779 0270 1D030000 		.4byte	.LASF44
 780 0274 0A       		.byte	0xa
 781 0275 3C       		.byte	0x3c
 782 0276 25000000 		.4byte	0x25
 783 027a 14       		.byte	0x14
 784 027b 0B       		.uleb128 0xb
 785 027c 34050000 		.4byte	.LASF45
 786 0280 0A       		.byte	0xa
 787 0281 3D       		.byte	0x3d
 788 0282 25000000 		.4byte	0x25
 789 0286 18       		.byte	0x18
 790 0287 0B       		.uleb128 0xb
 791 0288 92040000 		.4byte	.LASF46
 792 028c 0A       		.byte	0xa
 793 028d 3E       		.byte	0x3e
 794 028e 25000000 		.4byte	0x25
ARM GAS  /tmp/ccQL0uqT.s 			page 20


 795 0292 1C       		.byte	0x1c
 796 0293 0B       		.uleb128 0xb
 797 0294 95060000 		.4byte	.LASF47
 798 0298 0A       		.byte	0xa
 799 0299 3F       		.byte	0x3f
 800 029a 25000000 		.4byte	0x25
 801 029e 20       		.byte	0x20
 802 029f 00       		.byte	0
 803 02a0 15       		.uleb128 0x15
 804 02a1 42010000 		.4byte	.LASF48
 805 02a5 0801     		.2byte	0x108
 806 02a7 0A       		.byte	0xa
 807 02a8 48       		.byte	0x48
 808 02a9 E0020000 		.4byte	0x2e0
 809 02ad 0B       		.uleb128 0xb
 810 02ae 1E000000 		.4byte	.LASF49
 811 02b2 0A       		.byte	0xa
 812 02b3 49       		.byte	0x49
 813 02b4 E0020000 		.4byte	0x2e0
 814 02b8 00       		.byte	0
 815 02b9 0B       		.uleb128 0xb
 816 02ba 00000000 		.4byte	.LASF50
 817 02be 0A       		.byte	0xa
 818 02bf 4A       		.byte	0x4a
 819 02c0 E0020000 		.4byte	0x2e0
 820 02c4 80       		.byte	0x80
 821 02c5 16       		.uleb128 0x16
 822 02c6 96050000 		.4byte	.LASF51
 823 02ca 0A       		.byte	0xa
 824 02cb 4C       		.byte	0x4c
 825 02cc B3010000 		.4byte	0x1b3
 826 02d0 0001     		.2byte	0x100
 827 02d2 16       		.uleb128 0x16
 828 02d3 0C000000 		.4byte	.LASF52
 829 02d7 0A       		.byte	0xa
 830 02d8 4F       		.byte	0x4f
 831 02d9 B3010000 		.4byte	0x1b3
 832 02dd 0401     		.2byte	0x104
 833 02df 00       		.byte	0
 834 02e0 10       		.uleb128 0x10
 835 02e1 BC000000 		.4byte	0xbc
 836 02e5 F0020000 		.4byte	0x2f0
 837 02e9 11       		.uleb128 0x11
 838 02ea BE000000 		.4byte	0xbe
 839 02ee 1F       		.byte	0x1f
 840 02ef 00       		.byte	0
 841 02f0 15       		.uleb128 0x15
 842 02f1 F2030000 		.4byte	.LASF53
 843 02f5 9001     		.2byte	0x190
 844 02f7 0A       		.byte	0xa
 845 02f8 5B       		.byte	0x5b
 846 02f9 2E030000 		.4byte	0x32e
 847 02fd 0B       		.uleb128 0xb
 848 02fe 83050000 		.4byte	.LASF33
 849 0302 0A       		.byte	0xa
 850 0303 5C       		.byte	0x5c
 851 0304 2E030000 		.4byte	0x32e
ARM GAS  /tmp/ccQL0uqT.s 			page 21


 852 0308 00       		.byte	0
 853 0309 0B       		.uleb128 0xb
 854 030a E5040000 		.4byte	.LASF54
 855 030e 0A       		.byte	0xa
 856 030f 5D       		.byte	0x5d
 857 0310 25000000 		.4byte	0x25
 858 0314 04       		.byte	0x4
 859 0315 0B       		.uleb128 0xb
 860 0316 F4010000 		.4byte	.LASF55
 861 031a 0A       		.byte	0xa
 862 031b 5F       		.byte	0x5f
 863 031c 34030000 		.4byte	0x334
 864 0320 08       		.byte	0x8
 865 0321 0B       		.uleb128 0xb
 866 0322 42010000 		.4byte	.LASF48
 867 0326 0A       		.byte	0xa
 868 0327 60       		.byte	0x60
 869 0328 A0020000 		.4byte	0x2a0
 870 032c 88       		.byte	0x88
 871 032d 00       		.byte	0
 872 032e 14       		.uleb128 0x14
 873 032f 04       		.byte	0x4
 874 0330 F0020000 		.4byte	0x2f0
 875 0334 10       		.uleb128 0x10
 876 0335 44030000 		.4byte	0x344
 877 0339 44030000 		.4byte	0x344
 878 033d 11       		.uleb128 0x11
 879 033e BE000000 		.4byte	0xbe
 880 0342 1F       		.byte	0x1f
 881 0343 00       		.byte	0
 882 0344 14       		.uleb128 0x14
 883 0345 04       		.byte	0x4
 884 0346 4A030000 		.4byte	0x34a
 885 034a 17       		.uleb128 0x17
 886 034b 12       		.uleb128 0x12
 887 034c 9C040000 		.4byte	.LASF56
 888 0350 08       		.byte	0x8
 889 0351 0A       		.byte	0xa
 890 0352 73       		.byte	0x73
 891 0353 70030000 		.4byte	0x370
 892 0357 0B       		.uleb128 0xb
 893 0358 58040000 		.4byte	.LASF57
 894 035c 0A       		.byte	0xa
 895 035d 74       		.byte	0x74
 896 035e 70030000 		.4byte	0x370
 897 0362 00       		.byte	0
 898 0363 0B       		.uleb128 0xb
 899 0364 5B050000 		.4byte	.LASF58
 900 0368 0A       		.byte	0xa
 901 0369 75       		.byte	0x75
 902 036a 25000000 		.4byte	0x25
 903 036e 04       		.byte	0x4
 904 036f 00       		.byte	0
 905 0370 14       		.uleb128 0x14
 906 0371 04       		.byte	0x4
 907 0372 3A000000 		.4byte	0x3a
 908 0376 12       		.uleb128 0x12
ARM GAS  /tmp/ccQL0uqT.s 			page 22


 909 0377 C7040000 		.4byte	.LASF59
 910 037b 68       		.byte	0x68
 911 037c 0A       		.byte	0xa
 912 037d B3       		.byte	0xb3
 913 037e A0040000 		.4byte	0x4a0
 914 0382 13       		.uleb128 0x13
 915 0383 5F7000   		.ascii	"_p\000"
 916 0386 0A       		.byte	0xa
 917 0387 B4       		.byte	0xb4
 918 0388 70030000 		.4byte	0x370
 919 038c 00       		.byte	0
 920 038d 13       		.uleb128 0x13
 921 038e 5F7200   		.ascii	"_r\000"
 922 0391 0A       		.byte	0xa
 923 0392 B5       		.byte	0xb5
 924 0393 25000000 		.4byte	0x25
 925 0397 04       		.byte	0x4
 926 0398 13       		.uleb128 0x13
 927 0399 5F7700   		.ascii	"_w\000"
 928 039c 0A       		.byte	0xa
 929 039d B6       		.byte	0xb6
 930 039e 25000000 		.4byte	0x25
 931 03a2 08       		.byte	0x8
 932 03a3 0B       		.uleb128 0xb
 933 03a4 69010000 		.4byte	.LASF60
 934 03a8 0A       		.byte	0xa
 935 03a9 B7       		.byte	0xb7
 936 03aa 41000000 		.4byte	0x41
 937 03ae 0C       		.byte	0xc
 938 03af 0B       		.uleb128 0xb
 939 03b0 9E020000 		.4byte	.LASF61
 940 03b4 0A       		.byte	0xa
 941 03b5 B8       		.byte	0xb8
 942 03b6 41000000 		.4byte	0x41
 943 03ba 0E       		.byte	0xe
 944 03bb 13       		.uleb128 0x13
 945 03bc 5F626600 		.ascii	"_bf\000"
 946 03c0 0A       		.byte	0xa
 947 03c1 B9       		.byte	0xb9
 948 03c2 4B030000 		.4byte	0x34b
 949 03c6 10       		.byte	0x10
 950 03c7 0B       		.uleb128 0xb
 951 03c8 A3000000 		.4byte	.LASF62
 952 03cc 0A       		.byte	0xa
 953 03cd BA       		.byte	0xba
 954 03ce 25000000 		.4byte	0x25
 955 03d2 18       		.byte	0x18
 956 03d3 0B       		.uleb128 0xb
 957 03d4 50010000 		.4byte	.LASF63
 958 03d8 0A       		.byte	0xa
 959 03d9 C1       		.byte	0xc1
 960 03da BC000000 		.4byte	0xbc
 961 03de 1C       		.byte	0x1c
 962 03df 0B       		.uleb128 0xb
 963 03e0 33020000 		.4byte	.LASF64
 964 03e4 0A       		.byte	0xa
 965 03e5 C3       		.byte	0xc3
ARM GAS  /tmp/ccQL0uqT.s 			page 23


 966 03e6 0D060000 		.4byte	0x60d
 967 03ea 20       		.byte	0x20
 968 03eb 0B       		.uleb128 0xb
 969 03ec 16030000 		.4byte	.LASF65
 970 03f0 0A       		.byte	0xa
 971 03f1 C5       		.byte	0xc5
 972 03f2 37060000 		.4byte	0x637
 973 03f6 24       		.byte	0x24
 974 03f7 0B       		.uleb128 0xb
 975 03f8 29050000 		.4byte	.LASF66
 976 03fc 0A       		.byte	0xa
 977 03fd C8       		.byte	0xc8
 978 03fe 5B060000 		.4byte	0x65b
 979 0402 28       		.byte	0x28
 980 0403 0B       		.uleb128 0xb
 981 0404 03010000 		.4byte	.LASF67
 982 0408 0A       		.byte	0xa
 983 0409 C9       		.byte	0xc9
 984 040a 75060000 		.4byte	0x675
 985 040e 2C       		.byte	0x2c
 986 040f 13       		.uleb128 0x13
 987 0410 5F756200 		.ascii	"_ub\000"
 988 0414 0A       		.byte	0xa
 989 0415 CC       		.byte	0xcc
 990 0416 4B030000 		.4byte	0x34b
 991 041a 30       		.byte	0x30
 992 041b 13       		.uleb128 0x13
 993 041c 5F757000 		.ascii	"_up\000"
 994 0420 0A       		.byte	0xa
 995 0421 CD       		.byte	0xcd
 996 0422 70030000 		.4byte	0x370
 997 0426 38       		.byte	0x38
 998 0427 13       		.uleb128 0x13
 999 0428 5F757200 		.ascii	"_ur\000"
 1000 042c 0A       		.byte	0xa
 1001 042d CE       		.byte	0xce
 1002 042e 25000000 		.4byte	0x25
 1003 0432 3C       		.byte	0x3c
 1004 0433 0B       		.uleb128 0xb
 1005 0434 16010000 		.4byte	.LASF68
 1006 0438 0A       		.byte	0xa
 1007 0439 D1       		.byte	0xd1
 1008 043a 7B060000 		.4byte	0x67b
 1009 043e 40       		.byte	0x40
 1010 043f 0B       		.uleb128 0xb
 1011 0440 87060000 		.4byte	.LASF69
 1012 0444 0A       		.byte	0xa
 1013 0445 D2       		.byte	0xd2
 1014 0446 8B060000 		.4byte	0x68b
 1015 044a 43       		.byte	0x43
 1016 044b 13       		.uleb128 0x13
 1017 044c 5F6C6200 		.ascii	"_lb\000"
 1018 0450 0A       		.byte	0xa
 1019 0451 D5       		.byte	0xd5
 1020 0452 4B030000 		.4byte	0x34b
 1021 0456 44       		.byte	0x44
 1022 0457 0B       		.uleb128 0xb
ARM GAS  /tmp/ccQL0uqT.s 			page 24


 1023 0458 52050000 		.4byte	.LASF70
 1024 045c 0A       		.byte	0xa
 1025 045d D8       		.byte	0xd8
 1026 045e 25000000 		.4byte	0x25
 1027 0462 4C       		.byte	0x4c
 1028 0463 0B       		.uleb128 0xb
 1029 0464 C7010000 		.4byte	.LASF71
 1030 0468 0A       		.byte	0xa
 1031 0469 D9       		.byte	0xd9
 1032 046a 2B010000 		.4byte	0x12b
 1033 046e 50       		.byte	0x50
 1034 046f 0B       		.uleb128 0xb
 1035 0470 A9020000 		.4byte	.LASF72
 1036 0474 0A       		.byte	0xa
 1037 0475 DC       		.byte	0xdc
 1038 0476 BE040000 		.4byte	0x4be
 1039 047a 54       		.byte	0x54
 1040 047b 0B       		.uleb128 0xb
 1041 047c FB020000 		.4byte	.LASF73
 1042 0480 0A       		.byte	0xa
 1043 0481 E0       		.byte	0xe0
 1044 0482 A8010000 		.4byte	0x1a8
 1045 0486 58       		.byte	0x58
 1046 0487 0B       		.uleb128 0xb
 1047 0488 CF040000 		.4byte	.LASF74
 1048 048c 0A       		.byte	0xa
 1049 048d E2       		.byte	0xe2
 1050 048e 9D010000 		.4byte	0x19d
 1051 0492 5C       		.byte	0x5c
 1052 0493 0B       		.uleb128 0xb
 1053 0494 A3040000 		.4byte	.LASF75
 1054 0498 0A       		.byte	0xa
 1055 0499 E3       		.byte	0xe3
 1056 049a 25000000 		.4byte	0x25
 1057 049e 64       		.byte	0x64
 1058 049f 00       		.byte	0
 1059 04a0 18       		.uleb128 0x18
 1060 04a1 25000000 		.4byte	0x25
 1061 04a5 BE040000 		.4byte	0x4be
 1062 04a9 19       		.uleb128 0x19
 1063 04aa BE040000 		.4byte	0x4be
 1064 04ae 19       		.uleb128 0x19
 1065 04af BC000000 		.4byte	0xbc
 1066 04b3 19       		.uleb128 0x19
 1067 04b4 FB050000 		.4byte	0x5fb
 1068 04b8 19       		.uleb128 0x19
 1069 04b9 25000000 		.4byte	0x25
 1070 04bd 00       		.byte	0
 1071 04be 14       		.uleb128 0x14
 1072 04bf 04       		.byte	0x4
 1073 04c0 C9040000 		.4byte	0x4c9
 1074 04c4 06       		.uleb128 0x6
 1075 04c5 BE040000 		.4byte	0x4be
 1076 04c9 1A       		.uleb128 0x1a
 1077 04ca 0C050000 		.4byte	.LASF76
 1078 04ce 2804     		.2byte	0x428
 1079 04d0 0A       		.byte	0xa
ARM GAS  /tmp/ccQL0uqT.s 			page 25


 1080 04d1 3802     		.2byte	0x238
 1081 04d3 FB050000 		.4byte	0x5fb
 1082 04d7 1B       		.uleb128 0x1b
 1083 04d8 46050000 		.4byte	.LASF77
 1084 04dc 0A       		.byte	0xa
 1085 04dd 3A02     		.2byte	0x23a
 1086 04df 25000000 		.4byte	0x25
 1087 04e3 00       		.byte	0
 1088 04e4 1B       		.uleb128 0x1b
 1089 04e5 7B010000 		.4byte	.LASF78
 1090 04e9 0A       		.byte	0xa
 1091 04ea 3F02     		.2byte	0x23f
 1092 04ec E2060000 		.4byte	0x6e2
 1093 04f0 04       		.byte	0x4
 1094 04f1 1B       		.uleb128 0x1b
 1095 04f2 7C020000 		.4byte	.LASF79
 1096 04f6 0A       		.byte	0xa
 1097 04f7 3F02     		.2byte	0x23f
 1098 04f9 E2060000 		.4byte	0x6e2
 1099 04fd 08       		.byte	0x8
 1100 04fe 1B       		.uleb128 0x1b
 1101 04ff 23020000 		.4byte	.LASF80
 1102 0503 0A       		.byte	0xa
 1103 0504 3F02     		.2byte	0x23f
 1104 0506 E2060000 		.4byte	0x6e2
 1105 050a 0C       		.byte	0xc
 1106 050b 1B       		.uleb128 0x1b
 1107 050c A4020000 		.4byte	.LASF81
 1108 0510 0A       		.byte	0xa
 1109 0511 4102     		.2byte	0x241
 1110 0513 25000000 		.4byte	0x25
 1111 0517 10       		.byte	0x10
 1112 0518 1B       		.uleb128 0x1b
 1113 0519 3D000000 		.4byte	.LASF82
 1114 051d 0A       		.byte	0xa
 1115 051e 4202     		.2byte	0x242
 1116 0520 C4080000 		.4byte	0x8c4
 1117 0524 14       		.byte	0x14
 1118 0525 1B       		.uleb128 0x1b
 1119 0526 08060000 		.4byte	.LASF83
 1120 052a 0A       		.byte	0xa
 1121 052b 4402     		.2byte	0x244
 1122 052d 25000000 		.4byte	0x25
 1123 0531 30       		.byte	0x30
 1124 0532 1B       		.uleb128 0x1b
 1125 0533 EA040000 		.4byte	.LASF84
 1126 0537 0A       		.byte	0xa
 1127 0538 4502     		.2byte	0x245
 1128 053a 31060000 		.4byte	0x631
 1129 053e 34       		.byte	0x34
 1130 053f 1B       		.uleb128 0x1b
 1131 0540 04040000 		.4byte	.LASF85
 1132 0544 0A       		.byte	0xa
 1133 0545 4702     		.2byte	0x247
 1134 0547 25000000 		.4byte	0x25
 1135 054b 38       		.byte	0x38
 1136 054c 1B       		.uleb128 0x1b
ARM GAS  /tmp/ccQL0uqT.s 			page 26


 1137 054d FA040000 		.4byte	.LASF86
 1138 0551 0A       		.byte	0xa
 1139 0552 4902     		.2byte	0x249
 1140 0554 DF080000 		.4byte	0x8df
 1141 0558 3C       		.byte	0x3c
 1142 0559 1B       		.uleb128 0x1b
 1143 055a E1020000 		.4byte	.LASF87
 1144 055e 0A       		.byte	0xa
 1145 055f 4C02     		.2byte	0x24c
 1146 0561 11020000 		.4byte	0x211
 1147 0565 40       		.byte	0x40
 1148 0566 1B       		.uleb128 0x1b
 1149 0567 82010000 		.4byte	.LASF88
 1150 056b 0A       		.byte	0xa
 1151 056c 4D02     		.2byte	0x24d
 1152 056e 25000000 		.4byte	0x25
 1153 0572 44       		.byte	0x44
 1154 0573 1B       		.uleb128 0x1b
 1155 0574 E9060000 		.4byte	.LASF89
 1156 0578 0A       		.byte	0xa
 1157 0579 4E02     		.2byte	0x24e
 1158 057b 11020000 		.4byte	0x211
 1159 057f 48       		.byte	0x48
 1160 0580 1B       		.uleb128 0x1b
 1161 0581 AB040000 		.4byte	.LASF90
 1162 0585 0A       		.byte	0xa
 1163 0586 4F02     		.2byte	0x24f
 1164 0588 E5080000 		.4byte	0x8e5
 1165 058c 4C       		.byte	0x4c
 1166 058d 1B       		.uleb128 0x1b
 1167 058e 84020000 		.4byte	.LASF91
 1168 0592 0A       		.byte	0xa
 1169 0593 5202     		.2byte	0x252
 1170 0595 25000000 		.4byte	0x25
 1171 0599 50       		.byte	0x50
 1172 059a 1B       		.uleb128 0x1b
 1173 059b BF010000 		.4byte	.LASF92
 1174 059f 0A       		.byte	0xa
 1175 05a0 5302     		.2byte	0x253
 1176 05a2 FB050000 		.4byte	0x5fb
 1177 05a6 54       		.byte	0x54
 1178 05a7 1B       		.uleb128 0x1b
 1179 05a8 F6020000 		.4byte	.LASF93
 1180 05ac 0A       		.byte	0xa
 1181 05ad 7602     		.2byte	0x276
 1182 05af A2080000 		.4byte	0x8a2
 1183 05b3 58       		.byte	0x58
 1184 05b4 1C       		.uleb128 0x1c
 1185 05b5 F2030000 		.4byte	.LASF53
 1186 05b9 0A       		.byte	0xa
 1187 05ba 7A02     		.2byte	0x27a
 1188 05bc 2E030000 		.4byte	0x32e
 1189 05c0 4801     		.2byte	0x148
 1190 05c2 1C       		.uleb128 0x1c
 1191 05c3 5D000000 		.4byte	.LASF94
 1192 05c7 0A       		.byte	0xa
 1193 05c8 7B02     		.2byte	0x27b
ARM GAS  /tmp/ccQL0uqT.s 			page 27


 1194 05ca F0020000 		.4byte	0x2f0
 1195 05ce 4C01     		.2byte	0x14c
 1196 05d0 1C       		.uleb128 0x1c
 1197 05d1 5C060000 		.4byte	.LASF95
 1198 05d5 0A       		.byte	0xa
 1199 05d6 7F02     		.2byte	0x27f
 1200 05d8 F6080000 		.4byte	0x8f6
 1201 05dc DC02     		.2byte	0x2dc
 1202 05de 1C       		.uleb128 0x1c
 1203 05df 58010000 		.4byte	.LASF96
 1204 05e3 0A       		.byte	0xa
 1205 05e4 8402     		.2byte	0x284
 1206 05e6 A7060000 		.4byte	0x6a7
 1207 05ea E002     		.2byte	0x2e0
 1208 05ec 1C       		.uleb128 0x1c
 1209 05ed 3D010000 		.4byte	.LASF97
 1210 05f1 0A       		.byte	0xa
 1211 05f2 8502     		.2byte	0x285
 1212 05f4 02090000 		.4byte	0x902
 1213 05f8 EC02     		.2byte	0x2ec
 1214 05fa 00       		.byte	0
 1215 05fb 14       		.uleb128 0x14
 1216 05fc 04       		.byte	0x4
 1217 05fd 01060000 		.4byte	0x601
 1218 0601 03       		.uleb128 0x3
 1219 0602 01       		.byte	0x1
 1220 0603 08       		.byte	0x8
 1221 0604 4D050000 		.4byte	.LASF98
 1222 0608 06       		.uleb128 0x6
 1223 0609 01060000 		.4byte	0x601
 1224 060d 14       		.uleb128 0x14
 1225 060e 04       		.byte	0x4
 1226 060f A0040000 		.4byte	0x4a0
 1227 0613 18       		.uleb128 0x18
 1228 0614 25000000 		.4byte	0x25
 1229 0618 31060000 		.4byte	0x631
 1230 061c 19       		.uleb128 0x19
 1231 061d BE040000 		.4byte	0x4be
 1232 0621 19       		.uleb128 0x19
 1233 0622 BC000000 		.4byte	0xbc
 1234 0626 19       		.uleb128 0x19
 1235 0627 31060000 		.4byte	0x631
 1236 062b 19       		.uleb128 0x19
 1237 062c 25000000 		.4byte	0x25
 1238 0630 00       		.byte	0
 1239 0631 14       		.uleb128 0x14
 1240 0632 04       		.byte	0x4
 1241 0633 08060000 		.4byte	0x608
 1242 0637 14       		.uleb128 0x14
 1243 0638 04       		.byte	0x4
 1244 0639 13060000 		.4byte	0x613
 1245 063d 18       		.uleb128 0x18
 1246 063e 36010000 		.4byte	0x136
 1247 0642 5B060000 		.4byte	0x65b
 1248 0646 19       		.uleb128 0x19
 1249 0647 BE040000 		.4byte	0x4be
 1250 064b 19       		.uleb128 0x19
ARM GAS  /tmp/ccQL0uqT.s 			page 28


 1251 064c BC000000 		.4byte	0xbc
 1252 0650 19       		.uleb128 0x19
 1253 0651 36010000 		.4byte	0x136
 1254 0655 19       		.uleb128 0x19
 1255 0656 25000000 		.4byte	0x25
 1256 065a 00       		.byte	0
 1257 065b 14       		.uleb128 0x14
 1258 065c 04       		.byte	0x4
 1259 065d 3D060000 		.4byte	0x63d
 1260 0661 18       		.uleb128 0x18
 1261 0662 25000000 		.4byte	0x25
 1262 0666 75060000 		.4byte	0x675
 1263 066a 19       		.uleb128 0x19
 1264 066b BE040000 		.4byte	0x4be
 1265 066f 19       		.uleb128 0x19
 1266 0670 BC000000 		.4byte	0xbc
 1267 0674 00       		.byte	0
 1268 0675 14       		.uleb128 0x14
 1269 0676 04       		.byte	0x4
 1270 0677 61060000 		.4byte	0x661
 1271 067b 10       		.uleb128 0x10
 1272 067c 3A000000 		.4byte	0x3a
 1273 0680 8B060000 		.4byte	0x68b
 1274 0684 11       		.uleb128 0x11
 1275 0685 BE000000 		.4byte	0xbe
 1276 0689 02       		.byte	0x2
 1277 068a 00       		.byte	0
 1278 068b 10       		.uleb128 0x10
 1279 068c 3A000000 		.4byte	0x3a
 1280 0690 9B060000 		.4byte	0x69b
 1281 0694 11       		.uleb128 0x11
 1282 0695 BE000000 		.4byte	0xbe
 1283 0699 00       		.byte	0
 1284 069a 00       		.byte	0
 1285 069b 0D       		.uleb128 0xd
 1286 069c B5040000 		.4byte	.LASF99
 1287 06a0 0A       		.byte	0xa
 1288 06a1 1D01     		.2byte	0x11d
 1289 06a3 76030000 		.4byte	0x376
 1290 06a7 1D       		.uleb128 0x1d
 1291 06a8 35060000 		.4byte	.LASF100
 1292 06ac 0C       		.byte	0xc
 1293 06ad 0A       		.byte	0xa
 1294 06ae 2101     		.2byte	0x121
 1295 06b0 DC060000 		.4byte	0x6dc
 1296 06b4 1B       		.uleb128 0x1b
 1297 06b5 83050000 		.4byte	.LASF33
 1298 06b9 0A       		.byte	0xa
 1299 06ba 2301     		.2byte	0x123
 1300 06bc DC060000 		.4byte	0x6dc
 1301 06c0 00       		.byte	0
 1302 06c1 1B       		.uleb128 0x1b
 1303 06c2 AF020000 		.4byte	.LASF101
 1304 06c6 0A       		.byte	0xa
 1305 06c7 2401     		.2byte	0x124
 1306 06c9 25000000 		.4byte	0x25
 1307 06cd 04       		.byte	0x4
ARM GAS  /tmp/ccQL0uqT.s 			page 29


 1308 06ce 1B       		.uleb128 0x1b
 1309 06cf 7A040000 		.4byte	.LASF102
 1310 06d3 0A       		.byte	0xa
 1311 06d4 2501     		.2byte	0x125
 1312 06d6 E2060000 		.4byte	0x6e2
 1313 06da 08       		.byte	0x8
 1314 06db 00       		.byte	0
 1315 06dc 14       		.uleb128 0x14
 1316 06dd 04       		.byte	0x4
 1317 06de A7060000 		.4byte	0x6a7
 1318 06e2 14       		.uleb128 0x14
 1319 06e3 04       		.byte	0x4
 1320 06e4 9B060000 		.4byte	0x69b
 1321 06e8 1D       		.uleb128 0x1d
 1322 06e9 35000000 		.4byte	.LASF103
 1323 06ed 0E       		.byte	0xe
 1324 06ee 0A       		.byte	0xa
 1325 06ef 3D01     		.2byte	0x13d
 1326 06f1 1D070000 		.4byte	0x71d
 1327 06f5 1B       		.uleb128 0x1b
 1328 06f6 13050000 		.4byte	.LASF104
 1329 06fa 0A       		.byte	0xa
 1330 06fb 3E01     		.2byte	0x13e
 1331 06fd 1D070000 		.4byte	0x71d
 1332 0701 00       		.byte	0
 1333 0702 1B       		.uleb128 0x1b
 1334 0703 01030000 		.4byte	.LASF105
 1335 0707 0A       		.byte	0xa
 1336 0708 3F01     		.2byte	0x13f
 1337 070a 1D070000 		.4byte	0x71d
 1338 070e 06       		.byte	0x6
 1339 070f 1B       		.uleb128 0x1b
 1340 0710 F0050000 		.4byte	.LASF106
 1341 0714 0A       		.byte	0xa
 1342 0715 4001     		.2byte	0x140
 1343 0717 53000000 		.4byte	0x53
 1344 071b 0C       		.byte	0xc
 1345 071c 00       		.byte	0
 1346 071d 10       		.uleb128 0x10
 1347 071e 53000000 		.4byte	0x53
 1348 0722 2D070000 		.4byte	0x72d
 1349 0726 11       		.uleb128 0x11
 1350 0727 BE000000 		.4byte	0xbe
 1351 072b 02       		.byte	0x2
 1352 072c 00       		.byte	0
 1353 072d 1E       		.uleb128 0x1e
 1354 072e D0       		.byte	0xd0
 1355 072f 0A       		.byte	0xa
 1356 0730 5702     		.2byte	0x257
 1357 0732 2E080000 		.4byte	0x82e
 1358 0736 1B       		.uleb128 0x1b
 1359 0737 23060000 		.4byte	.LASF107
 1360 073b 0A       		.byte	0xa
 1361 073c 5902     		.2byte	0x259
 1362 073e 2C000000 		.4byte	0x2c
 1363 0742 00       		.byte	0
 1364 0743 1B       		.uleb128 0x1b
ARM GAS  /tmp/ccQL0uqT.s 			page 30


 1365 0744 89050000 		.4byte	.LASF108
 1366 0748 0A       		.byte	0xa
 1367 0749 5A02     		.2byte	0x25a
 1368 074b FB050000 		.4byte	0x5fb
 1369 074f 04       		.byte	0x4
 1370 0750 1B       		.uleb128 0x1b
 1371 0751 D4020000 		.4byte	.LASF109
 1372 0755 0A       		.byte	0xa
 1373 0756 5B02     		.2byte	0x25b
 1374 0758 2E080000 		.4byte	0x82e
 1375 075c 08       		.byte	0x8
 1376 075d 1B       		.uleb128 0x1b
 1377 075e A0060000 		.4byte	.LASF110
 1378 0762 0A       		.byte	0xa
 1379 0763 5C02     		.2byte	0x25c
 1380 0765 27020000 		.4byte	0x227
 1381 0769 24       		.byte	0x24
 1382 076a 1B       		.uleb128 0x1b
 1383 076b 0F040000 		.4byte	.LASF111
 1384 076f 0A       		.byte	0xa
 1385 0770 5D02     		.2byte	0x25d
 1386 0772 25000000 		.4byte	0x25
 1387 0776 48       		.byte	0x48
 1388 0777 1B       		.uleb128 0x1b
 1389 0778 B6020000 		.4byte	.LASF112
 1390 077c 0A       		.byte	0xa
 1391 077d 5E02     		.2byte	0x25e
 1392 077f 85000000 		.4byte	0x85
 1393 0783 50       		.byte	0x50
 1394 0784 1B       		.uleb128 0x1b
 1395 0785 B8060000 		.4byte	.LASF113
 1396 0789 0A       		.byte	0xa
 1397 078a 5F02     		.2byte	0x25f
 1398 078c E8060000 		.4byte	0x6e8
 1399 0790 58       		.byte	0x58
 1400 0791 1B       		.uleb128 0x1b
 1401 0792 D8040000 		.4byte	.LASF114
 1402 0796 0A       		.byte	0xa
 1403 0797 6002     		.2byte	0x260
 1404 0799 9D010000 		.4byte	0x19d
 1405 079d 68       		.byte	0x68
 1406 079e 1B       		.uleb128 0x1b
 1407 079f DB060000 		.4byte	.LASF115
 1408 07a3 0A       		.byte	0xa
 1409 07a4 6102     		.2byte	0x261
 1410 07a6 9D010000 		.4byte	0x19d
 1411 07aa 70       		.byte	0x70
 1412 07ab 1B       		.uleb128 0x1b
 1413 07ac E5000000 		.4byte	.LASF116
 1414 07b0 0A       		.byte	0xa
 1415 07b1 6202     		.2byte	0x262
 1416 07b3 9D010000 		.4byte	0x19d
 1417 07b7 78       		.byte	0x78
 1418 07b8 1B       		.uleb128 0x1b
 1419 07b9 52060000 		.4byte	.LASF117
 1420 07bd 0A       		.byte	0xa
 1421 07be 6302     		.2byte	0x263
ARM GAS  /tmp/ccQL0uqT.s 			page 31


 1422 07c0 3E080000 		.4byte	0x83e
 1423 07c4 80       		.byte	0x80
 1424 07c5 1B       		.uleb128 0x1b
 1425 07c6 C8020000 		.4byte	.LASF118
 1426 07ca 0A       		.byte	0xa
 1427 07cb 6402     		.2byte	0x264
 1428 07cd 4E080000 		.4byte	0x84e
 1429 07d1 88       		.byte	0x88
 1430 07d2 1B       		.uleb128 0x1b
 1431 07d3 0A020000 		.4byte	.LASF119
 1432 07d7 0A       		.byte	0xa
 1433 07d8 6502     		.2byte	0x265
 1434 07da 25000000 		.4byte	0x25
 1435 07de A0       		.byte	0xa0
 1436 07df 1B       		.uleb128 0x1b
 1437 07e0 E0010000 		.4byte	.LASF120
 1438 07e4 0A       		.byte	0xa
 1439 07e5 6602     		.2byte	0x266
 1440 07e7 9D010000 		.4byte	0x19d
 1441 07eb A4       		.byte	0xa4
 1442 07ec 1B       		.uleb128 0x1b
 1443 07ed D6000000 		.4byte	.LASF121
 1444 07f1 0A       		.byte	0xa
 1445 07f2 6702     		.2byte	0x267
 1446 07f4 9D010000 		.4byte	0x19d
 1447 07f8 AC       		.byte	0xac
 1448 07f9 1B       		.uleb128 0x1b
 1449 07fa CF010000 		.4byte	.LASF122
 1450 07fe 0A       		.byte	0xa
 1451 07ff 6802     		.2byte	0x268
 1452 0801 9D010000 		.4byte	0x19d
 1453 0805 B4       		.byte	0xb4
 1454 0806 1B       		.uleb128 0x1b
 1455 0807 66000000 		.4byte	.LASF123
 1456 080b 0A       		.byte	0xa
 1457 080c 6902     		.2byte	0x269
 1458 080e 9D010000 		.4byte	0x19d
 1459 0812 BC       		.byte	0xbc
 1460 0813 1B       		.uleb128 0x1b
 1461 0814 75000000 		.4byte	.LASF124
 1462 0818 0A       		.byte	0xa
 1463 0819 6A02     		.2byte	0x26a
 1464 081b 9D010000 		.4byte	0x19d
 1465 081f C4       		.byte	0xc4
 1466 0820 1B       		.uleb128 0x1b
 1467 0821 80040000 		.4byte	.LASF125
 1468 0825 0A       		.byte	0xa
 1469 0826 6B02     		.2byte	0x26b
 1470 0828 25000000 		.4byte	0x25
 1471 082c CC       		.byte	0xcc
 1472 082d 00       		.byte	0
 1473 082e 10       		.uleb128 0x10
 1474 082f 01060000 		.4byte	0x601
 1475 0833 3E080000 		.4byte	0x83e
 1476 0837 11       		.uleb128 0x11
 1477 0838 BE000000 		.4byte	0xbe
 1478 083c 19       		.byte	0x19
ARM GAS  /tmp/ccQL0uqT.s 			page 32


 1479 083d 00       		.byte	0
 1480 083e 10       		.uleb128 0x10
 1481 083f 01060000 		.4byte	0x601
 1482 0843 4E080000 		.4byte	0x84e
 1483 0847 11       		.uleb128 0x11
 1484 0848 BE000000 		.4byte	0xbe
 1485 084c 07       		.byte	0x7
 1486 084d 00       		.byte	0
 1487 084e 10       		.uleb128 0x10
 1488 084f 01060000 		.4byte	0x601
 1489 0853 5E080000 		.4byte	0x85e
 1490 0857 11       		.uleb128 0x11
 1491 0858 BE000000 		.4byte	0xbe
 1492 085c 17       		.byte	0x17
 1493 085d 00       		.byte	0
 1494 085e 1E       		.uleb128 0x1e
 1495 085f F0       		.byte	0xf0
 1496 0860 0A       		.byte	0xa
 1497 0861 7002     		.2byte	0x270
 1498 0863 82080000 		.4byte	0x882
 1499 0867 1B       		.uleb128 0x1b
 1500 0868 EF020000 		.4byte	.LASF126
 1501 086c 0A       		.byte	0xa
 1502 086d 7302     		.2byte	0x273
 1503 086f 82080000 		.4byte	0x882
 1504 0873 00       		.byte	0
 1505 0874 1B       		.uleb128 0x1b
 1506 0875 49060000 		.4byte	.LASF127
 1507 0879 0A       		.byte	0xa
 1508 087a 7402     		.2byte	0x274
 1509 087c 92080000 		.4byte	0x892
 1510 0880 78       		.byte	0x78
 1511 0881 00       		.byte	0
 1512 0882 10       		.uleb128 0x10
 1513 0883 70030000 		.4byte	0x370
 1514 0887 92080000 		.4byte	0x892
 1515 088b 11       		.uleb128 0x11
 1516 088c BE000000 		.4byte	0xbe
 1517 0890 1D       		.byte	0x1d
 1518 0891 00       		.byte	0
 1519 0892 10       		.uleb128 0x10
 1520 0893 2C000000 		.4byte	0x2c
 1521 0897 A2080000 		.4byte	0x8a2
 1522 089b 11       		.uleb128 0x11
 1523 089c BE000000 		.4byte	0xbe
 1524 08a0 1D       		.byte	0x1d
 1525 08a1 00       		.byte	0
 1526 08a2 1F       		.uleb128 0x1f
 1527 08a3 F0       		.byte	0xf0
 1528 08a4 0A       		.byte	0xa
 1529 08a5 5502     		.2byte	0x255
 1530 08a7 C4080000 		.4byte	0x8c4
 1531 08ab 20       		.uleb128 0x20
 1532 08ac 0C050000 		.4byte	.LASF76
 1533 08b0 0A       		.byte	0xa
 1534 08b1 6C02     		.2byte	0x26c
 1535 08b3 2D070000 		.4byte	0x72d
ARM GAS  /tmp/ccQL0uqT.s 			page 33


 1536 08b7 20       		.uleb128 0x20
 1537 08b8 8D060000 		.4byte	.LASF128
 1538 08bc 0A       		.byte	0xa
 1539 08bd 7502     		.2byte	0x275
 1540 08bf 5E080000 		.4byte	0x85e
 1541 08c3 00       		.byte	0
 1542 08c4 10       		.uleb128 0x10
 1543 08c5 01060000 		.4byte	0x601
 1544 08c9 D4080000 		.4byte	0x8d4
 1545 08cd 11       		.uleb128 0x11
 1546 08ce BE000000 		.4byte	0xbe
 1547 08d2 18       		.byte	0x18
 1548 08d3 00       		.byte	0
 1549 08d4 21       		.uleb128 0x21
 1550 08d5 DF080000 		.4byte	0x8df
 1551 08d9 19       		.uleb128 0x19
 1552 08da BE040000 		.4byte	0x4be
 1553 08de 00       		.byte	0
 1554 08df 14       		.uleb128 0x14
 1555 08e0 04       		.byte	0x4
 1556 08e1 D4080000 		.4byte	0x8d4
 1557 08e5 14       		.uleb128 0x14
 1558 08e6 04       		.byte	0x4
 1559 08e7 11020000 		.4byte	0x211
 1560 08eb 21       		.uleb128 0x21
 1561 08ec F6080000 		.4byte	0x8f6
 1562 08f0 19       		.uleb128 0x19
 1563 08f1 25000000 		.4byte	0x25
 1564 08f5 00       		.byte	0
 1565 08f6 14       		.uleb128 0x14
 1566 08f7 04       		.byte	0x4
 1567 08f8 FC080000 		.4byte	0x8fc
 1568 08fc 14       		.uleb128 0x14
 1569 08fd 04       		.byte	0x4
 1570 08fe EB080000 		.4byte	0x8eb
 1571 0902 10       		.uleb128 0x10
 1572 0903 9B060000 		.4byte	0x69b
 1573 0907 12090000 		.4byte	0x912
 1574 090b 11       		.uleb128 0x11
 1575 090c BE000000 		.4byte	0xbe
 1576 0910 02       		.byte	0x2
 1577 0911 00       		.byte	0
 1578 0912 08       		.uleb128 0x8
 1579 0913 17020000 		.4byte	.LASF129
 1580 0917 0A       		.byte	0xa
 1581 0918 FD02     		.2byte	0x2fd
 1582 091a BE040000 		.4byte	0x4be
 1583 091e 08       		.uleb128 0x8
 1584 091f F5050000 		.4byte	.LASF130
 1585 0923 0A       		.byte	0xa
 1586 0924 FE02     		.2byte	0x2fe
 1587 0926 C4040000 		.4byte	0x4c4
 1588 092a 09       		.uleb128 0x9
 1589 092b FA030000 		.4byte	.LASF131
 1590 092f 0B       		.byte	0xb
 1591 0930 5F       		.byte	0x5f
 1592 0931 FB050000 		.4byte	0x5fb
ARM GAS  /tmp/ccQL0uqT.s 			page 34


 1593 0935 09       		.uleb128 0x9
 1594 0936 2B040000 		.4byte	.LASF132
 1595 093a 0C       		.byte	0xc
 1596 093b 8F       		.byte	0x8f
 1597 093c 47090000 		.4byte	0x947
 1598 0940 03       		.uleb128 0x3
 1599 0941 01       		.byte	0x1
 1600 0942 02       		.byte	0x2
 1601 0943 5E040000 		.4byte	.LASF133
 1602 0947 05       		.uleb128 0x5
 1603 0948 40090000 		.4byte	0x940
 1604 094c 22       		.uleb128 0x22
 1605 094d 66060000 		.4byte	.LASF134
 1606 0951 0C       		.byte	0xc
 1607 0952 94       		.byte	0x94
 1608 0953 B2000000 		.4byte	0xb2
 1609 0957 05       		.uleb128 0x5
 1610 0958 03       		.byte	0x3
 1611 0959 00000000 		.4byte	cpu_irq_critical_section_counter
 1612 095d 22       		.uleb128 0x22
 1613 095e 86000000 		.4byte	.LASF135
 1614 0962 0C       		.byte	0xc
 1615 0963 95       		.byte	0x95
 1616 0964 47090000 		.4byte	0x947
 1617 0968 05       		.uleb128 0x5
 1618 0969 03       		.byte	0x3
 1619 096a 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1620 096e 03       		.uleb128 0x3
 1621 096f 04       		.byte	0x4
 1622 0970 04       		.byte	0x4
 1623 0971 25040000 		.4byte	.LASF136
 1624 0975 03       		.uleb128 0x3
 1625 0976 08       		.byte	0x8
 1626 0977 04       		.byte	0x4
 1627 0978 A3010000 		.4byte	.LASF137
 1628 097c 22       		.uleb128 0x22
 1629 097d BD060000 		.4byte	.LASF138
 1630 0981 01       		.byte	0x1
 1631 0982 49       		.byte	0x49
 1632 0983 A7000000 		.4byte	0xa7
 1633 0987 05       		.uleb128 0x5
 1634 0988 03       		.byte	0x3
 1635 0989 00000000 		.4byte	g_wobits_in_rtt_mr
 1636 098d 23       		.uleb128 0x23
 1637 098e F7060000 		.4byte	.LASF142
 1638 0992 01       		.byte	0x1
 1639 0993 ED       		.byte	0xed
 1640 0994 A7000000 		.4byte	0xa7
 1641 0998 00000000 		.4byte	.LFB150
 1642 099c 44000000 		.4byte	.LFE150-.LFB150
 1643 09a0 01       		.uleb128 0x1
 1644 09a1 9C       		.byte	0x9c
 1645 09a2 370A0000 		.4byte	0xa37
 1646 09a6 24       		.uleb128 0x24
 1647 09a7 EE010000 		.4byte	.LASF139
 1648 09ab 01       		.byte	0x1
 1649 09ac ED       		.byte	0xed
ARM GAS  /tmp/ccQL0uqT.s 			page 35


 1650 09ad 370A0000 		.4byte	0xa37
 1651 09b1 00000000 		.4byte	.LLST10
 1652 09b5 24       		.uleb128 0x24
 1653 09b6 3B060000 		.4byte	.LASF140
 1654 09ba 01       		.byte	0x1
 1655 09bb ED       		.byte	0xed
 1656 09bc A7000000 		.4byte	0xa7
 1657 09c0 2C000000 		.4byte	.LLST11
 1658 09c4 25       		.uleb128 0x25
 1659 09c5 2F050000 		.4byte	.LASF141
 1660 09c9 01       		.byte	0x1
 1661 09ca EF       		.byte	0xef
 1662 09cb A7000000 		.4byte	0xa7
 1663 09cf 65000000 		.4byte	.LLST12
 1664 09d3 26       		.uleb128 0x26
 1665 09d4 9E0A0000 		.4byte	0xa9e
 1666 09d8 02000000 		.4byte	.LBB6
 1667 09dc 00000000 		.4byte	.Ldebug_ranges0+0
 1668 09e0 01       		.byte	0x1
 1669 09e1 F3       		.byte	0xf3
 1670 09e2 040A0000 		.4byte	0xa04
 1671 09e6 27       		.uleb128 0x27
 1672 09e7 B50A0000 		.4byte	0xab5
 1673 09eb 83000000 		.4byte	.LLST13
 1674 09ef 27       		.uleb128 0x27
 1675 09f0 AA0A0000 		.4byte	0xaaa
 1676 09f4 99000000 		.4byte	.LLST14
 1677 09f8 28       		.uleb128 0x28
 1678 09f9 00000000 		.4byte	.Ldebug_ranges0+0
 1679 09fd 29       		.uleb128 0x29
 1680 09fe F60B0000 		.4byte	0xbf6
 1681 0a02 00       		.byte	0
 1682 0a03 00       		.byte	0
 1683 0a04 2A       		.uleb128 0x2a
 1684 0a05 CC0A0000 		.4byte	0xacc
 1685 0a09 22000000 		.4byte	.LBB12
 1686 0a0d 0C000000 		.4byte	.LBE12-.LBB12
 1687 0a11 01       		.byte	0x1
 1688 0a12 0101     		.2byte	0x101
 1689 0a14 27       		.uleb128 0x27
 1690 0a15 E30A0000 		.4byte	0xae3
 1691 0a19 B1000000 		.4byte	.LLST15
 1692 0a1d 27       		.uleb128 0x27
 1693 0a1e D80A0000 		.4byte	0xad8
 1694 0a22 C7000000 		.4byte	.LLST16
 1695 0a26 2B       		.uleb128 0x2b
 1696 0a27 22000000 		.4byte	.LBB13
 1697 0a2b 0C000000 		.4byte	.LBE13-.LBB13
 1698 0a2f 29       		.uleb128 0x29
 1699 0a30 CD0B0000 		.4byte	0xbcd
 1700 0a34 00       		.byte	0
 1701 0a35 00       		.byte	0
 1702 0a36 00       		.byte	0
 1703 0a37 14       		.uleb128 0x14
 1704 0a38 04       		.byte	0x4
 1705 0a39 15010000 		.4byte	0x115
 1706 0a3d 23       		.uleb128 0x23
ARM GAS  /tmp/ccQL0uqT.s 			page 36


 1707 0a3e 0C070000 		.4byte	.LASF143
 1708 0a42 01       		.byte	0x1
 1709 0a43 DE       		.byte	0xde
 1710 0a44 A7000000 		.4byte	0xa7
 1711 0a48 00000000 		.4byte	.LFB149
 1712 0a4c 04000000 		.4byte	.LFE149-.LFB149
 1713 0a50 01       		.uleb128 0x1
 1714 0a51 9C       		.byte	0x9c
 1715 0a52 660A0000 		.4byte	0xa66
 1716 0a56 24       		.uleb128 0x24
 1717 0a57 EE010000 		.4byte	.LASF139
 1718 0a5b 01       		.byte	0x1
 1719 0a5c DE       		.byte	0xde
 1720 0a5d 370A0000 		.4byte	0xa37
 1721 0a61 DF000000 		.4byte	.LLST9
 1722 0a65 00       		.byte	0
 1723 0a66 23       		.uleb128 0x23
 1724 0a67 AA010000 		.4byte	.LASF144
 1725 0a6b 01       		.byte	0x1
 1726 0a6c CC       		.byte	0xcc
 1727 0a6d A7000000 		.4byte	0xa7
 1728 0a71 00000000 		.4byte	.LFB148
 1729 0a75 14000000 		.4byte	.LFE148-.LFB148
 1730 0a79 01       		.uleb128 0x1
 1731 0a7a 9C       		.byte	0x9c
 1732 0a7b 9E0A0000 		.4byte	0xa9e
 1733 0a7f 24       		.uleb128 0x24
 1734 0a80 EE010000 		.4byte	.LASF139
 1735 0a84 01       		.byte	0x1
 1736 0a85 CC       		.byte	0xcc
 1737 0a86 370A0000 		.4byte	0xa37
 1738 0a8a 00010000 		.4byte	.LLST7
 1739 0a8e 25       		.uleb128 0x25
 1740 0a8f 26000000 		.4byte	.LASF145
 1741 0a93 01       		.byte	0x1
 1742 0a94 CE       		.byte	0xce
 1743 0a95 A7000000 		.4byte	0xa7
 1744 0a99 21010000 		.4byte	.LLST8
 1745 0a9d 00       		.byte	0
 1746 0a9e 2C       		.uleb128 0x2c
 1747 0a9f 3E020000 		.4byte	.LASF147
 1748 0aa3 01       		.byte	0x1
 1749 0aa4 B9       		.byte	0xb9
 1750 0aa5 01       		.byte	0x1
 1751 0aa6 CC0A0000 		.4byte	0xacc
 1752 0aaa 2D       		.uleb128 0x2d
 1753 0aab EE010000 		.4byte	.LASF139
 1754 0aaf 01       		.byte	0x1
 1755 0ab0 B9       		.byte	0xb9
 1756 0ab1 370A0000 		.4byte	0xa37
 1757 0ab5 2D       		.uleb128 0x2d
 1758 0ab6 D0060000 		.4byte	.LASF146
 1759 0aba 01       		.byte	0x1
 1760 0abb B9       		.byte	0xb9
 1761 0abc A7000000 		.4byte	0xa7
 1762 0ac0 2E       		.uleb128 0x2e
 1763 0ac1 39020000 		.4byte	.LASF149
ARM GAS  /tmp/ccQL0uqT.s 			page 37


 1764 0ac5 01       		.byte	0x1
 1765 0ac6 BB       		.byte	0xbb
 1766 0ac7 A7000000 		.4byte	0xa7
 1767 0acb 00       		.byte	0
 1768 0acc 2C       		.uleb128 0x2c
 1769 0acd 48000000 		.4byte	.LASF148
 1770 0ad1 01       		.byte	0x1
 1771 0ad2 A7       		.byte	0xa7
 1772 0ad3 01       		.byte	0x1
 1773 0ad4 FA0A0000 		.4byte	0xafa
 1774 0ad8 2D       		.uleb128 0x2d
 1775 0ad9 EE010000 		.4byte	.LASF139
 1776 0add 01       		.byte	0x1
 1777 0ade A7       		.byte	0xa7
 1778 0adf 370A0000 		.4byte	0xa37
 1779 0ae3 2D       		.uleb128 0x2d
 1780 0ae4 D0060000 		.4byte	.LASF146
 1781 0ae8 01       		.byte	0x1
 1782 0ae9 A7       		.byte	0xa7
 1783 0aea A7000000 		.4byte	0xa7
 1784 0aee 2E       		.uleb128 0x2e
 1785 0aef 39020000 		.4byte	.LASF149
 1786 0af3 01       		.byte	0x1
 1787 0af4 A9       		.byte	0xa9
 1788 0af5 A7000000 		.4byte	0xa7
 1789 0af9 00       		.byte	0
 1790 0afa 2F       		.uleb128 0x2f
 1791 0afb 59020000 		.4byte	.LASF150
 1792 0aff 01       		.byte	0x1
 1793 0b00 83       		.byte	0x83
 1794 0b01 00000000 		.4byte	.LFB145
 1795 0b05 18000000 		.4byte	.LFE145-.LFB145
 1796 0b09 01       		.uleb128 0x1
 1797 0b0a 9C       		.byte	0x9c
 1798 0b0b 1D0B0000 		.4byte	0xb1d
 1799 0b0f 30       		.uleb128 0x30
 1800 0b10 EE010000 		.4byte	.LASF139
 1801 0b14 01       		.byte	0x1
 1802 0b15 83       		.byte	0x83
 1803 0b16 370A0000 		.4byte	0xa37
 1804 0b1a 01       		.uleb128 0x1
 1805 0b1b 50       		.byte	0x50
 1806 0b1c 00       		.byte	0
 1807 0b1d 2F       		.uleb128 0x2f
 1808 0b1e 70010000 		.4byte	.LASF151
 1809 0b22 01       		.byte	0x1
 1810 0b23 79       		.byte	0x79
 1811 0b24 00000000 		.4byte	.LFB144
 1812 0b28 18000000 		.4byte	.LFE144-.LFB144
 1813 0b2c 01       		.uleb128 0x1
 1814 0b2d 9C       		.byte	0x9c
 1815 0b2e 400B0000 		.4byte	0xb40
 1816 0b32 30       		.uleb128 0x30
 1817 0b33 EE010000 		.4byte	.LASF139
 1818 0b37 01       		.byte	0x1
 1819 0b38 79       		.byte	0x79
 1820 0b39 370A0000 		.4byte	0xa37
ARM GAS  /tmp/ccQL0uqT.s 			page 38


 1821 0b3d 01       		.uleb128 0x1
 1822 0b3e 50       		.byte	0x50
 1823 0b3f 00       		.byte	0
 1824 0b40 2F       		.uleb128 0x2f
 1825 0b41 07030000 		.4byte	.LASF152
 1826 0b45 01       		.byte	0x1
 1827 0b46 69       		.byte	0x69
 1828 0b47 00000000 		.4byte	.LFB143
 1829 0b4b 2C000000 		.4byte	.LFE143-.LFB143
 1830 0b4f 01       		.uleb128 0x1
 1831 0b50 9C       		.byte	0x9c
 1832 0b51 720B0000 		.4byte	0xb72
 1833 0b55 30       		.uleb128 0x30
 1834 0b56 EE010000 		.4byte	.LASF139
 1835 0b5a 01       		.byte	0x1
 1836 0b5b 69       		.byte	0x69
 1837 0b5c 370A0000 		.4byte	0xa37
 1838 0b60 01       		.uleb128 0x1
 1839 0b61 50       		.byte	0x50
 1840 0b62 24       		.uleb128 0x24
 1841 0b63 3D030000 		.4byte	.LASF153
 1842 0b67 01       		.byte	0x1
 1843 0b68 69       		.byte	0x69
 1844 0b69 40090000 		.4byte	0x940
 1845 0b6d 34010000 		.4byte	.LLST2
 1846 0b71 00       		.byte	0
 1847 0b72 23       		.uleb128 0x23
 1848 0b73 EE060000 		.4byte	.LASF154
 1849 0b77 01       		.byte	0x1
 1850 0b78 58       		.byte	0x58
 1851 0b79 A7000000 		.4byte	0xa7
 1852 0b7d 00000000 		.4byte	.LFB142
 1853 0b81 18000000 		.4byte	.LFE142-.LFB142
 1854 0b85 01       		.uleb128 0x1
 1855 0b86 9C       		.byte	0x9c
 1856 0b87 AA0B0000 		.4byte	0xbaa
 1857 0b8b 24       		.uleb128 0x24
 1858 0b8c EE010000 		.4byte	.LASF139
 1859 0b90 01       		.byte	0x1
 1860 0b91 58       		.byte	0x58
 1861 0b92 370A0000 		.4byte	0xa37
 1862 0b96 6E010000 		.4byte	.LLST0
 1863 0b9a 24       		.uleb128 0x24
 1864 0b9b 27030000 		.4byte	.LASF155
 1865 0b9f 01       		.byte	0x1
 1866 0ba0 58       		.byte	0x58
 1867 0ba1 8C000000 		.4byte	0x8c
 1868 0ba5 8C010000 		.4byte	.LLST1
 1869 0ba9 00       		.byte	0
 1870 0baa 31       		.uleb128 0x31
 1871 0bab CC0A0000 		.4byte	0xacc
 1872 0baf 00000000 		.4byte	.LFB146
 1873 0bb3 14000000 		.4byte	.LFE146-.LFB146
 1874 0bb7 01       		.uleb128 0x1
 1875 0bb8 9C       		.byte	0x9c
 1876 0bb9 D70B0000 		.4byte	0xbd7
 1877 0bbd 32       		.uleb128 0x32
ARM GAS  /tmp/ccQL0uqT.s 			page 39


 1878 0bbe D80A0000 		.4byte	0xad8
 1879 0bc2 01       		.uleb128 0x1
 1880 0bc3 50       		.byte	0x50
 1881 0bc4 27       		.uleb128 0x27
 1882 0bc5 E30A0000 		.4byte	0xae3
 1883 0bc9 AD010000 		.4byte	.LLST3
 1884 0bcd 33       		.uleb128 0x33
 1885 0bce EE0A0000 		.4byte	0xaee
 1886 0bd2 CE010000 		.4byte	.LLST4
 1887 0bd6 00       		.byte	0
 1888 0bd7 34       		.uleb128 0x34
 1889 0bd8 9E0A0000 		.4byte	0xa9e
 1890 0bdc 00000000 		.4byte	.LFB147
 1891 0be0 14000000 		.4byte	.LFE147-.LFB147
 1892 0be4 01       		.uleb128 0x1
 1893 0be5 9C       		.byte	0x9c
 1894 0be6 32       		.uleb128 0x32
 1895 0be7 AA0A0000 		.4byte	0xaaa
 1896 0beb 01       		.uleb128 0x1
 1897 0bec 50       		.byte	0x50
 1898 0bed 27       		.uleb128 0x27
 1899 0bee B50A0000 		.4byte	0xab5
 1900 0bf2 02020000 		.4byte	.LLST5
 1901 0bf6 33       		.uleb128 0x33
 1902 0bf7 C00A0000 		.4byte	0xac0
 1903 0bfb 23020000 		.4byte	.LLST6
 1904 0bff 00       		.byte	0
 1905 0c00 00       		.byte	0
 1906              		.section	.debug_abbrev,"",%progbits
 1907              	.Ldebug_abbrev0:
 1908 0000 01       		.uleb128 0x1
 1909 0001 11       		.uleb128 0x11
 1910 0002 01       		.byte	0x1
 1911 0003 25       		.uleb128 0x25
 1912 0004 0E       		.uleb128 0xe
 1913 0005 13       		.uleb128 0x13
 1914 0006 0B       		.uleb128 0xb
 1915 0007 03       		.uleb128 0x3
 1916 0008 0E       		.uleb128 0xe
 1917 0009 1B       		.uleb128 0x1b
 1918 000a 0E       		.uleb128 0xe
 1919 000b 55       		.uleb128 0x55
 1920 000c 17       		.uleb128 0x17
 1921 000d 11       		.uleb128 0x11
 1922 000e 01       		.uleb128 0x1
 1923 000f 10       		.uleb128 0x10
 1924 0010 17       		.uleb128 0x17
 1925 0011 00       		.byte	0
 1926 0012 00       		.byte	0
 1927 0013 02       		.uleb128 0x2
 1928 0014 24       		.uleb128 0x24
 1929 0015 00       		.byte	0
 1930 0016 0B       		.uleb128 0xb
 1931 0017 0B       		.uleb128 0xb
 1932 0018 3E       		.uleb128 0x3e
 1933 0019 0B       		.uleb128 0xb
 1934 001a 03       		.uleb128 0x3
ARM GAS  /tmp/ccQL0uqT.s 			page 40


 1935 001b 08       		.uleb128 0x8
 1936 001c 00       		.byte	0
 1937 001d 00       		.byte	0
 1938 001e 03       		.uleb128 0x3
 1939 001f 24       		.uleb128 0x24
 1940 0020 00       		.byte	0
 1941 0021 0B       		.uleb128 0xb
 1942 0022 0B       		.uleb128 0xb
 1943 0023 3E       		.uleb128 0x3e
 1944 0024 0B       		.uleb128 0xb
 1945 0025 03       		.uleb128 0x3
 1946 0026 0E       		.uleb128 0xe
 1947 0027 00       		.byte	0
 1948 0028 00       		.byte	0
 1949 0029 04       		.uleb128 0x4
 1950 002a 16       		.uleb128 0x16
 1951 002b 00       		.byte	0
 1952 002c 03       		.uleb128 0x3
 1953 002d 0E       		.uleb128 0xe
 1954 002e 3A       		.uleb128 0x3a
 1955 002f 0B       		.uleb128 0xb
 1956 0030 3B       		.uleb128 0x3b
 1957 0031 0B       		.uleb128 0xb
 1958 0032 49       		.uleb128 0x49
 1959 0033 13       		.uleb128 0x13
 1960 0034 00       		.byte	0
 1961 0035 00       		.byte	0
 1962 0036 05       		.uleb128 0x5
 1963 0037 35       		.uleb128 0x35
 1964 0038 00       		.byte	0
 1965 0039 49       		.uleb128 0x49
 1966 003a 13       		.uleb128 0x13
 1967 003b 00       		.byte	0
 1968 003c 00       		.byte	0
 1969 003d 06       		.uleb128 0x6
 1970 003e 26       		.uleb128 0x26
 1971 003f 00       		.byte	0
 1972 0040 49       		.uleb128 0x49
 1973 0041 13       		.uleb128 0x13
 1974 0042 00       		.byte	0
 1975 0043 00       		.byte	0
 1976 0044 07       		.uleb128 0x7
 1977 0045 0F       		.uleb128 0xf
 1978 0046 00       		.byte	0
 1979 0047 0B       		.uleb128 0xb
 1980 0048 0B       		.uleb128 0xb
 1981 0049 00       		.byte	0
 1982 004a 00       		.byte	0
 1983 004b 08       		.uleb128 0x8
 1984 004c 34       		.uleb128 0x34
 1985 004d 00       		.byte	0
 1986 004e 03       		.uleb128 0x3
 1987 004f 0E       		.uleb128 0xe
 1988 0050 3A       		.uleb128 0x3a
 1989 0051 0B       		.uleb128 0xb
 1990 0052 3B       		.uleb128 0x3b
 1991 0053 05       		.uleb128 0x5
ARM GAS  /tmp/ccQL0uqT.s 			page 41


 1992 0054 49       		.uleb128 0x49
 1993 0055 13       		.uleb128 0x13
 1994 0056 3F       		.uleb128 0x3f
 1995 0057 19       		.uleb128 0x19
 1996 0058 3C       		.uleb128 0x3c
 1997 0059 19       		.uleb128 0x19
 1998 005a 00       		.byte	0
 1999 005b 00       		.byte	0
 2000 005c 09       		.uleb128 0x9
 2001 005d 34       		.uleb128 0x34
 2002 005e 00       		.byte	0
 2003 005f 03       		.uleb128 0x3
 2004 0060 0E       		.uleb128 0xe
 2005 0061 3A       		.uleb128 0x3a
 2006 0062 0B       		.uleb128 0xb
 2007 0063 3B       		.uleb128 0x3b
 2008 0064 0B       		.uleb128 0xb
 2009 0065 49       		.uleb128 0x49
 2010 0066 13       		.uleb128 0x13
 2011 0067 3F       		.uleb128 0x3f
 2012 0068 19       		.uleb128 0x19
 2013 0069 3C       		.uleb128 0x3c
 2014 006a 19       		.uleb128 0x19
 2015 006b 00       		.byte	0
 2016 006c 00       		.byte	0
 2017 006d 0A       		.uleb128 0xa
 2018 006e 13       		.uleb128 0x13
 2019 006f 01       		.byte	0x1
 2020 0070 0B       		.uleb128 0xb
 2021 0071 0B       		.uleb128 0xb
 2022 0072 3A       		.uleb128 0x3a
 2023 0073 0B       		.uleb128 0xb
 2024 0074 3B       		.uleb128 0x3b
 2025 0075 0B       		.uleb128 0xb
 2026 0076 01       		.uleb128 0x1
 2027 0077 13       		.uleb128 0x13
 2028 0078 00       		.byte	0
 2029 0079 00       		.byte	0
 2030 007a 0B       		.uleb128 0xb
 2031 007b 0D       		.uleb128 0xd
 2032 007c 00       		.byte	0
 2033 007d 03       		.uleb128 0x3
 2034 007e 0E       		.uleb128 0xe
 2035 007f 3A       		.uleb128 0x3a
 2036 0080 0B       		.uleb128 0xb
 2037 0081 3B       		.uleb128 0x3b
 2038 0082 0B       		.uleb128 0xb
 2039 0083 49       		.uleb128 0x49
 2040 0084 13       		.uleb128 0x13
 2041 0085 38       		.uleb128 0x38
 2042 0086 0B       		.uleb128 0xb
 2043 0087 00       		.byte	0
 2044 0088 00       		.byte	0
 2045 0089 0C       		.uleb128 0xc
 2046 008a 16       		.uleb128 0x16
 2047 008b 00       		.byte	0
 2048 008c 03       		.uleb128 0x3
ARM GAS  /tmp/ccQL0uqT.s 			page 42


 2049 008d 08       		.uleb128 0x8
 2050 008e 3A       		.uleb128 0x3a
 2051 008f 0B       		.uleb128 0xb
 2052 0090 3B       		.uleb128 0x3b
 2053 0091 0B       		.uleb128 0xb
 2054 0092 49       		.uleb128 0x49
 2055 0093 13       		.uleb128 0x13
 2056 0094 00       		.byte	0
 2057 0095 00       		.byte	0
 2058 0096 0D       		.uleb128 0xd
 2059 0097 16       		.uleb128 0x16
 2060 0098 00       		.byte	0
 2061 0099 03       		.uleb128 0x3
 2062 009a 0E       		.uleb128 0xe
 2063 009b 3A       		.uleb128 0x3a
 2064 009c 0B       		.uleb128 0xb
 2065 009d 3B       		.uleb128 0x3b
 2066 009e 05       		.uleb128 0x5
 2067 009f 49       		.uleb128 0x49
 2068 00a0 13       		.uleb128 0x13
 2069 00a1 00       		.byte	0
 2070 00a2 00       		.byte	0
 2071 00a3 0E       		.uleb128 0xe
 2072 00a4 17       		.uleb128 0x17
 2073 00a5 01       		.byte	0x1
 2074 00a6 0B       		.uleb128 0xb
 2075 00a7 0B       		.uleb128 0xb
 2076 00a8 3A       		.uleb128 0x3a
 2077 00a9 0B       		.uleb128 0xb
 2078 00aa 3B       		.uleb128 0x3b
 2079 00ab 0B       		.uleb128 0xb
 2080 00ac 01       		.uleb128 0x1
 2081 00ad 13       		.uleb128 0x13
 2082 00ae 00       		.byte	0
 2083 00af 00       		.byte	0
 2084 00b0 0F       		.uleb128 0xf
 2085 00b1 0D       		.uleb128 0xd
 2086 00b2 00       		.byte	0
 2087 00b3 03       		.uleb128 0x3
 2088 00b4 0E       		.uleb128 0xe
 2089 00b5 3A       		.uleb128 0x3a
 2090 00b6 0B       		.uleb128 0xb
 2091 00b7 3B       		.uleb128 0x3b
 2092 00b8 0B       		.uleb128 0xb
 2093 00b9 49       		.uleb128 0x49
 2094 00ba 13       		.uleb128 0x13
 2095 00bb 00       		.byte	0
 2096 00bc 00       		.byte	0
 2097 00bd 10       		.uleb128 0x10
 2098 00be 01       		.uleb128 0x1
 2099 00bf 01       		.byte	0x1
 2100 00c0 49       		.uleb128 0x49
 2101 00c1 13       		.uleb128 0x13
 2102 00c2 01       		.uleb128 0x1
 2103 00c3 13       		.uleb128 0x13
 2104 00c4 00       		.byte	0
 2105 00c5 00       		.byte	0
ARM GAS  /tmp/ccQL0uqT.s 			page 43


 2106 00c6 11       		.uleb128 0x11
 2107 00c7 21       		.uleb128 0x21
 2108 00c8 00       		.byte	0
 2109 00c9 49       		.uleb128 0x49
 2110 00ca 13       		.uleb128 0x13
 2111 00cb 2F       		.uleb128 0x2f
 2112 00cc 0B       		.uleb128 0xb
 2113 00cd 00       		.byte	0
 2114 00ce 00       		.byte	0
 2115 00cf 12       		.uleb128 0x12
 2116 00d0 13       		.uleb128 0x13
 2117 00d1 01       		.byte	0x1
 2118 00d2 03       		.uleb128 0x3
 2119 00d3 0E       		.uleb128 0xe
 2120 00d4 0B       		.uleb128 0xb
 2121 00d5 0B       		.uleb128 0xb
 2122 00d6 3A       		.uleb128 0x3a
 2123 00d7 0B       		.uleb128 0xb
 2124 00d8 3B       		.uleb128 0x3b
 2125 00d9 0B       		.uleb128 0xb
 2126 00da 01       		.uleb128 0x1
 2127 00db 13       		.uleb128 0x13
 2128 00dc 00       		.byte	0
 2129 00dd 00       		.byte	0
 2130 00de 13       		.uleb128 0x13
 2131 00df 0D       		.uleb128 0xd
 2132 00e0 00       		.byte	0
 2133 00e1 03       		.uleb128 0x3
 2134 00e2 08       		.uleb128 0x8
 2135 00e3 3A       		.uleb128 0x3a
 2136 00e4 0B       		.uleb128 0xb
 2137 00e5 3B       		.uleb128 0x3b
 2138 00e6 0B       		.uleb128 0xb
 2139 00e7 49       		.uleb128 0x49
 2140 00e8 13       		.uleb128 0x13
 2141 00e9 38       		.uleb128 0x38
 2142 00ea 0B       		.uleb128 0xb
 2143 00eb 00       		.byte	0
 2144 00ec 00       		.byte	0
 2145 00ed 14       		.uleb128 0x14
 2146 00ee 0F       		.uleb128 0xf
 2147 00ef 00       		.byte	0
 2148 00f0 0B       		.uleb128 0xb
 2149 00f1 0B       		.uleb128 0xb
 2150 00f2 49       		.uleb128 0x49
 2151 00f3 13       		.uleb128 0x13
 2152 00f4 00       		.byte	0
 2153 00f5 00       		.byte	0
 2154 00f6 15       		.uleb128 0x15
 2155 00f7 13       		.uleb128 0x13
 2156 00f8 01       		.byte	0x1
 2157 00f9 03       		.uleb128 0x3
 2158 00fa 0E       		.uleb128 0xe
 2159 00fb 0B       		.uleb128 0xb
 2160 00fc 05       		.uleb128 0x5
 2161 00fd 3A       		.uleb128 0x3a
 2162 00fe 0B       		.uleb128 0xb
ARM GAS  /tmp/ccQL0uqT.s 			page 44


 2163 00ff 3B       		.uleb128 0x3b
 2164 0100 0B       		.uleb128 0xb
 2165 0101 01       		.uleb128 0x1
 2166 0102 13       		.uleb128 0x13
 2167 0103 00       		.byte	0
 2168 0104 00       		.byte	0
 2169 0105 16       		.uleb128 0x16
 2170 0106 0D       		.uleb128 0xd
 2171 0107 00       		.byte	0
 2172 0108 03       		.uleb128 0x3
 2173 0109 0E       		.uleb128 0xe
 2174 010a 3A       		.uleb128 0x3a
 2175 010b 0B       		.uleb128 0xb
 2176 010c 3B       		.uleb128 0x3b
 2177 010d 0B       		.uleb128 0xb
 2178 010e 49       		.uleb128 0x49
 2179 010f 13       		.uleb128 0x13
 2180 0110 38       		.uleb128 0x38
 2181 0111 05       		.uleb128 0x5
 2182 0112 00       		.byte	0
 2183 0113 00       		.byte	0
 2184 0114 17       		.uleb128 0x17
 2185 0115 15       		.uleb128 0x15
 2186 0116 00       		.byte	0
 2187 0117 27       		.uleb128 0x27
 2188 0118 19       		.uleb128 0x19
 2189 0119 00       		.byte	0
 2190 011a 00       		.byte	0
 2191 011b 18       		.uleb128 0x18
 2192 011c 15       		.uleb128 0x15
 2193 011d 01       		.byte	0x1
 2194 011e 27       		.uleb128 0x27
 2195 011f 19       		.uleb128 0x19
 2196 0120 49       		.uleb128 0x49
 2197 0121 13       		.uleb128 0x13
 2198 0122 01       		.uleb128 0x1
 2199 0123 13       		.uleb128 0x13
 2200 0124 00       		.byte	0
 2201 0125 00       		.byte	0
 2202 0126 19       		.uleb128 0x19
 2203 0127 05       		.uleb128 0x5
 2204 0128 00       		.byte	0
 2205 0129 49       		.uleb128 0x49
 2206 012a 13       		.uleb128 0x13
 2207 012b 00       		.byte	0
 2208 012c 00       		.byte	0
 2209 012d 1A       		.uleb128 0x1a
 2210 012e 13       		.uleb128 0x13
 2211 012f 01       		.byte	0x1
 2212 0130 03       		.uleb128 0x3
 2213 0131 0E       		.uleb128 0xe
 2214 0132 0B       		.uleb128 0xb
 2215 0133 05       		.uleb128 0x5
 2216 0134 3A       		.uleb128 0x3a
 2217 0135 0B       		.uleb128 0xb
 2218 0136 3B       		.uleb128 0x3b
 2219 0137 05       		.uleb128 0x5
ARM GAS  /tmp/ccQL0uqT.s 			page 45


 2220 0138 01       		.uleb128 0x1
 2221 0139 13       		.uleb128 0x13
 2222 013a 00       		.byte	0
 2223 013b 00       		.byte	0
 2224 013c 1B       		.uleb128 0x1b
 2225 013d 0D       		.uleb128 0xd
 2226 013e 00       		.byte	0
 2227 013f 03       		.uleb128 0x3
 2228 0140 0E       		.uleb128 0xe
 2229 0141 3A       		.uleb128 0x3a
 2230 0142 0B       		.uleb128 0xb
 2231 0143 3B       		.uleb128 0x3b
 2232 0144 05       		.uleb128 0x5
 2233 0145 49       		.uleb128 0x49
 2234 0146 13       		.uleb128 0x13
 2235 0147 38       		.uleb128 0x38
 2236 0148 0B       		.uleb128 0xb
 2237 0149 00       		.byte	0
 2238 014a 00       		.byte	0
 2239 014b 1C       		.uleb128 0x1c
 2240 014c 0D       		.uleb128 0xd
 2241 014d 00       		.byte	0
 2242 014e 03       		.uleb128 0x3
 2243 014f 0E       		.uleb128 0xe
 2244 0150 3A       		.uleb128 0x3a
 2245 0151 0B       		.uleb128 0xb
 2246 0152 3B       		.uleb128 0x3b
 2247 0153 05       		.uleb128 0x5
 2248 0154 49       		.uleb128 0x49
 2249 0155 13       		.uleb128 0x13
 2250 0156 38       		.uleb128 0x38
 2251 0157 05       		.uleb128 0x5
 2252 0158 00       		.byte	0
 2253 0159 00       		.byte	0
 2254 015a 1D       		.uleb128 0x1d
 2255 015b 13       		.uleb128 0x13
 2256 015c 01       		.byte	0x1
 2257 015d 03       		.uleb128 0x3
 2258 015e 0E       		.uleb128 0xe
 2259 015f 0B       		.uleb128 0xb
 2260 0160 0B       		.uleb128 0xb
 2261 0161 3A       		.uleb128 0x3a
 2262 0162 0B       		.uleb128 0xb
 2263 0163 3B       		.uleb128 0x3b
 2264 0164 05       		.uleb128 0x5
 2265 0165 01       		.uleb128 0x1
 2266 0166 13       		.uleb128 0x13
 2267 0167 00       		.byte	0
 2268 0168 00       		.byte	0
 2269 0169 1E       		.uleb128 0x1e
 2270 016a 13       		.uleb128 0x13
 2271 016b 01       		.byte	0x1
 2272 016c 0B       		.uleb128 0xb
 2273 016d 0B       		.uleb128 0xb
 2274 016e 3A       		.uleb128 0x3a
 2275 016f 0B       		.uleb128 0xb
 2276 0170 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccQL0uqT.s 			page 46


 2277 0171 05       		.uleb128 0x5
 2278 0172 01       		.uleb128 0x1
 2279 0173 13       		.uleb128 0x13
 2280 0174 00       		.byte	0
 2281 0175 00       		.byte	0
 2282 0176 1F       		.uleb128 0x1f
 2283 0177 17       		.uleb128 0x17
 2284 0178 01       		.byte	0x1
 2285 0179 0B       		.uleb128 0xb
 2286 017a 0B       		.uleb128 0xb
 2287 017b 3A       		.uleb128 0x3a
 2288 017c 0B       		.uleb128 0xb
 2289 017d 3B       		.uleb128 0x3b
 2290 017e 05       		.uleb128 0x5
 2291 017f 01       		.uleb128 0x1
 2292 0180 13       		.uleb128 0x13
 2293 0181 00       		.byte	0
 2294 0182 00       		.byte	0
 2295 0183 20       		.uleb128 0x20
 2296 0184 0D       		.uleb128 0xd
 2297 0185 00       		.byte	0
 2298 0186 03       		.uleb128 0x3
 2299 0187 0E       		.uleb128 0xe
 2300 0188 3A       		.uleb128 0x3a
 2301 0189 0B       		.uleb128 0xb
 2302 018a 3B       		.uleb128 0x3b
 2303 018b 05       		.uleb128 0x5
 2304 018c 49       		.uleb128 0x49
 2305 018d 13       		.uleb128 0x13
 2306 018e 00       		.byte	0
 2307 018f 00       		.byte	0
 2308 0190 21       		.uleb128 0x21
 2309 0191 15       		.uleb128 0x15
 2310 0192 01       		.byte	0x1
 2311 0193 27       		.uleb128 0x27
 2312 0194 19       		.uleb128 0x19
 2313 0195 01       		.uleb128 0x1
 2314 0196 13       		.uleb128 0x13
 2315 0197 00       		.byte	0
 2316 0198 00       		.byte	0
 2317 0199 22       		.uleb128 0x22
 2318 019a 34       		.uleb128 0x34
 2319 019b 00       		.byte	0
 2320 019c 03       		.uleb128 0x3
 2321 019d 0E       		.uleb128 0xe
 2322 019e 3A       		.uleb128 0x3a
 2323 019f 0B       		.uleb128 0xb
 2324 01a0 3B       		.uleb128 0x3b
 2325 01a1 0B       		.uleb128 0xb
 2326 01a2 49       		.uleb128 0x49
 2327 01a3 13       		.uleb128 0x13
 2328 01a4 02       		.uleb128 0x2
 2329 01a5 18       		.uleb128 0x18
 2330 01a6 00       		.byte	0
 2331 01a7 00       		.byte	0
 2332 01a8 23       		.uleb128 0x23
 2333 01a9 2E       		.uleb128 0x2e
ARM GAS  /tmp/ccQL0uqT.s 			page 47


 2334 01aa 01       		.byte	0x1
 2335 01ab 3F       		.uleb128 0x3f
 2336 01ac 19       		.uleb128 0x19
 2337 01ad 03       		.uleb128 0x3
 2338 01ae 0E       		.uleb128 0xe
 2339 01af 3A       		.uleb128 0x3a
 2340 01b0 0B       		.uleb128 0xb
 2341 01b1 3B       		.uleb128 0x3b
 2342 01b2 0B       		.uleb128 0xb
 2343 01b3 27       		.uleb128 0x27
 2344 01b4 19       		.uleb128 0x19
 2345 01b5 49       		.uleb128 0x49
 2346 01b6 13       		.uleb128 0x13
 2347 01b7 11       		.uleb128 0x11
 2348 01b8 01       		.uleb128 0x1
 2349 01b9 12       		.uleb128 0x12
 2350 01ba 06       		.uleb128 0x6
 2351 01bb 40       		.uleb128 0x40
 2352 01bc 18       		.uleb128 0x18
 2353 01bd 9742     		.uleb128 0x2117
 2354 01bf 19       		.uleb128 0x19
 2355 01c0 01       		.uleb128 0x1
 2356 01c1 13       		.uleb128 0x13
 2357 01c2 00       		.byte	0
 2358 01c3 00       		.byte	0
 2359 01c4 24       		.uleb128 0x24
 2360 01c5 05       		.uleb128 0x5
 2361 01c6 00       		.byte	0
 2362 01c7 03       		.uleb128 0x3
 2363 01c8 0E       		.uleb128 0xe
 2364 01c9 3A       		.uleb128 0x3a
 2365 01ca 0B       		.uleb128 0xb
 2366 01cb 3B       		.uleb128 0x3b
 2367 01cc 0B       		.uleb128 0xb
 2368 01cd 49       		.uleb128 0x49
 2369 01ce 13       		.uleb128 0x13
 2370 01cf 02       		.uleb128 0x2
 2371 01d0 17       		.uleb128 0x17
 2372 01d1 00       		.byte	0
 2373 01d2 00       		.byte	0
 2374 01d3 25       		.uleb128 0x25
 2375 01d4 34       		.uleb128 0x34
 2376 01d5 00       		.byte	0
 2377 01d6 03       		.uleb128 0x3
 2378 01d7 0E       		.uleb128 0xe
 2379 01d8 3A       		.uleb128 0x3a
 2380 01d9 0B       		.uleb128 0xb
 2381 01da 3B       		.uleb128 0x3b
 2382 01db 0B       		.uleb128 0xb
 2383 01dc 49       		.uleb128 0x49
 2384 01dd 13       		.uleb128 0x13
 2385 01de 02       		.uleb128 0x2
 2386 01df 17       		.uleb128 0x17
 2387 01e0 00       		.byte	0
 2388 01e1 00       		.byte	0
 2389 01e2 26       		.uleb128 0x26
 2390 01e3 1D       		.uleb128 0x1d
ARM GAS  /tmp/ccQL0uqT.s 			page 48


 2391 01e4 01       		.byte	0x1
 2392 01e5 31       		.uleb128 0x31
 2393 01e6 13       		.uleb128 0x13
 2394 01e7 52       		.uleb128 0x52
 2395 01e8 01       		.uleb128 0x1
 2396 01e9 55       		.uleb128 0x55
 2397 01ea 17       		.uleb128 0x17
 2398 01eb 58       		.uleb128 0x58
 2399 01ec 0B       		.uleb128 0xb
 2400 01ed 59       		.uleb128 0x59
 2401 01ee 0B       		.uleb128 0xb
 2402 01ef 01       		.uleb128 0x1
 2403 01f0 13       		.uleb128 0x13
 2404 01f1 00       		.byte	0
 2405 01f2 00       		.byte	0
 2406 01f3 27       		.uleb128 0x27
 2407 01f4 05       		.uleb128 0x5
 2408 01f5 00       		.byte	0
 2409 01f6 31       		.uleb128 0x31
 2410 01f7 13       		.uleb128 0x13
 2411 01f8 02       		.uleb128 0x2
 2412 01f9 17       		.uleb128 0x17
 2413 01fa 00       		.byte	0
 2414 01fb 00       		.byte	0
 2415 01fc 28       		.uleb128 0x28
 2416 01fd 0B       		.uleb128 0xb
 2417 01fe 01       		.byte	0x1
 2418 01ff 55       		.uleb128 0x55
 2419 0200 17       		.uleb128 0x17
 2420 0201 00       		.byte	0
 2421 0202 00       		.byte	0
 2422 0203 29       		.uleb128 0x29
 2423 0204 34       		.uleb128 0x34
 2424 0205 00       		.byte	0
 2425 0206 31       		.uleb128 0x31
 2426 0207 13       		.uleb128 0x13
 2427 0208 00       		.byte	0
 2428 0209 00       		.byte	0
 2429 020a 2A       		.uleb128 0x2a
 2430 020b 1D       		.uleb128 0x1d
 2431 020c 01       		.byte	0x1
 2432 020d 31       		.uleb128 0x31
 2433 020e 13       		.uleb128 0x13
 2434 020f 11       		.uleb128 0x11
 2435 0210 01       		.uleb128 0x1
 2436 0211 12       		.uleb128 0x12
 2437 0212 06       		.uleb128 0x6
 2438 0213 58       		.uleb128 0x58
 2439 0214 0B       		.uleb128 0xb
 2440 0215 59       		.uleb128 0x59
 2441 0216 05       		.uleb128 0x5
 2442 0217 00       		.byte	0
 2443 0218 00       		.byte	0
 2444 0219 2B       		.uleb128 0x2b
 2445 021a 0B       		.uleb128 0xb
 2446 021b 01       		.byte	0x1
 2447 021c 11       		.uleb128 0x11
ARM GAS  /tmp/ccQL0uqT.s 			page 49


 2448 021d 01       		.uleb128 0x1
 2449 021e 12       		.uleb128 0x12
 2450 021f 06       		.uleb128 0x6
 2451 0220 00       		.byte	0
 2452 0221 00       		.byte	0
 2453 0222 2C       		.uleb128 0x2c
 2454 0223 2E       		.uleb128 0x2e
 2455 0224 01       		.byte	0x1
 2456 0225 3F       		.uleb128 0x3f
 2457 0226 19       		.uleb128 0x19
 2458 0227 03       		.uleb128 0x3
 2459 0228 0E       		.uleb128 0xe
 2460 0229 3A       		.uleb128 0x3a
 2461 022a 0B       		.uleb128 0xb
 2462 022b 3B       		.uleb128 0x3b
 2463 022c 0B       		.uleb128 0xb
 2464 022d 27       		.uleb128 0x27
 2465 022e 19       		.uleb128 0x19
 2466 022f 20       		.uleb128 0x20
 2467 0230 0B       		.uleb128 0xb
 2468 0231 01       		.uleb128 0x1
 2469 0232 13       		.uleb128 0x13
 2470 0233 00       		.byte	0
 2471 0234 00       		.byte	0
 2472 0235 2D       		.uleb128 0x2d
 2473 0236 05       		.uleb128 0x5
 2474 0237 00       		.byte	0
 2475 0238 03       		.uleb128 0x3
 2476 0239 0E       		.uleb128 0xe
 2477 023a 3A       		.uleb128 0x3a
 2478 023b 0B       		.uleb128 0xb
 2479 023c 3B       		.uleb128 0x3b
 2480 023d 0B       		.uleb128 0xb
 2481 023e 49       		.uleb128 0x49
 2482 023f 13       		.uleb128 0x13
 2483 0240 00       		.byte	0
 2484 0241 00       		.byte	0
 2485 0242 2E       		.uleb128 0x2e
 2486 0243 34       		.uleb128 0x34
 2487 0244 00       		.byte	0
 2488 0245 03       		.uleb128 0x3
 2489 0246 0E       		.uleb128 0xe
 2490 0247 3A       		.uleb128 0x3a
 2491 0248 0B       		.uleb128 0xb
 2492 0249 3B       		.uleb128 0x3b
 2493 024a 0B       		.uleb128 0xb
 2494 024b 49       		.uleb128 0x49
 2495 024c 13       		.uleb128 0x13
 2496 024d 00       		.byte	0
 2497 024e 00       		.byte	0
 2498 024f 2F       		.uleb128 0x2f
 2499 0250 2E       		.uleb128 0x2e
 2500 0251 01       		.byte	0x1
 2501 0252 3F       		.uleb128 0x3f
 2502 0253 19       		.uleb128 0x19
 2503 0254 03       		.uleb128 0x3
 2504 0255 0E       		.uleb128 0xe
ARM GAS  /tmp/ccQL0uqT.s 			page 50


 2505 0256 3A       		.uleb128 0x3a
 2506 0257 0B       		.uleb128 0xb
 2507 0258 3B       		.uleb128 0x3b
 2508 0259 0B       		.uleb128 0xb
 2509 025a 27       		.uleb128 0x27
 2510 025b 19       		.uleb128 0x19
 2511 025c 11       		.uleb128 0x11
 2512 025d 01       		.uleb128 0x1
 2513 025e 12       		.uleb128 0x12
 2514 025f 06       		.uleb128 0x6
 2515 0260 40       		.uleb128 0x40
 2516 0261 18       		.uleb128 0x18
 2517 0262 9742     		.uleb128 0x2117
 2518 0264 19       		.uleb128 0x19
 2519 0265 01       		.uleb128 0x1
 2520 0266 13       		.uleb128 0x13
 2521 0267 00       		.byte	0
 2522 0268 00       		.byte	0
 2523 0269 30       		.uleb128 0x30
 2524 026a 05       		.uleb128 0x5
 2525 026b 00       		.byte	0
 2526 026c 03       		.uleb128 0x3
 2527 026d 0E       		.uleb128 0xe
 2528 026e 3A       		.uleb128 0x3a
 2529 026f 0B       		.uleb128 0xb
 2530 0270 3B       		.uleb128 0x3b
 2531 0271 0B       		.uleb128 0xb
 2532 0272 49       		.uleb128 0x49
 2533 0273 13       		.uleb128 0x13
 2534 0274 02       		.uleb128 0x2
 2535 0275 18       		.uleb128 0x18
 2536 0276 00       		.byte	0
 2537 0277 00       		.byte	0
 2538 0278 31       		.uleb128 0x31
 2539 0279 2E       		.uleb128 0x2e
 2540 027a 01       		.byte	0x1
 2541 027b 31       		.uleb128 0x31
 2542 027c 13       		.uleb128 0x13
 2543 027d 11       		.uleb128 0x11
 2544 027e 01       		.uleb128 0x1
 2545 027f 12       		.uleb128 0x12
 2546 0280 06       		.uleb128 0x6
 2547 0281 40       		.uleb128 0x40
 2548 0282 18       		.uleb128 0x18
 2549 0283 9742     		.uleb128 0x2117
 2550 0285 19       		.uleb128 0x19
 2551 0286 01       		.uleb128 0x1
 2552 0287 13       		.uleb128 0x13
 2553 0288 00       		.byte	0
 2554 0289 00       		.byte	0
 2555 028a 32       		.uleb128 0x32
 2556 028b 05       		.uleb128 0x5
 2557 028c 00       		.byte	0
 2558 028d 31       		.uleb128 0x31
 2559 028e 13       		.uleb128 0x13
 2560 028f 02       		.uleb128 0x2
 2561 0290 18       		.uleb128 0x18
ARM GAS  /tmp/ccQL0uqT.s 			page 51


 2562 0291 00       		.byte	0
 2563 0292 00       		.byte	0
 2564 0293 33       		.uleb128 0x33
 2565 0294 34       		.uleb128 0x34
 2566 0295 00       		.byte	0
 2567 0296 31       		.uleb128 0x31
 2568 0297 13       		.uleb128 0x13
 2569 0298 02       		.uleb128 0x2
 2570 0299 17       		.uleb128 0x17
 2571 029a 00       		.byte	0
 2572 029b 00       		.byte	0
 2573 029c 34       		.uleb128 0x34
 2574 029d 2E       		.uleb128 0x2e
 2575 029e 01       		.byte	0x1
 2576 029f 31       		.uleb128 0x31
 2577 02a0 13       		.uleb128 0x13
 2578 02a1 11       		.uleb128 0x11
 2579 02a2 01       		.uleb128 0x1
 2580 02a3 12       		.uleb128 0x12
 2581 02a4 06       		.uleb128 0x6
 2582 02a5 40       		.uleb128 0x40
 2583 02a6 18       		.uleb128 0x18
 2584 02a7 9742     		.uleb128 0x2117
 2585 02a9 19       		.uleb128 0x19
 2586 02aa 00       		.byte	0
 2587 02ab 00       		.byte	0
 2588 02ac 00       		.byte	0
 2589              		.section	.debug_loc,"",%progbits
 2590              	.Ldebug_loc0:
 2591              	.LLST10:
 2592 0000 00000000 		.4byte	.LVL24
 2593 0004 30000000 		.4byte	.LVL35
 2594 0008 0100     		.2byte	0x1
 2595 000a 50       		.byte	0x50
 2596 000b 30000000 		.4byte	.LVL35
 2597 000f 34000000 		.4byte	.LVL37
 2598 0013 0400     		.2byte	0x4
 2599 0015 F3       		.byte	0xf3
 2600 0016 01       		.uleb128 0x1
 2601 0017 50       		.byte	0x50
 2602 0018 9F       		.byte	0x9f
 2603 0019 34000000 		.4byte	.LVL37
 2604 001d 44000000 		.4byte	.LFE150
 2605 0021 0100     		.2byte	0x1
 2606 0023 50       		.byte	0x50
 2607 0024 00000000 		.4byte	0
 2608 0028 00000000 		.4byte	0
 2609              	.LLST11:
 2610 002c 00000000 		.4byte	.LVL24
 2611 0030 20000000 		.4byte	.LVL29
 2612 0034 0100     		.2byte	0x1
 2613 0036 51       		.byte	0x51
 2614 0037 20000000 		.4byte	.LVL29
 2615 003b 34000000 		.4byte	.LVL37
 2616 003f 0400     		.2byte	0x4
 2617 0041 F3       		.byte	0xf3
 2618 0042 01       		.uleb128 0x1
ARM GAS  /tmp/ccQL0uqT.s 			page 52


 2619 0043 51       		.byte	0x51
 2620 0044 9F       		.byte	0x9f
 2621 0045 34000000 		.4byte	.LVL37
 2622 0049 36000000 		.4byte	.LVL38
 2623 004d 0100     		.2byte	0x1
 2624 004f 51       		.byte	0x51
 2625 0050 36000000 		.4byte	.LVL38
 2626 0054 44000000 		.4byte	.LFE150
 2627 0058 0300     		.2byte	0x3
 2628 005a 71       		.byte	0x71
 2629 005b 01       		.sleb128 1
 2630 005c 9F       		.byte	0x9f
 2631 005d 00000000 		.4byte	0
 2632 0061 00000000 		.4byte	0
 2633              	.LLST12:
 2634 0065 0E000000 		.4byte	.LVL25
 2635 0069 32000000 		.4byte	.LVL36
 2636 006d 0100     		.2byte	0x1
 2637 006f 54       		.byte	0x54
 2638 0070 34000000 		.4byte	.LVL37
 2639 0074 44000000 		.4byte	.LFE150
 2640 0078 0100     		.2byte	0x1
 2641 007a 54       		.byte	0x54
 2642 007b 00000000 		.4byte	0
 2643 007f 00000000 		.4byte	0
 2644              	.LLST13:
 2645 0083 0E000000 		.4byte	.LVL25
 2646 0087 18000000 		.4byte	.LVL28
 2647 008b 0400     		.2byte	0x4
 2648 008d 40       		.byte	0x40
 2649 008e 3C       		.byte	0x3c
 2650 008f 24       		.byte	0x24
 2651 0090 9F       		.byte	0x9f
 2652 0091 00000000 		.4byte	0
 2653 0095 00000000 		.4byte	0
 2654              	.LLST14:
 2655 0099 0E000000 		.4byte	.LVL25
 2656 009d 18000000 		.4byte	.LVL28
 2657 00a1 0600     		.2byte	0x6
 2658 00a3 0C       		.byte	0xc
 2659 00a4 30180E40 		.4byte	0x400e1830
 2660 00a8 9F       		.byte	0x9f
 2661 00a9 00000000 		.4byte	0
 2662 00ad 00000000 		.4byte	0
 2663              	.LLST15:
 2664 00b1 22000000 		.4byte	.LVL30
 2665 00b5 2E000000 		.4byte	.LVL34
 2666 00b9 0400     		.2byte	0x4
 2667 00bb 40       		.byte	0x40
 2668 00bc 3C       		.byte	0x3c
 2669 00bd 24       		.byte	0x24
 2670 00be 9F       		.byte	0x9f
 2671 00bf 00000000 		.4byte	0
 2672 00c3 00000000 		.4byte	0
 2673              	.LLST16:
 2674 00c7 22000000 		.4byte	.LVL30
 2675 00cb 2E000000 		.4byte	.LVL34
ARM GAS  /tmp/ccQL0uqT.s 			page 53


 2676 00cf 0600     		.2byte	0x6
 2677 00d1 0C       		.byte	0xc
 2678 00d2 30180E40 		.4byte	0x400e1830
 2679 00d6 9F       		.byte	0x9f
 2680 00d7 00000000 		.4byte	0
 2681 00db 00000000 		.4byte	0
 2682              	.LLST9:
 2683 00df 00000000 		.4byte	.LVL22
 2684 00e3 02000000 		.4byte	.LVL23
 2685 00e7 0100     		.2byte	0x1
 2686 00e9 50       		.byte	0x50
 2687 00ea 02000000 		.4byte	.LVL23
 2688 00ee 04000000 		.4byte	.LFE149
 2689 00f2 0400     		.2byte	0x4
 2690 00f4 F3       		.byte	0xf3
 2691 00f5 01       		.uleb128 0x1
 2692 00f6 50       		.byte	0x50
 2693 00f7 9F       		.byte	0x9f
 2694 00f8 00000000 		.4byte	0
 2695 00fc 00000000 		.4byte	0
 2696              	.LLST7:
 2697 0100 00000000 		.4byte	.LVL17
 2698 0104 12000000 		.4byte	.LVL21
 2699 0108 0100     		.2byte	0x1
 2700 010a 50       		.byte	0x50
 2701 010b 12000000 		.4byte	.LVL21
 2702 010f 14000000 		.4byte	.LFE148
 2703 0113 0400     		.2byte	0x4
 2704 0115 F3       		.byte	0xf3
 2705 0116 01       		.uleb128 0x1
 2706 0117 50       		.byte	0x50
 2707 0118 9F       		.byte	0x9f
 2708 0119 00000000 		.4byte	0
 2709 011d 00000000 		.4byte	0
 2710              	.LLST8:
 2711 0121 0A000000 		.4byte	.LVL19
 2712 0125 10000000 		.4byte	.LVL20
 2713 0129 0100     		.2byte	0x1
 2714 012b 52       		.byte	0x52
 2715 012c 00000000 		.4byte	0
 2716 0130 00000000 		.4byte	0
 2717              	.LLST2:
 2718 0134 00000000 		.4byte	.LVL3
 2719 0138 04000000 		.4byte	.LVL4
 2720 013c 0100     		.2byte	0x1
 2721 013e 51       		.byte	0x51
 2722 013f 04000000 		.4byte	.LVL4
 2723 0143 14000000 		.4byte	.LVL5
 2724 0147 0400     		.2byte	0x4
 2725 0149 F3       		.byte	0xf3
 2726 014a 01       		.uleb128 0x1
 2727 014b 51       		.byte	0x51
 2728 014c 9F       		.byte	0x9f
 2729 014d 14000000 		.4byte	.LVL5
 2730 0151 16000000 		.4byte	.LVL6
 2731 0155 0100     		.2byte	0x1
 2732 0157 51       		.byte	0x51
ARM GAS  /tmp/ccQL0uqT.s 			page 54


 2733 0158 16000000 		.4byte	.LVL6
 2734 015c 2C000000 		.4byte	.LFE143
 2735 0160 0400     		.2byte	0x4
 2736 0162 F3       		.byte	0xf3
 2737 0163 01       		.uleb128 0x1
 2738 0164 51       		.byte	0x51
 2739 0165 9F       		.byte	0x9f
 2740 0166 00000000 		.4byte	0
 2741 016a 00000000 		.4byte	0
 2742              	.LLST0:
 2743 016e 00000000 		.4byte	.LVL0
 2744 0172 06000000 		.4byte	.LVL1
 2745 0176 0100     		.2byte	0x1
 2746 0178 50       		.byte	0x50
 2747 0179 06000000 		.4byte	.LVL1
 2748 017d 18000000 		.4byte	.LFE142
 2749 0181 0100     		.2byte	0x1
 2750 0183 52       		.byte	0x52
 2751 0184 00000000 		.4byte	0
 2752 0188 00000000 		.4byte	0
 2753              	.LLST1:
 2754 018c 00000000 		.4byte	.LVL0
 2755 0190 0E000000 		.4byte	.LVL2
 2756 0194 0100     		.2byte	0x1
 2757 0196 51       		.byte	0x51
 2758 0197 0E000000 		.4byte	.LVL2
 2759 019b 18000000 		.4byte	.LFE142
 2760 019f 0400     		.2byte	0x4
 2761 01a1 F3       		.byte	0xf3
 2762 01a2 01       		.uleb128 0x1
 2763 01a3 51       		.byte	0x51
 2764 01a4 9F       		.byte	0x9f
 2765 01a5 00000000 		.4byte	0
 2766 01a9 00000000 		.4byte	0
 2767              	.LLST3:
 2768 01ad 00000000 		.4byte	.LVL9
 2769 01b1 08000000 		.4byte	.LVL11
 2770 01b5 0100     		.2byte	0x1
 2771 01b7 51       		.byte	0x51
 2772 01b8 08000000 		.4byte	.LVL11
 2773 01bc 14000000 		.4byte	.LFE146
 2774 01c0 0400     		.2byte	0x4
 2775 01c2 F3       		.byte	0xf3
 2776 01c3 01       		.uleb128 0x1
 2777 01c4 51       		.byte	0x51
 2778 01c5 9F       		.byte	0x9f
 2779 01c6 00000000 		.4byte	0
 2780 01ca 00000000 		.4byte	0
 2781              	.LLST4:
 2782 01ce 04000000 		.4byte	.LVL10
 2783 01d2 08000000 		.4byte	.LVL11
 2784 01d6 0600     		.2byte	0x6
 2785 01d8 72       		.byte	0x72
 2786 01d9 00       		.sleb128 0
 2787 01da 71       		.byte	0x71
 2788 01db 00       		.sleb128 0
 2789 01dc 21       		.byte	0x21
ARM GAS  /tmp/ccQL0uqT.s 			page 55


 2790 01dd 9F       		.byte	0x9f
 2791 01de 08000000 		.4byte	.LVL11
 2792 01e2 0A000000 		.4byte	.LVL12
 2793 01e6 0700     		.2byte	0x7
 2794 01e8 72       		.byte	0x72
 2795 01e9 00       		.sleb128 0
 2796 01ea F3       		.byte	0xf3
 2797 01eb 01       		.uleb128 0x1
 2798 01ec 51       		.byte	0x51
 2799 01ed 21       		.byte	0x21
 2800 01ee 9F       		.byte	0x9f
 2801 01ef 0A000000 		.4byte	.LVL12
 2802 01f3 14000000 		.4byte	.LFE146
 2803 01f7 0100     		.2byte	0x1
 2804 01f9 51       		.byte	0x51
 2805 01fa 00000000 		.4byte	0
 2806 01fe 00000000 		.4byte	0
 2807              	.LLST5:
 2808 0202 00000000 		.4byte	.LVL13
 2809 0206 08000000 		.4byte	.LVL15
 2810 020a 0100     		.2byte	0x1
 2811 020c 51       		.byte	0x51
 2812 020d 08000000 		.4byte	.LVL15
 2813 0211 14000000 		.4byte	.LFE147
 2814 0215 0400     		.2byte	0x4
 2815 0217 F3       		.byte	0xf3
 2816 0218 01       		.uleb128 0x1
 2817 0219 51       		.byte	0x51
 2818 021a 9F       		.byte	0x9f
 2819 021b 00000000 		.4byte	0
 2820 021f 00000000 		.4byte	0
 2821              	.LLST6:
 2822 0223 00000000 		.4byte	.LVL13
 2823 0227 02000000 		.4byte	.LVL14
 2824 022b 0200     		.2byte	0x2
 2825 022d 30       		.byte	0x30
 2826 022e 9F       		.byte	0x9f
 2827 022f 02000000 		.4byte	.LVL14
 2828 0233 08000000 		.4byte	.LVL15
 2829 0237 0100     		.2byte	0x1
 2830 0239 53       		.byte	0x53
 2831 023a 08000000 		.4byte	.LVL15
 2832 023e 14000000 		.4byte	.LFE147
 2833 0242 0100     		.2byte	0x1
 2834 0244 51       		.byte	0x51
 2835 0245 00000000 		.4byte	0
 2836 0249 00000000 		.4byte	0
 2837              		.section	.debug_aranges,"",%progbits
 2838 0000 5C000000 		.4byte	0x5c
 2839 0004 0200     		.2byte	0x2
 2840 0006 00000000 		.4byte	.Ldebug_info0
 2841 000a 04       		.byte	0x4
 2842 000b 00       		.byte	0
 2843 000c 0000     		.2byte	0
 2844 000e 0000     		.2byte	0
 2845 0010 00000000 		.4byte	.LFB142
 2846 0014 18000000 		.4byte	.LFE142-.LFB142
ARM GAS  /tmp/ccQL0uqT.s 			page 56


 2847 0018 00000000 		.4byte	.LFB143
 2848 001c 2C000000 		.4byte	.LFE143-.LFB143
 2849 0020 00000000 		.4byte	.LFB144
 2850 0024 18000000 		.4byte	.LFE144-.LFB144
 2851 0028 00000000 		.4byte	.LFB145
 2852 002c 18000000 		.4byte	.LFE145-.LFB145
 2853 0030 00000000 		.4byte	.LFB146
 2854 0034 14000000 		.4byte	.LFE146-.LFB146
 2855 0038 00000000 		.4byte	.LFB147
 2856 003c 14000000 		.4byte	.LFE147-.LFB147
 2857 0040 00000000 		.4byte	.LFB148
 2858 0044 14000000 		.4byte	.LFE148-.LFB148
 2859 0048 00000000 		.4byte	.LFB149
 2860 004c 04000000 		.4byte	.LFE149-.LFB149
 2861 0050 00000000 		.4byte	.LFB150
 2862 0054 44000000 		.4byte	.LFE150-.LFB150
 2863 0058 00000000 		.4byte	0
 2864 005c 00000000 		.4byte	0
 2865              		.section	.debug_ranges,"",%progbits
 2866              	.Ldebug_ranges0:
 2867 0000 02000000 		.4byte	.LBB6
 2868 0004 04000000 		.4byte	.LBE6
 2869 0008 06000000 		.4byte	.LBB10
 2870 000c 0A000000 		.4byte	.LBE10
 2871 0010 0E000000 		.4byte	.LBB11
 2872 0014 18000000 		.4byte	.LBE11
 2873 0018 00000000 		.4byte	0
 2874 001c 00000000 		.4byte	0
 2875 0020 00000000 		.4byte	.LFB142
 2876 0024 18000000 		.4byte	.LFE142
 2877 0028 00000000 		.4byte	.LFB143
 2878 002c 2C000000 		.4byte	.LFE143
 2879 0030 00000000 		.4byte	.LFB144
 2880 0034 18000000 		.4byte	.LFE144
 2881 0038 00000000 		.4byte	.LFB145
 2882 003c 18000000 		.4byte	.LFE145
 2883 0040 00000000 		.4byte	.LFB146
 2884 0044 14000000 		.4byte	.LFE146
 2885 0048 00000000 		.4byte	.LFB147
 2886 004c 14000000 		.4byte	.LFE147
 2887 0050 00000000 		.4byte	.LFB148
 2888 0054 14000000 		.4byte	.LFE148
 2889 0058 00000000 		.4byte	.LFB149
 2890 005c 04000000 		.4byte	.LFE149
 2891 0060 00000000 		.4byte	.LFB150
 2892 0064 44000000 		.4byte	.LFE150
 2893 0068 00000000 		.4byte	0
 2894 006c 00000000 		.4byte	0
 2895              		.section	.debug_line,"",%progbits
 2896              	.Ldebug_line0:
 2897 0000 3E030000 		.section	.debug_str,"MS",%progbits,1
 2897      02005502 
 2897      00000201 
 2897      FB0E0D00 
 2897      01010101 
 2898              	.LASF50:
 2899 0000 5F64736F 		.ascii	"_dso_handle\000"
ARM GAS  /tmp/ccQL0uqT.s 			page 57


 2899      5F68616E 
 2899      646C6500 
 2900              	.LASF52:
 2901 000c 5F69735F 		.ascii	"_is_cxa\000"
 2901      63786100 
 2902              	.LASF3:
 2903 0014 73686F72 		.ascii	"short int\000"
 2903      7420696E 
 2903      7400
 2904              	.LASF49:
 2905 001e 5F666E61 		.ascii	"_fnargs\000"
 2905      72677300 
 2906              	.LASF145:
 2907 0026 7274745F 		.ascii	"rtt_val\000"
 2907      76616C00 
 2908              	.LASF19:
 2909 002e 5254545F 		.ascii	"RTT_AR\000"
 2909      415200
 2910              	.LASF103:
 2911 0035 5F72616E 		.ascii	"_rand48\000"
 2911      64343800 
 2912              	.LASF82:
 2913 003d 5F656D65 		.ascii	"_emergency\000"
 2913      7267656E 
 2913      637900
 2914              	.LASF148:
 2915 0048 7274745F 		.ascii	"rtt_enable_interrupt\000"
 2915      656E6162 
 2915      6C655F69 
 2915      6E746572 
 2915      72757074 
 2916              	.LASF94:
 2917 005d 5F617465 		.ascii	"_atexit0\000"
 2917      78697430 
 2917      00
 2918              	.LASF123:
 2919 0066 5F776372 		.ascii	"_wcrtomb_state\000"
 2919      746F6D62 
 2919      5F737461 
 2919      746500
 2920              	.LASF124:
 2921 0075 5F776373 		.ascii	"_wcsrtombs_state\000"
 2921      72746F6D 
 2921      62735F73 
 2921      74617465 
 2921      00
 2922              	.LASF135:
 2923 0086 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 2923      6972715F 
 2923      70726576 
 2923      5F696E74 
 2923      65727275 
 2924              	.LASF62:
 2925 00a3 5F6C6266 		.ascii	"_lbfsize\000"
 2925      73697A65 
 2925      00
 2926              	.LASF157:
ARM GAS  /tmp/ccQL0uqT.s 			page 58


 2927 00ac 2E2E2F61 		.ascii	"../asf/sam/drivers/rtt/rtt.c\000"
 2927      73662F73 
 2927      616D2F64 
 2927      72697665 
 2927      72732F72 
 2928              	.LASF16:
 2929 00c9 49544D5F 		.ascii	"ITM_RxBuffer\000"
 2929      52784275 
 2929      66666572 
 2929      00
 2930              	.LASF121:
 2931 00d6 5F6D6272 		.ascii	"_mbrtowc_state\000"
 2931      746F7763 
 2931      5F737461 
 2931      746500
 2932              	.LASF116:
 2933 00e5 5F776374 		.ascii	"_wctomb_state\000"
 2933      6F6D625F 
 2933      73746174 
 2933      6500
 2934              	.LASF39:
 2935 00f3 5F5F746D 		.ascii	"__tm_sec\000"
 2935      5F736563 
 2935      00
 2936              	.LASF23:
 2937 00fc 5F6F6666 		.ascii	"_off_t\000"
 2937      5F7400
 2938              	.LASF67:
 2939 0103 5F636C6F 		.ascii	"_close\000"
 2939      736500
 2940              	.LASF1:
 2941 010a 7369676E 		.ascii	"signed char\000"
 2941      65642063 
 2941      68617200 
 2942              	.LASF68:
 2943 0116 5F756275 		.ascii	"_ubuf\000"
 2943      6600
 2944              	.LASF11:
 2945 011c 6C6F6E67 		.ascii	"long long unsigned int\000"
 2945      206C6F6E 
 2945      6720756E 
 2945      7369676E 
 2945      65642069 
 2946              	.LASF41:
 2947 0133 5F5F746D 		.ascii	"__tm_hour\000"
 2947      5F686F75 
 2947      7200
 2948              	.LASF97:
 2949 013d 5F5F7366 		.ascii	"__sf\000"
 2949      00
 2950              	.LASF48:
 2951 0142 5F6F6E5F 		.ascii	"_on_exit_args\000"
 2951      65786974 
 2951      5F617267 
 2951      7300
 2952              	.LASF63:
 2953 0150 5F636F6F 		.ascii	"_cookie\000"
ARM GAS  /tmp/ccQL0uqT.s 			page 59


 2953      6B696500 
 2954              	.LASF96:
 2955 0158 5F5F7367 		.ascii	"__sglue\000"
 2955      6C756500 
 2956              	.LASF7:
 2957 0160 6C6F6E67 		.ascii	"long int\000"
 2957      20696E74 
 2957      00
 2958              	.LASF60:
 2959 0169 5F666C61 		.ascii	"_flags\000"
 2959      677300
 2960              	.LASF151:
 2961 0170 7274745F 		.ascii	"rtt_enable\000"
 2961      656E6162 
 2961      6C6500
 2962              	.LASF78:
 2963 017b 5F737464 		.ascii	"_stdin\000"
 2963      696E00
 2964              	.LASF88:
 2965 0182 5F726573 		.ascii	"_result_k\000"
 2965      756C745F 
 2965      6B00
 2966              	.LASF10:
 2967 018c 6C6F6E67 		.ascii	"long long int\000"
 2967      206C6F6E 
 2967      6720696E 
 2967      7400
 2968              	.LASF12:
 2969 019a 75696E74 		.ascii	"uint16_t\000"
 2969      31365F74 
 2969      00
 2970              	.LASF137:
 2971 01a3 646F7562 		.ascii	"double\000"
 2971      6C6500
 2972              	.LASF144:
 2973 01aa 7274745F 		.ascii	"rtt_read_timer_value\000"
 2973      72656164 
 2973      5F74696D 
 2973      65725F76 
 2973      616C7565 
 2974              	.LASF92:
 2975 01bf 5F637674 		.ascii	"_cvtbuf\000"
 2975      62756600 
 2976              	.LASF71:
 2977 01c7 5F6F6666 		.ascii	"_offset\000"
 2977      73657400 
 2978              	.LASF122:
 2979 01cf 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 2979      72746F77 
 2979      63735F73 
 2979      74617465 
 2979      00
 2980              	.LASF120:
 2981 01e0 5F6D6272 		.ascii	"_mbrlen_state\000"
 2981      6C656E5F 
 2981      73746174 
 2981      6500
ARM GAS  /tmp/ccQL0uqT.s 			page 60


 2982              	.LASF139:
 2983 01ee 705F7274 		.ascii	"p_rtt\000"
 2983      7400
 2984              	.LASF55:
 2985 01f4 5F666E73 		.ascii	"_fns\000"
 2985      00
 2986              	.LASF8:
 2987 01f9 5F5F7569 		.ascii	"__uint32_t\000"
 2987      6E743332 
 2987      5F7400
 2988              	.LASF35:
 2989 0204 5F736967 		.ascii	"_sign\000"
 2989      6E00
 2990              	.LASF119:
 2991 020a 5F676574 		.ascii	"_getdate_err\000"
 2991      64617465 
 2991      5F657272 
 2991      00
 2992              	.LASF129:
 2993 0217 5F696D70 		.ascii	"_impure_ptr\000"
 2993      7572655F 
 2993      70747200 
 2994              	.LASF80:
 2995 0223 5F737464 		.ascii	"_stderr\000"
 2995      65727200 
 2996              	.LASF37:
 2997 022b 5F426967 		.ascii	"_Bigint\000"
 2997      696E7400 
 2998              	.LASF64:
 2999 0233 5F726561 		.ascii	"_read\000"
 2999      6400
 3000              	.LASF149:
 3001 0239 74656D70 		.ascii	"temp\000"
 3001      00
 3002              	.LASF147:
 3003 023e 7274745F 		.ascii	"rtt_disable_interrupt\000"
 3003      64697361 
 3003      626C655F 
 3003      696E7465 
 3003      72727570 
 3004              	.LASF38:
 3005 0254 5F5F746D 		.ascii	"__tm\000"
 3005      00
 3006              	.LASF150:
 3007 0259 7274745F 		.ascii	"rtt_disable\000"
 3007      64697361 
 3007      626C6500 
 3008              	.LASF27:
 3009 0265 5F5F7763 		.ascii	"__wchb\000"
 3009      686200
 3010              	.LASF17:
 3011 026c 53797374 		.ascii	"SystemCoreClock\000"
 3011      656D436F 
 3011      7265436C 
 3011      6F636B00 
 3012              	.LASF79:
 3013 027c 5F737464 		.ascii	"_stdout\000"
ARM GAS  /tmp/ccQL0uqT.s 			page 61


 3013      6F757400 
 3014              	.LASF91:
 3015 0284 5F637674 		.ascii	"_cvtlen\000"
 3015      6C656E00 
 3016              	.LASF9:
 3017 028c 6C6F6E67 		.ascii	"long unsigned int\000"
 3017      20756E73 
 3017      69676E65 
 3017      6420696E 
 3017      7400
 3018              	.LASF61:
 3019 029e 5F66696C 		.ascii	"_file\000"
 3019      6500
 3020              	.LASF81:
 3021 02a4 5F696E63 		.ascii	"_inc\000"
 3021      00
 3022              	.LASF72:
 3023 02a9 5F646174 		.ascii	"_data\000"
 3023      6100
 3024              	.LASF101:
 3025 02af 5F6E696F 		.ascii	"_niobs\000"
 3025      627300
 3026              	.LASF112:
 3027 02b6 5F72616E 		.ascii	"_rand_next\000"
 3027      645F6E65 
 3027      787400
 3028              	.LASF21:
 3029 02c1 5254545F 		.ascii	"RTT_SR\000"
 3029      535200
 3030              	.LASF118:
 3031 02c8 5F736967 		.ascii	"_signal_buf\000"
 3031      6E616C5F 
 3031      62756600 
 3032              	.LASF109:
 3033 02d4 5F617363 		.ascii	"_asctime_buf\000"
 3033      74696D65 
 3033      5F627566 
 3033      00
 3034              	.LASF87:
 3035 02e1 5F726573 		.ascii	"_result\000"
 3035      756C7400 
 3036              	.LASF26:
 3037 02e9 5F5F7763 		.ascii	"__wch\000"
 3037      6800
 3038              	.LASF126:
 3039 02ef 5F6E6578 		.ascii	"_nextf\000"
 3039      746600
 3040              	.LASF93:
 3041 02f6 5F6E6577 		.ascii	"_new\000"
 3041      00
 3042              	.LASF73:
 3043 02fb 5F6C6F63 		.ascii	"_lock\000"
 3043      6B00
 3044              	.LASF105:
 3045 0301 5F6D756C 		.ascii	"_mult\000"
 3045      7400
 3046              	.LASF152:
ARM GAS  /tmp/ccQL0uqT.s 			page 62


 3047 0307 7274745F 		.ascii	"rtt_sel_source\000"
 3047      73656C5F 
 3047      736F7572 
 3047      636500
 3048              	.LASF65:
 3049 0316 5F777269 		.ascii	"_write\000"
 3049      746500
 3050              	.LASF44:
 3051 031d 5F5F746D 		.ascii	"__tm_year\000"
 3051      5F796561 
 3051      7200
 3052              	.LASF155:
 3053 0327 75735F70 		.ascii	"us_prescaler\000"
 3053      72657363 
 3053      616C6572 
 3053      00
 3054              	.LASF15:
 3055 0334 73697A65 		.ascii	"sizetype\000"
 3055      74797065 
 3055      00
 3056              	.LASF153:
 3057 033d 69735F72 		.ascii	"is_rtc_sel\000"
 3057      74635F73 
 3057      656C00
 3058              	.LASF156:
 3059 0348 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 3059      43393920 
 3059      362E332E 
 3059      31203230 
 3059      31373036 
 3060 037b 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 3060      76352D64 
 3060      3136202D 
 3060      6D666C6F 
 3060      61742D61 
 3061 03ae 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 3061      6E2D7365 
 3061      6374696F 
 3061      6E73202D 
 3061      66646174 
 3062 03e1 6F6E7374 		.ascii	"onstant\000"
 3062      616E7400 
 3063              	.LASF43:
 3064 03e9 5F5F746D 		.ascii	"__tm_mon\000"
 3064      5F6D6F6E 
 3064      00
 3065              	.LASF53:
 3066 03f2 5F617465 		.ascii	"_atexit\000"
 3066      78697400 
 3067              	.LASF131:
 3068 03fa 7375626F 		.ascii	"suboptarg\000"
 3068      70746172 
 3068      6700
 3069              	.LASF85:
 3070 0404 5F5F7364 		.ascii	"__sdidinit\000"
 3070      6964696E 
 3070      697400
ARM GAS  /tmp/ccQL0uqT.s 			page 63


 3071              	.LASF111:
 3072 040f 5F67616D 		.ascii	"_gamma_signgam\000"
 3072      6D615F73 
 3072      69676E67 
 3072      616D00
 3073              	.LASF25:
 3074 041e 77696E74 		.ascii	"wint_t\000"
 3074      5F7400
 3075              	.LASF136:
 3076 0425 666C6F61 		.ascii	"float\000"
 3076      7400
 3077              	.LASF132:
 3078 042b 675F696E 		.ascii	"g_interrupt_enabled\000"
 3078      74657272 
 3078      7570745F 
 3078      656E6162 
 3078      6C656400 
 3079              	.LASF18:
 3080 043f 5254545F 		.ascii	"RTT_MR\000"
 3080      4D5200
 3081              	.LASF22:
 3082 0446 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 3082      4B5F5245 
 3082      43555253 
 3082      4956455F 
 3082      5400
 3083              	.LASF57:
 3084 0458 5F626173 		.ascii	"_base\000"
 3084      6500
 3085              	.LASF133:
 3086 045e 5F426F6F 		.ascii	"_Bool\000"
 3086      6C00
 3087              	.LASF13:
 3088 0464 696E7433 		.ascii	"int32_t\000"
 3088      325F7400 
 3089              	.LASF2:
 3090 046c 756E7369 		.ascii	"unsigned char\000"
 3090      676E6564 
 3090      20636861 
 3090      7200
 3091              	.LASF102:
 3092 047a 5F696F62 		.ascii	"_iobs\000"
 3092      7300
 3093              	.LASF125:
 3094 0480 5F685F65 		.ascii	"_h_errno\000"
 3094      72726E6F 
 3094      00
 3095              	.LASF31:
 3096 0489 5F666C6F 		.ascii	"_flock_t\000"
 3096      636B5F74 
 3096      00
 3097              	.LASF46:
 3098 0492 5F5F746D 		.ascii	"__tm_yday\000"
 3098      5F796461 
 3098      7900
 3099              	.LASF56:
 3100 049c 5F5F7362 		.ascii	"__sbuf\000"
ARM GAS  /tmp/ccQL0uqT.s 			page 64


 3100      756600
 3101              	.LASF75:
 3102 04a3 5F666C61 		.ascii	"_flags2\000"
 3102      67733200 
 3103              	.LASF90:
 3104 04ab 5F667265 		.ascii	"_freelist\000"
 3104      656C6973 
 3104      7400
 3105              	.LASF99:
 3106 04b5 5F5F4649 		.ascii	"__FILE\000"
 3106      4C4500
 3107              	.LASF30:
 3108 04bc 5F6D6273 		.ascii	"_mbstate_t\000"
 3108      74617465 
 3108      5F7400
 3109              	.LASF59:
 3110 04c7 5F5F7346 		.ascii	"__sFILE\000"
 3110      494C4500 
 3111              	.LASF74:
 3112 04cf 5F6D6273 		.ascii	"_mbstate\000"
 3112      74617465 
 3112      00
 3113              	.LASF114:
 3114 04d8 5F6D626C 		.ascii	"_mblen_state\000"
 3114      656E5F73 
 3114      74617465 
 3114      00
 3115              	.LASF54:
 3116 04e5 5F696E64 		.ascii	"_ind\000"
 3116      00
 3117              	.LASF84:
 3118 04ea 5F637572 		.ascii	"_current_locale\000"
 3118      72656E74 
 3118      5F6C6F63 
 3118      616C6500 
 3119              	.LASF86:
 3120 04fa 5F5F636C 		.ascii	"__cleanup\000"
 3120      65616E75 
 3120      7000
 3121              	.LASF34:
 3122 0504 5F6D6178 		.ascii	"_maxwds\000"
 3122      77647300 
 3123              	.LASF76:
 3124 050c 5F726565 		.ascii	"_reent\000"
 3124      6E7400
 3125              	.LASF104:
 3126 0513 5F736565 		.ascii	"_seed\000"
 3126      6400
 3127              	.LASF28:
 3128 0519 5F5F636F 		.ascii	"__count\000"
 3128      756E7400 
 3129              	.LASF29:
 3130 0521 5F5F7661 		.ascii	"__value\000"
 3130      6C756500 
 3131              	.LASF66:
 3132 0529 5F736565 		.ascii	"_seek\000"
 3132      6B00
ARM GAS  /tmp/ccQL0uqT.s 			page 65


 3133              	.LASF141:
 3134 052f 666C6167 		.ascii	"flag\000"
 3134      00
 3135              	.LASF45:
 3136 0534 5F5F746D 		.ascii	"__tm_wday\000"
 3136      5F776461 
 3136      7900
 3137              	.LASF24:
 3138 053e 5F66706F 		.ascii	"_fpos_t\000"
 3138      735F7400 
 3139              	.LASF77:
 3140 0546 5F657272 		.ascii	"_errno\000"
 3140      6E6F00
 3141              	.LASF98:
 3142 054d 63686172 		.ascii	"char\000"
 3142      00
 3143              	.LASF70:
 3144 0552 5F626C6B 		.ascii	"_blksize\000"
 3144      73697A65 
 3144      00
 3145              	.LASF58:
 3146 055b 5F73697A 		.ascii	"_size\000"
 3146      6500
 3147              	.LASF0:
 3148 0561 756E7369 		.ascii	"unsigned int\000"
 3148      676E6564 
 3148      20696E74 
 3148      00
 3149              	.LASF5:
 3150 056e 5F5F7569 		.ascii	"__uint16_t\000"
 3150      6E743136 
 3150      5F7400
 3151              	.LASF6:
 3152 0579 5F5F696E 		.ascii	"__int32_t\000"
 3152      7433325F 
 3152      7400
 3153              	.LASF33:
 3154 0583 5F6E6578 		.ascii	"_next\000"
 3154      7400
 3155              	.LASF108:
 3156 0589 5F737472 		.ascii	"_strtok_last\000"
 3156      746F6B5F 
 3156      6C617374 
 3156      00
 3157              	.LASF51:
 3158 0596 5F666E74 		.ascii	"_fntypes\000"
 3158      79706573 
 3158      00
 3159              	.LASF20:
 3160 059f 5254545F 		.ascii	"RTT_VR\000"
 3160      565200
 3161              	.LASF4:
 3162 05a6 73686F72 		.ascii	"short unsigned int\000"
 3162      7420756E 
 3162      7369676E 
 3162      65642069 
 3162      6E7400
ARM GAS  /tmp/ccQL0uqT.s 			page 66


 3163              	.LASF158:
 3164 05b9 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 3164      652F746F 
 3164      72626A6F 
 3164      726E2F65 
 3164      636C6970 
 3165              	.LASF32:
 3166 05e8 5F5F554C 		.ascii	"__ULong\000"
 3166      6F6E6700 
 3167              	.LASF106:
 3168 05f0 5F616464 		.ascii	"_add\000"
 3168      00
 3169              	.LASF130:
 3170 05f5 5F676C6F 		.ascii	"_global_impure_ptr\000"
 3170      62616C5F 
 3170      696D7075 
 3170      72655F70 
 3170      747200
 3171              	.LASF83:
 3172 0608 5F637572 		.ascii	"_current_category\000"
 3172      72656E74 
 3172      5F636174 
 3172      65676F72 
 3172      7900
 3173              	.LASF14:
 3174 061a 75696E74 		.ascii	"uint32_t\000"
 3174      33325F74 
 3174      00
 3175              	.LASF107:
 3176 0623 5F756E75 		.ascii	"_unused_rand\000"
 3176      7365645F 
 3176      72616E64 
 3176      00
 3177              	.LASF36:
 3178 0630 5F776473 		.ascii	"_wds\000"
 3178      00
 3179              	.LASF100:
 3180 0635 5F676C75 		.ascii	"_glue\000"
 3180      6500
 3181              	.LASF140:
 3182 063b 756C5F61 		.ascii	"ul_alarm_time\000"
 3182      6C61726D 
 3182      5F74696D 
 3182      6500
 3183              	.LASF127:
 3184 0649 5F6E6D61 		.ascii	"_nmalloc\000"
 3184      6C6C6F63 
 3184      00
 3185              	.LASF117:
 3186 0652 5F6C3634 		.ascii	"_l64a_buf\000"
 3186      615F6275 
 3186      6600
 3187              	.LASF95:
 3188 065c 5F736967 		.ascii	"_sig_func\000"
 3188      5F66756E 
 3188      6300
 3189              	.LASF134:
ARM GAS  /tmp/ccQL0uqT.s 			page 67


 3190 0666 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 3190      6972715F 
 3190      63726974 
 3190      6963616C 
 3190      5F736563 
 3191              	.LASF69:
 3192 0687 5F6E6275 		.ascii	"_nbuf\000"
 3192      6600
 3193              	.LASF128:
 3194 068d 5F756E75 		.ascii	"_unused\000"
 3194      73656400 
 3195              	.LASF47:
 3196 0695 5F5F746D 		.ascii	"__tm_isdst\000"
 3196      5F697364 
 3196      737400
 3197              	.LASF110:
 3198 06a0 5F6C6F63 		.ascii	"_localtime_buf\000"
 3198      616C7469 
 3198      6D655F62 
 3198      756600
 3199              	.LASF40:
 3200 06af 5F5F746D 		.ascii	"__tm_min\000"
 3200      5F6D696E 
 3200      00
 3201              	.LASF113:
 3202 06b8 5F723438 		.ascii	"_r48\000"
 3202      00
 3203              	.LASF138:
 3204 06bd 675F776F 		.ascii	"g_wobits_in_rtt_mr\000"
 3204      62697473 
 3204      5F696E5F 
 3204      7274745F 
 3204      6D7200
 3205              	.LASF146:
 3206 06d0 756C5F73 		.ascii	"ul_sources\000"
 3206      6F757263 
 3206      657300
 3207              	.LASF115:
 3208 06db 5F6D6274 		.ascii	"_mbtowc_state\000"
 3208      6F77635F 
 3208      73746174 
 3208      6500
 3209              	.LASF89:
 3210 06e9 5F703573 		.ascii	"_p5s\000"
 3210      00
 3211              	.LASF154:
 3212 06ee 7274745F 		.ascii	"rtt_init\000"
 3212      696E6974 
 3212      00
 3213              	.LASF142:
 3214 06f7 7274745F 		.ascii	"rtt_write_alarm_time\000"
 3214      77726974 
 3214      655F616C 
 3214      61726D5F 
 3214      74696D65 
 3215              	.LASF143:
 3216 070c 7274745F 		.ascii	"rtt_get_status\000"
ARM GAS  /tmp/ccQL0uqT.s 			page 68


 3216      6765745F 
 3216      73746174 
 3216      757300
 3217              	.LASF42:
 3218 071b 5F5F746D 		.ascii	"__tm_mday\000"
 3218      5F6D6461 
 3218      7900
 3219              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
