ARM GAS  /tmp/ccdF0JIt.s 			page 1


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
  12              		.file	"dacc.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.dacc_reset,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.global	dacc_reset
  20              		.syntax unified
  21              		.thumb
  22              		.thumb_func
  23              		.fpu fpv5-d16
  24              		.type	dacc_reset, %function
  25              	dacc_reset:
  26              	.LFB142:
  27              		.file 1 "../asf/sam/drivers/dacc/dacc.c"
   1:../asf/sam/drivers/dacc/dacc.c **** /**
   2:../asf/sam/drivers/dacc/dacc.c ****  * \file
   3:../asf/sam/drivers/dacc/dacc.c ****  *
   4:../asf/sam/drivers/dacc/dacc.c ****  * \brief Digital-to-Analog Converter Controller (DACC) driver for SAM.
   5:../asf/sam/drivers/dacc/dacc.c ****  *
   6:../asf/sam/drivers/dacc/dacc.c ****  * Copyright (c) 2011-2015 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/dacc/dacc.c ****  *
   8:../asf/sam/drivers/dacc/dacc.c ****  * \asf_license_start
   9:../asf/sam/drivers/dacc/dacc.c ****  *
  10:../asf/sam/drivers/dacc/dacc.c ****  * \page License
  11:../asf/sam/drivers/dacc/dacc.c ****  *
  12:../asf/sam/drivers/dacc/dacc.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/dacc/dacc.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/dacc/dacc.c ****  *
  15:../asf/sam/drivers/dacc/dacc.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/dacc/dacc.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/dacc/dacc.c ****  *
  18:../asf/sam/drivers/dacc/dacc.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/dacc/dacc.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/dacc/dacc.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/dacc/dacc.c ****  *
  22:../asf/sam/drivers/dacc/dacc.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/dacc/dacc.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/dacc/dacc.c ****  *
  25:../asf/sam/drivers/dacc/dacc.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/dacc/dacc.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/dacc/dacc.c ****  *
  28:../asf/sam/drivers/dacc/dacc.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/dacc/dacc.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/dacc/dacc.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
ARM GAS  /tmp/ccdF0JIt.s 			page 2


  31:../asf/sam/drivers/dacc/dacc.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/dacc/dacc.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/dacc/dacc.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/dacc/dacc.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/dacc/dacc.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/dacc/dacc.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/dacc/dacc.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/dacc/dacc.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/dacc/dacc.c ****  *
  40:../asf/sam/drivers/dacc/dacc.c ****  * \asf_license_stop
  41:../asf/sam/drivers/dacc/dacc.c ****  *
  42:../asf/sam/drivers/dacc/dacc.c ****  */
  43:../asf/sam/drivers/dacc/dacc.c **** /*
  44:../asf/sam/drivers/dacc/dacc.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/dacc/dacc.c ****  */
  46:../asf/sam/drivers/dacc/dacc.c **** 
  47:../asf/sam/drivers/dacc/dacc.c **** #include "dacc.h"
  48:../asf/sam/drivers/dacc/dacc.c **** 
  49:../asf/sam/drivers/dacc/dacc.c **** /// @cond 0
  50:../asf/sam/drivers/dacc/dacc.c **** /**INDENT-OFF**/
  51:../asf/sam/drivers/dacc/dacc.c **** #ifdef __cplusplus
  52:../asf/sam/drivers/dacc/dacc.c **** extern "C" {
  53:../asf/sam/drivers/dacc/dacc.c **** #endif
  54:../asf/sam/drivers/dacc/dacc.c **** /**INDENT-ON**/
  55:../asf/sam/drivers/dacc/dacc.c **** /// @endcond
  56:../asf/sam/drivers/dacc/dacc.c **** 
  57:../asf/sam/drivers/dacc/dacc.c **** /**
  58:../asf/sam/drivers/dacc/dacc.c ****  * \defgroup sam_drivers_dacc_group Digital-to-Analog Converter Controller (DACC)
  59:../asf/sam/drivers/dacc/dacc.c ****  *
  60:../asf/sam/drivers/dacc/dacc.c ****  * \par Purpose
  61:../asf/sam/drivers/dacc/dacc.c ****  *
  62:../asf/sam/drivers/dacc/dacc.c ****  * Driver for the Digital-to-Analog Converter Controller. It provides access to the main 
  63:../asf/sam/drivers/dacc/dacc.c ****  * features of the DAC controller.
  64:../asf/sam/drivers/dacc/dacc.c ****  *
  65:../asf/sam/drivers/dacc/dacc.c ****  * \par Usage
  66:../asf/sam/drivers/dacc/dacc.c ****  *
  67:../asf/sam/drivers/dacc/dacc.c ****  * -# DACC clock should be enabled before using it.
  68:../asf/sam/drivers/dacc/dacc.c ****  *    - \ref sysclk_enable_peripheral_clock() can be used to enable the clock.
  69:../asf/sam/drivers/dacc/dacc.c ****  * -# Reset DACC with \ref dacc_reset().
  70:../asf/sam/drivers/dacc/dacc.c ****  * -# If DACC can be enabled/disabled, uses \ref dacc_enable() and
  71:../asf/sam/drivers/dacc/dacc.c ****  *    \ref dacc_disable().
  72:../asf/sam/drivers/dacc/dacc.c ****  * -# Initialize DACC timing with \ref dacc_set_timing() (different DAC
  73:../asf/sam/drivers/dacc/dacc.c ****  *    peripheral may require different parameters).
  74:../asf/sam/drivers/dacc/dacc.c ****  * -# Write conversion data with \ref dacc_write_conversion_data().
  75:../asf/sam/drivers/dacc/dacc.c ****  * -# Configure trigger with \ref dacc_set_trigger()
  76:../asf/sam/drivers/dacc/dacc.c ****  *    and \ref dacc_disable_trigger().
  77:../asf/sam/drivers/dacc/dacc.c ****  * -# Configure FIFO transfer mode with \ref dacc_set_transfer_mode().
  78:../asf/sam/drivers/dacc/dacc.c ****  * -# Control interrupts with \ref dacc_enable_interrupt(),
  79:../asf/sam/drivers/dacc/dacc.c ****  *    \ref dacc_disable_interrupt(), \ref dacc_get_interrupt_mask() and
  80:../asf/sam/drivers/dacc/dacc.c ****  *    \ref dacc_get_interrupt_status().
  81:../asf/sam/drivers/dacc/dacc.c ****  * -# DACC registers support write protect with \ref dacc_set_writeprotect()
  82:../asf/sam/drivers/dacc/dacc.c ****  *    and \ref dacc_get_writeprotect_status().
  83:../asf/sam/drivers/dacc/dacc.c ****  * -# If the DACC can work with PDC, use \ref dacc_get_pdc_base() to get
  84:../asf/sam/drivers/dacc/dacc.c ****  *    PDC register base for the DAC controller.
  85:../asf/sam/drivers/dacc/dacc.c ****  * -# If the DACC has several channels to process, the following functions can
  86:../asf/sam/drivers/dacc/dacc.c ****  *    be used:
  87:../asf/sam/drivers/dacc/dacc.c ****  *    - Enable/Disable TAG and select output channel selection by
ARM GAS  /tmp/ccdF0JIt.s 			page 3


  88:../asf/sam/drivers/dacc/dacc.c ****  *      \ref dacc_set_channel_selection(),
  89:../asf/sam/drivers/dacc/dacc.c ****  *      \ref dacc_enable_flexible_channel_selection().
  90:../asf/sam/drivers/dacc/dacc.c ****  *    - Enable/disable channel by \ref dacc_enable_channel() /
  91:../asf/sam/drivers/dacc/dacc.c ****  *      \ref dacc_disable_channel(), get channel status by
  92:../asf/sam/drivers/dacc/dacc.c ****  *      \ref dacc_get_channel_status().
  93:../asf/sam/drivers/dacc/dacc.c ****  *
  94:../asf/sam/drivers/dacc/dacc.c ****  * \section dependencies Dependencies
  95:../asf/sam/drivers/dacc/dacc.c ****  * This driver does not depend on other modules.
  96:../asf/sam/drivers/dacc/dacc.c ****  *
  97:../asf/sam/drivers/dacc/dacc.c ****  * @{
  98:../asf/sam/drivers/dacc/dacc.c ****  */
  99:../asf/sam/drivers/dacc/dacc.c **** 
 100:../asf/sam/drivers/dacc/dacc.c **** //! Max channel number
 101:../asf/sam/drivers/dacc/dacc.c **** #if (SAM3N) || (SAM4L) || (SAM4N)
 102:../asf/sam/drivers/dacc/dacc.c **** # define MAX_CH_NB        0
 103:../asf/sam/drivers/dacc/dacc.c **** #else
 104:../asf/sam/drivers/dacc/dacc.c **** # define MAX_CH_NB        1
 105:../asf/sam/drivers/dacc/dacc.c **** #endif
 106:../asf/sam/drivers/dacc/dacc.c **** 
 107:../asf/sam/drivers/dacc/dacc.c **** //! DACC Write Protect Key "DAC" in ASCII
 108:../asf/sam/drivers/dacc/dacc.c **** #define DACC_WP_KEY     (0x444143)
 109:../asf/sam/drivers/dacc/dacc.c **** 
 110:../asf/sam/drivers/dacc/dacc.c **** #ifndef DACC_WPMR_WPKEY_PASSWD
 111:../asf/sam/drivers/dacc/dacc.c **** #  define DACC_WPMR_WPKEY_PASSWD DACC_WPMR_WPKEY(DACC_WP_KEY)
 112:../asf/sam/drivers/dacc/dacc.c **** #endif
 113:../asf/sam/drivers/dacc/dacc.c **** 
 114:../asf/sam/drivers/dacc/dacc.c **** /**
 115:../asf/sam/drivers/dacc/dacc.c ****  * \brief Reset DACC.
 116:../asf/sam/drivers/dacc/dacc.c ****  *
 117:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 118:../asf/sam/drivers/dacc/dacc.c ****  */
 119:../asf/sam/drivers/dacc/dacc.c **** void dacc_reset(Dacc *p_dacc)
 120:../asf/sam/drivers/dacc/dacc.c **** {
  28              		.loc 1 120 0
  29              		.cfi_startproc
  30              		@ args = 0, pretend = 0, frame = 0
  31              		@ frame_needed = 0, uses_anonymous_args = 0
  32              		@ link register save eliminated.
  33              	.LVL0:
 121:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_CR = DACC_CR_SWRST;
  34              		.loc 1 121 0
  35 0000 0123     		movs	r3, #1
  36 0002 0360     		str	r3, [r0]
  37 0004 7047     		bx	lr
  38              		.cfi_endproc
  39              	.LFE142:
  40              		.size	dacc_reset, .-dacc_reset
  41 0006 00BF     		.section	.text.dacc_set_trigger,"ax",%progbits
  42              		.align	1
  43              		.p2align 2,,3
  44              		.global	dacc_set_trigger
  45              		.syntax unified
  46              		.thumb
  47              		.thumb_func
  48              		.fpu fpv5-d16
  49              		.type	dacc_set_trigger, %function
  50              	dacc_set_trigger:
ARM GAS  /tmp/ccdF0JIt.s 			page 4


  51              	.LFB143:
 122:../asf/sam/drivers/dacc/dacc.c **** }
 123:../asf/sam/drivers/dacc/dacc.c **** 
 124:../asf/sam/drivers/dacc/dacc.c **** #if (SAMV70 || SAMV71 || SAME70 || SAMS70)
 125:../asf/sam/drivers/dacc/dacc.c **** /**
 126:../asf/sam/drivers/dacc/dacc.c ****  * \brief Enable trigger and set the trigger source.
 127:../asf/sam/drivers/dacc/dacc.c ****  *
 128:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 129:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_trigger Trigger source number.
 130:../asf/sam/drivers/dacc/dacc.c ****  * \param channel Channel to be set
 131:../asf/sam/drivers/dacc/dacc.c ****  *
 132:../asf/sam/drivers/dacc/dacc.c ****  * \return \ref DACC_RC_OK for OK.
 133:../asf/sam/drivers/dacc/dacc.c ****  */
 134:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_set_trigger(Dacc *p_dacc, uint32_t ul_trigger, uint32_t channel)
 135:../asf/sam/drivers/dacc/dacc.c **** {
  52              		.loc 1 135 0
  53              		.cfi_startproc
  54              		@ args = 0, pretend = 0, frame = 0
  55              		@ frame_needed = 0, uses_anonymous_args = 0
  56              		@ link register save eliminated.
  57              	.LVL1:
 136:../asf/sam/drivers/dacc/dacc.c **** 	if(channel == 0) {
  58              		.loc 1 136 0
  59 0000 7AB1     		cbz	r2, .L6
 137:../asf/sam/drivers/dacc/dacc.c **** 		uint32_t mr = p_dacc->DACC_TRIGR & (~(DACC_TRIGR_TRGSEL0_Msk));
 138:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_TRIGR = mr | DACC_TRIGR_TRGEN0_EN | DACC_TRIGR_TRGSEL0(ul_trigger);
 139:../asf/sam/drivers/dacc/dacc.c **** 	}else if(channel == 1) {
  60              		.loc 1 139 0
  61 0002 012A     		cmp	r2, #1
  62 0004 01D0     		beq	.L7
 140:../asf/sam/drivers/dacc/dacc.c **** 		uint32_t mr = p_dacc->DACC_TRIGR & (~(DACC_TRIGR_TRGSEL1_Msk));
 141:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_TRIGR = mr | DACC_TRIGR_TRGEN1_EN | DACC_TRIGR_TRGSEL1(ul_trigger);
 142:../asf/sam/drivers/dacc/dacc.c **** 		
 143:../asf/sam/drivers/dacc/dacc.c **** 	}
 144:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 145:../asf/sam/drivers/dacc/dacc.c **** }
  63              		.loc 1 145 0
  64 0006 0020     		movs	r0, #0
  65              	.LVL2:
  66 0008 7047     		bx	lr
  67              	.LVL3:
  68              	.L7:
  69              	.LBB2:
 141:../asf/sam/drivers/dacc/dacc.c **** 		
  70              		.loc 1 141 0
  71 000a 0B02     		lsls	r3, r1, #8
 140:../asf/sam/drivers/dacc/dacc.c **** 		uint32_t mr = p_dacc->DACC_TRIGR & (~(DACC_TRIGR_TRGSEL1_Msk));
  72              		.loc 1 140 0
  73 000c 8268     		ldr	r2, [r0, #8]
  74              	.LVL4:
 141:../asf/sam/drivers/dacc/dacc.c **** 		
  75              		.loc 1 141 0
  76 000e 03F4E063 		and	r3, r3, #1792
 140:../asf/sam/drivers/dacc/dacc.c **** 		uint32_t mr = p_dacc->DACC_TRIGR & (~(DACC_TRIGR_TRGSEL1_Msk));
  77              		.loc 1 140 0
  78 0012 22F4E062 		bic	r2, r2, #1792
  79              	.LVL5:
ARM GAS  /tmp/ccdF0JIt.s 			page 5


 141:../asf/sam/drivers/dacc/dacc.c **** 		
  80              		.loc 1 141 0
  81 0016 43F00203 		orr	r3, r3, #2
  82 001a 1343     		orrs	r3, r3, r2
  83 001c 8360     		str	r3, [r0, #8]
  84              	.LBE2:
  85              		.loc 1 145 0
  86 001e 0020     		movs	r0, #0
  87              	.LVL6:
  88 0020 7047     		bx	lr
  89              	.LVL7:
  90              	.L6:
  91              	.LBB3:
 138:../asf/sam/drivers/dacc/dacc.c **** 	}else if(channel == 1) {
  92              		.loc 1 138 0
  93 0022 0901     		lsls	r1, r1, #4
  94              	.LVL8:
 137:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_TRIGR = mr | DACC_TRIGR_TRGEN0_EN | DACC_TRIGR_TRGSEL0(ul_trigger);
  95              		.loc 1 137 0
  96 0024 8368     		ldr	r3, [r0, #8]
  97              	.LVL9:
 138:../asf/sam/drivers/dacc/dacc.c **** 	}else if(channel == 1) {
  98              		.loc 1 138 0
  99 0026 01F07001 		and	r1, r1, #112
 137:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_TRIGR = mr | DACC_TRIGR_TRGEN0_EN | DACC_TRIGR_TRGSEL0(ul_trigger);
 100              		.loc 1 137 0
 101 002a 23F07003 		bic	r3, r3, #112
 102              	.LVL10:
 138:../asf/sam/drivers/dacc/dacc.c **** 	}else if(channel == 1) {
 103              		.loc 1 138 0
 104 002e 41F00101 		orr	r1, r1, #1
 105 0032 1943     		orrs	r1, r1, r3
 106 0034 8160     		str	r1, [r0, #8]
 107              	.LBE3:
 108              		.loc 1 145 0
 109 0036 0020     		movs	r0, #0
 110              	.LVL11:
 111 0038 7047     		bx	lr
 112              		.cfi_endproc
 113              	.LFE143:
 114              		.size	dacc_set_trigger, .-dacc_set_trigger
 115 003a 00BF     		.section	.text.dacc_disable_trigger,"ax",%progbits
 116              		.align	1
 117              		.p2align 2,,3
 118              		.global	dacc_disable_trigger
 119              		.syntax unified
 120              		.thumb
 121              		.thumb_func
 122              		.fpu fpv5-d16
 123              		.type	dacc_disable_trigger, %function
 124              	dacc_disable_trigger:
 125              	.LFB144:
 146:../asf/sam/drivers/dacc/dacc.c **** #else
 147:../asf/sam/drivers/dacc/dacc.c **** /**
 148:../asf/sam/drivers/dacc/dacc.c ****  * \brief Enable trigger and set the trigger source.
 149:../asf/sam/drivers/dacc/dacc.c ****  *
 150:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
ARM GAS  /tmp/ccdF0JIt.s 			page 6


 151:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_trigger Trigger source number.
 152:../asf/sam/drivers/dacc/dacc.c ****  *
 153:../asf/sam/drivers/dacc/dacc.c ****  * \return \ref DACC_RC_OK for OK.
 154:../asf/sam/drivers/dacc/dacc.c ****  */
 155:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_set_trigger(Dacc *p_dacc, uint32_t ul_trigger)
 156:../asf/sam/drivers/dacc/dacc.c **** {
 157:../asf/sam/drivers/dacc/dacc.c **** 	uint32_t mr = p_dacc->DACC_MR & (~(DACC_MR_TRGSEL_Msk));
 158:../asf/sam/drivers/dacc/dacc.c **** #if (SAM3N) || (SAM4L) || (SAM4N)
 159:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_MR = mr
 160:../asf/sam/drivers/dacc/dacc.c **** 		| DACC_MR_TRGEN
 161:../asf/sam/drivers/dacc/dacc.c **** 		| ((ul_trigger << DACC_MR_TRGSEL_Pos) & DACC_MR_TRGSEL_Msk);
 162:../asf/sam/drivers/dacc/dacc.c **** #else
 163:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_MR = mr | DACC_MR_TRGEN_EN | DACC_MR_TRGSEL(ul_trigger);
 164:../asf/sam/drivers/dacc/dacc.c **** #endif
 165:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 166:../asf/sam/drivers/dacc/dacc.c **** }
 167:../asf/sam/drivers/dacc/dacc.c **** #endif
 168:../asf/sam/drivers/dacc/dacc.c **** 
 169:../asf/sam/drivers/dacc/dacc.c **** #if (SAMV70 || SAMV71 || SAME70 || SAMS70)
 170:../asf/sam/drivers/dacc/dacc.c **** /**
 171:../asf/sam/drivers/dacc/dacc.c ****  * \brief Disable trigger (free run mode).
 172:../asf/sam/drivers/dacc/dacc.c ****  *
 173:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance.
 174:../asf/sam/drivers/dacc/dacc.c ****  * \param channel Channel to be disabled 
 175:../asf/sam/drivers/dacc/dacc.c ****  */
 176:../asf/sam/drivers/dacc/dacc.c **** void dacc_disable_trigger(Dacc *p_dacc, uint32_t channel)
 177:../asf/sam/drivers/dacc/dacc.c **** {
 126              		.loc 1 177 0
 127              		.cfi_startproc
 128              		@ args = 0, pretend = 0, frame = 0
 129              		@ frame_needed = 0, uses_anonymous_args = 0
 130              		@ link register save eliminated.
 131              	.LVL12:
 178:../asf/sam/drivers/dacc/dacc.c **** 	if(channel == 0) {
 132              		.loc 1 178 0
 133 0000 39B1     		cbz	r1, .L11
 179:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_TRIGR &= ~(DACC_TRIGR_TRGEN0_EN);
 180:../asf/sam/drivers/dacc/dacc.c **** 	}else if(channel == 1) {
 134              		.loc 1 180 0
 135 0002 0129     		cmp	r1, #1
 136 0004 00D0     		beq	.L12
 137 0006 7047     		bx	lr
 138              	.L12:
 181:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_TRIGR &= ~(DACC_TRIGR_TRGEN1_EN);
 139              		.loc 1 181 0
 140 0008 8368     		ldr	r3, [r0, #8]
 141 000a 23F00203 		bic	r3, r3, #2
 142 000e 8360     		str	r3, [r0, #8]
 143 0010 7047     		bx	lr
 144              	.L11:
 179:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_TRIGR &= ~(DACC_TRIGR_TRGEN0_EN);
 145              		.loc 1 179 0
 146 0012 8368     		ldr	r3, [r0, #8]
 147 0014 23F00103 		bic	r3, r3, #1
 148 0018 8360     		str	r3, [r0, #8]
 149 001a 7047     		bx	lr
 150              		.cfi_endproc
ARM GAS  /tmp/ccdF0JIt.s 			page 7


 151              	.LFE144:
 152              		.size	dacc_disable_trigger, .-dacc_disable_trigger
 153              		.section	.text.dacc_set_transfer_mode,"ax",%progbits
 154              		.align	1
 155              		.p2align 2,,3
 156              		.global	dacc_set_transfer_mode
 157              		.syntax unified
 158              		.thumb
 159              		.thumb_func
 160              		.fpu fpv5-d16
 161              		.type	dacc_set_transfer_mode, %function
 162              	dacc_set_transfer_mode:
 163              	.LFB145:
 182:../asf/sam/drivers/dacc/dacc.c **** 	}
 183:../asf/sam/drivers/dacc/dacc.c **** }
 184:../asf/sam/drivers/dacc/dacc.c **** #else
 185:../asf/sam/drivers/dacc/dacc.c **** /**
 186:../asf/sam/drivers/dacc/dacc.c ****  * \brief Disable trigger (free run mode).
 187:../asf/sam/drivers/dacc/dacc.c ****  *
 188:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 189:../asf/sam/drivers/dacc/dacc.c ****  */
 190:../asf/sam/drivers/dacc/dacc.c **** void dacc_disable_trigger(Dacc *p_dacc)
 191:../asf/sam/drivers/dacc/dacc.c **** {
 192:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_MR &= ~DACC_MR_TRGEN;
 193:../asf/sam/drivers/dacc/dacc.c **** }
 194:../asf/sam/drivers/dacc/dacc.c **** #endif
 195:../asf/sam/drivers/dacc/dacc.c **** 
 196:../asf/sam/drivers/dacc/dacc.c **** /**
 197:../asf/sam/drivers/dacc/dacc.c ****  * \brief Set the transfer mode.
 198:../asf/sam/drivers/dacc/dacc.c ****  *
 199:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 200:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_mode Transfer mode configuration.
 201:../asf/sam/drivers/dacc/dacc.c ****  *
 202:../asf/sam/drivers/dacc/dacc.c ****  * \return \ref DACC_RC_OK for OK.
 203:../asf/sam/drivers/dacc/dacc.c ****  */
 204:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_set_transfer_mode(Dacc *p_dacc, uint32_t ul_mode)
 205:../asf/sam/drivers/dacc/dacc.c **** {
 164              		.loc 1 205 0
 165              		.cfi_startproc
 166              		@ args = 0, pretend = 0, frame = 0
 167              		@ frame_needed = 0, uses_anonymous_args = 0
 168              		@ link register save eliminated.
 169              	.LVL13:
 206:../asf/sam/drivers/dacc/dacc.c **** 	if (ul_mode) {
 207:../asf/sam/drivers/dacc/dacc.c **** #if (SAM3N) || (SAM4L) || (SAM4N)
 208:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_MR |= DACC_MR_WORD;
 209:../asf/sam/drivers/dacc/dacc.c **** #elif (SAM4S) || (SAM4E)
 210:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_MR |= DACC_MR_ONE;
 211:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_MR |= DACC_MR_WORD_WORD;
 212:../asf/sam/drivers/dacc/dacc.c **** #elif (SAMV70 || SAMV71 || SAME70 || SAMS70)
 213:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_MR = ul_mode;
 170              		.loc 1 213 0
 171 0000 4160     		str	r1, [r0, #4]
 214:../asf/sam/drivers/dacc/dacc.c **** #else
 215:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_MR |= DACC_MR_WORD_WORD;
 216:../asf/sam/drivers/dacc/dacc.c **** #endif
 217:../asf/sam/drivers/dacc/dacc.c **** 	} else {
ARM GAS  /tmp/ccdF0JIt.s 			page 8


 218:../asf/sam/drivers/dacc/dacc.c **** #if (SAM3N) || (SAM4L) || (SAM4N)
 219:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_MR &= (~DACC_MR_WORD);
 220:../asf/sam/drivers/dacc/dacc.c **** #elif (SAM4S) || (SAM4E)
 221:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_MR |= DACC_MR_ONE;
 222:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_MR &= (~DACC_MR_WORD_WORD);
 223:../asf/sam/drivers/dacc/dacc.c **** #elif (SAMV70 || SAMV71 || SAME70 || SAMS70)
 224:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_MR = ul_mode;
 225:../asf/sam/drivers/dacc/dacc.c **** #else
 226:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_MR &= (~DACC_MR_WORD_WORD);
 227:../asf/sam/drivers/dacc/dacc.c **** #endif
 228:../asf/sam/drivers/dacc/dacc.c **** 	}
 229:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 230:../asf/sam/drivers/dacc/dacc.c **** }
 172              		.loc 1 230 0
 173 0002 0020     		movs	r0, #0
 174              	.LVL14:
 175 0004 7047     		bx	lr
 176              		.cfi_endproc
 177              	.LFE145:
 178              		.size	dacc_set_transfer_mode, .-dacc_set_transfer_mode
 179 0006 00BF     		.section	.text.dacc_enable_interrupt,"ax",%progbits
 180              		.align	1
 181              		.p2align 2,,3
 182              		.global	dacc_enable_interrupt
 183              		.syntax unified
 184              		.thumb
 185              		.thumb_func
 186              		.fpu fpv5-d16
 187              		.type	dacc_enable_interrupt, %function
 188              	dacc_enable_interrupt:
 189              	.LFB146:
 231:../asf/sam/drivers/dacc/dacc.c **** 
 232:../asf/sam/drivers/dacc/dacc.c **** /**
 233:../asf/sam/drivers/dacc/dacc.c ****  * \brief Enable DACC interrupts.
 234:../asf/sam/drivers/dacc/dacc.c ****  *
 235:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 236:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_interrupt_mask The interrupt mask.
 237:../asf/sam/drivers/dacc/dacc.c ****  */
 238:../asf/sam/drivers/dacc/dacc.c **** void dacc_enable_interrupt(Dacc *p_dacc, uint32_t ul_interrupt_mask)
 239:../asf/sam/drivers/dacc/dacc.c **** {
 190              		.loc 1 239 0
 191              		.cfi_startproc
 192              		@ args = 0, pretend = 0, frame = 0
 193              		@ frame_needed = 0, uses_anonymous_args = 0
 194              		@ link register save eliminated.
 195              	.LVL15:
 240:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_IER = ul_interrupt_mask;
 196              		.loc 1 240 0
 197 0000 4162     		str	r1, [r0, #36]
 198 0002 7047     		bx	lr
 199              		.cfi_endproc
 200              	.LFE146:
 201              		.size	dacc_enable_interrupt, .-dacc_enable_interrupt
 202              		.section	.text.dacc_disable_interrupt,"ax",%progbits
 203              		.align	1
 204              		.p2align 2,,3
 205              		.global	dacc_disable_interrupt
ARM GAS  /tmp/ccdF0JIt.s 			page 9


 206              		.syntax unified
 207              		.thumb
 208              		.thumb_func
 209              		.fpu fpv5-d16
 210              		.type	dacc_disable_interrupt, %function
 211              	dacc_disable_interrupt:
 212              	.LFB147:
 241:../asf/sam/drivers/dacc/dacc.c **** }
 242:../asf/sam/drivers/dacc/dacc.c **** 
 243:../asf/sam/drivers/dacc/dacc.c **** /**
 244:../asf/sam/drivers/dacc/dacc.c ****  * \brief Disable DACC interrupts.
 245:../asf/sam/drivers/dacc/dacc.c ****  *
 246:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 247:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_interrupt_mask The interrupt mask.
 248:../asf/sam/drivers/dacc/dacc.c ****  */
 249:../asf/sam/drivers/dacc/dacc.c **** void dacc_disable_interrupt(Dacc *p_dacc, uint32_t ul_interrupt_mask)
 250:../asf/sam/drivers/dacc/dacc.c **** {
 213              		.loc 1 250 0
 214              		.cfi_startproc
 215              		@ args = 0, pretend = 0, frame = 0
 216              		@ frame_needed = 0, uses_anonymous_args = 0
 217              		@ link register save eliminated.
 218              	.LVL16:
 251:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_IDR = ul_interrupt_mask;
 219              		.loc 1 251 0
 220 0000 8162     		str	r1, [r0, #40]
 221 0002 7047     		bx	lr
 222              		.cfi_endproc
 223              	.LFE147:
 224              		.size	dacc_disable_interrupt, .-dacc_disable_interrupt
 225              		.section	.text.dacc_get_interrupt_mask,"ax",%progbits
 226              		.align	1
 227              		.p2align 2,,3
 228              		.global	dacc_get_interrupt_mask
 229              		.syntax unified
 230              		.thumb
 231              		.thumb_func
 232              		.fpu fpv5-d16
 233              		.type	dacc_get_interrupt_mask, %function
 234              	dacc_get_interrupt_mask:
 235              	.LFB148:
 252:../asf/sam/drivers/dacc/dacc.c **** }
 253:../asf/sam/drivers/dacc/dacc.c **** 
 254:../asf/sam/drivers/dacc/dacc.c **** /**
 255:../asf/sam/drivers/dacc/dacc.c ****  * \brief Get the interrupt mask.
 256:../asf/sam/drivers/dacc/dacc.c ****  *
 257:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 258:../asf/sam/drivers/dacc/dacc.c ****  *
 259:../asf/sam/drivers/dacc/dacc.c ****  * \return The interrupt mask.
 260:../asf/sam/drivers/dacc/dacc.c ****  */
 261:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_get_interrupt_mask(Dacc *p_dacc)
 262:../asf/sam/drivers/dacc/dacc.c **** {
 236              		.loc 1 262 0
 237              		.cfi_startproc
 238              		@ args = 0, pretend = 0, frame = 0
 239              		@ frame_needed = 0, uses_anonymous_args = 0
 240              		@ link register save eliminated.
ARM GAS  /tmp/ccdF0JIt.s 			page 10


 241              	.LVL17:
 263:../asf/sam/drivers/dacc/dacc.c **** 	return p_dacc->DACC_IMR;
 242              		.loc 1 263 0
 243 0000 C06A     		ldr	r0, [r0, #44]
 244              	.LVL18:
 264:../asf/sam/drivers/dacc/dacc.c **** }
 245              		.loc 1 264 0
 246 0002 7047     		bx	lr
 247              		.cfi_endproc
 248              	.LFE148:
 249              		.size	dacc_get_interrupt_mask, .-dacc_get_interrupt_mask
 250              		.section	.text.dacc_get_interrupt_status,"ax",%progbits
 251              		.align	1
 252              		.p2align 2,,3
 253              		.global	dacc_get_interrupt_status
 254              		.syntax unified
 255              		.thumb
 256              		.thumb_func
 257              		.fpu fpv5-d16
 258              		.type	dacc_get_interrupt_status, %function
 259              	dacc_get_interrupt_status:
 260              	.LFB149:
 265:../asf/sam/drivers/dacc/dacc.c **** 
 266:../asf/sam/drivers/dacc/dacc.c **** /**
 267:../asf/sam/drivers/dacc/dacc.c ****  * \brief Get the interrupt status.
 268:../asf/sam/drivers/dacc/dacc.c ****  *
 269:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 270:../asf/sam/drivers/dacc/dacc.c ****  *
 271:../asf/sam/drivers/dacc/dacc.c ****  * \return The interrupt status.
 272:../asf/sam/drivers/dacc/dacc.c ****  */
 273:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_get_interrupt_status(Dacc *p_dacc)
 274:../asf/sam/drivers/dacc/dacc.c **** {
 261              		.loc 1 274 0
 262              		.cfi_startproc
 263              		@ args = 0, pretend = 0, frame = 0
 264              		@ frame_needed = 0, uses_anonymous_args = 0
 265              		@ link register save eliminated.
 266              	.LVL19:
 275:../asf/sam/drivers/dacc/dacc.c **** 	return p_dacc->DACC_ISR;
 267              		.loc 1 275 0
 268 0000 006B     		ldr	r0, [r0, #48]
 269              	.LVL20:
 276:../asf/sam/drivers/dacc/dacc.c **** }
 270              		.loc 1 276 0
 271 0002 7047     		bx	lr
 272              		.cfi_endproc
 273              	.LFE149:
 274              		.size	dacc_get_interrupt_status, .-dacc_get_interrupt_status
 275              		.section	.text.dacc_write_conversion_data,"ax",%progbits
 276              		.align	1
 277              		.p2align 2,,3
 278              		.global	dacc_write_conversion_data
 279              		.syntax unified
 280              		.thumb
 281              		.thumb_func
 282              		.fpu fpv5-d16
 283              		.type	dacc_write_conversion_data, %function
ARM GAS  /tmp/ccdF0JIt.s 			page 11


 284              	dacc_write_conversion_data:
 285              	.LFB150:
 277:../asf/sam/drivers/dacc/dacc.c **** 
 278:../asf/sam/drivers/dacc/dacc.c **** #if (SAMV70 || SAMV71 || SAME70 || SAMS70)
 279:../asf/sam/drivers/dacc/dacc.c **** /**
 280:../asf/sam/drivers/dacc/dacc.c ****  * \brief Write data to conversion register.
 281:../asf/sam/drivers/dacc/dacc.c ****  *
 282:../asf/sam/drivers/dacc/dacc.c ****  * \note The \a ul_data could be output data or data with channel TAG when
 283:../asf/sam/drivers/dacc/dacc.c ****  * flexible mode is used.
 284:../asf/sam/drivers/dacc/dacc.c ****  *
 285:../asf/sam/drivers/dacc/dacc.c ****  * In flexible mode the 2 bits, DACC_CDR[13:12] which are otherwise unused,
 286:../asf/sam/drivers/dacc/dacc.c ****  * are employed to select the channel in the same way as with the USER_SEL
 287:../asf/sam/drivers/dacc/dacc.c ****  * field. Finally, if the WORD field is set, the 2 bits, DACC_CDR[13:12] are
 288:../asf/sam/drivers/dacc/dacc.c ****  * used for channel selection of the first data and the 2 bits,
 289:../asf/sam/drivers/dacc/dacc.c ****  * DACC_CDR[29:28] for channel selection of the second data.
 290:../asf/sam/drivers/dacc/dacc.c ****  *
 291:../asf/sam/drivers/dacc/dacc.c ****  * \see dacc_enable_flexible_selection()
 292:../asf/sam/drivers/dacc/dacc.c ****  *
 293:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 294:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_data The data to be transferred to analog value. 
 295:../asf/sam/drivers/dacc/dacc.c ****  * \param channel The channel to convert the data ul_data
 296:../asf/sam/drivers/dacc/dacc.c ****  */
 297:../asf/sam/drivers/dacc/dacc.c **** void dacc_write_conversion_data(Dacc *p_dacc, uint32_t ul_data, uint32_t channel)
 298:../asf/sam/drivers/dacc/dacc.c **** {
 286              		.loc 1 298 0
 287              		.cfi_startproc
 288              		@ args = 0, pretend = 0, frame = 0
 289              		@ frame_needed = 0, uses_anonymous_args = 0
 290              		@ link register save eliminated.
 291              	.LVL21:
 299:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_CDR[channel] = ul_data;
 292              		.loc 1 299 0
 293 0000 0632     		adds	r2, r2, #6
 294              	.LVL22:
 295 0002 00EB8202 		add	r2, r0, r2, lsl #2
 296              	.LVL23:
 297 0006 5160     		str	r1, [r2, #4]
 298 0008 7047     		bx	lr
 299              		.cfi_endproc
 300              	.LFE150:
 301              		.size	dacc_write_conversion_data, .-dacc_write_conversion_data
 302 000a 00BF     		.section	.text.dacc_set_writeprotect,"ax",%progbits
 303              		.align	1
 304              		.p2align 2,,3
 305              		.global	dacc_set_writeprotect
 306              		.syntax unified
 307              		.thumb
 308              		.thumb_func
 309              		.fpu fpv5-d16
 310              		.type	dacc_set_writeprotect, %function
 311              	dacc_set_writeprotect:
 312              	.LFB151:
 300:../asf/sam/drivers/dacc/dacc.c **** }
 301:../asf/sam/drivers/dacc/dacc.c **** #else
 302:../asf/sam/drivers/dacc/dacc.c **** /**
 303:../asf/sam/drivers/dacc/dacc.c ****  * \brief Write data to conversion register.
 304:../asf/sam/drivers/dacc/dacc.c ****  *
ARM GAS  /tmp/ccdF0JIt.s 			page 12


 305:../asf/sam/drivers/dacc/dacc.c ****  * \note The \a ul_data could be output data or data with channel TAG when
 306:../asf/sam/drivers/dacc/dacc.c ****  * flexible mode is used.
 307:../asf/sam/drivers/dacc/dacc.c ****  *
 308:../asf/sam/drivers/dacc/dacc.c ****  * In flexible mode the 2 bits, DACC_CDR[13:12] which are otherwise unused,
 309:../asf/sam/drivers/dacc/dacc.c ****  * are employed to select the channel in the same way as with the USER_SEL
 310:../asf/sam/drivers/dacc/dacc.c ****  * field. Finally, if the WORD field is set, the 2 bits, DACC_CDR[13:12] are
 311:../asf/sam/drivers/dacc/dacc.c ****  * used for channel selection of the first data and the 2 bits,
 312:../asf/sam/drivers/dacc/dacc.c ****  * DACC_CDR[29:28] for channel selection of the second data.
 313:../asf/sam/drivers/dacc/dacc.c ****  *
 314:../asf/sam/drivers/dacc/dacc.c ****  * \see dacc_enable_flexible_selection()
 315:../asf/sam/drivers/dacc/dacc.c ****  *
 316:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 317:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_data The data to be transferred to analog value.
 318:../asf/sam/drivers/dacc/dacc.c ****  */
 319:../asf/sam/drivers/dacc/dacc.c **** void dacc_write_conversion_data(Dacc *p_dacc, uint32_t ul_data)
 320:../asf/sam/drivers/dacc/dacc.c **** {
 321:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_CDR = ul_data;
 322:../asf/sam/drivers/dacc/dacc.c **** }
 323:../asf/sam/drivers/dacc/dacc.c **** #endif
 324:../asf/sam/drivers/dacc/dacc.c **** 
 325:../asf/sam/drivers/dacc/dacc.c **** /**
 326:../asf/sam/drivers/dacc/dacc.c ****  * \brief Enable or disable write protect of DACC registers.
 327:../asf/sam/drivers/dacc/dacc.c ****  *
 328:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 329:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_enable 1 to enable, 0 to disable.
 330:../asf/sam/drivers/dacc/dacc.c ****  */
 331:../asf/sam/drivers/dacc/dacc.c **** void dacc_set_writeprotect(Dacc *p_dacc, uint32_t ul_enable)
 332:../asf/sam/drivers/dacc/dacc.c **** {
 313              		.loc 1 332 0
 314              		.cfi_startproc
 315              		@ args = 0, pretend = 0, frame = 0
 316              		@ frame_needed = 0, uses_anonymous_args = 0
 317              		@ link register save eliminated.
 318              	.LVL24:
 333:../asf/sam/drivers/dacc/dacc.c **** 	if (ul_enable) {
 319              		.loc 1 333 0
 320 0000 19B9     		cbnz	r1, .L24
 334:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_WPMR = DACC_WPMR_WPKEY_PASSWD
 335:../asf/sam/drivers/dacc/dacc.c **** 			          | DACC_WPMR_WPEN;
 336:../asf/sam/drivers/dacc/dacc.c **** 	} else {
 337:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_WPMR = DACC_WPMR_WPKEY_PASSWD;
 321              		.loc 1 337 0
 322 0002 044B     		ldr	r3, .L25
 323 0004 C0F8E430 		str	r3, [r0, #228]
 324 0008 7047     		bx	lr
 325              	.L24:
 334:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_WPMR = DACC_WPMR_WPKEY_PASSWD
 326              		.loc 1 334 0
 327 000a 034B     		ldr	r3, .L25+4
 328 000c C0F8E430 		str	r3, [r0, #228]
 329 0010 7047     		bx	lr
 330              	.L26:
 331 0012 00BF     		.align	2
 332              	.L25:
 333 0014 00434144 		.word	1145127680
 334 0018 01434144 		.word	1145127681
 335              		.cfi_endproc
ARM GAS  /tmp/ccdF0JIt.s 			page 13


 336              	.LFE151:
 337              		.size	dacc_set_writeprotect, .-dacc_set_writeprotect
 338              		.section	.text.dacc_get_writeprotect_status,"ax",%progbits
 339              		.align	1
 340              		.p2align 2,,3
 341              		.global	dacc_get_writeprotect_status
 342              		.syntax unified
 343              		.thumb
 344              		.thumb_func
 345              		.fpu fpv5-d16
 346              		.type	dacc_get_writeprotect_status, %function
 347              	dacc_get_writeprotect_status:
 348              	.LFB152:
 338:../asf/sam/drivers/dacc/dacc.c **** 	}
 339:../asf/sam/drivers/dacc/dacc.c **** }
 340:../asf/sam/drivers/dacc/dacc.c **** 
 341:../asf/sam/drivers/dacc/dacc.c **** /**
 342:../asf/sam/drivers/dacc/dacc.c ****  * \brief Get the write protect status.
 343:../asf/sam/drivers/dacc/dacc.c ****  *
 344:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 345:../asf/sam/drivers/dacc/dacc.c ****  *
 346:../asf/sam/drivers/dacc/dacc.c ****  * \return Write protect status.
 347:../asf/sam/drivers/dacc/dacc.c ****  */
 348:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_get_writeprotect_status(Dacc *p_dacc)
 349:../asf/sam/drivers/dacc/dacc.c **** {
 349              		.loc 1 349 0
 350              		.cfi_startproc
 351              		@ args = 0, pretend = 0, frame = 0
 352              		@ frame_needed = 0, uses_anonymous_args = 0
 353              		@ link register save eliminated.
 354              	.LVL25:
 350:../asf/sam/drivers/dacc/dacc.c **** 	return p_dacc->DACC_WPSR;
 355              		.loc 1 350 0
 356 0000 D0F8E800 		ldr	r0, [r0, #232]
 357              	.LVL26:
 351:../asf/sam/drivers/dacc/dacc.c **** }
 358              		.loc 1 351 0
 359 0004 7047     		bx	lr
 360              		.cfi_endproc
 361              	.LFE152:
 362              		.size	dacc_get_writeprotect_status, .-dacc_get_writeprotect_status
 363 0006 00BF     		.section	.text.dacc_set_prescaler,"ax",%progbits
 364              		.align	1
 365              		.p2align 2,,3
 366              		.global	dacc_set_prescaler
 367              		.syntax unified
 368              		.thumb
 369              		.thumb_func
 370              		.fpu fpv5-d16
 371              		.type	dacc_set_prescaler, %function
 372              	dacc_set_prescaler:
 373              	.LFB153:
 352:../asf/sam/drivers/dacc/dacc.c **** 
 353:../asf/sam/drivers/dacc/dacc.c **** #if !(SAM4L || SAMV70 || SAMV71 || SAME70 || SAMS70)
 354:../asf/sam/drivers/dacc/dacc.c **** /**
 355:../asf/sam/drivers/dacc/dacc.c ****  * \brief Get PDC registers base address.
 356:../asf/sam/drivers/dacc/dacc.c ****  *
ARM GAS  /tmp/ccdF0JIt.s 			page 14


 357:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 358:../asf/sam/drivers/dacc/dacc.c ****  *
 359:../asf/sam/drivers/dacc/dacc.c ****  * \return DACC PDC register base address.
 360:../asf/sam/drivers/dacc/dacc.c ****  */
 361:../asf/sam/drivers/dacc/dacc.c **** Pdc *dacc_get_pdc_base(Dacc *p_dacc)
 362:../asf/sam/drivers/dacc/dacc.c **** {
 363:../asf/sam/drivers/dacc/dacc.c **** 	/* avoid Cppcheck Warning */
 364:../asf/sam/drivers/dacc/dacc.c **** 	UNUSED(p_dacc);
 365:../asf/sam/drivers/dacc/dacc.c **** 	return PDC_DACC;
 366:../asf/sam/drivers/dacc/dacc.c **** }
 367:../asf/sam/drivers/dacc/dacc.c **** #endif
 368:../asf/sam/drivers/dacc/dacc.c **** 
 369:../asf/sam/drivers/dacc/dacc.c **** #if (SAM3N) || (SAM4L) || (SAM4N) || defined(__DOXYGEN__)
 370:../asf/sam/drivers/dacc/dacc.c **** /**
 371:../asf/sam/drivers/dacc/dacc.c ****  * \brief Enable DACC.
 372:../asf/sam/drivers/dacc/dacc.c ****  *
 373:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 374:../asf/sam/drivers/dacc/dacc.c ****  */
 375:../asf/sam/drivers/dacc/dacc.c **** void dacc_enable(Dacc *p_dacc)
 376:../asf/sam/drivers/dacc/dacc.c **** {
 377:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_MR |= DACC_MR_DACEN;
 378:../asf/sam/drivers/dacc/dacc.c **** }
 379:../asf/sam/drivers/dacc/dacc.c **** 
 380:../asf/sam/drivers/dacc/dacc.c **** /**
 381:../asf/sam/drivers/dacc/dacc.c ****  * \brief Disable DACC.
 382:../asf/sam/drivers/dacc/dacc.c ****  *
 383:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 384:../asf/sam/drivers/dacc/dacc.c ****  *
 385:../asf/sam/drivers/dacc/dacc.c ****  * \return \ref DACC_RC_OK for OK.
 386:../asf/sam/drivers/dacc/dacc.c ****  */
 387:../asf/sam/drivers/dacc/dacc.c **** void dacc_disable(Dacc *p_dacc)
 388:../asf/sam/drivers/dacc/dacc.c **** {
 389:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_MR &= (~DACC_MR_DACEN);
 390:../asf/sam/drivers/dacc/dacc.c **** }
 391:../asf/sam/drivers/dacc/dacc.c **** 
 392:../asf/sam/drivers/dacc/dacc.c **** /**
 393:../asf/sam/drivers/dacc/dacc.c ****  * \brief Set the DACC timing.
 394:../asf/sam/drivers/dacc/dacc.c ****  *
 395:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance.  
 396:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_startup Startup time selection.
 397:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_clock_divider Clock divider for internal trigger.
 398:../asf/sam/drivers/dacc/dacc.c ****  *
 399:../asf/sam/drivers/dacc/dacc.c ****  * \return \ref DACC_RC_OK for OK.
 400:../asf/sam/drivers/dacc/dacc.c ****  */
 401:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_set_timing(Dacc *p_dacc, uint32_t ul_startup,
 402:../asf/sam/drivers/dacc/dacc.c **** 		uint32_t ul_clock_divider)
 403:../asf/sam/drivers/dacc/dacc.c **** {
 404:../asf/sam/drivers/dacc/dacc.c **** 	uint32_t mr = p_dacc->DACC_MR
 405:../asf/sam/drivers/dacc/dacc.c **** 		& ~(DACC_MR_STARTUP_Msk | DACC_MR_CLKDIV_Msk);
 406:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_MR = mr | DACC_MR_STARTUP(ul_startup)
 407:../asf/sam/drivers/dacc/dacc.c **** 		| DACC_MR_CLKDIV(ul_clock_divider);
 408:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 409:../asf/sam/drivers/dacc/dacc.c **** }
 410:../asf/sam/drivers/dacc/dacc.c **** #endif /* #if (SAM3N) || (SAM4L) || (SAM4N) */
 411:../asf/sam/drivers/dacc/dacc.c **** 
 412:../asf/sam/drivers/dacc/dacc.c **** #if (SAM3S) || (SAM3XA) || (SAM4S) || (SAM4E) || SAMV70 || SAMV71 || SAME70 || SAMS70 || defined(__
 413:../asf/sam/drivers/dacc/dacc.c **** #if !(SAMV70 || SAMV71 || SAME70 || SAMS70)
ARM GAS  /tmp/ccdF0JIt.s 			page 15


 414:../asf/sam/drivers/dacc/dacc.c **** /**
 415:../asf/sam/drivers/dacc/dacc.c ****  * \brief Disable flexible (TAG) mode and select a channel for DAC outputs.
 416:../asf/sam/drivers/dacc/dacc.c ****  *
 417:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 418:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_channel Channel to select.
 419:../asf/sam/drivers/dacc/dacc.c ****  *
 420:../asf/sam/drivers/dacc/dacc.c ****  * \return \ref DACC_RC_OK if successful.
 421:../asf/sam/drivers/dacc/dacc.c ****  */
 422:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_set_channel_selection(Dacc *p_dacc, uint32_t ul_channel)
 423:../asf/sam/drivers/dacc/dacc.c **** {
 424:../asf/sam/drivers/dacc/dacc.c **** 	uint32_t mr = p_dacc->DACC_MR & (~DACC_MR_USER_SEL_Msk);
 425:../asf/sam/drivers/dacc/dacc.c **** 	if (ul_channel > MAX_CH_NB) {
 426:../asf/sam/drivers/dacc/dacc.c **** 		return DACC_RC_INVALID_PARAM;
 427:../asf/sam/drivers/dacc/dacc.c **** 	}
 428:../asf/sam/drivers/dacc/dacc.c **** 	mr &= ~(DACC_MR_TAG);
 429:../asf/sam/drivers/dacc/dacc.c **** 	mr |= ul_channel << DACC_MR_USER_SEL_Pos;
 430:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_MR = mr;
 431:../asf/sam/drivers/dacc/dacc.c **** 
 432:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 433:../asf/sam/drivers/dacc/dacc.c **** }
 434:../asf/sam/drivers/dacc/dacc.c **** 
 435:../asf/sam/drivers/dacc/dacc.c **** /**
 436:../asf/sam/drivers/dacc/dacc.c ****  * \brief Enable the flexible channel selection mode (TAG).
 437:../asf/sam/drivers/dacc/dacc.c ****  *
 438:../asf/sam/drivers/dacc/dacc.c ****  * In this mode the 2 bits, DACC_CDR[13:12] which are otherwise unused, are
 439:../asf/sam/drivers/dacc/dacc.c ****  * employed to select the channel in the same way as with the USER_SEL field.
 440:../asf/sam/drivers/dacc/dacc.c ****  * Finally, if the WORD field is set, the 2 bits, DACC_CDR[13:12] are used
 441:../asf/sam/drivers/dacc/dacc.c ****  * for channel selection of the first data and the 2 bits, DACC_CDR[29:28]
 442:../asf/sam/drivers/dacc/dacc.c ****  * for channel selection of the second data.
 443:../asf/sam/drivers/dacc/dacc.c ****  *
 444:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 445:../asf/sam/drivers/dacc/dacc.c ****  */
 446:../asf/sam/drivers/dacc/dacc.c **** void dacc_enable_flexible_selection(Dacc *p_dacc)
 447:../asf/sam/drivers/dacc/dacc.c **** {
 448:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_MR |= DACC_MR_TAG;
 449:../asf/sam/drivers/dacc/dacc.c **** }
 450:../asf/sam/drivers/dacc/dacc.c **** #endif
 451:../asf/sam/drivers/dacc/dacc.c **** 
 452:../asf/sam/drivers/dacc/dacc.c **** #if (SAM3S) || (SAM3XA) || defined(__DOXYGEN__)
 453:../asf/sam/drivers/dacc/dacc.c **** /**
 454:../asf/sam/drivers/dacc/dacc.c ****  * \brief Set the power save mode.
 455:../asf/sam/drivers/dacc/dacc.c ****  *
 456:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 457:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_sleep_mode Sleep mode configuration.
 458:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_fast_wakeup_mode Fast wakeup mode configuration.
 459:../asf/sam/drivers/dacc/dacc.c ****  *
 460:../asf/sam/drivers/dacc/dacc.c ****  * \return \ref DACC_RC_OK if successful.
 461:../asf/sam/drivers/dacc/dacc.c ****  */
 462:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_set_power_save(Dacc *p_dacc,
 463:../asf/sam/drivers/dacc/dacc.c **** 		uint32_t ul_sleep_mode, uint32_t ul_fast_wakeup_mode)
 464:../asf/sam/drivers/dacc/dacc.c **** {
 465:../asf/sam/drivers/dacc/dacc.c **** 	if (ul_sleep_mode) {
 466:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_MR |= DACC_MR_SLEEP;
 467:../asf/sam/drivers/dacc/dacc.c **** 	} else {
 468:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_MR &= (~DACC_MR_SLEEP);
 469:../asf/sam/drivers/dacc/dacc.c **** 	}
 470:../asf/sam/drivers/dacc/dacc.c **** 	if (ul_fast_wakeup_mode) {
ARM GAS  /tmp/ccdF0JIt.s 			page 16


 471:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_MR |= DACC_MR_FASTWKUP;
 472:../asf/sam/drivers/dacc/dacc.c **** 	} else {
 473:../asf/sam/drivers/dacc/dacc.c **** 		p_dacc->DACC_MR &= (~DACC_MR_FASTWKUP);
 474:../asf/sam/drivers/dacc/dacc.c **** 	}
 475:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 476:../asf/sam/drivers/dacc/dacc.c **** }
 477:../asf/sam/drivers/dacc/dacc.c **** #endif /* (SAM3S) || (SAM3XA) */
 478:../asf/sam/drivers/dacc/dacc.c **** 
 479:../asf/sam/drivers/dacc/dacc.c **** #if !(SAMV70 || SAMV71 || SAME70 || SAMS70 || SAM4E)
 480:../asf/sam/drivers/dacc/dacc.c **** /**
 481:../asf/sam/drivers/dacc/dacc.c ****  * \brief Set DACC timings.
 482:../asf/sam/drivers/dacc/dacc.c ****  *
 483:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 484:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_refresh Refresh period setting value.
 485:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_maxs Max speed mode configuration.
 486:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_startup Startup time selection.
 487:../asf/sam/drivers/dacc/dacc.c ****  *
 488:../asf/sam/drivers/dacc/dacc.c ****  * \return \ref DACC_RC_OK for OK.
 489:../asf/sam/drivers/dacc/dacc.c ****  */
 490:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_set_timing(Dacc *p_dacc,
 491:../asf/sam/drivers/dacc/dacc.c **** 		uint32_t ul_refresh, uint32_t ul_maxs, uint32_t ul_startup)
 492:../asf/sam/drivers/dacc/dacc.c **** {
 493:../asf/sam/drivers/dacc/dacc.c **** 	uint32_t mr = p_dacc->DACC_MR
 494:../asf/sam/drivers/dacc/dacc.c **** 	& (~(DACC_MR_REFRESH_Msk | DACC_MR_STARTUP_Msk));
 495:../asf/sam/drivers/dacc/dacc.c **** 	mr |= DACC_MR_REFRESH(ul_refresh);
 496:../asf/sam/drivers/dacc/dacc.c **** 	if (ul_maxs) {
 497:../asf/sam/drivers/dacc/dacc.c **** 		mr |= DACC_MR_MAXS;
 498:../asf/sam/drivers/dacc/dacc.c **** 		} else {
 499:../asf/sam/drivers/dacc/dacc.c **** 		mr &= ~DACC_MR_MAXS;
 500:../asf/sam/drivers/dacc/dacc.c **** 	}
 501:../asf/sam/drivers/dacc/dacc.c **** 	mr |= (DACC_MR_STARTUP_Msk & ((ul_startup) << DACC_MR_STARTUP_Pos));
 502:../asf/sam/drivers/dacc/dacc.c **** 
 503:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_MR = mr;
 504:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 505:../asf/sam/drivers/dacc/dacc.c **** }
 506:../asf/sam/drivers/dacc/dacc.c **** #endif
 507:../asf/sam/drivers/dacc/dacc.c **** 
 508:../asf/sam/drivers/dacc/dacc.c **** #if (SAM4E)
 509:../asf/sam/drivers/dacc/dacc.c **** /**
 510:../asf/sam/drivers/dacc/dacc.c ****  * \brief Set DACC timings.
 511:../asf/sam/drivers/dacc/dacc.c ****  *
 512:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 513:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_maxs Max speed mode configuration.
 514:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_startup Startup time selection.
 515:../asf/sam/drivers/dacc/dacc.c ****  *
 516:../asf/sam/drivers/dacc/dacc.c ****  * \return \ref DACC_RC_OK for OK.
 517:../asf/sam/drivers/dacc/dacc.c ****  */
 518:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_set_timing(Dacc *p_dacc,
 519:../asf/sam/drivers/dacc/dacc.c **** 		 uint32_t ul_maxs, uint32_t ul_startup)
 520:../asf/sam/drivers/dacc/dacc.c **** {
 521:../asf/sam/drivers/dacc/dacc.c **** 	uint32_t mr = p_dacc->DACC_MR
 522:../asf/sam/drivers/dacc/dacc.c **** 	& (~(DACC_MR_REFRESH_Msk | DACC_MR_STARTUP_Msk));
 523:../asf/sam/drivers/dacc/dacc.c **** 	if (ul_maxs) {
 524:../asf/sam/drivers/dacc/dacc.c **** 		mr |= DACC_MR_MAXS;
 525:../asf/sam/drivers/dacc/dacc.c **** 		} else {
 526:../asf/sam/drivers/dacc/dacc.c **** 		mr &= ~DACC_MR_MAXS;
 527:../asf/sam/drivers/dacc/dacc.c **** 	}
ARM GAS  /tmp/ccdF0JIt.s 			page 17


 528:../asf/sam/drivers/dacc/dacc.c **** 	mr |= (DACC_MR_STARTUP_Msk & ((ul_startup) << DACC_MR_STARTUP_Pos));
 529:../asf/sam/drivers/dacc/dacc.c **** 
 530:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_MR = mr;
 531:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 532:../asf/sam/drivers/dacc/dacc.c **** }
 533:../asf/sam/drivers/dacc/dacc.c **** #endif
 534:../asf/sam/drivers/dacc/dacc.c **** 
 535:../asf/sam/drivers/dacc/dacc.c **** #if (SAMV70 || SAMV71 || SAME70 || SAMS70)
 536:../asf/sam/drivers/dacc/dacc.c **** /**
 537:../asf/sam/drivers/dacc/dacc.c ****  * \brief Set DACC prescaler.
 538:../asf/sam/drivers/dacc/dacc.c ****  *
 539:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 540:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_prescaler Prescaler value.
 541:../asf/sam/drivers/dacc/dacc.c ****  *
 542:../asf/sam/drivers/dacc/dacc.c ****  * \return \ref DACC_RC_OK for OK.
 543:../asf/sam/drivers/dacc/dacc.c ****  */
 544:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_set_prescaler(Dacc *p_dacc, uint32_t ul_prescaler) 
 545:../asf/sam/drivers/dacc/dacc.c **** {
 374              		.loc 1 545 0
 375              		.cfi_startproc
 376              		@ args = 0, pretend = 0, frame = 0
 377              		@ frame_needed = 0, uses_anonymous_args = 0
 378              		@ link register save eliminated.
 379              	.LVL27:
 380              		.loc 1 545 0
 381 0000 0246     		mov	r2, r0
 546:../asf/sam/drivers/dacc/dacc.c **** 	uint32_t mr = p_dacc->DACC_MR & (~DACC_MR_PRESCALER_Msk);
 547:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_MR = mr | DACC_MR_PRESCALER(ul_prescaler);	
 382              		.loc 1 547 0
 383 0002 0906     		lsls	r1, r1, #24
 384              	.LVL28:
 548:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 549:../asf/sam/drivers/dacc/dacc.c **** }
 385              		.loc 1 549 0
 386 0004 0020     		movs	r0, #0
 387              	.LVL29:
 546:../asf/sam/drivers/dacc/dacc.c **** 	uint32_t mr = p_dacc->DACC_MR & (~DACC_MR_PRESCALER_Msk);
 388              		.loc 1 546 0
 389 0006 5368     		ldr	r3, [r2, #4]
 390              	.LVL30:
 547:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 391              		.loc 1 547 0
 392 0008 01F07061 		and	r1, r1, #251658240
 546:../asf/sam/drivers/dacc/dacc.c **** 	uint32_t mr = p_dacc->DACC_MR & (~DACC_MR_PRESCALER_Msk);
 393              		.loc 1 546 0
 394 000c 23F07063 		bic	r3, r3, #251658240
 395              	.LVL31:
 547:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 396              		.loc 1 547 0
 397 0010 1943     		orrs	r1, r1, r3
 398 0012 5160     		str	r1, [r2, #4]
 399              		.loc 1 549 0
 400 0014 7047     		bx	lr
 401              		.cfi_endproc
 402              	.LFE153:
 403              		.size	dacc_set_prescaler, .-dacc_set_prescaler
 404 0016 00BF     		.section	.text.dacc_set_osr,"ax",%progbits
ARM GAS  /tmp/ccdF0JIt.s 			page 18


 405              		.align	1
 406              		.p2align 2,,3
 407              		.global	dacc_set_osr
 408              		.syntax unified
 409              		.thumb
 410              		.thumb_func
 411              		.fpu fpv5-d16
 412              		.type	dacc_set_osr, %function
 413              	dacc_set_osr:
 414              	.LFB154:
 550:../asf/sam/drivers/dacc/dacc.c **** 
 551:../asf/sam/drivers/dacc/dacc.c **** /**
 552:../asf/sam/drivers/dacc/dacc.c ****  * \brief Set DACC osr.
 553:../asf/sam/drivers/dacc/dacc.c ****  *
 554:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 555:../asf/sam/drivers/dacc/dacc.c ****  * \param channel DACC osr channel to be set.
 556:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_prescaler Osr value.
 557:../asf/sam/drivers/dacc/dacc.c ****  *
 558:../asf/sam/drivers/dacc/dacc.c ****  * \return \ref DACC_RC_OK for OK.
 559:../asf/sam/drivers/dacc/dacc.c ****  */
 560:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_set_osr(Dacc *p_dacc, uint32_t channel, uint32_t ul_osr)
 561:../asf/sam/drivers/dacc/dacc.c **** {
 415              		.loc 1 561 0
 416              		.cfi_startproc
 417              		@ args = 0, pretend = 0, frame = 0
 418              		@ frame_needed = 0, uses_anonymous_args = 0
 419              		@ link register save eliminated.
 420              	.LVL32:
 562:../asf/sam/drivers/dacc/dacc.c **** 	uint32_t mr = p_dacc->DACC_TRIGR;
 421              		.loc 1 562 0
 422 0000 8368     		ldr	r3, [r0, #8]
 423              	.LVL33:
 563:../asf/sam/drivers/dacc/dacc.c **** 	if(channel == 0) {
 424              		.loc 1 563 0
 425 0002 31B1     		cbz	r1, .L32
 426              	.LVL34:
 564:../asf/sam/drivers/dacc/dacc.c **** 		mr &= (~DACC_TRIGR_OSR0_Msk);
 565:../asf/sam/drivers/dacc/dacc.c **** 		mr |=  DACC_TRIGR_OSR0(ul_osr);
 566:../asf/sam/drivers/dacc/dacc.c **** 	}else if(channel == 1) {
 427              		.loc 1 566 0
 428 0004 0129     		cmp	r1, #1
 567:../asf/sam/drivers/dacc/dacc.c **** 		mr &= (~DACC_TRIGR_OSR1_Msk);
 568:../asf/sam/drivers/dacc/dacc.c **** 		mr |=  DACC_TRIGR_OSR1(ul_osr);
 429              		.loc 1 568 0
 430 0006 08BF     		it	eq
 431 0008 62F31653 		bfieq	r3, r2, #20, #3
 432              	.LVL35:
 569:../asf/sam/drivers/dacc/dacc.c **** 	}
 570:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_TRIGR = mr;
 433              		.loc 1 570 0
 434 000c 8360     		str	r3, [r0, #8]
 571:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 572:../asf/sam/drivers/dacc/dacc.c **** }
 435              		.loc 1 572 0
 436 000e 0020     		movs	r0, #0
 437              	.LVL36:
 438 0010 7047     		bx	lr
ARM GAS  /tmp/ccdF0JIt.s 			page 19


 439              	.LVL37:
 440              	.L32:
 565:../asf/sam/drivers/dacc/dacc.c **** 	}else if(channel == 1) {
 441              		.loc 1 565 0
 442 0012 62F31243 		bfi	r3, r2, #16, #3
 443              	.LVL38:
 570:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 444              		.loc 1 570 0
 445 0016 8360     		str	r3, [r0, #8]
 446              		.loc 1 572 0
 447 0018 0020     		movs	r0, #0
 448              	.LVL39:
 449 001a 7047     		bx	lr
 450              		.cfi_endproc
 451              	.LFE154:
 452              		.size	dacc_set_osr, .-dacc_set_osr
 453              		.section	.text.dacc_enable_channel,"ax",%progbits
 454              		.align	1
 455              		.p2align 2,,3
 456              		.global	dacc_enable_channel
 457              		.syntax unified
 458              		.thumb
 459              		.thumb_func
 460              		.fpu fpv5-d16
 461              		.type	dacc_enable_channel, %function
 462              	dacc_enable_channel:
 463              	.LFB155:
 573:../asf/sam/drivers/dacc/dacc.c **** #endif
 574:../asf/sam/drivers/dacc/dacc.c **** 
 575:../asf/sam/drivers/dacc/dacc.c **** /**
 576:../asf/sam/drivers/dacc/dacc.c ****  * \brief Enable DACC channel.
 577:../asf/sam/drivers/dacc/dacc.c ****  *
 578:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 579:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_channel The output channel to enable.
 580:../asf/sam/drivers/dacc/dacc.c ****  *
 581:../asf/sam/drivers/dacc/dacc.c ****  * \return \ref DACC_RC_OK for OK.
 582:../asf/sam/drivers/dacc/dacc.c ****  */
 583:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_enable_channel(Dacc *p_dacc, uint32_t ul_channel)
 584:../asf/sam/drivers/dacc/dacc.c **** {
 464              		.loc 1 584 0
 465              		.cfi_startproc
 466              		@ args = 0, pretend = 0, frame = 0
 467              		@ frame_needed = 0, uses_anonymous_args = 0
 468              		@ link register save eliminated.
 469              	.LVL40:
 585:../asf/sam/drivers/dacc/dacc.c **** 	if (ul_channel > MAX_CH_NB)
 470              		.loc 1 585 0
 471 0000 0129     		cmp	r1, #1
 472 0002 02D9     		bls	.L36
 586:../asf/sam/drivers/dacc/dacc.c **** 		return DACC_RC_INVALID_PARAM;
 473              		.loc 1 586 0
 474 0004 0123     		movs	r3, #1
 587:../asf/sam/drivers/dacc/dacc.c **** 
 588:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_CHER = DACC_CHER_CH0 << ul_channel;
 589:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 590:../asf/sam/drivers/dacc/dacc.c **** }
 475              		.loc 1 590 0
ARM GAS  /tmp/ccdF0JIt.s 			page 20


 476 0006 1846     		mov	r0, r3
 477              	.LVL41:
 478 0008 7047     		bx	lr
 479              	.LVL42:
 480              	.L36:
 588:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 481              		.loc 1 588 0
 482 000a 0122     		movs	r2, #1
 589:../asf/sam/drivers/dacc/dacc.c **** }
 483              		.loc 1 589 0
 484 000c 0023     		movs	r3, #0
 588:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 485              		.loc 1 588 0
 486 000e 02FA01F1 		lsl	r1, r2, r1
 487              	.LVL43:
 488 0012 0161     		str	r1, [r0, #16]
 489              		.loc 1 590 0
 490 0014 1846     		mov	r0, r3
 491              	.LVL44:
 492 0016 7047     		bx	lr
 493              		.cfi_endproc
 494              	.LFE155:
 495              		.size	dacc_enable_channel, .-dacc_enable_channel
 496              		.section	.text.dacc_disable_channel,"ax",%progbits
 497              		.align	1
 498              		.p2align 2,,3
 499              		.global	dacc_disable_channel
 500              		.syntax unified
 501              		.thumb
 502              		.thumb_func
 503              		.fpu fpv5-d16
 504              		.type	dacc_disable_channel, %function
 505              	dacc_disable_channel:
 506              	.LFB156:
 591:../asf/sam/drivers/dacc/dacc.c **** 
 592:../asf/sam/drivers/dacc/dacc.c **** /**
 593:../asf/sam/drivers/dacc/dacc.c ****  * \brief Disable DACC channel.
 594:../asf/sam/drivers/dacc/dacc.c ****  *
 595:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 596:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_channel The output channel to disable.
 597:../asf/sam/drivers/dacc/dacc.c ****  *
 598:../asf/sam/drivers/dacc/dacc.c ****  * \return \ref DACC_RC_OK for OK.
 599:../asf/sam/drivers/dacc/dacc.c ****  */
 600:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_disable_channel(Dacc *p_dacc, uint32_t ul_channel)
 601:../asf/sam/drivers/dacc/dacc.c **** {
 507              		.loc 1 601 0
 508              		.cfi_startproc
 509              		@ args = 0, pretend = 0, frame = 0
 510              		@ frame_needed = 0, uses_anonymous_args = 0
 511              		@ link register save eliminated.
 512              	.LVL45:
 602:../asf/sam/drivers/dacc/dacc.c **** 	if (ul_channel > MAX_CH_NB) {
 513              		.loc 1 602 0
 514 0000 0129     		cmp	r1, #1
 515 0002 02D9     		bls	.L40
 603:../asf/sam/drivers/dacc/dacc.c **** 		return DACC_RC_INVALID_PARAM;
 516              		.loc 1 603 0
ARM GAS  /tmp/ccdF0JIt.s 			page 21


 517 0004 0123     		movs	r3, #1
 604:../asf/sam/drivers/dacc/dacc.c **** 	}
 605:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_CHDR = DACC_CHDR_CH0 << ul_channel;
 606:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 607:../asf/sam/drivers/dacc/dacc.c **** }
 518              		.loc 1 607 0
 519 0006 1846     		mov	r0, r3
 520              	.LVL46:
 521 0008 7047     		bx	lr
 522              	.LVL47:
 523              	.L40:
 605:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 524              		.loc 1 605 0
 525 000a 0122     		movs	r2, #1
 606:../asf/sam/drivers/dacc/dacc.c **** }
 526              		.loc 1 606 0
 527 000c 0023     		movs	r3, #0
 605:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 528              		.loc 1 605 0
 529 000e 02FA01F1 		lsl	r1, r2, r1
 530              	.LVL48:
 531 0012 4161     		str	r1, [r0, #20]
 532              		.loc 1 607 0
 533 0014 1846     		mov	r0, r3
 534              	.LVL49:
 535 0016 7047     		bx	lr
 536              		.cfi_endproc
 537              	.LFE156:
 538              		.size	dacc_disable_channel, .-dacc_disable_channel
 539              		.section	.text.dacc_get_channel_status,"ax",%progbits
 540              		.align	1
 541              		.p2align 2,,3
 542              		.global	dacc_get_channel_status
 543              		.syntax unified
 544              		.thumb
 545              		.thumb_func
 546              		.fpu fpv5-d16
 547              		.type	dacc_get_channel_status, %function
 548              	dacc_get_channel_status:
 549              	.LFB157:
 608:../asf/sam/drivers/dacc/dacc.c **** 
 609:../asf/sam/drivers/dacc/dacc.c **** /**
 610:../asf/sam/drivers/dacc/dacc.c ****  * \brief Get the channel status.
 611:../asf/sam/drivers/dacc/dacc.c ****  *
 612:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 613:../asf/sam/drivers/dacc/dacc.c ****  *
 614:../asf/sam/drivers/dacc/dacc.c ****  * \return DACC channel status.
 615:../asf/sam/drivers/dacc/dacc.c ****  */
 616:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_get_channel_status(Dacc *p_dacc)
 617:../asf/sam/drivers/dacc/dacc.c **** {
 550              		.loc 1 617 0
 551              		.cfi_startproc
 552              		@ args = 0, pretend = 0, frame = 0
 553              		@ frame_needed = 0, uses_anonymous_args = 0
 554              		@ link register save eliminated.
 555              	.LVL50:
 618:../asf/sam/drivers/dacc/dacc.c **** 	return p_dacc->DACC_CHSR;
ARM GAS  /tmp/ccdF0JIt.s 			page 22


 556              		.loc 1 618 0
 557 0000 8069     		ldr	r0, [r0, #24]
 558              	.LVL51:
 619:../asf/sam/drivers/dacc/dacc.c **** }
 559              		.loc 1 619 0
 560 0002 7047     		bx	lr
 561              		.cfi_endproc
 562              	.LFE157:
 563              		.size	dacc_get_channel_status, .-dacc_get_channel_status
 564              		.section	.text.dacc_set_analog_control,"ax",%progbits
 565              		.align	1
 566              		.p2align 2,,3
 567              		.global	dacc_set_analog_control
 568              		.syntax unified
 569              		.thumb
 570              		.thumb_func
 571              		.fpu fpv5-d16
 572              		.type	dacc_set_analog_control, %function
 573              	dacc_set_analog_control:
 574              	.LFB158:
 620:../asf/sam/drivers/dacc/dacc.c **** 
 621:../asf/sam/drivers/dacc/dacc.c **** /**
 622:../asf/sam/drivers/dacc/dacc.c ****  * \brief Set the analog control value.
 623:../asf/sam/drivers/dacc/dacc.c ****  *
 624:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 625:../asf/sam/drivers/dacc/dacc.c ****  * \param ul_analog_control Analog control configuration.
 626:../asf/sam/drivers/dacc/dacc.c ****  *
 627:../asf/sam/drivers/dacc/dacc.c ****  * \return \ref DACC_RC_OK for OK.
 628:../asf/sam/drivers/dacc/dacc.c ****  */
 629:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_set_analog_control(Dacc *p_dacc, uint32_t ul_analog_control)
 630:../asf/sam/drivers/dacc/dacc.c **** {
 575              		.loc 1 630 0
 576              		.cfi_startproc
 577              		@ args = 0, pretend = 0, frame = 0
 578              		@ frame_needed = 0, uses_anonymous_args = 0
 579              		@ link register save eliminated.
 580              	.LVL52:
 581              		.loc 1 630 0
 582 0000 0346     		mov	r3, r0
 631:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_ACR = ul_analog_control;
 632:../asf/sam/drivers/dacc/dacc.c **** 	return DACC_RC_OK;
 633:../asf/sam/drivers/dacc/dacc.c **** }
 583              		.loc 1 633 0
 584 0002 0020     		movs	r0, #0
 585              	.LVL53:
 631:../asf/sam/drivers/dacc/dacc.c **** 	p_dacc->DACC_ACR = ul_analog_control;
 586              		.loc 1 631 0
 587 0004 C3F89410 		str	r1, [r3, #148]
 588              		.loc 1 633 0
 589 0008 7047     		bx	lr
 590              		.cfi_endproc
 591              	.LFE158:
 592              		.size	dacc_set_analog_control, .-dacc_set_analog_control
 593 000a 00BF     		.section	.text.dacc_get_analog_control,"ax",%progbits
 594              		.align	1
 595              		.p2align 2,,3
 596              		.global	dacc_get_analog_control
ARM GAS  /tmp/ccdF0JIt.s 			page 23


 597              		.syntax unified
 598              		.thumb
 599              		.thumb_func
 600              		.fpu fpv5-d16
 601              		.type	dacc_get_analog_control, %function
 602              	dacc_get_analog_control:
 603              	.LFB159:
 634:../asf/sam/drivers/dacc/dacc.c **** 
 635:../asf/sam/drivers/dacc/dacc.c **** /**
 636:../asf/sam/drivers/dacc/dacc.c ****  * \brief Get the analog control value.
 637:../asf/sam/drivers/dacc/dacc.c ****  *
 638:../asf/sam/drivers/dacc/dacc.c ****  * \param p_dacc Pointer to a DACC instance. 
 639:../asf/sam/drivers/dacc/dacc.c ****  *
 640:../asf/sam/drivers/dacc/dacc.c ****  * \return Current setting of analog control.
 641:../asf/sam/drivers/dacc/dacc.c ****  */
 642:../asf/sam/drivers/dacc/dacc.c **** uint32_t dacc_get_analog_control(Dacc *p_dacc)
 643:../asf/sam/drivers/dacc/dacc.c **** {
 604              		.loc 1 643 0
 605              		.cfi_startproc
 606              		@ args = 0, pretend = 0, frame = 0
 607              		@ frame_needed = 0, uses_anonymous_args = 0
 608              		@ link register save eliminated.
 609              	.LVL54:
 644:../asf/sam/drivers/dacc/dacc.c **** 	return p_dacc->DACC_ACR;
 610              		.loc 1 644 0
 611 0000 D0F89400 		ldr	r0, [r0, #148]
 612              	.LVL55:
 645:../asf/sam/drivers/dacc/dacc.c **** }
 613              		.loc 1 645 0
 614 0004 7047     		bx	lr
 615              		.cfi_endproc
 616              	.LFE159:
 617              		.size	dacc_get_analog_control, .-dacc_get_analog_control
 618 0006 00BF     		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 619              		.align	2
 620              		.type	cpu_irq_critical_section_counter, %object
 621              		.size	cpu_irq_critical_section_counter, 4
 622              	cpu_irq_critical_section_counter:
 623 0000 00000000 		.space	4
 624              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 625              		.type	cpu_irq_prev_interrupt_state, %object
 626              		.size	cpu_irq_prev_interrupt_state, 1
 627              	cpu_irq_prev_interrupt_state:
 628 0000 00       		.space	1
 629              		.text
 630              	.Letext0:
 631              		.file 2 "/usr/include/newlib/machine/_default_types.h"
 632              		.file 3 "/usr/include/newlib/sys/_stdint.h"
 633              		.file 4 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
 634              		.file 5 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 635              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/dacc
 636              		.file 7 "/usr/include/newlib/sys/lock.h"
 637              		.file 8 "/usr/include/newlib/sys/_types.h"
 638              		.file 9 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 639              		.file 10 "/usr/include/newlib/sys/reent.h"
 640              		.file 11 "/usr/include/newlib/stdlib.h"
 641              		.file 12 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
ARM GAS  /tmp/ccdF0JIt.s 			page 24


 642              		.file 13 "../asf/sam/drivers/dacc/dacc.h"
 643              		.section	.debug_info,"",%progbits
 644              	.Ldebug_info0:
 645 0000 810E0000 		.4byte	0xe81
 646 0004 0400     		.2byte	0x4
 647 0006 00000000 		.4byte	.Ldebug_abbrev0
 648 000a 04       		.byte	0x4
 649 000b 01       		.uleb128 0x1
 650 000c 2E040000 		.4byte	.LASF180
 651 0010 0C       		.byte	0xc
 652 0011 2B070000 		.4byte	.LASF181
 653 0015 3F080000 		.4byte	.LASF182
 654 0019 00000000 		.4byte	.Ldebug_ranges0+0
 655 001d 00000000 		.4byte	0
 656 0021 00000000 		.4byte	.Ldebug_line0
 657 0025 02       		.uleb128 0x2
 658 0026 04       		.byte	0x4
 659 0027 05       		.byte	0x5
 660 0028 696E7400 		.ascii	"int\000"
 661 002c 03       		.uleb128 0x3
 662 002d 04       		.byte	0x4
 663 002e 07       		.byte	0x7
 664 002f 01070000 		.4byte	.LASF0
 665 0033 03       		.uleb128 0x3
 666 0034 01       		.byte	0x1
 667 0035 06       		.byte	0x6
 668 0036 EA000000 		.4byte	.LASF1
 669 003a 03       		.uleb128 0x3
 670 003b 01       		.byte	0x1
 671 003c 08       		.byte	0x8
 672 003d 6E070000 		.4byte	.LASF2
 673 0041 03       		.uleb128 0x3
 674 0042 02       		.byte	0x2
 675 0043 05       		.byte	0x5
 676 0044 00000000 		.4byte	.LASF3
 677 0048 03       		.uleb128 0x3
 678 0049 02       		.byte	0x2
 679 004a 07       		.byte	0x7
 680 004b 08030000 		.4byte	.LASF4
 681 004f 04       		.uleb128 0x4
 682 0050 21070000 		.4byte	.LASF6
 683 0054 02       		.byte	0x2
 684 0055 3F       		.byte	0x3f
 685 0056 5A000000 		.4byte	0x5a
 686 005a 03       		.uleb128 0x3
 687 005b 04       		.byte	0x4
 688 005c 05       		.byte	0x5
 689 005d 47000000 		.4byte	.LASF5
 690 0061 04       		.uleb128 0x4
 691 0062 22020000 		.4byte	.LASF7
 692 0066 02       		.byte	0x2
 693 0067 41       		.byte	0x41
 694 0068 6C000000 		.4byte	0x6c
 695 006c 03       		.uleb128 0x3
 696 006d 04       		.byte	0x4
 697 006e 07       		.byte	0x7
 698 006f BE020000 		.4byte	.LASF8
ARM GAS  /tmp/ccdF0JIt.s 			page 25


 699 0073 03       		.uleb128 0x3
 700 0074 08       		.byte	0x8
 701 0075 05       		.byte	0x5
 702 0076 A1010000 		.4byte	.LASF9
 703 007a 03       		.uleb128 0x3
 704 007b 08       		.byte	0x8
 705 007c 07       		.byte	0x7
 706 007d 70000000 		.4byte	.LASF10
 707 0081 04       		.uleb128 0x4
 708 0082 76050000 		.4byte	.LASF11
 709 0086 03       		.byte	0x3
 710 0087 2C       		.byte	0x2c
 711 0088 4F000000 		.4byte	0x4f
 712 008c 05       		.uleb128 0x5
 713 008d 81000000 		.4byte	0x81
 714 0091 04       		.uleb128 0x4
 715 0092 A6060000 		.4byte	.LASF12
 716 0096 03       		.byte	0x3
 717 0097 30       		.byte	0x30
 718 0098 61000000 		.4byte	0x61
 719 009c 05       		.uleb128 0x5
 720 009d 91000000 		.4byte	0x91
 721 00a1 06       		.uleb128 0x6
 722 00a2 9C000000 		.4byte	0x9c
 723 00a6 07       		.uleb128 0x7
 724 00a7 04       		.byte	0x4
 725 00a8 03       		.uleb128 0x3
 726 00a9 04       		.byte	0x4
 727 00aa 07       		.byte	0x7
 728 00ab EB030000 		.4byte	.LASF13
 729 00af 08       		.uleb128 0x8
 730 00b0 A1000000 		.4byte	.LASF14
 731 00b4 04       		.byte	0x4
 732 00b5 6508     		.2byte	0x865
 733 00b7 8C000000 		.4byte	0x8c
 734 00bb 09       		.uleb128 0x9
 735 00bc 9D020000 		.4byte	.LASF15
 736 00c0 05       		.byte	0x5
 737 00c1 3A       		.byte	0x3a
 738 00c2 91000000 		.4byte	0x91
 739 00c6 0A       		.uleb128 0xa
 740 00c7 A1000000 		.4byte	0xa1
 741 00cb D6000000 		.4byte	0xd6
 742 00cf 0B       		.uleb128 0xb
 743 00d0 A8000000 		.4byte	0xa8
 744 00d4 17       		.byte	0x17
 745 00d5 00       		.byte	0
 746 00d6 06       		.uleb128 0x6
 747 00d7 C6000000 		.4byte	0xc6
 748 00db 05       		.uleb128 0x5
 749 00dc D6000000 		.4byte	0xd6
 750 00e0 0A       		.uleb128 0xa
 751 00e1 A1000000 		.4byte	0xa1
 752 00e5 F0000000 		.4byte	0xf0
 753 00e9 0B       		.uleb128 0xb
 754 00ea A8000000 		.4byte	0xa8
 755 00ee 12       		.byte	0x12
ARM GAS  /tmp/ccdF0JIt.s 			page 26


 756 00ef 00       		.byte	0
 757 00f0 06       		.uleb128 0x6
 758 00f1 E0000000 		.4byte	0xe0
 759 00f5 05       		.uleb128 0x5
 760 00f6 F0000000 		.4byte	0xf0
 761 00fa 0C       		.uleb128 0xc
 762 00fb EC       		.byte	0xec
 763 00fc 06       		.byte	0x6
 764 00fd 38       		.byte	0x38
 765 00fe CF010000 		.4byte	0x1cf
 766 0102 0D       		.uleb128 0xd
 767 0103 1C040000 		.4byte	.LASF16
 768 0107 06       		.byte	0x6
 769 0108 39       		.byte	0x39
 770 0109 9C000000 		.4byte	0x9c
 771 010d 00       		.byte	0
 772 010e 0D       		.uleb128 0xd
 773 010f 81070000 		.4byte	.LASF17
 774 0113 06       		.byte	0x6
 775 0114 3A       		.byte	0x3a
 776 0115 9C000000 		.4byte	0x9c
 777 0119 04       		.byte	0x4
 778 011a 0D       		.uleb128 0xd
 779 011b 70010000 		.4byte	.LASF18
 780 011f 06       		.byte	0x6
 781 0120 3B       		.byte	0x3b
 782 0121 9C000000 		.4byte	0x9c
 783 0125 08       		.byte	0x8
 784 0126 0D       		.uleb128 0xd
 785 0127 02010000 		.4byte	.LASF19
 786 012b 06       		.byte	0x6
 787 012c 3C       		.byte	0x3c
 788 012d E4010000 		.4byte	0x1e4
 789 0131 0C       		.byte	0xc
 790 0132 0D       		.uleb128 0xd
 791 0133 24040000 		.4byte	.LASF20
 792 0137 06       		.byte	0x6
 793 0138 3D       		.byte	0x3d
 794 0139 9C000000 		.4byte	0x9c
 795 013d 10       		.byte	0x10
 796 013e 0D       		.uleb128 0xd
 797 013f 63030000 		.4byte	.LASF21
 798 0143 06       		.byte	0x6
 799 0144 3E       		.byte	0x3e
 800 0145 9C000000 		.4byte	0x9c
 801 0149 14       		.byte	0x14
 802 014a 0D       		.uleb128 0xd
 803 014b 3D030000 		.4byte	.LASF22
 804 014f 06       		.byte	0x6
 805 0150 3F       		.byte	0x3f
 806 0151 A1000000 		.4byte	0xa1
 807 0155 18       		.byte	0x18
 808 0156 0D       		.uleb128 0xd
 809 0157 6D030000 		.4byte	.LASF23
 810 015b 06       		.byte	0x6
 811 015c 40       		.byte	0x40
 812 015d F9010000 		.4byte	0x1f9
ARM GAS  /tmp/ccdF0JIt.s 			page 27


 813 0161 1C       		.byte	0x1c
 814 0162 0D       		.uleb128 0xd
 815 0163 AD030000 		.4byte	.LASF24
 816 0167 06       		.byte	0x6
 817 0168 41       		.byte	0x41
 818 0169 9C000000 		.4byte	0x9c
 819 016d 24       		.byte	0x24
 820 016e 0D       		.uleb128 0xd
 821 016f B5020000 		.4byte	.LASF25
 822 0173 06       		.byte	0x6
 823 0174 42       		.byte	0x42
 824 0175 9C000000 		.4byte	0x9c
 825 0179 28       		.byte	0x28
 826 017a 0D       		.uleb128 0xd
 827 017b CF010000 		.4byte	.LASF26
 828 017f 06       		.byte	0x6
 829 0180 43       		.byte	0x43
 830 0181 A1000000 		.4byte	0xa1
 831 0185 2C       		.byte	0x2c
 832 0186 0D       		.uleb128 0xd
 833 0187 84020000 		.4byte	.LASF27
 834 018b 06       		.byte	0x6
 835 018c 44       		.byte	0x44
 836 018d A1000000 		.4byte	0xa1
 837 0191 30       		.byte	0x30
 838 0192 0D       		.uleb128 0xd
 839 0193 0C010000 		.4byte	.LASF28
 840 0197 06       		.byte	0x6
 841 0198 45       		.byte	0x45
 842 0199 DB000000 		.4byte	0xdb
 843 019d 34       		.byte	0x34
 844 019e 0D       		.uleb128 0xd
 845 019f 9A050000 		.4byte	.LASF29
 846 01a3 06       		.byte	0x6
 847 01a4 46       		.byte	0x46
 848 01a5 9C000000 		.4byte	0x9c
 849 01a9 94       		.byte	0x94
 850 01aa 0D       		.uleb128 0xd
 851 01ab D6020000 		.4byte	.LASF30
 852 01af 06       		.byte	0x6
 853 01b0 47       		.byte	0x47
 854 01b1 F5000000 		.4byte	0xf5
 855 01b5 98       		.byte	0x98
 856 01b6 0D       		.uleb128 0xd
 857 01b7 BA080000 		.4byte	.LASF31
 858 01bb 06       		.byte	0x6
 859 01bc 48       		.byte	0x48
 860 01bd 9C000000 		.4byte	0x9c
 861 01c1 E4       		.byte	0xe4
 862 01c2 0D       		.uleb128 0xd
 863 01c3 D2060000 		.4byte	.LASF32
 864 01c7 06       		.byte	0x6
 865 01c8 49       		.byte	0x49
 866 01c9 A1000000 		.4byte	0xa1
 867 01cd E8       		.byte	0xe8
 868 01ce 00       		.byte	0
 869 01cf 0A       		.uleb128 0xa
ARM GAS  /tmp/ccdF0JIt.s 			page 28


 870 01d0 A1000000 		.4byte	0xa1
 871 01d4 DF010000 		.4byte	0x1df
 872 01d8 0B       		.uleb128 0xb
 873 01d9 A8000000 		.4byte	0xa8
 874 01dd 00       		.byte	0
 875 01de 00       		.byte	0
 876 01df 06       		.uleb128 0x6
 877 01e0 CF010000 		.4byte	0x1cf
 878 01e4 05       		.uleb128 0x5
 879 01e5 DF010000 		.4byte	0x1df
 880 01e9 0A       		.uleb128 0xa
 881 01ea 9C000000 		.4byte	0x9c
 882 01ee F9010000 		.4byte	0x1f9
 883 01f2 0B       		.uleb128 0xb
 884 01f3 A8000000 		.4byte	0xa8
 885 01f7 01       		.byte	0x1
 886 01f8 00       		.byte	0
 887 01f9 05       		.uleb128 0x5
 888 01fa E9010000 		.4byte	0x1e9
 889 01fe 04       		.uleb128 0x4
 890 01ff BA050000 		.4byte	.LASF33
 891 0203 06       		.byte	0x6
 892 0204 4A       		.byte	0x4a
 893 0205 FA000000 		.4byte	0xfa
 894 0209 04       		.uleb128 0x4
 895 020a 58050000 		.4byte	.LASF34
 896 020e 07       		.byte	0x7
 897 020f 07       		.byte	0x7
 898 0210 25000000 		.4byte	0x25
 899 0214 04       		.uleb128 0x4
 900 0215 05050000 		.4byte	.LASF35
 901 0219 08       		.byte	0x8
 902 021a 2C       		.byte	0x2c
 903 021b 5A000000 		.4byte	0x5a
 904 021f 04       		.uleb128 0x4
 905 0220 BE060000 		.4byte	.LASF36
 906 0224 08       		.byte	0x8
 907 0225 72       		.byte	0x72
 908 0226 5A000000 		.4byte	0x5a
 909 022a 0E       		.uleb128 0xe
 910 022b 5C030000 		.4byte	.LASF37
 911 022f 09       		.byte	0x9
 912 0230 6501     		.2byte	0x165
 913 0232 2C000000 		.4byte	0x2c
 914 0236 0F       		.uleb128 0xf
 915 0237 04       		.byte	0x4
 916 0238 08       		.byte	0x8
 917 0239 A6       		.byte	0xa6
 918 023a 55020000 		.4byte	0x255
 919 023e 10       		.uleb128 0x10
 920 023f 4F030000 		.4byte	.LASF38
 921 0243 08       		.byte	0x8
 922 0244 A8       		.byte	0xa8
 923 0245 2A020000 		.4byte	0x22a
 924 0249 10       		.uleb128 0x10
 925 024a 96020000 		.4byte	.LASF39
 926 024e 08       		.byte	0x8
ARM GAS  /tmp/ccdF0JIt.s 			page 29


 927 024f A9       		.byte	0xa9
 928 0250 55020000 		.4byte	0x255
 929 0254 00       		.byte	0
 930 0255 0A       		.uleb128 0xa
 931 0256 3A000000 		.4byte	0x3a
 932 025a 65020000 		.4byte	0x265
 933 025e 0B       		.uleb128 0xb
 934 025f A8000000 		.4byte	0xa8
 935 0263 03       		.byte	0x3
 936 0264 00       		.byte	0
 937 0265 0C       		.uleb128 0xc
 938 0266 08       		.byte	0x8
 939 0267 08       		.byte	0x8
 940 0268 A3       		.byte	0xa3
 941 0269 86020000 		.4byte	0x286
 942 026d 0D       		.uleb128 0xd
 943 026e 9E060000 		.4byte	.LASF40
 944 0272 08       		.byte	0x8
 945 0273 A5       		.byte	0xa5
 946 0274 25000000 		.4byte	0x25
 947 0278 00       		.byte	0
 948 0279 0D       		.uleb128 0xd
 949 027a 5D070000 		.4byte	.LASF41
 950 027e 08       		.byte	0x8
 951 027f AA       		.byte	0xaa
 952 0280 36020000 		.4byte	0x236
 953 0284 04       		.byte	0x4
 954 0285 00       		.byte	0
 955 0286 04       		.uleb128 0x4
 956 0287 EA050000 		.4byte	.LASF42
 957 028b 08       		.byte	0x8
 958 028c AB       		.byte	0xab
 959 028d 65020000 		.4byte	0x265
 960 0291 04       		.uleb128 0x4
 961 0292 CF040000 		.4byte	.LASF43
 962 0296 08       		.byte	0x8
 963 0297 AF       		.byte	0xaf
 964 0298 09020000 		.4byte	0x209
 965 029c 04       		.uleb128 0x4
 966 029d 89070000 		.4byte	.LASF44
 967 02a1 0A       		.byte	0xa
 968 02a2 16       		.byte	0x16
 969 02a3 6C000000 		.4byte	0x6c
 970 02a7 11       		.uleb128 0x11
 971 02a8 47020000 		.4byte	.LASF49
 972 02ac 18       		.byte	0x18
 973 02ad 0A       		.byte	0xa
 974 02ae 2D       		.byte	0x2d
 975 02af FA020000 		.4byte	0x2fa
 976 02b3 0D       		.uleb128 0xd
 977 02b4 4A070000 		.4byte	.LASF45
 978 02b8 0A       		.byte	0xa
 979 02b9 2F       		.byte	0x2f
 980 02ba FA020000 		.4byte	0x2fa
 981 02be 00       		.byte	0
 982 02bf 12       		.uleb128 0x12
 983 02c0 5F6B00   		.ascii	"_k\000"
ARM GAS  /tmp/ccdF0JIt.s 			page 30


 984 02c3 0A       		.byte	0xa
 985 02c4 30       		.byte	0x30
 986 02c5 25000000 		.4byte	0x25
 987 02c9 04       		.byte	0x4
 988 02ca 0D       		.uleb128 0xd
 989 02cb 89060000 		.4byte	.LASF46
 990 02cf 0A       		.byte	0xa
 991 02d0 30       		.byte	0x30
 992 02d1 25000000 		.4byte	0x25
 993 02d5 08       		.byte	0x8
 994 02d6 0D       		.uleb128 0xd
 995 02d7 2D020000 		.4byte	.LASF47
 996 02db 0A       		.byte	0xa
 997 02dc 30       		.byte	0x30
 998 02dd 25000000 		.4byte	0x25
 999 02e1 0C       		.byte	0xc
 1000 02e2 0D       		.uleb128 0xd
 1001 02e3 8A010000 		.4byte	.LASF48
 1002 02e7 0A       		.byte	0xa
 1003 02e8 30       		.byte	0x30
 1004 02e9 25000000 		.4byte	0x25
 1005 02ed 10       		.byte	0x10
 1006 02ee 12       		.uleb128 0x12
 1007 02ef 5F7800   		.ascii	"_x\000"
 1008 02f2 0A       		.byte	0xa
 1009 02f3 31       		.byte	0x31
 1010 02f4 00030000 		.4byte	0x300
 1011 02f8 14       		.byte	0x14
 1012 02f9 00       		.byte	0
 1013 02fa 13       		.uleb128 0x13
 1014 02fb 04       		.byte	0x4
 1015 02fc A7020000 		.4byte	0x2a7
 1016 0300 0A       		.uleb128 0xa
 1017 0301 9C020000 		.4byte	0x29c
 1018 0305 10030000 		.4byte	0x310
 1019 0309 0B       		.uleb128 0xb
 1020 030a A8000000 		.4byte	0xa8
 1021 030e 00       		.byte	0
 1022 030f 00       		.byte	0
 1023 0310 11       		.uleb128 0x11
 1024 0311 7F020000 		.4byte	.LASF50
 1025 0315 24       		.byte	0x24
 1026 0316 0A       		.byte	0xa
 1027 0317 35       		.byte	0x35
 1028 0318 89030000 		.4byte	0x389
 1029 031c 0D       		.uleb128 0xd
 1030 031d DA000000 		.4byte	.LASF51
 1031 0321 0A       		.byte	0xa
 1032 0322 37       		.byte	0x37
 1033 0323 25000000 		.4byte	0x25
 1034 0327 00       		.byte	0
 1035 0328 0D       		.uleb128 0xd
 1036 0329 8D080000 		.4byte	.LASF52
 1037 032d 0A       		.byte	0xa
 1038 032e 38       		.byte	0x38
 1039 032f 25000000 		.4byte	0x25
 1040 0333 04       		.byte	0x4
ARM GAS  /tmp/ccdF0JIt.s 			page 31


 1041 0334 0D       		.uleb128 0xd
 1042 0335 16010000 		.4byte	.LASF53
 1043 0339 0A       		.byte	0xa
 1044 033a 39       		.byte	0x39
 1045 033b 25000000 		.4byte	0x25
 1046 033f 08       		.byte	0x8
 1047 0340 0D       		.uleb128 0xd
 1048 0341 C4080000 		.4byte	.LASF54
 1049 0345 0A       		.byte	0xa
 1050 0346 3A       		.byte	0x3a
 1051 0347 25000000 		.4byte	0x25
 1052 034b 0C       		.byte	0xc
 1053 034c 0D       		.uleb128 0xd
 1054 034d DF040000 		.4byte	.LASF55
 1055 0351 0A       		.byte	0xa
 1056 0352 3B       		.byte	0x3b
 1057 0353 25000000 		.4byte	0x25
 1058 0357 10       		.byte	0x10
 1059 0358 0D       		.uleb128 0xd
 1060 0359 89030000 		.4byte	.LASF56
 1061 035d 0A       		.byte	0xa
 1062 035e 3C       		.byte	0x3c
 1063 035f 25000000 		.4byte	0x25
 1064 0363 14       		.byte	0x14
 1065 0364 0D       		.uleb128 0xd
 1066 0365 E1070000 		.4byte	.LASF57
 1067 0369 0A       		.byte	0xa
 1068 036a 3D       		.byte	0x3d
 1069 036b 25000000 		.4byte	0x25
 1070 036f 18       		.byte	0x18
 1071 0370 0D       		.uleb128 0xd
 1072 0371 B0050000 		.4byte	.LASF58
 1073 0375 0A       		.byte	0xa
 1074 0376 3E       		.byte	0x3e
 1075 0377 25000000 		.4byte	0x25
 1076 037b 1C       		.byte	0x1c
 1077 037c 0D       		.uleb128 0xd
 1078 037d 73080000 		.4byte	.LASF59
 1079 0381 0A       		.byte	0xa
 1080 0382 3F       		.byte	0x3f
 1081 0383 25000000 		.4byte	0x25
 1082 0387 20       		.byte	0x20
 1083 0388 00       		.byte	0
 1084 0389 14       		.uleb128 0x14
 1085 038a 25010000 		.4byte	.LASF60
 1086 038e 0801     		.2byte	0x108
 1087 0390 0A       		.byte	0xa
 1088 0391 48       		.byte	0x48
 1089 0392 C9030000 		.4byte	0x3c9
 1090 0396 0D       		.uleb128 0xd
 1091 0397 FA010000 		.4byte	.LASF61
 1092 039b 0A       		.byte	0xa
 1093 039c 49       		.byte	0x49
 1094 039d C9030000 		.4byte	0x3c9
 1095 03a1 00       		.byte	0
 1096 03a2 0D       		.uleb128 0xd
 1097 03a3 7E050000 		.4byte	.LASF62
ARM GAS  /tmp/ccdF0JIt.s 			page 32


 1098 03a7 0A       		.byte	0xa
 1099 03a8 4A       		.byte	0x4a
 1100 03a9 C9030000 		.4byte	0x3c9
 1101 03ad 80       		.byte	0x80
 1102 03ae 15       		.uleb128 0x15
 1103 03af 65070000 		.4byte	.LASF63
 1104 03b3 0A       		.byte	0xa
 1105 03b4 4C       		.byte	0x4c
 1106 03b5 9C020000 		.4byte	0x29c
 1107 03b9 0001     		.2byte	0x100
 1108 03bb 15       		.uleb128 0x15
 1109 03bc 82010000 		.4byte	.LASF64
 1110 03c0 0A       		.byte	0xa
 1111 03c1 4F       		.byte	0x4f
 1112 03c2 9C020000 		.4byte	0x29c
 1113 03c6 0401     		.2byte	0x104
 1114 03c8 00       		.byte	0
 1115 03c9 0A       		.uleb128 0xa
 1116 03ca A6000000 		.4byte	0xa6
 1117 03ce D9030000 		.4byte	0x3d9
 1118 03d2 0B       		.uleb128 0xb
 1119 03d3 A8000000 		.4byte	0xa8
 1120 03d7 1F       		.byte	0x1f
 1121 03d8 00       		.byte	0
 1122 03d9 14       		.uleb128 0x14
 1123 03da E8040000 		.4byte	.LASF65
 1124 03de 9001     		.2byte	0x190
 1125 03e0 0A       		.byte	0xa
 1126 03e1 5B       		.byte	0x5b
 1127 03e2 17040000 		.4byte	0x417
 1128 03e6 0D       		.uleb128 0xd
 1129 03e7 4A070000 		.4byte	.LASF45
 1130 03eb 0A       		.byte	0xa
 1131 03ec 5C       		.byte	0x5c
 1132 03ed 17040000 		.4byte	0x417
 1133 03f1 00       		.byte	0
 1134 03f2 0D       		.uleb128 0xd
 1135 03f3 58060000 		.4byte	.LASF66
 1136 03f7 0A       		.byte	0xa
 1137 03f8 5D       		.byte	0x5d
 1138 03f9 25000000 		.4byte	0x25
 1139 03fd 04       		.byte	0x4
 1140 03fe 0D       		.uleb128 0xd
 1141 03ff 1D020000 		.4byte	.LASF67
 1142 0403 0A       		.byte	0xa
 1143 0404 5F       		.byte	0x5f
 1144 0405 1D040000 		.4byte	0x41d
 1145 0409 08       		.byte	0x8
 1146 040a 0D       		.uleb128 0xd
 1147 040b 25010000 		.4byte	.LASF60
 1148 040f 0A       		.byte	0xa
 1149 0410 60       		.byte	0x60
 1150 0411 89030000 		.4byte	0x389
 1151 0415 88       		.byte	0x88
 1152 0416 00       		.byte	0
 1153 0417 13       		.uleb128 0x13
 1154 0418 04       		.byte	0x4
ARM GAS  /tmp/ccdF0JIt.s 			page 33


 1155 0419 D9030000 		.4byte	0x3d9
 1156 041d 0A       		.uleb128 0xa
 1157 041e 2D040000 		.4byte	0x42d
 1158 0422 2D040000 		.4byte	0x42d
 1159 0426 0B       		.uleb128 0xb
 1160 0427 A8000000 		.4byte	0xa8
 1161 042b 1F       		.byte	0x1f
 1162 042c 00       		.byte	0
 1163 042d 13       		.uleb128 0x13
 1164 042e 04       		.byte	0x4
 1165 042f 33040000 		.4byte	0x433
 1166 0433 16       		.uleb128 0x16
 1167 0434 11       		.uleb128 0x11
 1168 0435 BF050000 		.4byte	.LASF68
 1169 0439 08       		.byte	0x8
 1170 043a 0A       		.byte	0xa
 1171 043b 73       		.byte	0x73
 1172 043c 59040000 		.4byte	0x459
 1173 0440 0D       		.uleb128 0xd
 1174 0441 FC000000 		.4byte	.LASF69
 1175 0445 0A       		.byte	0xa
 1176 0446 74       		.byte	0x74
 1177 0447 59040000 		.4byte	0x459
 1178 044b 00       		.byte	0
 1179 044c 0D       		.uleb128 0xd
 1180 044d FB060000 		.4byte	.LASF70
 1181 0451 0A       		.byte	0xa
 1182 0452 75       		.byte	0x75
 1183 0453 25000000 		.4byte	0x25
 1184 0457 04       		.byte	0x4
 1185 0458 00       		.byte	0
 1186 0459 13       		.uleb128 0x13
 1187 045a 04       		.byte	0x4
 1188 045b 3A000000 		.4byte	0x3a
 1189 045f 11       		.uleb128 0x11
 1190 0460 0B060000 		.4byte	.LASF71
 1191 0464 68       		.byte	0x68
 1192 0465 0A       		.byte	0xa
 1193 0466 B3       		.byte	0xb3
 1194 0467 89050000 		.4byte	0x589
 1195 046b 12       		.uleb128 0x12
 1196 046c 5F7000   		.ascii	"_p\000"
 1197 046f 0A       		.byte	0xa
 1198 0470 B4       		.byte	0xb4
 1199 0471 59040000 		.4byte	0x459
 1200 0475 00       		.byte	0
 1201 0476 12       		.uleb128 0x12
 1202 0477 5F7200   		.ascii	"_r\000"
 1203 047a 0A       		.byte	0xa
 1204 047b B5       		.byte	0xb5
 1205 047c 25000000 		.4byte	0x25
 1206 0480 04       		.byte	0x4
 1207 0481 12       		.uleb128 0x12
 1208 0482 5F7700   		.ascii	"_w\000"
 1209 0485 0A       		.byte	0xa
 1210 0486 B6       		.byte	0xb6
 1211 0487 25000000 		.4byte	0x25
ARM GAS  /tmp/ccdF0JIt.s 			page 34


 1212 048b 08       		.byte	0x8
 1213 048c 0D       		.uleb128 0xd
 1214 048d 7B010000 		.4byte	.LASF72
 1215 0491 0A       		.byte	0xa
 1216 0492 B7       		.byte	0xb7
 1217 0493 41000000 		.4byte	0x41
 1218 0497 0C       		.byte	0xc
 1219 0498 0D       		.uleb128 0xd
 1220 0499 D0020000 		.4byte	.LASF73
 1221 049d 0A       		.byte	0xa
 1222 049e B8       		.byte	0xb8
 1223 049f 41000000 		.4byte	0x41
 1224 04a3 0E       		.byte	0xe
 1225 04a4 12       		.uleb128 0x12
 1226 04a5 5F626600 		.ascii	"_bf\000"
 1227 04a9 0A       		.byte	0xa
 1228 04aa B9       		.byte	0xb9
 1229 04ab 34040000 		.4byte	0x434
 1230 04af 10       		.byte	0x10
 1231 04b0 0D       		.uleb128 0xd
 1232 04b1 87000000 		.4byte	.LASF74
 1233 04b5 0A       		.byte	0xa
 1234 04b6 BA       		.byte	0xba
 1235 04b7 25000000 		.4byte	0x25
 1236 04bb 18       		.byte	0x18
 1237 04bc 0D       		.uleb128 0xd
 1238 04bd 4B010000 		.4byte	.LASF75
 1239 04c1 0A       		.byte	0xa
 1240 04c2 C1       		.byte	0xc1
 1241 04c3 A6000000 		.4byte	0xa6
 1242 04c7 1C       		.byte	0x1c
 1243 04c8 0D       		.uleb128 0xd
 1244 04c9 6A050000 		.4byte	.LASF76
 1245 04cd 0A       		.byte	0xa
 1246 04ce C3       		.byte	0xc3
 1247 04cf F6060000 		.4byte	0x6f6
 1248 04d3 20       		.byte	0x20
 1249 04d4 0D       		.uleb128 0xd
 1250 04d5 82030000 		.4byte	.LASF77
 1251 04d9 0A       		.byte	0xa
 1252 04da C5       		.byte	0xc5
 1253 04db 20070000 		.4byte	0x720
 1254 04df 24       		.byte	0x24
 1255 04e0 0D       		.uleb128 0xd
 1256 04e1 AF060000 		.4byte	.LASF78
 1257 04e5 0A       		.byte	0xa
 1258 04e6 C8       		.byte	0xc8
 1259 04e7 44070000 		.4byte	0x744
 1260 04eb 28       		.byte	0x28
 1261 04ec 0D       		.uleb128 0xd
 1262 04ed E3000000 		.4byte	.LASF79
 1263 04f1 0A       		.byte	0xa
 1264 04f2 C9       		.byte	0xc9
 1265 04f3 5E070000 		.4byte	0x75e
 1266 04f7 2C       		.byte	0x2c
 1267 04f8 12       		.uleb128 0x12
 1268 04f9 5F756200 		.ascii	"_ub\000"
ARM GAS  /tmp/ccdF0JIt.s 			page 35


 1269 04fd 0A       		.byte	0xa
 1270 04fe CC       		.byte	0xcc
 1271 04ff 34040000 		.4byte	0x434
 1272 0503 30       		.byte	0x30
 1273 0504 12       		.uleb128 0x12
 1274 0505 5F757000 		.ascii	"_up\000"
 1275 0509 0A       		.byte	0xa
 1276 050a CD       		.byte	0xcd
 1277 050b 59040000 		.4byte	0x459
 1278 050f 38       		.byte	0x38
 1279 0510 12       		.uleb128 0x12
 1280 0511 5F757200 		.ascii	"_ur\000"
 1281 0515 0A       		.byte	0xa
 1282 0516 CE       		.byte	0xce
 1283 0517 25000000 		.4byte	0x25
 1284 051b 3C       		.byte	0x3c
 1285 051c 0D       		.uleb128 0xd
 1286 051d F6000000 		.4byte	.LASF80
 1287 0521 0A       		.byte	0xa
 1288 0522 D1       		.byte	0xd1
 1289 0523 64070000 		.4byte	0x764
 1290 0527 40       		.byte	0x40
 1291 0528 0D       		.uleb128 0xd
 1292 0529 31080000 		.4byte	.LASF81
 1293 052d 0A       		.byte	0xa
 1294 052e D2       		.byte	0xd2
 1295 052f 74070000 		.4byte	0x774
 1296 0533 43       		.byte	0x43
 1297 0534 12       		.uleb128 0x12
 1298 0535 5F6C6200 		.ascii	"_lb\000"
 1299 0539 0A       		.byte	0xa
 1300 053a D5       		.byte	0xd5
 1301 053b 34040000 		.4byte	0x434
 1302 053f 44       		.byte	0x44
 1303 0540 0D       		.uleb128 0xd
 1304 0541 DC060000 		.4byte	.LASF82
 1305 0545 0A       		.byte	0xa
 1306 0546 D8       		.byte	0xd8
 1307 0547 25000000 		.4byte	0x25
 1308 054b 4C       		.byte	0x4c
 1309 054c 0D       		.uleb128 0xd
 1310 054d 09040000 		.4byte	.LASF83
 1311 0551 0A       		.byte	0xa
 1312 0552 D9       		.byte	0xd9
 1313 0553 14020000 		.4byte	0x214
 1314 0557 50       		.byte	0x50
 1315 0558 0D       		.uleb128 0xd
 1316 0559 41000000 		.4byte	.LASF84
 1317 055d 0A       		.byte	0xa
 1318 055e DC       		.byte	0xdc
 1319 055f A7050000 		.4byte	0x5a7
 1320 0563 54       		.byte	0x54
 1321 0564 0D       		.uleb128 0xd
 1322 0565 76030000 		.4byte	.LASF85
 1323 0569 0A       		.byte	0xa
 1324 056a E0       		.byte	0xe0
 1325 056b 91020000 		.4byte	0x291
ARM GAS  /tmp/ccdF0JIt.s 			page 36


 1326 056f 58       		.byte	0x58
 1327 0570 0D       		.uleb128 0xd
 1328 0571 8D020000 		.4byte	.LASF86
 1329 0575 0A       		.byte	0xa
 1330 0576 E2       		.byte	0xe2
 1331 0577 86020000 		.4byte	0x286
 1332 057b 5C       		.byte	0x5c
 1333 057c 0D       		.uleb128 0xd
 1334 057d C4000000 		.4byte	.LASF87
 1335 0581 0A       		.byte	0xa
 1336 0582 E3       		.byte	0xe3
 1337 0583 25000000 		.4byte	0x25
 1338 0587 64       		.byte	0x64
 1339 0588 00       		.byte	0
 1340 0589 17       		.uleb128 0x17
 1341 058a 25000000 		.4byte	0x25
 1342 058e A7050000 		.4byte	0x5a7
 1343 0592 18       		.uleb128 0x18
 1344 0593 A7050000 		.4byte	0x5a7
 1345 0597 18       		.uleb128 0x18
 1346 0598 A6000000 		.4byte	0xa6
 1347 059c 18       		.uleb128 0x18
 1348 059d E4060000 		.4byte	0x6e4
 1349 05a1 18       		.uleb128 0x18
 1350 05a2 25000000 		.4byte	0x25
 1351 05a6 00       		.byte	0
 1352 05a7 13       		.uleb128 0x13
 1353 05a8 04       		.byte	0x4
 1354 05a9 B2050000 		.4byte	0x5b2
 1355 05ad 06       		.uleb128 0x6
 1356 05ae A7050000 		.4byte	0x5a7
 1357 05b2 19       		.uleb128 0x19
 1358 05b3 91060000 		.4byte	.LASF88
 1359 05b7 2804     		.2byte	0x428
 1360 05b9 0A       		.byte	0xa
 1361 05ba 3802     		.2byte	0x238
 1362 05bc E4060000 		.4byte	0x6e4
 1363 05c0 1A       		.uleb128 0x1a
 1364 05c1 CB060000 		.4byte	.LASF89
 1365 05c5 0A       		.byte	0xa
 1366 05c6 3A02     		.2byte	0x23a
 1367 05c8 25000000 		.4byte	0x25
 1368 05cc 00       		.byte	0
 1369 05cd 1A       		.uleb128 0x1a
 1370 05ce F1070000 		.4byte	.LASF90
 1371 05d2 0A       		.byte	0xa
 1372 05d3 3F02     		.2byte	0x23f
 1373 05d5 CB070000 		.4byte	0x7cb
 1374 05d9 04       		.byte	0x4
 1375 05da 1A       		.uleb128 0x1a
 1376 05db D9070000 		.4byte	.LASF91
 1377 05df 0A       		.byte	0xa
 1378 05e0 3F02     		.2byte	0x23f
 1379 05e2 CB070000 		.4byte	0x7cb
 1380 05e6 08       		.byte	0x8
 1381 05e7 1A       		.uleb128 0x1a
 1382 05e8 3F020000 		.4byte	.LASF92
ARM GAS  /tmp/ccdF0JIt.s 			page 37


 1383 05ec 0A       		.byte	0xa
 1384 05ed 3F02     		.2byte	0x23f
 1385 05ef CB070000 		.4byte	0x7cb
 1386 05f3 0C       		.byte	0xc
 1387 05f4 1A       		.uleb128 0x1a
 1388 05f5 53060000 		.4byte	.LASF93
 1389 05f9 0A       		.byte	0xa
 1390 05fa 4102     		.2byte	0x241
 1391 05fc 25000000 		.4byte	0x25
 1392 0600 10       		.byte	0x10
 1393 0601 1A       		.uleb128 0x1a
 1394 0602 29000000 		.4byte	.LASF94
 1395 0606 0A       		.byte	0xa
 1396 0607 4202     		.2byte	0x242
 1397 0609 AD090000 		.4byte	0x9ad
 1398 060d 14       		.byte	0x14
 1399 060e 1A       		.uleb128 0x1a
 1400 060f BA070000 		.4byte	.LASF95
 1401 0613 0A       		.byte	0xa
 1402 0614 4402     		.2byte	0x244
 1403 0616 25000000 		.4byte	0x25
 1404 061a 30       		.byte	0x30
 1405 061b 1A       		.uleb128 0x1a
 1406 061c 5D060000 		.4byte	.LASF96
 1407 0620 0A       		.byte	0xa
 1408 0621 4502     		.2byte	0x245
 1409 0623 1A070000 		.4byte	0x71a
 1410 0627 34       		.byte	0x34
 1411 0628 1A       		.uleb128 0x1a
 1412 0629 FA040000 		.4byte	.LASF97
 1413 062d 0A       		.byte	0xa
 1414 062e 4702     		.2byte	0x247
 1415 0630 25000000 		.4byte	0x25
 1416 0634 38       		.byte	0x38
 1417 0635 1A       		.uleb128 0x1a
 1418 0636 75060000 		.4byte	.LASF98
 1419 063a 0A       		.byte	0xa
 1420 063b 4902     		.2byte	0x249
 1421 063d C8090000 		.4byte	0x9c8
 1422 0641 3C       		.byte	0x3c
 1423 0642 1A       		.uleb128 0x1a
 1424 0643 47030000 		.4byte	.LASF99
 1425 0647 0A       		.byte	0xa
 1426 0648 4C02     		.2byte	0x24c
 1427 064a FA020000 		.4byte	0x2fa
 1428 064e 40       		.byte	0x40
 1429 064f 1A       		.uleb128 0x1a
 1430 0650 97010000 		.4byte	.LASF100
 1431 0654 0A       		.byte	0xa
 1432 0655 4D02     		.2byte	0x24d
 1433 0657 25000000 		.4byte	0x25
 1434 065b 44       		.byte	0x44
 1435 065c 1A       		.uleb128 0x1a
 1436 065d B5080000 		.4byte	.LASF101
 1437 0661 0A       		.byte	0xa
 1438 0662 4E02     		.2byte	0x24e
 1439 0664 FA020000 		.4byte	0x2fa
ARM GAS  /tmp/ccdF0JIt.s 			page 38


 1440 0668 48       		.byte	0x48
 1441 0669 1A       		.uleb128 0x1a
 1442 066a D9050000 		.4byte	.LASF102
 1443 066e 0A       		.byte	0xa
 1444 066f 4F02     		.2byte	0x24f
 1445 0671 CE090000 		.4byte	0x9ce
 1446 0675 4C       		.byte	0x4c
 1447 0676 1A       		.uleb128 0x1a
 1448 0677 AD020000 		.4byte	.LASF103
 1449 067b 0A       		.byte	0xa
 1450 067c 5202     		.2byte	0x252
 1451 067e 25000000 		.4byte	0x25
 1452 0682 50       		.byte	0x50
 1453 0683 1A       		.uleb128 0x1a
 1454 0684 B6010000 		.4byte	.LASF104
 1455 0688 0A       		.byte	0xa
 1456 0689 5302     		.2byte	0x253
 1457 068b E4060000 		.4byte	0x6e4
 1458 068f 54       		.byte	0x54
 1459 0690 1A       		.uleb128 0x1a
 1460 0691 95050000 		.4byte	.LASF105
 1461 0695 0A       		.byte	0xa
 1462 0696 7602     		.2byte	0x276
 1463 0698 8B090000 		.4byte	0x98b
 1464 069c 58       		.byte	0x58
 1465 069d 1B       		.uleb128 0x1b
 1466 069e E8040000 		.4byte	.LASF65
 1467 06a2 0A       		.byte	0xa
 1468 06a3 7A02     		.2byte	0x27a
 1469 06a5 17040000 		.4byte	0x417
 1470 06a9 4801     		.2byte	0x148
 1471 06ab 1B       		.uleb128 0x1b
 1472 06ac 1B030000 		.4byte	.LASF106
 1473 06b0 0A       		.byte	0xa
 1474 06b1 7B02     		.2byte	0x27b
 1475 06b3 D9030000 		.4byte	0x3d9
 1476 06b7 4C01     		.2byte	0x14c
 1477 06b9 1B       		.uleb128 0x1b
 1478 06ba FE020000 		.4byte	.LASF107
 1479 06be 0A       		.byte	0xa
 1480 06bf 7F02     		.2byte	0x27f
 1481 06c1 DF090000 		.4byte	0x9df
 1482 06c5 DC02     		.2byte	0x2dc
 1483 06c7 1B       		.uleb128 0x1b
 1484 06c8 53010000 		.4byte	.LASF108
 1485 06cc 0A       		.byte	0xa
 1486 06cd 8402     		.2byte	0x284
 1487 06cf 90070000 		.4byte	0x790
 1488 06d3 E002     		.2byte	0x2e0
 1489 06d5 1B       		.uleb128 0x1b
 1490 06d6 20010000 		.4byte	.LASF109
 1491 06da 0A       		.byte	0xa
 1492 06db 8502     		.2byte	0x285
 1493 06dd EB090000 		.4byte	0x9eb
 1494 06e1 EC02     		.2byte	0x2ec
 1495 06e3 00       		.byte	0
 1496 06e4 13       		.uleb128 0x13
ARM GAS  /tmp/ccdF0JIt.s 			page 39


 1497 06e5 04       		.byte	0x4
 1498 06e6 EA060000 		.4byte	0x6ea
 1499 06ea 03       		.uleb128 0x3
 1500 06eb 01       		.byte	0x1
 1501 06ec 08       		.byte	0x8
 1502 06ed C6060000 		.4byte	.LASF110
 1503 06f1 06       		.uleb128 0x6
 1504 06f2 EA060000 		.4byte	0x6ea
 1505 06f6 13       		.uleb128 0x13
 1506 06f7 04       		.byte	0x4
 1507 06f8 89050000 		.4byte	0x589
 1508 06fc 17       		.uleb128 0x17
 1509 06fd 25000000 		.4byte	0x25
 1510 0701 1A070000 		.4byte	0x71a
 1511 0705 18       		.uleb128 0x18
 1512 0706 A7050000 		.4byte	0x5a7
 1513 070a 18       		.uleb128 0x18
 1514 070b A6000000 		.4byte	0xa6
 1515 070f 18       		.uleb128 0x18
 1516 0710 1A070000 		.4byte	0x71a
 1517 0714 18       		.uleb128 0x18
 1518 0715 25000000 		.4byte	0x25
 1519 0719 00       		.byte	0
 1520 071a 13       		.uleb128 0x13
 1521 071b 04       		.byte	0x4
 1522 071c F1060000 		.4byte	0x6f1
 1523 0720 13       		.uleb128 0x13
 1524 0721 04       		.byte	0x4
 1525 0722 FC060000 		.4byte	0x6fc
 1526 0726 17       		.uleb128 0x17
 1527 0727 1F020000 		.4byte	0x21f
 1528 072b 44070000 		.4byte	0x744
 1529 072f 18       		.uleb128 0x18
 1530 0730 A7050000 		.4byte	0x5a7
 1531 0734 18       		.uleb128 0x18
 1532 0735 A6000000 		.4byte	0xa6
 1533 0739 18       		.uleb128 0x18
 1534 073a 1F020000 		.4byte	0x21f
 1535 073e 18       		.uleb128 0x18
 1536 073f 25000000 		.4byte	0x25
 1537 0743 00       		.byte	0
 1538 0744 13       		.uleb128 0x13
 1539 0745 04       		.byte	0x4
 1540 0746 26070000 		.4byte	0x726
 1541 074a 17       		.uleb128 0x17
 1542 074b 25000000 		.4byte	0x25
 1543 074f 5E070000 		.4byte	0x75e
 1544 0753 18       		.uleb128 0x18
 1545 0754 A7050000 		.4byte	0x5a7
 1546 0758 18       		.uleb128 0x18
 1547 0759 A6000000 		.4byte	0xa6
 1548 075d 00       		.byte	0
 1549 075e 13       		.uleb128 0x13
 1550 075f 04       		.byte	0x4
 1551 0760 4A070000 		.4byte	0x74a
 1552 0764 0A       		.uleb128 0xa
 1553 0765 3A000000 		.4byte	0x3a
ARM GAS  /tmp/ccdF0JIt.s 			page 40


 1554 0769 74070000 		.4byte	0x774
 1555 076d 0B       		.uleb128 0xb
 1556 076e A8000000 		.4byte	0xa8
 1557 0772 02       		.byte	0x2
 1558 0773 00       		.byte	0
 1559 0774 0A       		.uleb128 0xa
 1560 0775 3A000000 		.4byte	0x3a
 1561 0779 84070000 		.4byte	0x784
 1562 077d 0B       		.uleb128 0xb
 1563 077e A8000000 		.4byte	0xa8
 1564 0782 00       		.byte	0
 1565 0783 00       		.byte	0
 1566 0784 0E       		.uleb128 0xe
 1567 0785 E3050000 		.4byte	.LASF111
 1568 0789 0A       		.byte	0xa
 1569 078a 1D01     		.2byte	0x11d
 1570 078c 5F040000 		.4byte	0x45f
 1571 0790 1C       		.uleb128 0x1c
 1572 0791 EB070000 		.4byte	.LASF112
 1573 0795 0C       		.byte	0xc
 1574 0796 0A       		.byte	0xa
 1575 0797 2101     		.2byte	0x121
 1576 0799 C5070000 		.4byte	0x7c5
 1577 079d 1A       		.uleb128 0x1a
 1578 079e 4A070000 		.4byte	.LASF45
 1579 07a2 0A       		.byte	0xa
 1580 07a3 2301     		.2byte	0x123
 1581 07a5 C5070000 		.4byte	0x7c5
 1582 07a9 00       		.byte	0
 1583 07aa 1A       		.uleb128 0x1a
 1584 07ab E0020000 		.4byte	.LASF113
 1585 07af 0A       		.byte	0xa
 1586 07b0 2401     		.2byte	0x124
 1587 07b2 25000000 		.4byte	0x25
 1588 07b6 04       		.byte	0x4
 1589 07b7 1A       		.uleb128 0x1a
 1590 07b8 4D060000 		.4byte	.LASF114
 1591 07bc 0A       		.byte	0xa
 1592 07bd 2501     		.2byte	0x125
 1593 07bf CB070000 		.4byte	0x7cb
 1594 07c3 08       		.byte	0x8
 1595 07c4 00       		.byte	0
 1596 07c5 13       		.uleb128 0x13
 1597 07c6 04       		.byte	0x4
 1598 07c7 90070000 		.4byte	0x790
 1599 07cb 13       		.uleb128 0x13
 1600 07cc 04       		.byte	0x4
 1601 07cd 84070000 		.4byte	0x784
 1602 07d1 1C       		.uleb128 0x1c
 1603 07d2 21000000 		.4byte	.LASF115
 1604 07d6 0E       		.byte	0xe
 1605 07d7 0A       		.byte	0xa
 1606 07d8 3D01     		.2byte	0x13d
 1607 07da 06080000 		.4byte	0x806
 1608 07de 1A       		.uleb128 0x1a
 1609 07df 98060000 		.4byte	.LASF116
 1610 07e3 0A       		.byte	0xa
ARM GAS  /tmp/ccdF0JIt.s 			page 41


 1611 07e4 3E01     		.2byte	0x13e
 1612 07e6 06080000 		.4byte	0x806
 1613 07ea 00       		.byte	0
 1614 07eb 1A       		.uleb128 0x1a
 1615 07ec 7C030000 		.4byte	.LASF117
 1616 07f0 0A       		.byte	0xa
 1617 07f1 3F01     		.2byte	0x13f
 1618 07f3 06080000 		.4byte	0x806
 1619 07f7 06       		.byte	0x6
 1620 07f8 1A       		.uleb128 0x1a
 1621 07f9 7C070000 		.4byte	.LASF118
 1622 07fd 0A       		.byte	0xa
 1623 07fe 4001     		.2byte	0x140
 1624 0800 48000000 		.4byte	0x48
 1625 0804 0C       		.byte	0xc
 1626 0805 00       		.byte	0
 1627 0806 0A       		.uleb128 0xa
 1628 0807 48000000 		.4byte	0x48
 1629 080b 16080000 		.4byte	0x816
 1630 080f 0B       		.uleb128 0xb
 1631 0810 A8000000 		.4byte	0xa8
 1632 0814 02       		.byte	0x2
 1633 0815 00       		.byte	0
 1634 0816 1D       		.uleb128 0x1d
 1635 0817 D0       		.byte	0xd0
 1636 0818 0A       		.byte	0xa
 1637 0819 5702     		.2byte	0x257
 1638 081b 17090000 		.4byte	0x917
 1639 081f 1A       		.uleb128 0x1a
 1640 0820 A0030000 		.4byte	.LASF119
 1641 0824 0A       		.byte	0xa
 1642 0825 5902     		.2byte	0x259
 1643 0827 2C000000 		.4byte	0x2c
 1644 082b 00       		.byte	0
 1645 082c 1A       		.uleb128 0x1a
 1646 082d 50070000 		.4byte	.LASF120
 1647 0831 0A       		.byte	0xa
 1648 0832 5A02     		.2byte	0x25a
 1649 0834 E4060000 		.4byte	0x6e4
 1650 0838 04       		.byte	0x4
 1651 0839 1A       		.uleb128 0x1a
 1652 083a 30030000 		.4byte	.LASF121
 1653 083e 0A       		.byte	0xa
 1654 083f 5B02     		.2byte	0x25b
 1655 0841 17090000 		.4byte	0x917
 1656 0845 08       		.byte	0x8
 1657 0846 1A       		.uleb128 0x1a
 1658 0847 7E080000 		.4byte	.LASF122
 1659 084b 0A       		.byte	0xa
 1660 084c 5C02     		.2byte	0x25c
 1661 084e 10030000 		.4byte	0x310
 1662 0852 24       		.byte	0x24
 1663 0853 1A       		.uleb128 0x1a
 1664 0854 4F020000 		.4byte	.LASF123
 1665 0858 0A       		.byte	0xa
 1666 0859 5D02     		.2byte	0x25d
 1667 085b 25000000 		.4byte	0x25
ARM GAS  /tmp/ccdF0JIt.s 			page 42


 1668 085f 48       		.byte	0x48
 1669 0860 1A       		.uleb128 0x1a
 1670 0861 30060000 		.4byte	.LASF124
 1671 0865 0A       		.byte	0xa
 1672 0866 5E02     		.2byte	0x25e
 1673 0868 7A000000 		.4byte	0x7a
 1674 086c 50       		.byte	0x50
 1675 086d 1A       		.uleb128 0x1a
 1676 086e 96080000 		.4byte	.LASF125
 1677 0872 0A       		.byte	0xa
 1678 0873 5F02     		.2byte	0x25f
 1679 0875 D1070000 		.4byte	0x7d1
 1680 0879 58       		.byte	0x58
 1681 087a 1A       		.uleb128 0x1a
 1682 087b A3050000 		.4byte	.LASF126
 1683 087f 0A       		.byte	0xa
 1684 0880 6002     		.2byte	0x260
 1685 0882 86020000 		.4byte	0x286
 1686 0886 68       		.byte	0x68
 1687 0887 1A       		.uleb128 0x1a
 1688 0888 02080000 		.4byte	.LASF127
 1689 088c 0A       		.byte	0xa
 1690 088d 6102     		.2byte	0x261
 1691 088f 86020000 		.4byte	0x286
 1692 0893 70       		.byte	0x70
 1693 0894 1A       		.uleb128 0x1a
 1694 0895 CC000000 		.4byte	.LASF128
 1695 0899 0A       		.byte	0xa
 1696 089a 6202     		.2byte	0x262
 1697 089c 86020000 		.4byte	0x286
 1698 08a0 78       		.byte	0x78
 1699 08a1 1A       		.uleb128 0x1a
 1700 08a2 F8070000 		.4byte	.LASF129
 1701 08a6 0A       		.byte	0xa
 1702 08a7 6302     		.2byte	0x263
 1703 08a9 27090000 		.4byte	0x927
 1704 08ad 80       		.byte	0x80
 1705 08ae 1A       		.uleb128 0x1a
 1706 08af 24030000 		.4byte	.LASF130
 1707 08b3 0A       		.byte	0xa
 1708 08b4 6402     		.2byte	0x264
 1709 08b6 37090000 		.4byte	0x937
 1710 08ba 88       		.byte	0x88
 1711 08bb 1A       		.uleb128 0x1a
 1712 08bc 34000000 		.4byte	.LASF131
 1713 08c0 0A       		.byte	0xa
 1714 08c1 6502     		.2byte	0x265
 1715 08c3 25000000 		.4byte	0x25
 1716 08c7 A0       		.byte	0xa0
 1717 08c8 1A       		.uleb128 0x1a
 1718 08c9 D8010000 		.4byte	.LASF132
 1719 08cd 0A       		.byte	0xa
 1720 08ce 6602     		.2byte	0x266
 1721 08d0 86020000 		.4byte	0x286
 1722 08d4 A4       		.byte	0xa4
 1723 08d5 1A       		.uleb128 0x1a
 1724 08d6 B5000000 		.4byte	.LASF133
ARM GAS  /tmp/ccdF0JIt.s 			page 43


 1725 08da 0A       		.byte	0xa
 1726 08db 6702     		.2byte	0x267
 1727 08dd 86020000 		.4byte	0x286
 1728 08e1 AC       		.byte	0xac
 1729 08e2 1A       		.uleb128 0x1a
 1730 08e3 BE010000 		.4byte	.LASF134
 1731 08e7 0A       		.byte	0xa
 1732 08e8 6802     		.2byte	0x268
 1733 08ea 86020000 		.4byte	0x286
 1734 08ee B4       		.byte	0xb4
 1735 08ef 1A       		.uleb128 0x1a
 1736 08f0 50000000 		.4byte	.LASF135
 1737 08f4 0A       		.byte	0xa
 1738 08f5 6902     		.2byte	0x269
 1739 08f7 86020000 		.4byte	0x286
 1740 08fb BC       		.byte	0xbc
 1741 08fc 1A       		.uleb128 0x1a
 1742 08fd 5F000000 		.4byte	.LASF136
 1743 0901 0A       		.byte	0xa
 1744 0902 6A02     		.2byte	0x26a
 1745 0904 86020000 		.4byte	0x286
 1746 0908 C4       		.byte	0xc4
 1747 0909 1A       		.uleb128 0x1a
 1748 090a B5060000 		.4byte	.LASF137
 1749 090e 0A       		.byte	0xa
 1750 090f 6B02     		.2byte	0x26b
 1751 0911 25000000 		.4byte	0x25
 1752 0915 CC       		.byte	0xcc
 1753 0916 00       		.byte	0
 1754 0917 0A       		.uleb128 0xa
 1755 0918 EA060000 		.4byte	0x6ea
 1756 091c 27090000 		.4byte	0x927
 1757 0920 0B       		.uleb128 0xb
 1758 0921 A8000000 		.4byte	0xa8
 1759 0925 19       		.byte	0x19
 1760 0926 00       		.byte	0
 1761 0927 0A       		.uleb128 0xa
 1762 0928 EA060000 		.4byte	0x6ea
 1763 092c 37090000 		.4byte	0x937
 1764 0930 0B       		.uleb128 0xb
 1765 0931 A8000000 		.4byte	0xa8
 1766 0935 07       		.byte	0x7
 1767 0936 00       		.byte	0
 1768 0937 0A       		.uleb128 0xa
 1769 0938 EA060000 		.4byte	0x6ea
 1770 093c 47090000 		.4byte	0x947
 1771 0940 0B       		.uleb128 0xb
 1772 0941 A8000000 		.4byte	0xa8
 1773 0945 17       		.byte	0x17
 1774 0946 00       		.byte	0
 1775 0947 1D       		.uleb128 0x1d
 1776 0948 F0       		.byte	0xf0
 1777 0949 0A       		.byte	0xa
 1778 094a 7002     		.2byte	0x270
 1779 094c 6B090000 		.4byte	0x96b
 1780 0950 1A       		.uleb128 0x1a
 1781 0951 55030000 		.4byte	.LASF138
ARM GAS  /tmp/ccdF0JIt.s 			page 44


 1782 0955 0A       		.byte	0xa
 1783 0956 7302     		.2byte	0x273
 1784 0958 6B090000 		.4byte	0x96b
 1785 095c 00       		.byte	0
 1786 095d 1A       		.uleb128 0x1a
 1787 095e 76020000 		.4byte	.LASF139
 1788 0962 0A       		.byte	0xa
 1789 0963 7402     		.2byte	0x274
 1790 0965 7B090000 		.4byte	0x97b
 1791 0969 78       		.byte	0x78
 1792 096a 00       		.byte	0
 1793 096b 0A       		.uleb128 0xa
 1794 096c 59040000 		.4byte	0x459
 1795 0970 7B090000 		.4byte	0x97b
 1796 0974 0B       		.uleb128 0xb
 1797 0975 A8000000 		.4byte	0xa8
 1798 0979 1D       		.byte	0x1d
 1799 097a 00       		.byte	0
 1800 097b 0A       		.uleb128 0xa
 1801 097c 2C000000 		.4byte	0x2c
 1802 0980 8B090000 		.4byte	0x98b
 1803 0984 0B       		.uleb128 0xb
 1804 0985 A8000000 		.4byte	0xa8
 1805 0989 1D       		.byte	0x1d
 1806 098a 00       		.byte	0
 1807 098b 1E       		.uleb128 0x1e
 1808 098c F0       		.byte	0xf0
 1809 098d 0A       		.byte	0xa
 1810 098e 5502     		.2byte	0x255
 1811 0990 AD090000 		.4byte	0x9ad
 1812 0994 1F       		.uleb128 0x1f
 1813 0995 91060000 		.4byte	.LASF88
 1814 0999 0A       		.byte	0xa
 1815 099a 6C02     		.2byte	0x26c
 1816 099c 16080000 		.4byte	0x816
 1817 09a0 1F       		.uleb128 0x1f
 1818 09a1 37080000 		.4byte	.LASF140
 1819 09a5 0A       		.byte	0xa
 1820 09a6 7502     		.2byte	0x275
 1821 09a8 47090000 		.4byte	0x947
 1822 09ac 00       		.byte	0
 1823 09ad 0A       		.uleb128 0xa
 1824 09ae EA060000 		.4byte	0x6ea
 1825 09b2 BD090000 		.4byte	0x9bd
 1826 09b6 0B       		.uleb128 0xb
 1827 09b7 A8000000 		.4byte	0xa8
 1828 09bb 18       		.byte	0x18
 1829 09bc 00       		.byte	0
 1830 09bd 20       		.uleb128 0x20
 1831 09be C8090000 		.4byte	0x9c8
 1832 09c2 18       		.uleb128 0x18
 1833 09c3 A7050000 		.4byte	0x5a7
 1834 09c7 00       		.byte	0
 1835 09c8 13       		.uleb128 0x13
 1836 09c9 04       		.byte	0x4
 1837 09ca BD090000 		.4byte	0x9bd
 1838 09ce 13       		.uleb128 0x13
ARM GAS  /tmp/ccdF0JIt.s 			page 45


 1839 09cf 04       		.byte	0x4
 1840 09d0 FA020000 		.4byte	0x2fa
 1841 09d4 20       		.uleb128 0x20
 1842 09d5 DF090000 		.4byte	0x9df
 1843 09d9 18       		.uleb128 0x18
 1844 09da 25000000 		.4byte	0x25
 1845 09de 00       		.byte	0
 1846 09df 13       		.uleb128 0x13
 1847 09e0 04       		.byte	0x4
 1848 09e1 E5090000 		.4byte	0x9e5
 1849 09e5 13       		.uleb128 0x13
 1850 09e6 04       		.byte	0x4
 1851 09e7 D4090000 		.4byte	0x9d4
 1852 09eb 0A       		.uleb128 0xa
 1853 09ec 84070000 		.4byte	0x784
 1854 09f0 FB090000 		.4byte	0x9fb
 1855 09f4 0B       		.uleb128 0xb
 1856 09f5 A8000000 		.4byte	0xa8
 1857 09f9 02       		.byte	0x2
 1858 09fa 00       		.byte	0
 1859 09fb 08       		.uleb128 0x8
 1860 09fc 33020000 		.4byte	.LASF141
 1861 0a00 0A       		.byte	0xa
 1862 0a01 FD02     		.2byte	0x2fd
 1863 0a03 A7050000 		.4byte	0x5a7
 1864 0a07 08       		.uleb128 0x8
 1865 0a08 A7070000 		.4byte	.LASF142
 1866 0a0c 0A       		.byte	0xa
 1867 0a0d FE02     		.2byte	0x2fe
 1868 0a0f AD050000 		.4byte	0x5ad
 1869 0a13 09       		.uleb128 0x9
 1870 0a14 F0040000 		.4byte	.LASF143
 1871 0a18 0B       		.byte	0xb
 1872 0a19 5F       		.byte	0x5f
 1873 0a1a E4060000 		.4byte	0x6e4
 1874 0a1e 09       		.uleb128 0x9
 1875 0a1f 32050000 		.4byte	.LASF144
 1876 0a23 0C       		.byte	0xc
 1877 0a24 8F       		.byte	0x8f
 1878 0a25 300A0000 		.4byte	0xa30
 1879 0a29 03       		.uleb128 0x3
 1880 0a2a 01       		.byte	0x1
 1881 0a2b 02       		.byte	0x2
 1882 0a2c 70050000 		.4byte	.LASF145
 1883 0a30 05       		.uleb128 0x5
 1884 0a31 290A0000 		.4byte	0xa29
 1885 0a35 21       		.uleb128 0x21
 1886 0a36 10080000 		.4byte	.LASF146
 1887 0a3a 0C       		.byte	0xc
 1888 0a3b 94       		.byte	0x94
 1889 0a3c 9C000000 		.4byte	0x9c
 1890 0a40 05       		.uleb128 0x5
 1891 0a41 03       		.byte	0x3
 1892 0a42 00000000 		.4byte	cpu_irq_critical_section_counter
 1893 0a46 21       		.uleb128 0x21
 1894 0a47 B6030000 		.4byte	.LASF147
 1895 0a4b 0C       		.byte	0xc
ARM GAS  /tmp/ccdF0JIt.s 			page 46


 1896 0a4c 95       		.byte	0x95
 1897 0a4d 300A0000 		.4byte	0xa30
 1898 0a51 05       		.uleb128 0x5
 1899 0a52 03       		.byte	0x3
 1900 0a53 00000000 		.4byte	cpu_irq_prev_interrupt_state
 1901 0a57 03       		.uleb128 0x3
 1902 0a58 04       		.byte	0x4
 1903 0a59 04       		.byte	0x4
 1904 0a5a 24050000 		.4byte	.LASF148
 1905 0a5e 03       		.uleb128 0x3
 1906 0a5f 08       		.byte	0x8
 1907 0a60 04       		.byte	0x4
 1908 0a61 AF010000 		.4byte	.LASF149
 1909 0a65 22       		.uleb128 0x22
 1910 0a66 19070000 		.4byte	.LASF183
 1911 0a6a 01       		.byte	0x1
 1912 0a6b 3A000000 		.4byte	0x3a
 1913 0a6f 0D       		.byte	0xd
 1914 0a70 3D       		.byte	0x3d
 1915 0a71 820A0000 		.4byte	0xa82
 1916 0a75 23       		.uleb128 0x23
 1917 0a76 8A050000 		.4byte	.LASF150
 1918 0a7a 00       		.byte	0
 1919 0a7b 23       		.uleb128 0x23
 1920 0a7c F5050000 		.4byte	.LASF151
 1921 0a80 01       		.byte	0x1
 1922 0a81 00       		.byte	0
 1923 0a82 24       		.uleb128 0x24
 1924 0a83 0C050000 		.4byte	.LASF152
 1925 0a87 01       		.byte	0x1
 1926 0a88 8202     		.2byte	0x282
 1927 0a8a 91000000 		.4byte	0x91
 1928 0a8e 00000000 		.4byte	.LFB159
 1929 0a92 06000000 		.4byte	.LFE159-.LFB159
 1930 0a96 01       		.uleb128 0x1
 1931 0a97 9C       		.byte	0x9c
 1932 0a98 AD0A0000 		.4byte	0xaad
 1933 0a9c 25       		.uleb128 0x25
 1934 0a9d AE000000 		.4byte	.LASF154
 1935 0aa1 01       		.byte	0x1
 1936 0aa2 8202     		.2byte	0x282
 1937 0aa4 AD0A0000 		.4byte	0xaad
 1938 0aa8 00000000 		.4byte	.LLST21
 1939 0aac 00       		.byte	0
 1940 0aad 13       		.uleb128 0x13
 1941 0aae 04       		.byte	0x4
 1942 0aaf FE010000 		.4byte	0x1fe
 1943 0ab3 24       		.uleb128 0x24
 1944 0ab4 5E020000 		.4byte	.LASF153
 1945 0ab8 01       		.byte	0x1
 1946 0ab9 7502     		.2byte	0x275
 1947 0abb 91000000 		.4byte	0x91
 1948 0abf 00000000 		.4byte	.LFB158
 1949 0ac3 0A000000 		.4byte	.LFE158-.LFB158
 1950 0ac7 01       		.uleb128 0x1
 1951 0ac8 9C       		.byte	0x9c
 1952 0ac9 EC0A0000 		.4byte	0xaec
ARM GAS  /tmp/ccdF0JIt.s 			page 47


 1953 0acd 25       		.uleb128 0x25
 1954 0ace AE000000 		.4byte	.LASF154
 1955 0ad2 01       		.byte	0x1
 1956 0ad3 7502     		.2byte	0x275
 1957 0ad5 AD0A0000 		.4byte	0xaad
 1958 0ad9 21000000 		.4byte	.LLST20
 1959 0add 26       		.uleb128 0x26
 1960 0ade 3B060000 		.4byte	.LASF155
 1961 0ae2 01       		.byte	0x1
 1962 0ae3 7502     		.2byte	0x275
 1963 0ae5 91000000 		.4byte	0x91
 1964 0ae9 01       		.uleb128 0x1
 1965 0aea 51       		.byte	0x51
 1966 0aeb 00       		.byte	0
 1967 0aec 24       		.uleb128 0x24
 1968 0aed 33010000 		.4byte	.LASF156
 1969 0af1 01       		.byte	0x1
 1970 0af2 6802     		.2byte	0x268
 1971 0af4 91000000 		.4byte	0x91
 1972 0af8 00000000 		.4byte	.LFB157
 1973 0afc 04000000 		.4byte	.LFE157-.LFB157
 1974 0b00 01       		.uleb128 0x1
 1975 0b01 9C       		.byte	0x9c
 1976 0b02 170B0000 		.4byte	0xb17
 1977 0b06 25       		.uleb128 0x25
 1978 0b07 AE000000 		.4byte	.LASF154
 1979 0b0b 01       		.byte	0x1
 1980 0b0c 6802     		.2byte	0x268
 1981 0b0e AD0A0000 		.4byte	0xaad
 1982 0b12 3F000000 		.4byte	.LLST19
 1983 0b16 00       		.byte	0
 1984 0b17 24       		.uleb128 0x24
 1985 0b18 F4030000 		.4byte	.LASF157
 1986 0b1c 01       		.byte	0x1
 1987 0b1d 5802     		.2byte	0x258
 1988 0b1f 91000000 		.4byte	0x91
 1989 0b23 00000000 		.4byte	.LFB156
 1990 0b27 18000000 		.4byte	.LFE156-.LFB156
 1991 0b2b 01       		.uleb128 0x1
 1992 0b2c 9C       		.byte	0x9c
 1993 0b2d 520B0000 		.4byte	0xb52
 1994 0b31 25       		.uleb128 0x25
 1995 0b32 AE000000 		.4byte	.LASF154
 1996 0b36 01       		.byte	0x1
 1997 0b37 5802     		.2byte	0x258
 1998 0b39 AD0A0000 		.4byte	0xaad
 1999 0b3d 60000000 		.4byte	.LLST17
 2000 0b41 25       		.uleb128 0x25
 2001 0b42 11040000 		.4byte	.LASF158
 2002 0b46 01       		.byte	0x1
 2003 0b47 5802     		.2byte	0x258
 2004 0b49 91000000 		.4byte	0x91
 2005 0b4d 9A000000 		.4byte	.LLST18
 2006 0b51 00       		.byte	0
 2007 0b52 24       		.uleb128 0x24
 2008 0b53 E6010000 		.4byte	.LASF159
 2009 0b57 01       		.byte	0x1
ARM GAS  /tmp/ccdF0JIt.s 			page 48


 2010 0b58 4702     		.2byte	0x247
 2011 0b5a 91000000 		.4byte	0x91
 2012 0b5e 00000000 		.4byte	.LFB155
 2013 0b62 18000000 		.4byte	.LFE155-.LFB155
 2014 0b66 01       		.uleb128 0x1
 2015 0b67 9C       		.byte	0x9c
 2016 0b68 8D0B0000 		.4byte	0xb8d
 2017 0b6c 25       		.uleb128 0x25
 2018 0b6d AE000000 		.4byte	.LASF154
 2019 0b71 01       		.byte	0x1
 2020 0b72 4702     		.2byte	0x247
 2021 0b74 AD0A0000 		.4byte	0xaad
 2022 0b78 BB000000 		.4byte	.LLST15
 2023 0b7c 25       		.uleb128 0x25
 2024 0b7d 11040000 		.4byte	.LASF158
 2025 0b81 01       		.byte	0x1
 2026 0b82 4702     		.2byte	0x247
 2027 0b84 91000000 		.4byte	0x91
 2028 0b88 F5000000 		.4byte	.LLST16
 2029 0b8c 00       		.byte	0
 2030 0b8d 24       		.uleb128 0x24
 2031 0b8e CC070000 		.4byte	.LASF160
 2032 0b92 01       		.byte	0x1
 2033 0b93 3002     		.2byte	0x230
 2034 0b95 91000000 		.4byte	0x91
 2035 0b99 00000000 		.4byte	.LFB154
 2036 0b9d 1C000000 		.4byte	.LFE154-.LFB154
 2037 0ba1 01       		.uleb128 0x1
 2038 0ba2 9C       		.byte	0x9c
 2039 0ba3 E30B0000 		.4byte	0xbe3
 2040 0ba7 25       		.uleb128 0x25
 2041 0ba8 AE000000 		.4byte	.LASF154
 2042 0bac 01       		.byte	0x1
 2043 0bad 3002     		.2byte	0x230
 2044 0baf AD0A0000 		.4byte	0xaad
 2045 0bb3 16010000 		.4byte	.LLST13
 2046 0bb7 26       		.uleb128 0x26
 2047 0bb8 6D060000 		.4byte	.LASF161
 2048 0bbc 01       		.byte	0x1
 2049 0bbd 3002     		.2byte	0x230
 2050 0bbf 91000000 		.4byte	0x91
 2051 0bc3 01       		.uleb128 0x1
 2052 0bc4 51       		.byte	0x51
 2053 0bc5 26       		.uleb128 0x26
 2054 0bc6 D8040000 		.4byte	.LASF162
 2055 0bca 01       		.byte	0x1
 2056 0bcb 3002     		.2byte	0x230
 2057 0bcd 91000000 		.4byte	0x91
 2058 0bd1 01       		.uleb128 0x1
 2059 0bd2 52       		.byte	0x52
 2060 0bd3 27       		.uleb128 0x27
 2061 0bd4 6D7200   		.ascii	"mr\000"
 2062 0bd7 01       		.byte	0x1
 2063 0bd8 3202     		.2byte	0x232
 2064 0bda 91000000 		.4byte	0x91
 2065 0bde 50010000 		.4byte	.LLST14
 2066 0be2 00       		.byte	0
ARM GAS  /tmp/ccdF0JIt.s 			page 49


 2067 0be3 24       		.uleb128 0x24
 2068 0be4 C6050000 		.4byte	.LASF163
 2069 0be8 01       		.byte	0x1
 2070 0be9 2002     		.2byte	0x220
 2071 0beb 91000000 		.4byte	0x91
 2072 0bef 00000000 		.4byte	.LFB153
 2073 0bf3 16000000 		.4byte	.LFE153-.LFB153
 2074 0bf7 01       		.uleb128 0x1
 2075 0bf8 9C       		.byte	0x9c
 2076 0bf9 2D0C0000 		.4byte	0xc2d
 2077 0bfd 25       		.uleb128 0x25
 2078 0bfe AE000000 		.4byte	.LASF154
 2079 0c02 01       		.byte	0x1
 2080 0c03 2002     		.2byte	0x220
 2081 0c05 AD0A0000 		.4byte	0xaad
 2082 0c09 9E010000 		.4byte	.LLST10
 2083 0c0d 25       		.uleb128 0x25
 2084 0c0e 93030000 		.4byte	.LASF164
 2085 0c12 01       		.byte	0x1
 2086 0c13 2002     		.2byte	0x220
 2087 0c15 91000000 		.4byte	0x91
 2088 0c19 BC010000 		.4byte	.LLST11
 2089 0c1d 27       		.uleb128 0x27
 2090 0c1e 6D7200   		.ascii	"mr\000"
 2091 0c21 01       		.byte	0x1
 2092 0c22 2202     		.2byte	0x222
 2093 0c24 91000000 		.4byte	0x91
 2094 0c28 DD010000 		.4byte	.LLST12
 2095 0c2c 00       		.byte	0
 2096 0c2d 24       		.uleb128 0x24
 2097 0c2e 13060000 		.4byte	.LASF165
 2098 0c32 01       		.byte	0x1
 2099 0c33 5C01     		.2byte	0x15c
 2100 0c35 91000000 		.4byte	0x91
 2101 0c39 00000000 		.4byte	.LFB152
 2102 0c3d 06000000 		.4byte	.LFE152-.LFB152
 2103 0c41 01       		.uleb128 0x1
 2104 0c42 9C       		.byte	0x9c
 2105 0c43 580C0000 		.4byte	0xc58
 2106 0c47 25       		.uleb128 0x25
 2107 0c48 AE000000 		.4byte	.LASF154
 2108 0c4c 01       		.byte	0x1
 2109 0c4d 5C01     		.2byte	0x15c
 2110 0c4f AD0A0000 		.4byte	0xaad
 2111 0c53 04020000 		.4byte	.LLST9
 2112 0c57 00       		.byte	0
 2113 0c58 28       		.uleb128 0x28
 2114 0c59 E5060000 		.4byte	.LASF167
 2115 0c5d 01       		.byte	0x1
 2116 0c5e 4B01     		.2byte	0x14b
 2117 0c60 00000000 		.4byte	.LFB151
 2118 0c64 1C000000 		.4byte	.LFE151-.LFB151
 2119 0c68 01       		.uleb128 0x1
 2120 0c69 9C       		.byte	0x9c
 2121 0c6a 8B0C0000 		.4byte	0xc8b
 2122 0c6e 26       		.uleb128 0x26
 2123 0c6f AE000000 		.4byte	.LASF154
ARM GAS  /tmp/ccdF0JIt.s 			page 50


 2124 0c73 01       		.byte	0x1
 2125 0c74 4B01     		.2byte	0x14b
 2126 0c76 AD0A0000 		.4byte	0xaad
 2127 0c7a 01       		.uleb128 0x1
 2128 0c7b 50       		.byte	0x50
 2129 0c7c 26       		.uleb128 0x26
 2130 0c7d 7F060000 		.4byte	.LASF166
 2131 0c81 01       		.byte	0x1
 2132 0c82 4B01     		.2byte	0x14b
 2133 0c84 91000000 		.4byte	0x91
 2134 0c88 01       		.uleb128 0x1
 2135 0c89 51       		.byte	0x51
 2136 0c8a 00       		.byte	0
 2137 0c8b 28       		.uleb128 0x28
 2138 0c8c 02020000 		.4byte	.LASF168
 2139 0c90 01       		.byte	0x1
 2140 0c91 2901     		.2byte	0x129
 2141 0c93 00000000 		.4byte	.LFB150
 2142 0c97 0A000000 		.4byte	.LFE150-.LFB150
 2143 0c9b 01       		.uleb128 0x1
 2144 0c9c 9C       		.byte	0x9c
 2145 0c9d CE0C0000 		.4byte	0xcce
 2146 0ca1 26       		.uleb128 0x26
 2147 0ca2 AE000000 		.4byte	.LASF154
 2148 0ca6 01       		.byte	0x1
 2149 0ca7 2901     		.2byte	0x129
 2150 0ca9 AD0A0000 		.4byte	0xaad
 2151 0cad 01       		.uleb128 0x1
 2152 0cae 50       		.byte	0x50
 2153 0caf 26       		.uleb128 0x26
 2154 0cb0 8F010000 		.4byte	.LASF169
 2155 0cb4 01       		.byte	0x1
 2156 0cb5 2901     		.2byte	0x129
 2157 0cb7 91000000 		.4byte	0x91
 2158 0cbb 01       		.uleb128 0x1
 2159 0cbc 51       		.byte	0x51
 2160 0cbd 25       		.uleb128 0x25
 2161 0cbe 6D060000 		.4byte	.LASF161
 2162 0cc2 01       		.byte	0x1
 2163 0cc3 2901     		.2byte	0x129
 2164 0cc5 91000000 		.4byte	0x91
 2165 0cc9 25020000 		.4byte	.LLST8
 2166 0ccd 00       		.byte	0
 2167 0cce 24       		.uleb128 0x24
 2168 0ccf 9B080000 		.4byte	.LASF170
 2169 0cd3 01       		.byte	0x1
 2170 0cd4 1101     		.2byte	0x111
 2171 0cd6 91000000 		.4byte	0x91
 2172 0cda 00000000 		.4byte	.LFB149
 2173 0cde 04000000 		.4byte	.LFE149-.LFB149
 2174 0ce2 01       		.uleb128 0x1
 2175 0ce3 9C       		.byte	0x9c
 2176 0ce4 F90C0000 		.4byte	0xcf9
 2177 0ce8 25       		.uleb128 0x25
 2178 0ce9 AE000000 		.4byte	.LASF154
 2179 0ced 01       		.byte	0x1
 2180 0cee 1101     		.2byte	0x111
ARM GAS  /tmp/ccdF0JIt.s 			page 51


 2181 0cf0 AD0A0000 		.4byte	0xaad
 2182 0cf4 53020000 		.4byte	.LLST7
 2183 0cf8 00       		.byte	0
 2184 0cf9 24       		.uleb128 0x24
 2185 0cfa D3030000 		.4byte	.LASF171
 2186 0cfe 01       		.byte	0x1
 2187 0cff 0501     		.2byte	0x105
 2188 0d01 91000000 		.4byte	0x91
 2189 0d05 00000000 		.4byte	.LFB148
 2190 0d09 04000000 		.4byte	.LFE148-.LFB148
 2191 0d0d 01       		.uleb128 0x1
 2192 0d0e 9C       		.byte	0x9c
 2193 0d0f 240D0000 		.4byte	0xd24
 2194 0d13 25       		.uleb128 0x25
 2195 0d14 AE000000 		.4byte	.LASF154
 2196 0d18 01       		.byte	0x1
 2197 0d19 0501     		.2byte	0x105
 2198 0d1b AD0A0000 		.4byte	0xaad
 2199 0d1f 74020000 		.4byte	.LLST6
 2200 0d23 00       		.byte	0
 2201 0d24 29       		.uleb128 0x29
 2202 0d25 E7020000 		.4byte	.LASF172
 2203 0d29 01       		.byte	0x1
 2204 0d2a F9       		.byte	0xf9
 2205 0d2b 00000000 		.4byte	.LFB147
 2206 0d2f 04000000 		.4byte	.LFE147-.LFB147
 2207 0d33 01       		.uleb128 0x1
 2208 0d34 9C       		.byte	0x9c
 2209 0d35 540D0000 		.4byte	0xd54
 2210 0d39 2A       		.uleb128 0x2a
 2211 0d3a AE000000 		.4byte	.LASF154
 2212 0d3e 01       		.byte	0x1
 2213 0d3f F9       		.byte	0xf9
 2214 0d40 AD0A0000 		.4byte	0xaad
 2215 0d44 01       		.uleb128 0x1
 2216 0d45 50       		.byte	0x50
 2217 0d46 2A       		.uleb128 0x2a
 2218 0d47 46050000 		.4byte	.LASF173
 2219 0d4b 01       		.byte	0x1
 2220 0d4c F9       		.byte	0xf9
 2221 0d4d 91000000 		.4byte	0x91
 2222 0d51 01       		.uleb128 0x1
 2223 0d52 51       		.byte	0x51
 2224 0d53 00       		.byte	0
 2225 0d54 29       		.uleb128 0x29
 2226 0d55 91070000 		.4byte	.LASF174
 2227 0d59 01       		.byte	0x1
 2228 0d5a EE       		.byte	0xee
 2229 0d5b 00000000 		.4byte	.LFB146
 2230 0d5f 04000000 		.4byte	.LFE146-.LFB146
 2231 0d63 01       		.uleb128 0x1
 2232 0d64 9C       		.byte	0x9c
 2233 0d65 840D0000 		.4byte	0xd84
 2234 0d69 2A       		.uleb128 0x2a
 2235 0d6a AE000000 		.4byte	.LASF154
 2236 0d6e 01       		.byte	0x1
 2237 0d6f EE       		.byte	0xee
ARM GAS  /tmp/ccdF0JIt.s 			page 52


 2238 0d70 AD0A0000 		.4byte	0xaad
 2239 0d74 01       		.uleb128 0x1
 2240 0d75 50       		.byte	0x50
 2241 0d76 2A       		.uleb128 0x2a
 2242 0d77 46050000 		.4byte	.LASF173
 2243 0d7b 01       		.byte	0x1
 2244 0d7c EE       		.byte	0xee
 2245 0d7d 91000000 		.4byte	0x91
 2246 0d81 01       		.uleb128 0x1
 2247 0d82 51       		.byte	0x51
 2248 0d83 00       		.byte	0
 2249 0d84 2B       		.uleb128 0x2b
 2250 0d85 0A000000 		.4byte	.LASF175
 2251 0d89 01       		.byte	0x1
 2252 0d8a CC       		.byte	0xcc
 2253 0d8b 91000000 		.4byte	0x91
 2254 0d8f 00000000 		.4byte	.LFB145
 2255 0d93 06000000 		.4byte	.LFE145-.LFB145
 2256 0d97 01       		.uleb128 0x1
 2257 0d98 9C       		.byte	0x9c
 2258 0d99 BA0D0000 		.4byte	0xdba
 2259 0d9d 2C       		.uleb128 0x2c
 2260 0d9e AE000000 		.4byte	.LASF154
 2261 0da2 01       		.byte	0x1
 2262 0da3 CC       		.byte	0xcc
 2263 0da4 AD0A0000 		.4byte	0xaad
 2264 0da8 95020000 		.4byte	.LLST5
 2265 0dac 2A       		.uleb128 0x2a
 2266 0dad 2A050000 		.4byte	.LASF176
 2267 0db1 01       		.byte	0x1
 2268 0db2 CC       		.byte	0xcc
 2269 0db3 91000000 		.4byte	0x91
 2270 0db7 01       		.uleb128 0x1
 2271 0db8 51       		.byte	0x51
 2272 0db9 00       		.byte	0
 2273 0dba 29       		.uleb128 0x29
 2274 0dbb 5B010000 		.4byte	.LASF177
 2275 0dbf 01       		.byte	0x1
 2276 0dc0 B0       		.byte	0xb0
 2277 0dc1 00000000 		.4byte	.LFB144
 2278 0dc5 1C000000 		.4byte	.LFE144-.LFB144
 2279 0dc9 01       		.uleb128 0x1
 2280 0dca 9C       		.byte	0x9c
 2281 0dcb EA0D0000 		.4byte	0xdea
 2282 0dcf 2A       		.uleb128 0x2a
 2283 0dd0 AE000000 		.4byte	.LASF154
 2284 0dd4 01       		.byte	0x1
 2285 0dd5 B0       		.byte	0xb0
 2286 0dd6 AD0A0000 		.4byte	0xaad
 2287 0dda 01       		.uleb128 0x1
 2288 0ddb 50       		.byte	0x50
 2289 0ddc 2A       		.uleb128 0x2a
 2290 0ddd 6D060000 		.4byte	.LASF161
 2291 0de1 01       		.byte	0x1
 2292 0de2 B0       		.byte	0xb0
 2293 0de3 91000000 		.4byte	0x91
 2294 0de7 01       		.uleb128 0x1
ARM GAS  /tmp/ccdF0JIt.s 			page 53


 2295 0de8 51       		.byte	0x51
 2296 0de9 00       		.byte	0
 2297 0dea 2B       		.uleb128 0x2b
 2298 0deb 90000000 		.4byte	.LASF178
 2299 0def 01       		.byte	0x1
 2300 0df0 86       		.byte	0x86
 2301 0df1 91000000 		.4byte	0x91
 2302 0df5 00000000 		.4byte	.LFB143
 2303 0df9 3A000000 		.4byte	.LFE143-.LFB143
 2304 0dfd 01       		.uleb128 0x1
 2305 0dfe 9C       		.byte	0x9c
 2306 0dff 650E0000 		.4byte	0xe65
 2307 0e03 2C       		.uleb128 0x2c
 2308 0e04 AE000000 		.4byte	.LASF154
 2309 0e08 01       		.byte	0x1
 2310 0e09 86       		.byte	0x86
 2311 0e0a AD0A0000 		.4byte	0xaad
 2312 0e0e B6020000 		.4byte	.LLST0
 2313 0e12 2C       		.uleb128 0x2c
 2314 0e13 0E070000 		.4byte	.LASF179
 2315 0e17 01       		.byte	0x1
 2316 0e18 86       		.byte	0x86
 2317 0e19 91000000 		.4byte	0x91
 2318 0e1d 09030000 		.4byte	.LLST1
 2319 0e21 2C       		.uleb128 0x2c
 2320 0e22 6D060000 		.4byte	.LASF161
 2321 0e26 01       		.byte	0x1
 2322 0e27 86       		.byte	0x86
 2323 0e28 91000000 		.4byte	0x91
 2324 0e2c 2A030000 		.4byte	.LLST2
 2325 0e30 2D       		.uleb128 0x2d
 2326 0e31 22000000 		.4byte	.LBB3
 2327 0e35 14000000 		.4byte	.LBE3-.LBB3
 2328 0e39 4C0E0000 		.4byte	0xe4c
 2329 0e3d 2E       		.uleb128 0x2e
 2330 0e3e 6D7200   		.ascii	"mr\000"
 2331 0e41 01       		.byte	0x1
 2332 0e42 89       		.byte	0x89
 2333 0e43 91000000 		.4byte	0x91
 2334 0e47 56030000 		.4byte	.LLST4
 2335 0e4b 00       		.byte	0
 2336 0e4c 2F       		.uleb128 0x2f
 2337 0e4d 0A000000 		.4byte	.LBB2
 2338 0e51 14000000 		.4byte	.LBE2-.LBB2
 2339 0e55 2E       		.uleb128 0x2e
 2340 0e56 6D7200   		.ascii	"mr\000"
 2341 0e59 01       		.byte	0x1
 2342 0e5a 8C       		.byte	0x8c
 2343 0e5b 91000000 		.4byte	0x91
 2344 0e5f 79030000 		.4byte	.LLST3
 2345 0e63 00       		.byte	0
 2346 0e64 00       		.byte	0
 2347 0e65 30       		.uleb128 0x30
 2348 0e66 CE080000 		.4byte	.LASF184
 2349 0e6a 01       		.byte	0x1
 2350 0e6b 77       		.byte	0x77
 2351 0e6c 00000000 		.4byte	.LFB142
ARM GAS  /tmp/ccdF0JIt.s 			page 54


 2352 0e70 06000000 		.4byte	.LFE142-.LFB142
 2353 0e74 01       		.uleb128 0x1
 2354 0e75 9C       		.byte	0x9c
 2355 0e76 2A       		.uleb128 0x2a
 2356 0e77 AE000000 		.4byte	.LASF154
 2357 0e7b 01       		.byte	0x1
 2358 0e7c 77       		.byte	0x77
 2359 0e7d AD0A0000 		.4byte	0xaad
 2360 0e81 01       		.uleb128 0x1
 2361 0e82 50       		.byte	0x50
 2362 0e83 00       		.byte	0
 2363 0e84 00       		.byte	0
 2364              		.section	.debug_abbrev,"",%progbits
 2365              	.Ldebug_abbrev0:
 2366 0000 01       		.uleb128 0x1
 2367 0001 11       		.uleb128 0x11
 2368 0002 01       		.byte	0x1
 2369 0003 25       		.uleb128 0x25
 2370 0004 0E       		.uleb128 0xe
 2371 0005 13       		.uleb128 0x13
 2372 0006 0B       		.uleb128 0xb
 2373 0007 03       		.uleb128 0x3
 2374 0008 0E       		.uleb128 0xe
 2375 0009 1B       		.uleb128 0x1b
 2376 000a 0E       		.uleb128 0xe
 2377 000b 55       		.uleb128 0x55
 2378 000c 17       		.uleb128 0x17
 2379 000d 11       		.uleb128 0x11
 2380 000e 01       		.uleb128 0x1
 2381 000f 10       		.uleb128 0x10
 2382 0010 17       		.uleb128 0x17
 2383 0011 00       		.byte	0
 2384 0012 00       		.byte	0
 2385 0013 02       		.uleb128 0x2
 2386 0014 24       		.uleb128 0x24
 2387 0015 00       		.byte	0
 2388 0016 0B       		.uleb128 0xb
 2389 0017 0B       		.uleb128 0xb
 2390 0018 3E       		.uleb128 0x3e
 2391 0019 0B       		.uleb128 0xb
 2392 001a 03       		.uleb128 0x3
 2393 001b 08       		.uleb128 0x8
 2394 001c 00       		.byte	0
 2395 001d 00       		.byte	0
 2396 001e 03       		.uleb128 0x3
 2397 001f 24       		.uleb128 0x24
 2398 0020 00       		.byte	0
 2399 0021 0B       		.uleb128 0xb
 2400 0022 0B       		.uleb128 0xb
 2401 0023 3E       		.uleb128 0x3e
 2402 0024 0B       		.uleb128 0xb
 2403 0025 03       		.uleb128 0x3
 2404 0026 0E       		.uleb128 0xe
 2405 0027 00       		.byte	0
 2406 0028 00       		.byte	0
 2407 0029 04       		.uleb128 0x4
 2408 002a 16       		.uleb128 0x16
ARM GAS  /tmp/ccdF0JIt.s 			page 55


 2409 002b 00       		.byte	0
 2410 002c 03       		.uleb128 0x3
 2411 002d 0E       		.uleb128 0xe
 2412 002e 3A       		.uleb128 0x3a
 2413 002f 0B       		.uleb128 0xb
 2414 0030 3B       		.uleb128 0x3b
 2415 0031 0B       		.uleb128 0xb
 2416 0032 49       		.uleb128 0x49
 2417 0033 13       		.uleb128 0x13
 2418 0034 00       		.byte	0
 2419 0035 00       		.byte	0
 2420 0036 05       		.uleb128 0x5
 2421 0037 35       		.uleb128 0x35
 2422 0038 00       		.byte	0
 2423 0039 49       		.uleb128 0x49
 2424 003a 13       		.uleb128 0x13
 2425 003b 00       		.byte	0
 2426 003c 00       		.byte	0
 2427 003d 06       		.uleb128 0x6
 2428 003e 26       		.uleb128 0x26
 2429 003f 00       		.byte	0
 2430 0040 49       		.uleb128 0x49
 2431 0041 13       		.uleb128 0x13
 2432 0042 00       		.byte	0
 2433 0043 00       		.byte	0
 2434 0044 07       		.uleb128 0x7
 2435 0045 0F       		.uleb128 0xf
 2436 0046 00       		.byte	0
 2437 0047 0B       		.uleb128 0xb
 2438 0048 0B       		.uleb128 0xb
 2439 0049 00       		.byte	0
 2440 004a 00       		.byte	0
 2441 004b 08       		.uleb128 0x8
 2442 004c 34       		.uleb128 0x34
 2443 004d 00       		.byte	0
 2444 004e 03       		.uleb128 0x3
 2445 004f 0E       		.uleb128 0xe
 2446 0050 3A       		.uleb128 0x3a
 2447 0051 0B       		.uleb128 0xb
 2448 0052 3B       		.uleb128 0x3b
 2449 0053 05       		.uleb128 0x5
 2450 0054 49       		.uleb128 0x49
 2451 0055 13       		.uleb128 0x13
 2452 0056 3F       		.uleb128 0x3f
 2453 0057 19       		.uleb128 0x19
 2454 0058 3C       		.uleb128 0x3c
 2455 0059 19       		.uleb128 0x19
 2456 005a 00       		.byte	0
 2457 005b 00       		.byte	0
 2458 005c 09       		.uleb128 0x9
 2459 005d 34       		.uleb128 0x34
 2460 005e 00       		.byte	0
 2461 005f 03       		.uleb128 0x3
 2462 0060 0E       		.uleb128 0xe
 2463 0061 3A       		.uleb128 0x3a
 2464 0062 0B       		.uleb128 0xb
 2465 0063 3B       		.uleb128 0x3b
ARM GAS  /tmp/ccdF0JIt.s 			page 56


 2466 0064 0B       		.uleb128 0xb
 2467 0065 49       		.uleb128 0x49
 2468 0066 13       		.uleb128 0x13
 2469 0067 3F       		.uleb128 0x3f
 2470 0068 19       		.uleb128 0x19
 2471 0069 3C       		.uleb128 0x3c
 2472 006a 19       		.uleb128 0x19
 2473 006b 00       		.byte	0
 2474 006c 00       		.byte	0
 2475 006d 0A       		.uleb128 0xa
 2476 006e 01       		.uleb128 0x1
 2477 006f 01       		.byte	0x1
 2478 0070 49       		.uleb128 0x49
 2479 0071 13       		.uleb128 0x13
 2480 0072 01       		.uleb128 0x1
 2481 0073 13       		.uleb128 0x13
 2482 0074 00       		.byte	0
 2483 0075 00       		.byte	0
 2484 0076 0B       		.uleb128 0xb
 2485 0077 21       		.uleb128 0x21
 2486 0078 00       		.byte	0
 2487 0079 49       		.uleb128 0x49
 2488 007a 13       		.uleb128 0x13
 2489 007b 2F       		.uleb128 0x2f
 2490 007c 0B       		.uleb128 0xb
 2491 007d 00       		.byte	0
 2492 007e 00       		.byte	0
 2493 007f 0C       		.uleb128 0xc
 2494 0080 13       		.uleb128 0x13
 2495 0081 01       		.byte	0x1
 2496 0082 0B       		.uleb128 0xb
 2497 0083 0B       		.uleb128 0xb
 2498 0084 3A       		.uleb128 0x3a
 2499 0085 0B       		.uleb128 0xb
 2500 0086 3B       		.uleb128 0x3b
 2501 0087 0B       		.uleb128 0xb
 2502 0088 01       		.uleb128 0x1
 2503 0089 13       		.uleb128 0x13
 2504 008a 00       		.byte	0
 2505 008b 00       		.byte	0
 2506 008c 0D       		.uleb128 0xd
 2507 008d 0D       		.uleb128 0xd
 2508 008e 00       		.byte	0
 2509 008f 03       		.uleb128 0x3
 2510 0090 0E       		.uleb128 0xe
 2511 0091 3A       		.uleb128 0x3a
 2512 0092 0B       		.uleb128 0xb
 2513 0093 3B       		.uleb128 0x3b
 2514 0094 0B       		.uleb128 0xb
 2515 0095 49       		.uleb128 0x49
 2516 0096 13       		.uleb128 0x13
 2517 0097 38       		.uleb128 0x38
 2518 0098 0B       		.uleb128 0xb
 2519 0099 00       		.byte	0
 2520 009a 00       		.byte	0
 2521 009b 0E       		.uleb128 0xe
 2522 009c 16       		.uleb128 0x16
ARM GAS  /tmp/ccdF0JIt.s 			page 57


 2523 009d 00       		.byte	0
 2524 009e 03       		.uleb128 0x3
 2525 009f 0E       		.uleb128 0xe
 2526 00a0 3A       		.uleb128 0x3a
 2527 00a1 0B       		.uleb128 0xb
 2528 00a2 3B       		.uleb128 0x3b
 2529 00a3 05       		.uleb128 0x5
 2530 00a4 49       		.uleb128 0x49
 2531 00a5 13       		.uleb128 0x13
 2532 00a6 00       		.byte	0
 2533 00a7 00       		.byte	0
 2534 00a8 0F       		.uleb128 0xf
 2535 00a9 17       		.uleb128 0x17
 2536 00aa 01       		.byte	0x1
 2537 00ab 0B       		.uleb128 0xb
 2538 00ac 0B       		.uleb128 0xb
 2539 00ad 3A       		.uleb128 0x3a
 2540 00ae 0B       		.uleb128 0xb
 2541 00af 3B       		.uleb128 0x3b
 2542 00b0 0B       		.uleb128 0xb
 2543 00b1 01       		.uleb128 0x1
 2544 00b2 13       		.uleb128 0x13
 2545 00b3 00       		.byte	0
 2546 00b4 00       		.byte	0
 2547 00b5 10       		.uleb128 0x10
 2548 00b6 0D       		.uleb128 0xd
 2549 00b7 00       		.byte	0
 2550 00b8 03       		.uleb128 0x3
 2551 00b9 0E       		.uleb128 0xe
 2552 00ba 3A       		.uleb128 0x3a
 2553 00bb 0B       		.uleb128 0xb
 2554 00bc 3B       		.uleb128 0x3b
 2555 00bd 0B       		.uleb128 0xb
 2556 00be 49       		.uleb128 0x49
 2557 00bf 13       		.uleb128 0x13
 2558 00c0 00       		.byte	0
 2559 00c1 00       		.byte	0
 2560 00c2 11       		.uleb128 0x11
 2561 00c3 13       		.uleb128 0x13
 2562 00c4 01       		.byte	0x1
 2563 00c5 03       		.uleb128 0x3
 2564 00c6 0E       		.uleb128 0xe
 2565 00c7 0B       		.uleb128 0xb
 2566 00c8 0B       		.uleb128 0xb
 2567 00c9 3A       		.uleb128 0x3a
 2568 00ca 0B       		.uleb128 0xb
 2569 00cb 3B       		.uleb128 0x3b
 2570 00cc 0B       		.uleb128 0xb
 2571 00cd 01       		.uleb128 0x1
 2572 00ce 13       		.uleb128 0x13
 2573 00cf 00       		.byte	0
 2574 00d0 00       		.byte	0
 2575 00d1 12       		.uleb128 0x12
 2576 00d2 0D       		.uleb128 0xd
 2577 00d3 00       		.byte	0
 2578 00d4 03       		.uleb128 0x3
 2579 00d5 08       		.uleb128 0x8
ARM GAS  /tmp/ccdF0JIt.s 			page 58


 2580 00d6 3A       		.uleb128 0x3a
 2581 00d7 0B       		.uleb128 0xb
 2582 00d8 3B       		.uleb128 0x3b
 2583 00d9 0B       		.uleb128 0xb
 2584 00da 49       		.uleb128 0x49
 2585 00db 13       		.uleb128 0x13
 2586 00dc 38       		.uleb128 0x38
 2587 00dd 0B       		.uleb128 0xb
 2588 00de 00       		.byte	0
 2589 00df 00       		.byte	0
 2590 00e0 13       		.uleb128 0x13
 2591 00e1 0F       		.uleb128 0xf
 2592 00e2 00       		.byte	0
 2593 00e3 0B       		.uleb128 0xb
 2594 00e4 0B       		.uleb128 0xb
 2595 00e5 49       		.uleb128 0x49
 2596 00e6 13       		.uleb128 0x13
 2597 00e7 00       		.byte	0
 2598 00e8 00       		.byte	0
 2599 00e9 14       		.uleb128 0x14
 2600 00ea 13       		.uleb128 0x13
 2601 00eb 01       		.byte	0x1
 2602 00ec 03       		.uleb128 0x3
 2603 00ed 0E       		.uleb128 0xe
 2604 00ee 0B       		.uleb128 0xb
 2605 00ef 05       		.uleb128 0x5
 2606 00f0 3A       		.uleb128 0x3a
 2607 00f1 0B       		.uleb128 0xb
 2608 00f2 3B       		.uleb128 0x3b
 2609 00f3 0B       		.uleb128 0xb
 2610 00f4 01       		.uleb128 0x1
 2611 00f5 13       		.uleb128 0x13
 2612 00f6 00       		.byte	0
 2613 00f7 00       		.byte	0
 2614 00f8 15       		.uleb128 0x15
 2615 00f9 0D       		.uleb128 0xd
 2616 00fa 00       		.byte	0
 2617 00fb 03       		.uleb128 0x3
 2618 00fc 0E       		.uleb128 0xe
 2619 00fd 3A       		.uleb128 0x3a
 2620 00fe 0B       		.uleb128 0xb
 2621 00ff 3B       		.uleb128 0x3b
 2622 0100 0B       		.uleb128 0xb
 2623 0101 49       		.uleb128 0x49
 2624 0102 13       		.uleb128 0x13
 2625 0103 38       		.uleb128 0x38
 2626 0104 05       		.uleb128 0x5
 2627 0105 00       		.byte	0
 2628 0106 00       		.byte	0
 2629 0107 16       		.uleb128 0x16
 2630 0108 15       		.uleb128 0x15
 2631 0109 00       		.byte	0
 2632 010a 27       		.uleb128 0x27
 2633 010b 19       		.uleb128 0x19
 2634 010c 00       		.byte	0
 2635 010d 00       		.byte	0
 2636 010e 17       		.uleb128 0x17
ARM GAS  /tmp/ccdF0JIt.s 			page 59


 2637 010f 15       		.uleb128 0x15
 2638 0110 01       		.byte	0x1
 2639 0111 27       		.uleb128 0x27
 2640 0112 19       		.uleb128 0x19
 2641 0113 49       		.uleb128 0x49
 2642 0114 13       		.uleb128 0x13
 2643 0115 01       		.uleb128 0x1
 2644 0116 13       		.uleb128 0x13
 2645 0117 00       		.byte	0
 2646 0118 00       		.byte	0
 2647 0119 18       		.uleb128 0x18
 2648 011a 05       		.uleb128 0x5
 2649 011b 00       		.byte	0
 2650 011c 49       		.uleb128 0x49
 2651 011d 13       		.uleb128 0x13
 2652 011e 00       		.byte	0
 2653 011f 00       		.byte	0
 2654 0120 19       		.uleb128 0x19
 2655 0121 13       		.uleb128 0x13
 2656 0122 01       		.byte	0x1
 2657 0123 03       		.uleb128 0x3
 2658 0124 0E       		.uleb128 0xe
 2659 0125 0B       		.uleb128 0xb
 2660 0126 05       		.uleb128 0x5
 2661 0127 3A       		.uleb128 0x3a
 2662 0128 0B       		.uleb128 0xb
 2663 0129 3B       		.uleb128 0x3b
 2664 012a 05       		.uleb128 0x5
 2665 012b 01       		.uleb128 0x1
 2666 012c 13       		.uleb128 0x13
 2667 012d 00       		.byte	0
 2668 012e 00       		.byte	0
 2669 012f 1A       		.uleb128 0x1a
 2670 0130 0D       		.uleb128 0xd
 2671 0131 00       		.byte	0
 2672 0132 03       		.uleb128 0x3
 2673 0133 0E       		.uleb128 0xe
 2674 0134 3A       		.uleb128 0x3a
 2675 0135 0B       		.uleb128 0xb
 2676 0136 3B       		.uleb128 0x3b
 2677 0137 05       		.uleb128 0x5
 2678 0138 49       		.uleb128 0x49
 2679 0139 13       		.uleb128 0x13
 2680 013a 38       		.uleb128 0x38
 2681 013b 0B       		.uleb128 0xb
 2682 013c 00       		.byte	0
 2683 013d 00       		.byte	0
 2684 013e 1B       		.uleb128 0x1b
 2685 013f 0D       		.uleb128 0xd
 2686 0140 00       		.byte	0
 2687 0141 03       		.uleb128 0x3
 2688 0142 0E       		.uleb128 0xe
 2689 0143 3A       		.uleb128 0x3a
 2690 0144 0B       		.uleb128 0xb
 2691 0145 3B       		.uleb128 0x3b
 2692 0146 05       		.uleb128 0x5
 2693 0147 49       		.uleb128 0x49
ARM GAS  /tmp/ccdF0JIt.s 			page 60


 2694 0148 13       		.uleb128 0x13
 2695 0149 38       		.uleb128 0x38
 2696 014a 05       		.uleb128 0x5
 2697 014b 00       		.byte	0
 2698 014c 00       		.byte	0
 2699 014d 1C       		.uleb128 0x1c
 2700 014e 13       		.uleb128 0x13
 2701 014f 01       		.byte	0x1
 2702 0150 03       		.uleb128 0x3
 2703 0151 0E       		.uleb128 0xe
 2704 0152 0B       		.uleb128 0xb
 2705 0153 0B       		.uleb128 0xb
 2706 0154 3A       		.uleb128 0x3a
 2707 0155 0B       		.uleb128 0xb
 2708 0156 3B       		.uleb128 0x3b
 2709 0157 05       		.uleb128 0x5
 2710 0158 01       		.uleb128 0x1
 2711 0159 13       		.uleb128 0x13
 2712 015a 00       		.byte	0
 2713 015b 00       		.byte	0
 2714 015c 1D       		.uleb128 0x1d
 2715 015d 13       		.uleb128 0x13
 2716 015e 01       		.byte	0x1
 2717 015f 0B       		.uleb128 0xb
 2718 0160 0B       		.uleb128 0xb
 2719 0161 3A       		.uleb128 0x3a
 2720 0162 0B       		.uleb128 0xb
 2721 0163 3B       		.uleb128 0x3b
 2722 0164 05       		.uleb128 0x5
 2723 0165 01       		.uleb128 0x1
 2724 0166 13       		.uleb128 0x13
 2725 0167 00       		.byte	0
 2726 0168 00       		.byte	0
 2727 0169 1E       		.uleb128 0x1e
 2728 016a 17       		.uleb128 0x17
 2729 016b 01       		.byte	0x1
 2730 016c 0B       		.uleb128 0xb
 2731 016d 0B       		.uleb128 0xb
 2732 016e 3A       		.uleb128 0x3a
 2733 016f 0B       		.uleb128 0xb
 2734 0170 3B       		.uleb128 0x3b
 2735 0171 05       		.uleb128 0x5
 2736 0172 01       		.uleb128 0x1
 2737 0173 13       		.uleb128 0x13
 2738 0174 00       		.byte	0
 2739 0175 00       		.byte	0
 2740 0176 1F       		.uleb128 0x1f
 2741 0177 0D       		.uleb128 0xd
 2742 0178 00       		.byte	0
 2743 0179 03       		.uleb128 0x3
 2744 017a 0E       		.uleb128 0xe
 2745 017b 3A       		.uleb128 0x3a
 2746 017c 0B       		.uleb128 0xb
 2747 017d 3B       		.uleb128 0x3b
 2748 017e 05       		.uleb128 0x5
 2749 017f 49       		.uleb128 0x49
 2750 0180 13       		.uleb128 0x13
ARM GAS  /tmp/ccdF0JIt.s 			page 61


 2751 0181 00       		.byte	0
 2752 0182 00       		.byte	0
 2753 0183 20       		.uleb128 0x20
 2754 0184 15       		.uleb128 0x15
 2755 0185 01       		.byte	0x1
 2756 0186 27       		.uleb128 0x27
 2757 0187 19       		.uleb128 0x19
 2758 0188 01       		.uleb128 0x1
 2759 0189 13       		.uleb128 0x13
 2760 018a 00       		.byte	0
 2761 018b 00       		.byte	0
 2762 018c 21       		.uleb128 0x21
 2763 018d 34       		.uleb128 0x34
 2764 018e 00       		.byte	0
 2765 018f 03       		.uleb128 0x3
 2766 0190 0E       		.uleb128 0xe
 2767 0191 3A       		.uleb128 0x3a
 2768 0192 0B       		.uleb128 0xb
 2769 0193 3B       		.uleb128 0x3b
 2770 0194 0B       		.uleb128 0xb
 2771 0195 49       		.uleb128 0x49
 2772 0196 13       		.uleb128 0x13
 2773 0197 02       		.uleb128 0x2
 2774 0198 18       		.uleb128 0x18
 2775 0199 00       		.byte	0
 2776 019a 00       		.byte	0
 2777 019b 22       		.uleb128 0x22
 2778 019c 04       		.uleb128 0x4
 2779 019d 01       		.byte	0x1
 2780 019e 03       		.uleb128 0x3
 2781 019f 0E       		.uleb128 0xe
 2782 01a0 0B       		.uleb128 0xb
 2783 01a1 0B       		.uleb128 0xb
 2784 01a2 49       		.uleb128 0x49
 2785 01a3 13       		.uleb128 0x13
 2786 01a4 3A       		.uleb128 0x3a
 2787 01a5 0B       		.uleb128 0xb
 2788 01a6 3B       		.uleb128 0x3b
 2789 01a7 0B       		.uleb128 0xb
 2790 01a8 01       		.uleb128 0x1
 2791 01a9 13       		.uleb128 0x13
 2792 01aa 00       		.byte	0
 2793 01ab 00       		.byte	0
 2794 01ac 23       		.uleb128 0x23
 2795 01ad 28       		.uleb128 0x28
 2796 01ae 00       		.byte	0
 2797 01af 03       		.uleb128 0x3
 2798 01b0 0E       		.uleb128 0xe
 2799 01b1 1C       		.uleb128 0x1c
 2800 01b2 0B       		.uleb128 0xb
 2801 01b3 00       		.byte	0
 2802 01b4 00       		.byte	0
 2803 01b5 24       		.uleb128 0x24
 2804 01b6 2E       		.uleb128 0x2e
 2805 01b7 01       		.byte	0x1
 2806 01b8 3F       		.uleb128 0x3f
 2807 01b9 19       		.uleb128 0x19
ARM GAS  /tmp/ccdF0JIt.s 			page 62


 2808 01ba 03       		.uleb128 0x3
 2809 01bb 0E       		.uleb128 0xe
 2810 01bc 3A       		.uleb128 0x3a
 2811 01bd 0B       		.uleb128 0xb
 2812 01be 3B       		.uleb128 0x3b
 2813 01bf 05       		.uleb128 0x5
 2814 01c0 27       		.uleb128 0x27
 2815 01c1 19       		.uleb128 0x19
 2816 01c2 49       		.uleb128 0x49
 2817 01c3 13       		.uleb128 0x13
 2818 01c4 11       		.uleb128 0x11
 2819 01c5 01       		.uleb128 0x1
 2820 01c6 12       		.uleb128 0x12
 2821 01c7 06       		.uleb128 0x6
 2822 01c8 40       		.uleb128 0x40
 2823 01c9 18       		.uleb128 0x18
 2824 01ca 9742     		.uleb128 0x2117
 2825 01cc 19       		.uleb128 0x19
 2826 01cd 01       		.uleb128 0x1
 2827 01ce 13       		.uleb128 0x13
 2828 01cf 00       		.byte	0
 2829 01d0 00       		.byte	0
 2830 01d1 25       		.uleb128 0x25
 2831 01d2 05       		.uleb128 0x5
 2832 01d3 00       		.byte	0
 2833 01d4 03       		.uleb128 0x3
 2834 01d5 0E       		.uleb128 0xe
 2835 01d6 3A       		.uleb128 0x3a
 2836 01d7 0B       		.uleb128 0xb
 2837 01d8 3B       		.uleb128 0x3b
 2838 01d9 05       		.uleb128 0x5
 2839 01da 49       		.uleb128 0x49
 2840 01db 13       		.uleb128 0x13
 2841 01dc 02       		.uleb128 0x2
 2842 01dd 17       		.uleb128 0x17
 2843 01de 00       		.byte	0
 2844 01df 00       		.byte	0
 2845 01e0 26       		.uleb128 0x26
 2846 01e1 05       		.uleb128 0x5
 2847 01e2 00       		.byte	0
 2848 01e3 03       		.uleb128 0x3
 2849 01e4 0E       		.uleb128 0xe
 2850 01e5 3A       		.uleb128 0x3a
 2851 01e6 0B       		.uleb128 0xb
 2852 01e7 3B       		.uleb128 0x3b
 2853 01e8 05       		.uleb128 0x5
 2854 01e9 49       		.uleb128 0x49
 2855 01ea 13       		.uleb128 0x13
 2856 01eb 02       		.uleb128 0x2
 2857 01ec 18       		.uleb128 0x18
 2858 01ed 00       		.byte	0
 2859 01ee 00       		.byte	0
 2860 01ef 27       		.uleb128 0x27
 2861 01f0 34       		.uleb128 0x34
 2862 01f1 00       		.byte	0
 2863 01f2 03       		.uleb128 0x3
 2864 01f3 08       		.uleb128 0x8
ARM GAS  /tmp/ccdF0JIt.s 			page 63


 2865 01f4 3A       		.uleb128 0x3a
 2866 01f5 0B       		.uleb128 0xb
 2867 01f6 3B       		.uleb128 0x3b
 2868 01f7 05       		.uleb128 0x5
 2869 01f8 49       		.uleb128 0x49
 2870 01f9 13       		.uleb128 0x13
 2871 01fa 02       		.uleb128 0x2
 2872 01fb 17       		.uleb128 0x17
 2873 01fc 00       		.byte	0
 2874 01fd 00       		.byte	0
 2875 01fe 28       		.uleb128 0x28
 2876 01ff 2E       		.uleb128 0x2e
 2877 0200 01       		.byte	0x1
 2878 0201 3F       		.uleb128 0x3f
 2879 0202 19       		.uleb128 0x19
 2880 0203 03       		.uleb128 0x3
 2881 0204 0E       		.uleb128 0xe
 2882 0205 3A       		.uleb128 0x3a
 2883 0206 0B       		.uleb128 0xb
 2884 0207 3B       		.uleb128 0x3b
 2885 0208 05       		.uleb128 0x5
 2886 0209 27       		.uleb128 0x27
 2887 020a 19       		.uleb128 0x19
 2888 020b 11       		.uleb128 0x11
 2889 020c 01       		.uleb128 0x1
 2890 020d 12       		.uleb128 0x12
 2891 020e 06       		.uleb128 0x6
 2892 020f 40       		.uleb128 0x40
 2893 0210 18       		.uleb128 0x18
 2894 0211 9742     		.uleb128 0x2117
 2895 0213 19       		.uleb128 0x19
 2896 0214 01       		.uleb128 0x1
 2897 0215 13       		.uleb128 0x13
 2898 0216 00       		.byte	0
 2899 0217 00       		.byte	0
 2900 0218 29       		.uleb128 0x29
 2901 0219 2E       		.uleb128 0x2e
 2902 021a 01       		.byte	0x1
 2903 021b 3F       		.uleb128 0x3f
 2904 021c 19       		.uleb128 0x19
 2905 021d 03       		.uleb128 0x3
 2906 021e 0E       		.uleb128 0xe
 2907 021f 3A       		.uleb128 0x3a
 2908 0220 0B       		.uleb128 0xb
 2909 0221 3B       		.uleb128 0x3b
 2910 0222 0B       		.uleb128 0xb
 2911 0223 27       		.uleb128 0x27
 2912 0224 19       		.uleb128 0x19
 2913 0225 11       		.uleb128 0x11
 2914 0226 01       		.uleb128 0x1
 2915 0227 12       		.uleb128 0x12
 2916 0228 06       		.uleb128 0x6
 2917 0229 40       		.uleb128 0x40
 2918 022a 18       		.uleb128 0x18
 2919 022b 9742     		.uleb128 0x2117
 2920 022d 19       		.uleb128 0x19
 2921 022e 01       		.uleb128 0x1
ARM GAS  /tmp/ccdF0JIt.s 			page 64


 2922 022f 13       		.uleb128 0x13
 2923 0230 00       		.byte	0
 2924 0231 00       		.byte	0
 2925 0232 2A       		.uleb128 0x2a
 2926 0233 05       		.uleb128 0x5
 2927 0234 00       		.byte	0
 2928 0235 03       		.uleb128 0x3
 2929 0236 0E       		.uleb128 0xe
 2930 0237 3A       		.uleb128 0x3a
 2931 0238 0B       		.uleb128 0xb
 2932 0239 3B       		.uleb128 0x3b
 2933 023a 0B       		.uleb128 0xb
 2934 023b 49       		.uleb128 0x49
 2935 023c 13       		.uleb128 0x13
 2936 023d 02       		.uleb128 0x2
 2937 023e 18       		.uleb128 0x18
 2938 023f 00       		.byte	0
 2939 0240 00       		.byte	0
 2940 0241 2B       		.uleb128 0x2b
 2941 0242 2E       		.uleb128 0x2e
 2942 0243 01       		.byte	0x1
 2943 0244 3F       		.uleb128 0x3f
 2944 0245 19       		.uleb128 0x19
 2945 0246 03       		.uleb128 0x3
 2946 0247 0E       		.uleb128 0xe
 2947 0248 3A       		.uleb128 0x3a
 2948 0249 0B       		.uleb128 0xb
 2949 024a 3B       		.uleb128 0x3b
 2950 024b 0B       		.uleb128 0xb
 2951 024c 27       		.uleb128 0x27
 2952 024d 19       		.uleb128 0x19
 2953 024e 49       		.uleb128 0x49
 2954 024f 13       		.uleb128 0x13
 2955 0250 11       		.uleb128 0x11
 2956 0251 01       		.uleb128 0x1
 2957 0252 12       		.uleb128 0x12
 2958 0253 06       		.uleb128 0x6
 2959 0254 40       		.uleb128 0x40
 2960 0255 18       		.uleb128 0x18
 2961 0256 9742     		.uleb128 0x2117
 2962 0258 19       		.uleb128 0x19
 2963 0259 01       		.uleb128 0x1
 2964 025a 13       		.uleb128 0x13
 2965 025b 00       		.byte	0
 2966 025c 00       		.byte	0
 2967 025d 2C       		.uleb128 0x2c
 2968 025e 05       		.uleb128 0x5
 2969 025f 00       		.byte	0
 2970 0260 03       		.uleb128 0x3
 2971 0261 0E       		.uleb128 0xe
 2972 0262 3A       		.uleb128 0x3a
 2973 0263 0B       		.uleb128 0xb
 2974 0264 3B       		.uleb128 0x3b
 2975 0265 0B       		.uleb128 0xb
 2976 0266 49       		.uleb128 0x49
 2977 0267 13       		.uleb128 0x13
 2978 0268 02       		.uleb128 0x2
ARM GAS  /tmp/ccdF0JIt.s 			page 65


 2979 0269 17       		.uleb128 0x17
 2980 026a 00       		.byte	0
 2981 026b 00       		.byte	0
 2982 026c 2D       		.uleb128 0x2d
 2983 026d 0B       		.uleb128 0xb
 2984 026e 01       		.byte	0x1
 2985 026f 11       		.uleb128 0x11
 2986 0270 01       		.uleb128 0x1
 2987 0271 12       		.uleb128 0x12
 2988 0272 06       		.uleb128 0x6
 2989 0273 01       		.uleb128 0x1
 2990 0274 13       		.uleb128 0x13
 2991 0275 00       		.byte	0
 2992 0276 00       		.byte	0
 2993 0277 2E       		.uleb128 0x2e
 2994 0278 34       		.uleb128 0x34
 2995 0279 00       		.byte	0
 2996 027a 03       		.uleb128 0x3
 2997 027b 08       		.uleb128 0x8
 2998 027c 3A       		.uleb128 0x3a
 2999 027d 0B       		.uleb128 0xb
 3000 027e 3B       		.uleb128 0x3b
 3001 027f 0B       		.uleb128 0xb
 3002 0280 49       		.uleb128 0x49
 3003 0281 13       		.uleb128 0x13
 3004 0282 02       		.uleb128 0x2
 3005 0283 17       		.uleb128 0x17
 3006 0284 00       		.byte	0
 3007 0285 00       		.byte	0
 3008 0286 2F       		.uleb128 0x2f
 3009 0287 0B       		.uleb128 0xb
 3010 0288 01       		.byte	0x1
 3011 0289 11       		.uleb128 0x11
 3012 028a 01       		.uleb128 0x1
 3013 028b 12       		.uleb128 0x12
 3014 028c 06       		.uleb128 0x6
 3015 028d 00       		.byte	0
 3016 028e 00       		.byte	0
 3017 028f 30       		.uleb128 0x30
 3018 0290 2E       		.uleb128 0x2e
 3019 0291 01       		.byte	0x1
 3020 0292 3F       		.uleb128 0x3f
 3021 0293 19       		.uleb128 0x19
 3022 0294 03       		.uleb128 0x3
 3023 0295 0E       		.uleb128 0xe
 3024 0296 3A       		.uleb128 0x3a
 3025 0297 0B       		.uleb128 0xb
 3026 0298 3B       		.uleb128 0x3b
 3027 0299 0B       		.uleb128 0xb
 3028 029a 27       		.uleb128 0x27
 3029 029b 19       		.uleb128 0x19
 3030 029c 11       		.uleb128 0x11
 3031 029d 01       		.uleb128 0x1
 3032 029e 12       		.uleb128 0x12
 3033 029f 06       		.uleb128 0x6
 3034 02a0 40       		.uleb128 0x40
 3035 02a1 18       		.uleb128 0x18
ARM GAS  /tmp/ccdF0JIt.s 			page 66


 3036 02a2 9742     		.uleb128 0x2117
 3037 02a4 19       		.uleb128 0x19
 3038 02a5 00       		.byte	0
 3039 02a6 00       		.byte	0
 3040 02a7 00       		.byte	0
 3041              		.section	.debug_loc,"",%progbits
 3042              	.Ldebug_loc0:
 3043              	.LLST21:
 3044 0000 00000000 		.4byte	.LVL54
 3045 0004 04000000 		.4byte	.LVL55
 3046 0008 0100     		.2byte	0x1
 3047 000a 50       		.byte	0x50
 3048 000b 04000000 		.4byte	.LVL55
 3049 000f 06000000 		.4byte	.LFE159
 3050 0013 0400     		.2byte	0x4
 3051 0015 F3       		.byte	0xf3
 3052 0016 01       		.uleb128 0x1
 3053 0017 50       		.byte	0x50
 3054 0018 9F       		.byte	0x9f
 3055 0019 00000000 		.4byte	0
 3056 001d 00000000 		.4byte	0
 3057              	.LLST20:
 3058 0021 00000000 		.4byte	.LVL52
 3059 0025 04000000 		.4byte	.LVL53
 3060 0029 0100     		.2byte	0x1
 3061 002b 50       		.byte	0x50
 3062 002c 04000000 		.4byte	.LVL53
 3063 0030 0A000000 		.4byte	.LFE158
 3064 0034 0100     		.2byte	0x1
 3065 0036 53       		.byte	0x53
 3066 0037 00000000 		.4byte	0
 3067 003b 00000000 		.4byte	0
 3068              	.LLST19:
 3069 003f 00000000 		.4byte	.LVL50
 3070 0043 02000000 		.4byte	.LVL51
 3071 0047 0100     		.2byte	0x1
 3072 0049 50       		.byte	0x50
 3073 004a 02000000 		.4byte	.LVL51
 3074 004e 04000000 		.4byte	.LFE157
 3075 0052 0400     		.2byte	0x4
 3076 0054 F3       		.byte	0xf3
 3077 0055 01       		.uleb128 0x1
 3078 0056 50       		.byte	0x50
 3079 0057 9F       		.byte	0x9f
 3080 0058 00000000 		.4byte	0
 3081 005c 00000000 		.4byte	0
 3082              	.LLST17:
 3083 0060 00000000 		.4byte	.LVL45
 3084 0064 08000000 		.4byte	.LVL46
 3085 0068 0100     		.2byte	0x1
 3086 006a 50       		.byte	0x50
 3087 006b 08000000 		.4byte	.LVL46
 3088 006f 0A000000 		.4byte	.LVL47
 3089 0073 0400     		.2byte	0x4
 3090 0075 F3       		.byte	0xf3
 3091 0076 01       		.uleb128 0x1
 3092 0077 50       		.byte	0x50
ARM GAS  /tmp/ccdF0JIt.s 			page 67


 3093 0078 9F       		.byte	0x9f
 3094 0079 0A000000 		.4byte	.LVL47
 3095 007d 16000000 		.4byte	.LVL49
 3096 0081 0100     		.2byte	0x1
 3097 0083 50       		.byte	0x50
 3098 0084 16000000 		.4byte	.LVL49
 3099 0088 18000000 		.4byte	.LFE156
 3100 008c 0400     		.2byte	0x4
 3101 008e F3       		.byte	0xf3
 3102 008f 01       		.uleb128 0x1
 3103 0090 50       		.byte	0x50
 3104 0091 9F       		.byte	0x9f
 3105 0092 00000000 		.4byte	0
 3106 0096 00000000 		.4byte	0
 3107              	.LLST18:
 3108 009a 00000000 		.4byte	.LVL45
 3109 009e 12000000 		.4byte	.LVL48
 3110 00a2 0100     		.2byte	0x1
 3111 00a4 51       		.byte	0x51
 3112 00a5 12000000 		.4byte	.LVL48
 3113 00a9 18000000 		.4byte	.LFE156
 3114 00ad 0400     		.2byte	0x4
 3115 00af F3       		.byte	0xf3
 3116 00b0 01       		.uleb128 0x1
 3117 00b1 51       		.byte	0x51
 3118 00b2 9F       		.byte	0x9f
 3119 00b3 00000000 		.4byte	0
 3120 00b7 00000000 		.4byte	0
 3121              	.LLST15:
 3122 00bb 00000000 		.4byte	.LVL40
 3123 00bf 08000000 		.4byte	.LVL41
 3124 00c3 0100     		.2byte	0x1
 3125 00c5 50       		.byte	0x50
 3126 00c6 08000000 		.4byte	.LVL41
 3127 00ca 0A000000 		.4byte	.LVL42
 3128 00ce 0400     		.2byte	0x4
 3129 00d0 F3       		.byte	0xf3
 3130 00d1 01       		.uleb128 0x1
 3131 00d2 50       		.byte	0x50
 3132 00d3 9F       		.byte	0x9f
 3133 00d4 0A000000 		.4byte	.LVL42
 3134 00d8 16000000 		.4byte	.LVL44
 3135 00dc 0100     		.2byte	0x1
 3136 00de 50       		.byte	0x50
 3137 00df 16000000 		.4byte	.LVL44
 3138 00e3 18000000 		.4byte	.LFE155
 3139 00e7 0400     		.2byte	0x4
 3140 00e9 F3       		.byte	0xf3
 3141 00ea 01       		.uleb128 0x1
 3142 00eb 50       		.byte	0x50
 3143 00ec 9F       		.byte	0x9f
 3144 00ed 00000000 		.4byte	0
 3145 00f1 00000000 		.4byte	0
 3146              	.LLST16:
 3147 00f5 00000000 		.4byte	.LVL40
 3148 00f9 12000000 		.4byte	.LVL43
 3149 00fd 0100     		.2byte	0x1
ARM GAS  /tmp/ccdF0JIt.s 			page 68


 3150 00ff 51       		.byte	0x51
 3151 0100 12000000 		.4byte	.LVL43
 3152 0104 18000000 		.4byte	.LFE155
 3153 0108 0400     		.2byte	0x4
 3154 010a F3       		.byte	0xf3
 3155 010b 01       		.uleb128 0x1
 3156 010c 51       		.byte	0x51
 3157 010d 9F       		.byte	0x9f
 3158 010e 00000000 		.4byte	0
 3159 0112 00000000 		.4byte	0
 3160              	.LLST13:
 3161 0116 00000000 		.4byte	.LVL32
 3162 011a 10000000 		.4byte	.LVL36
 3163 011e 0100     		.2byte	0x1
 3164 0120 50       		.byte	0x50
 3165 0121 10000000 		.4byte	.LVL36
 3166 0125 12000000 		.4byte	.LVL37
 3167 0129 0400     		.2byte	0x4
 3168 012b F3       		.byte	0xf3
 3169 012c 01       		.uleb128 0x1
 3170 012d 50       		.byte	0x50
 3171 012e 9F       		.byte	0x9f
 3172 012f 12000000 		.4byte	.LVL37
 3173 0133 1A000000 		.4byte	.LVL39
 3174 0137 0100     		.2byte	0x1
 3175 0139 50       		.byte	0x50
 3176 013a 1A000000 		.4byte	.LVL39
 3177 013e 1C000000 		.4byte	.LFE154
 3178 0142 0400     		.2byte	0x4
 3179 0144 F3       		.byte	0xf3
 3180 0145 01       		.uleb128 0x1
 3181 0146 50       		.byte	0x50
 3182 0147 9F       		.byte	0x9f
 3183 0148 00000000 		.4byte	0
 3184 014c 00000000 		.4byte	0
 3185              	.LLST14:
 3186 0150 02000000 		.4byte	.LVL33
 3187 0154 04000000 		.4byte	.LVL34
 3188 0158 0100     		.2byte	0x1
 3189 015a 53       		.byte	0x53
 3190 015b 04000000 		.4byte	.LVL34
 3191 015f 0C000000 		.4byte	.LVL35
 3192 0163 0900     		.2byte	0x9
 3193 0165 73       		.byte	0x73
 3194 0166 00       		.sleb128 0
 3195 0167 11       		.byte	0x11
 3196 0168 FFFFBF7C 		.sleb128 -7340033
 3197 016c 1A       		.byte	0x1a
 3198 016d 9F       		.byte	0x9f
 3199 016e 0C000000 		.4byte	.LVL35
 3200 0172 12000000 		.4byte	.LVL37
 3201 0176 0100     		.2byte	0x1
 3202 0178 53       		.byte	0x53
 3203 0179 12000000 		.4byte	.LVL37
 3204 017d 16000000 		.4byte	.LVL38
 3205 0181 0800     		.2byte	0x8
 3206 0183 73       		.byte	0x73
ARM GAS  /tmp/ccdF0JIt.s 			page 69


 3207 0184 00       		.sleb128 0
 3208 0185 11       		.byte	0x11
 3209 0186 FFFF63   		.sleb128 -458753
 3210 0189 1A       		.byte	0x1a
 3211 018a 9F       		.byte	0x9f
 3212 018b 16000000 		.4byte	.LVL38
 3213 018f 1C000000 		.4byte	.LFE154
 3214 0193 0100     		.2byte	0x1
 3215 0195 53       		.byte	0x53
 3216 0196 00000000 		.4byte	0
 3217 019a 00000000 		.4byte	0
 3218              	.LLST10:
 3219 019e 00000000 		.4byte	.LVL27
 3220 01a2 06000000 		.4byte	.LVL29
 3221 01a6 0100     		.2byte	0x1
 3222 01a8 50       		.byte	0x50
 3223 01a9 06000000 		.4byte	.LVL29
 3224 01ad 16000000 		.4byte	.LFE153
 3225 01b1 0100     		.2byte	0x1
 3226 01b3 52       		.byte	0x52
 3227 01b4 00000000 		.4byte	0
 3228 01b8 00000000 		.4byte	0
 3229              	.LLST11:
 3230 01bc 00000000 		.4byte	.LVL27
 3231 01c0 04000000 		.4byte	.LVL28
 3232 01c4 0100     		.2byte	0x1
 3233 01c6 51       		.byte	0x51
 3234 01c7 04000000 		.4byte	.LVL28
 3235 01cb 16000000 		.4byte	.LFE153
 3236 01cf 0400     		.2byte	0x4
 3237 01d1 F3       		.byte	0xf3
 3238 01d2 01       		.uleb128 0x1
 3239 01d3 51       		.byte	0x51
 3240 01d4 9F       		.byte	0x9f
 3241 01d5 00000000 		.4byte	0
 3242 01d9 00000000 		.4byte	0
 3243              	.LLST12:
 3244 01dd 08000000 		.4byte	.LVL30
 3245 01e1 10000000 		.4byte	.LVL31
 3246 01e5 0A00     		.2byte	0xa
 3247 01e7 73       		.byte	0x73
 3248 01e8 00       		.sleb128 0
 3249 01e9 11       		.byte	0x11
 3250 01ea FFFFFF87 		.sleb128 -251658241
 3250      7F
 3251 01ef 1A       		.byte	0x1a
 3252 01f0 9F       		.byte	0x9f
 3253 01f1 10000000 		.4byte	.LVL31
 3254 01f5 16000000 		.4byte	.LFE153
 3255 01f9 0100     		.2byte	0x1
 3256 01fb 53       		.byte	0x53
 3257 01fc 00000000 		.4byte	0
 3258 0200 00000000 		.4byte	0
 3259              	.LLST9:
 3260 0204 00000000 		.4byte	.LVL25
 3261 0208 04000000 		.4byte	.LVL26
 3262 020c 0100     		.2byte	0x1
ARM GAS  /tmp/ccdF0JIt.s 			page 70


 3263 020e 50       		.byte	0x50
 3264 020f 04000000 		.4byte	.LVL26
 3265 0213 06000000 		.4byte	.LFE152
 3266 0217 0400     		.2byte	0x4
 3267 0219 F3       		.byte	0xf3
 3268 021a 01       		.uleb128 0x1
 3269 021b 50       		.byte	0x50
 3270 021c 9F       		.byte	0x9f
 3271 021d 00000000 		.4byte	0
 3272 0221 00000000 		.4byte	0
 3273              	.LLST8:
 3274 0225 00000000 		.4byte	.LVL21
 3275 0229 02000000 		.4byte	.LVL22
 3276 022d 0100     		.2byte	0x1
 3277 022f 52       		.byte	0x52
 3278 0230 02000000 		.4byte	.LVL22
 3279 0234 06000000 		.4byte	.LVL23
 3280 0238 0300     		.2byte	0x3
 3281 023a 72       		.byte	0x72
 3282 023b 7A       		.sleb128 -6
 3283 023c 9F       		.byte	0x9f
 3284 023d 06000000 		.4byte	.LVL23
 3285 0241 0A000000 		.4byte	.LFE150
 3286 0245 0400     		.2byte	0x4
 3287 0247 F3       		.byte	0xf3
 3288 0248 01       		.uleb128 0x1
 3289 0249 52       		.byte	0x52
 3290 024a 9F       		.byte	0x9f
 3291 024b 00000000 		.4byte	0
 3292 024f 00000000 		.4byte	0
 3293              	.LLST7:
 3294 0253 00000000 		.4byte	.LVL19
 3295 0257 02000000 		.4byte	.LVL20
 3296 025b 0100     		.2byte	0x1
 3297 025d 50       		.byte	0x50
 3298 025e 02000000 		.4byte	.LVL20
 3299 0262 04000000 		.4byte	.LFE149
 3300 0266 0400     		.2byte	0x4
 3301 0268 F3       		.byte	0xf3
 3302 0269 01       		.uleb128 0x1
 3303 026a 50       		.byte	0x50
 3304 026b 9F       		.byte	0x9f
 3305 026c 00000000 		.4byte	0
 3306 0270 00000000 		.4byte	0
 3307              	.LLST6:
 3308 0274 00000000 		.4byte	.LVL17
 3309 0278 02000000 		.4byte	.LVL18
 3310 027c 0100     		.2byte	0x1
 3311 027e 50       		.byte	0x50
 3312 027f 02000000 		.4byte	.LVL18
 3313 0283 04000000 		.4byte	.LFE148
 3314 0287 0400     		.2byte	0x4
 3315 0289 F3       		.byte	0xf3
 3316 028a 01       		.uleb128 0x1
 3317 028b 50       		.byte	0x50
 3318 028c 9F       		.byte	0x9f
 3319 028d 00000000 		.4byte	0
ARM GAS  /tmp/ccdF0JIt.s 			page 71


 3320 0291 00000000 		.4byte	0
 3321              	.LLST5:
 3322 0295 00000000 		.4byte	.LVL13
 3323 0299 04000000 		.4byte	.LVL14
 3324 029d 0100     		.2byte	0x1
 3325 029f 50       		.byte	0x50
 3326 02a0 04000000 		.4byte	.LVL14
 3327 02a4 06000000 		.4byte	.LFE145
 3328 02a8 0400     		.2byte	0x4
 3329 02aa F3       		.byte	0xf3
 3330 02ab 01       		.uleb128 0x1
 3331 02ac 50       		.byte	0x50
 3332 02ad 9F       		.byte	0x9f
 3333 02ae 00000000 		.4byte	0
 3334 02b2 00000000 		.4byte	0
 3335              	.LLST0:
 3336 02b6 00000000 		.4byte	.LVL1
 3337 02ba 08000000 		.4byte	.LVL2
 3338 02be 0100     		.2byte	0x1
 3339 02c0 50       		.byte	0x50
 3340 02c1 08000000 		.4byte	.LVL2
 3341 02c5 0A000000 		.4byte	.LVL3
 3342 02c9 0400     		.2byte	0x4
 3343 02cb F3       		.byte	0xf3
 3344 02cc 01       		.uleb128 0x1
 3345 02cd 50       		.byte	0x50
 3346 02ce 9F       		.byte	0x9f
 3347 02cf 0A000000 		.4byte	.LVL3
 3348 02d3 20000000 		.4byte	.LVL6
 3349 02d7 0100     		.2byte	0x1
 3350 02d9 50       		.byte	0x50
 3351 02da 20000000 		.4byte	.LVL6
 3352 02de 22000000 		.4byte	.LVL7
 3353 02e2 0400     		.2byte	0x4
 3354 02e4 F3       		.byte	0xf3
 3355 02e5 01       		.uleb128 0x1
 3356 02e6 50       		.byte	0x50
 3357 02e7 9F       		.byte	0x9f
 3358 02e8 22000000 		.4byte	.LVL7
 3359 02ec 38000000 		.4byte	.LVL11
 3360 02f0 0100     		.2byte	0x1
 3361 02f2 50       		.byte	0x50
 3362 02f3 38000000 		.4byte	.LVL11
 3363 02f7 3A000000 		.4byte	.LFE143
 3364 02fb 0400     		.2byte	0x4
 3365 02fd F3       		.byte	0xf3
 3366 02fe 01       		.uleb128 0x1
 3367 02ff 50       		.byte	0x50
 3368 0300 9F       		.byte	0x9f
 3369 0301 00000000 		.4byte	0
 3370 0305 00000000 		.4byte	0
 3371              	.LLST1:
 3372 0309 00000000 		.4byte	.LVL1
 3373 030d 24000000 		.4byte	.LVL8
 3374 0311 0100     		.2byte	0x1
 3375 0313 51       		.byte	0x51
 3376 0314 24000000 		.4byte	.LVL8
ARM GAS  /tmp/ccdF0JIt.s 			page 72


 3377 0318 3A000000 		.4byte	.LFE143
 3378 031c 0400     		.2byte	0x4
 3379 031e F3       		.byte	0xf3
 3380 031f 01       		.uleb128 0x1
 3381 0320 51       		.byte	0x51
 3382 0321 9F       		.byte	0x9f
 3383 0322 00000000 		.4byte	0
 3384 0326 00000000 		.4byte	0
 3385              	.LLST2:
 3386 032a 00000000 		.4byte	.LVL1
 3387 032e 0E000000 		.4byte	.LVL4
 3388 0332 0100     		.2byte	0x1
 3389 0334 52       		.byte	0x52
 3390 0335 0E000000 		.4byte	.LVL4
 3391 0339 22000000 		.4byte	.LVL7
 3392 033d 0400     		.2byte	0x4
 3393 033f F3       		.byte	0xf3
 3394 0340 01       		.uleb128 0x1
 3395 0341 52       		.byte	0x52
 3396 0342 9F       		.byte	0x9f
 3397 0343 22000000 		.4byte	.LVL7
 3398 0347 3A000000 		.4byte	.LFE143
 3399 034b 0100     		.2byte	0x1
 3400 034d 52       		.byte	0x52
 3401 034e 00000000 		.4byte	0
 3402 0352 00000000 		.4byte	0
 3403              	.LLST4:
 3404 0356 26000000 		.4byte	.LVL9
 3405 035a 2E000000 		.4byte	.LVL10
 3406 035e 0600     		.2byte	0x6
 3407 0360 73       		.byte	0x73
 3408 0361 00       		.sleb128 0
 3409 0362 09       		.byte	0x9
 3410 0363 8F       		.byte	0x8f
 3411 0364 1A       		.byte	0x1a
 3412 0365 9F       		.byte	0x9f
 3413 0366 2E000000 		.4byte	.LVL10
 3414 036a 3A000000 		.4byte	.LFE143
 3415 036e 0100     		.2byte	0x1
 3416 0370 53       		.byte	0x53
 3417 0371 00000000 		.4byte	0
 3418 0375 00000000 		.4byte	0
 3419              	.LLST3:
 3420 0379 0E000000 		.4byte	.LVL4
 3421 037d 16000000 		.4byte	.LVL5
 3422 0381 0700     		.2byte	0x7
 3423 0383 72       		.byte	0x72
 3424 0384 00       		.sleb128 0
 3425 0385 0B       		.byte	0xb
 3426 0386 FFF8     		.2byte	0xf8ff
 3427 0388 1A       		.byte	0x1a
 3428 0389 9F       		.byte	0x9f
 3429 038a 16000000 		.4byte	.LVL5
 3430 038e 22000000 		.4byte	.LVL7
 3431 0392 0100     		.2byte	0x1
 3432 0394 52       		.byte	0x52
 3433 0395 00000000 		.4byte	0
ARM GAS  /tmp/ccdF0JIt.s 			page 73


 3434 0399 00000000 		.4byte	0
 3435              		.section	.debug_aranges,"",%progbits
 3436 0000 A4000000 		.4byte	0xa4
 3437 0004 0200     		.2byte	0x2
 3438 0006 00000000 		.4byte	.Ldebug_info0
 3439 000a 04       		.byte	0x4
 3440 000b 00       		.byte	0
 3441 000c 0000     		.2byte	0
 3442 000e 0000     		.2byte	0
 3443 0010 00000000 		.4byte	.LFB142
 3444 0014 06000000 		.4byte	.LFE142-.LFB142
 3445 0018 00000000 		.4byte	.LFB143
 3446 001c 3A000000 		.4byte	.LFE143-.LFB143
 3447 0020 00000000 		.4byte	.LFB144
 3448 0024 1C000000 		.4byte	.LFE144-.LFB144
 3449 0028 00000000 		.4byte	.LFB145
 3450 002c 06000000 		.4byte	.LFE145-.LFB145
 3451 0030 00000000 		.4byte	.LFB146
 3452 0034 04000000 		.4byte	.LFE146-.LFB146
 3453 0038 00000000 		.4byte	.LFB147
 3454 003c 04000000 		.4byte	.LFE147-.LFB147
 3455 0040 00000000 		.4byte	.LFB148
 3456 0044 04000000 		.4byte	.LFE148-.LFB148
 3457 0048 00000000 		.4byte	.LFB149
 3458 004c 04000000 		.4byte	.LFE149-.LFB149
 3459 0050 00000000 		.4byte	.LFB150
 3460 0054 0A000000 		.4byte	.LFE150-.LFB150
 3461 0058 00000000 		.4byte	.LFB151
 3462 005c 1C000000 		.4byte	.LFE151-.LFB151
 3463 0060 00000000 		.4byte	.LFB152
 3464 0064 06000000 		.4byte	.LFE152-.LFB152
 3465 0068 00000000 		.4byte	.LFB153
 3466 006c 16000000 		.4byte	.LFE153-.LFB153
 3467 0070 00000000 		.4byte	.LFB154
 3468 0074 1C000000 		.4byte	.LFE154-.LFB154
 3469 0078 00000000 		.4byte	.LFB155
 3470 007c 18000000 		.4byte	.LFE155-.LFB155
 3471 0080 00000000 		.4byte	.LFB156
 3472 0084 18000000 		.4byte	.LFE156-.LFB156
 3473 0088 00000000 		.4byte	.LFB157
 3474 008c 04000000 		.4byte	.LFE157-.LFB157
 3475 0090 00000000 		.4byte	.LFB158
 3476 0094 0A000000 		.4byte	.LFE158-.LFB158
 3477 0098 00000000 		.4byte	.LFB159
 3478 009c 06000000 		.4byte	.LFE159-.LFB159
 3479 00a0 00000000 		.4byte	0
 3480 00a4 00000000 		.4byte	0
 3481              		.section	.debug_ranges,"",%progbits
 3482              	.Ldebug_ranges0:
 3483 0000 00000000 		.4byte	.LFB142
 3484 0004 06000000 		.4byte	.LFE142
 3485 0008 00000000 		.4byte	.LFB143
 3486 000c 3A000000 		.4byte	.LFE143
 3487 0010 00000000 		.4byte	.LFB144
 3488 0014 1C000000 		.4byte	.LFE144
 3489 0018 00000000 		.4byte	.LFB145
 3490 001c 06000000 		.4byte	.LFE145
ARM GAS  /tmp/ccdF0JIt.s 			page 74


 3491 0020 00000000 		.4byte	.LFB146
 3492 0024 04000000 		.4byte	.LFE146
 3493 0028 00000000 		.4byte	.LFB147
 3494 002c 04000000 		.4byte	.LFE147
 3495 0030 00000000 		.4byte	.LFB148
 3496 0034 04000000 		.4byte	.LFE148
 3497 0038 00000000 		.4byte	.LFB149
 3498 003c 04000000 		.4byte	.LFE149
 3499 0040 00000000 		.4byte	.LFB150
 3500 0044 0A000000 		.4byte	.LFE150
 3501 0048 00000000 		.4byte	.LFB151
 3502 004c 1C000000 		.4byte	.LFE151
 3503 0050 00000000 		.4byte	.LFB152
 3504 0054 06000000 		.4byte	.LFE152
 3505 0058 00000000 		.4byte	.LFB153
 3506 005c 16000000 		.4byte	.LFE153
 3507 0060 00000000 		.4byte	.LFB154
 3508 0064 1C000000 		.4byte	.LFE154
 3509 0068 00000000 		.4byte	.LFB155
 3510 006c 18000000 		.4byte	.LFE155
 3511 0070 00000000 		.4byte	.LFB156
 3512 0074 18000000 		.4byte	.LFE156
 3513 0078 00000000 		.4byte	.LFB157
 3514 007c 04000000 		.4byte	.LFE157
 3515 0080 00000000 		.4byte	.LFB158
 3516 0084 0A000000 		.4byte	.LFE158
 3517 0088 00000000 		.4byte	.LFB159
 3518 008c 06000000 		.4byte	.LFE159
 3519 0090 00000000 		.4byte	0
 3520 0094 00000000 		.4byte	0
 3521              		.section	.debug_line,"",%progbits
 3522              	.Ldebug_line0:
 3523 0000 D7030000 		.section	.debug_str,"MS",%progbits,1
 3523      02006202 
 3523      00000201 
 3523      FB0E0D00 
 3523      01010101 
 3524              	.LASF3:
 3525 0000 73686F72 		.ascii	"short int\000"
 3525      7420696E 
 3525      7400
 3526              	.LASF175:
 3527 000a 64616363 		.ascii	"dacc_set_transfer_mode\000"
 3527      5F736574 
 3527      5F747261 
 3527      6E736665 
 3527      725F6D6F 
 3528              	.LASF115:
 3529 0021 5F72616E 		.ascii	"_rand48\000"
 3529      64343800 
 3530              	.LASF94:
 3531 0029 5F656D65 		.ascii	"_emergency\000"
 3531      7267656E 
 3531      637900
 3532              	.LASF131:
 3533 0034 5F676574 		.ascii	"_getdate_err\000"
 3533      64617465 
ARM GAS  /tmp/ccdF0JIt.s 			page 75


 3533      5F657272 
 3533      00
 3534              	.LASF84:
 3535 0041 5F646174 		.ascii	"_data\000"
 3535      6100
 3536              	.LASF5:
 3537 0047 6C6F6E67 		.ascii	"long int\000"
 3537      20696E74 
 3537      00
 3538              	.LASF135:
 3539 0050 5F776372 		.ascii	"_wcrtomb_state\000"
 3539      746F6D62 
 3539      5F737461 
 3539      746500
 3540              	.LASF136:
 3541 005f 5F776373 		.ascii	"_wcsrtombs_state\000"
 3541      72746F6D 
 3541      62735F73 
 3541      74617465 
 3541      00
 3542              	.LASF10:
 3543 0070 6C6F6E67 		.ascii	"long long unsigned int\000"
 3543      206C6F6E 
 3543      6720756E 
 3543      7369676E 
 3543      65642069 
 3544              	.LASF74:
 3545 0087 5F6C6266 		.ascii	"_lbfsize\000"
 3545      73697A65 
 3545      00
 3546              	.LASF178:
 3547 0090 64616363 		.ascii	"dacc_set_trigger\000"
 3547      5F736574 
 3547      5F747269 
 3547      67676572 
 3547      00
 3548              	.LASF14:
 3549 00a1 49544D5F 		.ascii	"ITM_RxBuffer\000"
 3549      52784275 
 3549      66666572 
 3549      00
 3550              	.LASF154:
 3551 00ae 705F6461 		.ascii	"p_dacc\000"
 3551      636300
 3552              	.LASF133:
 3553 00b5 5F6D6272 		.ascii	"_mbrtowc_state\000"
 3553      746F7763 
 3553      5F737461 
 3553      746500
 3554              	.LASF87:
 3555 00c4 5F666C61 		.ascii	"_flags2\000"
 3555      67733200 
 3556              	.LASF128:
 3557 00cc 5F776374 		.ascii	"_wctomb_state\000"
 3557      6F6D625F 
 3557      73746174 
 3557      6500
ARM GAS  /tmp/ccdF0JIt.s 			page 76


 3558              	.LASF51:
 3559 00da 5F5F746D 		.ascii	"__tm_sec\000"
 3559      5F736563 
 3559      00
 3560              	.LASF79:
 3561 00e3 5F636C6F 		.ascii	"_close\000"
 3561      736500
 3562              	.LASF1:
 3563 00ea 7369676E 		.ascii	"signed char\000"
 3563      65642063 
 3563      68617200 
 3564              	.LASF80:
 3565 00f6 5F756275 		.ascii	"_ubuf\000"
 3565      6600
 3566              	.LASF69:
 3567 00fc 5F626173 		.ascii	"_base\000"
 3567      6500
 3568              	.LASF19:
 3569 0102 52657365 		.ascii	"Reserved1\000"
 3569      72766564 
 3569      3100
 3570              	.LASF28:
 3571 010c 52657365 		.ascii	"Reserved2\000"
 3571      72766564 
 3571      3200
 3572              	.LASF53:
 3573 0116 5F5F746D 		.ascii	"__tm_hour\000"
 3573      5F686F75 
 3573      7200
 3574              	.LASF109:
 3575 0120 5F5F7366 		.ascii	"__sf\000"
 3575      00
 3576              	.LASF60:
 3577 0125 5F6F6E5F 		.ascii	"_on_exit_args\000"
 3577      65786974 
 3577      5F617267 
 3577      7300
 3578              	.LASF156:
 3579 0133 64616363 		.ascii	"dacc_get_channel_status\000"
 3579      5F676574 
 3579      5F636861 
 3579      6E6E656C 
 3579      5F737461 
 3580              	.LASF75:
 3581 014b 5F636F6F 		.ascii	"_cookie\000"
 3581      6B696500 
 3582              	.LASF108:
 3583 0153 5F5F7367 		.ascii	"__sglue\000"
 3583      6C756500 
 3584              	.LASF177:
 3585 015b 64616363 		.ascii	"dacc_disable_trigger\000"
 3585      5F646973 
 3585      61626C65 
 3585      5F747269 
 3585      67676572 
 3586              	.LASF18:
 3587 0170 44414343 		.ascii	"DACC_TRIGR\000"
ARM GAS  /tmp/ccdF0JIt.s 			page 77


 3587      5F545249 
 3587      475200
 3588              	.LASF72:
 3589 017b 5F666C61 		.ascii	"_flags\000"
 3589      677300
 3590              	.LASF64:
 3591 0182 5F69735F 		.ascii	"_is_cxa\000"
 3591      63786100 
 3592              	.LASF48:
 3593 018a 5F776473 		.ascii	"_wds\000"
 3593      00
 3594              	.LASF169:
 3595 018f 756C5F64 		.ascii	"ul_data\000"
 3595      61746100 
 3596              	.LASF100:
 3597 0197 5F726573 		.ascii	"_result_k\000"
 3597      756C745F 
 3597      6B00
 3598              	.LASF9:
 3599 01a1 6C6F6E67 		.ascii	"long long int\000"
 3599      206C6F6E 
 3599      6720696E 
 3599      7400
 3600              	.LASF149:
 3601 01af 646F7562 		.ascii	"double\000"
 3601      6C6500
 3602              	.LASF104:
 3603 01b6 5F637674 		.ascii	"_cvtbuf\000"
 3603      62756600 
 3604              	.LASF134:
 3605 01be 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 3605      72746F77 
 3605      63735F73 
 3605      74617465 
 3605      00
 3606              	.LASF26:
 3607 01cf 44414343 		.ascii	"DACC_IMR\000"
 3607      5F494D52 
 3607      00
 3608              	.LASF132:
 3609 01d8 5F6D6272 		.ascii	"_mbrlen_state\000"
 3609      6C656E5F 
 3609      73746174 
 3609      6500
 3610              	.LASF159:
 3611 01e6 64616363 		.ascii	"dacc_enable_channel\000"
 3611      5F656E61 
 3611      626C655F 
 3611      6368616E 
 3611      6E656C00 
 3612              	.LASF61:
 3613 01fa 5F666E61 		.ascii	"_fnargs\000"
 3613      72677300 
 3614              	.LASF168:
 3615 0202 64616363 		.ascii	"dacc_write_conversion_data\000"
 3615      5F777269 
 3615      74655F63 
ARM GAS  /tmp/ccdF0JIt.s 			page 78


 3615      6F6E7665 
 3615      7273696F 
 3616              	.LASF67:
 3617 021d 5F666E73 		.ascii	"_fns\000"
 3617      00
 3618              	.LASF7:
 3619 0222 5F5F7569 		.ascii	"__uint32_t\000"
 3619      6E743332 
 3619      5F7400
 3620              	.LASF47:
 3621 022d 5F736967 		.ascii	"_sign\000"
 3621      6E00
 3622              	.LASF141:
 3623 0233 5F696D70 		.ascii	"_impure_ptr\000"
 3623      7572655F 
 3623      70747200 
 3624              	.LASF92:
 3625 023f 5F737464 		.ascii	"_stderr\000"
 3625      65727200 
 3626              	.LASF49:
 3627 0247 5F426967 		.ascii	"_Bigint\000"
 3627      696E7400 
 3628              	.LASF123:
 3629 024f 5F67616D 		.ascii	"_gamma_signgam\000"
 3629      6D615F73 
 3629      69676E67 
 3629      616D00
 3630              	.LASF153:
 3631 025e 64616363 		.ascii	"dacc_set_analog_control\000"
 3631      5F736574 
 3631      5F616E61 
 3631      6C6F675F 
 3631      636F6E74 
 3632              	.LASF139:
 3633 0276 5F6E6D61 		.ascii	"_nmalloc\000"
 3633      6C6C6F63 
 3633      00
 3634              	.LASF50:
 3635 027f 5F5F746D 		.ascii	"__tm\000"
 3635      00
 3636              	.LASF27:
 3637 0284 44414343 		.ascii	"DACC_ISR\000"
 3637      5F495352 
 3637      00
 3638              	.LASF86:
 3639 028d 5F6D6273 		.ascii	"_mbstate\000"
 3639      74617465 
 3639      00
 3640              	.LASF39:
 3641 0296 5F5F7763 		.ascii	"__wchb\000"
 3641      686200
 3642              	.LASF15:
 3643 029d 53797374 		.ascii	"SystemCoreClock\000"
 3643      656D436F 
 3643      7265436C 
 3643      6F636B00 
 3644              	.LASF103:
ARM GAS  /tmp/ccdF0JIt.s 			page 79


 3645 02ad 5F637674 		.ascii	"_cvtlen\000"
 3645      6C656E00 
 3646              	.LASF25:
 3647 02b5 44414343 		.ascii	"DACC_IDR\000"
 3647      5F494452 
 3647      00
 3648              	.LASF8:
 3649 02be 6C6F6E67 		.ascii	"long unsigned int\000"
 3649      20756E73 
 3649      69676E65 
 3649      6420696E 
 3649      7400
 3650              	.LASF73:
 3651 02d0 5F66696C 		.ascii	"_file\000"
 3651      6500
 3652              	.LASF30:
 3653 02d6 52657365 		.ascii	"Reserved3\000"
 3653      72766564 
 3653      3300
 3654              	.LASF113:
 3655 02e0 5F6E696F 		.ascii	"_niobs\000"
 3655      627300
 3656              	.LASF172:
 3657 02e7 64616363 		.ascii	"dacc_disable_interrupt\000"
 3657      5F646973 
 3657      61626C65 
 3657      5F696E74 
 3657      65727275 
 3658              	.LASF107:
 3659 02fe 5F736967 		.ascii	"_sig_func\000"
 3659      5F66756E 
 3659      6300
 3660              	.LASF4:
 3661 0308 73686F72 		.ascii	"short unsigned int\000"
 3661      7420756E 
 3661      7369676E 
 3661      65642069 
 3661      6E7400
 3662              	.LASF106:
 3663 031b 5F617465 		.ascii	"_atexit0\000"
 3663      78697430 
 3663      00
 3664              	.LASF130:
 3665 0324 5F736967 		.ascii	"_signal_buf\000"
 3665      6E616C5F 
 3665      62756600 
 3666              	.LASF121:
 3667 0330 5F617363 		.ascii	"_asctime_buf\000"
 3667      74696D65 
 3667      5F627566 
 3667      00
 3668              	.LASF22:
 3669 033d 44414343 		.ascii	"DACC_CHSR\000"
 3669      5F434853 
 3669      5200
 3670              	.LASF99:
 3671 0347 5F726573 		.ascii	"_result\000"
ARM GAS  /tmp/ccdF0JIt.s 			page 80


 3671      756C7400 
 3672              	.LASF38:
 3673 034f 5F5F7763 		.ascii	"__wch\000"
 3673      6800
 3674              	.LASF138:
 3675 0355 5F6E6578 		.ascii	"_nextf\000"
 3675      746600
 3676              	.LASF37:
 3677 035c 77696E74 		.ascii	"wint_t\000"
 3677      5F7400
 3678              	.LASF21:
 3679 0363 44414343 		.ascii	"DACC_CHDR\000"
 3679      5F434844 
 3679      5200
 3680              	.LASF23:
 3681 036d 44414343 		.ascii	"DACC_CDR\000"
 3681      5F434452 
 3681      00
 3682              	.LASF85:
 3683 0376 5F6C6F63 		.ascii	"_lock\000"
 3683      6B00
 3684              	.LASF117:
 3685 037c 5F6D756C 		.ascii	"_mult\000"
 3685      7400
 3686              	.LASF77:
 3687 0382 5F777269 		.ascii	"_write\000"
 3687      746500
 3688              	.LASF56:
 3689 0389 5F5F746D 		.ascii	"__tm_year\000"
 3689      5F796561 
 3689      7200
 3690              	.LASF164:
 3691 0393 756C5F70 		.ascii	"ul_prescaler\000"
 3691      72657363 
 3691      616C6572 
 3691      00
 3692              	.LASF119:
 3693 03a0 5F756E75 		.ascii	"_unused_rand\000"
 3693      7365645F 
 3693      72616E64 
 3693      00
 3694              	.LASF24:
 3695 03ad 44414343 		.ascii	"DACC_IER\000"
 3695      5F494552 
 3695      00
 3696              	.LASF147:
 3697 03b6 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 3697      6972715F 
 3697      70726576 
 3697      5F696E74 
 3697      65727275 
 3698              	.LASF171:
 3699 03d3 64616363 		.ascii	"dacc_get_interrupt_mask\000"
 3699      5F676574 
 3699      5F696E74 
 3699      65727275 
 3699      70745F6D 
ARM GAS  /tmp/ccdF0JIt.s 			page 81


 3700              	.LASF13:
 3701 03eb 73697A65 		.ascii	"sizetype\000"
 3701      74797065 
 3701      00
 3702              	.LASF157:
 3703 03f4 64616363 		.ascii	"dacc_disable_channel\000"
 3703      5F646973 
 3703      61626C65 
 3703      5F636861 
 3703      6E6E656C 
 3704              	.LASF83:
 3705 0409 5F6F6666 		.ascii	"_offset\000"
 3705      73657400 
 3706              	.LASF158:
 3707 0411 756C5F63 		.ascii	"ul_channel\000"
 3707      68616E6E 
 3707      656C00
 3708              	.LASF16:
 3709 041c 44414343 		.ascii	"DACC_CR\000"
 3709      5F435200 
 3710              	.LASF20:
 3711 0424 44414343 		.ascii	"DACC_CHER\000"
 3711      5F434845 
 3711      5200
 3712              	.LASF180:
 3713 042e 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 3713      43393920 
 3713      362E332E 
 3713      31203230 
 3713      31373036 
 3714 0461 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 3714      76352D64 
 3714      3136202D 
 3714      6D666C6F 
 3714      61742D61 
 3715 0494 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 3715      6E2D7365 
 3715      6374696F 
 3715      6E73202D 
 3715      66646174 
 3716 04c7 6F6E7374 		.ascii	"onstant\000"
 3716      616E7400 
 3717              	.LASF43:
 3718 04cf 5F666C6F 		.ascii	"_flock_t\000"
 3718      636B5F74 
 3718      00
 3719              	.LASF162:
 3720 04d8 756C5F6F 		.ascii	"ul_osr\000"
 3720      737200
 3721              	.LASF55:
 3722 04df 5F5F746D 		.ascii	"__tm_mon\000"
 3722      5F6D6F6E 
 3722      00
 3723              	.LASF65:
 3724 04e8 5F617465 		.ascii	"_atexit\000"
 3724      78697400 
 3725              	.LASF143:
ARM GAS  /tmp/ccdF0JIt.s 			page 82


 3726 04f0 7375626F 		.ascii	"suboptarg\000"
 3726      70746172 
 3726      6700
 3727              	.LASF97:
 3728 04fa 5F5F7364 		.ascii	"__sdidinit\000"
 3728      6964696E 
 3728      697400
 3729              	.LASF35:
 3730 0505 5F6F6666 		.ascii	"_off_t\000"
 3730      5F7400
 3731              	.LASF152:
 3732 050c 64616363 		.ascii	"dacc_get_analog_control\000"
 3732      5F676574 
 3732      5F616E61 
 3732      6C6F675F 
 3732      636F6E74 
 3733              	.LASF148:
 3734 0524 666C6F61 		.ascii	"float\000"
 3734      7400
 3735              	.LASF176:
 3736 052a 756C5F6D 		.ascii	"ul_mode\000"
 3736      6F646500 
 3737              	.LASF144:
 3738 0532 675F696E 		.ascii	"g_interrupt_enabled\000"
 3738      74657272 
 3738      7570745F 
 3738      656E6162 
 3738      6C656400 
 3739              	.LASF173:
 3740 0546 756C5F69 		.ascii	"ul_interrupt_mask\000"
 3740      6E746572 
 3740      72757074 
 3740      5F6D6173 
 3740      6B00
 3741              	.LASF34:
 3742 0558 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 3742      4B5F5245 
 3742      43555253 
 3742      4956455F 
 3742      5400
 3743              	.LASF76:
 3744 056a 5F726561 		.ascii	"_read\000"
 3744      6400
 3745              	.LASF145:
 3746 0570 5F426F6F 		.ascii	"_Bool\000"
 3746      6C00
 3747              	.LASF11:
 3748 0576 696E7433 		.ascii	"int32_t\000"
 3748      325F7400 
 3749              	.LASF62:
 3750 057e 5F64736F 		.ascii	"_dso_handle\000"
 3750      5F68616E 
 3750      646C6500 
 3751              	.LASF150:
 3752 058a 44414343 		.ascii	"DACC_RC_OK\000"
 3752      5F52435F 
 3752      4F4B00
ARM GAS  /tmp/ccdF0JIt.s 			page 83


 3753              	.LASF105:
 3754 0595 5F6E6577 		.ascii	"_new\000"
 3754      00
 3755              	.LASF29:
 3756 059a 44414343 		.ascii	"DACC_ACR\000"
 3756      5F414352 
 3756      00
 3757              	.LASF126:
 3758 05a3 5F6D626C 		.ascii	"_mblen_state\000"
 3758      656E5F73 
 3758      74617465 
 3758      00
 3759              	.LASF58:
 3760 05b0 5F5F746D 		.ascii	"__tm_yday\000"
 3760      5F796461 
 3760      7900
 3761              	.LASF33:
 3762 05ba 44616363 		.ascii	"Dacc\000"
 3762      00
 3763              	.LASF68:
 3764 05bf 5F5F7362 		.ascii	"__sbuf\000"
 3764      756600
 3765              	.LASF163:
 3766 05c6 64616363 		.ascii	"dacc_set_prescaler\000"
 3766      5F736574 
 3766      5F707265 
 3766      7363616C 
 3766      657200
 3767              	.LASF102:
 3768 05d9 5F667265 		.ascii	"_freelist\000"
 3768      656C6973 
 3768      7400
 3769              	.LASF111:
 3770 05e3 5F5F4649 		.ascii	"__FILE\000"
 3770      4C4500
 3771              	.LASF42:
 3772 05ea 5F6D6273 		.ascii	"_mbstate_t\000"
 3772      74617465 
 3772      5F7400
 3773              	.LASF151:
 3774 05f5 44414343 		.ascii	"DACC_RC_INVALID_PARAM\000"
 3774      5F52435F 
 3774      494E5641 
 3774      4C49445F 
 3774      50415241 
 3775              	.LASF71:
 3776 060b 5F5F7346 		.ascii	"__sFILE\000"
 3776      494C4500 
 3777              	.LASF165:
 3778 0613 64616363 		.ascii	"dacc_get_writeprotect_status\000"
 3778      5F676574 
 3778      5F777269 
 3778      74657072 
 3778      6F746563 
 3779              	.LASF124:
 3780 0630 5F72616E 		.ascii	"_rand_next\000"
 3780      645F6E65 
ARM GAS  /tmp/ccdF0JIt.s 			page 84


 3780      787400
 3781              	.LASF155:
 3782 063b 756C5F61 		.ascii	"ul_analog_control\000"
 3782      6E616C6F 
 3782      675F636F 
 3782      6E74726F 
 3782      6C00
 3783              	.LASF114:
 3784 064d 5F696F62 		.ascii	"_iobs\000"
 3784      7300
 3785              	.LASF93:
 3786 0653 5F696E63 		.ascii	"_inc\000"
 3786      00
 3787              	.LASF66:
 3788 0658 5F696E64 		.ascii	"_ind\000"
 3788      00
 3789              	.LASF96:
 3790 065d 5F637572 		.ascii	"_current_locale\000"
 3790      72656E74 
 3790      5F6C6F63 
 3790      616C6500 
 3791              	.LASF161:
 3792 066d 6368616E 		.ascii	"channel\000"
 3792      6E656C00 
 3793              	.LASF98:
 3794 0675 5F5F636C 		.ascii	"__cleanup\000"
 3794      65616E75 
 3794      7000
 3795              	.LASF166:
 3796 067f 756C5F65 		.ascii	"ul_enable\000"
 3796      6E61626C 
 3796      6500
 3797              	.LASF46:
 3798 0689 5F6D6178 		.ascii	"_maxwds\000"
 3798      77647300 
 3799              	.LASF88:
 3800 0691 5F726565 		.ascii	"_reent\000"
 3800      6E7400
 3801              	.LASF116:
 3802 0698 5F736565 		.ascii	"_seed\000"
 3802      6400
 3803              	.LASF40:
 3804 069e 5F5F636F 		.ascii	"__count\000"
 3804      756E7400 
 3805              	.LASF12:
 3806 06a6 75696E74 		.ascii	"uint32_t\000"
 3806      33325F74 
 3806      00
 3807              	.LASF78:
 3808 06af 5F736565 		.ascii	"_seek\000"
 3808      6B00
 3809              	.LASF137:
 3810 06b5 5F685F65 		.ascii	"_h_errno\000"
 3810      72726E6F 
 3810      00
 3811              	.LASF36:
 3812 06be 5F66706F 		.ascii	"_fpos_t\000"
ARM GAS  /tmp/ccdF0JIt.s 			page 85


 3812      735F7400 
 3813              	.LASF110:
 3814 06c6 63686172 		.ascii	"char\000"
 3814      00
 3815              	.LASF89:
 3816 06cb 5F657272 		.ascii	"_errno\000"
 3816      6E6F00
 3817              	.LASF32:
 3818 06d2 44414343 		.ascii	"DACC_WPSR\000"
 3818      5F575053 
 3818      5200
 3819              	.LASF82:
 3820 06dc 5F626C6B 		.ascii	"_blksize\000"
 3820      73697A65 
 3820      00
 3821              	.LASF167:
 3822 06e5 64616363 		.ascii	"dacc_set_writeprotect\000"
 3822      5F736574 
 3822      5F777269 
 3822      74657072 
 3822      6F746563 
 3823              	.LASF70:
 3824 06fb 5F73697A 		.ascii	"_size\000"
 3824      6500
 3825              	.LASF0:
 3826 0701 756E7369 		.ascii	"unsigned int\000"
 3826      676E6564 
 3826      20696E74 
 3826      00
 3827              	.LASF179:
 3828 070e 756C5F74 		.ascii	"ul_trigger\000"
 3828      72696767 
 3828      657200
 3829              	.LASF183:
 3830 0719 64616363 		.ascii	"dacc_rc\000"
 3830      5F726300 
 3831              	.LASF6:
 3832 0721 5F5F696E 		.ascii	"__int32_t\000"
 3832      7433325F 
 3832      7400
 3833              	.LASF181:
 3834 072b 2E2E2F61 		.ascii	"../asf/sam/drivers/dacc/dacc.c\000"
 3834      73662F73 
 3834      616D2F64 
 3834      72697665 
 3834      72732F64 
 3835              	.LASF45:
 3836 074a 5F6E6578 		.ascii	"_next\000"
 3836      7400
 3837              	.LASF120:
 3838 0750 5F737472 		.ascii	"_strtok_last\000"
 3838      746F6B5F 
 3838      6C617374 
 3838      00
 3839              	.LASF41:
 3840 075d 5F5F7661 		.ascii	"__value\000"
 3840      6C756500 
ARM GAS  /tmp/ccdF0JIt.s 			page 86


 3841              	.LASF63:
 3842 0765 5F666E74 		.ascii	"_fntypes\000"
 3842      79706573 
 3842      00
 3843              	.LASF2:
 3844 076e 756E7369 		.ascii	"unsigned char\000"
 3844      676E6564 
 3844      20636861 
 3844      7200
 3845              	.LASF118:
 3846 077c 5F616464 		.ascii	"_add\000"
 3846      00
 3847              	.LASF17:
 3848 0781 44414343 		.ascii	"DACC_MR\000"
 3848      5F4D5200 
 3849              	.LASF44:
 3850 0789 5F5F554C 		.ascii	"__ULong\000"
 3850      6F6E6700 
 3851              	.LASF174:
 3852 0791 64616363 		.ascii	"dacc_enable_interrupt\000"
 3852      5F656E61 
 3852      626C655F 
 3852      696E7465 
 3852      72727570 
 3853              	.LASF142:
 3854 07a7 5F676C6F 		.ascii	"_global_impure_ptr\000"
 3854      62616C5F 
 3854      696D7075 
 3854      72655F70 
 3854      747200
 3855              	.LASF95:
 3856 07ba 5F637572 		.ascii	"_current_category\000"
 3856      72656E74 
 3856      5F636174 
 3856      65676F72 
 3856      7900
 3857              	.LASF160:
 3858 07cc 64616363 		.ascii	"dacc_set_osr\000"
 3858      5F736574 
 3858      5F6F7372 
 3858      00
 3859              	.LASF91:
 3860 07d9 5F737464 		.ascii	"_stdout\000"
 3860      6F757400 
 3861              	.LASF57:
 3862 07e1 5F5F746D 		.ascii	"__tm_wday\000"
 3862      5F776461 
 3862      7900
 3863              	.LASF112:
 3864 07eb 5F676C75 		.ascii	"_glue\000"
 3864      6500
 3865              	.LASF90:
 3866 07f1 5F737464 		.ascii	"_stdin\000"
 3866      696E00
 3867              	.LASF129:
 3868 07f8 5F6C3634 		.ascii	"_l64a_buf\000"
 3868      615F6275 
ARM GAS  /tmp/ccdF0JIt.s 			page 87


 3868      6600
 3869              	.LASF127:
 3870 0802 5F6D6274 		.ascii	"_mbtowc_state\000"
 3870      6F77635F 
 3870      73746174 
 3870      6500
 3871              	.LASF146:
 3872 0810 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 3872      6972715F 
 3872      63726974 
 3872      6963616C 
 3872      5F736563 
 3873              	.LASF81:
 3874 0831 5F6E6275 		.ascii	"_nbuf\000"
 3874      6600
 3875              	.LASF140:
 3876 0837 5F756E75 		.ascii	"_unused\000"
 3876      73656400 
 3877              	.LASF182:
 3878 083f 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 3878      652F746F 
 3878      72626A6F 
 3878      726E2F65 
 3878      636C6970 
 3879 0872 00       		.ascii	"\000"
 3880              	.LASF59:
 3881 0873 5F5F746D 		.ascii	"__tm_isdst\000"
 3881      5F697364 
 3881      737400
 3882              	.LASF122:
 3883 087e 5F6C6F63 		.ascii	"_localtime_buf\000"
 3883      616C7469 
 3883      6D655F62 
 3883      756600
 3884              	.LASF52:
 3885 088d 5F5F746D 		.ascii	"__tm_min\000"
 3885      5F6D696E 
 3885      00
 3886              	.LASF125:
 3887 0896 5F723438 		.ascii	"_r48\000"
 3887      00
 3888              	.LASF170:
 3889 089b 64616363 		.ascii	"dacc_get_interrupt_status\000"
 3889      5F676574 
 3889      5F696E74 
 3889      65727275 
 3889      70745F73 
 3890              	.LASF101:
 3891 08b5 5F703573 		.ascii	"_p5s\000"
 3891      00
 3892              	.LASF31:
 3893 08ba 44414343 		.ascii	"DACC_WPMR\000"
 3893      5F57504D 
 3893      5200
 3894              	.LASF54:
 3895 08c4 5F5F746D 		.ascii	"__tm_mday\000"
 3895      5F6D6461 
ARM GAS  /tmp/ccdF0JIt.s 			page 88


 3895      7900
 3896              	.LASF184:
 3897 08ce 64616363 		.ascii	"dacc_reset\000"
 3897      5F726573 
 3897      657400
 3898              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
