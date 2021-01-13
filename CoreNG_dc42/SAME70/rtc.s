ARM GAS  /tmp/ccmZuGH1.s 			page 1


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
  12              		.file	"rtc.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.rtc_set_hour_mode,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	rtc_set_hour_mode
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	rtc_set_hour_mode, %function
  25              	rtc_set_hour_mode:
  26              	.LFB142:
  27              		.file 1 "../asf/sam/drivers/rtc/rtc.c"
   1:../asf/sam/drivers/rtc/rtc.c **** /**
   2:../asf/sam/drivers/rtc/rtc.c ****  * \file
   3:../asf/sam/drivers/rtc/rtc.c ****  *
   4:../asf/sam/drivers/rtc/rtc.c ****  * \brief Real-Time Clock (RTC) driver for SAM.
   5:../asf/sam/drivers/rtc/rtc.c ****  *
   6:../asf/sam/drivers/rtc/rtc.c ****  * Copyright (c) 2011-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/rtc/rtc.c ****  *
   8:../asf/sam/drivers/rtc/rtc.c ****  * \asf_license_start
   9:../asf/sam/drivers/rtc/rtc.c ****  *
  10:../asf/sam/drivers/rtc/rtc.c ****  * \page License
  11:../asf/sam/drivers/rtc/rtc.c ****  *
  12:../asf/sam/drivers/rtc/rtc.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/rtc/rtc.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/rtc/rtc.c ****  *
  15:../asf/sam/drivers/rtc/rtc.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/rtc/rtc.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/rtc/rtc.c ****  *
  18:../asf/sam/drivers/rtc/rtc.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/rtc/rtc.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/rtc/rtc.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/rtc/rtc.c ****  *
  22:../asf/sam/drivers/rtc/rtc.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/rtc/rtc.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/rtc/rtc.c ****  *
  25:../asf/sam/drivers/rtc/rtc.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/rtc/rtc.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/rtc/rtc.c ****  *
  28:../asf/sam/drivers/rtc/rtc.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/rtc/rtc.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/rtc/rtc.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccmZuGH1.s 			page 2


  31:../asf/sam/drivers/rtc/rtc.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/rtc/rtc.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/rtc/rtc.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/rtc/rtc.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/rtc/rtc.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/rtc/rtc.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/rtc/rtc.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/rtc/rtc.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/rtc/rtc.c ****  *
  40:../asf/sam/drivers/rtc/rtc.c ****  * \asf_license_stop
  41:../asf/sam/drivers/rtc/rtc.c ****  *
  42:../asf/sam/drivers/rtc/rtc.c ****  */
  43:../asf/sam/drivers/rtc/rtc.c **** /*
  44:../asf/sam/drivers/rtc/rtc.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/rtc/rtc.c ****  */
  46:../asf/sam/drivers/rtc/rtc.c **** 
  47:../asf/sam/drivers/rtc/rtc.c **** #include "rtc.h"
  48:../asf/sam/drivers/rtc/rtc.c **** 
  49:../asf/sam/drivers/rtc/rtc.c **** /// @cond 0
  50:../asf/sam/drivers/rtc/rtc.c **** /**INDENT-OFF**/
  51:../asf/sam/drivers/rtc/rtc.c **** #ifdef __cplusplus
  52:../asf/sam/drivers/rtc/rtc.c **** extern "C" {
  53:../asf/sam/drivers/rtc/rtc.c **** #endif
  54:../asf/sam/drivers/rtc/rtc.c **** /**INDENT-ON**/
  55:../asf/sam/drivers/rtc/rtc.c **** /// @endcond
  56:../asf/sam/drivers/rtc/rtc.c **** 
  57:../asf/sam/drivers/rtc/rtc.c **** /**
  58:../asf/sam/drivers/rtc/rtc.c ****  * \defgroup sam_drivers_rtc_group Real-Time Clock (RTC)
  59:../asf/sam/drivers/rtc/rtc.c ****  *
  60:../asf/sam/drivers/rtc/rtc.c ****  * See \ref sam_rtc_quickstart.
  61:../asf/sam/drivers/rtc/rtc.c ****  *
  62:../asf/sam/drivers/rtc/rtc.c ****  * The RTC provides a full binary-coded decimal (BCD) clock that includes
  63:../asf/sam/drivers/rtc/rtc.c ****  * century (19/20), year (with leap years), month, date, day, hour, minute
  64:../asf/sam/drivers/rtc/rtc.c ****  * and second.
  65:../asf/sam/drivers/rtc/rtc.c ****  *
  66:../asf/sam/drivers/rtc/rtc.c ****  * @{
  67:../asf/sam/drivers/rtc/rtc.c ****  */
  68:../asf/sam/drivers/rtc/rtc.c **** 
  69:../asf/sam/drivers/rtc/rtc.c **** /* RTC Write Protect Key "RTC" in ASCII */
  70:../asf/sam/drivers/rtc/rtc.c **** #define RTC_WP_KEY     (0x525443)
  71:../asf/sam/drivers/rtc/rtc.c **** 
  72:../asf/sam/drivers/rtc/rtc.c **** /* The BCD code shift value */
  73:../asf/sam/drivers/rtc/rtc.c **** #define BCD_SHIFT      4
  74:../asf/sam/drivers/rtc/rtc.c **** 
  75:../asf/sam/drivers/rtc/rtc.c **** /* The BCD code mask value */
  76:../asf/sam/drivers/rtc/rtc.c **** #define BCD_MASK       0xfu
  77:../asf/sam/drivers/rtc/rtc.c **** 
  78:../asf/sam/drivers/rtc/rtc.c **** /* The BCD mul/div factor value */
  79:../asf/sam/drivers/rtc/rtc.c **** #define BCD_FACTOR     10
  80:../asf/sam/drivers/rtc/rtc.c **** 
  81:../asf/sam/drivers/rtc/rtc.c **** /**
  82:../asf/sam/drivers/rtc/rtc.c ****  * \brief Set the RTC hour mode.
  83:../asf/sam/drivers/rtc/rtc.c ****  *
  84:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
  85:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_mode 1 for 12-hour mode, 0 for 24-hour mode.
  86:../asf/sam/drivers/rtc/rtc.c ****  */
  87:../asf/sam/drivers/rtc/rtc.c **** void rtc_set_hour_mode(Rtc *p_rtc, uint32_t ul_mode)
ARM GAS  /tmp/ccmZuGH1.s 			page 3


  88:../asf/sam/drivers/rtc/rtc.c **** {
  28              		.loc 1 88 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
  89:../asf/sam/drivers/rtc/rtc.c **** 	if (ul_mode) {
  90:../asf/sam/drivers/rtc/rtc.c **** 		p_rtc->RTC_MR |= RTC_MR_HRMOD;
  34              		.loc 1 90 0
  35 0000 4368     		ldr	r3, [r0, #4]
  89:../asf/sam/drivers/rtc/rtc.c **** 	if (ul_mode) {
  36              		.loc 1 89 0
  37 0002 19B9     		cbnz	r1, .L5
  91:../asf/sam/drivers/rtc/rtc.c **** 	} else {
  92:../asf/sam/drivers/rtc/rtc.c **** 		p_rtc->RTC_MR &= (~RTC_MR_HRMOD);
  38              		.loc 1 92 0
  39 0004 23F00103 		bic	r3, r3, #1
  40 0008 4360     		str	r3, [r0, #4]
  41 000a 7047     		bx	lr
  42              	.L5:
  90:../asf/sam/drivers/rtc/rtc.c **** 	} else {
  43              		.loc 1 90 0
  44 000c 43F00103 		orr	r3, r3, #1
  45 0010 4360     		str	r3, [r0, #4]
  46 0012 7047     		bx	lr
  47              		.cfi_endproc
  48              	.LFE142:
  49              		.size	rtc_set_hour_mode, .-rtc_set_hour_mode
  50              		.section	.text.rtc_get_hour_mode,"ax",%progbits
  51              		.align	1
  52              		.p2align 2,,3
  53              		.global	rtc_get_hour_mode
  54              		.syntax unified
  55              		.thumb
  56              		.thumb_func
  57              		.fpu fpv5-d16
  58              		.type	rtc_get_hour_mode, %function
  59              	rtc_get_hour_mode:
  60              	.LFB143:
  93:../asf/sam/drivers/rtc/rtc.c **** 	}
  94:../asf/sam/drivers/rtc/rtc.c **** }
  95:../asf/sam/drivers/rtc/rtc.c **** 
  96:../asf/sam/drivers/rtc/rtc.c **** /**
  97:../asf/sam/drivers/rtc/rtc.c ****  * \brief Get the RTC hour mode.
  98:../asf/sam/drivers/rtc/rtc.c ****  *
  99:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 100:../asf/sam/drivers/rtc/rtc.c ****  *
 101:../asf/sam/drivers/rtc/rtc.c ****  * \return 1 for 12-hour mode, 0 for 24-hour mode.
 102:../asf/sam/drivers/rtc/rtc.c ****  */
 103:../asf/sam/drivers/rtc/rtc.c **** uint32_t rtc_get_hour_mode(Rtc *p_rtc)
 104:../asf/sam/drivers/rtc/rtc.c **** {
  61              		.loc 1 104 0
  62              		.cfi_startproc
  63              		@ args = 0, pretend = 0, frame = 0
  64              		@ frame_needed = 0, uses_anonymous_args = 0
  65              		@ link register save eliminated.
ARM GAS  /tmp/ccmZuGH1.s 			page 4


  66              	.LVL1:
 105:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_temp = p_rtc->RTC_MR;
  67              		.loc 1 105 0
  68 0000 4068     		ldr	r0, [r0, #4]
  69              	.LVL2:
 106:../asf/sam/drivers/rtc/rtc.c **** 
 107:../asf/sam/drivers/rtc/rtc.c **** 	if (ul_temp & RTC_MR_HRMOD) {
 108:../asf/sam/drivers/rtc/rtc.c **** 		return 1;
 109:../asf/sam/drivers/rtc/rtc.c **** 	} else {
 110:../asf/sam/drivers/rtc/rtc.c **** 		return 0;
 111:../asf/sam/drivers/rtc/rtc.c **** 	}
 112:../asf/sam/drivers/rtc/rtc.c **** }
  70              		.loc 1 112 0
  71 0002 00F00100 		and	r0, r0, #1
  72              	.LVL3:
  73 0006 7047     		bx	lr
  74              		.cfi_endproc
  75              	.LFE143:
  76              		.size	rtc_get_hour_mode, .-rtc_get_hour_mode
  77              		.section	.text.rtc_enable_interrupt,"ax",%progbits
  78              		.align	1
  79              		.p2align 2,,3
  80              		.global	rtc_enable_interrupt
  81              		.syntax unified
  82              		.thumb
  83              		.thumb_func
  84              		.fpu fpv5-d16
  85              		.type	rtc_enable_interrupt, %function
  86              	rtc_enable_interrupt:
  87              	.LFB144:
 113:../asf/sam/drivers/rtc/rtc.c **** 
 114:../asf/sam/drivers/rtc/rtc.c **** /**
 115:../asf/sam/drivers/rtc/rtc.c ****  * \brief Enable RTC interrupts.
 116:../asf/sam/drivers/rtc/rtc.c ****  *
 117:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 118:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_sources Interrupts to be enabled.
 119:../asf/sam/drivers/rtc/rtc.c ****  */
 120:../asf/sam/drivers/rtc/rtc.c **** void rtc_enable_interrupt(Rtc *p_rtc, uint32_t ul_sources)
 121:../asf/sam/drivers/rtc/rtc.c **** {
  88              		.loc 1 121 0
  89              		.cfi_startproc
  90              		@ args = 0, pretend = 0, frame = 0
  91              		@ frame_needed = 0, uses_anonymous_args = 0
  92              		@ link register save eliminated.
  93              	.LVL4:
 122:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_IER = ul_sources;
  94              		.loc 1 122 0
  95 0000 0162     		str	r1, [r0, #32]
  96 0002 7047     		bx	lr
  97              		.cfi_endproc
  98              	.LFE144:
  99              		.size	rtc_enable_interrupt, .-rtc_enable_interrupt
 100              		.section	.text.rtc_disable_interrupt,"ax",%progbits
 101              		.align	1
 102              		.p2align 2,,3
 103              		.global	rtc_disable_interrupt
 104              		.syntax unified
ARM GAS  /tmp/ccmZuGH1.s 			page 5


 105              		.thumb
 106              		.thumb_func
 107              		.fpu fpv5-d16
 108              		.type	rtc_disable_interrupt, %function
 109              	rtc_disable_interrupt:
 110              	.LFB145:
 123:../asf/sam/drivers/rtc/rtc.c **** }
 124:../asf/sam/drivers/rtc/rtc.c **** 
 125:../asf/sam/drivers/rtc/rtc.c **** /**
 126:../asf/sam/drivers/rtc/rtc.c ****  * \brief Disable RTC interrupts.
 127:../asf/sam/drivers/rtc/rtc.c ****  *
 128:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 129:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_sources Interrupts to be disabled.
 130:../asf/sam/drivers/rtc/rtc.c ****  */
 131:../asf/sam/drivers/rtc/rtc.c **** void rtc_disable_interrupt(Rtc *p_rtc, uint32_t ul_sources)
 132:../asf/sam/drivers/rtc/rtc.c **** {
 111              		.loc 1 132 0
 112              		.cfi_startproc
 113              		@ args = 0, pretend = 0, frame = 0
 114              		@ frame_needed = 0, uses_anonymous_args = 0
 115              		@ link register save eliminated.
 116              	.LVL5:
 133:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_IDR = ul_sources;
 117              		.loc 1 133 0
 118 0000 4162     		str	r1, [r0, #36]
 119 0002 7047     		bx	lr
 120              		.cfi_endproc
 121              	.LFE145:
 122              		.size	rtc_disable_interrupt, .-rtc_disable_interrupt
 123              		.section	.text.rtc_get_interrupt_mask,"ax",%progbits
 124              		.align	1
 125              		.p2align 2,,3
 126              		.global	rtc_get_interrupt_mask
 127              		.syntax unified
 128              		.thumb
 129              		.thumb_func
 130              		.fpu fpv5-d16
 131              		.type	rtc_get_interrupt_mask, %function
 132              	rtc_get_interrupt_mask:
 133              	.LFB146:
 134:../asf/sam/drivers/rtc/rtc.c **** }
 135:../asf/sam/drivers/rtc/rtc.c **** 
 136:../asf/sam/drivers/rtc/rtc.c **** /**
 137:../asf/sam/drivers/rtc/rtc.c ****  * \brief Read RTC interrupt mask.
 138:../asf/sam/drivers/rtc/rtc.c ****  *
 139:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 140:../asf/sam/drivers/rtc/rtc.c ****  *
 141:../asf/sam/drivers/rtc/rtc.c ****  * \return The interrupt mask value.
 142:../asf/sam/drivers/rtc/rtc.c ****  */
 143:../asf/sam/drivers/rtc/rtc.c **** uint32_t rtc_get_interrupt_mask(Rtc *p_rtc)
 144:../asf/sam/drivers/rtc/rtc.c **** {
 134              		.loc 1 144 0
 135              		.cfi_startproc
 136              		@ args = 0, pretend = 0, frame = 0
 137              		@ frame_needed = 0, uses_anonymous_args = 0
 138              		@ link register save eliminated.
 139              	.LVL6:
ARM GAS  /tmp/ccmZuGH1.s 			page 6


 145:../asf/sam/drivers/rtc/rtc.c **** 	return p_rtc->RTC_IMR;
 140              		.loc 1 145 0
 141 0000 806A     		ldr	r0, [r0, #40]
 142              	.LVL7:
 146:../asf/sam/drivers/rtc/rtc.c **** }
 143              		.loc 1 146 0
 144 0002 7047     		bx	lr
 145              		.cfi_endproc
 146              	.LFE146:
 147              		.size	rtc_get_interrupt_mask, .-rtc_get_interrupt_mask
 148              		.section	.text.rtc_get_time,"ax",%progbits
 149              		.align	1
 150              		.p2align 2,,3
 151              		.global	rtc_get_time
 152              		.syntax unified
 153              		.thumb
 154              		.thumb_func
 155              		.fpu fpv5-d16
 156              		.type	rtc_get_time, %function
 157              	rtc_get_time:
 158              	.LFB147:
 147:../asf/sam/drivers/rtc/rtc.c **** 
 148:../asf/sam/drivers/rtc/rtc.c **** /**
 149:../asf/sam/drivers/rtc/rtc.c ****  * \brief Get the RTC time value.
 150:../asf/sam/drivers/rtc/rtc.c ****  *
 151:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 152:../asf/sam/drivers/rtc/rtc.c ****  * \param pul_hour Current hour, 24-hour mode.
 153:../asf/sam/drivers/rtc/rtc.c ****  * \param pul_minute Current minute.
 154:../asf/sam/drivers/rtc/rtc.c ****  * \param pul_second Current second.
 155:../asf/sam/drivers/rtc/rtc.c ****  */
 156:../asf/sam/drivers/rtc/rtc.c **** void rtc_get_time(Rtc *p_rtc, uint32_t *pul_hour, uint32_t *pul_minute,
 157:../asf/sam/drivers/rtc/rtc.c **** 		uint32_t *pul_second)
 158:../asf/sam/drivers/rtc/rtc.c **** {
 159              		.loc 1 158 0
 160              		.cfi_startproc
 161              		@ args = 0, pretend = 0, frame = 0
 162              		@ frame_needed = 0, uses_anonymous_args = 0
 163              		@ link register save eliminated.
 164              	.LVL8:
 165 0000 30B4     		push	{r4, r5}
 166              		.cfi_def_cfa_offset 8
 167              		.cfi_offset 4, -8
 168              		.cfi_offset 5, -4
 159:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_time;
 160:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_temp;
 161:../asf/sam/drivers/rtc/rtc.c **** 
 162:../asf/sam/drivers/rtc/rtc.c **** 	/* Get the current RTC time (multiple reads are necessary to insure a stable value). */
 163:../asf/sam/drivers/rtc/rtc.c **** 	ul_time = p_rtc->RTC_TIMR;
 169              		.loc 1 163 0
 170 0002 8568     		ldr	r5, [r0, #8]
 171              	.LVL9:
 164:../asf/sam/drivers/rtc/rtc.c **** 	while (ul_time != p_rtc->RTC_TIMR) {
 172              		.loc 1 164 0
 173 0004 8468     		ldr	r4, [r0, #8]
 174 0006 A542     		cmp	r5, r4
 175 0008 03D0     		beq	.L11
 176              	.L23:
ARM GAS  /tmp/ccmZuGH1.s 			page 7


 165:../asf/sam/drivers/rtc/rtc.c **** 		ul_time = p_rtc->RTC_TIMR;
 177              		.loc 1 165 0
 178 000a 8568     		ldr	r5, [r0, #8]
 179              	.LVL10:
 164:../asf/sam/drivers/rtc/rtc.c **** 	while (ul_time != p_rtc->RTC_TIMR) {
 180              		.loc 1 164 0
 181 000c 8468     		ldr	r4, [r0, #8]
 182 000e AC42     		cmp	r4, r5
 183 0010 FBD1     		bne	.L23
 184              	.LVL11:
 185              	.L11:
 166:../asf/sam/drivers/rtc/rtc.c **** 	}
 167:../asf/sam/drivers/rtc/rtc.c **** 
 168:../asf/sam/drivers/rtc/rtc.c **** 	/* Hour */
 169:../asf/sam/drivers/rtc/rtc.c **** 	if (pul_hour) {
 186              		.loc 1 169 0
 187 0012 59B1     		cbz	r1, .L14
 188              	.LVL12:
 170:../asf/sam/drivers/rtc/rtc.c **** 		ul_temp = (ul_time & RTC_TIMR_HOUR_Msk) >> RTC_TIMR_HOUR_Pos;
 171:../asf/sam/drivers/rtc/rtc.c **** 		*pul_hour = (ul_temp >> BCD_SHIFT) * BCD_FACTOR + (ul_temp & BCD_MASK);
 189              		.loc 1 171 0
 190 0014 C4F30155 		ubfx	r5, r4, #20, #2
 191 0018 C4F30340 		ubfx	r0, r4, #16, #4
 192              	.LVL13:
 193 001c 05EB8505 		add	r5, r5, r5, lsl #2
 194 0020 00EB4500 		add	r0, r0, r5, lsl #1
 172:../asf/sam/drivers/rtc/rtc.c **** 
 173:../asf/sam/drivers/rtc/rtc.c **** 		if ((ul_time & RTC_TIMR_AMPM) == RTC_TIMR_AMPM) {
 195              		.loc 1 173 0
 196 0024 6502     		lsls	r5, r4, #9
 174:../asf/sam/drivers/rtc/rtc.c **** 			*pul_hour += 12;
 197              		.loc 1 174 0
 198 0026 48BF     		it	mi
 199 0028 0C30     		addmi	r0, r0, #12
 200 002a 0860     		str	r0, [r1]
 201              	.LVL14:
 202              	.L14:
 175:../asf/sam/drivers/rtc/rtc.c **** 		}
 176:../asf/sam/drivers/rtc/rtc.c **** 	}
 177:../asf/sam/drivers/rtc/rtc.c **** 
 178:../asf/sam/drivers/rtc/rtc.c **** 	/* Minute */
 179:../asf/sam/drivers/rtc/rtc.c **** 	if (pul_minute) {
 203              		.loc 1 179 0
 204 002c 42B1     		cbz	r2, .L17
 205              	.LVL15:
 180:../asf/sam/drivers/rtc/rtc.c **** 		ul_temp = (ul_time & RTC_TIMR_MIN_Msk) >> RTC_TIMR_MIN_Pos;
 181:../asf/sam/drivers/rtc/rtc.c **** 		*pul_minute = (ul_temp >> BCD_SHIFT) * BCD_FACTOR +  (ul_temp & BCD_MASK);
 206              		.loc 1 181 0
 207 002e C4F30231 		ubfx	r1, r4, #12, #3
 208              	.LVL16:
 209 0032 C4F30320 		ubfx	r0, r4, #8, #4
 210 0036 01EB8101 		add	r1, r1, r1, lsl #2
 211 003a 00EB4101 		add	r1, r0, r1, lsl #1
 212 003e 1160     		str	r1, [r2]
 213              	.LVL17:
 214              	.L17:
 182:../asf/sam/drivers/rtc/rtc.c **** 	}
ARM GAS  /tmp/ccmZuGH1.s 			page 8


 183:../asf/sam/drivers/rtc/rtc.c **** 
 184:../asf/sam/drivers/rtc/rtc.c **** 	/* Second */
 185:../asf/sam/drivers/rtc/rtc.c **** 	if (pul_second) {
 215              		.loc 1 185 0
 216 0040 43B1     		cbz	r3, .L10
 217              	.LVL18:
 186:../asf/sam/drivers/rtc/rtc.c **** 		ul_temp = (ul_time & RTC_TIMR_SEC_Msk) >> RTC_TIMR_SEC_Pos;
 187:../asf/sam/drivers/rtc/rtc.c **** 		*pul_second = (ul_temp >> BCD_SHIFT) * BCD_FACTOR + (ul_temp & BCD_MASK);
 218              		.loc 1 187 0
 219 0042 C4F30212 		ubfx	r2, r4, #4, #3
 220              	.LVL19:
 221 0046 04F00F04 		and	r4, r4, #15
 222              	.LVL20:
 223 004a 02EB8202 		add	r2, r2, r2, lsl #2
 224 004e 04EB4204 		add	r4, r4, r2, lsl #1
 225 0052 1C60     		str	r4, [r3]
 226              	.L10:
 188:../asf/sam/drivers/rtc/rtc.c **** 	}
 189:../asf/sam/drivers/rtc/rtc.c **** }
 227              		.loc 1 189 0
 228 0054 30BC     		pop	{r4, r5}
 229              		.cfi_restore 5
 230              		.cfi_restore 4
 231              		.cfi_def_cfa_offset 0
 232 0056 7047     		bx	lr
 233              		.cfi_endproc
 234              	.LFE147:
 235              		.size	rtc_get_time, .-rtc_get_time
 236              		.section	.text.rtc_set_time,"ax",%progbits
 237              		.align	1
 238              		.p2align 2,,3
 239              		.global	rtc_set_time
 240              		.syntax unified
 241              		.thumb
 242              		.thumb_func
 243              		.fpu fpv5-d16
 244              		.type	rtc_set_time, %function
 245              	rtc_set_time:
 246              	.LFB148:
 190:../asf/sam/drivers/rtc/rtc.c **** 
 191:../asf/sam/drivers/rtc/rtc.c **** /**
 192:../asf/sam/drivers/rtc/rtc.c ****  * \brief Set the RTC time value.
 193:../asf/sam/drivers/rtc/rtc.c ****  *
 194:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 195:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_hour Current hour, 24-hour mode.
 196:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_minute Current minute.
 197:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_second Current second.
 198:../asf/sam/drivers/rtc/rtc.c ****  *
 199:../asf/sam/drivers/rtc/rtc.c ****  * \return 0 for OK, else invalid setting.
 200:../asf/sam/drivers/rtc/rtc.c ****  */
 201:../asf/sam/drivers/rtc/rtc.c **** uint32_t rtc_set_time(Rtc *p_rtc, uint32_t ul_hour, uint32_t ul_minute,
 202:../asf/sam/drivers/rtc/rtc.c **** 		uint32_t ul_second)
 203:../asf/sam/drivers/rtc/rtc.c **** {
 247              		.loc 1 203 0
 248              		.cfi_startproc
 249              		@ args = 0, pretend = 0, frame = 0
 250              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccmZuGH1.s 			page 9


 251              	.LVL21:
 204:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_time = 0;
 205:../asf/sam/drivers/rtc/rtc.c **** 
 206:../asf/sam/drivers/rtc/rtc.c **** 	/* If 12-hour mode, set AMPM bit */
 207:../asf/sam/drivers/rtc/rtc.c **** 	if ((p_rtc->RTC_MR & RTC_MR_HRMOD) == RTC_MR_HRMOD) {
 208:../asf/sam/drivers/rtc/rtc.c **** 		if (ul_hour > 12) {
 252              		.loc 1 208 0
 253 0000 0C29     		cmp	r1, #12
 203:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_time = 0;
 254              		.loc 1 203 0
 255 0002 F0B5     		push	{r4, r5, r6, r7, lr}
 256              		.cfi_def_cfa_offset 20
 257              		.cfi_offset 4, -20
 258              		.cfi_offset 5, -16
 259              		.cfi_offset 6, -12
 260              		.cfi_offset 7, -8
 261              		.cfi_offset 14, -4
 207:../asf/sam/drivers/rtc/rtc.c **** 		if (ul_hour > 12) {
 262              		.loc 1 207 0
 263 0004 4468     		ldr	r4, [r0, #4]
 264              		.loc 1 208 0
 265 0006 3BD9     		bls	.L33
 266 0008 E407     		lsls	r4, r4, #31
 267 000a 39D5     		bpl	.L33
 209:../asf/sam/drivers/rtc/rtc.c **** 			ul_hour -= 12;
 268              		.loc 1 209 0
 269 000c 0C39     		subs	r1, r1, #12
 270              	.LVL22:
 210:../asf/sam/drivers/rtc/rtc.c **** 			ul_time |= RTC_TIMR_AMPM;
 271              		.loc 1 210 0
 272 000e 4FF48007 		mov	r7, #4194304
 273              	.LVL23:
 274              	.L30:
 211:../asf/sam/drivers/rtc/rtc.c **** 		}
 212:../asf/sam/drivers/rtc/rtc.c **** 	}
 213:../asf/sam/drivers/rtc/rtc.c **** 
 214:../asf/sam/drivers/rtc/rtc.c **** 	/* Hour */
 215:../asf/sam/drivers/rtc/rtc.c **** 	ul_time |= ((ul_hour / BCD_FACTOR) << (RTC_TIMR_HOUR_Pos + BCD_SHIFT)) |
 216:../asf/sam/drivers/rtc/rtc.c **** 			((ul_hour % BCD_FACTOR) << RTC_TIMR_HOUR_Pos);
 217:../asf/sam/drivers/rtc/rtc.c **** 
 218:../asf/sam/drivers/rtc/rtc.c **** 	/* Minute */
 219:../asf/sam/drivers/rtc/rtc.c **** 	ul_time |= ((ul_minute / BCD_FACTOR) << (RTC_TIMR_MIN_Pos + BCD_SHIFT)) |
 220:../asf/sam/drivers/rtc/rtc.c **** 			((ul_minute % BCD_FACTOR) << RTC_TIMR_MIN_Pos);
 221:../asf/sam/drivers/rtc/rtc.c **** 
 222:../asf/sam/drivers/rtc/rtc.c **** 	/* Second */
 223:../asf/sam/drivers/rtc/rtc.c **** 	ul_time |= ((ul_second / BCD_FACTOR) << (RTC_TIMR_SEC_Pos + BCD_SHIFT)) |
 275              		.loc 1 223 0
 276 0012 1C4C     		ldr	r4, .L45
 277 0014 A4FB0356 		umull	r5, r6, r4, r3
 219:../asf/sam/drivers/rtc/rtc.c **** 			((ul_minute % BCD_FACTOR) << RTC_TIMR_MIN_Pos);
 278              		.loc 1 219 0
 279 0018 A4FB02E5 		umull	lr, r5, r4, r2
 280              		.loc 1 223 0
 281 001c F608     		lsrs	r6, r6, #3
 215:../asf/sam/drivers/rtc/rtc.c **** 			((ul_hour % BCD_FACTOR) << RTC_TIMR_HOUR_Pos);
 282              		.loc 1 215 0
 283 001e A4FB01E4 		umull	lr, r4, r4, r1
ARM GAS  /tmp/ccmZuGH1.s 			page 10


 219:../asf/sam/drivers/rtc/rtc.c **** 			((ul_minute % BCD_FACTOR) << RTC_TIMR_MIN_Pos);
 284              		.loc 1 219 0
 285 0022 ED08     		lsrs	r5, r5, #3
 224:../asf/sam/drivers/rtc/rtc.c **** 			((ul_second % BCD_FACTOR) << RTC_TIMR_SEC_Pos);
 286              		.loc 1 224 0
 287 0024 06EB860E 		add	lr, r6, r6, lsl #2
 215:../asf/sam/drivers/rtc/rtc.c **** 			((ul_hour % BCD_FACTOR) << RTC_TIMR_HOUR_Pos);
 288              		.loc 1 215 0
 289 0028 E408     		lsrs	r4, r4, #3
 290              		.loc 1 224 0
 291 002a A3EB4E03 		sub	r3, r3, lr, lsl #1
 292              	.LVL24:
 220:../asf/sam/drivers/rtc/rtc.c **** 
 293              		.loc 1 220 0
 294 002e 05EB850E 		add	lr, r5, r5, lsl #2
 295 0032 43EA0613 		orr	r3, r3, r6, lsl #4
 296 0036 A2EB4E06 		sub	r6, r2, lr, lsl #1
 297 003a 43EA0532 		orr	r2, r3, r5, lsl #12
 298              	.LVL25:
 216:../asf/sam/drivers/rtc/rtc.c **** 
 299              		.loc 1 216 0
 300 003e 04EB8403 		add	r3, r4, r4, lsl #2
 301 0042 42EA0622 		orr	r2, r2, r6, lsl #8
 302 0046 A1EB4303 		sub	r3, r1, r3, lsl #1
 303 004a 42EA0701 		orr	r1, r2, r7
 304              	.LVL26:
 305 004e 41EA0451 		orr	r1, r1, r4, lsl #20
 223:../asf/sam/drivers/rtc/rtc.c **** 			((ul_second % BCD_FACTOR) << RTC_TIMR_SEC_Pos);
 306              		.loc 1 223 0
 307 0052 41EA0341 		orr	r1, r1, r3, lsl #16
 308              	.LVL27:
 309              	.L31:
 225:../asf/sam/drivers/rtc/rtc.c **** 
 226:../asf/sam/drivers/rtc/rtc.c **** 	/* Update time register. Check the spec for the flow. */
 227:../asf/sam/drivers/rtc/rtc.c **** 	while ((p_rtc->RTC_SR & RTC_SR_SEC) != RTC_SR_SEC);
 310              		.loc 1 227 0 discriminator 1
 311 0056 8369     		ldr	r3, [r0, #24]
 312 0058 5A07     		lsls	r2, r3, #29
 313 005a FCD5     		bpl	.L31
 228:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CR |= RTC_CR_UPDTIM;
 314              		.loc 1 228 0
 315 005c 0368     		ldr	r3, [r0]
 316 005e 43F00103 		orr	r3, r3, #1
 317 0062 0360     		str	r3, [r0]
 318              	.L32:
 229:../asf/sam/drivers/rtc/rtc.c **** 	while ((p_rtc->RTC_SR & RTC_SR_ACKUPD) != RTC_SR_ACKUPD);
 319              		.loc 1 229 0 discriminator 1
 320 0064 8369     		ldr	r3, [r0, #24]
 321 0066 DB07     		lsls	r3, r3, #31
 322 0068 FCD5     		bpl	.L32
 230:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_SCCR = RTC_SCCR_ACKCLR;
 323              		.loc 1 230 0
 324 006a 0123     		movs	r3, #1
 325 006c C361     		str	r3, [r0, #28]
 231:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_TIMR = ul_time;
 326              		.loc 1 231 0
 327 006e 8160     		str	r1, [r0, #8]
ARM GAS  /tmp/ccmZuGH1.s 			page 11


 232:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CR &= (~RTC_CR_UPDTIM);
 328              		.loc 1 232 0
 329 0070 0368     		ldr	r3, [r0]
 330 0072 23F00103 		bic	r3, r3, #1
 331 0076 0360     		str	r3, [r0]
 233:../asf/sam/drivers/rtc/rtc.c **** 
 234:../asf/sam/drivers/rtc/rtc.c **** 	return (p_rtc->RTC_VER & RTC_VER_NVTIM);
 332              		.loc 1 234 0
 333 0078 C06A     		ldr	r0, [r0, #44]
 334              	.LVL28:
 235:../asf/sam/drivers/rtc/rtc.c **** }
 335              		.loc 1 235 0
 336 007a 00F00100 		and	r0, r0, #1
 337 007e F0BD     		pop	{r4, r5, r6, r7, pc}
 338              	.LVL29:
 339              	.L33:
 204:../asf/sam/drivers/rtc/rtc.c **** 
 340              		.loc 1 204 0
 341 0080 0027     		movs	r7, #0
 342 0082 C6E7     		b	.L30
 343              	.L46:
 344              		.align	2
 345              	.L45:
 346 0084 CDCCCCCC 		.word	-858993459
 347              		.cfi_endproc
 348              	.LFE148:
 349              		.size	rtc_set_time, .-rtc_set_time
 350              		.section	.text.rtc_set_time_alarm,"ax",%progbits
 351              		.align	1
 352              		.p2align 2,,3
 353              		.global	rtc_set_time_alarm
 354              		.syntax unified
 355              		.thumb
 356              		.thumb_func
 357              		.fpu fpv5-d16
 358              		.type	rtc_set_time_alarm, %function
 359              	rtc_set_time_alarm:
 360              	.LFB149:
 236:../asf/sam/drivers/rtc/rtc.c **** 
 237:../asf/sam/drivers/rtc/rtc.c **** /**
 238:../asf/sam/drivers/rtc/rtc.c ****  * \brief Set the RTC alarm time value.
 239:../asf/sam/drivers/rtc/rtc.c ****  *
 240:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 241:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_hour_flag 1 for setting, 0 for not setting.
 242:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_hour Alarm hour value, 24-hour mode.
 243:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_minute_flag 1 for setting, 0 for not setting.
 244:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_minute Alarm minute value.
 245:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_second_flag 1 for setting, 0 for not setting.
 246:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_second Alarm second value.
 247:../asf/sam/drivers/rtc/rtc.c ****  *
 248:../asf/sam/drivers/rtc/rtc.c ****  * \return 0 for OK, else invalid setting.
 249:../asf/sam/drivers/rtc/rtc.c ****  */
 250:../asf/sam/drivers/rtc/rtc.c **** uint32_t rtc_set_time_alarm(Rtc *p_rtc,
 251:../asf/sam/drivers/rtc/rtc.c **** 		uint32_t ul_hour_flag, uint32_t ul_hour,
 252:../asf/sam/drivers/rtc/rtc.c **** 		uint32_t ul_minute_flag, uint32_t ul_minute,
 253:../asf/sam/drivers/rtc/rtc.c **** 		uint32_t ul_second_flag, uint32_t ul_second)
 254:../asf/sam/drivers/rtc/rtc.c **** {
ARM GAS  /tmp/ccmZuGH1.s 			page 12


 361              		.loc 1 254 0
 362              		.cfi_startproc
 363              		@ args = 12, pretend = 0, frame = 0
 364              		@ frame_needed = 0, uses_anonymous_args = 0
 365              	.LVL30:
 366 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 367              		.cfi_def_cfa_offset 20
 368              		.cfi_offset 4, -20
 369              		.cfi_offset 5, -16
 370              		.cfi_offset 6, -12
 371              		.cfi_offset 7, -8
 372              		.cfi_offset 14, -4
 373              		.loc 1 254 0
 374 0002 05AC     		add	r4, sp, #20
 375              	.LVL31:
 376 0004 70CC     		ldm	r4, {r4, r5, r6}
 377              	.LVL32:
 255:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_alarm = 0;
 256:../asf/sam/drivers/rtc/rtc.c **** 
 257:../asf/sam/drivers/rtc/rtc.c **** 	/* Hour alarm setting */
 258:../asf/sam/drivers/rtc/rtc.c **** 	if (ul_hour_flag) {
 378              		.loc 1 258 0
 379 0006 A1B1     		cbz	r1, .L48
 259:../asf/sam/drivers/rtc/rtc.c **** 		/* If 12-hour mode, set AMPM bit */
 260:../asf/sam/drivers/rtc/rtc.c **** 		if ((p_rtc->RTC_MR & RTC_MR_HRMOD) == RTC_MR_HRMOD) {
 261:../asf/sam/drivers/rtc/rtc.c **** 			if (ul_hour > 12) {
 380              		.loc 1 261 0
 381 0008 0C2A     		cmp	r2, #12
 260:../asf/sam/drivers/rtc/rtc.c **** 			if (ul_hour > 12) {
 382              		.loc 1 260 0
 383 000a 4168     		ldr	r1, [r0, #4]
 384              	.LVL33:
 385              		.loc 1 261 0
 386 000c 37D9     		bls	.L52
 387 000e C907     		lsls	r1, r1, #31
 388 0010 35D5     		bpl	.L52
 262:../asf/sam/drivers/rtc/rtc.c **** 				ul_hour -= 12;
 389              		.loc 1 262 0
 390 0012 0C3A     		subs	r2, r2, #12
 391              	.LVL34:
 263:../asf/sam/drivers/rtc/rtc.c **** 				ul_alarm |= RTC_TIMR_AMPM;
 392              		.loc 1 263 0
 393 0014 4FF4800E 		mov	lr, #4194304
 394              	.LVL35:
 395              	.L49:
 264:../asf/sam/drivers/rtc/rtc.c **** 			}
 265:../asf/sam/drivers/rtc/rtc.c **** 		}
 266:../asf/sam/drivers/rtc/rtc.c **** 
 267:../asf/sam/drivers/rtc/rtc.c **** 		ul_alarm |= ((ul_hour / BCD_FACTOR) << (RTC_TIMR_HOUR_Pos + BCD_SHIFT)) |
 396              		.loc 1 267 0
 397 0018 1A4F     		ldr	r7, .L69
 398 001a A7FB0217 		umull	r1, r7, r7, r2
 399 001e FF08     		lsrs	r7, r7, #3
 268:../asf/sam/drivers/rtc/rtc.c **** 				((ul_hour % BCD_FACTOR) << RTC_TIMR_HOUR_Pos);
 400              		.loc 1 268 0
 401 0020 07EB8701 		add	r1, r7, r7, lsl #2
 402 0024 A2EB4102 		sub	r2, r2, r1, lsl #1
ARM GAS  /tmp/ccmZuGH1.s 			page 13


 403              	.LVL36:
 404 0028 1104     		lsls	r1, r2, #16
 267:../asf/sam/drivers/rtc/rtc.c **** 				((ul_hour % BCD_FACTOR) << RTC_TIMR_HOUR_Pos);
 405              		.loc 1 267 0
 406 002a 41EA0751 		orr	r1, r1, r7, lsl #20
 407 002e 41EA0E01 		orr	r1, r1, lr
 408              	.LVL37:
 409              	.L48:
 269:../asf/sam/drivers/rtc/rtc.c **** 	}
 270:../asf/sam/drivers/rtc/rtc.c **** 
 271:../asf/sam/drivers/rtc/rtc.c **** 	/* Minute alarm setting */
 272:../asf/sam/drivers/rtc/rtc.c **** 	if (ul_minute_flag) {
 410              		.loc 1 272 0
 411 0032 5BB1     		cbz	r3, .L50
 273:../asf/sam/drivers/rtc/rtc.c **** 		ul_alarm |= ((ul_minute / BCD_FACTOR) << (RTC_TIMR_MIN_Pos + BCD_SHIFT)) |
 412              		.loc 1 273 0
 413 0034 134B     		ldr	r3, .L69
 414              	.LVL38:
 415 0036 A3FB0423 		umull	r2, r3, r3, r4
 416 003a DB08     		lsrs	r3, r3, #3
 274:../asf/sam/drivers/rtc/rtc.c **** 				((ul_minute % BCD_FACTOR) << RTC_TIMR_MIN_Pos);
 417              		.loc 1 274 0
 418 003c 03EB8302 		add	r2, r3, r3, lsl #2
 419 0040 A4EB4204 		sub	r4, r4, r2, lsl #1
 420 0044 2402     		lsls	r4, r4, #8
 273:../asf/sam/drivers/rtc/rtc.c **** 		ul_alarm |= ((ul_minute / BCD_FACTOR) << (RTC_TIMR_MIN_Pos + BCD_SHIFT)) |
 421              		.loc 1 273 0
 422 0046 44EA0334 		orr	r4, r4, r3, lsl #12
 423 004a 2143     		orrs	r1, r1, r4
 424              	.LVL39:
 425              	.L50:
 275:../asf/sam/drivers/rtc/rtc.c **** 	}
 276:../asf/sam/drivers/rtc/rtc.c **** 
 277:../asf/sam/drivers/rtc/rtc.c **** 	/* Second alarm setting */
 278:../asf/sam/drivers/rtc/rtc.c **** 	if (ul_second_flag) {
 426              		.loc 1 278 0
 427 004c 55B1     		cbz	r5, .L51
 279:../asf/sam/drivers/rtc/rtc.c **** 		ul_alarm |= ((ul_second / BCD_FACTOR) << (RTC_TIMR_SEC_Pos + BCD_SHIFT)) |
 428              		.loc 1 279 0
 429 004e 0D4B     		ldr	r3, .L69
 430 0050 A3FB0623 		umull	r2, r3, r3, r6
 431 0054 DB08     		lsrs	r3, r3, #3
 280:../asf/sam/drivers/rtc/rtc.c **** 				((ul_second % BCD_FACTOR) << RTC_TIMR_SEC_Pos);
 432              		.loc 1 280 0
 433 0056 03EB8302 		add	r2, r3, r3, lsl #2
 434 005a A6EB4206 		sub	r6, r6, r2, lsl #1
 279:../asf/sam/drivers/rtc/rtc.c **** 		ul_alarm |= ((ul_second / BCD_FACTOR) << (RTC_TIMR_SEC_Pos + BCD_SHIFT)) |
 435              		.loc 1 279 0
 436 005e 46EA0313 		orr	r3, r6, r3, lsl #4
 437 0062 1943     		orrs	r1, r1, r3
 438              	.LVL40:
 439              	.L51:
 281:../asf/sam/drivers/rtc/rtc.c **** 	}
 282:../asf/sam/drivers/rtc/rtc.c **** 
 283:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_TIMALR &= ~(RTC_TIMALR_SECEN | RTC_TIMALR_MINEN | RTC_TIMALR_HOUREN);
 440              		.loc 1 283 0
 441 0064 0469     		ldr	r4, [r0, #16]
ARM GAS  /tmp/ccmZuGH1.s 			page 14


 442 0066 084A     		ldr	r2, .L69+4
 284:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_TIMALR = ul_alarm;
 285:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_TIMALR |= (RTC_TIMALR_SECEN | RTC_TIMALR_MINEN | RTC_TIMALR_HOUREN);
 443              		.loc 1 285 0
 444 0068 084B     		ldr	r3, .L69+8
 283:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_TIMALR = ul_alarm;
 445              		.loc 1 283 0
 446 006a 2240     		ands	r2, r2, r4
 447 006c 0261     		str	r2, [r0, #16]
 284:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_TIMALR = ul_alarm;
 448              		.loc 1 284 0
 449 006e 0161     		str	r1, [r0, #16]
 450              		.loc 1 285 0
 451 0070 0269     		ldr	r2, [r0, #16]
 452 0072 1343     		orrs	r3, r3, r2
 453 0074 0361     		str	r3, [r0, #16]
 286:../asf/sam/drivers/rtc/rtc.c **** 
 287:../asf/sam/drivers/rtc/rtc.c **** 	return (p_rtc->RTC_VER & RTC_VER_NVTIMALR);
 454              		.loc 1 287 0
 455 0076 C06A     		ldr	r0, [r0, #44]
 456              	.LVL41:
 288:../asf/sam/drivers/rtc/rtc.c **** }
 457              		.loc 1 288 0
 458 0078 00F00400 		and	r0, r0, #4
 459 007c F0BD     		pop	{r4, r5, r6, r7, pc}
 460              	.LVL42:
 461              	.L52:
 255:../asf/sam/drivers/rtc/rtc.c **** 
 462              		.loc 1 255 0
 463 007e 4FF0000E 		mov	lr, #0
 464 0082 C9E7     		b	.L49
 465              	.L70:
 466              		.align	2
 467              	.L69:
 468 0084 CDCCCCCC 		.word	-858993459
 469 0088 7F7F7FFF 		.word	-8421505
 470 008c 80808000 		.word	8421504
 471              		.cfi_endproc
 472              	.LFE149:
 473              		.size	rtc_set_time_alarm, .-rtc_set_time_alarm
 474              		.section	.text.rtc_get_date,"ax",%progbits
 475              		.align	1
 476              		.p2align 2,,3
 477              		.global	rtc_get_date
 478              		.syntax unified
 479              		.thumb
 480              		.thumb_func
 481              		.fpu fpv5-d16
 482              		.type	rtc_get_date, %function
 483              	rtc_get_date:
 484              	.LFB150:
 289:../asf/sam/drivers/rtc/rtc.c **** 
 290:../asf/sam/drivers/rtc/rtc.c **** /**
 291:../asf/sam/drivers/rtc/rtc.c ****  * \brief Get the RTC date value.
 292:../asf/sam/drivers/rtc/rtc.c ****  *
 293:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 294:../asf/sam/drivers/rtc/rtc.c ****  * \param pul_year Current year.
ARM GAS  /tmp/ccmZuGH1.s 			page 15


 295:../asf/sam/drivers/rtc/rtc.c ****  * \param pul_month Current month.
 296:../asf/sam/drivers/rtc/rtc.c ****  * \param pul_day Current day.
 297:../asf/sam/drivers/rtc/rtc.c ****  * \param pul_week Current day in current week.
 298:../asf/sam/drivers/rtc/rtc.c ****  */
 299:../asf/sam/drivers/rtc/rtc.c **** void rtc_get_date(Rtc *p_rtc, uint32_t *pul_year, uint32_t *pul_month,
 300:../asf/sam/drivers/rtc/rtc.c **** 		uint32_t *pul_day, uint32_t *pul_week)
 301:../asf/sam/drivers/rtc/rtc.c **** {
 485              		.loc 1 301 0
 486              		.cfi_startproc
 487              		@ args = 4, pretend = 0, frame = 0
 488              		@ frame_needed = 0, uses_anonymous_args = 0
 489              	.LVL43:
 490 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 491              		.cfi_def_cfa_offset 20
 492              		.cfi_offset 4, -20
 493              		.cfi_offset 5, -16
 494              		.cfi_offset 6, -12
 495              		.cfi_offset 7, -8
 496              		.cfi_offset 14, -4
 302:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_date;
 303:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_cent;
 304:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_temp;
 305:../asf/sam/drivers/rtc/rtc.c **** 
 306:../asf/sam/drivers/rtc/rtc.c **** 	/* Get the current date (multiple reads are necessary to insure a stable value). */
 307:../asf/sam/drivers/rtc/rtc.c **** 	ul_date = p_rtc->RTC_CALR;
 497              		.loc 1 307 0
 498 0002 C568     		ldr	r5, [r0, #12]
 499              	.LVL44:
 308:../asf/sam/drivers/rtc/rtc.c **** 	while (ul_date != p_rtc->RTC_CALR) {
 500              		.loc 1 308 0
 501 0004 C468     		ldr	r4, [r0, #12]
 301:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_date;
 502              		.loc 1 301 0
 503 0006 059E     		ldr	r6, [sp, #20]
 504              		.loc 1 308 0
 505 0008 A542     		cmp	r5, r4
 506 000a 03D0     		beq	.L72
 507              	.L86:
 309:../asf/sam/drivers/rtc/rtc.c **** 		ul_date = p_rtc->RTC_CALR;
 508              		.loc 1 309 0
 509 000c C568     		ldr	r5, [r0, #12]
 510              	.LVL45:
 308:../asf/sam/drivers/rtc/rtc.c **** 	while (ul_date != p_rtc->RTC_CALR) {
 511              		.loc 1 308 0
 512 000e C468     		ldr	r4, [r0, #12]
 513 0010 AC42     		cmp	r4, r5
 514 0012 FBD1     		bne	.L86
 515              	.LVL46:
 516              	.L72:
 310:../asf/sam/drivers/rtc/rtc.c **** 	}
 311:../asf/sam/drivers/rtc/rtc.c **** 
 312:../asf/sam/drivers/rtc/rtc.c **** 	/* Retrieve year */
 313:../asf/sam/drivers/rtc/rtc.c **** 	if (pul_year) {
 517              		.loc 1 313 0
 518 0014 A1B1     		cbz	r1, .L74
 519              	.LVL47:
 314:../asf/sam/drivers/rtc/rtc.c **** 		ul_temp = (ul_date & RTC_CALR_CENT_Msk) >> RTC_CALR_CENT_Pos;
ARM GAS  /tmp/ccmZuGH1.s 			page 16


 315:../asf/sam/drivers/rtc/rtc.c **** 		ul_cent = (ul_temp >> BCD_SHIFT) * BCD_FACTOR + (ul_temp & BCD_MASK);
 316:../asf/sam/drivers/rtc/rtc.c **** 		ul_temp = (ul_date & RTC_CALR_YEAR_Msk) >> RTC_CALR_YEAR_Pos;
 317:../asf/sam/drivers/rtc/rtc.c **** 		*pul_year = (ul_cent * BCD_FACTOR * BCD_FACTOR) +
 318:../asf/sam/drivers/rtc/rtc.c **** 				(ul_temp >> BCD_SHIFT) * BCD_FACTOR + (ul_temp & BCD_MASK);
 520              		.loc 1 318 0
 521 0016 C4F30337 		ubfx	r7, r4, #12, #4
 315:../asf/sam/drivers/rtc/rtc.c **** 		ul_temp = (ul_date & RTC_CALR_YEAR_Msk) >> RTC_CALR_YEAR_Pos;
 522              		.loc 1 315 0
 523 001a C4F30215 		ubfx	r5, r4, #4, #3
 524              		.loc 1 318 0
 525 001e C4F3032E 		ubfx	lr, r4, #8, #4
 315:../asf/sam/drivers/rtc/rtc.c **** 		ul_temp = (ul_date & RTC_CALR_YEAR_Msk) >> RTC_CALR_YEAR_Pos;
 526              		.loc 1 315 0
 527 0022 04F00F00 		and	r0, r4, #15
 528              	.LVL48:
 529              		.loc 1 318 0
 530 0026 07EB8707 		add	r7, r7, r7, lsl #2
 315:../asf/sam/drivers/rtc/rtc.c **** 		ul_temp = (ul_date & RTC_CALR_YEAR_Msk) >> RTC_CALR_YEAR_Pos;
 531              		.loc 1 315 0
 532 002a 05EB8505 		add	r5, r5, r5, lsl #2
 533              		.loc 1 318 0
 534 002e 0EEB4707 		add	r7, lr, r7, lsl #1
 317:../asf/sam/drivers/rtc/rtc.c **** 				(ul_temp >> BCD_SHIFT) * BCD_FACTOR + (ul_temp & BCD_MASK);
 535              		.loc 1 317 0
 536 0032 4FF0640E 		mov	lr, #100
 315:../asf/sam/drivers/rtc/rtc.c **** 		ul_temp = (ul_date & RTC_CALR_YEAR_Msk) >> RTC_CALR_YEAR_Pos;
 537              		.loc 1 315 0
 538 0036 00EB4500 		add	r0, r0, r5, lsl #1
 539              		.loc 1 318 0
 540 003a 0EFB0070 		mla	r0, lr, r0, r7
 317:../asf/sam/drivers/rtc/rtc.c **** 				(ul_temp >> BCD_SHIFT) * BCD_FACTOR + (ul_temp & BCD_MASK);
 541              		.loc 1 317 0
 542 003e 0860     		str	r0, [r1]
 543              	.LVL49:
 544              	.L74:
 319:../asf/sam/drivers/rtc/rtc.c **** 	}
 320:../asf/sam/drivers/rtc/rtc.c **** 
 321:../asf/sam/drivers/rtc/rtc.c **** 	/* Retrieve month */
 322:../asf/sam/drivers/rtc/rtc.c **** 	if (pul_month) {
 545              		.loc 1 322 0
 546 0040 42B1     		cbz	r2, .L75
 547              	.LVL50:
 323:../asf/sam/drivers/rtc/rtc.c **** 		ul_temp = (ul_date & RTC_CALR_MONTH_Msk) >> RTC_CALR_MONTH_Pos;
 324:../asf/sam/drivers/rtc/rtc.c **** 		*pul_month = (ul_temp >> BCD_SHIFT) * BCD_FACTOR + (ul_temp & BCD_MASK);
 548              		.loc 1 324 0
 549 0042 C4F30055 		ubfx	r5, r4, #20, #1
 550 0046 C4F30341 		ubfx	r1, r4, #16, #4
 551              	.LVL51:
 552 004a A800     		lsls	r0, r5, #2
 553 004c 2844     		add	r0, r0, r5
 554 004e 01EB4001 		add	r1, r1, r0, lsl #1
 555 0052 1160     		str	r1, [r2]
 556              	.LVL52:
 557              	.L75:
 325:../asf/sam/drivers/rtc/rtc.c **** 	}
 326:../asf/sam/drivers/rtc/rtc.c **** 
 327:../asf/sam/drivers/rtc/rtc.c **** 	/* Retrieve day */
ARM GAS  /tmp/ccmZuGH1.s 			page 17


 328:../asf/sam/drivers/rtc/rtc.c **** 	if (pul_day) {
 558              		.loc 1 328 0
 559 0054 43B1     		cbz	r3, .L76
 560              	.LVL53:
 329:../asf/sam/drivers/rtc/rtc.c **** 		ul_temp = (ul_date & RTC_CALR_DATE_Msk) >> RTC_CALR_DATE_Pos;
 330:../asf/sam/drivers/rtc/rtc.c **** 		*pul_day = (ul_temp >> BCD_SHIFT) * BCD_FACTOR + (ul_temp & BCD_MASK);
 561              		.loc 1 330 0
 562 0056 C4F30172 		ubfx	r2, r4, #28, #2
 563              	.LVL54:
 564 005a C4F30361 		ubfx	r1, r4, #24, #4
 565 005e 02EB8202 		add	r2, r2, r2, lsl #2
 566 0062 01EB4202 		add	r2, r1, r2, lsl #1
 567 0066 1A60     		str	r2, [r3]
 568              	.LVL55:
 569              	.L76:
 331:../asf/sam/drivers/rtc/rtc.c **** 	}
 332:../asf/sam/drivers/rtc/rtc.c **** 
 333:../asf/sam/drivers/rtc/rtc.c **** 	/* Retrieve week */
 334:../asf/sam/drivers/rtc/rtc.c **** 	if (pul_week) {
 570              		.loc 1 334 0
 571 0068 16B1     		cbz	r6, .L71
 335:../asf/sam/drivers/rtc/rtc.c **** 		*pul_week = ((ul_date & RTC_CALR_DAY_Msk) >> RTC_CALR_DAY_Pos);
 572              		.loc 1 335 0
 573 006a C4F34254 		ubfx	r4, r4, #21, #3
 574 006e 3460     		str	r4, [r6]
 575              	.L71:
 576 0070 F0BD     		pop	{r4, r5, r6, r7, pc}
 577              		.cfi_endproc
 578              	.LFE150:
 579              		.size	rtc_get_date, .-rtc_get_date
 580 0072 00BF     		.section	.text.rtc_set_date,"ax",%progbits
 581              		.align	1
 582              		.p2align 2,,3
 583              		.global	rtc_set_date
 584              		.syntax unified
 585              		.thumb
 586              		.thumb_func
 587              		.fpu fpv5-d16
 588              		.type	rtc_set_date, %function
 589              	rtc_set_date:
 590              	.LFB151:
 336:../asf/sam/drivers/rtc/rtc.c **** 	}
 337:../asf/sam/drivers/rtc/rtc.c **** }
 338:../asf/sam/drivers/rtc/rtc.c **** 
 339:../asf/sam/drivers/rtc/rtc.c **** /**
 340:../asf/sam/drivers/rtc/rtc.c ****  * \brief Set the RTC date.
 341:../asf/sam/drivers/rtc/rtc.c ****  *
 342:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 343:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_year Current year.
 344:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_month Current month.
 345:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_day Current day.
 346:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_week Current day in current week.
 347:../asf/sam/drivers/rtc/rtc.c ****  *
 348:../asf/sam/drivers/rtc/rtc.c ****  * \return 0 for OK, else invalid setting.
 349:../asf/sam/drivers/rtc/rtc.c ****  */
 350:../asf/sam/drivers/rtc/rtc.c **** uint32_t rtc_set_date(Rtc *p_rtc, uint32_t ul_year, uint32_t ul_month,
 351:../asf/sam/drivers/rtc/rtc.c **** 		uint32_t ul_day, uint32_t ul_week)
ARM GAS  /tmp/ccmZuGH1.s 			page 18


 352:../asf/sam/drivers/rtc/rtc.c **** {
 591              		.loc 1 352 0
 592              		.cfi_startproc
 593              		@ args = 4, pretend = 0, frame = 0
 594              		@ frame_needed = 0, uses_anonymous_args = 0
 595              	.LVL56:
 596 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 597              		.cfi_def_cfa_offset 24
 598              		.cfi_offset 4, -24
 599              		.cfi_offset 5, -20
 600              		.cfi_offset 6, -16
 601              		.cfi_offset 7, -12
 602              		.cfi_offset 8, -8
 603              		.cfi_offset 14, -4
 353:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_date = 0;
 354:../asf/sam/drivers/rtc/rtc.c **** 
 355:../asf/sam/drivers/rtc/rtc.c **** 	/* Cent */
 356:../asf/sam/drivers/rtc/rtc.c **** 	ul_date |= ((ul_year / BCD_FACTOR / BCD_FACTOR / BCD_FACTOR) <<
 357:../asf/sam/drivers/rtc/rtc.c **** 			(RTC_CALR_CENT_Pos + BCD_SHIFT) |
 358:../asf/sam/drivers/rtc/rtc.c **** 			((ul_year / BCD_FACTOR / BCD_FACTOR) % BCD_FACTOR) <<  RTC_CALR_CENT_Pos);
 359:../asf/sam/drivers/rtc/rtc.c **** 
 360:../asf/sam/drivers/rtc/rtc.c **** 	/* Year */
 361:../asf/sam/drivers/rtc/rtc.c **** 	ul_date |= (((ul_year / BCD_FACTOR) % BCD_FACTOR) <<
 362:../asf/sam/drivers/rtc/rtc.c **** 			(RTC_CALR_YEAR_Pos + BCD_SHIFT)) |
 363:../asf/sam/drivers/rtc/rtc.c **** 			((ul_year % BCD_FACTOR) << RTC_CALR_YEAR_Pos);
 364:../asf/sam/drivers/rtc/rtc.c **** 
 365:../asf/sam/drivers/rtc/rtc.c **** 	/* Month */
 366:../asf/sam/drivers/rtc/rtc.c **** 	ul_date |= ((ul_month / BCD_FACTOR) << (RTC_CALR_MONTH_Pos + BCD_SHIFT)) |
 367:../asf/sam/drivers/rtc/rtc.c **** 			((ul_month % BCD_FACTOR) << RTC_CALR_MONTH_Pos);
 368:../asf/sam/drivers/rtc/rtc.c **** 
 369:../asf/sam/drivers/rtc/rtc.c **** 	/* Week */
 370:../asf/sam/drivers/rtc/rtc.c **** 	ul_date |= (ul_week << RTC_CALR_DAY_Pos);
 371:../asf/sam/drivers/rtc/rtc.c **** 
 372:../asf/sam/drivers/rtc/rtc.c **** 	/* Day */
 373:../asf/sam/drivers/rtc/rtc.c **** 	ul_date |= ((ul_day / BCD_FACTOR) << (RTC_CALR_DATE_Pos + BCD_SHIFT)) |
 604              		.loc 1 373 0
 605 0004 2A4D     		ldr	r5, .L101
 358:../asf/sam/drivers/rtc/rtc.c **** 
 606              		.loc 1 358 0
 607 0006 2B4E     		ldr	r6, .L101+4
 608              		.loc 1 373 0
 609 0008 A5FB0347 		umull	r4, r7, r5, r3
 352:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_date = 0;
 610              		.loc 1 352 0
 611 000c 069C     		ldr	r4, [sp, #24]
 612              	.LVL57:
 358:../asf/sam/drivers/rtc/rtc.c **** 
 613              		.loc 1 358 0
 614 000e A6FB01E6 		umull	lr, r6, r6, r1
 615              		.loc 1 373 0
 616 0012 FF08     		lsrs	r7, r7, #3
 366:../asf/sam/drivers/rtc/rtc.c **** 			((ul_month % BCD_FACTOR) << RTC_CALR_MONTH_Pos);
 617              		.loc 1 366 0
 618 0014 A5FB028E 		umull	r8, lr, r5, r2
 370:../asf/sam/drivers/rtc/rtc.c **** 
 619              		.loc 1 370 0
 620 0018 6405     		lsls	r4, r4, #21
ARM GAS  /tmp/ccmZuGH1.s 			page 19


 621              	.LVL58:
 374:../asf/sam/drivers/rtc/rtc.c **** 			((ul_day % BCD_FACTOR) << RTC_CALR_DATE_Pos);
 622              		.loc 1 374 0
 623 001a 07EB870C 		add	ip, r7, r7, lsl #2
 373:../asf/sam/drivers/rtc/rtc.c **** 			((ul_day % BCD_FACTOR) << RTC_CALR_DATE_Pos);
 624              		.loc 1 373 0
 625 001e 44EA0774 		orr	r4, r4, r7, lsl #28
 366:../asf/sam/drivers/rtc/rtc.c **** 			((ul_month % BCD_FACTOR) << RTC_CALR_MONTH_Pos);
 626              		.loc 1 366 0
 627 0022 4FEADE0E 		lsr	lr, lr, #3
 628              		.loc 1 374 0
 629 0026 A3EB4C03 		sub	r3, r3, ip, lsl #1
 630              	.LVL59:
 358:../asf/sam/drivers/rtc/rtc.c **** 
 631              		.loc 1 358 0
 632 002a 7609     		lsrs	r6, r6, #5
 367:../asf/sam/drivers/rtc/rtc.c **** 
 633              		.loc 1 367 0
 634 002c 0EEB8E0C 		add	ip, lr, lr, lsl #2
 373:../asf/sam/drivers/rtc/rtc.c **** 			((ul_day % BCD_FACTOR) << RTC_CALR_DATE_Pos);
 635              		.loc 1 373 0
 636 0030 44EA0363 		orr	r3, r4, r3, lsl #24
 356:../asf/sam/drivers/rtc/rtc.c **** 			(RTC_CALR_CENT_Pos + BCD_SHIFT) |
 637              		.loc 1 356 0
 638 0034 204C     		ldr	r4, .L101+8
 358:../asf/sam/drivers/rtc/rtc.c **** 
 639              		.loc 1 358 0
 640 0036 A5FB0687 		umull	r8, r7, r5, r6
 367:../asf/sam/drivers/rtc/rtc.c **** 
 641              		.loc 1 367 0
 642 003a A2EB4C02 		sub	r2, r2, ip, lsl #1
 643              	.LVL60:
 373:../asf/sam/drivers/rtc/rtc.c **** 			((ul_day % BCD_FACTOR) << RTC_CALR_DATE_Pos);
 644              		.loc 1 373 0
 645 003e 43EA0E53 		orr	r3, r3, lr, lsl #20
 356:../asf/sam/drivers/rtc/rtc.c **** 			(RTC_CALR_CENT_Pos + BCD_SHIFT) |
 646              		.loc 1 356 0
 647 0042 A4FB014E 		umull	r4, lr, r4, r1
 363:../asf/sam/drivers/rtc/rtc.c **** 
 648              		.loc 1 363 0
 649 0046 A5FB01C4 		umull	ip, r4, r5, r1
 358:../asf/sam/drivers/rtc/rtc.c **** 
 650              		.loc 1 358 0
 651 004a FF08     		lsrs	r7, r7, #3
 373:../asf/sam/drivers/rtc/rtc.c **** 			((ul_day % BCD_FACTOR) << RTC_CALR_DATE_Pos);
 652              		.loc 1 373 0
 653 004c 43EA0242 		orr	r2, r3, r2, lsl #16
 363:../asf/sam/drivers/rtc/rtc.c **** 
 654              		.loc 1 363 0
 655 0050 E408     		lsrs	r4, r4, #3
 356:../asf/sam/drivers/rtc/rtc.c **** 			(RTC_CALR_CENT_Pos + BCD_SHIFT) |
 656              		.loc 1 356 0
 657 0052 4FEA9E13 		lsr	r3, lr, #6
 358:../asf/sam/drivers/rtc/rtc.c **** 
 658              		.loc 1 358 0
 659 0056 07EB8707 		add	r7, r7, r7, lsl #2
 361:../asf/sam/drivers/rtc/rtc.c **** 			(RTC_CALR_YEAR_Pos + BCD_SHIFT)) |
ARM GAS  /tmp/ccmZuGH1.s 			page 20


 660              		.loc 1 361 0
 661 005a A5FB04E5 		umull	lr, r5, r5, r4
 373:../asf/sam/drivers/rtc/rtc.c **** 			((ul_day % BCD_FACTOR) << RTC_CALR_DATE_Pos);
 662              		.loc 1 373 0
 663 005e 42EA0312 		orr	r2, r2, r3, lsl #4
 358:../asf/sam/drivers/rtc/rtc.c **** 
 664              		.loc 1 358 0
 665 0062 A6EB4707 		sub	r7, r6, r7, lsl #1
 361:../asf/sam/drivers/rtc/rtc.c **** 			(RTC_CALR_YEAR_Pos + BCD_SHIFT)) |
 666              		.loc 1 361 0
 667 0066 ED08     		lsrs	r5, r5, #3
 363:../asf/sam/drivers/rtc/rtc.c **** 
 668              		.loc 1 363 0
 669 0068 04EB8403 		add	r3, r4, r4, lsl #2
 373:../asf/sam/drivers/rtc/rtc.c **** 			((ul_day % BCD_FACTOR) << RTC_CALR_DATE_Pos);
 670              		.loc 1 373 0
 671 006c 3A43     		orrs	r2, r2, r7
 361:../asf/sam/drivers/rtc/rtc.c **** 			(RTC_CALR_YEAR_Pos + BCD_SHIFT)) |
 672              		.loc 1 361 0
 673 006e 05EB8505 		add	r5, r5, r5, lsl #2
 363:../asf/sam/drivers/rtc/rtc.c **** 
 674              		.loc 1 363 0
 675 0072 A1EB4301 		sub	r1, r1, r3, lsl #1
 676              	.LVL61:
 361:../asf/sam/drivers/rtc/rtc.c **** 			(RTC_CALR_YEAR_Pos + BCD_SHIFT)) |
 677              		.loc 1 361 0
 678 0076 A4EB4505 		sub	r5, r4, r5, lsl #1
 373:../asf/sam/drivers/rtc/rtc.c **** 			((ul_day % BCD_FACTOR) << RTC_CALR_DATE_Pos);
 679              		.loc 1 373 0
 680 007a 42EA0122 		orr	r2, r2, r1, lsl #8
 681 007e 42EA0532 		orr	r2, r2, r5, lsl #12
 682              	.LVL62:
 683              	.L94:
 375:../asf/sam/drivers/rtc/rtc.c **** 
 376:../asf/sam/drivers/rtc/rtc.c **** 	/* Update calendar register. Check the spec for the flow. */
 377:../asf/sam/drivers/rtc/rtc.c **** 	while ((p_rtc->RTC_SR & RTC_SR_SEC) != RTC_SR_SEC);
 684              		.loc 1 377 0 discriminator 1
 685 0082 8369     		ldr	r3, [r0, #24]
 686 0084 5907     		lsls	r1, r3, #29
 687 0086 FCD5     		bpl	.L94
 378:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CR |= RTC_CR_UPDCAL;
 688              		.loc 1 378 0
 689 0088 0368     		ldr	r3, [r0]
 690 008a 43F00203 		orr	r3, r3, #2
 691 008e 0360     		str	r3, [r0]
 692              	.L95:
 379:../asf/sam/drivers/rtc/rtc.c **** 	while ((p_rtc->RTC_SR & RTC_SR_ACKUPD) != RTC_SR_ACKUPD);
 693              		.loc 1 379 0 discriminator 1
 694 0090 8369     		ldr	r3, [r0, #24]
 695 0092 DB07     		lsls	r3, r3, #31
 696 0094 FCD5     		bpl	.L95
 380:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_SCCR = RTC_SCCR_ACKCLR;
 697              		.loc 1 380 0
 698 0096 0123     		movs	r3, #1
 699 0098 C361     		str	r3, [r0, #28]
 381:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CALR = ul_date;
 700              		.loc 1 381 0
ARM GAS  /tmp/ccmZuGH1.s 			page 21


 701 009a C260     		str	r2, [r0, #12]
 382:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CR &= (~RTC_CR_UPDCAL);
 702              		.loc 1 382 0
 703 009c 0368     		ldr	r3, [r0]
 704 009e 23F00203 		bic	r3, r3, #2
 705 00a2 0360     		str	r3, [r0]
 383:../asf/sam/drivers/rtc/rtc.c **** 
 384:../asf/sam/drivers/rtc/rtc.c **** 	return (p_rtc->RTC_VER & RTC_VER_NVCAL);
 706              		.loc 1 384 0
 707 00a4 C06A     		ldr	r0, [r0, #44]
 708              	.LVL63:
 385:../asf/sam/drivers/rtc/rtc.c **** }
 709              		.loc 1 385 0
 710 00a6 00F00200 		and	r0, r0, #2
 711 00aa BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 712              	.LVL64:
 713              	.L102:
 714 00ae 00BF     		.align	2
 715              	.L101:
 716 00b0 CDCCCCCC 		.word	-858993459
 717 00b4 1F85EB51 		.word	1374389535
 718 00b8 D34D6210 		.word	274877907
 719              		.cfi_endproc
 720              	.LFE151:
 721              		.size	rtc_set_date, .-rtc_set_date
 722              		.section	.text.rtc_set_date_alarm,"ax",%progbits
 723              		.align	1
 724              		.p2align 2,,3
 725              		.global	rtc_set_date_alarm
 726              		.syntax unified
 727              		.thumb
 728              		.thumb_func
 729              		.fpu fpv5-d16
 730              		.type	rtc_set_date_alarm, %function
 731              	rtc_set_date_alarm:
 732              	.LFB152:
 386:../asf/sam/drivers/rtc/rtc.c **** 
 387:../asf/sam/drivers/rtc/rtc.c **** /**
 388:../asf/sam/drivers/rtc/rtc.c ****  * \brief Set the RTC alarm date value.
 389:../asf/sam/drivers/rtc/rtc.c ****  *
 390:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 391:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_month_flag 1 for setting, 0 for not setting.
 392:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_month Alarm month value.
 393:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_day_flag 1 for setting, 0 for not setting.
 394:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_day Alarm day value.
 395:../asf/sam/drivers/rtc/rtc.c ****  *
 396:../asf/sam/drivers/rtc/rtc.c ****  * \return 0 for OK, else invalid setting.
 397:../asf/sam/drivers/rtc/rtc.c ****  */
 398:../asf/sam/drivers/rtc/rtc.c **** uint32_t rtc_set_date_alarm(Rtc *p_rtc,
 399:../asf/sam/drivers/rtc/rtc.c **** 		uint32_t ul_month_flag, uint32_t ul_month,
 400:../asf/sam/drivers/rtc/rtc.c **** 		uint32_t ul_day_flag, uint32_t ul_day)
 401:../asf/sam/drivers/rtc/rtc.c **** {
 733              		.loc 1 401 0
 734              		.cfi_startproc
 735              		@ args = 4, pretend = 0, frame = 0
 736              		@ frame_needed = 0, uses_anonymous_args = 0
 737              		@ link register save eliminated.
ARM GAS  /tmp/ccmZuGH1.s 			page 22


 738              	.LVL65:
 739 0000 30B4     		push	{r4, r5}
 740              		.cfi_def_cfa_offset 8
 741              		.cfi_offset 4, -8
 742              		.cfi_offset 5, -4
 743              		.loc 1 401 0
 744 0002 029C     		ldr	r4, [sp, #8]
 402:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_alarm = 0;
 403:../asf/sam/drivers/rtc/rtc.c **** 
 404:../asf/sam/drivers/rtc/rtc.c **** 	/* Month alarm setting */
 405:../asf/sam/drivers/rtc/rtc.c **** 	if (ul_month_flag) {
 745              		.loc 1 405 0
 746 0004 51B1     		cbz	r1, .L104
 406:../asf/sam/drivers/rtc/rtc.c **** 		ul_alarm |= ((ul_month / BCD_FACTOR) << (RTC_CALR_MONTH_Pos + BCD_SHIFT)) |
 747              		.loc 1 406 0
 748 0006 1349     		ldr	r1, .L113
 749              	.LVL66:
 750 0008 A1FB0251 		umull	r5, r1, r1, r2
 751 000c C908     		lsrs	r1, r1, #3
 407:../asf/sam/drivers/rtc/rtc.c **** 				((ul_month % BCD_FACTOR) << RTC_CALR_MONTH_Pos);
 752              		.loc 1 407 0
 753 000e 01EB8105 		add	r5, r1, r1, lsl #2
 754 0012 A2EB4502 		sub	r2, r2, r5, lsl #1
 755              	.LVL67:
 756 0016 1204     		lsls	r2, r2, #16
 406:../asf/sam/drivers/rtc/rtc.c **** 		ul_alarm |= ((ul_month / BCD_FACTOR) << (RTC_CALR_MONTH_Pos + BCD_SHIFT)) |
 757              		.loc 1 406 0
 758 0018 42EA0151 		orr	r1, r2, r1, lsl #20
 759              	.LVL68:
 760              	.L104:
 408:../asf/sam/drivers/rtc/rtc.c **** 	}
 409:../asf/sam/drivers/rtc/rtc.c **** 
 410:../asf/sam/drivers/rtc/rtc.c **** 	/* Day alarm setting */
 411:../asf/sam/drivers/rtc/rtc.c **** 	if (ul_day_flag) {
 761              		.loc 1 411 0
 762 001c 5BB1     		cbz	r3, .L105
 412:../asf/sam/drivers/rtc/rtc.c **** 		ul_alarm |= ((ul_day / BCD_FACTOR) << (RTC_CALR_DATE_Pos + BCD_SHIFT)) |
 763              		.loc 1 412 0
 764 001e 0D4A     		ldr	r2, .L113
 765 0020 A2FB0432 		umull	r3, r2, r2, r4
 766              	.LVL69:
 767 0024 D208     		lsrs	r2, r2, #3
 413:../asf/sam/drivers/rtc/rtc.c **** 				((ul_day % BCD_FACTOR) << RTC_CALR_DATE_Pos);
 768              		.loc 1 413 0
 769 0026 02EB8203 		add	r3, r2, r2, lsl #2
 770 002a A4EB4303 		sub	r3, r4, r3, lsl #1
 771 002e 1B06     		lsls	r3, r3, #24
 412:../asf/sam/drivers/rtc/rtc.c **** 		ul_alarm |= ((ul_day / BCD_FACTOR) << (RTC_CALR_DATE_Pos + BCD_SHIFT)) |
 772              		.loc 1 412 0
 773 0030 43EA0273 		orr	r3, r3, r2, lsl #28
 774 0034 1943     		orrs	r1, r1, r3
 775              	.LVL70:
 776              	.L105:
 414:../asf/sam/drivers/rtc/rtc.c **** 	}
 415:../asf/sam/drivers/rtc/rtc.c **** 
 416:../asf/sam/drivers/rtc/rtc.c **** 	/* Set alarm */
 417:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CALALR &= ~(RTC_CALALR_MTHEN | RTC_CALALR_DATEEN);
ARM GAS  /tmp/ccmZuGH1.s 			page 23


 777              		.loc 1 417 0
 778 0036 4469     		ldr	r4, [r0, #20]
 779 0038 074A     		ldr	r2, .L113+4
 418:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CALALR = ul_alarm;
 419:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CALALR |= (RTC_CALALR_MTHEN | RTC_CALALR_DATEEN);
 780              		.loc 1 419 0
 781 003a 084B     		ldr	r3, .L113+8
 417:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CALALR = ul_alarm;
 782              		.loc 1 417 0
 783 003c 2240     		ands	r2, r2, r4
 784 003e 4261     		str	r2, [r0, #20]
 418:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CALALR = ul_alarm;
 785              		.loc 1 418 0
 786 0040 4161     		str	r1, [r0, #20]
 787              		.loc 1 419 0
 788 0042 4269     		ldr	r2, [r0, #20]
 789 0044 1343     		orrs	r3, r3, r2
 790 0046 4361     		str	r3, [r0, #20]
 420:../asf/sam/drivers/rtc/rtc.c **** 
 421:../asf/sam/drivers/rtc/rtc.c **** 	return (p_rtc->RTC_VER & RTC_VER_NVCALALR);
 791              		.loc 1 421 0
 792 0048 C06A     		ldr	r0, [r0, #44]
 793              	.LVL71:
 422:../asf/sam/drivers/rtc/rtc.c **** }
 794              		.loc 1 422 0
 795 004a 30BC     		pop	{r4, r5}
 796              		.cfi_restore 5
 797              		.cfi_restore 4
 798              		.cfi_def_cfa_offset 0
 799              	.LVL72:
 800 004c 00F00800 		and	r0, r0, #8
 801 0050 7047     		bx	lr
 802              	.L114:
 803 0052 00BF     		.align	2
 804              	.L113:
 805 0054 CDCCCCCC 		.word	-858993459
 806 0058 FFFF7F7F 		.word	2139095039
 807 005c 00008080 		.word	-2139095040
 808              		.cfi_endproc
 809              	.LFE152:
 810              		.size	rtc_set_date_alarm, .-rtc_set_date_alarm
 811              		.section	.text.rtc_clear_time_alarm,"ax",%progbits
 812              		.align	1
 813              		.p2align 2,,3
 814              		.global	rtc_clear_time_alarm
 815              		.syntax unified
 816              		.thumb
 817              		.thumb_func
 818              		.fpu fpv5-d16
 819              		.type	rtc_clear_time_alarm, %function
 820              	rtc_clear_time_alarm:
 821              	.LFB153:
 423:../asf/sam/drivers/rtc/rtc.c **** 
 424:../asf/sam/drivers/rtc/rtc.c **** /**
 425:../asf/sam/drivers/rtc/rtc.c ****  * \brief Clear the RTC time alarm setting.
 426:../asf/sam/drivers/rtc/rtc.c ****  *
 427:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
ARM GAS  /tmp/ccmZuGH1.s 			page 24


 428:../asf/sam/drivers/rtc/rtc.c ****  */
 429:../asf/sam/drivers/rtc/rtc.c **** void rtc_clear_time_alarm(Rtc *p_rtc)
 430:../asf/sam/drivers/rtc/rtc.c **** {
 822              		.loc 1 430 0
 823              		.cfi_startproc
 824              		@ args = 0, pretend = 0, frame = 0
 825              		@ frame_needed = 0, uses_anonymous_args = 0
 826              		@ link register save eliminated.
 827              	.LVL73:
 431:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_TIMALR = 0;
 828              		.loc 1 431 0
 829 0000 0023     		movs	r3, #0
 830 0002 0361     		str	r3, [r0, #16]
 831 0004 7047     		bx	lr
 832              		.cfi_endproc
 833              	.LFE153:
 834              		.size	rtc_clear_time_alarm, .-rtc_clear_time_alarm
 835 0006 00BF     		.section	.text.rtc_clear_date_alarm,"ax",%progbits
 836              		.align	1
 837              		.p2align 2,,3
 838              		.global	rtc_clear_date_alarm
 839              		.syntax unified
 840              		.thumb
 841              		.thumb_func
 842              		.fpu fpv5-d16
 843              		.type	rtc_clear_date_alarm, %function
 844              	rtc_clear_date_alarm:
 845              	.LFB154:
 432:../asf/sam/drivers/rtc/rtc.c **** }
 433:../asf/sam/drivers/rtc/rtc.c **** 
 434:../asf/sam/drivers/rtc/rtc.c **** /**
 435:../asf/sam/drivers/rtc/rtc.c ****  * \brief Clear the RTC date alarm setting.
 436:../asf/sam/drivers/rtc/rtc.c ****  *
 437:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 438:../asf/sam/drivers/rtc/rtc.c ****  */
 439:../asf/sam/drivers/rtc/rtc.c **** void rtc_clear_date_alarm(Rtc *p_rtc)
 440:../asf/sam/drivers/rtc/rtc.c **** {
 846              		.loc 1 440 0
 847              		.cfi_startproc
 848              		@ args = 0, pretend = 0, frame = 0
 849              		@ frame_needed = 0, uses_anonymous_args = 0
 850              		@ link register save eliminated.
 851              	.LVL74:
 441:../asf/sam/drivers/rtc/rtc.c **** 	/* Need a valid value without enabling */
 442:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CALALR = RTC_CALALR_MONTH(0x01) | RTC_CALALR_DATE(0x01);
 852              		.loc 1 442 0
 853 0000 014B     		ldr	r3, .L117
 854 0002 4361     		str	r3, [r0, #20]
 855 0004 7047     		bx	lr
 856              	.L118:
 857 0006 00BF     		.align	2
 858              	.L117:
 859 0008 00000101 		.word	16842752
 860              		.cfi_endproc
 861              	.LFE154:
 862              		.size	rtc_clear_date_alarm, .-rtc_clear_date_alarm
 863              		.section	.text.rtc_get_status,"ax",%progbits
ARM GAS  /tmp/ccmZuGH1.s 			page 25


 864              		.align	1
 865              		.p2align 2,,3
 866              		.global	rtc_get_status
 867              		.syntax unified
 868              		.thumb
 869              		.thumb_func
 870              		.fpu fpv5-d16
 871              		.type	rtc_get_status, %function
 872              	rtc_get_status:
 873              	.LFB155:
 443:../asf/sam/drivers/rtc/rtc.c **** }
 444:../asf/sam/drivers/rtc/rtc.c **** 
 445:../asf/sam/drivers/rtc/rtc.c **** /**
 446:../asf/sam/drivers/rtc/rtc.c ****  * \brief Get the RTC status.
 447:../asf/sam/drivers/rtc/rtc.c ****  *
 448:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 449:../asf/sam/drivers/rtc/rtc.c ****  *
 450:../asf/sam/drivers/rtc/rtc.c ****  * \return Status of the RTC.
 451:../asf/sam/drivers/rtc/rtc.c ****  */
 452:../asf/sam/drivers/rtc/rtc.c **** uint32_t rtc_get_status(Rtc *p_rtc)
 453:../asf/sam/drivers/rtc/rtc.c **** {
 874              		.loc 1 453 0
 875              		.cfi_startproc
 876              		@ args = 0, pretend = 0, frame = 0
 877              		@ frame_needed = 0, uses_anonymous_args = 0
 878              		@ link register save eliminated.
 879              	.LVL75:
 454:../asf/sam/drivers/rtc/rtc.c **** 	return (p_rtc->RTC_SR);
 880              		.loc 1 454 0
 881 0000 8069     		ldr	r0, [r0, #24]
 882              	.LVL76:
 455:../asf/sam/drivers/rtc/rtc.c **** }
 883              		.loc 1 455 0
 884 0002 7047     		bx	lr
 885              		.cfi_endproc
 886              	.LFE155:
 887              		.size	rtc_get_status, .-rtc_get_status
 888              		.section	.text.rtc_clear_status,"ax",%progbits
 889              		.align	1
 890              		.p2align 2,,3
 891              		.global	rtc_clear_status
 892              		.syntax unified
 893              		.thumb
 894              		.thumb_func
 895              		.fpu fpv5-d16
 896              		.type	rtc_clear_status, %function
 897              	rtc_clear_status:
 898              	.LFB156:
 456:../asf/sam/drivers/rtc/rtc.c **** 
 457:../asf/sam/drivers/rtc/rtc.c **** /**
 458:../asf/sam/drivers/rtc/rtc.c ****  * \brief Set the RTC SCCR to clear status bits.
 459:../asf/sam/drivers/rtc/rtc.c ****  *
 460:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 461:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_clear Some flag bits which will be cleared.
 462:../asf/sam/drivers/rtc/rtc.c ****  */
 463:../asf/sam/drivers/rtc/rtc.c **** void rtc_clear_status(Rtc *p_rtc, uint32_t ul_clear)
 464:../asf/sam/drivers/rtc/rtc.c **** {
ARM GAS  /tmp/ccmZuGH1.s 			page 26


 899              		.loc 1 464 0
 900              		.cfi_startproc
 901              		@ args = 0, pretend = 0, frame = 0
 902              		@ frame_needed = 0, uses_anonymous_args = 0
 903              		@ link register save eliminated.
 904              	.LVL77:
 465:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_SCCR = ul_clear;
 905              		.loc 1 465 0
 906 0000 C161     		str	r1, [r0, #28]
 907 0002 7047     		bx	lr
 908              		.cfi_endproc
 909              	.LFE156:
 910              		.size	rtc_clear_status, .-rtc_clear_status
 911              		.section	.text.rtc_get_valid_entry,"ax",%progbits
 912              		.align	1
 913              		.p2align 2,,3
 914              		.global	rtc_get_valid_entry
 915              		.syntax unified
 916              		.thumb
 917              		.thumb_func
 918              		.fpu fpv5-d16
 919              		.type	rtc_get_valid_entry, %function
 920              	rtc_get_valid_entry:
 921              	.LFB157:
 466:../asf/sam/drivers/rtc/rtc.c **** }
 467:../asf/sam/drivers/rtc/rtc.c **** 
 468:../asf/sam/drivers/rtc/rtc.c **** /**
 469:../asf/sam/drivers/rtc/rtc.c ****  * \brief Get the RTC valid entry.
 470:../asf/sam/drivers/rtc/rtc.c ****  *
 471:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 472:../asf/sam/drivers/rtc/rtc.c ****  *
 473:../asf/sam/drivers/rtc/rtc.c ****  * \return 0 for no invalid data, else has contained invalid data.
 474:../asf/sam/drivers/rtc/rtc.c ****  */
 475:../asf/sam/drivers/rtc/rtc.c **** uint32_t rtc_get_valid_entry(Rtc *p_rtc)
 476:../asf/sam/drivers/rtc/rtc.c **** {
 922              		.loc 1 476 0
 923              		.cfi_startproc
 924              		@ args = 0, pretend = 0, frame = 0
 925              		@ frame_needed = 0, uses_anonymous_args = 0
 926              		@ link register save eliminated.
 927              	.LVL78:
 477:../asf/sam/drivers/rtc/rtc.c **** 	return (p_rtc->RTC_VER);
 928              		.loc 1 477 0
 929 0000 C06A     		ldr	r0, [r0, #44]
 930              	.LVL79:
 478:../asf/sam/drivers/rtc/rtc.c **** }
 931              		.loc 1 478 0
 932 0002 7047     		bx	lr
 933              		.cfi_endproc
 934              	.LFE157:
 935              		.size	rtc_get_valid_entry, .-rtc_get_valid_entry
 936              		.section	.text.rtc_set_time_event,"ax",%progbits
 937              		.align	1
 938              		.p2align 2,,3
 939              		.global	rtc_set_time_event
 940              		.syntax unified
 941              		.thumb
ARM GAS  /tmp/ccmZuGH1.s 			page 27


 942              		.thumb_func
 943              		.fpu fpv5-d16
 944              		.type	rtc_set_time_event, %function
 945              	rtc_set_time_event:
 946              	.LFB158:
 479:../asf/sam/drivers/rtc/rtc.c **** 
 480:../asf/sam/drivers/rtc/rtc.c **** /**
 481:../asf/sam/drivers/rtc/rtc.c ****  * \brief Set the RTC time event selection.
 482:../asf/sam/drivers/rtc/rtc.c ****  *
 483:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 484:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_selection Time event selection to be enabled.
 485:../asf/sam/drivers/rtc/rtc.c ****  */
 486:../asf/sam/drivers/rtc/rtc.c **** void rtc_set_time_event(Rtc *p_rtc, uint32_t ul_selection)
 487:../asf/sam/drivers/rtc/rtc.c **** {
 947              		.loc 1 487 0
 948              		.cfi_startproc
 949              		@ args = 0, pretend = 0, frame = 0
 950              		@ frame_needed = 0, uses_anonymous_args = 0
 951              		@ link register save eliminated.
 952              	.LVL80:
 488:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CR &= ~RTC_CR_TIMEVSEL_Msk;
 953              		.loc 1 488 0
 954 0000 0368     		ldr	r3, [r0]
 489:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CR |= (ul_selection << RTC_CR_TIMEVSEL_Pos) & RTC_CR_TIMEVSEL_Msk;
 955              		.loc 1 489 0
 956 0002 0902     		lsls	r1, r1, #8
 957              	.LVL81:
 488:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CR &= ~RTC_CR_TIMEVSEL_Msk;
 958              		.loc 1 488 0
 959 0004 23F44073 		bic	r3, r3, #768
 960              		.loc 1 489 0
 961 0008 01F44071 		and	r1, r1, #768
 488:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CR &= ~RTC_CR_TIMEVSEL_Msk;
 962              		.loc 1 488 0
 963 000c 0360     		str	r3, [r0]
 964              		.loc 1 489 0
 965 000e 0368     		ldr	r3, [r0]
 966 0010 1943     		orrs	r1, r1, r3
 967 0012 0160     		str	r1, [r0]
 968 0014 7047     		bx	lr
 969              		.cfi_endproc
 970              	.LFE158:
 971              		.size	rtc_set_time_event, .-rtc_set_time_event
 972 0016 00BF     		.section	.text.rtc_set_calendar_event,"ax",%progbits
 973              		.align	1
 974              		.p2align 2,,3
 975              		.global	rtc_set_calendar_event
 976              		.syntax unified
 977              		.thumb
 978              		.thumb_func
 979              		.fpu fpv5-d16
 980              		.type	rtc_set_calendar_event, %function
 981              	rtc_set_calendar_event:
 982              	.LFB159:
 490:../asf/sam/drivers/rtc/rtc.c **** }
 491:../asf/sam/drivers/rtc/rtc.c **** 
 492:../asf/sam/drivers/rtc/rtc.c **** /**
ARM GAS  /tmp/ccmZuGH1.s 			page 28


 493:../asf/sam/drivers/rtc/rtc.c ****  * \brief Set the RTC calendar event selection.
 494:../asf/sam/drivers/rtc/rtc.c ****  *
 495:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 496:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_selection Calendar event selection to be enabled..
 497:../asf/sam/drivers/rtc/rtc.c ****  */
 498:../asf/sam/drivers/rtc/rtc.c **** void rtc_set_calendar_event(Rtc *p_rtc, uint32_t ul_selection)
 499:../asf/sam/drivers/rtc/rtc.c **** {
 983              		.loc 1 499 0
 984              		.cfi_startproc
 985              		@ args = 0, pretend = 0, frame = 0
 986              		@ frame_needed = 0, uses_anonymous_args = 0
 987              		@ link register save eliminated.
 988              	.LVL82:
 500:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CR &= ~RTC_CR_CALEVSEL_Msk;
 989              		.loc 1 500 0
 990 0000 0368     		ldr	r3, [r0]
 501:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CR |= (ul_selection << RTC_CR_CALEVSEL_Pos) & RTC_CR_CALEVSEL_Msk;
 991              		.loc 1 501 0
 992 0002 0904     		lsls	r1, r1, #16
 993              	.LVL83:
 500:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CR &= ~RTC_CR_CALEVSEL_Msk;
 994              		.loc 1 500 0
 995 0004 23F44033 		bic	r3, r3, #196608
 996              		.loc 1 501 0
 997 0008 01F44031 		and	r1, r1, #196608
 500:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_CR &= ~RTC_CR_CALEVSEL_Msk;
 998              		.loc 1 500 0
 999 000c 0360     		str	r3, [r0]
 1000              		.loc 1 501 0
 1001 000e 0368     		ldr	r3, [r0]
 1002 0010 1943     		orrs	r1, r1, r3
 1003 0012 0160     		str	r1, [r0]
 1004 0014 7047     		bx	lr
 1005              		.cfi_endproc
 1006              	.LFE159:
 1007              		.size	rtc_set_calendar_event, .-rtc_set_calendar_event
 1008 0016 00BF     		.section	.text.rtc_set_waveform,"ax",%progbits
 1009              		.align	1
 1010              		.p2align 2,,3
 1011              		.global	rtc_set_waveform
 1012              		.syntax unified
 1013              		.thumb
 1014              		.thumb_func
 1015              		.fpu fpv5-d16
 1016              		.type	rtc_set_waveform, %function
 1017              	rtc_set_waveform:
 1018              	.LFB160:
 502:../asf/sam/drivers/rtc/rtc.c **** }
 503:../asf/sam/drivers/rtc/rtc.c **** 
 504:../asf/sam/drivers/rtc/rtc.c **** #if ((SAM3S8) || (SAM3SD8) || (SAM4S) || (SAM4N) || (SAM4C) || (SAMG) || (SAM4CP) || (SAM4CM) || de
 505:../asf/sam/drivers/rtc/rtc.c **** /**
 506:../asf/sam/drivers/rtc/rtc.c ****  * \brief Set the RTC calendar mode.
 507:../asf/sam/drivers/rtc/rtc.c ****  *
 508:../asf/sam/drivers/rtc/rtc.c ****  * \note This function is only available on SAM3S8/3SD8/4S/4N/4C/G devices.
 509:../asf/sam/drivers/rtc/rtc.c ****  *
 510:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 511:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_mode 1 for Persian mode,0 for Gregorian mode.
ARM GAS  /tmp/ccmZuGH1.s 			page 29


 512:../asf/sam/drivers/rtc/rtc.c ****  */
 513:../asf/sam/drivers/rtc/rtc.c **** void rtc_set_calendar_mode(Rtc *p_rtc, uint32_t ul_mode)
 514:../asf/sam/drivers/rtc/rtc.c **** {
 515:../asf/sam/drivers/rtc/rtc.c **** 	if (ul_mode) {
 516:../asf/sam/drivers/rtc/rtc.c **** 		p_rtc->RTC_MR |= RTC_MR_PERSIAN;
 517:../asf/sam/drivers/rtc/rtc.c **** 	} else {
 518:../asf/sam/drivers/rtc/rtc.c **** 		p_rtc->RTC_MR &= (~RTC_MR_PERSIAN);
 519:../asf/sam/drivers/rtc/rtc.c **** 	}
 520:../asf/sam/drivers/rtc/rtc.c **** }
 521:../asf/sam/drivers/rtc/rtc.c **** 
 522:../asf/sam/drivers/rtc/rtc.c **** /**
 523:../asf/sam/drivers/rtc/rtc.c ****  * \brief Get the RTC calendar mode.
 524:../asf/sam/drivers/rtc/rtc.c ****  *
 525:../asf/sam/drivers/rtc/rtc.c ****  * \note This function is only available on SAM3S8/3SD8/4S/4N/4C/G devices.
 526:../asf/sam/drivers/rtc/rtc.c ****  *
 527:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 528:../asf/sam/drivers/rtc/rtc.c ****  *
 529:../asf/sam/drivers/rtc/rtc.c ****  * \return 1 for Persian calendar, 0 for Gregorian calendar.
 530:../asf/sam/drivers/rtc/rtc.c ****  */
 531:../asf/sam/drivers/rtc/rtc.c **** uint32_t rtc_get_calendar_mode(Rtc *p_rtc)
 532:../asf/sam/drivers/rtc/rtc.c **** {
 533:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_temp = p_rtc->RTC_MR;
 534:../asf/sam/drivers/rtc/rtc.c **** 
 535:../asf/sam/drivers/rtc/rtc.c **** 	if (ul_temp & RTC_MR_PERSIAN) {
 536:../asf/sam/drivers/rtc/rtc.c **** 		return 1;
 537:../asf/sam/drivers/rtc/rtc.c **** 	} else {
 538:../asf/sam/drivers/rtc/rtc.c **** 		return 0;
 539:../asf/sam/drivers/rtc/rtc.c **** 	}
 540:../asf/sam/drivers/rtc/rtc.c **** }
 541:../asf/sam/drivers/rtc/rtc.c **** 
 542:../asf/sam/drivers/rtc/rtc.c **** /**
 543:../asf/sam/drivers/rtc/rtc.c ****  * \brief Set the RTC calibration.
 544:../asf/sam/drivers/rtc/rtc.c ****  *
 545:../asf/sam/drivers/rtc/rtc.c ****  * \note This function is only available on SAM3S8/3SD8/4S/4N/4C/G devices.
 546:../asf/sam/drivers/rtc/rtc.c ****  *
 547:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 548:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_direction_ppm Positive/negative correction.
 549:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_correction Correction value.
 550:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_range_ppm Low/high range correction.
 551:../asf/sam/drivers/rtc/rtc.c ****  */
 552:../asf/sam/drivers/rtc/rtc.c **** void rtc_set_calibration(Rtc *p_rtc, uint32_t ul_direction_ppm,
 553:../asf/sam/drivers/rtc/rtc.c **** 		uint32_t ul_correction, uint32_t ul_range_ppm)
 554:../asf/sam/drivers/rtc/rtc.c **** {
 555:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_temp;
 556:../asf/sam/drivers/rtc/rtc.c **** 
 557:../asf/sam/drivers/rtc/rtc.c **** 	ul_temp = p_rtc->RTC_MR;
 558:../asf/sam/drivers/rtc/rtc.c **** 
 559:../asf/sam/drivers/rtc/rtc.c **** 	if (ul_direction_ppm) {
 560:../asf/sam/drivers/rtc/rtc.c **** 		ul_temp |= RTC_MR_NEGPPM;
 561:../asf/sam/drivers/rtc/rtc.c **** 	} else {
 562:../asf/sam/drivers/rtc/rtc.c **** 		ul_temp &= (~RTC_MR_NEGPPM);
 563:../asf/sam/drivers/rtc/rtc.c **** 	}
 564:../asf/sam/drivers/rtc/rtc.c **** 
 565:../asf/sam/drivers/rtc/rtc.c **** 	ul_temp &= (~RTC_MR_CORRECTION_Msk);
 566:../asf/sam/drivers/rtc/rtc.c **** 	ul_temp |= RTC_MR_CORRECTION(ul_correction);
 567:../asf/sam/drivers/rtc/rtc.c **** 
 568:../asf/sam/drivers/rtc/rtc.c **** 	if (ul_range_ppm) {
ARM GAS  /tmp/ccmZuGH1.s 			page 30


 569:../asf/sam/drivers/rtc/rtc.c **** 		ul_temp |= RTC_MR_HIGHPPM;
 570:../asf/sam/drivers/rtc/rtc.c **** 	} else {
 571:../asf/sam/drivers/rtc/rtc.c **** 		ul_temp &= (~RTC_MR_HIGHPPM);
 572:../asf/sam/drivers/rtc/rtc.c **** 	}
 573:../asf/sam/drivers/rtc/rtc.c **** 
 574:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_MR = ul_temp;
 575:../asf/sam/drivers/rtc/rtc.c **** }
 576:../asf/sam/drivers/rtc/rtc.c **** #endif
 577:../asf/sam/drivers/rtc/rtc.c **** 
 578:../asf/sam/drivers/rtc/rtc.c **** #if ((SAM3S8) || (SAM3SD8) || (SAM4S) || (SAM4C) || (SAMG) || (SAM4CP) || (SAM4CM) || SAMV71 || SAM
 579:../asf/sam/drivers/rtc/rtc.c **** /**
 580:../asf/sam/drivers/rtc/rtc.c ****  * \brief Set the RTC output waveform.
 581:../asf/sam/drivers/rtc/rtc.c ****  *
 582:../asf/sam/drivers/rtc/rtc.c ****  * \note This function is only available on SAM3S8/3SD8/4S/4C/G/V/S/E devices.
 583:../asf/sam/drivers/rtc/rtc.c ****  *
 584:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 585:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_channel Output channel selection.
 586:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_value Output source selection value.
 587:../asf/sam/drivers/rtc/rtc.c ****  */
 588:../asf/sam/drivers/rtc/rtc.c **** void rtc_set_waveform(Rtc *p_rtc, uint32_t ul_channel, uint32_t ul_value)
 589:../asf/sam/drivers/rtc/rtc.c **** {
 1019              		.loc 1 589 0
 1020              		.cfi_startproc
 1021              		@ args = 0, pretend = 0, frame = 0
 1022              		@ frame_needed = 0, uses_anonymous_args = 0
 1023              		@ link register save eliminated.
 1024              	.LVL84:
 590:../asf/sam/drivers/rtc/rtc.c **** 	if (ul_channel == 0) {
 1025              		.loc 1 590 0
 1026 0000 81B9     		cbnz	r1, .L125
 591:../asf/sam/drivers/rtc/rtc.c **** 		switch (ul_value) {
 1027              		.loc 1 591 0
 1028 0002 072A     		cmp	r2, #7
 1029 0004 0DD8     		bhi	.L124
 1030 0006 DFE802F0 		tbb	[pc, r2]
 1031              	.L128:
 1032 000a 23       		.byte	(.L127-.L128)/2
 1033 000b 2A       		.byte	(.L129-.L128)/2
 1034 000c 33       		.byte	(.L130-.L128)/2
 1035 000d 3C       		.byte	(.L131-.L128)/2
 1036 000e 45       		.byte	(.L132-.L128)/2
 1037 000f 4E       		.byte	(.L133-.L128)/2
 1038 0010 57       		.byte	(.L134-.L128)/2
 1039 0011 60       		.byte	(.L135-.L128)/2
 1040              		.p2align 1
 1041              	.L144:
 592:../asf/sam/drivers/rtc/rtc.c **** 		case 0:
 593:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT0_Msk;
 594:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_NO_WAVE;
 595:../asf/sam/drivers/rtc/rtc.c **** 			break;
 596:../asf/sam/drivers/rtc/rtc.c **** 
 597:../asf/sam/drivers/rtc/rtc.c **** 		case 1:
 598:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT0_Msk;
 599:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_FREQ1HZ;
 600:../asf/sam/drivers/rtc/rtc.c **** 			break;
 601:../asf/sam/drivers/rtc/rtc.c **** 
 602:../asf/sam/drivers/rtc/rtc.c **** 		case 2:
ARM GAS  /tmp/ccmZuGH1.s 			page 31


 603:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT0_Msk;
 604:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_FREQ32HZ;
 605:../asf/sam/drivers/rtc/rtc.c **** 			break;
 606:../asf/sam/drivers/rtc/rtc.c **** 
 607:../asf/sam/drivers/rtc/rtc.c **** 		case 3:
 608:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT0_Msk;
 609:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_FREQ64HZ;
 610:../asf/sam/drivers/rtc/rtc.c **** 			break;
 611:../asf/sam/drivers/rtc/rtc.c **** 
 612:../asf/sam/drivers/rtc/rtc.c **** 		case 4:
 613:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT0_Msk;
 614:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_FREQ512HZ;
 615:../asf/sam/drivers/rtc/rtc.c **** 			break;
 616:../asf/sam/drivers/rtc/rtc.c **** 
 617:../asf/sam/drivers/rtc/rtc.c **** #if (!SAMG)
 618:../asf/sam/drivers/rtc/rtc.c **** 		case 5:
 619:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT0_Msk;
 620:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_ALARM_TOGGLE;
 621:../asf/sam/drivers/rtc/rtc.c **** 			break;
 622:../asf/sam/drivers/rtc/rtc.c **** #endif
 623:../asf/sam/drivers/rtc/rtc.c **** 
 624:../asf/sam/drivers/rtc/rtc.c **** 		case 6:
 625:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT0_Msk;
 626:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_ALARM_FLAG;
 627:../asf/sam/drivers/rtc/rtc.c **** 			break;
 628:../asf/sam/drivers/rtc/rtc.c **** 
 629:../asf/sam/drivers/rtc/rtc.c **** #if (!SAMG)
 630:../asf/sam/drivers/rtc/rtc.c **** 		case 7:
 631:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT0_Msk;
 632:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_PROG_PULSE;
 633:../asf/sam/drivers/rtc/rtc.c **** 			break;
 634:../asf/sam/drivers/rtc/rtc.c **** #endif
 635:../asf/sam/drivers/rtc/rtc.c **** 
 636:../asf/sam/drivers/rtc/rtc.c **** 		default:
 637:../asf/sam/drivers/rtc/rtc.c **** 			break;
 638:../asf/sam/drivers/rtc/rtc.c **** 		}
 639:../asf/sam/drivers/rtc/rtc.c **** 	} else {
 640:../asf/sam/drivers/rtc/rtc.c **** 	#if (!SAM4C && !SAM4CP && !SAM4CM)
 641:../asf/sam/drivers/rtc/rtc.c **** 		switch (ul_value) {
 642:../asf/sam/drivers/rtc/rtc.c **** 		case 0:
 643:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT1_Msk;
 644:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT1_NO_WAVE;
 645:../asf/sam/drivers/rtc/rtc.c **** 			break;
 646:../asf/sam/drivers/rtc/rtc.c **** 
 647:../asf/sam/drivers/rtc/rtc.c **** 		case 1:
 648:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT1_Msk;
 649:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT1_FREQ1HZ;
 650:../asf/sam/drivers/rtc/rtc.c **** 			break;
 651:../asf/sam/drivers/rtc/rtc.c **** 
 652:../asf/sam/drivers/rtc/rtc.c **** 		case 2:
 653:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT1_Msk;
 654:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT1_FREQ32HZ;
 655:../asf/sam/drivers/rtc/rtc.c **** 			break;
 656:../asf/sam/drivers/rtc/rtc.c **** 
 657:../asf/sam/drivers/rtc/rtc.c **** 		case 3:
 658:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT1_Msk;
 659:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT1_FREQ64HZ;
ARM GAS  /tmp/ccmZuGH1.s 			page 32


 660:../asf/sam/drivers/rtc/rtc.c **** 			break;
 661:../asf/sam/drivers/rtc/rtc.c **** 
 662:../asf/sam/drivers/rtc/rtc.c **** 		case 4:
 663:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT1_Msk;
 664:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT1_FREQ512HZ;
 665:../asf/sam/drivers/rtc/rtc.c **** 			break;
 666:../asf/sam/drivers/rtc/rtc.c **** 
 667:../asf/sam/drivers/rtc/rtc.c **** #if (!SAMG)
 668:../asf/sam/drivers/rtc/rtc.c **** 		case 5:
 669:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT1_Msk;
 670:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT1_ALARM_TOGGLE;
 671:../asf/sam/drivers/rtc/rtc.c **** 			break;
 672:../asf/sam/drivers/rtc/rtc.c **** #endif
 673:../asf/sam/drivers/rtc/rtc.c **** 
 674:../asf/sam/drivers/rtc/rtc.c **** 		case 6:
 675:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT1_Msk;
 676:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT1_ALARM_FLAG;
 677:../asf/sam/drivers/rtc/rtc.c **** 			break;
 678:../asf/sam/drivers/rtc/rtc.c **** 
 679:../asf/sam/drivers/rtc/rtc.c **** #if (!SAMG)
 680:../asf/sam/drivers/rtc/rtc.c **** 		case 7:
 681:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR &= ~RTC_MR_OUT1_Msk;
 1042              		.loc 1 681 0
 1043 0012 4368     		ldr	r3, [r0, #4]
 1044 0014 23F4E003 		bic	r3, r3, #7340032
 1045 0018 4360     		str	r3, [r0, #4]
 682:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT1_PROG_PULSE;
 1046              		.loc 1 682 0
 1047 001a 4368     		ldr	r3, [r0, #4]
 1048 001c 43F4E003 		orr	r3, r3, #7340032
 1049 0020 4360     		str	r3, [r0, #4]
 1050              	.L124:
 1051 0022 7047     		bx	lr
 1052              	.L125:
 641:../asf/sam/drivers/rtc/rtc.c **** 		case 0:
 1053              		.loc 1 641 0
 1054 0024 072A     		cmp	r2, #7
 1055 0026 FCD8     		bhi	.L124
 1056 0028 01A3     		adr	r3, .L137
 1057 002a 53F822F0 		ldr	pc, [r3, r2, lsl #2]
 1058 002e 00BF     		.p2align 2
 1059              	.L137:
 1060 0030 DD000000 		.word	.L136+1
 1061 0034 EB000000 		.word	.L138+1
 1062 0038 FD000000 		.word	.L139+1
 1063 003c 0F010000 		.word	.L140+1
 1064 0040 21010000 		.word	.L141+1
 1065 0044 33010000 		.word	.L142+1
 1066 0048 45010000 		.word	.L143+1
 1067 004c 13000000 		.word	.L144+1
 1068              		.p2align 1
 1069              	.L127:
 593:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_NO_WAVE;
 1070              		.loc 1 593 0
 1071 0050 4368     		ldr	r3, [r0, #4]
 1072 0052 23F4E023 		bic	r3, r3, #458752
 1073 0056 4360     		str	r3, [r0, #4]
ARM GAS  /tmp/ccmZuGH1.s 			page 33


 594:../asf/sam/drivers/rtc/rtc.c **** 			break;
 1074              		.loc 1 594 0
 1075 0058 4368     		ldr	r3, [r0, #4]
 1076 005a 4360     		str	r3, [r0, #4]
 595:../asf/sam/drivers/rtc/rtc.c **** 
 1077              		.loc 1 595 0
 1078 005c 7047     		bx	lr
 1079              	.L129:
 598:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_FREQ1HZ;
 1080              		.loc 1 598 0
 1081 005e 4368     		ldr	r3, [r0, #4]
 1082 0060 23F4E023 		bic	r3, r3, #458752
 1083 0064 4360     		str	r3, [r0, #4]
 599:../asf/sam/drivers/rtc/rtc.c **** 			break;
 1084              		.loc 1 599 0
 1085 0066 4368     		ldr	r3, [r0, #4]
 1086 0068 43F48033 		orr	r3, r3, #65536
 1087 006c 4360     		str	r3, [r0, #4]
 600:../asf/sam/drivers/rtc/rtc.c **** 
 1088              		.loc 1 600 0
 1089 006e 7047     		bx	lr
 1090              	.L130:
 603:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_FREQ32HZ;
 1091              		.loc 1 603 0
 1092 0070 4368     		ldr	r3, [r0, #4]
 1093 0072 23F4E023 		bic	r3, r3, #458752
 1094 0076 4360     		str	r3, [r0, #4]
 604:../asf/sam/drivers/rtc/rtc.c **** 			break;
 1095              		.loc 1 604 0
 1096 0078 4368     		ldr	r3, [r0, #4]
 1097 007a 43F40033 		orr	r3, r3, #131072
 1098 007e 4360     		str	r3, [r0, #4]
 605:../asf/sam/drivers/rtc/rtc.c **** 
 1099              		.loc 1 605 0
 1100 0080 7047     		bx	lr
 1101              	.L131:
 608:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_FREQ64HZ;
 1102              		.loc 1 608 0
 1103 0082 4368     		ldr	r3, [r0, #4]
 1104 0084 23F4E023 		bic	r3, r3, #458752
 1105 0088 4360     		str	r3, [r0, #4]
 609:../asf/sam/drivers/rtc/rtc.c **** 			break;
 1106              		.loc 1 609 0
 1107 008a 4368     		ldr	r3, [r0, #4]
 1108 008c 43F44033 		orr	r3, r3, #196608
 1109 0090 4360     		str	r3, [r0, #4]
 610:../asf/sam/drivers/rtc/rtc.c **** 
 1110              		.loc 1 610 0
 1111 0092 7047     		bx	lr
 1112              	.L132:
 613:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_FREQ512HZ;
 1113              		.loc 1 613 0
 1114 0094 4368     		ldr	r3, [r0, #4]
 1115 0096 23F4E023 		bic	r3, r3, #458752
 1116 009a 4360     		str	r3, [r0, #4]
 614:../asf/sam/drivers/rtc/rtc.c **** 			break;
 1117              		.loc 1 614 0
ARM GAS  /tmp/ccmZuGH1.s 			page 34


 1118 009c 4368     		ldr	r3, [r0, #4]
 1119 009e 43F48023 		orr	r3, r3, #262144
 1120 00a2 4360     		str	r3, [r0, #4]
 615:../asf/sam/drivers/rtc/rtc.c **** 
 1121              		.loc 1 615 0
 1122 00a4 7047     		bx	lr
 1123              	.L133:
 619:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_ALARM_TOGGLE;
 1124              		.loc 1 619 0
 1125 00a6 4368     		ldr	r3, [r0, #4]
 1126 00a8 23F4E023 		bic	r3, r3, #458752
 1127 00ac 4360     		str	r3, [r0, #4]
 620:../asf/sam/drivers/rtc/rtc.c **** 			break;
 1128              		.loc 1 620 0
 1129 00ae 4368     		ldr	r3, [r0, #4]
 1130 00b0 43F4A023 		orr	r3, r3, #327680
 1131 00b4 4360     		str	r3, [r0, #4]
 621:../asf/sam/drivers/rtc/rtc.c **** #endif
 1132              		.loc 1 621 0
 1133 00b6 7047     		bx	lr
 1134              	.L134:
 625:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_ALARM_FLAG;
 1135              		.loc 1 625 0
 1136 00b8 4368     		ldr	r3, [r0, #4]
 1137 00ba 23F4E023 		bic	r3, r3, #458752
 1138 00be 4360     		str	r3, [r0, #4]
 626:../asf/sam/drivers/rtc/rtc.c **** 			break;
 1139              		.loc 1 626 0
 1140 00c0 4368     		ldr	r3, [r0, #4]
 1141 00c2 43F4C023 		orr	r3, r3, #393216
 1142 00c6 4360     		str	r3, [r0, #4]
 627:../asf/sam/drivers/rtc/rtc.c **** 
 1143              		.loc 1 627 0
 1144 00c8 7047     		bx	lr
 1145              	.L135:
 631:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT0_PROG_PULSE;
 1146              		.loc 1 631 0
 1147 00ca 4368     		ldr	r3, [r0, #4]
 1148 00cc 23F4E023 		bic	r3, r3, #458752
 1149 00d0 4360     		str	r3, [r0, #4]
 632:../asf/sam/drivers/rtc/rtc.c **** 			break;
 1150              		.loc 1 632 0
 1151 00d2 4368     		ldr	r3, [r0, #4]
 1152 00d4 43F4E023 		orr	r3, r3, #458752
 1153 00d8 4360     		str	r3, [r0, #4]
 633:../asf/sam/drivers/rtc/rtc.c **** #endif
 1154              		.loc 1 633 0
 1155 00da 7047     		bx	lr
 1156              	.L136:
 643:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT1_NO_WAVE;
 1157              		.loc 1 643 0
 1158 00dc 4368     		ldr	r3, [r0, #4]
 1159 00de 23F4E003 		bic	r3, r3, #7340032
 1160 00e2 4360     		str	r3, [r0, #4]
 644:../asf/sam/drivers/rtc/rtc.c **** 			break;
 1161              		.loc 1 644 0
 1162 00e4 4368     		ldr	r3, [r0, #4]
ARM GAS  /tmp/ccmZuGH1.s 			page 35


 1163 00e6 4360     		str	r3, [r0, #4]
 645:../asf/sam/drivers/rtc/rtc.c **** 
 1164              		.loc 1 645 0
 1165 00e8 7047     		bx	lr
 1166              	.L138:
 648:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT1_FREQ1HZ;
 1167              		.loc 1 648 0
 1168 00ea 4368     		ldr	r3, [r0, #4]
 1169 00ec 23F4E003 		bic	r3, r3, #7340032
 1170 00f0 4360     		str	r3, [r0, #4]
 649:../asf/sam/drivers/rtc/rtc.c **** 			break;
 1171              		.loc 1 649 0
 1172 00f2 4368     		ldr	r3, [r0, #4]
 1173 00f4 43F48013 		orr	r3, r3, #1048576
 1174 00f8 4360     		str	r3, [r0, #4]
 650:../asf/sam/drivers/rtc/rtc.c **** 
 1175              		.loc 1 650 0
 1176 00fa 7047     		bx	lr
 1177              	.L139:
 653:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT1_FREQ32HZ;
 1178              		.loc 1 653 0
 1179 00fc 4368     		ldr	r3, [r0, #4]
 1180 00fe 23F4E003 		bic	r3, r3, #7340032
 1181 0102 4360     		str	r3, [r0, #4]
 654:../asf/sam/drivers/rtc/rtc.c **** 			break;
 1182              		.loc 1 654 0
 1183 0104 4368     		ldr	r3, [r0, #4]
 1184 0106 43F40013 		orr	r3, r3, #2097152
 1185 010a 4360     		str	r3, [r0, #4]
 655:../asf/sam/drivers/rtc/rtc.c **** 
 1186              		.loc 1 655 0
 1187 010c 7047     		bx	lr
 1188              	.L140:
 658:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT1_FREQ64HZ;
 1189              		.loc 1 658 0
 1190 010e 4368     		ldr	r3, [r0, #4]
 1191 0110 23F4E003 		bic	r3, r3, #7340032
 1192 0114 4360     		str	r3, [r0, #4]
 659:../asf/sam/drivers/rtc/rtc.c **** 			break;
 1193              		.loc 1 659 0
 1194 0116 4368     		ldr	r3, [r0, #4]
 1195 0118 43F44013 		orr	r3, r3, #3145728
 1196 011c 4360     		str	r3, [r0, #4]
 660:../asf/sam/drivers/rtc/rtc.c **** 
 1197              		.loc 1 660 0
 1198 011e 7047     		bx	lr
 1199              	.L141:
 663:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT1_FREQ512HZ;
 1200              		.loc 1 663 0
 1201 0120 4368     		ldr	r3, [r0, #4]
 1202 0122 23F4E003 		bic	r3, r3, #7340032
 1203 0126 4360     		str	r3, [r0, #4]
 664:../asf/sam/drivers/rtc/rtc.c **** 			break;
 1204              		.loc 1 664 0
 1205 0128 4368     		ldr	r3, [r0, #4]
 1206 012a 43F48003 		orr	r3, r3, #4194304
 1207 012e 4360     		str	r3, [r0, #4]
ARM GAS  /tmp/ccmZuGH1.s 			page 36


 665:../asf/sam/drivers/rtc/rtc.c **** 
 1208              		.loc 1 665 0
 1209 0130 7047     		bx	lr
 1210              	.L142:
 669:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT1_ALARM_TOGGLE;
 1211              		.loc 1 669 0
 1212 0132 4368     		ldr	r3, [r0, #4]
 1213 0134 23F4E003 		bic	r3, r3, #7340032
 1214 0138 4360     		str	r3, [r0, #4]
 670:../asf/sam/drivers/rtc/rtc.c **** 			break;
 1215              		.loc 1 670 0
 1216 013a 4368     		ldr	r3, [r0, #4]
 1217 013c 43F4A003 		orr	r3, r3, #5242880
 1218 0140 4360     		str	r3, [r0, #4]
 671:../asf/sam/drivers/rtc/rtc.c **** #endif
 1219              		.loc 1 671 0
 1220 0142 7047     		bx	lr
 1221              	.L143:
 675:../asf/sam/drivers/rtc/rtc.c **** 			p_rtc->RTC_MR |= RTC_MR_OUT1_ALARM_FLAG;
 1222              		.loc 1 675 0
 1223 0144 4368     		ldr	r3, [r0, #4]
 1224 0146 23F4E003 		bic	r3, r3, #7340032
 1225 014a 4360     		str	r3, [r0, #4]
 676:../asf/sam/drivers/rtc/rtc.c **** 			break;
 1226              		.loc 1 676 0
 1227 014c 4368     		ldr	r3, [r0, #4]
 1228 014e 43F4C003 		orr	r3, r3, #6291456
 1229 0152 4360     		str	r3, [r0, #4]
 677:../asf/sam/drivers/rtc/rtc.c **** 
 1230              		.loc 1 677 0
 1231 0154 7047     		bx	lr
 1232              		.cfi_endproc
 1233              	.LFE160:
 1234              		.size	rtc_set_waveform, .-rtc_set_waveform
 1235 0156 00BF     		.section	.text.rtc_set_pulse_parameter,"ax",%progbits
 1236              		.align	1
 1237              		.p2align 2,,3
 1238              		.global	rtc_set_pulse_parameter
 1239              		.syntax unified
 1240              		.thumb
 1241              		.thumb_func
 1242              		.fpu fpv5-d16
 1243              		.type	rtc_set_pulse_parameter, %function
 1244              	rtc_set_pulse_parameter:
 1245              	.LFB161:
 683:../asf/sam/drivers/rtc/rtc.c **** 			break;
 684:../asf/sam/drivers/rtc/rtc.c **** #endif
 685:../asf/sam/drivers/rtc/rtc.c **** 
 686:../asf/sam/drivers/rtc/rtc.c **** 		default:
 687:../asf/sam/drivers/rtc/rtc.c **** 			break;
 688:../asf/sam/drivers/rtc/rtc.c **** 		}
 689:../asf/sam/drivers/rtc/rtc.c **** 	#endif
 690:../asf/sam/drivers/rtc/rtc.c **** 	}
 691:../asf/sam/drivers/rtc/rtc.c **** }
 692:../asf/sam/drivers/rtc/rtc.c **** 
 693:../asf/sam/drivers/rtc/rtc.c **** #if ((SAM3S8) || (SAM3SD8) || (SAM4S) || (SAM4C) || SAMV71 || SAMV70 || SAME70 || SAMS70 || defined
 694:../asf/sam/drivers/rtc/rtc.c **** /**
ARM GAS  /tmp/ccmZuGH1.s 			page 37


 695:../asf/sam/drivers/rtc/rtc.c ****  * \brief Set the pulse output waveform parameters.
 696:../asf/sam/drivers/rtc/rtc.c ****  *
 697:../asf/sam/drivers/rtc/rtc.c ****  * \note This function is only available on SAM3S8/3SD8/4S/4C/V/S/E devices.
 698:../asf/sam/drivers/rtc/rtc.c ****  *
 699:../asf/sam/drivers/rtc/rtc.c ****  * \param p_rtc Pointer to an RTC instance.
 700:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_time_high High duration of the output pulse.
 701:../asf/sam/drivers/rtc/rtc.c ****  * \param ul_period Period of the output pulse.
 702:../asf/sam/drivers/rtc/rtc.c ****  */
 703:../asf/sam/drivers/rtc/rtc.c **** void rtc_set_pulse_parameter(Rtc *p_rtc, uint32_t ul_time_high,
 704:../asf/sam/drivers/rtc/rtc.c **** 		uint32_t ul_period)
 705:../asf/sam/drivers/rtc/rtc.c **** {
 1246              		.loc 1 705 0
 1247              		.cfi_startproc
 1248              		@ args = 0, pretend = 0, frame = 0
 1249              		@ frame_needed = 0, uses_anonymous_args = 0
 1250              		@ link register save eliminated.
 1251              	.LVL85:
 706:../asf/sam/drivers/rtc/rtc.c **** 	uint32_t ul_temp;
 707:../asf/sam/drivers/rtc/rtc.c **** 
 708:../asf/sam/drivers/rtc/rtc.c **** 	ul_temp = p_rtc->RTC_MR;
 709:../asf/sam/drivers/rtc/rtc.c **** 
 710:../asf/sam/drivers/rtc/rtc.c **** 	ul_temp |= (RTC_MR_THIGH_Msk & ((ul_time_high) << RTC_MR_THIGH_Pos));
 1252              		.loc 1 710 0
 1253 0000 0906     		lsls	r1, r1, #24
 1254              	.LVL86:
 708:../asf/sam/drivers/rtc/rtc.c **** 
 1255              		.loc 1 708 0
 1256 0002 4368     		ldr	r3, [r0, #4]
 1257              	.LVL87:
 711:../asf/sam/drivers/rtc/rtc.c **** 	ul_temp |= (RTC_MR_TPERIOD_Msk & ((ul_period) << RTC_MR_TPERIOD_Pos));
 1258              		.loc 1 711 0
 1259 0004 1207     		lsls	r2, r2, #28
 1260              	.LVL88:
 710:../asf/sam/drivers/rtc/rtc.c **** 	ul_temp |= (RTC_MR_TPERIOD_Msk & ((ul_period) << RTC_MR_TPERIOD_Pos));
 1261              		.loc 1 710 0
 1262 0006 01F0E061 		and	r1, r1, #117440512
 1263              		.loc 1 711 0
 1264 000a 02F04052 		and	r2, r2, #805306368
 710:../asf/sam/drivers/rtc/rtc.c **** 	ul_temp |= (RTC_MR_TPERIOD_Msk & ((ul_period) << RTC_MR_TPERIOD_Pos));
 1265              		.loc 1 710 0
 1266 000e 1943     		orrs	r1, r1, r3
 1267              	.LVL89:
 1268              		.loc 1 711 0
 1269 0010 0A43     		orrs	r2, r2, r1
 1270              	.LVL90:
 712:../asf/sam/drivers/rtc/rtc.c **** 
 713:../asf/sam/drivers/rtc/rtc.c **** 	p_rtc->RTC_MR = ul_temp;
 1271              		.loc 1 713 0
 1272 0012 4260     		str	r2, [r0, #4]
 1273 0014 7047     		bx	lr
 1274              		.cfi_endproc
 1275              	.LFE161:
 1276              		.size	rtc_set_pulse_parameter, .-rtc_set_pulse_parameter
 1277 0016 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1278              		.align	2
 1279              		.type	cpu_irq_critical_section_counter, %object
 1280              		.size	cpu_irq_critical_section_counter, 4
ARM GAS  /tmp/ccmZuGH1.s 			page 38


 1281              	cpu_irq_critical_section_counter:
 1282 0000 00000000 		.space	4
 1283              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1284              		.type	cpu_irq_prev_interrupt_state, %object
 1285              		.size	cpu_irq_prev_interrupt_state, 1
 1286              	cpu_irq_prev_interrupt_state:
 1287 0000 00       		.space	1
 1288              		.text
 1289              	.Letext0:
 1290              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 1291              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 1292              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 1293              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 1294              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/rtc.
 1295              		.file 7 "/usr/include/newlib/sys/lock.h"
 1296              		.file 8 "/usr/include/newlib/sys/_types.h"
 1297              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 1298              		.file 10 "/usr/include/newlib/sys/reent.h"
 1299              		.file 11 "/usr/include/newlib/stdlib.h"
 1300              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 1301              		.section	.debug_info,"",%progbits
 1302              	.Ldebug_info0:
 1303 0000 7E0F0000 		.4byte	0xf7e
 1304 0004 0400     		.2byte	0x4
 1305 0006 00000000 		.4byte	.Ldebug_abbrev0
 1306 000a 04       		.byte	0x4
 1307 000b 01       		.uleb128 0x1
 1308 000c 5E040000 		.4byte	.LASF196
 1309 0010 0C       		.byte	0xc
 1310 0011 08050000 		.4byte	.LASF197
 1311 0015 72030000 		.4byte	.LASF198
 1312 0019 00000000 		.4byte	.Ldebug_ranges0+0
 1313 001d 00000000 		.4byte	0
 1314 0021 00000000 		.4byte	.Ldebug_line0
 1315 0025 02       		.uleb128 0x2
 1316 0026 04       		.byte	0x4
 1317 0027 07       		.byte	0x7
 1318 0028 F3060000 		.4byte	.LASF0
 1319 002c 03       		.uleb128 0x3
 1320 002d 04       		.byte	0x4
 1321 002e 05       		.byte	0x5
 1322 002f 696E7400 		.ascii	"int\000"
 1323 0033 02       		.uleb128 0x2
 1324 0034 01       		.byte	0x1
 1325 0035 06       		.byte	0x6
 1326 0036 1E010000 		.4byte	.LASF1
 1327 003a 02       		.uleb128 0x2
 1328 003b 01       		.byte	0x1
 1329 003c 08       		.byte	0x8
 1330 003d 72070000 		.4byte	.LASF2
 1331 0041 02       		.uleb128 0x2
 1332 0042 02       		.byte	0x2
 1333 0043 05       		.byte	0x5
 1334 0044 00000000 		.4byte	.LASF3
 1335 0048 02       		.uleb128 0x2
 1336 0049 02       		.byte	0x2
 1337 004a 07       		.byte	0x7
ARM GAS  /tmp/ccmZuGH1.s 			page 39


 1338 004b E5020000 		.4byte	.LASF4
 1339 004f 04       		.uleb128 0x4
 1340 0050 2E070000 		.4byte	.LASF6
 1341 0054 02       		.byte	0x2
 1342 0055 3F       		.byte	0x3f
 1343 0056 5A000000 		.4byte	0x5a
 1344 005a 02       		.uleb128 0x2
 1345 005b 04       		.byte	0x4
 1346 005c 05       		.byte	0x5
 1347 005d 8D010000 		.4byte	.LASF5
 1348 0061 04       		.uleb128 0x4
 1349 0062 23020000 		.4byte	.LASF7
 1350 0066 02       		.byte	0x2
 1351 0067 41       		.byte	0x41
 1352 0068 6C000000 		.4byte	0x6c
 1353 006c 02       		.uleb128 0x2
 1354 006d 04       		.byte	0x4
 1355 006e 07       		.byte	0x7
 1356 006f BE020000 		.4byte	.LASF8
 1357 0073 02       		.uleb128 0x2
 1358 0074 08       		.byte	0x8
 1359 0075 05       		.byte	0x5
 1360 0076 C3010000 		.4byte	.LASF9
 1361 007a 02       		.uleb128 0x2
 1362 007b 08       		.byte	0x8
 1363 007c 07       		.byte	0x7
 1364 007d A8000000 		.4byte	.LASF10
 1365 0081 04       		.uleb128 0x4
 1366 0082 BA050000 		.4byte	.LASF11
 1367 0086 03       		.byte	0x3
 1368 0087 2C       		.byte	0x2c
 1369 0088 4F000000 		.4byte	0x4f
 1370 008c 05       		.uleb128 0x5
 1371 008d 81000000 		.4byte	0x81
 1372 0091 04       		.uleb128 0x4
 1373 0092 C1060000 		.4byte	.LASF12
 1374 0096 03       		.byte	0x3
 1375 0097 30       		.byte	0x30
 1376 0098 61000000 		.4byte	0x61
 1377 009c 05       		.uleb128 0x5
 1378 009d 91000000 		.4byte	0x91
 1379 00a1 06       		.uleb128 0x6
 1380 00a2 9C000000 		.4byte	0x9c
 1381 00a6 07       		.uleb128 0x7
 1382 00a7 04       		.byte	0x4
 1383 00a8 02       		.uleb128 0x2
 1384 00a9 04       		.byte	0x4
 1385 00aa 07       		.byte	0x7
 1386 00ab 1C040000 		.4byte	.LASF13
 1387 00af 08       		.uleb128 0x8
 1388 00b0 D0000000 		.4byte	.LASF14
 1389 00b4 04       		.byte	0x4
 1390 00b5 6508     		.2byte	0x865
 1391 00b7 8C000000 		.4byte	0x8c
 1392 00bb 09       		.uleb128 0x9
 1393 00bc 90020000 		.4byte	.LASF15
 1394 00c0 05       		.byte	0x5
ARM GAS  /tmp/ccmZuGH1.s 			page 40


 1395 00c1 3A       		.byte	0x3a
 1396 00c2 91000000 		.4byte	0x91
 1397 00c6 0A       		.uleb128 0xa
 1398 00c7 30       		.byte	0x30
 1399 00c8 06       		.byte	0x6
 1400 00c9 38       		.byte	0x38
 1401 00ca 5F010000 		.4byte	0x15f
 1402 00ce 0B       		.uleb128 0xb
 1403 00cf 36010000 		.4byte	.LASF16
 1404 00d3 06       		.byte	0x6
 1405 00d4 39       		.byte	0x39
 1406 00d5 9C000000 		.4byte	0x9c
 1407 00d9 00       		.byte	0
 1408 00da 0B       		.uleb128 0xb
 1409 00db ED030000 		.4byte	.LASF17
 1410 00df 06       		.byte	0x6
 1411 00e0 3A       		.byte	0x3a
 1412 00e1 9C000000 		.4byte	0x9c
 1413 00e5 04       		.byte	0x4
 1414 00e6 0B       		.uleb128 0xb
 1415 00e7 38070000 		.4byte	.LASF18
 1416 00eb 06       		.byte	0x6
 1417 00ec 3B       		.byte	0x3b
 1418 00ed 9C000000 		.4byte	0x9c
 1419 00f1 08       		.byte	0x8
 1420 00f2 0B       		.uleb128 0xb
 1421 00f3 CE050000 		.4byte	.LASF19
 1422 00f7 06       		.byte	0x6
 1423 00f8 3C       		.byte	0x3c
 1424 00f9 9C000000 		.4byte	0x9c
 1425 00fd 0C       		.byte	0xc
 1426 00fe 0B       		.uleb128 0xb
 1427 00ff 0B090000 		.4byte	.LASF20
 1428 0103 06       		.byte	0x6
 1429 0104 3D       		.byte	0x3d
 1430 0105 9C000000 		.4byte	0x9c
 1431 0109 10       		.byte	0x10
 1432 010a 0B       		.uleb128 0xb
 1433 010b F4030000 		.4byte	.LASF21
 1434 010f 06       		.byte	0x6
 1435 0110 3E       		.byte	0x3e
 1436 0111 9C000000 		.4byte	0x9c
 1437 0115 14       		.byte	0x14
 1438 0116 0B       		.uleb128 0xb
 1439 0117 17020000 		.4byte	.LASF22
 1440 011b 06       		.byte	0x6
 1441 011c 3F       		.byte	0x3f
 1442 011d A1000000 		.4byte	0xa1
 1443 0121 18       		.byte	0x18
 1444 0122 0B       		.uleb128 0xb
 1445 0123 15060000 		.4byte	.LASF23
 1446 0127 06       		.byte	0x6
 1447 0128 40       		.byte	0x40
 1448 0129 9C000000 		.4byte	0x9c
 1449 012d 1C       		.byte	0x1c
 1450 012e 0B       		.uleb128 0xb
 1451 012f 5F020000 		.4byte	.LASF24
ARM GAS  /tmp/ccmZuGH1.s 			page 41


 1452 0133 06       		.byte	0x6
 1453 0134 41       		.byte	0x41
 1454 0135 9C000000 		.4byte	0x9c
 1455 0139 20       		.byte	0x20
 1456 013a 0B       		.uleb128 0xb
 1457 013b 4D000000 		.4byte	.LASF25
 1458 013f 06       		.byte	0x6
 1459 0140 42       		.byte	0x42
 1460 0141 9C000000 		.4byte	0x9c
 1461 0145 24       		.byte	0x24
 1462 0146 0B       		.uleb128 0xb
 1463 0147 D6020000 		.4byte	.LASF26
 1464 014b 06       		.byte	0x6
 1465 014c 43       		.byte	0x43
 1466 014d A1000000 		.4byte	0xa1
 1467 0151 28       		.byte	0x28
 1468 0152 0B       		.uleb128 0xb
 1469 0153 BC080000 		.4byte	.LASF27
 1470 0157 06       		.byte	0x6
 1471 0158 44       		.byte	0x44
 1472 0159 A1000000 		.4byte	0xa1
 1473 015d 2C       		.byte	0x2c
 1474 015e 00       		.byte	0
 1475 015f 0C       		.uleb128 0xc
 1476 0160 52746300 		.ascii	"Rtc\000"
 1477 0164 06       		.byte	0x6
 1478 0165 45       		.byte	0x45
 1479 0166 C6000000 		.4byte	0xc6
 1480 016a 04       		.uleb128 0x4
 1481 016b 74050000 		.4byte	.LASF28
 1482 016f 07       		.byte	0x7
 1483 0170 07       		.byte	0x7
 1484 0171 2C000000 		.4byte	0x2c
 1485 0175 04       		.uleb128 0x4
 1486 0176 4B050000 		.4byte	.LASF29
 1487 017a 08       		.byte	0x8
 1488 017b 2C       		.byte	0x2c
 1489 017c 5A000000 		.4byte	0x5a
 1490 0180 04       		.uleb128 0x4
 1491 0181 D0060000 		.4byte	.LASF30
 1492 0185 08       		.byte	0x8
 1493 0186 72       		.byte	0x72
 1494 0187 5A000000 		.4byte	0x5a
 1495 018b 0D       		.uleb128 0xd
 1496 018c 58030000 		.4byte	.LASF31
 1497 0190 09       		.byte	0x9
 1498 0191 6501     		.2byte	0x165
 1499 0193 25000000 		.4byte	0x25
 1500 0197 0E       		.uleb128 0xe
 1501 0198 04       		.byte	0x4
 1502 0199 08       		.byte	0x8
 1503 019a A6       		.byte	0xa6
 1504 019b B6010000 		.4byte	0x1b6
 1505 019f 0F       		.uleb128 0xf
 1506 01a0 2F080000 		.4byte	.LASF32
 1507 01a4 08       		.byte	0x8
 1508 01a5 A8       		.byte	0xa8
ARM GAS  /tmp/ccmZuGH1.s 			page 42


 1509 01a6 8B010000 		.4byte	0x18b
 1510 01aa 0F       		.uleb128 0xf
 1511 01ab 89020000 		.4byte	.LASF33
 1512 01af 08       		.byte	0x8
 1513 01b0 A9       		.byte	0xa9
 1514 01b1 B6010000 		.4byte	0x1b6
 1515 01b5 00       		.byte	0
 1516 01b6 10       		.uleb128 0x10
 1517 01b7 3A000000 		.4byte	0x3a
 1518 01bb C6010000 		.4byte	0x1c6
 1519 01bf 11       		.uleb128 0x11
 1520 01c0 A8000000 		.4byte	0xa8
 1521 01c4 03       		.byte	0x3
 1522 01c5 00       		.byte	0
 1523 01c6 0A       		.uleb128 0xa
 1524 01c7 08       		.byte	0x8
 1525 01c8 08       		.byte	0x8
 1526 01c9 A3       		.byte	0xa3
 1527 01ca E7010000 		.4byte	0x1e7
 1528 01ce 0B       		.uleb128 0xb
 1529 01cf B9060000 		.4byte	.LASF34
 1530 01d3 08       		.byte	0x8
 1531 01d4 A5       		.byte	0xa5
 1532 01d5 2C000000 		.4byte	0x2c
 1533 01d9 00       		.byte	0
 1534 01da 0B       		.uleb128 0xb
 1535 01db 61070000 		.4byte	.LASF35
 1536 01df 08       		.byte	0x8
 1537 01e0 AA       		.byte	0xaa
 1538 01e1 97010000 		.4byte	0x197
 1539 01e5 04       		.byte	0x4
 1540 01e6 00       		.byte	0
 1541 01e7 04       		.uleb128 0x4
 1542 01e8 2D060000 		.4byte	.LASF36
 1543 01ec 08       		.byte	0x8
 1544 01ed AB       		.byte	0xab
 1545 01ee C6010000 		.4byte	0x1c6
 1546 01f2 04       		.uleb128 0x4
 1547 01f3 FF040000 		.4byte	.LASF37
 1548 01f7 08       		.byte	0x8
 1549 01f8 AF       		.byte	0xaf
 1550 01f9 6A010000 		.4byte	0x16a
 1551 01fd 04       		.uleb128 0x4
 1552 01fe 85070000 		.4byte	.LASF38
 1553 0202 0A       		.byte	0xa
 1554 0203 16       		.byte	0x16
 1555 0204 6C000000 		.4byte	0x6c
 1556 0208 12       		.uleb128 0x12
 1557 0209 48020000 		.4byte	.LASF43
 1558 020d 18       		.byte	0x18
 1559 020e 0A       		.byte	0xa
 1560 020f 2D       		.byte	0x2d
 1561 0210 5B020000 		.4byte	0x25b
 1562 0214 0B       		.uleb128 0xb
 1563 0215 4E070000 		.4byte	.LASF39
 1564 0219 0A       		.byte	0xa
 1565 021a 2F       		.byte	0x2f
ARM GAS  /tmp/ccmZuGH1.s 			page 43


 1566 021b 5B020000 		.4byte	0x25b
 1567 021f 00       		.byte	0
 1568 0220 13       		.uleb128 0x13
 1569 0221 5F6B00   		.ascii	"_k\000"
 1570 0224 0A       		.byte	0xa
 1571 0225 30       		.byte	0x30
 1572 0226 2C000000 		.4byte	0x2c
 1573 022a 04       		.byte	0x4
 1574 022b 0B       		.uleb128 0xb
 1575 022c A4060000 		.4byte	.LASF40
 1576 0230 0A       		.byte	0xa
 1577 0231 30       		.byte	0x30
 1578 0232 2C000000 		.4byte	0x2c
 1579 0236 08       		.byte	0x8
 1580 0237 0B       		.uleb128 0xb
 1581 0238 2E020000 		.4byte	.LASF41
 1582 023c 0A       		.byte	0xa
 1583 023d 30       		.byte	0x30
 1584 023e 2C000000 		.4byte	0x2c
 1585 0242 0C       		.byte	0xc
 1586 0243 0B       		.uleb128 0xb
 1587 0244 A5010000 		.4byte	.LASF42
 1588 0248 0A       		.byte	0xa
 1589 0249 30       		.byte	0x30
 1590 024a 2C000000 		.4byte	0x2c
 1591 024e 10       		.byte	0x10
 1592 024f 13       		.uleb128 0x13
 1593 0250 5F7800   		.ascii	"_x\000"
 1594 0253 0A       		.byte	0xa
 1595 0254 31       		.byte	0x31
 1596 0255 61020000 		.4byte	0x261
 1597 0259 14       		.byte	0x14
 1598 025a 00       		.byte	0
 1599 025b 14       		.uleb128 0x14
 1600 025c 04       		.byte	0x4
 1601 025d 08020000 		.4byte	0x208
 1602 0261 10       		.uleb128 0x10
 1603 0262 FD010000 		.4byte	0x1fd
 1604 0266 71020000 		.4byte	0x271
 1605 026a 11       		.uleb128 0x11
 1606 026b A8000000 		.4byte	0xa8
 1607 026f 00       		.byte	0
 1608 0270 00       		.byte	0
 1609 0271 12       		.uleb128 0x12
 1610 0272 7B020000 		.4byte	.LASF44
 1611 0276 24       		.byte	0x24
 1612 0277 0A       		.byte	0xa
 1613 0278 35       		.byte	0x35
 1614 0279 EA020000 		.4byte	0x2ea
 1615 027d 0B       		.uleb128 0xb
 1616 027e FA000000 		.4byte	.LASF45
 1617 0282 0A       		.byte	0xa
 1618 0283 37       		.byte	0x37
 1619 0284 2C000000 		.4byte	0x2c
 1620 0288 00       		.byte	0
 1621 0289 0B       		.uleb128 0xb
 1622 028a 83080000 		.4byte	.LASF46
ARM GAS  /tmp/ccmZuGH1.s 			page 44


 1623 028e 0A       		.byte	0xa
 1624 028f 38       		.byte	0x38
 1625 0290 2C000000 		.4byte	0x2c
 1626 0294 04       		.byte	0x4
 1627 0295 0B       		.uleb128 0xb
 1628 0296 3D010000 		.4byte	.LASF47
 1629 029a 0A       		.byte	0xa
 1630 029b 39       		.byte	0x39
 1631 029c 2C000000 		.4byte	0x2c
 1632 02a0 08       		.byte	0x8
 1633 02a1 0B       		.uleb128 0xb
 1634 02a2 01090000 		.4byte	.LASF48
 1635 02a6 0A       		.byte	0xa
 1636 02a7 3A       		.byte	0x3a
 1637 02a8 2C000000 		.4byte	0x2c
 1638 02ac 0C       		.byte	0xc
 1639 02ad 0B       		.uleb128 0xb
 1640 02ae 25050000 		.4byte	.LASF49
 1641 02b2 0A       		.byte	0xa
 1642 02b3 3B       		.byte	0x3b
 1643 02b4 2C000000 		.4byte	0x2c
 1644 02b8 10       		.byte	0x10
 1645 02b9 0B       		.uleb128 0xb
 1646 02ba D6030000 		.4byte	.LASF50
 1647 02be 0A       		.byte	0xa
 1648 02bf 3C       		.byte	0x3c
 1649 02c0 2C000000 		.4byte	0x2c
 1650 02c4 14       		.byte	0x14
 1651 02c5 0B       		.uleb128 0xb
 1652 02c6 E3070000 		.4byte	.LASF51
 1653 02ca 0A       		.byte	0xa
 1654 02cb 3D       		.byte	0x3d
 1655 02cc 2C000000 		.4byte	0x2c
 1656 02d0 18       		.byte	0x18
 1657 02d1 0B       		.uleb128 0xb
 1658 02d2 F2050000 		.4byte	.LASF52
 1659 02d6 0A       		.byte	0xa
 1660 02d7 3E       		.byte	0x3e
 1661 02d8 2C000000 		.4byte	0x2c
 1662 02dc 1C       		.byte	0x1c
 1663 02dd 0B       		.uleb128 0xb
 1664 02de 69080000 		.4byte	.LASF53
 1665 02e2 0A       		.byte	0xa
 1666 02e3 3F       		.byte	0x3f
 1667 02e4 2C000000 		.4byte	0x2c
 1668 02e8 20       		.byte	0x20
 1669 02e9 00       		.byte	0
 1670 02ea 15       		.uleb128 0x15
 1671 02eb 5D010000 		.4byte	.LASF54
 1672 02ef 0801     		.2byte	0x108
 1673 02f1 0A       		.byte	0xa
 1674 02f2 48       		.byte	0x48
 1675 02f3 2A030000 		.4byte	0x32a
 1676 02f7 0B       		.uleb128 0xb
 1677 02f8 07020000 		.4byte	.LASF55
 1678 02fc 0A       		.byte	0xa
 1679 02fd 49       		.byte	0x49
ARM GAS  /tmp/ccmZuGH1.s 			page 45


 1680 02fe 2A030000 		.4byte	0x32a
 1681 0302 00       		.byte	0
 1682 0303 0B       		.uleb128 0xb
 1683 0304 C2050000 		.4byte	.LASF56
 1684 0308 0A       		.byte	0xa
 1685 0309 4A       		.byte	0x4a
 1686 030a 2A030000 		.4byte	0x32a
 1687 030e 80       		.byte	0x80
 1688 030f 16       		.uleb128 0x16
 1689 0310 69070000 		.4byte	.LASF57
 1690 0314 0A       		.byte	0xa
 1691 0315 4C       		.byte	0x4c
 1692 0316 FD010000 		.4byte	0x1fd
 1693 031a 0001     		.2byte	0x100
 1694 031c 16       		.uleb128 0x16
 1695 031d 9D010000 		.4byte	.LASF58
 1696 0321 0A       		.byte	0xa
 1697 0322 4F       		.byte	0x4f
 1698 0323 FD010000 		.4byte	0x1fd
 1699 0327 0401     		.2byte	0x104
 1700 0329 00       		.byte	0
 1701 032a 10       		.uleb128 0x10
 1702 032b A6000000 		.4byte	0xa6
 1703 032f 3A030000 		.4byte	0x33a
 1704 0333 11       		.uleb128 0x11
 1705 0334 A8000000 		.4byte	0xa8
 1706 0338 1F       		.byte	0x1f
 1707 0339 00       		.byte	0
 1708 033a 15       		.uleb128 0x15
 1709 033b 2E050000 		.4byte	.LASF59
 1710 033f 9001     		.2byte	0x190
 1711 0341 0A       		.byte	0xa
 1712 0342 5B       		.byte	0x5b
 1713 0343 78030000 		.4byte	0x378
 1714 0347 0B       		.uleb128 0xb
 1715 0348 4E070000 		.4byte	.LASF39
 1716 034c 0A       		.byte	0xa
 1717 034d 5C       		.byte	0x5c
 1718 034e 78030000 		.4byte	0x378
 1719 0352 00       		.byte	0
 1720 0353 0B       		.uleb128 0xb
 1721 0354 73060000 		.4byte	.LASF60
 1722 0358 0A       		.byte	0xa
 1723 0359 5D       		.byte	0x5d
 1724 035a 2C000000 		.4byte	0x2c
 1725 035e 04       		.byte	0x4
 1726 035f 0B       		.uleb128 0xb
 1727 0360 1E020000 		.4byte	.LASF61
 1728 0364 0A       		.byte	0xa
 1729 0365 5F       		.byte	0x5f
 1730 0366 7E030000 		.4byte	0x37e
 1731 036a 08       		.byte	0x8
 1732 036b 0B       		.uleb128 0xb
 1733 036c 5D010000 		.4byte	.LASF54
 1734 0370 0A       		.byte	0xa
 1735 0371 60       		.byte	0x60
 1736 0372 EA020000 		.4byte	0x2ea
ARM GAS  /tmp/ccmZuGH1.s 			page 46


 1737 0376 88       		.byte	0x88
 1738 0377 00       		.byte	0
 1739 0378 14       		.uleb128 0x14
 1740 0379 04       		.byte	0x4
 1741 037a 3A030000 		.4byte	0x33a
 1742 037e 10       		.uleb128 0x10
 1743 037f 8E030000 		.4byte	0x38e
 1744 0383 8E030000 		.4byte	0x38e
 1745 0387 11       		.uleb128 0x11
 1746 0388 A8000000 		.4byte	0xa8
 1747 038c 1F       		.byte	0x1f
 1748 038d 00       		.byte	0
 1749 038e 14       		.uleb128 0x14
 1750 038f 04       		.byte	0x4
 1751 0390 94030000 		.4byte	0x394
 1752 0394 17       		.uleb128 0x17
 1753 0395 12       		.uleb128 0x12
 1754 0396 FC050000 		.4byte	.LASF62
 1755 039a 08       		.byte	0x8
 1756 039b 0A       		.byte	0xa
 1757 039c 73       		.byte	0x73
 1758 039d BA030000 		.4byte	0x3ba
 1759 03a1 0B       		.uleb128 0xb
 1760 03a2 30010000 		.4byte	.LASF63
 1761 03a6 0A       		.byte	0xa
 1762 03a7 74       		.byte	0x74
 1763 03a8 BA030000 		.4byte	0x3ba
 1764 03ac 00       		.byte	0
 1765 03ad 0B       		.uleb128 0xb
 1766 03ae ED060000 		.4byte	.LASF64
 1767 03b2 0A       		.byte	0xa
 1768 03b3 75       		.byte	0x75
 1769 03b4 2C000000 		.4byte	0x2c
 1770 03b8 04       		.byte	0x4
 1771 03b9 00       		.byte	0
 1772 03ba 14       		.uleb128 0x14
 1773 03bb 04       		.byte	0x4
 1774 03bc 3A000000 		.4byte	0x3a
 1775 03c0 12       		.uleb128 0x12
 1776 03c1 42060000 		.4byte	.LASF65
 1777 03c5 68       		.byte	0x68
 1778 03c6 0A       		.byte	0xa
 1779 03c7 B3       		.byte	0xb3
 1780 03c8 EA040000 		.4byte	0x4ea
 1781 03cc 13       		.uleb128 0x13
 1782 03cd 5F7000   		.ascii	"_p\000"
 1783 03d0 0A       		.byte	0xa
 1784 03d1 B4       		.byte	0xb4
 1785 03d2 BA030000 		.4byte	0x3ba
 1786 03d6 00       		.byte	0
 1787 03d7 13       		.uleb128 0x13
 1788 03d8 5F7200   		.ascii	"_r\000"
 1789 03db 0A       		.byte	0xa
 1790 03dc B5       		.byte	0xb5
 1791 03dd 2C000000 		.4byte	0x2c
 1792 03e1 04       		.byte	0x4
 1793 03e2 13       		.uleb128 0x13
ARM GAS  /tmp/ccmZuGH1.s 			page 47


 1794 03e3 5F7700   		.ascii	"_w\000"
 1795 03e6 0A       		.byte	0xa
 1796 03e7 B6       		.byte	0xb6
 1797 03e8 2C000000 		.4byte	0x2c
 1798 03ec 08       		.byte	0x8
 1799 03ed 0B       		.uleb128 0xb
 1800 03ee 96010000 		.4byte	.LASF66
 1801 03f2 0A       		.byte	0xa
 1802 03f3 B7       		.byte	0xb7
 1803 03f4 41000000 		.4byte	0x41
 1804 03f8 0C       		.byte	0xc
 1805 03f9 0B       		.uleb128 0xb
 1806 03fa D0020000 		.4byte	.LASF67
 1807 03fe 0A       		.byte	0xa
 1808 03ff B8       		.byte	0xb8
 1809 0400 41000000 		.4byte	0x41
 1810 0404 0E       		.byte	0xe
 1811 0405 13       		.uleb128 0x13
 1812 0406 5F626600 		.ascii	"_bf\000"
 1813 040a 0A       		.byte	0xa
 1814 040b B9       		.byte	0xb9
 1815 040c 95030000 		.4byte	0x395
 1816 0410 10       		.byte	0x10
 1817 0411 0B       		.uleb128 0xb
 1818 0412 C7000000 		.4byte	.LASF68
 1819 0416 0A       		.byte	0xa
 1820 0417 BA       		.byte	0xba
 1821 0418 2C000000 		.4byte	0x2c
 1822 041c 18       		.byte	0x18
 1823 041d 0B       		.uleb128 0xb
 1824 041e 6B010000 		.4byte	.LASF69
 1825 0422 0A       		.byte	0xa
 1826 0423 C1       		.byte	0xc1
 1827 0424 A6000000 		.4byte	0xa6
 1828 0428 1C       		.byte	0x1c
 1829 0429 0B       		.uleb128 0xb
 1830 042a 86050000 		.4byte	.LASF70
 1831 042e 0A       		.byte	0xa
 1832 042f C3       		.byte	0xc3
 1833 0430 57060000 		.4byte	0x657
 1834 0434 20       		.byte	0x20
 1835 0435 0B       		.uleb128 0xb
 1836 0436 CF030000 		.4byte	.LASF71
 1837 043a 0A       		.byte	0xa
 1838 043b C5       		.byte	0xc5
 1839 043c 81060000 		.4byte	0x681
 1840 0440 24       		.byte	0x24
 1841 0441 0B       		.uleb128 0xb
 1842 0442 CA060000 		.4byte	.LASF72
 1843 0446 0A       		.byte	0xa
 1844 0447 C8       		.byte	0xc8
 1845 0448 A5060000 		.4byte	0x6a5
 1846 044c 28       		.byte	0x28
 1847 044d 0B       		.uleb128 0xb
 1848 044e 17010000 		.4byte	.LASF73
 1849 0452 0A       		.byte	0xa
 1850 0453 C9       		.byte	0xc9
ARM GAS  /tmp/ccmZuGH1.s 			page 48


 1851 0454 BF060000 		.4byte	0x6bf
 1852 0458 2C       		.byte	0x2c
 1853 0459 13       		.uleb128 0x13
 1854 045a 5F756200 		.ascii	"_ub\000"
 1855 045e 0A       		.byte	0xa
 1856 045f CC       		.byte	0xcc
 1857 0460 95030000 		.4byte	0x395
 1858 0464 30       		.byte	0x30
 1859 0465 13       		.uleb128 0x13
 1860 0466 5F757000 		.ascii	"_up\000"
 1861 046a 0A       		.byte	0xa
 1862 046b CD       		.byte	0xcd
 1863 046c BA030000 		.4byte	0x3ba
 1864 0470 38       		.byte	0x38
 1865 0471 13       		.uleb128 0x13
 1866 0472 5F757200 		.ascii	"_ur\000"
 1867 0476 0A       		.byte	0xa
 1868 0477 CE       		.byte	0xce
 1869 0478 2C000000 		.4byte	0x2c
 1870 047c 3C       		.byte	0x3c
 1871 047d 0B       		.uleb128 0xb
 1872 047e 2A010000 		.4byte	.LASF74
 1873 0482 0A       		.byte	0xa
 1874 0483 D1       		.byte	0xd1
 1875 0484 C5060000 		.4byte	0x6c5
 1876 0488 40       		.byte	0x40
 1877 0489 0B       		.uleb128 0xb
 1878 048a 35080000 		.4byte	.LASF75
 1879 048e 0A       		.byte	0xa
 1880 048f D2       		.byte	0xd2
 1881 0490 D5060000 		.4byte	0x6d5
 1882 0494 43       		.byte	0x43
 1883 0495 13       		.uleb128 0x13
 1884 0496 5F6C6200 		.ascii	"_lb\000"
 1885 049a 0A       		.byte	0xa
 1886 049b D5       		.byte	0xd5
 1887 049c 95030000 		.4byte	0x395
 1888 04a0 44       		.byte	0x44
 1889 04a1 0B       		.uleb128 0xb
 1890 04a2 E4060000 		.4byte	.LASF76
 1891 04a6 0A       		.byte	0xa
 1892 04a7 D8       		.byte	0xd8
 1893 04a8 2C000000 		.4byte	0x2c
 1894 04ac 4C       		.byte	0x4c
 1895 04ad 0B       		.uleb128 0xb
 1896 04ae 25040000 		.4byte	.LASF77
 1897 04b2 0A       		.byte	0xa
 1898 04b3 D9       		.byte	0xd9
 1899 04b4 75010000 		.4byte	0x175
 1900 04b8 50       		.byte	0x50
 1901 04b9 0B       		.uleb128 0xb
 1902 04ba 7A000000 		.4byte	.LASF78
 1903 04be 0A       		.byte	0xa
 1904 04bf DC       		.byte	0xdc
 1905 04c0 08050000 		.4byte	0x508
 1906 04c4 54       		.byte	0x54
 1907 04c5 0B       		.uleb128 0xb
ARM GAS  /tmp/ccmZuGH1.s 			page 49


 1908 04c6 6C030000 		.4byte	.LASF79
 1909 04ca 0A       		.byte	0xa
 1910 04cb E0       		.byte	0xe0
 1911 04cc F2010000 		.4byte	0x1f2
 1912 04d0 58       		.byte	0x58
 1913 04d1 0B       		.uleb128 0xb
 1914 04d2 80020000 		.4byte	.LASF80
 1915 04d6 0A       		.byte	0xa
 1916 04d7 E2       		.byte	0xe2
 1917 04d8 E7010000 		.4byte	0x1e7
 1918 04dc 5C       		.byte	0x5c
 1919 04dd 0B       		.uleb128 0xb
 1920 04de 03060000 		.4byte	.LASF81
 1921 04e2 0A       		.byte	0xa
 1922 04e3 E3       		.byte	0xe3
 1923 04e4 2C000000 		.4byte	0x2c
 1924 04e8 64       		.byte	0x64
 1925 04e9 00       		.byte	0
 1926 04ea 18       		.uleb128 0x18
 1927 04eb 2C000000 		.4byte	0x2c
 1928 04ef 08050000 		.4byte	0x508
 1929 04f3 19       		.uleb128 0x19
 1930 04f4 08050000 		.4byte	0x508
 1931 04f8 19       		.uleb128 0x19
 1932 04f9 A6000000 		.4byte	0xa6
 1933 04fd 19       		.uleb128 0x19
 1934 04fe 45060000 		.4byte	0x645
 1935 0502 19       		.uleb128 0x19
 1936 0503 2C000000 		.4byte	0x2c
 1937 0507 00       		.byte	0
 1938 0508 14       		.uleb128 0x14
 1939 0509 04       		.byte	0x4
 1940 050a 13050000 		.4byte	0x513
 1941 050e 06       		.uleb128 0x6
 1942 050f 08050000 		.4byte	0x508
 1943 0513 1A       		.uleb128 0x1a
 1944 0514 AC060000 		.4byte	.LASF82
 1945 0518 2804     		.2byte	0x428
 1946 051a 0A       		.byte	0xa
 1947 051b 3802     		.2byte	0x238
 1948 051d 45060000 		.4byte	0x645
 1949 0521 1B       		.uleb128 0x1b
 1950 0522 D8060000 		.4byte	.LASF83
 1951 0526 0A       		.byte	0xa
 1952 0527 3A02     		.2byte	0x23a
 1953 0529 2C000000 		.4byte	0x2c
 1954 052d 00       		.byte	0
 1955 052e 1B       		.uleb128 0x1b
 1956 052f F3070000 		.4byte	.LASF84
 1957 0533 0A       		.byte	0xa
 1958 0534 3F02     		.2byte	0x23f
 1959 0536 2C070000 		.4byte	0x72c
 1960 053a 04       		.byte	0x4
 1961 053b 1B       		.uleb128 0x1b
 1962 053c DB070000 		.4byte	.LASF85
 1963 0540 0A       		.byte	0xa
 1964 0541 3F02     		.2byte	0x23f
ARM GAS  /tmp/ccmZuGH1.s 			page 50


 1965 0543 2C070000 		.4byte	0x72c
 1966 0547 08       		.byte	0x8
 1967 0548 1B       		.uleb128 0x1b
 1968 0549 40020000 		.4byte	.LASF86
 1969 054d 0A       		.byte	0xa
 1970 054e 3F02     		.2byte	0x23f
 1971 0550 2C070000 		.4byte	0x72c
 1972 0554 0C       		.byte	0xc
 1973 0555 1B       		.uleb128 0x1b
 1974 0556 6E060000 		.4byte	.LASF87
 1975 055a 0A       		.byte	0xa
 1976 055b 4102     		.2byte	0x241
 1977 055d 2C000000 		.4byte	0x2c
 1978 0561 10       		.byte	0x10
 1979 0562 1B       		.uleb128 0x1b
 1980 0563 39000000 		.4byte	.LASF88
 1981 0567 0A       		.byte	0xa
 1982 0568 4202     		.2byte	0x242
 1983 056a 0E090000 		.4byte	0x90e
 1984 056e 14       		.byte	0x14
 1985 056f 1B       		.uleb128 0x1b
 1986 0570 B0070000 		.4byte	.LASF89
 1987 0574 0A       		.byte	0xa
 1988 0575 4402     		.2byte	0x244
 1989 0577 2C000000 		.4byte	0x2c
 1990 057b 30       		.byte	0x30
 1991 057c 1B       		.uleb128 0x1b
 1992 057d 78060000 		.4byte	.LASF90
 1993 0581 0A       		.byte	0xa
 1994 0582 4502     		.2byte	0x245
 1995 0584 7B060000 		.4byte	0x67b
 1996 0588 34       		.byte	0x34
 1997 0589 1B       		.uleb128 0x1b
 1998 058a 40050000 		.4byte	.LASF91
 1999 058e 0A       		.byte	0xa
 2000 058f 4702     		.2byte	0x247
 2001 0591 2C000000 		.4byte	0x2c
 2002 0595 38       		.byte	0x38
 2003 0596 1B       		.uleb128 0x1b
 2004 0597 91060000 		.4byte	.LASF92
 2005 059b 0A       		.byte	0xa
 2006 059c 4902     		.2byte	0x249
 2007 059e 29090000 		.4byte	0x929
 2008 05a2 3C       		.byte	0x3c
 2009 05a3 1B       		.uleb128 0x1b
 2010 05a4 2D030000 		.4byte	.LASF93
 2011 05a8 0A       		.byte	0xa
 2012 05a9 4C02     		.2byte	0x24c
 2013 05ab 5B020000 		.4byte	0x25b
 2014 05af 40       		.byte	0x40
 2015 05b0 1B       		.uleb128 0x1b
 2016 05b1 B1010000 		.4byte	.LASF94
 2017 05b5 0A       		.byte	0xa
 2018 05b6 4D02     		.2byte	0x24d
 2019 05b8 2C000000 		.4byte	0x2c
 2020 05bc 44       		.byte	0x44
 2021 05bd 1B       		.uleb128 0x1b
ARM GAS  /tmp/ccmZuGH1.s 			page 51


 2022 05be B7080000 		.4byte	.LASF95
 2023 05c2 0A       		.byte	0xa
 2024 05c3 4E02     		.2byte	0x24e
 2025 05c5 5B020000 		.4byte	0x25b
 2026 05c9 48       		.byte	0x48
 2027 05ca 1B       		.uleb128 0x1b
 2028 05cb 0B060000 		.4byte	.LASF96
 2029 05cf 0A       		.byte	0xa
 2030 05d0 4F02     		.2byte	0x24f
 2031 05d2 2F090000 		.4byte	0x92f
 2032 05d6 4C       		.byte	0x4c
 2033 05d7 1B       		.uleb128 0x1b
 2034 05d8 B6020000 		.4byte	.LASF97
 2035 05dc 0A       		.byte	0xa
 2036 05dd 5202     		.2byte	0x252
 2037 05df 2C000000 		.4byte	0x2c
 2038 05e3 50       		.byte	0x50
 2039 05e4 1B       		.uleb128 0x1b
 2040 05e5 E0010000 		.4byte	.LASF98
 2041 05e9 0A       		.byte	0xa
 2042 05ea 5302     		.2byte	0x253
 2043 05ec 45060000 		.4byte	0x645
 2044 05f0 54       		.byte	0x54
 2045 05f1 1B       		.uleb128 0x1b
 2046 05f2 D7050000 		.4byte	.LASF99
 2047 05f6 0A       		.byte	0xa
 2048 05f7 7602     		.2byte	0x276
 2049 05f9 EC080000 		.4byte	0x8ec
 2050 05fd 58       		.byte	0x58
 2051 05fe 1C       		.uleb128 0x1c
 2052 05ff 2E050000 		.4byte	.LASF59
 2053 0603 0A       		.byte	0xa
 2054 0604 7A02     		.2byte	0x27a
 2055 0606 78030000 		.4byte	0x378
 2056 060a 4801     		.2byte	0x148
 2057 060c 1C       		.uleb128 0x1c
 2058 060d 03030000 		.4byte	.LASF100
 2059 0611 0A       		.byte	0xa
 2060 0612 7B02     		.2byte	0x27b
 2061 0614 3A030000 		.4byte	0x33a
 2062 0618 4C01     		.2byte	0x14c
 2063 061a 1C       		.uleb128 0x1c
 2064 061b 04080000 		.4byte	.LASF101
 2065 061f 0A       		.byte	0xa
 2066 0620 7F02     		.2byte	0x27f
 2067 0622 40090000 		.4byte	0x940
 2068 0626 DC02     		.2byte	0x2dc
 2069 0628 1C       		.uleb128 0x1c
 2070 0629 85010000 		.4byte	.LASF102
 2071 062d 0A       		.byte	0xa
 2072 062e 8402     		.2byte	0x284
 2073 0630 F1060000 		.4byte	0x6f1
 2074 0634 E002     		.2byte	0x2e0
 2075 0636 1C       		.uleb128 0x1c
 2076 0637 58010000 		.4byte	.LASF103
 2077 063b 0A       		.byte	0xa
 2078 063c 8502     		.2byte	0x285
ARM GAS  /tmp/ccmZuGH1.s 			page 52


 2079 063e 4C090000 		.4byte	0x94c
 2080 0642 EC02     		.2byte	0x2ec
 2081 0644 00       		.byte	0
 2082 0645 14       		.uleb128 0x14
 2083 0646 04       		.byte	0x4
 2084 0647 4B060000 		.4byte	0x64b
 2085 064b 02       		.uleb128 0x2
 2086 064c 01       		.byte	0x1
 2087 064d 08       		.byte	0x8
 2088 064e DF060000 		.4byte	.LASF104
 2089 0652 06       		.uleb128 0x6
 2090 0653 4B060000 		.4byte	0x64b
 2091 0657 14       		.uleb128 0x14
 2092 0658 04       		.byte	0x4
 2093 0659 EA040000 		.4byte	0x4ea
 2094 065d 18       		.uleb128 0x18
 2095 065e 2C000000 		.4byte	0x2c
 2096 0662 7B060000 		.4byte	0x67b
 2097 0666 19       		.uleb128 0x19
 2098 0667 08050000 		.4byte	0x508
 2099 066b 19       		.uleb128 0x19
 2100 066c A6000000 		.4byte	0xa6
 2101 0670 19       		.uleb128 0x19
 2102 0671 7B060000 		.4byte	0x67b
 2103 0675 19       		.uleb128 0x19
 2104 0676 2C000000 		.4byte	0x2c
 2105 067a 00       		.byte	0
 2106 067b 14       		.uleb128 0x14
 2107 067c 04       		.byte	0x4
 2108 067d 52060000 		.4byte	0x652
 2109 0681 14       		.uleb128 0x14
 2110 0682 04       		.byte	0x4
 2111 0683 5D060000 		.4byte	0x65d
 2112 0687 18       		.uleb128 0x18
 2113 0688 80010000 		.4byte	0x180
 2114 068c A5060000 		.4byte	0x6a5
 2115 0690 19       		.uleb128 0x19
 2116 0691 08050000 		.4byte	0x508
 2117 0695 19       		.uleb128 0x19
 2118 0696 A6000000 		.4byte	0xa6
 2119 069a 19       		.uleb128 0x19
 2120 069b 80010000 		.4byte	0x180
 2121 069f 19       		.uleb128 0x19
 2122 06a0 2C000000 		.4byte	0x2c
 2123 06a4 00       		.byte	0
 2124 06a5 14       		.uleb128 0x14
 2125 06a6 04       		.byte	0x4
 2126 06a7 87060000 		.4byte	0x687
 2127 06ab 18       		.uleb128 0x18
 2128 06ac 2C000000 		.4byte	0x2c
 2129 06b0 BF060000 		.4byte	0x6bf
 2130 06b4 19       		.uleb128 0x19
 2131 06b5 08050000 		.4byte	0x508
 2132 06b9 19       		.uleb128 0x19
 2133 06ba A6000000 		.4byte	0xa6
 2134 06be 00       		.byte	0
 2135 06bf 14       		.uleb128 0x14
ARM GAS  /tmp/ccmZuGH1.s 			page 53


 2136 06c0 04       		.byte	0x4
 2137 06c1 AB060000 		.4byte	0x6ab
 2138 06c5 10       		.uleb128 0x10
 2139 06c6 3A000000 		.4byte	0x3a
 2140 06ca D5060000 		.4byte	0x6d5
 2141 06ce 11       		.uleb128 0x11
 2142 06cf A8000000 		.4byte	0xa8
 2143 06d3 02       		.byte	0x2
 2144 06d4 00       		.byte	0
 2145 06d5 10       		.uleb128 0x10
 2146 06d6 3A000000 		.4byte	0x3a
 2147 06da E5060000 		.4byte	0x6e5
 2148 06de 11       		.uleb128 0x11
 2149 06df A8000000 		.4byte	0xa8
 2150 06e3 00       		.byte	0
 2151 06e4 00       		.byte	0
 2152 06e5 0D       		.uleb128 0xd
 2153 06e6 AA010000 		.4byte	.LASF105
 2154 06ea 0A       		.byte	0xa
 2155 06eb 1D01     		.2byte	0x11d
 2156 06ed C0030000 		.4byte	0x3c0
 2157 06f1 1D       		.uleb128 0x1d
 2158 06f2 ED070000 		.4byte	.LASF106
 2159 06f6 0C       		.byte	0xc
 2160 06f7 0A       		.byte	0xa
 2161 06f8 2101     		.2byte	0x121
 2162 06fa 26070000 		.4byte	0x726
 2163 06fe 1B       		.uleb128 0x1b
 2164 06ff 4E070000 		.4byte	.LASF39
 2165 0703 0A       		.byte	0xa
 2166 0704 2301     		.2byte	0x123
 2167 0706 26070000 		.4byte	0x726
 2168 070a 00       		.byte	0
 2169 070b 1B       		.uleb128 0x1b
 2170 070c DE020000 		.4byte	.LASF107
 2171 0710 0A       		.byte	0xa
 2172 0711 2401     		.2byte	0x124
 2173 0713 2C000000 		.4byte	0x2c
 2174 0717 04       		.byte	0x4
 2175 0718 1B       		.uleb128 0x1b
 2176 0719 68060000 		.4byte	.LASF108
 2177 071d 0A       		.byte	0xa
 2178 071e 2501     		.2byte	0x125
 2179 0720 2C070000 		.4byte	0x72c
 2180 0724 08       		.byte	0x8
 2181 0725 00       		.byte	0
 2182 0726 14       		.uleb128 0x14
 2183 0727 04       		.byte	0x4
 2184 0728 F1060000 		.4byte	0x6f1
 2185 072c 14       		.uleb128 0x14
 2186 072d 04       		.byte	0x4
 2187 072e E5060000 		.4byte	0x6e5
 2188 0732 1D       		.uleb128 0x1d
 2189 0733 28000000 		.4byte	.LASF109
 2190 0737 0E       		.byte	0xe
 2191 0738 0A       		.byte	0xa
 2192 0739 3D01     		.2byte	0x13d
ARM GAS  /tmp/ccmZuGH1.s 			page 54


 2193 073b 67070000 		.4byte	0x767
 2194 073f 1B       		.uleb128 0x1b
 2195 0740 B3060000 		.4byte	.LASF110
 2196 0744 0A       		.byte	0xa
 2197 0745 3E01     		.2byte	0x13e
 2198 0747 67070000 		.4byte	0x767
 2199 074b 00       		.byte	0
 2200 074c 1B       		.uleb128 0x1b
 2201 074d A1030000 		.4byte	.LASF111
 2202 0751 0A       		.byte	0xa
 2203 0752 3F01     		.2byte	0x13f
 2204 0754 67070000 		.4byte	0x767
 2205 0758 06       		.byte	0x6
 2206 0759 1B       		.uleb128 0x1b
 2207 075a 80070000 		.4byte	.LASF112
 2208 075e 0A       		.byte	0xa
 2209 075f 4001     		.2byte	0x140
 2210 0761 48000000 		.4byte	0x48
 2211 0765 0C       		.byte	0xc
 2212 0766 00       		.byte	0
 2213 0767 10       		.uleb128 0x10
 2214 0768 48000000 		.4byte	0x48
 2215 076c 77070000 		.4byte	0x777
 2216 0770 11       		.uleb128 0x11
 2217 0771 A8000000 		.4byte	0xa8
 2218 0775 02       		.byte	0x2
 2219 0776 00       		.byte	0
 2220 0777 1E       		.uleb128 0x1e
 2221 0778 D0       		.byte	0xd0
 2222 0779 0A       		.byte	0xa
 2223 077a 5702     		.2byte	0x257
 2224 077c 78080000 		.4byte	0x878
 2225 0780 1B       		.uleb128 0x1b
 2226 0781 E0030000 		.4byte	.LASF113
 2227 0785 0A       		.byte	0xa
 2228 0786 5902     		.2byte	0x259
 2229 0788 25000000 		.4byte	0x25
 2230 078c 00       		.byte	0
 2231 078d 1B       		.uleb128 0x1b
 2232 078e 54070000 		.4byte	.LASF114
 2233 0792 0A       		.byte	0xa
 2234 0793 5A02     		.2byte	0x25a
 2235 0795 45060000 		.4byte	0x645
 2236 0799 04       		.byte	0x4
 2237 079a 1B       		.uleb128 0x1b
 2238 079b 18030000 		.4byte	.LASF115
 2239 079f 0A       		.byte	0xa
 2240 07a0 5B02     		.2byte	0x25b
 2241 07a2 78080000 		.4byte	0x878
 2242 07a6 08       		.byte	0x8
 2243 07a7 1B       		.uleb128 0x1b
 2244 07a8 74080000 		.4byte	.LASF116
 2245 07ac 0A       		.byte	0xa
 2246 07ad 5C02     		.2byte	0x25c
 2247 07af 71020000 		.4byte	0x271
 2248 07b3 24       		.byte	0x24
 2249 07b4 1B       		.uleb128 0x1b
ARM GAS  /tmp/ccmZuGH1.s 			page 55


 2250 07b5 50020000 		.4byte	.LASF117
 2251 07b9 0A       		.byte	0xa
 2252 07ba 5D02     		.2byte	0x25d
 2253 07bc 2C000000 		.4byte	0x2c
 2254 07c0 48       		.byte	0x48
 2255 07c1 1B       		.uleb128 0x1b
 2256 07c2 5D060000 		.4byte	.LASF118
 2257 07c6 0A       		.byte	0xa
 2258 07c7 5E02     		.2byte	0x25e
 2259 07c9 7A000000 		.4byte	0x7a
 2260 07cd 50       		.byte	0x50
 2261 07ce 1B       		.uleb128 0x1b
 2262 07cf 8C080000 		.4byte	.LASF119
 2263 07d3 0A       		.byte	0xa
 2264 07d4 5F02     		.2byte	0x25f
 2265 07d6 32070000 		.4byte	0x732
 2266 07da 58       		.byte	0x58
 2267 07db 1B       		.uleb128 0x1b
 2268 07dc E5050000 		.4byte	.LASF120
 2269 07e0 0A       		.byte	0xa
 2270 07e1 6002     		.2byte	0x260
 2271 07e3 E7010000 		.4byte	0x1e7
 2272 07e7 68       		.byte	0x68
 2273 07e8 1B       		.uleb128 0x1b
 2274 07e9 9C080000 		.4byte	.LASF121
 2275 07ed 0A       		.byte	0xa
 2276 07ee 6102     		.2byte	0x261
 2277 07f0 E7010000 		.4byte	0x1e7
 2278 07f4 70       		.byte	0x70
 2279 07f5 1B       		.uleb128 0x1b
 2280 07f6 EC000000 		.4byte	.LASF122
 2281 07fa 0A       		.byte	0xa
 2282 07fb 6202     		.2byte	0x262
 2283 07fd E7010000 		.4byte	0x1e7
 2284 0801 78       		.byte	0x78
 2285 0802 1B       		.uleb128 0x1b
 2286 0803 FA070000 		.4byte	.LASF123
 2287 0807 0A       		.byte	0xa
 2288 0808 6302     		.2byte	0x263
 2289 080a 88080000 		.4byte	0x888
 2290 080e 80       		.byte	0x80
 2291 080f 1B       		.uleb128 0x1b
 2292 0810 0C030000 		.4byte	.LASF124
 2293 0814 0A       		.byte	0xa
 2294 0815 6402     		.2byte	0x264
 2295 0817 98080000 		.4byte	0x898
 2296 081b 88       		.byte	0x88
 2297 081c 1B       		.uleb128 0x1b
 2298 081d 6D000000 		.4byte	.LASF125
 2299 0821 0A       		.byte	0xa
 2300 0822 6502     		.2byte	0x265
 2301 0824 2C000000 		.4byte	0x2c
 2302 0828 A0       		.byte	0xa0
 2303 0829 1B       		.uleb128 0x1b
 2304 082a F9010000 		.4byte	.LASF126
 2305 082e 0A       		.byte	0xa
 2306 082f 6602     		.2byte	0x266
ARM GAS  /tmp/ccmZuGH1.s 			page 56


 2307 0831 E7010000 		.4byte	0x1e7
 2308 0835 A4       		.byte	0xa4
 2309 0836 1B       		.uleb128 0x1b
 2310 0837 DD000000 		.4byte	.LASF127
 2311 083b 0A       		.byte	0xa
 2312 083c 6702     		.2byte	0x267
 2313 083e E7010000 		.4byte	0x1e7
 2314 0842 AC       		.byte	0xac
 2315 0843 1B       		.uleb128 0x1b
 2316 0844 E8010000 		.4byte	.LASF128
 2317 0848 0A       		.byte	0xa
 2318 0849 6802     		.2byte	0x268
 2319 084b E7010000 		.4byte	0x1e7
 2320 084f B4       		.byte	0xb4
 2321 0850 1B       		.uleb128 0x1b
 2322 0851 88000000 		.4byte	.LASF129
 2323 0855 0A       		.byte	0xa
 2324 0856 6902     		.2byte	0x269
 2325 0858 E7010000 		.4byte	0x1e7
 2326 085c BC       		.byte	0xbc
 2327 085d 1B       		.uleb128 0x1b
 2328 085e 97000000 		.4byte	.LASF130
 2329 0862 0A       		.byte	0xa
 2330 0863 6A02     		.2byte	0x26a
 2331 0865 E7010000 		.4byte	0x1e7
 2332 0869 C4       		.byte	0xc4
 2333 086a 1B       		.uleb128 0x1b
 2334 086b DC050000 		.4byte	.LASF131
 2335 086f 0A       		.byte	0xa
 2336 0870 6B02     		.2byte	0x26b
 2337 0872 2C000000 		.4byte	0x2c
 2338 0876 CC       		.byte	0xcc
 2339 0877 00       		.byte	0
 2340 0878 10       		.uleb128 0x10
 2341 0879 4B060000 		.4byte	0x64b
 2342 087d 88080000 		.4byte	0x888
 2343 0881 11       		.uleb128 0x11
 2344 0882 A8000000 		.4byte	0xa8
 2345 0886 19       		.byte	0x19
 2346 0887 00       		.byte	0
 2347 0888 10       		.uleb128 0x10
 2348 0889 4B060000 		.4byte	0x64b
 2349 088d 98080000 		.4byte	0x898
 2350 0891 11       		.uleb128 0x11
 2351 0892 A8000000 		.4byte	0xa8
 2352 0896 07       		.byte	0x7
 2353 0897 00       		.byte	0
 2354 0898 10       		.uleb128 0x10
 2355 0899 4B060000 		.4byte	0x64b
 2356 089d A8080000 		.4byte	0x8a8
 2357 08a1 11       		.uleb128 0x11
 2358 08a2 A8000000 		.4byte	0xa8
 2359 08a6 17       		.byte	0x17
 2360 08a7 00       		.byte	0
 2361 08a8 1E       		.uleb128 0x1e
 2362 08a9 F0       		.byte	0xf0
 2363 08aa 0A       		.byte	0xa
ARM GAS  /tmp/ccmZuGH1.s 			page 57


 2364 08ab 7002     		.2byte	0x270
 2365 08ad CC080000 		.4byte	0x8cc
 2366 08b1 1B       		.uleb128 0x1b
 2367 08b2 40030000 		.4byte	.LASF132
 2368 08b6 0A       		.byte	0xa
 2369 08b7 7302     		.2byte	0x273
 2370 08b9 CC080000 		.4byte	0x8cc
 2371 08bd 00       		.byte	0
 2372 08be 1B       		.uleb128 0x1b
 2373 08bf 67020000 		.4byte	.LASF133
 2374 08c3 0A       		.byte	0xa
 2375 08c4 7402     		.2byte	0x274
 2376 08c6 DC080000 		.4byte	0x8dc
 2377 08ca 78       		.byte	0x78
 2378 08cb 00       		.byte	0
 2379 08cc 10       		.uleb128 0x10
 2380 08cd BA030000 		.4byte	0x3ba
 2381 08d1 DC080000 		.4byte	0x8dc
 2382 08d5 11       		.uleb128 0x11
 2383 08d6 A8000000 		.4byte	0xa8
 2384 08da 1D       		.byte	0x1d
 2385 08db 00       		.byte	0
 2386 08dc 10       		.uleb128 0x10
 2387 08dd 25000000 		.4byte	0x25
 2388 08e1 EC080000 		.4byte	0x8ec
 2389 08e5 11       		.uleb128 0x11
 2390 08e6 A8000000 		.4byte	0xa8
 2391 08ea 1D       		.byte	0x1d
 2392 08eb 00       		.byte	0
 2393 08ec 1F       		.uleb128 0x1f
 2394 08ed F0       		.byte	0xf0
 2395 08ee 0A       		.byte	0xa
 2396 08ef 5502     		.2byte	0x255
 2397 08f1 0E090000 		.4byte	0x90e
 2398 08f5 20       		.uleb128 0x20
 2399 08f6 AC060000 		.4byte	.LASF82
 2400 08fa 0A       		.byte	0xa
 2401 08fb 6C02     		.2byte	0x26c
 2402 08fd 77070000 		.4byte	0x777
 2403 0901 20       		.uleb128 0x20
 2404 0902 3B080000 		.4byte	.LASF134
 2405 0906 0A       		.byte	0xa
 2406 0907 7502     		.2byte	0x275
 2407 0909 A8080000 		.4byte	0x8a8
 2408 090d 00       		.byte	0
 2409 090e 10       		.uleb128 0x10
 2410 090f 4B060000 		.4byte	0x64b
 2411 0913 1E090000 		.4byte	0x91e
 2412 0917 11       		.uleb128 0x11
 2413 0918 A8000000 		.4byte	0xa8
 2414 091c 18       		.byte	0x18
 2415 091d 00       		.byte	0
 2416 091e 21       		.uleb128 0x21
 2417 091f 29090000 		.4byte	0x929
 2418 0923 19       		.uleb128 0x19
 2419 0924 08050000 		.4byte	0x508
 2420 0928 00       		.byte	0
ARM GAS  /tmp/ccmZuGH1.s 			page 58


 2421 0929 14       		.uleb128 0x14
 2422 092a 04       		.byte	0x4
 2423 092b 1E090000 		.4byte	0x91e
 2424 092f 14       		.uleb128 0x14
 2425 0930 04       		.byte	0x4
 2426 0931 5B020000 		.4byte	0x25b
 2427 0935 21       		.uleb128 0x21
 2428 0936 40090000 		.4byte	0x940
 2429 093a 19       		.uleb128 0x19
 2430 093b 2C000000 		.4byte	0x2c
 2431 093f 00       		.byte	0
 2432 0940 14       		.uleb128 0x14
 2433 0941 04       		.byte	0x4
 2434 0942 46090000 		.4byte	0x946
 2435 0946 14       		.uleb128 0x14
 2436 0947 04       		.byte	0x4
 2437 0948 35090000 		.4byte	0x935
 2438 094c 10       		.uleb128 0x10
 2439 094d E5060000 		.4byte	0x6e5
 2440 0951 5C090000 		.4byte	0x95c
 2441 0955 11       		.uleb128 0x11
 2442 0956 A8000000 		.4byte	0xa8
 2443 095a 02       		.byte	0x2
 2444 095b 00       		.byte	0
 2445 095c 08       		.uleb128 0x8
 2446 095d 34020000 		.4byte	.LASF135
 2447 0961 0A       		.byte	0xa
 2448 0962 FD02     		.2byte	0x2fd
 2449 0964 08050000 		.4byte	0x508
 2450 0968 08       		.uleb128 0x8
 2451 0969 9D070000 		.4byte	.LASF136
 2452 096d 0A       		.byte	0xa
 2453 096e FE02     		.2byte	0x2fe
 2454 0970 0E050000 		.4byte	0x50e
 2455 0974 09       		.uleb128 0x9
 2456 0975 36050000 		.4byte	.LASF137
 2457 0979 0B       		.byte	0xb
 2458 097a 5F       		.byte	0x5f
 2459 097b 45060000 		.4byte	0x645
 2460 097f 09       		.uleb128 0x9
 2461 0980 60050000 		.4byte	.LASF138
 2462 0984 0C       		.byte	0xc
 2463 0985 8F       		.byte	0x8f
 2464 0986 91090000 		.4byte	0x991
 2465 098a 02       		.uleb128 0x2
 2466 098b 01       		.byte	0x1
 2467 098c 02       		.byte	0x2
 2468 098d B4050000 		.4byte	.LASF139
 2469 0991 05       		.uleb128 0x5
 2470 0992 8A090000 		.4byte	0x98a
 2471 0996 22       		.uleb128 0x22
 2472 0997 0E080000 		.4byte	.LASF140
 2473 099b 0C       		.byte	0xc
 2474 099c 94       		.byte	0x94
 2475 099d 9C000000 		.4byte	0x9c
 2476 09a1 05       		.uleb128 0x5
 2477 09a2 03       		.byte	0x3
ARM GAS  /tmp/ccmZuGH1.s 			page 59


 2478 09a3 00000000 		.4byte	cpu_irq_critical_section_counter
 2479 09a7 22       		.uleb128 0x22
 2480 09a8 FF030000 		.4byte	.LASF141
 2481 09ac 0C       		.byte	0xc
 2482 09ad 95       		.byte	0x95
 2483 09ae 91090000 		.4byte	0x991
 2484 09b2 05       		.uleb128 0x5
 2485 09b3 03       		.byte	0x3
 2486 09b4 00000000 		.4byte	cpu_irq_prev_interrupt_state
 2487 09b8 02       		.uleb128 0x2
 2488 09b9 04       		.byte	0x4
 2489 09ba 04       		.byte	0x4
 2490 09bb 52050000 		.4byte	.LASF142
 2491 09bf 02       		.uleb128 0x2
 2492 09c0 08       		.byte	0x8
 2493 09c1 04       		.byte	0x4
 2494 09c2 E3080000 		.4byte	.LASF143
 2495 09c6 23       		.uleb128 0x23
 2496 09c7 55000000 		.4byte	.LASF148
 2497 09cb 01       		.byte	0x1
 2498 09cc BF02     		.2byte	0x2bf
 2499 09ce 00000000 		.4byte	.LFB161
 2500 09d2 16000000 		.4byte	.LFE161-.LFB161
 2501 09d6 01       		.uleb128 0x1
 2502 09d7 9C       		.byte	0x9c
 2503 09d8 1B0A0000 		.4byte	0xa1b
 2504 09dc 24       		.uleb128 0x24
 2505 09dd DA010000 		.4byte	.LASF144
 2506 09e1 01       		.byte	0x1
 2507 09e2 BF02     		.2byte	0x2bf
 2508 09e4 1B0A0000 		.4byte	0xa1b
 2509 09e8 01       		.uleb128 0x1
 2510 09e9 50       		.byte	0x50
 2511 09ea 25       		.uleb128 0x25
 2512 09eb C2030000 		.4byte	.LASF145
 2513 09ef 01       		.byte	0x1
 2514 09f0 BF02     		.2byte	0x2bf
 2515 09f2 91000000 		.4byte	0x91
 2516 09f6 00000000 		.4byte	.LLST43
 2517 09fa 25       		.uleb128 0x25
 2518 09fb C2070000 		.4byte	.LASF146
 2519 09ff 01       		.byte	0x1
 2520 0a00 C002     		.2byte	0x2c0
 2521 0a02 91000000 		.4byte	0x91
 2522 0a06 21000000 		.4byte	.LLST44
 2523 0a0a 26       		.uleb128 0x26
 2524 0a0b 80000000 		.4byte	.LASF147
 2525 0a0f 01       		.byte	0x1
 2526 0a10 C202     		.2byte	0x2c2
 2527 0a12 91000000 		.4byte	0x91
 2528 0a16 42000000 		.4byte	.LLST45
 2529 0a1a 00       		.byte	0
 2530 0a1b 14       		.uleb128 0x14
 2531 0a1c 04       		.byte	0x4
 2532 0a1d 5F010000 		.4byte	0x15f
 2533 0a21 23       		.uleb128 0x23
 2534 0a22 40040000 		.4byte	.LASF149
ARM GAS  /tmp/ccmZuGH1.s 			page 60


 2535 0a26 01       		.byte	0x1
 2536 0a27 4C02     		.2byte	0x24c
 2537 0a29 00000000 		.4byte	.LFB160
 2538 0a2d 56010000 		.4byte	.LFE160-.LFB160
 2539 0a31 01       		.uleb128 0x1
 2540 0a32 9C       		.byte	0x9c
 2541 0a33 620A0000 		.4byte	0xa62
 2542 0a37 24       		.uleb128 0x24
 2543 0a38 DA010000 		.4byte	.LASF144
 2544 0a3c 01       		.byte	0x1
 2545 0a3d 4C02     		.2byte	0x24c
 2546 0a3f 1B0A0000 		.4byte	0xa1b
 2547 0a43 01       		.uleb128 0x1
 2548 0a44 50       		.byte	0x50
 2549 0a45 24       		.uleb128 0x24
 2550 0a46 70020000 		.4byte	.LASF150
 2551 0a4a 01       		.byte	0x1
 2552 0a4b 4C02     		.2byte	0x24c
 2553 0a4d 91000000 		.4byte	0x91
 2554 0a51 01       		.uleb128 0x1
 2555 0a52 51       		.byte	0x51
 2556 0a53 24       		.uleb128 0x24
 2557 0a54 2D040000 		.4byte	.LASF151
 2558 0a58 01       		.byte	0x1
 2559 0a59 4C02     		.2byte	0x24c
 2560 0a5b 91000000 		.4byte	0x91
 2561 0a5f 01       		.uleb128 0x1
 2562 0a60 52       		.byte	0x52
 2563 0a61 00       		.byte	0
 2564 0a62 23       		.uleb128 0x23
 2565 0a63 EA080000 		.4byte	.LASF152
 2566 0a67 01       		.byte	0x1
 2567 0a68 F201     		.2byte	0x1f2
 2568 0a6a 00000000 		.4byte	.LFB159
 2569 0a6e 16000000 		.4byte	.LFE159-.LFB159
 2570 0a72 01       		.uleb128 0x1
 2571 0a73 9C       		.byte	0x9c
 2572 0a74 970A0000 		.4byte	0xa97
 2573 0a78 24       		.uleb128 0x24
 2574 0a79 DA010000 		.4byte	.LASF144
 2575 0a7d 01       		.byte	0x1
 2576 0a7e F201     		.2byte	0x1f2
 2577 0a80 1B0A0000 		.4byte	0xa1b
 2578 0a84 01       		.uleb128 0x1
 2579 0a85 50       		.byte	0x50
 2580 0a86 25       		.uleb128 0x25
 2581 0a87 D6080000 		.4byte	.LASF153
 2582 0a8b 01       		.byte	0x1
 2583 0a8c F201     		.2byte	0x1f2
 2584 0a8e 91000000 		.4byte	0x91
 2585 0a92 6B000000 		.4byte	.LLST42
 2586 0a96 00       		.byte	0
 2587 0a97 23       		.uleb128 0x23
 2588 0a98 A1050000 		.4byte	.LASF154
 2589 0a9c 01       		.byte	0x1
 2590 0a9d E601     		.2byte	0x1e6
 2591 0a9f 00000000 		.4byte	.LFB158
ARM GAS  /tmp/ccmZuGH1.s 			page 61


 2592 0aa3 16000000 		.4byte	.LFE158-.LFB158
 2593 0aa7 01       		.uleb128 0x1
 2594 0aa8 9C       		.byte	0x9c
 2595 0aa9 CC0A0000 		.4byte	0xacc
 2596 0aad 24       		.uleb128 0x24
 2597 0aae DA010000 		.4byte	.LASF144
 2598 0ab2 01       		.byte	0x1
 2599 0ab3 E601     		.2byte	0x1e6
 2600 0ab5 1B0A0000 		.4byte	0xa1b
 2601 0ab9 01       		.uleb128 0x1
 2602 0aba 50       		.byte	0x50
 2603 0abb 25       		.uleb128 0x25
 2604 0abc D6080000 		.4byte	.LASF153
 2605 0ac0 01       		.byte	0x1
 2606 0ac1 E601     		.2byte	0x1e6
 2607 0ac3 91000000 		.4byte	0x91
 2608 0ac7 8C000000 		.4byte	.LLST41
 2609 0acb 00       		.byte	0
 2610 0acc 27       		.uleb128 0x27
 2611 0acd 03010000 		.4byte	.LASF157
 2612 0ad1 01       		.byte	0x1
 2613 0ad2 DB01     		.2byte	0x1db
 2614 0ad4 91000000 		.4byte	0x91
 2615 0ad8 00000000 		.4byte	.LFB157
 2616 0adc 04000000 		.4byte	.LFE157-.LFB157
 2617 0ae0 01       		.uleb128 0x1
 2618 0ae1 9C       		.byte	0x9c
 2619 0ae2 F70A0000 		.4byte	0xaf7
 2620 0ae6 25       		.uleb128 0x25
 2621 0ae7 DA010000 		.4byte	.LASF144
 2622 0aeb 01       		.byte	0x1
 2623 0aec DB01     		.2byte	0x1db
 2624 0aee 1B0A0000 		.4byte	0xa1b
 2625 0af2 AD000000 		.4byte	.LLST40
 2626 0af6 00       		.byte	0
 2627 0af7 23       		.uleb128 0x23
 2628 0af8 47010000 		.4byte	.LASF155
 2629 0afc 01       		.byte	0x1
 2630 0afd CF01     		.2byte	0x1cf
 2631 0aff 00000000 		.4byte	.LFB156
 2632 0b03 04000000 		.4byte	.LFE156-.LFB156
 2633 0b07 01       		.uleb128 0x1
 2634 0b08 9C       		.byte	0x9c
 2635 0b09 2A0B0000 		.4byte	0xb2a
 2636 0b0d 24       		.uleb128 0x24
 2637 0b0e DA010000 		.4byte	.LASF144
 2638 0b12 01       		.byte	0x1
 2639 0b13 CF01     		.2byte	0x1cf
 2640 0b15 1B0A0000 		.4byte	0xa1b
 2641 0b19 01       		.uleb128 0x1
 2642 0b1a 50       		.byte	0x50
 2643 0b1b 24       		.uleb128 0x24
 2644 0b1c 1F000000 		.4byte	.LASF156
 2645 0b20 01       		.byte	0x1
 2646 0b21 CF01     		.2byte	0x1cf
 2647 0b23 91000000 		.4byte	0x91
 2648 0b27 01       		.uleb128 0x1
ARM GAS  /tmp/ccmZuGH1.s 			page 62


 2649 0b28 51       		.byte	0x51
 2650 0b29 00       		.byte	0
 2651 0b2a 27       		.uleb128 0x27
 2652 0b2b 1E060000 		.4byte	.LASF158
 2653 0b2f 01       		.byte	0x1
 2654 0b30 C401     		.2byte	0x1c4
 2655 0b32 91000000 		.4byte	0x91
 2656 0b36 00000000 		.4byte	.LFB155
 2657 0b3a 04000000 		.4byte	.LFE155-.LFB155
 2658 0b3e 01       		.uleb128 0x1
 2659 0b3f 9C       		.byte	0x9c
 2660 0b40 550B0000 		.4byte	0xb55
 2661 0b44 25       		.uleb128 0x25
 2662 0b45 DA010000 		.4byte	.LASF144
 2663 0b49 01       		.byte	0x1
 2664 0b4a C401     		.2byte	0x1c4
 2665 0b4c 1B0A0000 		.4byte	0xa1b
 2666 0b50 CE000000 		.4byte	.LLST39
 2667 0b54 00       		.byte	0
 2668 0b55 23       		.uleb128 0x23
 2669 0b56 0A000000 		.4byte	.LASF159
 2670 0b5a 01       		.byte	0x1
 2671 0b5b B701     		.2byte	0x1b7
 2672 0b5d 00000000 		.4byte	.LFB154
 2673 0b61 0C000000 		.4byte	.LFE154-.LFB154
 2674 0b65 01       		.uleb128 0x1
 2675 0b66 9C       		.byte	0x9c
 2676 0b67 7A0B0000 		.4byte	0xb7a
 2677 0b6b 24       		.uleb128 0x24
 2678 0b6c DA010000 		.4byte	.LASF144
 2679 0b70 01       		.byte	0x1
 2680 0b71 B701     		.2byte	0x1b7
 2681 0b73 1B0A0000 		.4byte	0xa1b
 2682 0b77 01       		.uleb128 0x1
 2683 0b78 50       		.byte	0x50
 2684 0b79 00       		.byte	0
 2685 0b7a 23       		.uleb128 0x23
 2686 0b7b 0D070000 		.4byte	.LASF160
 2687 0b7f 01       		.byte	0x1
 2688 0b80 AD01     		.2byte	0x1ad
 2689 0b82 00000000 		.4byte	.LFB153
 2690 0b86 06000000 		.4byte	.LFE153-.LFB153
 2691 0b8a 01       		.uleb128 0x1
 2692 0b8b 9C       		.byte	0x9c
 2693 0b8c 9F0B0000 		.4byte	0xb9f
 2694 0b90 24       		.uleb128 0x24
 2695 0b91 DA010000 		.4byte	.LASF144
 2696 0b95 01       		.byte	0x1
 2697 0b96 AD01     		.2byte	0x1ad
 2698 0b98 1B0A0000 		.4byte	0xa1b
 2699 0b9c 01       		.uleb128 0x1
 2700 0b9d 50       		.byte	0x50
 2701 0b9e 00       		.byte	0
 2702 0b9f 27       		.uleb128 0x27
 2703 0ba0 4A060000 		.4byte	.LASF161
 2704 0ba4 01       		.byte	0x1
 2705 0ba5 8E01     		.2byte	0x18e
ARM GAS  /tmp/ccmZuGH1.s 			page 63


 2706 0ba7 91000000 		.4byte	0x91
 2707 0bab 00000000 		.4byte	.LFB152
 2708 0baf 60000000 		.4byte	.LFE152-.LFB152
 2709 0bb3 01       		.uleb128 0x1
 2710 0bb4 9C       		.byte	0x9c
 2711 0bb5 1A0C0000 		.4byte	0xc1a
 2712 0bb9 25       		.uleb128 0x25
 2713 0bba DA010000 		.4byte	.LASF144
 2714 0bbe 01       		.byte	0x1
 2715 0bbf 8E01     		.2byte	0x18e
 2716 0bc1 1B0A0000 		.4byte	0xa1b
 2717 0bc5 EF000000 		.4byte	.LLST33
 2718 0bc9 25       		.uleb128 0x25
 2719 0bca 16090000 		.4byte	.LASF162
 2720 0bce 01       		.byte	0x1
 2721 0bcf 8F01     		.2byte	0x18f
 2722 0bd1 91000000 		.4byte	0x91
 2723 0bd5 10010000 		.4byte	.LLST34
 2724 0bd9 25       		.uleb128 0x25
 2725 0bda 44000000 		.4byte	.LASF163
 2726 0bde 01       		.byte	0x1
 2727 0bdf 8F01     		.2byte	0x18f
 2728 0be1 91000000 		.4byte	0x91
 2729 0be5 31010000 		.4byte	.LLST35
 2730 0be9 25       		.uleb128 0x25
 2731 0bea 22070000 		.4byte	.LASF164
 2732 0bee 01       		.byte	0x1
 2733 0bef 9001     		.2byte	0x190
 2734 0bf1 91000000 		.4byte	0x91
 2735 0bf5 52010000 		.4byte	.LLST36
 2736 0bf9 25       		.uleb128 0x25
 2737 0bfa 51030000 		.4byte	.LASF165
 2738 0bfe 01       		.byte	0x1
 2739 0bff 9001     		.2byte	0x190
 2740 0c01 91000000 		.4byte	0x91
 2741 0c05 73010000 		.4byte	.LLST37
 2742 0c09 26       		.uleb128 0x26
 2743 0c0a 9B060000 		.4byte	.LASF166
 2744 0c0e 01       		.byte	0x1
 2745 0c0f 9201     		.2byte	0x192
 2746 0c11 91000000 		.4byte	0x91
 2747 0c15 93010000 		.4byte	.LLST38
 2748 0c19 00       		.byte	0
 2749 0c1a 27       		.uleb128 0x27
 2750 0c1b 51040000 		.4byte	.LASF167
 2751 0c1f 01       		.byte	0x1
 2752 0c20 5E01     		.2byte	0x15e
 2753 0c22 91000000 		.4byte	0x91
 2754 0c26 00000000 		.4byte	.LFB151
 2755 0c2a BC000000 		.4byte	.LFE151-.LFB151
 2756 0c2e 01       		.uleb128 0x1
 2757 0c2f 9C       		.byte	0x9c
 2758 0c30 950C0000 		.4byte	0xc95
 2759 0c34 25       		.uleb128 0x25
 2760 0c35 DA010000 		.4byte	.LASF144
 2761 0c39 01       		.byte	0x1
 2762 0c3a 5E01     		.2byte	0x15e
ARM GAS  /tmp/ccmZuGH1.s 			page 64


 2763 0c3c 1B0A0000 		.4byte	0xa1b
 2764 0c40 B2010000 		.4byte	.LLST27
 2765 0c44 25       		.uleb128 0x25
 2766 0c45 BA030000 		.4byte	.LASF168
 2767 0c49 01       		.byte	0x1
 2768 0c4a 5E01     		.2byte	0x15e
 2769 0c4c 91000000 		.4byte	0x91
 2770 0c50 D3010000 		.4byte	.LLST28
 2771 0c54 25       		.uleb128 0x25
 2772 0c55 44000000 		.4byte	.LASF163
 2773 0c59 01       		.byte	0x1
 2774 0c5a 5E01     		.2byte	0x15e
 2775 0c5c 91000000 		.4byte	0x91
 2776 0c60 F4010000 		.4byte	.LLST29
 2777 0c64 25       		.uleb128 0x25
 2778 0c65 51030000 		.4byte	.LASF165
 2779 0c69 01       		.byte	0x1
 2780 0c6a 5F01     		.2byte	0x15f
 2781 0c6c 91000000 		.4byte	0x91
 2782 0c70 15020000 		.4byte	.LLST30
 2783 0c74 25       		.uleb128 0x25
 2784 0c75 0F020000 		.4byte	.LASF169
 2785 0c79 01       		.byte	0x1
 2786 0c7a 5F01     		.2byte	0x15f
 2787 0c7c 91000000 		.4byte	0x91
 2788 0c80 36020000 		.4byte	.LLST31
 2789 0c84 26       		.uleb128 0x26
 2790 0c85 BB010000 		.4byte	.LASF170
 2791 0c89 01       		.byte	0x1
 2792 0c8a 6101     		.2byte	0x161
 2793 0c8c 91000000 		.4byte	0x91
 2794 0c90 56020000 		.4byte	.LLST32
 2795 0c94 00       		.byte	0
 2796 0c95 23       		.uleb128 0x23
 2797 0c96 41070000 		.4byte	.LASF171
 2798 0c9a 01       		.byte	0x1
 2799 0c9b 2B01     		.2byte	0x12b
 2800 0c9d 00000000 		.4byte	.LFB150
 2801 0ca1 72000000 		.4byte	.LFE150-.LFB150
 2802 0ca5 01       		.uleb128 0x1
 2803 0ca6 9C       		.byte	0x9c
 2804 0ca7 290D0000 		.4byte	0xd29
 2805 0cab 25       		.uleb128 0x25
 2806 0cac DA010000 		.4byte	.LASF144
 2807 0cb0 01       		.byte	0x1
 2808 0cb1 2B01     		.2byte	0x12b
 2809 0cb3 1B0A0000 		.4byte	0xa1b
 2810 0cb7 CC030000 		.4byte	.LLST21
 2811 0cbb 25       		.uleb128 0x25
 2812 0cbc D1010000 		.4byte	.LASF172
 2813 0cc0 01       		.byte	0x1
 2814 0cc1 2B01     		.2byte	0x12b
 2815 0cc3 290D0000 		.4byte	0xd29
 2816 0cc7 ED030000 		.4byte	.LLST22
 2817 0ccb 25       		.uleb128 0x25
 2818 0ccc 38060000 		.4byte	.LASF173
 2819 0cd0 01       		.byte	0x1
ARM GAS  /tmp/ccmZuGH1.s 			page 65


 2820 0cd1 2B01     		.2byte	0x12b
 2821 0cd3 290D0000 		.4byte	0xd29
 2822 0cd7 0E040000 		.4byte	.LLST23
 2823 0cdb 24       		.uleb128 0x24
 2824 0cdc 95070000 		.4byte	.LASF174
 2825 0ce0 01       		.byte	0x1
 2826 0ce1 2C01     		.2byte	0x12c
 2827 0ce3 290D0000 		.4byte	0xd29
 2828 0ce7 01       		.uleb128 0x1
 2829 0ce8 53       		.byte	0x53
 2830 0ce9 24       		.uleb128 0x24
 2831 0cea 30000000 		.4byte	.LASF175
 2832 0cee 01       		.byte	0x1
 2833 0cef 2C01     		.2byte	0x12c
 2834 0cf1 290D0000 		.4byte	0xd29
 2835 0cf5 02       		.uleb128 0x2
 2836 0cf6 91       		.byte	0x91
 2837 0cf7 00       		.sleb128 0
 2838 0cf8 26       		.uleb128 0x26
 2839 0cf9 BB010000 		.4byte	.LASF170
 2840 0cfd 01       		.byte	0x1
 2841 0cfe 2E01     		.2byte	0x12e
 2842 0d00 91000000 		.4byte	0x91
 2843 0d04 2F040000 		.4byte	.LLST24
 2844 0d08 26       		.uleb128 0x26
 2845 0d09 8D070000 		.4byte	.LASF176
 2846 0d0d 01       		.byte	0x1
 2847 0d0e 2F01     		.2byte	0x12f
 2848 0d10 91000000 		.4byte	0x91
 2849 0d14 42040000 		.4byte	.LLST25
 2850 0d18 26       		.uleb128 0x26
 2851 0d19 80000000 		.4byte	.LASF147
 2852 0d1d 01       		.byte	0x1
 2853 0d1e 3001     		.2byte	0x130
 2854 0d20 91000000 		.4byte	0x91
 2855 0d24 62040000 		.4byte	.LLST26
 2856 0d28 00       		.byte	0
 2857 0d29 14       		.uleb128 0x14
 2858 0d2a 04       		.byte	0x4
 2859 0d2b 91000000 		.4byte	0x91
 2860 0d2f 28       		.uleb128 0x28
 2861 0d30 A7030000 		.4byte	.LASF177
 2862 0d34 01       		.byte	0x1
 2863 0d35 FA       		.byte	0xfa
 2864 0d36 91000000 		.4byte	0x91
 2865 0d3a 00000000 		.4byte	.LFB149
 2866 0d3e 90000000 		.4byte	.LFE149-.LFB149
 2867 0d42 01       		.uleb128 0x1
 2868 0d43 9C       		.byte	0x9c
 2869 0d44 C10D0000 		.4byte	0xdc1
 2870 0d48 29       		.uleb128 0x29
 2871 0d49 DA010000 		.4byte	.LASF144
 2872 0d4d 01       		.byte	0x1
 2873 0d4e FA       		.byte	0xfa
 2874 0d4f 1B0A0000 		.4byte	0xa1b
 2875 0d53 9F040000 		.4byte	.LLST13
 2876 0d57 29       		.uleb128 0x29
ARM GAS  /tmp/ccmZuGH1.s 			page 66


 2877 0d58 AA080000 		.4byte	.LASF178
 2878 0d5c 01       		.byte	0x1
 2879 0d5d FB       		.byte	0xfb
 2880 0d5e 91000000 		.4byte	0x91
 2881 0d62 CB040000 		.4byte	.LLST14
 2882 0d66 29       		.uleb128 0x29
 2883 0d67 25030000 		.4byte	.LASF179
 2884 0d6b 01       		.byte	0x1
 2885 0d6c FB       		.byte	0xfb
 2886 0d6d 91000000 		.4byte	0x91
 2887 0d71 EC040000 		.4byte	.LLST15
 2888 0d75 29       		.uleb128 0x29
 2889 0d76 5A080000 		.4byte	.LASF180
 2890 0d7a 01       		.byte	0x1
 2891 0d7b FC       		.byte	0xfc
 2892 0d7c 91000000 		.4byte	0x91
 2893 0d80 15050000 		.4byte	.LLST16
 2894 0d84 29       		.uleb128 0x29
 2895 0d85 36040000 		.4byte	.LASF181
 2896 0d89 01       		.byte	0x1
 2897 0d8a FC       		.byte	0xfc
 2898 0d8b 91000000 		.4byte	0x91
 2899 0d8f 41050000 		.4byte	.LLST17
 2900 0d93 29       		.uleb128 0x29
 2901 0d94 CC070000 		.4byte	.LASF182
 2902 0d98 01       		.byte	0x1
 2903 0d99 FD       		.byte	0xfd
 2904 0d9a 91000000 		.4byte	0x91
 2905 0d9e 6D050000 		.4byte	.LLST18
 2906 0da2 29       		.uleb128 0x29
 2907 0da3 47030000 		.4byte	.LASF183
 2908 0da7 01       		.byte	0x1
 2909 0da8 FD       		.byte	0xfd
 2910 0da9 91000000 		.4byte	0x91
 2911 0dad 99050000 		.4byte	.LLST19
 2912 0db1 2A       		.uleb128 0x2a
 2913 0db2 9B060000 		.4byte	.LASF166
 2914 0db6 01       		.byte	0x1
 2915 0db7 FF       		.byte	0xff
 2916 0db8 91000000 		.4byte	0x91
 2917 0dbc C5050000 		.4byte	.LLST20
 2918 0dc0 00       		.byte	0
 2919 0dc1 28       		.uleb128 0x28
 2920 0dc2 00070000 		.4byte	.LASF184
 2921 0dc6 01       		.byte	0x1
 2922 0dc7 C9       		.byte	0xc9
 2923 0dc8 91000000 		.4byte	0x91
 2924 0dcc 00000000 		.4byte	.LFB148
 2925 0dd0 88000000 		.4byte	.LFE148-.LFB148
 2926 0dd4 01       		.uleb128 0x1
 2927 0dd5 9C       		.byte	0x9c
 2928 0dd6 260E0000 		.4byte	0xe26
 2929 0dda 29       		.uleb128 0x29
 2930 0ddb DA010000 		.4byte	.LASF144
 2931 0ddf 01       		.byte	0x1
 2932 0de0 C9       		.byte	0xc9
 2933 0de1 1B0A0000 		.4byte	0xa1b
ARM GAS  /tmp/ccmZuGH1.s 			page 67


 2934 0de5 09060000 		.4byte	.LLST8
 2935 0de9 29       		.uleb128 0x29
 2936 0dea 25030000 		.4byte	.LASF179
 2937 0dee 01       		.byte	0x1
 2938 0def C9       		.byte	0xc9
 2939 0df0 91000000 		.4byte	0x91
 2940 0df4 35060000 		.4byte	.LLST9
 2941 0df8 29       		.uleb128 0x29
 2942 0df9 36040000 		.4byte	.LASF181
 2943 0dfd 01       		.byte	0x1
 2944 0dfe C9       		.byte	0xc9
 2945 0dff 91000000 		.4byte	0x91
 2946 0e03 5E060000 		.4byte	.LLST10
 2947 0e07 29       		.uleb128 0x29
 2948 0e08 47030000 		.4byte	.LASF183
 2949 0e0c 01       		.byte	0x1
 2950 0e0d CA       		.byte	0xca
 2951 0e0e 91000000 		.4byte	0x91
 2952 0e12 8A060000 		.4byte	.LLST11
 2953 0e16 2A       		.uleb128 0x2a
 2954 0e17 BF000000 		.4byte	.LASF185
 2955 0e1b 01       		.byte	0x1
 2956 0e1c CC       		.byte	0xcc
 2957 0e1d 91000000 		.4byte	0x91
 2958 0e21 B6060000 		.4byte	.LLST12
 2959 0e25 00       		.byte	0
 2960 0e26 2B       		.uleb128 0x2b
 2961 0e27 5F030000 		.4byte	.LASF186
 2962 0e2b 01       		.byte	0x1
 2963 0e2c 9C       		.byte	0x9c
 2964 0e2d 00000000 		.4byte	.LFB147
 2965 0e31 58000000 		.4byte	.LFE147-.LFB147
 2966 0e35 01       		.uleb128 0x1
 2967 0e36 9C       		.byte	0x9c
 2968 0e37 940E0000 		.4byte	0xe94
 2969 0e3b 29       		.uleb128 0x29
 2970 0e3c DA010000 		.4byte	.LASF144
 2971 0e40 01       		.byte	0x1
 2972 0e41 9C       		.byte	0x9c
 2973 0e42 1B0A0000 		.4byte	0xa1b
 2974 0e46 5B070000 		.4byte	.LLST3
 2975 0e4a 29       		.uleb128 0x29
 2976 0e4b 88060000 		.4byte	.LASF187
 2977 0e4f 01       		.byte	0x1
 2978 0e50 9C       		.byte	0x9c
 2979 0e51 290D0000 		.4byte	0xd29
 2980 0e55 7C070000 		.4byte	.LLST4
 2981 0e59 29       		.uleb128 0x29
 2982 0e5a F8020000 		.4byte	.LASF188
 2983 0e5e 01       		.byte	0x1
 2984 0e5f 9C       		.byte	0x9c
 2985 0e60 290D0000 		.4byte	0xd29
 2986 0e64 9D070000 		.4byte	.LLST5
 2987 0e68 2C       		.uleb128 0x2c
 2988 0e69 35030000 		.4byte	.LASF189
 2989 0e6d 01       		.byte	0x1
 2990 0e6e 9D       		.byte	0x9d
ARM GAS  /tmp/ccmZuGH1.s 			page 68


 2991 0e6f 290D0000 		.4byte	0xd29
 2992 0e73 01       		.uleb128 0x1
 2993 0e74 53       		.byte	0x53
 2994 0e75 2A       		.uleb128 0x2a
 2995 0e76 BF000000 		.4byte	.LASF185
 2996 0e7a 01       		.byte	0x1
 2997 0e7b 9F       		.byte	0x9f
 2998 0e7c 91000000 		.4byte	0x91
 2999 0e80 BE070000 		.4byte	.LLST6
 3000 0e84 2A       		.uleb128 0x2a
 3001 0e85 80000000 		.4byte	.LASF147
 3002 0e89 01       		.byte	0x1
 3003 0e8a A0       		.byte	0xa0
 3004 0e8b 91000000 		.4byte	0x91
 3005 0e8f D1070000 		.4byte	.LLST7
 3006 0e93 00       		.byte	0
 3007 0e94 28       		.uleb128 0x28
 3008 0e95 43080000 		.4byte	.LASF190
 3009 0e99 01       		.byte	0x1
 3010 0e9a 8F       		.byte	0x8f
 3011 0e9b 91000000 		.4byte	0x91
 3012 0e9f 00000000 		.4byte	.LFB146
 3013 0ea3 04000000 		.4byte	.LFE146-.LFB146
 3014 0ea7 01       		.uleb128 0x1
 3015 0ea8 9C       		.byte	0x9c
 3016 0ea9 BD0E0000 		.4byte	0xebd
 3017 0ead 29       		.uleb128 0x29
 3018 0eae DA010000 		.4byte	.LASF144
 3019 0eb2 01       		.byte	0x1
 3020 0eb3 8F       		.byte	0x8f
 3021 0eb4 1B0A0000 		.4byte	0xa1b
 3022 0eb8 0D080000 		.4byte	.LLST2
 3023 0ebc 00       		.byte	0
 3024 0ebd 2B       		.uleb128 0x2b
 3025 0ebe A0020000 		.4byte	.LASF191
 3026 0ec2 01       		.byte	0x1
 3027 0ec3 83       		.byte	0x83
 3028 0ec4 00000000 		.4byte	.LFB145
 3029 0ec8 04000000 		.4byte	.LFE145-.LFB145
 3030 0ecc 01       		.uleb128 0x1
 3031 0ecd 9C       		.byte	0x9c
 3032 0ece ED0E0000 		.4byte	0xeed
 3033 0ed2 2C       		.uleb128 0x2c
 3034 0ed3 DA010000 		.4byte	.LASF144
 3035 0ed7 01       		.byte	0x1
 3036 0ed8 83       		.byte	0x83
 3037 0ed9 1B0A0000 		.4byte	0xa1b
 3038 0edd 01       		.uleb128 0x1
 3039 0ede 50       		.byte	0x50
 3040 0edf 2C       		.uleb128 0x2c
 3041 0ee0 91080000 		.4byte	.LASF192
 3042 0ee4 01       		.byte	0x1
 3043 0ee5 83       		.byte	0x83
 3044 0ee6 91000000 		.4byte	0x91
 3045 0eea 01       		.uleb128 0x1
 3046 0eeb 51       		.byte	0x51
 3047 0eec 00       		.byte	0
ARM GAS  /tmp/ccmZuGH1.s 			page 69


 3048 0eed 2B       		.uleb128 0x2b
 3049 0eee 8C050000 		.4byte	.LASF193
 3050 0ef2 01       		.byte	0x1
 3051 0ef3 78       		.byte	0x78
 3052 0ef4 00000000 		.4byte	.LFB144
 3053 0ef8 04000000 		.4byte	.LFE144-.LFB144
 3054 0efc 01       		.uleb128 0x1
 3055 0efd 9C       		.byte	0x9c
 3056 0efe 1D0F0000 		.4byte	0xf1d
 3057 0f02 2C       		.uleb128 0x2c
 3058 0f03 DA010000 		.4byte	.LASF144
 3059 0f07 01       		.byte	0x1
 3060 0f08 78       		.byte	0x78
 3061 0f09 1B0A0000 		.4byte	0xa1b
 3062 0f0d 01       		.uleb128 0x1
 3063 0f0e 50       		.byte	0x50
 3064 0f0f 2C       		.uleb128 0x2c
 3065 0f10 91080000 		.4byte	.LASF192
 3066 0f14 01       		.byte	0x1
 3067 0f15 78       		.byte	0x78
 3068 0f16 91000000 		.4byte	0x91
 3069 0f1a 01       		.uleb128 0x1
 3070 0f1b 51       		.byte	0x51
 3071 0f1c 00       		.byte	0
 3072 0f1d 28       		.uleb128 0x28
 3073 0f1e 73010000 		.4byte	.LASF194
 3074 0f22 01       		.byte	0x1
 3075 0f23 67       		.byte	0x67
 3076 0f24 91000000 		.4byte	0x91
 3077 0f28 00000000 		.4byte	.LFB143
 3078 0f2c 08000000 		.4byte	.LFE143-.LFB143
 3079 0f30 01       		.uleb128 0x1
 3080 0f31 9C       		.byte	0x9c
 3081 0f32 550F0000 		.4byte	0xf55
 3082 0f36 29       		.uleb128 0x29
 3083 0f37 DA010000 		.4byte	.LASF144
 3084 0f3b 01       		.byte	0x1
 3085 0f3c 67       		.byte	0x67
 3086 0f3d 1B0A0000 		.4byte	0xa1b
 3087 0f41 2E080000 		.4byte	.LLST0
 3088 0f45 2A       		.uleb128 0x2a
 3089 0f46 80000000 		.4byte	.LASF147
 3090 0f4a 01       		.byte	0x1
 3091 0f4b 69       		.byte	0x69
 3092 0f4c 91000000 		.4byte	0x91
 3093 0f50 4F080000 		.4byte	.LLST1
 3094 0f54 00       		.byte	0
 3095 0f55 2D       		.uleb128 0x2d
 3096 0f56 C4080000 		.4byte	.LASF199
 3097 0f5a 01       		.byte	0x1
 3098 0f5b 57       		.byte	0x57
 3099 0f5c 00000000 		.4byte	.LFB142
 3100 0f60 14000000 		.4byte	.LFE142-.LFB142
 3101 0f64 01       		.uleb128 0x1
 3102 0f65 9C       		.byte	0x9c
 3103 0f66 2C       		.uleb128 0x2c
 3104 0f67 DA010000 		.4byte	.LASF144
ARM GAS  /tmp/ccmZuGH1.s 			page 70


 3105 0f6b 01       		.byte	0x1
 3106 0f6c 57       		.byte	0x57
 3107 0f6d 1B0A0000 		.4byte	0xa1b
 3108 0f71 01       		.uleb128 0x1
 3109 0f72 50       		.byte	0x50
 3110 0f73 2C       		.uleb128 0x2c
 3111 0f74 58050000 		.4byte	.LASF195
 3112 0f78 01       		.byte	0x1
 3113 0f79 57       		.byte	0x57
 3114 0f7a 91000000 		.4byte	0x91
 3115 0f7e 01       		.uleb128 0x1
 3116 0f7f 51       		.byte	0x51
 3117 0f80 00       		.byte	0
 3118 0f81 00       		.byte	0
 3119              		.section	.debug_abbrev,"",%progbits
 3120              	.Ldebug_abbrev0:
 3121 0000 01       		.uleb128 0x1
 3122 0001 11       		.uleb128 0x11
 3123 0002 01       		.byte	0x1
 3124 0003 25       		.uleb128 0x25
 3125 0004 0E       		.uleb128 0xe
 3126 0005 13       		.uleb128 0x13
 3127 0006 0B       		.uleb128 0xb
 3128 0007 03       		.uleb128 0x3
 3129 0008 0E       		.uleb128 0xe
 3130 0009 1B       		.uleb128 0x1b
 3131 000a 0E       		.uleb128 0xe
 3132 000b 55       		.uleb128 0x55
 3133 000c 17       		.uleb128 0x17
 3134 000d 11       		.uleb128 0x11
 3135 000e 01       		.uleb128 0x1
 3136 000f 10       		.uleb128 0x10
 3137 0010 17       		.uleb128 0x17
 3138 0011 00       		.byte	0
 3139 0012 00       		.byte	0
 3140 0013 02       		.uleb128 0x2
 3141 0014 24       		.uleb128 0x24
 3142 0015 00       		.byte	0
 3143 0016 0B       		.uleb128 0xb
 3144 0017 0B       		.uleb128 0xb
 3145 0018 3E       		.uleb128 0x3e
 3146 0019 0B       		.uleb128 0xb
 3147 001a 03       		.uleb128 0x3
 3148 001b 0E       		.uleb128 0xe
 3149 001c 00       		.byte	0
 3150 001d 00       		.byte	0
 3151 001e 03       		.uleb128 0x3
 3152 001f 24       		.uleb128 0x24
 3153 0020 00       		.byte	0
 3154 0021 0B       		.uleb128 0xb
 3155 0022 0B       		.uleb128 0xb
 3156 0023 3E       		.uleb128 0x3e
 3157 0024 0B       		.uleb128 0xb
 3158 0025 03       		.uleb128 0x3
 3159 0026 08       		.uleb128 0x8
 3160 0027 00       		.byte	0
 3161 0028 00       		.byte	0
ARM GAS  /tmp/ccmZuGH1.s 			page 71


 3162 0029 04       		.uleb128 0x4
 3163 002a 16       		.uleb128 0x16
 3164 002b 00       		.byte	0
 3165 002c 03       		.uleb128 0x3
 3166 002d 0E       		.uleb128 0xe
 3167 002e 3A       		.uleb128 0x3a
 3168 002f 0B       		.uleb128 0xb
 3169 0030 3B       		.uleb128 0x3b
 3170 0031 0B       		.uleb128 0xb
 3171 0032 49       		.uleb128 0x49
 3172 0033 13       		.uleb128 0x13
 3173 0034 00       		.byte	0
 3174 0035 00       		.byte	0
 3175 0036 05       		.uleb128 0x5
 3176 0037 35       		.uleb128 0x35
 3177 0038 00       		.byte	0
 3178 0039 49       		.uleb128 0x49
 3179 003a 13       		.uleb128 0x13
 3180 003b 00       		.byte	0
 3181 003c 00       		.byte	0
 3182 003d 06       		.uleb128 0x6
 3183 003e 26       		.uleb128 0x26
 3184 003f 00       		.byte	0
 3185 0040 49       		.uleb128 0x49
 3186 0041 13       		.uleb128 0x13
 3187 0042 00       		.byte	0
 3188 0043 00       		.byte	0
 3189 0044 07       		.uleb128 0x7
 3190 0045 0F       		.uleb128 0xf
 3191 0046 00       		.byte	0
 3192 0047 0B       		.uleb128 0xb
 3193 0048 0B       		.uleb128 0xb
 3194 0049 00       		.byte	0
 3195 004a 00       		.byte	0
 3196 004b 08       		.uleb128 0x8
 3197 004c 34       		.uleb128 0x34
 3198 004d 00       		.byte	0
 3199 004e 03       		.uleb128 0x3
 3200 004f 0E       		.uleb128 0xe
 3201 0050 3A       		.uleb128 0x3a
 3202 0051 0B       		.uleb128 0xb
 3203 0052 3B       		.uleb128 0x3b
 3204 0053 05       		.uleb128 0x5
 3205 0054 49       		.uleb128 0x49
 3206 0055 13       		.uleb128 0x13
 3207 0056 3F       		.uleb128 0x3f
 3208 0057 19       		.uleb128 0x19
 3209 0058 3C       		.uleb128 0x3c
 3210 0059 19       		.uleb128 0x19
 3211 005a 00       		.byte	0
 3212 005b 00       		.byte	0
 3213 005c 09       		.uleb128 0x9
 3214 005d 34       		.uleb128 0x34
 3215 005e 00       		.byte	0
 3216 005f 03       		.uleb128 0x3
 3217 0060 0E       		.uleb128 0xe
 3218 0061 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccmZuGH1.s 			page 72


 3219 0062 0B       		.uleb128 0xb
 3220 0063 3B       		.uleb128 0x3b
 3221 0064 0B       		.uleb128 0xb
 3222 0065 49       		.uleb128 0x49
 3223 0066 13       		.uleb128 0x13
 3224 0067 3F       		.uleb128 0x3f
 3225 0068 19       		.uleb128 0x19
 3226 0069 3C       		.uleb128 0x3c
 3227 006a 19       		.uleb128 0x19
 3228 006b 00       		.byte	0
 3229 006c 00       		.byte	0
 3230 006d 0A       		.uleb128 0xa
 3231 006e 13       		.uleb128 0x13
 3232 006f 01       		.byte	0x1
 3233 0070 0B       		.uleb128 0xb
 3234 0071 0B       		.uleb128 0xb
 3235 0072 3A       		.uleb128 0x3a
 3236 0073 0B       		.uleb128 0xb
 3237 0074 3B       		.uleb128 0x3b
 3238 0075 0B       		.uleb128 0xb
 3239 0076 01       		.uleb128 0x1
 3240 0077 13       		.uleb128 0x13
 3241 0078 00       		.byte	0
 3242 0079 00       		.byte	0
 3243 007a 0B       		.uleb128 0xb
 3244 007b 0D       		.uleb128 0xd
 3245 007c 00       		.byte	0
 3246 007d 03       		.uleb128 0x3
 3247 007e 0E       		.uleb128 0xe
 3248 007f 3A       		.uleb128 0x3a
 3249 0080 0B       		.uleb128 0xb
 3250 0081 3B       		.uleb128 0x3b
 3251 0082 0B       		.uleb128 0xb
 3252 0083 49       		.uleb128 0x49
 3253 0084 13       		.uleb128 0x13
 3254 0085 38       		.uleb128 0x38
 3255 0086 0B       		.uleb128 0xb
 3256 0087 00       		.byte	0
 3257 0088 00       		.byte	0
 3258 0089 0C       		.uleb128 0xc
 3259 008a 16       		.uleb128 0x16
 3260 008b 00       		.byte	0
 3261 008c 03       		.uleb128 0x3
 3262 008d 08       		.uleb128 0x8
 3263 008e 3A       		.uleb128 0x3a
 3264 008f 0B       		.uleb128 0xb
 3265 0090 3B       		.uleb128 0x3b
 3266 0091 0B       		.uleb128 0xb
 3267 0092 49       		.uleb128 0x49
 3268 0093 13       		.uleb128 0x13
 3269 0094 00       		.byte	0
 3270 0095 00       		.byte	0
 3271 0096 0D       		.uleb128 0xd
 3272 0097 16       		.uleb128 0x16
 3273 0098 00       		.byte	0
 3274 0099 03       		.uleb128 0x3
 3275 009a 0E       		.uleb128 0xe
ARM GAS  /tmp/ccmZuGH1.s 			page 73


 3276 009b 3A       		.uleb128 0x3a
 3277 009c 0B       		.uleb128 0xb
 3278 009d 3B       		.uleb128 0x3b
 3279 009e 05       		.uleb128 0x5
 3280 009f 49       		.uleb128 0x49
 3281 00a0 13       		.uleb128 0x13
 3282 00a1 00       		.byte	0
 3283 00a2 00       		.byte	0
 3284 00a3 0E       		.uleb128 0xe
 3285 00a4 17       		.uleb128 0x17
 3286 00a5 01       		.byte	0x1
 3287 00a6 0B       		.uleb128 0xb
 3288 00a7 0B       		.uleb128 0xb
 3289 00a8 3A       		.uleb128 0x3a
 3290 00a9 0B       		.uleb128 0xb
 3291 00aa 3B       		.uleb128 0x3b
 3292 00ab 0B       		.uleb128 0xb
 3293 00ac 01       		.uleb128 0x1
 3294 00ad 13       		.uleb128 0x13
 3295 00ae 00       		.byte	0
 3296 00af 00       		.byte	0
 3297 00b0 0F       		.uleb128 0xf
 3298 00b1 0D       		.uleb128 0xd
 3299 00b2 00       		.byte	0
 3300 00b3 03       		.uleb128 0x3
 3301 00b4 0E       		.uleb128 0xe
 3302 00b5 3A       		.uleb128 0x3a
 3303 00b6 0B       		.uleb128 0xb
 3304 00b7 3B       		.uleb128 0x3b
 3305 00b8 0B       		.uleb128 0xb
 3306 00b9 49       		.uleb128 0x49
 3307 00ba 13       		.uleb128 0x13
 3308 00bb 00       		.byte	0
 3309 00bc 00       		.byte	0
 3310 00bd 10       		.uleb128 0x10
 3311 00be 01       		.uleb128 0x1
 3312 00bf 01       		.byte	0x1
 3313 00c0 49       		.uleb128 0x49
 3314 00c1 13       		.uleb128 0x13
 3315 00c2 01       		.uleb128 0x1
 3316 00c3 13       		.uleb128 0x13
 3317 00c4 00       		.byte	0
 3318 00c5 00       		.byte	0
 3319 00c6 11       		.uleb128 0x11
 3320 00c7 21       		.uleb128 0x21
 3321 00c8 00       		.byte	0
 3322 00c9 49       		.uleb128 0x49
 3323 00ca 13       		.uleb128 0x13
 3324 00cb 2F       		.uleb128 0x2f
 3325 00cc 0B       		.uleb128 0xb
 3326 00cd 00       		.byte	0
 3327 00ce 00       		.byte	0
 3328 00cf 12       		.uleb128 0x12
 3329 00d0 13       		.uleb128 0x13
 3330 00d1 01       		.byte	0x1
 3331 00d2 03       		.uleb128 0x3
 3332 00d3 0E       		.uleb128 0xe
ARM GAS  /tmp/ccmZuGH1.s 			page 74


 3333 00d4 0B       		.uleb128 0xb
 3334 00d5 0B       		.uleb128 0xb
 3335 00d6 3A       		.uleb128 0x3a
 3336 00d7 0B       		.uleb128 0xb
 3337 00d8 3B       		.uleb128 0x3b
 3338 00d9 0B       		.uleb128 0xb
 3339 00da 01       		.uleb128 0x1
 3340 00db 13       		.uleb128 0x13
 3341 00dc 00       		.byte	0
 3342 00dd 00       		.byte	0
 3343 00de 13       		.uleb128 0x13
 3344 00df 0D       		.uleb128 0xd
 3345 00e0 00       		.byte	0
 3346 00e1 03       		.uleb128 0x3
 3347 00e2 08       		.uleb128 0x8
 3348 00e3 3A       		.uleb128 0x3a
 3349 00e4 0B       		.uleb128 0xb
 3350 00e5 3B       		.uleb128 0x3b
 3351 00e6 0B       		.uleb128 0xb
 3352 00e7 49       		.uleb128 0x49
 3353 00e8 13       		.uleb128 0x13
 3354 00e9 38       		.uleb128 0x38
 3355 00ea 0B       		.uleb128 0xb
 3356 00eb 00       		.byte	0
 3357 00ec 00       		.byte	0
 3358 00ed 14       		.uleb128 0x14
 3359 00ee 0F       		.uleb128 0xf
 3360 00ef 00       		.byte	0
 3361 00f0 0B       		.uleb128 0xb
 3362 00f1 0B       		.uleb128 0xb
 3363 00f2 49       		.uleb128 0x49
 3364 00f3 13       		.uleb128 0x13
 3365 00f4 00       		.byte	0
 3366 00f5 00       		.byte	0
 3367 00f6 15       		.uleb128 0x15
 3368 00f7 13       		.uleb128 0x13
 3369 00f8 01       		.byte	0x1
 3370 00f9 03       		.uleb128 0x3
 3371 00fa 0E       		.uleb128 0xe
 3372 00fb 0B       		.uleb128 0xb
 3373 00fc 05       		.uleb128 0x5
 3374 00fd 3A       		.uleb128 0x3a
 3375 00fe 0B       		.uleb128 0xb
 3376 00ff 3B       		.uleb128 0x3b
 3377 0100 0B       		.uleb128 0xb
 3378 0101 01       		.uleb128 0x1
 3379 0102 13       		.uleb128 0x13
 3380 0103 00       		.byte	0
 3381 0104 00       		.byte	0
 3382 0105 16       		.uleb128 0x16
 3383 0106 0D       		.uleb128 0xd
 3384 0107 00       		.byte	0
 3385 0108 03       		.uleb128 0x3
 3386 0109 0E       		.uleb128 0xe
 3387 010a 3A       		.uleb128 0x3a
 3388 010b 0B       		.uleb128 0xb
 3389 010c 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccmZuGH1.s 			page 75


 3390 010d 0B       		.uleb128 0xb
 3391 010e 49       		.uleb128 0x49
 3392 010f 13       		.uleb128 0x13
 3393 0110 38       		.uleb128 0x38
 3394 0111 05       		.uleb128 0x5
 3395 0112 00       		.byte	0
 3396 0113 00       		.byte	0
 3397 0114 17       		.uleb128 0x17
 3398 0115 15       		.uleb128 0x15
 3399 0116 00       		.byte	0
 3400 0117 27       		.uleb128 0x27
 3401 0118 19       		.uleb128 0x19
 3402 0119 00       		.byte	0
 3403 011a 00       		.byte	0
 3404 011b 18       		.uleb128 0x18
 3405 011c 15       		.uleb128 0x15
 3406 011d 01       		.byte	0x1
 3407 011e 27       		.uleb128 0x27
 3408 011f 19       		.uleb128 0x19
 3409 0120 49       		.uleb128 0x49
 3410 0121 13       		.uleb128 0x13
 3411 0122 01       		.uleb128 0x1
 3412 0123 13       		.uleb128 0x13
 3413 0124 00       		.byte	0
 3414 0125 00       		.byte	0
 3415 0126 19       		.uleb128 0x19
 3416 0127 05       		.uleb128 0x5
 3417 0128 00       		.byte	0
 3418 0129 49       		.uleb128 0x49
 3419 012a 13       		.uleb128 0x13
 3420 012b 00       		.byte	0
 3421 012c 00       		.byte	0
 3422 012d 1A       		.uleb128 0x1a
 3423 012e 13       		.uleb128 0x13
 3424 012f 01       		.byte	0x1
 3425 0130 03       		.uleb128 0x3
 3426 0131 0E       		.uleb128 0xe
 3427 0132 0B       		.uleb128 0xb
 3428 0133 05       		.uleb128 0x5
 3429 0134 3A       		.uleb128 0x3a
 3430 0135 0B       		.uleb128 0xb
 3431 0136 3B       		.uleb128 0x3b
 3432 0137 05       		.uleb128 0x5
 3433 0138 01       		.uleb128 0x1
 3434 0139 13       		.uleb128 0x13
 3435 013a 00       		.byte	0
 3436 013b 00       		.byte	0
 3437 013c 1B       		.uleb128 0x1b
 3438 013d 0D       		.uleb128 0xd
 3439 013e 00       		.byte	0
 3440 013f 03       		.uleb128 0x3
 3441 0140 0E       		.uleb128 0xe
 3442 0141 3A       		.uleb128 0x3a
 3443 0142 0B       		.uleb128 0xb
 3444 0143 3B       		.uleb128 0x3b
 3445 0144 05       		.uleb128 0x5
 3446 0145 49       		.uleb128 0x49
ARM GAS  /tmp/ccmZuGH1.s 			page 76


 3447 0146 13       		.uleb128 0x13
 3448 0147 38       		.uleb128 0x38
 3449 0148 0B       		.uleb128 0xb
 3450 0149 00       		.byte	0
 3451 014a 00       		.byte	0
 3452 014b 1C       		.uleb128 0x1c
 3453 014c 0D       		.uleb128 0xd
 3454 014d 00       		.byte	0
 3455 014e 03       		.uleb128 0x3
 3456 014f 0E       		.uleb128 0xe
 3457 0150 3A       		.uleb128 0x3a
 3458 0151 0B       		.uleb128 0xb
 3459 0152 3B       		.uleb128 0x3b
 3460 0153 05       		.uleb128 0x5
 3461 0154 49       		.uleb128 0x49
 3462 0155 13       		.uleb128 0x13
 3463 0156 38       		.uleb128 0x38
 3464 0157 05       		.uleb128 0x5
 3465 0158 00       		.byte	0
 3466 0159 00       		.byte	0
 3467 015a 1D       		.uleb128 0x1d
 3468 015b 13       		.uleb128 0x13
 3469 015c 01       		.byte	0x1
 3470 015d 03       		.uleb128 0x3
 3471 015e 0E       		.uleb128 0xe
 3472 015f 0B       		.uleb128 0xb
 3473 0160 0B       		.uleb128 0xb
 3474 0161 3A       		.uleb128 0x3a
 3475 0162 0B       		.uleb128 0xb
 3476 0163 3B       		.uleb128 0x3b
 3477 0164 05       		.uleb128 0x5
 3478 0165 01       		.uleb128 0x1
 3479 0166 13       		.uleb128 0x13
 3480 0167 00       		.byte	0
 3481 0168 00       		.byte	0
 3482 0169 1E       		.uleb128 0x1e
 3483 016a 13       		.uleb128 0x13
 3484 016b 01       		.byte	0x1
 3485 016c 0B       		.uleb128 0xb
 3486 016d 0B       		.uleb128 0xb
 3487 016e 3A       		.uleb128 0x3a
 3488 016f 0B       		.uleb128 0xb
 3489 0170 3B       		.uleb128 0x3b
 3490 0171 05       		.uleb128 0x5
 3491 0172 01       		.uleb128 0x1
 3492 0173 13       		.uleb128 0x13
 3493 0174 00       		.byte	0
 3494 0175 00       		.byte	0
 3495 0176 1F       		.uleb128 0x1f
 3496 0177 17       		.uleb128 0x17
 3497 0178 01       		.byte	0x1
 3498 0179 0B       		.uleb128 0xb
 3499 017a 0B       		.uleb128 0xb
 3500 017b 3A       		.uleb128 0x3a
 3501 017c 0B       		.uleb128 0xb
 3502 017d 3B       		.uleb128 0x3b
 3503 017e 05       		.uleb128 0x5
ARM GAS  /tmp/ccmZuGH1.s 			page 77


 3504 017f 01       		.uleb128 0x1
 3505 0180 13       		.uleb128 0x13
 3506 0181 00       		.byte	0
 3507 0182 00       		.byte	0
 3508 0183 20       		.uleb128 0x20
 3509 0184 0D       		.uleb128 0xd
 3510 0185 00       		.byte	0
 3511 0186 03       		.uleb128 0x3
 3512 0187 0E       		.uleb128 0xe
 3513 0188 3A       		.uleb128 0x3a
 3514 0189 0B       		.uleb128 0xb
 3515 018a 3B       		.uleb128 0x3b
 3516 018b 05       		.uleb128 0x5
 3517 018c 49       		.uleb128 0x49
 3518 018d 13       		.uleb128 0x13
 3519 018e 00       		.byte	0
 3520 018f 00       		.byte	0
 3521 0190 21       		.uleb128 0x21
 3522 0191 15       		.uleb128 0x15
 3523 0192 01       		.byte	0x1
 3524 0193 27       		.uleb128 0x27
 3525 0194 19       		.uleb128 0x19
 3526 0195 01       		.uleb128 0x1
 3527 0196 13       		.uleb128 0x13
 3528 0197 00       		.byte	0
 3529 0198 00       		.byte	0
 3530 0199 22       		.uleb128 0x22
 3531 019a 34       		.uleb128 0x34
 3532 019b 00       		.byte	0
 3533 019c 03       		.uleb128 0x3
 3534 019d 0E       		.uleb128 0xe
 3535 019e 3A       		.uleb128 0x3a
 3536 019f 0B       		.uleb128 0xb
 3537 01a0 3B       		.uleb128 0x3b
 3538 01a1 0B       		.uleb128 0xb
 3539 01a2 49       		.uleb128 0x49
 3540 01a3 13       		.uleb128 0x13
 3541 01a4 02       		.uleb128 0x2
 3542 01a5 18       		.uleb128 0x18
 3543 01a6 00       		.byte	0
 3544 01a7 00       		.byte	0
 3545 01a8 23       		.uleb128 0x23
 3546 01a9 2E       		.uleb128 0x2e
 3547 01aa 01       		.byte	0x1
 3548 01ab 3F       		.uleb128 0x3f
 3549 01ac 19       		.uleb128 0x19
 3550 01ad 03       		.uleb128 0x3
 3551 01ae 0E       		.uleb128 0xe
 3552 01af 3A       		.uleb128 0x3a
 3553 01b0 0B       		.uleb128 0xb
 3554 01b1 3B       		.uleb128 0x3b
 3555 01b2 05       		.uleb128 0x5
 3556 01b3 27       		.uleb128 0x27
 3557 01b4 19       		.uleb128 0x19
 3558 01b5 11       		.uleb128 0x11
 3559 01b6 01       		.uleb128 0x1
 3560 01b7 12       		.uleb128 0x12
ARM GAS  /tmp/ccmZuGH1.s 			page 78


 3561 01b8 06       		.uleb128 0x6
 3562 01b9 40       		.uleb128 0x40
 3563 01ba 18       		.uleb128 0x18
 3564 01bb 9742     		.uleb128 0x2117
 3565 01bd 19       		.uleb128 0x19
 3566 01be 01       		.uleb128 0x1
 3567 01bf 13       		.uleb128 0x13
 3568 01c0 00       		.byte	0
 3569 01c1 00       		.byte	0
 3570 01c2 24       		.uleb128 0x24
 3571 01c3 05       		.uleb128 0x5
 3572 01c4 00       		.byte	0
 3573 01c5 03       		.uleb128 0x3
 3574 01c6 0E       		.uleb128 0xe
 3575 01c7 3A       		.uleb128 0x3a
 3576 01c8 0B       		.uleb128 0xb
 3577 01c9 3B       		.uleb128 0x3b
 3578 01ca 05       		.uleb128 0x5
 3579 01cb 49       		.uleb128 0x49
 3580 01cc 13       		.uleb128 0x13
 3581 01cd 02       		.uleb128 0x2
 3582 01ce 18       		.uleb128 0x18
 3583 01cf 00       		.byte	0
 3584 01d0 00       		.byte	0
 3585 01d1 25       		.uleb128 0x25
 3586 01d2 05       		.uleb128 0x5
 3587 01d3 00       		.byte	0
 3588 01d4 03       		.uleb128 0x3
 3589 01d5 0E       		.uleb128 0xe
 3590 01d6 3A       		.uleb128 0x3a
 3591 01d7 0B       		.uleb128 0xb
 3592 01d8 3B       		.uleb128 0x3b
 3593 01d9 05       		.uleb128 0x5
 3594 01da 49       		.uleb128 0x49
 3595 01db 13       		.uleb128 0x13
 3596 01dc 02       		.uleb128 0x2
 3597 01dd 17       		.uleb128 0x17
 3598 01de 00       		.byte	0
 3599 01df 00       		.byte	0
 3600 01e0 26       		.uleb128 0x26
 3601 01e1 34       		.uleb128 0x34
 3602 01e2 00       		.byte	0
 3603 01e3 03       		.uleb128 0x3
 3604 01e4 0E       		.uleb128 0xe
 3605 01e5 3A       		.uleb128 0x3a
 3606 01e6 0B       		.uleb128 0xb
 3607 01e7 3B       		.uleb128 0x3b
 3608 01e8 05       		.uleb128 0x5
 3609 01e9 49       		.uleb128 0x49
 3610 01ea 13       		.uleb128 0x13
 3611 01eb 02       		.uleb128 0x2
 3612 01ec 17       		.uleb128 0x17
 3613 01ed 00       		.byte	0
 3614 01ee 00       		.byte	0
 3615 01ef 27       		.uleb128 0x27
 3616 01f0 2E       		.uleb128 0x2e
 3617 01f1 01       		.byte	0x1
ARM GAS  /tmp/ccmZuGH1.s 			page 79


 3618 01f2 3F       		.uleb128 0x3f
 3619 01f3 19       		.uleb128 0x19
 3620 01f4 03       		.uleb128 0x3
 3621 01f5 0E       		.uleb128 0xe
 3622 01f6 3A       		.uleb128 0x3a
 3623 01f7 0B       		.uleb128 0xb
 3624 01f8 3B       		.uleb128 0x3b
 3625 01f9 05       		.uleb128 0x5
 3626 01fa 27       		.uleb128 0x27
 3627 01fb 19       		.uleb128 0x19
 3628 01fc 49       		.uleb128 0x49
 3629 01fd 13       		.uleb128 0x13
 3630 01fe 11       		.uleb128 0x11
 3631 01ff 01       		.uleb128 0x1
 3632 0200 12       		.uleb128 0x12
 3633 0201 06       		.uleb128 0x6
 3634 0202 40       		.uleb128 0x40
 3635 0203 18       		.uleb128 0x18
 3636 0204 9742     		.uleb128 0x2117
 3637 0206 19       		.uleb128 0x19
 3638 0207 01       		.uleb128 0x1
 3639 0208 13       		.uleb128 0x13
 3640 0209 00       		.byte	0
 3641 020a 00       		.byte	0
 3642 020b 28       		.uleb128 0x28
 3643 020c 2E       		.uleb128 0x2e
 3644 020d 01       		.byte	0x1
 3645 020e 3F       		.uleb128 0x3f
 3646 020f 19       		.uleb128 0x19
 3647 0210 03       		.uleb128 0x3
 3648 0211 0E       		.uleb128 0xe
 3649 0212 3A       		.uleb128 0x3a
 3650 0213 0B       		.uleb128 0xb
 3651 0214 3B       		.uleb128 0x3b
 3652 0215 0B       		.uleb128 0xb
 3653 0216 27       		.uleb128 0x27
 3654 0217 19       		.uleb128 0x19
 3655 0218 49       		.uleb128 0x49
 3656 0219 13       		.uleb128 0x13
 3657 021a 11       		.uleb128 0x11
 3658 021b 01       		.uleb128 0x1
 3659 021c 12       		.uleb128 0x12
 3660 021d 06       		.uleb128 0x6
 3661 021e 40       		.uleb128 0x40
 3662 021f 18       		.uleb128 0x18
 3663 0220 9742     		.uleb128 0x2117
 3664 0222 19       		.uleb128 0x19
 3665 0223 01       		.uleb128 0x1
 3666 0224 13       		.uleb128 0x13
 3667 0225 00       		.byte	0
 3668 0226 00       		.byte	0
 3669 0227 29       		.uleb128 0x29
 3670 0228 05       		.uleb128 0x5
 3671 0229 00       		.byte	0
 3672 022a 03       		.uleb128 0x3
 3673 022b 0E       		.uleb128 0xe
 3674 022c 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccmZuGH1.s 			page 80


 3675 022d 0B       		.uleb128 0xb
 3676 022e 3B       		.uleb128 0x3b
 3677 022f 0B       		.uleb128 0xb
 3678 0230 49       		.uleb128 0x49
 3679 0231 13       		.uleb128 0x13
 3680 0232 02       		.uleb128 0x2
 3681 0233 17       		.uleb128 0x17
 3682 0234 00       		.byte	0
 3683 0235 00       		.byte	0
 3684 0236 2A       		.uleb128 0x2a
 3685 0237 34       		.uleb128 0x34
 3686 0238 00       		.byte	0
 3687 0239 03       		.uleb128 0x3
 3688 023a 0E       		.uleb128 0xe
 3689 023b 3A       		.uleb128 0x3a
 3690 023c 0B       		.uleb128 0xb
 3691 023d 3B       		.uleb128 0x3b
 3692 023e 0B       		.uleb128 0xb
 3693 023f 49       		.uleb128 0x49
 3694 0240 13       		.uleb128 0x13
 3695 0241 02       		.uleb128 0x2
 3696 0242 17       		.uleb128 0x17
 3697 0243 00       		.byte	0
 3698 0244 00       		.byte	0
 3699 0245 2B       		.uleb128 0x2b
 3700 0246 2E       		.uleb128 0x2e
 3701 0247 01       		.byte	0x1
 3702 0248 3F       		.uleb128 0x3f
 3703 0249 19       		.uleb128 0x19
 3704 024a 03       		.uleb128 0x3
 3705 024b 0E       		.uleb128 0xe
 3706 024c 3A       		.uleb128 0x3a
 3707 024d 0B       		.uleb128 0xb
 3708 024e 3B       		.uleb128 0x3b
 3709 024f 0B       		.uleb128 0xb
 3710 0250 27       		.uleb128 0x27
 3711 0251 19       		.uleb128 0x19
 3712 0252 11       		.uleb128 0x11
 3713 0253 01       		.uleb128 0x1
 3714 0254 12       		.uleb128 0x12
 3715 0255 06       		.uleb128 0x6
 3716 0256 40       		.uleb128 0x40
 3717 0257 18       		.uleb128 0x18
 3718 0258 9742     		.uleb128 0x2117
 3719 025a 19       		.uleb128 0x19
 3720 025b 01       		.uleb128 0x1
 3721 025c 13       		.uleb128 0x13
 3722 025d 00       		.byte	0
 3723 025e 00       		.byte	0
 3724 025f 2C       		.uleb128 0x2c
 3725 0260 05       		.uleb128 0x5
 3726 0261 00       		.byte	0
 3727 0262 03       		.uleb128 0x3
 3728 0263 0E       		.uleb128 0xe
 3729 0264 3A       		.uleb128 0x3a
 3730 0265 0B       		.uleb128 0xb
 3731 0266 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccmZuGH1.s 			page 81


 3732 0267 0B       		.uleb128 0xb
 3733 0268 49       		.uleb128 0x49
 3734 0269 13       		.uleb128 0x13
 3735 026a 02       		.uleb128 0x2
 3736 026b 18       		.uleb128 0x18
 3737 026c 00       		.byte	0
 3738 026d 00       		.byte	0
 3739 026e 2D       		.uleb128 0x2d
 3740 026f 2E       		.uleb128 0x2e
 3741 0270 01       		.byte	0x1
 3742 0271 3F       		.uleb128 0x3f
 3743 0272 19       		.uleb128 0x19
 3744 0273 03       		.uleb128 0x3
 3745 0274 0E       		.uleb128 0xe
 3746 0275 3A       		.uleb128 0x3a
 3747 0276 0B       		.uleb128 0xb
 3748 0277 3B       		.uleb128 0x3b
 3749 0278 0B       		.uleb128 0xb
 3750 0279 27       		.uleb128 0x27
 3751 027a 19       		.uleb128 0x19
 3752 027b 11       		.uleb128 0x11
 3753 027c 01       		.uleb128 0x1
 3754 027d 12       		.uleb128 0x12
 3755 027e 06       		.uleb128 0x6
 3756 027f 40       		.uleb128 0x40
 3757 0280 18       		.uleb128 0x18
 3758 0281 9742     		.uleb128 0x2117
 3759 0283 19       		.uleb128 0x19
 3760 0284 00       		.byte	0
 3761 0285 00       		.byte	0
 3762 0286 00       		.byte	0
 3763              		.section	.debug_loc,"",%progbits
 3764              	.Ldebug_loc0:
 3765              	.LLST43:
 3766 0000 00000000 		.4byte	.LVL85
 3767 0004 02000000 		.4byte	.LVL86
 3768 0008 0100     		.2byte	0x1
 3769 000a 51       		.byte	0x51
 3770 000b 02000000 		.4byte	.LVL86
 3771 000f 16000000 		.4byte	.LFE161
 3772 0013 0400     		.2byte	0x4
 3773 0015 F3       		.byte	0xf3
 3774 0016 01       		.uleb128 0x1
 3775 0017 51       		.byte	0x51
 3776 0018 9F       		.byte	0x9f
 3777 0019 00000000 		.4byte	0
 3778 001d 00000000 		.4byte	0
 3779              	.LLST44:
 3780 0021 00000000 		.4byte	.LVL85
 3781 0025 06000000 		.4byte	.LVL88
 3782 0029 0100     		.2byte	0x1
 3783 002b 52       		.byte	0x52
 3784 002c 06000000 		.4byte	.LVL88
 3785 0030 16000000 		.4byte	.LFE161
 3786 0034 0400     		.2byte	0x4
 3787 0036 F3       		.byte	0xf3
 3788 0037 01       		.uleb128 0x1
ARM GAS  /tmp/ccmZuGH1.s 			page 82


 3789 0038 52       		.byte	0x52
 3790 0039 9F       		.byte	0x9f
 3791 003a 00000000 		.4byte	0
 3792 003e 00000000 		.4byte	0
 3793              	.LLST45:
 3794 0042 04000000 		.4byte	.LVL87
 3795 0046 10000000 		.4byte	.LVL89
 3796 004a 0100     		.2byte	0x1
 3797 004c 53       		.byte	0x53
 3798 004d 10000000 		.4byte	.LVL89
 3799 0051 12000000 		.4byte	.LVL90
 3800 0055 0100     		.2byte	0x1
 3801 0057 51       		.byte	0x51
 3802 0058 12000000 		.4byte	.LVL90
 3803 005c 16000000 		.4byte	.LFE161
 3804 0060 0100     		.2byte	0x1
 3805 0062 52       		.byte	0x52
 3806 0063 00000000 		.4byte	0
 3807 0067 00000000 		.4byte	0
 3808              	.LLST42:
 3809 006b 00000000 		.4byte	.LVL82
 3810 006f 04000000 		.4byte	.LVL83
 3811 0073 0100     		.2byte	0x1
 3812 0075 51       		.byte	0x51
 3813 0076 04000000 		.4byte	.LVL83
 3814 007a 16000000 		.4byte	.LFE159
 3815 007e 0400     		.2byte	0x4
 3816 0080 F3       		.byte	0xf3
 3817 0081 01       		.uleb128 0x1
 3818 0082 51       		.byte	0x51
 3819 0083 9F       		.byte	0x9f
 3820 0084 00000000 		.4byte	0
 3821 0088 00000000 		.4byte	0
 3822              	.LLST41:
 3823 008c 00000000 		.4byte	.LVL80
 3824 0090 04000000 		.4byte	.LVL81
 3825 0094 0100     		.2byte	0x1
 3826 0096 51       		.byte	0x51
 3827 0097 04000000 		.4byte	.LVL81
 3828 009b 16000000 		.4byte	.LFE158
 3829 009f 0400     		.2byte	0x4
 3830 00a1 F3       		.byte	0xf3
 3831 00a2 01       		.uleb128 0x1
 3832 00a3 51       		.byte	0x51
 3833 00a4 9F       		.byte	0x9f
 3834 00a5 00000000 		.4byte	0
 3835 00a9 00000000 		.4byte	0
 3836              	.LLST40:
 3837 00ad 00000000 		.4byte	.LVL78
 3838 00b1 02000000 		.4byte	.LVL79
 3839 00b5 0100     		.2byte	0x1
 3840 00b7 50       		.byte	0x50
 3841 00b8 02000000 		.4byte	.LVL79
 3842 00bc 04000000 		.4byte	.LFE157
 3843 00c0 0400     		.2byte	0x4
 3844 00c2 F3       		.byte	0xf3
 3845 00c3 01       		.uleb128 0x1
ARM GAS  /tmp/ccmZuGH1.s 			page 83


 3846 00c4 50       		.byte	0x50
 3847 00c5 9F       		.byte	0x9f
 3848 00c6 00000000 		.4byte	0
 3849 00ca 00000000 		.4byte	0
 3850              	.LLST39:
 3851 00ce 00000000 		.4byte	.LVL75
 3852 00d2 02000000 		.4byte	.LVL76
 3853 00d6 0100     		.2byte	0x1
 3854 00d8 50       		.byte	0x50
 3855 00d9 02000000 		.4byte	.LVL76
 3856 00dd 04000000 		.4byte	.LFE155
 3857 00e1 0400     		.2byte	0x4
 3858 00e3 F3       		.byte	0xf3
 3859 00e4 01       		.uleb128 0x1
 3860 00e5 50       		.byte	0x50
 3861 00e6 9F       		.byte	0x9f
 3862 00e7 00000000 		.4byte	0
 3863 00eb 00000000 		.4byte	0
 3864              	.LLST33:
 3865 00ef 00000000 		.4byte	.LVL65
 3866 00f3 4A000000 		.4byte	.LVL71
 3867 00f7 0100     		.2byte	0x1
 3868 00f9 50       		.byte	0x50
 3869 00fa 4A000000 		.4byte	.LVL71
 3870 00fe 60000000 		.4byte	.LFE152
 3871 0102 0400     		.2byte	0x4
 3872 0104 F3       		.byte	0xf3
 3873 0105 01       		.uleb128 0x1
 3874 0106 50       		.byte	0x50
 3875 0107 9F       		.byte	0x9f
 3876 0108 00000000 		.4byte	0
 3877 010c 00000000 		.4byte	0
 3878              	.LLST34:
 3879 0110 00000000 		.4byte	.LVL65
 3880 0114 08000000 		.4byte	.LVL66
 3881 0118 0100     		.2byte	0x1
 3882 011a 51       		.byte	0x51
 3883 011b 08000000 		.4byte	.LVL66
 3884 011f 60000000 		.4byte	.LFE152
 3885 0123 0400     		.2byte	0x4
 3886 0125 F3       		.byte	0xf3
 3887 0126 01       		.uleb128 0x1
 3888 0127 51       		.byte	0x51
 3889 0128 9F       		.byte	0x9f
 3890 0129 00000000 		.4byte	0
 3891 012d 00000000 		.4byte	0
 3892              	.LLST35:
 3893 0131 00000000 		.4byte	.LVL65
 3894 0135 16000000 		.4byte	.LVL67
 3895 0139 0100     		.2byte	0x1
 3896 013b 52       		.byte	0x52
 3897 013c 16000000 		.4byte	.LVL67
 3898 0140 60000000 		.4byte	.LFE152
 3899 0144 0400     		.2byte	0x4
 3900 0146 F3       		.byte	0xf3
 3901 0147 01       		.uleb128 0x1
 3902 0148 52       		.byte	0x52
ARM GAS  /tmp/ccmZuGH1.s 			page 84


 3903 0149 9F       		.byte	0x9f
 3904 014a 00000000 		.4byte	0
 3905 014e 00000000 		.4byte	0
 3906              	.LLST36:
 3907 0152 00000000 		.4byte	.LVL65
 3908 0156 24000000 		.4byte	.LVL69
 3909 015a 0100     		.2byte	0x1
 3910 015c 53       		.byte	0x53
 3911 015d 24000000 		.4byte	.LVL69
 3912 0161 60000000 		.4byte	.LFE152
 3913 0165 0400     		.2byte	0x4
 3914 0167 F3       		.byte	0xf3
 3915 0168 01       		.uleb128 0x1
 3916 0169 53       		.byte	0x53
 3917 016a 9F       		.byte	0x9f
 3918 016b 00000000 		.4byte	0
 3919 016f 00000000 		.4byte	0
 3920              	.LLST37:
 3921 0173 00000000 		.4byte	.LVL65
 3922 0177 4C000000 		.4byte	.LVL72
 3923 017b 0200     		.2byte	0x2
 3924 017d 91       		.byte	0x91
 3925 017e 00       		.sleb128 0
 3926 017f 4C000000 		.4byte	.LVL72
 3927 0183 60000000 		.4byte	.LFE152
 3928 0187 0200     		.2byte	0x2
 3929 0189 7D       		.byte	0x7d
 3930 018a 00       		.sleb128 0
 3931 018b 00000000 		.4byte	0
 3932 018f 00000000 		.4byte	0
 3933              	.LLST38:
 3934 0193 00000000 		.4byte	.LVL65
 3935 0197 1C000000 		.4byte	.LVL68
 3936 019b 0200     		.2byte	0x2
 3937 019d 30       		.byte	0x30
 3938 019e 9F       		.byte	0x9f
 3939 019f 1C000000 		.4byte	.LVL68
 3940 01a3 60000000 		.4byte	.LFE152
 3941 01a7 0100     		.2byte	0x1
 3942 01a9 51       		.byte	0x51
 3943 01aa 00000000 		.4byte	0
 3944 01ae 00000000 		.4byte	0
 3945              	.LLST27:
 3946 01b2 00000000 		.4byte	.LVL56
 3947 01b6 A6000000 		.4byte	.LVL63
 3948 01ba 0100     		.2byte	0x1
 3949 01bc 50       		.byte	0x50
 3950 01bd A6000000 		.4byte	.LVL63
 3951 01c1 BC000000 		.4byte	.LFE151
 3952 01c5 0400     		.2byte	0x4
 3953 01c7 F3       		.byte	0xf3
 3954 01c8 01       		.uleb128 0x1
 3955 01c9 50       		.byte	0x50
 3956 01ca 9F       		.byte	0x9f
 3957 01cb 00000000 		.4byte	0
 3958 01cf 00000000 		.4byte	0
 3959              	.LLST28:
ARM GAS  /tmp/ccmZuGH1.s 			page 85


 3960 01d3 00000000 		.4byte	.LVL56
 3961 01d7 76000000 		.4byte	.LVL61
 3962 01db 0100     		.2byte	0x1
 3963 01dd 51       		.byte	0x51
 3964 01de 76000000 		.4byte	.LVL61
 3965 01e2 BC000000 		.4byte	.LFE151
 3966 01e6 0400     		.2byte	0x4
 3967 01e8 F3       		.byte	0xf3
 3968 01e9 01       		.uleb128 0x1
 3969 01ea 51       		.byte	0x51
 3970 01eb 9F       		.byte	0x9f
 3971 01ec 00000000 		.4byte	0
 3972 01f0 00000000 		.4byte	0
 3973              	.LLST29:
 3974 01f4 00000000 		.4byte	.LVL56
 3975 01f8 3E000000 		.4byte	.LVL60
 3976 01fc 0100     		.2byte	0x1
 3977 01fe 52       		.byte	0x52
 3978 01ff 3E000000 		.4byte	.LVL60
 3979 0203 BC000000 		.4byte	.LFE151
 3980 0207 0400     		.2byte	0x4
 3981 0209 F3       		.byte	0xf3
 3982 020a 01       		.uleb128 0x1
 3983 020b 52       		.byte	0x52
 3984 020c 9F       		.byte	0x9f
 3985 020d 00000000 		.4byte	0
 3986 0211 00000000 		.4byte	0
 3987              	.LLST30:
 3988 0215 00000000 		.4byte	.LVL56
 3989 0219 2A000000 		.4byte	.LVL59
 3990 021d 0100     		.2byte	0x1
 3991 021f 53       		.byte	0x53
 3992 0220 2A000000 		.4byte	.LVL59
 3993 0224 BC000000 		.4byte	.LFE151
 3994 0228 0400     		.2byte	0x4
 3995 022a F3       		.byte	0xf3
 3996 022b 01       		.uleb128 0x1
 3997 022c 53       		.byte	0x53
 3998 022d 9F       		.byte	0x9f
 3999 022e 00000000 		.4byte	0
 4000 0232 00000000 		.4byte	0
 4001              	.LLST31:
 4002 0236 00000000 		.4byte	.LVL56
 4003 023a AE000000 		.4byte	.LVL64
 4004 023e 0200     		.2byte	0x2
 4005 0240 91       		.byte	0x91
 4006 0241 00       		.sleb128 0
 4007 0242 AE000000 		.4byte	.LVL64
 4008 0246 BC000000 		.4byte	.LFE151
 4009 024a 0200     		.2byte	0x2
 4010 024c 7D       		.byte	0x7d
 4011 024d 00       		.sleb128 0
 4012 024e 00000000 		.4byte	0
 4013 0252 00000000 		.4byte	0
 4014              	.LLST32:
 4015 0256 0E000000 		.4byte	.LVL57
 4016 025a 1A000000 		.4byte	.LVL58
ARM GAS  /tmp/ccmZuGH1.s 			page 86


 4017 025e 4C00     		.2byte	0x4c
 4018 0260 71       		.byte	0x71
 4019 0261 00       		.sleb128 0
 4020 0262 F7       		.byte	0xf7
 4021 0263 25       		.uleb128 0x25
 4022 0264 0A       		.byte	0xa
 4023 0265 E803     		.2byte	0x3e8
 4024 0267 F7       		.byte	0xf7
 4025 0268 25       		.uleb128 0x25
 4026 0269 1B       		.byte	0x1b
 4027 026a F7       		.byte	0xf7
 4028 026b 00       		.uleb128 0
 4029 026c 34       		.byte	0x34
 4030 026d 24       		.byte	0x24
 4031 026e 71       		.byte	0x71
 4032 026f 00       		.sleb128 0
 4033 0270 F7       		.byte	0xf7
 4034 0271 25       		.uleb128 0x25
 4035 0272 08       		.byte	0x8
 4036 0273 64       		.byte	0x64
 4037 0274 F7       		.byte	0xf7
 4038 0275 25       		.uleb128 0x25
 4039 0276 1B       		.byte	0x1b
 4040 0277 F7       		.byte	0xf7
 4041 0278 00       		.uleb128 0
 4042 0279 3A       		.byte	0x3a
 4043 027a 1D       		.byte	0x1d
 4044 027b 21       		.byte	0x21
 4045 027c 71       		.byte	0x71
 4046 027d 00       		.sleb128 0
 4047 027e 3A       		.byte	0x3a
 4048 027f 1D       		.byte	0x1d
 4049 0280 38       		.byte	0x38
 4050 0281 24       		.byte	0x24
 4051 0282 21       		.byte	0x21
 4052 0283 71       		.byte	0x71
 4053 0284 00       		.sleb128 0
 4054 0285 F7       		.byte	0xf7
 4055 0286 25       		.uleb128 0x25
 4056 0287 3A       		.byte	0x3a
 4057 0288 F7       		.byte	0xf7
 4058 0289 25       		.uleb128 0x25
 4059 028a 1B       		.byte	0x1b
 4060 028b F7       		.byte	0xf7
 4061 028c 00       		.uleb128 0
 4062 028d 3A       		.byte	0x3a
 4063 028e 1D       		.byte	0x1d
 4064 028f 3C       		.byte	0x3c
 4065 0290 24       		.byte	0x24
 4066 0291 21       		.byte	0x21
 4067 0292 72       		.byte	0x72
 4068 0293 00       		.sleb128 0
 4069 0294 3A       		.byte	0x3a
 4070 0295 1D       		.byte	0x1d
 4071 0296 40       		.byte	0x40
 4072 0297 24       		.byte	0x24
 4073 0298 21       		.byte	0x21
ARM GAS  /tmp/ccmZuGH1.s 			page 87


 4074 0299 72       		.byte	0x72
 4075 029a 00       		.sleb128 0
 4076 029b F7       		.byte	0xf7
 4077 029c 25       		.uleb128 0x25
 4078 029d 3A       		.byte	0x3a
 4079 029e F7       		.byte	0xf7
 4080 029f 25       		.uleb128 0x25
 4081 02a0 1B       		.byte	0x1b
 4082 02a1 F7       		.byte	0xf7
 4083 02a2 00       		.uleb128 0
 4084 02a3 44       		.byte	0x44
 4085 02a4 24       		.byte	0x24
 4086 02a5 21       		.byte	0x21
 4087 02a6 74       		.byte	0x74
 4088 02a7 00       		.sleb128 0
 4089 02a8 45       		.byte	0x45
 4090 02a9 24       		.byte	0x24
 4091 02aa 21       		.byte	0x21
 4092 02ab 9F       		.byte	0x9f
 4093 02ac 1A000000 		.4byte	.LVL58
 4094 02b0 3E000000 		.4byte	.LVL60
 4095 02b4 4D00     		.2byte	0x4d
 4096 02b6 71       		.byte	0x71
 4097 02b7 00       		.sleb128 0
 4098 02b8 F7       		.byte	0xf7
 4099 02b9 25       		.uleb128 0x25
 4100 02ba 0A       		.byte	0xa
 4101 02bb E803     		.2byte	0x3e8
 4102 02bd F7       		.byte	0xf7
 4103 02be 25       		.uleb128 0x25
 4104 02bf 1B       		.byte	0x1b
 4105 02c0 F7       		.byte	0xf7
 4106 02c1 00       		.uleb128 0
 4107 02c2 34       		.byte	0x34
 4108 02c3 24       		.byte	0x24
 4109 02c4 71       		.byte	0x71
 4110 02c5 00       		.sleb128 0
 4111 02c6 F7       		.byte	0xf7
 4112 02c7 25       		.uleb128 0x25
 4113 02c8 08       		.byte	0x8
 4114 02c9 64       		.byte	0x64
 4115 02ca F7       		.byte	0xf7
 4116 02cb 25       		.uleb128 0x25
 4117 02cc 1B       		.byte	0x1b
 4118 02cd F7       		.byte	0xf7
 4119 02ce 00       		.uleb128 0
 4120 02cf 3A       		.byte	0x3a
 4121 02d0 1D       		.byte	0x1d
 4122 02d1 21       		.byte	0x21
 4123 02d2 71       		.byte	0x71
 4124 02d3 00       		.sleb128 0
 4125 02d4 3A       		.byte	0x3a
 4126 02d5 1D       		.byte	0x1d
 4127 02d6 38       		.byte	0x38
 4128 02d7 24       		.byte	0x24
 4129 02d8 21       		.byte	0x21
 4130 02d9 71       		.byte	0x71
ARM GAS  /tmp/ccmZuGH1.s 			page 88


 4131 02da 00       		.sleb128 0
 4132 02db F7       		.byte	0xf7
 4133 02dc 25       		.uleb128 0x25
 4134 02dd 3A       		.byte	0x3a
 4135 02de F7       		.byte	0xf7
 4136 02df 25       		.uleb128 0x25
 4137 02e0 1B       		.byte	0x1b
 4138 02e1 F7       		.byte	0xf7
 4139 02e2 00       		.uleb128 0
 4140 02e3 3A       		.byte	0x3a
 4141 02e4 1D       		.byte	0x1d
 4142 02e5 3C       		.byte	0x3c
 4143 02e6 24       		.byte	0x24
 4144 02e7 21       		.byte	0x21
 4145 02e8 72       		.byte	0x72
 4146 02e9 00       		.sleb128 0
 4147 02ea 3A       		.byte	0x3a
 4148 02eb 1D       		.byte	0x1d
 4149 02ec 40       		.byte	0x40
 4150 02ed 24       		.byte	0x24
 4151 02ee 21       		.byte	0x21
 4152 02ef 72       		.byte	0x72
 4153 02f0 00       		.sleb128 0
 4154 02f1 F7       		.byte	0xf7
 4155 02f2 25       		.uleb128 0x25
 4156 02f3 3A       		.byte	0x3a
 4157 02f4 F7       		.byte	0xf7
 4158 02f5 25       		.uleb128 0x25
 4159 02f6 1B       		.byte	0x1b
 4160 02f7 F7       		.byte	0xf7
 4161 02f8 00       		.uleb128 0
 4162 02f9 44       		.byte	0x44
 4163 02fa 24       		.byte	0x24
 4164 02fb 21       		.byte	0x21
 4165 02fc 91       		.byte	0x91
 4166 02fd 00       		.sleb128 0
 4167 02fe 06       		.byte	0x6
 4168 02ff 45       		.byte	0x45
 4169 0300 24       		.byte	0x24
 4170 0301 21       		.byte	0x21
 4171 0302 9F       		.byte	0x9f
 4172 0303 3E000000 		.4byte	.LVL60
 4173 0307 76000000 		.4byte	.LVL61
 4174 030b 4F00     		.2byte	0x4f
 4175 030d 71       		.byte	0x71
 4176 030e 00       		.sleb128 0
 4177 030f F7       		.byte	0xf7
 4178 0310 25       		.uleb128 0x25
 4179 0311 0A       		.byte	0xa
 4180 0312 E803     		.2byte	0x3e8
 4181 0314 F7       		.byte	0xf7
 4182 0315 25       		.uleb128 0x25
 4183 0316 1B       		.byte	0x1b
 4184 0317 F7       		.byte	0xf7
 4185 0318 00       		.uleb128 0
 4186 0319 34       		.byte	0x34
 4187 031a 24       		.byte	0x24
ARM GAS  /tmp/ccmZuGH1.s 			page 89


 4188 031b 71       		.byte	0x71
 4189 031c 00       		.sleb128 0
 4190 031d F7       		.byte	0xf7
 4191 031e 25       		.uleb128 0x25
 4192 031f 08       		.byte	0x8
 4193 0320 64       		.byte	0x64
 4194 0321 F7       		.byte	0xf7
 4195 0322 25       		.uleb128 0x25
 4196 0323 1B       		.byte	0x1b
 4197 0324 F7       		.byte	0xf7
 4198 0325 00       		.uleb128 0
 4199 0326 3A       		.byte	0x3a
 4200 0327 1D       		.byte	0x1d
 4201 0328 21       		.byte	0x21
 4202 0329 71       		.byte	0x71
 4203 032a 00       		.sleb128 0
 4204 032b 3A       		.byte	0x3a
 4205 032c 1D       		.byte	0x1d
 4206 032d 38       		.byte	0x38
 4207 032e 24       		.byte	0x24
 4208 032f 21       		.byte	0x21
 4209 0330 71       		.byte	0x71
 4210 0331 00       		.sleb128 0
 4211 0332 F7       		.byte	0xf7
 4212 0333 25       		.uleb128 0x25
 4213 0334 3A       		.byte	0x3a
 4214 0335 F7       		.byte	0xf7
 4215 0336 25       		.uleb128 0x25
 4216 0337 1B       		.byte	0x1b
 4217 0338 F7       		.byte	0xf7
 4218 0339 00       		.uleb128 0
 4219 033a 3A       		.byte	0x3a
 4220 033b 1D       		.byte	0x1d
 4221 033c 3C       		.byte	0x3c
 4222 033d 24       		.byte	0x24
 4223 033e 21       		.byte	0x21
 4224 033f F3       		.byte	0xf3
 4225 0340 01       		.uleb128 0x1
 4226 0341 52       		.byte	0x52
 4227 0342 3A       		.byte	0x3a
 4228 0343 1D       		.byte	0x1d
 4229 0344 40       		.byte	0x40
 4230 0345 24       		.byte	0x24
 4231 0346 21       		.byte	0x21
 4232 0347 F3       		.byte	0xf3
 4233 0348 01       		.uleb128 0x1
 4234 0349 52       		.byte	0x52
 4235 034a F7       		.byte	0xf7
 4236 034b 25       		.uleb128 0x25
 4237 034c 3A       		.byte	0x3a
 4238 034d F7       		.byte	0xf7
 4239 034e 25       		.uleb128 0x25
 4240 034f 1B       		.byte	0x1b
 4241 0350 F7       		.byte	0xf7
 4242 0351 00       		.uleb128 0
 4243 0352 44       		.byte	0x44
 4244 0353 24       		.byte	0x24
ARM GAS  /tmp/ccmZuGH1.s 			page 90


 4245 0354 21       		.byte	0x21
 4246 0355 91       		.byte	0x91
 4247 0356 00       		.sleb128 0
 4248 0357 06       		.byte	0x6
 4249 0358 45       		.byte	0x45
 4250 0359 24       		.byte	0x24
 4251 035a 21       		.byte	0x21
 4252 035b 9F       		.byte	0x9f
 4253 035c 76000000 		.4byte	.LVL61
 4254 0360 82000000 		.4byte	.LVL62
 4255 0364 5300     		.2byte	0x53
 4256 0366 F3       		.byte	0xf3
 4257 0367 01       		.uleb128 0x1
 4258 0368 51       		.byte	0x51
 4259 0369 F7       		.byte	0xf7
 4260 036a 25       		.uleb128 0x25
 4261 036b 0A       		.byte	0xa
 4262 036c E803     		.2byte	0x3e8
 4263 036e F7       		.byte	0xf7
 4264 036f 25       		.uleb128 0x25
 4265 0370 1B       		.byte	0x1b
 4266 0371 F7       		.byte	0xf7
 4267 0372 00       		.uleb128 0
 4268 0373 34       		.byte	0x34
 4269 0374 24       		.byte	0x24
 4270 0375 F3       		.byte	0xf3
 4271 0376 01       		.uleb128 0x1
 4272 0377 51       		.byte	0x51
 4273 0378 F7       		.byte	0xf7
 4274 0379 25       		.uleb128 0x25
 4275 037a 08       		.byte	0x8
 4276 037b 64       		.byte	0x64
 4277 037c F7       		.byte	0xf7
 4278 037d 25       		.uleb128 0x25
 4279 037e 1B       		.byte	0x1b
 4280 037f F7       		.byte	0xf7
 4281 0380 00       		.uleb128 0
 4282 0381 3A       		.byte	0x3a
 4283 0382 1D       		.byte	0x1d
 4284 0383 21       		.byte	0x21
 4285 0384 F3       		.byte	0xf3
 4286 0385 01       		.uleb128 0x1
 4287 0386 51       		.byte	0x51
 4288 0387 3A       		.byte	0x3a
 4289 0388 1D       		.byte	0x1d
 4290 0389 38       		.byte	0x38
 4291 038a 24       		.byte	0x24
 4292 038b 21       		.byte	0x21
 4293 038c F3       		.byte	0xf3
 4294 038d 01       		.uleb128 0x1
 4295 038e 51       		.byte	0x51
 4296 038f F7       		.byte	0xf7
 4297 0390 25       		.uleb128 0x25
 4298 0391 3A       		.byte	0x3a
 4299 0392 F7       		.byte	0xf7
 4300 0393 25       		.uleb128 0x25
 4301 0394 1B       		.byte	0x1b
ARM GAS  /tmp/ccmZuGH1.s 			page 91


 4302 0395 F7       		.byte	0xf7
 4303 0396 00       		.uleb128 0
 4304 0397 3A       		.byte	0x3a
 4305 0398 1D       		.byte	0x1d
 4306 0399 3C       		.byte	0x3c
 4307 039a 24       		.byte	0x24
 4308 039b 21       		.byte	0x21
 4309 039c F3       		.byte	0xf3
 4310 039d 01       		.uleb128 0x1
 4311 039e 52       		.byte	0x52
 4312 039f 3A       		.byte	0x3a
 4313 03a0 1D       		.byte	0x1d
 4314 03a1 40       		.byte	0x40
 4315 03a2 24       		.byte	0x24
 4316 03a3 21       		.byte	0x21
 4317 03a4 F3       		.byte	0xf3
 4318 03a5 01       		.uleb128 0x1
 4319 03a6 52       		.byte	0x52
 4320 03a7 F7       		.byte	0xf7
 4321 03a8 25       		.uleb128 0x25
 4322 03a9 3A       		.byte	0x3a
 4323 03aa F7       		.byte	0xf7
 4324 03ab 25       		.uleb128 0x25
 4325 03ac 1B       		.byte	0x1b
 4326 03ad F7       		.byte	0xf7
 4327 03ae 00       		.uleb128 0
 4328 03af 44       		.byte	0x44
 4329 03b0 24       		.byte	0x24
 4330 03b1 21       		.byte	0x21
 4331 03b2 91       		.byte	0x91
 4332 03b3 00       		.sleb128 0
 4333 03b4 06       		.byte	0x6
 4334 03b5 45       		.byte	0x45
 4335 03b6 24       		.byte	0x24
 4336 03b7 21       		.byte	0x21
 4337 03b8 9F       		.byte	0x9f
 4338 03b9 82000000 		.4byte	.LVL62
 4339 03bd BC000000 		.4byte	.LFE151
 4340 03c1 0100     		.2byte	0x1
 4341 03c3 52       		.byte	0x52
 4342 03c4 00000000 		.4byte	0
 4343 03c8 00000000 		.4byte	0
 4344              	.LLST21:
 4345 03cc 00000000 		.4byte	.LVL43
 4346 03d0 26000000 		.4byte	.LVL48
 4347 03d4 0100     		.2byte	0x1
 4348 03d6 50       		.byte	0x50
 4349 03d7 26000000 		.4byte	.LVL48
 4350 03db 72000000 		.4byte	.LFE150
 4351 03df 0400     		.2byte	0x4
 4352 03e1 F3       		.byte	0xf3
 4353 03e2 01       		.uleb128 0x1
 4354 03e3 50       		.byte	0x50
 4355 03e4 9F       		.byte	0x9f
 4356 03e5 00000000 		.4byte	0
 4357 03e9 00000000 		.4byte	0
 4358              	.LLST22:
ARM GAS  /tmp/ccmZuGH1.s 			page 92


 4359 03ed 00000000 		.4byte	.LVL43
 4360 03f1 4A000000 		.4byte	.LVL51
 4361 03f5 0100     		.2byte	0x1
 4362 03f7 51       		.byte	0x51
 4363 03f8 4A000000 		.4byte	.LVL51
 4364 03fc 72000000 		.4byte	.LFE150
 4365 0400 0400     		.2byte	0x4
 4366 0402 F3       		.byte	0xf3
 4367 0403 01       		.uleb128 0x1
 4368 0404 51       		.byte	0x51
 4369 0405 9F       		.byte	0x9f
 4370 0406 00000000 		.4byte	0
 4371 040a 00000000 		.4byte	0
 4372              	.LLST23:
 4373 040e 00000000 		.4byte	.LVL43
 4374 0412 5A000000 		.4byte	.LVL54
 4375 0416 0100     		.2byte	0x1
 4376 0418 52       		.byte	0x52
 4377 0419 5A000000 		.4byte	.LVL54
 4378 041d 72000000 		.4byte	.LFE150
 4379 0421 0400     		.2byte	0x4
 4380 0423 F3       		.byte	0xf3
 4381 0424 01       		.uleb128 0x1
 4382 0425 52       		.byte	0x52
 4383 0426 9F       		.byte	0x9f
 4384 0427 00000000 		.4byte	0
 4385 042b 00000000 		.4byte	0
 4386              	.LLST24:
 4387 042f 0E000000 		.4byte	.LVL45
 4388 0433 14000000 		.4byte	.LVL46
 4389 0437 0100     		.2byte	0x1
 4390 0439 55       		.byte	0x55
 4391 043a 00000000 		.4byte	0
 4392 043e 00000000 		.4byte	0
 4393              	.LLST25:
 4394 0442 16000000 		.4byte	.LVL47
 4395 0446 40000000 		.4byte	.LVL49
 4396 044a 0E00     		.2byte	0xe
 4397 044c 74       		.byte	0x74
 4398 044d 00       		.sleb128 0
 4399 044e 34       		.byte	0x34
 4400 044f 25       		.byte	0x25
 4401 0450 37       		.byte	0x37
 4402 0451 1A       		.byte	0x1a
 4403 0452 3A       		.byte	0x3a
 4404 0453 1E       		.byte	0x1e
 4405 0454 74       		.byte	0x74
 4406 0455 00       		.sleb128 0
 4407 0456 3F       		.byte	0x3f
 4408 0457 1A       		.byte	0x1a
 4409 0458 22       		.byte	0x22
 4410 0459 9F       		.byte	0x9f
 4411 045a 00000000 		.4byte	0
 4412 045e 00000000 		.4byte	0
 4413              	.LLST26:
 4414 0462 16000000 		.4byte	.LVL47
 4415 0466 40000000 		.4byte	.LVL49
ARM GAS  /tmp/ccmZuGH1.s 			page 93


 4416 046a 0800     		.2byte	0x8
 4417 046c 74       		.byte	0x74
 4418 046d 00       		.sleb128 0
 4419 046e 38       		.byte	0x38
 4420 046f 25       		.byte	0x25
 4421 0470 08       		.byte	0x8
 4422 0471 FF       		.byte	0xff
 4423 0472 1A       		.byte	0x1a
 4424 0473 9F       		.byte	0x9f
 4425 0474 42000000 		.4byte	.LVL50
 4426 0478 54000000 		.4byte	.LVL52
 4427 047c 0700     		.2byte	0x7
 4428 047e 74       		.byte	0x74
 4429 047f 00       		.sleb128 0
 4430 0480 40       		.byte	0x40
 4431 0481 25       		.byte	0x25
 4432 0482 4F       		.byte	0x4f
 4433 0483 1A       		.byte	0x1a
 4434 0484 9F       		.byte	0x9f
 4435 0485 56000000 		.4byte	.LVL53
 4436 0489 68000000 		.4byte	.LVL55
 4437 048d 0800     		.2byte	0x8
 4438 048f 74       		.byte	0x74
 4439 0490 00       		.sleb128 0
 4440 0491 48       		.byte	0x48
 4441 0492 25       		.byte	0x25
 4442 0493 08       		.byte	0x8
 4443 0494 3F       		.byte	0x3f
 4444 0495 1A       		.byte	0x1a
 4445 0496 9F       		.byte	0x9f
 4446 0497 00000000 		.4byte	0
 4447 049b 00000000 		.4byte	0
 4448              	.LLST13:
 4449 049f 00000000 		.4byte	.LVL30
 4450 04a3 78000000 		.4byte	.LVL41
 4451 04a7 0100     		.2byte	0x1
 4452 04a9 50       		.byte	0x50
 4453 04aa 78000000 		.4byte	.LVL41
 4454 04ae 7E000000 		.4byte	.LVL42
 4455 04b2 0400     		.2byte	0x4
 4456 04b4 F3       		.byte	0xf3
 4457 04b5 01       		.uleb128 0x1
 4458 04b6 50       		.byte	0x50
 4459 04b7 9F       		.byte	0x9f
 4460 04b8 7E000000 		.4byte	.LVL42
 4461 04bc 90000000 		.4byte	.LFE149
 4462 04c0 0100     		.2byte	0x1
 4463 04c2 50       		.byte	0x50
 4464 04c3 00000000 		.4byte	0
 4465 04c7 00000000 		.4byte	0
 4466              	.LLST14:
 4467 04cb 00000000 		.4byte	.LVL30
 4468 04cf 0C000000 		.4byte	.LVL33
 4469 04d3 0100     		.2byte	0x1
 4470 04d5 51       		.byte	0x51
 4471 04d6 0C000000 		.4byte	.LVL33
 4472 04da 90000000 		.4byte	.LFE149
ARM GAS  /tmp/ccmZuGH1.s 			page 94


 4473 04de 0400     		.2byte	0x4
 4474 04e0 F3       		.byte	0xf3
 4475 04e1 01       		.uleb128 0x1
 4476 04e2 51       		.byte	0x51
 4477 04e3 9F       		.byte	0x9f
 4478 04e4 00000000 		.4byte	0
 4479 04e8 00000000 		.4byte	0
 4480              	.LLST15:
 4481 04ec 00000000 		.4byte	.LVL30
 4482 04f0 14000000 		.4byte	.LVL34
 4483 04f4 0100     		.2byte	0x1
 4484 04f6 52       		.byte	0x52
 4485 04f7 14000000 		.4byte	.LVL34
 4486 04fb 28000000 		.4byte	.LVL36
 4487 04ff 0100     		.2byte	0x1
 4488 0501 52       		.byte	0x52
 4489 0502 7E000000 		.4byte	.LVL42
 4490 0506 90000000 		.4byte	.LFE149
 4491 050a 0100     		.2byte	0x1
 4492 050c 52       		.byte	0x52
 4493 050d 00000000 		.4byte	0
 4494 0511 00000000 		.4byte	0
 4495              	.LLST16:
 4496 0515 00000000 		.4byte	.LVL30
 4497 0519 36000000 		.4byte	.LVL38
 4498 051d 0100     		.2byte	0x1
 4499 051f 53       		.byte	0x53
 4500 0520 36000000 		.4byte	.LVL38
 4501 0524 7E000000 		.4byte	.LVL42
 4502 0528 0400     		.2byte	0x4
 4503 052a F3       		.byte	0xf3
 4504 052b 01       		.uleb128 0x1
 4505 052c 53       		.byte	0x53
 4506 052d 9F       		.byte	0x9f
 4507 052e 7E000000 		.4byte	.LVL42
 4508 0532 90000000 		.4byte	.LFE149
 4509 0536 0100     		.2byte	0x1
 4510 0538 53       		.byte	0x53
 4511 0539 00000000 		.4byte	0
 4512 053d 00000000 		.4byte	0
 4513              	.LLST17:
 4514 0541 00000000 		.4byte	.LVL30
 4515 0545 04000000 		.4byte	.LVL31
 4516 0549 0200     		.2byte	0x2
 4517 054b 91       		.byte	0x91
 4518 054c 00       		.sleb128 0
 4519 054d 04000000 		.4byte	.LVL31
 4520 0551 06000000 		.4byte	.LVL32
 4521 0555 0200     		.2byte	0x2
 4522 0557 74       		.byte	0x74
 4523 0558 00       		.sleb128 0
 4524 0559 06000000 		.4byte	.LVL32
 4525 055d 90000000 		.4byte	.LFE149
 4526 0561 0200     		.2byte	0x2
 4527 0563 91       		.byte	0x91
 4528 0564 00       		.sleb128 0
 4529 0565 00000000 		.4byte	0
ARM GAS  /tmp/ccmZuGH1.s 			page 95


 4530 0569 00000000 		.4byte	0
 4531              	.LLST18:
 4532 056d 00000000 		.4byte	.LVL30
 4533 0571 04000000 		.4byte	.LVL31
 4534 0575 0200     		.2byte	0x2
 4535 0577 91       		.byte	0x91
 4536 0578 04       		.sleb128 4
 4537 0579 04000000 		.4byte	.LVL31
 4538 057d 06000000 		.4byte	.LVL32
 4539 0581 0200     		.2byte	0x2
 4540 0583 74       		.byte	0x74
 4541 0584 04       		.sleb128 4
 4542 0585 06000000 		.4byte	.LVL32
 4543 0589 90000000 		.4byte	.LFE149
 4544 058d 0200     		.2byte	0x2
 4545 058f 91       		.byte	0x91
 4546 0590 04       		.sleb128 4
 4547 0591 00000000 		.4byte	0
 4548 0595 00000000 		.4byte	0
 4549              	.LLST19:
 4550 0599 00000000 		.4byte	.LVL30
 4551 059d 04000000 		.4byte	.LVL31
 4552 05a1 0200     		.2byte	0x2
 4553 05a3 91       		.byte	0x91
 4554 05a4 08       		.sleb128 8
 4555 05a5 04000000 		.4byte	.LVL31
 4556 05a9 06000000 		.4byte	.LVL32
 4557 05ad 0200     		.2byte	0x2
 4558 05af 74       		.byte	0x74
 4559 05b0 08       		.sleb128 8
 4560 05b1 06000000 		.4byte	.LVL32
 4561 05b5 90000000 		.4byte	.LFE149
 4562 05b9 0200     		.2byte	0x2
 4563 05bb 91       		.byte	0x91
 4564 05bc 08       		.sleb128 8
 4565 05bd 00000000 		.4byte	0
 4566 05c1 00000000 		.4byte	0
 4567              	.LLST20:
 4568 05c5 00000000 		.4byte	.LVL30
 4569 05c9 14000000 		.4byte	.LVL34
 4570 05cd 0200     		.2byte	0x2
 4571 05cf 30       		.byte	0x30
 4572 05d0 9F       		.byte	0x9f
 4573 05d1 14000000 		.4byte	.LVL34
 4574 05d5 18000000 		.4byte	.LVL35
 4575 05d9 0400     		.2byte	0x4
 4576 05db 40       		.byte	0x40
 4577 05dc 42       		.byte	0x42
 4578 05dd 24       		.byte	0x24
 4579 05de 9F       		.byte	0x9f
 4580 05df 18000000 		.4byte	.LVL35
 4581 05e3 32000000 		.4byte	.LVL37
 4582 05e7 0100     		.2byte	0x1
 4583 05e9 5E       		.byte	0x5e
 4584 05ea 32000000 		.4byte	.LVL37
 4585 05ee 7E000000 		.4byte	.LVL42
 4586 05f2 0100     		.2byte	0x1
ARM GAS  /tmp/ccmZuGH1.s 			page 96


 4587 05f4 51       		.byte	0x51
 4588 05f5 7E000000 		.4byte	.LVL42
 4589 05f9 90000000 		.4byte	.LFE149
 4590 05fd 0200     		.2byte	0x2
 4591 05ff 30       		.byte	0x30
 4592 0600 9F       		.byte	0x9f
 4593 0601 00000000 		.4byte	0
 4594 0605 00000000 		.4byte	0
 4595              	.LLST8:
 4596 0609 00000000 		.4byte	.LVL21
 4597 060d 7A000000 		.4byte	.LVL28
 4598 0611 0100     		.2byte	0x1
 4599 0613 50       		.byte	0x50
 4600 0614 7A000000 		.4byte	.LVL28
 4601 0618 80000000 		.4byte	.LVL29
 4602 061c 0400     		.2byte	0x4
 4603 061e F3       		.byte	0xf3
 4604 061f 01       		.uleb128 0x1
 4605 0620 50       		.byte	0x50
 4606 0621 9F       		.byte	0x9f
 4607 0622 80000000 		.4byte	.LVL29
 4608 0626 88000000 		.4byte	.LFE148
 4609 062a 0100     		.2byte	0x1
 4610 062c 50       		.byte	0x50
 4611 062d 00000000 		.4byte	0
 4612 0631 00000000 		.4byte	0
 4613              	.LLST9:
 4614 0635 00000000 		.4byte	.LVL21
 4615 0639 0E000000 		.4byte	.LVL22
 4616 063d 0100     		.2byte	0x1
 4617 063f 51       		.byte	0x51
 4618 0640 0E000000 		.4byte	.LVL22
 4619 0644 4E000000 		.4byte	.LVL26
 4620 0648 0100     		.2byte	0x1
 4621 064a 51       		.byte	0x51
 4622 064b 80000000 		.4byte	.LVL29
 4623 064f 88000000 		.4byte	.LFE148
 4624 0653 0100     		.2byte	0x1
 4625 0655 51       		.byte	0x51
 4626 0656 00000000 		.4byte	0
 4627 065a 00000000 		.4byte	0
 4628              	.LLST10:
 4629 065e 00000000 		.4byte	.LVL21
 4630 0662 3E000000 		.4byte	.LVL25
 4631 0666 0100     		.2byte	0x1
 4632 0668 52       		.byte	0x52
 4633 0669 3E000000 		.4byte	.LVL25
 4634 066d 80000000 		.4byte	.LVL29
 4635 0671 0400     		.2byte	0x4
 4636 0673 F3       		.byte	0xf3
 4637 0674 01       		.uleb128 0x1
 4638 0675 52       		.byte	0x52
 4639 0676 9F       		.byte	0x9f
 4640 0677 80000000 		.4byte	.LVL29
 4641 067b 88000000 		.4byte	.LFE148
 4642 067f 0100     		.2byte	0x1
 4643 0681 52       		.byte	0x52
ARM GAS  /tmp/ccmZuGH1.s 			page 97


 4644 0682 00000000 		.4byte	0
 4645 0686 00000000 		.4byte	0
 4646              	.LLST11:
 4647 068a 00000000 		.4byte	.LVL21
 4648 068e 2E000000 		.4byte	.LVL24
 4649 0692 0100     		.2byte	0x1
 4650 0694 53       		.byte	0x53
 4651 0695 2E000000 		.4byte	.LVL24
 4652 0699 80000000 		.4byte	.LVL29
 4653 069d 0400     		.2byte	0x4
 4654 069f F3       		.byte	0xf3
 4655 06a0 01       		.uleb128 0x1
 4656 06a1 53       		.byte	0x53
 4657 06a2 9F       		.byte	0x9f
 4658 06a3 80000000 		.4byte	.LVL29
 4659 06a7 88000000 		.4byte	.LFE148
 4660 06ab 0100     		.2byte	0x1
 4661 06ad 53       		.byte	0x53
 4662 06ae 00000000 		.4byte	0
 4663 06b2 00000000 		.4byte	0
 4664              	.LLST12:
 4665 06b6 00000000 		.4byte	.LVL21
 4666 06ba 0E000000 		.4byte	.LVL22
 4667 06be 0200     		.2byte	0x2
 4668 06c0 30       		.byte	0x30
 4669 06c1 9F       		.byte	0x9f
 4670 06c2 0E000000 		.4byte	.LVL22
 4671 06c6 12000000 		.4byte	.LVL23
 4672 06ca 0400     		.2byte	0x4
 4673 06cc 40       		.byte	0x40
 4674 06cd 42       		.byte	0x42
 4675 06ce 24       		.byte	0x24
 4676 06cf 9F       		.byte	0x9f
 4677 06d0 12000000 		.4byte	.LVL23
 4678 06d4 3E000000 		.4byte	.LVL25
 4679 06d8 2B00     		.2byte	0x2b
 4680 06da 71       		.byte	0x71
 4681 06db 00       		.sleb128 0
 4682 06dc F7       		.byte	0xf7
 4683 06dd 25       		.uleb128 0x25
 4684 06de 3A       		.byte	0x3a
 4685 06df F7       		.byte	0xf7
 4686 06e0 25       		.uleb128 0x25
 4687 06e1 1B       		.byte	0x1b
 4688 06e2 F7       		.byte	0xf7
 4689 06e3 00       		.uleb128 0
 4690 06e4 44       		.byte	0x44
 4691 06e5 24       		.byte	0x24
 4692 06e6 71       		.byte	0x71
 4693 06e7 00       		.sleb128 0
 4694 06e8 3A       		.byte	0x3a
 4695 06e9 1D       		.byte	0x1d
 4696 06ea 40       		.byte	0x40
 4697 06eb 24       		.byte	0x24
 4698 06ec 21       		.byte	0x21
 4699 06ed 72       		.byte	0x72
 4700 06ee 00       		.sleb128 0
ARM GAS  /tmp/ccmZuGH1.s 			page 98


 4701 06ef 3A       		.byte	0x3a
 4702 06f0 1D       		.byte	0x1d
 4703 06f1 38       		.byte	0x38
 4704 06f2 24       		.byte	0x24
 4705 06f3 21       		.byte	0x21
 4706 06f4 72       		.byte	0x72
 4707 06f5 00       		.sleb128 0
 4708 06f6 F7       		.byte	0xf7
 4709 06f7 25       		.uleb128 0x25
 4710 06f8 3A       		.byte	0x3a
 4711 06f9 F7       		.byte	0xf7
 4712 06fa 25       		.uleb128 0x25
 4713 06fb 1B       		.byte	0x1b
 4714 06fc F7       		.byte	0xf7
 4715 06fd 00       		.uleb128 0
 4716 06fe 3C       		.byte	0x3c
 4717 06ff 24       		.byte	0x24
 4718 0700 21       		.byte	0x21
 4719 0701 77       		.byte	0x77
 4720 0702 00       		.sleb128 0
 4721 0703 21       		.byte	0x21
 4722 0704 9F       		.byte	0x9f
 4723 0705 3E000000 		.4byte	.LVL25
 4724 0709 4E000000 		.4byte	.LVL26
 4725 070d 2D00     		.2byte	0x2d
 4726 070f 71       		.byte	0x71
 4727 0710 00       		.sleb128 0
 4728 0711 F7       		.byte	0xf7
 4729 0712 25       		.uleb128 0x25
 4730 0713 3A       		.byte	0x3a
 4731 0714 F7       		.byte	0xf7
 4732 0715 25       		.uleb128 0x25
 4733 0716 1B       		.byte	0x1b
 4734 0717 F7       		.byte	0xf7
 4735 0718 00       		.uleb128 0
 4736 0719 44       		.byte	0x44
 4737 071a 24       		.byte	0x24
 4738 071b 71       		.byte	0x71
 4739 071c 00       		.sleb128 0
 4740 071d 3A       		.byte	0x3a
 4741 071e 1D       		.byte	0x1d
 4742 071f 40       		.byte	0x40
 4743 0720 24       		.byte	0x24
 4744 0721 21       		.byte	0x21
 4745 0722 F3       		.byte	0xf3
 4746 0723 01       		.uleb128 0x1
 4747 0724 52       		.byte	0x52
 4748 0725 3A       		.byte	0x3a
 4749 0726 1D       		.byte	0x1d
 4750 0727 38       		.byte	0x38
 4751 0728 24       		.byte	0x24
 4752 0729 21       		.byte	0x21
 4753 072a F3       		.byte	0xf3
 4754 072b 01       		.uleb128 0x1
 4755 072c 52       		.byte	0x52
 4756 072d F7       		.byte	0xf7
 4757 072e 25       		.uleb128 0x25
ARM GAS  /tmp/ccmZuGH1.s 			page 99


 4758 072f 3A       		.byte	0x3a
 4759 0730 F7       		.byte	0xf7
 4760 0731 25       		.uleb128 0x25
 4761 0732 1B       		.byte	0x1b
 4762 0733 F7       		.byte	0xf7
 4763 0734 00       		.uleb128 0
 4764 0735 3C       		.byte	0x3c
 4765 0736 24       		.byte	0x24
 4766 0737 21       		.byte	0x21
 4767 0738 77       		.byte	0x77
 4768 0739 00       		.sleb128 0
 4769 073a 21       		.byte	0x21
 4770 073b 9F       		.byte	0x9f
 4771 073c 56000000 		.4byte	.LVL27
 4772 0740 80000000 		.4byte	.LVL29
 4773 0744 0100     		.2byte	0x1
 4774 0746 51       		.byte	0x51
 4775 0747 80000000 		.4byte	.LVL29
 4776 074b 88000000 		.4byte	.LFE148
 4777 074f 0200     		.2byte	0x2
 4778 0751 30       		.byte	0x30
 4779 0752 9F       		.byte	0x9f
 4780 0753 00000000 		.4byte	0
 4781 0757 00000000 		.4byte	0
 4782              	.LLST3:
 4783 075b 00000000 		.4byte	.LVL8
 4784 075f 1C000000 		.4byte	.LVL13
 4785 0763 0100     		.2byte	0x1
 4786 0765 50       		.byte	0x50
 4787 0766 1C000000 		.4byte	.LVL13
 4788 076a 58000000 		.4byte	.LFE147
 4789 076e 0400     		.2byte	0x4
 4790 0770 F3       		.byte	0xf3
 4791 0771 01       		.uleb128 0x1
 4792 0772 50       		.byte	0x50
 4793 0773 9F       		.byte	0x9f
 4794 0774 00000000 		.4byte	0
 4795 0778 00000000 		.4byte	0
 4796              	.LLST4:
 4797 077c 00000000 		.4byte	.LVL8
 4798 0780 32000000 		.4byte	.LVL16
 4799 0784 0100     		.2byte	0x1
 4800 0786 51       		.byte	0x51
 4801 0787 32000000 		.4byte	.LVL16
 4802 078b 58000000 		.4byte	.LFE147
 4803 078f 0400     		.2byte	0x4
 4804 0791 F3       		.byte	0xf3
 4805 0792 01       		.uleb128 0x1
 4806 0793 51       		.byte	0x51
 4807 0794 9F       		.byte	0x9f
 4808 0795 00000000 		.4byte	0
 4809 0799 00000000 		.4byte	0
 4810              	.LLST5:
 4811 079d 00000000 		.4byte	.LVL8
 4812 07a1 46000000 		.4byte	.LVL19
 4813 07a5 0100     		.2byte	0x1
 4814 07a7 52       		.byte	0x52
ARM GAS  /tmp/ccmZuGH1.s 			page 100


 4815 07a8 46000000 		.4byte	.LVL19
 4816 07ac 58000000 		.4byte	.LFE147
 4817 07b0 0400     		.2byte	0x4
 4818 07b2 F3       		.byte	0xf3
 4819 07b3 01       		.uleb128 0x1
 4820 07b4 52       		.byte	0x52
 4821 07b5 9F       		.byte	0x9f
 4822 07b6 00000000 		.4byte	0
 4823 07ba 00000000 		.4byte	0
 4824              	.LLST6:
 4825 07be 0C000000 		.4byte	.LVL10
 4826 07c2 12000000 		.4byte	.LVL11
 4827 07c6 0100     		.2byte	0x1
 4828 07c8 55       		.byte	0x55
 4829 07c9 00000000 		.4byte	0
 4830 07cd 00000000 		.4byte	0
 4831              	.LLST7:
 4832 07d1 14000000 		.4byte	.LVL12
 4833 07d5 2C000000 		.4byte	.LVL14
 4834 07d9 0800     		.2byte	0x8
 4835 07db 74       		.byte	0x74
 4836 07dc 00       		.sleb128 0
 4837 07dd 40       		.byte	0x40
 4838 07de 25       		.byte	0x25
 4839 07df 08       		.byte	0x8
 4840 07e0 3F       		.byte	0x3f
 4841 07e1 1A       		.byte	0x1a
 4842 07e2 9F       		.byte	0x9f
 4843 07e3 2E000000 		.4byte	.LVL15
 4844 07e7 40000000 		.4byte	.LVL17
 4845 07eb 0800     		.2byte	0x8
 4846 07ed 74       		.byte	0x74
 4847 07ee 00       		.sleb128 0
 4848 07ef 38       		.byte	0x38
 4849 07f0 25       		.byte	0x25
 4850 07f1 08       		.byte	0x8
 4851 07f2 7F       		.byte	0x7f
 4852 07f3 1A       		.byte	0x1a
 4853 07f4 9F       		.byte	0x9f
 4854 07f5 42000000 		.4byte	.LVL18
 4855 07f9 4A000000 		.4byte	.LVL20
 4856 07fd 0600     		.2byte	0x6
 4857 07ff 74       		.byte	0x74
 4858 0800 00       		.sleb128 0
 4859 0801 08       		.byte	0x8
 4860 0802 7F       		.byte	0x7f
 4861 0803 1A       		.byte	0x1a
 4862 0804 9F       		.byte	0x9f
 4863 0805 00000000 		.4byte	0
 4864 0809 00000000 		.4byte	0
 4865              	.LLST2:
 4866 080d 00000000 		.4byte	.LVL6
 4867 0811 02000000 		.4byte	.LVL7
 4868 0815 0100     		.2byte	0x1
 4869 0817 50       		.byte	0x50
 4870 0818 02000000 		.4byte	.LVL7
 4871 081c 04000000 		.4byte	.LFE146
ARM GAS  /tmp/ccmZuGH1.s 			page 101


 4872 0820 0400     		.2byte	0x4
 4873 0822 F3       		.byte	0xf3
 4874 0823 01       		.uleb128 0x1
 4875 0824 50       		.byte	0x50
 4876 0825 9F       		.byte	0x9f
 4877 0826 00000000 		.4byte	0
 4878 082a 00000000 		.4byte	0
 4879              	.LLST0:
 4880 082e 00000000 		.4byte	.LVL1
 4881 0832 02000000 		.4byte	.LVL2
 4882 0836 0100     		.2byte	0x1
 4883 0838 50       		.byte	0x50
 4884 0839 02000000 		.4byte	.LVL2
 4885 083d 08000000 		.4byte	.LFE143
 4886 0841 0400     		.2byte	0x4
 4887 0843 F3       		.byte	0xf3
 4888 0844 01       		.uleb128 0x1
 4889 0845 50       		.byte	0x50
 4890 0846 9F       		.byte	0x9f
 4891 0847 00000000 		.4byte	0
 4892 084b 00000000 		.4byte	0
 4893              	.LLST1:
 4894 084f 02000000 		.4byte	.LVL2
 4895 0853 06000000 		.4byte	.LVL3
 4896 0857 0100     		.2byte	0x1
 4897 0859 50       		.byte	0x50
 4898 085a 00000000 		.4byte	0
 4899 085e 00000000 		.4byte	0
 4900              		.section	.debug_aranges,"",%progbits
 4901 0000 B4000000 		.4byte	0xb4
 4902 0004 0200     		.2byte	0x2
 4903 0006 00000000 		.4byte	.Ldebug_info0
 4904 000a 04       		.byte	0x4
 4905 000b 00       		.byte	0
 4906 000c 0000     		.2byte	0
 4907 000e 0000     		.2byte	0
 4908 0010 00000000 		.4byte	.LFB142
 4909 0014 14000000 		.4byte	.LFE142-.LFB142
 4910 0018 00000000 		.4byte	.LFB143
 4911 001c 08000000 		.4byte	.LFE143-.LFB143
 4912 0020 00000000 		.4byte	.LFB144
 4913 0024 04000000 		.4byte	.LFE144-.LFB144
 4914 0028 00000000 		.4byte	.LFB145
 4915 002c 04000000 		.4byte	.LFE145-.LFB145
 4916 0030 00000000 		.4byte	.LFB146
 4917 0034 04000000 		.4byte	.LFE146-.LFB146
 4918 0038 00000000 		.4byte	.LFB147
 4919 003c 58000000 		.4byte	.LFE147-.LFB147
 4920 0040 00000000 		.4byte	.LFB148
 4921 0044 88000000 		.4byte	.LFE148-.LFB148
 4922 0048 00000000 		.4byte	.LFB149
 4923 004c 90000000 		.4byte	.LFE149-.LFB149
 4924 0050 00000000 		.4byte	.LFB150
 4925 0054 72000000 		.4byte	.LFE150-.LFB150
 4926 0058 00000000 		.4byte	.LFB151
 4927 005c BC000000 		.4byte	.LFE151-.LFB151
 4928 0060 00000000 		.4byte	.LFB152
ARM GAS  /tmp/ccmZuGH1.s 			page 102


 4929 0064 60000000 		.4byte	.LFE152-.LFB152
 4930 0068 00000000 		.4byte	.LFB153
 4931 006c 06000000 		.4byte	.LFE153-.LFB153
 4932 0070 00000000 		.4byte	.LFB154
 4933 0074 0C000000 		.4byte	.LFE154-.LFB154
 4934 0078 00000000 		.4byte	.LFB155
 4935 007c 04000000 		.4byte	.LFE155-.LFB155
 4936 0080 00000000 		.4byte	.LFB156
 4937 0084 04000000 		.4byte	.LFE156-.LFB156
 4938 0088 00000000 		.4byte	.LFB157
 4939 008c 04000000 		.4byte	.LFE157-.LFB157
 4940 0090 00000000 		.4byte	.LFB158
 4941 0094 16000000 		.4byte	.LFE158-.LFB158
 4942 0098 00000000 		.4byte	.LFB159
 4943 009c 16000000 		.4byte	.LFE159-.LFB159
 4944 00a0 00000000 		.4byte	.LFB160
 4945 00a4 56010000 		.4byte	.LFE160-.LFB160
 4946 00a8 00000000 		.4byte	.LFB161
 4947 00ac 16000000 		.4byte	.LFE161-.LFB161
 4948 00b0 00000000 		.4byte	0
 4949 00b4 00000000 		.4byte	0
 4950              		.section	.debug_ranges,"",%progbits
 4951              	.Ldebug_ranges0:
 4952 0000 00000000 		.4byte	.LFB142
 4953 0004 14000000 		.4byte	.LFE142
 4954 0008 00000000 		.4byte	.LFB143
 4955 000c 08000000 		.4byte	.LFE143
 4956 0010 00000000 		.4byte	.LFB144
 4957 0014 04000000 		.4byte	.LFE144
 4958 0018 00000000 		.4byte	.LFB145
 4959 001c 04000000 		.4byte	.LFE145
 4960 0020 00000000 		.4byte	.LFB146
 4961 0024 04000000 		.4byte	.LFE146
 4962 0028 00000000 		.4byte	.LFB147
 4963 002c 58000000 		.4byte	.LFE147
 4964 0030 00000000 		.4byte	.LFB148
 4965 0034 88000000 		.4byte	.LFE148
 4966 0038 00000000 		.4byte	.LFB149
 4967 003c 90000000 		.4byte	.LFE149
 4968 0040 00000000 		.4byte	.LFB150
 4969 0044 72000000 		.4byte	.LFE150
 4970 0048 00000000 		.4byte	.LFB151
 4971 004c BC000000 		.4byte	.LFE151
 4972 0050 00000000 		.4byte	.LFB152
 4973 0054 60000000 		.4byte	.LFE152
 4974 0058 00000000 		.4byte	.LFB153
 4975 005c 06000000 		.4byte	.LFE153
 4976 0060 00000000 		.4byte	.LFB154
 4977 0064 0C000000 		.4byte	.LFE154
 4978 0068 00000000 		.4byte	.LFB155
 4979 006c 04000000 		.4byte	.LFE155
 4980 0070 00000000 		.4byte	.LFB156
 4981 0074 04000000 		.4byte	.LFE156
 4982 0078 00000000 		.4byte	.LFB157
 4983 007c 04000000 		.4byte	.LFE157
 4984 0080 00000000 		.4byte	.LFB158
 4985 0084 16000000 		.4byte	.LFE158
ARM GAS  /tmp/ccmZuGH1.s 			page 103


 4986 0088 00000000 		.4byte	.LFB159
 4987 008c 16000000 		.4byte	.LFE159
 4988 0090 00000000 		.4byte	.LFB160
 4989 0094 56010000 		.4byte	.LFE160
 4990 0098 00000000 		.4byte	.LFB161
 4991 009c 16000000 		.4byte	.LFE161
 4992 00a0 00000000 		.4byte	0
 4993 00a4 00000000 		.4byte	0
 4994              		.section	.debug_line,"",%progbits
 4995              	.Ldebug_line0:
 4996 0000 D7040000 		.section	.debug_str,"MS",%progbits,1
 4996      02005502 
 4996      00000201 
 4996      FB0E0D00 
 4996      01010101 
 4997              	.LASF3:
 4998 0000 73686F72 		.ascii	"short int\000"
 4998      7420696E 
 4998      7400
 4999              	.LASF159:
 5000 000a 7274635F 		.ascii	"rtc_clear_date_alarm\000"
 5000      636C6561 
 5000      725F6461 
 5000      74655F61 
 5000      6C61726D 
 5001              	.LASF156:
 5002 001f 756C5F63 		.ascii	"ul_clear\000"
 5002      6C656172 
 5002      00
 5003              	.LASF109:
 5004 0028 5F72616E 		.ascii	"_rand48\000"
 5004      64343800 
 5005              	.LASF175:
 5006 0030 70756C5F 		.ascii	"pul_week\000"
 5006      7765656B 
 5006      00
 5007              	.LASF88:
 5008 0039 5F656D65 		.ascii	"_emergency\000"
 5008      7267656E 
 5008      637900
 5009              	.LASF163:
 5010 0044 756C5F6D 		.ascii	"ul_month\000"
 5010      6F6E7468 
 5010      00
 5011              	.LASF25:
 5012 004d 5254435F 		.ascii	"RTC_IDR\000"
 5012      49445200 
 5013              	.LASF148:
 5014 0055 7274635F 		.ascii	"rtc_set_pulse_parameter\000"
 5014      7365745F 
 5014      70756C73 
 5014      655F7061 
 5014      72616D65 
 5015              	.LASF125:
 5016 006d 5F676574 		.ascii	"_getdate_err\000"
 5016      64617465 
 5016      5F657272 
ARM GAS  /tmp/ccmZuGH1.s 			page 104


 5016      00
 5017              	.LASF78:
 5018 007a 5F646174 		.ascii	"_data\000"
 5018      6100
 5019              	.LASF147:
 5020 0080 756C5F74 		.ascii	"ul_temp\000"
 5020      656D7000 
 5021              	.LASF129:
 5022 0088 5F776372 		.ascii	"_wcrtomb_state\000"
 5022      746F6D62 
 5022      5F737461 
 5022      746500
 5023              	.LASF130:
 5024 0097 5F776373 		.ascii	"_wcsrtombs_state\000"
 5024      72746F6D 
 5024      62735F73 
 5024      74617465 
 5024      00
 5025              	.LASF10:
 5026 00a8 6C6F6E67 		.ascii	"long long unsigned int\000"
 5026      206C6F6E 
 5026      6720756E 
 5026      7369676E 
 5026      65642069 
 5027              	.LASF185:
 5028 00bf 756C5F74 		.ascii	"ul_time\000"
 5028      696D6500 
 5029              	.LASF68:
 5030 00c7 5F6C6266 		.ascii	"_lbfsize\000"
 5030      73697A65 
 5030      00
 5031              	.LASF14:
 5032 00d0 49544D5F 		.ascii	"ITM_RxBuffer\000"
 5032      52784275 
 5032      66666572 
 5032      00
 5033              	.LASF127:
 5034 00dd 5F6D6272 		.ascii	"_mbrtowc_state\000"
 5034      746F7763 
 5034      5F737461 
 5034      746500
 5035              	.LASF122:
 5036 00ec 5F776374 		.ascii	"_wctomb_state\000"
 5036      6F6D625F 
 5036      73746174 
 5036      6500
 5037              	.LASF45:
 5038 00fa 5F5F746D 		.ascii	"__tm_sec\000"
 5038      5F736563 
 5038      00
 5039              	.LASF157:
 5040 0103 7274635F 		.ascii	"rtc_get_valid_entry\000"
 5040      6765745F 
 5040      76616C69 
 5040      645F656E 
 5040      74727900 
 5041              	.LASF73:
ARM GAS  /tmp/ccmZuGH1.s 			page 105


 5042 0117 5F636C6F 		.ascii	"_close\000"
 5042      736500
 5043              	.LASF1:
 5044 011e 7369676E 		.ascii	"signed char\000"
 5044      65642063 
 5044      68617200 
 5045              	.LASF74:
 5046 012a 5F756275 		.ascii	"_ubuf\000"
 5046      6600
 5047              	.LASF63:
 5048 0130 5F626173 		.ascii	"_base\000"
 5048      6500
 5049              	.LASF16:
 5050 0136 5254435F 		.ascii	"RTC_CR\000"
 5050      435200
 5051              	.LASF47:
 5052 013d 5F5F746D 		.ascii	"__tm_hour\000"
 5052      5F686F75 
 5052      7200
 5053              	.LASF155:
 5054 0147 7274635F 		.ascii	"rtc_clear_status\000"
 5054      636C6561 
 5054      725F7374 
 5054      61747573 
 5054      00
 5055              	.LASF103:
 5056 0158 5F5F7366 		.ascii	"__sf\000"
 5056      00
 5057              	.LASF54:
 5058 015d 5F6F6E5F 		.ascii	"_on_exit_args\000"
 5058      65786974 
 5058      5F617267 
 5058      7300
 5059              	.LASF69:
 5060 016b 5F636F6F 		.ascii	"_cookie\000"
 5060      6B696500 
 5061              	.LASF194:
 5062 0173 7274635F 		.ascii	"rtc_get_hour_mode\000"
 5062      6765745F 
 5062      686F7572 
 5062      5F6D6F64 
 5062      6500
 5063              	.LASF102:
 5064 0185 5F5F7367 		.ascii	"__sglue\000"
 5064      6C756500 
 5065              	.LASF5:
 5066 018d 6C6F6E67 		.ascii	"long int\000"
 5066      20696E74 
 5066      00
 5067              	.LASF66:
 5068 0196 5F666C61 		.ascii	"_flags\000"
 5068      677300
 5069              	.LASF58:
 5070 019d 5F69735F 		.ascii	"_is_cxa\000"
 5070      63786100 
 5071              	.LASF42:
 5072 01a5 5F776473 		.ascii	"_wds\000"
ARM GAS  /tmp/ccmZuGH1.s 			page 106


 5072      00
 5073              	.LASF105:
 5074 01aa 5F5F4649 		.ascii	"__FILE\000"
 5074      4C4500
 5075              	.LASF94:
 5076 01b1 5F726573 		.ascii	"_result_k\000"
 5076      756C745F 
 5076      6B00
 5077              	.LASF170:
 5078 01bb 756C5F64 		.ascii	"ul_date\000"
 5078      61746500 
 5079              	.LASF9:
 5080 01c3 6C6F6E67 		.ascii	"long long int\000"
 5080      206C6F6E 
 5080      6720696E 
 5080      7400
 5081              	.LASF172:
 5082 01d1 70756C5F 		.ascii	"pul_year\000"
 5082      79656172 
 5082      00
 5083              	.LASF144:
 5084 01da 705F7274 		.ascii	"p_rtc\000"
 5084      6300
 5085              	.LASF98:
 5086 01e0 5F637674 		.ascii	"_cvtbuf\000"
 5086      62756600 
 5087              	.LASF128:
 5088 01e8 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 5088      72746F77 
 5088      63735F73 
 5088      74617465 
 5088      00
 5089              	.LASF126:
 5090 01f9 5F6D6272 		.ascii	"_mbrlen_state\000"
 5090      6C656E5F 
 5090      73746174 
 5090      6500
 5091              	.LASF55:
 5092 0207 5F666E61 		.ascii	"_fnargs\000"
 5092      72677300 
 5093              	.LASF169:
 5094 020f 756C5F77 		.ascii	"ul_week\000"
 5094      65656B00 
 5095              	.LASF22:
 5096 0217 5254435F 		.ascii	"RTC_SR\000"
 5096      535200
 5097              	.LASF61:
 5098 021e 5F666E73 		.ascii	"_fns\000"
 5098      00
 5099              	.LASF7:
 5100 0223 5F5F7569 		.ascii	"__uint32_t\000"
 5100      6E743332 
 5100      5F7400
 5101              	.LASF41:
 5102 022e 5F736967 		.ascii	"_sign\000"
 5102      6E00
 5103              	.LASF135:
ARM GAS  /tmp/ccmZuGH1.s 			page 107


 5104 0234 5F696D70 		.ascii	"_impure_ptr\000"
 5104      7572655F 
 5104      70747200 
 5105              	.LASF86:
 5106 0240 5F737464 		.ascii	"_stderr\000"
 5106      65727200 
 5107              	.LASF43:
 5108 0248 5F426967 		.ascii	"_Bigint\000"
 5108      696E7400 
 5109              	.LASF117:
 5110 0250 5F67616D 		.ascii	"_gamma_signgam\000"
 5110      6D615F73 
 5110      69676E67 
 5110      616D00
 5111              	.LASF24:
 5112 025f 5254435F 		.ascii	"RTC_IER\000"
 5112      49455200 
 5113              	.LASF133:
 5114 0267 5F6E6D61 		.ascii	"_nmalloc\000"
 5114      6C6C6F63 
 5114      00
 5115              	.LASF150:
 5116 0270 756C5F63 		.ascii	"ul_channel\000"
 5116      68616E6E 
 5116      656C00
 5117              	.LASF44:
 5118 027b 5F5F746D 		.ascii	"__tm\000"
 5118      00
 5119              	.LASF80:
 5120 0280 5F6D6273 		.ascii	"_mbstate\000"
 5120      74617465 
 5120      00
 5121              	.LASF33:
 5122 0289 5F5F7763 		.ascii	"__wchb\000"
 5122      686200
 5123              	.LASF15:
 5124 0290 53797374 		.ascii	"SystemCoreClock\000"
 5124      656D436F 
 5124      7265436C 
 5124      6F636B00 
 5125              	.LASF191:
 5126 02a0 7274635F 		.ascii	"rtc_disable_interrupt\000"
 5126      64697361 
 5126      626C655F 
 5126      696E7465 
 5126      72727570 
 5127              	.LASF97:
 5128 02b6 5F637674 		.ascii	"_cvtlen\000"
 5128      6C656E00 
 5129              	.LASF8:
 5130 02be 6C6F6E67 		.ascii	"long unsigned int\000"
 5130      20756E73 
 5130      69676E65 
 5130      6420696E 
 5130      7400
 5131              	.LASF67:
 5132 02d0 5F66696C 		.ascii	"_file\000"
ARM GAS  /tmp/ccmZuGH1.s 			page 108


 5132      6500
 5133              	.LASF26:
 5134 02d6 5254435F 		.ascii	"RTC_IMR\000"
 5134      494D5200 
 5135              	.LASF107:
 5136 02de 5F6E696F 		.ascii	"_niobs\000"
 5136      627300
 5137              	.LASF4:
 5138 02e5 73686F72 		.ascii	"short unsigned int\000"
 5138      7420756E 
 5138      7369676E 
 5138      65642069 
 5138      6E7400
 5139              	.LASF188:
 5140 02f8 70756C5F 		.ascii	"pul_minute\000"
 5140      6D696E75 
 5140      746500
 5141              	.LASF100:
 5142 0303 5F617465 		.ascii	"_atexit0\000"
 5142      78697430 
 5142      00
 5143              	.LASF124:
 5144 030c 5F736967 		.ascii	"_signal_buf\000"
 5144      6E616C5F 
 5144      62756600 
 5145              	.LASF115:
 5146 0318 5F617363 		.ascii	"_asctime_buf\000"
 5146      74696D65 
 5146      5F627566 
 5146      00
 5147              	.LASF179:
 5148 0325 756C5F68 		.ascii	"ul_hour\000"
 5148      6F757200 
 5149              	.LASF93:
 5150 032d 5F726573 		.ascii	"_result\000"
 5150      756C7400 
 5151              	.LASF189:
 5152 0335 70756C5F 		.ascii	"pul_second\000"
 5152      7365636F 
 5152      6E6400
 5153              	.LASF132:
 5154 0340 5F6E6578 		.ascii	"_nextf\000"
 5154      746600
 5155              	.LASF183:
 5156 0347 756C5F73 		.ascii	"ul_second\000"
 5156      65636F6E 
 5156      6400
 5157              	.LASF165:
 5158 0351 756C5F64 		.ascii	"ul_day\000"
 5158      617900
 5159              	.LASF31:
 5160 0358 77696E74 		.ascii	"wint_t\000"
 5160      5F7400
 5161              	.LASF186:
 5162 035f 7274635F 		.ascii	"rtc_get_time\000"
 5162      6765745F 
 5162      74696D65 
ARM GAS  /tmp/ccmZuGH1.s 			page 109


 5162      00
 5163              	.LASF79:
 5164 036c 5F6C6F63 		.ascii	"_lock\000"
 5164      6B00
 5165              	.LASF198:
 5166 0372 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 5166      652F746F 
 5166      72626A6F 
 5166      726E2F65 
 5166      636C6970 
 5167              	.LASF111:
 5168 03a1 5F6D756C 		.ascii	"_mult\000"
 5168      7400
 5169              	.LASF177:
 5170 03a7 7274635F 		.ascii	"rtc_set_time_alarm\000"
 5170      7365745F 
 5170      74696D65 
 5170      5F616C61 
 5170      726D00
 5171              	.LASF168:
 5172 03ba 756C5F79 		.ascii	"ul_year\000"
 5172      65617200 
 5173              	.LASF145:
 5174 03c2 756C5F74 		.ascii	"ul_time_high\000"
 5174      696D655F 
 5174      68696768 
 5174      00
 5175              	.LASF71:
 5176 03cf 5F777269 		.ascii	"_write\000"
 5176      746500
 5177              	.LASF50:
 5178 03d6 5F5F746D 		.ascii	"__tm_year\000"
 5178      5F796561 
 5178      7200
 5179              	.LASF113:
 5180 03e0 5F756E75 		.ascii	"_unused_rand\000"
 5180      7365645F 
 5180      72616E64 
 5180      00
 5181              	.LASF17:
 5182 03ed 5254435F 		.ascii	"RTC_MR\000"
 5182      4D5200
 5183              	.LASF21:
 5184 03f4 5254435F 		.ascii	"RTC_CALALR\000"
 5184      43414C41 
 5184      4C5200
 5185              	.LASF141:
 5186 03ff 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 5186      6972715F 
 5186      70726576 
 5186      5F696E74 
 5186      65727275 
 5187              	.LASF13:
 5188 041c 73697A65 		.ascii	"sizetype\000"
 5188      74797065 
 5188      00
 5189              	.LASF77:
ARM GAS  /tmp/ccmZuGH1.s 			page 110


 5190 0425 5F6F6666 		.ascii	"_offset\000"
 5190      73657400 
 5191              	.LASF151:
 5192 042d 756C5F76 		.ascii	"ul_value\000"
 5192      616C7565 
 5192      00
 5193              	.LASF181:
 5194 0436 756C5F6D 		.ascii	"ul_minute\000"
 5194      696E7574 
 5194      6500
 5195              	.LASF149:
 5196 0440 7274635F 		.ascii	"rtc_set_waveform\000"
 5196      7365745F 
 5196      77617665 
 5196      666F726D 
 5196      00
 5197              	.LASF167:
 5198 0451 7274635F 		.ascii	"rtc_set_date\000"
 5198      7365745F 
 5198      64617465 
 5198      00
 5199              	.LASF196:
 5200 045e 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 5200      43393920 
 5200      362E332E 
 5200      31203230 
 5200      31373036 
 5201 0491 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 5201      76352D64 
 5201      3136202D 
 5201      6D666C6F 
 5201      61742D61 
 5202 04c4 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 5202      6E2D7365 
 5202      6374696F 
 5202      6E73202D 
 5202      66646174 
 5203 04f7 6F6E7374 		.ascii	"onstant\000"
 5203      616E7400 
 5204              	.LASF37:
 5205 04ff 5F666C6F 		.ascii	"_flock_t\000"
 5205      636B5F74 
 5205      00
 5206              	.LASF197:
 5207 0508 2E2E2F61 		.ascii	"../asf/sam/drivers/rtc/rtc.c\000"
 5207      73662F73 
 5207      616D2F64 
 5207      72697665 
 5207      72732F72 
 5208              	.LASF49:
 5209 0525 5F5F746D 		.ascii	"__tm_mon\000"
 5209      5F6D6F6E 
 5209      00
 5210              	.LASF59:
 5211 052e 5F617465 		.ascii	"_atexit\000"
 5211      78697400 
 5212              	.LASF137:
ARM GAS  /tmp/ccmZuGH1.s 			page 111


 5213 0536 7375626F 		.ascii	"suboptarg\000"
 5213      70746172 
 5213      6700
 5214              	.LASF91:
 5215 0540 5F5F7364 		.ascii	"__sdidinit\000"
 5215      6964696E 
 5215      697400
 5216              	.LASF29:
 5217 054b 5F6F6666 		.ascii	"_off_t\000"
 5217      5F7400
 5218              	.LASF142:
 5219 0552 666C6F61 		.ascii	"float\000"
 5219      7400
 5220              	.LASF195:
 5221 0558 756C5F6D 		.ascii	"ul_mode\000"
 5221      6F646500 
 5222              	.LASF138:
 5223 0560 675F696E 		.ascii	"g_interrupt_enabled\000"
 5223      74657272 
 5223      7570745F 
 5223      656E6162 
 5223      6C656400 
 5224              	.LASF28:
 5225 0574 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 5225      4B5F5245 
 5225      43555253 
 5225      4956455F 
 5225      5400
 5226              	.LASF70:
 5227 0586 5F726561 		.ascii	"_read\000"
 5227      6400
 5228              	.LASF193:
 5229 058c 7274635F 		.ascii	"rtc_enable_interrupt\000"
 5229      656E6162 
 5229      6C655F69 
 5229      6E746572 
 5229      72757074 
 5230              	.LASF154:
 5231 05a1 7274635F 		.ascii	"rtc_set_time_event\000"
 5231      7365745F 
 5231      74696D65 
 5231      5F657665 
 5231      6E7400
 5232              	.LASF139:
 5233 05b4 5F426F6F 		.ascii	"_Bool\000"
 5233      6C00
 5234              	.LASF11:
 5235 05ba 696E7433 		.ascii	"int32_t\000"
 5235      325F7400 
 5236              	.LASF56:
 5237 05c2 5F64736F 		.ascii	"_dso_handle\000"
 5237      5F68616E 
 5237      646C6500 
 5238              	.LASF19:
 5239 05ce 5254435F 		.ascii	"RTC_CALR\000"
 5239      43414C52 
 5239      00
ARM GAS  /tmp/ccmZuGH1.s 			page 112


 5240              	.LASF99:
 5241 05d7 5F6E6577 		.ascii	"_new\000"
 5241      00
 5242              	.LASF131:
 5243 05dc 5F685F65 		.ascii	"_h_errno\000"
 5243      72726E6F 
 5243      00
 5244              	.LASF120:
 5245 05e5 5F6D626C 		.ascii	"_mblen_state\000"
 5245      656E5F73 
 5245      74617465 
 5245      00
 5246              	.LASF52:
 5247 05f2 5F5F746D 		.ascii	"__tm_yday\000"
 5247      5F796461 
 5247      7900
 5248              	.LASF62:
 5249 05fc 5F5F7362 		.ascii	"__sbuf\000"
 5249      756600
 5250              	.LASF81:
 5251 0603 5F666C61 		.ascii	"_flags2\000"
 5251      67733200 
 5252              	.LASF96:
 5253 060b 5F667265 		.ascii	"_freelist\000"
 5253      656C6973 
 5253      7400
 5254              	.LASF23:
 5255 0615 5254435F 		.ascii	"RTC_SCCR\000"
 5255      53434352 
 5255      00
 5256              	.LASF158:
 5257 061e 7274635F 		.ascii	"rtc_get_status\000"
 5257      6765745F 
 5257      73746174 
 5257      757300
 5258              	.LASF36:
 5259 062d 5F6D6273 		.ascii	"_mbstate_t\000"
 5259      74617465 
 5259      5F7400
 5260              	.LASF173:
 5261 0638 70756C5F 		.ascii	"pul_month\000"
 5261      6D6F6E74 
 5261      6800
 5262              	.LASF65:
 5263 0642 5F5F7346 		.ascii	"__sFILE\000"
 5263      494C4500 
 5264              	.LASF161:
 5265 064a 7274635F 		.ascii	"rtc_set_date_alarm\000"
 5265      7365745F 
 5265      64617465 
 5265      5F616C61 
 5265      726D00
 5266              	.LASF118:
 5267 065d 5F72616E 		.ascii	"_rand_next\000"
 5267      645F6E65 
 5267      787400
 5268              	.LASF108:
ARM GAS  /tmp/ccmZuGH1.s 			page 113


 5269 0668 5F696F62 		.ascii	"_iobs\000"
 5269      7300
 5270              	.LASF87:
 5271 066e 5F696E63 		.ascii	"_inc\000"
 5271      00
 5272              	.LASF60:
 5273 0673 5F696E64 		.ascii	"_ind\000"
 5273      00
 5274              	.LASF90:
 5275 0678 5F637572 		.ascii	"_current_locale\000"
 5275      72656E74 
 5275      5F6C6F63 
 5275      616C6500 
 5276              	.LASF187:
 5277 0688 70756C5F 		.ascii	"pul_hour\000"
 5277      686F7572 
 5277      00
 5278              	.LASF92:
 5279 0691 5F5F636C 		.ascii	"__cleanup\000"
 5279      65616E75 
 5279      7000
 5280              	.LASF166:
 5281 069b 756C5F61 		.ascii	"ul_alarm\000"
 5281      6C61726D 
 5281      00
 5282              	.LASF40:
 5283 06a4 5F6D6178 		.ascii	"_maxwds\000"
 5283      77647300 
 5284              	.LASF82:
 5285 06ac 5F726565 		.ascii	"_reent\000"
 5285      6E7400
 5286              	.LASF110:
 5287 06b3 5F736565 		.ascii	"_seed\000"
 5287      6400
 5288              	.LASF34:
 5289 06b9 5F5F636F 		.ascii	"__count\000"
 5289      756E7400 
 5290              	.LASF12:
 5291 06c1 75696E74 		.ascii	"uint32_t\000"
 5291      33325F74 
 5291      00
 5292              	.LASF72:
 5293 06ca 5F736565 		.ascii	"_seek\000"
 5293      6B00
 5294              	.LASF30:
 5295 06d0 5F66706F 		.ascii	"_fpos_t\000"
 5295      735F7400 
 5296              	.LASF83:
 5297 06d8 5F657272 		.ascii	"_errno\000"
 5297      6E6F00
 5298              	.LASF104:
 5299 06df 63686172 		.ascii	"char\000"
 5299      00
 5300              	.LASF76:
 5301 06e4 5F626C6B 		.ascii	"_blksize\000"
 5301      73697A65 
 5301      00
ARM GAS  /tmp/ccmZuGH1.s 			page 114


 5302              	.LASF64:
 5303 06ed 5F73697A 		.ascii	"_size\000"
 5303      6500
 5304              	.LASF0:
 5305 06f3 756E7369 		.ascii	"unsigned int\000"
 5305      676E6564 
 5305      20696E74 
 5305      00
 5306              	.LASF184:
 5307 0700 7274635F 		.ascii	"rtc_set_time\000"
 5307      7365745F 
 5307      74696D65 
 5307      00
 5308              	.LASF160:
 5309 070d 7274635F 		.ascii	"rtc_clear_time_alarm\000"
 5309      636C6561 
 5309      725F7469 
 5309      6D655F61 
 5309      6C61726D 
 5310              	.LASF164:
 5311 0722 756C5F64 		.ascii	"ul_day_flag\000"
 5311      61795F66 
 5311      6C616700 
 5312              	.LASF6:
 5313 072e 5F5F696E 		.ascii	"__int32_t\000"
 5313      7433325F 
 5313      7400
 5314              	.LASF18:
 5315 0738 5254435F 		.ascii	"RTC_TIMR\000"
 5315      54494D52 
 5315      00
 5316              	.LASF171:
 5317 0741 7274635F 		.ascii	"rtc_get_date\000"
 5317      6765745F 
 5317      64617465 
 5317      00
 5318              	.LASF39:
 5319 074e 5F6E6578 		.ascii	"_next\000"
 5319      7400
 5320              	.LASF114:
 5321 0754 5F737472 		.ascii	"_strtok_last\000"
 5321      746F6B5F 
 5321      6C617374 
 5321      00
 5322              	.LASF35:
 5323 0761 5F5F7661 		.ascii	"__value\000"
 5323      6C756500 
 5324              	.LASF57:
 5325 0769 5F666E74 		.ascii	"_fntypes\000"
 5325      79706573 
 5325      00
 5326              	.LASF2:
 5327 0772 756E7369 		.ascii	"unsigned char\000"
 5327      676E6564 
 5327      20636861 
 5327      7200
 5328              	.LASF112:
ARM GAS  /tmp/ccmZuGH1.s 			page 115


 5329 0780 5F616464 		.ascii	"_add\000"
 5329      00
 5330              	.LASF38:
 5331 0785 5F5F554C 		.ascii	"__ULong\000"
 5331      6F6E6700 
 5332              	.LASF176:
 5333 078d 756C5F63 		.ascii	"ul_cent\000"
 5333      656E7400 
 5334              	.LASF174:
 5335 0795 70756C5F 		.ascii	"pul_day\000"
 5335      64617900 
 5336              	.LASF136:
 5337 079d 5F676C6F 		.ascii	"_global_impure_ptr\000"
 5337      62616C5F 
 5337      696D7075 
 5337      72655F70 
 5337      747200
 5338              	.LASF89:
 5339 07b0 5F637572 		.ascii	"_current_category\000"
 5339      72656E74 
 5339      5F636174 
 5339      65676F72 
 5339      7900
 5340              	.LASF146:
 5341 07c2 756C5F70 		.ascii	"ul_period\000"
 5341      6572696F 
 5341      6400
 5342              	.LASF182:
 5343 07cc 756C5F73 		.ascii	"ul_second_flag\000"
 5343      65636F6E 
 5343      645F666C 
 5343      616700
 5344              	.LASF85:
 5345 07db 5F737464 		.ascii	"_stdout\000"
 5345      6F757400 
 5346              	.LASF51:
 5347 07e3 5F5F746D 		.ascii	"__tm_wday\000"
 5347      5F776461 
 5347      7900
 5348              	.LASF106:
 5349 07ed 5F676C75 		.ascii	"_glue\000"
 5349      6500
 5350              	.LASF84:
 5351 07f3 5F737464 		.ascii	"_stdin\000"
 5351      696E00
 5352              	.LASF123:
 5353 07fa 5F6C3634 		.ascii	"_l64a_buf\000"
 5353      615F6275 
 5353      6600
 5354              	.LASF101:
 5355 0804 5F736967 		.ascii	"_sig_func\000"
 5355      5F66756E 
 5355      6300
 5356              	.LASF140:
 5357 080e 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 5357      6972715F 
 5357      63726974 
ARM GAS  /tmp/ccmZuGH1.s 			page 116


 5357      6963616C 
 5357      5F736563 
 5358              	.LASF32:
 5359 082f 5F5F7763 		.ascii	"__wch\000"
 5359      6800
 5360              	.LASF75:
 5361 0835 5F6E6275 		.ascii	"_nbuf\000"
 5361      6600
 5362              	.LASF134:
 5363 083b 5F756E75 		.ascii	"_unused\000"
 5363      73656400 
 5364              	.LASF190:
 5365 0843 7274635F 		.ascii	"rtc_get_interrupt_mask\000"
 5365      6765745F 
 5365      696E7465 
 5365      72727570 
 5365      745F6D61 
 5366              	.LASF180:
 5367 085a 756C5F6D 		.ascii	"ul_minute_flag\000"
 5367      696E7574 
 5367      655F666C 
 5367      616700
 5368              	.LASF53:
 5369 0869 5F5F746D 		.ascii	"__tm_isdst\000"
 5369      5F697364 
 5369      737400
 5370              	.LASF116:
 5371 0874 5F6C6F63 		.ascii	"_localtime_buf\000"
 5371      616C7469 
 5371      6D655F62 
 5371      756600
 5372              	.LASF46:
 5373 0883 5F5F746D 		.ascii	"__tm_min\000"
 5373      5F6D696E 
 5373      00
 5374              	.LASF119:
 5375 088c 5F723438 		.ascii	"_r48\000"
 5375      00
 5376              	.LASF192:
 5377 0891 756C5F73 		.ascii	"ul_sources\000"
 5377      6F757263 
 5377      657300
 5378              	.LASF121:
 5379 089c 5F6D6274 		.ascii	"_mbtowc_state\000"
 5379      6F77635F 
 5379      73746174 
 5379      6500
 5380              	.LASF178:
 5381 08aa 756C5F68 		.ascii	"ul_hour_flag\000"
 5381      6F75725F 
 5381      666C6167 
 5381      00
 5382              	.LASF95:
 5383 08b7 5F703573 		.ascii	"_p5s\000"
 5383      00
 5384              	.LASF27:
 5385 08bc 5254435F 		.ascii	"RTC_VER\000"
ARM GAS  /tmp/ccmZuGH1.s 			page 117


 5385      56455200 
 5386              	.LASF199:
 5387 08c4 7274635F 		.ascii	"rtc_set_hour_mode\000"
 5387      7365745F 
 5387      686F7572 
 5387      5F6D6F64 
 5387      6500
 5388              	.LASF153:
 5389 08d6 756C5F73 		.ascii	"ul_selection\000"
 5389      656C6563 
 5389      74696F6E 
 5389      00
 5390              	.LASF143:
 5391 08e3 646F7562 		.ascii	"double\000"
 5391      6C6500
 5392              	.LASF152:
 5393 08ea 7274635F 		.ascii	"rtc_set_calendar_event\000"
 5393      7365745F 
 5393      63616C65 
 5393      6E646172 
 5393      5F657665 
 5394              	.LASF48:
 5395 0901 5F5F746D 		.ascii	"__tm_mday\000"
 5395      5F6D6461 
 5395      7900
 5396              	.LASF20:
 5397 090b 5254435F 		.ascii	"RTC_TIMALR\000"
 5397      54494D41 
 5397      4C5200
 5398              	.LASF162:
 5399 0916 756C5F6D 		.ascii	"ul_month_flag\000"
 5399      6F6E7468 
 5399      5F666C61 
 5399      6700
 5400              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
