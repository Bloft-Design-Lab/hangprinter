ARM GAS  /tmp/cc0x0SVd.s 			page 1


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
  12              		.file	"wdt.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.wdt_get_timeout_value,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	wdt_get_timeout_value
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	wdt_get_timeout_value, %function
  25              	wdt_get_timeout_value:
  26              	.LFB142:
  27              		.file 1 "../asf/sam/drivers/wdt/wdt.c"
   1:../asf/sam/drivers/wdt/wdt.c **** /**
   2:../asf/sam/drivers/wdt/wdt.c ****  * \file
   3:../asf/sam/drivers/wdt/wdt.c ****  *
   4:../asf/sam/drivers/wdt/wdt.c ****  * \brief Watchdog Timer (WDT) driver for SAM.
   5:../asf/sam/drivers/wdt/wdt.c ****  *
   6:../asf/sam/drivers/wdt/wdt.c ****  * Copyright (c) 2011-2015 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/wdt/wdt.c ****  *
   8:../asf/sam/drivers/wdt/wdt.c ****  * \asf_license_start
   9:../asf/sam/drivers/wdt/wdt.c ****  *
  10:../asf/sam/drivers/wdt/wdt.c ****  * \page License
  11:../asf/sam/drivers/wdt/wdt.c ****  *
  12:../asf/sam/drivers/wdt/wdt.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/wdt/wdt.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/wdt/wdt.c ****  *
  15:../asf/sam/drivers/wdt/wdt.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/wdt/wdt.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/wdt/wdt.c ****  *
  18:../asf/sam/drivers/wdt/wdt.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/wdt/wdt.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/wdt/wdt.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/wdt/wdt.c ****  *
  22:../asf/sam/drivers/wdt/wdt.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/wdt/wdt.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/wdt/wdt.c ****  *
  25:../asf/sam/drivers/wdt/wdt.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/wdt/wdt.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/wdt/wdt.c ****  *
  28:../asf/sam/drivers/wdt/wdt.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/wdt/wdt.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/wdt/wdt.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/cc0x0SVd.s 			page 2


  31:../asf/sam/drivers/wdt/wdt.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/wdt/wdt.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/wdt/wdt.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/wdt/wdt.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/wdt/wdt.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/wdt/wdt.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/wdt/wdt.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/wdt/wdt.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/wdt/wdt.c ****  *
  40:../asf/sam/drivers/wdt/wdt.c ****  * \asf_license_stop
  41:../asf/sam/drivers/wdt/wdt.c ****  *
  42:../asf/sam/drivers/wdt/wdt.c ****  */
  43:../asf/sam/drivers/wdt/wdt.c **** /*
  44:../asf/sam/drivers/wdt/wdt.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/wdt/wdt.c ****  */
  46:../asf/sam/drivers/wdt/wdt.c **** 
  47:../asf/sam/drivers/wdt/wdt.c **** #include "wdt.h"
  48:../asf/sam/drivers/wdt/wdt.c **** 
  49:../asf/sam/drivers/wdt/wdt.c **** /// @cond 0
  50:../asf/sam/drivers/wdt/wdt.c **** /**INDENT-OFF**/
  51:../asf/sam/drivers/wdt/wdt.c **** #ifdef __cplusplus
  52:../asf/sam/drivers/wdt/wdt.c **** extern "C" {
  53:../asf/sam/drivers/wdt/wdt.c **** #endif
  54:../asf/sam/drivers/wdt/wdt.c **** /**INDENT-ON**/
  55:../asf/sam/drivers/wdt/wdt.c **** /// @endcond
  56:../asf/sam/drivers/wdt/wdt.c **** 
  57:../asf/sam/drivers/wdt/wdt.c **** /**
  58:../asf/sam/drivers/wdt/wdt.c ****  * \defgroup sam_drivers_wdt_group Watchdog Timer (WDT)
  59:../asf/sam/drivers/wdt/wdt.c ****  *
  60:../asf/sam/drivers/wdt/wdt.c ****  * Driver for the WDT (Watchdog Timer). This driver provides access to the main
  61:../asf/sam/drivers/wdt/wdt.c ****  * features of the WDT controller.
  62:../asf/sam/drivers/wdt/wdt.c ****  * The Watchdog Timer can be used to prevent system lock-up if the software
  63:../asf/sam/drivers/wdt/wdt.c ****  * becomes trapped in a deadlock. It features a 12-bit down counter that allows
  64:../asf/sam/drivers/wdt/wdt.c ****  * a watchdog period of up to 16 seconds (slow clock at 32.768 kHz). It can
  65:../asf/sam/drivers/wdt/wdt.c ****  * generate a general reset or a processor reset only. In addition, it can be
  66:../asf/sam/drivers/wdt/wdt.c ****  * stopped while the processor is in debug mode or idle mode.
  67:../asf/sam/drivers/wdt/wdt.c ****  *
  68:../asf/sam/drivers/wdt/wdt.c ****  * @{
  69:../asf/sam/drivers/wdt/wdt.c ****  */
  70:../asf/sam/drivers/wdt/wdt.c **** 
  71:../asf/sam/drivers/wdt/wdt.c **** #define WDT_KEY_PASSWORD  0xA5000000
  72:../asf/sam/drivers/wdt/wdt.c **** #define WDT_SLCK_DIV      128
  73:../asf/sam/drivers/wdt/wdt.c **** #define WDT_MAX_VALUE     4095
  74:../asf/sam/drivers/wdt/wdt.c **** 
  75:../asf/sam/drivers/wdt/wdt.c **** /**
  76:../asf/sam/drivers/wdt/wdt.c ****  * \brief Get counter value or permitted range value of watchdog timer from the
  77:../asf/sam/drivers/wdt/wdt.c ****  * desired timeout period (in us).
  78:../asf/sam/drivers/wdt/wdt.c ****  *
  79:../asf/sam/drivers/wdt/wdt.c ****  * \note The value returned by this function can be used by wdt_init() if it is
  80:../asf/sam/drivers/wdt/wdt.c ****  * not WDT_INVALID_ARGUMENT.
  81:../asf/sam/drivers/wdt/wdt.c ****  *
  82:../asf/sam/drivers/wdt/wdt.c ****  * \param ul_us The desired timeout period (in us).
  83:../asf/sam/drivers/wdt/wdt.c ****  * \param ul_sclk The slow clock on board (in Hz).
  84:../asf/sam/drivers/wdt/wdt.c ****  *
  85:../asf/sam/drivers/wdt/wdt.c ****  * \return If the desired period is beyond the watchdog period, this function
  86:../asf/sam/drivers/wdt/wdt.c ****  * returns WDT_INVALID_ARGUMENT. Otherwise it returns valid value.
  87:../asf/sam/drivers/wdt/wdt.c ****  */
ARM GAS  /tmp/cc0x0SVd.s 			page 3


  88:../asf/sam/drivers/wdt/wdt.c **** uint32_t wdt_get_timeout_value(uint32_t ul_us, uint32_t ul_sclk)
  89:../asf/sam/drivers/wdt/wdt.c **** {
  28              		.loc 1 89 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
  90:../asf/sam/drivers/wdt/wdt.c **** 	uint32_t max, min;
  91:../asf/sam/drivers/wdt/wdt.c **** 
  92:../asf/sam/drivers/wdt/wdt.c **** 	min = WDT_SLCK_DIV * 1000000 / ul_sclk;
  34              		.loc 1 92 0
  35 0000 084B     		ldr	r3, .L6
  36 0002 B3FBF1F1 		udiv	r1, r3, r1
  37              	.LVL1:
  93:../asf/sam/drivers/wdt/wdt.c **** 	max = min * WDT_MAX_VALUE;
  38              		.loc 1 93 0
  39 0006 C1EB0133 		rsb	r3, r1, r1, lsl #12
  94:../asf/sam/drivers/wdt/wdt.c **** 
  95:../asf/sam/drivers/wdt/wdt.c **** 	if ((ul_us < min) || (ul_us > max)) {
  40              		.loc 1 95 0
  41 000a 8342     		cmp	r3, r0
  42 000c 01D3     		bcc	.L3
  43 000e 8142     		cmp	r1, r0
  44 0010 02D9     		bls	.L5
  45              	.L3:
  96:../asf/sam/drivers/wdt/wdt.c **** 		return WDT_INVALID_ARGUMENT;
  46              		.loc 1 96 0
  47 0012 4FF6FF70 		movw	r0, #65535
  48              	.LVL2:
  97:../asf/sam/drivers/wdt/wdt.c **** 	}
  98:../asf/sam/drivers/wdt/wdt.c **** 
  99:../asf/sam/drivers/wdt/wdt.c **** 	return WDT_MR_WDV(ul_us / min);
 100:../asf/sam/drivers/wdt/wdt.c **** }
  49              		.loc 1 100 0
  50 0016 7047     		bx	lr
  51              	.LVL3:
  52              	.L5:
  99:../asf/sam/drivers/wdt/wdt.c **** }
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
  64              		.size	wdt_get_timeout_value, .-wdt_get_timeout_value
  65              		.section	.text.wdt_init,"ax",%progbits
  66              		.align	1
  67              		.p2align 2,,3
  68              		.global	wdt_init
  69              		.syntax unified
  70              		.thumb
