ARM GAS  /tmp/ccybDQNt.s 			page 1


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
  12              		.file	"rswdt.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.rswdt_get_timeout_value,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	rswdt_get_timeout_value
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	rswdt_get_timeout_value, %function
  25              	rswdt_get_timeout_value:
  26              	.LFB142:
  27              		.file 1 "../asf/sam/drivers/rswdt/rswdt.c"
   1:../asf/sam/drivers/rswdt/rswdt.c **** /**
   2:../asf/sam/drivers/rswdt/rswdt.c ****  * \file
   3:../asf/sam/drivers/rswdt/rswdt.c ****  *
   4:../asf/sam/drivers/rswdt/rswdt.c ****  * \brief Reinforced Safety Watchdog Timer (RSWDT) driver for SAM.
   5:../asf/sam/drivers/rswdt/rswdt.c ****  *
   6:../asf/sam/drivers/rswdt/rswdt.c ****  * Copyright (c) 2015-2017 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/rswdt/rswdt.c ****  *
   8:../asf/sam/drivers/rswdt/rswdt.c ****  * \asf_license_start
   9:../asf/sam/drivers/rswdt/rswdt.c ****  *
  10:../asf/sam/drivers/rswdt/rswdt.c ****  * \page License
  11:../asf/sam/drivers/rswdt/rswdt.c ****  *
  12:../asf/sam/drivers/rswdt/rswdt.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/rswdt/rswdt.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/rswdt/rswdt.c ****  *
  15:../asf/sam/drivers/rswdt/rswdt.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/rswdt/rswdt.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/rswdt/rswdt.c ****  *
  18:../asf/sam/drivers/rswdt/rswdt.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/rswdt/rswdt.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/rswdt/rswdt.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/rswdt/rswdt.c ****  *
  22:../asf/sam/drivers/rswdt/rswdt.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/rswdt/rswdt.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/rswdt/rswdt.c ****  *
  25:../asf/sam/drivers/rswdt/rswdt.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/rswdt/rswdt.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/rswdt/rswdt.c ****  *
  28:../asf/sam/drivers/rswdt/rswdt.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/rswdt/rswdt.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/rswdt/rswdt.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccybDQNt.s 			page 2


  31:../asf/sam/drivers/rswdt/rswdt.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/rswdt/rswdt.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/rswdt/rswdt.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/rswdt/rswdt.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/rswdt/rswdt.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/rswdt/rswdt.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/rswdt/rswdt.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/rswdt/rswdt.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/rswdt/rswdt.c ****  *
  40:../asf/sam/drivers/rswdt/rswdt.c ****  * \asf_license_stop
  41:../asf/sam/drivers/rswdt/rswdt.c ****  *
  42:../asf/sam/drivers/rswdt/rswdt.c ****  */
  43:../asf/sam/drivers/rswdt/rswdt.c **** /*
  44:../asf/sam/drivers/rswdt/rswdt.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/rswdt/rswdt.c ****  */
  46:../asf/sam/drivers/rswdt/rswdt.c **** 
  47:../asf/sam/drivers/rswdt/rswdt.c **** #include "rswdt.h"
  48:../asf/sam/drivers/rswdt/rswdt.c **** 
  49:../asf/sam/drivers/rswdt/rswdt.c **** /// @cond 0
  50:../asf/sam/drivers/rswdt/rswdt.c **** /**INDENT-OFF**/
  51:../asf/sam/drivers/rswdt/rswdt.c **** #ifdef __cplusplus
  52:../asf/sam/drivers/rswdt/rswdt.c **** extern "C" {
  53:../asf/sam/drivers/rswdt/rswdt.c **** #endif
  54:../asf/sam/drivers/rswdt/rswdt.c **** /**INDENT-ON**/
  55:../asf/sam/drivers/rswdt/rswdt.c **** /// @endcond
  56:../asf/sam/drivers/rswdt/rswdt.c **** 
  57:../asf/sam/drivers/rswdt/rswdt.c **** /**
  58:../asf/sam/drivers/rswdt/rswdt.c ****  * \defgroup sam_drivers_rswdt_group Reinforced Safety Watchdog Timer (RSWDT)
  59:../asf/sam/drivers/rswdt/rswdt.c ****  *
  60:../asf/sam/drivers/rswdt/rswdt.c ****  * Driver for the RSWDT (Reinforced Safety Watchdog Timer). This driver provides access to the main
  61:../asf/sam/drivers/rswdt/rswdt.c ****  * features of the RSWDT controller.
  62:../asf/sam/drivers/rswdt/rswdt.c ****  * The Reinforced Safety Watchdog Timer can be used to prevent system lock-up if the software
  63:../asf/sam/drivers/rswdt/rswdt.c ****  * becomes trapped in a deadlock. It features a 12-bit down counter that allows
  64:../asf/sam/drivers/rswdt/rswdt.c ****  * a watchdog period of up to 16 seconds (slow clock at 32.768 kHz). It can
  65:../asf/sam/drivers/rswdt/rswdt.c ****  * generate a general reset or a processor reset only. In addition, it can be
  66:../asf/sam/drivers/rswdt/rswdt.c ****  * stopped while the processor is in debug mode or idle mode.
  67:../asf/sam/drivers/rswdt/rswdt.c ****  *
  68:../asf/sam/drivers/rswdt/rswdt.c ****  * @{
  69:../asf/sam/drivers/rswdt/rswdt.c ****  */
  70:../asf/sam/drivers/rswdt/rswdt.c **** 
  71:../asf/sam/drivers/rswdt/rswdt.c **** #define RSWDT_KEY_PASSWORD  0xC4000000
  72:../asf/sam/drivers/rswdt/rswdt.c **** #define RSWDT_SLCK_DIV      128
  73:../asf/sam/drivers/rswdt/rswdt.c **** #define RSWDT_MAX_VALUE     4095
  74:../asf/sam/drivers/rswdt/rswdt.c **** 
  75:../asf/sam/drivers/rswdt/rswdt.c **** /**
  76:../asf/sam/drivers/rswdt/rswdt.c ****  * \brief Get counter value or permitted range value of reinforced safety watchdog timer from the
  77:../asf/sam/drivers/rswdt/rswdt.c ****  * desired timeout period (in us).
  78:../asf/sam/drivers/rswdt/rswdt.c ****  *
  79:../asf/sam/drivers/rswdt/rswdt.c ****  * \note The value returned by this function can be used by rswdt_init() if it is
  80:../asf/sam/drivers/rswdt/rswdt.c ****  * not RSWDT_INVALID_ARGUMENT.
  81:../asf/sam/drivers/rswdt/rswdt.c ****  *
  82:../asf/sam/drivers/rswdt/rswdt.c ****  * \param ul_us The desired timeout period (in us).
  83:../asf/sam/drivers/rswdt/rswdt.c ****  * \param ul_sclk The slow clock on board (in Hz).
  84:../asf/sam/drivers/rswdt/rswdt.c ****  *
  85:../asf/sam/drivers/rswdt/rswdt.c ****  * \return If the desired period is beyond the reinforced safety watchdog period, this function
  86:../asf/sam/drivers/rswdt/rswdt.c ****  * returns RSWDT_INVALID_ARGUMENT. Otherwise it returns valid value.
  87:../asf/sam/drivers/rswdt/rswdt.c ****  */
ARM GAS  /tmp/ccybDQNt.s 			page 3


  88:../asf/sam/drivers/rswdt/rswdt.c **** uint32_t rswdt_get_timeout_value(uint32_t ul_us, uint32_t ul_sclk)
  89:../asf/sam/drivers/rswdt/rswdt.c **** {
  28              		.loc 1 89 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
  90:../asf/sam/drivers/rswdt/rswdt.c **** 	uint32_t max, min;
  91:../asf/sam/drivers/rswdt/rswdt.c **** 
  92:../asf/sam/drivers/rswdt/rswdt.c **** 	min = RSWDT_SLCK_DIV * 1000000 / ul_sclk;
  34              		.loc 1 92 0
  35 0000 084B     		ldr	r3, .L6
  36 0002 B3FBF1F1 		udiv	r1, r3, r1
  37              	.LVL1:
  93:../asf/sam/drivers/rswdt/rswdt.c **** 	max = min * RSWDT_MAX_VALUE;
  38              		.loc 1 93 0
  39 0006 C1EB0133 		rsb	r3, r1, r1, lsl #12
  94:../asf/sam/drivers/rswdt/rswdt.c **** 
  95:../asf/sam/drivers/rswdt/rswdt.c **** 	if ((ul_us < min) || (ul_us > max)) {
  40              		.loc 1 95 0
  41 000a 8342     		cmp	r3, r0
  42 000c 01D3     		bcc	.L3
  43 000e 8142     		cmp	r1, r0
  44 0010 02D9     		bls	.L5
  45              	.L3:
  96:../asf/sam/drivers/rswdt/rswdt.c **** 		return RSWDT_INVALID_ARGUMENT;
  46              		.loc 1 96 0
  47 0012 4FF6FF70 		movw	r0, #65535
  48              	.LVL2:
  97:../asf/sam/drivers/rswdt/rswdt.c **** 	}
  98:../asf/sam/drivers/rswdt/rswdt.c **** 
  99:../asf/sam/drivers/rswdt/rswdt.c **** 	return RSWDT_MR_WDV(ul_us / min);
 100:../asf/sam/drivers/rswdt/rswdt.c **** }
  49              		.loc 1 100 0
  50 0016 7047     		bx	lr
  51              	.LVL3:
  52              	.L5:
  99:../asf/sam/drivers/rswdt/rswdt.c **** }
  53              		.loc 1 99 0
  54 0018 B0FBF1F0 		udiv	r0, r0, r1
  55              	.LVL4:
  56 001c C0F30B00 		ubfx	r0, r0, #0, #12
  57 0020 7047     		bx	lr
  58              	.L7:
  59 0022 00BF     		.align	2
  60              	.L6:
  61 0024 0020A107 		.word	128000000
  62              		.cfi_endproc
  63              	.LFE142:
  64              		.size	rswdt_get_timeout_value, .-rswdt_get_timeout_value
  65              		.section	.text.rswdt_init,"ax",%progbits
  66              		.align	1
  67              		.p2align 2,,3
  68              		.global	rswdt_init
  69              		.syntax unified
  70              		.thumb
