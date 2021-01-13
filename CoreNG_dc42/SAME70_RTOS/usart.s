ARM GAS  /tmp/ccJYkMjP.s 			page 1


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
  12              		.file	"usart.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.usart_set_async_baudrate,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	usart_set_async_baudrate
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	usart_set_async_baudrate, %function
  25              	usart_set_async_baudrate:
  26              	.LFB142:
  27              		.file 1 "../asf/sam/drivers/usart/usart.c"
   1:../asf/sam/drivers/usart/usart.c **** /**
   2:../asf/sam/drivers/usart/usart.c ****  * \file
   3:../asf/sam/drivers/usart/usart.c ****  *
   4:../asf/sam/drivers/usart/usart.c ****  * \brief Universal Synchronous Asynchronous Receiver Transmitter (USART) driver
   5:../asf/sam/drivers/usart/usart.c ****  * for SAM.
   6:../asf/sam/drivers/usart/usart.c ****  *
   7:../asf/sam/drivers/usart/usart.c ****  * Copyright (c) 2011-2016 Atmel Corporation. All rights reserved.
   8:../asf/sam/drivers/usart/usart.c ****  *
   9:../asf/sam/drivers/usart/usart.c ****  * \asf_license_start
  10:../asf/sam/drivers/usart/usart.c ****  *
  11:../asf/sam/drivers/usart/usart.c ****  * \page License
  12:../asf/sam/drivers/usart/usart.c ****  *
  13:../asf/sam/drivers/usart/usart.c ****  * Redistribution and use in source and binary forms, with or without
  14:../asf/sam/drivers/usart/usart.c ****  * modification, are permitted provided that the following conditions are met:
  15:../asf/sam/drivers/usart/usart.c ****  *
  16:../asf/sam/drivers/usart/usart.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  17:../asf/sam/drivers/usart/usart.c ****  *    this list of conditions and the following disclaimer.
  18:../asf/sam/drivers/usart/usart.c ****  *
  19:../asf/sam/drivers/usart/usart.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  20:../asf/sam/drivers/usart/usart.c ****  *    this list of conditions and the following disclaimer in the documentation
  21:../asf/sam/drivers/usart/usart.c ****  *    and/or other materials provided with the distribution.
  22:../asf/sam/drivers/usart/usart.c ****  *
  23:../asf/sam/drivers/usart/usart.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  24:../asf/sam/drivers/usart/usart.c ****  *    from this software without specific prior written permission.
  25:../asf/sam/drivers/usart/usart.c ****  *
  26:../asf/sam/drivers/usart/usart.c ****  * 4. This software may only be redistributed and used in connection with an
  27:../asf/sam/drivers/usart/usart.c ****  *    Atmel microcontroller product.
  28:../asf/sam/drivers/usart/usart.c ****  *
  29:../asf/sam/drivers/usart/usart.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  30:../asf/sam/drivers/usart/usart.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
ARM GAS  /tmp/ccJYkMjP.s 			page 2


  31:../asf/sam/drivers/usart/usart.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  32:../asf/sam/drivers/usart/usart.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  33:../asf/sam/drivers/usart/usart.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  34:../asf/sam/drivers/usart/usart.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  35:../asf/sam/drivers/usart/usart.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  36:../asf/sam/drivers/usart/usart.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  37:../asf/sam/drivers/usart/usart.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  38:../asf/sam/drivers/usart/usart.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  39:../asf/sam/drivers/usart/usart.c ****  * POSSIBILITY OF SUCH DAMAGE.
  40:../asf/sam/drivers/usart/usart.c ****  *
  41:../asf/sam/drivers/usart/usart.c ****  * \asf_license_stop
  42:../asf/sam/drivers/usart/usart.c ****  *
  43:../asf/sam/drivers/usart/usart.c ****  */
  44:../asf/sam/drivers/usart/usart.c **** /*
  45:../asf/sam/drivers/usart/usart.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  46:../asf/sam/drivers/usart/usart.c ****  */
  47:../asf/sam/drivers/usart/usart.c **** 
  48:../asf/sam/drivers/usart/usart.c **** #include "usart.h"
  49:../asf/sam/drivers/usart/usart.c **** 
  50:../asf/sam/drivers/usart/usart.c **** /// @cond 0
  51:../asf/sam/drivers/usart/usart.c **** /**INDENT-OFF**/
  52:../asf/sam/drivers/usart/usart.c **** #ifdef __cplusplus
  53:../asf/sam/drivers/usart/usart.c **** extern "C" {
  54:../asf/sam/drivers/usart/usart.c **** #endif
  55:../asf/sam/drivers/usart/usart.c **** /**INDENT-ON**/
  56:../asf/sam/drivers/usart/usart.c **** /// @endcond
  57:../asf/sam/drivers/usart/usart.c **** 
  58:../asf/sam/drivers/usart/usart.c **** /**
  59:../asf/sam/drivers/usart/usart.c ****  * \defgroup sam_drivers_usart_group Universal Synchronous Asynchronous
  60:../asf/sam/drivers/usart/usart.c ****  * Receiver Transmitter (USART)
  61:../asf/sam/drivers/usart/usart.c ****  *
  62:../asf/sam/drivers/usart/usart.c ****  * The Universal Synchronous Asynchronous Receiver Transceiver (USART)
  63:../asf/sam/drivers/usart/usart.c ****  * provides one full duplex universal synchronous asynchronous serial link.
  64:../asf/sam/drivers/usart/usart.c ****  * Data frame format is widely programmable (data length, parity, number of
  65:../asf/sam/drivers/usart/usart.c ****  * stop bits) to support a maximum of standards. The receiver implements
  66:../asf/sam/drivers/usart/usart.c ****  * parity error, framing error and overrun error detection. The receiver
  67:../asf/sam/drivers/usart/usart.c ****  * time-out enables handling variable-length frames and the transmitter
  68:../asf/sam/drivers/usart/usart.c ****  * timeguard facilitates communications with slow remote devices. Multidrop
  69:../asf/sam/drivers/usart/usart.c ****  * communications are also supported through address bit handling in reception
  70:../asf/sam/drivers/usart/usart.c ****  * and transmission. The driver supports the following modes:
  71:../asf/sam/drivers/usart/usart.c ****  * RS232, RS485, SPI, IrDA, ISO7816, MODEM, Hardware handshaking and LIN.
  72:../asf/sam/drivers/usart/usart.c ****  *
  73:../asf/sam/drivers/usart/usart.c ****  * @{
  74:../asf/sam/drivers/usart/usart.c ****  */
  75:../asf/sam/drivers/usart/usart.c **** 
  76:../asf/sam/drivers/usart/usart.c **** /* The write protect key value. */
  77:../asf/sam/drivers/usart/usart.c **** #ifndef US_WPMR_WPKEY_PASSWD
  78:../asf/sam/drivers/usart/usart.c **** #define US_WPMR_WPKEY_PASSWD    US_WPMR_WPKEY(0x555341U)
  79:../asf/sam/drivers/usart/usart.c **** #endif
  80:../asf/sam/drivers/usart/usart.c **** 
  81:../asf/sam/drivers/usart/usart.c **** #ifndef US_WPMR_WPKEY_PASSWD
  82:../asf/sam/drivers/usart/usart.c **** #  define US_WPMR_WPKEY_PASSWD US_WPMR_WPKEY(US_WPKEY_VALUE)
  83:../asf/sam/drivers/usart/usart.c **** #endif
  84:../asf/sam/drivers/usart/usart.c **** 
  85:../asf/sam/drivers/usart/usart.c **** /* The CD value scope programmed in MR register. */
  86:../asf/sam/drivers/usart/usart.c **** #define MIN_CD_VALUE                  0x01
  87:../asf/sam/drivers/usart/usart.c **** #define MIN_CD_VALUE_SPI              0x04
ARM GAS  /tmp/ccJYkMjP.s 			page 3


  88:../asf/sam/drivers/usart/usart.c **** #define MAX_CD_VALUE                  US_BRGR_CD_Msk
  89:../asf/sam/drivers/usart/usart.c **** 
  90:../asf/sam/drivers/usart/usart.c **** /* The receiver sampling divide of baudrate clock. */
  91:../asf/sam/drivers/usart/usart.c **** #define HIGH_FRQ_SAMPLE_DIV           16
  92:../asf/sam/drivers/usart/usart.c **** #define LOW_FRQ_SAMPLE_DIV            8
  93:../asf/sam/drivers/usart/usart.c **** 
  94:../asf/sam/drivers/usart/usart.c **** /* Max transmitter timeguard. */
  95:../asf/sam/drivers/usart/usart.c **** #define MAX_TRAN_GUARD_TIME           US_TTGR_TG_Msk
  96:../asf/sam/drivers/usart/usart.c **** 
  97:../asf/sam/drivers/usart/usart.c **** /* The non-existent parity error number. */
  98:../asf/sam/drivers/usart/usart.c **** #define USART_PARITY_ERROR            5
  99:../asf/sam/drivers/usart/usart.c **** 
 100:../asf/sam/drivers/usart/usart.c **** /* ISO7816 protocol type. */
 101:../asf/sam/drivers/usart/usart.c **** #define ISO7816_T_0                   0
 102:../asf/sam/drivers/usart/usart.c **** #define ISO7816_T_1                   1
 103:../asf/sam/drivers/usart/usart.c **** 
 104:../asf/sam/drivers/usart/usart.c **** /**
 105:../asf/sam/drivers/usart/usart.c ****  * \brief Calculate a clock divider(CD) and a fractional part (FP) for the
 106:../asf/sam/drivers/usart/usart.c ****  * USART asynchronous modes to generate a baudrate as close as possible to
 107:../asf/sam/drivers/usart/usart.c ****  * the baudrate set point.
 108:../asf/sam/drivers/usart/usart.c ****  *
 109:../asf/sam/drivers/usart/usart.c ****  * \note Baud rate calculation: Baudrate = ul_mck/(Over * (CD + FP/8))
 110:../asf/sam/drivers/usart/usart.c ****  * (Over being 16 or 8). The maximal oversampling is selected if it allows to
 111:../asf/sam/drivers/usart/usart.c ****  * generate a baudrate close to the set point.
 112:../asf/sam/drivers/usart/usart.c ****  *
 113:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 114:../asf/sam/drivers/usart/usart.c ****  * \param baudrate Baud rate set point.
 115:../asf/sam/drivers/usart/usart.c ****  * \param ul_mck USART module input clock frequency.
 116:../asf/sam/drivers/usart/usart.c ****  *
 117:../asf/sam/drivers/usart/usart.c ****  * \retval 0 Baud rate is successfully initialized.
 118:../asf/sam/drivers/usart/usart.c ****  * \retval 1 Baud rate set point is out of range for the given input clock
 119:../asf/sam/drivers/usart/usart.c ****  * frequency.
 120:../asf/sam/drivers/usart/usart.c ****  */
 121:../asf/sam/drivers/usart/usart.c **** uint32_t usart_set_async_baudrate(Usart *p_usart,
 122:../asf/sam/drivers/usart/usart.c **** 		uint32_t baudrate, uint32_t ul_mck)
 123:../asf/sam/drivers/usart/usart.c **** {
  28              		.loc 1 123 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
 124:../asf/sam/drivers/usart/usart.c **** 	uint32_t over;
 125:../asf/sam/drivers/usart/usart.c **** 	uint32_t cd_fp;
 126:../asf/sam/drivers/usart/usart.c **** 	uint32_t cd;
 127:../asf/sam/drivers/usart/usart.c **** 	uint32_t fp;
 128:../asf/sam/drivers/usart/usart.c **** 
 129:../asf/sam/drivers/usart/usart.c **** 	/* Calculate the receiver sampling divide of baudrate clock. */
 130:../asf/sam/drivers/usart/usart.c **** 	if (ul_mck >= HIGH_FRQ_SAMPLE_DIV * baudrate) {
  34              		.loc 1 130 0
  35 0000 0B01     		lsls	r3, r1, #4
  36 0002 9342     		cmp	r3, r2
 123:../asf/sam/drivers/usart/usart.c **** 	uint32_t over;
  37              		.loc 1 123 0
  38 0004 10B4     		push	{r4}
  39              		.cfi_def_cfa_offset 4
  40              		.cfi_offset 4, -4
ARM GAS  /tmp/ccJYkMjP.s 			page 4


  41              		.loc 1 130 0
  42 0006 14D8     		bhi	.L15
  43              	.LVL1:
 131:../asf/sam/drivers/usart/usart.c **** 		over = HIGH_FRQ_SAMPLE_DIV;
 132:../asf/sam/drivers/usart/usart.c **** 	} else {
 133:../asf/sam/drivers/usart/usart.c **** 		over = LOW_FRQ_SAMPLE_DIV;
 134:../asf/sam/drivers/usart/usart.c **** 	}
 135:../asf/sam/drivers/usart/usart.c **** 
 136:../asf/sam/drivers/usart/usart.c **** 	/* Calculate clock divider according to the fraction calculated formula. */
 137:../asf/sam/drivers/usart/usart.c **** 	cd_fp = (8 * ul_mck + (over * baudrate) / 2) / (over * baudrate);
  44              		.loc 1 137 0
  45 0008 5908     		lsrs	r1, r3, #1
  46              	.LVL2:
 138:../asf/sam/drivers/usart/usart.c **** 	cd = cd_fp >> 3;
 139:../asf/sam/drivers/usart/usart.c **** 	fp = cd_fp & 0x07;
 140:../asf/sam/drivers/usart/usart.c **** 	if (cd < MIN_CD_VALUE || cd > MAX_CD_VALUE) {
  47              		.loc 1 140 0
  48 000a 4FF6FE74 		movw	r4, #65534
 137:../asf/sam/drivers/usart/usart.c **** 	cd = cd_fp >> 3;
  49              		.loc 1 137 0
  50 000e 01EBC202 		add	r2, r1, r2, lsl #3
  51              	.LVL3:
  52 0012 B2FBF3F2 		udiv	r2, r2, r3
  53              	.LVL4:
 138:../asf/sam/drivers/usart/usart.c **** 	cd = cd_fp >> 3;
  54              		.loc 1 138 0
  55 0016 D308     		lsrs	r3, r2, #3
  56              	.LVL5:
  57              		.loc 1 140 0
  58 0018 591E     		subs	r1, r3, #1
  59 001a A142     		cmp	r1, r4
  60 001c 15D8     		bhi	.L8
  61              	.LVL6:
  62              	.L5:
 141:../asf/sam/drivers/usart/usart.c **** 		return 1;
 142:../asf/sam/drivers/usart/usart.c **** 	}
 143:../asf/sam/drivers/usart/usart.c **** 
 144:../asf/sam/drivers/usart/usart.c **** 	/* Configure the OVER bit in MR register. */
 145:../asf/sam/drivers/usart/usart.c **** 	if (over == 8) {
 146:../asf/sam/drivers/usart/usart.c **** 		p_usart->US_MR |= US_MR_OVER;
 147:../asf/sam/drivers/usart/usart.c **** 	}
 148:../asf/sam/drivers/usart/usart.c **** 
 149:../asf/sam/drivers/usart/usart.c **** 	/* Configure the baudrate generate register. */
 150:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_BRGR = (cd << US_BRGR_CD_Pos) | (fp << US_BRGR_FP_Pos);
  63              		.loc 1 150 0
  64 001e 1204     		lsls	r2, r2, #16
  65              	.LVL7:
 151:../asf/sam/drivers/usart/usart.c **** 
 152:../asf/sam/drivers/usart/usart.c **** 	return 0;
  66              		.loc 1 152 0
  67 0020 0021     		movs	r1, #0
 153:../asf/sam/drivers/usart/usart.c **** }
  68              		.loc 1 153 0
  69 0022 5DF8044B 		ldr	r4, [sp], #4
  70              		.cfi_remember_state
  71              		.cfi_restore 4
  72              		.cfi_def_cfa_offset 0
ARM GAS  /tmp/ccJYkMjP.s 			page 5


 150:../asf/sam/drivers/usart/usart.c **** 
  73              		.loc 1 150 0
  74 0026 02F4E022 		and	r2, r2, #458752
  75 002a 1A43     		orrs	r2, r2, r3
  76 002c 0262     		str	r2, [r0, #32]
  77              		.loc 1 153 0
  78 002e 0846     		mov	r0, r1
  79              	.LVL8:
  80 0030 7047     		bx	lr
  81              	.LVL9:
  82              	.L15:
  83              		.cfi_restore_state
 137:../asf/sam/drivers/usart/usart.c **** 	cd = cd_fp >> 3;
  84              		.loc 1 137 0
  85 0032 C900     		lsls	r1, r1, #3
  86              	.LVL10:
 140:../asf/sam/drivers/usart/usart.c **** 		return 1;
  87              		.loc 1 140 0
  88 0034 4FF6FE74 		movw	r4, #65534
 137:../asf/sam/drivers/usart/usart.c **** 	cd = cd_fp >> 3;
  89              		.loc 1 137 0
  90 0038 4B08     		lsrs	r3, r1, #1
  91 003a 03EBC202 		add	r2, r3, r2, lsl #3
  92              	.LVL11:
  93 003e B2FBF1F2 		udiv	r2, r2, r1
  94              	.LVL12:
 138:../asf/sam/drivers/usart/usart.c **** 	fp = cd_fp & 0x07;
  95              		.loc 1 138 0
  96 0042 D308     		lsrs	r3, r2, #3
  97              	.LVL13:
 140:../asf/sam/drivers/usart/usart.c **** 		return 1;
  98              		.loc 1 140 0
  99 0044 591E     		subs	r1, r3, #1
 100 0046 A142     		cmp	r1, r4
 101 0048 04D9     		bls	.L16
 102              	.LVL14:
 103              	.L8:
 141:../asf/sam/drivers/usart/usart.c **** 	}
 104              		.loc 1 141 0
 105 004a 0121     		movs	r1, #1
 106              		.loc 1 153 0
 107 004c 5DF8044B 		ldr	r4, [sp], #4
 108              		.cfi_remember_state
 109              		.cfi_restore 4
 110              		.cfi_def_cfa_offset 0
 111 0050 0846     		mov	r0, r1
 112              	.LVL15:
 113 0052 7047     		bx	lr
 114              	.LVL16:
 115              	.L16:
 116              		.cfi_restore_state
 146:../asf/sam/drivers/usart/usart.c **** 	}
 117              		.loc 1 146 0
 118 0054 4168     		ldr	r1, [r0, #4]
 119 0056 41F40021 		orr	r1, r1, #524288
 120 005a 4160     		str	r1, [r0, #4]
 121 005c DFE7     		b	.L5
ARM GAS  /tmp/ccJYkMjP.s 			page 6


 122              		.cfi_endproc
 123              	.LFE142:
 124              		.size	usart_set_async_baudrate, .-usart_set_async_baudrate
 125 005e 00BF     		.section	.text.usart_reset,"ax",%progbits
 126              		.align	1
 127              		.p2align 2,,3
 128              		.global	usart_reset
 129              		.syntax unified
 130              		.thumb
 131              		.thumb_func
 132              		.fpu fpv5-d16
 133              		.type	usart_reset, %function
 134              	usart_reset:
 135              	.LFB147:
 154:../asf/sam/drivers/usart/usart.c **** 
 155:../asf/sam/drivers/usart/usart.c **** /**
 156:../asf/sam/drivers/usart/usart.c ****  * \brief Calculate a clock divider for the USART synchronous master modes
 157:../asf/sam/drivers/usart/usart.c ****  * to generate a baudrate as close as possible to the baudrate set point.
 158:../asf/sam/drivers/usart/usart.c ****  *
 159:../asf/sam/drivers/usart/usart.c ****  * \note Synchronous baudrate calculation: baudrate = ul_mck / cd
 160:../asf/sam/drivers/usart/usart.c ****  *
 161:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 162:../asf/sam/drivers/usart/usart.c ****  * \param baudrate Baud rate set point.
 163:../asf/sam/drivers/usart/usart.c ****  * \param ul_mck USART module input clock frequency.
 164:../asf/sam/drivers/usart/usart.c ****  *
 165:../asf/sam/drivers/usart/usart.c ****  * \retval 0 Baud rate is successfully initialized.
 166:../asf/sam/drivers/usart/usart.c ****  * \retval 1 Baud rate set point is out of range for the given input clock
 167:../asf/sam/drivers/usart/usart.c ****  * frequency.
 168:../asf/sam/drivers/usart/usart.c ****  */
 169:../asf/sam/drivers/usart/usart.c **** static uint32_t usart_set_sync_master_baudrate(Usart *p_usart,
 170:../asf/sam/drivers/usart/usart.c **** 		uint32_t baudrate, uint32_t ul_mck)
 171:../asf/sam/drivers/usart/usart.c **** {
 172:../asf/sam/drivers/usart/usart.c **** 	uint32_t cd;
 173:../asf/sam/drivers/usart/usart.c **** 
 174:../asf/sam/drivers/usart/usart.c **** 	/* Calculate clock divider according to the formula in synchronous mode. */
 175:../asf/sam/drivers/usart/usart.c **** 	cd = (ul_mck + baudrate / 2) / baudrate;
 176:../asf/sam/drivers/usart/usart.c **** 
 177:../asf/sam/drivers/usart/usart.c **** 	if (cd < MIN_CD_VALUE || cd > MAX_CD_VALUE) {
 178:../asf/sam/drivers/usart/usart.c **** 		return 1;
 179:../asf/sam/drivers/usart/usart.c **** 	}
 180:../asf/sam/drivers/usart/usart.c **** 
 181:../asf/sam/drivers/usart/usart.c **** 	/* Configure the baudrate generate register. */
 182:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_BRGR = cd << US_BRGR_CD_Pos;
 183:../asf/sam/drivers/usart/usart.c **** 
 184:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR = (p_usart->US_MR & ~US_MR_USCLKS_Msk) |
 185:../asf/sam/drivers/usart/usart.c **** 			US_MR_USCLKS_MCK | US_MR_SYNC;
 186:../asf/sam/drivers/usart/usart.c **** 	return 0;
 187:../asf/sam/drivers/usart/usart.c **** }
 188:../asf/sam/drivers/usart/usart.c **** 
 189:../asf/sam/drivers/usart/usart.c **** /**
 190:../asf/sam/drivers/usart/usart.c ****  * \brief Select the SCK pin as the source of baud rate for the USART
 191:../asf/sam/drivers/usart/usart.c ****  * synchronous slave modes.
 192:../asf/sam/drivers/usart/usart.c ****  *
 193:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 194:../asf/sam/drivers/usart/usart.c ****  */
 195:../asf/sam/drivers/usart/usart.c **** static void usart_set_sync_slave_baudrate(Usart *p_usart)
 196:../asf/sam/drivers/usart/usart.c **** {
ARM GAS  /tmp/ccJYkMjP.s 			page 7


 197:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR = (p_usart->US_MR & ~US_MR_USCLKS_Msk) |
 198:../asf/sam/drivers/usart/usart.c **** 			US_MR_USCLKS_SCK | US_MR_SYNC;
 199:../asf/sam/drivers/usart/usart.c **** }
 200:../asf/sam/drivers/usart/usart.c **** 
 201:../asf/sam/drivers/usart/usart.c **** /**
 202:../asf/sam/drivers/usart/usart.c ****  * \brief Calculate a clock divider (\e CD) for the USART SPI master mode to
 203:../asf/sam/drivers/usart/usart.c ****  * generate a baud rate as close as possible to the baud rate set point.
 204:../asf/sam/drivers/usart/usart.c ****  *
 205:../asf/sam/drivers/usart/usart.c ****  * \note Baud rate calculation:
 206:../asf/sam/drivers/usart/usart.c ****  * \f$ Baudrate = \frac{SelectedClock}{CD} \f$.
 207:../asf/sam/drivers/usart/usart.c ****  *
 208:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 209:../asf/sam/drivers/usart/usart.c ****  * \param baudrate Baud rate set point.
 210:../asf/sam/drivers/usart/usart.c ****  * \param ul_mck USART module input clock frequency.
 211:../asf/sam/drivers/usart/usart.c ****  *
 212:../asf/sam/drivers/usart/usart.c ****  * \retval 0 Baud rate is successfully initialized.
 213:../asf/sam/drivers/usart/usart.c ****  * \retval 1 Baud rate set point is out of range for the given input clock
 214:../asf/sam/drivers/usart/usart.c ****  * frequency.
 215:../asf/sam/drivers/usart/usart.c ****  */
 216:../asf/sam/drivers/usart/usart.c **** static uint32_t usart_set_spi_master_baudrate(Usart *p_usart,
 217:../asf/sam/drivers/usart/usart.c **** 		uint32_t baudrate, uint32_t ul_mck)
 218:../asf/sam/drivers/usart/usart.c **** {
 219:../asf/sam/drivers/usart/usart.c **** 	uint32_t cd;
 220:../asf/sam/drivers/usart/usart.c **** 
 221:../asf/sam/drivers/usart/usart.c **** 	/* Calculate the clock divider according to the formula in SPI mode. */
 222:../asf/sam/drivers/usart/usart.c **** 	cd = (ul_mck + baudrate / 2) / baudrate;
 223:../asf/sam/drivers/usart/usart.c **** 
 224:../asf/sam/drivers/usart/usart.c **** 	if (cd < MIN_CD_VALUE_SPI || cd > MAX_CD_VALUE) {
 225:../asf/sam/drivers/usart/usart.c **** 		return 1;
 226:../asf/sam/drivers/usart/usart.c **** 	}
 227:../asf/sam/drivers/usart/usart.c **** 
 228:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_BRGR = cd << US_BRGR_CD_Pos;
 229:../asf/sam/drivers/usart/usart.c **** 
 230:../asf/sam/drivers/usart/usart.c **** 	return 0;
 231:../asf/sam/drivers/usart/usart.c **** }
 232:../asf/sam/drivers/usart/usart.c **** 
 233:../asf/sam/drivers/usart/usart.c **** /**
 234:../asf/sam/drivers/usart/usart.c ****  * \brief Select the SCK pin as the source of baudrate for the USART SPI slave
 235:../asf/sam/drivers/usart/usart.c ****  * mode.
 236:../asf/sam/drivers/usart/usart.c ****  *
 237:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 238:../asf/sam/drivers/usart/usart.c ****  */
 239:../asf/sam/drivers/usart/usart.c **** static void usart_set_spi_slave_baudrate(Usart *p_usart)
 240:../asf/sam/drivers/usart/usart.c **** {
 241:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR &= ~US_MR_USCLKS_Msk;
 242:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR |= US_MR_USCLKS_SCK;
 243:../asf/sam/drivers/usart/usart.c **** }
 244:../asf/sam/drivers/usart/usart.c **** 
 245:../asf/sam/drivers/usart/usart.c **** /**
 246:../asf/sam/drivers/usart/usart.c ****  * \brief Reset the USART and disable TX and RX.
 247:../asf/sam/drivers/usart/usart.c ****  *
 248:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 249:../asf/sam/drivers/usart/usart.c ****  */
 250:../asf/sam/drivers/usart/usart.c **** void usart_reset(Usart *p_usart)
 251:../asf/sam/drivers/usart/usart.c **** {
 136              		.loc 1 251 0
 137              		.cfi_startproc
ARM GAS  /tmp/ccJYkMjP.s 			page 8


 138              		@ args = 0, pretend = 0, frame = 0
 139              		@ frame_needed = 0, uses_anonymous_args = 0
 140              		@ link register save eliminated.
 141              	.LVL17:
 142 0000 70B4     		push	{r4, r5, r6}
 143              		.cfi_def_cfa_offset 12
 144              		.cfi_offset 4, -12
 145              		.cfi_offset 5, -8
 146              		.cfi_offset 6, -4
 252:../asf/sam/drivers/usart/usart.c **** 	/* Disable the Write Protect. */
 253:../asf/sam/drivers/usart/usart.c **** 	usart_disable_writeprotect(p_usart);
 254:../asf/sam/drivers/usart/usart.c **** 
 255:../asf/sam/drivers/usart/usart.c **** 	/* Reset registers that could cause unpredictable behavior after reset. */
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR = 0;
 147              		.loc 1 256 0
 148 0002 0023     		movs	r3, #0
 149              	.LBB144:
 150              	.LBB145:
 257:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 258:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_TTGR = 0;
 259:../asf/sam/drivers/usart/usart.c **** 
 260:../asf/sam/drivers/usart/usart.c **** 	/* Disable TX and RX. */
 261:../asf/sam/drivers/usart/usart.c **** 	usart_reset_tx(p_usart);
 262:../asf/sam/drivers/usart/usart.c **** 	usart_reset_rx(p_usart);
 263:../asf/sam/drivers/usart/usart.c **** 	/* Reset status bits. */
 264:../asf/sam/drivers/usart/usart.c **** 	usart_reset_status(p_usart);
 265:../asf/sam/drivers/usart/usart.c **** 	/* Turn off RTS and DTR if exist. */
 266:../asf/sam/drivers/usart/usart.c **** 	usart_drive_RTS_pin_high(p_usart);
 267:../asf/sam/drivers/usart/usart.c **** #if (SAM3S || SAM4S || SAM3U || SAM4L || SAM4E)
 268:../asf/sam/drivers/usart/usart.c **** 	usart_drive_DTR_pin_high(p_usart);
 269:../asf/sam/drivers/usart/usart.c **** #endif
 270:../asf/sam/drivers/usart/usart.c **** }
 271:../asf/sam/drivers/usart/usart.c **** 
 272:../asf/sam/drivers/usart/usart.c **** /**
 273:../asf/sam/drivers/usart/usart.c ****  * \brief Configure USART to work in RS232 mode.
 274:../asf/sam/drivers/usart/usart.c ****  *
 275:../asf/sam/drivers/usart/usart.c ****  * \note By default, the transmitter and receiver aren't enabled.
 276:../asf/sam/drivers/usart/usart.c ****  *
 277:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 278:../asf/sam/drivers/usart/usart.c ****  * \param p_usart_opt Pointer to sam_usart_opt_t instance.
 279:../asf/sam/drivers/usart/usart.c ****  * \param ul_mck USART module input clock frequency.
 280:../asf/sam/drivers/usart/usart.c ****  *
 281:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
 282:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
 283:../asf/sam/drivers/usart/usart.c ****  */
 284:../asf/sam/drivers/usart/usart.c **** uint32_t usart_init_rs232(Usart *p_usart,
 285:../asf/sam/drivers/usart/usart.c **** 		const sam_usart_opt_t *p_usart_opt, uint32_t ul_mck)
 286:../asf/sam/drivers/usart/usart.c **** {
 287:../asf/sam/drivers/usart/usart.c **** 	static uint32_t ul_reg_val;
 288:../asf/sam/drivers/usart/usart.c **** 
 289:../asf/sam/drivers/usart/usart.c **** 	/* Reset the USART and shut down TX and RX. */
 290:../asf/sam/drivers/usart/usart.c **** 	usart_reset(p_usart);
 291:../asf/sam/drivers/usart/usart.c **** 
 292:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val = 0;
 293:../asf/sam/drivers/usart/usart.c **** 	/* Check whether the input values are legal. */
 294:../asf/sam/drivers/usart/usart.c **** 	if (!p_usart_opt || usart_set_async_baudrate(p_usart,
 295:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->baudrate, ul_mck)) {
ARM GAS  /tmp/ccJYkMjP.s 			page 9


 296:../asf/sam/drivers/usart/usart.c **** 		return 1;
 297:../asf/sam/drivers/usart/usart.c **** 	}
 298:../asf/sam/drivers/usart/usart.c **** 
 299:../asf/sam/drivers/usart/usart.c **** 	/* Configure the USART option. */
 300:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val |= p_usart_opt->char_length | p_usart_opt->parity_type |
 301:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->channel_mode | p_usart_opt->stop_bits;
 302:../asf/sam/drivers/usart/usart.c **** 
 303:../asf/sam/drivers/usart/usart.c **** 	/* Configure the USART mode as normal mode. */
 304:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val |= US_MR_USART_MODE_NORMAL;
 305:../asf/sam/drivers/usart/usart.c **** 
 306:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR |= ul_reg_val;
 307:../asf/sam/drivers/usart/usart.c **** 
 308:../asf/sam/drivers/usart/usart.c **** 	return 0;
 309:../asf/sam/drivers/usart/usart.c **** }
 310:../asf/sam/drivers/usart/usart.c **** 
 311:../asf/sam/drivers/usart/usart.c **** /**
 312:../asf/sam/drivers/usart/usart.c ****  * \brief Configure USART to work in hardware handshaking mode.
 313:../asf/sam/drivers/usart/usart.c ****  *
 314:../asf/sam/drivers/usart/usart.c ****  * \note By default, the transmitter and receiver aren't enabled.
 315:../asf/sam/drivers/usart/usart.c ****  *
 316:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 317:../asf/sam/drivers/usart/usart.c ****  * \param p_usart_opt Pointer to sam_usart_opt_t instance.
 318:../asf/sam/drivers/usart/usart.c ****  * \param ul_mck USART module input clock frequency.
 319:../asf/sam/drivers/usart/usart.c ****  *
 320:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
 321:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
 322:../asf/sam/drivers/usart/usart.c ****  */
 323:../asf/sam/drivers/usart/usart.c **** uint32_t usart_init_hw_handshaking(Usart *p_usart,
 324:../asf/sam/drivers/usart/usart.c **** 		const sam_usart_opt_t *p_usart_opt, uint32_t ul_mck)
 325:../asf/sam/drivers/usart/usart.c **** {
 326:../asf/sam/drivers/usart/usart.c **** 	/* Initialize the USART as standard RS232. */
 327:../asf/sam/drivers/usart/usart.c **** 	if (usart_init_rs232(p_usart, p_usart_opt, ul_mck)) {
 328:../asf/sam/drivers/usart/usart.c **** 		return 1;
 329:../asf/sam/drivers/usart/usart.c **** 	}
 330:../asf/sam/drivers/usart/usart.c **** 
 331:../asf/sam/drivers/usart/usart.c **** 	/* Set hardware handshaking mode. */
 332:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR = (p_usart->US_MR & ~US_MR_USART_MODE_Msk) |
 333:../asf/sam/drivers/usart/usart.c **** 			US_MR_USART_MODE_HW_HANDSHAKING;
 334:../asf/sam/drivers/usart/usart.c **** 
 335:../asf/sam/drivers/usart/usart.c **** 	return 0;
 336:../asf/sam/drivers/usart/usart.c **** }
 337:../asf/sam/drivers/usart/usart.c **** 
 338:../asf/sam/drivers/usart/usart.c **** #if (SAM3S || SAM4S || SAM3U || SAM4L || SAM4E)
 339:../asf/sam/drivers/usart/usart.c **** 
 340:../asf/sam/drivers/usart/usart.c **** /**
 341:../asf/sam/drivers/usart/usart.c ****  * \brief Configure USART to work in modem mode.
 342:../asf/sam/drivers/usart/usart.c ****  *
 343:../asf/sam/drivers/usart/usart.c ****  * \note By default, the transmitter and receiver aren't enabled.
 344:../asf/sam/drivers/usart/usart.c ****  *
 345:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 346:../asf/sam/drivers/usart/usart.c ****  * \param p_usart_opt Pointer to sam_usart_opt_t instance.
 347:../asf/sam/drivers/usart/usart.c ****  * \param ul_mck USART module input clock frequency.
 348:../asf/sam/drivers/usart/usart.c ****  *
 349:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
 350:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
 351:../asf/sam/drivers/usart/usart.c ****  */
 352:../asf/sam/drivers/usart/usart.c **** uint32_t usart_init_modem(Usart *p_usart,
ARM GAS  /tmp/ccJYkMjP.s 			page 10


 353:../asf/sam/drivers/usart/usart.c **** 		const sam_usart_opt_t *p_usart_opt, uint32_t ul_mck)
 354:../asf/sam/drivers/usart/usart.c **** {
 355:../asf/sam/drivers/usart/usart.c **** 	/*
 356:../asf/sam/drivers/usart/usart.c **** 	 * SAM3S, SAM4S and SAM4E series support MODEM mode only on USART1,
 357:../asf/sam/drivers/usart/usart.c **** 	 * SAM3U and SAM4L series support MODEM mode only on USART0.
 358:../asf/sam/drivers/usart/usart.c **** 	 */
 359:../asf/sam/drivers/usart/usart.c **** #if (SAM3S || SAM4S || SAM4E)
 360:../asf/sam/drivers/usart/usart.c **** #ifdef USART1
 361:../asf/sam/drivers/usart/usart.c **** 	if (p_usart != USART1) {
 362:../asf/sam/drivers/usart/usart.c **** 		return 1;
 363:../asf/sam/drivers/usart/usart.c **** 	}
 364:../asf/sam/drivers/usart/usart.c **** #endif
 365:../asf/sam/drivers/usart/usart.c **** #elif (SAM3U || SAM4L)
 366:../asf/sam/drivers/usart/usart.c **** 	if (p_usart != USART0) {
 367:../asf/sam/drivers/usart/usart.c **** 		return 1;
 368:../asf/sam/drivers/usart/usart.c **** 	}
 369:../asf/sam/drivers/usart/usart.c **** #endif
 370:../asf/sam/drivers/usart/usart.c **** 
 371:../asf/sam/drivers/usart/usart.c **** 	/* Initialize the USART as standard RS232. */
 372:../asf/sam/drivers/usart/usart.c **** 	if (usart_init_rs232(p_usart, p_usart_opt, ul_mck)) {
 373:../asf/sam/drivers/usart/usart.c **** 		return 1;
 374:../asf/sam/drivers/usart/usart.c **** 	}
 375:../asf/sam/drivers/usart/usart.c **** 
 376:../asf/sam/drivers/usart/usart.c **** 	/* Set MODEM mode. */
 377:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR = (p_usart->US_MR & ~US_MR_USART_MODE_Msk) |
 378:../asf/sam/drivers/usart/usart.c **** 			US_MR_USART_MODE_MODEM;
 379:../asf/sam/drivers/usart/usart.c **** 
 380:../asf/sam/drivers/usart/usart.c **** 	return 0;
 381:../asf/sam/drivers/usart/usart.c **** }
 382:../asf/sam/drivers/usart/usart.c **** #endif
 383:../asf/sam/drivers/usart/usart.c **** 
 384:../asf/sam/drivers/usart/usart.c **** /**
 385:../asf/sam/drivers/usart/usart.c ****  * \brief Configure USART to work in SYNC mode and act as a master.
 386:../asf/sam/drivers/usart/usart.c ****  *
 387:../asf/sam/drivers/usart/usart.c ****  * \note By default, the transmitter and receiver aren't enabled.
 388:../asf/sam/drivers/usart/usart.c ****  *
 389:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 390:../asf/sam/drivers/usart/usart.c ****  * \param p_usart_opt Pointer to sam_usart_opt_t instance.
 391:../asf/sam/drivers/usart/usart.c ****  * \param ul_mck USART module input clock frequency.
 392:../asf/sam/drivers/usart/usart.c ****  *
 393:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
 394:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
 395:../asf/sam/drivers/usart/usart.c ****  */
 396:../asf/sam/drivers/usart/usart.c **** uint32_t usart_init_sync_master(Usart *p_usart,
 397:../asf/sam/drivers/usart/usart.c **** 		const sam_usart_opt_t *p_usart_opt, uint32_t ul_mck)
 398:../asf/sam/drivers/usart/usart.c **** {
 399:../asf/sam/drivers/usart/usart.c **** 	static uint32_t ul_reg_val;
 400:../asf/sam/drivers/usart/usart.c **** 
 401:../asf/sam/drivers/usart/usart.c **** 	/* Reset the USART and shut down TX and RX. */
 402:../asf/sam/drivers/usart/usart.c **** 	usart_reset(p_usart);
 403:../asf/sam/drivers/usart/usart.c **** 
 404:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val = 0;
 405:../asf/sam/drivers/usart/usart.c **** 	/* Check whether the input values are legal. */
 406:../asf/sam/drivers/usart/usart.c **** 	if (!p_usart_opt || usart_set_sync_master_baudrate(p_usart,
 407:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->baudrate, ul_mck)) {
 408:../asf/sam/drivers/usart/usart.c **** 		return 1;
 409:../asf/sam/drivers/usart/usart.c **** 	}
ARM GAS  /tmp/ccJYkMjP.s 			page 11


 410:../asf/sam/drivers/usart/usart.c **** 
 411:../asf/sam/drivers/usart/usart.c **** 	/* Configure the USART option. */
 412:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val |= p_usart_opt->char_length | p_usart_opt->parity_type |
 413:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->channel_mode | p_usart_opt->stop_bits;
 414:../asf/sam/drivers/usart/usart.c **** 
 415:../asf/sam/drivers/usart/usart.c **** 	/* Set normal mode and output clock as synchronous master. */
 416:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val |= US_MR_USART_MODE_NORMAL | US_MR_CLKO;
 417:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR |= ul_reg_val;
 418:../asf/sam/drivers/usart/usart.c **** 
 419:../asf/sam/drivers/usart/usart.c **** 	return 0;
 420:../asf/sam/drivers/usart/usart.c **** }
 421:../asf/sam/drivers/usart/usart.c **** 
 422:../asf/sam/drivers/usart/usart.c **** /**
 423:../asf/sam/drivers/usart/usart.c ****  * \brief Configure USART to work in SYNC mode and act as a slave.
 424:../asf/sam/drivers/usart/usart.c ****  *
 425:../asf/sam/drivers/usart/usart.c ****  * \note By default, the transmitter and receiver aren't enabled.
 426:../asf/sam/drivers/usart/usart.c ****  *
 427:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 428:../asf/sam/drivers/usart/usart.c ****  * \param p_usart_opt Pointer to sam_usart_opt_t instance.
 429:../asf/sam/drivers/usart/usart.c ****  *
 430:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
 431:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
 432:../asf/sam/drivers/usart/usart.c ****  */
 433:../asf/sam/drivers/usart/usart.c **** uint32_t usart_init_sync_slave(Usart *p_usart,
 434:../asf/sam/drivers/usart/usart.c **** 		const sam_usart_opt_t *p_usart_opt)
 435:../asf/sam/drivers/usart/usart.c **** {
 436:../asf/sam/drivers/usart/usart.c **** 	static uint32_t ul_reg_val;
 437:../asf/sam/drivers/usart/usart.c **** 
 438:../asf/sam/drivers/usart/usart.c **** 	/* Reset the USART and shut down TX and RX. */
 439:../asf/sam/drivers/usart/usart.c **** 	usart_reset(p_usart);
 440:../asf/sam/drivers/usart/usart.c **** 
 441:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val = 0;
 442:../asf/sam/drivers/usart/usart.c **** 	usart_set_sync_slave_baudrate(p_usart);
 443:../asf/sam/drivers/usart/usart.c **** 
 444:../asf/sam/drivers/usart/usart.c **** 	/* Check whether the input values are legal. */
 445:../asf/sam/drivers/usart/usart.c **** 	if (!p_usart_opt) {
 446:../asf/sam/drivers/usart/usart.c **** 		return 1;
 447:../asf/sam/drivers/usart/usart.c **** 	}
 448:../asf/sam/drivers/usart/usart.c **** 
 449:../asf/sam/drivers/usart/usart.c **** 	/* Configure the USART option. */
 450:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val |= p_usart_opt->char_length | p_usart_opt->parity_type |
 451:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->channel_mode | p_usart_opt->stop_bits;
 452:../asf/sam/drivers/usart/usart.c **** 
 453:../asf/sam/drivers/usart/usart.c **** 	/* Set normal mode. */
 454:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val |= US_MR_USART_MODE_NORMAL;
 455:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR |= ul_reg_val;
 456:../asf/sam/drivers/usart/usart.c **** 
 457:../asf/sam/drivers/usart/usart.c **** 	return 0;
 458:../asf/sam/drivers/usart/usart.c **** }
 459:../asf/sam/drivers/usart/usart.c **** 
 460:../asf/sam/drivers/usart/usart.c **** /**
 461:../asf/sam/drivers/usart/usart.c ****  * \brief Configure USART to work in RS485 mode.
 462:../asf/sam/drivers/usart/usart.c ****  *
 463:../asf/sam/drivers/usart/usart.c ****  * \note By default, the transmitter and receiver aren't enabled.
 464:../asf/sam/drivers/usart/usart.c ****  *
 465:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 466:../asf/sam/drivers/usart/usart.c ****  * \param p_usart_opt Pointer to sam_usart_opt_t instance.
ARM GAS  /tmp/ccJYkMjP.s 			page 12


 467:../asf/sam/drivers/usart/usart.c ****  * \param ul_mck USART module input clock frequency.
 468:../asf/sam/drivers/usart/usart.c ****  *
 469:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
 470:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
 471:../asf/sam/drivers/usart/usart.c ****  */
 472:../asf/sam/drivers/usart/usart.c **** uint32_t usart_init_rs485(Usart *p_usart,
 473:../asf/sam/drivers/usart/usart.c **** 		const sam_usart_opt_t *p_usart_opt, uint32_t ul_mck)
 474:../asf/sam/drivers/usart/usart.c **** {
 475:../asf/sam/drivers/usart/usart.c **** 	/* Initialize the USART as standard RS232. */
 476:../asf/sam/drivers/usart/usart.c **** 	if (usart_init_rs232(p_usart, p_usart_opt, ul_mck)) {
 477:../asf/sam/drivers/usart/usart.c **** 		return 1;
 478:../asf/sam/drivers/usart/usart.c **** 	}
 479:../asf/sam/drivers/usart/usart.c **** 
 480:../asf/sam/drivers/usart/usart.c **** 	/* Set RS485 mode. */
 481:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR = (p_usart->US_MR & ~US_MR_USART_MODE_Msk) |
 482:../asf/sam/drivers/usart/usart.c **** 			US_MR_USART_MODE_RS485;
 483:../asf/sam/drivers/usart/usart.c **** 
 484:../asf/sam/drivers/usart/usart.c **** 	return 0;
 485:../asf/sam/drivers/usart/usart.c **** }
 486:../asf/sam/drivers/usart/usart.c **** 
 487:../asf/sam/drivers/usart/usart.c **** #if (!SAMG55 && !SAMV71 && !SAMV70 && !SAME70 && !SAMS70)
 488:../asf/sam/drivers/usart/usart.c **** /**
 489:../asf/sam/drivers/usart/usart.c ****  * \brief Configure USART to work in IrDA mode.
 490:../asf/sam/drivers/usart/usart.c ****  *
 491:../asf/sam/drivers/usart/usart.c ****  * \note By default, the transmitter and receiver aren't enabled.
 492:../asf/sam/drivers/usart/usart.c ****  *
 493:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 494:../asf/sam/drivers/usart/usart.c ****  * \param p_usart_opt Pointer to sam_usart_opt_t instance.
 495:../asf/sam/drivers/usart/usart.c ****  * \param ul_mck USART module input clock frequency.
 496:../asf/sam/drivers/usart/usart.c ****  *
 497:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
 498:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
 499:../asf/sam/drivers/usart/usart.c ****  */
 500:../asf/sam/drivers/usart/usart.c **** uint32_t usart_init_irda(Usart *p_usart,
 501:../asf/sam/drivers/usart/usart.c **** 		const sam_usart_opt_t *p_usart_opt, uint32_t ul_mck)
 502:../asf/sam/drivers/usart/usart.c **** {
 503:../asf/sam/drivers/usart/usart.c **** 	/* Initialize the USART as standard RS232. */
 504:../asf/sam/drivers/usart/usart.c **** 	if (usart_init_rs232(p_usart, p_usart_opt, ul_mck)) {
 505:../asf/sam/drivers/usart/usart.c **** 		return 1;
 506:../asf/sam/drivers/usart/usart.c **** 	}
 507:../asf/sam/drivers/usart/usart.c **** 
 508:../asf/sam/drivers/usart/usart.c **** 	/* Set IrDA filter. */
 509:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_IF = p_usart_opt->irda_filter;
 510:../asf/sam/drivers/usart/usart.c **** 
 511:../asf/sam/drivers/usart/usart.c **** 	/* Set IrDA mode. */
 512:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR = (p_usart->US_MR & ~US_MR_USART_MODE_Msk) |
 513:../asf/sam/drivers/usart/usart.c **** 			US_MR_USART_MODE_IRDA;
 514:../asf/sam/drivers/usart/usart.c **** 
 515:../asf/sam/drivers/usart/usart.c **** 	return 0;
 516:../asf/sam/drivers/usart/usart.c **** }
 517:../asf/sam/drivers/usart/usart.c **** #endif
 518:../asf/sam/drivers/usart/usart.c **** 
 519:../asf/sam/drivers/usart/usart.c **** #if (!SAMV71 && !SAMV70 && !SAME70 && !SAMS70)
 520:../asf/sam/drivers/usart/usart.c **** /**
 521:../asf/sam/drivers/usart/usart.c ****  * \brief Calculate a clock divider (\e CD) for the USART ISO7816 mode to
 522:../asf/sam/drivers/usart/usart.c ****  * generate an ISO7816 clock as close as possible to the clock set point.
 523:../asf/sam/drivers/usart/usart.c ****  *
ARM GAS  /tmp/ccJYkMjP.s 			page 13


 524:../asf/sam/drivers/usart/usart.c ****  * \note ISO7816 clock calculation: Clock = ul_mck / cd
 525:../asf/sam/drivers/usart/usart.c ****  *
 526:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 527:../asf/sam/drivers/usart/usart.c ****  * \param clock ISO7816 clock set point.
 528:../asf/sam/drivers/usart/usart.c ****  * \param ul_mck USART module input clock frequency.
 529:../asf/sam/drivers/usart/usart.c ****  *
 530:../asf/sam/drivers/usart/usart.c ****  * \retval 0 ISO7816 clock is successfully initialized.
 531:../asf/sam/drivers/usart/usart.c ****  * \retval 1 ISO7816 clock set point is out of range for the given input clock
 532:../asf/sam/drivers/usart/usart.c ****  * frequency.
 533:../asf/sam/drivers/usart/usart.c ****  */
 534:../asf/sam/drivers/usart/usart.c **** static uint32_t usart_set_iso7816_clock(Usart *p_usart,
 535:../asf/sam/drivers/usart/usart.c **** 		uint32_t clock, uint32_t ul_mck)
 536:../asf/sam/drivers/usart/usart.c **** {
 537:../asf/sam/drivers/usart/usart.c **** 	uint32_t cd;
 538:../asf/sam/drivers/usart/usart.c **** 
 539:../asf/sam/drivers/usart/usart.c **** 	/* Calculate clock divider according to the formula in ISO7816 mode. */
 540:../asf/sam/drivers/usart/usart.c **** 	cd = (ul_mck + clock / 2) / clock;
 541:../asf/sam/drivers/usart/usart.c **** 
 542:../asf/sam/drivers/usart/usart.c **** 	if (cd < MIN_CD_VALUE || cd > MAX_CD_VALUE) {
 543:../asf/sam/drivers/usart/usart.c **** 		return 1;
 544:../asf/sam/drivers/usart/usart.c **** 	}
 545:../asf/sam/drivers/usart/usart.c **** 
 546:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR = (p_usart->US_MR & ~(US_MR_USCLKS_Msk | US_MR_SYNC |
 547:../asf/sam/drivers/usart/usart.c **** 			US_MR_OVER)) | US_MR_USCLKS_MCK | US_MR_CLKO;
 548:../asf/sam/drivers/usart/usart.c **** 
 549:../asf/sam/drivers/usart/usart.c **** 	/* Configure the baudrate generate register. */
 550:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_BRGR = cd << US_BRGR_CD_Pos;
 551:../asf/sam/drivers/usart/usart.c **** 
 552:../asf/sam/drivers/usart/usart.c **** 	return 0;
 553:../asf/sam/drivers/usart/usart.c **** }
 554:../asf/sam/drivers/usart/usart.c **** 
 555:../asf/sam/drivers/usart/usart.c **** /**
 556:../asf/sam/drivers/usart/usart.c ****  * \brief Configure USART to work in ISO7816 mode.
 557:../asf/sam/drivers/usart/usart.c ****  *
 558:../asf/sam/drivers/usart/usart.c ****  * \note By default, the transmitter and receiver aren't enabled.
 559:../asf/sam/drivers/usart/usart.c ****  *
 560:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 561:../asf/sam/drivers/usart/usart.c ****  * \param p_usart_opt Pointer to sam_usart_opt_t instance.
 562:../asf/sam/drivers/usart/usart.c ****  * \param ul_mck USART module input clock frequency.
 563:../asf/sam/drivers/usart/usart.c ****  *
 564:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
 565:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
 566:../asf/sam/drivers/usart/usart.c ****  */
 567:../asf/sam/drivers/usart/usart.c **** uint32_t usart_init_iso7816(Usart *p_usart,
 568:../asf/sam/drivers/usart/usart.c **** 		const usart_iso7816_opt_t *p_usart_opt, uint32_t ul_mck)
 569:../asf/sam/drivers/usart/usart.c **** {
 570:../asf/sam/drivers/usart/usart.c **** 	static uint32_t ul_reg_val;
 571:../asf/sam/drivers/usart/usart.c **** 
 572:../asf/sam/drivers/usart/usart.c **** 	/* Reset the USART and shut down TX and RX. */
 573:../asf/sam/drivers/usart/usart.c **** 	usart_reset(p_usart);
 574:../asf/sam/drivers/usart/usart.c **** 
 575:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val = 0;
 576:../asf/sam/drivers/usart/usart.c **** 
 577:../asf/sam/drivers/usart/usart.c **** 	/* Check whether the input values are legal. */
 578:../asf/sam/drivers/usart/usart.c **** 	if (!p_usart_opt || ((p_usart_opt->parity_type != US_MR_PAR_EVEN) &&
 579:../asf/sam/drivers/usart/usart.c **** 			(p_usart_opt->parity_type != US_MR_PAR_ODD))) {
 580:../asf/sam/drivers/usart/usart.c **** 		return 1;
ARM GAS  /tmp/ccJYkMjP.s 			page 14


 581:../asf/sam/drivers/usart/usart.c **** 	}
 582:../asf/sam/drivers/usart/usart.c **** 
 583:../asf/sam/drivers/usart/usart.c **** 	if (p_usart_opt->protocol_type == ISO7816_T_0) {
 584:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val |= US_MR_USART_MODE_IS07816_T_0 | US_MR_NBSTOP_2_BIT |
 585:../asf/sam/drivers/usart/usart.c **** 				(p_usart_opt->max_iterations << US_MR_MAX_ITERATION_Pos);
 586:../asf/sam/drivers/usart/usart.c **** 
 587:../asf/sam/drivers/usart/usart.c **** 		if (p_usart_opt->bit_order) {
 588:../asf/sam/drivers/usart/usart.c **** 			ul_reg_val |= US_MR_MSBF;
 589:../asf/sam/drivers/usart/usart.c **** 		}
 590:../asf/sam/drivers/usart/usart.c **** 	} else if (p_usart_opt->protocol_type == ISO7816_T_1) {
 591:../asf/sam/drivers/usart/usart.c **** 		/*
 592:../asf/sam/drivers/usart/usart.c **** 		 * Only LSBF is used in the T=1 protocol, and max_iterations field
 593:../asf/sam/drivers/usart/usart.c **** 		 * is only used in T=0 mode.
 594:../asf/sam/drivers/usart/usart.c **** 		 */
 595:../asf/sam/drivers/usart/usart.c **** 		if (p_usart_opt->bit_order || p_usart_opt->max_iterations) {
 596:../asf/sam/drivers/usart/usart.c **** 			return 1;
 597:../asf/sam/drivers/usart/usart.c **** 		}
 598:../asf/sam/drivers/usart/usart.c **** 
 599:../asf/sam/drivers/usart/usart.c **** 		/* Set USART mode to ISO7816, T=1, and always uses 1 stop bit. */
 600:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val |= US_MR_USART_MODE_IS07816_T_1 | US_MR_NBSTOP_1_BIT;
 601:../asf/sam/drivers/usart/usart.c **** 	} else {
 602:../asf/sam/drivers/usart/usart.c **** 		return 1;
 603:../asf/sam/drivers/usart/usart.c **** 	}
 604:../asf/sam/drivers/usart/usart.c **** 
 605:../asf/sam/drivers/usart/usart.c **** 	/* Set up the baudrate. */
 606:../asf/sam/drivers/usart/usart.c **** 	if (usart_set_iso7816_clock(p_usart, p_usart_opt->iso7816_hz, ul_mck)) {
 607:../asf/sam/drivers/usart/usart.c **** 		return 1;
 608:../asf/sam/drivers/usart/usart.c **** 	}
 609:../asf/sam/drivers/usart/usart.c **** 
 610:../asf/sam/drivers/usart/usart.c **** 	/* Set FIDI register: bit rate = iso7816_hz / fidi_ratio. */
 611:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_FIDI = p_usart_opt->fidi_ratio;
 612:../asf/sam/drivers/usart/usart.c **** 
 613:../asf/sam/drivers/usart/usart.c **** 	/* Set ISO7816 parity type in the MODE register. */
 614:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val |= p_usart_opt->parity_type;
 615:../asf/sam/drivers/usart/usart.c **** 
 616:../asf/sam/drivers/usart/usart.c **** 	if (p_usart_opt->inhibit_nack) {
 617:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val |= US_MR_INACK;
 618:../asf/sam/drivers/usart/usart.c **** 	}
 619:../asf/sam/drivers/usart/usart.c **** 	if (p_usart_opt->dis_suc_nack) {
 620:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val |= US_MR_DSNACK;
 621:../asf/sam/drivers/usart/usart.c **** 	}
 622:../asf/sam/drivers/usart/usart.c **** 
 623:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR |= ul_reg_val;
 624:../asf/sam/drivers/usart/usart.c **** 
 625:../asf/sam/drivers/usart/usart.c **** 	return 0;
 626:../asf/sam/drivers/usart/usart.c **** }
 627:../asf/sam/drivers/usart/usart.c **** 
 628:../asf/sam/drivers/usart/usart.c **** /**
 629:../asf/sam/drivers/usart/usart.c ****  * \brief Reset the ITERATION in US_CSR when the ISO7816 mode is enabled.
 630:../asf/sam/drivers/usart/usart.c ****  *
 631:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 632:../asf/sam/drivers/usart/usart.c ****  */
 633:../asf/sam/drivers/usart/usart.c **** void usart_reset_iterations(Usart *p_usart)
 634:../asf/sam/drivers/usart/usart.c **** {
 635:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RSTIT;
 636:../asf/sam/drivers/usart/usart.c **** }
 637:../asf/sam/drivers/usart/usart.c **** 
ARM GAS  /tmp/ccJYkMjP.s 			page 15


 638:../asf/sam/drivers/usart/usart.c **** /**
 639:../asf/sam/drivers/usart/usart.c ****  * \brief Reset NACK in US_CSR.
 640:../asf/sam/drivers/usart/usart.c ****  *
 641:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 642:../asf/sam/drivers/usart/usart.c ****  */
 643:../asf/sam/drivers/usart/usart.c **** void usart_reset_nack(Usart *p_usart)
 644:../asf/sam/drivers/usart/usart.c **** {
 645:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RSTNACK;
 646:../asf/sam/drivers/usart/usart.c **** }
 647:../asf/sam/drivers/usart/usart.c **** 
 648:../asf/sam/drivers/usart/usart.c **** /**
 649:../asf/sam/drivers/usart/usart.c ****  * \brief Check if both receive buffers are full.
 650:../asf/sam/drivers/usart/usart.c ****  *
 651:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 652:../asf/sam/drivers/usart/usart.c ****  *
 653:../asf/sam/drivers/usart/usart.c ****  * \retval 1 Receive buffers are full.
 654:../asf/sam/drivers/usart/usart.c ****  * \retval 0 Receive buffers are not full.
 655:../asf/sam/drivers/usart/usart.c ****  */
 656:../asf/sam/drivers/usart/usart.c **** uint32_t usart_is_rx_buf_full(Usart *p_usart)
 657:../asf/sam/drivers/usart/usart.c **** {
 658:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_CSR & US_CSR_RXBUFF) > 0;
 659:../asf/sam/drivers/usart/usart.c **** }
 660:../asf/sam/drivers/usart/usart.c **** 
 661:../asf/sam/drivers/usart/usart.c **** #if (!SAM4L)
 662:../asf/sam/drivers/usart/usart.c **** /**
 663:../asf/sam/drivers/usart/usart.c ****  * \brief Check if one receive buffer is filled.
 664:../asf/sam/drivers/usart/usart.c ****  *
 665:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 666:../asf/sam/drivers/usart/usart.c ****  *
 667:../asf/sam/drivers/usart/usart.c ****  * \retval 1 Receive is complete.
 668:../asf/sam/drivers/usart/usart.c ****  * \retval 0 Receive is still pending.
 669:../asf/sam/drivers/usart/usart.c ****  */
 670:../asf/sam/drivers/usart/usart.c **** uint32_t usart_is_rx_buf_end(Usart *p_usart)
 671:../asf/sam/drivers/usart/usart.c **** {
 672:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_CSR & US_CSR_ENDRX) > 0;
 673:../asf/sam/drivers/usart/usart.c **** }
 674:../asf/sam/drivers/usart/usart.c **** 
 675:../asf/sam/drivers/usart/usart.c **** /**
 676:../asf/sam/drivers/usart/usart.c ****  * \brief Check if one transmit buffer is empty.
 677:../asf/sam/drivers/usart/usart.c ****  *
 678:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 679:../asf/sam/drivers/usart/usart.c ****  *
 680:../asf/sam/drivers/usart/usart.c ****  * \retval 1 Transmit is complete.
 681:../asf/sam/drivers/usart/usart.c ****  * \retval 0 Transmit is still pending.
 682:../asf/sam/drivers/usart/usart.c ****  */
 683:../asf/sam/drivers/usart/usart.c **** uint32_t usart_is_tx_buf_end(Usart *p_usart)
 684:../asf/sam/drivers/usart/usart.c **** {
 685:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_CSR & US_CSR_ENDTX) > 0;
 686:../asf/sam/drivers/usart/usart.c **** }
 687:../asf/sam/drivers/usart/usart.c **** 
 688:../asf/sam/drivers/usart/usart.c **** /**
 689:../asf/sam/drivers/usart/usart.c ****  * \brief Check if both transmit buffers are empty.
 690:../asf/sam/drivers/usart/usart.c ****  *
 691:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 692:../asf/sam/drivers/usart/usart.c ****  *
 693:../asf/sam/drivers/usart/usart.c ****  * \retval 1 Transmit buffers are empty.
 694:../asf/sam/drivers/usart/usart.c ****  * \retval 0 Transmit buffers are not empty.
ARM GAS  /tmp/ccJYkMjP.s 			page 16


 695:../asf/sam/drivers/usart/usart.c ****  */
 696:../asf/sam/drivers/usart/usart.c **** uint32_t usart_is_tx_buf_empty(Usart *p_usart)
 697:../asf/sam/drivers/usart/usart.c **** {
 698:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_CSR & US_CSR_TXBUFE) > 0;
 699:../asf/sam/drivers/usart/usart.c **** }
 700:../asf/sam/drivers/usart/usart.c **** #endif
 701:../asf/sam/drivers/usart/usart.c **** 
 702:../asf/sam/drivers/usart/usart.c **** /**
 703:../asf/sam/drivers/usart/usart.c ****  * \brief Get the total number of errors that occur during an ISO7816 transfer.
 704:../asf/sam/drivers/usart/usart.c ****  *
 705:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 706:../asf/sam/drivers/usart/usart.c ****  *
 707:../asf/sam/drivers/usart/usart.c ****  * \return The number of errors that occurred.
 708:../asf/sam/drivers/usart/usart.c ****  */
 709:../asf/sam/drivers/usart/usart.c **** uint8_t usart_get_error_number(Usart *p_usart)
 710:../asf/sam/drivers/usart/usart.c **** {
 711:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_NER & US_NER_NB_ERRORS_Msk);
 712:../asf/sam/drivers/usart/usart.c **** }
 713:../asf/sam/drivers/usart/usart.c **** 
 714:../asf/sam/drivers/usart/usart.c **** #endif
 715:../asf/sam/drivers/usart/usart.c **** 
 716:../asf/sam/drivers/usart/usart.c **** /**
 717:../asf/sam/drivers/usart/usart.c ****  * \brief Configure USART to work in SPI mode and act as a master.
 718:../asf/sam/drivers/usart/usart.c ****  *
 719:../asf/sam/drivers/usart/usart.c ****  * \note By default, the transmitter and receiver aren't enabled.
 720:../asf/sam/drivers/usart/usart.c ****  *
 721:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 722:../asf/sam/drivers/usart/usart.c ****  * \param p_usart_opt Pointer to sam_usart_opt_t instance.
 723:../asf/sam/drivers/usart/usart.c ****  * \param ul_mck USART module input clock frequency.
 724:../asf/sam/drivers/usart/usart.c ****  *
 725:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
 726:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
 727:../asf/sam/drivers/usart/usart.c ****  */
 728:../asf/sam/drivers/usart/usart.c **** uint32_t usart_init_spi_master(Usart *p_usart,
 729:../asf/sam/drivers/usart/usart.c **** 		const usart_spi_opt_t *p_usart_opt, uint32_t ul_mck)
 730:../asf/sam/drivers/usart/usart.c **** {
 731:../asf/sam/drivers/usart/usart.c **** 	static uint32_t ul_reg_val;
 732:../asf/sam/drivers/usart/usart.c **** 
 733:../asf/sam/drivers/usart/usart.c **** 	/* Reset the USART and shut down TX and RX. */
 734:../asf/sam/drivers/usart/usart.c **** 	usart_reset(p_usart);
 735:../asf/sam/drivers/usart/usart.c **** 
 736:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val = 0;
 737:../asf/sam/drivers/usart/usart.c **** 	/* Check whether the input values are legal. */
 738:../asf/sam/drivers/usart/usart.c **** 	if (!p_usart_opt || (p_usart_opt->spi_mode > SPI_MODE_3) ||
 739:../asf/sam/drivers/usart/usart.c **** 			usart_set_spi_master_baudrate(p_usart, p_usart_opt->baudrate,
 740:../asf/sam/drivers/usart/usart.c **** 			ul_mck)) {
 741:../asf/sam/drivers/usart/usart.c **** 		return 1;
 742:../asf/sam/drivers/usart/usart.c **** 	}
 743:../asf/sam/drivers/usart/usart.c **** 
 744:../asf/sam/drivers/usart/usart.c **** 	/* Configure the character length bit in MR register. */
 745:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val |= p_usart_opt->char_length;
 746:../asf/sam/drivers/usart/usart.c **** 
 747:../asf/sam/drivers/usart/usart.c **** 	/* Set SPI master mode and channel mode. */
 748:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val |= US_MR_USART_MODE_SPI_MASTER | US_MR_CLKO |
 749:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->channel_mode;
 750:../asf/sam/drivers/usart/usart.c **** 
 751:../asf/sam/drivers/usart/usart.c **** 	switch (p_usart_opt->spi_mode) {
ARM GAS  /tmp/ccJYkMjP.s 			page 17


 752:../asf/sam/drivers/usart/usart.c **** 	case SPI_MODE_0:
 753:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val |= US_MR_CPHA;
 754:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val &= ~US_MR_CPOL;
 755:../asf/sam/drivers/usart/usart.c **** 		break;
 756:../asf/sam/drivers/usart/usart.c **** 
 757:../asf/sam/drivers/usart/usart.c **** 	case SPI_MODE_1:
 758:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val &= ~US_MR_CPHA;
 759:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val &= ~US_MR_CPOL;
 760:../asf/sam/drivers/usart/usart.c **** 		break;
 761:../asf/sam/drivers/usart/usart.c **** 
 762:../asf/sam/drivers/usart/usart.c **** 	case SPI_MODE_2:
 763:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val |= US_MR_CPHA;
 764:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val |= US_MR_CPOL;
 765:../asf/sam/drivers/usart/usart.c **** 		break;
 766:../asf/sam/drivers/usart/usart.c **** 
 767:../asf/sam/drivers/usart/usart.c **** 	case SPI_MODE_3:
 768:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val &= ~US_MR_CPHA;
 769:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val |= US_MR_CPOL;
 770:../asf/sam/drivers/usart/usart.c **** 		break;
 771:../asf/sam/drivers/usart/usart.c **** 
 772:../asf/sam/drivers/usart/usart.c **** 	default:
 773:../asf/sam/drivers/usart/usart.c **** 		break;
 774:../asf/sam/drivers/usart/usart.c **** 	}
 775:../asf/sam/drivers/usart/usart.c **** 
 776:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR |= ul_reg_val;
 777:../asf/sam/drivers/usart/usart.c **** 
 778:../asf/sam/drivers/usart/usart.c **** 	return 0;
 779:../asf/sam/drivers/usart/usart.c **** }
 780:../asf/sam/drivers/usart/usart.c **** 
 781:../asf/sam/drivers/usart/usart.c **** /**
 782:../asf/sam/drivers/usart/usart.c ****  * \brief Configure USART to work in SPI mode and act as a slave.
 783:../asf/sam/drivers/usart/usart.c ****  *
 784:../asf/sam/drivers/usart/usart.c ****  * \note By default, the transmitter and receiver aren't enabled.
 785:../asf/sam/drivers/usart/usart.c ****  *
 786:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 787:../asf/sam/drivers/usart/usart.c ****  * \param p_usart_opt Pointer to sam_usart_opt_t instance.
 788:../asf/sam/drivers/usart/usart.c ****  *
 789:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
 790:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
 791:../asf/sam/drivers/usart/usart.c ****  */
 792:../asf/sam/drivers/usart/usart.c **** uint32_t usart_init_spi_slave(Usart *p_usart,
 793:../asf/sam/drivers/usart/usart.c **** 		const usart_spi_opt_t *p_usart_opt)
 794:../asf/sam/drivers/usart/usart.c **** {
 795:../asf/sam/drivers/usart/usart.c **** 	static uint32_t ul_reg_val;
 796:../asf/sam/drivers/usart/usart.c **** 
 797:../asf/sam/drivers/usart/usart.c **** 	/* Reset the USART and shut down TX and RX. */
 798:../asf/sam/drivers/usart/usart.c **** 	usart_reset(p_usart);
 799:../asf/sam/drivers/usart/usart.c **** 
 800:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val = 0;
 801:../asf/sam/drivers/usart/usart.c **** 	usart_set_spi_slave_baudrate(p_usart);
 802:../asf/sam/drivers/usart/usart.c **** 
 803:../asf/sam/drivers/usart/usart.c **** 	/* Check whether the input values are legal. */
 804:../asf/sam/drivers/usart/usart.c **** 	if (!p_usart_opt || p_usart_opt->spi_mode > SPI_MODE_3) {
 805:../asf/sam/drivers/usart/usart.c **** 		return 1;
 806:../asf/sam/drivers/usart/usart.c **** 	}
 807:../asf/sam/drivers/usart/usart.c **** 
 808:../asf/sam/drivers/usart/usart.c **** 	/* Configure the character length bit in MR register. */
ARM GAS  /tmp/ccJYkMjP.s 			page 18


 809:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val |= p_usart_opt->char_length;
 810:../asf/sam/drivers/usart/usart.c **** 
 811:../asf/sam/drivers/usart/usart.c **** 	/* Set SPI slave mode and channel mode. */
 812:../asf/sam/drivers/usart/usart.c **** 	ul_reg_val |= US_MR_USART_MODE_SPI_SLAVE | p_usart_opt->channel_mode;
 813:../asf/sam/drivers/usart/usart.c **** 
 814:../asf/sam/drivers/usart/usart.c **** 	switch (p_usart_opt->spi_mode) {
 815:../asf/sam/drivers/usart/usart.c **** 	case SPI_MODE_0:
 816:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val |= US_MR_CPHA;
 817:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val &= ~US_MR_CPOL;
 818:../asf/sam/drivers/usart/usart.c **** 		break;
 819:../asf/sam/drivers/usart/usart.c **** 
 820:../asf/sam/drivers/usart/usart.c **** 	case SPI_MODE_1:
 821:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val &= ~US_MR_CPHA;
 822:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val &= ~US_MR_CPOL;
 823:../asf/sam/drivers/usart/usart.c **** 		break;
 824:../asf/sam/drivers/usart/usart.c **** 
 825:../asf/sam/drivers/usart/usart.c **** 	case SPI_MODE_2:
 826:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val |= US_MR_CPHA;
 827:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val |= US_MR_CPOL;
 828:../asf/sam/drivers/usart/usart.c **** 		break;
 829:../asf/sam/drivers/usart/usart.c **** 
 830:../asf/sam/drivers/usart/usart.c **** 	case SPI_MODE_3:
 831:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val |= US_MR_CPOL;
 832:../asf/sam/drivers/usart/usart.c **** 		ul_reg_val &= ~US_MR_CPHA;
 833:../asf/sam/drivers/usart/usart.c **** 		break;
 834:../asf/sam/drivers/usart/usart.c **** 
 835:../asf/sam/drivers/usart/usart.c **** 	default:
 836:../asf/sam/drivers/usart/usart.c **** 		break;
 837:../asf/sam/drivers/usart/usart.c **** 	}
 838:../asf/sam/drivers/usart/usart.c **** 
 839:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR |= ul_reg_val;
 840:../asf/sam/drivers/usart/usart.c **** 
 841:../asf/sam/drivers/usart/usart.c **** 	return 0;
 842:../asf/sam/drivers/usart/usart.c **** }
 843:../asf/sam/drivers/usart/usart.c **** 
 844:../asf/sam/drivers/usart/usart.c **** #if (SAM3XA || SAM4L || SAMG55 || SAMV71 || SAMV70 || SAME70 || SAMS70)
 845:../asf/sam/drivers/usart/usart.c **** 
 846:../asf/sam/drivers/usart/usart.c **** /**
 847:../asf/sam/drivers/usart/usart.c ****  * \brief Configure USART to work in LIN mode and act as a LIN master.
 848:../asf/sam/drivers/usart/usart.c ****  *
 849:../asf/sam/drivers/usart/usart.c ****  * \note By default, the transmitter and receiver aren't enabled.
 850:../asf/sam/drivers/usart/usart.c ****  *
 851:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 852:../asf/sam/drivers/usart/usart.c ****  * \param ul_baudrate Baudrate to be used.
 853:../asf/sam/drivers/usart/usart.c ****  * \param ul_mck USART module input clock frequency.
 854:../asf/sam/drivers/usart/usart.c ****  *
 855:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
 856:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
 857:../asf/sam/drivers/usart/usart.c ****  */
 858:../asf/sam/drivers/usart/usart.c **** uint32_t usart_init_lin_master(Usart *p_usart,uint32_t ul_baudrate,
 859:../asf/sam/drivers/usart/usart.c **** 		uint32_t ul_mck)
 860:../asf/sam/drivers/usart/usart.c **** {
 861:../asf/sam/drivers/usart/usart.c **** 	/* Reset the USART and shut down TX and RX. */
 862:../asf/sam/drivers/usart/usart.c **** 	usart_reset(p_usart);
 863:../asf/sam/drivers/usart/usart.c **** 
 864:../asf/sam/drivers/usart/usart.c **** 	/* Set up the baudrate. */
 865:../asf/sam/drivers/usart/usart.c **** 	if (usart_set_async_baudrate(p_usart, ul_baudrate, ul_mck)) {
ARM GAS  /tmp/ccJYkMjP.s 			page 19


 866:../asf/sam/drivers/usart/usart.c **** 		return 1;
 867:../asf/sam/drivers/usart/usart.c **** 	}
 868:../asf/sam/drivers/usart/usart.c **** 
 869:../asf/sam/drivers/usart/usart.c **** 	/* Set LIN master mode. */
 870:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR = (p_usart->US_MR & ~US_MR_USART_MODE_Msk) |
 871:../asf/sam/drivers/usart/usart.c **** 			US_MR_USART_MODE_LIN_MASTER;
 872:../asf/sam/drivers/usart/usart.c **** 
 873:../asf/sam/drivers/usart/usart.c **** 	usart_enable_rx(p_usart);
 874:../asf/sam/drivers/usart/usart.c **** 	usart_enable_tx(p_usart);
 875:../asf/sam/drivers/usart/usart.c **** 
 876:../asf/sam/drivers/usart/usart.c **** 	return 0;
 877:../asf/sam/drivers/usart/usart.c **** }
 878:../asf/sam/drivers/usart/usart.c **** 
 879:../asf/sam/drivers/usart/usart.c **** /**
 880:../asf/sam/drivers/usart/usart.c ****  * \brief Configure USART to work in LIN mode and act as a LIN slave.
 881:../asf/sam/drivers/usart/usart.c ****  *
 882:../asf/sam/drivers/usart/usart.c ****  * \note By default, the transmitter and receiver aren't enabled.
 883:../asf/sam/drivers/usart/usart.c ****  *
 884:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 885:../asf/sam/drivers/usart/usart.c ****  * \param ul_baudrate Baudrate to be used.
 886:../asf/sam/drivers/usart/usart.c ****  * \param ul_mck USART module input clock frequency.
 887:../asf/sam/drivers/usart/usart.c ****  *
 888:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
 889:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
 890:../asf/sam/drivers/usart/usart.c ****  */
 891:../asf/sam/drivers/usart/usart.c **** uint32_t usart_init_lin_slave(Usart *p_usart, uint32_t ul_baudrate,
 892:../asf/sam/drivers/usart/usart.c **** 		uint32_t ul_mck)
 893:../asf/sam/drivers/usart/usart.c **** {
 894:../asf/sam/drivers/usart/usart.c **** 	/* Reset the USART and shut down TX and RX. */
 895:../asf/sam/drivers/usart/usart.c **** 	usart_reset(p_usart);
 896:../asf/sam/drivers/usart/usart.c **** 
 897:../asf/sam/drivers/usart/usart.c **** 	usart_enable_rx(p_usart);
 898:../asf/sam/drivers/usart/usart.c **** 	usart_enable_tx(p_usart);
 899:../asf/sam/drivers/usart/usart.c **** 
 900:../asf/sam/drivers/usart/usart.c **** 	/* Set LIN slave mode. */
 901:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR = (p_usart->US_MR & ~US_MR_USART_MODE_Msk) |
 902:../asf/sam/drivers/usart/usart.c **** 			US_MR_USART_MODE_LIN_SLAVE;
 903:../asf/sam/drivers/usart/usart.c **** 
 904:../asf/sam/drivers/usart/usart.c **** 	/* Set up the baudrate. */
 905:../asf/sam/drivers/usart/usart.c **** 	if (usart_set_async_baudrate(p_usart, ul_baudrate, ul_mck)) {
 906:../asf/sam/drivers/usart/usart.c **** 		return 1;
 907:../asf/sam/drivers/usart/usart.c **** 	}
 908:../asf/sam/drivers/usart/usart.c **** 
 909:../asf/sam/drivers/usart/usart.c **** 	return 0;
 910:../asf/sam/drivers/usart/usart.c **** }
 911:../asf/sam/drivers/usart/usart.c **** 
 912:../asf/sam/drivers/usart/usart.c **** /**
 913:../asf/sam/drivers/usart/usart.c ****  * \brief Abort the current LIN transmission.
 914:../asf/sam/drivers/usart/usart.c ****  *
 915:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 916:../asf/sam/drivers/usart/usart.c ****  */
 917:../asf/sam/drivers/usart/usart.c **** void usart_lin_abort_tx(Usart *p_usart)
 918:../asf/sam/drivers/usart/usart.c **** {
 919:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_LINABT;
 920:../asf/sam/drivers/usart/usart.c **** }
 921:../asf/sam/drivers/usart/usart.c **** 
 922:../asf/sam/drivers/usart/usart.c **** /**
ARM GAS  /tmp/ccJYkMjP.s 			page 20


 923:../asf/sam/drivers/usart/usart.c ****  * \brief Send a wakeup signal on the LIN bus.
 924:../asf/sam/drivers/usart/usart.c ****  *
 925:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 926:../asf/sam/drivers/usart/usart.c ****  */
 927:../asf/sam/drivers/usart/usart.c **** void usart_lin_send_wakeup_signal(Usart *p_usart)
 928:../asf/sam/drivers/usart/usart.c **** {
 929:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_LINWKUP;
 930:../asf/sam/drivers/usart/usart.c **** }
 931:../asf/sam/drivers/usart/usart.c **** 
 932:../asf/sam/drivers/usart/usart.c **** /**
 933:../asf/sam/drivers/usart/usart.c ****  * \brief Configure the LIN node action, which should be one of PUBLISH,
 934:../asf/sam/drivers/usart/usart.c ****  * SUBSCRIBE or IGNORE.
 935:../asf/sam/drivers/usart/usart.c ****  *
 936:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 937:../asf/sam/drivers/usart/usart.c ****  * \param uc_action 0 for PUBLISH, 1 for SUBSCRIBE, 2 for IGNORE.
 938:../asf/sam/drivers/usart/usart.c ****  */
 939:../asf/sam/drivers/usart/usart.c **** void usart_lin_set_node_action(Usart *p_usart, uint8_t uc_action)
 940:../asf/sam/drivers/usart/usart.c **** {
 941:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR = (p_usart->US_LINMR & ~US_LINMR_NACT_Msk) |
 942:../asf/sam/drivers/usart/usart.c **** 			(uc_action << US_LINMR_NACT_Pos);
 943:../asf/sam/drivers/usart/usart.c **** }
 944:../asf/sam/drivers/usart/usart.c **** 
 945:../asf/sam/drivers/usart/usart.c **** /**
 946:../asf/sam/drivers/usart/usart.c ****  * \brief Disable the parity check during the LIN communication.
 947:../asf/sam/drivers/usart/usart.c ****  *
 948:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 949:../asf/sam/drivers/usart/usart.c ****  */
 950:../asf/sam/drivers/usart/usart.c **** void usart_lin_disable_parity(Usart *p_usart)
 951:../asf/sam/drivers/usart/usart.c **** {
 952:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR |= US_LINMR_PARDIS;
 953:../asf/sam/drivers/usart/usart.c **** }
 954:../asf/sam/drivers/usart/usart.c **** 
 955:../asf/sam/drivers/usart/usart.c **** /**
 956:../asf/sam/drivers/usart/usart.c ****  * \brief Enable the parity check during the LIN communication.
 957:../asf/sam/drivers/usart/usart.c ****  *
 958:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 959:../asf/sam/drivers/usart/usart.c ****  */
 960:../asf/sam/drivers/usart/usart.c **** void usart_lin_enable_parity(Usart *p_usart)
 961:../asf/sam/drivers/usart/usart.c **** {
 962:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR &= ~US_LINMR_PARDIS;
 963:../asf/sam/drivers/usart/usart.c **** }
 964:../asf/sam/drivers/usart/usart.c **** 
 965:../asf/sam/drivers/usart/usart.c **** /**
 966:../asf/sam/drivers/usart/usart.c ****  * \brief Disable the checksum during the LIN communication.
 967:../asf/sam/drivers/usart/usart.c ****  *
 968:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 969:../asf/sam/drivers/usart/usart.c ****  */
 970:../asf/sam/drivers/usart/usart.c **** void usart_lin_disable_checksum(Usart *p_usart)
 971:../asf/sam/drivers/usart/usart.c **** {
 972:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR |= US_LINMR_CHKDIS;
 973:../asf/sam/drivers/usart/usart.c **** }
 974:../asf/sam/drivers/usart/usart.c **** 
 975:../asf/sam/drivers/usart/usart.c **** /**
 976:../asf/sam/drivers/usart/usart.c ****  * \brief Enable the checksum during the LIN communication.
 977:../asf/sam/drivers/usart/usart.c ****  *
 978:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 979:../asf/sam/drivers/usart/usart.c ****  */
ARM GAS  /tmp/ccJYkMjP.s 			page 21


 980:../asf/sam/drivers/usart/usart.c **** void usart_lin_enable_checksum(Usart *p_usart)
 981:../asf/sam/drivers/usart/usart.c **** {
 982:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR &= ~US_LINMR_CHKDIS;
 983:../asf/sam/drivers/usart/usart.c **** }
 984:../asf/sam/drivers/usart/usart.c **** 
 985:../asf/sam/drivers/usart/usart.c **** /**
 986:../asf/sam/drivers/usart/usart.c ****  * \brief Configure the checksum type during the LIN communication.
 987:../asf/sam/drivers/usart/usart.c ****  *
 988:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
 989:../asf/sam/drivers/usart/usart.c ****  * \param uc_type 0 for LIN 2.0 Enhanced checksum or 1 for LIN 1.3 Classic
 990:../asf/sam/drivers/usart/usart.c ****  *  checksum.
 991:../asf/sam/drivers/usart/usart.c ****  */
 992:../asf/sam/drivers/usart/usart.c **** void usart_lin_set_checksum_type(Usart *p_usart, uint8_t uc_type)
 993:../asf/sam/drivers/usart/usart.c **** {
 994:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR = (p_usart->US_LINMR & ~US_LINMR_CHKTYP) |
 995:../asf/sam/drivers/usart/usart.c **** 			(uc_type << 4);
 996:../asf/sam/drivers/usart/usart.c **** }
 997:../asf/sam/drivers/usart/usart.c **** 
 998:../asf/sam/drivers/usart/usart.c **** /**
 999:../asf/sam/drivers/usart/usart.c ****  * \brief Configure the data length mode during the LIN communication.
1000:../asf/sam/drivers/usart/usart.c ****  *
1001:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1002:../asf/sam/drivers/usart/usart.c ****  * \param uc_mode Indicate the data length type: 0 if the data length is
1003:../asf/sam/drivers/usart/usart.c ****  * defined by the DLC of LIN mode register or 1 if the data length is defined
1004:../asf/sam/drivers/usart/usart.c ****  * by the bit 5 and 6 of the identifier.
1005:../asf/sam/drivers/usart/usart.c ****  */
1006:../asf/sam/drivers/usart/usart.c **** void usart_lin_set_data_len_mode(Usart *p_usart, uint8_t uc_mode)
1007:../asf/sam/drivers/usart/usart.c **** {
1008:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR = (p_usart->US_LINMR & ~US_LINMR_DLM) |
1009:../asf/sam/drivers/usart/usart.c **** 			(uc_mode << 5);
1010:../asf/sam/drivers/usart/usart.c **** }
1011:../asf/sam/drivers/usart/usart.c **** 
1012:../asf/sam/drivers/usart/usart.c **** /**
1013:../asf/sam/drivers/usart/usart.c ****  * \brief Disable the frame slot mode during the LIN communication.
1014:../asf/sam/drivers/usart/usart.c ****  *
1015:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1016:../asf/sam/drivers/usart/usart.c ****  */
1017:../asf/sam/drivers/usart/usart.c **** void usart_lin_disable_frame_slot(Usart *p_usart)
1018:../asf/sam/drivers/usart/usart.c **** {
1019:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR |= US_LINMR_FSDIS;
1020:../asf/sam/drivers/usart/usart.c **** }
1021:../asf/sam/drivers/usart/usart.c **** 
1022:../asf/sam/drivers/usart/usart.c **** /**
1023:../asf/sam/drivers/usart/usart.c ****  * \brief Enable the frame slot mode during the LIN communication.
1024:../asf/sam/drivers/usart/usart.c ****  *
1025:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1026:../asf/sam/drivers/usart/usart.c ****  */
1027:../asf/sam/drivers/usart/usart.c **** void usart_lin_enable_frame_slot(Usart *p_usart)
1028:../asf/sam/drivers/usart/usart.c **** {
1029:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR &= ~US_LINMR_FSDIS;
1030:../asf/sam/drivers/usart/usart.c **** }
1031:../asf/sam/drivers/usart/usart.c **** 
1032:../asf/sam/drivers/usart/usart.c **** /**
1033:../asf/sam/drivers/usart/usart.c ****  * \brief Configure the wakeup signal type during the LIN communication.
1034:../asf/sam/drivers/usart/usart.c ****  *
1035:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1036:../asf/sam/drivers/usart/usart.c ****  * \param uc_type Indicate the checksum type: 0 if the wakeup signal is a
ARM GAS  /tmp/ccJYkMjP.s 			page 22


1037:../asf/sam/drivers/usart/usart.c ****  * LIN 2.0 wakeup signal; 1 if the wakeup signal is a LIN 1.3 wakeup signal.
1038:../asf/sam/drivers/usart/usart.c ****  */
1039:../asf/sam/drivers/usart/usart.c **** void usart_lin_set_wakeup_signal_type(Usart *p_usart, uint8_t uc_type)
1040:../asf/sam/drivers/usart/usart.c **** {
1041:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR = (p_usart->US_LINMR & ~US_LINMR_WKUPTYP) |
1042:../asf/sam/drivers/usart/usart.c **** 			(uc_type << 7);
1043:../asf/sam/drivers/usart/usart.c **** }
1044:../asf/sam/drivers/usart/usart.c **** 
1045:../asf/sam/drivers/usart/usart.c **** /**
1046:../asf/sam/drivers/usart/usart.c ****  * \brief Configure the response data length if the data length is defined by
1047:../asf/sam/drivers/usart/usart.c ****  * the DLC field during the LIN communication.
1048:../asf/sam/drivers/usart/usart.c ****  *
1049:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1050:../asf/sam/drivers/usart/usart.c ****  * \param uc_len Indicate the response data length.
1051:../asf/sam/drivers/usart/usart.c ****  */
1052:../asf/sam/drivers/usart/usart.c **** void usart_lin_set_response_data_len(Usart *p_usart, uint8_t uc_len)
1053:../asf/sam/drivers/usart/usart.c **** {
1054:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR = (p_usart->US_LINMR & ~US_LINMR_DLC_Msk) |
1055:../asf/sam/drivers/usart/usart.c **** 			((uc_len - 1) << US_LINMR_DLC_Pos);
1056:../asf/sam/drivers/usart/usart.c **** }
1057:../asf/sam/drivers/usart/usart.c **** 
1058:../asf/sam/drivers/usart/usart.c **** /**
1059:../asf/sam/drivers/usart/usart.c ****  * \brief The LIN mode register is not written by the PDC.
1060:../asf/sam/drivers/usart/usart.c ****  *
1061:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1062:../asf/sam/drivers/usart/usart.c ****  */
1063:../asf/sam/drivers/usart/usart.c **** void usart_lin_disable_pdc_mode(Usart *p_usart)
1064:../asf/sam/drivers/usart/usart.c **** {
1065:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR &= ~US_LINMR_PDCM;
1066:../asf/sam/drivers/usart/usart.c **** }
1067:../asf/sam/drivers/usart/usart.c **** 
1068:../asf/sam/drivers/usart/usart.c **** /**
1069:../asf/sam/drivers/usart/usart.c ****  * \brief The LIN mode register (except this flag) is written by the PDC.
1070:../asf/sam/drivers/usart/usart.c ****  *
1071:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1072:../asf/sam/drivers/usart/usart.c ****  */
1073:../asf/sam/drivers/usart/usart.c **** void usart_lin_enable_pdc_mode(Usart *p_usart)
1074:../asf/sam/drivers/usart/usart.c **** {
1075:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR |= US_LINMR_PDCM;
1076:../asf/sam/drivers/usart/usart.c **** }
1077:../asf/sam/drivers/usart/usart.c **** 
1078:../asf/sam/drivers/usart/usart.c **** /**
1079:../asf/sam/drivers/usart/usart.c ****  * \brief Configure the LIN identifier when USART works in LIN master mode.
1080:../asf/sam/drivers/usart/usart.c ****  *
1081:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1082:../asf/sam/drivers/usart/usart.c ****  * \param uc_id The identifier to be transmitted.
1083:../asf/sam/drivers/usart/usart.c ****  */
1084:../asf/sam/drivers/usart/usart.c **** void usart_lin_set_tx_identifier(Usart *p_usart, uint8_t uc_id)
1085:../asf/sam/drivers/usart/usart.c **** {
1086:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINIR = (p_usart->US_LINIR & ~US_LINIR_IDCHR_Msk) |
1087:../asf/sam/drivers/usart/usart.c **** 			US_LINIR_IDCHR(uc_id);
1088:../asf/sam/drivers/usart/usart.c **** }
1089:../asf/sam/drivers/usart/usart.c **** 
1090:../asf/sam/drivers/usart/usart.c **** /**
1091:../asf/sam/drivers/usart/usart.c ****  * \brief Read the identifier when USART works in LIN mode.
1092:../asf/sam/drivers/usart/usart.c ****  *
1093:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
ARM GAS  /tmp/ccJYkMjP.s 			page 23


1094:../asf/sam/drivers/usart/usart.c ****  *
1095:../asf/sam/drivers/usart/usart.c ****  * \return The last identifier received in LIN slave mode or the last
1096:../asf/sam/drivers/usart/usart.c ****  * identifier transmitted in LIN master mode.
1097:../asf/sam/drivers/usart/usart.c ****  */
1098:../asf/sam/drivers/usart/usart.c **** uint8_t usart_lin_read_identifier(Usart *p_usart)
1099:../asf/sam/drivers/usart/usart.c **** {
1100:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_LINIR & US_LINIR_IDCHR_Msk);
1101:../asf/sam/drivers/usart/usart.c **** }
1102:../asf/sam/drivers/usart/usart.c **** 
1103:../asf/sam/drivers/usart/usart.c **** /**
1104:../asf/sam/drivers/usart/usart.c ****  * \brief Get data length.
1105:../asf/sam/drivers/usart/usart.c ****  *
1106:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1107:../asf/sam/drivers/usart/usart.c ****  *
1108:../asf/sam/drivers/usart/usart.c ****  * \return Data length.
1109:../asf/sam/drivers/usart/usart.c ****  */
1110:../asf/sam/drivers/usart/usart.c **** uint8_t usart_lin_get_data_length(Usart *usart)
1111:../asf/sam/drivers/usart/usart.c **** {
1112:../asf/sam/drivers/usart/usart.c **** 	if (usart->US_LINMR & US_LINMR_DLM) {
1113:../asf/sam/drivers/usart/usart.c **** 		uint8_t data_length = 1 << ((usart->US_LINIR >>
1114:../asf/sam/drivers/usart/usart.c **** 				(US_LINIR_IDCHR_Pos + 4)) & 0x03);
1115:../asf/sam/drivers/usart/usart.c **** 		return data_length;
1116:../asf/sam/drivers/usart/usart.c **** 	} else {
1117:../asf/sam/drivers/usart/usart.c **** 		return ((usart->US_LINMR & US_LINMR_DLC_Msk) >> US_LINMR_DLC_Pos) + 1;
1118:../asf/sam/drivers/usart/usart.c **** 	}
1119:../asf/sam/drivers/usart/usart.c **** }
1120:../asf/sam/drivers/usart/usart.c **** 
1121:../asf/sam/drivers/usart/usart.c **** #endif
1122:../asf/sam/drivers/usart/usart.c **** 
1123:../asf/sam/drivers/usart/usart.c **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
1124:../asf/sam/drivers/usart/usart.c **** /**
1125:../asf/sam/drivers/usart/usart.c ****  * \brief Get identifier send status.
1126:../asf/sam/drivers/usart/usart.c ****  *
1127:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1128:../asf/sam/drivers/usart/usart.c ****  *
1129:../asf/sam/drivers/usart/usart.c ****  * \return
1130:../asf/sam/drivers/usart/usart.c ****  * 0:  No LIN identifier has been sent since the last RSTSTA.
1131:../asf/sam/drivers/usart/usart.c ****  * 1: :At least one LIN identifier has been sent since the last RSTSTA.
1132:../asf/sam/drivers/usart/usart.c ****  */
1133:../asf/sam/drivers/usart/usart.c **** uint8_t usart_lin_identifier_send_complete(Usart *usart)
1134:../asf/sam/drivers/usart/usart.c **** {
1135:../asf/sam/drivers/usart/usart.c **** 	return (usart->US_CSR & US_CSR_LINID) > 0;
1136:../asf/sam/drivers/usart/usart.c **** }
1137:../asf/sam/drivers/usart/usart.c **** 
1138:../asf/sam/drivers/usart/usart.c **** /**
1139:../asf/sam/drivers/usart/usart.c ****  * \brief Get identifier received status.
1140:../asf/sam/drivers/usart/usart.c ****  *
1141:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1142:../asf/sam/drivers/usart/usart.c ****  *
1143:../asf/sam/drivers/usart/usart.c ****  * \return
1144:../asf/sam/drivers/usart/usart.c ****  * 0:  No LIN identifier has been reveived since the last RSTSTA.
1145:../asf/sam/drivers/usart/usart.c ****  * 1: At least one LIN identifier has been received since the last RSTSTA.
1146:../asf/sam/drivers/usart/usart.c ****  */
1147:../asf/sam/drivers/usart/usart.c **** uint8_t usart_lin_identifier_reception_complete(Usart *usart)
1148:../asf/sam/drivers/usart/usart.c **** {
1149:../asf/sam/drivers/usart/usart.c **** 	return (usart->US_CSR & US_CSR_LINID) > 0;
1150:../asf/sam/drivers/usart/usart.c **** }
ARM GAS  /tmp/ccJYkMjP.s 			page 24


1151:../asf/sam/drivers/usart/usart.c **** 
1152:../asf/sam/drivers/usart/usart.c **** /**
1153:../asf/sam/drivers/usart/usart.c ****  * \brief Get transmission status.
1154:../asf/sam/drivers/usart/usart.c ****  *
1155:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1156:../asf/sam/drivers/usart/usart.c ****  *
1157:../asf/sam/drivers/usart/usart.c ****  * \return
1158:../asf/sam/drivers/usart/usart.c ****  * 0: The USART is idle or a LIN transfer is ongoing.
1159:../asf/sam/drivers/usart/usart.c ****  * 1: A LIN transfer has been completed since the last RSTSTA.
1160:../asf/sam/drivers/usart/usart.c ****  */
1161:../asf/sam/drivers/usart/usart.c **** uint8_t usart_lin_tx_complete(Usart *usart)
1162:../asf/sam/drivers/usart/usart.c **** {
1163:../asf/sam/drivers/usart/usart.c **** 	return (usart->US_CSR & US_CSR_LINTC) > 0;
1164:../asf/sam/drivers/usart/usart.c **** }
1165:../asf/sam/drivers/usart/usart.c **** 
1166:../asf/sam/drivers/usart/usart.c **** /**
1167:../asf/sam/drivers/usart/usart.c ****  * \brief Configure USART to work in LON mode.
1168:../asf/sam/drivers/usart/usart.c ****  *
1169:../asf/sam/drivers/usart/usart.c ****  * \note By default, the transmitter and receiver aren't enabled.
1170:../asf/sam/drivers/usart/usart.c ****  *
1171:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1172:../asf/sam/drivers/usart/usart.c ****  * \param ul_baudrate Baudrate to be used.
1173:../asf/sam/drivers/usart/usart.c ****  * \param ul_mck USART module input clock frequency.
1174:../asf/sam/drivers/usart/usart.c ****  *
1175:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
1176:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
1177:../asf/sam/drivers/usart/usart.c ****  */
1178:../asf/sam/drivers/usart/usart.c **** uint32_t usart_init_lon(Usart *p_usart,uint32_t ul_baudrate,
1179:../asf/sam/drivers/usart/usart.c **** 		uint32_t ul_mck)
1180:../asf/sam/drivers/usart/usart.c **** {
1181:../asf/sam/drivers/usart/usart.c **** 	/* Reset the USART and shut down TX and RX. */
1182:../asf/sam/drivers/usart/usart.c **** 	usart_reset(p_usart);
1183:../asf/sam/drivers/usart/usart.c **** 
1184:../asf/sam/drivers/usart/usart.c **** 	/* Set up the baudrate. */
1185:../asf/sam/drivers/usart/usart.c **** 	if (usart_set_async_baudrate(p_usart, ul_baudrate, ul_mck)) {
1186:../asf/sam/drivers/usart/usart.c **** 		return 1;
1187:../asf/sam/drivers/usart/usart.c **** 	}
1188:../asf/sam/drivers/usart/usart.c **** 
1189:../asf/sam/drivers/usart/usart.c **** 	/* Set LIN master mode. */
1190:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR = (p_usart->US_MR & ~US_MR_USART_MODE_Msk) |
1191:../asf/sam/drivers/usart/usart.c **** 			US_MR_USART_MODE_LON;
1192:../asf/sam/drivers/usart/usart.c **** 
1193:../asf/sam/drivers/usart/usart.c **** 	usart_enable_rx(p_usart);
1194:../asf/sam/drivers/usart/usart.c **** 	usart_enable_tx(p_usart);
1195:../asf/sam/drivers/usart/usart.c **** 
1196:../asf/sam/drivers/usart/usart.c **** 	return 0;
1197:../asf/sam/drivers/usart/usart.c **** }
1198:../asf/sam/drivers/usart/usart.c **** 
1199:../asf/sam/drivers/usart/usart.c **** /**
1200:../asf/sam/drivers/usart/usart.c ****  * \brief set LON parameter value.
1201:../asf/sam/drivers/usart/usart.c ****  *
1202:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1203:../asf/sam/drivers/usart/usart.c ****  * \param uc_type 0: LON comm_type = 1 mode,
1204:../asf/sam/drivers/usart/usart.c ****  *  1: LON comm_type = 2 mode
1205:../asf/sam/drivers/usart/usart.c ****  */
1206:../asf/sam/drivers/usart/usart.c **** void  usart_lon_set_comm_type(Usart *p_usart, uint8_t uc_type)
1207:../asf/sam/drivers/usart/usart.c **** {
ARM GAS  /tmp/ccJYkMjP.s 			page 25


1208:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONMR = (p_usart->US_LONMR & ~US_LONMR_COMMT) |
1209:../asf/sam/drivers/usart/usart.c **** 			 (uc_type << 0);
1210:../asf/sam/drivers/usart/usart.c **** }
1211:../asf/sam/drivers/usart/usart.c **** 
1212:../asf/sam/drivers/usart/usart.c **** /**
1213:../asf/sam/drivers/usart/usart.c ****  * \brief Disable  LON Collision Detection Feature.
1214:../asf/sam/drivers/usart/usart.c ****  *
1215:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1216:../asf/sam/drivers/usart/usart.c ****  */
1217:../asf/sam/drivers/usart/usart.c **** void usart_lon_disable_coll_detection(Usart *p_usart)
1218:../asf/sam/drivers/usart/usart.c **** {
1219:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONMR |= US_LONMR_COLDET;
1220:../asf/sam/drivers/usart/usart.c **** }
1221:../asf/sam/drivers/usart/usart.c **** 
1222:../asf/sam/drivers/usart/usart.c **** /**
1223:../asf/sam/drivers/usart/usart.c ****  * \brief Enable LON Collision Detection Feature.
1224:../asf/sam/drivers/usart/usart.c ****  *
1225:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1226:../asf/sam/drivers/usart/usart.c ****  */
1227:../asf/sam/drivers/usart/usart.c **** void usart_lon_enable_coll_detection(Usart *p_usart)
1228:../asf/sam/drivers/usart/usart.c **** {
1229:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONMR &= ~US_LONMR_COLDET;
1230:../asf/sam/drivers/usart/usart.c **** }
1231:../asf/sam/drivers/usart/usart.c **** 
1232:../asf/sam/drivers/usart/usart.c **** /**
1233:../asf/sam/drivers/usart/usart.c ****  * \brief set Terminate Frame upon Collision Notification.
1234:../asf/sam/drivers/usart/usart.c ****  *
1235:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1236:../asf/sam/drivers/usart/usart.c ****  * \param uc_type 0:  Do not terminate the frame in LON comm_type = 1 mode upon collision detection
1237:../asf/sam/drivers/usart/usart.c ****  * 1:Terminate the frame in LON comm_type = 1 mode upon collision detection if possible.
1238:../asf/sam/drivers/usart/usart.c ****  */
1239:../asf/sam/drivers/usart/usart.c **** void  usart_lon_set_tcol(Usart *p_usart, uint8_t uc_type)
1240:../asf/sam/drivers/usart/usart.c **** {
1241:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONMR = (p_usart->US_LONMR & ~US_LONMR_TCOL) |
1242:../asf/sam/drivers/usart/usart.c **** 			 (uc_type << 2);
1243:../asf/sam/drivers/usart/usart.c **** }
1244:../asf/sam/drivers/usart/usart.c **** 
1245:../asf/sam/drivers/usart/usart.c **** /**
1246:../asf/sam/drivers/usart/usart.c ****  * \brief set  LON Collision Detection on Frame Tail.
1247:../asf/sam/drivers/usart/usart.c ****  *
1248:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1249:../asf/sam/drivers/usart/usart.c ****  * \param uc_type 0: Detect collisions after CRC has been sent but prior end of transmission in LON
1250:../asf/sam/drivers/usart/usart.c ****  * 1: Ignore collisions after CRC has been sent but prior end of transmission in LON comm_type = 1 
1251:../asf/sam/drivers/usart/usart.c ****  */
1252:../asf/sam/drivers/usart/usart.c **** void  usart_lon_set_cdtail(Usart *p_usart, uint8_t uc_type)
1253:../asf/sam/drivers/usart/usart.c **** {
1254:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONMR = (p_usart->US_LONMR & ~US_LONMR_CDTAIL) |
1255:../asf/sam/drivers/usart/usart.c **** 			 (uc_type << 3);
1256:../asf/sam/drivers/usart/usart.c **** }
1257:../asf/sam/drivers/usart/usart.c **** 
1258:../asf/sam/drivers/usart/usart.c **** /**
1259:../asf/sam/drivers/usart/usart.c ****  * \brief set  LON DMA Mode.
1260:../asf/sam/drivers/usart/usart.c ****  *
1261:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1262:../asf/sam/drivers/usart/usart.c ****  * \param uc_type 0: The LON data length register US_LONDL is not written by the DMA.
1263:../asf/sam/drivers/usart/usart.c ****  * 1: The LON data length register US_LONDL is written by the DMA.
1264:../asf/sam/drivers/usart/usart.c ****  */
ARM GAS  /tmp/ccJYkMjP.s 			page 26


1265:../asf/sam/drivers/usart/usart.c **** void  usart_lon_set_dmam(Usart *p_usart, uint8_t uc_type)
1266:../asf/sam/drivers/usart/usart.c **** {
1267:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONMR = (p_usart->US_LONMR & ~US_LONMR_DMAM) |
1268:../asf/sam/drivers/usart/usart.c **** 			 (uc_type << 4);
1269:../asf/sam/drivers/usart/usart.c **** }
1270:../asf/sam/drivers/usart/usart.c **** 
1271:../asf/sam/drivers/usart/usart.c **** /**
1272:../asf/sam/drivers/usart/usart.c ****  * \brief set LON Beta1 Length after Transmission.
1273:../asf/sam/drivers/usart/usart.c ****  *
1274:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1275:../asf/sam/drivers/usart/usart.c ****  * \param ul_len 1-16777215: LON beta1 length after transmission in tbit
1276:../asf/sam/drivers/usart/usart.c ****  */
1277:../asf/sam/drivers/usart/usart.c **** void  usart_lon_set_beta1_tx_len(Usart *p_usart, uint32_t ul_len)
1278:../asf/sam/drivers/usart/usart.c **** {
1279:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONB1TX = US_LONB1TX_BETA1TX(ul_len);
1280:../asf/sam/drivers/usart/usart.c **** }
1281:../asf/sam/drivers/usart/usart.c **** 
1282:../asf/sam/drivers/usart/usart.c **** /**
1283:../asf/sam/drivers/usart/usart.c ****  * \brief set LON Beta1 Length after Reception.
1284:../asf/sam/drivers/usart/usart.c ****  *
1285:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1286:../asf/sam/drivers/usart/usart.c ****  * \param ul_len 1-16777215: LON beta1 length after reception in tbit.
1287:../asf/sam/drivers/usart/usart.c ****  */
1288:../asf/sam/drivers/usart/usart.c **** void  usart_lon_set_beta1_rx_len(Usart *p_usart, uint32_t ul_len)
1289:../asf/sam/drivers/usart/usart.c **** {
1290:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONB1RX = US_LONB1RX_BETA1RX(ul_len);
1291:../asf/sam/drivers/usart/usart.c **** }
1292:../asf/sam/drivers/usart/usart.c **** 
1293:../asf/sam/drivers/usart/usart.c **** /**
1294:../asf/sam/drivers/usart/usart.c ****  * \brief set  LON Priority.
1295:../asf/sam/drivers/usart/usart.c ****  *
1296:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1297:../asf/sam/drivers/usart/usart.c ****  * \param uc_psnb 0 -127: LON Priority Slot Number.
1298:../asf/sam/drivers/usart/usart.c ****  * \param uc_nps  0 -127: LON Node Priority Slot.
1299:../asf/sam/drivers/usart/usart.c ****  */
1300:../asf/sam/drivers/usart/usart.c **** void  usart_lon_set_priority(Usart *p_usart, uint8_t uc_psnb, uint8_t uc_nps)
1301:../asf/sam/drivers/usart/usart.c **** {
1302:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONPRIO = US_LONPRIO_PSNB(uc_psnb) | US_LONPRIO_NPS(uc_nps);
1303:../asf/sam/drivers/usart/usart.c **** }
1304:../asf/sam/drivers/usart/usart.c **** 
1305:../asf/sam/drivers/usart/usart.c **** /**
1306:../asf/sam/drivers/usart/usart.c ****  * \brief set LON Indeterminate Time after Transmission.
1307:../asf/sam/drivers/usart/usart.c ****  *
1308:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1309:../asf/sam/drivers/usart/usart.c ****  * \param ul_time 1-16777215: LON Indeterminate Time after Transmission (comm_type = 1 mode only).
1310:../asf/sam/drivers/usart/usart.c ****  */
1311:../asf/sam/drivers/usart/usart.c **** void  usart_lon_set_tx_idt(Usart *p_usart, uint32_t ul_time)
1312:../asf/sam/drivers/usart/usart.c **** {
1313:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_IDTTX = US_IDTTX_IDTTX(ul_time);
1314:../asf/sam/drivers/usart/usart.c **** }
1315:../asf/sam/drivers/usart/usart.c **** 
1316:../asf/sam/drivers/usart/usart.c **** /**
1317:../asf/sam/drivers/usart/usart.c ****  * \brief set LON Indeterminate Time after Reception.
1318:../asf/sam/drivers/usart/usart.c ****  *
1319:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1320:../asf/sam/drivers/usart/usart.c ****  * \param ul_time 1-16777215: LON Indeterminate Time after Reception (comm_type = 1 mode only).
1321:../asf/sam/drivers/usart/usart.c ****  */
ARM GAS  /tmp/ccJYkMjP.s 			page 27


1322:../asf/sam/drivers/usart/usart.c **** void  usart_lon_set_rx_idt(Usart *p_usart, uint32_t ul_time)
1323:../asf/sam/drivers/usart/usart.c **** {
1324:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_IDTRX = US_IDTRX_IDTRX(ul_time);
1325:../asf/sam/drivers/usart/usart.c **** }
1326:../asf/sam/drivers/usart/usart.c **** 
1327:../asf/sam/drivers/usart/usart.c **** /**
1328:../asf/sam/drivers/usart/usart.c ****  * \brief set LON Preamble Length.
1329:../asf/sam/drivers/usart/usart.c ****  *
1330:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1331:../asf/sam/drivers/usart/usart.c ****  * \param ul_len 1-16383: LON preamble length in tbit(without byte-sync).
1332:../asf/sam/drivers/usart/usart.c ****  */
1333:../asf/sam/drivers/usart/usart.c **** void  usart_lon_set_pre_len(Usart *p_usart, uint32_t ul_len)
1334:../asf/sam/drivers/usart/usart.c **** {
1335:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONPR = US_LONPR_LONPL(ul_len);
1336:../asf/sam/drivers/usart/usart.c **** }
1337:../asf/sam/drivers/usart/usart.c **** 
1338:../asf/sam/drivers/usart/usart.c **** /**
1339:../asf/sam/drivers/usart/usart.c ****  * \brief set LON  Data Length.
1340:../asf/sam/drivers/usart/usart.c ****  *
1341:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1342:../asf/sam/drivers/usart/usart.c ****  * \param uc_len 0-255: LON data length is LONDL+1 bytes.
1343:../asf/sam/drivers/usart/usart.c ****  */
1344:../asf/sam/drivers/usart/usart.c **** void  usart_lon_set_data_len(Usart *p_usart, uint8_t uc_len)
1345:../asf/sam/drivers/usart/usart.c **** {
1346:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONDL = US_LONDL_LONDL(uc_len);
1347:../asf/sam/drivers/usart/usart.c **** }
1348:../asf/sam/drivers/usart/usart.c **** 
1349:../asf/sam/drivers/usart/usart.c **** /**
1350:../asf/sam/drivers/usart/usart.c ****  * \brief set  LON Priority.
1351:../asf/sam/drivers/usart/usart.c ****  *
1352:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1353:../asf/sam/drivers/usart/usart.c ****  * \param uc_bli   LON Backlog Increment.
1354:../asf/sam/drivers/usart/usart.c ****  * \param uc_altp LON Alternate Path Bit.
1355:../asf/sam/drivers/usart/usart.c ****  * \param uc_pb   LON Priority Bit.
1356:../asf/sam/drivers/usart/usart.c ****  */
1357:../asf/sam/drivers/usart/usart.c **** void  usart_lon_set_l2hdr(Usart *p_usart, uint8_t uc_bli, uint8_t uc_altp, uint8_t uc_pb)
1358:../asf/sam/drivers/usart/usart.c **** {
1359:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONL2HDR = US_LONL2HDR_BLI(uc_bli) | (uc_altp << 6) | (uc_pb << 7);
1360:../asf/sam/drivers/usart/usart.c **** }
1361:../asf/sam/drivers/usart/usart.c **** 
1362:../asf/sam/drivers/usart/usart.c **** /**
1363:../asf/sam/drivers/usart/usart.c ****  * \brief Check if LON Transmission End.
1364:../asf/sam/drivers/usart/usart.c ****  *
1365:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1366:../asf/sam/drivers/usart/usart.c ****  *
1367:../asf/sam/drivers/usart/usart.c ****  * \retval 1  At least one transmission has been performed since the last RSTSTA.
1368:../asf/sam/drivers/usart/usart.c ****  * \retval 0  Transmission on going or no transmission occurred since the last RSTSTA.
1369:../asf/sam/drivers/usart/usart.c ****  */
1370:../asf/sam/drivers/usart/usart.c **** uint32_t usart_lon_is_tx_end(Usart *p_usart)
1371:../asf/sam/drivers/usart/usart.c **** {
1372:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_CSR & US_CSR_LTXD) > 0;
1373:../asf/sam/drivers/usart/usart.c **** }
1374:../asf/sam/drivers/usart/usart.c **** 
1375:../asf/sam/drivers/usart/usart.c **** /**
1376:../asf/sam/drivers/usart/usart.c ****  * \brief Check if LON Reception End.
1377:../asf/sam/drivers/usart/usart.c ****  *
1378:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
ARM GAS  /tmp/ccJYkMjP.s 			page 28


1379:../asf/sam/drivers/usart/usart.c ****  *
1380:../asf/sam/drivers/usart/usart.c ****  * \retval 1  At least one Reception has been performed since the last RSTSTA.
1381:../asf/sam/drivers/usart/usart.c ****  * \retval 0  Reception on going or no Reception occurred since the last RSTSTA.
1382:../asf/sam/drivers/usart/usart.c ****  */
1383:../asf/sam/drivers/usart/usart.c **** uint32_t usart_lon_is_rx_end(Usart *p_usart)
1384:../asf/sam/drivers/usart/usart.c **** {
1385:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_CSR & US_CSR_LRXD) > 0;
1386:../asf/sam/drivers/usart/usart.c **** }
1387:../asf/sam/drivers/usart/usart.c **** #endif
1388:../asf/sam/drivers/usart/usart.c **** 
1389:../asf/sam/drivers/usart/usart.c **** /**
1390:../asf/sam/drivers/usart/usart.c ****  * \brief Enable USART transmitter.
1391:../asf/sam/drivers/usart/usart.c ****  *
1392:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1393:../asf/sam/drivers/usart/usart.c ****  */
1394:../asf/sam/drivers/usart/usart.c **** void usart_enable_tx(Usart *p_usart)
1395:../asf/sam/drivers/usart/usart.c **** {
1396:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_TXEN;
1397:../asf/sam/drivers/usart/usart.c **** }
1398:../asf/sam/drivers/usart/usart.c **** 
1399:../asf/sam/drivers/usart/usart.c **** /**
1400:../asf/sam/drivers/usart/usart.c ****  * \brief Disable USART transmitter.
1401:../asf/sam/drivers/usart/usart.c ****  *
1402:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1403:../asf/sam/drivers/usart/usart.c ****  */
1404:../asf/sam/drivers/usart/usart.c **** void usart_disable_tx(Usart *p_usart)
1405:../asf/sam/drivers/usart/usart.c **** {
1406:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_TXDIS;
1407:../asf/sam/drivers/usart/usart.c **** }
1408:../asf/sam/drivers/usart/usart.c **** 
1409:../asf/sam/drivers/usart/usart.c **** /**
1410:../asf/sam/drivers/usart/usart.c ****  * \brief Immediately stop and disable USART transmitter.
1411:../asf/sam/drivers/usart/usart.c ****  *
1412:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1413:../asf/sam/drivers/usart/usart.c ****  */
1414:../asf/sam/drivers/usart/usart.c **** void usart_reset_tx(Usart *p_usart)
1415:../asf/sam/drivers/usart/usart.c **** {
1416:../asf/sam/drivers/usart/usart.c **** 	/* Reset transmitter */
1417:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RSTTX | US_CR_TXDIS;
1418:../asf/sam/drivers/usart/usart.c **** }
1419:../asf/sam/drivers/usart/usart.c **** 
1420:../asf/sam/drivers/usart/usart.c **** /**
1421:../asf/sam/drivers/usart/usart.c ****  * \brief Configure the transmit timeguard register.
1422:../asf/sam/drivers/usart/usart.c ****  *
1423:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1424:../asf/sam/drivers/usart/usart.c ****  * \param timeguard The value of transmit timeguard.
1425:../asf/sam/drivers/usart/usart.c ****  */
1426:../asf/sam/drivers/usart/usart.c **** void usart_set_tx_timeguard(Usart *p_usart, uint32_t timeguard)
1427:../asf/sam/drivers/usart/usart.c **** {
1428:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_TTGR = timeguard;
1429:../asf/sam/drivers/usart/usart.c **** }
1430:../asf/sam/drivers/usart/usart.c **** 
1431:../asf/sam/drivers/usart/usart.c **** /**
1432:../asf/sam/drivers/usart/usart.c ****  * \brief Enable USART receiver.
1433:../asf/sam/drivers/usart/usart.c ****  *
1434:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1435:../asf/sam/drivers/usart/usart.c ****  */
ARM GAS  /tmp/ccJYkMjP.s 			page 29


1436:../asf/sam/drivers/usart/usart.c **** void usart_enable_rx(Usart *p_usart)
1437:../asf/sam/drivers/usart/usart.c **** {
1438:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RXEN;
1439:../asf/sam/drivers/usart/usart.c **** }
1440:../asf/sam/drivers/usart/usart.c **** 
1441:../asf/sam/drivers/usart/usart.c **** /**
1442:../asf/sam/drivers/usart/usart.c ****  * \brief Disable USART receiver.
1443:../asf/sam/drivers/usart/usart.c ****  *
1444:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1445:../asf/sam/drivers/usart/usart.c ****  */
1446:../asf/sam/drivers/usart/usart.c **** void usart_disable_rx(Usart *p_usart)
1447:../asf/sam/drivers/usart/usart.c **** {
1448:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RXDIS;
1449:../asf/sam/drivers/usart/usart.c **** }
1450:../asf/sam/drivers/usart/usart.c **** 
1451:../asf/sam/drivers/usart/usart.c **** /**
1452:../asf/sam/drivers/usart/usart.c ****  * \brief Immediately stop and disable USART receiver.
1453:../asf/sam/drivers/usart/usart.c ****  *
1454:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1455:../asf/sam/drivers/usart/usart.c ****  */
1456:../asf/sam/drivers/usart/usart.c **** void usart_reset_rx(Usart *p_usart)
1457:../asf/sam/drivers/usart/usart.c **** {
1458:../asf/sam/drivers/usart/usart.c **** 	/* Reset Receiver */
1459:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RSTRX | US_CR_RXDIS;
1460:../asf/sam/drivers/usart/usart.c **** }
1461:../asf/sam/drivers/usart/usart.c **** 
1462:../asf/sam/drivers/usart/usart.c **** /**
1463:../asf/sam/drivers/usart/usart.c ****  * \brief Configure the receive timeout register.
1464:../asf/sam/drivers/usart/usart.c ****  *
1465:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1466:../asf/sam/drivers/usart/usart.c ****  * \param timeout The value of receive timeout.
1467:../asf/sam/drivers/usart/usart.c ****  */
1468:../asf/sam/drivers/usart/usart.c **** void usart_set_rx_timeout(Usart *p_usart, uint32_t timeout)
1469:../asf/sam/drivers/usart/usart.c **** {
1470:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = timeout;
1471:../asf/sam/drivers/usart/usart.c **** }
1472:../asf/sam/drivers/usart/usart.c **** 
1473:../asf/sam/drivers/usart/usart.c **** /**
1474:../asf/sam/drivers/usart/usart.c ****  * \brief Enable USART interrupts.
1475:../asf/sam/drivers/usart/usart.c ****  *
1476:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART peripheral.
1477:../asf/sam/drivers/usart/usart.c ****  * \param ul_sources Interrupt sources bit map.
1478:../asf/sam/drivers/usart/usart.c ****  */
1479:../asf/sam/drivers/usart/usart.c **** void usart_enable_interrupt(Usart *p_usart, uint32_t ul_sources)
1480:../asf/sam/drivers/usart/usart.c **** {
1481:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_IER = ul_sources;
1482:../asf/sam/drivers/usart/usart.c **** }
1483:../asf/sam/drivers/usart/usart.c **** 
1484:../asf/sam/drivers/usart/usart.c **** /**
1485:../asf/sam/drivers/usart/usart.c ****  * \brief Disable USART interrupts.
1486:../asf/sam/drivers/usart/usart.c ****  *
1487:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART peripheral.
1488:../asf/sam/drivers/usart/usart.c ****  * \param ul_sources Interrupt sources bit map.
1489:../asf/sam/drivers/usart/usart.c ****  */
1490:../asf/sam/drivers/usart/usart.c **** void usart_disable_interrupt(Usart *p_usart, uint32_t ul_sources)
1491:../asf/sam/drivers/usart/usart.c **** {
1492:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_IDR = ul_sources;
ARM GAS  /tmp/ccJYkMjP.s 			page 30


1493:../asf/sam/drivers/usart/usart.c **** }
1494:../asf/sam/drivers/usart/usart.c **** 
1495:../asf/sam/drivers/usart/usart.c **** /**
1496:../asf/sam/drivers/usart/usart.c ****  * \brief Read USART interrupt mask.
1497:../asf/sam/drivers/usart/usart.c ****  *
1498:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART peripheral.
1499:../asf/sam/drivers/usart/usart.c ****  *
1500:../asf/sam/drivers/usart/usart.c ****  * \return The interrupt mask value.
1501:../asf/sam/drivers/usart/usart.c ****  */
1502:../asf/sam/drivers/usart/usart.c **** uint32_t usart_get_interrupt_mask(Usart *p_usart)
1503:../asf/sam/drivers/usart/usart.c **** {
1504:../asf/sam/drivers/usart/usart.c **** 	return p_usart->US_IMR;
1505:../asf/sam/drivers/usart/usart.c **** }
1506:../asf/sam/drivers/usart/usart.c **** 
1507:../asf/sam/drivers/usart/usart.c **** /**
1508:../asf/sam/drivers/usart/usart.c ****  * \brief Get current status.
1509:../asf/sam/drivers/usart/usart.c ****  *
1510:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1511:../asf/sam/drivers/usart/usart.c ****  *
1512:../asf/sam/drivers/usart/usart.c ****  * \return The current USART status.
1513:../asf/sam/drivers/usart/usart.c ****  */
1514:../asf/sam/drivers/usart/usart.c **** uint32_t usart_get_status(Usart *p_usart)
1515:../asf/sam/drivers/usart/usart.c **** {
1516:../asf/sam/drivers/usart/usart.c **** 	return p_usart->US_CSR;
1517:../asf/sam/drivers/usart/usart.c **** }
1518:../asf/sam/drivers/usart/usart.c **** 
1519:../asf/sam/drivers/usart/usart.c **** /**
1520:../asf/sam/drivers/usart/usart.c ****  * \brief Reset status bits (PARE, OVER, MANERR, UNRE and PXBRK in US_CSR).
1521:../asf/sam/drivers/usart/usart.c ****  *
1522:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1523:../asf/sam/drivers/usart/usart.c ****  */
1524:../asf/sam/drivers/usart/usart.c **** void usart_reset_status(Usart *p_usart)
1525:../asf/sam/drivers/usart/usart.c **** {
1526:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RSTSTA;
1527:../asf/sam/drivers/usart/usart.c **** }
1528:../asf/sam/drivers/usart/usart.c **** 
1529:../asf/sam/drivers/usart/usart.c **** /**
1530:../asf/sam/drivers/usart/usart.c ****  * \brief Start transmission of a break.
1531:../asf/sam/drivers/usart/usart.c ****  *
1532:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1533:../asf/sam/drivers/usart/usart.c ****  */
1534:../asf/sam/drivers/usart/usart.c **** void usart_start_tx_break(Usart *p_usart)
1535:../asf/sam/drivers/usart/usart.c **** {
1536:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_STTBRK;
1537:../asf/sam/drivers/usart/usart.c **** }
1538:../asf/sam/drivers/usart/usart.c **** 
1539:../asf/sam/drivers/usart/usart.c **** /**
1540:../asf/sam/drivers/usart/usart.c ****  * \brief Stop transmission of a break.
1541:../asf/sam/drivers/usart/usart.c ****  *
1542:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1543:../asf/sam/drivers/usart/usart.c ****  */
1544:../asf/sam/drivers/usart/usart.c **** void usart_stop_tx_break(Usart *p_usart)
1545:../asf/sam/drivers/usart/usart.c **** {
1546:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_STPBRK;
1547:../asf/sam/drivers/usart/usart.c **** }
1548:../asf/sam/drivers/usart/usart.c **** 
1549:../asf/sam/drivers/usart/usart.c **** /**
ARM GAS  /tmp/ccJYkMjP.s 			page 31


1550:../asf/sam/drivers/usart/usart.c ****  * \brief Start waiting for a character before clocking the timeout count.
1551:../asf/sam/drivers/usart/usart.c ****  * Reset the status bit TIMEOUT in US_CSR.
1552:../asf/sam/drivers/usart/usart.c ****  *
1553:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1554:../asf/sam/drivers/usart/usart.c ****  */
1555:../asf/sam/drivers/usart/usart.c **** void usart_start_rx_timeout(Usart *p_usart)
1556:../asf/sam/drivers/usart/usart.c **** {
1557:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_STTTO;
1558:../asf/sam/drivers/usart/usart.c **** }
1559:../asf/sam/drivers/usart/usart.c **** 
1560:../asf/sam/drivers/usart/usart.c **** /**
1561:../asf/sam/drivers/usart/usart.c ****  * \brief In Multidrop mode only, the next character written to the US_THR
1562:../asf/sam/drivers/usart/usart.c ****  * is sent with the address bit set.
1563:../asf/sam/drivers/usart/usart.c ****  *
1564:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1565:../asf/sam/drivers/usart/usart.c ****  * \param ul_addr The address to be sent out.
1566:../asf/sam/drivers/usart/usart.c ****  *
1567:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
1568:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
1569:../asf/sam/drivers/usart/usart.c ****  */
1570:../asf/sam/drivers/usart/usart.c **** uint32_t usart_send_address(Usart *p_usart, uint32_t ul_addr)
1571:../asf/sam/drivers/usart/usart.c **** {
1572:../asf/sam/drivers/usart/usart.c **** 	if ((p_usart->US_MR & US_MR_PAR_MULTIDROP) != US_MR_PAR_MULTIDROP) {
1573:../asf/sam/drivers/usart/usart.c **** 		return 1;
1574:../asf/sam/drivers/usart/usart.c **** 	}
1575:../asf/sam/drivers/usart/usart.c **** 
1576:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_SENDA;
1577:../asf/sam/drivers/usart/usart.c **** 
1578:../asf/sam/drivers/usart/usart.c **** 	if (usart_write(p_usart, ul_addr)) {
1579:../asf/sam/drivers/usart/usart.c **** 		return 1;
1580:../asf/sam/drivers/usart/usart.c **** 	} else {
1581:../asf/sam/drivers/usart/usart.c **** 		return 0;
1582:../asf/sam/drivers/usart/usart.c **** 	}
1583:../asf/sam/drivers/usart/usart.c **** }
1584:../asf/sam/drivers/usart/usart.c **** 
1585:../asf/sam/drivers/usart/usart.c **** /**
1586:../asf/sam/drivers/usart/usart.c ****  * \brief Restart the receive timeout.
1587:../asf/sam/drivers/usart/usart.c ****  *
1588:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1589:../asf/sam/drivers/usart/usart.c ****  */
1590:../asf/sam/drivers/usart/usart.c **** void usart_restart_rx_timeout(Usart *p_usart)
1591:../asf/sam/drivers/usart/usart.c **** {
1592:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RETTO;
1593:../asf/sam/drivers/usart/usart.c **** }
1594:../asf/sam/drivers/usart/usart.c **** 
1595:../asf/sam/drivers/usart/usart.c **** #if (SAM3S || SAM4S || SAM3U || SAM4L || SAM4E)
1596:../asf/sam/drivers/usart/usart.c **** 
1597:../asf/sam/drivers/usart/usart.c **** /**
1598:../asf/sam/drivers/usart/usart.c ****  * \brief Drive the pin DTR to 0.
1599:../asf/sam/drivers/usart/usart.c ****  *
1600:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1601:../asf/sam/drivers/usart/usart.c ****  */
1602:../asf/sam/drivers/usart/usart.c **** void usart_drive_DTR_pin_low(Usart *p_usart)
1603:../asf/sam/drivers/usart/usart.c **** {
1604:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_DTREN;
1605:../asf/sam/drivers/usart/usart.c **** }
1606:../asf/sam/drivers/usart/usart.c **** 
ARM GAS  /tmp/ccJYkMjP.s 			page 32


1607:../asf/sam/drivers/usart/usart.c **** /**
1608:../asf/sam/drivers/usart/usart.c ****  * \brief Drive the pin DTR to 1.
1609:../asf/sam/drivers/usart/usart.c ****  *
1610:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1611:../asf/sam/drivers/usart/usart.c ****  */
1612:../asf/sam/drivers/usart/usart.c **** void usart_drive_DTR_pin_high(Usart *p_usart)
1613:../asf/sam/drivers/usart/usart.c **** {
1614:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_DTRDIS;
1615:../asf/sam/drivers/usart/usart.c **** }
1616:../asf/sam/drivers/usart/usart.c **** 
1617:../asf/sam/drivers/usart/usart.c **** #endif
1618:../asf/sam/drivers/usart/usart.c **** 
1619:../asf/sam/drivers/usart/usart.c **** /**
1620:../asf/sam/drivers/usart/usart.c ****  * \brief Drive the pin RTS to 0.
1621:../asf/sam/drivers/usart/usart.c ****  *
1622:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1623:../asf/sam/drivers/usart/usart.c ****  */
1624:../asf/sam/drivers/usart/usart.c **** void usart_drive_RTS_pin_low(Usart *p_usart)
1625:../asf/sam/drivers/usart/usart.c **** {
1626:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RTSEN;
1627:../asf/sam/drivers/usart/usart.c **** }
1628:../asf/sam/drivers/usart/usart.c **** 
1629:../asf/sam/drivers/usart/usart.c **** /**
1630:../asf/sam/drivers/usart/usart.c ****  * \brief Drive the pin RTS to 1.
1631:../asf/sam/drivers/usart/usart.c ****  *
1632:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1633:../asf/sam/drivers/usart/usart.c ****  */
1634:../asf/sam/drivers/usart/usart.c **** void usart_drive_RTS_pin_high(Usart *p_usart)
1635:../asf/sam/drivers/usart/usart.c **** {
1636:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RTSDIS;
1637:../asf/sam/drivers/usart/usart.c **** }
1638:../asf/sam/drivers/usart/usart.c **** 
1639:../asf/sam/drivers/usart/usart.c **** /**
1640:../asf/sam/drivers/usart/usart.c ****  * \brief Drive the slave select line NSS (RTS pin) to 0 in SPI master mode.
1641:../asf/sam/drivers/usart/usart.c ****  *
1642:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1643:../asf/sam/drivers/usart/usart.c ****  */
1644:../asf/sam/drivers/usart/usart.c **** void usart_spi_force_chip_select(Usart *p_usart)
1645:../asf/sam/drivers/usart/usart.c **** {
1646:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_FCS;
1647:../asf/sam/drivers/usart/usart.c **** }
1648:../asf/sam/drivers/usart/usart.c **** 
1649:../asf/sam/drivers/usart/usart.c **** /**
1650:../asf/sam/drivers/usart/usart.c ****  * \brief Drive the slave select line NSS (RTS pin) to 1 in SPI master mode.
1651:../asf/sam/drivers/usart/usart.c ****  *
1652:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1653:../asf/sam/drivers/usart/usart.c ****  */
1654:../asf/sam/drivers/usart/usart.c **** void usart_spi_release_chip_select(Usart *p_usart)
1655:../asf/sam/drivers/usart/usart.c **** {
1656:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RCS;
1657:../asf/sam/drivers/usart/usart.c **** }
1658:../asf/sam/drivers/usart/usart.c **** 
1659:../asf/sam/drivers/usart/usart.c **** /**
1660:../asf/sam/drivers/usart/usart.c ****  * \brief Check if Transmit is Ready.
1661:../asf/sam/drivers/usart/usart.c ****  * Check if data have been loaded in USART_THR and are waiting to be loaded
1662:../asf/sam/drivers/usart/usart.c ****  * into the Transmit Shift Register (TSR).
1663:../asf/sam/drivers/usart/usart.c ****  *
ARM GAS  /tmp/ccJYkMjP.s 			page 33


1664:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1665:../asf/sam/drivers/usart/usart.c ****  *
1666:../asf/sam/drivers/usart/usart.c ****  * \retval 1 No data is in the Transmit Holding Register.
1667:../asf/sam/drivers/usart/usart.c ****  * \retval 0 There is data in the Transmit Holding Register.
1668:../asf/sam/drivers/usart/usart.c ****  */
1669:../asf/sam/drivers/usart/usart.c **** uint32_t usart_is_tx_ready(Usart *p_usart)
1670:../asf/sam/drivers/usart/usart.c **** {
1671:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_CSR & US_CSR_TXRDY) > 0;
1672:../asf/sam/drivers/usart/usart.c **** }
1673:../asf/sam/drivers/usart/usart.c **** 
1674:../asf/sam/drivers/usart/usart.c **** /**
1675:../asf/sam/drivers/usart/usart.c ****  * \brief Check if Transmit Holding Register is empty.
1676:../asf/sam/drivers/usart/usart.c ****  * Check if the last data written in USART_THR have been loaded in TSR and the
1677:../asf/sam/drivers/usart/usart.c ****  * last data loaded in TSR have been transmitted.
1678:../asf/sam/drivers/usart/usart.c ****  *
1679:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1680:../asf/sam/drivers/usart/usart.c ****  *
1681:../asf/sam/drivers/usart/usart.c ****  * \retval 1 Transmitter is empty.
1682:../asf/sam/drivers/usart/usart.c ****  * \retval 0 Transmitter is not empty.
1683:../asf/sam/drivers/usart/usart.c ****  */
1684:../asf/sam/drivers/usart/usart.c **** uint32_t usart_is_tx_empty(Usart *p_usart)
1685:../asf/sam/drivers/usart/usart.c **** {
1686:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_CSR & US_CSR_TXEMPTY) > 0;
1687:../asf/sam/drivers/usart/usart.c **** }
1688:../asf/sam/drivers/usart/usart.c **** 
1689:../asf/sam/drivers/usart/usart.c **** /**
1690:../asf/sam/drivers/usart/usart.c ****  * \brief Check if the received data are ready.
1691:../asf/sam/drivers/usart/usart.c ****  * Check if Data have been received and loaded into USART_RHR.
1692:../asf/sam/drivers/usart/usart.c ****  *
1693:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1694:../asf/sam/drivers/usart/usart.c ****  *
1695:../asf/sam/drivers/usart/usart.c ****  * \retval 1 Some data has been received.
1696:../asf/sam/drivers/usart/usart.c ****  * \retval 0 No data has been received.
1697:../asf/sam/drivers/usart/usart.c ****  */
1698:../asf/sam/drivers/usart/usart.c **** uint32_t usart_is_rx_ready(Usart *p_usart)
1699:../asf/sam/drivers/usart/usart.c **** {
1700:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_CSR & US_CSR_RXRDY) > 0;
1701:../asf/sam/drivers/usart/usart.c **** }
1702:../asf/sam/drivers/usart/usart.c **** 
1703:../asf/sam/drivers/usart/usart.c **** /**
1704:../asf/sam/drivers/usart/usart.c ****  * \brief Write to USART Transmit Holding Register.
1705:../asf/sam/drivers/usart/usart.c ****  *
1706:../asf/sam/drivers/usart/usart.c ****  * \note Before writing user should check if tx is ready (or empty).
1707:../asf/sam/drivers/usart/usart.c ****  *
1708:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1709:../asf/sam/drivers/usart/usart.c ****  * \param c Data to be sent.
1710:../asf/sam/drivers/usart/usart.c ****  *
1711:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
1712:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
1713:../asf/sam/drivers/usart/usart.c ****  */
1714:../asf/sam/drivers/usart/usart.c **** uint32_t usart_write(Usart *p_usart, uint32_t c)
1715:../asf/sam/drivers/usart/usart.c **** {
1716:../asf/sam/drivers/usart/usart.c **** 	if (!(p_usart->US_CSR & US_CSR_TXRDY)) {
1717:../asf/sam/drivers/usart/usart.c **** 		return 1;
1718:../asf/sam/drivers/usart/usart.c **** 	}
1719:../asf/sam/drivers/usart/usart.c **** 
1720:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_THR = US_THR_TXCHR(c);
ARM GAS  /tmp/ccJYkMjP.s 			page 34


1721:../asf/sam/drivers/usart/usart.c **** 	return 0;
1722:../asf/sam/drivers/usart/usart.c **** }
1723:../asf/sam/drivers/usart/usart.c **** 
1724:../asf/sam/drivers/usart/usart.c **** /**
1725:../asf/sam/drivers/usart/usart.c ****  * \brief Write to USART Transmit Holding Register.
1726:../asf/sam/drivers/usart/usart.c ****  *
1727:../asf/sam/drivers/usart/usart.c ****  * \note Before writing user should check if tx is ready (or empty).
1728:../asf/sam/drivers/usart/usart.c ****  *
1729:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1730:../asf/sam/drivers/usart/usart.c ****  * \param c Data to be sent.
1731:../asf/sam/drivers/usart/usart.c ****  *
1732:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
1733:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
1734:../asf/sam/drivers/usart/usart.c ****  */
1735:../asf/sam/drivers/usart/usart.c **** uint32_t usart_putchar(Usart *p_usart, uint32_t c)
1736:../asf/sam/drivers/usart/usart.c **** {
1737:../asf/sam/drivers/usart/usart.c **** 	while (!(p_usart->US_CSR & US_CSR_TXRDY)) {
1738:../asf/sam/drivers/usart/usart.c **** 	}
1739:../asf/sam/drivers/usart/usart.c **** 
1740:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_THR = US_THR_TXCHR(c);
1741:../asf/sam/drivers/usart/usart.c **** 
1742:../asf/sam/drivers/usart/usart.c **** 	return 0;
1743:../asf/sam/drivers/usart/usart.c **** }
1744:../asf/sam/drivers/usart/usart.c **** 
1745:../asf/sam/drivers/usart/usart.c **** /**
1746:../asf/sam/drivers/usart/usart.c ****  * \brief Write one-line string through USART.
1747:../asf/sam/drivers/usart/usart.c ****  *
1748:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1749:../asf/sam/drivers/usart/usart.c ****  * \param string Pointer to one-line string to be sent.
1750:../asf/sam/drivers/usart/usart.c ****  */
1751:../asf/sam/drivers/usart/usart.c **** void usart_write_line(Usart *p_usart, const char *string)
1752:../asf/sam/drivers/usart/usart.c **** {
1753:../asf/sam/drivers/usart/usart.c **** 	while (*string != '\0') {
1754:../asf/sam/drivers/usart/usart.c **** 		usart_putchar(p_usart, *string++);
1755:../asf/sam/drivers/usart/usart.c **** 	}
1756:../asf/sam/drivers/usart/usart.c **** }
1757:../asf/sam/drivers/usart/usart.c **** 
1758:../asf/sam/drivers/usart/usart.c **** /**
1759:../asf/sam/drivers/usart/usart.c ****  * \brief Read from USART Receive Holding Register.
1760:../asf/sam/drivers/usart/usart.c ****  *
1761:../asf/sam/drivers/usart/usart.c ****  * \note Before reading user should check if rx is ready.
1762:../asf/sam/drivers/usart/usart.c ****  *
1763:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1764:../asf/sam/drivers/usart/usart.c ****  * \param c Pointer where the one-byte received data will be stored.
1765:../asf/sam/drivers/usart/usart.c ****  *
1766:../asf/sam/drivers/usart/usart.c ****  * \retval 0 on success.
1767:../asf/sam/drivers/usart/usart.c ****  * \retval 1 if no data is available or errors.
1768:../asf/sam/drivers/usart/usart.c ****  */
1769:../asf/sam/drivers/usart/usart.c **** uint32_t usart_read(Usart *p_usart, uint32_t *c)
1770:../asf/sam/drivers/usart/usart.c **** {
1771:../asf/sam/drivers/usart/usart.c **** 	if (!(p_usart->US_CSR & US_CSR_RXRDY)) {
1772:../asf/sam/drivers/usart/usart.c **** 		return 1;
1773:../asf/sam/drivers/usart/usart.c **** 	}
1774:../asf/sam/drivers/usart/usart.c **** 
1775:../asf/sam/drivers/usart/usart.c **** 	/* Read character */
1776:../asf/sam/drivers/usart/usart.c **** 	*c = p_usart->US_RHR & US_RHR_RXCHR_Msk;
1777:../asf/sam/drivers/usart/usart.c **** 
ARM GAS  /tmp/ccJYkMjP.s 			page 35


1778:../asf/sam/drivers/usart/usart.c **** 	return 0;
1779:../asf/sam/drivers/usart/usart.c **** }
1780:../asf/sam/drivers/usart/usart.c **** 
1781:../asf/sam/drivers/usart/usart.c **** /**
1782:../asf/sam/drivers/usart/usart.c ****  * \brief Read from USART Receive Holding Register.
1783:../asf/sam/drivers/usart/usart.c ****  * Before reading user should check if rx is ready.
1784:../asf/sam/drivers/usart/usart.c ****  *
1785:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1786:../asf/sam/drivers/usart/usart.c ****  * \param c Pointer where the one-byte received data will be stored.
1787:../asf/sam/drivers/usart/usart.c ****  *
1788:../asf/sam/drivers/usart/usart.c ****  * \retval 0 Data has been received.
1789:../asf/sam/drivers/usart/usart.c ****  * \retval 1 on failure.
1790:../asf/sam/drivers/usart/usart.c ****  */
1791:../asf/sam/drivers/usart/usart.c **** uint32_t usart_getchar(Usart *p_usart, uint32_t *c)
1792:../asf/sam/drivers/usart/usart.c **** {
1793:../asf/sam/drivers/usart/usart.c **** 	/* Wait until it's not empty or timeout has reached. */
1794:../asf/sam/drivers/usart/usart.c **** 	while (!(p_usart->US_CSR & US_CSR_RXRDY)) {
1795:../asf/sam/drivers/usart/usart.c **** 	}
1796:../asf/sam/drivers/usart/usart.c **** 
1797:../asf/sam/drivers/usart/usart.c **** 	/* Read character */
1798:../asf/sam/drivers/usart/usart.c **** 	*c = p_usart->US_RHR & US_RHR_RXCHR_Msk;
1799:../asf/sam/drivers/usart/usart.c **** 
1800:../asf/sam/drivers/usart/usart.c **** 	return 0;
1801:../asf/sam/drivers/usart/usart.c **** }
1802:../asf/sam/drivers/usart/usart.c **** 
1803:../asf/sam/drivers/usart/usart.c **** #if (SAM3XA || SAM3U)
1804:../asf/sam/drivers/usart/usart.c **** /**
1805:../asf/sam/drivers/usart/usart.c ****  * \brief Get Transmit address for DMA operation.
1806:../asf/sam/drivers/usart/usart.c ****  *
1807:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1808:../asf/sam/drivers/usart/usart.c ****  *
1809:../asf/sam/drivers/usart/usart.c ****  * \return Transmit address for DMA access.
1810:../asf/sam/drivers/usart/usart.c ****  */
1811:../asf/sam/drivers/usart/usart.c **** uint32_t *usart_get_tx_access(Usart *p_usart)
1812:../asf/sam/drivers/usart/usart.c **** {
1813:../asf/sam/drivers/usart/usart.c **** 	return (uint32_t *)&(p_usart->US_THR);
1814:../asf/sam/drivers/usart/usart.c **** }
1815:../asf/sam/drivers/usart/usart.c **** 
1816:../asf/sam/drivers/usart/usart.c **** /**
1817:../asf/sam/drivers/usart/usart.c ****  * \brief Get Receive address for DMA operation.
1818:../asf/sam/drivers/usart/usart.c ****  *
1819:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1820:../asf/sam/drivers/usart/usart.c ****  *
1821:../asf/sam/drivers/usart/usart.c ****  * \return Receive address for DMA access.
1822:../asf/sam/drivers/usart/usart.c ****  */
1823:../asf/sam/drivers/usart/usart.c **** uint32_t *usart_get_rx_access(Usart *p_usart)
1824:../asf/sam/drivers/usart/usart.c **** {
1825:../asf/sam/drivers/usart/usart.c **** 	return (uint32_t *)&(p_usart->US_RHR);
1826:../asf/sam/drivers/usart/usart.c **** }
1827:../asf/sam/drivers/usart/usart.c **** #endif
1828:../asf/sam/drivers/usart/usart.c **** 
1829:../asf/sam/drivers/usart/usart.c **** #if (!SAM4L && !SAMV71 && !SAMV70 && !SAME70 && !SAMS70)
1830:../asf/sam/drivers/usart/usart.c **** /**
1831:../asf/sam/drivers/usart/usart.c ****  * \brief Get USART PDC base address.
1832:../asf/sam/drivers/usart/usart.c ****  *
1833:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a UART instance.
1834:../asf/sam/drivers/usart/usart.c ****  *
ARM GAS  /tmp/ccJYkMjP.s 			page 36


1835:../asf/sam/drivers/usart/usart.c ****  * \return USART PDC registers base for PDC driver to access.
1836:../asf/sam/drivers/usart/usart.c ****  */
1837:../asf/sam/drivers/usart/usart.c **** Pdc *usart_get_pdc_base(Usart *p_usart)
1838:../asf/sam/drivers/usart/usart.c **** {
1839:../asf/sam/drivers/usart/usart.c **** 	Pdc *p_pdc_base;
1840:../asf/sam/drivers/usart/usart.c **** 
1841:../asf/sam/drivers/usart/usart.c **** 	p_pdc_base = (Pdc *)NULL;
1842:../asf/sam/drivers/usart/usart.c **** 
1843:../asf/sam/drivers/usart/usart.c **** #ifdef PDC_USART
1844:../asf/sam/drivers/usart/usart.c **** 	if (p_usart == USART) {
1845:../asf/sam/drivers/usart/usart.c **** 		p_pdc_base = PDC_USART;
1846:../asf/sam/drivers/usart/usart.c **** 		return p_pdc_base;
1847:../asf/sam/drivers/usart/usart.c **** 	}
1848:../asf/sam/drivers/usart/usart.c **** #endif
1849:../asf/sam/drivers/usart/usart.c **** #ifdef PDC_USART0
1850:../asf/sam/drivers/usart/usart.c **** 	if (p_usart == USART0) {
1851:../asf/sam/drivers/usart/usart.c **** 		p_pdc_base = PDC_USART0;
1852:../asf/sam/drivers/usart/usart.c **** 		return p_pdc_base;
1853:../asf/sam/drivers/usart/usart.c **** 	}
1854:../asf/sam/drivers/usart/usart.c **** #endif
1855:../asf/sam/drivers/usart/usart.c **** #ifdef PDC_USART1
1856:../asf/sam/drivers/usart/usart.c **** 	else if (p_usart == USART1) {
1857:../asf/sam/drivers/usart/usart.c **** 		p_pdc_base = PDC_USART1;
1858:../asf/sam/drivers/usart/usart.c **** 		return p_pdc_base;
1859:../asf/sam/drivers/usart/usart.c **** 	}
1860:../asf/sam/drivers/usart/usart.c **** #endif
1861:../asf/sam/drivers/usart/usart.c **** #ifdef PDC_USART2
1862:../asf/sam/drivers/usart/usart.c **** 	else if (p_usart == USART2) {
1863:../asf/sam/drivers/usart/usart.c **** 		p_pdc_base = PDC_USART2;
1864:../asf/sam/drivers/usart/usart.c **** 		return p_pdc_base;
1865:../asf/sam/drivers/usart/usart.c **** 	}
1866:../asf/sam/drivers/usart/usart.c **** #endif
1867:../asf/sam/drivers/usart/usart.c **** #ifdef PDC_USART3
1868:../asf/sam/drivers/usart/usart.c **** 	else if (p_usart == USART3) {
1869:../asf/sam/drivers/usart/usart.c **** 		p_pdc_base = PDC_USART3;
1870:../asf/sam/drivers/usart/usart.c **** 		return p_pdc_base;
1871:../asf/sam/drivers/usart/usart.c **** 	}
1872:../asf/sam/drivers/usart/usart.c **** #endif
1873:../asf/sam/drivers/usart/usart.c **** #ifdef PDC_USART4
1874:../asf/sam/drivers/usart/usart.c **** 	else if (p_usart == USART4) {
1875:../asf/sam/drivers/usart/usart.c **** 		p_pdc_base = PDC_USART4;
1876:../asf/sam/drivers/usart/usart.c **** 		return p_pdc_base;
1877:../asf/sam/drivers/usart/usart.c **** 	}
1878:../asf/sam/drivers/usart/usart.c **** #endif
1879:../asf/sam/drivers/usart/usart.c **** #ifdef PDC_USART5
1880:../asf/sam/drivers/usart/usart.c **** 	else if (p_usart == USART5) {
1881:../asf/sam/drivers/usart/usart.c **** 		p_pdc_base = PDC_USART5;
1882:../asf/sam/drivers/usart/usart.c **** 		return p_pdc_base;
1883:../asf/sam/drivers/usart/usart.c **** 	}
1884:../asf/sam/drivers/usart/usart.c **** #endif
1885:../asf/sam/drivers/usart/usart.c **** #ifdef PDC_USART6
1886:../asf/sam/drivers/usart/usart.c **** 	else if (p_usart == USART6) {
1887:../asf/sam/drivers/usart/usart.c **** 		p_pdc_base = PDC_USART6;
1888:../asf/sam/drivers/usart/usart.c **** 		return p_pdc_base;
1889:../asf/sam/drivers/usart/usart.c **** 	}
1890:../asf/sam/drivers/usart/usart.c **** #endif
1891:../asf/sam/drivers/usart/usart.c **** #ifdef PDC_USART7
ARM GAS  /tmp/ccJYkMjP.s 			page 37


1892:../asf/sam/drivers/usart/usart.c **** 	else if (p_usart == USART7) {
1893:../asf/sam/drivers/usart/usart.c **** 		p_pdc_base = PDC_USART7;
1894:../asf/sam/drivers/usart/usart.c **** 		return p_pdc_base;
1895:../asf/sam/drivers/usart/usart.c **** 	}
1896:../asf/sam/drivers/usart/usart.c **** #endif
1897:../asf/sam/drivers/usart/usart.c **** 
1898:../asf/sam/drivers/usart/usart.c **** 	return p_pdc_base;
1899:../asf/sam/drivers/usart/usart.c **** }
1900:../asf/sam/drivers/usart/usart.c **** #endif
1901:../asf/sam/drivers/usart/usart.c **** 
1902:../asf/sam/drivers/usart/usart.c **** /**
1903:../asf/sam/drivers/usart/usart.c ****  * \brief Enable write protect of USART registers.
1904:../asf/sam/drivers/usart/usart.c ****  *
1905:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1906:../asf/sam/drivers/usart/usart.c ****  */
1907:../asf/sam/drivers/usart/usart.c **** void usart_enable_writeprotect(Usart *p_usart)
1908:../asf/sam/drivers/usart/usart.c **** {
1909:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_WPMR = US_WPMR_WPEN | US_WPMR_WPKEY_PASSWD;
1910:../asf/sam/drivers/usart/usart.c **** }
1911:../asf/sam/drivers/usart/usart.c **** 
1912:../asf/sam/drivers/usart/usart.c **** /**
1913:../asf/sam/drivers/usart/usart.c ****  * \brief Disable write protect of USART registers.
1914:../asf/sam/drivers/usart/usart.c ****  *
1915:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1916:../asf/sam/drivers/usart/usart.c ****  */
1917:../asf/sam/drivers/usart/usart.c **** void usart_disable_writeprotect(Usart *p_usart)
1918:../asf/sam/drivers/usart/usart.c **** {
1919:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_WPMR = US_WPMR_WPKEY_PASSWD;
 151              		.loc 1 1919 0
 152 0004 084E     		ldr	r6, .L19
 153              	.LBE145:
 154              	.LBE144:
 155              	.LBB147:
 156              	.LBB148:
1417:../asf/sam/drivers/usart/usart.c **** }
 157              		.loc 1 1417 0
 158 0006 8825     		movs	r5, #136
 159              	.LBE148:
 160              	.LBE147:
 161              	.LBB150:
 162              	.LBB151:
1459:../asf/sam/drivers/usart/usart.c **** }
 163              		.loc 1 1459 0
 164 0008 2424     		movs	r4, #36
 165              	.LBE151:
 166              	.LBE150:
 167              	.LBB153:
 168              	.LBB154:
1526:../asf/sam/drivers/usart/usart.c **** }
 169              		.loc 1 1526 0
 170 000a 4FF48071 		mov	r1, #256
 171              	.LBE154:
 172              	.LBE153:
 173              	.LBB156:
 174              	.LBB157:
1636:../asf/sam/drivers/usart/usart.c **** }
 175              		.loc 1 1636 0
ARM GAS  /tmp/ccJYkMjP.s 			page 38


 176 000e 4FF40022 		mov	r2, #524288
 177              	.LBE157:
 178              	.LBE156:
 179              	.LBB159:
 180              	.LBB146:
 181              		.loc 1 1919 0
 182 0012 C0F8E460 		str	r6, [r0, #228]
 183              	.LVL18:
 184              	.LBE146:
 185              	.LBE159:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 186              		.loc 1 256 0
 187 0016 4360     		str	r3, [r0, #4]
 257:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_TTGR = 0;
 188              		.loc 1 257 0
 189 0018 4362     		str	r3, [r0, #36]
 258:../asf/sam/drivers/usart/usart.c **** 
 190              		.loc 1 258 0
 191 001a 8362     		str	r3, [r0, #40]
 192              	.LVL19:
 193              	.LBB160:
 194              	.LBB149:
1417:../asf/sam/drivers/usart/usart.c **** }
 195              		.loc 1 1417 0
 196 001c 0560     		str	r5, [r0]
 197              	.LVL20:
 198              	.LBE149:
 199              	.LBE160:
 200              	.LBB161:
 201              	.LBB152:
1459:../asf/sam/drivers/usart/usart.c **** }
 202              		.loc 1 1459 0
 203 001e 0460     		str	r4, [r0]
 204              	.LVL21:
 205              	.LBE152:
 206              	.LBE161:
 207              	.LBB162:
 208              	.LBB155:
1526:../asf/sam/drivers/usart/usart.c **** }
 209              		.loc 1 1526 0
 210 0020 0160     		str	r1, [r0]
 211              	.LVL22:
 212              	.LBE155:
 213              	.LBE162:
 214              	.LBB163:
 215              	.LBB158:
1636:../asf/sam/drivers/usart/usart.c **** }
 216              		.loc 1 1636 0
 217 0022 0260     		str	r2, [r0]
 218              	.LVL23:
 219              	.LBE158:
 220              	.LBE163:
 270:../asf/sam/drivers/usart/usart.c **** 
 221              		.loc 1 270 0
 222 0024 70BC     		pop	{r4, r5, r6}
 223              		.cfi_restore 6
 224              		.cfi_restore 5
ARM GAS  /tmp/ccJYkMjP.s 			page 39


 225              		.cfi_restore 4
 226              		.cfi_def_cfa_offset 0
 227 0026 7047     		bx	lr
 228              	.L20:
 229              		.align	2
 230              	.L19:
 231 0028 00415355 		.word	1431519488
 232              		.cfi_endproc
 233              	.LFE147:
 234              		.size	usart_reset, .-usart_reset
 235              		.section	.text.usart_init_rs232,"ax",%progbits
 236              		.align	1
 237              		.p2align 2,,3
 238              		.global	usart_init_rs232
 239              		.syntax unified
 240              		.thumb
 241              		.thumb_func
 242              		.fpu fpv5-d16
 243              		.type	usart_init_rs232, %function
 244              	usart_init_rs232:
 245              	.LFB148:
 286:../asf/sam/drivers/usart/usart.c **** 	static uint32_t ul_reg_val;
 246              		.loc 1 286 0
 247              		.cfi_startproc
 248              		@ args = 0, pretend = 0, frame = 0
 249              		@ frame_needed = 0, uses_anonymous_args = 0
 250              	.LVL24:
 251 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 252              		.cfi_def_cfa_offset 24
 253              		.cfi_offset 3, -24
 254              		.cfi_offset 4, -20
 255              		.cfi_offset 5, -16
 256              		.cfi_offset 6, -12
 257              		.cfi_offset 7, -8
 258              		.cfi_offset 14, -4
 259              	.LBB190:
 260              	.LBB191:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 261              		.loc 1 256 0
 262 0002 0024     		movs	r4, #0
 263              	.LBB192:
 264              	.LBB193:
 265              		.loc 1 1919 0
 266 0004 144D     		ldr	r5, .L26
 267              	.LBE193:
 268              	.LBE192:
 269              	.LBB195:
 270              	.LBB196:
1526:../asf/sam/drivers/usart/usart.c **** }
 271              		.loc 1 1526 0
 272 0006 4FF48076 		mov	r6, #256
 273              	.LBE196:
 274              	.LBE195:
 275              	.LBB198:
 276              	.LBB199:
1417:../asf/sam/drivers/usart/usart.c **** }
 277              		.loc 1 1417 0
ARM GAS  /tmp/ccJYkMjP.s 			page 40


 278 000a 4FF0880E 		mov	lr, #136
 279              	.LBE199:
 280              	.LBE198:
 281              	.LBB201:
 282              	.LBB202:
1459:../asf/sam/drivers/usart/usart.c **** }
 283              		.loc 1 1459 0
 284 000e 2427     		movs	r7, #36
 285              	.LBE202:
 286              	.LBE201:
 287              	.LBB204:
 288              	.LBB194:
 289              		.loc 1 1919 0
 290 0010 C0F8E450 		str	r5, [r0, #228]
 291              	.LVL25:
 292              	.LBE194:
 293              	.LBE204:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 294              		.loc 1 256 0
 295 0014 4460     		str	r4, [r0, #4]
 296              	.LBB205:
 297              	.LBB206:
1636:../asf/sam/drivers/usart/usart.c **** }
 298              		.loc 1 1636 0
 299 0016 4FF40025 		mov	r5, #524288
 300              	.LBE206:
 301              	.LBE205:
 257:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_TTGR = 0;
 302              		.loc 1 257 0
 303 001a 4462     		str	r4, [r0, #36]
 258:../asf/sam/drivers/usart/usart.c **** 
 304              		.loc 1 258 0
 305 001c 8462     		str	r4, [r0, #40]
 306              	.LVL26:
 307              	.LBB208:
 308              	.LBB200:
1417:../asf/sam/drivers/usart/usart.c **** }
 309              		.loc 1 1417 0
 310 001e C0F800E0 		str	lr, [r0]
 311              	.LVL27:
 312              	.LBE200:
 313              	.LBE208:
 314              	.LBB209:
 315              	.LBB203:
1459:../asf/sam/drivers/usart/usart.c **** }
 316              		.loc 1 1459 0
 317 0022 0760     		str	r7, [r0]
 318              	.LVL28:
 319              	.LBE203:
 320              	.LBE209:
 321              	.LBB210:
 322              	.LBB197:
1526:../asf/sam/drivers/usart/usart.c **** }
 323              		.loc 1 1526 0
 324 0024 0660     		str	r6, [r0]
 325              	.LVL29:
 326              	.LBE197:
ARM GAS  /tmp/ccJYkMjP.s 			page 41


 327              	.LBE210:
 328              	.LBE191:
 329              	.LBE190:
 292:../asf/sam/drivers/usart/usart.c **** 	/* Check whether the input values are legal. */
 330              		.loc 1 292 0
 331 0026 0D4E     		ldr	r6, .L26+4
 332              	.LBB213:
 333              	.LBB212:
 334              	.LBB211:
 335              	.LBB207:
1636:../asf/sam/drivers/usart/usart.c **** }
 336              		.loc 1 1636 0
 337 0028 0560     		str	r5, [r0]
 338              	.LVL30:
 339              	.LBE207:
 340              	.LBE211:
 341              	.LBE212:
 342              	.LBE213:
 292:../asf/sam/drivers/usart/usart.c **** 	/* Check whether the input values are legal. */
 343              		.loc 1 292 0
 344 002a 3460     		str	r4, [r6]
 294:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->baudrate, ul_mck)) {
 345              		.loc 1 294 0
 346 002c 89B1     		cbz	r1, .L24
 347 002e 0D46     		mov	r5, r1
 294:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->baudrate, ul_mck)) {
 348              		.loc 1 294 0 is_stmt 0 discriminator 1
 349 0030 0968     		ldr	r1, [r1]
 350              	.LVL31:
 351 0032 0446     		mov	r4, r0
 352 0034 FFF7FEFF 		bl	usart_set_async_baudrate
 353              	.LVL32:
 354 0038 58B9     		cbnz	r0, .L24
 355              	.LVL33:
 356              	.LBB214:
 357              	.LBB215:
 300:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->channel_mode | p_usart_opt->stop_bits;
 358              		.loc 1 300 0 is_stmt 1
 359 003a 6A68     		ldr	r2, [r5, #4]
 360 003c AB68     		ldr	r3, [r5, #8]
 361 003e 2F69     		ldr	r7, [r5, #16]
 362 0040 1343     		orrs	r3, r3, r2
 301:../asf/sam/drivers/usart/usart.c **** 
 363              		.loc 1 301 0
 364 0042 E968     		ldr	r1, [r5, #12]
 306:../asf/sam/drivers/usart/usart.c **** 
 365              		.loc 1 306 0
 366 0044 6268     		ldr	r2, [r4, #4]
 300:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->channel_mode | p_usart_opt->stop_bits;
 367              		.loc 1 300 0
 368 0046 3B43     		orrs	r3, r3, r7
 301:../asf/sam/drivers/usart/usart.c **** 
 369              		.loc 1 301 0
 370 0048 0B43     		orrs	r3, r3, r1
 306:../asf/sam/drivers/usart/usart.c **** 
 371              		.loc 1 306 0
 372 004a 1A43     		orrs	r2, r2, r3
ARM GAS  /tmp/ccJYkMjP.s 			page 42


 300:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->channel_mode | p_usart_opt->stop_bits;
 373              		.loc 1 300 0
 374 004c 3360     		str	r3, [r6]
 306:../asf/sam/drivers/usart/usart.c **** 
 375              		.loc 1 306 0
 376 004e 6260     		str	r2, [r4, #4]
 377              	.LVL34:
 378              	.LBE215:
 379              	.LBE214:
 309:../asf/sam/drivers/usart/usart.c **** 
 380              		.loc 1 309 0
 381 0050 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 382              	.LVL35:
 383              	.L24:
 296:../asf/sam/drivers/usart/usart.c **** 	}
 384              		.loc 1 296 0
 385 0052 0120     		movs	r0, #1
 386 0054 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 387              	.L27:
 388 0056 00BF     		.align	2
 389              	.L26:
 390 0058 00415355 		.word	1431519488
 391 005c 00000000 		.word	.LANCHOR0
 392              		.cfi_endproc
 393              	.LFE148:
 394              		.size	usart_init_rs232, .-usart_init_rs232
 395              		.section	.text.usart_init_hw_handshaking,"ax",%progbits
 396              		.align	1
 397              		.p2align 2,,3
 398              		.global	usart_init_hw_handshaking
 399              		.syntax unified
 400              		.thumb
 401              		.thumb_func
 402              		.fpu fpv5-d16
 403              		.type	usart_init_hw_handshaking, %function
 404              	usart_init_hw_handshaking:
 405              	.LFB149:
 325:../asf/sam/drivers/usart/usart.c **** 	/* Initialize the USART as standard RS232. */
 406              		.loc 1 325 0
 407              		.cfi_startproc
 408              		@ args = 0, pretend = 0, frame = 0
 409              		@ frame_needed = 0, uses_anonymous_args = 0
 410              	.LVL36:
 411 0000 10B5     		push	{r4, lr}
 412              		.cfi_def_cfa_offset 8
 413              		.cfi_offset 4, -8
 414              		.cfi_offset 14, -4
 325:../asf/sam/drivers/usart/usart.c **** 	/* Initialize the USART as standard RS232. */
 415              		.loc 1 325 0
 416 0002 0446     		mov	r4, r0
 327:../asf/sam/drivers/usart/usart.c **** 		return 1;
 417              		.loc 1 327 0
 418 0004 FFF7FEFF 		bl	usart_init_rs232
 419              	.LVL37:
 420 0008 30B9     		cbnz	r0, .L30
 332:../asf/sam/drivers/usart/usart.c **** 			US_MR_USART_MODE_HW_HANDSHAKING;
 421              		.loc 1 332 0
ARM GAS  /tmp/ccJYkMjP.s 			page 43


 422 000a 6368     		ldr	r3, [r4, #4]
 423 000c 23F00F03 		bic	r3, r3, #15
 424 0010 43F00203 		orr	r3, r3, #2
 425 0014 6360     		str	r3, [r4, #4]
 335:../asf/sam/drivers/usart/usart.c **** }
 426              		.loc 1 335 0
 427 0016 10BD     		pop	{r4, pc}
 428              	.LVL38:
 429              	.L30:
 328:../asf/sam/drivers/usart/usart.c **** 	}
 430              		.loc 1 328 0
 431 0018 0120     		movs	r0, #1
 336:../asf/sam/drivers/usart/usart.c **** 
 432              		.loc 1 336 0
 433 001a 10BD     		pop	{r4, pc}
 434              		.cfi_endproc
 435              	.LFE149:
 436              		.size	usart_init_hw_handshaking, .-usart_init_hw_handshaking
 437              		.section	.text.usart_init_sync_master,"ax",%progbits
 438              		.align	1
 439              		.p2align 2,,3
 440              		.global	usart_init_sync_master
 441              		.syntax unified
 442              		.thumb
 443              		.thumb_func
 444              		.fpu fpv5-d16
 445              		.type	usart_init_sync_master, %function
 446              	usart_init_sync_master:
 447              	.LFB150:
 398:../asf/sam/drivers/usart/usart.c **** 	static uint32_t ul_reg_val;
 448              		.loc 1 398 0
 449              		.cfi_startproc
 450              		@ args = 0, pretend = 0, frame = 0
 451              		@ frame_needed = 0, uses_anonymous_args = 0
 452              		@ link register save eliminated.
 453              	.LVL39:
 454 0000 F0B4     		push	{r4, r5, r6, r7}
 455              		.cfi_def_cfa_offset 16
 456              		.cfi_offset 4, -16
 457              		.cfi_offset 5, -12
 458              		.cfi_offset 6, -8
 459              		.cfi_offset 7, -4
 398:../asf/sam/drivers/usart/usart.c **** 	static uint32_t ul_reg_val;
 460              		.loc 1 398 0
 461 0002 0346     		mov	r3, r0
 462              	.LVL40:
 463              	.LBB216:
 464              	.LBB217:
 465              	.LBB218:
 466              	.LBB219:
 467              		.loc 1 1919 0
 468 0004 194C     		ldr	r4, .L38
 469              	.LBE219:
 470              	.LBE218:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 471              		.loc 1 256 0
 472 0006 0020     		movs	r0, #0
ARM GAS  /tmp/ccJYkMjP.s 			page 44


 473              	.LVL41:
 474              	.LBB221:
 475              	.LBB222:
1417:../asf/sam/drivers/usart/usart.c **** }
 476              		.loc 1 1417 0
 477 0008 8827     		movs	r7, #136
 478              	.LBE222:
 479              	.LBE221:
 480              	.LBB224:
 481              	.LBB220:
 482              		.loc 1 1919 0
 483 000a C3F8E440 		str	r4, [r3, #228]
 484              	.LVL42:
 485              	.LBE220:
 486              	.LBE224:
 487              	.LBB225:
 488              	.LBB226:
1459:../asf/sam/drivers/usart/usart.c **** }
 489              		.loc 1 1459 0
 490 000e 2426     		movs	r6, #36
 491              	.LBE226:
 492              	.LBE225:
 493              	.LBB228:
 494              	.LBB229:
1526:../asf/sam/drivers/usart/usart.c **** }
 495              		.loc 1 1526 0
 496 0010 4FF48075 		mov	r5, #256
 497              	.LBE229:
 498              	.LBE228:
 499              	.LBB231:
 500              	.LBB232:
1636:../asf/sam/drivers/usart/usart.c **** }
 501              		.loc 1 1636 0
 502 0014 4FF40024 		mov	r4, #524288
 503              	.LBE232:
 504              	.LBE231:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 505              		.loc 1 256 0
 506 0018 5860     		str	r0, [r3, #4]
 257:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_TTGR = 0;
 507              		.loc 1 257 0
 508 001a 5862     		str	r0, [r3, #36]
 258:../asf/sam/drivers/usart/usart.c **** 
 509              		.loc 1 258 0
 510 001c 9862     		str	r0, [r3, #40]
 511              	.LVL43:
 512              	.LBB234:
 513              	.LBB223:
1417:../asf/sam/drivers/usart/usart.c **** }
 514              		.loc 1 1417 0
 515 001e 1F60     		str	r7, [r3]
 516              	.LVL44:
 517              	.LBE223:
 518              	.LBE234:
 519              	.LBB235:
 520              	.LBB227:
1459:../asf/sam/drivers/usart/usart.c **** }
ARM GAS  /tmp/ccJYkMjP.s 			page 45


 521              		.loc 1 1459 0
 522 0020 1E60     		str	r6, [r3]
 523              	.LVL45:
 524              	.LBE227:
 525              	.LBE235:
 526              	.LBB236:
 527              	.LBB230:
1526:../asf/sam/drivers/usart/usart.c **** }
 528              		.loc 1 1526 0
 529 0022 1D60     		str	r5, [r3]
 530              	.LVL46:
 531              	.LBE230:
 532              	.LBE236:
 533              	.LBB237:
 534              	.LBB233:
1636:../asf/sam/drivers/usart/usart.c **** }
 535              		.loc 1 1636 0
 536 0024 1C60     		str	r4, [r3]
 537              	.LVL47:
 538              	.LBE233:
 539              	.LBE237:
 540              	.LBE217:
 541              	.LBE216:
 406:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->baudrate, ul_mck)) {
 542              		.loc 1 406 0
 543 0026 49B1     		cbz	r1, .L35
 406:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->baudrate, ul_mck)) {
 544              		.loc 1 406 0 is_stmt 0 discriminator 1
 545 0028 0C68     		ldr	r4, [r1]
 546              	.LVL48:
 547              	.LBB238:
 548              	.LBB239:
 177:../asf/sam/drivers/usart/usart.c **** 		return 1;
 549              		.loc 1 177 0 is_stmt 1 discriminator 1
 550 002a 4FF6FE75 		movw	r5, #65534
 175:../asf/sam/drivers/usart/usart.c **** 
 551              		.loc 1 175 0 discriminator 1
 552 002e 02EB5402 		add	r2, r2, r4, lsr #1
 553              	.LVL49:
 554 0032 B2FBF4F4 		udiv	r4, r2, r4
 555              	.LVL50:
 177:../asf/sam/drivers/usart/usart.c **** 		return 1;
 556              		.loc 1 177 0 discriminator 1
 557 0036 621E     		subs	r2, r4, #1
 558 0038 AA42     		cmp	r2, r5
 559 003a 02D9     		bls	.L37
 560              	.LVL51:
 561              	.L35:
 562              	.LBE239:
 563              	.LBE238:
 408:../asf/sam/drivers/usart/usart.c **** 	}
 564              		.loc 1 408 0
 565 003c 0120     		movs	r0, #1
 420:../asf/sam/drivers/usart/usart.c **** 
 566              		.loc 1 420 0
 567 003e F0BC     		pop	{r4, r5, r6, r7}
 568              		.cfi_remember_state
ARM GAS  /tmp/ccJYkMjP.s 			page 46


 569              		.cfi_restore 7
 570              		.cfi_restore 6
 571              		.cfi_restore 5
 572              		.cfi_restore 4
 573              		.cfi_def_cfa_offset 0
 574 0040 7047     		bx	lr
 575              	.LVL52:
 576              	.L37:
 577              		.cfi_restore_state
 412:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->channel_mode | p_usart_opt->stop_bits;
 578              		.loc 1 412 0
 579 0042 8D68     		ldr	r5, [r1, #8]
 580 0044 4A68     		ldr	r2, [r1, #4]
 581              	.LBB245:
 582              	.LBB240:
 182:../asf/sam/drivers/usart/usart.c **** 
 583              		.loc 1 182 0
 584 0046 1C62     		str	r4, [r3, #32]
 585              	.LBE240:
 586              	.LBE245:
 412:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->channel_mode | p_usart_opt->stop_bits;
 587              		.loc 1 412 0
 588 0048 2A43     		orrs	r2, r2, r5
 589              	.LBB246:
 590              	.LBB241:
 184:../asf/sam/drivers/usart/usart.c **** 			US_MR_USCLKS_MCK | US_MR_SYNC;
 591              		.loc 1 184 0
 592 004a 5C68     		ldr	r4, [r3, #4]
 593              	.LVL53:
 594              	.LBE241:
 595              	.LBE246:
 416:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR |= ul_reg_val;
 596              		.loc 1 416 0
 597 004c 0E69     		ldr	r6, [r1, #16]
 598              	.LBB247:
 599              	.LBB242:
 185:../asf/sam/drivers/usart/usart.c **** 	return 0;
 600              		.loc 1 185 0
 601 004e 24F49874 		bic	r4, r4, #304
 602              	.LBE242:
 603              	.LBE247:
 416:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR |= ul_reg_val;
 604              		.loc 1 416 0
 605 0052 42F48022 		orr	r2, r2, #262144
 606 0056 CD68     		ldr	r5, [r1, #12]
 607              	.LBB248:
 608              	.LBB243:
 185:../asf/sam/drivers/usart/usart.c **** 	return 0;
 609              		.loc 1 185 0
 610 0058 44F48074 		orr	r4, r4, #256
 611              	.LBE243:
 612              	.LBE248:
 416:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR |= ul_reg_val;
 613              		.loc 1 416 0
 614 005c 3243     		orrs	r2, r2, r6
 615              	.LBB249:
 616              	.LBB244:
ARM GAS  /tmp/ccJYkMjP.s 			page 47


 184:../asf/sam/drivers/usart/usart.c **** 			US_MR_USCLKS_MCK | US_MR_SYNC;
 617              		.loc 1 184 0
 618 005e 5C60     		str	r4, [r3, #4]
 619              	.LVL54:
 620              	.LBE244:
 621              	.LBE249:
 416:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR |= ul_reg_val;
 622              		.loc 1 416 0
 623 0060 2A43     		orrs	r2, r2, r5
 417:../asf/sam/drivers/usart/usart.c **** 
 624              		.loc 1 417 0
 625 0062 5968     		ldr	r1, [r3, #4]
 626              	.LVL55:
 627 0064 0A43     		orrs	r2, r2, r1
 420:../asf/sam/drivers/usart/usart.c **** 
 628              		.loc 1 420 0
 629 0066 F0BC     		pop	{r4, r5, r6, r7}
 630              		.cfi_restore 4
 631              		.cfi_restore 5
 632              		.cfi_restore 6
 633              		.cfi_restore 7
 634              		.cfi_def_cfa_offset 0
 417:../asf/sam/drivers/usart/usart.c **** 
 635              		.loc 1 417 0
 636 0068 5A60     		str	r2, [r3, #4]
 420:../asf/sam/drivers/usart/usart.c **** 
 637              		.loc 1 420 0
 638 006a 7047     		bx	lr
 639              	.L39:
 640              		.align	2
 641              	.L38:
 642 006c 00415355 		.word	1431519488
 643              		.cfi_endproc
 644              	.LFE150:
 645              		.size	usart_init_sync_master, .-usart_init_sync_master
 646              		.section	.text.usart_init_sync_slave,"ax",%progbits
 647              		.align	1
 648              		.p2align 2,,3
 649              		.global	usart_init_sync_slave
 650              		.syntax unified
 651              		.thumb
 652              		.thumb_func
 653              		.fpu fpv5-d16
 654              		.type	usart_init_sync_slave, %function
 655              	usart_init_sync_slave:
 656              	.LFB151:
 435:../asf/sam/drivers/usart/usart.c **** 	static uint32_t ul_reg_val;
 657              		.loc 1 435 0
 658              		.cfi_startproc
 659              		@ args = 0, pretend = 0, frame = 0
 660              		@ frame_needed = 0, uses_anonymous_args = 0
 661              		@ link register save eliminated.
 662              	.LVL56:
 663 0000 F0B4     		push	{r4, r5, r6, r7}
 664              		.cfi_def_cfa_offset 16
 665              		.cfi_offset 4, -16
 666              		.cfi_offset 5, -12
ARM GAS  /tmp/ccJYkMjP.s 			page 48


 667              		.cfi_offset 6, -8
 668              		.cfi_offset 7, -4
 435:../asf/sam/drivers/usart/usart.c **** 	static uint32_t ul_reg_val;
 669              		.loc 1 435 0
 670 0002 0346     		mov	r3, r0
 671              	.LVL57:
 672              	.LBB250:
 673              	.LBB251:
 674              	.LBB252:
 675              	.LBB253:
1636:../asf/sam/drivers/usart/usart.c **** }
 676              		.loc 1 1636 0
 677 0004 4FF40022 		mov	r2, #524288
 678              	.LBE253:
 679              	.LBE252:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 680              		.loc 1 256 0
 681 0008 0020     		movs	r0, #0
 682              	.LVL58:
 683              	.LBB255:
 684              	.LBB256:
 685              		.loc 1 1919 0
 686 000a 114F     		ldr	r7, .L44
 687              	.LBE256:
 688              	.LBE255:
 689              	.LBB258:
 690              	.LBB259:
1417:../asf/sam/drivers/usart/usart.c **** }
 691              		.loc 1 1417 0
 692 000c 8826     		movs	r6, #136
 693              	.LBE259:
 694              	.LBE258:
 695              	.LBB261:
 696              	.LBB262:
1459:../asf/sam/drivers/usart/usart.c **** }
 697              		.loc 1 1459 0
 698 000e 2425     		movs	r5, #36
 699              	.LBE262:
 700              	.LBE261:
 701              	.LBB264:
 702              	.LBB265:
1526:../asf/sam/drivers/usart/usart.c **** }
 703              		.loc 1 1526 0
 704 0010 4FF48074 		mov	r4, #256
 705              	.LBE265:
 706              	.LBE264:
 707              	.LBB267:
 708              	.LBB257:
 709              		.loc 1 1919 0
 710 0014 C3F8E470 		str	r7, [r3, #228]
 711              	.LVL59:
 712              	.LBE257:
 713              	.LBE267:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 714              		.loc 1 256 0
 715 0018 5860     		str	r0, [r3, #4]
 257:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_TTGR = 0;
ARM GAS  /tmp/ccJYkMjP.s 			page 49


 716              		.loc 1 257 0
 717 001a 5862     		str	r0, [r3, #36]
 258:../asf/sam/drivers/usart/usart.c **** 
 718              		.loc 1 258 0
 719 001c 9862     		str	r0, [r3, #40]
 720              	.LVL60:
 721              	.LBB268:
 722              	.LBB260:
1417:../asf/sam/drivers/usart/usart.c **** }
 723              		.loc 1 1417 0
 724 001e 1E60     		str	r6, [r3]
 725              	.LVL61:
 726              	.LBE260:
 727              	.LBE268:
 728              	.LBB269:
 729              	.LBB263:
1459:../asf/sam/drivers/usart/usart.c **** }
 730              		.loc 1 1459 0
 731 0020 1D60     		str	r5, [r3]
 732              	.LVL62:
 733              	.LBE263:
 734              	.LBE269:
 735              	.LBB270:
 736              	.LBB266:
1526:../asf/sam/drivers/usart/usart.c **** }
 737              		.loc 1 1526 0
 738 0022 1C60     		str	r4, [r3]
 739              	.LVL63:
 740              	.LBE266:
 741              	.LBE270:
 742              	.LBB271:
 743              	.LBB254:
1636:../asf/sam/drivers/usart/usart.c **** }
 744              		.loc 1 1636 0
 745 0024 1A60     		str	r2, [r3]
 746              	.LVL64:
 747              	.LBE254:
 748              	.LBE271:
 749              	.LBE251:
 750              	.LBE250:
 751              	.LBB272:
 752              	.LBB273:
 197:../asf/sam/drivers/usart/usart.c **** 			US_MR_USCLKS_SCK | US_MR_SYNC;
 753              		.loc 1 197 0
 754 0026 5A68     		ldr	r2, [r3, #4]
 198:../asf/sam/drivers/usart/usart.c **** }
 755              		.loc 1 198 0
 756 0028 42F49872 		orr	r2, r2, #304
 197:../asf/sam/drivers/usart/usart.c **** 			US_MR_USCLKS_SCK | US_MR_SYNC;
 757              		.loc 1 197 0
 758 002c 5A60     		str	r2, [r3, #4]
 759              	.LVL65:
 760              	.LBE273:
 761              	.LBE272:
 445:../asf/sam/drivers/usart/usart.c **** 		return 1;
 762              		.loc 1 445 0
 763 002e 59B1     		cbz	r1, .L42
ARM GAS  /tmp/ccJYkMjP.s 			page 50


 450:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->channel_mode | p_usart_opt->stop_bits;
 764              		.loc 1 450 0
 765 0030 8C68     		ldr	r4, [r1, #8]
 766 0032 4A68     		ldr	r2, [r1, #4]
 767 0034 0D69     		ldr	r5, [r1, #16]
 768 0036 2243     		orrs	r2, r2, r4
 451:../asf/sam/drivers/usart/usart.c **** 
 769              		.loc 1 451 0
 770 0038 CC68     		ldr	r4, [r1, #12]
 455:../asf/sam/drivers/usart/usart.c **** 
 771              		.loc 1 455 0
 772 003a 5968     		ldr	r1, [r3, #4]
 773              	.LVL66:
 450:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->channel_mode | p_usart_opt->stop_bits;
 774              		.loc 1 450 0
 775 003c 2A43     		orrs	r2, r2, r5
 451:../asf/sam/drivers/usart/usart.c **** 
 776              		.loc 1 451 0
 777 003e 2243     		orrs	r2, r2, r4
 455:../asf/sam/drivers/usart/usart.c **** 
 778              		.loc 1 455 0
 779 0040 0A43     		orrs	r2, r2, r1
 458:../asf/sam/drivers/usart/usart.c **** 
 780              		.loc 1 458 0
 781 0042 F0BC     		pop	{r4, r5, r6, r7}
 782              		.cfi_remember_state
 783              		.cfi_restore 7
 784              		.cfi_restore 6
 785              		.cfi_restore 5
 786              		.cfi_restore 4
 787              		.cfi_def_cfa_offset 0
 455:../asf/sam/drivers/usart/usart.c **** 
 788              		.loc 1 455 0
 789 0044 5A60     		str	r2, [r3, #4]
 458:../asf/sam/drivers/usart/usart.c **** 
 790              		.loc 1 458 0
 791 0046 7047     		bx	lr
 792              	.LVL67:
 793              	.L42:
 794              		.cfi_restore_state
 446:../asf/sam/drivers/usart/usart.c **** 	}
 795              		.loc 1 446 0
 796 0048 0120     		movs	r0, #1
 458:../asf/sam/drivers/usart/usart.c **** 
 797              		.loc 1 458 0
 798 004a F0BC     		pop	{r4, r5, r6, r7}
 799              		.cfi_restore 4
 800              		.cfi_restore 5
 801              		.cfi_restore 6
 802              		.cfi_restore 7
 803              		.cfi_def_cfa_offset 0
 804 004c 7047     		bx	lr
 805              	.L45:
 806 004e 00BF     		.align	2
 807              	.L44:
 808 0050 00415355 		.word	1431519488
 809              		.cfi_endproc
ARM GAS  /tmp/ccJYkMjP.s 			page 51


 810              	.LFE151:
 811              		.size	usart_init_sync_slave, .-usart_init_sync_slave
 812              		.section	.text.usart_init_rs485,"ax",%progbits
 813              		.align	1
 814              		.p2align 2,,3
 815              		.global	usart_init_rs485
 816              		.syntax unified
 817              		.thumb
 818              		.thumb_func
 819              		.fpu fpv5-d16
 820              		.type	usart_init_rs485, %function
 821              	usart_init_rs485:
 822              	.LFB152:
 474:../asf/sam/drivers/usart/usart.c **** 	/* Initialize the USART as standard RS232. */
 823              		.loc 1 474 0
 824              		.cfi_startproc
 825              		@ args = 0, pretend = 0, frame = 0
 826              		@ frame_needed = 0, uses_anonymous_args = 0
 827              	.LVL68:
 828 0000 10B5     		push	{r4, lr}
 829              		.cfi_def_cfa_offset 8
 830              		.cfi_offset 4, -8
 831              		.cfi_offset 14, -4
 474:../asf/sam/drivers/usart/usart.c **** 	/* Initialize the USART as standard RS232. */
 832              		.loc 1 474 0
 833 0002 0446     		mov	r4, r0
 476:../asf/sam/drivers/usart/usart.c **** 		return 1;
 834              		.loc 1 476 0
 835 0004 FFF7FEFF 		bl	usart_init_rs232
 836              	.LVL69:
 837 0008 30B9     		cbnz	r0, .L48
 481:../asf/sam/drivers/usart/usart.c **** 			US_MR_USART_MODE_RS485;
 838              		.loc 1 481 0
 839 000a 6368     		ldr	r3, [r4, #4]
 840 000c 23F00F03 		bic	r3, r3, #15
 841 0010 43F00103 		orr	r3, r3, #1
 842 0014 6360     		str	r3, [r4, #4]
 484:../asf/sam/drivers/usart/usart.c **** }
 843              		.loc 1 484 0
 844 0016 10BD     		pop	{r4, pc}
 845              	.LVL70:
 846              	.L48:
 477:../asf/sam/drivers/usart/usart.c **** 	}
 847              		.loc 1 477 0
 848 0018 0120     		movs	r0, #1
 485:../asf/sam/drivers/usart/usart.c **** 
 849              		.loc 1 485 0
 850 001a 10BD     		pop	{r4, pc}
 851              		.cfi_endproc
 852              	.LFE152:
 853              		.size	usart_init_rs485, .-usart_init_rs485
 854              		.section	.text.usart_init_spi_master,"ax",%progbits
 855              		.align	1
 856              		.p2align 2,,3
 857              		.global	usart_init_spi_master
 858              		.syntax unified
 859              		.thumb
ARM GAS  /tmp/ccJYkMjP.s 			page 52


 860              		.thumb_func
 861              		.fpu fpv5-d16
 862              		.type	usart_init_spi_master, %function
 863              	usart_init_spi_master:
 864              	.LFB153:
 730:../asf/sam/drivers/usart/usart.c **** 	static uint32_t ul_reg_val;
 865              		.loc 1 730 0
 866              		.cfi_startproc
 867              		@ args = 0, pretend = 0, frame = 0
 868              		@ frame_needed = 0, uses_anonymous_args = 0
 869              	.LVL71:
 870 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 871              		.cfi_def_cfa_offset 20
 872              		.cfi_offset 4, -20
 873              		.cfi_offset 5, -16
 874              		.cfi_offset 6, -12
 875              		.cfi_offset 7, -8
 876              		.cfi_offset 14, -4
 730:../asf/sam/drivers/usart/usart.c **** 	static uint32_t ul_reg_val;
 877              		.loc 1 730 0
 878 0002 0346     		mov	r3, r0
 879              	.LVL72:
 880              	.LBB274:
 881              	.LBB275:
 882              	.LBB276:
 883              	.LBB277:
 884              		.loc 1 1919 0
 885 0004 244C     		ldr	r4, .L61
 886              	.LBE277:
 887              	.LBE276:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 888              		.loc 1 256 0
 889 0006 0020     		movs	r0, #0
 890              	.LVL73:
 891              	.LBB279:
 892              	.LBB280:
1417:../asf/sam/drivers/usart/usart.c **** }
 893              		.loc 1 1417 0
 894 0008 4FF0880E 		mov	lr, #136
 895              	.LBE280:
 896              	.LBE279:
 897              	.LBB282:
 898              	.LBB278:
 899              		.loc 1 1919 0
 900 000c C3F8E440 		str	r4, [r3, #228]
 901              	.LVL74:
 902              	.LBE278:
 903              	.LBE282:
 904              	.LBB283:
 905              	.LBB284:
1459:../asf/sam/drivers/usart/usart.c **** }
 906              		.loc 1 1459 0
 907 0010 2427     		movs	r7, #36
 908              	.LBE284:
 909              	.LBE283:
 910              	.LBB286:
 911              	.LBB287:
ARM GAS  /tmp/ccJYkMjP.s 			page 53


1526:../asf/sam/drivers/usart/usart.c **** }
 912              		.loc 1 1526 0
 913 0012 4FF48076 		mov	r6, #256
 914              	.LBE287:
 915              	.LBE286:
 916              	.LBB289:
 917              	.LBB290:
1636:../asf/sam/drivers/usart/usart.c **** }
 918              		.loc 1 1636 0
 919 0016 4FF40025 		mov	r5, #524288
 920              	.LBE290:
 921              	.LBE289:
 922              	.LBE275:
 923              	.LBE274:
 736:../asf/sam/drivers/usart/usart.c **** 	/* Check whether the input values are legal. */
 924              		.loc 1 736 0
 925 001a 204C     		ldr	r4, .L61+4
 926              	.LBB298:
 927              	.LBB296:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 928              		.loc 1 256 0
 929 001c 5860     		str	r0, [r3, #4]
 930              	.LBE296:
 931              	.LBE298:
 736:../asf/sam/drivers/usart/usart.c **** 	/* Check whether the input values are legal. */
 932              		.loc 1 736 0
 933 001e 2060     		str	r0, [r4]
 934              	.LBB299:
 935              	.LBB297:
 257:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_TTGR = 0;
 936              		.loc 1 257 0
 937 0020 5862     		str	r0, [r3, #36]
 258:../asf/sam/drivers/usart/usart.c **** 
 938              		.loc 1 258 0
 939 0022 9862     		str	r0, [r3, #40]
 940              	.LVL75:
 941              	.LBB292:
 942              	.LBB281:
1417:../asf/sam/drivers/usart/usart.c **** }
 943              		.loc 1 1417 0
 944 0024 C3F800E0 		str	lr, [r3]
 945              	.LVL76:
 946              	.LBE281:
 947              	.LBE292:
 948              	.LBB293:
 949              	.LBB285:
1459:../asf/sam/drivers/usart/usart.c **** }
 950              		.loc 1 1459 0
 951 0028 1F60     		str	r7, [r3]
 952              	.LVL77:
 953              	.LBE285:
 954              	.LBE293:
 955              	.LBB294:
 956              	.LBB288:
1526:../asf/sam/drivers/usart/usart.c **** }
 957              		.loc 1 1526 0
 958 002a 1E60     		str	r6, [r3]
ARM GAS  /tmp/ccJYkMjP.s 			page 54


 959              	.LVL78:
 960              	.LBE288:
 961              	.LBE294:
 962              	.LBB295:
 963              	.LBB291:
1636:../asf/sam/drivers/usart/usart.c **** }
 964              		.loc 1 1636 0
 965 002c 1D60     		str	r5, [r3]
 966              	.LVL79:
 967              	.LBE291:
 968              	.LBE295:
 969              	.LBE297:
 970              	.LBE299:
 738:../asf/sam/drivers/usart/usart.c **** 			usart_set_spi_master_baudrate(p_usart, p_usart_opt->baudrate,
 971              		.loc 1 738 0
 972 002e 11B3     		cbz	r1, .L59
 738:../asf/sam/drivers/usart/usart.c **** 			usart_set_spi_master_baudrate(p_usart, p_usart_opt->baudrate,
 973              		.loc 1 738 0 is_stmt 0 discriminator 1
 974 0030 8868     		ldr	r0, [r1, #8]
 975 0032 0328     		cmp	r0, #3
 976 0034 1FD8     		bhi	.L59
 739:../asf/sam/drivers/usart/usart.c **** 			ul_mck)) {
 977              		.loc 1 739 0 is_stmt 1 discriminator 2
 978 0036 0D68     		ldr	r5, [r1]
 979              	.LVL80:
 980              	.LBB300:
 981              	.LBB301:
 224:../asf/sam/drivers/usart/usart.c **** 		return 1;
 982              		.loc 1 224 0 discriminator 2
 983 0038 4FF6FB76 		movw	r6, #65531
 222:../asf/sam/drivers/usart/usart.c **** 
 984              		.loc 1 222 0 discriminator 2
 985 003c 02EB5502 		add	r2, r2, r5, lsr #1
 986              	.LVL81:
 987 0040 B2FBF5F2 		udiv	r2, r2, r5
 988              	.LVL82:
 224:../asf/sam/drivers/usart/usart.c **** 		return 1;
 989              		.loc 1 224 0 discriminator 2
 990 0044 151F     		subs	r5, r2, #4
 991              	.LVL83:
 992 0046 B542     		cmp	r5, r6
 993 0048 15D8     		bhi	.L59
 994              	.LBE301:
 995              	.LBE300:
 748:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->channel_mode;
 996              		.loc 1 748 0
 997 004a 4D68     		ldr	r5, [r1, #4]
 751:../asf/sam/drivers/usart/usart.c **** 	case SPI_MODE_0:
 998              		.loc 1 751 0
 999 004c 0228     		cmp	r0, #2
 748:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->channel_mode;
 1000              		.loc 1 748 0
 1001 004e C968     		ldr	r1, [r1, #12]
 1002              	.LVL84:
 1003              	.LBB303:
 1004              	.LBB302:
 228:../asf/sam/drivers/usart/usart.c **** 
ARM GAS  /tmp/ccJYkMjP.s 			page 55


 1005              		.loc 1 228 0
 1006 0050 1A62     		str	r2, [r3, #32]
 1007              	.LVL85:
 1008              	.LBE302:
 1009              	.LBE303:
 748:../asf/sam/drivers/usart/usart.c **** 			p_usart_opt->channel_mode;
 1010              		.loc 1 748 0
 1011 0052 45EA0105 		orr	r5, r5, r1
 1012 0056 1249     		ldr	r1, .L61+8
 751:../asf/sam/drivers/usart/usart.c **** 	case SPI_MODE_0:
 1013              		.loc 1 751 0
 1014 0058 15D0     		beq	.L53
 1015 005a 0328     		cmp	r0, #3
 1016 005c 0DD0     		beq	.L54
 1017 005e 0128     		cmp	r0, #1
 1018 0060 15D0     		beq	.L55
 754:../asf/sam/drivers/usart/usart.c **** 		break;
 1019              		.loc 1 754 0
 1020 0062 25F48035 		bic	r5, r5, #65536
 1021 0066 0F4A     		ldr	r2, .L61+12
 1022 0068 2A43     		orrs	r2, r2, r5
 1023 006a 2260     		str	r2, [r4]
 1024              	.L56:
 776:../asf/sam/drivers/usart/usart.c **** 
 1025              		.loc 1 776 0
 1026 006c 5968     		ldr	r1, [r3, #4]
 778:../asf/sam/drivers/usart/usart.c **** }
 1027              		.loc 1 778 0
 1028 006e 0020     		movs	r0, #0
 776:../asf/sam/drivers/usart/usart.c **** 
 1029              		.loc 1 776 0
 1030 0070 0A43     		orrs	r2, r2, r1
 1031 0072 5A60     		str	r2, [r3, #4]
 778:../asf/sam/drivers/usart/usart.c **** }
 1032              		.loc 1 778 0
 1033 0074 F0BD     		pop	{r4, r5, r6, r7, pc}
 1034              	.LVL86:
 1035              	.L59:
 741:../asf/sam/drivers/usart/usart.c **** 	}
 1036              		.loc 1 741 0
 1037 0076 0120     		movs	r0, #1
 779:../asf/sam/drivers/usart/usart.c **** 
 1038              		.loc 1 779 0
 1039 0078 F0BD     		pop	{r4, r5, r6, r7, pc}
 1040              	.LVL87:
 1041              	.L54:
 769:../asf/sam/drivers/usart/usart.c **** 		break;
 1042              		.loc 1 769 0
 1043 007a 25F48075 		bic	r5, r5, #256
 1044 007e 0A4A     		ldr	r2, .L61+16
 1045 0080 2A43     		orrs	r2, r2, r5
 1046 0082 2260     		str	r2, [r4]
 770:../asf/sam/drivers/usart/usart.c **** 
 1047              		.loc 1 770 0
 1048 0084 F2E7     		b	.L56
 1049              	.L53:
 764:../asf/sam/drivers/usart/usart.c **** 		break;
ARM GAS  /tmp/ccJYkMjP.s 			page 56


 1050              		.loc 1 764 0
 1051 0086 094A     		ldr	r2, .L61+20
 1052 0088 2A43     		orrs	r2, r2, r5
 1053 008a 2260     		str	r2, [r4]
 765:../asf/sam/drivers/usart/usart.c **** 
 1054              		.loc 1 765 0
 1055 008c EEE7     		b	.L56
 1056              	.L55:
 759:../asf/sam/drivers/usart/usart.c **** 		break;
 1057              		.loc 1 759 0
 1058 008e 084A     		ldr	r2, .L61+24
 1059 0090 2A40     		ands	r2, r2, r5
 1060 0092 0A43     		orrs	r2, r2, r1
 1061 0094 2260     		str	r2, [r4]
 760:../asf/sam/drivers/usart/usart.c **** 
 1062              		.loc 1 760 0
 1063 0096 E9E7     		b	.L56
 1064              	.L62:
 1065              		.align	2
 1066              	.L61:
 1067 0098 00415355 		.word	1431519488
 1068 009c 00000000 		.word	.LANCHOR1
 1069 00a0 0E000400 		.word	262158
 1070 00a4 0E010400 		.word	262414
 1071 00a8 0E000500 		.word	327694
 1072 00ac 0E010500 		.word	327950
 1073 00b0 FFFEFEFF 		.word	-65793
 1074              		.cfi_endproc
 1075              	.LFE153:
 1076              		.size	usart_init_spi_master, .-usart_init_spi_master
 1077              		.section	.text.usart_init_spi_slave,"ax",%progbits
 1078              		.align	1
 1079              		.p2align 2,,3
 1080              		.global	usart_init_spi_slave
 1081              		.syntax unified
 1082              		.thumb
 1083              		.thumb_func
 1084              		.fpu fpv5-d16
 1085              		.type	usart_init_spi_slave, %function
 1086              	usart_init_spi_slave:
 1087              	.LFB154:
 794:../asf/sam/drivers/usart/usart.c **** 	static uint32_t ul_reg_val;
 1088              		.loc 1 794 0
 1089              		.cfi_startproc
 1090              		@ args = 0, pretend = 0, frame = 0
 1091              		@ frame_needed = 0, uses_anonymous_args = 0
 1092              		@ link register save eliminated.
 1093              	.LVL88:
 1094 0000 F0B4     		push	{r4, r5, r6, r7}
 1095              		.cfi_def_cfa_offset 16
 1096              		.cfi_offset 4, -16
 1097              		.cfi_offset 5, -12
 1098              		.cfi_offset 6, -8
 1099              		.cfi_offset 7, -4
 794:../asf/sam/drivers/usart/usart.c **** 	static uint32_t ul_reg_val;
 1100              		.loc 1 794 0
 1101 0002 0346     		mov	r3, r0
ARM GAS  /tmp/ccJYkMjP.s 			page 57


 1102              	.LVL89:
 1103              	.LBB304:
 1104              	.LBB305:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 1105              		.loc 1 256 0
 1106 0004 0022     		movs	r2, #0
 1107              	.LBB306:
 1108              	.LBB307:
1526:../asf/sam/drivers/usart/usart.c **** }
 1109              		.loc 1 1526 0
 1110 0006 4FF48074 		mov	r4, #256
 1111              	.LBE307:
 1112              	.LBE306:
 1113              	.LBB309:
 1114              	.LBB310:
1636:../asf/sam/drivers/usart/usart.c **** }
 1115              		.loc 1 1636 0
 1116 000a 4FF40020 		mov	r0, #524288
 1117              	.LVL90:
 1118              	.LBE310:
 1119              	.LBE309:
 1120              	.LBB312:
 1121              	.LBB313:
 1122              		.loc 1 1919 0
 1123 000e 214F     		ldr	r7, .L73
 1124              	.LBE313:
 1125              	.LBE312:
 1126              	.LBB315:
 1127              	.LBB316:
1417:../asf/sam/drivers/usart/usart.c **** }
 1128              		.loc 1 1417 0
 1129 0010 8826     		movs	r6, #136
 1130              	.LBE316:
 1131              	.LBE315:
 1132              	.LBB318:
 1133              	.LBB319:
1459:../asf/sam/drivers/usart/usart.c **** }
 1134              		.loc 1 1459 0
 1135 0012 2425     		movs	r5, #36
 1136              	.LBE319:
 1137              	.LBE318:
 1138              	.LBB321:
 1139              	.LBB314:
 1140              		.loc 1 1919 0
 1141 0014 C3F8E470 		str	r7, [r3, #228]
 1142              	.LVL91:
 1143              	.LBE314:
 1144              	.LBE321:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 1145              		.loc 1 256 0
 1146 0018 5A60     		str	r2, [r3, #4]
 257:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_TTGR = 0;
 1147              		.loc 1 257 0
 1148 001a 5A62     		str	r2, [r3, #36]
 258:../asf/sam/drivers/usart/usart.c **** 
 1149              		.loc 1 258 0
 1150 001c 9A62     		str	r2, [r3, #40]
ARM GAS  /tmp/ccJYkMjP.s 			page 58


 1151              	.LVL92:
 1152              	.LBB322:
 1153              	.LBB317:
1417:../asf/sam/drivers/usart/usart.c **** }
 1154              		.loc 1 1417 0
 1155 001e 1E60     		str	r6, [r3]
 1156              	.LVL93:
 1157              	.LBE317:
 1158              	.LBE322:
 1159              	.LBB323:
 1160              	.LBB320:
1459:../asf/sam/drivers/usart/usart.c **** }
 1161              		.loc 1 1459 0
 1162 0020 1D60     		str	r5, [r3]
 1163              	.LVL94:
 1164              	.LBE320:
 1165              	.LBE323:
 1166              	.LBB324:
 1167              	.LBB308:
1526:../asf/sam/drivers/usart/usart.c **** }
 1168              		.loc 1 1526 0
 1169 0022 1C60     		str	r4, [r3]
 1170              	.LVL95:
 1171              	.LBE308:
 1172              	.LBE324:
 1173              	.LBB325:
 1174              	.LBB311:
1636:../asf/sam/drivers/usart/usart.c **** }
 1175              		.loc 1 1636 0
 1176 0024 1860     		str	r0, [r3]
 1177              	.LVL96:
 1178              	.LBE311:
 1179              	.LBE325:
 1180              	.LBE305:
 1181              	.LBE304:
 1182              	.LBB326:
 1183              	.LBB327:
 241:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR |= US_MR_USCLKS_SCK;
 1184              		.loc 1 241 0
 1185 0026 5868     		ldr	r0, [r3, #4]
 1186              	.LBE327:
 1187              	.LBE326:
 800:../asf/sam/drivers/usart/usart.c **** 	usart_set_spi_slave_baudrate(p_usart);
 1188              		.loc 1 800 0
 1189 0028 1B4C     		ldr	r4, .L73+4
 1190              	.LBB330:
 1191              	.LBB328:
 241:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR |= US_MR_USCLKS_SCK;
 1192              		.loc 1 241 0
 1193 002a 20F03000 		bic	r0, r0, #48
 1194              	.LBE328:
 1195              	.LBE330:
 800:../asf/sam/drivers/usart/usart.c **** 	usart_set_spi_slave_baudrate(p_usart);
 1196              		.loc 1 800 0
 1197 002e 2260     		str	r2, [r4]
 1198              	.LVL97:
 1199              	.LBB331:
ARM GAS  /tmp/ccJYkMjP.s 			page 59


 1200              	.LBB329:
 241:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_MR |= US_MR_USCLKS_SCK;
 1201              		.loc 1 241 0
 1202 0030 5860     		str	r0, [r3, #4]
 242:../asf/sam/drivers/usart/usart.c **** }
 1203              		.loc 1 242 0
 1204 0032 5A68     		ldr	r2, [r3, #4]
 1205 0034 42F03002 		orr	r2, r2, #48
 1206 0038 5A60     		str	r2, [r3, #4]
 1207              	.LVL98:
 1208              	.LBE329:
 1209              	.LBE331:
 804:../asf/sam/drivers/usart/usart.c **** 		return 1;
 1210              		.loc 1 804 0
 1211 003a C1B1     		cbz	r1, .L71
 804:../asf/sam/drivers/usart/usart.c **** 		return 1;
 1212              		.loc 1 804 0 is_stmt 0 discriminator 1
 1213 003c 8A68     		ldr	r2, [r1, #8]
 1214 003e 032A     		cmp	r2, #3
 1215 0040 15D8     		bhi	.L71
 812:../asf/sam/drivers/usart/usart.c **** 
 1216              		.loc 1 812 0 is_stmt 1
 1217 0042 4868     		ldr	r0, [r1, #4]
 814:../asf/sam/drivers/usart/usart.c **** 	case SPI_MODE_0:
 1218              		.loc 1 814 0
 1219 0044 022A     		cmp	r2, #2
 812:../asf/sam/drivers/usart/usart.c **** 
 1220              		.loc 1 812 0
 1221 0046 C968     		ldr	r1, [r1, #12]
 1222              	.LVL99:
 1223 0048 40EA0100 		orr	r0, r0, r1
 814:../asf/sam/drivers/usart/usart.c **** 	case SPI_MODE_0:
 1224              		.loc 1 814 0
 1225 004c 12D0     		beq	.L66
 1226 004e 032A     		cmp	r2, #3
 1227 0050 1AD0     		beq	.L67
 1228 0052 012A     		cmp	r2, #1
 1229 0054 12D0     		beq	.L68
 817:../asf/sam/drivers/usart/usart.c **** 		break;
 1230              		.loc 1 817 0
 1231 0056 20F48030 		bic	r0, r0, #65536
 1232 005a 40F20F12 		movw	r2, #271
 1233 005e 0243     		orrs	r2, r2, r0
 1234 0060 2260     		str	r2, [r4]
 1235              	.L69:
 839:../asf/sam/drivers/usart/usart.c **** 
 1236              		.loc 1 839 0
 1237 0062 5968     		ldr	r1, [r3, #4]
 841:../asf/sam/drivers/usart/usart.c **** }
 1238              		.loc 1 841 0
 1239 0064 0020     		movs	r0, #0
 839:../asf/sam/drivers/usart/usart.c **** 
 1240              		.loc 1 839 0
 1241 0066 0A43     		orrs	r2, r2, r1
 842:../asf/sam/drivers/usart/usart.c **** 
 1242              		.loc 1 842 0
 1243 0068 F0BC     		pop	{r4, r5, r6, r7}
ARM GAS  /tmp/ccJYkMjP.s 			page 60


 1244              		.cfi_remember_state
 1245              		.cfi_restore 4
 1246              		.cfi_restore 5
 1247              		.cfi_restore 6
 1248              		.cfi_restore 7
 1249              		.cfi_def_cfa_offset 0
 839:../asf/sam/drivers/usart/usart.c **** 
 1250              		.loc 1 839 0
 1251 006a 5A60     		str	r2, [r3, #4]
 842:../asf/sam/drivers/usart/usart.c **** 
 1252              		.loc 1 842 0
 1253 006c 7047     		bx	lr
 1254              	.LVL100:
 1255              	.L71:
 1256              		.cfi_restore_state
 805:../asf/sam/drivers/usart/usart.c **** 	}
 1257              		.loc 1 805 0
 1258 006e 0120     		movs	r0, #1
 842:../asf/sam/drivers/usart/usart.c **** 
 1259              		.loc 1 842 0
 1260 0070 F0BC     		pop	{r4, r5, r6, r7}
 1261              		.cfi_remember_state
 1262              		.cfi_restore 7
 1263              		.cfi_restore 6
 1264              		.cfi_restore 5
 1265              		.cfi_restore 4
 1266              		.cfi_def_cfa_offset 0
 1267 0072 7047     		bx	lr
 1268              	.LVL101:
 1269              	.L66:
 1270              		.cfi_restore_state
 827:../asf/sam/drivers/usart/usart.c **** 		break;
 1271              		.loc 1 827 0
 1272 0074 094A     		ldr	r2, .L73+8
 1273 0076 0243     		orrs	r2, r2, r0
 1274 0078 2260     		str	r2, [r4]
 828:../asf/sam/drivers/usart/usart.c **** 
 1275              		.loc 1 828 0
 1276 007a F2E7     		b	.L69
 1277              	.L68:
 822:../asf/sam/drivers/usart/usart.c **** 		break;
 1278              		.loc 1 822 0
 1279 007c 084A     		ldr	r2, .L73+12
 1280 007e 0240     		ands	r2, r2, r0
 1281 0080 42F00F02 		orr	r2, r2, #15
 1282 0084 2260     		str	r2, [r4]
 823:../asf/sam/drivers/usart/usart.c **** 
 1283              		.loc 1 823 0
 1284 0086 ECE7     		b	.L69
 1285              	.L67:
 832:../asf/sam/drivers/usart/usart.c **** 		break;
 1286              		.loc 1 832 0
 1287 0088 20F48070 		bic	r0, r0, #256
 1288 008c 054A     		ldr	r2, .L73+16
 1289 008e 0243     		orrs	r2, r2, r0
 1290 0090 2260     		str	r2, [r4]
 833:../asf/sam/drivers/usart/usart.c **** 
ARM GAS  /tmp/ccJYkMjP.s 			page 61


 1291              		.loc 1 833 0
 1292 0092 E6E7     		b	.L69
 1293              	.L74:
 1294              		.align	2
 1295              	.L73:
 1296 0094 00415355 		.word	1431519488
 1297 0098 00000000 		.word	.LANCHOR2
 1298 009c 0F010100 		.word	65807
 1299 00a0 FFFEFEFF 		.word	-65793
 1300 00a4 0F000100 		.word	65551
 1301              		.cfi_endproc
 1302              	.LFE154:
 1303              		.size	usart_init_spi_slave, .-usart_init_spi_slave
 1304              		.section	.text.usart_init_lin_master,"ax",%progbits
 1305              		.align	1
 1306              		.p2align 2,,3
 1307              		.global	usart_init_lin_master
 1308              		.syntax unified
 1309              		.thumb
 1310              		.thumb_func
 1311              		.fpu fpv5-d16
 1312              		.type	usart_init_lin_master, %function
 1313              	usart_init_lin_master:
 1314              	.LFB155:
 860:../asf/sam/drivers/usart/usart.c **** 	/* Reset the USART and shut down TX and RX. */
 1315              		.loc 1 860 0
 1316              		.cfi_startproc
 1317              		@ args = 0, pretend = 0, frame = 0
 1318              		@ frame_needed = 0, uses_anonymous_args = 0
 1319              	.LVL102:
 1320 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1321              		.cfi_def_cfa_offset 24
 1322              		.cfi_offset 3, -24
 1323              		.cfi_offset 4, -20
 1324              		.cfi_offset 5, -16
 1325              		.cfi_offset 6, -12
 1326              		.cfi_offset 7, -8
 1327              		.cfi_offset 14, -4
 1328              	.LBB332:
 1329              	.LBB333:
 1330              	.LBB334:
 1331              	.LBB335:
 1332              		.loc 1 1919 0
 1333 0002 124D     		ldr	r5, .L79
 1334              	.LBE335:
 1335              	.LBE334:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 1336              		.loc 1 256 0
 1337 0004 0023     		movs	r3, #0
 1338              	.LBB337:
 1339              	.LBB338:
1417:../asf/sam/drivers/usart/usart.c **** }
 1340              		.loc 1 1417 0
 1341 0006 4FF0880E 		mov	lr, #136
 1342              	.LBE338:
 1343              	.LBE337:
 1344              	.LBB340:
ARM GAS  /tmp/ccJYkMjP.s 			page 62


 1345              	.LBB341:
1459:../asf/sam/drivers/usart/usart.c **** }
 1346              		.loc 1 1459 0
 1347 000a 2427     		movs	r7, #36
 1348              	.LBE341:
 1349              	.LBE340:
 1350              	.LBB343:
 1351              	.LBB336:
 1352              		.loc 1 1919 0
 1353 000c C0F8E450 		str	r5, [r0, #228]
 1354              	.LBE336:
 1355              	.LBE343:
 1356              	.LBB344:
 1357              	.LBB345:
1526:../asf/sam/drivers/usart/usart.c **** }
 1358              		.loc 1 1526 0
 1359 0010 4FF48076 		mov	r6, #256
 1360              	.LBE345:
 1361              	.LBE344:
 1362              	.LBB347:
 1363              	.LBB348:
1636:../asf/sam/drivers/usart/usart.c **** }
 1364              		.loc 1 1636 0
 1365 0014 4FF40025 		mov	r5, #524288
 1366              	.LBE348:
 1367              	.LBE347:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 1368              		.loc 1 256 0
 1369 0018 4360     		str	r3, [r0, #4]
 257:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_TTGR = 0;
 1370              		.loc 1 257 0
 1371 001a 4362     		str	r3, [r0, #36]
 1372              	.LBE333:
 1373              	.LBE332:
 860:../asf/sam/drivers/usart/usart.c **** 	/* Reset the USART and shut down TX and RX. */
 1374              		.loc 1 860 0
 1375 001c 0446     		mov	r4, r0
 1376              	.LVL103:
 1377              	.LBB355:
 1378              	.LBB354:
 258:../asf/sam/drivers/usart/usart.c **** 
 1379              		.loc 1 258 0
 1380 001e 8362     		str	r3, [r0, #40]
 1381              	.LVL104:
 1382              	.LBB350:
 1383              	.LBB339:
1417:../asf/sam/drivers/usart/usart.c **** }
 1384              		.loc 1 1417 0
 1385 0020 C0F800E0 		str	lr, [r0]
 1386              	.LVL105:
 1387              	.LBE339:
 1388              	.LBE350:
 1389              	.LBB351:
 1390              	.LBB342:
1459:../asf/sam/drivers/usart/usart.c **** }
 1391              		.loc 1 1459 0
 1392 0024 0760     		str	r7, [r0]
ARM GAS  /tmp/ccJYkMjP.s 			page 63


 1393              	.LVL106:
 1394              	.LBE342:
 1395              	.LBE351:
 1396              	.LBB352:
 1397              	.LBB346:
1526:../asf/sam/drivers/usart/usart.c **** }
 1398              		.loc 1 1526 0
 1399 0026 0660     		str	r6, [r0]
 1400              	.LVL107:
 1401              	.LBE346:
 1402              	.LBE352:
 1403              	.LBB353:
 1404              	.LBB349:
1636:../asf/sam/drivers/usart/usart.c **** }
 1405              		.loc 1 1636 0
 1406 0028 0560     		str	r5, [r0]
 1407              	.LVL108:
 1408              	.LBE349:
 1409              	.LBE353:
 1410              	.LBE354:
 1411              	.LBE355:
 865:../asf/sam/drivers/usart/usart.c **** 		return 1;
 1412              		.loc 1 865 0
 1413 002a FFF7FEFF 		bl	usart_set_async_baudrate
 1414              	.LVL109:
 1415 002e 50B9     		cbnz	r0, .L77
 870:../asf/sam/drivers/usart/usart.c **** 			US_MR_USART_MODE_LIN_MASTER;
 1416              		.loc 1 870 0
 1417 0030 6368     		ldr	r3, [r4, #4]
 1418              	.LBB356:
 1419              	.LBB357:
1438:../asf/sam/drivers/usart/usart.c **** }
 1420              		.loc 1 1438 0
 1421 0032 1021     		movs	r1, #16
 1422              	.LBE357:
 1423              	.LBE356:
 1424              	.LBB359:
 1425              	.LBB360:
1396:../asf/sam/drivers/usart/usart.c **** }
 1426              		.loc 1 1396 0
 1427 0034 4022     		movs	r2, #64
 1428              	.LBE360:
 1429              	.LBE359:
 870:../asf/sam/drivers/usart/usart.c **** 			US_MR_USART_MODE_LIN_MASTER;
 1430              		.loc 1 870 0
 1431 0036 23F00F03 		bic	r3, r3, #15
 1432 003a 43F00A03 		orr	r3, r3, #10
 1433 003e 6360     		str	r3, [r4, #4]
 1434              	.LVL110:
 1435              	.LBB362:
 1436              	.LBB358:
1438:../asf/sam/drivers/usart/usart.c **** }
 1437              		.loc 1 1438 0
 1438 0040 2160     		str	r1, [r4]
 1439              	.LVL111:
 1440              	.LBE358:
 1441              	.LBE362:
ARM GAS  /tmp/ccJYkMjP.s 			page 64


 1442              	.LBB363:
 1443              	.LBB361:
1396:../asf/sam/drivers/usart/usart.c **** }
 1444              		.loc 1 1396 0
 1445 0042 2260     		str	r2, [r4]
 1446              	.LVL112:
 1447              	.LBE361:
 1448              	.LBE363:
 876:../asf/sam/drivers/usart/usart.c **** }
 1449              		.loc 1 876 0
 1450 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1451              	.LVL113:
 1452              	.L77:
 866:../asf/sam/drivers/usart/usart.c **** 	}
 1453              		.loc 1 866 0
 1454 0046 0120     		movs	r0, #1
 877:../asf/sam/drivers/usart/usart.c **** 
 1455              		.loc 1 877 0
 1456 0048 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1457              	.LVL114:
 1458              	.L80:
 1459 004a 00BF     		.align	2
 1460              	.L79:
 1461 004c 00415355 		.word	1431519488
 1462              		.cfi_endproc
 1463              	.LFE155:
 1464              		.size	usart_init_lin_master, .-usart_init_lin_master
 1465              		.section	.text.usart_init_lin_slave,"ax",%progbits
 1466              		.align	1
 1467              		.p2align 2,,3
 1468              		.global	usart_init_lin_slave
 1469              		.syntax unified
 1470              		.thumb
 1471              		.thumb_func
 1472              		.fpu fpv5-d16
 1473              		.type	usart_init_lin_slave, %function
 1474              	usart_init_lin_slave:
 1475              	.LFB156:
 893:../asf/sam/drivers/usart/usart.c **** 	/* Reset the USART and shut down TX and RX. */
 1476              		.loc 1 893 0
 1477              		.cfi_startproc
 1478              		@ args = 0, pretend = 0, frame = 0
 1479              		@ frame_needed = 0, uses_anonymous_args = 0
 1480              	.LVL115:
 1481 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1482              		.cfi_def_cfa_offset 24
 1483              		.cfi_offset 3, -24
 1484              		.cfi_offset 4, -20
 1485              		.cfi_offset 5, -16
 1486              		.cfi_offset 6, -12
 1487              		.cfi_offset 7, -8
 1488              		.cfi_offset 14, -4
 1489              	.LBB364:
 1490              	.LBB365:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 1491              		.loc 1 256 0
 1492 0002 0024     		movs	r4, #0
ARM GAS  /tmp/ccJYkMjP.s 			page 65


 1493              	.LBB366:
 1494              	.LBB367:
 1495              		.loc 1 1919 0
 1496 0004 114D     		ldr	r5, .L83
 1497              	.LBE367:
 1498              	.LBE366:
 1499              	.LBB369:
 1500              	.LBB370:
1417:../asf/sam/drivers/usart/usart.c **** }
 1501              		.loc 1 1417 0
 1502 0006 4FF0880C 		mov	ip, #136
 1503              	.LBE370:
 1504              	.LBE369:
 1505              	.LBB372:
 1506              	.LBB373:
1459:../asf/sam/drivers/usart/usart.c **** }
 1507              		.loc 1 1459 0
 1508 000a 4FF0240E 		mov	lr, #36
 1509              	.LBE373:
 1510              	.LBE372:
 1511              	.LBB375:
 1512              	.LBB368:
 1513              		.loc 1 1919 0
 1514 000e C0F8E450 		str	r5, [r0, #228]
 1515              	.LVL116:
 1516              	.LBE368:
 1517              	.LBE375:
 1518              	.LBB376:
 1519              	.LBB377:
1526:../asf/sam/drivers/usart/usart.c **** }
 1520              		.loc 1 1526 0
 1521 0012 4FF48077 		mov	r7, #256
 1522              	.LBE377:
 1523              	.LBE376:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 1524              		.loc 1 256 0
 1525 0016 4460     		str	r4, [r0, #4]
 1526              	.LBB379:
 1527              	.LBB380:
1636:../asf/sam/drivers/usart/usart.c **** }
 1528              		.loc 1 1636 0
 1529 0018 4FF40026 		mov	r6, #524288
 1530              	.LBE380:
 1531              	.LBE379:
 257:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_TTGR = 0;
 1532              		.loc 1 257 0
 1533 001c 4462     		str	r4, [r0, #36]
 1534              	.LBE365:
 1535              	.LBE364:
 1536              	.LBB388:
 1537              	.LBB389:
1438:../asf/sam/drivers/usart/usart.c **** }
 1538              		.loc 1 1438 0
 1539 001e 1025     		movs	r5, #16
 1540              	.LBE389:
 1541              	.LBE388:
 1542              	.LBB391:
ARM GAS  /tmp/ccJYkMjP.s 			page 66


 1543              	.LBB386:
 258:../asf/sam/drivers/usart/usart.c **** 
 1544              		.loc 1 258 0
 1545 0020 8462     		str	r4, [r0, #40]
 1546              	.LVL117:
 1547              	.LBE386:
 1548              	.LBE391:
 1549              	.LBB392:
 1550              	.LBB393:
1396:../asf/sam/drivers/usart/usart.c **** }
 1551              		.loc 1 1396 0
 1552 0022 4024     		movs	r4, #64
 1553              	.LBE393:
 1554              	.LBE392:
 1555              	.LBB395:
 1556              	.LBB387:
 1557              	.LBB382:
 1558              	.LBB371:
1417:../asf/sam/drivers/usart/usart.c **** }
 1559              		.loc 1 1417 0
 1560 0024 C0F800C0 		str	ip, [r0]
 1561              	.LVL118:
 1562              	.LBE371:
 1563              	.LBE382:
 1564              	.LBB383:
 1565              	.LBB374:
1459:../asf/sam/drivers/usart/usart.c **** }
 1566              		.loc 1 1459 0
 1567 0028 C0F800E0 		str	lr, [r0]
 1568              	.LVL119:
 1569              	.LBE374:
 1570              	.LBE383:
 1571              	.LBB384:
 1572              	.LBB378:
1526:../asf/sam/drivers/usart/usart.c **** }
 1573              		.loc 1 1526 0
 1574 002c 0760     		str	r7, [r0]
 1575              	.LVL120:
 1576              	.LBE378:
 1577              	.LBE384:
 1578              	.LBB385:
 1579              	.LBB381:
1636:../asf/sam/drivers/usart/usart.c **** }
 1580              		.loc 1 1636 0
 1581 002e 0660     		str	r6, [r0]
 1582              	.LVL121:
 1583              	.LBE381:
 1584              	.LBE385:
 1585              	.LBE387:
 1586              	.LBE395:
 1587              	.LBB396:
 1588              	.LBB390:
1438:../asf/sam/drivers/usart/usart.c **** }
 1589              		.loc 1 1438 0
 1590 0030 0560     		str	r5, [r0]
 1591              	.LVL122:
 1592              	.LBE390:
ARM GAS  /tmp/ccJYkMjP.s 			page 67


 1593              	.LBE396:
 1594              	.LBB397:
 1595              	.LBB394:
1396:../asf/sam/drivers/usart/usart.c **** }
 1596              		.loc 1 1396 0
 1597 0032 0460     		str	r4, [r0]
 1598              	.LVL123:
 1599              	.LBE394:
 1600              	.LBE397:
 901:../asf/sam/drivers/usart/usart.c **** 			US_MR_USART_MODE_LIN_SLAVE;
 1601              		.loc 1 901 0
 1602 0034 4468     		ldr	r4, [r0, #4]
 1603 0036 24F00F04 		bic	r4, r4, #15
 1604 003a 44F00B04 		orr	r4, r4, #11
 1605 003e 4460     		str	r4, [r0, #4]
 905:../asf/sam/drivers/usart/usart.c **** 		return 1;
 1606              		.loc 1 905 0
 1607 0040 FFF7FEFF 		bl	usart_set_async_baudrate
 1608              	.LVL124:
 910:../asf/sam/drivers/usart/usart.c **** 
 1609              		.loc 1 910 0
 1610 0044 0030     		adds	r0, r0, #0
 1611 0046 18BF     		it	ne
 1612 0048 0120     		movne	r0, #1
 1613 004a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1614              	.L84:
 1615              		.align	2
 1616              	.L83:
 1617 004c 00415355 		.word	1431519488
 1618              		.cfi_endproc
 1619              	.LFE156:
 1620              		.size	usart_init_lin_slave, .-usart_init_lin_slave
 1621              		.section	.text.usart_lin_abort_tx,"ax",%progbits
 1622              		.align	1
 1623              		.p2align 2,,3
 1624              		.global	usart_lin_abort_tx
 1625              		.syntax unified
 1626              		.thumb
 1627              		.thumb_func
 1628              		.fpu fpv5-d16
 1629              		.type	usart_lin_abort_tx, %function
 1630              	usart_lin_abort_tx:
 1631              	.LFB157:
 918:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_LINABT;
 1632              		.loc 1 918 0
 1633              		.cfi_startproc
 1634              		@ args = 0, pretend = 0, frame = 0
 1635              		@ frame_needed = 0, uses_anonymous_args = 0
 1636              		@ link register save eliminated.
 1637              	.LVL125:
 919:../asf/sam/drivers/usart/usart.c **** }
 1638              		.loc 1 919 0
 1639 0000 4FF48013 		mov	r3, #1048576
 1640 0004 0360     		str	r3, [r0]
 1641 0006 7047     		bx	lr
 1642              		.cfi_endproc
 1643              	.LFE157:
ARM GAS  /tmp/ccJYkMjP.s 			page 68


 1644              		.size	usart_lin_abort_tx, .-usart_lin_abort_tx
 1645              		.section	.text.usart_lin_send_wakeup_signal,"ax",%progbits
 1646              		.align	1
 1647              		.p2align 2,,3
 1648              		.global	usart_lin_send_wakeup_signal
 1649              		.syntax unified
 1650              		.thumb
 1651              		.thumb_func
 1652              		.fpu fpv5-d16
 1653              		.type	usart_lin_send_wakeup_signal, %function
 1654              	usart_lin_send_wakeup_signal:
 1655              	.LFB158:
 928:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_LINWKUP;
 1656              		.loc 1 928 0
 1657              		.cfi_startproc
 1658              		@ args = 0, pretend = 0, frame = 0
 1659              		@ frame_needed = 0, uses_anonymous_args = 0
 1660              		@ link register save eliminated.
 1661              	.LVL126:
 929:../asf/sam/drivers/usart/usart.c **** }
 1662              		.loc 1 929 0
 1663 0000 4FF40013 		mov	r3, #2097152
 1664 0004 0360     		str	r3, [r0]
 1665 0006 7047     		bx	lr
 1666              		.cfi_endproc
 1667              	.LFE158:
 1668              		.size	usart_lin_send_wakeup_signal, .-usart_lin_send_wakeup_signal
 1669              		.section	.text.usart_lin_set_node_action,"ax",%progbits
 1670              		.align	1
 1671              		.p2align 2,,3
 1672              		.global	usart_lin_set_node_action
 1673              		.syntax unified
 1674              		.thumb
 1675              		.thumb_func
 1676              		.fpu fpv5-d16
 1677              		.type	usart_lin_set_node_action, %function
 1678              	usart_lin_set_node_action:
 1679              	.LFB159:
 940:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR = (p_usart->US_LINMR & ~US_LINMR_NACT_Msk) |
 1680              		.loc 1 940 0
 1681              		.cfi_startproc
 1682              		@ args = 0, pretend = 0, frame = 0
 1683              		@ frame_needed = 0, uses_anonymous_args = 0
 1684              		@ link register save eliminated.
 1685              	.LVL127:
 941:../asf/sam/drivers/usart/usart.c **** 			(uc_action << US_LINMR_NACT_Pos);
 1686              		.loc 1 941 0
 1687 0000 436D     		ldr	r3, [r0, #84]
 1688 0002 23F00303 		bic	r3, r3, #3
 1689 0006 1943     		orrs	r1, r1, r3
 1690              	.LVL128:
 1691 0008 4165     		str	r1, [r0, #84]
 1692 000a 7047     		bx	lr
 1693              		.cfi_endproc
 1694              	.LFE159:
 1695              		.size	usart_lin_set_node_action, .-usart_lin_set_node_action
 1696              		.section	.text.usart_lin_disable_parity,"ax",%progbits
ARM GAS  /tmp/ccJYkMjP.s 			page 69


 1697              		.align	1
 1698              		.p2align 2,,3
 1699              		.global	usart_lin_disable_parity
 1700              		.syntax unified
 1701              		.thumb
 1702              		.thumb_func
 1703              		.fpu fpv5-d16
 1704              		.type	usart_lin_disable_parity, %function
 1705              	usart_lin_disable_parity:
 1706              	.LFB160:
 951:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR |= US_LINMR_PARDIS;
 1707              		.loc 1 951 0
 1708              		.cfi_startproc
 1709              		@ args = 0, pretend = 0, frame = 0
 1710              		@ frame_needed = 0, uses_anonymous_args = 0
 1711              		@ link register save eliminated.
 1712              	.LVL129:
 952:../asf/sam/drivers/usart/usart.c **** }
 1713              		.loc 1 952 0
 1714 0000 436D     		ldr	r3, [r0, #84]
 1715 0002 43F00403 		orr	r3, r3, #4
 1716 0006 4365     		str	r3, [r0, #84]
 1717 0008 7047     		bx	lr
 1718              		.cfi_endproc
 1719              	.LFE160:
 1720              		.size	usart_lin_disable_parity, .-usart_lin_disable_parity
 1721 000a 00BF     		.section	.text.usart_lin_enable_parity,"ax",%progbits
 1722              		.align	1
 1723              		.p2align 2,,3
 1724              		.global	usart_lin_enable_parity
 1725              		.syntax unified
 1726              		.thumb
 1727              		.thumb_func
 1728              		.fpu fpv5-d16
 1729              		.type	usart_lin_enable_parity, %function
 1730              	usart_lin_enable_parity:
 1731              	.LFB161:
 961:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR &= ~US_LINMR_PARDIS;
 1732              		.loc 1 961 0
 1733              		.cfi_startproc
 1734              		@ args = 0, pretend = 0, frame = 0
 1735              		@ frame_needed = 0, uses_anonymous_args = 0
 1736              		@ link register save eliminated.
 1737              	.LVL130:
 962:../asf/sam/drivers/usart/usart.c **** }
 1738              		.loc 1 962 0
 1739 0000 436D     		ldr	r3, [r0, #84]
 1740 0002 23F00403 		bic	r3, r3, #4
 1741 0006 4365     		str	r3, [r0, #84]
 1742 0008 7047     		bx	lr
 1743              		.cfi_endproc
 1744              	.LFE161:
 1745              		.size	usart_lin_enable_parity, .-usart_lin_enable_parity
 1746 000a 00BF     		.section	.text.usart_lin_disable_checksum,"ax",%progbits
 1747              		.align	1
 1748              		.p2align 2,,3
 1749              		.global	usart_lin_disable_checksum
ARM GAS  /tmp/ccJYkMjP.s 			page 70


 1750              		.syntax unified
 1751              		.thumb
 1752              		.thumb_func
 1753              		.fpu fpv5-d16
 1754              		.type	usart_lin_disable_checksum, %function
 1755              	usart_lin_disable_checksum:
 1756              	.LFB162:
 971:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR |= US_LINMR_CHKDIS;
 1757              		.loc 1 971 0
 1758              		.cfi_startproc
 1759              		@ args = 0, pretend = 0, frame = 0
 1760              		@ frame_needed = 0, uses_anonymous_args = 0
 1761              		@ link register save eliminated.
 1762              	.LVL131:
 972:../asf/sam/drivers/usart/usart.c **** }
 1763              		.loc 1 972 0
 1764 0000 436D     		ldr	r3, [r0, #84]
 1765 0002 43F00803 		orr	r3, r3, #8
 1766 0006 4365     		str	r3, [r0, #84]
 1767 0008 7047     		bx	lr
 1768              		.cfi_endproc
 1769              	.LFE162:
 1770              		.size	usart_lin_disable_checksum, .-usart_lin_disable_checksum
 1771 000a 00BF     		.section	.text.usart_lin_enable_checksum,"ax",%progbits
 1772              		.align	1
 1773              		.p2align 2,,3
 1774              		.global	usart_lin_enable_checksum
 1775              		.syntax unified
 1776              		.thumb
 1777              		.thumb_func
 1778              		.fpu fpv5-d16
 1779              		.type	usart_lin_enable_checksum, %function
 1780              	usart_lin_enable_checksum:
 1781              	.LFB163:
 981:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR &= ~US_LINMR_CHKDIS;
 1782              		.loc 1 981 0
 1783              		.cfi_startproc
 1784              		@ args = 0, pretend = 0, frame = 0
 1785              		@ frame_needed = 0, uses_anonymous_args = 0
 1786              		@ link register save eliminated.
 1787              	.LVL132:
 982:../asf/sam/drivers/usart/usart.c **** }
 1788              		.loc 1 982 0
 1789 0000 436D     		ldr	r3, [r0, #84]
 1790 0002 23F00803 		bic	r3, r3, #8
 1791 0006 4365     		str	r3, [r0, #84]
 1792 0008 7047     		bx	lr
 1793              		.cfi_endproc
 1794              	.LFE163:
 1795              		.size	usart_lin_enable_checksum, .-usart_lin_enable_checksum
 1796 000a 00BF     		.section	.text.usart_lin_set_checksum_type,"ax",%progbits
 1797              		.align	1
 1798              		.p2align 2,,3
 1799              		.global	usart_lin_set_checksum_type
 1800              		.syntax unified
 1801              		.thumb
 1802              		.thumb_func
ARM GAS  /tmp/ccJYkMjP.s 			page 71


 1803              		.fpu fpv5-d16
 1804              		.type	usart_lin_set_checksum_type, %function
 1805              	usart_lin_set_checksum_type:
 1806              	.LFB164:
 993:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR = (p_usart->US_LINMR & ~US_LINMR_CHKTYP) |
 1807              		.loc 1 993 0
 1808              		.cfi_startproc
 1809              		@ args = 0, pretend = 0, frame = 0
 1810              		@ frame_needed = 0, uses_anonymous_args = 0
 1811              		@ link register save eliminated.
 1812              	.LVL133:
 994:../asf/sam/drivers/usart/usart.c **** 			(uc_type << 4);
 1813              		.loc 1 994 0
 1814 0000 436D     		ldr	r3, [r0, #84]
 1815 0002 23F01003 		bic	r3, r3, #16
 1816 0006 43EA0111 		orr	r1, r3, r1, lsl #4
 1817              	.LVL134:
 1818 000a 4165     		str	r1, [r0, #84]
 1819 000c 7047     		bx	lr
 1820              		.cfi_endproc
 1821              	.LFE164:
 1822              		.size	usart_lin_set_checksum_type, .-usart_lin_set_checksum_type
 1823 000e 00BF     		.section	.text.usart_lin_set_data_len_mode,"ax",%progbits
 1824              		.align	1
 1825              		.p2align 2,,3
 1826              		.global	usart_lin_set_data_len_mode
 1827              		.syntax unified
 1828              		.thumb
 1829              		.thumb_func
 1830              		.fpu fpv5-d16
 1831              		.type	usart_lin_set_data_len_mode, %function
 1832              	usart_lin_set_data_len_mode:
 1833              	.LFB165:
1007:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR = (p_usart->US_LINMR & ~US_LINMR_DLM) |
 1834              		.loc 1 1007 0
 1835              		.cfi_startproc
 1836              		@ args = 0, pretend = 0, frame = 0
 1837              		@ frame_needed = 0, uses_anonymous_args = 0
 1838              		@ link register save eliminated.
 1839              	.LVL135:
1008:../asf/sam/drivers/usart/usart.c **** 			(uc_mode << 5);
 1840              		.loc 1 1008 0
 1841 0000 436D     		ldr	r3, [r0, #84]
 1842 0002 23F02003 		bic	r3, r3, #32
 1843 0006 43EA4111 		orr	r1, r3, r1, lsl #5
 1844              	.LVL136:
 1845 000a 4165     		str	r1, [r0, #84]
 1846 000c 7047     		bx	lr
 1847              		.cfi_endproc
 1848              	.LFE165:
 1849              		.size	usart_lin_set_data_len_mode, .-usart_lin_set_data_len_mode
 1850 000e 00BF     		.section	.text.usart_lin_disable_frame_slot,"ax",%progbits
 1851              		.align	1
 1852              		.p2align 2,,3
 1853              		.global	usart_lin_disable_frame_slot
 1854              		.syntax unified
 1855              		.thumb
ARM GAS  /tmp/ccJYkMjP.s 			page 72


 1856              		.thumb_func
 1857              		.fpu fpv5-d16
 1858              		.type	usart_lin_disable_frame_slot, %function
 1859              	usart_lin_disable_frame_slot:
 1860              	.LFB166:
1018:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR |= US_LINMR_FSDIS;
 1861              		.loc 1 1018 0
 1862              		.cfi_startproc
 1863              		@ args = 0, pretend = 0, frame = 0
 1864              		@ frame_needed = 0, uses_anonymous_args = 0
 1865              		@ link register save eliminated.
 1866              	.LVL137:
1019:../asf/sam/drivers/usart/usart.c **** }
 1867              		.loc 1 1019 0
 1868 0000 436D     		ldr	r3, [r0, #84]
 1869 0002 43F04003 		orr	r3, r3, #64
 1870 0006 4365     		str	r3, [r0, #84]
 1871 0008 7047     		bx	lr
 1872              		.cfi_endproc
 1873              	.LFE166:
 1874              		.size	usart_lin_disable_frame_slot, .-usart_lin_disable_frame_slot
 1875 000a 00BF     		.section	.text.usart_lin_enable_frame_slot,"ax",%progbits
 1876              		.align	1
 1877              		.p2align 2,,3
 1878              		.global	usart_lin_enable_frame_slot
 1879              		.syntax unified
 1880              		.thumb
 1881              		.thumb_func
 1882              		.fpu fpv5-d16
 1883              		.type	usart_lin_enable_frame_slot, %function
 1884              	usart_lin_enable_frame_slot:
 1885              	.LFB167:
1028:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR &= ~US_LINMR_FSDIS;
 1886              		.loc 1 1028 0
 1887              		.cfi_startproc
 1888              		@ args = 0, pretend = 0, frame = 0
 1889              		@ frame_needed = 0, uses_anonymous_args = 0
 1890              		@ link register save eliminated.
 1891              	.LVL138:
1029:../asf/sam/drivers/usart/usart.c **** }
 1892              		.loc 1 1029 0
 1893 0000 436D     		ldr	r3, [r0, #84]
 1894 0002 23F04003 		bic	r3, r3, #64
 1895 0006 4365     		str	r3, [r0, #84]
 1896 0008 7047     		bx	lr
 1897              		.cfi_endproc
 1898              	.LFE167:
 1899              		.size	usart_lin_enable_frame_slot, .-usart_lin_enable_frame_slot
 1900 000a 00BF     		.section	.text.usart_lin_set_wakeup_signal_type,"ax",%progbits
 1901              		.align	1
 1902              		.p2align 2,,3
 1903              		.global	usart_lin_set_wakeup_signal_type
 1904              		.syntax unified
 1905              		.thumb
 1906              		.thumb_func
 1907              		.fpu fpv5-d16
 1908              		.type	usart_lin_set_wakeup_signal_type, %function
ARM GAS  /tmp/ccJYkMjP.s 			page 73


 1909              	usart_lin_set_wakeup_signal_type:
 1910              	.LFB168:
1040:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR = (p_usart->US_LINMR & ~US_LINMR_WKUPTYP) |
 1911              		.loc 1 1040 0
 1912              		.cfi_startproc
 1913              		@ args = 0, pretend = 0, frame = 0
 1914              		@ frame_needed = 0, uses_anonymous_args = 0
 1915              		@ link register save eliminated.
 1916              	.LVL139:
1041:../asf/sam/drivers/usart/usart.c **** 			(uc_type << 7);
 1917              		.loc 1 1041 0
 1918 0000 436D     		ldr	r3, [r0, #84]
 1919 0002 23F08003 		bic	r3, r3, #128
 1920 0006 43EAC111 		orr	r1, r3, r1, lsl #7
 1921              	.LVL140:
 1922 000a 4165     		str	r1, [r0, #84]
 1923 000c 7047     		bx	lr
 1924              		.cfi_endproc
 1925              	.LFE168:
 1926              		.size	usart_lin_set_wakeup_signal_type, .-usart_lin_set_wakeup_signal_type
 1927 000e 00BF     		.section	.text.usart_lin_set_response_data_len,"ax",%progbits
 1928              		.align	1
 1929              		.p2align 2,,3
 1930              		.global	usart_lin_set_response_data_len
 1931              		.syntax unified
 1932              		.thumb
 1933              		.thumb_func
 1934              		.fpu fpv5-d16
 1935              		.type	usart_lin_set_response_data_len, %function
 1936              	usart_lin_set_response_data_len:
 1937              	.LFB169:
1053:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR = (p_usart->US_LINMR & ~US_LINMR_DLC_Msk) |
 1938              		.loc 1 1053 0
 1939              		.cfi_startproc
 1940              		@ args = 0, pretend = 0, frame = 0
 1941              		@ frame_needed = 0, uses_anonymous_args = 0
 1942              		@ link register save eliminated.
 1943              	.LVL141:
1055:../asf/sam/drivers/usart/usart.c **** }
 1944              		.loc 1 1055 0
 1945 0000 4B1E     		subs	r3, r1, #1
1054:../asf/sam/drivers/usart/usart.c **** 			((uc_len - 1) << US_LINMR_DLC_Pos);
 1946              		.loc 1 1054 0
 1947 0002 416D     		ldr	r1, [r0, #84]
 1948              	.LVL142:
 1949 0004 21F47F41 		bic	r1, r1, #65280
 1950 0008 41EA0321 		orr	r1, r1, r3, lsl #8
 1951 000c 4165     		str	r1, [r0, #84]
 1952 000e 7047     		bx	lr
 1953              		.cfi_endproc
 1954              	.LFE169:
 1955              		.size	usart_lin_set_response_data_len, .-usart_lin_set_response_data_len
 1956              		.section	.text.usart_lin_disable_pdc_mode,"ax",%progbits
 1957              		.align	1
 1958              		.p2align 2,,3
 1959              		.global	usart_lin_disable_pdc_mode
 1960              		.syntax unified
ARM GAS  /tmp/ccJYkMjP.s 			page 74


 1961              		.thumb
 1962              		.thumb_func
 1963              		.fpu fpv5-d16
 1964              		.type	usart_lin_disable_pdc_mode, %function
 1965              	usart_lin_disable_pdc_mode:
 1966              	.LFB170:
1064:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR &= ~US_LINMR_PDCM;
 1967              		.loc 1 1064 0
 1968              		.cfi_startproc
 1969              		@ args = 0, pretend = 0, frame = 0
 1970              		@ frame_needed = 0, uses_anonymous_args = 0
 1971              		@ link register save eliminated.
 1972              	.LVL143:
1065:../asf/sam/drivers/usart/usart.c **** }
 1973              		.loc 1 1065 0
 1974 0000 436D     		ldr	r3, [r0, #84]
 1975 0002 23F48033 		bic	r3, r3, #65536
 1976 0006 4365     		str	r3, [r0, #84]
 1977 0008 7047     		bx	lr
 1978              		.cfi_endproc
 1979              	.LFE170:
 1980              		.size	usart_lin_disable_pdc_mode, .-usart_lin_disable_pdc_mode
 1981 000a 00BF     		.section	.text.usart_lin_enable_pdc_mode,"ax",%progbits
 1982              		.align	1
 1983              		.p2align 2,,3
 1984              		.global	usart_lin_enable_pdc_mode
 1985              		.syntax unified
 1986              		.thumb
 1987              		.thumb_func
 1988              		.fpu fpv5-d16
 1989              		.type	usart_lin_enable_pdc_mode, %function
 1990              	usart_lin_enable_pdc_mode:
 1991              	.LFB171:
1074:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINMR |= US_LINMR_PDCM;
 1992              		.loc 1 1074 0
 1993              		.cfi_startproc
 1994              		@ args = 0, pretend = 0, frame = 0
 1995              		@ frame_needed = 0, uses_anonymous_args = 0
 1996              		@ link register save eliminated.
 1997              	.LVL144:
1075:../asf/sam/drivers/usart/usart.c **** }
 1998              		.loc 1 1075 0
 1999 0000 436D     		ldr	r3, [r0, #84]
 2000 0002 43F48033 		orr	r3, r3, #65536
 2001 0006 4365     		str	r3, [r0, #84]
 2002 0008 7047     		bx	lr
 2003              		.cfi_endproc
 2004              	.LFE171:
 2005              		.size	usart_lin_enable_pdc_mode, .-usart_lin_enable_pdc_mode
 2006 000a 00BF     		.section	.text.usart_lin_set_tx_identifier,"ax",%progbits
 2007              		.align	1
 2008              		.p2align 2,,3
 2009              		.global	usart_lin_set_tx_identifier
 2010              		.syntax unified
 2011              		.thumb
 2012              		.thumb_func
 2013              		.fpu fpv5-d16
ARM GAS  /tmp/ccJYkMjP.s 			page 75


 2014              		.type	usart_lin_set_tx_identifier, %function
 2015              	usart_lin_set_tx_identifier:
 2016              	.LFB172:
1085:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LINIR = (p_usart->US_LINIR & ~US_LINIR_IDCHR_Msk) |
 2017              		.loc 1 1085 0
 2018              		.cfi_startproc
 2019              		@ args = 0, pretend = 0, frame = 0
 2020              		@ frame_needed = 0, uses_anonymous_args = 0
 2021              		@ link register save eliminated.
 2022              	.LVL145:
1086:../asf/sam/drivers/usart/usart.c **** 			US_LINIR_IDCHR(uc_id);
 2023              		.loc 1 1086 0
 2024 0000 836D     		ldr	r3, [r0, #88]
 2025 0002 23F0FF03 		bic	r3, r3, #255
 2026 0006 1943     		orrs	r1, r1, r3
 2027              	.LVL146:
 2028 0008 8165     		str	r1, [r0, #88]
 2029 000a 7047     		bx	lr
 2030              		.cfi_endproc
 2031              	.LFE172:
 2032              		.size	usart_lin_set_tx_identifier, .-usart_lin_set_tx_identifier
 2033              		.section	.text.usart_lin_read_identifier,"ax",%progbits
 2034              		.align	1
 2035              		.p2align 2,,3
 2036              		.global	usart_lin_read_identifier
 2037              		.syntax unified
 2038              		.thumb
 2039              		.thumb_func
 2040              		.fpu fpv5-d16
 2041              		.type	usart_lin_read_identifier, %function
 2042              	usart_lin_read_identifier:
 2043              	.LFB173:
1099:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_LINIR & US_LINIR_IDCHR_Msk);
 2044              		.loc 1 1099 0
 2045              		.cfi_startproc
 2046              		@ args = 0, pretend = 0, frame = 0
 2047              		@ frame_needed = 0, uses_anonymous_args = 0
 2048              		@ link register save eliminated.
 2049              	.LVL147:
1100:../asf/sam/drivers/usart/usart.c **** }
 2050              		.loc 1 1100 0
 2051 0000 806D     		ldr	r0, [r0, #88]
 2052              	.LVL148:
1101:../asf/sam/drivers/usart/usart.c **** 
 2053              		.loc 1 1101 0
 2054 0002 C0B2     		uxtb	r0, r0
 2055 0004 7047     		bx	lr
 2056              		.cfi_endproc
 2057              	.LFE173:
 2058              		.size	usart_lin_read_identifier, .-usart_lin_read_identifier
 2059 0006 00BF     		.section	.text.usart_lin_get_data_length,"ax",%progbits
 2060              		.align	1
 2061              		.p2align 2,,3
 2062              		.global	usart_lin_get_data_length
 2063              		.syntax unified
 2064              		.thumb
 2065              		.thumb_func
ARM GAS  /tmp/ccJYkMjP.s 			page 76


 2066              		.fpu fpv5-d16
 2067              		.type	usart_lin_get_data_length, %function
 2068              	usart_lin_get_data_length:
 2069              	.LFB174:
1111:../asf/sam/drivers/usart/usart.c **** 	if (usart->US_LINMR & US_LINMR_DLM) {
 2070              		.loc 1 1111 0
 2071              		.cfi_startproc
 2072              		@ args = 0, pretend = 0, frame = 0
 2073              		@ frame_needed = 0, uses_anonymous_args = 0
 2074              		@ link register save eliminated.
 2075              	.LVL149:
1112:../asf/sam/drivers/usart/usart.c **** 		uint8_t data_length = 1 << ((usart->US_LINIR >>
 2076              		.loc 1 1112 0
 2077 0000 436D     		ldr	r3, [r0, #84]
 2078 0002 9B06     		lsls	r3, r3, #26
 2079 0004 04D4     		bmi	.L105
1117:../asf/sam/drivers/usart/usart.c **** 	}
 2080              		.loc 1 1117 0
 2081 0006 406D     		ldr	r0, [r0, #84]
 2082              	.LVL150:
 2083 0008 000A     		lsrs	r0, r0, #8
 2084 000a 0130     		adds	r0, r0, #1
 2085 000c C0B2     		uxtb	r0, r0
1119:../asf/sam/drivers/usart/usart.c **** 
 2086              		.loc 1 1119 0
 2087 000e 7047     		bx	lr
 2088              	.LVL151:
 2089              	.L105:
 2090              	.LBB398:
1113:../asf/sam/drivers/usart/usart.c **** 				(US_LINIR_IDCHR_Pos + 4)) & 0x03);
 2091              		.loc 1 1113 0
 2092 0010 836D     		ldr	r3, [r0, #88]
 2093 0012 0120     		movs	r0, #1
 2094              	.LVL152:
1114:../asf/sam/drivers/usart/usart.c **** 		return data_length;
 2095              		.loc 1 1114 0
 2096 0014 C3F30113 		ubfx	r3, r3, #4, #2
1113:../asf/sam/drivers/usart/usart.c **** 				(US_LINIR_IDCHR_Pos + 4)) & 0x03);
 2097              		.loc 1 1113 0
 2098 0018 9840     		lsls	r0, r0, r3
 2099 001a C0B2     		uxtb	r0, r0
 2100              	.LVL153:
1115:../asf/sam/drivers/usart/usart.c **** 	} else {
 2101              		.loc 1 1115 0
 2102 001c 7047     		bx	lr
 2103              	.LBE398:
 2104              		.cfi_endproc
 2105              	.LFE174:
 2106              		.size	usart_lin_get_data_length, .-usart_lin_get_data_length
 2107 001e 00BF     		.section	.text.usart_lin_identifier_send_complete,"ax",%progbits
 2108              		.align	1
 2109              		.p2align 2,,3
 2110              		.global	usart_lin_identifier_send_complete
 2111              		.syntax unified
 2112              		.thumb
 2113              		.thumb_func
 2114              		.fpu fpv5-d16
ARM GAS  /tmp/ccJYkMjP.s 			page 77


 2115              		.type	usart_lin_identifier_send_complete, %function
 2116              	usart_lin_identifier_send_complete:
 2117              	.LFB230:
 2118              		.cfi_startproc
 2119              		@ args = 0, pretend = 0, frame = 0
 2120              		@ frame_needed = 0, uses_anonymous_args = 0
 2121              		@ link register save eliminated.
 2122 0000 4069     		ldr	r0, [r0, #20]
 2123 0002 C0F38030 		ubfx	r0, r0, #14, #1
 2124 0006 7047     		bx	lr
 2125              		.cfi_endproc
 2126              	.LFE230:
 2127              		.size	usart_lin_identifier_send_complete, .-usart_lin_identifier_send_complete
 2128              		.section	.text.usart_lin_identifier_reception_complete,"ax",%progbits
 2129              		.align	1
 2130              		.p2align 2,,3
 2131              		.global	usart_lin_identifier_reception_complete
 2132              		.syntax unified
 2133              		.thumb
 2134              		.thumb_func
 2135              		.fpu fpv5-d16
 2136              		.type	usart_lin_identifier_reception_complete, %function
 2137              	usart_lin_identifier_reception_complete:
 2138              	.LFB176:
1148:../asf/sam/drivers/usart/usart.c **** 	return (usart->US_CSR & US_CSR_LINID) > 0;
 2139              		.loc 1 1148 0
 2140              		.cfi_startproc
 2141              		@ args = 0, pretend = 0, frame = 0
 2142              		@ frame_needed = 0, uses_anonymous_args = 0
 2143              		@ link register save eliminated.
 2144              	.LVL154:
1149:../asf/sam/drivers/usart/usart.c **** }
 2145              		.loc 1 1149 0
 2146 0000 4069     		ldr	r0, [r0, #20]
 2147              	.LVL155:
1150:../asf/sam/drivers/usart/usart.c **** 
 2148              		.loc 1 1150 0
 2149 0002 C0F38030 		ubfx	r0, r0, #14, #1
 2150 0006 7047     		bx	lr
 2151              		.cfi_endproc
 2152              	.LFE176:
 2153              		.size	usart_lin_identifier_reception_complete, .-usart_lin_identifier_reception_complete
 2154              		.section	.text.usart_lin_tx_complete,"ax",%progbits
 2155              		.align	1
 2156              		.p2align 2,,3
 2157              		.global	usart_lin_tx_complete
 2158              		.syntax unified
 2159              		.thumb
 2160              		.thumb_func
 2161              		.fpu fpv5-d16
 2162              		.type	usart_lin_tx_complete, %function
 2163              	usart_lin_tx_complete:
 2164              	.LFB177:
1162:../asf/sam/drivers/usart/usart.c **** 	return (usart->US_CSR & US_CSR_LINTC) > 0;
 2165              		.loc 1 1162 0
 2166              		.cfi_startproc
 2167              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccJYkMjP.s 			page 78


 2168              		@ frame_needed = 0, uses_anonymous_args = 0
 2169              		@ link register save eliminated.
 2170              	.LVL156:
1163:../asf/sam/drivers/usart/usart.c **** }
 2171              		.loc 1 1163 0
 2172 0000 4069     		ldr	r0, [r0, #20]
 2173              	.LVL157:
1164:../asf/sam/drivers/usart/usart.c **** 
 2174              		.loc 1 1164 0
 2175 0002 C0F3C030 		ubfx	r0, r0, #15, #1
 2176 0006 7047     		bx	lr
 2177              		.cfi_endproc
 2178              	.LFE177:
 2179              		.size	usart_lin_tx_complete, .-usart_lin_tx_complete
 2180              		.section	.text.usart_init_lon,"ax",%progbits
 2181              		.align	1
 2182              		.p2align 2,,3
 2183              		.global	usart_init_lon
 2184              		.syntax unified
 2185              		.thumb
 2186              		.thumb_func
 2187              		.fpu fpv5-d16
 2188              		.type	usart_init_lon, %function
 2189              	usart_init_lon:
 2190              	.LFB178:
1180:../asf/sam/drivers/usart/usart.c **** 	/* Reset the USART and shut down TX and RX. */
 2191              		.loc 1 1180 0
 2192              		.cfi_startproc
 2193              		@ args = 0, pretend = 0, frame = 0
 2194              		@ frame_needed = 0, uses_anonymous_args = 0
 2195              	.LVL158:
 2196 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 2197              		.cfi_def_cfa_offset 24
 2198              		.cfi_offset 3, -24
 2199              		.cfi_offset 4, -20
 2200              		.cfi_offset 5, -16
 2201              		.cfi_offset 6, -12
 2202              		.cfi_offset 7, -8
 2203              		.cfi_offset 14, -4
 2204              	.LBB399:
 2205              	.LBB400:
 2206              	.LBB401:
 2207              	.LBB402:
 2208              		.loc 1 1919 0
 2209 0002 124D     		ldr	r5, .L113
 2210              	.LBE402:
 2211              	.LBE401:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 2212              		.loc 1 256 0
 2213 0004 0023     		movs	r3, #0
 2214              	.LBB404:
 2215              	.LBB405:
1417:../asf/sam/drivers/usart/usart.c **** }
 2216              		.loc 1 1417 0
 2217 0006 4FF0880E 		mov	lr, #136
 2218              	.LBE405:
 2219              	.LBE404:
ARM GAS  /tmp/ccJYkMjP.s 			page 79


 2220              	.LBB407:
 2221              	.LBB408:
1459:../asf/sam/drivers/usart/usart.c **** }
 2222              		.loc 1 1459 0
 2223 000a 2427     		movs	r7, #36
 2224              	.LBE408:
 2225              	.LBE407:
 2226              	.LBB410:
 2227              	.LBB403:
 2228              		.loc 1 1919 0
 2229 000c C0F8E450 		str	r5, [r0, #228]
 2230              	.LBE403:
 2231              	.LBE410:
 2232              	.LBB411:
 2233              	.LBB412:
1526:../asf/sam/drivers/usart/usart.c **** }
 2234              		.loc 1 1526 0
 2235 0010 4FF48076 		mov	r6, #256
 2236              	.LBE412:
 2237              	.LBE411:
 2238              	.LBB414:
 2239              	.LBB415:
1636:../asf/sam/drivers/usart/usart.c **** }
 2240              		.loc 1 1636 0
 2241 0014 4FF40025 		mov	r5, #524288
 2242              	.LBE415:
 2243              	.LBE414:
 256:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = 0;
 2244              		.loc 1 256 0
 2245 0018 4360     		str	r3, [r0, #4]
 257:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_TTGR = 0;
 2246              		.loc 1 257 0
 2247 001a 4362     		str	r3, [r0, #36]
 2248              	.LBE400:
 2249              	.LBE399:
1180:../asf/sam/drivers/usart/usart.c **** 	/* Reset the USART and shut down TX and RX. */
 2250              		.loc 1 1180 0
 2251 001c 0446     		mov	r4, r0
 2252              	.LVL159:
 2253              	.LBB422:
 2254              	.LBB421:
 258:../asf/sam/drivers/usart/usart.c **** 
 2255              		.loc 1 258 0
 2256 001e 8362     		str	r3, [r0, #40]
 2257              	.LVL160:
 2258              	.LBB417:
 2259              	.LBB406:
1417:../asf/sam/drivers/usart/usart.c **** }
 2260              		.loc 1 1417 0
 2261 0020 C0F800E0 		str	lr, [r0]
 2262              	.LVL161:
 2263              	.LBE406:
 2264              	.LBE417:
 2265              	.LBB418:
 2266              	.LBB409:
1459:../asf/sam/drivers/usart/usart.c **** }
 2267              		.loc 1 1459 0
ARM GAS  /tmp/ccJYkMjP.s 			page 80


 2268 0024 0760     		str	r7, [r0]
 2269              	.LVL162:
 2270              	.LBE409:
 2271              	.LBE418:
 2272              	.LBB419:
 2273              	.LBB413:
1526:../asf/sam/drivers/usart/usart.c **** }
 2274              		.loc 1 1526 0
 2275 0026 0660     		str	r6, [r0]
 2276              	.LVL163:
 2277              	.LBE413:
 2278              	.LBE419:
 2279              	.LBB420:
 2280              	.LBB416:
1636:../asf/sam/drivers/usart/usart.c **** }
 2281              		.loc 1 1636 0
 2282 0028 0560     		str	r5, [r0]
 2283              	.LVL164:
 2284              	.LBE416:
 2285              	.LBE420:
 2286              	.LBE421:
 2287              	.LBE422:
1185:../asf/sam/drivers/usart/usart.c **** 		return 1;
 2288              		.loc 1 1185 0
 2289 002a FFF7FEFF 		bl	usart_set_async_baudrate
 2290              	.LVL165:
 2291 002e 50B9     		cbnz	r0, .L111
1190:../asf/sam/drivers/usart/usart.c **** 			US_MR_USART_MODE_LON;
 2292              		.loc 1 1190 0
 2293 0030 6368     		ldr	r3, [r4, #4]
 2294              	.LBB423:
 2295              	.LBB424:
1438:../asf/sam/drivers/usart/usart.c **** }
 2296              		.loc 1 1438 0
 2297 0032 1021     		movs	r1, #16
 2298              	.LBE424:
 2299              	.LBE423:
 2300              	.LBB426:
 2301              	.LBB427:
1396:../asf/sam/drivers/usart/usart.c **** }
 2302              		.loc 1 1396 0
 2303 0034 4022     		movs	r2, #64
 2304              	.LBE427:
 2305              	.LBE426:
1190:../asf/sam/drivers/usart/usart.c **** 			US_MR_USART_MODE_LON;
 2306              		.loc 1 1190 0
 2307 0036 23F00F03 		bic	r3, r3, #15
 2308 003a 43F00903 		orr	r3, r3, #9
 2309 003e 6360     		str	r3, [r4, #4]
 2310              	.LVL166:
 2311              	.LBB429:
 2312              	.LBB425:
1438:../asf/sam/drivers/usart/usart.c **** }
 2313              		.loc 1 1438 0
 2314 0040 2160     		str	r1, [r4]
 2315              	.LVL167:
 2316              	.LBE425:
ARM GAS  /tmp/ccJYkMjP.s 			page 81


 2317              	.LBE429:
 2318              	.LBB430:
 2319              	.LBB428:
1396:../asf/sam/drivers/usart/usart.c **** }
 2320              		.loc 1 1396 0
 2321 0042 2260     		str	r2, [r4]
 2322              	.LVL168:
 2323              	.LBE428:
 2324              	.LBE430:
1196:../asf/sam/drivers/usart/usart.c **** }
 2325              		.loc 1 1196 0
 2326 0044 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2327              	.LVL169:
 2328              	.L111:
1186:../asf/sam/drivers/usart/usart.c **** 	}
 2329              		.loc 1 1186 0
 2330 0046 0120     		movs	r0, #1
1197:../asf/sam/drivers/usart/usart.c **** 
 2331              		.loc 1 1197 0
 2332 0048 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 2333              	.LVL170:
 2334              	.L114:
 2335 004a 00BF     		.align	2
 2336              	.L113:
 2337 004c 00415355 		.word	1431519488
 2338              		.cfi_endproc
 2339              	.LFE178:
 2340              		.size	usart_init_lon, .-usart_init_lon
 2341              		.section	.text.usart_lon_set_comm_type,"ax",%progbits
 2342              		.align	1
 2343              		.p2align 2,,3
 2344              		.global	usart_lon_set_comm_type
 2345              		.syntax unified
 2346              		.thumb
 2347              		.thumb_func
 2348              		.fpu fpv5-d16
 2349              		.type	usart_lon_set_comm_type, %function
 2350              	usart_lon_set_comm_type:
 2351              	.LFB179:
1207:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONMR = (p_usart->US_LONMR & ~US_LONMR_COMMT) |
 2352              		.loc 1 1207 0
 2353              		.cfi_startproc
 2354              		@ args = 0, pretend = 0, frame = 0
 2355              		@ frame_needed = 0, uses_anonymous_args = 0
 2356              		@ link register save eliminated.
 2357              	.LVL171:
1208:../asf/sam/drivers/usart/usart.c **** 			 (uc_type << 0);
 2358              		.loc 1 1208 0
 2359 0000 036E     		ldr	r3, [r0, #96]
 2360 0002 23F00103 		bic	r3, r3, #1
 2361 0006 1943     		orrs	r1, r1, r3
 2362              	.LVL172:
 2363 0008 0166     		str	r1, [r0, #96]
 2364 000a 7047     		bx	lr
 2365              		.cfi_endproc
 2366              	.LFE179:
 2367              		.size	usart_lon_set_comm_type, .-usart_lon_set_comm_type
ARM GAS  /tmp/ccJYkMjP.s 			page 82


 2368              		.section	.text.usart_lon_disable_coll_detection,"ax",%progbits
 2369              		.align	1
 2370              		.p2align 2,,3
 2371              		.global	usart_lon_disable_coll_detection
 2372              		.syntax unified
 2373              		.thumb
 2374              		.thumb_func
 2375              		.fpu fpv5-d16
 2376              		.type	usart_lon_disable_coll_detection, %function
 2377              	usart_lon_disable_coll_detection:
 2378              	.LFB180:
1218:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONMR |= US_LONMR_COLDET;
 2379              		.loc 1 1218 0
 2380              		.cfi_startproc
 2381              		@ args = 0, pretend = 0, frame = 0
 2382              		@ frame_needed = 0, uses_anonymous_args = 0
 2383              		@ link register save eliminated.
 2384              	.LVL173:
1219:../asf/sam/drivers/usart/usart.c **** }
 2385              		.loc 1 1219 0
 2386 0000 036E     		ldr	r3, [r0, #96]
 2387 0002 43F00203 		orr	r3, r3, #2
 2388 0006 0366     		str	r3, [r0, #96]
 2389 0008 7047     		bx	lr
 2390              		.cfi_endproc
 2391              	.LFE180:
 2392              		.size	usart_lon_disable_coll_detection, .-usart_lon_disable_coll_detection
 2393 000a 00BF     		.section	.text.usart_lon_enable_coll_detection,"ax",%progbits
 2394              		.align	1
 2395              		.p2align 2,,3
 2396              		.global	usart_lon_enable_coll_detection
 2397              		.syntax unified
 2398              		.thumb
 2399              		.thumb_func
 2400              		.fpu fpv5-d16
 2401              		.type	usart_lon_enable_coll_detection, %function
 2402              	usart_lon_enable_coll_detection:
 2403              	.LFB181:
1228:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONMR &= ~US_LONMR_COLDET;
 2404              		.loc 1 1228 0
 2405              		.cfi_startproc
 2406              		@ args = 0, pretend = 0, frame = 0
 2407              		@ frame_needed = 0, uses_anonymous_args = 0
 2408              		@ link register save eliminated.
 2409              	.LVL174:
1229:../asf/sam/drivers/usart/usart.c **** }
 2410              		.loc 1 1229 0
 2411 0000 036E     		ldr	r3, [r0, #96]
 2412 0002 23F00203 		bic	r3, r3, #2
 2413 0006 0366     		str	r3, [r0, #96]
 2414 0008 7047     		bx	lr
 2415              		.cfi_endproc
 2416              	.LFE181:
 2417              		.size	usart_lon_enable_coll_detection, .-usart_lon_enable_coll_detection
 2418 000a 00BF     		.section	.text.usart_lon_set_tcol,"ax",%progbits
 2419              		.align	1
 2420              		.p2align 2,,3
ARM GAS  /tmp/ccJYkMjP.s 			page 83


 2421              		.global	usart_lon_set_tcol
 2422              		.syntax unified
 2423              		.thumb
 2424              		.thumb_func
 2425              		.fpu fpv5-d16
 2426              		.type	usart_lon_set_tcol, %function
 2427              	usart_lon_set_tcol:
 2428              	.LFB182:
1240:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONMR = (p_usart->US_LONMR & ~US_LONMR_TCOL) |
 2429              		.loc 1 1240 0
 2430              		.cfi_startproc
 2431              		@ args = 0, pretend = 0, frame = 0
 2432              		@ frame_needed = 0, uses_anonymous_args = 0
 2433              		@ link register save eliminated.
 2434              	.LVL175:
1241:../asf/sam/drivers/usart/usart.c **** 			 (uc_type << 2);
 2435              		.loc 1 1241 0
 2436 0000 036E     		ldr	r3, [r0, #96]
 2437 0002 23F00403 		bic	r3, r3, #4
 2438 0006 43EA8101 		orr	r1, r3, r1, lsl #2
 2439              	.LVL176:
 2440 000a 0166     		str	r1, [r0, #96]
 2441 000c 7047     		bx	lr
 2442              		.cfi_endproc
 2443              	.LFE182:
 2444              		.size	usart_lon_set_tcol, .-usart_lon_set_tcol
 2445 000e 00BF     		.section	.text.usart_lon_set_cdtail,"ax",%progbits
 2446              		.align	1
 2447              		.p2align 2,,3
 2448              		.global	usart_lon_set_cdtail
 2449              		.syntax unified
 2450              		.thumb
 2451              		.thumb_func
 2452              		.fpu fpv5-d16
 2453              		.type	usart_lon_set_cdtail, %function
 2454              	usart_lon_set_cdtail:
 2455              	.LFB183:
1253:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONMR = (p_usart->US_LONMR & ~US_LONMR_CDTAIL) |
 2456              		.loc 1 1253 0
 2457              		.cfi_startproc
 2458              		@ args = 0, pretend = 0, frame = 0
 2459              		@ frame_needed = 0, uses_anonymous_args = 0
 2460              		@ link register save eliminated.
 2461              	.LVL177:
1254:../asf/sam/drivers/usart/usart.c **** 			 (uc_type << 3);
 2462              		.loc 1 1254 0
 2463 0000 036E     		ldr	r3, [r0, #96]
 2464 0002 23F00803 		bic	r3, r3, #8
 2465 0006 43EAC101 		orr	r1, r3, r1, lsl #3
 2466              	.LVL178:
 2467 000a 0166     		str	r1, [r0, #96]
 2468 000c 7047     		bx	lr
 2469              		.cfi_endproc
 2470              	.LFE183:
 2471              		.size	usart_lon_set_cdtail, .-usart_lon_set_cdtail
 2472 000e 00BF     		.section	.text.usart_lon_set_dmam,"ax",%progbits
 2473              		.align	1
ARM GAS  /tmp/ccJYkMjP.s 			page 84


 2474              		.p2align 2,,3
 2475              		.global	usart_lon_set_dmam
 2476              		.syntax unified
 2477              		.thumb
 2478              		.thumb_func
 2479              		.fpu fpv5-d16
 2480              		.type	usart_lon_set_dmam, %function
 2481              	usart_lon_set_dmam:
 2482              	.LFB184:
1266:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONMR = (p_usart->US_LONMR & ~US_LONMR_DMAM) |
 2483              		.loc 1 1266 0
 2484              		.cfi_startproc
 2485              		@ args = 0, pretend = 0, frame = 0
 2486              		@ frame_needed = 0, uses_anonymous_args = 0
 2487              		@ link register save eliminated.
 2488              	.LVL179:
1267:../asf/sam/drivers/usart/usart.c **** 			 (uc_type << 4);
 2489              		.loc 1 1267 0
 2490 0000 036E     		ldr	r3, [r0, #96]
 2491 0002 23F01003 		bic	r3, r3, #16
 2492 0006 43EA0111 		orr	r1, r3, r1, lsl #4
 2493              	.LVL180:
 2494 000a 0166     		str	r1, [r0, #96]
 2495 000c 7047     		bx	lr
 2496              		.cfi_endproc
 2497              	.LFE184:
 2498              		.size	usart_lon_set_dmam, .-usart_lon_set_dmam
 2499 000e 00BF     		.section	.text.usart_lon_set_beta1_tx_len,"ax",%progbits
 2500              		.align	1
 2501              		.p2align 2,,3
 2502              		.global	usart_lon_set_beta1_tx_len
 2503              		.syntax unified
 2504              		.thumb
 2505              		.thumb_func
 2506              		.fpu fpv5-d16
 2507              		.type	usart_lon_set_beta1_tx_len, %function
 2508              	usart_lon_set_beta1_tx_len:
 2509              	.LFB185:
1278:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONB1TX = US_LONB1TX_BETA1TX(ul_len);
 2510              		.loc 1 1278 0
 2511              		.cfi_startproc
 2512              		@ args = 0, pretend = 0, frame = 0
 2513              		@ frame_needed = 0, uses_anonymous_args = 0
 2514              		@ link register save eliminated.
 2515              	.LVL181:
1279:../asf/sam/drivers/usart/usart.c **** }
 2516              		.loc 1 1279 0
 2517 0000 21F07F41 		bic	r1, r1, #-16777216
 2518              	.LVL182:
 2519 0004 4167     		str	r1, [r0, #116]
 2520 0006 7047     		bx	lr
 2521              		.cfi_endproc
 2522              	.LFE185:
 2523              		.size	usart_lon_set_beta1_tx_len, .-usart_lon_set_beta1_tx_len
 2524              		.section	.text.usart_lon_set_beta1_rx_len,"ax",%progbits
 2525              		.align	1
 2526              		.p2align 2,,3
ARM GAS  /tmp/ccJYkMjP.s 			page 85


 2527              		.global	usart_lon_set_beta1_rx_len
 2528              		.syntax unified
 2529              		.thumb
 2530              		.thumb_func
 2531              		.fpu fpv5-d16
 2532              		.type	usart_lon_set_beta1_rx_len, %function
 2533              	usart_lon_set_beta1_rx_len:
 2534              	.LFB186:
1289:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONB1RX = US_LONB1RX_BETA1RX(ul_len);
 2535              		.loc 1 1289 0
 2536              		.cfi_startproc
 2537              		@ args = 0, pretend = 0, frame = 0
 2538              		@ frame_needed = 0, uses_anonymous_args = 0
 2539              		@ link register save eliminated.
 2540              	.LVL183:
1290:../asf/sam/drivers/usart/usart.c **** }
 2541              		.loc 1 1290 0
 2542 0000 21F07F41 		bic	r1, r1, #-16777216
 2543              	.LVL184:
 2544 0004 8167     		str	r1, [r0, #120]
 2545 0006 7047     		bx	lr
 2546              		.cfi_endproc
 2547              	.LFE186:
 2548              		.size	usart_lon_set_beta1_rx_len, .-usart_lon_set_beta1_rx_len
 2549              		.section	.text.usart_lon_set_priority,"ax",%progbits
 2550              		.align	1
 2551              		.p2align 2,,3
 2552              		.global	usart_lon_set_priority
 2553              		.syntax unified
 2554              		.thumb
 2555              		.thumb_func
 2556              		.fpu fpv5-d16
 2557              		.type	usart_lon_set_priority, %function
 2558              	usart_lon_set_priority:
 2559              	.LFB187:
1301:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONPRIO = US_LONPRIO_PSNB(uc_psnb) | US_LONPRIO_NPS(uc_nps);
 2560              		.loc 1 1301 0
 2561              		.cfi_startproc
 2562              		@ args = 0, pretend = 0, frame = 0
 2563              		@ frame_needed = 0, uses_anonymous_args = 0
 2564              		@ link register save eliminated.
 2565              	.LVL185:
1302:../asf/sam/drivers/usart/usart.c **** }
 2566              		.loc 1 1302 0
 2567 0000 1202     		lsls	r2, r2, #8
 2568              	.LVL186:
 2569 0002 01F07F01 		and	r1, r1, #127
 2570              	.LVL187:
 2571 0006 02F4FE42 		and	r2, r2, #32512
 2572 000a 0A43     		orrs	r2, r2, r1
 2573 000c C267     		str	r2, [r0, #124]
 2574 000e 7047     		bx	lr
 2575              		.cfi_endproc
 2576              	.LFE187:
 2577              		.size	usart_lon_set_priority, .-usart_lon_set_priority
 2578              		.section	.text.usart_lon_set_tx_idt,"ax",%progbits
 2579              		.align	1
ARM GAS  /tmp/ccJYkMjP.s 			page 86


 2580              		.p2align 2,,3
 2581              		.global	usart_lon_set_tx_idt
 2582              		.syntax unified
 2583              		.thumb
 2584              		.thumb_func
 2585              		.fpu fpv5-d16
 2586              		.type	usart_lon_set_tx_idt, %function
 2587              	usart_lon_set_tx_idt:
 2588              	.LFB188:
1312:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_IDTTX = US_IDTTX_IDTTX(ul_time);
 2589              		.loc 1 1312 0
 2590              		.cfi_startproc
 2591              		@ args = 0, pretend = 0, frame = 0
 2592              		@ frame_needed = 0, uses_anonymous_args = 0
 2593              		@ link register save eliminated.
 2594              	.LVL188:
1313:../asf/sam/drivers/usart/usart.c **** }
 2595              		.loc 1 1313 0
 2596 0000 21F07F41 		bic	r1, r1, #-16777216
 2597              	.LVL189:
 2598 0004 C0F88010 		str	r1, [r0, #128]
 2599 0008 7047     		bx	lr
 2600              		.cfi_endproc
 2601              	.LFE188:
 2602              		.size	usart_lon_set_tx_idt, .-usart_lon_set_tx_idt
 2603 000a 00BF     		.section	.text.usart_lon_set_rx_idt,"ax",%progbits
 2604              		.align	1
 2605              		.p2align 2,,3
 2606              		.global	usart_lon_set_rx_idt
 2607              		.syntax unified
 2608              		.thumb
 2609              		.thumb_func
 2610              		.fpu fpv5-d16
 2611              		.type	usart_lon_set_rx_idt, %function
 2612              	usart_lon_set_rx_idt:
 2613              	.LFB189:
1323:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_IDTRX = US_IDTRX_IDTRX(ul_time);
 2614              		.loc 1 1323 0
 2615              		.cfi_startproc
 2616              		@ args = 0, pretend = 0, frame = 0
 2617              		@ frame_needed = 0, uses_anonymous_args = 0
 2618              		@ link register save eliminated.
 2619              	.LVL190:
1324:../asf/sam/drivers/usart/usart.c **** }
 2620              		.loc 1 1324 0
 2621 0000 21F07F41 		bic	r1, r1, #-16777216
 2622              	.LVL191:
 2623 0004 C0F88410 		str	r1, [r0, #132]
 2624 0008 7047     		bx	lr
 2625              		.cfi_endproc
 2626              	.LFE189:
 2627              		.size	usart_lon_set_rx_idt, .-usart_lon_set_rx_idt
 2628 000a 00BF     		.section	.text.usart_lon_set_pre_len,"ax",%progbits
 2629              		.align	1
 2630              		.p2align 2,,3
 2631              		.global	usart_lon_set_pre_len
 2632              		.syntax unified
ARM GAS  /tmp/ccJYkMjP.s 			page 87


 2633              		.thumb
 2634              		.thumb_func
 2635              		.fpu fpv5-d16
 2636              		.type	usart_lon_set_pre_len, %function
 2637              	usart_lon_set_pre_len:
 2638              	.LFB190:
1334:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONPR = US_LONPR_LONPL(ul_len);
 2639              		.loc 1 1334 0
 2640              		.cfi_startproc
 2641              		@ args = 0, pretend = 0, frame = 0
 2642              		@ frame_needed = 0, uses_anonymous_args = 0
 2643              		@ link register save eliminated.
 2644              	.LVL192:
1335:../asf/sam/drivers/usart/usart.c **** }
 2645              		.loc 1 1335 0
 2646 0000 C1F30D01 		ubfx	r1, r1, #0, #14
 2647              	.LVL193:
 2648 0004 4166     		str	r1, [r0, #100]
 2649 0006 7047     		bx	lr
 2650              		.cfi_endproc
 2651              	.LFE190:
 2652              		.size	usart_lon_set_pre_len, .-usart_lon_set_pre_len
 2653              		.section	.text.usart_lon_set_data_len,"ax",%progbits
 2654              		.align	1
 2655              		.p2align 2,,3
 2656              		.global	usart_lon_set_data_len
 2657              		.syntax unified
 2658              		.thumb
 2659              		.thumb_func
 2660              		.fpu fpv5-d16
 2661              		.type	usart_lon_set_data_len, %function
 2662              	usart_lon_set_data_len:
 2663              	.LFB191:
1345:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONDL = US_LONDL_LONDL(uc_len);
 2664              		.loc 1 1345 0
 2665              		.cfi_startproc
 2666              		@ args = 0, pretend = 0, frame = 0
 2667              		@ frame_needed = 0, uses_anonymous_args = 0
 2668              		@ link register save eliminated.
 2669              	.LVL194:
1346:../asf/sam/drivers/usart/usart.c **** }
 2670              		.loc 1 1346 0
 2671 0000 8166     		str	r1, [r0, #104]
 2672 0002 7047     		bx	lr
 2673              		.cfi_endproc
 2674              	.LFE191:
 2675              		.size	usart_lon_set_data_len, .-usart_lon_set_data_len
 2676              		.section	.text.usart_lon_set_l2hdr,"ax",%progbits
 2677              		.align	1
 2678              		.p2align 2,,3
 2679              		.global	usart_lon_set_l2hdr
 2680              		.syntax unified
 2681              		.thumb
 2682              		.thumb_func
 2683              		.fpu fpv5-d16
 2684              		.type	usart_lon_set_l2hdr, %function
 2685              	usart_lon_set_l2hdr:
ARM GAS  /tmp/ccJYkMjP.s 			page 88


 2686              	.LFB192:
1358:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_LONL2HDR = US_LONL2HDR_BLI(uc_bli) | (uc_altp << 6) | (uc_pb << 7);
 2687              		.loc 1 1358 0
 2688              		.cfi_startproc
 2689              		@ args = 0, pretend = 0, frame = 0
 2690              		@ frame_needed = 0, uses_anonymous_args = 0
 2691              		@ link register save eliminated.
 2692              	.LVL195:
1359:../asf/sam/drivers/usart/usart.c **** }
 2693              		.loc 1 1359 0
 2694 0000 01F03F01 		and	r1, r1, #63
 2695              	.LVL196:
 2696 0004 41EA8211 		orr	r1, r1, r2, lsl #6
 2697 0008 41EAC311 		orr	r1, r1, r3, lsl #7
 2698 000c C166     		str	r1, [r0, #108]
 2699 000e 7047     		bx	lr
 2700              		.cfi_endproc
 2701              	.LFE192:
 2702              		.size	usart_lon_set_l2hdr, .-usart_lon_set_l2hdr
 2703              		.section	.text.usart_lon_is_tx_end,"ax",%progbits
 2704              		.align	1
 2705              		.p2align 2,,3
 2706              		.global	usart_lon_is_tx_end
 2707              		.syntax unified
 2708              		.thumb
 2709              		.thumb_func
 2710              		.fpu fpv5-d16
 2711              		.type	usart_lon_is_tx_end, %function
 2712              	usart_lon_is_tx_end:
 2713              	.LFB193:
1371:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_CSR & US_CSR_LTXD) > 0;
 2714              		.loc 1 1371 0
 2715              		.cfi_startproc
 2716              		@ args = 0, pretend = 0, frame = 0
 2717              		@ frame_needed = 0, uses_anonymous_args = 0
 2718              		@ link register save eliminated.
 2719              	.LVL197:
1372:../asf/sam/drivers/usart/usart.c **** }
 2720              		.loc 1 1372 0
 2721 0000 4069     		ldr	r0, [r0, #20]
 2722              	.LVL198:
1373:../asf/sam/drivers/usart/usart.c **** 
 2723              		.loc 1 1373 0
 2724 0002 C0F30060 		ubfx	r0, r0, #24, #1
 2725 0006 7047     		bx	lr
 2726              		.cfi_endproc
 2727              	.LFE193:
 2728              		.size	usart_lon_is_tx_end, .-usart_lon_is_tx_end
 2729              		.section	.text.usart_lon_is_rx_end,"ax",%progbits
 2730              		.align	1
 2731              		.p2align 2,,3
 2732              		.global	usart_lon_is_rx_end
 2733              		.syntax unified
 2734              		.thumb
 2735              		.thumb_func
 2736              		.fpu fpv5-d16
 2737              		.type	usart_lon_is_rx_end, %function
ARM GAS  /tmp/ccJYkMjP.s 			page 89


 2738              	usart_lon_is_rx_end:
 2739              	.LFB194:
1384:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_CSR & US_CSR_LRXD) > 0;
 2740              		.loc 1 1384 0
 2741              		.cfi_startproc
 2742              		@ args = 0, pretend = 0, frame = 0
 2743              		@ frame_needed = 0, uses_anonymous_args = 0
 2744              		@ link register save eliminated.
 2745              	.LVL199:
1385:../asf/sam/drivers/usart/usart.c **** }
 2746              		.loc 1 1385 0
 2747 0000 4069     		ldr	r0, [r0, #20]
 2748              	.LVL200:
1386:../asf/sam/drivers/usart/usart.c **** #endif
 2749              		.loc 1 1386 0
 2750 0002 C0F3C060 		ubfx	r0, r0, #27, #1
 2751 0006 7047     		bx	lr
 2752              		.cfi_endproc
 2753              	.LFE194:
 2754              		.size	usart_lon_is_rx_end, .-usart_lon_is_rx_end
 2755              		.section	.text.usart_enable_tx,"ax",%progbits
 2756              		.align	1
 2757              		.p2align 2,,3
 2758              		.global	usart_enable_tx
 2759              		.syntax unified
 2760              		.thumb
 2761              		.thumb_func
 2762              		.fpu fpv5-d16
 2763              		.type	usart_enable_tx, %function
 2764              	usart_enable_tx:
 2765              	.LFB195:
1395:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_TXEN;
 2766              		.loc 1 1395 0
 2767              		.cfi_startproc
 2768              		@ args = 0, pretend = 0, frame = 0
 2769              		@ frame_needed = 0, uses_anonymous_args = 0
 2770              		@ link register save eliminated.
 2771              	.LVL201:
1396:../asf/sam/drivers/usart/usart.c **** }
 2772              		.loc 1 1396 0
 2773 0000 4023     		movs	r3, #64
 2774 0002 0360     		str	r3, [r0]
 2775 0004 7047     		bx	lr
 2776              		.cfi_endproc
 2777              	.LFE195:
 2778              		.size	usart_enable_tx, .-usart_enable_tx
 2779 0006 00BF     		.section	.text.usart_disable_tx,"ax",%progbits
 2780              		.align	1
 2781              		.p2align 2,,3
 2782              		.global	usart_disable_tx
 2783              		.syntax unified
 2784              		.thumb
 2785              		.thumb_func
 2786              		.fpu fpv5-d16
 2787              		.type	usart_disable_tx, %function
 2788              	usart_disable_tx:
 2789              	.LFB196:
ARM GAS  /tmp/ccJYkMjP.s 			page 90


1405:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_TXDIS;
 2790              		.loc 1 1405 0
 2791              		.cfi_startproc
 2792              		@ args = 0, pretend = 0, frame = 0
 2793              		@ frame_needed = 0, uses_anonymous_args = 0
 2794              		@ link register save eliminated.
 2795              	.LVL202:
1406:../asf/sam/drivers/usart/usart.c **** }
 2796              		.loc 1 1406 0
 2797 0000 8023     		movs	r3, #128
 2798 0002 0360     		str	r3, [r0]
 2799 0004 7047     		bx	lr
 2800              		.cfi_endproc
 2801              	.LFE196:
 2802              		.size	usart_disable_tx, .-usart_disable_tx
 2803 0006 00BF     		.section	.text.usart_reset_tx,"ax",%progbits
 2804              		.align	1
 2805              		.p2align 2,,3
 2806              		.global	usart_reset_tx
 2807              		.syntax unified
 2808              		.thumb
 2809              		.thumb_func
 2810              		.fpu fpv5-d16
 2811              		.type	usart_reset_tx, %function
 2812              	usart_reset_tx:
 2813              	.LFB197:
1415:../asf/sam/drivers/usart/usart.c **** 	/* Reset transmitter */
 2814              		.loc 1 1415 0
 2815              		.cfi_startproc
 2816              		@ args = 0, pretend = 0, frame = 0
 2817              		@ frame_needed = 0, uses_anonymous_args = 0
 2818              		@ link register save eliminated.
 2819              	.LVL203:
1417:../asf/sam/drivers/usart/usart.c **** }
 2820              		.loc 1 1417 0
 2821 0000 8823     		movs	r3, #136
 2822 0002 0360     		str	r3, [r0]
 2823 0004 7047     		bx	lr
 2824              		.cfi_endproc
 2825              	.LFE197:
 2826              		.size	usart_reset_tx, .-usart_reset_tx
 2827 0006 00BF     		.section	.text.usart_set_tx_timeguard,"ax",%progbits
 2828              		.align	1
 2829              		.p2align 2,,3
 2830              		.global	usart_set_tx_timeguard
 2831              		.syntax unified
 2832              		.thumb
 2833              		.thumb_func
 2834              		.fpu fpv5-d16
 2835              		.type	usart_set_tx_timeguard, %function
 2836              	usart_set_tx_timeguard:
 2837              	.LFB198:
1427:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_TTGR = timeguard;
 2838              		.loc 1 1427 0
 2839              		.cfi_startproc
 2840              		@ args = 0, pretend = 0, frame = 0
 2841              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccJYkMjP.s 			page 91


 2842              		@ link register save eliminated.
 2843              	.LVL204:
1428:../asf/sam/drivers/usart/usart.c **** }
 2844              		.loc 1 1428 0
 2845 0000 8162     		str	r1, [r0, #40]
 2846 0002 7047     		bx	lr
 2847              		.cfi_endproc
 2848              	.LFE198:
 2849              		.size	usart_set_tx_timeguard, .-usart_set_tx_timeguard
 2850              		.section	.text.usart_enable_rx,"ax",%progbits
 2851              		.align	1
 2852              		.p2align 2,,3
 2853              		.global	usart_enable_rx
 2854              		.syntax unified
 2855              		.thumb
 2856              		.thumb_func
 2857              		.fpu fpv5-d16
 2858              		.type	usart_enable_rx, %function
 2859              	usart_enable_rx:
 2860              	.LFB199:
1437:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RXEN;
 2861              		.loc 1 1437 0
 2862              		.cfi_startproc
 2863              		@ args = 0, pretend = 0, frame = 0
 2864              		@ frame_needed = 0, uses_anonymous_args = 0
 2865              		@ link register save eliminated.
 2866              	.LVL205:
1438:../asf/sam/drivers/usart/usart.c **** }
 2867              		.loc 1 1438 0
 2868 0000 1023     		movs	r3, #16
 2869 0002 0360     		str	r3, [r0]
 2870 0004 7047     		bx	lr
 2871              		.cfi_endproc
 2872              	.LFE199:
 2873              		.size	usart_enable_rx, .-usart_enable_rx
 2874 0006 00BF     		.section	.text.usart_disable_rx,"ax",%progbits
 2875              		.align	1
 2876              		.p2align 2,,3
 2877              		.global	usart_disable_rx
 2878              		.syntax unified
 2879              		.thumb
 2880              		.thumb_func
 2881              		.fpu fpv5-d16
 2882              		.type	usart_disable_rx, %function
 2883              	usart_disable_rx:
 2884              	.LFB200:
1447:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RXDIS;
 2885              		.loc 1 1447 0
 2886              		.cfi_startproc
 2887              		@ args = 0, pretend = 0, frame = 0
 2888              		@ frame_needed = 0, uses_anonymous_args = 0
 2889              		@ link register save eliminated.
 2890              	.LVL206:
1448:../asf/sam/drivers/usart/usart.c **** }
 2891              		.loc 1 1448 0
 2892 0000 2023     		movs	r3, #32
 2893 0002 0360     		str	r3, [r0]
ARM GAS  /tmp/ccJYkMjP.s 			page 92


 2894 0004 7047     		bx	lr
 2895              		.cfi_endproc
 2896              	.LFE200:
 2897              		.size	usart_disable_rx, .-usart_disable_rx
 2898 0006 00BF     		.section	.text.usart_reset_rx,"ax",%progbits
 2899              		.align	1
 2900              		.p2align 2,,3
 2901              		.global	usart_reset_rx
 2902              		.syntax unified
 2903              		.thumb
 2904              		.thumb_func
 2905              		.fpu fpv5-d16
 2906              		.type	usart_reset_rx, %function
 2907              	usart_reset_rx:
 2908              	.LFB201:
1457:../asf/sam/drivers/usart/usart.c **** 	/* Reset Receiver */
 2909              		.loc 1 1457 0
 2910              		.cfi_startproc
 2911              		@ args = 0, pretend = 0, frame = 0
 2912              		@ frame_needed = 0, uses_anonymous_args = 0
 2913              		@ link register save eliminated.
 2914              	.LVL207:
1459:../asf/sam/drivers/usart/usart.c **** }
 2915              		.loc 1 1459 0
 2916 0000 2423     		movs	r3, #36
 2917 0002 0360     		str	r3, [r0]
 2918 0004 7047     		bx	lr
 2919              		.cfi_endproc
 2920              	.LFE201:
 2921              		.size	usart_reset_rx, .-usart_reset_rx
 2922 0006 00BF     		.section	.text.usart_set_rx_timeout,"ax",%progbits
 2923              		.align	1
 2924              		.p2align 2,,3
 2925              		.global	usart_set_rx_timeout
 2926              		.syntax unified
 2927              		.thumb
 2928              		.thumb_func
 2929              		.fpu fpv5-d16
 2930              		.type	usart_set_rx_timeout, %function
 2931              	usart_set_rx_timeout:
 2932              	.LFB202:
1469:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_RTOR = timeout;
 2933              		.loc 1 1469 0
 2934              		.cfi_startproc
 2935              		@ args = 0, pretend = 0, frame = 0
 2936              		@ frame_needed = 0, uses_anonymous_args = 0
 2937              		@ link register save eliminated.
 2938              	.LVL208:
1470:../asf/sam/drivers/usart/usart.c **** }
 2939              		.loc 1 1470 0
 2940 0000 4162     		str	r1, [r0, #36]
 2941 0002 7047     		bx	lr
 2942              		.cfi_endproc
 2943              	.LFE202:
 2944              		.size	usart_set_rx_timeout, .-usart_set_rx_timeout
 2945              		.section	.text.usart_enable_interrupt,"ax",%progbits
 2946              		.align	1
ARM GAS  /tmp/ccJYkMjP.s 			page 93


 2947              		.p2align 2,,3
 2948              		.global	usart_enable_interrupt
 2949              		.syntax unified
 2950              		.thumb
 2951              		.thumb_func
 2952              		.fpu fpv5-d16
 2953              		.type	usart_enable_interrupt, %function
 2954              	usart_enable_interrupt:
 2955              	.LFB203:
1480:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_IER = ul_sources;
 2956              		.loc 1 1480 0
 2957              		.cfi_startproc
 2958              		@ args = 0, pretend = 0, frame = 0
 2959              		@ frame_needed = 0, uses_anonymous_args = 0
 2960              		@ link register save eliminated.
 2961              	.LVL209:
1481:../asf/sam/drivers/usart/usart.c **** }
 2962              		.loc 1 1481 0
 2963 0000 8160     		str	r1, [r0, #8]
 2964 0002 7047     		bx	lr
 2965              		.cfi_endproc
 2966              	.LFE203:
 2967              		.size	usart_enable_interrupt, .-usart_enable_interrupt
 2968              		.section	.text.usart_disable_interrupt,"ax",%progbits
 2969              		.align	1
 2970              		.p2align 2,,3
 2971              		.global	usart_disable_interrupt
 2972              		.syntax unified
 2973              		.thumb
 2974              		.thumb_func
 2975              		.fpu fpv5-d16
 2976              		.type	usart_disable_interrupt, %function
 2977              	usart_disable_interrupt:
 2978              	.LFB204:
1491:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_IDR = ul_sources;
 2979              		.loc 1 1491 0
 2980              		.cfi_startproc
 2981              		@ args = 0, pretend = 0, frame = 0
 2982              		@ frame_needed = 0, uses_anonymous_args = 0
 2983              		@ link register save eliminated.
 2984              	.LVL210:
1492:../asf/sam/drivers/usart/usart.c **** }
 2985              		.loc 1 1492 0
 2986 0000 C160     		str	r1, [r0, #12]
 2987 0002 7047     		bx	lr
 2988              		.cfi_endproc
 2989              	.LFE204:
 2990              		.size	usart_disable_interrupt, .-usart_disable_interrupt
 2991              		.section	.text.usart_get_interrupt_mask,"ax",%progbits
 2992              		.align	1
 2993              		.p2align 2,,3
 2994              		.global	usart_get_interrupt_mask
 2995              		.syntax unified
 2996              		.thumb
 2997              		.thumb_func
 2998              		.fpu fpv5-d16
 2999              		.type	usart_get_interrupt_mask, %function
ARM GAS  /tmp/ccJYkMjP.s 			page 94


 3000              	usart_get_interrupt_mask:
 3001              	.LFB205:
1503:../asf/sam/drivers/usart/usart.c **** 	return p_usart->US_IMR;
 3002              		.loc 1 1503 0
 3003              		.cfi_startproc
 3004              		@ args = 0, pretend = 0, frame = 0
 3005              		@ frame_needed = 0, uses_anonymous_args = 0
 3006              		@ link register save eliminated.
 3007              	.LVL211:
1504:../asf/sam/drivers/usart/usart.c **** }
 3008              		.loc 1 1504 0
 3009 0000 0069     		ldr	r0, [r0, #16]
 3010              	.LVL212:
1505:../asf/sam/drivers/usart/usart.c **** 
 3011              		.loc 1 1505 0
 3012 0002 7047     		bx	lr
 3013              		.cfi_endproc
 3014              	.LFE205:
 3015              		.size	usart_get_interrupt_mask, .-usart_get_interrupt_mask
 3016              		.section	.text.usart_get_status,"ax",%progbits
 3017              		.align	1
 3018              		.p2align 2,,3
 3019              		.global	usart_get_status
 3020              		.syntax unified
 3021              		.thumb
 3022              		.thumb_func
 3023              		.fpu fpv5-d16
 3024              		.type	usart_get_status, %function
 3025              	usart_get_status:
 3026              	.LFB206:
1515:../asf/sam/drivers/usart/usart.c **** 	return p_usart->US_CSR;
 3027              		.loc 1 1515 0
 3028              		.cfi_startproc
 3029              		@ args = 0, pretend = 0, frame = 0
 3030              		@ frame_needed = 0, uses_anonymous_args = 0
 3031              		@ link register save eliminated.
 3032              	.LVL213:
1516:../asf/sam/drivers/usart/usart.c **** }
 3033              		.loc 1 1516 0
 3034 0000 4069     		ldr	r0, [r0, #20]
 3035              	.LVL214:
1517:../asf/sam/drivers/usart/usart.c **** 
 3036              		.loc 1 1517 0
 3037 0002 7047     		bx	lr
 3038              		.cfi_endproc
 3039              	.LFE206:
 3040              		.size	usart_get_status, .-usart_get_status
 3041              		.section	.text.usart_reset_status,"ax",%progbits
 3042              		.align	1
 3043              		.p2align 2,,3
 3044              		.global	usart_reset_status
 3045              		.syntax unified
 3046              		.thumb
 3047              		.thumb_func
 3048              		.fpu fpv5-d16
 3049              		.type	usart_reset_status, %function
 3050              	usart_reset_status:
ARM GAS  /tmp/ccJYkMjP.s 			page 95


 3051              	.LFB207:
1525:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RSTSTA;
 3052              		.loc 1 1525 0
 3053              		.cfi_startproc
 3054              		@ args = 0, pretend = 0, frame = 0
 3055              		@ frame_needed = 0, uses_anonymous_args = 0
 3056              		@ link register save eliminated.
 3057              	.LVL215:
1526:../asf/sam/drivers/usart/usart.c **** }
 3058              		.loc 1 1526 0
 3059 0000 4FF48073 		mov	r3, #256
 3060 0004 0360     		str	r3, [r0]
 3061 0006 7047     		bx	lr
 3062              		.cfi_endproc
 3063              	.LFE207:
 3064              		.size	usart_reset_status, .-usart_reset_status
 3065              		.section	.text.usart_start_tx_break,"ax",%progbits
 3066              		.align	1
 3067              		.p2align 2,,3
 3068              		.global	usart_start_tx_break
 3069              		.syntax unified
 3070              		.thumb
 3071              		.thumb_func
 3072              		.fpu fpv5-d16
 3073              		.type	usart_start_tx_break, %function
 3074              	usart_start_tx_break:
 3075              	.LFB208:
1535:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_STTBRK;
 3076              		.loc 1 1535 0
 3077              		.cfi_startproc
 3078              		@ args = 0, pretend = 0, frame = 0
 3079              		@ frame_needed = 0, uses_anonymous_args = 0
 3080              		@ link register save eliminated.
 3081              	.LVL216:
1536:../asf/sam/drivers/usart/usart.c **** }
 3082              		.loc 1 1536 0
 3083 0000 4FF40073 		mov	r3, #512
 3084 0004 0360     		str	r3, [r0]
 3085 0006 7047     		bx	lr
 3086              		.cfi_endproc
 3087              	.LFE208:
 3088              		.size	usart_start_tx_break, .-usart_start_tx_break
 3089              		.section	.text.usart_stop_tx_break,"ax",%progbits
 3090              		.align	1
 3091              		.p2align 2,,3
 3092              		.global	usart_stop_tx_break
 3093              		.syntax unified
 3094              		.thumb
 3095              		.thumb_func
 3096              		.fpu fpv5-d16
 3097              		.type	usart_stop_tx_break, %function
 3098              	usart_stop_tx_break:
 3099              	.LFB209:
1545:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_STPBRK;
 3100              		.loc 1 1545 0
 3101              		.cfi_startproc
 3102              		@ args = 0, pretend = 0, frame = 0
ARM GAS  /tmp/ccJYkMjP.s 			page 96


 3103              		@ frame_needed = 0, uses_anonymous_args = 0
 3104              		@ link register save eliminated.
 3105              	.LVL217:
1546:../asf/sam/drivers/usart/usart.c **** }
 3106              		.loc 1 1546 0
 3107 0000 4FF48063 		mov	r3, #1024
 3108 0004 0360     		str	r3, [r0]
 3109 0006 7047     		bx	lr
 3110              		.cfi_endproc
 3111              	.LFE209:
 3112              		.size	usart_stop_tx_break, .-usart_stop_tx_break
 3113              		.section	.text.usart_start_rx_timeout,"ax",%progbits
 3114              		.align	1
 3115              		.p2align 2,,3
 3116              		.global	usart_start_rx_timeout
 3117              		.syntax unified
 3118              		.thumb
 3119              		.thumb_func
 3120              		.fpu fpv5-d16
 3121              		.type	usart_start_rx_timeout, %function
 3122              	usart_start_rx_timeout:
 3123              	.LFB210:
1556:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_STTTO;
 3124              		.loc 1 1556 0
 3125              		.cfi_startproc
 3126              		@ args = 0, pretend = 0, frame = 0
 3127              		@ frame_needed = 0, uses_anonymous_args = 0
 3128              		@ link register save eliminated.
 3129              	.LVL218:
1557:../asf/sam/drivers/usart/usart.c **** }
 3130              		.loc 1 1557 0
 3131 0000 4FF40063 		mov	r3, #2048
 3132 0004 0360     		str	r3, [r0]
 3133 0006 7047     		bx	lr
 3134              		.cfi_endproc
 3135              	.LFE210:
 3136              		.size	usart_start_rx_timeout, .-usart_start_rx_timeout
 3137              		.section	.text.usart_send_address,"ax",%progbits
 3138              		.align	1
 3139              		.p2align 2,,3
 3140              		.global	usart_send_address
 3141              		.syntax unified
 3142              		.thumb
 3143              		.thumb_func
 3144              		.fpu fpv5-d16
 3145              		.type	usart_send_address, %function
 3146              	usart_send_address:
 3147              	.LFB211:
1571:../asf/sam/drivers/usart/usart.c **** 	if ((p_usart->US_MR & US_MR_PAR_MULTIDROP) != US_MR_PAR_MULTIDROP) {
 3148              		.loc 1 1571 0
 3149              		.cfi_startproc
 3150              		@ args = 0, pretend = 0, frame = 0
 3151              		@ frame_needed = 0, uses_anonymous_args = 0
 3152              		@ link register save eliminated.
 3153              	.LVL219:
1572:../asf/sam/drivers/usart/usart.c **** 		return 1;
 3154              		.loc 1 1572 0
ARM GAS  /tmp/ccJYkMjP.s 			page 97


 3155 0000 4368     		ldr	r3, [r0, #4]
1571:../asf/sam/drivers/usart/usart.c **** 	if ((p_usart->US_MR & US_MR_PAR_MULTIDROP) != US_MR_PAR_MULTIDROP) {
 3156              		.loc 1 1571 0
 3157 0002 0246     		mov	r2, r0
1572:../asf/sam/drivers/usart/usart.c **** 		return 1;
 3158              		.loc 1 1572 0
 3159 0004 03F44063 		and	r3, r3, #3072
 3160 0008 B3F5406F 		cmp	r3, #3072
 3161 000c 01D0     		beq	.L148
 3162              	.L150:
1573:../asf/sam/drivers/usart/usart.c **** 	}
 3163              		.loc 1 1573 0
 3164 000e 0120     		movs	r0, #1
 3165              	.LVL220:
 3166 0010 7047     		bx	lr
 3167              	.LVL221:
 3168              	.L148:
1576:../asf/sam/drivers/usart/usart.c **** 
 3169              		.loc 1 1576 0
 3170 0012 4FF48053 		mov	r3, #4096
 3171 0016 0360     		str	r3, [r0]
 3172              	.LVL222:
 3173              	.LBB431:
 3174              	.LBB432:
1716:../asf/sam/drivers/usart/usart.c **** 		return 1;
 3175              		.loc 1 1716 0
 3176 0018 4369     		ldr	r3, [r0, #20]
 3177 001a 9B07     		lsls	r3, r3, #30
 3178 001c F7D5     		bpl	.L150
1720:../asf/sam/drivers/usart/usart.c **** 	return 0;
 3179              		.loc 1 1720 0
 3180 001e C1F30801 		ubfx	r1, r1, #0, #9
 3181              	.LVL223:
 3182              	.LBE432:
 3183              	.LBE431:
1581:../asf/sam/drivers/usart/usart.c **** 	}
 3184              		.loc 1 1581 0
 3185 0022 0020     		movs	r0, #0
 3186              	.LVL224:
 3187              	.LBB434:
 3188              	.LBB433:
1720:../asf/sam/drivers/usart/usart.c **** 	return 0;
 3189              		.loc 1 1720 0
 3190 0024 D161     		str	r1, [r2, #28]
 3191              	.LVL225:
 3192              	.LBE433:
 3193              	.LBE434:
1583:../asf/sam/drivers/usart/usart.c **** 
 3194              		.loc 1 1583 0
 3195 0026 7047     		bx	lr
 3196              		.cfi_endproc
 3197              	.LFE211:
 3198              		.size	usart_send_address, .-usart_send_address
 3199              		.section	.text.usart_restart_rx_timeout,"ax",%progbits
 3200              		.align	1
 3201              		.p2align 2,,3
 3202              		.global	usart_restart_rx_timeout
ARM GAS  /tmp/ccJYkMjP.s 			page 98


 3203              		.syntax unified
 3204              		.thumb
 3205              		.thumb_func
 3206              		.fpu fpv5-d16
 3207              		.type	usart_restart_rx_timeout, %function
 3208              	usart_restart_rx_timeout:
 3209              	.LFB212:
1591:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RETTO;
 3210              		.loc 1 1591 0
 3211              		.cfi_startproc
 3212              		@ args = 0, pretend = 0, frame = 0
 3213              		@ frame_needed = 0, uses_anonymous_args = 0
 3214              		@ link register save eliminated.
 3215              	.LVL226:
1592:../asf/sam/drivers/usart/usart.c **** }
 3216              		.loc 1 1592 0
 3217 0000 4FF40043 		mov	r3, #32768
 3218 0004 0360     		str	r3, [r0]
 3219 0006 7047     		bx	lr
 3220              		.cfi_endproc
 3221              	.LFE212:
 3222              		.size	usart_restart_rx_timeout, .-usart_restart_rx_timeout
 3223              		.section	.text.usart_drive_RTS_pin_low,"ax",%progbits
 3224              		.align	1
 3225              		.p2align 2,,3
 3226              		.global	usart_drive_RTS_pin_low
 3227              		.syntax unified
 3228              		.thumb
 3229              		.thumb_func
 3230              		.fpu fpv5-d16
 3231              		.type	usart_drive_RTS_pin_low, %function
 3232              	usart_drive_RTS_pin_low:
 3233              	.LFB234:
 3234              		.cfi_startproc
 3235              		@ args = 0, pretend = 0, frame = 0
 3236              		@ frame_needed = 0, uses_anonymous_args = 0
 3237              		@ link register save eliminated.
 3238 0000 4FF48023 		mov	r3, #262144
 3239 0004 0360     		str	r3, [r0]
 3240 0006 7047     		bx	lr
 3241              		.cfi_endproc
 3242              	.LFE234:
 3243              		.size	usart_drive_RTS_pin_low, .-usart_drive_RTS_pin_low
 3244              		.section	.text.usart_drive_RTS_pin_high,"ax",%progbits
 3245              		.align	1
 3246              		.p2align 2,,3
 3247              		.global	usart_drive_RTS_pin_high
 3248              		.syntax unified
 3249              		.thumb
 3250              		.thumb_func
 3251              		.fpu fpv5-d16
 3252              		.type	usart_drive_RTS_pin_high, %function
 3253              	usart_drive_RTS_pin_high:
 3254              	.LFB232:
 3255              		.cfi_startproc
 3256              		@ args = 0, pretend = 0, frame = 0
 3257              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccJYkMjP.s 			page 99


 3258              		@ link register save eliminated.
 3259 0000 4FF40023 		mov	r3, #524288
 3260 0004 0360     		str	r3, [r0]
 3261 0006 7047     		bx	lr
 3262              		.cfi_endproc
 3263              	.LFE232:
 3264              		.size	usart_drive_RTS_pin_high, .-usart_drive_RTS_pin_high
 3265              		.section	.text.usart_spi_force_chip_select,"ax",%progbits
 3266              		.align	1
 3267              		.p2align 2,,3
 3268              		.global	usart_spi_force_chip_select
 3269              		.syntax unified
 3270              		.thumb
 3271              		.thumb_func
 3272              		.fpu fpv5-d16
 3273              		.type	usart_spi_force_chip_select, %function
 3274              	usart_spi_force_chip_select:
 3275              	.LFB215:
1645:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_FCS;
 3276              		.loc 1 1645 0
 3277              		.cfi_startproc
 3278              		@ args = 0, pretend = 0, frame = 0
 3279              		@ frame_needed = 0, uses_anonymous_args = 0
 3280              		@ link register save eliminated.
 3281              	.LVL227:
1646:../asf/sam/drivers/usart/usart.c **** }
 3282              		.loc 1 1646 0
 3283 0000 4FF48023 		mov	r3, #262144
 3284 0004 0360     		str	r3, [r0]
 3285 0006 7047     		bx	lr
 3286              		.cfi_endproc
 3287              	.LFE215:
 3288              		.size	usart_spi_force_chip_select, .-usart_spi_force_chip_select
 3289              		.section	.text.usart_spi_release_chip_select,"ax",%progbits
 3290              		.align	1
 3291              		.p2align 2,,3
 3292              		.global	usart_spi_release_chip_select
 3293              		.syntax unified
 3294              		.thumb
 3295              		.thumb_func
 3296              		.fpu fpv5-d16
 3297              		.type	usart_spi_release_chip_select, %function
 3298              	usart_spi_release_chip_select:
 3299              	.LFB216:
1655:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_CR = US_CR_RCS;
 3300              		.loc 1 1655 0
 3301              		.cfi_startproc
 3302              		@ args = 0, pretend = 0, frame = 0
 3303              		@ frame_needed = 0, uses_anonymous_args = 0
 3304              		@ link register save eliminated.
 3305              	.LVL228:
1656:../asf/sam/drivers/usart/usart.c **** }
 3306              		.loc 1 1656 0
 3307 0000 4FF40023 		mov	r3, #524288
 3308 0004 0360     		str	r3, [r0]
 3309 0006 7047     		bx	lr
 3310              		.cfi_endproc
ARM GAS  /tmp/ccJYkMjP.s 			page 100


 3311              	.LFE216:
 3312              		.size	usart_spi_release_chip_select, .-usart_spi_release_chip_select
 3313              		.section	.text.usart_is_tx_ready,"ax",%progbits
 3314              		.align	1
 3315              		.p2align 2,,3
 3316              		.global	usart_is_tx_ready
 3317              		.syntax unified
 3318              		.thumb
 3319              		.thumb_func
 3320              		.fpu fpv5-d16
 3321              		.type	usart_is_tx_ready, %function
 3322              	usart_is_tx_ready:
 3323              	.LFB217:
1670:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_CSR & US_CSR_TXRDY) > 0;
 3324              		.loc 1 1670 0
 3325              		.cfi_startproc
 3326              		@ args = 0, pretend = 0, frame = 0
 3327              		@ frame_needed = 0, uses_anonymous_args = 0
 3328              		@ link register save eliminated.
 3329              	.LVL229:
1671:../asf/sam/drivers/usart/usart.c **** }
 3330              		.loc 1 1671 0
 3331 0000 4069     		ldr	r0, [r0, #20]
 3332              	.LVL230:
1672:../asf/sam/drivers/usart/usart.c **** 
 3333              		.loc 1 1672 0
 3334 0002 C0F34000 		ubfx	r0, r0, #1, #1
 3335 0006 7047     		bx	lr
 3336              		.cfi_endproc
 3337              	.LFE217:
 3338              		.size	usart_is_tx_ready, .-usart_is_tx_ready
 3339              		.section	.text.usart_is_tx_empty,"ax",%progbits
 3340              		.align	1
 3341              		.p2align 2,,3
 3342              		.global	usart_is_tx_empty
 3343              		.syntax unified
 3344              		.thumb
 3345              		.thumb_func
 3346              		.fpu fpv5-d16
 3347              		.type	usart_is_tx_empty, %function
 3348              	usart_is_tx_empty:
 3349              	.LFB218:
1685:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_CSR & US_CSR_TXEMPTY) > 0;
 3350              		.loc 1 1685 0
 3351              		.cfi_startproc
 3352              		@ args = 0, pretend = 0, frame = 0
 3353              		@ frame_needed = 0, uses_anonymous_args = 0
 3354              		@ link register save eliminated.
 3355              	.LVL231:
1686:../asf/sam/drivers/usart/usart.c **** }
 3356              		.loc 1 1686 0
 3357 0000 4069     		ldr	r0, [r0, #20]
 3358              	.LVL232:
1687:../asf/sam/drivers/usart/usart.c **** 
 3359              		.loc 1 1687 0
 3360 0002 C0F34020 		ubfx	r0, r0, #9, #1
 3361 0006 7047     		bx	lr
ARM GAS  /tmp/ccJYkMjP.s 			page 101


 3362              		.cfi_endproc
 3363              	.LFE218:
 3364              		.size	usart_is_tx_empty, .-usart_is_tx_empty
 3365              		.section	.text.usart_is_rx_ready,"ax",%progbits
 3366              		.align	1
 3367              		.p2align 2,,3
 3368              		.global	usart_is_rx_ready
 3369              		.syntax unified
 3370              		.thumb
 3371              		.thumb_func
 3372              		.fpu fpv5-d16
 3373              		.type	usart_is_rx_ready, %function
 3374              	usart_is_rx_ready:
 3375              	.LFB219:
1699:../asf/sam/drivers/usart/usart.c **** 	return (p_usart->US_CSR & US_CSR_RXRDY) > 0;
 3376              		.loc 1 1699 0
 3377              		.cfi_startproc
 3378              		@ args = 0, pretend = 0, frame = 0
 3379              		@ frame_needed = 0, uses_anonymous_args = 0
 3380              		@ link register save eliminated.
 3381              	.LVL233:
1700:../asf/sam/drivers/usart/usart.c **** }
 3382              		.loc 1 1700 0
 3383 0000 4069     		ldr	r0, [r0, #20]
 3384              	.LVL234:
1701:../asf/sam/drivers/usart/usart.c **** 
 3385              		.loc 1 1701 0
 3386 0002 00F00100 		and	r0, r0, #1
 3387 0006 7047     		bx	lr
 3388              		.cfi_endproc
 3389              	.LFE219:
 3390              		.size	usart_is_rx_ready, .-usart_is_rx_ready
 3391              		.section	.text.usart_write,"ax",%progbits
 3392              		.align	1
 3393              		.p2align 2,,3
 3394              		.global	usart_write
 3395              		.syntax unified
 3396              		.thumb
 3397              		.thumb_func
 3398              		.fpu fpv5-d16
 3399              		.type	usart_write, %function
 3400              	usart_write:
 3401              	.LFB220:
1715:../asf/sam/drivers/usart/usart.c **** 	if (!(p_usart->US_CSR & US_CSR_TXRDY)) {
 3402              		.loc 1 1715 0
 3403              		.cfi_startproc
 3404              		@ args = 0, pretend = 0, frame = 0
 3405              		@ frame_needed = 0, uses_anonymous_args = 0
 3406              		@ link register save eliminated.
 3407              	.LVL235:
1716:../asf/sam/drivers/usart/usart.c **** 		return 1;
 3408              		.loc 1 1716 0
 3409 0000 4269     		ldr	r2, [r0, #20]
1715:../asf/sam/drivers/usart/usart.c **** 	if (!(p_usart->US_CSR & US_CSR_TXRDY)) {
 3410              		.loc 1 1715 0
 3411 0002 0346     		mov	r3, r0
1716:../asf/sam/drivers/usart/usart.c **** 		return 1;
ARM GAS  /tmp/ccJYkMjP.s 			page 102


 3412              		.loc 1 1716 0
 3413 0004 9207     		lsls	r2, r2, #30
 3414 0006 04D5     		bpl	.L164
1720:../asf/sam/drivers/usart/usart.c **** 	return 0;
 3415              		.loc 1 1720 0
 3416 0008 C1F30801 		ubfx	r1, r1, #0, #9
 3417              	.LVL236:
1721:../asf/sam/drivers/usart/usart.c **** }
 3418              		.loc 1 1721 0
 3419 000c 0020     		movs	r0, #0
 3420              	.LVL237:
1720:../asf/sam/drivers/usart/usart.c **** 	return 0;
 3421              		.loc 1 1720 0
 3422 000e D961     		str	r1, [r3, #28]
1721:../asf/sam/drivers/usart/usart.c **** }
 3423              		.loc 1 1721 0
 3424 0010 7047     		bx	lr
 3425              	.LVL238:
 3426              	.L164:
1717:../asf/sam/drivers/usart/usart.c **** 	}
 3427              		.loc 1 1717 0
 3428 0012 0120     		movs	r0, #1
 3429              	.LVL239:
1722:../asf/sam/drivers/usart/usart.c **** 
 3430              		.loc 1 1722 0
 3431 0014 7047     		bx	lr
 3432              		.cfi_endproc
 3433              	.LFE220:
 3434              		.size	usart_write, .-usart_write
 3435 0016 00BF     		.section	.text.usart_putchar,"ax",%progbits
 3436              		.align	1
 3437              		.p2align 2,,3
 3438              		.global	usart_putchar
 3439              		.syntax unified
 3440              		.thumb
 3441              		.thumb_func
 3442              		.fpu fpv5-d16
 3443              		.type	usart_putchar, %function
 3444              	usart_putchar:
 3445              	.LFB221:
1736:../asf/sam/drivers/usart/usart.c **** 	while (!(p_usart->US_CSR & US_CSR_TXRDY)) {
 3446              		.loc 1 1736 0
 3447              		.cfi_startproc
 3448              		@ args = 0, pretend = 0, frame = 0
 3449              		@ frame_needed = 0, uses_anonymous_args = 0
 3450              		@ link register save eliminated.
 3451              	.LVL240:
 3452 0000 0246     		mov	r2, r0
 3453              	.L166:
1737:../asf/sam/drivers/usart/usart.c **** 	}
 3454              		.loc 1 1737 0 discriminator 1
 3455 0002 5369     		ldr	r3, [r2, #20]
 3456 0004 9B07     		lsls	r3, r3, #30
 3457 0006 FCD5     		bpl	.L166
1740:../asf/sam/drivers/usart/usart.c **** 
 3458              		.loc 1 1740 0
 3459 0008 C1F30801 		ubfx	r1, r1, #0, #9
ARM GAS  /tmp/ccJYkMjP.s 			page 103


 3460              	.LVL241:
1743:../asf/sam/drivers/usart/usart.c **** 
 3461              		.loc 1 1743 0
 3462 000c 0020     		movs	r0, #0
 3463              	.LVL242:
1740:../asf/sam/drivers/usart/usart.c **** 
 3464              		.loc 1 1740 0
 3465 000e D161     		str	r1, [r2, #28]
1743:../asf/sam/drivers/usart/usart.c **** 
 3466              		.loc 1 1743 0
 3467 0010 7047     		bx	lr
 3468              		.cfi_endproc
 3469              	.LFE221:
 3470              		.size	usart_putchar, .-usart_putchar
 3471 0012 00BF     		.section	.text.usart_write_line,"ax",%progbits
 3472              		.align	1
 3473              		.p2align 2,,3
 3474              		.global	usart_write_line
 3475              		.syntax unified
 3476              		.thumb
 3477              		.thumb_func
 3478              		.fpu fpv5-d16
 3479              		.type	usart_write_line, %function
 3480              	usart_write_line:
 3481              	.LFB222:
1752:../asf/sam/drivers/usart/usart.c **** 	while (*string != '\0') {
 3482              		.loc 1 1752 0
 3483              		.cfi_startproc
 3484              		@ args = 0, pretend = 0, frame = 0
 3485              		@ frame_needed = 0, uses_anonymous_args = 0
 3486              		@ link register save eliminated.
 3487              	.LVL243:
1753:../asf/sam/drivers/usart/usart.c **** 		usart_putchar(p_usart, *string++);
 3488              		.loc 1 1753 0
 3489 0000 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 3490 0002 3AB1     		cbz	r2, .L169
 3491              	.LVL244:
 3492              	.L171:
 3493              	.LBB435:
 3494              	.LBB436:
1737:../asf/sam/drivers/usart/usart.c **** 	}
 3495              		.loc 1 1737 0
 3496 0004 4369     		ldr	r3, [r0, #20]
 3497 0006 9B07     		lsls	r3, r3, #30
 3498 0008 FCD5     		bpl	.L171
1740:../asf/sam/drivers/usart/usart.c **** 
 3499              		.loc 1 1740 0
 3500 000a C261     		str	r2, [r0, #28]
 3501              	.LBE436:
 3502              	.LBE435:
1753:../asf/sam/drivers/usart/usart.c **** 		usart_putchar(p_usart, *string++);
 3503              		.loc 1 1753 0
 3504 000c 11F8012F 		ldrb	r2, [r1, #1]!	@ zero_extendqisi2
 3505 0010 002A     		cmp	r2, #0
 3506 0012 F7D1     		bne	.L171
 3507              	.L169:
 3508 0014 7047     		bx	lr
ARM GAS  /tmp/ccJYkMjP.s 			page 104


 3509              		.cfi_endproc
 3510              	.LFE222:
 3511              		.size	usart_write_line, .-usart_write_line
 3512 0016 00BF     		.section	.text.usart_read,"ax",%progbits
 3513              		.align	1
 3514              		.p2align 2,,3
 3515              		.global	usart_read
 3516              		.syntax unified
 3517              		.thumb
 3518              		.thumb_func
 3519              		.fpu fpv5-d16
 3520              		.type	usart_read, %function
 3521              	usart_read:
 3522              	.LFB223:
1770:../asf/sam/drivers/usart/usart.c **** 	if (!(p_usart->US_CSR & US_CSR_RXRDY)) {
 3523              		.loc 1 1770 0
 3524              		.cfi_startproc
 3525              		@ args = 0, pretend = 0, frame = 0
 3526              		@ frame_needed = 0, uses_anonymous_args = 0
 3527              		@ link register save eliminated.
 3528              	.LVL245:
1771:../asf/sam/drivers/usart/usart.c **** 		return 1;
 3529              		.loc 1 1771 0
 3530 0000 4369     		ldr	r3, [r0, #20]
 3531 0002 DB07     		lsls	r3, r3, #31
 3532 0004 05D5     		bpl	.L179
1776:../asf/sam/drivers/usart/usart.c **** 
 3533              		.loc 1 1776 0
 3534 0006 8369     		ldr	r3, [r0, #24]
1778:../asf/sam/drivers/usart/usart.c **** }
 3535              		.loc 1 1778 0
 3536 0008 0020     		movs	r0, #0
 3537              	.LVL246:
1776:../asf/sam/drivers/usart/usart.c **** 
 3538              		.loc 1 1776 0
 3539 000a C3F30803 		ubfx	r3, r3, #0, #9
 3540 000e 0B60     		str	r3, [r1]
1778:../asf/sam/drivers/usart/usart.c **** }
 3541              		.loc 1 1778 0
 3542 0010 7047     		bx	lr
 3543              	.LVL247:
 3544              	.L179:
1772:../asf/sam/drivers/usart/usart.c **** 	}
 3545              		.loc 1 1772 0
 3546 0012 0120     		movs	r0, #1
 3547              	.LVL248:
1779:../asf/sam/drivers/usart/usart.c **** 
 3548              		.loc 1 1779 0
 3549 0014 7047     		bx	lr
 3550              		.cfi_endproc
 3551              	.LFE223:
 3552              		.size	usart_read, .-usart_read
 3553 0016 00BF     		.section	.text.usart_getchar,"ax",%progbits
 3554              		.align	1
 3555              		.p2align 2,,3
 3556              		.global	usart_getchar
 3557              		.syntax unified
ARM GAS  /tmp/ccJYkMjP.s 			page 105


 3558              		.thumb
 3559              		.thumb_func
 3560              		.fpu fpv5-d16
 3561              		.type	usart_getchar, %function
 3562              	usart_getchar:
 3563              	.LFB224:
1792:../asf/sam/drivers/usart/usart.c **** 	/* Wait until it's not empty or timeout has reached. */
 3564              		.loc 1 1792 0
 3565              		.cfi_startproc
 3566              		@ args = 0, pretend = 0, frame = 0
 3567              		@ frame_needed = 0, uses_anonymous_args = 0
 3568              		@ link register save eliminated.
 3569              	.LVL249:
 3570              	.L181:
1794:../asf/sam/drivers/usart/usart.c **** 	}
 3571              		.loc 1 1794 0 discriminator 1
 3572 0000 4369     		ldr	r3, [r0, #20]
 3573 0002 DB07     		lsls	r3, r3, #31
 3574 0004 FCD5     		bpl	.L181
1798:../asf/sam/drivers/usart/usart.c **** 
 3575              		.loc 1 1798 0
 3576 0006 8369     		ldr	r3, [r0, #24]
1801:../asf/sam/drivers/usart/usart.c **** 
 3577              		.loc 1 1801 0
 3578 0008 0020     		movs	r0, #0
 3579              	.LVL250:
1798:../asf/sam/drivers/usart/usart.c **** 
 3580              		.loc 1 1798 0
 3581 000a C3F30803 		ubfx	r3, r3, #0, #9
 3582 000e 0B60     		str	r3, [r1]
1801:../asf/sam/drivers/usart/usart.c **** 
 3583              		.loc 1 1801 0
 3584 0010 7047     		bx	lr
 3585              		.cfi_endproc
 3586              	.LFE224:
 3587              		.size	usart_getchar, .-usart_getchar
 3588 0012 00BF     		.section	.text.usart_enable_writeprotect,"ax",%progbits
 3589              		.align	1
 3590              		.p2align 2,,3
 3591              		.global	usart_enable_writeprotect
 3592              		.syntax unified
 3593              		.thumb
 3594              		.thumb_func
 3595              		.fpu fpv5-d16
 3596              		.type	usart_enable_writeprotect, %function
 3597              	usart_enable_writeprotect:
 3598              	.LFB225:
1908:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_WPMR = US_WPMR_WPEN | US_WPMR_WPKEY_PASSWD;
 3599              		.loc 1 1908 0
 3600              		.cfi_startproc
 3601              		@ args = 0, pretend = 0, frame = 0
 3602              		@ frame_needed = 0, uses_anonymous_args = 0
 3603              		@ link register save eliminated.
 3604              	.LVL251:
1909:../asf/sam/drivers/usart/usart.c **** }
 3605              		.loc 1 1909 0
 3606 0000 014B     		ldr	r3, .L185
ARM GAS  /tmp/ccJYkMjP.s 			page 106


 3607 0002 C0F8E430 		str	r3, [r0, #228]
 3608 0006 7047     		bx	lr
 3609              	.L186:
 3610              		.align	2
 3611              	.L185:
 3612 0008 01415355 		.word	1431519489
 3613              		.cfi_endproc
 3614              	.LFE225:
 3615              		.size	usart_enable_writeprotect, .-usart_enable_writeprotect
 3616              		.section	.text.usart_disable_writeprotect,"ax",%progbits
 3617              		.align	1
 3618              		.p2align 2,,3
 3619              		.global	usart_disable_writeprotect
 3620              		.syntax unified
 3621              		.thumb
 3622              		.thumb_func
 3623              		.fpu fpv5-d16
 3624              		.type	usart_disable_writeprotect, %function
 3625              	usart_disable_writeprotect:
 3626              	.LFB226:
1918:../asf/sam/drivers/usart/usart.c **** 	p_usart->US_WPMR = US_WPMR_WPKEY_PASSWD;
 3627              		.loc 1 1918 0
 3628              		.cfi_startproc
 3629              		@ args = 0, pretend = 0, frame = 0
 3630              		@ frame_needed = 0, uses_anonymous_args = 0
 3631              		@ link register save eliminated.
 3632              	.LVL252:
 3633              		.loc 1 1919 0
 3634 0000 014B     		ldr	r3, .L188
 3635 0002 C0F8E430 		str	r3, [r0, #228]
 3636 0006 7047     		bx	lr
 3637              	.L189:
 3638              		.align	2
 3639              	.L188:
 3640 0008 00415355 		.word	1431519488
 3641              		.cfi_endproc
 3642              	.LFE226:
 3643              		.size	usart_disable_writeprotect, .-usart_disable_writeprotect
 3644              		.section	.text.usart_get_writeprotect_status,"ax",%progbits
 3645              		.align	1
 3646              		.p2align 2,,3
 3647              		.global	usart_get_writeprotect_status
 3648              		.syntax unified
 3649              		.thumb
 3650              		.thumb_func
 3651              		.fpu fpv5-d16
 3652              		.type	usart_get_writeprotect_status, %function
 3653              	usart_get_writeprotect_status:
 3654              	.LFB227:
1920:../asf/sam/drivers/usart/usart.c **** }
1921:../asf/sam/drivers/usart/usart.c **** 
1922:../asf/sam/drivers/usart/usart.c **** /**
1923:../asf/sam/drivers/usart/usart.c ****  * \brief Get write protect status.
1924:../asf/sam/drivers/usart/usart.c ****  *
1925:../asf/sam/drivers/usart/usart.c ****  * \param p_usart Pointer to a USART instance.
1926:../asf/sam/drivers/usart/usart.c ****  *
1927:../asf/sam/drivers/usart/usart.c ****  * \return 0 if no write protect violation occurred, or 16-bit write protect
ARM GAS  /tmp/ccJYkMjP.s 			page 107


1928:../asf/sam/drivers/usart/usart.c ****  * violation source.
1929:../asf/sam/drivers/usart/usart.c ****  */
1930:../asf/sam/drivers/usart/usart.c **** uint32_t usart_get_writeprotect_status(Usart *p_usart)
1931:../asf/sam/drivers/usart/usart.c **** {
 3655              		.loc 1 1931 0
 3656              		.cfi_startproc
 3657              		@ args = 0, pretend = 0, frame = 0
 3658              		@ frame_needed = 0, uses_anonymous_args = 0
 3659              		@ link register save eliminated.
 3660              	.LVL253:
1932:../asf/sam/drivers/usart/usart.c **** 	uint32_t reg_value;
1933:../asf/sam/drivers/usart/usart.c **** 
1934:../asf/sam/drivers/usart/usart.c **** 	reg_value = p_usart->US_WPSR;
 3661              		.loc 1 1934 0
 3662 0000 D0F8E830 		ldr	r3, [r0, #232]
 3663              	.LVL254:
1935:../asf/sam/drivers/usart/usart.c **** 	if (reg_value & US_WPSR_WPVS) {
 3664              		.loc 1 1935 0
 3665 0004 13F00100 		ands	r0, r3, #1
 3666              	.LVL255:
1936:../asf/sam/drivers/usart/usart.c **** 		return (reg_value & US_WPSR_WPVSRC_Msk) >> US_WPSR_WPVSRC_Pos;
 3667              		.loc 1 1936 0
 3668 0008 18BF     		it	ne
 3669 000a C3F30F20 		ubfxne	r0, r3, #8, #16
1937:../asf/sam/drivers/usart/usart.c **** 	} else {
1938:../asf/sam/drivers/usart/usart.c **** 		return 0;
1939:../asf/sam/drivers/usart/usart.c **** 	}
1940:../asf/sam/drivers/usart/usart.c **** }
 3670              		.loc 1 1940 0
 3671 000e 7047     		bx	lr
 3672              		.cfi_endproc
 3673              	.LFE227:
 3674              		.size	usart_get_writeprotect_status, .-usart_get_writeprotect_status
 3675              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 3676              		.align	2
 3677              		.type	cpu_irq_critical_section_counter, %object
 3678              		.size	cpu_irq_critical_section_counter, 4
 3679              	cpu_irq_critical_section_counter:
 3680 0000 00000000 		.space	4
 3681              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 3682              		.type	cpu_irq_prev_interrupt_state, %object
 3683              		.size	cpu_irq_prev_interrupt_state, 1
 3684              	cpu_irq_prev_interrupt_state:
 3685 0000 00       		.space	1
 3686              		.section	.bss.ul_reg_val.9297,"aw",%nobits
 3687              		.align	2
 3688              		.set	.LANCHOR0,. + 0
 3689              		.type	ul_reg_val.9297, %object
 3690              		.size	ul_reg_val.9297, 4
 3691              	ul_reg_val.9297:
 3692 0000 00000000 		.space	4
 3693              		.section	.bss.ul_reg_val.9324,"aw",%nobits
 3694              		.align	2
 3695              		.set	.LANCHOR1,. + 0
 3696              		.type	ul_reg_val.9324, %object
 3697              		.size	ul_reg_val.9324, 4
 3698              	ul_reg_val.9324:
ARM GAS  /tmp/ccJYkMjP.s 			page 108


 3699 0000 00000000 		.space	4
 3700              		.section	.bss.ul_reg_val.9335,"aw",%nobits
 3701              		.align	2
 3702              		.set	.LANCHOR2,. + 0
 3703              		.type	ul_reg_val.9335, %object
 3704              		.size	ul_reg_val.9335, 4
 3705              	ul_reg_val.9335:
 3706 0000 00000000 		.space	4
 3707              		.text
 3708              	.Letext0:
 3709              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 3710              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 3711              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 3712              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 3713              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/usar
 3714              		.file 7 "/usr/include/newlib/sys/lock.h"
 3715              		.file 8 "/usr/include/newlib/sys/_types.h"
 3716              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 3717              		.file 10 "/usr/include/newlib/sys/reent.h"
 3718              		.file 11 "/usr/include/newlib/stdlib.h"
 3719              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 3720              		.file 13 "../asf/sam/drivers/usart/usart.h"
 3721              		.section	.debug_info,"",%progbits
 3722              	.Ldebug_info0:
 3723 0000 D8250000 		.4byte	0x25d8
 3724 0004 0400     		.2byte	0x4
 3725 0006 00000000 		.4byte	.Ldebug_abbrev0
 3726 000a 04       		.byte	0x4
 3727 000b 01       		.uleb128 0x1
 3728 000c C70D0000 		.4byte	.LASF286
 3729 0010 0C       		.byte	0xc
 3730 0011 73050000 		.4byte	.LASF287
 3731 0015 68060000 		.4byte	.LASF288
 3732 0019 D8050000 		.4byte	.Ldebug_ranges0+0x5d8
 3733 001d 00000000 		.4byte	0
 3734 0021 00000000 		.4byte	.Ldebug_line0
 3735 0025 02       		.uleb128 0x2
 3736 0026 04       		.byte	0x4
 3737 0027 05       		.byte	0x5
 3738 0028 696E7400 		.ascii	"int\000"
 3739 002c 03       		.uleb128 0x3
 3740 002d 04       		.byte	0x4
 3741 002e 07       		.byte	0x7
 3742 002f 1C0C0000 		.4byte	.LASF0
 3743 0033 03       		.uleb128 0x3
 3744 0034 01       		.byte	0x1
 3745 0035 06       		.byte	0x6
 3746 0036 EA0E0000 		.4byte	.LASF1
 3747 003a 04       		.uleb128 0x4
 3748 003b D00B0000 		.4byte	.LASF5
 3749 003f 02       		.byte	0x2
 3750 0040 1D       		.byte	0x1d
 3751 0041 45000000 		.4byte	0x45
 3752 0045 03       		.uleb128 0x3
 3753 0046 01       		.byte	0x1
 3754 0047 08       		.byte	0x8
 3755 0048 860D0000 		.4byte	.LASF2
ARM GAS  /tmp/ccJYkMjP.s 			page 109


 3756 004c 03       		.uleb128 0x3
 3757 004d 02       		.byte	0x2
 3758 004e 05       		.byte	0x5
 3759 004f CB0A0000 		.4byte	.LASF3
 3760 0053 03       		.uleb128 0x3
 3761 0054 02       		.byte	0x2
 3762 0055 07       		.byte	0x7
 3763 0056 130F0000 		.4byte	.LASF4
 3764 005a 04       		.uleb128 0x4
 3765 005b 0A010000 		.4byte	.LASF6
 3766 005f 02       		.byte	0x2
 3767 0060 3F       		.byte	0x3f
 3768 0061 65000000 		.4byte	0x65
 3769 0065 03       		.uleb128 0x3
 3770 0066 04       		.byte	0x4
 3771 0067 05       		.byte	0x5
 3772 0068 00000000 		.4byte	.LASF7
 3773 006c 04       		.uleb128 0x4
 3774 006d A70A0000 		.4byte	.LASF8
 3775 0071 02       		.byte	0x2
 3776 0072 41       		.byte	0x41
 3777 0073 77000000 		.4byte	0x77
 3778 0077 03       		.uleb128 0x3
 3779 0078 04       		.byte	0x4
 3780 0079 07       		.byte	0x7
 3781 007a AE0C0000 		.4byte	.LASF9
 3782 007e 03       		.uleb128 0x3
 3783 007f 08       		.byte	0x8
 3784 0080 05       		.byte	0x5
 3785 0081 BF070000 		.4byte	.LASF10
 3786 0085 03       		.uleb128 0x3
 3787 0086 08       		.byte	0x8
 3788 0087 07       		.byte	0x7
 3789 0088 61030000 		.4byte	.LASF11
 3790 008c 04       		.uleb128 0x4
 3791 008d 25070000 		.4byte	.LASF12
 3792 0091 03       		.byte	0x3
 3793 0092 18       		.byte	0x18
 3794 0093 3A000000 		.4byte	0x3a
 3795 0097 04       		.uleb128 0x4
 3796 0098 280D0000 		.4byte	.LASF13
 3797 009c 03       		.byte	0x3
 3798 009d 2C       		.byte	0x2c
 3799 009e 5A000000 		.4byte	0x5a
 3800 00a2 05       		.uleb128 0x5
 3801 00a3 97000000 		.4byte	0x97
 3802 00a7 04       		.uleb128 0x4
 3803 00a8 94020000 		.4byte	.LASF14
 3804 00ac 03       		.byte	0x3
 3805 00ad 30       		.byte	0x30
 3806 00ae 6C000000 		.4byte	0x6c
 3807 00b2 05       		.uleb128 0x5
 3808 00b3 A7000000 		.4byte	0xa7
 3809 00b7 06       		.uleb128 0x6
 3810 00b8 B2000000 		.4byte	0xb2
 3811 00bc 07       		.uleb128 0x7
 3812 00bd 04       		.byte	0x4
ARM GAS  /tmp/ccJYkMjP.s 			page 110


 3813 00be 03       		.uleb128 0x3
 3814 00bf 04       		.byte	0x4
 3815 00c0 07       		.byte	0x7
 3816 00c1 920C0000 		.4byte	.LASF15
 3817 00c5 08       		.uleb128 0x8
 3818 00c6 F00A0000 		.4byte	.LASF16
 3819 00ca 04       		.byte	0x4
 3820 00cb 6508     		.2byte	0x865
 3821 00cd A2000000 		.4byte	0xa2
 3822 00d1 09       		.uleb128 0x9
 3823 00d2 560A0000 		.4byte	.LASF17
 3824 00d6 05       		.byte	0x5
 3825 00d7 3A       		.byte	0x3a
 3826 00d8 A7000000 		.4byte	0xa7
 3827 00dc 0A       		.uleb128 0xa
 3828 00dd B7000000 		.4byte	0xb7
 3829 00e1 EC000000 		.4byte	0xec
 3830 00e5 0B       		.uleb128 0xb
 3831 00e6 BE000000 		.4byte	0xbe
 3832 00ea 15       		.byte	0x15
 3833 00eb 00       		.byte	0
 3834 00ec 06       		.uleb128 0x6
 3835 00ed DC000000 		.4byte	0xdc
 3836 00f1 05       		.uleb128 0x5
 3837 00f2 EC000000 		.4byte	0xec
 3838 00f6 0C       		.uleb128 0xc
 3839 00f7 EC       		.byte	0xec
 3840 00f8 06       		.byte	0x6
 3841 00f9 38       		.byte	0x38
 3842 00fa 67020000 		.4byte	0x267
 3843 00fe 0D       		.uleb128 0xd
 3844 00ff 52050000 		.4byte	.LASF18
 3845 0103 06       		.byte	0x6
 3846 0104 39       		.byte	0x39
 3847 0105 B2000000 		.4byte	0xb2
 3848 0109 00       		.byte	0
 3849 010a 0D       		.uleb128 0xd
 3850 010b 44000000 		.4byte	.LASF19
 3851 010f 06       		.byte	0x6
 3852 0110 3A       		.byte	0x3a
 3853 0111 B2000000 		.4byte	0xb2
 3854 0115 04       		.byte	0x4
 3855 0116 0D       		.uleb128 0xd
 3856 0117 3F050000 		.4byte	.LASF20
 3857 011b 06       		.byte	0x6
 3858 011c 3B       		.byte	0x3b
 3859 011d B2000000 		.4byte	0xb2
 3860 0121 08       		.byte	0x8
 3861 0122 0D       		.uleb128 0xd
 3862 0123 25000000 		.4byte	.LASF21
 3863 0127 06       		.byte	0x6
 3864 0128 3C       		.byte	0x3c
 3865 0129 B2000000 		.4byte	0xb2
 3866 012d 0C       		.byte	0xc
 3867 012e 0D       		.uleb128 0xd
 3868 012f 9F0E0000 		.4byte	.LASF22
 3869 0133 06       		.byte	0x6
ARM GAS  /tmp/ccJYkMjP.s 			page 111


 3870 0134 3D       		.byte	0x3d
 3871 0135 B7000000 		.4byte	0xb7
 3872 0139 10       		.byte	0x10
 3873 013a 0D       		.uleb128 0xd
 3874 013b D20E0000 		.4byte	.LASF23
 3875 013f 06       		.byte	0x6
 3876 0140 3E       		.byte	0x3e
 3877 0141 B7000000 		.4byte	0xb7
 3878 0145 14       		.byte	0x14
 3879 0146 0D       		.uleb128 0xd
 3880 0147 320C0000 		.4byte	.LASF24
 3881 014b 06       		.byte	0x6
 3882 014c 3F       		.byte	0x3f
 3883 014d B7000000 		.4byte	0xb7
 3884 0151 18       		.byte	0x18
 3885 0152 0D       		.uleb128 0xd
 3886 0153 46050000 		.4byte	.LASF25
 3887 0157 06       		.byte	0x6
 3888 0158 40       		.byte	0x40
 3889 0159 B2000000 		.4byte	0xb2
 3890 015d 1C       		.byte	0x1c
 3891 015e 0D       		.uleb128 0xd
 3892 015f F2000000 		.4byte	.LASF26
 3893 0163 06       		.byte	0x6
 3894 0164 41       		.byte	0x41
 3895 0165 B2000000 		.4byte	0xb2
 3896 0169 20       		.byte	0x20
 3897 016a 0D       		.uleb128 0xd
 3898 016b 520F0000 		.4byte	.LASF27
 3899 016f 06       		.byte	0x6
 3900 0170 42       		.byte	0x42
 3901 0171 B2000000 		.4byte	0xb2
 3902 0175 24       		.byte	0x24
 3903 0176 0D       		.uleb128 0xd
 3904 0177 60090000 		.4byte	.LASF28
 3905 017b 06       		.byte	0x6
 3906 017c 43       		.byte	0x43
 3907 017d B2000000 		.4byte	0xb2
 3908 0181 28       		.byte	0x28
 3909 0182 0D       		.uleb128 0xd
 3910 0183 00090000 		.4byte	.LASF29
 3911 0187 06       		.byte	0x6
 3912 0188 44       		.byte	0x44
 3913 0189 7C020000 		.4byte	0x27c
 3914 018d 2C       		.byte	0x2c
 3915 018e 0D       		.uleb128 0xd
 3916 018f DF0A0000 		.4byte	.LASF30
 3917 0193 06       		.byte	0x6
 3918 0194 45       		.byte	0x45
 3919 0195 B2000000 		.4byte	0xb2
 3920 0199 50       		.byte	0x50
 3921 019a 0D       		.uleb128 0xd
 3922 019b BB0E0000 		.4byte	.LASF31
 3923 019f 06       		.byte	0x6
 3924 01a0 46       		.byte	0x46
 3925 01a1 B2000000 		.4byte	0xb2
 3926 01a5 54       		.byte	0x54
ARM GAS  /tmp/ccJYkMjP.s 			page 112


 3927 01a6 0D       		.uleb128 0xd
 3928 01a7 820A0000 		.4byte	.LASF32
 3929 01ab 06       		.byte	0x6
 3930 01ac 47       		.byte	0x47
 3931 01ad B2000000 		.4byte	0xb2
 3932 01b1 58       		.byte	0x58
 3933 01b2 0D       		.uleb128 0xd
 3934 01b3 530C0000 		.4byte	.LASF33
 3935 01b7 06       		.byte	0x6
 3936 01b8 48       		.byte	0x48
 3937 01b9 B7000000 		.4byte	0xb7
 3938 01bd 5C       		.byte	0x5c
 3939 01be 0D       		.uleb128 0xd
 3940 01bf 36050000 		.4byte	.LASF34
 3941 01c3 06       		.byte	0x6
 3942 01c4 49       		.byte	0x49
 3943 01c5 B2000000 		.4byte	0xb2
 3944 01c9 60       		.byte	0x60
 3945 01ca 0D       		.uleb128 0xd
 3946 01cb F7080000 		.4byte	.LASF35
 3947 01cf 06       		.byte	0x6
 3948 01d0 4A       		.byte	0x4a
 3949 01d1 B2000000 		.4byte	0xb2
 3950 01d5 64       		.byte	0x64
 3951 01d6 0D       		.uleb128 0xd
 3952 01d7 290C0000 		.4byte	.LASF36
 3953 01db 06       		.byte	0x6
 3954 01dc 4B       		.byte	0x4b
 3955 01dd B2000000 		.4byte	0xb2
 3956 01e1 68       		.byte	0x68
 3957 01e2 0D       		.uleb128 0xd
 3958 01e3 E2050000 		.4byte	.LASF37
 3959 01e7 06       		.byte	0x6
 3960 01e8 4C       		.byte	0x4c
 3961 01e9 B2000000 		.4byte	0xb2
 3962 01ed 6C       		.byte	0x6c
 3963 01ee 0D       		.uleb128 0xd
 3964 01ef 660A0000 		.4byte	.LASF38
 3965 01f3 06       		.byte	0x6
 3966 01f4 4D       		.byte	0x4d
 3967 01f5 B7000000 		.4byte	0xb7
 3968 01f9 70       		.byte	0x70
 3969 01fa 0D       		.uleb128 0xd
 3970 01fb 9C0D0000 		.4byte	.LASF39
 3971 01ff 06       		.byte	0x6
 3972 0200 4E       		.byte	0x4e
 3973 0201 B2000000 		.4byte	0xb2
 3974 0205 74       		.byte	0x74
 3975 0206 0D       		.uleb128 0xd
 3976 0207 2E0B0000 		.4byte	.LASF40
 3977 020b 06       		.byte	0x6
 3978 020c 4F       		.byte	0x4f
 3979 020d B2000000 		.4byte	0xb2
 3980 0211 78       		.byte	0x78
 3981 0212 0D       		.uleb128 0xd
 3982 0213 19040000 		.4byte	.LASF41
 3983 0217 06       		.byte	0x6
ARM GAS  /tmp/ccJYkMjP.s 			page 113


 3984 0218 50       		.byte	0x50
 3985 0219 B2000000 		.4byte	0xb2
 3986 021d 7C       		.byte	0x7c
 3987 021e 0D       		.uleb128 0xd
 3988 021f D90E0000 		.4byte	.LASF42
 3989 0223 06       		.byte	0x6
 3990 0224 51       		.byte	0x51
 3991 0225 B2000000 		.4byte	0xb2
 3992 0229 80       		.byte	0x80
 3993 022a 0D       		.uleb128 0xd
 3994 022b 410C0000 		.4byte	.LASF43
 3995 022f 06       		.byte	0x6
 3996 0230 52       		.byte	0x52
 3997 0231 B2000000 		.4byte	0xb2
 3998 0235 84       		.byte	0x84
 3999 0236 0D       		.uleb128 0xd
 4000 0237 F3030000 		.4byte	.LASF44
 4001 023b 06       		.byte	0x6
 4002 023c 53       		.byte	0x53
 4003 023d B2000000 		.4byte	0xb2
 4004 0241 88       		.byte	0x88
 4005 0242 0D       		.uleb128 0xd
 4006 0243 C10A0000 		.4byte	.LASF45
 4007 0247 06       		.byte	0x6
 4008 0248 54       		.byte	0x54
 4009 0249 F1000000 		.4byte	0xf1
 4010 024d 8C       		.byte	0x8c
 4011 024e 0D       		.uleb128 0xd
 4012 024f 4E010000 		.4byte	.LASF46
 4013 0253 06       		.byte	0x6
 4014 0254 55       		.byte	0x55
 4015 0255 B2000000 		.4byte	0xb2
 4016 0259 E4       		.byte	0xe4
 4017 025a 0D       		.uleb128 0xd
 4018 025b 21080000 		.4byte	.LASF47
 4019 025f 06       		.byte	0x6
 4020 0260 56       		.byte	0x56
 4021 0261 B7000000 		.4byte	0xb7
 4022 0265 E8       		.byte	0xe8
 4023 0266 00       		.byte	0
 4024 0267 0A       		.uleb128 0xa
 4025 0268 B7000000 		.4byte	0xb7
 4026 026c 77020000 		.4byte	0x277
 4027 0270 0B       		.uleb128 0xb
 4028 0271 BE000000 		.4byte	0xbe
 4029 0275 08       		.byte	0x8
 4030 0276 00       		.byte	0
 4031 0277 06       		.uleb128 0x6
 4032 0278 67020000 		.4byte	0x267
 4033 027c 05       		.uleb128 0x5
 4034 027d 77020000 		.4byte	0x277
 4035 0281 04       		.uleb128 0x4
 4036 0282 C20B0000 		.4byte	.LASF48
 4037 0286 06       		.byte	0x6
 4038 0287 57       		.byte	0x57
 4039 0288 F6000000 		.4byte	0xf6
 4040 028c 04       		.uleb128 0x4
ARM GAS  /tmp/ccJYkMjP.s 			page 114


 4041 028d AF0D0000 		.4byte	.LASF49
 4042 0291 07       		.byte	0x7
 4043 0292 07       		.byte	0x7
 4044 0293 25000000 		.4byte	0x25
 4045 0297 04       		.uleb128 0x4
 4046 0298 760F0000 		.4byte	.LASF50
 4047 029c 08       		.byte	0x8
 4048 029d 2C       		.byte	0x2c
 4049 029e 65000000 		.4byte	0x65
 4050 02a2 04       		.uleb128 0x4
 4051 02a3 10020000 		.4byte	.LASF51
 4052 02a7 08       		.byte	0x8
 4053 02a8 72       		.byte	0x72
 4054 02a9 65000000 		.4byte	0x65
 4055 02ad 0E       		.uleb128 0xe
 4056 02ae 0E0D0000 		.4byte	.LASF52
 4057 02b2 09       		.byte	0x9
 4058 02b3 6501     		.2byte	0x165
 4059 02b5 2C000000 		.4byte	0x2c
 4060 02b9 0F       		.uleb128 0xf
 4061 02ba 04       		.byte	0x4
 4062 02bb 08       		.byte	0x8
 4063 02bc A6       		.byte	0xa6
 4064 02bd D8020000 		.4byte	0x2d8
 4065 02c1 10       		.uleb128 0x10
 4066 02c2 1F070000 		.4byte	.LASF53
 4067 02c6 08       		.byte	0x8
 4068 02c7 A8       		.byte	0xa8
 4069 02c8 AD020000 		.4byte	0x2ad
 4070 02cc 10       		.uleb128 0x10
 4071 02cd 4F0B0000 		.4byte	.LASF54
 4072 02d1 08       		.byte	0x8
 4073 02d2 A9       		.byte	0xa9
 4074 02d3 D8020000 		.4byte	0x2d8
 4075 02d7 00       		.byte	0
 4076 02d8 0A       		.uleb128 0xa
 4077 02d9 45000000 		.4byte	0x45
 4078 02dd E8020000 		.4byte	0x2e8
 4079 02e1 0B       		.uleb128 0xb
 4080 02e2 BE000000 		.4byte	0xbe
 4081 02e6 03       		.byte	0x3
 4082 02e7 00       		.byte	0
 4083 02e8 0C       		.uleb128 0xc
 4084 02e9 08       		.byte	0x8
 4085 02ea 08       		.byte	0x8
 4086 02eb A3       		.byte	0xa3
 4087 02ec 09030000 		.4byte	0x309
 4088 02f0 0D       		.uleb128 0xd
 4089 02f1 DF020000 		.4byte	.LASF55
 4090 02f5 08       		.byte	0x8
 4091 02f6 A5       		.byte	0xa5
 4092 02f7 25000000 		.4byte	0x25
 4093 02fb 00       		.byte	0
 4094 02fc 0D       		.uleb128 0xd
 4095 02fd AC050000 		.4byte	.LASF56
 4096 0301 08       		.byte	0x8
 4097 0302 AA       		.byte	0xaa
ARM GAS  /tmp/ccJYkMjP.s 			page 115


 4098 0303 B9020000 		.4byte	0x2b9
 4099 0307 04       		.byte	0x4
 4100 0308 00       		.byte	0
 4101 0309 04       		.uleb128 0x4
 4102 030a EC080000 		.4byte	.LASF57
 4103 030e 08       		.byte	0x8
 4104 030f AB       		.byte	0xab
 4105 0310 E8020000 		.4byte	0x2e8
 4106 0314 04       		.uleb128 0x4
 4107 0315 36090000 		.4byte	.LASF58
 4108 0319 08       		.byte	0x8
 4109 031a AF       		.byte	0xaf
 4110 031b 8C020000 		.4byte	0x28c
 4111 031f 04       		.uleb128 0x4
 4112 0320 390C0000 		.4byte	.LASF59
 4113 0324 0A       		.byte	0xa
 4114 0325 16       		.byte	0x16
 4115 0326 77000000 		.4byte	0x77
 4116 032a 11       		.uleb128 0x11
 4117 032b 40020000 		.4byte	.LASF64
 4118 032f 18       		.byte	0x18
 4119 0330 0A       		.byte	0xa
 4120 0331 2D       		.byte	0x2d
 4121 0332 7D030000 		.4byte	0x37d
 4122 0336 0D       		.uleb128 0xd
 4123 0337 30050000 		.4byte	.LASF60
 4124 033b 0A       		.byte	0xa
 4125 033c 2F       		.byte	0x2f
 4126 033d 7D030000 		.4byte	0x37d
 4127 0341 00       		.byte	0
 4128 0342 12       		.uleb128 0x12
 4129 0343 5F6B00   		.ascii	"_k\000"
 4130 0346 0A       		.byte	0xa
 4131 0347 30       		.byte	0x30
 4132 0348 25000000 		.4byte	0x25
 4133 034c 04       		.byte	0x4
 4134 034d 0D       		.uleb128 0xd
 4135 034e F80B0000 		.4byte	.LASF61
 4136 0352 0A       		.byte	0xa
 4137 0353 30       		.byte	0x30
 4138 0354 25000000 		.4byte	0x25
 4139 0358 08       		.byte	0x8
 4140 0359 0D       		.uleb128 0xd
 4141 035a 1F0B0000 		.4byte	.LASF62
 4142 035e 0A       		.byte	0xa
 4143 035f 30       		.byte	0x30
 4144 0360 25000000 		.4byte	0x25
 4145 0364 0C       		.byte	0xc
 4146 0365 0D       		.uleb128 0xd
 4147 0366 A6030000 		.4byte	.LASF63
 4148 036a 0A       		.byte	0xa
 4149 036b 30       		.byte	0x30
 4150 036c 25000000 		.4byte	0x25
 4151 0370 10       		.byte	0x10
 4152 0371 12       		.uleb128 0x12
 4153 0372 5F7800   		.ascii	"_x\000"
 4154 0375 0A       		.byte	0xa
ARM GAS  /tmp/ccJYkMjP.s 			page 116


 4155 0376 31       		.byte	0x31
 4156 0377 83030000 		.4byte	0x383
 4157 037b 14       		.byte	0x14
 4158 037c 00       		.byte	0
 4159 037d 13       		.uleb128 0x13
 4160 037e 04       		.byte	0x4
 4161 037f 2A030000 		.4byte	0x32a
 4162 0383 0A       		.uleb128 0xa
 4163 0384 1F030000 		.4byte	0x31f
 4164 0388 93030000 		.4byte	0x393
 4165 038c 0B       		.uleb128 0xb
 4166 038d BE000000 		.4byte	0xbe
 4167 0391 00       		.byte	0
 4168 0392 00       		.byte	0
 4169 0393 11       		.uleb128 0x11
 4170 0394 4D050000 		.4byte	.LASF65
 4171 0398 24       		.byte	0x24
 4172 0399 0A       		.byte	0xa
 4173 039a 35       		.byte	0x35
 4174 039b 0C040000 		.4byte	0x40c
 4175 039f 0D       		.uleb128 0xd
 4176 03a0 EB040000 		.4byte	.LASF66
 4177 03a4 0A       		.byte	0xa
 4178 03a5 37       		.byte	0x37
 4179 03a6 25000000 		.4byte	0x25
 4180 03aa 00       		.byte	0
 4181 03ab 0D       		.uleb128 0xd
 4182 03ac ED020000 		.4byte	.LASF67
 4183 03b0 0A       		.byte	0xa
 4184 03b1 38       		.byte	0x38
 4185 03b2 25000000 		.4byte	0x25
 4186 03b6 04       		.byte	0x4
 4187 03b7 0D       		.uleb128 0xd
 4188 03b8 9D020000 		.4byte	.LASF68
 4189 03bc 0A       		.byte	0xa
 4190 03bd 39       		.byte	0x39
 4191 03be 25000000 		.4byte	0x25
 4192 03c2 08       		.byte	0x8
 4193 03c3 0D       		.uleb128 0xd
 4194 03c4 29060000 		.4byte	.LASF69
 4195 03c8 0A       		.byte	0xa
 4196 03c9 3A       		.byte	0x3a
 4197 03ca 25000000 		.4byte	0x25
 4198 03ce 0C       		.byte	0xc
 4199 03cf 0D       		.uleb128 0xd
 4200 03d0 360A0000 		.4byte	.LASF70
 4201 03d4 0A       		.byte	0xa
 4202 03d5 3B       		.byte	0x3b
 4203 03d6 25000000 		.4byte	0x25
 4204 03da 10       		.byte	0x10
 4205 03db 0D       		.uleb128 0xd
 4206 03dc 690B0000 		.4byte	.LASF71
 4207 03e0 0A       		.byte	0xa
 4208 03e1 3C       		.byte	0x3c
 4209 03e2 25000000 		.4byte	0x25
 4210 03e6 14       		.byte	0x14
 4211 03e7 0D       		.uleb128 0xd
ARM GAS  /tmp/ccJYkMjP.s 			page 117


 4212 03e8 48020000 		.4byte	.LASF72
 4213 03ec 0A       		.byte	0xa
 4214 03ed 3D       		.byte	0x3d
 4215 03ee 25000000 		.4byte	0x25
 4216 03f2 18       		.byte	0x18
 4217 03f3 0D       		.uleb128 0xd
 4218 03f4 FE040000 		.4byte	.LASF73
 4219 03f8 0A       		.byte	0xa
 4220 03f9 3E       		.byte	0x3e
 4221 03fa 25000000 		.4byte	0x25
 4222 03fe 1C       		.byte	0x1c
 4223 03ff 0D       		.uleb128 0xd
 4224 0400 3F090000 		.4byte	.LASF74
 4225 0404 0A       		.byte	0xa
 4226 0405 3F       		.byte	0x3f
 4227 0406 25000000 		.4byte	0x25
 4228 040a 20       		.byte	0x20
 4229 040b 00       		.byte	0
 4230 040c 14       		.uleb128 0x14
 4231 040d 51000000 		.4byte	.LASF75
 4232 0411 0801     		.2byte	0x108
 4233 0413 0A       		.byte	0xa
 4234 0414 48       		.byte	0x48
 4235 0415 4C040000 		.4byte	0x44c
 4236 0419 0D       		.uleb128 0xd
 4237 041a E20E0000 		.4byte	.LASF76
 4238 041e 0A       		.byte	0xa
 4239 041f 49       		.byte	0x49
 4240 0420 4C040000 		.4byte	0x44c
 4241 0424 00       		.byte	0
 4242 0425 0D       		.uleb128 0xd
 4243 0426 300D0000 		.4byte	.LASF77
 4244 042a 0A       		.byte	0xa
 4245 042b 4A       		.byte	0x4a
 4246 042c 4C040000 		.4byte	0x44c
 4247 0430 80       		.byte	0x80
 4248 0431 15       		.uleb128 0x15
 4249 0432 260F0000 		.4byte	.LASF78
 4250 0436 0A       		.byte	0xa
 4251 0437 4C       		.byte	0x4c
 4252 0438 1F030000 		.4byte	0x31f
 4253 043c 0001     		.2byte	0x100
 4254 043e 15       		.uleb128 0x15
 4255 043f D70F0000 		.4byte	.LASF79
 4256 0443 0A       		.byte	0xa
 4257 0444 4F       		.byte	0x4f
 4258 0445 1F030000 		.4byte	0x31f
 4259 0449 0401     		.2byte	0x104
 4260 044b 00       		.byte	0
 4261 044c 0A       		.uleb128 0xa
 4262 044d BC000000 		.4byte	0xbc
 4263 0451 5C040000 		.4byte	0x45c
 4264 0455 0B       		.uleb128 0xb
 4265 0456 BE000000 		.4byte	0xbe
 4266 045a 1F       		.byte	0x1f
 4267 045b 00       		.byte	0
 4268 045c 14       		.uleb128 0x14
ARM GAS  /tmp/ccJYkMjP.s 			page 118


 4269 045d B20A0000 		.4byte	.LASF80
 4270 0461 9001     		.2byte	0x190
 4271 0463 0A       		.byte	0xa
 4272 0464 5B       		.byte	0x5b
 4273 0465 9A040000 		.4byte	0x49a
 4274 0469 0D       		.uleb128 0xd
 4275 046a 30050000 		.4byte	.LASF60
 4276 046e 0A       		.byte	0xa
 4277 046f 5C       		.byte	0x5c
 4278 0470 9A040000 		.4byte	0x49a
 4279 0474 00       		.byte	0
 4280 0475 0D       		.uleb128 0xd
 4281 0476 9D090000 		.4byte	.LASF81
 4282 047a 0A       		.byte	0xa
 4283 047b 5D       		.byte	0x5d
 4284 047c 25000000 		.4byte	0x25
 4285 0480 04       		.byte	0x4
 4286 0481 0D       		.uleb128 0xd
 4287 0482 18020000 		.4byte	.LASF82
 4288 0486 0A       		.byte	0xa
 4289 0487 5F       		.byte	0x5f
 4290 0488 A0040000 		.4byte	0x4a0
 4291 048c 08       		.byte	0x8
 4292 048d 0D       		.uleb128 0xd
 4293 048e 51000000 		.4byte	.LASF75
 4294 0492 0A       		.byte	0xa
 4295 0493 60       		.byte	0x60
 4296 0494 0C040000 		.4byte	0x40c
 4297 0498 88       		.byte	0x88
 4298 0499 00       		.byte	0
 4299 049a 13       		.uleb128 0x13
 4300 049b 04       		.byte	0x4
 4301 049c 5C040000 		.4byte	0x45c
 4302 04a0 0A       		.uleb128 0xa
 4303 04a1 B0040000 		.4byte	0x4b0
 4304 04a5 B0040000 		.4byte	0x4b0
 4305 04a9 0B       		.uleb128 0xb
 4306 04aa BE000000 		.4byte	0xbe
 4307 04ae 1F       		.byte	0x1f
 4308 04af 00       		.byte	0
 4309 04b0 13       		.uleb128 0x13
 4310 04b1 04       		.byte	0x4
 4311 04b2 B6040000 		.4byte	0x4b6
 4312 04b6 16       		.uleb128 0x16
 4313 04b7 11       		.uleb128 0x11
 4314 04b8 820E0000 		.4byte	.LASF83
 4315 04bc 08       		.byte	0x8
 4316 04bd 0A       		.byte	0xa
 4317 04be 73       		.byte	0x73
 4318 04bf DC040000 		.4byte	0x4dc
 4319 04c3 0D       		.uleb128 0xd
 4320 04c4 1B080000 		.4byte	.LASF84
 4321 04c8 0A       		.byte	0xa
 4322 04c9 74       		.byte	0x74
 4323 04ca DC040000 		.4byte	0x4dc
 4324 04ce 00       		.byte	0
 4325 04cf 0D       		.uleb128 0xd
ARM GAS  /tmp/ccJYkMjP.s 			page 119


 4326 04d0 450F0000 		.4byte	.LASF85
 4327 04d4 0A       		.byte	0xa
 4328 04d5 75       		.byte	0x75
 4329 04d6 25000000 		.4byte	0x25
 4330 04da 04       		.byte	0x4
 4331 04db 00       		.byte	0
 4332 04dc 13       		.uleb128 0x13
 4333 04dd 04       		.byte	0x4
 4334 04de 45000000 		.4byte	0x45
 4335 04e2 11       		.uleb128 0x11
 4336 04e3 2F0F0000 		.4byte	.LASF86
 4337 04e7 68       		.byte	0x68
 4338 04e8 0A       		.byte	0xa
 4339 04e9 B3       		.byte	0xb3
 4340 04ea 0C060000 		.4byte	0x60c
 4341 04ee 12       		.uleb128 0x12
 4342 04ef 5F7000   		.ascii	"_p\000"
 4343 04f2 0A       		.byte	0xa
 4344 04f3 B4       		.byte	0xb4
 4345 04f4 DC040000 		.4byte	0x4dc
 4346 04f8 00       		.byte	0
 4347 04f9 12       		.uleb128 0x12
 4348 04fa 5F7200   		.ascii	"_r\000"
 4349 04fd 0A       		.byte	0xa
 4350 04fe B5       		.byte	0xb5
 4351 04ff 25000000 		.4byte	0x25
 4352 0503 04       		.byte	0x4
 4353 0504 12       		.uleb128 0x12
 4354 0505 5F7700   		.ascii	"_w\000"
 4355 0508 0A       		.byte	0xa
 4356 0509 B6       		.byte	0xb6
 4357 050a 25000000 		.4byte	0x25
 4358 050e 08       		.byte	0x8
 4359 050f 0D       		.uleb128 0xd
 4360 0510 03010000 		.4byte	.LASF87
 4361 0514 0A       		.byte	0xa
 4362 0515 B7       		.byte	0xb7
 4363 0516 4C000000 		.4byte	0x4c
 4364 051a 0C       		.byte	0xc
 4365 051b 0D       		.uleb128 0xd
 4366 051c 61080000 		.4byte	.LASF88
 4367 0520 0A       		.byte	0xa
 4368 0521 B8       		.byte	0xb8
 4369 0522 4C000000 		.4byte	0x4c
 4370 0526 0E       		.byte	0xe
 4371 0527 12       		.uleb128 0x12
 4372 0528 5F626600 		.ascii	"_bf\000"
 4373 052c 0A       		.byte	0xa
 4374 052d B9       		.byte	0xb9
 4375 052e B7040000 		.4byte	0x4b7
 4376 0532 10       		.byte	0x10
 4377 0533 0D       		.uleb128 0xd
 4378 0534 FA000000 		.4byte	.LASF89
 4379 0538 0A       		.byte	0xa
 4380 0539 BA       		.byte	0xba
 4381 053a 25000000 		.4byte	0x25
 4382 053e 18       		.byte	0x18
ARM GAS  /tmp/ccJYkMjP.s 			page 120


 4383 053f 0D       		.uleb128 0xd
 4384 0540 1D020000 		.4byte	.LASF90
 4385 0544 0A       		.byte	0xa
 4386 0545 C1       		.byte	0xc1
 4387 0546 BC000000 		.4byte	0xbc
 4388 054a 1C       		.byte	0x1c
 4389 054b 0D       		.uleb128 0xd
 4390 054c A2010000 		.4byte	.LASF91
 4391 0550 0A       		.byte	0xa
 4392 0551 C3       		.byte	0xc3
 4393 0552 79070000 		.4byte	0x779
 4394 0556 20       		.byte	0x20
 4395 0557 0D       		.uleb128 0xd
 4396 0558 A00A0000 		.4byte	.LASF92
 4397 055c 0A       		.byte	0xa
 4398 055d C5       		.byte	0xc5
 4399 055e A3070000 		.4byte	0x7a3
 4400 0562 24       		.byte	0x24
 4401 0563 0D       		.uleb128 0xd
 4402 0564 F00F0000 		.4byte	.LASF93
 4403 0568 0A       		.byte	0xa
 4404 0569 C8       		.byte	0xc8
 4405 056a C7070000 		.4byte	0x7c7
 4406 056e 28       		.byte	0x28
 4407 056f 0D       		.uleb128 0xd
 4408 0570 5E070000 		.4byte	.LASF94
 4409 0574 0A       		.byte	0xa
 4410 0575 C9       		.byte	0xc9
 4411 0576 E1070000 		.4byte	0x7e1
 4412 057a 2C       		.byte	0x2c
 4413 057b 12       		.uleb128 0x12
 4414 057c 5F756200 		.ascii	"_ub\000"
 4415 0580 0A       		.byte	0xa
 4416 0581 CC       		.byte	0xcc
 4417 0582 B7040000 		.4byte	0x4b7
 4418 0586 30       		.byte	0x30
 4419 0587 12       		.uleb128 0x12
 4420 0588 5F757000 		.ascii	"_up\000"
 4421 058c 0A       		.byte	0xa
 4422 058d CD       		.byte	0xcd
 4423 058e DC040000 		.4byte	0x4dc
 4424 0592 38       		.byte	0x38
 4425 0593 12       		.uleb128 0x12
 4426 0594 5F757200 		.ascii	"_ur\000"
 4427 0598 0A       		.byte	0xa
 4428 0599 CE       		.byte	0xce
 4429 059a 25000000 		.4byte	0x25
 4430 059e 3C       		.byte	0x3c
 4431 059f 0D       		.uleb128 0xd
 4432 05a0 2C040000 		.4byte	.LASF95
 4433 05a4 0A       		.byte	0xa
 4434 05a5 D1       		.byte	0xd1
 4435 05a6 E7070000 		.4byte	0x7e7
 4436 05aa 40       		.byte	0x40
 4437 05ab 0D       		.uleb128 0xd
 4438 05ac 7D0F0000 		.4byte	.LASF96
 4439 05b0 0A       		.byte	0xa
ARM GAS  /tmp/ccJYkMjP.s 			page 121


 4440 05b1 D2       		.byte	0xd2
 4441 05b2 F7070000 		.4byte	0x7f7
 4442 05b6 43       		.byte	0x43
 4443 05b7 12       		.uleb128 0x12
 4444 05b8 5F6C6200 		.ascii	"_lb\000"
 4445 05bc 0A       		.byte	0xa
 4446 05bd D5       		.byte	0xd5
 4447 05be B7040000 		.4byte	0x4b7
 4448 05c2 44       		.byte	0x44
 4449 05c3 0D       		.uleb128 0xd
 4450 05c4 4A0C0000 		.4byte	.LASF97
 4451 05c8 0A       		.byte	0xa
 4452 05c9 D8       		.byte	0xd8
 4453 05ca 25000000 		.4byte	0x25
 4454 05ce 4C       		.byte	0x4c
 4455 05cf 0D       		.uleb128 0xd
 4456 05d0 24040000 		.4byte	.LASF98
 4457 05d4 0A       		.byte	0xa
 4458 05d5 D9       		.byte	0xd9
 4459 05d6 97020000 		.4byte	0x297
 4460 05da 50       		.byte	0x50
 4461 05db 0D       		.uleb128 0xd
 4462 05dc 490B0000 		.4byte	.LASF99
 4463 05e0 0A       		.byte	0xa
 4464 05e1 DC       		.byte	0xdc
 4465 05e2 2A060000 		.4byte	0x62a
 4466 05e6 54       		.byte	0x54
 4467 05e7 0D       		.uleb128 0xd
 4468 05e8 800C0000 		.4byte	.LASF100
 4469 05ec 0A       		.byte	0xa
 4470 05ed E0       		.byte	0xe0
 4471 05ee 14030000 		.4byte	0x314
 4472 05f2 58       		.byte	0x58
 4473 05f3 0D       		.uleb128 0xd
 4474 05f4 99010000 		.4byte	.LASF101
 4475 05f8 0A       		.byte	0xa
 4476 05f9 E2       		.byte	0xe2
 4477 05fa 09030000 		.4byte	0x309
 4478 05fe 5C       		.byte	0x5c
 4479 05ff 0D       		.uleb128 0xd
 4480 0600 46010000 		.4byte	.LASF102
 4481 0604 0A       		.byte	0xa
 4482 0605 E3       		.byte	0xe3
 4483 0606 25000000 		.4byte	0x25
 4484 060a 64       		.byte	0x64
 4485 060b 00       		.byte	0
 4486 060c 17       		.uleb128 0x17
 4487 060d 25000000 		.4byte	0x25
 4488 0611 2A060000 		.4byte	0x62a
 4489 0615 18       		.uleb128 0x18
 4490 0616 2A060000 		.4byte	0x62a
 4491 061a 18       		.uleb128 0x18
 4492 061b BC000000 		.4byte	0xbc
 4493 061f 18       		.uleb128 0x18
 4494 0620 67070000 		.4byte	0x767
 4495 0624 18       		.uleb128 0x18
 4496 0625 25000000 		.4byte	0x25
ARM GAS  /tmp/ccJYkMjP.s 			page 122


 4497 0629 00       		.byte	0
 4498 062a 13       		.uleb128 0x13
 4499 062b 04       		.byte	0x4
 4500 062c 35060000 		.4byte	0x635
 4501 0630 06       		.uleb128 0x6
 4502 0631 2A060000 		.4byte	0x62a
 4503 0635 19       		.uleb128 0x19
 4504 0636 0C0F0000 		.4byte	.LASF103
 4505 063a 2804     		.2byte	0x428
 4506 063c 0A       		.byte	0xa
 4507 063d 3802     		.2byte	0x238
 4508 063f 67070000 		.4byte	0x767
 4509 0643 1A       		.uleb128 0x1a
 4510 0644 25010000 		.4byte	.LASF104
 4511 0648 0A       		.byte	0xa
 4512 0649 3A02     		.2byte	0x23a
 4513 064b 25000000 		.4byte	0x25
 4514 064f 00       		.byte	0
 4515 0650 1A       		.uleb128 0x1a
 4516 0651 A9070000 		.4byte	.LASF105
 4517 0655 0A       		.byte	0xa
 4518 0656 3F02     		.2byte	0x23f
 4519 0658 4E080000 		.4byte	0x84e
 4520 065c 04       		.byte	0x4
 4521 065d 1A       		.uleb128 0x1a
 4522 065e 00020000 		.4byte	.LASF106
 4523 0662 0A       		.byte	0xa
 4524 0663 3F02     		.2byte	0x23f
 4525 0665 4E080000 		.4byte	0x84e
 4526 0669 08       		.byte	0x8
 4527 066a 1A       		.uleb128 0x1a
 4528 066b 21100000 		.4byte	.LASF107
 4529 066f 0A       		.byte	0xa
 4530 0670 3F02     		.2byte	0x23f
 4531 0672 4E080000 		.4byte	0x84e
 4532 0676 0C       		.byte	0xc
 4533 0677 1A       		.uleb128 0x1a
 4534 0678 25050000 		.4byte	.LASF108
 4535 067c 0A       		.byte	0xa
 4536 067d 4102     		.2byte	0x241
 4537 067f 25000000 		.4byte	0x25
 4538 0683 10       		.byte	0x10
 4539 0684 1A       		.uleb128 0x1a
 4540 0685 72040000 		.4byte	.LASF109
 4541 0689 0A       		.byte	0xa
 4542 068a 4202     		.2byte	0x242
 4543 068c 300A0000 		.4byte	0xa30
 4544 0690 14       		.byte	0x14
 4545 0691 1A       		.uleb128 0x1a
 4546 0692 0A0C0000 		.4byte	.LASF110
 4547 0696 0A       		.byte	0xa
 4548 0697 4402     		.2byte	0x244
 4549 0699 25000000 		.4byte	0x25
 4550 069d 30       		.byte	0x30
 4551 069e 1A       		.uleb128 0x1a
 4552 069f 390B0000 		.4byte	.LASF111
 4553 06a3 0A       		.byte	0xa
ARM GAS  /tmp/ccJYkMjP.s 			page 123


 4554 06a4 4502     		.2byte	0x245
 4555 06a6 9D070000 		.4byte	0x79d
 4556 06aa 34       		.byte	0x34
 4557 06ab 1A       		.uleb128 0x1a
 4558 06ac 65070000 		.4byte	.LASF112
 4559 06b0 0A       		.byte	0xa
 4560 06b1 4702     		.2byte	0x247
 4561 06b3 25000000 		.4byte	0x25
 4562 06b7 38       		.byte	0x38
 4563 06b8 1A       		.uleb128 0x1a
 4564 06b9 E2080000 		.4byte	.LASF113
 4565 06bd 0A       		.byte	0xa
 4566 06be 4902     		.2byte	0x249
 4567 06c0 4B0A0000 		.4byte	0xa4b
 4568 06c4 3C       		.byte	0x3c
 4569 06c5 1A       		.uleb128 0x1a
 4570 06c6 8C020000 		.4byte	.LASF114
 4571 06ca 0A       		.byte	0xa
 4572 06cb 4C02     		.2byte	0x24c
 4573 06cd 7D030000 		.4byte	0x37d
 4574 06d1 40       		.byte	0x40
 4575 06d2 1A       		.uleb128 0x1a
 4576 06d3 E9060000 		.4byte	.LASF115
 4577 06d7 0A       		.byte	0xa
 4578 06d8 4D02     		.2byte	0x24d
 4579 06da 25000000 		.4byte	0x25
 4580 06de 44       		.byte	0x44
 4581 06df 1A       		.uleb128 0x1a
 4582 06e0 B4050000 		.4byte	.LASF116
 4583 06e4 0A       		.byte	0xa
 4584 06e5 4E02     		.2byte	0x24e
 4585 06e7 7D030000 		.4byte	0x37d
 4586 06eb 48       		.byte	0x48
 4587 06ec 1A       		.uleb128 0x1a
 4588 06ed 29080000 		.4byte	.LASF117
 4589 06f1 0A       		.byte	0xa
 4590 06f2 4F02     		.2byte	0x24f
 4591 06f4 510A0000 		.4byte	0xa51
 4592 06f8 4C       		.byte	0x4c
 4593 06f9 1A       		.uleb128 0x1a
 4594 06fa F00B0000 		.4byte	.LASF118
 4595 06fe 0A       		.byte	0xa
 4596 06ff 5202     		.2byte	0x252
 4597 0701 25000000 		.4byte	0x25
 4598 0705 50       		.byte	0x50
 4599 0706 1A       		.uleb128 0x1a
 4600 0707 7E0D0000 		.4byte	.LASF119
 4601 070b 0A       		.byte	0xa
 4602 070c 5302     		.2byte	0x253
 4603 070e 67070000 		.4byte	0x767
 4604 0712 54       		.byte	0x54
 4605 0713 1A       		.uleb128 0x1a
 4606 0714 DA0B0000 		.4byte	.LASF120
 4607 0718 0A       		.byte	0xa
 4608 0719 7602     		.2byte	0x276
 4609 071b 0E0A0000 		.4byte	0xa0e
 4610 071f 58       		.byte	0x58
ARM GAS  /tmp/ccJYkMjP.s 			page 124


 4611 0720 1B       		.uleb128 0x1b
 4612 0721 B20A0000 		.4byte	.LASF80
 4613 0725 0A       		.byte	0xa
 4614 0726 7A02     		.2byte	0x27a
 4615 0728 9A040000 		.4byte	0x49a
 4616 072c 4801     		.2byte	0x148
 4617 072e 1B       		.uleb128 0x1b
 4618 072f 4C060000 		.4byte	.LASF121
 4619 0733 0A       		.byte	0xa
 4620 0734 7B02     		.2byte	0x27b
 4621 0736 5C040000 		.4byte	0x45c
 4622 073a 4C01     		.2byte	0x14c
 4623 073c 1B       		.uleb128 0x1b
 4624 073d 33060000 		.4byte	.LASF122
 4625 0741 0A       		.byte	0xa
 4626 0742 7F02     		.2byte	0x27f
 4627 0744 620A0000 		.4byte	0xa62
 4628 0748 DC02     		.2byte	0x2dc
 4629 074a 1B       		.uleb128 0x1b
 4630 074b A60E0000 		.4byte	.LASF123
 4631 074f 0A       		.byte	0xa
 4632 0750 8402     		.2byte	0x284
 4633 0752 13080000 		.4byte	0x813
 4634 0756 E002     		.2byte	0x2e0
 4635 0758 1B       		.uleb128 0x1b
 4636 0759 1A0B0000 		.4byte	.LASF124
 4637 075d 0A       		.byte	0xa
 4638 075e 8502     		.2byte	0x285
 4639 0760 6E0A0000 		.4byte	0xa6e
 4640 0764 EC02     		.2byte	0x2ec
 4641 0766 00       		.byte	0
 4642 0767 13       		.uleb128 0x13
 4643 0768 04       		.byte	0x4
 4644 0769 6D070000 		.4byte	0x76d
 4645 076d 03       		.uleb128 0x3
 4646 076e 01       		.byte	0x1
 4647 076f 08       		.byte	0x8
 4648 0770 24060000 		.4byte	.LASF125
 4649 0774 06       		.uleb128 0x6
 4650 0775 6D070000 		.4byte	0x76d
 4651 0779 13       		.uleb128 0x13
 4652 077a 04       		.byte	0x4
 4653 077b 0C060000 		.4byte	0x60c
 4654 077f 17       		.uleb128 0x17
 4655 0780 25000000 		.4byte	0x25
 4656 0784 9D070000 		.4byte	0x79d
 4657 0788 18       		.uleb128 0x18
 4658 0789 2A060000 		.4byte	0x62a
 4659 078d 18       		.uleb128 0x18
 4660 078e BC000000 		.4byte	0xbc
 4661 0792 18       		.uleb128 0x18
 4662 0793 9D070000 		.4byte	0x79d
 4663 0797 18       		.uleb128 0x18
 4664 0798 25000000 		.4byte	0x25
 4665 079c 00       		.byte	0
 4666 079d 13       		.uleb128 0x13
 4667 079e 04       		.byte	0x4
ARM GAS  /tmp/ccJYkMjP.s 			page 125


 4668 079f 74070000 		.4byte	0x774
 4669 07a3 13       		.uleb128 0x13
 4670 07a4 04       		.byte	0x4
 4671 07a5 7F070000 		.4byte	0x77f
 4672 07a9 17       		.uleb128 0x17
 4673 07aa A2020000 		.4byte	0x2a2
 4674 07ae C7070000 		.4byte	0x7c7
 4675 07b2 18       		.uleb128 0x18
 4676 07b3 2A060000 		.4byte	0x62a
 4677 07b7 18       		.uleb128 0x18
 4678 07b8 BC000000 		.4byte	0xbc
 4679 07bc 18       		.uleb128 0x18
 4680 07bd A2020000 		.4byte	0x2a2
 4681 07c1 18       		.uleb128 0x18
 4682 07c2 25000000 		.4byte	0x25
 4683 07c6 00       		.byte	0
 4684 07c7 13       		.uleb128 0x13
 4685 07c8 04       		.byte	0x4
 4686 07c9 A9070000 		.4byte	0x7a9
 4687 07cd 17       		.uleb128 0x17
 4688 07ce 25000000 		.4byte	0x25
 4689 07d2 E1070000 		.4byte	0x7e1
 4690 07d6 18       		.uleb128 0x18
 4691 07d7 2A060000 		.4byte	0x62a
 4692 07db 18       		.uleb128 0x18
 4693 07dc BC000000 		.4byte	0xbc
 4694 07e0 00       		.byte	0
 4695 07e1 13       		.uleb128 0x13
 4696 07e2 04       		.byte	0x4
 4697 07e3 CD070000 		.4byte	0x7cd
 4698 07e7 0A       		.uleb128 0xa
 4699 07e8 45000000 		.4byte	0x45
 4700 07ec F7070000 		.4byte	0x7f7
 4701 07f0 0B       		.uleb128 0xb
 4702 07f1 BE000000 		.4byte	0xbe
 4703 07f5 02       		.byte	0x2
 4704 07f6 00       		.byte	0
 4705 07f7 0A       		.uleb128 0xa
 4706 07f8 45000000 		.4byte	0x45
 4707 07fc 07080000 		.4byte	0x807
 4708 0800 0B       		.uleb128 0xb
 4709 0801 BE000000 		.4byte	0xbe
 4710 0805 00       		.byte	0
 4711 0806 00       		.byte	0
 4712 0807 0E       		.uleb128 0xe
 4713 0808 FD030000 		.4byte	.LASF126
 4714 080c 0A       		.byte	0xa
 4715 080d 1D01     		.2byte	0x11d
 4716 080f E2040000 		.4byte	0x4e2
 4717 0813 1C       		.uleb128 0x1c
 4718 0814 990E0000 		.4byte	.LASF127
 4719 0818 0C       		.byte	0xc
 4720 0819 0A       		.byte	0xa
 4721 081a 2101     		.2byte	0x121
 4722 081c 48080000 		.4byte	0x848
 4723 0820 1A       		.uleb128 0x1a
 4724 0821 30050000 		.4byte	.LASF60
ARM GAS  /tmp/ccJYkMjP.s 			page 126


 4725 0825 0A       		.byte	0xa
 4726 0826 2301     		.2byte	0x123
 4727 0828 48080000 		.4byte	0x848
 4728 082c 00       		.byte	0
 4729 082d 1A       		.uleb128 0x1a
 4730 082e 070D0000 		.4byte	.LASF128
 4731 0832 0A       		.byte	0xa
 4732 0833 2401     		.2byte	0x124
 4733 0835 25000000 		.4byte	0x25
 4734 0839 04       		.byte	0x4
 4735 083a 1A       		.uleb128 0x1a
 4736 083b 32100000 		.4byte	.LASF129
 4737 083f 0A       		.byte	0xa
 4738 0840 2501     		.2byte	0x125
 4739 0842 4E080000 		.4byte	0x84e
 4740 0846 08       		.byte	0x8
 4741 0847 00       		.byte	0
 4742 0848 13       		.uleb128 0x13
 4743 0849 04       		.byte	0x4
 4744 084a 13080000 		.4byte	0x813
 4745 084e 13       		.uleb128 0x13
 4746 084f 04       		.byte	0x4
 4747 0850 07080000 		.4byte	0x807
 4748 0854 1C       		.uleb128 0x1c
 4749 0855 85030000 		.4byte	.LASF130
 4750 0859 0E       		.byte	0xe
 4751 085a 0A       		.byte	0xa
 4752 085b 3D01     		.2byte	0x13d
 4753 085d 89080000 		.4byte	0x889
 4754 0861 1A       		.uleb128 0x1a
 4755 0862 DF0F0000 		.4byte	.LASF131
 4756 0866 0A       		.byte	0xa
 4757 0867 3E01     		.2byte	0x13e
 4758 0869 89080000 		.4byte	0x889
 4759 086d 00       		.byte	0
 4760 086e 1A       		.uleb128 0x1a
 4761 086f 33080000 		.4byte	.LASF132
 4762 0873 0A       		.byte	0xa
 4763 0874 3F01     		.2byte	0x13f
 4764 0876 89080000 		.4byte	0x889
 4765 087a 06       		.byte	0x6
 4766 087b 1A       		.uleb128 0x1a
 4767 087c 39080000 		.4byte	.LASF133
 4768 0880 0A       		.byte	0xa
 4769 0881 4001     		.2byte	0x140
 4770 0883 53000000 		.4byte	0x53
 4771 0887 0C       		.byte	0xc
 4772 0888 00       		.byte	0
 4773 0889 0A       		.uleb128 0xa
 4774 088a 53000000 		.4byte	0x53
 4775 088e 99080000 		.4byte	0x899
 4776 0892 0B       		.uleb128 0xb
 4777 0893 BE000000 		.4byte	0xbe
 4778 0897 02       		.byte	0x2
 4779 0898 00       		.byte	0
 4780 0899 1D       		.uleb128 0x1d
 4781 089a D0       		.byte	0xd0
ARM GAS  /tmp/ccJYkMjP.s 			page 127


 4782 089b 0A       		.byte	0xa
 4783 089c 5702     		.2byte	0x257
 4784 089e 9A090000 		.4byte	0x99a
 4785 08a2 1A       		.uleb128 0x1a
 4786 08a3 F3010000 		.4byte	.LASF134
 4787 08a7 0A       		.byte	0xa
 4788 08a8 5902     		.2byte	0x259
 4789 08aa 2C000000 		.4byte	0x2c
 4790 08ae 00       		.byte	0
 4791 08af 1A       		.uleb128 0x1a
 4792 08b0 A60B0000 		.4byte	.LASF135
 4793 08b4 0A       		.byte	0xa
 4794 08b5 5A02     		.2byte	0x25a
 4795 08b7 67070000 		.4byte	0x767
 4796 08bb 04       		.byte	0x4
 4797 08bc 1A       		.uleb128 0x1a
 4798 08bd 78030000 		.4byte	.LASF136
 4799 08c1 0A       		.byte	0xa
 4800 08c2 5B02     		.2byte	0x25b
 4801 08c4 9A090000 		.4byte	0x99a
 4802 08c8 08       		.byte	0x8
 4803 08c9 1A       		.uleb128 0x1a
 4804 08ca B30B0000 		.4byte	.LASF137
 4805 08ce 0A       		.byte	0xa
 4806 08cf 5C02     		.2byte	0x25c
 4807 08d1 93030000 		.4byte	0x393
 4808 08d5 24       		.byte	0x24
 4809 08d6 1A       		.uleb128 0x1a
 4810 08d7 B0070000 		.4byte	.LASF138
 4811 08db 0A       		.byte	0xa
 4812 08dc 5D02     		.2byte	0x25d
 4813 08de 25000000 		.4byte	0x25
 4814 08e2 48       		.byte	0x48
 4815 08e3 1A       		.uleb128 0x1a
 4816 08e4 E50F0000 		.4byte	.LASF139
 4817 08e8 0A       		.byte	0xa
 4818 08e9 5E02     		.2byte	0x25e
 4819 08eb 85000000 		.4byte	0x85
 4820 08ef 50       		.byte	0x50
 4821 08f0 1A       		.uleb128 0x1a
 4822 08f1 8F000000 		.4byte	.LASF140
 4823 08f5 0A       		.byte	0xa
 4824 08f6 5F02     		.2byte	0x25f
 4825 08f8 54080000 		.4byte	0x854
 4826 08fc 58       		.byte	0x58
 4827 08fd 1A       		.uleb128 0x1a
 4828 08fe D5050000 		.4byte	.LASF141
 4829 0902 0A       		.byte	0xa
 4830 0903 6002     		.2byte	0x260
 4831 0905 09030000 		.4byte	0x309
 4832 0909 68       		.byte	0x68
 4833 090a 1A       		.uleb128 0x1a
 4834 090b C40E0000 		.4byte	.LASF142
 4835 090f 0A       		.byte	0xa
 4836 0910 6102     		.2byte	0x261
 4837 0912 09030000 		.4byte	0x309
 4838 0916 70       		.byte	0x70
ARM GAS  /tmp/ccJYkMjP.s 			page 128


 4839 0917 1A       		.uleb128 0x1a
 4840 0918 5F000000 		.4byte	.LASF143
 4841 091c 0A       		.byte	0xa
 4842 091d 6202     		.2byte	0x262
 4843 091f 09030000 		.4byte	0x309
 4844 0923 78       		.byte	0x78
 4845 0924 1A       		.uleb128 0x1a
 4846 0925 000C0000 		.4byte	.LASF144
 4847 0929 0A       		.byte	0xa
 4848 092a 6302     		.2byte	0x263
 4849 092c AA090000 		.4byte	0x9aa
 4850 0930 80       		.byte	0x80
 4851 0931 1A       		.uleb128 0x1a
 4852 0932 B7000000 		.4byte	.LASF145
 4853 0936 0A       		.byte	0xa
 4854 0937 6402     		.2byte	0x264
 4855 0939 BA090000 		.4byte	0x9ba
 4856 093d 88       		.byte	0x88
 4857 093e 1A       		.uleb128 0x1a
 4858 093f AE0E0000 		.4byte	.LASF146
 4859 0943 0A       		.byte	0xa
 4860 0944 6502     		.2byte	0x265
 4861 0946 25000000 		.4byte	0x25
 4862 094a A0       		.byte	0xa0
 4863 094b 1A       		.uleb128 0x1a
 4864 094c D7010000 		.4byte	.LASF147
 4865 0950 0A       		.byte	0xa
 4866 0951 6602     		.2byte	0x266
 4867 0953 09030000 		.4byte	0x309
 4868 0957 A4       		.byte	0xa4
 4869 0958 1A       		.uleb128 0x1a
 4870 0959 3D060000 		.4byte	.LASF148
 4871 095d 0A       		.byte	0xa
 4872 095e 6702     		.2byte	0x267
 4873 0960 09030000 		.4byte	0x309
 4874 0964 AC       		.byte	0xac
 4875 0965 1A       		.uleb128 0x1a
 4876 0966 50030000 		.4byte	.LASF149
 4877 096a 0A       		.byte	0xa
 4878 096b 6802     		.2byte	0x268
 4879 096d 09030000 		.4byte	0x309
 4880 0971 B4       		.byte	0xb4
 4881 0972 1A       		.uleb128 0x1a
 4882 0973 52080000 		.4byte	.LASF150
 4883 0977 0A       		.byte	0xa
 4884 0978 6902     		.2byte	0x269
 4885 097a 09030000 		.4byte	0x309
 4886 097e BC       		.byte	0xbc
 4887 097f 1A       		.uleb128 0x1a
 4888 0980 C4050000 		.4byte	.LASF151
 4889 0984 0A       		.byte	0xa
 4890 0985 6A02     		.2byte	0x26a
 4891 0987 09030000 		.4byte	0x309
 4892 098b C4       		.byte	0xc4
 4893 098c 1A       		.uleb128 0x1a
 4894 098d 04040000 		.4byte	.LASF152
 4895 0991 0A       		.byte	0xa
ARM GAS  /tmp/ccJYkMjP.s 			page 129


 4896 0992 6B02     		.2byte	0x26b
 4897 0994 25000000 		.4byte	0x25
 4898 0998 CC       		.byte	0xcc
 4899 0999 00       		.byte	0
 4900 099a 0A       		.uleb128 0xa
 4901 099b 6D070000 		.4byte	0x76d
 4902 099f AA090000 		.4byte	0x9aa
 4903 09a3 0B       		.uleb128 0xb
 4904 09a4 BE000000 		.4byte	0xbe
 4905 09a8 19       		.byte	0x19
 4906 09a9 00       		.byte	0
 4907 09aa 0A       		.uleb128 0xa
 4908 09ab 6D070000 		.4byte	0x76d
 4909 09af BA090000 		.4byte	0x9ba
 4910 09b3 0B       		.uleb128 0xb
 4911 09b4 BE000000 		.4byte	0xbe
 4912 09b8 07       		.byte	0x7
 4913 09b9 00       		.byte	0
 4914 09ba 0A       		.uleb128 0xa
 4915 09bb 6D070000 		.4byte	0x76d
 4916 09bf CA090000 		.4byte	0x9ca
 4917 09c3 0B       		.uleb128 0xb
 4918 09c4 BE000000 		.4byte	0xbe
 4919 09c8 17       		.byte	0x17
 4920 09c9 00       		.byte	0
 4921 09ca 1D       		.uleb128 0x1d
 4922 09cb F0       		.byte	0xf0
 4923 09cc 0A       		.byte	0xa
 4924 09cd 7002     		.2byte	0x270
 4925 09cf EE090000 		.4byte	0x9ee
 4926 09d3 1A       		.uleb128 0x1a
 4927 09d4 1C030000 		.4byte	.LASF153
 4928 09d8 0A       		.byte	0xa
 4929 09d9 7302     		.2byte	0x273
 4930 09db EE090000 		.4byte	0x9ee
 4931 09df 00       		.byte	0
 4932 09e0 1A       		.uleb128 0x1a
 4933 09e1 29100000 		.4byte	.LASF154
 4934 09e5 0A       		.byte	0xa
 4935 09e6 7402     		.2byte	0x274
 4936 09e8 FE090000 		.4byte	0x9fe
 4937 09ec 78       		.byte	0x78
 4938 09ed 00       		.byte	0
 4939 09ee 0A       		.uleb128 0xa
 4940 09ef DC040000 		.4byte	0x4dc
 4941 09f3 FE090000 		.4byte	0x9fe
 4942 09f7 0B       		.uleb128 0xb
 4943 09f8 BE000000 		.4byte	0xbe
 4944 09fc 1D       		.byte	0x1d
 4945 09fd 00       		.byte	0
 4946 09fe 0A       		.uleb128 0xa
 4947 09ff 2C000000 		.4byte	0x2c
 4948 0a03 0E0A0000 		.4byte	0xa0e
 4949 0a07 0B       		.uleb128 0xb
 4950 0a08 BE000000 		.4byte	0xbe
 4951 0a0c 1D       		.byte	0x1d
 4952 0a0d 00       		.byte	0
ARM GAS  /tmp/ccJYkMjP.s 			page 130


 4953 0a0e 1E       		.uleb128 0x1e
 4954 0a0f F0       		.byte	0xf0
 4955 0a10 0A       		.byte	0xa
 4956 0a11 5502     		.2byte	0x255
 4957 0a13 300A0000 		.4byte	0xa30
 4958 0a17 1F       		.uleb128 0x1f
 4959 0a18 0C0F0000 		.4byte	.LASF103
 4960 0a1c 0A       		.byte	0xa
 4961 0a1d 6C02     		.2byte	0x26c
 4962 0a1f 99080000 		.4byte	0x899
 4963 0a23 1F       		.uleb128 0x1f
 4964 0a24 C80B0000 		.4byte	.LASF155
 4965 0a28 0A       		.byte	0xa
 4966 0a29 7502     		.2byte	0x275
 4967 0a2b CA090000 		.4byte	0x9ca
 4968 0a2f 00       		.byte	0
 4969 0a30 0A       		.uleb128 0xa
 4970 0a31 6D070000 		.4byte	0x76d
 4971 0a35 400A0000 		.4byte	0xa40
 4972 0a39 0B       		.uleb128 0xb
 4973 0a3a BE000000 		.4byte	0xbe
 4974 0a3e 18       		.byte	0x18
 4975 0a3f 00       		.byte	0
 4976 0a40 20       		.uleb128 0x20
 4977 0a41 4B0A0000 		.4byte	0xa4b
 4978 0a45 18       		.uleb128 0x18
 4979 0a46 2A060000 		.4byte	0x62a
 4980 0a4a 00       		.byte	0
 4981 0a4b 13       		.uleb128 0x13
 4982 0a4c 04       		.byte	0x4
 4983 0a4d 400A0000 		.4byte	0xa40
 4984 0a51 13       		.uleb128 0x13
 4985 0a52 04       		.byte	0x4
 4986 0a53 7D030000 		.4byte	0x37d
 4987 0a57 20       		.uleb128 0x20
 4988 0a58 620A0000 		.4byte	0xa62
 4989 0a5c 18       		.uleb128 0x18
 4990 0a5d 25000000 		.4byte	0x25
 4991 0a61 00       		.byte	0
 4992 0a62 13       		.uleb128 0x13
 4993 0a63 04       		.byte	0x4
 4994 0a64 680A0000 		.4byte	0xa68
 4995 0a68 13       		.uleb128 0x13
 4996 0a69 04       		.byte	0x4
 4997 0a6a 570A0000 		.4byte	0xa57
 4998 0a6e 0A       		.uleb128 0xa
 4999 0a6f 07080000 		.4byte	0x807
 5000 0a73 7E0A0000 		.4byte	0xa7e
 5001 0a77 0B       		.uleb128 0xb
 5002 0a78 BE000000 		.4byte	0xbe
 5003 0a7c 02       		.byte	0x2
 5004 0a7d 00       		.byte	0
 5005 0a7e 08       		.uleb128 0x8
 5006 0a7f F6020000 		.4byte	.LASF156
 5007 0a83 0A       		.byte	0xa
 5008 0a84 FD02     		.2byte	0x2fd
 5009 0a86 2A060000 		.4byte	0x62a
ARM GAS  /tmp/ccJYkMjP.s 			page 131


 5010 0a8a 08       		.uleb128 0x8
 5011 0a8b 560B0000 		.4byte	.LASF157
 5012 0a8f 0A       		.byte	0xa
 5013 0a90 FE02     		.2byte	0x2fe
 5014 0a92 30060000 		.4byte	0x630
 5015 0a96 09       		.uleb128 0x9
 5016 0a97 F4040000 		.4byte	.LASF158
 5017 0a9b 0B       		.byte	0xb
 5018 0a9c 5F       		.byte	0x5f
 5019 0a9d 67070000 		.4byte	0x767
 5020 0aa1 09       		.uleb128 0x9
 5021 0aa2 2C020000 		.4byte	.LASF159
 5022 0aa6 0C       		.byte	0xc
 5023 0aa7 8F       		.byte	0x8f
 5024 0aa8 B30A0000 		.4byte	0xab3
 5025 0aac 03       		.uleb128 0x3
 5026 0aad 01       		.byte	0x1
 5027 0aae 02       		.byte	0x2
 5028 0aaf 2A050000 		.4byte	.LASF160
 5029 0ab3 05       		.uleb128 0x5
 5030 0ab4 AC0A0000 		.4byte	0xaac
 5031 0ab8 21       		.uleb128 0x21
 5032 0ab9 CA0C0000 		.4byte	.LASF161
 5033 0abd 0C       		.byte	0xc
 5034 0abe 94       		.byte	0x94
 5035 0abf B2000000 		.4byte	0xb2
 5036 0ac3 05       		.uleb128 0x5
 5037 0ac4 03       		.byte	0x3
 5038 0ac5 00000000 		.4byte	cpu_irq_critical_section_counter
 5039 0ac9 21       		.uleb128 0x21
 5040 0aca A6040000 		.4byte	.LASF162
 5041 0ace 0C       		.byte	0xc
 5042 0acf 95       		.byte	0x95
 5043 0ad0 B30A0000 		.4byte	0xab3
 5044 0ad4 05       		.uleb128 0x5
 5045 0ad5 03       		.byte	0x3
 5046 0ad6 00000000 		.4byte	cpu_irq_prev_interrupt_state
 5047 0ada 03       		.uleb128 0x3
 5048 0adb 04       		.byte	0x4
 5049 0adc 04       		.byte	0x4
 5050 0add E7020000 		.4byte	.LASF163
 5051 0ae1 03       		.uleb128 0x3
 5052 0ae2 08       		.byte	0x8
 5053 0ae3 04       		.byte	0x4
 5054 0ae4 4B0F0000 		.4byte	.LASF164
 5055 0ae8 0C       		.uleb128 0xc
 5056 0ae9 18       		.byte	0x18
 5057 0aea 0D       		.byte	0xd
 5058 0aeb 5B       		.byte	0x5b
 5059 0aec 390B0000 		.4byte	0xb39
 5060 0af0 0D       		.uleb128 0xd
 5061 0af1 94000000 		.4byte	.LASF165
 5062 0af5 0D       		.byte	0xd
 5063 0af6 5D       		.byte	0x5d
 5064 0af7 A7000000 		.4byte	0xa7
 5065 0afb 00       		.byte	0
 5066 0afc 0D       		.uleb128 0xd
ARM GAS  /tmp/ccJYkMjP.s 			page 132


 5067 0afd 860C0000 		.4byte	.LASF166
 5068 0b01 0D       		.byte	0xd
 5069 0b02 64       		.byte	0x64
 5070 0b03 A7000000 		.4byte	0xa7
 5071 0b07 04       		.byte	0x4
 5072 0b08 0D       		.uleb128 0xd
 5073 0b09 8D070000 		.4byte	.LASF167
 5074 0b0d 0D       		.byte	0xd
 5075 0b0e 6B       		.byte	0x6b
 5076 0b0f A7000000 		.4byte	0xa7
 5077 0b13 08       		.byte	0x8
 5078 0b14 0D       		.uleb128 0xd
 5079 0b15 E60A0000 		.4byte	.LASF168
 5080 0b19 0D       		.byte	0xd
 5081 0b1a 72       		.byte	0x72
 5082 0b1b A7000000 		.4byte	0xa7
 5083 0b1f 0C       		.byte	0xc
 5084 0b20 0D       		.uleb128 0xd
 5085 0b21 DA090000 		.4byte	.LASF169
 5086 0b25 0D       		.byte	0xd
 5087 0b26 79       		.byte	0x79
 5088 0b27 A7000000 		.4byte	0xa7
 5089 0b2b 10       		.byte	0x10
 5090 0b2c 0D       		.uleb128 0xd
 5091 0b2d 80020000 		.4byte	.LASF170
 5092 0b31 0D       		.byte	0xd
 5093 0b32 7C       		.byte	0x7c
 5094 0b33 A7000000 		.4byte	0xa7
 5095 0b37 14       		.byte	0x14
 5096 0b38 00       		.byte	0
 5097 0b39 04       		.uleb128 0x4
 5098 0b3a C3040000 		.4byte	.LASF171
 5099 0b3e 0D       		.byte	0xd
 5100 0b3f 7D       		.byte	0x7d
 5101 0b40 E80A0000 		.4byte	0xae8
 5102 0b44 06       		.uleb128 0x6
 5103 0b45 390B0000 		.4byte	0xb39
 5104 0b49 0C       		.uleb128 0xc
 5105 0b4a 10       		.byte	0x10
 5106 0b4b 0D       		.byte	0xd
 5107 0b4c B7       		.byte	0xb7
 5108 0b4d 820B0000 		.4byte	0xb82
 5109 0b51 0D       		.uleb128 0xd
 5110 0b52 94000000 		.4byte	.LASF165
 5111 0b56 0D       		.byte	0xd
 5112 0b57 B9       		.byte	0xb9
 5113 0b58 A7000000 		.4byte	0xa7
 5114 0b5c 00       		.byte	0
 5115 0b5d 0D       		.uleb128 0xd
 5116 0b5e 860C0000 		.4byte	.LASF166
 5117 0b62 0D       		.byte	0xd
 5118 0b63 C0       		.byte	0xc0
 5119 0b64 A7000000 		.4byte	0xa7
 5120 0b68 04       		.byte	0x4
 5121 0b69 0D       		.uleb128 0xd
 5122 0b6a 250B0000 		.4byte	.LASF172
 5123 0b6e 0D       		.byte	0xd
ARM GAS  /tmp/ccJYkMjP.s 			page 133


 5124 0b6f C6       		.byte	0xc6
 5125 0b70 A7000000 		.4byte	0xa7
 5126 0b74 08       		.byte	0x8
 5127 0b75 0D       		.uleb128 0xd
 5128 0b76 DA090000 		.4byte	.LASF169
 5129 0b7a 0D       		.byte	0xd
 5130 0b7b CD       		.byte	0xcd
 5131 0b7c A7000000 		.4byte	0xa7
 5132 0b80 0C       		.byte	0xc
 5133 0b81 00       		.byte	0
 5134 0b82 04       		.uleb128 0x4
 5135 0b83 99070000 		.4byte	.LASF173
 5136 0b87 0D       		.byte	0xd
 5137 0b88 CE       		.byte	0xce
 5138 0b89 490B0000 		.4byte	0xb49
 5139 0b8d 06       		.uleb128 0x6
 5140 0b8e 820B0000 		.4byte	0xb82
 5141 0b92 22       		.uleb128 0x22
 5142 0b93 C4080000 		.4byte	.LASF176
 5143 0b97 01       		.byte	0x1
 5144 0b98 8A07     		.2byte	0x78a
 5145 0b9a A7000000 		.4byte	0xa7
 5146 0b9e 00000000 		.4byte	.LFB227
 5147 0ba2 10000000 		.4byte	.LFE227-.LFB227
 5148 0ba6 01       		.uleb128 0x1
 5149 0ba7 9C       		.byte	0x9c
 5150 0ba8 CB0B0000 		.4byte	0xbcb
 5151 0bac 23       		.uleb128 0x23
 5152 0bad 87000000 		.4byte	.LASF175
 5153 0bb1 01       		.byte	0x1
 5154 0bb2 8A07     		.2byte	0x78a
 5155 0bb4 CB0B0000 		.4byte	0xbcb
 5156 0bb8 00000000 		.4byte	.LLST145
 5157 0bbc 24       		.uleb128 0x24
 5158 0bbd C00C0000 		.4byte	.LASF174
 5159 0bc1 01       		.byte	0x1
 5160 0bc2 8C07     		.2byte	0x78c
 5161 0bc4 A7000000 		.4byte	0xa7
 5162 0bc8 01       		.uleb128 0x1
 5163 0bc9 53       		.byte	0x53
 5164 0bca 00       		.byte	0
 5165 0bcb 13       		.uleb128 0x13
 5166 0bcc 04       		.byte	0x4
 5167 0bcd 81020000 		.4byte	0x281
 5168 0bd1 25       		.uleb128 0x25
 5169 0bd2 C4020000 		.4byte	.LASF187
 5170 0bd6 01       		.byte	0x1
 5171 0bd7 7D07     		.2byte	0x77d
 5172 0bd9 01       		.byte	0x1
 5173 0bda EB0B0000 		.4byte	0xbeb
 5174 0bde 26       		.uleb128 0x26
 5175 0bdf 87000000 		.4byte	.LASF175
 5176 0be3 01       		.byte	0x1
 5177 0be4 7D07     		.2byte	0x77d
 5178 0be6 CB0B0000 		.4byte	0xbcb
 5179 0bea 00       		.byte	0
 5180 0beb 27       		.uleb128 0x27
ARM GAS  /tmp/ccJYkMjP.s 			page 134


 5181 0bec 4F0D0000 		.4byte	.LASF179
 5182 0bf0 01       		.byte	0x1
 5183 0bf1 7307     		.2byte	0x773
 5184 0bf3 00000000 		.4byte	.LFB225
 5185 0bf7 0C000000 		.4byte	.LFE225-.LFB225
 5186 0bfb 01       		.uleb128 0x1
 5187 0bfc 9C       		.byte	0x9c
 5188 0bfd 100C0000 		.4byte	0xc10
 5189 0c01 28       		.uleb128 0x28
 5190 0c02 87000000 		.4byte	.LASF175
 5191 0c06 01       		.byte	0x1
 5192 0c07 7307     		.2byte	0x773
 5193 0c09 CB0B0000 		.4byte	0xbcb
 5194 0c0d 01       		.uleb128 0x1
 5195 0c0e 50       		.byte	0x50
 5196 0c0f 00       		.byte	0
 5197 0c10 22       		.uleb128 0x22
 5198 0c11 370F0000 		.4byte	.LASF177
 5199 0c15 01       		.byte	0x1
 5200 0c16 FF06     		.2byte	0x6ff
 5201 0c18 A7000000 		.4byte	0xa7
 5202 0c1c 00000000 		.4byte	.LFB224
 5203 0c20 12000000 		.4byte	.LFE224-.LFB224
 5204 0c24 01       		.uleb128 0x1
 5205 0c25 9C       		.byte	0x9c
 5206 0c26 470C0000 		.4byte	0xc47
 5207 0c2a 23       		.uleb128 0x23
 5208 0c2b 87000000 		.4byte	.LASF175
 5209 0c2f 01       		.byte	0x1
 5210 0c30 FF06     		.2byte	0x6ff
 5211 0c32 CB0B0000 		.4byte	0xbcb
 5212 0c36 21000000 		.4byte	.LLST144
 5213 0c3a 29       		.uleb128 0x29
 5214 0c3b 6300     		.ascii	"c\000"
 5215 0c3d 01       		.byte	0x1
 5216 0c3e FF06     		.2byte	0x6ff
 5217 0c40 470C0000 		.4byte	0xc47
 5218 0c44 01       		.uleb128 0x1
 5219 0c45 51       		.byte	0x51
 5220 0c46 00       		.byte	0
 5221 0c47 13       		.uleb128 0x13
 5222 0c48 04       		.byte	0x4
 5223 0c49 A7000000 		.4byte	0xa7
 5224 0c4d 22       		.uleb128 0x22
 5225 0c4e A7020000 		.4byte	.LASF178
 5226 0c52 01       		.byte	0x1
 5227 0c53 E906     		.2byte	0x6e9
 5228 0c55 A7000000 		.4byte	0xa7
 5229 0c59 00000000 		.4byte	.LFB223
 5230 0c5d 16000000 		.4byte	.LFE223-.LFB223
 5231 0c61 01       		.uleb128 0x1
 5232 0c62 9C       		.byte	0x9c
 5233 0c63 840C0000 		.4byte	0xc84
 5234 0c67 23       		.uleb128 0x23
 5235 0c68 87000000 		.4byte	.LASF175
 5236 0c6c 01       		.byte	0x1
 5237 0c6d E906     		.2byte	0x6e9
ARM GAS  /tmp/ccJYkMjP.s 			page 135


 5238 0c6f CB0B0000 		.4byte	0xbcb
 5239 0c73 42000000 		.4byte	.LLST143
 5240 0c77 29       		.uleb128 0x29
 5241 0c78 6300     		.ascii	"c\000"
 5242 0c7a 01       		.byte	0x1
 5243 0c7b E906     		.2byte	0x6e9
 5244 0c7d 470C0000 		.4byte	0xc47
 5245 0c81 01       		.uleb128 0x1
 5246 0c82 51       		.byte	0x51
 5247 0c83 00       		.byte	0
 5248 0c84 27       		.uleb128 0x27
 5249 0c85 56010000 		.4byte	.LASF180
 5250 0c89 01       		.byte	0x1
 5251 0c8a D706     		.2byte	0x6d7
 5252 0c8c 00000000 		.4byte	.LFB222
 5253 0c90 16000000 		.4byte	.LFE222-.LFB222
 5254 0c94 01       		.uleb128 0x1
 5255 0c95 9C       		.byte	0x9c
 5256 0c96 D40C0000 		.4byte	0xcd4
 5257 0c9a 28       		.uleb128 0x28
 5258 0c9b 87000000 		.4byte	.LASF175
 5259 0c9f 01       		.byte	0x1
 5260 0ca0 D706     		.2byte	0x6d7
 5261 0ca2 CB0B0000 		.4byte	0xbcb
 5262 0ca6 01       		.uleb128 0x1
 5263 0ca7 50       		.byte	0x50
 5264 0ca8 23       		.uleb128 0x23
 5265 0ca9 9C060000 		.4byte	.LASF181
 5266 0cad 01       		.byte	0x1
 5267 0cae D706     		.2byte	0x6d7
 5268 0cb0 9D070000 		.4byte	0x79d
 5269 0cb4 7C000000 		.4byte	.LLST142
 5270 0cb8 2A       		.uleb128 0x2a
 5271 0cb9 D40C0000 		.4byte	0xcd4
 5272 0cbd 04000000 		.4byte	.LBB435
 5273 0cc1 08000000 		.4byte	.LBE435-.LBB435
 5274 0cc5 01       		.byte	0x1
 5275 0cc6 DA06     		.2byte	0x6da
 5276 0cc8 2B       		.uleb128 0x2b
 5277 0cc9 F10C0000 		.4byte	0xcf1
 5278 0ccd 2B       		.uleb128 0x2b
 5279 0cce E50C0000 		.4byte	0xce5
 5280 0cd2 00       		.byte	0
 5281 0cd3 00       		.byte	0
 5282 0cd4 2C       		.uleb128 0x2c
 5283 0cd5 E5010000 		.4byte	.LASF182
 5284 0cd9 01       		.byte	0x1
 5285 0cda C706     		.2byte	0x6c7
 5286 0cdc A7000000 		.4byte	0xa7
 5287 0ce0 01       		.byte	0x1
 5288 0ce1 FC0C0000 		.4byte	0xcfc
 5289 0ce5 26       		.uleb128 0x26
 5290 0ce6 87000000 		.4byte	.LASF175
 5291 0cea 01       		.byte	0x1
 5292 0ceb C706     		.2byte	0x6c7
 5293 0ced CB0B0000 		.4byte	0xbcb
 5294 0cf1 2D       		.uleb128 0x2d
ARM GAS  /tmp/ccJYkMjP.s 			page 136


 5295 0cf2 6300     		.ascii	"c\000"
 5296 0cf4 01       		.byte	0x1
 5297 0cf5 C706     		.2byte	0x6c7
 5298 0cf7 A7000000 		.4byte	0xa7
 5299 0cfb 00       		.byte	0
 5300 0cfc 2C       		.uleb128 0x2c
 5301 0cfd 8D010000 		.4byte	.LASF183
 5302 0d01 01       		.byte	0x1
 5303 0d02 B206     		.2byte	0x6b2
 5304 0d04 A7000000 		.4byte	0xa7
 5305 0d08 01       		.byte	0x1
 5306 0d09 240D0000 		.4byte	0xd24
 5307 0d0d 26       		.uleb128 0x26
 5308 0d0e 87000000 		.4byte	.LASF175
 5309 0d12 01       		.byte	0x1
 5310 0d13 B206     		.2byte	0x6b2
 5311 0d15 CB0B0000 		.4byte	0xbcb
 5312 0d19 2D       		.uleb128 0x2d
 5313 0d1a 6300     		.ascii	"c\000"
 5314 0d1c 01       		.byte	0x1
 5315 0d1d B206     		.2byte	0x6b2
 5316 0d1f A7000000 		.4byte	0xa7
 5317 0d23 00       		.byte	0
 5318 0d24 22       		.uleb128 0x22
 5319 0d25 B2020000 		.4byte	.LASF184
 5320 0d29 01       		.byte	0x1
 5321 0d2a A206     		.2byte	0x6a2
 5322 0d2c A7000000 		.4byte	0xa7
 5323 0d30 00000000 		.4byte	.LFB219
 5324 0d34 08000000 		.4byte	.LFE219-.LFB219
 5325 0d38 01       		.uleb128 0x1
 5326 0d39 9C       		.byte	0x9c
 5327 0d3a 4F0D0000 		.4byte	0xd4f
 5328 0d3e 23       		.uleb128 0x23
 5329 0d3f 87000000 		.4byte	.LASF175
 5330 0d43 01       		.byte	0x1
 5331 0d44 A206     		.2byte	0x6a2
 5332 0d46 CB0B0000 		.4byte	0xbcb
 5333 0d4a 8F000000 		.4byte	.LLST137
 5334 0d4e 00       		.byte	0
 5335 0d4f 22       		.uleb128 0x22
 5336 0d50 2C010000 		.4byte	.LASF185
 5337 0d54 01       		.byte	0x1
 5338 0d55 9406     		.2byte	0x694
 5339 0d57 A7000000 		.4byte	0xa7
 5340 0d5b 00000000 		.4byte	.LFB218
 5341 0d5f 08000000 		.4byte	.LFE218-.LFB218
 5342 0d63 01       		.uleb128 0x1
 5343 0d64 9C       		.byte	0x9c
 5344 0d65 7A0D0000 		.4byte	0xd7a
 5345 0d69 23       		.uleb128 0x23
 5346 0d6a 87000000 		.4byte	.LASF175
 5347 0d6e 01       		.byte	0x1
 5348 0d6f 9406     		.2byte	0x694
 5349 0d71 CB0B0000 		.4byte	0xbcb
 5350 0d75 B0000000 		.4byte	.LLST136
 5351 0d79 00       		.byte	0
ARM GAS  /tmp/ccJYkMjP.s 			page 137


 5352 0d7a 22       		.uleb128 0x22
 5353 0d7b 830F0000 		.4byte	.LASF186
 5354 0d7f 01       		.byte	0x1
 5355 0d80 8506     		.2byte	0x685
 5356 0d82 A7000000 		.4byte	0xa7
 5357 0d86 00000000 		.4byte	.LFB217
 5358 0d8a 08000000 		.4byte	.LFE217-.LFB217
 5359 0d8e 01       		.uleb128 0x1
 5360 0d8f 9C       		.byte	0x9c
 5361 0d90 A50D0000 		.4byte	0xda5
 5362 0d94 23       		.uleb128 0x23
 5363 0d95 87000000 		.4byte	.LASF175
 5364 0d99 01       		.byte	0x1
 5365 0d9a 8506     		.2byte	0x685
 5366 0d9c CB0B0000 		.4byte	0xbcb
 5367 0da0 D1000000 		.4byte	.LLST135
 5368 0da4 00       		.byte	0
 5369 0da5 25       		.uleb128 0x25
 5370 0da6 CB060000 		.4byte	.LASF188
 5371 0daa 01       		.byte	0x1
 5372 0dab 7606     		.2byte	0x676
 5373 0dad 01       		.byte	0x1
 5374 0dae BF0D0000 		.4byte	0xdbf
 5375 0db2 26       		.uleb128 0x26
 5376 0db3 87000000 		.4byte	.LASF175
 5377 0db7 01       		.byte	0x1
 5378 0db8 7606     		.2byte	0x676
 5379 0dba CB0B0000 		.4byte	0xbcb
 5380 0dbe 00       		.byte	0
 5381 0dbf 25       		.uleb128 0x25
 5382 0dc0 CD070000 		.4byte	.LASF189
 5383 0dc4 01       		.byte	0x1
 5384 0dc5 6C06     		.2byte	0x66c
 5385 0dc7 01       		.byte	0x1
 5386 0dc8 D90D0000 		.4byte	0xdd9
 5387 0dcc 26       		.uleb128 0x26
 5388 0dcd 87000000 		.4byte	.LASF175
 5389 0dd1 01       		.byte	0x1
 5390 0dd2 6C06     		.2byte	0x66c
 5391 0dd4 CB0B0000 		.4byte	0xbcb
 5392 0dd8 00       		.byte	0
 5393 0dd9 25       		.uleb128 0x25
 5394 0dda 8D030000 		.4byte	.LASF190
 5395 0dde 01       		.byte	0x1
 5396 0ddf 6206     		.2byte	0x662
 5397 0de1 01       		.byte	0x1
 5398 0de2 F30D0000 		.4byte	0xdf3
 5399 0de6 26       		.uleb128 0x26
 5400 0de7 87000000 		.4byte	.LASF175
 5401 0deb 01       		.byte	0x1
 5402 0dec 6206     		.2byte	0x662
 5403 0dee CB0B0000 		.4byte	0xbcb
 5404 0df2 00       		.byte	0
 5405 0df3 2E       		.uleb128 0x2e
 5406 0df4 94050000 		.4byte	.LASF289
 5407 0df8 01       		.byte	0x1
 5408 0df9 5806     		.2byte	0x658
ARM GAS  /tmp/ccJYkMjP.s 			page 138


 5409 0dfb 0C0E0000 		.4byte	0xe0c
 5410 0dff 26       		.uleb128 0x26
 5411 0e00 87000000 		.4byte	.LASF175
 5412 0e04 01       		.byte	0x1
 5413 0e05 5806     		.2byte	0x658
 5414 0e07 CB0B0000 		.4byte	0xbcb
 5415 0e0b 00       		.byte	0
 5416 0e0c 27       		.uleb128 0x27
 5417 0e0d C1090000 		.4byte	.LASF191
 5418 0e11 01       		.byte	0x1
 5419 0e12 3606     		.2byte	0x636
 5420 0e14 00000000 		.4byte	.LFB212
 5421 0e18 08000000 		.4byte	.LFE212-.LFB212
 5422 0e1c 01       		.uleb128 0x1
 5423 0e1d 9C       		.byte	0x9c
 5424 0e1e 310E0000 		.4byte	0xe31
 5425 0e22 28       		.uleb128 0x28
 5426 0e23 87000000 		.4byte	.LASF175
 5427 0e27 01       		.byte	0x1
 5428 0e28 3606     		.2byte	0x636
 5429 0e2a CB0B0000 		.4byte	0xbcb
 5430 0e2e 01       		.uleb128 0x1
 5431 0e2f 50       		.byte	0x50
 5432 0e30 00       		.byte	0
 5433 0e31 22       		.uleb128 0x22
 5434 0e32 55060000 		.4byte	.LASF192
 5435 0e36 01       		.byte	0x1
 5436 0e37 2206     		.2byte	0x622
 5437 0e39 A7000000 		.4byte	0xa7
 5438 0e3d 00000000 		.4byte	.LFB211
 5439 0e41 28000000 		.4byte	.LFE211-.LFB211
 5440 0e45 01       		.uleb128 0x1
 5441 0e46 9C       		.byte	0x9c
 5442 0e47 8F0E0000 		.4byte	0xe8f
 5443 0e4b 23       		.uleb128 0x23
 5444 0e4c 87000000 		.4byte	.LASF175
 5445 0e50 01       		.byte	0x1
 5446 0e51 2206     		.2byte	0x622
 5447 0e53 CB0B0000 		.4byte	0xbcb
 5448 0e57 F2000000 		.4byte	.LLST131
 5449 0e5b 23       		.uleb128 0x23
 5450 0e5c 9E040000 		.4byte	.LASF193
 5451 0e60 01       		.byte	0x1
 5452 0e61 2206     		.2byte	0x622
 5453 0e63 A7000000 		.4byte	0xa7
 5454 0e67 26010000 		.4byte	.LLST132
 5455 0e6b 2F       		.uleb128 0x2f
 5456 0e6c FC0C0000 		.4byte	0xcfc
 5457 0e70 18000000 		.4byte	.LBB431
 5458 0e74 C0050000 		.4byte	.Ldebug_ranges0+0x5c0
 5459 0e78 01       		.byte	0x1
 5460 0e79 2A06     		.2byte	0x62a
 5461 0e7b 30       		.uleb128 0x30
 5462 0e7c 190D0000 		.4byte	0xd19
 5463 0e80 47010000 		.4byte	.LLST133
 5464 0e84 30       		.uleb128 0x30
 5465 0e85 0D0D0000 		.4byte	0xd0d
ARM GAS  /tmp/ccJYkMjP.s 			page 139


 5466 0e89 68010000 		.4byte	.LLST134
 5467 0e8d 00       		.byte	0
 5468 0e8e 00       		.byte	0
 5469 0e8f 27       		.uleb128 0x27
 5470 0e90 52020000 		.4byte	.LASF194
 5471 0e94 01       		.byte	0x1
 5472 0e95 1306     		.2byte	0x613
 5473 0e97 00000000 		.4byte	.LFB210
 5474 0e9b 08000000 		.4byte	.LFE210-.LFB210
 5475 0e9f 01       		.uleb128 0x1
 5476 0ea0 9C       		.byte	0x9c
 5477 0ea1 B40E0000 		.4byte	0xeb4
 5478 0ea5 28       		.uleb128 0x28
 5479 0ea6 87000000 		.4byte	.LASF175
 5480 0eaa 01       		.byte	0x1
 5481 0eab 1306     		.2byte	0x613
 5482 0ead CB0B0000 		.4byte	0xbcb
 5483 0eb1 01       		.uleb128 0x1
 5484 0eb2 50       		.byte	0x50
 5485 0eb3 00       		.byte	0
 5486 0eb4 27       		.uleb128 0x27
 5487 0eb5 84080000 		.4byte	.LASF195
 5488 0eb9 01       		.byte	0x1
 5489 0eba 0806     		.2byte	0x608
 5490 0ebc 00000000 		.4byte	.LFB209
 5491 0ec0 08000000 		.4byte	.LFE209-.LFB209
 5492 0ec4 01       		.uleb128 0x1
 5493 0ec5 9C       		.byte	0x9c
 5494 0ec6 D90E0000 		.4byte	0xed9
 5495 0eca 28       		.uleb128 0x28
 5496 0ecb 87000000 		.4byte	.LASF175
 5497 0ecf 01       		.byte	0x1
 5498 0ed0 0806     		.2byte	0x608
 5499 0ed2 CB0B0000 		.4byte	0xbcb
 5500 0ed6 01       		.uleb128 0x1
 5501 0ed7 50       		.byte	0x50
 5502 0ed8 00       		.byte	0
 5503 0ed9 27       		.uleb128 0x27
 5504 0eda 88090000 		.4byte	.LASF196
 5505 0ede 01       		.byte	0x1
 5506 0edf FE05     		.2byte	0x5fe
 5507 0ee1 00000000 		.4byte	.LFB208
 5508 0ee5 08000000 		.4byte	.LFE208-.LFB208
 5509 0ee9 01       		.uleb128 0x1
 5510 0eea 9C       		.byte	0x9c
 5511 0eeb FE0E0000 		.4byte	0xefe
 5512 0eef 28       		.uleb128 0x28
 5513 0ef0 87000000 		.4byte	.LASF175
 5514 0ef4 01       		.byte	0x1
 5515 0ef5 FE05     		.2byte	0x5fe
 5516 0ef7 CB0B0000 		.4byte	0xbcb
 5517 0efb 01       		.uleb128 0x1
 5518 0efc 50       		.byte	0x50
 5519 0efd 00       		.byte	0
 5520 0efe 25       		.uleb128 0x25
 5521 0eff 150D0000 		.4byte	.LASF197
 5522 0f03 01       		.byte	0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 140


 5523 0f04 F405     		.2byte	0x5f4
 5524 0f06 01       		.byte	0x1
 5525 0f07 180F0000 		.4byte	0xf18
 5526 0f0b 26       		.uleb128 0x26
 5527 0f0c 87000000 		.4byte	.LASF175
 5528 0f10 01       		.byte	0x1
 5529 0f11 F405     		.2byte	0x5f4
 5530 0f13 CB0B0000 		.4byte	0xbcb
 5531 0f17 00       		.byte	0
 5532 0f18 22       		.uleb128 0x22
 5533 0f19 0A080000 		.4byte	.LASF198
 5534 0f1d 01       		.byte	0x1
 5535 0f1e EA05     		.2byte	0x5ea
 5536 0f20 A7000000 		.4byte	0xa7
 5537 0f24 00000000 		.4byte	.LFB206
 5538 0f28 04000000 		.4byte	.LFE206-.LFB206
 5539 0f2c 01       		.uleb128 0x1
 5540 0f2d 9C       		.byte	0x9c
 5541 0f2e 430F0000 		.4byte	0xf43
 5542 0f32 23       		.uleb128 0x23
 5543 0f33 87000000 		.4byte	.LASF175
 5544 0f37 01       		.byte	0x1
 5545 0f38 EA05     		.2byte	0x5ea
 5546 0f3a CB0B0000 		.4byte	0xbcb
 5547 0f3e 86010000 		.4byte	.LLST130
 5548 0f42 00       		.byte	0
 5549 0f43 22       		.uleb128 0x22
 5550 0f44 E7090000 		.4byte	.LASF199
 5551 0f48 01       		.byte	0x1
 5552 0f49 DE05     		.2byte	0x5de
 5553 0f4b A7000000 		.4byte	0xa7
 5554 0f4f 00000000 		.4byte	.LFB205
 5555 0f53 04000000 		.4byte	.LFE205-.LFB205
 5556 0f57 01       		.uleb128 0x1
 5557 0f58 9C       		.byte	0x9c
 5558 0f59 6E0F0000 		.4byte	0xf6e
 5559 0f5d 23       		.uleb128 0x23
 5560 0f5e 87000000 		.4byte	.LASF175
 5561 0f62 01       		.byte	0x1
 5562 0f63 DE05     		.2byte	0x5de
 5563 0f65 CB0B0000 		.4byte	0xbcb
 5564 0f69 A7010000 		.4byte	.LLST129
 5565 0f6d 00       		.byte	0
 5566 0f6e 27       		.uleb128 0x27
 5567 0f6f 2C000000 		.4byte	.LASF200
 5568 0f73 01       		.byte	0x1
 5569 0f74 D205     		.2byte	0x5d2
 5570 0f76 00000000 		.4byte	.LFB204
 5571 0f7a 04000000 		.4byte	.LFE204-.LFB204
 5572 0f7e 01       		.uleb128 0x1
 5573 0f7f 9C       		.byte	0x9c
 5574 0f80 A10F0000 		.4byte	0xfa1
 5575 0f84 28       		.uleb128 0x28
 5576 0f85 87000000 		.4byte	.LASF175
 5577 0f89 01       		.byte	0x1
 5578 0f8a D205     		.2byte	0x5d2
 5579 0f8c CB0B0000 		.4byte	0xbcb
ARM GAS  /tmp/ccJYkMjP.s 			page 141


 5580 0f90 01       		.uleb128 0x1
 5581 0f91 50       		.byte	0x50
 5582 0f92 28       		.uleb128 0x28
 5583 0f93 9B0B0000 		.4byte	.LASF201
 5584 0f97 01       		.byte	0x1
 5585 0f98 D205     		.2byte	0x5d2
 5586 0f9a A7000000 		.4byte	0xa7
 5587 0f9e 01       		.uleb128 0x1
 5588 0f9f 51       		.byte	0x51
 5589 0fa0 00       		.byte	0
 5590 0fa1 27       		.uleb128 0x27
 5591 0fa2 F3060000 		.4byte	.LASF202
 5592 0fa6 01       		.byte	0x1
 5593 0fa7 C705     		.2byte	0x5c7
 5594 0fa9 00000000 		.4byte	.LFB203
 5595 0fad 04000000 		.4byte	.LFE203-.LFB203
 5596 0fb1 01       		.uleb128 0x1
 5597 0fb2 9C       		.byte	0x9c
 5598 0fb3 D40F0000 		.4byte	0xfd4
 5599 0fb7 28       		.uleb128 0x28
 5600 0fb8 87000000 		.4byte	.LASF175
 5601 0fbc 01       		.byte	0x1
 5602 0fbd C705     		.2byte	0x5c7
 5603 0fbf CB0B0000 		.4byte	0xbcb
 5604 0fc3 01       		.uleb128 0x1
 5605 0fc4 50       		.byte	0x50
 5606 0fc5 28       		.uleb128 0x28
 5607 0fc6 9B0B0000 		.4byte	.LASF201
 5608 0fca 01       		.byte	0x1
 5609 0fcb C705     		.2byte	0x5c7
 5610 0fcd A7000000 		.4byte	0xa7
 5611 0fd1 01       		.uleb128 0x1
 5612 0fd2 51       		.byte	0x51
 5613 0fd3 00       		.byte	0
 5614 0fd4 27       		.uleb128 0x27
 5615 0fd5 DD000000 		.4byte	.LASF203
 5616 0fd9 01       		.byte	0x1
 5617 0fda BC05     		.2byte	0x5bc
 5618 0fdc 00000000 		.4byte	.LFB202
 5619 0fe0 04000000 		.4byte	.LFE202-.LFB202
 5620 0fe4 01       		.uleb128 0x1
 5621 0fe5 9C       		.byte	0x9c
 5622 0fe6 07100000 		.4byte	0x1007
 5623 0fea 28       		.uleb128 0x28
 5624 0feb 87000000 		.4byte	.LASF175
 5625 0fef 01       		.byte	0x1
 5626 0ff0 BC05     		.2byte	0x5bc
 5627 0ff2 CB0B0000 		.4byte	0xbcb
 5628 0ff6 01       		.uleb128 0x1
 5629 0ff7 50       		.byte	0x50
 5630 0ff8 28       		.uleb128 0x28
 5631 0ff9 A70D0000 		.4byte	.LASF204
 5632 0ffd 01       		.byte	0x1
 5633 0ffe BC05     		.2byte	0x5bc
 5634 1000 A7000000 		.4byte	0xa7
 5635 1004 01       		.uleb128 0x1
 5636 1005 51       		.byte	0x51
ARM GAS  /tmp/ccJYkMjP.s 			page 142


 5637 1006 00       		.byte	0
 5638 1007 25       		.uleb128 0x25
 5639 1008 BC060000 		.4byte	.LASF205
 5640 100c 01       		.byte	0x1
 5641 100d B005     		.2byte	0x5b0
 5642 100f 01       		.byte	0x1
 5643 1010 21100000 		.4byte	0x1021
 5644 1014 26       		.uleb128 0x26
 5645 1015 87000000 		.4byte	.LASF175
 5646 1019 01       		.byte	0x1
 5647 101a B005     		.2byte	0x5b0
 5648 101c CB0B0000 		.4byte	0xbcb
 5649 1020 00       		.byte	0
 5650 1021 27       		.uleb128 0x27
 5651 1022 C60F0000 		.4byte	.LASF206
 5652 1026 01       		.byte	0x1
 5653 1027 A605     		.2byte	0x5a6
 5654 1029 00000000 		.4byte	.LFB200
 5655 102d 06000000 		.4byte	.LFE200-.LFB200
 5656 1031 01       		.uleb128 0x1
 5657 1032 9C       		.byte	0x9c
 5658 1033 46100000 		.4byte	0x1046
 5659 1037 28       		.uleb128 0x28
 5660 1038 87000000 		.4byte	.LASF175
 5661 103c 01       		.byte	0x1
 5662 103d A605     		.2byte	0x5a6
 5663 103f CB0B0000 		.4byte	0xbcb
 5664 1043 01       		.uleb128 0x1
 5665 1044 50       		.byte	0x50
 5666 1045 00       		.byte	0
 5667 1046 25       		.uleb128 0x25
 5668 1047 C3000000 		.4byte	.LASF207
 5669 104b 01       		.byte	0x1
 5670 104c 9C05     		.2byte	0x59c
 5671 104e 01       		.byte	0x1
 5672 104f 60100000 		.4byte	0x1060
 5673 1053 26       		.uleb128 0x26
 5674 1054 87000000 		.4byte	.LASF175
 5675 1058 01       		.byte	0x1
 5676 1059 9C05     		.2byte	0x59c
 5677 105b CB0B0000 		.4byte	0xbcb
 5678 105f 00       		.byte	0
 5679 1060 27       		.uleb128 0x27
 5680 1061 C7030000 		.4byte	.LASF208
 5681 1065 01       		.byte	0x1
 5682 1066 9205     		.2byte	0x592
 5683 1068 00000000 		.4byte	.LFB198
 5684 106c 04000000 		.4byte	.LFE198-.LFB198
 5685 1070 01       		.uleb128 0x1
 5686 1071 9C       		.byte	0x9c
 5687 1072 93100000 		.4byte	0x1093
 5688 1076 28       		.uleb128 0x28
 5689 1077 87000000 		.4byte	.LASF175
 5690 107b 01       		.byte	0x1
 5691 107c 9205     		.2byte	0x592
 5692 107e CB0B0000 		.4byte	0xbcb
 5693 1082 01       		.uleb128 0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 143


 5694 1083 50       		.byte	0x50
 5695 1084 28       		.uleb128 0x28
 5696 1085 D3000000 		.4byte	.LASF209
 5697 1089 01       		.byte	0x1
 5698 108a 9205     		.2byte	0x592
 5699 108c A7000000 		.4byte	0xa7
 5700 1090 01       		.uleb128 0x1
 5701 1091 51       		.byte	0x51
 5702 1092 00       		.byte	0
 5703 1093 25       		.uleb128 0x25
 5704 1094 27090000 		.4byte	.LASF210
 5705 1098 01       		.byte	0x1
 5706 1099 8605     		.2byte	0x586
 5707 109b 01       		.byte	0x1
 5708 109c AD100000 		.4byte	0x10ad
 5709 10a0 26       		.uleb128 0x26
 5710 10a1 87000000 		.4byte	.LASF175
 5711 10a5 01       		.byte	0x1
 5712 10a6 8605     		.2byte	0x586
 5713 10a8 CB0B0000 		.4byte	0xbcb
 5714 10ac 00       		.byte	0
 5715 10ad 27       		.uleb128 0x27
 5716 10ae 14010000 		.4byte	.LASF211
 5717 10b2 01       		.byte	0x1
 5718 10b3 7C05     		.2byte	0x57c
 5719 10b5 00000000 		.4byte	.LFB196
 5720 10b9 06000000 		.4byte	.LFE196-.LFB196
 5721 10bd 01       		.uleb128 0x1
 5722 10be 9C       		.byte	0x9c
 5723 10bf D2100000 		.4byte	0x10d2
 5724 10c3 28       		.uleb128 0x28
 5725 10c4 87000000 		.4byte	.LASF175
 5726 10c8 01       		.byte	0x1
 5727 10c9 7C05     		.2byte	0x57c
 5728 10cb CB0B0000 		.4byte	0xbcb
 5729 10cf 01       		.uleb128 0x1
 5730 10d0 50       		.byte	0x50
 5731 10d1 00       		.byte	0
 5732 10d2 25       		.uleb128 0x25
 5733 10d3 890E0000 		.4byte	.LASF212
 5734 10d7 01       		.byte	0x1
 5735 10d8 7205     		.2byte	0x572
 5736 10da 01       		.byte	0x1
 5737 10db EC100000 		.4byte	0x10ec
 5738 10df 26       		.uleb128 0x26
 5739 10e0 87000000 		.4byte	.LASF175
 5740 10e4 01       		.byte	0x1
 5741 10e5 7205     		.2byte	0x572
 5742 10e7 CB0B0000 		.4byte	0xbcb
 5743 10eb 00       		.byte	0
 5744 10ec 22       		.uleb128 0x22
 5745 10ed 5D0C0000 		.4byte	.LASF213
 5746 10f1 01       		.byte	0x1
 5747 10f2 6705     		.2byte	0x567
 5748 10f4 A7000000 		.4byte	0xa7
 5749 10f8 00000000 		.4byte	.LFB194
 5750 10fc 08000000 		.4byte	.LFE194-.LFB194
ARM GAS  /tmp/ccJYkMjP.s 			page 144


 5751 1100 01       		.uleb128 0x1
 5752 1101 9C       		.byte	0x9c
 5753 1102 17110000 		.4byte	0x1117
 5754 1106 23       		.uleb128 0x23
 5755 1107 87000000 		.4byte	.LASF175
 5756 110b 01       		.byte	0x1
 5757 110c 6705     		.2byte	0x567
 5758 110e CB0B0000 		.4byte	0xbcb
 5759 1112 C8010000 		.4byte	.LLST128
 5760 1116 00       		.byte	0
 5761 1117 22       		.uleb128 0x22
 5762 1118 5A0F0000 		.4byte	.LASF214
 5763 111c 01       		.byte	0x1
 5764 111d 5A05     		.2byte	0x55a
 5765 111f A7000000 		.4byte	0xa7
 5766 1123 00000000 		.4byte	.LFB193
 5767 1127 08000000 		.4byte	.LFE193-.LFB193
 5768 112b 01       		.uleb128 0x1
 5769 112c 9C       		.byte	0x9c
 5770 112d 42110000 		.4byte	0x1142
 5771 1131 23       		.uleb128 0x23
 5772 1132 87000000 		.4byte	.LASF175
 5773 1136 01       		.byte	0x1
 5774 1137 5A05     		.2byte	0x55a
 5775 1139 CB0B0000 		.4byte	0xbcb
 5776 113d E9010000 		.4byte	.LLST127
 5777 1141 00       		.byte	0
 5778 1142 27       		.uleb128 0x27
 5779 1143 3E080000 		.4byte	.LASF215
 5780 1147 01       		.byte	0x1
 5781 1148 4D05     		.2byte	0x54d
 5782 114a 00000000 		.4byte	.LFB192
 5783 114e 10000000 		.4byte	.LFE192-.LFB192
 5784 1152 01       		.uleb128 0x1
 5785 1153 9C       		.byte	0x9c
 5786 1154 93110000 		.4byte	0x1193
 5787 1158 28       		.uleb128 0x28
 5788 1159 87000000 		.4byte	.LASF175
 5789 115d 01       		.byte	0x1
 5790 115e 4D05     		.2byte	0x54d
 5791 1160 CB0B0000 		.4byte	0xbcb
 5792 1164 01       		.uleb128 0x1
 5793 1165 50       		.byte	0x50
 5794 1166 23       		.uleb128 0x23
 5795 1167 BA0A0000 		.4byte	.LASF216
 5796 116b 01       		.byte	0x1
 5797 116c 4D05     		.2byte	0x54d
 5798 116e 8C000000 		.4byte	0x8c
 5799 1172 0A020000 		.4byte	.LLST126
 5800 1176 28       		.uleb128 0x28
 5801 1177 3E010000 		.4byte	.LASF217
 5802 117b 01       		.byte	0x1
 5803 117c 4D05     		.2byte	0x54d
 5804 117e 8C000000 		.4byte	0x8c
 5805 1182 01       		.uleb128 0x1
 5806 1183 52       		.byte	0x52
 5807 1184 28       		.uleb128 0x28
ARM GAS  /tmp/ccJYkMjP.s 			page 145


 5808 1185 98040000 		.4byte	.LASF218
 5809 1189 01       		.byte	0x1
 5810 118a 4D05     		.2byte	0x54d
 5811 118c 8C000000 		.4byte	0x8c
 5812 1190 01       		.uleb128 0x1
 5813 1191 53       		.byte	0x53
 5814 1192 00       		.byte	0
 5815 1193 27       		.uleb128 0x27
 5816 1194 76070000 		.4byte	.LASF219
 5817 1198 01       		.byte	0x1
 5818 1199 4005     		.2byte	0x540
 5819 119b 00000000 		.4byte	.LFB191
 5820 119f 04000000 		.4byte	.LFE191-.LFB191
 5821 11a3 01       		.uleb128 0x1
 5822 11a4 9C       		.byte	0x9c
 5823 11a5 C6110000 		.4byte	0x11c6
 5824 11a9 28       		.uleb128 0x28
 5825 11aa 87000000 		.4byte	.LASF175
 5826 11ae 01       		.byte	0x1
 5827 11af 4005     		.2byte	0x540
 5828 11b1 CB0B0000 		.4byte	0xbcb
 5829 11b5 01       		.uleb128 0x1
 5830 11b6 50       		.byte	0x50
 5831 11b7 28       		.uleb128 0x28
 5832 11b8 25020000 		.4byte	.LASF220
 5833 11bc 01       		.byte	0x1
 5834 11bd 4005     		.2byte	0x540
 5835 11bf 8C000000 		.4byte	0x8c
 5836 11c3 01       		.uleb128 0x1
 5837 11c4 51       		.byte	0x51
 5838 11c5 00       		.byte	0
 5839 11c6 27       		.uleb128 0x27
 5840 11c7 000A0000 		.4byte	.LASF221
 5841 11cb 01       		.byte	0x1
 5842 11cc 3505     		.2byte	0x535
 5843 11ce 00000000 		.4byte	.LFB190
 5844 11d2 08000000 		.4byte	.LFE190-.LFB190
 5845 11d6 01       		.uleb128 0x1
 5846 11d7 9C       		.byte	0x9c
 5847 11d8 FB110000 		.4byte	0x11fb
 5848 11dc 28       		.uleb128 0x28
 5849 11dd 87000000 		.4byte	.LASF175
 5850 11e1 01       		.byte	0x1
 5851 11e2 3505     		.2byte	0x535
 5852 11e4 CB0B0000 		.4byte	0xbcb
 5853 11e8 01       		.uleb128 0x1
 5854 11e9 50       		.byte	0x50
 5855 11ea 23       		.uleb128 0x23
 5856 11eb 4A000000 		.4byte	.LASF222
 5857 11ef 01       		.byte	0x1
 5858 11f0 3505     		.2byte	0x535
 5859 11f2 A7000000 		.4byte	0xa7
 5860 11f6 2B020000 		.4byte	.LLST125
 5861 11fa 00       		.byte	0
 5862 11fb 27       		.uleb128 0x27
 5863 11fc DE030000 		.4byte	.LASF223
 5864 1200 01       		.byte	0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 146


 5865 1201 2A05     		.2byte	0x52a
 5866 1203 00000000 		.4byte	.LFB189
 5867 1207 0A000000 		.4byte	.LFE189-.LFB189
 5868 120b 01       		.uleb128 0x1
 5869 120c 9C       		.byte	0x9c
 5870 120d 30120000 		.4byte	0x1230
 5871 1211 28       		.uleb128 0x28
 5872 1212 87000000 		.4byte	.LASF175
 5873 1216 01       		.byte	0x1
 5874 1217 2A05     		.2byte	0x52a
 5875 1219 CB0B0000 		.4byte	0xbcb
 5876 121d 01       		.uleb128 0x1
 5877 121e 50       		.byte	0x50
 5878 121f 23       		.uleb128 0x23
 5879 1220 940D0000 		.4byte	.LASF224
 5880 1224 01       		.byte	0x1
 5881 1225 2A05     		.2byte	0x52a
 5882 1227 A7000000 		.4byte	0xa7
 5883 122b 4C020000 		.4byte	.LLST124
 5884 122f 00       		.byte	0
 5885 1230 27       		.uleb128 0x27
 5886 1231 98080000 		.4byte	.LASF225
 5887 1235 01       		.byte	0x1
 5888 1236 1F05     		.2byte	0x51f
 5889 1238 00000000 		.4byte	.LFB188
 5890 123c 0A000000 		.4byte	.LFE188-.LFB188
 5891 1240 01       		.uleb128 0x1
 5892 1241 9C       		.byte	0x9c
 5893 1242 65120000 		.4byte	0x1265
 5894 1246 28       		.uleb128 0x28
 5895 1247 87000000 		.4byte	.LASF175
 5896 124b 01       		.byte	0x1
 5897 124c 1F05     		.2byte	0x51f
 5898 124e CB0B0000 		.4byte	0xbcb
 5899 1252 01       		.uleb128 0x1
 5900 1253 50       		.byte	0x50
 5901 1254 23       		.uleb128 0x23
 5902 1255 940D0000 		.4byte	.LASF224
 5903 1259 01       		.byte	0x1
 5904 125a 1F05     		.2byte	0x51f
 5905 125c A7000000 		.4byte	0xa7
 5906 1260 6D020000 		.4byte	.LLST123
 5907 1264 00       		.byte	0
 5908 1265 27       		.uleb128 0x27
 5909 1266 AD080000 		.4byte	.LASF226
 5910 126a 01       		.byte	0x1
 5911 126b 1405     		.2byte	0x514
 5912 126d 00000000 		.4byte	.LFB187
 5913 1271 10000000 		.4byte	.LFE187-.LFB187
 5914 1275 01       		.uleb128 0x1
 5915 1276 9C       		.byte	0x9c
 5916 1277 AA120000 		.4byte	0x12aa
 5917 127b 28       		.uleb128 0x28
 5918 127c 87000000 		.4byte	.LASF175
 5919 1280 01       		.byte	0x1
 5920 1281 1405     		.2byte	0x514
 5921 1283 CB0B0000 		.4byte	0xbcb
ARM GAS  /tmp/ccJYkMjP.s 			page 147


 5922 1287 01       		.uleb128 0x1
 5923 1288 50       		.byte	0x50
 5924 1289 23       		.uleb128 0x23
 5925 128a 85010000 		.4byte	.LASF227
 5926 128e 01       		.byte	0x1
 5927 128f 1405     		.2byte	0x514
 5928 1291 8C000000 		.4byte	0x8c
 5929 1295 8E020000 		.4byte	.LLST121
 5930 1299 23       		.uleb128 0x23
 5931 129a FD0A0000 		.4byte	.LASF228
 5932 129e 01       		.byte	0x1
 5933 129f 1405     		.2byte	0x514
 5934 12a1 8C000000 		.4byte	0x8c
 5935 12a5 AF020000 		.4byte	.LLST122
 5936 12a9 00       		.byte	0
 5937 12aa 27       		.uleb128 0x27
 5938 12ab 32040000 		.4byte	.LASF229
 5939 12af 01       		.byte	0x1
 5940 12b0 0805     		.2byte	0x508
 5941 12b2 00000000 		.4byte	.LFB186
 5942 12b6 08000000 		.4byte	.LFE186-.LFB186
 5943 12ba 01       		.uleb128 0x1
 5944 12bb 9C       		.byte	0x9c
 5945 12bc DF120000 		.4byte	0x12df
 5946 12c0 28       		.uleb128 0x28
 5947 12c1 87000000 		.4byte	.LASF175
 5948 12c5 01       		.byte	0x1
 5949 12c6 0805     		.2byte	0x508
 5950 12c8 CB0B0000 		.4byte	0xbcb
 5951 12cc 01       		.uleb128 0x1
 5952 12cd 50       		.byte	0x50
 5953 12ce 23       		.uleb128 0x23
 5954 12cf 4A000000 		.4byte	.LASF222
 5955 12d3 01       		.byte	0x1
 5956 12d4 0805     		.2byte	0x508
 5957 12d6 A7000000 		.4byte	0xa7
 5958 12da D0020000 		.4byte	.LLST120
 5959 12de 00       		.byte	0
 5960 12df 27       		.uleb128 0x27
 5961 12e0 2D070000 		.4byte	.LASF230
 5962 12e4 01       		.byte	0x1
 5963 12e5 FD04     		.2byte	0x4fd
 5964 12e7 00000000 		.4byte	.LFB185
 5965 12eb 08000000 		.4byte	.LFE185-.LFB185
 5966 12ef 01       		.uleb128 0x1
 5967 12f0 9C       		.byte	0x9c
 5968 12f1 14130000 		.4byte	0x1314
 5969 12f5 28       		.uleb128 0x28
 5970 12f6 87000000 		.4byte	.LASF175
 5971 12fa 01       		.byte	0x1
 5972 12fb FD04     		.2byte	0x4fd
 5973 12fd CB0B0000 		.4byte	0xbcb
 5974 1301 01       		.uleb128 0x1
 5975 1302 50       		.byte	0x50
 5976 1303 23       		.uleb128 0x23
 5977 1304 4A000000 		.4byte	.LASF222
 5978 1308 01       		.byte	0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 148


 5979 1309 FD04     		.2byte	0x4fd
 5980 130b A7000000 		.4byte	0xa7
 5981 130f F1020000 		.4byte	.LLST119
 5982 1313 00       		.byte	0
 5983 1314 27       		.uleb128 0x27
 5984 1315 6F0A0000 		.4byte	.LASF231
 5985 1319 01       		.byte	0x1
 5986 131a F104     		.2byte	0x4f1
 5987 131c 00000000 		.4byte	.LFB184
 5988 1320 0E000000 		.4byte	.LFE184-.LFB184
 5989 1324 01       		.uleb128 0x1
 5990 1325 9C       		.byte	0x9c
 5991 1326 49130000 		.4byte	0x1349
 5992 132a 28       		.uleb128 0x28
 5993 132b 87000000 		.4byte	.LASF175
 5994 132f 01       		.byte	0x1
 5995 1330 F104     		.2byte	0x4f1
 5996 1332 CB0B0000 		.4byte	0xbcb
 5997 1336 01       		.uleb128 0x1
 5998 1337 50       		.byte	0x50
 5999 1338 23       		.uleb128 0x23
 6000 1339 6E0F0000 		.4byte	.LASF232
 6001 133d 01       		.byte	0x1
 6002 133e F104     		.2byte	0x4f1
 6003 1340 8C000000 		.4byte	0x8c
 6004 1344 12030000 		.4byte	.LLST118
 6005 1348 00       		.byte	0
 6006 1349 27       		.uleb128 0x27
 6007 134a 0A070000 		.4byte	.LASF233
 6008 134e 01       		.byte	0x1
 6009 134f E404     		.2byte	0x4e4
 6010 1351 00000000 		.4byte	.LFB183
 6011 1355 0E000000 		.4byte	.LFE183-.LFB183
 6012 1359 01       		.uleb128 0x1
 6013 135a 9C       		.byte	0x9c
 6014 135b 7E130000 		.4byte	0x137e
 6015 135f 28       		.uleb128 0x28
 6016 1360 87000000 		.4byte	.LASF175
 6017 1364 01       		.byte	0x1
 6018 1365 E404     		.2byte	0x4e4
 6019 1367 CB0B0000 		.4byte	0xbcb
 6020 136b 01       		.uleb128 0x1
 6021 136c 50       		.byte	0x50
 6022 136d 23       		.uleb128 0x23
 6023 136e 6E0F0000 		.4byte	.LASF232
 6024 1372 01       		.byte	0x1
 6025 1373 E404     		.2byte	0x4e4
 6026 1375 8C000000 		.4byte	0x8c
 6027 1379 33030000 		.4byte	.LLST117
 6028 137d 00       		.byte	0
 6029 137e 27       		.uleb128 0x27
 6030 137f 3C0D0000 		.4byte	.LASF234
 6031 1383 01       		.byte	0x1
 6032 1384 D704     		.2byte	0x4d7
 6033 1386 00000000 		.4byte	.LFB182
 6034 138a 0E000000 		.4byte	.LFE182-.LFB182
 6035 138e 01       		.uleb128 0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 149


 6036 138f 9C       		.byte	0x9c
 6037 1390 B3130000 		.4byte	0x13b3
 6038 1394 28       		.uleb128 0x28
 6039 1395 87000000 		.4byte	.LASF175
 6040 1399 01       		.byte	0x1
 6041 139a D704     		.2byte	0x4d7
 6042 139c CB0B0000 		.4byte	0xbcb
 6043 13a0 01       		.uleb128 0x1
 6044 13a1 50       		.byte	0x50
 6045 13a2 23       		.uleb128 0x23
 6046 13a3 6E0F0000 		.4byte	.LASF232
 6047 13a7 01       		.byte	0x1
 6048 13a8 D704     		.2byte	0x4d7
 6049 13aa 8C000000 		.4byte	0x8c
 6050 13ae 54030000 		.4byte	.LLST116
 6051 13b2 00       		.byte	0
 6052 13b3 27       		.uleb128 0x27
 6053 13b4 68090000 		.4byte	.LASF235
 6054 13b8 01       		.byte	0x1
 6055 13b9 CB04     		.2byte	0x4cb
 6056 13bb 00000000 		.4byte	.LFB181
 6057 13bf 0A000000 		.4byte	.LFE181-.LFB181
 6058 13c3 01       		.uleb128 0x1
 6059 13c4 9C       		.byte	0x9c
 6060 13c5 D8130000 		.4byte	0x13d8
 6061 13c9 28       		.uleb128 0x28
 6062 13ca 87000000 		.4byte	.LASF175
 6063 13ce 01       		.byte	0x1
 6064 13cf CB04     		.2byte	0x4cb
 6065 13d1 CB0B0000 		.4byte	0xbcb
 6066 13d5 01       		.uleb128 0x1
 6067 13d6 50       		.byte	0x50
 6068 13d7 00       		.byte	0
 6069 13d8 27       		.uleb128 0x27
 6070 13d9 2F030000 		.4byte	.LASF236
 6071 13dd 01       		.byte	0x1
 6072 13de C104     		.2byte	0x4c1
 6073 13e0 00000000 		.4byte	.LFB180
 6074 13e4 0A000000 		.4byte	.LFE180-.LFB180
 6075 13e8 01       		.uleb128 0x1
 6076 13e9 9C       		.byte	0x9c
 6077 13ea FD130000 		.4byte	0x13fd
 6078 13ee 28       		.uleb128 0x28
 6079 13ef 87000000 		.4byte	.LASF175
 6080 13f3 01       		.byte	0x1
 6081 13f4 C104     		.2byte	0x4c1
 6082 13f6 CB0B0000 		.4byte	0xbcb
 6083 13fa 01       		.uleb128 0x1
 6084 13fb 50       		.byte	0x50
 6085 13fc 00       		.byte	0
 6086 13fd 27       		.uleb128 0x27
 6087 13fe D3040000 		.4byte	.LASF237
 6088 1402 01       		.byte	0x1
 6089 1403 B604     		.2byte	0x4b6
 6090 1405 00000000 		.4byte	.LFB179
 6091 1409 0C000000 		.4byte	.LFE179-.LFB179
 6092 140d 01       		.uleb128 0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 150


 6093 140e 9C       		.byte	0x9c
 6094 140f 32140000 		.4byte	0x1432
 6095 1413 28       		.uleb128 0x28
 6096 1414 87000000 		.4byte	.LASF175
 6097 1418 01       		.byte	0x1
 6098 1419 B604     		.2byte	0x4b6
 6099 141b CB0B0000 		.4byte	0xbcb
 6100 141f 01       		.uleb128 0x1
 6101 1420 50       		.byte	0x50
 6102 1421 23       		.uleb128 0x23
 6103 1422 6E0F0000 		.4byte	.LASF232
 6104 1426 01       		.byte	0x1
 6105 1427 B604     		.2byte	0x4b6
 6106 1429 8C000000 		.4byte	0x8c
 6107 142d 75030000 		.4byte	.LLST115
 6108 1431 00       		.byte	0
 6109 1432 22       		.uleb128 0x22
 6110 1433 710C0000 		.4byte	.LASF238
 6111 1437 01       		.byte	0x1
 6112 1438 9A04     		.2byte	0x49a
 6113 143a A7000000 		.4byte	0xa7
 6114 143e 00000000 		.4byte	.LFB178
 6115 1442 50000000 		.4byte	.LFE178-.LFB178
 6116 1446 01       		.uleb128 0x1
 6117 1447 9C       		.byte	0x9c
 6118 1448 82150000 		.4byte	0x1582
 6119 144c 23       		.uleb128 0x23
 6120 144d 87000000 		.4byte	.LASF175
 6121 1451 01       		.byte	0x1
 6122 1452 9A04     		.2byte	0x49a
 6123 1454 CB0B0000 		.4byte	0xbcb
 6124 1458 96030000 		.4byte	.LLST105
 6125 145c 23       		.uleb128 0x23
 6126 145d F60F0000 		.4byte	.LASF239
 6127 1461 01       		.byte	0x1
 6128 1462 9A04     		.2byte	0x49a
 6129 1464 A7000000 		.4byte	0xa7
 6130 1468 C2030000 		.4byte	.LLST106
 6131 146c 23       		.uleb128 0x23
 6132 146d 6B040000 		.4byte	.LASF240
 6133 1471 01       		.byte	0x1
 6134 1472 9B04     		.2byte	0x49b
 6135 1474 A7000000 		.4byte	0xa7
 6136 1478 E3030000 		.4byte	.LLST107
 6137 147c 31       		.uleb128 0x31
 6138 147d 79210000 		.4byte	0x2179
 6139 1481 02000000 		.4byte	.LBB399
 6140 1485 00050000 		.4byte	.Ldebug_ranges0+0x500
 6141 1489 01       		.byte	0x1
 6142 148a 9E04     		.2byte	0x49e
 6143 148c 27150000 		.4byte	0x1527
 6144 1490 30       		.uleb128 0x30
 6145 1491 85210000 		.4byte	0x2185
 6146 1495 04040000 		.4byte	.LLST108
 6147 1499 32       		.uleb128 0x32
 6148 149a D10B0000 		.4byte	0xbd1
 6149 149e 02000000 		.4byte	.LBB401
ARM GAS  /tmp/ccJYkMjP.s 			page 151


 6150 14a2 18050000 		.4byte	.Ldebug_ranges0+0x518
 6151 14a6 01       		.byte	0x1
 6152 14a7 FD       		.byte	0xfd
 6153 14a8 B2140000 		.4byte	0x14b2
 6154 14ac 2B       		.uleb128 0x2b
 6155 14ad DE0B0000 		.4byte	0xbde
 6156 14b1 00       		.byte	0
 6157 14b2 31       		.uleb128 0x31
 6158 14b3 93100000 		.4byte	0x1093
 6159 14b7 06000000 		.4byte	.LBB404
 6160 14bb 30050000 		.4byte	.Ldebug_ranges0+0x530
 6161 14bf 01       		.byte	0x1
 6162 14c0 0501     		.2byte	0x105
 6163 14c2 D0140000 		.4byte	0x14d0
 6164 14c6 30       		.uleb128 0x30
 6165 14c7 A0100000 		.4byte	0x10a0
 6166 14cb 17040000 		.4byte	.LLST109
 6167 14cf 00       		.byte	0
 6168 14d0 31       		.uleb128 0x31
 6169 14d1 07100000 		.4byte	0x1007
 6170 14d5 0A000000 		.4byte	.LBB407
 6171 14d9 48050000 		.4byte	.Ldebug_ranges0+0x548
 6172 14dd 01       		.byte	0x1
 6173 14de 0601     		.2byte	0x106
 6174 14e0 EE140000 		.4byte	0x14ee
 6175 14e4 30       		.uleb128 0x30
 6176 14e5 14100000 		.4byte	0x1014
 6177 14e9 2A040000 		.4byte	.LLST110
 6178 14ed 00       		.byte	0
 6179 14ee 31       		.uleb128 0x31
 6180 14ef FE0E0000 		.4byte	0xefe
 6181 14f3 10000000 		.4byte	.LBB411
 6182 14f7 60050000 		.4byte	.Ldebug_ranges0+0x560
 6183 14fb 01       		.byte	0x1
 6184 14fc 0801     		.2byte	0x108
 6185 14fe 0C150000 		.4byte	0x150c
 6186 1502 30       		.uleb128 0x30
 6187 1503 0B0F0000 		.4byte	0xf0b
 6188 1507 3D040000 		.4byte	.LLST111
 6189 150b 00       		.byte	0
 6190 150c 2F       		.uleb128 0x2f
 6191 150d D90D0000 		.4byte	0xdd9
 6192 1511 14000000 		.4byte	.LBB414
 6193 1515 78050000 		.4byte	.Ldebug_ranges0+0x578
 6194 1519 01       		.byte	0x1
 6195 151a 0A01     		.2byte	0x10a
 6196 151c 30       		.uleb128 0x30
 6197 151d E60D0000 		.4byte	0xde6
 6198 1521 50040000 		.4byte	.LLST112
 6199 1525 00       		.byte	0
 6200 1526 00       		.byte	0
 6201 1527 31       		.uleb128 0x31
 6202 1528 46100000 		.4byte	0x1046
 6203 152c 32000000 		.4byte	.LBB423
 6204 1530 90050000 		.4byte	.Ldebug_ranges0+0x590
 6205 1534 01       		.byte	0x1
 6206 1535 A904     		.2byte	0x4a9
ARM GAS  /tmp/ccJYkMjP.s 			page 152


 6207 1537 45150000 		.4byte	0x1545
 6208 153b 30       		.uleb128 0x30
 6209 153c 53100000 		.4byte	0x1053
 6210 1540 63040000 		.4byte	.LLST113
 6211 1544 00       		.byte	0
 6212 1545 31       		.uleb128 0x31
 6213 1546 D2100000 		.4byte	0x10d2
 6214 154a 34000000 		.4byte	.LBB426
 6215 154e A8050000 		.4byte	.Ldebug_ranges0+0x5a8
 6216 1552 01       		.byte	0x1
 6217 1553 AA04     		.2byte	0x4aa
 6218 1555 63150000 		.4byte	0x1563
 6219 1559 30       		.uleb128 0x30
 6220 155a DF100000 		.4byte	0x10df
 6221 155e 76040000 		.4byte	.LLST114
 6222 1562 00       		.byte	0
 6223 1563 33       		.uleb128 0x33
 6224 1564 2E000000 		.4byte	.LVL165
 6225 1568 39220000 		.4byte	0x2239
 6226 156c 34       		.uleb128 0x34
 6227 156d 01       		.uleb128 0x1
 6228 156e 50       		.byte	0x50
 6229 156f 02       		.uleb128 0x2
 6230 1570 74       		.byte	0x74
 6231 1571 00       		.sleb128 0
 6232 1572 34       		.uleb128 0x34
 6233 1573 01       		.uleb128 0x1
 6234 1574 51       		.byte	0x51
 6235 1575 03       		.uleb128 0x3
 6236 1576 F3       		.byte	0xf3
 6237 1577 01       		.uleb128 0x1
 6238 1578 51       		.byte	0x51
 6239 1579 34       		.uleb128 0x34
 6240 157a 01       		.uleb128 0x1
 6241 157b 52       		.byte	0x52
 6242 157c 03       		.uleb128 0x3
 6243 157d F3       		.byte	0xf3
 6244 157e 01       		.uleb128 0x1
 6245 157f 52       		.byte	0x52
 6246 1580 00       		.byte	0
 6247 1581 00       		.byte	0
 6248 1582 22       		.uleb128 0x22
 6249 1583 040B0000 		.4byte	.LASF241
 6250 1587 01       		.byte	0x1
 6251 1588 8904     		.2byte	0x489
 6252 158a 8C000000 		.4byte	0x8c
 6253 158e 00000000 		.4byte	.LFB177
 6254 1592 08000000 		.4byte	.LFE177-.LFB177
 6255 1596 01       		.uleb128 0x1
 6256 1597 9C       		.byte	0x9c
 6257 1598 AD150000 		.4byte	0x15ad
 6258 159c 23       		.uleb128 0x23
 6259 159d 70070000 		.4byte	.LASF242
 6260 15a1 01       		.byte	0x1
 6261 15a2 8904     		.2byte	0x489
 6262 15a4 CB0B0000 		.4byte	0xbcb
 6263 15a8 89040000 		.4byte	.LLST104
ARM GAS  /tmp/ccJYkMjP.s 			page 153


 6264 15ac 00       		.byte	0
 6265 15ad 2C       		.uleb128 0x2c
 6266 15ae 730B0000 		.4byte	.LASF243
 6267 15b2 01       		.byte	0x1
 6268 15b3 7B04     		.2byte	0x47b
 6269 15b5 8C000000 		.4byte	0x8c
 6270 15b9 01       		.byte	0x1
 6271 15ba CB150000 		.4byte	0x15cb
 6272 15be 26       		.uleb128 0x26
 6273 15bf 70070000 		.4byte	.LASF242
 6274 15c3 01       		.byte	0x1
 6275 15c4 7B04     		.2byte	0x47b
 6276 15c6 CB0B0000 		.4byte	0xbcb
 6277 15ca 00       		.byte	0
 6278 15cb 35       		.uleb128 0x35
 6279 15cc B4010000 		.4byte	.LASF244
 6280 15d0 01       		.byte	0x1
 6281 15d1 6D04     		.2byte	0x46d
 6282 15d3 8C000000 		.4byte	0x8c
 6283 15d7 E8150000 		.4byte	0x15e8
 6284 15db 26       		.uleb128 0x26
 6285 15dc 70070000 		.4byte	.LASF242
 6286 15e0 01       		.byte	0x1
 6287 15e1 6D04     		.2byte	0x46d
 6288 15e3 CB0B0000 		.4byte	0xbcb
 6289 15e7 00       		.byte	0
 6290 15e8 22       		.uleb128 0x22
 6291 15e9 0A060000 		.4byte	.LASF245
 6292 15ed 01       		.byte	0x1
 6293 15ee 5604     		.2byte	0x456
 6294 15f0 8C000000 		.4byte	0x8c
 6295 15f4 00000000 		.4byte	.LFB174
 6296 15f8 1E000000 		.4byte	.LFE174-.LFB174
 6297 15fc 01       		.uleb128 0x1
 6298 15fd 9C       		.byte	0x9c
 6299 15fe 2B160000 		.4byte	0x162b
 6300 1602 23       		.uleb128 0x23
 6301 1603 70070000 		.4byte	.LASF242
 6302 1607 01       		.byte	0x1
 6303 1608 5604     		.2byte	0x456
 6304 160a CB0B0000 		.4byte	0xbcb
 6305 160e AA040000 		.4byte	.LLST102
 6306 1612 36       		.uleb128 0x36
 6307 1613 10000000 		.4byte	.LBB398
 6308 1617 0E000000 		.4byte	.LBE398-.LBB398
 6309 161b 24       		.uleb128 0x24
 6310 161c 23030000 		.4byte	.LASF246
 6311 1620 01       		.byte	0x1
 6312 1621 5904     		.2byte	0x459
 6313 1623 8C000000 		.4byte	0x8c
 6314 1627 01       		.uleb128 0x1
 6315 1628 50       		.byte	0x50
 6316 1629 00       		.byte	0
 6317 162a 00       		.byte	0
 6318 162b 22       		.uleb128 0x22
 6319 162c 680E0000 		.4byte	.LASF247
 6320 1630 01       		.byte	0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 154


 6321 1631 4A04     		.2byte	0x44a
 6322 1633 8C000000 		.4byte	0x8c
 6323 1637 00000000 		.4byte	.LFB173
 6324 163b 06000000 		.4byte	.LFE173-.LFB173
 6325 163f 01       		.uleb128 0x1
 6326 1640 9C       		.byte	0x9c
 6327 1641 56160000 		.4byte	0x1656
 6328 1645 23       		.uleb128 0x23
 6329 1646 87000000 		.4byte	.LASF175
 6330 164a 01       		.byte	0x1
 6331 164b 4A04     		.2byte	0x44a
 6332 164d CB0B0000 		.4byte	0xbcb
 6333 1651 E4040000 		.4byte	.LLST101
 6334 1655 00       		.byte	0
 6335 1656 27       		.uleb128 0x27
 6336 1657 AB030000 		.4byte	.LASF248
 6337 165b 01       		.byte	0x1
 6338 165c 3C04     		.2byte	0x43c
 6339 165e 00000000 		.4byte	.LFB172
 6340 1662 0C000000 		.4byte	.LFE172-.LFB172
 6341 1666 01       		.uleb128 0x1
 6342 1667 9C       		.byte	0x9c
 6343 1668 8B160000 		.4byte	0x168b
 6344 166c 28       		.uleb128 0x28
 6345 166d 87000000 		.4byte	.LASF175
 6346 1671 01       		.byte	0x1
 6347 1672 3C04     		.2byte	0x43c
 6348 1674 CB0B0000 		.4byte	0xbcb
 6349 1678 01       		.uleb128 0x1
 6350 1679 50       		.byte	0x50
 6351 167a 23       		.uleb128 0x23
 6352 167b C10D0000 		.4byte	.LASF249
 6353 167f 01       		.byte	0x1
 6354 1680 3C04     		.2byte	0x43c
 6355 1682 8C000000 		.4byte	0x8c
 6356 1686 05050000 		.4byte	.LLST100
 6357 168a 00       		.byte	0
 6358 168b 27       		.uleb128 0x27
 6359 168c 9D000000 		.4byte	.LASF250
 6360 1690 01       		.byte	0x1
 6361 1691 3104     		.2byte	0x431
 6362 1693 00000000 		.4byte	.LFB171
 6363 1697 0A000000 		.4byte	.LFE171-.LFB171
 6364 169b 01       		.uleb128 0x1
 6365 169c 9C       		.byte	0x9c
 6366 169d B0160000 		.4byte	0x16b0
 6367 16a1 28       		.uleb128 0x28
 6368 16a2 87000000 		.4byte	.LASF175
 6369 16a6 01       		.byte	0x1
 6370 16a7 3104     		.2byte	0x431
 6371 16a9 CB0B0000 		.4byte	0xbcb
 6372 16ad 01       		.uleb128 0x1
 6373 16ae 50       		.byte	0x50
 6374 16af 00       		.byte	0
 6375 16b0 27       		.uleb128 0x27
 6376 16b1 58050000 		.4byte	.LASF251
 6377 16b5 01       		.byte	0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 155


 6378 16b6 2704     		.2byte	0x427
 6379 16b8 00000000 		.4byte	.LFB170
 6380 16bc 0A000000 		.4byte	.LFE170-.LFB170
 6381 16c0 01       		.uleb128 0x1
 6382 16c1 9C       		.byte	0x9c
 6383 16c2 D5160000 		.4byte	0x16d5
 6384 16c6 28       		.uleb128 0x28
 6385 16c7 87000000 		.4byte	.LASF175
 6386 16cb 01       		.byte	0x1
 6387 16cc 2704     		.2byte	0x427
 6388 16ce CB0B0000 		.4byte	0xbcb
 6389 16d2 01       		.uleb128 0x1
 6390 16d3 50       		.byte	0x50
 6391 16d4 00       		.byte	0
 6392 16d5 27       		.uleb128 0x27
 6393 16d6 160A0000 		.4byte	.LASF252
 6394 16da 01       		.byte	0x1
 6395 16db 1C04     		.2byte	0x41c
 6396 16dd 00000000 		.4byte	.LFB169
 6397 16e1 10000000 		.4byte	.LFE169-.LFB169
 6398 16e5 01       		.uleb128 0x1
 6399 16e6 9C       		.byte	0x9c
 6400 16e7 0A170000 		.4byte	0x170a
 6401 16eb 28       		.uleb128 0x28
 6402 16ec 87000000 		.4byte	.LASF175
 6403 16f0 01       		.byte	0x1
 6404 16f1 1C04     		.2byte	0x41c
 6405 16f3 CB0B0000 		.4byte	0xbcb
 6406 16f7 01       		.uleb128 0x1
 6407 16f8 50       		.byte	0x50
 6408 16f9 23       		.uleb128 0x23
 6409 16fa 25020000 		.4byte	.LASF220
 6410 16fe 01       		.byte	0x1
 6411 16ff 1C04     		.2byte	0x41c
 6412 1701 8C000000 		.4byte	0x8c
 6413 1705 26050000 		.4byte	.LLST99
 6414 1709 00       		.byte	0
 6415 170a 27       		.uleb128 0x27
 6416 170b E9070000 		.4byte	.LASF253
 6417 170f 01       		.byte	0x1
 6418 1710 0F04     		.2byte	0x40f
 6419 1712 00000000 		.4byte	.LFB168
 6420 1716 0E000000 		.4byte	.LFE168-.LFB168
 6421 171a 01       		.uleb128 0x1
 6422 171b 9C       		.byte	0x9c
 6423 171c 3F170000 		.4byte	0x173f
 6424 1720 28       		.uleb128 0x28
 6425 1721 87000000 		.4byte	.LASF175
 6426 1725 01       		.byte	0x1
 6427 1726 0F04     		.2byte	0x40f
 6428 1728 CB0B0000 		.4byte	0xbcb
 6429 172c 01       		.uleb128 0x1
 6430 172d 50       		.byte	0x50
 6431 172e 23       		.uleb128 0x23
 6432 172f 6E0F0000 		.4byte	.LASF232
 6433 1733 01       		.byte	0x1
 6434 1734 0F04     		.2byte	0x40f
ARM GAS  /tmp/ccJYkMjP.s 			page 156


 6435 1736 8C000000 		.4byte	0x8c
 6436 173a 47050000 		.4byte	.LLST98
 6437 173e 00       		.byte	0
 6438 173f 27       		.uleb128 0x27
 6439 1740 EE050000 		.4byte	.LASF254
 6440 1744 01       		.byte	0x1
 6441 1745 0304     		.2byte	0x403
 6442 1747 00000000 		.4byte	.LFB167
 6443 174b 0A000000 		.4byte	.LFE167-.LFB167
 6444 174f 01       		.uleb128 0x1
 6445 1750 9C       		.byte	0x9c
 6446 1751 64170000 		.4byte	0x1764
 6447 1755 28       		.uleb128 0x28
 6448 1756 87000000 		.4byte	.LASF175
 6449 175a 01       		.byte	0x1
 6450 175b 0304     		.2byte	0x403
 6451 175d CB0B0000 		.4byte	0xbcb
 6452 1761 01       		.uleb128 0x1
 6453 1762 50       		.byte	0x50
 6454 1763 00       		.byte	0
 6455 1764 27       		.uleb128 0x27
 6456 1765 67080000 		.4byte	.LASF255
 6457 1769 01       		.byte	0x1
 6458 176a F903     		.2byte	0x3f9
 6459 176c 00000000 		.4byte	.LFB166
 6460 1770 0A000000 		.4byte	.LFE166-.LFB166
 6461 1774 01       		.uleb128 0x1
 6462 1775 9C       		.byte	0x9c
 6463 1776 89170000 		.4byte	0x1789
 6464 177a 28       		.uleb128 0x28
 6465 177b 87000000 		.4byte	.LASF175
 6466 177f 01       		.byte	0x1
 6467 1780 F903     		.2byte	0x3f9
 6468 1782 CB0B0000 		.4byte	0xbcb
 6469 1786 01       		.uleb128 0x1
 6470 1787 50       		.byte	0x50
 6471 1788 00       		.byte	0
 6472 1789 27       		.uleb128 0x27
 6473 178a 09000000 		.4byte	.LASF256
 6474 178e 01       		.byte	0x1
 6475 178f EE03     		.2byte	0x3ee
 6476 1791 00000000 		.4byte	.LFB165
 6477 1795 0E000000 		.4byte	.LFE165-.LFB165
 6478 1799 01       		.uleb128 0x1
 6479 179a 9C       		.byte	0x9c
 6480 179b BE170000 		.4byte	0x17be
 6481 179f 28       		.uleb128 0x28
 6482 17a0 87000000 		.4byte	.LASF175
 6483 17a4 01       		.byte	0x1
 6484 17a5 EE03     		.2byte	0x3ee
 6485 17a7 CB0B0000 		.4byte	0xbcb
 6486 17ab 01       		.uleb128 0x1
 6487 17ac 50       		.byte	0x50
 6488 17ad 23       		.uleb128 0x23
 6489 17ae 08020000 		.4byte	.LASF257
 6490 17b2 01       		.byte	0x1
 6491 17b3 EE03     		.2byte	0x3ee
ARM GAS  /tmp/ccJYkMjP.s 			page 157


 6492 17b5 8C000000 		.4byte	0x8c
 6493 17b9 68050000 		.4byte	.LLST97
 6494 17bd 00       		.byte	0
 6495 17be 27       		.uleb128 0x27
 6496 17bf EB0C0000 		.4byte	.LASF258
 6497 17c3 01       		.byte	0x1
 6498 17c4 E003     		.2byte	0x3e0
 6499 17c6 00000000 		.4byte	.LFB164
 6500 17ca 0E000000 		.4byte	.LFE164-.LFB164
 6501 17ce 01       		.uleb128 0x1
 6502 17cf 9C       		.byte	0x9c
 6503 17d0 F3170000 		.4byte	0x17f3
 6504 17d4 28       		.uleb128 0x28
 6505 17d5 87000000 		.4byte	.LASF175
 6506 17d9 01       		.byte	0x1
 6507 17da E003     		.2byte	0x3e0
 6508 17dc CB0B0000 		.4byte	0xbcb
 6509 17e0 01       		.uleb128 0x1
 6510 17e1 50       		.byte	0x50
 6511 17e2 23       		.uleb128 0x23
 6512 17e3 6E0F0000 		.4byte	.LASF232
 6513 17e7 01       		.byte	0x1
 6514 17e8 E003     		.2byte	0x3e0
 6515 17ea 8C000000 		.4byte	0x8c
 6516 17ee 89050000 		.4byte	.LLST96
 6517 17f2 00       		.byte	0
 6518 17f3 27       		.uleb128 0x27
 6519 17f4 02100000 		.4byte	.LASF259
 6520 17f8 01       		.byte	0x1
 6521 17f9 D403     		.2byte	0x3d4
 6522 17fb 00000000 		.4byte	.LFB163
 6523 17ff 0A000000 		.4byte	.LFE163-.LFB163
 6524 1803 01       		.uleb128 0x1
 6525 1804 9C       		.byte	0x9c
 6526 1805 18180000 		.4byte	0x1818
 6527 1809 28       		.uleb128 0x28
 6528 180a 87000000 		.4byte	.LASF175
 6529 180e 01       		.byte	0x1
 6530 180f D403     		.2byte	0x3d4
 6531 1811 CB0B0000 		.4byte	0xbcb
 6532 1815 01       		.uleb128 0x1
 6533 1816 50       		.byte	0x50
 6534 1817 00       		.byte	0
 6535 1818 27       		.uleb128 0x27
 6536 1819 7D040000 		.4byte	.LASF260
 6537 181d 01       		.byte	0x1
 6538 181e CA03     		.2byte	0x3ca
 6539 1820 00000000 		.4byte	.LFB162
 6540 1824 0A000000 		.4byte	.LFE162-.LFB162
 6541 1828 01       		.uleb128 0x1
 6542 1829 9C       		.byte	0x9c
 6543 182a 3D180000 		.4byte	0x183d
 6544 182e 28       		.uleb128 0x28
 6545 182f 87000000 		.4byte	.LASF175
 6546 1833 01       		.byte	0x1
 6547 1834 CA03     		.2byte	0x3ca
 6548 1836 CB0B0000 		.4byte	0xbcb
ARM GAS  /tmp/ccJYkMjP.s 			page 158


 6549 183a 01       		.uleb128 0x1
 6550 183b 50       		.byte	0x50
 6551 183c 00       		.byte	0
 6552 183d 27       		.uleb128 0x27
 6553 183e AE0F0000 		.4byte	.LASF261
 6554 1842 01       		.byte	0x1
 6555 1843 C003     		.2byte	0x3c0
 6556 1845 00000000 		.4byte	.LFB161
 6557 1849 0A000000 		.4byte	.LFE161-.LFB161
 6558 184d 01       		.uleb128 0x1
 6559 184e 9C       		.byte	0x9c
 6560 184f 62180000 		.4byte	0x1862
 6561 1853 28       		.uleb128 0x28
 6562 1854 87000000 		.4byte	.LASF175
 6563 1858 01       		.byte	0x1
 6564 1859 C003     		.2byte	0x3c0
 6565 185b CB0B0000 		.4byte	0xbcb
 6566 185f 01       		.uleb128 0x1
 6567 1860 50       		.byte	0x50
 6568 1861 00       		.byte	0
 6569 1862 27       		.uleb128 0x27
 6570 1863 A3060000 		.4byte	.LASF262
 6571 1867 01       		.byte	0x1
 6572 1868 B603     		.2byte	0x3b6
 6573 186a 00000000 		.4byte	.LFB160
 6574 186e 0A000000 		.4byte	.LFE160-.LFB160
 6575 1872 01       		.uleb128 0x1
 6576 1873 9C       		.byte	0x9c
 6577 1874 87180000 		.4byte	0x1887
 6578 1878 28       		.uleb128 0x28
 6579 1879 87000000 		.4byte	.LASF175
 6580 187d 01       		.byte	0x1
 6581 187e B603     		.2byte	0x3b6
 6582 1880 CB0B0000 		.4byte	0xbcb
 6583 1884 01       		.uleb128 0x1
 6584 1885 50       		.byte	0x50
 6585 1886 00       		.byte	0
 6586 1887 27       		.uleb128 0x27
 6587 1888 02030000 		.4byte	.LASF263
 6588 188c 01       		.byte	0x1
 6589 188d AB03     		.2byte	0x3ab
 6590 188f 00000000 		.4byte	.LFB159
 6591 1893 0C000000 		.4byte	.LFE159-.LFB159
 6592 1897 01       		.uleb128 0x1
 6593 1898 9C       		.byte	0x9c
 6594 1899 BC180000 		.4byte	0x18bc
 6595 189d 28       		.uleb128 0x28
 6596 189e 87000000 		.4byte	.LASF175
 6597 18a2 01       		.byte	0x1
 6598 18a3 AB03     		.2byte	0x3ab
 6599 18a5 CB0B0000 		.4byte	0xbcb
 6600 18a9 01       		.uleb128 0x1
 6601 18aa 50       		.byte	0x50
 6602 18ab 23       		.uleb128 0x23
 6603 18ac D50A0000 		.4byte	.LASF264
 6604 18b0 01       		.byte	0x1
 6605 18b1 AB03     		.2byte	0x3ab
ARM GAS  /tmp/ccJYkMjP.s 			page 159


 6606 18b3 8C000000 		.4byte	0x8c
 6607 18b7 AA050000 		.4byte	.LLST95
 6608 18bb 00       		.byte	0
 6609 18bc 27       		.uleb128 0x27
 6610 18bd 08050000 		.4byte	.LASF265
 6611 18c1 01       		.byte	0x1
 6612 18c2 9F03     		.2byte	0x39f
 6613 18c4 00000000 		.4byte	.LFB158
 6614 18c8 08000000 		.4byte	.LFE158-.LFB158
 6615 18cc 01       		.uleb128 0x1
 6616 18cd 9C       		.byte	0x9c
 6617 18ce E1180000 		.4byte	0x18e1
 6618 18d2 28       		.uleb128 0x28
 6619 18d3 87000000 		.4byte	.LASF175
 6620 18d7 01       		.byte	0x1
 6621 18d8 9F03     		.2byte	0x39f
 6622 18da CB0B0000 		.4byte	0xbcb
 6623 18de 01       		.uleb128 0x1
 6624 18df 50       		.byte	0x50
 6625 18e0 00       		.byte	0
 6626 18e1 27       		.uleb128 0x27
 6627 18e2 9B0C0000 		.4byte	.LASF266
 6628 18e6 01       		.byte	0x1
 6629 18e7 9503     		.2byte	0x395
 6630 18e9 00000000 		.4byte	.LFB157
 6631 18ed 08000000 		.4byte	.LFE157-.LFB157
 6632 18f1 01       		.uleb128 0x1
 6633 18f2 9C       		.byte	0x9c
 6634 18f3 06190000 		.4byte	0x1906
 6635 18f7 28       		.uleb128 0x28
 6636 18f8 87000000 		.4byte	.LASF175
 6637 18fc 01       		.byte	0x1
 6638 18fd 9503     		.2byte	0x395
 6639 18ff CB0B0000 		.4byte	0xbcb
 6640 1903 01       		.uleb128 0x1
 6641 1904 50       		.byte	0x50
 6642 1905 00       		.byte	0
 6643 1906 22       		.uleb128 0x22
 6644 1907 690D0000 		.4byte	.LASF267
 6645 190b 01       		.byte	0x1
 6646 190c 7B03     		.2byte	0x37b
 6647 190e A7000000 		.4byte	0xa7
 6648 1912 00000000 		.4byte	.LFB156
 6649 1916 50000000 		.4byte	.LFE156-.LFB156
 6650 191a 01       		.uleb128 0x1
 6651 191b 9C       		.byte	0x9c
 6652 191c 5B1A0000 		.4byte	0x1a5b
 6653 1920 23       		.uleb128 0x23
 6654 1921 87000000 		.4byte	.LASF175
 6655 1925 01       		.byte	0x1
 6656 1926 7B03     		.2byte	0x37b
 6657 1928 CB0B0000 		.4byte	0xbcb
 6658 192c CB050000 		.4byte	.LLST84
 6659 1930 23       		.uleb128 0x23
 6660 1931 F60F0000 		.4byte	.LASF239
 6661 1935 01       		.byte	0x1
 6662 1936 7B03     		.2byte	0x37b
ARM GAS  /tmp/ccJYkMjP.s 			page 160


 6663 1938 A7000000 		.4byte	0xa7
 6664 193c EC050000 		.4byte	.LLST85
 6665 1940 23       		.uleb128 0x23
 6666 1941 6B040000 		.4byte	.LASF240
 6667 1945 01       		.byte	0x1
 6668 1946 7C03     		.2byte	0x37c
 6669 1948 A7000000 		.4byte	0xa7
 6670 194c 0D060000 		.4byte	.LLST86
 6671 1950 31       		.uleb128 0x31
 6672 1951 79210000 		.4byte	0x2179
 6673 1955 02000000 		.4byte	.LBB364
 6674 1959 38040000 		.4byte	.Ldebug_ranges0+0x438
 6675 195d 01       		.byte	0x1
 6676 195e 7F03     		.2byte	0x37f
 6677 1960 FF190000 		.4byte	0x19ff
 6678 1964 30       		.uleb128 0x30
 6679 1965 85210000 		.4byte	0x2185
 6680 1969 2E060000 		.4byte	.LLST87
 6681 196d 32       		.uleb128 0x32
 6682 196e D10B0000 		.4byte	0xbd1
 6683 1972 04000000 		.4byte	.LBB366
 6684 1976 58040000 		.4byte	.Ldebug_ranges0+0x458
 6685 197a 01       		.byte	0x1
 6686 197b FD       		.byte	0xfd
 6687 197c 8A190000 		.4byte	0x198a
 6688 1980 30       		.uleb128 0x30
 6689 1981 DE0B0000 		.4byte	0xbde
 6690 1985 41060000 		.4byte	.LLST88
 6691 1989 00       		.byte	0
 6692 198a 31       		.uleb128 0x31
 6693 198b 93100000 		.4byte	0x1093
 6694 198f 06000000 		.4byte	.LBB369
 6695 1993 70040000 		.4byte	.Ldebug_ranges0+0x470
 6696 1997 01       		.byte	0x1
 6697 1998 0501     		.2byte	0x105
 6698 199a A8190000 		.4byte	0x19a8
 6699 199e 30       		.uleb128 0x30
 6700 199f A0100000 		.4byte	0x10a0
 6701 19a3 54060000 		.4byte	.LLST89
 6702 19a7 00       		.byte	0
 6703 19a8 31       		.uleb128 0x31
 6704 19a9 07100000 		.4byte	0x1007
 6705 19ad 0A000000 		.4byte	.LBB372
 6706 19b1 88040000 		.4byte	.Ldebug_ranges0+0x488
 6707 19b5 01       		.byte	0x1
 6708 19b6 0601     		.2byte	0x106
 6709 19b8 C6190000 		.4byte	0x19c6
 6710 19bc 30       		.uleb128 0x30
 6711 19bd 14100000 		.4byte	0x1014
 6712 19c1 67060000 		.4byte	.LLST90
 6713 19c5 00       		.byte	0
 6714 19c6 31       		.uleb128 0x31
 6715 19c7 FE0E0000 		.4byte	0xefe
 6716 19cb 12000000 		.4byte	.LBB376
 6717 19cf A0040000 		.4byte	.Ldebug_ranges0+0x4a0
 6718 19d3 01       		.byte	0x1
 6719 19d4 0801     		.2byte	0x108
ARM GAS  /tmp/ccJYkMjP.s 			page 161


 6720 19d6 E4190000 		.4byte	0x19e4
 6721 19da 30       		.uleb128 0x30
 6722 19db 0B0F0000 		.4byte	0xf0b
 6723 19df 7A060000 		.4byte	.LLST91
 6724 19e3 00       		.byte	0
 6725 19e4 2F       		.uleb128 0x2f
 6726 19e5 D90D0000 		.4byte	0xdd9
 6727 19e9 18000000 		.4byte	.LBB379
 6728 19ed B8040000 		.4byte	.Ldebug_ranges0+0x4b8
 6729 19f1 01       		.byte	0x1
 6730 19f2 0A01     		.2byte	0x10a
 6731 19f4 30       		.uleb128 0x30
 6732 19f5 E60D0000 		.4byte	0xde6
 6733 19f9 8D060000 		.4byte	.LLST92
 6734 19fd 00       		.byte	0
 6735 19fe 00       		.byte	0
 6736 19ff 31       		.uleb128 0x31
 6737 1a00 46100000 		.4byte	0x1046
 6738 1a04 1E000000 		.4byte	.LBB388
 6739 1a08 D0040000 		.4byte	.Ldebug_ranges0+0x4d0
 6740 1a0c 01       		.byte	0x1
 6741 1a0d 8103     		.2byte	0x381
 6742 1a0f 1D1A0000 		.4byte	0x1a1d
 6743 1a13 30       		.uleb128 0x30
 6744 1a14 53100000 		.4byte	0x1053
 6745 1a18 A0060000 		.4byte	.LLST93
 6746 1a1c 00       		.byte	0
 6747 1a1d 31       		.uleb128 0x31
 6748 1a1e D2100000 		.4byte	0x10d2
 6749 1a22 22000000 		.4byte	.LBB392
 6750 1a26 E8040000 		.4byte	.Ldebug_ranges0+0x4e8
 6751 1a2a 01       		.byte	0x1
 6752 1a2b 8203     		.2byte	0x382
 6753 1a2d 3B1A0000 		.4byte	0x1a3b
 6754 1a31 30       		.uleb128 0x30
 6755 1a32 DF100000 		.4byte	0x10df
 6756 1a36 B3060000 		.4byte	.LLST94
 6757 1a3a 00       		.byte	0
 6758 1a3b 33       		.uleb128 0x33
 6759 1a3c 44000000 		.4byte	.LVL124
 6760 1a40 39220000 		.4byte	0x2239
 6761 1a44 34       		.uleb128 0x34
 6762 1a45 01       		.uleb128 0x1
 6763 1a46 50       		.byte	0x50
 6764 1a47 03       		.uleb128 0x3
 6765 1a48 F3       		.byte	0xf3
 6766 1a49 01       		.uleb128 0x1
 6767 1a4a 50       		.byte	0x50
 6768 1a4b 34       		.uleb128 0x34
 6769 1a4c 01       		.uleb128 0x1
 6770 1a4d 51       		.byte	0x51
 6771 1a4e 03       		.uleb128 0x3
 6772 1a4f F3       		.byte	0xf3
 6773 1a50 01       		.uleb128 0x1
 6774 1a51 51       		.byte	0x51
 6775 1a52 34       		.uleb128 0x34
 6776 1a53 01       		.uleb128 0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 162


 6777 1a54 52       		.byte	0x52
 6778 1a55 03       		.uleb128 0x3
 6779 1a56 F3       		.byte	0xf3
 6780 1a57 01       		.uleb128 0x1
 6781 1a58 52       		.byte	0x52
 6782 1a59 00       		.byte	0
 6783 1a5a 00       		.byte	0
 6784 1a5b 22       		.uleb128 0x22
 6785 1a5c 48070000 		.4byte	.LASF268
 6786 1a60 01       		.byte	0x1
 6787 1a61 5A03     		.2byte	0x35a
 6788 1a63 A7000000 		.4byte	0xa7
 6789 1a67 00000000 		.4byte	.LFB155
 6790 1a6b 50000000 		.4byte	.LFE155-.LFB155
 6791 1a6f 01       		.uleb128 0x1
 6792 1a70 9C       		.byte	0x9c
 6793 1a71 AB1B0000 		.4byte	0x1bab
 6794 1a75 23       		.uleb128 0x23
 6795 1a76 87000000 		.4byte	.LASF175
 6796 1a7a 01       		.byte	0x1
 6797 1a7b 5A03     		.2byte	0x35a
 6798 1a7d CB0B0000 		.4byte	0xbcb
 6799 1a81 C6060000 		.4byte	.LLST74
 6800 1a85 23       		.uleb128 0x23
 6801 1a86 F60F0000 		.4byte	.LASF239
 6802 1a8a 01       		.byte	0x1
 6803 1a8b 5A03     		.2byte	0x35a
 6804 1a8d A7000000 		.4byte	0xa7
 6805 1a91 F2060000 		.4byte	.LLST75
 6806 1a95 23       		.uleb128 0x23
 6807 1a96 6B040000 		.4byte	.LASF240
 6808 1a9a 01       		.byte	0x1
 6809 1a9b 5B03     		.2byte	0x35b
 6810 1a9d A7000000 		.4byte	0xa7
 6811 1aa1 13070000 		.4byte	.LLST76
 6812 1aa5 31       		.uleb128 0x31
 6813 1aa6 79210000 		.4byte	0x2179
 6814 1aaa 02000000 		.4byte	.LBB332
 6815 1aae 78030000 		.4byte	.Ldebug_ranges0+0x378
 6816 1ab2 01       		.byte	0x1
 6817 1ab3 5E03     		.2byte	0x35e
 6818 1ab5 501B0000 		.4byte	0x1b50
 6819 1ab9 30       		.uleb128 0x30
 6820 1aba 85210000 		.4byte	0x2185
 6821 1abe 34070000 		.4byte	.LLST77
 6822 1ac2 32       		.uleb128 0x32
 6823 1ac3 D10B0000 		.4byte	0xbd1
 6824 1ac7 02000000 		.4byte	.LBB334
 6825 1acb 90030000 		.4byte	.Ldebug_ranges0+0x390
 6826 1acf 01       		.byte	0x1
 6827 1ad0 FD       		.byte	0xfd
 6828 1ad1 DB1A0000 		.4byte	0x1adb
 6829 1ad5 2B       		.uleb128 0x2b
 6830 1ad6 DE0B0000 		.4byte	0xbde
 6831 1ada 00       		.byte	0
 6832 1adb 31       		.uleb128 0x31
 6833 1adc 93100000 		.4byte	0x1093
ARM GAS  /tmp/ccJYkMjP.s 			page 163


 6834 1ae0 06000000 		.4byte	.LBB337
 6835 1ae4 A8030000 		.4byte	.Ldebug_ranges0+0x3a8
 6836 1ae8 01       		.byte	0x1
 6837 1ae9 0501     		.2byte	0x105
 6838 1aeb F91A0000 		.4byte	0x1af9
 6839 1aef 30       		.uleb128 0x30
 6840 1af0 A0100000 		.4byte	0x10a0
 6841 1af4 47070000 		.4byte	.LLST78
 6842 1af8 00       		.byte	0
 6843 1af9 31       		.uleb128 0x31
 6844 1afa 07100000 		.4byte	0x1007
 6845 1afe 0A000000 		.4byte	.LBB340
 6846 1b02 C0030000 		.4byte	.Ldebug_ranges0+0x3c0
 6847 1b06 01       		.byte	0x1
 6848 1b07 0601     		.2byte	0x106
 6849 1b09 171B0000 		.4byte	0x1b17
 6850 1b0d 30       		.uleb128 0x30
 6851 1b0e 14100000 		.4byte	0x1014
 6852 1b12 5A070000 		.4byte	.LLST79
 6853 1b16 00       		.byte	0
 6854 1b17 31       		.uleb128 0x31
 6855 1b18 FE0E0000 		.4byte	0xefe
 6856 1b1c 10000000 		.4byte	.LBB344
 6857 1b20 D8030000 		.4byte	.Ldebug_ranges0+0x3d8
 6858 1b24 01       		.byte	0x1
 6859 1b25 0801     		.2byte	0x108
 6860 1b27 351B0000 		.4byte	0x1b35
 6861 1b2b 30       		.uleb128 0x30
 6862 1b2c 0B0F0000 		.4byte	0xf0b
 6863 1b30 6D070000 		.4byte	.LLST80
 6864 1b34 00       		.byte	0
 6865 1b35 2F       		.uleb128 0x2f
 6866 1b36 D90D0000 		.4byte	0xdd9
 6867 1b3a 14000000 		.4byte	.LBB347
 6868 1b3e F0030000 		.4byte	.Ldebug_ranges0+0x3f0
 6869 1b42 01       		.byte	0x1
 6870 1b43 0A01     		.2byte	0x10a
 6871 1b45 30       		.uleb128 0x30
 6872 1b46 E60D0000 		.4byte	0xde6
 6873 1b4a 80070000 		.4byte	.LLST81
 6874 1b4e 00       		.byte	0
 6875 1b4f 00       		.byte	0
 6876 1b50 31       		.uleb128 0x31
 6877 1b51 46100000 		.4byte	0x1046
 6878 1b55 32000000 		.4byte	.LBB356
 6879 1b59 08040000 		.4byte	.Ldebug_ranges0+0x408
 6880 1b5d 01       		.byte	0x1
 6881 1b5e 6903     		.2byte	0x369
 6882 1b60 6E1B0000 		.4byte	0x1b6e
 6883 1b64 30       		.uleb128 0x30
 6884 1b65 53100000 		.4byte	0x1053
 6885 1b69 93070000 		.4byte	.LLST82
 6886 1b6d 00       		.byte	0
 6887 1b6e 31       		.uleb128 0x31
 6888 1b6f D2100000 		.4byte	0x10d2
 6889 1b73 34000000 		.4byte	.LBB359
 6890 1b77 20040000 		.4byte	.Ldebug_ranges0+0x420
ARM GAS  /tmp/ccJYkMjP.s 			page 164


 6891 1b7b 01       		.byte	0x1
 6892 1b7c 6A03     		.2byte	0x36a
 6893 1b7e 8C1B0000 		.4byte	0x1b8c
 6894 1b82 30       		.uleb128 0x30
 6895 1b83 DF100000 		.4byte	0x10df
 6896 1b87 A6070000 		.4byte	.LLST83
 6897 1b8b 00       		.byte	0
 6898 1b8c 33       		.uleb128 0x33
 6899 1b8d 2E000000 		.4byte	.LVL109
 6900 1b91 39220000 		.4byte	0x2239
 6901 1b95 34       		.uleb128 0x34
 6902 1b96 01       		.uleb128 0x1
 6903 1b97 50       		.byte	0x50
 6904 1b98 02       		.uleb128 0x2
 6905 1b99 74       		.byte	0x74
 6906 1b9a 00       		.sleb128 0
 6907 1b9b 34       		.uleb128 0x34
 6908 1b9c 01       		.uleb128 0x1
 6909 1b9d 51       		.byte	0x51
 6910 1b9e 03       		.uleb128 0x3
 6911 1b9f F3       		.byte	0xf3
 6912 1ba0 01       		.uleb128 0x1
 6913 1ba1 51       		.byte	0x51
 6914 1ba2 34       		.uleb128 0x34
 6915 1ba3 01       		.uleb128 0x1
 6916 1ba4 52       		.byte	0x52
 6917 1ba5 03       		.uleb128 0x3
 6918 1ba6 F3       		.byte	0xf3
 6919 1ba7 01       		.uleb128 0x1
 6920 1ba8 52       		.byte	0x52
 6921 1ba9 00       		.byte	0
 6922 1baa 00       		.byte	0
 6923 1bab 22       		.uleb128 0x22
 6924 1bac 8B0A0000 		.4byte	.LASF269
 6925 1bb0 01       		.byte	0x1
 6926 1bb1 1803     		.2byte	0x318
 6927 1bb3 A7000000 		.4byte	0xa7
 6928 1bb7 00000000 		.4byte	.LFB154
 6929 1bbb A8000000 		.4byte	.LFE154-.LFB154
 6930 1bbf 01       		.uleb128 0x1
 6931 1bc0 9C       		.byte	0x9c
 6932 1bc1 C11C0000 		.4byte	0x1cc1
 6933 1bc5 23       		.uleb128 0x23
 6934 1bc6 87000000 		.4byte	.LASF175
 6935 1bca 01       		.byte	0x1
 6936 1bcb 1803     		.2byte	0x318
 6937 1bcd CB0B0000 		.4byte	0xbcb
 6938 1bd1 B9070000 		.4byte	.LLST65
 6939 1bd5 23       		.uleb128 0x23
 6940 1bd6 0D040000 		.4byte	.LASF270
 6941 1bda 01       		.byte	0x1
 6942 1bdb 1903     		.2byte	0x319
 6943 1bdd C11C0000 		.4byte	0x1cc1
 6944 1be1 D7070000 		.4byte	.LLST66
 6945 1be5 24       		.uleb128 0x24
 6946 1be6 B9050000 		.4byte	.LASF271
 6947 1bea 01       		.byte	0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 165


 6948 1beb 1B03     		.2byte	0x31b
 6949 1bed A7000000 		.4byte	0xa7
 6950 1bf1 05       		.uleb128 0x5
 6951 1bf2 03       		.byte	0x3
 6952 1bf3 00000000 		.4byte	ul_reg_val.9335
 6953 1bf7 37       		.uleb128 0x37
 6954 1bf8 79210000 		.4byte	0x2179
 6955 1bfc 04000000 		.4byte	.LBB304
 6956 1c00 22000000 		.4byte	.LBE304-.LBB304
 6957 1c04 01       		.byte	0x1
 6958 1c05 1E03     		.2byte	0x31e
 6959 1c07 A61C0000 		.4byte	0x1ca6
 6960 1c0b 30       		.uleb128 0x30
 6961 1c0c 85210000 		.4byte	0x2185
 6962 1c10 11080000 		.4byte	.LLST67
 6963 1c14 31       		.uleb128 0x31
 6964 1c15 FE0E0000 		.4byte	0xefe
 6965 1c19 06000000 		.4byte	.LBB306
 6966 1c1d E0020000 		.4byte	.Ldebug_ranges0+0x2e0
 6967 1c21 01       		.byte	0x1
 6968 1c22 0801     		.2byte	0x108
 6969 1c24 321C0000 		.4byte	0x1c32
 6970 1c28 30       		.uleb128 0x30
 6971 1c29 0B0F0000 		.4byte	0xf0b
 6972 1c2d 2F080000 		.4byte	.LLST68
 6973 1c31 00       		.byte	0
 6974 1c32 31       		.uleb128 0x31
 6975 1c33 D90D0000 		.4byte	0xdd9
 6976 1c37 0A000000 		.4byte	.LBB309
 6977 1c3b F8020000 		.4byte	.Ldebug_ranges0+0x2f8
 6978 1c3f 01       		.byte	0x1
 6979 1c40 0A01     		.2byte	0x10a
 6980 1c42 501C0000 		.4byte	0x1c50
 6981 1c46 30       		.uleb128 0x30
 6982 1c47 E60D0000 		.4byte	0xde6
 6983 1c4b 42080000 		.4byte	.LLST69
 6984 1c4f 00       		.byte	0
 6985 1c50 32       		.uleb128 0x32
 6986 1c51 D10B0000 		.4byte	0xbd1
 6987 1c55 0E000000 		.4byte	.LBB312
 6988 1c59 10030000 		.4byte	.Ldebug_ranges0+0x310
 6989 1c5d 01       		.byte	0x1
 6990 1c5e FD       		.byte	0xfd
 6991 1c5f 6D1C0000 		.4byte	0x1c6d
 6992 1c63 30       		.uleb128 0x30
 6993 1c64 DE0B0000 		.4byte	0xbde
 6994 1c68 55080000 		.4byte	.LLST70
 6995 1c6c 00       		.byte	0
 6996 1c6d 31       		.uleb128 0x31
 6997 1c6e 93100000 		.4byte	0x1093
 6998 1c72 10000000 		.4byte	.LBB315
 6999 1c76 28030000 		.4byte	.Ldebug_ranges0+0x328
 7000 1c7a 01       		.byte	0x1
 7001 1c7b 0501     		.2byte	0x105
 7002 1c7d 8B1C0000 		.4byte	0x1c8b
 7003 1c81 30       		.uleb128 0x30
 7004 1c82 A0100000 		.4byte	0x10a0
ARM GAS  /tmp/ccJYkMjP.s 			page 166


 7005 1c86 73080000 		.4byte	.LLST71
 7006 1c8a 00       		.byte	0
 7007 1c8b 2F       		.uleb128 0x2f
 7008 1c8c 07100000 		.4byte	0x1007
 7009 1c90 12000000 		.4byte	.LBB318
 7010 1c94 40030000 		.4byte	.Ldebug_ranges0+0x340
 7011 1c98 01       		.byte	0x1
 7012 1c99 0601     		.2byte	0x106
 7013 1c9b 30       		.uleb128 0x30
 7014 1c9c 14100000 		.4byte	0x1014
 7015 1ca0 86080000 		.4byte	.LLST72
 7016 1ca4 00       		.byte	0
 7017 1ca5 00       		.byte	0
 7018 1ca6 2F       		.uleb128 0x2f
 7019 1ca7 91210000 		.4byte	0x2191
 7020 1cab 26000000 		.4byte	.LBB326
 7021 1caf 58030000 		.4byte	.Ldebug_ranges0+0x358
 7022 1cb3 01       		.byte	0x1
 7023 1cb4 2103     		.2byte	0x321
 7024 1cb6 30       		.uleb128 0x30
 7025 1cb7 9D210000 		.4byte	0x219d
 7026 1cbb 99080000 		.4byte	.LLST73
 7027 1cbf 00       		.byte	0
 7028 1cc0 00       		.byte	0
 7029 1cc1 13       		.uleb128 0x13
 7030 1cc2 04       		.byte	0x4
 7031 1cc3 8D0B0000 		.4byte	0xb8d
 7032 1cc7 22       		.uleb128 0x22
 7033 1cc8 4A090000 		.4byte	.LASF272
 7034 1ccc 01       		.byte	0x1
 7035 1ccd D802     		.2byte	0x2d8
 7036 1ccf A7000000 		.4byte	0xa7
 7037 1cd3 00000000 		.4byte	.LFB153
 7038 1cd7 B4000000 		.4byte	.LFE153-.LFB153
 7039 1cdb 01       		.uleb128 0x1
 7040 1cdc 9C       		.byte	0x9c
 7041 1cdd 0E1E0000 		.4byte	0x1e0e
 7042 1ce1 23       		.uleb128 0x23
 7043 1ce2 87000000 		.4byte	.LASF175
 7044 1ce6 01       		.byte	0x1
 7045 1ce7 D802     		.2byte	0x2d8
 7046 1ce9 CB0B0000 		.4byte	0xbcb
 7047 1ced AC080000 		.4byte	.LLST52
 7048 1cf1 23       		.uleb128 0x23
 7049 1cf2 0D040000 		.4byte	.LASF270
 7050 1cf6 01       		.byte	0x1
 7051 1cf7 D902     		.2byte	0x2d9
 7052 1cf9 C11C0000 		.4byte	0x1cc1
 7053 1cfd CA080000 		.4byte	.LLST53
 7054 1d01 23       		.uleb128 0x23
 7055 1d02 6B040000 		.4byte	.LASF240
 7056 1d06 01       		.byte	0x1
 7057 1d07 D902     		.2byte	0x2d9
 7058 1d09 A7000000 		.4byte	0xa7
 7059 1d0d 04090000 		.4byte	.LLST54
 7060 1d11 24       		.uleb128 0x24
 7061 1d12 B9050000 		.4byte	.LASF271
ARM GAS  /tmp/ccJYkMjP.s 			page 167


 7062 1d16 01       		.byte	0x1
 7063 1d17 DB02     		.2byte	0x2db
 7064 1d19 A7000000 		.4byte	0xa7
 7065 1d1d 05       		.uleb128 0x5
 7066 1d1e 03       		.byte	0x3
 7067 1d1f 00000000 		.4byte	ul_reg_val.9324
 7068 1d23 31       		.uleb128 0x31
 7069 1d24 79210000 		.4byte	0x2179
 7070 1d28 04000000 		.4byte	.LBB274
 7071 1d2c 30020000 		.4byte	.Ldebug_ranges0+0x230
 7072 1d30 01       		.byte	0x1
 7073 1d31 DE02     		.2byte	0x2de
 7074 1d33 D21D0000 		.4byte	0x1dd2
 7075 1d37 30       		.uleb128 0x30
 7076 1d38 85210000 		.4byte	0x2185
 7077 1d3c 25090000 		.4byte	.LLST55
 7078 1d40 32       		.uleb128 0x32
 7079 1d41 D10B0000 		.4byte	0xbd1
 7080 1d45 04000000 		.4byte	.LBB276
 7081 1d49 50020000 		.4byte	.Ldebug_ranges0+0x250
 7082 1d4d 01       		.byte	0x1
 7083 1d4e FD       		.byte	0xfd
 7084 1d4f 5D1D0000 		.4byte	0x1d5d
 7085 1d53 30       		.uleb128 0x30
 7086 1d54 DE0B0000 		.4byte	0xbde
 7087 1d58 43090000 		.4byte	.LLST56
 7088 1d5c 00       		.byte	0
 7089 1d5d 31       		.uleb128 0x31
 7090 1d5e 93100000 		.4byte	0x1093
 7091 1d62 08000000 		.4byte	.LBB279
 7092 1d66 68020000 		.4byte	.Ldebug_ranges0+0x268
 7093 1d6a 01       		.byte	0x1
 7094 1d6b 0501     		.2byte	0x105
 7095 1d6d 7B1D0000 		.4byte	0x1d7b
 7096 1d71 30       		.uleb128 0x30
 7097 1d72 A0100000 		.4byte	0x10a0
 7098 1d76 61090000 		.4byte	.LLST57
 7099 1d7a 00       		.byte	0
 7100 1d7b 31       		.uleb128 0x31
 7101 1d7c 07100000 		.4byte	0x1007
 7102 1d80 10000000 		.4byte	.LBB283
 7103 1d84 80020000 		.4byte	.Ldebug_ranges0+0x280
 7104 1d88 01       		.byte	0x1
 7105 1d89 0601     		.2byte	0x106
 7106 1d8b 991D0000 		.4byte	0x1d99
 7107 1d8f 30       		.uleb128 0x30
 7108 1d90 14100000 		.4byte	0x1014
 7109 1d94 74090000 		.4byte	.LLST58
 7110 1d98 00       		.byte	0
 7111 1d99 31       		.uleb128 0x31
 7112 1d9a FE0E0000 		.4byte	0xefe
 7113 1d9e 12000000 		.4byte	.LBB286
 7114 1da2 98020000 		.4byte	.Ldebug_ranges0+0x298
 7115 1da6 01       		.byte	0x1
 7116 1da7 0801     		.2byte	0x108
 7117 1da9 B71D0000 		.4byte	0x1db7
 7118 1dad 30       		.uleb128 0x30
ARM GAS  /tmp/ccJYkMjP.s 			page 168


 7119 1dae 0B0F0000 		.4byte	0xf0b
 7120 1db2 87090000 		.4byte	.LLST59
 7121 1db6 00       		.byte	0
 7122 1db7 2F       		.uleb128 0x2f
 7123 1db8 D90D0000 		.4byte	0xdd9
 7124 1dbc 16000000 		.4byte	.LBB289
 7125 1dc0 B0020000 		.4byte	.Ldebug_ranges0+0x2b0
 7126 1dc4 01       		.byte	0x1
 7127 1dc5 0A01     		.2byte	0x10a
 7128 1dc7 30       		.uleb128 0x30
 7129 1dc8 E60D0000 		.4byte	0xde6
 7130 1dcc 9A090000 		.4byte	.LLST60
 7131 1dd0 00       		.byte	0
 7132 1dd1 00       		.byte	0
 7133 1dd2 2F       		.uleb128 0x2f
 7134 1dd3 A9210000 		.4byte	0x21a9
 7135 1dd7 38000000 		.4byte	.LBB300
 7136 1ddb C8020000 		.4byte	.Ldebug_ranges0+0x2c8
 7137 1ddf 01       		.byte	0x1
 7138 1de0 E302     		.2byte	0x2e3
 7139 1de2 30       		.uleb128 0x30
 7140 1de3 CF210000 		.4byte	0x21cf
 7141 1de7 AD090000 		.4byte	.LLST61
 7142 1deb 30       		.uleb128 0x30
 7143 1dec C4210000 		.4byte	0x21c4
 7144 1df0 CE090000 		.4byte	.LLST62
 7145 1df4 30       		.uleb128 0x30
 7146 1df5 B9210000 		.4byte	0x21b9
 7147 1df9 FA090000 		.4byte	.LLST63
 7148 1dfd 38       		.uleb128 0x38
 7149 1dfe C8020000 		.4byte	.Ldebug_ranges0+0x2c8
 7150 1e02 39       		.uleb128 0x39
 7151 1e03 DA210000 		.4byte	0x21da
 7152 1e07 0D0A0000 		.4byte	.LLST64
 7153 1e0b 00       		.byte	0
 7154 1e0c 00       		.byte	0
 7155 1e0d 00       		.byte	0
 7156 1e0e 22       		.uleb128 0x22
 7157 1e0f DF0B0000 		.4byte	.LASF273
 7158 1e13 01       		.byte	0x1
 7159 1e14 D801     		.2byte	0x1d8
 7160 1e16 A7000000 		.4byte	0xa7
 7161 1e1a 00000000 		.4byte	.LFB152
 7162 1e1e 1C000000 		.4byte	.LFE152-.LFB152
 7163 1e22 01       		.uleb128 0x1
 7164 1e23 9C       		.byte	0x9c
 7165 1e24 771E0000 		.4byte	0x1e77
 7166 1e28 23       		.uleb128 0x23
 7167 1e29 87000000 		.4byte	.LASF175
 7168 1e2d 01       		.byte	0x1
 7169 1e2e D801     		.2byte	0x1d8
 7170 1e30 CB0B0000 		.4byte	0xbcb
 7171 1e34 200A0000 		.4byte	.LLST49
 7172 1e38 23       		.uleb128 0x23
 7173 1e39 0D040000 		.4byte	.LASF270
 7174 1e3d 01       		.byte	0x1
 7175 1e3e D901     		.2byte	0x1d9
ARM GAS  /tmp/ccJYkMjP.s 			page 169


 7176 1e40 771E0000 		.4byte	0x1e77
 7177 1e44 3E0A0000 		.4byte	.LLST50
 7178 1e48 23       		.uleb128 0x23
 7179 1e49 6B040000 		.4byte	.LASF240
 7180 1e4d 01       		.byte	0x1
 7181 1e4e D901     		.2byte	0x1d9
 7182 1e50 A7000000 		.4byte	0xa7
 7183 1e54 5F0A0000 		.4byte	.LLST51
 7184 1e58 33       		.uleb128 0x33
 7185 1e59 08000000 		.4byte	.LVL69
 7186 1e5d 37210000 		.4byte	0x2137
 7187 1e61 34       		.uleb128 0x34
 7188 1e62 01       		.uleb128 0x1
 7189 1e63 50       		.byte	0x50
 7190 1e64 02       		.uleb128 0x2
 7191 1e65 74       		.byte	0x74
 7192 1e66 00       		.sleb128 0
 7193 1e67 34       		.uleb128 0x34
 7194 1e68 01       		.uleb128 0x1
 7195 1e69 51       		.byte	0x51
 7196 1e6a 03       		.uleb128 0x3
 7197 1e6b F3       		.byte	0xf3
 7198 1e6c 01       		.uleb128 0x1
 7199 1e6d 51       		.byte	0x51
 7200 1e6e 34       		.uleb128 0x34
 7201 1e6f 01       		.uleb128 0x1
 7202 1e70 52       		.byte	0x52
 7203 1e71 03       		.uleb128 0x3
 7204 1e72 F3       		.byte	0xf3
 7205 1e73 01       		.uleb128 0x1
 7206 1e74 52       		.byte	0x52
 7207 1e75 00       		.byte	0
 7208 1e76 00       		.byte	0
 7209 1e77 13       		.uleb128 0x13
 7210 1e78 04       		.byte	0x4
 7211 1e79 440B0000 		.4byte	0xb44
 7212 1e7d 22       		.uleb128 0x22
 7213 1e7e F60E0000 		.4byte	.LASF274
 7214 1e82 01       		.byte	0x1
 7215 1e83 B101     		.2byte	0x1b1
 7216 1e85 A7000000 		.4byte	0xa7
 7217 1e89 00000000 		.4byte	.LFB151
 7218 1e8d 54000000 		.4byte	.LFE151-.LFB151
 7219 1e91 01       		.uleb128 0x1
 7220 1e92 9C       		.byte	0x9c
 7221 1e93 8D1F0000 		.4byte	0x1f8d
 7222 1e97 23       		.uleb128 0x23
 7223 1e98 87000000 		.4byte	.LASF175
 7224 1e9c 01       		.byte	0x1
 7225 1e9d B101     		.2byte	0x1b1
 7226 1e9f CB0B0000 		.4byte	0xbcb
 7227 1ea3 800A0000 		.4byte	.LLST40
 7228 1ea7 23       		.uleb128 0x23
 7229 1ea8 0D040000 		.4byte	.LASF270
 7230 1eac 01       		.byte	0x1
 7231 1ead B201     		.2byte	0x1b2
 7232 1eaf 771E0000 		.4byte	0x1e77
ARM GAS  /tmp/ccJYkMjP.s 			page 170


 7233 1eb3 9E0A0000 		.4byte	.LLST41
 7234 1eb7 3A       		.uleb128 0x3a
 7235 1eb8 B9050000 		.4byte	.LASF271
 7236 1ebc 01       		.byte	0x1
 7237 1ebd B401     		.2byte	0x1b4
 7238 1ebf A7000000 		.4byte	0xa7
 7239 1ec3 37       		.uleb128 0x37
 7240 1ec4 79210000 		.4byte	0x2179
 7241 1ec8 04000000 		.4byte	.LBB250
 7242 1ecc 22000000 		.4byte	.LBE250-.LBB250
 7243 1ed0 01       		.byte	0x1
 7244 1ed1 B701     		.2byte	0x1b7
 7245 1ed3 721F0000 		.4byte	0x1f72
 7246 1ed7 30       		.uleb128 0x30
 7247 1ed8 85210000 		.4byte	0x2185
 7248 1edc CA0A0000 		.4byte	.LLST42
 7249 1ee0 31       		.uleb128 0x31
 7250 1ee1 D90D0000 		.4byte	0xdd9
 7251 1ee5 04000000 		.4byte	.LBB252
 7252 1ee9 B8010000 		.4byte	.Ldebug_ranges0+0x1b8
 7253 1eed 01       		.byte	0x1
 7254 1eee 0A01     		.2byte	0x10a
 7255 1ef0 FE1E0000 		.4byte	0x1efe
 7256 1ef4 30       		.uleb128 0x30
 7257 1ef5 E60D0000 		.4byte	0xde6
 7258 1ef9 E80A0000 		.4byte	.LLST43
 7259 1efd 00       		.byte	0
 7260 1efe 32       		.uleb128 0x32
 7261 1eff D10B0000 		.4byte	0xbd1
 7262 1f03 0A000000 		.4byte	.LBB255
 7263 1f07 D0010000 		.4byte	.Ldebug_ranges0+0x1d0
 7264 1f0b 01       		.byte	0x1
 7265 1f0c FD       		.byte	0xfd
 7266 1f0d 1B1F0000 		.4byte	0x1f1b
 7267 1f11 30       		.uleb128 0x30
 7268 1f12 DE0B0000 		.4byte	0xbde
 7269 1f16 FB0A0000 		.4byte	.LLST44
 7270 1f1a 00       		.byte	0
 7271 1f1b 31       		.uleb128 0x31
 7272 1f1c 93100000 		.4byte	0x1093
 7273 1f20 0C000000 		.4byte	.LBB258
 7274 1f24 E8010000 		.4byte	.Ldebug_ranges0+0x1e8
 7275 1f28 01       		.byte	0x1
 7276 1f29 0501     		.2byte	0x105
 7277 1f2b 391F0000 		.4byte	0x1f39
 7278 1f2f 30       		.uleb128 0x30
 7279 1f30 A0100000 		.4byte	0x10a0
 7280 1f34 190B0000 		.4byte	.LLST45
 7281 1f38 00       		.byte	0
 7282 1f39 31       		.uleb128 0x31
 7283 1f3a 07100000 		.4byte	0x1007
 7284 1f3e 0E000000 		.4byte	.LBB261
 7285 1f42 00020000 		.4byte	.Ldebug_ranges0+0x200
 7286 1f46 01       		.byte	0x1
 7287 1f47 0601     		.2byte	0x106
 7288 1f49 571F0000 		.4byte	0x1f57
 7289 1f4d 30       		.uleb128 0x30
ARM GAS  /tmp/ccJYkMjP.s 			page 171


 7290 1f4e 14100000 		.4byte	0x1014
 7291 1f52 2C0B0000 		.4byte	.LLST46
 7292 1f56 00       		.byte	0
 7293 1f57 2F       		.uleb128 0x2f
 7294 1f58 FE0E0000 		.4byte	0xefe
 7295 1f5c 10000000 		.4byte	.LBB264
 7296 1f60 18020000 		.4byte	.Ldebug_ranges0+0x218
 7297 1f64 01       		.byte	0x1
 7298 1f65 0801     		.2byte	0x108
 7299 1f67 30       		.uleb128 0x30
 7300 1f68 0B0F0000 		.4byte	0xf0b
 7301 1f6c 3F0B0000 		.4byte	.LLST47
 7302 1f70 00       		.byte	0
 7303 1f71 00       		.byte	0
 7304 1f72 2A       		.uleb128 0x2a
 7305 1f73 E5210000 		.4byte	0x21e5
 7306 1f77 26000000 		.4byte	.LBB272
 7307 1f7b 08000000 		.4byte	.LBE272-.LBB272
 7308 1f7f 01       		.byte	0x1
 7309 1f80 BA01     		.2byte	0x1ba
 7310 1f82 30       		.uleb128 0x30
 7311 1f83 F1210000 		.4byte	0x21f1
 7312 1f87 520B0000 		.4byte	.LLST48
 7313 1f8b 00       		.byte	0
 7314 1f8c 00       		.byte	0
 7315 1f8d 22       		.uleb128 0x22
 7316 1f8e 69020000 		.4byte	.LASF275
 7317 1f92 01       		.byte	0x1
 7318 1f93 8C01     		.2byte	0x18c
 7319 1f95 A7000000 		.4byte	0xa7
 7320 1f99 00000000 		.4byte	.LFB150
 7321 1f9d 70000000 		.4byte	.LFE150-.LFB150
 7322 1fa1 01       		.uleb128 0x1
 7323 1fa2 9C       		.byte	0x9c
 7324 1fa3 CE200000 		.4byte	0x20ce
 7325 1fa7 23       		.uleb128 0x23
 7326 1fa8 87000000 		.4byte	.LASF175
 7327 1fac 01       		.byte	0x1
 7328 1fad 8C01     		.2byte	0x18c
 7329 1faf CB0B0000 		.4byte	0xbcb
 7330 1fb3 650B0000 		.4byte	.LLST27
 7331 1fb7 23       		.uleb128 0x23
 7332 1fb8 0D040000 		.4byte	.LASF270
 7333 1fbc 01       		.byte	0x1
 7334 1fbd 8D01     		.2byte	0x18d
 7335 1fbf 771E0000 		.4byte	0x1e77
 7336 1fc3 830B0000 		.4byte	.LLST28
 7337 1fc7 23       		.uleb128 0x23
 7338 1fc8 6B040000 		.4byte	.LASF240
 7339 1fcc 01       		.byte	0x1
 7340 1fcd 8D01     		.2byte	0x18d
 7341 1fcf A7000000 		.4byte	0xa7
 7342 1fd3 A40B0000 		.4byte	.LLST29
 7343 1fd7 3A       		.uleb128 0x3a
 7344 1fd8 B9050000 		.4byte	.LASF271
 7345 1fdc 01       		.byte	0x1
 7346 1fdd 8F01     		.2byte	0x18f
ARM GAS  /tmp/ccJYkMjP.s 			page 172


 7347 1fdf A7000000 		.4byte	0xa7
 7348 1fe3 37       		.uleb128 0x37
 7349 1fe4 79210000 		.4byte	0x2179
 7350 1fe8 04000000 		.4byte	.LBB216
 7351 1fec 22000000 		.4byte	.LBE216-.LBB216
 7352 1ff0 01       		.byte	0x1
 7353 1ff1 9201     		.2byte	0x192
 7354 1ff3 92200000 		.4byte	0x2092
 7355 1ff7 30       		.uleb128 0x30
 7356 1ff8 85210000 		.4byte	0x2185
 7357 1ffc C50B0000 		.4byte	.LLST30
 7358 2000 32       		.uleb128 0x32
 7359 2001 D10B0000 		.4byte	0xbd1
 7360 2005 04000000 		.4byte	.LBB218
 7361 2009 08010000 		.4byte	.Ldebug_ranges0+0x108
 7362 200d 01       		.byte	0x1
 7363 200e FD       		.byte	0xfd
 7364 200f 1D200000 		.4byte	0x201d
 7365 2013 30       		.uleb128 0x30
 7366 2014 DE0B0000 		.4byte	0xbde
 7367 2018 E30B0000 		.4byte	.LLST31
 7368 201c 00       		.byte	0
 7369 201d 31       		.uleb128 0x31
 7370 201e 93100000 		.4byte	0x1093
 7371 2022 08000000 		.4byte	.LBB221
 7372 2026 20010000 		.4byte	.Ldebug_ranges0+0x120
 7373 202a 01       		.byte	0x1
 7374 202b 0501     		.2byte	0x105
 7375 202d 3B200000 		.4byte	0x203b
 7376 2031 30       		.uleb128 0x30
 7377 2032 A0100000 		.4byte	0x10a0
 7378 2036 010C0000 		.4byte	.LLST32
 7379 203a 00       		.byte	0
 7380 203b 31       		.uleb128 0x31
 7381 203c 07100000 		.4byte	0x1007
 7382 2040 0E000000 		.4byte	.LBB225
 7383 2044 38010000 		.4byte	.Ldebug_ranges0+0x138
 7384 2048 01       		.byte	0x1
 7385 2049 0601     		.2byte	0x106
 7386 204b 59200000 		.4byte	0x2059
 7387 204f 30       		.uleb128 0x30
 7388 2050 14100000 		.4byte	0x1014
 7389 2054 140C0000 		.4byte	.LLST33
 7390 2058 00       		.byte	0
 7391 2059 31       		.uleb128 0x31
 7392 205a FE0E0000 		.4byte	0xefe
 7393 205e 10000000 		.4byte	.LBB228
 7394 2062 50010000 		.4byte	.Ldebug_ranges0+0x150
 7395 2066 01       		.byte	0x1
 7396 2067 0801     		.2byte	0x108
 7397 2069 77200000 		.4byte	0x2077
 7398 206d 30       		.uleb128 0x30
 7399 206e 0B0F0000 		.4byte	0xf0b
 7400 2072 270C0000 		.4byte	.LLST34
 7401 2076 00       		.byte	0
 7402 2077 2F       		.uleb128 0x2f
 7403 2078 D90D0000 		.4byte	0xdd9
ARM GAS  /tmp/ccJYkMjP.s 			page 173


 7404 207c 14000000 		.4byte	.LBB231
 7405 2080 68010000 		.4byte	.Ldebug_ranges0+0x168
 7406 2084 01       		.byte	0x1
 7407 2085 0A01     		.2byte	0x10a
 7408 2087 30       		.uleb128 0x30
 7409 2088 E60D0000 		.4byte	0xde6
 7410 208c 3A0C0000 		.4byte	.LLST35
 7411 2090 00       		.byte	0
 7412 2091 00       		.byte	0
 7413 2092 2F       		.uleb128 0x2f
 7414 2093 FD210000 		.4byte	0x21fd
 7415 2097 2A000000 		.4byte	.LBB238
 7416 209b 80010000 		.4byte	.Ldebug_ranges0+0x180
 7417 209f 01       		.byte	0x1
 7418 20a0 9601     		.2byte	0x196
 7419 20a2 30       		.uleb128 0x30
 7420 20a3 23220000 		.4byte	0x2223
 7421 20a7 4D0C0000 		.4byte	.LLST36
 7422 20ab 30       		.uleb128 0x30
 7423 20ac 18220000 		.4byte	0x2218
 7424 20b0 7C0C0000 		.4byte	.LLST37
 7425 20b4 30       		.uleb128 0x30
 7426 20b5 0D220000 		.4byte	0x220d
 7427 20b9 A70C0000 		.4byte	.LLST38
 7428 20bd 38       		.uleb128 0x38
 7429 20be 80010000 		.4byte	.Ldebug_ranges0+0x180
 7430 20c2 39       		.uleb128 0x39
 7431 20c3 2E220000 		.4byte	0x222e
 7432 20c7 C50C0000 		.4byte	.LLST39
 7433 20cb 00       		.byte	0
 7434 20cc 00       		.byte	0
 7435 20cd 00       		.byte	0
 7436 20ce 22       		.uleb128 0x22
 7437 20cf 6D000000 		.4byte	.LASF276
 7438 20d3 01       		.byte	0x1
 7439 20d4 4301     		.2byte	0x143
 7440 20d6 A7000000 		.4byte	0xa7
 7441 20da 00000000 		.4byte	.LFB149
 7442 20de 1C000000 		.4byte	.LFE149-.LFB149
 7443 20e2 01       		.uleb128 0x1
 7444 20e3 9C       		.byte	0x9c
 7445 20e4 37210000 		.4byte	0x2137
 7446 20e8 23       		.uleb128 0x23
 7447 20e9 87000000 		.4byte	.LASF175
 7448 20ed 01       		.byte	0x1
 7449 20ee 4301     		.2byte	0x143
 7450 20f0 CB0B0000 		.4byte	0xbcb
 7451 20f4 EF0C0000 		.4byte	.LLST24
 7452 20f8 23       		.uleb128 0x23
 7453 20f9 0D040000 		.4byte	.LASF270
 7454 20fd 01       		.byte	0x1
 7455 20fe 4401     		.2byte	0x144
 7456 2100 771E0000 		.4byte	0x1e77
 7457 2104 0D0D0000 		.4byte	.LLST25
 7458 2108 23       		.uleb128 0x23
 7459 2109 6B040000 		.4byte	.LASF240
 7460 210d 01       		.byte	0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 174


 7461 210e 4401     		.2byte	0x144
 7462 2110 A7000000 		.4byte	0xa7
 7463 2114 2E0D0000 		.4byte	.LLST26
 7464 2118 33       		.uleb128 0x33
 7465 2119 08000000 		.4byte	.LVL37
 7466 211d 37210000 		.4byte	0x2137
 7467 2121 34       		.uleb128 0x34
 7468 2122 01       		.uleb128 0x1
 7469 2123 50       		.byte	0x50
 7470 2124 02       		.uleb128 0x2
 7471 2125 74       		.byte	0x74
 7472 2126 00       		.sleb128 0
 7473 2127 34       		.uleb128 0x34
 7474 2128 01       		.uleb128 0x1
 7475 2129 51       		.byte	0x51
 7476 212a 03       		.uleb128 0x3
 7477 212b F3       		.byte	0xf3
 7478 212c 01       		.uleb128 0x1
 7479 212d 51       		.byte	0x51
 7480 212e 34       		.uleb128 0x34
 7481 212f 01       		.uleb128 0x1
 7482 2130 52       		.byte	0x52
 7483 2131 03       		.uleb128 0x3
 7484 2132 F3       		.byte	0xf3
 7485 2133 01       		.uleb128 0x1
 7486 2134 52       		.byte	0x52
 7487 2135 00       		.byte	0
 7488 2136 00       		.byte	0
 7489 2137 2C       		.uleb128 0x2c
 7490 2138 450A0000 		.4byte	.LASF277
 7491 213c 01       		.byte	0x1
 7492 213d 1C01     		.2byte	0x11c
 7493 213f A7000000 		.4byte	0xa7
 7494 2143 01       		.byte	0x1
 7495 2144 79210000 		.4byte	0x2179
 7496 2148 26       		.uleb128 0x26
 7497 2149 87000000 		.4byte	.LASF175
 7498 214d 01       		.byte	0x1
 7499 214e 1C01     		.2byte	0x11c
 7500 2150 CB0B0000 		.4byte	0xbcb
 7501 2154 26       		.uleb128 0x26
 7502 2155 0D040000 		.4byte	.LASF270
 7503 2159 01       		.byte	0x1
 7504 215a 1D01     		.2byte	0x11d
 7505 215c 771E0000 		.4byte	0x1e77
 7506 2160 26       		.uleb128 0x26
 7507 2161 6B040000 		.4byte	.LASF240
 7508 2165 01       		.byte	0x1
 7509 2166 1D01     		.2byte	0x11d
 7510 2168 A7000000 		.4byte	0xa7
 7511 216c 3A       		.uleb128 0x3a
 7512 216d B9050000 		.4byte	.LASF271
 7513 2171 01       		.byte	0x1
 7514 2172 1F01     		.2byte	0x11f
 7515 2174 A7000000 		.4byte	0xa7
 7516 2178 00       		.byte	0
 7517 2179 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccJYkMjP.s 			page 175


 7518 217a A8010000 		.4byte	.LASF278
 7519 217e 01       		.byte	0x1
 7520 217f FA       		.byte	0xfa
 7521 2180 01       		.byte	0x1
 7522 2181 91210000 		.4byte	0x2191
 7523 2185 3C       		.uleb128 0x3c
 7524 2186 87000000 		.4byte	.LASF175
 7525 218a 01       		.byte	0x1
 7526 218b FA       		.byte	0xfa
 7527 218c CB0B0000 		.4byte	0xbcb
 7528 2190 00       		.byte	0
 7529 2191 3D       		.uleb128 0x3d
 7530 2192 0A090000 		.4byte	.LASF279
 7531 2196 01       		.byte	0x1
 7532 2197 EF       		.byte	0xef
 7533 2198 01       		.byte	0x1
 7534 2199 A9210000 		.4byte	0x21a9
 7535 219d 3C       		.uleb128 0x3c
 7536 219e 87000000 		.4byte	.LASF175
 7537 21a2 01       		.byte	0x1
 7538 21a3 EF       		.byte	0xef
 7539 21a4 CB0B0000 		.4byte	0xbcb
 7540 21a8 00       		.byte	0
 7541 21a9 3E       		.uleb128 0x3e
 7542 21aa 4D040000 		.4byte	.LASF281
 7543 21ae 01       		.byte	0x1
 7544 21af D8       		.byte	0xd8
 7545 21b0 A7000000 		.4byte	0xa7
 7546 21b4 01       		.byte	0x1
 7547 21b5 E5210000 		.4byte	0x21e5
 7548 21b9 3C       		.uleb128 0x3c
 7549 21ba 87000000 		.4byte	.LASF175
 7550 21be 01       		.byte	0x1
 7551 21bf D8       		.byte	0xd8
 7552 21c0 CB0B0000 		.4byte	0xbcb
 7553 21c4 3C       		.uleb128 0x3c
 7554 21c5 94000000 		.4byte	.LASF165
 7555 21c9 01       		.byte	0x1
 7556 21ca D9       		.byte	0xd9
 7557 21cb A7000000 		.4byte	0xa7
 7558 21cf 3C       		.uleb128 0x3c
 7559 21d0 6B040000 		.4byte	.LASF240
 7560 21d4 01       		.byte	0x1
 7561 21d5 D9       		.byte	0xd9
 7562 21d6 A7000000 		.4byte	0xa7
 7563 21da 3F       		.uleb128 0x3f
 7564 21db 636400   		.ascii	"cd\000"
 7565 21de 01       		.byte	0x1
 7566 21df DB       		.byte	0xdb
 7567 21e0 A7000000 		.4byte	0xa7
 7568 21e4 00       		.byte	0
 7569 21e5 3D       		.uleb128 0x3d
 7570 21e6 67010000 		.4byte	.LASF280
 7571 21ea 01       		.byte	0x1
 7572 21eb C3       		.byte	0xc3
 7573 21ec 01       		.byte	0x1
 7574 21ed FD210000 		.4byte	0x21fd
ARM GAS  /tmp/ccJYkMjP.s 			page 176


 7575 21f1 3C       		.uleb128 0x3c
 7576 21f2 87000000 		.4byte	.LASF175
 7577 21f6 01       		.byte	0x1
 7578 21f7 C3       		.byte	0xc3
 7579 21f8 CB0B0000 		.4byte	0xbcb
 7580 21fc 00       		.byte	0
 7581 21fd 3E       		.uleb128 0x3e
 7582 21fe A2090000 		.4byte	.LASF282
 7583 2202 01       		.byte	0x1
 7584 2203 A9       		.byte	0xa9
 7585 2204 A7000000 		.4byte	0xa7
 7586 2208 01       		.byte	0x1
 7587 2209 39220000 		.4byte	0x2239
 7588 220d 3C       		.uleb128 0x3c
 7589 220e 87000000 		.4byte	.LASF175
 7590 2212 01       		.byte	0x1
 7591 2213 A9       		.byte	0xa9
 7592 2214 CB0B0000 		.4byte	0xbcb
 7593 2218 3C       		.uleb128 0x3c
 7594 2219 94000000 		.4byte	.LASF165
 7595 221d 01       		.byte	0x1
 7596 221e AA       		.byte	0xaa
 7597 221f A7000000 		.4byte	0xa7
 7598 2223 3C       		.uleb128 0x3c
 7599 2224 6B040000 		.4byte	.LASF240
 7600 2228 01       		.byte	0x1
 7601 2229 AA       		.byte	0xaa
 7602 222a A7000000 		.4byte	0xa7
 7603 222e 3F       		.uleb128 0x3f
 7604 222f 636400   		.ascii	"cd\000"
 7605 2232 01       		.byte	0x1
 7606 2233 AC       		.byte	0xac
 7607 2234 A7000000 		.4byte	0xa7
 7608 2238 00       		.byte	0
 7609 2239 40       		.uleb128 0x40
 7610 223a 950F0000 		.4byte	.LASF283
 7611 223e 01       		.byte	0x1
 7612 223f 79       		.byte	0x79
 7613 2240 A7000000 		.4byte	0xa7
 7614 2244 00000000 		.4byte	.LFB142
 7615 2248 5E000000 		.4byte	.LFE142-.LFB142
 7616 224c 01       		.uleb128 0x1
 7617 224d 9C       		.byte	0x9c
 7618 224e BA220000 		.4byte	0x22ba
 7619 2252 41       		.uleb128 0x41
 7620 2253 87000000 		.4byte	.LASF175
 7621 2257 01       		.byte	0x1
 7622 2258 79       		.byte	0x79
 7623 2259 CB0B0000 		.4byte	0xbcb
 7624 225d 4F0D0000 		.4byte	.LLST0
 7625 2261 41       		.uleb128 0x41
 7626 2262 94000000 		.4byte	.LASF165
 7627 2266 01       		.byte	0x1
 7628 2267 7A       		.byte	0x7a
 7629 2268 A7000000 		.4byte	0xa7
 7630 226c 940D0000 		.4byte	.LLST1
 7631 2270 41       		.uleb128 0x41
ARM GAS  /tmp/ccJYkMjP.s 			page 177


 7632 2271 6B040000 		.4byte	.LASF240
 7633 2275 01       		.byte	0x1
 7634 2276 7A       		.byte	0x7a
 7635 2277 A7000000 		.4byte	0xa7
 7636 227b CE0D0000 		.4byte	.LLST2
 7637 227f 42       		.uleb128 0x42
 7638 2280 1C100000 		.4byte	.LASF284
 7639 2284 01       		.byte	0x1
 7640 2285 7C       		.byte	0x7c
 7641 2286 A7000000 		.4byte	0xa7
 7642 228a 080E0000 		.4byte	.LLST3
 7643 228e 42       		.uleb128 0x42
 7644 228f 3F0A0000 		.4byte	.LASF285
 7645 2293 01       		.byte	0x1
 7646 2294 7D       		.byte	0x7d
 7647 2295 A7000000 		.4byte	0xa7
 7648 2299 340E0000 		.4byte	.LLST4
 7649 229d 43       		.uleb128 0x43
 7650 229e 636400   		.ascii	"cd\000"
 7651 22a1 01       		.byte	0x1
 7652 22a2 7E       		.byte	0x7e
 7653 22a3 A7000000 		.4byte	0xa7
 7654 22a7 520E0000 		.4byte	.LLST5
 7655 22ab 43       		.uleb128 0x43
 7656 22ac 667000   		.ascii	"fp\000"
 7657 22af 01       		.byte	0x1
 7658 22b0 7F       		.byte	0x7f
 7659 22b1 A7000000 		.4byte	0xa7
 7660 22b5 700E0000 		.4byte	.LLST6
 7661 22b9 00       		.byte	0
 7662 22ba 44       		.uleb128 0x44
 7663 22bb 79210000 		.4byte	0x2179
 7664 22bf 00000000 		.4byte	.LFB147
 7665 22c3 2C000000 		.4byte	.LFE147-.LFB147
 7666 22c7 01       		.uleb128 0x1
 7667 22c8 9C       		.byte	0x9c
 7668 22c9 66230000 		.4byte	0x2366
 7669 22cd 45       		.uleb128 0x45
 7670 22ce 85210000 		.4byte	0x2185
 7671 22d2 01       		.uleb128 0x1
 7672 22d3 50       		.byte	0x50
 7673 22d4 32       		.uleb128 0x32
 7674 22d5 D10B0000 		.4byte	0xbd1
 7675 22d9 04000000 		.4byte	.LBB144
 7676 22dd 00000000 		.4byte	.Ldebug_ranges0+0
 7677 22e1 01       		.byte	0x1
 7678 22e2 FD       		.byte	0xfd
 7679 22e3 F1220000 		.4byte	0x22f1
 7680 22e7 30       		.uleb128 0x30
 7681 22e8 DE0B0000 		.4byte	0xbde
 7682 22ec A50E0000 		.4byte	.LLST7
 7683 22f0 00       		.byte	0
 7684 22f1 31       		.uleb128 0x31
 7685 22f2 93100000 		.4byte	0x1093
 7686 22f6 06000000 		.4byte	.LBB147
 7687 22fa 18000000 		.4byte	.Ldebug_ranges0+0x18
 7688 22fe 01       		.byte	0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 178


 7689 22ff 0501     		.2byte	0x105
 7690 2301 0F230000 		.4byte	0x230f
 7691 2305 30       		.uleb128 0x30
 7692 2306 A0100000 		.4byte	0x10a0
 7693 230a B80E0000 		.4byte	.LLST8
 7694 230e 00       		.byte	0
 7695 230f 31       		.uleb128 0x31
 7696 2310 07100000 		.4byte	0x1007
 7697 2314 08000000 		.4byte	.LBB150
 7698 2318 30000000 		.4byte	.Ldebug_ranges0+0x30
 7699 231c 01       		.byte	0x1
 7700 231d 0601     		.2byte	0x106
 7701 231f 2D230000 		.4byte	0x232d
 7702 2323 30       		.uleb128 0x30
 7703 2324 14100000 		.4byte	0x1014
 7704 2328 CB0E0000 		.4byte	.LLST9
 7705 232c 00       		.byte	0
 7706 232d 31       		.uleb128 0x31
 7707 232e FE0E0000 		.4byte	0xefe
 7708 2332 0A000000 		.4byte	.LBB153
 7709 2336 48000000 		.4byte	.Ldebug_ranges0+0x48
 7710 233a 01       		.byte	0x1
 7711 233b 0801     		.2byte	0x108
 7712 233d 4B230000 		.4byte	0x234b
 7713 2341 30       		.uleb128 0x30
 7714 2342 0B0F0000 		.4byte	0xf0b
 7715 2346 DE0E0000 		.4byte	.LLST10
 7716 234a 00       		.byte	0
 7717 234b 2F       		.uleb128 0x2f
 7718 234c D90D0000 		.4byte	0xdd9
 7719 2350 0E000000 		.4byte	.LBB156
 7720 2354 60000000 		.4byte	.Ldebug_ranges0+0x60
 7721 2358 01       		.byte	0x1
 7722 2359 0A01     		.2byte	0x10a
 7723 235b 30       		.uleb128 0x30
 7724 235c E60D0000 		.4byte	0xde6
 7725 2360 F10E0000 		.4byte	.LLST11
 7726 2364 00       		.byte	0
 7727 2365 00       		.byte	0
 7728 2366 44       		.uleb128 0x44
 7729 2367 37210000 		.4byte	0x2137
 7730 236b 00000000 		.4byte	.LFB148
 7731 236f 60000000 		.4byte	.LFE148-.LFB148
 7732 2373 01       		.uleb128 0x1
 7733 2374 9C       		.byte	0x9c
 7734 2375 9E240000 		.4byte	0x249e
 7735 2379 30       		.uleb128 0x30
 7736 237a 48210000 		.4byte	0x2148
 7737 237e 040F0000 		.4byte	.LLST12
 7738 2382 30       		.uleb128 0x30
 7739 2383 54210000 		.4byte	0x2154
 7740 2387 300F0000 		.4byte	.LLST13
 7741 238b 30       		.uleb128 0x30
 7742 238c 60210000 		.4byte	0x2160
 7743 2390 5C0F0000 		.4byte	.LLST14
 7744 2394 46       		.uleb128 0x46
 7745 2395 6C210000 		.4byte	0x216c
ARM GAS  /tmp/ccJYkMjP.s 			page 179


 7746 2399 05       		.uleb128 0x5
 7747 239a 03       		.byte	0x3
 7748 239b 00000000 		.4byte	ul_reg_val.9297
 7749 239f 31       		.uleb128 0x31
 7750 23a0 79210000 		.4byte	0x2179
 7751 23a4 02000000 		.4byte	.LBB190
 7752 23a8 78000000 		.4byte	.Ldebug_ranges0+0x78
 7753 23ac 01       		.byte	0x1
 7754 23ad 2201     		.2byte	0x122
 7755 23af 4E240000 		.4byte	0x244e
 7756 23b3 30       		.uleb128 0x30
 7757 23b4 85210000 		.4byte	0x2185
 7758 23b8 7D0F0000 		.4byte	.LLST15
 7759 23bc 32       		.uleb128 0x32
 7760 23bd D10B0000 		.4byte	0xbd1
 7761 23c1 04000000 		.4byte	.LBB192
 7762 23c5 90000000 		.4byte	.Ldebug_ranges0+0x90
 7763 23c9 01       		.byte	0x1
 7764 23ca FD       		.byte	0xfd
 7765 23cb D9230000 		.4byte	0x23d9
 7766 23cf 30       		.uleb128 0x30
 7767 23d0 DE0B0000 		.4byte	0xbde
 7768 23d4 900F0000 		.4byte	.LLST16
 7769 23d8 00       		.byte	0
 7770 23d9 31       		.uleb128 0x31
 7771 23da FE0E0000 		.4byte	0xefe
 7772 23de 06000000 		.4byte	.LBB195
 7773 23e2 A8000000 		.4byte	.Ldebug_ranges0+0xa8
 7774 23e6 01       		.byte	0x1
 7775 23e7 0801     		.2byte	0x108
 7776 23e9 F7230000 		.4byte	0x23f7
 7777 23ed 30       		.uleb128 0x30
 7778 23ee 0B0F0000 		.4byte	0xf0b
 7779 23f2 A30F0000 		.4byte	.LLST17
 7780 23f6 00       		.byte	0
 7781 23f7 31       		.uleb128 0x31
 7782 23f8 93100000 		.4byte	0x1093
 7783 23fc 0A000000 		.4byte	.LBB198
 7784 2400 C0000000 		.4byte	.Ldebug_ranges0+0xc0
 7785 2404 01       		.byte	0x1
 7786 2405 0501     		.2byte	0x105
 7787 2407 15240000 		.4byte	0x2415
 7788 240b 30       		.uleb128 0x30
 7789 240c A0100000 		.4byte	0x10a0
 7790 2410 B60F0000 		.4byte	.LLST18
 7791 2414 00       		.byte	0
 7792 2415 31       		.uleb128 0x31
 7793 2416 07100000 		.4byte	0x1007
 7794 241a 0E000000 		.4byte	.LBB201
 7795 241e D8000000 		.4byte	.Ldebug_ranges0+0xd8
 7796 2422 01       		.byte	0x1
 7797 2423 0601     		.2byte	0x106
 7798 2425 33240000 		.4byte	0x2433
 7799 2429 30       		.uleb128 0x30
 7800 242a 14100000 		.4byte	0x1014
 7801 242e C90F0000 		.4byte	.LLST19
 7802 2432 00       		.byte	0
ARM GAS  /tmp/ccJYkMjP.s 			page 180


 7803 2433 2F       		.uleb128 0x2f
 7804 2434 D90D0000 		.4byte	0xdd9
 7805 2438 16000000 		.4byte	.LBB205
 7806 243c F0000000 		.4byte	.Ldebug_ranges0+0xf0
 7807 2440 01       		.byte	0x1
 7808 2441 0A01     		.2byte	0x10a
 7809 2443 30       		.uleb128 0x30
 7810 2444 E60D0000 		.4byte	0xde6
 7811 2448 DC0F0000 		.4byte	.LLST20
 7812 244c 00       		.byte	0
 7813 244d 00       		.byte	0
 7814 244e 47       		.uleb128 0x47
 7815 244f 3A000000 		.4byte	.LBB214
 7816 2453 16000000 		.4byte	.LBE214-.LBB214
 7817 2457 86240000 		.4byte	0x2486
 7818 245b 30       		.uleb128 0x30
 7819 245c 60210000 		.4byte	0x2160
 7820 2460 EF0F0000 		.4byte	.LLST21
 7821 2464 30       		.uleb128 0x30
 7822 2465 54210000 		.4byte	0x2154
 7823 2469 05100000 		.4byte	.LLST22
 7824 246d 30       		.uleb128 0x30
 7825 246e 48210000 		.4byte	0x2148
 7826 2472 18100000 		.4byte	.LLST23
 7827 2476 36       		.uleb128 0x36
 7828 2477 3A000000 		.4byte	.LBB215
 7829 247b 16000000 		.4byte	.LBE215-.LBB215
 7830 247f 48       		.uleb128 0x48
 7831 2480 94230000 		.4byte	0x2394
 7832 2484 00       		.byte	0
 7833 2485 00       		.byte	0
 7834 2486 33       		.uleb128 0x33
 7835 2487 38000000 		.4byte	.LVL32
 7836 248b 39220000 		.4byte	0x2239
 7837 248f 34       		.uleb128 0x34
 7838 2490 01       		.uleb128 0x1
 7839 2491 50       		.byte	0x50
 7840 2492 02       		.uleb128 0x2
 7841 2493 74       		.byte	0x74
 7842 2494 00       		.sleb128 0
 7843 2495 34       		.uleb128 0x34
 7844 2496 01       		.uleb128 0x1
 7845 2497 52       		.byte	0x52
 7846 2498 03       		.uleb128 0x3
 7847 2499 F3       		.byte	0xf3
 7848 249a 01       		.uleb128 0x1
 7849 249b 52       		.byte	0x52
 7850 249c 00       		.byte	0
 7851 249d 00       		.byte	0
 7852 249e 44       		.uleb128 0x44
 7853 249f AD150000 		.4byte	0x15ad
 7854 24a3 00000000 		.4byte	.LFB176
 7855 24a7 08000000 		.4byte	.LFE176-.LFB176
 7856 24ab 01       		.uleb128 0x1
 7857 24ac 9C       		.byte	0x9c
 7858 24ad BB240000 		.4byte	0x24bb
 7859 24b1 30       		.uleb128 0x30
ARM GAS  /tmp/ccJYkMjP.s 			page 181


 7860 24b2 BE150000 		.4byte	0x15be
 7861 24b6 2B100000 		.4byte	.LLST103
 7862 24ba 00       		.byte	0
 7863 24bb 44       		.uleb128 0x44
 7864 24bc D2100000 		.4byte	0x10d2
 7865 24c0 00000000 		.4byte	.LFB195
 7866 24c4 06000000 		.4byte	.LFE195-.LFB195
 7867 24c8 01       		.uleb128 0x1
 7868 24c9 9C       		.byte	0x9c
 7869 24ca D6240000 		.4byte	0x24d6
 7870 24ce 45       		.uleb128 0x45
 7871 24cf DF100000 		.4byte	0x10df
 7872 24d3 01       		.uleb128 0x1
 7873 24d4 50       		.byte	0x50
 7874 24d5 00       		.byte	0
 7875 24d6 44       		.uleb128 0x44
 7876 24d7 93100000 		.4byte	0x1093
 7877 24db 00000000 		.4byte	.LFB197
 7878 24df 06000000 		.4byte	.LFE197-.LFB197
 7879 24e3 01       		.uleb128 0x1
 7880 24e4 9C       		.byte	0x9c
 7881 24e5 F1240000 		.4byte	0x24f1
 7882 24e9 45       		.uleb128 0x45
 7883 24ea A0100000 		.4byte	0x10a0
 7884 24ee 01       		.uleb128 0x1
 7885 24ef 50       		.byte	0x50
 7886 24f0 00       		.byte	0
 7887 24f1 44       		.uleb128 0x44
 7888 24f2 46100000 		.4byte	0x1046
 7889 24f6 00000000 		.4byte	.LFB199
 7890 24fa 06000000 		.4byte	.LFE199-.LFB199
 7891 24fe 01       		.uleb128 0x1
 7892 24ff 9C       		.byte	0x9c
 7893 2500 0C250000 		.4byte	0x250c
 7894 2504 45       		.uleb128 0x45
 7895 2505 53100000 		.4byte	0x1053
 7896 2509 01       		.uleb128 0x1
 7897 250a 50       		.byte	0x50
 7898 250b 00       		.byte	0
 7899 250c 44       		.uleb128 0x44
 7900 250d 07100000 		.4byte	0x1007
 7901 2511 00000000 		.4byte	.LFB201
 7902 2515 06000000 		.4byte	.LFE201-.LFB201
 7903 2519 01       		.uleb128 0x1
 7904 251a 9C       		.byte	0x9c
 7905 251b 27250000 		.4byte	0x2527
 7906 251f 45       		.uleb128 0x45
 7907 2520 14100000 		.4byte	0x1014
 7908 2524 01       		.uleb128 0x1
 7909 2525 50       		.byte	0x50
 7910 2526 00       		.byte	0
 7911 2527 44       		.uleb128 0x44
 7912 2528 FE0E0000 		.4byte	0xefe
 7913 252c 00000000 		.4byte	.LFB207
 7914 2530 08000000 		.4byte	.LFE207-.LFB207
 7915 2534 01       		.uleb128 0x1
 7916 2535 9C       		.byte	0x9c
ARM GAS  /tmp/ccJYkMjP.s 			page 182


 7917 2536 42250000 		.4byte	0x2542
 7918 253a 45       		.uleb128 0x45
 7919 253b 0B0F0000 		.4byte	0xf0b
 7920 253f 01       		.uleb128 0x1
 7921 2540 50       		.byte	0x50
 7922 2541 00       		.byte	0
 7923 2542 44       		.uleb128 0x44
 7924 2543 BF0D0000 		.4byte	0xdbf
 7925 2547 00000000 		.4byte	.LFB215
 7926 254b 08000000 		.4byte	.LFE215-.LFB215
 7927 254f 01       		.uleb128 0x1
 7928 2550 9C       		.byte	0x9c
 7929 2551 5D250000 		.4byte	0x255d
 7930 2555 45       		.uleb128 0x45
 7931 2556 CC0D0000 		.4byte	0xdcc
 7932 255a 01       		.uleb128 0x1
 7933 255b 50       		.byte	0x50
 7934 255c 00       		.byte	0
 7935 255d 44       		.uleb128 0x44
 7936 255e A50D0000 		.4byte	0xda5
 7937 2562 00000000 		.4byte	.LFB216
 7938 2566 08000000 		.4byte	.LFE216-.LFB216
 7939 256a 01       		.uleb128 0x1
 7940 256b 9C       		.byte	0x9c
 7941 256c 78250000 		.4byte	0x2578
 7942 2570 45       		.uleb128 0x45
 7943 2571 B20D0000 		.4byte	0xdb2
 7944 2575 01       		.uleb128 0x1
 7945 2576 50       		.byte	0x50
 7946 2577 00       		.byte	0
 7947 2578 44       		.uleb128 0x44
 7948 2579 FC0C0000 		.4byte	0xcfc
 7949 257d 00000000 		.4byte	.LFB220
 7950 2581 16000000 		.4byte	.LFE220-.LFB220
 7951 2585 01       		.uleb128 0x1
 7952 2586 9C       		.byte	0x9c
 7953 2587 9E250000 		.4byte	0x259e
 7954 258b 30       		.uleb128 0x30
 7955 258c 0D0D0000 		.4byte	0xd0d
 7956 2590 4C100000 		.4byte	.LLST138
 7957 2594 30       		.uleb128 0x30
 7958 2595 190D0000 		.4byte	0xd19
 7959 2599 80100000 		.4byte	.LLST139
 7960 259d 00       		.byte	0
 7961 259e 44       		.uleb128 0x44
 7962 259f D40C0000 		.4byte	0xcd4
 7963 25a3 00000000 		.4byte	.LFB221
 7964 25a7 12000000 		.4byte	.LFE221-.LFB221
 7965 25ab 01       		.uleb128 0x1
 7966 25ac 9C       		.byte	0x9c
 7967 25ad C4250000 		.4byte	0x25c4
 7968 25b1 30       		.uleb128 0x30
 7969 25b2 E50C0000 		.4byte	0xce5
 7970 25b6 AC100000 		.4byte	.LLST140
 7971 25ba 30       		.uleb128 0x30
 7972 25bb F10C0000 		.4byte	0xcf1
 7973 25bf CA100000 		.4byte	.LLST141
ARM GAS  /tmp/ccJYkMjP.s 			page 183


 7974 25c3 00       		.byte	0
 7975 25c4 49       		.uleb128 0x49
 7976 25c5 D10B0000 		.4byte	0xbd1
 7977 25c9 00000000 		.4byte	.LFB226
 7978 25cd 0C000000 		.4byte	.LFE226-.LFB226
 7979 25d1 01       		.uleb128 0x1
 7980 25d2 9C       		.byte	0x9c
 7981 25d3 45       		.uleb128 0x45
 7982 25d4 DE0B0000 		.4byte	0xbde
 7983 25d8 01       		.uleb128 0x1
 7984 25d9 50       		.byte	0x50
 7985 25da 00       		.byte	0
 7986 25db 00       		.byte	0
 7987              		.section	.debug_abbrev,"",%progbits
 7988              	.Ldebug_abbrev0:
 7989 0000 01       		.uleb128 0x1
 7990 0001 11       		.uleb128 0x11
 7991 0002 01       		.byte	0x1
 7992 0003 25       		.uleb128 0x25
 7993 0004 0E       		.uleb128 0xe
 7994 0005 13       		.uleb128 0x13
 7995 0006 0B       		.uleb128 0xb
 7996 0007 03       		.uleb128 0x3
 7997 0008 0E       		.uleb128 0xe
 7998 0009 1B       		.uleb128 0x1b
 7999 000a 0E       		.uleb128 0xe
 8000 000b 55       		.uleb128 0x55
 8001 000c 17       		.uleb128 0x17
 8002 000d 11       		.uleb128 0x11
 8003 000e 01       		.uleb128 0x1
 8004 000f 10       		.uleb128 0x10
 8005 0010 17       		.uleb128 0x17
 8006 0011 00       		.byte	0
 8007 0012 00       		.byte	0
 8008 0013 02       		.uleb128 0x2
 8009 0014 24       		.uleb128 0x24
 8010 0015 00       		.byte	0
 8011 0016 0B       		.uleb128 0xb
 8012 0017 0B       		.uleb128 0xb
 8013 0018 3E       		.uleb128 0x3e
 8014 0019 0B       		.uleb128 0xb
 8015 001a 03       		.uleb128 0x3
 8016 001b 08       		.uleb128 0x8
 8017 001c 00       		.byte	0
 8018 001d 00       		.byte	0
 8019 001e 03       		.uleb128 0x3
 8020 001f 24       		.uleb128 0x24
 8021 0020 00       		.byte	0
 8022 0021 0B       		.uleb128 0xb
 8023 0022 0B       		.uleb128 0xb
 8024 0023 3E       		.uleb128 0x3e
 8025 0024 0B       		.uleb128 0xb
 8026 0025 03       		.uleb128 0x3
 8027 0026 0E       		.uleb128 0xe
 8028 0027 00       		.byte	0
 8029 0028 00       		.byte	0
 8030 0029 04       		.uleb128 0x4
ARM GAS  /tmp/ccJYkMjP.s 			page 184


 8031 002a 16       		.uleb128 0x16
 8032 002b 00       		.byte	0
 8033 002c 03       		.uleb128 0x3
 8034 002d 0E       		.uleb128 0xe
 8035 002e 3A       		.uleb128 0x3a
 8036 002f 0B       		.uleb128 0xb
 8037 0030 3B       		.uleb128 0x3b
 8038 0031 0B       		.uleb128 0xb
 8039 0032 49       		.uleb128 0x49
 8040 0033 13       		.uleb128 0x13
 8041 0034 00       		.byte	0
 8042 0035 00       		.byte	0
 8043 0036 05       		.uleb128 0x5
 8044 0037 35       		.uleb128 0x35
 8045 0038 00       		.byte	0
 8046 0039 49       		.uleb128 0x49
 8047 003a 13       		.uleb128 0x13
 8048 003b 00       		.byte	0
 8049 003c 00       		.byte	0
 8050 003d 06       		.uleb128 0x6
 8051 003e 26       		.uleb128 0x26
 8052 003f 00       		.byte	0
 8053 0040 49       		.uleb128 0x49
 8054 0041 13       		.uleb128 0x13
 8055 0042 00       		.byte	0
 8056 0043 00       		.byte	0
 8057 0044 07       		.uleb128 0x7
 8058 0045 0F       		.uleb128 0xf
 8059 0046 00       		.byte	0
 8060 0047 0B       		.uleb128 0xb
 8061 0048 0B       		.uleb128 0xb
 8062 0049 00       		.byte	0
 8063 004a 00       		.byte	0
 8064 004b 08       		.uleb128 0x8
 8065 004c 34       		.uleb128 0x34
 8066 004d 00       		.byte	0
 8067 004e 03       		.uleb128 0x3
 8068 004f 0E       		.uleb128 0xe
 8069 0050 3A       		.uleb128 0x3a
 8070 0051 0B       		.uleb128 0xb
 8071 0052 3B       		.uleb128 0x3b
 8072 0053 05       		.uleb128 0x5
 8073 0054 49       		.uleb128 0x49
 8074 0055 13       		.uleb128 0x13
 8075 0056 3F       		.uleb128 0x3f
 8076 0057 19       		.uleb128 0x19
 8077 0058 3C       		.uleb128 0x3c
 8078 0059 19       		.uleb128 0x19
 8079 005a 00       		.byte	0
 8080 005b 00       		.byte	0
 8081 005c 09       		.uleb128 0x9
 8082 005d 34       		.uleb128 0x34
 8083 005e 00       		.byte	0
 8084 005f 03       		.uleb128 0x3
 8085 0060 0E       		.uleb128 0xe
 8086 0061 3A       		.uleb128 0x3a
 8087 0062 0B       		.uleb128 0xb
ARM GAS  /tmp/ccJYkMjP.s 			page 185


 8088 0063 3B       		.uleb128 0x3b
 8089 0064 0B       		.uleb128 0xb
 8090 0065 49       		.uleb128 0x49
 8091 0066 13       		.uleb128 0x13
 8092 0067 3F       		.uleb128 0x3f
 8093 0068 19       		.uleb128 0x19
 8094 0069 3C       		.uleb128 0x3c
 8095 006a 19       		.uleb128 0x19
 8096 006b 00       		.byte	0
 8097 006c 00       		.byte	0
 8098 006d 0A       		.uleb128 0xa
 8099 006e 01       		.uleb128 0x1
 8100 006f 01       		.byte	0x1
 8101 0070 49       		.uleb128 0x49
 8102 0071 13       		.uleb128 0x13
 8103 0072 01       		.uleb128 0x1
 8104 0073 13       		.uleb128 0x13
 8105 0074 00       		.byte	0
 8106 0075 00       		.byte	0
 8107 0076 0B       		.uleb128 0xb
 8108 0077 21       		.uleb128 0x21
 8109 0078 00       		.byte	0
 8110 0079 49       		.uleb128 0x49
 8111 007a 13       		.uleb128 0x13
 8112 007b 2F       		.uleb128 0x2f
 8113 007c 0B       		.uleb128 0xb
 8114 007d 00       		.byte	0
 8115 007e 00       		.byte	0
 8116 007f 0C       		.uleb128 0xc
 8117 0080 13       		.uleb128 0x13
 8118 0081 01       		.byte	0x1
 8119 0082 0B       		.uleb128 0xb
 8120 0083 0B       		.uleb128 0xb
 8121 0084 3A       		.uleb128 0x3a
 8122 0085 0B       		.uleb128 0xb
 8123 0086 3B       		.uleb128 0x3b
 8124 0087 0B       		.uleb128 0xb
 8125 0088 01       		.uleb128 0x1
 8126 0089 13       		.uleb128 0x13
 8127 008a 00       		.byte	0
 8128 008b 00       		.byte	0
 8129 008c 0D       		.uleb128 0xd
 8130 008d 0D       		.uleb128 0xd
 8131 008e 00       		.byte	0
 8132 008f 03       		.uleb128 0x3
 8133 0090 0E       		.uleb128 0xe
 8134 0091 3A       		.uleb128 0x3a
 8135 0092 0B       		.uleb128 0xb
 8136 0093 3B       		.uleb128 0x3b
 8137 0094 0B       		.uleb128 0xb
 8138 0095 49       		.uleb128 0x49
 8139 0096 13       		.uleb128 0x13
 8140 0097 38       		.uleb128 0x38
 8141 0098 0B       		.uleb128 0xb
 8142 0099 00       		.byte	0
 8143 009a 00       		.byte	0
 8144 009b 0E       		.uleb128 0xe
ARM GAS  /tmp/ccJYkMjP.s 			page 186


 8145 009c 16       		.uleb128 0x16
 8146 009d 00       		.byte	0
 8147 009e 03       		.uleb128 0x3
 8148 009f 0E       		.uleb128 0xe
 8149 00a0 3A       		.uleb128 0x3a
 8150 00a1 0B       		.uleb128 0xb
 8151 00a2 3B       		.uleb128 0x3b
 8152 00a3 05       		.uleb128 0x5
 8153 00a4 49       		.uleb128 0x49
 8154 00a5 13       		.uleb128 0x13
 8155 00a6 00       		.byte	0
 8156 00a7 00       		.byte	0
 8157 00a8 0F       		.uleb128 0xf
 8158 00a9 17       		.uleb128 0x17
 8159 00aa 01       		.byte	0x1
 8160 00ab 0B       		.uleb128 0xb
 8161 00ac 0B       		.uleb128 0xb
 8162 00ad 3A       		.uleb128 0x3a
 8163 00ae 0B       		.uleb128 0xb
 8164 00af 3B       		.uleb128 0x3b
 8165 00b0 0B       		.uleb128 0xb
 8166 00b1 01       		.uleb128 0x1
 8167 00b2 13       		.uleb128 0x13
 8168 00b3 00       		.byte	0
 8169 00b4 00       		.byte	0
 8170 00b5 10       		.uleb128 0x10
 8171 00b6 0D       		.uleb128 0xd
 8172 00b7 00       		.byte	0
 8173 00b8 03       		.uleb128 0x3
 8174 00b9 0E       		.uleb128 0xe
 8175 00ba 3A       		.uleb128 0x3a
 8176 00bb 0B       		.uleb128 0xb
 8177 00bc 3B       		.uleb128 0x3b
 8178 00bd 0B       		.uleb128 0xb
 8179 00be 49       		.uleb128 0x49
 8180 00bf 13       		.uleb128 0x13
 8181 00c0 00       		.byte	0
 8182 00c1 00       		.byte	0
 8183 00c2 11       		.uleb128 0x11
 8184 00c3 13       		.uleb128 0x13
 8185 00c4 01       		.byte	0x1
 8186 00c5 03       		.uleb128 0x3
 8187 00c6 0E       		.uleb128 0xe
 8188 00c7 0B       		.uleb128 0xb
 8189 00c8 0B       		.uleb128 0xb
 8190 00c9 3A       		.uleb128 0x3a
 8191 00ca 0B       		.uleb128 0xb
 8192 00cb 3B       		.uleb128 0x3b
 8193 00cc 0B       		.uleb128 0xb
 8194 00cd 01       		.uleb128 0x1
 8195 00ce 13       		.uleb128 0x13
 8196 00cf 00       		.byte	0
 8197 00d0 00       		.byte	0
 8198 00d1 12       		.uleb128 0x12
 8199 00d2 0D       		.uleb128 0xd
 8200 00d3 00       		.byte	0
 8201 00d4 03       		.uleb128 0x3
ARM GAS  /tmp/ccJYkMjP.s 			page 187


 8202 00d5 08       		.uleb128 0x8
 8203 00d6 3A       		.uleb128 0x3a
 8204 00d7 0B       		.uleb128 0xb
 8205 00d8 3B       		.uleb128 0x3b
 8206 00d9 0B       		.uleb128 0xb
 8207 00da 49       		.uleb128 0x49
 8208 00db 13       		.uleb128 0x13
 8209 00dc 38       		.uleb128 0x38
 8210 00dd 0B       		.uleb128 0xb
 8211 00de 00       		.byte	0
 8212 00df 00       		.byte	0
 8213 00e0 13       		.uleb128 0x13
 8214 00e1 0F       		.uleb128 0xf
 8215 00e2 00       		.byte	0
 8216 00e3 0B       		.uleb128 0xb
 8217 00e4 0B       		.uleb128 0xb
 8218 00e5 49       		.uleb128 0x49
 8219 00e6 13       		.uleb128 0x13
 8220 00e7 00       		.byte	0
 8221 00e8 00       		.byte	0
 8222 00e9 14       		.uleb128 0x14
 8223 00ea 13       		.uleb128 0x13
 8224 00eb 01       		.byte	0x1
 8225 00ec 03       		.uleb128 0x3
 8226 00ed 0E       		.uleb128 0xe
 8227 00ee 0B       		.uleb128 0xb
 8228 00ef 05       		.uleb128 0x5
 8229 00f0 3A       		.uleb128 0x3a
 8230 00f1 0B       		.uleb128 0xb
 8231 00f2 3B       		.uleb128 0x3b
 8232 00f3 0B       		.uleb128 0xb
 8233 00f4 01       		.uleb128 0x1
 8234 00f5 13       		.uleb128 0x13
 8235 00f6 00       		.byte	0
 8236 00f7 00       		.byte	0
 8237 00f8 15       		.uleb128 0x15
 8238 00f9 0D       		.uleb128 0xd
 8239 00fa 00       		.byte	0
 8240 00fb 03       		.uleb128 0x3
 8241 00fc 0E       		.uleb128 0xe
 8242 00fd 3A       		.uleb128 0x3a
 8243 00fe 0B       		.uleb128 0xb
 8244 00ff 3B       		.uleb128 0x3b
 8245 0100 0B       		.uleb128 0xb
 8246 0101 49       		.uleb128 0x49
 8247 0102 13       		.uleb128 0x13
 8248 0103 38       		.uleb128 0x38
 8249 0104 05       		.uleb128 0x5
 8250 0105 00       		.byte	0
 8251 0106 00       		.byte	0
 8252 0107 16       		.uleb128 0x16
 8253 0108 15       		.uleb128 0x15
 8254 0109 00       		.byte	0
 8255 010a 27       		.uleb128 0x27
 8256 010b 19       		.uleb128 0x19
 8257 010c 00       		.byte	0
 8258 010d 00       		.byte	0
ARM GAS  /tmp/ccJYkMjP.s 			page 188


 8259 010e 17       		.uleb128 0x17
 8260 010f 15       		.uleb128 0x15
 8261 0110 01       		.byte	0x1
 8262 0111 27       		.uleb128 0x27
 8263 0112 19       		.uleb128 0x19
 8264 0113 49       		.uleb128 0x49
 8265 0114 13       		.uleb128 0x13
 8266 0115 01       		.uleb128 0x1
 8267 0116 13       		.uleb128 0x13
 8268 0117 00       		.byte	0
 8269 0118 00       		.byte	0
 8270 0119 18       		.uleb128 0x18
 8271 011a 05       		.uleb128 0x5
 8272 011b 00       		.byte	0
 8273 011c 49       		.uleb128 0x49
 8274 011d 13       		.uleb128 0x13
 8275 011e 00       		.byte	0
 8276 011f 00       		.byte	0
 8277 0120 19       		.uleb128 0x19
 8278 0121 13       		.uleb128 0x13
 8279 0122 01       		.byte	0x1
 8280 0123 03       		.uleb128 0x3
 8281 0124 0E       		.uleb128 0xe
 8282 0125 0B       		.uleb128 0xb
 8283 0126 05       		.uleb128 0x5
 8284 0127 3A       		.uleb128 0x3a
 8285 0128 0B       		.uleb128 0xb
 8286 0129 3B       		.uleb128 0x3b
 8287 012a 05       		.uleb128 0x5
 8288 012b 01       		.uleb128 0x1
 8289 012c 13       		.uleb128 0x13
 8290 012d 00       		.byte	0
 8291 012e 00       		.byte	0
 8292 012f 1A       		.uleb128 0x1a
 8293 0130 0D       		.uleb128 0xd
 8294 0131 00       		.byte	0
 8295 0132 03       		.uleb128 0x3
 8296 0133 0E       		.uleb128 0xe
 8297 0134 3A       		.uleb128 0x3a
 8298 0135 0B       		.uleb128 0xb
 8299 0136 3B       		.uleb128 0x3b
 8300 0137 05       		.uleb128 0x5
 8301 0138 49       		.uleb128 0x49
 8302 0139 13       		.uleb128 0x13
 8303 013a 38       		.uleb128 0x38
 8304 013b 0B       		.uleb128 0xb
 8305 013c 00       		.byte	0
 8306 013d 00       		.byte	0
 8307 013e 1B       		.uleb128 0x1b
 8308 013f 0D       		.uleb128 0xd
 8309 0140 00       		.byte	0
 8310 0141 03       		.uleb128 0x3
 8311 0142 0E       		.uleb128 0xe
 8312 0143 3A       		.uleb128 0x3a
 8313 0144 0B       		.uleb128 0xb
 8314 0145 3B       		.uleb128 0x3b
 8315 0146 05       		.uleb128 0x5
ARM GAS  /tmp/ccJYkMjP.s 			page 189


 8316 0147 49       		.uleb128 0x49
 8317 0148 13       		.uleb128 0x13
 8318 0149 38       		.uleb128 0x38
 8319 014a 05       		.uleb128 0x5
 8320 014b 00       		.byte	0
 8321 014c 00       		.byte	0
 8322 014d 1C       		.uleb128 0x1c
 8323 014e 13       		.uleb128 0x13
 8324 014f 01       		.byte	0x1
 8325 0150 03       		.uleb128 0x3
 8326 0151 0E       		.uleb128 0xe
 8327 0152 0B       		.uleb128 0xb
 8328 0153 0B       		.uleb128 0xb
 8329 0154 3A       		.uleb128 0x3a
 8330 0155 0B       		.uleb128 0xb
 8331 0156 3B       		.uleb128 0x3b
 8332 0157 05       		.uleb128 0x5
 8333 0158 01       		.uleb128 0x1
 8334 0159 13       		.uleb128 0x13
 8335 015a 00       		.byte	0
 8336 015b 00       		.byte	0
 8337 015c 1D       		.uleb128 0x1d
 8338 015d 13       		.uleb128 0x13
 8339 015e 01       		.byte	0x1
 8340 015f 0B       		.uleb128 0xb
 8341 0160 0B       		.uleb128 0xb
 8342 0161 3A       		.uleb128 0x3a
 8343 0162 0B       		.uleb128 0xb
 8344 0163 3B       		.uleb128 0x3b
 8345 0164 05       		.uleb128 0x5
 8346 0165 01       		.uleb128 0x1
 8347 0166 13       		.uleb128 0x13
 8348 0167 00       		.byte	0
 8349 0168 00       		.byte	0
 8350 0169 1E       		.uleb128 0x1e
 8351 016a 17       		.uleb128 0x17
 8352 016b 01       		.byte	0x1
 8353 016c 0B       		.uleb128 0xb
 8354 016d 0B       		.uleb128 0xb
 8355 016e 3A       		.uleb128 0x3a
 8356 016f 0B       		.uleb128 0xb
 8357 0170 3B       		.uleb128 0x3b
 8358 0171 05       		.uleb128 0x5
 8359 0172 01       		.uleb128 0x1
 8360 0173 13       		.uleb128 0x13
 8361 0174 00       		.byte	0
 8362 0175 00       		.byte	0
 8363 0176 1F       		.uleb128 0x1f
 8364 0177 0D       		.uleb128 0xd
 8365 0178 00       		.byte	0
 8366 0179 03       		.uleb128 0x3
 8367 017a 0E       		.uleb128 0xe
 8368 017b 3A       		.uleb128 0x3a
 8369 017c 0B       		.uleb128 0xb
 8370 017d 3B       		.uleb128 0x3b
 8371 017e 05       		.uleb128 0x5
 8372 017f 49       		.uleb128 0x49
ARM GAS  /tmp/ccJYkMjP.s 			page 190


 8373 0180 13       		.uleb128 0x13
 8374 0181 00       		.byte	0
 8375 0182 00       		.byte	0
 8376 0183 20       		.uleb128 0x20
 8377 0184 15       		.uleb128 0x15
 8378 0185 01       		.byte	0x1
 8379 0186 27       		.uleb128 0x27
 8380 0187 19       		.uleb128 0x19
 8381 0188 01       		.uleb128 0x1
 8382 0189 13       		.uleb128 0x13
 8383 018a 00       		.byte	0
 8384 018b 00       		.byte	0
 8385 018c 21       		.uleb128 0x21
 8386 018d 34       		.uleb128 0x34
 8387 018e 00       		.byte	0
 8388 018f 03       		.uleb128 0x3
 8389 0190 0E       		.uleb128 0xe
 8390 0191 3A       		.uleb128 0x3a
 8391 0192 0B       		.uleb128 0xb
 8392 0193 3B       		.uleb128 0x3b
 8393 0194 0B       		.uleb128 0xb
 8394 0195 49       		.uleb128 0x49
 8395 0196 13       		.uleb128 0x13
 8396 0197 02       		.uleb128 0x2
 8397 0198 18       		.uleb128 0x18
 8398 0199 00       		.byte	0
 8399 019a 00       		.byte	0
 8400 019b 22       		.uleb128 0x22
 8401 019c 2E       		.uleb128 0x2e
 8402 019d 01       		.byte	0x1
 8403 019e 3F       		.uleb128 0x3f
 8404 019f 19       		.uleb128 0x19
 8405 01a0 03       		.uleb128 0x3
 8406 01a1 0E       		.uleb128 0xe
 8407 01a2 3A       		.uleb128 0x3a
 8408 01a3 0B       		.uleb128 0xb
 8409 01a4 3B       		.uleb128 0x3b
 8410 01a5 05       		.uleb128 0x5
 8411 01a6 27       		.uleb128 0x27
 8412 01a7 19       		.uleb128 0x19
 8413 01a8 49       		.uleb128 0x49
 8414 01a9 13       		.uleb128 0x13
 8415 01aa 11       		.uleb128 0x11
 8416 01ab 01       		.uleb128 0x1
 8417 01ac 12       		.uleb128 0x12
 8418 01ad 06       		.uleb128 0x6
 8419 01ae 40       		.uleb128 0x40
 8420 01af 18       		.uleb128 0x18
 8421 01b0 9742     		.uleb128 0x2117
 8422 01b2 19       		.uleb128 0x19
 8423 01b3 01       		.uleb128 0x1
 8424 01b4 13       		.uleb128 0x13
 8425 01b5 00       		.byte	0
 8426 01b6 00       		.byte	0
 8427 01b7 23       		.uleb128 0x23
 8428 01b8 05       		.uleb128 0x5
 8429 01b9 00       		.byte	0
ARM GAS  /tmp/ccJYkMjP.s 			page 191


 8430 01ba 03       		.uleb128 0x3
 8431 01bb 0E       		.uleb128 0xe
 8432 01bc 3A       		.uleb128 0x3a
 8433 01bd 0B       		.uleb128 0xb
 8434 01be 3B       		.uleb128 0x3b
 8435 01bf 05       		.uleb128 0x5
 8436 01c0 49       		.uleb128 0x49
 8437 01c1 13       		.uleb128 0x13
 8438 01c2 02       		.uleb128 0x2
 8439 01c3 17       		.uleb128 0x17
 8440 01c4 00       		.byte	0
 8441 01c5 00       		.byte	0
 8442 01c6 24       		.uleb128 0x24
 8443 01c7 34       		.uleb128 0x34
 8444 01c8 00       		.byte	0
 8445 01c9 03       		.uleb128 0x3
 8446 01ca 0E       		.uleb128 0xe
 8447 01cb 3A       		.uleb128 0x3a
 8448 01cc 0B       		.uleb128 0xb
 8449 01cd 3B       		.uleb128 0x3b
 8450 01ce 05       		.uleb128 0x5
 8451 01cf 49       		.uleb128 0x49
 8452 01d0 13       		.uleb128 0x13
 8453 01d1 02       		.uleb128 0x2
 8454 01d2 18       		.uleb128 0x18
 8455 01d3 00       		.byte	0
 8456 01d4 00       		.byte	0
 8457 01d5 25       		.uleb128 0x25
 8458 01d6 2E       		.uleb128 0x2e
 8459 01d7 01       		.byte	0x1
 8460 01d8 3F       		.uleb128 0x3f
 8461 01d9 19       		.uleb128 0x19
 8462 01da 03       		.uleb128 0x3
 8463 01db 0E       		.uleb128 0xe
 8464 01dc 3A       		.uleb128 0x3a
 8465 01dd 0B       		.uleb128 0xb
 8466 01de 3B       		.uleb128 0x3b
 8467 01df 05       		.uleb128 0x5
 8468 01e0 27       		.uleb128 0x27
 8469 01e1 19       		.uleb128 0x19
 8470 01e2 20       		.uleb128 0x20
 8471 01e3 0B       		.uleb128 0xb
 8472 01e4 01       		.uleb128 0x1
 8473 01e5 13       		.uleb128 0x13
 8474 01e6 00       		.byte	0
 8475 01e7 00       		.byte	0
 8476 01e8 26       		.uleb128 0x26
 8477 01e9 05       		.uleb128 0x5
 8478 01ea 00       		.byte	0
 8479 01eb 03       		.uleb128 0x3
 8480 01ec 0E       		.uleb128 0xe
 8481 01ed 3A       		.uleb128 0x3a
 8482 01ee 0B       		.uleb128 0xb
 8483 01ef 3B       		.uleb128 0x3b
 8484 01f0 05       		.uleb128 0x5
 8485 01f1 49       		.uleb128 0x49
 8486 01f2 13       		.uleb128 0x13
ARM GAS  /tmp/ccJYkMjP.s 			page 192


 8487 01f3 00       		.byte	0
 8488 01f4 00       		.byte	0
 8489 01f5 27       		.uleb128 0x27
 8490 01f6 2E       		.uleb128 0x2e
 8491 01f7 01       		.byte	0x1
 8492 01f8 3F       		.uleb128 0x3f
 8493 01f9 19       		.uleb128 0x19
 8494 01fa 03       		.uleb128 0x3
 8495 01fb 0E       		.uleb128 0xe
 8496 01fc 3A       		.uleb128 0x3a
 8497 01fd 0B       		.uleb128 0xb
 8498 01fe 3B       		.uleb128 0x3b
 8499 01ff 05       		.uleb128 0x5
 8500 0200 27       		.uleb128 0x27
 8501 0201 19       		.uleb128 0x19
 8502 0202 11       		.uleb128 0x11
 8503 0203 01       		.uleb128 0x1
 8504 0204 12       		.uleb128 0x12
 8505 0205 06       		.uleb128 0x6
 8506 0206 40       		.uleb128 0x40
 8507 0207 18       		.uleb128 0x18
 8508 0208 9742     		.uleb128 0x2117
 8509 020a 19       		.uleb128 0x19
 8510 020b 01       		.uleb128 0x1
 8511 020c 13       		.uleb128 0x13
 8512 020d 00       		.byte	0
 8513 020e 00       		.byte	0
 8514 020f 28       		.uleb128 0x28
 8515 0210 05       		.uleb128 0x5
 8516 0211 00       		.byte	0
 8517 0212 03       		.uleb128 0x3
 8518 0213 0E       		.uleb128 0xe
 8519 0214 3A       		.uleb128 0x3a
 8520 0215 0B       		.uleb128 0xb
 8521 0216 3B       		.uleb128 0x3b
 8522 0217 05       		.uleb128 0x5
 8523 0218 49       		.uleb128 0x49
 8524 0219 13       		.uleb128 0x13
 8525 021a 02       		.uleb128 0x2
 8526 021b 18       		.uleb128 0x18
 8527 021c 00       		.byte	0
 8528 021d 00       		.byte	0
 8529 021e 29       		.uleb128 0x29
 8530 021f 05       		.uleb128 0x5
 8531 0220 00       		.byte	0
 8532 0221 03       		.uleb128 0x3
 8533 0222 08       		.uleb128 0x8
 8534 0223 3A       		.uleb128 0x3a
 8535 0224 0B       		.uleb128 0xb
 8536 0225 3B       		.uleb128 0x3b
 8537 0226 05       		.uleb128 0x5
 8538 0227 49       		.uleb128 0x49
 8539 0228 13       		.uleb128 0x13
 8540 0229 02       		.uleb128 0x2
 8541 022a 18       		.uleb128 0x18
 8542 022b 00       		.byte	0
 8543 022c 00       		.byte	0
ARM GAS  /tmp/ccJYkMjP.s 			page 193


 8544 022d 2A       		.uleb128 0x2a
 8545 022e 1D       		.uleb128 0x1d
 8546 022f 01       		.byte	0x1
 8547 0230 31       		.uleb128 0x31
 8548 0231 13       		.uleb128 0x13
 8549 0232 11       		.uleb128 0x11
 8550 0233 01       		.uleb128 0x1
 8551 0234 12       		.uleb128 0x12
 8552 0235 06       		.uleb128 0x6
 8553 0236 58       		.uleb128 0x58
 8554 0237 0B       		.uleb128 0xb
 8555 0238 59       		.uleb128 0x59
 8556 0239 05       		.uleb128 0x5
 8557 023a 00       		.byte	0
 8558 023b 00       		.byte	0
 8559 023c 2B       		.uleb128 0x2b
 8560 023d 05       		.uleb128 0x5
 8561 023e 00       		.byte	0
 8562 023f 31       		.uleb128 0x31
 8563 0240 13       		.uleb128 0x13
 8564 0241 00       		.byte	0
 8565 0242 00       		.byte	0
 8566 0243 2C       		.uleb128 0x2c
 8567 0244 2E       		.uleb128 0x2e
 8568 0245 01       		.byte	0x1
 8569 0246 3F       		.uleb128 0x3f
 8570 0247 19       		.uleb128 0x19
 8571 0248 03       		.uleb128 0x3
 8572 0249 0E       		.uleb128 0xe
 8573 024a 3A       		.uleb128 0x3a
 8574 024b 0B       		.uleb128 0xb
 8575 024c 3B       		.uleb128 0x3b
 8576 024d 05       		.uleb128 0x5
 8577 024e 27       		.uleb128 0x27
 8578 024f 19       		.uleb128 0x19
 8579 0250 49       		.uleb128 0x49
 8580 0251 13       		.uleb128 0x13
 8581 0252 20       		.uleb128 0x20
 8582 0253 0B       		.uleb128 0xb
 8583 0254 01       		.uleb128 0x1
 8584 0255 13       		.uleb128 0x13
 8585 0256 00       		.byte	0
 8586 0257 00       		.byte	0
 8587 0258 2D       		.uleb128 0x2d
 8588 0259 05       		.uleb128 0x5
 8589 025a 00       		.byte	0
 8590 025b 03       		.uleb128 0x3
 8591 025c 08       		.uleb128 0x8
 8592 025d 3A       		.uleb128 0x3a
 8593 025e 0B       		.uleb128 0xb
 8594 025f 3B       		.uleb128 0x3b
 8595 0260 05       		.uleb128 0x5
 8596 0261 49       		.uleb128 0x49
 8597 0262 13       		.uleb128 0x13
 8598 0263 00       		.byte	0
 8599 0264 00       		.byte	0
 8600 0265 2E       		.uleb128 0x2e
ARM GAS  /tmp/ccJYkMjP.s 			page 194


 8601 0266 2E       		.uleb128 0x2e
 8602 0267 01       		.byte	0x1
 8603 0268 3F       		.uleb128 0x3f
 8604 0269 19       		.uleb128 0x19
 8605 026a 03       		.uleb128 0x3
 8606 026b 0E       		.uleb128 0xe
 8607 026c 3A       		.uleb128 0x3a
 8608 026d 0B       		.uleb128 0xb
 8609 026e 3B       		.uleb128 0x3b
 8610 026f 05       		.uleb128 0x5
 8611 0270 27       		.uleb128 0x27
 8612 0271 19       		.uleb128 0x19
 8613 0272 01       		.uleb128 0x1
 8614 0273 13       		.uleb128 0x13
 8615 0274 00       		.byte	0
 8616 0275 00       		.byte	0
 8617 0276 2F       		.uleb128 0x2f
 8618 0277 1D       		.uleb128 0x1d
 8619 0278 01       		.byte	0x1
 8620 0279 31       		.uleb128 0x31
 8621 027a 13       		.uleb128 0x13
 8622 027b 52       		.uleb128 0x52
 8623 027c 01       		.uleb128 0x1
 8624 027d 55       		.uleb128 0x55
 8625 027e 17       		.uleb128 0x17
 8626 027f 58       		.uleb128 0x58
 8627 0280 0B       		.uleb128 0xb
 8628 0281 59       		.uleb128 0x59
 8629 0282 05       		.uleb128 0x5
 8630 0283 00       		.byte	0
 8631 0284 00       		.byte	0
 8632 0285 30       		.uleb128 0x30
 8633 0286 05       		.uleb128 0x5
 8634 0287 00       		.byte	0
 8635 0288 31       		.uleb128 0x31
 8636 0289 13       		.uleb128 0x13
 8637 028a 02       		.uleb128 0x2
 8638 028b 17       		.uleb128 0x17
 8639 028c 00       		.byte	0
 8640 028d 00       		.byte	0
 8641 028e 31       		.uleb128 0x31
 8642 028f 1D       		.uleb128 0x1d
 8643 0290 01       		.byte	0x1
 8644 0291 31       		.uleb128 0x31
 8645 0292 13       		.uleb128 0x13
 8646 0293 52       		.uleb128 0x52
 8647 0294 01       		.uleb128 0x1
 8648 0295 55       		.uleb128 0x55
 8649 0296 17       		.uleb128 0x17
 8650 0297 58       		.uleb128 0x58
 8651 0298 0B       		.uleb128 0xb
 8652 0299 59       		.uleb128 0x59
 8653 029a 05       		.uleb128 0x5
 8654 029b 01       		.uleb128 0x1
 8655 029c 13       		.uleb128 0x13
 8656 029d 00       		.byte	0
 8657 029e 00       		.byte	0
ARM GAS  /tmp/ccJYkMjP.s 			page 195


 8658 029f 32       		.uleb128 0x32
 8659 02a0 1D       		.uleb128 0x1d
 8660 02a1 01       		.byte	0x1
 8661 02a2 31       		.uleb128 0x31
 8662 02a3 13       		.uleb128 0x13
 8663 02a4 52       		.uleb128 0x52
 8664 02a5 01       		.uleb128 0x1
 8665 02a6 55       		.uleb128 0x55
 8666 02a7 17       		.uleb128 0x17
 8667 02a8 58       		.uleb128 0x58
 8668 02a9 0B       		.uleb128 0xb
 8669 02aa 59       		.uleb128 0x59
 8670 02ab 0B       		.uleb128 0xb
 8671 02ac 01       		.uleb128 0x1
 8672 02ad 13       		.uleb128 0x13
 8673 02ae 00       		.byte	0
 8674 02af 00       		.byte	0
 8675 02b0 33       		.uleb128 0x33
 8676 02b1 898201   		.uleb128 0x4109
 8677 02b4 01       		.byte	0x1
 8678 02b5 11       		.uleb128 0x11
 8679 02b6 01       		.uleb128 0x1
 8680 02b7 31       		.uleb128 0x31
 8681 02b8 13       		.uleb128 0x13
 8682 02b9 00       		.byte	0
 8683 02ba 00       		.byte	0
 8684 02bb 34       		.uleb128 0x34
 8685 02bc 8A8201   		.uleb128 0x410a
 8686 02bf 00       		.byte	0
 8687 02c0 02       		.uleb128 0x2
 8688 02c1 18       		.uleb128 0x18
 8689 02c2 9142     		.uleb128 0x2111
 8690 02c4 18       		.uleb128 0x18
 8691 02c5 00       		.byte	0
 8692 02c6 00       		.byte	0
 8693 02c7 35       		.uleb128 0x35
 8694 02c8 2E       		.uleb128 0x2e
 8695 02c9 01       		.byte	0x1
 8696 02ca 3F       		.uleb128 0x3f
 8697 02cb 19       		.uleb128 0x19
 8698 02cc 03       		.uleb128 0x3
 8699 02cd 0E       		.uleb128 0xe
 8700 02ce 3A       		.uleb128 0x3a
 8701 02cf 0B       		.uleb128 0xb
 8702 02d0 3B       		.uleb128 0x3b
 8703 02d1 05       		.uleb128 0x5
 8704 02d2 27       		.uleb128 0x27
 8705 02d3 19       		.uleb128 0x19
 8706 02d4 49       		.uleb128 0x49
 8707 02d5 13       		.uleb128 0x13
 8708 02d6 01       		.uleb128 0x1
 8709 02d7 13       		.uleb128 0x13
 8710 02d8 00       		.byte	0
 8711 02d9 00       		.byte	0
 8712 02da 36       		.uleb128 0x36
 8713 02db 0B       		.uleb128 0xb
 8714 02dc 01       		.byte	0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 196


 8715 02dd 11       		.uleb128 0x11
 8716 02de 01       		.uleb128 0x1
 8717 02df 12       		.uleb128 0x12
 8718 02e0 06       		.uleb128 0x6
 8719 02e1 00       		.byte	0
 8720 02e2 00       		.byte	0
 8721 02e3 37       		.uleb128 0x37
 8722 02e4 1D       		.uleb128 0x1d
 8723 02e5 01       		.byte	0x1
 8724 02e6 31       		.uleb128 0x31
 8725 02e7 13       		.uleb128 0x13
 8726 02e8 11       		.uleb128 0x11
 8727 02e9 01       		.uleb128 0x1
 8728 02ea 12       		.uleb128 0x12
 8729 02eb 06       		.uleb128 0x6
 8730 02ec 58       		.uleb128 0x58
 8731 02ed 0B       		.uleb128 0xb
 8732 02ee 59       		.uleb128 0x59
 8733 02ef 05       		.uleb128 0x5
 8734 02f0 01       		.uleb128 0x1
 8735 02f1 13       		.uleb128 0x13
 8736 02f2 00       		.byte	0
 8737 02f3 00       		.byte	0
 8738 02f4 38       		.uleb128 0x38
 8739 02f5 0B       		.uleb128 0xb
 8740 02f6 01       		.byte	0x1
 8741 02f7 55       		.uleb128 0x55
 8742 02f8 17       		.uleb128 0x17
 8743 02f9 00       		.byte	0
 8744 02fa 00       		.byte	0
 8745 02fb 39       		.uleb128 0x39
 8746 02fc 34       		.uleb128 0x34
 8747 02fd 00       		.byte	0
 8748 02fe 31       		.uleb128 0x31
 8749 02ff 13       		.uleb128 0x13
 8750 0300 02       		.uleb128 0x2
 8751 0301 17       		.uleb128 0x17
 8752 0302 00       		.byte	0
 8753 0303 00       		.byte	0
 8754 0304 3A       		.uleb128 0x3a
 8755 0305 34       		.uleb128 0x34
 8756 0306 00       		.byte	0
 8757 0307 03       		.uleb128 0x3
 8758 0308 0E       		.uleb128 0xe
 8759 0309 3A       		.uleb128 0x3a
 8760 030a 0B       		.uleb128 0xb
 8761 030b 3B       		.uleb128 0x3b
 8762 030c 05       		.uleb128 0x5
 8763 030d 49       		.uleb128 0x49
 8764 030e 13       		.uleb128 0x13
 8765 030f 00       		.byte	0
 8766 0310 00       		.byte	0
 8767 0311 3B       		.uleb128 0x3b
 8768 0312 2E       		.uleb128 0x2e
 8769 0313 01       		.byte	0x1
 8770 0314 3F       		.uleb128 0x3f
 8771 0315 19       		.uleb128 0x19
ARM GAS  /tmp/ccJYkMjP.s 			page 197


 8772 0316 03       		.uleb128 0x3
 8773 0317 0E       		.uleb128 0xe
 8774 0318 3A       		.uleb128 0x3a
 8775 0319 0B       		.uleb128 0xb
 8776 031a 3B       		.uleb128 0x3b
 8777 031b 0B       		.uleb128 0xb
 8778 031c 27       		.uleb128 0x27
 8779 031d 19       		.uleb128 0x19
 8780 031e 20       		.uleb128 0x20
 8781 031f 0B       		.uleb128 0xb
 8782 0320 01       		.uleb128 0x1
 8783 0321 13       		.uleb128 0x13
 8784 0322 00       		.byte	0
 8785 0323 00       		.byte	0
 8786 0324 3C       		.uleb128 0x3c
 8787 0325 05       		.uleb128 0x5
 8788 0326 00       		.byte	0
 8789 0327 03       		.uleb128 0x3
 8790 0328 0E       		.uleb128 0xe
 8791 0329 3A       		.uleb128 0x3a
 8792 032a 0B       		.uleb128 0xb
 8793 032b 3B       		.uleb128 0x3b
 8794 032c 0B       		.uleb128 0xb
 8795 032d 49       		.uleb128 0x49
 8796 032e 13       		.uleb128 0x13
 8797 032f 00       		.byte	0
 8798 0330 00       		.byte	0
 8799 0331 3D       		.uleb128 0x3d
 8800 0332 2E       		.uleb128 0x2e
 8801 0333 01       		.byte	0x1
 8802 0334 03       		.uleb128 0x3
 8803 0335 0E       		.uleb128 0xe
 8804 0336 3A       		.uleb128 0x3a
 8805 0337 0B       		.uleb128 0xb
 8806 0338 3B       		.uleb128 0x3b
 8807 0339 0B       		.uleb128 0xb
 8808 033a 27       		.uleb128 0x27
 8809 033b 19       		.uleb128 0x19
 8810 033c 20       		.uleb128 0x20
 8811 033d 0B       		.uleb128 0xb
 8812 033e 01       		.uleb128 0x1
 8813 033f 13       		.uleb128 0x13
 8814 0340 00       		.byte	0
 8815 0341 00       		.byte	0
 8816 0342 3E       		.uleb128 0x3e
 8817 0343 2E       		.uleb128 0x2e
 8818 0344 01       		.byte	0x1
 8819 0345 03       		.uleb128 0x3
 8820 0346 0E       		.uleb128 0xe
 8821 0347 3A       		.uleb128 0x3a
 8822 0348 0B       		.uleb128 0xb
 8823 0349 3B       		.uleb128 0x3b
 8824 034a 0B       		.uleb128 0xb
 8825 034b 27       		.uleb128 0x27
 8826 034c 19       		.uleb128 0x19
 8827 034d 49       		.uleb128 0x49
 8828 034e 13       		.uleb128 0x13
ARM GAS  /tmp/ccJYkMjP.s 			page 198


 8829 034f 20       		.uleb128 0x20
 8830 0350 0B       		.uleb128 0xb
 8831 0351 01       		.uleb128 0x1
 8832 0352 13       		.uleb128 0x13
 8833 0353 00       		.byte	0
 8834 0354 00       		.byte	0
 8835 0355 3F       		.uleb128 0x3f
 8836 0356 34       		.uleb128 0x34
 8837 0357 00       		.byte	0
 8838 0358 03       		.uleb128 0x3
 8839 0359 08       		.uleb128 0x8
 8840 035a 3A       		.uleb128 0x3a
 8841 035b 0B       		.uleb128 0xb
 8842 035c 3B       		.uleb128 0x3b
 8843 035d 0B       		.uleb128 0xb
 8844 035e 49       		.uleb128 0x49
 8845 035f 13       		.uleb128 0x13
 8846 0360 00       		.byte	0
 8847 0361 00       		.byte	0
 8848 0362 40       		.uleb128 0x40
 8849 0363 2E       		.uleb128 0x2e
 8850 0364 01       		.byte	0x1
 8851 0365 3F       		.uleb128 0x3f
 8852 0366 19       		.uleb128 0x19
 8853 0367 03       		.uleb128 0x3
 8854 0368 0E       		.uleb128 0xe
 8855 0369 3A       		.uleb128 0x3a
 8856 036a 0B       		.uleb128 0xb
 8857 036b 3B       		.uleb128 0x3b
 8858 036c 0B       		.uleb128 0xb
 8859 036d 27       		.uleb128 0x27
 8860 036e 19       		.uleb128 0x19
 8861 036f 49       		.uleb128 0x49
 8862 0370 13       		.uleb128 0x13
 8863 0371 11       		.uleb128 0x11
 8864 0372 01       		.uleb128 0x1
 8865 0373 12       		.uleb128 0x12
 8866 0374 06       		.uleb128 0x6
 8867 0375 40       		.uleb128 0x40
 8868 0376 18       		.uleb128 0x18
 8869 0377 9742     		.uleb128 0x2117
 8870 0379 19       		.uleb128 0x19
 8871 037a 01       		.uleb128 0x1
 8872 037b 13       		.uleb128 0x13
 8873 037c 00       		.byte	0
 8874 037d 00       		.byte	0
 8875 037e 41       		.uleb128 0x41
 8876 037f 05       		.uleb128 0x5
 8877 0380 00       		.byte	0
 8878 0381 03       		.uleb128 0x3
 8879 0382 0E       		.uleb128 0xe
 8880 0383 3A       		.uleb128 0x3a
 8881 0384 0B       		.uleb128 0xb
 8882 0385 3B       		.uleb128 0x3b
 8883 0386 0B       		.uleb128 0xb
 8884 0387 49       		.uleb128 0x49
 8885 0388 13       		.uleb128 0x13
ARM GAS  /tmp/ccJYkMjP.s 			page 199


 8886 0389 02       		.uleb128 0x2
 8887 038a 17       		.uleb128 0x17
 8888 038b 00       		.byte	0
 8889 038c 00       		.byte	0
 8890 038d 42       		.uleb128 0x42
 8891 038e 34       		.uleb128 0x34
 8892 038f 00       		.byte	0
 8893 0390 03       		.uleb128 0x3
 8894 0391 0E       		.uleb128 0xe
 8895 0392 3A       		.uleb128 0x3a
 8896 0393 0B       		.uleb128 0xb
 8897 0394 3B       		.uleb128 0x3b
 8898 0395 0B       		.uleb128 0xb
 8899 0396 49       		.uleb128 0x49
 8900 0397 13       		.uleb128 0x13
 8901 0398 02       		.uleb128 0x2
 8902 0399 17       		.uleb128 0x17
 8903 039a 00       		.byte	0
 8904 039b 00       		.byte	0
 8905 039c 43       		.uleb128 0x43
 8906 039d 34       		.uleb128 0x34
 8907 039e 00       		.byte	0
 8908 039f 03       		.uleb128 0x3
 8909 03a0 08       		.uleb128 0x8
 8910 03a1 3A       		.uleb128 0x3a
 8911 03a2 0B       		.uleb128 0xb
 8912 03a3 3B       		.uleb128 0x3b
 8913 03a4 0B       		.uleb128 0xb
 8914 03a5 49       		.uleb128 0x49
 8915 03a6 13       		.uleb128 0x13
 8916 03a7 02       		.uleb128 0x2
 8917 03a8 17       		.uleb128 0x17
 8918 03a9 00       		.byte	0
 8919 03aa 00       		.byte	0
 8920 03ab 44       		.uleb128 0x44
 8921 03ac 2E       		.uleb128 0x2e
 8922 03ad 01       		.byte	0x1
 8923 03ae 31       		.uleb128 0x31
 8924 03af 13       		.uleb128 0x13
 8925 03b0 11       		.uleb128 0x11
 8926 03b1 01       		.uleb128 0x1
 8927 03b2 12       		.uleb128 0x12
 8928 03b3 06       		.uleb128 0x6
 8929 03b4 40       		.uleb128 0x40
 8930 03b5 18       		.uleb128 0x18
 8931 03b6 9742     		.uleb128 0x2117
 8932 03b8 19       		.uleb128 0x19
 8933 03b9 01       		.uleb128 0x1
 8934 03ba 13       		.uleb128 0x13
 8935 03bb 00       		.byte	0
 8936 03bc 00       		.byte	0
 8937 03bd 45       		.uleb128 0x45
 8938 03be 05       		.uleb128 0x5
 8939 03bf 00       		.byte	0
 8940 03c0 31       		.uleb128 0x31
 8941 03c1 13       		.uleb128 0x13
 8942 03c2 02       		.uleb128 0x2
ARM GAS  /tmp/ccJYkMjP.s 			page 200


 8943 03c3 18       		.uleb128 0x18
 8944 03c4 00       		.byte	0
 8945 03c5 00       		.byte	0
 8946 03c6 46       		.uleb128 0x46
 8947 03c7 34       		.uleb128 0x34
 8948 03c8 00       		.byte	0
 8949 03c9 31       		.uleb128 0x31
 8950 03ca 13       		.uleb128 0x13
 8951 03cb 02       		.uleb128 0x2
 8952 03cc 18       		.uleb128 0x18
 8953 03cd 00       		.byte	0
 8954 03ce 00       		.byte	0
 8955 03cf 47       		.uleb128 0x47
 8956 03d0 0B       		.uleb128 0xb
 8957 03d1 01       		.byte	0x1
 8958 03d2 11       		.uleb128 0x11
 8959 03d3 01       		.uleb128 0x1
 8960 03d4 12       		.uleb128 0x12
 8961 03d5 06       		.uleb128 0x6
 8962 03d6 01       		.uleb128 0x1
 8963 03d7 13       		.uleb128 0x13
 8964 03d8 00       		.byte	0
 8965 03d9 00       		.byte	0
 8966 03da 48       		.uleb128 0x48
 8967 03db 34       		.uleb128 0x34
 8968 03dc 00       		.byte	0
 8969 03dd 31       		.uleb128 0x31
 8970 03de 13       		.uleb128 0x13
 8971 03df 00       		.byte	0
 8972 03e0 00       		.byte	0
 8973 03e1 49       		.uleb128 0x49
 8974 03e2 2E       		.uleb128 0x2e
 8975 03e3 01       		.byte	0x1
 8976 03e4 31       		.uleb128 0x31
 8977 03e5 13       		.uleb128 0x13
 8978 03e6 11       		.uleb128 0x11
 8979 03e7 01       		.uleb128 0x1
 8980 03e8 12       		.uleb128 0x12
 8981 03e9 06       		.uleb128 0x6
 8982 03ea 40       		.uleb128 0x40
 8983 03eb 18       		.uleb128 0x18
 8984 03ec 9742     		.uleb128 0x2117
 8985 03ee 19       		.uleb128 0x19
 8986 03ef 00       		.byte	0
 8987 03f0 00       		.byte	0
 8988 03f1 00       		.byte	0
 8989              		.section	.debug_loc,"",%progbits
 8990              	.Ldebug_loc0:
 8991              	.LLST145:
 8992 0000 00000000 		.4byte	.LVL253
 8993 0004 08000000 		.4byte	.LVL255
 8994 0008 0100     		.2byte	0x1
 8995 000a 50       		.byte	0x50
 8996 000b 08000000 		.4byte	.LVL255
 8997 000f 10000000 		.4byte	.LFE227
 8998 0013 0400     		.2byte	0x4
 8999 0015 F3       		.byte	0xf3
ARM GAS  /tmp/ccJYkMjP.s 			page 201


 9000 0016 01       		.uleb128 0x1
 9001 0017 50       		.byte	0x50
 9002 0018 9F       		.byte	0x9f
 9003 0019 00000000 		.4byte	0
 9004 001d 00000000 		.4byte	0
 9005              	.LLST144:
 9006 0021 00000000 		.4byte	.LVL249
 9007 0025 0A000000 		.4byte	.LVL250
 9008 0029 0100     		.2byte	0x1
 9009 002b 50       		.byte	0x50
 9010 002c 0A000000 		.4byte	.LVL250
 9011 0030 12000000 		.4byte	.LFE224
 9012 0034 0400     		.2byte	0x4
 9013 0036 F3       		.byte	0xf3
 9014 0037 01       		.uleb128 0x1
 9015 0038 50       		.byte	0x50
 9016 0039 9F       		.byte	0x9f
 9017 003a 00000000 		.4byte	0
 9018 003e 00000000 		.4byte	0
 9019              	.LLST143:
 9020 0042 00000000 		.4byte	.LVL245
 9021 0046 0A000000 		.4byte	.LVL246
 9022 004a 0100     		.2byte	0x1
 9023 004c 50       		.byte	0x50
 9024 004d 0A000000 		.4byte	.LVL246
 9025 0051 12000000 		.4byte	.LVL247
 9026 0055 0400     		.2byte	0x4
 9027 0057 F3       		.byte	0xf3
 9028 0058 01       		.uleb128 0x1
 9029 0059 50       		.byte	0x50
 9030 005a 9F       		.byte	0x9f
 9031 005b 12000000 		.4byte	.LVL247
 9032 005f 14000000 		.4byte	.LVL248
 9033 0063 0100     		.2byte	0x1
 9034 0065 50       		.byte	0x50
 9035 0066 14000000 		.4byte	.LVL248
 9036 006a 16000000 		.4byte	.LFE223
 9037 006e 0400     		.2byte	0x4
 9038 0070 F3       		.byte	0xf3
 9039 0071 01       		.uleb128 0x1
 9040 0072 50       		.byte	0x50
 9041 0073 9F       		.byte	0x9f
 9042 0074 00000000 		.4byte	0
 9043 0078 00000000 		.4byte	0
 9044              	.LLST142:
 9045 007c 00000000 		.4byte	.LVL243
 9046 0080 04000000 		.4byte	.LVL244
 9047 0084 0100     		.2byte	0x1
 9048 0086 51       		.byte	0x51
 9049 0087 00000000 		.4byte	0
 9050 008b 00000000 		.4byte	0
 9051              	.LLST137:
 9052 008f 00000000 		.4byte	.LVL233
 9053 0093 02000000 		.4byte	.LVL234
 9054 0097 0100     		.2byte	0x1
 9055 0099 50       		.byte	0x50
 9056 009a 02000000 		.4byte	.LVL234
ARM GAS  /tmp/ccJYkMjP.s 			page 202


 9057 009e 08000000 		.4byte	.LFE219
 9058 00a2 0400     		.2byte	0x4
 9059 00a4 F3       		.byte	0xf3
 9060 00a5 01       		.uleb128 0x1
 9061 00a6 50       		.byte	0x50
 9062 00a7 9F       		.byte	0x9f
 9063 00a8 00000000 		.4byte	0
 9064 00ac 00000000 		.4byte	0
 9065              	.LLST136:
 9066 00b0 00000000 		.4byte	.LVL231
 9067 00b4 02000000 		.4byte	.LVL232
 9068 00b8 0100     		.2byte	0x1
 9069 00ba 50       		.byte	0x50
 9070 00bb 02000000 		.4byte	.LVL232
 9071 00bf 08000000 		.4byte	.LFE218
 9072 00c3 0400     		.2byte	0x4
 9073 00c5 F3       		.byte	0xf3
 9074 00c6 01       		.uleb128 0x1
 9075 00c7 50       		.byte	0x50
 9076 00c8 9F       		.byte	0x9f
 9077 00c9 00000000 		.4byte	0
 9078 00cd 00000000 		.4byte	0
 9079              	.LLST135:
 9080 00d1 00000000 		.4byte	.LVL229
 9081 00d5 02000000 		.4byte	.LVL230
 9082 00d9 0100     		.2byte	0x1
 9083 00db 50       		.byte	0x50
 9084 00dc 02000000 		.4byte	.LVL230
 9085 00e0 08000000 		.4byte	.LFE217
 9086 00e4 0400     		.2byte	0x4
 9087 00e6 F3       		.byte	0xf3
 9088 00e7 01       		.uleb128 0x1
 9089 00e8 50       		.byte	0x50
 9090 00e9 9F       		.byte	0x9f
 9091 00ea 00000000 		.4byte	0
 9092 00ee 00000000 		.4byte	0
 9093              	.LLST131:
 9094 00f2 00000000 		.4byte	.LVL219
 9095 00f6 10000000 		.4byte	.LVL220
 9096 00fa 0100     		.2byte	0x1
 9097 00fc 50       		.byte	0x50
 9098 00fd 10000000 		.4byte	.LVL220
 9099 0101 12000000 		.4byte	.LVL221
 9100 0105 0100     		.2byte	0x1
 9101 0107 52       		.byte	0x52
 9102 0108 12000000 		.4byte	.LVL221
 9103 010c 24000000 		.4byte	.LVL224
 9104 0110 0100     		.2byte	0x1
 9105 0112 50       		.byte	0x50
 9106 0113 24000000 		.4byte	.LVL224
 9107 0117 28000000 		.4byte	.LFE211
 9108 011b 0100     		.2byte	0x1
 9109 011d 52       		.byte	0x52
 9110 011e 00000000 		.4byte	0
 9111 0122 00000000 		.4byte	0
 9112              	.LLST132:
 9113 0126 00000000 		.4byte	.LVL219
ARM GAS  /tmp/ccJYkMjP.s 			page 203


 9114 012a 22000000 		.4byte	.LVL223
 9115 012e 0100     		.2byte	0x1
 9116 0130 51       		.byte	0x51
 9117 0131 22000000 		.4byte	.LVL223
 9118 0135 28000000 		.4byte	.LFE211
 9119 0139 0400     		.2byte	0x4
 9120 013b F3       		.byte	0xf3
 9121 013c 01       		.uleb128 0x1
 9122 013d 51       		.byte	0x51
 9123 013e 9F       		.byte	0x9f
 9124 013f 00000000 		.4byte	0
 9125 0143 00000000 		.4byte	0
 9126              	.LLST133:
 9127 0147 18000000 		.4byte	.LVL222
 9128 014b 22000000 		.4byte	.LVL223
 9129 014f 0100     		.2byte	0x1
 9130 0151 51       		.byte	0x51
 9131 0152 22000000 		.4byte	.LVL223
 9132 0156 26000000 		.4byte	.LVL225
 9133 015a 0400     		.2byte	0x4
 9134 015c F3       		.byte	0xf3
 9135 015d 01       		.uleb128 0x1
 9136 015e 51       		.byte	0x51
 9137 015f 9F       		.byte	0x9f
 9138 0160 00000000 		.4byte	0
 9139 0164 00000000 		.4byte	0
 9140              	.LLST134:
 9141 0168 18000000 		.4byte	.LVL222
 9142 016c 24000000 		.4byte	.LVL224
 9143 0170 0100     		.2byte	0x1
 9144 0172 50       		.byte	0x50
 9145 0173 24000000 		.4byte	.LVL224
 9146 0177 26000000 		.4byte	.LVL225
 9147 017b 0100     		.2byte	0x1
 9148 017d 52       		.byte	0x52
 9149 017e 00000000 		.4byte	0
 9150 0182 00000000 		.4byte	0
 9151              	.LLST130:
 9152 0186 00000000 		.4byte	.LVL213
 9153 018a 02000000 		.4byte	.LVL214
 9154 018e 0100     		.2byte	0x1
 9155 0190 50       		.byte	0x50
 9156 0191 02000000 		.4byte	.LVL214
 9157 0195 04000000 		.4byte	.LFE206
 9158 0199 0400     		.2byte	0x4
 9159 019b F3       		.byte	0xf3
 9160 019c 01       		.uleb128 0x1
 9161 019d 50       		.byte	0x50
 9162 019e 9F       		.byte	0x9f
 9163 019f 00000000 		.4byte	0
 9164 01a3 00000000 		.4byte	0
 9165              	.LLST129:
 9166 01a7 00000000 		.4byte	.LVL211
 9167 01ab 02000000 		.4byte	.LVL212
 9168 01af 0100     		.2byte	0x1
 9169 01b1 50       		.byte	0x50
 9170 01b2 02000000 		.4byte	.LVL212
ARM GAS  /tmp/ccJYkMjP.s 			page 204


 9171 01b6 04000000 		.4byte	.LFE205
 9172 01ba 0400     		.2byte	0x4
 9173 01bc F3       		.byte	0xf3
 9174 01bd 01       		.uleb128 0x1
 9175 01be 50       		.byte	0x50
 9176 01bf 9F       		.byte	0x9f
 9177 01c0 00000000 		.4byte	0
 9178 01c4 00000000 		.4byte	0
 9179              	.LLST128:
 9180 01c8 00000000 		.4byte	.LVL199
 9181 01cc 02000000 		.4byte	.LVL200
 9182 01d0 0100     		.2byte	0x1
 9183 01d2 50       		.byte	0x50
 9184 01d3 02000000 		.4byte	.LVL200
 9185 01d7 08000000 		.4byte	.LFE194
 9186 01db 0400     		.2byte	0x4
 9187 01dd F3       		.byte	0xf3
 9188 01de 01       		.uleb128 0x1
 9189 01df 50       		.byte	0x50
 9190 01e0 9F       		.byte	0x9f
 9191 01e1 00000000 		.4byte	0
 9192 01e5 00000000 		.4byte	0
 9193              	.LLST127:
 9194 01e9 00000000 		.4byte	.LVL197
 9195 01ed 02000000 		.4byte	.LVL198
 9196 01f1 0100     		.2byte	0x1
 9197 01f3 50       		.byte	0x50
 9198 01f4 02000000 		.4byte	.LVL198
 9199 01f8 08000000 		.4byte	.LFE193
 9200 01fc 0400     		.2byte	0x4
 9201 01fe F3       		.byte	0xf3
 9202 01ff 01       		.uleb128 0x1
 9203 0200 50       		.byte	0x50
 9204 0201 9F       		.byte	0x9f
 9205 0202 00000000 		.4byte	0
 9206 0206 00000000 		.4byte	0
 9207              	.LLST126:
 9208 020a 00000000 		.4byte	.LVL195
 9209 020e 04000000 		.4byte	.LVL196
 9210 0212 0100     		.2byte	0x1
 9211 0214 51       		.byte	0x51
 9212 0215 04000000 		.4byte	.LVL196
 9213 0219 10000000 		.4byte	.LFE192
 9214 021d 0400     		.2byte	0x4
 9215 021f F3       		.byte	0xf3
 9216 0220 01       		.uleb128 0x1
 9217 0221 51       		.byte	0x51
 9218 0222 9F       		.byte	0x9f
 9219 0223 00000000 		.4byte	0
 9220 0227 00000000 		.4byte	0
 9221              	.LLST125:
 9222 022b 00000000 		.4byte	.LVL192
 9223 022f 04000000 		.4byte	.LVL193
 9224 0233 0100     		.2byte	0x1
 9225 0235 51       		.byte	0x51
 9226 0236 04000000 		.4byte	.LVL193
 9227 023a 08000000 		.4byte	.LFE190
ARM GAS  /tmp/ccJYkMjP.s 			page 205


 9228 023e 0400     		.2byte	0x4
 9229 0240 F3       		.byte	0xf3
 9230 0241 01       		.uleb128 0x1
 9231 0242 51       		.byte	0x51
 9232 0243 9F       		.byte	0x9f
 9233 0244 00000000 		.4byte	0
 9234 0248 00000000 		.4byte	0
 9235              	.LLST124:
 9236 024c 00000000 		.4byte	.LVL190
 9237 0250 04000000 		.4byte	.LVL191
 9238 0254 0100     		.2byte	0x1
 9239 0256 51       		.byte	0x51
 9240 0257 04000000 		.4byte	.LVL191
 9241 025b 0A000000 		.4byte	.LFE189
 9242 025f 0400     		.2byte	0x4
 9243 0261 F3       		.byte	0xf3
 9244 0262 01       		.uleb128 0x1
 9245 0263 51       		.byte	0x51
 9246 0264 9F       		.byte	0x9f
 9247 0265 00000000 		.4byte	0
 9248 0269 00000000 		.4byte	0
 9249              	.LLST123:
 9250 026d 00000000 		.4byte	.LVL188
 9251 0271 04000000 		.4byte	.LVL189
 9252 0275 0100     		.2byte	0x1
 9253 0277 51       		.byte	0x51
 9254 0278 04000000 		.4byte	.LVL189
 9255 027c 0A000000 		.4byte	.LFE188
 9256 0280 0400     		.2byte	0x4
 9257 0282 F3       		.byte	0xf3
 9258 0283 01       		.uleb128 0x1
 9259 0284 51       		.byte	0x51
 9260 0285 9F       		.byte	0x9f
 9261 0286 00000000 		.4byte	0
 9262 028a 00000000 		.4byte	0
 9263              	.LLST121:
 9264 028e 00000000 		.4byte	.LVL185
 9265 0292 06000000 		.4byte	.LVL187
 9266 0296 0100     		.2byte	0x1
 9267 0298 51       		.byte	0x51
 9268 0299 06000000 		.4byte	.LVL187
 9269 029d 10000000 		.4byte	.LFE187
 9270 02a1 0400     		.2byte	0x4
 9271 02a3 F3       		.byte	0xf3
 9272 02a4 01       		.uleb128 0x1
 9273 02a5 51       		.byte	0x51
 9274 02a6 9F       		.byte	0x9f
 9275 02a7 00000000 		.4byte	0
 9276 02ab 00000000 		.4byte	0
 9277              	.LLST122:
 9278 02af 00000000 		.4byte	.LVL185
 9279 02b3 02000000 		.4byte	.LVL186
 9280 02b7 0100     		.2byte	0x1
 9281 02b9 52       		.byte	0x52
 9282 02ba 02000000 		.4byte	.LVL186
 9283 02be 10000000 		.4byte	.LFE187
 9284 02c2 0400     		.2byte	0x4
ARM GAS  /tmp/ccJYkMjP.s 			page 206


 9285 02c4 F3       		.byte	0xf3
 9286 02c5 01       		.uleb128 0x1
 9287 02c6 52       		.byte	0x52
 9288 02c7 9F       		.byte	0x9f
 9289 02c8 00000000 		.4byte	0
 9290 02cc 00000000 		.4byte	0
 9291              	.LLST120:
 9292 02d0 00000000 		.4byte	.LVL183
 9293 02d4 04000000 		.4byte	.LVL184
 9294 02d8 0100     		.2byte	0x1
 9295 02da 51       		.byte	0x51
 9296 02db 04000000 		.4byte	.LVL184
 9297 02df 08000000 		.4byte	.LFE186
 9298 02e3 0400     		.2byte	0x4
 9299 02e5 F3       		.byte	0xf3
 9300 02e6 01       		.uleb128 0x1
 9301 02e7 51       		.byte	0x51
 9302 02e8 9F       		.byte	0x9f
 9303 02e9 00000000 		.4byte	0
 9304 02ed 00000000 		.4byte	0
 9305              	.LLST119:
 9306 02f1 00000000 		.4byte	.LVL181
 9307 02f5 04000000 		.4byte	.LVL182
 9308 02f9 0100     		.2byte	0x1
 9309 02fb 51       		.byte	0x51
 9310 02fc 04000000 		.4byte	.LVL182
 9311 0300 08000000 		.4byte	.LFE185
 9312 0304 0400     		.2byte	0x4
 9313 0306 F3       		.byte	0xf3
 9314 0307 01       		.uleb128 0x1
 9315 0308 51       		.byte	0x51
 9316 0309 9F       		.byte	0x9f
 9317 030a 00000000 		.4byte	0
 9318 030e 00000000 		.4byte	0
 9319              	.LLST118:
 9320 0312 00000000 		.4byte	.LVL179
 9321 0316 0A000000 		.4byte	.LVL180
 9322 031a 0100     		.2byte	0x1
 9323 031c 51       		.byte	0x51
 9324 031d 0A000000 		.4byte	.LVL180
 9325 0321 0E000000 		.4byte	.LFE184
 9326 0325 0400     		.2byte	0x4
 9327 0327 F3       		.byte	0xf3
 9328 0328 01       		.uleb128 0x1
 9329 0329 51       		.byte	0x51
 9330 032a 9F       		.byte	0x9f
 9331 032b 00000000 		.4byte	0
 9332 032f 00000000 		.4byte	0
 9333              	.LLST117:
 9334 0333 00000000 		.4byte	.LVL177
 9335 0337 0A000000 		.4byte	.LVL178
 9336 033b 0100     		.2byte	0x1
 9337 033d 51       		.byte	0x51
 9338 033e 0A000000 		.4byte	.LVL178
 9339 0342 0E000000 		.4byte	.LFE183
 9340 0346 0400     		.2byte	0x4
 9341 0348 F3       		.byte	0xf3
ARM GAS  /tmp/ccJYkMjP.s 			page 207


 9342 0349 01       		.uleb128 0x1
 9343 034a 51       		.byte	0x51
 9344 034b 9F       		.byte	0x9f
 9345 034c 00000000 		.4byte	0
 9346 0350 00000000 		.4byte	0
 9347              	.LLST116:
 9348 0354 00000000 		.4byte	.LVL175
 9349 0358 0A000000 		.4byte	.LVL176
 9350 035c 0100     		.2byte	0x1
 9351 035e 51       		.byte	0x51
 9352 035f 0A000000 		.4byte	.LVL176
 9353 0363 0E000000 		.4byte	.LFE182
 9354 0367 0400     		.2byte	0x4
 9355 0369 F3       		.byte	0xf3
 9356 036a 01       		.uleb128 0x1
 9357 036b 51       		.byte	0x51
 9358 036c 9F       		.byte	0x9f
 9359 036d 00000000 		.4byte	0
 9360 0371 00000000 		.4byte	0
 9361              	.LLST115:
 9362 0375 00000000 		.4byte	.LVL171
 9363 0379 08000000 		.4byte	.LVL172
 9364 037d 0100     		.2byte	0x1
 9365 037f 51       		.byte	0x51
 9366 0380 08000000 		.4byte	.LVL172
 9367 0384 0C000000 		.4byte	.LFE179
 9368 0388 0400     		.2byte	0x4
 9369 038a F3       		.byte	0xf3
 9370 038b 01       		.uleb128 0x1
 9371 038c 51       		.byte	0x51
 9372 038d 9F       		.byte	0x9f
 9373 038e 00000000 		.4byte	0
 9374 0392 00000000 		.4byte	0
 9375              	.LLST105:
 9376 0396 00000000 		.4byte	.LVL158
 9377 039a 2D000000 		.4byte	.LVL165-1
 9378 039e 0100     		.2byte	0x1
 9379 03a0 50       		.byte	0x50
 9380 03a1 2D000000 		.4byte	.LVL165-1
 9381 03a5 4A000000 		.4byte	.LVL170
 9382 03a9 0100     		.2byte	0x1
 9383 03ab 54       		.byte	0x54
 9384 03ac 4A000000 		.4byte	.LVL170
 9385 03b0 50000000 		.4byte	.LFE178
 9386 03b4 0400     		.2byte	0x4
 9387 03b6 F3       		.byte	0xf3
 9388 03b7 01       		.uleb128 0x1
 9389 03b8 50       		.byte	0x50
 9390 03b9 9F       		.byte	0x9f
 9391 03ba 00000000 		.4byte	0
 9392 03be 00000000 		.4byte	0
 9393              	.LLST106:
 9394 03c2 00000000 		.4byte	.LVL158
 9395 03c6 2D000000 		.4byte	.LVL165-1
 9396 03ca 0100     		.2byte	0x1
 9397 03cc 51       		.byte	0x51
 9398 03cd 2D000000 		.4byte	.LVL165-1
ARM GAS  /tmp/ccJYkMjP.s 			page 208


 9399 03d1 50000000 		.4byte	.LFE178
 9400 03d5 0400     		.2byte	0x4
 9401 03d7 F3       		.byte	0xf3
 9402 03d8 01       		.uleb128 0x1
 9403 03d9 51       		.byte	0x51
 9404 03da 9F       		.byte	0x9f
 9405 03db 00000000 		.4byte	0
 9406 03df 00000000 		.4byte	0
 9407              	.LLST107:
 9408 03e3 00000000 		.4byte	.LVL158
 9409 03e7 2D000000 		.4byte	.LVL165-1
 9410 03eb 0100     		.2byte	0x1
 9411 03ed 52       		.byte	0x52
 9412 03ee 2D000000 		.4byte	.LVL165-1
 9413 03f2 50000000 		.4byte	.LFE178
 9414 03f6 0400     		.2byte	0x4
 9415 03f8 F3       		.byte	0xf3
 9416 03f9 01       		.uleb128 0x1
 9417 03fa 52       		.byte	0x52
 9418 03fb 9F       		.byte	0x9f
 9419 03fc 00000000 		.4byte	0
 9420 0400 00000000 		.4byte	0
 9421              	.LLST108:
 9422 0404 1E000000 		.4byte	.LVL159
 9423 0408 2A000000 		.4byte	.LVL164
 9424 040c 0100     		.2byte	0x1
 9425 040e 50       		.byte	0x50
 9426 040f 00000000 		.4byte	0
 9427 0413 00000000 		.4byte	0
 9428              	.LLST109:
 9429 0417 20000000 		.4byte	.LVL160
 9430 041b 24000000 		.4byte	.LVL161
 9431 041f 0100     		.2byte	0x1
 9432 0421 50       		.byte	0x50
 9433 0422 00000000 		.4byte	0
 9434 0426 00000000 		.4byte	0
 9435              	.LLST110:
 9436 042a 24000000 		.4byte	.LVL161
 9437 042e 26000000 		.4byte	.LVL162
 9438 0432 0100     		.2byte	0x1
 9439 0434 50       		.byte	0x50
 9440 0435 00000000 		.4byte	0
 9441 0439 00000000 		.4byte	0
 9442              	.LLST111:
 9443 043d 26000000 		.4byte	.LVL162
 9444 0441 28000000 		.4byte	.LVL163
 9445 0445 0100     		.2byte	0x1
 9446 0447 50       		.byte	0x50
 9447 0448 00000000 		.4byte	0
 9448 044c 00000000 		.4byte	0
 9449              	.LLST112:
 9450 0450 28000000 		.4byte	.LVL163
 9451 0454 2A000000 		.4byte	.LVL164
 9452 0458 0100     		.2byte	0x1
 9453 045a 50       		.byte	0x50
 9454 045b 00000000 		.4byte	0
 9455 045f 00000000 		.4byte	0
ARM GAS  /tmp/ccJYkMjP.s 			page 209


 9456              	.LLST113:
 9457 0463 40000000 		.4byte	.LVL166
 9458 0467 42000000 		.4byte	.LVL167
 9459 046b 0100     		.2byte	0x1
 9460 046d 54       		.byte	0x54
 9461 046e 00000000 		.4byte	0
 9462 0472 00000000 		.4byte	0
 9463              	.LLST114:
 9464 0476 42000000 		.4byte	.LVL167
 9465 047a 44000000 		.4byte	.LVL168
 9466 047e 0100     		.2byte	0x1
 9467 0480 54       		.byte	0x54
 9468 0481 00000000 		.4byte	0
 9469 0485 00000000 		.4byte	0
 9470              	.LLST104:
 9471 0489 00000000 		.4byte	.LVL156
 9472 048d 02000000 		.4byte	.LVL157
 9473 0491 0100     		.2byte	0x1
 9474 0493 50       		.byte	0x50
 9475 0494 02000000 		.4byte	.LVL157
 9476 0498 08000000 		.4byte	.LFE177
 9477 049c 0400     		.2byte	0x4
 9478 049e F3       		.byte	0xf3
 9479 049f 01       		.uleb128 0x1
 9480 04a0 50       		.byte	0x50
 9481 04a1 9F       		.byte	0x9f
 9482 04a2 00000000 		.4byte	0
 9483 04a6 00000000 		.4byte	0
 9484              	.LLST102:
 9485 04aa 00000000 		.4byte	.LVL149
 9486 04ae 08000000 		.4byte	.LVL150
 9487 04b2 0100     		.2byte	0x1
 9488 04b4 50       		.byte	0x50
 9489 04b5 08000000 		.4byte	.LVL150
 9490 04b9 10000000 		.4byte	.LVL151
 9491 04bd 0400     		.2byte	0x4
 9492 04bf F3       		.byte	0xf3
 9493 04c0 01       		.uleb128 0x1
 9494 04c1 50       		.byte	0x50
 9495 04c2 9F       		.byte	0x9f
 9496 04c3 10000000 		.4byte	.LVL151
 9497 04c7 14000000 		.4byte	.LVL152
 9498 04cb 0100     		.2byte	0x1
 9499 04cd 50       		.byte	0x50
 9500 04ce 14000000 		.4byte	.LVL152
 9501 04d2 1E000000 		.4byte	.LFE174
 9502 04d6 0400     		.2byte	0x4
 9503 04d8 F3       		.byte	0xf3
 9504 04d9 01       		.uleb128 0x1
 9505 04da 50       		.byte	0x50
 9506 04db 9F       		.byte	0x9f
 9507 04dc 00000000 		.4byte	0
 9508 04e0 00000000 		.4byte	0
 9509              	.LLST101:
 9510 04e4 00000000 		.4byte	.LVL147
 9511 04e8 02000000 		.4byte	.LVL148
 9512 04ec 0100     		.2byte	0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 210


 9513 04ee 50       		.byte	0x50
 9514 04ef 02000000 		.4byte	.LVL148
 9515 04f3 06000000 		.4byte	.LFE173
 9516 04f7 0400     		.2byte	0x4
 9517 04f9 F3       		.byte	0xf3
 9518 04fa 01       		.uleb128 0x1
 9519 04fb 50       		.byte	0x50
 9520 04fc 9F       		.byte	0x9f
 9521 04fd 00000000 		.4byte	0
 9522 0501 00000000 		.4byte	0
 9523              	.LLST100:
 9524 0505 00000000 		.4byte	.LVL145
 9525 0509 08000000 		.4byte	.LVL146
 9526 050d 0100     		.2byte	0x1
 9527 050f 51       		.byte	0x51
 9528 0510 08000000 		.4byte	.LVL146
 9529 0514 0C000000 		.4byte	.LFE172
 9530 0518 0400     		.2byte	0x4
 9531 051a F3       		.byte	0xf3
 9532 051b 01       		.uleb128 0x1
 9533 051c 51       		.byte	0x51
 9534 051d 9F       		.byte	0x9f
 9535 051e 00000000 		.4byte	0
 9536 0522 00000000 		.4byte	0
 9537              	.LLST99:
 9538 0526 00000000 		.4byte	.LVL141
 9539 052a 04000000 		.4byte	.LVL142
 9540 052e 0100     		.2byte	0x1
 9541 0530 51       		.byte	0x51
 9542 0531 04000000 		.4byte	.LVL142
 9543 0535 10000000 		.4byte	.LFE169
 9544 0539 0400     		.2byte	0x4
 9545 053b F3       		.byte	0xf3
 9546 053c 01       		.uleb128 0x1
 9547 053d 51       		.byte	0x51
 9548 053e 9F       		.byte	0x9f
 9549 053f 00000000 		.4byte	0
 9550 0543 00000000 		.4byte	0
 9551              	.LLST98:
 9552 0547 00000000 		.4byte	.LVL139
 9553 054b 0A000000 		.4byte	.LVL140
 9554 054f 0100     		.2byte	0x1
 9555 0551 51       		.byte	0x51
 9556 0552 0A000000 		.4byte	.LVL140
 9557 0556 0E000000 		.4byte	.LFE168
 9558 055a 0400     		.2byte	0x4
 9559 055c F3       		.byte	0xf3
 9560 055d 01       		.uleb128 0x1
 9561 055e 51       		.byte	0x51
 9562 055f 9F       		.byte	0x9f
 9563 0560 00000000 		.4byte	0
 9564 0564 00000000 		.4byte	0
 9565              	.LLST97:
 9566 0568 00000000 		.4byte	.LVL135
 9567 056c 0A000000 		.4byte	.LVL136
 9568 0570 0100     		.2byte	0x1
 9569 0572 51       		.byte	0x51
ARM GAS  /tmp/ccJYkMjP.s 			page 211


 9570 0573 0A000000 		.4byte	.LVL136
 9571 0577 0E000000 		.4byte	.LFE165
 9572 057b 0400     		.2byte	0x4
 9573 057d F3       		.byte	0xf3
 9574 057e 01       		.uleb128 0x1
 9575 057f 51       		.byte	0x51
 9576 0580 9F       		.byte	0x9f
 9577 0581 00000000 		.4byte	0
 9578 0585 00000000 		.4byte	0
 9579              	.LLST96:
 9580 0589 00000000 		.4byte	.LVL133
 9581 058d 0A000000 		.4byte	.LVL134
 9582 0591 0100     		.2byte	0x1
 9583 0593 51       		.byte	0x51
 9584 0594 0A000000 		.4byte	.LVL134
 9585 0598 0E000000 		.4byte	.LFE164
 9586 059c 0400     		.2byte	0x4
 9587 059e F3       		.byte	0xf3
 9588 059f 01       		.uleb128 0x1
 9589 05a0 51       		.byte	0x51
 9590 05a1 9F       		.byte	0x9f
 9591 05a2 00000000 		.4byte	0
 9592 05a6 00000000 		.4byte	0
 9593              	.LLST95:
 9594 05aa 00000000 		.4byte	.LVL127
 9595 05ae 08000000 		.4byte	.LVL128
 9596 05b2 0100     		.2byte	0x1
 9597 05b4 51       		.byte	0x51
 9598 05b5 08000000 		.4byte	.LVL128
 9599 05b9 0C000000 		.4byte	.LFE159
 9600 05bd 0400     		.2byte	0x4
 9601 05bf F3       		.byte	0xf3
 9602 05c0 01       		.uleb128 0x1
 9603 05c1 51       		.byte	0x51
 9604 05c2 9F       		.byte	0x9f
 9605 05c3 00000000 		.4byte	0
 9606 05c7 00000000 		.4byte	0
 9607              	.LLST84:
 9608 05cb 00000000 		.4byte	.LVL115
 9609 05cf 43000000 		.4byte	.LVL124-1
 9610 05d3 0100     		.2byte	0x1
 9611 05d5 50       		.byte	0x50
 9612 05d6 43000000 		.4byte	.LVL124-1
 9613 05da 50000000 		.4byte	.LFE156
 9614 05de 0400     		.2byte	0x4
 9615 05e0 F3       		.byte	0xf3
 9616 05e1 01       		.uleb128 0x1
 9617 05e2 50       		.byte	0x50
 9618 05e3 9F       		.byte	0x9f
 9619 05e4 00000000 		.4byte	0
 9620 05e8 00000000 		.4byte	0
 9621              	.LLST85:
 9622 05ec 00000000 		.4byte	.LVL115
 9623 05f0 43000000 		.4byte	.LVL124-1
 9624 05f4 0100     		.2byte	0x1
 9625 05f6 51       		.byte	0x51
 9626 05f7 43000000 		.4byte	.LVL124-1
ARM GAS  /tmp/ccJYkMjP.s 			page 212


 9627 05fb 50000000 		.4byte	.LFE156
 9628 05ff 0400     		.2byte	0x4
 9629 0601 F3       		.byte	0xf3
 9630 0602 01       		.uleb128 0x1
 9631 0603 51       		.byte	0x51
 9632 0604 9F       		.byte	0x9f
 9633 0605 00000000 		.4byte	0
 9634 0609 00000000 		.4byte	0
 9635              	.LLST86:
 9636 060d 00000000 		.4byte	.LVL115
 9637 0611 43000000 		.4byte	.LVL124-1
 9638 0615 0100     		.2byte	0x1
 9639 0617 52       		.byte	0x52
 9640 0618 43000000 		.4byte	.LVL124-1
 9641 061c 50000000 		.4byte	.LFE156
 9642 0620 0400     		.2byte	0x4
 9643 0622 F3       		.byte	0xf3
 9644 0623 01       		.uleb128 0x1
 9645 0624 52       		.byte	0x52
 9646 0625 9F       		.byte	0x9f
 9647 0626 00000000 		.4byte	0
 9648 062a 00000000 		.4byte	0
 9649              	.LLST87:
 9650 062e 00000000 		.4byte	.LVL115
 9651 0632 30000000 		.4byte	.LVL121
 9652 0636 0100     		.2byte	0x1
 9653 0638 50       		.byte	0x50
 9654 0639 00000000 		.4byte	0
 9655 063d 00000000 		.4byte	0
 9656              	.LLST88:
 9657 0641 00000000 		.4byte	.LVL115
 9658 0645 12000000 		.4byte	.LVL116
 9659 0649 0100     		.2byte	0x1
 9660 064b 50       		.byte	0x50
 9661 064c 00000000 		.4byte	0
 9662 0650 00000000 		.4byte	0
 9663              	.LLST89:
 9664 0654 22000000 		.4byte	.LVL117
 9665 0658 28000000 		.4byte	.LVL118
 9666 065c 0100     		.2byte	0x1
 9667 065e 50       		.byte	0x50
 9668 065f 00000000 		.4byte	0
 9669 0663 00000000 		.4byte	0
 9670              	.LLST90:
 9671 0667 28000000 		.4byte	.LVL118
 9672 066b 2C000000 		.4byte	.LVL119
 9673 066f 0100     		.2byte	0x1
 9674 0671 50       		.byte	0x50
 9675 0672 00000000 		.4byte	0
 9676 0676 00000000 		.4byte	0
 9677              	.LLST91:
 9678 067a 2C000000 		.4byte	.LVL119
 9679 067e 2E000000 		.4byte	.LVL120
 9680 0682 0100     		.2byte	0x1
 9681 0684 50       		.byte	0x50
 9682 0685 00000000 		.4byte	0
 9683 0689 00000000 		.4byte	0
ARM GAS  /tmp/ccJYkMjP.s 			page 213


 9684              	.LLST92:
 9685 068d 2E000000 		.4byte	.LVL120
 9686 0691 30000000 		.4byte	.LVL121
 9687 0695 0100     		.2byte	0x1
 9688 0697 50       		.byte	0x50
 9689 0698 00000000 		.4byte	0
 9690 069c 00000000 		.4byte	0
 9691              	.LLST93:
 9692 06a0 30000000 		.4byte	.LVL121
 9693 06a4 32000000 		.4byte	.LVL122
 9694 06a8 0100     		.2byte	0x1
 9695 06aa 50       		.byte	0x50
 9696 06ab 00000000 		.4byte	0
 9697 06af 00000000 		.4byte	0
 9698              	.LLST94:
 9699 06b3 32000000 		.4byte	.LVL122
 9700 06b7 34000000 		.4byte	.LVL123
 9701 06bb 0100     		.2byte	0x1
 9702 06bd 50       		.byte	0x50
 9703 06be 00000000 		.4byte	0
 9704 06c2 00000000 		.4byte	0
 9705              	.LLST74:
 9706 06c6 00000000 		.4byte	.LVL102
 9707 06ca 2D000000 		.4byte	.LVL109-1
 9708 06ce 0100     		.2byte	0x1
 9709 06d0 50       		.byte	0x50
 9710 06d1 2D000000 		.4byte	.LVL109-1
 9711 06d5 4A000000 		.4byte	.LVL114
 9712 06d9 0100     		.2byte	0x1
 9713 06db 54       		.byte	0x54
 9714 06dc 4A000000 		.4byte	.LVL114
 9715 06e0 50000000 		.4byte	.LFE155
 9716 06e4 0400     		.2byte	0x4
 9717 06e6 F3       		.byte	0xf3
 9718 06e7 01       		.uleb128 0x1
 9719 06e8 50       		.byte	0x50
 9720 06e9 9F       		.byte	0x9f
 9721 06ea 00000000 		.4byte	0
 9722 06ee 00000000 		.4byte	0
 9723              	.LLST75:
 9724 06f2 00000000 		.4byte	.LVL102
 9725 06f6 2D000000 		.4byte	.LVL109-1
 9726 06fa 0100     		.2byte	0x1
 9727 06fc 51       		.byte	0x51
 9728 06fd 2D000000 		.4byte	.LVL109-1
 9729 0701 50000000 		.4byte	.LFE155
 9730 0705 0400     		.2byte	0x4
 9731 0707 F3       		.byte	0xf3
 9732 0708 01       		.uleb128 0x1
 9733 0709 51       		.byte	0x51
 9734 070a 9F       		.byte	0x9f
 9735 070b 00000000 		.4byte	0
 9736 070f 00000000 		.4byte	0
 9737              	.LLST76:
 9738 0713 00000000 		.4byte	.LVL102
 9739 0717 2D000000 		.4byte	.LVL109-1
 9740 071b 0100     		.2byte	0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 214


 9741 071d 52       		.byte	0x52
 9742 071e 2D000000 		.4byte	.LVL109-1
 9743 0722 50000000 		.4byte	.LFE155
 9744 0726 0400     		.2byte	0x4
 9745 0728 F3       		.byte	0xf3
 9746 0729 01       		.uleb128 0x1
 9747 072a 52       		.byte	0x52
 9748 072b 9F       		.byte	0x9f
 9749 072c 00000000 		.4byte	0
 9750 0730 00000000 		.4byte	0
 9751              	.LLST77:
 9752 0734 1E000000 		.4byte	.LVL103
 9753 0738 2A000000 		.4byte	.LVL108
 9754 073c 0100     		.2byte	0x1
 9755 073e 50       		.byte	0x50
 9756 073f 00000000 		.4byte	0
 9757 0743 00000000 		.4byte	0
 9758              	.LLST78:
 9759 0747 20000000 		.4byte	.LVL104
 9760 074b 24000000 		.4byte	.LVL105
 9761 074f 0100     		.2byte	0x1
 9762 0751 50       		.byte	0x50
 9763 0752 00000000 		.4byte	0
 9764 0756 00000000 		.4byte	0
 9765              	.LLST79:
 9766 075a 24000000 		.4byte	.LVL105
 9767 075e 26000000 		.4byte	.LVL106
 9768 0762 0100     		.2byte	0x1
 9769 0764 50       		.byte	0x50
 9770 0765 00000000 		.4byte	0
 9771 0769 00000000 		.4byte	0
 9772              	.LLST80:
 9773 076d 26000000 		.4byte	.LVL106
 9774 0771 28000000 		.4byte	.LVL107
 9775 0775 0100     		.2byte	0x1
 9776 0777 50       		.byte	0x50
 9777 0778 00000000 		.4byte	0
 9778 077c 00000000 		.4byte	0
 9779              	.LLST81:
 9780 0780 28000000 		.4byte	.LVL107
 9781 0784 2A000000 		.4byte	.LVL108
 9782 0788 0100     		.2byte	0x1
 9783 078a 50       		.byte	0x50
 9784 078b 00000000 		.4byte	0
 9785 078f 00000000 		.4byte	0
 9786              	.LLST82:
 9787 0793 40000000 		.4byte	.LVL110
 9788 0797 42000000 		.4byte	.LVL111
 9789 079b 0100     		.2byte	0x1
 9790 079d 54       		.byte	0x54
 9791 079e 00000000 		.4byte	0
 9792 07a2 00000000 		.4byte	0
 9793              	.LLST83:
 9794 07a6 42000000 		.4byte	.LVL111
 9795 07aa 44000000 		.4byte	.LVL112
 9796 07ae 0100     		.2byte	0x1
 9797 07b0 54       		.byte	0x54
ARM GAS  /tmp/ccJYkMjP.s 			page 215


 9798 07b1 00000000 		.4byte	0
 9799 07b5 00000000 		.4byte	0
 9800              	.LLST65:
 9801 07b9 00000000 		.4byte	.LVL88
 9802 07bd 0E000000 		.4byte	.LVL90
 9803 07c1 0100     		.2byte	0x1
 9804 07c3 50       		.byte	0x50
 9805 07c4 0E000000 		.4byte	.LVL90
 9806 07c8 A8000000 		.4byte	.LFE154
 9807 07cc 0100     		.2byte	0x1
 9808 07ce 53       		.byte	0x53
 9809 07cf 00000000 		.4byte	0
 9810 07d3 00000000 		.4byte	0
 9811              	.LLST66:
 9812 07d7 00000000 		.4byte	.LVL88
 9813 07db 48000000 		.4byte	.LVL99
 9814 07df 0100     		.2byte	0x1
 9815 07e1 51       		.byte	0x51
 9816 07e2 48000000 		.4byte	.LVL99
 9817 07e6 6E000000 		.4byte	.LVL100
 9818 07ea 0400     		.2byte	0x4
 9819 07ec F3       		.byte	0xf3
 9820 07ed 01       		.uleb128 0x1
 9821 07ee 51       		.byte	0x51
 9822 07ef 9F       		.byte	0x9f
 9823 07f0 6E000000 		.4byte	.LVL100
 9824 07f4 74000000 		.4byte	.LVL101
 9825 07f8 0100     		.2byte	0x1
 9826 07fa 51       		.byte	0x51
 9827 07fb 74000000 		.4byte	.LVL101
 9828 07ff A8000000 		.4byte	.LFE154
 9829 0803 0400     		.2byte	0x4
 9830 0805 F3       		.byte	0xf3
 9831 0806 01       		.uleb128 0x1
 9832 0807 51       		.byte	0x51
 9833 0808 9F       		.byte	0x9f
 9834 0809 00000000 		.4byte	0
 9835 080d 00000000 		.4byte	0
 9836              	.LLST67:
 9837 0811 04000000 		.4byte	.LVL89
 9838 0815 0E000000 		.4byte	.LVL90
 9839 0819 0100     		.2byte	0x1
 9840 081b 50       		.byte	0x50
 9841 081c 0E000000 		.4byte	.LVL90
 9842 0820 26000000 		.4byte	.LVL96
 9843 0824 0100     		.2byte	0x1
 9844 0826 53       		.byte	0x53
 9845 0827 00000000 		.4byte	0
 9846 082b 00000000 		.4byte	0
 9847              	.LLST68:
 9848 082f 22000000 		.4byte	.LVL94
 9849 0833 24000000 		.4byte	.LVL95
 9850 0837 0100     		.2byte	0x1
 9851 0839 53       		.byte	0x53
 9852 083a 00000000 		.4byte	0
 9853 083e 00000000 		.4byte	0
 9854              	.LLST69:
ARM GAS  /tmp/ccJYkMjP.s 			page 216


 9855 0842 24000000 		.4byte	.LVL95
 9856 0846 26000000 		.4byte	.LVL96
 9857 084a 0100     		.2byte	0x1
 9858 084c 53       		.byte	0x53
 9859 084d 00000000 		.4byte	0
 9860 0851 00000000 		.4byte	0
 9861              	.LLST70:
 9862 0855 04000000 		.4byte	.LVL89
 9863 0859 0E000000 		.4byte	.LVL90
 9864 085d 0100     		.2byte	0x1
 9865 085f 50       		.byte	0x50
 9866 0860 0E000000 		.4byte	.LVL90
 9867 0864 18000000 		.4byte	.LVL91
 9868 0868 0100     		.2byte	0x1
 9869 086a 53       		.byte	0x53
 9870 086b 00000000 		.4byte	0
 9871 086f 00000000 		.4byte	0
 9872              	.LLST71:
 9873 0873 1E000000 		.4byte	.LVL92
 9874 0877 20000000 		.4byte	.LVL93
 9875 087b 0100     		.2byte	0x1
 9876 087d 53       		.byte	0x53
 9877 087e 00000000 		.4byte	0
 9878 0882 00000000 		.4byte	0
 9879              	.LLST72:
 9880 0886 20000000 		.4byte	.LVL93
 9881 088a 22000000 		.4byte	.LVL94
 9882 088e 0100     		.2byte	0x1
 9883 0890 53       		.byte	0x53
 9884 0891 00000000 		.4byte	0
 9885 0895 00000000 		.4byte	0
 9886              	.LLST73:
 9887 0899 30000000 		.4byte	.LVL97
 9888 089d 3A000000 		.4byte	.LVL98
 9889 08a1 0100     		.2byte	0x1
 9890 08a3 53       		.byte	0x53
 9891 08a4 00000000 		.4byte	0
 9892 08a8 00000000 		.4byte	0
 9893              	.LLST52:
 9894 08ac 00000000 		.4byte	.LVL71
 9895 08b0 08000000 		.4byte	.LVL73
 9896 08b4 0100     		.2byte	0x1
 9897 08b6 50       		.byte	0x50
 9898 08b7 08000000 		.4byte	.LVL73
 9899 08bb B4000000 		.4byte	.LFE153
 9900 08bf 0100     		.2byte	0x1
 9901 08c1 53       		.byte	0x53
 9902 08c2 00000000 		.4byte	0
 9903 08c6 00000000 		.4byte	0
 9904              	.LLST53:
 9905 08ca 00000000 		.4byte	.LVL71
 9906 08ce 50000000 		.4byte	.LVL84
 9907 08d2 0100     		.2byte	0x1
 9908 08d4 51       		.byte	0x51
 9909 08d5 50000000 		.4byte	.LVL84
 9910 08d9 76000000 		.4byte	.LVL86
 9911 08dd 0400     		.2byte	0x4
ARM GAS  /tmp/ccJYkMjP.s 			page 217


 9912 08df F3       		.byte	0xf3
 9913 08e0 01       		.uleb128 0x1
 9914 08e1 51       		.byte	0x51
 9915 08e2 9F       		.byte	0x9f
 9916 08e3 76000000 		.4byte	.LVL86
 9917 08e7 7A000000 		.4byte	.LVL87
 9918 08eb 0100     		.2byte	0x1
 9919 08ed 51       		.byte	0x51
 9920 08ee 7A000000 		.4byte	.LVL87
 9921 08f2 B4000000 		.4byte	.LFE153
 9922 08f6 0400     		.2byte	0x4
 9923 08f8 F3       		.byte	0xf3
 9924 08f9 01       		.uleb128 0x1
 9925 08fa 51       		.byte	0x51
 9926 08fb 9F       		.byte	0x9f
 9927 08fc 00000000 		.4byte	0
 9928 0900 00000000 		.4byte	0
 9929              	.LLST54:
 9930 0904 00000000 		.4byte	.LVL71
 9931 0908 40000000 		.4byte	.LVL81
 9932 090c 0100     		.2byte	0x1
 9933 090e 52       		.byte	0x52
 9934 090f 40000000 		.4byte	.LVL81
 9935 0913 B4000000 		.4byte	.LFE153
 9936 0917 0400     		.2byte	0x4
 9937 0919 F3       		.byte	0xf3
 9938 091a 01       		.uleb128 0x1
 9939 091b 52       		.byte	0x52
 9940 091c 9F       		.byte	0x9f
 9941 091d 00000000 		.4byte	0
 9942 0921 00000000 		.4byte	0
 9943              	.LLST55:
 9944 0925 04000000 		.4byte	.LVL72
 9945 0929 08000000 		.4byte	.LVL73
 9946 092d 0100     		.2byte	0x1
 9947 092f 50       		.byte	0x50
 9948 0930 08000000 		.4byte	.LVL73
 9949 0934 2E000000 		.4byte	.LVL79
 9950 0938 0100     		.2byte	0x1
 9951 093a 53       		.byte	0x53
 9952 093b 00000000 		.4byte	0
 9953 093f 00000000 		.4byte	0
 9954              	.LLST56:
 9955 0943 04000000 		.4byte	.LVL72
 9956 0947 08000000 		.4byte	.LVL73
 9957 094b 0100     		.2byte	0x1
 9958 094d 50       		.byte	0x50
 9959 094e 08000000 		.4byte	.LVL73
 9960 0952 10000000 		.4byte	.LVL74
 9961 0956 0100     		.2byte	0x1
 9962 0958 53       		.byte	0x53
 9963 0959 00000000 		.4byte	0
 9964 095d 00000000 		.4byte	0
 9965              	.LLST57:
 9966 0961 24000000 		.4byte	.LVL75
 9967 0965 28000000 		.4byte	.LVL76
 9968 0969 0100     		.2byte	0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 218


 9969 096b 53       		.byte	0x53
 9970 096c 00000000 		.4byte	0
 9971 0970 00000000 		.4byte	0
 9972              	.LLST58:
 9973 0974 28000000 		.4byte	.LVL76
 9974 0978 2A000000 		.4byte	.LVL77
 9975 097c 0100     		.2byte	0x1
 9976 097e 53       		.byte	0x53
 9977 097f 00000000 		.4byte	0
 9978 0983 00000000 		.4byte	0
 9979              	.LLST59:
 9980 0987 2A000000 		.4byte	.LVL77
 9981 098b 2C000000 		.4byte	.LVL78
 9982 098f 0100     		.2byte	0x1
 9983 0991 53       		.byte	0x53
 9984 0992 00000000 		.4byte	0
 9985 0996 00000000 		.4byte	0
 9986              	.LLST60:
 9987 099a 2C000000 		.4byte	.LVL78
 9988 099e 2E000000 		.4byte	.LVL79
 9989 09a2 0100     		.2byte	0x1
 9990 09a4 53       		.byte	0x53
 9991 09a5 00000000 		.4byte	0
 9992 09a9 00000000 		.4byte	0
 9993              	.LLST61:
 9994 09ad 38000000 		.4byte	.LVL80
 9995 09b1 40000000 		.4byte	.LVL81
 9996 09b5 0100     		.2byte	0x1
 9997 09b7 52       		.byte	0x52
 9998 09b8 40000000 		.4byte	.LVL81
 9999 09bc 52000000 		.4byte	.LVL85
 10000 09c0 0400     		.2byte	0x4
 10001 09c2 F3       		.byte	0xf3
 10002 09c3 01       		.uleb128 0x1
 10003 09c4 52       		.byte	0x52
 10004 09c5 9F       		.byte	0x9f
 10005 09c6 00000000 		.4byte	0
 10006 09ca 00000000 		.4byte	0
 10007              	.LLST62:
 10008 09ce 38000000 		.4byte	.LVL80
 10009 09d2 46000000 		.4byte	.LVL83
 10010 09d6 0100     		.2byte	0x1
 10011 09d8 55       		.byte	0x55
 10012 09d9 46000000 		.4byte	.LVL83
 10013 09dd 50000000 		.4byte	.LVL84
 10014 09e1 0200     		.2byte	0x2
 10015 09e3 71       		.byte	0x71
 10016 09e4 00       		.sleb128 0
 10017 09e5 50000000 		.4byte	.LVL84
 10018 09e9 52000000 		.4byte	.LVL85
 10019 09ed 0300     		.2byte	0x3
 10020 09ef F3       		.byte	0xf3
 10021 09f0 01       		.uleb128 0x1
 10022 09f1 51       		.byte	0x51
 10023 09f2 00000000 		.4byte	0
 10024 09f6 00000000 		.4byte	0
 10025              	.LLST63:
ARM GAS  /tmp/ccJYkMjP.s 			page 219


 10026 09fa 38000000 		.4byte	.LVL80
 10027 09fe 52000000 		.4byte	.LVL85
 10028 0a02 0100     		.2byte	0x1
 10029 0a04 53       		.byte	0x53
 10030 0a05 00000000 		.4byte	0
 10031 0a09 00000000 		.4byte	0
 10032              	.LLST64:
 10033 0a0d 44000000 		.4byte	.LVL82
 10034 0a11 52000000 		.4byte	.LVL85
 10035 0a15 0100     		.2byte	0x1
 10036 0a17 52       		.byte	0x52
 10037 0a18 00000000 		.4byte	0
 10038 0a1c 00000000 		.4byte	0
 10039              	.LLST49:
 10040 0a20 00000000 		.4byte	.LVL68
 10041 0a24 07000000 		.4byte	.LVL69-1
 10042 0a28 0100     		.2byte	0x1
 10043 0a2a 50       		.byte	0x50
 10044 0a2b 07000000 		.4byte	.LVL69-1
 10045 0a2f 1C000000 		.4byte	.LFE152
 10046 0a33 0100     		.2byte	0x1
 10047 0a35 54       		.byte	0x54
 10048 0a36 00000000 		.4byte	0
 10049 0a3a 00000000 		.4byte	0
 10050              	.LLST50:
 10051 0a3e 00000000 		.4byte	.LVL68
 10052 0a42 07000000 		.4byte	.LVL69-1
 10053 0a46 0100     		.2byte	0x1
 10054 0a48 51       		.byte	0x51
 10055 0a49 07000000 		.4byte	.LVL69-1
 10056 0a4d 1C000000 		.4byte	.LFE152
 10057 0a51 0400     		.2byte	0x4
 10058 0a53 F3       		.byte	0xf3
 10059 0a54 01       		.uleb128 0x1
 10060 0a55 51       		.byte	0x51
 10061 0a56 9F       		.byte	0x9f
 10062 0a57 00000000 		.4byte	0
 10063 0a5b 00000000 		.4byte	0
 10064              	.LLST51:
 10065 0a5f 00000000 		.4byte	.LVL68
 10066 0a63 07000000 		.4byte	.LVL69-1
 10067 0a67 0100     		.2byte	0x1
 10068 0a69 52       		.byte	0x52
 10069 0a6a 07000000 		.4byte	.LVL69-1
 10070 0a6e 1C000000 		.4byte	.LFE152
 10071 0a72 0400     		.2byte	0x4
 10072 0a74 F3       		.byte	0xf3
 10073 0a75 01       		.uleb128 0x1
 10074 0a76 52       		.byte	0x52
 10075 0a77 9F       		.byte	0x9f
 10076 0a78 00000000 		.4byte	0
 10077 0a7c 00000000 		.4byte	0
 10078              	.LLST40:
 10079 0a80 00000000 		.4byte	.LVL56
 10080 0a84 0A000000 		.4byte	.LVL58
 10081 0a88 0100     		.2byte	0x1
 10082 0a8a 50       		.byte	0x50
ARM GAS  /tmp/ccJYkMjP.s 			page 220


 10083 0a8b 0A000000 		.4byte	.LVL58
 10084 0a8f 54000000 		.4byte	.LFE151
 10085 0a93 0100     		.2byte	0x1
 10086 0a95 53       		.byte	0x53
 10087 0a96 00000000 		.4byte	0
 10088 0a9a 00000000 		.4byte	0
 10089              	.LLST41:
 10090 0a9e 00000000 		.4byte	.LVL56
 10091 0aa2 3C000000 		.4byte	.LVL66
 10092 0aa6 0100     		.2byte	0x1
 10093 0aa8 51       		.byte	0x51
 10094 0aa9 3C000000 		.4byte	.LVL66
 10095 0aad 48000000 		.4byte	.LVL67
 10096 0ab1 0400     		.2byte	0x4
 10097 0ab3 F3       		.byte	0xf3
 10098 0ab4 01       		.uleb128 0x1
 10099 0ab5 51       		.byte	0x51
 10100 0ab6 9F       		.byte	0x9f
 10101 0ab7 48000000 		.4byte	.LVL67
 10102 0abb 54000000 		.4byte	.LFE151
 10103 0abf 0100     		.2byte	0x1
 10104 0ac1 51       		.byte	0x51
 10105 0ac2 00000000 		.4byte	0
 10106 0ac6 00000000 		.4byte	0
 10107              	.LLST42:
 10108 0aca 04000000 		.4byte	.LVL57
 10109 0ace 0A000000 		.4byte	.LVL58
 10110 0ad2 0100     		.2byte	0x1
 10111 0ad4 50       		.byte	0x50
 10112 0ad5 0A000000 		.4byte	.LVL58
 10113 0ad9 26000000 		.4byte	.LVL64
 10114 0add 0100     		.2byte	0x1
 10115 0adf 53       		.byte	0x53
 10116 0ae0 00000000 		.4byte	0
 10117 0ae4 00000000 		.4byte	0
 10118              	.LLST43:
 10119 0ae8 24000000 		.4byte	.LVL63
 10120 0aec 26000000 		.4byte	.LVL64
 10121 0af0 0100     		.2byte	0x1
 10122 0af2 53       		.byte	0x53
 10123 0af3 00000000 		.4byte	0
 10124 0af7 00000000 		.4byte	0
 10125              	.LLST44:
 10126 0afb 04000000 		.4byte	.LVL57
 10127 0aff 0A000000 		.4byte	.LVL58
 10128 0b03 0100     		.2byte	0x1
 10129 0b05 50       		.byte	0x50
 10130 0b06 0A000000 		.4byte	.LVL58
 10131 0b0a 18000000 		.4byte	.LVL59
 10132 0b0e 0100     		.2byte	0x1
 10133 0b10 53       		.byte	0x53
 10134 0b11 00000000 		.4byte	0
 10135 0b15 00000000 		.4byte	0
 10136              	.LLST45:
 10137 0b19 1E000000 		.4byte	.LVL60
 10138 0b1d 20000000 		.4byte	.LVL61
 10139 0b21 0100     		.2byte	0x1
ARM GAS  /tmp/ccJYkMjP.s 			page 221


 10140 0b23 53       		.byte	0x53
 10141 0b24 00000000 		.4byte	0
 10142 0b28 00000000 		.4byte	0
 10143              	.LLST46:
 10144 0b2c 20000000 		.4byte	.LVL61
 10145 0b30 22000000 		.4byte	.LVL62
 10146 0b34 0100     		.2byte	0x1
 10147 0b36 53       		.byte	0x53
 10148 0b37 00000000 		.4byte	0
 10149 0b3b 00000000 		.4byte	0
 10150              	.LLST47:
 10151 0b3f 22000000 		.4byte	.LVL62
 10152 0b43 24000000 		.4byte	.LVL63
 10153 0b47 0100     		.2byte	0x1
 10154 0b49 53       		.byte	0x53
 10155 0b4a 00000000 		.4byte	0
 10156 0b4e 00000000 		.4byte	0
 10157              	.LLST48:
 10158 0b52 26000000 		.4byte	.LVL64
 10159 0b56 2E000000 		.4byte	.LVL65
 10160 0b5a 0100     		.2byte	0x1
 10161 0b5c 53       		.byte	0x53
 10162 0b5d 00000000 		.4byte	0
 10163 0b61 00000000 		.4byte	0
 10164              	.LLST27:
 10165 0b65 00000000 		.4byte	.LVL39
 10166 0b69 08000000 		.4byte	.LVL41
 10167 0b6d 0100     		.2byte	0x1
 10168 0b6f 50       		.byte	0x50
 10169 0b70 08000000 		.4byte	.LVL41
 10170 0b74 70000000 		.4byte	.LFE150
 10171 0b78 0100     		.2byte	0x1
 10172 0b7a 53       		.byte	0x53
 10173 0b7b 00000000 		.4byte	0
 10174 0b7f 00000000 		.4byte	0
 10175              	.LLST28:
 10176 0b83 00000000 		.4byte	.LVL39
 10177 0b87 64000000 		.4byte	.LVL55
 10178 0b8b 0100     		.2byte	0x1
 10179 0b8d 51       		.byte	0x51
 10180 0b8e 64000000 		.4byte	.LVL55
 10181 0b92 70000000 		.4byte	.LFE150
 10182 0b96 0400     		.2byte	0x4
 10183 0b98 F3       		.byte	0xf3
 10184 0b99 01       		.uleb128 0x1
 10185 0b9a 51       		.byte	0x51
 10186 0b9b 9F       		.byte	0x9f
 10187 0b9c 00000000 		.4byte	0
 10188 0ba0 00000000 		.4byte	0
 10189              	.LLST29:
 10190 0ba4 00000000 		.4byte	.LVL39
 10191 0ba8 32000000 		.4byte	.LVL49
 10192 0bac 0100     		.2byte	0x1
 10193 0bae 52       		.byte	0x52
 10194 0baf 32000000 		.4byte	.LVL49
 10195 0bb3 70000000 		.4byte	.LFE150
 10196 0bb7 0400     		.2byte	0x4
ARM GAS  /tmp/ccJYkMjP.s 			page 222


 10197 0bb9 F3       		.byte	0xf3
 10198 0bba 01       		.uleb128 0x1
 10199 0bbb 52       		.byte	0x52
 10200 0bbc 9F       		.byte	0x9f
 10201 0bbd 00000000 		.4byte	0
 10202 0bc1 00000000 		.4byte	0
 10203              	.LLST30:
 10204 0bc5 04000000 		.4byte	.LVL40
 10205 0bc9 08000000 		.4byte	.LVL41
 10206 0bcd 0100     		.2byte	0x1
 10207 0bcf 50       		.byte	0x50
 10208 0bd0 08000000 		.4byte	.LVL41
 10209 0bd4 26000000 		.4byte	.LVL47
 10210 0bd8 0100     		.2byte	0x1
 10211 0bda 53       		.byte	0x53
 10212 0bdb 00000000 		.4byte	0
 10213 0bdf 00000000 		.4byte	0
 10214              	.LLST31:
 10215 0be3 04000000 		.4byte	.LVL40
 10216 0be7 08000000 		.4byte	.LVL41
 10217 0beb 0100     		.2byte	0x1
 10218 0bed 50       		.byte	0x50
 10219 0bee 08000000 		.4byte	.LVL41
 10220 0bf2 0E000000 		.4byte	.LVL42
 10221 0bf6 0100     		.2byte	0x1
 10222 0bf8 53       		.byte	0x53
 10223 0bf9 00000000 		.4byte	0
 10224 0bfd 00000000 		.4byte	0
 10225              	.LLST32:
 10226 0c01 1E000000 		.4byte	.LVL43
 10227 0c05 20000000 		.4byte	.LVL44
 10228 0c09 0100     		.2byte	0x1
 10229 0c0b 53       		.byte	0x53
 10230 0c0c 00000000 		.4byte	0
 10231 0c10 00000000 		.4byte	0
 10232              	.LLST33:
 10233 0c14 20000000 		.4byte	.LVL44
 10234 0c18 22000000 		.4byte	.LVL45
 10235 0c1c 0100     		.2byte	0x1
 10236 0c1e 53       		.byte	0x53
 10237 0c1f 00000000 		.4byte	0
 10238 0c23 00000000 		.4byte	0
 10239              	.LLST34:
 10240 0c27 22000000 		.4byte	.LVL45
 10241 0c2b 24000000 		.4byte	.LVL46
 10242 0c2f 0100     		.2byte	0x1
 10243 0c31 53       		.byte	0x53
 10244 0c32 00000000 		.4byte	0
 10245 0c36 00000000 		.4byte	0
 10246              	.LLST35:
 10247 0c3a 24000000 		.4byte	.LVL46
 10248 0c3e 26000000 		.4byte	.LVL47
 10249 0c42 0100     		.2byte	0x1
 10250 0c44 53       		.byte	0x53
 10251 0c45 00000000 		.4byte	0
 10252 0c49 00000000 		.4byte	0
 10253              	.LLST36:
ARM GAS  /tmp/ccJYkMjP.s 			page 223


 10254 0c4d 2A000000 		.4byte	.LVL48
 10255 0c51 32000000 		.4byte	.LVL49
 10256 0c55 0100     		.2byte	0x1
 10257 0c57 52       		.byte	0x52
 10258 0c58 32000000 		.4byte	.LVL49
 10259 0c5c 3C000000 		.4byte	.LVL51
 10260 0c60 0400     		.2byte	0x4
 10261 0c62 F3       		.byte	0xf3
 10262 0c63 01       		.uleb128 0x1
 10263 0c64 52       		.byte	0x52
 10264 0c65 9F       		.byte	0x9f
 10265 0c66 42000000 		.4byte	.LVL52
 10266 0c6a 60000000 		.4byte	.LVL54
 10267 0c6e 0400     		.2byte	0x4
 10268 0c70 F3       		.byte	0xf3
 10269 0c71 01       		.uleb128 0x1
 10270 0c72 52       		.byte	0x52
 10271 0c73 9F       		.byte	0x9f
 10272 0c74 00000000 		.4byte	0
 10273 0c78 00000000 		.4byte	0
 10274              	.LLST37:
 10275 0c7c 2A000000 		.4byte	.LVL48
 10276 0c80 36000000 		.4byte	.LVL50
 10277 0c84 0100     		.2byte	0x1
 10278 0c86 54       		.byte	0x54
 10279 0c87 36000000 		.4byte	.LVL50
 10280 0c8b 3C000000 		.4byte	.LVL51
 10281 0c8f 0200     		.2byte	0x2
 10282 0c91 71       		.byte	0x71
 10283 0c92 00       		.sleb128 0
 10284 0c93 42000000 		.4byte	.LVL52
 10285 0c97 60000000 		.4byte	.LVL54
 10286 0c9b 0200     		.2byte	0x2
 10287 0c9d 71       		.byte	0x71
 10288 0c9e 00       		.sleb128 0
 10289 0c9f 00000000 		.4byte	0
 10290 0ca3 00000000 		.4byte	0
 10291              	.LLST38:
 10292 0ca7 2A000000 		.4byte	.LVL48
 10293 0cab 3C000000 		.4byte	.LVL51
 10294 0caf 0100     		.2byte	0x1
 10295 0cb1 53       		.byte	0x53
 10296 0cb2 42000000 		.4byte	.LVL52
 10297 0cb6 60000000 		.4byte	.LVL54
 10298 0cba 0100     		.2byte	0x1
 10299 0cbc 53       		.byte	0x53
 10300 0cbd 00000000 		.4byte	0
 10301 0cc1 00000000 		.4byte	0
 10302              	.LLST39:
 10303 0cc5 36000000 		.4byte	.LVL50
 10304 0cc9 3C000000 		.4byte	.LVL51
 10305 0ccd 0100     		.2byte	0x1
 10306 0ccf 54       		.byte	0x54
 10307 0cd0 42000000 		.4byte	.LVL52
 10308 0cd4 4C000000 		.4byte	.LVL53
 10309 0cd8 0100     		.2byte	0x1
 10310 0cda 54       		.byte	0x54
ARM GAS  /tmp/ccJYkMjP.s 			page 224


 10311 0cdb 4C000000 		.4byte	.LVL53
 10312 0cdf 60000000 		.4byte	.LVL54
 10313 0ce3 0200     		.2byte	0x2
 10314 0ce5 73       		.byte	0x73
 10315 0ce6 20       		.sleb128 32
 10316 0ce7 00000000 		.4byte	0
 10317 0ceb 00000000 		.4byte	0
 10318              	.LLST24:
 10319 0cef 00000000 		.4byte	.LVL36
 10320 0cf3 07000000 		.4byte	.LVL37-1
 10321 0cf7 0100     		.2byte	0x1
 10322 0cf9 50       		.byte	0x50
 10323 0cfa 07000000 		.4byte	.LVL37-1
 10324 0cfe 1C000000 		.4byte	.LFE149
 10325 0d02 0100     		.2byte	0x1
 10326 0d04 54       		.byte	0x54
 10327 0d05 00000000 		.4byte	0
 10328 0d09 00000000 		.4byte	0
 10329              	.LLST25:
 10330 0d0d 00000000 		.4byte	.LVL36
 10331 0d11 07000000 		.4byte	.LVL37-1
 10332 0d15 0100     		.2byte	0x1
 10333 0d17 51       		.byte	0x51
 10334 0d18 07000000 		.4byte	.LVL37-1
 10335 0d1c 1C000000 		.4byte	.LFE149
 10336 0d20 0400     		.2byte	0x4
 10337 0d22 F3       		.byte	0xf3
 10338 0d23 01       		.uleb128 0x1
 10339 0d24 51       		.byte	0x51
 10340 0d25 9F       		.byte	0x9f
 10341 0d26 00000000 		.4byte	0
 10342 0d2a 00000000 		.4byte	0
 10343              	.LLST26:
 10344 0d2e 00000000 		.4byte	.LVL36
 10345 0d32 07000000 		.4byte	.LVL37-1
 10346 0d36 0100     		.2byte	0x1
 10347 0d38 52       		.byte	0x52
 10348 0d39 07000000 		.4byte	.LVL37-1
 10349 0d3d 1C000000 		.4byte	.LFE149
 10350 0d41 0400     		.2byte	0x4
 10351 0d43 F3       		.byte	0xf3
 10352 0d44 01       		.uleb128 0x1
 10353 0d45 52       		.byte	0x52
 10354 0d46 9F       		.byte	0x9f
 10355 0d47 00000000 		.4byte	0
 10356 0d4b 00000000 		.4byte	0
 10357              	.LLST0:
 10358 0d4f 00000000 		.4byte	.LVL0
 10359 0d53 30000000 		.4byte	.LVL8
 10360 0d57 0100     		.2byte	0x1
 10361 0d59 50       		.byte	0x50
 10362 0d5a 30000000 		.4byte	.LVL8
 10363 0d5e 32000000 		.4byte	.LVL9
 10364 0d62 0400     		.2byte	0x4
 10365 0d64 F3       		.byte	0xf3
 10366 0d65 01       		.uleb128 0x1
 10367 0d66 50       		.byte	0x50
ARM GAS  /tmp/ccJYkMjP.s 			page 225


 10368 0d67 9F       		.byte	0x9f
 10369 0d68 32000000 		.4byte	.LVL9
 10370 0d6c 52000000 		.4byte	.LVL15
 10371 0d70 0100     		.2byte	0x1
 10372 0d72 50       		.byte	0x50
 10373 0d73 52000000 		.4byte	.LVL15
 10374 0d77 54000000 		.4byte	.LVL16
 10375 0d7b 0400     		.2byte	0x4
 10376 0d7d F3       		.byte	0xf3
 10377 0d7e 01       		.uleb128 0x1
 10378 0d7f 50       		.byte	0x50
 10379 0d80 9F       		.byte	0x9f
 10380 0d81 54000000 		.4byte	.LVL16
 10381 0d85 5E000000 		.4byte	.LFE142
 10382 0d89 0100     		.2byte	0x1
 10383 0d8b 50       		.byte	0x50
 10384 0d8c 00000000 		.4byte	0
 10385 0d90 00000000 		.4byte	0
 10386              	.LLST1:
 10387 0d94 00000000 		.4byte	.LVL0
 10388 0d98 0A000000 		.4byte	.LVL2
 10389 0d9c 0100     		.2byte	0x1
 10390 0d9e 51       		.byte	0x51
 10391 0d9f 0A000000 		.4byte	.LVL2
 10392 0da3 32000000 		.4byte	.LVL9
 10393 0da7 0400     		.2byte	0x4
 10394 0da9 F3       		.byte	0xf3
 10395 0daa 01       		.uleb128 0x1
 10396 0dab 51       		.byte	0x51
 10397 0dac 9F       		.byte	0x9f
 10398 0dad 32000000 		.4byte	.LVL9
 10399 0db1 34000000 		.4byte	.LVL10
 10400 0db5 0100     		.2byte	0x1
 10401 0db7 51       		.byte	0x51
 10402 0db8 34000000 		.4byte	.LVL10
 10403 0dbc 5E000000 		.4byte	.LFE142
 10404 0dc0 0400     		.2byte	0x4
 10405 0dc2 F3       		.byte	0xf3
 10406 0dc3 01       		.uleb128 0x1
 10407 0dc4 51       		.byte	0x51
 10408 0dc5 9F       		.byte	0x9f
 10409 0dc6 00000000 		.4byte	0
 10410 0dca 00000000 		.4byte	0
 10411              	.LLST2:
 10412 0dce 00000000 		.4byte	.LVL0
 10413 0dd2 12000000 		.4byte	.LVL3
 10414 0dd6 0100     		.2byte	0x1
 10415 0dd8 52       		.byte	0x52
 10416 0dd9 12000000 		.4byte	.LVL3
 10417 0ddd 32000000 		.4byte	.LVL9
 10418 0de1 0400     		.2byte	0x4
 10419 0de3 F3       		.byte	0xf3
 10420 0de4 01       		.uleb128 0x1
 10421 0de5 52       		.byte	0x52
 10422 0de6 9F       		.byte	0x9f
 10423 0de7 32000000 		.4byte	.LVL9
 10424 0deb 3E000000 		.4byte	.LVL11
ARM GAS  /tmp/ccJYkMjP.s 			page 226


 10425 0def 0100     		.2byte	0x1
 10426 0df1 52       		.byte	0x52
 10427 0df2 3E000000 		.4byte	.LVL11
 10428 0df6 5E000000 		.4byte	.LFE142
 10429 0dfa 0400     		.2byte	0x4
 10430 0dfc F3       		.byte	0xf3
 10431 0dfd 01       		.uleb128 0x1
 10432 0dfe 52       		.byte	0x52
 10433 0dff 9F       		.byte	0x9f
 10434 0e00 00000000 		.4byte	0
 10435 0e04 00000000 		.4byte	0
 10436              	.LLST3:
 10437 0e08 08000000 		.4byte	.LVL1
 10438 0e0c 1E000000 		.4byte	.LVL6
 10439 0e10 0200     		.2byte	0x2
 10440 0e12 40       		.byte	0x40
 10441 0e13 9F       		.byte	0x9f
 10442 0e14 32000000 		.4byte	.LVL9
 10443 0e18 4A000000 		.4byte	.LVL14
 10444 0e1c 0200     		.2byte	0x2
 10445 0e1e 38       		.byte	0x38
 10446 0e1f 9F       		.byte	0x9f
 10447 0e20 54000000 		.4byte	.LVL16
 10448 0e24 5E000000 		.4byte	.LFE142
 10449 0e28 0200     		.2byte	0x2
 10450 0e2a 38       		.byte	0x38
 10451 0e2b 9F       		.byte	0x9f
 10452 0e2c 00000000 		.4byte	0
 10453 0e30 00000000 		.4byte	0
 10454              	.LLST4:
 10455 0e34 16000000 		.4byte	.LVL4
 10456 0e38 20000000 		.4byte	.LVL7
 10457 0e3c 0100     		.2byte	0x1
 10458 0e3e 52       		.byte	0x52
 10459 0e3f 42000000 		.4byte	.LVL12
 10460 0e43 5E000000 		.4byte	.LFE142
 10461 0e47 0100     		.2byte	0x1
 10462 0e49 52       		.byte	0x52
 10463 0e4a 00000000 		.4byte	0
 10464 0e4e 00000000 		.4byte	0
 10465              	.LLST5:
 10466 0e52 18000000 		.4byte	.LVL5
 10467 0e56 32000000 		.4byte	.LVL9
 10468 0e5a 0100     		.2byte	0x1
 10469 0e5c 53       		.byte	0x53
 10470 0e5d 44000000 		.4byte	.LVL13
 10471 0e61 5E000000 		.4byte	.LFE142
 10472 0e65 0100     		.2byte	0x1
 10473 0e67 53       		.byte	0x53
 10474 0e68 00000000 		.4byte	0
 10475 0e6c 00000000 		.4byte	0
 10476              	.LLST6:
 10477 0e70 18000000 		.4byte	.LVL5
 10478 0e74 1E000000 		.4byte	.LVL6
 10479 0e78 0500     		.2byte	0x5
 10480 0e7a 72       		.byte	0x72
 10481 0e7b 00       		.sleb128 0
ARM GAS  /tmp/ccJYkMjP.s 			page 227


 10482 0e7c 37       		.byte	0x37
 10483 0e7d 1A       		.byte	0x1a
 10484 0e7e 9F       		.byte	0x9f
 10485 0e7f 44000000 		.4byte	.LVL13
 10486 0e83 4A000000 		.4byte	.LVL14
 10487 0e87 0500     		.2byte	0x5
 10488 0e89 72       		.byte	0x72
 10489 0e8a 00       		.sleb128 0
 10490 0e8b 37       		.byte	0x37
 10491 0e8c 1A       		.byte	0x1a
 10492 0e8d 9F       		.byte	0x9f
 10493 0e8e 54000000 		.4byte	.LVL16
 10494 0e92 5E000000 		.4byte	.LFE142
 10495 0e96 0500     		.2byte	0x5
 10496 0e98 72       		.byte	0x72
 10497 0e99 00       		.sleb128 0
 10498 0e9a 37       		.byte	0x37
 10499 0e9b 1A       		.byte	0x1a
 10500 0e9c 9F       		.byte	0x9f
 10501 0e9d 00000000 		.4byte	0
 10502 0ea1 00000000 		.4byte	0
 10503              	.LLST7:
 10504 0ea5 00000000 		.4byte	.LVL17
 10505 0ea9 16000000 		.4byte	.LVL18
 10506 0ead 0100     		.2byte	0x1
 10507 0eaf 50       		.byte	0x50
 10508 0eb0 00000000 		.4byte	0
 10509 0eb4 00000000 		.4byte	0
 10510              	.LLST8:
 10511 0eb8 1C000000 		.4byte	.LVL19
 10512 0ebc 1E000000 		.4byte	.LVL20
 10513 0ec0 0100     		.2byte	0x1
 10514 0ec2 50       		.byte	0x50
 10515 0ec3 00000000 		.4byte	0
 10516 0ec7 00000000 		.4byte	0
 10517              	.LLST9:
 10518 0ecb 1E000000 		.4byte	.LVL20
 10519 0ecf 20000000 		.4byte	.LVL21
 10520 0ed3 0100     		.2byte	0x1
 10521 0ed5 50       		.byte	0x50
 10522 0ed6 00000000 		.4byte	0
 10523 0eda 00000000 		.4byte	0
 10524              	.LLST10:
 10525 0ede 20000000 		.4byte	.LVL21
 10526 0ee2 22000000 		.4byte	.LVL22
 10527 0ee6 0100     		.2byte	0x1
 10528 0ee8 50       		.byte	0x50
 10529 0ee9 00000000 		.4byte	0
 10530 0eed 00000000 		.4byte	0
 10531              	.LLST11:
 10532 0ef1 22000000 		.4byte	.LVL22
 10533 0ef5 24000000 		.4byte	.LVL23
 10534 0ef9 0100     		.2byte	0x1
 10535 0efb 50       		.byte	0x50
 10536 0efc 00000000 		.4byte	0
 10537 0f00 00000000 		.4byte	0
 10538              	.LLST12:
ARM GAS  /tmp/ccJYkMjP.s 			page 228


 10539 0f04 00000000 		.4byte	.LVL24
 10540 0f08 37000000 		.4byte	.LVL32-1
 10541 0f0c 0100     		.2byte	0x1
 10542 0f0e 50       		.byte	0x50
 10543 0f0f 37000000 		.4byte	.LVL32-1
 10544 0f13 52000000 		.4byte	.LVL35
 10545 0f17 0100     		.2byte	0x1
 10546 0f19 54       		.byte	0x54
 10547 0f1a 52000000 		.4byte	.LVL35
 10548 0f1e 60000000 		.4byte	.LFE148
 10549 0f22 0400     		.2byte	0x4
 10550 0f24 F3       		.byte	0xf3
 10551 0f25 01       		.uleb128 0x1
 10552 0f26 50       		.byte	0x50
 10553 0f27 9F       		.byte	0x9f
 10554 0f28 00000000 		.4byte	0
 10555 0f2c 00000000 		.4byte	0
 10556              	.LLST13:
 10557 0f30 00000000 		.4byte	.LVL24
 10558 0f34 32000000 		.4byte	.LVL31
 10559 0f38 0100     		.2byte	0x1
 10560 0f3a 51       		.byte	0x51
 10561 0f3b 32000000 		.4byte	.LVL31
 10562 0f3f 52000000 		.4byte	.LVL35
 10563 0f43 0100     		.2byte	0x1
 10564 0f45 55       		.byte	0x55
 10565 0f46 52000000 		.4byte	.LVL35
 10566 0f4a 60000000 		.4byte	.LFE148
 10567 0f4e 0400     		.2byte	0x4
 10568 0f50 F3       		.byte	0xf3
 10569 0f51 01       		.uleb128 0x1
 10570 0f52 51       		.byte	0x51
 10571 0f53 9F       		.byte	0x9f
 10572 0f54 00000000 		.4byte	0
 10573 0f58 00000000 		.4byte	0
 10574              	.LLST14:
 10575 0f5c 00000000 		.4byte	.LVL24
 10576 0f60 37000000 		.4byte	.LVL32-1
 10577 0f64 0100     		.2byte	0x1
 10578 0f66 52       		.byte	0x52
 10579 0f67 37000000 		.4byte	.LVL32-1
 10580 0f6b 60000000 		.4byte	.LFE148
 10581 0f6f 0400     		.2byte	0x4
 10582 0f71 F3       		.byte	0xf3
 10583 0f72 01       		.uleb128 0x1
 10584 0f73 52       		.byte	0x52
 10585 0f74 9F       		.byte	0x9f
 10586 0f75 00000000 		.4byte	0
 10587 0f79 00000000 		.4byte	0
 10588              	.LLST15:
 10589 0f7d 00000000 		.4byte	.LVL24
 10590 0f81 2A000000 		.4byte	.LVL30
 10591 0f85 0100     		.2byte	0x1
 10592 0f87 50       		.byte	0x50
 10593 0f88 00000000 		.4byte	0
 10594 0f8c 00000000 		.4byte	0
 10595              	.LLST16:
ARM GAS  /tmp/ccJYkMjP.s 			page 229


 10596 0f90 00000000 		.4byte	.LVL24
 10597 0f94 14000000 		.4byte	.LVL25
 10598 0f98 0100     		.2byte	0x1
 10599 0f9a 50       		.byte	0x50
 10600 0f9b 00000000 		.4byte	0
 10601 0f9f 00000000 		.4byte	0
 10602              	.LLST17:
 10603 0fa3 24000000 		.4byte	.LVL28
 10604 0fa7 26000000 		.4byte	.LVL29
 10605 0fab 0100     		.2byte	0x1
 10606 0fad 50       		.byte	0x50
 10607 0fae 00000000 		.4byte	0
 10608 0fb2 00000000 		.4byte	0
 10609              	.LLST18:
 10610 0fb6 1E000000 		.4byte	.LVL26
 10611 0fba 22000000 		.4byte	.LVL27
 10612 0fbe 0100     		.2byte	0x1
 10613 0fc0 50       		.byte	0x50
 10614 0fc1 00000000 		.4byte	0
 10615 0fc5 00000000 		.4byte	0
 10616              	.LLST19:
 10617 0fc9 22000000 		.4byte	.LVL27
 10618 0fcd 24000000 		.4byte	.LVL28
 10619 0fd1 0100     		.2byte	0x1
 10620 0fd3 50       		.byte	0x50
 10621 0fd4 00000000 		.4byte	0
 10622 0fd8 00000000 		.4byte	0
 10623              	.LLST20:
 10624 0fdc 26000000 		.4byte	.LVL29
 10625 0fe0 2A000000 		.4byte	.LVL30
 10626 0fe4 0100     		.2byte	0x1
 10627 0fe6 50       		.byte	0x50
 10628 0fe7 00000000 		.4byte	0
 10629 0feb 00000000 		.4byte	0
 10630              	.LLST21:
 10631 0fef 3A000000 		.4byte	.LVL33
 10632 0ff3 50000000 		.4byte	.LVL34
 10633 0ff7 0400     		.2byte	0x4
 10634 0ff9 F3       		.byte	0xf3
 10635 0ffa 01       		.uleb128 0x1
 10636 0ffb 52       		.byte	0x52
 10637 0ffc 9F       		.byte	0x9f
 10638 0ffd 00000000 		.4byte	0
 10639 1001 00000000 		.4byte	0
 10640              	.LLST22:
 10641 1005 3A000000 		.4byte	.LVL33
 10642 1009 50000000 		.4byte	.LVL34
 10643 100d 0100     		.2byte	0x1
 10644 100f 55       		.byte	0x55
 10645 1010 00000000 		.4byte	0
 10646 1014 00000000 		.4byte	0
 10647              	.LLST23:
 10648 1018 3A000000 		.4byte	.LVL33
 10649 101c 50000000 		.4byte	.LVL34
 10650 1020 0100     		.2byte	0x1
 10651 1022 54       		.byte	0x54
 10652 1023 00000000 		.4byte	0
ARM GAS  /tmp/ccJYkMjP.s 			page 230


 10653 1027 00000000 		.4byte	0
 10654              	.LLST103:
 10655 102b 00000000 		.4byte	.LVL154
 10656 102f 02000000 		.4byte	.LVL155
 10657 1033 0100     		.2byte	0x1
 10658 1035 50       		.byte	0x50
 10659 1036 02000000 		.4byte	.LVL155
 10660 103a 08000000 		.4byte	.LFE176
 10661 103e 0400     		.2byte	0x4
 10662 1040 F3       		.byte	0xf3
 10663 1041 01       		.uleb128 0x1
 10664 1042 50       		.byte	0x50
 10665 1043 9F       		.byte	0x9f
 10666 1044 00000000 		.4byte	0
 10667 1048 00000000 		.4byte	0
 10668              	.LLST138:
 10669 104c 00000000 		.4byte	.LVL235
 10670 1050 0E000000 		.4byte	.LVL237
 10671 1054 0100     		.2byte	0x1
 10672 1056 50       		.byte	0x50
 10673 1057 0E000000 		.4byte	.LVL237
 10674 105b 12000000 		.4byte	.LVL238
 10675 105f 0100     		.2byte	0x1
 10676 1061 53       		.byte	0x53
 10677 1062 12000000 		.4byte	.LVL238
 10678 1066 14000000 		.4byte	.LVL239
 10679 106a 0100     		.2byte	0x1
 10680 106c 50       		.byte	0x50
 10681 106d 14000000 		.4byte	.LVL239
 10682 1071 16000000 		.4byte	.LFE220
 10683 1075 0100     		.2byte	0x1
 10684 1077 53       		.byte	0x53
 10685 1078 00000000 		.4byte	0
 10686 107c 00000000 		.4byte	0
 10687              	.LLST139:
 10688 1080 00000000 		.4byte	.LVL235
 10689 1084 0C000000 		.4byte	.LVL236
 10690 1088 0100     		.2byte	0x1
 10691 108a 51       		.byte	0x51
 10692 108b 0C000000 		.4byte	.LVL236
 10693 108f 12000000 		.4byte	.LVL238
 10694 1093 0400     		.2byte	0x4
 10695 1095 F3       		.byte	0xf3
 10696 1096 01       		.uleb128 0x1
 10697 1097 51       		.byte	0x51
 10698 1098 9F       		.byte	0x9f
 10699 1099 12000000 		.4byte	.LVL238
 10700 109d 16000000 		.4byte	.LFE220
 10701 10a1 0100     		.2byte	0x1
 10702 10a3 51       		.byte	0x51
 10703 10a4 00000000 		.4byte	0
 10704 10a8 00000000 		.4byte	0
 10705              	.LLST140:
 10706 10ac 00000000 		.4byte	.LVL240
 10707 10b0 0E000000 		.4byte	.LVL242
 10708 10b4 0100     		.2byte	0x1
 10709 10b6 50       		.byte	0x50
ARM GAS  /tmp/ccJYkMjP.s 			page 231


 10710 10b7 0E000000 		.4byte	.LVL242
 10711 10bb 12000000 		.4byte	.LFE221
 10712 10bf 0100     		.2byte	0x1
 10713 10c1 52       		.byte	0x52
 10714 10c2 00000000 		.4byte	0
 10715 10c6 00000000 		.4byte	0
 10716              	.LLST141:
 10717 10ca 00000000 		.4byte	.LVL240
 10718 10ce 0C000000 		.4byte	.LVL241
 10719 10d2 0100     		.2byte	0x1
 10720 10d4 51       		.byte	0x51
 10721 10d5 0C000000 		.4byte	.LVL241
 10722 10d9 12000000 		.4byte	.LFE221
 10723 10dd 0400     		.2byte	0x4
 10724 10df F3       		.byte	0xf3
 10725 10e0 01       		.uleb128 0x1
 10726 10e1 51       		.byte	0x51
 10727 10e2 9F       		.byte	0x9f
 10728 10e3 00000000 		.4byte	0
 10729 10e7 00000000 		.4byte	0
 10730              		.section	.debug_aranges,"",%progbits
 10731 0000 8C020000 		.4byte	0x28c
 10732 0004 0200     		.2byte	0x2
 10733 0006 00000000 		.4byte	.Ldebug_info0
 10734 000a 04       		.byte	0x4
 10735 000b 00       		.byte	0
 10736 000c 0000     		.2byte	0
 10737 000e 0000     		.2byte	0
 10738 0010 00000000 		.4byte	.LFB142
 10739 0014 5E000000 		.4byte	.LFE142-.LFB142
 10740 0018 00000000 		.4byte	.LFB147
 10741 001c 2C000000 		.4byte	.LFE147-.LFB147
 10742 0020 00000000 		.4byte	.LFB148
 10743 0024 60000000 		.4byte	.LFE148-.LFB148
 10744 0028 00000000 		.4byte	.LFB149
 10745 002c 1C000000 		.4byte	.LFE149-.LFB149
 10746 0030 00000000 		.4byte	.LFB150
 10747 0034 70000000 		.4byte	.LFE150-.LFB150
 10748 0038 00000000 		.4byte	.LFB151
 10749 003c 54000000 		.4byte	.LFE151-.LFB151
 10750 0040 00000000 		.4byte	.LFB152
 10751 0044 1C000000 		.4byte	.LFE152-.LFB152
 10752 0048 00000000 		.4byte	.LFB153
 10753 004c B4000000 		.4byte	.LFE153-.LFB153
 10754 0050 00000000 		.4byte	.LFB154
 10755 0054 A8000000 		.4byte	.LFE154-.LFB154
 10756 0058 00000000 		.4byte	.LFB155
 10757 005c 50000000 		.4byte	.LFE155-.LFB155
 10758 0060 00000000 		.4byte	.LFB156
 10759 0064 50000000 		.4byte	.LFE156-.LFB156
 10760 0068 00000000 		.4byte	.LFB157
 10761 006c 08000000 		.4byte	.LFE157-.LFB157
 10762 0070 00000000 		.4byte	.LFB158
 10763 0074 08000000 		.4byte	.LFE158-.LFB158
 10764 0078 00000000 		.4byte	.LFB159
 10765 007c 0C000000 		.4byte	.LFE159-.LFB159
 10766 0080 00000000 		.4byte	.LFB160
ARM GAS  /tmp/ccJYkMjP.s 			page 232


 10767 0084 0A000000 		.4byte	.LFE160-.LFB160
 10768 0088 00000000 		.4byte	.LFB161
 10769 008c 0A000000 		.4byte	.LFE161-.LFB161
 10770 0090 00000000 		.4byte	.LFB162
 10771 0094 0A000000 		.4byte	.LFE162-.LFB162
 10772 0098 00000000 		.4byte	.LFB163
 10773 009c 0A000000 		.4byte	.LFE163-.LFB163
 10774 00a0 00000000 		.4byte	.LFB164
 10775 00a4 0E000000 		.4byte	.LFE164-.LFB164
 10776 00a8 00000000 		.4byte	.LFB165
 10777 00ac 0E000000 		.4byte	.LFE165-.LFB165
 10778 00b0 00000000 		.4byte	.LFB166
 10779 00b4 0A000000 		.4byte	.LFE166-.LFB166
 10780 00b8 00000000 		.4byte	.LFB167
 10781 00bc 0A000000 		.4byte	.LFE167-.LFB167
 10782 00c0 00000000 		.4byte	.LFB168
 10783 00c4 0E000000 		.4byte	.LFE168-.LFB168
 10784 00c8 00000000 		.4byte	.LFB169
 10785 00cc 10000000 		.4byte	.LFE169-.LFB169
 10786 00d0 00000000 		.4byte	.LFB170
 10787 00d4 0A000000 		.4byte	.LFE170-.LFB170
 10788 00d8 00000000 		.4byte	.LFB171
 10789 00dc 0A000000 		.4byte	.LFE171-.LFB171
 10790 00e0 00000000 		.4byte	.LFB172
 10791 00e4 0C000000 		.4byte	.LFE172-.LFB172
 10792 00e8 00000000 		.4byte	.LFB173
 10793 00ec 06000000 		.4byte	.LFE173-.LFB173
 10794 00f0 00000000 		.4byte	.LFB174
 10795 00f4 1E000000 		.4byte	.LFE174-.LFB174
 10796 00f8 00000000 		.4byte	.LFB176
 10797 00fc 08000000 		.4byte	.LFE176-.LFB176
 10798 0100 00000000 		.4byte	.LFB177
 10799 0104 08000000 		.4byte	.LFE177-.LFB177
 10800 0108 00000000 		.4byte	.LFB178
 10801 010c 50000000 		.4byte	.LFE178-.LFB178
 10802 0110 00000000 		.4byte	.LFB179
 10803 0114 0C000000 		.4byte	.LFE179-.LFB179
 10804 0118 00000000 		.4byte	.LFB180
 10805 011c 0A000000 		.4byte	.LFE180-.LFB180
 10806 0120 00000000 		.4byte	.LFB181
 10807 0124 0A000000 		.4byte	.LFE181-.LFB181
 10808 0128 00000000 		.4byte	.LFB182
 10809 012c 0E000000 		.4byte	.LFE182-.LFB182
 10810 0130 00000000 		.4byte	.LFB183
 10811 0134 0E000000 		.4byte	.LFE183-.LFB183
 10812 0138 00000000 		.4byte	.LFB184
 10813 013c 0E000000 		.4byte	.LFE184-.LFB184
 10814 0140 00000000 		.4byte	.LFB185
 10815 0144 08000000 		.4byte	.LFE185-.LFB185
 10816 0148 00000000 		.4byte	.LFB186
 10817 014c 08000000 		.4byte	.LFE186-.LFB186
 10818 0150 00000000 		.4byte	.LFB187
 10819 0154 10000000 		.4byte	.LFE187-.LFB187
 10820 0158 00000000 		.4byte	.LFB188
 10821 015c 0A000000 		.4byte	.LFE188-.LFB188
 10822 0160 00000000 		.4byte	.LFB189
 10823 0164 0A000000 		.4byte	.LFE189-.LFB189
ARM GAS  /tmp/ccJYkMjP.s 			page 233


 10824 0168 00000000 		.4byte	.LFB190
 10825 016c 08000000 		.4byte	.LFE190-.LFB190
 10826 0170 00000000 		.4byte	.LFB191
 10827 0174 04000000 		.4byte	.LFE191-.LFB191
 10828 0178 00000000 		.4byte	.LFB192
 10829 017c 10000000 		.4byte	.LFE192-.LFB192
 10830 0180 00000000 		.4byte	.LFB193
 10831 0184 08000000 		.4byte	.LFE193-.LFB193
 10832 0188 00000000 		.4byte	.LFB194
 10833 018c 08000000 		.4byte	.LFE194-.LFB194
 10834 0190 00000000 		.4byte	.LFB195
 10835 0194 06000000 		.4byte	.LFE195-.LFB195
 10836 0198 00000000 		.4byte	.LFB196
 10837 019c 06000000 		.4byte	.LFE196-.LFB196
 10838 01a0 00000000 		.4byte	.LFB197
 10839 01a4 06000000 		.4byte	.LFE197-.LFB197
 10840 01a8 00000000 		.4byte	.LFB198
 10841 01ac 04000000 		.4byte	.LFE198-.LFB198
 10842 01b0 00000000 		.4byte	.LFB199
 10843 01b4 06000000 		.4byte	.LFE199-.LFB199
 10844 01b8 00000000 		.4byte	.LFB200
 10845 01bc 06000000 		.4byte	.LFE200-.LFB200
 10846 01c0 00000000 		.4byte	.LFB201
 10847 01c4 06000000 		.4byte	.LFE201-.LFB201
 10848 01c8 00000000 		.4byte	.LFB202
 10849 01cc 04000000 		.4byte	.LFE202-.LFB202
 10850 01d0 00000000 		.4byte	.LFB203
 10851 01d4 04000000 		.4byte	.LFE203-.LFB203
 10852 01d8 00000000 		.4byte	.LFB204
 10853 01dc 04000000 		.4byte	.LFE204-.LFB204
 10854 01e0 00000000 		.4byte	.LFB205
 10855 01e4 04000000 		.4byte	.LFE205-.LFB205
 10856 01e8 00000000 		.4byte	.LFB206
 10857 01ec 04000000 		.4byte	.LFE206-.LFB206
 10858 01f0 00000000 		.4byte	.LFB207
 10859 01f4 08000000 		.4byte	.LFE207-.LFB207
 10860 01f8 00000000 		.4byte	.LFB208
 10861 01fc 08000000 		.4byte	.LFE208-.LFB208
 10862 0200 00000000 		.4byte	.LFB209
 10863 0204 08000000 		.4byte	.LFE209-.LFB209
 10864 0208 00000000 		.4byte	.LFB210
 10865 020c 08000000 		.4byte	.LFE210-.LFB210
 10866 0210 00000000 		.4byte	.LFB211
 10867 0214 28000000 		.4byte	.LFE211-.LFB211
 10868 0218 00000000 		.4byte	.LFB212
 10869 021c 08000000 		.4byte	.LFE212-.LFB212
 10870 0220 00000000 		.4byte	.LFB215
 10871 0224 08000000 		.4byte	.LFE215-.LFB215
 10872 0228 00000000 		.4byte	.LFB216
 10873 022c 08000000 		.4byte	.LFE216-.LFB216
 10874 0230 00000000 		.4byte	.LFB217
 10875 0234 08000000 		.4byte	.LFE217-.LFB217
 10876 0238 00000000 		.4byte	.LFB218
 10877 023c 08000000 		.4byte	.LFE218-.LFB218
 10878 0240 00000000 		.4byte	.LFB219
 10879 0244 08000000 		.4byte	.LFE219-.LFB219
 10880 0248 00000000 		.4byte	.LFB220
ARM GAS  /tmp/ccJYkMjP.s 			page 234


 10881 024c 16000000 		.4byte	.LFE220-.LFB220
 10882 0250 00000000 		.4byte	.LFB221
 10883 0254 12000000 		.4byte	.LFE221-.LFB221
 10884 0258 00000000 		.4byte	.LFB222
 10885 025c 16000000 		.4byte	.LFE222-.LFB222
 10886 0260 00000000 		.4byte	.LFB223
 10887 0264 16000000 		.4byte	.LFE223-.LFB223
 10888 0268 00000000 		.4byte	.LFB224
 10889 026c 12000000 		.4byte	.LFE224-.LFB224
 10890 0270 00000000 		.4byte	.LFB225
 10891 0274 0C000000 		.4byte	.LFE225-.LFB225
 10892 0278 00000000 		.4byte	.LFB226
 10893 027c 0C000000 		.4byte	.LFE226-.LFB226
 10894 0280 00000000 		.4byte	.LFB227
 10895 0284 10000000 		.4byte	.LFE227-.LFB227
 10896 0288 00000000 		.4byte	0
 10897 028c 00000000 		.4byte	0
 10898              		.section	.debug_ranges,"",%progbits
 10899              	.Ldebug_ranges0:
 10900 0000 04000000 		.4byte	.LBB144
 10901 0004 06000000 		.4byte	.LBE144
 10902 0008 12000000 		.4byte	.LBB159
 10903 000c 16000000 		.4byte	.LBE159
 10904 0010 00000000 		.4byte	0
 10905 0014 00000000 		.4byte	0
 10906 0018 06000000 		.4byte	.LBB147
 10907 001c 08000000 		.4byte	.LBE147
 10908 0020 1C000000 		.4byte	.LBB160
 10909 0024 1E000000 		.4byte	.LBE160
 10910 0028 00000000 		.4byte	0
 10911 002c 00000000 		.4byte	0
 10912 0030 08000000 		.4byte	.LBB150
 10913 0034 0A000000 		.4byte	.LBE150
 10914 0038 1E000000 		.4byte	.LBB161
 10915 003c 20000000 		.4byte	.LBE161
 10916 0040 00000000 		.4byte	0
 10917 0044 00000000 		.4byte	0
 10918 0048 0A000000 		.4byte	.LBB153
 10919 004c 0E000000 		.4byte	.LBE153
 10920 0050 20000000 		.4byte	.LBB162
 10921 0054 22000000 		.4byte	.LBE162
 10922 0058 00000000 		.4byte	0
 10923 005c 00000000 		.4byte	0
 10924 0060 0E000000 		.4byte	.LBB156
 10925 0064 12000000 		.4byte	.LBE156
 10926 0068 22000000 		.4byte	.LBB163
 10927 006c 24000000 		.4byte	.LBE163
 10928 0070 00000000 		.4byte	0
 10929 0074 00000000 		.4byte	0
 10930 0078 02000000 		.4byte	.LBB190
 10931 007c 26000000 		.4byte	.LBE190
 10932 0080 28000000 		.4byte	.LBB213
 10933 0084 2A000000 		.4byte	.LBE213
 10934 0088 00000000 		.4byte	0
 10935 008c 00000000 		.4byte	0
 10936 0090 04000000 		.4byte	.LBB192
 10937 0094 06000000 		.4byte	.LBE192
ARM GAS  /tmp/ccJYkMjP.s 			page 235


 10938 0098 10000000 		.4byte	.LBB204
 10939 009c 14000000 		.4byte	.LBE204
 10940 00a0 00000000 		.4byte	0
 10941 00a4 00000000 		.4byte	0
 10942 00a8 06000000 		.4byte	.LBB195
 10943 00ac 0A000000 		.4byte	.LBE195
 10944 00b0 24000000 		.4byte	.LBB210
 10945 00b4 26000000 		.4byte	.LBE210
 10946 00b8 00000000 		.4byte	0
 10947 00bc 00000000 		.4byte	0
 10948 00c0 0A000000 		.4byte	.LBB198
 10949 00c4 0E000000 		.4byte	.LBE198
 10950 00c8 1E000000 		.4byte	.LBB208
 10951 00cc 22000000 		.4byte	.LBE208
 10952 00d0 00000000 		.4byte	0
 10953 00d4 00000000 		.4byte	0
 10954 00d8 0E000000 		.4byte	.LBB201
 10955 00dc 10000000 		.4byte	.LBE201
 10956 00e0 22000000 		.4byte	.LBB209
 10957 00e4 24000000 		.4byte	.LBE209
 10958 00e8 00000000 		.4byte	0
 10959 00ec 00000000 		.4byte	0
 10960 00f0 16000000 		.4byte	.LBB205
 10961 00f4 1A000000 		.4byte	.LBE205
 10962 00f8 28000000 		.4byte	.LBB211
 10963 00fc 2A000000 		.4byte	.LBE211
 10964 0100 00000000 		.4byte	0
 10965 0104 00000000 		.4byte	0
 10966 0108 04000000 		.4byte	.LBB218
 10967 010c 06000000 		.4byte	.LBE218
 10968 0110 0A000000 		.4byte	.LBB224
 10969 0114 0E000000 		.4byte	.LBE224
 10970 0118 00000000 		.4byte	0
 10971 011c 00000000 		.4byte	0
 10972 0120 08000000 		.4byte	.LBB221
 10973 0124 0A000000 		.4byte	.LBE221
 10974 0128 1E000000 		.4byte	.LBB234
 10975 012c 20000000 		.4byte	.LBE234
 10976 0130 00000000 		.4byte	0
 10977 0134 00000000 		.4byte	0
 10978 0138 0E000000 		.4byte	.LBB225
 10979 013c 10000000 		.4byte	.LBE225
 10980 0140 20000000 		.4byte	.LBB235
 10981 0144 22000000 		.4byte	.LBE235
 10982 0148 00000000 		.4byte	0
 10983 014c 00000000 		.4byte	0
 10984 0150 10000000 		.4byte	.LBB228
 10985 0154 14000000 		.4byte	.LBE228
 10986 0158 22000000 		.4byte	.LBB236
 10987 015c 24000000 		.4byte	.LBE236
 10988 0160 00000000 		.4byte	0
 10989 0164 00000000 		.4byte	0
 10990 0168 14000000 		.4byte	.LBB231
 10991 016c 18000000 		.4byte	.LBE231
 10992 0170 24000000 		.4byte	.LBB237
 10993 0174 26000000 		.4byte	.LBE237
 10994 0178 00000000 		.4byte	0
ARM GAS  /tmp/ccJYkMjP.s 			page 236


 10995 017c 00000000 		.4byte	0
 10996 0180 2A000000 		.4byte	.LBB238
 10997 0184 3C000000 		.4byte	.LBE238
 10998 0188 46000000 		.4byte	.LBB245
 10999 018c 48000000 		.4byte	.LBE245
 11000 0190 4A000000 		.4byte	.LBB246
 11001 0194 4C000000 		.4byte	.LBE246
 11002 0198 4E000000 		.4byte	.LBB247
 11003 019c 52000000 		.4byte	.LBE247
 11004 01a0 58000000 		.4byte	.LBB248
 11005 01a4 5C000000 		.4byte	.LBE248
 11006 01a8 5E000000 		.4byte	.LBB249
 11007 01ac 60000000 		.4byte	.LBE249
 11008 01b0 00000000 		.4byte	0
 11009 01b4 00000000 		.4byte	0
 11010 01b8 04000000 		.4byte	.LBB252
 11011 01bc 08000000 		.4byte	.LBE252
 11012 01c0 24000000 		.4byte	.LBB271
 11013 01c4 26000000 		.4byte	.LBE271
 11014 01c8 00000000 		.4byte	0
 11015 01cc 00000000 		.4byte	0
 11016 01d0 0A000000 		.4byte	.LBB255
 11017 01d4 0C000000 		.4byte	.LBE255
 11018 01d8 14000000 		.4byte	.LBB267
 11019 01dc 18000000 		.4byte	.LBE267
 11020 01e0 00000000 		.4byte	0
 11021 01e4 00000000 		.4byte	0
 11022 01e8 0C000000 		.4byte	.LBB258
 11023 01ec 0E000000 		.4byte	.LBE258
 11024 01f0 1E000000 		.4byte	.LBB268
 11025 01f4 20000000 		.4byte	.LBE268
 11026 01f8 00000000 		.4byte	0
 11027 01fc 00000000 		.4byte	0
 11028 0200 0E000000 		.4byte	.LBB261
 11029 0204 10000000 		.4byte	.LBE261
 11030 0208 20000000 		.4byte	.LBB269
 11031 020c 22000000 		.4byte	.LBE269
 11032 0210 00000000 		.4byte	0
 11033 0214 00000000 		.4byte	0
 11034 0218 10000000 		.4byte	.LBB264
 11035 021c 14000000 		.4byte	.LBE264
 11036 0220 22000000 		.4byte	.LBB270
 11037 0224 24000000 		.4byte	.LBE270
 11038 0228 00000000 		.4byte	0
 11039 022c 00000000 		.4byte	0
 11040 0230 04000000 		.4byte	.LBB274
 11041 0234 1A000000 		.4byte	.LBE274
 11042 0238 1C000000 		.4byte	.LBB298
 11043 023c 1E000000 		.4byte	.LBE298
 11044 0240 20000000 		.4byte	.LBB299
 11045 0244 2E000000 		.4byte	.LBE299
 11046 0248 00000000 		.4byte	0
 11047 024c 00000000 		.4byte	0
 11048 0250 04000000 		.4byte	.LBB276
 11049 0254 06000000 		.4byte	.LBE276
 11050 0258 0C000000 		.4byte	.LBB282
 11051 025c 10000000 		.4byte	.LBE282
ARM GAS  /tmp/ccJYkMjP.s 			page 237


 11052 0260 00000000 		.4byte	0
 11053 0264 00000000 		.4byte	0
 11054 0268 08000000 		.4byte	.LBB279
 11055 026c 0C000000 		.4byte	.LBE279
 11056 0270 24000000 		.4byte	.LBB292
 11057 0274 28000000 		.4byte	.LBE292
 11058 0278 00000000 		.4byte	0
 11059 027c 00000000 		.4byte	0
 11060 0280 10000000 		.4byte	.LBB283
 11061 0284 12000000 		.4byte	.LBE283
 11062 0288 28000000 		.4byte	.LBB293
 11063 028c 2A000000 		.4byte	.LBE293
 11064 0290 00000000 		.4byte	0
 11065 0294 00000000 		.4byte	0
 11066 0298 12000000 		.4byte	.LBB286
 11067 029c 16000000 		.4byte	.LBE286
 11068 02a0 2A000000 		.4byte	.LBB294
 11069 02a4 2C000000 		.4byte	.LBE294
 11070 02a8 00000000 		.4byte	0
 11071 02ac 00000000 		.4byte	0
 11072 02b0 16000000 		.4byte	.LBB289
 11073 02b4 1A000000 		.4byte	.LBE289
 11074 02b8 2C000000 		.4byte	.LBB295
 11075 02bc 2E000000 		.4byte	.LBE295
 11076 02c0 00000000 		.4byte	0
 11077 02c4 00000000 		.4byte	0
 11078 02c8 38000000 		.4byte	.LBB300
 11079 02cc 4A000000 		.4byte	.LBE300
 11080 02d0 50000000 		.4byte	.LBB303
 11081 02d4 52000000 		.4byte	.LBE303
 11082 02d8 00000000 		.4byte	0
 11083 02dc 00000000 		.4byte	0
 11084 02e0 06000000 		.4byte	.LBB306
 11085 02e4 0A000000 		.4byte	.LBE306
 11086 02e8 22000000 		.4byte	.LBB324
 11087 02ec 24000000 		.4byte	.LBE324
 11088 02f0 00000000 		.4byte	0
 11089 02f4 00000000 		.4byte	0
 11090 02f8 0A000000 		.4byte	.LBB309
 11091 02fc 0E000000 		.4byte	.LBE309
 11092 0300 24000000 		.4byte	.LBB325
 11093 0304 26000000 		.4byte	.LBE325
 11094 0308 00000000 		.4byte	0
 11095 030c 00000000 		.4byte	0
 11096 0310 0E000000 		.4byte	.LBB312
 11097 0314 10000000 		.4byte	.LBE312
 11098 0318 14000000 		.4byte	.LBB321
 11099 031c 18000000 		.4byte	.LBE321
 11100 0320 00000000 		.4byte	0
 11101 0324 00000000 		.4byte	0
 11102 0328 10000000 		.4byte	.LBB315
 11103 032c 12000000 		.4byte	.LBE315
 11104 0330 1E000000 		.4byte	.LBB322
 11105 0334 20000000 		.4byte	.LBE322
 11106 0338 00000000 		.4byte	0
 11107 033c 00000000 		.4byte	0
 11108 0340 12000000 		.4byte	.LBB318
ARM GAS  /tmp/ccJYkMjP.s 			page 238


 11109 0344 14000000 		.4byte	.LBE318
 11110 0348 20000000 		.4byte	.LBB323
 11111 034c 22000000 		.4byte	.LBE323
 11112 0350 00000000 		.4byte	0
 11113 0354 00000000 		.4byte	0
 11114 0358 26000000 		.4byte	.LBB326
 11115 035c 28000000 		.4byte	.LBE326
 11116 0360 2A000000 		.4byte	.LBB330
 11117 0364 2E000000 		.4byte	.LBE330
 11118 0368 30000000 		.4byte	.LBB331
 11119 036c 3A000000 		.4byte	.LBE331
 11120 0370 00000000 		.4byte	0
 11121 0374 00000000 		.4byte	0
 11122 0378 02000000 		.4byte	.LBB332
 11123 037c 1C000000 		.4byte	.LBE332
 11124 0380 1E000000 		.4byte	.LBB355
 11125 0384 2A000000 		.4byte	.LBE355
 11126 0388 00000000 		.4byte	0
 11127 038c 00000000 		.4byte	0
 11128 0390 02000000 		.4byte	.LBB334
 11129 0394 04000000 		.4byte	.LBE334
 11130 0398 0C000000 		.4byte	.LBB343
 11131 039c 10000000 		.4byte	.LBE343
 11132 03a0 00000000 		.4byte	0
 11133 03a4 00000000 		.4byte	0
 11134 03a8 06000000 		.4byte	.LBB337
 11135 03ac 0A000000 		.4byte	.LBE337
 11136 03b0 20000000 		.4byte	.LBB350
 11137 03b4 24000000 		.4byte	.LBE350
 11138 03b8 00000000 		.4byte	0
 11139 03bc 00000000 		.4byte	0
 11140 03c0 0A000000 		.4byte	.LBB340
 11141 03c4 0C000000 		.4byte	.LBE340
 11142 03c8 24000000 		.4byte	.LBB351
 11143 03cc 26000000 		.4byte	.LBE351
 11144 03d0 00000000 		.4byte	0
 11145 03d4 00000000 		.4byte	0
 11146 03d8 10000000 		.4byte	.LBB344
 11147 03dc 14000000 		.4byte	.LBE344
 11148 03e0 26000000 		.4byte	.LBB352
 11149 03e4 28000000 		.4byte	.LBE352
 11150 03e8 00000000 		.4byte	0
 11151 03ec 00000000 		.4byte	0
 11152 03f0 14000000 		.4byte	.LBB347
 11153 03f4 18000000 		.4byte	.LBE347
 11154 03f8 28000000 		.4byte	.LBB353
 11155 03fc 2A000000 		.4byte	.LBE353
 11156 0400 00000000 		.4byte	0
 11157 0404 00000000 		.4byte	0
 11158 0408 32000000 		.4byte	.LBB356
 11159 040c 34000000 		.4byte	.LBE356
 11160 0410 40000000 		.4byte	.LBB362
 11161 0414 42000000 		.4byte	.LBE362
 11162 0418 00000000 		.4byte	0
 11163 041c 00000000 		.4byte	0
 11164 0420 34000000 		.4byte	.LBB359
 11165 0424 36000000 		.4byte	.LBE359
ARM GAS  /tmp/ccJYkMjP.s 			page 239


 11166 0428 42000000 		.4byte	.LBB363
 11167 042c 44000000 		.4byte	.LBE363
 11168 0430 00000000 		.4byte	0
 11169 0434 00000000 		.4byte	0
 11170 0438 02000000 		.4byte	.LBB364
 11171 043c 1E000000 		.4byte	.LBE364
 11172 0440 20000000 		.4byte	.LBB391
 11173 0444 22000000 		.4byte	.LBE391
 11174 0448 24000000 		.4byte	.LBB395
 11175 044c 30000000 		.4byte	.LBE395
 11176 0450 00000000 		.4byte	0
 11177 0454 00000000 		.4byte	0
 11178 0458 04000000 		.4byte	.LBB366
 11179 045c 06000000 		.4byte	.LBE366
 11180 0460 0E000000 		.4byte	.LBB375
 11181 0464 12000000 		.4byte	.LBE375
 11182 0468 00000000 		.4byte	0
 11183 046c 00000000 		.4byte	0
 11184 0470 06000000 		.4byte	.LBB369
 11185 0474 0A000000 		.4byte	.LBE369
 11186 0478 24000000 		.4byte	.LBB382
 11187 047c 28000000 		.4byte	.LBE382
 11188 0480 00000000 		.4byte	0
 11189 0484 00000000 		.4byte	0
 11190 0488 0A000000 		.4byte	.LBB372
 11191 048c 0E000000 		.4byte	.LBE372
 11192 0490 28000000 		.4byte	.LBB383
 11193 0494 2C000000 		.4byte	.LBE383
 11194 0498 00000000 		.4byte	0
 11195 049c 00000000 		.4byte	0
 11196 04a0 12000000 		.4byte	.LBB376
 11197 04a4 16000000 		.4byte	.LBE376
 11198 04a8 2C000000 		.4byte	.LBB384
 11199 04ac 2E000000 		.4byte	.LBE384
 11200 04b0 00000000 		.4byte	0
 11201 04b4 00000000 		.4byte	0
 11202 04b8 18000000 		.4byte	.LBB379
 11203 04bc 1C000000 		.4byte	.LBE379
 11204 04c0 2E000000 		.4byte	.LBB385
 11205 04c4 30000000 		.4byte	.LBE385
 11206 04c8 00000000 		.4byte	0
 11207 04cc 00000000 		.4byte	0
 11208 04d0 1E000000 		.4byte	.LBB388
 11209 04d4 20000000 		.4byte	.LBE388
 11210 04d8 30000000 		.4byte	.LBB396
 11211 04dc 32000000 		.4byte	.LBE396
 11212 04e0 00000000 		.4byte	0
 11213 04e4 00000000 		.4byte	0
 11214 04e8 22000000 		.4byte	.LBB392
 11215 04ec 24000000 		.4byte	.LBE392
 11216 04f0 32000000 		.4byte	.LBB397
 11217 04f4 34000000 		.4byte	.LBE397
 11218 04f8 00000000 		.4byte	0
 11219 04fc 00000000 		.4byte	0
 11220 0500 02000000 		.4byte	.LBB399
 11221 0504 1C000000 		.4byte	.LBE399
 11222 0508 1E000000 		.4byte	.LBB422
ARM GAS  /tmp/ccJYkMjP.s 			page 240


 11223 050c 2A000000 		.4byte	.LBE422
 11224 0510 00000000 		.4byte	0
 11225 0514 00000000 		.4byte	0
 11226 0518 02000000 		.4byte	.LBB401
 11227 051c 04000000 		.4byte	.LBE401
 11228 0520 0C000000 		.4byte	.LBB410
 11229 0524 10000000 		.4byte	.LBE410
 11230 0528 00000000 		.4byte	0
 11231 052c 00000000 		.4byte	0
 11232 0530 06000000 		.4byte	.LBB404
 11233 0534 0A000000 		.4byte	.LBE404
 11234 0538 20000000 		.4byte	.LBB417
 11235 053c 24000000 		.4byte	.LBE417
 11236 0540 00000000 		.4byte	0
 11237 0544 00000000 		.4byte	0
 11238 0548 0A000000 		.4byte	.LBB407
 11239 054c 0C000000 		.4byte	.LBE407
 11240 0550 24000000 		.4byte	.LBB418
 11241 0554 26000000 		.4byte	.LBE418
 11242 0558 00000000 		.4byte	0
 11243 055c 00000000 		.4byte	0
 11244 0560 10000000 		.4byte	.LBB411
 11245 0564 14000000 		.4byte	.LBE411
 11246 0568 26000000 		.4byte	.LBB419
 11247 056c 28000000 		.4byte	.LBE419
 11248 0570 00000000 		.4byte	0
 11249 0574 00000000 		.4byte	0
 11250 0578 14000000 		.4byte	.LBB414
 11251 057c 18000000 		.4byte	.LBE414
 11252 0580 28000000 		.4byte	.LBB420
 11253 0584 2A000000 		.4byte	.LBE420
 11254 0588 00000000 		.4byte	0
 11255 058c 00000000 		.4byte	0
 11256 0590 32000000 		.4byte	.LBB423
 11257 0594 34000000 		.4byte	.LBE423
 11258 0598 40000000 		.4byte	.LBB429
 11259 059c 42000000 		.4byte	.LBE429
 11260 05a0 00000000 		.4byte	0
 11261 05a4 00000000 		.4byte	0
 11262 05a8 34000000 		.4byte	.LBB426
 11263 05ac 36000000 		.4byte	.LBE426
 11264 05b0 42000000 		.4byte	.LBB430
 11265 05b4 44000000 		.4byte	.LBE430
 11266 05b8 00000000 		.4byte	0
 11267 05bc 00000000 		.4byte	0
 11268 05c0 18000000 		.4byte	.LBB431
 11269 05c4 22000000 		.4byte	.LBE431
 11270 05c8 24000000 		.4byte	.LBB434
 11271 05cc 26000000 		.4byte	.LBE434
 11272 05d0 00000000 		.4byte	0
 11273 05d4 00000000 		.4byte	0
 11274 05d8 00000000 		.4byte	.LFB142
 11275 05dc 5E000000 		.4byte	.LFE142
 11276 05e0 00000000 		.4byte	.LFB147
 11277 05e4 2C000000 		.4byte	.LFE147
 11278 05e8 00000000 		.4byte	.LFB148
 11279 05ec 60000000 		.4byte	.LFE148
ARM GAS  /tmp/ccJYkMjP.s 			page 241


 11280 05f0 00000000 		.4byte	.LFB149
 11281 05f4 1C000000 		.4byte	.LFE149
 11282 05f8 00000000 		.4byte	.LFB150
 11283 05fc 70000000 		.4byte	.LFE150
 11284 0600 00000000 		.4byte	.LFB151
 11285 0604 54000000 		.4byte	.LFE151
 11286 0608 00000000 		.4byte	.LFB152
 11287 060c 1C000000 		.4byte	.LFE152
 11288 0610 00000000 		.4byte	.LFB153
 11289 0614 B4000000 		.4byte	.LFE153
 11290 0618 00000000 		.4byte	.LFB154
 11291 061c A8000000 		.4byte	.LFE154
 11292 0620 00000000 		.4byte	.LFB155
 11293 0624 50000000 		.4byte	.LFE155
 11294 0628 00000000 		.4byte	.LFB156
 11295 062c 50000000 		.4byte	.LFE156
 11296 0630 00000000 		.4byte	.LFB157
 11297 0634 08000000 		.4byte	.LFE157
 11298 0638 00000000 		.4byte	.LFB158
 11299 063c 08000000 		.4byte	.LFE158
 11300 0640 00000000 		.4byte	.LFB159
 11301 0644 0C000000 		.4byte	.LFE159
 11302 0648 00000000 		.4byte	.LFB160
 11303 064c 0A000000 		.4byte	.LFE160
 11304 0650 00000000 		.4byte	.LFB161
 11305 0654 0A000000 		.4byte	.LFE161
 11306 0658 00000000 		.4byte	.LFB162
 11307 065c 0A000000 		.4byte	.LFE162
 11308 0660 00000000 		.4byte	.LFB163
 11309 0664 0A000000 		.4byte	.LFE163
 11310 0668 00000000 		.4byte	.LFB164
 11311 066c 0E000000 		.4byte	.LFE164
 11312 0670 00000000 		.4byte	.LFB165
 11313 0674 0E000000 		.4byte	.LFE165
 11314 0678 00000000 		.4byte	.LFB166
 11315 067c 0A000000 		.4byte	.LFE166
 11316 0680 00000000 		.4byte	.LFB167
 11317 0684 0A000000 		.4byte	.LFE167
 11318 0688 00000000 		.4byte	.LFB168
 11319 068c 0E000000 		.4byte	.LFE168
 11320 0690 00000000 		.4byte	.LFB169
 11321 0694 10000000 		.4byte	.LFE169
 11322 0698 00000000 		.4byte	.LFB170
 11323 069c 0A000000 		.4byte	.LFE170
 11324 06a0 00000000 		.4byte	.LFB171
 11325 06a4 0A000000 		.4byte	.LFE171
 11326 06a8 00000000 		.4byte	.LFB172
 11327 06ac 0C000000 		.4byte	.LFE172
 11328 06b0 00000000 		.4byte	.LFB173
 11329 06b4 06000000 		.4byte	.LFE173
 11330 06b8 00000000 		.4byte	.LFB174
 11331 06bc 1E000000 		.4byte	.LFE174
 11332 06c0 00000000 		.4byte	.LFB176
 11333 06c4 08000000 		.4byte	.LFE176
 11334 06c8 00000000 		.4byte	.LFB177
 11335 06cc 08000000 		.4byte	.LFE177
 11336 06d0 00000000 		.4byte	.LFB178
ARM GAS  /tmp/ccJYkMjP.s 			page 242


 11337 06d4 50000000 		.4byte	.LFE178
 11338 06d8 00000000 		.4byte	.LFB179
 11339 06dc 0C000000 		.4byte	.LFE179
 11340 06e0 00000000 		.4byte	.LFB180
 11341 06e4 0A000000 		.4byte	.LFE180
 11342 06e8 00000000 		.4byte	.LFB181
 11343 06ec 0A000000 		.4byte	.LFE181
 11344 06f0 00000000 		.4byte	.LFB182
 11345 06f4 0E000000 		.4byte	.LFE182
 11346 06f8 00000000 		.4byte	.LFB183
 11347 06fc 0E000000 		.4byte	.LFE183
 11348 0700 00000000 		.4byte	.LFB184
 11349 0704 0E000000 		.4byte	.LFE184
 11350 0708 00000000 		.4byte	.LFB185
 11351 070c 08000000 		.4byte	.LFE185
 11352 0710 00000000 		.4byte	.LFB186
 11353 0714 08000000 		.4byte	.LFE186
 11354 0718 00000000 		.4byte	.LFB187
 11355 071c 10000000 		.4byte	.LFE187
 11356 0720 00000000 		.4byte	.LFB188
 11357 0724 0A000000 		.4byte	.LFE188
 11358 0728 00000000 		.4byte	.LFB189
 11359 072c 0A000000 		.4byte	.LFE189
 11360 0730 00000000 		.4byte	.LFB190
 11361 0734 08000000 		.4byte	.LFE190
 11362 0738 00000000 		.4byte	.LFB191
 11363 073c 04000000 		.4byte	.LFE191
 11364 0740 00000000 		.4byte	.LFB192
 11365 0744 10000000 		.4byte	.LFE192
 11366 0748 00000000 		.4byte	.LFB193
 11367 074c 08000000 		.4byte	.LFE193
 11368 0750 00000000 		.4byte	.LFB194
 11369 0754 08000000 		.4byte	.LFE194
 11370 0758 00000000 		.4byte	.LFB195
 11371 075c 06000000 		.4byte	.LFE195
 11372 0760 00000000 		.4byte	.LFB196
 11373 0764 06000000 		.4byte	.LFE196
 11374 0768 00000000 		.4byte	.LFB197
 11375 076c 06000000 		.4byte	.LFE197
 11376 0770 00000000 		.4byte	.LFB198
 11377 0774 04000000 		.4byte	.LFE198
 11378 0778 00000000 		.4byte	.LFB199
 11379 077c 06000000 		.4byte	.LFE199
 11380 0780 00000000 		.4byte	.LFB200
 11381 0784 06000000 		.4byte	.LFE200
 11382 0788 00000000 		.4byte	.LFB201
 11383 078c 06000000 		.4byte	.LFE201
 11384 0790 00000000 		.4byte	.LFB202
 11385 0794 04000000 		.4byte	.LFE202
 11386 0798 00000000 		.4byte	.LFB203
 11387 079c 04000000 		.4byte	.LFE203
 11388 07a0 00000000 		.4byte	.LFB204
 11389 07a4 04000000 		.4byte	.LFE204
 11390 07a8 00000000 		.4byte	.LFB205
 11391 07ac 04000000 		.4byte	.LFE205
 11392 07b0 00000000 		.4byte	.LFB206
 11393 07b4 04000000 		.4byte	.LFE206
ARM GAS  /tmp/ccJYkMjP.s 			page 243


 11394 07b8 00000000 		.4byte	.LFB207
 11395 07bc 08000000 		.4byte	.LFE207
 11396 07c0 00000000 		.4byte	.LFB208
 11397 07c4 08000000 		.4byte	.LFE208
 11398 07c8 00000000 		.4byte	.LFB209
 11399 07cc 08000000 		.4byte	.LFE209
 11400 07d0 00000000 		.4byte	.LFB210
 11401 07d4 08000000 		.4byte	.LFE210
 11402 07d8 00000000 		.4byte	.LFB211
 11403 07dc 28000000 		.4byte	.LFE211
 11404 07e0 00000000 		.4byte	.LFB212
 11405 07e4 08000000 		.4byte	.LFE212
 11406 07e8 00000000 		.4byte	.LFB215
 11407 07ec 08000000 		.4byte	.LFE215
 11408 07f0 00000000 		.4byte	.LFB216
 11409 07f4 08000000 		.4byte	.LFE216
 11410 07f8 00000000 		.4byte	.LFB217
 11411 07fc 08000000 		.4byte	.LFE217
 11412 0800 00000000 		.4byte	.LFB218
 11413 0804 08000000 		.4byte	.LFE218
 11414 0808 00000000 		.4byte	.LFB219
 11415 080c 08000000 		.4byte	.LFE219
 11416 0810 00000000 		.4byte	.LFB220
 11417 0814 16000000 		.4byte	.LFE220
 11418 0818 00000000 		.4byte	.LFB221
 11419 081c 12000000 		.4byte	.LFE221
 11420 0820 00000000 		.4byte	.LFB222
 11421 0824 16000000 		.4byte	.LFE222
 11422 0828 00000000 		.4byte	.LFB223
 11423 082c 16000000 		.4byte	.LFE223
 11424 0830 00000000 		.4byte	.LFB224
 11425 0834 12000000 		.4byte	.LFE224
 11426 0838 00000000 		.4byte	.LFB225
 11427 083c 0C000000 		.4byte	.LFE225
 11428 0840 00000000 		.4byte	.LFB226
 11429 0844 0C000000 		.4byte	.LFE226
 11430 0848 00000000 		.4byte	.LFB227
 11431 084c 10000000 		.4byte	.LFE227
 11432 0850 00000000 		.4byte	0
 11433 0854 00000000 		.4byte	0
 11434              		.section	.debug_line,"",%progbits
 11435              	.Ldebug_line0:
 11436 0000 630B0000 		.section	.debug_str,"MS",%progbits,1
 11436      02006602 
 11436      00000201 
 11436      FB0E0D00 
 11436      01010101 
 11437              	.LASF7:
 11438 0000 6C6F6E67 		.ascii	"long int\000"
 11438      20696E74 
 11438      00
 11439              	.LASF256:
 11440 0009 75736172 		.ascii	"usart_lin_set_data_len_mode\000"
 11440      745F6C69 
 11440      6E5F7365 
 11440      745F6461 
 11440      74615F6C 
ARM GAS  /tmp/ccJYkMjP.s 			page 244


 11441              	.LASF21:
 11442 0025 55535F49 		.ascii	"US_IDR\000"
 11442      445200
 11443              	.LASF200:
 11444 002c 75736172 		.ascii	"usart_disable_interrupt\000"
 11444      745F6469 
 11444      7361626C 
 11444      655F696E 
 11444      74657272 
 11445              	.LASF19:
 11446 0044 55535F4D 		.ascii	"US_MR\000"
 11446      5200
 11447              	.LASF222:
 11448 004a 756C5F6C 		.ascii	"ul_len\000"
 11448      656E00
 11449              	.LASF75:
 11450 0051 5F6F6E5F 		.ascii	"_on_exit_args\000"
 11450      65786974 
 11450      5F617267 
 11450      7300
 11451              	.LASF143:
 11452 005f 5F776374 		.ascii	"_wctomb_state\000"
 11452      6F6D625F 
 11452      73746174 
 11452      6500
 11453              	.LASF276:
 11454 006d 75736172 		.ascii	"usart_init_hw_handshaking\000"
 11454      745F696E 
 11454      69745F68 
 11454      775F6861 
 11454      6E647368 
 11455              	.LASF175:
 11456 0087 705F7573 		.ascii	"p_usart\000"
 11456      61727400 
 11457              	.LASF140:
 11458 008f 5F723438 		.ascii	"_r48\000"
 11458      00
 11459              	.LASF165:
 11460 0094 62617564 		.ascii	"baudrate\000"
 11460      72617465 
 11460      00
 11461              	.LASF250:
 11462 009d 75736172 		.ascii	"usart_lin_enable_pdc_mode\000"
 11462      745F6C69 
 11462      6E5F656E 
 11462      61626C65 
 11462      5F706463 
 11463              	.LASF145:
 11464 00b7 5F736967 		.ascii	"_signal_buf\000"
 11464      6E616C5F 
 11464      62756600 
 11465              	.LASF207:
 11466 00c3 75736172 		.ascii	"usart_enable_rx\000"
 11466      745F656E 
 11466      61626C65 
 11466      5F727800 
 11467              	.LASF209:
ARM GAS  /tmp/ccJYkMjP.s 			page 245


 11468 00d3 74696D65 		.ascii	"timeguard\000"
 11468      67756172 
 11468      6400
 11469              	.LASF203:
 11470 00dd 75736172 		.ascii	"usart_set_rx_timeout\000"
 11470      745F7365 
 11470      745F7278 
 11470      5F74696D 
 11470      656F7574 
 11471              	.LASF26:
 11472 00f2 55535F42 		.ascii	"US_BRGR\000"
 11472      52475200 
 11473              	.LASF89:
 11474 00fa 5F6C6266 		.ascii	"_lbfsize\000"
 11474      73697A65 
 11474      00
 11475              	.LASF87:
 11476 0103 5F666C61 		.ascii	"_flags\000"
 11476      677300
 11477              	.LASF6:
 11478 010a 5F5F696E 		.ascii	"__int32_t\000"
 11478      7433325F 
 11478      7400
 11479              	.LASF211:
 11480 0114 75736172 		.ascii	"usart_disable_tx\000"
 11480      745F6469 
 11480      7361626C 
 11480      655F7478 
 11480      00
 11481              	.LASF104:
 11482 0125 5F657272 		.ascii	"_errno\000"
 11482      6E6F00
 11483              	.LASF185:
 11484 012c 75736172 		.ascii	"usart_is_tx_empty\000"
 11484      745F6973 
 11484      5F74785F 
 11484      656D7074 
 11484      7900
 11485              	.LASF217:
 11486 013e 75635F61 		.ascii	"uc_altp\000"
 11486      6C747000 
 11487              	.LASF102:
 11488 0146 5F666C61 		.ascii	"_flags2\000"
 11488      67733200 
 11489              	.LASF46:
 11490 014e 55535F57 		.ascii	"US_WPMR\000"
 11490      504D5200 
 11491              	.LASF180:
 11492 0156 75736172 		.ascii	"usart_write_line\000"
 11492      745F7772 
 11492      6974655F 
 11492      6C696E65 
 11492      00
 11493              	.LASF280:
 11494 0167 75736172 		.ascii	"usart_set_sync_slave_baudrate\000"
 11494      745F7365 
 11494      745F7379 
ARM GAS  /tmp/ccJYkMjP.s 			page 246


 11494      6E635F73 
 11494      6C617665 
 11495              	.LASF227:
 11496 0185 75635F70 		.ascii	"uc_psnb\000"
 11496      736E6200 
 11497              	.LASF183:
 11498 018d 75736172 		.ascii	"usart_write\000"
 11498      745F7772 
 11498      69746500 
 11499              	.LASF101:
 11500 0199 5F6D6273 		.ascii	"_mbstate\000"
 11500      74617465 
 11500      00
 11501              	.LASF91:
 11502 01a2 5F726561 		.ascii	"_read\000"
 11502      6400
 11503              	.LASF278:
 11504 01a8 75736172 		.ascii	"usart_reset\000"
 11504      745F7265 
 11504      73657400 
 11505              	.LASF244:
 11506 01b4 75736172 		.ascii	"usart_lin_identifier_send_complete\000"
 11506      745F6C69 
 11506      6E5F6964 
 11506      656E7469 
 11506      66696572 
 11507              	.LASF147:
 11508 01d7 5F6D6272 		.ascii	"_mbrlen_state\000"
 11508      6C656E5F 
 11508      73746174 
 11508      6500
 11509              	.LASF182:
 11510 01e5 75736172 		.ascii	"usart_putchar\000"
 11510      745F7075 
 11510      74636861 
 11510      7200
 11511              	.LASF134:
 11512 01f3 5F756E75 		.ascii	"_unused_rand\000"
 11512      7365645F 
 11512      72616E64 
 11512      00
 11513              	.LASF106:
 11514 0200 5F737464 		.ascii	"_stdout\000"
 11514      6F757400 
 11515              	.LASF257:
 11516 0208 75635F6D 		.ascii	"uc_mode\000"
 11516      6F646500 
 11517              	.LASF51:
 11518 0210 5F66706F 		.ascii	"_fpos_t\000"
 11518      735F7400 
 11519              	.LASF82:
 11520 0218 5F666E73 		.ascii	"_fns\000"
 11520      00
 11521              	.LASF90:
 11522 021d 5F636F6F 		.ascii	"_cookie\000"
 11522      6B696500 
 11523              	.LASF220:
ARM GAS  /tmp/ccJYkMjP.s 			page 247


 11524 0225 75635F6C 		.ascii	"uc_len\000"
 11524      656E00
 11525              	.LASF159:
 11526 022c 675F696E 		.ascii	"g_interrupt_enabled\000"
 11526      74657272 
 11526      7570745F 
 11526      656E6162 
 11526      6C656400 
 11527              	.LASF64:
 11528 0240 5F426967 		.ascii	"_Bigint\000"
 11528      696E7400 
 11529              	.LASF72:
 11530 0248 5F5F746D 		.ascii	"__tm_wday\000"
 11530      5F776461 
 11530      7900
 11531              	.LASF194:
 11532 0252 75736172 		.ascii	"usart_start_rx_timeout\000"
 11532      745F7374 
 11532      6172745F 
 11532      72785F74 
 11532      696D656F 
 11533              	.LASF275:
 11534 0269 75736172 		.ascii	"usart_init_sync_master\000"
 11534      745F696E 
 11534      69745F73 
 11534      796E635F 
 11534      6D617374 
 11535              	.LASF170:
 11536 0280 69726461 		.ascii	"irda_filter\000"
 11536      5F66696C 
 11536      74657200 
 11537              	.LASF114:
 11538 028c 5F726573 		.ascii	"_result\000"
 11538      756C7400 
 11539              	.LASF14:
 11540 0294 75696E74 		.ascii	"uint32_t\000"
 11540      33325F74 
 11540      00
 11541              	.LASF68:
 11542 029d 5F5F746D 		.ascii	"__tm_hour\000"
 11542      5F686F75 
 11542      7200
 11543              	.LASF178:
 11544 02a7 75736172 		.ascii	"usart_read\000"
 11544      745F7265 
 11544      616400
 11545              	.LASF184:
 11546 02b2 75736172 		.ascii	"usart_is_rx_ready\000"
 11546      745F6973 
 11546      5F72785F 
 11546      72656164 
 11546      7900
 11547              	.LASF187:
 11548 02c4 75736172 		.ascii	"usart_disable_writeprotect\000"
 11548      745F6469 
 11548      7361626C 
 11548      655F7772 
ARM GAS  /tmp/ccJYkMjP.s 			page 248


 11548      69746570 
 11549              	.LASF55:
 11550 02df 5F5F636F 		.ascii	"__count\000"
 11550      756E7400 
 11551              	.LASF163:
 11552 02e7 666C6F61 		.ascii	"float\000"
 11552      7400
 11553              	.LASF67:
 11554 02ed 5F5F746D 		.ascii	"__tm_min\000"
 11554      5F6D696E 
 11554      00
 11555              	.LASF156:
 11556 02f6 5F696D70 		.ascii	"_impure_ptr\000"
 11556      7572655F 
 11556      70747200 
 11557              	.LASF263:
 11558 0302 75736172 		.ascii	"usart_lin_set_node_action\000"
 11558      745F6C69 
 11558      6E5F7365 
 11558      745F6E6F 
 11558      64655F61 
 11559              	.LASF153:
 11560 031c 5F6E6578 		.ascii	"_nextf\000"
 11560      746600
 11561              	.LASF246:
 11562 0323 64617461 		.ascii	"data_length\000"
 11562      5F6C656E 
 11562      67746800 
 11563              	.LASF236:
 11564 032f 75736172 		.ascii	"usart_lon_disable_coll_detection\000"
 11564      745F6C6F 
 11564      6E5F6469 
 11564      7361626C 
 11564      655F636F 
 11565              	.LASF149:
 11566 0350 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 11566      72746F77 
 11566      63735F73 
 11566      74617465 
 11566      00
 11567              	.LASF11:
 11568 0361 6C6F6E67 		.ascii	"long long unsigned int\000"
 11568      206C6F6E 
 11568      6720756E 
 11568      7369676E 
 11568      65642069 
 11569              	.LASF136:
 11570 0378 5F617363 		.ascii	"_asctime_buf\000"
 11570      74696D65 
 11570      5F627566 
 11570      00
 11571              	.LASF130:
 11572 0385 5F72616E 		.ascii	"_rand48\000"
 11572      64343800 
 11573              	.LASF190:
 11574 038d 75736172 		.ascii	"usart_drive_RTS_pin_high\000"
 11574      745F6472 
ARM GAS  /tmp/ccJYkMjP.s 			page 249


 11574      6976655F 
 11574      5254535F 
 11574      70696E5F 
 11575              	.LASF63:
 11576 03a6 5F776473 		.ascii	"_wds\000"
 11576      00
 11577              	.LASF248:
 11578 03ab 75736172 		.ascii	"usart_lin_set_tx_identifier\000"
 11578      745F6C69 
 11578      6E5F7365 
 11578      745F7478 
 11578      5F696465 
 11579              	.LASF208:
 11580 03c7 75736172 		.ascii	"usart_set_tx_timeguard\000"
 11580      745F7365 
 11580      745F7478 
 11580      5F74696D 
 11580      65677561 
 11581              	.LASF223:
 11582 03de 75736172 		.ascii	"usart_lon_set_rx_idt\000"
 11582      745F6C6F 
 11582      6E5F7365 
 11582      745F7278 
 11582      5F696474 
 11583              	.LASF44:
 11584 03f3 55535F49 		.ascii	"US_ICDIFF\000"
 11584      43444946 
 11584      4600
 11585              	.LASF126:
 11586 03fd 5F5F4649 		.ascii	"__FILE\000"
 11586      4C4500
 11587              	.LASF152:
 11588 0404 5F685F65 		.ascii	"_h_errno\000"
 11588      72726E6F 
 11588      00
 11589              	.LASF270:
 11590 040d 705F7573 		.ascii	"p_usart_opt\000"
 11590      6172745F 
 11590      6F707400 
 11591              	.LASF41:
 11592 0419 55535F4C 		.ascii	"US_LONPRIO\000"
 11592      4F4E5052 
 11592      494F00
 11593              	.LASF98:
 11594 0424 5F6F6666 		.ascii	"_offset\000"
 11594      73657400 
 11595              	.LASF95:
 11596 042c 5F756275 		.ascii	"_ubuf\000"
 11596      6600
 11597              	.LASF229:
 11598 0432 75736172 		.ascii	"usart_lon_set_beta1_rx_len\000"
 11598      745F6C6F 
 11598      6E5F7365 
 11598      745F6265 
 11598      7461315F 
 11599              	.LASF281:
 11600 044d 75736172 		.ascii	"usart_set_spi_master_baudrate\000"
ARM GAS  /tmp/ccJYkMjP.s 			page 250


 11600      745F7365 
 11600      745F7370 
 11600      695F6D61 
 11600      73746572 
 11601              	.LASF240:
 11602 046b 756C5F6D 		.ascii	"ul_mck\000"
 11602      636B00
 11603              	.LASF109:
 11604 0472 5F656D65 		.ascii	"_emergency\000"
 11604      7267656E 
 11604      637900
 11605              	.LASF260:
 11606 047d 75736172 		.ascii	"usart_lin_disable_checksum\000"
 11606      745F6C69 
 11606      6E5F6469 
 11606      7361626C 
 11606      655F6368 
 11607              	.LASF218:
 11608 0498 75635F70 		.ascii	"uc_pb\000"
 11608      6200
 11609              	.LASF193:
 11610 049e 756C5F61 		.ascii	"ul_addr\000"
 11610      64647200 
 11611              	.LASF162:
 11612 04a6 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 11612      6972715F 
 11612      70726576 
 11612      5F696E74 
 11612      65727275 
 11613              	.LASF171:
 11614 04c3 73616D5F 		.ascii	"sam_usart_opt_t\000"
 11614      75736172 
 11614      745F6F70 
 11614      745F7400 
 11615              	.LASF237:
 11616 04d3 75736172 		.ascii	"usart_lon_set_comm_type\000"
 11616      745F6C6F 
 11616      6E5F7365 
 11616      745F636F 
 11616      6D6D5F74 
 11617              	.LASF66:
 11618 04eb 5F5F746D 		.ascii	"__tm_sec\000"
 11618      5F736563 
 11618      00
 11619              	.LASF158:
 11620 04f4 7375626F 		.ascii	"suboptarg\000"
 11620      70746172 
 11620      6700
 11621              	.LASF73:
 11622 04fe 5F5F746D 		.ascii	"__tm_yday\000"
 11622      5F796461 
 11622      7900
 11623              	.LASF265:
 11624 0508 75736172 		.ascii	"usart_lin_send_wakeup_signal\000"
 11624      745F6C69 
 11624      6E5F7365 
 11624      6E645F77 
ARM GAS  /tmp/ccJYkMjP.s 			page 251


 11624      616B6575 
 11625              	.LASF108:
 11626 0525 5F696E63 		.ascii	"_inc\000"
 11626      00
 11627              	.LASF160:
 11628 052a 5F426F6F 		.ascii	"_Bool\000"
 11628      6C00
 11629              	.LASF60:
 11630 0530 5F6E6578 		.ascii	"_next\000"
 11630      7400
 11631              	.LASF34:
 11632 0536 55535F4C 		.ascii	"US_LONMR\000"
 11632      4F4E4D52 
 11632      00
 11633              	.LASF20:
 11634 053f 55535F49 		.ascii	"US_IER\000"
 11634      455200
 11635              	.LASF25:
 11636 0546 55535F54 		.ascii	"US_THR\000"
 11636      485200
 11637              	.LASF65:
 11638 054d 5F5F746D 		.ascii	"__tm\000"
 11638      00
 11639              	.LASF18:
 11640 0552 55535F43 		.ascii	"US_CR\000"
 11640      5200
 11641              	.LASF251:
 11642 0558 75736172 		.ascii	"usart_lin_disable_pdc_mode\000"
 11642      745F6C69 
 11642      6E5F6469 
 11642      7361626C 
 11642      655F7064 
 11643              	.LASF287:
 11644 0573 2E2E2F61 		.ascii	"../asf/sam/drivers/usart/usart.c\000"
 11644      73662F73 
 11644      616D2F64 
 11644      72697665 
 11644      72732F75 
 11645              	.LASF289:
 11646 0594 75736172 		.ascii	"usart_drive_RTS_pin_low\000"
 11646      745F6472 
 11646      6976655F 
 11646      5254535F 
 11646      70696E5F 
 11647              	.LASF56:
 11648 05ac 5F5F7661 		.ascii	"__value\000"
 11648      6C756500 
 11649              	.LASF116:
 11650 05b4 5F703573 		.ascii	"_p5s\000"
 11650      00
 11651              	.LASF271:
 11652 05b9 756C5F72 		.ascii	"ul_reg_val\000"
 11652      65675F76 
 11652      616C00
 11653              	.LASF151:
 11654 05c4 5F776373 		.ascii	"_wcsrtombs_state\000"
 11654      72746F6D 
ARM GAS  /tmp/ccJYkMjP.s 			page 252


 11654      62735F73 
 11654      74617465 
 11654      00
 11655              	.LASF141:
 11656 05d5 5F6D626C 		.ascii	"_mblen_state\000"
 11656      656E5F73 
 11656      74617465 
 11656      00
 11657              	.LASF37:
 11658 05e2 55535F4C 		.ascii	"US_LONL2HDR\000"
 11658      4F4E4C32 
 11658      48445200 
 11659              	.LASF254:
 11660 05ee 75736172 		.ascii	"usart_lin_enable_frame_slot\000"
 11660      745F6C69 
 11660      6E5F656E 
 11660      61626C65 
 11660      5F667261 
 11661              	.LASF245:
 11662 060a 75736172 		.ascii	"usart_lin_get_data_length\000"
 11662      745F6C69 
 11662      6E5F6765 
 11662      745F6461 
 11662      74615F6C 
 11663              	.LASF125:
 11664 0624 63686172 		.ascii	"char\000"
 11664      00
 11665              	.LASF69:
 11666 0629 5F5F746D 		.ascii	"__tm_mday\000"
 11666      5F6D6461 
 11666      7900
 11667              	.LASF122:
 11668 0633 5F736967 		.ascii	"_sig_func\000"
 11668      5F66756E 
 11668      6300
 11669              	.LASF148:
 11670 063d 5F6D6272 		.ascii	"_mbrtowc_state\000"
 11670      746F7763 
 11670      5F737461 
 11670      746500
 11671              	.LASF121:
 11672 064c 5F617465 		.ascii	"_atexit0\000"
 11672      78697430 
 11672      00
 11673              	.LASF192:
 11674 0655 75736172 		.ascii	"usart_send_address\000"
 11674      745F7365 
 11674      6E645F61 
 11674      64647265 
 11674      737300
 11675              	.LASF288:
 11676 0668 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 11676      652F746F 
 11676      72626A6F 
 11676      726E2F65 
 11676      636C6970 
 11677 069b 00       		.ascii	"\000"
ARM GAS  /tmp/ccJYkMjP.s 			page 253


 11678              	.LASF181:
 11679 069c 73747269 		.ascii	"string\000"
 11679      6E6700
 11680              	.LASF262:
 11681 06a3 75736172 		.ascii	"usart_lin_disable_parity\000"
 11681      745F6C69 
 11681      6E5F6469 
 11681      7361626C 
 11681      655F7061 
 11682              	.LASF205:
 11683 06bc 75736172 		.ascii	"usart_reset_rx\000"
 11683      745F7265 
 11683      7365745F 
 11683      727800
 11684              	.LASF188:
 11685 06cb 75736172 		.ascii	"usart_spi_release_chip_select\000"
 11685      745F7370 
 11685      695F7265 
 11685      6C656173 
 11685      655F6368 
 11686              	.LASF115:
 11687 06e9 5F726573 		.ascii	"_result_k\000"
 11687      756C745F 
 11687      6B00
 11688              	.LASF202:
 11689 06f3 75736172 		.ascii	"usart_enable_interrupt\000"
 11689      745F656E 
 11689      61626C65 
 11689      5F696E74 
 11689      65727275 
 11690              	.LASF233:
 11691 070a 75736172 		.ascii	"usart_lon_set_cdtail\000"
 11691      745F6C6F 
 11691      6E5F7365 
 11691      745F6364 
 11691      7461696C 
 11692              	.LASF53:
 11693 071f 5F5F7763 		.ascii	"__wch\000"
 11693      6800
 11694              	.LASF12:
 11695 0725 75696E74 		.ascii	"uint8_t\000"
 11695      385F7400 
 11696              	.LASF230:
 11697 072d 75736172 		.ascii	"usart_lon_set_beta1_tx_len\000"
 11697      745F6C6F 
 11697      6E5F7365 
 11697      745F6265 
 11697      7461315F 
 11698              	.LASF268:
 11699 0748 75736172 		.ascii	"usart_init_lin_master\000"
 11699      745F696E 
 11699      69745F6C 
 11699      696E5F6D 
 11699      61737465 
 11700              	.LASF94:
 11701 075e 5F636C6F 		.ascii	"_close\000"
 11701      736500
ARM GAS  /tmp/ccJYkMjP.s 			page 254


 11702              	.LASF112:
 11703 0765 5F5F7364 		.ascii	"__sdidinit\000"
 11703      6964696E 
 11703      697400
 11704              	.LASF242:
 11705 0770 75736172 		.ascii	"usart\000"
 11705      7400
 11706              	.LASF219:
 11707 0776 75736172 		.ascii	"usart_lon_set_data_len\000"
 11707      745F6C6F 
 11707      6E5F7365 
 11707      745F6461 
 11707      74615F6C 
 11708              	.LASF167:
 11709 078d 70617269 		.ascii	"parity_type\000"
 11709      74795F74 
 11709      79706500 
 11710              	.LASF173:
 11711 0799 75736172 		.ascii	"usart_spi_opt_t\000"
 11711      745F7370 
 11711      695F6F70 
 11711      745F7400 
 11712              	.LASF105:
 11713 07a9 5F737464 		.ascii	"_stdin\000"
 11713      696E00
 11714              	.LASF138:
 11715 07b0 5F67616D 		.ascii	"_gamma_signgam\000"
 11715      6D615F73 
 11715      69676E67 
 11715      616D00
 11716              	.LASF10:
 11717 07bf 6C6F6E67 		.ascii	"long long int\000"
 11717      206C6F6E 
 11717      6720696E 
 11717      7400
 11718              	.LASF189:
 11719 07cd 75736172 		.ascii	"usart_spi_force_chip_select\000"
 11719      745F7370 
 11719      695F666F 
 11719      7263655F 
 11719      63686970 
 11720              	.LASF253:
 11721 07e9 75736172 		.ascii	"usart_lin_set_wakeup_signal_type\000"
 11721      745F6C69 
 11721      6E5F7365 
 11721      745F7761 
 11721      6B657570 
 11722              	.LASF198:
 11723 080a 75736172 		.ascii	"usart_get_status\000"
 11723      745F6765 
 11723      745F7374 
 11723      61747573 
 11723      00
 11724              	.LASF84:
 11725 081b 5F626173 		.ascii	"_base\000"
 11725      6500
 11726              	.LASF47:
ARM GAS  /tmp/ccJYkMjP.s 			page 255


 11727 0821 55535F57 		.ascii	"US_WPSR\000"
 11727      50535200 
 11728              	.LASF117:
 11729 0829 5F667265 		.ascii	"_freelist\000"
 11729      656C6973 
 11729      7400
 11730              	.LASF132:
 11731 0833 5F6D756C 		.ascii	"_mult\000"
 11731      7400
 11732              	.LASF133:
 11733 0839 5F616464 		.ascii	"_add\000"
 11733      00
 11734              	.LASF215:
 11735 083e 75736172 		.ascii	"usart_lon_set_l2hdr\000"
 11735      745F6C6F 
 11735      6E5F7365 
 11735      745F6C32 
 11735      68647200 
 11736              	.LASF150:
 11737 0852 5F776372 		.ascii	"_wcrtomb_state\000"
 11737      746F6D62 
 11737      5F737461 
 11737      746500
 11738              	.LASF88:
 11739 0861 5F66696C 		.ascii	"_file\000"
 11739      6500
 11740              	.LASF255:
 11741 0867 75736172 		.ascii	"usart_lin_disable_frame_slot\000"
 11741      745F6C69 
 11741      6E5F6469 
 11741      7361626C 
 11741      655F6672 
 11742              	.LASF195:
 11743 0884 75736172 		.ascii	"usart_stop_tx_break\000"
 11743      745F7374 
 11743      6F705F74 
 11743      785F6272 
 11743      65616B00 
 11744              	.LASF225:
 11745 0898 75736172 		.ascii	"usart_lon_set_tx_idt\000"
 11745      745F6C6F 
 11745      6E5F7365 
 11745      745F7478 
 11745      5F696474 
 11746              	.LASF226:
 11747 08ad 75736172 		.ascii	"usart_lon_set_priority\000"
 11747      745F6C6F 
 11747      6E5F7365 
 11747      745F7072 
 11747      696F7269 
 11748              	.LASF176:
 11749 08c4 75736172 		.ascii	"usart_get_writeprotect_status\000"
 11749      745F6765 
 11749      745F7772 
 11749      69746570 
 11749      726F7465 
 11750              	.LASF113:
ARM GAS  /tmp/ccJYkMjP.s 			page 256


 11751 08e2 5F5F636C 		.ascii	"__cleanup\000"
 11751      65616E75 
 11751      7000
 11752              	.LASF57:
 11753 08ec 5F6D6273 		.ascii	"_mbstate_t\000"
 11753      74617465 
 11753      5F7400
 11754              	.LASF35:
 11755 08f7 55535F4C 		.ascii	"US_LONPR\000"
 11755      4F4E5052 
 11755      00
 11756              	.LASF29:
 11757 0900 52657365 		.ascii	"Reserved1\000"
 11757      72766564 
 11757      3100
 11758              	.LASF279:
 11759 090a 75736172 		.ascii	"usart_set_spi_slave_baudrate\000"
 11759      745F7365 
 11759      745F7370 
 11759      695F736C 
 11759      6176655F 
 11760              	.LASF210:
 11761 0927 75736172 		.ascii	"usart_reset_tx\000"
 11761      745F7265 
 11761      7365745F 
 11761      747800
 11762              	.LASF58:
 11763 0936 5F666C6F 		.ascii	"_flock_t\000"
 11763      636B5F74 
 11763      00
 11764              	.LASF74:
 11765 093f 5F5F746D 		.ascii	"__tm_isdst\000"
 11765      5F697364 
 11765      737400
 11766              	.LASF272:
 11767 094a 75736172 		.ascii	"usart_init_spi_master\000"
 11767      745F696E 
 11767      69745F73 
 11767      70695F6D 
 11767      61737465 
 11768              	.LASF28:
 11769 0960 55535F54 		.ascii	"US_TTGR\000"
 11769      54475200 
 11770              	.LASF235:
 11771 0968 75736172 		.ascii	"usart_lon_enable_coll_detection\000"
 11771      745F6C6F 
 11771      6E5F656E 
 11771      61626C65 
 11771      5F636F6C 
 11772              	.LASF196:
 11773 0988 75736172 		.ascii	"usart_start_tx_break\000"
 11773      745F7374 
 11773      6172745F 
 11773      74785F62 
 11773      7265616B 
 11774              	.LASF81:
 11775 099d 5F696E64 		.ascii	"_ind\000"
ARM GAS  /tmp/ccJYkMjP.s 			page 257


 11775      00
 11776              	.LASF282:
 11777 09a2 75736172 		.ascii	"usart_set_sync_master_baudrate\000"
 11777      745F7365 
 11777      745F7379 
 11777      6E635F6D 
 11777      61737465 
 11778              	.LASF191:
 11779 09c1 75736172 		.ascii	"usart_restart_rx_timeout\000"
 11779      745F7265 
 11779      73746172 
 11779      745F7278 
 11779      5F74696D 
 11780              	.LASF169:
 11781 09da 6368616E 		.ascii	"channel_mode\000"
 11781      6E656C5F 
 11781      6D6F6465 
 11781      00
 11782              	.LASF199:
 11783 09e7 75736172 		.ascii	"usart_get_interrupt_mask\000"
 11783      745F6765 
 11783      745F696E 
 11783      74657272 
 11783      7570745F 
 11784              	.LASF221:
 11785 0a00 75736172 		.ascii	"usart_lon_set_pre_len\000"
 11785      745F6C6F 
 11785      6E5F7365 
 11785      745F7072 
 11785      655F6C65 
 11786              	.LASF252:
 11787 0a16 75736172 		.ascii	"usart_lin_set_response_data_len\000"
 11787      745F6C69 
 11787      6E5F7365 
 11787      745F7265 
 11787      73706F6E 
 11788              	.LASF70:
 11789 0a36 5F5F746D 		.ascii	"__tm_mon\000"
 11789      5F6D6F6E 
 11789      00
 11790              	.LASF285:
 11791 0a3f 63645F66 		.ascii	"cd_fp\000"
 11791      7000
 11792              	.LASF277:
 11793 0a45 75736172 		.ascii	"usart_init_rs232\000"
 11793      745F696E 
 11793      69745F72 
 11793      73323332 
 11793      00
 11794              	.LASF17:
 11795 0a56 53797374 		.ascii	"SystemCoreClock\000"
 11795      656D436F 
 11795      7265436C 
 11795      6F636B00 
 11796              	.LASF38:
 11797 0a66 55535F4C 		.ascii	"US_LONBL\000"
 11797      4F4E424C 
ARM GAS  /tmp/ccJYkMjP.s 			page 258


 11797      00
 11798              	.LASF231:
 11799 0a6f 75736172 		.ascii	"usart_lon_set_dmam\000"
 11799      745F6C6F 
 11799      6E5F7365 
 11799      745F646D 
 11799      616D00
 11800              	.LASF32:
 11801 0a82 55535F4C 		.ascii	"US_LINIR\000"
 11801      494E4952 
 11801      00
 11802              	.LASF269:
 11803 0a8b 75736172 		.ascii	"usart_init_spi_slave\000"
 11803      745F696E 
 11803      69745F73 
 11803      70695F73 
 11803      6C617665 
 11804              	.LASF92:
 11805 0aa0 5F777269 		.ascii	"_write\000"
 11805      746500
 11806              	.LASF8:
 11807 0aa7 5F5F7569 		.ascii	"__uint32_t\000"
 11807      6E743332 
 11807      5F7400
 11808              	.LASF80:
 11809 0ab2 5F617465 		.ascii	"_atexit\000"
 11809      78697400 
 11810              	.LASF216:
 11811 0aba 75635F62 		.ascii	"uc_bli\000"
 11811      6C6900
 11812              	.LASF45:
 11813 0ac1 52657365 		.ascii	"Reserved2\000"
 11813      72766564 
 11813      3200
 11814              	.LASF3:
 11815 0acb 73686F72 		.ascii	"short int\000"
 11815      7420696E 
 11815      7400
 11816              	.LASF264:
 11817 0ad5 75635F61 		.ascii	"uc_action\000"
 11817      6374696F 
 11817      6E00
 11818              	.LASF30:
 11819 0adf 55535F4D 		.ascii	"US_MAN\000"
 11819      414E00
 11820              	.LASF168:
 11821 0ae6 73746F70 		.ascii	"stop_bits\000"
 11821      5F626974 
 11821      7300
 11822              	.LASF16:
 11823 0af0 49544D5F 		.ascii	"ITM_RxBuffer\000"
 11823      52784275 
 11823      66666572 
 11823      00
 11824              	.LASF228:
 11825 0afd 75635F6E 		.ascii	"uc_nps\000"
 11825      707300
ARM GAS  /tmp/ccJYkMjP.s 			page 259


 11826              	.LASF241:
 11827 0b04 75736172 		.ascii	"usart_lin_tx_complete\000"
 11827      745F6C69 
 11827      6E5F7478 
 11827      5F636F6D 
 11827      706C6574 
 11828              	.LASF124:
 11829 0b1a 5F5F7366 		.ascii	"__sf\000"
 11829      00
 11830              	.LASF62:
 11831 0b1f 5F736967 		.ascii	"_sign\000"
 11831      6E00
 11832              	.LASF172:
 11833 0b25 7370695F 		.ascii	"spi_mode\000"
 11833      6D6F6465 
 11833      00
 11834              	.LASF40:
 11835 0b2e 55535F4C 		.ascii	"US_LONB1RX\000"
 11835      4F4E4231 
 11835      525800
 11836              	.LASF111:
 11837 0b39 5F637572 		.ascii	"_current_locale\000"
 11837      72656E74 
 11837      5F6C6F63 
 11837      616C6500 
 11838              	.LASF99:
 11839 0b49 5F646174 		.ascii	"_data\000"
 11839      6100
 11840              	.LASF54:
 11841 0b4f 5F5F7763 		.ascii	"__wchb\000"
 11841      686200
 11842              	.LASF157:
 11843 0b56 5F676C6F 		.ascii	"_global_impure_ptr\000"
 11843      62616C5F 
 11843      696D7075 
 11843      72655F70 
 11843      747200
 11844              	.LASF71:
 11845 0b69 5F5F746D 		.ascii	"__tm_year\000"
 11845      5F796561 
 11845      7200
 11846              	.LASF243:
 11847 0b73 75736172 		.ascii	"usart_lin_identifier_reception_complete\000"
 11847      745F6C69 
 11847      6E5F6964 
 11847      656E7469 
 11847      66696572 
 11848              	.LASF201:
 11849 0b9b 756C5F73 		.ascii	"ul_sources\000"
 11849      6F757263 
 11849      657300
 11850              	.LASF135:
 11851 0ba6 5F737472 		.ascii	"_strtok_last\000"
 11851      746F6B5F 
 11851      6C617374 
 11851      00
 11852              	.LASF137:
ARM GAS  /tmp/ccJYkMjP.s 			page 260


 11853 0bb3 5F6C6F63 		.ascii	"_localtime_buf\000"
 11853      616C7469 
 11853      6D655F62 
 11853      756600
 11854              	.LASF48:
 11855 0bc2 55736172 		.ascii	"Usart\000"
 11855      7400
 11856              	.LASF155:
 11857 0bc8 5F756E75 		.ascii	"_unused\000"
 11857      73656400 
 11858              	.LASF5:
 11859 0bd0 5F5F7569 		.ascii	"__uint8_t\000"
 11859      6E74385F 
 11859      7400
 11860              	.LASF120:
 11861 0bda 5F6E6577 		.ascii	"_new\000"
 11861      00
 11862              	.LASF273:
 11863 0bdf 75736172 		.ascii	"usart_init_rs485\000"
 11863      745F696E 
 11863      69745F72 
 11863      73343835 
 11863      00
 11864              	.LASF118:
 11865 0bf0 5F637674 		.ascii	"_cvtlen\000"
 11865      6C656E00 
 11866              	.LASF61:
 11867 0bf8 5F6D6178 		.ascii	"_maxwds\000"
 11867      77647300 
 11868              	.LASF144:
 11869 0c00 5F6C3634 		.ascii	"_l64a_buf\000"
 11869      615F6275 
 11869      6600
 11870              	.LASF110:
 11871 0c0a 5F637572 		.ascii	"_current_category\000"
 11871      72656E74 
 11871      5F636174 
 11871      65676F72 
 11871      7900
 11872              	.LASF0:
 11873 0c1c 756E7369 		.ascii	"unsigned int\000"
 11873      676E6564 
 11873      20696E74 
 11873      00
 11874              	.LASF36:
 11875 0c29 55535F4C 		.ascii	"US_LONDL\000"
 11875      4F4E444C 
 11875      00
 11876              	.LASF24:
 11877 0c32 55535F52 		.ascii	"US_RHR\000"
 11877      485200
 11878              	.LASF59:
 11879 0c39 5F5F554C 		.ascii	"__ULong\000"
 11879      6F6E6700 
 11880              	.LASF43:
 11881 0c41 55535F49 		.ascii	"US_IDTRX\000"
 11881      44545258 
ARM GAS  /tmp/ccJYkMjP.s 			page 261


 11881      00
 11882              	.LASF97:
 11883 0c4a 5F626C6B 		.ascii	"_blksize\000"
 11883      73697A65 
 11883      00
 11884              	.LASF33:
 11885 0c53 55535F4C 		.ascii	"US_LINBRR\000"
 11885      494E4252 
 11885      5200
 11886              	.LASF213:
 11887 0c5d 75736172 		.ascii	"usart_lon_is_rx_end\000"
 11887      745F6C6F 
 11887      6E5F6973 
 11887      5F72785F 
 11887      656E6400 
 11888              	.LASF238:
 11889 0c71 75736172 		.ascii	"usart_init_lon\000"
 11889      745F696E 
 11889      69745F6C 
 11889      6F6E00
 11890              	.LASF100:
 11891 0c80 5F6C6F63 		.ascii	"_lock\000"
 11891      6B00
 11892              	.LASF166:
 11893 0c86 63686172 		.ascii	"char_length\000"
 11893      5F6C656E 
 11893      67746800 
 11894              	.LASF15:
 11895 0c92 73697A65 		.ascii	"sizetype\000"
 11895      74797065 
 11895      00
 11896              	.LASF266:
 11897 0c9b 75736172 		.ascii	"usart_lin_abort_tx\000"
 11897      745F6C69 
 11897      6E5F6162 
 11897      6F72745F 
 11897      747800
 11898              	.LASF9:
 11899 0cae 6C6F6E67 		.ascii	"long unsigned int\000"
 11899      20756E73 
 11899      69676E65 
 11899      6420696E 
 11899      7400
 11900              	.LASF174:
 11901 0cc0 7265675F 		.ascii	"reg_value\000"
 11901      76616C75 
 11901      6500
 11902              	.LASF161:
 11903 0cca 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 11903      6972715F 
 11903      63726974 
 11903      6963616C 
 11903      5F736563 
 11904              	.LASF258:
 11905 0ceb 75736172 		.ascii	"usart_lin_set_checksum_type\000"
 11905      745F6C69 
 11905      6E5F7365 
ARM GAS  /tmp/ccJYkMjP.s 			page 262


 11905      745F6368 
 11905      65636B73 
 11906              	.LASF128:
 11907 0d07 5F6E696F 		.ascii	"_niobs\000"
 11907      627300
 11908              	.LASF52:
 11909 0d0e 77696E74 		.ascii	"wint_t\000"
 11909      5F7400
 11910              	.LASF197:
 11911 0d15 75736172 		.ascii	"usart_reset_status\000"
 11911      745F7265 
 11911      7365745F 
 11911      73746174 
 11911      757300
 11912              	.LASF13:
 11913 0d28 696E7433 		.ascii	"int32_t\000"
 11913      325F7400 
 11914              	.LASF77:
 11915 0d30 5F64736F 		.ascii	"_dso_handle\000"
 11915      5F68616E 
 11915      646C6500 
 11916              	.LASF234:
 11917 0d3c 75736172 		.ascii	"usart_lon_set_tcol\000"
 11917      745F6C6F 
 11917      6E5F7365 
 11917      745F7463 
 11917      6F6C00
 11918              	.LASF179:
 11919 0d4f 75736172 		.ascii	"usart_enable_writeprotect\000"
 11919      745F656E 
 11919      61626C65 
 11919      5F777269 
 11919      74657072 
 11920              	.LASF267:
 11921 0d69 75736172 		.ascii	"usart_init_lin_slave\000"
 11921      745F696E 
 11921      69745F6C 
 11921      696E5F73 
 11921      6C617665 
 11922              	.LASF119:
 11923 0d7e 5F637674 		.ascii	"_cvtbuf\000"
 11923      62756600 
 11924              	.LASF2:
 11925 0d86 756E7369 		.ascii	"unsigned char\000"
 11925      676E6564 
 11925      20636861 
 11925      7200
 11926              	.LASF224:
 11927 0d94 756C5F74 		.ascii	"ul_time\000"
 11927      696D6500 
 11928              	.LASF39:
 11929 0d9c 55535F4C 		.ascii	"US_LONB1TX\000"
 11929      4F4E4231 
 11929      545800
 11930              	.LASF204:
 11931 0da7 74696D65 		.ascii	"timeout\000"
 11931      6F757400 
ARM GAS  /tmp/ccJYkMjP.s 			page 263


 11932              	.LASF49:
 11933 0daf 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 11933      4B5F5245 
 11933      43555253 
 11933      4956455F 
 11933      5400
 11934              	.LASF249:
 11935 0dc1 75635F69 		.ascii	"uc_id\000"
 11935      6400
 11936              	.LASF286:
 11937 0dc7 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 11937      43393920 
 11937      362E332E 
 11937      31203230 
 11937      31373036 
 11938 0dfa 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 11938      76352D64 
 11938      3136202D 
 11938      6D666C6F 
 11938      61742D61 
 11939 0e2d 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 11939      6E2D7365 
 11939      6374696F 
 11939      6E73202D 
 11939      66646174 
 11940 0e60 6F6E7374 		.ascii	"onstant\000"
 11940      616E7400 
 11941              	.LASF247:
 11942 0e68 75736172 		.ascii	"usart_lin_read_identifier\000"
 11942      745F6C69 
 11942      6E5F7265 
 11942      61645F69 
 11942      64656E74 
 11943              	.LASF83:
 11944 0e82 5F5F7362 		.ascii	"__sbuf\000"
 11944      756600
 11945              	.LASF212:
 11946 0e89 75736172 		.ascii	"usart_enable_tx\000"
 11946      745F656E 
 11946      61626C65 
 11946      5F747800 
 11947              	.LASF127:
 11948 0e99 5F676C75 		.ascii	"_glue\000"
 11948      6500
 11949              	.LASF22:
 11950 0e9f 55535F49 		.ascii	"US_IMR\000"
 11950      4D5200
 11951              	.LASF123:
 11952 0ea6 5F5F7367 		.ascii	"__sglue\000"
 11952      6C756500 
 11953              	.LASF146:
 11954 0eae 5F676574 		.ascii	"_getdate_err\000"
 11954      64617465 
 11954      5F657272 
 11954      00
 11955              	.LASF31:
 11956 0ebb 55535F4C 		.ascii	"US_LINMR\000"
ARM GAS  /tmp/ccJYkMjP.s 			page 264


 11956      494E4D52 
 11956      00
 11957              	.LASF142:
 11958 0ec4 5F6D6274 		.ascii	"_mbtowc_state\000"
 11958      6F77635F 
 11958      73746174 
 11958      6500
 11959              	.LASF23:
 11960 0ed2 55535F43 		.ascii	"US_CSR\000"
 11960      535200
 11961              	.LASF42:
 11962 0ed9 55535F49 		.ascii	"US_IDTTX\000"
 11962      44545458 
 11962      00
 11963              	.LASF76:
 11964 0ee2 5F666E61 		.ascii	"_fnargs\000"
 11964      72677300 
 11965              	.LASF1:
 11966 0eea 7369676E 		.ascii	"signed char\000"
 11966      65642063 
 11966      68617200 
 11967              	.LASF274:
 11968 0ef6 75736172 		.ascii	"usart_init_sync_slave\000"
 11968      745F696E 
 11968      69745F73 
 11968      796E635F 
 11968      736C6176 
 11969              	.LASF103:
 11970 0f0c 5F726565 		.ascii	"_reent\000"
 11970      6E7400
 11971              	.LASF4:
 11972 0f13 73686F72 		.ascii	"short unsigned int\000"
 11972      7420756E 
 11972      7369676E 
 11972      65642069 
 11972      6E7400
 11973              	.LASF78:
 11974 0f26 5F666E74 		.ascii	"_fntypes\000"
 11974      79706573 
 11974      00
 11975              	.LASF86:
 11976 0f2f 5F5F7346 		.ascii	"__sFILE\000"
 11976      494C4500 
 11977              	.LASF177:
 11978 0f37 75736172 		.ascii	"usart_getchar\000"
 11978      745F6765 
 11978      74636861 
 11978      7200
 11979              	.LASF85:
 11980 0f45 5F73697A 		.ascii	"_size\000"
 11980      6500
 11981              	.LASF164:
 11982 0f4b 646F7562 		.ascii	"double\000"
 11982      6C6500
 11983              	.LASF27:
 11984 0f52 55535F52 		.ascii	"US_RTOR\000"
 11984      544F5200 
ARM GAS  /tmp/ccJYkMjP.s 			page 265


 11985              	.LASF214:
 11986 0f5a 75736172 		.ascii	"usart_lon_is_tx_end\000"
 11986      745F6C6F 
 11986      6E5F6973 
 11986      5F74785F 
 11986      656E6400 
 11987              	.LASF232:
 11988 0f6e 75635F74 		.ascii	"uc_type\000"
 11988      79706500 
 11989              	.LASF50:
 11990 0f76 5F6F6666 		.ascii	"_off_t\000"
 11990      5F7400
 11991              	.LASF96:
 11992 0f7d 5F6E6275 		.ascii	"_nbuf\000"
 11992      6600
 11993              	.LASF186:
 11994 0f83 75736172 		.ascii	"usart_is_tx_ready\000"
 11994      745F6973 
 11994      5F74785F 
 11994      72656164 
 11994      7900
 11995              	.LASF283:
 11996 0f95 75736172 		.ascii	"usart_set_async_baudrate\000"
 11996      745F7365 
 11996      745F6173 
 11996      796E635F 
 11996      62617564 
 11997              	.LASF261:
 11998 0fae 75736172 		.ascii	"usart_lin_enable_parity\000"
 11998      745F6C69 
 11998      6E5F656E 
 11998      61626C65 
 11998      5F706172 
 11999              	.LASF206:
 12000 0fc6 75736172 		.ascii	"usart_disable_rx\000"
 12000      745F6469 
 12000      7361626C 
 12000      655F7278 
 12000      00
 12001              	.LASF79:
 12002 0fd7 5F69735F 		.ascii	"_is_cxa\000"
 12002      63786100 
 12003              	.LASF131:
 12004 0fdf 5F736565 		.ascii	"_seed\000"
 12004      6400
 12005              	.LASF139:
 12006 0fe5 5F72616E 		.ascii	"_rand_next\000"
 12006      645F6E65 
 12006      787400
 12007              	.LASF93:
 12008 0ff0 5F736565 		.ascii	"_seek\000"
 12008      6B00
 12009              	.LASF239:
 12010 0ff6 756C5F62 		.ascii	"ul_baudrate\000"
 12010      61756472 
 12010      61746500 
 12011              	.LASF259:
ARM GAS  /tmp/ccJYkMjP.s 			page 266


 12012 1002 75736172 		.ascii	"usart_lin_enable_checksum\000"
 12012      745F6C69 
 12012      6E5F656E 
 12012      61626C65 
 12012      5F636865 
 12013              	.LASF284:
 12014 101c 6F766572 		.ascii	"over\000"
 12014      00
 12015              	.LASF107:
 12016 1021 5F737464 		.ascii	"_stderr\000"
 12016      65727200 
 12017              	.LASF154:
 12018 1029 5F6E6D61 		.ascii	"_nmalloc\000"
 12018      6C6C6F63 
 12018      00
 12019              	.LASF129:
 12020 1032 5F696F62 		.ascii	"_iobs\000"
 12020      7300
 12021              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