ARM GAS  /tmp/cc0x0SVd.s 			page 4


  71              		.thumb_func
  72              		.fpu fpv5-d16
  73              		.type	wdt_init, %function
  74              	wdt_init:
  75              	.LFB143:
 101:../asf/sam/drivers/wdt/wdt.c **** 
 102:../asf/sam/drivers/wdt/wdt.c **** /**
 103:../asf/sam/drivers/wdt/wdt.c ****  * \brief Initialize watchdog timer with the given mode.
 104:../asf/sam/drivers/wdt/wdt.c ****  *
 105:../asf/sam/drivers/wdt/wdt.c ****  * \param p_wdt Pointer to a WDT instance.
 106:../asf/sam/drivers/wdt/wdt.c ****  * \param ul_mode Bitmask of watchdog timer mode.
 107:../asf/sam/drivers/wdt/wdt.c ****  * \param us_counter The value loaded in the 12-bit Watchdog Counter.
 108:../asf/sam/drivers/wdt/wdt.c ****  * \param us_delta The permitted range for reloading the Watchdog Timer.
 109:../asf/sam/drivers/wdt/wdt.c ****  */
 110:../asf/sam/drivers/wdt/wdt.c **** void wdt_init(Wdt *p_wdt, uint32_t ul_mode, uint16_t us_counter,
 111:../asf/sam/drivers/wdt/wdt.c **** 		uint16_t us_delta)
 112:../asf/sam/drivers/wdt/wdt.c **** {
  76              		.loc 1 112 0
  77              		.cfi_startproc
  78              		@ args = 0, pretend = 0, frame = 0
  79              		@ frame_needed = 0, uses_anonymous_args = 0
  80              		@ link register save eliminated.
  81              	.LVL5:
  82 0000 10B4     		push	{r4}
  83              		.cfi_def_cfa_offset 4
  84              		.cfi_offset 4, -4
 113:../asf/sam/drivers/wdt/wdt.c **** 	p_wdt->WDT_MR = ul_mode |
 114:../asf/sam/drivers/wdt/wdt.c **** 			WDT_MR_WDV(us_counter) | WDT_MR_WDD(us_delta);
  85              		.loc 1 114 0
  86 0002 054C     		ldr	r4, .L10
  87 0004 C2F30B02 		ubfx	r2, r2, #0, #12
  88              	.LVL6:
  89 0008 04EA0343 		and	r3, r4, r3, lsl #16
  90              	.LVL7:
 115:../asf/sam/drivers/wdt/wdt.c **** }
  91              		.loc 1 115 0
  92 000c 5DF8044B 		ldr	r4, [sp], #4
  93              		.cfi_restore 4
  94              		.cfi_def_cfa_offset 0
 114:../asf/sam/drivers/wdt/wdt.c **** }
  95              		.loc 1 114 0
  96 0010 1343     		orrs	r3, r3, r2
  97 0012 0B43     		orrs	r3, r3, r1
 113:../asf/sam/drivers/wdt/wdt.c **** 	p_wdt->WDT_MR = ul_mode |
  98              		.loc 1 113 0
  99 0014 4360     		str	r3, [r0, #4]
 100              		.loc 1 115 0
 101 0016 7047     		bx	lr
 102              	.L11:
 103              		.align	2
 104              	.L10:
 105 0018 0000FF0F 		.word	268369920
 106              		.cfi_endproc
 107              	.LFE143:
 108              		.size	wdt_init, .-wdt_init
 109              		.section	.text.wdt_disable,"ax",%progbits
 110              		.align	1
ARM GAS  /tmp/cc0x0SVd.s 			page 5


 111              		.p2align 2,,3
 112              		.global	wdt_disable
 113              		.syntax unified
 114              		.thumb
 115              		.thumb_func
 116              		.fpu fpv5-d16
 117              		.type	wdt_disable, %function
 118              	wdt_disable:
 119              	.LFB144:
 116:../asf/sam/drivers/wdt/wdt.c **** 
 117:../asf/sam/drivers/wdt/wdt.c **** /**
 118:../asf/sam/drivers/wdt/wdt.c ****  * \brief Disable the watchdog timer.
 119:../asf/sam/drivers/wdt/wdt.c ****  */
 120:../asf/sam/drivers/wdt/wdt.c **** void wdt_disable(Wdt *p_wdt)
 121:../asf/sam/drivers/wdt/wdt.c **** {
 120              		.loc 1 121 0
 121              		.cfi_startproc
 122              		@ args = 0, pretend = 0, frame = 0
 123              		@ frame_needed = 0, uses_anonymous_args = 0
 124              		@ link register save eliminated.
 125              	.LVL8:
 122:../asf/sam/drivers/wdt/wdt.c **** 	p_wdt->WDT_MR = WDT_MR_WDDIS;
 126              		.loc 1 122 0
 127 0000 4FF40043 		mov	r3, #32768
 128 0004 4360     		str	r3, [r0, #4]
 129 0006 7047     		bx	lr
 130              		.cfi_endproc
 131              	.LFE144:
 132              		.size	wdt_disable, .-wdt_disable
 133              		.section	.text.wdt_restart,"ax",%progbits
 134              		.align	1
 135              		.p2align 2,,3
 136              		.global	wdt_restart
 137              		.syntax unified
 138              		.thumb
 139              		.thumb_func
 140              		.fpu fpv5-d16
 141              		.type	wdt_restart, %function
 142              	wdt_restart:
 143              	.LFB145:
 123:../asf/sam/drivers/wdt/wdt.c **** 
 124:../asf/sam/drivers/wdt/wdt.c **** }
 125:../asf/sam/drivers/wdt/wdt.c **** 
 126:../asf/sam/drivers/wdt/wdt.c **** /**
 127:../asf/sam/drivers/wdt/wdt.c ****  * \brief Restart the watchdog timer.
 128:../asf/sam/drivers/wdt/wdt.c ****  */
 129:../asf/sam/drivers/wdt/wdt.c **** void wdt_restart(Wdt *p_wdt)
 130:../asf/sam/drivers/wdt/wdt.c **** {
 144              		.loc 1 130 0
 145              		.cfi_startproc
 146              		@ args = 0, pretend = 0, frame = 0
 147              		@ frame_needed = 0, uses_anonymous_args = 0
 148              		@ link register save eliminated.
 149              	.LVL9:
 131:../asf/sam/drivers/wdt/wdt.c **** 	if (p_wdt == WDT) {
 150              		.loc 1 131 0
 151 0000 034B     		ldr	r3, .L16
ARM GAS  /tmp/cc0x0SVd.s 			page 6


 152 0002 9842     		cmp	r0, r3
 153 0004 00D0     		beq	.L15
 154 0006 7047     		bx	lr
 155              	.L15:
 132:../asf/sam/drivers/wdt/wdt.c **** 		p_wdt->WDT_CR = WDT_KEY_PASSWORD | WDT_CR_WDRSTT;
 156              		.loc 1 132 0
 157 0008 024B     		ldr	r3, .L16+4
 158 000a 0360     		str	r3, [r0]
 159 000c 7047     		bx	lr
 160              	.L17:
 161 000e 00BF     		.align	2
 162              	.L16:
 163 0010 50180E40 		.word	1074665552
 164 0014 010000A5 		.word	-1526726655
 165              		.cfi_endproc
 166              	.LFE145:
 167              		.size	wdt_restart, .-wdt_restart
 168              		.section	.text.wdt_get_status,"ax",%progbits
 169              		.align	1
 170              		.p2align 2,,3
 171              		.global	wdt_get_status
 172              		.syntax unified
 173              		.thumb
 174              		.thumb_func
 175              		.fpu fpv5-d16
 176              		.type	wdt_get_status, %function
 177              	wdt_get_status:
 178              	.LFB146:
 133:../asf/sam/drivers/wdt/wdt.c **** 	}
 134:../asf/sam/drivers/wdt/wdt.c **** #if (SAM4C || SAM4CM || SAM4CP)
 135:../asf/sam/drivers/wdt/wdt.c **** 	else {
 136:../asf/sam/drivers/wdt/wdt.c **** 		p_wdt->WDT_CR = RSWDT_CR_KEY(0xC4u) | RSWDT_CR_WDRSTT;
 137:../asf/sam/drivers/wdt/wdt.c **** 	}
 138:../asf/sam/drivers/wdt/wdt.c **** #endif
 139:../asf/sam/drivers/wdt/wdt.c **** }
 140:../asf/sam/drivers/wdt/wdt.c **** 
 141:../asf/sam/drivers/wdt/wdt.c **** /**
 142:../asf/sam/drivers/wdt/wdt.c ****  * \brief Check the watchdog timer status.
 143:../asf/sam/drivers/wdt/wdt.c ****  *
 144:../asf/sam/drivers/wdt/wdt.c ****  * \return Bitmask of watchdog timer status.
 145:../asf/sam/drivers/wdt/wdt.c ****  */
 146:../asf/sam/drivers/wdt/wdt.c **** uint32_t wdt_get_status(Wdt *p_wdt)
 147:../asf/sam/drivers/wdt/wdt.c **** {
 179              		.loc 1 147 0
 180              		.cfi_startproc
 181              		@ args = 0, pretend = 0, frame = 0
 182              		@ frame_needed = 0, uses_anonymous_args = 0
 183              		@ link register save eliminated.
 184              	.LVL10:
 148:../asf/sam/drivers/wdt/wdt.c **** 	return p_wdt->WDT_SR;
 185              		.loc 1 148 0
 186 0000 8068     		ldr	r0, [r0, #8]
 187              	.LVL11:
 149:../asf/sam/drivers/wdt/wdt.c **** }
 188              		.loc 1 149 0
 189 0002 7047     		bx	lr
 190              		.cfi_endproc
ARM GAS  /tmp/cc0x0SVd.s 			page 7


 191              	.LFE146:
 192              		.size	wdt_get_status, .-wdt_get_status
 193              		.section	.text.wdt_get_us_timeout_period,"ax",%progbits
 194              		.align	1
 195              		.p2align 2,,3
 196              		.global	wdt_get_us_timeout_period
 197              		.syntax unified
 198              		.thumb
 199              		.thumb_func
 200              		.fpu fpv5-d16
 201              		.type	wdt_get_us_timeout_period, %function
 202              	wdt_get_us_timeout_period:
 203              	.LFB147:
 150:../asf/sam/drivers/wdt/wdt.c **** 
 151:../asf/sam/drivers/wdt/wdt.c **** /**
 152:../asf/sam/drivers/wdt/wdt.c ****  * \brief Get the timeout period of the WatchDog Timer in microseconds.
 153:../asf/sam/drivers/wdt/wdt.c ****  *
 154:../asf/sam/drivers/wdt/wdt.c ****  * \param p_wdt Pointer to a WDT instance.
 155:../asf/sam/drivers/wdt/wdt.c ****  * \param ul_sclk The slow clock frequency (in Hz).
 156:../asf/sam/drivers/wdt/wdt.c ****  *
 157:../asf/sam/drivers/wdt/wdt.c ****  * \return The timeout period in microseconds.
 158:../asf/sam/drivers/wdt/wdt.c ****  */
 159:../asf/sam/drivers/wdt/wdt.c **** uint32_t wdt_get_us_timeout_period(Wdt *p_wdt, uint32_t ul_sclk)
 160:../asf/sam/drivers/wdt/wdt.c **** {
 204              		.loc 1 160 0
 205              		.cfi_startproc
 206              		@ args = 0, pretend = 0, frame = 0
 207              		@ frame_needed = 0, uses_anonymous_args = 0
 208              		@ link register save eliminated.
 209              	.LVL12:
 161:../asf/sam/drivers/wdt/wdt.c **** 	return WDT_MR_WDV(p_wdt->WDT_MR) * WDT_SLCK_DIV / ul_sclk * 1000000;
 210              		.loc 1 161 0
 211 0000 4368     		ldr	r3, [r0, #4]
 212 0002 044A     		ldr	r2, .L20
 213 0004 C3F30B03 		ubfx	r3, r3, #0, #12
 214 0008 DB01     		lsls	r3, r3, #7
 215 000a B3FBF1F1 		udiv	r1, r3, r1
 216              	.LVL13:
 162:../asf/sam/drivers/wdt/wdt.c **** }
 217              		.loc 1 162 0
 218 000e 02FB01F0 		mul	r0, r2, r1
 219              	.LVL14:
 220 0012 7047     		bx	lr
 221              	.L21:
 222              		.align	2
 223              	.L20:
 224 0014 40420F00 		.word	1000000
 225              		.cfi_endproc
 226              	.LFE147:
 227              		.size	wdt_get_us_timeout_period, .-wdt_get_us_timeout_period
 228              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 229              		.align	2
 230              		.type	cpu_irq_critical_section_counter, %object
 231              		.size	cpu_irq_critical_section_counter, 4
 232              	cpu_irq_critical_section_counter:
 233 0000 00000000 		.space	4
 234              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
ARM GAS  /tmp/cc0x0SVd.s 			page 8


 235              		.type	cpu_irq_prev_interrupt_state, %object
 236              		.size	cpu_irq_prev_interrupt_state, 1
 237              	cpu_irq_prev_interrupt_state:
 238 0000 00       		.space	1
 239              		.text
 240              	.Letext0:
 241              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 242              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 243              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 244              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 245              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/wdt.
 246              		.file 7 "/usr/include/newlib/sys/lock.h"
 247              		.file 8 "/usr/include/newlib/sys/_types.h"
 248              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 249              		.file 10 "/usr/include/newlib/sys/reent.h"
 250              		.file 11 "/usr/include/newlib/stdlib.h"
 251              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 252              		.section	.debug_info,"",%progbits
 253              	.Ldebug_info0:
 254 0000 BC0A0000 		.4byte	0xabc
 255 0004 0400     		.2byte	0x4
 256 0006 00000000 		.4byte	.Ldebug_abbrev0
 257 000a 04       		.byte	0x4
 258 000b 01       		.uleb128 0x1
 259 000c E2020000 		.4byte	.LASF149
 260 0010 0C       		.byte	0xc
 261 0011 00000000 		.4byte	.LASF150
 262 0015 93050000 		.4byte	.LASF151
 263 0019 00000000 		.4byte	.Ldebug_ranges0+0
 264 001d 00000000 		.4byte	0
 265 0021 00000000 		.4byte	.Ldebug_line0
 266 0025 02       		.uleb128 0x2
 267 0026 04       		.byte	0x4
 268 0027 05       		.byte	0x5
 269 0028 696E7400 		.ascii	"int\000"
 270 002c 03       		.uleb128 0x3
 271 002d 04       		.byte	0x4
 272 002e 07       		.byte	0x7
 273 002f 2A050000 		.4byte	.LASF0
 274 0033 03       		.uleb128 0x3
 275 0034 01       		.byte	0x1
 276 0035 06       		.byte	0x6
 277 0036 03010000 		.4byte	.LASF1
 278 003a 03       		.uleb128 0x3
 279 003b 01       		.byte	0x1
 280 003c 08       		.byte	0x8
 281 003d 13040000 		.4byte	.LASF2
 282 0041 03       		.uleb128 0x3
 283 0042 02       		.byte	0x2
 284 0043 05       		.byte	0x5
 285 0044 29000000 		.4byte	.LASF3
 286 0048 04       		.uleb128 0x4
 287 0049 37050000 		.4byte	.LASF5
 288 004d 02       		.byte	0x2
 289 004e 2B       		.byte	0x2b
 290 004f 53000000 		.4byte	0x53
 291 0053 03       		.uleb128 0x3
ARM GAS  /tmp/cc0x0SVd.s 			page 9


 292 0054 02       		.byte	0x2
 293 0055 07       		.byte	0x7
 294 0056 DB010000 		.4byte	.LASF4
 295 005a 04       		.uleb128 0x4
 296 005b 48050000 		.4byte	.LASF6
 297 005f 02       		.byte	0x2
 298 0060 3F       		.byte	0x3f
 299 0061 65000000 		.4byte	0x65
 300 0065 03       		.uleb128 0x3
 301 0066 04       		.byte	0x4
 302 0067 05       		.byte	0x5
 303 0068 5E010000 		.4byte	.LASF7
 304 006c 04       		.uleb128 0x4
 305 006d F3010000 		.4byte	.LASF8
 306 0071 02       		.byte	0x2
 307 0072 41       		.byte	0x41
 308 0073 77000000 		.4byte	0x77
 309 0077 03       		.uleb128 0x3
 310 0078 04       		.byte	0x4
 311 0079 07       		.byte	0x7
 312 007a 52020000 		.4byte	.LASF9
 313 007e 03       		.uleb128 0x3
 314 007f 08       		.byte	0x8
 315 0080 05       		.byte	0x5
 316 0081 87010000 		.4byte	.LASF10
 317 0085 03       		.uleb128 0x3
 318 0086 08       		.byte	0x8
 319 0087 07       		.byte	0x7
 320 0088 1C010000 		.4byte	.LASF11
 321 008c 04       		.uleb128 0x4
 322 008d 95010000 		.4byte	.LASF12
 323 0091 03       		.byte	0x3
 324 0092 24       		.byte	0x24
 325 0093 48000000 		.4byte	0x48
 326 0097 04       		.uleb128 0x4
 327 0098 0B040000 		.4byte	.LASF13
 328 009c 03       		.byte	0x3
 329 009d 2C       		.byte	0x2c
 330 009e 5A000000 		.4byte	0x5a
 331 00a2 05       		.uleb128 0x5
 332 00a3 97000000 		.4byte	0x97
 333 00a7 04       		.uleb128 0x4
 334 00a8 FA050000 		.4byte	.LASF14
 335 00ac 03       		.byte	0x3
 336 00ad 30       		.byte	0x30
 337 00ae 6C000000 		.4byte	0x6c
 338 00b2 05       		.uleb128 0x5
 339 00b3 A7000000 		.4byte	0xa7
 340 00b7 06       		.uleb128 0x6
 341 00b8 B2000000 		.4byte	0xb2
 342 00bc 07       		.uleb128 0x7
 343 00bd 04       		.byte	0x4
 344 00be 03       		.uleb128 0x3
 345 00bf 04       		.byte	0x4
 346 00c0 07       		.byte	0x7
 347 00c1 D9020000 		.4byte	.LASF15
 348 00c5 08       		.uleb128 0x8
ARM GAS  /tmp/cc0x0SVd.s 			page 10


 349 00c6 AA000000 		.4byte	.LASF16
 350 00ca 04       		.byte	0x4
 351 00cb 6508     		.2byte	0x865
 352 00cd A2000000 		.4byte	0xa2
 353 00d1 09       		.uleb128 0x9
 354 00d2 32020000 		.4byte	.LASF17
 355 00d6 05       		.byte	0x5
 356 00d7 3A       		.byte	0x3a
 357 00d8 A7000000 		.4byte	0xa7
 358 00dc 0A       		.uleb128 0xa
 359 00dd 0C       		.byte	0xc
 360 00de 06       		.byte	0x6
 361 00df 38       		.byte	0x38
 362 00e0 09010000 		.4byte	0x109
 363 00e4 0B       		.uleb128 0xb
 364 00e5 0F010000 		.4byte	.LASF18
 365 00e9 06       		.byte	0x6
 366 00ea 39       		.byte	0x39
 367 00eb B2000000 		.4byte	0xb2
 368 00ef 00       		.byte	0
 369 00f0 0B       		.uleb128 0xb
 370 00f1 C1020000 		.4byte	.LASF19
 371 00f5 06       		.byte	0x6
 372 00f6 3A       		.byte	0x3a
 373 00f7 B2000000 		.4byte	0xb2
 374 00fb 04       		.byte	0x4
 375 00fc 0B       		.uleb128 0xb
 376 00fd B5010000 		.4byte	.LASF20
 377 0101 06       		.byte	0x6
 378 0102 3B       		.byte	0x3b
 379 0103 B7000000 		.4byte	0xb7
 380 0107 08       		.byte	0x8
 381 0108 00       		.byte	0
 382 0109 0C       		.uleb128 0xc
 383 010a 57647400 		.ascii	"Wdt\000"
 384 010e 06       		.byte	0x6
 385 010f 3C       		.byte	0x3c
 386 0110 DC000000 		.4byte	0xdc
 387 0114 04       		.uleb128 0x4
 388 0115 E1030000 		.4byte	.LASF21
 389 0119 07       		.byte	0x7
 390 011a 07       		.byte	0x7
 391 011b 25000000 		.4byte	0x25
 392 011f 04       		.uleb128 0x4
 393 0120 F5000000 		.4byte	.LASF22
 394 0124 08       		.byte	0x8
 395 0125 2C       		.byte	0x2c
 396 0126 65000000 		.4byte	0x65
 397 012a 04       		.uleb128 0x4
 398 012b 07050000 		.4byte	.LASF23
 399 012f 08       		.byte	0x8
 400 0130 72       		.byte	0x72
 401 0131 65000000 		.4byte	0x65
 402 0135 0D       		.uleb128 0xd
 403 0136 B8030000 		.4byte	.LASF24
 404 013a 09       		.byte	0x9
 405 013b 6501     		.2byte	0x165
ARM GAS  /tmp/cc0x0SVd.s 			page 11


 406 013d 2C000000 		.4byte	0x2c
 407 0141 0E       		.uleb128 0xe
 408 0142 04       		.byte	0x4
 409 0143 08       		.byte	0x8
 410 0144 A6       		.byte	0xa6
 411 0145 60010000 		.4byte	0x160
 412 0149 0F       		.uleb128 0xf
 413 014a A3020000 		.4byte	.LASF25
 414 014e 08       		.byte	0x8
 415 014f A8       		.byte	0xa8
 416 0150 35010000 		.4byte	0x135
 417 0154 0F       		.uleb128 0xf
 418 0155 2B020000 		.4byte	.LASF26
 419 0159 08       		.byte	0x8
 420 015a A9       		.byte	0xa9
 421 015b 60010000 		.4byte	0x160
 422 015f 00       		.byte	0
 423 0160 10       		.uleb128 0x10
 424 0161 3A000000 		.4byte	0x3a
 425 0165 70010000 		.4byte	0x170
 426 0169 11       		.uleb128 0x11
 427 016a BE000000 		.4byte	0xbe
 428 016e 03       		.byte	0x3
 429 016f 00       		.byte	0
 430 0170 0A       		.uleb128 0xa
 431 0171 08       		.byte	0x8
 432 0172 08       		.byte	0x8
 433 0173 A3       		.byte	0xa3
 434 0174 91010000 		.4byte	0x191
 435 0178 0B       		.uleb128 0xb
 436 0179 DD040000 		.4byte	.LASF27
 437 017d 08       		.byte	0x8
 438 017e A5       		.byte	0xa5
 439 017f 25000000 		.4byte	0x25
 440 0183 00       		.byte	0
 441 0184 0B       		.uleb128 0xb
 442 0185 E5040000 		.4byte	.LASF28
 443 0189 08       		.byte	0x8
 444 018a AA       		.byte	0xaa
 445 018b 41010000 		.4byte	0x141
 446 018f 04       		.byte	0x4
 447 0190 00       		.byte	0
 448 0191 04       		.uleb128 0x4
 449 0192 63040000 		.4byte	.LASF29
 450 0196 08       		.byte	0x8
 451 0197 AB       		.byte	0xab
 452 0198 70010000 		.4byte	0x170
 453 019c 04       		.uleb128 0x4
 454 019d 30040000 		.4byte	.LASF30
 455 01a1 08       		.byte	0x8
 456 01a2 AF       		.byte	0xaf
 457 01a3 14010000 		.4byte	0x114
 458 01a7 04       		.uleb128 0x4
 459 01a8 C2050000 		.4byte	.LASF31
 460 01ac 0A       		.byte	0xa
 461 01ad 16       		.byte	0x16
 462 01ae 77000000 		.4byte	0x77
ARM GAS  /tmp/cc0x0SVd.s 			page 12


 463 01b2 12       		.uleb128 0x12
 464 01b3 18020000 		.4byte	.LASF36
 465 01b7 18       		.byte	0x18
 466 01b8 0A       		.byte	0xa
 467 01b9 2D       		.byte	0x2d
 468 01ba 05020000 		.4byte	0x205
 469 01be 0B       		.uleb128 0xb
 470 01bf 52050000 		.4byte	.LASF32
 471 01c3 0A       		.byte	0xa
 472 01c4 2F       		.byte	0x2f
 473 01c5 05020000 		.4byte	0x205
 474 01c9 00       		.byte	0
 475 01ca 13       		.uleb128 0x13
 476 01cb 5F6B00   		.ascii	"_k\000"
 477 01ce 0A       		.byte	0xa
 478 01cf 30       		.byte	0x30
 479 01d0 25000000 		.4byte	0x25
 480 01d4 04       		.byte	0x4
 481 01d5 0B       		.uleb128 0xb
 482 01d6 C8040000 		.4byte	.LASF33
 483 01da 0A       		.byte	0xa
 484 01db 30       		.byte	0x30
 485 01dc 25000000 		.4byte	0x25
 486 01e0 08       		.byte	0x8
 487 01e1 0B       		.uleb128 0xb
 488 01e2 FE010000 		.4byte	.LASF34
 489 01e6 0A       		.byte	0xa
 490 01e7 30       		.byte	0x30
 491 01e8 25000000 		.4byte	0x25
 492 01ec 0C       		.byte	0xc
 493 01ed 0B       		.uleb128 0xb
 494 01ee 1A060000 		.4byte	.LASF35
 495 01f2 0A       		.byte	0xa
 496 01f3 30       		.byte	0x30
 497 01f4 25000000 		.4byte	0x25
 498 01f8 10       		.byte	0x10
 499 01f9 13       		.uleb128 0x13
 500 01fa 5F7800   		.ascii	"_x\000"
 501 01fd 0A       		.byte	0xa
 502 01fe 31       		.byte	0x31
 503 01ff 0B020000 		.4byte	0x20b
 504 0203 14       		.byte	0x14
 505 0204 00       		.byte	0
 506 0205 14       		.uleb128 0x14
 507 0206 04       		.byte	0x4
 508 0207 B2010000 		.4byte	0x1b2
 509 020b 10       		.uleb128 0x10
 510 020c A7010000 		.4byte	0x1a7
 511 0210 1B020000 		.4byte	0x21b
 512 0214 11       		.uleb128 0x11
 513 0215 BE000000 		.4byte	0xbe
 514 0219 00       		.byte	0
 515 021a 00       		.byte	0
 516 021b 12       		.uleb128 0x12
 517 021c 26020000 		.4byte	.LASF37
 518 0220 24       		.byte	0x24
 519 0221 0A       		.byte	0xa
ARM GAS  /tmp/cc0x0SVd.s 			page 13


 520 0222 35       		.byte	0x35
 521 0223 94020000 		.4byte	0x294
 522 0227 0B       		.uleb128 0xb
 523 0228 DD000000 		.4byte	.LASF38
 524 022c 0A       		.byte	0xa
 525 022d 37       		.byte	0x37
 526 022e 25000000 		.4byte	0x25
 527 0232 00       		.byte	0
 528 0233 0B       		.uleb128 0xb
 529 0234 94060000 		.4byte	.LASF39
 530 0238 0A       		.byte	0xa
 531 0239 38       		.byte	0x38
 532 023a 25000000 		.4byte	0x25
 533 023e 04       		.byte	0x4
 534 023f 0B       		.uleb128 0xb
 535 0240 ED040000 		.4byte	.LASF40
 536 0244 0A       		.byte	0xa
 537 0245 39       		.byte	0x39
 538 0246 25000000 		.4byte	0x25
 539 024a 08       		.byte	0x8
 540 024b 0B       		.uleb128 0xb
 541 024c B5060000 		.4byte	.LASF41
 542 0250 0A       		.byte	0xa
 543 0251 3A       		.byte	0x3a
 544 0252 25000000 		.4byte	0x25
 545 0256 0C       		.byte	0xc
 546 0257 0B       		.uleb128 0xb
 547 0258 83030000 		.4byte	.LASF42
 548 025c 0A       		.byte	0xa
 549 025d 3B       		.byte	0x3b
 550 025e 25000000 		.4byte	0x25
 551 0262 10       		.byte	0x10
 552 0263 0B       		.uleb128 0xb
 553 0264 CF020000 		.4byte	.LASF43
 554 0268 0A       		.byte	0xa
 555 0269 3C       		.byte	0x3c
 556 026a 25000000 		.4byte	0x25
 557 026e 14       		.byte	0x14
 558 026f 0B       		.uleb128 0xb
 559 0270 FD040000 		.4byte	.LASF44
 560 0274 0A       		.byte	0xa
 561 0275 3D       		.byte	0x3d
 562 0276 25000000 		.4byte	0x25
 563 027a 18       		.byte	0x18
 564 027b 0B       		.uleb128 0xb
 565 027c 39040000 		.4byte	.LASF45
 566 0280 0A       		.byte	0xa
 567 0281 3E       		.byte	0x3e
 568 0282 25000000 		.4byte	0x25
 569 0286 1C       		.byte	0x1c
 570 0287 0B       		.uleb128 0xb
 571 0288 7A060000 		.4byte	.LASF46
 572 028c 0A       		.byte	0xa
 573 028d 3F       		.byte	0x3f
 574 028e 25000000 		.4byte	0x25
 575 0292 20       		.byte	0x20
 576 0293 00       		.byte	0
ARM GAS  /tmp/cc0x0SVd.s 			page 14


 577 0294 15       		.uleb128 0x15
 578 0295 40010000 		.4byte	.LASF47
 579 0299 0801     		.2byte	0x108
 580 029b 0A       		.byte	0xa
 581 029c 48       		.byte	0x48
 582 029d D4020000 		.4byte	0x2d4
 583 02a1 0B       		.uleb128 0xb
 584 02a2 33000000 		.4byte	.LASF48
 585 02a6 0A       		.byte	0xa
 586 02a7 49       		.byte	0x49
 587 02a8 D4020000 		.4byte	0x2d4
 588 02ac 00       		.byte	0
 589 02ad 0B       		.uleb128 0xb
 590 02ae A6040000 		.4byte	.LASF49
 591 02b2 0A       		.byte	0xa
 592 02b3 4A       		.byte	0x4a
 593 02b4 D4020000 		.4byte	0x2d4
 594 02b8 80       		.byte	0x80
 595 02b9 16       		.uleb128 0x16
 596 02ba 65050000 		.4byte	.LASF50
 597 02be 0A       		.byte	0xa
 598 02bf 4C       		.byte	0x4c
 599 02c0 A7010000 		.4byte	0x1a7
 600 02c4 0001     		.2byte	0x100
 601 02c6 16       		.uleb128 0x16
 602 02c7 6E010000 		.4byte	.LASF51
 603 02cb 0A       		.byte	0xa
 604 02cc 4F       		.byte	0x4f
 605 02cd A7010000 		.4byte	0x1a7
 606 02d1 0401     		.2byte	0x104
 607 02d3 00       		.byte	0
 608 02d4 10       		.uleb128 0x10
 609 02d5 BC000000 		.4byte	0xbc
 610 02d9 E4020000 		.4byte	0x2e4
 611 02dd 11       		.uleb128 0x11
 612 02de BE000000 		.4byte	0xbe
 613 02e2 1F       		.byte	0x1f
 614 02e3 00       		.byte	0
 615 02e4 15       		.uleb128 0x15
 616 02e5 8C030000 		.4byte	.LASF52
 617 02e9 9001     		.2byte	0x190
 618 02eb 0A       		.byte	0xa
 619 02ec 5B       		.byte	0x5b
 620 02ed 22030000 		.4byte	0x322
 621 02f1 0B       		.uleb128 0xb
 622 02f2 52050000 		.4byte	.LASF32
 623 02f6 0A       		.byte	0xa
 624 02f7 5C       		.byte	0x5c
 625 02f8 22030000 		.4byte	0x322
 626 02fc 00       		.byte	0
 627 02fd 0B       		.uleb128 0xb
 628 02fe 91040000 		.4byte	.LASF53
 629 0302 0A       		.byte	0xa
 630 0303 5D       		.byte	0x5d
 631 0304 25000000 		.4byte	0x25
 632 0308 04       		.byte	0x4
 633 0309 0B       		.uleb128 0xb
ARM GAS  /tmp/cc0x0SVd.s 			page 15


 634 030a EE010000 		.4byte	.LASF54
 635 030e 0A       		.byte	0xa
 636 030f 5F       		.byte	0x5f
 637 0310 28030000 		.4byte	0x328
 638 0314 08       		.byte	0x8
 639 0315 0B       		.uleb128 0xb
 640 0316 40010000 		.4byte	.LASF47
 641 031a 0A       		.byte	0xa
 642 031b 60       		.byte	0x60
 643 031c 94020000 		.4byte	0x294
 644 0320 88       		.byte	0x88
 645 0321 00       		.byte	0
 646 0322 14       		.uleb128 0x14
 647 0323 04       		.byte	0x4
 648 0324 E4020000 		.4byte	0x2e4
 649 0328 10       		.uleb128 0x10
 650 0329 38030000 		.4byte	0x338
 651 032d 38030000 		.4byte	0x338
 652 0331 11       		.uleb128 0x11
 653 0332 BE000000 		.4byte	0xbe
 654 0336 1F       		.byte	0x1f
 655 0337 00       		.byte	0
 656 0338 14       		.uleb128 0x14
 657 0339 04       		.byte	0x4
 658 033a 3E030000 		.4byte	0x33e
 659 033e 17       		.uleb128 0x17
 660 033f 12       		.uleb128 0x12
 661 0340 43040000 		.4byte	.LASF55
 662 0344 08       		.byte	0x8
 663 0345 0A       		.byte	0xa
 664 0346 73       		.byte	0x73
 665 0347 64030000 		.4byte	0x364
 666 034b 0B       		.uleb128 0xb
 667 034c FF030000 		.4byte	.LASF56
 668 0350 0A       		.byte	0xa
 669 0351 74       		.byte	0x74
 670 0352 64030000 		.4byte	0x364
 671 0356 00       		.byte	0
 672 0357 0B       		.uleb128 0xb
 673 0358 24050000 		.4byte	.LASF57
 674 035c 0A       		.byte	0xa
 675 035d 75       		.byte	0x75
 676 035e 25000000 		.4byte	0x25
 677 0362 04       		.byte	0x4
 678 0363 00       		.byte	0
 679 0364 14       		.uleb128 0x14
 680 0365 04       		.byte	0x4
 681 0366 3A000000 		.4byte	0x3a
 682 036a 12       		.uleb128 0x12
 683 036b 6E040000 		.4byte	.LASF58
 684 036f 68       		.byte	0x68
 685 0370 0A       		.byte	0xa
 686 0371 B3       		.byte	0xb3
 687 0372 94040000 		.4byte	0x494
 688 0376 13       		.uleb128 0x13
 689 0377 5F7000   		.ascii	"_p\000"
 690 037a 0A       		.byte	0xa
ARM GAS  /tmp/cc0x0SVd.s 			page 16


 691 037b B4       		.byte	0xb4
 692 037c 64030000 		.4byte	0x364
 693 0380 00       		.byte	0
 694 0381 13       		.uleb128 0x13
 695 0382 5F7200   		.ascii	"_r\000"
 696 0385 0A       		.byte	0xa
 697 0386 B5       		.byte	0xb5
 698 0387 25000000 		.4byte	0x25
 699 038b 04       		.byte	0x4
 700 038c 13       		.uleb128 0x13
 701 038d 5F7700   		.ascii	"_w\000"
 702 0390 0A       		.byte	0xa
 703 0391 B6       		.byte	0xb6
 704 0392 25000000 		.4byte	0x25
 705 0396 08       		.byte	0x8
 706 0397 0B       		.uleb128 0xb
 707 0398 67010000 		.4byte	.LASF59
 708 039c 0A       		.byte	0xa
 709 039d B7       		.byte	0xb7
 710 039e 41000000 		.4byte	0x41
 711 03a2 0C       		.byte	0xc
 712 03a3 0B       		.uleb128 0xb
 713 03a4 64020000 		.4byte	.LASF60
 714 03a8 0A       		.byte	0xa
 715 03a9 B8       		.byte	0xb8
 716 03aa 41000000 		.4byte	0x41
 717 03ae 0E       		.byte	0xe
 718 03af 13       		.uleb128 0x13
 719 03b0 5F626600 		.ascii	"_bf\000"
 720 03b4 0A       		.byte	0xa
 721 03b5 B9       		.byte	0xb9
 722 03b6 3F030000 		.4byte	0x33f
 723 03ba 10       		.byte	0x10
 724 03bb 0B       		.uleb128 0xb
 725 03bc A1000000 		.4byte	.LASF61
 726 03c0 0A       		.byte	0xa
 727 03c1 BA       		.byte	0xba
 728 03c2 25000000 		.4byte	0x25
 729 03c6 18       		.byte	0x18
 730 03c7 0B       		.uleb128 0xb
 731 03c8 4E010000 		.4byte	.LASF62
 732 03cc 0A       		.byte	0xa
 733 03cd C1       		.byte	0xc1
 734 03ce BC000000 		.4byte	0xbc
 735 03d2 1C       		.byte	0x1c
 736 03d3 0B       		.uleb128 0xb
 737 03d4 20020000 		.4byte	.LASF63
 738 03d8 0A       		.byte	0xa
 739 03d9 C3       		.byte	0xc3
 740 03da 01060000 		.4byte	0x601
 741 03de 20       		.byte	0x20
 742 03df 0B       		.uleb128 0xb
 743 03e0 C8020000 		.4byte	.LASF64
 744 03e4 0A       		.byte	0xa
 745 03e5 C5       		.byte	0xc5
 746 03e6 2B060000 		.4byte	0x62b
 747 03ea 24       		.byte	0x24
ARM GAS  /tmp/cc0x0SVd.s 			page 17


 748 03eb 0B       		.uleb128 0xb
 749 03ec F7040000 		.4byte	.LASF65
 750 03f0 0A       		.byte	0xa
 751 03f1 C8       		.byte	0xc8
 752 03f2 4F060000 		.4byte	0x64f
 753 03f6 28       		.byte	0x28
 754 03f7 0B       		.uleb128 0xb
 755 03f8 FC000000 		.4byte	.LASF66
 756 03fc 0A       		.byte	0xa
 757 03fd C9       		.byte	0xc9
 758 03fe 69060000 		.4byte	0x669
 759 0402 2C       		.byte	0x2c
 760 0403 13       		.uleb128 0x13
 761 0404 5F756200 		.ascii	"_ub\000"
 762 0408 0A       		.byte	0xa
 763 0409 CC       		.byte	0xcc
 764 040a 3F030000 		.4byte	0x33f
 765 040e 30       		.byte	0x30
 766 040f 13       		.uleb128 0x13
 767 0410 5F757000 		.ascii	"_up\000"
 768 0414 0A       		.byte	0xa
 769 0415 CD       		.byte	0xcd
 770 0416 64030000 		.4byte	0x364
 771 041a 38       		.byte	0x38
 772 041b 13       		.uleb128 0x13
 773 041c 5F757200 		.ascii	"_ur\000"
 774 0420 0A       		.byte	0xa
 775 0421 CE       		.byte	0xce
 776 0422 25000000 		.4byte	0x25
 777 0426 3C       		.byte	0x3c
 778 0427 0B       		.uleb128 0xb
 779 0428 16010000 		.4byte	.LASF67
 780 042c 0A       		.byte	0xa
 781 042d D1       		.byte	0xd1
 782 042e 6F060000 		.4byte	0x66f
 783 0432 40       		.byte	0x40
 784 0433 0B       		.uleb128 0xb
 785 0434 6C060000 		.4byte	.LASF68
 786 0438 0A       		.byte	0xa
 787 0439 D2       		.byte	0xd2
 788 043a 7F060000 		.4byte	0x67f
 789 043e 43       		.byte	0x43
 790 043f 13       		.uleb128 0x13
 791 0440 5F6C6200 		.ascii	"_lb\000"
 792 0444 0A       		.byte	0xa
 793 0445 D5       		.byte	0xd5
 794 0446 3F030000 		.4byte	0x33f
 795 044a 44       		.byte	0x44
 796 044b 0B       		.uleb128 0xb
 797 044c 1B050000 		.4byte	.LASF69
 798 0450 0A       		.byte	0xa
 799 0451 D8       		.byte	0xd8
 800 0452 25000000 		.4byte	0x25
 801 0456 4C       		.byte	0x4c
 802 0457 0B       		.uleb128 0xb
 803 0458 AD010000 		.4byte	.LASF70
 804 045c 0A       		.byte	0xa
ARM GAS  /tmp/cc0x0SVd.s 			page 18


 805 045d D9       		.byte	0xd9
 806 045e 1F010000 		.4byte	0x11f
 807 0462 50       		.byte	0x50
 808 0463 0B       		.uleb128 0xb
 809 0464 6A020000 		.4byte	.LASF71
 810 0468 0A       		.byte	0xa
 811 0469 DC       		.byte	0xdc
 812 046a B2040000 		.4byte	0x4b2
 813 046e 54       		.byte	0x54
 814 046f 0B       		.uleb128 0xb
 815 0470 B5020000 		.4byte	.LASF72
 816 0474 0A       		.byte	0xa
 817 0475 E0       		.byte	0xe0
 818 0476 9C010000 		.4byte	0x19c
 819 047a 58       		.byte	0x58
 820 047b 0B       		.uleb128 0xb
 821 047c 76040000 		.4byte	.LASF73
 822 0480 0A       		.byte	0xa
 823 0481 E2       		.byte	0xe2
 824 0482 91010000 		.4byte	0x191
 825 0486 5C       		.byte	0x5c
 826 0487 0B       		.uleb128 0xb
 827 0488 4A040000 		.4byte	.LASF74
 828 048c 0A       		.byte	0xa
 829 048d E3       		.byte	0xe3
 830 048e 25000000 		.4byte	0x25
 831 0492 64       		.byte	0x64
 832 0493 00       		.byte	0
 833 0494 18       		.uleb128 0x18
 834 0495 25000000 		.4byte	0x25
 835 0499 B2040000 		.4byte	0x4b2
 836 049d 19       		.uleb128 0x19
 837 049e B2040000 		.4byte	0x4b2
 838 04a2 19       		.uleb128 0x19
 839 04a3 BC000000 		.4byte	0xbc
 840 04a7 19       		.uleb128 0x19
 841 04a8 EF050000 		.4byte	0x5ef
 842 04ac 19       		.uleb128 0x19
 843 04ad 25000000 		.4byte	0x25
 844 04b1 00       		.byte	0
 845 04b2 14       		.uleb128 0x14
 846 04b3 04       		.byte	0x4
 847 04b4 BD040000 		.4byte	0x4bd
 848 04b8 06       		.uleb128 0x6
 849 04b9 B2040000 		.4byte	0x4b2
 850 04bd 1A       		.uleb128 0x1a
 851 04be D0040000 		.4byte	.LASF75
 852 04c2 2804     		.2byte	0x428
 853 04c4 0A       		.byte	0xa
 854 04c5 3802     		.2byte	0x238
 855 04c7 EF050000 		.4byte	0x5ef
 856 04cb 1B       		.uleb128 0x1b
 857 04cc 0F050000 		.4byte	.LASF76
 858 04d0 0A       		.byte	0xa
 859 04d1 3A02     		.2byte	0x23a
 860 04d3 25000000 		.4byte	0x25
 861 04d7 00       		.byte	0
ARM GAS  /tmp/cc0x0SVd.s 			page 19


 862 04d8 1B       		.uleb128 0x1b
 863 04d9 76010000 		.4byte	.LASF77
 864 04dd 0A       		.byte	0xa
 865 04de 3F02     		.2byte	0x23f
 866 04e0 D6060000 		.4byte	0x6d6
 867 04e4 04       		.byte	0x4
 868 04e5 1B       		.uleb128 0x1b
 869 04e6 42020000 		.4byte	.LASF78
 870 04ea 0A       		.byte	0xa
 871 04eb 3F02     		.2byte	0x23f
 872 04ed D6060000 		.4byte	0x6d6
 873 04f1 08       		.byte	0x8
 874 04f2 1B       		.uleb128 0x1b
 875 04f3 10020000 		.4byte	.LASF79
 876 04f7 0A       		.byte	0xa
 877 04f8 3F02     		.2byte	0x23f
 878 04fa D6060000 		.4byte	0x6d6
 879 04fe 0C       		.byte	0xc
 880 04ff 1B       		.uleb128 0x1b
 881 0500 8C040000 		.4byte	.LASF80
 882 0504 0A       		.byte	0xa
 883 0505 4102     		.2byte	0x241
 884 0507 25000000 		.4byte	0x25
 885 050b 10       		.byte	0x10
 886 050c 1B       		.uleb128 0x1b
 887 050d 43000000 		.4byte	.LASF81
 888 0511 0A       		.byte	0xa
 889 0512 4202     		.2byte	0x242
 890 0514 B8080000 		.4byte	0x8b8
 891 0518 14       		.byte	0x14
 892 0519 1B       		.uleb128 0x1b
 893 051a E8050000 		.4byte	.LASF82
 894 051e 0A       		.byte	0xa
 895 051f 4402     		.2byte	0x244
 896 0521 25000000 		.4byte	0x25
 897 0525 30       		.byte	0x30
 898 0526 1B       		.uleb128 0x1b
 899 0527 96040000 		.4byte	.LASF83
 900 052b 0A       		.byte	0xa
 901 052c 4502     		.2byte	0x245
 902 052e 25060000 		.4byte	0x625
 903 0532 34       		.byte	0x34
 904 0533 1B       		.uleb128 0x1b
 905 0534 9E030000 		.4byte	.LASF84
 906 0538 0A       		.byte	0xa
 907 0539 4702     		.2byte	0x247
 908 053b 25000000 		.4byte	0x25
 909 053f 38       		.byte	0x38
 910 0540 1B       		.uleb128 0x1b
 911 0541 10060000 		.4byte	.LASF85
 912 0545 0A       		.byte	0xa
 913 0546 4902     		.2byte	0x249
 914 0548 D3080000 		.4byte	0x8d3
 915 054c 3C       		.byte	0x3c
 916 054d 1B       		.uleb128 0x1b
 917 054e 9B020000 		.4byte	.LASF86
 918 0552 0A       		.byte	0xa
ARM GAS  /tmp/cc0x0SVd.s 			page 20


 919 0553 4C02     		.2byte	0x24c
 920 0555 05020000 		.4byte	0x205
 921 0559 40       		.byte	0x40
 922 055a 1B       		.uleb128 0x1b
 923 055b 7D010000 		.4byte	.LASF87
 924 055f 0A       		.byte	0xa
 925 0560 4D02     		.2byte	0x24d
 926 0562 25000000 		.4byte	0x25
 927 0566 44       		.byte	0x44
 928 0567 1B       		.uleb128 0x1b
 929 0568 B0060000 		.4byte	.LASF88
 930 056c 0A       		.byte	0xa
 931 056d 4E02     		.2byte	0x24e
 932 056f 05020000 		.4byte	0x205
 933 0573 48       		.byte	0x48
 934 0574 1B       		.uleb128 0x1b
 935 0575 52040000 		.4byte	.LASF89
 936 0579 0A       		.byte	0xa
 937 057a 4F02     		.2byte	0x24f
 938 057c D9080000 		.4byte	0x8d9
 939 0580 4C       		.byte	0x4c
 940 0581 1B       		.uleb128 0x1b
 941 0582 4A020000 		.4byte	.LASF90
 942 0586 0A       		.byte	0xa
 943 0587 5202     		.2byte	0x252
 944 0589 25000000 		.4byte	0x25
 945 058d 50       		.byte	0x50
 946 058e 1B       		.uleb128 0x1b
 947 058f A5010000 		.4byte	.LASF91
 948 0593 0A       		.byte	0xa
 949 0594 5302     		.2byte	0x253
 950 0596 EF050000 		.4byte	0x5ef
 951 059a 54       		.byte	0x54
 952 059b 1B       		.uleb128 0x1b
 953 059c B0020000 		.4byte	.LASF92
 954 05a0 0A       		.byte	0xa
 955 05a1 7602     		.2byte	0x276
 956 05a3 96080000 		.4byte	0x896
 957 05a7 58       		.byte	0x58
 958 05a8 1C       		.uleb128 0x1c
 959 05a9 8C030000 		.4byte	.LASF52
 960 05ad 0A       		.byte	0xa
 961 05ae 7A02     		.2byte	0x27a
 962 05b0 22030000 		.4byte	0x322
 963 05b4 4801     		.2byte	0x148
 964 05b6 1C       		.uleb128 0x1c
 965 05b7 5B000000 		.4byte	.LASF93
 966 05bb 0A       		.byte	0xa
 967 05bc 7B02     		.2byte	0x27b
 968 05be E4020000 		.4byte	0x2e4
 969 05c2 4C01     		.2byte	0x14c
 970 05c4 1C       		.uleb128 0x1c
 971 05c5 38060000 		.4byte	.LASF94
 972 05c9 0A       		.byte	0xa
 973 05ca 7F02     		.2byte	0x27f
 974 05cc EA080000 		.4byte	0x8ea
 975 05d0 DC02     		.2byte	0x2dc
ARM GAS  /tmp/cc0x0SVd.s 			page 21


 976 05d2 1C       		.uleb128 0x1c
 977 05d3 56010000 		.4byte	.LASF95
 978 05d7 0A       		.byte	0xa
 979 05d8 8402     		.2byte	0x284
 980 05da 9B060000 		.4byte	0x69b
 981 05de E002     		.2byte	0x2e0
 982 05e0 1C       		.uleb128 0x1c
 983 05e1 3B010000 		.4byte	.LASF96
 984 05e5 0A       		.byte	0xa
 985 05e6 8502     		.2byte	0x285
 986 05e8 F6080000 		.4byte	0x8f6
 987 05ec EC02     		.2byte	0x2ec
 988 05ee 00       		.byte	0
 989 05ef 14       		.uleb128 0x14
 990 05f0 04       		.byte	0x4
 991 05f1 F5050000 		.4byte	0x5f5
 992 05f5 03       		.uleb128 0x3
 993 05f6 01       		.byte	0x1
 994 05f7 08       		.byte	0x8
 995 05f8 16050000 		.4byte	.LASF97
 996 05fc 06       		.uleb128 0x6
 997 05fd F5050000 		.4byte	0x5f5
 998 0601 14       		.uleb128 0x14
 999 0602 04       		.byte	0x4
 1000 0603 94040000 		.4byte	0x494
 1001 0607 18       		.uleb128 0x18
 1002 0608 25000000 		.4byte	0x25
 1003 060c 25060000 		.4byte	0x625
 1004 0610 19       		.uleb128 0x19
 1005 0611 B2040000 		.4byte	0x4b2
 1006 0615 19       		.uleb128 0x19
 1007 0616 BC000000 		.4byte	0xbc
 1008 061a 19       		.uleb128 0x19
 1009 061b 25060000 		.4byte	0x625
 1010 061f 19       		.uleb128 0x19
 1011 0620 25000000 		.4byte	0x25
 1012 0624 00       		.byte	0
 1013 0625 14       		.uleb128 0x14
 1014 0626 04       		.byte	0x4
 1015 0627 FC050000 		.4byte	0x5fc
 1016 062b 14       		.uleb128 0x14
 1017 062c 04       		.byte	0x4
 1018 062d 07060000 		.4byte	0x607
 1019 0631 18       		.uleb128 0x18
 1020 0632 2A010000 		.4byte	0x12a
 1021 0636 4F060000 		.4byte	0x64f
 1022 063a 19       		.uleb128 0x19
 1023 063b B2040000 		.4byte	0x4b2
 1024 063f 19       		.uleb128 0x19
 1025 0640 BC000000 		.4byte	0xbc
 1026 0644 19       		.uleb128 0x19
 1027 0645 2A010000 		.4byte	0x12a
 1028 0649 19       		.uleb128 0x19
 1029 064a 25000000 		.4byte	0x25
 1030 064e 00       		.byte	0
 1031 064f 14       		.uleb128 0x14
 1032 0650 04       		.byte	0x4
ARM GAS  /tmp/cc0x0SVd.s 			page 22


 1033 0651 31060000 		.4byte	0x631
 1034 0655 18       		.uleb128 0x18
 1035 0656 25000000 		.4byte	0x25
 1036 065a 69060000 		.4byte	0x669
 1037 065e 19       		.uleb128 0x19
 1038 065f B2040000 		.4byte	0x4b2
 1039 0663 19       		.uleb128 0x19
 1040 0664 BC000000 		.4byte	0xbc
 1041 0668 00       		.byte	0
 1042 0669 14       		.uleb128 0x14
 1043 066a 04       		.byte	0x4
 1044 066b 55060000 		.4byte	0x655
 1045 066f 10       		.uleb128 0x10
 1046 0670 3A000000 		.4byte	0x3a
 1047 0674 7F060000 		.4byte	0x67f
 1048 0678 11       		.uleb128 0x11
 1049 0679 BE000000 		.4byte	0xbe
 1050 067d 02       		.byte	0x2
 1051 067e 00       		.byte	0
 1052 067f 10       		.uleb128 0x10
 1053 0680 3A000000 		.4byte	0x3a
 1054 0684 8F060000 		.4byte	0x68f
 1055 0688 11       		.uleb128 0x11
 1056 0689 BE000000 		.4byte	0xbe
 1057 068d 00       		.byte	0
 1058 068e 00       		.byte	0
 1059 068f 0D       		.uleb128 0xd
 1060 0690 5C040000 		.4byte	.LASF98
 1061 0694 0A       		.byte	0xa
 1062 0695 1D01     		.2byte	0x11d
 1063 0697 6A030000 		.4byte	0x36a
 1064 069b 1D       		.uleb128 0x1d
 1065 069c 1F060000 		.4byte	.LASF99
 1066 06a0 0C       		.byte	0xc
 1067 06a1 0A       		.byte	0xa
 1068 06a2 2101     		.2byte	0x121
 1069 06a4 D0060000 		.4byte	0x6d0
 1070 06a8 1B       		.uleb128 0x1b
 1071 06a9 52050000 		.4byte	.LASF32
 1072 06ad 0A       		.byte	0xa
 1073 06ae 2301     		.2byte	0x123
 1074 06b0 D0060000 		.4byte	0x6d0
 1075 06b4 00       		.byte	0
 1076 06b5 1B       		.uleb128 0x1b
 1077 06b6 70020000 		.4byte	.LASF100
 1078 06ba 0A       		.byte	0xa
 1079 06bb 2401     		.2byte	0x124
 1080 06bd 25000000 		.4byte	0x25
 1081 06c1 04       		.byte	0x4
 1082 06c2 1B       		.uleb128 0x1b
 1083 06c3 21040000 		.4byte	.LASF101
 1084 06c7 0A       		.byte	0xa
 1085 06c8 2501     		.2byte	0x125
 1086 06ca D6060000 		.4byte	0x6d6
 1087 06ce 08       		.byte	0x8
 1088 06cf 00       		.byte	0
 1089 06d0 14       		.uleb128 0x14
ARM GAS  /tmp/cc0x0SVd.s 			page 23


 1090 06d1 04       		.byte	0x4
 1091 06d2 9B060000 		.4byte	0x69b
 1092 06d6 14       		.uleb128 0x14
 1093 06d7 04       		.byte	0x4
 1094 06d8 8F060000 		.4byte	0x68f
 1095 06dc 1D       		.uleb128 0x1d
 1096 06dd 3B000000 		.4byte	.LASF102
 1097 06e1 0E       		.byte	0xe
 1098 06e2 0A       		.byte	0xa
 1099 06e3 3D01     		.2byte	0x13d
 1100 06e5 11070000 		.4byte	0x711
 1101 06e9 1B       		.uleb128 0x1b
 1102 06ea D7040000 		.4byte	.LASF103
 1103 06ee 0A       		.byte	0xa
 1104 06ef 3E01     		.2byte	0x13e
 1105 06f1 11070000 		.4byte	0x711
 1106 06f5 00       		.byte	0
 1107 06f6 1B       		.uleb128 0x1b
 1108 06f7 BB020000 		.4byte	.LASF104
 1109 06fb 0A       		.byte	0xa
 1110 06fc 3F01     		.2byte	0x13f
 1111 06fe 11070000 		.4byte	0x711
 1112 0702 06       		.byte	0x6
 1113 0703 1B       		.uleb128 0x1b
 1114 0704 CA050000 		.4byte	.LASF105
 1115 0708 0A       		.byte	0xa
 1116 0709 4001     		.2byte	0x140
 1117 070b 53000000 		.4byte	0x53
 1118 070f 0C       		.byte	0xc
 1119 0710 00       		.byte	0
 1120 0711 10       		.uleb128 0x10
 1121 0712 53000000 		.4byte	0x53
 1122 0716 21070000 		.4byte	0x721
 1123 071a 11       		.uleb128 0x11
 1124 071b BE000000 		.4byte	0xbe
 1125 071f 02       		.byte	0x2
 1126 0720 00       		.byte	0
 1127 0721 1E       		.uleb128 0x1e
 1128 0722 D0       		.byte	0xd0
 1129 0723 0A       		.byte	0xa
 1130 0724 5702     		.2byte	0x257
 1131 0726 22080000 		.4byte	0x822
 1132 072a 1B       		.uleb128 0x1b
 1133 072b 03060000 		.4byte	.LASF106
 1134 072f 0A       		.byte	0xa
 1135 0730 5902     		.2byte	0x259
 1136 0732 2C000000 		.4byte	0x2c
 1137 0736 00       		.byte	0
 1138 0737 1B       		.uleb128 0x1b
 1139 0738 58050000 		.4byte	.LASF107
 1140 073c 0A       		.byte	0xa
 1141 073d 5A02     		.2byte	0x25a
 1142 073f EF050000 		.4byte	0x5ef
 1143 0743 04       		.byte	0x4
 1144 0744 1B       		.uleb128 0x1b
 1145 0745 8E020000 		.4byte	.LASF108
 1146 0749 0A       		.byte	0xa
ARM GAS  /tmp/cc0x0SVd.s 			page 24


 1147 074a 5B02     		.2byte	0x25b
 1148 074c 22080000 		.4byte	0x822
 1149 0750 08       		.byte	0x8
 1150 0751 1B       		.uleb128 0x1b
 1151 0752 85060000 		.4byte	.LASF109
 1152 0756 0A       		.byte	0xa
 1153 0757 5C02     		.2byte	0x25c
 1154 0759 1B020000 		.4byte	0x21b
 1155 075d 24       		.byte	0x24
 1156 075e 1B       		.uleb128 0x1b
 1157 075f A9030000 		.4byte	.LASF110
 1158 0763 0A       		.byte	0xa
 1159 0764 5D02     		.2byte	0x25d
 1160 0766 25000000 		.4byte	0x25
 1161 076a 48       		.byte	0x48
 1162 076b 1B       		.uleb128 0x1b
 1163 076c 77020000 		.4byte	.LASF111
 1164 0770 0A       		.byte	0xa
 1165 0771 5E02     		.2byte	0x25e
 1166 0773 85000000 		.4byte	0x85
 1167 0777 50       		.byte	0x50
 1168 0778 1B       		.uleb128 0x1b
 1169 0779 9D060000 		.4byte	.LASF112
 1170 077d 0A       		.byte	0xa
 1171 077e 5F02     		.2byte	0x25f
 1172 0780 DC060000 		.4byte	0x6dc
 1173 0784 58       		.byte	0x58
 1174 0785 1B       		.uleb128 0x1b
 1175 0786 7F040000 		.4byte	.LASF113
 1176 078a 0A       		.byte	0xa
 1177 078b 6002     		.2byte	0x260
 1178 078d 91010000 		.4byte	0x191
 1179 0791 68       		.byte	0x68
 1180 0792 1B       		.uleb128 0x1b
 1181 0793 A2060000 		.4byte	.LASF114
 1182 0797 0A       		.byte	0xa
 1183 0798 6102     		.2byte	0x261
 1184 079a 91010000 		.4byte	0x191
 1185 079e 70       		.byte	0x70
 1186 079f 1B       		.uleb128 0x1b
 1187 07a0 CF000000 		.4byte	.LASF115
 1188 07a4 0A       		.byte	0xa
 1189 07a5 6202     		.2byte	0x262
 1190 07a7 91010000 		.4byte	0x191
 1191 07ab 78       		.byte	0x78
 1192 07ac 1B       		.uleb128 0x1b
 1193 07ad 2E060000 		.4byte	.LASF116
 1194 07b1 0A       		.byte	0xa
 1195 07b2 6302     		.2byte	0x263
 1196 07b4 32080000 		.4byte	0x832
 1197 07b8 80       		.byte	0x80
 1198 07b9 1B       		.uleb128 0x1b
 1199 07ba 82020000 		.4byte	.LASF117
 1200 07be 0A       		.byte	0xa
 1201 07bf 6402     		.2byte	0x264
 1202 07c1 42080000 		.4byte	0x842
 1203 07c5 88       		.byte	0x88
ARM GAS  /tmp/cc0x0SVd.s 			page 25


 1204 07c6 1B       		.uleb128 0x1b
 1205 07c7 4E000000 		.4byte	.LASF118
 1206 07cb 0A       		.byte	0xa
 1207 07cc 6502     		.2byte	0x265
 1208 07ce 25000000 		.4byte	0x25
 1209 07d2 A0       		.byte	0xa0
 1210 07d3 1B       		.uleb128 0x1b
 1211 07d4 CD010000 		.4byte	.LASF119
 1212 07d8 0A       		.byte	0xa
 1213 07d9 6602     		.2byte	0x266
 1214 07db 91010000 		.4byte	0x191
 1215 07df A4       		.byte	0xa4
 1216 07e0 1B       		.uleb128 0x1b
 1217 07e1 C0000000 		.4byte	.LASF120
 1218 07e5 0A       		.byte	0xa
 1219 07e6 6702     		.2byte	0x267
 1220 07e8 91010000 		.4byte	0x191
 1221 07ec AC       		.byte	0xac
 1222 07ed 1B       		.uleb128 0x1b
 1223 07ee BC010000 		.4byte	.LASF121
 1224 07f2 0A       		.byte	0xa
 1225 07f3 6802     		.2byte	0x268
 1226 07f5 91010000 		.4byte	0x191
 1227 07f9 B4       		.byte	0xb4
 1228 07fa 1B       		.uleb128 0x1b
 1229 07fb 64000000 		.4byte	.LASF122
 1230 07ff 0A       		.byte	0xa
 1231 0800 6902     		.2byte	0x269
 1232 0802 91010000 		.4byte	0x191
 1233 0806 BC       		.byte	0xbc
 1234 0807 1B       		.uleb128 0x1b
 1235 0808 73000000 		.4byte	.LASF123
 1236 080c 0A       		.byte	0xa
 1237 080d 6A02     		.2byte	0x26a
 1238 080f 91010000 		.4byte	0x191
 1239 0813 C4       		.byte	0xc4
 1240 0814 1B       		.uleb128 0x1b
 1241 0815 27040000 		.4byte	.LASF124
 1242 0819 0A       		.byte	0xa
 1243 081a 6B02     		.2byte	0x26b
 1244 081c 25000000 		.4byte	0x25
 1245 0820 CC       		.byte	0xcc
 1246 0821 00       		.byte	0
 1247 0822 10       		.uleb128 0x10
 1248 0823 F5050000 		.4byte	0x5f5
 1249 0827 32080000 		.4byte	0x832
 1250 082b 11       		.uleb128 0x11
 1251 082c BE000000 		.4byte	0xbe
 1252 0830 19       		.byte	0x19
 1253 0831 00       		.byte	0
 1254 0832 10       		.uleb128 0x10
 1255 0833 F5050000 		.4byte	0x5f5
 1256 0837 42080000 		.4byte	0x842
 1257 083b 11       		.uleb128 0x11
 1258 083c BE000000 		.4byte	0xbe
 1259 0840 07       		.byte	0x7
 1260 0841 00       		.byte	0
ARM GAS  /tmp/cc0x0SVd.s 			page 26


 1261 0842 10       		.uleb128 0x10
 1262 0843 F5050000 		.4byte	0x5f5
 1263 0847 52080000 		.4byte	0x852
 1264 084b 11       		.uleb128 0x11
 1265 084c BE000000 		.4byte	0xbe
 1266 0850 17       		.byte	0x17
 1267 0851 00       		.byte	0
 1268 0852 1E       		.uleb128 0x1e
 1269 0853 F0       		.byte	0xf0
 1270 0854 0A       		.byte	0xa
 1271 0855 7002     		.2byte	0x270
 1272 0857 76080000 		.4byte	0x876
 1273 085b 1B       		.uleb128 0x1b
 1274 085c A9020000 		.4byte	.LASF125
 1275 0860 0A       		.byte	0xa
 1276 0861 7302     		.2byte	0x273
 1277 0863 76080000 		.4byte	0x876
 1278 0867 00       		.byte	0
 1279 0868 1B       		.uleb128 0x1b
 1280 0869 25060000 		.4byte	.LASF126
 1281 086d 0A       		.byte	0xa
 1282 086e 7402     		.2byte	0x274
 1283 0870 86080000 		.4byte	0x886
 1284 0874 78       		.byte	0x78
 1285 0875 00       		.byte	0
 1286 0876 10       		.uleb128 0x10
 1287 0877 64030000 		.4byte	0x364
 1288 087b 86080000 		.4byte	0x886
 1289 087f 11       		.uleb128 0x11
 1290 0880 BE000000 		.4byte	0xbe
 1291 0884 1D       		.byte	0x1d
 1292 0885 00       		.byte	0
 1293 0886 10       		.uleb128 0x10
 1294 0887 2C000000 		.4byte	0x2c
 1295 088b 96080000 		.4byte	0x896
 1296 088f 11       		.uleb128 0x11
 1297 0890 BE000000 		.4byte	0xbe
 1298 0894 1D       		.byte	0x1d
 1299 0895 00       		.byte	0
 1300 0896 1F       		.uleb128 0x1f
 1301 0897 F0       		.byte	0xf0
 1302 0898 0A       		.byte	0xa
 1303 0899 5502     		.2byte	0x255
 1304 089b B8080000 		.4byte	0x8b8
 1305 089f 20       		.uleb128 0x20
 1306 08a0 D0040000 		.4byte	.LASF75
 1307 08a4 0A       		.byte	0xa
 1308 08a5 6C02     		.2byte	0x26c
 1309 08a7 21070000 		.4byte	0x721
 1310 08ab 20       		.uleb128 0x20
 1311 08ac 72060000 		.4byte	.LASF127
 1312 08b0 0A       		.byte	0xa
 1313 08b1 7502     		.2byte	0x275
 1314 08b3 52080000 		.4byte	0x852
 1315 08b7 00       		.byte	0
 1316 08b8 10       		.uleb128 0x10
 1317 08b9 F5050000 		.4byte	0x5f5
ARM GAS  /tmp/cc0x0SVd.s 			page 27


 1318 08bd C8080000 		.4byte	0x8c8
 1319 08c1 11       		.uleb128 0x11
 1320 08c2 BE000000 		.4byte	0xbe
 1321 08c6 18       		.byte	0x18
 1322 08c7 00       		.byte	0
 1323 08c8 21       		.uleb128 0x21
 1324 08c9 D3080000 		.4byte	0x8d3
 1325 08cd 19       		.uleb128 0x19
 1326 08ce B2040000 		.4byte	0x4b2
 1327 08d2 00       		.byte	0
 1328 08d3 14       		.uleb128 0x14
 1329 08d4 04       		.byte	0x4
 1330 08d5 C8080000 		.4byte	0x8c8
 1331 08d9 14       		.uleb128 0x14
 1332 08da 04       		.byte	0x4
 1333 08db 05020000 		.4byte	0x205
 1334 08df 21       		.uleb128 0x21
 1335 08e0 EA080000 		.4byte	0x8ea
 1336 08e4 19       		.uleb128 0x19
 1337 08e5 25000000 		.4byte	0x25
 1338 08e9 00       		.byte	0
 1339 08ea 14       		.uleb128 0x14
 1340 08eb 04       		.byte	0x4
 1341 08ec F0080000 		.4byte	0x8f0
 1342 08f0 14       		.uleb128 0x14
 1343 08f1 04       		.byte	0x4
 1344 08f2 DF080000 		.4byte	0x8df
 1345 08f6 10       		.uleb128 0x10
 1346 08f7 8F060000 		.4byte	0x68f
 1347 08fb 06090000 		.4byte	0x906
 1348 08ff 11       		.uleb128 0x11
 1349 0900 BE000000 		.4byte	0xbe
 1350 0904 02       		.byte	0x2
 1351 0905 00       		.byte	0
 1352 0906 08       		.uleb128 0x8
 1353 0907 04020000 		.4byte	.LASF128
 1354 090b 0A       		.byte	0xa
 1355 090c FD02     		.2byte	0x2fd
 1356 090e B2040000 		.4byte	0x4b2
 1357 0912 08       		.uleb128 0x8
 1358 0913 D5050000 		.4byte	.LASF129
 1359 0917 0A       		.byte	0xa
 1360 0918 FE02     		.2byte	0x2fe
 1361 091a B8040000 		.4byte	0x4b8
 1362 091e 09       		.uleb128 0x9
 1363 091f 94030000 		.4byte	.LASF130
 1364 0923 0B       		.byte	0xb
 1365 0924 5F       		.byte	0x5f
 1366 0925 EF050000 		.4byte	0x5ef
 1367 0929 09       		.uleb128 0x9
 1368 092a CD030000 		.4byte	.LASF131
 1369 092e 0C       		.byte	0xc
 1370 092f 8F       		.byte	0x8f
 1371 0930 3B090000 		.4byte	0x93b
 1372 0934 03       		.uleb128 0x3
 1373 0935 01       		.byte	0x1
 1374 0936 02       		.byte	0x2
ARM GAS  /tmp/cc0x0SVd.s 			page 28


 1375 0937 05040000 		.4byte	.LASF132
 1376 093b 05       		.uleb128 0x5
 1377 093c 34090000 		.4byte	0x934
 1378 0940 22       		.uleb128 0x22
 1379 0941 4B060000 		.4byte	.LASF133
 1380 0945 0C       		.byte	0xc
 1381 0946 94       		.byte	0x94
 1382 0947 B2000000 		.4byte	0xb2
 1383 094b 05       		.uleb128 0x5
 1384 094c 03       		.byte	0x3
 1385 094d 00000000 		.4byte	cpu_irq_critical_section_counter
 1386 0951 22       		.uleb128 0x22
 1387 0952 84000000 		.4byte	.LASF134
 1388 0956 0C       		.byte	0xc
 1389 0957 95       		.byte	0x95
 1390 0958 3B090000 		.4byte	0x93b
 1391 095c 05       		.uleb128 0x5
 1392 095d 03       		.byte	0x3
 1393 095e 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1394 0962 03       		.uleb128 0x3
 1395 0963 04       		.byte	0x4
 1396 0964 04       		.byte	0x4
 1397 0965 BF030000 		.4byte	.LASF135
 1398 0969 03       		.uleb128 0x3
 1399 096a 08       		.byte	0x8
 1400 096b 04       		.byte	0x4
 1401 096c 9E010000 		.4byte	.LASF136
 1402 0970 23       		.uleb128 0x23
 1403 0971 79050000 		.4byte	.LASF139
 1404 0975 01       		.byte	0x1
 1405 0976 9F       		.byte	0x9f
 1406 0977 A7000000 		.4byte	0xa7
 1407 097b 00000000 		.4byte	.LFB147
 1408 097f 18000000 		.4byte	.LFE147-.LFB147
 1409 0983 01       		.uleb128 0x1
 1410 0984 9C       		.byte	0x9c
 1411 0985 A8090000 		.4byte	0x9a8
 1412 0989 24       		.uleb128 0x24
 1413 098a 42050000 		.4byte	.LASF137
 1414 098e 01       		.byte	0x1
 1415 098f 9F       		.byte	0x9f
 1416 0990 A8090000 		.4byte	0x9a8
 1417 0994 00000000 		.4byte	.LLST5
 1418 0998 24       		.uleb128 0x24
 1419 0999 33010000 		.4byte	.LASF138
 1420 099d 01       		.byte	0x1
 1421 099e 9F       		.byte	0x9f
 1422 099f A7000000 		.4byte	0xa7
 1423 09a3 21000000 		.4byte	.LLST6
 1424 09a7 00       		.byte	0
 1425 09a8 14       		.uleb128 0x14
 1426 09a9 04       		.byte	0x4
 1427 09aa 09010000 		.4byte	0x109
 1428 09ae 23       		.uleb128 0x23
 1429 09af E6000000 		.4byte	.LASF140
 1430 09b3 01       		.byte	0x1
 1431 09b4 92       		.byte	0x92
ARM GAS  /tmp/cc0x0SVd.s 			page 29


 1432 09b5 A7000000 		.4byte	0xa7
 1433 09b9 00000000 		.4byte	.LFB146
 1434 09bd 04000000 		.4byte	.LFE146-.LFB146
 1435 09c1 01       		.uleb128 0x1
 1436 09c2 9C       		.byte	0x9c
 1437 09c3 D7090000 		.4byte	0x9d7
 1438 09c7 24       		.uleb128 0x24
 1439 09c8 42050000 		.4byte	.LASF137
 1440 09cc 01       		.byte	0x1
 1441 09cd 92       		.byte	0x92
 1442 09ce A8090000 		.4byte	0x9a8
 1443 09d2 42000000 		.4byte	.LLST4
 1444 09d6 00       		.byte	0
 1445 09d7 25       		.uleb128 0x25
 1446 09d8 F3030000 		.4byte	.LASF141
 1447 09dc 01       		.byte	0x1
 1448 09dd 81       		.byte	0x81
 1449 09de 00000000 		.4byte	.LFB145
 1450 09e2 18000000 		.4byte	.LFE145-.LFB145
 1451 09e6 01       		.uleb128 0x1
 1452 09e7 9C       		.byte	0x9c
 1453 09e8 FA090000 		.4byte	0x9fa
 1454 09ec 26       		.uleb128 0x26
 1455 09ed 42050000 		.4byte	.LASF137
 1456 09f1 01       		.byte	0x1
 1457 09f2 81       		.byte	0x81
 1458 09f3 A8090000 		.4byte	0x9a8
 1459 09f7 01       		.uleb128 0x1
 1460 09f8 50       		.byte	0x50
 1461 09f9 00       		.byte	0
 1462 09fa 25       		.uleb128 0x25
 1463 09fb 1D000000 		.4byte	.LASF142
 1464 09ff 01       		.byte	0x1
 1465 0a00 78       		.byte	0x78
 1466 0a01 00000000 		.4byte	.LFB144
 1467 0a05 08000000 		.4byte	.LFE144-.LFB144
 1468 0a09 01       		.uleb128 0x1
 1469 0a0a 9C       		.byte	0x9c
 1470 0a0b 1D0A0000 		.4byte	0xa1d
 1471 0a0f 26       		.uleb128 0x26
 1472 0a10 42050000 		.4byte	.LASF137
 1473 0a14 01       		.byte	0x1
 1474 0a15 78       		.byte	0x78
 1475 0a16 A8090000 		.4byte	0x9a8
 1476 0a1a 01       		.uleb128 0x1
 1477 0a1b 50       		.byte	0x50
 1478 0a1c 00       		.byte	0
 1479 0a1d 25       		.uleb128 0x25
 1480 0a1e 42060000 		.4byte	.LASF143
 1481 0a22 01       		.byte	0x1
 1482 0a23 6E       		.byte	0x6e
 1483 0a24 00000000 		.4byte	.LFB143
 1484 0a28 1C000000 		.4byte	.LFE143-.LFB143
 1485 0a2c 01       		.uleb128 0x1
 1486 0a2d 9C       		.byte	0x9c
 1487 0a2e 6B0A0000 		.4byte	0xa6b
 1488 0a32 26       		.uleb128 0x26
ARM GAS  /tmp/cc0x0SVd.s 			page 30


 1489 0a33 42050000 		.4byte	.LASF137
 1490 0a37 01       		.byte	0x1
 1491 0a38 6E       		.byte	0x6e
 1492 0a39 A8090000 		.4byte	0x9a8
 1493 0a3d 01       		.uleb128 0x1
 1494 0a3e 50       		.byte	0x50
 1495 0a3f 26       		.uleb128 0x26
 1496 0a40 C5030000 		.4byte	.LASF144
 1497 0a44 01       		.byte	0x1
 1498 0a45 6E       		.byte	0x6e
 1499 0a46 A7000000 		.4byte	0xa7
 1500 0a4a 01       		.uleb128 0x1
 1501 0a4b 51       		.byte	0x51
 1502 0a4c 24       		.uleb128 0x24
 1503 0a4d 6E050000 		.4byte	.LASF145
 1504 0a51 01       		.byte	0x1
 1505 0a52 6E       		.byte	0x6e
 1506 0a53 8C000000 		.4byte	0x8c
 1507 0a57 63000000 		.4byte	.LLST2
 1508 0a5b 24       		.uleb128 0x24
 1509 0a5c B7000000 		.4byte	.LASF146
 1510 0a60 01       		.byte	0x1
 1511 0a61 6F       		.byte	0x6f
 1512 0a62 8C000000 		.4byte	0x8c
 1513 0a66 84000000 		.4byte	.LLST3
 1514 0a6a 00       		.byte	0
 1515 0a6b 27       		.uleb128 0x27
 1516 0a6c B2040000 		.4byte	.LASF147
 1517 0a70 01       		.byte	0x1
 1518 0a71 58       		.byte	0x58
 1519 0a72 A7000000 		.4byte	0xa7
 1520 0a76 00000000 		.4byte	.LFB142
 1521 0a7a 28000000 		.4byte	.LFE142-.LFB142
 1522 0a7e 01       		.uleb128 0x1
 1523 0a7f 9C       		.byte	0x9c
 1524 0a80 24       		.uleb128 0x24
 1525 0a81 CF050000 		.4byte	.LASF148
 1526 0a85 01       		.byte	0x1
 1527 0a86 58       		.byte	0x58
 1528 0a87 A7000000 		.4byte	0xa7
 1529 0a8b A5000000 		.4byte	.LLST0
 1530 0a8f 24       		.uleb128 0x24
 1531 0a90 33010000 		.4byte	.LASF138
 1532 0a94 01       		.byte	0x1
 1533 0a95 58       		.byte	0x58
 1534 0a96 A7000000 		.4byte	0xa7
 1535 0a9a DF000000 		.4byte	.LLST1
 1536 0a9e 28       		.uleb128 0x28
 1537 0a9f 6D617800 		.ascii	"max\000"
 1538 0aa3 01       		.byte	0x1
 1539 0aa4 5A       		.byte	0x5a
 1540 0aa5 A7000000 		.4byte	0xa7
 1541 0aa9 07       		.uleb128 0x7
 1542 0aaa 71       		.byte	0x71
 1543 0aab 00       		.sleb128 0
 1544 0aac 0A       		.byte	0xa
 1545 0aad FF0F     		.2byte	0xfff
ARM GAS  /tmp/cc0x0SVd.s 			page 31


 1546 0aaf 1E       		.byte	0x1e
 1547 0ab0 9F       		.byte	0x9f
 1548 0ab1 28       		.uleb128 0x28
 1549 0ab2 6D696E00 		.ascii	"min\000"
 1550 0ab6 01       		.byte	0x1
 1551 0ab7 5A       		.byte	0x5a
 1552 0ab8 A7000000 		.4byte	0xa7
 1553 0abc 01       		.uleb128 0x1
 1554 0abd 51       		.byte	0x51
 1555 0abe 00       		.byte	0
 1556 0abf 00       		.byte	0
 1557              		.section	.debug_abbrev,"",%progbits
 1558              	.Ldebug_abbrev0:
 1559 0000 01       		.uleb128 0x1
 1560 0001 11       		.uleb128 0x11
 1561 0002 01       		.byte	0x1
 1562 0003 25       		.uleb128 0x25
 1563 0004 0E       		.uleb128 0xe
 1564 0005 13       		.uleb128 0x13
 1565 0006 0B       		.uleb128 0xb
 1566 0007 03       		.uleb128 0x3
 1567 0008 0E       		.uleb128 0xe
 1568 0009 1B       		.uleb128 0x1b
 1569 000a 0E       		.uleb128 0xe
 1570 000b 55       		.uleb128 0x55
 1571 000c 17       		.uleb128 0x17
 1572 000d 11       		.uleb128 0x11
 1573 000e 01       		.uleb128 0x1
 1574 000f 10       		.uleb128 0x10
 1575 0010 17       		.uleb128 0x17
 1576 0011 00       		.byte	0
 1577 0012 00       		.byte	0
 1578 0013 02       		.uleb128 0x2
 1579 0014 24       		.uleb128 0x24
 1580 0015 00       		.byte	0
 1581 0016 0B       		.uleb128 0xb
 1582 0017 0B       		.uleb128 0xb
 1583 0018 3E       		.uleb128 0x3e
 1584 0019 0B       		.uleb128 0xb
 1585 001a 03       		.uleb128 0x3
 1586 001b 08       		.uleb128 0x8
 1587 001c 00       		.byte	0
 1588 001d 00       		.byte	0
 1589 001e 03       		.uleb128 0x3
 1590 001f 24       		.uleb128 0x24
 1591 0020 00       		.byte	0
 1592 0021 0B       		.uleb128 0xb
 1593 0022 0B       		.uleb128 0xb
 1594 0023 3E       		.uleb128 0x3e
 1595 0024 0B       		.uleb128 0xb
 1596 0025 03       		.uleb128 0x3
 1597 0026 0E       		.uleb128 0xe
 1598 0027 00       		.byte	0
 1599 0028 00       		.byte	0
 1600 0029 04       		.uleb128 0x4
 1601 002a 16       		.uleb128 0x16
 1602 002b 00       		.byte	0
ARM GAS  /tmp/cc0x0SVd.s 			page 32


 1603 002c 03       		.uleb128 0x3
 1604 002d 0E       		.uleb128 0xe
 1605 002e 3A       		.uleb128 0x3a
 1606 002f 0B       		.uleb128 0xb
 1607 0030 3B       		.uleb128 0x3b
 1608 0031 0B       		.uleb128 0xb
 1609 0032 49       		.uleb128 0x49
 1610 0033 13       		.uleb128 0x13
 1611 0034 00       		.byte	0
 1612 0035 00       		.byte	0
 1613 0036 05       		.uleb128 0x5
 1614 0037 35       		.uleb128 0x35
 1615 0038 00       		.byte	0
 1616 0039 49       		.uleb128 0x49
 1617 003a 13       		.uleb128 0x13
 1618 003b 00       		.byte	0
 1619 003c 00       		.byte	0
 1620 003d 06       		.uleb128 0x6
 1621 003e 26       		.uleb128 0x26
 1622 003f 00       		.byte	0
 1623 0040 49       		.uleb128 0x49
 1624 0041 13       		.uleb128 0x13
 1625 0042 00       		.byte	0
 1626 0043 00       		.byte	0
 1627 0044 07       		.uleb128 0x7
 1628 0045 0F       		.uleb128 0xf
 1629 0046 00       		.byte	0
 1630 0047 0B       		.uleb128 0xb
 1631 0048 0B       		.uleb128 0xb
 1632 0049 00       		.byte	0
 1633 004a 00       		.byte	0
 1634 004b 08       		.uleb128 0x8
 1635 004c 34       		.uleb128 0x34
 1636 004d 00       		.byte	0
 1637 004e 03       		.uleb128 0x3
 1638 004f 0E       		.uleb128 0xe
 1639 0050 3A       		.uleb128 0x3a
 1640 0051 0B       		.uleb128 0xb
 1641 0052 3B       		.uleb128 0x3b
 1642 0053 05       		.uleb128 0x5
 1643 0054 49       		.uleb128 0x49
 1644 0055 13       		.uleb128 0x13
 1645 0056 3F       		.uleb128 0x3f
 1646 0057 19       		.uleb128 0x19
 1647 0058 3C       		.uleb128 0x3c
 1648 0059 19       		.uleb128 0x19
 1649 005a 00       		.byte	0
 1650 005b 00       		.byte	0
 1651 005c 09       		.uleb128 0x9
 1652 005d 34       		.uleb128 0x34
 1653 005e 00       		.byte	0
 1654 005f 03       		.uleb128 0x3
 1655 0060 0E       		.uleb128 0xe
 1656 0061 3A       		.uleb128 0x3a
 1657 0062 0B       		.uleb128 0xb
 1658 0063 3B       		.uleb128 0x3b
 1659 0064 0B       		.uleb128 0xb
ARM GAS  /tmp/cc0x0SVd.s 			page 33


 1660 0065 49       		.uleb128 0x49
 1661 0066 13       		.uleb128 0x13
 1662 0067 3F       		.uleb128 0x3f
 1663 0068 19       		.uleb128 0x19
 1664 0069 3C       		.uleb128 0x3c
 1665 006a 19       		.uleb128 0x19
 1666 006b 00       		.byte	0
 1667 006c 00       		.byte	0
 1668 006d 0A       		.uleb128 0xa
 1669 006e 13       		.uleb128 0x13
 1670 006f 01       		.byte	0x1
 1671 0070 0B       		.uleb128 0xb
 1672 0071 0B       		.uleb128 0xb
 1673 0072 3A       		.uleb128 0x3a
 1674 0073 0B       		.uleb128 0xb
 1675 0074 3B       		.uleb128 0x3b
 1676 0075 0B       		.uleb128 0xb
 1677 0076 01       		.uleb128 0x1
 1678 0077 13       		.uleb128 0x13
 1679 0078 00       		.byte	0
 1680 0079 00       		.byte	0
 1681 007a 0B       		.uleb128 0xb
 1682 007b 0D       		.uleb128 0xd
 1683 007c 00       		.byte	0
 1684 007d 03       		.uleb128 0x3
 1685 007e 0E       		.uleb128 0xe
 1686 007f 3A       		.uleb128 0x3a
 1687 0080 0B       		.uleb128 0xb
 1688 0081 3B       		.uleb128 0x3b
 1689 0082 0B       		.uleb128 0xb
 1690 0083 49       		.uleb128 0x49
 1691 0084 13       		.uleb128 0x13
 1692 0085 38       		.uleb128 0x38
 1693 0086 0B       		.uleb128 0xb
 1694 0087 00       		.byte	0
 1695 0088 00       		.byte	0
 1696 0089 0C       		.uleb128 0xc
 1697 008a 16       		.uleb128 0x16
 1698 008b 00       		.byte	0
 1699 008c 03       		.uleb128 0x3
 1700 008d 08       		.uleb128 0x8
 1701 008e 3A       		.uleb128 0x3a
 1702 008f 0B       		.uleb128 0xb
 1703 0090 3B       		.uleb128 0x3b
 1704 0091 0B       		.uleb128 0xb
 1705 0092 49       		.uleb128 0x49
 1706 0093 13       		.uleb128 0x13
 1707 0094 00       		.byte	0
 1708 0095 00       		.byte	0
 1709 0096 0D       		.uleb128 0xd
 1710 0097 16       		.uleb128 0x16
 1711 0098 00       		.byte	0
 1712 0099 03       		.uleb128 0x3
 1713 009a 0E       		.uleb128 0xe
 1714 009b 3A       		.uleb128 0x3a
 1715 009c 0B       		.uleb128 0xb
 1716 009d 3B       		.uleb128 0x3b
ARM GAS  /tmp/cc0x0SVd.s 			page 34


 1717 009e 05       		.uleb128 0x5
 1718 009f 49       		.uleb128 0x49
 1719 00a0 13       		.uleb128 0x13
 1720 00a1 00       		.byte	0
 1721 00a2 00       		.byte	0
 1722 00a3 0E       		.uleb128 0xe
 1723 00a4 17       		.uleb128 0x17
 1724 00a5 01       		.byte	0x1
 1725 00a6 0B       		.uleb128 0xb
 1726 00a7 0B       		.uleb128 0xb
 1727 00a8 3A       		.uleb128 0x3a
 1728 00a9 0B       		.uleb128 0xb
 1729 00aa 3B       		.uleb128 0x3b
 1730 00ab 0B       		.uleb128 0xb
 1731 00ac 01       		.uleb128 0x1
 1732 00ad 13       		.uleb128 0x13
 1733 00ae 00       		.byte	0
 1734 00af 00       		.byte	0
 1735 00b0 0F       		.uleb128 0xf
 1736 00b1 0D       		.uleb128 0xd
 1737 00b2 00       		.byte	0
 1738 00b3 03       		.uleb128 0x3
 1739 00b4 0E       		.uleb128 0xe
 1740 00b5 3A       		.uleb128 0x3a
 1741 00b6 0B       		.uleb128 0xb
 1742 00b7 3B       		.uleb128 0x3b
 1743 00b8 0B       		.uleb128 0xb
 1744 00b9 49       		.uleb128 0x49
 1745 00ba 13       		.uleb128 0x13
 1746 00bb 00       		.byte	0
 1747 00bc 00       		.byte	0
 1748 00bd 10       		.uleb128 0x10
 1749 00be 01       		.uleb128 0x1
 1750 00bf 01       		.byte	0x1
 1751 00c0 49       		.uleb128 0x49
 1752 00c1 13       		.uleb128 0x13
 1753 00c2 01       		.uleb128 0x1
 1754 00c3 13       		.uleb128 0x13
 1755 00c4 00       		.byte	0
 1756 00c5 00       		.byte	0
 1757 00c6 11       		.uleb128 0x11
 1758 00c7 21       		.uleb128 0x21
 1759 00c8 00       		.byte	0
 1760 00c9 49       		.uleb128 0x49
 1761 00ca 13       		.uleb128 0x13
 1762 00cb 2F       		.uleb128 0x2f
 1763 00cc 0B       		.uleb128 0xb
 1764 00cd 00       		.byte	0
 1765 00ce 00       		.byte	0
 1766 00cf 12       		.uleb128 0x12
 1767 00d0 13       		.uleb128 0x13
 1768 00d1 01       		.byte	0x1
 1769 00d2 03       		.uleb128 0x3
 1770 00d3 0E       		.uleb128 0xe
 1771 00d4 0B       		.uleb128 0xb
 1772 00d5 0B       		.uleb128 0xb
 1773 00d6 3A       		.uleb128 0x3a
ARM GAS  /tmp/cc0x0SVd.s 			page 35


 1774 00d7 0B       		.uleb128 0xb
 1775 00d8 3B       		.uleb128 0x3b
 1776 00d9 0B       		.uleb128 0xb
 1777 00da 01       		.uleb128 0x1
 1778 00db 13       		.uleb128 0x13
 1779 00dc 00       		.byte	0
 1780 00dd 00       		.byte	0
 1781 00de 13       		.uleb128 0x13
 1782 00df 0D       		.uleb128 0xd
 1783 00e0 00       		.byte	0
 1784 00e1 03       		.uleb128 0x3
 1785 00e2 08       		.uleb128 0x8
 1786 00e3 3A       		.uleb128 0x3a
 1787 00e4 0B       		.uleb128 0xb
 1788 00e5 3B       		.uleb128 0x3b
 1789 00e6 0B       		.uleb128 0xb
 1790 00e7 49       		.uleb128 0x49
 1791 00e8 13       		.uleb128 0x13
 1792 00e9 38       		.uleb128 0x38
 1793 00ea 0B       		.uleb128 0xb
 1794 00eb 00       		.byte	0
 1795 00ec 00       		.byte	0
 1796 00ed 14       		.uleb128 0x14
 1797 00ee 0F       		.uleb128 0xf
 1798 00ef 00       		.byte	0
 1799 00f0 0B       		.uleb128 0xb
 1800 00f1 0B       		.uleb128 0xb
 1801 00f2 49       		.uleb128 0x49
 1802 00f3 13       		.uleb128 0x13
 1803 00f4 00       		.byte	0
 1804 00f5 00       		.byte	0
 1805 00f6 15       		.uleb128 0x15
 1806 00f7 13       		.uleb128 0x13
 1807 00f8 01       		.byte	0x1
 1808 00f9 03       		.uleb128 0x3
 1809 00fa 0E       		.uleb128 0xe
 1810 00fb 0B       		.uleb128 0xb
 1811 00fc 05       		.uleb128 0x5
 1812 00fd 3A       		.uleb128 0x3a
 1813 00fe 0B       		.uleb128 0xb
 1814 00ff 3B       		.uleb128 0x3b
 1815 0100 0B       		.uleb128 0xb
 1816 0101 01       		.uleb128 0x1
 1817 0102 13       		.uleb128 0x13
 1818 0103 00       		.byte	0
 1819 0104 00       		.byte	0
 1820 0105 16       		.uleb128 0x16
 1821 0106 0D       		.uleb128 0xd
 1822 0107 00       		.byte	0
 1823 0108 03       		.uleb128 0x3
 1824 0109 0E       		.uleb128 0xe
 1825 010a 3A       		.uleb128 0x3a
 1826 010b 0B       		.uleb128 0xb
 1827 010c 3B       		.uleb128 0x3b
 1828 010d 0B       		.uleb128 0xb
 1829 010e 49       		.uleb128 0x49
 1830 010f 13       		.uleb128 0x13
ARM GAS  /tmp/cc0x0SVd.s 			page 36


 1831 0110 38       		.uleb128 0x38
 1832 0111 05       		.uleb128 0x5
 1833 0112 00       		.byte	0
 1834 0113 00       		.byte	0
 1835 0114 17       		.uleb128 0x17
 1836 0115 15       		.uleb128 0x15
 1837 0116 00       		.byte	0
 1838 0117 27       		.uleb128 0x27
 1839 0118 19       		.uleb128 0x19
 1840 0119 00       		.byte	0
 1841 011a 00       		.byte	0
 1842 011b 18       		.uleb128 0x18
 1843 011c 15       		.uleb128 0x15
 1844 011d 01       		.byte	0x1
 1845 011e 27       		.uleb128 0x27
 1846 011f 19       		.uleb128 0x19
 1847 0120 49       		.uleb128 0x49
 1848 0121 13       		.uleb128 0x13
 1849 0122 01       		.uleb128 0x1
 1850 0123 13       		.uleb128 0x13
 1851 0124 00       		.byte	0
 1852 0125 00       		.byte	0
 1853 0126 19       		.uleb128 0x19
 1854 0127 05       		.uleb128 0x5
 1855 0128 00       		.byte	0
 1856 0129 49       		.uleb128 0x49
 1857 012a 13       		.uleb128 0x13
 1858 012b 00       		.byte	0
 1859 012c 00       		.byte	0
 1860 012d 1A       		.uleb128 0x1a
 1861 012e 13       		.uleb128 0x13
 1862 012f 01       		.byte	0x1
 1863 0130 03       		.uleb128 0x3
 1864 0131 0E       		.uleb128 0xe
 1865 0132 0B       		.uleb128 0xb
 1866 0133 05       		.uleb128 0x5
 1867 0134 3A       		.uleb128 0x3a
 1868 0135 0B       		.uleb128 0xb
 1869 0136 3B       		.uleb128 0x3b
 1870 0137 05       		.uleb128 0x5
 1871 0138 01       		.uleb128 0x1
 1872 0139 13       		.uleb128 0x13
 1873 013a 00       		.byte	0
 1874 013b 00       		.byte	0
 1875 013c 1B       		.uleb128 0x1b
 1876 013d 0D       		.uleb128 0xd
 1877 013e 00       		.byte	0
 1878 013f 03       		.uleb128 0x3
 1879 0140 0E       		.uleb128 0xe
 1880 0141 3A       		.uleb128 0x3a
 1881 0142 0B       		.uleb128 0xb
 1882 0143 3B       		.uleb128 0x3b
 1883 0144 05       		.uleb128 0x5
 1884 0145 49       		.uleb128 0x49
 1885 0146 13       		.uleb128 0x13
 1886 0147 38       		.uleb128 0x38
 1887 0148 0B       		.uleb128 0xb
ARM GAS  /tmp/cc0x0SVd.s 			page 37


 1888 0149 00       		.byte	0
 1889 014a 00       		.byte	0
 1890 014b 1C       		.uleb128 0x1c
 1891 014c 0D       		.uleb128 0xd
 1892 014d 00       		.byte	0
 1893 014e 03       		.uleb128 0x3
 1894 014f 0E       		.uleb128 0xe
 1895 0150 3A       		.uleb128 0x3a
 1896 0151 0B       		.uleb128 0xb
 1897 0152 3B       		.uleb128 0x3b
 1898 0153 05       		.uleb128 0x5
 1899 0154 49       		.uleb128 0x49
 1900 0155 13       		.uleb128 0x13
 1901 0156 38       		.uleb128 0x38
 1902 0157 05       		.uleb128 0x5
 1903 0158 00       		.byte	0
 1904 0159 00       		.byte	0
 1905 015a 1D       		.uleb128 0x1d
 1906 015b 13       		.uleb128 0x13
 1907 015c 01       		.byte	0x1
 1908 015d 03       		.uleb128 0x3
 1909 015e 0E       		.uleb128 0xe
 1910 015f 0B       		.uleb128 0xb
 1911 0160 0B       		.uleb128 0xb
 1912 0161 3A       		.uleb128 0x3a
 1913 0162 0B       		.uleb128 0xb
 1914 0163 3B       		.uleb128 0x3b
 1915 0164 05       		.uleb128 0x5
 1916 0165 01       		.uleb128 0x1
 1917 0166 13       		.uleb128 0x13
 1918 0167 00       		.byte	0
 1919 0168 00       		.byte	0
 1920 0169 1E       		.uleb128 0x1e
 1921 016a 13       		.uleb128 0x13
 1922 016b 01       		.byte	0x1
 1923 016c 0B       		.uleb128 0xb
 1924 016d 0B       		.uleb128 0xb
 1925 016e 3A       		.uleb128 0x3a
 1926 016f 0B       		.uleb128 0xb
 1927 0170 3B       		.uleb128 0x3b
 1928 0171 05       		.uleb128 0x5
 1929 0172 01       		.uleb128 0x1
 1930 0173 13       		.uleb128 0x13
 1931 0174 00       		.byte	0
 1932 0175 00       		.byte	0
 1933 0176 1F       		.uleb128 0x1f
 1934 0177 17       		.uleb128 0x17
 1935 0178 01       		.byte	0x1
 1936 0179 0B       		.uleb128 0xb
 1937 017a 0B       		.uleb128 0xb
 1938 017b 3A       		.uleb128 0x3a
 1939 017c 0B       		.uleb128 0xb
 1940 017d 3B       		.uleb128 0x3b
 1941 017e 05       		.uleb128 0x5
 1942 017f 01       		.uleb128 0x1
 1943 0180 13       		.uleb128 0x13
 1944 0181 00       		.byte	0
ARM GAS  /tmp/cc0x0SVd.s 			page 38


 1945 0182 00       		.byte	0
 1946 0183 20       		.uleb128 0x20
 1947 0184 0D       		.uleb128 0xd
 1948 0185 00       		.byte	0
 1949 0186 03       		.uleb128 0x3
 1950 0187 0E       		.uleb128 0xe
 1951 0188 3A       		.uleb128 0x3a
 1952 0189 0B       		.uleb128 0xb
 1953 018a 3B       		.uleb128 0x3b
 1954 018b 05       		.uleb128 0x5
 1955 018c 49       		.uleb128 0x49
 1956 018d 13       		.uleb128 0x13
 1957 018e 00       		.byte	0
 1958 018f 00       		.byte	0
 1959 0190 21       		.uleb128 0x21
 1960 0191 15       		.uleb128 0x15
 1961 0192 01       		.byte	0x1
 1962 0193 27       		.uleb128 0x27
 1963 0194 19       		.uleb128 0x19
 1964 0195 01       		.uleb128 0x1
 1965 0196 13       		.uleb128 0x13
 1966 0197 00       		.byte	0
 1967 0198 00       		.byte	0
 1968 0199 22       		.uleb128 0x22
 1969 019a 34       		.uleb128 0x34
 1970 019b 00       		.byte	0
 1971 019c 03       		.uleb128 0x3
 1972 019d 0E       		.uleb128 0xe
 1973 019e 3A       		.uleb128 0x3a
 1974 019f 0B       		.uleb128 0xb
 1975 01a0 3B       		.uleb128 0x3b
 1976 01a1 0B       		.uleb128 0xb
 1977 01a2 49       		.uleb128 0x49
 1978 01a3 13       		.uleb128 0x13
 1979 01a4 02       		.uleb128 0x2
 1980 01a5 18       		.uleb128 0x18
 1981 01a6 00       		.byte	0
 1982 01a7 00       		.byte	0
 1983 01a8 23       		.uleb128 0x23
 1984 01a9 2E       		.uleb128 0x2e
 1985 01aa 01       		.byte	0x1
 1986 01ab 3F       		.uleb128 0x3f
 1987 01ac 19       		.uleb128 0x19
 1988 01ad 03       		.uleb128 0x3
 1989 01ae 0E       		.uleb128 0xe
 1990 01af 3A       		.uleb128 0x3a
 1991 01b0 0B       		.uleb128 0xb
 1992 01b1 3B       		.uleb128 0x3b
 1993 01b2 0B       		.uleb128 0xb
 1994 01b3 27       		.uleb128 0x27
 1995 01b4 19       		.uleb128 0x19
 1996 01b5 49       		.uleb128 0x49
 1997 01b6 13       		.uleb128 0x13
 1998 01b7 11       		.uleb128 0x11
 1999 01b8 01       		.uleb128 0x1
 2000 01b9 12       		.uleb128 0x12
 2001 01ba 06       		.uleb128 0x6
ARM GAS  /tmp/cc0x0SVd.s 			page 39


 2002 01bb 40       		.uleb128 0x40
 2003 01bc 18       		.uleb128 0x18
 2004 01bd 9742     		.uleb128 0x2117
 2005 01bf 19       		.uleb128 0x19
 2006 01c0 01       		.uleb128 0x1
 2007 01c1 13       		.uleb128 0x13
 2008 01c2 00       		.byte	0
 2009 01c3 00       		.byte	0
 2010 01c4 24       		.uleb128 0x24
 2011 01c5 05       		.uleb128 0x5
 2012 01c6 00       		.byte	0
 2013 01c7 03       		.uleb128 0x3
 2014 01c8 0E       		.uleb128 0xe
 2015 01c9 3A       		.uleb128 0x3a
 2016 01ca 0B       		.uleb128 0xb
 2017 01cb 3B       		.uleb128 0x3b
 2018 01cc 0B       		.uleb128 0xb
 2019 01cd 49       		.uleb128 0x49
 2020 01ce 13       		.uleb128 0x13
 2021 01cf 02       		.uleb128 0x2
 2022 01d0 17       		.uleb128 0x17
 2023 01d1 00       		.byte	0
 2024 01d2 00       		.byte	0
 2025 01d3 25       		.uleb128 0x25
 2026 01d4 2E       		.uleb128 0x2e
 2027 01d5 01       		.byte	0x1
 2028 01d6 3F       		.uleb128 0x3f
 2029 01d7 19       		.uleb128 0x19
 2030 01d8 03       		.uleb128 0x3
 2031 01d9 0E       		.uleb128 0xe
 2032 01da 3A       		.uleb128 0x3a
 2033 01db 0B       		.uleb128 0xb
 2034 01dc 3B       		.uleb128 0x3b
 2035 01dd 0B       		.uleb128 0xb
 2036 01de 27       		.uleb128 0x27
 2037 01df 19       		.uleb128 0x19
 2038 01e0 11       		.uleb128 0x11
 2039 01e1 01       		.uleb128 0x1
 2040 01e2 12       		.uleb128 0x12
 2041 01e3 06       		.uleb128 0x6
 2042 01e4 40       		.uleb128 0x40
 2043 01e5 18       		.uleb128 0x18
 2044 01e6 9742     		.uleb128 0x2117
 2045 01e8 19       		.uleb128 0x19
 2046 01e9 01       		.uleb128 0x1
 2047 01ea 13       		.uleb128 0x13
 2048 01eb 00       		.byte	0
 2049 01ec 00       		.byte	0
 2050 01ed 26       		.uleb128 0x26
 2051 01ee 05       		.uleb128 0x5
 2052 01ef 00       		.byte	0
 2053 01f0 03       		.uleb128 0x3
 2054 01f1 0E       		.uleb128 0xe
 2055 01f2 3A       		.uleb128 0x3a
 2056 01f3 0B       		.uleb128 0xb
 2057 01f4 3B       		.uleb128 0x3b
 2058 01f5 0B       		.uleb128 0xb
ARM GAS  /tmp/cc0x0SVd.s 			page 40


 2059 01f6 49       		.uleb128 0x49
 2060 01f7 13       		.uleb128 0x13
 2061 01f8 02       		.uleb128 0x2
 2062 01f9 18       		.uleb128 0x18
 2063 01fa 00       		.byte	0
 2064 01fb 00       		.byte	0
 2065 01fc 27       		.uleb128 0x27
 2066 01fd 2E       		.uleb128 0x2e
 2067 01fe 01       		.byte	0x1
 2068 01ff 3F       		.uleb128 0x3f
 2069 0200 19       		.uleb128 0x19
 2070 0201 03       		.uleb128 0x3
 2071 0202 0E       		.uleb128 0xe
 2072 0203 3A       		.uleb128 0x3a
 2073 0204 0B       		.uleb128 0xb
 2074 0205 3B       		.uleb128 0x3b
 2075 0206 0B       		.uleb128 0xb
 2076 0207 27       		.uleb128 0x27
 2077 0208 19       		.uleb128 0x19
 2078 0209 49       		.uleb128 0x49
 2079 020a 13       		.uleb128 0x13
 2080 020b 11       		.uleb128 0x11
 2081 020c 01       		.uleb128 0x1
 2082 020d 12       		.uleb128 0x12
 2083 020e 06       		.uleb128 0x6
 2084 020f 40       		.uleb128 0x40
 2085 0210 18       		.uleb128 0x18
 2086 0211 9742     		.uleb128 0x2117
 2087 0213 19       		.uleb128 0x19
 2088 0214 00       		.byte	0
 2089 0215 00       		.byte	0
 2090 0216 28       		.uleb128 0x28
 2091 0217 34       		.uleb128 0x34
 2092 0218 00       		.byte	0
 2093 0219 03       		.uleb128 0x3
 2094 021a 08       		.uleb128 0x8
 2095 021b 3A       		.uleb128 0x3a
 2096 021c 0B       		.uleb128 0xb
 2097 021d 3B       		.uleb128 0x3b
 2098 021e 0B       		.uleb128 0xb
 2099 021f 49       		.uleb128 0x49
 2100 0220 13       		.uleb128 0x13
 2101 0221 02       		.uleb128 0x2
 2102 0222 18       		.uleb128 0x18
 2103 0223 00       		.byte	0
 2104 0224 00       		.byte	0
 2105 0225 00       		.byte	0
 2106              		.section	.debug_loc,"",%progbits
 2107              	.Ldebug_loc0:
 2108              	.LLST5:
 2109 0000 00000000 		.4byte	.LVL12
 2110 0004 12000000 		.4byte	.LVL14
 2111 0008 0100     		.2byte	0x1
 2112 000a 50       		.byte	0x50
 2113 000b 12000000 		.4byte	.LVL14
 2114 000f 18000000 		.4byte	.LFE147
 2115 0013 0400     		.2byte	0x4
ARM GAS  /tmp/cc0x0SVd.s 			page 41


 2116 0015 F3       		.byte	0xf3
 2117 0016 01       		.uleb128 0x1
 2118 0017 50       		.byte	0x50
 2119 0018 9F       		.byte	0x9f
 2120 0019 00000000 		.4byte	0
 2121 001d 00000000 		.4byte	0
 2122              	.LLST6:
 2123 0021 00000000 		.4byte	.LVL12
 2124 0025 0E000000 		.4byte	.LVL13
 2125 0029 0100     		.2byte	0x1
 2126 002b 51       		.byte	0x51
 2127 002c 0E000000 		.4byte	.LVL13
 2128 0030 18000000 		.4byte	.LFE147
 2129 0034 0400     		.2byte	0x4
 2130 0036 F3       		.byte	0xf3
 2131 0037 01       		.uleb128 0x1
 2132 0038 51       		.byte	0x51
 2133 0039 9F       		.byte	0x9f
 2134 003a 00000000 		.4byte	0
 2135 003e 00000000 		.4byte	0
 2136              	.LLST4:
 2137 0042 00000000 		.4byte	.LVL10
 2138 0046 02000000 		.4byte	.LVL11
 2139 004a 0100     		.2byte	0x1
 2140 004c 50       		.byte	0x50
 2141 004d 02000000 		.4byte	.LVL11
 2142 0051 04000000 		.4byte	.LFE146
 2143 0055 0400     		.2byte	0x4
 2144 0057 F3       		.byte	0xf3
 2145 0058 01       		.uleb128 0x1
 2146 0059 50       		.byte	0x50
 2147 005a 9F       		.byte	0x9f
 2148 005b 00000000 		.4byte	0
 2149 005f 00000000 		.4byte	0
 2150              	.LLST2:
 2151 0063 00000000 		.4byte	.LVL5
 2152 0067 08000000 		.4byte	.LVL6
 2153 006b 0100     		.2byte	0x1
 2154 006d 52       		.byte	0x52
 2155 006e 08000000 		.4byte	.LVL6
 2156 0072 1C000000 		.4byte	.LFE143
 2157 0076 0400     		.2byte	0x4
 2158 0078 F3       		.byte	0xf3
 2159 0079 01       		.uleb128 0x1
 2160 007a 52       		.byte	0x52
 2161 007b 9F       		.byte	0x9f
 2162 007c 00000000 		.4byte	0
 2163 0080 00000000 		.4byte	0
 2164              	.LLST3:
 2165 0084 00000000 		.4byte	.LVL5
 2166 0088 0C000000 		.4byte	.LVL7
 2167 008c 0100     		.2byte	0x1
 2168 008e 53       		.byte	0x53
 2169 008f 0C000000 		.4byte	.LVL7
 2170 0093 1C000000 		.4byte	.LFE143
 2171 0097 0400     		.2byte	0x4
 2172 0099 F3       		.byte	0xf3
ARM GAS  /tmp/cc0x0SVd.s 			page 42


 2173 009a 01       		.uleb128 0x1
 2174 009b 53       		.byte	0x53
 2175 009c 9F       		.byte	0x9f
 2176 009d 00000000 		.4byte	0
 2177 00a1 00000000 		.4byte	0
 2178              	.LLST0:
 2179 00a5 00000000 		.4byte	.LVL0
 2180 00a9 16000000 		.4byte	.LVL2
 2181 00ad 0100     		.2byte	0x1
 2182 00af 50       		.byte	0x50
 2183 00b0 16000000 		.4byte	.LVL2
 2184 00b4 18000000 		.4byte	.LVL3
 2185 00b8 0400     		.2byte	0x4
 2186 00ba F3       		.byte	0xf3
 2187 00bb 01       		.uleb128 0x1
 2188 00bc 50       		.byte	0x50
 2189 00bd 9F       		.byte	0x9f
 2190 00be 18000000 		.4byte	.LVL3
 2191 00c2 1C000000 		.4byte	.LVL4
 2192 00c6 0100     		.2byte	0x1
 2193 00c8 50       		.byte	0x50
 2194 00c9 1C000000 		.4byte	.LVL4
 2195 00cd 28000000 		.4byte	.LFE142
 2196 00d1 0400     		.2byte	0x4
 2197 00d3 F3       		.byte	0xf3
 2198 00d4 01       		.uleb128 0x1
 2199 00d5 50       		.byte	0x50
 2200 00d6 9F       		.byte	0x9f
 2201 00d7 00000000 		.4byte	0
 2202 00db 00000000 		.4byte	0
 2203              	.LLST1:
 2204 00df 00000000 		.4byte	.LVL0
 2205 00e3 06000000 		.4byte	.LVL1
 2206 00e7 0100     		.2byte	0x1
 2207 00e9 51       		.byte	0x51
 2208 00ea 06000000 		.4byte	.LVL1
 2209 00ee 28000000 		.4byte	.LFE142
 2210 00f2 0400     		.2byte	0x4
 2211 00f4 F3       		.byte	0xf3
 2212 00f5 01       		.uleb128 0x1
 2213 00f6 51       		.byte	0x51
 2214 00f7 9F       		.byte	0x9f
 2215 00f8 00000000 		.4byte	0
 2216 00fc 00000000 		.4byte	0
 2217              		.section	.debug_aranges,"",%progbits
 2218 0000 44000000 		.4byte	0x44
 2219 0004 0200     		.2byte	0x2
 2220 0006 00000000 		.4byte	.Ldebug_info0
 2221 000a 04       		.byte	0x4
 2222 000b 00       		.byte	0
 2223 000c 0000     		.2byte	0
 2224 000e 0000     		.2byte	0
 2225 0010 00000000 		.4byte	.LFB142
 2226 0014 28000000 		.4byte	.LFE142-.LFB142
 2227 0018 00000000 		.4byte	.LFB143
 2228 001c 1C000000 		.4byte	.LFE143-.LFB143
 2229 0020 00000000 		.4byte	.LFB144
ARM GAS  /tmp/cc0x0SVd.s 			page 43


 2230 0024 08000000 		.4byte	.LFE144-.LFB144
 2231 0028 00000000 		.4byte	.LFB145
 2232 002c 18000000 		.4byte	.LFE145-.LFB145
 2233 0030 00000000 		.4byte	.LFB146
 2234 0034 04000000 		.4byte	.LFE146-.LFB146
 2235 0038 00000000 		.4byte	.LFB147
 2236 003c 18000000 		.4byte	.LFE147-.LFB147
 2237 0040 00000000 		.4byte	0
 2238 0044 00000000 		.4byte	0
 2239              		.section	.debug_ranges,"",%progbits
 2240              	.Ldebug_ranges0:
 2241 0000 00000000 		.4byte	.LFB142
 2242 0004 28000000 		.4byte	.LFE142
 2243 0008 00000000 		.4byte	.LFB143
 2244 000c 1C000000 		.4byte	.LFE143
 2245 0010 00000000 		.4byte	.LFB144
 2246 0014 08000000 		.4byte	.LFE144
 2247 0018 00000000 		.4byte	.LFB145
 2248 001c 18000000 		.4byte	.LFE145
 2249 0020 00000000 		.4byte	.LFB146
 2250 0024 04000000 		.4byte	.LFE146
 2251 0028 00000000 		.4byte	.LFB147
 2252 002c 18000000 		.4byte	.LFE147
 2253 0030 00000000 		.4byte	0
 2254 0034 00000000 		.4byte	0
 2255              		.section	.debug_line,"",%progbits
 2256              	.Ldebug_line0:
 2257 0000 CD020000 		.section	.debug_str,"MS",%progbits,1
 2257      02005502 
 2257      00000201 
 2257      FB0E0D00 
 2257      01010101 
 2258              	.LASF150:
 2259 0000 2E2E2F61 		.ascii	"../asf/sam/drivers/wdt/wdt.c\000"
 2259      73662F73 
 2259      616D2F64 
 2259      72697665 
 2259      72732F77 
 2260              	.LASF142:
 2261 001d 7764745F 		.ascii	"wdt_disable\000"
 2261      64697361 
 2261      626C6500 
 2262              	.LASF3:
 2263 0029 73686F72 		.ascii	"short int\000"
 2263      7420696E 
 2263      7400
 2264              	.LASF48:
 2265 0033 5F666E61 		.ascii	"_fnargs\000"
 2265      72677300 
 2266              	.LASF102:
 2267 003b 5F72616E 		.ascii	"_rand48\000"
 2267      64343800 
 2268              	.LASF81:
 2269 0043 5F656D65 		.ascii	"_emergency\000"
 2269      7267656E 
 2269      637900
 2270              	.LASF118:
ARM GAS  /tmp/cc0x0SVd.s 			page 44


 2271 004e 5F676574 		.ascii	"_getdate_err\000"
 2271      64617465 
 2271      5F657272 
 2271      00
 2272              	.LASF93:
 2273 005b 5F617465 		.ascii	"_atexit0\000"
 2273      78697430 
 2273      00
 2274              	.LASF122:
 2275 0064 5F776372 		.ascii	"_wcrtomb_state\000"
 2275      746F6D62 
 2275      5F737461 
 2275      746500
 2276              	.LASF123:
 2277 0073 5F776373 		.ascii	"_wcsrtombs_state\000"
 2277      72746F6D 
 2277      62735F73 
 2277      74617465 
 2277      00
 2278              	.LASF134:
 2279 0084 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 2279      6972715F 
 2279      70726576 
 2279      5F696E74 
 2279      65727275 
 2280              	.LASF61:
 2281 00a1 5F6C6266 		.ascii	"_lbfsize\000"
 2281      73697A65 
 2281      00
 2282              	.LASF16:
 2283 00aa 49544D5F 		.ascii	"ITM_RxBuffer\000"
 2283      52784275 
 2283      66666572 
 2283      00
 2284              	.LASF146:
 2285 00b7 75735F64 		.ascii	"us_delta\000"
 2285      656C7461 
 2285      00
 2286              	.LASF120:
 2287 00c0 5F6D6272 		.ascii	"_mbrtowc_state\000"
 2287      746F7763 
 2287      5F737461 
 2287      746500
 2288              	.LASF115:
 2289 00cf 5F776374 		.ascii	"_wctomb_state\000"
 2289      6F6D625F 
 2289      73746174 
 2289      6500
 2290              	.LASF38:
 2291 00dd 5F5F746D 		.ascii	"__tm_sec\000"
 2291      5F736563 
 2291      00
 2292              	.LASF140:
 2293 00e6 7764745F 		.ascii	"wdt_get_status\000"
 2293      6765745F 
 2293      73746174 
 2293      757300
ARM GAS  /tmp/cc0x0SVd.s 			page 45


 2294              	.LASF22:
 2295 00f5 5F6F6666 		.ascii	"_off_t\000"
 2295      5F7400
 2296              	.LASF66:
 2297 00fc 5F636C6F 		.ascii	"_close\000"
 2297      736500
 2298              	.LASF1:
 2299 0103 7369676E 		.ascii	"signed char\000"
 2299      65642063 
 2299      68617200 
 2300              	.LASF18:
 2301 010f 5744545F 		.ascii	"WDT_CR\000"
 2301      435200
 2302              	.LASF67:
 2303 0116 5F756275 		.ascii	"_ubuf\000"
 2303      6600
 2304              	.LASF11:
 2305 011c 6C6F6E67 		.ascii	"long long unsigned int\000"
 2305      206C6F6E 
 2305      6720756E 
 2305      7369676E 
 2305      65642069 
 2306              	.LASF138:
 2307 0133 756C5F73 		.ascii	"ul_sclk\000"
 2307      636C6B00 
 2308              	.LASF96:
 2309 013b 5F5F7366 		.ascii	"__sf\000"
 2309      00
 2310              	.LASF47:
 2311 0140 5F6F6E5F 		.ascii	"_on_exit_args\000"
 2311      65786974 
 2311      5F617267 
 2311      7300
 2312              	.LASF62:
 2313 014e 5F636F6F 		.ascii	"_cookie\000"
 2313      6B696500 
 2314              	.LASF95:
 2315 0156 5F5F7367 		.ascii	"__sglue\000"
 2315      6C756500 
 2316              	.LASF7:
 2317 015e 6C6F6E67 		.ascii	"long int\000"
 2317      20696E74 
 2317      00
 2318              	.LASF59:
 2319 0167 5F666C61 		.ascii	"_flags\000"
 2319      677300
 2320              	.LASF51:
 2321 016e 5F69735F 		.ascii	"_is_cxa\000"
 2321      63786100 
 2322              	.LASF77:
 2323 0176 5F737464 		.ascii	"_stdin\000"
 2323      696E00
 2324              	.LASF87:
 2325 017d 5F726573 		.ascii	"_result_k\000"
 2325      756C745F 
 2325      6B00
 2326              	.LASF10:
ARM GAS  /tmp/cc0x0SVd.s 			page 46


 2327 0187 6C6F6E67 		.ascii	"long long int\000"
 2327      206C6F6E 
 2327      6720696E 
 2327      7400
 2328              	.LASF12:
 2329 0195 75696E74 		.ascii	"uint16_t\000"
 2329      31365F74 
 2329      00
 2330              	.LASF136:
 2331 019e 646F7562 		.ascii	"double\000"
 2331      6C6500
 2332              	.LASF91:
 2333 01a5 5F637674 		.ascii	"_cvtbuf\000"
 2333      62756600 
 2334              	.LASF70:
 2335 01ad 5F6F6666 		.ascii	"_offset\000"
 2335      73657400 
 2336              	.LASF20:
 2337 01b5 5744545F 		.ascii	"WDT_SR\000"
 2337      535200
 2338              	.LASF121:
 2339 01bc 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 2339      72746F77 
 2339      63735F73 
 2339      74617465 
 2339      00
 2340              	.LASF119:
 2341 01cd 5F6D6272 		.ascii	"_mbrlen_state\000"
 2341      6C656E5F 
 2341      73746174 
 2341      6500
 2342              	.LASF4:
 2343 01db 73686F72 		.ascii	"short unsigned int\000"
 2343      7420756E 
 2343      7369676E 
 2343      65642069 
 2343      6E7400
 2344              	.LASF54:
 2345 01ee 5F666E73 		.ascii	"_fns\000"
 2345      00
 2346              	.LASF8:
 2347 01f3 5F5F7569 		.ascii	"__uint32_t\000"
 2347      6E743332 
 2347      5F7400
 2348              	.LASF34:
 2349 01fe 5F736967 		.ascii	"_sign\000"
 2349      6E00
 2350              	.LASF128:
 2351 0204 5F696D70 		.ascii	"_impure_ptr\000"
 2351      7572655F 
 2351      70747200 
 2352              	.LASF79:
 2353 0210 5F737464 		.ascii	"_stderr\000"
 2353      65727200 
 2354              	.LASF36:
 2355 0218 5F426967 		.ascii	"_Bigint\000"
 2355      696E7400 
ARM GAS  /tmp/cc0x0SVd.s 			page 47


 2356              	.LASF63:
 2357 0220 5F726561 		.ascii	"_read\000"
 2357      6400
 2358              	.LASF37:
 2359 0226 5F5F746D 		.ascii	"__tm\000"
 2359      00
 2360              	.LASF26:
 2361 022b 5F5F7763 		.ascii	"__wchb\000"
 2361      686200
 2362              	.LASF17:
 2363 0232 53797374 		.ascii	"SystemCoreClock\000"
 2363      656D436F 
 2363      7265436C 
 2363      6F636B00 
 2364              	.LASF78:
 2365 0242 5F737464 		.ascii	"_stdout\000"
 2365      6F757400 
 2366              	.LASF90:
 2367 024a 5F637674 		.ascii	"_cvtlen\000"
 2367      6C656E00 
 2368              	.LASF9:
 2369 0252 6C6F6E67 		.ascii	"long unsigned int\000"
 2369      20756E73 
 2369      69676E65 
 2369      6420696E 
 2369      7400
 2370              	.LASF60:
 2371 0264 5F66696C 		.ascii	"_file\000"
 2371      6500
 2372              	.LASF71:
 2373 026a 5F646174 		.ascii	"_data\000"
 2373      6100
 2374              	.LASF100:
 2375 0270 5F6E696F 		.ascii	"_niobs\000"
 2375      627300
 2376              	.LASF111:
 2377 0277 5F72616E 		.ascii	"_rand_next\000"
 2377      645F6E65 
 2377      787400
 2378              	.LASF117:
 2379 0282 5F736967 		.ascii	"_signal_buf\000"
 2379      6E616C5F 
 2379      62756600 
 2380              	.LASF108:
 2381 028e 5F617363 		.ascii	"_asctime_buf\000"
 2381      74696D65 
 2381      5F627566 
 2381      00
 2382              	.LASF86:
 2383 029b 5F726573 		.ascii	"_result\000"
 2383      756C7400 
 2384              	.LASF25:
 2385 02a3 5F5F7763 		.ascii	"__wch\000"
 2385      6800
 2386              	.LASF125:
 2387 02a9 5F6E6578 		.ascii	"_nextf\000"
 2387      746600
ARM GAS  /tmp/cc0x0SVd.s 			page 48


 2388              	.LASF92:
 2389 02b0 5F6E6577 		.ascii	"_new\000"
 2389      00
 2390              	.LASF72:
 2391 02b5 5F6C6F63 		.ascii	"_lock\000"
 2391      6B00
 2392              	.LASF104:
 2393 02bb 5F6D756C 		.ascii	"_mult\000"
 2393      7400
 2394              	.LASF19:
 2395 02c1 5744545F 		.ascii	"WDT_MR\000"
 2395      4D5200
 2396              	.LASF64:
 2397 02c8 5F777269 		.ascii	"_write\000"
 2397      746500
 2398              	.LASF43:
 2399 02cf 5F5F746D 		.ascii	"__tm_year\000"
 2399      5F796561 
 2399      7200
 2400              	.LASF15:
 2401 02d9 73697A65 		.ascii	"sizetype\000"
 2401      74797065 
 2401      00
 2402              	.LASF149:
 2403 02e2 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 2403      43393920 
 2403      362E332E 
 2403      31203230 
 2403      31373036 
 2404 0315 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 2404      76352D64 
 2404      3136202D 
 2404      6D666C6F 
 2404      61742D61 
 2405 0348 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 2405      6E2D7365 
 2405      6374696F 
 2405      6E73202D 
 2405      66646174 
 2406 037b 6F6E7374 		.ascii	"onstant\000"
 2406      616E7400 
 2407              	.LASF42:
 2408 0383 5F5F746D 		.ascii	"__tm_mon\000"
 2408      5F6D6F6E 
 2408      00
 2409              	.LASF52:
 2410 038c 5F617465 		.ascii	"_atexit\000"
 2410      78697400 
 2411              	.LASF130:
 2412 0394 7375626F 		.ascii	"suboptarg\000"
 2412      70746172 
 2412      6700
 2413              	.LASF84:
 2414 039e 5F5F7364 		.ascii	"__sdidinit\000"
 2414      6964696E 
 2414      697400
 2415              	.LASF110:
ARM GAS  /tmp/cc0x0SVd.s 			page 49


 2416 03a9 5F67616D 		.ascii	"_gamma_signgam\000"
 2416      6D615F73 
 2416      69676E67 
 2416      616D00
 2417              	.LASF24:
 2418 03b8 77696E74 		.ascii	"wint_t\000"
 2418      5F7400
 2419              	.LASF135:
 2420 03bf 666C6F61 		.ascii	"float\000"
 2420      7400
 2421              	.LASF144:
 2422 03c5 756C5F6D 		.ascii	"ul_mode\000"
 2422      6F646500 
 2423              	.LASF131:
 2424 03cd 675F696E 		.ascii	"g_interrupt_enabled\000"
 2424      74657272 
 2424      7570745F 
 2424      656E6162 
 2424      6C656400 
 2425              	.LASF21:
 2426 03e1 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 2426      4B5F5245 
 2426      43555253 
 2426      4956455F 
 2426      5400
 2427              	.LASF141:
 2428 03f3 7764745F 		.ascii	"wdt_restart\000"
 2428      72657374 
 2428      61727400 
 2429              	.LASF56:
 2430 03ff 5F626173 		.ascii	"_base\000"
 2430      6500
 2431              	.LASF132:
 2432 0405 5F426F6F 		.ascii	"_Bool\000"
 2432      6C00
 2433              	.LASF13:
 2434 040b 696E7433 		.ascii	"int32_t\000"
 2434      325F7400 
 2435              	.LASF2:
 2436 0413 756E7369 		.ascii	"unsigned char\000"
 2436      676E6564 
 2436      20636861 
 2436      7200
 2437              	.LASF101:
 2438 0421 5F696F62 		.ascii	"_iobs\000"
 2438      7300
 2439              	.LASF124:
 2440 0427 5F685F65 		.ascii	"_h_errno\000"
 2440      72726E6F 
 2440      00
 2441              	.LASF30:
 2442 0430 5F666C6F 		.ascii	"_flock_t\000"
 2442      636B5F74 
 2442      00
 2443              	.LASF45:
 2444 0439 5F5F746D 		.ascii	"__tm_yday\000"
 2444      5F796461 
ARM GAS  /tmp/cc0x0SVd.s 			page 50


 2444      7900
 2445              	.LASF55:
 2446 0443 5F5F7362 		.ascii	"__sbuf\000"
 2446      756600
 2447              	.LASF74:
 2448 044a 5F666C61 		.ascii	"_flags2\000"
 2448      67733200 
 2449              	.LASF89:
 2450 0452 5F667265 		.ascii	"_freelist\000"
 2450      656C6973 
 2450      7400
 2451              	.LASF98:
 2452 045c 5F5F4649 		.ascii	"__FILE\000"
 2452      4C4500
 2453              	.LASF29:
 2454 0463 5F6D6273 		.ascii	"_mbstate_t\000"
 2454      74617465 
 2454      5F7400
 2455              	.LASF58:
 2456 046e 5F5F7346 		.ascii	"__sFILE\000"
 2456      494C4500 
 2457              	.LASF73:
 2458 0476 5F6D6273 		.ascii	"_mbstate\000"
 2458      74617465 
 2458      00
 2459              	.LASF113:
 2460 047f 5F6D626C 		.ascii	"_mblen_state\000"
 2460      656E5F73 
 2460      74617465 
 2460      00
 2461              	.LASF80:
 2462 048c 5F696E63 		.ascii	"_inc\000"
 2462      00
 2463              	.LASF53:
 2464 0491 5F696E64 		.ascii	"_ind\000"
 2464      00
 2465              	.LASF83:
 2466 0496 5F637572 		.ascii	"_current_locale\000"
 2466      72656E74 
 2466      5F6C6F63 
 2466      616C6500 
 2467              	.LASF49:
 2468 04a6 5F64736F 		.ascii	"_dso_handle\000"
 2468      5F68616E 
 2468      646C6500 
 2469              	.LASF147:
 2470 04b2 7764745F 		.ascii	"wdt_get_timeout_value\000"
 2470      6765745F 
 2470      74696D65 
 2470      6F75745F 
 2470      76616C75 
 2471              	.LASF33:
 2472 04c8 5F6D6178 		.ascii	"_maxwds\000"
 2472      77647300 
 2473              	.LASF75:
 2474 04d0 5F726565 		.ascii	"_reent\000"
 2474      6E7400
ARM GAS  /tmp/cc0x0SVd.s 			page 51


 2475              	.LASF103:
 2476 04d7 5F736565 		.ascii	"_seed\000"
 2476      6400
 2477              	.LASF27:
 2478 04dd 5F5F636F 		.ascii	"__count\000"
 2478      756E7400 
 2479              	.LASF28:
 2480 04e5 5F5F7661 		.ascii	"__value\000"
 2480      6C756500 
 2481              	.LASF40:
 2482 04ed 5F5F746D 		.ascii	"__tm_hour\000"
 2482      5F686F75 
 2482      7200
 2483              	.LASF65:
 2484 04f7 5F736565 		.ascii	"_seek\000"
 2484      6B00
 2485              	.LASF44:
 2486 04fd 5F5F746D 		.ascii	"__tm_wday\000"
 2486      5F776461 
 2486      7900
 2487              	.LASF23:
 2488 0507 5F66706F 		.ascii	"_fpos_t\000"
 2488      735F7400 
 2489              	.LASF76:
 2490 050f 5F657272 		.ascii	"_errno\000"
 2490      6E6F00
 2491              	.LASF97:
 2492 0516 63686172 		.ascii	"char\000"
 2492      00
 2493              	.LASF69:
 2494 051b 5F626C6B 		.ascii	"_blksize\000"
 2494      73697A65 
 2494      00
 2495              	.LASF57:
 2496 0524 5F73697A 		.ascii	"_size\000"
 2496      6500
 2497              	.LASF0:
 2498 052a 756E7369 		.ascii	"unsigned int\000"
 2498      676E6564 
 2498      20696E74 
 2498      00
 2499              	.LASF5:
 2500 0537 5F5F7569 		.ascii	"__uint16_t\000"
 2500      6E743136 
 2500      5F7400
 2501              	.LASF137:
 2502 0542 705F7764 		.ascii	"p_wdt\000"
 2502      7400
 2503              	.LASF6:
 2504 0548 5F5F696E 		.ascii	"__int32_t\000"
 2504      7433325F 
 2504      7400
 2505              	.LASF32:
 2506 0552 5F6E6578 		.ascii	"_next\000"
 2506      7400
 2507              	.LASF107:
 2508 0558 5F737472 		.ascii	"_strtok_last\000"
ARM GAS  /tmp/cc0x0SVd.s 			page 52


 2508      746F6B5F 
 2508      6C617374 
 2508      00
 2509              	.LASF50:
 2510 0565 5F666E74 		.ascii	"_fntypes\000"
 2510      79706573 
 2510      00
 2511              	.LASF145:
 2512 056e 75735F63 		.ascii	"us_counter\000"
 2512      6F756E74 
 2512      657200
 2513              	.LASF139:
 2514 0579 7764745F 		.ascii	"wdt_get_us_timeout_period\000"
 2514      6765745F 
 2514      75735F74 
 2514      696D656F 
 2514      75745F70 
 2515              	.LASF151:
 2516 0593 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 2516      652F746F 
 2516      72626A6F 
 2516      726E2F65 
 2516      636C6970 
 2517              	.LASF31:
 2518 05c2 5F5F554C 		.ascii	"__ULong\000"
 2518      6F6E6700 
 2519              	.LASF105:
 2520 05ca 5F616464 		.ascii	"_add\000"
 2520      00
 2521              	.LASF148:
 2522 05cf 756C5F75 		.ascii	"ul_us\000"
 2522      7300
 2523              	.LASF129:
 2524 05d5 5F676C6F 		.ascii	"_global_impure_ptr\000"
 2524      62616C5F 
 2524      696D7075 
 2524      72655F70 
 2524      747200
 2525              	.LASF82:
 2526 05e8 5F637572 		.ascii	"_current_category\000"
 2526      72656E74 
 2526      5F636174 
 2526      65676F72 
 2526      7900
 2527              	.LASF14:
 2528 05fa 75696E74 		.ascii	"uint32_t\000"
 2528      33325F74 
 2528      00
 2529              	.LASF106:
 2530 0603 5F756E75 		.ascii	"_unused_rand\000"
 2530      7365645F 
 2530      72616E64 
 2530      00
 2531              	.LASF85:
 2532 0610 5F5F636C 		.ascii	"__cleanup\000"
 2532      65616E75 
 2532      7000
ARM GAS  /tmp/cc0x0SVd.s 			page 53


 2533              	.LASF35:
 2534 061a 5F776473 		.ascii	"_wds\000"
 2534      00
 2535              	.LASF99:
 2536 061f 5F676C75 		.ascii	"_glue\000"
 2536      6500
 2537              	.LASF126:
 2538 0625 5F6E6D61 		.ascii	"_nmalloc\000"
 2538      6C6C6F63 
 2538      00
 2539              	.LASF116:
 2540 062e 5F6C3634 		.ascii	"_l64a_buf\000"
 2540      615F6275 
 2540      6600
 2541              	.LASF94:
 2542 0638 5F736967 		.ascii	"_sig_func\000"
 2542      5F66756E 
 2542      6300
 2543              	.LASF143:
 2544 0642 7764745F 		.ascii	"wdt_init\000"
 2544      696E6974 
 2544      00
 2545              	.LASF133:
 2546 064b 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 2546      6972715F 
 2546      63726974 
 2546      6963616C 
 2546      5F736563 
 2547              	.LASF68:
 2548 066c 5F6E6275 		.ascii	"_nbuf\000"
 2548      6600
 2549              	.LASF127:
 2550 0672 5F756E75 		.ascii	"_unused\000"
 2550      73656400 
 2551              	.LASF46:
 2552 067a 5F5F746D 		.ascii	"__tm_isdst\000"
 2552      5F697364 
 2552      737400
 2553              	.LASF109:
 2554 0685 5F6C6F63 		.ascii	"_localtime_buf\000"
 2554      616C7469 
 2554      6D655F62 
 2554      756600
 2555              	.LASF39:
 2556 0694 5F5F746D 		.ascii	"__tm_min\000"
 2556      5F6D696E 
 2556      00
 2557              	.LASF112:
 2558 069d 5F723438 		.ascii	"_r48\000"
 2558      00
 2559              	.LASF114:
 2560 06a2 5F6D6274 		.ascii	"_mbtowc_state\000"
 2560      6F77635F 
 2560      73746174 
 2560      6500
 2561              	.LASF88:
 2562 06b0 5F703573 		.ascii	"_p5s\000"
ARM GAS  /tmp/cc0x0SVd.s 			page 54


 2562      00
 2563              	.LASF41:
 2564 06b5 5F5F746D 		.ascii	"__tm_mday\000"
 2564      5F6D6461 
 2564      7900
 2565              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
