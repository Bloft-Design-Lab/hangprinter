ARM GAS  /tmp/ccsh7mrZ.s 			page 1


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
  12              		.file	"twihs.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.twihs_enable_master_mode,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	twihs_enable_master_mode
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	twihs_enable_master_mode, %function
  25              	twihs_enable_master_mode:
  26              	.LFB167:
  27              		.file 1 "../asf/sam/drivers/twihs/twihs.c"
   1:../asf/sam/drivers/twihs/twihs.c **** /**
   2:../asf/sam/drivers/twihs/twihs.c ****  * \file
   3:../asf/sam/drivers/twihs/twihs.c ****  *
   4:../asf/sam/drivers/twihs/twihs.c ****  * \brief Two-Wire Interface (TWIHS) driver for SAM.
   5:../asf/sam/drivers/twihs/twihs.c ****  *
   6:../asf/sam/drivers/twihs/twihs.c ****  * Copyright (c) 2013-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/twihs/twihs.c ****  *
   8:../asf/sam/drivers/twihs/twihs.c ****  * \asf_license_start
   9:../asf/sam/drivers/twihs/twihs.c ****  *
  10:../asf/sam/drivers/twihs/twihs.c ****  * \page License
  11:../asf/sam/drivers/twihs/twihs.c ****  *
  12:../asf/sam/drivers/twihs/twihs.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/twihs/twihs.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/twihs/twihs.c ****  *
  15:../asf/sam/drivers/twihs/twihs.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/twihs/twihs.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/twihs/twihs.c ****  *
  18:../asf/sam/drivers/twihs/twihs.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/twihs/twihs.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/twihs/twihs.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/twihs/twihs.c ****  *
  22:../asf/sam/drivers/twihs/twihs.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/twihs/twihs.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/twihs/twihs.c ****  *
  25:../asf/sam/drivers/twihs/twihs.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/twihs/twihs.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/twihs/twihs.c ****  *
  28:../asf/sam/drivers/twihs/twihs.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/twihs/twihs.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/twihs/twihs.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccsh7mrZ.s 			page 2


  31:../asf/sam/drivers/twihs/twihs.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/twihs/twihs.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/twihs/twihs.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/twihs/twihs.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/twihs/twihs.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/twihs/twihs.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/twihs/twihs.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/twihs/twihs.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/twihs/twihs.c ****  *
  40:../asf/sam/drivers/twihs/twihs.c ****  * \asf_license_stop
  41:../asf/sam/drivers/twihs/twihs.c ****  *
  42:../asf/sam/drivers/twihs/twihs.c ****  */
  43:../asf/sam/drivers/twihs/twihs.c **** /*
  44:../asf/sam/drivers/twihs/twihs.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/twihs/twihs.c ****  */
  46:../asf/sam/drivers/twihs/twihs.c **** 
  47:../asf/sam/drivers/twihs/twihs.c **** #include "twihs.h"
  48:../asf/sam/drivers/twihs/twihs.c **** 
  49:../asf/sam/drivers/twihs/twihs.c **** /// @cond 0
  50:../asf/sam/drivers/twihs/twihs.c **** /**INDENT-OFF**/
  51:../asf/sam/drivers/twihs/twihs.c **** #ifdef __cplusplus
  52:../asf/sam/drivers/twihs/twihs.c **** extern "C" {
  53:../asf/sam/drivers/twihs/twihs.c **** #endif
  54:../asf/sam/drivers/twihs/twihs.c **** /**INDENT-ON**/
  55:../asf/sam/drivers/twihs/twihs.c **** /// @endcond
  56:../asf/sam/drivers/twihs/twihs.c **** 
  57:../asf/sam/drivers/twihs/twihs.c **** /**
  58:../asf/sam/drivers/twihs/twihs.c ****  * \defgroup sam_drivers_twihs_group High-Speed Two-Wire Interface (TWIHS)
  59:../asf/sam/drivers/twihs/twihs.c ****  *
  60:../asf/sam/drivers/twihs/twihs.c ****  * Driver for the TWIHS (High-Speed Two-Wire Interface). This driver provides access to the main
  61:../asf/sam/drivers/twihs/twihs.c ****  * features of the TWIHS controller.
  62:../asf/sam/drivers/twihs/twihs.c ****  * The TWIHS interconnects components on a unique two-wire bus.
  63:../asf/sam/drivers/twihs/twihs.c ****  * The TWIHS is programmable as a master or a slave with sequential or single-byte access.
  64:../asf/sam/drivers/twihs/twihs.c ****  * Multiple master capability is supported.
  65:../asf/sam/drivers/twihs/twihs.c ****  * The High Speed of 3.4Mbits per second can be achieved in slave mode only.
  66:../asf/sam/drivers/twihs/twihs.c ****  *
  67:../asf/sam/drivers/twihs/twihs.c ****  * \par Usage
  68:../asf/sam/drivers/twihs/twihs.c ****  *
  69:../asf/sam/drivers/twihs/twihs.c ****  * -# Enable the TWIHS peripheral clock in the PMC.
  70:../asf/sam/drivers/twihs/twihs.c ****  * -# Enable the required TWIHS PIOs (see pio.h).
  71:../asf/sam/drivers/twihs/twihs.c ****  * -# Enable TWIHS master mode by calling twihs_enable_master_mode if it is a master on the I2C bus
  72:../asf/sam/drivers/twihs/twihs.c ****  * -# Configure the TWIHS in master mode by calling twihs_master_init.
  73:../asf/sam/drivers/twihs/twihs.c ****  * -# Send data to a slave device on the I2C bus by calling twihs_master_write.
  74:../asf/sam/drivers/twihs/twihs.c ****  * -# Receive data from a slave device on the I2C bus by calling the twihs_master_read.
  75:../asf/sam/drivers/twihs/twihs.c ****  * -# Enable TWIHS slave mode by calling twihs_enable_slave_mode if it is a slave on the I2C bus.
  76:../asf/sam/drivers/twihs/twihs.c ****  * -# Configure the TWIHS in slave mode by calling twihs_slave_init.
  77:../asf/sam/drivers/twihs/twihs.c ****  *
  78:../asf/sam/drivers/twihs/twihs.c ****  * @{
  79:../asf/sam/drivers/twihs/twihs.c ****  */
  80:../asf/sam/drivers/twihs/twihs.c **** 
  81:../asf/sam/drivers/twihs/twihs.c **** /* Low level time limit of I2C Fast Mode. */
  82:../asf/sam/drivers/twihs/twihs.c **** #define LOW_LEVEL_TIME_LIMIT   384000
  83:../asf/sam/drivers/twihs/twihs.c **** #define I2C_FAST_MODE_SPEED    400000
  84:../asf/sam/drivers/twihs/twihs.c **** #define TWIHS_CLK_DIVIDER      2
  85:../asf/sam/drivers/twihs/twihs.c **** #define TWIHS_CLK_CALC_ARGU    3
  86:../asf/sam/drivers/twihs/twihs.c **** #define TWIHS_CLK_DIV_MAX      0xFF
  87:../asf/sam/drivers/twihs/twihs.c **** #define TWIHS_CLK_DIV_MIN      7
ARM GAS  /tmp/ccsh7mrZ.s 			page 3


  88:../asf/sam/drivers/twihs/twihs.c **** 
  89:../asf/sam/drivers/twihs/twihs.c **** /**
  90:../asf/sam/drivers/twihs/twihs.c ****  * \brief Enable TWIHS master mode.
  91:../asf/sam/drivers/twihs/twihs.c ****  *
  92:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
  93:../asf/sam/drivers/twihs/twihs.c ****  */
  94:../asf/sam/drivers/twihs/twihs.c **** void twihs_enable_master_mode(Twihs *p_twihs)
  95:../asf/sam/drivers/twihs/twihs.c **** {
  28              		.loc 1 95 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
  96:../asf/sam/drivers/twihs/twihs.c **** 	/* Set Master Disable bit and Slave Disable bit */
  97:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_MSDIS;
  34              		.loc 1 97 0
  35 0000 0821     		movs	r1, #8
  98:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_SVDIS;
  36              		.loc 1 98 0
  37 0002 2022     		movs	r2, #32
  99:../asf/sam/drivers/twihs/twihs.c **** 
 100:../asf/sam/drivers/twihs/twihs.c **** 	/* Set Master Enable bit */
 101:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_MSEN;
  38              		.loc 1 101 0
  39 0004 0423     		movs	r3, #4
  97:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_SVDIS;
  40              		.loc 1 97 0
  41 0006 0160     		str	r1, [r0]
  98:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_SVDIS;
  42              		.loc 1 98 0
  43 0008 0260     		str	r2, [r0]
  44              		.loc 1 101 0
  45 000a 0360     		str	r3, [r0]
  46 000c 7047     		bx	lr
  47              		.cfi_endproc
  48              	.LFE167:
  49              		.size	twihs_enable_master_mode, .-twihs_enable_master_mode
  50 000e 00BF     		.section	.text.twihs_disable_master_mode,"ax",%progbits
  51              		.align	1
  52              		.p2align 2,,3
  53              		.global	twihs_disable_master_mode
  54              		.syntax unified
  55              		.thumb
  56              		.thumb_func
  57              		.fpu fpv5-d16
  58              		.type	twihs_disable_master_mode, %function
  59              	twihs_disable_master_mode:
  60              	.LFB168:
 102:../asf/sam/drivers/twihs/twihs.c **** }
 103:../asf/sam/drivers/twihs/twihs.c **** 
 104:../asf/sam/drivers/twihs/twihs.c **** /**
 105:../asf/sam/drivers/twihs/twihs.c ****  * \brief Disable TWIHS master mode.
 106:../asf/sam/drivers/twihs/twihs.c ****  *
 107:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 108:../asf/sam/drivers/twihs/twihs.c ****  */
 109:../asf/sam/drivers/twihs/twihs.c **** void twihs_disable_master_mode(Twihs *p_twihs)
ARM GAS  /tmp/ccsh7mrZ.s 			page 4


 110:../asf/sam/drivers/twihs/twihs.c **** {
  61              		.loc 1 110 0
  62              		.cfi_startproc
  63              		@ args = 0, pretend = 0, frame = 0
  64              		@ frame_needed = 0, uses_anonymous_args = 0
  65              		@ link register save eliminated.
  66              	.LVL1:
 111:../asf/sam/drivers/twihs/twihs.c **** 	/* Set Master Disable bit */
 112:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_MSDIS;
  67              		.loc 1 112 0
  68 0000 0823     		movs	r3, #8
  69 0002 0360     		str	r3, [r0]
  70 0004 7047     		bx	lr
  71              		.cfi_endproc
  72              	.LFE168:
  73              		.size	twihs_disable_master_mode, .-twihs_disable_master_mode
  74 0006 00BF     		.section	.text.twihs_set_speed,"ax",%progbits
  75              		.align	1
  76              		.p2align 2,,3
  77              		.global	twihs_set_speed
  78              		.syntax unified
  79              		.thumb
  80              		.thumb_func
  81              		.fpu fpv5-d16
  82              		.type	twihs_set_speed, %function
  83              	twihs_set_speed:
  84              	.LFB170:
 113:../asf/sam/drivers/twihs/twihs.c **** }
 114:../asf/sam/drivers/twihs/twihs.c **** 
 115:../asf/sam/drivers/twihs/twihs.c **** /**
 116:../asf/sam/drivers/twihs/twihs.c ****  * \brief Initialize TWIHS master mode.
 117:../asf/sam/drivers/twihs/twihs.c ****  *
 118:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 119:../asf/sam/drivers/twihs/twihs.c ****  * \param p_opt Options for initializing the TWIHS module (see \ref twihs_options_t).
 120:../asf/sam/drivers/twihs/twihs.c ****  *
 121:../asf/sam/drivers/twihs/twihs.c ****  * \return TWIHS_SUCCESS if initialization is complete, error code otherwise.
 122:../asf/sam/drivers/twihs/twihs.c ****  */
 123:../asf/sam/drivers/twihs/twihs.c **** uint32_t twihs_master_init(Twihs *p_twihs, const twihs_options_t *p_opt)
 124:../asf/sam/drivers/twihs/twihs.c **** {
 125:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t status = TWIHS_SUCCESS;
 126:../asf/sam/drivers/twihs/twihs.c **** 
 127:../asf/sam/drivers/twihs/twihs.c **** 	/* Disable TWIHS interrupts */
 128:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_IDR = ~0UL;
 129:../asf/sam/drivers/twihs/twihs.c **** 
 130:../asf/sam/drivers/twihs/twihs.c **** 	/* Dummy read in status register */
 131:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_SR;
 132:../asf/sam/drivers/twihs/twihs.c **** 
 133:../asf/sam/drivers/twihs/twihs.c **** 	/* Reset TWIHS peripheral */
 134:../asf/sam/drivers/twihs/twihs.c **** 	twihs_reset(p_twihs);
 135:../asf/sam/drivers/twihs/twihs.c **** 
 136:../asf/sam/drivers/twihs/twihs.c **** 	twihs_enable_master_mode(p_twihs);
 137:../asf/sam/drivers/twihs/twihs.c **** 
 138:../asf/sam/drivers/twihs/twihs.c **** 	/* Select the speed */
 139:../asf/sam/drivers/twihs/twihs.c **** 	if (twihs_set_speed(p_twihs, p_opt->speed, p_opt->master_clk) == FAIL) {
 140:../asf/sam/drivers/twihs/twihs.c **** 		/* The desired speed setting is rejected */
 141:../asf/sam/drivers/twihs/twihs.c **** 		status = TWIHS_INVALID_ARGUMENT;
 142:../asf/sam/drivers/twihs/twihs.c **** 	}
ARM GAS  /tmp/ccsh7mrZ.s 			page 5


 143:../asf/sam/drivers/twihs/twihs.c **** 
 144:../asf/sam/drivers/twihs/twihs.c **** 	return status;
 145:../asf/sam/drivers/twihs/twihs.c **** }
 146:../asf/sam/drivers/twihs/twihs.c **** 
 147:../asf/sam/drivers/twihs/twihs.c **** /**
 148:../asf/sam/drivers/twihs/twihs.c ****  * \brief Set the I2C bus speed in conjunction with the clock frequency.
 149:../asf/sam/drivers/twihs/twihs.c ****  *
 150:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 151:../asf/sam/drivers/twihs/twihs.c ****  * \param ul_speed The desired I2C bus speed (in Hz).
 152:../asf/sam/drivers/twihs/twihs.c ****  * \param ul_mck Main clock of the device (in Hz).
 153:../asf/sam/drivers/twihs/twihs.c ****  *
 154:../asf/sam/drivers/twihs/twihs.c ****  * \retval PASS New speed setting is accepted.
 155:../asf/sam/drivers/twihs/twihs.c ****  * \retval FAIL New speed setting is rejected.
 156:../asf/sam/drivers/twihs/twihs.c ****  */
 157:../asf/sam/drivers/twihs/twihs.c **** uint32_t twihs_set_speed(Twihs *p_twihs, uint32_t ul_speed, uint32_t ul_mck)
 158:../asf/sam/drivers/twihs/twihs.c **** {
  85              		.loc 1 158 0
  86              		.cfi_startproc
  87              		@ args = 0, pretend = 0, frame = 0
  88              		@ frame_needed = 0, uses_anonymous_args = 0
  89              		@ link register save eliminated.
  90              	.LVL2:
 159:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t ckdiv = 0;
 160:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t c_lh_div;
 161:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t cldiv, chdiv;
 162:../asf/sam/drivers/twihs/twihs.c **** 
 163:../asf/sam/drivers/twihs/twihs.c **** 	/* High-Speed can be only used in slave mode, 400k is the max speed allowed for master */
 164:../asf/sam/drivers/twihs/twihs.c **** 	if (ul_speed > I2C_FAST_MODE_SPEED) {
  91              		.loc 1 164 0
  92 0000 2C4B     		ldr	r3, .L42
  93 0002 9942     		cmp	r1, r3
 158:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t ckdiv = 0;
  94              		.loc 1 158 0
  95 0004 30B4     		push	{r4, r5}
  96              		.cfi_def_cfa_offset 8
  97              		.cfi_offset 4, -8
  98              		.cfi_offset 5, -4
  99              		.loc 1 164 0
 100 0006 4DD8     		bhi	.L15
 165:../asf/sam/drivers/twihs/twihs.c **** 		return FAIL;
 166:../asf/sam/drivers/twihs/twihs.c **** 	}
 167:../asf/sam/drivers/twihs/twihs.c **** 
 168:../asf/sam/drivers/twihs/twihs.c **** 	/* Low level time not less than 1.3us of I2C Fast Mode. */
 169:../asf/sam/drivers/twihs/twihs.c **** 	if (ul_speed > LOW_LEVEL_TIME_LIMIT) {
 101              		.loc 1 169 0
 102 0008 A3F57A53 		sub	r3, r3, #16000
 103 000c 9942     		cmp	r1, r3
 104 000e 2ED9     		bls	.L5
 105              	.LVL3:
 106              	.LBB18:
 107              	.LBB19:
 170:../asf/sam/drivers/twihs/twihs.c **** 		/* Low level of time fixed for 1.3us. */
 171:../asf/sam/drivers/twihs/twihs.c **** 		cldiv = ul_mck / (LOW_LEVEL_TIME_LIMIT * TWIHS_CLK_DIVIDER) - TWIHS_CLK_CALC_ARGU;
 172:../asf/sam/drivers/twihs/twihs.c **** 		chdiv = ul_mck / ((ul_speed + (ul_speed - LOW_LEVEL_TIME_LIMIT)) * TWIHS_CLK_DIVIDER) - TWIHS_CLK
 108              		.loc 1 172 0
 109 0010 294B     		ldr	r3, .L42+4
 171:../asf/sam/drivers/twihs/twihs.c **** 		chdiv = ul_mck / ((ul_speed + (ul_speed - LOW_LEVEL_TIME_LIMIT)) * TWIHS_CLK_DIVIDER) - TWIHS_CLK
ARM GAS  /tmp/ccsh7mrZ.s 			page 6


 110              		.loc 1 171 0
 111 0012 2A4C     		ldr	r4, .L42+8
 112              		.loc 1 172 0
 113 0014 0B44     		add	r3, r3, r1
 171:../asf/sam/drivers/twihs/twihs.c **** 		chdiv = ul_mck / ((ul_speed + (ul_speed - LOW_LEVEL_TIME_LIMIT)) * TWIHS_CLK_DIVIDER) - TWIHS_CLK
 114              		.loc 1 171 0
 115 0016 A4FB0214 		umull	r1, r4, r4, r2
 116              	.LVL4:
 117              		.loc 1 172 0
 118 001a 9B00     		lsls	r3, r3, #2
 171:../asf/sam/drivers/twihs/twihs.c **** 		chdiv = ul_mck / ((ul_speed + (ul_speed - LOW_LEVEL_TIME_LIMIT)) * TWIHS_CLK_DIVIDER) - TWIHS_CLK
 119              		.loc 1 171 0
 120 001c A40B     		lsrs	r4, r4, #14
 121              		.loc 1 172 0
 122 001e B2FBF3F2 		udiv	r2, r2, r3
 123              	.LVL5:
 171:../asf/sam/drivers/twihs/twihs.c **** 		chdiv = ul_mck / ((ul_speed + (ul_speed - LOW_LEVEL_TIME_LIMIT)) * TWIHS_CLK_DIVIDER) - TWIHS_CLK
 124              		.loc 1 171 0
 125 0022 033C     		subs	r4, r4, #3
 126              	.LVL6:
 127              		.loc 1 172 0
 128 0024 033A     		subs	r2, r2, #3
 129              	.LVL7:
 173:../asf/sam/drivers/twihs/twihs.c **** 		
 174:../asf/sam/drivers/twihs/twihs.c **** 		/* cldiv must fit in 8 bits, ckdiv must fit in 3 bits */
 175:../asf/sam/drivers/twihs/twihs.c **** 		while ((cldiv > TWIHS_CLK_DIV_MAX) && (ckdiv < TWIHS_CLK_DIV_MIN)) {
 130              		.loc 1 175 0
 131 0026 FF2C     		cmp	r4, #255
 132 0028 40D9     		bls	.L16
 133 002a 0021     		movs	r1, #0
 134 002c 00E0     		b	.L7
 135              	.LVL8:
 136              	.L39:
 137 002e 3BB1     		cbz	r3, .L6
 138              	.LVL9:
 139              	.L7:
 176:../asf/sam/drivers/twihs/twihs.c **** 			/* Increase clock divider */
 177:../asf/sam/drivers/twihs/twihs.c **** 			ckdiv++;
 140              		.loc 1 177 0
 141 0030 0131     		adds	r1, r1, #1
 142              	.LVL10:
 178:../asf/sam/drivers/twihs/twihs.c **** 			/* Divide cldiv value */
 179:../asf/sam/drivers/twihs/twihs.c **** 			cldiv /= TWIHS_CLK_DIVIDER;
 143              		.loc 1 179 0
 144 0032 6408     		lsrs	r4, r4, #1
 145              	.LVL11:
 175:../asf/sam/drivers/twihs/twihs.c **** 			/* Increase clock divider */
 146              		.loc 1 175 0
 147 0034 0629     		cmp	r1, #6
 148 0036 8CBF     		ite	hi
 149 0038 0023     		movhi	r3, #0
 150 003a 0123     		movls	r3, #1
 151 003c FF2C     		cmp	r4, #255
 152 003e F6D8     		bhi	.L39
 153              	.LVL12:
 154              	.L6:
 180:../asf/sam/drivers/twihs/twihs.c **** 		}
ARM GAS  /tmp/ccsh7mrZ.s 			page 7


 181:../asf/sam/drivers/twihs/twihs.c **** 		/* chdiv must fit in 8 bits, ckdiv must fit in 3 bits */
 182:../asf/sam/drivers/twihs/twihs.c **** 		while ((chdiv > TWIHS_CLK_DIV_MAX) && (ckdiv < TWIHS_CLK_DIV_MIN)) {
 155              		.loc 1 182 0
 156 0040 FF2A     		cmp	r2, #255
 157 0042 07D9     		bls	.L9
 158 0044 13B9     		cbnz	r3, .L10
 159 0046 05E0     		b	.L9
 160              	.L40:
 161 0048 0629     		cmp	r1, #6
 162 004a 03D8     		bhi	.L9
 163              	.L10:
 183:../asf/sam/drivers/twihs/twihs.c **** 			/* Increase clock divider */
 184:../asf/sam/drivers/twihs/twihs.c **** 			ckdiv++;
 185:../asf/sam/drivers/twihs/twihs.c **** 			/* Divide cldiv value */
 186:../asf/sam/drivers/twihs/twihs.c **** 			chdiv /= TWIHS_CLK_DIVIDER;
 164              		.loc 1 186 0
 165 004c 5208     		lsrs	r2, r2, #1
 166              	.LVL13:
 184:../asf/sam/drivers/twihs/twihs.c **** 			/* Divide cldiv value */
 167              		.loc 1 184 0
 168 004e 0131     		adds	r1, r1, #1
 169              	.LVL14:
 182:../asf/sam/drivers/twihs/twihs.c **** 			/* Increase clock divider */
 170              		.loc 1 182 0
 171 0050 FF2A     		cmp	r2, #255
 172 0052 F9D8     		bhi	.L40
 173              	.L9:
 187:../asf/sam/drivers/twihs/twihs.c **** 		}
 188:../asf/sam/drivers/twihs/twihs.c **** 
 189:../asf/sam/drivers/twihs/twihs.c **** 		/* set clock waveform generator register */
 190:../asf/sam/drivers/twihs/twihs.c **** 		p_twihs->TWIHS_CWGR =
 191:../asf/sam/drivers/twihs/twihs.c **** 				TWIHS_CWGR_CLDIV(cldiv) | TWIHS_CWGR_CHDIV(chdiv) |
 174              		.loc 1 191 0
 175 0054 1302     		lsls	r3, r2, #8
 190:../asf/sam/drivers/twihs/twihs.c **** 				TWIHS_CWGR_CLDIV(cldiv) | TWIHS_CWGR_CHDIV(chdiv) |
 176              		.loc 1 190 0
 177 0056 0025     		movs	r5, #0
 192:../asf/sam/drivers/twihs/twihs.c **** 				TWIHS_CWGR_CKDIV(ckdiv);
 178              		.loc 1 192 0
 179 0058 0904     		lsls	r1, r1, #16
 180              	.LVL15:
 191:../asf/sam/drivers/twihs/twihs.c **** 				TWIHS_CWGR_CKDIV(ckdiv);
 181              		.loc 1 191 0
 182 005a 9BB2     		uxth	r3, r3
 183              		.loc 1 192 0
 184 005c 01F4E021 		and	r1, r1, #458752
 191:../asf/sam/drivers/twihs/twihs.c **** 				TWIHS_CWGR_CKDIV(ckdiv);
 185              		.loc 1 191 0
 186 0060 E4B2     		uxtb	r4, r4
 187              	.LVL16:
 188 0062 0B43     		orrs	r3, r3, r1
 189 0064 2343     		orrs	r3, r3, r4
 190:../asf/sam/drivers/twihs/twihs.c **** 				TWIHS_CWGR_CLDIV(cldiv) | TWIHS_CWGR_CHDIV(chdiv) |
 190              		.loc 1 190 0
 191 0066 0361     		str	r3, [r0, #16]
 192              	.LVL17:
 193              	.LBE19:
ARM GAS  /tmp/ccsh7mrZ.s 			page 8


 194              	.LBE18:
 193:../asf/sam/drivers/twihs/twihs.c **** 	} else {
 194:../asf/sam/drivers/twihs/twihs.c **** 		c_lh_div = ul_mck / (ul_speed * TWIHS_CLK_DIVIDER) - TWIHS_CLK_CALC_ARGU;
 195:../asf/sam/drivers/twihs/twihs.c **** 
 196:../asf/sam/drivers/twihs/twihs.c **** 		/* cldiv must fit in 8 bits, ckdiv must fit in 3 bits */
 197:../asf/sam/drivers/twihs/twihs.c **** 		while ((c_lh_div > TWIHS_CLK_DIV_MAX) && (ckdiv < TWIHS_CLK_DIV_MIN)) {
 198:../asf/sam/drivers/twihs/twihs.c **** 			/* Increase clock divider */
 199:../asf/sam/drivers/twihs/twihs.c **** 			ckdiv++;
 200:../asf/sam/drivers/twihs/twihs.c **** 			/* Divide cldiv value */
 201:../asf/sam/drivers/twihs/twihs.c **** 			c_lh_div /= TWIHS_CLK_DIVIDER;
 202:../asf/sam/drivers/twihs/twihs.c **** 		}
 203:../asf/sam/drivers/twihs/twihs.c **** 
 204:../asf/sam/drivers/twihs/twihs.c **** 		/* set clock waveform generator register */
 205:../asf/sam/drivers/twihs/twihs.c **** 		p_twihs->TWIHS_CWGR =
 206:../asf/sam/drivers/twihs/twihs.c **** 				TWIHS_CWGR_CLDIV(c_lh_div) | TWIHS_CWGR_CHDIV(c_lh_div) |
 207:../asf/sam/drivers/twihs/twihs.c **** 				TWIHS_CWGR_CKDIV(ckdiv);
 208:../asf/sam/drivers/twihs/twihs.c **** 	}
 209:../asf/sam/drivers/twihs/twihs.c **** 
 210:../asf/sam/drivers/twihs/twihs.c **** 	return PASS;
 211:../asf/sam/drivers/twihs/twihs.c **** }
 195              		.loc 1 211 0
 196 0068 2846     		mov	r0, r5
 197              	.LVL18:
 198 006a 30BC     		pop	{r4, r5}
 199              		.cfi_remember_state
 200              		.cfi_restore 5
 201              		.cfi_restore 4
 202              		.cfi_def_cfa_offset 0
 203 006c 7047     		bx	lr
 204              	.LVL19:
 205              	.L5:
 206              		.cfi_restore_state
 194:../asf/sam/drivers/twihs/twihs.c **** 
 207              		.loc 1 194 0
 208 006e 4900     		lsls	r1, r1, #1
 209              	.LVL20:
 197:../asf/sam/drivers/twihs/twihs.c **** 			/* Increase clock divider */
 210              		.loc 1 197 0
 211 0070 0023     		movs	r3, #0
 194:../asf/sam/drivers/twihs/twihs.c **** 
 212              		.loc 1 194 0
 213 0072 B2FBF1F2 		udiv	r2, r2, r1
 214              	.LVL21:
 215 0076 033A     		subs	r2, r2, #3
 216              	.LVL22:
 197:../asf/sam/drivers/twihs/twihs.c **** 			/* Increase clock divider */
 217              		.loc 1 197 0
 218 0078 FF2A     		cmp	r2, #255
 219 007a 02D8     		bhi	.L13
 220 007c 08E0     		b	.L12
 221              	.LVL23:
 222              	.L41:
 223 007e 062B     		cmp	r3, #6
 224 0080 03D8     		bhi	.L18
 225              	.LVL24:
 226              	.L13:
 201:../asf/sam/drivers/twihs/twihs.c **** 		}
ARM GAS  /tmp/ccsh7mrZ.s 			page 9


 227              		.loc 1 201 0
 228 0082 5208     		lsrs	r2, r2, #1
 229              	.LVL25:
 199:../asf/sam/drivers/twihs/twihs.c **** 			/* Divide cldiv value */
 230              		.loc 1 199 0
 231 0084 0133     		adds	r3, r3, #1
 232              	.LVL26:
 197:../asf/sam/drivers/twihs/twihs.c **** 			/* Increase clock divider */
 233              		.loc 1 197 0
 234 0086 FF2A     		cmp	r2, #255
 235 0088 F9D8     		bhi	.L41
 236              	.L18:
 237 008a 1B04     		lsls	r3, r3, #16
 238              	.LVL27:
 239 008c 03F4E023 		and	r3, r3, #458752
 240              	.L12:
 206:../asf/sam/drivers/twihs/twihs.c **** 				TWIHS_CWGR_CKDIV(ckdiv);
 241              		.loc 1 206 0
 242 0090 1102     		lsls	r1, r2, #8
 210:../asf/sam/drivers/twihs/twihs.c **** }
 243              		.loc 1 210 0
 244 0092 0025     		movs	r5, #0
 206:../asf/sam/drivers/twihs/twihs.c **** 				TWIHS_CWGR_CKDIV(ckdiv);
 245              		.loc 1 206 0
 246 0094 D2B2     		uxtb	r2, r2
 247              	.LVL28:
 248 0096 89B2     		uxth	r1, r1
 249 0098 1A43     		orrs	r2, r2, r3
 250 009a 0A43     		orrs	r2, r2, r1
 205:../asf/sam/drivers/twihs/twihs.c **** 				TWIHS_CWGR_CLDIV(c_lh_div) | TWIHS_CWGR_CHDIV(c_lh_div) |
 251              		.loc 1 205 0
 252 009c 0261     		str	r2, [r0, #16]
 253              		.loc 1 211 0
 254 009e 2846     		mov	r0, r5
 255              	.LVL29:
 256 00a0 30BC     		pop	{r4, r5}
 257              		.cfi_remember_state
 258              		.cfi_restore 4
 259              		.cfi_restore 5
 260              		.cfi_def_cfa_offset 0
 261 00a2 7047     		bx	lr
 262              	.LVL30:
 263              	.L15:
 264              		.cfi_restore_state
 165:../asf/sam/drivers/twihs/twihs.c **** 	}
 265              		.loc 1 165 0
 266 00a4 0125     		movs	r5, #1
 267              		.loc 1 211 0
 268 00a6 2846     		mov	r0, r5
 269              	.LVL31:
 270 00a8 30BC     		pop	{r4, r5}
 271              		.cfi_remember_state
 272              		.cfi_restore 4
 273              		.cfi_restore 5
 274              		.cfi_def_cfa_offset 0
 275 00aa 7047     		bx	lr
 276              	.LVL32:
ARM GAS  /tmp/ccsh7mrZ.s 			page 10


 277              	.L16:
 278              		.cfi_restore_state
 279              	.LBB21:
 280              	.LBB20:
 175:../asf/sam/drivers/twihs/twihs.c **** 			/* Increase clock divider */
 281              		.loc 1 175 0
 282 00ac 0123     		movs	r3, #1
 159:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t c_lh_div;
 283              		.loc 1 159 0
 284 00ae 0021     		movs	r1, #0
 285 00b0 C6E7     		b	.L6
 286              	.L43:
 287 00b2 00BF     		.align	2
 288              	.L42:
 289 00b4 801A0600 		.word	400000
 290 00b8 0012FD3F 		.word	1073549824
 291 00bc F1197605 		.word	91625969
 292              	.LBE20:
 293              	.LBE21:
 294              		.cfi_endproc
 295              	.LFE170:
 296              		.size	twihs_set_speed, .-twihs_set_speed
 297              		.section	.text.twihs_master_init,"ax",%progbits
 298              		.align	1
 299              		.p2align 2,,3
 300              		.global	twihs_master_init
 301              		.syntax unified
 302              		.thumb
 303              		.thumb_func
 304              		.fpu fpv5-d16
 305              		.type	twihs_master_init, %function
 306              	twihs_master_init:
 307              	.LFB169:
 124:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t status = TWIHS_SUCCESS;
 308              		.loc 1 124 0
 309              		.cfi_startproc
 310              		@ args = 0, pretend = 0, frame = 0
 311              		@ frame_needed = 0, uses_anonymous_args = 0
 312              	.LVL33:
 313 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 314              		.cfi_def_cfa_offset 24
 315              		.cfi_offset 3, -24
 316              		.cfi_offset 4, -20
 317              		.cfi_offset 5, -16
 318              		.cfi_offset 6, -12
 319              		.cfi_offset 7, -8
 320              		.cfi_offset 14, -4
 321              	.LBB22:
 322              	.LBB23:
 212:../asf/sam/drivers/twihs/twihs.c **** 
 213:../asf/sam/drivers/twihs/twihs.c **** /**
 214:../asf/sam/drivers/twihs/twihs.c ****  * \brief Test if a chip answers a given I2C address.
 215:../asf/sam/drivers/twihs/twihs.c ****  *
 216:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 217:../asf/sam/drivers/twihs/twihs.c ****  * \param uc_slave_addr Address of the remote chip to search for.
 218:../asf/sam/drivers/twihs/twihs.c ****  *
 219:../asf/sam/drivers/twihs/twihs.c ****  * \return TWIHS_SUCCESS if a chip was found, error code otherwise.
ARM GAS  /tmp/ccsh7mrZ.s 			page 11


 220:../asf/sam/drivers/twihs/twihs.c ****  */
 221:../asf/sam/drivers/twihs/twihs.c **** uint32_t twihs_probe(Twihs *p_twihs, uint8_t uc_slave_addr)
 222:../asf/sam/drivers/twihs/twihs.c **** {
 223:../asf/sam/drivers/twihs/twihs.c **** 	twihs_packet_t packet;
 224:../asf/sam/drivers/twihs/twihs.c **** 	uint8_t data = 0;
 225:../asf/sam/drivers/twihs/twihs.c **** 
 226:../asf/sam/drivers/twihs/twihs.c **** 	/* Data to send */
 227:../asf/sam/drivers/twihs/twihs.c **** 	packet.buffer = &data;
 228:../asf/sam/drivers/twihs/twihs.c **** 	/* Data length */
 229:../asf/sam/drivers/twihs/twihs.c **** 	packet.length = 1;
 230:../asf/sam/drivers/twihs/twihs.c **** 	/* Slave chip address */
 231:../asf/sam/drivers/twihs/twihs.c **** 	packet.chip = (uint32_t) uc_slave_addr;
 232:../asf/sam/drivers/twihs/twihs.c **** 	/* Internal chip address */
 233:../asf/sam/drivers/twihs/twihs.c **** 	packet.addr[0] = 0;
 234:../asf/sam/drivers/twihs/twihs.c **** 	/* Address length */
 235:../asf/sam/drivers/twihs/twihs.c **** 	packet.addr_length = 0;
 236:../asf/sam/drivers/twihs/twihs.c **** 
 237:../asf/sam/drivers/twihs/twihs.c **** 	/* Perform a master write access */
 238:../asf/sam/drivers/twihs/twihs.c **** 	return (twihs_master_write(p_twihs, &packet));
 239:../asf/sam/drivers/twihs/twihs.c **** }
 240:../asf/sam/drivers/twihs/twihs.c **** 
 241:../asf/sam/drivers/twihs/twihs.c **** 
 242:../asf/sam/drivers/twihs/twihs.c **** /**
 243:../asf/sam/drivers/twihs/twihs.c ****  * \internal
 244:../asf/sam/drivers/twihs/twihs.c ****  * \brief Construct the TWIHS module address register field
 245:../asf/sam/drivers/twihs/twihs.c ****  *
 246:../asf/sam/drivers/twihs/twihs.c ****  * The TWIHS module address register is sent out MSB first. And the size controls
 247:../asf/sam/drivers/twihs/twihs.c ****  * which byte is the MSB to start with.
 248:../asf/sam/drivers/twihs/twihs.c ****  *
 249:../asf/sam/drivers/twihs/twihs.c ****  * Please see the device datasheet for details on this.
 250:../asf/sam/drivers/twihs/twihs.c ****  */
 251:../asf/sam/drivers/twihs/twihs.c **** static uint32_t twihs_mk_addr(const uint8_t *addr, int len)
 252:../asf/sam/drivers/twihs/twihs.c **** {
 253:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t val;
 254:../asf/sam/drivers/twihs/twihs.c **** 
 255:../asf/sam/drivers/twihs/twihs.c **** 	if (len == 0)
 256:../asf/sam/drivers/twihs/twihs.c **** 		return 0;
 257:../asf/sam/drivers/twihs/twihs.c **** 
 258:../asf/sam/drivers/twihs/twihs.c **** 	val = addr[0];
 259:../asf/sam/drivers/twihs/twihs.c **** 	if (len > 1) {
 260:../asf/sam/drivers/twihs/twihs.c **** 		val <<= 8;
 261:../asf/sam/drivers/twihs/twihs.c **** 		val |= addr[1];
 262:../asf/sam/drivers/twihs/twihs.c **** 	}
 263:../asf/sam/drivers/twihs/twihs.c **** 	if (len > 2) {
 264:../asf/sam/drivers/twihs/twihs.c **** 		val <<= 8;
 265:../asf/sam/drivers/twihs/twihs.c **** 		val |= addr[2];
 266:../asf/sam/drivers/twihs/twihs.c **** 	}
 267:../asf/sam/drivers/twihs/twihs.c **** 	return val;
 268:../asf/sam/drivers/twihs/twihs.c **** }
 269:../asf/sam/drivers/twihs/twihs.c **** 
 270:../asf/sam/drivers/twihs/twihs.c **** /**
 271:../asf/sam/drivers/twihs/twihs.c ****  * \brief Read multiple bytes from a TWIHS compatible slave device.
 272:../asf/sam/drivers/twihs/twihs.c ****  *
 273:../asf/sam/drivers/twihs/twihs.c ****  * \note This function will NOT return until all data has been read or error occurs.
 274:../asf/sam/drivers/twihs/twihs.c ****  *
 275:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 276:../asf/sam/drivers/twihs/twihs.c ****  * \param p_packet Packet information and data (see \ref twihs_packet_t).
ARM GAS  /tmp/ccsh7mrZ.s 			page 12


 277:../asf/sam/drivers/twihs/twihs.c ****  *
 278:../asf/sam/drivers/twihs/twihs.c ****  * \return TWIHS_SUCCESS if all bytes were read, error code otherwise.
 279:../asf/sam/drivers/twihs/twihs.c ****  */
 280:../asf/sam/drivers/twihs/twihs.c **** uint32_t twihs_master_read(Twihs *p_twihs, twihs_packet_t *p_packet)
 281:../asf/sam/drivers/twihs/twihs.c **** {
 282:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t status, cnt = p_packet->length;
 283:../asf/sam/drivers/twihs/twihs.c **** 	uint8_t *buffer = p_packet->buffer;
 284:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t timeout = TWIHS_TIMEOUT;
 285:../asf/sam/drivers/twihs/twihs.c **** 
 286:../asf/sam/drivers/twihs/twihs.c **** 	/* Check argument */
 287:../asf/sam/drivers/twihs/twihs.c **** 	if (cnt == 0) {
 288:../asf/sam/drivers/twihs/twihs.c **** 		return TWIHS_INVALID_ARGUMENT;
 289:../asf/sam/drivers/twihs/twihs.c **** 	}
 290:../asf/sam/drivers/twihs/twihs.c **** 
 291:../asf/sam/drivers/twihs/twihs.c **** 	/* Set read mode, slave address and 3 internal address byte lengths */
 292:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_MMR = 0;
 293:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_MMR = TWIHS_MMR_MREAD | TWIHS_MMR_DADR(p_packet->chip) |
 294:../asf/sam/drivers/twihs/twihs.c **** 			((p_packet->addr_length << TWIHS_MMR_IADRSZ_Pos) &
 295:../asf/sam/drivers/twihs/twihs.c **** 			TWIHS_MMR_IADRSZ_Msk);
 296:../asf/sam/drivers/twihs/twihs.c **** 
 297:../asf/sam/drivers/twihs/twihs.c **** 	/* Set internal address for remote chip */
 298:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_IADR = 0;
 299:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_IADR = twihs_mk_addr(p_packet->addr, p_packet->addr_length);
 300:../asf/sam/drivers/twihs/twihs.c **** 
 301:../asf/sam/drivers/twihs/twihs.c **** 	/* Send a START Condition */
 302:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_START;
 303:../asf/sam/drivers/twihs/twihs.c **** 
 304:../asf/sam/drivers/twihs/twihs.c **** 	while (cnt > 0) {
 305:../asf/sam/drivers/twihs/twihs.c **** 		status = p_twihs->TWIHS_SR;
 306:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_NACK) {
 307:../asf/sam/drivers/twihs/twihs.c **** 			return TWIHS_RECEIVE_NACK;
 308:../asf/sam/drivers/twihs/twihs.c **** 		}
 309:../asf/sam/drivers/twihs/twihs.c **** 		if (!timeout--) {
 310:../asf/sam/drivers/twihs/twihs.c **** 			return TWIHS_ERROR_TIMEOUT;
 311:../asf/sam/drivers/twihs/twihs.c **** 		}
 312:../asf/sam/drivers/twihs/twihs.c **** 		/* Last byte ? */
 313:../asf/sam/drivers/twihs/twihs.c **** 		if (cnt == 1) {
 314:../asf/sam/drivers/twihs/twihs.c **** 			p_twihs->TWIHS_CR = TWIHS_CR_STOP;
 315:../asf/sam/drivers/twihs/twihs.c **** 		}
 316:../asf/sam/drivers/twihs/twihs.c **** 
 317:../asf/sam/drivers/twihs/twihs.c **** 		if (!(status & TWIHS_SR_RXRDY)) {
 318:../asf/sam/drivers/twihs/twihs.c **** 			continue;
 319:../asf/sam/drivers/twihs/twihs.c **** 		}
 320:../asf/sam/drivers/twihs/twihs.c **** 		*buffer++ = p_twihs->TWIHS_RHR;
 321:../asf/sam/drivers/twihs/twihs.c **** 
 322:../asf/sam/drivers/twihs/twihs.c **** 		cnt--;
 323:../asf/sam/drivers/twihs/twihs.c **** 		timeout = TWIHS_TIMEOUT;
 324:../asf/sam/drivers/twihs/twihs.c **** 	}
 325:../asf/sam/drivers/twihs/twihs.c **** 
 326:../asf/sam/drivers/twihs/twihs.c **** 	while (!(p_twihs->TWIHS_SR & TWIHS_SR_TXCOMP)) {
 327:../asf/sam/drivers/twihs/twihs.c **** 	}
 328:../asf/sam/drivers/twihs/twihs.c **** 
 329:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_SR;
 330:../asf/sam/drivers/twihs/twihs.c **** 
 331:../asf/sam/drivers/twihs/twihs.c **** 	return TWIHS_SUCCESS;
 332:../asf/sam/drivers/twihs/twihs.c **** }
 333:../asf/sam/drivers/twihs/twihs.c **** 
ARM GAS  /tmp/ccsh7mrZ.s 			page 13


 334:../asf/sam/drivers/twihs/twihs.c **** /**
 335:../asf/sam/drivers/twihs/twihs.c ****  * \brief Write multiple bytes to a TWIHS compatible slave device.
 336:../asf/sam/drivers/twihs/twihs.c ****  *
 337:../asf/sam/drivers/twihs/twihs.c ****  * \note This function will NOT return until all data has been written or error occurred.
 338:../asf/sam/drivers/twihs/twihs.c ****  *
 339:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 340:../asf/sam/drivers/twihs/twihs.c ****  * \param p_packet Packet information and data (see \ref twihs_packet_t).
 341:../asf/sam/drivers/twihs/twihs.c ****  *
 342:../asf/sam/drivers/twihs/twihs.c ****  * \return TWIHS_SUCCESS if all bytes were written, error code otherwise.
 343:../asf/sam/drivers/twihs/twihs.c ****  */
 344:../asf/sam/drivers/twihs/twihs.c **** uint32_t twihs_master_write(Twihs *p_twihs, twihs_packet_t *p_packet)
 345:../asf/sam/drivers/twihs/twihs.c **** {
 346:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t status, cnt = p_packet->length;
 347:../asf/sam/drivers/twihs/twihs.c **** 	uint8_t *buffer = p_packet->buffer;
 348:../asf/sam/drivers/twihs/twihs.c **** 
 349:../asf/sam/drivers/twihs/twihs.c **** 	/* Check argument */
 350:../asf/sam/drivers/twihs/twihs.c **** 	if (cnt == 0) {
 351:../asf/sam/drivers/twihs/twihs.c **** 		return TWIHS_INVALID_ARGUMENT;
 352:../asf/sam/drivers/twihs/twihs.c **** 	}
 353:../asf/sam/drivers/twihs/twihs.c **** 
 354:../asf/sam/drivers/twihs/twihs.c **** 	/* Set write mode, slave address and 3 internal address byte lengths */
 355:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_MMR = 0;
 356:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_MMR = TWIHS_MMR_DADR(p_packet->chip) |
 357:../asf/sam/drivers/twihs/twihs.c **** 			((p_packet->addr_length << TWIHS_MMR_IADRSZ_Pos) &
 358:../asf/sam/drivers/twihs/twihs.c **** 			TWIHS_MMR_IADRSZ_Msk);
 359:../asf/sam/drivers/twihs/twihs.c **** 
 360:../asf/sam/drivers/twihs/twihs.c **** 	/* Set internal address for remote chip */
 361:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_IADR = 0;
 362:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_IADR = twihs_mk_addr(p_packet->addr, p_packet->addr_length);
 363:../asf/sam/drivers/twihs/twihs.c **** 
 364:../asf/sam/drivers/twihs/twihs.c **** 	/* Send all bytes */
 365:../asf/sam/drivers/twihs/twihs.c **** 	while (cnt > 0) {
 366:../asf/sam/drivers/twihs/twihs.c **** 		status = p_twihs->TWIHS_SR;
 367:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_NACK) {
 368:../asf/sam/drivers/twihs/twihs.c **** 			return TWIHS_RECEIVE_NACK;
 369:../asf/sam/drivers/twihs/twihs.c **** 		}
 370:../asf/sam/drivers/twihs/twihs.c **** 
 371:../asf/sam/drivers/twihs/twihs.c **** 		if (!(status & TWIHS_SR_TXRDY)) {
 372:../asf/sam/drivers/twihs/twihs.c **** 			continue;
 373:../asf/sam/drivers/twihs/twihs.c **** 		}
 374:../asf/sam/drivers/twihs/twihs.c **** 		p_twihs->TWIHS_THR = *buffer++;
 375:../asf/sam/drivers/twihs/twihs.c **** 
 376:../asf/sam/drivers/twihs/twihs.c **** 		cnt--;
 377:../asf/sam/drivers/twihs/twihs.c **** 	}
 378:../asf/sam/drivers/twihs/twihs.c **** 
 379:../asf/sam/drivers/twihs/twihs.c **** 	while (1) {
 380:../asf/sam/drivers/twihs/twihs.c **** 		status = p_twihs->TWIHS_SR;
 381:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_NACK) {
 382:../asf/sam/drivers/twihs/twihs.c **** 			return TWIHS_RECEIVE_NACK;
 383:../asf/sam/drivers/twihs/twihs.c **** 		}
 384:../asf/sam/drivers/twihs/twihs.c **** 
 385:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_TXRDY) {
 386:../asf/sam/drivers/twihs/twihs.c **** 			break;
 387:../asf/sam/drivers/twihs/twihs.c **** 		}
 388:../asf/sam/drivers/twihs/twihs.c **** 	}
 389:../asf/sam/drivers/twihs/twihs.c **** 
 390:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_STOP;
ARM GAS  /tmp/ccsh7mrZ.s 			page 14


 391:../asf/sam/drivers/twihs/twihs.c **** 
 392:../asf/sam/drivers/twihs/twihs.c **** 	while (!(p_twihs->TWIHS_SR & TWIHS_SR_TXCOMP)) {
 393:../asf/sam/drivers/twihs/twihs.c **** 	}
 394:../asf/sam/drivers/twihs/twihs.c **** 
 395:../asf/sam/drivers/twihs/twihs.c **** 	return TWIHS_SUCCESS;
 396:../asf/sam/drivers/twihs/twihs.c **** }
 397:../asf/sam/drivers/twihs/twihs.c **** 
 398:../asf/sam/drivers/twihs/twihs.c **** /**
 399:../asf/sam/drivers/twihs/twihs.c ****  * \brief Enable TWIHS interrupts.
 400:../asf/sam/drivers/twihs/twihs.c ****  *
 401:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 402:../asf/sam/drivers/twihs/twihs.c ****  * \param ul_sources Interrupts to be enabled.
 403:../asf/sam/drivers/twihs/twihs.c ****  */
 404:../asf/sam/drivers/twihs/twihs.c **** void twihs_enable_interrupt(Twihs *p_twihs, uint32_t ul_sources)
 405:../asf/sam/drivers/twihs/twihs.c **** {
 406:../asf/sam/drivers/twihs/twihs.c **** 	/* Enable the specified interrupts */
 407:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_IER = ul_sources;
 408:../asf/sam/drivers/twihs/twihs.c **** }
 409:../asf/sam/drivers/twihs/twihs.c **** 
 410:../asf/sam/drivers/twihs/twihs.c **** /**
 411:../asf/sam/drivers/twihs/twihs.c ****  * \brief Disable TWIHS interrupts.
 412:../asf/sam/drivers/twihs/twihs.c ****  *
 413:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 414:../asf/sam/drivers/twihs/twihs.c ****  * \param ul_sources Interrupts to be disabled.
 415:../asf/sam/drivers/twihs/twihs.c ****  */
 416:../asf/sam/drivers/twihs/twihs.c **** void twihs_disable_interrupt(Twihs *p_twihs, uint32_t ul_sources)
 417:../asf/sam/drivers/twihs/twihs.c **** {
 418:../asf/sam/drivers/twihs/twihs.c **** 	/* Disable the specified interrupts */
 419:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_IDR = ul_sources;
 420:../asf/sam/drivers/twihs/twihs.c **** 	/* Dummy read */
 421:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_SR;
 422:../asf/sam/drivers/twihs/twihs.c **** }
 423:../asf/sam/drivers/twihs/twihs.c **** 
 424:../asf/sam/drivers/twihs/twihs.c **** /**
 425:../asf/sam/drivers/twihs/twihs.c ****  * \brief Get TWIHS interrupt status.
 426:../asf/sam/drivers/twihs/twihs.c ****  *
 427:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 428:../asf/sam/drivers/twihs/twihs.c ****  *
 429:../asf/sam/drivers/twihs/twihs.c ****  * \retval TWIHS interrupt status.
 430:../asf/sam/drivers/twihs/twihs.c ****  */
 431:../asf/sam/drivers/twihs/twihs.c **** uint32_t twihs_get_interrupt_status(Twihs *p_twihs)
 432:../asf/sam/drivers/twihs/twihs.c **** {
 433:../asf/sam/drivers/twihs/twihs.c **** 	return p_twihs->TWIHS_SR;
 434:../asf/sam/drivers/twihs/twihs.c **** }
 435:../asf/sam/drivers/twihs/twihs.c **** 
 436:../asf/sam/drivers/twihs/twihs.c **** /**
 437:../asf/sam/drivers/twihs/twihs.c ****  * \brief Read TWIHS interrupt mask.
 438:../asf/sam/drivers/twihs/twihs.c ****  *
 439:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 440:../asf/sam/drivers/twihs/twihs.c ****  *
 441:../asf/sam/drivers/twihs/twihs.c ****  * \return The interrupt mask value.
 442:../asf/sam/drivers/twihs/twihs.c ****  */
 443:../asf/sam/drivers/twihs/twihs.c **** uint32_t twihs_get_interrupt_mask(Twihs *p_twihs)
 444:../asf/sam/drivers/twihs/twihs.c **** {
 445:../asf/sam/drivers/twihs/twihs.c **** 	return p_twihs->TWIHS_IMR;
 446:../asf/sam/drivers/twihs/twihs.c **** }
 447:../asf/sam/drivers/twihs/twihs.c **** 
ARM GAS  /tmp/ccsh7mrZ.s 			page 15


 448:../asf/sam/drivers/twihs/twihs.c **** /**
 449:../asf/sam/drivers/twihs/twihs.c ****  * \brief Reads a byte from the TWIHS bus.
 450:../asf/sam/drivers/twihs/twihs.c ****  *
 451:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 452:../asf/sam/drivers/twihs/twihs.c ****  *
 453:../asf/sam/drivers/twihs/twihs.c ****  * \return The byte read.
 454:../asf/sam/drivers/twihs/twihs.c ****  */
 455:../asf/sam/drivers/twihs/twihs.c **** uint8_t twihs_read_byte(Twihs *p_twihs)
 456:../asf/sam/drivers/twihs/twihs.c **** {
 457:../asf/sam/drivers/twihs/twihs.c **** 	return p_twihs->TWIHS_RHR;
 458:../asf/sam/drivers/twihs/twihs.c **** }
 459:../asf/sam/drivers/twihs/twihs.c **** 
 460:../asf/sam/drivers/twihs/twihs.c **** /**
 461:../asf/sam/drivers/twihs/twihs.c ****  * \brief Sends a byte of data to one of the TWIHS slaves on the bus.
 462:../asf/sam/drivers/twihs/twihs.c ****  *
 463:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 464:../asf/sam/drivers/twihs/twihs.c ****  * \param byte The byte to send.
 465:../asf/sam/drivers/twihs/twihs.c ****  */
 466:../asf/sam/drivers/twihs/twihs.c **** void twihs_write_byte(Twihs *p_twihs, uint8_t uc_byte)
 467:../asf/sam/drivers/twihs/twihs.c **** {
 468:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_THR = uc_byte;
 469:../asf/sam/drivers/twihs/twihs.c **** }
 470:../asf/sam/drivers/twihs/twihs.c **** 
 471:../asf/sam/drivers/twihs/twihs.c **** /**
 472:../asf/sam/drivers/twihs/twihs.c ****  * \brief Enable TWIHS slave mode.
 473:../asf/sam/drivers/twihs/twihs.c ****  *
 474:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 475:../asf/sam/drivers/twihs/twihs.c ****  */
 476:../asf/sam/drivers/twihs/twihs.c **** void twihs_enable_slave_mode(Twihs *p_twihs)
 477:../asf/sam/drivers/twihs/twihs.c **** {
 478:../asf/sam/drivers/twihs/twihs.c **** 	/* Set Master Disable bit and Slave Disable bit */
 479:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_MSDIS;
 480:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_SVDIS;
 481:../asf/sam/drivers/twihs/twihs.c **** 
 482:../asf/sam/drivers/twihs/twihs.c **** 	/* Set Slave Enable bit */
 483:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_SVEN;
 484:../asf/sam/drivers/twihs/twihs.c **** }
 485:../asf/sam/drivers/twihs/twihs.c **** 
 486:../asf/sam/drivers/twihs/twihs.c **** /**
 487:../asf/sam/drivers/twihs/twihs.c ****  * \brief Disable TWIHS slave mode.
 488:../asf/sam/drivers/twihs/twihs.c ****  *
 489:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 490:../asf/sam/drivers/twihs/twihs.c ****  */
 491:../asf/sam/drivers/twihs/twihs.c **** void twihs_disable_slave_mode(Twihs *p_twihs)
 492:../asf/sam/drivers/twihs/twihs.c **** {
 493:../asf/sam/drivers/twihs/twihs.c **** 	/* Set Slave Disable bit */
 494:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_SVDIS;
 495:../asf/sam/drivers/twihs/twihs.c **** }
 496:../asf/sam/drivers/twihs/twihs.c **** 
 497:../asf/sam/drivers/twihs/twihs.c **** /**
 498:../asf/sam/drivers/twihs/twihs.c ****  * \brief Initialize TWIHS slave mode.
 499:../asf/sam/drivers/twihs/twihs.c ****  *
 500:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 501:../asf/sam/drivers/twihs/twihs.c ****  * \param ul_device_addr Device address of the SAM slave device on the I2C bus.
 502:../asf/sam/drivers/twihs/twihs.c ****  */
 503:../asf/sam/drivers/twihs/twihs.c **** void twihs_slave_init(Twihs *p_twihs, uint32_t ul_device_addr)
 504:../asf/sam/drivers/twihs/twihs.c **** {
ARM GAS  /tmp/ccsh7mrZ.s 			page 16


 505:../asf/sam/drivers/twihs/twihs.c **** 	/* Disable TWIHS interrupts */
 506:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_IDR = ~0UL;
 507:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_SR;
 508:../asf/sam/drivers/twihs/twihs.c **** 
 509:../asf/sam/drivers/twihs/twihs.c **** 	/* Reset TWIHS */
 510:../asf/sam/drivers/twihs/twihs.c **** 	twihs_reset(p_twihs);
 511:../asf/sam/drivers/twihs/twihs.c **** 
 512:../asf/sam/drivers/twihs/twihs.c **** 	/* Set slave address in slave mode */
 513:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_SMR = TWIHS_SMR_SADR(ul_device_addr);
 514:../asf/sam/drivers/twihs/twihs.c **** 
 515:../asf/sam/drivers/twihs/twihs.c **** 	/* Enable slave mode */
 516:../asf/sam/drivers/twihs/twihs.c **** 	twihs_enable_slave_mode(p_twihs);
 517:../asf/sam/drivers/twihs/twihs.c **** }
 518:../asf/sam/drivers/twihs/twihs.c **** 
 519:../asf/sam/drivers/twihs/twihs.c **** /**
 520:../asf/sam/drivers/twihs/twihs.c ****  * \brief Set TWIHS slave address.
 521:../asf/sam/drivers/twihs/twihs.c ****  *
 522:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 523:../asf/sam/drivers/twihs/twihs.c ****  * \param ul_device_addr Device address of the SAM slave device on the I2C bus.
 524:../asf/sam/drivers/twihs/twihs.c ****  */
 525:../asf/sam/drivers/twihs/twihs.c **** void twihs_set_slave_addr(Twihs *p_twihs, uint32_t ul_device_addr)
 526:../asf/sam/drivers/twihs/twihs.c **** {
 527:../asf/sam/drivers/twihs/twihs.c **** 	/* Set slave address */
 528:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_SMR = TWIHS_SMR_SADR(ul_device_addr);
 529:../asf/sam/drivers/twihs/twihs.c **** }
 530:../asf/sam/drivers/twihs/twihs.c **** 
 531:../asf/sam/drivers/twihs/twihs.c **** /**
 532:../asf/sam/drivers/twihs/twihs.c ****  * \brief Read data from master.
 533:../asf/sam/drivers/twihs/twihs.c ****  *
 534:../asf/sam/drivers/twihs/twihs.c ****  * \note This function will NOT return until master sends a STOP condition.
 535:../asf/sam/drivers/twihs/twihs.c ****  *
 536:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 537:../asf/sam/drivers/twihs/twihs.c ****  * \param p_data Pointer to the data buffer where data received will be stored.
 538:../asf/sam/drivers/twihs/twihs.c ****  *
 539:../asf/sam/drivers/twihs/twihs.c ****  * \return Number of bytes read.
 540:../asf/sam/drivers/twihs/twihs.c ****  */
 541:../asf/sam/drivers/twihs/twihs.c **** uint32_t twihs_slave_read(Twihs *p_twihs, uint8_t *p_data)
 542:../asf/sam/drivers/twihs/twihs.c **** {
 543:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t status, cnt = 0;
 544:../asf/sam/drivers/twihs/twihs.c **** 
 545:../asf/sam/drivers/twihs/twihs.c **** 	do {
 546:../asf/sam/drivers/twihs/twihs.c **** 		status = p_twihs->TWIHS_SR;
 547:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_SVACC) {
 548:../asf/sam/drivers/twihs/twihs.c **** 			if (!(status & (TWIHS_SR_GACC | TWIHS_SR_SVREAD)) &&
 549:../asf/sam/drivers/twihs/twihs.c **** 			(status & TWIHS_SR_RXRDY)) {
 550:../asf/sam/drivers/twihs/twihs.c **** 				*p_data++ = (uint8_t) p_twihs->TWIHS_RHR;
 551:../asf/sam/drivers/twihs/twihs.c **** 				cnt++;
 552:../asf/sam/drivers/twihs/twihs.c **** 			}
 553:../asf/sam/drivers/twihs/twihs.c **** 		} else if ((status & (TWIHS_SR_EOSACC | TWIHS_SR_TXCOMP))
 554:../asf/sam/drivers/twihs/twihs.c **** 					== (TWIHS_SR_EOSACC | TWIHS_SR_TXCOMP)) {
 555:../asf/sam/drivers/twihs/twihs.c **** 			break;
 556:../asf/sam/drivers/twihs/twihs.c **** 		}
 557:../asf/sam/drivers/twihs/twihs.c **** 	} while (1);
 558:../asf/sam/drivers/twihs/twihs.c **** 
 559:../asf/sam/drivers/twihs/twihs.c **** 	return cnt;
 560:../asf/sam/drivers/twihs/twihs.c **** }
 561:../asf/sam/drivers/twihs/twihs.c **** 
ARM GAS  /tmp/ccsh7mrZ.s 			page 17


 562:../asf/sam/drivers/twihs/twihs.c **** /**
 563:../asf/sam/drivers/twihs/twihs.c ****  * \brief Write data to TWIHS bus.
 564:../asf/sam/drivers/twihs/twihs.c ****  *
 565:../asf/sam/drivers/twihs/twihs.c ****  * \note This function will NOT return until master sends a STOP condition.
 566:../asf/sam/drivers/twihs/twihs.c ****  *
 567:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 568:../asf/sam/drivers/twihs/twihs.c ****  * \param p_data Pointer to the data buffer to be sent.
 569:../asf/sam/drivers/twihs/twihs.c ****  *
 570:../asf/sam/drivers/twihs/twihs.c ****  * \return Number of bytes written.
 571:../asf/sam/drivers/twihs/twihs.c ****  */
 572:../asf/sam/drivers/twihs/twihs.c **** uint32_t twihs_slave_write(Twihs *p_twihs, uint8_t *p_data)
 573:../asf/sam/drivers/twihs/twihs.c **** {
 574:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t status, cnt = 0;
 575:../asf/sam/drivers/twihs/twihs.c **** 
 576:../asf/sam/drivers/twihs/twihs.c **** 	do {
 577:../asf/sam/drivers/twihs/twihs.c **** 		status = p_twihs->TWIHS_SR;
 578:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_SVACC) {
 579:../asf/sam/drivers/twihs/twihs.c **** 			if (!(status & (TWIHS_SR_GACC | TWIHS_SR_NACK)) &&
 580:../asf/sam/drivers/twihs/twihs.c **** 			((status & (TWIHS_SR_SVREAD | TWIHS_SR_TXRDY))
 581:../asf/sam/drivers/twihs/twihs.c **** 			== (TWIHS_SR_SVREAD | TWIHS_SR_TXRDY))) {
 582:../asf/sam/drivers/twihs/twihs.c **** 				p_twihs->TWIHS_THR = *p_data++;
 583:../asf/sam/drivers/twihs/twihs.c **** 				cnt++;
 584:../asf/sam/drivers/twihs/twihs.c **** 			}
 585:../asf/sam/drivers/twihs/twihs.c **** 		} else if ((status & (TWIHS_SR_EOSACC | TWIHS_SR_TXCOMP))
 586:../asf/sam/drivers/twihs/twihs.c **** 					== (TWIHS_SR_EOSACC | TWIHS_SR_TXCOMP)) {
 587:../asf/sam/drivers/twihs/twihs.c **** 			break;
 588:../asf/sam/drivers/twihs/twihs.c **** 		}
 589:../asf/sam/drivers/twihs/twihs.c **** 	} while (1);
 590:../asf/sam/drivers/twihs/twihs.c **** 
 591:../asf/sam/drivers/twihs/twihs.c **** 	return cnt;
 592:../asf/sam/drivers/twihs/twihs.c **** }
 593:../asf/sam/drivers/twihs/twihs.c **** 
 594:../asf/sam/drivers/twihs/twihs.c **** /**
 595:../asf/sam/drivers/twihs/twihs.c ****  * \brief Reset TWIHS.
 596:../asf/sam/drivers/twihs/twihs.c ****  *
 597:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 598:../asf/sam/drivers/twihs/twihs.c ****  */
 599:../asf/sam/drivers/twihs/twihs.c **** void twihs_reset(Twihs *p_twihs)
 600:../asf/sam/drivers/twihs/twihs.c **** {
 601:../asf/sam/drivers/twihs/twihs.c **** 	/* Set SWRST bit to reset TWIHS peripheral */
 602:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_SWRST;
 323              		.loc 1 602 0
 324 0002 8022     		movs	r2, #128
 325              	.LBE23:
 326              	.LBE22:
 128:../asf/sam/drivers/twihs/twihs.c **** 
 327              		.loc 1 128 0
 328 0004 4FF0FF37 		mov	r7, #-1
 329              	.LBB26:
 330              	.LBB27:
  97:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_SVDIS;
 331              		.loc 1 97 0
 332 0008 0826     		movs	r6, #8
  98:../asf/sam/drivers/twihs/twihs.c **** 
 333              		.loc 1 98 0
 334 000a 2025     		movs	r5, #32
 101:../asf/sam/drivers/twihs/twihs.c **** }
ARM GAS  /tmp/ccsh7mrZ.s 			page 18


 335              		.loc 1 101 0
 336 000c 0424     		movs	r4, #4
 337              	.LBE27:
 338              	.LBE26:
 128:../asf/sam/drivers/twihs/twihs.c **** 
 339              		.loc 1 128 0
 340 000e 8762     		str	r7, [r0, #40]
 131:../asf/sam/drivers/twihs/twihs.c **** 
 341              		.loc 1 131 0
 342 0010 076A     		ldr	r7, [r0, #32]
 343              	.LVL34:
 344              	.LBB29:
 345              	.LBB24:
 346              		.loc 1 602 0
 347 0012 0260     		str	r2, [r0]
 348              	.LBE24:
 349              	.LBE29:
 139:../asf/sam/drivers/twihs/twihs.c **** 		/* The desired speed setting is rejected */
 350              		.loc 1 139 0
 351 0014 0A68     		ldr	r2, [r1]
 352              	.LBB30:
 353              	.LBB25:
 603:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_RHR;
 354              		.loc 1 603 0
 355 0016 076B     		ldr	r7, [r0, #48]
 356              	.LVL35:
 357              	.LBE25:
 358              	.LBE30:
 139:../asf/sam/drivers/twihs/twihs.c **** 		/* The desired speed setting is rejected */
 359              		.loc 1 139 0
 360 0018 4968     		ldr	r1, [r1, #4]
 361              	.LVL36:
 362              	.LBB31:
 363              	.LBB28:
  97:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_SVDIS;
 364              		.loc 1 97 0
 365 001a 0660     		str	r6, [r0]
  98:../asf/sam/drivers/twihs/twihs.c **** 
 366              		.loc 1 98 0
 367 001c 0560     		str	r5, [r0]
 101:../asf/sam/drivers/twihs/twihs.c **** }
 368              		.loc 1 101 0
 369 001e 0460     		str	r4, [r0]
 370              	.LVL37:
 371              	.LBE28:
 372              	.LBE31:
 139:../asf/sam/drivers/twihs/twihs.c **** 		/* The desired speed setting is rejected */
 373              		.loc 1 139 0
 374 0020 FFF7FEFF 		bl	twihs_set_speed
 375              	.LVL38:
 145:../asf/sam/drivers/twihs/twihs.c **** 
 376              		.loc 1 145 0
 377 0024 A0F10100 		sub	r0, #1
 378              	.LVL39:
 379 0028 B0FA80F0 		clz	r0, r0
 380              	.LVL40:
 381 002c 4009     		lsrs	r0, r0, #5
ARM GAS  /tmp/ccsh7mrZ.s 			page 19


 382 002e F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 383              		.cfi_endproc
 384              	.LFE169:
 385              		.size	twihs_master_init, .-twihs_master_init
 386              		.section	.text.twihs_master_read,"ax",%progbits
 387              		.align	1
 388              		.p2align 2,,3
 389              		.global	twihs_master_read
 390              		.syntax unified
 391              		.thumb
 392              		.thumb_func
 393              		.fpu fpv5-d16
 394              		.type	twihs_master_read, %function
 395              	twihs_master_read:
 396              	.LFB173:
 281:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t status, cnt = p_packet->length;
 397              		.loc 1 281 0
 398              		.cfi_startproc
 399              		@ args = 0, pretend = 0, frame = 0
 400              		@ frame_needed = 0, uses_anonymous_args = 0
 401              		@ link register save eliminated.
 402              	.LVL41:
 282:../asf/sam/drivers/twihs/twihs.c **** 	uint8_t *buffer = p_packet->buffer;
 403              		.loc 1 282 0
 404 0000 CA68     		ldr	r2, [r1, #12]
 405              	.LVL42:
 287:../asf/sam/drivers/twihs/twihs.c **** 		return TWIHS_INVALID_ARGUMENT;
 406              		.loc 1 287 0
 407 0002 002A     		cmp	r2, #0
 408 0004 48D0     		beq	.L59
 281:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t status, cnt = p_packet->length;
 409              		.loc 1 281 0
 410 0006 F0B4     		push	{r4, r5, r6, r7}
 411              		.cfi_def_cfa_offset 16
 412              		.cfi_offset 4, -16
 413              		.cfi_offset 5, -12
 414              		.cfi_offset 6, -8
 415              		.cfi_offset 7, -4
 294:../asf/sam/drivers/twihs/twihs.c **** 			TWIHS_MMR_IADRSZ_Msk);
 416              		.loc 1 294 0
 417 0008 4E68     		ldr	r6, [r1, #4]
 292:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_MMR = TWIHS_MMR_MREAD | TWIHS_MMR_DADR(p_packet->chip) |
 418              		.loc 1 292 0
 419 000a 0027     		movs	r7, #0
 283:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t timeout = TWIHS_TIMEOUT;
 420              		.loc 1 283 0
 421 000c 8C68     		ldr	r4, [r1, #8]
 294:../asf/sam/drivers/twihs/twihs.c **** 			TWIHS_MMR_IADRSZ_Msk);
 422              		.loc 1 294 0
 423 000e 3502     		lsls	r5, r6, #8
 292:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_MMR = TWIHS_MMR_MREAD | TWIHS_MMR_DADR(p_packet->chip) |
 424              		.loc 1 292 0
 425 0010 4760     		str	r7, [r0, #4]
 293:../asf/sam/drivers/twihs/twihs.c **** 			((p_packet->addr_length << TWIHS_MMR_IADRSZ_Pos) &
 426              		.loc 1 293 0
 427 0012 0B7C     		ldrb	r3, [r1, #16]	@ zero_extendqisi2
 294:../asf/sam/drivers/twihs/twihs.c **** 			TWIHS_MMR_IADRSZ_Msk);
ARM GAS  /tmp/ccsh7mrZ.s 			page 20


 428              		.loc 1 294 0
 429 0014 05F44075 		and	r5, r5, #768
 293:../asf/sam/drivers/twihs/twihs.c **** 			((p_packet->addr_length << TWIHS_MMR_IADRSZ_Pos) &
 430              		.loc 1 293 0
 431 0018 1B04     		lsls	r3, r3, #16
 432 001a 45F48055 		orr	r5, r5, #4096
 433 001e 03F4FE03 		and	r3, r3, #8323072
 434 0022 2B43     		orrs	r3, r3, r5
 435 0024 4360     		str	r3, [r0, #4]
 298:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_IADR = twihs_mk_addr(p_packet->addr, p_packet->addr_length);
 436              		.loc 1 298 0
 437 0026 C760     		str	r7, [r0, #12]
 438              	.LVL43:
 439              	.LBB36:
 440              	.LBB37:
 255:../asf/sam/drivers/twihs/twihs.c **** 		return 0;
 441              		.loc 1 255 0
 442 0028 BEB9     		cbnz	r6, .L81
 256:../asf/sam/drivers/twihs/twihs.c **** 
 443              		.loc 1 256 0
 444 002a 3346     		mov	r3, r6
 445              	.LVL44:
 446              	.L48:
 447              	.LBE37:
 448              	.LBE36:
 302:../asf/sam/drivers/twihs/twihs.c **** 
 449              		.loc 1 302 0
 450 002c 0121     		movs	r1, #1
 299:../asf/sam/drivers/twihs/twihs.c **** 
 451              		.loc 1 299 0
 452 002e C360     		str	r3, [r0, #12]
 314:../asf/sam/drivers/twihs/twihs.c **** 		}
 453              		.loc 1 314 0
 454 0030 0225     		movs	r5, #2
 302:../asf/sam/drivers/twihs/twihs.c **** 
 455              		.loc 1 302 0
 456 0032 0160     		str	r1, [r0]
 457              	.LVL45:
 305:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_NACK) {
 458              		.loc 1 305 0
 459 0034 036A     		ldr	r3, [r0, #32]
 460              	.LVL46:
 306:../asf/sam/drivers/twihs/twihs.c **** 			return TWIHS_RECEIVE_NACK;
 461              		.loc 1 306 0
 462 0036 D905     		lsls	r1, r3, #23
 463 0038 0CD4     		bmi	.L56
 464              	.L83:
 465 003a 47F23051 		movw	r1, #30000
 466              	.LVL47:
 467              	.L51:
 313:../asf/sam/drivers/twihs/twihs.c **** 			p_twihs->TWIHS_CR = TWIHS_CR_STOP;
 468              		.loc 1 313 0
 469 003e 012A     		cmp	r2, #1
 470 0040 1ED0     		beq	.L82
 317:../asf/sam/drivers/twihs/twihs.c **** 			continue;
 471              		.loc 1 317 0
 472 0042 9E07     		lsls	r6, r3, #30
ARM GAS  /tmp/ccsh7mrZ.s 			page 21


 473 0044 15D5     		bpl	.L53
 474              	.LVL48:
 320:../asf/sam/drivers/twihs/twihs.c **** 
 475              		.loc 1 320 0
 476 0046 036B     		ldr	r3, [r0, #48]
 477              	.LVL49:
 322:../asf/sam/drivers/twihs/twihs.c **** 		timeout = TWIHS_TIMEOUT;
 478              		.loc 1 322 0
 479 0048 013A     		subs	r2, r2, #1
 480              	.LVL50:
 320:../asf/sam/drivers/twihs/twihs.c **** 
 481              		.loc 1 320 0
 482 004a 04F8013B 		strb	r3, [r4], #1
 483              	.LVL51:
 305:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_NACK) {
 484              		.loc 1 305 0
 485 004e 036A     		ldr	r3, [r0, #32]
 486              	.LVL52:
 306:../asf/sam/drivers/twihs/twihs.c **** 			return TWIHS_RECEIVE_NACK;
 487              		.loc 1 306 0
 488 0050 D905     		lsls	r1, r3, #23
 489 0052 F2D5     		bpl	.L83
 490              	.LVL53:
 491              	.L56:
 307:../asf/sam/drivers/twihs/twihs.c **** 		}
 492              		.loc 1 307 0
 493 0054 0520     		movs	r0, #5
 494              	.LVL54:
 495              	.L46:
 332:../asf/sam/drivers/twihs/twihs.c **** 
 496              		.loc 1 332 0
 497 0056 F0BC     		pop	{r4, r5, r6, r7}
 498              		.cfi_remember_state
 499              		.cfi_restore 7
 500              		.cfi_restore 6
 501              		.cfi_restore 5
 502              		.cfi_restore 4
 503              		.cfi_def_cfa_offset 0
 504 0058 7047     		bx	lr
 505              	.LVL55:
 506              	.L81:
 507              		.cfi_restore_state
 508              	.LBB41:
 509              	.LBB40:
 510              	.LBB38:
 511              	.LBB39:
 259:../asf/sam/drivers/twihs/twihs.c **** 		val <<= 8;
 512              		.loc 1 259 0
 513 005a 012E     		cmp	r6, #1
 258:../asf/sam/drivers/twihs/twihs.c **** 	if (len > 1) {
 514              		.loc 1 258 0
 515 005c 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 516              	.LVL56:
 259:../asf/sam/drivers/twihs/twihs.c **** 		val <<= 8;
 517              		.loc 1 259 0
 518 005e E5DD     		ble	.L48
 519              	.LVL57:
ARM GAS  /tmp/ccsh7mrZ.s 			page 22


 261:../asf/sam/drivers/twihs/twihs.c **** 	}
 520              		.loc 1 261 0
 521 0060 4D78     		ldrb	r5, [r1, #1]	@ zero_extendqisi2
 263:../asf/sam/drivers/twihs/twihs.c **** 		val <<= 8;
 522              		.loc 1 263 0
 523 0062 022E     		cmp	r6, #2
 261:../asf/sam/drivers/twihs/twihs.c **** 	}
 524              		.loc 1 261 0
 525 0064 45EA0323 		orr	r3, r5, r3, lsl #8
 526              	.LVL58:
 263:../asf/sam/drivers/twihs/twihs.c **** 		val <<= 8;
 527              		.loc 1 263 0
 528 0068 E0D0     		beq	.L48
 529              	.LVL59:
 265:../asf/sam/drivers/twihs/twihs.c **** 	}
 530              		.loc 1 265 0
 531 006a 8978     		ldrb	r1, [r1, #2]	@ zero_extendqisi2
 532              	.LVL60:
 533 006c 41EA0323 		orr	r3, r1, r3, lsl #8
 534              	.LVL61:
 535 0070 DCE7     		b	.L48
 536              	.LVL62:
 537              	.L53:
 538              	.LBE39:
 539              	.LBE38:
 540              	.LBE40:
 541              	.LBE41:
 305:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_NACK) {
 542              		.loc 1 305 0
 543 0072 036A     		ldr	r3, [r0, #32]
 544              	.LVL63:
 306:../asf/sam/drivers/twihs/twihs.c **** 			return TWIHS_RECEIVE_NACK;
 545              		.loc 1 306 0
 546 0074 DE05     		lsls	r6, r3, #23
 547 0076 EDD4     		bmi	.L56
 309:../asf/sam/drivers/twihs/twihs.c **** 			return TWIHS_ERROR_TIMEOUT;
 548              		.loc 1 309 0
 549 0078 0139     		subs	r1, r1, #1
 550              	.LVL64:
 551 007a E0D1     		bne	.L51
 310:../asf/sam/drivers/twihs/twihs.c **** 		}
 552              		.loc 1 310 0
 553 007c 0920     		movs	r0, #9
 554              	.LVL65:
 555 007e EAE7     		b	.L46
 556              	.LVL66:
 557              	.L82:
 317:../asf/sam/drivers/twihs/twihs.c **** 			continue;
 558              		.loc 1 317 0
 559 0080 9F07     		lsls	r7, r3, #30
 314:../asf/sam/drivers/twihs/twihs.c **** 		}
 560              		.loc 1 314 0
 561 0082 0560     		str	r5, [r0]
 317:../asf/sam/drivers/twihs/twihs.c **** 			continue;
 562              		.loc 1 317 0
 563 0084 F5D5     		bpl	.L53
 564              	.LVL67:
ARM GAS  /tmp/ccsh7mrZ.s 			page 23


 320:../asf/sam/drivers/twihs/twihs.c **** 
 565              		.loc 1 320 0
 566 0086 036B     		ldr	r3, [r0, #48]
 567              	.LVL68:
 568 0088 2370     		strb	r3, [r4]
 569              	.LVL69:
 570              	.L58:
 326:../asf/sam/drivers/twihs/twihs.c **** 	}
 571              		.loc 1 326 0 discriminator 1
 572 008a 036A     		ldr	r3, [r0, #32]
 573 008c DB07     		lsls	r3, r3, #31
 574 008e FCD5     		bpl	.L58
 329:../asf/sam/drivers/twihs/twihs.c **** 
 575              		.loc 1 329 0
 576 0090 036A     		ldr	r3, [r0, #32]
 331:../asf/sam/drivers/twihs/twihs.c **** }
 577              		.loc 1 331 0
 578 0092 0020     		movs	r0, #0
 579              	.LVL70:
 332:../asf/sam/drivers/twihs/twihs.c **** 
 580              		.loc 1 332 0
 581 0094 F0BC     		pop	{r4, r5, r6, r7}
 582              		.cfi_restore 4
 583              		.cfi_restore 5
 584              		.cfi_restore 6
 585              		.cfi_restore 7
 586              		.cfi_def_cfa_offset 0
 587              	.LVL71:
 588 0096 7047     		bx	lr
 589              	.LVL72:
 590              	.L59:
 288:../asf/sam/drivers/twihs/twihs.c **** 	}
 591              		.loc 1 288 0
 592 0098 0120     		movs	r0, #1
 593              	.LVL73:
 594 009a 7047     		bx	lr
 595              		.cfi_endproc
 596              	.LFE173:
 597              		.size	twihs_master_read, .-twihs_master_read
 598              		.section	.text.twihs_master_write,"ax",%progbits
 599              		.align	1
 600              		.p2align 2,,3
 601              		.global	twihs_master_write
 602              		.syntax unified
 603              		.thumb
 604              		.thumb_func
 605              		.fpu fpv5-d16
 606              		.type	twihs_master_write, %function
 607              	twihs_master_write:
 608              	.LFB174:
 345:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t status, cnt = p_packet->length;
 609              		.loc 1 345 0
 610              		.cfi_startproc
 611              		@ args = 0, pretend = 0, frame = 0
 612              		@ frame_needed = 0, uses_anonymous_args = 0
 613              		@ link register save eliminated.
 614              	.LVL74:
ARM GAS  /tmp/ccsh7mrZ.s 			page 24


 615 0000 0346     		mov	r3, r0
 346:../asf/sam/drivers/twihs/twihs.c **** 	uint8_t *buffer = p_packet->buffer;
 616              		.loc 1 346 0
 617 0002 C868     		ldr	r0, [r1, #12]
 618              	.LVL75:
 350:../asf/sam/drivers/twihs/twihs.c **** 		return TWIHS_INVALID_ARGUMENT;
 619              		.loc 1 350 0
 620 0004 0028     		cmp	r0, #0
 621 0006 33D0     		beq	.L94
 345:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t status, cnt = p_packet->length;
 622              		.loc 1 345 0
 623 0008 F0B4     		push	{r4, r5, r6, r7}
 624              		.cfi_def_cfa_offset 16
 625              		.cfi_offset 4, -16
 626              		.cfi_offset 5, -12
 627              		.cfi_offset 6, -8
 628              		.cfi_offset 7, -4
 355:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_MMR = TWIHS_MMR_DADR(p_packet->chip) |
 629              		.loc 1 355 0
 630 000a 0027     		movs	r7, #0
 357:../asf/sam/drivers/twihs/twihs.c **** 			TWIHS_MMR_IADRSZ_Msk);
 631              		.loc 1 357 0
 632 000c 4D68     		ldr	r5, [r1, #4]
 347:../asf/sam/drivers/twihs/twihs.c **** 
 633              		.loc 1 347 0
 634 000e 8C68     		ldr	r4, [r1, #8]
 355:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_MMR = TWIHS_MMR_DADR(p_packet->chip) |
 635              		.loc 1 355 0
 636 0010 5F60     		str	r7, [r3, #4]
 357:../asf/sam/drivers/twihs/twihs.c **** 			TWIHS_MMR_IADRSZ_Msk);
 637              		.loc 1 357 0
 638 0012 2E02     		lsls	r6, r5, #8
 356:../asf/sam/drivers/twihs/twihs.c **** 			((p_packet->addr_length << TWIHS_MMR_IADRSZ_Pos) &
 639              		.loc 1 356 0
 640 0014 0A7C     		ldrb	r2, [r1, #16]	@ zero_extendqisi2
 357:../asf/sam/drivers/twihs/twihs.c **** 			TWIHS_MMR_IADRSZ_Msk);
 641              		.loc 1 357 0
 642 0016 06F44076 		and	r6, r6, #768
 356:../asf/sam/drivers/twihs/twihs.c **** 			((p_packet->addr_length << TWIHS_MMR_IADRSZ_Pos) &
 643              		.loc 1 356 0
 644 001a 1204     		lsls	r2, r2, #16
 645 001c 02F4FE02 		and	r2, r2, #8323072
 646 0020 3243     		orrs	r2, r2, r6
 647 0022 5A60     		str	r2, [r3, #4]
 361:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_IADR = twihs_mk_addr(p_packet->addr, p_packet->addr_length);
 648              		.loc 1 361 0
 649 0024 DF60     		str	r7, [r3, #12]
 650              	.LVL76:
 651              	.LBB50:
 652              	.LBB51:
 255:../asf/sam/drivers/twihs/twihs.c **** 		return 0;
 653              		.loc 1 255 0
 654 0026 8DB9     		cbnz	r5, .L116
 256:../asf/sam/drivers/twihs/twihs.c **** 
 655              		.loc 1 256 0
 656 0028 2A46     		mov	r2, r5
 657              	.LVL77:
ARM GAS  /tmp/ccsh7mrZ.s 			page 25


 658              	.L86:
 659              	.LBE51:
 660              	.LBE50:
 362:../asf/sam/drivers/twihs/twihs.c **** 
 661              		.loc 1 362 0
 662 002a DA60     		str	r2, [r3, #12]
 663              	.LVL78:
 664              	.L89:
 366:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_NACK) {
 665              		.loc 1 366 0
 666 002c 1A6A     		ldr	r2, [r3, #32]
 667              	.LVL79:
 367:../asf/sam/drivers/twihs/twihs.c **** 			return TWIHS_RECEIVE_NACK;
 668              		.loc 1 367 0
 669 002e D605     		lsls	r6, r2, #23
 670 0030 09D4     		bmi	.L91
 671              	.L113:
 371:../asf/sam/drivers/twihs/twihs.c **** 			continue;
 672              		.loc 1 371 0
 673 0032 5507     		lsls	r5, r2, #29
 674 0034 FAD5     		bpl	.L89
 675              	.LVL80:
 374:../asf/sam/drivers/twihs/twihs.c **** 
 676              		.loc 1 374 0
 677 0036 14F8012B 		ldrb	r2, [r4], #1	@ zero_extendqisi2
 678              	.LVL81:
 365:../asf/sam/drivers/twihs/twihs.c **** 		status = p_twihs->TWIHS_SR;
 679              		.loc 1 365 0
 680 003a 0138     		subs	r0, r0, #1
 681              	.LVL82:
 374:../asf/sam/drivers/twihs/twihs.c **** 
 682              		.loc 1 374 0
 683 003c 5A63     		str	r2, [r3, #52]
 365:../asf/sam/drivers/twihs/twihs.c **** 		status = p_twihs->TWIHS_SR;
 684              		.loc 1 365 0
 685 003e 13D0     		beq	.L90
 686              	.LVL83:
 366:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_NACK) {
 687              		.loc 1 366 0
 688 0040 1A6A     		ldr	r2, [r3, #32]
 689              	.LVL84:
 367:../asf/sam/drivers/twihs/twihs.c **** 			return TWIHS_RECEIVE_NACK;
 690              		.loc 1 367 0
 691 0042 D605     		lsls	r6, r2, #23
 692 0044 F5D5     		bpl	.L113
 693              	.LVL85:
 694              	.L91:
 368:../asf/sam/drivers/twihs/twihs.c **** 		}
 695              		.loc 1 368 0
 696 0046 0520     		movs	r0, #5
 396:../asf/sam/drivers/twihs/twihs.c **** 
 697              		.loc 1 396 0
 698 0048 F0BC     		pop	{r4, r5, r6, r7}
 699              		.cfi_remember_state
 700              		.cfi_restore 7
 701              		.cfi_restore 6
 702              		.cfi_restore 5
ARM GAS  /tmp/ccsh7mrZ.s 			page 26


 703              		.cfi_restore 4
 704              		.cfi_def_cfa_offset 0
 705 004a 7047     		bx	lr
 706              	.LVL86:
 707              	.L116:
 708              		.cfi_restore_state
 709              	.LBB55:
 710              	.LBB54:
 711              	.LBB52:
 712              	.LBB53:
 259:../asf/sam/drivers/twihs/twihs.c **** 		val <<= 8;
 713              		.loc 1 259 0
 714 004c 012D     		cmp	r5, #1
 258:../asf/sam/drivers/twihs/twihs.c **** 	if (len > 1) {
 715              		.loc 1 258 0
 716 004e 0A78     		ldrb	r2, [r1]	@ zero_extendqisi2
 717              	.LVL87:
 259:../asf/sam/drivers/twihs/twihs.c **** 		val <<= 8;
 718              		.loc 1 259 0
 719 0050 EBDD     		ble	.L86
 720              	.LVL88:
 261:../asf/sam/drivers/twihs/twihs.c **** 	}
 721              		.loc 1 261 0
 722 0052 4E78     		ldrb	r6, [r1, #1]	@ zero_extendqisi2
 263:../asf/sam/drivers/twihs/twihs.c **** 		val <<= 8;
 723              		.loc 1 263 0
 724 0054 022D     		cmp	r5, #2
 261:../asf/sam/drivers/twihs/twihs.c **** 	}
 725              		.loc 1 261 0
 726 0056 46EA0222 		orr	r2, r6, r2, lsl #8
 727              	.LVL89:
 263:../asf/sam/drivers/twihs/twihs.c **** 		val <<= 8;
 728              		.loc 1 263 0
 729 005a E6D0     		beq	.L86
 730              	.LVL90:
 265:../asf/sam/drivers/twihs/twihs.c **** 	}
 731              		.loc 1 265 0
 732 005c 8978     		ldrb	r1, [r1, #2]	@ zero_extendqisi2
 733              	.LVL91:
 734 005e 41EA0222 		orr	r2, r1, r2, lsl #8
 735              	.LVL92:
 736 0062 E2E7     		b	.L86
 737              	.LVL93:
 738              	.L118:
 739              	.LBE53:
 740              	.LBE52:
 741              	.LBE54:
 742              	.LBE55:
 743              	.LBB56:
 744              	.LBB57:
 385:../asf/sam/drivers/twihs/twihs.c **** 			break;
 745              		.loc 1 385 0
 746 0064 5107     		lsls	r1, r2, #29
 747 0066 05D4     		bmi	.L117
 748              	.LVL94:
 749              	.L90:
 380:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_NACK) {
ARM GAS  /tmp/ccsh7mrZ.s 			page 27


 750              		.loc 1 380 0
 751 0068 1A6A     		ldr	r2, [r3, #32]
 752              	.LVL95:
 381:../asf/sam/drivers/twihs/twihs.c **** 			return TWIHS_RECEIVE_NACK;
 753              		.loc 1 381 0
 754 006a D405     		lsls	r4, r2, #23
 755 006c EBD4     		bmi	.L91
 756 006e F9E7     		b	.L118
 757              	.LVL96:
 758              	.L94:
 759              		.cfi_def_cfa_offset 0
 760              		.cfi_restore 4
 761              		.cfi_restore 5
 762              		.cfi_restore 6
 763              		.cfi_restore 7
 764              	.LBE57:
 765              	.LBE56:
 351:../asf/sam/drivers/twihs/twihs.c **** 	}
 766              		.loc 1 351 0
 767 0070 0120     		movs	r0, #1
 768              	.LVL97:
 769 0072 7047     		bx	lr
 770              	.LVL98:
 771              	.L117:
 772              		.cfi_def_cfa_offset 16
 773              		.cfi_offset 4, -16
 774              		.cfi_offset 5, -12
 775              		.cfi_offset 6, -8
 776              		.cfi_offset 7, -4
 777              	.LBB59:
 778              	.LBB58:
 390:../asf/sam/drivers/twihs/twihs.c **** 
 779              		.loc 1 390 0
 780 0074 0222     		movs	r2, #2
 781              	.LVL99:
 782 0076 1A60     		str	r2, [r3]
 783              	.L93:
 392:../asf/sam/drivers/twihs/twihs.c **** 	}
 784              		.loc 1 392 0
 785 0078 1A6A     		ldr	r2, [r3, #32]
 786 007a D207     		lsls	r2, r2, #31
 787 007c FCD5     		bpl	.L93
 788              	.LBE58:
 789              	.LBE59:
 396:../asf/sam/drivers/twihs/twihs.c **** 
 790              		.loc 1 396 0
 791 007e F0BC     		pop	{r4, r5, r6, r7}
 792              		.cfi_restore 4
 793              		.cfi_restore 5
 794              		.cfi_restore 6
 795              		.cfi_restore 7
 796              		.cfi_def_cfa_offset 0
 797 0080 7047     		bx	lr
 798              		.cfi_endproc
 799              	.LFE174:
 800              		.size	twihs_master_write, .-twihs_master_write
 801 0082 00BF     		.section	.text.twihs_probe,"ax",%progbits
ARM GAS  /tmp/ccsh7mrZ.s 			page 28


 802              		.align	1
 803              		.p2align 2,,3
 804              		.global	twihs_probe
 805              		.syntax unified
 806              		.thumb
 807              		.thumb_func
 808              		.fpu fpv5-d16
 809              		.type	twihs_probe, %function
 810              	twihs_probe:
 811              	.LFB171:
 222:../asf/sam/drivers/twihs/twihs.c **** 	twihs_packet_t packet;
 812              		.loc 1 222 0
 813              		.cfi_startproc
 814              		@ args = 0, pretend = 0, frame = 24
 815              		@ frame_needed = 0, uses_anonymous_args = 0
 816              	.LVL100:
 817 0000 10B5     		push	{r4, lr}
 818              		.cfi_def_cfa_offset 8
 819              		.cfi_offset 4, -8
 820              		.cfi_offset 14, -4
 821 0002 86B0     		sub	sp, sp, #24
 822              		.cfi_def_cfa_offset 32
 224:../asf/sam/drivers/twihs/twihs.c **** 
 823              		.loc 1 224 0
 824 0004 0022     		movs	r2, #0
 229:../asf/sam/drivers/twihs/twihs.c **** 	/* Slave chip address */
 825              		.loc 1 229 0
 826 0006 0124     		movs	r4, #1
 224:../asf/sam/drivers/twihs/twihs.c **** 
 827              		.loc 1 224 0
 828 0008 06AB     		add	r3, sp, #24
 231:../asf/sam/drivers/twihs/twihs.c **** 	/* Internal chip address */
 829              		.loc 1 231 0
 830 000a 8DF81410 		strb	r1, [sp, #20]
 238:../asf/sam/drivers/twihs/twihs.c **** }
 831              		.loc 1 238 0
 832 000e 01A9     		add	r1, sp, #4
 833              	.LVL101:
 233:../asf/sam/drivers/twihs/twihs.c **** 	/* Address length */
 834              		.loc 1 233 0
 835 0010 8DF80420 		strb	r2, [sp, #4]
 224:../asf/sam/drivers/twihs/twihs.c **** 
 836              		.loc 1 224 0
 837 0014 03F8152D 		strb	r2, [r3, #-21]!
 235:../asf/sam/drivers/twihs/twihs.c **** 
 838              		.loc 1 235 0
 839 0018 0292     		str	r2, [sp, #8]
 229:../asf/sam/drivers/twihs/twihs.c **** 	/* Slave chip address */
 840              		.loc 1 229 0
 841 001a 0494     		str	r4, [sp, #16]
 227:../asf/sam/drivers/twihs/twihs.c **** 	/* Data length */
 842              		.loc 1 227 0
 843 001c 0393     		str	r3, [sp, #12]
 238:../asf/sam/drivers/twihs/twihs.c **** }
 844              		.loc 1 238 0
 845 001e FFF7FEFF 		bl	twihs_master_write
 846              	.LVL102:
ARM GAS  /tmp/ccsh7mrZ.s 			page 29


 239:../asf/sam/drivers/twihs/twihs.c **** 
 847              		.loc 1 239 0
 848 0022 06B0     		add	sp, sp, #24
 849              		.cfi_def_cfa_offset 8
 850              		@ sp needed
 851 0024 10BD     		pop	{r4, pc}
 852              		.cfi_endproc
 853              	.LFE171:
 854              		.size	twihs_probe, .-twihs_probe
 855 0026 00BF     		.section	.text.twihs_enable_interrupt,"ax",%progbits
 856              		.align	1
 857              		.p2align 2,,3
 858              		.global	twihs_enable_interrupt
 859              		.syntax unified
 860              		.thumb
 861              		.thumb_func
 862              		.fpu fpv5-d16
 863              		.type	twihs_enable_interrupt, %function
 864              	twihs_enable_interrupt:
 865              	.LFB175:
 405:../asf/sam/drivers/twihs/twihs.c **** 	/* Enable the specified interrupts */
 866              		.loc 1 405 0
 867              		.cfi_startproc
 868              		@ args = 0, pretend = 0, frame = 0
 869              		@ frame_needed = 0, uses_anonymous_args = 0
 870              		@ link register save eliminated.
 871              	.LVL103:
 407:../asf/sam/drivers/twihs/twihs.c **** }
 872              		.loc 1 407 0
 873 0000 4162     		str	r1, [r0, #36]
 874 0002 7047     		bx	lr
 875              		.cfi_endproc
 876              	.LFE175:
 877              		.size	twihs_enable_interrupt, .-twihs_enable_interrupt
 878              		.section	.text.twihs_disable_interrupt,"ax",%progbits
 879              		.align	1
 880              		.p2align 2,,3
 881              		.global	twihs_disable_interrupt
 882              		.syntax unified
 883              		.thumb
 884              		.thumb_func
 885              		.fpu fpv5-d16
 886              		.type	twihs_disable_interrupt, %function
 887              	twihs_disable_interrupt:
 888              	.LFB176:
 417:../asf/sam/drivers/twihs/twihs.c **** 	/* Disable the specified interrupts */
 889              		.loc 1 417 0
 890              		.cfi_startproc
 891              		@ args = 0, pretend = 0, frame = 0
 892              		@ frame_needed = 0, uses_anonymous_args = 0
 893              		@ link register save eliminated.
 894              	.LVL104:
 419:../asf/sam/drivers/twihs/twihs.c **** 	/* Dummy read */
 895              		.loc 1 419 0
 896 0000 8162     		str	r1, [r0, #40]
 421:../asf/sam/drivers/twihs/twihs.c **** }
 897              		.loc 1 421 0
ARM GAS  /tmp/ccsh7mrZ.s 			page 30


 898 0002 036A     		ldr	r3, [r0, #32]
 899 0004 7047     		bx	lr
 900              		.cfi_endproc
 901              	.LFE176:
 902              		.size	twihs_disable_interrupt, .-twihs_disable_interrupt
 903              		.section	.text.twihs_get_interrupt_status,"ax",%progbits
 904              		.align	1
 905              		.p2align 2,,3
 906              		.global	twihs_get_interrupt_status
 907              		.syntax unified
 908              		.thumb
 909              		.thumb_func
 910              		.fpu fpv5-d16
 911              		.type	twihs_get_interrupt_status, %function
 912              	twihs_get_interrupt_status:
 913              	.LFB177:
 432:../asf/sam/drivers/twihs/twihs.c **** 	return p_twihs->TWIHS_SR;
 914              		.loc 1 432 0
 915              		.cfi_startproc
 916              		@ args = 0, pretend = 0, frame = 0
 917              		@ frame_needed = 0, uses_anonymous_args = 0
 918              		@ link register save eliminated.
 919              	.LVL105:
 433:../asf/sam/drivers/twihs/twihs.c **** }
 920              		.loc 1 433 0
 921 0000 006A     		ldr	r0, [r0, #32]
 922              	.LVL106:
 434:../asf/sam/drivers/twihs/twihs.c **** 
 923              		.loc 1 434 0
 924 0002 7047     		bx	lr
 925              		.cfi_endproc
 926              	.LFE177:
 927              		.size	twihs_get_interrupt_status, .-twihs_get_interrupt_status
 928              		.section	.text.twihs_get_interrupt_mask,"ax",%progbits
 929              		.align	1
 930              		.p2align 2,,3
 931              		.global	twihs_get_interrupt_mask
 932              		.syntax unified
 933              		.thumb
 934              		.thumb_func
 935              		.fpu fpv5-d16
 936              		.type	twihs_get_interrupt_mask, %function
 937              	twihs_get_interrupt_mask:
 938              	.LFB178:
 444:../asf/sam/drivers/twihs/twihs.c **** 	return p_twihs->TWIHS_IMR;
 939              		.loc 1 444 0
 940              		.cfi_startproc
 941              		@ args = 0, pretend = 0, frame = 0
 942              		@ frame_needed = 0, uses_anonymous_args = 0
 943              		@ link register save eliminated.
 944              	.LVL107:
 445:../asf/sam/drivers/twihs/twihs.c **** }
 945              		.loc 1 445 0
 946 0000 C06A     		ldr	r0, [r0, #44]
 947              	.LVL108:
 446:../asf/sam/drivers/twihs/twihs.c **** 
 948              		.loc 1 446 0
ARM GAS  /tmp/ccsh7mrZ.s 			page 31


 949 0002 7047     		bx	lr
 950              		.cfi_endproc
 951              	.LFE178:
 952              		.size	twihs_get_interrupt_mask, .-twihs_get_interrupt_mask
 953              		.section	.text.twihs_read_byte,"ax",%progbits
 954              		.align	1
 955              		.p2align 2,,3
 956              		.global	twihs_read_byte
 957              		.syntax unified
 958              		.thumb
 959              		.thumb_func
 960              		.fpu fpv5-d16
 961              		.type	twihs_read_byte, %function
 962              	twihs_read_byte:
 963              	.LFB179:
 456:../asf/sam/drivers/twihs/twihs.c **** 	return p_twihs->TWIHS_RHR;
 964              		.loc 1 456 0
 965              		.cfi_startproc
 966              		@ args = 0, pretend = 0, frame = 0
 967              		@ frame_needed = 0, uses_anonymous_args = 0
 968              		@ link register save eliminated.
 969              	.LVL109:
 457:../asf/sam/drivers/twihs/twihs.c **** }
 970              		.loc 1 457 0
 971 0000 006B     		ldr	r0, [r0, #48]
 972              	.LVL110:
 458:../asf/sam/drivers/twihs/twihs.c **** 
 973              		.loc 1 458 0
 974 0002 C0B2     		uxtb	r0, r0
 975 0004 7047     		bx	lr
 976              		.cfi_endproc
 977              	.LFE179:
 978              		.size	twihs_read_byte, .-twihs_read_byte
 979 0006 00BF     		.section	.text.twihs_write_byte,"ax",%progbits
 980              		.align	1
 981              		.p2align 2,,3
 982              		.global	twihs_write_byte
 983              		.syntax unified
 984              		.thumb
 985              		.thumb_func
 986              		.fpu fpv5-d16
 987              		.type	twihs_write_byte, %function
 988              	twihs_write_byte:
 989              	.LFB180:
 467:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_THR = uc_byte;
 990              		.loc 1 467 0
 991              		.cfi_startproc
 992              		@ args = 0, pretend = 0, frame = 0
 993              		@ frame_needed = 0, uses_anonymous_args = 0
 994              		@ link register save eliminated.
 995              	.LVL111:
 468:../asf/sam/drivers/twihs/twihs.c **** }
 996              		.loc 1 468 0
 997 0000 4163     		str	r1, [r0, #52]
 998 0002 7047     		bx	lr
 999              		.cfi_endproc
 1000              	.LFE180:
ARM GAS  /tmp/ccsh7mrZ.s 			page 32


 1001              		.size	twihs_write_byte, .-twihs_write_byte
 1002              		.section	.text.twihs_enable_slave_mode,"ax",%progbits
 1003              		.align	1
 1004              		.p2align 2,,3
 1005              		.global	twihs_enable_slave_mode
 1006              		.syntax unified
 1007              		.thumb
 1008              		.thumb_func
 1009              		.fpu fpv5-d16
 1010              		.type	twihs_enable_slave_mode, %function
 1011              	twihs_enable_slave_mode:
 1012              	.LFB181:
 477:../asf/sam/drivers/twihs/twihs.c **** 	/* Set Master Disable bit and Slave Disable bit */
 1013              		.loc 1 477 0
 1014              		.cfi_startproc
 1015              		@ args = 0, pretend = 0, frame = 0
 1016              		@ frame_needed = 0, uses_anonymous_args = 0
 1017              		@ link register save eliminated.
 1018              	.LVL112:
 479:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_SVDIS;
 1019              		.loc 1 479 0
 1020 0000 0821     		movs	r1, #8
 480:../asf/sam/drivers/twihs/twihs.c **** 
 1021              		.loc 1 480 0
 1022 0002 2022     		movs	r2, #32
 483:../asf/sam/drivers/twihs/twihs.c **** }
 1023              		.loc 1 483 0
 1024 0004 1023     		movs	r3, #16
 479:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_SVDIS;
 1025              		.loc 1 479 0
 1026 0006 0160     		str	r1, [r0]
 480:../asf/sam/drivers/twihs/twihs.c **** 
 1027              		.loc 1 480 0
 1028 0008 0260     		str	r2, [r0]
 483:../asf/sam/drivers/twihs/twihs.c **** }
 1029              		.loc 1 483 0
 1030 000a 0360     		str	r3, [r0]
 1031 000c 7047     		bx	lr
 1032              		.cfi_endproc
 1033              	.LFE181:
 1034              		.size	twihs_enable_slave_mode, .-twihs_enable_slave_mode
 1035 000e 00BF     		.section	.text.twihs_disable_slave_mode,"ax",%progbits
 1036              		.align	1
 1037              		.p2align 2,,3
 1038              		.global	twihs_disable_slave_mode
 1039              		.syntax unified
 1040              		.thumb
 1041              		.thumb_func
 1042              		.fpu fpv5-d16
 1043              		.type	twihs_disable_slave_mode, %function
 1044              	twihs_disable_slave_mode:
 1045              	.LFB182:
 492:../asf/sam/drivers/twihs/twihs.c **** 	/* Set Slave Disable bit */
 1046              		.loc 1 492 0
 1047              		.cfi_startproc
 1048              		@ args = 0, pretend = 0, frame = 0
 1049              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccsh7mrZ.s 			page 33


 1050              		@ link register save eliminated.
 1051              	.LVL113:
 494:../asf/sam/drivers/twihs/twihs.c **** }
 1052              		.loc 1 494 0
 1053 0000 2023     		movs	r3, #32
 1054 0002 0360     		str	r3, [r0]
 1055 0004 7047     		bx	lr
 1056              		.cfi_endproc
 1057              	.LFE182:
 1058              		.size	twihs_disable_slave_mode, .-twihs_disable_slave_mode
 1059 0006 00BF     		.section	.text.twihs_slave_init,"ax",%progbits
 1060              		.align	1
 1061              		.p2align 2,,3
 1062              		.global	twihs_slave_init
 1063              		.syntax unified
 1064              		.thumb
 1065              		.thumb_func
 1066              		.fpu fpv5-d16
 1067              		.type	twihs_slave_init, %function
 1068              	twihs_slave_init:
 1069              	.LFB183:
 504:../asf/sam/drivers/twihs/twihs.c **** 	/* Disable TWIHS interrupts */
 1070              		.loc 1 504 0
 1071              		.cfi_startproc
 1072              		@ args = 0, pretend = 0, frame = 0
 1073              		@ frame_needed = 0, uses_anonymous_args = 0
 1074              		@ link register save eliminated.
 1075              	.LVL114:
 513:../asf/sam/drivers/twihs/twihs.c **** 
 1076              		.loc 1 513 0
 1077 0000 0904     		lsls	r1, r1, #16
 1078              	.LVL115:
 1079              	.LBB60:
 1080              	.LBB61:
 480:../asf/sam/drivers/twihs/twihs.c **** 
 1081              		.loc 1 480 0
 1082 0002 2022     		movs	r2, #32
 483:../asf/sam/drivers/twihs/twihs.c **** }
 1083              		.loc 1 483 0
 1084 0004 1023     		movs	r3, #16
 1085              	.LBE61:
 1086              	.LBE60:
 513:../asf/sam/drivers/twihs/twihs.c **** 
 1087              		.loc 1 513 0
 1088 0006 01F4FE01 		and	r1, r1, #8323072
 504:../asf/sam/drivers/twihs/twihs.c **** 	/* Disable TWIHS interrupts */
 1089              		.loc 1 504 0
 1090 000a 70B4     		push	{r4, r5, r6}
 1091              		.cfi_def_cfa_offset 12
 1092              		.cfi_offset 4, -12
 1093              		.cfi_offset 5, -8
 1094              		.cfi_offset 6, -4
 506:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_SR;
 1095              		.loc 1 506 0
 1096 000c 4FF0FF36 		mov	r6, #-1
 1097              	.LBB64:
 1098              	.LBB65:
ARM GAS  /tmp/ccsh7mrZ.s 			page 34


 602:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_RHR;
 1099              		.loc 1 602 0
 1100 0010 8025     		movs	r5, #128
 1101              	.LBE65:
 1102              	.LBE64:
 1103              	.LBB67:
 1104              	.LBB62:
 479:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_SVDIS;
 1105              		.loc 1 479 0
 1106 0012 0824     		movs	r4, #8
 1107              	.LBE62:
 1108              	.LBE67:
 506:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_SR;
 1109              		.loc 1 506 0
 1110 0014 8662     		str	r6, [r0, #40]
 507:../asf/sam/drivers/twihs/twihs.c **** 
 1111              		.loc 1 507 0
 1112 0016 066A     		ldr	r6, [r0, #32]
 1113              	.LVL116:
 1114              	.LBB68:
 1115              	.LBB66:
 602:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_RHR;
 1116              		.loc 1 602 0
 1117 0018 0560     		str	r5, [r0]
 1118              		.loc 1 603 0
 1119 001a 056B     		ldr	r5, [r0, #48]
 1120              	.LVL117:
 1121              	.LBE66:
 1122              	.LBE68:
 513:../asf/sam/drivers/twihs/twihs.c **** 
 1123              		.loc 1 513 0
 1124 001c 8160     		str	r1, [r0, #8]
 1125              	.LVL118:
 1126              	.LBB69:
 1127              	.LBB63:
 479:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_CR = TWIHS_CR_SVDIS;
 1128              		.loc 1 479 0
 1129 001e 0460     		str	r4, [r0]
 480:../asf/sam/drivers/twihs/twihs.c **** 
 1130              		.loc 1 480 0
 1131 0020 0260     		str	r2, [r0]
 483:../asf/sam/drivers/twihs/twihs.c **** }
 1132              		.loc 1 483 0
 1133 0022 0360     		str	r3, [r0]
 1134              	.LVL119:
 1135              	.LBE63:
 1136              	.LBE69:
 517:../asf/sam/drivers/twihs/twihs.c **** 
 1137              		.loc 1 517 0
 1138 0024 70BC     		pop	{r4, r5, r6}
 1139              		.cfi_restore 6
 1140              		.cfi_restore 5
 1141              		.cfi_restore 4
 1142              		.cfi_def_cfa_offset 0
 1143 0026 7047     		bx	lr
 1144              		.cfi_endproc
 1145              	.LFE183:
ARM GAS  /tmp/ccsh7mrZ.s 			page 35


 1146              		.size	twihs_slave_init, .-twihs_slave_init
 1147              		.section	.text.twihs_set_slave_addr,"ax",%progbits
 1148              		.align	1
 1149              		.p2align 2,,3
 1150              		.global	twihs_set_slave_addr
 1151              		.syntax unified
 1152              		.thumb
 1153              		.thumb_func
 1154              		.fpu fpv5-d16
 1155              		.type	twihs_set_slave_addr, %function
 1156              	twihs_set_slave_addr:
 1157              	.LFB184:
 526:../asf/sam/drivers/twihs/twihs.c **** 	/* Set slave address */
 1158              		.loc 1 526 0
 1159              		.cfi_startproc
 1160              		@ args = 0, pretend = 0, frame = 0
 1161              		@ frame_needed = 0, uses_anonymous_args = 0
 1162              		@ link register save eliminated.
 1163              	.LVL120:
 528:../asf/sam/drivers/twihs/twihs.c **** }
 1164              		.loc 1 528 0
 1165 0000 0904     		lsls	r1, r1, #16
 1166              	.LVL121:
 1167 0002 01F4FE01 		and	r1, r1, #8323072
 1168 0006 8160     		str	r1, [r0, #8]
 1169 0008 7047     		bx	lr
 1170              		.cfi_endproc
 1171              	.LFE184:
 1172              		.size	twihs_set_slave_addr, .-twihs_set_slave_addr
 1173 000a 00BF     		.section	.text.twihs_slave_read,"ax",%progbits
 1174              		.align	1
 1175              		.p2align 2,,3
 1176              		.global	twihs_slave_read
 1177              		.syntax unified
 1178              		.thumb
 1179              		.thumb_func
 1180              		.fpu fpv5-d16
 1181              		.type	twihs_slave_read, %function
 1182              	twihs_slave_read:
 1183              	.LFB185:
 542:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t status, cnt = 0;
 1184              		.loc 1 542 0
 1185              		.cfi_startproc
 1186              		@ args = 0, pretend = 0, frame = 0
 1187              		@ frame_needed = 0, uses_anonymous_args = 0
 1188              		@ link register save eliminated.
 1189              	.LVL122:
 1190 0000 30B4     		push	{r4, r5}
 1191              		.cfi_def_cfa_offset 8
 1192              		.cfi_offset 4, -8
 1193              		.cfi_offset 5, -4
 543:../asf/sam/drivers/twihs/twihs.c **** 
 1194              		.loc 1 543 0
 1195 0002 0025     		movs	r5, #0
 553:../asf/sam/drivers/twihs/twihs.c **** 					== (TWIHS_SR_EOSACC | TWIHS_SR_TXCOMP)) {
 1196              		.loc 1 553 0
 1197 0004 40F60104 		movw	r4, #2049
ARM GAS  /tmp/ccsh7mrZ.s 			page 36


 1198              	.LVL123:
 1199              	.L133:
 546:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_SVACC) {
 1200              		.loc 1 546 0
 1201 0008 036A     		ldr	r3, [r0, #32]
 1202              	.LVL124:
 547:../asf/sam/drivers/twihs/twihs.c **** 			if (!(status & (TWIHS_SR_GACC | TWIHS_SR_SVREAD)) &&
 1203              		.loc 1 547 0
 1204 000a 13F0100F 		tst	r3, #16
 548:../asf/sam/drivers/twihs/twihs.c **** 			(status & TWIHS_SR_RXRDY)) {
 1205              		.loc 1 548 0
 1206 000e 03F02A02 		and	r2, r3, #42
 547:../asf/sam/drivers/twihs/twihs.c **** 			if (!(status & (TWIHS_SR_GACC | TWIHS_SR_SVREAD)) &&
 1207              		.loc 1 547 0
 1208 0012 0CD0     		beq	.L134
 1209              	.L137:
 548:../asf/sam/drivers/twihs/twihs.c **** 			(status & TWIHS_SR_RXRDY)) {
 1210              		.loc 1 548 0
 1211 0014 022A     		cmp	r2, #2
 1212 0016 F7D1     		bne	.L133
 1213              	.LVL125:
 550:../asf/sam/drivers/twihs/twihs.c **** 				cnt++;
 1214              		.loc 1 550 0
 1215 0018 036B     		ldr	r3, [r0, #48]
 1216              	.LVL126:
 551:../asf/sam/drivers/twihs/twihs.c **** 			}
 1217              		.loc 1 551 0
 1218 001a 0135     		adds	r5, r5, #1
 1219              	.LVL127:
 550:../asf/sam/drivers/twihs/twihs.c **** 				cnt++;
 1220              		.loc 1 550 0
 1221 001c 0131     		adds	r1, r1, #1
 1222              	.LVL128:
 1223 001e 01F8013C 		strb	r3, [r1, #-1]
 546:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_SVACC) {
 1224              		.loc 1 546 0
 1225 0022 036A     		ldr	r3, [r0, #32]
 1226              	.LVL129:
 547:../asf/sam/drivers/twihs/twihs.c **** 			if (!(status & (TWIHS_SR_GACC | TWIHS_SR_SVREAD)) &&
 1227              		.loc 1 547 0
 1228 0024 13F0100F 		tst	r3, #16
 548:../asf/sam/drivers/twihs/twihs.c **** 			(status & TWIHS_SR_RXRDY)) {
 1229              		.loc 1 548 0
 1230 0028 03F02A02 		and	r2, r3, #42
 547:../asf/sam/drivers/twihs/twihs.c **** 			if (!(status & (TWIHS_SR_GACC | TWIHS_SR_SVREAD)) &&
 1231              		.loc 1 547 0
 1232 002c F2D1     		bne	.L137
 1233              	.L134:
 553:../asf/sam/drivers/twihs/twihs.c **** 					== (TWIHS_SR_EOSACC | TWIHS_SR_TXCOMP)) {
 1234              		.loc 1 553 0
 1235 002e 34EA0303 		bics	r3, r4, r3
 1236              	.LVL130:
 1237 0032 E9D1     		bne	.L133
 560:../asf/sam/drivers/twihs/twihs.c **** 
 1238              		.loc 1 560 0
 1239 0034 2846     		mov	r0, r5
 1240              	.LVL131:
ARM GAS  /tmp/ccsh7mrZ.s 			page 37


 1241 0036 30BC     		pop	{r4, r5}
 1242              		.cfi_restore 5
 1243              		.cfi_restore 4
 1244              		.cfi_def_cfa_offset 0
 1245              	.LVL132:
 1246 0038 7047     		bx	lr
 1247              		.cfi_endproc
 1248              	.LFE185:
 1249              		.size	twihs_slave_read, .-twihs_slave_read
 1250 003a 00BF     		.section	.text.twihs_slave_write,"ax",%progbits
 1251              		.align	1
 1252              		.p2align 2,,3
 1253              		.global	twihs_slave_write
 1254              		.syntax unified
 1255              		.thumb
 1256              		.thumb_func
 1257              		.fpu fpv5-d16
 1258              		.type	twihs_slave_write, %function
 1259              	twihs_slave_write:
 1260              	.LFB186:
 573:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t status, cnt = 0;
 1261              		.loc 1 573 0
 1262              		.cfi_startproc
 1263              		@ args = 0, pretend = 0, frame = 0
 1264              		@ frame_needed = 0, uses_anonymous_args = 0
 1265              		@ link register save eliminated.
 1266              	.LVL133:
 1267 0000 30B4     		push	{r4, r5}
 1268              		.cfi_def_cfa_offset 8
 1269              		.cfi_offset 4, -8
 1270              		.cfi_offset 5, -4
 574:../asf/sam/drivers/twihs/twihs.c **** 
 1271              		.loc 1 574 0
 1272 0002 0025     		movs	r5, #0
 585:../asf/sam/drivers/twihs/twihs.c **** 					== (TWIHS_SR_EOSACC | TWIHS_SR_TXCOMP)) {
 1273              		.loc 1 585 0
 1274 0004 40F60104 		movw	r4, #2049
 1275              	.LVL134:
 1276              	.L139:
 577:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_SVACC) {
 1277              		.loc 1 577 0
 1278 0008 036A     		ldr	r3, [r0, #32]
 1279              	.LVL135:
 578:../asf/sam/drivers/twihs/twihs.c **** 			if (!(status & (TWIHS_SR_GACC | TWIHS_SR_NACK)) &&
 1280              		.loc 1 578 0
 1281 000a 13F0100F 		tst	r3, #16
 579:../asf/sam/drivers/twihs/twihs.c **** 			((status & (TWIHS_SR_SVREAD | TWIHS_SR_TXRDY))
 1282              		.loc 1 579 0
 1283 000e 03F49672 		and	r2, r3, #300
 578:../asf/sam/drivers/twihs/twihs.c **** 			if (!(status & (TWIHS_SR_GACC | TWIHS_SR_NACK)) &&
 1284              		.loc 1 578 0
 1285 0012 0BD0     		beq	.L140
 1286              	.L143:
 579:../asf/sam/drivers/twihs/twihs.c **** 			((status & (TWIHS_SR_SVREAD | TWIHS_SR_TXRDY))
 1287              		.loc 1 579 0
 1288 0014 0C2A     		cmp	r2, #12
 1289 0016 F7D1     		bne	.L139
ARM GAS  /tmp/ccsh7mrZ.s 			page 38


 1290              	.LVL136:
 582:../asf/sam/drivers/twihs/twihs.c **** 				cnt++;
 1291              		.loc 1 582 0
 1292 0018 0B78     		ldrb	r3, [r1]	@ zero_extendqisi2
 1293              	.LVL137:
 583:../asf/sam/drivers/twihs/twihs.c **** 			}
 1294              		.loc 1 583 0
 1295 001a 0135     		adds	r5, r5, #1
 1296              	.LVL138:
 582:../asf/sam/drivers/twihs/twihs.c **** 				cnt++;
 1297              		.loc 1 582 0
 1298 001c 0131     		adds	r1, r1, #1
 1299              	.LVL139:
 1300 001e 4363     		str	r3, [r0, #52]
 577:../asf/sam/drivers/twihs/twihs.c **** 		if (status & TWIHS_SR_SVACC) {
 1301              		.loc 1 577 0
 1302 0020 036A     		ldr	r3, [r0, #32]
 1303              	.LVL140:
 578:../asf/sam/drivers/twihs/twihs.c **** 			if (!(status & (TWIHS_SR_GACC | TWIHS_SR_NACK)) &&
 1304              		.loc 1 578 0
 1305 0022 13F0100F 		tst	r3, #16
 579:../asf/sam/drivers/twihs/twihs.c **** 			((status & (TWIHS_SR_SVREAD | TWIHS_SR_TXRDY))
 1306              		.loc 1 579 0
 1307 0026 03F49672 		and	r2, r3, #300
 578:../asf/sam/drivers/twihs/twihs.c **** 			if (!(status & (TWIHS_SR_GACC | TWIHS_SR_NACK)) &&
 1308              		.loc 1 578 0
 1309 002a F3D1     		bne	.L143
 1310              	.L140:
 585:../asf/sam/drivers/twihs/twihs.c **** 					== (TWIHS_SR_EOSACC | TWIHS_SR_TXCOMP)) {
 1311              		.loc 1 585 0
 1312 002c 34EA0303 		bics	r3, r4, r3
 1313              	.LVL141:
 1314 0030 EAD1     		bne	.L139
 592:../asf/sam/drivers/twihs/twihs.c **** 
 1315              		.loc 1 592 0
 1316 0032 2846     		mov	r0, r5
 1317              	.LVL142:
 1318 0034 30BC     		pop	{r4, r5}
 1319              		.cfi_restore 5
 1320              		.cfi_restore 4
 1321              		.cfi_def_cfa_offset 0
 1322              	.LVL143:
 1323 0036 7047     		bx	lr
 1324              		.cfi_endproc
 1325              	.LFE186:
 1326              		.size	twihs_slave_write, .-twihs_slave_write
 1327              		.section	.text.twihs_reset,"ax",%progbits
 1328              		.align	1
 1329              		.p2align 2,,3
 1330              		.global	twihs_reset
 1331              		.syntax unified
 1332              		.thumb
 1333              		.thumb_func
 1334              		.fpu fpv5-d16
 1335              		.type	twihs_reset, %function
 1336              	twihs_reset:
 1337              	.LFB187:
ARM GAS  /tmp/ccsh7mrZ.s 			page 39


 600:../asf/sam/drivers/twihs/twihs.c **** 	/* Set SWRST bit to reset TWIHS peripheral */
 1338              		.loc 1 600 0
 1339              		.cfi_startproc
 1340              		@ args = 0, pretend = 0, frame = 0
 1341              		@ frame_needed = 0, uses_anonymous_args = 0
 1342              		@ link register save eliminated.
 1343              	.LVL144:
 602:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_RHR;
 1344              		.loc 1 602 0
 1345 0000 8023     		movs	r3, #128
 1346 0002 0360     		str	r3, [r0]
 1347              		.loc 1 603 0
 1348 0004 036B     		ldr	r3, [r0, #48]
 1349 0006 7047     		bx	lr
 1350              		.cfi_endproc
 1351              	.LFE187:
 1352              		.size	twihs_reset, .-twihs_reset
 1353              		.section	.text.twihs_set_write_protection,"ax",%progbits
 1354              		.align	1
 1355              		.p2align 2,,3
 1356              		.global	twihs_set_write_protection
 1357              		.syntax unified
 1358              		.thumb
 1359              		.thumb_func
 1360              		.fpu fpv5-d16
 1361              		.type	twihs_set_write_protection, %function
 1362              	twihs_set_write_protection:
 1363              	.LFB188:
 604:../asf/sam/drivers/twihs/twihs.c **** }
 605:../asf/sam/drivers/twihs/twihs.c **** 
 606:../asf/sam/drivers/twihs/twihs.c **** #if !(SAMV70 || SAMV71 || SAME70 || SAMS70)
 607:../asf/sam/drivers/twihs/twihs.c **** /**
 608:../asf/sam/drivers/twihs/twihs.c ****  * \brief Get TWIHS PDC base address.
 609:../asf/sam/drivers/twihs/twihs.c ****  *
 610:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 611:../asf/sam/drivers/twihs/twihs.c ****  *
 612:../asf/sam/drivers/twihs/twihs.c ****  * \return TWIHS PDC registers base for PDC driver to access.
 613:../asf/sam/drivers/twihs/twihs.c ****  */
 614:../asf/sam/drivers/twihs/twihs.c **** Pdc *twihs_get_pdc_base(Twihs *p_twihs)
 615:../asf/sam/drivers/twihs/twihs.c **** {
 616:../asf/sam/drivers/twihs/twihs.c **** 	Pdc *p_pdc_base = NULL;
 617:../asf/sam/drivers/twihs/twihs.c **** 
 618:../asf/sam/drivers/twihs/twihs.c **** 	if (p_twihs == TWI0) {
 619:../asf/sam/drivers/twihs/twihs.c **** 		p_pdc_base = PDC_TWI0;
 620:../asf/sam/drivers/twihs/twihs.c **** 	} else {
 621:../asf/sam/drivers/twihs/twihs.c **** 		Assert(false);
 622:../asf/sam/drivers/twihs/twihs.c **** 	}
 623:../asf/sam/drivers/twihs/twihs.c **** 
 624:../asf/sam/drivers/twihs/twihs.c **** 	return p_pdc_base;
 625:../asf/sam/drivers/twihs/twihs.c **** }
 626:../asf/sam/drivers/twihs/twihs.c **** #endif
 627:../asf/sam/drivers/twihs/twihs.c **** 
 628:../asf/sam/drivers/twihs/twihs.c **** /**
 629:../asf/sam/drivers/twihs/twihs.c ****  * \brief Enables/Disables write protection mode.
 630:../asf/sam/drivers/twihs/twihs.c ****  *
 631:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 632:../asf/sam/drivers/twihs/twihs.c ****  * \param flag ture for enable, false for disable.
ARM GAS  /tmp/ccsh7mrZ.s 			page 40


 633:../asf/sam/drivers/twihs/twihs.c ****  */
 634:../asf/sam/drivers/twihs/twihs.c **** void twihs_set_write_protection(Twihs *p_twihs, bool flag)
 635:../asf/sam/drivers/twihs/twihs.c **** {
 1364              		.loc 1 635 0
 1365              		.cfi_startproc
 1366              		@ args = 0, pretend = 0, frame = 0
 1367              		@ frame_needed = 0, uses_anonymous_args = 0
 1368              		@ link register save eliminated.
 1369              	.LVL145:
 636:../asf/sam/drivers/twihs/twihs.c **** 	if (flag) {
 1370              		.loc 1 636 0
 1371 0000 19B9     		cbnz	r1, .L148
 637:../asf/sam/drivers/twihs/twihs.c **** 		p_twihs->TWIHS_WPMR = TWIHS_WPMR_WPKEY_PASSWD | TWIHS_WPMR_WPEN;
 638:../asf/sam/drivers/twihs/twihs.c **** 	} else {
 639:../asf/sam/drivers/twihs/twihs.c **** 		p_twihs->TWIHS_WPMR = TWIHS_WPMR_WPKEY_PASSWD;
 1372              		.loc 1 639 0
 1373 0002 044B     		ldr	r3, .L149
 1374 0004 C0F8E430 		str	r3, [r0, #228]
 1375 0008 7047     		bx	lr
 1376              	.L148:
 637:../asf/sam/drivers/twihs/twihs.c **** 		p_twihs->TWIHS_WPMR = TWIHS_WPMR_WPKEY_PASSWD | TWIHS_WPMR_WPEN;
 1377              		.loc 1 637 0
 1378 000a 034B     		ldr	r3, .L149+4
 1379 000c C0F8E430 		str	r3, [r0, #228]
 1380 0010 7047     		bx	lr
 1381              	.L150:
 1382 0012 00BF     		.align	2
 1383              	.L149:
 1384 0014 00495754 		.word	1415006464
 1385 0018 01495754 		.word	1415006465
 1386              		.cfi_endproc
 1387              	.LFE188:
 1388              		.size	twihs_set_write_protection, .-twihs_set_write_protection
 1389              		.section	.text.twihs_read_write_protection_status,"ax",%progbits
 1390              		.align	1
 1391              		.p2align 2,,3
 1392              		.global	twihs_read_write_protection_status
 1393              		.syntax unified
 1394              		.thumb
 1395              		.thumb_func
 1396              		.fpu fpv5-d16
 1397              		.type	twihs_read_write_protection_status, %function
 1398              	twihs_read_write_protection_status:
 1399              	.LFB189:
 640:../asf/sam/drivers/twihs/twihs.c **** 	}
 641:../asf/sam/drivers/twihs/twihs.c **** }
 642:../asf/sam/drivers/twihs/twihs.c **** 
 643:../asf/sam/drivers/twihs/twihs.c **** /**
 644:../asf/sam/drivers/twihs/twihs.c ****  * \brief Read the write protection status.
 645:../asf/sam/drivers/twihs/twihs.c ****  *
 646:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 647:../asf/sam/drivers/twihs/twihs.c ****  * \param p_status Pointer to save the status.
 648:../asf/sam/drivers/twihs/twihs.c ****  */
 649:../asf/sam/drivers/twihs/twihs.c **** void twihs_read_write_protection_status(Twihs *p_twihs, uint32_t *p_status)
 650:../asf/sam/drivers/twihs/twihs.c **** {
 1400              		.loc 1 650 0
 1401              		.cfi_startproc
ARM GAS  /tmp/ccsh7mrZ.s 			page 41


 1402              		@ args = 0, pretend = 0, frame = 0
 1403              		@ frame_needed = 0, uses_anonymous_args = 0
 1404              		@ link register save eliminated.
 1405              	.LVL146:
 651:../asf/sam/drivers/twihs/twihs.c **** 	*p_status = p_twihs->TWIHS_WPSR;
 1406              		.loc 1 651 0
 1407 0000 D0F8E830 		ldr	r3, [r0, #232]
 1408 0004 0B60     		str	r3, [r1]
 1409 0006 7047     		bx	lr
 1410              		.cfi_endproc
 1411              	.LFE189:
 1412              		.size	twihs_read_write_protection_status, .-twihs_read_write_protection_status
 1413              		.section	.text.twihs_smbus_set_timing,"ax",%progbits
 1414              		.align	1
 1415              		.p2align 2,,3
 1416              		.global	twihs_smbus_set_timing
 1417              		.syntax unified
 1418              		.thumb
 1419              		.thumb_func
 1420              		.fpu fpv5-d16
 1421              		.type	twihs_smbus_set_timing, %function
 1422              	twihs_smbus_set_timing:
 1423              	.LFB190:
 652:../asf/sam/drivers/twihs/twihs.c **** }
 653:../asf/sam/drivers/twihs/twihs.c **** 
 654:../asf/sam/drivers/twihs/twihs.c **** /**
 655:../asf/sam/drivers/twihs/twihs.c ****  * \brief Set the prescaler, TLOW:SEXT, TLOW:MEXT and clock high max cycles for SMBUS mode.
 656:../asf/sam/drivers/twihs/twihs.c ****  *
 657:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs   Base address of the TWIHS instance.
 658:../asf/sam/drivers/twihs/twihs.c ****  * \param ul_timing Parameter for prescaler, TLOW:SEXT, TLOW:MEXT and clock high max cycles.
 659:../asf/sam/drivers/twihs/twihs.c ****  */
 660:../asf/sam/drivers/twihs/twihs.c **** void twihs_smbus_set_timing(Twihs *p_twihs, uint32_t ul_timing)
 661:../asf/sam/drivers/twihs/twihs.c **** {
 1424              		.loc 1 661 0
 1425              		.cfi_startproc
 1426              		@ args = 0, pretend = 0, frame = 0
 1427              		@ frame_needed = 0, uses_anonymous_args = 0
 1428              		@ link register save eliminated.
 1429              	.LVL147:
 662:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_SMBTR = ul_timing;;
 1430              		.loc 1 662 0
 1431 0000 8163     		str	r1, [r0, #56]
 1432 0002 7047     		bx	lr
 1433              		.cfi_endproc
 1434              	.LFE190:
 1435              		.size	twihs_smbus_set_timing, .-twihs_smbus_set_timing
 1436              		.section	.text.twihs_set_filter,"ax",%progbits
 1437              		.align	1
 1438              		.p2align 2,,3
 1439              		.global	twihs_set_filter
 1440              		.syntax unified
 1441              		.thumb
 1442              		.thumb_func
 1443              		.fpu fpv5-d16
 1444              		.type	twihs_set_filter, %function
 1445              	twihs_set_filter:
 1446              	.LFB191:
ARM GAS  /tmp/ccsh7mrZ.s 			page 42


 663:../asf/sam/drivers/twihs/twihs.c **** }
 664:../asf/sam/drivers/twihs/twihs.c **** 
 665:../asf/sam/drivers/twihs/twihs.c **** #if !(SAMV70 || SAMV71 || SAME70 || SAMS70)
 666:../asf/sam/drivers/twihs/twihs.c **** /**
 667:../asf/sam/drivers/twihs/twihs.c ****  * \brief Set length/direction/PEC for alternative command mode.
 668:../asf/sam/drivers/twihs/twihs.c ****  *
 669:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs   Base address of the TWIHS instance.
 670:../asf/sam/drivers/twihs/twihs.c ****  * \param ul_alt_cmd Alternative command parameters.
 671:../asf/sam/drivers/twihs/twihs.c ****  */
 672:../asf/sam/drivers/twihs/twihs.c **** void twihs_set_alternative_command(Twihs *p_twihs, uint32_t ul_alt_cmd)
 673:../asf/sam/drivers/twihs/twihs.c **** {
 674:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_ACR = ul_alt_cmd;;
 675:../asf/sam/drivers/twihs/twihs.c **** }
 676:../asf/sam/drivers/twihs/twihs.c **** #endif
 677:../asf/sam/drivers/twihs/twihs.c **** 
 678:../asf/sam/drivers/twihs/twihs.c **** /**
 679:../asf/sam/drivers/twihs/twihs.c ****  * \brief Set the filter for TWIHS.
 680:../asf/sam/drivers/twihs/twihs.c ****  *
 681:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs   Base address of the TWIHS instance.
 682:../asf/sam/drivers/twihs/twihs.c ****  * \param ul_filter   Filter value.
 683:../asf/sam/drivers/twihs/twihs.c ****  */
 684:../asf/sam/drivers/twihs/twihs.c **** void twihs_set_filter(Twihs *p_twihs, uint32_t ul_filter)
 685:../asf/sam/drivers/twihs/twihs.c **** {
 1447              		.loc 1 685 0
 1448              		.cfi_startproc
 1449              		@ args = 0, pretend = 0, frame = 0
 1450              		@ frame_needed = 0, uses_anonymous_args = 0
 1451              		@ link register save eliminated.
 1452              	.LVL148:
 686:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_FILTR = ul_filter;;
 1453              		.loc 1 686 0
 1454 0000 4164     		str	r1, [r0, #68]
 1455 0002 7047     		bx	lr
 1456              		.cfi_endproc
 1457              	.LFE191:
 1458              		.size	twihs_set_filter, .-twihs_set_filter
 1459              		.section	.text.twihs_mask_slave_addr,"ax",%progbits
 1460              		.align	1
 1461              		.p2align 2,,3
 1462              		.global	twihs_mask_slave_addr
 1463              		.syntax unified
 1464              		.thumb
 1465              		.thumb_func
 1466              		.fpu fpv5-d16
 1467              		.type	twihs_mask_slave_addr, %function
 1468              	twihs_mask_slave_addr:
 1469              	.LFB192:
 687:../asf/sam/drivers/twihs/twihs.c **** }
 688:../asf/sam/drivers/twihs/twihs.c **** 
 689:../asf/sam/drivers/twihs/twihs.c **** /**
 690:../asf/sam/drivers/twihs/twihs.c ****  * \brief A mask can be applied on the slave device address in slave mode in order to allow multipl
 691:../asf/sam/drivers/twihs/twihs.c ****  * address answer. For each bit of the MASK field set to one the corresponding SADR bit will be mas
 692:../asf/sam/drivers/twihs/twihs.c ****  *
 693:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs   Base address of the TWIHS instance.
 694:../asf/sam/drivers/twihs/twihs.c ****  * \param ul_mask  Mask value.
 695:../asf/sam/drivers/twihs/twihs.c ****  */
 696:../asf/sam/drivers/twihs/twihs.c **** void twihs_mask_slave_addr(Twihs *p_twihs, uint32_t ul_mask)
ARM GAS  /tmp/ccsh7mrZ.s 			page 43


 697:../asf/sam/drivers/twihs/twihs.c **** {
 1470              		.loc 1 697 0
 1471              		.cfi_startproc
 1472              		@ args = 0, pretend = 0, frame = 0
 1473              		@ frame_needed = 0, uses_anonymous_args = 0
 1474              		@ link register save eliminated.
 1475              	.LVL149:
 698:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_SMR |= TWIHS_SMR_MASK(ul_mask);
 1476              		.loc 1 698 0
 1477 0000 0902     		lsls	r1, r1, #8
 1478              	.LVL150:
 1479 0002 8368     		ldr	r3, [r0, #8]
 1480 0004 01F4FE41 		and	r1, r1, #32512
 1481 0008 1943     		orrs	r1, r1, r3
 1482 000a 8160     		str	r1, [r0, #8]
 1483 000c 7047     		bx	lr
 1484              		.cfi_endproc
 1485              	.LFE192:
 1486              		.size	twihs_mask_slave_addr, .-twihs_mask_slave_addr
 1487 000e 00BF     		.section	.text.twihs_set_sleepwalking,"ax",%progbits
 1488              		.align	1
 1489              		.p2align 2,,3
 1490              		.global	twihs_set_sleepwalking
 1491              		.syntax unified
 1492              		.thumb
 1493              		.thumb_func
 1494              		.fpu fpv5-d16
 1495              		.type	twihs_set_sleepwalking, %function
 1496              	twihs_set_sleepwalking:
 1497              	.LFB193:
 699:../asf/sam/drivers/twihs/twihs.c **** }
 700:../asf/sam/drivers/twihs/twihs.c **** 
 701:../asf/sam/drivers/twihs/twihs.c **** #if (SAMG53 || SAMG54 || SAMV70 || SAMV71 || SAME70 || SAMS70)
 702:../asf/sam/drivers/twihs/twihs.c **** /**
 703:../asf/sam/drivers/twihs/twihs.c ****  * \brief Set sleepwalking match mode.
 704:../asf/sam/drivers/twihs/twihs.c ****  *
 705:../asf/sam/drivers/twihs/twihs.c ****  * \param p_twihs Pointer to a TWIHS instance.
 706:../asf/sam/drivers/twihs/twihs.c ****  * \param ul_matching_addr1   Address 1 value.
 707:../asf/sam/drivers/twihs/twihs.c ****  * \param ul_matching_addr2   Address 2 value.
 708:../asf/sam/drivers/twihs/twihs.c ****  * \param ul_matching_addr3   Address 3 value.
 709:../asf/sam/drivers/twihs/twihs.c ****  * \param ul_matching_data   Data value.
 710:../asf/sam/drivers/twihs/twihs.c ****  * \param flag1 ture for set, false for no.
 711:../asf/sam/drivers/twihs/twihs.c ****  * \param flag2 ture for set, false for no.
 712:../asf/sam/drivers/twihs/twihs.c ****  * \param flag3 ture for set, false for no.
 713:../asf/sam/drivers/twihs/twihs.c ****  * \param flag ture for set, false for no.
 714:../asf/sam/drivers/twihs/twihs.c ****  */
 715:../asf/sam/drivers/twihs/twihs.c **** void twihs_set_sleepwalking(Twihs *p_twihs,
 716:../asf/sam/drivers/twihs/twihs.c **** 		uint32_t ul_matching_addr1, bool flag1,
 717:../asf/sam/drivers/twihs/twihs.c **** 		uint32_t ul_matching_addr2, bool flag2,
 718:../asf/sam/drivers/twihs/twihs.c **** 		uint32_t ul_matching_addr3, bool flag3,
 719:../asf/sam/drivers/twihs/twihs.c **** 		uint32_t ul_matching_data, bool flag)
 720:../asf/sam/drivers/twihs/twihs.c **** {
 1498              		.loc 1 720 0
 1499              		.cfi_startproc
 1500              		@ args = 20, pretend = 0, frame = 0
 1501              		@ frame_needed = 0, uses_anonymous_args = 0
 1502              		@ link register save eliminated.
ARM GAS  /tmp/ccsh7mrZ.s 			page 44


 1503              	.LVL151:
 1504 0000 70B4     		push	{r4, r5, r6}
 1505              		.cfi_def_cfa_offset 12
 1506              		.cfi_offset 4, -12
 1507              		.cfi_offset 5, -8
 1508              		.cfi_offset 6, -4
 1509              		.loc 1 720 0
 1510 0002 9DF80C60 		ldrb	r6, [sp, #12]	@ zero_extendqisi2
 1511 0006 9DF81450 		ldrb	r5, [sp, #20]	@ zero_extendqisi2
 1512 000a 9DF81C40 		ldrb	r4, [sp, #28]	@ zero_extendqisi2
 721:../asf/sam/drivers/twihs/twihs.c **** 	uint32_t temp = 0;
 722:../asf/sam/drivers/twihs/twihs.c **** 
 723:../asf/sam/drivers/twihs/twihs.c **** 	if (flag1) {
 1513              		.loc 1 723 0
 1514 000e 0AB1     		cbz	r2, .L156
 724:../asf/sam/drivers/twihs/twihs.c **** 		temp |= TWIHS_SWMR_SADR1(ul_matching_addr1);
 1515              		.loc 1 724 0
 1516 0010 01F07F02 		and	r2, r1, #127
 1517              	.LVL152:
 1518              	.L156:
 725:../asf/sam/drivers/twihs/twihs.c **** 	}
 726:../asf/sam/drivers/twihs/twihs.c **** 
 727:../asf/sam/drivers/twihs/twihs.c **** 	if (flag2) {
 1519              		.loc 1 727 0
 1520 0014 1EB1     		cbz	r6, .L157
 728:../asf/sam/drivers/twihs/twihs.c **** 		temp |= TWIHS_SWMR_SADR2(ul_matching_addr2);
 1521              		.loc 1 728 0
 1522 0016 1B02     		lsls	r3, r3, #8
 1523              	.LVL153:
 1524 0018 03F4FE43 		and	r3, r3, #32512
 1525 001c 1A43     		orrs	r2, r2, r3
 1526              	.LVL154:
 1527              	.L157:
 729:../asf/sam/drivers/twihs/twihs.c **** 	}
 730:../asf/sam/drivers/twihs/twihs.c **** 
 731:../asf/sam/drivers/twihs/twihs.c **** 	if (flag3) {
 1528              		.loc 1 731 0
 1529 001e 25B1     		cbz	r5, .L158
 732:../asf/sam/drivers/twihs/twihs.c **** 		temp |= TWIHS_SWMR_SADR3(ul_matching_addr3);
 1530              		.loc 1 732 0
 1531 0020 049B     		ldr	r3, [sp, #16]
 1532 0022 1B04     		lsls	r3, r3, #16
 1533 0024 03F4FE03 		and	r3, r3, #8323072
 1534 0028 1A43     		orrs	r2, r2, r3
 1535              	.LVL155:
 1536              	.L158:
 733:../asf/sam/drivers/twihs/twihs.c **** 	}
 734:../asf/sam/drivers/twihs/twihs.c **** 
 735:../asf/sam/drivers/twihs/twihs.c **** 	if (flag) {
 1537              		.loc 1 735 0
 1538 002a 14B1     		cbz	r4, .L159
 736:../asf/sam/drivers/twihs/twihs.c **** 		temp |= TWIHS_SWMR_DATAM(ul_matching_data);
 1539              		.loc 1 736 0
 1540 002c 069B     		ldr	r3, [sp, #24]
 1541 002e 42EA0362 		orr	r2, r2, r3, lsl #24
 1542              	.LVL156:
 1543              	.L159:
ARM GAS  /tmp/ccsh7mrZ.s 			page 45


 737:../asf/sam/drivers/twihs/twihs.c **** 	}
 738:../asf/sam/drivers/twihs/twihs.c **** 
 739:../asf/sam/drivers/twihs/twihs.c **** 	p_twihs->TWIHS_SWMR = temp;
 1544              		.loc 1 739 0
 1545 0032 C264     		str	r2, [r0, #76]
 740:../asf/sam/drivers/twihs/twihs.c **** }
 1546              		.loc 1 740 0
 1547 0034 70BC     		pop	{r4, r5, r6}
 1548              		.cfi_restore 6
 1549              		.cfi_restore 5
 1550              		.cfi_restore 4
 1551              		.cfi_def_cfa_offset 0
 1552              	.LVL157:
 1553 0036 7047     		bx	lr
 1554              		.cfi_endproc
 1555              	.LFE193:
 1556              		.size	twihs_set_sleepwalking, .-twihs_set_sleepwalking
 1557              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1558              		.align	2
 1559              		.type	cpu_irq_critical_section_counter, %object
 1560              		.size	cpu_irq_critical_section_counter, 4
 1561              	cpu_irq_critical_section_counter:
 1562 0000 00000000 		.space	4
 1563              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1564              		.type	cpu_irq_prev_interrupt_state, %object
 1565              		.size	cpu_irq_prev_interrupt_state, 1
 1566              	cpu_irq_prev_interrupt_state:
 1567 0000 00       		.space	1
 1568              		.text
 1569              	.Letext0:
 1570              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 1571              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 1572              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 1573              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 1574              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/twih
 1575              		.file 7 "/usr/include/newlib/sys/lock.h"
 1576              		.file 8 "/usr/include/newlib/sys/_types.h"
 1577              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 1578              		.file 10 "/usr/include/newlib/sys/reent.h"
 1579              		.file 11 "/usr/include/newlib/stdlib.h"
 1580              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 1581              		.file 13 "../asf/sam/drivers/twihs/twihs.h"
 1582              		.section	.debug_info,"",%progbits
 1583              	.Ldebug_info0:
 1584 0000 8A140000 		.4byte	0x148a
 1585 0004 0400     		.2byte	0x4
 1586 0006 00000000 		.4byte	.Ldebug_abbrev0
 1587 000a 04       		.byte	0x4
 1588 000b 01       		.uleb128 0x1
 1589 000c 30050000 		.4byte	.LASF224
 1590 0010 0C       		.byte	0xc
 1591 0011 0B080000 		.4byte	.LASF225
 1592 0015 D6090000 		.4byte	.LASF226
 1593 0019 D0000000 		.4byte	.Ldebug_ranges0+0xd0
 1594 001d 00000000 		.4byte	0
 1595 0021 00000000 		.4byte	.Ldebug_line0
 1596 0025 02       		.uleb128 0x2
ARM GAS  /tmp/ccsh7mrZ.s 			page 46


 1597 0026 04       		.byte	0x4
 1598 0027 05       		.byte	0x5
 1599 0028 696E7400 		.ascii	"int\000"
 1600 002c 03       		.uleb128 0x3
 1601 002d 04       		.byte	0x4
 1602 002e 07       		.byte	0x7
 1603 002f 32080000 		.4byte	.LASF0
 1604 0033 03       		.uleb128 0x3
 1605 0034 01       		.byte	0x1
 1606 0035 06       		.byte	0x6
 1607 0036 20010000 		.4byte	.LASF1
 1608 003a 04       		.uleb128 0x4
 1609 003b 58000000 		.4byte	.LASF5
 1610 003f 02       		.byte	0x2
 1611 0040 1D       		.byte	0x1d
 1612 0041 45000000 		.4byte	0x45
 1613 0045 03       		.uleb128 0x3
 1614 0046 01       		.byte	0x1
 1615 0047 08       		.byte	0x8
 1616 0048 B0080000 		.4byte	.LASF2
 1617 004c 03       		.uleb128 0x3
 1618 004d 02       		.byte	0x2
 1619 004e 05       		.byte	0x5
 1620 004f 5C080000 		.4byte	.LASF3
 1621 0053 03       		.uleb128 0x3
 1622 0054 02       		.byte	0x2
 1623 0055 07       		.byte	0x7
 1624 0056 C7030000 		.4byte	.LASF4
 1625 005a 04       		.uleb128 0x4
 1626 005b 5C040000 		.4byte	.LASF6
 1627 005f 02       		.byte	0x2
 1628 0060 3F       		.byte	0x3f
 1629 0061 65000000 		.4byte	0x65
 1630 0065 03       		.uleb128 0x3
 1631 0066 04       		.byte	0x4
 1632 0067 05       		.byte	0x5
 1633 0068 A7010000 		.4byte	.LASF7
 1634 006c 04       		.uleb128 0x4
 1635 006d A1020000 		.4byte	.LASF8
 1636 0071 02       		.byte	0x2
 1637 0072 41       		.byte	0x41
 1638 0073 77000000 		.4byte	0x77
 1639 0077 03       		.uleb128 0x3
 1640 0078 04       		.byte	0x4
 1641 0079 07       		.byte	0x7
 1642 007a 36030000 		.4byte	.LASF9
 1643 007e 03       		.uleb128 0x3
 1644 007f 08       		.byte	0x8
 1645 0080 05       		.byte	0x5
 1646 0081 E6010000 		.4byte	.LASF10
 1647 0085 03       		.uleb128 0x3
 1648 0086 08       		.byte	0x8
 1649 0087 07       		.byte	0x7
 1650 0088 9D030000 		.4byte	.LASF11
 1651 008c 04       		.uleb128 0x4
 1652 008d 74080000 		.4byte	.LASF12
 1653 0091 03       		.byte	0x3
ARM GAS  /tmp/ccsh7mrZ.s 			page 47


 1654 0092 18       		.byte	0x18
 1655 0093 3A000000 		.4byte	0x3a
 1656 0097 05       		.uleb128 0x5
 1657 0098 8C000000 		.4byte	0x8c
 1658 009c 04       		.uleb128 0x4
 1659 009d D6060000 		.4byte	.LASF13
 1660 00a1 03       		.byte	0x3
 1661 00a2 2C       		.byte	0x2c
 1662 00a3 5A000000 		.4byte	0x5a
 1663 00a7 06       		.uleb128 0x6
 1664 00a8 9C000000 		.4byte	0x9c
 1665 00ac 04       		.uleb128 0x4
 1666 00ad C6070000 		.4byte	.LASF14
 1667 00b1 03       		.byte	0x3
 1668 00b2 30       		.byte	0x30
 1669 00b3 6C000000 		.4byte	0x6c
 1670 00b7 06       		.uleb128 0x6
 1671 00b8 AC000000 		.4byte	0xac
 1672 00bc 05       		.uleb128 0x5
 1673 00bd B7000000 		.4byte	0xb7
 1674 00c1 07       		.uleb128 0x7
 1675 00c2 04       		.byte	0x4
 1676 00c3 03       		.uleb128 0x3
 1677 00c4 04       		.byte	0x4
 1678 00c5 07       		.byte	0x7
 1679 00c6 E8040000 		.4byte	.LASF15
 1680 00ca 08       		.uleb128 0x8
 1681 00cb BC000000 		.4byte	0xbc
 1682 00cf DA000000 		.4byte	0xda
 1683 00d3 09       		.uleb128 0x9
 1684 00d4 C3000000 		.4byte	0xc3
 1685 00d8 01       		.byte	0x1
 1686 00d9 00       		.byte	0
 1687 00da 05       		.uleb128 0x5
 1688 00db CA000000 		.4byte	0xca
 1689 00df 06       		.uleb128 0x6
 1690 00e0 DA000000 		.4byte	0xda
 1691 00e4 0A       		.uleb128 0xa
 1692 00e5 CA000000 		.4byte	.LASF16
 1693 00e9 04       		.byte	0x4
 1694 00ea 6508     		.2byte	0x865
 1695 00ec A7000000 		.4byte	0xa7
 1696 00f0 0B       		.uleb128 0xb
 1697 00f1 14030000 		.4byte	.LASF17
 1698 00f5 05       		.byte	0x5
 1699 00f6 3A       		.byte	0x3a
 1700 00f7 AC000000 		.4byte	0xac
 1701 00fb 08       		.uleb128 0x8
 1702 00fc BC000000 		.4byte	0xbc
 1703 0100 0B010000 		.4byte	0x10b
 1704 0104 09       		.uleb128 0x9
 1705 0105 C3000000 		.4byte	0xc3
 1706 0109 00       		.byte	0
 1707 010a 00       		.byte	0
 1708 010b 05       		.uleb128 0x5
 1709 010c FB000000 		.4byte	0xfb
 1710 0110 06       		.uleb128 0x6
ARM GAS  /tmp/ccsh7mrZ.s 			page 48


 1711 0111 0B010000 		.4byte	0x10b
 1712 0115 08       		.uleb128 0x8
 1713 0116 BC000000 		.4byte	0xbc
 1714 011a 25010000 		.4byte	0x125
 1715 011e 09       		.uleb128 0x9
 1716 011f C3000000 		.4byte	0xc3
 1717 0123 02       		.byte	0x2
 1718 0124 00       		.byte	0
 1719 0125 05       		.uleb128 0x5
 1720 0126 15010000 		.4byte	0x115
 1721 012a 06       		.uleb128 0x6
 1722 012b 25010000 		.4byte	0x125
 1723 012f 08       		.uleb128 0x8
 1724 0130 BC000000 		.4byte	0xbc
 1725 0134 3F010000 		.4byte	0x13f
 1726 0138 09       		.uleb128 0x9
 1727 0139 C3000000 		.4byte	0xc3
 1728 013d 24       		.byte	0x24
 1729 013e 00       		.byte	0
 1730 013f 05       		.uleb128 0x5
 1731 0140 2F010000 		.4byte	0x12f
 1732 0144 06       		.uleb128 0x6
 1733 0145 3F010000 		.4byte	0x13f
 1734 0149 0C       		.uleb128 0xc
 1735 014a EC       		.byte	0xec
 1736 014b 06       		.byte	0x6
 1737 014c 38       		.byte	0x38
 1738 014d 42020000 		.4byte	0x242
 1739 0151 0D       		.uleb128 0xd
 1740 0152 66040000 		.4byte	.LASF18
 1741 0156 06       		.byte	0x6
 1742 0157 39       		.byte	0x39
 1743 0158 B7000000 		.4byte	0xb7
 1744 015c 00       		.byte	0
 1745 015d 0D       		.uleb128 0xd
 1746 015e 2A000000 		.4byte	.LASF19
 1747 0162 06       		.byte	0x6
 1748 0163 3A       		.byte	0x3a
 1749 0164 B7000000 		.4byte	0xb7
 1750 0168 04       		.byte	0x4
 1751 0169 0D       		.uleb128 0xd
 1752 016a 2B0A0000 		.4byte	.LASF20
 1753 016e 06       		.byte	0x6
 1754 016f 3B       		.byte	0x3b
 1755 0170 B7000000 		.4byte	0xb7
 1756 0174 08       		.byte	0x8
 1757 0175 0D       		.uleb128 0xd
 1758 0176 12060000 		.4byte	.LASF21
 1759 017a 06       		.byte	0x6
 1760 017b 3C       		.byte	0x3c
 1761 017c B7000000 		.4byte	0xb7
 1762 0180 0C       		.byte	0xc
 1763 0181 0D       		.uleb128 0xd
 1764 0182 EF060000 		.4byte	.LASF22
 1765 0186 06       		.byte	0x6
 1766 0187 3D       		.byte	0x3d
 1767 0188 B7000000 		.4byte	0xb7
ARM GAS  /tmp/ccsh7mrZ.s 			page 49


 1768 018c 10       		.byte	0x10
 1769 018d 0D       		.uleb128 0xd
 1770 018e 46010000 		.4byte	.LASF23
 1771 0192 06       		.byte	0x6
 1772 0193 3E       		.byte	0x3e
 1773 0194 2A010000 		.4byte	0x12a
 1774 0198 14       		.byte	0x14
 1775 0199 0D       		.uleb128 0xd
 1776 019a D8080000 		.4byte	.LASF24
 1777 019e 06       		.byte	0x6
 1778 019f 3F       		.byte	0x3f
 1779 01a0 BC000000 		.4byte	0xbc
 1780 01a4 20       		.byte	0x20
 1781 01a5 0D       		.uleb128 0xd
 1782 01a6 DE040000 		.4byte	.LASF25
 1783 01aa 06       		.byte	0x6
 1784 01ab 40       		.byte	0x40
 1785 01ac B7000000 		.4byte	0xb7
 1786 01b0 24       		.byte	0x24
 1787 01b1 0D       		.uleb128 0xd
 1788 01b2 F4010000 		.4byte	.LASF26
 1789 01b6 06       		.byte	0x6
 1790 01b7 41       		.byte	0x41
 1791 01b8 B7000000 		.4byte	0xb7
 1792 01bc 28       		.byte	0x28
 1793 01bd 0D       		.uleb128 0xd
 1794 01be EE070000 		.4byte	.LASF27
 1795 01c2 06       		.byte	0x6
 1796 01c3 42       		.byte	0x42
 1797 01c4 BC000000 		.4byte	0xbc
 1798 01c8 2C       		.byte	0x2c
 1799 01c9 0D       		.uleb128 0xd
 1800 01ca 88040000 		.4byte	.LASF28
 1801 01ce 06       		.byte	0x6
 1802 01cf 43       		.byte	0x43
 1803 01d0 BC000000 		.4byte	0xbc
 1804 01d4 30       		.byte	0x30
 1805 01d5 0D       		.uleb128 0xd
 1806 01d6 B8000000 		.4byte	.LASF29
 1807 01da 06       		.byte	0x6
 1808 01db 44       		.byte	0x44
 1809 01dc B7000000 		.4byte	0xb7
 1810 01e0 34       		.byte	0x34
 1811 01e1 0D       		.uleb128 0xd
 1812 01e2 7A030000 		.4byte	.LASF30
 1813 01e6 06       		.byte	0x6
 1814 01e7 45       		.byte	0x45
 1815 01e8 B7000000 		.4byte	0xb7
 1816 01ec 38       		.byte	0x38
 1817 01ed 0D       		.uleb128 0xd
 1818 01ee 70030000 		.4byte	.LASF31
 1819 01f2 06       		.byte	0x6
 1820 01f3 46       		.byte	0x46
 1821 01f4 DF000000 		.4byte	0xdf
 1822 01f8 3C       		.byte	0x3c
 1823 01f9 0D       		.uleb128 0xd
 1824 01fa C7080000 		.4byte	.LASF32
ARM GAS  /tmp/ccsh7mrZ.s 			page 50


 1825 01fe 06       		.byte	0x6
 1826 01ff 47       		.byte	0x47
 1827 0200 B7000000 		.4byte	0xb7
 1828 0204 44       		.byte	0x44
 1829 0205 0D       		.uleb128 0xd
 1830 0206 86030000 		.4byte	.LASF33
 1831 020a 06       		.byte	0x6
 1832 020b 48       		.byte	0x48
 1833 020c 10010000 		.4byte	0x110
 1834 0210 48       		.byte	0x48
 1835 0211 0D       		.uleb128 0xd
 1836 0212 6D070000 		.4byte	.LASF34
 1837 0216 06       		.byte	0x6
 1838 0217 49       		.byte	0x49
 1839 0218 B7000000 		.4byte	0xb7
 1840 021c 4C       		.byte	0x4c
 1841 021d 0D       		.uleb128 0xd
 1842 021e 74010000 		.4byte	.LASF35
 1843 0222 06       		.byte	0x6
 1844 0223 4A       		.byte	0x4a
 1845 0224 44010000 		.4byte	0x144
 1846 0228 50       		.byte	0x50
 1847 0229 0D       		.uleb128 0xd
 1848 022a D5070000 		.4byte	.LASF36
 1849 022e 06       		.byte	0x6
 1850 022f 4B       		.byte	0x4b
 1851 0230 B7000000 		.4byte	0xb7
 1852 0234 E4       		.byte	0xe4
 1853 0235 0D       		.uleb128 0xd
 1854 0236 EF020000 		.4byte	.LASF37
 1855 023a 06       		.byte	0x6
 1856 023b 4C       		.byte	0x4c
 1857 023c BC000000 		.4byte	0xbc
 1858 0240 E8       		.byte	0xe8
 1859 0241 00       		.byte	0
 1860 0242 04       		.uleb128 0x4
 1861 0243 75000000 		.4byte	.LASF38
 1862 0247 06       		.byte	0x6
 1863 0248 4D       		.byte	0x4d
 1864 0249 49010000 		.4byte	0x149
 1865 024d 04       		.uleb128 0x4
 1866 024e 7A060000 		.4byte	.LASF39
 1867 0252 07       		.byte	0x7
 1868 0253 07       		.byte	0x7
 1869 0254 25000000 		.4byte	0x25
 1870 0258 04       		.uleb128 0x4
 1871 0259 FC050000 		.4byte	.LASF40
 1872 025d 08       		.byte	0x8
 1873 025e 2C       		.byte	0x2c
 1874 025f 65000000 		.4byte	0x65
 1875 0263 04       		.uleb128 0x4
 1876 0264 E0070000 		.4byte	.LASF41
 1877 0268 08       		.byte	0x8
 1878 0269 72       		.byte	0x72
 1879 026a 65000000 		.4byte	0x65
 1880 026e 0E       		.uleb128 0xe
 1881 026f 39040000 		.4byte	.LASF42
ARM GAS  /tmp/ccsh7mrZ.s 			page 51


 1882 0273 09       		.byte	0x9
 1883 0274 6501     		.2byte	0x165
 1884 0276 2C000000 		.4byte	0x2c
 1885 027a 0F       		.uleb128 0xf
 1886 027b 04       		.byte	0x4
 1887 027c 08       		.byte	0x8
 1888 027d A6       		.byte	0xa6
 1889 027e 99020000 		.4byte	0x299
 1890 0282 10       		.uleb128 0x10
 1891 0283 11040000 		.4byte	.LASF43
 1892 0287 08       		.byte	0x8
 1893 0288 A8       		.byte	0xa8
 1894 0289 6E020000 		.4byte	0x26e
 1895 028d 10       		.uleb128 0x10
 1896 028e 0D030000 		.4byte	.LASF44
 1897 0292 08       		.byte	0x8
 1898 0293 A9       		.byte	0xa9
 1899 0294 99020000 		.4byte	0x299
 1900 0298 00       		.byte	0
 1901 0299 08       		.uleb128 0x8
 1902 029a 45000000 		.4byte	0x45
 1903 029e A9020000 		.4byte	0x2a9
 1904 02a2 09       		.uleb128 0x9
 1905 02a3 C3000000 		.4byte	0xc3
 1906 02a7 03       		.byte	0x3
 1907 02a8 00       		.byte	0
 1908 02a9 0C       		.uleb128 0xc
 1909 02aa 08       		.byte	0x8
 1910 02ab 08       		.byte	0x8
 1911 02ac A3       		.byte	0xa3
 1912 02ad CA020000 		.4byte	0x2ca
 1913 02b1 0D       		.uleb128 0xd
 1914 02b2 BE070000 		.4byte	.LASF45
 1915 02b6 08       		.byte	0x8
 1916 02b7 A5       		.byte	0xa5
 1917 02b8 25000000 		.4byte	0x25
 1918 02bc 00       		.byte	0
 1919 02bd 0D       		.uleb128 0xd
 1920 02be 9F080000 		.4byte	.LASF46
 1921 02c2 08       		.byte	0x8
 1922 02c3 AA       		.byte	0xaa
 1923 02c4 7A020000 		.4byte	0x27a
 1924 02c8 04       		.byte	0x4
 1925 02c9 00       		.byte	0
 1926 02ca 04       		.uleb128 0x4
 1927 02cb 52070000 		.4byte	.LASF47
 1928 02cf 08       		.byte	0x8
 1929 02d0 AB       		.byte	0xab
 1930 02d1 A9020000 		.4byte	0x2a9
 1931 02d5 04       		.uleb128 0x4
 1932 02d6 D1050000 		.4byte	.LASF48
 1933 02da 08       		.byte	0x8
 1934 02db AF       		.byte	0xaf
 1935 02dc 4D020000 		.4byte	0x24d
 1936 02e0 04       		.uleb128 0x4
 1937 02e1 D6040000 		.4byte	.LASF49
 1938 02e5 0A       		.byte	0xa
ARM GAS  /tmp/ccsh7mrZ.s 			page 52


 1939 02e6 16       		.byte	0x16
 1940 02e7 77000000 		.4byte	0x77
 1941 02eb 11       		.uleb128 0x11
 1942 02ec C6020000 		.4byte	.LASF54
 1943 02f0 18       		.byte	0x18
 1944 02f1 0A       		.byte	0xa
 1945 02f2 2D       		.byte	0x2d
 1946 02f3 3E030000 		.4byte	0x33e
 1947 02f7 0D       		.uleb128 0xd
 1948 02f8 82080000 		.4byte	.LASF50
 1949 02fc 0A       		.byte	0xa
 1950 02fd 2F       		.byte	0x2f
 1951 02fe 3E030000 		.4byte	0x33e
 1952 0302 00       		.byte	0
 1953 0303 12       		.uleb128 0x12
 1954 0304 5F6B00   		.ascii	"_k\000"
 1955 0307 0A       		.byte	0xa
 1956 0308 30       		.byte	0x30
 1957 0309 25000000 		.4byte	0x25
 1958 030d 04       		.byte	0x4
 1959 030e 0D       		.uleb128 0xd
 1960 030f A9070000 		.4byte	.LASF51
 1961 0313 0A       		.byte	0xa
 1962 0314 30       		.byte	0x30
 1963 0315 25000000 		.4byte	0x25
 1964 0319 08       		.byte	0x8
 1965 031a 0D       		.uleb128 0xd
 1966 031b 7C080000 		.4byte	.LASF52
 1967 031f 0A       		.byte	0xa
 1968 0320 30       		.byte	0x30
 1969 0321 25000000 		.4byte	0x25
 1970 0325 0C       		.byte	0xc
 1971 0326 0D       		.uleb128 0xd
 1972 0327 D0010000 		.4byte	.LASF53
 1973 032b 0A       		.byte	0xa
 1974 032c 30       		.byte	0x30
 1975 032d 25000000 		.4byte	0x25
 1976 0331 10       		.byte	0x10
 1977 0332 12       		.uleb128 0x12
 1978 0333 5F7800   		.ascii	"_x\000"
 1979 0336 0A       		.byte	0xa
 1980 0337 31       		.byte	0x31
 1981 0338 44030000 		.4byte	0x344
 1982 033c 14       		.byte	0x14
 1983 033d 00       		.byte	0
 1984 033e 13       		.uleb128 0x13
 1985 033f 04       		.byte	0x4
 1986 0340 EB020000 		.4byte	0x2eb
 1987 0344 08       		.uleb128 0x8
 1988 0345 E0020000 		.4byte	0x2e0
 1989 0349 54030000 		.4byte	0x354
 1990 034d 09       		.uleb128 0x9
 1991 034e C3000000 		.4byte	0xc3
 1992 0352 00       		.byte	0
 1993 0353 00       		.byte	0
 1994 0354 11       		.uleb128 0x11
 1995 0355 FF020000 		.4byte	.LASF55
ARM GAS  /tmp/ccsh7mrZ.s 			page 53


 1996 0359 24       		.byte	0x24
 1997 035a 0A       		.byte	0xa
 1998 035b 35       		.byte	0x35
 1999 035c CD030000 		.4byte	0x3cd
 2000 0360 0D       		.uleb128 0xd
 2001 0361 07010000 		.4byte	.LASF56
 2002 0365 0A       		.byte	0xa
 2003 0366 37       		.byte	0x37
 2004 0367 25000000 		.4byte	0x25
 2005 036b 00       		.byte	0
 2006 036c 0D       		.uleb128 0xd
 2007 036d BE080000 		.4byte	.LASF57
 2008 0371 0A       		.byte	0xa
 2009 0372 38       		.byte	0x38
 2010 0373 25000000 		.4byte	0x25
 2011 0377 04       		.byte	0x4
 2012 0378 0D       		.uleb128 0xd
 2013 0379 6A010000 		.4byte	.LASF58
 2014 037d 0A       		.byte	0xa
 2015 037e 39       		.byte	0x39
 2016 037f 25000000 		.4byte	0x25
 2017 0383 08       		.byte	0x8
 2018 0384 0D       		.uleb128 0xd
 2019 0385 8B0A0000 		.4byte	.LASF59
 2020 0389 0A       		.byte	0xa
 2021 038a 3A       		.byte	0x3a
 2022 038b 25000000 		.4byte	0x25
 2023 038f 0C       		.byte	0xc
 2024 0390 0D       		.uleb128 0xd
 2025 0391 DA050000 		.4byte	.LASF60
 2026 0395 0A       		.byte	0xa
 2027 0396 3B       		.byte	0x3b
 2028 0397 25000000 		.4byte	0x25
 2029 039b 10       		.byte	0x10
 2030 039c 0D       		.uleb128 0xd
 2031 039d 99040000 		.4byte	.LASF61
 2032 03a1 0A       		.byte	0xa
 2033 03a2 3C       		.byte	0x3c
 2034 03a3 25000000 		.4byte	0x25
 2035 03a7 14       		.byte	0x14
 2036 03a8 0D       		.uleb128 0xd
 2037 03a9 35090000 		.4byte	.LASF62
 2038 03ad 0A       		.byte	0xa
 2039 03ae 3D       		.byte	0x3d
 2040 03af 25000000 		.4byte	0x25
 2041 03b3 18       		.byte	0x18
 2042 03b4 0D       		.uleb128 0xd
 2043 03b5 29070000 		.4byte	.LASF63
 2044 03b9 0A       		.byte	0xa
 2045 03ba 3E       		.byte	0x3e
 2046 03bb 25000000 		.4byte	0x25
 2047 03bf 1C       		.byte	0x1c
 2048 03c0 0D       		.uleb128 0xd
 2049 03c1 0A0A0000 		.4byte	.LASF64
 2050 03c5 0A       		.byte	0xa
 2051 03c6 3F       		.byte	0x3f
 2052 03c7 25000000 		.4byte	0x25
ARM GAS  /tmp/ccsh7mrZ.s 			page 54


 2053 03cb 20       		.byte	0x20
 2054 03cc 00       		.byte	0
 2055 03cd 14       		.uleb128 0x14
 2056 03ce 83010000 		.4byte	.LASF65
 2057 03d2 0801     		.2byte	0x108
 2058 03d4 0A       		.byte	0xa
 2059 03d5 48       		.byte	0x48
 2060 03d6 0D040000 		.4byte	0x40d
 2061 03da 0D       		.uleb128 0xd
 2062 03db 6F020000 		.4byte	.LASF66
 2063 03df 0A       		.byte	0xa
 2064 03e0 49       		.byte	0x49
 2065 03e1 0D040000 		.4byte	0x40d
 2066 03e5 00       		.byte	0
 2067 03e6 0D       		.uleb128 0xd
 2068 03e7 DE060000 		.4byte	.LASF67
 2069 03eb 0A       		.byte	0xa
 2070 03ec 4A       		.byte	0x4a
 2071 03ed 0D040000 		.4byte	0x40d
 2072 03f1 80       		.byte	0x80
 2073 03f2 15       		.uleb128 0x15
 2074 03f3 A7080000 		.4byte	.LASF68
 2075 03f7 0A       		.byte	0xa
 2076 03f8 4C       		.byte	0x4c
 2077 03f9 E0020000 		.4byte	0x2e0
 2078 03fd 0001     		.2byte	0x100
 2079 03ff 15       		.uleb128 0x15
 2080 0400 C8010000 		.4byte	.LASF69
 2081 0404 0A       		.byte	0xa
 2082 0405 4F       		.byte	0x4f
 2083 0406 E0020000 		.4byte	0x2e0
 2084 040a 0401     		.2byte	0x104
 2085 040c 00       		.byte	0
 2086 040d 08       		.uleb128 0x8
 2087 040e C1000000 		.4byte	0xc1
 2088 0412 1D040000 		.4byte	0x41d
 2089 0416 09       		.uleb128 0x9
 2090 0417 C3000000 		.4byte	0xc3
 2091 041b 1F       		.byte	0x1f
 2092 041c 00       		.byte	0
 2093 041d 14       		.uleb128 0x14
 2094 041e E3050000 		.4byte	.LASF70
 2095 0422 9001     		.2byte	0x190
 2096 0424 0A       		.byte	0xa
 2097 0425 5B       		.byte	0x5b
 2098 0426 5B040000 		.4byte	0x45b
 2099 042a 0D       		.uleb128 0xd
 2100 042b 82080000 		.4byte	.LASF50
 2101 042f 0A       		.byte	0xa
 2102 0430 5C       		.byte	0x5c
 2103 0431 5B040000 		.4byte	0x45b
 2104 0435 00       		.byte	0
 2105 0436 0D       		.uleb128 0xd
 2106 0437 8A070000 		.4byte	.LASF71
 2107 043b 0A       		.byte	0xa
 2108 043c 5D       		.byte	0x5d
 2109 043d 25000000 		.4byte	0x25
ARM GAS  /tmp/ccsh7mrZ.s 			page 55


 2110 0441 04       		.byte	0x4
 2111 0442 0D       		.uleb128 0xd
 2112 0443 1B050000 		.4byte	.LASF72
 2113 0447 0A       		.byte	0xa
 2114 0448 5F       		.byte	0x5f
 2115 0449 61040000 		.4byte	0x461
 2116 044d 08       		.byte	0x8
 2117 044e 0D       		.uleb128 0xd
 2118 044f 83010000 		.4byte	.LASF65
 2119 0453 0A       		.byte	0xa
 2120 0454 60       		.byte	0x60
 2121 0455 CD030000 		.4byte	0x3cd
 2122 0459 88       		.byte	0x88
 2123 045a 00       		.byte	0
 2124 045b 13       		.uleb128 0x13
 2125 045c 04       		.byte	0x4
 2126 045d 1D040000 		.4byte	0x41d
 2127 0461 08       		.uleb128 0x8
 2128 0462 71040000 		.4byte	0x471
 2129 0466 71040000 		.4byte	0x471
 2130 046a 09       		.uleb128 0x9
 2131 046b C3000000 		.4byte	0xc3
 2132 046f 1F       		.byte	0x1f
 2133 0470 00       		.byte	0
 2134 0471 13       		.uleb128 0x13
 2135 0472 04       		.byte	0x4
 2136 0473 77040000 		.4byte	0x477
 2137 0477 16       		.uleb128 0x16
 2138 0478 11       		.uleb128 0x11
 2139 0479 33070000 		.4byte	.LASF73
 2140 047d 08       		.byte	0x8
 2141 047e 0A       		.byte	0xa
 2142 047f 73       		.byte	0x73
 2143 0480 9D040000 		.4byte	0x49d
 2144 0484 0D       		.uleb128 0xd
 2145 0485 40010000 		.4byte	.LASF74
 2146 0489 0A       		.byte	0xa
 2147 048a 74       		.byte	0x74
 2148 048b 9D040000 		.4byte	0x49d
 2149 048f 00       		.byte	0
 2150 0490 0D       		.uleb128 0xd
 2151 0491 2C080000 		.4byte	.LASF75
 2152 0495 0A       		.byte	0xa
 2153 0496 75       		.byte	0x75
 2154 0497 25000000 		.4byte	0x25
 2155 049b 04       		.byte	0x4
 2156 049c 00       		.byte	0
 2157 049d 13       		.uleb128 0x13
 2158 049e 04       		.byte	0x4
 2159 049f 45000000 		.4byte	0x45
 2160 04a3 11       		.uleb128 0x11
 2161 04a4 68030000 		.4byte	.LASF76
 2162 04a8 68       		.byte	0x68
 2163 04a9 0A       		.byte	0xa
 2164 04aa B3       		.byte	0xb3
 2165 04ab CD050000 		.4byte	0x5cd
 2166 04af 12       		.uleb128 0x12
ARM GAS  /tmp/ccsh7mrZ.s 			page 56


 2167 04b0 5F7000   		.ascii	"_p\000"
 2168 04b3 0A       		.byte	0xa
 2169 04b4 B4       		.byte	0xb4
 2170 04b5 9D040000 		.4byte	0x49d
 2171 04b9 00       		.byte	0
 2172 04ba 12       		.uleb128 0x12
 2173 04bb 5F7200   		.ascii	"_r\000"
 2174 04be 0A       		.byte	0xa
 2175 04bf B5       		.byte	0xb5
 2176 04c0 25000000 		.4byte	0x25
 2177 04c4 04       		.byte	0x4
 2178 04c5 12       		.uleb128 0x12
 2179 04c6 5F7700   		.ascii	"_w\000"
 2180 04c9 0A       		.byte	0xa
 2181 04ca B6       		.byte	0xb6
 2182 04cb 25000000 		.4byte	0x25
 2183 04cf 08       		.byte	0x8
 2184 04d0 0D       		.uleb128 0xd
 2185 04d1 C1010000 		.4byte	.LASF77
 2186 04d5 0A       		.byte	0xa
 2187 04d6 B7       		.byte	0xb7
 2188 04d7 4C000000 		.4byte	0x4c
 2189 04db 0C       		.byte	0xc
 2190 04dc 0D       		.uleb128 0xd
 2191 04dd 48030000 		.4byte	.LASF78
 2192 04e1 0A       		.byte	0xa
 2193 04e2 B8       		.byte	0xb8
 2194 04e3 4C000000 		.4byte	0x4c
 2195 04e7 0E       		.byte	0xe
 2196 04e8 12       		.uleb128 0x12
 2197 04e9 5F626600 		.ascii	"_bf\000"
 2198 04ed 0A       		.byte	0xa
 2199 04ee B9       		.byte	0xb9
 2200 04ef 78040000 		.4byte	0x478
 2201 04f3 10       		.byte	0x10
 2202 04f4 0D       		.uleb128 0xd
 2203 04f5 A5000000 		.4byte	.LASF79
 2204 04f9 0A       		.byte	0xa
 2205 04fa BA       		.byte	0xba
 2206 04fb 25000000 		.4byte	0x25
 2207 04ff 18       		.byte	0x18
 2208 0500 0D       		.uleb128 0xd
 2209 0501 91010000 		.4byte	.LASF80
 2210 0505 0A       		.byte	0xa
 2211 0506 C1       		.byte	0xc1
 2212 0507 C1000000 		.4byte	0xc1
 2213 050b 1C       		.byte	0x1c
 2214 050c 0D       		.uleb128 0xd
 2215 050d 8C060000 		.4byte	.LASF81
 2216 0511 0A       		.byte	0xa
 2217 0512 C3       		.byte	0xc3
 2218 0513 3A070000 		.4byte	0x73a
 2219 0517 20       		.byte	0x20
 2220 0518 0D       		.uleb128 0xd
 2221 0519 92040000 		.4byte	.LASF82
 2222 051d 0A       		.byte	0xa
 2223 051e C5       		.byte	0xc5
ARM GAS  /tmp/ccsh7mrZ.s 			page 57


 2224 051f 64070000 		.4byte	0x764
 2225 0523 24       		.byte	0x24
 2226 0524 0D       		.uleb128 0xd
 2227 0525 CF070000 		.4byte	.LASF83
 2228 0529 0A       		.byte	0xa
 2229 052a C8       		.byte	0xc8
 2230 052b 88070000 		.4byte	0x788
 2231 052f 28       		.byte	0x28
 2232 0530 0D       		.uleb128 0xd
 2233 0531 19010000 		.4byte	.LASF84
 2234 0535 0A       		.byte	0xa
 2235 0536 C9       		.byte	0xc9
 2236 0537 A2070000 		.4byte	0x7a2
 2237 053b 2C       		.byte	0x2c
 2238 053c 12       		.uleb128 0x12
 2239 053d 5F756200 		.ascii	"_ub\000"
 2240 0541 0A       		.byte	0xa
 2241 0542 CC       		.byte	0xcc
 2242 0543 78040000 		.4byte	0x478
 2243 0547 30       		.byte	0x30
 2244 0548 12       		.uleb128 0x12
 2245 0549 5F757000 		.ascii	"_up\000"
 2246 054d 0A       		.byte	0xa
 2247 054e CD       		.byte	0xcd
 2248 054f 9D040000 		.4byte	0x49d
 2249 0553 38       		.byte	0x38
 2250 0554 12       		.uleb128 0x12
 2251 0555 5F757200 		.ascii	"_ur\000"
 2252 0559 0A       		.byte	0xa
 2253 055a CE       		.byte	0xce
 2254 055b 25000000 		.4byte	0x25
 2255 055f 3C       		.byte	0x3c
 2256 0560 0D       		.uleb128 0xd
 2257 0561 3A010000 		.4byte	.LASF85
 2258 0565 0A       		.byte	0xa
 2259 0566 D1       		.byte	0xd1
 2260 0567 A8070000 		.4byte	0x7a8
 2261 056b 40       		.byte	0x40
 2262 056c 0D       		.uleb128 0xd
 2263 056d C2090000 		.4byte	.LASF86
 2264 0571 0A       		.byte	0xa
 2265 0572 D2       		.byte	0xd2
 2266 0573 B8070000 		.4byte	0x7b8
 2267 0577 43       		.byte	0x43
 2268 0578 12       		.uleb128 0x12
 2269 0579 5F6C6200 		.ascii	"_lb\000"
 2270 057d 0A       		.byte	0xa
 2271 057e D5       		.byte	0xd5
 2272 057f 78040000 		.4byte	0x478
 2273 0583 44       		.byte	0x44
 2274 0584 0D       		.uleb128 0xd
 2275 0585 E6020000 		.4byte	.LASF87
 2276 0589 0A       		.byte	0xa
 2277 058a D8       		.byte	0xd8
 2278 058b 25000000 		.4byte	0x25
 2279 058f 4C       		.byte	0x4c
 2280 0590 0D       		.uleb128 0xd
ARM GAS  /tmp/ccsh7mrZ.s 			page 58


 2281 0591 F1040000 		.4byte	.LASF88
 2282 0595 0A       		.byte	0xa
 2283 0596 D9       		.byte	0xd9
 2284 0597 58020000 		.4byte	0x258
 2285 059b 50       		.byte	0x50
 2286 059c 0D       		.uleb128 0xd
 2287 059d 6F000000 		.4byte	.LASF89
 2288 05a1 0A       		.byte	0xa
 2289 05a2 DC       		.byte	0xdc
 2290 05a3 EB050000 		.4byte	0x5eb
 2291 05a7 54       		.byte	0x54
 2292 05a8 0D       		.uleb128 0xd
 2293 05a9 40040000 		.4byte	.LASF90
 2294 05ad 0A       		.byte	0xa
 2295 05ae E0       		.byte	0xe0
 2296 05af D5020000 		.4byte	0x2d5
 2297 05b3 58       		.byte	0x58
 2298 05b4 0D       		.uleb128 0xd
 2299 05b5 04030000 		.4byte	.LASF91
 2300 05b9 0A       		.byte	0xa
 2301 05ba E2       		.byte	0xe2
 2302 05bb CA020000 		.4byte	0x2ca
 2303 05bf 5C       		.byte	0x5c
 2304 05c0 0D       		.uleb128 0xd
 2305 05c1 3A070000 		.4byte	.LASF92
 2306 05c5 0A       		.byte	0xa
 2307 05c6 E3       		.byte	0xe3
 2308 05c7 25000000 		.4byte	0x25
 2309 05cb 64       		.byte	0x64
 2310 05cc 00       		.byte	0
 2311 05cd 17       		.uleb128 0x17
 2312 05ce 25000000 		.4byte	0x25
 2313 05d2 EB050000 		.4byte	0x5eb
 2314 05d6 18       		.uleb128 0x18
 2315 05d7 EB050000 		.4byte	0x5eb
 2316 05db 18       		.uleb128 0x18
 2317 05dc C1000000 		.4byte	0xc1
 2318 05e0 18       		.uleb128 0x18
 2319 05e1 28070000 		.4byte	0x728
 2320 05e5 18       		.uleb128 0x18
 2321 05e6 25000000 		.4byte	0x25
 2322 05ea 00       		.byte	0
 2323 05eb 13       		.uleb128 0x13
 2324 05ec 04       		.byte	0x4
 2325 05ed F6050000 		.4byte	0x5f6
 2326 05f1 05       		.uleb128 0x5
 2327 05f2 EB050000 		.4byte	0x5eb
 2328 05f6 19       		.uleb128 0x19
 2329 05f7 B1070000 		.4byte	.LASF93
 2330 05fb 2804     		.2byte	0x428
 2331 05fd 0A       		.byte	0xa
 2332 05fe 3802     		.2byte	0x238
 2333 0600 28070000 		.4byte	0x728
 2334 0604 1A       		.uleb128 0x1a
 2335 0605 FF070000 		.4byte	.LASF94
 2336 0609 0A       		.byte	0xa
 2337 060a 3A02     		.2byte	0x23a
ARM GAS  /tmp/ccsh7mrZ.s 			page 59


 2338 060c 25000000 		.4byte	0x25
 2339 0610 00       		.byte	0
 2340 0611 1A       		.uleb128 0x1a
 2341 0612 45090000 		.4byte	.LASF95
 2342 0616 0A       		.byte	0xa
 2343 0617 3F02     		.2byte	0x23f
 2344 0619 0F080000 		.4byte	0x80f
 2345 061d 04       		.byte	0x4
 2346 061e 1A       		.uleb128 0x1a
 2347 061f 2D090000 		.4byte	.LASF96
 2348 0623 0A       		.byte	0xa
 2349 0624 3F02     		.2byte	0x23f
 2350 0626 0F080000 		.4byte	0x80f
 2351 062a 08       		.byte	0x8
 2352 062b 1A       		.uleb128 0x1a
 2353 062c BE020000 		.4byte	.LASF97
 2354 0630 0A       		.byte	0xa
 2355 0631 3F02     		.2byte	0x23f
 2356 0633 0F080000 		.4byte	0x80f
 2357 0637 0C       		.byte	0xc
 2358 0638 1A       		.uleb128 0x1a
 2359 0639 85070000 		.4byte	.LASF98
 2360 063d 0A       		.byte	0xa
 2361 063e 4102     		.2byte	0x241
 2362 0640 25000000 		.4byte	0x25
 2363 0644 10       		.byte	0x10
 2364 0645 1A       		.uleb128 0x1a
 2365 0646 4D000000 		.4byte	.LASF99
 2366 064a 0A       		.byte	0xa
 2367 064b 4202     		.2byte	0x242
 2368 064d F1090000 		.4byte	0x9f1
 2369 0651 14       		.byte	0x14
 2370 0652 1A       		.uleb128 0x1a
 2371 0653 F4080000 		.4byte	.LASF100
 2372 0657 0A       		.byte	0xa
 2373 0658 4402     		.2byte	0x244
 2374 065a 25000000 		.4byte	0x25
 2375 065e 30       		.byte	0x30
 2376 065f 1A       		.uleb128 0x1a
 2377 0660 8F070000 		.4byte	.LASF101
 2378 0664 0A       		.byte	0xa
 2379 0665 4502     		.2byte	0x245
 2380 0667 5E070000 		.4byte	0x75e
 2381 066b 34       		.byte	0x34
 2382 066c 1A       		.uleb128 0x1a
 2383 066d 4C090000 		.4byte	.LASF102
 2384 0671 0A       		.byte	0xa
 2385 0672 4702     		.2byte	0x247
 2386 0674 25000000 		.4byte	0x25
 2387 0678 38       		.byte	0x38
 2388 0679 1A       		.uleb128 0x1a
 2389 067a 9F070000 		.4byte	.LASF103
 2390 067e 0A       		.byte	0xa
 2391 067f 4902     		.2byte	0x249
 2392 0681 0C0A0000 		.4byte	0xa0c
 2393 0685 3C       		.byte	0x3c
 2394 0686 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccsh7mrZ.s 			page 60


 2395 0687 09040000 		.4byte	.LASF104
 2396 068b 0A       		.byte	0xa
 2397 068c 4C02     		.2byte	0x24c
 2398 068e 3E030000 		.4byte	0x33e
 2399 0692 40       		.byte	0x40
 2400 0693 1A       		.uleb128 0x1a
 2401 0694 DC010000 		.4byte	.LASF105
 2402 0698 0A       		.byte	0xa
 2403 0699 4D02     		.2byte	0x24d
 2404 069b 25000000 		.4byte	0x25
 2405 069f 44       		.byte	0x44
 2406 06a0 1A       		.uleb128 0x1a
 2407 06a1 7E0A0000 		.4byte	.LASF106
 2408 06a5 0A       		.byte	0xa
 2409 06a6 4E02     		.2byte	0x24e
 2410 06a8 3E030000 		.4byte	0x33e
 2411 06ac 48       		.byte	0x48
 2412 06ad 1A       		.uleb128 0x1a
 2413 06ae 42070000 		.4byte	.LASF107
 2414 06b2 0A       		.byte	0xa
 2415 06b3 4F02     		.2byte	0x24f
 2416 06b5 120A0000 		.4byte	0xa12
 2417 06b9 4C       		.byte	0x4c
 2418 06ba 1A       		.uleb128 0x1a
 2419 06bb 24030000 		.4byte	.LASF108
 2420 06bf 0A       		.byte	0xa
 2421 06c0 5202     		.2byte	0x252
 2422 06c2 25000000 		.4byte	0x25
 2423 06c6 50       		.byte	0x50
 2424 06c7 1A       		.uleb128 0x1a
 2425 06c8 3B020000 		.4byte	.LASF109
 2426 06cc 0A       		.byte	0xa
 2427 06cd 5302     		.2byte	0x253
 2428 06cf 28070000 		.4byte	0x728
 2429 06d3 54       		.byte	0x54
 2430 06d4 1A       		.uleb128 0x1a
 2431 06d5 EA060000 		.4byte	.LASF110
 2432 06d9 0A       		.byte	0xa
 2433 06da 7602     		.2byte	0x276
 2434 06dc CF090000 		.4byte	0x9cf
 2435 06e0 58       		.byte	0x58
 2436 06e1 1B       		.uleb128 0x1b
 2437 06e2 E3050000 		.4byte	.LASF70
 2438 06e6 0A       		.byte	0xa
 2439 06e7 7A02     		.2byte	0x27a
 2440 06e9 5B040000 		.4byte	0x45b
 2441 06ed 4801     		.2byte	0x148
 2442 06ef 1B       		.uleb128 0x1b
 2443 06f0 DA030000 		.4byte	.LASF111
 2444 06f4 0A       		.byte	0xa
 2445 06f5 7B02     		.2byte	0x27b
 2446 06f7 1D040000 		.4byte	0x41d
 2447 06fb 4C01     		.2byte	0x14c
 2448 06fd 1B       		.uleb128 0x1b
 2449 06fe 6A090000 		.4byte	.LASF112
 2450 0702 0A       		.byte	0xa
 2451 0703 7F02     		.2byte	0x27f
ARM GAS  /tmp/ccsh7mrZ.s 			page 61


 2452 0705 230A0000 		.4byte	0xa23
 2453 0709 DC02     		.2byte	0x2dc
 2454 070b 1B       		.uleb128 0x1b
 2455 070c 99010000 		.4byte	.LASF113
 2456 0710 0A       		.byte	0xa
 2457 0711 8402     		.2byte	0x284
 2458 0713 D4070000 		.4byte	0x7d4
 2459 0717 E002     		.2byte	0x2e0
 2460 0719 1B       		.uleb128 0x1b
 2461 071a 7E010000 		.4byte	.LASF114
 2462 071e 0A       		.byte	0xa
 2463 071f 8502     		.2byte	0x285
 2464 0721 2F0A0000 		.4byte	0xa2f
 2465 0725 EC02     		.2byte	0x2ec
 2466 0727 00       		.byte	0
 2467 0728 13       		.uleb128 0x13
 2468 0729 04       		.byte	0x4
 2469 072a 2E070000 		.4byte	0x72e
 2470 072e 03       		.uleb128 0x3
 2471 072f 01       		.byte	0x1
 2472 0730 08       		.byte	0x8
 2473 0731 06080000 		.4byte	.LASF115
 2474 0735 05       		.uleb128 0x5
 2475 0736 2E070000 		.4byte	0x72e
 2476 073a 13       		.uleb128 0x13
 2477 073b 04       		.byte	0x4
 2478 073c CD050000 		.4byte	0x5cd
 2479 0740 17       		.uleb128 0x17
 2480 0741 25000000 		.4byte	0x25
 2481 0745 5E070000 		.4byte	0x75e
 2482 0749 18       		.uleb128 0x18
 2483 074a EB050000 		.4byte	0x5eb
 2484 074e 18       		.uleb128 0x18
 2485 074f C1000000 		.4byte	0xc1
 2486 0753 18       		.uleb128 0x18
 2487 0754 5E070000 		.4byte	0x75e
 2488 0758 18       		.uleb128 0x18
 2489 0759 25000000 		.4byte	0x25
 2490 075d 00       		.byte	0
 2491 075e 13       		.uleb128 0x13
 2492 075f 04       		.byte	0x4
 2493 0760 35070000 		.4byte	0x735
 2494 0764 13       		.uleb128 0x13
 2495 0765 04       		.byte	0x4
 2496 0766 40070000 		.4byte	0x740
 2497 076a 17       		.uleb128 0x17
 2498 076b 63020000 		.4byte	0x263
 2499 076f 88070000 		.4byte	0x788
 2500 0773 18       		.uleb128 0x18
 2501 0774 EB050000 		.4byte	0x5eb
 2502 0778 18       		.uleb128 0x18
 2503 0779 C1000000 		.4byte	0xc1
 2504 077d 18       		.uleb128 0x18
 2505 077e 63020000 		.4byte	0x263
 2506 0782 18       		.uleb128 0x18
 2507 0783 25000000 		.4byte	0x25
 2508 0787 00       		.byte	0
ARM GAS  /tmp/ccsh7mrZ.s 			page 62


 2509 0788 13       		.uleb128 0x13
 2510 0789 04       		.byte	0x4
 2511 078a 6A070000 		.4byte	0x76a
 2512 078e 17       		.uleb128 0x17
 2513 078f 25000000 		.4byte	0x25
 2514 0793 A2070000 		.4byte	0x7a2
 2515 0797 18       		.uleb128 0x18
 2516 0798 EB050000 		.4byte	0x5eb
 2517 079c 18       		.uleb128 0x18
 2518 079d C1000000 		.4byte	0xc1
 2519 07a1 00       		.byte	0
 2520 07a2 13       		.uleb128 0x13
 2521 07a3 04       		.byte	0x4
 2522 07a4 8E070000 		.4byte	0x78e
 2523 07a8 08       		.uleb128 0x8
 2524 07a9 45000000 		.4byte	0x45
 2525 07ad B8070000 		.4byte	0x7b8
 2526 07b1 09       		.uleb128 0x9
 2527 07b2 C3000000 		.4byte	0xc3
 2528 07b6 02       		.byte	0x2
 2529 07b7 00       		.byte	0
 2530 07b8 08       		.uleb128 0x8
 2531 07b9 45000000 		.4byte	0x45
 2532 07bd C8070000 		.4byte	0x7c8
 2533 07c1 09       		.uleb128 0x9
 2534 07c2 C3000000 		.4byte	0xc3
 2535 07c6 00       		.byte	0
 2536 07c7 00       		.byte	0
 2537 07c8 0E       		.uleb128 0xe
 2538 07c9 D5010000 		.4byte	.LASF116
 2539 07cd 0A       		.byte	0xa
 2540 07ce 1D01     		.2byte	0x11d
 2541 07d0 A3040000 		.4byte	0x4a3
 2542 07d4 1C       		.uleb128 0x1c
 2543 07d5 3F090000 		.4byte	.LASF117
 2544 07d9 0C       		.byte	0xc
 2545 07da 0A       		.byte	0xa
 2546 07db 2101     		.2byte	0x121
 2547 07dd 09080000 		.4byte	0x809
 2548 07e1 1A       		.uleb128 0x1a
 2549 07e2 82080000 		.4byte	.LASF50
 2550 07e6 0A       		.byte	0xa
 2551 07e7 2301     		.2byte	0x123
 2552 07e9 09080000 		.4byte	0x809
 2553 07ed 00       		.byte	0
 2554 07ee 1A       		.uleb128 0x1a
 2555 07ef 90030000 		.4byte	.LASF118
 2556 07f3 0A       		.byte	0xa
 2557 07f4 2401     		.2byte	0x124
 2558 07f6 25000000 		.4byte	0x25
 2559 07fa 04       		.byte	0x4
 2560 07fb 1A       		.uleb128 0x1a
 2561 07fc 7F070000 		.4byte	.LASF119
 2562 0800 0A       		.byte	0xa
 2563 0801 2501     		.2byte	0x125
 2564 0803 0F080000 		.4byte	0x80f
 2565 0807 08       		.byte	0x8
ARM GAS  /tmp/ccsh7mrZ.s 			page 63


 2566 0808 00       		.byte	0
 2567 0809 13       		.uleb128 0x13
 2568 080a 04       		.byte	0x4
 2569 080b D4070000 		.4byte	0x7d4
 2570 080f 13       		.uleb128 0x13
 2571 0810 04       		.byte	0x4
 2572 0811 C8070000 		.4byte	0x7c8
 2573 0815 1C       		.uleb128 0x1c
 2574 0816 34000000 		.4byte	.LASF120
 2575 081a 0E       		.byte	0xe
 2576 081b 0A       		.byte	0xa
 2577 081c 3D01     		.2byte	0x13d
 2578 081e 4A080000 		.4byte	0x84a
 2579 0822 1A       		.uleb128 0x1a
 2580 0823 B8070000 		.4byte	.LASF121
 2581 0827 0A       		.byte	0xa
 2582 0828 3E01     		.2byte	0x13e
 2583 082a 4A080000 		.4byte	0x84a
 2584 082e 00       		.byte	0
 2585 082f 1A       		.uleb128 0x1a
 2586 0830 56040000 		.4byte	.LASF122
 2587 0834 0A       		.byte	0xa
 2588 0835 3F01     		.2byte	0x13f
 2589 0837 4A080000 		.4byte	0x84a
 2590 083b 06       		.byte	0x6
 2591 083c 1A       		.uleb128 0x1a
 2592 083d D3080000 		.4byte	.LASF123
 2593 0841 0A       		.byte	0xa
 2594 0842 4001     		.2byte	0x140
 2595 0844 53000000 		.4byte	0x53
 2596 0848 0C       		.byte	0xc
 2597 0849 00       		.byte	0
 2598 084a 08       		.uleb128 0x8
 2599 084b 53000000 		.4byte	0x53
 2600 084f 5A080000 		.4byte	0x85a
 2601 0853 09       		.uleb128 0x9
 2602 0854 C3000000 		.4byte	0xc3
 2603 0858 02       		.byte	0x2
 2604 0859 00       		.byte	0
 2605 085a 1D       		.uleb128 0x1d
 2606 085b D0       		.byte	0xd0
 2607 085c 0A       		.byte	0xa
 2608 085d 5702     		.2byte	0x257
 2609 085f 5B090000 		.4byte	0x95b
 2610 0863 1A       		.uleb128 0x1a
 2611 0864 AC040000 		.4byte	.LASF124
 2612 0868 0A       		.byte	0xa
 2613 0869 5902     		.2byte	0x259
 2614 086b 2C000000 		.4byte	0x2c
 2615 086f 00       		.byte	0
 2616 0870 1A       		.uleb128 0x1a
 2617 0871 54020000 		.4byte	.LASF125
 2618 0875 0A       		.byte	0xa
 2619 0876 5A02     		.2byte	0x25a
 2620 0878 28070000 		.4byte	0x728
 2621 087c 04       		.byte	0x4
 2622 087d 1A       		.uleb128 0x1a
ARM GAS  /tmp/ccsh7mrZ.s 			page 64


 2623 087e EF030000 		.4byte	.LASF126
 2624 0882 0A       		.byte	0xa
 2625 0883 5B02     		.2byte	0x25b
 2626 0885 5B090000 		.4byte	0x95b
 2627 0889 08       		.byte	0x8
 2628 088a 1A       		.uleb128 0x1a
 2629 088b 150A0000 		.4byte	.LASF127
 2630 088f 0A       		.byte	0xa
 2631 0890 5C02     		.2byte	0x25c
 2632 0892 54030000 		.4byte	0x354
 2633 0896 24       		.byte	0x24
 2634 0897 1A       		.uleb128 0x1a
 2635 0898 CE020000 		.4byte	.LASF128
 2636 089c 0A       		.byte	0xa
 2637 089d 5D02     		.2byte	0x25d
 2638 089f 25000000 		.4byte	0x25
 2639 08a3 48       		.byte	0x48
 2640 08a4 1A       		.uleb128 0x1a
 2641 08a5 62070000 		.4byte	.LASF129
 2642 08a9 0A       		.byte	0xa
 2643 08aa 5E02     		.2byte	0x25e
 2644 08ac 85000000 		.4byte	0x85
 2645 08b0 50       		.byte	0x50
 2646 08b1 1A       		.uleb128 0x1a
 2647 08b2 350A0000 		.4byte	.LASF130
 2648 08b6 0A       		.byte	0xa
 2649 08b7 5F02     		.2byte	0x25f
 2650 08b9 15080000 		.4byte	0x815
 2651 08bd 58       		.byte	0x58
 2652 08be 1A       		.uleb128 0x1a
 2653 08bf 1C070000 		.4byte	.LASF131
 2654 08c3 0A       		.byte	0xa
 2655 08c4 6002     		.2byte	0x260
 2656 08c6 CA020000 		.4byte	0x2ca
 2657 08ca 68       		.byte	0x68
 2658 08cb 1A       		.uleb128 0x1a
 2659 08cc 700A0000 		.4byte	.LASF132
 2660 08d0 0A       		.byte	0xa
 2661 08d1 6102     		.2byte	0x261
 2662 08d3 CA020000 		.4byte	0x2ca
 2663 08d7 70       		.byte	0x70
 2664 08d8 1A       		.uleb128 0x1a
 2665 08d9 F9000000 		.4byte	.LASF133
 2666 08dd 0A       		.byte	0xa
 2667 08de 6202     		.2byte	0x262
 2668 08e0 CA020000 		.4byte	0x2ca
 2669 08e4 78       		.byte	0x78
 2670 08e5 1A       		.uleb128 0x1a
 2671 08e6 60090000 		.4byte	.LASF134
 2672 08ea 0A       		.byte	0xa
 2673 08eb 6302     		.2byte	0x263
 2674 08ed 6B090000 		.4byte	0x96b
 2675 08f1 80       		.byte	0x80
 2676 08f2 1A       		.uleb128 0x1a
 2677 08f3 E3030000 		.4byte	.LASF135
 2678 08f7 0A       		.byte	0xa
 2679 08f8 6402     		.2byte	0x264
ARM GAS  /tmp/ccsh7mrZ.s 			page 65


 2680 08fa 7B090000 		.4byte	0x97b
 2681 08fe 88       		.byte	0x88
 2682 08ff 1A       		.uleb128 0x1a
 2683 0900 62000000 		.4byte	.LASF136
 2684 0904 0A       		.byte	0xa
 2685 0905 6502     		.2byte	0x265
 2686 0907 25000000 		.4byte	0x25
 2687 090b A0       		.byte	0xa0
 2688 090c 1A       		.uleb128 0x1a
 2689 090d 61020000 		.4byte	.LASF137
 2690 0911 0A       		.byte	0xa
 2691 0912 6602     		.2byte	0x266
 2692 0914 CA020000 		.4byte	0x2ca
 2693 0918 A4       		.byte	0xa4
 2694 0919 1A       		.uleb128 0x1a
 2695 091a D7000000 		.4byte	.LASF138
 2696 091e 0A       		.byte	0xa
 2697 091f 6702     		.2byte	0x267
 2698 0921 CA020000 		.4byte	0x2ca
 2699 0925 AC       		.byte	0xac
 2700 0926 1A       		.uleb128 0x1a
 2701 0927 43020000 		.4byte	.LASF139
 2702 092b 0A       		.byte	0xa
 2703 092c 6802     		.2byte	0x268
 2704 092e CA020000 		.4byte	0x2ca
 2705 0932 B4       		.byte	0xb4
 2706 0933 1A       		.uleb128 0x1a
 2707 0934 7B000000 		.4byte	.LASF140
 2708 0938 0A       		.byte	0xa
 2709 0939 6902     		.2byte	0x269
 2710 093b CA020000 		.4byte	0x2ca
 2711 093f BC       		.byte	0xbc
 2712 0940 1A       		.uleb128 0x1a
 2713 0941 8A000000 		.4byte	.LASF141
 2714 0945 0A       		.byte	0xa
 2715 0946 6A02     		.2byte	0x26a
 2716 0948 CA020000 		.4byte	0x2ca
 2717 094c C4       		.byte	0xc4
 2718 094d 1A       		.uleb128 0x1a
 2719 094e 13070000 		.4byte	.LASF142
 2720 0952 0A       		.byte	0xa
 2721 0953 6B02     		.2byte	0x26b
 2722 0955 25000000 		.4byte	0x25
 2723 0959 CC       		.byte	0xcc
 2724 095a 00       		.byte	0
 2725 095b 08       		.uleb128 0x8
 2726 095c 2E070000 		.4byte	0x72e
 2727 0960 6B090000 		.4byte	0x96b
 2728 0964 09       		.uleb128 0x9
 2729 0965 C3000000 		.4byte	0xc3
 2730 0969 19       		.byte	0x19
 2731 096a 00       		.byte	0
 2732 096b 08       		.uleb128 0x8
 2733 096c 2E070000 		.4byte	0x72e
 2734 0970 7B090000 		.4byte	0x97b
 2735 0974 09       		.uleb128 0x9
 2736 0975 C3000000 		.4byte	0xc3
ARM GAS  /tmp/ccsh7mrZ.s 			page 66


 2737 0979 07       		.byte	0x7
 2738 097a 00       		.byte	0
 2739 097b 08       		.uleb128 0x8
 2740 097c 2E070000 		.4byte	0x72e
 2741 0980 8B090000 		.4byte	0x98b
 2742 0984 09       		.uleb128 0x9
 2743 0985 C3000000 		.4byte	0xc3
 2744 0989 17       		.byte	0x17
 2745 098a 00       		.byte	0
 2746 098b 1D       		.uleb128 0x1d
 2747 098c F0       		.byte	0xf0
 2748 098d 0A       		.byte	0xa
 2749 098e 7002     		.2byte	0x270
 2750 0990 AF090000 		.4byte	0x9af
 2751 0994 1A       		.uleb128 0x1a
 2752 0995 17040000 		.4byte	.LASF143
 2753 0999 0A       		.byte	0xa
 2754 099a 7302     		.2byte	0x273
 2755 099c AF090000 		.4byte	0x9af
 2756 09a0 00       		.byte	0
 2757 09a1 1A       		.uleb128 0x1a
 2758 09a2 57090000 		.4byte	.LASF144
 2759 09a6 0A       		.byte	0xa
 2760 09a7 7402     		.2byte	0x274
 2761 09a9 BF090000 		.4byte	0x9bf
 2762 09ad 78       		.byte	0x78
 2763 09ae 00       		.byte	0
 2764 09af 08       		.uleb128 0x8
 2765 09b0 9D040000 		.4byte	0x49d
 2766 09b4 BF090000 		.4byte	0x9bf
 2767 09b8 09       		.uleb128 0x9
 2768 09b9 C3000000 		.4byte	0xc3
 2769 09bd 1D       		.byte	0x1d
 2770 09be 00       		.byte	0
 2771 09bf 08       		.uleb128 0x8
 2772 09c0 2C000000 		.4byte	0x2c
 2773 09c4 CF090000 		.4byte	0x9cf
 2774 09c8 09       		.uleb128 0x9
 2775 09c9 C3000000 		.4byte	0xc3
 2776 09cd 1D       		.byte	0x1d
 2777 09ce 00       		.byte	0
 2778 09cf 1E       		.uleb128 0x1e
 2779 09d0 F0       		.byte	0xf0
 2780 09d1 0A       		.byte	0xa
 2781 09d2 5502     		.2byte	0x255
 2782 09d4 F1090000 		.4byte	0x9f1
 2783 09d8 1F       		.uleb128 0x1f
 2784 09d9 B1070000 		.4byte	.LASF93
 2785 09dd 0A       		.byte	0xa
 2786 09de 6C02     		.2byte	0x26c
 2787 09e0 5A080000 		.4byte	0x85a
 2788 09e4 1F       		.uleb128 0x1f
 2789 09e5 C8090000 		.4byte	.LASF145
 2790 09e9 0A       		.byte	0xa
 2791 09ea 7502     		.2byte	0x275
 2792 09ec 8B090000 		.4byte	0x98b
 2793 09f0 00       		.byte	0
ARM GAS  /tmp/ccsh7mrZ.s 			page 67


 2794 09f1 08       		.uleb128 0x8
 2795 09f2 2E070000 		.4byte	0x72e
 2796 09f6 010A0000 		.4byte	0xa01
 2797 09fa 09       		.uleb128 0x9
 2798 09fb C3000000 		.4byte	0xc3
 2799 09ff 18       		.byte	0x18
 2800 0a00 00       		.byte	0
 2801 0a01 20       		.uleb128 0x20
 2802 0a02 0C0A0000 		.4byte	0xa0c
 2803 0a06 18       		.uleb128 0x18
 2804 0a07 EB050000 		.4byte	0x5eb
 2805 0a0b 00       		.byte	0
 2806 0a0c 13       		.uleb128 0x13
 2807 0a0d 04       		.byte	0x4
 2808 0a0e 010A0000 		.4byte	0xa01
 2809 0a12 13       		.uleb128 0x13
 2810 0a13 04       		.byte	0x4
 2811 0a14 3E030000 		.4byte	0x33e
 2812 0a18 20       		.uleb128 0x20
 2813 0a19 230A0000 		.4byte	0xa23
 2814 0a1d 18       		.uleb128 0x18
 2815 0a1e 25000000 		.4byte	0x25
 2816 0a22 00       		.byte	0
 2817 0a23 13       		.uleb128 0x13
 2818 0a24 04       		.byte	0x4
 2819 0a25 290A0000 		.4byte	0xa29
 2820 0a29 13       		.uleb128 0x13
 2821 0a2a 04       		.byte	0x4
 2822 0a2b 180A0000 		.4byte	0xa18
 2823 0a2f 08       		.uleb128 0x8
 2824 0a30 C8070000 		.4byte	0x7c8
 2825 0a34 3F0A0000 		.4byte	0xa3f
 2826 0a38 09       		.uleb128 0x9
 2827 0a39 C3000000 		.4byte	0xc3
 2828 0a3d 02       		.byte	0x2
 2829 0a3e 00       		.byte	0
 2830 0a3f 0A       		.uleb128 0xa
 2831 0a40 B2020000 		.4byte	.LASF146
 2832 0a44 0A       		.byte	0xa
 2833 0a45 FD02     		.2byte	0x2fd
 2834 0a47 EB050000 		.4byte	0x5eb
 2835 0a4b 0A       		.uleb128 0xa
 2836 0a4c E1080000 		.4byte	.LASF147
 2837 0a50 0A       		.byte	0xa
 2838 0a51 FE02     		.2byte	0x2fe
 2839 0a53 F1050000 		.4byte	0x5f1
 2840 0a57 0B       		.uleb128 0xb
 2841 0a58 EB050000 		.4byte	.LASF148
 2842 0a5c 0B       		.byte	0xb
 2843 0a5d 5F       		.byte	0x5f
 2844 0a5e 28070000 		.4byte	0x728
 2845 0a62 0B       		.uleb128 0xb
 2846 0a63 46060000 		.4byte	.LASF149
 2847 0a67 0C       		.byte	0xc
 2848 0a68 8F       		.byte	0x8f
 2849 0a69 740A0000 		.4byte	0xa74
 2850 0a6d 03       		.uleb128 0x3
ARM GAS  /tmp/ccsh7mrZ.s 			page 68


 2851 0a6e 01       		.byte	0x1
 2852 0a6f 02       		.byte	0x2
 2853 0a70 D0060000 		.4byte	.LASF150
 2854 0a74 06       		.uleb128 0x6
 2855 0a75 6D0A0000 		.4byte	0xa6d
 2856 0a79 21       		.uleb128 0x21
 2857 0a7a 8B090000 		.4byte	.LASF151
 2858 0a7e 0C       		.byte	0xc
 2859 0a7f 94       		.byte	0x94
 2860 0a80 B7000000 		.4byte	0xb7
 2861 0a84 05       		.uleb128 0x5
 2862 0a85 03       		.byte	0x3
 2863 0a86 00000000 		.4byte	cpu_irq_critical_section_counter
 2864 0a8a 21       		.uleb128 0x21
 2865 0a8b B9040000 		.4byte	.LASF152
 2866 0a8f 0C       		.byte	0xc
 2867 0a90 95       		.byte	0x95
 2868 0a91 740A0000 		.4byte	0xa74
 2869 0a95 05       		.uleb128 0x5
 2870 0a96 03       		.byte	0x3
 2871 0a97 00000000 		.4byte	cpu_irq_prev_interrupt_state
 2872 0a9b 03       		.uleb128 0x3
 2873 0a9c 04       		.byte	0x4
 2874 0a9d 04       		.byte	0x4
 2875 0a9e 1D060000 		.4byte	.LASF153
 2876 0aa2 03       		.uleb128 0x3
 2877 0aa3 08       		.byte	0x8
 2878 0aa4 04       		.byte	0x4
 2879 0aa5 FE010000 		.4byte	.LASF154
 2880 0aa9 11       		.uleb128 0x11
 2881 0aaa 66080000 		.4byte	.LASF155
 2882 0aae 0C       		.byte	0xc
 2883 0aaf 0D       		.byte	0xd
 2884 0ab0 54       		.byte	0x54
 2885 0ab1 E60A0000 		.4byte	0xae6
 2886 0ab5 0D       		.uleb128 0xd
 2887 0ab6 E6000000 		.4byte	.LASF156
 2888 0aba 0D       		.byte	0xd
 2889 0abb 56       		.byte	0x56
 2890 0abc AC000000 		.4byte	0xac
 2891 0ac0 00       		.byte	0
 2892 0ac1 0D       		.uleb128 0xd
 2893 0ac2 D0090000 		.4byte	.LASF157
 2894 0ac6 0D       		.byte	0xd
 2895 0ac7 58       		.byte	0x58
 2896 0ac8 AC000000 		.4byte	0xac
 2897 0acc 04       		.byte	0x4
 2898 0acd 0D       		.uleb128 0xd
 2899 0ace 88080000 		.4byte	.LASF158
 2900 0ad2 0D       		.byte	0xd
 2901 0ad3 5A       		.byte	0x5a
 2902 0ad4 8C000000 		.4byte	0x8c
 2903 0ad8 08       		.byte	0x8
 2904 0ad9 0D       		.uleb128 0xd
 2905 0ada 97030000 		.4byte	.LASF159
 2906 0ade 0D       		.byte	0xd
 2907 0adf 5C       		.byte	0x5c
ARM GAS  /tmp/ccsh7mrZ.s 			page 69


 2908 0ae0 8C000000 		.4byte	0x8c
 2909 0ae4 09       		.byte	0x9
 2910 0ae5 00       		.byte	0
 2911 0ae6 04       		.uleb128 0x4
 2912 0ae7 46040000 		.4byte	.LASF160
 2913 0aeb 0D       		.byte	0xd
 2914 0aec 5D       		.byte	0x5d
 2915 0aed A90A0000 		.4byte	0xaa9
 2916 0af1 05       		.uleb128 0x5
 2917 0af2 E60A0000 		.4byte	0xae6
 2918 0af6 11       		.uleb128 0x11
 2919 0af7 FC030000 		.4byte	.LASF161
 2920 0afb 14       		.byte	0x14
 2921 0afc 0D       		.byte	0xd
 2922 0afd 62       		.byte	0x62
 2923 0afe 3F0B0000 		.4byte	0xb3f
 2924 0b02 0D       		.uleb128 0xd
 2925 0b03 AE000000 		.4byte	.LASF162
 2926 0b07 0D       		.byte	0xd
 2927 0b08 64       		.byte	0x64
 2928 0b09 3F0B0000 		.4byte	0xb3f
 2929 0b0d 00       		.byte	0
 2930 0b0e 0D       		.uleb128 0xd
 2931 0b0f F9040000 		.4byte	.LASF163
 2932 0b13 0D       		.byte	0xd
 2933 0b14 66       		.byte	0x66
 2934 0b15 AC000000 		.4byte	0xac
 2935 0b19 04       		.byte	0x4
 2936 0b1a 0D       		.uleb128 0xd
 2937 0b1b 78070000 		.4byte	.LASF164
 2938 0b1f 0D       		.byte	0xd
 2939 0b20 68       		.byte	0x68
 2940 0b21 C1000000 		.4byte	0xc1
 2941 0b25 08       		.byte	0x8
 2942 0b26 0D       		.uleb128 0xd
 2943 0b27 F8070000 		.4byte	.LASF165
 2944 0b2b 0D       		.byte	0xd
 2945 0b2c 6A       		.byte	0x6a
 2946 0b2d AC000000 		.4byte	0xac
 2947 0b31 0C       		.byte	0xc
 2948 0b32 0D       		.uleb128 0xd
 2949 0b33 88080000 		.4byte	.LASF158
 2950 0b37 0D       		.byte	0xd
 2951 0b38 6C       		.byte	0x6c
 2952 0b39 8C000000 		.4byte	0x8c
 2953 0b3d 10       		.byte	0x10
 2954 0b3e 00       		.byte	0
 2955 0b3f 08       		.uleb128 0x8
 2956 0b40 8C000000 		.4byte	0x8c
 2957 0b44 4F0B0000 		.4byte	0xb4f
 2958 0b48 09       		.uleb128 0x9
 2959 0b49 C3000000 		.4byte	0xc3
 2960 0b4d 02       		.byte	0x2
 2961 0b4e 00       		.byte	0
 2962 0b4f 04       		.uleb128 0x4
 2963 0b50 03060000 		.4byte	.LASF166
 2964 0b54 0D       		.byte	0xd
ARM GAS  /tmp/ccsh7mrZ.s 			page 70


 2965 0b55 6D       		.byte	0x6d
 2966 0b56 F60A0000 		.4byte	0xaf6
 2967 0b5a 22       		.uleb128 0x22
 2968 0b5b 92060000 		.4byte	.LASF177
 2969 0b5f 01       		.byte	0x1
 2970 0b60 CB02     		.2byte	0x2cb
 2971 0b62 00000000 		.4byte	.LFB193
 2972 0b66 38000000 		.4byte	.LFE193-.LFB193
 2973 0b6a 01       		.uleb128 0x1
 2974 0b6b 9C       		.byte	0x9c
 2975 0b6c 0D0C0000 		.4byte	0xc0d
 2976 0b70 23       		.uleb128 0x23
 2977 0b71 830A0000 		.4byte	.LASF167
 2978 0b75 01       		.byte	0x1
 2979 0b76 CB02     		.2byte	0x2cb
 2980 0b78 0D0C0000 		.4byte	0xc0d
 2981 0b7c 01       		.uleb128 0x1
 2982 0b7d 50       		.byte	0x50
 2983 0b7e 23       		.uleb128 0x23
 2984 0b7f 3A0A0000 		.4byte	.LASF168
 2985 0b83 01       		.byte	0x1
 2986 0b84 CC02     		.2byte	0x2cc
 2987 0b86 AC000000 		.4byte	0xac
 2988 0b8a 01       		.uleb128 0x1
 2989 0b8b 51       		.byte	0x51
 2990 0b8c 24       		.uleb128 0x24
 2991 0b8d 50080000 		.4byte	.LASF169
 2992 0b91 01       		.byte	0x1
 2993 0b92 CC02     		.2byte	0x2cc
 2994 0b94 6D0A0000 		.4byte	0xa6d
 2995 0b98 00000000 		.4byte	.LLST54
 2996 0b9c 24       		.uleb128 0x24
 2997 0b9d 29020000 		.4byte	.LASF170
 2998 0ba1 01       		.byte	0x1
 2999 0ba2 CD02     		.2byte	0x2cd
 3000 0ba4 AC000000 		.4byte	0xac
 3001 0ba8 21000000 		.4byte	.LLST55
 3002 0bac 24       		.uleb128 0x24
 3003 0bad 56080000 		.4byte	.LASF171
 3004 0bb1 01       		.byte	0x1
 3005 0bb2 CD02     		.2byte	0x2cd
 3006 0bb4 6D0A0000 		.4byte	0xa6d
 3007 0bb8 42000000 		.4byte	.LLST56
 3008 0bbc 24       		.uleb128 0x24
 3009 0bbd 570A0000 		.4byte	.LASF172
 3010 0bc1 01       		.byte	0x1
 3011 0bc2 CE02     		.2byte	0x2ce
 3012 0bc4 AC000000 		.4byte	0xac
 3013 0bc8 62000000 		.4byte	.LLST57
 3014 0bcc 24       		.uleb128 0x24
 3015 0bcd 05050000 		.4byte	.LASF173
 3016 0bd1 01       		.byte	0x1
 3017 0bd2 CE02     		.2byte	0x2ce
 3018 0bd4 6D0A0000 		.4byte	0xa6d
 3019 0bd8 82000000 		.4byte	.LLST58
 3020 0bdc 24       		.uleb128 0x24
 3021 0bdd B0010000 		.4byte	.LASF174
ARM GAS  /tmp/ccsh7mrZ.s 			page 71


 3022 0be1 01       		.byte	0x1
 3023 0be2 CF02     		.2byte	0x2cf
 3024 0be4 AC000000 		.4byte	0xac
 3025 0be8 A2000000 		.4byte	.LLST59
 3026 0bec 24       		.uleb128 0x24
 3027 0bed 5D070000 		.4byte	.LASF175
 3028 0bf1 01       		.byte	0x1
 3029 0bf2 CF02     		.2byte	0x2cf
 3030 0bf4 6D0A0000 		.4byte	0xa6d
 3031 0bf8 C2000000 		.4byte	.LLST60
 3032 0bfc 25       		.uleb128 0x25
 3033 0bfd FA020000 		.4byte	.LASF176
 3034 0c01 01       		.byte	0x1
 3035 0c02 D102     		.2byte	0x2d1
 3036 0c04 AC000000 		.4byte	0xac
 3037 0c08 E2000000 		.4byte	.LLST61
 3038 0c0c 00       		.byte	0
 3039 0c0d 13       		.uleb128 0x13
 3040 0c0e 04       		.byte	0x4
 3041 0c0f 42020000 		.4byte	0x242
 3042 0c13 22       		.uleb128 0x22
 3043 0c14 AC090000 		.4byte	.LASF178
 3044 0c18 01       		.byte	0x1
 3045 0c19 B802     		.2byte	0x2b8
 3046 0c1b 00000000 		.4byte	.LFB192
 3047 0c1f 0E000000 		.4byte	.LFE192-.LFB192
 3048 0c23 01       		.uleb128 0x1
 3049 0c24 9C       		.byte	0x9c
 3050 0c25 480C0000 		.4byte	0xc48
 3051 0c29 23       		.uleb128 0x23
 3052 0c2a 830A0000 		.4byte	.LASF167
 3053 0c2e 01       		.byte	0x1
 3054 0c2f B802     		.2byte	0x2b8
 3055 0c31 0D0C0000 		.4byte	0xc0d
 3056 0c35 01       		.uleb128 0x1
 3057 0c36 50       		.byte	0x50
 3058 0c37 24       		.uleb128 0x24
 3059 0c38 C2000000 		.4byte	.LASF179
 3060 0c3c 01       		.byte	0x1
 3061 0c3d B802     		.2byte	0x2b8
 3062 0c3f AC000000 		.4byte	0xac
 3063 0c43 01010000 		.4byte	.LLST53
 3064 0c47 00       		.byte	0
 3065 0c48 22       		.uleb128 0x22
 3066 0c49 3C000000 		.4byte	.LASF180
 3067 0c4d 01       		.byte	0x1
 3068 0c4e AC02     		.2byte	0x2ac
 3069 0c50 00000000 		.4byte	.LFB191
 3070 0c54 04000000 		.4byte	.LFE191-.LFB191
 3071 0c58 01       		.uleb128 0x1
 3072 0c59 9C       		.byte	0x9c
 3073 0c5a 7B0C0000 		.4byte	0xc7b
 3074 0c5e 23       		.uleb128 0x23
 3075 0c5f 830A0000 		.4byte	.LASF167
 3076 0c63 01       		.byte	0x1
 3077 0c64 AC02     		.2byte	0x2ac
 3078 0c66 0D0C0000 		.4byte	0xc0d
ARM GAS  /tmp/ccsh7mrZ.s 			page 72


 3079 0c6a 01       		.uleb128 0x1
 3080 0c6b 50       		.byte	0x50
 3081 0c6c 23       		.uleb128 0x23
 3082 0c6d 9B000000 		.4byte	.LASF181
 3083 0c71 01       		.byte	0x1
 3084 0c72 AC02     		.2byte	0x2ac
 3085 0c74 AC000000 		.4byte	0xac
 3086 0c78 01       		.uleb128 0x1
 3087 0c79 51       		.byte	0x51
 3088 0c7a 00       		.byte	0
 3089 0c7b 22       		.uleb128 0x22
 3090 0c7c 74090000 		.4byte	.LASF182
 3091 0c80 01       		.byte	0x1
 3092 0c81 9402     		.2byte	0x294
 3093 0c83 00000000 		.4byte	.LFB190
 3094 0c87 04000000 		.4byte	.LFE190-.LFB190
 3095 0c8b 01       		.uleb128 0x1
 3096 0c8c 9C       		.byte	0x9c
 3097 0c8d AE0C0000 		.4byte	0xcae
 3098 0c91 23       		.uleb128 0x23
 3099 0c92 830A0000 		.4byte	.LASF167
 3100 0c96 01       		.byte	0x1
 3101 0c97 9402     		.2byte	0x294
 3102 0c99 0D0C0000 		.4byte	0xc0d
 3103 0c9d 01       		.uleb128 0x1
 3104 0c9e 50       		.byte	0x50
 3105 0c9f 23       		.uleb128 0x23
 3106 0ca0 2C030000 		.4byte	.LASF183
 3107 0ca4 01       		.byte	0x1
 3108 0ca5 9402     		.2byte	0x294
 3109 0ca7 AC000000 		.4byte	0xac
 3110 0cab 01       		.uleb128 0x1
 3111 0cac 51       		.byte	0x51
 3112 0cad 00       		.byte	0
 3113 0cae 22       		.uleb128 0x22
 3114 0caf 23060000 		.4byte	.LASF184
 3115 0cb3 01       		.byte	0x1
 3116 0cb4 8902     		.2byte	0x289
 3117 0cb6 00000000 		.4byte	.LFB189
 3118 0cba 08000000 		.4byte	.LFE189-.LFB189
 3119 0cbe 01       		.uleb128 0x1
 3120 0cbf 9C       		.byte	0x9c
 3121 0cc0 E10C0000 		.4byte	0xce1
 3122 0cc4 23       		.uleb128 0x23
 3123 0cc5 830A0000 		.4byte	.LASF167
 3124 0cc9 01       		.byte	0x1
 3125 0cca 8902     		.2byte	0x289
 3126 0ccc 0D0C0000 		.4byte	0xc0d
 3127 0cd0 01       		.uleb128 0x1
 3128 0cd1 50       		.byte	0x50
 3129 0cd2 23       		.uleb128 0x23
 3130 0cd3 71060000 		.4byte	.LASF185
 3131 0cd7 01       		.byte	0x1
 3132 0cd8 8902     		.2byte	0x289
 3133 0cda E10C0000 		.4byte	0xce1
 3134 0cde 01       		.uleb128 0x1
 3135 0cdf 51       		.byte	0x51
ARM GAS  /tmp/ccsh7mrZ.s 			page 73


 3136 0ce0 00       		.byte	0
 3137 0ce1 13       		.uleb128 0x13
 3138 0ce2 04       		.byte	0x4
 3139 0ce3 AC000000 		.4byte	0xac
 3140 0ce7 22       		.uleb128 0x22
 3141 0ce8 1E040000 		.4byte	.LASF186
 3142 0cec 01       		.byte	0x1
 3143 0ced 7A02     		.2byte	0x27a
 3144 0cef 00000000 		.4byte	.LFB188
 3145 0cf3 1C000000 		.4byte	.LFE188-.LFB188
 3146 0cf7 01       		.uleb128 0x1
 3147 0cf8 9C       		.byte	0x9c
 3148 0cf9 1A0D0000 		.4byte	0xd1a
 3149 0cfd 23       		.uleb128 0x23
 3150 0cfe 830A0000 		.4byte	.LASF167
 3151 0d02 01       		.byte	0x1
 3152 0d03 7A02     		.2byte	0x27a
 3153 0d05 0D0C0000 		.4byte	0xc0d
 3154 0d09 01       		.uleb128 0x1
 3155 0d0a 50       		.byte	0x50
 3156 0d0b 23       		.uleb128 0x23
 3157 0d0c 5D070000 		.4byte	.LASF175
 3158 0d10 01       		.byte	0x1
 3159 0d11 7A02     		.2byte	0x27a
 3160 0d13 6D0A0000 		.4byte	0xa6d
 3161 0d17 01       		.uleb128 0x1
 3162 0d18 51       		.byte	0x51
 3163 0d19 00       		.byte	0
 3164 0d1a 26       		.uleb128 0x26
 3165 0d1b A9060000 		.4byte	.LASF195
 3166 0d1f 01       		.byte	0x1
 3167 0d20 5702     		.2byte	0x257
 3168 0d22 01       		.byte	0x1
 3169 0d23 340D0000 		.4byte	0xd34
 3170 0d27 27       		.uleb128 0x27
 3171 0d28 830A0000 		.4byte	.LASF167
 3172 0d2c 01       		.byte	0x1
 3173 0d2d 5702     		.2byte	0x257
 3174 0d2f 0D0C0000 		.4byte	0xc0d
 3175 0d33 00       		.byte	0
 3176 0d34 28       		.uleb128 0x28
 3177 0d35 00000000 		.4byte	.LASF189
 3178 0d39 01       		.byte	0x1
 3179 0d3a 3C02     		.2byte	0x23c
 3180 0d3c AC000000 		.4byte	0xac
 3181 0d40 00000000 		.4byte	.LFB186
 3182 0d44 38000000 		.4byte	.LFE186-.LFB186
 3183 0d48 01       		.uleb128 0x1
 3184 0d49 9C       		.byte	0x9c
 3185 0d4a 8F0D0000 		.4byte	0xd8f
 3186 0d4e 24       		.uleb128 0x24
 3187 0d4f 830A0000 		.4byte	.LASF167
 3188 0d53 01       		.byte	0x1
 3189 0d54 3C02     		.2byte	0x23c
 3190 0d56 0D0C0000 		.4byte	0xc0d
 3191 0d5a 22010000 		.4byte	.LLST49
 3192 0d5e 24       		.uleb128 0x24
ARM GAS  /tmp/ccsh7mrZ.s 			page 74


 3193 0d5f 240A0000 		.4byte	.LASF187
 3194 0d63 01       		.byte	0x1
 3195 0d64 3C02     		.2byte	0x23c
 3196 0d66 8F0D0000 		.4byte	0xd8f
 3197 0d6a 43010000 		.4byte	.LLST50
 3198 0d6e 25       		.uleb128 0x25
 3199 0d6f 26090000 		.4byte	.LASF188
 3200 0d73 01       		.byte	0x1
 3201 0d74 3E02     		.2byte	0x23e
 3202 0d76 AC000000 		.4byte	0xac
 3203 0d7a 6E010000 		.4byte	.LLST51
 3204 0d7e 29       		.uleb128 0x29
 3205 0d7f 636E7400 		.ascii	"cnt\000"
 3206 0d83 01       		.byte	0x1
 3207 0d84 3E02     		.2byte	0x23e
 3208 0d86 AC000000 		.4byte	0xac
 3209 0d8a 8C010000 		.4byte	.LLST52
 3210 0d8e 00       		.byte	0
 3211 0d8f 13       		.uleb128 0x13
 3212 0d90 04       		.byte	0x4
 3213 0d91 8C000000 		.4byte	0x8c
 3214 0d95 28       		.uleb128 0x28
 3215 0d96 06090000 		.4byte	.LASF190
 3216 0d9a 01       		.byte	0x1
 3217 0d9b 1D02     		.2byte	0x21d
 3218 0d9d AC000000 		.4byte	0xac
 3219 0da1 00000000 		.4byte	.LFB185
 3220 0da5 3A000000 		.4byte	.LFE185-.LFB185
 3221 0da9 01       		.uleb128 0x1
 3222 0daa 9C       		.byte	0x9c
 3223 0dab F00D0000 		.4byte	0xdf0
 3224 0daf 24       		.uleb128 0x24
 3225 0db0 830A0000 		.4byte	.LASF167
 3226 0db4 01       		.byte	0x1
 3227 0db5 1D02     		.2byte	0x21d
 3228 0db7 0D0C0000 		.4byte	0xc0d
 3229 0dbb B6010000 		.4byte	.LLST45
 3230 0dbf 24       		.uleb128 0x24
 3231 0dc0 240A0000 		.4byte	.LASF187
 3232 0dc4 01       		.byte	0x1
 3233 0dc5 1D02     		.2byte	0x21d
 3234 0dc7 8F0D0000 		.4byte	0xd8f
 3235 0dcb D7010000 		.4byte	.LLST46
 3236 0dcf 25       		.uleb128 0x25
 3237 0dd0 26090000 		.4byte	.LASF188
 3238 0dd4 01       		.byte	0x1
 3239 0dd5 1F02     		.2byte	0x21f
 3240 0dd7 AC000000 		.4byte	0xac
 3241 0ddb 02020000 		.4byte	.LLST47
 3242 0ddf 29       		.uleb128 0x29
 3243 0de0 636E7400 		.ascii	"cnt\000"
 3244 0de4 01       		.byte	0x1
 3245 0de5 1F02     		.2byte	0x21f
 3246 0de7 AC000000 		.4byte	0xac
 3247 0deb 20020000 		.4byte	.LLST48
 3248 0def 00       		.byte	0
 3249 0df0 22       		.uleb128 0x22
ARM GAS  /tmp/ccsh7mrZ.s 			page 75


 3250 0df1 A30A0000 		.4byte	.LASF191
 3251 0df5 01       		.byte	0x1
 3252 0df6 0D02     		.2byte	0x20d
 3253 0df8 00000000 		.4byte	.LFB184
 3254 0dfc 0A000000 		.4byte	.LFE184-.LFB184
 3255 0e00 01       		.uleb128 0x1
 3256 0e01 9C       		.byte	0x9c
 3257 0e02 250E0000 		.4byte	0xe25
 3258 0e06 23       		.uleb128 0x23
 3259 0e07 830A0000 		.4byte	.LASF167
 3260 0e0b 01       		.byte	0x1
 3261 0e0c 0D02     		.2byte	0x20d
 3262 0e0e 0D0C0000 		.4byte	0xc0d
 3263 0e12 01       		.uleb128 0x1
 3264 0e13 50       		.byte	0x50
 3265 0e14 24       		.uleb128 0x24
 3266 0e15 17090000 		.4byte	.LASF192
 3267 0e19 01       		.byte	0x1
 3268 0e1a 0D02     		.2byte	0x20d
 3269 0e1c AC000000 		.4byte	0xac
 3270 0e20 4A020000 		.4byte	.LLST44
 3271 0e24 00       		.byte	0
 3272 0e25 22       		.uleb128 0x22
 3273 0e26 3F080000 		.4byte	.LASF193
 3274 0e2a 01       		.byte	0x1
 3275 0e2b F701     		.2byte	0x1f7
 3276 0e2d 00000000 		.4byte	.LFB183
 3277 0e31 28000000 		.4byte	.LFE183-.LFB183
 3278 0e35 01       		.uleb128 0x1
 3279 0e36 9C       		.byte	0x9c
 3280 0e37 920E0000 		.4byte	0xe92
 3281 0e3b 23       		.uleb128 0x23
 3282 0e3c 830A0000 		.4byte	.LASF167
 3283 0e40 01       		.byte	0x1
 3284 0e41 F701     		.2byte	0x1f7
 3285 0e43 0D0C0000 		.4byte	0xc0d
 3286 0e47 01       		.uleb128 0x1
 3287 0e48 50       		.byte	0x50
 3288 0e49 24       		.uleb128 0x24
 3289 0e4a 17090000 		.4byte	.LASF192
 3290 0e4e 01       		.byte	0x1
 3291 0e4f F701     		.2byte	0x1f7
 3292 0e51 AC000000 		.4byte	0xac
 3293 0e55 6B020000 		.4byte	.LLST41
 3294 0e59 2A       		.uleb128 0x2a
 3295 0e5a B70E0000 		.4byte	0xeb7
 3296 0e5e 02000000 		.4byte	.LBB60
 3297 0e62 98000000 		.4byte	.Ldebug_ranges0+0x98
 3298 0e66 01       		.byte	0x1
 3299 0e67 0402     		.2byte	0x204
 3300 0e69 770E0000 		.4byte	0xe77
 3301 0e6d 2B       		.uleb128 0x2b
 3302 0e6e C40E0000 		.4byte	0xec4
 3303 0e72 8C020000 		.4byte	.LLST42
 3304 0e76 00       		.byte	0
 3305 0e77 2C       		.uleb128 0x2c
 3306 0e78 1A0D0000 		.4byte	0xd1a
ARM GAS  /tmp/ccsh7mrZ.s 			page 76


 3307 0e7c 10000000 		.4byte	.LBB64
 3308 0e80 B8000000 		.4byte	.Ldebug_ranges0+0xb8
 3309 0e84 01       		.byte	0x1
 3310 0e85 FE01     		.2byte	0x1fe
 3311 0e87 2B       		.uleb128 0x2b
 3312 0e88 270D0000 		.4byte	0xd27
 3313 0e8c 9F020000 		.4byte	.LLST43
 3314 0e90 00       		.byte	0
 3315 0e91 00       		.byte	0
 3316 0e92 22       		.uleb128 0x22
 3317 0e93 FA060000 		.4byte	.LASF194
 3318 0e97 01       		.byte	0x1
 3319 0e98 EB01     		.2byte	0x1eb
 3320 0e9a 00000000 		.4byte	.LFB182
 3321 0e9e 06000000 		.4byte	.LFE182-.LFB182
 3322 0ea2 01       		.uleb128 0x1
 3323 0ea3 9C       		.byte	0x9c
 3324 0ea4 B70E0000 		.4byte	0xeb7
 3325 0ea8 23       		.uleb128 0x23
 3326 0ea9 830A0000 		.4byte	.LASF167
 3327 0ead 01       		.byte	0x1
 3328 0eae EB01     		.2byte	0x1eb
 3329 0eb0 0D0C0000 		.4byte	0xc0d
 3330 0eb4 01       		.uleb128 0x1
 3331 0eb5 50       		.byte	0x50
 3332 0eb6 00       		.byte	0
 3333 0eb7 26       		.uleb128 0x26
 3334 0eb8 05020000 		.4byte	.LASF196
 3335 0ebc 01       		.byte	0x1
 3336 0ebd DC01     		.2byte	0x1dc
 3337 0ebf 01       		.byte	0x1
 3338 0ec0 D10E0000 		.4byte	0xed1
 3339 0ec4 27       		.uleb128 0x27
 3340 0ec5 830A0000 		.4byte	.LASF167
 3341 0ec9 01       		.byte	0x1
 3342 0eca DC01     		.2byte	0x1dc
 3343 0ecc 0D0C0000 		.4byte	0xc0d
 3344 0ed0 00       		.byte	0
 3345 0ed1 22       		.uleb128 0x22
 3346 0ed2 90020000 		.4byte	.LASF197
 3347 0ed6 01       		.byte	0x1
 3348 0ed7 D201     		.2byte	0x1d2
 3349 0ed9 00000000 		.4byte	.LFB180
 3350 0edd 04000000 		.4byte	.LFE180-.LFB180
 3351 0ee1 01       		.uleb128 0x1
 3352 0ee2 9C       		.byte	0x9c
 3353 0ee3 040F0000 		.4byte	0xf04
 3354 0ee7 23       		.uleb128 0x23
 3355 0ee8 830A0000 		.4byte	.LASF167
 3356 0eec 01       		.byte	0x1
 3357 0eed D201     		.2byte	0x1d2
 3358 0eef 0D0C0000 		.4byte	0xc0d
 3359 0ef3 01       		.uleb128 0x1
 3360 0ef4 50       		.byte	0x50
 3361 0ef5 23       		.uleb128 0x23
 3362 0ef6 F1000000 		.4byte	.LASF198
 3363 0efa 01       		.byte	0x1
ARM GAS  /tmp/ccsh7mrZ.s 			page 77


 3364 0efb D201     		.2byte	0x1d2
 3365 0efd 8C000000 		.4byte	0x8c
 3366 0f01 01       		.uleb128 0x1
 3367 0f02 51       		.byte	0x51
 3368 0f03 00       		.byte	0
 3369 0f04 28       		.uleb128 0x28
 3370 0f05 20050000 		.4byte	.LASF199
 3371 0f09 01       		.byte	0x1
 3372 0f0a C701     		.2byte	0x1c7
 3373 0f0c 8C000000 		.4byte	0x8c
 3374 0f10 00000000 		.4byte	.LFB179
 3375 0f14 06000000 		.4byte	.LFE179-.LFB179
 3376 0f18 01       		.uleb128 0x1
 3377 0f19 9C       		.byte	0x9c
 3378 0f1a 2F0F0000 		.4byte	0xf2f
 3379 0f1e 24       		.uleb128 0x24
 3380 0f1f 830A0000 		.4byte	.LASF167
 3381 0f23 01       		.byte	0x1
 3382 0f24 C701     		.2byte	0x1c7
 3383 0f26 0D0C0000 		.4byte	0xc0d
 3384 0f2a B2020000 		.4byte	.LLST40
 3385 0f2e 00       		.byte	0
 3386 0f2f 28       		.uleb128 0x28
 3387 0f30 77020000 		.4byte	.LASF200
 3388 0f34 01       		.byte	0x1
 3389 0f35 BB01     		.2byte	0x1bb
 3390 0f37 AC000000 		.4byte	0xac
 3391 0f3b 00000000 		.4byte	.LFB178
 3392 0f3f 04000000 		.4byte	.LFE178-.LFB178
 3393 0f43 01       		.uleb128 0x1
 3394 0f44 9C       		.byte	0x9c
 3395 0f45 5A0F0000 		.4byte	0xf5a
 3396 0f49 24       		.uleb128 0x24
 3397 0f4a 830A0000 		.4byte	.LASF167
 3398 0f4e 01       		.byte	0x1
 3399 0f4f BB01     		.2byte	0x1bb
 3400 0f51 0D0C0000 		.4byte	0xc0d
 3401 0f55 D3020000 		.4byte	.LLST39
 3402 0f59 00       		.byte	0
 3403 0f5a 28       		.uleb128 0x28
 3404 0f5b B5060000 		.4byte	.LASF201
 3405 0f5f 01       		.byte	0x1
 3406 0f60 AF01     		.2byte	0x1af
 3407 0f62 AC000000 		.4byte	0xac
 3408 0f66 00000000 		.4byte	.LFB177
 3409 0f6a 04000000 		.4byte	.LFE177-.LFB177
 3410 0f6e 01       		.uleb128 0x1
 3411 0f6f 9C       		.byte	0x9c
 3412 0f70 850F0000 		.4byte	0xf85
 3413 0f74 24       		.uleb128 0x24
 3414 0f75 830A0000 		.4byte	.LASF167
 3415 0f79 01       		.byte	0x1
 3416 0f7a AF01     		.2byte	0x1af
 3417 0f7c 0D0C0000 		.4byte	0xc0d
 3418 0f80 F4020000 		.4byte	.LLST38
 3419 0f84 00       		.byte	0
 3420 0f85 22       		.uleb128 0x22
ARM GAS  /tmp/ccsh7mrZ.s 			page 78


 3421 0f86 12000000 		.4byte	.LASF202
 3422 0f8a 01       		.byte	0x1
 3423 0f8b A001     		.2byte	0x1a0
 3424 0f8d 00000000 		.4byte	.LFB176
 3425 0f91 06000000 		.4byte	.LFE176-.LFB176
 3426 0f95 01       		.uleb128 0x1
 3427 0f96 9C       		.byte	0x9c
 3428 0f97 B80F0000 		.4byte	0xfb8
 3429 0f9b 23       		.uleb128 0x23
 3430 0f9c 830A0000 		.4byte	.LASF167
 3431 0fa0 01       		.byte	0x1
 3432 0fa1 A001     		.2byte	0x1a0
 3433 0fa3 0D0C0000 		.4byte	0xc0d
 3434 0fa7 01       		.uleb128 0x1
 3435 0fa8 50       		.byte	0x50
 3436 0fa9 23       		.uleb128 0x23
 3437 0faa 4C0A0000 		.4byte	.LASF203
 3438 0fae 01       		.byte	0x1
 3439 0faf A001     		.2byte	0x1a0
 3440 0fb1 AC000000 		.4byte	0xac
 3441 0fb5 01       		.uleb128 0x1
 3442 0fb6 51       		.byte	0x51
 3443 0fb7 00       		.byte	0
 3444 0fb8 22       		.uleb128 0x22
 3445 0fb9 5A060000 		.4byte	.LASF204
 3446 0fbd 01       		.byte	0x1
 3447 0fbe 9401     		.2byte	0x194
 3448 0fc0 00000000 		.4byte	.LFB175
 3449 0fc4 04000000 		.4byte	.LFE175-.LFB175
 3450 0fc8 01       		.uleb128 0x1
 3451 0fc9 9C       		.byte	0x9c
 3452 0fca EB0F0000 		.4byte	0xfeb
 3453 0fce 23       		.uleb128 0x23
 3454 0fcf 830A0000 		.4byte	.LASF167
 3455 0fd3 01       		.byte	0x1
 3456 0fd4 9401     		.2byte	0x194
 3457 0fd6 0D0C0000 		.4byte	0xc0d
 3458 0fda 01       		.uleb128 0x1
 3459 0fdb 50       		.byte	0x50
 3460 0fdc 23       		.uleb128 0x23
 3461 0fdd 4C0A0000 		.4byte	.LASF203
 3462 0fe1 01       		.byte	0x1
 3463 0fe2 9401     		.2byte	0x194
 3464 0fe4 AC000000 		.4byte	0xac
 3465 0fe8 01       		.uleb128 0x1
 3466 0fe9 51       		.byte	0x51
 3467 0fea 00       		.byte	0
 3468 0feb 2D       		.uleb128 0x2d
 3469 0fec B4030000 		.4byte	.LASF212
 3470 0ff0 01       		.byte	0x1
 3471 0ff1 5801     		.2byte	0x158
 3472 0ff3 AC000000 		.4byte	0xac
 3473 0ff7 01       		.byte	0x1
 3474 0ff8 39100000 		.4byte	0x1039
 3475 0ffc 27       		.uleb128 0x27
 3476 0ffd 830A0000 		.4byte	.LASF167
 3477 1001 01       		.byte	0x1
ARM GAS  /tmp/ccsh7mrZ.s 			page 79


 3478 1002 5801     		.2byte	0x158
 3479 1004 0D0C0000 		.4byte	0xc0d
 3480 1008 27       		.uleb128 0x27
 3481 1009 DD020000 		.4byte	.LASF205
 3482 100d 01       		.byte	0x1
 3483 100e 5801     		.2byte	0x158
 3484 1010 39100000 		.4byte	0x1039
 3485 1014 2E       		.uleb128 0x2e
 3486 1015 26090000 		.4byte	.LASF188
 3487 1019 01       		.byte	0x1
 3488 101a 5A01     		.2byte	0x15a
 3489 101c AC000000 		.4byte	0xac
 3490 1020 2F       		.uleb128 0x2f
 3491 1021 636E7400 		.ascii	"cnt\000"
 3492 1025 01       		.byte	0x1
 3493 1026 5A01     		.2byte	0x15a
 3494 1028 AC000000 		.4byte	0xac
 3495 102c 2E       		.uleb128 0x2e
 3496 102d 78070000 		.4byte	.LASF164
 3497 1031 01       		.byte	0x1
 3498 1032 5B01     		.2byte	0x15b
 3499 1034 8F0D0000 		.4byte	0xd8f
 3500 1038 00       		.byte	0
 3501 1039 13       		.uleb128 0x13
 3502 103a 04       		.byte	0x4
 3503 103b 4F0B0000 		.4byte	0xb4f
 3504 103f 28       		.uleb128 0x28
 3505 1040 56030000 		.4byte	.LASF206
 3506 1044 01       		.byte	0x1
 3507 1045 1801     		.2byte	0x118
 3508 1047 AC000000 		.4byte	0xac
 3509 104b 00000000 		.4byte	.LFB173
 3510 104f 9C000000 		.4byte	.LFE173-.LFB173
 3511 1053 01       		.uleb128 0x1
 3512 1054 9C       		.byte	0x9c
 3513 1055 17110000 		.4byte	0x1117
 3514 1059 24       		.uleb128 0x24
 3515 105a 830A0000 		.4byte	.LASF167
 3516 105e 01       		.byte	0x1
 3517 105f 1801     		.2byte	0x118
 3518 1061 0D0C0000 		.4byte	0xc0d
 3519 1065 15030000 		.4byte	.LLST15
 3520 1069 24       		.uleb128 0x24
 3521 106a DD020000 		.4byte	.LASF205
 3522 106e 01       		.byte	0x1
 3523 106f 1801     		.2byte	0x118
 3524 1071 39100000 		.4byte	0x1039
 3525 1075 81030000 		.4byte	.LLST16
 3526 1079 25       		.uleb128 0x25
 3527 107a 26090000 		.4byte	.LASF188
 3528 107e 01       		.byte	0x1
 3529 107f 1A01     		.2byte	0x11a
 3530 1081 AC000000 		.4byte	0xac
 3531 1085 C6030000 		.4byte	.LLST17
 3532 1089 29       		.uleb128 0x29
 3533 108a 636E7400 		.ascii	"cnt\000"
 3534 108e 01       		.byte	0x1
ARM GAS  /tmp/ccsh7mrZ.s 			page 80


 3535 108f 1A01     		.2byte	0x11a
 3536 1091 AC000000 		.4byte	0xac
 3537 1095 EF030000 		.4byte	.LLST18
 3538 1099 25       		.uleb128 0x25
 3539 109a 78070000 		.4byte	.LASF164
 3540 109e 01       		.byte	0x1
 3541 109f 1B01     		.2byte	0x11b
 3542 10a1 8F0D0000 		.4byte	0xd8f
 3543 10a5 47040000 		.4byte	.LLST19
 3544 10a9 25       		.uleb128 0x25
 3545 10aa 4E030000 		.4byte	.LASF207
 3546 10ae 01       		.byte	0x1
 3547 10af 1C01     		.2byte	0x11c
 3548 10b1 AC000000 		.4byte	0xac
 3549 10b5 B4040000 		.4byte	.LLST20
 3550 10b9 2C       		.uleb128 0x2c
 3551 10ba 17110000 		.4byte	0x1117
 3552 10be 28000000 		.4byte	.LBB36
 3553 10c2 50000000 		.4byte	.Ldebug_ranges0+0x50
 3554 10c6 01       		.byte	0x1
 3555 10c7 2B01     		.2byte	0x12b
 3556 10c9 2B       		.uleb128 0x2b
 3557 10ca 32110000 		.4byte	0x1132
 3558 10ce 1B050000 		.4byte	.LLST21
 3559 10d2 2B       		.uleb128 0x2b
 3560 10d3 27110000 		.4byte	0x1127
 3561 10d7 39050000 		.4byte	.LLST22
 3562 10db 30       		.uleb128 0x30
 3563 10dc 50000000 		.4byte	.Ldebug_ranges0+0x50
 3564 10e0 31       		.uleb128 0x31
 3565 10e1 3D110000 		.4byte	0x113d
 3566 10e5 32       		.uleb128 0x32
 3567 10e6 5A000000 		.4byte	.LBB38
 3568 10ea 18000000 		.4byte	.LBE38-.LBB38
 3569 10ee 2B       		.uleb128 0x2b
 3570 10ef 32110000 		.4byte	0x1132
 3571 10f3 65050000 		.4byte	.LLST23
 3572 10f7 2B       		.uleb128 0x2b
 3573 10f8 27110000 		.4byte	0x1127
 3574 10fc 78050000 		.4byte	.LLST24
 3575 1100 32       		.uleb128 0x32
 3576 1101 5A000000 		.4byte	.LBB39
 3577 1105 18000000 		.4byte	.LBE39-.LBB39
 3578 1109 33       		.uleb128 0x33
 3579 110a 3D110000 		.4byte	0x113d
 3580 110e 99050000 		.4byte	.LLST25
 3581 1112 00       		.byte	0
 3582 1113 00       		.byte	0
 3583 1114 00       		.byte	0
 3584 1115 00       		.byte	0
 3585 1116 00       		.byte	0
 3586 1117 34       		.uleb128 0x34
 3587 1118 2C010000 		.4byte	.LASF227
 3588 111c 01       		.byte	0x1
 3589 111d FB       		.byte	0xfb
 3590 111e AC000000 		.4byte	0xac
 3591 1122 01       		.byte	0x1
ARM GAS  /tmp/ccsh7mrZ.s 			page 81


 3592 1123 49110000 		.4byte	0x1149
 3593 1127 35       		.uleb128 0x35
 3594 1128 AE000000 		.4byte	.LASF162
 3595 112c 01       		.byte	0x1
 3596 112d FB       		.byte	0xfb
 3597 112e 49110000 		.4byte	0x1149
 3598 1132 36       		.uleb128 0x36
 3599 1133 6C656E00 		.ascii	"len\000"
 3600 1137 01       		.byte	0x1
 3601 1138 FB       		.byte	0xfb
 3602 1139 25000000 		.4byte	0x25
 3603 113d 37       		.uleb128 0x37
 3604 113e 76616C00 		.ascii	"val\000"
 3605 1142 01       		.byte	0x1
 3606 1143 FD       		.byte	0xfd
 3607 1144 AC000000 		.4byte	0xac
 3608 1148 00       		.byte	0
 3609 1149 13       		.uleb128 0x13
 3610 114a 04       		.byte	0x4
 3611 114b 97000000 		.4byte	0x97
 3612 114f 38       		.uleb128 0x38
 3613 1150 1D020000 		.4byte	.LASF208
 3614 1154 01       		.byte	0x1
 3615 1155 DD       		.byte	0xdd
 3616 1156 AC000000 		.4byte	0xac
 3617 115a 00000000 		.4byte	.LFB171
 3618 115e 26000000 		.4byte	.LFE171-.LFB171
 3619 1162 01       		.uleb128 0x1
 3620 1163 9C       		.byte	0x9c
 3621 1164 BA110000 		.4byte	0x11ba
 3622 1168 39       		.uleb128 0x39
 3623 1169 830A0000 		.4byte	.LASF167
 3624 116d 01       		.byte	0x1
 3625 116e DD       		.byte	0xdd
 3626 116f 0D0C0000 		.4byte	0xc0d
 3627 1173 E0050000 		.4byte	.LLST36
 3628 1177 39       		.uleb128 0x39
 3629 1178 950A0000 		.4byte	.LASF209
 3630 117c 01       		.byte	0x1
 3631 117d DD       		.byte	0xdd
 3632 117e 8C000000 		.4byte	0x8c
 3633 1182 01060000 		.4byte	.LLST37
 3634 1186 21       		.uleb128 0x21
 3635 1187 F5050000 		.4byte	.LASF210
 3636 118b 01       		.byte	0x1
 3637 118c DF       		.byte	0xdf
 3638 118d 4F0B0000 		.4byte	0xb4f
 3639 1191 02       		.uleb128 0x2
 3640 1192 91       		.byte	0x91
 3641 1193 64       		.sleb128 -28
 3642 1194 21       		.uleb128 0x21
 3643 1195 B3000000 		.4byte	.LASF211
 3644 1199 01       		.byte	0x1
 3645 119a E0       		.byte	0xe0
 3646 119b 8C000000 		.4byte	0x8c
 3647 119f 02       		.uleb128 0x2
 3648 11a0 91       		.byte	0x91
ARM GAS  /tmp/ccsh7mrZ.s 			page 82


 3649 11a1 63       		.sleb128 -29
 3650 11a2 3A       		.uleb128 0x3a
 3651 11a3 22000000 		.4byte	.LVL102
 3652 11a7 EB0F0000 		.4byte	0xfeb
 3653 11ab 3B       		.uleb128 0x3b
 3654 11ac 01       		.uleb128 0x1
 3655 11ad 50       		.byte	0x50
 3656 11ae 03       		.uleb128 0x3
 3657 11af F3       		.byte	0xf3
 3658 11b0 01       		.uleb128 0x1
 3659 11b1 50       		.byte	0x50
 3660 11b2 3B       		.uleb128 0x3b
 3661 11b3 01       		.uleb128 0x1
 3662 11b4 51       		.byte	0x51
 3663 11b5 02       		.uleb128 0x2
 3664 11b6 91       		.byte	0x91
 3665 11b7 64       		.sleb128 -28
 3666 11b8 00       		.byte	0
 3667 11b9 00       		.byte	0
 3668 11ba 3C       		.uleb128 0x3c
 3669 11bb 0B050000 		.4byte	.LASF213
 3670 11bf 01       		.byte	0x1
 3671 11c0 9D       		.byte	0x9d
 3672 11c1 AC000000 		.4byte	0xac
 3673 11c5 01       		.byte	0x1
 3674 11c6 18120000 		.4byte	0x1218
 3675 11ca 35       		.uleb128 0x35
 3676 11cb 830A0000 		.4byte	.LASF167
 3677 11cf 01       		.byte	0x1
 3678 11d0 9D       		.byte	0x9d
 3679 11d1 0D0C0000 		.4byte	0xc0d
 3680 11d5 35       		.uleb128 0x35
 3681 11d6 10010000 		.4byte	.LASF214
 3682 11da 01       		.byte	0x1
 3683 11db 9D       		.byte	0x9d
 3684 11dc AC000000 		.4byte	0xac
 3685 11e0 35       		.uleb128 0x35
 3686 11e1 690A0000 		.4byte	.LASF215
 3687 11e5 01       		.byte	0x1
 3688 11e6 9D       		.byte	0x9d
 3689 11e7 AC000000 		.4byte	0xac
 3690 11eb 3D       		.uleb128 0x3d
 3691 11ec 4C070000 		.4byte	.LASF216
 3692 11f0 01       		.byte	0x1
 3693 11f1 9F       		.byte	0x9f
 3694 11f2 AC000000 		.4byte	0xac
 3695 11f6 3D       		.uleb128 0x3d
 3696 11f7 A3040000 		.4byte	.LASF217
 3697 11fb 01       		.byte	0x1
 3698 11fc A0       		.byte	0xa0
 3699 11fd AC000000 		.4byte	0xac
 3700 1201 3D       		.uleb128 0x3d
 3701 1202 E8070000 		.4byte	.LASF218
 3702 1206 01       		.byte	0x1
 3703 1207 A1       		.byte	0xa1
 3704 1208 AC000000 		.4byte	0xac
 3705 120c 3D       		.uleb128 0x3d
ARM GAS  /tmp/ccsh7mrZ.s 			page 83


 3706 120d A1010000 		.4byte	.LASF219
 3707 1211 01       		.byte	0x1
 3708 1212 A1       		.byte	0xa1
 3709 1213 AC000000 		.4byte	0xac
 3710 1217 00       		.byte	0
 3711 1218 38       		.uleb128 0x38
 3712 1219 8D080000 		.4byte	.LASF220
 3713 121d 01       		.byte	0x1
 3714 121e 7B       		.byte	0x7b
 3715 121f AC000000 		.4byte	0xac
 3716 1223 00000000 		.4byte	.LFB169
 3717 1227 30000000 		.4byte	.LFE169-.LFB169
 3718 122b 01       		.uleb128 0x1
 3719 122c 9C       		.byte	0x9c
 3720 122d AA120000 		.4byte	0x12aa
 3721 1231 39       		.uleb128 0x39
 3722 1232 830A0000 		.4byte	.LASF167
 3723 1236 01       		.byte	0x1
 3724 1237 7B       		.byte	0x7b
 3725 1238 0D0C0000 		.4byte	0xc0d
 3726 123c 2E060000 		.4byte	.LLST10
 3727 1240 39       		.uleb128 0x39
 3728 1241 AC020000 		.4byte	.LASF221
 3729 1245 01       		.byte	0x1
 3730 1246 7B       		.byte	0x7b
 3731 1247 AA120000 		.4byte	0x12aa
 3732 124b 4F060000 		.4byte	.LLST11
 3733 124f 3E       		.uleb128 0x3e
 3734 1250 26090000 		.4byte	.LASF188
 3735 1254 01       		.byte	0x1
 3736 1255 7D       		.byte	0x7d
 3737 1256 AC000000 		.4byte	0xac
 3738 125a 70060000 		.4byte	.LLST12
 3739 125e 3F       		.uleb128 0x3f
 3740 125f 1A0D0000 		.4byte	0xd1a
 3741 1263 02000000 		.4byte	.LBB22
 3742 1267 18000000 		.4byte	.Ldebug_ranges0+0x18
 3743 126b 01       		.byte	0x1
 3744 126c 86       		.byte	0x86
 3745 126d 7B120000 		.4byte	0x127b
 3746 1271 2B       		.uleb128 0x2b
 3747 1272 270D0000 		.4byte	0xd27
 3748 1276 A8060000 		.4byte	.LLST13
 3749 127a 00       		.byte	0
 3750 127b 3F       		.uleb128 0x3f
 3751 127c D3120000 		.4byte	0x12d3
 3752 1280 08000000 		.4byte	.LBB26
 3753 1284 38000000 		.4byte	.Ldebug_ranges0+0x38
 3754 1288 01       		.byte	0x1
 3755 1289 88       		.byte	0x88
 3756 128a 98120000 		.4byte	0x1298
 3757 128e 2B       		.uleb128 0x2b
 3758 128f DF120000 		.4byte	0x12df
 3759 1293 BB060000 		.4byte	.LLST14
 3760 1297 00       		.byte	0
 3761 1298 3A       		.uleb128 0x3a
 3762 1299 24000000 		.4byte	.LVL38
ARM GAS  /tmp/ccsh7mrZ.s 			page 84


 3763 129d BA110000 		.4byte	0x11ba
 3764 12a1 3B       		.uleb128 0x3b
 3765 12a2 01       		.uleb128 0x1
 3766 12a3 50       		.byte	0x50
 3767 12a4 03       		.uleb128 0x3
 3768 12a5 F3       		.byte	0xf3
 3769 12a6 01       		.uleb128 0x1
 3770 12a7 50       		.byte	0x50
 3771 12a8 00       		.byte	0
 3772 12a9 00       		.byte	0
 3773 12aa 13       		.uleb128 0x13
 3774 12ab 04       		.byte	0x4
 3775 12ac F10A0000 		.4byte	0xaf1
 3776 12b0 40       		.uleb128 0x40
 3777 12b1 50010000 		.4byte	.LASF222
 3778 12b5 01       		.byte	0x1
 3779 12b6 6D       		.byte	0x6d
 3780 12b7 00000000 		.4byte	.LFB168
 3781 12bb 06000000 		.4byte	.LFE168-.LFB168
 3782 12bf 01       		.uleb128 0x1
 3783 12c0 9C       		.byte	0x9c
 3784 12c1 D3120000 		.4byte	0x12d3
 3785 12c5 41       		.uleb128 0x41
 3786 12c6 830A0000 		.4byte	.LASF167
 3787 12ca 01       		.byte	0x1
 3788 12cb 6D       		.byte	0x6d
 3789 12cc 0D0C0000 		.4byte	0xc0d
 3790 12d0 01       		.uleb128 0x1
 3791 12d1 50       		.byte	0x50
 3792 12d2 00       		.byte	0
 3793 12d3 42       		.uleb128 0x42
 3794 12d4 6F040000 		.4byte	.LASF223
 3795 12d8 01       		.byte	0x1
 3796 12d9 5E       		.byte	0x5e
 3797 12da 01       		.byte	0x1
 3798 12db EB120000 		.4byte	0x12eb
 3799 12df 35       		.uleb128 0x35
 3800 12e0 830A0000 		.4byte	.LASF167
 3801 12e4 01       		.byte	0x1
 3802 12e5 5E       		.byte	0x5e
 3803 12e6 0D0C0000 		.4byte	0xc0d
 3804 12ea 00       		.byte	0
 3805 12eb 43       		.uleb128 0x43
 3806 12ec D3120000 		.4byte	0x12d3
 3807 12f0 00000000 		.4byte	.LFB167
 3808 12f4 0E000000 		.4byte	.LFE167-.LFB167
 3809 12f8 01       		.uleb128 0x1
 3810 12f9 9C       		.byte	0x9c
 3811 12fa 06130000 		.4byte	0x1306
 3812 12fe 44       		.uleb128 0x44
 3813 12ff DF120000 		.4byte	0x12df
 3814 1303 01       		.uleb128 0x1
 3815 1304 50       		.byte	0x50
 3816 1305 00       		.byte	0
 3817 1306 43       		.uleb128 0x43
 3818 1307 BA110000 		.4byte	0x11ba
 3819 130b 00000000 		.4byte	.LFB170
ARM GAS  /tmp/ccsh7mrZ.s 			page 85


 3820 130f C0000000 		.4byte	.LFE170-.LFB170
 3821 1313 01       		.uleb128 0x1
 3822 1314 9C       		.byte	0x9c
 3823 1315 94130000 		.4byte	0x1394
 3824 1319 2B       		.uleb128 0x2b
 3825 131a CA110000 		.4byte	0x11ca
 3826 131e CE060000 		.4byte	.LLST0
 3827 1322 2B       		.uleb128 0x2b
 3828 1323 D5110000 		.4byte	0x11d5
 3829 1327 2C070000 		.4byte	.LLST1
 3830 132b 2B       		.uleb128 0x2b
 3831 132c E0110000 		.4byte	0x11e0
 3832 1330 7F070000 		.4byte	.LLST2
 3833 1334 33       		.uleb128 0x33
 3834 1335 EB110000 		.4byte	0x11eb
 3835 1339 D2070000 		.4byte	.LLST3
 3836 133d 33       		.uleb128 0x33
 3837 133e F6110000 		.4byte	0x11f6
 3838 1342 FD070000 		.4byte	.LLST4
 3839 1346 31       		.uleb128 0x31
 3840 1347 01120000 		.4byte	0x1201
 3841 134b 31       		.uleb128 0x31
 3842 134c 0C120000 		.4byte	0x120c
 3843 1350 30       		.uleb128 0x30
 3844 1351 00000000 		.4byte	.Ldebug_ranges0+0
 3845 1355 2B       		.uleb128 0x2b
 3846 1356 E0110000 		.4byte	0x11e0
 3847 135a 1B080000 		.4byte	.LLST5
 3848 135e 2B       		.uleb128 0x2b
 3849 135f D5110000 		.4byte	0x11d5
 3850 1363 4A080000 		.4byte	.LLST6
 3851 1367 2B       		.uleb128 0x2b
 3852 1368 CA110000 		.4byte	0x11ca
 3853 136c 79080000 		.4byte	.LLST7
 3854 1370 30       		.uleb128 0x30
 3855 1371 00000000 		.4byte	.Ldebug_ranges0+0
 3856 1375 31       		.uleb128 0x31
 3857 1376 34130000 		.4byte	0x1334
 3858 137a 31       		.uleb128 0x31
 3859 137b 3D130000 		.4byte	0x133d
 3860 137f 33       		.uleb128 0x33
 3861 1380 46130000 		.4byte	0x1346
 3862 1384 97080000 		.4byte	.LLST8
 3863 1388 33       		.uleb128 0x33
 3864 1389 4B130000 		.4byte	0x134b
 3865 138d B5080000 		.4byte	.LLST9
 3866 1391 00       		.byte	0
 3867 1392 00       		.byte	0
 3868 1393 00       		.byte	0
 3869 1394 43       		.uleb128 0x43
 3870 1395 EB0F0000 		.4byte	0xfeb
 3871 1399 00000000 		.4byte	.LFB174
 3872 139d 82000000 		.4byte	.LFE174-.LFB174
 3873 13a1 01       		.uleb128 0x1
 3874 13a2 9C       		.byte	0x9c
 3875 13a3 5B140000 		.4byte	0x145b
 3876 13a7 2B       		.uleb128 0x2b
ARM GAS  /tmp/ccsh7mrZ.s 			page 86


 3877 13a8 FC0F0000 		.4byte	0xffc
 3878 13ac DE080000 		.4byte	.LLST26
 3879 13b0 2B       		.uleb128 0x2b
 3880 13b1 08100000 		.4byte	0x1008
 3881 13b5 FC080000 		.4byte	.LLST27
 3882 13b9 33       		.uleb128 0x33
 3883 13ba 14100000 		.4byte	0x1014
 3884 13be 4F090000 		.4byte	.LLST28
 3885 13c2 33       		.uleb128 0x33
 3886 13c3 20100000 		.4byte	0x1020
 3887 13c7 6D090000 		.4byte	.LLST29
 3888 13cb 33       		.uleb128 0x33
 3889 13cc 2C100000 		.4byte	0x102c
 3890 13d0 BA090000 		.4byte	.LLST30
 3891 13d4 2A       		.uleb128 0x2a
 3892 13d5 17110000 		.4byte	0x1117
 3893 13d9 26000000 		.4byte	.LBB50
 3894 13dd 68000000 		.4byte	.Ldebug_ranges0+0x68
 3895 13e1 01       		.byte	0x1
 3896 13e2 6A01     		.2byte	0x16a
 3897 13e4 35140000 		.4byte	0x1435
 3898 13e8 2B       		.uleb128 0x2b
 3899 13e9 32110000 		.4byte	0x1132
 3900 13ed 0F0A0000 		.4byte	.LLST31
 3901 13f1 2B       		.uleb128 0x2b
 3902 13f2 27110000 		.4byte	0x1127
 3903 13f6 2D0A0000 		.4byte	.LLST32
 3904 13fa 30       		.uleb128 0x30
 3905 13fb 68000000 		.4byte	.Ldebug_ranges0+0x68
 3906 13ff 31       		.uleb128 0x31
 3907 1400 3D110000 		.4byte	0x113d
 3908 1404 32       		.uleb128 0x32
 3909 1405 4C000000 		.4byte	.LBB52
 3910 1409 18000000 		.4byte	.LBE52-.LBB52
 3911 140d 2B       		.uleb128 0x2b
 3912 140e 32110000 		.4byte	0x1132
 3913 1412 590A0000 		.4byte	.LLST33
 3914 1416 2B       		.uleb128 0x2b
 3915 1417 27110000 		.4byte	0x1127
 3916 141b 6C0A0000 		.4byte	.LLST34
 3917 141f 32       		.uleb128 0x32
 3918 1420 4C000000 		.4byte	.LBB53
 3919 1424 18000000 		.4byte	.LBE53-.LBB53
 3920 1428 33       		.uleb128 0x33
 3921 1429 3D110000 		.4byte	0x113d
 3922 142d 8D0A0000 		.4byte	.LLST35
 3923 1431 00       		.byte	0
 3924 1432 00       		.byte	0
 3925 1433 00       		.byte	0
 3926 1434 00       		.byte	0
 3927 1435 30       		.uleb128 0x30
 3928 1436 80000000 		.4byte	.Ldebug_ranges0+0x80
 3929 143a 45       		.uleb128 0x45
 3930 143b 08100000 		.4byte	0x1008
 3931 143f 45       		.uleb128 0x45
 3932 1440 FC0F0000 		.4byte	0xffc
 3933 1444 30       		.uleb128 0x30
ARM GAS  /tmp/ccsh7mrZ.s 			page 87


 3934 1445 80000000 		.4byte	.Ldebug_ranges0+0x80
 3935 1449 31       		.uleb128 0x31
 3936 144a B9130000 		.4byte	0x13b9
 3937 144e 31       		.uleb128 0x31
 3938 144f C2130000 		.4byte	0x13c2
 3939 1453 31       		.uleb128 0x31
 3940 1454 CB130000 		.4byte	0x13cb
 3941 1458 00       		.byte	0
 3942 1459 00       		.byte	0
 3943 145a 00       		.byte	0
 3944 145b 43       		.uleb128 0x43
 3945 145c B70E0000 		.4byte	0xeb7
 3946 1460 00000000 		.4byte	.LFB181
 3947 1464 0E000000 		.4byte	.LFE181-.LFB181
 3948 1468 01       		.uleb128 0x1
 3949 1469 9C       		.byte	0x9c
 3950 146a 76140000 		.4byte	0x1476
 3951 146e 44       		.uleb128 0x44
 3952 146f C40E0000 		.4byte	0xec4
 3953 1473 01       		.uleb128 0x1
 3954 1474 50       		.byte	0x50
 3955 1475 00       		.byte	0
 3956 1476 46       		.uleb128 0x46
 3957 1477 1A0D0000 		.4byte	0xd1a
 3958 147b 00000000 		.4byte	.LFB187
 3959 147f 08000000 		.4byte	.LFE187-.LFB187
 3960 1483 01       		.uleb128 0x1
 3961 1484 9C       		.byte	0x9c
 3962 1485 44       		.uleb128 0x44
 3963 1486 270D0000 		.4byte	0xd27
 3964 148a 01       		.uleb128 0x1
 3965 148b 50       		.byte	0x50
 3966 148c 00       		.byte	0
 3967 148d 00       		.byte	0
 3968              		.section	.debug_abbrev,"",%progbits
 3969              	.Ldebug_abbrev0:
 3970 0000 01       		.uleb128 0x1
 3971 0001 11       		.uleb128 0x11
 3972 0002 01       		.byte	0x1
 3973 0003 25       		.uleb128 0x25
 3974 0004 0E       		.uleb128 0xe
 3975 0005 13       		.uleb128 0x13
 3976 0006 0B       		.uleb128 0xb
 3977 0007 03       		.uleb128 0x3
 3978 0008 0E       		.uleb128 0xe
 3979 0009 1B       		.uleb128 0x1b
 3980 000a 0E       		.uleb128 0xe
 3981 000b 55       		.uleb128 0x55
 3982 000c 17       		.uleb128 0x17
 3983 000d 11       		.uleb128 0x11
 3984 000e 01       		.uleb128 0x1
 3985 000f 10       		.uleb128 0x10
 3986 0010 17       		.uleb128 0x17
 3987 0011 00       		.byte	0
 3988 0012 00       		.byte	0
 3989 0013 02       		.uleb128 0x2
 3990 0014 24       		.uleb128 0x24
ARM GAS  /tmp/ccsh7mrZ.s 			page 88


 3991 0015 00       		.byte	0
 3992 0016 0B       		.uleb128 0xb
 3993 0017 0B       		.uleb128 0xb
 3994 0018 3E       		.uleb128 0x3e
 3995 0019 0B       		.uleb128 0xb
 3996 001a 03       		.uleb128 0x3
 3997 001b 08       		.uleb128 0x8
 3998 001c 00       		.byte	0
 3999 001d 00       		.byte	0
 4000 001e 03       		.uleb128 0x3
 4001 001f 24       		.uleb128 0x24
 4002 0020 00       		.byte	0
 4003 0021 0B       		.uleb128 0xb
 4004 0022 0B       		.uleb128 0xb
 4005 0023 3E       		.uleb128 0x3e
 4006 0024 0B       		.uleb128 0xb
 4007 0025 03       		.uleb128 0x3
 4008 0026 0E       		.uleb128 0xe
 4009 0027 00       		.byte	0
 4010 0028 00       		.byte	0
 4011 0029 04       		.uleb128 0x4
 4012 002a 16       		.uleb128 0x16
 4013 002b 00       		.byte	0
 4014 002c 03       		.uleb128 0x3
 4015 002d 0E       		.uleb128 0xe
 4016 002e 3A       		.uleb128 0x3a
 4017 002f 0B       		.uleb128 0xb
 4018 0030 3B       		.uleb128 0x3b
 4019 0031 0B       		.uleb128 0xb
 4020 0032 49       		.uleb128 0x49
 4021 0033 13       		.uleb128 0x13
 4022 0034 00       		.byte	0
 4023 0035 00       		.byte	0
 4024 0036 05       		.uleb128 0x5
 4025 0037 26       		.uleb128 0x26
 4026 0038 00       		.byte	0
 4027 0039 49       		.uleb128 0x49
 4028 003a 13       		.uleb128 0x13
 4029 003b 00       		.byte	0
 4030 003c 00       		.byte	0
 4031 003d 06       		.uleb128 0x6
 4032 003e 35       		.uleb128 0x35
 4033 003f 00       		.byte	0
 4034 0040 49       		.uleb128 0x49
 4035 0041 13       		.uleb128 0x13
 4036 0042 00       		.byte	0
 4037 0043 00       		.byte	0
 4038 0044 07       		.uleb128 0x7
 4039 0045 0F       		.uleb128 0xf
 4040 0046 00       		.byte	0
 4041 0047 0B       		.uleb128 0xb
 4042 0048 0B       		.uleb128 0xb
 4043 0049 00       		.byte	0
 4044 004a 00       		.byte	0
 4045 004b 08       		.uleb128 0x8
 4046 004c 01       		.uleb128 0x1
 4047 004d 01       		.byte	0x1
ARM GAS  /tmp/ccsh7mrZ.s 			page 89


 4048 004e 49       		.uleb128 0x49
 4049 004f 13       		.uleb128 0x13
 4050 0050 01       		.uleb128 0x1
 4051 0051 13       		.uleb128 0x13
 4052 0052 00       		.byte	0
 4053 0053 00       		.byte	0
 4054 0054 09       		.uleb128 0x9
 4055 0055 21       		.uleb128 0x21
 4056 0056 00       		.byte	0
 4057 0057 49       		.uleb128 0x49
 4058 0058 13       		.uleb128 0x13
 4059 0059 2F       		.uleb128 0x2f
 4060 005a 0B       		.uleb128 0xb
 4061 005b 00       		.byte	0
 4062 005c 00       		.byte	0
 4063 005d 0A       		.uleb128 0xa
 4064 005e 34       		.uleb128 0x34
 4065 005f 00       		.byte	0
 4066 0060 03       		.uleb128 0x3
 4067 0061 0E       		.uleb128 0xe
 4068 0062 3A       		.uleb128 0x3a
 4069 0063 0B       		.uleb128 0xb
 4070 0064 3B       		.uleb128 0x3b
 4071 0065 05       		.uleb128 0x5
 4072 0066 49       		.uleb128 0x49
 4073 0067 13       		.uleb128 0x13
 4074 0068 3F       		.uleb128 0x3f
 4075 0069 19       		.uleb128 0x19
 4076 006a 3C       		.uleb128 0x3c
 4077 006b 19       		.uleb128 0x19
 4078 006c 00       		.byte	0
 4079 006d 00       		.byte	0
 4080 006e 0B       		.uleb128 0xb
 4081 006f 34       		.uleb128 0x34
 4082 0070 00       		.byte	0
 4083 0071 03       		.uleb128 0x3
 4084 0072 0E       		.uleb128 0xe
 4085 0073 3A       		.uleb128 0x3a
 4086 0074 0B       		.uleb128 0xb
 4087 0075 3B       		.uleb128 0x3b
 4088 0076 0B       		.uleb128 0xb
 4089 0077 49       		.uleb128 0x49
 4090 0078 13       		.uleb128 0x13
 4091 0079 3F       		.uleb128 0x3f
 4092 007a 19       		.uleb128 0x19
 4093 007b 3C       		.uleb128 0x3c
 4094 007c 19       		.uleb128 0x19
 4095 007d 00       		.byte	0
 4096 007e 00       		.byte	0
 4097 007f 0C       		.uleb128 0xc
 4098 0080 13       		.uleb128 0x13
 4099 0081 01       		.byte	0x1
 4100 0082 0B       		.uleb128 0xb
 4101 0083 0B       		.uleb128 0xb
 4102 0084 3A       		.uleb128 0x3a
 4103 0085 0B       		.uleb128 0xb
 4104 0086 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccsh7mrZ.s 			page 90


 4105 0087 0B       		.uleb128 0xb
 4106 0088 01       		.uleb128 0x1
 4107 0089 13       		.uleb128 0x13
 4108 008a 00       		.byte	0
 4109 008b 00       		.byte	0
 4110 008c 0D       		.uleb128 0xd
 4111 008d 0D       		.uleb128 0xd
 4112 008e 00       		.byte	0
 4113 008f 03       		.uleb128 0x3
 4114 0090 0E       		.uleb128 0xe
 4115 0091 3A       		.uleb128 0x3a
 4116 0092 0B       		.uleb128 0xb
 4117 0093 3B       		.uleb128 0x3b
 4118 0094 0B       		.uleb128 0xb
 4119 0095 49       		.uleb128 0x49
 4120 0096 13       		.uleb128 0x13
 4121 0097 38       		.uleb128 0x38
 4122 0098 0B       		.uleb128 0xb
 4123 0099 00       		.byte	0
 4124 009a 00       		.byte	0
 4125 009b 0E       		.uleb128 0xe
 4126 009c 16       		.uleb128 0x16
 4127 009d 00       		.byte	0
 4128 009e 03       		.uleb128 0x3
 4129 009f 0E       		.uleb128 0xe
 4130 00a0 3A       		.uleb128 0x3a
 4131 00a1 0B       		.uleb128 0xb
 4132 00a2 3B       		.uleb128 0x3b
 4133 00a3 05       		.uleb128 0x5
 4134 00a4 49       		.uleb128 0x49
 4135 00a5 13       		.uleb128 0x13
 4136 00a6 00       		.byte	0
 4137 00a7 00       		.byte	0
 4138 00a8 0F       		.uleb128 0xf
 4139 00a9 17       		.uleb128 0x17
 4140 00aa 01       		.byte	0x1
 4141 00ab 0B       		.uleb128 0xb
 4142 00ac 0B       		.uleb128 0xb
 4143 00ad 3A       		.uleb128 0x3a
 4144 00ae 0B       		.uleb128 0xb
 4145 00af 3B       		.uleb128 0x3b
 4146 00b0 0B       		.uleb128 0xb
 4147 00b1 01       		.uleb128 0x1
 4148 00b2 13       		.uleb128 0x13
 4149 00b3 00       		.byte	0
 4150 00b4 00       		.byte	0
 4151 00b5 10       		.uleb128 0x10
 4152 00b6 0D       		.uleb128 0xd
 4153 00b7 00       		.byte	0
 4154 00b8 03       		.uleb128 0x3
 4155 00b9 0E       		.uleb128 0xe
 4156 00ba 3A       		.uleb128 0x3a
 4157 00bb 0B       		.uleb128 0xb
 4158 00bc 3B       		.uleb128 0x3b
 4159 00bd 0B       		.uleb128 0xb
 4160 00be 49       		.uleb128 0x49
 4161 00bf 13       		.uleb128 0x13
ARM GAS  /tmp/ccsh7mrZ.s 			page 91


 4162 00c0 00       		.byte	0
 4163 00c1 00       		.byte	0
 4164 00c2 11       		.uleb128 0x11
 4165 00c3 13       		.uleb128 0x13
 4166 00c4 01       		.byte	0x1
 4167 00c5 03       		.uleb128 0x3
 4168 00c6 0E       		.uleb128 0xe
 4169 00c7 0B       		.uleb128 0xb
 4170 00c8 0B       		.uleb128 0xb
 4171 00c9 3A       		.uleb128 0x3a
 4172 00ca 0B       		.uleb128 0xb
 4173 00cb 3B       		.uleb128 0x3b
 4174 00cc 0B       		.uleb128 0xb
 4175 00cd 01       		.uleb128 0x1
 4176 00ce 13       		.uleb128 0x13
 4177 00cf 00       		.byte	0
 4178 00d0 00       		.byte	0
 4179 00d1 12       		.uleb128 0x12
 4180 00d2 0D       		.uleb128 0xd
 4181 00d3 00       		.byte	0
 4182 00d4 03       		.uleb128 0x3
 4183 00d5 08       		.uleb128 0x8
 4184 00d6 3A       		.uleb128 0x3a
 4185 00d7 0B       		.uleb128 0xb
 4186 00d8 3B       		.uleb128 0x3b
 4187 00d9 0B       		.uleb128 0xb
 4188 00da 49       		.uleb128 0x49
 4189 00db 13       		.uleb128 0x13
 4190 00dc 38       		.uleb128 0x38
 4191 00dd 0B       		.uleb128 0xb
 4192 00de 00       		.byte	0
 4193 00df 00       		.byte	0
 4194 00e0 13       		.uleb128 0x13
 4195 00e1 0F       		.uleb128 0xf
 4196 00e2 00       		.byte	0
 4197 00e3 0B       		.uleb128 0xb
 4198 00e4 0B       		.uleb128 0xb
 4199 00e5 49       		.uleb128 0x49
 4200 00e6 13       		.uleb128 0x13
 4201 00e7 00       		.byte	0
 4202 00e8 00       		.byte	0
 4203 00e9 14       		.uleb128 0x14
 4204 00ea 13       		.uleb128 0x13
 4205 00eb 01       		.byte	0x1
 4206 00ec 03       		.uleb128 0x3
 4207 00ed 0E       		.uleb128 0xe
 4208 00ee 0B       		.uleb128 0xb
 4209 00ef 05       		.uleb128 0x5
 4210 00f0 3A       		.uleb128 0x3a
 4211 00f1 0B       		.uleb128 0xb
 4212 00f2 3B       		.uleb128 0x3b
 4213 00f3 0B       		.uleb128 0xb
 4214 00f4 01       		.uleb128 0x1
 4215 00f5 13       		.uleb128 0x13
 4216 00f6 00       		.byte	0
 4217 00f7 00       		.byte	0
 4218 00f8 15       		.uleb128 0x15
ARM GAS  /tmp/ccsh7mrZ.s 			page 92


 4219 00f9 0D       		.uleb128 0xd
 4220 00fa 00       		.byte	0
 4221 00fb 03       		.uleb128 0x3
 4222 00fc 0E       		.uleb128 0xe
 4223 00fd 3A       		.uleb128 0x3a
 4224 00fe 0B       		.uleb128 0xb
 4225 00ff 3B       		.uleb128 0x3b
 4226 0100 0B       		.uleb128 0xb
 4227 0101 49       		.uleb128 0x49
 4228 0102 13       		.uleb128 0x13
 4229 0103 38       		.uleb128 0x38
 4230 0104 05       		.uleb128 0x5
 4231 0105 00       		.byte	0
 4232 0106 00       		.byte	0
 4233 0107 16       		.uleb128 0x16
 4234 0108 15       		.uleb128 0x15
 4235 0109 00       		.byte	0
 4236 010a 27       		.uleb128 0x27
 4237 010b 19       		.uleb128 0x19
 4238 010c 00       		.byte	0
 4239 010d 00       		.byte	0
 4240 010e 17       		.uleb128 0x17
 4241 010f 15       		.uleb128 0x15
 4242 0110 01       		.byte	0x1
 4243 0111 27       		.uleb128 0x27
 4244 0112 19       		.uleb128 0x19
 4245 0113 49       		.uleb128 0x49
 4246 0114 13       		.uleb128 0x13
 4247 0115 01       		.uleb128 0x1
 4248 0116 13       		.uleb128 0x13
 4249 0117 00       		.byte	0
 4250 0118 00       		.byte	0
 4251 0119 18       		.uleb128 0x18
 4252 011a 05       		.uleb128 0x5
 4253 011b 00       		.byte	0
 4254 011c 49       		.uleb128 0x49
 4255 011d 13       		.uleb128 0x13
 4256 011e 00       		.byte	0
 4257 011f 00       		.byte	0
 4258 0120 19       		.uleb128 0x19
 4259 0121 13       		.uleb128 0x13
 4260 0122 01       		.byte	0x1
 4261 0123 03       		.uleb128 0x3
 4262 0124 0E       		.uleb128 0xe
 4263 0125 0B       		.uleb128 0xb
 4264 0126 05       		.uleb128 0x5
 4265 0127 3A       		.uleb128 0x3a
 4266 0128 0B       		.uleb128 0xb
 4267 0129 3B       		.uleb128 0x3b
 4268 012a 05       		.uleb128 0x5
 4269 012b 01       		.uleb128 0x1
 4270 012c 13       		.uleb128 0x13
 4271 012d 00       		.byte	0
 4272 012e 00       		.byte	0
 4273 012f 1A       		.uleb128 0x1a
 4274 0130 0D       		.uleb128 0xd
 4275 0131 00       		.byte	0
ARM GAS  /tmp/ccsh7mrZ.s 			page 93


 4276 0132 03       		.uleb128 0x3
 4277 0133 0E       		.uleb128 0xe
 4278 0134 3A       		.uleb128 0x3a
 4279 0135 0B       		.uleb128 0xb
 4280 0136 3B       		.uleb128 0x3b
 4281 0137 05       		.uleb128 0x5
 4282 0138 49       		.uleb128 0x49
 4283 0139 13       		.uleb128 0x13
 4284 013a 38       		.uleb128 0x38
 4285 013b 0B       		.uleb128 0xb
 4286 013c 00       		.byte	0
 4287 013d 00       		.byte	0
 4288 013e 1B       		.uleb128 0x1b
 4289 013f 0D       		.uleb128 0xd
 4290 0140 00       		.byte	0
 4291 0141 03       		.uleb128 0x3
 4292 0142 0E       		.uleb128 0xe
 4293 0143 3A       		.uleb128 0x3a
 4294 0144 0B       		.uleb128 0xb
 4295 0145 3B       		.uleb128 0x3b
 4296 0146 05       		.uleb128 0x5
 4297 0147 49       		.uleb128 0x49
 4298 0148 13       		.uleb128 0x13
 4299 0149 38       		.uleb128 0x38
 4300 014a 05       		.uleb128 0x5
 4301 014b 00       		.byte	0
 4302 014c 00       		.byte	0
 4303 014d 1C       		.uleb128 0x1c
 4304 014e 13       		.uleb128 0x13
 4305 014f 01       		.byte	0x1
 4306 0150 03       		.uleb128 0x3
 4307 0151 0E       		.uleb128 0xe
 4308 0152 0B       		.uleb128 0xb
 4309 0153 0B       		.uleb128 0xb
 4310 0154 3A       		.uleb128 0x3a
 4311 0155 0B       		.uleb128 0xb
 4312 0156 3B       		.uleb128 0x3b
 4313 0157 05       		.uleb128 0x5
 4314 0158 01       		.uleb128 0x1
 4315 0159 13       		.uleb128 0x13
 4316 015a 00       		.byte	0
 4317 015b 00       		.byte	0
 4318 015c 1D       		.uleb128 0x1d
 4319 015d 13       		.uleb128 0x13
 4320 015e 01       		.byte	0x1
 4321 015f 0B       		.uleb128 0xb
 4322 0160 0B       		.uleb128 0xb
 4323 0161 3A       		.uleb128 0x3a
 4324 0162 0B       		.uleb128 0xb
 4325 0163 3B       		.uleb128 0x3b
 4326 0164 05       		.uleb128 0x5
 4327 0165 01       		.uleb128 0x1
 4328 0166 13       		.uleb128 0x13
 4329 0167 00       		.byte	0
 4330 0168 00       		.byte	0
 4331 0169 1E       		.uleb128 0x1e
 4332 016a 17       		.uleb128 0x17
ARM GAS  /tmp/ccsh7mrZ.s 			page 94


 4333 016b 01       		.byte	0x1
 4334 016c 0B       		.uleb128 0xb
 4335 016d 0B       		.uleb128 0xb
 4336 016e 3A       		.uleb128 0x3a
 4337 016f 0B       		.uleb128 0xb
 4338 0170 3B       		.uleb128 0x3b
 4339 0171 05       		.uleb128 0x5
 4340 0172 01       		.uleb128 0x1
 4341 0173 13       		.uleb128 0x13
 4342 0174 00       		.byte	0
 4343 0175 00       		.byte	0
 4344 0176 1F       		.uleb128 0x1f
 4345 0177 0D       		.uleb128 0xd
 4346 0178 00       		.byte	0
 4347 0179 03       		.uleb128 0x3
 4348 017a 0E       		.uleb128 0xe
 4349 017b 3A       		.uleb128 0x3a
 4350 017c 0B       		.uleb128 0xb
 4351 017d 3B       		.uleb128 0x3b
 4352 017e 05       		.uleb128 0x5
 4353 017f 49       		.uleb128 0x49
 4354 0180 13       		.uleb128 0x13
 4355 0181 00       		.byte	0
 4356 0182 00       		.byte	0
 4357 0183 20       		.uleb128 0x20
 4358 0184 15       		.uleb128 0x15
 4359 0185 01       		.byte	0x1
 4360 0186 27       		.uleb128 0x27
 4361 0187 19       		.uleb128 0x19
 4362 0188 01       		.uleb128 0x1
 4363 0189 13       		.uleb128 0x13
 4364 018a 00       		.byte	0
 4365 018b 00       		.byte	0
 4366 018c 21       		.uleb128 0x21
 4367 018d 34       		.uleb128 0x34
 4368 018e 00       		.byte	0
 4369 018f 03       		.uleb128 0x3
 4370 0190 0E       		.uleb128 0xe
 4371 0191 3A       		.uleb128 0x3a
 4372 0192 0B       		.uleb128 0xb
 4373 0193 3B       		.uleb128 0x3b
 4374 0194 0B       		.uleb128 0xb
 4375 0195 49       		.uleb128 0x49
 4376 0196 13       		.uleb128 0x13
 4377 0197 02       		.uleb128 0x2
 4378 0198 18       		.uleb128 0x18
 4379 0199 00       		.byte	0
 4380 019a 00       		.byte	0
 4381 019b 22       		.uleb128 0x22
 4382 019c 2E       		.uleb128 0x2e
 4383 019d 01       		.byte	0x1
 4384 019e 3F       		.uleb128 0x3f
 4385 019f 19       		.uleb128 0x19
 4386 01a0 03       		.uleb128 0x3
 4387 01a1 0E       		.uleb128 0xe
 4388 01a2 3A       		.uleb128 0x3a
 4389 01a3 0B       		.uleb128 0xb
ARM GAS  /tmp/ccsh7mrZ.s 			page 95


 4390 01a4 3B       		.uleb128 0x3b
 4391 01a5 05       		.uleb128 0x5
 4392 01a6 27       		.uleb128 0x27
 4393 01a7 19       		.uleb128 0x19
 4394 01a8 11       		.uleb128 0x11
 4395 01a9 01       		.uleb128 0x1
 4396 01aa 12       		.uleb128 0x12
 4397 01ab 06       		.uleb128 0x6
 4398 01ac 40       		.uleb128 0x40
 4399 01ad 18       		.uleb128 0x18
 4400 01ae 9742     		.uleb128 0x2117
 4401 01b0 19       		.uleb128 0x19
 4402 01b1 01       		.uleb128 0x1
 4403 01b2 13       		.uleb128 0x13
 4404 01b3 00       		.byte	0
 4405 01b4 00       		.byte	0
 4406 01b5 23       		.uleb128 0x23
 4407 01b6 05       		.uleb128 0x5
 4408 01b7 00       		.byte	0
 4409 01b8 03       		.uleb128 0x3
 4410 01b9 0E       		.uleb128 0xe
 4411 01ba 3A       		.uleb128 0x3a
 4412 01bb 0B       		.uleb128 0xb
 4413 01bc 3B       		.uleb128 0x3b
 4414 01bd 05       		.uleb128 0x5
 4415 01be 49       		.uleb128 0x49
 4416 01bf 13       		.uleb128 0x13
 4417 01c0 02       		.uleb128 0x2
 4418 01c1 18       		.uleb128 0x18
 4419 01c2 00       		.byte	0
 4420 01c3 00       		.byte	0
 4421 01c4 24       		.uleb128 0x24
 4422 01c5 05       		.uleb128 0x5
 4423 01c6 00       		.byte	0
 4424 01c7 03       		.uleb128 0x3
 4425 01c8 0E       		.uleb128 0xe
 4426 01c9 3A       		.uleb128 0x3a
 4427 01ca 0B       		.uleb128 0xb
 4428 01cb 3B       		.uleb128 0x3b
 4429 01cc 05       		.uleb128 0x5
 4430 01cd 49       		.uleb128 0x49
 4431 01ce 13       		.uleb128 0x13
 4432 01cf 02       		.uleb128 0x2
 4433 01d0 17       		.uleb128 0x17
 4434 01d1 00       		.byte	0
 4435 01d2 00       		.byte	0
 4436 01d3 25       		.uleb128 0x25
 4437 01d4 34       		.uleb128 0x34
 4438 01d5 00       		.byte	0
 4439 01d6 03       		.uleb128 0x3
 4440 01d7 0E       		.uleb128 0xe
 4441 01d8 3A       		.uleb128 0x3a
 4442 01d9 0B       		.uleb128 0xb
 4443 01da 3B       		.uleb128 0x3b
 4444 01db 05       		.uleb128 0x5
 4445 01dc 49       		.uleb128 0x49
 4446 01dd 13       		.uleb128 0x13
ARM GAS  /tmp/ccsh7mrZ.s 			page 96


 4447 01de 02       		.uleb128 0x2
 4448 01df 17       		.uleb128 0x17
 4449 01e0 00       		.byte	0
 4450 01e1 00       		.byte	0
 4451 01e2 26       		.uleb128 0x26
 4452 01e3 2E       		.uleb128 0x2e
 4453 01e4 01       		.byte	0x1
 4454 01e5 3F       		.uleb128 0x3f
 4455 01e6 19       		.uleb128 0x19
 4456 01e7 03       		.uleb128 0x3
 4457 01e8 0E       		.uleb128 0xe
 4458 01e9 3A       		.uleb128 0x3a
 4459 01ea 0B       		.uleb128 0xb
 4460 01eb 3B       		.uleb128 0x3b
 4461 01ec 05       		.uleb128 0x5
 4462 01ed 27       		.uleb128 0x27
 4463 01ee 19       		.uleb128 0x19
 4464 01ef 20       		.uleb128 0x20
 4465 01f0 0B       		.uleb128 0xb
 4466 01f1 01       		.uleb128 0x1
 4467 01f2 13       		.uleb128 0x13
 4468 01f3 00       		.byte	0
 4469 01f4 00       		.byte	0
 4470 01f5 27       		.uleb128 0x27
 4471 01f6 05       		.uleb128 0x5
 4472 01f7 00       		.byte	0
 4473 01f8 03       		.uleb128 0x3
 4474 01f9 0E       		.uleb128 0xe
 4475 01fa 3A       		.uleb128 0x3a
 4476 01fb 0B       		.uleb128 0xb
 4477 01fc 3B       		.uleb128 0x3b
 4478 01fd 05       		.uleb128 0x5
 4479 01fe 49       		.uleb128 0x49
 4480 01ff 13       		.uleb128 0x13
 4481 0200 00       		.byte	0
 4482 0201 00       		.byte	0
 4483 0202 28       		.uleb128 0x28
 4484 0203 2E       		.uleb128 0x2e
 4485 0204 01       		.byte	0x1
 4486 0205 3F       		.uleb128 0x3f
 4487 0206 19       		.uleb128 0x19
 4488 0207 03       		.uleb128 0x3
 4489 0208 0E       		.uleb128 0xe
 4490 0209 3A       		.uleb128 0x3a
 4491 020a 0B       		.uleb128 0xb
 4492 020b 3B       		.uleb128 0x3b
 4493 020c 05       		.uleb128 0x5
 4494 020d 27       		.uleb128 0x27
 4495 020e 19       		.uleb128 0x19
 4496 020f 49       		.uleb128 0x49
 4497 0210 13       		.uleb128 0x13
 4498 0211 11       		.uleb128 0x11
 4499 0212 01       		.uleb128 0x1
 4500 0213 12       		.uleb128 0x12
 4501 0214 06       		.uleb128 0x6
 4502 0215 40       		.uleb128 0x40
 4503 0216 18       		.uleb128 0x18
ARM GAS  /tmp/ccsh7mrZ.s 			page 97


 4504 0217 9742     		.uleb128 0x2117
 4505 0219 19       		.uleb128 0x19
 4506 021a 01       		.uleb128 0x1
 4507 021b 13       		.uleb128 0x13
 4508 021c 00       		.byte	0
 4509 021d 00       		.byte	0
 4510 021e 29       		.uleb128 0x29
 4511 021f 34       		.uleb128 0x34
 4512 0220 00       		.byte	0
 4513 0221 03       		.uleb128 0x3
 4514 0222 08       		.uleb128 0x8
 4515 0223 3A       		.uleb128 0x3a
 4516 0224 0B       		.uleb128 0xb
 4517 0225 3B       		.uleb128 0x3b
 4518 0226 05       		.uleb128 0x5
 4519 0227 49       		.uleb128 0x49
 4520 0228 13       		.uleb128 0x13
 4521 0229 02       		.uleb128 0x2
 4522 022a 17       		.uleb128 0x17
 4523 022b 00       		.byte	0
 4524 022c 00       		.byte	0
 4525 022d 2A       		.uleb128 0x2a
 4526 022e 1D       		.uleb128 0x1d
 4527 022f 01       		.byte	0x1
 4528 0230 31       		.uleb128 0x31
 4529 0231 13       		.uleb128 0x13
 4530 0232 52       		.uleb128 0x52
 4531 0233 01       		.uleb128 0x1
 4532 0234 55       		.uleb128 0x55
 4533 0235 17       		.uleb128 0x17
 4534 0236 58       		.uleb128 0x58
 4535 0237 0B       		.uleb128 0xb
 4536 0238 59       		.uleb128 0x59
 4537 0239 05       		.uleb128 0x5
 4538 023a 01       		.uleb128 0x1
 4539 023b 13       		.uleb128 0x13
 4540 023c 00       		.byte	0
 4541 023d 00       		.byte	0
 4542 023e 2B       		.uleb128 0x2b
 4543 023f 05       		.uleb128 0x5
 4544 0240 00       		.byte	0
 4545 0241 31       		.uleb128 0x31
 4546 0242 13       		.uleb128 0x13
 4547 0243 02       		.uleb128 0x2
 4548 0244 17       		.uleb128 0x17
 4549 0245 00       		.byte	0
 4550 0246 00       		.byte	0
 4551 0247 2C       		.uleb128 0x2c
 4552 0248 1D       		.uleb128 0x1d
 4553 0249 01       		.byte	0x1
 4554 024a 31       		.uleb128 0x31
 4555 024b 13       		.uleb128 0x13
 4556 024c 52       		.uleb128 0x52
 4557 024d 01       		.uleb128 0x1
 4558 024e 55       		.uleb128 0x55
 4559 024f 17       		.uleb128 0x17
 4560 0250 58       		.uleb128 0x58
ARM GAS  /tmp/ccsh7mrZ.s 			page 98


 4561 0251 0B       		.uleb128 0xb
 4562 0252 59       		.uleb128 0x59
 4563 0253 05       		.uleb128 0x5
 4564 0254 00       		.byte	0
 4565 0255 00       		.byte	0
 4566 0256 2D       		.uleb128 0x2d
 4567 0257 2E       		.uleb128 0x2e
 4568 0258 01       		.byte	0x1
 4569 0259 3F       		.uleb128 0x3f
 4570 025a 19       		.uleb128 0x19
 4571 025b 03       		.uleb128 0x3
 4572 025c 0E       		.uleb128 0xe
 4573 025d 3A       		.uleb128 0x3a
 4574 025e 0B       		.uleb128 0xb
 4575 025f 3B       		.uleb128 0x3b
 4576 0260 05       		.uleb128 0x5
 4577 0261 27       		.uleb128 0x27
 4578 0262 19       		.uleb128 0x19
 4579 0263 49       		.uleb128 0x49
 4580 0264 13       		.uleb128 0x13
 4581 0265 20       		.uleb128 0x20
 4582 0266 0B       		.uleb128 0xb
 4583 0267 01       		.uleb128 0x1
 4584 0268 13       		.uleb128 0x13
 4585 0269 00       		.byte	0
 4586 026a 00       		.byte	0
 4587 026b 2E       		.uleb128 0x2e
 4588 026c 34       		.uleb128 0x34
 4589 026d 00       		.byte	0
 4590 026e 03       		.uleb128 0x3
 4591 026f 0E       		.uleb128 0xe
 4592 0270 3A       		.uleb128 0x3a
 4593 0271 0B       		.uleb128 0xb
 4594 0272 3B       		.uleb128 0x3b
 4595 0273 05       		.uleb128 0x5
 4596 0274 49       		.uleb128 0x49
 4597 0275 13       		.uleb128 0x13
 4598 0276 00       		.byte	0
 4599 0277 00       		.byte	0
 4600 0278 2F       		.uleb128 0x2f
 4601 0279 34       		.uleb128 0x34
 4602 027a 00       		.byte	0
 4603 027b 03       		.uleb128 0x3
 4604 027c 08       		.uleb128 0x8
 4605 027d 3A       		.uleb128 0x3a
 4606 027e 0B       		.uleb128 0xb
 4607 027f 3B       		.uleb128 0x3b
 4608 0280 05       		.uleb128 0x5
 4609 0281 49       		.uleb128 0x49
 4610 0282 13       		.uleb128 0x13
 4611 0283 00       		.byte	0
 4612 0284 00       		.byte	0
 4613 0285 30       		.uleb128 0x30
 4614 0286 0B       		.uleb128 0xb
 4615 0287 01       		.byte	0x1
 4616 0288 55       		.uleb128 0x55
 4617 0289 17       		.uleb128 0x17
ARM GAS  /tmp/ccsh7mrZ.s 			page 99


 4618 028a 00       		.byte	0
 4619 028b 00       		.byte	0
 4620 028c 31       		.uleb128 0x31
 4621 028d 34       		.uleb128 0x34
 4622 028e 00       		.byte	0
 4623 028f 31       		.uleb128 0x31
 4624 0290 13       		.uleb128 0x13
 4625 0291 00       		.byte	0
 4626 0292 00       		.byte	0
 4627 0293 32       		.uleb128 0x32
 4628 0294 0B       		.uleb128 0xb
 4629 0295 01       		.byte	0x1
 4630 0296 11       		.uleb128 0x11
 4631 0297 01       		.uleb128 0x1
 4632 0298 12       		.uleb128 0x12
 4633 0299 06       		.uleb128 0x6
 4634 029a 00       		.byte	0
 4635 029b 00       		.byte	0
 4636 029c 33       		.uleb128 0x33
 4637 029d 34       		.uleb128 0x34
 4638 029e 00       		.byte	0
 4639 029f 31       		.uleb128 0x31
 4640 02a0 13       		.uleb128 0x13
 4641 02a1 02       		.uleb128 0x2
 4642 02a2 17       		.uleb128 0x17
 4643 02a3 00       		.byte	0
 4644 02a4 00       		.byte	0
 4645 02a5 34       		.uleb128 0x34
 4646 02a6 2E       		.uleb128 0x2e
 4647 02a7 01       		.byte	0x1
 4648 02a8 03       		.uleb128 0x3
 4649 02a9 0E       		.uleb128 0xe
 4650 02aa 3A       		.uleb128 0x3a
 4651 02ab 0B       		.uleb128 0xb
 4652 02ac 3B       		.uleb128 0x3b
 4653 02ad 0B       		.uleb128 0xb
 4654 02ae 27       		.uleb128 0x27
 4655 02af 19       		.uleb128 0x19
 4656 02b0 49       		.uleb128 0x49
 4657 02b1 13       		.uleb128 0x13
 4658 02b2 20       		.uleb128 0x20
 4659 02b3 0B       		.uleb128 0xb
 4660 02b4 01       		.uleb128 0x1
 4661 02b5 13       		.uleb128 0x13
 4662 02b6 00       		.byte	0
 4663 02b7 00       		.byte	0
 4664 02b8 35       		.uleb128 0x35
 4665 02b9 05       		.uleb128 0x5
 4666 02ba 00       		.byte	0
 4667 02bb 03       		.uleb128 0x3
 4668 02bc 0E       		.uleb128 0xe
 4669 02bd 3A       		.uleb128 0x3a
 4670 02be 0B       		.uleb128 0xb
 4671 02bf 3B       		.uleb128 0x3b
 4672 02c0 0B       		.uleb128 0xb
 4673 02c1 49       		.uleb128 0x49
 4674 02c2 13       		.uleb128 0x13
ARM GAS  /tmp/ccsh7mrZ.s 			page 100


 4675 02c3 00       		.byte	0
 4676 02c4 00       		.byte	0
 4677 02c5 36       		.uleb128 0x36
 4678 02c6 05       		.uleb128 0x5
 4679 02c7 00       		.byte	0
 4680 02c8 03       		.uleb128 0x3
 4681 02c9 08       		.uleb128 0x8
 4682 02ca 3A       		.uleb128 0x3a
 4683 02cb 0B       		.uleb128 0xb
 4684 02cc 3B       		.uleb128 0x3b
 4685 02cd 0B       		.uleb128 0xb
 4686 02ce 49       		.uleb128 0x49
 4687 02cf 13       		.uleb128 0x13
 4688 02d0 00       		.byte	0
 4689 02d1 00       		.byte	0
 4690 02d2 37       		.uleb128 0x37
 4691 02d3 34       		.uleb128 0x34
 4692 02d4 00       		.byte	0
 4693 02d5 03       		.uleb128 0x3
 4694 02d6 08       		.uleb128 0x8
 4695 02d7 3A       		.uleb128 0x3a
 4696 02d8 0B       		.uleb128 0xb
 4697 02d9 3B       		.uleb128 0x3b
 4698 02da 0B       		.uleb128 0xb
 4699 02db 49       		.uleb128 0x49
 4700 02dc 13       		.uleb128 0x13
 4701 02dd 00       		.byte	0
 4702 02de 00       		.byte	0
 4703 02df 38       		.uleb128 0x38
 4704 02e0 2E       		.uleb128 0x2e
 4705 02e1 01       		.byte	0x1
 4706 02e2 3F       		.uleb128 0x3f
 4707 02e3 19       		.uleb128 0x19
 4708 02e4 03       		.uleb128 0x3
 4709 02e5 0E       		.uleb128 0xe
 4710 02e6 3A       		.uleb128 0x3a
 4711 02e7 0B       		.uleb128 0xb
 4712 02e8 3B       		.uleb128 0x3b
 4713 02e9 0B       		.uleb128 0xb
 4714 02ea 27       		.uleb128 0x27
 4715 02eb 19       		.uleb128 0x19
 4716 02ec 49       		.uleb128 0x49
 4717 02ed 13       		.uleb128 0x13
 4718 02ee 11       		.uleb128 0x11
 4719 02ef 01       		.uleb128 0x1
 4720 02f0 12       		.uleb128 0x12
 4721 02f1 06       		.uleb128 0x6
 4722 02f2 40       		.uleb128 0x40
 4723 02f3 18       		.uleb128 0x18
 4724 02f4 9742     		.uleb128 0x2117
 4725 02f6 19       		.uleb128 0x19
 4726 02f7 01       		.uleb128 0x1
 4727 02f8 13       		.uleb128 0x13
 4728 02f9 00       		.byte	0
 4729 02fa 00       		.byte	0
 4730 02fb 39       		.uleb128 0x39
 4731 02fc 05       		.uleb128 0x5
ARM GAS  /tmp/ccsh7mrZ.s 			page 101


 4732 02fd 00       		.byte	0
 4733 02fe 03       		.uleb128 0x3
 4734 02ff 0E       		.uleb128 0xe
 4735 0300 3A       		.uleb128 0x3a
 4736 0301 0B       		.uleb128 0xb
 4737 0302 3B       		.uleb128 0x3b
 4738 0303 0B       		.uleb128 0xb
 4739 0304 49       		.uleb128 0x49
 4740 0305 13       		.uleb128 0x13
 4741 0306 02       		.uleb128 0x2
 4742 0307 17       		.uleb128 0x17
 4743 0308 00       		.byte	0
 4744 0309 00       		.byte	0
 4745 030a 3A       		.uleb128 0x3a
 4746 030b 898201   		.uleb128 0x4109
 4747 030e 01       		.byte	0x1
 4748 030f 11       		.uleb128 0x11
 4749 0310 01       		.uleb128 0x1
 4750 0311 31       		.uleb128 0x31
 4751 0312 13       		.uleb128 0x13
 4752 0313 00       		.byte	0
 4753 0314 00       		.byte	0
 4754 0315 3B       		.uleb128 0x3b
 4755 0316 8A8201   		.uleb128 0x410a
 4756 0319 00       		.byte	0
 4757 031a 02       		.uleb128 0x2
 4758 031b 18       		.uleb128 0x18
 4759 031c 9142     		.uleb128 0x2111
 4760 031e 18       		.uleb128 0x18
 4761 031f 00       		.byte	0
 4762 0320 00       		.byte	0
 4763 0321 3C       		.uleb128 0x3c
 4764 0322 2E       		.uleb128 0x2e
 4765 0323 01       		.byte	0x1
 4766 0324 3F       		.uleb128 0x3f
 4767 0325 19       		.uleb128 0x19
 4768 0326 03       		.uleb128 0x3
 4769 0327 0E       		.uleb128 0xe
 4770 0328 3A       		.uleb128 0x3a
 4771 0329 0B       		.uleb128 0xb
 4772 032a 3B       		.uleb128 0x3b
 4773 032b 0B       		.uleb128 0xb
 4774 032c 27       		.uleb128 0x27
 4775 032d 19       		.uleb128 0x19
 4776 032e 49       		.uleb128 0x49
 4777 032f 13       		.uleb128 0x13
 4778 0330 20       		.uleb128 0x20
 4779 0331 0B       		.uleb128 0xb
 4780 0332 01       		.uleb128 0x1
 4781 0333 13       		.uleb128 0x13
 4782 0334 00       		.byte	0
 4783 0335 00       		.byte	0
 4784 0336 3D       		.uleb128 0x3d
 4785 0337 34       		.uleb128 0x34
 4786 0338 00       		.byte	0
 4787 0339 03       		.uleb128 0x3
 4788 033a 0E       		.uleb128 0xe
ARM GAS  /tmp/ccsh7mrZ.s 			page 102


 4789 033b 3A       		.uleb128 0x3a
 4790 033c 0B       		.uleb128 0xb
 4791 033d 3B       		.uleb128 0x3b
 4792 033e 0B       		.uleb128 0xb
 4793 033f 49       		.uleb128 0x49
 4794 0340 13       		.uleb128 0x13
 4795 0341 00       		.byte	0
 4796 0342 00       		.byte	0
 4797 0343 3E       		.uleb128 0x3e
 4798 0344 34       		.uleb128 0x34
 4799 0345 00       		.byte	0
 4800 0346 03       		.uleb128 0x3
 4801 0347 0E       		.uleb128 0xe
 4802 0348 3A       		.uleb128 0x3a
 4803 0349 0B       		.uleb128 0xb
 4804 034a 3B       		.uleb128 0x3b
 4805 034b 0B       		.uleb128 0xb
 4806 034c 49       		.uleb128 0x49
 4807 034d 13       		.uleb128 0x13
 4808 034e 02       		.uleb128 0x2
 4809 034f 17       		.uleb128 0x17
 4810 0350 00       		.byte	0
 4811 0351 00       		.byte	0
 4812 0352 3F       		.uleb128 0x3f
 4813 0353 1D       		.uleb128 0x1d
 4814 0354 01       		.byte	0x1
 4815 0355 31       		.uleb128 0x31
 4816 0356 13       		.uleb128 0x13
 4817 0357 52       		.uleb128 0x52
 4818 0358 01       		.uleb128 0x1
 4819 0359 55       		.uleb128 0x55
 4820 035a 17       		.uleb128 0x17
 4821 035b 58       		.uleb128 0x58
 4822 035c 0B       		.uleb128 0xb
 4823 035d 59       		.uleb128 0x59
 4824 035e 0B       		.uleb128 0xb
 4825 035f 01       		.uleb128 0x1
 4826 0360 13       		.uleb128 0x13
 4827 0361 00       		.byte	0
 4828 0362 00       		.byte	0
 4829 0363 40       		.uleb128 0x40
 4830 0364 2E       		.uleb128 0x2e
 4831 0365 01       		.byte	0x1
 4832 0366 3F       		.uleb128 0x3f
 4833 0367 19       		.uleb128 0x19
 4834 0368 03       		.uleb128 0x3
 4835 0369 0E       		.uleb128 0xe
 4836 036a 3A       		.uleb128 0x3a
 4837 036b 0B       		.uleb128 0xb
 4838 036c 3B       		.uleb128 0x3b
 4839 036d 0B       		.uleb128 0xb
 4840 036e 27       		.uleb128 0x27
 4841 036f 19       		.uleb128 0x19
 4842 0370 11       		.uleb128 0x11
 4843 0371 01       		.uleb128 0x1
 4844 0372 12       		.uleb128 0x12
 4845 0373 06       		.uleb128 0x6
ARM GAS  /tmp/ccsh7mrZ.s 			page 103


 4846 0374 40       		.uleb128 0x40
 4847 0375 18       		.uleb128 0x18
 4848 0376 9742     		.uleb128 0x2117
 4849 0378 19       		.uleb128 0x19
 4850 0379 01       		.uleb128 0x1
 4851 037a 13       		.uleb128 0x13
 4852 037b 00       		.byte	0
 4853 037c 00       		.byte	0
 4854 037d 41       		.uleb128 0x41
 4855 037e 05       		.uleb128 0x5
 4856 037f 00       		.byte	0
 4857 0380 03       		.uleb128 0x3
 4858 0381 0E       		.uleb128 0xe
 4859 0382 3A       		.uleb128 0x3a
 4860 0383 0B       		.uleb128 0xb
 4861 0384 3B       		.uleb128 0x3b
 4862 0385 0B       		.uleb128 0xb
 4863 0386 49       		.uleb128 0x49
 4864 0387 13       		.uleb128 0x13
 4865 0388 02       		.uleb128 0x2
 4866 0389 18       		.uleb128 0x18
 4867 038a 00       		.byte	0
 4868 038b 00       		.byte	0
 4869 038c 42       		.uleb128 0x42
 4870 038d 2E       		.uleb128 0x2e
 4871 038e 01       		.byte	0x1
 4872 038f 3F       		.uleb128 0x3f
 4873 0390 19       		.uleb128 0x19
 4874 0391 03       		.uleb128 0x3
 4875 0392 0E       		.uleb128 0xe
 4876 0393 3A       		.uleb128 0x3a
 4877 0394 0B       		.uleb128 0xb
 4878 0395 3B       		.uleb128 0x3b
 4879 0396 0B       		.uleb128 0xb
 4880 0397 27       		.uleb128 0x27
 4881 0398 19       		.uleb128 0x19
 4882 0399 20       		.uleb128 0x20
 4883 039a 0B       		.uleb128 0xb
 4884 039b 01       		.uleb128 0x1
 4885 039c 13       		.uleb128 0x13
 4886 039d 00       		.byte	0
 4887 039e 00       		.byte	0
 4888 039f 43       		.uleb128 0x43
 4889 03a0 2E       		.uleb128 0x2e
 4890 03a1 01       		.byte	0x1
 4891 03a2 31       		.uleb128 0x31
 4892 03a3 13       		.uleb128 0x13
 4893 03a4 11       		.uleb128 0x11
 4894 03a5 01       		.uleb128 0x1
 4895 03a6 12       		.uleb128 0x12
 4896 03a7 06       		.uleb128 0x6
 4897 03a8 40       		.uleb128 0x40
 4898 03a9 18       		.uleb128 0x18
 4899 03aa 9742     		.uleb128 0x2117
 4900 03ac 19       		.uleb128 0x19
 4901 03ad 01       		.uleb128 0x1
 4902 03ae 13       		.uleb128 0x13
ARM GAS  /tmp/ccsh7mrZ.s 			page 104


 4903 03af 00       		.byte	0
 4904 03b0 00       		.byte	0
 4905 03b1 44       		.uleb128 0x44
 4906 03b2 05       		.uleb128 0x5
 4907 03b3 00       		.byte	0
 4908 03b4 31       		.uleb128 0x31
 4909 03b5 13       		.uleb128 0x13
 4910 03b6 02       		.uleb128 0x2
 4911 03b7 18       		.uleb128 0x18
 4912 03b8 00       		.byte	0
 4913 03b9 00       		.byte	0
 4914 03ba 45       		.uleb128 0x45
 4915 03bb 05       		.uleb128 0x5
 4916 03bc 00       		.byte	0
 4917 03bd 31       		.uleb128 0x31
 4918 03be 13       		.uleb128 0x13
 4919 03bf 00       		.byte	0
 4920 03c0 00       		.byte	0
 4921 03c1 46       		.uleb128 0x46
 4922 03c2 2E       		.uleb128 0x2e
 4923 03c3 01       		.byte	0x1
 4924 03c4 31       		.uleb128 0x31
 4925 03c5 13       		.uleb128 0x13
 4926 03c6 11       		.uleb128 0x11
 4927 03c7 01       		.uleb128 0x1
 4928 03c8 12       		.uleb128 0x12
 4929 03c9 06       		.uleb128 0x6
 4930 03ca 40       		.uleb128 0x40
 4931 03cb 18       		.uleb128 0x18
 4932 03cc 9742     		.uleb128 0x2117
 4933 03ce 19       		.uleb128 0x19
 4934 03cf 00       		.byte	0
 4935 03d0 00       		.byte	0
 4936 03d1 00       		.byte	0
 4937              		.section	.debug_loc,"",%progbits
 4938              	.Ldebug_loc0:
 4939              	.LLST54:
 4940 0000 00000000 		.4byte	.LVL151
 4941 0004 14000000 		.4byte	.LVL152
 4942 0008 0100     		.2byte	0x1
 4943 000a 52       		.byte	0x52
 4944 000b 14000000 		.4byte	.LVL152
 4945 000f 38000000 		.4byte	.LFE193
 4946 0013 0400     		.2byte	0x4
 4947 0015 F3       		.byte	0xf3
 4948 0016 01       		.uleb128 0x1
 4949 0017 52       		.byte	0x52
 4950 0018 9F       		.byte	0x9f
 4951 0019 00000000 		.4byte	0
 4952 001d 00000000 		.4byte	0
 4953              	.LLST55:
 4954 0021 00000000 		.4byte	.LVL151
 4955 0025 18000000 		.4byte	.LVL153
 4956 0029 0100     		.2byte	0x1
 4957 002b 53       		.byte	0x53
 4958 002c 18000000 		.4byte	.LVL153
 4959 0030 38000000 		.4byte	.LFE193
ARM GAS  /tmp/ccsh7mrZ.s 			page 105


 4960 0034 0400     		.2byte	0x4
 4961 0036 F3       		.byte	0xf3
 4962 0037 01       		.uleb128 0x1
 4963 0038 53       		.byte	0x53
 4964 0039 9F       		.byte	0x9f
 4965 003a 00000000 		.4byte	0
 4966 003e 00000000 		.4byte	0
 4967              	.LLST56:
 4968 0042 00000000 		.4byte	.LVL151
 4969 0046 36000000 		.4byte	.LVL157
 4970 004a 0200     		.2byte	0x2
 4971 004c 91       		.byte	0x91
 4972 004d 00       		.sleb128 0
 4973 004e 36000000 		.4byte	.LVL157
 4974 0052 38000000 		.4byte	.LFE193
 4975 0056 0200     		.2byte	0x2
 4976 0058 7D       		.byte	0x7d
 4977 0059 00       		.sleb128 0
 4978 005a 00000000 		.4byte	0
 4979 005e 00000000 		.4byte	0
 4980              	.LLST57:
 4981 0062 00000000 		.4byte	.LVL151
 4982 0066 36000000 		.4byte	.LVL157
 4983 006a 0200     		.2byte	0x2
 4984 006c 91       		.byte	0x91
 4985 006d 04       		.sleb128 4
 4986 006e 36000000 		.4byte	.LVL157
 4987 0072 38000000 		.4byte	.LFE193
 4988 0076 0200     		.2byte	0x2
 4989 0078 7D       		.byte	0x7d
 4990 0079 04       		.sleb128 4
 4991 007a 00000000 		.4byte	0
 4992 007e 00000000 		.4byte	0
 4993              	.LLST58:
 4994 0082 00000000 		.4byte	.LVL151
 4995 0086 36000000 		.4byte	.LVL157
 4996 008a 0200     		.2byte	0x2
 4997 008c 91       		.byte	0x91
 4998 008d 08       		.sleb128 8
 4999 008e 36000000 		.4byte	.LVL157
 5000 0092 38000000 		.4byte	.LFE193
 5001 0096 0200     		.2byte	0x2
 5002 0098 7D       		.byte	0x7d
 5003 0099 08       		.sleb128 8
 5004 009a 00000000 		.4byte	0
 5005 009e 00000000 		.4byte	0
 5006              	.LLST59:
 5007 00a2 00000000 		.4byte	.LVL151
 5008 00a6 36000000 		.4byte	.LVL157
 5009 00aa 0200     		.2byte	0x2
 5010 00ac 91       		.byte	0x91
 5011 00ad 0C       		.sleb128 12
 5012 00ae 36000000 		.4byte	.LVL157
 5013 00b2 38000000 		.4byte	.LFE193
 5014 00b6 0200     		.2byte	0x2
 5015 00b8 7D       		.byte	0x7d
 5016 00b9 0C       		.sleb128 12
ARM GAS  /tmp/ccsh7mrZ.s 			page 106


 5017 00ba 00000000 		.4byte	0
 5018 00be 00000000 		.4byte	0
 5019              	.LLST60:
 5020 00c2 00000000 		.4byte	.LVL151
 5021 00c6 36000000 		.4byte	.LVL157
 5022 00ca 0200     		.2byte	0x2
 5023 00cc 91       		.byte	0x91
 5024 00cd 10       		.sleb128 16
 5025 00ce 36000000 		.4byte	.LVL157
 5026 00d2 38000000 		.4byte	.LFE193
 5027 00d6 0200     		.2byte	0x2
 5028 00d8 7D       		.byte	0x7d
 5029 00d9 10       		.sleb128 16
 5030 00da 00000000 		.4byte	0
 5031 00de 00000000 		.4byte	0
 5032              	.LLST61:
 5033 00e2 00000000 		.4byte	.LVL151
 5034 00e6 14000000 		.4byte	.LVL152
 5035 00ea 0200     		.2byte	0x2
 5036 00ec 30       		.byte	0x30
 5037 00ed 9F       		.byte	0x9f
 5038 00ee 14000000 		.4byte	.LVL152
 5039 00f2 38000000 		.4byte	.LFE193
 5040 00f6 0100     		.2byte	0x1
 5041 00f8 52       		.byte	0x52
 5042 00f9 00000000 		.4byte	0
 5043 00fd 00000000 		.4byte	0
 5044              	.LLST53:
 5045 0101 00000000 		.4byte	.LVL149
 5046 0105 02000000 		.4byte	.LVL150
 5047 0109 0100     		.2byte	0x1
 5048 010b 51       		.byte	0x51
 5049 010c 02000000 		.4byte	.LVL150
 5050 0110 0E000000 		.4byte	.LFE192
 5051 0114 0400     		.2byte	0x4
 5052 0116 F3       		.byte	0xf3
 5053 0117 01       		.uleb128 0x1
 5054 0118 51       		.byte	0x51
 5055 0119 9F       		.byte	0x9f
 5056 011a 00000000 		.4byte	0
 5057 011e 00000000 		.4byte	0
 5058              	.LLST49:
 5059 0122 00000000 		.4byte	.LVL133
 5060 0126 34000000 		.4byte	.LVL142
 5061 012a 0100     		.2byte	0x1
 5062 012c 50       		.byte	0x50
 5063 012d 34000000 		.4byte	.LVL142
 5064 0131 38000000 		.4byte	.LFE186
 5065 0135 0400     		.2byte	0x4
 5066 0137 F3       		.byte	0xf3
 5067 0138 01       		.uleb128 0x1
 5068 0139 50       		.byte	0x50
 5069 013a 9F       		.byte	0x9f
 5070 013b 00000000 		.4byte	0
 5071 013f 00000000 		.4byte	0
 5072              	.LLST50:
 5073 0143 00000000 		.4byte	.LVL133
ARM GAS  /tmp/ccsh7mrZ.s 			page 107


 5074 0147 18000000 		.4byte	.LVL136
 5075 014b 0100     		.2byte	0x1
 5076 014d 51       		.byte	0x51
 5077 014e 18000000 		.4byte	.LVL136
 5078 0152 1E000000 		.4byte	.LVL139
 5079 0156 0300     		.2byte	0x3
 5080 0158 71       		.byte	0x71
 5081 0159 01       		.sleb128 1
 5082 015a 9F       		.byte	0x9f
 5083 015b 1E000000 		.4byte	.LVL139
 5084 015f 38000000 		.4byte	.LFE186
 5085 0163 0100     		.2byte	0x1
 5086 0165 51       		.byte	0x51
 5087 0166 00000000 		.4byte	0
 5088 016a 00000000 		.4byte	0
 5089              	.LLST51:
 5090 016e 0A000000 		.4byte	.LVL135
 5091 0172 1A000000 		.4byte	.LVL137
 5092 0176 0100     		.2byte	0x1
 5093 0178 53       		.byte	0x53
 5094 0179 22000000 		.4byte	.LVL140
 5095 017d 30000000 		.4byte	.LVL141
 5096 0181 0100     		.2byte	0x1
 5097 0183 53       		.byte	0x53
 5098 0184 00000000 		.4byte	0
 5099 0188 00000000 		.4byte	0
 5100              	.LLST52:
 5101 018c 00000000 		.4byte	.LVL133
 5102 0190 08000000 		.4byte	.LVL134
 5103 0194 0200     		.2byte	0x2
 5104 0196 30       		.byte	0x30
 5105 0197 9F       		.byte	0x9f
 5106 0198 08000000 		.4byte	.LVL134
 5107 019c 36000000 		.4byte	.LVL143
 5108 01a0 0100     		.2byte	0x1
 5109 01a2 55       		.byte	0x55
 5110 01a3 36000000 		.4byte	.LVL143
 5111 01a7 38000000 		.4byte	.LFE186
 5112 01ab 0100     		.2byte	0x1
 5113 01ad 50       		.byte	0x50
 5114 01ae 00000000 		.4byte	0
 5115 01b2 00000000 		.4byte	0
 5116              	.LLST45:
 5117 01b6 00000000 		.4byte	.LVL122
 5118 01ba 36000000 		.4byte	.LVL131
 5119 01be 0100     		.2byte	0x1
 5120 01c0 50       		.byte	0x50
 5121 01c1 36000000 		.4byte	.LVL131
 5122 01c5 3A000000 		.4byte	.LFE185
 5123 01c9 0400     		.2byte	0x4
 5124 01cb F3       		.byte	0xf3
 5125 01cc 01       		.uleb128 0x1
 5126 01cd 50       		.byte	0x50
 5127 01ce 9F       		.byte	0x9f
 5128 01cf 00000000 		.4byte	0
 5129 01d3 00000000 		.4byte	0
 5130              	.LLST46:
ARM GAS  /tmp/ccsh7mrZ.s 			page 108


 5131 01d7 00000000 		.4byte	.LVL122
 5132 01db 18000000 		.4byte	.LVL125
 5133 01df 0100     		.2byte	0x1
 5134 01e1 51       		.byte	0x51
 5135 01e2 18000000 		.4byte	.LVL125
 5136 01e6 1E000000 		.4byte	.LVL128
 5137 01ea 0300     		.2byte	0x3
 5138 01ec 71       		.byte	0x71
 5139 01ed 01       		.sleb128 1
 5140 01ee 9F       		.byte	0x9f
 5141 01ef 1E000000 		.4byte	.LVL128
 5142 01f3 3A000000 		.4byte	.LFE185
 5143 01f7 0100     		.2byte	0x1
 5144 01f9 51       		.byte	0x51
 5145 01fa 00000000 		.4byte	0
 5146 01fe 00000000 		.4byte	0
 5147              	.LLST47:
 5148 0202 0A000000 		.4byte	.LVL124
 5149 0206 1A000000 		.4byte	.LVL126
 5150 020a 0100     		.2byte	0x1
 5151 020c 53       		.byte	0x53
 5152 020d 24000000 		.4byte	.LVL129
 5153 0211 32000000 		.4byte	.LVL130
 5154 0215 0100     		.2byte	0x1
 5155 0217 53       		.byte	0x53
 5156 0218 00000000 		.4byte	0
 5157 021c 00000000 		.4byte	0
 5158              	.LLST48:
 5159 0220 00000000 		.4byte	.LVL122
 5160 0224 08000000 		.4byte	.LVL123
 5161 0228 0200     		.2byte	0x2
 5162 022a 30       		.byte	0x30
 5163 022b 9F       		.byte	0x9f
 5164 022c 08000000 		.4byte	.LVL123
 5165 0230 38000000 		.4byte	.LVL132
 5166 0234 0100     		.2byte	0x1
 5167 0236 55       		.byte	0x55
 5168 0237 38000000 		.4byte	.LVL132
 5169 023b 3A000000 		.4byte	.LFE185
 5170 023f 0100     		.2byte	0x1
 5171 0241 50       		.byte	0x50
 5172 0242 00000000 		.4byte	0
 5173 0246 00000000 		.4byte	0
 5174              	.LLST44:
 5175 024a 00000000 		.4byte	.LVL120
 5176 024e 02000000 		.4byte	.LVL121
 5177 0252 0100     		.2byte	0x1
 5178 0254 51       		.byte	0x51
 5179 0255 02000000 		.4byte	.LVL121
 5180 0259 0A000000 		.4byte	.LFE184
 5181 025d 0400     		.2byte	0x4
 5182 025f F3       		.byte	0xf3
 5183 0260 01       		.uleb128 0x1
 5184 0261 51       		.byte	0x51
 5185 0262 9F       		.byte	0x9f
 5186 0263 00000000 		.4byte	0
 5187 0267 00000000 		.4byte	0
ARM GAS  /tmp/ccsh7mrZ.s 			page 109


 5188              	.LLST41:
 5189 026b 00000000 		.4byte	.LVL114
 5190 026f 02000000 		.4byte	.LVL115
 5191 0273 0100     		.2byte	0x1
 5192 0275 51       		.byte	0x51
 5193 0276 02000000 		.4byte	.LVL115
 5194 027a 28000000 		.4byte	.LFE183
 5195 027e 0400     		.2byte	0x4
 5196 0280 F3       		.byte	0xf3
 5197 0281 01       		.uleb128 0x1
 5198 0282 51       		.byte	0x51
 5199 0283 9F       		.byte	0x9f
 5200 0284 00000000 		.4byte	0
 5201 0288 00000000 		.4byte	0
 5202              	.LLST42:
 5203 028c 1E000000 		.4byte	.LVL118
 5204 0290 24000000 		.4byte	.LVL119
 5205 0294 0100     		.2byte	0x1
 5206 0296 50       		.byte	0x50
 5207 0297 00000000 		.4byte	0
 5208 029b 00000000 		.4byte	0
 5209              	.LLST43:
 5210 029f 18000000 		.4byte	.LVL116
 5211 02a3 1C000000 		.4byte	.LVL117
 5212 02a7 0100     		.2byte	0x1
 5213 02a9 50       		.byte	0x50
 5214 02aa 00000000 		.4byte	0
 5215 02ae 00000000 		.4byte	0
 5216              	.LLST40:
 5217 02b2 00000000 		.4byte	.LVL109
 5218 02b6 02000000 		.4byte	.LVL110
 5219 02ba 0100     		.2byte	0x1
 5220 02bc 50       		.byte	0x50
 5221 02bd 02000000 		.4byte	.LVL110
 5222 02c1 06000000 		.4byte	.LFE179
 5223 02c5 0400     		.2byte	0x4
 5224 02c7 F3       		.byte	0xf3
 5225 02c8 01       		.uleb128 0x1
 5226 02c9 50       		.byte	0x50
 5227 02ca 9F       		.byte	0x9f
 5228 02cb 00000000 		.4byte	0
 5229 02cf 00000000 		.4byte	0
 5230              	.LLST39:
 5231 02d3 00000000 		.4byte	.LVL107
 5232 02d7 02000000 		.4byte	.LVL108
 5233 02db 0100     		.2byte	0x1
 5234 02dd 50       		.byte	0x50
 5235 02de 02000000 		.4byte	.LVL108
 5236 02e2 04000000 		.4byte	.LFE178
 5237 02e6 0400     		.2byte	0x4
 5238 02e8 F3       		.byte	0xf3
 5239 02e9 01       		.uleb128 0x1
 5240 02ea 50       		.byte	0x50
 5241 02eb 9F       		.byte	0x9f
 5242 02ec 00000000 		.4byte	0
 5243 02f0 00000000 		.4byte	0
 5244              	.LLST38:
ARM GAS  /tmp/ccsh7mrZ.s 			page 110


 5245 02f4 00000000 		.4byte	.LVL105
 5246 02f8 02000000 		.4byte	.LVL106
 5247 02fc 0100     		.2byte	0x1
 5248 02fe 50       		.byte	0x50
 5249 02ff 02000000 		.4byte	.LVL106
 5250 0303 04000000 		.4byte	.LFE177
 5251 0307 0400     		.2byte	0x4
 5252 0309 F3       		.byte	0xf3
 5253 030a 01       		.uleb128 0x1
 5254 030b 50       		.byte	0x50
 5255 030c 9F       		.byte	0x9f
 5256 030d 00000000 		.4byte	0
 5257 0311 00000000 		.4byte	0
 5258              	.LLST15:
 5259 0315 00000000 		.4byte	.LVL41
 5260 0319 56000000 		.4byte	.LVL54
 5261 031d 0100     		.2byte	0x1
 5262 031f 50       		.byte	0x50
 5263 0320 56000000 		.4byte	.LVL54
 5264 0324 5A000000 		.4byte	.LVL55
 5265 0328 0400     		.2byte	0x4
 5266 032a F3       		.byte	0xf3
 5267 032b 01       		.uleb128 0x1
 5268 032c 50       		.byte	0x50
 5269 032d 9F       		.byte	0x9f
 5270 032e 5A000000 		.4byte	.LVL55
 5271 0332 7E000000 		.4byte	.LVL65
 5272 0336 0100     		.2byte	0x1
 5273 0338 50       		.byte	0x50
 5274 0339 7E000000 		.4byte	.LVL65
 5275 033d 80000000 		.4byte	.LVL66
 5276 0341 0400     		.2byte	0x4
 5277 0343 F3       		.byte	0xf3
 5278 0344 01       		.uleb128 0x1
 5279 0345 50       		.byte	0x50
 5280 0346 9F       		.byte	0x9f
 5281 0347 80000000 		.4byte	.LVL66
 5282 034b 94000000 		.4byte	.LVL70
 5283 034f 0100     		.2byte	0x1
 5284 0351 50       		.byte	0x50
 5285 0352 94000000 		.4byte	.LVL70
 5286 0356 98000000 		.4byte	.LVL72
 5287 035a 0400     		.2byte	0x4
 5288 035c F3       		.byte	0xf3
 5289 035d 01       		.uleb128 0x1
 5290 035e 50       		.byte	0x50
 5291 035f 9F       		.byte	0x9f
 5292 0360 98000000 		.4byte	.LVL72
 5293 0364 9A000000 		.4byte	.LVL73
 5294 0368 0100     		.2byte	0x1
 5295 036a 50       		.byte	0x50
 5296 036b 9A000000 		.4byte	.LVL73
 5297 036f 9C000000 		.4byte	.LFE173
 5298 0373 0400     		.2byte	0x4
 5299 0375 F3       		.byte	0xf3
 5300 0376 01       		.uleb128 0x1
 5301 0377 50       		.byte	0x50
ARM GAS  /tmp/ccsh7mrZ.s 			page 111


 5302 0378 9F       		.byte	0x9f
 5303 0379 00000000 		.4byte	0
 5304 037d 00000000 		.4byte	0
 5305              	.LLST16:
 5306 0381 00000000 		.4byte	.LVL41
 5307 0385 2C000000 		.4byte	.LVL44
 5308 0389 0100     		.2byte	0x1
 5309 038b 51       		.byte	0x51
 5310 038c 2C000000 		.4byte	.LVL44
 5311 0390 5A000000 		.4byte	.LVL55
 5312 0394 0400     		.2byte	0x4
 5313 0396 F3       		.byte	0xf3
 5314 0397 01       		.uleb128 0x1
 5315 0398 51       		.byte	0x51
 5316 0399 9F       		.byte	0x9f
 5317 039a 5A000000 		.4byte	.LVL55
 5318 039e 6C000000 		.4byte	.LVL60
 5319 03a2 0100     		.2byte	0x1
 5320 03a4 51       		.byte	0x51
 5321 03a5 6C000000 		.4byte	.LVL60
 5322 03a9 98000000 		.4byte	.LVL72
 5323 03ad 0400     		.2byte	0x4
 5324 03af F3       		.byte	0xf3
 5325 03b0 01       		.uleb128 0x1
 5326 03b1 51       		.byte	0x51
 5327 03b2 9F       		.byte	0x9f
 5328 03b3 98000000 		.4byte	.LVL72
 5329 03b7 9C000000 		.4byte	.LFE173
 5330 03bb 0100     		.2byte	0x1
 5331 03bd 51       		.byte	0x51
 5332 03be 00000000 		.4byte	0
 5333 03c2 00000000 		.4byte	0
 5334              	.LLST17:
 5335 03c6 36000000 		.4byte	.LVL46
 5336 03ca 48000000 		.4byte	.LVL49
 5337 03ce 0100     		.2byte	0x1
 5338 03d0 53       		.byte	0x53
 5339 03d1 50000000 		.4byte	.LVL52
 5340 03d5 5A000000 		.4byte	.LVL55
 5341 03d9 0100     		.2byte	0x1
 5342 03db 53       		.byte	0x53
 5343 03dc 72000000 		.4byte	.LVL62
 5344 03e0 88000000 		.4byte	.LVL68
 5345 03e4 0100     		.2byte	0x1
 5346 03e6 53       		.byte	0x53
 5347 03e7 00000000 		.4byte	0
 5348 03eb 00000000 		.4byte	0
 5349              	.LLST18:
 5350 03ef 02000000 		.4byte	.LVL42
 5351 03f3 4A000000 		.4byte	.LVL50
 5352 03f7 0100     		.2byte	0x1
 5353 03f9 52       		.byte	0x52
 5354 03fa 4A000000 		.4byte	.LVL50
 5355 03fe 4E000000 		.4byte	.LVL51
 5356 0402 0300     		.2byte	0x3
 5357 0404 72       		.byte	0x72
 5358 0405 01       		.sleb128 1
ARM GAS  /tmp/ccsh7mrZ.s 			page 112


 5359 0406 9F       		.byte	0x9f
 5360 0407 4E000000 		.4byte	.LVL51
 5361 040b 54000000 		.4byte	.LVL53
 5362 040f 0100     		.2byte	0x1
 5363 0411 52       		.byte	0x52
 5364 0412 5A000000 		.4byte	.LVL55
 5365 0416 72000000 		.4byte	.LVL62
 5366 041a 0100     		.2byte	0x1
 5367 041c 52       		.byte	0x52
 5368 041d 80000000 		.4byte	.LVL66
 5369 0421 8A000000 		.4byte	.LVL69
 5370 0425 0100     		.2byte	0x1
 5371 0427 52       		.byte	0x52
 5372 0428 8A000000 		.4byte	.LVL69
 5373 042c 98000000 		.4byte	.LVL72
 5374 0430 0200     		.2byte	0x2
 5375 0432 30       		.byte	0x30
 5376 0433 9F       		.byte	0x9f
 5377 0434 98000000 		.4byte	.LVL72
 5378 0438 9C000000 		.4byte	.LFE173
 5379 043c 0100     		.2byte	0x1
 5380 043e 52       		.byte	0x52
 5381 043f 00000000 		.4byte	0
 5382 0443 00000000 		.4byte	0
 5383              	.LLST19:
 5384 0447 02000000 		.4byte	.LVL42
 5385 044b 2C000000 		.4byte	.LVL44
 5386 044f 0200     		.2byte	0x2
 5387 0451 71       		.byte	0x71
 5388 0452 08       		.sleb128 8
 5389 0453 2C000000 		.4byte	.LVL44
 5390 0457 34000000 		.4byte	.LVL45
 5391 045b 0500     		.2byte	0x5
 5392 045d F3       		.byte	0xf3
 5393 045e 01       		.uleb128 0x1
 5394 045f 51       		.byte	0x51
 5395 0460 23       		.byte	0x23
 5396 0461 08       		.uleb128 0x8
 5397 0462 34000000 		.4byte	.LVL45
 5398 0466 3E000000 		.4byte	.LVL47
 5399 046a 0100     		.2byte	0x1
 5400 046c 54       		.byte	0x54
 5401 046d 46000000 		.4byte	.LVL48
 5402 0471 54000000 		.4byte	.LVL53
 5403 0475 0100     		.2byte	0x1
 5404 0477 54       		.byte	0x54
 5405 0478 5A000000 		.4byte	.LVL55
 5406 047c 6C000000 		.4byte	.LVL60
 5407 0480 0200     		.2byte	0x2
 5408 0482 71       		.byte	0x71
 5409 0483 08       		.sleb128 8
 5410 0484 6C000000 		.4byte	.LVL60
 5411 0488 72000000 		.4byte	.LVL62
 5412 048c 0500     		.2byte	0x5
 5413 048e F3       		.byte	0xf3
 5414 048f 01       		.uleb128 0x1
 5415 0490 51       		.byte	0x51
ARM GAS  /tmp/ccsh7mrZ.s 			page 113


 5416 0491 23       		.byte	0x23
 5417 0492 08       		.uleb128 0x8
 5418 0493 86000000 		.4byte	.LVL67
 5419 0497 96000000 		.4byte	.LVL71
 5420 049b 0300     		.2byte	0x3
 5421 049d 74       		.byte	0x74
 5422 049e 01       		.sleb128 1
 5423 049f 9F       		.byte	0x9f
 5424 04a0 98000000 		.4byte	.LVL72
 5425 04a4 9C000000 		.4byte	.LFE173
 5426 04a8 0200     		.2byte	0x2
 5427 04aa 71       		.byte	0x71
 5428 04ab 08       		.sleb128 8
 5429 04ac 00000000 		.4byte	0
 5430 04b0 00000000 		.4byte	0
 5431              	.LLST20:
 5432 04b4 02000000 		.4byte	.LVL42
 5433 04b8 3E000000 		.4byte	.LVL47
 5434 04bc 0400     		.2byte	0x4
 5435 04be 0A       		.byte	0xa
 5436 04bf 3075     		.2byte	0x7530
 5437 04c1 9F       		.byte	0x9f
 5438 04c2 3E000000 		.4byte	.LVL47
 5439 04c6 4A000000 		.4byte	.LVL50
 5440 04ca 0300     		.2byte	0x3
 5441 04cc 71       		.byte	0x71
 5442 04cd 7F       		.sleb128 -1
 5443 04ce 9F       		.byte	0x9f
 5444 04cf 4A000000 		.4byte	.LVL50
 5445 04d3 54000000 		.4byte	.LVL53
 5446 04d7 0400     		.2byte	0x4
 5447 04d9 0A       		.byte	0xa
 5448 04da 3075     		.2byte	0x7530
 5449 04dc 9F       		.byte	0x9f
 5450 04dd 5A000000 		.4byte	.LVL55
 5451 04e1 72000000 		.4byte	.LVL62
 5452 04e5 0400     		.2byte	0x4
 5453 04e7 0A       		.byte	0xa
 5454 04e8 3075     		.2byte	0x7530
 5455 04ea 9F       		.byte	0x9f
 5456 04eb 72000000 		.4byte	.LVL62
 5457 04ef 7A000000 		.4byte	.LVL64
 5458 04f3 0300     		.2byte	0x3
 5459 04f5 71       		.byte	0x71
 5460 04f6 7E       		.sleb128 -2
 5461 04f7 9F       		.byte	0x9f
 5462 04f8 7A000000 		.4byte	.LVL64
 5463 04fc 8A000000 		.4byte	.LVL69
 5464 0500 0300     		.2byte	0x3
 5465 0502 71       		.byte	0x71
 5466 0503 7F       		.sleb128 -1
 5467 0504 9F       		.byte	0x9f
 5468 0505 8A000000 		.4byte	.LVL69
 5469 0509 9C000000 		.4byte	.LFE173
 5470 050d 0400     		.2byte	0x4
 5471 050f 0A       		.byte	0xa
 5472 0510 3075     		.2byte	0x7530
ARM GAS  /tmp/ccsh7mrZ.s 			page 114


 5473 0512 9F       		.byte	0x9f
 5474 0513 00000000 		.4byte	0
 5475 0517 00000000 		.4byte	0
 5476              	.LLST21:
 5477 051b 28000000 		.4byte	.LVL43
 5478 051f 2C000000 		.4byte	.LVL44
 5479 0523 0100     		.2byte	0x1
 5480 0525 56       		.byte	0x56
 5481 0526 5A000000 		.4byte	.LVL55
 5482 052a 72000000 		.4byte	.LVL62
 5483 052e 0100     		.2byte	0x1
 5484 0530 56       		.byte	0x56
 5485 0531 00000000 		.4byte	0
 5486 0535 00000000 		.4byte	0
 5487              	.LLST22:
 5488 0539 28000000 		.4byte	.LVL43
 5489 053d 2C000000 		.4byte	.LVL44
 5490 0541 0100     		.2byte	0x1
 5491 0543 51       		.byte	0x51
 5492 0544 5A000000 		.4byte	.LVL55
 5493 0548 6C000000 		.4byte	.LVL60
 5494 054c 0100     		.2byte	0x1
 5495 054e 51       		.byte	0x51
 5496 054f 6C000000 		.4byte	.LVL60
 5497 0553 72000000 		.4byte	.LVL62
 5498 0557 0400     		.2byte	0x4
 5499 0559 F3       		.byte	0xf3
 5500 055a 01       		.uleb128 0x1
 5501 055b 51       		.byte	0x51
 5502 055c 9F       		.byte	0x9f
 5503 055d 00000000 		.4byte	0
 5504 0561 00000000 		.4byte	0
 5505              	.LLST23:
 5506 0565 5A000000 		.4byte	.LVL55
 5507 0569 72000000 		.4byte	.LVL62
 5508 056d 0100     		.2byte	0x1
 5509 056f 56       		.byte	0x56
 5510 0570 00000000 		.4byte	0
 5511 0574 00000000 		.4byte	0
 5512              	.LLST24:
 5513 0578 5A000000 		.4byte	.LVL55
 5514 057c 6C000000 		.4byte	.LVL60
 5515 0580 0100     		.2byte	0x1
 5516 0582 51       		.byte	0x51
 5517 0583 6C000000 		.4byte	.LVL60
 5518 0587 72000000 		.4byte	.LVL62
 5519 058b 0400     		.2byte	0x4
 5520 058d F3       		.byte	0xf3
 5521 058e 01       		.uleb128 0x1
 5522 058f 51       		.byte	0x51
 5523 0590 9F       		.byte	0x9f
 5524 0591 00000000 		.4byte	0
 5525 0595 00000000 		.4byte	0
 5526              	.LLST25:
 5527 0599 5E000000 		.4byte	.LVL56
 5528 059d 60000000 		.4byte	.LVL57
 5529 05a1 0100     		.2byte	0x1
ARM GAS  /tmp/ccsh7mrZ.s 			page 115


 5530 05a3 53       		.byte	0x53
 5531 05a4 60000000 		.4byte	.LVL57
 5532 05a8 68000000 		.4byte	.LVL58
 5533 05ac 0500     		.2byte	0x5
 5534 05ae 73       		.byte	0x73
 5535 05af 00       		.sleb128 0
 5536 05b0 38       		.byte	0x38
 5537 05b1 24       		.byte	0x24
 5538 05b2 9F       		.byte	0x9f
 5539 05b3 68000000 		.4byte	.LVL58
 5540 05b7 6A000000 		.4byte	.LVL59
 5541 05bb 0100     		.2byte	0x1
 5542 05bd 53       		.byte	0x53
 5543 05be 6A000000 		.4byte	.LVL59
 5544 05c2 70000000 		.4byte	.LVL61
 5545 05c6 0500     		.2byte	0x5
 5546 05c8 73       		.byte	0x73
 5547 05c9 00       		.sleb128 0
 5548 05ca 38       		.byte	0x38
 5549 05cb 24       		.byte	0x24
 5550 05cc 9F       		.byte	0x9f
 5551 05cd 70000000 		.4byte	.LVL61
 5552 05d1 72000000 		.4byte	.LVL62
 5553 05d5 0100     		.2byte	0x1
 5554 05d7 53       		.byte	0x53
 5555 05d8 00000000 		.4byte	0
 5556 05dc 00000000 		.4byte	0
 5557              	.LLST36:
 5558 05e0 00000000 		.4byte	.LVL100
 5559 05e4 21000000 		.4byte	.LVL102-1
 5560 05e8 0100     		.2byte	0x1
 5561 05ea 50       		.byte	0x50
 5562 05eb 21000000 		.4byte	.LVL102-1
 5563 05ef 26000000 		.4byte	.LFE171
 5564 05f3 0400     		.2byte	0x4
 5565 05f5 F3       		.byte	0xf3
 5566 05f6 01       		.uleb128 0x1
 5567 05f7 50       		.byte	0x50
 5568 05f8 9F       		.byte	0x9f
 5569 05f9 00000000 		.4byte	0
 5570 05fd 00000000 		.4byte	0
 5571              	.LLST37:
 5572 0601 00000000 		.4byte	.LVL100
 5573 0605 10000000 		.4byte	.LVL101
 5574 0609 0100     		.2byte	0x1
 5575 060b 51       		.byte	0x51
 5576 060c 10000000 		.4byte	.LVL101
 5577 0610 21000000 		.4byte	.LVL102-1
 5578 0614 0200     		.2byte	0x2
 5579 0616 91       		.byte	0x91
 5580 0617 74       		.sleb128 -12
 5581 0618 21000000 		.4byte	.LVL102-1
 5582 061c 26000000 		.4byte	.LFE171
 5583 0620 0400     		.2byte	0x4
 5584 0622 F3       		.byte	0xf3
 5585 0623 01       		.uleb128 0x1
 5586 0624 51       		.byte	0x51
ARM GAS  /tmp/ccsh7mrZ.s 			page 116


 5587 0625 9F       		.byte	0x9f
 5588 0626 00000000 		.4byte	0
 5589 062a 00000000 		.4byte	0
 5590              	.LLST10:
 5591 062e 00000000 		.4byte	.LVL33
 5592 0632 23000000 		.4byte	.LVL38-1
 5593 0636 0100     		.2byte	0x1
 5594 0638 50       		.byte	0x50
 5595 0639 23000000 		.4byte	.LVL38-1
 5596 063d 30000000 		.4byte	.LFE169
 5597 0641 0400     		.2byte	0x4
 5598 0643 F3       		.byte	0xf3
 5599 0644 01       		.uleb128 0x1
 5600 0645 50       		.byte	0x50
 5601 0646 9F       		.byte	0x9f
 5602 0647 00000000 		.4byte	0
 5603 064b 00000000 		.4byte	0
 5604              	.LLST11:
 5605 064f 00000000 		.4byte	.LVL33
 5606 0653 1A000000 		.4byte	.LVL36
 5607 0657 0100     		.2byte	0x1
 5608 0659 51       		.byte	0x51
 5609 065a 1A000000 		.4byte	.LVL36
 5610 065e 30000000 		.4byte	.LFE169
 5611 0662 0400     		.2byte	0x4
 5612 0664 F3       		.byte	0xf3
 5613 0665 01       		.uleb128 0x1
 5614 0666 51       		.byte	0x51
 5615 0667 9F       		.byte	0x9f
 5616 0668 00000000 		.4byte	0
 5617 066c 00000000 		.4byte	0
 5618              	.LLST12:
 5619 0670 00000000 		.4byte	.LVL33
 5620 0674 24000000 		.4byte	.LVL38
 5621 0678 0200     		.2byte	0x2
 5622 067a 30       		.byte	0x30
 5623 067b 9F       		.byte	0x9f
 5624 067c 24000000 		.4byte	.LVL38
 5625 0680 28000000 		.4byte	.LVL39
 5626 0684 0800     		.2byte	0x8
 5627 0686 70       		.byte	0x70
 5628 0687 00       		.sleb128 0
 5629 0688 31       		.byte	0x31
 5630 0689 29       		.byte	0x29
 5631 068a 08       		.byte	0x8
 5632 068b FF       		.byte	0xff
 5633 068c 1A       		.byte	0x1a
 5634 068d 9F       		.byte	0x9f
 5635 068e 28000000 		.4byte	.LVL39
 5636 0692 2C000000 		.4byte	.LVL40
 5637 0696 0800     		.2byte	0x8
 5638 0698 70       		.byte	0x70
 5639 0699 00       		.sleb128 0
 5640 069a 30       		.byte	0x30
 5641 069b 29       		.byte	0x29
 5642 069c 08       		.byte	0x8
 5643 069d FF       		.byte	0xff
ARM GAS  /tmp/ccsh7mrZ.s 			page 117


 5644 069e 1A       		.byte	0x1a
 5645 069f 9F       		.byte	0x9f
 5646 06a0 00000000 		.4byte	0
 5647 06a4 00000000 		.4byte	0
 5648              	.LLST13:
 5649 06a8 12000000 		.4byte	.LVL34
 5650 06ac 18000000 		.4byte	.LVL35
 5651 06b0 0100     		.2byte	0x1
 5652 06b2 50       		.byte	0x50
 5653 06b3 00000000 		.4byte	0
 5654 06b7 00000000 		.4byte	0
 5655              	.LLST14:
 5656 06bb 18000000 		.4byte	.LVL35
 5657 06bf 20000000 		.4byte	.LVL37
 5658 06c3 0100     		.2byte	0x1
 5659 06c5 50       		.byte	0x50
 5660 06c6 00000000 		.4byte	0
 5661 06ca 00000000 		.4byte	0
 5662              	.LLST0:
 5663 06ce 00000000 		.4byte	.LVL2
 5664 06d2 6A000000 		.4byte	.LVL18
 5665 06d6 0100     		.2byte	0x1
 5666 06d8 50       		.byte	0x50
 5667 06d9 6A000000 		.4byte	.LVL18
 5668 06dd 6E000000 		.4byte	.LVL19
 5669 06e1 0400     		.2byte	0x4
 5670 06e3 F3       		.byte	0xf3
 5671 06e4 01       		.uleb128 0x1
 5672 06e5 50       		.byte	0x50
 5673 06e6 9F       		.byte	0x9f
 5674 06e7 6E000000 		.4byte	.LVL19
 5675 06eb A0000000 		.4byte	.LVL29
 5676 06ef 0100     		.2byte	0x1
 5677 06f1 50       		.byte	0x50
 5678 06f2 A0000000 		.4byte	.LVL29
 5679 06f6 A4000000 		.4byte	.LVL30
 5680 06fa 0400     		.2byte	0x4
 5681 06fc F3       		.byte	0xf3
 5682 06fd 01       		.uleb128 0x1
 5683 06fe 50       		.byte	0x50
 5684 06ff 9F       		.byte	0x9f
 5685 0700 A4000000 		.4byte	.LVL30
 5686 0704 A8000000 		.4byte	.LVL31
 5687 0708 0100     		.2byte	0x1
 5688 070a 50       		.byte	0x50
 5689 070b A8000000 		.4byte	.LVL31
 5690 070f AC000000 		.4byte	.LVL32
 5691 0713 0400     		.2byte	0x4
 5692 0715 F3       		.byte	0xf3
 5693 0716 01       		.uleb128 0x1
 5694 0717 50       		.byte	0x50
 5695 0718 9F       		.byte	0x9f
 5696 0719 AC000000 		.4byte	.LVL32
 5697 071d C0000000 		.4byte	.LFE170
 5698 0721 0100     		.2byte	0x1
 5699 0723 50       		.byte	0x50
 5700 0724 00000000 		.4byte	0
ARM GAS  /tmp/ccsh7mrZ.s 			page 118


 5701 0728 00000000 		.4byte	0
 5702              	.LLST1:
 5703 072c 00000000 		.4byte	.LVL2
 5704 0730 1A000000 		.4byte	.LVL4
 5705 0734 0100     		.2byte	0x1
 5706 0736 51       		.byte	0x51
 5707 0737 1A000000 		.4byte	.LVL4
 5708 073b 6E000000 		.4byte	.LVL19
 5709 073f 0400     		.2byte	0x4
 5710 0741 F3       		.byte	0xf3
 5711 0742 01       		.uleb128 0x1
 5712 0743 51       		.byte	0x51
 5713 0744 9F       		.byte	0x9f
 5714 0745 6E000000 		.4byte	.LVL19
 5715 0749 70000000 		.4byte	.LVL20
 5716 074d 0100     		.2byte	0x1
 5717 074f 51       		.byte	0x51
 5718 0750 70000000 		.4byte	.LVL20
 5719 0754 A4000000 		.4byte	.LVL30
 5720 0758 0400     		.2byte	0x4
 5721 075a F3       		.byte	0xf3
 5722 075b 01       		.uleb128 0x1
 5723 075c 51       		.byte	0x51
 5724 075d 9F       		.byte	0x9f
 5725 075e A4000000 		.4byte	.LVL30
 5726 0762 AC000000 		.4byte	.LVL32
 5727 0766 0100     		.2byte	0x1
 5728 0768 51       		.byte	0x51
 5729 0769 AC000000 		.4byte	.LVL32
 5730 076d C0000000 		.4byte	.LFE170
 5731 0771 0400     		.2byte	0x4
 5732 0773 F3       		.byte	0xf3
 5733 0774 01       		.uleb128 0x1
 5734 0775 51       		.byte	0x51
 5735 0776 9F       		.byte	0x9f
 5736 0777 00000000 		.4byte	0
 5737 077b 00000000 		.4byte	0
 5738              	.LLST2:
 5739 077f 00000000 		.4byte	.LVL2
 5740 0783 22000000 		.4byte	.LVL5
 5741 0787 0100     		.2byte	0x1
 5742 0789 52       		.byte	0x52
 5743 078a 22000000 		.4byte	.LVL5
 5744 078e 6E000000 		.4byte	.LVL19
 5745 0792 0400     		.2byte	0x4
 5746 0794 F3       		.byte	0xf3
 5747 0795 01       		.uleb128 0x1
 5748 0796 52       		.byte	0x52
 5749 0797 9F       		.byte	0x9f
 5750 0798 6E000000 		.4byte	.LVL19
 5751 079c 76000000 		.4byte	.LVL21
 5752 07a0 0100     		.2byte	0x1
 5753 07a2 52       		.byte	0x52
 5754 07a3 76000000 		.4byte	.LVL21
 5755 07a7 A4000000 		.4byte	.LVL30
 5756 07ab 0400     		.2byte	0x4
 5757 07ad F3       		.byte	0xf3
ARM GAS  /tmp/ccsh7mrZ.s 			page 119


 5758 07ae 01       		.uleb128 0x1
 5759 07af 52       		.byte	0x52
 5760 07b0 9F       		.byte	0x9f
 5761 07b1 A4000000 		.4byte	.LVL30
 5762 07b5 AC000000 		.4byte	.LVL32
 5763 07b9 0100     		.2byte	0x1
 5764 07bb 52       		.byte	0x52
 5765 07bc AC000000 		.4byte	.LVL32
 5766 07c0 C0000000 		.4byte	.LFE170
 5767 07c4 0400     		.2byte	0x4
 5768 07c6 F3       		.byte	0xf3
 5769 07c7 01       		.uleb128 0x1
 5770 07c8 52       		.byte	0x52
 5771 07c9 9F       		.byte	0x9f
 5772 07ca 00000000 		.4byte	0
 5773 07ce 00000000 		.4byte	0
 5774              	.LLST3:
 5775 07d2 00000000 		.4byte	.LVL2
 5776 07d6 7E000000 		.4byte	.LVL23
 5777 07da 0200     		.2byte	0x2
 5778 07dc 30       		.byte	0x30
 5779 07dd 9F       		.byte	0x9f
 5780 07de 7E000000 		.4byte	.LVL23
 5781 07e2 8C000000 		.4byte	.LVL27
 5782 07e6 0100     		.2byte	0x1
 5783 07e8 53       		.byte	0x53
 5784 07e9 A4000000 		.4byte	.LVL30
 5785 07ed C0000000 		.4byte	.LFE170
 5786 07f1 0200     		.2byte	0x2
 5787 07f3 30       		.byte	0x30
 5788 07f4 9F       		.byte	0x9f
 5789 07f5 00000000 		.4byte	0
 5790 07f9 00000000 		.4byte	0
 5791              	.LLST4:
 5792 07fd 78000000 		.4byte	.LVL22
 5793 0801 84000000 		.4byte	.LVL25
 5794 0805 0100     		.2byte	0x1
 5795 0807 52       		.byte	0x52
 5796 0808 86000000 		.4byte	.LVL26
 5797 080c 96000000 		.4byte	.LVL28
 5798 0810 0100     		.2byte	0x1
 5799 0812 52       		.byte	0x52
 5800 0813 00000000 		.4byte	0
 5801 0817 00000000 		.4byte	0
 5802              	.LLST5:
 5803 081b 10000000 		.4byte	.LVL3
 5804 081f 22000000 		.4byte	.LVL5
 5805 0823 0100     		.2byte	0x1
 5806 0825 52       		.byte	0x52
 5807 0826 22000000 		.4byte	.LVL5
 5808 082a 68000000 		.4byte	.LVL17
 5809 082e 0400     		.2byte	0x4
 5810 0830 F3       		.byte	0xf3
 5811 0831 01       		.uleb128 0x1
 5812 0832 52       		.byte	0x52
 5813 0833 9F       		.byte	0x9f
 5814 0834 AC000000 		.4byte	.LVL32
ARM GAS  /tmp/ccsh7mrZ.s 			page 120


 5815 0838 C0000000 		.4byte	.LFE170
 5816 083c 0400     		.2byte	0x4
 5817 083e F3       		.byte	0xf3
 5818 083f 01       		.uleb128 0x1
 5819 0840 52       		.byte	0x52
 5820 0841 9F       		.byte	0x9f
 5821 0842 00000000 		.4byte	0
 5822 0846 00000000 		.4byte	0
 5823              	.LLST6:
 5824 084a 10000000 		.4byte	.LVL3
 5825 084e 1A000000 		.4byte	.LVL4
 5826 0852 0100     		.2byte	0x1
 5827 0854 51       		.byte	0x51
 5828 0855 1A000000 		.4byte	.LVL4
 5829 0859 68000000 		.4byte	.LVL17
 5830 085d 0400     		.2byte	0x4
 5831 085f F3       		.byte	0xf3
 5832 0860 01       		.uleb128 0x1
 5833 0861 51       		.byte	0x51
 5834 0862 9F       		.byte	0x9f
 5835 0863 AC000000 		.4byte	.LVL32
 5836 0867 C0000000 		.4byte	.LFE170
 5837 086b 0400     		.2byte	0x4
 5838 086d F3       		.byte	0xf3
 5839 086e 01       		.uleb128 0x1
 5840 086f 51       		.byte	0x51
 5841 0870 9F       		.byte	0x9f
 5842 0871 00000000 		.4byte	0
 5843 0875 00000000 		.4byte	0
 5844              	.LLST7:
 5845 0879 10000000 		.4byte	.LVL3
 5846 087d 68000000 		.4byte	.LVL17
 5847 0881 0100     		.2byte	0x1
 5848 0883 50       		.byte	0x50
 5849 0884 AC000000 		.4byte	.LVL32
 5850 0888 C0000000 		.4byte	.LFE170
 5851 088c 0100     		.2byte	0x1
 5852 088e 50       		.byte	0x50
 5853 088f 00000000 		.4byte	0
 5854 0893 00000000 		.4byte	0
 5855              	.LLST8:
 5856 0897 24000000 		.4byte	.LVL6
 5857 089b 62000000 		.4byte	.LVL16
 5858 089f 0100     		.2byte	0x1
 5859 08a1 54       		.byte	0x54
 5860 08a2 AC000000 		.4byte	.LVL32
 5861 08a6 C0000000 		.4byte	.LFE170
 5862 08aa 0100     		.2byte	0x1
 5863 08ac 54       		.byte	0x54
 5864 08ad 00000000 		.4byte	0
 5865 08b1 00000000 		.4byte	0
 5866              	.LLST9:
 5867 08b5 26000000 		.4byte	.LVL7
 5868 08b9 4E000000 		.4byte	.LVL13
 5869 08bd 0100     		.2byte	0x1
 5870 08bf 52       		.byte	0x52
 5871 08c0 50000000 		.4byte	.LVL14
ARM GAS  /tmp/ccsh7mrZ.s 			page 121


 5872 08c4 68000000 		.4byte	.LVL17
 5873 08c8 0100     		.2byte	0x1
 5874 08ca 52       		.byte	0x52
 5875 08cb AC000000 		.4byte	.LVL32
 5876 08cf C0000000 		.4byte	.LFE170
 5877 08d3 0100     		.2byte	0x1
 5878 08d5 52       		.byte	0x52
 5879 08d6 00000000 		.4byte	0
 5880 08da 00000000 		.4byte	0
 5881              	.LLST26:
 5882 08de 00000000 		.4byte	.LVL74
 5883 08e2 04000000 		.4byte	.LVL75
 5884 08e6 0100     		.2byte	0x1
 5885 08e8 50       		.byte	0x50
 5886 08e9 04000000 		.4byte	.LVL75
 5887 08ed 82000000 		.4byte	.LFE174
 5888 08f1 0100     		.2byte	0x1
 5889 08f3 53       		.byte	0x53
 5890 08f4 00000000 		.4byte	0
 5891 08f8 00000000 		.4byte	0
 5892              	.LLST27:
 5893 08fc 00000000 		.4byte	.LVL74
 5894 0900 2A000000 		.4byte	.LVL77
 5895 0904 0100     		.2byte	0x1
 5896 0906 51       		.byte	0x51
 5897 0907 2A000000 		.4byte	.LVL77
 5898 090b 4C000000 		.4byte	.LVL86
 5899 090f 0400     		.2byte	0x4
 5900 0911 F3       		.byte	0xf3
 5901 0912 01       		.uleb128 0x1
 5902 0913 51       		.byte	0x51
 5903 0914 9F       		.byte	0x9f
 5904 0915 4C000000 		.4byte	.LVL86
 5905 0919 5E000000 		.4byte	.LVL91
 5906 091d 0100     		.2byte	0x1
 5907 091f 51       		.byte	0x51
 5908 0920 5E000000 		.4byte	.LVL91
 5909 0924 70000000 		.4byte	.LVL96
 5910 0928 0400     		.2byte	0x4
 5911 092a F3       		.byte	0xf3
 5912 092b 01       		.uleb128 0x1
 5913 092c 51       		.byte	0x51
 5914 092d 9F       		.byte	0x9f
 5915 092e 70000000 		.4byte	.LVL96
 5916 0932 74000000 		.4byte	.LVL98
 5917 0936 0100     		.2byte	0x1
 5918 0938 51       		.byte	0x51
 5919 0939 74000000 		.4byte	.LVL98
 5920 093d 82000000 		.4byte	.LFE174
 5921 0941 0400     		.2byte	0x4
 5922 0943 F3       		.byte	0xf3
 5923 0944 01       		.uleb128 0x1
 5924 0945 51       		.byte	0x51
 5925 0946 9F       		.byte	0x9f
 5926 0947 00000000 		.4byte	0
 5927 094b 00000000 		.4byte	0
 5928              	.LLST28:
ARM GAS  /tmp/ccsh7mrZ.s 			page 122


 5929 094f 2E000000 		.4byte	.LVL79
 5930 0953 3A000000 		.4byte	.LVL81
 5931 0957 0100     		.2byte	0x1
 5932 0959 52       		.byte	0x52
 5933 095a 42000000 		.4byte	.LVL84
 5934 095e 46000000 		.4byte	.LVL85
 5935 0962 0100     		.2byte	0x1
 5936 0964 52       		.byte	0x52
 5937 0965 00000000 		.4byte	0
 5938 0969 00000000 		.4byte	0
 5939              	.LLST29:
 5940 096d 04000000 		.4byte	.LVL75
 5941 0971 2C000000 		.4byte	.LVL78
 5942 0975 0100     		.2byte	0x1
 5943 0977 50       		.byte	0x50
 5944 0978 3A000000 		.4byte	.LVL81
 5945 097c 3C000000 		.4byte	.LVL82
 5946 0980 0300     		.2byte	0x3
 5947 0982 70       		.byte	0x70
 5948 0983 7F       		.sleb128 -1
 5949 0984 9F       		.byte	0x9f
 5950 0985 3C000000 		.4byte	.LVL82
 5951 0989 40000000 		.4byte	.LVL83
 5952 098d 0100     		.2byte	0x1
 5953 098f 50       		.byte	0x50
 5954 0990 4C000000 		.4byte	.LVL86
 5955 0994 72000000 		.4byte	.LVL97
 5956 0998 0100     		.2byte	0x1
 5957 099a 50       		.byte	0x50
 5958 099b 72000000 		.4byte	.LVL97
 5959 099f 74000000 		.4byte	.LVL98
 5960 09a3 0200     		.2byte	0x2
 5961 09a5 71       		.byte	0x71
 5962 09a6 0C       		.sleb128 12
 5963 09a7 74000000 		.4byte	.LVL98
 5964 09ab 82000000 		.4byte	.LFE174
 5965 09af 0100     		.2byte	0x1
 5966 09b1 50       		.byte	0x50
 5967 09b2 00000000 		.4byte	0
 5968 09b6 00000000 		.4byte	0
 5969              	.LLST30:
 5970 09ba 04000000 		.4byte	.LVL75
 5971 09be 2A000000 		.4byte	.LVL77
 5972 09c2 0200     		.2byte	0x2
 5973 09c4 71       		.byte	0x71
 5974 09c5 08       		.sleb128 8
 5975 09c6 2A000000 		.4byte	.LVL77
 5976 09ca 2C000000 		.4byte	.LVL78
 5977 09ce 0500     		.2byte	0x5
 5978 09d0 F3       		.byte	0xf3
 5979 09d1 01       		.uleb128 0x1
 5980 09d2 51       		.byte	0x51
 5981 09d3 23       		.byte	0x23
 5982 09d4 08       		.uleb128 0x8
 5983 09d5 36000000 		.4byte	.LVL80
 5984 09d9 40000000 		.4byte	.LVL83
 5985 09dd 0100     		.2byte	0x1
ARM GAS  /tmp/ccsh7mrZ.s 			page 123


 5986 09df 54       		.byte	0x54
 5987 09e0 4C000000 		.4byte	.LVL86
 5988 09e4 5E000000 		.4byte	.LVL91
 5989 09e8 0200     		.2byte	0x2
 5990 09ea 71       		.byte	0x71
 5991 09eb 08       		.sleb128 8
 5992 09ec 5E000000 		.4byte	.LVL91
 5993 09f0 64000000 		.4byte	.LVL93
 5994 09f4 0500     		.2byte	0x5
 5995 09f6 F3       		.byte	0xf3
 5996 09f7 01       		.uleb128 0x1
 5997 09f8 51       		.byte	0x51
 5998 09f9 23       		.byte	0x23
 5999 09fa 08       		.uleb128 0x8
 6000 09fb 70000000 		.4byte	.LVL96
 6001 09ff 74000000 		.4byte	.LVL98
 6002 0a03 0200     		.2byte	0x2
 6003 0a05 71       		.byte	0x71
 6004 0a06 08       		.sleb128 8
 6005 0a07 00000000 		.4byte	0
 6006 0a0b 00000000 		.4byte	0
 6007              	.LLST31:
 6008 0a0f 26000000 		.4byte	.LVL76
 6009 0a13 2A000000 		.4byte	.LVL77
 6010 0a17 0100     		.2byte	0x1
 6011 0a19 55       		.byte	0x55
 6012 0a1a 4C000000 		.4byte	.LVL86
 6013 0a1e 64000000 		.4byte	.LVL93
 6014 0a22 0100     		.2byte	0x1
 6015 0a24 55       		.byte	0x55
 6016 0a25 00000000 		.4byte	0
 6017 0a29 00000000 		.4byte	0
 6018              	.LLST32:
 6019 0a2d 26000000 		.4byte	.LVL76
 6020 0a31 2A000000 		.4byte	.LVL77
 6021 0a35 0100     		.2byte	0x1
 6022 0a37 51       		.byte	0x51
 6023 0a38 4C000000 		.4byte	.LVL86
 6024 0a3c 5E000000 		.4byte	.LVL91
 6025 0a40 0100     		.2byte	0x1
 6026 0a42 51       		.byte	0x51
 6027 0a43 5E000000 		.4byte	.LVL91
 6028 0a47 64000000 		.4byte	.LVL93
 6029 0a4b 0400     		.2byte	0x4
 6030 0a4d F3       		.byte	0xf3
 6031 0a4e 01       		.uleb128 0x1
 6032 0a4f 51       		.byte	0x51
 6033 0a50 9F       		.byte	0x9f
 6034 0a51 00000000 		.4byte	0
 6035 0a55 00000000 		.4byte	0
 6036              	.LLST33:
 6037 0a59 4C000000 		.4byte	.LVL86
 6038 0a5d 64000000 		.4byte	.LVL93
 6039 0a61 0100     		.2byte	0x1
 6040 0a63 55       		.byte	0x55
 6041 0a64 00000000 		.4byte	0
 6042 0a68 00000000 		.4byte	0
ARM GAS  /tmp/ccsh7mrZ.s 			page 124


 6043              	.LLST34:
 6044 0a6c 4C000000 		.4byte	.LVL86
 6045 0a70 5E000000 		.4byte	.LVL91
 6046 0a74 0100     		.2byte	0x1
 6047 0a76 51       		.byte	0x51
 6048 0a77 5E000000 		.4byte	.LVL91
 6049 0a7b 64000000 		.4byte	.LVL93
 6050 0a7f 0400     		.2byte	0x4
 6051 0a81 F3       		.byte	0xf3
 6052 0a82 01       		.uleb128 0x1
 6053 0a83 51       		.byte	0x51
 6054 0a84 9F       		.byte	0x9f
 6055 0a85 00000000 		.4byte	0
 6056 0a89 00000000 		.4byte	0
 6057              	.LLST35:
 6058 0a8d 50000000 		.4byte	.LVL87
 6059 0a91 52000000 		.4byte	.LVL88
 6060 0a95 0100     		.2byte	0x1
 6061 0a97 52       		.byte	0x52
 6062 0a98 52000000 		.4byte	.LVL88
 6063 0a9c 5A000000 		.4byte	.LVL89
 6064 0aa0 0500     		.2byte	0x5
 6065 0aa2 72       		.byte	0x72
 6066 0aa3 00       		.sleb128 0
 6067 0aa4 38       		.byte	0x38
 6068 0aa5 24       		.byte	0x24
 6069 0aa6 9F       		.byte	0x9f
 6070 0aa7 5A000000 		.4byte	.LVL89
 6071 0aab 5C000000 		.4byte	.LVL90
 6072 0aaf 0100     		.2byte	0x1
 6073 0ab1 52       		.byte	0x52
 6074 0ab2 5C000000 		.4byte	.LVL90
 6075 0ab6 62000000 		.4byte	.LVL92
 6076 0aba 0500     		.2byte	0x5
 6077 0abc 72       		.byte	0x72
 6078 0abd 00       		.sleb128 0
 6079 0abe 38       		.byte	0x38
 6080 0abf 24       		.byte	0x24
 6081 0ac0 9F       		.byte	0x9f
 6082 0ac1 62000000 		.4byte	.LVL92
 6083 0ac5 64000000 		.4byte	.LVL93
 6084 0ac9 0100     		.2byte	0x1
 6085 0acb 52       		.byte	0x52
 6086 0acc 00000000 		.4byte	0
 6087 0ad0 00000000 		.4byte	0
 6088              		.section	.debug_aranges,"",%progbits
 6089 0000 E4000000 		.4byte	0xe4
 6090 0004 0200     		.2byte	0x2
 6091 0006 00000000 		.4byte	.Ldebug_info0
 6092 000a 04       		.byte	0x4
 6093 000b 00       		.byte	0
 6094 000c 0000     		.2byte	0
 6095 000e 0000     		.2byte	0
 6096 0010 00000000 		.4byte	.LFB167
 6097 0014 0E000000 		.4byte	.LFE167-.LFB167
 6098 0018 00000000 		.4byte	.LFB168
 6099 001c 06000000 		.4byte	.LFE168-.LFB168
ARM GAS  /tmp/ccsh7mrZ.s 			page 125


 6100 0020 00000000 		.4byte	.LFB170
 6101 0024 C0000000 		.4byte	.LFE170-.LFB170
 6102 0028 00000000 		.4byte	.LFB169
 6103 002c 30000000 		.4byte	.LFE169-.LFB169
 6104 0030 00000000 		.4byte	.LFB173
 6105 0034 9C000000 		.4byte	.LFE173-.LFB173
 6106 0038 00000000 		.4byte	.LFB174
 6107 003c 82000000 		.4byte	.LFE174-.LFB174
 6108 0040 00000000 		.4byte	.LFB171
 6109 0044 26000000 		.4byte	.LFE171-.LFB171
 6110 0048 00000000 		.4byte	.LFB175
 6111 004c 04000000 		.4byte	.LFE175-.LFB175
 6112 0050 00000000 		.4byte	.LFB176
 6113 0054 06000000 		.4byte	.LFE176-.LFB176
 6114 0058 00000000 		.4byte	.LFB177
 6115 005c 04000000 		.4byte	.LFE177-.LFB177
 6116 0060 00000000 		.4byte	.LFB178
 6117 0064 04000000 		.4byte	.LFE178-.LFB178
 6118 0068 00000000 		.4byte	.LFB179
 6119 006c 06000000 		.4byte	.LFE179-.LFB179
 6120 0070 00000000 		.4byte	.LFB180
 6121 0074 04000000 		.4byte	.LFE180-.LFB180
 6122 0078 00000000 		.4byte	.LFB181
 6123 007c 0E000000 		.4byte	.LFE181-.LFB181
 6124 0080 00000000 		.4byte	.LFB182
 6125 0084 06000000 		.4byte	.LFE182-.LFB182
 6126 0088 00000000 		.4byte	.LFB183
 6127 008c 28000000 		.4byte	.LFE183-.LFB183
 6128 0090 00000000 		.4byte	.LFB184
 6129 0094 0A000000 		.4byte	.LFE184-.LFB184
 6130 0098 00000000 		.4byte	.LFB185
 6131 009c 3A000000 		.4byte	.LFE185-.LFB185
 6132 00a0 00000000 		.4byte	.LFB186
 6133 00a4 38000000 		.4byte	.LFE186-.LFB186
 6134 00a8 00000000 		.4byte	.LFB187
 6135 00ac 08000000 		.4byte	.LFE187-.LFB187
 6136 00b0 00000000 		.4byte	.LFB188
 6137 00b4 1C000000 		.4byte	.LFE188-.LFB188
 6138 00b8 00000000 		.4byte	.LFB189
 6139 00bc 08000000 		.4byte	.LFE189-.LFB189
 6140 00c0 00000000 		.4byte	.LFB190
 6141 00c4 04000000 		.4byte	.LFE190-.LFB190
 6142 00c8 00000000 		.4byte	.LFB191
 6143 00cc 04000000 		.4byte	.LFE191-.LFB191
 6144 00d0 00000000 		.4byte	.LFB192
 6145 00d4 0E000000 		.4byte	.LFE192-.LFB192
 6146 00d8 00000000 		.4byte	.LFB193
 6147 00dc 38000000 		.4byte	.LFE193-.LFB193
 6148 00e0 00000000 		.4byte	0
 6149 00e4 00000000 		.4byte	0
 6150              		.section	.debug_ranges,"",%progbits
 6151              	.Ldebug_ranges0:
 6152 0000 10000000 		.4byte	.LBB18
 6153 0004 68000000 		.4byte	.LBE18
 6154 0008 AC000000 		.4byte	.LBB21
 6155 000c C0000000 		.4byte	.LBE21
 6156 0010 00000000 		.4byte	0
ARM GAS  /tmp/ccsh7mrZ.s 			page 126


 6157 0014 00000000 		.4byte	0
 6158 0018 02000000 		.4byte	.LBB22
 6159 001c 04000000 		.4byte	.LBE22
 6160 0020 12000000 		.4byte	.LBB29
 6161 0024 14000000 		.4byte	.LBE29
 6162 0028 16000000 		.4byte	.LBB30
 6163 002c 18000000 		.4byte	.LBE30
 6164 0030 00000000 		.4byte	0
 6165 0034 00000000 		.4byte	0
 6166 0038 08000000 		.4byte	.LBB26
 6167 003c 0E000000 		.4byte	.LBE26
 6168 0040 1A000000 		.4byte	.LBB31
 6169 0044 20000000 		.4byte	.LBE31
 6170 0048 00000000 		.4byte	0
 6171 004c 00000000 		.4byte	0
 6172 0050 28000000 		.4byte	.LBB36
 6173 0054 2C000000 		.4byte	.LBE36
 6174 0058 5A000000 		.4byte	.LBB41
 6175 005c 72000000 		.4byte	.LBE41
 6176 0060 00000000 		.4byte	0
 6177 0064 00000000 		.4byte	0
 6178 0068 26000000 		.4byte	.LBB50
 6179 006c 2A000000 		.4byte	.LBE50
 6180 0070 4C000000 		.4byte	.LBB55
 6181 0074 64000000 		.4byte	.LBE55
 6182 0078 00000000 		.4byte	0
 6183 007c 00000000 		.4byte	0
 6184 0080 64000000 		.4byte	.LBB56
 6185 0084 70000000 		.4byte	.LBE56
 6186 0088 74000000 		.4byte	.LBB59
 6187 008c 7E000000 		.4byte	.LBE59
 6188 0090 00000000 		.4byte	0
 6189 0094 00000000 		.4byte	0
 6190 0098 02000000 		.4byte	.LBB60
 6191 009c 06000000 		.4byte	.LBE60
 6192 00a0 12000000 		.4byte	.LBB67
 6193 00a4 14000000 		.4byte	.LBE67
 6194 00a8 1E000000 		.4byte	.LBB69
 6195 00ac 24000000 		.4byte	.LBE69
 6196 00b0 00000000 		.4byte	0
 6197 00b4 00000000 		.4byte	0
 6198 00b8 10000000 		.4byte	.LBB64
 6199 00bc 12000000 		.4byte	.LBE64
 6200 00c0 18000000 		.4byte	.LBB68
 6201 00c4 1C000000 		.4byte	.LBE68
 6202 00c8 00000000 		.4byte	0
 6203 00cc 00000000 		.4byte	0
 6204 00d0 00000000 		.4byte	.LFB167
 6205 00d4 0E000000 		.4byte	.LFE167
 6206 00d8 00000000 		.4byte	.LFB168
 6207 00dc 06000000 		.4byte	.LFE168
 6208 00e0 00000000 		.4byte	.LFB170
 6209 00e4 C0000000 		.4byte	.LFE170
 6210 00e8 00000000 		.4byte	.LFB169
 6211 00ec 30000000 		.4byte	.LFE169
 6212 00f0 00000000 		.4byte	.LFB173
 6213 00f4 9C000000 		.4byte	.LFE173
ARM GAS  /tmp/ccsh7mrZ.s 			page 127


 6214 00f8 00000000 		.4byte	.LFB174
 6215 00fc 82000000 		.4byte	.LFE174
 6216 0100 00000000 		.4byte	.LFB171
 6217 0104 26000000 		.4byte	.LFE171
 6218 0108 00000000 		.4byte	.LFB175
 6219 010c 04000000 		.4byte	.LFE175
 6220 0110 00000000 		.4byte	.LFB176
 6221 0114 06000000 		.4byte	.LFE176
 6222 0118 00000000 		.4byte	.LFB177
 6223 011c 04000000 		.4byte	.LFE177
 6224 0120 00000000 		.4byte	.LFB178
 6225 0124 04000000 		.4byte	.LFE178
 6226 0128 00000000 		.4byte	.LFB179
 6227 012c 06000000 		.4byte	.LFE179
 6228 0130 00000000 		.4byte	.LFB180
 6229 0134 04000000 		.4byte	.LFE180
 6230 0138 00000000 		.4byte	.LFB181
 6231 013c 0E000000 		.4byte	.LFE181
 6232 0140 00000000 		.4byte	.LFB182
 6233 0144 06000000 		.4byte	.LFE182
 6234 0148 00000000 		.4byte	.LFB183
 6235 014c 28000000 		.4byte	.LFE183
 6236 0150 00000000 		.4byte	.LFB184
 6237 0154 0A000000 		.4byte	.LFE184
 6238 0158 00000000 		.4byte	.LFB185
 6239 015c 3A000000 		.4byte	.LFE185
 6240 0160 00000000 		.4byte	.LFB186
 6241 0164 38000000 		.4byte	.LFE186
 6242 0168 00000000 		.4byte	.LFB187
 6243 016c 08000000 		.4byte	.LFE187
 6244 0170 00000000 		.4byte	.LFB188
 6245 0174 1C000000 		.4byte	.LFE188
 6246 0178 00000000 		.4byte	.LFB189
 6247 017c 08000000 		.4byte	.LFE189
 6248 0180 00000000 		.4byte	.LFB190
 6249 0184 04000000 		.4byte	.LFE190
 6250 0188 00000000 		.4byte	.LFB191
 6251 018c 04000000 		.4byte	.LFE191
 6252 0190 00000000 		.4byte	.LFB192
 6253 0194 0E000000 		.4byte	.LFE192
 6254 0198 00000000 		.4byte	.LFB193
 6255 019c 38000000 		.4byte	.LFE193
 6256 01a0 00000000 		.4byte	0
 6257 01a4 00000000 		.4byte	0
 6258              		.section	.debug_line,"",%progbits
 6259              	.Ldebug_line0:
 6260 0000 9F050000 		.section	.debug_str,"MS",%progbits,1
 6260      02006602 
 6260      00000201 
 6260      FB0E0D00 
 6260      01010101 
 6261              	.LASF189:
 6262 0000 74776968 		.ascii	"twihs_slave_write\000"
 6262      735F736C 
 6262      6176655F 
 6262      77726974 
 6262      6500
ARM GAS  /tmp/ccsh7mrZ.s 			page 128


 6263              	.LASF202:
 6264 0012 74776968 		.ascii	"twihs_disable_interrupt\000"
 6264      735F6469 
 6264      7361626C 
 6264      655F696E 
 6264      74657272 
 6265              	.LASF19:
 6266 002a 54574948 		.ascii	"TWIHS_MMR\000"
 6266      535F4D4D 
 6266      5200
 6267              	.LASF120:
 6268 0034 5F72616E 		.ascii	"_rand48\000"
 6268      64343800 
 6269              	.LASF180:
 6270 003c 74776968 		.ascii	"twihs_set_filter\000"
 6270      735F7365 
 6270      745F6669 
 6270      6C746572 
 6270      00
 6271              	.LASF99:
 6272 004d 5F656D65 		.ascii	"_emergency\000"
 6272      7267656E 
 6272      637900
 6273              	.LASF5:
 6274 0058 5F5F7569 		.ascii	"__uint8_t\000"
 6274      6E74385F 
 6274      7400
 6275              	.LASF136:
 6276 0062 5F676574 		.ascii	"_getdate_err\000"
 6276      64617465 
 6276      5F657272 
 6276      00
 6277              	.LASF89:
 6278 006f 5F646174 		.ascii	"_data\000"
 6278      6100
 6279              	.LASF38:
 6280 0075 54776968 		.ascii	"Twihs\000"
 6280      7300
 6281              	.LASF140:
 6282 007b 5F776372 		.ascii	"_wcrtomb_state\000"
 6282      746F6D62 
 6282      5F737461 
 6282      746500
 6283              	.LASF141:
 6284 008a 5F776373 		.ascii	"_wcsrtombs_state\000"
 6284      72746F6D 
 6284      62735F73 
 6284      74617465 
 6284      00
 6285              	.LASF181:
 6286 009b 756C5F66 		.ascii	"ul_filter\000"
 6286      696C7465 
 6286      7200
 6287              	.LASF79:
 6288 00a5 5F6C6266 		.ascii	"_lbfsize\000"
 6288      73697A65 
 6288      00
ARM GAS  /tmp/ccsh7mrZ.s 			page 129


 6289              	.LASF162:
 6290 00ae 61646472 		.ascii	"addr\000"
 6290      00
 6291              	.LASF211:
 6292 00b3 64617461 		.ascii	"data\000"
 6292      00
 6293              	.LASF29:
 6294 00b8 54574948 		.ascii	"TWIHS_THR\000"
 6294      535F5448 
 6294      5200
 6295              	.LASF179:
 6296 00c2 756C5F6D 		.ascii	"ul_mask\000"
 6296      61736B00 
 6297              	.LASF16:
 6298 00ca 49544D5F 		.ascii	"ITM_RxBuffer\000"
 6298      52784275 
 6298      66666572 
 6298      00
 6299              	.LASF138:
 6300 00d7 5F6D6272 		.ascii	"_mbrtowc_state\000"
 6300      746F7763 
 6300      5F737461 
 6300      746500
 6301              	.LASF156:
 6302 00e6 6D617374 		.ascii	"master_clk\000"
 6302      65725F63 
 6302      6C6B00
 6303              	.LASF198:
 6304 00f1 75635F62 		.ascii	"uc_byte\000"
 6304      79746500 
 6305              	.LASF133:
 6306 00f9 5F776374 		.ascii	"_wctomb_state\000"
 6306      6F6D625F 
 6306      73746174 
 6306      6500
 6307              	.LASF56:
 6308 0107 5F5F746D 		.ascii	"__tm_sec\000"
 6308      5F736563 
 6308      00
 6309              	.LASF214:
 6310 0110 756C5F73 		.ascii	"ul_speed\000"
 6310      70656564 
 6310      00
 6311              	.LASF84:
 6312 0119 5F636C6F 		.ascii	"_close\000"
 6312      736500
 6313              	.LASF1:
 6314 0120 7369676E 		.ascii	"signed char\000"
 6314      65642063 
 6314      68617200 
 6315              	.LASF227:
 6316 012c 74776968 		.ascii	"twihs_mk_addr\000"
 6316      735F6D6B 
 6316      5F616464 
 6316      7200
 6317              	.LASF85:
 6318 013a 5F756275 		.ascii	"_ubuf\000"
ARM GAS  /tmp/ccsh7mrZ.s 			page 130


 6318      6600
 6319              	.LASF74:
 6320 0140 5F626173 		.ascii	"_base\000"
 6320      6500
 6321              	.LASF23:
 6322 0146 52657365 		.ascii	"Reserved1\000"
 6322      72766564 
 6322      3100
 6323              	.LASF222:
 6324 0150 74776968 		.ascii	"twihs_disable_master_mode\000"
 6324      735F6469 
 6324      7361626C 
 6324      655F6D61 
 6324      73746572 
 6325              	.LASF58:
 6326 016a 5F5F746D 		.ascii	"__tm_hour\000"
 6326      5F686F75 
 6326      7200
 6327              	.LASF35:
 6328 0174 52657365 		.ascii	"Reserved4\000"
 6328      72766564 
 6328      3400
 6329              	.LASF114:
 6330 017e 5F5F7366 		.ascii	"__sf\000"
 6330      00
 6331              	.LASF65:
 6332 0183 5F6F6E5F 		.ascii	"_on_exit_args\000"
 6332      65786974 
 6332      5F617267 
 6332      7300
 6333              	.LASF80:
 6334 0191 5F636F6F 		.ascii	"_cookie\000"
 6334      6B696500 
 6335              	.LASF113:
 6336 0199 5F5F7367 		.ascii	"__sglue\000"
 6336      6C756500 
 6337              	.LASF219:
 6338 01a1 63686469 		.ascii	"chdiv\000"
 6338      7600
 6339              	.LASF7:
 6340 01a7 6C6F6E67 		.ascii	"long int\000"
 6340      20696E74 
 6340      00
 6341              	.LASF174:
 6342 01b0 756C5F6D 		.ascii	"ul_matching_data\000"
 6342      61746368 
 6342      696E675F 
 6342      64617461 
 6342      00
 6343              	.LASF77:
 6344 01c1 5F666C61 		.ascii	"_flags\000"
 6344      677300
 6345              	.LASF69:
 6346 01c8 5F69735F 		.ascii	"_is_cxa\000"
 6346      63786100 
 6347              	.LASF53:
 6348 01d0 5F776473 		.ascii	"_wds\000"
ARM GAS  /tmp/ccsh7mrZ.s 			page 131


 6348      00
 6349              	.LASF116:
 6350 01d5 5F5F4649 		.ascii	"__FILE\000"
 6350      4C4500
 6351              	.LASF105:
 6352 01dc 5F726573 		.ascii	"_result_k\000"
 6352      756C745F 
 6352      6B00
 6353              	.LASF10:
 6354 01e6 6C6F6E67 		.ascii	"long long int\000"
 6354      206C6F6E 
 6354      6720696E 
 6354      7400
 6355              	.LASF26:
 6356 01f4 54574948 		.ascii	"TWIHS_IDR\000"
 6356      535F4944 
 6356      5200
 6357              	.LASF154:
 6358 01fe 646F7562 		.ascii	"double\000"
 6358      6C6500
 6359              	.LASF196:
 6360 0205 74776968 		.ascii	"twihs_enable_slave_mode\000"
 6360      735F656E 
 6360      61626C65 
 6360      5F736C61 
 6360      76655F6D 
 6361              	.LASF208:
 6362 021d 74776968 		.ascii	"twihs_probe\000"
 6362      735F7072 
 6362      6F626500 
 6363              	.LASF170:
 6364 0229 756C5F6D 		.ascii	"ul_matching_addr2\000"
 6364      61746368 
 6364      696E675F 
 6364      61646472 
 6364      3200
 6365              	.LASF109:
 6366 023b 5F637674 		.ascii	"_cvtbuf\000"
 6366      62756600 
 6367              	.LASF139:
 6368 0243 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 6368      72746F77 
 6368      63735F73 
 6368      74617465 
 6368      00
 6369              	.LASF125:
 6370 0254 5F737472 		.ascii	"_strtok_last\000"
 6370      746F6B5F 
 6370      6C617374 
 6370      00
 6371              	.LASF137:
 6372 0261 5F6D6272 		.ascii	"_mbrlen_state\000"
 6372      6C656E5F 
 6372      73746174 
 6372      6500
 6373              	.LASF66:
 6374 026f 5F666E61 		.ascii	"_fnargs\000"
ARM GAS  /tmp/ccsh7mrZ.s 			page 132


 6374      72677300 
 6375              	.LASF200:
 6376 0277 74776968 		.ascii	"twihs_get_interrupt_mask\000"
 6376      735F6765 
 6376      745F696E 
 6376      74657272 
 6376      7570745F 
 6377              	.LASF197:
 6378 0290 74776968 		.ascii	"twihs_write_byte\000"
 6378      735F7772 
 6378      6974655F 
 6378      62797465 
 6378      00
 6379              	.LASF8:
 6380 02a1 5F5F7569 		.ascii	"__uint32_t\000"
 6380      6E743332 
 6380      5F7400
 6381              	.LASF221:
 6382 02ac 705F6F70 		.ascii	"p_opt\000"
 6382      7400
 6383              	.LASF146:
 6384 02b2 5F696D70 		.ascii	"_impure_ptr\000"
 6384      7572655F 
 6384      70747200 
 6385              	.LASF97:
 6386 02be 5F737464 		.ascii	"_stderr\000"
 6386      65727200 
 6387              	.LASF54:
 6388 02c6 5F426967 		.ascii	"_Bigint\000"
 6388      696E7400 
 6389              	.LASF128:
 6390 02ce 5F67616D 		.ascii	"_gamma_signgam\000"
 6390      6D615F73 
 6390      69676E67 
 6390      616D00
 6391              	.LASF205:
 6392 02dd 705F7061 		.ascii	"p_packet\000"
 6392      636B6574 
 6392      00
 6393              	.LASF87:
 6394 02e6 5F626C6B 		.ascii	"_blksize\000"
 6394      73697A65 
 6394      00
 6395              	.LASF37:
 6396 02ef 54574948 		.ascii	"TWIHS_WPSR\000"
 6396      535F5750 
 6396      535200
 6397              	.LASF176:
 6398 02fa 74656D70 		.ascii	"temp\000"
 6398      00
 6399              	.LASF55:
 6400 02ff 5F5F746D 		.ascii	"__tm\000"
 6400      00
 6401              	.LASF91:
 6402 0304 5F6D6273 		.ascii	"_mbstate\000"
 6402      74617465 
 6402      00
ARM GAS  /tmp/ccsh7mrZ.s 			page 133


 6403              	.LASF44:
 6404 030d 5F5F7763 		.ascii	"__wchb\000"
 6404      686200
 6405              	.LASF17:
 6406 0314 53797374 		.ascii	"SystemCoreClock\000"
 6406      656D436F 
 6406      7265436C 
 6406      6F636B00 
 6407              	.LASF108:
 6408 0324 5F637674 		.ascii	"_cvtlen\000"
 6408      6C656E00 
 6409              	.LASF183:
 6410 032c 756C5F74 		.ascii	"ul_timing\000"
 6410      696D696E 
 6410      6700
 6411              	.LASF9:
 6412 0336 6C6F6E67 		.ascii	"long unsigned int\000"
 6412      20756E73 
 6412      69676E65 
 6412      6420696E 
 6412      7400
 6413              	.LASF78:
 6414 0348 5F66696C 		.ascii	"_file\000"
 6414      6500
 6415              	.LASF207:
 6416 034e 74696D65 		.ascii	"timeout\000"
 6416      6F757400 
 6417              	.LASF206:
 6418 0356 74776968 		.ascii	"twihs_master_read\000"
 6418      735F6D61 
 6418      73746572 
 6418      5F726561 
 6418      6400
 6419              	.LASF76:
 6420 0368 5F5F7346 		.ascii	"__sFILE\000"
 6420      494C4500 
 6421              	.LASF31:
 6422 0370 52657365 		.ascii	"Reserved2\000"
 6422      72766564 
 6422      3200
 6423              	.LASF30:
 6424 037a 54574948 		.ascii	"TWIHS_SMBTR\000"
 6424      535F534D 
 6424      42545200 
 6425              	.LASF33:
 6426 0386 52657365 		.ascii	"Reserved3\000"
 6426      72766564 
 6426      3300
 6427              	.LASF118:
 6428 0390 5F6E696F 		.ascii	"_niobs\000"
 6428      627300
 6429              	.LASF159:
 6430 0397 736D6275 		.ascii	"smbus\000"
 6430      7300
 6431              	.LASF11:
 6432 039d 6C6F6E67 		.ascii	"long long unsigned int\000"
 6432      206C6F6E 
ARM GAS  /tmp/ccsh7mrZ.s 			page 134


 6432      6720756E 
 6432      7369676E 
 6432      65642069 
 6433              	.LASF212:
 6434 03b4 74776968 		.ascii	"twihs_master_write\000"
 6434      735F6D61 
 6434      73746572 
 6434      5F777269 
 6434      746500
 6435              	.LASF4:
 6436 03c7 73686F72 		.ascii	"short unsigned int\000"
 6436      7420756E 
 6436      7369676E 
 6436      65642069 
 6436      6E7400
 6437              	.LASF111:
 6438 03da 5F617465 		.ascii	"_atexit0\000"
 6438      78697430 
 6438      00
 6439              	.LASF135:
 6440 03e3 5F736967 		.ascii	"_signal_buf\000"
 6440      6E616C5F 
 6440      62756600 
 6441              	.LASF126:
 6442 03ef 5F617363 		.ascii	"_asctime_buf\000"
 6442      74696D65 
 6442      5F627566 
 6442      00
 6443              	.LASF161:
 6444 03fc 74776968 		.ascii	"twihs_packet\000"
 6444      735F7061 
 6444      636B6574 
 6444      00
 6445              	.LASF104:
 6446 0409 5F726573 		.ascii	"_result\000"
 6446      756C7400 
 6447              	.LASF43:
 6448 0411 5F5F7763 		.ascii	"__wch\000"
 6448      6800
 6449              	.LASF143:
 6450 0417 5F6E6578 		.ascii	"_nextf\000"
 6450      746600
 6451              	.LASF186:
 6452 041e 74776968 		.ascii	"twihs_set_write_protection\000"
 6452      735F7365 
 6452      745F7772 
 6452      6974655F 
 6452      70726F74 
 6453              	.LASF42:
 6454 0439 77696E74 		.ascii	"wint_t\000"
 6454      5F7400
 6455              	.LASF90:
 6456 0440 5F6C6F63 		.ascii	"_lock\000"
 6456      6B00
 6457              	.LASF160:
 6458 0446 74776968 		.ascii	"twihs_options_t\000"
 6458      735F6F70 
ARM GAS  /tmp/ccsh7mrZ.s 			page 135


 6458      74696F6E 
 6458      735F7400 
 6459              	.LASF122:
 6460 0456 5F6D756C 		.ascii	"_mult\000"
 6460      7400
 6461              	.LASF6:
 6462 045c 5F5F696E 		.ascii	"__int32_t\000"
 6462      7433325F 
 6462      7400
 6463              	.LASF18:
 6464 0466 54574948 		.ascii	"TWIHS_CR\000"
 6464      535F4352 
 6464      00
 6465              	.LASF223:
 6466 046f 74776968 		.ascii	"twihs_enable_master_mode\000"
 6466      735F656E 
 6466      61626C65 
 6466      5F6D6173 
 6466      7465725F 
 6467              	.LASF28:
 6468 0488 54574948 		.ascii	"TWIHS_RHR\000"
 6468      535F5248 
 6468      5200
 6469              	.LASF82:
 6470 0492 5F777269 		.ascii	"_write\000"
 6470      746500
 6471              	.LASF61:
 6472 0499 5F5F746D 		.ascii	"__tm_year\000"
 6472      5F796561 
 6472      7200
 6473              	.LASF217:
 6474 04a3 635F6C68 		.ascii	"c_lh_div\000"
 6474      5F646976 
 6474      00
 6475              	.LASF124:
 6476 04ac 5F756E75 		.ascii	"_unused_rand\000"
 6476      7365645F 
 6476      72616E64 
 6476      00
 6477              	.LASF152:
 6478 04b9 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 6478      6972715F 
 6478      70726576 
 6478      5F696E74 
 6478      65727275 
 6479              	.LASF49:
 6480 04d6 5F5F554C 		.ascii	"__ULong\000"
 6480      6F6E6700 
 6481              	.LASF25:
 6482 04de 54574948 		.ascii	"TWIHS_IER\000"
 6482      535F4945 
 6482      5200
 6483              	.LASF15:
 6484 04e8 73697A65 		.ascii	"sizetype\000"
 6484      74797065 
 6484      00
 6485              	.LASF88:
ARM GAS  /tmp/ccsh7mrZ.s 			page 136


 6486 04f1 5F6F6666 		.ascii	"_offset\000"
 6486      73657400 
 6487              	.LASF163:
 6488 04f9 61646472 		.ascii	"addr_length\000"
 6488      5F6C656E 
 6488      67746800 
 6489              	.LASF173:
 6490 0505 666C6167 		.ascii	"flag3\000"
 6490      3300
 6491              	.LASF213:
 6492 050b 74776968 		.ascii	"twihs_set_speed\000"
 6492      735F7365 
 6492      745F7370 
 6492      65656400 
 6493              	.LASF72:
 6494 051b 5F666E73 		.ascii	"_fns\000"
 6494      00
 6495              	.LASF199:
 6496 0520 74776968 		.ascii	"twihs_read_byte\000"
 6496      735F7265 
 6496      61645F62 
 6496      79746500 
 6497              	.LASF224:
 6498 0530 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 6498      43393920 
 6498      362E332E 
 6498      31203230 
 6498      31373036 
 6499 0563 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 6499      76352D64 
 6499      3136202D 
 6499      6D666C6F 
 6499      61742D61 
 6500 0596 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 6500      6E2D7365 
 6500      6374696F 
 6500      6E73202D 
 6500      66646174 
 6501 05c9 6F6E7374 		.ascii	"onstant\000"
 6501      616E7400 
 6502              	.LASF48:
 6503 05d1 5F666C6F 		.ascii	"_flock_t\000"
 6503      636B5F74 
 6503      00
 6504              	.LASF60:
 6505 05da 5F5F746D 		.ascii	"__tm_mon\000"
 6505      5F6D6F6E 
 6505      00
 6506              	.LASF70:
 6507 05e3 5F617465 		.ascii	"_atexit\000"
 6507      78697400 
 6508              	.LASF148:
 6509 05eb 7375626F 		.ascii	"suboptarg\000"
 6509      70746172 
 6509      6700
 6510              	.LASF210:
 6511 05f5 7061636B 		.ascii	"packet\000"
ARM GAS  /tmp/ccsh7mrZ.s 			page 137


 6511      657400
 6512              	.LASF40:
 6513 05fc 5F6F6666 		.ascii	"_off_t\000"
 6513      5F7400
 6514              	.LASF166:
 6515 0603 74776968 		.ascii	"twihs_packet_t\000"
 6515      735F7061 
 6515      636B6574 
 6515      5F7400
 6516              	.LASF21:
 6517 0612 54574948 		.ascii	"TWIHS_IADR\000"
 6517      535F4941 
 6517      445200
 6518              	.LASF153:
 6519 061d 666C6F61 		.ascii	"float\000"
 6519      7400
 6520              	.LASF184:
 6521 0623 74776968 		.ascii	"twihs_read_write_protection_status\000"
 6521      735F7265 
 6521      61645F77 
 6521      72697465 
 6521      5F70726F 
 6522              	.LASF149:
 6523 0646 675F696E 		.ascii	"g_interrupt_enabled\000"
 6523      74657272 
 6523      7570745F 
 6523      656E6162 
 6523      6C656400 
 6524              	.LASF204:
 6525 065a 74776968 		.ascii	"twihs_enable_interrupt\000"
 6525      735F656E 
 6525      61626C65 
 6525      5F696E74 
 6525      65727275 
 6526              	.LASF185:
 6527 0671 705F7374 		.ascii	"p_status\000"
 6527      61747573 
 6527      00
 6528              	.LASF39:
 6529 067a 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 6529      4B5F5245 
 6529      43555253 
 6529      4956455F 
 6529      5400
 6530              	.LASF81:
 6531 068c 5F726561 		.ascii	"_read\000"
 6531      6400
 6532              	.LASF177:
 6533 0692 74776968 		.ascii	"twihs_set_sleepwalking\000"
 6533      735F7365 
 6533      745F736C 
 6533      65657077 
 6533      616C6B69 
 6534              	.LASF195:
 6535 06a9 74776968 		.ascii	"twihs_reset\000"
 6535      735F7265 
 6535      73657400 
ARM GAS  /tmp/ccsh7mrZ.s 			page 138


 6536              	.LASF201:
 6537 06b5 74776968 		.ascii	"twihs_get_interrupt_status\000"
 6537      735F6765 
 6537      745F696E 
 6537      74657272 
 6537      7570745F 
 6538              	.LASF150:
 6539 06d0 5F426F6F 		.ascii	"_Bool\000"
 6539      6C00
 6540              	.LASF13:
 6541 06d6 696E7433 		.ascii	"int32_t\000"
 6541      325F7400 
 6542              	.LASF67:
 6543 06de 5F64736F 		.ascii	"_dso_handle\000"
 6543      5F68616E 
 6543      646C6500 
 6544              	.LASF110:
 6545 06ea 5F6E6577 		.ascii	"_new\000"
 6545      00
 6546              	.LASF22:
 6547 06ef 54574948 		.ascii	"TWIHS_CWGR\000"
 6547      535F4357 
 6547      475200
 6548              	.LASF194:
 6549 06fa 74776968 		.ascii	"twihs_disable_slave_mode\000"
 6549      735F6469 
 6549      7361626C 
 6549      655F736C 
 6549      6176655F 
 6550              	.LASF142:
 6551 0713 5F685F65 		.ascii	"_h_errno\000"
 6551      72726E6F 
 6551      00
 6552              	.LASF131:
 6553 071c 5F6D626C 		.ascii	"_mblen_state\000"
 6553      656E5F73 
 6553      74617465 
 6553      00
 6554              	.LASF63:
 6555 0729 5F5F746D 		.ascii	"__tm_yday\000"
 6555      5F796461 
 6555      7900
 6556              	.LASF73:
 6557 0733 5F5F7362 		.ascii	"__sbuf\000"
 6557      756600
 6558              	.LASF92:
 6559 073a 5F666C61 		.ascii	"_flags2\000"
 6559      67733200 
 6560              	.LASF107:
 6561 0742 5F667265 		.ascii	"_freelist\000"
 6561      656C6973 
 6561      7400
 6562              	.LASF216:
 6563 074c 636B6469 		.ascii	"ckdiv\000"
 6563      7600
 6564              	.LASF47:
 6565 0752 5F6D6273 		.ascii	"_mbstate_t\000"
ARM GAS  /tmp/ccsh7mrZ.s 			page 139


 6565      74617465 
 6565      5F7400
 6566              	.LASF175:
 6567 075d 666C6167 		.ascii	"flag\000"
 6567      00
 6568              	.LASF129:
 6569 0762 5F72616E 		.ascii	"_rand_next\000"
 6569      645F6E65 
 6569      787400
 6570              	.LASF34:
 6571 076d 54574948 		.ascii	"TWIHS_SWMR\000"
 6571      535F5357 
 6571      4D5200
 6572              	.LASF164:
 6573 0778 62756666 		.ascii	"buffer\000"
 6573      657200
 6574              	.LASF119:
 6575 077f 5F696F62 		.ascii	"_iobs\000"
 6575      7300
 6576              	.LASF98:
 6577 0785 5F696E63 		.ascii	"_inc\000"
 6577      00
 6578              	.LASF71:
 6579 078a 5F696E64 		.ascii	"_ind\000"
 6579      00
 6580              	.LASF101:
 6581 078f 5F637572 		.ascii	"_current_locale\000"
 6581      72656E74 
 6581      5F6C6F63 
 6581      616C6500 
 6582              	.LASF103:
 6583 079f 5F5F636C 		.ascii	"__cleanup\000"
 6583      65616E75 
 6583      7000
 6584              	.LASF51:
 6585 07a9 5F6D6178 		.ascii	"_maxwds\000"
 6585      77647300 
 6586              	.LASF93:
 6587 07b1 5F726565 		.ascii	"_reent\000"
 6587      6E7400
 6588              	.LASF121:
 6589 07b8 5F736565 		.ascii	"_seed\000"
 6589      6400
 6590              	.LASF45:
 6591 07be 5F5F636F 		.ascii	"__count\000"
 6591      756E7400 
 6592              	.LASF14:
 6593 07c6 75696E74 		.ascii	"uint32_t\000"
 6593      33325F74 
 6593      00
 6594              	.LASF83:
 6595 07cf 5F736565 		.ascii	"_seek\000"
 6595      6B00
 6596              	.LASF36:
 6597 07d5 54574948 		.ascii	"TWIHS_WPMR\000"
 6597      535F5750 
 6597      4D5200
ARM GAS  /tmp/ccsh7mrZ.s 			page 140


 6598              	.LASF41:
 6599 07e0 5F66706F 		.ascii	"_fpos_t\000"
 6599      735F7400 
 6600              	.LASF218:
 6601 07e8 636C6469 		.ascii	"cldiv\000"
 6601      7600
 6602              	.LASF27:
 6603 07ee 54574948 		.ascii	"TWIHS_IMR\000"
 6603      535F494D 
 6603      5200
 6604              	.LASF165:
 6605 07f8 6C656E67 		.ascii	"length\000"
 6605      746800
 6606              	.LASF94:
 6607 07ff 5F657272 		.ascii	"_errno\000"
 6607      6E6F00
 6608              	.LASF115:
 6609 0806 63686172 		.ascii	"char\000"
 6609      00
 6610              	.LASF225:
 6611 080b 2E2E2F61 		.ascii	"../asf/sam/drivers/twihs/twihs.c\000"
 6611      73662F73 
 6611      616D2F64 
 6611      72697665 
 6611      72732F74 
 6612              	.LASF75:
 6613 082c 5F73697A 		.ascii	"_size\000"
 6613      6500
 6614              	.LASF0:
 6615 0832 756E7369 		.ascii	"unsigned int\000"
 6615      676E6564 
 6615      20696E74 
 6615      00
 6616              	.LASF193:
 6617 083f 74776968 		.ascii	"twihs_slave_init\000"
 6617      735F736C 
 6617      6176655F 
 6617      696E6974 
 6617      00
 6618              	.LASF169:
 6619 0850 666C6167 		.ascii	"flag1\000"
 6619      3100
 6620              	.LASF171:
 6621 0856 666C6167 		.ascii	"flag2\000"
 6621      3200
 6622              	.LASF3:
 6623 085c 73686F72 		.ascii	"short int\000"
 6623      7420696E 
 6623      7400
 6624              	.LASF155:
 6625 0866 74776968 		.ascii	"twihs_options\000"
 6625      735F6F70 
 6625      74696F6E 
 6625      7300
 6626              	.LASF12:
 6627 0874 75696E74 		.ascii	"uint8_t\000"
 6627      385F7400 
ARM GAS  /tmp/ccsh7mrZ.s 			page 141


 6628              	.LASF52:
 6629 087c 5F736967 		.ascii	"_sign\000"
 6629      6E00
 6630              	.LASF50:
 6631 0882 5F6E6578 		.ascii	"_next\000"
 6631      7400
 6632              	.LASF158:
 6633 0888 63686970 		.ascii	"chip\000"
 6633      00
 6634              	.LASF220:
 6635 088d 74776968 		.ascii	"twihs_master_init\000"
 6635      735F6D61 
 6635      73746572 
 6635      5F696E69 
 6635      7400
 6636              	.LASF46:
 6637 089f 5F5F7661 		.ascii	"__value\000"
 6637      6C756500 
 6638              	.LASF68:
 6639 08a7 5F666E74 		.ascii	"_fntypes\000"
 6639      79706573 
 6639      00
 6640              	.LASF2:
 6641 08b0 756E7369 		.ascii	"unsigned char\000"
 6641      676E6564 
 6641      20636861 
 6641      7200
 6642              	.LASF57:
 6643 08be 5F5F746D 		.ascii	"__tm_min\000"
 6643      5F6D696E 
 6643      00
 6644              	.LASF32:
 6645 08c7 54574948 		.ascii	"TWIHS_FILTR\000"
 6645      535F4649 
 6645      4C545200 
 6646              	.LASF123:
 6647 08d3 5F616464 		.ascii	"_add\000"
 6647      00
 6648              	.LASF24:
 6649 08d8 54574948 		.ascii	"TWIHS_SR\000"
 6649      535F5352 
 6649      00
 6650              	.LASF147:
 6651 08e1 5F676C6F 		.ascii	"_global_impure_ptr\000"
 6651      62616C5F 
 6651      696D7075 
 6651      72655F70 
 6651      747200
 6652              	.LASF100:
 6653 08f4 5F637572 		.ascii	"_current_category\000"
 6653      72656E74 
 6653      5F636174 
 6653      65676F72 
 6653      7900
 6654              	.LASF190:
 6655 0906 74776968 		.ascii	"twihs_slave_read\000"
 6655      735F736C 
ARM GAS  /tmp/ccsh7mrZ.s 			page 142


 6655      6176655F 
 6655      72656164 
 6655      00
 6656              	.LASF192:
 6657 0917 756C5F64 		.ascii	"ul_device_addr\000"
 6657      65766963 
 6657      655F6164 
 6657      647200
 6658              	.LASF188:
 6659 0926 73746174 		.ascii	"status\000"
 6659      757300
 6660              	.LASF96:
 6661 092d 5F737464 		.ascii	"_stdout\000"
 6661      6F757400 
 6662              	.LASF62:
 6663 0935 5F5F746D 		.ascii	"__tm_wday\000"
 6663      5F776461 
 6663      7900
 6664              	.LASF117:
 6665 093f 5F676C75 		.ascii	"_glue\000"
 6665      6500
 6666              	.LASF95:
 6667 0945 5F737464 		.ascii	"_stdin\000"
 6667      696E00
 6668              	.LASF102:
 6669 094c 5F5F7364 		.ascii	"__sdidinit\000"
 6669      6964696E 
 6669      697400
 6670              	.LASF144:
 6671 0957 5F6E6D61 		.ascii	"_nmalloc\000"
 6671      6C6C6F63 
 6671      00
 6672              	.LASF134:
 6673 0960 5F6C3634 		.ascii	"_l64a_buf\000"
 6673      615F6275 
 6673      6600
 6674              	.LASF112:
 6675 096a 5F736967 		.ascii	"_sig_func\000"
 6675      5F66756E 
 6675      6300
 6676              	.LASF182:
 6677 0974 74776968 		.ascii	"twihs_smbus_set_timing\000"
 6677      735F736D 
 6677      6275735F 
 6677      7365745F 
 6677      74696D69 
 6678              	.LASF151:
 6679 098b 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 6679      6972715F 
 6679      63726974 
 6679      6963616C 
 6679      5F736563 
 6680              	.LASF178:
 6681 09ac 74776968 		.ascii	"twihs_mask_slave_addr\000"
 6681      735F6D61 
 6681      736B5F73 
 6681      6C617665 
ARM GAS  /tmp/ccsh7mrZ.s 			page 143


 6681      5F616464 
 6682              	.LASF86:
 6683 09c2 5F6E6275 		.ascii	"_nbuf\000"
 6683      6600
 6684              	.LASF145:
 6685 09c8 5F756E75 		.ascii	"_unused\000"
 6685      73656400 
 6686              	.LASF157:
 6687 09d0 73706565 		.ascii	"speed\000"
 6687      6400
 6688              	.LASF226:
 6689 09d6 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 6689      652F746F 
 6689      72626A6F 
 6689      726E2F65 
 6689      636C6970 
 6690 0a09 00       		.ascii	"\000"
 6691              	.LASF64:
 6692 0a0a 5F5F746D 		.ascii	"__tm_isdst\000"
 6692      5F697364 
 6692      737400
 6693              	.LASF127:
 6694 0a15 5F6C6F63 		.ascii	"_localtime_buf\000"
 6694      616C7469 
 6694      6D655F62 
 6694      756600
 6695              	.LASF187:
 6696 0a24 705F6461 		.ascii	"p_data\000"
 6696      746100
 6697              	.LASF20:
 6698 0a2b 54574948 		.ascii	"TWIHS_SMR\000"
 6698      535F534D 
 6698      5200
 6699              	.LASF130:
 6700 0a35 5F723438 		.ascii	"_r48\000"
 6700      00
 6701              	.LASF168:
 6702 0a3a 756C5F6D 		.ascii	"ul_matching_addr1\000"
 6702      61746368 
 6702      696E675F 
 6702      61646472 
 6702      3100
 6703              	.LASF203:
 6704 0a4c 756C5F73 		.ascii	"ul_sources\000"
 6704      6F757263 
 6704      657300
 6705              	.LASF172:
 6706 0a57 756C5F6D 		.ascii	"ul_matching_addr3\000"
 6706      61746368 
 6706      696E675F 
 6706      61646472 
 6706      3300
 6707              	.LASF215:
 6708 0a69 756C5F6D 		.ascii	"ul_mck\000"
 6708      636B00
 6709              	.LASF132:
 6710 0a70 5F6D6274 		.ascii	"_mbtowc_state\000"
ARM GAS  /tmp/ccsh7mrZ.s 			page 144


 6710      6F77635F 
 6710      73746174 
 6710      6500
 6711              	.LASF106:
 6712 0a7e 5F703573 		.ascii	"_p5s\000"
 6712      00
 6713              	.LASF167:
 6714 0a83 705F7477 		.ascii	"p_twihs\000"
 6714      69687300 
 6715              	.LASF59:
 6716 0a8b 5F5F746D 		.ascii	"__tm_mday\000"
 6716      5F6D6461 
 6716      7900
 6717              	.LASF209:
 6718 0a95 75635F73 		.ascii	"uc_slave_addr\000"
 6718      6C617665 
 6718      5F616464 
 6718      7200
 6719              	.LASF191:
 6720 0aa3 74776968 		.ascii	"twihs_set_slave_addr\000"
 6720      735F7365 
 6720      745F736C 
 6720      6176655F 
 6720      61646472 
 6721              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