ARM GAS  /tmp/ccybDQNt.s 			page 4


  71              		.thumb_func
  72              		.fpu fpv5-d16
  73              		.type	rswdt_init, %function
  74              	rswdt_init:
  75              	.LFB143:
 101:../asf/sam/drivers/rswdt/rswdt.c **** 
 102:../asf/sam/drivers/rswdt/rswdt.c **** /**
 103:../asf/sam/drivers/rswdt/rswdt.c ****  * \brief Initialize reinforced safety watchdog timer with the given mode.
 104:../asf/sam/drivers/rswdt/rswdt.c ****  *
 105:../asf/sam/drivers/rswdt/rswdt.c ****  * \param p_rswdt Pointer to a RSWDT instance.
 106:../asf/sam/drivers/rswdt/rswdt.c ****  * \param ul_mode Bitmask of reinforced safety watchdog timer mode.
 107:../asf/sam/drivers/rswdt/rswdt.c ****  * \param us_counter The value loaded in the 12-bit Reinforced Safety Watchdog Counter.
 108:../asf/sam/drivers/rswdt/rswdt.c ****  * \param us_delta The permitted range for reloading the Reinforced Safety Watchdog Timer.
 109:../asf/sam/drivers/rswdt/rswdt.c ****  */
 110:../asf/sam/drivers/rswdt/rswdt.c **** void rswdt_init(Rswdt *p_rswdt, uint32_t ul_mode, uint16_t us_counter,
 111:../asf/sam/drivers/rswdt/rswdt.c **** 		uint16_t us_delta)
 112:../asf/sam/drivers/rswdt/rswdt.c **** {
  76              		.loc 1 112 0
  77              		.cfi_startproc
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80              		@ link register save eliminated.
  81              	.LVL5:
 113:../asf/sam/drivers/rswdt/rswdt.c **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 114:../asf/sam/drivers/rswdt/rswdt.c **** 	p_rswdt->RSWDT_MR = ul_mode |
 115:../asf/sam/drivers/rswdt/rswdt.c **** 			RSWDT_MR_WDV(us_counter);
  82              		.loc 1 115 0
  83 0000 C2F30B02 		ubfx	r2, r2, #0, #12
  84              	.LVL6:
 114:../asf/sam/drivers/rswdt/rswdt.c **** 			RSWDT_MR_WDV(us_counter);
  85              		.loc 1 114 0
  86 0004 0A43     		orrs	r2, r2, r1
  87 0006 4260     		str	r2, [r0, #4]
  88 0008 7047     		bx	lr
  89              		.cfi_endproc
  90              	.LFE143:
  91              		.size	rswdt_init, .-rswdt_init
  92 000a 00BF     		.section	.text.rswdt_disable,"ax",%progbits
  93              		.align	1
  94              		.p2align 2,,3
  95              		.global	rswdt_disable
  96              		.syntax unified
  97              		.thumb
  98              		.thumb_func
  99              		.fpu fpv5-d16
 100              		.type	rswdt_disable, %function
 101              	rswdt_disable:
 102              	.LFB144:
 116:../asf/sam/drivers/rswdt/rswdt.c **** #else
 117:../asf/sam/drivers/rswdt/rswdt.c **** 	p_rswdt->RSWDT_MR = ul_mode |
 118:../asf/sam/drivers/rswdt/rswdt.c **** 			RSWDT_MR_WDV(us_counter) | RSWDT_MR_WDD(us_delta);
 119:../asf/sam/drivers/rswdt/rswdt.c **** #endif
 120:../asf/sam/drivers/rswdt/rswdt.c **** }
 121:../asf/sam/drivers/rswdt/rswdt.c **** 
 122:../asf/sam/drivers/rswdt/rswdt.c **** /**
 123:../asf/sam/drivers/rswdt/rswdt.c ****  * \brief Disable the reinforced safety watchdog timer.
 124:../asf/sam/drivers/rswdt/rswdt.c ****  */
ARM GAS  /tmp/ccybDQNt.s 			page 5


 125:../asf/sam/drivers/rswdt/rswdt.c **** void rswdt_disable(Rswdt *p_rswdt)
 126:../asf/sam/drivers/rswdt/rswdt.c **** {
 103              		.loc 1 126 0
 104              		.cfi_startproc
 105              		@ args = 0, pretend = 0, frame = 0
 106              		@ frame_needed = 0, uses_anonymous_args = 0
 107              		@ link register save eliminated.
 108              	.LVL7:
 127:../asf/sam/drivers/rswdt/rswdt.c **** 	p_rswdt->RSWDT_MR = RSWDT_MR_WDDIS;
 109              		.loc 1 127 0
 110 0000 4FF40043 		mov	r3, #32768
 111 0004 4360     		str	r3, [r0, #4]
 112 0006 7047     		bx	lr
 113              		.cfi_endproc
 114              	.LFE144:
 115              		.size	rswdt_disable, .-rswdt_disable
 116              		.section	.text.rswdt_restart,"ax",%progbits
 117              		.align	1
 118              		.p2align 2,,3
 119              		.global	rswdt_restart
 120              		.syntax unified
 121              		.thumb
 122              		.thumb_func
 123              		.fpu fpv5-d16
 124              		.type	rswdt_restart, %function
 125              	rswdt_restart:
 126              	.LFB145:
 128:../asf/sam/drivers/rswdt/rswdt.c **** }
 129:../asf/sam/drivers/rswdt/rswdt.c **** 
 130:../asf/sam/drivers/rswdt/rswdt.c **** /**
 131:../asf/sam/drivers/rswdt/rswdt.c ****  * \brief Restart the reinforced safety watchdog timer.
 132:../asf/sam/drivers/rswdt/rswdt.c ****  */
 133:../asf/sam/drivers/rswdt/rswdt.c **** void rswdt_restart(Rswdt *p_rswdt)
 134:../asf/sam/drivers/rswdt/rswdt.c **** {
 127              		.loc 1 134 0
 128              		.cfi_startproc
 129              		@ args = 0, pretend = 0, frame = 0
 130              		@ frame_needed = 0, uses_anonymous_args = 0
 131              		@ link register save eliminated.
 132              	.LVL8:
 135:../asf/sam/drivers/rswdt/rswdt.c **** 	if (p_rswdt == RSWDT) {
 133              		.loc 1 135 0
 134 0000 034B     		ldr	r3, .L13
 135 0002 9842     		cmp	r0, r3
 136 0004 00D0     		beq	.L12
 137 0006 7047     		bx	lr
 138              	.L12:
 136:../asf/sam/drivers/rswdt/rswdt.c **** 		p_rswdt->RSWDT_CR = RSWDT_KEY_PASSWORD | RSWDT_CR_WDRSTT;
 139              		.loc 1 136 0
 140 0008 024B     		ldr	r3, .L13+4
 141 000a 0360     		str	r3, [r0]
 142 000c 7047     		bx	lr
 143              	.L14:
 144 000e 00BF     		.align	2
 145              	.L13:
 146 0010 00190E40 		.word	1074665728
 147 0014 010000C4 		.word	-1006632959
ARM GAS  /tmp/ccybDQNt.s 			page 6


 148              		.cfi_endproc
 149              	.LFE145:
 150              		.size	rswdt_restart, .-rswdt_restart
 151              		.section	.text.rswdt_get_status,"ax",%progbits
 152              		.align	1
 153              		.p2align 2,,3
 154              		.global	rswdt_get_status
 155              		.syntax unified
 156              		.thumb
 157              		.thumb_func
 158              		.fpu fpv5-d16
 159              		.type	rswdt_get_status, %function
 160              	rswdt_get_status:
 161              	.LFB146:
 137:../asf/sam/drivers/rswdt/rswdt.c **** 	}
 138:../asf/sam/drivers/rswdt/rswdt.c **** }
 139:../asf/sam/drivers/rswdt/rswdt.c **** 
 140:../asf/sam/drivers/rswdt/rswdt.c **** /**
 141:../asf/sam/drivers/rswdt/rswdt.c ****  * \brief Check the reinforced safety watchdog timer status.
 142:../asf/sam/drivers/rswdt/rswdt.c ****  *
 143:../asf/sam/drivers/rswdt/rswdt.c ****  * \return Bitmask of reinforced safety watchdog timer status.
 144:../asf/sam/drivers/rswdt/rswdt.c ****  */
 145:../asf/sam/drivers/rswdt/rswdt.c **** uint32_t rswdt_get_status(Rswdt *p_rswdt)
 146:../asf/sam/drivers/rswdt/rswdt.c **** {
 162              		.loc 1 146 0
 163              		.cfi_startproc
 164              		@ args = 0, pretend = 0, frame = 0
 165              		@ frame_needed = 0, uses_anonymous_args = 0
 166              		@ link register save eliminated.
 167              	.LVL9:
 147:../asf/sam/drivers/rswdt/rswdt.c **** 	return p_rswdt->RSWDT_SR;
 168              		.loc 1 147 0
 169 0000 8068     		ldr	r0, [r0, #8]
 170              	.LVL10:
 148:../asf/sam/drivers/rswdt/rswdt.c **** }
 171              		.loc 1 148 0
 172 0002 7047     		bx	lr
 173              		.cfi_endproc
 174              	.LFE146:
 175              		.size	rswdt_get_status, .-rswdt_get_status
 176              		.section	.text.rswdt_get_us_timeout_period,"ax",%progbits
 177              		.align	1
 178              		.p2align 2,,3
 179              		.global	rswdt_get_us_timeout_period
 180              		.syntax unified
 181              		.thumb
 182              		.thumb_func
 183              		.fpu fpv5-d16
 184              		.type	rswdt_get_us_timeout_period, %function
 185              	rswdt_get_us_timeout_period:
 186              	.LFB147:
 149:../asf/sam/drivers/rswdt/rswdt.c **** 
 150:../asf/sam/drivers/rswdt/rswdt.c **** /**
 151:../asf/sam/drivers/rswdt/rswdt.c ****  * \brief Get the timeout period of the Reinforced Safety WatchDog Timer in microseconds.
 152:../asf/sam/drivers/rswdt/rswdt.c ****  *
 153:../asf/sam/drivers/rswdt/rswdt.c ****  * \param p_rswdt Pointer to a RSWDT instance.
 154:../asf/sam/drivers/rswdt/rswdt.c ****  * \param ul_sclk The slow clock frequency (in Hz).
ARM GAS  /tmp/ccybDQNt.s 			page 7


 155:../asf/sam/drivers/rswdt/rswdt.c ****  *
 156:../asf/sam/drivers/rswdt/rswdt.c ****  * \return The timeout period in microseconds.
 157:../asf/sam/drivers/rswdt/rswdt.c ****  */
 158:../asf/sam/drivers/rswdt/rswdt.c **** uint32_t rswdt_get_us_timeout_period(Rswdt *p_rswdt, uint32_t ul_sclk)
 159:../asf/sam/drivers/rswdt/rswdt.c **** {
 187              		.loc 1 159 0
 188              		.cfi_startproc
 189              		@ args = 0, pretend = 0, frame = 0
 190              		@ frame_needed = 0, uses_anonymous_args = 0
 191              		@ link register save eliminated.
 192              	.LVL11:
 160:../asf/sam/drivers/rswdt/rswdt.c **** 	return RSWDT_MR_WDV(p_rswdt->RSWDT_MR) * RSWDT_SLCK_DIV / ul_sclk * 1000000;
 193              		.loc 1 160 0
 194 0000 4368     		ldr	r3, [r0, #4]
 195 0002 044A     		ldr	r2, .L17
 196 0004 C3F30B03 		ubfx	r3, r3, #0, #12
 197 0008 DB01     		lsls	r3, r3, #7
 198 000a B3FBF1F1 		udiv	r1, r3, r1
 199              	.LVL12:
 161:../asf/sam/drivers/rswdt/rswdt.c **** }
 200              		.loc 1 161 0
 201 000e 02FB01F0 		mul	r0, r2, r1
 202              	.LVL13:
 203 0012 7047     		bx	lr
 204              	.L18:
 205              		.align	2
 206              	.L17:
 207 0014 40420F00 		.word	1000000
 208              		.cfi_endproc
 209              	.LFE147:
 210              		.size	rswdt_get_us_timeout_period, .-rswdt_get_us_timeout_period
 211              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 212              		.align	2
 213              		.type	cpu_irq_critical_section_counter, %object
 214              		.size	cpu_irq_critical_section_counter, 4
 215              	cpu_irq_critical_section_counter:
 216 0000 00000000 		.space	4
 217              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 218              		.type	cpu_irq_prev_interrupt_state, %object
 219              		.size	cpu_irq_prev_interrupt_state, 1
 220              	cpu_irq_prev_interrupt_state:
 221 0000 00       		.space	1
 222              		.text
 223              	.Letext0:
 224              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 225              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 226              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 227              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 228              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/rswd
 229              		.file 7 "/usr/include/newlib/sys/lock.h"
 230              		.file 8 "/usr/include/newlib/sys/_types.h"
 231              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 232              		.file 10 "/usr/include/newlib/sys/reent.h"
 233              		.file 11 "/usr/include/newlib/stdlib.h"
 234              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 235              		.section	.debug_info,"",%progbits
 236              	.Ldebug_info0:
ARM GAS  /tmp/ccybDQNt.s 			page 8


 237 0000 BA0A0000 		.4byte	0xaba
 238 0004 0400     		.2byte	0x4
 239 0006 00000000 		.4byte	.Ldebug_abbrev0
 240 000a 04       		.byte	0x4
 241 000b 01       		.uleb128 0x1
 242 000c CF020000 		.4byte	.LASF150
 243 0010 0C       		.byte	0xc
 244 0011 1F040000 		.4byte	.LASF151
 245 0015 52060000 		.4byte	.LASF152
 246 0019 00000000 		.4byte	.Ldebug_ranges0+0
 247 001d 00000000 		.4byte	0
 248 0021 00000000 		.4byte	.Ldebug_line0
 249 0025 02       		.uleb128 0x2
 250 0026 04       		.byte	0x4
 251 0027 05       		.byte	0x5
 252 0028 696E7400 		.ascii	"int\000"
 253 002c 03       		.uleb128 0x3
 254 002d 04       		.byte	0x4
 255 002e 07       		.byte	0x7
 256 002f 48050000 		.4byte	.LASF0
 257 0033 03       		.uleb128 0x3
 258 0034 01       		.byte	0x1
 259 0035 06       		.byte	0x6
 260 0036 D9000000 		.4byte	.LASF1
 261 003a 03       		.uleb128 0x3
 262 003b 01       		.byte	0x1
 263 003c 08       		.byte	0x8
 264 003d 0B040000 		.4byte	.LASF2
 265 0041 03       		.uleb128 0x3
 266 0042 02       		.byte	0x2
 267 0043 05       		.byte	0x5
 268 0044 14000000 		.4byte	.LASF3
 269 0048 04       		.uleb128 0x4
 270 0049 55050000 		.4byte	.LASF5
 271 004d 02       		.byte	0x2
 272 004e 2B       		.byte	0x2b
 273 004f 53000000 		.4byte	0x53
 274 0053 03       		.uleb128 0x3
 275 0054 02       		.byte	0x2
 276 0055 07       		.byte	0x7
 277 0056 BF010000 		.4byte	.LASF4
 278 005a 04       		.uleb128 0x4
 279 005b 60050000 		.4byte	.LASF6
 280 005f 02       		.byte	0x2
 281 0060 3F       		.byte	0x3f
 282 0061 65000000 		.4byte	0x65
 283 0065 03       		.uleb128 0x3
 284 0066 04       		.byte	0x4
 285 0067 05       		.byte	0x5
 286 0068 2D010000 		.4byte	.LASF7
 287 006c 04       		.uleb128 0x4
 288 006d D7010000 		.4byte	.LASF8
 289 0071 02       		.byte	0x2
 290 0072 41       		.byte	0x41
 291 0073 77000000 		.4byte	0x77
 292 0077 03       		.uleb128 0x3
 293 0078 04       		.byte	0x4
ARM GAS  /tmp/ccybDQNt.s 			page 9


 294 0079 07       		.byte	0x7
 295 007a 46020000 		.4byte	.LASF9
 296 007e 03       		.uleb128 0x3
 297 007f 08       		.byte	0x8
 298 0080 05       		.byte	0x5
 299 0081 72010000 		.4byte	.LASF10
 300 0085 03       		.uleb128 0x3
 301 0086 08       		.byte	0x8
 302 0087 07       		.byte	0x7
 303 0088 EB000000 		.4byte	.LASF11
 304 008c 04       		.uleb128 0x4
 305 008d 80010000 		.4byte	.LASF12
 306 0091 03       		.byte	0x3
 307 0092 24       		.byte	0x24
 308 0093 48000000 		.4byte	0x48
 309 0097 04       		.uleb128 0x4
 310 0098 03040000 		.4byte	.LASF13
 311 009c 03       		.byte	0x3
 312 009d 2C       		.byte	0x2c
 313 009e 5A000000 		.4byte	0x5a
 314 00a2 05       		.uleb128 0x5
 315 00a3 97000000 		.4byte	0x97
 316 00a7 04       		.uleb128 0x4
 317 00a8 DE050000 		.4byte	.LASF14
 318 00ac 03       		.byte	0x3
 319 00ad 30       		.byte	0x30
 320 00ae 6C000000 		.4byte	0x6c
 321 00b2 05       		.uleb128 0x5
 322 00b3 A7000000 		.4byte	0xa7
 323 00b7 06       		.uleb128 0x6
 324 00b8 B2000000 		.4byte	0xb2
 325 00bc 07       		.uleb128 0x7
 326 00bd 04       		.byte	0x4
 327 00be 03       		.uleb128 0x3
 328 00bf 04       		.byte	0x4
 329 00c0 07       		.byte	0x7
 330 00c1 C6020000 		.4byte	.LASF15
 331 00c5 08       		.uleb128 0x8
 332 00c6 8F000000 		.4byte	.LASF16
 333 00ca 04       		.byte	0x4
 334 00cb 6508     		.2byte	0x865
 335 00cd A2000000 		.4byte	0xa2
 336 00d1 09       		.uleb128 0x9
 337 00d2 26020000 		.4byte	.LASF17
 338 00d6 05       		.byte	0x5
 339 00d7 3A       		.byte	0x3a
 340 00d8 A7000000 		.4byte	0xa7
 341 00dc 0A       		.uleb128 0xa
 342 00dd 0C       		.byte	0xc
 343 00de 06       		.byte	0x6
 344 00df 38       		.byte	0x38
 345 00e0 09010000 		.4byte	0x109
 346 00e4 0B       		.uleb128 0xb
 347 00e5 A5030000 		.4byte	.LASF18
 348 00e9 06       		.byte	0x6
 349 00ea 39       		.byte	0x39
 350 00eb B2000000 		.4byte	0xb2
ARM GAS  /tmp/ccybDQNt.s 			page 10


 351 00ef 00       		.byte	0
 352 00f0 0B       		.uleb128 0xb
 353 00f1 43010000 		.4byte	.LASF19
 354 00f5 06       		.byte	0x6
 355 00f6 3A       		.byte	0x3a
 356 00f7 B2000000 		.4byte	0xb2
 357 00fb 04       		.byte	0x4
 358 00fc 0B       		.uleb128 0xb
 359 00fd 75040000 		.4byte	.LASF20
 360 0101 06       		.byte	0x6
 361 0102 3B       		.byte	0x3b
 362 0103 B7000000 		.4byte	0xb7
 363 0107 08       		.byte	0x8
 364 0108 00       		.byte	0
 365 0109 04       		.uleb128 0x4
 366 010a 36010000 		.4byte	.LASF21
 367 010e 06       		.byte	0x6
 368 010f 3C       		.byte	0x3c
 369 0110 DC000000 		.4byte	0xdc
 370 0114 04       		.uleb128 0x4
 371 0115 E5030000 		.4byte	.LASF22
 372 0119 07       		.byte	0x7
 373 011a 07       		.byte	0x7
 374 011b 25000000 		.4byte	0x25
 375 011f 04       		.uleb128 0x4
 376 0120 CB000000 		.4byte	.LASF23
 377 0124 08       		.byte	0x8
 378 0125 2C       		.byte	0x2c
 379 0126 65000000 		.4byte	0x65
 380 012a 04       		.uleb128 0x4
 381 012b 25050000 		.4byte	.LASF24
 382 012f 08       		.byte	0x8
 383 0130 72       		.byte	0x72
 384 0131 65000000 		.4byte	0x65
 385 0135 0C       		.uleb128 0xc
 386 0136 AE030000 		.4byte	.LASF25
 387 013a 09       		.byte	0x9
 388 013b 6501     		.2byte	0x165
 389 013d 2C000000 		.4byte	0x2c
 390 0141 0D       		.uleb128 0xd
 391 0142 04       		.byte	0x4
 392 0143 08       		.byte	0x8
 393 0144 A6       		.byte	0xa6
 394 0145 60010000 		.4byte	0x160
 395 0149 0E       		.uleb128 0xe
 396 014a 97020000 		.4byte	.LASF26
 397 014e 08       		.byte	0x8
 398 014f A8       		.byte	0xa8
 399 0150 35010000 		.4byte	0x135
 400 0154 0E       		.uleb128 0xe
 401 0155 1F020000 		.4byte	.LASF27
 402 0159 08       		.byte	0x8
 403 015a A9       		.byte	0xa9
 404 015b 60010000 		.4byte	0x160
 405 015f 00       		.byte	0
 406 0160 0F       		.uleb128 0xf
 407 0161 3A000000 		.4byte	0x3a
ARM GAS  /tmp/ccybDQNt.s 			page 11


 408 0165 70010000 		.4byte	0x170
 409 0169 10       		.uleb128 0x10
 410 016a BE000000 		.4byte	0xbe
 411 016e 03       		.byte	0x3
 412 016f 00       		.byte	0
 413 0170 0A       		.uleb128 0xa
 414 0171 08       		.byte	0x8
 415 0172 08       		.byte	0x8
 416 0173 A3       		.byte	0xa3
 417 0174 91010000 		.4byte	0x191
 418 0178 0B       		.uleb128 0xb
 419 0179 FB040000 		.4byte	.LASF28
 420 017d 08       		.byte	0x8
 421 017e A5       		.byte	0xa5
 422 017f 25000000 		.4byte	0x25
 423 0183 00       		.byte	0
 424 0184 0B       		.uleb128 0xb
 425 0185 03050000 		.4byte	.LASF29
 426 0189 08       		.byte	0x8
 427 018a AA       		.byte	0xaa
 428 018b 41010000 		.4byte	0x141
 429 018f 04       		.byte	0x4
 430 0190 00       		.byte	0
 431 0191 04       		.uleb128 0x4
 432 0192 85040000 		.4byte	.LASF30
 433 0196 08       		.byte	0x8
 434 0197 AB       		.byte	0xab
 435 0198 70010000 		.4byte	0x170
 436 019c 04       		.uleb128 0x4
 437 019d 49040000 		.4byte	.LASF31
 438 01a1 08       		.byte	0x8
 439 01a2 AF       		.byte	0xaf
 440 01a3 14010000 		.4byte	0x114
 441 01a7 04       		.uleb128 0x4
 442 01a8 9E050000 		.4byte	.LASF32
 443 01ac 0A       		.byte	0xa
 444 01ad 16       		.byte	0x16
 445 01ae 77000000 		.4byte	0x77
 446 01b2 11       		.uleb128 0x11
 447 01b3 0C020000 		.4byte	.LASF37
 448 01b7 18       		.byte	0x18
 449 01b8 0A       		.byte	0xa
 450 01b9 2D       		.byte	0x2d
 451 01ba 05020000 		.4byte	0x205
 452 01be 0B       		.uleb128 0xb
 453 01bf 72050000 		.4byte	.LASF33
 454 01c3 0A       		.byte	0xa
 455 01c4 2F       		.byte	0x2f
 456 01c5 05020000 		.4byte	0x205
 457 01c9 00       		.byte	0
 458 01ca 12       		.uleb128 0x12
 459 01cb 5F6B00   		.ascii	"_k\000"
 460 01ce 0A       		.byte	0xa
 461 01cf 30       		.byte	0x30
 462 01d0 25000000 		.4byte	0x25
 463 01d4 04       		.byte	0x4
 464 01d5 0B       		.uleb128 0xb
ARM GAS  /tmp/ccybDQNt.s 			page 12


 465 01d6 E6040000 		.4byte	.LASF34
 466 01da 0A       		.byte	0xa
 467 01db 30       		.byte	0x30
 468 01dc 25000000 		.4byte	0x25
 469 01e0 08       		.byte	0x8
 470 01e1 0B       		.uleb128 0xb
 471 01e2 E2010000 		.4byte	.LASF35
 472 01e6 0A       		.byte	0xa
 473 01e7 30       		.byte	0x30
 474 01e8 25000000 		.4byte	0x25
 475 01ec 0C       		.byte	0xc
 476 01ed 0B       		.uleb128 0xb
 477 01ee F4050000 		.4byte	.LASF36
 478 01f2 0A       		.byte	0xa
 479 01f3 30       		.byte	0x30
 480 01f4 25000000 		.4byte	0x25
 481 01f8 10       		.byte	0x10
 482 01f9 12       		.uleb128 0x12
 483 01fa 5F7800   		.ascii	"_x\000"
 484 01fd 0A       		.byte	0xa
 485 01fe 31       		.byte	0x31
 486 01ff 0B020000 		.4byte	0x20b
 487 0203 14       		.byte	0x14
 488 0204 00       		.byte	0
 489 0205 13       		.uleb128 0x13
 490 0206 04       		.byte	0x4
 491 0207 B2010000 		.4byte	0x1b2
 492 020b 0F       		.uleb128 0xf
 493 020c A7010000 		.4byte	0x1a7
 494 0210 1B020000 		.4byte	0x21b
 495 0214 10       		.uleb128 0x10
 496 0215 BE000000 		.4byte	0xbe
 497 0219 00       		.byte	0
 498 021a 00       		.byte	0
 499 021b 11       		.uleb128 0x11
 500 021c 1A020000 		.4byte	.LASF38
 501 0220 24       		.byte	0x24
 502 0221 0A       		.byte	0xa
 503 0222 35       		.byte	0x35
 504 0223 94020000 		.4byte	0x294
 505 0227 0B       		.uleb128 0xb
 506 0228 C2000000 		.4byte	.LASF39
 507 022c 0A       		.byte	0xa
 508 022d 37       		.byte	0x37
 509 022e 25000000 		.4byte	0x25
 510 0232 00       		.byte	0
 511 0233 0B       		.uleb128 0xb
 512 0234 A0060000 		.4byte	.LASF40
 513 0238 0A       		.byte	0xa
 514 0239 38       		.byte	0x38
 515 023a 25000000 		.4byte	0x25
 516 023e 04       		.byte	0x4
 517 023f 0B       		.uleb128 0xb
 518 0240 0B050000 		.4byte	.LASF41
 519 0244 0A       		.byte	0xa
 520 0245 39       		.byte	0x39
 521 0246 25000000 		.4byte	0x25
ARM GAS  /tmp/ccybDQNt.s 			page 13


 522 024a 08       		.byte	0x8
 523 024b 0B       		.uleb128 0xb
 524 024c D8060000 		.4byte	.LASF42
 525 0250 0A       		.byte	0xa
 526 0251 3A       		.byte	0x3a
 527 0252 25000000 		.4byte	0x25
 528 0256 0C       		.byte	0xc
 529 0257 0B       		.uleb128 0xb
 530 0258 70030000 		.4byte	.LASF43
 531 025c 0A       		.byte	0xa
 532 025d 3B       		.byte	0x3b
 533 025e 25000000 		.4byte	0x25
 534 0262 10       		.byte	0x10
 535 0263 0B       		.uleb128 0xb
 536 0264 BC020000 		.4byte	.LASF44
 537 0268 0A       		.byte	0xa
 538 0269 3C       		.byte	0x3c
 539 026a 25000000 		.4byte	0x25
 540 026e 14       		.byte	0x14
 541 026f 0B       		.uleb128 0xb
 542 0270 1B050000 		.4byte	.LASF45
 543 0274 0A       		.byte	0xa
 544 0275 3D       		.byte	0x3d
 545 0276 25000000 		.4byte	0x25
 546 027a 18       		.byte	0x18
 547 027b 0B       		.uleb128 0xb
 548 027c 52040000 		.4byte	.LASF46
 549 0280 0A       		.byte	0xa
 550 0281 3E       		.byte	0x3e
 551 0282 25000000 		.4byte	0x25
 552 0286 1C       		.byte	0x1c
 553 0287 0B       		.uleb128 0xb
 554 0288 86060000 		.4byte	.LASF47
 555 028c 0A       		.byte	0xa
 556 028d 3F       		.byte	0x3f
 557 028e 25000000 		.4byte	0x25
 558 0292 20       		.byte	0x20
 559 0293 00       		.byte	0
 560 0294 14       		.uleb128 0x14
 561 0295 0F010000 		.4byte	.LASF48
 562 0299 0801     		.2byte	0x108
 563 029b 0A       		.byte	0xa
 564 029c 48       		.byte	0x48
 565 029d D4020000 		.4byte	0x2d4
 566 02a1 0B       		.uleb128 0xb
 567 02a2 26000000 		.4byte	.LASF49
 568 02a6 0A       		.byte	0xa
 569 02a7 49       		.byte	0x49
 570 02a8 D4020000 		.4byte	0x2d4
 571 02ac 00       		.byte	0
 572 02ad 0B       		.uleb128 0xb
 573 02ae 00000000 		.4byte	.LASF50
 574 02b2 0A       		.byte	0xa
 575 02b3 4A       		.byte	0x4a
 576 02b4 D4020000 		.4byte	0x2d4
 577 02b8 80       		.byte	0x80
 578 02b9 15       		.uleb128 0x15
ARM GAS  /tmp/ccybDQNt.s 			page 14


 579 02ba 85050000 		.4byte	.LASF51
 580 02be 0A       		.byte	0xa
 581 02bf 4C       		.byte	0x4c
 582 02c0 A7010000 		.4byte	0x1a7
 583 02c4 0001     		.2byte	0x100
 584 02c6 15       		.uleb128 0x15
 585 02c7 0C000000 		.4byte	.LASF52
 586 02cb 0A       		.byte	0xa
 587 02cc 4F       		.byte	0x4f
 588 02cd A7010000 		.4byte	0x1a7
 589 02d1 0401     		.2byte	0x104
 590 02d3 00       		.byte	0
 591 02d4 0F       		.uleb128 0xf
 592 02d5 BC000000 		.4byte	0xbc
 593 02d9 E4020000 		.4byte	0x2e4
 594 02dd 10       		.uleb128 0x10
 595 02de BE000000 		.4byte	0xbe
 596 02e2 1F       		.byte	0x1f
 597 02e3 00       		.byte	0
 598 02e4 14       		.uleb128 0x14
 599 02e5 79030000 		.4byte	.LASF53
 600 02e9 9001     		.2byte	0x190
 601 02eb 0A       		.byte	0xa
 602 02ec 5B       		.byte	0x5b
 603 02ed 22030000 		.4byte	0x322
 604 02f1 0B       		.uleb128 0xb
 605 02f2 72050000 		.4byte	.LASF33
 606 02f6 0A       		.byte	0xa
 607 02f7 5C       		.byte	0x5c
 608 02f8 22030000 		.4byte	0x322
 609 02fc 00       		.byte	0
 610 02fd 0B       		.uleb128 0xb
 611 02fe C7040000 		.4byte	.LASF54
 612 0302 0A       		.byte	0xa
 613 0303 5D       		.byte	0x5d
 614 0304 25000000 		.4byte	0x25
 615 0308 04       		.byte	0x4
 616 0309 0B       		.uleb128 0xb
 617 030a D2010000 		.4byte	.LASF55
 618 030e 0A       		.byte	0xa
 619 030f 5F       		.byte	0x5f
 620 0310 28030000 		.4byte	0x328
 621 0314 08       		.byte	0x8
 622 0315 0B       		.uleb128 0xb
 623 0316 0F010000 		.4byte	.LASF48
 624 031a 0A       		.byte	0xa
 625 031b 60       		.byte	0x60
 626 031c 94020000 		.4byte	0x294
 627 0320 88       		.byte	0x88
 628 0321 00       		.byte	0
 629 0322 13       		.uleb128 0x13
 630 0323 04       		.byte	0x4
 631 0324 E4020000 		.4byte	0x2e4
 632 0328 0F       		.uleb128 0xf
 633 0329 38030000 		.4byte	0x338
 634 032d 38030000 		.4byte	0x338
 635 0331 10       		.uleb128 0x10
ARM GAS  /tmp/ccybDQNt.s 			page 15


 636 0332 BE000000 		.4byte	0xbe
 637 0336 1F       		.byte	0x1f
 638 0337 00       		.byte	0
 639 0338 13       		.uleb128 0x13
 640 0339 04       		.byte	0x4
 641 033a 3E030000 		.4byte	0x33e
 642 033e 16       		.uleb128 0x16
 643 033f 11       		.uleb128 0x11
 644 0340 5C040000 		.4byte	.LASF56
 645 0344 08       		.byte	0x8
 646 0345 0A       		.byte	0xa
 647 0346 73       		.byte	0x73
 648 0347 64030000 		.4byte	0x364
 649 034b 0B       		.uleb128 0xb
 650 034c F7030000 		.4byte	.LASF57
 651 0350 0A       		.byte	0xa
 652 0351 74       		.byte	0x74
 653 0352 64030000 		.4byte	0x364
 654 0356 00       		.byte	0
 655 0357 0B       		.uleb128 0xb
 656 0358 42050000 		.4byte	.LASF58
 657 035c 0A       		.byte	0xa
 658 035d 75       		.byte	0x75
 659 035e 25000000 		.4byte	0x25
 660 0362 04       		.byte	0x4
 661 0363 00       		.byte	0
 662 0364 13       		.uleb128 0x13
 663 0365 04       		.byte	0x4
 664 0366 3A000000 		.4byte	0x3a
 665 036a 11       		.uleb128 0x11
 666 036b 1E000000 		.4byte	.LASF59
 667 036f 68       		.byte	0x68
 668 0370 0A       		.byte	0xa
 669 0371 B3       		.byte	0xb3
 670 0372 94040000 		.4byte	0x494
 671 0376 12       		.uleb128 0x12
 672 0377 5F7000   		.ascii	"_p\000"
 673 037a 0A       		.byte	0xa
 674 037b B4       		.byte	0xb4
 675 037c 64030000 		.4byte	0x364
 676 0380 00       		.byte	0
 677 0381 12       		.uleb128 0x12
 678 0382 5F7200   		.ascii	"_r\000"
 679 0385 0A       		.byte	0xa
 680 0386 B5       		.byte	0xb5
 681 0387 25000000 		.4byte	0x25
 682 038b 04       		.byte	0x4
 683 038c 12       		.uleb128 0x12
 684 038d 5F7700   		.ascii	"_w\000"
 685 0390 0A       		.byte	0xa
 686 0391 B6       		.byte	0xb6
 687 0392 25000000 		.4byte	0x25
 688 0396 08       		.byte	0x8
 689 0397 0B       		.uleb128 0xb
 690 0398 3C010000 		.4byte	.LASF60
 691 039c 0A       		.byte	0xa
 692 039d B7       		.byte	0xb7
ARM GAS  /tmp/ccybDQNt.s 			page 16


 693 039e 41000000 		.4byte	0x41
 694 03a2 0C       		.byte	0xc
 695 03a3 0B       		.uleb128 0xb
 696 03a4 58020000 		.4byte	.LASF61
 697 03a8 0A       		.byte	0xa
 698 03a9 B8       		.byte	0xb8
 699 03aa 41000000 		.4byte	0x41
 700 03ae 0E       		.byte	0xe
 701 03af 12       		.uleb128 0x12
 702 03b0 5F626600 		.ascii	"_bf\000"
 703 03b4 0A       		.byte	0xa
 704 03b5 B9       		.byte	0xb9
 705 03b6 3F030000 		.4byte	0x33f
 706 03ba 10       		.byte	0x10
 707 03bb 0B       		.uleb128 0xb
 708 03bc C1060000 		.4byte	.LASF62
 709 03c0 0A       		.byte	0xa
 710 03c1 BA       		.byte	0xba
 711 03c2 25000000 		.4byte	0x25
 712 03c6 18       		.byte	0x18
 713 03c7 0B       		.uleb128 0xb
 714 03c8 1D010000 		.4byte	.LASF63
 715 03cc 0A       		.byte	0xa
 716 03cd C1       		.byte	0xc1
 717 03ce BC000000 		.4byte	0xbc
 718 03d2 1C       		.byte	0x1c
 719 03d3 0B       		.uleb128 0xb
 720 03d4 14020000 		.4byte	.LASF64
 721 03d8 0A       		.byte	0xa
 722 03d9 C3       		.byte	0xc3
 723 03da 01060000 		.4byte	0x601
 724 03de 20       		.byte	0x20
 725 03df 0B       		.uleb128 0xb
 726 03e0 B5020000 		.4byte	.LASF65
 727 03e4 0A       		.byte	0xa
 728 03e5 C5       		.byte	0xc5
 729 03e6 2B060000 		.4byte	0x62b
 730 03ea 24       		.byte	0x24
 731 03eb 0B       		.uleb128 0xb
 732 03ec 15050000 		.4byte	.LASF66
 733 03f0 0A       		.byte	0xa
 734 03f1 C8       		.byte	0xc8
 735 03f2 4F060000 		.4byte	0x64f
 736 03f6 28       		.byte	0x28
 737 03f7 0B       		.uleb128 0xb
 738 03f8 D2000000 		.4byte	.LASF67
 739 03fc 0A       		.byte	0xa
 740 03fd C9       		.byte	0xc9
 741 03fe 69060000 		.4byte	0x669
 742 0402 2C       		.byte	0x2c
 743 0403 12       		.uleb128 0x12
 744 0404 5F756200 		.ascii	"_ub\000"
 745 0408 0A       		.byte	0xa
 746 0409 CC       		.byte	0xcc
 747 040a 3F030000 		.4byte	0x33f
 748 040e 30       		.byte	0x30
 749 040f 12       		.uleb128 0x12
ARM GAS  /tmp/ccybDQNt.s 			page 17


 750 0410 5F757000 		.ascii	"_up\000"
 751 0414 0A       		.byte	0xa
 752 0415 CD       		.byte	0xcd
 753 0416 64030000 		.4byte	0x364
 754 041a 38       		.byte	0x38
 755 041b 12       		.uleb128 0x12
 756 041c 5F757200 		.ascii	"_ur\000"
 757 0420 0A       		.byte	0xa
 758 0421 CE       		.byte	0xce
 759 0422 25000000 		.4byte	0x25
 760 0426 3C       		.byte	0x3c
 761 0427 0B       		.uleb128 0xb
 762 0428 E5000000 		.4byte	.LASF68
 763 042c 0A       		.byte	0xa
 764 042d D1       		.byte	0xd1
 765 042e 6F060000 		.4byte	0x66f
 766 0432 40       		.byte	0x40
 767 0433 0B       		.uleb128 0xb
 768 0434 44060000 		.4byte	.LASF69
 769 0438 0A       		.byte	0xa
 770 0439 D2       		.byte	0xd2
 771 043a 7F060000 		.4byte	0x67f
 772 043e 43       		.byte	0x43
 773 043f 12       		.uleb128 0x12
 774 0440 5F6C6200 		.ascii	"_lb\000"
 775 0444 0A       		.byte	0xa
 776 0445 D5       		.byte	0xd5
 777 0446 3F030000 		.4byte	0x33f
 778 044a 44       		.byte	0x44
 779 044b 0B       		.uleb128 0xb
 780 044c 39050000 		.4byte	.LASF70
 781 0450 0A       		.byte	0xa
 782 0451 D8       		.byte	0xd8
 783 0452 25000000 		.4byte	0x25
 784 0456 4C       		.byte	0x4c
 785 0457 0B       		.uleb128 0xb
 786 0458 98010000 		.4byte	.LASF71
 787 045c 0A       		.byte	0xa
 788 045d D9       		.byte	0xd9
 789 045e 1F010000 		.4byte	0x11f
 790 0462 50       		.byte	0x50
 791 0463 0B       		.uleb128 0xb
 792 0464 5E020000 		.4byte	.LASF72
 793 0468 0A       		.byte	0xa
 794 0469 DC       		.byte	0xdc
 795 046a B2040000 		.4byte	0x4b2
 796 046e 54       		.byte	0x54
 797 046f 0B       		.uleb128 0xb
 798 0470 A9020000 		.4byte	.LASF73
 799 0474 0A       		.byte	0xa
 800 0475 E0       		.byte	0xe0
 801 0476 9C010000 		.4byte	0x19c
 802 047a 58       		.byte	0x58
 803 047b 0B       		.uleb128 0xb
 804 047c AC040000 		.4byte	.LASF74
 805 0480 0A       		.byte	0xa
 806 0481 E2       		.byte	0xe2
ARM GAS  /tmp/ccybDQNt.s 			page 18


 807 0482 91010000 		.4byte	0x191
 808 0486 5C       		.byte	0x5c
 809 0487 0B       		.uleb128 0xb
 810 0488 63040000 		.4byte	.LASF75
 811 048c 0A       		.byte	0xa
 812 048d E3       		.byte	0xe3
 813 048e 25000000 		.4byte	0x25
 814 0492 64       		.byte	0x64
 815 0493 00       		.byte	0
 816 0494 17       		.uleb128 0x17
 817 0495 25000000 		.4byte	0x25
 818 0499 B2040000 		.4byte	0x4b2
 819 049d 18       		.uleb128 0x18
 820 049e B2040000 		.4byte	0x4b2
 821 04a2 18       		.uleb128 0x18
 822 04a3 BC000000 		.4byte	0xbc
 823 04a7 18       		.uleb128 0x18
 824 04a8 EF050000 		.4byte	0x5ef
 825 04ac 18       		.uleb128 0x18
 826 04ad 25000000 		.4byte	0x25
 827 04b1 00       		.byte	0
 828 04b2 13       		.uleb128 0x13
 829 04b3 04       		.byte	0x4
 830 04b4 BD040000 		.4byte	0x4bd
 831 04b8 06       		.uleb128 0x6
 832 04b9 B2040000 		.4byte	0x4b2
 833 04bd 19       		.uleb128 0x19
 834 04be EE040000 		.4byte	.LASF76
 835 04c2 2804     		.2byte	0x428
 836 04c4 0A       		.byte	0xa
 837 04c5 3802     		.2byte	0x238
 838 04c7 EF050000 		.4byte	0x5ef
 839 04cb 1A       		.uleb128 0x1a
 840 04cc 2D050000 		.4byte	.LASF77
 841 04d0 0A       		.byte	0xa
 842 04d1 3A02     		.2byte	0x23a
 843 04d3 25000000 		.4byte	0x25
 844 04d7 00       		.byte	0
 845 04d8 1A       		.uleb128 0x1a
 846 04d9 FF050000 		.4byte	.LASF78
 847 04dd 0A       		.byte	0xa
 848 04de 3F02     		.2byte	0x23f
 849 04e0 D6060000 		.4byte	0x6d6
 850 04e4 04       		.byte	0x4
 851 04e5 1A       		.uleb128 0x1a
 852 04e6 36020000 		.4byte	.LASF79
 853 04ea 0A       		.byte	0xa
 854 04eb 3F02     		.2byte	0x23f
 855 04ed D6060000 		.4byte	0x6d6
 856 04f1 08       		.byte	0x8
 857 04f2 1A       		.uleb128 0x1a
 858 04f3 6A050000 		.4byte	.LASF80
 859 04f7 0A       		.byte	0xa
 860 04f8 3F02     		.2byte	0x23f
 861 04fa D6060000 		.4byte	0x6d6
 862 04fe 0C       		.byte	0xc
 863 04ff 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccybDQNt.s 			page 19


 864 0500 C2040000 		.4byte	.LASF81
 865 0504 0A       		.byte	0xa
 866 0505 4102     		.2byte	0x241
 867 0507 25000000 		.4byte	0x25
 868 050b 10       		.byte	0x10
 869 050c 1A       		.uleb128 0x1a
 870 050d 36000000 		.4byte	.LASF82
 871 0511 0A       		.byte	0xa
 872 0512 4202     		.2byte	0x242
 873 0514 B8080000 		.4byte	0x8b8
 874 0518 14       		.byte	0x14
 875 0519 1A       		.uleb128 0x1a
 876 051a CC050000 		.4byte	.LASF83
 877 051e 0A       		.byte	0xa
 878 051f 4402     		.2byte	0x244
 879 0521 25000000 		.4byte	0x25
 880 0525 30       		.byte	0x30
 881 0526 1A       		.uleb128 0x1a
 882 0527 CC040000 		.4byte	.LASF84
 883 052b 0A       		.byte	0xa
 884 052c 4502     		.2byte	0x245
 885 052e 25060000 		.4byte	0x625
 886 0532 34       		.byte	0x34
 887 0533 1A       		.uleb128 0x1a
 888 0534 8B030000 		.4byte	.LASF85
 889 0538 0A       		.byte	0xa
 890 0539 4702     		.2byte	0x247
 891 053b 25000000 		.4byte	0x25
 892 053f 38       		.byte	0x38
 893 0540 1A       		.uleb128 0x1a
 894 0541 DC040000 		.4byte	.LASF86
 895 0545 0A       		.byte	0xa
 896 0546 4902     		.2byte	0x249
 897 0548 D3080000 		.4byte	0x8d3
 898 054c 3C       		.byte	0x3c
 899 054d 1A       		.uleb128 0x1a
 900 054e 8F020000 		.4byte	.LASF87
 901 0552 0A       		.byte	0xa
 902 0553 4C02     		.2byte	0x24c
 903 0555 05020000 		.4byte	0x205
 904 0559 40       		.byte	0x40
 905 055a 1A       		.uleb128 0x1a
 906 055b 5D010000 		.4byte	.LASF88
 907 055f 0A       		.byte	0xa
 908 0560 4D02     		.2byte	0x24d
 909 0562 25000000 		.4byte	0x25
 910 0566 44       		.byte	0x44
 911 0567 1A       		.uleb128 0x1a
 912 0568 BC060000 		.4byte	.LASF89
 913 056c 0A       		.byte	0xa
 914 056d 4E02     		.2byte	0x24e
 915 056f 05020000 		.4byte	0x205
 916 0573 48       		.byte	0x48
 917 0574 1A       		.uleb128 0x1a
 918 0575 6B040000 		.4byte	.LASF90
 919 0579 0A       		.byte	0xa
 920 057a 4F02     		.2byte	0x24f
ARM GAS  /tmp/ccybDQNt.s 			page 20


 921 057c D9080000 		.4byte	0x8d9
 922 0580 4C       		.byte	0x4c
 923 0581 1A       		.uleb128 0x1a
 924 0582 3E020000 		.4byte	.LASF91
 925 0586 0A       		.byte	0xa
 926 0587 5202     		.2byte	0x252
 927 0589 25000000 		.4byte	0x25
 928 058d 50       		.byte	0x50
 929 058e 1A       		.uleb128 0x1a
 930 058f 90010000 		.4byte	.LASF92
 931 0593 0A       		.byte	0xa
 932 0594 5302     		.2byte	0x253
 933 0596 EF050000 		.4byte	0x5ef
 934 059a 54       		.byte	0x54
 935 059b 1A       		.uleb128 0x1a
 936 059c A4020000 		.4byte	.LASF93
 937 05a0 0A       		.byte	0xa
 938 05a1 7602     		.2byte	0x276
 939 05a3 96080000 		.4byte	0x896
 940 05a7 58       		.byte	0x58
 941 05a8 1B       		.uleb128 0x1b
 942 05a9 79030000 		.4byte	.LASF53
 943 05ad 0A       		.byte	0xa
 944 05ae 7A02     		.2byte	0x27a
 945 05b0 22030000 		.4byte	0x322
 946 05b4 4801     		.2byte	0x148
 947 05b6 1B       		.uleb128 0x1b
 948 05b7 41000000 		.4byte	.LASF94
 949 05bb 0A       		.byte	0xa
 950 05bc 7B02     		.2byte	0x27b
 951 05be E4020000 		.4byte	0x2e4
 952 05c2 4C01     		.2byte	0x14c
 953 05c4 1B       		.uleb128 0x1b
 954 05c5 19060000 		.4byte	.LASF95
 955 05c9 0A       		.byte	0xa
 956 05ca 7F02     		.2byte	0x27f
 957 05cc EA080000 		.4byte	0x8ea
 958 05d0 DC02     		.2byte	0x2dc
 959 05d2 1B       		.uleb128 0x1b
 960 05d3 25010000 		.4byte	.LASF96
 961 05d7 0A       		.byte	0xa
 962 05d8 8402     		.2byte	0x284
 963 05da 9B060000 		.4byte	0x69b
 964 05de E002     		.2byte	0x2e0
 965 05e0 1B       		.uleb128 0x1b
 966 05e1 0A010000 		.4byte	.LASF97
 967 05e5 0A       		.byte	0xa
 968 05e6 8502     		.2byte	0x285
 969 05e8 F6080000 		.4byte	0x8f6
 970 05ec EC02     		.2byte	0x2ec
 971 05ee 00       		.byte	0
 972 05ef 13       		.uleb128 0x13
 973 05f0 04       		.byte	0x4
 974 05f1 F5050000 		.4byte	0x5f5
 975 05f5 03       		.uleb128 0x3
 976 05f6 01       		.byte	0x1
 977 05f7 08       		.byte	0x8
ARM GAS  /tmp/ccybDQNt.s 			page 21


 978 05f8 34050000 		.4byte	.LASF98
 979 05fc 06       		.uleb128 0x6
 980 05fd F5050000 		.4byte	0x5f5
 981 0601 13       		.uleb128 0x13
 982 0602 04       		.byte	0x4
 983 0603 94040000 		.4byte	0x494
 984 0607 17       		.uleb128 0x17
 985 0608 25000000 		.4byte	0x25
 986 060c 25060000 		.4byte	0x625
 987 0610 18       		.uleb128 0x18
 988 0611 B2040000 		.4byte	0x4b2
 989 0615 18       		.uleb128 0x18
 990 0616 BC000000 		.4byte	0xbc
 991 061a 18       		.uleb128 0x18
 992 061b 25060000 		.4byte	0x625
 993 061f 18       		.uleb128 0x18
 994 0620 25000000 		.4byte	0x25
 995 0624 00       		.byte	0
 996 0625 13       		.uleb128 0x13
 997 0626 04       		.byte	0x4
 998 0627 FC050000 		.4byte	0x5fc
 999 062b 13       		.uleb128 0x13
 1000 062c 04       		.byte	0x4
 1001 062d 07060000 		.4byte	0x607
 1002 0631 17       		.uleb128 0x17
 1003 0632 2A010000 		.4byte	0x12a
 1004 0636 4F060000 		.4byte	0x64f
 1005 063a 18       		.uleb128 0x18
 1006 063b B2040000 		.4byte	0x4b2
 1007 063f 18       		.uleb128 0x18
 1008 0640 BC000000 		.4byte	0xbc
 1009 0644 18       		.uleb128 0x18
 1010 0645 2A010000 		.4byte	0x12a
 1011 0649 18       		.uleb128 0x18
 1012 064a 25000000 		.4byte	0x25
 1013 064e 00       		.byte	0
 1014 064f 13       		.uleb128 0x13
 1015 0650 04       		.byte	0x4
 1016 0651 31060000 		.4byte	0x631
 1017 0655 17       		.uleb128 0x17
 1018 0656 25000000 		.4byte	0x25
 1019 065a 69060000 		.4byte	0x669
 1020 065e 18       		.uleb128 0x18
 1021 065f B2040000 		.4byte	0x4b2
 1022 0663 18       		.uleb128 0x18
 1023 0664 BC000000 		.4byte	0xbc
 1024 0668 00       		.byte	0
 1025 0669 13       		.uleb128 0x13
 1026 066a 04       		.byte	0x4
 1027 066b 55060000 		.4byte	0x655
 1028 066f 0F       		.uleb128 0xf
 1029 0670 3A000000 		.4byte	0x3a
 1030 0674 7F060000 		.4byte	0x67f
 1031 0678 10       		.uleb128 0x10
 1032 0679 BE000000 		.4byte	0xbe
 1033 067d 02       		.byte	0x2
 1034 067e 00       		.byte	0
ARM GAS  /tmp/ccybDQNt.s 			page 22


 1035 067f 0F       		.uleb128 0xf
 1036 0680 3A000000 		.4byte	0x3a
 1037 0684 8F060000 		.4byte	0x68f
 1038 0688 10       		.uleb128 0x10
 1039 0689 BE000000 		.4byte	0xbe
 1040 068d 00       		.byte	0
 1041 068e 00       		.byte	0
 1042 068f 0C       		.uleb128 0xc
 1043 0690 7E040000 		.4byte	.LASF99
 1044 0694 0A       		.byte	0xa
 1045 0695 1D01     		.2byte	0x11d
 1046 0697 6A030000 		.4byte	0x36a
 1047 069b 1C       		.uleb128 0x1c
 1048 069c F9050000 		.4byte	.LASF100
 1049 06a0 0C       		.byte	0xc
 1050 06a1 0A       		.byte	0xa
 1051 06a2 2101     		.2byte	0x121
 1052 06a4 D0060000 		.4byte	0x6d0
 1053 06a8 1A       		.uleb128 0x1a
 1054 06a9 72050000 		.4byte	.LASF33
 1055 06ad 0A       		.byte	0xa
 1056 06ae 2301     		.2byte	0x123
 1057 06b0 D0060000 		.4byte	0x6d0
 1058 06b4 00       		.byte	0
 1059 06b5 1A       		.uleb128 0x1a
 1060 06b6 64020000 		.4byte	.LASF101
 1061 06ba 0A       		.byte	0xa
 1062 06bb 2401     		.2byte	0x124
 1063 06bd 25000000 		.4byte	0x25
 1064 06c1 04       		.byte	0x4
 1065 06c2 1A       		.uleb128 0x1a
 1066 06c3 19040000 		.4byte	.LASF102
 1067 06c7 0A       		.byte	0xa
 1068 06c8 2501     		.2byte	0x125
 1069 06ca D6060000 		.4byte	0x6d6
 1070 06ce 08       		.byte	0x8
 1071 06cf 00       		.byte	0
 1072 06d0 13       		.uleb128 0x13
 1073 06d1 04       		.byte	0x4
 1074 06d2 9B060000 		.4byte	0x69b
 1075 06d6 13       		.uleb128 0x13
 1076 06d7 04       		.byte	0x4
 1077 06d8 8F060000 		.4byte	0x68f
 1078 06dc 1C       		.uleb128 0x1c
 1079 06dd 2E000000 		.4byte	.LASF103
 1080 06e1 0E       		.byte	0xe
 1081 06e2 0A       		.byte	0xa
 1082 06e3 3D01     		.2byte	0x13d
 1083 06e5 11070000 		.4byte	0x711
 1084 06e9 1A       		.uleb128 0x1a
 1085 06ea F5040000 		.4byte	.LASF104
 1086 06ee 0A       		.byte	0xa
 1087 06ef 3E01     		.2byte	0x13e
 1088 06f1 11070000 		.4byte	0x711
 1089 06f5 00       		.byte	0
 1090 06f6 1A       		.uleb128 0x1a
 1091 06f7 AF020000 		.4byte	.LASF105
ARM GAS  /tmp/ccybDQNt.s 			page 23


 1092 06fb 0A       		.byte	0xa
 1093 06fc 3F01     		.2byte	0x13f
 1094 06fe 11070000 		.4byte	0x711
 1095 0702 06       		.byte	0x6
 1096 0703 1A       		.uleb128 0x1a
 1097 0704 99050000 		.4byte	.LASF106
 1098 0708 0A       		.byte	0xa
 1099 0709 4001     		.2byte	0x140
 1100 070b 53000000 		.4byte	0x53
 1101 070f 0C       		.byte	0xc
 1102 0710 00       		.byte	0
 1103 0711 0F       		.uleb128 0xf
 1104 0712 53000000 		.4byte	0x53
 1105 0716 21070000 		.4byte	0x721
 1106 071a 10       		.uleb128 0x10
 1107 071b BE000000 		.4byte	0xbe
 1108 071f 02       		.byte	0x2
 1109 0720 00       		.byte	0
 1110 0721 1D       		.uleb128 0x1d
 1111 0722 D0       		.byte	0xd0
 1112 0723 0A       		.byte	0xa
 1113 0724 5702     		.2byte	0x257
 1114 0726 22080000 		.4byte	0x822
 1115 072a 1A       		.uleb128 0x1a
 1116 072b E7050000 		.4byte	.LASF107
 1117 072f 0A       		.byte	0xa
 1118 0730 5902     		.2byte	0x259
 1119 0732 2C000000 		.4byte	0x2c
 1120 0736 00       		.byte	0
 1121 0737 1A       		.uleb128 0x1a
 1122 0738 78050000 		.4byte	.LASF108
 1123 073c 0A       		.byte	0xa
 1124 073d 5A02     		.2byte	0x25a
 1125 073f EF050000 		.4byte	0x5ef
 1126 0743 04       		.byte	0x4
 1127 0744 1A       		.uleb128 0x1a
 1128 0745 82020000 		.4byte	.LASF109
 1129 0749 0A       		.byte	0xa
 1130 074a 5B02     		.2byte	0x25b
 1131 074c 22080000 		.4byte	0x822
 1132 0750 08       		.byte	0x8
 1133 0751 1A       		.uleb128 0x1a
 1134 0752 91060000 		.4byte	.LASF110
 1135 0756 0A       		.byte	0xa
 1136 0757 5C02     		.2byte	0x25c
 1137 0759 1B020000 		.4byte	0x21b
 1138 075d 24       		.byte	0x24
 1139 075e 1A       		.uleb128 0x1a
 1140 075f 96030000 		.4byte	.LASF111
 1141 0763 0A       		.byte	0xa
 1142 0764 5D02     		.2byte	0x25d
 1143 0766 25000000 		.4byte	0x25
 1144 076a 48       		.byte	0x48
 1145 076b 1A       		.uleb128 0x1a
 1146 076c 6B020000 		.4byte	.LASF112
 1147 0770 0A       		.byte	0xa
 1148 0771 5E02     		.2byte	0x25e
ARM GAS  /tmp/ccybDQNt.s 			page 24


 1149 0773 85000000 		.4byte	0x85
 1150 0777 50       		.byte	0x50
 1151 0778 1A       		.uleb128 0x1a
 1152 0779 A9060000 		.4byte	.LASF113
 1153 077d 0A       		.byte	0xa
 1154 077e 5F02     		.2byte	0x25f
 1155 0780 DC060000 		.4byte	0x6dc
 1156 0784 58       		.byte	0x58
 1157 0785 1A       		.uleb128 0x1a
 1158 0786 B5040000 		.4byte	.LASF114
 1159 078a 0A       		.byte	0xa
 1160 078b 6002     		.2byte	0x260
 1161 078d 91010000 		.4byte	0x191
 1162 0791 68       		.byte	0x68
 1163 0792 1A       		.uleb128 0x1a
 1164 0793 AE060000 		.4byte	.LASF115
 1165 0797 0A       		.byte	0xa
 1166 0798 6102     		.2byte	0x261
 1167 079a 91010000 		.4byte	0x191
 1168 079e 70       		.byte	0x70
 1169 079f 1A       		.uleb128 0x1a
 1170 07a0 B4000000 		.4byte	.LASF116
 1171 07a4 0A       		.byte	0xa
 1172 07a5 6202     		.2byte	0x262
 1173 07a7 91010000 		.4byte	0x191
 1174 07ab 78       		.byte	0x78
 1175 07ac 1A       		.uleb128 0x1a
 1176 07ad 0F060000 		.4byte	.LASF117
 1177 07b1 0A       		.byte	0xa
 1178 07b2 6302     		.2byte	0x263
 1179 07b4 32080000 		.4byte	0x832
 1180 07b8 80       		.byte	0x80
 1181 07b9 1A       		.uleb128 0x1a
 1182 07ba 76020000 		.4byte	.LASF118
 1183 07be 0A       		.byte	0xa
 1184 07bf 6402     		.2byte	0x264
 1185 07c1 42080000 		.4byte	0x842
 1186 07c5 88       		.byte	0x88
 1187 07c6 1A       		.uleb128 0x1a
 1188 07c7 A6050000 		.4byte	.LASF119
 1189 07cb 0A       		.byte	0xa
 1190 07cc 6502     		.2byte	0x265
 1191 07ce 25000000 		.4byte	0x25
 1192 07d2 A0       		.byte	0xa0
 1193 07d3 1A       		.uleb128 0x1a
 1194 07d4 B1010000 		.4byte	.LASF120
 1195 07d8 0A       		.byte	0xa
 1196 07d9 6602     		.2byte	0x266
 1197 07db 91010000 		.4byte	0x191
 1198 07df A4       		.byte	0xa4
 1199 07e0 1A       		.uleb128 0x1a
 1200 07e1 A5000000 		.4byte	.LASF121
 1201 07e5 0A       		.byte	0xa
 1202 07e6 6702     		.2byte	0x267
 1203 07e8 91010000 		.4byte	0x191
 1204 07ec AC       		.byte	0xac
 1205 07ed 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccybDQNt.s 			page 25


 1206 07ee A0010000 		.4byte	.LASF122
 1207 07f2 0A       		.byte	0xa
 1208 07f3 6802     		.2byte	0x268
 1209 07f5 91010000 		.4byte	0x191
 1210 07f9 B4       		.byte	0xb4
 1211 07fa 1A       		.uleb128 0x1a
 1212 07fb 4A000000 		.4byte	.LASF123
 1213 07ff 0A       		.byte	0xa
 1214 0800 6902     		.2byte	0x269
 1215 0802 91010000 		.4byte	0x191
 1216 0806 BC       		.byte	0xbc
 1217 0807 1A       		.uleb128 0x1a
 1218 0808 59000000 		.4byte	.LASF124
 1219 080c 0A       		.byte	0xa
 1220 080d 6A02     		.2byte	0x26a
 1221 080f 91010000 		.4byte	0x191
 1222 0813 C4       		.byte	0xc4
 1223 0814 1A       		.uleb128 0x1a
 1224 0815 40040000 		.4byte	.LASF125
 1225 0819 0A       		.byte	0xa
 1226 081a 6B02     		.2byte	0x26b
 1227 081c 25000000 		.4byte	0x25
 1228 0820 CC       		.byte	0xcc
 1229 0821 00       		.byte	0
 1230 0822 0F       		.uleb128 0xf
 1231 0823 F5050000 		.4byte	0x5f5
 1232 0827 32080000 		.4byte	0x832
 1233 082b 10       		.uleb128 0x10
 1234 082c BE000000 		.4byte	0xbe
 1235 0830 19       		.byte	0x19
 1236 0831 00       		.byte	0
 1237 0832 0F       		.uleb128 0xf
 1238 0833 F5050000 		.4byte	0x5f5
 1239 0837 42080000 		.4byte	0x842
 1240 083b 10       		.uleb128 0x10
 1241 083c BE000000 		.4byte	0xbe
 1242 0840 07       		.byte	0x7
 1243 0841 00       		.byte	0
 1244 0842 0F       		.uleb128 0xf
 1245 0843 F5050000 		.4byte	0x5f5
 1246 0847 52080000 		.4byte	0x852
 1247 084b 10       		.uleb128 0x10
 1248 084c BE000000 		.4byte	0xbe
 1249 0850 17       		.byte	0x17
 1250 0851 00       		.byte	0
 1251 0852 1D       		.uleb128 0x1d
 1252 0853 F0       		.byte	0xf0
 1253 0854 0A       		.byte	0xa
 1254 0855 7002     		.2byte	0x270
 1255 0857 76080000 		.4byte	0x876
 1256 085b 1A       		.uleb128 0x1a
 1257 085c 9D020000 		.4byte	.LASF126
 1258 0860 0A       		.byte	0xa
 1259 0861 7302     		.2byte	0x273
 1260 0863 76080000 		.4byte	0x876
 1261 0867 00       		.byte	0
 1262 0868 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccybDQNt.s 			page 26


 1263 0869 06060000 		.4byte	.LASF127
 1264 086d 0A       		.byte	0xa
 1265 086e 7402     		.2byte	0x274
 1266 0870 86080000 		.4byte	0x886
 1267 0874 78       		.byte	0x78
 1268 0875 00       		.byte	0
 1269 0876 0F       		.uleb128 0xf
 1270 0877 64030000 		.4byte	0x364
 1271 087b 86080000 		.4byte	0x886
 1272 087f 10       		.uleb128 0x10
 1273 0880 BE000000 		.4byte	0xbe
 1274 0884 1D       		.byte	0x1d
 1275 0885 00       		.byte	0
 1276 0886 0F       		.uleb128 0xf
 1277 0887 2C000000 		.4byte	0x2c
 1278 088b 96080000 		.4byte	0x896
 1279 088f 10       		.uleb128 0x10
 1280 0890 BE000000 		.4byte	0xbe
 1281 0894 1D       		.byte	0x1d
 1282 0895 00       		.byte	0
 1283 0896 1E       		.uleb128 0x1e
 1284 0897 F0       		.byte	0xf0
 1285 0898 0A       		.byte	0xa
 1286 0899 5502     		.2byte	0x255
 1287 089b B8080000 		.4byte	0x8b8
 1288 089f 1F       		.uleb128 0x1f
 1289 08a0 EE040000 		.4byte	.LASF76
 1290 08a4 0A       		.byte	0xa
 1291 08a5 6C02     		.2byte	0x26c
 1292 08a7 21070000 		.4byte	0x721
 1293 08ab 1F       		.uleb128 0x1f
 1294 08ac 4A060000 		.4byte	.LASF128
 1295 08b0 0A       		.byte	0xa
 1296 08b1 7502     		.2byte	0x275
 1297 08b3 52080000 		.4byte	0x852
 1298 08b7 00       		.byte	0
 1299 08b8 0F       		.uleb128 0xf
 1300 08b9 F5050000 		.4byte	0x5f5
 1301 08bd C8080000 		.4byte	0x8c8
 1302 08c1 10       		.uleb128 0x10
 1303 08c2 BE000000 		.4byte	0xbe
 1304 08c6 18       		.byte	0x18
 1305 08c7 00       		.byte	0
 1306 08c8 20       		.uleb128 0x20
 1307 08c9 D3080000 		.4byte	0x8d3
 1308 08cd 18       		.uleb128 0x18
 1309 08ce B2040000 		.4byte	0x4b2
 1310 08d2 00       		.byte	0
 1311 08d3 13       		.uleb128 0x13
 1312 08d4 04       		.byte	0x4
 1313 08d5 C8080000 		.4byte	0x8c8
 1314 08d9 13       		.uleb128 0x13
 1315 08da 04       		.byte	0x4
 1316 08db 05020000 		.4byte	0x205
 1317 08df 20       		.uleb128 0x20
 1318 08e0 EA080000 		.4byte	0x8ea
 1319 08e4 18       		.uleb128 0x18
ARM GAS  /tmp/ccybDQNt.s 			page 27


 1320 08e5 25000000 		.4byte	0x25
 1321 08e9 00       		.byte	0
 1322 08ea 13       		.uleb128 0x13
 1323 08eb 04       		.byte	0x4
 1324 08ec F0080000 		.4byte	0x8f0
 1325 08f0 13       		.uleb128 0x13
 1326 08f1 04       		.byte	0x4
 1327 08f2 DF080000 		.4byte	0x8df
 1328 08f6 0F       		.uleb128 0xf
 1329 08f7 8F060000 		.4byte	0x68f
 1330 08fb 06090000 		.4byte	0x906
 1331 08ff 10       		.uleb128 0x10
 1332 0900 BE000000 		.4byte	0xbe
 1333 0904 02       		.byte	0x2
 1334 0905 00       		.byte	0
 1335 0906 08       		.uleb128 0x8
 1336 0907 E8010000 		.4byte	.LASF129
 1337 090b 0A       		.byte	0xa
 1338 090c FD02     		.2byte	0x2fd
 1339 090e B2040000 		.4byte	0x4b2
 1340 0912 08       		.uleb128 0x8
 1341 0913 B9050000 		.4byte	.LASF130
 1342 0917 0A       		.byte	0xa
 1343 0918 FE02     		.2byte	0x2fe
 1344 091a B8040000 		.4byte	0x4b8
 1345 091e 09       		.uleb128 0x9
 1346 091f 81030000 		.4byte	.LASF131
 1347 0923 0B       		.byte	0xb
 1348 0924 5F       		.byte	0x5f
 1349 0925 EF050000 		.4byte	0x5ef
 1350 0929 09       		.uleb128 0x9
 1351 092a C3030000 		.4byte	.LASF132
 1352 092e 0C       		.byte	0xc
 1353 092f 8F       		.byte	0x8f
 1354 0930 3B090000 		.4byte	0x93b
 1355 0934 03       		.uleb128 0x3
 1356 0935 01       		.byte	0x1
 1357 0936 02       		.byte	0x2
 1358 0937 FD030000 		.4byte	.LASF133
 1359 093b 05       		.uleb128 0x5
 1360 093c 34090000 		.4byte	0x934
 1361 0940 21       		.uleb128 0x21
 1362 0941 23060000 		.4byte	.LASF134
 1363 0945 0C       		.byte	0xc
 1364 0946 94       		.byte	0x94
 1365 0947 B2000000 		.4byte	0xb2
 1366 094b 05       		.uleb128 0x5
 1367 094c 03       		.byte	0x3
 1368 094d 00000000 		.4byte	cpu_irq_critical_section_counter
 1369 0951 21       		.uleb128 0x21
 1370 0952 6A000000 		.4byte	.LASF135
 1371 0956 0C       		.byte	0xc
 1372 0957 95       		.byte	0x95
 1373 0958 3B090000 		.4byte	0x93b
 1374 095c 05       		.uleb128 0x5
 1375 095d 03       		.byte	0x3
 1376 095e 00000000 		.4byte	cpu_irq_prev_interrupt_state
ARM GAS  /tmp/ccybDQNt.s 			page 28


 1377 0962 03       		.uleb128 0x3
 1378 0963 04       		.byte	0x4
 1379 0964 04       		.byte	0x4
 1380 0965 B5030000 		.4byte	.LASF136
 1381 0969 03       		.uleb128 0x3
 1382 096a 08       		.byte	0x8
 1383 096b 04       		.byte	0x4
 1384 096c 89010000 		.4byte	.LASF137
 1385 0970 22       		.uleb128 0x22
 1386 0971 90040000 		.4byte	.LASF140
 1387 0975 01       		.byte	0x1
 1388 0976 9E       		.byte	0x9e
 1389 0977 A7000000 		.4byte	0xa7
 1390 097b 00000000 		.4byte	.LFB147
 1391 097f 18000000 		.4byte	.LFE147-.LFB147
 1392 0983 01       		.uleb128 0x1
 1393 0984 9C       		.byte	0x9c
 1394 0985 A8090000 		.4byte	0x9a8
 1395 0989 23       		.uleb128 0x23
 1396 098a 87000000 		.4byte	.LASF138
 1397 098e 01       		.byte	0x1
 1398 098f 9E       		.byte	0x9e
 1399 0990 A8090000 		.4byte	0x9a8
 1400 0994 00000000 		.4byte	.LLST4
 1401 0998 23       		.uleb128 0x23
 1402 0999 02010000 		.4byte	.LASF139
 1403 099d 01       		.byte	0x1
 1404 099e 9E       		.byte	0x9e
 1405 099f A7000000 		.4byte	0xa7
 1406 09a3 21000000 		.4byte	.LLST5
 1407 09a7 00       		.byte	0
 1408 09a8 13       		.uleb128 0x13
 1409 09a9 04       		.byte	0x4
 1410 09aa 09010000 		.4byte	0x109
 1411 09ae 22       		.uleb128 0x22
 1412 09af 4C010000 		.4byte	.LASF141
 1413 09b3 01       		.byte	0x1
 1414 09b4 91       		.byte	0x91
 1415 09b5 A7000000 		.4byte	0xa7
 1416 09b9 00000000 		.4byte	.LFB146
 1417 09bd 04000000 		.4byte	.LFE146-.LFB146
 1418 09c1 01       		.uleb128 0x1
 1419 09c2 9C       		.byte	0x9c
 1420 09c3 D7090000 		.4byte	0x9d7
 1421 09c7 23       		.uleb128 0x23
 1422 09c8 87000000 		.4byte	.LASF138
 1423 09cc 01       		.byte	0x1
 1424 09cd 91       		.byte	0x91
 1425 09ce A8090000 		.4byte	0x9a8
 1426 09d2 42000000 		.4byte	.LLST3
 1427 09d6 00       		.byte	0
 1428 09d7 24       		.uleb128 0x24
 1429 09d8 D7030000 		.4byte	.LASF142
 1430 09dc 01       		.byte	0x1
 1431 09dd 85       		.byte	0x85
 1432 09de 00000000 		.4byte	.LFB145
 1433 09e2 18000000 		.4byte	.LFE145-.LFB145
ARM GAS  /tmp/ccybDQNt.s 			page 29


 1434 09e6 01       		.uleb128 0x1
 1435 09e7 9C       		.byte	0x9c
 1436 09e8 FA090000 		.4byte	0x9fa
 1437 09ec 25       		.uleb128 0x25
 1438 09ed 87000000 		.4byte	.LASF138
 1439 09f1 01       		.byte	0x1
 1440 09f2 85       		.byte	0x85
 1441 09f3 A8090000 		.4byte	0x9a8
 1442 09f7 01       		.uleb128 0x1
 1443 09f8 50       		.byte	0x50
 1444 09f9 00       		.byte	0
 1445 09fa 24       		.uleb128 0x24
 1446 09fb CA060000 		.4byte	.LASF143
 1447 09ff 01       		.byte	0x1
 1448 0a00 7D       		.byte	0x7d
 1449 0a01 00000000 		.4byte	.LFB144
 1450 0a05 08000000 		.4byte	.LFE144-.LFB144
 1451 0a09 01       		.uleb128 0x1
 1452 0a0a 9C       		.byte	0x9c
 1453 0a0b 1D0A0000 		.4byte	0xa1d
 1454 0a0f 25       		.uleb128 0x25
 1455 0a10 87000000 		.4byte	.LASF138
 1456 0a14 01       		.byte	0x1
 1457 0a15 7D       		.byte	0x7d
 1458 0a16 A8090000 		.4byte	0x9a8
 1459 0a1a 01       		.uleb128 0x1
 1460 0a1b 50       		.byte	0x50
 1461 0a1c 00       		.byte	0
 1462 0a1d 24       		.uleb128 0x24
 1463 0a1e 67010000 		.4byte	.LASF144
 1464 0a22 01       		.byte	0x1
 1465 0a23 6E       		.byte	0x6e
 1466 0a24 00000000 		.4byte	.LFB143
 1467 0a28 0A000000 		.4byte	.LFE143-.LFB143
 1468 0a2c 01       		.uleb128 0x1
 1469 0a2d 9C       		.byte	0x9c
 1470 0a2e 690A0000 		.4byte	0xa69
 1471 0a32 25       		.uleb128 0x25
 1472 0a33 87000000 		.4byte	.LASF138
 1473 0a37 01       		.byte	0x1
 1474 0a38 6E       		.byte	0x6e
 1475 0a39 A8090000 		.4byte	0x9a8
 1476 0a3d 01       		.uleb128 0x1
 1477 0a3e 50       		.byte	0x50
 1478 0a3f 25       		.uleb128 0x25
 1479 0a40 BB030000 		.4byte	.LASF145
 1480 0a44 01       		.byte	0x1
 1481 0a45 6E       		.byte	0x6e
 1482 0a46 A7000000 		.4byte	0xa7
 1483 0a4a 01       		.uleb128 0x1
 1484 0a4b 51       		.byte	0x51
 1485 0a4c 23       		.uleb128 0x23
 1486 0a4d 8E050000 		.4byte	.LASF146
 1487 0a51 01       		.byte	0x1
 1488 0a52 6E       		.byte	0x6e
 1489 0a53 8C000000 		.4byte	0x8c
 1490 0a57 63000000 		.4byte	.LLST2
ARM GAS  /tmp/ccybDQNt.s 			page 30


 1491 0a5b 25       		.uleb128 0x25
 1492 0a5c 9C000000 		.4byte	.LASF147
 1493 0a60 01       		.byte	0x1
 1494 0a61 6F       		.byte	0x6f
 1495 0a62 8C000000 		.4byte	0x8c
 1496 0a66 01       		.uleb128 0x1
 1497 0a67 53       		.byte	0x53
 1498 0a68 00       		.byte	0
 1499 0a69 26       		.uleb128 0x26
 1500 0a6a F4010000 		.4byte	.LASF148
 1501 0a6e 01       		.byte	0x1
 1502 0a6f 58       		.byte	0x58
 1503 0a70 A7000000 		.4byte	0xa7
 1504 0a74 00000000 		.4byte	.LFB142
 1505 0a78 28000000 		.4byte	.LFE142-.LFB142
 1506 0a7c 01       		.uleb128 0x1
 1507 0a7d 9C       		.byte	0x9c
 1508 0a7e 23       		.uleb128 0x23
 1509 0a7f B3050000 		.4byte	.LASF149
 1510 0a83 01       		.byte	0x1
 1511 0a84 58       		.byte	0x58
 1512 0a85 A7000000 		.4byte	0xa7
 1513 0a89 84000000 		.4byte	.LLST0
 1514 0a8d 23       		.uleb128 0x23
 1515 0a8e 02010000 		.4byte	.LASF139
 1516 0a92 01       		.byte	0x1
 1517 0a93 58       		.byte	0x58
 1518 0a94 A7000000 		.4byte	0xa7
 1519 0a98 BE000000 		.4byte	.LLST1
 1520 0a9c 27       		.uleb128 0x27
 1521 0a9d 6D617800 		.ascii	"max\000"
 1522 0aa1 01       		.byte	0x1
 1523 0aa2 5A       		.byte	0x5a
 1524 0aa3 A7000000 		.4byte	0xa7
 1525 0aa7 07       		.uleb128 0x7
 1526 0aa8 71       		.byte	0x71
 1527 0aa9 00       		.sleb128 0
 1528 0aaa 0A       		.byte	0xa
 1529 0aab FF0F     		.2byte	0xfff
 1530 0aad 1E       		.byte	0x1e
 1531 0aae 9F       		.byte	0x9f
 1532 0aaf 27       		.uleb128 0x27
 1533 0ab0 6D696E00 		.ascii	"min\000"
 1534 0ab4 01       		.byte	0x1
 1535 0ab5 5A       		.byte	0x5a
 1536 0ab6 A7000000 		.4byte	0xa7
 1537 0aba 01       		.uleb128 0x1
 1538 0abb 51       		.byte	0x51
 1539 0abc 00       		.byte	0
 1540 0abd 00       		.byte	0
 1541              		.section	.debug_abbrev,"",%progbits
 1542              	.Ldebug_abbrev0:
 1543 0000 01       		.uleb128 0x1
 1544 0001 11       		.uleb128 0x11
 1545 0002 01       		.byte	0x1
 1546 0003 25       		.uleb128 0x25
 1547 0004 0E       		.uleb128 0xe
ARM GAS  /tmp/ccybDQNt.s 			page 31


 1548 0005 13       		.uleb128 0x13
 1549 0006 0B       		.uleb128 0xb
 1550 0007 03       		.uleb128 0x3
 1551 0008 0E       		.uleb128 0xe
 1552 0009 1B       		.uleb128 0x1b
 1553 000a 0E       		.uleb128 0xe
 1554 000b 55       		.uleb128 0x55
 1555 000c 17       		.uleb128 0x17
 1556 000d 11       		.uleb128 0x11
 1557 000e 01       		.uleb128 0x1
 1558 000f 10       		.uleb128 0x10
 1559 0010 17       		.uleb128 0x17
 1560 0011 00       		.byte	0
 1561 0012 00       		.byte	0
 1562 0013 02       		.uleb128 0x2
 1563 0014 24       		.uleb128 0x24
 1564 0015 00       		.byte	0
 1565 0016 0B       		.uleb128 0xb
 1566 0017 0B       		.uleb128 0xb
 1567 0018 3E       		.uleb128 0x3e
 1568 0019 0B       		.uleb128 0xb
 1569 001a 03       		.uleb128 0x3
 1570 001b 08       		.uleb128 0x8
 1571 001c 00       		.byte	0
 1572 001d 00       		.byte	0
 1573 001e 03       		.uleb128 0x3
 1574 001f 24       		.uleb128 0x24
 1575 0020 00       		.byte	0
 1576 0021 0B       		.uleb128 0xb
 1577 0022 0B       		.uleb128 0xb
 1578 0023 3E       		.uleb128 0x3e
 1579 0024 0B       		.uleb128 0xb
 1580 0025 03       		.uleb128 0x3
 1581 0026 0E       		.uleb128 0xe
 1582 0027 00       		.byte	0
 1583 0028 00       		.byte	0
 1584 0029 04       		.uleb128 0x4
 1585 002a 16       		.uleb128 0x16
 1586 002b 00       		.byte	0
 1587 002c 03       		.uleb128 0x3
 1588 002d 0E       		.uleb128 0xe
 1589 002e 3A       		.uleb128 0x3a
 1590 002f 0B       		.uleb128 0xb
 1591 0030 3B       		.uleb128 0x3b
 1592 0031 0B       		.uleb128 0xb
 1593 0032 49       		.uleb128 0x49
 1594 0033 13       		.uleb128 0x13
 1595 0034 00       		.byte	0
 1596 0035 00       		.byte	0
 1597 0036 05       		.uleb128 0x5
 1598 0037 35       		.uleb128 0x35
 1599 0038 00       		.byte	0
 1600 0039 49       		.uleb128 0x49
 1601 003a 13       		.uleb128 0x13
 1602 003b 00       		.byte	0
 1603 003c 00       		.byte	0
 1604 003d 06       		.uleb128 0x6
ARM GAS  /tmp/ccybDQNt.s 			page 32


 1605 003e 26       		.uleb128 0x26
 1606 003f 00       		.byte	0
 1607 0040 49       		.uleb128 0x49
 1608 0041 13       		.uleb128 0x13
 1609 0042 00       		.byte	0
 1610 0043 00       		.byte	0
 1611 0044 07       		.uleb128 0x7
 1612 0045 0F       		.uleb128 0xf
 1613 0046 00       		.byte	0
 1614 0047 0B       		.uleb128 0xb
 1615 0048 0B       		.uleb128 0xb
 1616 0049 00       		.byte	0
 1617 004a 00       		.byte	0
 1618 004b 08       		.uleb128 0x8
 1619 004c 34       		.uleb128 0x34
 1620 004d 00       		.byte	0
 1621 004e 03       		.uleb128 0x3
 1622 004f 0E       		.uleb128 0xe
 1623 0050 3A       		.uleb128 0x3a
 1624 0051 0B       		.uleb128 0xb
 1625 0052 3B       		.uleb128 0x3b
 1626 0053 05       		.uleb128 0x5
 1627 0054 49       		.uleb128 0x49
 1628 0055 13       		.uleb128 0x13
 1629 0056 3F       		.uleb128 0x3f
 1630 0057 19       		.uleb128 0x19
 1631 0058 3C       		.uleb128 0x3c
 1632 0059 19       		.uleb128 0x19
 1633 005a 00       		.byte	0
 1634 005b 00       		.byte	0
 1635 005c 09       		.uleb128 0x9
 1636 005d 34       		.uleb128 0x34
 1637 005e 00       		.byte	0
 1638 005f 03       		.uleb128 0x3
 1639 0060 0E       		.uleb128 0xe
 1640 0061 3A       		.uleb128 0x3a
 1641 0062 0B       		.uleb128 0xb
 1642 0063 3B       		.uleb128 0x3b
 1643 0064 0B       		.uleb128 0xb
 1644 0065 49       		.uleb128 0x49
 1645 0066 13       		.uleb128 0x13
 1646 0067 3F       		.uleb128 0x3f
 1647 0068 19       		.uleb128 0x19
 1648 0069 3C       		.uleb128 0x3c
 1649 006a 19       		.uleb128 0x19
 1650 006b 00       		.byte	0
 1651 006c 00       		.byte	0
 1652 006d 0A       		.uleb128 0xa
 1653 006e 13       		.uleb128 0x13
 1654 006f 01       		.byte	0x1
 1655 0070 0B       		.uleb128 0xb
 1656 0071 0B       		.uleb128 0xb
 1657 0072 3A       		.uleb128 0x3a
 1658 0073 0B       		.uleb128 0xb
 1659 0074 3B       		.uleb128 0x3b
 1660 0075 0B       		.uleb128 0xb
 1661 0076 01       		.uleb128 0x1
ARM GAS  /tmp/ccybDQNt.s 			page 33


 1662 0077 13       		.uleb128 0x13
 1663 0078 00       		.byte	0
 1664 0079 00       		.byte	0
 1665 007a 0B       		.uleb128 0xb
 1666 007b 0D       		.uleb128 0xd
 1667 007c 00       		.byte	0
 1668 007d 03       		.uleb128 0x3
 1669 007e 0E       		.uleb128 0xe
 1670 007f 3A       		.uleb128 0x3a
 1671 0080 0B       		.uleb128 0xb
 1672 0081 3B       		.uleb128 0x3b
 1673 0082 0B       		.uleb128 0xb
 1674 0083 49       		.uleb128 0x49
 1675 0084 13       		.uleb128 0x13
 1676 0085 38       		.uleb128 0x38
 1677 0086 0B       		.uleb128 0xb
 1678 0087 00       		.byte	0
 1679 0088 00       		.byte	0
 1680 0089 0C       		.uleb128 0xc
 1681 008a 16       		.uleb128 0x16
 1682 008b 00       		.byte	0
 1683 008c 03       		.uleb128 0x3
 1684 008d 0E       		.uleb128 0xe
 1685 008e 3A       		.uleb128 0x3a
 1686 008f 0B       		.uleb128 0xb
 1687 0090 3B       		.uleb128 0x3b
 1688 0091 05       		.uleb128 0x5
 1689 0092 49       		.uleb128 0x49
 1690 0093 13       		.uleb128 0x13
 1691 0094 00       		.byte	0
 1692 0095 00       		.byte	0
 1693 0096 0D       		.uleb128 0xd
 1694 0097 17       		.uleb128 0x17
 1695 0098 01       		.byte	0x1
 1696 0099 0B       		.uleb128 0xb
 1697 009a 0B       		.uleb128 0xb
 1698 009b 3A       		.uleb128 0x3a
 1699 009c 0B       		.uleb128 0xb
 1700 009d 3B       		.uleb128 0x3b
 1701 009e 0B       		.uleb128 0xb
 1702 009f 01       		.uleb128 0x1
 1703 00a0 13       		.uleb128 0x13
 1704 00a1 00       		.byte	0
 1705 00a2 00       		.byte	0
 1706 00a3 0E       		.uleb128 0xe
 1707 00a4 0D       		.uleb128 0xd
 1708 00a5 00       		.byte	0
 1709 00a6 03       		.uleb128 0x3
 1710 00a7 0E       		.uleb128 0xe
 1711 00a8 3A       		.uleb128 0x3a
 1712 00a9 0B       		.uleb128 0xb
 1713 00aa 3B       		.uleb128 0x3b
 1714 00ab 0B       		.uleb128 0xb
 1715 00ac 49       		.uleb128 0x49
 1716 00ad 13       		.uleb128 0x13
 1717 00ae 00       		.byte	0
 1718 00af 00       		.byte	0
ARM GAS  /tmp/ccybDQNt.s 			page 34


 1719 00b0 0F       		.uleb128 0xf
 1720 00b1 01       		.uleb128 0x1
 1721 00b2 01       		.byte	0x1
 1722 00b3 49       		.uleb128 0x49
 1723 00b4 13       		.uleb128 0x13
 1724 00b5 01       		.uleb128 0x1
 1725 00b6 13       		.uleb128 0x13
 1726 00b7 00       		.byte	0
 1727 00b8 00       		.byte	0
 1728 00b9 10       		.uleb128 0x10
 1729 00ba 21       		.uleb128 0x21
 1730 00bb 00       		.byte	0
 1731 00bc 49       		.uleb128 0x49
 1732 00bd 13       		.uleb128 0x13
 1733 00be 2F       		.uleb128 0x2f
 1734 00bf 0B       		.uleb128 0xb
 1735 00c0 00       		.byte	0
 1736 00c1 00       		.byte	0
 1737 00c2 11       		.uleb128 0x11
 1738 00c3 13       		.uleb128 0x13
 1739 00c4 01       		.byte	0x1
 1740 00c5 03       		.uleb128 0x3
 1741 00c6 0E       		.uleb128 0xe
 1742 00c7 0B       		.uleb128 0xb
 1743 00c8 0B       		.uleb128 0xb
 1744 00c9 3A       		.uleb128 0x3a
 1745 00ca 0B       		.uleb128 0xb
 1746 00cb 3B       		.uleb128 0x3b
 1747 00cc 0B       		.uleb128 0xb
 1748 00cd 01       		.uleb128 0x1
 1749 00ce 13       		.uleb128 0x13
 1750 00cf 00       		.byte	0
 1751 00d0 00       		.byte	0
 1752 00d1 12       		.uleb128 0x12
 1753 00d2 0D       		.uleb128 0xd
 1754 00d3 00       		.byte	0
 1755 00d4 03       		.uleb128 0x3
 1756 00d5 08       		.uleb128 0x8
 1757 00d6 3A       		.uleb128 0x3a
 1758 00d7 0B       		.uleb128 0xb
 1759 00d8 3B       		.uleb128 0x3b
 1760 00d9 0B       		.uleb128 0xb
 1761 00da 49       		.uleb128 0x49
 1762 00db 13       		.uleb128 0x13
 1763 00dc 38       		.uleb128 0x38
 1764 00dd 0B       		.uleb128 0xb
 1765 00de 00       		.byte	0
 1766 00df 00       		.byte	0
 1767 00e0 13       		.uleb128 0x13
 1768 00e1 0F       		.uleb128 0xf
 1769 00e2 00       		.byte	0
 1770 00e3 0B       		.uleb128 0xb
 1771 00e4 0B       		.uleb128 0xb
 1772 00e5 49       		.uleb128 0x49
 1773 00e6 13       		.uleb128 0x13
 1774 00e7 00       		.byte	0
 1775 00e8 00       		.byte	0
ARM GAS  /tmp/ccybDQNt.s 			page 35


 1776 00e9 14       		.uleb128 0x14
 1777 00ea 13       		.uleb128 0x13
 1778 00eb 01       		.byte	0x1
 1779 00ec 03       		.uleb128 0x3
 1780 00ed 0E       		.uleb128 0xe
 1781 00ee 0B       		.uleb128 0xb
 1782 00ef 05       		.uleb128 0x5
 1783 00f0 3A       		.uleb128 0x3a
 1784 00f1 0B       		.uleb128 0xb
 1785 00f2 3B       		.uleb128 0x3b
 1786 00f3 0B       		.uleb128 0xb
 1787 00f4 01       		.uleb128 0x1
 1788 00f5 13       		.uleb128 0x13
 1789 00f6 00       		.byte	0
 1790 00f7 00       		.byte	0
 1791 00f8 15       		.uleb128 0x15
 1792 00f9 0D       		.uleb128 0xd
 1793 00fa 00       		.byte	0
 1794 00fb 03       		.uleb128 0x3
 1795 00fc 0E       		.uleb128 0xe
 1796 00fd 3A       		.uleb128 0x3a
 1797 00fe 0B       		.uleb128 0xb
 1798 00ff 3B       		.uleb128 0x3b
 1799 0100 0B       		.uleb128 0xb
 1800 0101 49       		.uleb128 0x49
 1801 0102 13       		.uleb128 0x13
 1802 0103 38       		.uleb128 0x38
 1803 0104 05       		.uleb128 0x5
 1804 0105 00       		.byte	0
 1805 0106 00       		.byte	0
 1806 0107 16       		.uleb128 0x16
 1807 0108 15       		.uleb128 0x15
 1808 0109 00       		.byte	0
 1809 010a 27       		.uleb128 0x27
 1810 010b 19       		.uleb128 0x19
 1811 010c 00       		.byte	0
 1812 010d 00       		.byte	0
 1813 010e 17       		.uleb128 0x17
 1814 010f 15       		.uleb128 0x15
 1815 0110 01       		.byte	0x1
 1816 0111 27       		.uleb128 0x27
 1817 0112 19       		.uleb128 0x19
 1818 0113 49       		.uleb128 0x49
 1819 0114 13       		.uleb128 0x13
 1820 0115 01       		.uleb128 0x1
 1821 0116 13       		.uleb128 0x13
 1822 0117 00       		.byte	0
 1823 0118 00       		.byte	0
 1824 0119 18       		.uleb128 0x18
 1825 011a 05       		.uleb128 0x5
 1826 011b 00       		.byte	0
 1827 011c 49       		.uleb128 0x49
 1828 011d 13       		.uleb128 0x13
 1829 011e 00       		.byte	0
 1830 011f 00       		.byte	0
 1831 0120 19       		.uleb128 0x19
 1832 0121 13       		.uleb128 0x13
ARM GAS  /tmp/ccybDQNt.s 			page 36


 1833 0122 01       		.byte	0x1
 1834 0123 03       		.uleb128 0x3
 1835 0124 0E       		.uleb128 0xe
 1836 0125 0B       		.uleb128 0xb
 1837 0126 05       		.uleb128 0x5
 1838 0127 3A       		.uleb128 0x3a
 1839 0128 0B       		.uleb128 0xb
 1840 0129 3B       		.uleb128 0x3b
 1841 012a 05       		.uleb128 0x5
 1842 012b 01       		.uleb128 0x1
 1843 012c 13       		.uleb128 0x13
 1844 012d 00       		.byte	0
 1845 012e 00       		.byte	0
 1846 012f 1A       		.uleb128 0x1a
 1847 0130 0D       		.uleb128 0xd
 1848 0131 00       		.byte	0
 1849 0132 03       		.uleb128 0x3
 1850 0133 0E       		.uleb128 0xe
 1851 0134 3A       		.uleb128 0x3a
 1852 0135 0B       		.uleb128 0xb
 1853 0136 3B       		.uleb128 0x3b
 1854 0137 05       		.uleb128 0x5
 1855 0138 49       		.uleb128 0x49
 1856 0139 13       		.uleb128 0x13
 1857 013a 38       		.uleb128 0x38
 1858 013b 0B       		.uleb128 0xb
 1859 013c 00       		.byte	0
 1860 013d 00       		.byte	0
 1861 013e 1B       		.uleb128 0x1b
 1862 013f 0D       		.uleb128 0xd
 1863 0140 00       		.byte	0
 1864 0141 03       		.uleb128 0x3
 1865 0142 0E       		.uleb128 0xe
 1866 0143 3A       		.uleb128 0x3a
 1867 0144 0B       		.uleb128 0xb
 1868 0145 3B       		.uleb128 0x3b
 1869 0146 05       		.uleb128 0x5
 1870 0147 49       		.uleb128 0x49
 1871 0148 13       		.uleb128 0x13
 1872 0149 38       		.uleb128 0x38
 1873 014a 05       		.uleb128 0x5
 1874 014b 00       		.byte	0
 1875 014c 00       		.byte	0
 1876 014d 1C       		.uleb128 0x1c
 1877 014e 13       		.uleb128 0x13
 1878 014f 01       		.byte	0x1
 1879 0150 03       		.uleb128 0x3
 1880 0151 0E       		.uleb128 0xe
 1881 0152 0B       		.uleb128 0xb
 1882 0153 0B       		.uleb128 0xb
 1883 0154 3A       		.uleb128 0x3a
 1884 0155 0B       		.uleb128 0xb
 1885 0156 3B       		.uleb128 0x3b
 1886 0157 05       		.uleb128 0x5
 1887 0158 01       		.uleb128 0x1
 1888 0159 13       		.uleb128 0x13
 1889 015a 00       		.byte	0
ARM GAS  /tmp/ccybDQNt.s 			page 37


 1890 015b 00       		.byte	0
 1891 015c 1D       		.uleb128 0x1d
 1892 015d 13       		.uleb128 0x13
 1893 015e 01       		.byte	0x1
 1894 015f 0B       		.uleb128 0xb
 1895 0160 0B       		.uleb128 0xb
 1896 0161 3A       		.uleb128 0x3a
 1897 0162 0B       		.uleb128 0xb
 1898 0163 3B       		.uleb128 0x3b
 1899 0164 05       		.uleb128 0x5
 1900 0165 01       		.uleb128 0x1
 1901 0166 13       		.uleb128 0x13
 1902 0167 00       		.byte	0
 1903 0168 00       		.byte	0
 1904 0169 1E       		.uleb128 0x1e
 1905 016a 17       		.uleb128 0x17
 1906 016b 01       		.byte	0x1
 1907 016c 0B       		.uleb128 0xb
 1908 016d 0B       		.uleb128 0xb
 1909 016e 3A       		.uleb128 0x3a
 1910 016f 0B       		.uleb128 0xb
 1911 0170 3B       		.uleb128 0x3b
 1912 0171 05       		.uleb128 0x5
 1913 0172 01       		.uleb128 0x1
 1914 0173 13       		.uleb128 0x13
 1915 0174 00       		.byte	0
 1916 0175 00       		.byte	0
 1917 0176 1F       		.uleb128 0x1f
 1918 0177 0D       		.uleb128 0xd
 1919 0178 00       		.byte	0
 1920 0179 03       		.uleb128 0x3
 1921 017a 0E       		.uleb128 0xe
 1922 017b 3A       		.uleb128 0x3a
 1923 017c 0B       		.uleb128 0xb
 1924 017d 3B       		.uleb128 0x3b
 1925 017e 05       		.uleb128 0x5
 1926 017f 49       		.uleb128 0x49
 1927 0180 13       		.uleb128 0x13
 1928 0181 00       		.byte	0
 1929 0182 00       		.byte	0
 1930 0183 20       		.uleb128 0x20
 1931 0184 15       		.uleb128 0x15
 1932 0185 01       		.byte	0x1
 1933 0186 27       		.uleb128 0x27
 1934 0187 19       		.uleb128 0x19
 1935 0188 01       		.uleb128 0x1
 1936 0189 13       		.uleb128 0x13
 1937 018a 00       		.byte	0
 1938 018b 00       		.byte	0
 1939 018c 21       		.uleb128 0x21
 1940 018d 34       		.uleb128 0x34
 1941 018e 00       		.byte	0
 1942 018f 03       		.uleb128 0x3
 1943 0190 0E       		.uleb128 0xe
 1944 0191 3A       		.uleb128 0x3a
 1945 0192 0B       		.uleb128 0xb
 1946 0193 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccybDQNt.s 			page 38


 1947 0194 0B       		.uleb128 0xb
 1948 0195 49       		.uleb128 0x49
 1949 0196 13       		.uleb128 0x13
 1950 0197 02       		.uleb128 0x2
 1951 0198 18       		.uleb128 0x18
 1952 0199 00       		.byte	0
 1953 019a 00       		.byte	0
 1954 019b 22       		.uleb128 0x22
 1955 019c 2E       		.uleb128 0x2e
 1956 019d 01       		.byte	0x1
 1957 019e 3F       		.uleb128 0x3f
 1958 019f 19       		.uleb128 0x19
 1959 01a0 03       		.uleb128 0x3
 1960 01a1 0E       		.uleb128 0xe
 1961 01a2 3A       		.uleb128 0x3a
 1962 01a3 0B       		.uleb128 0xb
 1963 01a4 3B       		.uleb128 0x3b
 1964 01a5 0B       		.uleb128 0xb
 1965 01a6 27       		.uleb128 0x27
 1966 01a7 19       		.uleb128 0x19
 1967 01a8 49       		.uleb128 0x49
 1968 01a9 13       		.uleb128 0x13
 1969 01aa 11       		.uleb128 0x11
 1970 01ab 01       		.uleb128 0x1
 1971 01ac 12       		.uleb128 0x12
 1972 01ad 06       		.uleb128 0x6
 1973 01ae 40       		.uleb128 0x40
 1974 01af 18       		.uleb128 0x18
 1975 01b0 9742     		.uleb128 0x2117
 1976 01b2 19       		.uleb128 0x19
 1977 01b3 01       		.uleb128 0x1
 1978 01b4 13       		.uleb128 0x13
 1979 01b5 00       		.byte	0
 1980 01b6 00       		.byte	0
 1981 01b7 23       		.uleb128 0x23
 1982 01b8 05       		.uleb128 0x5
 1983 01b9 00       		.byte	0
 1984 01ba 03       		.uleb128 0x3
 1985 01bb 0E       		.uleb128 0xe
 1986 01bc 3A       		.uleb128 0x3a
 1987 01bd 0B       		.uleb128 0xb
 1988 01be 3B       		.uleb128 0x3b
 1989 01bf 0B       		.uleb128 0xb
 1990 01c0 49       		.uleb128 0x49
 1991 01c1 13       		.uleb128 0x13
 1992 01c2 02       		.uleb128 0x2
 1993 01c3 17       		.uleb128 0x17
 1994 01c4 00       		.byte	0
 1995 01c5 00       		.byte	0
 1996 01c6 24       		.uleb128 0x24
 1997 01c7 2E       		.uleb128 0x2e
 1998 01c8 01       		.byte	0x1
 1999 01c9 3F       		.uleb128 0x3f
 2000 01ca 19       		.uleb128 0x19
 2001 01cb 03       		.uleb128 0x3
 2002 01cc 0E       		.uleb128 0xe
 2003 01cd 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccybDQNt.s 			page 39


 2004 01ce 0B       		.uleb128 0xb
 2005 01cf 3B       		.uleb128 0x3b
 2006 01d0 0B       		.uleb128 0xb
 2007 01d1 27       		.uleb128 0x27
 2008 01d2 19       		.uleb128 0x19
 2009 01d3 11       		.uleb128 0x11
 2010 01d4 01       		.uleb128 0x1
 2011 01d5 12       		.uleb128 0x12
 2012 01d6 06       		.uleb128 0x6
 2013 01d7 40       		.uleb128 0x40
 2014 01d8 18       		.uleb128 0x18
 2015 01d9 9742     		.uleb128 0x2117
 2016 01db 19       		.uleb128 0x19
 2017 01dc 01       		.uleb128 0x1
 2018 01dd 13       		.uleb128 0x13
 2019 01de 00       		.byte	0
 2020 01df 00       		.byte	0
 2021 01e0 25       		.uleb128 0x25
 2022 01e1 05       		.uleb128 0x5
 2023 01e2 00       		.byte	0
 2024 01e3 03       		.uleb128 0x3
 2025 01e4 0E       		.uleb128 0xe
 2026 01e5 3A       		.uleb128 0x3a
 2027 01e6 0B       		.uleb128 0xb
 2028 01e7 3B       		.uleb128 0x3b
 2029 01e8 0B       		.uleb128 0xb
 2030 01e9 49       		.uleb128 0x49
 2031 01ea 13       		.uleb128 0x13
 2032 01eb 02       		.uleb128 0x2
 2033 01ec 18       		.uleb128 0x18
 2034 01ed 00       		.byte	0
 2035 01ee 00       		.byte	0
 2036 01ef 26       		.uleb128 0x26
 2037 01f0 2E       		.uleb128 0x2e
 2038 01f1 01       		.byte	0x1
 2039 01f2 3F       		.uleb128 0x3f
 2040 01f3 19       		.uleb128 0x19
 2041 01f4 03       		.uleb128 0x3
 2042 01f5 0E       		.uleb128 0xe
 2043 01f6 3A       		.uleb128 0x3a
 2044 01f7 0B       		.uleb128 0xb
 2045 01f8 3B       		.uleb128 0x3b
 2046 01f9 0B       		.uleb128 0xb
 2047 01fa 27       		.uleb128 0x27
 2048 01fb 19       		.uleb128 0x19
 2049 01fc 49       		.uleb128 0x49
 2050 01fd 13       		.uleb128 0x13
 2051 01fe 11       		.uleb128 0x11
 2052 01ff 01       		.uleb128 0x1
 2053 0200 12       		.uleb128 0x12
 2054 0201 06       		.uleb128 0x6
 2055 0202 40       		.uleb128 0x40
 2056 0203 18       		.uleb128 0x18
 2057 0204 9742     		.uleb128 0x2117
 2058 0206 19       		.uleb128 0x19
 2059 0207 00       		.byte	0
 2060 0208 00       		.byte	0
ARM GAS  /tmp/ccybDQNt.s 			page 40


 2061 0209 27       		.uleb128 0x27
 2062 020a 34       		.uleb128 0x34
 2063 020b 00       		.byte	0
 2064 020c 03       		.uleb128 0x3
 2065 020d 08       		.uleb128 0x8
 2066 020e 3A       		.uleb128 0x3a
 2067 020f 0B       		.uleb128 0xb
 2068 0210 3B       		.uleb128 0x3b
 2069 0211 0B       		.uleb128 0xb
 2070 0212 49       		.uleb128 0x49
 2071 0213 13       		.uleb128 0x13
 2072 0214 02       		.uleb128 0x2
 2073 0215 18       		.uleb128 0x18
 2074 0216 00       		.byte	0
 2075 0217 00       		.byte	0
 2076 0218 00       		.byte	0
 2077              		.section	.debug_loc,"",%progbits
 2078              	.Ldebug_loc0:
 2079              	.LLST4:
 2080 0000 00000000 		.4byte	.LVL11
 2081 0004 12000000 		.4byte	.LVL13
 2082 0008 0100     		.2byte	0x1
 2083 000a 50       		.byte	0x50
 2084 000b 12000000 		.4byte	.LVL13
 2085 000f 18000000 		.4byte	.LFE147
 2086 0013 0400     		.2byte	0x4
 2087 0015 F3       		.byte	0xf3
 2088 0016 01       		.uleb128 0x1
 2089 0017 50       		.byte	0x50
 2090 0018 9F       		.byte	0x9f
 2091 0019 00000000 		.4byte	0
 2092 001d 00000000 		.4byte	0
 2093              	.LLST5:
 2094 0021 00000000 		.4byte	.LVL11
 2095 0025 0E000000 		.4byte	.LVL12
 2096 0029 0100     		.2byte	0x1
 2097 002b 51       		.byte	0x51
 2098 002c 0E000000 		.4byte	.LVL12
 2099 0030 18000000 		.4byte	.LFE147
 2100 0034 0400     		.2byte	0x4
 2101 0036 F3       		.byte	0xf3
 2102 0037 01       		.uleb128 0x1
 2103 0038 51       		.byte	0x51
 2104 0039 9F       		.byte	0x9f
 2105 003a 00000000 		.4byte	0
 2106 003e 00000000 		.4byte	0
 2107              	.LLST3:
 2108 0042 00000000 		.4byte	.LVL9
 2109 0046 02000000 		.4byte	.LVL10
 2110 004a 0100     		.2byte	0x1
 2111 004c 50       		.byte	0x50
 2112 004d 02000000 		.4byte	.LVL10
 2113 0051 04000000 		.4byte	.LFE146
 2114 0055 0400     		.2byte	0x4
 2115 0057 F3       		.byte	0xf3
 2116 0058 01       		.uleb128 0x1
 2117 0059 50       		.byte	0x50
ARM GAS  /tmp/ccybDQNt.s 			page 41


 2118 005a 9F       		.byte	0x9f
 2119 005b 00000000 		.4byte	0
 2120 005f 00000000 		.4byte	0
 2121              	.LLST2:
 2122 0063 00000000 		.4byte	.LVL5
 2123 0067 04000000 		.4byte	.LVL6
 2124 006b 0100     		.2byte	0x1
 2125 006d 52       		.byte	0x52
 2126 006e 04000000 		.4byte	.LVL6
 2127 0072 0A000000 		.4byte	.LFE143
 2128 0076 0400     		.2byte	0x4
 2129 0078 F3       		.byte	0xf3
 2130 0079 01       		.uleb128 0x1
 2131 007a 52       		.byte	0x52
 2132 007b 9F       		.byte	0x9f
 2133 007c 00000000 		.4byte	0
 2134 0080 00000000 		.4byte	0
 2135              	.LLST0:
 2136 0084 00000000 		.4byte	.LVL0
 2137 0088 16000000 		.4byte	.LVL2
 2138 008c 0100     		.2byte	0x1
 2139 008e 50       		.byte	0x50
 2140 008f 16000000 		.4byte	.LVL2
 2141 0093 18000000 		.4byte	.LVL3
 2142 0097 0400     		.2byte	0x4
 2143 0099 F3       		.byte	0xf3
 2144 009a 01       		.uleb128 0x1
 2145 009b 50       		.byte	0x50
 2146 009c 9F       		.byte	0x9f
 2147 009d 18000000 		.4byte	.LVL3
 2148 00a1 1C000000 		.4byte	.LVL4
 2149 00a5 0100     		.2byte	0x1
 2150 00a7 50       		.byte	0x50
 2151 00a8 1C000000 		.4byte	.LVL4
 2152 00ac 28000000 		.4byte	.LFE142
 2153 00b0 0400     		.2byte	0x4
 2154 00b2 F3       		.byte	0xf3
 2155 00b3 01       		.uleb128 0x1
 2156 00b4 50       		.byte	0x50
 2157 00b5 9F       		.byte	0x9f
 2158 00b6 00000000 		.4byte	0
 2159 00ba 00000000 		.4byte	0
 2160              	.LLST1:
 2161 00be 00000000 		.4byte	.LVL0
 2162 00c2 06000000 		.4byte	.LVL1
 2163 00c6 0100     		.2byte	0x1
 2164 00c8 51       		.byte	0x51
 2165 00c9 06000000 		.4byte	.LVL1
 2166 00cd 28000000 		.4byte	.LFE142
 2167 00d1 0400     		.2byte	0x4
 2168 00d3 F3       		.byte	0xf3
 2169 00d4 01       		.uleb128 0x1
 2170 00d5 51       		.byte	0x51
 2171 00d6 9F       		.byte	0x9f
 2172 00d7 00000000 		.4byte	0
 2173 00db 00000000 		.4byte	0
 2174              		.section	.debug_aranges,"",%progbits
ARM GAS  /tmp/ccybDQNt.s 			page 42


 2175 0000 44000000 		.4byte	0x44
 2176 0004 0200     		.2byte	0x2
 2177 0006 00000000 		.4byte	.Ldebug_info0
 2178 000a 04       		.byte	0x4
 2179 000b 00       		.byte	0
 2180 000c 0000     		.2byte	0
 2181 000e 0000     		.2byte	0
 2182 0010 00000000 		.4byte	.LFB142
 2183 0014 28000000 		.4byte	.LFE142-.LFB142
 2184 0018 00000000 		.4byte	.LFB143
 2185 001c 0A000000 		.4byte	.LFE143-.LFB143
 2186 0020 00000000 		.4byte	.LFB144
 2187 0024 08000000 		.4byte	.LFE144-.LFB144
 2188 0028 00000000 		.4byte	.LFB145
 2189 002c 18000000 		.4byte	.LFE145-.LFB145
 2190 0030 00000000 		.4byte	.LFB146
 2191 0034 04000000 		.4byte	.LFE146-.LFB146
 2192 0038 00000000 		.4byte	.LFB147
 2193 003c 18000000 		.4byte	.LFE147-.LFB147
 2194 0040 00000000 		.4byte	0
 2195 0044 00000000 		.4byte	0
 2196              		.section	.debug_ranges,"",%progbits
 2197              	.Ldebug_ranges0:
 2198 0000 00000000 		.4byte	.LFB142
 2199 0004 28000000 		.4byte	.LFE142
 2200 0008 00000000 		.4byte	.LFB143
 2201 000c 0A000000 		.4byte	.LFE143
 2202 0010 00000000 		.4byte	.LFB144
 2203 0014 08000000 		.4byte	.LFE144
 2204 0018 00000000 		.4byte	.LFB145
 2205 001c 18000000 		.4byte	.LFE145
 2206 0020 00000000 		.4byte	.LFB146
 2207 0024 04000000 		.4byte	.LFE146
 2208 0028 00000000 		.4byte	.LFB147
 2209 002c 18000000 		.4byte	.LFE147
 2210 0030 00000000 		.4byte	0
 2211 0034 00000000 		.4byte	0
 2212              		.section	.debug_line,"",%progbits
 2213              	.Ldebug_line0:
 2214 0000 D0020000 		.section	.debug_str,"MS",%progbits,1
 2214      02005B02 
 2214      00000201 
 2214      FB0E0D00 
 2214      01010101 
 2215              	.LASF50:
 2216 0000 5F64736F 		.ascii	"_dso_handle\000"
 2216      5F68616E 
 2216      646C6500 
 2217              	.LASF52:
 2218 000c 5F69735F 		.ascii	"_is_cxa\000"
 2218      63786100 
 2219              	.LASF3:
 2220 0014 73686F72 		.ascii	"short int\000"
 2220      7420696E 
 2220      7400
 2221              	.LASF59:
 2222 001e 5F5F7346 		.ascii	"__sFILE\000"
ARM GAS  /tmp/ccybDQNt.s 			page 43


 2222      494C4500 
 2223              	.LASF49:
 2224 0026 5F666E61 		.ascii	"_fnargs\000"
 2224      72677300 
 2225              	.LASF103:
 2226 002e 5F72616E 		.ascii	"_rand48\000"
 2226      64343800 
 2227              	.LASF82:
 2228 0036 5F656D65 		.ascii	"_emergency\000"
 2228      7267656E 
 2228      637900
 2229              	.LASF94:
 2230 0041 5F617465 		.ascii	"_atexit0\000"
 2230      78697430 
 2230      00
 2231              	.LASF123:
 2232 004a 5F776372 		.ascii	"_wcrtomb_state\000"
 2232      746F6D62 
 2232      5F737461 
 2232      746500
 2233              	.LASF124:
 2234 0059 5F776373 		.ascii	"_wcsrtombs_state\000"
 2234      72746F6D 
 2234      62735F73 
 2234      74617465 
 2234      00
 2235              	.LASF135:
 2236 006a 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 2236      6972715F 
 2236      70726576 
 2236      5F696E74 
 2236      65727275 
 2237              	.LASF138:
 2238 0087 705F7273 		.ascii	"p_rswdt\000"
 2238      77647400 
 2239              	.LASF16:
 2240 008f 49544D5F 		.ascii	"ITM_RxBuffer\000"
 2240      52784275 
 2240      66666572 
 2240      00
 2241              	.LASF147:
 2242 009c 75735F64 		.ascii	"us_delta\000"
 2242      656C7461 
 2242      00
 2243              	.LASF121:
 2244 00a5 5F6D6272 		.ascii	"_mbrtowc_state\000"
 2244      746F7763 
 2244      5F737461 
 2244      746500
 2245              	.LASF116:
 2246 00b4 5F776374 		.ascii	"_wctomb_state\000"
 2246      6F6D625F 
 2246      73746174 
 2246      6500
 2247              	.LASF39:
 2248 00c2 5F5F746D 		.ascii	"__tm_sec\000"
 2248      5F736563 
ARM GAS  /tmp/ccybDQNt.s 			page 44


 2248      00
 2249              	.LASF23:
 2250 00cb 5F6F6666 		.ascii	"_off_t\000"
 2250      5F7400
 2251              	.LASF67:
 2252 00d2 5F636C6F 		.ascii	"_close\000"
 2252      736500
 2253              	.LASF1:
 2254 00d9 7369676E 		.ascii	"signed char\000"
 2254      65642063 
 2254      68617200 
 2255              	.LASF68:
 2256 00e5 5F756275 		.ascii	"_ubuf\000"
 2256      6600
 2257              	.LASF11:
 2258 00eb 6C6F6E67 		.ascii	"long long unsigned int\000"
 2258      206C6F6E 
 2258      6720756E 
 2258      7369676E 
 2258      65642069 
 2259              	.LASF139:
 2260 0102 756C5F73 		.ascii	"ul_sclk\000"
 2260      636C6B00 
 2261              	.LASF97:
 2262 010a 5F5F7366 		.ascii	"__sf\000"
 2262      00
 2263              	.LASF48:
 2264 010f 5F6F6E5F 		.ascii	"_on_exit_args\000"
 2264      65786974 
 2264      5F617267 
 2264      7300
 2265              	.LASF63:
 2266 011d 5F636F6F 		.ascii	"_cookie\000"
 2266      6B696500 
 2267              	.LASF96:
 2268 0125 5F5F7367 		.ascii	"__sglue\000"
 2268      6C756500 
 2269              	.LASF7:
 2270 012d 6C6F6E67 		.ascii	"long int\000"
 2270      20696E74 
 2270      00
 2271              	.LASF21:
 2272 0136 52737764 		.ascii	"Rswdt\000"
 2272      7400
 2273              	.LASF60:
 2274 013c 5F666C61 		.ascii	"_flags\000"
 2274      677300
 2275              	.LASF19:
 2276 0143 52535744 		.ascii	"RSWDT_MR\000"
 2276      545F4D52 
 2276      00
 2277              	.LASF141:
 2278 014c 72737764 		.ascii	"rswdt_get_status\000"
 2278      745F6765 
 2278      745F7374 
 2278      61747573 
 2278      00
ARM GAS  /tmp/ccybDQNt.s 			page 45


 2279              	.LASF88:
 2280 015d 5F726573 		.ascii	"_result_k\000"
 2280      756C745F 
 2280      6B00
 2281              	.LASF144:
 2282 0167 72737764 		.ascii	"rswdt_init\000"
 2282      745F696E 
 2282      697400
 2283              	.LASF10:
 2284 0172 6C6F6E67 		.ascii	"long long int\000"
 2284      206C6F6E 
 2284      6720696E 
 2284      7400
 2285              	.LASF12:
 2286 0180 75696E74 		.ascii	"uint16_t\000"
 2286      31365F74 
 2286      00
 2287              	.LASF137:
 2288 0189 646F7562 		.ascii	"double\000"
 2288      6C6500
 2289              	.LASF92:
 2290 0190 5F637674 		.ascii	"_cvtbuf\000"
 2290      62756600 
 2291              	.LASF71:
 2292 0198 5F6F6666 		.ascii	"_offset\000"
 2292      73657400 
 2293              	.LASF122:
 2294 01a0 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 2294      72746F77 
 2294      63735F73 
 2294      74617465 
 2294      00
 2295              	.LASF120:
 2296 01b1 5F6D6272 		.ascii	"_mbrlen_state\000"
 2296      6C656E5F 
 2296      73746174 
 2296      6500
 2297              	.LASF4:
 2298 01bf 73686F72 		.ascii	"short unsigned int\000"
 2298      7420756E 
 2298      7369676E 
 2298      65642069 
 2298      6E7400
 2299              	.LASF55:
 2300 01d2 5F666E73 		.ascii	"_fns\000"
 2300      00
 2301              	.LASF8:
 2302 01d7 5F5F7569 		.ascii	"__uint32_t\000"
 2302      6E743332 
 2302      5F7400
 2303              	.LASF35:
 2304 01e2 5F736967 		.ascii	"_sign\000"
 2304      6E00
 2305              	.LASF129:
 2306 01e8 5F696D70 		.ascii	"_impure_ptr\000"
 2306      7572655F 
 2306      70747200 
ARM GAS  /tmp/ccybDQNt.s 			page 46


 2307              	.LASF148:
 2308 01f4 72737764 		.ascii	"rswdt_get_timeout_value\000"
 2308      745F6765 
 2308      745F7469 
 2308      6D656F75 
 2308      745F7661 
 2309              	.LASF37:
 2310 020c 5F426967 		.ascii	"_Bigint\000"
 2310      696E7400 
 2311              	.LASF64:
 2312 0214 5F726561 		.ascii	"_read\000"
 2312      6400
 2313              	.LASF38:
 2314 021a 5F5F746D 		.ascii	"__tm\000"
 2314      00
 2315              	.LASF27:
 2316 021f 5F5F7763 		.ascii	"__wchb\000"
 2316      686200
 2317              	.LASF17:
 2318 0226 53797374 		.ascii	"SystemCoreClock\000"
 2318      656D436F 
 2318      7265436C 
 2318      6F636B00 
 2319              	.LASF79:
 2320 0236 5F737464 		.ascii	"_stdout\000"
 2320      6F757400 
 2321              	.LASF91:
 2322 023e 5F637674 		.ascii	"_cvtlen\000"
 2322      6C656E00 
 2323              	.LASF9:
 2324 0246 6C6F6E67 		.ascii	"long unsigned int\000"
 2324      20756E73 
 2324      69676E65 
 2324      6420696E 
 2324      7400
 2325              	.LASF61:
 2326 0258 5F66696C 		.ascii	"_file\000"
 2326      6500
 2327              	.LASF72:
 2328 025e 5F646174 		.ascii	"_data\000"
 2328      6100
 2329              	.LASF101:
 2330 0264 5F6E696F 		.ascii	"_niobs\000"
 2330      627300
 2331              	.LASF112:
 2332 026b 5F72616E 		.ascii	"_rand_next\000"
 2332      645F6E65 
 2332      787400
 2333              	.LASF118:
 2334 0276 5F736967 		.ascii	"_signal_buf\000"
 2334      6E616C5F 
 2334      62756600 
 2335              	.LASF109:
 2336 0282 5F617363 		.ascii	"_asctime_buf\000"
 2336      74696D65 
 2336      5F627566 
 2336      00
ARM GAS  /tmp/ccybDQNt.s 			page 47


 2337              	.LASF87:
 2338 028f 5F726573 		.ascii	"_result\000"
 2338      756C7400 
 2339              	.LASF26:
 2340 0297 5F5F7763 		.ascii	"__wch\000"
 2340      6800
 2341              	.LASF126:
 2342 029d 5F6E6578 		.ascii	"_nextf\000"
 2342      746600
 2343              	.LASF93:
 2344 02a4 5F6E6577 		.ascii	"_new\000"
 2344      00
 2345              	.LASF73:
 2346 02a9 5F6C6F63 		.ascii	"_lock\000"
 2346      6B00
 2347              	.LASF105:
 2348 02af 5F6D756C 		.ascii	"_mult\000"
 2348      7400
 2349              	.LASF65:
 2350 02b5 5F777269 		.ascii	"_write\000"
 2350      746500
 2351              	.LASF44:
 2352 02bc 5F5F746D 		.ascii	"__tm_year\000"
 2352      5F796561 
 2352      7200
 2353              	.LASF15:
 2354 02c6 73697A65 		.ascii	"sizetype\000"
 2354      74797065 
 2354      00
 2355              	.LASF150:
 2356 02cf 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 2356      43393920 
 2356      362E332E 
 2356      31203230 
 2356      31373036 
 2357 0302 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 2357      76352D64 
 2357      3136202D 
 2357      6D666C6F 
 2357      61742D61 
 2358 0335 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 2358      6E2D7365 
 2358      6374696F 
 2358      6E73202D 
 2358      66646174 
 2359 0368 6F6E7374 		.ascii	"onstant\000"
 2359      616E7400 
 2360              	.LASF43:
 2361 0370 5F5F746D 		.ascii	"__tm_mon\000"
 2361      5F6D6F6E 
 2361      00
 2362              	.LASF53:
 2363 0379 5F617465 		.ascii	"_atexit\000"
 2363      78697400 
 2364              	.LASF131:
 2365 0381 7375626F 		.ascii	"suboptarg\000"
 2365      70746172 
ARM GAS  /tmp/ccybDQNt.s 			page 48


 2365      6700
 2366              	.LASF85:
 2367 038b 5F5F7364 		.ascii	"__sdidinit\000"
 2367      6964696E 
 2367      697400
 2368              	.LASF111:
 2369 0396 5F67616D 		.ascii	"_gamma_signgam\000"
 2369      6D615F73 
 2369      69676E67 
 2369      616D00
 2370              	.LASF18:
 2371 03a5 52535744 		.ascii	"RSWDT_CR\000"
 2371      545F4352 
 2371      00
 2372              	.LASF25:
 2373 03ae 77696E74 		.ascii	"wint_t\000"
 2373      5F7400
 2374              	.LASF136:
 2375 03b5 666C6F61 		.ascii	"float\000"
 2375      7400
 2376              	.LASF145:
 2377 03bb 756C5F6D 		.ascii	"ul_mode\000"
 2377      6F646500 
 2378              	.LASF132:
 2379 03c3 675F696E 		.ascii	"g_interrupt_enabled\000"
 2379      74657272 
 2379      7570745F 
 2379      656E6162 
 2379      6C656400 
 2380              	.LASF142:
 2381 03d7 72737764 		.ascii	"rswdt_restart\000"
 2381      745F7265 
 2381      73746172 
 2381      7400
 2382              	.LASF22:
 2383 03e5 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 2383      4B5F5245 
 2383      43555253 
 2383      4956455F 
 2383      5400
 2384              	.LASF57:
 2385 03f7 5F626173 		.ascii	"_base\000"
 2385      6500
 2386              	.LASF133:
 2387 03fd 5F426F6F 		.ascii	"_Bool\000"
 2387      6C00
 2388              	.LASF13:
 2389 0403 696E7433 		.ascii	"int32_t\000"
 2389      325F7400 
 2390              	.LASF2:
 2391 040b 756E7369 		.ascii	"unsigned char\000"
 2391      676E6564 
 2391      20636861 
 2391      7200
 2392              	.LASF102:
 2393 0419 5F696F62 		.ascii	"_iobs\000"
 2393      7300
ARM GAS  /tmp/ccybDQNt.s 			page 49


 2394              	.LASF151:
 2395 041f 2E2E2F61 		.ascii	"../asf/sam/drivers/rswdt/rswdt.c\000"
 2395      73662F73 
 2395      616D2F64 
 2395      72697665 
 2395      72732F72 
 2396              	.LASF125:
 2397 0440 5F685F65 		.ascii	"_h_errno\000"
 2397      72726E6F 
 2397      00
 2398              	.LASF31:
 2399 0449 5F666C6F 		.ascii	"_flock_t\000"
 2399      636B5F74 
 2399      00
 2400              	.LASF46:
 2401 0452 5F5F746D 		.ascii	"__tm_yday\000"
 2401      5F796461 
 2401      7900
 2402              	.LASF56:
 2403 045c 5F5F7362 		.ascii	"__sbuf\000"
 2403      756600
 2404              	.LASF75:
 2405 0463 5F666C61 		.ascii	"_flags2\000"
 2405      67733200 
 2406              	.LASF90:
 2407 046b 5F667265 		.ascii	"_freelist\000"
 2407      656C6973 
 2407      7400
 2408              	.LASF20:
 2409 0475 52535744 		.ascii	"RSWDT_SR\000"
 2409      545F5352 
 2409      00
 2410              	.LASF99:
 2411 047e 5F5F4649 		.ascii	"__FILE\000"
 2411      4C4500
 2412              	.LASF30:
 2413 0485 5F6D6273 		.ascii	"_mbstate_t\000"
 2413      74617465 
 2413      5F7400
 2414              	.LASF140:
 2415 0490 72737764 		.ascii	"rswdt_get_us_timeout_period\000"
 2415      745F6765 
 2415      745F7573 
 2415      5F74696D 
 2415      656F7574 
 2416              	.LASF74:
 2417 04ac 5F6D6273 		.ascii	"_mbstate\000"
 2417      74617465 
 2417      00
 2418              	.LASF114:
 2419 04b5 5F6D626C 		.ascii	"_mblen_state\000"
 2419      656E5F73 
 2419      74617465 
 2419      00
 2420              	.LASF81:
 2421 04c2 5F696E63 		.ascii	"_inc\000"
 2421      00
ARM GAS  /tmp/ccybDQNt.s 			page 50


 2422              	.LASF54:
 2423 04c7 5F696E64 		.ascii	"_ind\000"
 2423      00
 2424              	.LASF84:
 2425 04cc 5F637572 		.ascii	"_current_locale\000"
 2425      72656E74 
 2425      5F6C6F63 
 2425      616C6500 
 2426              	.LASF86:
 2427 04dc 5F5F636C 		.ascii	"__cleanup\000"
 2427      65616E75 
 2427      7000
 2428              	.LASF34:
 2429 04e6 5F6D6178 		.ascii	"_maxwds\000"
 2429      77647300 
 2430              	.LASF76:
 2431 04ee 5F726565 		.ascii	"_reent\000"
 2431      6E7400
 2432              	.LASF104:
 2433 04f5 5F736565 		.ascii	"_seed\000"
 2433      6400
 2434              	.LASF28:
 2435 04fb 5F5F636F 		.ascii	"__count\000"
 2435      756E7400 
 2436              	.LASF29:
 2437 0503 5F5F7661 		.ascii	"__value\000"
 2437      6C756500 
 2438              	.LASF41:
 2439 050b 5F5F746D 		.ascii	"__tm_hour\000"
 2439      5F686F75 
 2439      7200
 2440              	.LASF66:
 2441 0515 5F736565 		.ascii	"_seek\000"
 2441      6B00
 2442              	.LASF45:
 2443 051b 5F5F746D 		.ascii	"__tm_wday\000"
 2443      5F776461 
 2443      7900
 2444              	.LASF24:
 2445 0525 5F66706F 		.ascii	"_fpos_t\000"
 2445      735F7400 
 2446              	.LASF77:
 2447 052d 5F657272 		.ascii	"_errno\000"
 2447      6E6F00
 2448              	.LASF98:
 2449 0534 63686172 		.ascii	"char\000"
 2449      00
 2450              	.LASF70:
 2451 0539 5F626C6B 		.ascii	"_blksize\000"
 2451      73697A65 
 2451      00
 2452              	.LASF58:
 2453 0542 5F73697A 		.ascii	"_size\000"
 2453      6500
 2454              	.LASF0:
 2455 0548 756E7369 		.ascii	"unsigned int\000"
 2455      676E6564 
ARM GAS  /tmp/ccybDQNt.s 			page 51


 2455      20696E74 
 2455      00
 2456              	.LASF5:
 2457 0555 5F5F7569 		.ascii	"__uint16_t\000"
 2457      6E743136 
 2457      5F7400
 2458              	.LASF6:
 2459 0560 5F5F696E 		.ascii	"__int32_t\000"
 2459      7433325F 
 2459      7400
 2460              	.LASF80:
 2461 056a 5F737464 		.ascii	"_stderr\000"
 2461      65727200 
 2462              	.LASF33:
 2463 0572 5F6E6578 		.ascii	"_next\000"
 2463      7400
 2464              	.LASF108:
 2465 0578 5F737472 		.ascii	"_strtok_last\000"
 2465      746F6B5F 
 2465      6C617374 
 2465      00
 2466              	.LASF51:
 2467 0585 5F666E74 		.ascii	"_fntypes\000"
 2467      79706573 
 2467      00
 2468              	.LASF146:
 2469 058e 75735F63 		.ascii	"us_counter\000"
 2469      6F756E74 
 2469      657200
 2470              	.LASF106:
 2471 0599 5F616464 		.ascii	"_add\000"
 2471      00
 2472              	.LASF32:
 2473 059e 5F5F554C 		.ascii	"__ULong\000"
 2473      6F6E6700 
 2474              	.LASF119:
 2475 05a6 5F676574 		.ascii	"_getdate_err\000"
 2475      64617465 
 2475      5F657272 
 2475      00
 2476              	.LASF149:
 2477 05b3 756C5F75 		.ascii	"ul_us\000"
 2477      7300
 2478              	.LASF130:
 2479 05b9 5F676C6F 		.ascii	"_global_impure_ptr\000"
 2479      62616C5F 
 2479      696D7075 
 2479      72655F70 
 2479      747200
 2480              	.LASF83:
 2481 05cc 5F637572 		.ascii	"_current_category\000"
 2481      72656E74 
 2481      5F636174 
 2481      65676F72 
 2481      7900
 2482              	.LASF14:
 2483 05de 75696E74 		.ascii	"uint32_t\000"
ARM GAS  /tmp/ccybDQNt.s 			page 52


 2483      33325F74 
 2483      00
 2484              	.LASF107:
 2485 05e7 5F756E75 		.ascii	"_unused_rand\000"
 2485      7365645F 
 2485      72616E64 
 2485      00
 2486              	.LASF36:
 2487 05f4 5F776473 		.ascii	"_wds\000"
 2487      00
 2488              	.LASF100:
 2489 05f9 5F676C75 		.ascii	"_glue\000"
 2489      6500
 2490              	.LASF78:
 2491 05ff 5F737464 		.ascii	"_stdin\000"
 2491      696E00
 2492              	.LASF127:
 2493 0606 5F6E6D61 		.ascii	"_nmalloc\000"
 2493      6C6C6F63 
 2493      00
 2494              	.LASF117:
 2495 060f 5F6C3634 		.ascii	"_l64a_buf\000"
 2495      615F6275 
 2495      6600
 2496              	.LASF95:
 2497 0619 5F736967 		.ascii	"_sig_func\000"
 2497      5F66756E 
 2497      6300
 2498              	.LASF134:
 2499 0623 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 2499      6972715F 
 2499      63726974 
 2499      6963616C 
 2499      5F736563 
 2500              	.LASF69:
 2501 0644 5F6E6275 		.ascii	"_nbuf\000"
 2501      6600
 2502              	.LASF128:
 2503 064a 5F756E75 		.ascii	"_unused\000"
 2503      73656400 
 2504              	.LASF152:
 2505 0652 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 2505      652F746F 
 2505      72626A6F 
 2505      726E2F65 
 2505      636C6970 
 2506 0685 00       		.ascii	"\000"
 2507              	.LASF47:
 2508 0686 5F5F746D 		.ascii	"__tm_isdst\000"
 2508      5F697364 
 2508      737400
 2509              	.LASF110:
 2510 0691 5F6C6F63 		.ascii	"_localtime_buf\000"
 2510      616C7469 
 2510      6D655F62 
 2510      756600
 2511              	.LASF40:
ARM GAS  /tmp/ccybDQNt.s 			page 53


 2512 06a0 5F5F746D 		.ascii	"__tm_min\000"
 2512      5F6D696E 
 2512      00
 2513              	.LASF113:
 2514 06a9 5F723438 		.ascii	"_r48\000"
 2514      00
 2515              	.LASF115:
 2516 06ae 5F6D6274 		.ascii	"_mbtowc_state\000"
 2516      6F77635F 
 2516      73746174 
 2516      6500
 2517              	.LASF89:
 2518 06bc 5F703573 		.ascii	"_p5s\000"
 2518      00
 2519              	.LASF62:
 2520 06c1 5F6C6266 		.ascii	"_lbfsize\000"
 2520      73697A65 
 2520      00
 2521              	.LASF143:
 2522 06ca 72737764 		.ascii	"rswdt_disable\000"
 2522      745F6469 
 2522      7361626C 
 2522      6500
 2523              	.LASF42:
 2524 06d8 5F5F746D 		.ascii	"__tm_mday\000"
 2524      5F6D6461 
 2524      7900
 2525              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
