ARM GAS  /tmp/ccPSOZXt.s 			page 1


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
  12              		.file	"uart.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.uart_init,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	uart_init
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	uart_init, %function
  25              	uart_init:
  26              	.LFB142:
  27              		.file 1 "../asf/sam/drivers/uart/uart.c"
   1:../asf/sam/drivers/uart/uart.c **** /**
   2:../asf/sam/drivers/uart/uart.c ****  * \file
   3:../asf/sam/drivers/uart/uart.c ****  *
   4:../asf/sam/drivers/uart/uart.c ****  * \brief Universal Asynchronous Receiver Transceiver (UART) driver for SAM.
   5:../asf/sam/drivers/uart/uart.c ****  *
   6:../asf/sam/drivers/uart/uart.c ****  * Copyright (c) 2011-2015 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/uart/uart.c ****  *
   8:../asf/sam/drivers/uart/uart.c ****  * \asf_license_start
   9:../asf/sam/drivers/uart/uart.c ****  *
  10:../asf/sam/drivers/uart/uart.c ****  * \page License
  11:../asf/sam/drivers/uart/uart.c ****  *
  12:../asf/sam/drivers/uart/uart.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/uart/uart.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/uart/uart.c ****  *
  15:../asf/sam/drivers/uart/uart.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/uart/uart.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/uart/uart.c ****  *
  18:../asf/sam/drivers/uart/uart.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/uart/uart.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/uart/uart.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/uart/uart.c ****  *
  22:../asf/sam/drivers/uart/uart.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/uart/uart.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/uart/uart.c ****  *
  25:../asf/sam/drivers/uart/uart.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/uart/uart.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/uart/uart.c ****  *
  28:../asf/sam/drivers/uart/uart.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/uart/uart.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/uart/uart.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccPSOZXt.s 			page 2


  31:../asf/sam/drivers/uart/uart.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/uart/uart.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/uart/uart.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/uart/uart.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/uart/uart.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/uart/uart.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/uart/uart.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/uart/uart.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/uart/uart.c ****  *
  40:../asf/sam/drivers/uart/uart.c ****  * \asf_license_stop
  41:../asf/sam/drivers/uart/uart.c ****  *
  42:../asf/sam/drivers/uart/uart.c ****  */
  43:../asf/sam/drivers/uart/uart.c **** /*
  44:../asf/sam/drivers/uart/uart.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/uart/uart.c ****  */
  46:../asf/sam/drivers/uart/uart.c **** 
  47:../asf/sam/drivers/uart/uart.c **** #include "uart.h"
  48:../asf/sam/drivers/uart/uart.c **** 
  49:../asf/sam/drivers/uart/uart.c **** /// @cond 0
  50:../asf/sam/drivers/uart/uart.c **** /**INDENT-OFF**/
  51:../asf/sam/drivers/uart/uart.c **** #ifdef __cplusplus
  52:../asf/sam/drivers/uart/uart.c **** extern "C" {
  53:../asf/sam/drivers/uart/uart.c **** #endif
  54:../asf/sam/drivers/uart/uart.c **** /**INDENT-ON**/
  55:../asf/sam/drivers/uart/uart.c **** /// @endcond
  56:../asf/sam/drivers/uart/uart.c **** 
  57:../asf/sam/drivers/uart/uart.c **** /**
  58:../asf/sam/drivers/uart/uart.c ****  * \defgroup sam_drivers_uart_group Universal Asynchronous Receiver Transceiver (UART)
  59:../asf/sam/drivers/uart/uart.c ****  *
  60:../asf/sam/drivers/uart/uart.c ****  * The Universal Asynchronous Receiver Transmitter features a two-pin UART that
  61:../asf/sam/drivers/uart/uart.c ****  * can be used for communication and trace purposes and offers an ideal medium
  62:../asf/sam/drivers/uart/uart.c ****  * for in-situ programming solutions. Moreover, the association with two
  63:../asf/sam/drivers/uart/uart.c ****  * peripheral DMA controller (PDC) channels permits packet handling for these
  64:../asf/sam/drivers/uart/uart.c ****  * tasks with processor time reduced to a minimum.
  65:../asf/sam/drivers/uart/uart.c ****  *
  66:../asf/sam/drivers/uart/uart.c ****  * \par Usage
  67:../asf/sam/drivers/uart/uart.c ****  *
  68:../asf/sam/drivers/uart/uart.c ****  * -# Enable the UART peripheral clock in the PMC.
  69:../asf/sam/drivers/uart/uart.c ****  * -# Enable the required UART PIOs (see pio.h).
  70:../asf/sam/drivers/uart/uart.c ****  * -# Configure the UART by calling uart_init.
  71:../asf/sam/drivers/uart/uart.c ****  * -# Send data through the UART using the uart_write.
  72:../asf/sam/drivers/uart/uart.c ****  * -# Receive data from the UART using the uart_read; the availability of data
  73:../asf/sam/drivers/uart/uart.c ****  *    can be polled with uart_is_rx_ready.
  74:../asf/sam/drivers/uart/uart.c ****  * -# Disable the transmitter and/or the receiver of the UART with
  75:../asf/sam/drivers/uart/uart.c ****  *    uart_disable_tx and uart_disable_rx.
  76:../asf/sam/drivers/uart/uart.c ****  *
  77:../asf/sam/drivers/uart/uart.c ****  * @{
  78:../asf/sam/drivers/uart/uart.c ****  */
  79:../asf/sam/drivers/uart/uart.c **** 
  80:../asf/sam/drivers/uart/uart.c **** /**
  81:../asf/sam/drivers/uart/uart.c ****  * \brief Configure UART with the specified parameters.
  82:../asf/sam/drivers/uart/uart.c ****  *
  83:../asf/sam/drivers/uart/uart.c ****  * \note The PMC and PIOs must be configured first.
  84:../asf/sam/drivers/uart/uart.c ****  *
  85:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
  86:../asf/sam/drivers/uart/uart.c ****  * \param p_uart_opt Pointer to sam_uart_opt_t instance.
  87:../asf/sam/drivers/uart/uart.c ****  *
ARM GAS  /tmp/ccPSOZXt.s 			page 3


  88:../asf/sam/drivers/uart/uart.c ****  * \retval 0 Success.
  89:../asf/sam/drivers/uart/uart.c ****  * \retval 1 Bad baud rate generator value.
  90:../asf/sam/drivers/uart/uart.c ****  */
  91:../asf/sam/drivers/uart/uart.c **** uint32_t uart_init(Uart *p_uart, const sam_uart_opt_t *p_uart_opt)
  92:../asf/sam/drivers/uart/uart.c **** {
  28              		.loc 1 92 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
  34 0000 30B4     		push	{r4, r5}
  35              		.cfi_def_cfa_offset 8
  36              		.cfi_offset 4, -8
  37              		.cfi_offset 5, -4
  93:../asf/sam/drivers/uart/uart.c **** 	uint32_t cd = 0;
  94:../asf/sam/drivers/uart/uart.c **** 
  95:../asf/sam/drivers/uart/uart.c **** 	/* Reset and disable receiver & transmitter */
  96:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_CR = UART_CR_RSTRX | UART_CR_RSTTX
  97:../asf/sam/drivers/uart/uart.c **** 			| UART_CR_RXDIS | UART_CR_TXDIS;
  98:../asf/sam/drivers/uart/uart.c **** 
  99:../asf/sam/drivers/uart/uart.c **** 	/* Check and configure baudrate */
 100:../asf/sam/drivers/uart/uart.c **** 	/* Asynchronous, no oversampling */
 101:../asf/sam/drivers/uart/uart.c **** 	cd = (p_uart_opt->ul_mck / p_uart_opt->ul_baudrate) / UART_MCK_DIV;
  38              		.loc 1 101 0
  39 0002 91E81800 		ldm	r1, {r3, r4}
  92:../asf/sam/drivers/uart/uart.c **** 	uint32_t cd = 0;
  40              		.loc 1 92 0
  41 0006 0246     		mov	r2, r0
 102:../asf/sam/drivers/uart/uart.c **** 	if (cd < UART_MCK_DIV_MIN_FACTOR || cd > UART_MCK_DIV_MAX_FACTOR)
  42              		.loc 1 102 0
  43 0008 4FF6FE70 		movw	r0, #65534
  44              	.LVL1:
  96:../asf/sam/drivers/uart/uart.c **** 			| UART_CR_RXDIS | UART_CR_TXDIS;
  45              		.loc 1 96 0
  46 000c AC25     		movs	r5, #172
 101:../asf/sam/drivers/uart/uart.c **** 	if (cd < UART_MCK_DIV_MIN_FACTOR || cd > UART_MCK_DIV_MAX_FACTOR)
  47              		.loc 1 101 0
  48 000e B3FBF4F3 		udiv	r3, r3, r4
  49 0012 1B09     		lsrs	r3, r3, #4
  50              	.LVL2:
  96:../asf/sam/drivers/uart/uart.c **** 			| UART_CR_RXDIS | UART_CR_TXDIS;
  51              		.loc 1 96 0
  52 0014 1560     		str	r5, [r2]
  53              		.loc 1 102 0
  54 0016 5C1E     		subs	r4, r3, #1
  55 0018 8442     		cmp	r4, r0
  56 001a 07D8     		bhi	.L3
 103:../asf/sam/drivers/uart/uart.c **** 		return 1;
 104:../asf/sam/drivers/uart/uart.c **** 
 105:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_BRGR = cd;
 106:../asf/sam/drivers/uart/uart.c **** 	/* Configure mode */
 107:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_MR = p_uart_opt->ul_mode;
  57              		.loc 1 107 0
  58 001c 8C68     		ldr	r4, [r1, #8]
 108:../asf/sam/drivers/uart/uart.c **** 
 109:../asf/sam/drivers/uart/uart.c **** #if (!SAMV71 && !SAMV70 && !SAME70 && !SAMS70)
ARM GAS  /tmp/ccPSOZXt.s 			page 4


 110:../asf/sam/drivers/uart/uart.c **** 	/* Disable PDC channel */
 111:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_PTCR = UART_PTCR_RXTDIS | UART_PTCR_TXTDIS;
 112:../asf/sam/drivers/uart/uart.c **** #endif
 113:../asf/sam/drivers/uart/uart.c **** 
 114:../asf/sam/drivers/uart/uart.c **** 	/* Enable receiver and transmitter */
 115:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_CR = UART_CR_RXEN | UART_CR_TXEN;
  59              		.loc 1 115 0
  60 001e 5021     		movs	r1, #80
  61              	.LVL3:
 105:../asf/sam/drivers/uart/uart.c **** 	/* Configure mode */
  62              		.loc 1 105 0
  63 0020 1362     		str	r3, [r2, #32]
 116:../asf/sam/drivers/uart/uart.c **** 
 117:../asf/sam/drivers/uart/uart.c **** 	return 0;
  64              		.loc 1 117 0
  65 0022 0020     		movs	r0, #0
 107:../asf/sam/drivers/uart/uart.c **** 
  66              		.loc 1 107 0
  67 0024 5460     		str	r4, [r2, #4]
 115:../asf/sam/drivers/uart/uart.c **** 
  68              		.loc 1 115 0
  69 0026 1160     		str	r1, [r2]
 118:../asf/sam/drivers/uart/uart.c **** }
  70              		.loc 1 118 0
  71 0028 30BC     		pop	{r4, r5}
  72              		.cfi_remember_state
  73              		.cfi_restore 5
  74              		.cfi_restore 4
  75              		.cfi_def_cfa_offset 0
  76 002a 7047     		bx	lr
  77              	.LVL4:
  78              	.L3:
  79              		.cfi_restore_state
 103:../asf/sam/drivers/uart/uart.c **** 
  80              		.loc 1 103 0
  81 002c 0120     		movs	r0, #1
  82              		.loc 1 118 0
  83 002e 30BC     		pop	{r4, r5}
  84              		.cfi_restore 4
  85              		.cfi_restore 5
  86              		.cfi_def_cfa_offset 0
  87 0030 7047     		bx	lr
  88              		.cfi_endproc
  89              	.LFE142:
  90              		.size	uart_init, .-uart_init
  91 0032 00BF     		.section	.text.uart_enable_tx,"ax",%progbits
  92              		.align	1
  93              		.p2align 2,,3
  94              		.global	uart_enable_tx
  95              		.syntax unified
  96              		.thumb
  97              		.thumb_func
  98              		.fpu fpv5-d16
  99              		.type	uart_enable_tx, %function
 100              	uart_enable_tx:
 101              	.LFB143:
 119:../asf/sam/drivers/uart/uart.c **** 
ARM GAS  /tmp/ccPSOZXt.s 			page 5


 120:../asf/sam/drivers/uart/uart.c **** /**
 121:../asf/sam/drivers/uart/uart.c ****  * \brief Enable UART transmitter.
 122:../asf/sam/drivers/uart/uart.c ****  *
 123:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 124:../asf/sam/drivers/uart/uart.c ****  */
 125:../asf/sam/drivers/uart/uart.c **** void uart_enable_tx(Uart *p_uart)
 126:../asf/sam/drivers/uart/uart.c **** {
 102              		.loc 1 126 0
 103              		.cfi_startproc
 104              		@ args = 0, pretend = 0, frame = 0
 105              		@ frame_needed = 0, uses_anonymous_args = 0
 106              		@ link register save eliminated.
 107              	.LVL5:
 127:../asf/sam/drivers/uart/uart.c **** 	/* Enable transmitter */
 128:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_CR = UART_CR_TXEN;
 108              		.loc 1 128 0
 109 0000 4023     		movs	r3, #64
 110 0002 0360     		str	r3, [r0]
 111 0004 7047     		bx	lr
 112              		.cfi_endproc
 113              	.LFE143:
 114              		.size	uart_enable_tx, .-uart_enable_tx
 115 0006 00BF     		.section	.text.uart_disable_tx,"ax",%progbits
 116              		.align	1
 117              		.p2align 2,,3
 118              		.global	uart_disable_tx
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu fpv5-d16
 123              		.type	uart_disable_tx, %function
 124              	uart_disable_tx:
 125              	.LFB144:
 129:../asf/sam/drivers/uart/uart.c **** }
 130:../asf/sam/drivers/uart/uart.c **** 
 131:../asf/sam/drivers/uart/uart.c **** /**
 132:../asf/sam/drivers/uart/uart.c ****  * \brief Disable UART transmitter.
 133:../asf/sam/drivers/uart/uart.c ****  *
 134:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 135:../asf/sam/drivers/uart/uart.c ****  */
 136:../asf/sam/drivers/uart/uart.c **** void uart_disable_tx(Uart *p_uart)
 137:../asf/sam/drivers/uart/uart.c **** {
 126              		.loc 1 137 0
 127              		.cfi_startproc
 128              		@ args = 0, pretend = 0, frame = 0
 129              		@ frame_needed = 0, uses_anonymous_args = 0
 130              		@ link register save eliminated.
 131              	.LVL6:
 138:../asf/sam/drivers/uart/uart.c **** 	/* Disable transmitter */
 139:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_CR = UART_CR_TXDIS;
 132              		.loc 1 139 0
 133 0000 8023     		movs	r3, #128
 134 0002 0360     		str	r3, [r0]
 135 0004 7047     		bx	lr
 136              		.cfi_endproc
 137              	.LFE144:
 138              		.size	uart_disable_tx, .-uart_disable_tx
ARM GAS  /tmp/ccPSOZXt.s 			page 6


 139 0006 00BF     		.section	.text.uart_reset_tx,"ax",%progbits
 140              		.align	1
 141              		.p2align 2,,3
 142              		.global	uart_reset_tx
 143              		.syntax unified
 144              		.thumb
 145              		.thumb_func
 146              		.fpu fpv5-d16
 147              		.type	uart_reset_tx, %function
 148              	uart_reset_tx:
 149              	.LFB145:
 140:../asf/sam/drivers/uart/uart.c **** }
 141:../asf/sam/drivers/uart/uart.c **** 
 142:../asf/sam/drivers/uart/uart.c **** /**
 143:../asf/sam/drivers/uart/uart.c ****  * \brief Reset UART transmitter.
 144:../asf/sam/drivers/uart/uart.c ****  *
 145:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 146:../asf/sam/drivers/uart/uart.c ****  */
 147:../asf/sam/drivers/uart/uart.c **** void uart_reset_tx(Uart *p_uart)
 148:../asf/sam/drivers/uart/uart.c **** {
 150              		.loc 1 148 0
 151              		.cfi_startproc
 152              		@ args = 0, pretend = 0, frame = 0
 153              		@ frame_needed = 0, uses_anonymous_args = 0
 154              		@ link register save eliminated.
 155              	.LVL7:
 149:../asf/sam/drivers/uart/uart.c **** 	/* Reset transmitter */
 150:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_CR = UART_CR_RSTTX | UART_CR_TXDIS;
 156              		.loc 1 150 0
 157 0000 8823     		movs	r3, #136
 158 0002 0360     		str	r3, [r0]
 159 0004 7047     		bx	lr
 160              		.cfi_endproc
 161              	.LFE145:
 162              		.size	uart_reset_tx, .-uart_reset_tx
 163 0006 00BF     		.section	.text.uart_enable_rx,"ax",%progbits
 164              		.align	1
 165              		.p2align 2,,3
 166              		.global	uart_enable_rx
 167              		.syntax unified
 168              		.thumb
 169              		.thumb_func
 170              		.fpu fpv5-d16
 171              		.type	uart_enable_rx, %function
 172              	uart_enable_rx:
 173              	.LFB146:
 151:../asf/sam/drivers/uart/uart.c **** }
 152:../asf/sam/drivers/uart/uart.c **** 
 153:../asf/sam/drivers/uart/uart.c **** /**
 154:../asf/sam/drivers/uart/uart.c ****  * \brief Enable UART receiver.
 155:../asf/sam/drivers/uart/uart.c ****  *
 156:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 157:../asf/sam/drivers/uart/uart.c ****  */
 158:../asf/sam/drivers/uart/uart.c **** void uart_enable_rx(Uart *p_uart)
 159:../asf/sam/drivers/uart/uart.c **** {
 174              		.loc 1 159 0
 175              		.cfi_startproc
ARM GAS  /tmp/ccPSOZXt.s 			page 7


 176              		@ args = 0, pretend = 0, frame = 0
 177              		@ frame_needed = 0, uses_anonymous_args = 0
 178              		@ link register save eliminated.
 179              	.LVL8:
 160:../asf/sam/drivers/uart/uart.c **** 	/* Enable receiver */
 161:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_CR = UART_CR_RXEN;
 180              		.loc 1 161 0
 181 0000 1023     		movs	r3, #16
 182 0002 0360     		str	r3, [r0]
 183 0004 7047     		bx	lr
 184              		.cfi_endproc
 185              	.LFE146:
 186              		.size	uart_enable_rx, .-uart_enable_rx
 187 0006 00BF     		.section	.text.uart_disable_rx,"ax",%progbits
 188              		.align	1
 189              		.p2align 2,,3
 190              		.global	uart_disable_rx
 191              		.syntax unified
 192              		.thumb
 193              		.thumb_func
 194              		.fpu fpv5-d16
 195              		.type	uart_disable_rx, %function
 196              	uart_disable_rx:
 197              	.LFB147:
 162:../asf/sam/drivers/uart/uart.c **** }
 163:../asf/sam/drivers/uart/uart.c **** 
 164:../asf/sam/drivers/uart/uart.c **** /**
 165:../asf/sam/drivers/uart/uart.c ****  * \brief Disable UART receiver.
 166:../asf/sam/drivers/uart/uart.c ****  *
 167:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 168:../asf/sam/drivers/uart/uart.c ****  */
 169:../asf/sam/drivers/uart/uart.c **** void uart_disable_rx(Uart *p_uart)
 170:../asf/sam/drivers/uart/uart.c **** {
 198              		.loc 1 170 0
 199              		.cfi_startproc
 200              		@ args = 0, pretend = 0, frame = 0
 201              		@ frame_needed = 0, uses_anonymous_args = 0
 202              		@ link register save eliminated.
 203              	.LVL9:
 171:../asf/sam/drivers/uart/uart.c **** 	/* Disable receiver */
 172:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_CR = UART_CR_RXDIS;
 204              		.loc 1 172 0
 205 0000 2023     		movs	r3, #32
 206 0002 0360     		str	r3, [r0]
 207 0004 7047     		bx	lr
 208              		.cfi_endproc
 209              	.LFE147:
 210              		.size	uart_disable_rx, .-uart_disable_rx
 211 0006 00BF     		.section	.text.uart_reset_rx,"ax",%progbits
 212              		.align	1
 213              		.p2align 2,,3
 214              		.global	uart_reset_rx
 215              		.syntax unified
 216              		.thumb
 217              		.thumb_func
 218              		.fpu fpv5-d16
 219              		.type	uart_reset_rx, %function
ARM GAS  /tmp/ccPSOZXt.s 			page 8


 220              	uart_reset_rx:
 221              	.LFB148:
 173:../asf/sam/drivers/uart/uart.c **** }
 174:../asf/sam/drivers/uart/uart.c **** 
 175:../asf/sam/drivers/uart/uart.c **** /**
 176:../asf/sam/drivers/uart/uart.c ****  * \brief Reset UART receiver.
 177:../asf/sam/drivers/uart/uart.c ****  *
 178:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 179:../asf/sam/drivers/uart/uart.c ****  */
 180:../asf/sam/drivers/uart/uart.c **** void uart_reset_rx(Uart *p_uart)
 181:../asf/sam/drivers/uart/uart.c **** {
 222              		.loc 1 181 0
 223              		.cfi_startproc
 224              		@ args = 0, pretend = 0, frame = 0
 225              		@ frame_needed = 0, uses_anonymous_args = 0
 226              		@ link register save eliminated.
 227              	.LVL10:
 182:../asf/sam/drivers/uart/uart.c **** 	/* Reset receiver */
 183:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_CR = UART_CR_RSTRX | UART_CR_RXDIS;
 228              		.loc 1 183 0
 229 0000 2423     		movs	r3, #36
 230 0002 0360     		str	r3, [r0]
 231 0004 7047     		bx	lr
 232              		.cfi_endproc
 233              	.LFE148:
 234              		.size	uart_reset_rx, .-uart_reset_rx
 235 0006 00BF     		.section	.text.uart_enable,"ax",%progbits
 236              		.align	1
 237              		.p2align 2,,3
 238              		.global	uart_enable
 239              		.syntax unified
 240              		.thumb
 241              		.thumb_func
 242              		.fpu fpv5-d16
 243              		.type	uart_enable, %function
 244              	uart_enable:
 245              	.LFB149:
 184:../asf/sam/drivers/uart/uart.c **** }
 185:../asf/sam/drivers/uart/uart.c **** 
 186:../asf/sam/drivers/uart/uart.c **** /**
 187:../asf/sam/drivers/uart/uart.c ****  * \brief Enable UART receiver and transmitter.
 188:../asf/sam/drivers/uart/uart.c ****  *
 189:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 190:../asf/sam/drivers/uart/uart.c ****  */
 191:../asf/sam/drivers/uart/uart.c **** void uart_enable(Uart *p_uart)
 192:../asf/sam/drivers/uart/uart.c **** {
 246              		.loc 1 192 0
 247              		.cfi_startproc
 248              		@ args = 0, pretend = 0, frame = 0
 249              		@ frame_needed = 0, uses_anonymous_args = 0
 250              		@ link register save eliminated.
 251              	.LVL11:
 193:../asf/sam/drivers/uart/uart.c **** 	/* Enable receiver and transmitter */
 194:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_CR = UART_CR_RXEN | UART_CR_TXEN;
 252              		.loc 1 194 0
 253 0000 5023     		movs	r3, #80
 254 0002 0360     		str	r3, [r0]
ARM GAS  /tmp/ccPSOZXt.s 			page 9


 255 0004 7047     		bx	lr
 256              		.cfi_endproc
 257              	.LFE149:
 258              		.size	uart_enable, .-uart_enable
 259 0006 00BF     		.section	.text.uart_disable,"ax",%progbits
 260              		.align	1
 261              		.p2align 2,,3
 262              		.global	uart_disable
 263              		.syntax unified
 264              		.thumb
 265              		.thumb_func
 266              		.fpu fpv5-d16
 267              		.type	uart_disable, %function
 268              	uart_disable:
 269              	.LFB150:
 195:../asf/sam/drivers/uart/uart.c **** }
 196:../asf/sam/drivers/uart/uart.c **** 
 197:../asf/sam/drivers/uart/uart.c **** /**
 198:../asf/sam/drivers/uart/uart.c ****  * \brief Disable UART receiver and transmitter.
 199:../asf/sam/drivers/uart/uart.c ****  *
 200:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 201:../asf/sam/drivers/uart/uart.c ****  */
 202:../asf/sam/drivers/uart/uart.c **** void uart_disable(Uart *p_uart)
 203:../asf/sam/drivers/uart/uart.c **** {
 270              		.loc 1 203 0
 271              		.cfi_startproc
 272              		@ args = 0, pretend = 0, frame = 0
 273              		@ frame_needed = 0, uses_anonymous_args = 0
 274              		@ link register save eliminated.
 275              	.LVL12:
 204:../asf/sam/drivers/uart/uart.c **** 	/* Disable receiver and transmitter */
 205:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_CR = UART_CR_RXDIS | UART_CR_TXDIS;
 276              		.loc 1 205 0
 277 0000 A023     		movs	r3, #160
 278 0002 0360     		str	r3, [r0]
 279 0004 7047     		bx	lr
 280              		.cfi_endproc
 281              	.LFE150:
 282              		.size	uart_disable, .-uart_disable
 283 0006 00BF     		.section	.text.uart_reset,"ax",%progbits
 284              		.align	1
 285              		.p2align 2,,3
 286              		.global	uart_reset
 287              		.syntax unified
 288              		.thumb
 289              		.thumb_func
 290              		.fpu fpv5-d16
 291              		.type	uart_reset, %function
 292              	uart_reset:
 293              	.LFB151:
 206:../asf/sam/drivers/uart/uart.c **** }
 207:../asf/sam/drivers/uart/uart.c **** 
 208:../asf/sam/drivers/uart/uart.c **** /**
 209:../asf/sam/drivers/uart/uart.c ****  * \brief Reset UART receiver and transmitter.
 210:../asf/sam/drivers/uart/uart.c ****  *
 211:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 212:../asf/sam/drivers/uart/uart.c ****  */
ARM GAS  /tmp/ccPSOZXt.s 			page 10


 213:../asf/sam/drivers/uart/uart.c **** void uart_reset(Uart *p_uart)
 214:../asf/sam/drivers/uart/uart.c **** {
 294              		.loc 1 214 0
 295              		.cfi_startproc
 296              		@ args = 0, pretend = 0, frame = 0
 297              		@ frame_needed = 0, uses_anonymous_args = 0
 298              		@ link register save eliminated.
 299              	.LVL13:
 215:../asf/sam/drivers/uart/uart.c **** 	/* Reset and disable receiver & transmitter */
 216:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_CR = UART_CR_RSTRX | UART_CR_RSTTX
 300              		.loc 1 216 0
 301 0000 AC23     		movs	r3, #172
 302 0002 0360     		str	r3, [r0]
 303 0004 7047     		bx	lr
 304              		.cfi_endproc
 305              	.LFE151:
 306              		.size	uart_reset, .-uart_reset
 307 0006 00BF     		.section	.text.uart_enable_interrupt,"ax",%progbits
 308              		.align	1
 309              		.p2align 2,,3
 310              		.global	uart_enable_interrupt
 311              		.syntax unified
 312              		.thumb
 313              		.thumb_func
 314              		.fpu fpv5-d16
 315              		.type	uart_enable_interrupt, %function
 316              	uart_enable_interrupt:
 317              	.LFB152:
 217:../asf/sam/drivers/uart/uart.c **** 			| UART_CR_RXDIS | UART_CR_TXDIS;
 218:../asf/sam/drivers/uart/uart.c **** }
 219:../asf/sam/drivers/uart/uart.c **** 
 220:../asf/sam/drivers/uart/uart.c **** /** \brief Enable UART interrupts.
 221:../asf/sam/drivers/uart/uart.c ****  *
 222:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 223:../asf/sam/drivers/uart/uart.c ****  *  \param ul_sources Interrupts to be enabled.
 224:../asf/sam/drivers/uart/uart.c ****  */
 225:../asf/sam/drivers/uart/uart.c **** void uart_enable_interrupt(Uart *p_uart, uint32_t ul_sources)
 226:../asf/sam/drivers/uart/uart.c **** {
 318              		.loc 1 226 0
 319              		.cfi_startproc
 320              		@ args = 0, pretend = 0, frame = 0
 321              		@ frame_needed = 0, uses_anonymous_args = 0
 322              		@ link register save eliminated.
 323              	.LVL14:
 227:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_IER = ul_sources;
 324              		.loc 1 227 0
 325 0000 8160     		str	r1, [r0, #8]
 326 0002 7047     		bx	lr
 327              		.cfi_endproc
 328              	.LFE152:
 329              		.size	uart_enable_interrupt, .-uart_enable_interrupt
 330              		.section	.text.uart_disable_interrupt,"ax",%progbits
 331              		.align	1
 332              		.p2align 2,,3
 333              		.global	uart_disable_interrupt
 334              		.syntax unified
 335              		.thumb
ARM GAS  /tmp/ccPSOZXt.s 			page 11


 336              		.thumb_func
 337              		.fpu fpv5-d16
 338              		.type	uart_disable_interrupt, %function
 339              	uart_disable_interrupt:
 340              	.LFB153:
 228:../asf/sam/drivers/uart/uart.c **** }
 229:../asf/sam/drivers/uart/uart.c **** 
 230:../asf/sam/drivers/uart/uart.c **** /** \brief Disable UART interrupts.
 231:../asf/sam/drivers/uart/uart.c ****  *
 232:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 233:../asf/sam/drivers/uart/uart.c ****  *  \param ul_sources Interrupts to be disabled.
 234:../asf/sam/drivers/uart/uart.c ****  */
 235:../asf/sam/drivers/uart/uart.c **** void uart_disable_interrupt(Uart *p_uart, uint32_t ul_sources)
 236:../asf/sam/drivers/uart/uart.c **** {
 341              		.loc 1 236 0
 342              		.cfi_startproc
 343              		@ args = 0, pretend = 0, frame = 0
 344              		@ frame_needed = 0, uses_anonymous_args = 0
 345              		@ link register save eliminated.
 346              	.LVL15:
 237:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_IDR = ul_sources;
 347              		.loc 1 237 0
 348 0000 C160     		str	r1, [r0, #12]
 349 0002 7047     		bx	lr
 350              		.cfi_endproc
 351              	.LFE153:
 352              		.size	uart_disable_interrupt, .-uart_disable_interrupt
 353              		.section	.text.uart_get_interrupt_mask,"ax",%progbits
 354              		.align	1
 355              		.p2align 2,,3
 356              		.global	uart_get_interrupt_mask
 357              		.syntax unified
 358              		.thumb
 359              		.thumb_func
 360              		.fpu fpv5-d16
 361              		.type	uart_get_interrupt_mask, %function
 362              	uart_get_interrupt_mask:
 363              	.LFB154:
 238:../asf/sam/drivers/uart/uart.c **** }
 239:../asf/sam/drivers/uart/uart.c **** 
 240:../asf/sam/drivers/uart/uart.c **** /** \brief Read UART interrupt mask.
 241:../asf/sam/drivers/uart/uart.c ****  *
 242:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 243:../asf/sam/drivers/uart/uart.c ****  *
 244:../asf/sam/drivers/uart/uart.c ****  *  \return The interrupt mask value.
 245:../asf/sam/drivers/uart/uart.c ****  */
 246:../asf/sam/drivers/uart/uart.c **** uint32_t uart_get_interrupt_mask(Uart *p_uart)
 247:../asf/sam/drivers/uart/uart.c **** {
 364              		.loc 1 247 0
 365              		.cfi_startproc
 366              		@ args = 0, pretend = 0, frame = 0
 367              		@ frame_needed = 0, uses_anonymous_args = 0
 368              		@ link register save eliminated.
 369              	.LVL16:
 248:../asf/sam/drivers/uart/uart.c **** 	return p_uart->UART_IMR;
 370              		.loc 1 248 0
 371 0000 0069     		ldr	r0, [r0, #16]
ARM GAS  /tmp/ccPSOZXt.s 			page 12


 372              	.LVL17:
 249:../asf/sam/drivers/uart/uart.c **** }
 373              		.loc 1 249 0
 374 0002 7047     		bx	lr
 375              		.cfi_endproc
 376              	.LFE154:
 377              		.size	uart_get_interrupt_mask, .-uart_get_interrupt_mask
 378              		.section	.text.uart_get_status,"ax",%progbits
 379              		.align	1
 380              		.p2align 2,,3
 381              		.global	uart_get_status
 382              		.syntax unified
 383              		.thumb
 384              		.thumb_func
 385              		.fpu fpv5-d16
 386              		.type	uart_get_status, %function
 387              	uart_get_status:
 388              	.LFB155:
 250:../asf/sam/drivers/uart/uart.c **** 
 251:../asf/sam/drivers/uart/uart.c **** /**
 252:../asf/sam/drivers/uart/uart.c ****  * \brief Get current status.
 253:../asf/sam/drivers/uart/uart.c ****  *
 254:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 255:../asf/sam/drivers/uart/uart.c ****  *
 256:../asf/sam/drivers/uart/uart.c ****  * \return The current UART status.
 257:../asf/sam/drivers/uart/uart.c ****  */
 258:../asf/sam/drivers/uart/uart.c **** uint32_t uart_get_status(Uart *p_uart)
 259:../asf/sam/drivers/uart/uart.c **** {
 389              		.loc 1 259 0
 390              		.cfi_startproc
 391              		@ args = 0, pretend = 0, frame = 0
 392              		@ frame_needed = 0, uses_anonymous_args = 0
 393              		@ link register save eliminated.
 394              	.LVL18:
 260:../asf/sam/drivers/uart/uart.c **** 	return p_uart->UART_SR;
 395              		.loc 1 260 0
 396 0000 4069     		ldr	r0, [r0, #20]
 397              	.LVL19:
 261:../asf/sam/drivers/uart/uart.c **** }
 398              		.loc 1 261 0
 399 0002 7047     		bx	lr
 400              		.cfi_endproc
 401              	.LFE155:
 402              		.size	uart_get_status, .-uart_get_status
 403              		.section	.text.uart_reset_status,"ax",%progbits
 404              		.align	1
 405              		.p2align 2,,3
 406              		.global	uart_reset_status
 407              		.syntax unified
 408              		.thumb
 409              		.thumb_func
 410              		.fpu fpv5-d16
 411              		.type	uart_reset_status, %function
 412              	uart_reset_status:
 413              	.LFB156:
 262:../asf/sam/drivers/uart/uart.c **** 
 263:../asf/sam/drivers/uart/uart.c **** /**
ARM GAS  /tmp/ccPSOZXt.s 			page 13


 264:../asf/sam/drivers/uart/uart.c ****  * \brief Reset status bits.
 265:../asf/sam/drivers/uart/uart.c ****  *
 266:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 267:../asf/sam/drivers/uart/uart.c ****  */
 268:../asf/sam/drivers/uart/uart.c **** void uart_reset_status(Uart *p_uart)
 269:../asf/sam/drivers/uart/uart.c **** {
 414              		.loc 1 269 0
 415              		.cfi_startproc
 416              		@ args = 0, pretend = 0, frame = 0
 417              		@ frame_needed = 0, uses_anonymous_args = 0
 418              		@ link register save eliminated.
 419              	.LVL20:
 270:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_CR = UART_CR_RSTSTA;
 420              		.loc 1 270 0
 421 0000 4FF48073 		mov	r3, #256
 422 0004 0360     		str	r3, [r0]
 423 0006 7047     		bx	lr
 424              		.cfi_endproc
 425              	.LFE156:
 426              		.size	uart_reset_status, .-uart_reset_status
 427              		.section	.text.uart_is_tx_ready,"ax",%progbits
 428              		.align	1
 429              		.p2align 2,,3
 430              		.global	uart_is_tx_ready
 431              		.syntax unified
 432              		.thumb
 433              		.thumb_func
 434              		.fpu fpv5-d16
 435              		.type	uart_is_tx_ready, %function
 436              	uart_is_tx_ready:
 437              	.LFB157:
 271:../asf/sam/drivers/uart/uart.c **** }
 272:../asf/sam/drivers/uart/uart.c **** 
 273:../asf/sam/drivers/uart/uart.c **** /**
 274:../asf/sam/drivers/uart/uart.c ****  * \brief Check if Transmit is Ready.
 275:../asf/sam/drivers/uart/uart.c ****  * Check if data has been loaded in UART_THR and is waiting to be loaded in the
 276:../asf/sam/drivers/uart/uart.c ****  * Transmit Shift Register (TSR).
 277:../asf/sam/drivers/uart/uart.c ****  *
 278:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 279:../asf/sam/drivers/uart/uart.c ****  *
 280:../asf/sam/drivers/uart/uart.c ****  * \retval 1 Data has been transmitted.
 281:../asf/sam/drivers/uart/uart.c ****  * \retval 0 Transmit is not ready, data pending.
 282:../asf/sam/drivers/uart/uart.c ****  */
 283:../asf/sam/drivers/uart/uart.c **** uint32_t uart_is_tx_ready(Uart *p_uart)
 284:../asf/sam/drivers/uart/uart.c **** {
 438              		.loc 1 284 0
 439              		.cfi_startproc
 440              		@ args = 0, pretend = 0, frame = 0
 441              		@ frame_needed = 0, uses_anonymous_args = 0
 442              		@ link register save eliminated.
 443              	.LVL21:
 285:../asf/sam/drivers/uart/uart.c **** 	return (p_uart->UART_SR & UART_SR_TXRDY) > 0;
 444              		.loc 1 285 0
 445 0000 4069     		ldr	r0, [r0, #20]
 446              	.LVL22:
 286:../asf/sam/drivers/uart/uart.c **** }
 447              		.loc 1 286 0
ARM GAS  /tmp/ccPSOZXt.s 			page 14


 448 0002 C0F34000 		ubfx	r0, r0, #1, #1
 449 0006 7047     		bx	lr
 450              		.cfi_endproc
 451              	.LFE157:
 452              		.size	uart_is_tx_ready, .-uart_is_tx_ready
 453              		.section	.text.uart_is_tx_empty,"ax",%progbits
 454              		.align	1
 455              		.p2align 2,,3
 456              		.global	uart_is_tx_empty
 457              		.syntax unified
 458              		.thumb
 459              		.thumb_func
 460              		.fpu fpv5-d16
 461              		.type	uart_is_tx_empty, %function
 462              	uart_is_tx_empty:
 463              	.LFB167:
 464              		.cfi_startproc
 465              		@ args = 0, pretend = 0, frame = 0
 466              		@ frame_needed = 0, uses_anonymous_args = 0
 467              		@ link register save eliminated.
 468 0000 4069     		ldr	r0, [r0, #20]
 469 0002 C0F34020 		ubfx	r0, r0, #9, #1
 470 0006 7047     		bx	lr
 471              		.cfi_endproc
 472              	.LFE167:
 473              		.size	uart_is_tx_empty, .-uart_is_tx_empty
 474              		.section	.text.uart_is_rx_ready,"ax",%progbits
 475              		.align	1
 476              		.p2align 2,,3
 477              		.global	uart_is_rx_ready
 478              		.syntax unified
 479              		.thumb
 480              		.thumb_func
 481              		.fpu fpv5-d16
 482              		.type	uart_is_rx_ready, %function
 483              	uart_is_rx_ready:
 484              	.LFB159:
 287:../asf/sam/drivers/uart/uart.c **** 
 288:../asf/sam/drivers/uart/uart.c **** /**
 289:../asf/sam/drivers/uart/uart.c ****  * \brief Check if Transmit Hold Register is empty.
 290:../asf/sam/drivers/uart/uart.c ****  * Check if the last data written in UART_THR has been loaded in TSR and the
 291:../asf/sam/drivers/uart/uart.c ****  * last data loaded in TSR has been transmitted.
 292:../asf/sam/drivers/uart/uart.c ****  *
 293:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 294:../asf/sam/drivers/uart/uart.c ****  *
 295:../asf/sam/drivers/uart/uart.c ****  * \retval 1 Transmitter is empty.
 296:../asf/sam/drivers/uart/uart.c ****  * \retval 0 Transmitter is not empty.
 297:../asf/sam/drivers/uart/uart.c ****  */
 298:../asf/sam/drivers/uart/uart.c **** uint32_t uart_is_tx_empty(Uart *p_uart)
 299:../asf/sam/drivers/uart/uart.c **** {
 300:../asf/sam/drivers/uart/uart.c **** 	return (p_uart->UART_SR & UART_SR_TXEMPTY) > 0;
 301:../asf/sam/drivers/uart/uart.c **** }
 302:../asf/sam/drivers/uart/uart.c **** 
 303:../asf/sam/drivers/uart/uart.c **** /**
 304:../asf/sam/drivers/uart/uart.c ****  * \brief Check if Received data is ready.
 305:../asf/sam/drivers/uart/uart.c ****  * Check if data has been received and loaded in UART_RHR.
 306:../asf/sam/drivers/uart/uart.c ****  *
ARM GAS  /tmp/ccPSOZXt.s 			page 15


 307:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 308:../asf/sam/drivers/uart/uart.c ****  *
 309:../asf/sam/drivers/uart/uart.c ****  * \retval 1 One data has been received.
 310:../asf/sam/drivers/uart/uart.c ****  * \retval 0 No data has been received.
 311:../asf/sam/drivers/uart/uart.c ****  */
 312:../asf/sam/drivers/uart/uart.c **** uint32_t uart_is_rx_ready(Uart *p_uart)
 313:../asf/sam/drivers/uart/uart.c **** {
 485              		.loc 1 313 0
 486              		.cfi_startproc
 487              		@ args = 0, pretend = 0, frame = 0
 488              		@ frame_needed = 0, uses_anonymous_args = 0
 489              		@ link register save eliminated.
 490              	.LVL23:
 314:../asf/sam/drivers/uart/uart.c **** 	return (p_uart->UART_SR & UART_SR_RXRDY) > 0;
 491              		.loc 1 314 0
 492 0000 4069     		ldr	r0, [r0, #20]
 493              	.LVL24:
 315:../asf/sam/drivers/uart/uart.c **** }
 494              		.loc 1 315 0
 495 0002 00F00100 		and	r0, r0, #1
 496 0006 7047     		bx	lr
 497              		.cfi_endproc
 498              	.LFE159:
 499              		.size	uart_is_rx_ready, .-uart_is_rx_ready
 500              		.section	.text.uart_is_tx_buf_empty,"ax",%progbits
 501              		.align	1
 502              		.p2align 2,,3
 503              		.global	uart_is_tx_buf_empty
 504              		.syntax unified
 505              		.thumb
 506              		.thumb_func
 507              		.fpu fpv5-d16
 508              		.type	uart_is_tx_buf_empty, %function
 509              	uart_is_tx_buf_empty:
 510              	.LFB160:
 316:../asf/sam/drivers/uart/uart.c **** 
 317:../asf/sam/drivers/uart/uart.c **** /**
 318:../asf/sam/drivers/uart/uart.c ****  * \brief Check if both transmit buffers are sent out.
 319:../asf/sam/drivers/uart/uart.c ****  *
 320:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 321:../asf/sam/drivers/uart/uart.c ****  *
 322:../asf/sam/drivers/uart/uart.c ****  * \retval 1 Transmit buffer is empty.
 323:../asf/sam/drivers/uart/uart.c ****  * \retval 0 Transmit buffer is not empty.
 324:../asf/sam/drivers/uart/uart.c ****  */
 325:../asf/sam/drivers/uart/uart.c **** uint32_t uart_is_tx_buf_empty(Uart *p_uart)
 326:../asf/sam/drivers/uart/uart.c **** {
 511              		.loc 1 326 0
 512              		.cfi_startproc
 513              		@ args = 0, pretend = 0, frame = 0
 514              		@ frame_needed = 0, uses_anonymous_args = 0
 515              		@ link register save eliminated.
 516              	.LVL25:
 327:../asf/sam/drivers/uart/uart.c **** 	return (p_uart->UART_SR & UART_SR_TXEMPTY) > 0;
 517              		.loc 1 327 0
 518 0000 4069     		ldr	r0, [r0, #20]
 519              	.LVL26:
 328:../asf/sam/drivers/uart/uart.c **** }
ARM GAS  /tmp/ccPSOZXt.s 			page 16


 520              		.loc 1 328 0
 521 0002 C0F34020 		ubfx	r0, r0, #9, #1
 522 0006 7047     		bx	lr
 523              		.cfi_endproc
 524              	.LFE160:
 525              		.size	uart_is_tx_buf_empty, .-uart_is_tx_buf_empty
 526              		.section	.text.uart_set_clock_divisor,"ax",%progbits
 527              		.align	1
 528              		.p2align 2,,3
 529              		.global	uart_set_clock_divisor
 530              		.syntax unified
 531              		.thumb
 532              		.thumb_func
 533              		.fpu fpv5-d16
 534              		.type	uart_set_clock_divisor, %function
 535              	uart_set_clock_divisor:
 536              	.LFB161:
 329:../asf/sam/drivers/uart/uart.c **** 
 330:../asf/sam/drivers/uart/uart.c **** /**
 331:../asf/sam/drivers/uart/uart.c ****  * \brief Set UART clock divisor value
 332:../asf/sam/drivers/uart/uart.c ****  *
 333:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 334:../asf/sam/drivers/uart/uart.c ****  * \param us_divisor Value to be set.
 335:../asf/sam/drivers/uart/uart.c ****  *
 336:../asf/sam/drivers/uart/uart.c ****  */
 337:../asf/sam/drivers/uart/uart.c **** void uart_set_clock_divisor(Uart *p_uart, uint16_t us_divisor)
 338:../asf/sam/drivers/uart/uart.c **** {
 537              		.loc 1 338 0
 538              		.cfi_startproc
 539              		@ args = 0, pretend = 0, frame = 0
 540              		@ frame_needed = 0, uses_anonymous_args = 0
 541              		@ link register save eliminated.
 542              	.LVL27:
 339:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_BRGR = us_divisor;
 543              		.loc 1 339 0
 544 0000 0162     		str	r1, [r0, #32]
 545 0002 7047     		bx	lr
 546              		.cfi_endproc
 547              	.LFE161:
 548              		.size	uart_set_clock_divisor, .-uart_set_clock_divisor
 549              		.section	.text.uart_write,"ax",%progbits
 550              		.align	1
 551              		.p2align 2,,3
 552              		.global	uart_write
 553              		.syntax unified
 554              		.thumb
 555              		.thumb_func
 556              		.fpu fpv5-d16
 557              		.type	uart_write, %function
 558              	uart_write:
 559              	.LFB162:
 340:../asf/sam/drivers/uart/uart.c **** }
 341:../asf/sam/drivers/uart/uart.c **** 
 342:../asf/sam/drivers/uart/uart.c **** /**
 343:../asf/sam/drivers/uart/uart.c ****  * \brief Write to UART Transmit Holding Register
 344:../asf/sam/drivers/uart/uart.c ****  * Before writing user should check if tx is ready (or empty).
 345:../asf/sam/drivers/uart/uart.c ****  *
ARM GAS  /tmp/ccPSOZXt.s 			page 17


 346:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 347:../asf/sam/drivers/uart/uart.c ****  * \param data Data to be sent.
 348:../asf/sam/drivers/uart/uart.c ****  *
 349:../asf/sam/drivers/uart/uart.c ****  * \retval 0 Success.
 350:../asf/sam/drivers/uart/uart.c ****  * \retval 1 I/O Failure, UART is not ready.
 351:../asf/sam/drivers/uart/uart.c ****  */
 352:../asf/sam/drivers/uart/uart.c **** uint32_t uart_write(Uart *p_uart, const uint8_t uc_data)
 353:../asf/sam/drivers/uart/uart.c **** {
 560              		.loc 1 353 0
 561              		.cfi_startproc
 562              		@ args = 0, pretend = 0, frame = 0
 563              		@ frame_needed = 0, uses_anonymous_args = 0
 564              		@ link register save eliminated.
 565              	.LVL28:
 354:../asf/sam/drivers/uart/uart.c **** 	/* Check if the transmitter is ready */
 355:../asf/sam/drivers/uart/uart.c **** 	if (!(p_uart->UART_SR & UART_SR_TXRDY))
 566              		.loc 1 355 0
 567 0000 4369     		ldr	r3, [r0, #20]
 568 0002 9B07     		lsls	r3, r3, #30
 569 0004 02D5     		bpl	.L27
 356:../asf/sam/drivers/uart/uart.c **** 		return 1;
 357:../asf/sam/drivers/uart/uart.c **** 
 358:../asf/sam/drivers/uart/uart.c **** 	/* Send character */
 359:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_THR = uc_data;
 570              		.loc 1 359 0
 571 0006 C161     		str	r1, [r0, #28]
 360:../asf/sam/drivers/uart/uart.c **** 	return 0;
 572              		.loc 1 360 0
 573 0008 0020     		movs	r0, #0
 574              	.LVL29:
 575 000a 7047     		bx	lr
 576              	.LVL30:
 577              	.L27:
 356:../asf/sam/drivers/uart/uart.c **** 		return 1;
 578              		.loc 1 356 0
 579 000c 0120     		movs	r0, #1
 580              	.LVL31:
 361:../asf/sam/drivers/uart/uart.c **** }
 581              		.loc 1 361 0
 582 000e 7047     		bx	lr
 583              		.cfi_endproc
 584              	.LFE162:
 585              		.size	uart_write, .-uart_write
 586              		.section	.text.uart_read,"ax",%progbits
 587              		.align	1
 588              		.p2align 2,,3
 589              		.global	uart_read
 590              		.syntax unified
 591              		.thumb
 592              		.thumb_func
 593              		.fpu fpv5-d16
 594              		.type	uart_read, %function
 595              	uart_read:
 596              	.LFB163:
 362:../asf/sam/drivers/uart/uart.c **** 
 363:../asf/sam/drivers/uart/uart.c **** /**
 364:../asf/sam/drivers/uart/uart.c ****  * \brief Read from UART Receive Holding Register.
ARM GAS  /tmp/ccPSOZXt.s 			page 18


 365:../asf/sam/drivers/uart/uart.c ****  * Before reading user should check if rx is ready.
 366:../asf/sam/drivers/uart/uart.c ****  *
 367:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 368:../asf/sam/drivers/uart/uart.c ****  *
 369:../asf/sam/drivers/uart/uart.c ****  * \retval 0 Success.
 370:../asf/sam/drivers/uart/uart.c ****  * \retval 1 I/O Failure, UART is not ready.
 371:../asf/sam/drivers/uart/uart.c ****  */
 372:../asf/sam/drivers/uart/uart.c **** uint32_t uart_read(Uart *p_uart, uint8_t *puc_data)
 373:../asf/sam/drivers/uart/uart.c **** {
 597              		.loc 1 373 0
 598              		.cfi_startproc
 599              		@ args = 0, pretend = 0, frame = 0
 600              		@ frame_needed = 0, uses_anonymous_args = 0
 601              		@ link register save eliminated.
 602              	.LVL32:
 374:../asf/sam/drivers/uart/uart.c **** 	/* Check if the receiver is ready */
 375:../asf/sam/drivers/uart/uart.c **** 	if ((p_uart->UART_SR & UART_SR_RXRDY) == 0)
 603              		.loc 1 375 0
 604 0000 4369     		ldr	r3, [r0, #20]
 605 0002 DB07     		lsls	r3, r3, #31
 606 0004 03D5     		bpl	.L30
 376:../asf/sam/drivers/uart/uart.c **** 		return 1;
 377:../asf/sam/drivers/uart/uart.c **** 
 378:../asf/sam/drivers/uart/uart.c **** 	/* Read character */
 379:../asf/sam/drivers/uart/uart.c **** 	*puc_data = (uint8_t) p_uart->UART_RHR;
 607              		.loc 1 379 0
 608 0006 8369     		ldr	r3, [r0, #24]
 380:../asf/sam/drivers/uart/uart.c **** 	return 0;
 609              		.loc 1 380 0
 610 0008 0020     		movs	r0, #0
 611              	.LVL33:
 379:../asf/sam/drivers/uart/uart.c **** 	return 0;
 612              		.loc 1 379 0
 613 000a 0B70     		strb	r3, [r1]
 614              		.loc 1 380 0
 615 000c 7047     		bx	lr
 616              	.LVL34:
 617              	.L30:
 376:../asf/sam/drivers/uart/uart.c **** 		return 1;
 618              		.loc 1 376 0
 619 000e 0120     		movs	r0, #1
 620              	.LVL35:
 381:../asf/sam/drivers/uart/uart.c **** }
 621              		.loc 1 381 0
 622 0010 7047     		bx	lr
 623              		.cfi_endproc
 624              	.LFE163:
 625              		.size	uart_read, .-uart_read
 626 0012 00BF     		.section	.text.uart_set_sleepwalking,"ax",%progbits
 627              		.align	1
 628              		.p2align 2,,3
 629              		.global	uart_set_sleepwalking
 630              		.syntax unified
 631              		.thumb
 632              		.thumb_func
 633              		.fpu fpv5-d16
 634              		.type	uart_set_sleepwalking, %function
ARM GAS  /tmp/ccPSOZXt.s 			page 19


 635              	uart_set_sleepwalking:
 636              	.LFB164:
 382:../asf/sam/drivers/uart/uart.c **** 
 383:../asf/sam/drivers/uart/uart.c **** #if (!SAMV71 && !SAMV70 && !SAME70 && !SAMS70)
 384:../asf/sam/drivers/uart/uart.c **** /**
 385:../asf/sam/drivers/uart/uart.c ****  * \brief Check if one receive buffer is filled.
 386:../asf/sam/drivers/uart/uart.c ****  *
 387:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 388:../asf/sam/drivers/uart/uart.c ****  *
 389:../asf/sam/drivers/uart/uart.c ****  * \retval 1 Receive is completed.
 390:../asf/sam/drivers/uart/uart.c ****  * \retval 0 Receive is still pending.
 391:../asf/sam/drivers/uart/uart.c ****  */
 392:../asf/sam/drivers/uart/uart.c **** uint32_t uart_is_rx_buf_end(Uart *p_uart)
 393:../asf/sam/drivers/uart/uart.c **** {
 394:../asf/sam/drivers/uart/uart.c **** 	return (p_uart->UART_SR & UART_SR_ENDRX) > 0;
 395:../asf/sam/drivers/uart/uart.c **** }
 396:../asf/sam/drivers/uart/uart.c **** 
 397:../asf/sam/drivers/uart/uart.c **** /**
 398:../asf/sam/drivers/uart/uart.c ****  * \brief Check if one transmit buffer is sent out.
 399:../asf/sam/drivers/uart/uart.c ****  *
 400:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 401:../asf/sam/drivers/uart/uart.c ****  *
 402:../asf/sam/drivers/uart/uart.c ****  * \retval 1 Transmit is completed.
 403:../asf/sam/drivers/uart/uart.c ****  * \retval 0 Transmit is still pending.
 404:../asf/sam/drivers/uart/uart.c ****  */
 405:../asf/sam/drivers/uart/uart.c **** uint32_t uart_is_tx_buf_end(Uart *p_uart)
 406:../asf/sam/drivers/uart/uart.c **** {
 407:../asf/sam/drivers/uart/uart.c **** 	return (p_uart->UART_SR & UART_SR_ENDTX) > 0;
 408:../asf/sam/drivers/uart/uart.c **** }
 409:../asf/sam/drivers/uart/uart.c **** 
 410:../asf/sam/drivers/uart/uart.c **** /**
 411:../asf/sam/drivers/uart/uart.c ****  * \brief Check if both receive buffers are full.
 412:../asf/sam/drivers/uart/uart.c ****  *
 413:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 414:../asf/sam/drivers/uart/uart.c ****  *
 415:../asf/sam/drivers/uart/uart.c ****  * \retval 1 Receive buffers are full.
 416:../asf/sam/drivers/uart/uart.c ****  * \retval 0 Receive buffers are not full.
 417:../asf/sam/drivers/uart/uart.c ****  */
 418:../asf/sam/drivers/uart/uart.c **** uint32_t uart_is_rx_buf_full(Uart *p_uart)
 419:../asf/sam/drivers/uart/uart.c **** {
 420:../asf/sam/drivers/uart/uart.c **** 	return (p_uart->UART_SR & UART_SR_RXBUFF) > 0;
 421:../asf/sam/drivers/uart/uart.c **** }
 422:../asf/sam/drivers/uart/uart.c **** 
 423:../asf/sam/drivers/uart/uart.c **** /**
 424:../asf/sam/drivers/uart/uart.c ****  * \brief Get UART PDC base address.
 425:../asf/sam/drivers/uart/uart.c ****  *
 426:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 427:../asf/sam/drivers/uart/uart.c ****  *
 428:../asf/sam/drivers/uart/uart.c ****  * \return UART PDC registers base for PDC driver to access.
 429:../asf/sam/drivers/uart/uart.c ****  */
 430:../asf/sam/drivers/uart/uart.c **** Pdc *uart_get_pdc_base(Uart *p_uart)
 431:../asf/sam/drivers/uart/uart.c **** {
 432:../asf/sam/drivers/uart/uart.c **** 	Pdc *p_pdc_base;
 433:../asf/sam/drivers/uart/uart.c **** 
 434:../asf/sam/drivers/uart/uart.c **** #if (SAM3S || SAM3N || SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM)
 435:../asf/sam/drivers/uart/uart.c **** 	if (p_uart == UART0)
 436:../asf/sam/drivers/uart/uart.c **** 		p_pdc_base = PDC_UART0;
ARM GAS  /tmp/ccPSOZXt.s 			page 20


 437:../asf/sam/drivers/uart/uart.c **** #elif (SAM3XA || SAM3U)
 438:../asf/sam/drivers/uart/uart.c **** 	if (p_uart == UART)
 439:../asf/sam/drivers/uart/uart.c **** 		p_pdc_base = PDC_UART;
 440:../asf/sam/drivers/uart/uart.c **** #else
 441:../asf/sam/drivers/uart/uart.c **** #error "Unsupported device"
 442:../asf/sam/drivers/uart/uart.c **** #endif
 443:../asf/sam/drivers/uart/uart.c **** 
 444:../asf/sam/drivers/uart/uart.c **** #if (SAM3S || SAM4S || SAM4E || SAM4N || SAM4C || SAMG || SAM4CP || SAM4CM)
 445:../asf/sam/drivers/uart/uart.c **** 	if (p_uart == UART1)
 446:../asf/sam/drivers/uart/uart.c **** 		p_pdc_base = PDC_UART1;
 447:../asf/sam/drivers/uart/uart.c **** #endif
 448:../asf/sam/drivers/uart/uart.c **** 
 449:../asf/sam/drivers/uart/uart.c **** #if (SAM4N)
 450:../asf/sam/drivers/uart/uart.c **** 	if (p_uart == UART2)
 451:../asf/sam/drivers/uart/uart.c **** 		p_pdc_base = PDC_UART2;
 452:../asf/sam/drivers/uart/uart.c **** #endif
 453:../asf/sam/drivers/uart/uart.c **** 
 454:../asf/sam/drivers/uart/uart.c **** 	return p_pdc_base;
 455:../asf/sam/drivers/uart/uart.c **** }
 456:../asf/sam/drivers/uart/uart.c **** #endif
 457:../asf/sam/drivers/uart/uart.c **** 
 458:../asf/sam/drivers/uart/uart.c **** #if (SAM4C || SAM4CP || SAM4CM)
 459:../asf/sam/drivers/uart/uart.c **** /**
 460:../asf/sam/drivers/uart/uart.c ****  * \brief Enable UART optical interface.
 461:../asf/sam/drivers/uart/uart.c ****  *
 462:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 463:../asf/sam/drivers/uart/uart.c ****  */
 464:../asf/sam/drivers/uart/uart.c **** void uart_enable_optical_interface(Uart *p_uart)
 465:../asf/sam/drivers/uart/uart.c **** {
 466:../asf/sam/drivers/uart/uart.c **** 	Assert(p_uart == UART1);
 467:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_MR |= UART_MR_OPT_EN;
 468:../asf/sam/drivers/uart/uart.c **** }
 469:../asf/sam/drivers/uart/uart.c **** 
 470:../asf/sam/drivers/uart/uart.c **** /**
 471:../asf/sam/drivers/uart/uart.c ****  * \brief Disable UART optical interface.
 472:../asf/sam/drivers/uart/uart.c ****  *
 473:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 474:../asf/sam/drivers/uart/uart.c ****  */
 475:../asf/sam/drivers/uart/uart.c **** void uart_disable_optical_interface(Uart *p_uart)
 476:../asf/sam/drivers/uart/uart.c **** {
 477:../asf/sam/drivers/uart/uart.c **** 	Assert(p_uart == UART1);
 478:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_MR &= ~UART_MR_OPT_EN;
 479:../asf/sam/drivers/uart/uart.c **** }
 480:../asf/sam/drivers/uart/uart.c **** 
 481:../asf/sam/drivers/uart/uart.c **** /**
 482:../asf/sam/drivers/uart/uart.c ****  * \brief Enable UART optical interface.
 483:../asf/sam/drivers/uart/uart.c ****  *
 484:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 485:../asf/sam/drivers/uart/uart.c ****  * \param cfg Pointer to a UART optical interface configuration.
 486:../asf/sam/drivers/uart/uart.c ****  */
 487:../asf/sam/drivers/uart/uart.c **** void uart_config_optical_interface(Uart *p_uart,
 488:../asf/sam/drivers/uart/uart.c **** 		struct uart_config_optical *cfg)
 489:../asf/sam/drivers/uart/uart.c **** {
 490:../asf/sam/drivers/uart/uart.c **** 	Assert(p_uart == UART1);
 491:../asf/sam/drivers/uart/uart.c **** 	uint32_t reg = p_uart->UART_MR;
 492:../asf/sam/drivers/uart/uart.c **** 
 493:../asf/sam/drivers/uart/uart.c **** 	reg &= ~(UART_MR_OPT_RXINV | UART_MR_OPT_MDINV | UART_MR_FILTER
ARM GAS  /tmp/ccPSOZXt.s 			page 21


 494:../asf/sam/drivers/uart/uart.c **** 			| UART_MR_OPT_CLKDIV_Msk | UART_MR_OPT_DUTY_Msk
 495:../asf/sam/drivers/uart/uart.c **** 			| UART_MR_OPT_CMPTH_Msk);
 496:../asf/sam/drivers/uart/uart.c **** 	reg |= (cfg->rx_inverted ? UART_MR_OPT_RXINV : 0)
 497:../asf/sam/drivers/uart/uart.c **** 			| (cfg->tx_inverted ? UART_MR_OPT_MDINV : 0)
 498:../asf/sam/drivers/uart/uart.c **** 			| (cfg->rx_filter ? UART_MR_FILTER : 0)
 499:../asf/sam/drivers/uart/uart.c **** 			| UART_MR_OPT_CLKDIV(cfg->clk_div)
 500:../asf/sam/drivers/uart/uart.c **** 			| cfg->duty | cfg->threshold;
 501:../asf/sam/drivers/uart/uart.c **** 
 502:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_MR = reg;
 503:../asf/sam/drivers/uart/uart.c **** }
 504:../asf/sam/drivers/uart/uart.c **** #endif
 505:../asf/sam/drivers/uart/uart.c **** 
 506:../asf/sam/drivers/uart/uart.c **** #if (SAMG53 || SAMG54 || SAMV71 || SAMV70 || SAME70 || SAMS70)
 507:../asf/sam/drivers/uart/uart.c **** /**
 508:../asf/sam/drivers/uart/uart.c ****  * \brief Set sleepwalking match mode.
 509:../asf/sam/drivers/uart/uart.c ****  *
 510:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 511:../asf/sam/drivers/uart/uart.c ****  * \param ul_low_value First comparison value for received character.
 512:../asf/sam/drivers/uart/uart.c ****  * \param ul_high_value Second comparison value for received character.
 513:../asf/sam/drivers/uart/uart.c ****  * \param cmpmode ture for start condition, false for flag only.
 514:../asf/sam/drivers/uart/uart.c ****  * \param cmppar ture for parity check, false for no.
 515:../asf/sam/drivers/uart/uart.c ****  */
 516:../asf/sam/drivers/uart/uart.c **** void uart_set_sleepwalking(Uart *p_uart, uint8_t ul_low_value,
 517:../asf/sam/drivers/uart/uart.c **** 		bool cmpmode, bool cmppar, uint8_t ul_high_value)
 518:../asf/sam/drivers/uart/uart.c **** {
 637              		.loc 1 518 0
 638              		.cfi_startproc
 639              		@ args = 4, pretend = 0, frame = 0
 640              		@ frame_needed = 0, uses_anonymous_args = 0
 641              		@ link register save eliminated.
 642              	.LVL36:
 519:../asf/sam/drivers/uart/uart.c **** 	Assert(ul_low_value <= ul_high_value);
 520:../asf/sam/drivers/uart/uart.c **** 
 521:../asf/sam/drivers/uart/uart.c **** 	uint32_t temp = 0;
 522:../asf/sam/drivers/uart/uart.c **** 
 523:../asf/sam/drivers/uart/uart.c **** 	if (cmpmode) {
 524:../asf/sam/drivers/uart/uart.c **** 		temp |= UART_CMPR_CMPMODE_START_CONDITION;
 643              		.loc 1 524 0
 644 0000 002A     		cmp	r2, #0
 518:../asf/sam/drivers/uart/uart.c **** 	Assert(ul_low_value <= ul_high_value);
 645              		.loc 1 518 0
 646 0002 10B4     		push	{r4}
 647              		.cfi_def_cfa_offset 4
 648              		.cfi_offset 4, -4
 649              		.loc 1 524 0
 650 0004 08BF     		it	eq
 651 0006 0022     		moveq	r2, #0
 652              	.LVL37:
 518:../asf/sam/drivers/uart/uart.c **** 	Assert(ul_low_value <= ul_high_value);
 653              		.loc 1 518 0
 654 0008 9DF80440 		ldrb	r4, [sp, #4]	@ zero_extendqisi2
 655              		.loc 1 524 0
 656 000c 18BF     		it	ne
 657 000e 4FF48052 		movne	r2, #4096
 658              	.LVL38:
 525:../asf/sam/drivers/uart/uart.c **** 	}
 526:../asf/sam/drivers/uart/uart.c **** 
ARM GAS  /tmp/ccPSOZXt.s 			page 22


 527:../asf/sam/drivers/uart/uart.c **** 	if (cmppar) {
 659              		.loc 1 527 0
 660 0012 0BB1     		cbz	r3, .L33
 528:../asf/sam/drivers/uart/uart.c **** 		temp |= UART_CMPR_CMPPAR;
 661              		.loc 1 528 0
 662 0014 42F48042 		orr	r2, r2, #16384
 663              	.LVL39:
 664              	.L33:
 529:../asf/sam/drivers/uart/uart.c **** 	}
 530:../asf/sam/drivers/uart/uart.c **** 
 531:../asf/sam/drivers/uart/uart.c **** 	temp |= UART_CMPR_VAL1(ul_low_value);
 532:../asf/sam/drivers/uart/uart.c **** 
 533:../asf/sam/drivers/uart/uart.c **** 	temp |= UART_CMPR_VAL2(ul_high_value);
 665              		.loc 1 533 0
 666 0018 41EA0441 		orr	r1, r1, r4, lsl #16
 667              	.LVL40:
 534:../asf/sam/drivers/uart/uart.c **** 
 535:../asf/sam/drivers/uart/uart.c **** 	p_uart->UART_CMPR= temp;
 536:../asf/sam/drivers/uart/uart.c **** }
 668              		.loc 1 536 0
 669 001c 5DF8044B 		ldr	r4, [sp], #4
 670              		.cfi_restore 4
 671              		.cfi_def_cfa_offset 0
 672              	.LVL41:
 533:../asf/sam/drivers/uart/uart.c **** 
 673              		.loc 1 533 0
 674 0020 1143     		orrs	r1, r1, r2
 675              	.LVL42:
 535:../asf/sam/drivers/uart/uart.c **** }
 676              		.loc 1 535 0
 677 0022 4162     		str	r1, [r0, #36]
 678              		.loc 1 536 0
 679 0024 7047     		bx	lr
 680              		.cfi_endproc
 681              	.LFE164:
 682              		.size	uart_set_sleepwalking, .-uart_set_sleepwalking
 683 0026 00BF     		.section	.text.uart_set_write_protection,"ax",%progbits
 684              		.align	1
 685              		.p2align 2,,3
 686              		.global	uart_set_write_protection
 687              		.syntax unified
 688              		.thumb
 689              		.thumb_func
 690              		.fpu fpv5-d16
 691              		.type	uart_set_write_protection, %function
 692              	uart_set_write_protection:
 693              	.LFB165:
 537:../asf/sam/drivers/uart/uart.c **** 
 538:../asf/sam/drivers/uart/uart.c **** /**
 539:../asf/sam/drivers/uart/uart.c ****  * \brief Enables/Disables write protection mode.
 540:../asf/sam/drivers/uart/uart.c ****  *
 541:../asf/sam/drivers/uart/uart.c ****  * \param p_uart Pointer to a UART instance.
 542:../asf/sam/drivers/uart/uart.c ****  * \param flag ture for enable, false for disable.
 543:../asf/sam/drivers/uart/uart.c ****  */
 544:../asf/sam/drivers/uart/uart.c **** void uart_set_write_protection(Uart *p_uart, bool flag)
 545:../asf/sam/drivers/uart/uart.c **** {
 694              		.loc 1 545 0
ARM GAS  /tmp/ccPSOZXt.s 			page 23


 695              		.cfi_startproc
 696              		@ args = 0, pretend = 0, frame = 0
 697              		@ frame_needed = 0, uses_anonymous_args = 0
 698              		@ link register save eliminated.
 699              	.LVL43:
 546:../asf/sam/drivers/uart/uart.c **** 	if (flag) {
 700              		.loc 1 546 0
 701 0000 19B9     		cbnz	r1, .L42
 547:../asf/sam/drivers/uart/uart.c **** 		p_uart->UART_WPMR = UART_WPMR_WPKEY_PASSWD | UART_WPMR_WPEN;
 548:../asf/sam/drivers/uart/uart.c **** 	} else {
 549:../asf/sam/drivers/uart/uart.c **** 		p_uart->UART_WPMR = UART_WPMR_WPKEY_PASSWD;
 702              		.loc 1 549 0
 703 0002 044B     		ldr	r3, .L43
 704 0004 C0F8E430 		str	r3, [r0, #228]
 705 0008 7047     		bx	lr
 706              	.L42:
 547:../asf/sam/drivers/uart/uart.c **** 		p_uart->UART_WPMR = UART_WPMR_WPKEY_PASSWD | UART_WPMR_WPEN;
 707              		.loc 1 547 0
 708 000a 034B     		ldr	r3, .L43+4
 709 000c C0F8E430 		str	r3, [r0, #228]
 710 0010 7047     		bx	lr
 711              	.L44:
 712 0012 00BF     		.align	2
 713              	.L43:
 714 0014 00524155 		.word	1430344192
 715 0018 01524155 		.word	1430344193
 716              		.cfi_endproc
 717              	.LFE165:
 718              		.size	uart_set_write_protection, .-uart_set_write_protection
 719              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 720              		.align	2
 721              		.type	cpu_irq_critical_section_counter, %object
 722              		.size	cpu_irq_critical_section_counter, 4
 723              	cpu_irq_critical_section_counter:
 724 0000 00000000 		.space	4
 725              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 726              		.type	cpu_irq_prev_interrupt_state, %object
 727              		.size	cpu_irq_prev_interrupt_state, 1
 728              	cpu_irq_prev_interrupt_state:
 729 0000 00       		.space	1
 730              		.text
 731              	.Letext0:
 732              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 733              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 734              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 735              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 736              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/uart
 737              		.file 7 "/usr/include/newlib/sys/lock.h"
 738              		.file 8 "/usr/include/newlib/sys/_types.h"
 739              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 740              		.file 10 "/usr/include/newlib/sys/reent.h"
 741              		.file 11 "/usr/include/newlib/stdlib.h"
 742              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 743              		.file 13 "../asf/sam/drivers/uart/uart.h"
 744              		.section	.debug_info,"",%progbits
 745              	.Ldebug_info0:
 746 0000 B00E0000 		.4byte	0xeb0
ARM GAS  /tmp/ccPSOZXt.s 			page 24


 747 0004 0400     		.2byte	0x4
 748 0006 00000000 		.4byte	.Ldebug_abbrev0
 749 000a 04       		.byte	0x4
 750 000b 01       		.uleb128 0x1
 751 000c 40040000 		.4byte	.LASF188
 752 0010 0C       		.byte	0xc
 753 0011 C1030000 		.4byte	.LASF189
 754 0015 5E030000 		.4byte	.LASF190
 755 0019 00000000 		.4byte	.Ldebug_ranges0+0
 756 001d 00000000 		.4byte	0
 757 0021 00000000 		.4byte	.Ldebug_line0
 758 0025 02       		.uleb128 0x2
 759 0026 04       		.byte	0x4
 760 0027 05       		.byte	0x5
 761 0028 696E7400 		.ascii	"int\000"
 762 002c 03       		.uleb128 0x3
 763 002d 04       		.byte	0x4
 764 002e 07       		.byte	0x7
 765 002f EF060000 		.4byte	.LASF0
 766 0033 03       		.uleb128 0x3
 767 0034 01       		.byte	0x1
 768 0035 06       		.byte	0x6
 769 0036 F3000000 		.4byte	.LASF1
 770 003a 04       		.uleb128 0x4
 771 003b 2E000000 		.4byte	.LASF4
 772 003f 02       		.byte	0x2
 773 0040 1D       		.byte	0x1d
 774 0041 45000000 		.4byte	0x45
 775 0045 03       		.uleb128 0x3
 776 0046 01       		.byte	0x1
 777 0047 08       		.byte	0x8
 778 0048 67070000 		.4byte	.LASF2
 779 004c 03       		.uleb128 0x3
 780 004d 02       		.byte	0x2
 781 004e 05       		.byte	0x5
 782 004f 00000000 		.4byte	.LASF3
 783 0053 04       		.uleb128 0x4
 784 0054 FC060000 		.4byte	.LASF5
 785 0058 02       		.byte	0x2
 786 0059 2B       		.byte	0x2b
 787 005a 5E000000 		.4byte	0x5e
 788 005e 03       		.uleb128 0x3
 789 005f 02       		.byte	0x2
 790 0060 07       		.byte	0x7
 791 0061 EE020000 		.4byte	.LASF6
 792 0065 04       		.uleb128 0x4
 793 0066 24070000 		.4byte	.LASF7
 794 006a 02       		.byte	0x2
 795 006b 3F       		.byte	0x3f
 796 006c 70000000 		.4byte	0x70
 797 0070 03       		.uleb128 0x3
 798 0071 04       		.byte	0x4
 799 0072 05       		.byte	0x5
 800 0073 62010000 		.4byte	.LASF8
 801 0077 04       		.uleb128 0x4
 802 0078 22020000 		.4byte	.LASF9
 803 007c 02       		.byte	0x2
ARM GAS  /tmp/ccPSOZXt.s 			page 25


 804 007d 41       		.byte	0x41
 805 007e 82000000 		.4byte	0x82
 806 0082 03       		.uleb128 0x3
 807 0083 04       		.byte	0x4
 808 0084 07       		.byte	0x7
 809 0085 C0020000 		.4byte	.LASF10
 810 0089 03       		.uleb128 0x3
 811 008a 08       		.byte	0x8
 812 008b 05       		.byte	0x5
 813 008c 90010000 		.4byte	.LASF11
 814 0090 03       		.uleb128 0x3
 815 0091 08       		.byte	0x8
 816 0092 07       		.byte	0x7
 817 0093 75000000 		.4byte	.LASF12
 818 0097 04       		.uleb128 0x4
 819 0098 10080000 		.4byte	.LASF13
 820 009c 03       		.byte	0x3
 821 009d 18       		.byte	0x18
 822 009e 3A000000 		.4byte	0x3a
 823 00a2 05       		.uleb128 0x5
 824 00a3 97000000 		.4byte	0x97
 825 00a7 04       		.uleb128 0x4
 826 00a8 B4010000 		.4byte	.LASF14
 827 00ac 03       		.byte	0x3
 828 00ad 24       		.byte	0x24
 829 00ae 53000000 		.4byte	0x53
 830 00b2 04       		.uleb128 0x4
 831 00b3 AD050000 		.4byte	.LASF15
 832 00b7 03       		.byte	0x3
 833 00b8 2C       		.byte	0x2c
 834 00b9 65000000 		.4byte	0x65
 835 00bd 06       		.uleb128 0x6
 836 00be B2000000 		.4byte	0xb2
 837 00c2 04       		.uleb128 0x4
 838 00c3 89060000 		.4byte	.LASF16
 839 00c7 03       		.byte	0x3
 840 00c8 30       		.byte	0x30
 841 00c9 77000000 		.4byte	0x77
 842 00cd 06       		.uleb128 0x6
 843 00ce C2000000 		.4byte	0xc2
 844 00d2 05       		.uleb128 0x5
 845 00d3 CD000000 		.4byte	0xcd
 846 00d7 07       		.uleb128 0x7
 847 00d8 04       		.byte	0x4
 848 00d9 03       		.uleb128 0x3
 849 00da 04       		.byte	0x4
 850 00db 07       		.byte	0x7
 851 00dc FD030000 		.4byte	.LASF17
 852 00e0 08       		.uleb128 0x8
 853 00e1 A2000000 		.4byte	.LASF18
 854 00e5 04       		.byte	0x4
 855 00e6 6508     		.2byte	0x865
 856 00e8 BD000000 		.4byte	0xbd
 857 00ec 09       		.uleb128 0x9
 858 00ed A8020000 		.4byte	.LASF19
 859 00f1 05       		.byte	0x5
 860 00f2 3A       		.byte	0x3a
ARM GAS  /tmp/ccPSOZXt.s 			page 26


 861 00f3 C2000000 		.4byte	0xc2
 862 00f7 0A       		.uleb128 0xa
 863 00f8 D2000000 		.4byte	0xd2
 864 00fc 07010000 		.4byte	0x107
 865 0100 0B       		.uleb128 0xb
 866 0101 D9000000 		.4byte	0xd9
 867 0105 2E       		.byte	0x2e
 868 0106 00       		.byte	0
 869 0107 05       		.uleb128 0x5
 870 0108 F7000000 		.4byte	0xf7
 871 010c 06       		.uleb128 0x6
 872 010d 07010000 		.4byte	0x107
 873 0111 0C       		.uleb128 0xc
 874 0112 E8       		.byte	0xe8
 875 0113 06       		.byte	0x6
 876 0114 38       		.byte	0x38
 877 0115 AA010000 		.4byte	0x1aa
 878 0119 0D       		.uleb128 0xd
 879 011a 50030000 		.4byte	.LASF20
 880 011e 06       		.byte	0x6
 881 011f 39       		.byte	0x39
 882 0120 CD000000 		.4byte	0xcd
 883 0124 00       		.byte	0
 884 0125 0D       		.uleb128 0xd
 885 0126 AC060000 		.4byte	.LASF21
 886 012a 06       		.byte	0x6
 887 012b 3A       		.byte	0x3a
 888 012c CD000000 		.4byte	0xcd
 889 0130 04       		.byte	0x4
 890 0131 0D       		.uleb128 0xd
 891 0132 BC080000 		.4byte	.LASF22
 892 0136 06       		.byte	0x6
 893 0137 3B       		.byte	0x3b
 894 0138 CD000000 		.4byte	0xcd
 895 013c 08       		.byte	0x8
 896 013d 0D       		.uleb128 0xd
 897 013e 9A070000 		.4byte	.LASF23
 898 0142 06       		.byte	0x6
 899 0143 3C       		.byte	0x3c
 900 0144 CD000000 		.4byte	0xcd
 901 0148 0C       		.byte	0xc
 902 0149 0D       		.uleb128 0xd
 903 014a 0A000000 		.4byte	.LASF24
 904 014e 06       		.byte	0x6
 905 014f 3D       		.byte	0x3d
 906 0150 D2000000 		.4byte	0xd2
 907 0154 10       		.byte	0x10
 908 0155 0D       		.uleb128 0xd
 909 0156 C5080000 		.4byte	.LASF25
 910 015a 06       		.byte	0x6
 911 015b 3E       		.byte	0x3e
 912 015c D2000000 		.4byte	0xd2
 913 0160 14       		.byte	0x14
 914 0161 0D       		.uleb128 0xd
 915 0162 9A030000 		.4byte	.LASF26
 916 0166 06       		.byte	0x6
 917 0167 3F       		.byte	0x3f
ARM GAS  /tmp/ccPSOZXt.s 			page 27


 918 0168 D2000000 		.4byte	0xd2
 919 016c 18       		.byte	0x18
 920 016d 0D       		.uleb128 0xd
 921 016e 2E070000 		.4byte	.LASF27
 922 0172 06       		.byte	0x6
 923 0173 40       		.byte	0x40
 924 0174 CD000000 		.4byte	0xcd
 925 0178 1C       		.byte	0x1c
 926 0179 0D       		.uleb128 0xd
 927 017a 32050000 		.4byte	.LASF28
 928 017e 06       		.byte	0x6
 929 017f 41       		.byte	0x41
 930 0180 CD000000 		.4byte	0xcd
 931 0184 20       		.byte	0x20
 932 0185 0D       		.uleb128 0xd
 933 0186 F6040000 		.4byte	.LASF29
 934 018a 06       		.byte	0x6
 935 018b 42       		.byte	0x42
 936 018c CD000000 		.4byte	0xcd
 937 0190 24       		.byte	0x24
 938 0191 0D       		.uleb128 0xd
 939 0192 20010000 		.4byte	.LASF30
 940 0196 06       		.byte	0x6
 941 0197 43       		.byte	0x43
 942 0198 0C010000 		.4byte	0x10c
 943 019c 28       		.byte	0x28
 944 019d 0D       		.uleb128 0xd
 945 019e 3F030000 		.4byte	.LASF31
 946 01a2 06       		.byte	0x6
 947 01a3 44       		.byte	0x44
 948 01a4 CD000000 		.4byte	0xcd
 949 01a8 E4       		.byte	0xe4
 950 01a9 00       		.byte	0
 951 01aa 04       		.uleb128 0x4
 952 01ab 37070000 		.4byte	.LASF32
 953 01af 06       		.byte	0x6
 954 01b0 45       		.byte	0x45
 955 01b1 11010000 		.4byte	0x111
 956 01b5 04       		.uleb128 0x4
 957 01b6 6F050000 		.4byte	.LASF33
 958 01ba 07       		.byte	0x7
 959 01bb 07       		.byte	0x7
 960 01bc 25000000 		.4byte	0x25
 961 01c0 04       		.uleb128 0x4
 962 01c1 2B050000 		.4byte	.LASF34
 963 01c5 08       		.byte	0x8
 964 01c6 2C       		.byte	0x2c
 965 01c7 70000000 		.4byte	0x70
 966 01cb 04       		.uleb128 0x4
 967 01cc A4060000 		.4byte	.LASF35
 968 01d0 08       		.byte	0x8
 969 01d1 72       		.byte	0x72
 970 01d2 70000000 		.4byte	0x70
 971 01d6 0E       		.uleb128 0xe
 972 01d7 49030000 		.4byte	.LASF36
 973 01db 09       		.byte	0x9
 974 01dc 6501     		.2byte	0x165
ARM GAS  /tmp/ccPSOZXt.s 			page 28


 975 01de 2C000000 		.4byte	0x2c
 976 01e2 0F       		.uleb128 0xf
 977 01e3 04       		.byte	0x4
 978 01e4 08       		.byte	0x8
 979 01e5 A6       		.byte	0xa6
 980 01e6 01020000 		.4byte	0x201
 981 01ea 10       		.uleb128 0x10
 982 01eb 39030000 		.4byte	.LASF37
 983 01ef 08       		.byte	0x8
 984 01f0 A8       		.byte	0xa8
 985 01f1 D6010000 		.4byte	0x1d6
 986 01f5 10       		.uleb128 0x10
 987 01f6 A1020000 		.4byte	.LASF38
 988 01fa 08       		.byte	0x8
 989 01fb A9       		.byte	0xa9
 990 01fc 01020000 		.4byte	0x201
 991 0200 00       		.byte	0
 992 0201 0A       		.uleb128 0xa
 993 0202 45000000 		.4byte	0x45
 994 0206 11020000 		.4byte	0x211
 995 020a 0B       		.uleb128 0xb
 996 020b D9000000 		.4byte	0xd9
 997 020f 03       		.byte	0x3
 998 0210 00       		.byte	0
 999 0211 0C       		.uleb128 0xc
 1000 0212 08       		.byte	0x8
 1001 0213 08       		.byte	0x8
 1002 0214 A3       		.byte	0xa3
 1003 0215 32020000 		.4byte	0x232
 1004 0219 0D       		.uleb128 0xd
 1005 021a 81060000 		.4byte	.LASF39
 1006 021e 08       		.byte	0x8
 1007 021f A5       		.byte	0xa5
 1008 0220 25000000 		.4byte	0x25
 1009 0224 00       		.byte	0
 1010 0225 0D       		.uleb128 0xd
 1011 0226 49070000 		.4byte	.LASF40
 1012 022a 08       		.byte	0x8
 1013 022b AA       		.byte	0xaa
 1014 022c E2010000 		.4byte	0x1e2
 1015 0230 04       		.byte	0x4
 1016 0231 00       		.byte	0
 1017 0232 04       		.uleb128 0x4
 1018 0233 18060000 		.4byte	.LASF41
 1019 0237 08       		.byte	0x8
 1020 0238 AB       		.byte	0xab
 1021 0239 11020000 		.4byte	0x211
 1022 023d 04       		.uleb128 0x4
 1023 023e ED040000 		.4byte	.LASF42
 1024 0242 08       		.byte	0x8
 1025 0243 AF       		.byte	0xaf
 1026 0244 B5010000 		.4byte	0x1b5
 1027 0248 04       		.uleb128 0x4
 1028 0249 92070000 		.4byte	.LASF43
 1029 024d 0A       		.byte	0xa
 1030 024e 16       		.byte	0x16
 1031 024f 82000000 		.4byte	0x82
ARM GAS  /tmp/ccPSOZXt.s 			page 29


 1032 0253 11       		.uleb128 0x11
 1033 0254 68020000 		.4byte	.LASF48
 1034 0258 18       		.byte	0x18
 1035 0259 0A       		.byte	0xa
 1036 025a 2D       		.byte	0x2d
 1037 025b A6020000 		.4byte	0x2a6
 1038 025f 0D       		.uleb128 0xd
 1039 0260 7F020000 		.4byte	.LASF44
 1040 0264 0A       		.byte	0xa
 1041 0265 2F       		.byte	0x2f
 1042 0266 A6020000 		.4byte	0x2a6
 1043 026a 00       		.byte	0
 1044 026b 12       		.uleb128 0x12
 1045 026c 5F6B00   		.ascii	"_k\000"
 1046 026f 0A       		.byte	0xa
 1047 0270 30       		.byte	0x30
 1048 0271 25000000 		.4byte	0x25
 1049 0275 04       		.byte	0x4
 1050 0276 0D       		.uleb128 0xd
 1051 0277 6C060000 		.4byte	.LASF45
 1052 027b 0A       		.byte	0xa
 1053 027c 30       		.byte	0x30
 1054 027d 25000000 		.4byte	0x25
 1055 0281 08       		.byte	0x8
 1056 0282 0D       		.uleb128 0xd
 1057 0283 2D020000 		.4byte	.LASF46
 1058 0287 0A       		.byte	0xa
 1059 0288 30       		.byte	0x30
 1060 0289 25000000 		.4byte	0x25
 1061 028d 0C       		.byte	0xc
 1062 028e 0D       		.uleb128 0xd
 1063 028f 7A010000 		.4byte	.LASF47
 1064 0293 0A       		.byte	0xa
 1065 0294 30       		.byte	0x30
 1066 0295 25000000 		.4byte	0x25
 1067 0299 10       		.byte	0x10
 1068 029a 12       		.uleb128 0x12
 1069 029b 5F7800   		.ascii	"_x\000"
 1070 029e 0A       		.byte	0xa
 1071 029f 31       		.byte	0x31
 1072 02a0 AC020000 		.4byte	0x2ac
 1073 02a4 14       		.byte	0x14
 1074 02a5 00       		.byte	0
 1075 02a6 13       		.uleb128 0x13
 1076 02a7 04       		.byte	0x4
 1077 02a8 53020000 		.4byte	0x253
 1078 02ac 0A       		.uleb128 0xa
 1079 02ad 48020000 		.4byte	0x248
 1080 02b1 BC020000 		.4byte	0x2bc
 1081 02b5 0B       		.uleb128 0xb
 1082 02b6 D9000000 		.4byte	0xd9
 1083 02ba 00       		.byte	0
 1084 02bb 00       		.byte	0
 1085 02bc 11       		.uleb128 0x11
 1086 02bd 93020000 		.4byte	.LASF49
 1087 02c1 24       		.byte	0x24
 1088 02c2 0A       		.byte	0xa
ARM GAS  /tmp/ccPSOZXt.s 			page 30


 1089 02c3 35       		.byte	0x35
 1090 02c4 35030000 		.4byte	0x335
 1091 02c8 0D       		.uleb128 0xd
 1092 02c9 E3000000 		.4byte	.LASF50
 1093 02cd 0A       		.byte	0xa
 1094 02ce 37       		.byte	0x37
 1095 02cf 25000000 		.4byte	0x25
 1096 02d3 00       		.byte	0
 1097 02d4 0D       		.uleb128 0xd
 1098 02d5 90080000 		.4byte	.LASF51
 1099 02d9 0A       		.byte	0xa
 1100 02da 38       		.byte	0x38
 1101 02db 25000000 		.4byte	0x25
 1102 02df 04       		.byte	0x4
 1103 02e0 0D       		.uleb128 0xd
 1104 02e1 2A010000 		.4byte	.LASF52
 1105 02e5 0A       		.byte	0xa
 1106 02e6 39       		.byte	0x39
 1107 02e7 25000000 		.4byte	0x25
 1108 02eb 08       		.byte	0x8
 1109 02ec 0D       		.uleb128 0xd
 1110 02ed CD080000 		.4byte	.LASF53
 1111 02f1 0A       		.byte	0xa
 1112 02f2 3A       		.byte	0x3a
 1113 02f3 25000000 		.4byte	0x25
 1114 02f7 0C       		.byte	0xc
 1115 02f8 0D       		.uleb128 0xd
 1116 02f9 00050000 		.4byte	.LASF54
 1117 02fd 0A       		.byte	0xa
 1118 02fe 3B       		.byte	0x3b
 1119 02ff 25000000 		.4byte	0x25
 1120 0303 10       		.byte	0x10
 1121 0304 0D       		.uleb128 0xd
 1122 0305 AA030000 		.4byte	.LASF55
 1123 0309 0A       		.byte	0xa
 1124 030a 3C       		.byte	0x3c
 1125 030b 25000000 		.4byte	0x25
 1126 030f 14       		.byte	0x14
 1127 0310 0D       		.uleb128 0xd
 1128 0311 EE070000 		.4byte	.LASF56
 1129 0315 0A       		.byte	0xa
 1130 0316 3D       		.byte	0x3d
 1131 0317 25000000 		.4byte	0x25
 1132 031b 18       		.byte	0x18
 1133 031c 0D       		.uleb128 0xd
 1134 031d DC050000 		.4byte	.LASF57
 1135 0321 0A       		.byte	0xa
 1136 0322 3E       		.byte	0x3e
 1137 0323 25000000 		.4byte	0x25
 1138 0327 1C       		.byte	0x1c
 1139 0328 0D       		.uleb128 0xd
 1140 0329 69080000 		.4byte	.LASF58
 1141 032d 0A       		.byte	0xa
 1142 032e 3F       		.byte	0x3f
 1143 032f 25000000 		.4byte	0x25
 1144 0333 20       		.byte	0x20
 1145 0334 00       		.byte	0
ARM GAS  /tmp/ccPSOZXt.s 			page 31


 1146 0335 14       		.uleb128 0x14
 1147 0336 22080000 		.4byte	.LASF59
 1148 033a 0801     		.2byte	0x108
 1149 033c 0A       		.byte	0xa
 1150 033d 48       		.byte	0x48
 1151 033e 75030000 		.4byte	0x375
 1152 0342 0D       		.uleb128 0xd
 1153 0343 FC010000 		.4byte	.LASF60
 1154 0347 0A       		.byte	0xa
 1155 0348 49       		.byte	0x49
 1156 0349 75030000 		.4byte	0x375
 1157 034d 00       		.byte	0
 1158 034e 0D       		.uleb128 0xd
 1159 034f B5050000 		.4byte	.LASF61
 1160 0353 0A       		.byte	0xa
 1161 0354 4A       		.byte	0x4a
 1162 0355 75030000 		.4byte	0x375
 1163 0359 80       		.byte	0x80
 1164 035a 15       		.uleb128 0x15
 1165 035b 51070000 		.4byte	.LASF62
 1166 035f 0A       		.byte	0xa
 1167 0360 4C       		.byte	0x4c
 1168 0361 48020000 		.4byte	0x248
 1169 0365 0001     		.2byte	0x100
 1170 0367 15       		.uleb128 0x15
 1171 0368 72010000 		.4byte	.LASF63
 1172 036c 0A       		.byte	0xa
 1173 036d 4F       		.byte	0x4f
 1174 036e 48020000 		.4byte	0x248
 1175 0372 0401     		.2byte	0x104
 1176 0374 00       		.byte	0
 1177 0375 0A       		.uleb128 0xa
 1178 0376 D7000000 		.4byte	0xd7
 1179 037a 85030000 		.4byte	0x385
 1180 037e 0B       		.uleb128 0xb
 1181 037f D9000000 		.4byte	0xd9
 1182 0383 1F       		.byte	0x1f
 1183 0384 00       		.byte	0
 1184 0385 14       		.uleb128 0x14
 1185 0386 09050000 		.4byte	.LASF64
 1186 038a 9001     		.2byte	0x190
 1187 038c 0A       		.byte	0xa
 1188 038d 5B       		.byte	0x5b
 1189 038e C3030000 		.4byte	0x3c3
 1190 0392 0D       		.uleb128 0xd
 1191 0393 7F020000 		.4byte	.LASF44
 1192 0397 0A       		.byte	0xa
 1193 0398 5C       		.byte	0x5c
 1194 0399 C3030000 		.4byte	0x3c3
 1195 039d 00       		.byte	0
 1196 039e 0D       		.uleb128 0xd
 1197 039f 4D060000 		.4byte	.LASF65
 1198 03a3 0A       		.byte	0xa
 1199 03a4 5D       		.byte	0x5d
 1200 03a5 25000000 		.4byte	0x25
 1201 03a9 04       		.byte	0x4
 1202 03aa 0D       		.uleb128 0xd
ARM GAS  /tmp/ccPSOZXt.s 			page 32


 1203 03ab 1D020000 		.4byte	.LASF66
 1204 03af 0A       		.byte	0xa
 1205 03b0 5F       		.byte	0x5f
 1206 03b1 C9030000 		.4byte	0x3c9
 1207 03b5 08       		.byte	0x8
 1208 03b6 0D       		.uleb128 0xd
 1209 03b7 22080000 		.4byte	.LASF59
 1210 03bb 0A       		.byte	0xa
 1211 03bc 60       		.byte	0x60
 1212 03bd 35030000 		.4byte	0x335
 1213 03c1 88       		.byte	0x88
 1214 03c2 00       		.byte	0
 1215 03c3 13       		.uleb128 0x13
 1216 03c4 04       		.byte	0x4
 1217 03c5 85030000 		.4byte	0x385
 1218 03c9 0A       		.uleb128 0xa
 1219 03ca D9030000 		.4byte	0x3d9
 1220 03ce D9030000 		.4byte	0x3d9
 1221 03d2 0B       		.uleb128 0xb
 1222 03d3 D9000000 		.4byte	0xd9
 1223 03d7 1F       		.byte	0x1f
 1224 03d8 00       		.byte	0
 1225 03d9 13       		.uleb128 0x13
 1226 03da 04       		.byte	0x4
 1227 03db DF030000 		.4byte	0x3df
 1228 03df 16       		.uleb128 0x16
 1229 03e0 11       		.uleb128 0x11
 1230 03e1 E6050000 		.4byte	.LASF67
 1231 03e5 08       		.byte	0x8
 1232 03e6 0A       		.byte	0xa
 1233 03e7 73       		.byte	0x73
 1234 03e8 05040000 		.4byte	0x405
 1235 03ec 0D       		.uleb128 0xd
 1236 03ed 1A010000 		.4byte	.LASF68
 1237 03f1 0A       		.byte	0xa
 1238 03f2 74       		.byte	0x74
 1239 03f3 05040000 		.4byte	0x405
 1240 03f7 00       		.byte	0
 1241 03f8 0D       		.uleb128 0xd
 1242 03f9 E9060000 		.4byte	.LASF69
 1243 03fd 0A       		.byte	0xa
 1244 03fe 75       		.byte	0x75
 1245 03ff 25000000 		.4byte	0x25
 1246 0403 04       		.byte	0x4
 1247 0404 00       		.byte	0
 1248 0405 13       		.uleb128 0x13
 1249 0406 04       		.byte	0x4
 1250 0407 45000000 		.4byte	0x45
 1251 040b 11       		.uleb128 0x11
 1252 040c 13000000 		.4byte	.LASF70
 1253 0410 68       		.byte	0x68
 1254 0411 0A       		.byte	0xa
 1255 0412 B3       		.byte	0xb3
 1256 0413 35050000 		.4byte	0x535
 1257 0417 12       		.uleb128 0x12
 1258 0418 5F7000   		.ascii	"_p\000"
 1259 041b 0A       		.byte	0xa
ARM GAS  /tmp/ccPSOZXt.s 			page 33


 1260 041c B4       		.byte	0xb4
 1261 041d 05040000 		.4byte	0x405
 1262 0421 00       		.byte	0
 1263 0422 12       		.uleb128 0x12
 1264 0423 5F7200   		.ascii	"_r\000"
 1265 0426 0A       		.byte	0xa
 1266 0427 B5       		.byte	0xb5
 1267 0428 25000000 		.4byte	0x25
 1268 042c 04       		.byte	0x4
 1269 042d 12       		.uleb128 0x12
 1270 042e 5F7700   		.ascii	"_w\000"
 1271 0431 0A       		.byte	0xa
 1272 0432 B6       		.byte	0xb6
 1273 0433 25000000 		.4byte	0x25
 1274 0437 08       		.byte	0x8
 1275 0438 0D       		.uleb128 0xd
 1276 0439 6B010000 		.4byte	.LASF71
 1277 043d 0A       		.byte	0xa
 1278 043e B7       		.byte	0xb7
 1279 043f 4C000000 		.4byte	0x4c
 1280 0443 0C       		.byte	0xc
 1281 0444 0D       		.uleb128 0xd
 1282 0445 D2020000 		.4byte	.LASF72
 1283 0449 0A       		.byte	0xa
 1284 044a B8       		.byte	0xb8
 1285 044b 4C000000 		.4byte	0x4c
 1286 044f 0E       		.byte	0xe
 1287 0450 12       		.uleb128 0x12
 1288 0451 5F626600 		.ascii	"_bf\000"
 1289 0455 0A       		.byte	0xa
 1290 0456 B9       		.byte	0xb9
 1291 0457 E0030000 		.4byte	0x3e0
 1292 045b 10       		.byte	0x10
 1293 045c 0D       		.uleb128 0xd
 1294 045d 8C000000 		.4byte	.LASF73
 1295 0461 0A       		.byte	0xa
 1296 0462 BA       		.byte	0xba
 1297 0463 25000000 		.4byte	0x25
 1298 0467 18       		.byte	0x18
 1299 0468 0D       		.uleb128 0xd
 1300 0469 4B010000 		.4byte	.LASF74
 1301 046d 0A       		.byte	0xa
 1302 046e C1       		.byte	0xc1
 1303 046f D7000000 		.4byte	0xd7
 1304 0473 1C       		.byte	0x1c
 1305 0474 0D       		.uleb128 0xd
 1306 0475 81050000 		.4byte	.LASF75
 1307 0479 0A       		.byte	0xa
 1308 047a C3       		.byte	0xc3
 1309 047b A2060000 		.4byte	0x6a2
 1310 047f 20       		.byte	0x20
 1311 0480 0D       		.uleb128 0xd
 1312 0481 A3030000 		.4byte	.LASF76
 1313 0485 0A       		.byte	0xa
 1314 0486 C5       		.byte	0xc5
 1315 0487 CC060000 		.4byte	0x6cc
 1316 048b 24       		.byte	0x24
ARM GAS  /tmp/ccPSOZXt.s 			page 34


 1317 048c 0D       		.uleb128 0xd
 1318 048d 92060000 		.4byte	.LASF77
 1319 0491 0A       		.byte	0xa
 1320 0492 C8       		.byte	0xc8
 1321 0493 F0060000 		.4byte	0x6f0
 1322 0497 28       		.byte	0x28
 1323 0498 0D       		.uleb128 0xd
 1324 0499 EC000000 		.4byte	.LASF78
 1325 049d 0A       		.byte	0xa
 1326 049e C9       		.byte	0xc9
 1327 049f 0A070000 		.4byte	0x70a
 1328 04a3 2C       		.byte	0x2c
 1329 04a4 12       		.uleb128 0x12
 1330 04a5 5F756200 		.ascii	"_ub\000"
 1331 04a9 0A       		.byte	0xa
 1332 04aa CC       		.byte	0xcc
 1333 04ab E0030000 		.4byte	0x3e0
 1334 04af 30       		.byte	0x30
 1335 04b0 12       		.uleb128 0x12
 1336 04b1 5F757000 		.ascii	"_up\000"
 1337 04b5 0A       		.byte	0xa
 1338 04b6 CD       		.byte	0xcd
 1339 04b7 05040000 		.4byte	0x405
 1340 04bb 38       		.byte	0x38
 1341 04bc 12       		.uleb128 0x12
 1342 04bd 5F757200 		.ascii	"_ur\000"
 1343 04c1 0A       		.byte	0xa
 1344 04c2 CE       		.byte	0xce
 1345 04c3 25000000 		.4byte	0x25
 1346 04c7 3C       		.byte	0x3c
 1347 04c8 0D       		.uleb128 0xd
 1348 04c9 14010000 		.4byte	.LASF79
 1349 04cd 0A       		.byte	0xa
 1350 04ce D1       		.byte	0xd1
 1351 04cf 10070000 		.4byte	0x710
 1352 04d3 40       		.byte	0x40
 1353 04d4 0D       		.uleb128 0xd
 1354 04d5 5B080000 		.4byte	.LASF80
 1355 04d9 0A       		.byte	0xa
 1356 04da D2       		.byte	0xd2
 1357 04db 20070000 		.4byte	0x720
 1358 04df 43       		.byte	0x43
 1359 04e0 12       		.uleb128 0x12
 1360 04e1 5F6C6200 		.ascii	"_lb\000"
 1361 04e5 0A       		.byte	0xa
 1362 04e6 D5       		.byte	0xd5
 1363 04e7 E0030000 		.4byte	0x3e0
 1364 04eb 44       		.byte	0x44
 1365 04ec 0D       		.uleb128 0xd
 1366 04ed C6060000 		.4byte	.LASF81
 1367 04f1 0A       		.byte	0xa
 1368 04f2 D8       		.byte	0xd8
 1369 04f3 25000000 		.4byte	0x25
 1370 04f7 4C       		.byte	0x4c
 1371 04f8 0D       		.uleb128 0xd
 1372 04f9 06040000 		.4byte	.LASF82
 1373 04fd 0A       		.byte	0xa
ARM GAS  /tmp/ccPSOZXt.s 			page 35


 1374 04fe D9       		.byte	0xd9
 1375 04ff C0010000 		.4byte	0x1c0
 1376 0503 50       		.byte	0x50
 1377 0504 0D       		.uleb128 0xd
 1378 0505 45000000 		.4byte	.LASF83
 1379 0509 0A       		.byte	0xa
 1380 050a DC       		.byte	0xdc
 1381 050b 53050000 		.4byte	0x553
 1382 050f 54       		.byte	0x54
 1383 0510 0D       		.uleb128 0xd
 1384 0511 58030000 		.4byte	.LASF84
 1385 0515 0A       		.byte	0xa
 1386 0516 E0       		.byte	0xe0
 1387 0517 3D020000 		.4byte	0x23d
 1388 051b 58       		.byte	0x58
 1389 051c 0D       		.uleb128 0xd
 1390 051d 98020000 		.4byte	.LASF85
 1391 0521 0A       		.byte	0xa
 1392 0522 E2       		.byte	0xe2
 1393 0523 32020000 		.4byte	0x232
 1394 0527 5C       		.byte	0x5c
 1395 0528 0D       		.uleb128 0xd
 1396 0529 ED050000 		.4byte	.LASF86
 1397 052d 0A       		.byte	0xa
 1398 052e E3       		.byte	0xe3
 1399 052f 25000000 		.4byte	0x25
 1400 0533 64       		.byte	0x64
 1401 0534 00       		.byte	0
 1402 0535 17       		.uleb128 0x17
 1403 0536 25000000 		.4byte	0x25
 1404 053a 53050000 		.4byte	0x553
 1405 053e 18       		.uleb128 0x18
 1406 053f 53050000 		.4byte	0x553
 1407 0543 18       		.uleb128 0x18
 1408 0544 D7000000 		.4byte	0xd7
 1409 0548 18       		.uleb128 0x18
 1410 0549 90060000 		.4byte	0x690
 1411 054d 18       		.uleb128 0x18
 1412 054e 25000000 		.4byte	0x25
 1413 0552 00       		.byte	0
 1414 0553 13       		.uleb128 0x13
 1415 0554 04       		.byte	0x4
 1416 0555 5E050000 		.4byte	0x55e
 1417 0559 05       		.uleb128 0x5
 1418 055a 53050000 		.4byte	0x553
 1419 055e 19       		.uleb128 0x19
 1420 055f 74060000 		.4byte	.LASF87
 1421 0563 2804     		.2byte	0x428
 1422 0565 0A       		.byte	0xa
 1423 0566 3802     		.2byte	0x238
 1424 0568 90060000 		.4byte	0x690
 1425 056c 1A       		.uleb128 0x1a
 1426 056d BA060000 		.4byte	.LASF88
 1427 0571 0A       		.byte	0xa
 1428 0572 3A02     		.2byte	0x23a
 1429 0574 25000000 		.4byte	0x25
 1430 0578 00       		.byte	0
ARM GAS  /tmp/ccPSOZXt.s 			page 36


 1431 0579 1A       		.uleb128 0x1a
 1432 057a FE070000 		.4byte	.LASF89
 1433 057e 0A       		.byte	0xa
 1434 057f 3F02     		.2byte	0x23f
 1435 0581 77070000 		.4byte	0x777
 1436 0585 04       		.byte	0x4
 1437 0586 1A       		.uleb128 0x1a
 1438 0587 E6070000 		.4byte	.LASF90
 1439 058b 0A       		.byte	0xa
 1440 058c 3F02     		.2byte	0x23f
 1441 058e 77070000 		.4byte	0x777
 1442 0592 08       		.byte	0x8
 1443 0593 1A       		.uleb128 0x1a
 1444 0594 60020000 		.4byte	.LASF91
 1445 0598 0A       		.byte	0xa
 1446 0599 3F02     		.2byte	0x23f
 1447 059b 77070000 		.4byte	0x777
 1448 059f 0C       		.byte	0xc
 1449 05a0 1A       		.uleb128 0x1a
 1450 05a1 48060000 		.4byte	.LASF92
 1451 05a5 0A       		.byte	0xa
 1452 05a6 4102     		.2byte	0x241
 1453 05a8 25000000 		.4byte	0x25
 1454 05ac 10       		.byte	0x10
 1455 05ad 1A       		.uleb128 0x1a
 1456 05ae 23000000 		.4byte	.LASF93
 1457 05b2 0A       		.byte	0xa
 1458 05b3 4202     		.2byte	0x242
 1459 05b5 59090000 		.4byte	0x959
 1460 05b9 14       		.byte	0x14
 1461 05ba 1A       		.uleb128 0x1a
 1462 05bb C9070000 		.4byte	.LASF94
 1463 05bf 0A       		.byte	0xa
 1464 05c0 4402     		.2byte	0x244
 1465 05c2 25000000 		.4byte	0x25
 1466 05c6 30       		.byte	0x30
 1467 05c7 1A       		.uleb128 0x1a
 1468 05c8 52060000 		.4byte	.LASF95
 1469 05cc 0A       		.byte	0xa
 1470 05cd 4502     		.2byte	0x245
 1471 05cf C6060000 		.4byte	0x6c6
 1472 05d3 34       		.byte	0x34
 1473 05d4 1A       		.uleb128 0x1a
 1474 05d5 05080000 		.4byte	.LASF96
 1475 05d9 0A       		.byte	0xa
 1476 05da 4702     		.2byte	0x247
 1477 05dc 25000000 		.4byte	0x25
 1478 05e0 38       		.byte	0x38
 1479 05e1 1A       		.uleb128 0x1a
 1480 05e2 62060000 		.4byte	.LASF97
 1481 05e6 0A       		.byte	0xa
 1482 05e7 4902     		.2byte	0x249
 1483 05e9 74090000 		.4byte	0x974
 1484 05ed 3C       		.byte	0x3c
 1485 05ee 1A       		.uleb128 0x1a
 1486 05ef 31030000 		.4byte	.LASF98
 1487 05f3 0A       		.byte	0xa
ARM GAS  /tmp/ccPSOZXt.s 			page 37


 1488 05f4 4C02     		.2byte	0x24c
 1489 05f6 A6020000 		.4byte	0x2a6
 1490 05fa 40       		.byte	0x40
 1491 05fb 1A       		.uleb128 0x1a
 1492 05fc 86010000 		.4byte	.LASF99
 1493 0600 0A       		.byte	0xa
 1494 0601 4D02     		.2byte	0x24d
 1495 0603 25000000 		.4byte	0x25
 1496 0607 44       		.byte	0x44
 1497 0608 1A       		.uleb128 0x1a
 1498 0609 B7080000 		.4byte	.LASF100
 1499 060d 0A       		.byte	0xa
 1500 060e 4E02     		.2byte	0x24e
 1501 0610 A6020000 		.4byte	0x2a6
 1502 0614 48       		.byte	0x48
 1503 0615 1A       		.uleb128 0x1a
 1504 0616 F5050000 		.4byte	.LASF101
 1505 061a 0A       		.byte	0xa
 1506 061b 4F02     		.2byte	0x24f
 1507 061d 7A090000 		.4byte	0x97a
 1508 0621 4C       		.byte	0x4c
 1509 0622 1A       		.uleb128 0x1a
 1510 0623 B8020000 		.4byte	.LASF102
 1511 0627 0A       		.byte	0xa
 1512 0628 5202     		.2byte	0x252
 1513 062a 25000000 		.4byte	0x25
 1514 062e 50       		.byte	0x50
 1515 062f 1A       		.uleb128 0x1a
 1516 0630 C4010000 		.4byte	.LASF103
 1517 0634 0A       		.byte	0xa
 1518 0635 5302     		.2byte	0x253
 1519 0637 90060000 		.4byte	0x690
 1520 063b 54       		.byte	0x54
 1521 063c 1A       		.uleb128 0x1a
 1522 063d C1050000 		.4byte	.LASF104
 1523 0641 0A       		.byte	0xa
 1524 0642 7602     		.2byte	0x276
 1525 0644 37090000 		.4byte	0x937
 1526 0648 58       		.byte	0x58
 1527 0649 1B       		.uleb128 0x1b
 1528 064a 09050000 		.4byte	.LASF64
 1529 064e 0A       		.byte	0xa
 1530 064f 7A02     		.2byte	0x27a
 1531 0651 C3030000 		.4byte	0x3c3
 1532 0655 4801     		.2byte	0x148
 1533 0657 1B       		.uleb128 0x1b
 1534 0658 0F030000 		.4byte	.LASF105
 1535 065c 0A       		.byte	0xa
 1536 065d 7B02     		.2byte	0x27b
 1537 065f 85030000 		.4byte	0x385
 1538 0663 4C01     		.2byte	0x14c
 1539 0665 1B       		.uleb128 0x1b
 1540 0666 30080000 		.4byte	.LASF106
 1541 066a 0A       		.byte	0xa
 1542 066b 7F02     		.2byte	0x27f
 1543 066d 8B090000 		.4byte	0x98b
 1544 0671 DC02     		.2byte	0x2dc
ARM GAS  /tmp/ccPSOZXt.s 			page 38


 1545 0673 1B       		.uleb128 0x1b
 1546 0674 5A010000 		.4byte	.LASF107
 1547 0678 0A       		.byte	0xa
 1548 0679 8402     		.2byte	0x284
 1549 067b 3C070000 		.4byte	0x73c
 1550 067f E002     		.2byte	0x2e0
 1551 0681 1B       		.uleb128 0x1b
 1552 0682 34010000 		.4byte	.LASF108
 1553 0686 0A       		.byte	0xa
 1554 0687 8502     		.2byte	0x285
 1555 0689 97090000 		.4byte	0x997
 1556 068d EC02     		.2byte	0x2ec
 1557 068f 00       		.byte	0
 1558 0690 13       		.uleb128 0x13
 1559 0691 04       		.byte	0x4
 1560 0692 96060000 		.4byte	0x696
 1561 0696 03       		.uleb128 0x3
 1562 0697 01       		.byte	0x1
 1563 0698 08       		.byte	0x8
 1564 0699 C1060000 		.4byte	.LASF109
 1565 069d 05       		.uleb128 0x5
 1566 069e 96060000 		.4byte	0x696
 1567 06a2 13       		.uleb128 0x13
 1568 06a3 04       		.byte	0x4
 1569 06a4 35050000 		.4byte	0x535
 1570 06a8 17       		.uleb128 0x17
 1571 06a9 25000000 		.4byte	0x25
 1572 06ad C6060000 		.4byte	0x6c6
 1573 06b1 18       		.uleb128 0x18
 1574 06b2 53050000 		.4byte	0x553
 1575 06b6 18       		.uleb128 0x18
 1576 06b7 D7000000 		.4byte	0xd7
 1577 06bb 18       		.uleb128 0x18
 1578 06bc C6060000 		.4byte	0x6c6
 1579 06c0 18       		.uleb128 0x18
 1580 06c1 25000000 		.4byte	0x25
 1581 06c5 00       		.byte	0
 1582 06c6 13       		.uleb128 0x13
 1583 06c7 04       		.byte	0x4
 1584 06c8 9D060000 		.4byte	0x69d
 1585 06cc 13       		.uleb128 0x13
 1586 06cd 04       		.byte	0x4
 1587 06ce A8060000 		.4byte	0x6a8
 1588 06d2 17       		.uleb128 0x17
 1589 06d3 CB010000 		.4byte	0x1cb
 1590 06d7 F0060000 		.4byte	0x6f0
 1591 06db 18       		.uleb128 0x18
 1592 06dc 53050000 		.4byte	0x553
 1593 06e0 18       		.uleb128 0x18
 1594 06e1 D7000000 		.4byte	0xd7
 1595 06e5 18       		.uleb128 0x18
 1596 06e6 CB010000 		.4byte	0x1cb
 1597 06ea 18       		.uleb128 0x18
 1598 06eb 25000000 		.4byte	0x25
 1599 06ef 00       		.byte	0
 1600 06f0 13       		.uleb128 0x13
 1601 06f1 04       		.byte	0x4
ARM GAS  /tmp/ccPSOZXt.s 			page 39


 1602 06f2 D2060000 		.4byte	0x6d2
 1603 06f6 17       		.uleb128 0x17
 1604 06f7 25000000 		.4byte	0x25
 1605 06fb 0A070000 		.4byte	0x70a
 1606 06ff 18       		.uleb128 0x18
 1607 0700 53050000 		.4byte	0x553
 1608 0704 18       		.uleb128 0x18
 1609 0705 D7000000 		.4byte	0xd7
 1610 0709 00       		.byte	0
 1611 070a 13       		.uleb128 0x13
 1612 070b 04       		.byte	0x4
 1613 070c F6060000 		.4byte	0x6f6
 1614 0710 0A       		.uleb128 0xa
 1615 0711 45000000 		.4byte	0x45
 1616 0715 20070000 		.4byte	0x720
 1617 0719 0B       		.uleb128 0xb
 1618 071a D9000000 		.4byte	0xd9
 1619 071e 02       		.byte	0x2
 1620 071f 00       		.byte	0
 1621 0720 0A       		.uleb128 0xa
 1622 0721 45000000 		.4byte	0x45
 1623 0725 30070000 		.4byte	0x730
 1624 0729 0B       		.uleb128 0xb
 1625 072a D9000000 		.4byte	0xd9
 1626 072e 00       		.byte	0
 1627 072f 00       		.byte	0
 1628 0730 0E       		.uleb128 0xe
 1629 0731 7F010000 		.4byte	.LASF110
 1630 0735 0A       		.byte	0xa
 1631 0736 1D01     		.2byte	0x11d
 1632 0738 0B040000 		.4byte	0x40b
 1633 073c 1C       		.uleb128 0x1c
 1634 073d F8070000 		.4byte	.LASF111
 1635 0741 0C       		.byte	0xc
 1636 0742 0A       		.byte	0xa
 1637 0743 2101     		.2byte	0x121
 1638 0745 71070000 		.4byte	0x771
 1639 0749 1A       		.uleb128 0x1a
 1640 074a 7F020000 		.4byte	.LASF44
 1641 074e 0A       		.byte	0xa
 1642 074f 2301     		.2byte	0x123
 1643 0751 71070000 		.4byte	0x771
 1644 0755 00       		.byte	0
 1645 0756 1A       		.uleb128 0x1a
 1646 0757 E7020000 		.4byte	.LASF112
 1647 075b 0A       		.byte	0xa
 1648 075c 2401     		.2byte	0x124
 1649 075e 25000000 		.4byte	0x25
 1650 0762 04       		.byte	0x4
 1651 0763 1A       		.uleb128 0x1a
 1652 0764 42060000 		.4byte	.LASF113
 1653 0768 0A       		.byte	0xa
 1654 0769 2501     		.2byte	0x125
 1655 076b 77070000 		.4byte	0x777
 1656 076f 08       		.byte	0x8
 1657 0770 00       		.byte	0
 1658 0771 13       		.uleb128 0x13
ARM GAS  /tmp/ccPSOZXt.s 			page 40


 1659 0772 04       		.byte	0x4
 1660 0773 3C070000 		.4byte	0x73c
 1661 0777 13       		.uleb128 0x13
 1662 0778 04       		.byte	0x4
 1663 0779 30070000 		.4byte	0x730
 1664 077d 1C       		.uleb128 0x1c
 1665 077e 1B000000 		.4byte	.LASF114
 1666 0782 0E       		.byte	0xe
 1667 0783 0A       		.byte	0xa
 1668 0784 3D01     		.2byte	0x13d
 1669 0786 B2070000 		.4byte	0x7b2
 1670 078a 1A       		.uleb128 0x1a
 1671 078b 7B060000 		.4byte	.LASF115
 1672 078f 0A       		.byte	0xa
 1673 0790 3E01     		.2byte	0x13e
 1674 0792 B2070000 		.4byte	0x7b2
 1675 0796 00       		.byte	0
 1676 0797 1A       		.uleb128 0x1a
 1677 0798 8D030000 		.4byte	.LASF116
 1678 079c 0A       		.byte	0xa
 1679 079d 3F01     		.2byte	0x13f
 1680 079f B2070000 		.4byte	0x7b2
 1681 07a3 06       		.byte	0x6
 1682 07a4 1A       		.uleb128 0x1a
 1683 07a5 85070000 		.4byte	.LASF117
 1684 07a9 0A       		.byte	0xa
 1685 07aa 4001     		.2byte	0x140
 1686 07ac 5E000000 		.4byte	0x5e
 1687 07b0 0C       		.byte	0xc
 1688 07b1 00       		.byte	0
 1689 07b2 0A       		.uleb128 0xa
 1690 07b3 5E000000 		.4byte	0x5e
 1691 07b7 C2070000 		.4byte	0x7c2
 1692 07bb 0B       		.uleb128 0xb
 1693 07bc D9000000 		.4byte	0xd9
 1694 07c0 02       		.byte	0x2
 1695 07c1 00       		.byte	0
 1696 07c2 1D       		.uleb128 0x1d
 1697 07c3 D0       		.byte	0xd0
 1698 07c4 0A       		.byte	0xa
 1699 07c5 5702     		.2byte	0x257
 1700 07c7 C3080000 		.4byte	0x8c3
 1701 07cb 1A       		.uleb128 0x1a
 1702 07cc B4030000 		.4byte	.LASF118
 1703 07d0 0A       		.byte	0xa
 1704 07d1 5902     		.2byte	0x259
 1705 07d3 2C000000 		.4byte	0x2c
 1706 07d7 00       		.byte	0
 1707 07d8 1A       		.uleb128 0x1a
 1708 07d9 3C070000 		.4byte	.LASF119
 1709 07dd 0A       		.byte	0xa
 1710 07de 5A02     		.2byte	0x25a
 1711 07e0 90060000 		.4byte	0x690
 1712 07e4 04       		.byte	0x4
 1713 07e5 1A       		.uleb128 0x1a
 1714 07e6 24030000 		.4byte	.LASF120
 1715 07ea 0A       		.byte	0xa
ARM GAS  /tmp/ccPSOZXt.s 			page 41


 1716 07eb 5B02     		.2byte	0x25b
 1717 07ed C3080000 		.4byte	0x8c3
 1718 07f1 08       		.byte	0x8
 1719 07f2 1A       		.uleb128 0x1a
 1720 07f3 74080000 		.4byte	.LASF121
 1721 07f7 0A       		.byte	0xa
 1722 07f8 5C02     		.2byte	0x25c
 1723 07fa BC020000 		.4byte	0x2bc
 1724 07fe 24       		.byte	0x24
 1725 07ff 1A       		.uleb128 0x1a
 1726 0800 70020000 		.4byte	.LASF122
 1727 0804 0A       		.byte	0xa
 1728 0805 5D02     		.2byte	0x25d
 1729 0807 25000000 		.4byte	0x25
 1730 080b 48       		.byte	0x48
 1731 080c 1A       		.uleb128 0x1a
 1732 080d 37060000 		.4byte	.LASF123
 1733 0811 0A       		.byte	0xa
 1734 0812 5E02     		.2byte	0x25e
 1735 0814 90000000 		.4byte	0x90
 1736 0818 50       		.byte	0x50
 1737 0819 1A       		.uleb128 0x1a
 1738 081a 99080000 		.4byte	.LASF124
 1739 081e 0A       		.byte	0xa
 1740 081f 5F02     		.2byte	0x25f
 1741 0821 7D070000 		.4byte	0x77d
 1742 0825 58       		.byte	0x58
 1743 0826 1A       		.uleb128 0x1a
 1744 0827 CF050000 		.4byte	.LASF125
 1745 082b 0A       		.byte	0xa
 1746 082c 6002     		.2byte	0x260
 1747 082e 32020000 		.4byte	0x232
 1748 0832 68       		.byte	0x68
 1749 0833 1A       		.uleb128 0x1a
 1750 0834 A9080000 		.4byte	.LASF126
 1751 0838 0A       		.byte	0xa
 1752 0839 6102     		.2byte	0x261
 1753 083b 32020000 		.4byte	0x232
 1754 083f 70       		.byte	0x70
 1755 0840 1A       		.uleb128 0x1a
 1756 0841 D5000000 		.4byte	.LASF127
 1757 0845 0A       		.byte	0xa
 1758 0846 6202     		.2byte	0x262
 1759 0848 32020000 		.4byte	0x232
 1760 084c 78       		.byte	0x78
 1761 084d 1A       		.uleb128 0x1a
 1762 084e 18080000 		.4byte	.LASF128
 1763 0852 0A       		.byte	0xa
 1764 0853 6302     		.2byte	0x263
 1765 0855 D3080000 		.4byte	0x8d3
 1766 0859 80       		.byte	0x80
 1767 085a 1A       		.uleb128 0x1a
 1768 085b 18030000 		.4byte	.LASF129
 1769 085f 0A       		.byte	0xa
 1770 0860 6402     		.2byte	0x264
 1771 0862 E3080000 		.4byte	0x8e3
 1772 0866 88       		.byte	0x88
ARM GAS  /tmp/ccPSOZXt.s 			page 42


 1773 0867 1A       		.uleb128 0x1a
 1774 0868 38000000 		.4byte	.LASF130
 1775 086c 0A       		.byte	0xa
 1776 086d 6502     		.2byte	0x265
 1777 086f 25000000 		.4byte	0x25
 1778 0873 A0       		.byte	0xa0
 1779 0874 1A       		.uleb128 0x1a
 1780 0875 EE010000 		.4byte	.LASF131
 1781 0879 0A       		.byte	0xa
 1782 087a 6602     		.2byte	0x266
 1783 087c 32020000 		.4byte	0x232
 1784 0880 A4       		.byte	0xa4
 1785 0881 1A       		.uleb128 0x1a
 1786 0882 C6000000 		.4byte	.LASF132
 1787 0886 0A       		.byte	0xa
 1788 0887 6702     		.2byte	0x267
 1789 0889 32020000 		.4byte	0x232
 1790 088d AC       		.byte	0xac
 1791 088e 1A       		.uleb128 0x1a
 1792 088f CC010000 		.4byte	.LASF133
 1793 0893 0A       		.byte	0xa
 1794 0894 6802     		.2byte	0x268
 1795 0896 32020000 		.4byte	0x232
 1796 089a B4       		.byte	0xb4
 1797 089b 1A       		.uleb128 0x1a
 1798 089c 55000000 		.4byte	.LASF134
 1799 08a0 0A       		.byte	0xa
 1800 08a1 6902     		.2byte	0x269
 1801 08a3 32020000 		.4byte	0x232
 1802 08a7 BC       		.byte	0xbc
 1803 08a8 1A       		.uleb128 0x1a
 1804 08a9 64000000 		.4byte	.LASF135
 1805 08ad 0A       		.byte	0xa
 1806 08ae 6A02     		.2byte	0x26a
 1807 08b0 32020000 		.4byte	0x232
 1808 08b4 C4       		.byte	0xc4
 1809 08b5 1A       		.uleb128 0x1a
 1810 08b6 C6050000 		.4byte	.LASF136
 1811 08ba 0A       		.byte	0xa
 1812 08bb 6B02     		.2byte	0x26b
 1813 08bd 25000000 		.4byte	0x25
 1814 08c1 CC       		.byte	0xcc
 1815 08c2 00       		.byte	0
 1816 08c3 0A       		.uleb128 0xa
 1817 08c4 96060000 		.4byte	0x696
 1818 08c8 D3080000 		.4byte	0x8d3
 1819 08cc 0B       		.uleb128 0xb
 1820 08cd D9000000 		.4byte	0xd9
 1821 08d1 19       		.byte	0x19
 1822 08d2 00       		.byte	0
 1823 08d3 0A       		.uleb128 0xa
 1824 08d4 96060000 		.4byte	0x696
 1825 08d8 E3080000 		.4byte	0x8e3
 1826 08dc 0B       		.uleb128 0xb
 1827 08dd D9000000 		.4byte	0xd9
 1828 08e1 07       		.byte	0x7
 1829 08e2 00       		.byte	0
ARM GAS  /tmp/ccPSOZXt.s 			page 43


 1830 08e3 0A       		.uleb128 0xa
 1831 08e4 96060000 		.4byte	0x696
 1832 08e8 F3080000 		.4byte	0x8f3
 1833 08ec 0B       		.uleb128 0xb
 1834 08ed D9000000 		.4byte	0xd9
 1835 08f1 17       		.byte	0x17
 1836 08f2 00       		.byte	0
 1837 08f3 1D       		.uleb128 0x1d
 1838 08f4 F0       		.byte	0xf0
 1839 08f5 0A       		.byte	0xa
 1840 08f6 7002     		.2byte	0x270
 1841 08f8 17090000 		.4byte	0x917
 1842 08fc 1A       		.uleb128 0x1a
 1843 08fd 53010000 		.4byte	.LASF137
 1844 0901 0A       		.byte	0xa
 1845 0902 7302     		.2byte	0x273
 1846 0904 17090000 		.4byte	0x917
 1847 0908 00       		.byte	0
 1848 0909 1A       		.uleb128 0x1a
 1849 090a 85020000 		.4byte	.LASF138
 1850 090e 0A       		.byte	0xa
 1851 090f 7402     		.2byte	0x274
 1852 0911 27090000 		.4byte	0x927
 1853 0915 78       		.byte	0x78
 1854 0916 00       		.byte	0
 1855 0917 0A       		.uleb128 0xa
 1856 0918 05040000 		.4byte	0x405
 1857 091c 27090000 		.4byte	0x927
 1858 0920 0B       		.uleb128 0xb
 1859 0921 D9000000 		.4byte	0xd9
 1860 0925 1D       		.byte	0x1d
 1861 0926 00       		.byte	0
 1862 0927 0A       		.uleb128 0xa
 1863 0928 2C000000 		.4byte	0x2c
 1864 092c 37090000 		.4byte	0x937
 1865 0930 0B       		.uleb128 0xb
 1866 0931 D9000000 		.4byte	0xd9
 1867 0935 1D       		.byte	0x1d
 1868 0936 00       		.byte	0
 1869 0937 1E       		.uleb128 0x1e
 1870 0938 F0       		.byte	0xf0
 1871 0939 0A       		.byte	0xa
 1872 093a 5502     		.2byte	0x255
 1873 093c 59090000 		.4byte	0x959
 1874 0940 1F       		.uleb128 0x1f
 1875 0941 74060000 		.4byte	.LASF87
 1876 0945 0A       		.byte	0xa
 1877 0946 6C02     		.2byte	0x26c
 1878 0948 C2070000 		.4byte	0x7c2
 1879 094c 1F       		.uleb128 0x1f
 1880 094d 61080000 		.4byte	.LASF139
 1881 0951 0A       		.byte	0xa
 1882 0952 7502     		.2byte	0x275
 1883 0954 F3080000 		.4byte	0x8f3
 1884 0958 00       		.byte	0
 1885 0959 0A       		.uleb128 0xa
 1886 095a 96060000 		.4byte	0x696
ARM GAS  /tmp/ccPSOZXt.s 			page 44


 1887 095e 69090000 		.4byte	0x969
 1888 0962 0B       		.uleb128 0xb
 1889 0963 D9000000 		.4byte	0xd9
 1890 0967 18       		.byte	0x18
 1891 0968 00       		.byte	0
 1892 0969 20       		.uleb128 0x20
 1893 096a 74090000 		.4byte	0x974
 1894 096e 18       		.uleb128 0x18
 1895 096f 53050000 		.4byte	0x553
 1896 0973 00       		.byte	0
 1897 0974 13       		.uleb128 0x13
 1898 0975 04       		.byte	0x4
 1899 0976 69090000 		.4byte	0x969
 1900 097a 13       		.uleb128 0x13
 1901 097b 04       		.byte	0x4
 1902 097c A6020000 		.4byte	0x2a6
 1903 0980 20       		.uleb128 0x20
 1904 0981 8B090000 		.4byte	0x98b
 1905 0985 18       		.uleb128 0x18
 1906 0986 25000000 		.4byte	0x25
 1907 098a 00       		.byte	0
 1908 098b 13       		.uleb128 0x13
 1909 098c 04       		.byte	0x4
 1910 098d 91090000 		.4byte	0x991
 1911 0991 13       		.uleb128 0x13
 1912 0992 04       		.byte	0x4
 1913 0993 80090000 		.4byte	0x980
 1914 0997 0A       		.uleb128 0xa
 1915 0998 30070000 		.4byte	0x730
 1916 099c A7090000 		.4byte	0x9a7
 1917 09a0 0B       		.uleb128 0xb
 1918 09a1 D9000000 		.4byte	0xd9
 1919 09a5 02       		.byte	0x2
 1920 09a6 00       		.byte	0
 1921 09a7 08       		.uleb128 0x8
 1922 09a8 98060000 		.4byte	.LASF140
 1923 09ac 0A       		.byte	0xa
 1924 09ad FD02     		.2byte	0x2fd
 1925 09af 53050000 		.4byte	0x553
 1926 09b3 08       		.uleb128 0x8
 1927 09b4 B6070000 		.4byte	.LASF141
 1928 09b8 0A       		.byte	0xa
 1929 09b9 FE02     		.2byte	0x2fe
 1930 09bb 59050000 		.4byte	0x559
 1931 09bf 09       		.uleb128 0x9
 1932 09c0 11050000 		.4byte	.LASF142
 1933 09c4 0B       		.byte	0xb
 1934 09c5 5F       		.byte	0x5f
 1935 09c6 90060000 		.4byte	0x690
 1936 09ca 09       		.uleb128 0x9
 1937 09cb 5B050000 		.4byte	.LASF143
 1938 09cf 0C       		.byte	0xc
 1939 09d0 8F       		.byte	0x8f
 1940 09d1 DC090000 		.4byte	0x9dc
 1941 09d5 03       		.uleb128 0x3
 1942 09d6 01       		.byte	0x1
 1943 09d7 02       		.byte	0x2
ARM GAS  /tmp/ccPSOZXt.s 			page 45


 1944 09d8 A7050000 		.4byte	.LASF144
 1945 09dc 06       		.uleb128 0x6
 1946 09dd D5090000 		.4byte	0x9d5
 1947 09e1 21       		.uleb128 0x21
 1948 09e2 3A080000 		.4byte	.LASF145
 1949 09e6 0C       		.byte	0xc
 1950 09e7 94       		.byte	0x94
 1951 09e8 CD000000 		.4byte	0xcd
 1952 09ec 05       		.uleb128 0x5
 1953 09ed 03       		.byte	0x3
 1954 09ee 00000000 		.4byte	cpu_irq_critical_section_counter
 1955 09f2 21       		.uleb128 0x21
 1956 09f3 33020000 		.4byte	.LASF146
 1957 09f7 0C       		.byte	0xc
 1958 09f8 95       		.byte	0x95
 1959 09f9 DC090000 		.4byte	0x9dc
 1960 09fd 05       		.uleb128 0x5
 1961 09fe 03       		.byte	0x3
 1962 09ff 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1963 0a03 03       		.uleb128 0x3
 1964 0a04 04       		.byte	0x4
 1965 0a05 04       		.byte	0x4
 1966 0a06 B4060000 		.4byte	.LASF147
 1967 0a0a 03       		.uleb128 0x3
 1968 0a0b 08       		.byte	0x8
 1969 0a0c 04       		.byte	0x4
 1970 0a0d BD010000 		.4byte	.LASF148
 1971 0a11 11       		.uleb128 0x11
 1972 0a12 5A070000 		.4byte	.LASF149
 1973 0a16 0C       		.byte	0xc
 1974 0a17 0D       		.byte	0xd
 1975 0a18 44       		.byte	0x44
 1976 0a19 420A0000 		.4byte	0xa42
 1977 0a1d 0D       		.uleb128 0xd
 1978 0a1e F6030000 		.4byte	.LASF150
 1979 0a22 0D       		.byte	0xd
 1980 0a23 46       		.byte	0x46
 1981 0a24 C2000000 		.4byte	0xc2
 1982 0a28 00       		.byte	0
 1983 0a29 0D       		.uleb128 0xd
 1984 0a2a AA070000 		.4byte	.LASF151
 1985 0a2e 0D       		.byte	0xd
 1986 0a2f 48       		.byte	0x48
 1987 0a30 C2000000 		.4byte	0xc2
 1988 0a34 04       		.byte	0x4
 1989 0a35 0D       		.uleb128 0xd
 1990 0a36 53050000 		.4byte	.LASF152
 1991 0a3a 0D       		.byte	0xd
 1992 0a3b 4A       		.byte	0x4a
 1993 0a3c C2000000 		.4byte	0xc2
 1994 0a40 08       		.byte	0x8
 1995 0a41 00       		.byte	0
 1996 0a42 04       		.uleb128 0x4
 1997 0a43 28060000 		.4byte	.LASF153
 1998 0a47 0D       		.byte	0xd
 1999 0a48 4B       		.byte	0x4b
 2000 0a49 110A0000 		.4byte	0xa11
ARM GAS  /tmp/ccPSOZXt.s 			page 46


 2001 0a4d 05       		.uleb128 0x5
 2002 0a4e 420A0000 		.4byte	0xa42
 2003 0a52 22       		.uleb128 0x22
 2004 0a53 CF060000 		.4byte	.LASF156
 2005 0a57 01       		.byte	0x1
 2006 0a58 2002     		.2byte	0x220
 2007 0a5a 00000000 		.4byte	.LFB165
 2008 0a5e 1C000000 		.4byte	.LFE165-.LFB165
 2009 0a62 01       		.uleb128 0x1
 2010 0a63 9C       		.byte	0x9c
 2011 0a64 850A0000 		.4byte	0xa85
 2012 0a68 23       		.uleb128 0x23
 2013 0a69 A3070000 		.4byte	.LASF154
 2014 0a6d 01       		.byte	0x1
 2015 0a6e 2002     		.2byte	0x220
 2016 0a70 850A0000 		.4byte	0xa85
 2017 0a74 01       		.uleb128 0x1
 2018 0a75 50       		.byte	0x50
 2019 0a76 23       		.uleb128 0x23
 2020 0a77 23060000 		.4byte	.LASF155
 2021 0a7b 01       		.byte	0x1
 2022 0a7c 2002     		.2byte	0x220
 2023 0a7e D5090000 		.4byte	0x9d5
 2024 0a82 01       		.uleb128 0x1
 2025 0a83 51       		.byte	0x51
 2026 0a84 00       		.byte	0
 2027 0a85 13       		.uleb128 0x13
 2028 0a86 04       		.byte	0x4
 2029 0a87 AA010000 		.4byte	0x1aa
 2030 0a8b 22       		.uleb128 0x22
 2031 0a8c 9E010000 		.4byte	.LASF157
 2032 0a90 01       		.byte	0x1
 2033 0a91 0402     		.2byte	0x204
 2034 0a93 00000000 		.4byte	.LFB164
 2035 0a97 26000000 		.4byte	.LFE164-.LFB164
 2036 0a9b 01       		.uleb128 0x1
 2037 0a9c 9C       		.byte	0x9c
 2038 0a9d FE0A0000 		.4byte	0xafe
 2039 0aa1 23       		.uleb128 0x23
 2040 0aa2 A3070000 		.4byte	.LASF154
 2041 0aa6 01       		.byte	0x1
 2042 0aa7 0402     		.2byte	0x204
 2043 0aa9 850A0000 		.4byte	0xa85
 2044 0aad 01       		.uleb128 0x1
 2045 0aae 50       		.byte	0x50
 2046 0aaf 24       		.uleb128 0x24
 2047 0ab0 95000000 		.4byte	.LASF158
 2048 0ab4 01       		.byte	0x1
 2049 0ab5 0402     		.2byte	0x204
 2050 0ab7 97000000 		.4byte	0x97
 2051 0abb 00000000 		.4byte	.LLST10
 2052 0abf 24       		.uleb128 0x24
 2053 0ac0 8A070000 		.4byte	.LASF159
 2054 0ac4 01       		.byte	0x1
 2055 0ac5 0502     		.2byte	0x205
 2056 0ac7 D5090000 		.4byte	0x9d5
 2057 0acb 21000000 		.4byte	.LLST11
ARM GAS  /tmp/ccPSOZXt.s 			page 47


 2058 0acf 23       		.uleb128 0x23
 2059 0ad0 93030000 		.4byte	.LASF160
 2060 0ad4 01       		.byte	0x1
 2061 0ad5 0502     		.2byte	0x205
 2062 0ad7 D5090000 		.4byte	0x9d5
 2063 0adb 01       		.uleb128 0x1
 2064 0adc 53       		.byte	0x53
 2065 0add 24       		.uleb128 0x24
 2066 0ade 04020000 		.4byte	.LASF161
 2067 0ae2 01       		.byte	0x1
 2068 0ae3 0502     		.2byte	0x205
 2069 0ae5 97000000 		.4byte	0x97
 2070 0ae9 42000000 		.4byte	.LLST12
 2071 0aed 25       		.uleb128 0x25
 2072 0aee 8E020000 		.4byte	.LASF162
 2073 0af2 01       		.byte	0x1
 2074 0af3 0902     		.2byte	0x209
 2075 0af5 C2000000 		.4byte	0xc2
 2076 0af9 62000000 		.4byte	.LLST13
 2077 0afd 00       		.byte	0
 2078 0afe 26       		.uleb128 0x26
 2079 0aff 41010000 		.4byte	.LASF164
 2080 0b03 01       		.byte	0x1
 2081 0b04 7401     		.2byte	0x174
 2082 0b06 C2000000 		.4byte	0xc2
 2083 0b0a 00000000 		.4byte	.LFB163
 2084 0b0e 12000000 		.4byte	.LFE163-.LFB163
 2085 0b12 01       		.uleb128 0x1
 2086 0b13 9C       		.byte	0x9c
 2087 0b14 370B0000 		.4byte	0xb37
 2088 0b18 24       		.uleb128 0x24
 2089 0b19 A3070000 		.4byte	.LASF154
 2090 0b1d 01       		.byte	0x1
 2091 0b1e 7401     		.2byte	0x174
 2092 0b20 850A0000 		.4byte	0xa85
 2093 0b24 B3000000 		.4byte	.LLST9
 2094 0b28 23       		.uleb128 0x23
 2095 0b29 0E040000 		.4byte	.LASF163
 2096 0b2d 01       		.byte	0x1
 2097 0b2e 7401     		.2byte	0x174
 2098 0b30 370B0000 		.4byte	0xb37
 2099 0b34 01       		.uleb128 0x1
 2100 0b35 51       		.byte	0x51
 2101 0b36 00       		.byte	0
 2102 0b37 13       		.uleb128 0x13
 2103 0b38 04       		.byte	0x4
 2104 0b39 97000000 		.4byte	0x97
 2105 0b3d 26       		.uleb128 0x26
 2106 0b3e 12020000 		.4byte	.LASF165
 2107 0b42 01       		.byte	0x1
 2108 0b43 6001     		.2byte	0x160
 2109 0b45 C2000000 		.4byte	0xc2
 2110 0b49 00000000 		.4byte	.LFB162
 2111 0b4d 10000000 		.4byte	.LFE162-.LFB162
 2112 0b51 01       		.uleb128 0x1
 2113 0b52 9C       		.byte	0x9c
 2114 0b53 760B0000 		.4byte	0xb76
ARM GAS  /tmp/ccPSOZXt.s 			page 48


 2115 0b57 24       		.uleb128 0x24
 2116 0b58 A3070000 		.4byte	.LASF154
 2117 0b5c 01       		.byte	0x1
 2118 0b5d 6001     		.2byte	0x160
 2119 0b5f 850A0000 		.4byte	0xa85
 2120 0b63 ED000000 		.4byte	.LLST8
 2121 0b67 23       		.uleb128 0x23
 2122 0b68 39010000 		.4byte	.LASF166
 2123 0b6c 01       		.byte	0x1
 2124 0b6d 6001     		.2byte	0x160
 2125 0b6f A2000000 		.4byte	0xa2
 2126 0b73 01       		.uleb128 0x1
 2127 0b74 51       		.byte	0x51
 2128 0b75 00       		.byte	0
 2129 0b76 22       		.uleb128 0x22
 2130 0b77 AF000000 		.4byte	.LASF167
 2131 0b7b 01       		.byte	0x1
 2132 0b7c 5101     		.2byte	0x151
 2133 0b7e 00000000 		.4byte	.LFB161
 2134 0b82 04000000 		.4byte	.LFE161-.LFB161
 2135 0b86 01       		.uleb128 0x1
 2136 0b87 9C       		.byte	0x9c
 2137 0b88 A90B0000 		.4byte	0xba9
 2138 0b8c 23       		.uleb128 0x23
 2139 0b8d A3070000 		.4byte	.LASF154
 2140 0b91 01       		.byte	0x1
 2141 0b92 5101     		.2byte	0x151
 2142 0b94 850A0000 		.4byte	0xa85
 2143 0b98 01       		.uleb128 0x1
 2144 0b99 50       		.byte	0x50
 2145 0b9a 23       		.uleb128 0x23
 2146 0b9b 0D060000 		.4byte	.LASF168
 2147 0b9f 01       		.byte	0x1
 2148 0ba0 5101     		.2byte	0x151
 2149 0ba2 A7000000 		.4byte	0xa7
 2150 0ba6 01       		.uleb128 0x1
 2151 0ba7 51       		.byte	0x51
 2152 0ba8 00       		.byte	0
 2153 0ba9 27       		.uleb128 0x27
 2154 0baa FF000000 		.4byte	.LASF191
 2155 0bae 01       		.byte	0x1
 2156 0baf 4501     		.2byte	0x145
 2157 0bb1 C2000000 		.4byte	0xc2
 2158 0bb5 01       		.byte	0x1
 2159 0bb6 C70B0000 		.4byte	0xbc7
 2160 0bba 28       		.uleb128 0x28
 2161 0bbb A3070000 		.4byte	.LASF154
 2162 0bbf 01       		.byte	0x1
 2163 0bc0 4501     		.2byte	0x145
 2164 0bc2 850A0000 		.4byte	0xa85
 2165 0bc6 00       		.byte	0
 2166 0bc7 26       		.uleb128 0x26
 2167 0bc8 17040000 		.4byte	.LASF169
 2168 0bcc 01       		.byte	0x1
 2169 0bcd 3801     		.2byte	0x138
 2170 0bcf C2000000 		.4byte	0xc2
 2171 0bd3 00000000 		.4byte	.LFB159
ARM GAS  /tmp/ccPSOZXt.s 			page 49


 2172 0bd7 08000000 		.4byte	.LFE159-.LFB159
 2173 0bdb 01       		.uleb128 0x1
 2174 0bdc 9C       		.byte	0x9c
 2175 0bdd F20B0000 		.4byte	0xbf2
 2176 0be1 24       		.uleb128 0x24
 2177 0be2 A3070000 		.4byte	.LASF154
 2178 0be6 01       		.byte	0x1
 2179 0be7 3801     		.2byte	0x138
 2180 0be9 850A0000 		.4byte	0xa85
 2181 0bed 27010000 		.4byte	.LLST6
 2182 0bf1 00       		.byte	0
 2183 0bf2 29       		.uleb128 0x29
 2184 0bf3 DD010000 		.4byte	.LASF192
 2185 0bf7 01       		.byte	0x1
 2186 0bf8 2A01     		.2byte	0x12a
 2187 0bfa C2000000 		.4byte	0xc2
 2188 0bfe 0F0C0000 		.4byte	0xc0f
 2189 0c02 28       		.uleb128 0x28
 2190 0c03 A3070000 		.4byte	.LASF154
 2191 0c07 01       		.byte	0x1
 2192 0c08 2A01     		.2byte	0x12a
 2193 0c0a 850A0000 		.4byte	0xa85
 2194 0c0e 00       		.byte	0
 2195 0c0f 26       		.uleb128 0x26
 2196 0c10 87050000 		.4byte	.LASF170
 2197 0c14 01       		.byte	0x1
 2198 0c15 1B01     		.2byte	0x11b
 2199 0c17 C2000000 		.4byte	0xc2
 2200 0c1b 00000000 		.4byte	.LFB157
 2201 0c1f 08000000 		.4byte	.LFE157-.LFB157
 2202 0c23 01       		.uleb128 0x1
 2203 0c24 9C       		.byte	0x9c
 2204 0c25 3A0C0000 		.4byte	0xc3a
 2205 0c29 24       		.uleb128 0x24
 2206 0c2a A3070000 		.4byte	.LASF154
 2207 0c2e 01       		.byte	0x1
 2208 0c2f 1B01     		.2byte	0x11b
 2209 0c31 850A0000 		.4byte	0xa85
 2210 0c35 48010000 		.4byte	.LLST5
 2211 0c39 00       		.byte	0
 2212 0c3a 22       		.uleb128 0x22
 2213 0c3b 07070000 		.4byte	.LASF171
 2214 0c3f 01       		.byte	0x1
 2215 0c40 0C01     		.2byte	0x10c
 2216 0c42 00000000 		.4byte	.LFB156
 2217 0c46 08000000 		.4byte	.LFE156-.LFB156
 2218 0c4a 01       		.uleb128 0x1
 2219 0c4b 9C       		.byte	0x9c
 2220 0c4c 5F0C0000 		.4byte	0xc5f
 2221 0c50 23       		.uleb128 0x23
 2222 0c51 A3070000 		.4byte	.LASF154
 2223 0c55 01       		.byte	0x1
 2224 0c56 0C01     		.2byte	0x10c
 2225 0c58 850A0000 		.4byte	0xa85
 2226 0c5c 01       		.uleb128 0x1
 2227 0c5d 50       		.byte	0x50
 2228 0c5e 00       		.byte	0
ARM GAS  /tmp/ccPSOZXt.s 			page 50


 2229 0c5f 26       		.uleb128 0x26
 2230 0c60 50020000 		.4byte	.LASF172
 2231 0c64 01       		.byte	0x1
 2232 0c65 0201     		.2byte	0x102
 2233 0c67 C2000000 		.4byte	0xc2
 2234 0c6b 00000000 		.4byte	.LFB155
 2235 0c6f 04000000 		.4byte	.LFE155-.LFB155
 2236 0c73 01       		.uleb128 0x1
 2237 0c74 9C       		.byte	0x9c
 2238 0c75 8A0C0000 		.4byte	0xc8a
 2239 0c79 24       		.uleb128 0x24
 2240 0c7a A3070000 		.4byte	.LASF154
 2241 0c7e 01       		.byte	0x1
 2242 0c7f 0201     		.2byte	0x102
 2243 0c81 850A0000 		.4byte	0xa85
 2244 0c85 69010000 		.4byte	.LLST4
 2245 0c89 00       		.byte	0
 2246 0c8a 2A       		.uleb128 0x2a
 2247 0c8b 28040000 		.4byte	.LASF173
 2248 0c8f 01       		.byte	0x1
 2249 0c90 F6       		.byte	0xf6
 2250 0c91 C2000000 		.4byte	0xc2
 2251 0c95 00000000 		.4byte	.LFB154
 2252 0c99 04000000 		.4byte	.LFE154-.LFB154
 2253 0c9d 01       		.uleb128 0x1
 2254 0c9e 9C       		.byte	0x9c
 2255 0c9f B30C0000 		.4byte	0xcb3
 2256 0ca3 2B       		.uleb128 0x2b
 2257 0ca4 A3070000 		.4byte	.LASF154
 2258 0ca8 01       		.byte	0x1
 2259 0ca9 F6       		.byte	0xf6
 2260 0caa 850A0000 		.4byte	0xa85
 2261 0cae 8A010000 		.4byte	.LLST3
 2262 0cb2 00       		.byte	0
 2263 0cb3 2C       		.uleb128 0x2c
 2264 0cb4 3C050000 		.4byte	.LASF174
 2265 0cb8 01       		.byte	0x1
 2266 0cb9 EB       		.byte	0xeb
 2267 0cba 00000000 		.4byte	.LFB153
 2268 0cbe 04000000 		.4byte	.LFE153-.LFB153
 2269 0cc2 01       		.uleb128 0x1
 2270 0cc3 9C       		.byte	0x9c
 2271 0cc4 E30C0000 		.4byte	0xce3
 2272 0cc8 2D       		.uleb128 0x2d
 2273 0cc9 A3070000 		.4byte	.LASF154
 2274 0ccd 01       		.byte	0x1
 2275 0cce EB       		.byte	0xeb
 2276 0ccf 850A0000 		.4byte	0xa85
 2277 0cd3 01       		.uleb128 0x1
 2278 0cd4 50       		.byte	0x50
 2279 0cd5 2D       		.uleb128 0x2d
 2280 0cd6 9E080000 		.4byte	.LASF175
 2281 0cda 01       		.byte	0x1
 2282 0cdb EB       		.byte	0xeb
 2283 0cdc C2000000 		.4byte	0xc2
 2284 0ce0 01       		.uleb128 0x1
 2285 0ce1 51       		.byte	0x51
ARM GAS  /tmp/ccPSOZXt.s 			page 51


 2286 0ce2 00       		.byte	0
 2287 0ce3 2C       		.uleb128 0x2c
 2288 0ce4 E0030000 		.4byte	.LASF176
 2289 0ce8 01       		.byte	0x1
 2290 0ce9 E1       		.byte	0xe1
 2291 0cea 00000000 		.4byte	.LFB152
 2292 0cee 04000000 		.4byte	.LFE152-.LFB152
 2293 0cf2 01       		.uleb128 0x1
 2294 0cf3 9C       		.byte	0x9c
 2295 0cf4 130D0000 		.4byte	0xd13
 2296 0cf8 2D       		.uleb128 0x2d
 2297 0cf9 A3070000 		.4byte	.LASF154
 2298 0cfd 01       		.byte	0x1
 2299 0cfe E1       		.byte	0xe1
 2300 0cff 850A0000 		.4byte	0xa85
 2301 0d03 01       		.uleb128 0x1
 2302 0d04 50       		.byte	0x50
 2303 0d05 2D       		.uleb128 0x2d
 2304 0d06 9E080000 		.4byte	.LASF175
 2305 0d0a 01       		.byte	0x1
 2306 0d0b E1       		.byte	0xe1
 2307 0d0c C2000000 		.4byte	0xc2
 2308 0d10 01       		.uleb128 0x1
 2309 0d11 51       		.byte	0x51
 2310 0d12 00       		.byte	0
 2311 0d13 2C       		.uleb128 0x2c
 2312 0d14 DB070000 		.4byte	.LASF177
 2313 0d18 01       		.byte	0x1
 2314 0d19 D5       		.byte	0xd5
 2315 0d1a 00000000 		.4byte	.LFB151
 2316 0d1e 06000000 		.4byte	.LFE151-.LFB151
 2317 0d22 01       		.uleb128 0x1
 2318 0d23 9C       		.byte	0x9c
 2319 0d24 360D0000 		.4byte	0xd36
 2320 0d28 2D       		.uleb128 0x2d
 2321 0d29 A3070000 		.4byte	.LASF154
 2322 0d2d 01       		.byte	0x1
 2323 0d2e D5       		.byte	0xd5
 2324 0d2f 850A0000 		.4byte	0xa85
 2325 0d33 01       		.uleb128 0x1
 2326 0d34 50       		.byte	0x50
 2327 0d35 00       		.byte	0
 2328 0d36 2C       		.uleb128 0x2c
 2329 0d37 83080000 		.4byte	.LASF178
 2330 0d3b 01       		.byte	0x1
 2331 0d3c CA       		.byte	0xca
 2332 0d3d 00000000 		.4byte	.LFB150
 2333 0d41 06000000 		.4byte	.LFE150-.LFB150
 2334 0d45 01       		.uleb128 0x1
 2335 0d46 9C       		.byte	0x9c
 2336 0d47 590D0000 		.4byte	0xd59
 2337 0d4b 2D       		.uleb128 0x2d
 2338 0d4c A3070000 		.4byte	.LASF154
 2339 0d50 01       		.byte	0x1
 2340 0d51 CA       		.byte	0xca
 2341 0d52 850A0000 		.4byte	0xa85
 2342 0d56 01       		.uleb128 0x1
ARM GAS  /tmp/ccPSOZXt.s 			page 52


 2343 0d57 50       		.byte	0x50
 2344 0d58 00       		.byte	0
 2345 0d59 2C       		.uleb128 0x2c
 2346 0d5a E1040000 		.4byte	.LASF179
 2347 0d5e 01       		.byte	0x1
 2348 0d5f BF       		.byte	0xbf
 2349 0d60 00000000 		.4byte	.LFB149
 2350 0d64 06000000 		.4byte	.LFE149-.LFB149
 2351 0d68 01       		.uleb128 0x1
 2352 0d69 9C       		.byte	0x9c
 2353 0d6a 7C0D0000 		.4byte	0xd7c
 2354 0d6e 2D       		.uleb128 0x2d
 2355 0d6f A3070000 		.4byte	.LASF154
 2356 0d73 01       		.byte	0x1
 2357 0d74 BF       		.byte	0xbf
 2358 0d75 850A0000 		.4byte	0xa85
 2359 0d79 01       		.uleb128 0x1
 2360 0d7a 50       		.byte	0x50
 2361 0d7b 00       		.byte	0
 2362 0d7c 2C       		.uleb128 0x2c
 2363 0d7d 01030000 		.4byte	.LASF180
 2364 0d81 01       		.byte	0x1
 2365 0d82 B4       		.byte	0xb4
 2366 0d83 00000000 		.4byte	.LFB148
 2367 0d87 06000000 		.4byte	.LFE148-.LFB148
 2368 0d8b 01       		.uleb128 0x1
 2369 0d8c 9C       		.byte	0x9c
 2370 0d8d 9F0D0000 		.4byte	0xd9f
 2371 0d91 2D       		.uleb128 0x2d
 2372 0d92 A3070000 		.4byte	.LASF154
 2373 0d96 01       		.byte	0x1
 2374 0d97 B4       		.byte	0xb4
 2375 0d98 850A0000 		.4byte	0xa85
 2376 0d9c 01       		.uleb128 0x1
 2377 0d9d 50       		.byte	0x50
 2378 0d9e 00       		.byte	0
 2379 0d9f 2C       		.uleb128 0x2c
 2380 0da0 1B050000 		.4byte	.LASF181
 2381 0da4 01       		.byte	0x1
 2382 0da5 A9       		.byte	0xa9
 2383 0da6 00000000 		.4byte	.LFB147
 2384 0daa 06000000 		.4byte	.LFE147-.LFB147
 2385 0dae 01       		.uleb128 0x1
 2386 0daf 9C       		.byte	0x9c
 2387 0db0 C20D0000 		.4byte	0xdc2
 2388 0db4 2D       		.uleb128 0x2d
 2389 0db5 A3070000 		.4byte	.LASF154
 2390 0db9 01       		.byte	0x1
 2391 0dba A9       		.byte	0xa9
 2392 0dbb 850A0000 		.4byte	0xa85
 2393 0dbf 01       		.uleb128 0x1
 2394 0dc0 50       		.byte	0x50
 2395 0dc1 00       		.byte	0
 2396 0dc2 2C       		.uleb128 0x2c
 2397 0dc3 D8020000 		.4byte	.LASF182
 2398 0dc7 01       		.byte	0x1
 2399 0dc8 9E       		.byte	0x9e
ARM GAS  /tmp/ccPSOZXt.s 			page 53


 2400 0dc9 00000000 		.4byte	.LFB146
 2401 0dcd 06000000 		.4byte	.LFE146-.LFB146
 2402 0dd1 01       		.uleb128 0x1
 2403 0dd2 9C       		.byte	0x9c
 2404 0dd3 E50D0000 		.4byte	0xde5
 2405 0dd7 2D       		.uleb128 0x2d
 2406 0dd8 A3070000 		.4byte	.LASF154
 2407 0ddc 01       		.byte	0x1
 2408 0ddd 9E       		.byte	0x9e
 2409 0dde 850A0000 		.4byte	0xa85
 2410 0de2 01       		.uleb128 0x1
 2411 0de3 50       		.byte	0x50
 2412 0de4 00       		.byte	0
 2413 0de5 2C       		.uleb128 0x2c
 2414 0de6 FF050000 		.4byte	.LASF183
 2415 0dea 01       		.byte	0x1
 2416 0deb 93       		.byte	0x93
 2417 0dec 00000000 		.4byte	.LFB145
 2418 0df0 06000000 		.4byte	.LFE145-.LFB145
 2419 0df4 01       		.uleb128 0x1
 2420 0df5 9C       		.byte	0x9c
 2421 0df6 080E0000 		.4byte	0xe08
 2422 0dfa 2D       		.uleb128 0x2d
 2423 0dfb A3070000 		.4byte	.LASF154
 2424 0dff 01       		.byte	0x1
 2425 0e00 93       		.byte	0x93
 2426 0e01 850A0000 		.4byte	0xa85
 2427 0e05 01       		.uleb128 0x1
 2428 0e06 50       		.byte	0x50
 2429 0e07 00       		.byte	0
 2430 0e08 2C       		.uleb128 0x2c
 2431 0e09 75070000 		.4byte	.LASF184
 2432 0e0d 01       		.byte	0x1
 2433 0e0e 88       		.byte	0x88
 2434 0e0f 00000000 		.4byte	.LFB144
 2435 0e13 06000000 		.4byte	.LFE144-.LFB144
 2436 0e17 01       		.uleb128 0x1
 2437 0e18 9C       		.byte	0x9c
 2438 0e19 2B0E0000 		.4byte	0xe2b
 2439 0e1d 2D       		.uleb128 0x2d
 2440 0e1e A3070000 		.4byte	.LASF154
 2441 0e22 01       		.byte	0x1
 2442 0e23 88       		.byte	0x88
 2443 0e24 850A0000 		.4byte	0xa85
 2444 0e28 01       		.uleb128 0x1
 2445 0e29 50       		.byte	0x50
 2446 0e2a 00       		.byte	0
 2447 0e2b 2C       		.uleb128 0x2c
 2448 0e2c 98050000 		.4byte	.LASF185
 2449 0e30 01       		.byte	0x1
 2450 0e31 7D       		.byte	0x7d
 2451 0e32 00000000 		.4byte	.LFB143
 2452 0e36 06000000 		.4byte	.LFE143-.LFB143
 2453 0e3a 01       		.uleb128 0x1
 2454 0e3b 9C       		.byte	0x9c
 2455 0e3c 4E0E0000 		.4byte	0xe4e
 2456 0e40 2D       		.uleb128 0x2d
ARM GAS  /tmp/ccPSOZXt.s 			page 54


 2457 0e41 A3070000 		.4byte	.LASF154
 2458 0e45 01       		.byte	0x1
 2459 0e46 7D       		.byte	0x7d
 2460 0e47 850A0000 		.4byte	0xa85
 2461 0e4b 01       		.uleb128 0x1
 2462 0e4c 50       		.byte	0x50
 2463 0e4d 00       		.byte	0
 2464 0e4e 2A       		.uleb128 0x2a
 2465 0e4f 4B000000 		.4byte	.LASF186
 2466 0e53 01       		.byte	0x1
 2467 0e54 5B       		.byte	0x5b
 2468 0e55 C2000000 		.4byte	0xc2
 2469 0e59 00000000 		.4byte	.LFB142
 2470 0e5d 32000000 		.4byte	.LFE142-.LFB142
 2471 0e61 01       		.uleb128 0x1
 2472 0e62 9C       		.byte	0x9c
 2473 0e63 940E0000 		.4byte	0xe94
 2474 0e67 2B       		.uleb128 0x2b
 2475 0e68 A3070000 		.4byte	.LASF154
 2476 0e6c 01       		.byte	0x1
 2477 0e6d 5B       		.byte	0x5b
 2478 0e6e 850A0000 		.4byte	0xa85
 2479 0e72 AB010000 		.4byte	.LLST0
 2480 0e76 2B       		.uleb128 0x2b
 2481 0e77 19070000 		.4byte	.LASF187
 2482 0e7b 01       		.byte	0x1
 2483 0e7c 5B       		.byte	0x5b
 2484 0e7d 940E0000 		.4byte	0xe94
 2485 0e81 C9010000 		.4byte	.LLST1
 2486 0e85 2E       		.uleb128 0x2e
 2487 0e86 636400   		.ascii	"cd\000"
 2488 0e89 01       		.byte	0x1
 2489 0e8a 5D       		.byte	0x5d
 2490 0e8b C2000000 		.4byte	0xc2
 2491 0e8f F5010000 		.4byte	.LLST2
 2492 0e93 00       		.byte	0
 2493 0e94 13       		.uleb128 0x13
 2494 0e95 04       		.byte	0x4
 2495 0e96 4D0A0000 		.4byte	0xa4d
 2496 0e9a 2F       		.uleb128 0x2f
 2497 0e9b A90B0000 		.4byte	0xba9
 2498 0e9f 00000000 		.4byte	.LFB160
 2499 0ea3 08000000 		.4byte	.LFE160-.LFB160
 2500 0ea7 01       		.uleb128 0x1
 2501 0ea8 9C       		.byte	0x9c
 2502 0ea9 30       		.uleb128 0x30
 2503 0eaa BA0B0000 		.4byte	0xbba
 2504 0eae 14020000 		.4byte	.LLST7
 2505 0eb2 00       		.byte	0
 2506 0eb3 00       		.byte	0
 2507              		.section	.debug_abbrev,"",%progbits
 2508              	.Ldebug_abbrev0:
 2509 0000 01       		.uleb128 0x1
 2510 0001 11       		.uleb128 0x11
 2511 0002 01       		.byte	0x1
 2512 0003 25       		.uleb128 0x25
 2513 0004 0E       		.uleb128 0xe
ARM GAS  /tmp/ccPSOZXt.s 			page 55


 2514 0005 13       		.uleb128 0x13
 2515 0006 0B       		.uleb128 0xb
 2516 0007 03       		.uleb128 0x3
 2517 0008 0E       		.uleb128 0xe
 2518 0009 1B       		.uleb128 0x1b
 2519 000a 0E       		.uleb128 0xe
 2520 000b 55       		.uleb128 0x55
 2521 000c 17       		.uleb128 0x17
 2522 000d 11       		.uleb128 0x11
 2523 000e 01       		.uleb128 0x1
 2524 000f 10       		.uleb128 0x10
 2525 0010 17       		.uleb128 0x17
 2526 0011 00       		.byte	0
 2527 0012 00       		.byte	0
 2528 0013 02       		.uleb128 0x2
 2529 0014 24       		.uleb128 0x24
 2530 0015 00       		.byte	0
 2531 0016 0B       		.uleb128 0xb
 2532 0017 0B       		.uleb128 0xb
 2533 0018 3E       		.uleb128 0x3e
 2534 0019 0B       		.uleb128 0xb
 2535 001a 03       		.uleb128 0x3
 2536 001b 08       		.uleb128 0x8
 2537 001c 00       		.byte	0
 2538 001d 00       		.byte	0
 2539 001e 03       		.uleb128 0x3
 2540 001f 24       		.uleb128 0x24
 2541 0020 00       		.byte	0
 2542 0021 0B       		.uleb128 0xb
 2543 0022 0B       		.uleb128 0xb
 2544 0023 3E       		.uleb128 0x3e
 2545 0024 0B       		.uleb128 0xb
 2546 0025 03       		.uleb128 0x3
 2547 0026 0E       		.uleb128 0xe
 2548 0027 00       		.byte	0
 2549 0028 00       		.byte	0
 2550 0029 04       		.uleb128 0x4
 2551 002a 16       		.uleb128 0x16
 2552 002b 00       		.byte	0
 2553 002c 03       		.uleb128 0x3
 2554 002d 0E       		.uleb128 0xe
 2555 002e 3A       		.uleb128 0x3a
 2556 002f 0B       		.uleb128 0xb
 2557 0030 3B       		.uleb128 0x3b
 2558 0031 0B       		.uleb128 0xb
 2559 0032 49       		.uleb128 0x49
 2560 0033 13       		.uleb128 0x13
 2561 0034 00       		.byte	0
 2562 0035 00       		.byte	0
 2563 0036 05       		.uleb128 0x5
 2564 0037 26       		.uleb128 0x26
 2565 0038 00       		.byte	0
 2566 0039 49       		.uleb128 0x49
 2567 003a 13       		.uleb128 0x13
 2568 003b 00       		.byte	0
 2569 003c 00       		.byte	0
 2570 003d 06       		.uleb128 0x6
ARM GAS  /tmp/ccPSOZXt.s 			page 56


 2571 003e 35       		.uleb128 0x35
 2572 003f 00       		.byte	0
 2573 0040 49       		.uleb128 0x49
 2574 0041 13       		.uleb128 0x13
 2575 0042 00       		.byte	0
 2576 0043 00       		.byte	0
 2577 0044 07       		.uleb128 0x7
 2578 0045 0F       		.uleb128 0xf
 2579 0046 00       		.byte	0
 2580 0047 0B       		.uleb128 0xb
 2581 0048 0B       		.uleb128 0xb
 2582 0049 00       		.byte	0
 2583 004a 00       		.byte	0
 2584 004b 08       		.uleb128 0x8
 2585 004c 34       		.uleb128 0x34
 2586 004d 00       		.byte	0
 2587 004e 03       		.uleb128 0x3
 2588 004f 0E       		.uleb128 0xe
 2589 0050 3A       		.uleb128 0x3a
 2590 0051 0B       		.uleb128 0xb
 2591 0052 3B       		.uleb128 0x3b
 2592 0053 05       		.uleb128 0x5
 2593 0054 49       		.uleb128 0x49
 2594 0055 13       		.uleb128 0x13
 2595 0056 3F       		.uleb128 0x3f
 2596 0057 19       		.uleb128 0x19
 2597 0058 3C       		.uleb128 0x3c
 2598 0059 19       		.uleb128 0x19
 2599 005a 00       		.byte	0
 2600 005b 00       		.byte	0
 2601 005c 09       		.uleb128 0x9
 2602 005d 34       		.uleb128 0x34
 2603 005e 00       		.byte	0
 2604 005f 03       		.uleb128 0x3
 2605 0060 0E       		.uleb128 0xe
 2606 0061 3A       		.uleb128 0x3a
 2607 0062 0B       		.uleb128 0xb
 2608 0063 3B       		.uleb128 0x3b
 2609 0064 0B       		.uleb128 0xb
 2610 0065 49       		.uleb128 0x49
 2611 0066 13       		.uleb128 0x13
 2612 0067 3F       		.uleb128 0x3f
 2613 0068 19       		.uleb128 0x19
 2614 0069 3C       		.uleb128 0x3c
 2615 006a 19       		.uleb128 0x19
 2616 006b 00       		.byte	0
 2617 006c 00       		.byte	0
 2618 006d 0A       		.uleb128 0xa
 2619 006e 01       		.uleb128 0x1
 2620 006f 01       		.byte	0x1
 2621 0070 49       		.uleb128 0x49
 2622 0071 13       		.uleb128 0x13
 2623 0072 01       		.uleb128 0x1
 2624 0073 13       		.uleb128 0x13
 2625 0074 00       		.byte	0
 2626 0075 00       		.byte	0
 2627 0076 0B       		.uleb128 0xb
ARM GAS  /tmp/ccPSOZXt.s 			page 57


 2628 0077 21       		.uleb128 0x21
 2629 0078 00       		.byte	0
 2630 0079 49       		.uleb128 0x49
 2631 007a 13       		.uleb128 0x13
 2632 007b 2F       		.uleb128 0x2f
 2633 007c 0B       		.uleb128 0xb
 2634 007d 00       		.byte	0
 2635 007e 00       		.byte	0
 2636 007f 0C       		.uleb128 0xc
 2637 0080 13       		.uleb128 0x13
 2638 0081 01       		.byte	0x1
 2639 0082 0B       		.uleb128 0xb
 2640 0083 0B       		.uleb128 0xb
 2641 0084 3A       		.uleb128 0x3a
 2642 0085 0B       		.uleb128 0xb
 2643 0086 3B       		.uleb128 0x3b
 2644 0087 0B       		.uleb128 0xb
 2645 0088 01       		.uleb128 0x1
 2646 0089 13       		.uleb128 0x13
 2647 008a 00       		.byte	0
 2648 008b 00       		.byte	0
 2649 008c 0D       		.uleb128 0xd
 2650 008d 0D       		.uleb128 0xd
 2651 008e 00       		.byte	0
 2652 008f 03       		.uleb128 0x3
 2653 0090 0E       		.uleb128 0xe
 2654 0091 3A       		.uleb128 0x3a
 2655 0092 0B       		.uleb128 0xb
 2656 0093 3B       		.uleb128 0x3b
 2657 0094 0B       		.uleb128 0xb
 2658 0095 49       		.uleb128 0x49
 2659 0096 13       		.uleb128 0x13
 2660 0097 38       		.uleb128 0x38
 2661 0098 0B       		.uleb128 0xb
 2662 0099 00       		.byte	0
 2663 009a 00       		.byte	0
 2664 009b 0E       		.uleb128 0xe
 2665 009c 16       		.uleb128 0x16
 2666 009d 00       		.byte	0
 2667 009e 03       		.uleb128 0x3
 2668 009f 0E       		.uleb128 0xe
 2669 00a0 3A       		.uleb128 0x3a
 2670 00a1 0B       		.uleb128 0xb
 2671 00a2 3B       		.uleb128 0x3b
 2672 00a3 05       		.uleb128 0x5
 2673 00a4 49       		.uleb128 0x49
 2674 00a5 13       		.uleb128 0x13
 2675 00a6 00       		.byte	0
 2676 00a7 00       		.byte	0
 2677 00a8 0F       		.uleb128 0xf
 2678 00a9 17       		.uleb128 0x17
 2679 00aa 01       		.byte	0x1
 2680 00ab 0B       		.uleb128 0xb
 2681 00ac 0B       		.uleb128 0xb
 2682 00ad 3A       		.uleb128 0x3a
 2683 00ae 0B       		.uleb128 0xb
 2684 00af 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccPSOZXt.s 			page 58


 2685 00b0 0B       		.uleb128 0xb
 2686 00b1 01       		.uleb128 0x1
 2687 00b2 13       		.uleb128 0x13
 2688 00b3 00       		.byte	0
 2689 00b4 00       		.byte	0
 2690 00b5 10       		.uleb128 0x10
 2691 00b6 0D       		.uleb128 0xd
 2692 00b7 00       		.byte	0
 2693 00b8 03       		.uleb128 0x3
 2694 00b9 0E       		.uleb128 0xe
 2695 00ba 3A       		.uleb128 0x3a
 2696 00bb 0B       		.uleb128 0xb
 2697 00bc 3B       		.uleb128 0x3b
 2698 00bd 0B       		.uleb128 0xb
 2699 00be 49       		.uleb128 0x49
 2700 00bf 13       		.uleb128 0x13
 2701 00c0 00       		.byte	0
 2702 00c1 00       		.byte	0
 2703 00c2 11       		.uleb128 0x11
 2704 00c3 13       		.uleb128 0x13
 2705 00c4 01       		.byte	0x1
 2706 00c5 03       		.uleb128 0x3
 2707 00c6 0E       		.uleb128 0xe
 2708 00c7 0B       		.uleb128 0xb
 2709 00c8 0B       		.uleb128 0xb
 2710 00c9 3A       		.uleb128 0x3a
 2711 00ca 0B       		.uleb128 0xb
 2712 00cb 3B       		.uleb128 0x3b
 2713 00cc 0B       		.uleb128 0xb
 2714 00cd 01       		.uleb128 0x1
 2715 00ce 13       		.uleb128 0x13
 2716 00cf 00       		.byte	0
 2717 00d0 00       		.byte	0
 2718 00d1 12       		.uleb128 0x12
 2719 00d2 0D       		.uleb128 0xd
 2720 00d3 00       		.byte	0
 2721 00d4 03       		.uleb128 0x3
 2722 00d5 08       		.uleb128 0x8
 2723 00d6 3A       		.uleb128 0x3a
 2724 00d7 0B       		.uleb128 0xb
 2725 00d8 3B       		.uleb128 0x3b
 2726 00d9 0B       		.uleb128 0xb
 2727 00da 49       		.uleb128 0x49
 2728 00db 13       		.uleb128 0x13
 2729 00dc 38       		.uleb128 0x38
 2730 00dd 0B       		.uleb128 0xb
 2731 00de 00       		.byte	0
 2732 00df 00       		.byte	0
 2733 00e0 13       		.uleb128 0x13
 2734 00e1 0F       		.uleb128 0xf
 2735 00e2 00       		.byte	0
 2736 00e3 0B       		.uleb128 0xb
 2737 00e4 0B       		.uleb128 0xb
 2738 00e5 49       		.uleb128 0x49
 2739 00e6 13       		.uleb128 0x13
 2740 00e7 00       		.byte	0
 2741 00e8 00       		.byte	0
ARM GAS  /tmp/ccPSOZXt.s 			page 59


 2742 00e9 14       		.uleb128 0x14
 2743 00ea 13       		.uleb128 0x13
 2744 00eb 01       		.byte	0x1
 2745 00ec 03       		.uleb128 0x3
 2746 00ed 0E       		.uleb128 0xe
 2747 00ee 0B       		.uleb128 0xb
 2748 00ef 05       		.uleb128 0x5
 2749 00f0 3A       		.uleb128 0x3a
 2750 00f1 0B       		.uleb128 0xb
 2751 00f2 3B       		.uleb128 0x3b
 2752 00f3 0B       		.uleb128 0xb
 2753 00f4 01       		.uleb128 0x1
 2754 00f5 13       		.uleb128 0x13
 2755 00f6 00       		.byte	0
 2756 00f7 00       		.byte	0
 2757 00f8 15       		.uleb128 0x15
 2758 00f9 0D       		.uleb128 0xd
 2759 00fa 00       		.byte	0
 2760 00fb 03       		.uleb128 0x3
 2761 00fc 0E       		.uleb128 0xe
 2762 00fd 3A       		.uleb128 0x3a
 2763 00fe 0B       		.uleb128 0xb
 2764 00ff 3B       		.uleb128 0x3b
 2765 0100 0B       		.uleb128 0xb
 2766 0101 49       		.uleb128 0x49
 2767 0102 13       		.uleb128 0x13
 2768 0103 38       		.uleb128 0x38
 2769 0104 05       		.uleb128 0x5
 2770 0105 00       		.byte	0
 2771 0106 00       		.byte	0
 2772 0107 16       		.uleb128 0x16
 2773 0108 15       		.uleb128 0x15
 2774 0109 00       		.byte	0
 2775 010a 27       		.uleb128 0x27
 2776 010b 19       		.uleb128 0x19
 2777 010c 00       		.byte	0
 2778 010d 00       		.byte	0
 2779 010e 17       		.uleb128 0x17
 2780 010f 15       		.uleb128 0x15
 2781 0110 01       		.byte	0x1
 2782 0111 27       		.uleb128 0x27
 2783 0112 19       		.uleb128 0x19
 2784 0113 49       		.uleb128 0x49
 2785 0114 13       		.uleb128 0x13
 2786 0115 01       		.uleb128 0x1
 2787 0116 13       		.uleb128 0x13
 2788 0117 00       		.byte	0
 2789 0118 00       		.byte	0
 2790 0119 18       		.uleb128 0x18
 2791 011a 05       		.uleb128 0x5
 2792 011b 00       		.byte	0
 2793 011c 49       		.uleb128 0x49
 2794 011d 13       		.uleb128 0x13
 2795 011e 00       		.byte	0
 2796 011f 00       		.byte	0
 2797 0120 19       		.uleb128 0x19
 2798 0121 13       		.uleb128 0x13
ARM GAS  /tmp/ccPSOZXt.s 			page 60


 2799 0122 01       		.byte	0x1
 2800 0123 03       		.uleb128 0x3
 2801 0124 0E       		.uleb128 0xe
 2802 0125 0B       		.uleb128 0xb
 2803 0126 05       		.uleb128 0x5
 2804 0127 3A       		.uleb128 0x3a
 2805 0128 0B       		.uleb128 0xb
 2806 0129 3B       		.uleb128 0x3b
 2807 012a 05       		.uleb128 0x5
 2808 012b 01       		.uleb128 0x1
 2809 012c 13       		.uleb128 0x13
 2810 012d 00       		.byte	0
 2811 012e 00       		.byte	0
 2812 012f 1A       		.uleb128 0x1a
 2813 0130 0D       		.uleb128 0xd
 2814 0131 00       		.byte	0
 2815 0132 03       		.uleb128 0x3
 2816 0133 0E       		.uleb128 0xe
 2817 0134 3A       		.uleb128 0x3a
 2818 0135 0B       		.uleb128 0xb
 2819 0136 3B       		.uleb128 0x3b
 2820 0137 05       		.uleb128 0x5
 2821 0138 49       		.uleb128 0x49
 2822 0139 13       		.uleb128 0x13
 2823 013a 38       		.uleb128 0x38
 2824 013b 0B       		.uleb128 0xb
 2825 013c 00       		.byte	0
 2826 013d 00       		.byte	0
 2827 013e 1B       		.uleb128 0x1b
 2828 013f 0D       		.uleb128 0xd
 2829 0140 00       		.byte	0
 2830 0141 03       		.uleb128 0x3
 2831 0142 0E       		.uleb128 0xe
 2832 0143 3A       		.uleb128 0x3a
 2833 0144 0B       		.uleb128 0xb
 2834 0145 3B       		.uleb128 0x3b
 2835 0146 05       		.uleb128 0x5
 2836 0147 49       		.uleb128 0x49
 2837 0148 13       		.uleb128 0x13
 2838 0149 38       		.uleb128 0x38
 2839 014a 05       		.uleb128 0x5
 2840 014b 00       		.byte	0
 2841 014c 00       		.byte	0
 2842 014d 1C       		.uleb128 0x1c
 2843 014e 13       		.uleb128 0x13
 2844 014f 01       		.byte	0x1
 2845 0150 03       		.uleb128 0x3
 2846 0151 0E       		.uleb128 0xe
 2847 0152 0B       		.uleb128 0xb
 2848 0153 0B       		.uleb128 0xb
 2849 0154 3A       		.uleb128 0x3a
 2850 0155 0B       		.uleb128 0xb
 2851 0156 3B       		.uleb128 0x3b
 2852 0157 05       		.uleb128 0x5
 2853 0158 01       		.uleb128 0x1
 2854 0159 13       		.uleb128 0x13
 2855 015a 00       		.byte	0
ARM GAS  /tmp/ccPSOZXt.s 			page 61


 2856 015b 00       		.byte	0
 2857 015c 1D       		.uleb128 0x1d
 2858 015d 13       		.uleb128 0x13
 2859 015e 01       		.byte	0x1
 2860 015f 0B       		.uleb128 0xb
 2861 0160 0B       		.uleb128 0xb
 2862 0161 3A       		.uleb128 0x3a
 2863 0162 0B       		.uleb128 0xb
 2864 0163 3B       		.uleb128 0x3b
 2865 0164 05       		.uleb128 0x5
 2866 0165 01       		.uleb128 0x1
 2867 0166 13       		.uleb128 0x13
 2868 0167 00       		.byte	0
 2869 0168 00       		.byte	0
 2870 0169 1E       		.uleb128 0x1e
 2871 016a 17       		.uleb128 0x17
 2872 016b 01       		.byte	0x1
 2873 016c 0B       		.uleb128 0xb
 2874 016d 0B       		.uleb128 0xb
 2875 016e 3A       		.uleb128 0x3a
 2876 016f 0B       		.uleb128 0xb
 2877 0170 3B       		.uleb128 0x3b
 2878 0171 05       		.uleb128 0x5
 2879 0172 01       		.uleb128 0x1
 2880 0173 13       		.uleb128 0x13
 2881 0174 00       		.byte	0
 2882 0175 00       		.byte	0
 2883 0176 1F       		.uleb128 0x1f
 2884 0177 0D       		.uleb128 0xd
 2885 0178 00       		.byte	0
 2886 0179 03       		.uleb128 0x3
 2887 017a 0E       		.uleb128 0xe
 2888 017b 3A       		.uleb128 0x3a
 2889 017c 0B       		.uleb128 0xb
 2890 017d 3B       		.uleb128 0x3b
 2891 017e 05       		.uleb128 0x5
 2892 017f 49       		.uleb128 0x49
 2893 0180 13       		.uleb128 0x13
 2894 0181 00       		.byte	0
 2895 0182 00       		.byte	0
 2896 0183 20       		.uleb128 0x20
 2897 0184 15       		.uleb128 0x15
 2898 0185 01       		.byte	0x1
 2899 0186 27       		.uleb128 0x27
 2900 0187 19       		.uleb128 0x19
 2901 0188 01       		.uleb128 0x1
 2902 0189 13       		.uleb128 0x13
 2903 018a 00       		.byte	0
 2904 018b 00       		.byte	0
 2905 018c 21       		.uleb128 0x21
 2906 018d 34       		.uleb128 0x34
 2907 018e 00       		.byte	0
 2908 018f 03       		.uleb128 0x3
 2909 0190 0E       		.uleb128 0xe
 2910 0191 3A       		.uleb128 0x3a
 2911 0192 0B       		.uleb128 0xb
 2912 0193 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccPSOZXt.s 			page 62


 2913 0194 0B       		.uleb128 0xb
 2914 0195 49       		.uleb128 0x49
 2915 0196 13       		.uleb128 0x13
 2916 0197 02       		.uleb128 0x2
 2917 0198 18       		.uleb128 0x18
 2918 0199 00       		.byte	0
 2919 019a 00       		.byte	0
 2920 019b 22       		.uleb128 0x22
 2921 019c 2E       		.uleb128 0x2e
 2922 019d 01       		.byte	0x1
 2923 019e 3F       		.uleb128 0x3f
 2924 019f 19       		.uleb128 0x19
 2925 01a0 03       		.uleb128 0x3
 2926 01a1 0E       		.uleb128 0xe
 2927 01a2 3A       		.uleb128 0x3a
 2928 01a3 0B       		.uleb128 0xb
 2929 01a4 3B       		.uleb128 0x3b
 2930 01a5 05       		.uleb128 0x5
 2931 01a6 27       		.uleb128 0x27
 2932 01a7 19       		.uleb128 0x19
 2933 01a8 11       		.uleb128 0x11
 2934 01a9 01       		.uleb128 0x1
 2935 01aa 12       		.uleb128 0x12
 2936 01ab 06       		.uleb128 0x6
 2937 01ac 40       		.uleb128 0x40
 2938 01ad 18       		.uleb128 0x18
 2939 01ae 9742     		.uleb128 0x2117
 2940 01b0 19       		.uleb128 0x19
 2941 01b1 01       		.uleb128 0x1
 2942 01b2 13       		.uleb128 0x13
 2943 01b3 00       		.byte	0
 2944 01b4 00       		.byte	0
 2945 01b5 23       		.uleb128 0x23
 2946 01b6 05       		.uleb128 0x5
 2947 01b7 00       		.byte	0
 2948 01b8 03       		.uleb128 0x3
 2949 01b9 0E       		.uleb128 0xe
 2950 01ba 3A       		.uleb128 0x3a
 2951 01bb 0B       		.uleb128 0xb
 2952 01bc 3B       		.uleb128 0x3b
 2953 01bd 05       		.uleb128 0x5
 2954 01be 49       		.uleb128 0x49
 2955 01bf 13       		.uleb128 0x13
 2956 01c0 02       		.uleb128 0x2
 2957 01c1 18       		.uleb128 0x18
 2958 01c2 00       		.byte	0
 2959 01c3 00       		.byte	0
 2960 01c4 24       		.uleb128 0x24
 2961 01c5 05       		.uleb128 0x5
 2962 01c6 00       		.byte	0
 2963 01c7 03       		.uleb128 0x3
 2964 01c8 0E       		.uleb128 0xe
 2965 01c9 3A       		.uleb128 0x3a
 2966 01ca 0B       		.uleb128 0xb
 2967 01cb 3B       		.uleb128 0x3b
 2968 01cc 05       		.uleb128 0x5
 2969 01cd 49       		.uleb128 0x49
ARM GAS  /tmp/ccPSOZXt.s 			page 63


 2970 01ce 13       		.uleb128 0x13
 2971 01cf 02       		.uleb128 0x2
 2972 01d0 17       		.uleb128 0x17
 2973 01d1 00       		.byte	0
 2974 01d2 00       		.byte	0
 2975 01d3 25       		.uleb128 0x25
 2976 01d4 34       		.uleb128 0x34
 2977 01d5 00       		.byte	0
 2978 01d6 03       		.uleb128 0x3
 2979 01d7 0E       		.uleb128 0xe
 2980 01d8 3A       		.uleb128 0x3a
 2981 01d9 0B       		.uleb128 0xb
 2982 01da 3B       		.uleb128 0x3b
 2983 01db 05       		.uleb128 0x5
 2984 01dc 49       		.uleb128 0x49
 2985 01dd 13       		.uleb128 0x13
 2986 01de 02       		.uleb128 0x2
 2987 01df 17       		.uleb128 0x17
 2988 01e0 00       		.byte	0
 2989 01e1 00       		.byte	0
 2990 01e2 26       		.uleb128 0x26
 2991 01e3 2E       		.uleb128 0x2e
 2992 01e4 01       		.byte	0x1
 2993 01e5 3F       		.uleb128 0x3f
 2994 01e6 19       		.uleb128 0x19
 2995 01e7 03       		.uleb128 0x3
 2996 01e8 0E       		.uleb128 0xe
 2997 01e9 3A       		.uleb128 0x3a
 2998 01ea 0B       		.uleb128 0xb
 2999 01eb 3B       		.uleb128 0x3b
 3000 01ec 05       		.uleb128 0x5
 3001 01ed 27       		.uleb128 0x27
 3002 01ee 19       		.uleb128 0x19
 3003 01ef 49       		.uleb128 0x49
 3004 01f0 13       		.uleb128 0x13
 3005 01f1 11       		.uleb128 0x11
 3006 01f2 01       		.uleb128 0x1
 3007 01f3 12       		.uleb128 0x12
 3008 01f4 06       		.uleb128 0x6
 3009 01f5 40       		.uleb128 0x40
 3010 01f6 18       		.uleb128 0x18
 3011 01f7 9742     		.uleb128 0x2117
 3012 01f9 19       		.uleb128 0x19
 3013 01fa 01       		.uleb128 0x1
 3014 01fb 13       		.uleb128 0x13
 3015 01fc 00       		.byte	0
 3016 01fd 00       		.byte	0
 3017 01fe 27       		.uleb128 0x27
 3018 01ff 2E       		.uleb128 0x2e
 3019 0200 01       		.byte	0x1
 3020 0201 3F       		.uleb128 0x3f
 3021 0202 19       		.uleb128 0x19
 3022 0203 03       		.uleb128 0x3
 3023 0204 0E       		.uleb128 0xe
 3024 0205 3A       		.uleb128 0x3a
 3025 0206 0B       		.uleb128 0xb
 3026 0207 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccPSOZXt.s 			page 64


 3027 0208 05       		.uleb128 0x5
 3028 0209 27       		.uleb128 0x27
 3029 020a 19       		.uleb128 0x19
 3030 020b 49       		.uleb128 0x49
 3031 020c 13       		.uleb128 0x13
 3032 020d 20       		.uleb128 0x20
 3033 020e 0B       		.uleb128 0xb
 3034 020f 01       		.uleb128 0x1
 3035 0210 13       		.uleb128 0x13
 3036 0211 00       		.byte	0
 3037 0212 00       		.byte	0
 3038 0213 28       		.uleb128 0x28
 3039 0214 05       		.uleb128 0x5
 3040 0215 00       		.byte	0
 3041 0216 03       		.uleb128 0x3
 3042 0217 0E       		.uleb128 0xe
 3043 0218 3A       		.uleb128 0x3a
 3044 0219 0B       		.uleb128 0xb
 3045 021a 3B       		.uleb128 0x3b
 3046 021b 05       		.uleb128 0x5
 3047 021c 49       		.uleb128 0x49
 3048 021d 13       		.uleb128 0x13
 3049 021e 00       		.byte	0
 3050 021f 00       		.byte	0
 3051 0220 29       		.uleb128 0x29
 3052 0221 2E       		.uleb128 0x2e
 3053 0222 01       		.byte	0x1
 3054 0223 3F       		.uleb128 0x3f
 3055 0224 19       		.uleb128 0x19
 3056 0225 03       		.uleb128 0x3
 3057 0226 0E       		.uleb128 0xe
 3058 0227 3A       		.uleb128 0x3a
 3059 0228 0B       		.uleb128 0xb
 3060 0229 3B       		.uleb128 0x3b
 3061 022a 05       		.uleb128 0x5
 3062 022b 27       		.uleb128 0x27
 3063 022c 19       		.uleb128 0x19
 3064 022d 49       		.uleb128 0x49
 3065 022e 13       		.uleb128 0x13
 3066 022f 01       		.uleb128 0x1
 3067 0230 13       		.uleb128 0x13
 3068 0231 00       		.byte	0
 3069 0232 00       		.byte	0
 3070 0233 2A       		.uleb128 0x2a
 3071 0234 2E       		.uleb128 0x2e
 3072 0235 01       		.byte	0x1
 3073 0236 3F       		.uleb128 0x3f
 3074 0237 19       		.uleb128 0x19
 3075 0238 03       		.uleb128 0x3
 3076 0239 0E       		.uleb128 0xe
 3077 023a 3A       		.uleb128 0x3a
 3078 023b 0B       		.uleb128 0xb
 3079 023c 3B       		.uleb128 0x3b
 3080 023d 0B       		.uleb128 0xb
 3081 023e 27       		.uleb128 0x27
 3082 023f 19       		.uleb128 0x19
 3083 0240 49       		.uleb128 0x49
ARM GAS  /tmp/ccPSOZXt.s 			page 65


 3084 0241 13       		.uleb128 0x13
 3085 0242 11       		.uleb128 0x11
 3086 0243 01       		.uleb128 0x1
 3087 0244 12       		.uleb128 0x12
 3088 0245 06       		.uleb128 0x6
 3089 0246 40       		.uleb128 0x40
 3090 0247 18       		.uleb128 0x18
 3091 0248 9742     		.uleb128 0x2117
 3092 024a 19       		.uleb128 0x19
 3093 024b 01       		.uleb128 0x1
 3094 024c 13       		.uleb128 0x13
 3095 024d 00       		.byte	0
 3096 024e 00       		.byte	0
 3097 024f 2B       		.uleb128 0x2b
 3098 0250 05       		.uleb128 0x5
 3099 0251 00       		.byte	0
 3100 0252 03       		.uleb128 0x3
 3101 0253 0E       		.uleb128 0xe
 3102 0254 3A       		.uleb128 0x3a
 3103 0255 0B       		.uleb128 0xb
 3104 0256 3B       		.uleb128 0x3b
 3105 0257 0B       		.uleb128 0xb
 3106 0258 49       		.uleb128 0x49
 3107 0259 13       		.uleb128 0x13
 3108 025a 02       		.uleb128 0x2
 3109 025b 17       		.uleb128 0x17
 3110 025c 00       		.byte	0
 3111 025d 00       		.byte	0
 3112 025e 2C       		.uleb128 0x2c
 3113 025f 2E       		.uleb128 0x2e
 3114 0260 01       		.byte	0x1
 3115 0261 3F       		.uleb128 0x3f
 3116 0262 19       		.uleb128 0x19
 3117 0263 03       		.uleb128 0x3
 3118 0264 0E       		.uleb128 0xe
 3119 0265 3A       		.uleb128 0x3a
 3120 0266 0B       		.uleb128 0xb
 3121 0267 3B       		.uleb128 0x3b
 3122 0268 0B       		.uleb128 0xb
 3123 0269 27       		.uleb128 0x27
 3124 026a 19       		.uleb128 0x19
 3125 026b 11       		.uleb128 0x11
 3126 026c 01       		.uleb128 0x1
 3127 026d 12       		.uleb128 0x12
 3128 026e 06       		.uleb128 0x6
 3129 026f 40       		.uleb128 0x40
 3130 0270 18       		.uleb128 0x18
 3131 0271 9742     		.uleb128 0x2117
 3132 0273 19       		.uleb128 0x19
 3133 0274 01       		.uleb128 0x1
 3134 0275 13       		.uleb128 0x13
 3135 0276 00       		.byte	0
 3136 0277 00       		.byte	0
 3137 0278 2D       		.uleb128 0x2d
 3138 0279 05       		.uleb128 0x5
 3139 027a 00       		.byte	0
 3140 027b 03       		.uleb128 0x3
ARM GAS  /tmp/ccPSOZXt.s 			page 66


 3141 027c 0E       		.uleb128 0xe
 3142 027d 3A       		.uleb128 0x3a
 3143 027e 0B       		.uleb128 0xb
 3144 027f 3B       		.uleb128 0x3b
 3145 0280 0B       		.uleb128 0xb
 3146 0281 49       		.uleb128 0x49
 3147 0282 13       		.uleb128 0x13
 3148 0283 02       		.uleb128 0x2
 3149 0284 18       		.uleb128 0x18
 3150 0285 00       		.byte	0
 3151 0286 00       		.byte	0
 3152 0287 2E       		.uleb128 0x2e
 3153 0288 34       		.uleb128 0x34
 3154 0289 00       		.byte	0
 3155 028a 03       		.uleb128 0x3
 3156 028b 08       		.uleb128 0x8
 3157 028c 3A       		.uleb128 0x3a
 3158 028d 0B       		.uleb128 0xb
 3159 028e 3B       		.uleb128 0x3b
 3160 028f 0B       		.uleb128 0xb
 3161 0290 49       		.uleb128 0x49
 3162 0291 13       		.uleb128 0x13
 3163 0292 02       		.uleb128 0x2
 3164 0293 17       		.uleb128 0x17
 3165 0294 00       		.byte	0
 3166 0295 00       		.byte	0
 3167 0296 2F       		.uleb128 0x2f
 3168 0297 2E       		.uleb128 0x2e
 3169 0298 01       		.byte	0x1
 3170 0299 31       		.uleb128 0x31
 3171 029a 13       		.uleb128 0x13
 3172 029b 11       		.uleb128 0x11
 3173 029c 01       		.uleb128 0x1
 3174 029d 12       		.uleb128 0x12
 3175 029e 06       		.uleb128 0x6
 3176 029f 40       		.uleb128 0x40
 3177 02a0 18       		.uleb128 0x18
 3178 02a1 9742     		.uleb128 0x2117
 3179 02a3 19       		.uleb128 0x19
 3180 02a4 00       		.byte	0
 3181 02a5 00       		.byte	0
 3182 02a6 30       		.uleb128 0x30
 3183 02a7 05       		.uleb128 0x5
 3184 02a8 00       		.byte	0
 3185 02a9 31       		.uleb128 0x31
 3186 02aa 13       		.uleb128 0x13
 3187 02ab 02       		.uleb128 0x2
 3188 02ac 17       		.uleb128 0x17
 3189 02ad 00       		.byte	0
 3190 02ae 00       		.byte	0
 3191 02af 00       		.byte	0
 3192              		.section	.debug_loc,"",%progbits
 3193              	.Ldebug_loc0:
 3194              	.LLST10:
 3195 0000 00000000 		.4byte	.LVL36
 3196 0004 1C000000 		.4byte	.LVL40
 3197 0008 0100     		.2byte	0x1
ARM GAS  /tmp/ccPSOZXt.s 			page 67


 3198 000a 51       		.byte	0x51
 3199 000b 1C000000 		.4byte	.LVL40
 3200 000f 26000000 		.4byte	.LFE164
 3201 0013 0400     		.2byte	0x4
 3202 0015 F3       		.byte	0xf3
 3203 0016 01       		.uleb128 0x1
 3204 0017 51       		.byte	0x51
 3205 0018 9F       		.byte	0x9f
 3206 0019 00000000 		.4byte	0
 3207 001d 00000000 		.4byte	0
 3208              	.LLST11:
 3209 0021 00000000 		.4byte	.LVL36
 3210 0025 08000000 		.4byte	.LVL37
 3211 0029 0100     		.2byte	0x1
 3212 002b 52       		.byte	0x52
 3213 002c 08000000 		.4byte	.LVL37
 3214 0030 26000000 		.4byte	.LFE164
 3215 0034 0400     		.2byte	0x4
 3216 0036 F3       		.byte	0xf3
 3217 0037 01       		.uleb128 0x1
 3218 0038 52       		.byte	0x52
 3219 0039 9F       		.byte	0x9f
 3220 003a 00000000 		.4byte	0
 3221 003e 00000000 		.4byte	0
 3222              	.LLST12:
 3223 0042 00000000 		.4byte	.LVL36
 3224 0046 20000000 		.4byte	.LVL41
 3225 004a 0200     		.2byte	0x2
 3226 004c 91       		.byte	0x91
 3227 004d 00       		.sleb128 0
 3228 004e 20000000 		.4byte	.LVL41
 3229 0052 26000000 		.4byte	.LFE164
 3230 0056 0200     		.2byte	0x2
 3231 0058 7D       		.byte	0x7d
 3232 0059 00       		.sleb128 0
 3233 005a 00000000 		.4byte	0
 3234 005e 00000000 		.4byte	0
 3235              	.LLST13:
 3236 0062 00000000 		.4byte	.LVL36
 3237 0066 12000000 		.4byte	.LVL38
 3238 006a 0200     		.2byte	0x2
 3239 006c 30       		.byte	0x30
 3240 006d 9F       		.byte	0x9f
 3241 006e 12000000 		.4byte	.LVL38
 3242 0072 18000000 		.4byte	.LVL39
 3243 0076 0100     		.2byte	0x1
 3244 0078 52       		.byte	0x52
 3245 0079 18000000 		.4byte	.LVL39
 3246 007d 1C000000 		.4byte	.LVL40
 3247 0081 0900     		.2byte	0x9
 3248 0083 71       		.byte	0x71
 3249 0084 00       		.sleb128 0
 3250 0085 08       		.byte	0x8
 3251 0086 FF       		.byte	0xff
 3252 0087 1A       		.byte	0x1a
 3253 0088 72       		.byte	0x72
 3254 0089 00       		.sleb128 0
ARM GAS  /tmp/ccPSOZXt.s 			page 68


 3255 008a 21       		.byte	0x21
 3256 008b 9F       		.byte	0x9f
 3257 008c 1C000000 		.4byte	.LVL40
 3258 0090 22000000 		.4byte	.LVL42
 3259 0094 0A00     		.2byte	0xa
 3260 0096 F3       		.byte	0xf3
 3261 0097 01       		.uleb128 0x1
 3262 0098 51       		.byte	0x51
 3263 0099 08       		.byte	0x8
 3264 009a FF       		.byte	0xff
 3265 009b 1A       		.byte	0x1a
 3266 009c 72       		.byte	0x72
 3267 009d 00       		.sleb128 0
 3268 009e 21       		.byte	0x21
 3269 009f 9F       		.byte	0x9f
 3270 00a0 22000000 		.4byte	.LVL42
 3271 00a4 26000000 		.4byte	.LFE164
 3272 00a8 0100     		.2byte	0x1
 3273 00aa 51       		.byte	0x51
 3274 00ab 00000000 		.4byte	0
 3275 00af 00000000 		.4byte	0
 3276              	.LLST9:
 3277 00b3 00000000 		.4byte	.LVL32
 3278 00b7 0A000000 		.4byte	.LVL33
 3279 00bb 0100     		.2byte	0x1
 3280 00bd 50       		.byte	0x50
 3281 00be 0A000000 		.4byte	.LVL33
 3282 00c2 0E000000 		.4byte	.LVL34
 3283 00c6 0400     		.2byte	0x4
 3284 00c8 F3       		.byte	0xf3
 3285 00c9 01       		.uleb128 0x1
 3286 00ca 50       		.byte	0x50
 3287 00cb 9F       		.byte	0x9f
 3288 00cc 0E000000 		.4byte	.LVL34
 3289 00d0 10000000 		.4byte	.LVL35
 3290 00d4 0100     		.2byte	0x1
 3291 00d6 50       		.byte	0x50
 3292 00d7 10000000 		.4byte	.LVL35
 3293 00db 12000000 		.4byte	.LFE163
 3294 00df 0400     		.2byte	0x4
 3295 00e1 F3       		.byte	0xf3
 3296 00e2 01       		.uleb128 0x1
 3297 00e3 50       		.byte	0x50
 3298 00e4 9F       		.byte	0x9f
 3299 00e5 00000000 		.4byte	0
 3300 00e9 00000000 		.4byte	0
 3301              	.LLST8:
 3302 00ed 00000000 		.4byte	.LVL28
 3303 00f1 0A000000 		.4byte	.LVL29
 3304 00f5 0100     		.2byte	0x1
 3305 00f7 50       		.byte	0x50
 3306 00f8 0A000000 		.4byte	.LVL29
 3307 00fc 0C000000 		.4byte	.LVL30
 3308 0100 0400     		.2byte	0x4
 3309 0102 F3       		.byte	0xf3
 3310 0103 01       		.uleb128 0x1
 3311 0104 50       		.byte	0x50
ARM GAS  /tmp/ccPSOZXt.s 			page 69


 3312 0105 9F       		.byte	0x9f
 3313 0106 0C000000 		.4byte	.LVL30
 3314 010a 0E000000 		.4byte	.LVL31
 3315 010e 0100     		.2byte	0x1
 3316 0110 50       		.byte	0x50
 3317 0111 0E000000 		.4byte	.LVL31
 3318 0115 10000000 		.4byte	.LFE162
 3319 0119 0400     		.2byte	0x4
 3320 011b F3       		.byte	0xf3
 3321 011c 01       		.uleb128 0x1
 3322 011d 50       		.byte	0x50
 3323 011e 9F       		.byte	0x9f
 3324 011f 00000000 		.4byte	0
 3325 0123 00000000 		.4byte	0
 3326              	.LLST6:
 3327 0127 00000000 		.4byte	.LVL23
 3328 012b 02000000 		.4byte	.LVL24
 3329 012f 0100     		.2byte	0x1
 3330 0131 50       		.byte	0x50
 3331 0132 02000000 		.4byte	.LVL24
 3332 0136 08000000 		.4byte	.LFE159
 3333 013a 0400     		.2byte	0x4
 3334 013c F3       		.byte	0xf3
 3335 013d 01       		.uleb128 0x1
 3336 013e 50       		.byte	0x50
 3337 013f 9F       		.byte	0x9f
 3338 0140 00000000 		.4byte	0
 3339 0144 00000000 		.4byte	0
 3340              	.LLST5:
 3341 0148 00000000 		.4byte	.LVL21
 3342 014c 02000000 		.4byte	.LVL22
 3343 0150 0100     		.2byte	0x1
 3344 0152 50       		.byte	0x50
 3345 0153 02000000 		.4byte	.LVL22
 3346 0157 08000000 		.4byte	.LFE157
 3347 015b 0400     		.2byte	0x4
 3348 015d F3       		.byte	0xf3
 3349 015e 01       		.uleb128 0x1
 3350 015f 50       		.byte	0x50
 3351 0160 9F       		.byte	0x9f
 3352 0161 00000000 		.4byte	0
 3353 0165 00000000 		.4byte	0
 3354              	.LLST4:
 3355 0169 00000000 		.4byte	.LVL18
 3356 016d 02000000 		.4byte	.LVL19
 3357 0171 0100     		.2byte	0x1
 3358 0173 50       		.byte	0x50
 3359 0174 02000000 		.4byte	.LVL19
 3360 0178 04000000 		.4byte	.LFE155
 3361 017c 0400     		.2byte	0x4
 3362 017e F3       		.byte	0xf3
 3363 017f 01       		.uleb128 0x1
 3364 0180 50       		.byte	0x50
 3365 0181 9F       		.byte	0x9f
 3366 0182 00000000 		.4byte	0
 3367 0186 00000000 		.4byte	0
 3368              	.LLST3:
ARM GAS  /tmp/ccPSOZXt.s 			page 70


 3369 018a 00000000 		.4byte	.LVL16
 3370 018e 02000000 		.4byte	.LVL17
 3371 0192 0100     		.2byte	0x1
 3372 0194 50       		.byte	0x50
 3373 0195 02000000 		.4byte	.LVL17
 3374 0199 04000000 		.4byte	.LFE154
 3375 019d 0400     		.2byte	0x4
 3376 019f F3       		.byte	0xf3
 3377 01a0 01       		.uleb128 0x1
 3378 01a1 50       		.byte	0x50
 3379 01a2 9F       		.byte	0x9f
 3380 01a3 00000000 		.4byte	0
 3381 01a7 00000000 		.4byte	0
 3382              	.LLST0:
 3383 01ab 00000000 		.4byte	.LVL0
 3384 01af 0C000000 		.4byte	.LVL1
 3385 01b3 0100     		.2byte	0x1
 3386 01b5 50       		.byte	0x50
 3387 01b6 0C000000 		.4byte	.LVL1
 3388 01ba 32000000 		.4byte	.LFE142
 3389 01be 0100     		.2byte	0x1
 3390 01c0 52       		.byte	0x52
 3391 01c1 00000000 		.4byte	0
 3392 01c5 00000000 		.4byte	0
 3393              	.LLST1:
 3394 01c9 00000000 		.4byte	.LVL0
 3395 01cd 20000000 		.4byte	.LVL3
 3396 01d1 0100     		.2byte	0x1
 3397 01d3 51       		.byte	0x51
 3398 01d4 20000000 		.4byte	.LVL3
 3399 01d8 2C000000 		.4byte	.LVL4
 3400 01dc 0400     		.2byte	0x4
 3401 01de F3       		.byte	0xf3
 3402 01df 01       		.uleb128 0x1
 3403 01e0 51       		.byte	0x51
 3404 01e1 9F       		.byte	0x9f
 3405 01e2 2C000000 		.4byte	.LVL4
 3406 01e6 32000000 		.4byte	.LFE142
 3407 01ea 0100     		.2byte	0x1
 3408 01ec 51       		.byte	0x51
 3409 01ed 00000000 		.4byte	0
 3410 01f1 00000000 		.4byte	0
 3411              	.LLST2:
 3412 01f5 00000000 		.4byte	.LVL0
 3413 01f9 14000000 		.4byte	.LVL2
 3414 01fd 0200     		.2byte	0x2
 3415 01ff 30       		.byte	0x30
 3416 0200 9F       		.byte	0x9f
 3417 0201 14000000 		.4byte	.LVL2
 3418 0205 32000000 		.4byte	.LFE142
 3419 0209 0100     		.2byte	0x1
 3420 020b 53       		.byte	0x53
 3421 020c 00000000 		.4byte	0
 3422 0210 00000000 		.4byte	0
 3423              	.LLST7:
 3424 0214 00000000 		.4byte	.LVL25
 3425 0218 02000000 		.4byte	.LVL26
ARM GAS  /tmp/ccPSOZXt.s 			page 71


 3426 021c 0100     		.2byte	0x1
 3427 021e 50       		.byte	0x50
 3428 021f 02000000 		.4byte	.LVL26
 3429 0223 08000000 		.4byte	.LFE160
 3430 0227 0400     		.2byte	0x4
 3431 0229 F3       		.byte	0xf3
 3432 022a 01       		.uleb128 0x1
 3433 022b 50       		.byte	0x50
 3434 022c 9F       		.byte	0x9f
 3435 022d 00000000 		.4byte	0
 3436 0231 00000000 		.4byte	0
 3437              		.section	.debug_aranges,"",%progbits
 3438 0000 CC000000 		.4byte	0xcc
 3439 0004 0200     		.2byte	0x2
 3440 0006 00000000 		.4byte	.Ldebug_info0
 3441 000a 04       		.byte	0x4
 3442 000b 00       		.byte	0
 3443 000c 0000     		.2byte	0
 3444 000e 0000     		.2byte	0
 3445 0010 00000000 		.4byte	.LFB142
 3446 0014 32000000 		.4byte	.LFE142-.LFB142
 3447 0018 00000000 		.4byte	.LFB143
 3448 001c 06000000 		.4byte	.LFE143-.LFB143
 3449 0020 00000000 		.4byte	.LFB144
 3450 0024 06000000 		.4byte	.LFE144-.LFB144
 3451 0028 00000000 		.4byte	.LFB145
 3452 002c 06000000 		.4byte	.LFE145-.LFB145
 3453 0030 00000000 		.4byte	.LFB146
 3454 0034 06000000 		.4byte	.LFE146-.LFB146
 3455 0038 00000000 		.4byte	.LFB147
 3456 003c 06000000 		.4byte	.LFE147-.LFB147
 3457 0040 00000000 		.4byte	.LFB148
 3458 0044 06000000 		.4byte	.LFE148-.LFB148
 3459 0048 00000000 		.4byte	.LFB149
 3460 004c 06000000 		.4byte	.LFE149-.LFB149
 3461 0050 00000000 		.4byte	.LFB150
 3462 0054 06000000 		.4byte	.LFE150-.LFB150
 3463 0058 00000000 		.4byte	.LFB151
 3464 005c 06000000 		.4byte	.LFE151-.LFB151
 3465 0060 00000000 		.4byte	.LFB152
 3466 0064 04000000 		.4byte	.LFE152-.LFB152
 3467 0068 00000000 		.4byte	.LFB153
 3468 006c 04000000 		.4byte	.LFE153-.LFB153
 3469 0070 00000000 		.4byte	.LFB154
 3470 0074 04000000 		.4byte	.LFE154-.LFB154
 3471 0078 00000000 		.4byte	.LFB155
 3472 007c 04000000 		.4byte	.LFE155-.LFB155
 3473 0080 00000000 		.4byte	.LFB156
 3474 0084 08000000 		.4byte	.LFE156-.LFB156
 3475 0088 00000000 		.4byte	.LFB157
 3476 008c 08000000 		.4byte	.LFE157-.LFB157
 3477 0090 00000000 		.4byte	.LFB159
 3478 0094 08000000 		.4byte	.LFE159-.LFB159
 3479 0098 00000000 		.4byte	.LFB160
 3480 009c 08000000 		.4byte	.LFE160-.LFB160
 3481 00a0 00000000 		.4byte	.LFB161
 3482 00a4 04000000 		.4byte	.LFE161-.LFB161
ARM GAS  /tmp/ccPSOZXt.s 			page 72


 3483 00a8 00000000 		.4byte	.LFB162
 3484 00ac 10000000 		.4byte	.LFE162-.LFB162
 3485 00b0 00000000 		.4byte	.LFB163
 3486 00b4 12000000 		.4byte	.LFE163-.LFB163
 3487 00b8 00000000 		.4byte	.LFB164
 3488 00bc 26000000 		.4byte	.LFE164-.LFB164
 3489 00c0 00000000 		.4byte	.LFB165
 3490 00c4 1C000000 		.4byte	.LFE165-.LFB165
 3491 00c8 00000000 		.4byte	0
 3492 00cc 00000000 		.4byte	0
 3493              		.section	.debug_ranges,"",%progbits
 3494              	.Ldebug_ranges0:
 3495 0000 00000000 		.4byte	.LFB142
 3496 0004 32000000 		.4byte	.LFE142
 3497 0008 00000000 		.4byte	.LFB143
 3498 000c 06000000 		.4byte	.LFE143
 3499 0010 00000000 		.4byte	.LFB144
 3500 0014 06000000 		.4byte	.LFE144
 3501 0018 00000000 		.4byte	.LFB145
 3502 001c 06000000 		.4byte	.LFE145
 3503 0020 00000000 		.4byte	.LFB146
 3504 0024 06000000 		.4byte	.LFE146
 3505 0028 00000000 		.4byte	.LFB147
 3506 002c 06000000 		.4byte	.LFE147
 3507 0030 00000000 		.4byte	.LFB148
 3508 0034 06000000 		.4byte	.LFE148
 3509 0038 00000000 		.4byte	.LFB149
 3510 003c 06000000 		.4byte	.LFE149
 3511 0040 00000000 		.4byte	.LFB150
 3512 0044 06000000 		.4byte	.LFE150
 3513 0048 00000000 		.4byte	.LFB151
 3514 004c 06000000 		.4byte	.LFE151
 3515 0050 00000000 		.4byte	.LFB152
 3516 0054 04000000 		.4byte	.LFE152
 3517 0058 00000000 		.4byte	.LFB153
 3518 005c 04000000 		.4byte	.LFE153
 3519 0060 00000000 		.4byte	.LFB154
 3520 0064 04000000 		.4byte	.LFE154
 3521 0068 00000000 		.4byte	.LFB155
 3522 006c 04000000 		.4byte	.LFE155
 3523 0070 00000000 		.4byte	.LFB156
 3524 0074 08000000 		.4byte	.LFE156
 3525 0078 00000000 		.4byte	.LFB157
 3526 007c 08000000 		.4byte	.LFE157
 3527 0080 00000000 		.4byte	.LFB159
 3528 0084 08000000 		.4byte	.LFE159
 3529 0088 00000000 		.4byte	.LFB160
 3530 008c 08000000 		.4byte	.LFE160
 3531 0090 00000000 		.4byte	.LFB161
 3532 0094 04000000 		.4byte	.LFE161
 3533 0098 00000000 		.4byte	.LFB162
 3534 009c 10000000 		.4byte	.LFE162
 3535 00a0 00000000 		.4byte	.LFB163
 3536 00a4 12000000 		.4byte	.LFE163
 3537 00a8 00000000 		.4byte	.LFB164
 3538 00ac 26000000 		.4byte	.LFE164
 3539 00b0 00000000 		.4byte	.LFB165
ARM GAS  /tmp/ccPSOZXt.s 			page 73


 3540 00b4 1C000000 		.4byte	.LFE165
 3541 00b8 00000000 		.4byte	0
 3542 00bc 00000000 		.4byte	0
 3543              		.section	.debug_line,"",%progbits
 3544              	.Ldebug_line0:
 3545 0000 30040000 		.section	.debug_str,"MS",%progbits,1
 3545      02006202 
 3545      00000201 
 3545      FB0E0D00 
 3545      01010101 
 3546              	.LASF3:
 3547 0000 73686F72 		.ascii	"short int\000"
 3547      7420696E 
 3547      7400
 3548              	.LASF24:
 3549 000a 55415254 		.ascii	"UART_IMR\000"
 3549      5F494D52 
 3549      00
 3550              	.LASF70:
 3551 0013 5F5F7346 		.ascii	"__sFILE\000"
 3551      494C4500 
 3552              	.LASF114:
 3553 001b 5F72616E 		.ascii	"_rand48\000"
 3553      64343800 
 3554              	.LASF93:
 3555 0023 5F656D65 		.ascii	"_emergency\000"
 3555      7267656E 
 3555      637900
 3556              	.LASF4:
 3557 002e 5F5F7569 		.ascii	"__uint8_t\000"
 3557      6E74385F 
 3557      7400
 3558              	.LASF130:
 3559 0038 5F676574 		.ascii	"_getdate_err\000"
 3559      64617465 
 3559      5F657272 
 3559      00
 3560              	.LASF83:
 3561 0045 5F646174 		.ascii	"_data\000"
 3561      6100
 3562              	.LASF186:
 3563 004b 75617274 		.ascii	"uart_init\000"
 3563      5F696E69 
 3563      7400
 3564              	.LASF134:
 3565 0055 5F776372 		.ascii	"_wcrtomb_state\000"
 3565      746F6D62 
 3565      5F737461 
 3565      746500
 3566              	.LASF135:
 3567 0064 5F776373 		.ascii	"_wcsrtombs_state\000"
 3567      72746F6D 
 3567      62735F73 
 3567      74617465 
 3567      00
 3568              	.LASF12:
 3569 0075 6C6F6E67 		.ascii	"long long unsigned int\000"
ARM GAS  /tmp/ccPSOZXt.s 			page 74


 3569      206C6F6E 
 3569      6720756E 
 3569      7369676E 
 3569      65642069 
 3570              	.LASF73:
 3571 008c 5F6C6266 		.ascii	"_lbfsize\000"
 3571      73697A65 
 3571      00
 3572              	.LASF158:
 3573 0095 756C5F6C 		.ascii	"ul_low_value\000"
 3573      6F775F76 
 3573      616C7565 
 3573      00
 3574              	.LASF18:
 3575 00a2 49544D5F 		.ascii	"ITM_RxBuffer\000"
 3575      52784275 
 3575      66666572 
 3575      00
 3576              	.LASF167:
 3577 00af 75617274 		.ascii	"uart_set_clock_divisor\000"
 3577      5F736574 
 3577      5F636C6F 
 3577      636B5F64 
 3577      69766973 
 3578              	.LASF132:
 3579 00c6 5F6D6272 		.ascii	"_mbrtowc_state\000"
 3579      746F7763 
 3579      5F737461 
 3579      746500
 3580              	.LASF127:
 3581 00d5 5F776374 		.ascii	"_wctomb_state\000"
 3581      6F6D625F 
 3581      73746174 
 3581      6500
 3582              	.LASF50:
 3583 00e3 5F5F746D 		.ascii	"__tm_sec\000"
 3583      5F736563 
 3583      00
 3584              	.LASF78:
 3585 00ec 5F636C6F 		.ascii	"_close\000"
 3585      736500
 3586              	.LASF1:
 3587 00f3 7369676E 		.ascii	"signed char\000"
 3587      65642063 
 3587      68617200 
 3588              	.LASF191:
 3589 00ff 75617274 		.ascii	"uart_is_tx_buf_empty\000"
 3589      5F69735F 
 3589      74785F62 
 3589      75665F65 
 3589      6D707479 
 3590              	.LASF79:
 3591 0114 5F756275 		.ascii	"_ubuf\000"
 3591      6600
 3592              	.LASF68:
 3593 011a 5F626173 		.ascii	"_base\000"
 3593      6500
ARM GAS  /tmp/ccPSOZXt.s 			page 75


 3594              	.LASF30:
 3595 0120 52657365 		.ascii	"Reserved1\000"
 3595      72766564 
 3595      3100
 3596              	.LASF52:
 3597 012a 5F5F746D 		.ascii	"__tm_hour\000"
 3597      5F686F75 
 3597      7200
 3598              	.LASF108:
 3599 0134 5F5F7366 		.ascii	"__sf\000"
 3599      00
 3600              	.LASF166:
 3601 0139 75635F64 		.ascii	"uc_data\000"
 3601      61746100 
 3602              	.LASF164:
 3603 0141 75617274 		.ascii	"uart_read\000"
 3603      5F726561 
 3603      6400
 3604              	.LASF74:
 3605 014b 5F636F6F 		.ascii	"_cookie\000"
 3605      6B696500 
 3606              	.LASF137:
 3607 0153 5F6E6578 		.ascii	"_nextf\000"
 3607      746600
 3608              	.LASF107:
 3609 015a 5F5F7367 		.ascii	"__sglue\000"
 3609      6C756500 
 3610              	.LASF8:
 3611 0162 6C6F6E67 		.ascii	"long int\000"
 3611      20696E74 
 3611      00
 3612              	.LASF71:
 3613 016b 5F666C61 		.ascii	"_flags\000"
 3613      677300
 3614              	.LASF63:
 3615 0172 5F69735F 		.ascii	"_is_cxa\000"
 3615      63786100 
 3616              	.LASF47:
 3617 017a 5F776473 		.ascii	"_wds\000"
 3617      00
 3618              	.LASF110:
 3619 017f 5F5F4649 		.ascii	"__FILE\000"
 3619      4C4500
 3620              	.LASF99:
 3621 0186 5F726573 		.ascii	"_result_k\000"
 3621      756C745F 
 3621      6B00
 3622              	.LASF11:
 3623 0190 6C6F6E67 		.ascii	"long long int\000"
 3623      206C6F6E 
 3623      6720696E 
 3623      7400
 3624              	.LASF157:
 3625 019e 75617274 		.ascii	"uart_set_sleepwalking\000"
 3625      5F736574 
 3625      5F736C65 
 3625      65707761 
ARM GAS  /tmp/ccPSOZXt.s 			page 76


 3625      6C6B696E 
 3626              	.LASF14:
 3627 01b4 75696E74 		.ascii	"uint16_t\000"
 3627      31365F74 
 3627      00
 3628              	.LASF148:
 3629 01bd 646F7562 		.ascii	"double\000"
 3629      6C6500
 3630              	.LASF103:
 3631 01c4 5F637674 		.ascii	"_cvtbuf\000"
 3631      62756600 
 3632              	.LASF133:
 3633 01cc 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 3633      72746F77 
 3633      63735F73 
 3633      74617465 
 3633      00
 3634              	.LASF192:
 3635 01dd 75617274 		.ascii	"uart_is_tx_empty\000"
 3635      5F69735F 
 3635      74785F65 
 3635      6D707479 
 3635      00
 3636              	.LASF131:
 3637 01ee 5F6D6272 		.ascii	"_mbrlen_state\000"
 3637      6C656E5F 
 3637      73746174 
 3637      6500
 3638              	.LASF60:
 3639 01fc 5F666E61 		.ascii	"_fnargs\000"
 3639      72677300 
 3640              	.LASF161:
 3641 0204 756C5F68 		.ascii	"ul_high_value\000"
 3641      6967685F 
 3641      76616C75 
 3641      6500
 3642              	.LASF165:
 3643 0212 75617274 		.ascii	"uart_write\000"
 3643      5F777269 
 3643      746500
 3644              	.LASF66:
 3645 021d 5F666E73 		.ascii	"_fns\000"
 3645      00
 3646              	.LASF9:
 3647 0222 5F5F7569 		.ascii	"__uint32_t\000"
 3647      6E743332 
 3647      5F7400
 3648              	.LASF46:
 3649 022d 5F736967 		.ascii	"_sign\000"
 3649      6E00
 3650              	.LASF146:
 3651 0233 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 3651      6972715F 
 3651      70726576 
 3651      5F696E74 
 3651      65727275 
 3652              	.LASF172:
ARM GAS  /tmp/ccPSOZXt.s 			page 77


 3653 0250 75617274 		.ascii	"uart_get_status\000"
 3653      5F676574 
 3653      5F737461 
 3653      74757300 
 3654              	.LASF91:
 3655 0260 5F737464 		.ascii	"_stderr\000"
 3655      65727200 
 3656              	.LASF48:
 3657 0268 5F426967 		.ascii	"_Bigint\000"
 3657      696E7400 
 3658              	.LASF122:
 3659 0270 5F67616D 		.ascii	"_gamma_signgam\000"
 3659      6D615F73 
 3659      69676E67 
 3659      616D00
 3660              	.LASF44:
 3661 027f 5F6E6578 		.ascii	"_next\000"
 3661      7400
 3662              	.LASF138:
 3663 0285 5F6E6D61 		.ascii	"_nmalloc\000"
 3663      6C6C6F63 
 3663      00
 3664              	.LASF162:
 3665 028e 74656D70 		.ascii	"temp\000"
 3665      00
 3666              	.LASF49:
 3667 0293 5F5F746D 		.ascii	"__tm\000"
 3667      00
 3668              	.LASF85:
 3669 0298 5F6D6273 		.ascii	"_mbstate\000"
 3669      74617465 
 3669      00
 3670              	.LASF38:
 3671 02a1 5F5F7763 		.ascii	"__wchb\000"
 3671      686200
 3672              	.LASF19:
 3673 02a8 53797374 		.ascii	"SystemCoreClock\000"
 3673      656D436F 
 3673      7265436C 
 3673      6F636B00 
 3674              	.LASF102:
 3675 02b8 5F637674 		.ascii	"_cvtlen\000"
 3675      6C656E00 
 3676              	.LASF10:
 3677 02c0 6C6F6E67 		.ascii	"long unsigned int\000"
 3677      20756E73 
 3677      69676E65 
 3677      6420696E 
 3677      7400
 3678              	.LASF72:
 3679 02d2 5F66696C 		.ascii	"_file\000"
 3679      6500
 3680              	.LASF182:
 3681 02d8 75617274 		.ascii	"uart_enable_rx\000"
 3681      5F656E61 
 3681      626C655F 
 3681      727800
ARM GAS  /tmp/ccPSOZXt.s 			page 78


 3682              	.LASF112:
 3683 02e7 5F6E696F 		.ascii	"_niobs\000"
 3683      627300
 3684              	.LASF6:
 3685 02ee 73686F72 		.ascii	"short unsigned int\000"
 3685      7420756E 
 3685      7369676E 
 3685      65642069 
 3685      6E7400
 3686              	.LASF180:
 3687 0301 75617274 		.ascii	"uart_reset_rx\000"
 3687      5F726573 
 3687      65745F72 
 3687      7800
 3688              	.LASF105:
 3689 030f 5F617465 		.ascii	"_atexit0\000"
 3689      78697430 
 3689      00
 3690              	.LASF129:
 3691 0318 5F736967 		.ascii	"_signal_buf\000"
 3691      6E616C5F 
 3691      62756600 
 3692              	.LASF120:
 3693 0324 5F617363 		.ascii	"_asctime_buf\000"
 3693      74696D65 
 3693      5F627566 
 3693      00
 3694              	.LASF98:
 3695 0331 5F726573 		.ascii	"_result\000"
 3695      756C7400 
 3696              	.LASF37:
 3697 0339 5F5F7763 		.ascii	"__wch\000"
 3697      6800
 3698              	.LASF31:
 3699 033f 55415254 		.ascii	"UART_WPMR\000"
 3699      5F57504D 
 3699      5200
 3700              	.LASF36:
 3701 0349 77696E74 		.ascii	"wint_t\000"
 3701      5F7400
 3702              	.LASF20:
 3703 0350 55415254 		.ascii	"UART_CR\000"
 3703      5F435200 
 3704              	.LASF84:
 3705 0358 5F6C6F63 		.ascii	"_lock\000"
 3705      6B00
 3706              	.LASF190:
 3707 035e 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70\000"
 3707      652F746F 
 3707      72626A6F 
 3707      726E2F65 
 3707      636C6970 
 3708              	.LASF116:
 3709 038d 5F6D756C 		.ascii	"_mult\000"
 3709      7400
 3710              	.LASF160:
 3711 0393 636D7070 		.ascii	"cmppar\000"
ARM GAS  /tmp/ccPSOZXt.s 			page 79


 3711      617200
 3712              	.LASF26:
 3713 039a 55415254 		.ascii	"UART_RHR\000"
 3713      5F524852 
 3713      00
 3714              	.LASF76:
 3715 03a3 5F777269 		.ascii	"_write\000"
 3715      746500
 3716              	.LASF55:
 3717 03aa 5F5F746D 		.ascii	"__tm_year\000"
 3717      5F796561 
 3717      7200
 3718              	.LASF118:
 3719 03b4 5F756E75 		.ascii	"_unused_rand\000"
 3719      7365645F 
 3719      72616E64 
 3719      00
 3720              	.LASF189:
 3721 03c1 2E2E2F61 		.ascii	"../asf/sam/drivers/uart/uart.c\000"
 3721      73662F73 
 3721      616D2F64 
 3721      72697665 
 3721      72732F75 
 3722              	.LASF176:
 3723 03e0 75617274 		.ascii	"uart_enable_interrupt\000"
 3723      5F656E61 
 3723      626C655F 
 3723      696E7465 
 3723      72727570 
 3724              	.LASF150:
 3725 03f6 756C5F6D 		.ascii	"ul_mck\000"
 3725      636B00
 3726              	.LASF17:
 3727 03fd 73697A65 		.ascii	"sizetype\000"
 3727      74797065 
 3727      00
 3728              	.LASF82:
 3729 0406 5F6F6666 		.ascii	"_offset\000"
 3729      73657400 
 3730              	.LASF163:
 3731 040e 7075635F 		.ascii	"puc_data\000"
 3731      64617461 
 3731      00
 3732              	.LASF169:
 3733 0417 75617274 		.ascii	"uart_is_rx_ready\000"
 3733      5F69735F 
 3733      72785F72 
 3733      65616479 
 3733      00
 3734              	.LASF173:
 3735 0428 75617274 		.ascii	"uart_get_interrupt_mask\000"
 3735      5F676574 
 3735      5F696E74 
 3735      65727275 
 3735      70745F6D 
 3736              	.LASF188:
 3737 0440 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
ARM GAS  /tmp/ccPSOZXt.s 			page 80


 3737      43393920 
 3737      362E332E 
 3737      31203230 
 3737      31373036 
 3738 0473 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 3738      76352D64 
 3738      3136202D 
 3738      6D666C6F 
 3738      61742D61 
 3739 04a6 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 3739      6E2D7365 
 3739      6374696F 
 3739      6E73202D 
 3739      66646174 
 3740 04d9 6F6E7374 		.ascii	"onstant\000"
 3740      616E7400 
 3741              	.LASF179:
 3742 04e1 75617274 		.ascii	"uart_enable\000"
 3742      5F656E61 
 3742      626C6500 
 3743              	.LASF42:
 3744 04ed 5F666C6F 		.ascii	"_flock_t\000"
 3744      636B5F74 
 3744      00
 3745              	.LASF29:
 3746 04f6 55415254 		.ascii	"UART_CMPR\000"
 3746      5F434D50 
 3746      5200
 3747              	.LASF54:
 3748 0500 5F5F746D 		.ascii	"__tm_mon\000"
 3748      5F6D6F6E 
 3748      00
 3749              	.LASF64:
 3750 0509 5F617465 		.ascii	"_atexit\000"
 3750      78697400 
 3751              	.LASF142:
 3752 0511 7375626F 		.ascii	"suboptarg\000"
 3752      70746172 
 3752      6700
 3753              	.LASF181:
 3754 051b 75617274 		.ascii	"uart_disable_rx\000"
 3754      5F646973 
 3754      61626C65 
 3754      5F727800 
 3755              	.LASF34:
 3756 052b 5F6F6666 		.ascii	"_off_t\000"
 3756      5F7400
 3757              	.LASF28:
 3758 0532 55415254 		.ascii	"UART_BRGR\000"
 3758      5F425247 
 3758      5200
 3759              	.LASF174:
 3760 053c 75617274 		.ascii	"uart_disable_interrupt\000"
 3760      5F646973 
 3760      61626C65 
 3760      5F696E74 
 3760      65727275 
ARM GAS  /tmp/ccPSOZXt.s 			page 81


 3761              	.LASF152:
 3762 0553 756C5F6D 		.ascii	"ul_mode\000"
 3762      6F646500 
 3763              	.LASF143:
 3764 055b 675F696E 		.ascii	"g_interrupt_enabled\000"
 3764      74657272 
 3764      7570745F 
 3764      656E6162 
 3764      6C656400 
 3765              	.LASF33:
 3766 056f 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 3766      4B5F5245 
 3766      43555253 
 3766      4956455F 
 3766      5400
 3767              	.LASF75:
 3768 0581 5F726561 		.ascii	"_read\000"
 3768      6400
 3769              	.LASF170:
 3770 0587 75617274 		.ascii	"uart_is_tx_ready\000"
 3770      5F69735F 
 3770      74785F72 
 3770      65616479 
 3770      00
 3771              	.LASF185:
 3772 0598 75617274 		.ascii	"uart_enable_tx\000"
 3772      5F656E61 
 3772      626C655F 
 3772      747800
 3773              	.LASF144:
 3774 05a7 5F426F6F 		.ascii	"_Bool\000"
 3774      6C00
 3775              	.LASF15:
 3776 05ad 696E7433 		.ascii	"int32_t\000"
 3776      325F7400 
 3777              	.LASF61:
 3778 05b5 5F64736F 		.ascii	"_dso_handle\000"
 3778      5F68616E 
 3778      646C6500 
 3779              	.LASF104:
 3780 05c1 5F6E6577 		.ascii	"_new\000"
 3780      00
 3781              	.LASF136:
 3782 05c6 5F685F65 		.ascii	"_h_errno\000"
 3782      72726E6F 
 3782      00
 3783              	.LASF125:
 3784 05cf 5F6D626C 		.ascii	"_mblen_state\000"
 3784      656E5F73 
 3784      74617465 
 3784      00
 3785              	.LASF57:
 3786 05dc 5F5F746D 		.ascii	"__tm_yday\000"
 3786      5F796461 
 3786      7900
 3787              	.LASF67:
 3788 05e6 5F5F7362 		.ascii	"__sbuf\000"
ARM GAS  /tmp/ccPSOZXt.s 			page 82


 3788      756600
 3789              	.LASF86:
 3790 05ed 5F666C61 		.ascii	"_flags2\000"
 3790      67733200 
 3791              	.LASF101:
 3792 05f5 5F667265 		.ascii	"_freelist\000"
 3792      656C6973 
 3792      7400
 3793              	.LASF183:
 3794 05ff 75617274 		.ascii	"uart_reset_tx\000"
 3794      5F726573 
 3794      65745F74 
 3794      7800
 3795              	.LASF168:
 3796 060d 75735F64 		.ascii	"us_divisor\000"
 3796      69766973 
 3796      6F7200
 3797              	.LASF41:
 3798 0618 5F6D6273 		.ascii	"_mbstate_t\000"
 3798      74617465 
 3798      5F7400
 3799              	.LASF155:
 3800 0623 666C6167 		.ascii	"flag\000"
 3800      00
 3801              	.LASF153:
 3802 0628 73616D5F 		.ascii	"sam_uart_opt_t\000"
 3802      75617274 
 3802      5F6F7074 
 3802      5F7400
 3803              	.LASF123:
 3804 0637 5F72616E 		.ascii	"_rand_next\000"
 3804      645F6E65 
 3804      787400
 3805              	.LASF113:
 3806 0642 5F696F62 		.ascii	"_iobs\000"
 3806      7300
 3807              	.LASF92:
 3808 0648 5F696E63 		.ascii	"_inc\000"
 3808      00
 3809              	.LASF65:
 3810 064d 5F696E64 		.ascii	"_ind\000"
 3810      00
 3811              	.LASF95:
 3812 0652 5F637572 		.ascii	"_current_locale\000"
 3812      72656E74 
 3812      5F6C6F63 
 3812      616C6500 
 3813              	.LASF97:
 3814 0662 5F5F636C 		.ascii	"__cleanup\000"
 3814      65616E75 
 3814      7000
 3815              	.LASF45:
 3816 066c 5F6D6178 		.ascii	"_maxwds\000"
 3816      77647300 
 3817              	.LASF87:
 3818 0674 5F726565 		.ascii	"_reent\000"
 3818      6E7400
ARM GAS  /tmp/ccPSOZXt.s 			page 83


 3819              	.LASF115:
 3820 067b 5F736565 		.ascii	"_seed\000"
 3820      6400
 3821              	.LASF39:
 3822 0681 5F5F636F 		.ascii	"__count\000"
 3822      756E7400 
 3823              	.LASF16:
 3824 0689 75696E74 		.ascii	"uint32_t\000"
 3824      33325F74 
 3824      00
 3825              	.LASF77:
 3826 0692 5F736565 		.ascii	"_seek\000"
 3826      6B00
 3827              	.LASF140:
 3828 0698 5F696D70 		.ascii	"_impure_ptr\000"
 3828      7572655F 
 3828      70747200 
 3829              	.LASF35:
 3830 06a4 5F66706F 		.ascii	"_fpos_t\000"
 3830      735F7400 
 3831              	.LASF21:
 3832 06ac 55415254 		.ascii	"UART_MR\000"
 3832      5F4D5200 
 3833              	.LASF147:
 3834 06b4 666C6F61 		.ascii	"float\000"
 3834      7400
 3835              	.LASF88:
 3836 06ba 5F657272 		.ascii	"_errno\000"
 3836      6E6F00
 3837              	.LASF109:
 3838 06c1 63686172 		.ascii	"char\000"
 3838      00
 3839              	.LASF81:
 3840 06c6 5F626C6B 		.ascii	"_blksize\000"
 3840      73697A65 
 3840      00
 3841              	.LASF156:
 3842 06cf 75617274 		.ascii	"uart_set_write_protection\000"
 3842      5F736574 
 3842      5F777269 
 3842      74655F70 
 3842      726F7465 
 3843              	.LASF69:
 3844 06e9 5F73697A 		.ascii	"_size\000"
 3844      6500
 3845              	.LASF0:
 3846 06ef 756E7369 		.ascii	"unsigned int\000"
 3846      676E6564 
 3846      20696E74 
 3846      00
 3847              	.LASF5:
 3848 06fc 5F5F7569 		.ascii	"__uint16_t\000"
 3848      6E743136 
 3848      5F7400
 3849              	.LASF171:
 3850 0707 75617274 		.ascii	"uart_reset_status\000"
 3850      5F726573 
ARM GAS  /tmp/ccPSOZXt.s 			page 84


 3850      65745F73 
 3850      74617475 
 3850      7300
 3851              	.LASF187:
 3852 0719 705F7561 		.ascii	"p_uart_opt\000"
 3852      72745F6F 
 3852      707400
 3853              	.LASF7:
 3854 0724 5F5F696E 		.ascii	"__int32_t\000"
 3854      7433325F 
 3854      7400
 3855              	.LASF27:
 3856 072e 55415254 		.ascii	"UART_THR\000"
 3856      5F544852 
 3856      00
 3857              	.LASF32:
 3858 0737 55617274 		.ascii	"Uart\000"
 3858      00
 3859              	.LASF119:
 3860 073c 5F737472 		.ascii	"_strtok_last\000"
 3860      746F6B5F 
 3860      6C617374 
 3860      00
 3861              	.LASF40:
 3862 0749 5F5F7661 		.ascii	"__value\000"
 3862      6C756500 
 3863              	.LASF62:
 3864 0751 5F666E74 		.ascii	"_fntypes\000"
 3864      79706573 
 3864      00
 3865              	.LASF149:
 3866 075a 73616D5F 		.ascii	"sam_uart_opt\000"
 3866      75617274 
 3866      5F6F7074 
 3866      00
 3867              	.LASF2:
 3868 0767 756E7369 		.ascii	"unsigned char\000"
 3868      676E6564 
 3868      20636861 
 3868      7200
 3869              	.LASF184:
 3870 0775 75617274 		.ascii	"uart_disable_tx\000"
 3870      5F646973 
 3870      61626C65 
 3870      5F747800 
 3871              	.LASF117:
 3872 0785 5F616464 		.ascii	"_add\000"
 3872      00
 3873              	.LASF159:
 3874 078a 636D706D 		.ascii	"cmpmode\000"
 3874      6F646500 
 3875              	.LASF43:
 3876 0792 5F5F554C 		.ascii	"__ULong\000"
 3876      6F6E6700 
 3877              	.LASF23:
 3878 079a 55415254 		.ascii	"UART_IDR\000"
 3878      5F494452 
ARM GAS  /tmp/ccPSOZXt.s 			page 85


 3878      00
 3879              	.LASF154:
 3880 07a3 705F7561 		.ascii	"p_uart\000"
 3880      727400
 3881              	.LASF151:
 3882 07aa 756C5F62 		.ascii	"ul_baudrate\000"
 3882      61756472 
 3882      61746500 
 3883              	.LASF141:
 3884 07b6 5F676C6F 		.ascii	"_global_impure_ptr\000"
 3884      62616C5F 
 3884      696D7075 
 3884      72655F70 
 3884      747200
 3885              	.LASF94:
 3886 07c9 5F637572 		.ascii	"_current_category\000"
 3886      72656E74 
 3886      5F636174 
 3886      65676F72 
 3886      7900
 3887              	.LASF177:
 3888 07db 75617274 		.ascii	"uart_reset\000"
 3888      5F726573 
 3888      657400
 3889              	.LASF90:
 3890 07e6 5F737464 		.ascii	"_stdout\000"
 3890      6F757400 
 3891              	.LASF56:
 3892 07ee 5F5F746D 		.ascii	"__tm_wday\000"
 3892      5F776461 
 3892      7900
 3893              	.LASF111:
 3894 07f8 5F676C75 		.ascii	"_glue\000"
 3894      6500
 3895              	.LASF89:
 3896 07fe 5F737464 		.ascii	"_stdin\000"
 3896      696E00
 3897              	.LASF96:
 3898 0805 5F5F7364 		.ascii	"__sdidinit\000"
 3898      6964696E 
 3898      697400
 3899              	.LASF13:
 3900 0810 75696E74 		.ascii	"uint8_t\000"
 3900      385F7400 
 3901              	.LASF128:
 3902 0818 5F6C3634 		.ascii	"_l64a_buf\000"
 3902      615F6275 
 3902      6600
 3903              	.LASF59:
 3904 0822 5F6F6E5F 		.ascii	"_on_exit_args\000"
 3904      65786974 
 3904      5F617267 
 3904      7300
 3905              	.LASF106:
 3906 0830 5F736967 		.ascii	"_sig_func\000"
 3906      5F66756E 
 3906      6300
ARM GAS  /tmp/ccPSOZXt.s 			page 86


 3907              	.LASF145:
 3908 083a 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 3908      6972715F 
 3908      63726974 
 3908      6963616C 
 3908      5F736563 
 3909              	.LASF80:
 3910 085b 5F6E6275 		.ascii	"_nbuf\000"
 3910      6600
 3911              	.LASF139:
 3912 0861 5F756E75 		.ascii	"_unused\000"
 3912      73656400 
 3913              	.LASF58:
 3914 0869 5F5F746D 		.ascii	"__tm_isdst\000"
 3914      5F697364 
 3914      737400
 3915              	.LASF121:
 3916 0874 5F6C6F63 		.ascii	"_localtime_buf\000"
 3916      616C7469 
 3916      6D655F62 
 3916      756600
 3917              	.LASF178:
 3918 0883 75617274 		.ascii	"uart_disable\000"
 3918      5F646973 
 3918      61626C65 
 3918      00
 3919              	.LASF51:
 3920 0890 5F5F746D 		.ascii	"__tm_min\000"
 3920      5F6D696E 
 3920      00
 3921              	.LASF124:
 3922 0899 5F723438 		.ascii	"_r48\000"
 3922      00
 3923              	.LASF175:
 3924 089e 756C5F73 		.ascii	"ul_sources\000"
 3924      6F757263 
 3924      657300
 3925              	.LASF126:
 3926 08a9 5F6D6274 		.ascii	"_mbtowc_state\000"
 3926      6F77635F 
 3926      73746174 
 3926      6500
 3927              	.LASF100:
 3928 08b7 5F703573 		.ascii	"_p5s\000"
 3928      00
 3929              	.LASF22:
 3930 08bc 55415254 		.ascii	"UART_IER\000"
 3930      5F494552 
 3930      00
 3931              	.LASF25:
 3932 08c5 55415254 		.ascii	"UART_SR\000"
 3932      5F535200 
 3933              	.LASF53:
 3934 08cd 5F5F746D 		.ascii	"__tm_mday\000"
 3934      5F6D6461 
 3934      7900
 3935              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
ARM GAS  /tmp/ccPSOZXt.s 			page 87


