ARM GAS  /tmp/ccQNhOlE.s 			page 1


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
  12              		.file	"afec.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.afec_process_callback,"ax",%progbits
  17              		.align	1
  18              		.p2align 2,,3
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  23              		.type	afec_process_callback, %function
  24              	afec_process_callback:
  25              	.LFB201:
  26              		.file 1 "../asf/sam/drivers/afec/afec.c"
   1:../asf/sam/drivers/afec/afec.c **** /**
   2:../asf/sam/drivers/afec/afec.c ****  * \file
   3:../asf/sam/drivers/afec/afec.c ****  *
   4:../asf/sam/drivers/afec/afec.c ****  * \brief Analog-Front-End Controller driver for SAM.
   5:../asf/sam/drivers/afec/afec.c ****  *
   6:../asf/sam/drivers/afec/afec.c ****  * Copyright (c) 2014-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/afec/afec.c ****  *
   8:../asf/sam/drivers/afec/afec.c ****  * \asf_license_start
   9:../asf/sam/drivers/afec/afec.c ****  *
  10:../asf/sam/drivers/afec/afec.c ****  * \page License
  11:../asf/sam/drivers/afec/afec.c ****  *
  12:../asf/sam/drivers/afec/afec.c ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/afec/afec.c ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/afec/afec.c ****  *
  15:../asf/sam/drivers/afec/afec.c ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/afec/afec.c ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/afec/afec.c ****  *
  18:../asf/sam/drivers/afec/afec.c ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/afec/afec.c ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/afec/afec.c ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/afec/afec.c ****  *
  22:../asf/sam/drivers/afec/afec.c ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/afec/afec.c ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/afec/afec.c ****  *
  25:../asf/sam/drivers/afec/afec.c ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/afec/afec.c ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/afec/afec.c ****  *
  28:../asf/sam/drivers/afec/afec.c ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/afec/afec.c ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/afec/afec.c ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:../asf/sam/drivers/afec/afec.c ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
ARM GAS  /tmp/ccQNhOlE.s 			page 2


  32:../asf/sam/drivers/afec/afec.c ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/afec/afec.c ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/afec/afec.c ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/afec/afec.c ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/afec/afec.c ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/afec/afec.c ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/afec/afec.c ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/afec/afec.c ****  *
  40:../asf/sam/drivers/afec/afec.c ****  * \asf_license_stop
  41:../asf/sam/drivers/afec/afec.c ****  *
  42:../asf/sam/drivers/afec/afec.c ****  */
  43:../asf/sam/drivers/afec/afec.c **** /*
  44:../asf/sam/drivers/afec/afec.c ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/afec/afec.c ****  */
  46:../asf/sam/drivers/afec/afec.c **** 
  47:../asf/sam/drivers/afec/afec.c **** #include "afec.h"
  48:../asf/sam/drivers/afec/afec.c **** #include "sleepmgr.h"
  49:../asf/sam/drivers/afec/afec.c **** #include "status_codes.h"
  50:../asf/sam/drivers/afec/afec.c **** #include "sysclk.h"
  51:../asf/sam/drivers/afec/afec.c **** #include "pmc.h"
  52:../asf/sam/drivers/afec/afec.c **** 
  53:../asf/sam/drivers/afec/afec.c **** /**
  54:../asf/sam/drivers/afec/afec.c ****  * \defgroup sam_drivers_afec_group Analog-Front-End Controller
  55:../asf/sam/drivers/afec/afec.c ****  *
  56:../asf/sam/drivers/afec/afec.c ****  * See \ref sam_afec_quickstart.
  57:../asf/sam/drivers/afec/afec.c ****  *
  58:../asf/sam/drivers/afec/afec.c ****  * Driver for the Analog-Front-End Controller. This driver provides access to
  59:../asf/sam/drivers/afec/afec.c ****  * the main features of the AFEC controller.
  60:../asf/sam/drivers/afec/afec.c ****  *
  61:../asf/sam/drivers/afec/afec.c ****  * @{
  62:../asf/sam/drivers/afec/afec.c ****  */
  63:../asf/sam/drivers/afec/afec.c **** #if defined(AFEC1)
  64:../asf/sam/drivers/afec/afec.c **** #define NUM_OF_AFEC    (2UL)
  65:../asf/sam/drivers/afec/afec.c **** #else
  66:../asf/sam/drivers/afec/afec.c **** #define NUM_OF_AFEC    (1UL)
  67:../asf/sam/drivers/afec/afec.c **** #endif
  68:../asf/sam/drivers/afec/afec.c **** 
  69:../asf/sam/drivers/afec/afec.c **** /* The gap between bit EOC15 and DRDY in interrupt register */
  70:../asf/sam/drivers/afec/afec.c **** #if defined __SAM4E8C__  || defined __SAM4E16C__ || defined __SAM4E8CB__ || defined __SAM4E16CB__
  71:../asf/sam/drivers/afec/afec.c **** #define AFEC_INTERRUPT_GAP1                  (17UL)
  72:../asf/sam/drivers/afec/afec.c **** #elif defined __SAM4E8E__  || defined __SAM4E16E__
  73:../asf/sam/drivers/afec/afec.c **** #define AFEC_INTERRUPT_GAP1                  (8UL)
  74:../asf/sam/drivers/afec/afec.c **** #elif (SAMV71 || SAMV70 || SAME70 || SAMS70)
  75:../asf/sam/drivers/afec/afec.c **** /* The gap between bit EOC11 and DRDY in interrupt register */
  76:../asf/sam/drivers/afec/afec.c **** #define AFEC_INTERRUPT_GAP1                  (12UL)
  77:../asf/sam/drivers/afec/afec.c **** #endif
  78:../asf/sam/drivers/afec/afec.c **** 
  79:../asf/sam/drivers/afec/afec.c **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
  80:../asf/sam/drivers/afec/afec.c **** /* The gap between bit COMPE and TEMPCHG in interrupt register */
  81:../asf/sam/drivers/afec/afec.c **** #define AFEC_INTERRUPT_GAP2                  (3UL)
  82:../asf/sam/drivers/afec/afec.c **** #else
  83:../asf/sam/drivers/afec/afec.c **** /* The gap between bit RXBUFF and TEMPCHG in interrupt register */
  84:../asf/sam/drivers/afec/afec.c **** #define AFEC_INTERRUPT_GAP2                  (1UL)
  85:../asf/sam/drivers/afec/afec.c **** #endif
  86:../asf/sam/drivers/afec/afec.c **** 
  87:../asf/sam/drivers/afec/afec.c **** /* The number of channel in channel sequence1 register */
  88:../asf/sam/drivers/afec/afec.c **** #define AFEC_SEQ1_CHANNEL_NUM                (8UL)
ARM GAS  /tmp/ccQNhOlE.s 			page 3


  89:../asf/sam/drivers/afec/afec.c **** 
  90:../asf/sam/drivers/afec/afec.c **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
  91:../asf/sam/drivers/afec/afec.c **** /* The interrupt source number of temperature sensor */
  92:../asf/sam/drivers/afec/afec.c **** #define AFEC_TEMP_INT_SOURCE_NUM             (11UL)
  93:../asf/sam/drivers/afec/afec.c **** #else
  94:../asf/sam/drivers/afec/afec.c **** /* The interrupt source number of temperature sensor */
  95:../asf/sam/drivers/afec/afec.c **** #define AFEC_TEMP_INT_SOURCE_NUM             (15UL)
  96:../asf/sam/drivers/afec/afec.c **** #endif
  97:../asf/sam/drivers/afec/afec.c **** 
  98:../asf/sam/drivers/afec/afec.c **** afec_callback_t afec_callback_pointer[NUM_OF_AFEC][_AFEC_NUM_OF_INTERRUPT_SOURCE];
  99:../asf/sam/drivers/afec/afec.c **** 
 100:../asf/sam/drivers/afec/afec.c **** 
 101:../asf/sam/drivers/afec/afec.c **** /**
 102:../asf/sam/drivers/afec/afec.c ****  * \internal
 103:../asf/sam/drivers/afec/afec.c ****  * \brief Get AFEC instance number.
 104:../asf/sam/drivers/afec/afec.c ****  *
 105:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC
 106:../asf/sam/drivers/afec/afec.c ****  *
 107:../asf/sam/drivers/afec/afec.c ****  * \return   AFEC instance number
 108:../asf/sam/drivers/afec/afec.c ****  */
 109:../asf/sam/drivers/afec/afec.c **** static uint32_t afec_find_inst_num(Afec *const afec)
 110:../asf/sam/drivers/afec/afec.c **** {
 111:../asf/sam/drivers/afec/afec.c **** #if defined(AFEC1)
 112:../asf/sam/drivers/afec/afec.c **** 	if (afec == AFEC1) {
 113:../asf/sam/drivers/afec/afec.c **** 		return 1;
 114:../asf/sam/drivers/afec/afec.c **** 	}
 115:../asf/sam/drivers/afec/afec.c **** #endif
 116:../asf/sam/drivers/afec/afec.c **** #if defined(AFEC0)
 117:../asf/sam/drivers/afec/afec.c **** 	if (afec == AFEC0) {
 118:../asf/sam/drivers/afec/afec.c **** 		return 0;
 119:../asf/sam/drivers/afec/afec.c **** 	}
 120:../asf/sam/drivers/afec/afec.c **** #endif
 121:../asf/sam/drivers/afec/afec.c **** 	return 0;
 122:../asf/sam/drivers/afec/afec.c **** }
 123:../asf/sam/drivers/afec/afec.c **** 
 124:../asf/sam/drivers/afec/afec.c **** /**
 125:../asf/sam/drivers/afec/afec.c ****  * \internal
 126:../asf/sam/drivers/afec/afec.c ****  * \brief Get AFEC Peripheral ID.
 127:../asf/sam/drivers/afec/afec.c ****  *
 128:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC
 129:../asf/sam/drivers/afec/afec.c ****  *
 130:../asf/sam/drivers/afec/afec.c ****  * \return   AFEC Peripheral ID
 131:../asf/sam/drivers/afec/afec.c ****  */
 132:../asf/sam/drivers/afec/afec.c **** static uint32_t afec_find_pid(Afec *const afec)
 133:../asf/sam/drivers/afec/afec.c **** {
 134:../asf/sam/drivers/afec/afec.c **** #if defined(ID_AFEC1)
 135:../asf/sam/drivers/afec/afec.c **** 	if (afec == AFEC1) {
 136:../asf/sam/drivers/afec/afec.c **** 		return ID_AFEC1;
 137:../asf/sam/drivers/afec/afec.c **** 	}
 138:../asf/sam/drivers/afec/afec.c **** #endif
 139:../asf/sam/drivers/afec/afec.c **** #if defined(ID_AFEC0)
 140:../asf/sam/drivers/afec/afec.c **** 	if (afec == AFEC0) {
 141:../asf/sam/drivers/afec/afec.c **** 		return ID_AFEC0;
 142:../asf/sam/drivers/afec/afec.c **** 	}
 143:../asf/sam/drivers/afec/afec.c **** #endif
 144:../asf/sam/drivers/afec/afec.c **** 	return ID_AFEC0;
 145:../asf/sam/drivers/afec/afec.c **** }
ARM GAS  /tmp/ccQNhOlE.s 			page 4


 146:../asf/sam/drivers/afec/afec.c **** 
 147:../asf/sam/drivers/afec/afec.c **** /**
 148:../asf/sam/drivers/afec/afec.c ****  * \internal
 149:../asf/sam/drivers/afec/afec.c ****  * \brief Configure the AFEC Module.
 150:../asf/sam/drivers/afec/afec.c ****  *
 151:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC
 152:../asf/sam/drivers/afec/afec.c ****  * \param config   Configuration for the AFEC
 153:../asf/sam/drivers/afec/afec.c ****  */
 154:../asf/sam/drivers/afec/afec.c **** static void afec_set_config(Afec *const afec, struct afec_config *config)
 155:../asf/sam/drivers/afec/afec.c **** {
 156:../asf/sam/drivers/afec/afec.c **** 	uint32_t reg = 0;
 157:../asf/sam/drivers/afec/afec.c **** 
 158:../asf/sam/drivers/afec/afec.c **** 	reg = (config->useq ? AFEC_MR_USEQ_REG_ORDER : 0) |
 159:../asf/sam/drivers/afec/afec.c **** 		#if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 160:../asf/sam/drivers/afec/afec.c **** 			AFEC_MR_PRESCAL((config->mck / config->afec_clock )- 1) |
 161:../asf/sam/drivers/afec/afec.c **** 			AFEC_MR_ONE |
 162:../asf/sam/drivers/afec/afec.c **** 		#else
 163:../asf/sam/drivers/afec/afec.c **** 			(config->anach ? AFEC_MR_ANACH_ALLOWED : 0) |
 164:../asf/sam/drivers/afec/afec.c **** 			AFEC_MR_PRESCAL(config->mck / (2 * config->afec_clock) - 1) |
 165:../asf/sam/drivers/afec/afec.c **** 			(config->settling_time) |		
 166:../asf/sam/drivers/afec/afec.c **** 		#endif
 167:../asf/sam/drivers/afec/afec.c **** 			AFEC_MR_TRACKTIM(config->tracktim) |
 168:../asf/sam/drivers/afec/afec.c **** 			AFEC_MR_TRANSFER(config->transfer) |
 169:../asf/sam/drivers/afec/afec.c **** 			(config->startup_time);
 170:../asf/sam/drivers/afec/afec.c **** 
 171:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_MR = reg;
 172:../asf/sam/drivers/afec/afec.c **** 
 173:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_EMR = (config->tag ? AFEC_EMR_TAG : 0) |
 174:../asf/sam/drivers/afec/afec.c **** 			(config->resolution) |
 175:../asf/sam/drivers/afec/afec.c **** 			(config->stm ? AFEC_EMR_STM : 0);
 176:../asf/sam/drivers/afec/afec.c ****   #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 177:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_ACR = AFEC_ACR_IBCTL(config->ibctl) | AFEC_ACR_PGA0EN | AFEC_ACR_PGA1EN;
 178:../asf/sam/drivers/afec/afec.c ****   #else
 179:../asf/sam/drivers/afec/afec.c ****     afec->AFEC_ACR = AFEC_ACR_IBCTL(config->ibctl);
 180:../asf/sam/drivers/afec/afec.c ****   #endif
 181:../asf/sam/drivers/afec/afec.c **** }
 182:../asf/sam/drivers/afec/afec.c **** 
 183:../asf/sam/drivers/afec/afec.c **** /**
 184:../asf/sam/drivers/afec/afec.c ****  * \brief Configure the AFEC channel.
 185:../asf/sam/drivers/afec/afec.c ****  *
 186:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC
 187:../asf/sam/drivers/afec/afec.c ****  * \param channel The channel number
 188:../asf/sam/drivers/afec/afec.c ****  * \param config   Configuration for the AFEC channel
 189:../asf/sam/drivers/afec/afec.c ****  */
 190:../asf/sam/drivers/afec/afec.c **** void afec_ch_set_config(Afec *const afec, const enum afec_channel_num channel,
 191:../asf/sam/drivers/afec/afec.c **** 		struct afec_ch_config *config)
 192:../asf/sam/drivers/afec/afec.c **** {
 193:../asf/sam/drivers/afec/afec.c **** 	afec_ch_sanity_check(afec, channel);
 194:../asf/sam/drivers/afec/afec.c **** 	uint32_t reg = 0;
 195:../asf/sam/drivers/afec/afec.c **** 
 196:../asf/sam/drivers/afec/afec.c **** 	reg = afec->AFEC_DIFFR;
 197:../asf/sam/drivers/afec/afec.c **** 	reg &= ~(0x1u << channel);
 198:../asf/sam/drivers/afec/afec.c **** 	reg |= (config->diff) ? (0x1u << channel) : 0;
 199:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_DIFFR = reg;
 200:../asf/sam/drivers/afec/afec.c **** 
 201:../asf/sam/drivers/afec/afec.c **** 	reg = afec->AFEC_CGR;
 202:../asf/sam/drivers/afec/afec.c **** 	reg &= ~(0x03u << (2 * channel));
ARM GAS  /tmp/ccQNhOlE.s 			page 5


 203:../asf/sam/drivers/afec/afec.c **** 	reg |= (config->gain) << (2 * channel);
 204:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_CGR = reg;
 205:../asf/sam/drivers/afec/afec.c **** }
 206:../asf/sam/drivers/afec/afec.c **** 
 207:../asf/sam/drivers/afec/afec.c **** /**
 208:../asf/sam/drivers/afec/afec.c ****  * \brief Configure the AFEC temperature sensor.
 209:../asf/sam/drivers/afec/afec.c ****  *
 210:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC
 211:../asf/sam/drivers/afec/afec.c ****  * \param config   Configuration for the AFEC temperature sensor
 212:../asf/sam/drivers/afec/afec.c ****  */
 213:../asf/sam/drivers/afec/afec.c **** void afec_temp_sensor_set_config(Afec *const afec,
 214:../asf/sam/drivers/afec/afec.c **** 		struct afec_temp_sensor_config *config)
 215:../asf/sam/drivers/afec/afec.c **** {
 216:../asf/sam/drivers/afec/afec.c **** 	Assert(afec == AFEC0);
 217:../asf/sam/drivers/afec/afec.c **** 
 218:../asf/sam/drivers/afec/afec.c **** 	uint32_t reg = 0;
 219:../asf/sam/drivers/afec/afec.c **** 
 220:../asf/sam/drivers/afec/afec.c **** 	reg = ((config->rctc) ? AFEC_TEMPMR_RTCT : 0) | (config->mode);
 221:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_TEMPMR = reg;
 222:../asf/sam/drivers/afec/afec.c **** 
 223:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_TEMPCWR = AFEC_TEMPCWR_TLOWTHRES(config->low_threshold) |
 224:../asf/sam/drivers/afec/afec.c **** 			AFEC_TEMPCWR_THIGHTHRES(config->high_threshold);
 225:../asf/sam/drivers/afec/afec.c **** 			
 226:../asf/sam/drivers/afec/afec.c **** }
 227:../asf/sam/drivers/afec/afec.c **** 
 228:../asf/sam/drivers/afec/afec.c **** /**
 229:../asf/sam/drivers/afec/afec.c ****  * \brief Get the AFEC default configurations.
 230:../asf/sam/drivers/afec/afec.c ****  *
 231:../asf/sam/drivers/afec/afec.c ****  * Use to initialize the configuration structure to known default values. This
 232:../asf/sam/drivers/afec/afec.c ****  * function should be called at the start of any AFEC initiation.
 233:../asf/sam/drivers/afec/afec.c ****  *
 234:../asf/sam/drivers/afec/afec.c ****  * The default configuration is as follows:
 235:../asf/sam/drivers/afec/afec.c ****  * - 12 -bit resolution
 236:../asf/sam/drivers/afec/afec.c ****  * - AFEC clock frequency is 6MHz
 237:../asf/sam/drivers/afec/afec.c ****  * - Start Up Time is 64 periods AFEC clock, for SAMV71 is 24 periods AFEC clock
 238:../asf/sam/drivers/afec/afec.c ****  * - Analog Settling Time is 3 periods of AFEC clock
 239:../asf/sam/drivers/afec/afec.c ****  * - Tracking Time is 3 periods of AFEC clock
 240:../asf/sam/drivers/afec/afec.c ****  * - Transfer Period is 5 periods AFEC clock,for SAMV71 is 7 periods AFEC clock
 241:../asf/sam/drivers/afec/afec.c ****  * - Allows different analog settings for each channel
 242:../asf/sam/drivers/afec/afec.c ****  * - The controller converts channels in a simple numeric order
 243:../asf/sam/drivers/afec/afec.c ****  * - Appends the channel number to the conversion result in AFE_LDCR register
 244:../asf/sam/drivers/afec/afec.c ****  * - Only a Single Trigger is required to get an averaged value
 245:../asf/sam/drivers/afec/afec.c ****  * - AFE Bias Current Control value is 1
 246:../asf/sam/drivers/afec/afec.c ****  *
 247:../asf/sam/drivers/afec/afec.c ****  * \param cfg Pointer to configuration structure to be initiated.
 248:../asf/sam/drivers/afec/afec.c ****  */
 249:../asf/sam/drivers/afec/afec.c **** void afec_get_config_defaults(struct afec_config *const cfg)
 250:../asf/sam/drivers/afec/afec.c **** {
 251:../asf/sam/drivers/afec/afec.c **** 	/* Sanity check argument. */
 252:../asf/sam/drivers/afec/afec.c **** 	Assert(cfg);
 253:../asf/sam/drivers/afec/afec.c **** 
 254:../asf/sam/drivers/afec/afec.c **** 	cfg->resolution = AFEC_12_BITS;
 255:../asf/sam/drivers/afec/afec.c **** 	cfg->mck = sysclk_get_cpu_hz();
 256:../asf/sam/drivers/afec/afec.c **** 		cfg->afec_clock = 6000000UL;
 257:../asf/sam/drivers/afec/afec.c **** 		cfg->startup_time = AFEC_STARTUP_TIME_4;
 258:../asf/sam/drivers/afec/afec.c **** 	#if !(SAMV71 || SAMV70 || SAME70 || SAMS70)
 259:../asf/sam/drivers/afec/afec.c **** 		cfg->settling_time = AFEC_SETTLING_TIME_0;
ARM GAS  /tmp/ccQNhOlE.s 			page 6


 260:../asf/sam/drivers/afec/afec.c **** 	#endif	
 261:../asf/sam/drivers/afec/afec.c **** 		cfg->tracktim = 2;
 262:../asf/sam/drivers/afec/afec.c **** 		cfg->transfer = 1;
 263:../asf/sam/drivers/afec/afec.c **** 		cfg->anach = true;
 264:../asf/sam/drivers/afec/afec.c **** 		cfg->useq = false;
 265:../asf/sam/drivers/afec/afec.c **** 		cfg->tag = true;
 266:../asf/sam/drivers/afec/afec.c **** 		cfg->stm = true;
 267:../asf/sam/drivers/afec/afec.c **** 		cfg->ibctl = 1;
 268:../asf/sam/drivers/afec/afec.c **** }
 269:../asf/sam/drivers/afec/afec.c **** 
 270:../asf/sam/drivers/afec/afec.c **** /**
 271:../asf/sam/drivers/afec/afec.c ****  * \brief Get the AFEC channel default configurations.
 272:../asf/sam/drivers/afec/afec.c ****  *
 273:../asf/sam/drivers/afec/afec.c ****  * Use to initialize the configuration structure to known default values.
 274:../asf/sam/drivers/afec/afec.c ****  *
 275:../asf/sam/drivers/afec/afec.c ****  * The default configuration is as follows:
 276:../asf/sam/drivers/afec/afec.c ****  * - Single Ended Mode
 277:../asf/sam/drivers/afec/afec.c ****  * - Gain value is 1
 278:../asf/sam/drivers/afec/afec.c ****  *
 279:../asf/sam/drivers/afec/afec.c ****  * \param cfg Pointer to channel configuration structure to be initiated.
 280:../asf/sam/drivers/afec/afec.c ****  */
 281:../asf/sam/drivers/afec/afec.c **** void afec_ch_get_config_defaults(struct afec_ch_config *const cfg)
 282:../asf/sam/drivers/afec/afec.c **** {
 283:../asf/sam/drivers/afec/afec.c **** 	/*Sanity check argument. */
 284:../asf/sam/drivers/afec/afec.c **** 	Assert(cfg);
 285:../asf/sam/drivers/afec/afec.c **** 
 286:../asf/sam/drivers/afec/afec.c **** 	cfg->diff = false;
 287:../asf/sam/drivers/afec/afec.c ****    	cfg->gain = AFEC_GAINVALUE_1;
 288:../asf/sam/drivers/afec/afec.c **** 
 289:../asf/sam/drivers/afec/afec.c **** }
 290:../asf/sam/drivers/afec/afec.c **** 
 291:../asf/sam/drivers/afec/afec.c **** /**
 292:../asf/sam/drivers/afec/afec.c ****  * \brief Get the AFEC Temperature Sensor default configurations.
 293:../asf/sam/drivers/afec/afec.c ****  *
 294:../asf/sam/drivers/afec/afec.c ****  * Use to initialize the configuration structure to known default values.
 295:../asf/sam/drivers/afec/afec.c ****  *
 296:../asf/sam/drivers/afec/afec.c ****  * The default configuration is as follows:
 297:../asf/sam/drivers/afec/afec.c ****  * - The temperature sensor measure is not triggered by RTC event
 298:../asf/sam/drivers/afec/afec.c ****  * - Generates an event when the converted data is in the comparison window
 299:../asf/sam/drivers/afec/afec.c ****  * - The window range is 0xFF ~ 0xFFF
 300:../asf/sam/drivers/afec/afec.c ****  *
 301:../asf/sam/drivers/afec/afec.c ****  * \param cfg Pointer to temperature sensor configuration structure
 302:../asf/sam/drivers/afec/afec.c ****  *        to be initiated.
 303:../asf/sam/drivers/afec/afec.c ****  */
 304:../asf/sam/drivers/afec/afec.c **** void afec_temp_sensor_get_config_defaults(
 305:../asf/sam/drivers/afec/afec.c **** 		struct afec_temp_sensor_config *const cfg)
 306:../asf/sam/drivers/afec/afec.c **** {
 307:../asf/sam/drivers/afec/afec.c **** 	/*Sanity check argument. */
 308:../asf/sam/drivers/afec/afec.c **** 	Assert(cfg);
 309:../asf/sam/drivers/afec/afec.c **** 
 310:../asf/sam/drivers/afec/afec.c **** 	cfg->rctc = false;
 311:../asf/sam/drivers/afec/afec.c **** 	cfg->mode= AFEC_TEMP_CMP_MODE_2;
 312:../asf/sam/drivers/afec/afec.c **** 	cfg->low_threshold= 0xFF;
 313:../asf/sam/drivers/afec/afec.c **** 	cfg->high_threshold= 0xFFF;
 314:../asf/sam/drivers/afec/afec.c **** }
 315:../asf/sam/drivers/afec/afec.c **** 
 316:../asf/sam/drivers/afec/afec.c **** /**
ARM GAS  /tmp/ccQNhOlE.s 			page 7


 317:../asf/sam/drivers/afec/afec.c ****  * \brief Initialize the AFEC Module.
 318:../asf/sam/drivers/afec/afec.c ****  *
 319:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC
 320:../asf/sam/drivers/afec/afec.c ****  * \param config   Configuration for the AFEC
 321:../asf/sam/drivers/afec/afec.c ****  *
 322:../asf/sam/drivers/afec/afec.c ****  * \retval STATUS_OK  Initialization is finished.
 323:../asf/sam/drivers/afec/afec.c ****  * \retval STATUS_ERR_BUSY  Initialization failed.
 324:../asf/sam/drivers/afec/afec.c ****  */
 325:../asf/sam/drivers/afec/afec.c **** enum status_code afec_init(Afec *const afec, struct afec_config *config)
 326:../asf/sam/drivers/afec/afec.c **** {
 327:../asf/sam/drivers/afec/afec.c **** 	Assert(afec);
 328:../asf/sam/drivers/afec/afec.c **** 	Assert(config);
 329:../asf/sam/drivers/afec/afec.c **** 
 330:../asf/sam/drivers/afec/afec.c **** 	if ((afec_get_interrupt_status(afec) & AFEC_ISR_DRDY) == AFEC_ISR_DRDY) {
 331:../asf/sam/drivers/afec/afec.c **** 		return STATUS_ERR_BUSY;
 332:../asf/sam/drivers/afec/afec.c **** 	}
 333:../asf/sam/drivers/afec/afec.c **** 
 334:../asf/sam/drivers/afec/afec.c **** 	/* Reset and configure the AFEC module */
 335:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_CR = AFEC_CR_SWRST;
 336:../asf/sam/drivers/afec/afec.c **** 	afec_set_config(afec, config);
 337:../asf/sam/drivers/afec/afec.c **** 
 338:../asf/sam/drivers/afec/afec.c **** 	uint32_t i;
 339:../asf/sam/drivers/afec/afec.c **** 	if(afec == AFEC0) {
 340:../asf/sam/drivers/afec/afec.c **** 		for (i = 0; i < _AFEC_NUM_OF_INTERRUPT_SOURCE; i++){
 341:../asf/sam/drivers/afec/afec.c **** 			afec_callback_pointer[0][i] = 0;
 342:../asf/sam/drivers/afec/afec.c **** 		}
 343:../asf/sam/drivers/afec/afec.c **** 	}
 344:../asf/sam/drivers/afec/afec.c **** 	if(afec == AFEC1) {
 345:../asf/sam/drivers/afec/afec.c **** 		for (i = 0; i < _AFEC_NUM_OF_INTERRUPT_SOURCE; i++){
 346:../asf/sam/drivers/afec/afec.c **** 			afec_callback_pointer[1][i] = 0;
 347:../asf/sam/drivers/afec/afec.c **** 		}
 348:../asf/sam/drivers/afec/afec.c **** 	}
 349:../asf/sam/drivers/afec/afec.c **** 
 350:../asf/sam/drivers/afec/afec.c **** 	return STATUS_OK;
 351:../asf/sam/drivers/afec/afec.c **** }
 352:../asf/sam/drivers/afec/afec.c **** 
 353:../asf/sam/drivers/afec/afec.c **** /**
 354:../asf/sam/drivers/afec/afec.c ****  * \brief Configure comparison mode.
 355:../asf/sam/drivers/afec/afec.c ****  *
 356:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC.
 357:../asf/sam/drivers/afec/afec.c ****  * \param mode Comparison mode.
 358:../asf/sam/drivers/afec/afec.c ****  * \param channel Comparison Selected Channel.
 359:../asf/sam/drivers/afec/afec.c ****  * \param cmp_filter Compare Event Filtering.
 360:../asf/sam/drivers/afec/afec.c ****  */
 361:../asf/sam/drivers/afec/afec.c **** void afec_set_comparison_mode(Afec *const afec,
 362:../asf/sam/drivers/afec/afec.c **** 		const enum afec_cmp_mode mode,
 363:../asf/sam/drivers/afec/afec.c **** 		const enum afec_channel_num channel, uint8_t cmp_filter)
 364:../asf/sam/drivers/afec/afec.c **** {
 365:../asf/sam/drivers/afec/afec.c **** 	if (channel != AFEC_CHANNEL_ALL) {
 366:../asf/sam/drivers/afec/afec.c **** 		afec_ch_sanity_check(afec, channel);
 367:../asf/sam/drivers/afec/afec.c **** 	}
 368:../asf/sam/drivers/afec/afec.c **** 
 369:../asf/sam/drivers/afec/afec.c **** 	uint32_t reg;
 370:../asf/sam/drivers/afec/afec.c **** 
 371:../asf/sam/drivers/afec/afec.c **** 	reg = afec->AFEC_EMR;
 372:../asf/sam/drivers/afec/afec.c **** 
 373:../asf/sam/drivers/afec/afec.c **** 	reg &= ~(AFEC_EMR_CMPSEL_Msk |
ARM GAS  /tmp/ccQNhOlE.s 			page 8


 374:../asf/sam/drivers/afec/afec.c **** 			AFEC_EMR_CMPMODE_Msk |
 375:../asf/sam/drivers/afec/afec.c **** 			AFEC_EMR_CMPFILTER_Msk);
 376:../asf/sam/drivers/afec/afec.c **** 	reg |= mode |
 377:../asf/sam/drivers/afec/afec.c **** 			((channel == AFEC_CHANNEL_ALL) ? AFEC_EMR_CMPALL
 378:../asf/sam/drivers/afec/afec.c **** 			: AFEC_EMR_CMPSEL(channel)) |
 379:../asf/sam/drivers/afec/afec.c **** 			AFEC_EMR_CMPFILTER(cmp_filter);
 380:../asf/sam/drivers/afec/afec.c **** 
 381:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_EMR = reg;
 382:../asf/sam/drivers/afec/afec.c **** }
 383:../asf/sam/drivers/afec/afec.c **** 
 384:../asf/sam/drivers/afec/afec.c **** /**
 385:../asf/sam/drivers/afec/afec.c ****  * \brief Configure AFEC power mode.
 386:../asf/sam/drivers/afec/afec.c ****  *
 387:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC.
 388:../asf/sam/drivers/afec/afec.c ****  * \param mode   AFEC power mode value.
 389:../asf/sam/drivers/afec/afec.c ****  */
 390:../asf/sam/drivers/afec/afec.c **** void afec_set_power_mode(Afec *const afec,
 391:../asf/sam/drivers/afec/afec.c **** 		const enum afec_power_mode mode)
 392:../asf/sam/drivers/afec/afec.c **** {
 393:../asf/sam/drivers/afec/afec.c **** 	uint32_t reg;
 394:../asf/sam/drivers/afec/afec.c **** 
 395:../asf/sam/drivers/afec/afec.c **** 	reg = afec->AFEC_MR;
 396:../asf/sam/drivers/afec/afec.c **** 
 397:../asf/sam/drivers/afec/afec.c **** 	switch(mode) {
 398:../asf/sam/drivers/afec/afec.c **** 		case AFEC_POWER_MODE_0:
 399:../asf/sam/drivers/afec/afec.c **** 			reg &= ~(AFEC_MR_FWUP_ON | AFEC_MR_SLEEP_SLEEP);
 400:../asf/sam/drivers/afec/afec.c **** 			break;
 401:../asf/sam/drivers/afec/afec.c **** 		case AFEC_POWER_MODE_1:
 402:../asf/sam/drivers/afec/afec.c **** 			reg |= AFEC_MR_FWUP_ON;
 403:../asf/sam/drivers/afec/afec.c **** 			break;
 404:../asf/sam/drivers/afec/afec.c **** 		case AFEC_POWER_MODE_2:
 405:../asf/sam/drivers/afec/afec.c **** 			reg |= AFEC_MR_SLEEP_SLEEP;
 406:../asf/sam/drivers/afec/afec.c **** 			reg &= ~AFEC_MR_FWUP_ON;
 407:../asf/sam/drivers/afec/afec.c **** 			break;
 408:../asf/sam/drivers/afec/afec.c **** 	}
 409:../asf/sam/drivers/afec/afec.c **** 
 410:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_MR = reg;
 411:../asf/sam/drivers/afec/afec.c **** }
 412:../asf/sam/drivers/afec/afec.c **** 
 413:../asf/sam/drivers/afec/afec.c **** /**
 414:../asf/sam/drivers/afec/afec.c ****  * \brief Set callback for AFEC
 415:../asf/sam/drivers/afec/afec.c ****  *
 416:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC
 417:../asf/sam/drivers/afec/afec.c ****  * \param source    Interrupt source
 418:../asf/sam/drivers/afec/afec.c ****  * \param callback  Callback function pointer
 419:../asf/sam/drivers/afec/afec.c ****  * \param irq_level Interrupt level
 420:../asf/sam/drivers/afec/afec.c ****  */
 421:../asf/sam/drivers/afec/afec.c **** void afec_set_callback(Afec *const afec, enum afec_interrupt_source source,
 422:../asf/sam/drivers/afec/afec.c **** 		afec_callback_t callback, uint8_t irq_level)
 423:../asf/sam/drivers/afec/afec.c **** {
 424:../asf/sam/drivers/afec/afec.c **** 	Assert(afec);
 425:../asf/sam/drivers/afec/afec.c **** 	Assert(callback);
 426:../asf/sam/drivers/afec/afec.c **** 
 427:../asf/sam/drivers/afec/afec.c **** 	uint32_t i = afec_find_inst_num(afec);
 428:../asf/sam/drivers/afec/afec.c **** 	afec_callback_pointer[i][source] = callback;
 429:../asf/sam/drivers/afec/afec.c **** 	if (!i) {
 430:../asf/sam/drivers/afec/afec.c **** 		irq_register_handler(AFEC0_IRQn, irq_level);
ARM GAS  /tmp/ccQNhOlE.s 			page 9


 431:../asf/sam/drivers/afec/afec.c **** 	} else if (i == 1) {
 432:../asf/sam/drivers/afec/afec.c **** 		irq_register_handler(AFEC1_IRQn, irq_level);
 433:../asf/sam/drivers/afec/afec.c **** 	}
 434:../asf/sam/drivers/afec/afec.c **** 	/* Enable the specified interrupt source */
 435:../asf/sam/drivers/afec/afec.c **** 	afec_enable_interrupt(afec, source);
 436:../asf/sam/drivers/afec/afec.c **** }
 437:../asf/sam/drivers/afec/afec.c **** 
 438:../asf/sam/drivers/afec/afec.c **** /**
 439:../asf/sam/drivers/afec/afec.c ****  * \brief Enable AFEC interrupts.
 440:../asf/sam/drivers/afec/afec.c ****  *
 441:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC.
 442:../asf/sam/drivers/afec/afec.c ****  * \param interrupt_source Interrupts to be enabled.
 443:../asf/sam/drivers/afec/afec.c ****  */
 444:../asf/sam/drivers/afec/afec.c **** void afec_enable_interrupt(Afec *const afec,
 445:../asf/sam/drivers/afec/afec.c **** 		enum afec_interrupt_source interrupt_source)
 446:../asf/sam/drivers/afec/afec.c **** {
 447:../asf/sam/drivers/afec/afec.c **** 	if (interrupt_source == AFEC_INTERRUPT_ALL) {
 448:../asf/sam/drivers/afec/afec.c **** 		afec->AFEC_IER = AFEC_INTERRUPT_ALL;
 449:../asf/sam/drivers/afec/afec.c **** 		return;
 450:../asf/sam/drivers/afec/afec.c **** 	}
 451:../asf/sam/drivers/afec/afec.c **** 
 452:../asf/sam/drivers/afec/afec.c **** 	if (interrupt_source < AFEC_INTERRUPT_DATA_READY) {
 453:../asf/sam/drivers/afec/afec.c **** 	  #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 454:../asf/sam/drivers/afec/afec.c **** 		if (interrupt_source == AFEC_INTERRUPT_EOC_11) {
 455:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_IER = 1 << AFEC_TEMP_INT_SOURCE_NUM;
 456:../asf/sam/drivers/afec/afec.c **** 	  #else
 457:../asf/sam/drivers/afec/afec.c **** 		if (interrupt_source == AFEC_INTERRUPT_EOC_15) {
 458:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_IER = 1 << AFEC_TEMP_INT_SOURCE_NUM;	  
 459:../asf/sam/drivers/afec/afec.c **** 	  #endif 
 460:../asf/sam/drivers/afec/afec.c **** 		} else {
 461:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_IER = 1 << interrupt_source;
 462:../asf/sam/drivers/afec/afec.c **** 		}
 463:../asf/sam/drivers/afec/afec.c **** 	} else if (interrupt_source < AFEC_INTERRUPT_TEMP_CHANGE) {
 464:../asf/sam/drivers/afec/afec.c **** 		afec->AFEC_IER = 1 << (interrupt_source + AFEC_INTERRUPT_GAP1);
 465:../asf/sam/drivers/afec/afec.c **** 	} else {
 466:../asf/sam/drivers/afec/afec.c **** 		afec->AFEC_IER = 1 << (interrupt_source + AFEC_INTERRUPT_GAP1
 467:../asf/sam/drivers/afec/afec.c **** 				+ AFEC_INTERRUPT_GAP2);
 468:../asf/sam/drivers/afec/afec.c **** 	}
 469:../asf/sam/drivers/afec/afec.c **** }
 470:../asf/sam/drivers/afec/afec.c **** 
 471:../asf/sam/drivers/afec/afec.c **** /**
 472:../asf/sam/drivers/afec/afec.c ****  * \brief Disable AFEC interrupts.
 473:../asf/sam/drivers/afec/afec.c ****  *
 474:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC.
 475:../asf/sam/drivers/afec/afec.c ****  * \param interrupt_source Interrupts to be disabled.
 476:../asf/sam/drivers/afec/afec.c ****  */
 477:../asf/sam/drivers/afec/afec.c **** void afec_disable_interrupt(Afec *const afec,
 478:../asf/sam/drivers/afec/afec.c **** 		enum afec_interrupt_source interrupt_source)
 479:../asf/sam/drivers/afec/afec.c **** {
 480:../asf/sam/drivers/afec/afec.c **** 	if (interrupt_source == AFEC_INTERRUPT_ALL) {
 481:../asf/sam/drivers/afec/afec.c **** 		afec->AFEC_IDR = AFEC_INTERRUPT_ALL;
 482:../asf/sam/drivers/afec/afec.c **** 		return;
 483:../asf/sam/drivers/afec/afec.c **** 	}
 484:../asf/sam/drivers/afec/afec.c **** 
 485:../asf/sam/drivers/afec/afec.c **** 	if (interrupt_source < AFEC_INTERRUPT_DATA_READY) {
 486:../asf/sam/drivers/afec/afec.c **** 	  #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 487:../asf/sam/drivers/afec/afec.c **** 		if (interrupt_source == AFEC_INTERRUPT_EOC_11) {
ARM GAS  /tmp/ccQNhOlE.s 			page 10


 488:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_IDR = 1 << AFEC_TEMP_INT_SOURCE_NUM;
 489:../asf/sam/drivers/afec/afec.c **** 	  #else
 490:../asf/sam/drivers/afec/afec.c **** 		if (interrupt_source == AFEC_INTERRUPT_EOC_15) {
 491:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_IDR = 1 << AFEC_TEMP_INT_SOURCE_NUM;	  
 492:../asf/sam/drivers/afec/afec.c **** 	  #endif
 493:../asf/sam/drivers/afec/afec.c **** 		} else {
 494:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_IDR = 1 << interrupt_source;
 495:../asf/sam/drivers/afec/afec.c **** 		}
 496:../asf/sam/drivers/afec/afec.c **** 	} else if (interrupt_source < AFEC_INTERRUPT_TEMP_CHANGE) {
 497:../asf/sam/drivers/afec/afec.c **** 		afec->AFEC_IDR = 1 << (interrupt_source + AFEC_INTERRUPT_GAP1);
 498:../asf/sam/drivers/afec/afec.c **** 	} else {
 499:../asf/sam/drivers/afec/afec.c **** 		afec->AFEC_IDR = 1 << (interrupt_source + AFEC_INTERRUPT_GAP1
 500:../asf/sam/drivers/afec/afec.c **** 				+ AFEC_INTERRUPT_GAP2);
 501:../asf/sam/drivers/afec/afec.c **** 	}
 502:../asf/sam/drivers/afec/afec.c **** }
 503:../asf/sam/drivers/afec/afec.c **** 
 504:../asf/sam/drivers/afec/afec.c **** /**
 505:../asf/sam/drivers/afec/afec.c ****  * \internal
 506:../asf/sam/drivers/afec/afec.c ****  * \brief Common AFEC interrupt handler
 507:../asf/sam/drivers/afec/afec.c ****  *
 508:../asf/sam/drivers/afec/afec.c ****  * The optional callback used by the interrupt handler is set by the
 509:../asf/sam/drivers/afec/afec.c ****  * afec_set_callback() function.
 510:../asf/sam/drivers/afec/afec.c ****  *
 511:../asf/sam/drivers/afec/afec.c ****  * \param inst_num AFEC instance number to handle interrupt for
 512:../asf/sam/drivers/afec/afec.c ****  * \param source   Interrupt source number
 513:../asf/sam/drivers/afec/afec.c ****  */
 514:../asf/sam/drivers/afec/afec.c **** static void afec_interrupt(uint8_t inst_num,
 515:../asf/sam/drivers/afec/afec.c **** 		enum afec_interrupt_source source)
 516:../asf/sam/drivers/afec/afec.c **** {
 517:../asf/sam/drivers/afec/afec.c **** 	if (afec_callback_pointer[inst_num][source]) {
 518:../asf/sam/drivers/afec/afec.c **** 		afec_callback_pointer[inst_num][source]();
 519:../asf/sam/drivers/afec/afec.c **** 	}
 520:../asf/sam/drivers/afec/afec.c **** }
 521:../asf/sam/drivers/afec/afec.c **** 
 522:../asf/sam/drivers/afec/afec.c **** /**
 523:../asf/sam/drivers/afec/afec.c ****  * \internal
 524:../asf/sam/drivers/afec/afec.c ****  * \brief Call the callback function if the corresponding interrupt is asserted
 525:../asf/sam/drivers/afec/afec.c ****  *
 526:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC.
 527:../asf/sam/drivers/afec/afec.c ****  */
 528:../asf/sam/drivers/afec/afec.c **** static void afec_process_callback(Afec *const afec)
 529:../asf/sam/drivers/afec/afec.c **** {
  27              		.loc 1 529 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 8
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              	.LVL0:
  32 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
  33              		.cfi_def_cfa_offset 24
  34              		.cfi_offset 4, -24
  35              		.cfi_offset 5, -20
  36              		.cfi_offset 6, -16
  37              		.cfi_offset 7, -12
  38              		.cfi_offset 8, -8
  39              		.cfi_offset 14, -4
  40              	.LBB54:
  41              	.LBB55:
ARM GAS  /tmp/ccQNhOlE.s 			page 11


 112:../asf/sam/drivers/afec/afec.c **** 		return 1;
  42              		.loc 1 112 0
  43 0004 174F     		ldr	r7, .L33
  44              	.LBE55:
  45              	.LBE54:
  46              		.loc 1 529 0
  47 0006 82B0     		sub	sp, sp, #8
  48              		.cfi_def_cfa_offset 32
  49              	.LBB59:
  50              	.LBB60:
  51              		.file 2 "../asf/sam/drivers/afec/afec.h"
   1:../asf/sam/drivers/afec/afec.h **** /**
   2:../asf/sam/drivers/afec/afec.h ****  * \file
   3:../asf/sam/drivers/afec/afec.h ****  *
   4:../asf/sam/drivers/afec/afec.h ****  * \brief Analog-Front-End Controller driver for SAM.
   5:../asf/sam/drivers/afec/afec.h ****  *
   6:../asf/sam/drivers/afec/afec.h ****  * Copyright (c) 2013-2016 Atmel Corporation. All rights reserved.
   7:../asf/sam/drivers/afec/afec.h ****  *
   8:../asf/sam/drivers/afec/afec.h ****  * \asf_license_start
   9:../asf/sam/drivers/afec/afec.h ****  *
  10:../asf/sam/drivers/afec/afec.h ****  * \page License
  11:../asf/sam/drivers/afec/afec.h ****  *
  12:../asf/sam/drivers/afec/afec.h ****  * Redistribution and use in source and binary forms, with or without
  13:../asf/sam/drivers/afec/afec.h ****  * modification, are permitted provided that the following conditions are met:
  14:../asf/sam/drivers/afec/afec.h ****  *
  15:../asf/sam/drivers/afec/afec.h ****  * 1. Redistributions of source code must retain the above copyright notice,
  16:../asf/sam/drivers/afec/afec.h ****  *    this list of conditions and the following disclaimer.
  17:../asf/sam/drivers/afec/afec.h ****  *
  18:../asf/sam/drivers/afec/afec.h ****  * 2. Redistributions in binary form must reproduce the above copyright notice,
  19:../asf/sam/drivers/afec/afec.h ****  *    this list of conditions and the following disclaimer in the documentation
  20:../asf/sam/drivers/afec/afec.h ****  *    and/or other materials provided with the distribution.
  21:../asf/sam/drivers/afec/afec.h ****  *
  22:../asf/sam/drivers/afec/afec.h ****  * 3. The name of Atmel may not be used to endorse or promote products derived
  23:../asf/sam/drivers/afec/afec.h ****  *    from this software without specific prior written permission.
  24:../asf/sam/drivers/afec/afec.h ****  *
  25:../asf/sam/drivers/afec/afec.h ****  * 4. This software may only be redistributed and used in connection with an
  26:../asf/sam/drivers/afec/afec.h ****  *    Atmel microcontroller product.
  27:../asf/sam/drivers/afec/afec.h ****  *
  28:../asf/sam/drivers/afec/afec.h ****  * THIS SOFTWARE IS PROVIDED BY ATMEL "AS IS" AND ANY EXPRESS OR IMPLIED
  29:../asf/sam/drivers/afec/afec.h ****  * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
  30:../asf/sam/drivers/afec/afec.h ****  * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT ARE
  31:../asf/sam/drivers/afec/afec.h ****  * EXPRESSLY AND SPECIFICALLY DISCLAIMED. IN NO EVENT SHALL ATMEL BE LIABLE FOR
  32:../asf/sam/drivers/afec/afec.h ****  * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:../asf/sam/drivers/afec/afec.h ****  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
  34:../asf/sam/drivers/afec/afec.h ****  * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
  35:../asf/sam/drivers/afec/afec.h ****  * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
  36:../asf/sam/drivers/afec/afec.h ****  * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
  37:../asf/sam/drivers/afec/afec.h ****  * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  38:../asf/sam/drivers/afec/afec.h ****  * POSSIBILITY OF SUCH DAMAGE.
  39:../asf/sam/drivers/afec/afec.h ****  *
  40:../asf/sam/drivers/afec/afec.h ****  * \asf_license_stop
  41:../asf/sam/drivers/afec/afec.h ****  *
  42:../asf/sam/drivers/afec/afec.h ****  */
  43:../asf/sam/drivers/afec/afec.h **** /*
  44:../asf/sam/drivers/afec/afec.h ****  * Support and FAQ: visit <a href="http://www.atmel.com/design-support/">Atmel Support</a>
  45:../asf/sam/drivers/afec/afec.h ****  */
  46:../asf/sam/drivers/afec/afec.h **** 
ARM GAS  /tmp/ccQNhOlE.s 			page 12


  47:../asf/sam/drivers/afec/afec.h **** #ifndef AFEC_H_INCLUDED
  48:../asf/sam/drivers/afec/afec.h **** #define AFEC_H_INCLUDED
  49:../asf/sam/drivers/afec/afec.h **** 
  50:../asf/sam/drivers/afec/afec.h **** #include "compiler.h"
  51:../asf/sam/drivers/afec/afec.h **** #include "status_codes.h"
  52:../asf/sam/drivers/afec/afec.h **** 
  53:../asf/sam/drivers/afec/afec.h **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
  54:../asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC resolution */
  55:../asf/sam/drivers/afec/afec.h **** enum afec_resolution {
  56:../asf/sam/drivers/afec/afec.h **** 	AFEC_12_BITS = AFEC_EMR_RES_NO_AVERAGE,    /* AFEC 12-bit resolution */
  57:../asf/sam/drivers/afec/afec.h **** 	AFEC_13_BITS = AFEC_EMR_RES_OSR4,          /* AFEC 13-bit resolution */
  58:../asf/sam/drivers/afec/afec.h **** 	AFEC_14_BITS = AFEC_EMR_RES_OSR16,         /* AFEC 14-bit resolution */
  59:../asf/sam/drivers/afec/afec.h **** 	AFEC_15_BITS = AFEC_EMR_RES_OSR64,         /* AFEC 15-bit resolution */
  60:../asf/sam/drivers/afec/afec.h **** 	AFEC_16_BITS = AFEC_EMR_RES_OSR256         /* AFEC 16-bit resolution */
  61:../asf/sam/drivers/afec/afec.h **** };
  62:../asf/sam/drivers/afec/afec.h **** #else
  63:../asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC resolution */
  64:../asf/sam/drivers/afec/afec.h **** enum afec_resolution {
  65:../asf/sam/drivers/afec/afec.h **** 	AFEC_10_BITS = AFEC_EMR_RES_LOW_RES,       /* AFEC 10-bit resolution */
  66:../asf/sam/drivers/afec/afec.h **** 	AFEC_12_BITS = AFEC_EMR_RES_NO_AVERAGE,    /* AFEC 12-bit resolution */
  67:../asf/sam/drivers/afec/afec.h **** 	AFEC_13_BITS = AFEC_EMR_RES_OSR4,          /* AFEC 13-bit resolution */
  68:../asf/sam/drivers/afec/afec.h **** 	AFEC_14_BITS = AFEC_EMR_RES_OSR16,         /* AFEC 14-bit resolution */
  69:../asf/sam/drivers/afec/afec.h **** 	AFEC_15_BITS = AFEC_EMR_RES_OSR64,         /* AFEC 15-bit resolution */
  70:../asf/sam/drivers/afec/afec.h **** 	AFEC_16_BITS = AFEC_EMR_RES_OSR256         /* AFEC 16-bit resolution */
  71:../asf/sam/drivers/afec/afec.h **** };
  72:../asf/sam/drivers/afec/afec.h **** #endif
  73:../asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC power mode */
  74:../asf/sam/drivers/afec/afec.h **** enum afec_power_mode {
  75:../asf/sam/drivers/afec/afec.h **** 	/* AFEC core on and reference voltage circuitry on */
  76:../asf/sam/drivers/afec/afec.h **** 	AFEC_POWER_MODE_0 = 0,
  77:../asf/sam/drivers/afec/afec.h **** 	/* AFEC core off and reference voltage circuitry on */
  78:../asf/sam/drivers/afec/afec.h **** 	AFEC_POWER_MODE_1,
  79:../asf/sam/drivers/afec/afec.h **** 	/* AFEC core off and reference voltage circuitry off */
  80:../asf/sam/drivers/afec/afec.h **** 	AFEC_POWER_MODE_2
  81:../asf/sam/drivers/afec/afec.h **** };
  82:../asf/sam/drivers/afec/afec.h **** 
  83:../asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC trigger */
  84:../asf/sam/drivers/afec/afec.h **** enum afec_trigger {
  85:../asf/sam/drivers/afec/afec.h **** 	/* Starting a conversion is only possible by software. */
  86:../asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_SW = AFEC_MR_TRGEN_DIS,
  87:../asf/sam/drivers/afec/afec.h **** 	/* External trigger */
  88:../asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_EXT = AFEC_MR_TRGSEL_AFEC_TRIG0 | AFEC_MR_TRGEN,
  89:../asf/sam/drivers/afec/afec.h **** 	/* TIO Output of the Timer Counter Channel 0 */
  90:../asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_TIO_CH_0 = AFEC_MR_TRGSEL_AFEC_TRIG1 | AFEC_MR_TRGEN,
  91:../asf/sam/drivers/afec/afec.h **** 	/* TIO Output of the Timer Counter Channel 1 */
  92:../asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_TIO_CH_1 = AFEC_MR_TRGSEL_AFEC_TRIG2 | AFEC_MR_TRGEN,
  93:../asf/sam/drivers/afec/afec.h **** 	/* TIO Output of the Timer Counter Channel 2 */
  94:../asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_TIO_CH_2 = AFEC_MR_TRGSEL_AFEC_TRIG3 | AFEC_MR_TRGEN,
  95:../asf/sam/drivers/afec/afec.h **** 	/* PWM Event Line 0 */
  96:../asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_PWM_EVENT_LINE_0 = AFEC_MR_TRGSEL_AFEC_TRIG4 | AFEC_MR_TRGEN,
  97:../asf/sam/drivers/afec/afec.h **** 	/* PWM Event Line 1 */
  98:../asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_PWM_EVENT_LINE_1 = AFEC_MR_TRGSEL_AFEC_TRIG5 | AFEC_MR_TRGEN,
  99:../asf/sam/drivers/afec/afec.h **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 100:../asf/sam/drivers/afec/afec.h **** 	/*Analog Comparator*/
 101:../asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_ANALOG_COMPARATOR = AFEC_MR_TRGSEL_AFEC_TRIG6 | AFEC_MR_TRGEN,
 102:../asf/sam/drivers/afec/afec.h **** #endif	
 103:../asf/sam/drivers/afec/afec.h **** 	/* Freerun mode conversion. */
ARM GAS  /tmp/ccQNhOlE.s 			page 13


 104:../asf/sam/drivers/afec/afec.h **** 	AFEC_TRIG_FREERUN = 0xFF,
 105:../asf/sam/drivers/afec/afec.h **** };
 106:../asf/sam/drivers/afec/afec.h **** 
 107:../asf/sam/drivers/afec/afec.h **** #if defined __SAM4E8C__  || defined __SAM4E16C__ || defined __SAM4E8CB__  || defined __SAM4E16CB__
 108:../asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC channel number */
 109:../asf/sam/drivers/afec/afec.h **** enum afec_channel_num {
 110:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_0 = 0,
 111:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_1,
 112:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_2,
 113:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_3,
 114:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_4,
 115:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_5,
 116:../asf/sam/drivers/afec/afec.h **** 	AFEC_TEMPERATURE_SENSOR = 15,
 117:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_ALL = 0x803F,
 118:../asf/sam/drivers/afec/afec.h **** } ;
 119:../asf/sam/drivers/afec/afec.h **** #elif defined __SAM4E8E__  || defined __SAM4E16E__
 120:../asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC channel number */
 121:../asf/sam/drivers/afec/afec.h **** enum afec_channel_num {
 122:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_0 = 0,
 123:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_1,
 124:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_2,
 125:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_3,
 126:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_4,
 127:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_5,
 128:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_6,
 129:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_7,
 130:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_8,
 131:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_9,
 132:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_10,
 133:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_11,
 134:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_12,
 135:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_13,
 136:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_14,
 137:../asf/sam/drivers/afec/afec.h **** 	AFEC_TEMPERATURE_SENSOR,
 138:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_ALL = 0xFFFF,
 139:../asf/sam/drivers/afec/afec.h **** } ;
 140:../asf/sam/drivers/afec/afec.h **** #elif (SAMV71 || SAMV70 || SAME70 || SAMS70)
 141:../asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC channel number */
 142:../asf/sam/drivers/afec/afec.h **** enum afec_channel_num {
 143:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_0 = 0,
 144:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_1,
 145:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_2,
 146:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_3,
 147:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_4,
 148:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_5,
 149:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_6,
 150:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_7,
 151:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_8,
 152:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_9,
 153:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_10,
 154:../asf/sam/drivers/afec/afec.h **** 	AFEC_TEMPERATURE_SENSOR,
 155:../asf/sam/drivers/afec/afec.h **** 	AFEC_CHANNEL_ALL = 0x0FFF,
 156:../asf/sam/drivers/afec/afec.h **** } ;
 157:../asf/sam/drivers/afec/afec.h **** 
 158:../asf/sam/drivers/afec/afec.h **** #define NB_CH_AFE0  (12UL)
 159:../asf/sam/drivers/afec/afec.h **** #define NB_CH_AFE1  (12UL)
 160:../asf/sam/drivers/afec/afec.h **** #endif
ARM GAS  /tmp/ccQNhOlE.s 			page 14


 161:../asf/sam/drivers/afec/afec.h **** 
 162:../asf/sam/drivers/afec/afec.h **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 163:../asf/sam/drivers/afec/afec.h **** enum afec_sample_hold_mode {
 164:../asf/sam/drivers/afec/afec.h **** 	/*Single Sample-and-Hold mode*/
 165:../asf/sam/drivers/afec/afec.h **** 	AFEC_SAMPLE_HOLD_MODE_0,
 166:../asf/sam/drivers/afec/afec.h **** 	/*Dual Sample-and-Hold mode*/
 167:../asf/sam/drivers/afec/afec.h **** 	AFEC_SAMPLE_HOLD_MODE_1,
 168:../asf/sam/drivers/afec/afec.h **** };
 169:../asf/sam/drivers/afec/afec.h **** #endif
 170:../asf/sam/drivers/afec/afec.h **** 
 171:../asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC gain value */
 172:../asf/sam/drivers/afec/afec.h **** enum afec_gainvalue {
 173:../asf/sam/drivers/afec/afec.h **** 	AFEC_GAINVALUE_0 = 0,
 174:../asf/sam/drivers/afec/afec.h **** 	AFEC_GAINVALUE_1 = 1,
 175:../asf/sam/drivers/afec/afec.h **** 	AFEC_GAINVALUE_2 = 2,
 176:../asf/sam/drivers/afec/afec.h **** 	AFEC_GAINVALUE_3 = 3
 177:../asf/sam/drivers/afec/afec.h **** };
 178:../asf/sam/drivers/afec/afec.h **** 
 179:../asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC Start Up Time */
 180:../asf/sam/drivers/afec/afec.h **** enum afec_startup_time {
 181:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_0 = AFEC_MR_STARTUP_SUT0,
 182:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_1 = AFEC_MR_STARTUP_SUT8,
 183:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_2 = AFEC_MR_STARTUP_SUT16,
 184:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_3 = AFEC_MR_STARTUP_SUT24,
 185:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_4 = AFEC_MR_STARTUP_SUT64,
 186:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_5 = AFEC_MR_STARTUP_SUT80,
 187:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_6 = AFEC_MR_STARTUP_SUT96,
 188:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_7 = AFEC_MR_STARTUP_SUT112,
 189:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_8 = AFEC_MR_STARTUP_SUT512,
 190:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_9 = AFEC_MR_STARTUP_SUT576,
 191:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_10 = AFEC_MR_STARTUP_SUT640,
 192:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_11 = AFEC_MR_STARTUP_SUT704,
 193:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_12 = AFEC_MR_STARTUP_SUT768,
 194:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_13 = AFEC_MR_STARTUP_SUT832,
 195:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_14 = AFEC_MR_STARTUP_SUT896,
 196:../asf/sam/drivers/afec/afec.h **** 	AFEC_STARTUP_TIME_15 = AFEC_MR_STARTUP_SUT960
 197:../asf/sam/drivers/afec/afec.h **** };
 198:../asf/sam/drivers/afec/afec.h **** 
 199:../asf/sam/drivers/afec/afec.h **** #if SAM4E
 200:../asf/sam/drivers/afec/afec.h **** /** Definitions for AFEC analog settling time */
 201:../asf/sam/drivers/afec/afec.h **** enum afec_settling_time {
 202:../asf/sam/drivers/afec/afec.h **** 	AFEC_SETTLING_TIME_0 = AFEC_MR_SETTLING_AST3,
 203:../asf/sam/drivers/afec/afec.h **** 	AFEC_SETTLING_TIME_1 = AFEC_MR_SETTLING_AST5,
 204:../asf/sam/drivers/afec/afec.h **** 	AFEC_SETTLING_TIME_2 = AFEC_MR_SETTLING_AST9,
 205:../asf/sam/drivers/afec/afec.h **** 	AFEC_SETTLING_TIME_3 = AFEC_MR_SETTLING_AST17
 206:../asf/sam/drivers/afec/afec.h **** };
 207:../asf/sam/drivers/afec/afec.h **** #endif
 208:../asf/sam/drivers/afec/afec.h **** 
 209:../asf/sam/drivers/afec/afec.h **** /** Definitions for Comparison Mode */
 210:../asf/sam/drivers/afec/afec.h **** enum afec_cmp_mode {
 211:../asf/sam/drivers/afec/afec.h **** 	AFEC_CMP_MODE_0 = AFEC_EMR_CMPMODE_LOW,
 212:../asf/sam/drivers/afec/afec.h **** 	AFEC_CMP_MODE_1 = AFEC_EMR_CMPMODE_HIGH,
 213:../asf/sam/drivers/afec/afec.h **** 	AFEC_CMP_MODE_2 = AFEC_EMR_CMPMODE_IN,
 214:../asf/sam/drivers/afec/afec.h **** 	AFEC_CMP_MODE_3 = AFEC_EMR_CMPMODE_OUT
 215:../asf/sam/drivers/afec/afec.h **** };
 216:../asf/sam/drivers/afec/afec.h **** 
 217:../asf/sam/drivers/afec/afec.h **** /** Definitions for Temperature Comparison Mode */
ARM GAS  /tmp/ccQNhOlE.s 			page 15


 218:../asf/sam/drivers/afec/afec.h **** enum afec_temp_cmp_mode {
 219:../asf/sam/drivers/afec/afec.h **** 	AFEC_TEMP_CMP_MODE_0 = AFEC_TEMPMR_TEMPCMPMOD_LOW,
 220:../asf/sam/drivers/afec/afec.h **** 	AFEC_TEMP_CMP_MODE_1 = AFEC_TEMPMR_TEMPCMPMOD_HIGH,
 221:../asf/sam/drivers/afec/afec.h **** 	AFEC_TEMP_CMP_MODE_2 = AFEC_TEMPMR_TEMPCMPMOD_IN,
 222:../asf/sam/drivers/afec/afec.h **** 	AFEC_TEMP_CMP_MODE_3 = AFEC_TEMPMR_TEMPCMPMOD_OUT
 223:../asf/sam/drivers/afec/afec.h **** };
 224:../asf/sam/drivers/afec/afec.h **** 
 225:../asf/sam/drivers/afec/afec.h **** /**
 226:../asf/sam/drivers/afec/afec.h ****  * \brief Analog-Front-End Controller configuration structure.
 227:../asf/sam/drivers/afec/afec.h ****  *
 228:../asf/sam/drivers/afec/afec.h ****  * Configuration structure for a Analog-Front-End Controller instance.
 229:../asf/sam/drivers/afec/afec.h ****  * This structure could be initialized by the \ref afec_get_config_defaults()
 230:../asf/sam/drivers/afec/afec.h ****  * function before being modified by the user application.
 231:../asf/sam/drivers/afec/afec.h ****  */
 232:../asf/sam/drivers/afec/afec.h **** struct afec_config {
 233:../asf/sam/drivers/afec/afec.h **** 	/** Resolution */
 234:../asf/sam/drivers/afec/afec.h **** 	enum afec_resolution resolution;
 235:../asf/sam/drivers/afec/afec.h **** 	/** Master Clock */
 236:../asf/sam/drivers/afec/afec.h **** 	uint32_t mck;
 237:../asf/sam/drivers/afec/afec.h **** 	/** AFEC Clock */
 238:../asf/sam/drivers/afec/afec.h **** 	uint32_t afec_clock;
 239:../asf/sam/drivers/afec/afec.h **** 	/** Start Up Time */
 240:../asf/sam/drivers/afec/afec.h **** 	enum afec_startup_time startup_time;
 241:../asf/sam/drivers/afec/afec.h **** 	#if  SAM4E
 242:../asf/sam/drivers/afec/afec.h **** 		/** Analog Settling Time = (settling_time + 1) / AFEC clock */
 243:../asf/sam/drivers/afec/afec.h **** 		enum afec_settling_time settling_time;
 244:../asf/sam/drivers/afec/afec.h **** 	#endif
 245:../asf/sam/drivers/afec/afec.h **** 	/** Tracking Time = tracktim / AFEC clock */
 246:../asf/sam/drivers/afec/afec.h **** 	uint8_t tracktim;
 247:../asf/sam/drivers/afec/afec.h **** 	/** Transfer Period = (transfer * 2 + 3) / AFEC clock */
 248:../asf/sam/drivers/afec/afec.h **** 	uint8_t transfer;
 249:../asf/sam/drivers/afec/afec.h **** 	/** Analog Change */
 250:../asf/sam/drivers/afec/afec.h **** 	bool anach;
 251:../asf/sam/drivers/afec/afec.h **** 	/** Use Sequence Enable */
 252:../asf/sam/drivers/afec/afec.h **** 	bool useq;
 253:../asf/sam/drivers/afec/afec.h **** 	/** TAG of AFE_LDCR register */
 254:../asf/sam/drivers/afec/afec.h **** 	bool tag;
 255:../asf/sam/drivers/afec/afec.h **** 	/** Single Trigger Mode */
 256:../asf/sam/drivers/afec/afec.h **** 	bool stm;
 257:../asf/sam/drivers/afec/afec.h **** 	/** AFE Bias Current Control */
 258:../asf/sam/drivers/afec/afec.h **** 	uint8_t ibctl;
 259:../asf/sam/drivers/afec/afec.h **** };
 260:../asf/sam/drivers/afec/afec.h **** 
 261:../asf/sam/drivers/afec/afec.h **** /** AFEC channel configuration structure.*/
 262:../asf/sam/drivers/afec/afec.h **** struct afec_ch_config {
 263:../asf/sam/drivers/afec/afec.h **** 	/** Differential Mode */
 264:../asf/sam/drivers/afec/afec.h **** 	bool diff;
 265:../asf/sam/drivers/afec/afec.h **** 	/** Gain Value */
 266:../asf/sam/drivers/afec/afec.h **** 	enum afec_gainvalue gain;
 267:../asf/sam/drivers/afec/afec.h **** };
 268:../asf/sam/drivers/afec/afec.h **** 
 269:../asf/sam/drivers/afec/afec.h **** /** AFEC Temperature Sensor configuration structure.*/
 270:../asf/sam/drivers/afec/afec.h **** struct afec_temp_sensor_config {
 271:../asf/sam/drivers/afec/afec.h **** 	/** RTC Trigger mode */
 272:../asf/sam/drivers/afec/afec.h **** 	bool rctc;
 273:../asf/sam/drivers/afec/afec.h **** 	/** Temperature Comparison Mode */
 274:../asf/sam/drivers/afec/afec.h **** 	enum afec_temp_cmp_mode mode;
ARM GAS  /tmp/ccQNhOlE.s 			page 16


 275:../asf/sam/drivers/afec/afec.h **** 	/** Temperature Low Threshold */
 276:../asf/sam/drivers/afec/afec.h **** 	uint16_t low_threshold;
 277:../asf/sam/drivers/afec/afec.h **** 	/** Temperature High Threshold */
 278:../asf/sam/drivers/afec/afec.h **** 	uint16_t high_threshold;
 279:../asf/sam/drivers/afec/afec.h **** };
 280:../asf/sam/drivers/afec/afec.h **** 
 281:../asf/sam/drivers/afec/afec.h **** #if defined __SAM4E8C__  || defined __SAM4E16C__ || defined __SAM4E8CB__  || defined __SAM4E16CB__
 282:../asf/sam/drivers/afec/afec.h **** /** AFEC interrupt source type */
 283:../asf/sam/drivers/afec/afec.h **** enum afec_interrupt_source {
 284:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_0 = 0,
 285:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_1,
 286:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_2,
 287:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_3,
 288:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_4,
 289:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_5,
 290:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_15,
 291:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_DATA_READY,
 292:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_OVERRUN_ERROR,
 293:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_COMP_ERROR,
 294:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_END_RXBUF,
 295:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_RXBUF_FULL,
 296:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_TEMP_CHANGE,
 297:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_END_CAL,
 298:../asf/sam/drivers/afec/afec.h **** 	_AFEC_NUM_OF_INTERRUPT_SOURCE,
 299:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_ALL = 0xDF00803F,
 300:../asf/sam/drivers/afec/afec.h **** };
 301:../asf/sam/drivers/afec/afec.h **** #elif defined __SAM4E8E__  || defined __SAM4E16E__
 302:../asf/sam/drivers/afec/afec.h **** /** AFEC interrupt source type */
 303:../asf/sam/drivers/afec/afec.h **** enum afec_interrupt_source {
 304:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_0 = 0,
 305:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_1,
 306:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_2,
 307:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_3,
 308:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_4,
 309:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_5,
 310:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_6,
 311:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_7,
 312:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_8,
 313:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_9,
 314:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_10,
 315:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_11,
 316:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_12,
 317:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_13,
 318:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_14,
 319:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_15,
 320:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_DATA_READY,
 321:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_OVERRUN_ERROR,
 322:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_COMP_ERROR,
 323:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_END_RXBUF,
 324:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_RXBUF_FULL,
 325:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_TEMP_CHANGE,
 326:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_END_CAL,
 327:../asf/sam/drivers/afec/afec.h **** 	_AFEC_NUM_OF_INTERRUPT_SOURCE,
 328:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_ALL = 0xDF00FFFF,
 329:../asf/sam/drivers/afec/afec.h **** };
 330:../asf/sam/drivers/afec/afec.h **** #elif (SAMV71 || SAMV70 || SAME70 || SAMS70)
 331:../asf/sam/drivers/afec/afec.h **** /** AFEC interrupt source type */
ARM GAS  /tmp/ccQNhOlE.s 			page 17


 332:../asf/sam/drivers/afec/afec.h **** enum afec_interrupt_source {
 333:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_0 = 0,
 334:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_1,
 335:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_2,
 336:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_3,
 337:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_4,
 338:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_5,
 339:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_6,
 340:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_7,
 341:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_8,
 342:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_9,
 343:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_10,
 344:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_EOC_11,
 345:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_DATA_READY,
 346:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_OVERRUN_ERROR,
 347:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_COMP_ERROR,
 348:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_TEMP_CHANGE,
 349:../asf/sam/drivers/afec/afec.h **** 	_AFEC_NUM_OF_INTERRUPT_SOURCE,
 350:../asf/sam/drivers/afec/afec.h **** 	AFEC_INTERRUPT_ALL = 0x47000FFF,
 351:../asf/sam/drivers/afec/afec.h **** };
 352:../asf/sam/drivers/afec/afec.h **** #endif
 353:../asf/sam/drivers/afec/afec.h **** 
 354:../asf/sam/drivers/afec/afec.h **** typedef void (*afec_callback_t)(void);
 355:../asf/sam/drivers/afec/afec.h **** 
 356:../asf/sam/drivers/afec/afec.h **** void afec_get_config_defaults(struct afec_config *const cfg);
 357:../asf/sam/drivers/afec/afec.h **** void afec_ch_get_config_defaults(struct afec_ch_config *const cfg);
 358:../asf/sam/drivers/afec/afec.h **** void afec_temp_sensor_get_config_defaults(
 359:../asf/sam/drivers/afec/afec.h **** 		struct afec_temp_sensor_config *const cfg);
 360:../asf/sam/drivers/afec/afec.h **** enum status_code afec_init(Afec *const afec, struct afec_config *const config);
 361:../asf/sam/drivers/afec/afec.h **** void afec_temp_sensor_set_config(Afec *const afec,
 362:../asf/sam/drivers/afec/afec.h **** 		struct afec_temp_sensor_config *config);
 363:../asf/sam/drivers/afec/afec.h **** void afec_ch_set_config(Afec *const afec, const enum afec_channel_num channel,
 364:../asf/sam/drivers/afec/afec.h **** 		struct afec_ch_config *config);
 365:../asf/sam/drivers/afec/afec.h **** void afec_configure_sequence(Afec *const afec,
 366:../asf/sam/drivers/afec/afec.h **** 		const enum afec_channel_num ch_list[], const uint8_t uc_num);
 367:../asf/sam/drivers/afec/afec.h **** void afec_enable(Afec *const afec);
 368:../asf/sam/drivers/afec/afec.h **** void afec_disable(Afec *const afec);
 369:../asf/sam/drivers/afec/afec.h **** void afec_set_callback(Afec *const afec, enum afec_interrupt_source source,
 370:../asf/sam/drivers/afec/afec.h **** 		afec_callback_t callback, uint8_t irq_level);
 371:../asf/sam/drivers/afec/afec.h **** 
 372:../asf/sam/drivers/afec/afec.h **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 373:../asf/sam/drivers/afec/afec.h **** void afec_configure_auto_error_correction(Afec *const afec,
 374:../asf/sam/drivers/afec/afec.h **** 		const enum afec_channel_num channel,int16_t offsetcorr, uint16_t gaincorr);
 375:../asf/sam/drivers/afec/afec.h **** 
 376:../asf/sam/drivers/afec/afec.h **** uint32_t afec_get_correction_value(Afec *const afec,
 377:../asf/sam/drivers/afec/afec.h **** 	   const enum afec_channel_num afec_ch);
 378:../asf/sam/drivers/afec/afec.h **** void afec_set_sample_hold_mode(Afec *const afec,
 379:../asf/sam/drivers/afec/afec.h **** 		const enum afec_channel_num channel,const enum afec_sample_hold_mode mode);
 380:../asf/sam/drivers/afec/afec.h **** 
 381:../asf/sam/drivers/afec/afec.h **** #endif
 382:../asf/sam/drivers/afec/afec.h **** /**
 383:../asf/sam/drivers/afec/afec.h ****  * \internal
 384:../asf/sam/drivers/afec/afec.h ****  * \brief AFEC channel sanity check
 385:../asf/sam/drivers/afec/afec.h ****  *
 386:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 387:../asf/sam/drivers/afec/afec.h ****  * \param channel  AFEC channel number.
 388:../asf/sam/drivers/afec/afec.h ****  *
ARM GAS  /tmp/ccQNhOlE.s 			page 18


 389:../asf/sam/drivers/afec/afec.h ****  */
 390:../asf/sam/drivers/afec/afec.h **** static inline void afec_ch_sanity_check(Afec *const afec,
 391:../asf/sam/drivers/afec/afec.h **** 		const enum afec_channel_num channel)
 392:../asf/sam/drivers/afec/afec.h **** {
 393:../asf/sam/drivers/afec/afec.h **** 	if (afec == AFEC0) {
 394:../asf/sam/drivers/afec/afec.h **** 	#if defined __SAM4E8C__  || defined __SAM4E16C__ || defined __SAM4E8CB__  || defined __SAM4E16CB__
 395:../asf/sam/drivers/afec/afec.h **** 		Assert((channel < NB_CH_AFE0) || (channel == AFEC_TEMPERATURE_SENSOR));
 396:../asf/sam/drivers/afec/afec.h **** 	#elif defined __SAM4E8E__  || defined __SAM4E16E__
 397:../asf/sam/drivers/afec/afec.h **** 		Assert(channel < NB_CH_AFE0);
 398:../asf/sam/drivers/afec/afec.h **** 	#elif (SAMV71 || SAMV70 || SAME70 || SAMS70)
 399:../asf/sam/drivers/afec/afec.h **** 		Assert(channel < NB_CH_AFE0);
 400:../asf/sam/drivers/afec/afec.h **** 	#endif
 401:../asf/sam/drivers/afec/afec.h **** 	} else if (afec == AFEC1) {
 402:../asf/sam/drivers/afec/afec.h **** 		Assert(channel < NB_CH_AFE1);
 403:../asf/sam/drivers/afec/afec.h **** 	}
 404:../asf/sam/drivers/afec/afec.h **** 	UNUSED(channel);
 405:../asf/sam/drivers/afec/afec.h **** }
 406:../asf/sam/drivers/afec/afec.h **** 
 407:../asf/sam/drivers/afec/afec.h **** /**
 408:../asf/sam/drivers/afec/afec.h ****  * \brief Configure conversion trigger and free run mode.
 409:../asf/sam/drivers/afec/afec.h ****  *
 410:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 411:../asf/sam/drivers/afec/afec.h ****  * \param trigger Conversion trigger.
 412:../asf/sam/drivers/afec/afec.h ****  *
 413:../asf/sam/drivers/afec/afec.h ****  */
 414:../asf/sam/drivers/afec/afec.h **** static inline void afec_set_trigger(Afec *const afec,
 415:../asf/sam/drivers/afec/afec.h **** 		const enum afec_trigger trigger)
 416:../asf/sam/drivers/afec/afec.h **** {
 417:../asf/sam/drivers/afec/afec.h **** 	uint32_t reg;
 418:../asf/sam/drivers/afec/afec.h **** 
 419:../asf/sam/drivers/afec/afec.h **** 	reg = afec->AFEC_MR;
 420:../asf/sam/drivers/afec/afec.h **** 
 421:../asf/sam/drivers/afec/afec.h **** 	if (trigger == AFEC_TRIG_FREERUN) {
 422:../asf/sam/drivers/afec/afec.h **** 		reg |= AFEC_MR_FREERUN_ON;
 423:../asf/sam/drivers/afec/afec.h **** 	} else {
 424:../asf/sam/drivers/afec/afec.h **** 		reg &= ~(AFEC_MR_TRGSEL_Msk | AFEC_MR_TRGEN | AFEC_MR_FREERUN_ON);
 425:../asf/sam/drivers/afec/afec.h **** 		reg |= trigger;
 426:../asf/sam/drivers/afec/afec.h **** 	}
 427:../asf/sam/drivers/afec/afec.h **** 
 428:../asf/sam/drivers/afec/afec.h **** 	afec->AFEC_MR = reg;
 429:../asf/sam/drivers/afec/afec.h **** }
 430:../asf/sam/drivers/afec/afec.h **** 
 431:../asf/sam/drivers/afec/afec.h **** /**
 432:../asf/sam/drivers/afec/afec.h ****  * \brief Configure conversion resolution.
 433:../asf/sam/drivers/afec/afec.h ****  *
 434:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 435:../asf/sam/drivers/afec/afec.h ****  * \param res Conversion resolution.
 436:../asf/sam/drivers/afec/afec.h ****  *
 437:../asf/sam/drivers/afec/afec.h ****  */
 438:../asf/sam/drivers/afec/afec.h **** static inline void afec_set_resolution(Afec *const afec,
 439:../asf/sam/drivers/afec/afec.h **** 		const enum afec_resolution res)
 440:../asf/sam/drivers/afec/afec.h **** {
 441:../asf/sam/drivers/afec/afec.h **** 	uint32_t reg;
 442:../asf/sam/drivers/afec/afec.h **** 
 443:../asf/sam/drivers/afec/afec.h **** 	reg = afec->AFEC_EMR;
 444:../asf/sam/drivers/afec/afec.h **** 
 445:../asf/sam/drivers/afec/afec.h **** 	reg &= ~AFEC_EMR_RES_Msk;
ARM GAS  /tmp/ccQNhOlE.s 			page 19


 446:../asf/sam/drivers/afec/afec.h **** 	reg |= res;
 447:../asf/sam/drivers/afec/afec.h **** 
 448:../asf/sam/drivers/afec/afec.h **** 	afec->AFEC_EMR = reg;
 449:../asf/sam/drivers/afec/afec.h **** }
 450:../asf/sam/drivers/afec/afec.h **** 
 451:../asf/sam/drivers/afec/afec.h **** void afec_set_comparison_mode(Afec *const afec,
 452:../asf/sam/drivers/afec/afec.h **** 		const enum afec_cmp_mode mode, const enum afec_channel_num channel,
 453:../asf/sam/drivers/afec/afec.h **** 		uint8_t cmp_filter);
 454:../asf/sam/drivers/afec/afec.h **** 
 455:../asf/sam/drivers/afec/afec.h **** /**
 456:../asf/sam/drivers/afec/afec.h ****  * \brief Get comparison mode.
 457:../asf/sam/drivers/afec/afec.h ****  *
 458:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 459:../asf/sam/drivers/afec/afec.h ****  *
 460:../asf/sam/drivers/afec/afec.h ****  * \retval Compare mode value.
 461:../asf/sam/drivers/afec/afec.h ****  */
 462:../asf/sam/drivers/afec/afec.h **** static inline enum afec_cmp_mode afec_get_comparison_mode(Afec *const afec)
 463:../asf/sam/drivers/afec/afec.h **** {
 464:../asf/sam/drivers/afec/afec.h **** 	return (enum afec_cmp_mode)(afec->AFEC_EMR & AFEC_EMR_CMPMODE_Msk);
 465:../asf/sam/drivers/afec/afec.h **** }
 466:../asf/sam/drivers/afec/afec.h **** 
 467:../asf/sam/drivers/afec/afec.h **** /**
 468:../asf/sam/drivers/afec/afec.h ****  * \brief Configure AFEC compare window.
 469:../asf/sam/drivers/afec/afec.h ****  *
 470:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 471:../asf/sam/drivers/afec/afec.h ****  * \param us_low_threshold Low threshold of compare window.
 472:../asf/sam/drivers/afec/afec.h ****  * \param us_high_threshold High threshold of compare window.
 473:../asf/sam/drivers/afec/afec.h ****  */
 474:../asf/sam/drivers/afec/afec.h **** static inline void afec_set_comparison_window(Afec *const afec,
 475:../asf/sam/drivers/afec/afec.h **** 		const uint16_t us_low_threshold, const uint16_t us_high_threshold)
 476:../asf/sam/drivers/afec/afec.h **** {
 477:../asf/sam/drivers/afec/afec.h **** 	afec->AFEC_CWR = AFEC_CWR_LOWTHRES(us_low_threshold) |
 478:../asf/sam/drivers/afec/afec.h **** 			AFEC_CWR_HIGHTHRES(us_high_threshold);
 479:../asf/sam/drivers/afec/afec.h **** }
 480:../asf/sam/drivers/afec/afec.h **** 
 481:../asf/sam/drivers/afec/afec.h **** /**
 482:../asf/sam/drivers/afec/afec.h ****  * \brief Enable or disable write protection of AFEC registers.
 483:../asf/sam/drivers/afec/afec.h ****  *
 484:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 485:../asf/sam/drivers/afec/afec.h ****  * \param is_enable 1 to enable, 0 to disable.
 486:../asf/sam/drivers/afec/afec.h ****  */
 487:../asf/sam/drivers/afec/afec.h **** static inline void afec_set_writeprotect(Afec *const afec,
 488:../asf/sam/drivers/afec/afec.h **** 		const bool is_enable)
 489:../asf/sam/drivers/afec/afec.h **** {
 490:../asf/sam/drivers/afec/afec.h **** 	if (is_enable) {
 491:../asf/sam/drivers/afec/afec.h **** 		afec->AFEC_WPMR = AFEC_WPMR_WPEN | AFEC_WPMR_WPKEY_PASSWD;
 492:../asf/sam/drivers/afec/afec.h **** 	} else {
 493:../asf/sam/drivers/afec/afec.h **** 		afec->AFEC_WPMR = AFEC_WPMR_WPKEY_PASSWD;
 494:../asf/sam/drivers/afec/afec.h **** 	}
 495:../asf/sam/drivers/afec/afec.h **** }
 496:../asf/sam/drivers/afec/afec.h **** 
 497:../asf/sam/drivers/afec/afec.h **** /**
 498:../asf/sam/drivers/afec/afec.h ****  * \brief Indicate write protect status.
 499:../asf/sam/drivers/afec/afec.h ****  *
 500:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 501:../asf/sam/drivers/afec/afec.h ****  *
 502:../asf/sam/drivers/afec/afec.h ****  * \return 0 if no write protect violation occurred, or 16-bit write protect
ARM GAS  /tmp/ccQNhOlE.s 			page 20


 503:../asf/sam/drivers/afec/afec.h ****  * violation source.
 504:../asf/sam/drivers/afec/afec.h ****  */
 505:../asf/sam/drivers/afec/afec.h **** static inline uint32_t afec_get_writeprotect_status(Afec *const afec)
 506:../asf/sam/drivers/afec/afec.h **** {
 507:../asf/sam/drivers/afec/afec.h **** 	uint32_t reg_value;
 508:../asf/sam/drivers/afec/afec.h **** 
 509:../asf/sam/drivers/afec/afec.h **** 	reg_value = afec->AFEC_WPSR;
 510:../asf/sam/drivers/afec/afec.h **** 	if (reg_value & AFEC_WPSR_WPVS) {
 511:../asf/sam/drivers/afec/afec.h **** 		return (reg_value & AFEC_WPSR_WPVSRC_Msk) >> AFEC_WPSR_WPVSRC_Pos;
 512:../asf/sam/drivers/afec/afec.h **** 	} else {
 513:../asf/sam/drivers/afec/afec.h **** 		return 0;
 514:../asf/sam/drivers/afec/afec.h **** 	}
 515:../asf/sam/drivers/afec/afec.h **** }
 516:../asf/sam/drivers/afec/afec.h **** 
 517:../asf/sam/drivers/afec/afec.h **** /**
 518:../asf/sam/drivers/afec/afec.h ****  * \brief Get AFEC overrun error status.
 519:../asf/sam/drivers/afec/afec.h ****  *
 520:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 521:../asf/sam/drivers/afec/afec.h ****  *
 522:../asf/sam/drivers/afec/afec.h ****  * \return AFEC overrun error status.
 523:../asf/sam/drivers/afec/afec.h ****  */
 524:../asf/sam/drivers/afec/afec.h **** static inline uint32_t afec_get_overrun_status(Afec *const afec)
 525:../asf/sam/drivers/afec/afec.h **** {
 526:../asf/sam/drivers/afec/afec.h **** 	return afec->AFEC_OVER;
 527:../asf/sam/drivers/afec/afec.h **** }
 528:../asf/sam/drivers/afec/afec.h **** 
 529:../asf/sam/drivers/afec/afec.h **** /**
 530:../asf/sam/drivers/afec/afec.h ****  * \brief Start analog-to-digital conversion.
 531:../asf/sam/drivers/afec/afec.h ****  *
 532:../asf/sam/drivers/afec/afec.h ****  * \note If one of the hardware event is selected as AFEC trigger,
 533:../asf/sam/drivers/afec/afec.h ****  * this function can NOT start analog to digital conversion.
 534:../asf/sam/drivers/afec/afec.h ****  *
 535:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 536:../asf/sam/drivers/afec/afec.h ****  */
 537:../asf/sam/drivers/afec/afec.h **** static inline void afec_start_software_conversion(Afec *const afec)
 538:../asf/sam/drivers/afec/afec.h **** {
 539:../asf/sam/drivers/afec/afec.h **** 	afec->AFEC_CR = AFEC_CR_START;
 540:../asf/sam/drivers/afec/afec.h **** }
 541:../asf/sam/drivers/afec/afec.h **** 
 542:../asf/sam/drivers/afec/afec.h **** void afec_set_power_mode(Afec *const afec,
 543:../asf/sam/drivers/afec/afec.h **** 		const enum afec_power_mode mode);
 544:../asf/sam/drivers/afec/afec.h **** 
 545:../asf/sam/drivers/afec/afec.h **** /**
 546:../asf/sam/drivers/afec/afec.h ****  * \brief Enable the specified AFEC channel.
 547:../asf/sam/drivers/afec/afec.h ****  *
 548:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 549:../asf/sam/drivers/afec/afec.h ****  * \param afec_ch AFEC channel number.
 550:../asf/sam/drivers/afec/afec.h ****  */
 551:../asf/sam/drivers/afec/afec.h **** static inline void afec_channel_enable(Afec *const afec,
 552:../asf/sam/drivers/afec/afec.h **** 		const enum afec_channel_num afec_ch)
 553:../asf/sam/drivers/afec/afec.h **** {
 554:../asf/sam/drivers/afec/afec.h **** 	if (afec_ch != AFEC_CHANNEL_ALL) {
 555:../asf/sam/drivers/afec/afec.h **** 		afec_ch_sanity_check(afec, afec_ch);
 556:../asf/sam/drivers/afec/afec.h **** 	}
 557:../asf/sam/drivers/afec/afec.h **** 
 558:../asf/sam/drivers/afec/afec.h **** 	afec->AFEC_CHER = (afec_ch == AFEC_CHANNEL_ALL) ?
 559:../asf/sam/drivers/afec/afec.h **** 			AFEC_CHANNEL_ALL : 1 << afec_ch;
ARM GAS  /tmp/ccQNhOlE.s 			page 21


 560:../asf/sam/drivers/afec/afec.h **** }
 561:../asf/sam/drivers/afec/afec.h **** 
 562:../asf/sam/drivers/afec/afec.h **** /**
 563:../asf/sam/drivers/afec/afec.h ****  * \brief Disable the specified AFEC channel.
 564:../asf/sam/drivers/afec/afec.h ****  *
 565:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 566:../asf/sam/drivers/afec/afec.h ****  * \param afec_ch AFEC channel number.
 567:../asf/sam/drivers/afec/afec.h ****  */
 568:../asf/sam/drivers/afec/afec.h **** static inline void afec_channel_disable(Afec *const afec,
 569:../asf/sam/drivers/afec/afec.h **** 		const enum afec_channel_num afec_ch)
 570:../asf/sam/drivers/afec/afec.h **** {
 571:../asf/sam/drivers/afec/afec.h **** 	if (afec_ch != AFEC_CHANNEL_ALL) {
 572:../asf/sam/drivers/afec/afec.h **** 		afec_ch_sanity_check(afec, afec_ch);
 573:../asf/sam/drivers/afec/afec.h **** 	}
 574:../asf/sam/drivers/afec/afec.h **** 
 575:../asf/sam/drivers/afec/afec.h **** 	afec->AFEC_CHDR = (afec_ch == AFEC_CHANNEL_ALL) ?
 576:../asf/sam/drivers/afec/afec.h **** 			AFEC_CHANNEL_ALL : 1 << afec_ch;
 577:../asf/sam/drivers/afec/afec.h **** }
 578:../asf/sam/drivers/afec/afec.h **** 
 579:../asf/sam/drivers/afec/afec.h **** /**
 580:../asf/sam/drivers/afec/afec.h ****  * \brief Get the AFEC channel status.
 581:../asf/sam/drivers/afec/afec.h ****  *
 582:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 583:../asf/sam/drivers/afec/afec.h ****  * \param afec_ch AFEC channel number.
 584:../asf/sam/drivers/afec/afec.h ****  *
 585:../asf/sam/drivers/afec/afec.h ****  * \retval 1 if channel is enabled.
 586:../asf/sam/drivers/afec/afec.h ****  * \retval 0 if channel is disabled.
 587:../asf/sam/drivers/afec/afec.h ****  */
 588:../asf/sam/drivers/afec/afec.h **** static inline uint32_t afec_channel_get_status(Afec *const afec,
 589:../asf/sam/drivers/afec/afec.h **** 		const enum afec_channel_num afec_ch)
 590:../asf/sam/drivers/afec/afec.h **** {
 591:../asf/sam/drivers/afec/afec.h **** 	afec_ch_sanity_check(afec, afec_ch);
 592:../asf/sam/drivers/afec/afec.h **** 
 593:../asf/sam/drivers/afec/afec.h **** 	return afec->AFEC_CHSR & (1 << afec_ch);
 594:../asf/sam/drivers/afec/afec.h **** }
 595:../asf/sam/drivers/afec/afec.h **** 
 596:../asf/sam/drivers/afec/afec.h **** /**
 597:../asf/sam/drivers/afec/afec.h ****  * \brief Read the Converted Data of the selected channel.
 598:../asf/sam/drivers/afec/afec.h ****  *
 599:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 600:../asf/sam/drivers/afec/afec.h ****  * \param afec_ch AFEC channel number.
 601:../asf/sam/drivers/afec/afec.h ****  *
 602:../asf/sam/drivers/afec/afec.h ****  * \return AFEC converted value of the selected channel.
 603:../asf/sam/drivers/afec/afec.h ****  */
 604:../asf/sam/drivers/afec/afec.h **** static inline uint32_t afec_channel_get_value(Afec *const afec,
 605:../asf/sam/drivers/afec/afec.h **** 		enum afec_channel_num afec_ch)
 606:../asf/sam/drivers/afec/afec.h **** {
 607:../asf/sam/drivers/afec/afec.h **** 	afec_ch_sanity_check(afec, afec_ch);
 608:../asf/sam/drivers/afec/afec.h **** 
 609:../asf/sam/drivers/afec/afec.h **** 	afec->AFEC_CSELR = afec_ch;
 610:../asf/sam/drivers/afec/afec.h **** 	return afec->AFEC_CDR;
 611:../asf/sam/drivers/afec/afec.h **** }
 612:../asf/sam/drivers/afec/afec.h **** 
 613:../asf/sam/drivers/afec/afec.h **** /**
 614:../asf/sam/drivers/afec/afec.h ****  * \brief Set analog offset to be used for channel CSEL.
 615:../asf/sam/drivers/afec/afec.h ****  *
 616:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
ARM GAS  /tmp/ccQNhOlE.s 			page 22


 617:../asf/sam/drivers/afec/afec.h ****  * \param afec_ch AFEC channel number.
 618:../asf/sam/drivers/afec/afec.h ****  * \param aoffset  Analog offset value.
 619:../asf/sam/drivers/afec/afec.h ****  */
 620:../asf/sam/drivers/afec/afec.h **** static inline void afec_channel_set_analog_offset(Afec *const afec,
 621:../asf/sam/drivers/afec/afec.h **** 		enum afec_channel_num afec_ch, uint16_t aoffset)
 622:../asf/sam/drivers/afec/afec.h **** {
 623:../asf/sam/drivers/afec/afec.h **** 	afec_ch_sanity_check(afec, afec_ch);
 624:../asf/sam/drivers/afec/afec.h **** 
 625:../asf/sam/drivers/afec/afec.h **** 	afec->AFEC_CSELR = afec_ch;
 626:../asf/sam/drivers/afec/afec.h **** 	afec->AFEC_COCR = (aoffset & AFEC_COCR_AOFF_Msk);
 627:../asf/sam/drivers/afec/afec.h **** }
 628:../asf/sam/drivers/afec/afec.h **** 
 629:../asf/sam/drivers/afec/afec.h **** /**
 630:../asf/sam/drivers/afec/afec.h ****  * \brief Get the Last Data Converted.
 631:../asf/sam/drivers/afec/afec.h ****  *
 632:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 633:../asf/sam/drivers/afec/afec.h ****  *
 634:../asf/sam/drivers/afec/afec.h ****  * \return AFEC latest converted value.
 635:../asf/sam/drivers/afec/afec.h ****  */
 636:../asf/sam/drivers/afec/afec.h **** static inline uint32_t afec_get_latest_value(Afec *const afec)
 637:../asf/sam/drivers/afec/afec.h **** {
 638:../asf/sam/drivers/afec/afec.h **** 	return afec->AFEC_LCDR & AFEC_LCDR_LDATA_Msk;
 639:../asf/sam/drivers/afec/afec.h **** }
 640:../asf/sam/drivers/afec/afec.h **** 
 641:../asf/sam/drivers/afec/afec.h **** /**
 642:../asf/sam/drivers/afec/afec.h ****  * \brief Get the Last Converted Channel Number.
 643:../asf/sam/drivers/afec/afec.h ****  *
 644:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 645:../asf/sam/drivers/afec/afec.h ****  *
 646:../asf/sam/drivers/afec/afec.h ****  * \return AFEC Last Converted Channel Number.
 647:../asf/sam/drivers/afec/afec.h ****  */
 648:../asf/sam/drivers/afec/afec.h **** static inline uint32_t afec_get_latest_chan_num(Afec *const afec)
 649:../asf/sam/drivers/afec/afec.h **** {
 650:../asf/sam/drivers/afec/afec.h **** 	return (afec->AFEC_LCDR & AFEC_LCDR_CHNB_Msk) >> AFEC_LCDR_CHNB_Pos;
 651:../asf/sam/drivers/afec/afec.h **** }
 652:../asf/sam/drivers/afec/afec.h **** 
 653:../asf/sam/drivers/afec/afec.h **** void afec_enable_interrupt(Afec *const afec,
 654:../asf/sam/drivers/afec/afec.h **** 		enum afec_interrupt_source interrupt_source);
 655:../asf/sam/drivers/afec/afec.h **** 
 656:../asf/sam/drivers/afec/afec.h **** void afec_disable_interrupt(Afec *const afec,
 657:../asf/sam/drivers/afec/afec.h **** 		enum afec_interrupt_source interrupt_source);
 658:../asf/sam/drivers/afec/afec.h **** 
 659:../asf/sam/drivers/afec/afec.h **** /**
 660:../asf/sam/drivers/afec/afec.h ****  * \brief Get AFEC interrupt status.
 661:../asf/sam/drivers/afec/afec.h ****  *
 662:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 663:../asf/sam/drivers/afec/afec.h ****  *
 664:../asf/sam/drivers/afec/afec.h ****  * \return The interrupt status value.
 665:../asf/sam/drivers/afec/afec.h ****  */
 666:../asf/sam/drivers/afec/afec.h **** static inline uint32_t afec_get_interrupt_status(Afec *const afec)
 667:../asf/sam/drivers/afec/afec.h **** {
 668:../asf/sam/drivers/afec/afec.h **** 	return afec->AFEC_ISR;
  52              		.loc 2 668 0
  53 0008 026B     		ldr	r2, [r0, #48]
  54              	.LVL1:
  55              	.LBE60:
  56              	.LBE59:
ARM GAS  /tmp/ccQNhOlE.s 			page 23


 530:../asf/sam/drivers/afec/afec.c **** 	volatile uint32_t status;
 531:../asf/sam/drivers/afec/afec.c **** 	uint32_t cnt, inst_num;
 532:../asf/sam/drivers/afec/afec.c **** 
 533:../asf/sam/drivers/afec/afec.c **** 	status = afec_get_interrupt_status(afec) & afec_get_interrupt_mask(afec);
 534:../asf/sam/drivers/afec/afec.c **** 	inst_num = afec_find_inst_num(afec);
 535:../asf/sam/drivers/afec/afec.c **** 
 536:../asf/sam/drivers/afec/afec.c **** 	for (cnt = 0; cnt < _AFEC_NUM_OF_INTERRUPT_SOURCE; cnt++) {
  57              		.loc 1 536 0
  58 000a 0024     		movs	r4, #0
  59              	.LBB61:
  60              	.LBB56:
 112:../asf/sam/drivers/afec/afec.c **** 		return 1;
  61              		.loc 1 112 0
  62 000c C71B     		subs	r7, r0, r7
  63              	.LBE56:
  64              	.LBE61:
  65              	.LBB62:
  66              	.LBB63:
 669:../asf/sam/drivers/afec/afec.h **** }
 670:../asf/sam/drivers/afec/afec.h **** 
 671:../asf/sam/drivers/afec/afec.h **** /**
 672:../asf/sam/drivers/afec/afec.h ****  * \brief Get AFEC interrupt mask.
 673:../asf/sam/drivers/afec/afec.h ****  *
 674:../asf/sam/drivers/afec/afec.h ****  * \param afec  Base address of the AFEC.
 675:../asf/sam/drivers/afec/afec.h ****  *
 676:../asf/sam/drivers/afec/afec.h ****  * \return The interrupt mask value.
 677:../asf/sam/drivers/afec/afec.h ****  */
 678:../asf/sam/drivers/afec/afec.h **** static inline uint32_t afec_get_interrupt_mask(Afec *const afec)
 679:../asf/sam/drivers/afec/afec.h **** {
 680:../asf/sam/drivers/afec/afec.h **** 	return afec->AFEC_IMR;
  67              		.loc 2 680 0
  68 000e C36A     		ldr	r3, [r0, #44]
  69              	.LVL2:
  70 0010 DFF85480 		ldr	r8, .L33+4
  71              	.LBE63:
  72              	.LBE62:
 537:../asf/sam/drivers/afec/afec.c **** 		if (cnt < AFEC_INTERRUPT_DATA_READY) {
 538:../asf/sam/drivers/afec/afec.c **** 		#if defined __SAM4E8C__  || defined __SAM4E16C__ || defined __SAM4E8CB__  || defined __SAM4E16CB_
 539:../asf/sam/drivers/afec/afec.c **** 			if(cnt == AFEC_INTERRUPT_EOC_15) {
 540:../asf/sam/drivers/afec/afec.c **** 				if (status & (1 << AFEC_TEMP_INT_SOURCE_NUM)) {
 541:../asf/sam/drivers/afec/afec.c **** 					afec_interrupt(inst_num, (enum afec_interrupt_source)cnt);
 542:../asf/sam/drivers/afec/afec.c **** 				}
 543:../asf/sam/drivers/afec/afec.c **** 			} else {
 544:../asf/sam/drivers/afec/afec.c **** 				if (status & (1 << cnt)) {
 545:../asf/sam/drivers/afec/afec.c **** 					afec_interrupt(inst_num, (enum afec_interrupt_source)cnt);
 546:../asf/sam/drivers/afec/afec.c **** 				}
 547:../asf/sam/drivers/afec/afec.c **** 			}
 548:../asf/sam/drivers/afec/afec.c **** 		#elif defined __SAM4E8E__  || defined __SAM4E16E__ || SAMV71 || SAMV70 || SAMS70 || SAME70
 549:../asf/sam/drivers/afec/afec.c **** 			if (status & (1 << cnt)) {
 550:../asf/sam/drivers/afec/afec.c **** 				afec_interrupt(inst_num, (enum afec_interrupt_source)cnt);
 551:../asf/sam/drivers/afec/afec.c **** 			}
 552:../asf/sam/drivers/afec/afec.c **** 		#endif
 553:../asf/sam/drivers/afec/afec.c **** 		} else if (cnt < AFEC_INTERRUPT_TEMP_CHANGE) {
 554:../asf/sam/drivers/afec/afec.c **** 			if (status & (1 << (cnt + AFEC_INTERRUPT_GAP1))) {
  73              		.loc 1 554 0
  74 0014 0126     		movs	r6, #1
  75              	.LBB64:
ARM GAS  /tmp/ccQNhOlE.s 			page 24


  76              	.LBB57:
 112:../asf/sam/drivers/afec/afec.c **** 		return 1;
  77              		.loc 1 112 0
  78 0016 B7FA87F7 		clz	r7, r7
  79              	.LBE57:
  80              	.LBE64:
 533:../asf/sam/drivers/afec/afec.c **** 	inst_num = afec_find_inst_num(afec);
  81              		.loc 1 533 0
  82 001a 1340     		ands	r3, r3, r2
  83              	.LBB65:
  84              	.LBB58:
 112:../asf/sam/drivers/afec/afec.c **** 		return 1;
  85              		.loc 1 112 0
  86 001c 7F09     		lsrs	r7, r7, #5
  87              	.LBE58:
  88              	.LBE65:
 533:../asf/sam/drivers/afec/afec.c **** 	inst_num = afec_find_inst_num(afec);
  89              		.loc 1 533 0
  90 001e 0193     		str	r3, [sp, #4]
  91              	.LVL3:
  92 0020 BF01     		lsls	r7, r7, #6
  93 0022 08EB0705 		add	r5, r8, r7
  94 0026 09E0     		b	.L6
  95              	.LVL4:
  96              	.L31:
  97              		.loc 1 554 0
  98 0028 019A     		ldr	r2, [sp, #4]
  99 002a 1342     		tst	r3, r2
 100 002c 02D0     		beq	.L3
 101              	.LBB66:
 102              	.LBB67:
 517:../asf/sam/drivers/afec/afec.c **** 		afec_callback_pointer[inst_num][source]();
 103              		.loc 1 517 0
 104 002e 2B68     		ldr	r3, [r5]
 105 0030 03B1     		cbz	r3, .L3
 518:../asf/sam/drivers/afec/afec.c **** 	}
 106              		.loc 1 518 0
 107 0032 9847     		blx	r3
 108              	.LVL5:
 109              	.L3:
 110              	.LBE67:
 111              	.LBE66:
 536:../asf/sam/drivers/afec/afec.c **** 		if (cnt < AFEC_INTERRUPT_DATA_READY) {
 112              		.loc 1 536 0 discriminator 2
 113 0034 0134     		adds	r4, r4, #1
 114              	.LVL6:
 115 0036 0435     		adds	r5, r5, #4
 116 0038 102C     		cmp	r4, #16
 117 003a 10D0     		beq	.L1
 118              	.LVL7:
 119              	.L6:
 537:../asf/sam/drivers/afec/afec.c **** 		#if defined __SAM4E8C__  || defined __SAM4E16C__ || defined __SAM4E8CB__  || defined __SAM4E16CB_
 120              		.loc 1 537 0
 121 003c 0B2C     		cmp	r4, #11
 549:../asf/sam/drivers/afec/afec.c **** 				afec_interrupt(inst_num, (enum afec_interrupt_source)cnt);
 122              		.loc 1 549 0
 123 003e 06FA04F3 		lsl	r3, r6, r4
ARM GAS  /tmp/ccQNhOlE.s 			page 25


 537:../asf/sam/drivers/afec/afec.c **** 		#if defined __SAM4E8C__  || defined __SAM4E16C__ || defined __SAM4E8CB__  || defined __SAM4E16CB_
 124              		.loc 1 537 0
 125 0042 F1D9     		bls	.L31
 126              	.LVL8:
 127              		.loc 1 554 0
 128 0044 04F10C03 		add	r3, r4, #12
 553:../asf/sam/drivers/afec/afec.c **** 			if (status & (1 << (cnt + AFEC_INTERRUPT_GAP1))) {
 129              		.loc 1 553 0
 130 0048 0F2C     		cmp	r4, #15
 131              		.loc 1 554 0
 132 004a 06FA03F3 		lsl	r3, r6, r3
 553:../asf/sam/drivers/afec/afec.c **** 			if (status & (1 << (cnt + AFEC_INTERRUPT_GAP1))) {
 133              		.loc 1 553 0
 134 004e EBD1     		bne	.L31
 555:../asf/sam/drivers/afec/afec.c **** 				afec_interrupt(inst_num, (enum afec_interrupt_source)cnt);
 556:../asf/sam/drivers/afec/afec.c **** 			}
 557:../asf/sam/drivers/afec/afec.c **** 		} else {
 558:../asf/sam/drivers/afec/afec.c **** 			if (status & (1 << (cnt + AFEC_INTERRUPT_GAP1 + AFEC_INTERRUPT_GAP2))) {
 135              		.loc 1 558 0
 136 0050 019B     		ldr	r3, [sp, #4]
 137 0052 5B00     		lsls	r3, r3, #1
 138 0054 03D5     		bpl	.L1
 139              	.LVL9:
 140              	.LBB68:
 141              	.LBB69:
 517:../asf/sam/drivers/afec/afec.c **** 		afec_callback_pointer[inst_num][source]();
 142              		.loc 1 517 0
 143 0056 4744     		add	r7, r7, r8
 144 0058 FB6B     		ldr	r3, [r7, #60]
 145 005a 03B1     		cbz	r3, .L1
 518:../asf/sam/drivers/afec/afec.c **** 	}
 146              		.loc 1 518 0
 147 005c 9847     		blx	r3
 148              	.LVL10:
 149              	.L1:
 150              	.LBE69:
 151              	.LBE68:
 559:../asf/sam/drivers/afec/afec.c **** 				afec_interrupt(inst_num, (enum afec_interrupt_source)cnt);
 560:../asf/sam/drivers/afec/afec.c **** 			}
 561:../asf/sam/drivers/afec/afec.c **** 		}
 562:../asf/sam/drivers/afec/afec.c **** 	}
 563:../asf/sam/drivers/afec/afec.c **** }
 152              		.loc 1 563 0
 153 005e 02B0     		add	sp, sp, #8
 154              		.cfi_def_cfa_offset 24
 155              		@ sp needed
 156 0060 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 157              	.LVL11:
 158              	.L34:
 159              		.align	2
 160              	.L33:
 161 0064 00400640 		.word	1074151424
 162 0068 00000000 		.word	afec_callback_pointer
 163              		.cfi_endproc
 164              	.LFE201:
 165              		.size	afec_process_callback, .-afec_process_callback
 166              		.section	.text.afec_ch_set_config,"ax",%progbits
ARM GAS  /tmp/ccQNhOlE.s 			page 26


 167              		.align	1
 168              		.p2align 2,,3
 169              		.global	afec_ch_set_config
 170              		.syntax unified
 171              		.thumb
 172              		.thumb_func
 173              		.fpu fpv5-d16
 174              		.type	afec_ch_set_config, %function
 175              	afec_ch_set_config:
 176              	.LFB189:
 192:../asf/sam/drivers/afec/afec.c **** 	afec_ch_sanity_check(afec, channel);
 177              		.loc 1 192 0
 178              		.cfi_startproc
 179              		@ args = 0, pretend = 0, frame = 0
 180              		@ frame_needed = 0, uses_anonymous_args = 0
 181              		@ link register save eliminated.
 182              	.LVL12:
 183 0000 70B4     		push	{r4, r5, r6}
 184              		.cfi_def_cfa_offset 12
 185              		.cfi_offset 4, -12
 186              		.cfi_offset 5, -8
 187              		.cfi_offset 6, -4
 197:../asf/sam/drivers/afec/afec.c **** 	reg |= (config->diff) ? (0x1u << channel) : 0;
 188              		.loc 1 197 0
 189 0002 0123     		movs	r3, #1
 198:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_DIFFR = reg;
 190              		.loc 1 198 0
 191 0004 1478     		ldrb	r4, [r2]	@ zero_extendqisi2
 196:../asf/sam/drivers/afec/afec.c **** 	reg &= ~(0x1u << channel);
 192              		.loc 1 196 0
 193 0006 066E     		ldr	r6, [r0, #96]
 194              	.LVL13:
 202:../asf/sam/drivers/afec/afec.c **** 	reg |= (config->gain) << (2 * channel);
 195              		.loc 1 202 0
 196 0008 0325     		movs	r5, #3
 197:../asf/sam/drivers/afec/afec.c **** 	reg |= (config->diff) ? (0x1u << channel) : 0;
 197              		.loc 1 197 0
 198 000a 8B40     		lsls	r3, r3, r1
 198:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_DIFFR = reg;
 199              		.loc 1 198 0
 200 000c 002C     		cmp	r4, #0
 202:../asf/sam/drivers/afec/afec.c **** 	reg |= (config->gain) << (2 * channel);
 201              		.loc 1 202 0
 202 000e 4FEA4104 		lsl	r4, r1, #1
 203:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_CGR = reg;
 203              		.loc 1 203 0
 204 0012 5178     		ldrb	r1, [r2, #1]	@ zero_extendqisi2
 205              	.LVL14:
 197:../asf/sam/drivers/afec/afec.c **** 	reg |= (config->diff) ? (0x1u << channel) : 0;
 206              		.loc 1 197 0
 207 0014 26EA0306 		bic	r6, r6, r3
 208              	.LVL15:
 198:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_DIFFR = reg;
 209              		.loc 1 198 0
 210 0018 08BF     		it	eq
 211 001a 0023     		moveq	r3, #0
 202:../asf/sam/drivers/afec/afec.c **** 	reg |= (config->gain) << (2 * channel);
ARM GAS  /tmp/ccQNhOlE.s 			page 27


 212              		.loc 1 202 0
 213 001c 05FA04F2 		lsl	r2, r5, r4
 214              	.LVL16:
 203:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_CGR = reg;
 215              		.loc 1 203 0
 216 0020 A140     		lsls	r1, r1, r4
 198:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_DIFFR = reg;
 217              		.loc 1 198 0
 218 0022 3343     		orrs	r3, r3, r6
 219              	.LVL17:
 199:../asf/sam/drivers/afec/afec.c **** 
 220              		.loc 1 199 0
 221 0024 0366     		str	r3, [r0, #96]
 201:../asf/sam/drivers/afec/afec.c **** 	reg &= ~(0x03u << (2 * channel));
 222              		.loc 1 201 0
 223 0026 436D     		ldr	r3, [r0, #84]
 224              	.LVL18:
 202:../asf/sam/drivers/afec/afec.c **** 	reg |= (config->gain) << (2 * channel);
 225              		.loc 1 202 0
 226 0028 23EA0203 		bic	r3, r3, r2
 227              	.LVL19:
 203:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_CGR = reg;
 228              		.loc 1 203 0
 229 002c 1943     		orrs	r1, r1, r3
 230              	.LVL20:
 205:../asf/sam/drivers/afec/afec.c **** 
 231              		.loc 1 205 0
 232 002e 70BC     		pop	{r4, r5, r6}
 233              		.cfi_restore 6
 234              		.cfi_restore 5
 235              		.cfi_restore 4
 236              		.cfi_def_cfa_offset 0
 204:../asf/sam/drivers/afec/afec.c **** }
 237              		.loc 1 204 0
 238 0030 4165     		str	r1, [r0, #84]
 205:../asf/sam/drivers/afec/afec.c **** 
 239              		.loc 1 205 0
 240 0032 7047     		bx	lr
 241              		.cfi_endproc
 242              	.LFE189:
 243              		.size	afec_ch_set_config, .-afec_ch_set_config
 244              		.section	.text.afec_temp_sensor_set_config,"ax",%progbits
 245              		.align	1
 246              		.p2align 2,,3
 247              		.global	afec_temp_sensor_set_config
 248              		.syntax unified
 249              		.thumb
 250              		.thumb_func
 251              		.fpu fpv5-d16
 252              		.type	afec_temp_sensor_set_config, %function
 253              	afec_temp_sensor_set_config:
 254              	.LFB190:
 215:../asf/sam/drivers/afec/afec.c **** 	Assert(afec == AFEC0);
 255              		.loc 1 215 0
 256              		.cfi_startproc
 257              		@ args = 0, pretend = 0, frame = 0
 258              		@ frame_needed = 0, uses_anonymous_args = 0
ARM GAS  /tmp/ccQNhOlE.s 			page 28


 259              		@ link register save eliminated.
 260              	.LVL21:
 220:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_TEMPMR = reg;
 261              		.loc 1 220 0
 262 0000 4B78     		ldrb	r3, [r1, #1]	@ zero_extendqisi2
 223:../asf/sam/drivers/afec/afec.c **** 			AFEC_TEMPCWR_THIGHTHRES(config->high_threshold);
 263              		.loc 1 223 0
 264 0002 D1F80220 		ldr	r2, [r1, #2]	@ unaligned
 215:../asf/sam/drivers/afec/afec.c **** 	Assert(afec == AFEC0);
 265              		.loc 1 215 0
 266 0006 10B4     		push	{r4}
 267              		.cfi_def_cfa_offset 4
 268              		.cfi_offset 4, -4
 220:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_TEMPMR = reg;
 269              		.loc 1 220 0
 270 0008 0C78     		ldrb	r4, [r1]	@ zero_extendqisi2
 271 000a 2343     		orrs	r3, r3, r4
 272              	.LVL22:
 226:../asf/sam/drivers/afec/afec.c **** 
 273              		.loc 1 226 0
 274 000c 5DF8044B 		ldr	r4, [sp], #4
 275              		.cfi_restore 4
 276              		.cfi_def_cfa_offset 0
 221:../asf/sam/drivers/afec/afec.c **** 
 277              		.loc 1 221 0
 278 0010 0367     		str	r3, [r0, #112]
 223:../asf/sam/drivers/afec/afec.c **** 			AFEC_TEMPCWR_THIGHTHRES(config->high_threshold);
 279              		.loc 1 223 0
 280 0012 4267     		str	r2, [r0, #116]
 226:../asf/sam/drivers/afec/afec.c **** 
 281              		.loc 1 226 0
 282 0014 7047     		bx	lr
 283              		.cfi_endproc
 284              	.LFE190:
 285              		.size	afec_temp_sensor_set_config, .-afec_temp_sensor_set_config
 286 0016 00BF     		.section	.text.afec_get_config_defaults,"ax",%progbits
 287              		.align	1
 288              		.p2align 2,,3
 289              		.global	afec_get_config_defaults
 290              		.syntax unified
 291              		.thumb
 292              		.thumb_func
 293              		.fpu fpv5-d16
 294              		.type	afec_get_config_defaults, %function
 295              	afec_get_config_defaults:
 296              	.LFB191:
 250:../asf/sam/drivers/afec/afec.c **** 	/* Sanity check argument. */
 297              		.loc 1 250 0
 298              		.cfi_startproc
 299              		@ args = 0, pretend = 0, frame = 0
 300              		@ frame_needed = 0, uses_anonymous_args = 0
 301              		@ link register save eliminated.
 302              	.LVL23:
 262:../asf/sam/drivers/afec/afec.c **** 		cfg->anach = true;
 303              		.loc 1 262 0
 304 0000 0123     		movs	r3, #1
 254:../asf/sam/drivers/afec/afec.c **** 	cfg->mck = sysclk_get_cpu_hz();
ARM GAS  /tmp/ccQNhOlE.s 			page 29


 305              		.loc 1 254 0
 306 0002 0022     		movs	r2, #0
 261:../asf/sam/drivers/afec/afec.c **** 		cfg->transfer = 1;
 307              		.loc 1 261 0
 308 0004 0221     		movs	r1, #2
 254:../asf/sam/drivers/afec/afec.c **** 	cfg->mck = sysclk_get_cpu_hz();
 309              		.loc 1 254 0
 310 0006 0260     		str	r2, [r0]
 261:../asf/sam/drivers/afec/afec.c **** 		cfg->transfer = 1;
 311              		.loc 1 261 0
 312 0008 0174     		strb	r1, [r0, #16]
 264:../asf/sam/drivers/afec/afec.c **** 		cfg->tag = true;
 313              		.loc 1 264 0
 314 000a C274     		strb	r2, [r0, #19]
 262:../asf/sam/drivers/afec/afec.c **** 		cfg->anach = true;
 315              		.loc 1 262 0
 316 000c 4374     		strb	r3, [r0, #17]
 263:../asf/sam/drivers/afec/afec.c **** 		cfg->useq = false;
 317              		.loc 1 263 0
 318 000e 8374     		strb	r3, [r0, #18]
 265:../asf/sam/drivers/afec/afec.c **** 		cfg->stm = true;
 319              		.loc 1 265 0
 320 0010 0375     		strb	r3, [r0, #20]
 266:../asf/sam/drivers/afec/afec.c **** 		cfg->ibctl = 1;
 321              		.loc 1 266 0
 322 0012 4375     		strb	r3, [r0, #21]
 267:../asf/sam/drivers/afec/afec.c **** }
 323              		.loc 1 267 0
 324 0014 8375     		strb	r3, [r0, #22]
 250:../asf/sam/drivers/afec/afec.c **** 	/* Sanity check argument. */
 325              		.loc 1 250 0
 326 0016 70B4     		push	{r4, r5, r6}
 327              		.cfi_def_cfa_offset 12
 328              		.cfi_offset 4, -12
 329              		.cfi_offset 5, -8
 330              		.cfi_offset 6, -4
 255:../asf/sam/drivers/afec/afec.c **** 		cfg->afec_clock = 6000000UL;
 331              		.loc 1 255 0
 332 0018 044E     		ldr	r6, .L43
 257:../asf/sam/drivers/afec/afec.c **** 	#if !(SAMV71 || SAMV70 || SAME70 || SAMS70)
 333              		.loc 1 257 0
 334 001a 4FF48024 		mov	r4, #262144
 256:../asf/sam/drivers/afec/afec.c **** 		cfg->startup_time = AFEC_STARTUP_TIME_4;
 335              		.loc 1 256 0
 336 001e 044D     		ldr	r5, .L43+4
 255:../asf/sam/drivers/afec/afec.c **** 		cfg->afec_clock = 6000000UL;
 337              		.loc 1 255 0
 338 0020 4660     		str	r6, [r0, #4]
 256:../asf/sam/drivers/afec/afec.c **** 		cfg->startup_time = AFEC_STARTUP_TIME_4;
 339              		.loc 1 256 0
 340 0022 8560     		str	r5, [r0, #8]
 257:../asf/sam/drivers/afec/afec.c **** 	#if !(SAMV71 || SAMV70 || SAME70 || SAMS70)
 341              		.loc 1 257 0
 342 0024 C460     		str	r4, [r0, #12]
 268:../asf/sam/drivers/afec/afec.c **** 
 343              		.loc 1 268 0
 344 0026 70BC     		pop	{r4, r5, r6}
ARM GAS  /tmp/ccQNhOlE.s 			page 30


 345              		.cfi_restore 6
 346              		.cfi_restore 5
 347              		.cfi_restore 4
 348              		.cfi_def_cfa_offset 0
 349 0028 7047     		bx	lr
 350              	.L44:
 351 002a 00BF     		.align	2
 352              	.L43:
 353 002c 00A3E111 		.word	300000000
 354 0030 808D5B00 		.word	6000000
 355              		.cfi_endproc
 356              	.LFE191:
 357              		.size	afec_get_config_defaults, .-afec_get_config_defaults
 358              		.section	.text.afec_ch_get_config_defaults,"ax",%progbits
 359              		.align	1
 360              		.p2align 2,,3
 361              		.global	afec_ch_get_config_defaults
 362              		.syntax unified
 363              		.thumb
 364              		.thumb_func
 365              		.fpu fpv5-d16
 366              		.type	afec_ch_get_config_defaults, %function
 367              	afec_ch_get_config_defaults:
 368              	.LFB192:
 282:../asf/sam/drivers/afec/afec.c **** 	/*Sanity check argument. */
 369              		.loc 1 282 0
 370              		.cfi_startproc
 371              		@ args = 0, pretend = 0, frame = 0
 372              		@ frame_needed = 0, uses_anonymous_args = 0
 373              		@ link register save eliminated.
 374              	.LVL24:
 286:../asf/sam/drivers/afec/afec.c ****    	cfg->gain = AFEC_GAINVALUE_1;
 375              		.loc 1 286 0
 376 0000 0022     		movs	r2, #0
 287:../asf/sam/drivers/afec/afec.c **** 
 377              		.loc 1 287 0
 378 0002 0123     		movs	r3, #1
 286:../asf/sam/drivers/afec/afec.c ****    	cfg->gain = AFEC_GAINVALUE_1;
 379              		.loc 1 286 0
 380 0004 0270     		strb	r2, [r0]
 287:../asf/sam/drivers/afec/afec.c **** 
 381              		.loc 1 287 0
 382 0006 4370     		strb	r3, [r0, #1]
 383 0008 7047     		bx	lr
 384              		.cfi_endproc
 385              	.LFE192:
 386              		.size	afec_ch_get_config_defaults, .-afec_ch_get_config_defaults
 387 000a 00BF     		.section	.text.afec_temp_sensor_get_config_defaults,"ax",%progbits
 388              		.align	1
 389              		.p2align 2,,3
 390              		.global	afec_temp_sensor_get_config_defaults
 391              		.syntax unified
 392              		.thumb
 393              		.thumb_func
 394              		.fpu fpv5-d16
 395              		.type	afec_temp_sensor_get_config_defaults, %function
 396              	afec_temp_sensor_get_config_defaults:
ARM GAS  /tmp/ccQNhOlE.s 			page 31


 397              	.LFB193:
 306:../asf/sam/drivers/afec/afec.c **** 	/*Sanity check argument. */
 398              		.loc 1 306 0
 399              		.cfi_startproc
 400              		@ args = 0, pretend = 0, frame = 0
 401              		@ frame_needed = 0, uses_anonymous_args = 0
 402              		@ link register save eliminated.
 403              	.LVL25:
 404 0000 10B4     		push	{r4}
 405              		.cfi_def_cfa_offset 4
 406              		.cfi_offset 4, -4
 311:../asf/sam/drivers/afec/afec.c **** 	cfg->low_threshold= 0xFF;
 407              		.loc 1 311 0
 408 0002 2021     		movs	r1, #32
 310:../asf/sam/drivers/afec/afec.c **** 	cfg->mode= AFEC_TEMP_CMP_MODE_2;
 409              		.loc 1 310 0
 410 0004 0024     		movs	r4, #0
 312:../asf/sam/drivers/afec/afec.c **** 	cfg->high_threshold= 0xFFF;
 411              		.loc 1 312 0
 412 0006 FF22     		movs	r2, #255
 313:../asf/sam/drivers/afec/afec.c **** }
 413              		.loc 1 313 0
 414 0008 40F6FF73 		movw	r3, #4095
 310:../asf/sam/drivers/afec/afec.c **** 	cfg->mode= AFEC_TEMP_CMP_MODE_2;
 415              		.loc 1 310 0
 416 000c 0470     		strb	r4, [r0]
 311:../asf/sam/drivers/afec/afec.c **** 	cfg->low_threshold= 0xFF;
 417              		.loc 1 311 0
 418 000e 4170     		strb	r1, [r0, #1]
 312:../asf/sam/drivers/afec/afec.c **** 	cfg->high_threshold= 0xFFF;
 419              		.loc 1 312 0
 420 0010 4280     		strh	r2, [r0, #2]	@ movhi
 313:../asf/sam/drivers/afec/afec.c **** }
 421              		.loc 1 313 0
 422 0012 8380     		strh	r3, [r0, #4]	@ movhi
 314:../asf/sam/drivers/afec/afec.c **** 
 423              		.loc 1 314 0
 424 0014 5DF8044B 		ldr	r4, [sp], #4
 425              		.cfi_restore 4
 426              		.cfi_def_cfa_offset 0
 427 0018 7047     		bx	lr
 428              		.cfi_endproc
 429              	.LFE193:
 430              		.size	afec_temp_sensor_get_config_defaults, .-afec_temp_sensor_get_config_defaults
 431 001a 00BF     		.section	.text.afec_init,"ax",%progbits
 432              		.align	1
 433              		.p2align 2,,3
 434              		.global	afec_init
 435              		.syntax unified
 436              		.thumb
 437              		.thumb_func
 438              		.fpu fpv5-d16
 439              		.type	afec_init, %function
 440              	afec_init:
 441              	.LFB194:
 326:../asf/sam/drivers/afec/afec.c **** 	Assert(afec);
 442              		.loc 1 326 0
ARM GAS  /tmp/ccQNhOlE.s 			page 32


 443              		.cfi_startproc
 444              		@ args = 0, pretend = 0, frame = 0
 445              		@ frame_needed = 0, uses_anonymous_args = 0
 446              	.LVL26:
 447 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 448              		.cfi_def_cfa_offset 20
 449              		.cfi_offset 4, -20
 450              		.cfi_offset 5, -16
 451              		.cfi_offset 6, -12
 452              		.cfi_offset 7, -8
 453              		.cfi_offset 14, -4
 454              	.LBB74:
 455              	.LBB75:
 668:../asf/sam/drivers/afec/afec.h **** }
 456              		.loc 2 668 0
 457 0002 046B     		ldr	r4, [r0, #48]
 458              	.LVL27:
 459              	.LBE75:
 460              	.LBE74:
 330:../asf/sam/drivers/afec/afec.c **** 		return STATUS_ERR_BUSY;
 461              		.loc 1 330 0
 462 0004 14F08074 		ands	r4, r4, #16777216
 463 0008 01D0     		beq	.L64
 331:../asf/sam/drivers/afec/afec.c **** 	}
 464              		.loc 1 331 0
 465 000a 1920     		movs	r0, #25
 466              	.LVL28:
 351:../asf/sam/drivers/afec/afec.c **** 
 467              		.loc 1 351 0
 468 000c F0BD     		pop	{r4, r5, r6, r7, pc}
 469              	.LVL29:
 470              	.L64:
 335:../asf/sam/drivers/afec/afec.c **** 	afec_set_config(afec, config);
 471              		.loc 1 335 0
 472 000e 0125     		movs	r5, #1
 473              	.LBB76:
 474              	.LBB77:
 160:../asf/sam/drivers/afec/afec.c **** 			AFEC_MR_ONE |
 475              		.loc 1 160 0
 476 0010 4A68     		ldr	r2, [r1, #4]
 477 0012 D1F808E0 		ldr	lr, [r1, #8]
 158:../asf/sam/drivers/afec/afec.c **** 		#if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 478              		.loc 1 158 0
 479 0016 CE68     		ldr	r6, [r1, #12]
 480              	.LBE77:
 481              	.LBE76:
 335:../asf/sam/drivers/afec/afec.c **** 	afec_set_config(afec, config);
 482              		.loc 1 335 0
 483 0018 0560     		str	r5, [r0]
 484              	.LVL30:
 485              	.LBB81:
 486              	.LBB78:
 167:../asf/sam/drivers/afec/afec.c **** 			AFEC_MR_TRANSFER(config->transfer) |
 487              		.loc 1 167 0
 488 001a 0F7C     		ldrb	r7, [r1, #16]	@ zero_extendqisi2
 158:../asf/sam/drivers/afec/afec.c **** 		#if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 489              		.loc 1 158 0
ARM GAS  /tmp/ccQNhOlE.s 			page 33


 490 001c 46F40006 		orr	r6, r6, #8388608
 491 0020 CD7C     		ldrb	r5, [r1, #19]	@ zero_extendqisi2
 167:../asf/sam/drivers/afec/afec.c **** 			AFEC_MR_TRANSFER(config->transfer) |
 492              		.loc 1 167 0
 493 0022 3B06     		lsls	r3, r7, #24
 158:../asf/sam/drivers/afec/afec.c **** 		#if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 494              		.loc 1 158 0
 495 0024 002D     		cmp	r5, #0
 168:../asf/sam/drivers/afec/afec.c **** 			(config->startup_time);
 496              		.loc 1 168 0
 497 0026 4D7C     		ldrb	r5, [r1, #17]	@ zero_extendqisi2
 167:../asf/sam/drivers/afec/afec.c **** 			AFEC_MR_TRANSFER(config->transfer) |
 498              		.loc 1 167 0
 499 0028 03F07067 		and	r7, r3, #251658240
 158:../asf/sam/drivers/afec/afec.c **** 		#if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 500              		.loc 1 158 0
 501 002c 18BF     		it	ne
 502 002e 4FF00044 		movne	r4, #-2147483648
 168:../asf/sam/drivers/afec/afec.c **** 			(config->startup_time);
 503              		.loc 1 168 0
 504 0032 2D07     		lsls	r5, r5, #28
 160:../asf/sam/drivers/afec/afec.c **** 			AFEC_MR_ONE |
 505              		.loc 1 160 0
 506 0034 B2FBFEF3 		udiv	r3, r2, lr
 507 0038 013B     		subs	r3, r3, #1
 173:../asf/sam/drivers/afec/afec.c **** 			(config->resolution) |
 508              		.loc 1 173 0
 509 003a 0A7D     		ldrb	r2, [r1, #20]	@ zero_extendqisi2
 175:../asf/sam/drivers/afec/afec.c ****   #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 510              		.loc 1 175 0
 511 003c 91F815E0 		ldrb	lr, [r1, #21]	@ zero_extendqisi2
 168:../asf/sam/drivers/afec/afec.c **** 			(config->startup_time);
 512              		.loc 1 168 0
 513 0040 05F04055 		and	r5, r5, #805306368
 160:../asf/sam/drivers/afec/afec.c **** 			AFEC_MR_ONE |
 514              		.loc 1 160 0
 515 0044 1B02     		lsls	r3, r3, #8
 173:../asf/sam/drivers/afec/afec.c **** 			(config->resolution) |
 516              		.loc 1 173 0
 517 0046 002A     		cmp	r2, #0
 160:../asf/sam/drivers/afec/afec.c **** 			AFEC_MR_ONE |
 518              		.loc 1 160 0
 519 0048 9BB2     		uxth	r3, r3
 173:../asf/sam/drivers/afec/afec.c **** 			(config->resolution) |
 520              		.loc 1 173 0
 521 004a 14BF     		ite	ne
 522 004c 4FF08072 		movne	r2, #16777216
 523 0050 0022     		moveq	r2, #0
 175:../asf/sam/drivers/afec/afec.c ****   #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 524              		.loc 1 175 0
 525 0052 BEF1000F 		cmp	lr, #0
 158:../asf/sam/drivers/afec/afec.c **** 		#if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 526              		.loc 1 158 0
 527 0056 43EA0603 		orr	r3, r3, r6
 173:../asf/sam/drivers/afec/afec.c **** 			(config->resolution) |
 528              		.loc 1 173 0
 529 005a 0E68     		ldr	r6, [r1]
ARM GAS  /tmp/ccQNhOlE.s 			page 34


 158:../asf/sam/drivers/afec/afec.c **** 		#if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 530              		.loc 1 158 0
 531 005c 43EA0703 		orr	r3, r3, r7
 173:../asf/sam/drivers/afec/afec.c **** 			(config->resolution) |
 532              		.loc 1 173 0
 533 0060 42EA0602 		orr	r2, r2, r6
 175:../asf/sam/drivers/afec/afec.c ****   #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 534              		.loc 1 175 0
 535 0064 14BF     		ite	ne
 536 0066 4FF00077 		movne	r7, #33554432
 537 006a 0027     		moveq	r7, #0
 158:../asf/sam/drivers/afec/afec.c **** 		#if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 538              		.loc 1 158 0
 539 006c 2B43     		orrs	r3, r3, r5
 540              	.LBE78:
 541              	.LBE81:
 339:../asf/sam/drivers/afec/afec.c **** 		for (i = 0; i < _AFEC_NUM_OF_INTERRUPT_SOURCE; i++){
 542              		.loc 1 339 0
 543 006e 134E     		ldr	r6, .L67
 544              	.LBB82:
 545              	.LBB79:
 174:../asf/sam/drivers/afec/afec.c **** 			(config->stm ? AFEC_EMR_STM : 0);
 546              		.loc 1 174 0
 547 0070 3A43     		orrs	r2, r2, r7
 158:../asf/sam/drivers/afec/afec.c **** 		#if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 548              		.loc 1 158 0
 549 0072 2343     		orrs	r3, r3, r4
 550              	.LVL31:
 551              	.LBE79:
 552              	.LBE82:
 339:../asf/sam/drivers/afec/afec.c **** 		for (i = 0; i < _AFEC_NUM_OF_INTERRUPT_SOURCE; i++){
 553              		.loc 1 339 0
 554 0074 B042     		cmp	r0, r6
 555              	.LBB83:
 556              	.LBB80:
 171:../asf/sam/drivers/afec/afec.c **** 
 557              		.loc 1 171 0
 558 0076 4360     		str	r3, [r0, #4]
 173:../asf/sam/drivers/afec/afec.c **** 			(config->resolution) |
 559              		.loc 1 173 0
 560 0078 8260     		str	r2, [r0, #8]
 177:../asf/sam/drivers/afec/afec.c ****   #else
 561              		.loc 1 177 0
 562 007a 8B7D     		ldrb	r3, [r1, #22]	@ zero_extendqisi2
 563              	.LVL32:
 564 007c 4FEA0323 		lsl	r3, r3, #8
 565 0080 03F44073 		and	r3, r3, #768
 566 0084 43F00C03 		orr	r3, r3, #12
 567 0088 C0F89430 		str	r3, [r0, #148]
 568              	.LVL33:
 569              	.LBE80:
 570              	.LBE83:
 339:../asf/sam/drivers/afec/afec.c **** 		for (i = 0; i < _AFEC_NUM_OF_INTERRUPT_SOURCE; i++){
 571              		.loc 1 339 0
 572 008c 0DD0     		beq	.L65
 344:../asf/sam/drivers/afec/afec.c **** 		for (i = 0; i < _AFEC_NUM_OF_INTERRUPT_SOURCE; i++){
 573              		.loc 1 344 0
ARM GAS  /tmp/ccQNhOlE.s 			page 35


 574 008e 0C4B     		ldr	r3, .L67+4
 575 0090 9842     		cmp	r0, r3
 576 0092 01D0     		beq	.L66
 577              	.LVL34:
 578              	.L55:
 350:../asf/sam/drivers/afec/afec.c **** }
 579              		.loc 1 350 0
 580 0094 0020     		movs	r0, #0
 581              	.LVL35:
 582 0096 F0BD     		pop	{r4, r5, r6, r7, pc}
 583              	.LVL36:
 584              	.L66:
 585 0098 0A4B     		ldr	r3, .L67+8
 346:../asf/sam/drivers/afec/afec.c **** 		}
 586              		.loc 1 346 0
 587 009a 0021     		movs	r1, #0
 588              	.LVL37:
 589 009c 03F14002 		add	r2, r3, #64
 590              	.L56:
 346:../asf/sam/drivers/afec/afec.c **** 		}
 591              		.loc 1 346 0 is_stmt 0 discriminator 3
 592 00a0 43F8041B 		str	r1, [r3], #4
 593              	.LVL38:
 345:../asf/sam/drivers/afec/afec.c **** 			afec_callback_pointer[1][i] = 0;
 594              		.loc 1 345 0 is_stmt 1 discriminator 3
 595 00a4 9342     		cmp	r3, r2
 596 00a6 FBD1     		bne	.L56
 597 00a8 F4E7     		b	.L55
 598              	.LVL39:
 599              	.L65:
 600 00aa 074B     		ldr	r3, .L67+12
 341:../asf/sam/drivers/afec/afec.c **** 		}
 601              		.loc 1 341 0
 602 00ac 0021     		movs	r1, #0
 603              	.LVL40:
 604 00ae 03F14002 		add	r2, r3, #64
 605              	.L54:
 341:../asf/sam/drivers/afec/afec.c **** 		}
 606              		.loc 1 341 0 is_stmt 0 discriminator 3
 607 00b2 43F8041F 		str	r1, [r3, #4]!
 340:../asf/sam/drivers/afec/afec.c **** 			afec_callback_pointer[0][i] = 0;
 608              		.loc 1 340 0 is_stmt 1 discriminator 3
 609 00b6 9A42     		cmp	r2, r3
 610 00b8 FBD1     		bne	.L54
 611 00ba EBE7     		b	.L55
 612              	.L68:
 613              		.align	2
 614              	.L67:
 615 00bc 00C00340 		.word	1073987584
 616 00c0 00400640 		.word	1074151424
 617 00c4 40000000 		.word	afec_callback_pointer+64
 618 00c8 FCFFFFFF 		.word	afec_callback_pointer-4
 619              		.cfi_endproc
 620              	.LFE194:
 621              		.size	afec_init, .-afec_init
 622              		.section	.text.afec_set_comparison_mode,"ax",%progbits
 623              		.align	1
ARM GAS  /tmp/ccQNhOlE.s 			page 36


 624              		.p2align 2,,3
 625              		.global	afec_set_comparison_mode
 626              		.syntax unified
 627              		.thumb
 628              		.thumb_func
 629              		.fpu fpv5-d16
 630              		.type	afec_set_comparison_mode, %function
 631              	afec_set_comparison_mode:
 632              	.LFB195:
 364:../asf/sam/drivers/afec/afec.c **** 	if (channel != AFEC_CHANNEL_ALL) {
 633              		.loc 1 364 0
 634              		.cfi_startproc
 635              		@ args = 0, pretend = 0, frame = 0
 636              		@ frame_needed = 0, uses_anonymous_args = 0
 637              		@ link register save eliminated.
 638              	.LVL41:
 639 0000 70B4     		push	{r4, r5, r6}
 640              		.cfi_def_cfa_offset 12
 641              		.cfi_offset 4, -12
 642              		.cfi_offset 5, -8
 643              		.cfi_offset 6, -4
 378:../asf/sam/drivers/afec/afec.c **** 			AFEC_EMR_CMPFILTER(cmp_filter);
 644              		.loc 1 378 0
 645 0002 40F6FF75 		movw	r5, #4095
 373:../asf/sam/drivers/afec/afec.c **** 			AFEC_EMR_CMPMODE_Msk |
 646              		.loc 1 373 0
 647 0006 0A4C     		ldr	r4, .L73
 371:../asf/sam/drivers/afec/afec.c **** 
 648              		.loc 1 371 0
 649 0008 8668     		ldr	r6, [r0, #8]
 650              	.LVL42:
 378:../asf/sam/drivers/afec/afec.c **** 			AFEC_EMR_CMPFILTER(cmp_filter);
 651              		.loc 1 378 0
 652 000a AA42     		cmp	r2, r5
 373:../asf/sam/drivers/afec/afec.c **** 			AFEC_EMR_CMPMODE_Msk |
 653              		.loc 1 373 0
 654 000c 04EA0604 		and	r4, r4, r6
 655              	.LVL43:
 378:../asf/sam/drivers/afec/afec.c **** 			AFEC_EMR_CMPFILTER(cmp_filter);
 656              		.loc 1 378 0
 657 0010 0AD0     		beq	.L71
 378:../asf/sam/drivers/afec/afec.c **** 			AFEC_EMR_CMPFILTER(cmp_filter);
 658              		.loc 1 378 0 is_stmt 0 discriminator 1
 659 0012 D200     		lsls	r2, r2, #3
 660              	.LVL44:
 661 0014 D2B2     		uxtb	r2, r2
 662              	.L70:
 379:../asf/sam/drivers/afec/afec.c **** 
 663              		.loc 1 379 0 is_stmt 1
 664 0016 1B03     		lsls	r3, r3, #12
 665              	.LVL45:
 666 0018 03F44053 		and	r3, r3, #12288
 667 001c 2343     		orrs	r3, r3, r4
 668 001e 1943     		orrs	r1, r1, r3
 669              	.LVL46:
 376:../asf/sam/drivers/afec/afec.c **** 			((channel == AFEC_CHANNEL_ALL) ? AFEC_EMR_CMPALL
 670              		.loc 1 376 0
ARM GAS  /tmp/ccQNhOlE.s 			page 37


 671 0020 1143     		orrs	r1, r1, r2
 672              	.LVL47:
 382:../asf/sam/drivers/afec/afec.c **** 
 673              		.loc 1 382 0
 674 0022 70BC     		pop	{r4, r5, r6}
 675              		.cfi_remember_state
 676              		.cfi_restore 6
 677              		.cfi_restore 5
 678              		.cfi_restore 4
 679              		.cfi_def_cfa_offset 0
 381:../asf/sam/drivers/afec/afec.c **** }
 680              		.loc 1 381 0
 681 0024 8160     		str	r1, [r0, #8]
 382:../asf/sam/drivers/afec/afec.c **** 
 682              		.loc 1 382 0
 683 0026 7047     		bx	lr
 684              	.LVL48:
 685              	.L71:
 686              		.cfi_restore_state
 378:../asf/sam/drivers/afec/afec.c **** 			AFEC_EMR_CMPFILTER(cmp_filter);
 687              		.loc 1 378 0
 688 0028 4FF40072 		mov	r2, #512
 689              	.LVL49:
 690 002c F3E7     		b	.L70
 691              	.L74:
 692 002e 00BF     		.align	2
 693              	.L73:
 694 0030 04CFFFFF 		.word	-12540
 695              		.cfi_endproc
 696              	.LFE195:
 697              		.size	afec_set_comparison_mode, .-afec_set_comparison_mode
 698              		.section	.text.afec_set_power_mode,"ax",%progbits
 699              		.align	1
 700              		.p2align 2,,3
 701              		.global	afec_set_power_mode
 702              		.syntax unified
 703              		.thumb
 704              		.thumb_func
 705              		.fpu fpv5-d16
 706              		.type	afec_set_power_mode, %function
 707              	afec_set_power_mode:
 708              	.LFB196:
 392:../asf/sam/drivers/afec/afec.c **** 	uint32_t reg;
 709              		.loc 1 392 0
 710              		.cfi_startproc
 711              		@ args = 0, pretend = 0, frame = 0
 712              		@ frame_needed = 0, uses_anonymous_args = 0
 713              		@ link register save eliminated.
 714              	.LVL50:
 397:../asf/sam/drivers/afec/afec.c **** 		case AFEC_POWER_MODE_0:
 715              		.loc 1 397 0
 716 0000 0129     		cmp	r1, #1
 395:../asf/sam/drivers/afec/afec.c **** 
 717              		.loc 1 395 0
 718 0002 4368     		ldr	r3, [r0, #4]
 719              	.LVL51:
 397:../asf/sam/drivers/afec/afec.c **** 		case AFEC_POWER_MODE_0:
ARM GAS  /tmp/ccQNhOlE.s 			page 38


 720              		.loc 1 397 0
 721 0004 0CD0     		beq	.L77
 722 0006 07D3     		bcc	.L78
 723 0008 0229     		cmp	r1, #2
 724 000a 03D1     		bne	.L76
 725              	.LVL52:
 726 000c 23F04003 		bic	r3, r3, #64
 727              	.LVL53:
 406:../asf/sam/drivers/afec/afec.c **** 			break;
 728              		.loc 1 406 0
 729 0010 43F02003 		orr	r3, r3, #32
 730              	.LVL54:
 731              	.L76:
 410:../asf/sam/drivers/afec/afec.c **** }
 732              		.loc 1 410 0
 733 0014 4360     		str	r3, [r0, #4]
 734 0016 7047     		bx	lr
 735              	.L78:
 399:../asf/sam/drivers/afec/afec.c **** 			break;
 736              		.loc 1 399 0
 737 0018 23F06003 		bic	r3, r3, #96
 738              	.LVL55:
 410:../asf/sam/drivers/afec/afec.c **** }
 739              		.loc 1 410 0
 740 001c 4360     		str	r3, [r0, #4]
 741 001e 7047     		bx	lr
 742              	.L77:
 402:../asf/sam/drivers/afec/afec.c **** 			break;
 743              		.loc 1 402 0
 744 0020 43F04003 		orr	r3, r3, #64
 745              	.LVL56:
 410:../asf/sam/drivers/afec/afec.c **** }
 746              		.loc 1 410 0
 747 0024 4360     		str	r3, [r0, #4]
 748 0026 7047     		bx	lr
 749              		.cfi_endproc
 750              	.LFE196:
 751              		.size	afec_set_power_mode, .-afec_set_power_mode
 752              		.section	.text.afec_enable_interrupt,"ax",%progbits
 753              		.align	1
 754              		.p2align 2,,3
 755              		.global	afec_enable_interrupt
 756              		.syntax unified
 757              		.thumb
 758              		.thumb_func
 759              		.fpu fpv5-d16
 760              		.type	afec_enable_interrupt, %function
 761              	afec_enable_interrupt:
 762              	.LFB198:
 446:../asf/sam/drivers/afec/afec.c **** 	if (interrupt_source == AFEC_INTERRUPT_ALL) {
 763              		.loc 1 446 0
 764              		.cfi_startproc
 765              		@ args = 0, pretend = 0, frame = 0
 766              		@ frame_needed = 0, uses_anonymous_args = 0
 767              		@ link register save eliminated.
 768              	.LVL57:
 447:../asf/sam/drivers/afec/afec.c **** 		afec->AFEC_IER = AFEC_INTERRUPT_ALL;
ARM GAS  /tmp/ccQNhOlE.s 			page 39


 769              		.loc 1 447 0
 770 0000 0B4B     		ldr	r3, .L90
 771 0002 9942     		cmp	r1, r3
 772 0004 07D0     		beq	.L87
 452:../asf/sam/drivers/afec/afec.c **** 	  #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 773              		.loc 1 452 0
 774 0006 0B29     		cmp	r1, #11
 775 0008 07D9     		bls	.L88
 776              	.LVL58:
 777              	.LBB86:
 778              	.LBB87:
 463:../asf/sam/drivers/afec/afec.c **** 		afec->AFEC_IER = 1 << (interrupt_source + AFEC_INTERRUPT_GAP1);
 779              		.loc 1 463 0
 780 000a 0E29     		cmp	r1, #14
 781 000c 0AD9     		bls	.L89
 467:../asf/sam/drivers/afec/afec.c **** 	}
 782              		.loc 1 467 0
 783 000e 0F31     		adds	r1, r1, #15
 784              	.LVL59:
 785              	.L86:
 466:../asf/sam/drivers/afec/afec.c **** 				+ AFEC_INTERRUPT_GAP2);
 786              		.loc 1 466 0
 787 0010 0123     		movs	r3, #1
 788 0012 03FA01F1 		lsl	r1, r3, r1
 789              	.L87:
 790 0016 4162     		str	r1, [r0, #36]
 791 0018 7047     		bx	lr
 792              	.LVL60:
 793              	.L88:
 794              	.LBE87:
 795              	.LBE86:
 454:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_IER = 1 << AFEC_TEMP_INT_SOURCE_NUM;
 796              		.loc 1 454 0
 797 001a F9D1     		bne	.L86
 455:../asf/sam/drivers/afec/afec.c **** 	  #else
 798              		.loc 1 455 0
 799 001c 4FF40063 		mov	r3, #2048
 800 0020 4362     		str	r3, [r0, #36]
 801 0022 7047     		bx	lr
 802              	.LVL61:
 803              	.L89:
 804              	.LBB89:
 805              	.LBB88:
 464:../asf/sam/drivers/afec/afec.c **** 	} else {
 806              		.loc 1 464 0
 807 0024 0C31     		adds	r1, r1, #12
 808              	.LVL62:
 809 0026 0123     		movs	r3, #1
 810 0028 03FA01F1 		lsl	r1, r3, r1
 811              	.LVL63:
 812 002c 4162     		str	r1, [r0, #36]
 813 002e 7047     		bx	lr
 814              	.L91:
 815              		.align	2
 816              	.L90:
 817 0030 FF0F0047 		.word	1191186431
 818              	.LBE88:
ARM GAS  /tmp/ccQNhOlE.s 			page 40


 819              	.LBE89:
 820              		.cfi_endproc
 821              	.LFE198:
 822              		.size	afec_enable_interrupt, .-afec_enable_interrupt
 823              		.section	.text.afec_set_callback,"ax",%progbits
 824              		.align	1
 825              		.p2align 2,,3
 826              		.global	afec_set_callback
 827              		.syntax unified
 828              		.thumb
 829              		.thumb_func
 830              		.fpu fpv5-d16
 831              		.type	afec_set_callback, %function
 832              	afec_set_callback:
 833              	.LFB197:
 423:../asf/sam/drivers/afec/afec.c **** 	Assert(afec);
 834              		.loc 1 423 0
 835              		.cfi_startproc
 836              		@ args = 0, pretend = 0, frame = 0
 837              		@ frame_needed = 0, uses_anonymous_args = 0
 838              		@ link register save eliminated.
 839              	.LVL64:
 840 0000 F0B4     		push	{r4, r5, r6, r7}
 841              		.cfi_def_cfa_offset 16
 842              		.cfi_offset 4, -16
 843              		.cfi_offset 5, -12
 844              		.cfi_offset 6, -8
 845              		.cfi_offset 7, -4
 846              	.LBB90:
 847              	.LBB91:
 112:../asf/sam/drivers/afec/afec.c **** 		return 1;
 848              		.loc 1 112 0
 849 0002 124C     		ldr	r4, .L100
 850 0004 A042     		cmp	r0, r4
 851 0006 0FD0     		beq	.L99
 852              	.LVL65:
 853              	.LBE91:
 854              	.LBE90:
 855              	.LBB92:
 856              	.LBB93:
 857              		.file 3 "/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h"
   1:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /**************************************************************************//**
   2:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @file     core_cm7.h
   3:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @brief    CMSIS Cortex-M7 Core Peripheral Access Layer Header File
   4:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @version  V4.00
   5:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @date     01. September 2014
   6:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *
   7:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  * @note
   8:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *
   9:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
  10:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Copyright (c) 2009 - 2014 ARM LIMITED
  11:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  12:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    All rights reserved.
  13:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    Redistribution and use in source and binary forms, with or without
  14:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    modification, are permitted provided that the following conditions are met:
  15:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    - Redistributions of source code must retain the above copyright
  16:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      notice, this list of conditions and the following disclaimer.
ARM GAS  /tmp/ccQNhOlE.s 			page 41


  17:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    - Redistributions in binary form must reproduce the above copyright
  18:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      notice, this list of conditions and the following disclaimer in the
  19:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      documentation and/or other materials provided with the distribution.
  20:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    - Neither the name of ARM nor the names of its contributors may be used
  21:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      to endorse or promote products derived from this software without
  22:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      specific prior written permission.
  23:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    *
  24:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  25:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  26:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  27:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
  28:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  29:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  30:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  31:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  32:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  33:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  34:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    POSSIBILITY OF SUCH DAMAGE.
  35:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    ---------------------------------------------------------------------------*/
  36:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  37:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  38:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if defined ( __ICCARM__ )
  39:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  #pragma system_include  /* treat file as system include file for MISRA check */
  40:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
  41:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  42:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifndef __CORE_CM7_H_GENERIC
  43:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CORE_CM7_H_GENERIC
  44:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  45:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
  46:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  extern "C" {
  47:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
  48:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  49:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \page CMSIS_MISRA_Exceptions  MISRA-C:2004 Compliance Exceptions
  50:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   CMSIS violates the following MISRA-C:2004 rules:
  51:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  52:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    \li Required Rule 8.5, object/function definition in header file.<br>
  53:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      Function definitions in header files are used to allow 'inlining'.
  54:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  55:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    \li Required Rule 18.4, declaration of union type or object of union type: '{...}'.<br>
  56:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      Unions are used for effective representation of core registers.
  57:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  58:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****    \li Advisory Rule 19.7, Function-like macro defined.<br>
  59:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****      Function-like macros are used to allow more efficient code.
  60:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
  61:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  62:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  63:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*******************************************************************************
  64:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *                 CMSIS definitions
  65:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
  66:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup Cortex_M7
  67:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
  68:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
  69:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  70:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*  CMSIS CM7 definitions */
  71:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CM7_CMSIS_VERSION_MAIN  (0x04)                                   /*!< [31:16] CMSIS HAL m
  72:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CM7_CMSIS_VERSION_SUB   (0x00)                                   /*!< [15:0]  CMSIS HAL s
  73:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CM7_CMSIS_VERSION       ((__CM7_CMSIS_VERSION_MAIN << 16) | \
ARM GAS  /tmp/ccQNhOlE.s 			page 42


  74:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                                     __CM7_CMSIS_VERSION_SUB          )     /*!< CMSIS HAL version n
  75:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  76:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CORTEX_M                (0x07)                                   /*!< Cortex-M Core      
  77:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  78:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  79:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if   defined ( __CC_ARM )
  80:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for ARM Comp
  81:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         __inline                                   /*!< inline keyword for ARM C
  82:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static __inline
  83:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  84:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __GNUC__ )
  85:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for GNU Comp
  86:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                     /*!< inline keyword for GNU C
  87:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
  88:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  89:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __ICCARM__ )
  90:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for IAR Comp
  91:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                     /*!< inline keyword for IAR C
  92:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
  93:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  94:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TMS470__ )
  95:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for TI CCS C
  96:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
  97:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
  98:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TASKING__ )
  99:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for TASKING 
 100:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                     /*!< inline keyword for TASKI
 101:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
 102:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 103:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __CSMC__ )
 104:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __packed
 105:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __ASM            _asm                                      /*!< asm keyword for COSMIC Co
 106:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                    /*use -pc99 on compile line !<
 107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
 108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 110:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 111:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** __FPU_USED indicates whether an FPU is used or not.
 112:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     For this, __FPU_PRESENT has to be checked prior to making use of FPU specific registers and fun
 113:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
 114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if defined ( __CC_ARM )
 115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __TARGET_FPU_VFP
 116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __GNUC__ )
 127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined (__VFP_FP__) && !defined(__SOFTFP__)
 128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
ARM GAS  /tmp/ccQNhOlE.s 			page 43


 131:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 132:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 133:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 134:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 135:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 136:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 137:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 138:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __ICCARM__ )
 139:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __ARMVFP__
 140:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 141:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 142:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 143:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 144:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 145:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 146:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 147:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 148:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 149:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 150:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TMS470__ )
 151:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __TI_VFP_SUPPORT__
 152:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 153:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 154:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 155:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 156:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 157:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 158:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 159:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 160:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 161:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 162:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __TASKING__ )
 163:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if defined __FPU_VFP__
 164:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 165:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 166:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 167:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 168:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 169:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 170:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 171:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 172:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #elif defined ( __CSMC__ )		/* Cosmic */
 175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #if ( __CSMC__ & 0x400)		// FPU present for parser
 176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1
 178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #else
 179:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 180:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0
 181:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #endif
 182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #else
 183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0
 184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 185:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 186:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 187:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <stdint.h>                      /* standard types definitions                      */
ARM GAS  /tmp/ccQNhOlE.s 			page 44


 188:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <core_cmInstr.h>                /* Core Instruction Access                         */
 189:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <core_cmFunc.h>                 /* Core Function Access                            */
 190:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #include <core_cmSimd.h>                 /* Compiler specific SIMD Intrinsics               */
 191:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 192:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
 193:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 194:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 195:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 196:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif /* __CORE_CM7_H_GENERIC */
 197:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 198:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifndef __CMSIS_GENERIC
 199:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 200:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifndef __CORE_CM7_H_DEPENDANT
 201:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define __CORE_CM7_H_DEPENDANT
 202:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 203:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
 204:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  extern "C" {
 205:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 206:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 207:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* check device defines and use defaults */
 208:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if defined __CHECK_DEVICE_DEFINES
 209:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __CM7_REV
 210:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __CM7_REV               0x0000
 211:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__CM7_REV not defined in device header file; using default!"
 212:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 213:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 214:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __FPU_PRESENT
 215:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __FPU_PRESENT             0
 216:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__FPU_PRESENT not defined in device header file; using default!"
 217:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 218:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 219:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __MPU_PRESENT
 220:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __MPU_PRESENT             0
 221:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__MPU_PRESENT not defined in device header file; using default!"
 222:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 223:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 224:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __ICACHE_PRESENT
 225:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __ICACHE_PRESENT          0
 226:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__ICACHE_PRESENT not defined in device header file; using default!"
 227:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 228:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 229:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __DCACHE_PRESENT
 230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __DCACHE_PRESENT          0
 231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__DCACHE_PRESENT not defined in device header file; using default!"
 232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __DTCM_PRESENT
 235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __DTCM_PRESENT            0
 236:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__DTCM_PRESENT        not defined in device header file; using default!"
 237:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 238:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __NVIC_PRIO_BITS
 240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __NVIC_PRIO_BITS          3
 241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__NVIC_PRIO_BITS not defined in device header file; using default!"
 242:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 243:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 244:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #ifndef __Vendor_SysTickConfig
ARM GAS  /tmp/ccQNhOlE.s 			page 45


 245:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #define __Vendor_SysTickConfig    0
 246:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     #warning "__Vendor_SysTickConfig not defined in device header file; using default!"
 247:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #endif
 248:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 249:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 250:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* IO definitions (access restrictions to peripheral registers) */
 251:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /**
 252:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_glob_defs CMSIS Global Defines
 253:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 254:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     <strong>IO Type Qualifiers</strong> are used
 255:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \li to specify the access to peripheral variables.
 256:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \li for automatic generation of peripheral register debug information.
 257:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
 258:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
 259:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define   __I     volatile             /*!< Defines 'read only' permissions                 */
 260:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #else
 261:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define   __I     volatile const       /*!< Defines 'read only' permissions                 */
 262:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 263:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define     __O     volatile             /*!< Defines 'write only' permissions                */
 264:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define     __IO    volatile             /*!< Defines 'read / write' permissions              */
 265:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 266:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group Cortex_M7 */
 267:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 268:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 269:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 270:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*******************************************************************************
 271:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *                 Register Abstraction
 272:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   Core Register contain:
 273:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Register
 274:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core NVIC Register
 275:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core SCB Register
 276:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core SysTick Register
 277:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Debug Register
 278:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core MPU Register
 279:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core FPU Register
 280:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
 281:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \defgroup CMSIS_core_register Defines and Type Definitions
 282:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief Type definitions and defines for Cortex-M processor based devices.
 283:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
 284:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 285:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup    CMSIS_core_register
 286:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup   CMSIS_CORE  Status and Control Registers
 287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief  Core Register type definitions.
 288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Application Program Status Register (APSR).
 292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 293:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 294:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 295:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__CORTEX_M != 0x07)
 298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:27;              /*!< bit:  0..26  Reserved                           */
 299:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #else
 300:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:16;              /*!< bit:  0..15  Reserved                           */
 301:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t GE:4;                       /*!< bit: 16..19  Greater than or Equal flags        */
ARM GAS  /tmp/ccQNhOlE.s 			page 46


 302:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved1:7;               /*!< bit: 20..26  Reserved                           */
 303:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 304:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag          */
 305:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag       */
 306:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t C:1;                        /*!< bit:     29  Carry condition code flag          */
 307:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag           */
 308:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t N:1;                        /*!< bit:     31  Negative condition code flag       */
 309:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 310:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 311:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } APSR_Type;
 312:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 313:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 314:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Interrupt Program Status Register (IPSR).
 315:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 316:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 317:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 318:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 320:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number                   */
 321:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:23;              /*!< bit:  9..31  Reserved                           */
 322:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 323:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 324:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } IPSR_Type;
 325:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 326:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 327:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Special-Purpose Program Status Registers (xPSR).
 328:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 329:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 331:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 332:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 333:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number                   */
 334:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__CORTEX_M != 0x07)
 335:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:15;              /*!< bit:  9..23  Reserved                           */
 336:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #else
 337:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:7;               /*!< bit:  9..15  Reserved                           */
 338:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t GE:4;                       /*!< bit: 16..19  Greater than or Equal flags        */
 339:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved1:4;               /*!< bit: 20..23  Reserved                           */
 340:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
 341:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t T:1;                        /*!< bit:     24  Thumb bit        (read 0)          */
 342:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t IT:2;                       /*!< bit: 25..26  saved IT state   (read 0)          */
 343:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag          */
 344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag       */
 345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t C:1;                        /*!< bit:     29  Carry condition code flag          */
 346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag           */
 347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t N:1;                        /*!< bit:     31  Negative condition code flag       */
 348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 350:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } xPSR_Type;
 351:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 352:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 353:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Union type to access the Control Registers (CONTROL).
 354:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 355:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef union
 356:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 357:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   struct
 358:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
ARM GAS  /tmp/ccQNhOlE.s 			page 47


 359:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t nPRIV:1;                    /*!< bit:      0  Execution privilege in Thread mode */
 360:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t SPSEL:1;                    /*!< bit:      1  Stack to be used                   */
 361:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t FPCA:1;                     /*!< bit:      2  FP extension active flag           */
 362:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:29;              /*!< bit:  3..31  Reserved                           */
 363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access                  */
 364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access                  */
 365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } CONTROL_Type;
 366:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 367:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_CORE */
 368:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 369:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 370:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup    CMSIS_core_register
 371:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup   CMSIS_NVIC  Nested Vectored Interrupt Controller (NVIC)
 372:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the NVIC Registers
 373:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 374:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 375:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 376:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Nested Vectored Interrupt Controller (NVIC).
 377:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 378:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 379:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 380:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ISER[8];                 /*!< Offset: 0x000 (R/W)  Interrupt Set Enable Register   
 381:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[24];
 382:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ICER[8];                 /*!< Offset: 0x080 (R/W)  Interrupt Clear Enable Register 
 383:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RSERVED1[24];
 384:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ISPR[8];                 /*!< Offset: 0x100 (R/W)  Interrupt Set Pending Register  
 385:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[24];
 386:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ICPR[8];                 /*!< Offset: 0x180 (R/W)  Interrupt Clear Pending Register
 387:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[24];
 388:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t IABR[8];                 /*!< Offset: 0x200 (R/W)  Interrupt Active bit Register   
 389:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[56];
 390:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint8_t  IP[240];                 /*!< Offset: 0x300 (R/W)  Interrupt Priority Register (8Bi
 391:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[644];
 392:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t STIR;                    /*!< Offset: 0xE00 ( /W)  Software Trigger Interrupt Regis
 393:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }  NVIC_Type;
 394:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 395:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Software Triggered Interrupt Register Definitions */
 396:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC_STIR_INTID_Pos                 0                                          /*!< STIR: I
 397:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC_STIR_INTID_Msk                (0x1FFUL << NVIC_STIR_INTID_Pos)            /*!< STIR: I
 398:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 399:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_NVIC */
 400:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_SCB     System Control Block (SCB)
 404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the System Control Block Registers
 405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 407:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 408:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the System Control Block (SCB).
 409:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 410:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 411:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CPUID;                   /*!< Offset: 0x000 (R/ )  CPUID Base Register             
 413:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ICSR;                    /*!< Offset: 0x004 (R/W)  Interrupt Control and State Regi
 414:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t VTOR;                    /*!< Offset: 0x008 (R/W)  Vector Table Offset Register    
 415:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AIRCR;                   /*!< Offset: 0x00C (R/W)  Application Interrupt and Reset 
ARM GAS  /tmp/ccQNhOlE.s 			page 48


 416:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SCR;                     /*!< Offset: 0x010 (R/W)  System Control Register         
 417:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CCR;                     /*!< Offset: 0x014 (R/W)  Configuration Control Register  
 418:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint8_t  SHPR[12];                /*!< Offset: 0x018 (R/W)  System Handlers Priority Registe
 419:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SHCSR;                   /*!< Offset: 0x024 (R/W)  System Handler Control and State
 420:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CFSR;                    /*!< Offset: 0x028 (R/W)  Configurable Fault Status Regist
 421:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t HFSR;                    /*!< Offset: 0x02C (R/W)  HardFault Status Register       
 422:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DFSR;                    /*!< Offset: 0x030 (R/W)  Debug Fault Status Register     
 423:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MMFAR;                   /*!< Offset: 0x034 (R/W)  MemManage Fault Address Register
 424:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t BFAR;                    /*!< Offset: 0x038 (R/W)  BusFault Address Register       
 425:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AFSR;                    /*!< Offset: 0x03C (R/W)  Auxiliary Fault Status Register 
 426:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_PFR[2];               /*!< Offset: 0x040 (R/ )  Processor Feature Register      
 427:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_DFR;                  /*!< Offset: 0x048 (R/ )  Debug Feature Register          
 428:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_AFR;                  /*!< Offset: 0x04C (R/ )  Auxiliary Feature Register      
 429:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_MFR[4];               /*!< Offset: 0x050 (R/ )  Memory Model Feature Register   
 430:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ID_ISAR[5];              /*!< Offset: 0x060 (R/ )  Instruction Set Attributes Regis
 431:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
 432:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CLIDR;                   /*!< Offset: 0x078 (R/ )  Cache Level ID register         
 433:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CTR;                     /*!< Offset: 0x07C (R/ )  Cache Type register             
 434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CCSIDR;                  /*!< Offset: 0x080 (R/ )  Cache Size ID Register          
 435:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CSSELR;                  /*!< Offset: 0x084 (R/W)  Cache Size Selection Register   
 436:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CPACR;                   /*!< Offset: 0x088 (R/W)  Coprocessor Access Control Regis
 437:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[93];
 438:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t STIR;                    /*!< Offset: 0x200 ( /W)  Software Triggered Interrupt Reg
 439:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[15];
 440:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR0;                   /*!< Offset: 0x240 (R/ )  Media and VFP Feature Register 0
 441:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR1;                   /*!< Offset: 0x244 (R/ )  Media and VFP Feature Register 1
 442:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR2;                   /*!< Offset: 0x248 (R/ )  Media and VFP Feature Register 1
 443:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[1];
 444:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t ICIALLU;                 /*!< Offset: 0x250 ( /W)  I-Cache Invalidate All to PoU   
 445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED6[1];
 446:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t ICIMVAU;                 /*!< Offset: 0x258 ( /W)  I-Cache Invalidate by MVA to PoU
 447:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCIMVAU;                 /*!< Offset: 0x25C ( /W)  D-Cache Invalidate by MVA to PoC
 448:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCISW;                   /*!< Offset: 0x260 ( /W)  D-Cache Invalidate by Set-way   
 449:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCMVAU;                 /*!< Offset: 0x264 ( /W)  D-Cache Clean by MVA to PoU     
 450:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCMVAC;                 /*!< Offset: 0x268 ( /W)  D-Cache Clean by MVA to PoC     
 451:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCSW;                   /*!< Offset: 0x26C ( /W)  D-Cache Clean by Set-way        
 452:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCIMVAC;                /*!< Offset: 0x270 ( /W)  D-Cache Clean and Invalidate by 
 453:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCCISW;                  /*!< Offset: 0x274 ( /W)  D-Cache Clean and Invalidate by 
 454:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED7[6];
 455:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ITCMCR;                  /*!< Offset: 0x290 (R/W)  Instruction Tightly-Coupled Memo
 456:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DTCMCR;                  /*!< Offset: 0x294 (R/W)  Data Tightly-Coupled Memory Cont
 457:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AHBPCR;                  /*!< Offset: 0x298 (R/W)  AHBP Control Register           
 458:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CACR;                    /*!< Offset: 0x29C (R/W)  L1 Cache Control Register       
 459:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t AHBSCR;                  /*!< Offset: 0x2A0 (R/W)  AHB Slave Control Register      
 460:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED8[1];
 461:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ABFSR;                   /*!< Offset: 0x2A8 (R/W)  Auxiliary Bus Fault Status Regis
 462:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } SCB_Type;
 463:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 464:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB CPUID Register Definitions */
 465:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_IMPLEMENTER_Pos          24                                             /*!< SCB 
 466:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_IMPLEMENTER_Msk          (0xFFUL << SCB_CPUID_IMPLEMENTER_Pos)          /*!< SCB 
 467:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 468:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_VARIANT_Pos              20                                             /*!< SCB 
 469:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_VARIANT_Msk              (0xFUL << SCB_CPUID_VARIANT_Pos)               /*!< SCB 
 470:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 471:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_ARCHITECTURE_Pos         16                                             /*!< SCB 
 472:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_ARCHITECTURE_Msk         (0xFUL << SCB_CPUID_ARCHITECTURE_Pos)          /*!< SCB 
ARM GAS  /tmp/ccQNhOlE.s 			page 49


 473:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 474:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_PARTNO_Pos                4                                             /*!< SCB 
 475:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_PARTNO_Msk               (0xFFFUL << SCB_CPUID_PARTNO_Pos)              /*!< SCB 
 476:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 477:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_REVISION_Pos              0                                             /*!< SCB 
 478:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_REVISION_Msk             (0xFUL << SCB_CPUID_REVISION_Pos)              /*!< SCB 
 479:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 480:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Interrupt Control State Register Definitions */
 481:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_NMIPENDSET_Pos            31                                             /*!< SCB 
 482:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_NMIPENDSET_Msk            (1UL << SCB_ICSR_NMIPENDSET_Pos)               /*!< SCB 
 483:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 484:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVSET_Pos             28                                             /*!< SCB 
 485:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVSET_Msk             (1UL << SCB_ICSR_PENDSVSET_Pos)                /*!< SCB 
 486:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 487:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVCLR_Pos             27                                             /*!< SCB 
 488:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVCLR_Msk             (1UL << SCB_ICSR_PENDSVCLR_Pos)                /*!< SCB 
 489:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 490:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTSET_Pos             26                                             /*!< SCB 
 491:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTSET_Msk             (1UL << SCB_ICSR_PENDSTSET_Pos)                /*!< SCB 
 492:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 493:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTCLR_Pos             25                                             /*!< SCB 
 494:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTCLR_Msk             (1UL << SCB_ICSR_PENDSTCLR_Pos)                /*!< SCB 
 495:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 496:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPREEMPT_Pos            23                                             /*!< SCB 
 497:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPREEMPT_Msk            (1UL << SCB_ICSR_ISRPREEMPT_Pos)               /*!< SCB 
 498:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 499:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPENDING_Pos            22                                             /*!< SCB 
 500:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPENDING_Msk            (1UL << SCB_ICSR_ISRPENDING_Pos)               /*!< SCB 
 501:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 502:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTPENDING_Pos           12                                             /*!< SCB 
 503:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTPENDING_Msk           (0x1FFUL << SCB_ICSR_VECTPENDING_Pos)          /*!< SCB 
 504:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 505:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_RETTOBASE_Pos             11                                             /*!< SCB 
 506:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_RETTOBASE_Msk             (1UL << SCB_ICSR_RETTOBASE_Pos)                /*!< SCB 
 507:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 508:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTACTIVE_Pos             0                                             /*!< SCB 
 509:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTACTIVE_Msk            (0x1FFUL << SCB_ICSR_VECTACTIVE_Pos)           /*!< SCB 
 510:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 511:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Vector Table Offset Register Definitions */
 512:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_VTOR_TBLOFF_Pos                 7                                             /*!< SCB 
 513:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_VTOR_TBLOFF_Msk                (0x1FFFFFFUL << SCB_VTOR_TBLOFF_Pos)           /*!< SCB 
 514:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 515:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Application Interrupt and Reset Control Register Definitions */
 516:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEY_Pos              16                                             /*!< SCB 
 517:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEY_Msk              (0xFFFFUL << SCB_AIRCR_VECTKEY_Pos)            /*!< SCB 
 518:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 519:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEYSTAT_Pos          16                                             /*!< SCB 
 520:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEYSTAT_Msk          (0xFFFFUL << SCB_AIRCR_VECTKEYSTAT_Pos)        /*!< SCB 
 521:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 522:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_ENDIANESS_Pos            15                                             /*!< SCB 
 523:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_ENDIANESS_Msk            (1UL << SCB_AIRCR_ENDIANESS_Pos)               /*!< SCB 
 524:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 525:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_PRIGROUP_Pos              8                                             /*!< SCB 
 526:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_PRIGROUP_Msk             (7UL << SCB_AIRCR_PRIGROUP_Pos)                /*!< SCB 
 527:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 528:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_SYSRESETREQ_Pos           2                                             /*!< SCB 
 529:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_SYSRESETREQ_Msk          (1UL << SCB_AIRCR_SYSRESETREQ_Pos)             /*!< SCB 
ARM GAS  /tmp/ccQNhOlE.s 			page 50


 530:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 531:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTCLRACTIVE_Pos         1                                             /*!< SCB 
 532:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTCLRACTIVE_Msk        (1UL << SCB_AIRCR_VECTCLRACTIVE_Pos)           /*!< SCB 
 533:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 534:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTRESET_Pos             0                                             /*!< SCB 
 535:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTRESET_Msk            (1UL << SCB_AIRCR_VECTRESET_Pos)               /*!< SCB 
 536:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 537:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB System Control Register Definitions */
 538:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SEVONPEND_Pos               4                                             /*!< SCB 
 539:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SEVONPEND_Msk              (1UL << SCB_SCR_SEVONPEND_Pos)                 /*!< SCB 
 540:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 541:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPDEEP_Pos               2                                             /*!< SCB 
 542:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPDEEP_Msk              (1UL << SCB_SCR_SLEEPDEEP_Pos)                 /*!< SCB 
 543:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 544:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPONEXIT_Pos             1                                             /*!< SCB 
 545:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPONEXIT_Msk            (1UL << SCB_SCR_SLEEPONEXIT_Pos)               /*!< SCB 
 546:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 547:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Configuration Control Register Definitions */
 548:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BP_Pos                      18                                            /*!< SCB 
 549:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BP_Msk                     (1UL << SCB_CCR_BP_Pos)                        /*!< SCB 
 550:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 551:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_IC_Pos                      17                                            /*!< SCB 
 552:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_IC_Msk                     (1UL << SCB_CCR_IC_Pos)                        /*!< SCB 
 553:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 554:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DC_Pos                      16                                            /*!< SCB 
 555:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DC_Msk                     (1UL << SCB_CCR_DC_Pos)                        /*!< SCB 
 556:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 557:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_STKALIGN_Pos                9                                             /*!< SCB 
 558:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_STKALIGN_Msk               (1UL << SCB_CCR_STKALIGN_Pos)                  /*!< SCB 
 559:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 560:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BFHFNMIGN_Pos               8                                             /*!< SCB 
 561:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BFHFNMIGN_Msk              (1UL << SCB_CCR_BFHFNMIGN_Pos)                 /*!< SCB 
 562:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 563:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DIV_0_TRP_Pos               4                                             /*!< SCB 
 564:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DIV_0_TRP_Msk              (1UL << SCB_CCR_DIV_0_TRP_Pos)                 /*!< SCB 
 565:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 566:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_UNALIGN_TRP_Pos             3                                             /*!< SCB 
 567:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_UNALIGN_TRP_Msk            (1UL << SCB_CCR_UNALIGN_TRP_Pos)               /*!< SCB 
 568:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 569:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_USERSETMPEND_Pos            1                                             /*!< SCB 
 570:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_USERSETMPEND_Msk           (1UL << SCB_CCR_USERSETMPEND_Pos)              /*!< SCB 
 571:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 572:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_NONBASETHRDENA_Pos          0                                             /*!< SCB 
 573:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCR_NONBASETHRDENA_Msk         (1UL << SCB_CCR_NONBASETHRDENA_Pos)            /*!< SCB 
 574:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 575:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB System Handler Control and State Register Definitions */
 576:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTENA_Pos          18                                             /*!< SCB 
 577:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTENA_Msk          (1UL << SCB_SHCSR_USGFAULTENA_Pos)             /*!< SCB 
 578:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 579:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTENA_Pos          17                                             /*!< SCB 
 580:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTENA_Msk          (1UL << SCB_SHCSR_BUSFAULTENA_Pos)             /*!< SCB 
 581:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 582:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTENA_Pos          16                                             /*!< SCB 
 583:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTENA_Msk          (1UL << SCB_SHCSR_MEMFAULTENA_Pos)             /*!< SCB 
 584:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 585:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLPENDED_Pos         15                                             /*!< SCB 
 586:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLPENDED_Msk         (1UL << SCB_SHCSR_SVCALLPENDED_Pos)            /*!< SCB 
ARM GAS  /tmp/ccQNhOlE.s 			page 51


 587:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 588:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTPENDED_Pos       14                                             /*!< SCB 
 589:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTPENDED_Msk       (1UL << SCB_SHCSR_BUSFAULTPENDED_Pos)          /*!< SCB 
 590:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 591:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTPENDED_Pos       13                                             /*!< SCB 
 592:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTPENDED_Msk       (1UL << SCB_SHCSR_MEMFAULTPENDED_Pos)          /*!< SCB 
 593:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 594:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTPENDED_Pos       12                                             /*!< SCB 
 595:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTPENDED_Msk       (1UL << SCB_SHCSR_USGFAULTPENDED_Pos)          /*!< SCB 
 596:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 597:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SYSTICKACT_Pos           11                                             /*!< SCB 
 598:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SYSTICKACT_Msk           (1UL << SCB_SHCSR_SYSTICKACT_Pos)              /*!< SCB 
 599:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 600:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_PENDSVACT_Pos            10                                             /*!< SCB 
 601:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_PENDSVACT_Msk            (1UL << SCB_SHCSR_PENDSVACT_Pos)               /*!< SCB 
 602:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 603:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MONITORACT_Pos            8                                             /*!< SCB 
 604:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MONITORACT_Msk           (1UL << SCB_SHCSR_MONITORACT_Pos)              /*!< SCB 
 605:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 606:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLACT_Pos             7                                             /*!< SCB 
 607:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLACT_Msk            (1UL << SCB_SHCSR_SVCALLACT_Pos)               /*!< SCB 
 608:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 609:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTACT_Pos           3                                             /*!< SCB 
 610:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTACT_Msk          (1UL << SCB_SHCSR_USGFAULTACT_Pos)             /*!< SCB 
 611:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 612:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTACT_Pos           1                                             /*!< SCB 
 613:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTACT_Msk          (1UL << SCB_SHCSR_BUSFAULTACT_Pos)             /*!< SCB 
 614:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 615:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTACT_Pos           0                                             /*!< SCB 
 616:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTACT_Msk          (1UL << SCB_SHCSR_MEMFAULTACT_Pos)             /*!< SCB 
 617:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 618:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Configurable Fault Status Registers Definitions */
 619:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_USGFAULTSR_Pos            16                                             /*!< SCB 
 620:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_USGFAULTSR_Msk            (0xFFFFUL << SCB_CFSR_USGFAULTSR_Pos)          /*!< SCB 
 621:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 622:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_BUSFAULTSR_Pos             8                                             /*!< SCB 
 623:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_BUSFAULTSR_Msk            (0xFFUL << SCB_CFSR_BUSFAULTSR_Pos)            /*!< SCB 
 624:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 625:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_MEMFAULTSR_Pos             0                                             /*!< SCB 
 626:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_MEMFAULTSR_Msk            (0xFFUL << SCB_CFSR_MEMFAULTSR_Pos)            /*!< SCB 
 627:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 628:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Hard Fault Status Registers Definitions */
 629:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_DEBUGEVT_Pos              31                                             /*!< SCB 
 630:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_DEBUGEVT_Msk              (1UL << SCB_HFSR_DEBUGEVT_Pos)                 /*!< SCB 
 631:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 632:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_FORCED_Pos                30                                             /*!< SCB 
 633:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_FORCED_Msk                (1UL << SCB_HFSR_FORCED_Pos)                   /*!< SCB 
 634:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 635:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_VECTTBL_Pos                1                                             /*!< SCB 
 636:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_VECTTBL_Msk               (1UL << SCB_HFSR_VECTTBL_Pos)                  /*!< SCB 
 637:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 638:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Debug Fault Status Register Definitions */
 639:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_EXTERNAL_Pos               4                                             /*!< SCB 
 640:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_EXTERNAL_Msk              (1UL << SCB_DFSR_EXTERNAL_Pos)                 /*!< SCB 
 641:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 642:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_VCATCH_Pos                 3                                             /*!< SCB 
 643:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_VCATCH_Msk                (1UL << SCB_DFSR_VCATCH_Pos)                   /*!< SCB 
ARM GAS  /tmp/ccQNhOlE.s 			page 52


 644:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 645:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_DWTTRAP_Pos                2                                             /*!< SCB 
 646:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_DWTTRAP_Msk               (1UL << SCB_DFSR_DWTTRAP_Pos)                  /*!< SCB 
 647:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 648:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_BKPT_Pos                   1                                             /*!< SCB 
 649:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_BKPT_Msk                  (1UL << SCB_DFSR_BKPT_Pos)                     /*!< SCB 
 650:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 651:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_HALTED_Pos                 0                                             /*!< SCB 
 652:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_HALTED_Msk                (1UL << SCB_DFSR_HALTED_Pos)                   /*!< SCB 
 653:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 654:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Level ID register */
 655:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOUU_Pos                 27                                             /*!< SCB 
 656:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOUU_Msk                 (7UL << SCB_CLIDR_LOUU_Pos)                    /*!< SCB 
 657:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 658:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOC_Pos                  24                                             /*!< SCB 
 659:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOC_Msk                  (7UL << SCB_CLIDR_FORMAT_Pos)                  /*!< SCB 
 660:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 661:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Type register */
 662:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_FORMAT_Pos                 29                                             /*!< SCB 
 663:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_FORMAT_Msk                 (7UL << SCB_CTR_FORMAT_Pos)                    /*!< SCB 
 664:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 665:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_CWG_Pos                    24                                             /*!< SCB 
 666:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_CWG_Msk                    (0xFUL << SCB_CTR_CWG_Pos)                     /*!< SCB 
 667:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 668:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_ERG_Pos                    20                                             /*!< SCB 
 669:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_ERG_Msk                    (0xFUL << SCB_CTR_ERG_Pos)                     /*!< SCB 
 670:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 671:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_DMINLINE_Pos               16                                             /*!< SCB 
 672:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_DMINLINE_Msk               (0xFUL << SCB_CTR_DMINLINE_Pos)                /*!< SCB 
 673:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 674:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_IMINLINE_Pos                0                                             /*!< SCB 
 675:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CTR_IMINLINE_Msk               (0xFUL << SCB_CTR_IMINLINE_Pos)                /*!< SCB 
 676:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 677:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Size ID Register */
 678:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WT_Pos                  31                                             /*!< SCB 
 679:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WT_Msk                  (7UL << SCB_CCSIDR_WT_Pos)                     /*!< SCB 
 680:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 681:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WB_Pos                  30                                             /*!< SCB 
 682:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WB_Msk                  (7UL << SCB_CCSIDR_WB_Pos)                     /*!< SCB 
 683:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_RA_Pos                  29                                             /*!< SCB 
 685:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_RA_Msk                  (7UL << SCB_CCSIDR_RA_Pos)                     /*!< SCB 
 686:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 687:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WA_Pos                  28                                             /*!< SCB 
 688:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WA_Msk                  (7UL << SCB_CCSIDR_WA_Pos)                     /*!< SCB 
 689:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 690:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_NUMSETS_Pos             13                                             /*!< SCB 
 691:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_NUMSETS_Msk             (0x7FFFUL << SCB_CCSIDR_NUMSETS_Pos)           /*!< SCB 
 692:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 693:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_ASSOCIATIVITY_Pos        3                                             /*!< SCB 
 694:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_ASSOCIATIVITY_Msk       (0x3FFUL << SCB_CCSIDR_ASSOCIATIVITY_Pos)      /*!< SCB 
 695:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_LINESIZE_Pos             0                                             /*!< SCB 
 697:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_LINESIZE_Msk            (7UL << SCB_CCSIDR_LINESIZE_Pos)               /*!< SCB 
 698:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 699:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Cache Size Selection Register */
 700:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_LEVEL_Pos                0                                             /*!< SCB 
ARM GAS  /tmp/ccQNhOlE.s 			page 53


 701:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_LEVEL_Msk               (1UL << SCB_CSSELR_LEVEL_Pos)                    /*!< SC
 702:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 703:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_IND_Pos                  0                                             /*!< SCB 
 704:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_IND_Msk                 (1UL << SCB_CSSELR_IND_Pos)                    /*!< SCB 
 705:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 706:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SCB Software Triggered Interrupt Register */
 707:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_STIR_INTID_Pos                  0                                             /*!< SCB 
 708:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_STIR_INTID_Msk                 (0x1FFUL << SCB_STIR_INTID_Pos)                /*!< SCB 
 709:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 710:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Instruction Tightly-Coupled Memory Control Register*/
 711:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_SZ_Pos                   3                                             /*!< SCB 
 712:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_SZ_Msk                  (0xFUL << SCB_ITCMCR_SZ_Pos)                   /*!< SCB 
 713:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 714:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RETEN_Pos                2                                             /*!< SCB 
 715:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RETEN_Msk               (0x1UL << SCB_ITCMCR_RETEN_Pos)                /*!< SCB 
 716:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 717:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RMW_Pos                  1                                             /*!< SCB 
 718:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RMW_Msk                 (0x1UL << SCB_ITCMCR_RMW_Pos)                  /*!< SCB 
 719:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 720:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_EN_Pos                   0                                             /*!< SCB 
 721:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_EN_Msk                  (0x1UL << SCB_ITCMCR_EN_Pos)                   /*!< SCB 
 722:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 723:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Data Tightly-Coupled Memory Control Registers */
 724:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_SZ_Pos                   3                                             /*!< SCB 
 725:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_SZ_Msk                  (0xFUL << SCB_DTCMCR_SZ_Pos)                   /*!< SCB 
 726:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 727:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RETEN_Pos                2                                             /*!< SCB 
 728:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RETEN_Msk               (1UL << SCB_DTCMCR_RETEN_Pos)                   /*!< SCB
 729:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 730:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RMW_Pos                  1                                             /*!< SCB 
 731:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RMW_Msk                 (1UL << SCB_DTCMCR_RMW_Pos)                    /*!< SCB 
 732:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 733:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_EN_Pos                   0                                             /*!< SCB 
 734:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_EN_Msk                  (1UL << SCB_DTCMCR_EN_Pos)                     /*!< SCB 
 735:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 736:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* AHBP Control Register */
 737:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_SZ_Pos                   1                                             /*!< SCB 
 738:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_SZ_Msk                  (7UL << SCB_AHBPCR_SZ_Pos)                     /*!< SCB 
 739:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 740:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_EN_Pos                   0                                             /*!< SCB 
 741:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_EN_Msk                  (1UL << SCB_AHBPCR_EN_Pos)                     /*!< SCB 
 742:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 743:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* L1 Cache Control Register */
 744:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_FORCEWT_Pos                2                                             /*!< SCB 
 745:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_FORCEWT_Msk               (1UL << SCB_CACR_FORCEWT_Pos)                  /*!< SCB 
 746:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 747:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_ECCEN_Pos                  1                                             /*!< SCB 
 748:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_ECCEN_Msk                 (1UL << SCB_CACR_ECCEN_Pos)                    /*!< SCB 
 749:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 750:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_SIWT_Pos                   0                                             /*!< SCB 
 751:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_CACR_SIWT_Msk                  (1UL << SCB_CACR_SIWT_Pos)                     /*!< SCB 
 752:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 753:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* AHBS control register */
 754:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_INITCOUNT_Pos           11                                             /*!< SCB 
 755:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_INITCOUNT_Msk           (0x1FUL << SCB_AHBPCR_INITCOUNT_Pos)           /*!< SCB 
 756:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 757:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_TPRI_Pos                 2                                             /*!< SCB 
ARM GAS  /tmp/ccQNhOlE.s 			page 54


 758:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_TPRI_Msk                (0x1FFUL << SCB_AHBPCR_TPRI_Pos)               /*!< SCB 
 759:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 760:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_CTL_Pos                  0                                             /*!< SCB 
 761:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_CTL_Msk                 (3UL << SCB_AHBPCR_CTL_Pos)                    /*!< SCB 
 762:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 763:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Auxiliary Bus Fault Status Register */
 764:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIMTYPE_Pos              8                                             /*!< SCB 
 765:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIMTYPE_Msk             (3UL << SCB_ABFSR_AXIMTYPE_Pos)                /*!< SCB 
 766:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 767:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_EPPB_Pos                  4                                             /*!< SCB 
 768:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_EPPB_Msk                 (1UL << SCB_ABFSR_EPPB_Pos)                    /*!< SCB 
 769:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 770:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIM_Pos                  3                                             /*!< SCB 
 771:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIM_Msk                 (1UL << SCB_ABFSR_AXIM_Pos)                    /*!< SCB 
 772:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 773:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AHBP_Pos                  2                                             /*!< SCB 
 774:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AHBP_Msk                 (1UL << SCB_ABFSR_AHBP_Pos)                    /*!< SCB 
 775:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 776:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_DTCM_Pos                  1                                             /*!< SCB 
 777:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_DTCM_Msk                 (1UL << SCB_ABFSR_DTCM_Pos)                    /*!< SCB 
 778:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 779:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_ITCM_Pos                  0                                             /*!< SCB 
 780:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_ITCM_Msk                 (1UL << SCB_ABFSR_ITCM_Pos)                    /*!< SCB 
 781:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 782:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_SCB */
 783:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 784:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 785:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 786:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_SCnSCB System Controls not in SCB (SCnSCB)
 787:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the System Control and ID Register not in the SCB
 788:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 789:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 790:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 791:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the System Control and ID Register not in the SCB.
 792:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 793:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 794:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 795:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
 796:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ICTR;                    /*!< Offset: 0x004 (R/ )  Interrupt Controller Type Regist
 797:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ACTLR;                   /*!< Offset: 0x008 (R/W)  Auxiliary Control Register      
 798:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } SCnSCB_Type;
 799:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 800:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Interrupt Controller Type Register Definitions */
 801:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ICTR_INTLINESNUM_Pos         0                                          /*!< ICTR: I
 802:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ICTR_INTLINESNUM_Msk        (0xFUL << SCnSCB_ICTR_INTLINESNUM_Pos)      /*!< ICTR: I
 803:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 804:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Auxiliary Control Register Definitions */
 805:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISITMATBFLUSH_Pos    12                                          /*!< ACTLR: 
 806:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISITMATBFLUSH_Msk    (1UL << SCnSCB_ACTLR_DISITMATBFLUSH_Pos)    /*!< ACTLR: 
 807:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 808:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISRAMODE_Pos         11                                          /*!< ACTLR: 
 809:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISRAMODE_Msk         (1UL << SCnSCB_ACTLR_DISRAMODE_Pos)         /*!< ACTLR: 
 810:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 811:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_FPEXCODIS_Pos         10                                          /*!< ACTLR: 
 812:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_FPEXCODIS_Msk         (1UL << SCnSCB_ACTLR_FPEXCODIS_Pos)         /*!< ACTLR: 
 813:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 814:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISFOLD_Pos            2                                          /*!< ACTLR: 
ARM GAS  /tmp/ccQNhOlE.s 			page 55


 815:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISFOLD_Msk           (1UL << SCnSCB_ACTLR_DISFOLD_Pos)           /*!< ACTLR: 
 816:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 817:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISMCYCINT_Pos         0                                          /*!< ACTLR: 
 818:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISMCYCINT_Msk        (1UL << SCnSCB_ACTLR_DISMCYCINT_Pos)        /*!< ACTLR: 
 819:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 820:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_SCnotSCB */
 821:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 822:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 823:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 824:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_SysTick     System Tick Timer (SysTick)
 825:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the System Timer Registers.
 826:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 827:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 828:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 829:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the System Timer (SysTick).
 830:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 831:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 832:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 833:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CTRL;                    /*!< Offset: 0x000 (R/W)  SysTick Control and Status Regis
 834:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t LOAD;                    /*!< Offset: 0x004 (R/W)  SysTick Reload Value Register   
 835:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t VAL;                     /*!< Offset: 0x008 (R/W)  SysTick Current Value Register  
 836:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CALIB;                   /*!< Offset: 0x00C (R/ )  SysTick Calibration Register    
 837:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } SysTick_Type;
 838:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 839:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Control / Status Register Definitions */
 840:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_COUNTFLAG_Pos         16                                             /*!< SysT
 841:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_COUNTFLAG_Msk         (1UL << SysTick_CTRL_COUNTFLAG_Pos)            /*!< SysT
 842:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 843:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_CLKSOURCE_Pos          2                                             /*!< SysT
 844:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_CLKSOURCE_Msk         (1UL << SysTick_CTRL_CLKSOURCE_Pos)            /*!< SysT
 845:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 846:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_TICKINT_Pos            1                                             /*!< SysT
 847:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_TICKINT_Msk           (1UL << SysTick_CTRL_TICKINT_Pos)              /*!< SysT
 848:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 849:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_ENABLE_Pos             0                                             /*!< SysT
 850:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_ENABLE_Msk            (1UL << SysTick_CTRL_ENABLE_Pos)               /*!< SysT
 851:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 852:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Reload Register Definitions */
 853:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_LOAD_RELOAD_Pos             0                                             /*!< SysT
 854:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_LOAD_RELOAD_Msk            (0xFFFFFFUL << SysTick_LOAD_RELOAD_Pos)        /*!< SysT
 855:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 856:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Current Register Definitions */
 857:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_VAL_CURRENT_Pos             0                                             /*!< SysT
 858:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_VAL_CURRENT_Msk            (0xFFFFFFUL << SysTick_VAL_CURRENT_Pos)        /*!< SysT
 859:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 860:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* SysTick Calibration Register Definitions */
 861:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_NOREF_Pos            31                                             /*!< SysT
 862:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_NOREF_Msk            (1UL << SysTick_CALIB_NOREF_Pos)               /*!< SysT
 863:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 864:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_SKEW_Pos             30                                             /*!< SysT
 865:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_SKEW_Msk             (1UL << SysTick_CALIB_SKEW_Pos)                /*!< SysT
 866:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 867:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_TENMS_Pos             0                                             /*!< SysT
 868:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_TENMS_Msk            (0xFFFFFFUL << SysTick_CALIB_TENMS_Pos)        /*!< SysT
 869:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 870:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_SysTick */
 871:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/ccQNhOlE.s 			page 56


 872:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 873:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 874:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_ITM     Instrumentation Trace Macrocell (ITM)
 875:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Instrumentation Trace Macrocell (ITM)
 876:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 877:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 878:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 879:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Instrumentation Trace Macrocell Register (ITM).
 880:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 881:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 882:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 883:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  union
 884:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   {
 885:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __O  uint8_t    u8;                  /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 8-bit         
 886:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __O  uint16_t   u16;                 /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 16-bit        
 887:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     __O  uint32_t   u32;                 /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 32-bit        
 888:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   }  PORT [32];                          /*!< Offset: 0x000 ( /W)  ITM Stimulus Port Registers     
 889:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[864];
 890:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t TER;                     /*!< Offset: 0xE00 (R/W)  ITM Trace Enable Register       
 891:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED1[15];
 892:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t TPR;                     /*!< Offset: 0xE40 (R/W)  ITM Trace Privilege Register    
 893:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[15];
 894:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t TCR;                     /*!< Offset: 0xE80 (R/W)  ITM Trace Control Register      
 895:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[29];
 896:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t IWR;                     /*!< Offset: 0xEF8 ( /W)  ITM Integration Write Register  
 897:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t IRR;                     /*!< Offset: 0xEFC (R/ )  ITM Integration Read Register   
 898:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t IMCR;                    /*!< Offset: 0xF00 (R/W)  ITM Integration Mode Control Reg
 899:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[43];
 900:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t LAR;                     /*!< Offset: 0xFB0 ( /W)  ITM Lock Access Register        
 901:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t LSR;                     /*!< Offset: 0xFB4 (R/ )  ITM Lock Status Register        
 902:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[6];
 903:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID4;                    /*!< Offset: 0xFD0 (R/ )  ITM Peripheral Identification Re
 904:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID5;                    /*!< Offset: 0xFD4 (R/ )  ITM Peripheral Identification Re
 905:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID6;                    /*!< Offset: 0xFD8 (R/ )  ITM Peripheral Identification Re
 906:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID7;                    /*!< Offset: 0xFDC (R/ )  ITM Peripheral Identification Re
 907:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID0;                    /*!< Offset: 0xFE0 (R/ )  ITM Peripheral Identification Re
 908:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID1;                    /*!< Offset: 0xFE4 (R/ )  ITM Peripheral Identification Re
 909:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID2;                    /*!< Offset: 0xFE8 (R/ )  ITM Peripheral Identification Re
 910:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PID3;                    /*!< Offset: 0xFEC (R/ )  ITM Peripheral Identification Re
 911:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID0;                    /*!< Offset: 0xFF0 (R/ )  ITM Component  Identification Re
 912:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID1;                    /*!< Offset: 0xFF4 (R/ )  ITM Component  Identification Re
 913:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID2;                    /*!< Offset: 0xFF8 (R/ )  ITM Component  Identification Re
 914:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t CID3;                    /*!< Offset: 0xFFC (R/ )  ITM Component  Identification Re
 915:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } ITM_Type;
 916:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 917:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Trace Privilege Register Definitions */
 918:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TPR_PRIVMASK_Pos                0                                             /*!< ITM 
 919:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TPR_PRIVMASK_Msk               (0xFUL << ITM_TPR_PRIVMASK_Pos)                /*!< ITM 
 920:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 921:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Trace Control Register Definitions */
 922:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_BUSY_Pos                   23                                             /*!< ITM 
 923:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_BUSY_Msk                   (1UL << ITM_TCR_BUSY_Pos)                      /*!< ITM 
 924:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 925:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TraceBusID_Pos             16                                             /*!< ITM 
 926:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TraceBusID_Msk             (0x7FUL << ITM_TCR_TraceBusID_Pos)             /*!< ITM 
 927:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 928:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_GTSFREQ_Pos                10                                             /*!< ITM 
ARM GAS  /tmp/ccQNhOlE.s 			page 57


 929:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_GTSFREQ_Msk                (3UL << ITM_TCR_GTSFREQ_Pos)                   /*!< ITM 
 930:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 931:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSPrescale_Pos              8                                             /*!< ITM 
 932:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSPrescale_Msk             (3UL << ITM_TCR_TSPrescale_Pos)                /*!< ITM 
 933:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 934:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SWOENA_Pos                  4                                             /*!< ITM 
 935:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SWOENA_Msk                 (1UL << ITM_TCR_SWOENA_Pos)                    /*!< ITM 
 936:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 937:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_DWTENA_Pos                  3                                             /*!< ITM 
 938:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_DWTENA_Msk                 (1UL << ITM_TCR_DWTENA_Pos)                    /*!< ITM 
 939:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 940:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SYNCENA_Pos                 2                                             /*!< ITM 
 941:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SYNCENA_Msk                (1UL << ITM_TCR_SYNCENA_Pos)                   /*!< ITM 
 942:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 943:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSENA_Pos                   1                                             /*!< ITM 
 944:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSENA_Msk                  (1UL << ITM_TCR_TSENA_Pos)                     /*!< ITM 
 945:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 946:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_ITMENA_Pos                  0                                             /*!< ITM 
 947:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_TCR_ITMENA_Msk                 (1UL << ITM_TCR_ITMENA_Pos)                    /*!< ITM 
 948:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 949:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Integration Write Register Definitions */
 950:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IWR_ATVALIDM_Pos                0                                             /*!< ITM 
 951:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IWR_ATVALIDM_Msk               (1UL << ITM_IWR_ATVALIDM_Pos)                  /*!< ITM 
 952:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 953:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Integration Read Register Definitions */
 954:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IRR_ATREADYM_Pos                0                                             /*!< ITM 
 955:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IRR_ATREADYM_Msk               (1UL << ITM_IRR_ATREADYM_Pos)                  /*!< ITM 
 956:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 957:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Integration Mode Control Register Definitions */
 958:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IMCR_INTEGRATION_Pos            0                                             /*!< ITM 
 959:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_IMCR_INTEGRATION_Msk           (1UL << ITM_IMCR_INTEGRATION_Pos)              /*!< ITM 
 960:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 961:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ITM Lock Status Register Definitions */
 962:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_ByteAcc_Pos                 2                                             /*!< ITM 
 963:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_ByteAcc_Msk                (1UL << ITM_LSR_ByteAcc_Pos)                   /*!< ITM 
 964:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 965:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Access_Pos                  1                                             /*!< ITM 
 966:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Access_Msk                 (1UL << ITM_LSR_Access_Pos)                    /*!< ITM 
 967:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 968:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Present_Pos                 0                                             /*!< ITM 
 969:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Present_Msk                (1UL << ITM_LSR_Present_Pos)                   /*!< ITM 
 970:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 971:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@}*/ /* end of group CMSIS_ITM */
 972:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 973:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 974:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
 975:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_DWT     Data Watchpoint and Trace (DWT)
 976:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Data Watchpoint and Trace (DWT)
 977:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
 978:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 979:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
 980:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Data Watchpoint and Trace Register (DWT).
 981:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
 982:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
 983:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
 984:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CTRL;                    /*!< Offset: 0x000 (R/W)  Control Register                
 985:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CYCCNT;                  /*!< Offset: 0x004 (R/W)  Cycle Count Register            
ARM GAS  /tmp/ccQNhOlE.s 			page 58


 986:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CPICNT;                  /*!< Offset: 0x008 (R/W)  CPI Count Register              
 987:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t EXCCNT;                  /*!< Offset: 0x00C (R/W)  Exception Overhead Count Registe
 988:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SLEEPCNT;                /*!< Offset: 0x010 (R/W)  Sleep Count Register            
 989:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t LSUCNT;                  /*!< Offset: 0x014 (R/W)  LSU Count Register              
 990:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FOLDCNT;                 /*!< Offset: 0x018 (R/W)  Folded-instruction Count Registe
 991:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t PCSR;                    /*!< Offset: 0x01C (R/ )  Program Counter Sample Register 
 992:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP0;                   /*!< Offset: 0x020 (R/W)  Comparator Register 0           
 993:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK0;                   /*!< Offset: 0x024 (R/W)  Mask Register 0                 
 994:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION0;               /*!< Offset: 0x028 (R/W)  Function Register 0             
 995:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
 996:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP1;                   /*!< Offset: 0x030 (R/W)  Comparator Register 1           
 997:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK1;                   /*!< Offset: 0x034 (R/W)  Mask Register 1                 
 998:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION1;               /*!< Offset: 0x038 (R/W)  Function Register 1             
 999:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED1[1];
1000:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP2;                   /*!< Offset: 0x040 (R/W)  Comparator Register 2           
1001:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK2;                   /*!< Offset: 0x044 (R/W)  Mask Register 2                 
1002:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION2;               /*!< Offset: 0x048 (R/W)  Function Register 2             
1003:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[1];
1004:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t COMP3;                   /*!< Offset: 0x050 (R/W)  Comparator Register 3           
1005:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t MASK3;                   /*!< Offset: 0x054 (R/W)  Mask Register 3                 
1006:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FUNCTION3;               /*!< Offset: 0x058 (R/W)  Function Register 3             
1007:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[981];
1008:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t LAR;                     /*!< Offset: 0xFB0 (  W)  Lock Access Register            
1009:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t LSR;                     /*!< Offset: 0xFB4 (R  )  Lock Status Register            
1010:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } DWT_Type;
1011:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1012:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Control Register Definitions */
1013:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NUMCOMP_Pos               28                                          /*!< DWT CTR
1014:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NUMCOMP_Msk               (0xFUL << DWT_CTRL_NUMCOMP_Pos)             /*!< DWT CTR
1015:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1016:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOTRCPKT_Pos              27                                          /*!< DWT CTR
1017:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOTRCPKT_Msk              (0x1UL << DWT_CTRL_NOTRCPKT_Pos)            /*!< DWT CTR
1018:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1019:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOEXTTRIG_Pos             26                                          /*!< DWT CTR
1020:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOEXTTRIG_Msk             (0x1UL << DWT_CTRL_NOEXTTRIG_Pos)           /*!< DWT CTR
1021:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1022:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOCYCCNT_Pos              25                                          /*!< DWT CTR
1023:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOCYCCNT_Msk              (0x1UL << DWT_CTRL_NOCYCCNT_Pos)            /*!< DWT CTR
1024:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1025:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOPRFCNT_Pos              24                                          /*!< DWT CTR
1026:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOPRFCNT_Msk              (0x1UL << DWT_CTRL_NOPRFCNT_Pos)            /*!< DWT CTR
1027:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1028:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCEVTENA_Pos             22                                          /*!< DWT CTR
1029:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCEVTENA_Msk             (0x1UL << DWT_CTRL_CYCEVTENA_Pos)           /*!< DWT CTR
1030:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1031:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_FOLDEVTENA_Pos            21                                          /*!< DWT CTR
1032:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_FOLDEVTENA_Msk            (0x1UL << DWT_CTRL_FOLDEVTENA_Pos)          /*!< DWT CTR
1033:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1034:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_LSUEVTENA_Pos             20                                          /*!< DWT CTR
1035:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_LSUEVTENA_Msk             (0x1UL << DWT_CTRL_LSUEVTENA_Pos)           /*!< DWT CTR
1036:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1037:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SLEEPEVTENA_Pos           19                                          /*!< DWT CTR
1038:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SLEEPEVTENA_Msk           (0x1UL << DWT_CTRL_SLEEPEVTENA_Pos)         /*!< DWT CTR
1039:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1040:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCEVTENA_Pos             18                                          /*!< DWT CTR
1041:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCEVTENA_Msk             (0x1UL << DWT_CTRL_EXCEVTENA_Pos)           /*!< DWT CTR
1042:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/ccQNhOlE.s 			page 59


1043:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CPIEVTENA_Pos             17                                          /*!< DWT CTR
1044:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CPIEVTENA_Msk             (0x1UL << DWT_CTRL_CPIEVTENA_Pos)           /*!< DWT CTR
1045:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1046:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCTRCENA_Pos             16                                          /*!< DWT CTR
1047:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCTRCENA_Msk             (0x1UL << DWT_CTRL_EXCTRCENA_Pos)           /*!< DWT CTR
1048:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1049:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_PCSAMPLENA_Pos            12                                          /*!< DWT CTR
1050:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_PCSAMPLENA_Msk            (0x1UL << DWT_CTRL_PCSAMPLENA_Pos)          /*!< DWT CTR
1051:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1052:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SYNCTAP_Pos               10                                          /*!< DWT CTR
1053:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SYNCTAP_Msk               (0x3UL << DWT_CTRL_SYNCTAP_Pos)             /*!< DWT CTR
1054:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1055:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCTAP_Pos                 9                                          /*!< DWT CTR
1056:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCTAP_Msk                (0x1UL << DWT_CTRL_CYCTAP_Pos)              /*!< DWT CTR
1057:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1058:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTINIT_Pos               5                                          /*!< DWT CTR
1059:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTINIT_Msk              (0xFUL << DWT_CTRL_POSTINIT_Pos)            /*!< DWT CTR
1060:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1061:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTPRESET_Pos             1                                          /*!< DWT CTR
1062:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTPRESET_Msk            (0xFUL << DWT_CTRL_POSTPRESET_Pos)          /*!< DWT CTR
1063:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1064:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCCNTENA_Pos              0                                          /*!< DWT CTR
1065:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCCNTENA_Msk             (0x1UL << DWT_CTRL_CYCCNTENA_Pos)           /*!< DWT CTR
1066:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1067:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT CPI Count Register Definitions */
1068:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CPICNT_CPICNT_Pos               0                                          /*!< DWT CPI
1069:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_CPICNT_CPICNT_Msk              (0xFFUL << DWT_CPICNT_CPICNT_Pos)           /*!< DWT CPI
1070:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1071:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Exception Overhead Count Register Definitions */
1072:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_EXCCNT_EXCCNT_Pos               0                                          /*!< DWT EXC
1073:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_EXCCNT_EXCCNT_Msk              (0xFFUL << DWT_EXCCNT_EXCCNT_Pos)           /*!< DWT EXC
1074:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1075:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Sleep Count Register Definitions */
1076:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_SLEEPCNT_SLEEPCNT_Pos           0                                          /*!< DWT SLE
1077:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_SLEEPCNT_SLEEPCNT_Msk          (0xFFUL << DWT_SLEEPCNT_SLEEPCNT_Pos)       /*!< DWT SLE
1078:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1079:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT LSU Count Register Definitions */
1080:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_LSUCNT_LSUCNT_Pos               0                                          /*!< DWT LSU
1081:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_LSUCNT_LSUCNT_Msk              (0xFFUL << DWT_LSUCNT_LSUCNT_Pos)           /*!< DWT LSU
1082:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1083:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Folded-instruction Count Register Definitions */
1084:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FOLDCNT_FOLDCNT_Pos             0                                          /*!< DWT FOL
1085:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FOLDCNT_FOLDCNT_Msk            (0xFFUL << DWT_FOLDCNT_FOLDCNT_Pos)         /*!< DWT FOL
1086:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1087:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Comparator Mask Register Definitions */
1088:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_MASK_MASK_Pos                   0                                          /*!< DWT MAS
1089:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_MASK_MASK_Msk                  (0x1FUL << DWT_MASK_MASK_Pos)               /*!< DWT MAS
1090:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1091:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* DWT Comparator Function Register Definitions */
1092:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_MATCHED_Pos           24                                          /*!< DWT FUN
1093:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_MATCHED_Msk           (0x1UL << DWT_FUNCTION_MATCHED_Pos)         /*!< DWT FUN
1094:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1095:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR1_Pos        16                                          /*!< DWT FUN
1096:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR1_Msk        (0xFUL << DWT_FUNCTION_DATAVADDR1_Pos)      /*!< DWT FUN
1097:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1098:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR0_Pos        12                                          /*!< DWT FUN
1099:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR0_Msk        (0xFUL << DWT_FUNCTION_DATAVADDR0_Pos)      /*!< DWT FUN
ARM GAS  /tmp/ccQNhOlE.s 			page 60


1100:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1101:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVSIZE_Pos         10                                          /*!< DWT FUN
1102:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVSIZE_Msk         (0x3UL << DWT_FUNCTION_DATAVSIZE_Pos)       /*!< DWT FUN
1103:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1104:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_LNK1ENA_Pos            9                                          /*!< DWT FUN
1105:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_LNK1ENA_Msk           (0x1UL << DWT_FUNCTION_LNK1ENA_Pos)         /*!< DWT FUN
1106:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1107:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVMATCH_Pos         8                                          /*!< DWT FUN
1108:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVMATCH_Msk        (0x1UL << DWT_FUNCTION_DATAVMATCH_Pos)      /*!< DWT FUN
1109:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1110:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_CYCMATCH_Pos           7                                          /*!< DWT FUN
1111:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_CYCMATCH_Msk          (0x1UL << DWT_FUNCTION_CYCMATCH_Pos)        /*!< DWT FUN
1112:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1113:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_EMITRANGE_Pos          5                                          /*!< DWT FUN
1114:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_EMITRANGE_Msk         (0x1UL << DWT_FUNCTION_EMITRANGE_Pos)       /*!< DWT FUN
1115:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1116:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_FUNCTION_Pos           0                                          /*!< DWT FUN
1117:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_FUNCTION_Msk          (0xFUL << DWT_FUNCTION_FUNCTION_Pos)        /*!< DWT FUN
1118:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1119:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@}*/ /* end of group CMSIS_DWT */
1120:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1121:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1122:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
1123:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_TPI     Trace Port Interface (TPI)
1124:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Trace Port Interface (TPI)
1125:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1126:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1127:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1128:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Trace Port Interface Register (TPI).
1129:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1130:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1131:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1132:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SSPSR;                   /*!< Offset: 0x000 (R/ )  Supported Parallel Port Size Reg
1133:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CSPSR;                   /*!< Offset: 0x004 (R/W)  Current Parallel Port Size Regis
1134:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[2];
1135:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ACPR;                    /*!< Offset: 0x010 (R/W)  Asynchronous Clock Prescaler Reg
1136:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED1[55];
1137:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t SPPR;                    /*!< Offset: 0x0F0 (R/W)  Selected Pin Protocol Register *
1138:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED2[131];
1139:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FFSR;                    /*!< Offset: 0x300 (R/ )  Formatter and Flush Status Regis
1140:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FFCR;                    /*!< Offset: 0x304 (R/W)  Formatter and Flush Control Regi
1141:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FSCR;                    /*!< Offset: 0x308 (R/ )  Formatter Synchronization Counte
1142:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED3[759];
1143:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t TRIGGER;                 /*!< Offset: 0xEE8 (R/ )  TRIGGER */
1144:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FIFO0;                   /*!< Offset: 0xEEC (R/ )  Integration ETM Data */
1145:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ITATBCTR2;               /*!< Offset: 0xEF0 (R/ )  ITATBCTR2 */
1146:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED4[1];
1147:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t ITATBCTR0;               /*!< Offset: 0xEF8 (R/ )  ITATBCTR0 */
1148:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t FIFO1;                   /*!< Offset: 0xEFC (R/ )  Integration ITM Data */
1149:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t ITCTRL;                  /*!< Offset: 0xF00 (R/W)  Integration Mode Control */
1150:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED5[39];
1151:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CLAIMSET;                /*!< Offset: 0xFA0 (R/W)  Claim tag set */
1152:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CLAIMCLR;                /*!< Offset: 0xFA4 (R/W)  Claim tag clear */
1153:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED7[8];
1154:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t DEVID;                   /*!< Offset: 0xFC8 (R/ )  TPIU_DEVID */
1155:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t DEVTYPE;                 /*!< Offset: 0xFCC (R/ )  TPIU_DEVTYPE */
1156:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } TPI_Type;
ARM GAS  /tmp/ccQNhOlE.s 			page 61


1157:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1158:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Asynchronous Clock Prescaler Register Definitions */
1159:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ACPR_PRESCALER_Pos              0                                          /*!< TPI ACP
1160:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ACPR_PRESCALER_Msk             (0x1FFFUL << TPI_ACPR_PRESCALER_Pos)        /*!< TPI ACP
1161:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1162:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Selected Pin Protocol Register Definitions */
1163:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_SPPR_TXMODE_Pos                 0                                          /*!< TPI SPP
1164:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_SPPR_TXMODE_Msk                (0x3UL << TPI_SPPR_TXMODE_Pos)              /*!< TPI SPP
1165:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1166:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Formatter and Flush Status Register Definitions */
1167:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtNonStop_Pos              3                                          /*!< TPI FFS
1168:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtNonStop_Msk             (0x1UL << TPI_FFSR_FtNonStop_Pos)           /*!< TPI FFS
1169:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1170:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_TCPresent_Pos              2                                          /*!< TPI FFS
1171:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_TCPresent_Msk             (0x1UL << TPI_FFSR_TCPresent_Pos)           /*!< TPI FFS
1172:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1173:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtStopped_Pos              1                                          /*!< TPI FFS
1174:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtStopped_Msk             (0x1UL << TPI_FFSR_FtStopped_Pos)           /*!< TPI FFS
1175:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1176:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FlInProg_Pos               0                                          /*!< TPI FFS
1177:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FlInProg_Msk              (0x1UL << TPI_FFSR_FlInProg_Pos)            /*!< TPI FFS
1178:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1179:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Formatter and Flush Control Register Definitions */
1180:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_TrigIn_Pos                 8                                          /*!< TPI FFC
1181:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_TrigIn_Msk                (0x1UL << TPI_FFCR_TrigIn_Pos)              /*!< TPI FFC
1182:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1183:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_EnFCont_Pos                1                                          /*!< TPI FFC
1184:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_EnFCont_Msk               (0x1UL << TPI_FFCR_EnFCont_Pos)             /*!< TPI FFC
1185:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1186:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI TRIGGER Register Definitions */
1187:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_TRIGGER_TRIGGER_Pos             0                                          /*!< TPI TRI
1188:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_TRIGGER_TRIGGER_Msk            (0x1UL << TPI_TRIGGER_TRIGGER_Pos)          /*!< TPI TRI
1189:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1190:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Integration ETM Data Register Definitions (FIFO0) */
1191:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_ATVALID_Pos          29                                          /*!< TPI FIF
1192:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_ATVALID_Msk          (0x3UL << TPI_FIFO0_ITM_ATVALID_Pos)        /*!< TPI FIF
1193:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1194:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_bytecount_Pos        27                                          /*!< TPI FIF
1195:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_bytecount_Msk        (0x3UL << TPI_FIFO0_ITM_bytecount_Pos)      /*!< TPI FIF
1196:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1197:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_ATVALID_Pos          26                                          /*!< TPI FIF
1198:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_ATVALID_Msk          (0x3UL << TPI_FIFO0_ETM_ATVALID_Pos)        /*!< TPI FIF
1199:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1200:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_bytecount_Pos        24                                          /*!< TPI FIF
1201:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_bytecount_Msk        (0x3UL << TPI_FIFO0_ETM_bytecount_Pos)      /*!< TPI FIF
1202:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1203:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM2_Pos                 16                                          /*!< TPI FIF
1204:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM2_Msk                 (0xFFUL << TPI_FIFO0_ETM2_Pos)              /*!< TPI FIF
1205:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1206:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM1_Pos                  8                                          /*!< TPI FIF
1207:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM1_Msk                 (0xFFUL << TPI_FIFO0_ETM1_Pos)              /*!< TPI FIF
1208:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1209:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM0_Pos                  0                                          /*!< TPI FIF
1210:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM0_Msk                 (0xFFUL << TPI_FIFO0_ETM0_Pos)              /*!< TPI FIF
1211:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1212:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI ITATBCTR2 Register Definitions */
1213:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR2_ATREADY_Pos           0                                          /*!< TPI ITA
ARM GAS  /tmp/ccQNhOlE.s 			page 62


1214:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR2_ATREADY_Msk          (0x1UL << TPI_ITATBCTR2_ATREADY_Pos)        /*!< TPI ITA
1215:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1216:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Integration ITM Data Register Definitions (FIFO1) */
1217:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_ATVALID_Pos          29                                          /*!< TPI FIF
1218:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_ATVALID_Msk          (0x3UL << TPI_FIFO1_ITM_ATVALID_Pos)        /*!< TPI FIF
1219:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1220:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_bytecount_Pos        27                                          /*!< TPI FIF
1221:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_bytecount_Msk        (0x3UL << TPI_FIFO1_ITM_bytecount_Pos)      /*!< TPI FIF
1222:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1223:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_ATVALID_Pos          26                                          /*!< TPI FIF
1224:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_ATVALID_Msk          (0x3UL << TPI_FIFO1_ETM_ATVALID_Pos)        /*!< TPI FIF
1225:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1226:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_bytecount_Pos        24                                          /*!< TPI FIF
1227:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_bytecount_Msk        (0x3UL << TPI_FIFO1_ETM_bytecount_Pos)      /*!< TPI FIF
1228:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1229:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM2_Pos                 16                                          /*!< TPI FIF
1230:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM2_Msk                 (0xFFUL << TPI_FIFO1_ITM2_Pos)              /*!< TPI FIF
1231:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1232:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM1_Pos                  8                                          /*!< TPI FIF
1233:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM1_Msk                 (0xFFUL << TPI_FIFO1_ITM1_Pos)              /*!< TPI FIF
1234:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1235:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM0_Pos                  0                                          /*!< TPI FIF
1236:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM0_Msk                 (0xFFUL << TPI_FIFO1_ITM0_Pos)              /*!< TPI FIF
1237:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1238:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI ITATBCTR0 Register Definitions */
1239:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR0_ATREADY_Pos           0                                          /*!< TPI ITA
1240:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR0_ATREADY_Msk          (0x1UL << TPI_ITATBCTR0_ATREADY_Pos)        /*!< TPI ITA
1241:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1242:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI Integration Mode Control Register Definitions */
1243:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITCTRL_Mode_Pos                 0                                          /*!< TPI ITC
1244:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_ITCTRL_Mode_Msk                (0x1UL << TPI_ITCTRL_Mode_Pos)              /*!< TPI ITC
1245:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1246:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI DEVID Register Definitions */
1247:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NRZVALID_Pos             11                                          /*!< TPI DEV
1248:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NRZVALID_Msk             (0x1UL << TPI_DEVID_NRZVALID_Pos)           /*!< TPI DEV
1249:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1250:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MANCVALID_Pos            10                                          /*!< TPI DEV
1251:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MANCVALID_Msk            (0x1UL << TPI_DEVID_MANCVALID_Pos)          /*!< TPI DEV
1252:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1253:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_PTINVALID_Pos             9                                          /*!< TPI DEV
1254:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_PTINVALID_Msk            (0x1UL << TPI_DEVID_PTINVALID_Pos)          /*!< TPI DEV
1255:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1256:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MinBufSz_Pos              6                                          /*!< TPI DEV
1257:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MinBufSz_Msk             (0x7UL << TPI_DEVID_MinBufSz_Pos)           /*!< TPI DEV
1258:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1259:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_AsynClkIn_Pos             5                                          /*!< TPI DEV
1260:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_AsynClkIn_Msk            (0x1UL << TPI_DEVID_AsynClkIn_Pos)          /*!< TPI DEV
1261:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1262:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NrTraceInput_Pos          0                                          /*!< TPI DEV
1263:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NrTraceInput_Msk         (0x1FUL << TPI_DEVID_NrTraceInput_Pos)      /*!< TPI DEV
1264:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1265:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* TPI DEVTYPE Register Definitions */
1266:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_SubType_Pos             0                                          /*!< TPI DEV
1267:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_SubType_Msk            (0xFUL << TPI_DEVTYPE_SubType_Pos)          /*!< TPI DEV
1268:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1269:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_MajorType_Pos           4                                          /*!< TPI DEV
1270:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_MajorType_Msk          (0xFUL << TPI_DEVTYPE_MajorType_Pos)        /*!< TPI DEV
ARM GAS  /tmp/ccQNhOlE.s 			page 63


1271:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1272:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@}*/ /* end of group CMSIS_TPI */
1273:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1274:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1275:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__MPU_PRESENT == 1)
1276:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
1277:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_MPU     Memory Protection Unit (MPU)
1278:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Memory Protection Unit (MPU)
1279:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1280:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1281:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1282:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Memory Protection Unit (MPU).
1283:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1284:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1285:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1286:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t TYPE;                    /*!< Offset: 0x000 (R/ )  MPU Type Register               
1287:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t CTRL;                    /*!< Offset: 0x004 (R/W)  MPU Control Register            
1288:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RNR;                     /*!< Offset: 0x008 (R/W)  MPU Region RNRber Register      
1289:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR;                    /*!< Offset: 0x00C (R/W)  MPU Region Base Address Register
1290:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR;                    /*!< Offset: 0x010 (R/W)  MPU Region Attribute and Size Re
1291:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR_A1;                 /*!< Offset: 0x014 (R/W)  MPU Alias 1 Region Base Address 
1292:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR_A1;                 /*!< Offset: 0x018 (R/W)  MPU Alias 1 Region Attribute and
1293:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR_A2;                 /*!< Offset: 0x01C (R/W)  MPU Alias 2 Region Base Address 
1294:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR_A2;                 /*!< Offset: 0x020 (R/W)  MPU Alias 2 Region Attribute and
1295:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RBAR_A3;                 /*!< Offset: 0x024 (R/W)  MPU Alias 3 Region Base Address 
1296:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t RASR_A3;                 /*!< Offset: 0x028 (R/W)  MPU Alias 3 Region Attribute and
1297:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } MPU_Type;
1298:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1299:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Type Register */
1300:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_IREGION_Pos               16                                             /*!< MPU 
1301:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_IREGION_Msk               (0xFFUL << MPU_TYPE_IREGION_Pos)               /*!< MPU 
1302:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1303:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_DREGION_Pos                8                                             /*!< MPU 
1304:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_DREGION_Msk               (0xFFUL << MPU_TYPE_DREGION_Pos)               /*!< MPU 
1305:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1306:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_SEPARATE_Pos               0                                             /*!< MPU 
1307:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_SEPARATE_Msk              (1UL << MPU_TYPE_SEPARATE_Pos)                 /*!< MPU 
1308:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1309:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Control Register */
1310:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_PRIVDEFENA_Pos             2                                             /*!< MPU 
1311:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_PRIVDEFENA_Msk            (1UL << MPU_CTRL_PRIVDEFENA_Pos)               /*!< MPU 
1312:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1313:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_HFNMIENA_Pos               1                                             /*!< MPU 
1314:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_HFNMIENA_Msk              (1UL << MPU_CTRL_HFNMIENA_Pos)                 /*!< MPU 
1315:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1316:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_ENABLE_Pos                 0                                             /*!< MPU 
1317:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_ENABLE_Msk                (1UL << MPU_CTRL_ENABLE_Pos)                   /*!< MPU 
1318:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1319:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Region Number Register */
1320:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RNR_REGION_Pos                  0                                             /*!< MPU 
1321:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RNR_REGION_Msk                 (0xFFUL << MPU_RNR_REGION_Pos)                 /*!< MPU 
1322:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1323:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Region Base Address Register */
1324:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_ADDR_Pos                   5                                             /*!< MPU 
1325:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_ADDR_Msk                  (0x7FFFFFFUL << MPU_RBAR_ADDR_Pos)             /*!< MPU 
1326:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1327:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_VALID_Pos                  4                                             /*!< MPU 
ARM GAS  /tmp/ccQNhOlE.s 			page 64


1328:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_VALID_Msk                 (1UL << MPU_RBAR_VALID_Pos)                    /*!< MPU 
1329:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1330:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_REGION_Pos                 0                                             /*!< MPU 
1331:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_REGION_Msk                (0xFUL << MPU_RBAR_REGION_Pos)                 /*!< MPU 
1332:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1333:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* MPU Region Attribute and Size Register */
1334:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ATTRS_Pos                 16                                             /*!< MPU 
1335:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ATTRS_Msk                 (0xFFFFUL << MPU_RASR_ATTRS_Pos)               /*!< MPU 
1336:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1337:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_XN_Pos                    28                                             /*!< MPU 
1338:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_XN_Msk                    (1UL << MPU_RASR_XN_Pos)                       /*!< MPU 
1339:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1340:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_AP_Pos                    24                                             /*!< MPU 
1341:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_AP_Msk                    (0x7UL << MPU_RASR_AP_Pos)                     /*!< MPU 
1342:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1343:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_TEX_Pos                   19                                             /*!< MPU 
1344:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_TEX_Msk                   (0x7UL << MPU_RASR_TEX_Pos)                    /*!< MPU 
1345:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1346:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_S_Pos                     18                                             /*!< MPU 
1347:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_S_Msk                     (1UL << MPU_RASR_S_Pos)                        /*!< MPU 
1348:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1349:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_C_Pos                     17                                             /*!< MPU 
1350:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_C_Msk                     (1UL << MPU_RASR_C_Pos)                        /*!< MPU 
1351:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1352:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_B_Pos                     16                                             /*!< MPU 
1353:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_B_Msk                     (1UL << MPU_RASR_B_Pos)                        /*!< MPU 
1354:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1355:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SRD_Pos                    8                                             /*!< MPU 
1356:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SRD_Msk                   (0xFFUL << MPU_RASR_SRD_Pos)                   /*!< MPU 
1357:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1358:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SIZE_Pos                   1                                             /*!< MPU 
1359:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SIZE_Msk                  (0x1FUL << MPU_RASR_SIZE_Pos)                  /*!< MPU 
1360:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1361:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ENABLE_Pos                 0                                             /*!< MPU 
1362:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ENABLE_Msk                (1UL << MPU_RASR_ENABLE_Pos)                   /*!< MPU 
1363:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1364:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_MPU */
1365:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
1366:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1367:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1368:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__FPU_PRESENT == 1)
1369:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
1370:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_FPU     Floating Point Unit (FPU)
1371:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Floating Point Unit (FPU)
1372:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1373:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1374:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1375:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Floating Point Unit (FPU).
1376:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1377:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1378:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1379:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****        uint32_t RESERVED0[1];
1380:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FPCCR;                   /*!< Offset: 0x004 (R/W)  Floating-Point Context Control R
1381:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FPCAR;                   /*!< Offset: 0x008 (R/W)  Floating-Point Context Address R
1382:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t FPDSCR;                  /*!< Offset: 0x00C (R/W)  Floating-Point Default Status Co
1383:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR0;                   /*!< Offset: 0x010 (R/ )  Media and FP Feature Register 0 
1384:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR1;                   /*!< Offset: 0x014 (R/ )  Media and FP Feature Register 1 
ARM GAS  /tmp/ccQNhOlE.s 			page 65


1385:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __I  uint32_t MVFR2;                   /*!< Offset: 0x018 (R/ )  Media and FP Feature Register 2 
1386:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } FPU_Type;
1387:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1388:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Floating-Point Context Control Register */
1389:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_ASPEN_Pos                31                                             /*!< FPCC
1390:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_ASPEN_Msk                (1UL << FPU_FPCCR_ASPEN_Pos)                   /*!< FPCC
1391:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1392:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPEN_Pos                30                                             /*!< FPCC
1393:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPEN_Msk                (1UL << FPU_FPCCR_LSPEN_Pos)                   /*!< FPCC
1394:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1395:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MONRDY_Pos                8                                             /*!< FPCC
1396:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MONRDY_Msk               (1UL << FPU_FPCCR_MONRDY_Pos)                  /*!< FPCC
1397:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1398:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_BFRDY_Pos                 6                                             /*!< FPCC
1399:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_BFRDY_Msk                (1UL << FPU_FPCCR_BFRDY_Pos)                   /*!< FPCC
1400:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1401:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MMRDY_Pos                 5                                             /*!< FPCC
1402:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MMRDY_Msk                (1UL << FPU_FPCCR_MMRDY_Pos)                   /*!< FPCC
1403:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1404:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_HFRDY_Pos                 4                                             /*!< FPCC
1405:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_HFRDY_Msk                (1UL << FPU_FPCCR_HFRDY_Pos)                   /*!< FPCC
1406:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1407:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_THREAD_Pos                3                                             /*!< FPCC
1408:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_THREAD_Msk               (1UL << FPU_FPCCR_THREAD_Pos)                  /*!< FPCC
1409:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1410:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_USER_Pos                  1                                             /*!< FPCC
1411:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_USER_Msk                 (1UL << FPU_FPCCR_USER_Pos)                    /*!< FPCC
1412:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1413:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPACT_Pos                0                                             /*!< FPCC
1414:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPACT_Msk               (1UL << FPU_FPCCR_LSPACT_Pos)                  /*!< FPCC
1415:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1416:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Floating-Point Context Address Register */
1417:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCAR_ADDRESS_Pos               3                                             /*!< FPCA
1418:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPCAR_ADDRESS_Msk              (0x1FFFFFFFUL << FPU_FPCAR_ADDRESS_Pos)        /*!< FPCA
1419:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1420:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Floating-Point Default Status Control Register */
1421:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_AHP_Pos                 26                                             /*!< FPDS
1422:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_AHP_Msk                 (1UL << FPU_FPDSCR_AHP_Pos)                    /*!< FPDS
1423:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1424:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_DN_Pos                  25                                             /*!< FPDS
1425:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_DN_Msk                  (1UL << FPU_FPDSCR_DN_Pos)                     /*!< FPDS
1426:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1427:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_FZ_Pos                  24                                             /*!< FPDS
1428:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_FZ_Msk                  (1UL << FPU_FPDSCR_FZ_Pos)                     /*!< FPDS
1429:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1430:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_RMode_Pos               22                                             /*!< FPDS
1431:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_RMode_Msk               (3UL << FPU_FPDSCR_RMode_Pos)                  /*!< FPDS
1432:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1433:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Media and FP Feature Register 0 */
1434:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_rounding_modes_Pos    28                                             /*!< MVFR
1435:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_rounding_modes_Msk    (0xFUL << FPU_MVFR0_FP_rounding_modes_Pos)     /*!< MVFR
1436:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1437:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Short_vectors_Pos        24                                             /*!< MVFR
1438:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Short_vectors_Msk        (0xFUL << FPU_MVFR0_Short_vectors_Pos)         /*!< MVFR
1439:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1440:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Square_root_Pos          20                                             /*!< MVFR
1441:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Square_root_Msk          (0xFUL << FPU_MVFR0_Square_root_Pos)           /*!< MVFR
ARM GAS  /tmp/ccQNhOlE.s 			page 66


1442:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1443:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Divide_Pos               16                                             /*!< MVFR
1444:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Divide_Msk               (0xFUL << FPU_MVFR0_Divide_Pos)                /*!< MVFR
1445:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1446:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_excep_trapping_Pos    12                                             /*!< MVFR
1447:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_excep_trapping_Msk    (0xFUL << FPU_MVFR0_FP_excep_trapping_Pos)     /*!< MVFR
1448:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1449:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Double_precision_Pos      8                                             /*!< MVFR
1450:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Double_precision_Msk     (0xFUL << FPU_MVFR0_Double_precision_Pos)      /*!< MVFR
1451:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1452:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Single_precision_Pos      4                                             /*!< MVFR
1453:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Single_precision_Msk     (0xFUL << FPU_MVFR0_Single_precision_Pos)      /*!< MVFR
1454:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1455:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_A_SIMD_registers_Pos      0                                             /*!< MVFR
1456:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_A_SIMD_registers_Msk     (0xFUL << FPU_MVFR0_A_SIMD_registers_Pos)      /*!< MVFR
1457:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1458:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Media and FP Feature Register 1 */
1459:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_fused_MAC_Pos         28                                             /*!< MVFR
1460:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_fused_MAC_Msk         (0xFUL << FPU_MVFR1_FP_fused_MAC_Pos)          /*!< MVFR
1461:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1462:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_HPFP_Pos              24                                             /*!< MVFR
1463:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_HPFP_Msk              (0xFUL << FPU_MVFR1_FP_HPFP_Pos)               /*!< MVFR
1464:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1465:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_D_NaN_mode_Pos            4                                             /*!< MVFR
1466:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_D_NaN_mode_Msk           (0xFUL << FPU_MVFR1_D_NaN_mode_Pos)            /*!< MVFR
1467:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1468:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FtZ_mode_Pos              0                                             /*!< MVFR
1469:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FtZ_mode_Msk             (0xFUL << FPU_MVFR1_FtZ_mode_Pos)              /*!< MVFR
1470:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1471:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Media and FP Feature Register 2 */
1472:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1473:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_FPU */
1474:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
1475:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1476:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1477:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_core_register
1478:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_CoreDebug       Core Debug Registers (CoreDebug)
1479:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Type definitions for the Core Debug Registers
1480:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1481:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1482:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1483:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Structure type to access the Core Debug Register (CoreDebug).
1484:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1485:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** typedef struct
1486:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1487:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DHCSR;                   /*!< Offset: 0x000 (R/W)  Debug Halting Control and Status
1488:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __O  uint32_t DCRSR;                   /*!< Offset: 0x004 ( /W)  Debug Core Register Selector Reg
1489:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DCRDR;                   /*!< Offset: 0x008 (R/W)  Debug Core Register Data Registe
1490:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   __IO uint32_t DEMCR;                   /*!< Offset: 0x00C (R/W)  Debug Exception and Monitor Cont
1491:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** } CoreDebug_Type;
1492:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1493:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Debug Halting Control and Status Register */
1494:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_DBGKEY_Pos         16                                             /*!< Core
1495:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_DBGKEY_Msk         (0xFFFFUL << CoreDebug_DHCSR_DBGKEY_Pos)       /*!< Core
1496:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1497:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RESET_ST_Pos     25                                             /*!< Core
1498:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RESET_ST_Msk     (1UL << CoreDebug_DHCSR_S_RESET_ST_Pos)        /*!< Core
ARM GAS  /tmp/ccQNhOlE.s 			page 67


1499:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1500:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Pos    24                                             /*!< Core
1501:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Msk    (1UL << CoreDebug_DHCSR_S_RETIRE_ST_Pos)       /*!< Core
1502:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1503:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_LOCKUP_Pos       19                                             /*!< Core
1504:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_LOCKUP_Msk       (1UL << CoreDebug_DHCSR_S_LOCKUP_Pos)          /*!< Core
1505:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1506:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_SLEEP_Pos        18                                             /*!< Core
1507:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_SLEEP_Msk        (1UL << CoreDebug_DHCSR_S_SLEEP_Pos)           /*!< Core
1508:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1509:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_HALT_Pos         17                                             /*!< Core
1510:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_HALT_Msk         (1UL << CoreDebug_DHCSR_S_HALT_Pos)            /*!< Core
1511:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1512:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_REGRDY_Pos       16                                             /*!< Core
1513:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_REGRDY_Msk       (1UL << CoreDebug_DHCSR_S_REGRDY_Pos)          /*!< Core
1514:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1515:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Pos     5                                             /*!< Core
1516:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Msk    (1UL << CoreDebug_DHCSR_C_SNAPSTALL_Pos)       /*!< Core
1517:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1518:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_MASKINTS_Pos      3                                             /*!< Core
1519:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_MASKINTS_Msk     (1UL << CoreDebug_DHCSR_C_MASKINTS_Pos)        /*!< Core
1520:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1521:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_STEP_Pos          2                                             /*!< Core
1522:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_STEP_Msk         (1UL << CoreDebug_DHCSR_C_STEP_Pos)            /*!< Core
1523:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1524:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_HALT_Pos          1                                             /*!< Core
1525:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_HALT_Msk         (1UL << CoreDebug_DHCSR_C_HALT_Pos)            /*!< Core
1526:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1527:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Pos       0                                             /*!< Core
1528:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Msk      (1UL << CoreDebug_DHCSR_C_DEBUGEN_Pos)         /*!< Core
1529:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1530:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Debug Core Register Selector Register */
1531:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGWnR_Pos         16                                             /*!< Core
1532:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGWnR_Msk         (1UL << CoreDebug_DCRSR_REGWnR_Pos)            /*!< Core
1533:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1534:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGSEL_Pos          0                                             /*!< Core
1535:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGSEL_Msk         (0x1FUL << CoreDebug_DCRSR_REGSEL_Pos)         /*!< Core
1536:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1537:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Debug Exception and Monitor Control Register */
1538:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_TRCENA_Pos         24                                             /*!< Core
1539:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_TRCENA_Msk         (1UL << CoreDebug_DEMCR_TRCENA_Pos)            /*!< Core
1540:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1541:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_REQ_Pos        19                                             /*!< Core
1542:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_REQ_Msk        (1UL << CoreDebug_DEMCR_MON_REQ_Pos)           /*!< Core
1543:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1544:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_STEP_Pos       18                                             /*!< Core
1545:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_STEP_Msk       (1UL << CoreDebug_DEMCR_MON_STEP_Pos)          /*!< Core
1546:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1547:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_PEND_Pos       17                                             /*!< Core
1548:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_PEND_Msk       (1UL << CoreDebug_DEMCR_MON_PEND_Pos)          /*!< Core
1549:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1550:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_EN_Pos         16                                             /*!< Core
1551:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_EN_Msk         (1UL << CoreDebug_DEMCR_MON_EN_Pos)            /*!< Core
1552:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1553:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_HARDERR_Pos     10                                             /*!< Core
1554:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_HARDERR_Msk     (1UL << CoreDebug_DEMCR_VC_HARDERR_Pos)        /*!< Core
1555:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/ccQNhOlE.s 			page 68


1556:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_INTERR_Pos       9                                             /*!< Core
1557:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_INTERR_Msk      (1UL << CoreDebug_DEMCR_VC_INTERR_Pos)         /*!< Core
1558:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1559:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_BUSERR_Pos       8                                             /*!< Core
1560:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_BUSERR_Msk      (1UL << CoreDebug_DEMCR_VC_BUSERR_Pos)         /*!< Core
1561:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1562:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_STATERR_Pos      7                                             /*!< Core
1563:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_STATERR_Msk     (1UL << CoreDebug_DEMCR_VC_STATERR_Pos)        /*!< Core
1564:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1565:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CHKERR_Pos       6                                             /*!< Core
1566:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CHKERR_Msk      (1UL << CoreDebug_DEMCR_VC_CHKERR_Pos)         /*!< Core
1567:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1568:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Pos      5                                             /*!< Core
1569:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Msk     (1UL << CoreDebug_DEMCR_VC_NOCPERR_Pos)        /*!< Core
1570:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1571:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_MMERR_Pos        4                                             /*!< Core
1572:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_MMERR_Msk       (1UL << CoreDebug_DEMCR_VC_MMERR_Pos)          /*!< Core
1573:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1574:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CORERESET_Pos    0                                             /*!< Core
1575:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CORERESET_Msk   (1UL << CoreDebug_DEMCR_VC_CORERESET_Pos)      /*!< Core
1576:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1577:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_CoreDebug */
1578:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1579:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1580:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup    CMSIS_core_register
1581:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup   CMSIS_core_base     Core Definitions
1582:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Definitions for base addresses, unions, and structures.
1583:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   @{
1584:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1585:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1586:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* Memory mapping of Cortex-M4 Hardware */
1587:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCS_BASE            (0xE000E000UL)                            /*!< System Control Space Bas
1588:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM_BASE            (0xE0000000UL)                            /*!< ITM Base Address        
1589:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT_BASE            (0xE0001000UL)                            /*!< DWT Base Address        
1590:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI_BASE            (0xE0040000UL)                            /*!< TPI Base Address        
1591:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug_BASE      (0xE000EDF0UL)                            /*!< Core Debug Base Address 
1592:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick_BASE        (SCS_BASE +  0x0010UL)                    /*!< SysTick Base Address    
1593:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC_BASE           (SCS_BASE +  0x0100UL)                    /*!< NVIC Base Address       
1594:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB_BASE            (SCS_BASE +  0x0D00UL)                    /*!< System Control Block Bas
1595:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1596:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCnSCB              ((SCnSCB_Type    *)     SCS_BASE      )   /*!< System control Register 
1597:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SCB                 ((SCB_Type       *)     SCB_BASE      )   /*!< SCB configuration struct
1598:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define SysTick             ((SysTick_Type   *)     SysTick_BASE  )   /*!< SysTick configuration st
1599:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define NVIC                ((NVIC_Type      *)     NVIC_BASE     )   /*!< NVIC configuration struc
1600:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define ITM                 ((ITM_Type       *)     ITM_BASE      )   /*!< ITM configuration struct
1601:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define DWT                 ((DWT_Type       *)     DWT_BASE      )   /*!< DWT configuration struct
1602:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define TPI                 ((TPI_Type       *)     TPI_BASE      )   /*!< TPI configuration struct
1603:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #define CoreDebug           ((CoreDebug_Type *)     CoreDebug_BASE)   /*!< Core Debug configuration
1604:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1605:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__MPU_PRESENT == 1)
1606:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define MPU_BASE          (SCS_BASE +  0x0D90UL)                    /*!< Memory Protection Unit  
1607:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define MPU               ((MPU_Type       *)     MPU_BASE      )   /*!< Memory Protection Unit  
1608:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
1609:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1610:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #if (__FPU_PRESENT == 1)
1611:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define FPU_BASE          (SCS_BASE +  0x0F30UL)                    /*!< Floating Point Unit     
1612:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   #define FPU               ((FPU_Type       *)     FPU_BASE      )   /*!< Floating Point Unit     
ARM GAS  /tmp/ccQNhOlE.s 			page 69


1613:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** #endif
1614:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1615:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*@} */
1616:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1617:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1618:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1619:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*******************************************************************************
1620:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  *                Hardware Abstraction Layer
1621:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   Core Function Interface contains:
1622:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core NVIC Functions
1623:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core SysTick Functions
1624:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Debug Functions
1625:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   - Core Register Access Functions
1626:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
1627:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \defgroup CMSIS_Core_FunctionInterface Functions and Instructions Reference
1628:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** */
1629:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1630:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1631:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1632:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /* ##########################   NVIC functions  #################################### */
1633:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \ingroup  CMSIS_Core_FunctionInterface
1634:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_Core_NVICFunctions NVIC Functions
1635:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \brief      Functions that manage interrupts and exceptions via the NVIC.
1636:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     @{
1637:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1638:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1639:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Set Priority Grouping
1640:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1641:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   The function sets the priority grouping field using the required unlock sequence.
1642:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   The parameter PriorityGroup is assigned to the field SCB->AIRCR [10:8] PRIGROUP field.
1643:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   Only values from 0..7 are used.
1644:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   In case of a conflict between priority grouping and available
1645:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
1646:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1647:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      PriorityGroup  Priority grouping field.
1648:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1649:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
1650:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1651:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t reg_value;
1652:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07);               /* only values 0..7 a
1653:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1654:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   reg_value  =  SCB->AIRCR;                                                   /* read old register 
1655:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   reg_value &= ~(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk);             /* clear bits to chan
1656:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   reg_value  =  (reg_value                                 |
1657:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                 ((uint32_t)0x5FA << SCB_AIRCR_VECTKEY_Pos) |
1658:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****                 (PriorityGroupTmp << 8));                                     /* Insert write key a
1659:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   SCB->AIRCR =  reg_value;
1660:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1661:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1662:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1663:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Get Priority Grouping
1664:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1665:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   The function reads the priority grouping field from the NVIC Interrupt Controller.
1666:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1667:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return                Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field).
1668:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1669:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetPriorityGrouping(void)
ARM GAS  /tmp/ccQNhOlE.s 			page 70


1670:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1671:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   return ((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos);   /* read priority grou
1672:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1673:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1674:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1675:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Enable External Interrupt
1676:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1677:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function enables a device-specific interrupt in the NVIC interrupt controller.
1678:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1679:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  External interrupt number. Value cannot be negative.
1680:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1681:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_EnableIRQ(IRQn_Type IRQn)
1682:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1683:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /*  NVIC->ISER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F));  enable interrupt */
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ISER[(uint32_t)((int32_t)IRQn) >> 5] = (uint32_t)(1 << ((uint32_t)((int32_t)IRQn) & (uint32
1685:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1686:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1687:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1688:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Disable External Interrupt
1689:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1690:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function disables a device-specific interrupt in the NVIC interrupt controller.
1691:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1692:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  External interrupt number. Value cannot be negative.
1693:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1694:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_DisableIRQ(IRQn_Type IRQn)
1695:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1696:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ICER[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* disable interrupt */
1697:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1698:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1699:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1700:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Get Pending Interrupt
1701:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1702:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function reads the pending register in the NVIC and returns the pending bit
1703:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     for the specified interrupt.
1704:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1705:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  Interrupt number.
1706:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1707:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             0  Interrupt status is not pending.
1708:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             1  Interrupt status is pending.
1709:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1710:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
1711:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1712:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   return((uint32_t) ((NVIC->ISPR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0)); 
1713:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1714:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1715:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1716:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Set Pending Interrupt
1717:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1718:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function sets the pending bit of an external interrupt.
1719:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1720:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  Interrupt number. Value cannot be negative.
1721:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1722:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SetPendingIRQ(IRQn_Type IRQn)
1723:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1724:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ISPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* set interrupt pending 
1725:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1726:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
ARM GAS  /tmp/ccQNhOlE.s 			page 71


1727:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1728:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Clear Pending Interrupt
1729:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1730:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function clears the pending bit of an external interrupt.
1731:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1732:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  External interrupt number. Value cannot be negative.
1733:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1734:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
1735:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1736:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   NVIC->ICPR[((uint32_t)(IRQn) >> 5)] = (1 << ((uint32_t)(IRQn) & 0x1F)); /* Clear pending interrup
1737:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1738:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1739:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1740:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Get Active Interrupt
1741:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1742:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function reads the active register in NVIC and returns the active bit.
1743:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1744:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  Interrupt number.
1745:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1746:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             0  Interrupt status is not active.
1747:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \return             1  Interrupt status is active.
1748:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1749:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetActive(IRQn_Type IRQn)
1750:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1751:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   return((uint32_t)((NVIC->IABR[(uint32_t)(IRQn) >> 5] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0)); /
1752:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
1753:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1754:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1755:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** /** \brief  Set Interrupt Priority
1756:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1757:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     The function sets the priority of an interrupt.
1758:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1759:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \note The priority cannot be set for every core interrupt.
1760:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** 
1761:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]      IRQn  Interrupt number.
1762:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     \param [in]  priority  Priority to set.
1763:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****  */
1764:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
1765:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** {
1766:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   if(IRQn < 0) {
1767:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     SCB->SHPR[((uint32_t)(IRQn) & 0xF)-4] = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff); } /* set
1768:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****   else {
1769:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h ****     NVIC->IP[(uint32_t)(IRQn)]            = ((priority << (8 - __NVIC_PRIO_BITS)) & 0xff); } /* set
 858              		.loc 3 1769 0
 859 0008 5B01     		lsls	r3, r3, #5
 860              	.LVL66:
 861              	.LBE93:
 862              	.LBE92:
 863              	.LBB96:
 864              	.LBB97:
1736:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 865              		.loc 3 1736 0
 866 000a 114C     		ldr	r4, .L100+4
 867 000c 4FF00055 		mov	r5, #536870912
 868              	.LBE97:
 869              	.LBE96:
 428:../asf/sam/drivers/afec/afec.c **** 	if (!i) {
ARM GAS  /tmp/ccQNhOlE.s 			page 72


 870              		.loc 1 428 0
 871 0010 104E     		ldr	r6, .L100+8
 872              	.LBB99:
 873              	.LBB94:
 874              		.loc 3 1769 0
 875 0012 DBB2     		uxtb	r3, r3
 876              	.LBE94:
 877              	.LBE99:
 428:../asf/sam/drivers/afec/afec.c **** 	if (!i) {
 878              		.loc 1 428 0
 879 0014 46F82120 		str	r2, [r6, r1, lsl #2]
 880              	.LVL67:
 881              	.LBB100:
 882              	.LBB98:
1736:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 883              		.loc 3 1736 0
 884 0018 C4F88051 		str	r5, [r4, #384]
 885              	.LVL68:
 886              	.LBE98:
 887              	.LBE100:
 888              	.LBB101:
 889              	.LBB95:
 890              		.loc 3 1769 0
 891 001c 84F81D33 		strb	r3, [r4, #797]
 892              	.LVL69:
 893              	.LBE95:
 894              	.LBE101:
 895              	.LBB102:
 896              	.LBB103:
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 897              		.loc 3 1684 0
 898 0020 2560     		str	r5, [r4]
 899              	.LBE103:
 900              	.LBE102:
 436:../asf/sam/drivers/afec/afec.c **** 
 901              		.loc 1 436 0
 902 0022 F0BC     		pop	{r4, r5, r6, r7}
 903              		.cfi_remember_state
 904              		.cfi_restore 7
 905              		.cfi_restore 6
 906              		.cfi_restore 5
 907              		.cfi_restore 4
 908              		.cfi_def_cfa_offset 0
 435:../asf/sam/drivers/afec/afec.c **** }
 909              		.loc 1 435 0
 910 0024 FFF7FEBF 		b	afec_enable_interrupt
 911              	.LVL70:
 912              	.L99:
 913              		.cfi_restore_state
 914              	.LBB104:
 915              	.LBB105:
 916              		.loc 3 1769 0
 917 0028 5B01     		lsls	r3, r3, #5
 918              	.LVL71:
 919              	.LBE105:
 920              	.LBE104:
 921              	.LBB108:
ARM GAS  /tmp/ccQNhOlE.s 			page 73


 922              	.LBB109:
1736:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 923              		.loc 3 1736 0
 924 002a 094C     		ldr	r4, .L100+4
 925 002c 4FF48076 		mov	r6, #256
 926              	.LBE109:
 927              	.LBE108:
 428:../asf/sam/drivers/afec/afec.c **** 	if (!i) {
 928              		.loc 1 428 0
 929 0030 084F     		ldr	r7, .L100+8
 930 0032 01F11005 		add	r5, r1, #16
 931              	.LBB111:
 932              	.LBB106:
 933              		.loc 3 1769 0
 934 0036 DBB2     		uxtb	r3, r3
 935              	.LBE106:
 936              	.LBE111:
 428:../asf/sam/drivers/afec/afec.c **** 	if (!i) {
 937              		.loc 1 428 0
 938 0038 47F82520 		str	r2, [r7, r5, lsl #2]
 939              	.LVL72:
 940              	.LBB112:
 941              	.LBB110:
1736:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 942              		.loc 3 1736 0
 943 003c C4F88461 		str	r6, [r4, #388]
 944              	.LVL73:
 945              	.LBE110:
 946              	.LBE112:
 947              	.LBB113:
 948              	.LBB107:
 949              		.loc 3 1769 0
 950 0040 84F82833 		strb	r3, [r4, #808]
 951              	.LVL74:
 952              	.LBE107:
 953              	.LBE113:
 954              	.LBB114:
 955              	.LBB115:
1684:/home/torbjorn/eclipse-workspace/CoreNG/asf/thirdparty/CMSIS/Include/core_cm7.h **** }
 956              		.loc 3 1684 0
 957 0044 6660     		str	r6, [r4, #4]
 958              	.LBE115:
 959              	.LBE114:
 436:../asf/sam/drivers/afec/afec.c **** 
 960              		.loc 1 436 0
 961 0046 F0BC     		pop	{r4, r5, r6, r7}
 962              		.cfi_restore 4
 963              		.cfi_restore 5
 964              		.cfi_restore 6
 965              		.cfi_restore 7
 966              		.cfi_def_cfa_offset 0
 435:../asf/sam/drivers/afec/afec.c **** }
 967              		.loc 1 435 0
 968 0048 FFF7FEBF 		b	afec_enable_interrupt
 969              	.LVL75:
 970              	.L101:
 971              		.align	2
ARM GAS  /tmp/ccQNhOlE.s 			page 74


 972              	.L100:
 973 004c 00400640 		.word	1074151424
 974 0050 00E100E0 		.word	-536813312
 975 0054 00000000 		.word	afec_callback_pointer
 976              		.cfi_endproc
 977              	.LFE197:
 978              		.size	afec_set_callback, .-afec_set_callback
 979              		.section	.text.afec_disable_interrupt,"ax",%progbits
 980              		.align	1
 981              		.p2align 2,,3
 982              		.global	afec_disable_interrupt
 983              		.syntax unified
 984              		.thumb
 985              		.thumb_func
 986              		.fpu fpv5-d16
 987              		.type	afec_disable_interrupt, %function
 988              	afec_disable_interrupt:
 989              	.LFB199:
 479:../asf/sam/drivers/afec/afec.c **** 	if (interrupt_source == AFEC_INTERRUPT_ALL) {
 990              		.loc 1 479 0
 991              		.cfi_startproc
 992              		@ args = 0, pretend = 0, frame = 0
 993              		@ frame_needed = 0, uses_anonymous_args = 0
 994              		@ link register save eliminated.
 995              	.LVL76:
 480:../asf/sam/drivers/afec/afec.c **** 		afec->AFEC_IDR = AFEC_INTERRUPT_ALL;
 996              		.loc 1 480 0
 997 0000 0B4B     		ldr	r3, .L112
 998 0002 9942     		cmp	r1, r3
 999 0004 07D0     		beq	.L109
 485:../asf/sam/drivers/afec/afec.c **** 	  #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 1000              		.loc 1 485 0
 1001 0006 0B29     		cmp	r1, #11
 1002 0008 07D9     		bls	.L110
 496:../asf/sam/drivers/afec/afec.c **** 		afec->AFEC_IDR = 1 << (interrupt_source + AFEC_INTERRUPT_GAP1);
 1003              		.loc 1 496 0
 1004 000a 0E29     		cmp	r1, #14
 1005 000c 0AD9     		bls	.L111
 500:../asf/sam/drivers/afec/afec.c **** 	}
 1006              		.loc 1 500 0
 1007 000e 0F31     		adds	r1, r1, #15
 1008              	.LVL77:
 1009              	.L108:
 499:../asf/sam/drivers/afec/afec.c **** 				+ AFEC_INTERRUPT_GAP2);
 1010              		.loc 1 499 0
 1011 0010 0123     		movs	r3, #1
 1012 0012 03FA01F1 		lsl	r1, r3, r1
 1013              	.L109:
 1014 0016 8162     		str	r1, [r0, #40]
 1015 0018 7047     		bx	lr
 1016              	.LVL78:
 1017              	.L110:
 487:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_IDR = 1 << AFEC_TEMP_INT_SOURCE_NUM;
 1018              		.loc 1 487 0
 1019 001a F9D1     		bne	.L108
 488:../asf/sam/drivers/afec/afec.c **** 	  #else
 1020              		.loc 1 488 0
ARM GAS  /tmp/ccQNhOlE.s 			page 75


 1021 001c 4FF40063 		mov	r3, #2048
 1022 0020 8362     		str	r3, [r0, #40]
 1023 0022 7047     		bx	lr
 1024              	.L111:
 497:../asf/sam/drivers/afec/afec.c **** 	} else {
 1025              		.loc 1 497 0
 1026 0024 0C31     		adds	r1, r1, #12
 1027              	.LVL79:
 1028 0026 0123     		movs	r3, #1
 1029 0028 03FA01F1 		lsl	r1, r3, r1
 1030              	.LVL80:
 1031 002c 8162     		str	r1, [r0, #40]
 1032 002e 7047     		bx	lr
 1033              	.L113:
 1034              		.align	2
 1035              	.L112:
 1036 0030 FF0F0047 		.word	1191186431
 1037              		.cfi_endproc
 1038              	.LFE199:
 1039              		.size	afec_disable_interrupt, .-afec_disable_interrupt
 1040              		.section	.text.AFEC0_Handler,"ax",%progbits
 1041              		.align	1
 1042              		.p2align 2,,3
 1043              		.global	AFEC0_Handler
 1044              		.syntax unified
 1045              		.thumb
 1046              		.thumb_func
 1047              		.fpu fpv5-d16
 1048              		.type	AFEC0_Handler, %function
 1049              	AFEC0_Handler:
 1050              	.LFB202:
 564:../asf/sam/drivers/afec/afec.c **** 
 565:../asf/sam/drivers/afec/afec.c **** /**
 566:../asf/sam/drivers/afec/afec.c ****  * \brief Interrupt handler for AFEC0.
 567:../asf/sam/drivers/afec/afec.c ****  */
 568:../asf/sam/drivers/afec/afec.c **** void AFEC0_Handler(void)
 569:../asf/sam/drivers/afec/afec.c **** {
 1051              		.loc 1 569 0
 1052              		.cfi_startproc
 1053              		@ args = 0, pretend = 0, frame = 0
 1054              		@ frame_needed = 0, uses_anonymous_args = 0
 1055              		@ link register save eliminated.
 570:../asf/sam/drivers/afec/afec.c **** 	afec_process_callback(AFEC0);
 1056              		.loc 1 570 0
 1057 0000 0148     		ldr	r0, .L115
 1058 0002 FFF7FEBF 		b	afec_process_callback
 1059              	.LVL81:
 1060              	.L116:
 1061 0006 00BF     		.align	2
 1062              	.L115:
 1063 0008 00C00340 		.word	1073987584
 1064              		.cfi_endproc
 1065              	.LFE202:
 1066              		.size	AFEC0_Handler, .-AFEC0_Handler
 1067              		.section	.text.AFEC1_Handler,"ax",%progbits
 1068              		.align	1
 1069              		.p2align 2,,3
ARM GAS  /tmp/ccQNhOlE.s 			page 76


 1070              		.global	AFEC1_Handler
 1071              		.syntax unified
 1072              		.thumb
 1073              		.thumb_func
 1074              		.fpu fpv5-d16
 1075              		.type	AFEC1_Handler, %function
 1076              	AFEC1_Handler:
 1077              	.LFB203:
 571:../asf/sam/drivers/afec/afec.c **** }
 572:../asf/sam/drivers/afec/afec.c **** 
 573:../asf/sam/drivers/afec/afec.c **** /**
 574:../asf/sam/drivers/afec/afec.c ****  * \brief Interrupt handler for AFEC1.
 575:../asf/sam/drivers/afec/afec.c ****  */
 576:../asf/sam/drivers/afec/afec.c **** void AFEC1_Handler(void)
 577:../asf/sam/drivers/afec/afec.c **** {
 1078              		.loc 1 577 0
 1079              		.cfi_startproc
 1080              		@ args = 0, pretend = 0, frame = 0
 1081              		@ frame_needed = 0, uses_anonymous_args = 0
 1082              		@ link register save eliminated.
 578:../asf/sam/drivers/afec/afec.c **** 	afec_process_callback(AFEC1);
 1083              		.loc 1 578 0
 1084 0000 0148     		ldr	r0, .L118
 1085 0002 FFF7FEBF 		b	afec_process_callback
 1086              	.LVL82:
 1087              	.L119:
 1088 0006 00BF     		.align	2
 1089              	.L118:
 1090 0008 00400640 		.word	1074151424
 1091              		.cfi_endproc
 1092              	.LFE203:
 1093              		.size	AFEC1_Handler, .-AFEC1_Handler
 1094              		.section	.text.afec_enable,"ax",%progbits
 1095              		.align	1
 1096              		.p2align 2,,3
 1097              		.global	afec_enable
 1098              		.syntax unified
 1099              		.thumb
 1100              		.thumb_func
 1101              		.fpu fpv5-d16
 1102              		.type	afec_enable, %function
 1103              	afec_enable:
 1104              	.LFB204:
 579:../asf/sam/drivers/afec/afec.c **** }
 580:../asf/sam/drivers/afec/afec.c **** 
 581:../asf/sam/drivers/afec/afec.c **** /**
 582:../asf/sam/drivers/afec/afec.c ****  * \brief Enable AFEC Module.
 583:../asf/sam/drivers/afec/afec.c ****  *
 584:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC
 585:../asf/sam/drivers/afec/afec.c ****  */
 586:../asf/sam/drivers/afec/afec.c **** void afec_enable(Afec *const afec)
 587:../asf/sam/drivers/afec/afec.c **** {
 1105              		.loc 1 587 0
 1106              		.cfi_startproc
 1107              		@ args = 0, pretend = 0, frame = 0
 1108              		@ frame_needed = 0, uses_anonymous_args = 0
 1109              		@ link register save eliminated.
ARM GAS  /tmp/ccQNhOlE.s 			page 77


 1110              	.LVL83:
 1111              	.LBB116:
 1112              	.LBB117:
 135:../asf/sam/drivers/afec/afec.c **** 		return ID_AFEC1;
 1113              		.loc 1 135 0
 1114 0000 034B     		ldr	r3, .L123
 1115              	.LBE117:
 1116              	.LBE116:
 588:../asf/sam/drivers/afec/afec.c **** 	Assert(afec);
 589:../asf/sam/drivers/afec/afec.c **** 	uint32_t pid;
 590:../asf/sam/drivers/afec/afec.c **** 
 591:../asf/sam/drivers/afec/afec.c **** 	pid = afec_find_pid(afec);
 592:../asf/sam/drivers/afec/afec.c **** 	/* Enable peripheral clock. */
 593:../asf/sam/drivers/afec/afec.c **** 	pmc_enable_periph_clk(pid);
 1117              		.loc 1 593 0
 1118 0002 9842     		cmp	r0, r3
 1119 0004 0CBF     		ite	eq
 1120 0006 2820     		moveq	r0, #40
 1121 0008 1D20     		movne	r0, #29
 1122              	.LVL84:
 1123 000a FFF7FEBF 		b	pmc_enable_periph_clk
 1124              	.LVL85:
 1125              	.L124:
 1126 000e 00BF     		.align	2
 1127              	.L123:
 1128 0010 00400640 		.word	1074151424
 1129              		.cfi_endproc
 1130              	.LFE204:
 1131              		.size	afec_enable, .-afec_enable
 1132              		.section	.text.afec_disable,"ax",%progbits
 1133              		.align	1
 1134              		.p2align 2,,3
 1135              		.global	afec_disable
 1136              		.syntax unified
 1137              		.thumb
 1138              		.thumb_func
 1139              		.fpu fpv5-d16
 1140              		.type	afec_disable, %function
 1141              	afec_disable:
 1142              	.LFB205:
 594:../asf/sam/drivers/afec/afec.c **** 	sleepmgr_lock_mode(SLEEPMGR_SLEEP_WFI);
 595:../asf/sam/drivers/afec/afec.c **** }
 596:../asf/sam/drivers/afec/afec.c **** 
 597:../asf/sam/drivers/afec/afec.c **** /**
 598:../asf/sam/drivers/afec/afec.c ****  * \brief Disable AFEC Module.
 599:../asf/sam/drivers/afec/afec.c ****  *
 600:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC
 601:../asf/sam/drivers/afec/afec.c ****  */
 602:../asf/sam/drivers/afec/afec.c **** void afec_disable(Afec *const afec)
 603:../asf/sam/drivers/afec/afec.c **** {
 1143              		.loc 1 603 0
 1144              		.cfi_startproc
 1145              		@ args = 0, pretend = 0, frame = 0
 1146              		@ frame_needed = 0, uses_anonymous_args = 0
 1147              		@ link register save eliminated.
 1148              	.LVL86:
 1149              	.LBB118:
ARM GAS  /tmp/ccQNhOlE.s 			page 78


 1150              	.LBB119:
 135:../asf/sam/drivers/afec/afec.c **** 		return ID_AFEC1;
 1151              		.loc 1 135 0
 1152 0000 034B     		ldr	r3, .L128
 1153              	.LBE119:
 1154              	.LBE118:
 604:../asf/sam/drivers/afec/afec.c **** 	Assert(afec);
 605:../asf/sam/drivers/afec/afec.c **** 	uint32_t pid;
 606:../asf/sam/drivers/afec/afec.c **** 
 607:../asf/sam/drivers/afec/afec.c **** 	pid = afec_find_pid(afec);
 608:../asf/sam/drivers/afec/afec.c **** 	/* Disable peripheral clock. */
 609:../asf/sam/drivers/afec/afec.c **** 	pmc_disable_periph_clk(pid);
 1155              		.loc 1 609 0
 1156 0002 9842     		cmp	r0, r3
 1157 0004 0CBF     		ite	eq
 1158 0006 2820     		moveq	r0, #40
 1159 0008 1D20     		movne	r0, #29
 1160              	.LVL87:
 1161 000a FFF7FEBF 		b	pmc_disable_periph_clk
 1162              	.LVL88:
 1163              	.L129:
 1164 000e 00BF     		.align	2
 1165              	.L128:
 1166 0010 00400640 		.word	1074151424
 1167              		.cfi_endproc
 1168              	.LFE205:
 1169              		.size	afec_disable, .-afec_disable
 1170              		.section	.text.afec_configure_sequence,"ax",%progbits
 1171              		.align	1
 1172              		.p2align 2,,3
 1173              		.global	afec_configure_sequence
 1174              		.syntax unified
 1175              		.thumb
 1176              		.thumb_func
 1177              		.fpu fpv5-d16
 1178              		.type	afec_configure_sequence, %function
 1179              	afec_configure_sequence:
 1180              	.LFB206:
 610:../asf/sam/drivers/afec/afec.c **** 	sleepmgr_unlock_mode(SLEEPMGR_SLEEP_WFI);
 611:../asf/sam/drivers/afec/afec.c **** }
 612:../asf/sam/drivers/afec/afec.c **** 
 613:../asf/sam/drivers/afec/afec.c **** /**
 614:../asf/sam/drivers/afec/afec.c ****  * \brief Configure conversion sequence.
 615:../asf/sam/drivers/afec/afec.c ****  *
 616:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC.
 617:../asf/sam/drivers/afec/afec.c ****  * \param ch_list Channel sequence list.
 618:../asf/sam/drivers/afec/afec.c ****  * \param uc_num Number of channels in the list.
 619:../asf/sam/drivers/afec/afec.c ****  */
 620:../asf/sam/drivers/afec/afec.c **** void afec_configure_sequence(Afec *const afec,
 621:../asf/sam/drivers/afec/afec.c **** 		const enum afec_channel_num ch_list[], uint8_t uc_num)
 622:../asf/sam/drivers/afec/afec.c **** {
 1181              		.loc 1 622 0
 1182              		.cfi_startproc
 1183              		@ args = 0, pretend = 0, frame = 0
 1184              		@ frame_needed = 0, uses_anonymous_args = 0
 1185              		@ link register save eliminated.
 1186              	.LVL89:
ARM GAS  /tmp/ccQNhOlE.s 			page 79


 1187 0000 F0B4     		push	{r4, r5, r6, r7}
 1188              		.cfi_def_cfa_offset 16
 1189              		.cfi_offset 4, -16
 1190              		.cfi_offset 5, -12
 1191              		.cfi_offset 6, -8
 1192              		.cfi_offset 7, -4
 623:../asf/sam/drivers/afec/afec.c **** 	uint8_t uc_counter;
 624:../asf/sam/drivers/afec/afec.c **** 
 625:../asf/sam/drivers/afec/afec.c **** 	/* Set user sequence mode */
 626:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_MR |= AFEC_MR_USEQ_REG_ORDER;
 1193              		.loc 1 626 0
 1194 0002 4468     		ldr	r4, [r0, #4]
 627:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_SEQ1R = 0;
 1195              		.loc 1 627 0
 1196 0004 0023     		movs	r3, #0
 628:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_SEQ2R = 0;
 629:../asf/sam/drivers/afec/afec.c **** 
 630:../asf/sam/drivers/afec/afec.c **** 	if (uc_num < AFEC_SEQ1_CHANNEL_NUM) {
 1197              		.loc 1 630 0
 1198 0006 072A     		cmp	r2, #7
 626:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_SEQ1R = 0;
 1199              		.loc 1 626 0
 1200 0008 44F00044 		orr	r4, r4, #-2147483648
 1201 000c 4460     		str	r4, [r0, #4]
 627:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_SEQ1R = 0;
 1202              		.loc 1 627 0
 1203 000e C360     		str	r3, [r0, #12]
 628:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_SEQ2R = 0;
 1204              		.loc 1 628 0
 1205 0010 0361     		str	r3, [r0, #16]
 1206              		.loc 1 630 0
 1207 0012 12D8     		bhi	.L131
 1208              	.LVL90:
 631:../asf/sam/drivers/afec/afec.c **** 		for (uc_counter = 0; uc_counter < uc_num; uc_counter++) {
 1209              		.loc 1 631 0 discriminator 1
 1210 0014 7AB1     		cbz	r2, .L130
 1211 0016 013A     		subs	r2, r2, #1
 1212              	.LVL91:
 1213 0018 8C1E     		subs	r4, r1, #2
 1214 001a D2B2     		uxtb	r2, r2
 1215 001c 01EB4201 		add	r1, r1, r2, lsl #1
 1216              	.LVL92:
 1217              	.L133:
 632:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_SEQ1R |=
 633:../asf/sam/drivers/afec/afec.c **** 					ch_list[uc_counter] << (4 * uc_counter);
 1218              		.loc 1 633 0 discriminator 3
 1219 0020 34F8022F 		ldrh	r2, [r4, #2]!
 632:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_SEQ1R |=
 1220              		.loc 1 632 0 discriminator 3
 1221 0024 C568     		ldr	r5, [r0, #12]
 1222              		.loc 1 633 0 discriminator 3
 1223 0026 9A40     		lsls	r2, r2, r3
 631:../asf/sam/drivers/afec/afec.c **** 		for (uc_counter = 0; uc_counter < uc_num; uc_counter++) {
 1224              		.loc 1 631 0 discriminator 3
 1225 0028 A142     		cmp	r1, r4
 632:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_SEQ1R |=
 1226              		.loc 1 632 0 discriminator 3
ARM GAS  /tmp/ccQNhOlE.s 			page 80


 1227 002a 03F10403 		add	r3, r3, #4
 1228 002e 42EA0502 		orr	r2, r2, r5
 1229 0032 C260     		str	r2, [r0, #12]
 631:../asf/sam/drivers/afec/afec.c **** 		for (uc_counter = 0; uc_counter < uc_num; uc_counter++) {
 1230              		.loc 1 631 0 discriminator 3
 1231 0034 F4D1     		bne	.L133
 1232              	.L130:
 634:../asf/sam/drivers/afec/afec.c **** 		}
 635:../asf/sam/drivers/afec/afec.c **** 	} else {
 636:../asf/sam/drivers/afec/afec.c **** 		for (uc_counter = 0; uc_counter < AFEC_SEQ1_CHANNEL_NUM; uc_counter++) {
 637:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_SEQ1R |=
 638:../asf/sam/drivers/afec/afec.c **** 					ch_list[uc_counter] << (4 * uc_counter);
 639:../asf/sam/drivers/afec/afec.c **** 		}
 640:../asf/sam/drivers/afec/afec.c **** 		for (uc_counter = 0; uc_counter < uc_num - AFEC_SEQ1_CHANNEL_NUM;
 641:../asf/sam/drivers/afec/afec.c **** 				uc_counter++) {
 642:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_SEQ2R |=
 643:../asf/sam/drivers/afec/afec.c **** 					ch_list[uc_counter + AFEC_SEQ1_CHANNEL_NUM] << (4 * uc_counter);
 644:../asf/sam/drivers/afec/afec.c **** 		}
 645:../asf/sam/drivers/afec/afec.c **** 	}
 646:../asf/sam/drivers/afec/afec.c **** }
 1233              		.loc 1 646 0
 1234 0036 F0BC     		pop	{r4, r5, r6, r7}
 1235              		.cfi_remember_state
 1236              		.cfi_restore 7
 1237              		.cfi_restore 6
 1238              		.cfi_restore 5
 1239              		.cfi_restore 4
 1240              		.cfi_def_cfa_offset 0
 1241 0038 7047     		bx	lr
 1242              	.LVL93:
 1243              	.L131:
 1244              		.cfi_restore_state
 1245 003a 8D1E     		subs	r5, r1, #2
 1246              	.L135:
 638:../asf/sam/drivers/afec/afec.c **** 		}
 1247              		.loc 1 638 0 discriminator 3
 1248 003c 35F8024F 		ldrh	r4, [r5, #2]!
 637:../asf/sam/drivers/afec/afec.c **** 					ch_list[uc_counter] << (4 * uc_counter);
 1249              		.loc 1 637 0 discriminator 3
 1250 0040 C668     		ldr	r6, [r0, #12]
 638:../asf/sam/drivers/afec/afec.c **** 		}
 1251              		.loc 1 638 0 discriminator 3
 1252 0042 9C40     		lsls	r4, r4, r3
 1253 0044 0433     		adds	r3, r3, #4
 637:../asf/sam/drivers/afec/afec.c **** 					ch_list[uc_counter] << (4 * uc_counter);
 1254              		.loc 1 637 0 discriminator 3
 1255 0046 3443     		orrs	r4, r4, r6
 636:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_SEQ1R |=
 1256              		.loc 1 636 0 discriminator 3
 1257 0048 202B     		cmp	r3, #32
 637:../asf/sam/drivers/afec/afec.c **** 					ch_list[uc_counter] << (4 * uc_counter);
 1258              		.loc 1 637 0 discriminator 3
 1259 004a C460     		str	r4, [r0, #12]
 636:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_SEQ1R |=
 1260              		.loc 1 636 0 discriminator 3
 1261 004c F6D1     		bne	.L135
 1262              	.LVL94:
ARM GAS  /tmp/ccQNhOlE.s 			page 81


 640:../asf/sam/drivers/afec/afec.c **** 				uc_counter++) {
 1263              		.loc 1 640 0 discriminator 1
 1264 004e 083A     		subs	r2, r2, #8
 1265              	.LVL95:
 1266 0050 F1D0     		beq	.L130
 640:../asf/sam/drivers/afec/afec.c **** 				uc_counter++) {
 1267              		.loc 1 640 0 is_stmt 0
 1268 0052 0025     		movs	r5, #0
 1269 0054 2B46     		mov	r3, r5
 1270              	.LVL96:
 1271              	.L136:
 643:../asf/sam/drivers/afec/afec.c **** 		}
 1272              		.loc 1 643 0 is_stmt 1
 1273 0056 0835     		adds	r5, r5, #8
 1274 0058 9F00     		lsls	r7, r3, #2
 641:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_SEQ2R |=
 1275              		.loc 1 641 0
 1276 005a 0133     		adds	r3, r3, #1
 1277              	.LVL97:
 642:../asf/sam/drivers/afec/afec.c **** 					ch_list[uc_counter + AFEC_SEQ1_CHANNEL_NUM] << (4 * uc_counter);
 1278              		.loc 1 642 0
 1279 005c 0669     		ldr	r6, [r0, #16]
 643:../asf/sam/drivers/afec/afec.c **** 		}
 1280              		.loc 1 643 0
 1281 005e 31F81540 		ldrh	r4, [r1, r5, lsl #1]
 641:../asf/sam/drivers/afec/afec.c **** 			afec->AFEC_SEQ2R |=
 1282              		.loc 1 641 0
 1283 0062 DBB2     		uxtb	r3, r3
 1284              	.LVL98:
 643:../asf/sam/drivers/afec/afec.c **** 		}
 1285              		.loc 1 643 0
 1286 0064 BC40     		lsls	r4, r4, r7
 640:../asf/sam/drivers/afec/afec.c **** 				uc_counter++) {
 1287              		.loc 1 640 0
 1288 0066 9342     		cmp	r3, r2
 1289 0068 1D46     		mov	r5, r3
 642:../asf/sam/drivers/afec/afec.c **** 					ch_list[uc_counter + AFEC_SEQ1_CHANNEL_NUM] << (4 * uc_counter);
 1290              		.loc 1 642 0
 1291 006a 44EA0604 		orr	r4, r4, r6
 1292 006e 0461     		str	r4, [r0, #16]
 640:../asf/sam/drivers/afec/afec.c **** 				uc_counter++) {
 1293              		.loc 1 640 0
 1294 0070 F1D3     		bcc	.L136
 1295              		.loc 1 646 0
 1296 0072 F0BC     		pop	{r4, r5, r6, r7}
 1297              		.cfi_restore 4
 1298              		.cfi_restore 5
 1299              		.cfi_restore 6
 1300              		.cfi_restore 7
 1301              		.cfi_def_cfa_offset 0
 1302 0074 7047     		bx	lr
 1303              		.cfi_endproc
 1304              	.LFE206:
 1305              		.size	afec_configure_sequence, .-afec_configure_sequence
 1306              		.section	.text.afec_configure_auto_error_correction,"ax",%progbits
 1307              		.align	1
 1308              		.p2align 2,,3
ARM GAS  /tmp/ccQNhOlE.s 			page 82


 1309              		.global	afec_configure_auto_error_correction
 1310              		.syntax unified
 1311              		.thumb
 1312              		.thumb_func
 1313              		.fpu fpv5-d16
 1314              		.type	afec_configure_auto_error_correction, %function
 1315              	afec_configure_auto_error_correction:
 1316              	.LFB207:
 647:../asf/sam/drivers/afec/afec.c **** 
 648:../asf/sam/drivers/afec/afec.c **** #if (SAMV71 || SAMV70 || SAME70 || SAMS70)
 649:../asf/sam/drivers/afec/afec.c **** /**
 650:../asf/sam/drivers/afec/afec.c ****  * \brief Configure Automatic Error Correction.
 651:../asf/sam/drivers/afec/afec.c ****  *
 652:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC
 653:../asf/sam/drivers/afec/afec.c ****  * \param channel  Number of channels in the list.
 654:../asf/sam/drivers/afec/afec.c ****  * \param offsetcorr  the Offset Correction value,signed value
 655:../asf/sam/drivers/afec/afec.c ****  * \param gaincorr the Gain Correction value.
 656:../asf/sam/drivers/afec/afec.c ****  */
 657:../asf/sam/drivers/afec/afec.c **** void afec_configure_auto_error_correction(Afec *const afec,
 658:../asf/sam/drivers/afec/afec.c **** 		const enum afec_channel_num channel, int16_t offsetcorr, uint16_t gaincorr)
 659:../asf/sam/drivers/afec/afec.c **** {
 1317              		.loc 1 659 0
 1318              		.cfi_startproc
 1319              		@ args = 0, pretend = 0, frame = 0
 1320              		@ frame_needed = 0, uses_anonymous_args = 0
 1321              		@ link register save eliminated.
 1322              	.LVL99:
 1323 0000 30B4     		push	{r4, r5}
 1324              		.cfi_def_cfa_offset 8
 1325              		.cfi_offset 4, -8
 1326              		.cfi_offset 5, -4
 660:../asf/sam/drivers/afec/afec.c **** 
 661:../asf/sam/drivers/afec/afec.c **** 
 662:../asf/sam/drivers/afec/afec.c **** 	if (channel != AFEC_CHANNEL_ALL) {
 663:../asf/sam/drivers/afec/afec.c **** 		afec_ch_sanity_check(afec, channel);
 664:../asf/sam/drivers/afec/afec.c **** 	}
 665:../asf/sam/drivers/afec/afec.c **** 
 666:../asf/sam/drivers/afec/afec.c **** 	uint32_t reg = 0;
 667:../asf/sam/drivers/afec/afec.c **** 	reg = afec->AFEC_CECR;
 668:../asf/sam/drivers/afec/afec.c **** 	reg = (channel == AFEC_CHANNEL_ALL)? 0 : ~(0x1u << channel);
 669:../asf/sam/drivers/afec/afec.c **** 	reg |= (channel == AFEC_CHANNEL_ALL)? AFEC_CHANNEL_ALL : (0x1u << channel);
 670:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_CECR = reg;
 671:../asf/sam/drivers/afec/afec.c **** 
 672:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_COSR = AFEC_COSR_CSEL;
 673:../asf/sam/drivers/afec/afec.c ****     afec->AFEC_CVR = AFEC_CVR_OFFSETCORR(offsetcorr) | AFEC_CVR_GAINCORR(gaincorr);		 
 1327              		.loc 1 673 0
 1328 0002 92B2     		uxth	r2, r2
 668:../asf/sam/drivers/afec/afec.c **** 	reg |= (channel == AFEC_CHANNEL_ALL)? AFEC_CHANNEL_ALL : (0x1u << channel);
 1329              		.loc 1 668 0
 1330 0004 40F6FF74 		movw	r4, #4095
 672:../asf/sam/drivers/afec/afec.c ****     afec->AFEC_CVR = AFEC_CVR_OFFSETCORR(offsetcorr) | AFEC_CVR_GAINCORR(gaincorr);		 
 1331              		.loc 1 672 0
 1332 0008 0125     		movs	r5, #1
 1333              		.loc 1 673 0
 1334 000a 42EA0343 		orr	r3, r2, r3, lsl #16
 1335              	.LVL100:
 668:../asf/sam/drivers/afec/afec.c **** 	reg |= (channel == AFEC_CHANNEL_ALL)? AFEC_CHANNEL_ALL : (0x1u << channel);
ARM GAS  /tmp/ccQNhOlE.s 			page 83


 1336              		.loc 1 668 0
 1337 000e A142     		cmp	r1, r4
 1338 0010 18BF     		it	ne
 1339 0012 4FF0FF34 		movne	r4, #-1
 667:../asf/sam/drivers/afec/afec.c **** 	reg = (channel == AFEC_CHANNEL_ALL)? 0 : ~(0x1u << channel);
 1340              		.loc 1 667 0
 1341 0016 D0F8D820 		ldr	r2, [r0, #216]
 1342              	.LVL101:
 670:../asf/sam/drivers/afec/afec.c **** 
 1343              		.loc 1 670 0
 1344 001a C0F8D840 		str	r4, [r0, #216]
 672:../asf/sam/drivers/afec/afec.c ****     afec->AFEC_CVR = AFEC_CVR_OFFSETCORR(offsetcorr) | AFEC_CVR_GAINCORR(gaincorr);		 
 1345              		.loc 1 672 0
 1346 001e C0F8D050 		str	r5, [r0, #208]
 1347              		.loc 1 673 0
 1348 0022 C0F8D430 		str	r3, [r0, #212]
 674:../asf/sam/drivers/afec/afec.c **** 	
 675:../asf/sam/drivers/afec/afec.c **** }
 1349              		.loc 1 675 0
 1350 0026 30BC     		pop	{r4, r5}
 1351              		.cfi_restore 5
 1352              		.cfi_restore 4
 1353              		.cfi_def_cfa_offset 0
 1354 0028 7047     		bx	lr
 1355              		.cfi_endproc
 1356              	.LFE207:
 1357              		.size	afec_configure_auto_error_correction, .-afec_configure_auto_error_correction
 1358 002a 00BF     		.section	.text.afec_get_correction_value,"ax",%progbits
 1359              		.align	1
 1360              		.p2align 2,,3
 1361              		.global	afec_get_correction_value
 1362              		.syntax unified
 1363              		.thumb
 1364              		.thumb_func
 1365              		.fpu fpv5-d16
 1366              		.type	afec_get_correction_value, %function
 1367              	afec_get_correction_value:
 1368              	.LFB208:
 676:../asf/sam/drivers/afec/afec.c **** 
 677:../asf/sam/drivers/afec/afec.c **** /**
 678:../asf/sam/drivers/afec/afec.c ****  * \brief correct the Converted Data of the selected channel if automatic error correction is enabl
 679:../asf/sam/drivers/afec/afec.c ****  *
 680:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC.
 681:../asf/sam/drivers/afec/afec.c ****  * \param afec_ch AFEC channel number.
 682:../asf/sam/drivers/afec/afec.c ****  *
 683:../asf/sam/drivers/afec/afec.c ****  * \return AFEC corrected value of the selected channel.
 684:../asf/sam/drivers/afec/afec.c ****  */
 685:../asf/sam/drivers/afec/afec.c ****  uint32_t afec_get_correction_value(Afec *const afec,
 686:../asf/sam/drivers/afec/afec.c **** 		const enum afec_channel_num afec_ch)
 687:../asf/sam/drivers/afec/afec.c **** {	
 1369              		.loc 1 687 0
 1370              		.cfi_startproc
 1371              		@ args = 0, pretend = 0, frame = 0
 1372              		@ frame_needed = 0, uses_anonymous_args = 0
 1373              		@ link register save eliminated.
 1374              	.LVL102:
 688:../asf/sam/drivers/afec/afec.c **** 	uint32_t corrected_data = 0;
ARM GAS  /tmp/ccQNhOlE.s 			page 84


 689:../asf/sam/drivers/afec/afec.c **** 	uint32_t converted_data = 0;
 690:../asf/sam/drivers/afec/afec.c **** 	
 691:../asf/sam/drivers/afec/afec.c **** 	afec_ch_sanity_check(afec, afec_ch);
 692:../asf/sam/drivers/afec/afec.c **** 
 693:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_CSELR = afec_ch;
 1375              		.loc 1 693 0
 1376 0000 4166     		str	r1, [r0, #100]
 694:../asf/sam/drivers/afec/afec.c **** 	converted_data = afec->AFEC_CDR;
 1377              		.loc 1 694 0
 1378 0002 826E     		ldr	r2, [r0, #104]
 1379              	.LVL103:
 695:../asf/sam/drivers/afec/afec.c **** 
 696:../asf/sam/drivers/afec/afec.c **** 	corrected_data = (converted_data + (afec->AFEC_CVR & AFEC_CVR_OFFSETCORR_Msk)) * 
 1380              		.loc 1 696 0
 1381 0004 D0F8D430 		ldr	r3, [r0, #212]
 697:../asf/sam/drivers/afec/afec.c **** 			(afec->AFEC_CVR >> AFEC_CVR_GAINCORR_Pos) / 1024u;
 1382              		.loc 1 697 0
 1383 0008 D0F8D400 		ldr	r0, [r0, #212]
 1384              	.LVL104:
 696:../asf/sam/drivers/afec/afec.c **** 			(afec->AFEC_CVR >> AFEC_CVR_GAINCORR_Pos) / 1024u;
 1385              		.loc 1 696 0
 1386 000c 12FA83F3 		uxtah	r3, r2, r3
 1387              	.LVL105:
 1388              		.loc 1 697 0
 1389 0010 000C     		lsrs	r0, r0, #16
 696:../asf/sam/drivers/afec/afec.c **** 			(afec->AFEC_CVR >> AFEC_CVR_GAINCORR_Pos) / 1024u;
 1390              		.loc 1 696 0
 1391 0012 00FB03F0 		mul	r0, r0, r3
 698:../asf/sam/drivers/afec/afec.c **** 	return corrected_data;
 699:../asf/sam/drivers/afec/afec.c **** 	
 700:../asf/sam/drivers/afec/afec.c **** }
 1392              		.loc 1 700 0
 1393 0016 800A     		lsrs	r0, r0, #10
 1394 0018 7047     		bx	lr
 1395              		.cfi_endproc
 1396              	.LFE208:
 1397              		.size	afec_get_correction_value, .-afec_get_correction_value
 1398 001a 00BF     		.section	.text.afec_set_sample_hold_mode,"ax",%progbits
 1399              		.align	1
 1400              		.p2align 2,,3
 1401              		.global	afec_set_sample_hold_mode
 1402              		.syntax unified
 1403              		.thumb
 1404              		.thumb_func
 1405              		.fpu fpv5-d16
 1406              		.type	afec_set_sample_hold_mode, %function
 1407              	afec_set_sample_hold_mode:
 1408              	.LFB209:
 701:../asf/sam/drivers/afec/afec.c **** 
 702:../asf/sam/drivers/afec/afec.c **** /**
 703:../asf/sam/drivers/afec/afec.c ****  * \brief Configure sample&hold mode.
 704:../asf/sam/drivers/afec/afec.c ****  *
 705:../asf/sam/drivers/afec/afec.c ****  * \param afec  Base address of the AFEC.
 706:../asf/sam/drivers/afec/afec.c ****  * \param channel   AFEC Channel number.
 707:../asf/sam/drivers/afec/afec.c ****  * \param mode sample&hold mode.
 708:../asf/sam/drivers/afec/afec.c ****  */
 709:../asf/sam/drivers/afec/afec.c **** void afec_set_sample_hold_mode(Afec *const afec,
ARM GAS  /tmp/ccQNhOlE.s 			page 85


 710:../asf/sam/drivers/afec/afec.c **** 		const enum afec_channel_num channel, const enum afec_sample_hold_mode mode)
 711:../asf/sam/drivers/afec/afec.c **** {
 1409              		.loc 1 711 0
 1410              		.cfi_startproc
 1411              		@ args = 0, pretend = 0, frame = 0
 1412              		@ frame_needed = 0, uses_anonymous_args = 0
 1413              		@ link register save eliminated.
 1414              	.LVL106:
 712:../asf/sam/drivers/afec/afec.c **** 	if (channel != AFEC_CHANNEL_ALL) {
 713:../asf/sam/drivers/afec/afec.c **** 		afec_ch_sanity_check(afec, channel);
 714:../asf/sam/drivers/afec/afec.c **** 	}
 715:../asf/sam/drivers/afec/afec.c **** 		
 716:../asf/sam/drivers/afec/afec.c **** 	uint32_t reg = 0;
 717:../asf/sam/drivers/afec/afec.c **** 	reg = afec->AFEC_SHMR;
 718:../asf/sam/drivers/afec/afec.c **** 	if (mode == AFEC_SAMPLE_HOLD_MODE_1) {
 1415              		.loc 1 718 0
 1416 0000 012A     		cmp	r2, #1
 717:../asf/sam/drivers/afec/afec.c **** 	if (mode == AFEC_SAMPLE_HOLD_MODE_1) {
 1417              		.loc 1 717 0
 1418 0002 D0F8A030 		ldr	r3, [r0, #160]
 1419              	.LVL107:
 1420              		.loc 1 718 0
 1421 0006 0AD0     		beq	.L159
 719:../asf/sam/drivers/afec/afec.c **** 		
 720:../asf/sam/drivers/afec/afec.c **** 		reg |= (channel == AFEC_CHANNEL_ALL)? AFEC_CHANNEL_ALL : 0x1u << channel;
 721:../asf/sam/drivers/afec/afec.c **** 	}
 722:../asf/sam/drivers/afec/afec.c **** 	else {
 723:../asf/sam/drivers/afec/afec.c **** 		
 724:../asf/sam/drivers/afec/afec.c **** 		reg = (channel == AFEC_CHANNEL_ALL)? 0 : ~(0x1u << channel);
 1422              		.loc 1 724 0
 1423 0008 40F6FF73 		movw	r3, #4095
 1424              	.LVL108:
 1425 000c 9942     		cmp	r1, r3
 1426 000e 13D0     		beq	.L154
 1427              		.loc 1 724 0 is_stmt 0 discriminator 1
 1428 0010 0122     		movs	r2, #1
 1429              	.LVL109:
 1430 0012 02FA01F1 		lsl	r1, r2, r1
 1431              	.LVL110:
 1432 0016 C943     		mvns	r1, r1
 1433              	.LVL111:
 725:../asf/sam/drivers/afec/afec.c **** 	}
 726:../asf/sam/drivers/afec/afec.c **** 	afec->AFEC_SHMR = reg;
 1434              		.loc 1 726 0 is_stmt 1 discriminator 1
 1435 0018 C0F8A010 		str	r1, [r0, #160]
 1436 001c 7047     		bx	lr
 1437              	.LVL112:
 1438              	.L159:
 711:../asf/sam/drivers/afec/afec.c **** 	if (channel != AFEC_CHANNEL_ALL) {
 1439              		.loc 1 711 0
 1440 001e 10B4     		push	{r4}
 1441              		.cfi_def_cfa_offset 4
 1442              		.cfi_offset 4, -4
 720:../asf/sam/drivers/afec/afec.c **** 	}
 1443              		.loc 1 720 0
 1444 0020 40F6FF74 		movw	r4, #4095
 1445 0024 A142     		cmp	r1, r4
ARM GAS  /tmp/ccQNhOlE.s 			page 86


 727:../asf/sam/drivers/afec/afec.c **** 		
 728:../asf/sam/drivers/afec/afec.c **** }
 1446              		.loc 1 728 0
 1447 0026 5DF8044B 		ldr	r4, [sp], #4
 1448              		.cfi_restore 4
 1449              		.cfi_def_cfa_offset 0
 720:../asf/sam/drivers/afec/afec.c **** 	}
 1450              		.loc 1 720 0
 1451 002a 18BF     		it	ne
 1452 002c 02FA01F1 		lslne	r1, r2, r1
 1453              	.LVL113:
 1454 0030 1943     		orrs	r1, r1, r3
 1455              	.LVL114:
 726:../asf/sam/drivers/afec/afec.c **** 		
 1456              		.loc 1 726 0
 1457 0032 C0F8A010 		str	r1, [r0, #160]
 1458              		.loc 1 728 0
 1459 0036 7047     		bx	lr
 1460              	.LVL115:
 1461              	.L154:
 724:../asf/sam/drivers/afec/afec.c **** 	}
 1462              		.loc 1 724 0
 1463 0038 0021     		movs	r1, #0
 1464              	.LVL116:
 726:../asf/sam/drivers/afec/afec.c **** 		
 1465              		.loc 1 726 0
 1466 003a C0F8A010 		str	r1, [r0, #160]
 1467 003e 7047     		bx	lr
 1468              		.cfi_endproc
 1469              	.LFE209:
 1470              		.size	afec_set_sample_hold_mode, .-afec_set_sample_hold_mode
 1471              		.comm	afec_callback_pointer,128,4
 1472              		.section	.bss.cpu_irq_critical_section_counter,"aw",%nobits
 1473              		.align	2
 1474              		.type	cpu_irq_critical_section_counter, %object
 1475              		.size	cpu_irq_critical_section_counter, 4
 1476              	cpu_irq_critical_section_counter:
 1477 0000 00000000 		.space	4
 1478              		.section	.bss.cpu_irq_prev_interrupt_state,"aw",%nobits
 1479              		.type	cpu_irq_prev_interrupt_state, %object
 1480              		.size	cpu_irq_prev_interrupt_state, 1
 1481              	cpu_irq_prev_interrupt_state:
 1482 0000 00       		.space	1
 1483              		.text
 1484              	.Letext0:
 1485              		.file 4 "/usr/include/newlib/machine/_default_types.h"
 1486              		.file 5 "/usr/include/newlib/sys/_stdint.h"
 1487              		.file 6 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/same70q21.h"
 1488              		.file 7 "/home/torbjorn/eclipse-workspace/CoreNG/variants/same70/system_same70.h"
 1489              		.file 8 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/cmsis/same70/include/component/afec
 1490              		.file 9 "/usr/include/newlib/sys/lock.h"
 1491              		.file 10 "/usr/include/newlib/sys/_types.h"
 1492              		.file 11 "/usr/lib/gcc/arm-none-eabi/6.3.1/include/stddef.h"
 1493              		.file 12 "/usr/include/newlib/sys/reent.h"
 1494              		.file 13 "/usr/include/newlib/stdlib.h"
 1495              		.file 14 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/utils/interrupt/interrupt_sam_nvic.h"
 1496              		.file 15 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/utils/status_codes.h"
ARM GAS  /tmp/ccQNhOlE.s 			page 87


 1497              		.file 16 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/sleepmgr/sam/sleepmgr.h"
 1498              		.file 17 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/pll.h"
 1499              		.file 18 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/sysclk.h"
 1500              		.file 19 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/clock/same70/osc.h"
 1501              		.file 20 "/home/torbjorn/eclipse-workspace/CoreNG/asf/common/services/sleepmgr/sleepmgr.h"
 1502              		.file 21 "/home/torbjorn/eclipse-workspace/CoreNG/asf/sam/drivers/pmc/pmc.h"
 1503              		.section	.debug_info,"",%progbits
 1504              	.Ldebug_info0:
 1505 0000 07200000 		.4byte	0x2007
 1506 0004 0400     		.2byte	0x4
 1507 0006 00000000 		.4byte	.Ldebug_abbrev0
 1508 000a 04       		.byte	0x4
 1509 000b 01       		.uleb128 0x1
 1510 000c 6A010000 		.4byte	.LASF487
 1511 0010 0C       		.byte	0xc
 1512 0011 DC100000 		.4byte	.LASF488
 1513 0015 68040000 		.4byte	.LASF489
 1514 0019 D8000000 		.4byte	.Ldebug_ranges0+0xd8
 1515 001d 00000000 		.4byte	0
 1516 0021 00000000 		.4byte	.Ldebug_line0
 1517 0025 02       		.uleb128 0x2
 1518 0026 04       		.byte	0x4
 1519 0027 05       		.byte	0x5
 1520 0028 696E7400 		.ascii	"int\000"
 1521 002c 03       		.uleb128 0x3
 1522 002d 04       		.byte	0x4
 1523 002e 07       		.byte	0x7
 1524 002f 0D180000 		.4byte	.LASF0
 1525 0033 03       		.uleb128 0x3
 1526 0034 01       		.byte	0x1
 1527 0035 06       		.byte	0x6
 1528 0036 A00B0000 		.4byte	.LASF1
 1529 003a 04       		.uleb128 0x4
 1530 003b 79000000 		.4byte	.LASF3
 1531 003f 04       		.byte	0x4
 1532 0040 1D       		.byte	0x1d
 1533 0041 45000000 		.4byte	0x45
 1534 0045 03       		.uleb128 0x3
 1535 0046 01       		.byte	0x1
 1536 0047 08       		.byte	0x8
 1537 0048 71050000 		.4byte	.LASF2
 1538 004c 04       		.uleb128 0x4
 1539 004d D7040000 		.4byte	.LASF4
 1540 0051 04       		.byte	0x4
 1541 0052 29       		.byte	0x29
 1542 0053 57000000 		.4byte	0x57
 1543 0057 03       		.uleb128 0x3
 1544 0058 02       		.byte	0x2
 1545 0059 05       		.byte	0x5
 1546 005a 45180000 		.4byte	.LASF5
 1547 005e 04       		.uleb128 0x4
 1548 005f E1040000 		.4byte	.LASF6
 1549 0063 04       		.byte	0x4
 1550 0064 2B       		.byte	0x2b
 1551 0065 69000000 		.4byte	0x69
 1552 0069 03       		.uleb128 0x3
 1553 006a 02       		.byte	0x2
ARM GAS  /tmp/ccQNhOlE.s 			page 88


 1554 006b 07       		.byte	0x7
 1555 006c 8D0B0000 		.4byte	.LASF7
 1556 0070 04       		.uleb128 0x4
 1557 0071 07130000 		.4byte	.LASF8
 1558 0075 04       		.byte	0x4
 1559 0076 3F       		.byte	0x3f
 1560 0077 7B000000 		.4byte	0x7b
 1561 007b 03       		.uleb128 0x3
 1562 007c 04       		.byte	0x4
 1563 007d 05       		.byte	0x5
 1564 007e 560D0000 		.4byte	.LASF9
 1565 0082 04       		.uleb128 0x4
 1566 0083 1C130000 		.4byte	.LASF10
 1567 0087 04       		.byte	0x4
 1568 0088 41       		.byte	0x41
 1569 0089 8D000000 		.4byte	0x8d
 1570 008d 03       		.uleb128 0x3
 1571 008e 04       		.byte	0x4
 1572 008f 07       		.byte	0x7
 1573 0090 3C0F0000 		.4byte	.LASF11
 1574 0094 03       		.uleb128 0x3
 1575 0095 08       		.byte	0x8
 1576 0096 05       		.byte	0x5
 1577 0097 6F160000 		.4byte	.LASF12
 1578 009b 03       		.uleb128 0x3
 1579 009c 08       		.byte	0x8
 1580 009d 07       		.byte	0x7
 1581 009e 2F140000 		.4byte	.LASF13
 1582 00a2 04       		.uleb128 0x4
 1583 00a3 9A070000 		.4byte	.LASF14
 1584 00a7 05       		.byte	0x5
 1585 00a8 18       		.byte	0x18
 1586 00a9 3A000000 		.4byte	0x3a
 1587 00ad 05       		.uleb128 0x5
 1588 00ae A2000000 		.4byte	0xa2
 1589 00b2 04       		.uleb128 0x4
 1590 00b3 850B0000 		.4byte	.LASF15
 1591 00b7 05       		.byte	0x5
 1592 00b8 20       		.byte	0x20
 1593 00b9 4C000000 		.4byte	0x4c
 1594 00bd 04       		.uleb128 0x4
 1595 00be 2E010000 		.4byte	.LASF16
 1596 00c2 05       		.byte	0x5
 1597 00c3 24       		.byte	0x24
 1598 00c4 5E000000 		.4byte	0x5e
 1599 00c8 04       		.uleb128 0x4
 1600 00c9 0D030000 		.4byte	.LASF17
 1601 00cd 05       		.byte	0x5
 1602 00ce 2C       		.byte	0x2c
 1603 00cf 70000000 		.4byte	0x70
 1604 00d3 05       		.uleb128 0x5
 1605 00d4 C8000000 		.4byte	0xc8
 1606 00d8 04       		.uleb128 0x4
 1607 00d9 290E0000 		.4byte	.LASF18
 1608 00dd 05       		.byte	0x5
 1609 00de 30       		.byte	0x30
 1610 00df 82000000 		.4byte	0x82
ARM GAS  /tmp/ccQNhOlE.s 			page 89


 1611 00e3 05       		.uleb128 0x5
 1612 00e4 D8000000 		.4byte	0xd8
 1613 00e8 06       		.uleb128 0x6
 1614 00e9 E3000000 		.4byte	0xe3
 1615 00ed 07       		.uleb128 0x7
 1616 00ee 90110000 		.4byte	.LASF298
 1617 00f2 01       		.byte	0x1
 1618 00f3 33000000 		.4byte	0x33
 1619 00f7 06       		.byte	0x6
 1620 00f8 48       		.byte	0x48
 1621 00f9 90020000 		.4byte	0x290
 1622 00fd 08       		.uleb128 0x8
 1623 00fe 87130000 		.4byte	.LASF19
 1624 0102 72       		.sleb128 -14
 1625 0103 08       		.uleb128 0x8
 1626 0104 E7050000 		.4byte	.LASF20
 1627 0108 73       		.sleb128 -13
 1628 0109 08       		.uleb128 0x8
 1629 010a 120B0000 		.4byte	.LASF21
 1630 010e 74       		.sleb128 -12
 1631 010f 08       		.uleb128 0x8
 1632 0110 B4180000 		.4byte	.LASF22
 1633 0114 75       		.sleb128 -11
 1634 0115 08       		.uleb128 0x8
 1635 0116 0E0A0000 		.4byte	.LASF23
 1636 011a 76       		.sleb128 -10
 1637 011b 08       		.uleb128 0x8
 1638 011c 56030000 		.4byte	.LASF24
 1639 0120 7B       		.sleb128 -5
 1640 0121 08       		.uleb128 0x8
 1641 0122 95000000 		.4byte	.LASF25
 1642 0126 7C       		.sleb128 -4
 1643 0127 08       		.uleb128 0x8
 1644 0128 81150000 		.4byte	.LASF26
 1645 012c 7E       		.sleb128 -2
 1646 012d 08       		.uleb128 0x8
 1647 012e 38130000 		.4byte	.LASF27
 1648 0132 7F       		.sleb128 -1
 1649 0133 09       		.uleb128 0x9
 1650 0134 10110000 		.4byte	.LASF28
 1651 0138 00       		.byte	0
 1652 0139 09       		.uleb128 0x9
 1653 013a 2E0B0000 		.4byte	.LASF29
 1654 013e 01       		.byte	0x1
 1655 013f 09       		.uleb128 0x9
 1656 0140 91030000 		.4byte	.LASF30
 1657 0144 02       		.byte	0x2
 1658 0145 09       		.uleb128 0x9
 1659 0146 380B0000 		.4byte	.LASF31
 1660 014a 03       		.byte	0x3
 1661 014b 09       		.uleb128 0x9
 1662 014c 55130000 		.4byte	.LASF32
 1663 0150 04       		.byte	0x4
 1664 0151 09       		.uleb128 0x9
 1665 0152 A40D0000 		.4byte	.LASF33
 1666 0156 05       		.byte	0x5
 1667 0157 09       		.uleb128 0x9
ARM GAS  /tmp/ccQNhOlE.s 			page 90


 1668 0158 2B000000 		.4byte	.LASF34
 1669 015c 06       		.byte	0x6
 1670 015d 09       		.uleb128 0x9
 1671 015e 4F170000 		.4byte	.LASF35
 1672 0162 07       		.byte	0x7
 1673 0163 09       		.uleb128 0x9
 1674 0164 0D170000 		.4byte	.LASF36
 1675 0168 08       		.byte	0x8
 1676 0169 09       		.uleb128 0x9
 1677 016a 9B170000 		.4byte	.LASF37
 1678 016e 0A       		.byte	0xa
 1679 016f 09       		.uleb128 0x9
 1680 0170 18080000 		.4byte	.LASF38
 1681 0174 0B       		.byte	0xb
 1682 0175 09       		.uleb128 0x9
 1683 0176 C3070000 		.4byte	.LASF39
 1684 017a 0C       		.byte	0xc
 1685 017b 09       		.uleb128 0x9
 1686 017c 41060000 		.4byte	.LASF40
 1687 0180 0D       		.byte	0xd
 1688 0181 09       		.uleb128 0x9
 1689 0182 0F100000 		.4byte	.LASF41
 1690 0186 0E       		.byte	0xe
 1691 0187 09       		.uleb128 0x9
 1692 0188 E50F0000 		.4byte	.LASF42
 1693 018c 0F       		.byte	0xf
 1694 018d 09       		.uleb128 0x9
 1695 018e 5C070000 		.4byte	.LASF43
 1696 0192 10       		.byte	0x10
 1697 0193 09       		.uleb128 0x9
 1698 0194 96120000 		.4byte	.LASF44
 1699 0198 11       		.byte	0x11
 1700 0199 09       		.uleb128 0x9
 1701 019a AD0D0000 		.4byte	.LASF45
 1702 019e 12       		.byte	0x12
 1703 019f 09       		.uleb128 0x9
 1704 01a0 25060000 		.4byte	.LASF46
 1705 01a4 13       		.byte	0x13
 1706 01a5 09       		.uleb128 0x9
 1707 01a6 F10F0000 		.4byte	.LASF47
 1708 01aa 14       		.byte	0x14
 1709 01ab 09       		.uleb128 0x9
 1710 01ac 27070000 		.4byte	.LASF48
 1711 01b0 15       		.byte	0x15
 1712 01b1 09       		.uleb128 0x9
 1713 01b2 A7080000 		.4byte	.LASF49
 1714 01b6 16       		.byte	0x16
 1715 01b7 09       		.uleb128 0x9
 1716 01b8 4C050000 		.4byte	.LASF50
 1717 01bc 17       		.byte	0x17
 1718 01bd 09       		.uleb128 0x9
 1719 01be 00050000 		.4byte	.LASF51
 1720 01c2 18       		.byte	0x18
 1721 01c3 09       		.uleb128 0x9
 1722 01c4 BF040000 		.4byte	.LASF52
 1723 01c8 19       		.byte	0x19
 1724 01c9 09       		.uleb128 0x9
ARM GAS  /tmp/ccQNhOlE.s 			page 91


 1725 01ca C20D0000 		.4byte	.LASF53
 1726 01ce 1A       		.byte	0x1a
 1727 01cf 09       		.uleb128 0x9
 1728 01d0 4D0D0000 		.4byte	.LASF54
 1729 01d4 1B       		.byte	0x1b
 1730 01d5 09       		.uleb128 0x9
 1731 01d6 EF0C0000 		.4byte	.LASF55
 1732 01da 1C       		.byte	0x1c
 1733 01db 09       		.uleb128 0x9
 1734 01dc 34000000 		.4byte	.LASF56
 1735 01e0 1D       		.byte	0x1d
 1736 01e1 09       		.uleb128 0x9
 1737 01e2 56100000 		.4byte	.LASF57
 1738 01e6 1E       		.byte	0x1e
 1739 01e7 09       		.uleb128 0x9
 1740 01e8 DD120000 		.4byte	.LASF58
 1741 01ec 1F       		.byte	0x1f
 1742 01ed 09       		.uleb128 0x9
 1743 01ee CB0D0000 		.4byte	.LASF59
 1744 01f2 20       		.byte	0x20
 1745 01f3 09       		.uleb128 0x9
 1746 01f4 46140000 		.4byte	.LASF60
 1747 01f8 21       		.byte	0x21
 1748 01f9 09       		.uleb128 0x9
 1749 01fa 40020000 		.4byte	.LASF61
 1750 01fe 22       		.byte	0x22
 1751 01ff 09       		.uleb128 0x9
 1752 0200 57180000 		.4byte	.LASF62
 1753 0204 23       		.byte	0x23
 1754 0205 09       		.uleb128 0x9
 1755 0206 9C080000 		.4byte	.LASF63
 1756 020a 25       		.byte	0x25
 1757 020b 09       		.uleb128 0x9
 1758 020c 4F090000 		.4byte	.LASF64
 1759 0210 27       		.byte	0x27
 1760 0211 09       		.uleb128 0x9
 1761 0212 9C180000 		.4byte	.LASF65
 1762 0216 28       		.byte	0x28
 1763 0217 09       		.uleb128 0x9
 1764 0218 BE0F0000 		.4byte	.LASF66
 1765 021c 29       		.byte	0x29
 1766 021d 09       		.uleb128 0x9
 1767 021e DE060000 		.4byte	.LASF67
 1768 0222 2A       		.byte	0x2a
 1769 0223 09       		.uleb128 0x9
 1770 0224 83000000 		.4byte	.LASF68
 1771 0228 2B       		.byte	0x2b
 1772 0229 09       		.uleb128 0x9
 1773 022a A2070000 		.4byte	.LASF69
 1774 022e 2C       		.byte	0x2c
 1775 022f 09       		.uleb128 0x9
 1776 0230 4A070000 		.4byte	.LASF70
 1777 0234 2D       		.byte	0x2d
 1778 0235 09       		.uleb128 0x9
 1779 0236 EE060000 		.4byte	.LASF71
 1780 023a 2E       		.byte	0x2e
 1781 023b 09       		.uleb128 0x9
ARM GAS  /tmp/ccQNhOlE.s 			page 92


 1782 023c 6A000000 		.4byte	.LASF72
 1783 0240 2F       		.byte	0x2f
 1784 0241 09       		.uleb128 0x9
 1785 0242 15000000 		.4byte	.LASF73
 1786 0246 30       		.byte	0x30
 1787 0247 09       		.uleb128 0x9
 1788 0248 88180000 		.4byte	.LASF74
 1789 024c 31       		.byte	0x31
 1790 024d 09       		.uleb128 0x9
 1791 024e DA080000 		.4byte	.LASF75
 1792 0252 32       		.byte	0x32
 1793 0253 09       		.uleb128 0x9
 1794 0254 E3090000 		.4byte	.LASF76
 1795 0258 33       		.byte	0x33
 1796 0259 09       		.uleb128 0x9
 1797 025a FD0F0000 		.4byte	.LASF77
 1798 025e 34       		.byte	0x34
 1799 025f 09       		.uleb128 0x9
 1800 0260 330F0000 		.4byte	.LASF78
 1801 0264 38       		.byte	0x38
 1802 0265 09       		.uleb128 0x9
 1803 0266 42040000 		.4byte	.LASF79
 1804 026a 39       		.byte	0x39
 1805 026b 09       		.uleb128 0x9
 1806 026c 9B130000 		.4byte	.LASF80
 1807 0270 3A       		.byte	0x3a
 1808 0271 09       		.uleb128 0x9
 1809 0272 94020000 		.4byte	.LASF81
 1810 0276 3B       		.byte	0x3b
 1811 0277 09       		.uleb128 0x9
 1812 0278 3A120000 		.4byte	.LASF82
 1813 027c 3C       		.byte	0x3c
 1814 027d 09       		.uleb128 0x9
 1815 027e F2120000 		.4byte	.LASF83
 1816 0282 3E       		.byte	0x3e
 1817 0283 09       		.uleb128 0x9
 1818 0284 6C090000 		.4byte	.LASF84
 1819 0288 3F       		.byte	0x3f
 1820 0289 09       		.uleb128 0x9
 1821 028a 0E010000 		.4byte	.LASF85
 1822 028e 40       		.byte	0x40
 1823 028f 00       		.byte	0
 1824 0290 04       		.uleb128 0x4
 1825 0291 6A0A0000 		.4byte	.LASF86
 1826 0295 06       		.byte	0x6
 1827 0296 91       		.byte	0x91
 1828 0297 ED000000 		.4byte	0xed
 1829 029b 0A       		.uleb128 0xa
 1830 029c 04       		.byte	0x4
 1831 029d 0B       		.uleb128 0xb
 1832 029e 040E     		.2byte	0xe04
 1833 02a0 03       		.byte	0x3
 1834 02a1 7A01     		.2byte	0x17a
 1835 02a3 59030000 		.4byte	0x359
 1836 02a7 0C       		.uleb128 0xc
 1837 02a8 320E0000 		.4byte	.LASF87
 1838 02ac 03       		.byte	0x3
ARM GAS  /tmp/ccQNhOlE.s 			page 93


 1839 02ad 7C01     		.2byte	0x17c
 1840 02af 69030000 		.4byte	0x369
 1841 02b3 00       		.byte	0
 1842 02b4 0C       		.uleb128 0xc
 1843 02b5 A6130000 		.4byte	.LASF88
 1844 02b9 03       		.byte	0x3
 1845 02ba 7D01     		.2byte	0x17d
 1846 02bc 75030000 		.4byte	0x375
 1847 02c0 20       		.byte	0x20
 1848 02c1 0C       		.uleb128 0xc
 1849 02c2 C9020000 		.4byte	.LASF89
 1850 02c6 03       		.byte	0x3
 1851 02c7 7E01     		.2byte	0x17e
 1852 02c9 69030000 		.4byte	0x369
 1853 02cd 80       		.byte	0x80
 1854 02ce 0C       		.uleb128 0xc
 1855 02cf 4C010000 		.4byte	.LASF90
 1856 02d3 03       		.byte	0x3
 1857 02d4 7F01     		.2byte	0x17f
 1858 02d6 75030000 		.4byte	0x375
 1859 02da A0       		.byte	0xa0
 1860 02db 0D       		.uleb128 0xd
 1861 02dc 01140000 		.4byte	.LASF91
 1862 02e0 03       		.byte	0x3
 1863 02e1 8001     		.2byte	0x180
 1864 02e3 69030000 		.4byte	0x369
 1865 02e7 0001     		.2byte	0x100
 1866 02e9 0D       		.uleb128 0xd
 1867 02ea B0130000 		.4byte	.LASF92
 1868 02ee 03       		.byte	0x3
 1869 02ef 8101     		.2byte	0x181
 1870 02f1 75030000 		.4byte	0x375
 1871 02f5 2001     		.2byte	0x120
 1872 02f7 0D       		.uleb128 0xd
 1873 02f8 20060000 		.4byte	.LASF93
 1874 02fc 03       		.byte	0x3
 1875 02fd 8201     		.2byte	0x182
 1876 02ff 69030000 		.4byte	0x369
 1877 0303 8001     		.2byte	0x180
 1878 0305 0D       		.uleb128 0xd
 1879 0306 BA130000 		.4byte	.LASF94
 1880 030a 03       		.byte	0x3
 1881 030b 8301     		.2byte	0x183
 1882 030d 75030000 		.4byte	0x375
 1883 0311 A001     		.2byte	0x1a0
 1884 0313 0D       		.uleb128 0xd
 1885 0314 58140000 		.4byte	.LASF95
 1886 0318 03       		.byte	0x3
 1887 0319 8401     		.2byte	0x184
 1888 031b 69030000 		.4byte	0x369
 1889 031f 0002     		.2byte	0x200
 1890 0321 0D       		.uleb128 0xd
 1891 0322 C4130000 		.4byte	.LASF96
 1892 0326 03       		.byte	0x3
 1893 0327 8501     		.2byte	0x185
 1894 0329 85030000 		.4byte	0x385
 1895 032d 2002     		.2byte	0x220
ARM GAS  /tmp/ccQNhOlE.s 			page 94


 1896 032f 0E       		.uleb128 0xe
 1897 0330 495000   		.ascii	"IP\000"
 1898 0333 03       		.byte	0x3
 1899 0334 8601     		.2byte	0x186
 1900 0336 A5030000 		.4byte	0x3a5
 1901 033a 0003     		.2byte	0x300
 1902 033c 0D       		.uleb128 0xd
 1903 033d CE130000 		.4byte	.LASF97
 1904 0341 03       		.byte	0x3
 1905 0342 8701     		.2byte	0x187
 1906 0344 AA030000 		.4byte	0x3aa
 1907 0348 F003     		.2byte	0x3f0
 1908 034a 0D       		.uleb128 0xd
 1909 034b D40D0000 		.4byte	.LASF98
 1910 034f 03       		.byte	0x3
 1911 0350 8801     		.2byte	0x188
 1912 0352 E3000000 		.4byte	0xe3
 1913 0356 000E     		.2byte	0xe00
 1914 0358 00       		.byte	0
 1915 0359 0F       		.uleb128 0xf
 1916 035a E3000000 		.4byte	0xe3
 1917 035e 69030000 		.4byte	0x369
 1918 0362 10       		.uleb128 0x10
 1919 0363 6E030000 		.4byte	0x36e
 1920 0367 07       		.byte	0x7
 1921 0368 00       		.byte	0
 1922 0369 05       		.uleb128 0x5
 1923 036a 59030000 		.4byte	0x359
 1924 036e 03       		.uleb128 0x3
 1925 036f 04       		.byte	0x4
 1926 0370 07       		.byte	0x7
 1927 0371 F90A0000 		.4byte	.LASF99
 1928 0375 0F       		.uleb128 0xf
 1929 0376 D8000000 		.4byte	0xd8
 1930 037a 85030000 		.4byte	0x385
 1931 037e 10       		.uleb128 0x10
 1932 037f 6E030000 		.4byte	0x36e
 1933 0383 17       		.byte	0x17
 1934 0384 00       		.byte	0
 1935 0385 0F       		.uleb128 0xf
 1936 0386 D8000000 		.4byte	0xd8
 1937 038a 95030000 		.4byte	0x395
 1938 038e 10       		.uleb128 0x10
 1939 038f 6E030000 		.4byte	0x36e
 1940 0393 37       		.byte	0x37
 1941 0394 00       		.byte	0
 1942 0395 0F       		.uleb128 0xf
 1943 0396 AD000000 		.4byte	0xad
 1944 039a A5030000 		.4byte	0x3a5
 1945 039e 10       		.uleb128 0x10
 1946 039f 6E030000 		.4byte	0x36e
 1947 03a3 EF       		.byte	0xef
 1948 03a4 00       		.byte	0
 1949 03a5 05       		.uleb128 0x5
 1950 03a6 95030000 		.4byte	0x395
 1951 03aa 0F       		.uleb128 0xf
 1952 03ab D8000000 		.4byte	0xd8
ARM GAS  /tmp/ccQNhOlE.s 			page 95


 1953 03af BB030000 		.4byte	0x3bb
 1954 03b3 11       		.uleb128 0x11
 1955 03b4 6E030000 		.4byte	0x36e
 1956 03b8 8302     		.2byte	0x283
 1957 03ba 00       		.byte	0
 1958 03bb 12       		.uleb128 0x12
 1959 03bc 76080000 		.4byte	.LASF100
 1960 03c0 03       		.byte	0x3
 1961 03c1 8901     		.2byte	0x189
 1962 03c3 9D020000 		.4byte	0x29d
 1963 03c7 0B       		.uleb128 0xb
 1964 03c8 AC02     		.2byte	0x2ac
 1965 03ca 03       		.byte	0x3
 1966 03cb 9A01     		.2byte	0x19a
 1967 03cd 74060000 		.4byte	0x674
 1968 03d1 0C       		.uleb128 0xc
 1969 03d2 13150000 		.4byte	.LASF101
 1970 03d6 03       		.byte	0x3
 1971 03d7 9C01     		.2byte	0x19c
 1972 03d9 E8000000 		.4byte	0xe8
 1973 03dd 00       		.byte	0
 1974 03de 0C       		.uleb128 0xc
 1975 03df D0060000 		.4byte	.LASF102
 1976 03e3 03       		.byte	0x3
 1977 03e4 9D01     		.2byte	0x19d
 1978 03e6 E3000000 		.4byte	0xe3
 1979 03ea 04       		.byte	0x4
 1980 03eb 0C       		.uleb128 0xc
 1981 03ec F3030000 		.4byte	.LASF103
 1982 03f0 03       		.byte	0x3
 1983 03f1 9E01     		.2byte	0x19e
 1984 03f3 E3000000 		.4byte	0xe3
 1985 03f7 08       		.byte	0x8
 1986 03f8 0C       		.uleb128 0xc
 1987 03f9 450A0000 		.4byte	.LASF104
 1988 03fd 03       		.byte	0x3
 1989 03fe 9F01     		.2byte	0x19f
 1990 0400 E3000000 		.4byte	0xe3
 1991 0404 0C       		.byte	0xc
 1992 0405 13       		.uleb128 0x13
 1993 0406 53435200 		.ascii	"SCR\000"
 1994 040a 03       		.byte	0x3
 1995 040b A001     		.2byte	0x1a0
 1996 040d E3000000 		.4byte	0xe3
 1997 0411 10       		.byte	0x10
 1998 0412 13       		.uleb128 0x13
 1999 0413 43435200 		.ascii	"CCR\000"
 2000 0417 03       		.byte	0x3
 2001 0418 A101     		.2byte	0x1a1
 2002 041a E3000000 		.4byte	0xe3
 2003 041e 14       		.byte	0x14
 2004 041f 0C       		.uleb128 0xc
 2005 0420 730C0000 		.4byte	.LASF105
 2006 0424 03       		.byte	0x3
 2007 0425 A201     		.2byte	0x1a2
 2008 0427 84060000 		.4byte	0x684
 2009 042b 18       		.byte	0x18
ARM GAS  /tmp/ccQNhOlE.s 			page 96


 2010 042c 0C       		.uleb128 0xc
 2011 042d 49090000 		.4byte	.LASF106
 2012 0431 03       		.byte	0x3
 2013 0432 A301     		.2byte	0x1a3
 2014 0434 E3000000 		.4byte	0xe3
 2015 0438 24       		.byte	0x24
 2016 0439 0C       		.uleb128 0xc
 2017 043a 44100000 		.4byte	.LASF107
 2018 043e 03       		.byte	0x3
 2019 043f A401     		.2byte	0x1a4
 2020 0441 E3000000 		.4byte	0xe3
 2021 0445 28       		.byte	0x28
 2022 0446 0C       		.uleb128 0xc
 2023 0447 23030000 		.4byte	.LASF108
 2024 044b 03       		.byte	0x3
 2025 044c A501     		.2byte	0x1a5
 2026 044e E3000000 		.4byte	0xe3
 2027 0452 2C       		.byte	0x2c
 2028 0453 0C       		.uleb128 0xc
 2029 0454 BA040000 		.4byte	.LASF109
 2030 0458 03       		.byte	0x3
 2031 0459 A601     		.2byte	0x1a6
 2032 045b E3000000 		.4byte	0xe3
 2033 045f 30       		.byte	0x30
 2034 0460 0C       		.uleb128 0xc
 2035 0461 25180000 		.4byte	.LASF110
 2036 0465 03       		.byte	0x3
 2037 0466 A701     		.2byte	0x1a7
 2038 0468 E3000000 		.4byte	0xe3
 2039 046c 34       		.byte	0x34
 2040 046d 0C       		.uleb128 0xc
 2041 046e 37170000 		.4byte	.LASF111
 2042 0472 03       		.byte	0x3
 2043 0473 A801     		.2byte	0x1a8
 2044 0475 E3000000 		.4byte	0xe3
 2045 0479 38       		.byte	0x38
 2046 047a 0C       		.uleb128 0xc
 2047 047b E8110000 		.4byte	.LASF112
 2048 047f 03       		.byte	0x3
 2049 0480 A901     		.2byte	0x1a9
 2050 0482 E3000000 		.4byte	0xe3
 2051 0486 3C       		.byte	0x3c
 2052 0487 0C       		.uleb128 0xc
 2053 0488 F9040000 		.4byte	.LASF113
 2054 048c 03       		.byte	0x3
 2055 048d AA01     		.2byte	0x1aa
 2056 048f 9E060000 		.4byte	0x69e
 2057 0493 40       		.byte	0x40
 2058 0494 0C       		.uleb128 0xc
 2059 0495 FD000000 		.4byte	.LASF114
 2060 0499 03       		.byte	0x3
 2061 049a AB01     		.2byte	0x1ab
 2062 049c E8000000 		.4byte	0xe8
 2063 04a0 48       		.byte	0x48
 2064 04a1 0C       		.uleb128 0xc
 2065 04a2 44120000 		.4byte	.LASF115
 2066 04a6 03       		.byte	0x3
ARM GAS  /tmp/ccQNhOlE.s 			page 97


 2067 04a7 AC01     		.2byte	0x1ac
 2068 04a9 E8000000 		.4byte	0xe8
 2069 04ad 4C       		.byte	0x4c
 2070 04ae 0C       		.uleb128 0xc
 2071 04af D5160000 		.4byte	.LASF116
 2072 04b3 03       		.byte	0x3
 2073 04b4 AD01     		.2byte	0x1ad
 2074 04b6 C7060000 		.4byte	0x6c7
 2075 04ba 50       		.byte	0x50
 2076 04bb 0C       		.uleb128 0xc
 2077 04bc 38020000 		.4byte	.LASF117
 2078 04c0 03       		.byte	0x3
 2079 04c1 AE01     		.2byte	0x1ae
 2080 04c3 E1060000 		.4byte	0x6e1
 2081 04c7 60       		.byte	0x60
 2082 04c8 0C       		.uleb128 0xc
 2083 04c9 A6130000 		.4byte	.LASF88
 2084 04cd 03       		.byte	0x3
 2085 04ce AF01     		.2byte	0x1af
 2086 04d0 E6060000 		.4byte	0x6e6
 2087 04d4 74       		.byte	0x74
 2088 04d5 0C       		.uleb128 0xc
 2089 04d6 E8060000 		.4byte	.LASF118
 2090 04da 03       		.byte	0x3
 2091 04db B001     		.2byte	0x1b0
 2092 04dd E8000000 		.4byte	0xe8
 2093 04e1 78       		.byte	0x78
 2094 04e2 13       		.uleb128 0x13
 2095 04e3 43545200 		.ascii	"CTR\000"
 2096 04e7 03       		.byte	0x3
 2097 04e8 B101     		.2byte	0x1b1
 2098 04ea E8000000 		.4byte	0xe8
 2099 04ee 7C       		.byte	0x7c
 2100 04ef 0C       		.uleb128 0xc
 2101 04f0 900D0000 		.4byte	.LASF119
 2102 04f4 03       		.byte	0x3
 2103 04f5 B201     		.2byte	0x1b2
 2104 04f7 E8000000 		.4byte	0xe8
 2105 04fb 80       		.byte	0x80
 2106 04fc 0C       		.uleb128 0xc
 2107 04fd ED070000 		.4byte	.LASF120
 2108 0501 03       		.byte	0x3
 2109 0502 B301     		.2byte	0x1b3
 2110 0504 E3000000 		.4byte	0xe3
 2111 0508 84       		.byte	0x84
 2112 0509 0C       		.uleb128 0xc
 2113 050a 1C140000 		.4byte	.LASF121
 2114 050e 03       		.byte	0x3
 2115 050f B401     		.2byte	0x1b4
 2116 0511 E3000000 		.4byte	0xe3
 2117 0515 88       		.byte	0x88
 2118 0516 0C       		.uleb128 0xc
 2119 0517 BA130000 		.4byte	.LASF94
 2120 051b 03       		.byte	0x3
 2121 051c B501     		.2byte	0x1b5
 2122 051e F6060000 		.4byte	0x6f6
 2123 0522 8C       		.byte	0x8c
ARM GAS  /tmp/ccQNhOlE.s 			page 98


 2124 0523 0D       		.uleb128 0xd
 2125 0524 D40D0000 		.4byte	.LASF98
 2126 0528 03       		.byte	0x3
 2127 0529 B601     		.2byte	0x1b6
 2128 052b E3000000 		.4byte	0xe3
 2129 052f 0002     		.2byte	0x200
 2130 0531 0D       		.uleb128 0xd
 2131 0532 C4130000 		.4byte	.LASF96
 2132 0536 03       		.byte	0x3
 2133 0537 B701     		.2byte	0x1b7
 2134 0539 06070000 		.4byte	0x706
 2135 053d 0402     		.2byte	0x204
 2136 053f 0D       		.uleb128 0xd
 2137 0540 7F0C0000 		.4byte	.LASF122
 2138 0544 03       		.byte	0x3
 2139 0545 B801     		.2byte	0x1b8
 2140 0547 E8000000 		.4byte	0xe8
 2141 054b 4002     		.2byte	0x240
 2142 054d 0D       		.uleb128 0xd
 2143 054e 850C0000 		.4byte	.LASF123
 2144 0552 03       		.byte	0x3
 2145 0553 B901     		.2byte	0x1b9
 2146 0555 E8000000 		.4byte	0xe8
 2147 0559 4402     		.2byte	0x244
 2148 055b 0D       		.uleb128 0xd
 2149 055c 8B0C0000 		.4byte	.LASF124
 2150 0560 03       		.byte	0x3
 2151 0561 BA01     		.2byte	0x1ba
 2152 0563 E8000000 		.4byte	0xe8
 2153 0567 4802     		.2byte	0x248
 2154 0569 0D       		.uleb128 0xd
 2155 056a CE130000 		.4byte	.LASF97
 2156 056e 03       		.byte	0x3
 2157 056f BB01     		.2byte	0x1bb
 2158 0571 E6060000 		.4byte	0x6e6
 2159 0575 4C02     		.2byte	0x24c
 2160 0577 0D       		.uleb128 0xd
 2161 0578 B0080000 		.4byte	.LASF125
 2162 057c 03       		.byte	0x3
 2163 057d BC01     		.2byte	0x1bc
 2164 057f E3000000 		.4byte	0xe3
 2165 0583 5002     		.2byte	0x250
 2166 0585 0D       		.uleb128 0xd
 2167 0586 D8130000 		.4byte	.LASF126
 2168 058a 03       		.byte	0x3
 2169 058b BD01     		.2byte	0x1bd
 2170 058d E6060000 		.4byte	0x6e6
 2171 0591 5402     		.2byte	0x254
 2172 0593 0D       		.uleb128 0xd
 2173 0594 4F180000 		.4byte	.LASF127
 2174 0598 03       		.byte	0x3
 2175 0599 BE01     		.2byte	0x1be
 2176 059b E3000000 		.4byte	0xe3
 2177 059f 5802     		.2byte	0x258
 2178 05a1 0D       		.uleb128 0xd
 2179 05a2 9A160000 		.4byte	.LASF128
 2180 05a6 03       		.byte	0x3
ARM GAS  /tmp/ccQNhOlE.s 			page 99


 2181 05a7 BF01     		.2byte	0x1bf
 2182 05a9 E3000000 		.4byte	0xe3
 2183 05ad 5C02     		.2byte	0x25c
 2184 05af 0D       		.uleb128 0xd
 2185 05b0 A2160000 		.4byte	.LASF129
 2186 05b4 03       		.byte	0x3
 2187 05b5 C001     		.2byte	0x1c0
 2188 05b7 E3000000 		.4byte	0xe3
 2189 05bb 6002     		.2byte	0x260
 2190 05bd 0D       		.uleb128 0xd
 2191 05be C3000000 		.4byte	.LASF130
 2192 05c2 03       		.byte	0x3
 2193 05c3 C101     		.2byte	0x1c1
 2194 05c5 E3000000 		.4byte	0xe3
 2195 05c9 6402     		.2byte	0x264
 2196 05cb 0D       		.uleb128 0xd
 2197 05cc 8D000000 		.4byte	.LASF131
 2198 05d0 03       		.byte	0x3
 2199 05d1 C201     		.2byte	0x1c2
 2200 05d3 E3000000 		.4byte	0xe3
 2201 05d7 6802     		.2byte	0x268
 2202 05d9 0D       		.uleb128 0xd
 2203 05da 0E070000 		.4byte	.LASF132
 2204 05de 03       		.byte	0x3
 2205 05df C301     		.2byte	0x1c3
 2206 05e1 E3000000 		.4byte	0xe3
 2207 05e5 6C02     		.2byte	0x26c
 2208 05e7 0D       		.uleb128 0xd
 2209 05e8 950A0000 		.4byte	.LASF133
 2210 05ec 03       		.byte	0x3
 2211 05ed C401     		.2byte	0x1c4
 2212 05ef E3000000 		.4byte	0xe3
 2213 05f3 7002     		.2byte	0x270
 2214 05f5 0D       		.uleb128 0xd
 2215 05f6 28030000 		.4byte	.LASF134
 2216 05fa 03       		.byte	0x3
 2217 05fb C501     		.2byte	0x1c5
 2218 05fd E3000000 		.4byte	0xe3
 2219 0601 7402     		.2byte	0x274
 2220 0603 0D       		.uleb128 0xd
 2221 0604 E2130000 		.4byte	.LASF135
 2222 0608 03       		.byte	0x3
 2223 0609 C601     		.2byte	0x1c6
 2224 060b 16070000 		.4byte	0x716
 2225 060f 7802     		.2byte	0x278
 2226 0611 0D       		.uleb128 0xd
 2227 0612 2C080000 		.4byte	.LASF136
 2228 0616 03       		.byte	0x3
 2229 0617 C701     		.2byte	0x1c7
 2230 0619 E3000000 		.4byte	0xe3
 2231 061d 9002     		.2byte	0x290
 2232 061f 0D       		.uleb128 0xd
 2233 0620 780C0000 		.4byte	.LASF137
 2234 0624 03       		.byte	0x3
 2235 0625 C801     		.2byte	0x1c8
 2236 0627 E3000000 		.4byte	0xe3
 2237 062b 9402     		.2byte	0x294
ARM GAS  /tmp/ccQNhOlE.s 			page 100


 2238 062d 0D       		.uleb128 0xd
 2239 062e 6A050000 		.4byte	.LASF138
 2240 0632 03       		.byte	0x3
 2241 0633 C901     		.2byte	0x1c9
 2242 0635 E3000000 		.4byte	0xe3
 2243 0639 9802     		.2byte	0x298
 2244 063b 0D       		.uleb128 0xd
 2245 063c 2B180000 		.4byte	.LASF139
 2246 0640 03       		.byte	0x3
 2247 0641 CA01     		.2byte	0x1ca
 2248 0643 E3000000 		.4byte	0xe3
 2249 0647 9C02     		.2byte	0x29c
 2250 0649 0D       		.uleb128 0xd
 2251 064a F20A0000 		.4byte	.LASF140
 2252 064e 03       		.byte	0x3
 2253 064f CB01     		.2byte	0x1cb
 2254 0651 E3000000 		.4byte	0xe3
 2255 0655 A002     		.2byte	0x2a0
 2256 0657 0D       		.uleb128 0xd
 2257 0658 EC130000 		.4byte	.LASF141
 2258 065c 03       		.byte	0x3
 2259 065d CC01     		.2byte	0x1cc
 2260 065f E6060000 		.4byte	0x6e6
 2261 0663 A402     		.2byte	0x2a4
 2262 0665 0D       		.uleb128 0xd
 2263 0666 C8040000 		.4byte	.LASF142
 2264 066a 03       		.byte	0x3
 2265 066b CD01     		.2byte	0x1cd
 2266 066d E3000000 		.4byte	0xe3
 2267 0671 A802     		.2byte	0x2a8
 2268 0673 00       		.byte	0
 2269 0674 0F       		.uleb128 0xf
 2270 0675 AD000000 		.4byte	0xad
 2271 0679 84060000 		.4byte	0x684
 2272 067d 10       		.uleb128 0x10
 2273 067e 6E030000 		.4byte	0x36e
 2274 0682 0B       		.byte	0xb
 2275 0683 00       		.byte	0
 2276 0684 05       		.uleb128 0x5
 2277 0685 74060000 		.4byte	0x674
 2278 0689 0F       		.uleb128 0xf
 2279 068a E8000000 		.4byte	0xe8
 2280 068e 99060000 		.4byte	0x699
 2281 0692 10       		.uleb128 0x10
 2282 0693 6E030000 		.4byte	0x36e
 2283 0697 01       		.byte	0x1
 2284 0698 00       		.byte	0
 2285 0699 06       		.uleb128 0x6
 2286 069a 89060000 		.4byte	0x689
 2287 069e 05       		.uleb128 0x5
 2288 069f 99060000 		.4byte	0x699
 2289 06a3 05       		.uleb128 0x5
 2290 06a4 99060000 		.4byte	0x699
 2291 06a8 05       		.uleb128 0x5
 2292 06a9 99060000 		.4byte	0x699
 2293 06ad 05       		.uleb128 0x5
 2294 06ae 99060000 		.4byte	0x699
ARM GAS  /tmp/ccQNhOlE.s 			page 101


 2295 06b2 0F       		.uleb128 0xf
 2296 06b3 E8000000 		.4byte	0xe8
 2297 06b7 C2060000 		.4byte	0x6c2
 2298 06bb 10       		.uleb128 0x10
 2299 06bc 6E030000 		.4byte	0x36e
 2300 06c0 03       		.byte	0x3
 2301 06c1 00       		.byte	0
 2302 06c2 06       		.uleb128 0x6
 2303 06c3 B2060000 		.4byte	0x6b2
 2304 06c7 05       		.uleb128 0x5
 2305 06c8 C2060000 		.4byte	0x6c2
 2306 06cc 0F       		.uleb128 0xf
 2307 06cd E8000000 		.4byte	0xe8
 2308 06d1 DC060000 		.4byte	0x6dc
 2309 06d5 10       		.uleb128 0x10
 2310 06d6 6E030000 		.4byte	0x36e
 2311 06da 04       		.byte	0x4
 2312 06db 00       		.byte	0
 2313 06dc 06       		.uleb128 0x6
 2314 06dd CC060000 		.4byte	0x6cc
 2315 06e1 05       		.uleb128 0x5
 2316 06e2 DC060000 		.4byte	0x6dc
 2317 06e6 0F       		.uleb128 0xf
 2318 06e7 D8000000 		.4byte	0xd8
 2319 06eb F6060000 		.4byte	0x6f6
 2320 06ef 10       		.uleb128 0x10
 2321 06f0 6E030000 		.4byte	0x36e
 2322 06f4 00       		.byte	0
 2323 06f5 00       		.byte	0
 2324 06f6 0F       		.uleb128 0xf
 2325 06f7 D8000000 		.4byte	0xd8
 2326 06fb 06070000 		.4byte	0x706
 2327 06ff 10       		.uleb128 0x10
 2328 0700 6E030000 		.4byte	0x36e
 2329 0704 5C       		.byte	0x5c
 2330 0705 00       		.byte	0
 2331 0706 0F       		.uleb128 0xf
 2332 0707 D8000000 		.4byte	0xd8
 2333 070b 16070000 		.4byte	0x716
 2334 070f 10       		.uleb128 0x10
 2335 0710 6E030000 		.4byte	0x36e
 2336 0714 0E       		.byte	0xe
 2337 0715 00       		.byte	0
 2338 0716 0F       		.uleb128 0xf
 2339 0717 D8000000 		.4byte	0xd8
 2340 071b 26070000 		.4byte	0x726
 2341 071f 10       		.uleb128 0x10
 2342 0720 6E030000 		.4byte	0x36e
 2343 0724 05       		.byte	0x5
 2344 0725 00       		.byte	0
 2345 0726 12       		.uleb128 0x12
 2346 0727 3B100000 		.4byte	.LASF143
 2347 072b 03       		.byte	0x3
 2348 072c CE01     		.2byte	0x1ce
 2349 072e C7030000 		.4byte	0x3c7
 2350 0732 14       		.uleb128 0x14
 2351 0733 22140000 		.4byte	.LASF144
ARM GAS  /tmp/ccQNhOlE.s 			page 102


 2352 0737 03       		.byte	0x3
 2353 0738 6508     		.2byte	0x865
 2354 073a D3000000 		.4byte	0xd3
 2355 073e 15       		.uleb128 0x15
 2356 073f 2A0C0000 		.4byte	.LASF145
 2357 0743 07       		.byte	0x7
 2358 0744 3A       		.byte	0x3a
 2359 0745 D8000000 		.4byte	0xd8
 2360 0749 0F       		.uleb128 0xf
 2361 074a E8000000 		.4byte	0xe8
 2362 074e 59070000 		.4byte	0x759
 2363 0752 10       		.uleb128 0x10
 2364 0753 6E030000 		.4byte	0x36e
 2365 0757 06       		.byte	0x6
 2366 0758 00       		.byte	0
 2367 0759 06       		.uleb128 0x6
 2368 075a 49070000 		.4byte	0x749
 2369 075e 05       		.uleb128 0x5
 2370 075f 59070000 		.4byte	0x759
 2371 0763 16       		.uleb128 0x16
 2372 0764 EC       		.byte	0xec
 2373 0765 08       		.byte	0x8
 2374 0766 38       		.byte	0x38
 2375 0767 10090000 		.4byte	0x910
 2376 076b 17       		.uleb128 0x17
 2377 076c 740A0000 		.4byte	.LASF146
 2378 0770 08       		.byte	0x8
 2379 0771 39       		.byte	0x39
 2380 0772 E3000000 		.4byte	0xe3
 2381 0776 00       		.byte	0
 2382 0777 17       		.uleb128 0x17
 2383 0778 2B0F0000 		.4byte	.LASF147
 2384 077c 08       		.byte	0x8
 2385 077d 3A       		.byte	0x3a
 2386 077e E3000000 		.4byte	0xe3
 2387 0782 04       		.byte	0x4
 2388 0783 17       		.uleb128 0x17
 2389 0784 8C080000 		.4byte	.LASF148
 2390 0788 08       		.byte	0x8
 2391 0789 3B       		.byte	0x3b
 2392 078a E3000000 		.4byte	0xe3
 2393 078e 08       		.byte	0x8
 2394 078f 17       		.uleb128 0x17
 2395 0790 570C0000 		.4byte	.LASF149
 2396 0794 08       		.byte	0x8
 2397 0795 3C       		.byte	0x3c
 2398 0796 E3000000 		.4byte	0xe3
 2399 079a 0C       		.byte	0xc
 2400 079b 17       		.uleb128 0x17
 2401 079c B90C0000 		.4byte	.LASF150
 2402 07a0 08       		.byte	0x8
 2403 07a1 3D       		.byte	0x3d
 2404 07a2 E3000000 		.4byte	0xe3
 2405 07a6 10       		.byte	0x10
 2406 07a7 17       		.uleb128 0x17
 2407 07a8 B80D0000 		.4byte	.LASF151
 2408 07ac 08       		.byte	0x8
ARM GAS  /tmp/ccQNhOlE.s 			page 103


 2409 07ad 3E       		.byte	0x3e
 2410 07ae E3000000 		.4byte	0xe3
 2411 07b2 14       		.byte	0x14
 2412 07b3 17       		.uleb128 0x17
 2413 07b4 3B0D0000 		.4byte	.LASF152
 2414 07b8 08       		.byte	0x8
 2415 07b9 3F       		.byte	0x3f
 2416 07ba E3000000 		.4byte	0xe3
 2417 07be 18       		.byte	0x18
 2418 07bf 17       		.uleb128 0x17
 2419 07c0 5D140000 		.4byte	.LASF153
 2420 07c4 08       		.byte	0x8
 2421 07c5 40       		.byte	0x40
 2422 07c6 E8000000 		.4byte	0xe8
 2423 07ca 1C       		.byte	0x1c
 2424 07cb 17       		.uleb128 0x17
 2425 07cc ED090000 		.4byte	.LASF154
 2426 07d0 08       		.byte	0x8
 2427 07d1 41       		.byte	0x41
 2428 07d2 E8000000 		.4byte	0xe8
 2429 07d6 20       		.byte	0x20
 2430 07d7 17       		.uleb128 0x17
 2431 07d8 050F0000 		.4byte	.LASF155
 2432 07dc 08       		.byte	0x8
 2433 07dd 42       		.byte	0x42
 2434 07de E3000000 		.4byte	0xe3
 2435 07e2 24       		.byte	0x24
 2436 07e3 17       		.uleb128 0x17
 2437 07e4 200E0000 		.4byte	.LASF156
 2438 07e8 08       		.byte	0x8
 2439 07e9 43       		.byte	0x43
 2440 07ea E3000000 		.4byte	0xe3
 2441 07ee 28       		.byte	0x28
 2442 07ef 17       		.uleb128 0x17
 2443 07f0 FE120000 		.4byte	.LASF157
 2444 07f4 08       		.byte	0x8
 2445 07f5 44       		.byte	0x44
 2446 07f6 E8000000 		.4byte	0xe8
 2447 07fa 2C       		.byte	0x2c
 2448 07fb 17       		.uleb128 0x17
 2449 07fc 5A150000 		.4byte	.LASF158
 2450 0800 08       		.byte	0x8
 2451 0801 45       		.byte	0x45
 2452 0802 E8000000 		.4byte	0xe8
 2453 0806 30       		.byte	0x30
 2454 0807 17       		.uleb128 0x17
 2455 0808 D1170000 		.4byte	.LASF159
 2456 080c 08       		.byte	0x8
 2457 080d 46       		.byte	0x46
 2458 080e 25090000 		.4byte	0x925
 2459 0812 34       		.byte	0x34
 2460 0813 17       		.uleb128 0x17
 2461 0814 4B120000 		.4byte	.LASF160
 2462 0818 08       		.byte	0x8
 2463 0819 47       		.byte	0x47
 2464 081a E8000000 		.4byte	0xe8
 2465 081e 4C       		.byte	0x4c
ARM GAS  /tmp/ccQNhOlE.s 			page 104


 2466 081f 17       		.uleb128 0x17
 2467 0820 DC070000 		.4byte	.LASF161
 2468 0824 08       		.byte	0x8
 2469 0825 48       		.byte	0x48
 2470 0826 E3000000 		.4byte	0xe3
 2471 082a 50       		.byte	0x50
 2472 082b 17       		.uleb128 0x17
 2473 082c F4020000 		.4byte	.LASF162
 2474 0830 08       		.byte	0x8
 2475 0831 49       		.byte	0x49
 2476 0832 E3000000 		.4byte	0xe3
 2477 0836 54       		.byte	0x54
 2478 0837 17       		.uleb128 0x17
 2479 0838 DB170000 		.4byte	.LASF163
 2480 083c 08       		.byte	0x8
 2481 083d 4A       		.byte	0x4a
 2482 083e A3060000 		.4byte	0x6a3
 2483 0842 58       		.byte	0x58
 2484 0843 17       		.uleb128 0x17
 2485 0844 65020000 		.4byte	.LASF164
 2486 0848 08       		.byte	0x8
 2487 0849 4B       		.byte	0x4b
 2488 084a E3000000 		.4byte	0xe3
 2489 084e 60       		.byte	0x60
 2490 084f 17       		.uleb128 0x17
 2491 0850 E40C0000 		.4byte	.LASF165
 2492 0854 08       		.byte	0x8
 2493 0855 4C       		.byte	0x4c
 2494 0856 E3000000 		.4byte	0xe3
 2495 085a 64       		.byte	0x64
 2496 085b 17       		.uleb128 0x17
 2497 085c 20010000 		.4byte	.LASF166
 2498 0860 08       		.byte	0x8
 2499 0861 4D       		.byte	0x4d
 2500 0862 E8000000 		.4byte	0xe8
 2501 0866 68       		.byte	0x68
 2502 0867 17       		.uleb128 0x17
 2503 0868 F6050000 		.4byte	.LASF167
 2504 086c 08       		.byte	0x8
 2505 086d 4E       		.byte	0x4e
 2506 086e E3000000 		.4byte	0xe3
 2507 0872 6C       		.byte	0x6c
 2508 0873 17       		.uleb128 0x17
 2509 0874 BD060000 		.4byte	.LASF168
 2510 0878 08       		.byte	0x8
 2511 0879 4F       		.byte	0x4f
 2512 087a E3000000 		.4byte	0xe3
 2513 087e 70       		.byte	0x70
 2514 087f 17       		.uleb128 0x17
 2515 0880 4D150000 		.4byte	.LASF169
 2516 0884 08       		.byte	0x8
 2517 0885 50       		.byte	0x50
 2518 0886 E3000000 		.4byte	0xe3
 2519 088a 74       		.byte	0x74
 2520 088b 17       		.uleb128 0x17
 2521 088c E5170000 		.4byte	.LASF170
 2522 0890 08       		.byte	0x8
ARM GAS  /tmp/ccQNhOlE.s 			page 105


 2523 0891 51       		.byte	0x51
 2524 0892 5E070000 		.4byte	0x75e
 2525 0896 78       		.byte	0x78
 2526 0897 17       		.uleb128 0x17
 2527 0898 4F140000 		.4byte	.LASF171
 2528 089c 08       		.byte	0x8
 2529 089d 52       		.byte	0x52
 2530 089e E3000000 		.4byte	0xe3
 2531 08a2 94       		.byte	0x94
 2532 08a3 17       		.uleb128 0x17
 2533 08a4 EF170000 		.4byte	.LASF172
 2534 08a8 08       		.byte	0x8
 2535 08a9 53       		.byte	0x53
 2536 08aa A8060000 		.4byte	0x6a8
 2537 08ae 98       		.byte	0x98
 2538 08af 17       		.uleb128 0x17
 2539 08b0 1E0A0000 		.4byte	.LASF173
 2540 08b4 08       		.byte	0x8
 2541 08b5 54       		.byte	0x54
 2542 08b6 E3000000 		.4byte	0xe3
 2543 08ba A0       		.byte	0xa0
 2544 08bb 17       		.uleb128 0x17
 2545 08bc F9170000 		.4byte	.LASF174
 2546 08c0 08       		.byte	0x8
 2547 08c1 55       		.byte	0x55
 2548 08c2 3F090000 		.4byte	0x93f
 2549 08c6 A4       		.byte	0xa4
 2550 08c7 17       		.uleb128 0x17
 2551 08c8 080B0000 		.4byte	.LASF175
 2552 08cc 08       		.byte	0x8
 2553 08cd 56       		.byte	0x56
 2554 08ce E3000000 		.4byte	0xe3
 2555 08d2 D0       		.byte	0xd0
 2556 08d3 17       		.uleb128 0x17
 2557 08d4 89070000 		.4byte	.LASF176
 2558 08d8 08       		.byte	0x8
 2559 08d9 57       		.byte	0x57
 2560 08da E3000000 		.4byte	0xe3
 2561 08de D4       		.byte	0xd4
 2562 08df 17       		.uleb128 0x17
 2563 08e0 92060000 		.4byte	.LASF177
 2564 08e4 08       		.byte	0x8
 2565 08e5 58       		.byte	0x58
 2566 08e6 E3000000 		.4byte	0xe3
 2567 08ea D8       		.byte	0xd8
 2568 08eb 17       		.uleb128 0x17
 2569 08ec 03180000 		.4byte	.LASF178
 2570 08f0 08       		.byte	0x8
 2571 08f1 59       		.byte	0x59
 2572 08f2 AD060000 		.4byte	0x6ad
 2573 08f6 DC       		.byte	0xdc
 2574 08f7 17       		.uleb128 0x17
 2575 08f8 FE030000 		.4byte	.LASF179
 2576 08fc 08       		.byte	0x8
 2577 08fd 5A       		.byte	0x5a
 2578 08fe E3000000 		.4byte	0xe3
 2579 0902 E4       		.byte	0xe4
ARM GAS  /tmp/ccQNhOlE.s 			page 106


 2580 0903 17       		.uleb128 0x17
 2581 0904 16060000 		.4byte	.LASF180
 2582 0908 08       		.byte	0x8
 2583 0909 5B       		.byte	0x5b
 2584 090a E8000000 		.4byte	0xe8
 2585 090e E8       		.byte	0xe8
 2586 090f 00       		.byte	0
 2587 0910 0F       		.uleb128 0xf
 2588 0911 E8000000 		.4byte	0xe8
 2589 0915 20090000 		.4byte	0x920
 2590 0919 10       		.uleb128 0x10
 2591 091a 6E030000 		.4byte	0x36e
 2592 091e 05       		.byte	0x5
 2593 091f 00       		.byte	0
 2594 0920 06       		.uleb128 0x6
 2595 0921 10090000 		.4byte	0x910
 2596 0925 05       		.uleb128 0x5
 2597 0926 20090000 		.4byte	0x920
 2598 092a 0F       		.uleb128 0xf
 2599 092b E8000000 		.4byte	0xe8
 2600 092f 3A090000 		.4byte	0x93a
 2601 0933 10       		.uleb128 0x10
 2602 0934 6E030000 		.4byte	0x36e
 2603 0938 0A       		.byte	0xa
 2604 0939 00       		.byte	0
 2605 093a 06       		.uleb128 0x6
 2606 093b 2A090000 		.4byte	0x92a
 2607 093f 05       		.uleb128 0x5
 2608 0940 3A090000 		.4byte	0x93a
 2609 0944 04       		.uleb128 0x4
 2610 0945 62030000 		.4byte	.LASF181
 2611 0949 08       		.byte	0x8
 2612 094a 5C       		.byte	0x5c
 2613 094b 63070000 		.4byte	0x763
 2614 094f 04       		.uleb128 0x4
 2615 0950 290D0000 		.4byte	.LASF182
 2616 0954 09       		.byte	0x9
 2617 0955 07       		.byte	0x7
 2618 0956 25000000 		.4byte	0x25
 2619 095a 04       		.uleb128 0x4
 2620 095b 55070000 		.4byte	.LASF183
 2621 095f 0A       		.byte	0xa
 2622 0960 2C       		.byte	0x2c
 2623 0961 7B000000 		.4byte	0x7b
 2624 0965 04       		.uleb128 0x4
 2625 0966 2C120000 		.4byte	.LASF184
 2626 096a 0A       		.byte	0xa
 2627 096b 72       		.byte	0x72
 2628 096c 7B000000 		.4byte	0x7b
 2629 0970 12       		.uleb128 0x12
 2630 0971 80080000 		.4byte	.LASF185
 2631 0975 0B       		.byte	0xb
 2632 0976 6501     		.2byte	0x165
 2633 0978 2C000000 		.4byte	0x2c
 2634 097c 18       		.uleb128 0x18
 2635 097d 04       		.byte	0x4
 2636 097e 0A       		.byte	0xa
ARM GAS  /tmp/ccQNhOlE.s 			page 107


 2637 097f A6       		.byte	0xa6
 2638 0980 9B090000 		.4byte	0x99b
 2639 0984 19       		.uleb128 0x19
 2640 0985 DE0C0000 		.4byte	.LASF186
 2641 0989 0A       		.byte	0xa
 2642 098a A8       		.byte	0xa8
 2643 098b 70090000 		.4byte	0x970
 2644 098f 19       		.uleb128 0x19
 2645 0990 56080000 		.4byte	.LASF187
 2646 0994 0A       		.byte	0xa
 2647 0995 A9       		.byte	0xa9
 2648 0996 9B090000 		.4byte	0x99b
 2649 099a 00       		.byte	0
 2650 099b 0F       		.uleb128 0xf
 2651 099c 45000000 		.4byte	0x45
 2652 09a0 AB090000 		.4byte	0x9ab
 2653 09a4 10       		.uleb128 0x10
 2654 09a5 6E030000 		.4byte	0x36e
 2655 09a9 03       		.byte	0x3
 2656 09aa 00       		.byte	0
 2657 09ab 16       		.uleb128 0x16
 2658 09ac 08       		.byte	0x8
 2659 09ad 0A       		.byte	0xa
 2660 09ae A3       		.byte	0xa3
 2661 09af CC090000 		.4byte	0x9cc
 2662 09b3 17       		.uleb128 0x17
 2663 09b4 92070000 		.4byte	.LASF188
 2664 09b8 0A       		.byte	0xa
 2665 09b9 A5       		.byte	0xa5
 2666 09ba 25000000 		.4byte	0x25
 2667 09be 00       		.byte	0
 2668 09bf 17       		.uleb128 0x17
 2669 09c0 45130000 		.4byte	.LASF189
 2670 09c4 0A       		.byte	0xa
 2671 09c5 AA       		.byte	0xaa
 2672 09c6 7C090000 		.4byte	0x97c
 2673 09ca 04       		.byte	0x4
 2674 09cb 00       		.byte	0
 2675 09cc 04       		.uleb128 0x4
 2676 09cd AD120000 		.4byte	.LASF190
 2677 09d1 0A       		.byte	0xa
 2678 09d2 AB       		.byte	0xab
 2679 09d3 AB090000 		.4byte	0x9ab
 2680 09d7 04       		.uleb128 0x4
 2681 09d8 78150000 		.4byte	.LASF191
 2682 09dc 0A       		.byte	0xa
 2683 09dd AF       		.byte	0xaf
 2684 09de 4F090000 		.4byte	0x94f
 2685 09e2 04       		.uleb128 0x4
 2686 09e3 9E0A0000 		.4byte	.LASF192
 2687 09e7 0C       		.byte	0xc
 2688 09e8 16       		.byte	0x16
 2689 09e9 8D000000 		.4byte	0x8d
 2690 09ed 1A       		.uleb128 0x1a
 2691 09ee 07100000 		.4byte	.LASF197
 2692 09f2 18       		.byte	0x18
 2693 09f3 0C       		.byte	0xc
ARM GAS  /tmp/ccQNhOlE.s 			page 108


 2694 09f4 2D       		.byte	0x2d
 2695 09f5 400A0000 		.4byte	0xa40
 2696 09f9 17       		.uleb128 0x17
 2697 09fa 23090000 		.4byte	.LASF193
 2698 09fe 0C       		.byte	0xc
 2699 09ff 2F       		.byte	0x2f
 2700 0a00 400A0000 		.4byte	0xa40
 2701 0a04 00       		.byte	0
 2702 0a05 1B       		.uleb128 0x1b
 2703 0a06 5F6B00   		.ascii	"_k\000"
 2704 0a09 0C       		.byte	0xc
 2705 0a0a 30       		.byte	0x30
 2706 0a0b 25000000 		.4byte	0x25
 2707 0a0f 04       		.byte	0x4
 2708 0a10 17       		.uleb128 0x17
 2709 0a11 4A0E0000 		.4byte	.LASF194
 2710 0a15 0C       		.byte	0xc
 2711 0a16 30       		.byte	0x30
 2712 0a17 25000000 		.4byte	0x25
 2713 0a1b 08       		.byte	0x8
 2714 0a1c 17       		.uleb128 0x17
 2715 0a1d 78170000 		.4byte	.LASF195
 2716 0a21 0C       		.byte	0xc
 2717 0a22 30       		.byte	0x30
 2718 0a23 25000000 		.4byte	0x25
 2719 0a27 0C       		.byte	0xc
 2720 0a28 17       		.uleb128 0x17
 2721 0a29 98050000 		.4byte	.LASF196
 2722 0a2d 0C       		.byte	0xc
 2723 0a2e 30       		.byte	0x30
 2724 0a2f 25000000 		.4byte	0x25
 2725 0a33 10       		.byte	0x10
 2726 0a34 1B       		.uleb128 0x1b
 2727 0a35 5F7800   		.ascii	"_x\000"
 2728 0a38 0C       		.byte	0xc
 2729 0a39 31       		.byte	0x31
 2730 0a3a 460A0000 		.4byte	0xa46
 2731 0a3e 14       		.byte	0x14
 2732 0a3f 00       		.byte	0
 2733 0a40 1C       		.uleb128 0x1c
 2734 0a41 04       		.byte	0x4
 2735 0a42 ED090000 		.4byte	0x9ed
 2736 0a46 0F       		.uleb128 0xf
 2737 0a47 E2090000 		.4byte	0x9e2
 2738 0a4b 560A0000 		.4byte	0xa56
 2739 0a4f 10       		.uleb128 0x10
 2740 0a50 6E030000 		.4byte	0x36e
 2741 0a54 00       		.byte	0
 2742 0a55 00       		.byte	0
 2743 0a56 1A       		.uleb128 0x1a
 2744 0a57 9C040000 		.4byte	.LASF198
 2745 0a5b 24       		.byte	0x24
 2746 0a5c 0C       		.byte	0xc
 2747 0a5d 35       		.byte	0x35
 2748 0a5e CF0A0000 		.4byte	0xacf
 2749 0a62 17       		.uleb128 0x17
 2750 0a63 F7090000 		.4byte	.LASF199
ARM GAS  /tmp/ccQNhOlE.s 			page 109


 2751 0a67 0C       		.byte	0xc
 2752 0a68 37       		.byte	0x37
 2753 0a69 25000000 		.4byte	0x25
 2754 0a6d 00       		.byte	0
 2755 0a6e 17       		.uleb128 0x17
 2756 0a6f 7E170000 		.4byte	.LASF200
 2757 0a73 0C       		.byte	0xc
 2758 0a74 38       		.byte	0x38
 2759 0a75 25000000 		.4byte	0x25
 2760 0a79 04       		.byte	0x4
 2761 0a7a 17       		.uleb128 0x17
 2762 0a7b 6C080000 		.4byte	.LASF201
 2763 0a7f 0C       		.byte	0xc
 2764 0a80 39       		.byte	0x39
 2765 0a81 25000000 		.4byte	0x25
 2766 0a85 08       		.byte	0x8
 2767 0a86 17       		.uleb128 0x17
 2768 0a87 BF080000 		.4byte	.LASF202
 2769 0a8b 0C       		.byte	0xc
 2770 0a8c 3A       		.byte	0x3a
 2771 0a8d 25000000 		.4byte	0x25
 2772 0a91 0C       		.byte	0xc
 2773 0a92 17       		.uleb128 0x17
 2774 0a93 EB000000 		.4byte	.LASF203
 2775 0a97 0C       		.byte	0xc
 2776 0a98 3B       		.byte	0x3b
 2777 0a99 25000000 		.4byte	0x25
 2778 0a9d 10       		.byte	0x10
 2779 0a9e 17       		.uleb128 0x17
 2780 0a9f 4D060000 		.4byte	.LASF204
 2781 0aa3 0C       		.byte	0xc
 2782 0aa4 3C       		.byte	0x3c
 2783 0aa5 25000000 		.4byte	0x25
 2784 0aa9 14       		.byte	0x14
 2785 0aaa 17       		.uleb128 0x17
 2786 0aab 55050000 		.4byte	.LASF205
 2787 0aaf 0C       		.byte	0xc
 2788 0ab0 3D       		.byte	0x3d
 2789 0ab1 25000000 		.4byte	0x25
 2790 0ab5 18       		.byte	0x18
 2791 0ab6 17       		.uleb128 0x17
 2792 0ab7 B0040000 		.4byte	.LASF206
 2793 0abb 0C       		.byte	0xc
 2794 0abc 3E       		.byte	0x3e
 2795 0abd 25000000 		.4byte	0x25
 2796 0ac1 1C       		.byte	0x1c
 2797 0ac2 17       		.uleb128 0x17
 2798 0ac3 5F050000 		.4byte	.LASF207
 2799 0ac7 0C       		.byte	0xc
 2800 0ac8 3F       		.byte	0x3f
 2801 0ac9 25000000 		.4byte	0x25
 2802 0acd 20       		.byte	0x20
 2803 0ace 00       		.byte	0
 2804 0acf 1D       		.uleb128 0x1d
 2805 0ad0 000A0000 		.4byte	.LASF208
 2806 0ad4 0801     		.2byte	0x108
 2807 0ad6 0C       		.byte	0xc
ARM GAS  /tmp/ccQNhOlE.s 			page 110


 2808 0ad7 48       		.byte	0x48
 2809 0ad8 0F0B0000 		.4byte	0xb0f
 2810 0adc 17       		.uleb128 0x17
 2811 0add E3080000 		.4byte	.LASF209
 2812 0ae1 0C       		.byte	0xc
 2813 0ae2 49       		.byte	0x49
 2814 0ae3 0F0B0000 		.4byte	0xb0f
 2815 0ae7 00       		.byte	0
 2816 0ae8 17       		.uleb128 0x17
 2817 0ae9 40050000 		.4byte	.LASF210
 2818 0aed 0C       		.byte	0xc
 2819 0aee 4A       		.byte	0x4a
 2820 0aef 0F0B0000 		.4byte	0xb0f
 2821 0af3 80       		.byte	0x80
 2822 0af4 1E       		.uleb128 0x1e
 2823 0af5 F4000000 		.4byte	.LASF211
 2824 0af9 0C       		.byte	0xc
 2825 0afa 4C       		.byte	0x4c
 2826 0afb E2090000 		.4byte	0x9e2
 2827 0aff 0001     		.2byte	0x100
 2828 0b01 1E       		.uleb128 0x1e
 2829 0b02 4D130000 		.4byte	.LASF212
 2830 0b06 0C       		.byte	0xc
 2831 0b07 4F       		.byte	0x4f
 2832 0b08 E2090000 		.4byte	0x9e2
 2833 0b0c 0401     		.2byte	0x104
 2834 0b0e 00       		.byte	0
 2835 0b0f 0F       		.uleb128 0xf
 2836 0b10 9B020000 		.4byte	0x29b
 2837 0b14 1F0B0000 		.4byte	0xb1f
 2838 0b18 10       		.uleb128 0x10
 2839 0b19 6E030000 		.4byte	0x36e
 2840 0b1d 1F       		.byte	0x1f
 2841 0b1e 00       		.byte	0
 2842 0b1f 1D       		.uleb128 0x1d
 2843 0b20 D4000000 		.4byte	.LASF213
 2844 0b24 9001     		.2byte	0x190
 2845 0b26 0C       		.byte	0xc
 2846 0b27 5B       		.byte	0x5b
 2847 0b28 5D0B0000 		.4byte	0xb5d
 2848 0b2c 17       		.uleb128 0x17
 2849 0b2d 23090000 		.4byte	.LASF193
 2850 0b31 0C       		.byte	0xc
 2851 0b32 5C       		.byte	0x5c
 2852 0b33 5D0B0000 		.4byte	0xb5d
 2853 0b37 00       		.byte	0
 2854 0b38 17       		.uleb128 0x17
 2855 0b39 09010000 		.4byte	.LASF214
 2856 0b3d 0C       		.byte	0xc
 2857 0b3e 5D       		.byte	0x5d
 2858 0b3f 25000000 		.4byte	0x25
 2859 0b43 04       		.byte	0x4
 2860 0b44 17       		.uleb128 0x17
 2861 0b45 77120000 		.4byte	.LASF215
 2862 0b49 0C       		.byte	0xc
 2863 0b4a 5F       		.byte	0x5f
 2864 0b4b 630B0000 		.4byte	0xb63
ARM GAS  /tmp/ccQNhOlE.s 			page 111


 2865 0b4f 08       		.byte	0x8
 2866 0b50 17       		.uleb128 0x17
 2867 0b51 000A0000 		.4byte	.LASF208
 2868 0b55 0C       		.byte	0xc
 2869 0b56 60       		.byte	0x60
 2870 0b57 CF0A0000 		.4byte	0xacf
 2871 0b5b 88       		.byte	0x88
 2872 0b5c 00       		.byte	0
 2873 0b5d 1C       		.uleb128 0x1c
 2874 0b5e 04       		.byte	0x4
 2875 0b5f 1F0B0000 		.4byte	0xb1f
 2876 0b63 0F       		.uleb128 0xf
 2877 0b64 730B0000 		.4byte	0xb73
 2878 0b68 730B0000 		.4byte	0xb73
 2879 0b6c 10       		.uleb128 0x10
 2880 0b6d 6E030000 		.4byte	0x36e
 2881 0b71 1F       		.byte	0x1f
 2882 0b72 00       		.byte	0
 2883 0b73 1C       		.uleb128 0x1c
 2884 0b74 04       		.byte	0x4
 2885 0b75 790B0000 		.4byte	0xb79
 2886 0b79 1F       		.uleb128 0x1f
 2887 0b7a 1A       		.uleb128 0x1a
 2888 0b7b 620C0000 		.4byte	.LASF216
 2889 0b7f 08       		.byte	0x8
 2890 0b80 0C       		.byte	0xc
 2891 0b81 73       		.byte	0x73
 2892 0b82 9F0B0000 		.4byte	0xb9f
 2893 0b86 17       		.uleb128 0x17
 2894 0b87 F8030000 		.4byte	.LASF217
 2895 0b8b 0C       		.byte	0xc
 2896 0b8c 74       		.byte	0x74
 2897 0b8d 9F0B0000 		.4byte	0xb9f
 2898 0b91 00       		.byte	0
 2899 0b92 17       		.uleb128 0x17
 2900 0b93 D1050000 		.4byte	.LASF218
 2901 0b97 0C       		.byte	0xc
 2902 0b98 75       		.byte	0x75
 2903 0b99 25000000 		.4byte	0x25
 2904 0b9d 04       		.byte	0x4
 2905 0b9e 00       		.byte	0
 2906 0b9f 1C       		.uleb128 0x1c
 2907 0ba0 04       		.byte	0x4
 2908 0ba1 45000000 		.4byte	0x45
 2909 0ba5 1A       		.uleb128 0x1a
 2910 0ba6 55120000 		.4byte	.LASF219
 2911 0baa 68       		.byte	0x68
 2912 0bab 0C       		.byte	0xc
 2913 0bac B3       		.byte	0xb3
 2914 0bad CF0C0000 		.4byte	0xccf
 2915 0bb1 1B       		.uleb128 0x1b
 2916 0bb2 5F7000   		.ascii	"_p\000"
 2917 0bb5 0C       		.byte	0xc
 2918 0bb6 B4       		.byte	0xb4
 2919 0bb7 9F0B0000 		.4byte	0xb9f
 2920 0bbb 00       		.byte	0
 2921 0bbc 1B       		.uleb128 0x1b
ARM GAS  /tmp/ccQNhOlE.s 			page 112


 2922 0bbd 5F7200   		.ascii	"_r\000"
 2923 0bc0 0C       		.byte	0xc
 2924 0bc1 B5       		.byte	0xb5
 2925 0bc2 25000000 		.4byte	0x25
 2926 0bc6 04       		.byte	0x4
 2927 0bc7 1B       		.uleb128 0x1b
 2928 0bc8 5F7700   		.ascii	"_w\000"
 2929 0bcb 0C       		.byte	0xc
 2930 0bcc B6       		.byte	0xb6
 2931 0bcd 25000000 		.4byte	0x25
 2932 0bd1 08       		.byte	0x8
 2933 0bd2 17       		.uleb128 0x17
 2934 0bd3 20020000 		.4byte	.LASF220
 2935 0bd7 0C       		.byte	0xc
 2936 0bd8 B7       		.byte	0xb7
 2937 0bd9 57000000 		.4byte	0x57
 2938 0bdd 0C       		.byte	0xc
 2939 0bde 17       		.uleb128 0x17
 2940 0bdf 34120000 		.4byte	.LASF221
 2941 0be3 0C       		.byte	0xc
 2942 0be4 B8       		.byte	0xb8
 2943 0be5 57000000 		.4byte	0x57
 2944 0be9 0E       		.byte	0xe
 2945 0bea 1B       		.uleb128 0x1b
 2946 0beb 5F626600 		.ascii	"_bf\000"
 2947 0bef 0C       		.byte	0xc
 2948 0bf0 B9       		.byte	0xb9
 2949 0bf1 7A0B0000 		.4byte	0xb7a
 2950 0bf5 10       		.byte	0x10
 2951 0bf6 17       		.uleb128 0x17
 2952 0bf7 4D030000 		.4byte	.LASF222
 2953 0bfb 0C       		.byte	0xc
 2954 0bfc BA       		.byte	0xba
 2955 0bfd 25000000 		.4byte	0x25
 2956 0c01 18       		.byte	0x18
 2957 0c02 17       		.uleb128 0x17
 2958 0c03 35090000 		.4byte	.LASF223
 2959 0c07 0C       		.byte	0xc
 2960 0c08 C1       		.byte	0xc1
 2961 0c09 9B020000 		.4byte	0x29b
 2962 0c0d 1C       		.byte	0x1c
 2963 0c0e 17       		.uleb128 0x17
 2964 0c0f 62180000 		.4byte	.LASF224
 2965 0c13 0C       		.byte	0xc
 2966 0c14 C3       		.byte	0xc3
 2967 0c15 3C0E0000 		.4byte	0xe3c
 2968 0c19 20       		.byte	0x20
 2969 0c1a 17       		.uleb128 0x17
 2970 0c1b 0F060000 		.4byte	.LASF225
 2971 0c1f 0C       		.byte	0xc
 2972 0c20 C5       		.byte	0xc5
 2973 0c21 660E0000 		.4byte	0xe66
 2974 0c25 24       		.byte	0x24
 2975 0c26 17       		.uleb128 0x17
 2976 0c27 280B0000 		.4byte	.LASF226
 2977 0c2b 0C       		.byte	0xc
 2978 0c2c C8       		.byte	0xc8
ARM GAS  /tmp/ccQNhOlE.s 			page 113


 2979 0c2d 8A0E0000 		.4byte	0xe8a
 2980 0c31 28       		.byte	0x28
 2981 0c32 17       		.uleb128 0x17
 2982 0c33 870F0000 		.4byte	.LASF227
 2983 0c37 0C       		.byte	0xc
 2984 0c38 C9       		.byte	0xc9
 2985 0c39 A40E0000 		.4byte	0xea4
 2986 0c3d 2C       		.byte	0x2c
 2987 0c3e 1B       		.uleb128 0x1b
 2988 0c3f 5F756200 		.ascii	"_ub\000"
 2989 0c43 0C       		.byte	0xc
 2990 0c44 CC       		.byte	0xcc
 2991 0c45 7A0B0000 		.4byte	0xb7a
 2992 0c49 30       		.byte	0x30
 2993 0c4a 1B       		.uleb128 0x1b
 2994 0c4b 5F757000 		.ascii	"_up\000"
 2995 0c4f 0C       		.byte	0xc
 2996 0c50 CD       		.byte	0xcd
 2997 0c51 9F0B0000 		.4byte	0xb9f
 2998 0c55 38       		.byte	0x38
 2999 0c56 1B       		.uleb128 0x1b
 3000 0c57 5F757200 		.ascii	"_ur\000"
 3001 0c5b 0C       		.byte	0xc
 3002 0c5c CE       		.byte	0xce
 3003 0c5d 25000000 		.4byte	0x25
 3004 0c61 3C       		.byte	0x3c
 3005 0c62 17       		.uleb128 0x17
 3006 0c63 6E110000 		.4byte	.LASF228
 3007 0c67 0C       		.byte	0xc
 3008 0c68 D1       		.byte	0xd1
 3009 0c69 AA0E0000 		.4byte	0xeaa
 3010 0c6d 40       		.byte	0x40
 3011 0c6e 17       		.uleb128 0x17
 3012 0c6f 7D020000 		.4byte	.LASF229
 3013 0c73 0C       		.byte	0xc
 3014 0c74 D2       		.byte	0xd2
 3015 0c75 BA0E0000 		.4byte	0xeba
 3016 0c79 43       		.byte	0x43
 3017 0c7a 1B       		.uleb128 0x1b
 3018 0c7b 5F6C6200 		.ascii	"_lb\000"
 3019 0c7f 0C       		.byte	0xc
 3020 0c80 D5       		.byte	0xd5
 3021 0c81 7A0B0000 		.4byte	0xb7a
 3022 0c85 44       		.byte	0x44
 3023 0c86 17       		.uleb128 0x17
 3024 0c87 65110000 		.4byte	.LASF230
 3025 0c8b 0C       		.byte	0xc
 3026 0c8c D8       		.byte	0xd8
 3027 0c8d 25000000 		.4byte	0x25
 3028 0c91 4C       		.byte	0x4c
 3029 0c92 17       		.uleb128 0x17
 3030 0c93 220C0000 		.4byte	.LASF231
 3031 0c97 0C       		.byte	0xc
 3032 0c98 D9       		.byte	0xd9
 3033 0c99 5A090000 		.4byte	0x95a
 3034 0c9d 50       		.byte	0x50
 3035 0c9e 17       		.uleb128 0x17
ARM GAS  /tmp/ccQNhOlE.s 			page 114


 3036 0c9f 67030000 		.4byte	.LASF232
 3037 0ca3 0C       		.byte	0xc
 3038 0ca4 DC       		.byte	0xdc
 3039 0ca5 ED0C0000 		.4byte	0xced
 3040 0ca9 54       		.byte	0x54
 3041 0caa 17       		.uleb128 0x17
 3042 0cab 77020000 		.4byte	.LASF233
 3043 0caf 0C       		.byte	0xc
 3044 0cb0 E0       		.byte	0xe0
 3045 0cb1 D7090000 		.4byte	0x9d7
 3046 0cb5 58       		.byte	0x58
 3047 0cb6 17       		.uleb128 0x17
 3048 0cb7 CB000000 		.4byte	.LASF234
 3049 0cbb 0C       		.byte	0xc
 3050 0cbc E2       		.byte	0xe2
 3051 0cbd CC090000 		.4byte	0x9cc
 3052 0cc1 5C       		.byte	0x5c
 3053 0cc2 17       		.uleb128 0x17
 3054 0cc3 7D160000 		.4byte	.LASF235
 3055 0cc7 0C       		.byte	0xc
 3056 0cc8 E3       		.byte	0xe3
 3057 0cc9 25000000 		.4byte	0x25
 3058 0ccd 64       		.byte	0x64
 3059 0cce 00       		.byte	0
 3060 0ccf 20       		.uleb128 0x20
 3061 0cd0 25000000 		.4byte	0x25
 3062 0cd4 ED0C0000 		.4byte	0xced
 3063 0cd8 21       		.uleb128 0x21
 3064 0cd9 ED0C0000 		.4byte	0xced
 3065 0cdd 21       		.uleb128 0x21
 3066 0cde 9B020000 		.4byte	0x29b
 3067 0ce2 21       		.uleb128 0x21
 3068 0ce3 2A0E0000 		.4byte	0xe2a
 3069 0ce7 21       		.uleb128 0x21
 3070 0ce8 25000000 		.4byte	0x25
 3071 0cec 00       		.byte	0
 3072 0ced 1C       		.uleb128 0x1c
 3073 0cee 04       		.byte	0x4
 3074 0cef F80C0000 		.4byte	0xcf8
 3075 0cf3 06       		.uleb128 0x6
 3076 0cf4 ED0C0000 		.4byte	0xced
 3077 0cf8 22       		.uleb128 0x22
 3078 0cf9 C9030000 		.4byte	.LASF236
 3079 0cfd 2804     		.2byte	0x428
 3080 0cff 0C       		.byte	0xc
 3081 0d00 3802     		.2byte	0x238
 3082 0d02 2A0E0000 		.4byte	0xe2a
 3083 0d06 0C       		.uleb128 0xc
 3084 0d07 B8080000 		.4byte	.LASF237
 3085 0d0b 0C       		.byte	0xc
 3086 0d0c 3A02     		.2byte	0x23a
 3087 0d0e 25000000 		.4byte	0x25
 3088 0d12 00       		.byte	0
 3089 0d13 0C       		.uleb128 0xc
 3090 0d14 C9060000 		.4byte	.LASF238
 3091 0d18 0C       		.byte	0xc
 3092 0d19 3F02     		.2byte	0x23f
ARM GAS  /tmp/ccQNhOlE.s 			page 115


 3093 0d1b 110F0000 		.4byte	0xf11
 3094 0d1f 04       		.byte	0x4
 3095 0d20 0C       		.uleb128 0xc
 3096 0d21 7F050000 		.4byte	.LASF239
 3097 0d25 0C       		.byte	0xc
 3098 0d26 3F02     		.2byte	0x23f
 3099 0d28 110F0000 		.4byte	0xf11
 3100 0d2c 08       		.byte	0x8
 3101 0d2d 0C       		.uleb128 0xc
 3102 0d2e 30050000 		.4byte	.LASF240
 3103 0d32 0C       		.byte	0xc
 3104 0d33 3F02     		.2byte	0x23f
 3105 0d35 110F0000 		.4byte	0xf11
 3106 0d39 0C       		.byte	0xc
 3107 0d3a 0C       		.uleb128 0xc
 3108 0d3b 04010000 		.4byte	.LASF241
 3109 0d3f 0C       		.byte	0xc
 3110 0d40 4102     		.2byte	0x241
 3111 0d42 25000000 		.4byte	0x25
 3112 0d46 10       		.byte	0x10
 3113 0d47 0C       		.uleb128 0xc
 3114 0d48 EE0D0000 		.4byte	.LASF242
 3115 0d4c 0C       		.byte	0xc
 3116 0d4d 4202     		.2byte	0x242
 3117 0d4f F3100000 		.4byte	0x10f3
 3118 0d53 14       		.byte	0x14
 3119 0d54 0C       		.uleb128 0xc
 3120 0d55 7C140000 		.4byte	.LASF243
 3121 0d59 0C       		.byte	0xc
 3122 0d5a 4402     		.2byte	0x244
 3123 0d5c 25000000 		.4byte	0x25
 3124 0d60 30       		.byte	0x30
 3125 0d61 0C       		.uleb128 0xc
 3126 0d62 FD020000 		.4byte	.LASF244
 3127 0d66 0C       		.byte	0xc
 3128 0d67 4502     		.2byte	0x245
 3129 0d69 600E0000 		.4byte	0xe60
 3130 0d6d 34       		.byte	0x34
 3131 0d6e 0C       		.uleb128 0xc
 3132 0d6f 42150000 		.4byte	.LASF245
 3133 0d73 0C       		.byte	0xc
 3134 0d74 4702     		.2byte	0x247
 3135 0d76 25000000 		.4byte	0x25
 3136 0d7a 38       		.byte	0x38
 3137 0d7b 0C       		.uleb128 0xc
 3138 0d7c DE110000 		.4byte	.LASF246
 3139 0d80 0C       		.byte	0xc
 3140 0d81 4902     		.2byte	0x249
 3141 0d83 0E110000 		.4byte	0x110e
 3142 0d87 3C       		.byte	0x3c
 3143 0d88 0C       		.uleb128 0xc
 3144 0d89 38050000 		.4byte	.LASF247
 3145 0d8d 0C       		.byte	0xc
 3146 0d8e 4C02     		.2byte	0x24c
 3147 0d90 400A0000 		.4byte	0xa40
 3148 0d94 40       		.byte	0x40
 3149 0d95 0C       		.uleb128 0xc
ARM GAS  /tmp/ccQNhOlE.s 			page 116


 3150 0d96 21050000 		.4byte	.LASF248
 3151 0d9a 0C       		.byte	0xc
 3152 0d9b 4D02     		.2byte	0x24d
 3153 0d9d 25000000 		.4byte	0x25
 3154 0da1 44       		.byte	0x44
 3155 0da2 0C       		.uleb128 0xc
 3156 0da3 5E130000 		.4byte	.LASF249
 3157 0da7 0C       		.byte	0xc
 3158 0da8 4E02     		.2byte	0x24e
 3159 0daa 400A0000 		.4byte	0xa40
 3160 0dae 48       		.byte	0x48
 3161 0daf 0C       		.uleb128 0xc
 3162 0db0 F80B0000 		.4byte	.LASF250
 3163 0db4 0C       		.byte	0xc
 3164 0db5 4F02     		.2byte	0x24f
 3165 0db7 14110000 		.4byte	0x1114
 3166 0dbb 4C       		.byte	0x4c
 3167 0dbc 0C       		.uleb128 0xc
 3168 0dbd 4B020000 		.4byte	.LASF251
 3169 0dc1 0C       		.byte	0xc
 3170 0dc2 5202     		.2byte	0x252
 3171 0dc4 25000000 		.4byte	0x25
 3172 0dc8 50       		.byte	0x50
 3173 0dc9 0C       		.uleb128 0xc
 3174 0dca E5070000 		.4byte	.LASF252
 3175 0dce 0C       		.byte	0xc
 3176 0dcf 5302     		.2byte	0x253
 3177 0dd1 2A0E0000 		.4byte	0xe2a
 3178 0dd5 54       		.byte	0x54
 3179 0dd6 0C       		.uleb128 0xc
 3180 0dd7 87080000 		.4byte	.LASF253
 3181 0ddb 0C       		.byte	0xc
 3182 0ddc 7602     		.2byte	0x276
 3183 0dde D1100000 		.4byte	0x10d1
 3184 0de2 58       		.byte	0x58
 3185 0de3 0D       		.uleb128 0xd
 3186 0de4 D4000000 		.4byte	.LASF213
 3187 0de8 0C       		.byte	0xc
 3188 0de9 7A02     		.2byte	0x27a
 3189 0deb 5D0B0000 		.4byte	0xb5d
 3190 0def 4801     		.2byte	0x148
 3191 0df1 0D       		.uleb128 0xd
 3192 0df2 1B100000 		.4byte	.LASF254
 3193 0df6 0C       		.byte	0xc
 3194 0df7 7B02     		.2byte	0x27b
 3195 0df9 1F0B0000 		.4byte	0xb1f
 3196 0dfd 4C01     		.2byte	0x14c
 3197 0dff 0D       		.uleb128 0xd
 3198 0e00 53020000 		.4byte	.LASF255
 3199 0e04 0C       		.byte	0xc
 3200 0e05 7F02     		.2byte	0x27f
 3201 0e07 25110000 		.4byte	0x1125
 3202 0e0b DC02     		.2byte	0x2dc
 3203 0e0d 0D       		.uleb128 0xd
 3204 0e0e 88110000 		.4byte	.LASF256
 3205 0e12 0C       		.byte	0xc
 3206 0e13 8402     		.2byte	0x284
ARM GAS  /tmp/ccQNhOlE.s 			page 117


 3207 0e15 D60E0000 		.4byte	0xed6
 3208 0e19 E002     		.2byte	0x2e0
 3209 0e1b 0D       		.uleb128 0xd
 3210 0e1c E0030000 		.4byte	.LASF257
 3211 0e20 0C       		.byte	0xc
 3212 0e21 8502     		.2byte	0x285
 3213 0e23 31110000 		.4byte	0x1131
 3214 0e27 EC02     		.2byte	0x2ec
 3215 0e29 00       		.byte	0
 3216 0e2a 1C       		.uleb128 0x1c
 3217 0e2b 04       		.byte	0x4
 3218 0e2c 300E0000 		.4byte	0xe30
 3219 0e30 03       		.uleb128 0x3
 3220 0e31 01       		.byte	0x1
 3221 0e32 08       		.byte	0x8
 3222 0e33 B30F0000 		.4byte	.LASF258
 3223 0e37 06       		.uleb128 0x6
 3224 0e38 300E0000 		.4byte	0xe30
 3225 0e3c 1C       		.uleb128 0x1c
 3226 0e3d 04       		.byte	0x4
 3227 0e3e CF0C0000 		.4byte	0xccf
 3228 0e42 20       		.uleb128 0x20
 3229 0e43 25000000 		.4byte	0x25
 3230 0e47 600E0000 		.4byte	0xe60
 3231 0e4b 21       		.uleb128 0x21
 3232 0e4c ED0C0000 		.4byte	0xced
 3233 0e50 21       		.uleb128 0x21
 3234 0e51 9B020000 		.4byte	0x29b
 3235 0e55 21       		.uleb128 0x21
 3236 0e56 600E0000 		.4byte	0xe60
 3237 0e5a 21       		.uleb128 0x21
 3238 0e5b 25000000 		.4byte	0x25
 3239 0e5f 00       		.byte	0
 3240 0e60 1C       		.uleb128 0x1c
 3241 0e61 04       		.byte	0x4
 3242 0e62 370E0000 		.4byte	0xe37
 3243 0e66 1C       		.uleb128 0x1c
 3244 0e67 04       		.byte	0x4
 3245 0e68 420E0000 		.4byte	0xe42
 3246 0e6c 20       		.uleb128 0x20
 3247 0e6d 65090000 		.4byte	0x965
 3248 0e71 8A0E0000 		.4byte	0xe8a
 3249 0e75 21       		.uleb128 0x21
 3250 0e76 ED0C0000 		.4byte	0xced
 3251 0e7a 21       		.uleb128 0x21
 3252 0e7b 9B020000 		.4byte	0x29b
 3253 0e7f 21       		.uleb128 0x21
 3254 0e80 65090000 		.4byte	0x965
 3255 0e84 21       		.uleb128 0x21
 3256 0e85 25000000 		.4byte	0x25
 3257 0e89 00       		.byte	0
 3258 0e8a 1C       		.uleb128 0x1c
 3259 0e8b 04       		.byte	0x4
 3260 0e8c 6C0E0000 		.4byte	0xe6c
 3261 0e90 20       		.uleb128 0x20
 3262 0e91 25000000 		.4byte	0x25
 3263 0e95 A40E0000 		.4byte	0xea4
ARM GAS  /tmp/ccQNhOlE.s 			page 118


 3264 0e99 21       		.uleb128 0x21
 3265 0e9a ED0C0000 		.4byte	0xced
 3266 0e9e 21       		.uleb128 0x21
 3267 0e9f 9B020000 		.4byte	0x29b
 3268 0ea3 00       		.byte	0
 3269 0ea4 1C       		.uleb128 0x1c
 3270 0ea5 04       		.byte	0x4
 3271 0ea6 900E0000 		.4byte	0xe90
 3272 0eaa 0F       		.uleb128 0xf
 3273 0eab 45000000 		.4byte	0x45
 3274 0eaf BA0E0000 		.4byte	0xeba
 3275 0eb3 10       		.uleb128 0x10
 3276 0eb4 6E030000 		.4byte	0x36e
 3277 0eb8 02       		.byte	0x2
 3278 0eb9 00       		.byte	0
 3279 0eba 0F       		.uleb128 0xf
 3280 0ebb 45000000 		.4byte	0x45
 3281 0ebf CA0E0000 		.4byte	0xeca
 3282 0ec3 10       		.uleb128 0x10
 3283 0ec4 6E030000 		.4byte	0x36e
 3284 0ec8 00       		.byte	0
 3285 0ec9 00       		.byte	0
 3286 0eca 12       		.uleb128 0x12
 3287 0ecb 48170000 		.4byte	.LASF259
 3288 0ecf 0C       		.byte	0xc
 3289 0ed0 1D01     		.2byte	0x11d
 3290 0ed2 A50B0000 		.4byte	0xba5
 3291 0ed6 23       		.uleb128 0x23
 3292 0ed7 B80F0000 		.4byte	.LASF260
 3293 0edb 0C       		.byte	0xc
 3294 0edc 0C       		.byte	0xc
 3295 0edd 2101     		.2byte	0x121
 3296 0edf 0B0F0000 		.4byte	0xf0b
 3297 0ee3 0C       		.uleb128 0xc
 3298 0ee4 23090000 		.4byte	.LASF193
 3299 0ee8 0C       		.byte	0xc
 3300 0ee9 2301     		.2byte	0x123
 3301 0eeb 0B0F0000 		.4byte	0xf0b
 3302 0eef 00       		.byte	0
 3303 0ef0 0C       		.uleb128 0xc
 3304 0ef1 95080000 		.4byte	.LASF261
 3305 0ef5 0C       		.byte	0xc
 3306 0ef6 2401     		.2byte	0x124
 3307 0ef8 25000000 		.4byte	0x25
 3308 0efc 04       		.byte	0x4
 3309 0efd 0C       		.uleb128 0xc
 3310 0efe E80D0000 		.4byte	.LASF262
 3311 0f02 0C       		.byte	0xc
 3312 0f03 2501     		.2byte	0x125
 3313 0f05 110F0000 		.4byte	0xf11
 3314 0f09 08       		.byte	0x8
 3315 0f0a 00       		.byte	0
 3316 0f0b 1C       		.uleb128 0x1c
 3317 0f0c 04       		.byte	0x4
 3318 0f0d D60E0000 		.4byte	0xed6
 3319 0f11 1C       		.uleb128 0x1c
 3320 0f12 04       		.byte	0x4
ARM GAS  /tmp/ccQNhOlE.s 			page 119


 3321 0f13 CA0E0000 		.4byte	0xeca
 3322 0f17 23       		.uleb128 0x23
 3323 0f18 80180000 		.4byte	.LASF263
 3324 0f1c 0E       		.byte	0xe
 3325 0f1d 0C       		.byte	0xc
 3326 0f1e 3D01     		.2byte	0x13d
 3327 0f20 4C0F0000 		.4byte	0xf4c
 3328 0f24 0C       		.uleb128 0xc
 3329 0f25 020B0000 		.4byte	.LASF264
 3330 0f29 0C       		.byte	0xc
 3331 0f2a 3E01     		.2byte	0x13e
 3332 0f2c 4C0F0000 		.4byte	0xf4c
 3333 0f30 00       		.byte	0
 3334 0f31 0C       		.uleb128 0xc
 3335 0f32 9C060000 		.4byte	.LASF265
 3336 0f36 0C       		.byte	0xc
 3337 0f37 3F01     		.2byte	0x13f
 3338 0f39 4C0F0000 		.4byte	0xf4c
 3339 0f3d 06       		.byte	0x6
 3340 0f3e 0C       		.uleb128 0xc
 3341 0f3f 15030000 		.4byte	.LASF266
 3342 0f43 0C       		.byte	0xc
 3343 0f44 4001     		.2byte	0x140
 3344 0f46 69000000 		.4byte	0x69
 3345 0f4a 0C       		.byte	0xc
 3346 0f4b 00       		.byte	0
 3347 0f4c 0F       		.uleb128 0xf
 3348 0f4d 69000000 		.4byte	0x69
 3349 0f51 5C0F0000 		.4byte	0xf5c
 3350 0f55 10       		.uleb128 0x10
 3351 0f56 6E030000 		.4byte	0x36e
 3352 0f5a 02       		.byte	0x2
 3353 0f5b 00       		.byte	0
 3354 0f5c 24       		.uleb128 0x24
 3355 0f5d D0       		.byte	0xd0
 3356 0f5e 0C       		.byte	0xc
 3357 0f5f 5702     		.2byte	0x257
 3358 0f61 5D100000 		.4byte	0x105d
 3359 0f65 0C       		.uleb128 0xc
 3360 0f66 EC040000 		.4byte	.LASF267
 3361 0f6a 0C       		.byte	0xc
 3362 0f6b 5902     		.2byte	0x259
 3363 0f6d 2C000000 		.4byte	0x2c
 3364 0f71 00       		.byte	0
 3365 0f72 0C       		.uleb128 0xc
 3366 0f73 D10A0000 		.4byte	.LASF268
 3367 0f77 0C       		.byte	0xc
 3368 0f78 5A02     		.2byte	0x25a
 3369 0f7a 2A0E0000 		.4byte	0xe2a
 3370 0f7e 04       		.byte	0x4
 3371 0f7f 0C       		.uleb128 0xc
 3372 0f80 D10C0000 		.4byte	.LASF269
 3373 0f84 0C       		.byte	0xc
 3374 0f85 5B02     		.2byte	0x25b
 3375 0f87 5D100000 		.4byte	0x105d
 3376 0f8b 08       		.byte	0x8
 3377 0f8c 0C       		.uleb128 0xc
ARM GAS  /tmp/ccQNhOlE.s 			page 120


 3378 0f8d 7A070000 		.4byte	.LASF270
 3379 0f91 0C       		.byte	0xc
 3380 0f92 5C02     		.2byte	0x25c
 3381 0f94 560A0000 		.4byte	0xa56
 3382 0f98 24       		.byte	0x24
 3383 0f99 0C       		.uleb128 0xc
 3384 0f9a CD070000 		.4byte	.LASF271
 3385 0f9e 0C       		.byte	0xc
 3386 0f9f 5D02     		.2byte	0x25d
 3387 0fa1 25000000 		.4byte	0x25
 3388 0fa5 48       		.byte	0x48
 3389 0fa6 0C       		.uleb128 0xc
 3390 0fa7 150E0000 		.4byte	.LASF272
 3391 0fab 0C       		.byte	0xc
 3392 0fac 5E02     		.2byte	0x25e
 3393 0fae 9B000000 		.4byte	0x9b
 3394 0fb2 50       		.byte	0x50
 3395 0fb3 0C       		.uleb128 0xc
 3396 0fb4 20180000 		.4byte	.LASF273
 3397 0fb8 0C       		.byte	0xc
 3398 0fb9 5F02     		.2byte	0x25f
 3399 0fbb 170F0000 		.4byte	0xf17
 3400 0fbf 58       		.byte	0x58
 3401 0fc0 0C       		.uleb128 0xc
 3402 0fc1 7B110000 		.4byte	.LASF274
 3403 0fc5 0C       		.byte	0xc
 3404 0fc6 6002     		.2byte	0x260
 3405 0fc8 CC090000 		.4byte	0x9cc
 3406 0fcc 68       		.byte	0x68
 3407 0fcd 0C       		.uleb128 0xc
 3408 0fce 34040000 		.4byte	.LASF275
 3409 0fd2 0C       		.byte	0xc
 3410 0fd3 6102     		.2byte	0x261
 3411 0fd5 CC090000 		.4byte	0x9cc
 3412 0fd9 70       		.byte	0x70
 3413 0fda 0C       		.uleb128 0xc
 3414 0fdb 820D0000 		.4byte	.LASF276
 3415 0fdf 0C       		.byte	0xc
 3416 0fe0 6202     		.2byte	0x262
 3417 0fe2 CC090000 		.4byte	0x9cc
 3418 0fe6 78       		.byte	0x78
 3419 0fe7 0C       		.uleb128 0xc
 3420 0fe8 690C0000 		.4byte	.LASF277
 3421 0fec 0C       		.byte	0xc
 3422 0fed 6302     		.2byte	0x263
 3423 0fef 6D100000 		.4byte	0x106d
 3424 0ff3 80       		.byte	0x80
 3425 0ff4 0C       		.uleb128 0xc
 3426 0ff5 29090000 		.4byte	.LASF278
 3427 0ff9 0C       		.byte	0xc
 3428 0ffa 6402     		.2byte	0x264
 3429 0ffc 7D100000 		.4byte	0x107d
 3430 1000 88       		.byte	0x88
 3431 1001 0C       		.uleb128 0xc
 3432 1002 49100000 		.4byte	.LASF279
 3433 1006 0C       		.byte	0xc
 3434 1007 6502     		.2byte	0x265
ARM GAS  /tmp/ccQNhOlE.s 			page 121


 3435 1009 25000000 		.4byte	0x25
 3436 100d A0       		.byte	0xa0
 3437 100e 0C       		.uleb128 0xc
 3438 100f AF060000 		.4byte	.LASF280
 3439 1013 0C       		.byte	0xc
 3440 1014 6602     		.2byte	0x266
 3441 1016 CC090000 		.4byte	0x9cc
 3442 101a A4       		.byte	0xa4
 3443 101b 0C       		.uleb128 0xc
 3444 101c 5D080000 		.4byte	.LASF281
 3445 1020 0C       		.byte	0xc
 3446 1021 6702     		.2byte	0x267
 3447 1023 CC090000 		.4byte	0x9cc
 3448 1027 AC       		.byte	0xac
 3449 1028 0C       		.uleb128 0xc
 3450 1029 87050000 		.4byte	.LASF282
 3451 102d 0C       		.byte	0xc
 3452 102e 6802     		.2byte	0x268
 3453 1030 CC090000 		.4byte	0x9cc
 3454 1034 B4       		.byte	0xb4
 3455 1035 0C       		.uleb128 0xc
 3456 1036 4B0A0000 		.4byte	.LASF283
 3457 103a 0C       		.byte	0xc
 3458 103b 6902     		.2byte	0x269
 3459 103d CC090000 		.4byte	0x9cc
 3460 1041 BC       		.byte	0xbc
 3461 1042 0C       		.uleb128 0xc
 3462 1043 F80C0000 		.4byte	.LASF284
 3463 1047 0C       		.byte	0xc
 3464 1048 6A02     		.2byte	0x26a
 3465 104a CC090000 		.4byte	0x9cc
 3466 104e C4       		.byte	0xc4
 3467 104f 0C       		.uleb128 0xc
 3468 1050 B8120000 		.4byte	.LASF285
 3469 1054 0C       		.byte	0xc
 3470 1055 6B02     		.2byte	0x26b
 3471 1057 25000000 		.4byte	0x25
 3472 105b CC       		.byte	0xcc
 3473 105c 00       		.byte	0
 3474 105d 0F       		.uleb128 0xf
 3475 105e 300E0000 		.4byte	0xe30
 3476 1062 6D100000 		.4byte	0x106d
 3477 1066 10       		.uleb128 0x10
 3478 1067 6E030000 		.4byte	0x36e
 3479 106b 19       		.byte	0x19
 3480 106c 00       		.byte	0
 3481 106d 0F       		.uleb128 0xf
 3482 106e 300E0000 		.4byte	0xe30
 3483 1072 7D100000 		.4byte	0x107d
 3484 1076 10       		.uleb128 0x10
 3485 1077 6E030000 		.4byte	0x36e
 3486 107b 07       		.byte	0x7
 3487 107c 00       		.byte	0
 3488 107d 0F       		.uleb128 0xf
 3489 107e 300E0000 		.4byte	0xe30
 3490 1082 8D100000 		.4byte	0x108d
 3491 1086 10       		.uleb128 0x10
ARM GAS  /tmp/ccQNhOlE.s 			page 122


 3492 1087 6E030000 		.4byte	0x36e
 3493 108b 17       		.byte	0x17
 3494 108c 00       		.byte	0
 3495 108d 24       		.uleb128 0x24
 3496 108e F0       		.byte	0xf0
 3497 108f 0C       		.byte	0xc
 3498 1090 7002     		.2byte	0x270
 3499 1092 B1100000 		.4byte	0x10b1
 3500 1096 0C       		.uleb128 0xc
 3501 1097 0E0E0000 		.4byte	.LASF286
 3502 109b 0C       		.byte	0xc
 3503 109c 7302     		.2byte	0x273
 3504 109e B1100000 		.4byte	0x10b1
 3505 10a2 00       		.byte	0
 3506 10a3 0C       		.uleb128 0xc
 3507 10a4 D5060000 		.4byte	.LASF287
 3508 10a8 0C       		.byte	0xc
 3509 10a9 7402     		.2byte	0x274
 3510 10ab C1100000 		.4byte	0x10c1
 3511 10af 78       		.byte	0x78
 3512 10b0 00       		.byte	0
 3513 10b1 0F       		.uleb128 0xf
 3514 10b2 9F0B0000 		.4byte	0xb9f
 3515 10b6 C1100000 		.4byte	0x10c1
 3516 10ba 10       		.uleb128 0x10
 3517 10bb 6E030000 		.4byte	0x36e
 3518 10bf 1D       		.byte	0x1d
 3519 10c0 00       		.byte	0
 3520 10c1 0F       		.uleb128 0xf
 3521 10c2 2C000000 		.4byte	0x2c
 3522 10c6 D1100000 		.4byte	0x10d1
 3523 10ca 10       		.uleb128 0x10
 3524 10cb 6E030000 		.4byte	0x36e
 3525 10cf 1D       		.byte	0x1d
 3526 10d0 00       		.byte	0
 3527 10d1 25       		.uleb128 0x25
 3528 10d2 F0       		.byte	0xf0
 3529 10d3 0C       		.byte	0xc
 3530 10d4 5502     		.2byte	0x255
 3531 10d6 F3100000 		.4byte	0x10f3
 3532 10da 26       		.uleb128 0x26
 3533 10db C9030000 		.4byte	.LASF236
 3534 10df 0C       		.byte	0xc
 3535 10e0 6C02     		.2byte	0x26c
 3536 10e2 5C0F0000 		.4byte	0xf5c
 3537 10e6 26       		.uleb128 0x26
 3538 10e7 8C020000 		.4byte	.LASF288
 3539 10eb 0C       		.byte	0xc
 3540 10ec 7502     		.2byte	0x275
 3541 10ee 8D100000 		.4byte	0x108d
 3542 10f2 00       		.byte	0
 3543 10f3 0F       		.uleb128 0xf
 3544 10f4 300E0000 		.4byte	0xe30
 3545 10f8 03110000 		.4byte	0x1103
 3546 10fc 10       		.uleb128 0x10
 3547 10fd 6E030000 		.4byte	0x36e
 3548 1101 18       		.byte	0x18
ARM GAS  /tmp/ccQNhOlE.s 			page 123


 3549 1102 00       		.byte	0
 3550 1103 27       		.uleb128 0x27
 3551 1104 0E110000 		.4byte	0x110e
 3552 1108 21       		.uleb128 0x21
 3553 1109 ED0C0000 		.4byte	0xced
 3554 110d 00       		.byte	0
 3555 110e 1C       		.uleb128 0x1c
 3556 110f 04       		.byte	0x4
 3557 1110 03110000 		.4byte	0x1103
 3558 1114 1C       		.uleb128 0x1c
 3559 1115 04       		.byte	0x4
 3560 1116 400A0000 		.4byte	0xa40
 3561 111a 27       		.uleb128 0x27
 3562 111b 25110000 		.4byte	0x1125
 3563 111f 21       		.uleb128 0x21
 3564 1120 25000000 		.4byte	0x25
 3565 1124 00       		.byte	0
 3566 1125 1C       		.uleb128 0x1c
 3567 1126 04       		.byte	0x4
 3568 1127 2B110000 		.4byte	0x112b
 3569 112b 1C       		.uleb128 0x1c
 3570 112c 04       		.byte	0x4
 3571 112d 1A110000 		.4byte	0x111a
 3572 1131 0F       		.uleb128 0xf
 3573 1132 CA0E0000 		.4byte	0xeca
 3574 1136 41110000 		.4byte	0x1141
 3575 113a 10       		.uleb128 0x10
 3576 113b 6E030000 		.4byte	0x36e
 3577 113f 02       		.byte	0x2
 3578 1140 00       		.byte	0
 3579 1141 14       		.uleb128 0x14
 3580 1142 59110000 		.4byte	.LASF289
 3581 1146 0C       		.byte	0xc
 3582 1147 FD02     		.2byte	0x2fd
 3583 1149 ED0C0000 		.4byte	0xced
 3584 114d 14       		.uleb128 0x14
 3585 114e 2F150000 		.4byte	.LASF290
 3586 1152 0C       		.byte	0xc
 3587 1153 FE02     		.2byte	0x2fe
 3588 1155 F30C0000 		.4byte	0xcf3
 3589 1159 15       		.uleb128 0x15
 3590 115a FB0E0000 		.4byte	.LASF291
 3591 115e 0D       		.byte	0xd
 3592 115f 5F       		.byte	0x5f
 3593 1160 2A0E0000 		.4byte	0xe2a
 3594 1164 15       		.uleb128 0x15
 3595 1165 DE0A0000 		.4byte	.LASF292
 3596 1169 0E       		.byte	0xe
 3597 116a 8F       		.byte	0x8f
 3598 116b 76110000 		.4byte	0x1176
 3599 116f 03       		.uleb128 0x3
 3600 1170 01       		.byte	0x1
 3601 1171 02       		.byte	0x2
 3602 1172 A7000000 		.4byte	.LASF293
 3603 1176 05       		.uleb128 0x5
 3604 1177 6F110000 		.4byte	0x116f
 3605 117b 28       		.uleb128 0x28
ARM GAS  /tmp/ccQNhOlE.s 			page 124


 3606 117c 9A030000 		.4byte	.LASF294
 3607 1180 0E       		.byte	0xe
 3608 1181 94       		.byte	0x94
 3609 1182 E3000000 		.4byte	0xe3
 3610 1186 05       		.uleb128 0x5
 3611 1187 03       		.byte	0x3
 3612 1188 00000000 		.4byte	cpu_irq_critical_section_counter
 3613 118c 28       		.uleb128 0x28
 3614 118d F0160000 		.4byte	.LASF295
 3615 1191 0E       		.byte	0xe
 3616 1192 95       		.byte	0x95
 3617 1193 76110000 		.4byte	0x1176
 3618 1197 05       		.uleb128 0x5
 3619 1198 03       		.byte	0x3
 3620 1199 00000000 		.4byte	cpu_irq_prev_interrupt_state
 3621 119d 03       		.uleb128 0x3
 3622 119e 04       		.byte	0x4
 3623 119f 04       		.byte	0x4
 3624 11a0 9D050000 		.4byte	.LASF296
 3625 11a4 03       		.uleb128 0x3
 3626 11a5 08       		.byte	0x8
 3627 11a6 04       		.byte	0x4
 3628 11a7 70120000 		.4byte	.LASF297
 3629 11ab 07       		.uleb128 0x7
 3630 11ac 85160000 		.4byte	.LASF299
 3631 11b0 01       		.byte	0x1
 3632 11b1 33000000 		.4byte	0x33
 3633 11b5 0F       		.byte	0xf
 3634 11b6 4B       		.byte	0x4b
 3635 11b7 35120000 		.4byte	0x1235
 3636 11bb 09       		.uleb128 0x9
 3637 11bc A8160000 		.4byte	.LASF300
 3638 11c0 00       		.byte	0
 3639 11c1 09       		.uleb128 0x9
 3640 11c2 5F0D0000 		.4byte	.LASF301
 3641 11c6 19       		.byte	0x19
 3642 11c7 09       		.uleb128 0x9
 3643 11c8 B7020000 		.4byte	.LASF302
 3644 11cc 1C       		.byte	0x1c
 3645 11cd 09       		.uleb128 0x9
 3646 11ce 6F0D0000 		.4byte	.LASF303
 3647 11d2 12       		.byte	0x12
 3648 11d3 08       		.uleb128 0x8
 3649 11d4 1C0D0000 		.4byte	.LASF304
 3650 11d8 7F       		.sleb128 -1
 3651 11d9 08       		.uleb128 0x8
 3652 11da D90F0000 		.4byte	.LASF305
 3653 11de 7E       		.sleb128 -2
 3654 11df 08       		.uleb128 0x8
 3655 11e0 3D090000 		.4byte	.LASF306
 3656 11e4 7D       		.sleb128 -3
 3657 11e5 08       		.uleb128 0x8
 3658 11e6 A2060000 		.4byte	.LASF307
 3659 11ea 7C       		.sleb128 -4
 3660 11eb 08       		.uleb128 0x8
 3661 11ec 8E0F0000 		.4byte	.LASF308
 3662 11f0 7B       		.sleb128 -5
ARM GAS  /tmp/ccQNhOlE.s 			page 125


 3663 11f1 08       		.uleb128 0x8
 3664 11f2 87170000 		.4byte	.LASF309
 3665 11f6 7A       		.sleb128 -6
 3666 11f7 08       		.uleb128 0x8
 3667 11f8 5A170000 		.4byte	.LASF310
 3668 11fc 79       		.sleb128 -7
 3669 11fd 08       		.uleb128 0x8
 3670 11fe F8080000 		.4byte	.LASF311
 3671 1202 78       		.sleb128 -8
 3672 1203 08       		.uleb128 0x8
 3673 1204 5A0A0000 		.4byte	.LASF312
 3674 1208 77       		.sleb128 -9
 3675 1209 08       		.uleb128 0x8
 3676 120a 91160000 		.4byte	.LASF313
 3677 120e 76       		.sleb128 -10
 3678 120f 08       		.uleb128 0x8
 3679 1210 E1160000 		.4byte	.LASF314
 3680 1214 75       		.sleb128 -11
 3681 1215 08       		.uleb128 0x8
 3682 1216 EB080000 		.4byte	.LASF315
 3683 121a 74       		.sleb128 -12
 3684 121b 08       		.uleb128 0x8
 3685 121c 55160000 		.4byte	.LASF316
 3686 1220 73       		.sleb128 -13
 3687 1221 08       		.uleb128 0x8
 3688 1222 AD070000 		.4byte	.LASF317
 3689 1226 72       		.sleb128 -14
 3690 1227 08       		.uleb128 0x8
 3691 1228 77090000 		.4byte	.LASF318
 3692 122c 71       		.sleb128 -15
 3693 122d 08       		.uleb128 0x8
 3694 122e 19150000 		.4byte	.LASF319
 3695 1232 807F     		.sleb128 -128
 3696 1234 00       		.byte	0
 3697 1235 07       		.uleb128 0x7
 3698 1236 31060000 		.4byte	.LASF320
 3699 123a 04       		.byte	0x4
 3700 123b 2C000000 		.4byte	0x2c
 3701 123f 02       		.byte	0x2
 3702 1240 37       		.byte	0x37
 3703 1241 70120000 		.4byte	0x1270
 3704 1245 09       		.uleb128 0x9
 3705 1246 970D0000 		.4byte	.LASF321
 3706 124a 00       		.byte	0
 3707 124b 29       		.uleb128 0x29
 3708 124c 8B090000 		.4byte	.LASF322
 3709 1250 00000200 		.4byte	0x20000
 3710 1254 29       		.uleb128 0x29
 3711 1255 C40C0000 		.4byte	.LASF323
 3712 1259 00000300 		.4byte	0x30000
 3713 125d 29       		.uleb128 0x29
 3714 125e 5D000000 		.4byte	.LASF324
 3715 1262 00000400 		.4byte	0x40000
 3716 1266 29       		.uleb128 0x29
 3717 1267 A7180000 		.4byte	.LASF325
 3718 126b 00000500 		.4byte	0x50000
 3719 126f 00       		.byte	0
ARM GAS  /tmp/ccQNhOlE.s 			page 126


 3720 1270 07       		.uleb128 0x7
 3721 1271 D7050000 		.4byte	.LASF326
 3722 1275 01       		.byte	0x1
 3723 1276 45000000 		.4byte	0x45
 3724 127a 02       		.byte	0x2
 3725 127b 4A       		.byte	0x4a
 3726 127c 93120000 		.4byte	0x1293
 3727 1280 09       		.uleb128 0x9
 3728 1281 BB0B0000 		.4byte	.LASF327
 3729 1285 00       		.byte	0
 3730 1286 09       		.uleb128 0x9
 3731 1287 CD0B0000 		.4byte	.LASF328
 3732 128b 01       		.byte	0x1
 3733 128c 09       		.uleb128 0x9
 3734 128d DF0B0000 		.4byte	.LASF329
 3735 1291 02       		.byte	0x2
 3736 1292 00       		.byte	0
 3737 1293 06       		.uleb128 0x6
 3738 1294 70120000 		.4byte	0x1270
 3739 1298 07       		.uleb128 0x7
 3740 1299 27020000 		.4byte	.LASF330
 3741 129d 02       		.byte	0x2
 3742 129e 69000000 		.4byte	0x69
 3743 12a2 02       		.byte	0x2
 3744 12a3 8E       		.byte	0x8e
 3745 12a4 F8120000 		.4byte	0x12f8
 3746 12a8 09       		.uleb128 0x9
 3747 12a9 650E0000 		.4byte	.LASF331
 3748 12ad 00       		.byte	0
 3749 12ae 09       		.uleb128 0x9
 3750 12af 740E0000 		.4byte	.LASF332
 3751 12b3 01       		.byte	0x1
 3752 12b4 09       		.uleb128 0x9
 3753 12b5 830E0000 		.4byte	.LASF333
 3754 12b9 02       		.byte	0x2
 3755 12ba 09       		.uleb128 0x9
 3756 12bb 920E0000 		.4byte	.LASF334
 3757 12bf 03       		.byte	0x3
 3758 12c0 09       		.uleb128 0x9
 3759 12c1 A10E0000 		.4byte	.LASF335
 3760 12c5 04       		.byte	0x4
 3761 12c6 09       		.uleb128 0x9
 3762 12c7 B00E0000 		.4byte	.LASF336
 3763 12cb 05       		.byte	0x5
 3764 12cc 09       		.uleb128 0x9
 3765 12cd BF0E0000 		.4byte	.LASF337
 3766 12d1 06       		.byte	0x6
 3767 12d2 09       		.uleb128 0x9
 3768 12d3 CE0E0000 		.4byte	.LASF338
 3769 12d7 07       		.byte	0x7
 3770 12d8 09       		.uleb128 0x9
 3771 12d9 DD0E0000 		.4byte	.LASF339
 3772 12dd 08       		.byte	0x8
 3773 12de 09       		.uleb128 0x9
 3774 12df EC0E0000 		.4byte	.LASF340
 3775 12e3 09       		.byte	0x9
 3776 12e4 09       		.uleb128 0x9
ARM GAS  /tmp/ccQNhOlE.s 			page 127


 3777 12e5 08080000 		.4byte	.LASF341
 3778 12e9 0A       		.byte	0xa
 3779 12ea 09       		.uleb128 0x9
 3780 12eb 60100000 		.4byte	.LASF342
 3781 12ef 0B       		.byte	0xb
 3782 12f0 2A       		.uleb128 0x2a
 3783 12f1 26170000 		.4byte	.LASF343
 3784 12f5 FF0F     		.2byte	0xfff
 3785 12f7 00       		.byte	0
 3786 12f8 06       		.uleb128 0x6
 3787 12f9 98120000 		.4byte	0x1298
 3788 12fd 07       		.uleb128 0x7
 3789 12fe AD000000 		.4byte	.LASF344
 3790 1302 01       		.byte	0x1
 3791 1303 45000000 		.4byte	0x45
 3792 1307 02       		.byte	0x2
 3793 1308 A3       		.byte	0xa3
 3794 1309 1A130000 		.4byte	0x131a
 3795 130d 09       		.uleb128 0x9
 3796 130e 9B0F0000 		.4byte	.LASF345
 3797 1312 00       		.byte	0
 3798 1313 09       		.uleb128 0x9
 3799 1314 09050000 		.4byte	.LASF346
 3800 1318 01       		.byte	0x1
 3801 1319 00       		.byte	0
 3802 131a 06       		.uleb128 0x6
 3803 131b FD120000 		.4byte	0x12fd
 3804 131f 07       		.uleb128 0x7
 3805 1320 DC000000 		.4byte	.LASF347
 3806 1324 01       		.byte	0x1
 3807 1325 45000000 		.4byte	0x45
 3808 1329 02       		.byte	0x2
 3809 132a AC       		.byte	0xac
 3810 132b 48130000 		.4byte	0x1348
 3811 132f 09       		.uleb128 0x9
 3812 1330 410B0000 		.4byte	.LASF348
 3813 1334 00       		.byte	0
 3814 1335 09       		.uleb128 0x9
 3815 1336 520B0000 		.4byte	.LASF349
 3816 133a 01       		.byte	0x1
 3817 133b 09       		.uleb128 0x9
 3818 133c 630B0000 		.4byte	.LASF350
 3819 1340 02       		.byte	0x2
 3820 1341 09       		.uleb128 0x9
 3821 1342 740B0000 		.4byte	.LASF351
 3822 1346 03       		.byte	0x3
 3823 1347 00       		.byte	0
 3824 1348 07       		.uleb128 0x7
 3825 1349 680F0000 		.4byte	.LASF352
 3826 134d 04       		.byte	0x4
 3827 134e 2C000000 		.4byte	0x2c
 3828 1352 02       		.byte	0x2
 3829 1353 B4       		.byte	0xb4
 3830 1354 E6130000 		.4byte	0x13e6
 3831 1358 09       		.uleb128 0x9
 3832 1359 8D150000 		.4byte	.LASF353
 3833 135d 00       		.byte	0
ARM GAS  /tmp/ccQNhOlE.s 			page 128


 3834 135e 29       		.uleb128 0x29
 3835 135f A1150000 		.4byte	.LASF354
 3836 1363 00000100 		.4byte	0x10000
 3837 1367 29       		.uleb128 0x29
 3838 1368 B5150000 		.4byte	.LASF355
 3839 136c 00000200 		.4byte	0x20000
 3840 1370 29       		.uleb128 0x29
 3841 1371 C9150000 		.4byte	.LASF356
 3842 1375 00000300 		.4byte	0x30000
 3843 1379 29       		.uleb128 0x29
 3844 137a DD150000 		.4byte	.LASF357
 3845 137e 00000400 		.4byte	0x40000
 3846 1382 29       		.uleb128 0x29
 3847 1383 F1150000 		.4byte	.LASF358
 3848 1387 00000500 		.4byte	0x50000
 3849 138b 29       		.uleb128 0x29
 3850 138c 05160000 		.4byte	.LASF359
 3851 1390 00000600 		.4byte	0x60000
 3852 1394 29       		.uleb128 0x29
 3853 1395 19160000 		.4byte	.LASF360
 3854 1399 00000700 		.4byte	0x70000
 3855 139d 29       		.uleb128 0x29
 3856 139e 2D160000 		.4byte	.LASF361
 3857 13a2 00000800 		.4byte	0x80000
 3858 13a6 29       		.uleb128 0x29
 3859 13a7 41160000 		.4byte	.LASF362
 3860 13ab 00000900 		.4byte	0x90000
 3861 13af 29       		.uleb128 0x29
 3862 13b0 67140000 		.4byte	.LASF363
 3863 13b4 00000A00 		.4byte	0xa0000
 3864 13b8 29       		.uleb128 0x29
 3865 13b9 00000000 		.4byte	.LASF364
 3866 13bd 00000B00 		.4byte	0xb0000
 3867 13c1 29       		.uleb128 0x29
 3868 13c2 8E140000 		.4byte	.LASF365
 3869 13c6 00000C00 		.4byte	0xc0000
 3870 13ca 29       		.uleb128 0x29
 3871 13cb A3140000 		.4byte	.LASF366
 3872 13cf 00000D00 		.4byte	0xd0000
 3873 13d3 29       		.uleb128 0x29
 3874 13d4 B8140000 		.4byte	.LASF367
 3875 13d8 00000E00 		.4byte	0xe0000
 3876 13dc 29       		.uleb128 0x29
 3877 13dd CD140000 		.4byte	.LASF368
 3878 13e1 00000F00 		.4byte	0xf0000
 3879 13e5 00       		.byte	0
 3880 13e6 07       		.uleb128 0x7
 3881 13e7 18170000 		.4byte	.LASF369
 3882 13eb 01       		.byte	0x1
 3883 13ec 45000000 		.4byte	0x45
 3884 13f0 02       		.byte	0x2
 3885 13f1 D2       		.byte	0xd2
 3886 13f2 0F140000 		.4byte	0x140f
 3887 13f6 09       		.uleb128 0x9
 3888 13f7 9E110000 		.4byte	.LASF370
 3889 13fb 00       		.byte	0
 3890 13fc 09       		.uleb128 0x9
ARM GAS  /tmp/ccQNhOlE.s 			page 129


 3891 13fd AE110000 		.4byte	.LASF371
 3892 1401 01       		.byte	0x1
 3893 1402 09       		.uleb128 0x9
 3894 1403 BE110000 		.4byte	.LASF372
 3895 1407 02       		.byte	0x2
 3896 1408 09       		.uleb128 0x9
 3897 1409 CE110000 		.4byte	.LASF373
 3898 140d 03       		.byte	0x3
 3899 140e 00       		.byte	0
 3900 140f 06       		.uleb128 0x6
 3901 1410 E6130000 		.4byte	0x13e6
 3902 1414 07       		.uleb128 0x7
 3903 1415 CE020000 		.4byte	.LASF374
 3904 1419 01       		.byte	0x1
 3905 141a 45000000 		.4byte	0x45
 3906 141e 02       		.byte	0x2
 3907 141f DA       		.byte	0xda
 3908 1420 3D140000 		.4byte	0x143d
 3909 1424 09       		.uleb128 0x9
 3910 1425 0B020000 		.4byte	.LASF375
 3911 1429 00       		.byte	0
 3912 142a 09       		.uleb128 0x9
 3913 142b ED110000 		.4byte	.LASF376
 3914 142f 10       		.byte	0x10
 3915 1430 09       		.uleb128 0x9
 3916 1431 02120000 		.4byte	.LASF377
 3917 1435 20       		.byte	0x20
 3918 1436 09       		.uleb128 0x9
 3919 1437 17120000 		.4byte	.LASF378
 3920 143b 30       		.byte	0x30
 3921 143c 00       		.byte	0
 3922 143d 1A       		.uleb128 0x1a
 3923 143e 98090000 		.4byte	.LASF379
 3924 1442 18       		.byte	0x18
 3925 1443 02       		.byte	0x2
 3926 1444 E8       		.byte	0xe8
 3927 1445 D0140000 		.4byte	0x14d0
 3928 1449 17       		.uleb128 0x17
 3929 144a E7120000 		.4byte	.LASF380
 3930 144e 02       		.byte	0x2
 3931 144f EA       		.byte	0xea
 3932 1450 35120000 		.4byte	0x1235
 3933 1454 00       		.byte	0
 3934 1455 1B       		.uleb128 0x1b
 3935 1456 6D636B00 		.ascii	"mck\000"
 3936 145a 02       		.byte	0x2
 3937 145b EC       		.byte	0xec
 3938 145c D8000000 		.4byte	0xd8
 3939 1460 04       		.byte	0x4
 3940 1461 17       		.uleb128 0x17
 3941 1462 F6130000 		.4byte	.LASF381
 3942 1466 02       		.byte	0x2
 3943 1467 EE       		.byte	0xee
 3944 1468 D8000000 		.4byte	0xd8
 3945 146c 08       		.byte	0x8
 3946 146d 17       		.uleb128 0x17
 3947 146e A0120000 		.4byte	.LASF382
ARM GAS  /tmp/ccQNhOlE.s 			page 130


 3948 1472 02       		.byte	0x2
 3949 1473 F0       		.byte	0xf0
 3950 1474 48130000 		.4byte	0x1348
 3951 1478 0C       		.byte	0xc
 3952 1479 17       		.uleb128 0x17
 3953 147a CE040000 		.4byte	.LASF383
 3954 147e 02       		.byte	0x2
 3955 147f F6       		.byte	0xf6
 3956 1480 A2000000 		.4byte	0xa2
 3957 1484 10       		.byte	0x10
 3958 1485 17       		.uleb128 0x17
 3959 1486 83020000 		.4byte	.LASF384
 3960 148a 02       		.byte	0x2
 3961 148b F8       		.byte	0xf8
 3962 148c A2000000 		.4byte	0xa2
 3963 1490 11       		.byte	0x11
 3964 1491 17       		.uleb128 0x17
 3965 1492 73000000 		.4byte	.LASF385
 3966 1496 02       		.byte	0x2
 3967 1497 FA       		.byte	0xfa
 3968 1498 6F110000 		.4byte	0x116f
 3969 149c 12       		.byte	0x12
 3970 149d 17       		.uleb128 0x17
 3971 149e DC160000 		.4byte	.LASF386
 3972 14a2 02       		.byte	0x2
 3973 14a3 FC       		.byte	0xfc
 3974 14a4 6F110000 		.4byte	0x116f
 3975 14a8 13       		.byte	0x13
 3976 14a9 1B       		.uleb128 0x1b
 3977 14aa 74616700 		.ascii	"tag\000"
 3978 14ae 02       		.byte	0x2
 3979 14af FE       		.byte	0xfe
 3980 14b0 6F110000 		.4byte	0x116f
 3981 14b4 14       		.byte	0x14
 3982 14b5 13       		.uleb128 0x13
 3983 14b6 73746D00 		.ascii	"stm\000"
 3984 14ba 02       		.byte	0x2
 3985 14bb 0001     		.2byte	0x100
 3986 14bd 6F110000 		.4byte	0x116f
 3987 14c1 15       		.byte	0x15
 3988 14c2 0C       		.uleb128 0xc
 3989 14c3 CB0A0000 		.4byte	.LASF387
 3990 14c7 02       		.byte	0x2
 3991 14c8 0201     		.2byte	0x102
 3992 14ca A2000000 		.4byte	0xa2
 3993 14ce 16       		.byte	0x16
 3994 14cf 00       		.byte	0
 3995 14d0 23       		.uleb128 0x23
 3996 14d1 A1040000 		.4byte	.LASF388
 3997 14d5 02       		.byte	0x2
 3998 14d6 02       		.byte	0x2
 3999 14d7 0601     		.2byte	0x106
 4000 14d9 F8140000 		.4byte	0x14f8
 4001 14dd 0C       		.uleb128 0xc
 4002 14de 22070000 		.4byte	.LASF389
 4003 14e2 02       		.byte	0x2
 4004 14e3 0801     		.2byte	0x108
ARM GAS  /tmp/ccQNhOlE.s 			page 131


 4005 14e5 6F110000 		.4byte	0x116f
 4006 14e9 00       		.byte	0
 4007 14ea 0C       		.uleb128 0xc
 4008 14eb 29010000 		.4byte	.LASF390
 4009 14ef 02       		.byte	0x2
 4010 14f0 0A01     		.2byte	0x10a
 4011 14f2 1F130000 		.4byte	0x131f
 4012 14f6 01       		.byte	0x1
 4013 14f7 00       		.byte	0
 4014 14f8 23       		.uleb128 0x23
 4015 14f9 08040000 		.4byte	.LASF391
 4016 14fd 06       		.byte	0x6
 4017 14fe 02       		.byte	0x2
 4018 14ff 0E01     		.2byte	0x10e
 4019 1501 3A150000 		.4byte	0x153a
 4020 1505 0C       		.uleb128 0xc
 4021 1506 03080000 		.4byte	.LASF392
 4022 150a 02       		.byte	0x2
 4023 150b 1001     		.2byte	0x110
 4024 150d 6F110000 		.4byte	0x116f
 4025 1511 00       		.byte	0
 4026 1512 0C       		.uleb128 0xc
 4027 1513 2B050000 		.4byte	.LASF393
 4028 1517 02       		.byte	0x2
 4029 1518 1201     		.2byte	0x112
 4030 151a 14140000 		.4byte	0x1414
 4031 151e 01       		.byte	0x1
 4032 151f 0C       		.uleb128 0xc
 4033 1520 63130000 		.4byte	.LASF394
 4034 1524 02       		.byte	0x2
 4035 1525 1401     		.2byte	0x114
 4036 1527 BD000000 		.4byte	0xbd
 4037 152b 02       		.byte	0x2
 4038 152c 0C       		.uleb128 0xc
 4039 152d D90D0000 		.4byte	.LASF395
 4040 1531 02       		.byte	0x2
 4041 1532 1601     		.2byte	0x116
 4042 1534 BD000000 		.4byte	0xbd
 4043 1538 04       		.byte	0x4
 4044 1539 00       		.byte	0
 4045 153a 2B       		.uleb128 0x2b
 4046 153b FD140000 		.4byte	.LASF396
 4047 153f 04       		.byte	0x4
 4048 1540 2C000000 		.4byte	0x2c
 4049 1544 02       		.byte	0x2
 4050 1545 4C01     		.2byte	0x14c
 4051 1547 BB150000 		.4byte	0x15bb
 4052 154b 09       		.uleb128 0x9
 4053 154c 88100000 		.4byte	.LASF397
 4054 1550 00       		.byte	0
 4055 1551 09       		.uleb128 0x9
 4056 1552 9D100000 		.4byte	.LASF398
 4057 1556 01       		.byte	0x1
 4058 1557 09       		.uleb128 0x9
 4059 1558 B2100000 		.4byte	.LASF399
 4060 155c 02       		.byte	0x2
 4061 155d 09       		.uleb128 0x9
ARM GAS  /tmp/ccQNhOlE.s 			page 132


 4062 155e C7100000 		.4byte	.LASF400
 4063 1562 03       		.byte	0x3
 4064 1563 09       		.uleb128 0x9
 4065 1564 37010000 		.4byte	.LASF401
 4066 1568 04       		.byte	0x4
 4067 1569 09       		.uleb128 0x9
 4068 156a FB100000 		.4byte	.LASF402
 4069 156e 05       		.byte	0x5
 4070 156f 09       		.uleb128 0x9
 4071 1570 55010000 		.4byte	.LASF403
 4072 1574 06       		.byte	0x6
 4073 1575 09       		.uleb128 0x9
 4074 1576 1A110000 		.4byte	.LASF404
 4075 157a 07       		.byte	0x7
 4076 157b 09       		.uleb128 0x9
 4077 157c 2F110000 		.4byte	.LASF405
 4078 1580 08       		.byte	0x8
 4079 1581 09       		.uleb128 0x9
 4080 1582 44110000 		.4byte	.LASF406
 4081 1586 09       		.byte	0x9
 4082 1587 09       		.uleb128 0x9
 4083 1588 A5170000 		.4byte	.LASF407
 4084 158c 0A       		.byte	0xa
 4085 158d 09       		.uleb128 0x9
 4086 158e BB170000 		.4byte	.LASF408
 4087 1592 0B       		.byte	0xb
 4088 1593 09       		.uleb128 0x9
 4089 1594 4E0F0000 		.4byte	.LASF409
 4090 1598 0C       		.byte	0xc
 4091 1599 09       		.uleb128 0x9
 4092 159a 0E0F0000 		.4byte	.LASF410
 4093 159e 0D       		.byte	0xd
 4094 159f 09       		.uleb128 0x9
 4095 15a0 910C0000 		.4byte	.LASF411
 4096 15a4 0E       		.byte	0xe
 4097 15a5 09       		.uleb128 0x9
 4098 15a6 E2140000 		.4byte	.LASF412
 4099 15aa 0F       		.byte	0xf
 4100 15ab 09       		.uleb128 0x9
 4101 15ac 3F000000 		.4byte	.LASF413
 4102 15b0 10       		.byte	0x10
 4103 15b1 29       		.uleb128 0x29
 4104 15b2 370E0000 		.4byte	.LASF414
 4105 15b6 FF0F0047 		.4byte	0x47000fff
 4106 15ba 00       		.byte	0
 4107 15bb 12       		.uleb128 0x12
 4108 15bc 68170000 		.4byte	.LASF415
 4109 15c0 02       		.byte	0x2
 4110 15c1 6201     		.2byte	0x162
 4111 15c3 730B0000 		.4byte	0xb73
 4112 15c7 07       		.uleb128 0x7
 4113 15c8 6D030000 		.4byte	.LASF416
 4114 15cc 01       		.byte	0x1
 4115 15cd 45000000 		.4byte	0x45
 4116 15d1 10       		.byte	0x10
 4117 15d2 4E       		.byte	0x4e
 4118 15d3 02160000 		.4byte	0x1602
ARM GAS  /tmp/ccQNhOlE.s 			page 133


 4119 15d7 09       		.uleb128 0x9
 4120 15d8 33080000 		.4byte	.LASF417
 4121 15dc 00       		.byte	0
 4122 15dd 09       		.uleb128 0x9
 4123 15de 5D120000 		.4byte	.LASF418
 4124 15e2 01       		.byte	0x1
 4125 15e3 09       		.uleb128 0x9
 4126 15e4 090D0000 		.4byte	.LASF419
 4127 15e8 02       		.byte	0x2
 4128 15e9 09       		.uleb128 0x9
 4129 15ea 520E0000 		.4byte	.LASF420
 4130 15ee 03       		.byte	0x3
 4131 15ef 09       		.uleb128 0x9
 4132 15f0 14070000 		.4byte	.LASF421
 4133 15f4 04       		.byte	0x4
 4134 15f5 09       		.uleb128 0x9
 4135 15f6 78100000 		.4byte	.LASF422
 4136 15fa 05       		.byte	0x5
 4137 15fb 09       		.uleb128 0x9
 4138 15fc B2160000 		.4byte	.LASF423
 4139 1600 06       		.byte	0x6
 4140 1601 00       		.byte	0
 4141 1602 07       		.uleb128 0x7
 4142 1603 170C0000 		.4byte	.LASF424
 4143 1607 01       		.byte	0x1
 4144 1608 45000000 		.4byte	0x45
 4145 160c 11       		.byte	0x11
 4146 160d 4F       		.byte	0x4f
 4147 160e 37160000 		.4byte	0x1637
 4148 1612 09       		.uleb128 0x9
 4149 1613 F90D0000 		.4byte	.LASF425
 4150 1617 03       		.byte	0x3
 4151 1618 09       		.uleb128 0x9
 4152 1619 63150000 		.4byte	.LASF426
 4153 161d 04       		.byte	0x4
 4154 161e 09       		.uleb128 0x9
 4155 161f 06140000 		.4byte	.LASF427
 4156 1623 05       		.byte	0x5
 4157 1624 09       		.uleb128 0x9
 4158 1625 20040000 		.4byte	.LASF428
 4159 1629 06       		.byte	0x6
 4160 162a 09       		.uleb128 0x9
 4161 162b 71130000 		.4byte	.LASF429
 4162 162f 07       		.byte	0x7
 4163 1630 09       		.uleb128 0x9
 4164 1631 F4070000 		.4byte	.LASF430
 4165 1635 08       		.byte	0x8
 4166 1636 00       		.byte	0
 4167 1637 0F       		.uleb128 0xf
 4168 1638 BB150000 		.4byte	0x15bb
 4169 163c 4D160000 		.4byte	0x164d
 4170 1640 10       		.uleb128 0x10
 4171 1641 6E030000 		.4byte	0x36e
 4172 1645 01       		.byte	0x1
 4173 1646 10       		.uleb128 0x10
 4174 1647 6E030000 		.4byte	0x36e
 4175 164b 0F       		.byte	0xf
ARM GAS  /tmp/ccQNhOlE.s 			page 134


 4176 164c 00       		.byte	0
 4177 164d 2C       		.uleb128 0x2c
 4178 164e 7B030000 		.4byte	.LASF431
 4179 1652 01       		.byte	0x1
 4180 1653 62       		.byte	0x62
 4181 1654 37160000 		.4byte	0x1637
 4182 1658 05       		.uleb128 0x5
 4183 1659 03       		.byte	0x3
 4184 165a 00000000 		.4byte	afec_callback_pointer
 4185 165e 2D       		.uleb128 0x2d
 4186 165f 7C120000 		.4byte	.LASF437
 4187 1663 01       		.byte	0x1
 4188 1664 C502     		.2byte	0x2c5
 4189 1666 00000000 		.4byte	.LFB209
 4190 166a 40000000 		.4byte	.LFE209-.LFB209
 4191 166e 01       		.uleb128 0x1
 4192 166f 9C       		.byte	0x9c
 4193 1670 B3160000 		.4byte	0x16b3
 4194 1674 2E       		.uleb128 0x2e
 4195 1675 B40C0000 		.4byte	.LASF432
 4196 1679 01       		.byte	0x1
 4197 167a C502     		.2byte	0x2c5
 4198 167c B9160000 		.4byte	0x16b9
 4199 1680 01       		.uleb128 0x1
 4200 1681 50       		.byte	0x50
 4201 1682 2F       		.uleb128 0x2f
 4202 1683 83090000 		.4byte	.LASF433
 4203 1687 01       		.byte	0x1
 4204 1688 C602     		.2byte	0x2c6
 4205 168a F8120000 		.4byte	0x12f8
 4206 168e 00000000 		.4byte	.LLST46
 4207 1692 2F       		.uleb128 0x2f
 4208 1693 2B050000 		.4byte	.LASF393
 4209 1697 01       		.byte	0x1
 4210 1698 C602     		.2byte	0x2c6
 4211 169a 1A130000 		.4byte	0x131a
 4212 169e 53000000 		.4byte	.LLST47
 4213 16a2 30       		.uleb128 0x30
 4214 16a3 72656700 		.ascii	"reg\000"
 4215 16a7 01       		.byte	0x1
 4216 16a8 CC02     		.2byte	0x2cc
 4217 16aa D8000000 		.4byte	0xd8
 4218 16ae 7F000000 		.4byte	.LLST48
 4219 16b2 00       		.byte	0
 4220 16b3 1C       		.uleb128 0x1c
 4221 16b4 04       		.byte	0x4
 4222 16b5 44090000 		.4byte	0x944
 4223 16b9 06       		.uleb128 0x6
 4224 16ba B3160000 		.4byte	0x16b3
 4225 16be 31       		.uleb128 0x31
 4226 16bf 9D020000 		.4byte	.LASF460
 4227 16c3 01       		.byte	0x1
 4228 16c4 AD02     		.2byte	0x2ad
 4229 16c6 D8000000 		.4byte	0xd8
 4230 16ca 00000000 		.4byte	.LFB208
 4231 16ce 1A000000 		.4byte	.LFE208-.LFB208
 4232 16d2 01       		.uleb128 0x1
ARM GAS  /tmp/ccQNhOlE.s 			page 135


 4233 16d3 9C       		.byte	0x9c
 4234 16d4 17170000 		.4byte	0x1717
 4235 16d8 2F       		.uleb128 0x2f
 4236 16d9 B40C0000 		.4byte	.LASF432
 4237 16dd 01       		.byte	0x1
 4238 16de AD02     		.2byte	0x2ad
 4239 16e0 B9160000 		.4byte	0x16b9
 4240 16e4 CA000000 		.4byte	.LLST43
 4241 16e8 2E       		.uleb128 0x2e
 4242 16e9 5D020000 		.4byte	.LASF434
 4243 16ed 01       		.byte	0x1
 4244 16ee AE02     		.2byte	0x2ae
 4245 16f0 F8120000 		.4byte	0x12f8
 4246 16f4 01       		.uleb128 0x1
 4247 16f5 51       		.byte	0x51
 4248 16f6 32       		.uleb128 0x32
 4249 16f7 CA0F0000 		.4byte	.LASF435
 4250 16fb 01       		.byte	0x1
 4251 16fc B002     		.2byte	0x2b0
 4252 16fe D8000000 		.4byte	0xd8
 4253 1702 EB000000 		.4byte	.LLST44
 4254 1706 32       		.uleb128 0x32
 4255 1707 00060000 		.4byte	.LASF436
 4256 170b 01       		.byte	0x1
 4257 170c B102     		.2byte	0x2b1
 4258 170e D8000000 		.4byte	0xd8
 4259 1712 1A010000 		.4byte	.LLST45
 4260 1716 00       		.byte	0
 4261 1717 2D       		.uleb128 0x2d
 4262 1718 A4090000 		.4byte	.LASF438
 4263 171c 01       		.byte	0x1
 4264 171d 9102     		.2byte	0x291
 4265 171f 00000000 		.4byte	.LFB207
 4266 1723 2A000000 		.4byte	.LFE207-.LFB207
 4267 1727 01       		.uleb128 0x1
 4268 1728 9C       		.byte	0x9c
 4269 1729 7A170000 		.4byte	0x177a
 4270 172d 2E       		.uleb128 0x2e
 4271 172e B40C0000 		.4byte	.LASF432
 4272 1732 01       		.byte	0x1
 4273 1733 9102     		.2byte	0x291
 4274 1735 B9160000 		.4byte	0x16b9
 4275 1739 01       		.uleb128 0x1
 4276 173a 50       		.byte	0x50
 4277 173b 2E       		.uleb128 0x2e
 4278 173c 83090000 		.4byte	.LASF433
 4279 1740 01       		.byte	0x1
 4280 1741 9202     		.2byte	0x292
 4281 1743 F8120000 		.4byte	0x12f8
 4282 1747 01       		.uleb128 0x1
 4283 1748 51       		.byte	0x51
 4284 1749 2F       		.uleb128 0x2f
 4285 174a 11130000 		.4byte	.LASF439
 4286 174e 01       		.byte	0x1
 4287 174f 9202     		.2byte	0x292
 4288 1751 B2000000 		.4byte	0xb2
 4289 1755 39010000 		.4byte	.LLST40
ARM GAS  /tmp/ccQNhOlE.s 			page 136


 4290 1759 2F       		.uleb128 0x2f
 4291 175a 08090000 		.4byte	.LASF440
 4292 175e 01       		.byte	0x1
 4293 175f 9202     		.2byte	0x292
 4294 1761 BD000000 		.4byte	0xbd
 4295 1765 5A010000 		.4byte	.LLST41
 4296 1769 30       		.uleb128 0x30
 4297 176a 72656700 		.ascii	"reg\000"
 4298 176e 01       		.byte	0x1
 4299 176f 9A02     		.2byte	0x29a
 4300 1771 D8000000 		.4byte	0xd8
 4301 1775 7B010000 		.4byte	.LLST42
 4302 1779 00       		.byte	0
 4303 177a 2D       		.uleb128 0x2d
 4304 177b 68180000 		.4byte	.LASF441
 4305 177f 01       		.byte	0x1
 4306 1780 6C02     		.2byte	0x26c
 4307 1782 00000000 		.4byte	.LFB206
 4308 1786 76000000 		.4byte	.LFE206-.LFB206
 4309 178a 01       		.uleb128 0x1
 4310 178b 9C       		.byte	0x9c
 4311 178c CF170000 		.4byte	0x17cf
 4312 1790 2E       		.uleb128 0x2e
 4313 1791 B40C0000 		.4byte	.LASF432
 4314 1795 01       		.byte	0x1
 4315 1796 6C02     		.2byte	0x26c
 4316 1798 B9160000 		.4byte	0x16b9
 4317 179c 01       		.uleb128 0x1
 4318 179d 50       		.byte	0x50
 4319 179e 2F       		.uleb128 0x2f
 4320 179f 450D0000 		.4byte	.LASF442
 4321 17a3 01       		.byte	0x1
 4322 17a4 6D02     		.2byte	0x26d
 4323 17a6 CF170000 		.4byte	0x17cf
 4324 17aa 8F010000 		.4byte	.LLST37
 4325 17ae 2F       		.uleb128 0x2f
 4326 17af 70020000 		.4byte	.LASF443
 4327 17b3 01       		.byte	0x1
 4328 17b4 6D02     		.2byte	0x26d
 4329 17b6 A2000000 		.4byte	0xa2
 4330 17ba BB010000 		.4byte	.LLST38
 4331 17be 32       		.uleb128 0x32
 4332 17bf 3A0A0000 		.4byte	.LASF444
 4333 17c3 01       		.byte	0x1
 4334 17c4 6F02     		.2byte	0x26f
 4335 17c6 A2000000 		.4byte	0xa2
 4336 17ca F5010000 		.4byte	.LLST39
 4337 17ce 00       		.byte	0
 4338 17cf 1C       		.uleb128 0x1c
 4339 17d0 04       		.byte	0x4
 4340 17d1 F8120000 		.4byte	0x12f8
 4341 17d5 2D       		.uleb128 0x2d
 4342 17d6 7A0F0000 		.4byte	.LASF445
 4343 17da 01       		.byte	0x1
 4344 17db 5A02     		.2byte	0x25a
 4345 17dd 00000000 		.4byte	.LFB205
 4346 17e1 14000000 		.4byte	.LFE205-.LFB205
ARM GAS  /tmp/ccQNhOlE.s 			page 137


 4347 17e5 01       		.uleb128 0x1
 4348 17e6 9C       		.byte	0x9c
 4349 17e7 41180000 		.4byte	0x1841
 4350 17eb 2F       		.uleb128 0x2f
 4351 17ec B40C0000 		.4byte	.LASF432
 4352 17f0 01       		.byte	0x1
 4353 17f1 5A02     		.2byte	0x25a
 4354 17f3 B9160000 		.4byte	0x16b9
 4355 17f7 2B020000 		.4byte	.LLST36
 4356 17fb 33       		.uleb128 0x33
 4357 17fc 70696400 		.ascii	"pid\000"
 4358 1800 01       		.byte	0x1
 4359 1801 5D02     		.2byte	0x25d
 4360 1803 D8000000 		.4byte	0xd8
 4361 1807 34       		.uleb128 0x34
 4362 1808 5E1E0000 		.4byte	0x1e5e
 4363 180c 00000000 		.4byte	.LBB118
 4364 1810 02000000 		.4byte	.LBE118-.LBB118
 4365 1814 01       		.byte	0x1
 4366 1815 5F02     		.2byte	0x25f
 4367 1817 21180000 		.4byte	0x1821
 4368 181b 35       		.uleb128 0x35
 4369 181c 6E1E0000 		.4byte	0x1e6e
 4370 1820 00       		.byte	0
 4371 1821 36       		.uleb128 0x36
 4372 1822 0E000000 		.4byte	.LVL88
 4373 1826 F41F0000 		.4byte	0x1ff4
 4374 182a 37       		.uleb128 0x37
 4375 182b 01       		.uleb128 0x1
 4376 182c 50       		.byte	0x50
 4377 182d 11       		.uleb128 0x11
 4378 182e 08       		.byte	0x8
 4379 182f 28       		.byte	0x28
 4380 1830 4D       		.byte	0x4d
 4381 1831 F3       		.byte	0xf3
 4382 1832 01       		.uleb128 0x1
 4383 1833 50       		.byte	0x50
 4384 1834 0C       		.byte	0xc
 4385 1835 00400640 		.4byte	0x40064000
 4386 1839 29       		.byte	0x29
 4387 183a 28       		.byte	0x28
 4388 183b 0100     		.2byte	0x1
 4389 183d 16       		.byte	0x16
 4390 183e 13       		.byte	0x13
 4391 183f 00       		.byte	0
 4392 1840 00       		.byte	0
 4393 1841 2D       		.uleb128 0x2d
 4394 1842 3C170000 		.4byte	.LASF446
 4395 1846 01       		.byte	0x1
 4396 1847 4A02     		.2byte	0x24a
 4397 1849 00000000 		.4byte	.LFB204
 4398 184d 14000000 		.4byte	.LFE204-.LFB204
 4399 1851 01       		.uleb128 0x1
 4400 1852 9C       		.byte	0x9c
 4401 1853 AD180000 		.4byte	0x18ad
 4402 1857 2F       		.uleb128 0x2f
 4403 1858 B40C0000 		.4byte	.LASF432
ARM GAS  /tmp/ccQNhOlE.s 			page 138


 4404 185c 01       		.byte	0x1
 4405 185d 4A02     		.2byte	0x24a
 4406 185f B9160000 		.4byte	0x16b9
 4407 1863 4C020000 		.4byte	.LLST35
 4408 1867 33       		.uleb128 0x33
 4409 1868 70696400 		.ascii	"pid\000"
 4410 186c 01       		.byte	0x1
 4411 186d 4D02     		.2byte	0x24d
 4412 186f D8000000 		.4byte	0xd8
 4413 1873 34       		.uleb128 0x34
 4414 1874 5E1E0000 		.4byte	0x1e5e
 4415 1878 00000000 		.4byte	.LBB116
 4416 187c 02000000 		.4byte	.LBE116-.LBB116
 4417 1880 01       		.byte	0x1
 4418 1881 4F02     		.2byte	0x24f
 4419 1883 8D180000 		.4byte	0x188d
 4420 1887 35       		.uleb128 0x35
 4421 1888 6E1E0000 		.4byte	0x1e6e
 4422 188c 00       		.byte	0
 4423 188d 36       		.uleb128 0x36
 4424 188e 0E000000 		.4byte	.LVL85
 4425 1892 FF1F0000 		.4byte	0x1fff
 4426 1896 37       		.uleb128 0x37
 4427 1897 01       		.uleb128 0x1
 4428 1898 50       		.byte	0x50
 4429 1899 11       		.uleb128 0x11
 4430 189a 08       		.byte	0x8
 4431 189b 28       		.byte	0x28
 4432 189c 4D       		.byte	0x4d
 4433 189d F3       		.byte	0xf3
 4434 189e 01       		.uleb128 0x1
 4435 189f 50       		.byte	0x50
 4436 18a0 0C       		.byte	0xc
 4437 18a1 00400640 		.4byte	0x40064000
 4438 18a5 29       		.byte	0x29
 4439 18a6 28       		.byte	0x28
 4440 18a7 0100     		.2byte	0x1
 4441 18a9 16       		.byte	0x16
 4442 18aa 13       		.byte	0x13
 4443 18ab 00       		.byte	0
 4444 18ac 00       		.byte	0
 4445 18ad 2D       		.uleb128 0x2d
 4446 18ae BB030000 		.4byte	.LASF447
 4447 18b2 01       		.byte	0x1
 4448 18b3 4002     		.2byte	0x240
 4449 18b5 00000000 		.4byte	.LFB203
 4450 18b9 0C000000 		.4byte	.LFE203-.LFB203
 4451 18bd 01       		.uleb128 0x1
 4452 18be 9C       		.byte	0x9c
 4453 18bf D7180000 		.4byte	0x18d7
 4454 18c3 36       		.uleb128 0x36
 4455 18c4 06000000 		.4byte	.LVL82
 4456 18c8 01190000 		.4byte	0x1901
 4457 18cc 37       		.uleb128 0x37
 4458 18cd 01       		.uleb128 0x1
 4459 18ce 50       		.byte	0x50
 4460 18cf 05       		.uleb128 0x5
ARM GAS  /tmp/ccQNhOlE.s 			page 139


 4461 18d0 0C       		.byte	0xc
 4462 18d1 00400640 		.4byte	0x40064000
 4463 18d5 00       		.byte	0
 4464 18d6 00       		.byte	0
 4465 18d7 2D       		.uleb128 0x2d
 4466 18d8 C7160000 		.4byte	.LASF448
 4467 18dc 01       		.byte	0x1
 4468 18dd 3802     		.2byte	0x238
 4469 18df 00000000 		.4byte	.LFB202
 4470 18e3 0C000000 		.4byte	.LFE202-.LFB202
 4471 18e7 01       		.uleb128 0x1
 4472 18e8 9C       		.byte	0x9c
 4473 18e9 01190000 		.4byte	0x1901
 4474 18ed 36       		.uleb128 0x36
 4475 18ee 06000000 		.4byte	.LVL81
 4476 18f2 01190000 		.4byte	0x1901
 4477 18f6 37       		.uleb128 0x37
 4478 18f7 01       		.uleb128 0x1
 4479 18f8 50       		.byte	0x50
 4480 18f9 05       		.uleb128 0x5
 4481 18fa 0C       		.byte	0xc
 4482 18fb 00C00340 		.4byte	0x4003c000
 4483 18ff 00       		.byte	0
 4484 1900 00       		.byte	0
 4485 1901 38       		.uleb128 0x38
 4486 1902 B50A0000 		.4byte	.LASF490
 4487 1906 01       		.byte	0x1
 4488 1907 1002     		.2byte	0x210
 4489 1909 00000000 		.4byte	.LFB201
 4490 190d 6C000000 		.4byte	.LFE201-.LFB201
 4491 1911 01       		.uleb128 0x1
 4492 1912 9C       		.byte	0x9c
 4493 1913 F3190000 		.4byte	0x19f3
 4494 1917 2F       		.uleb128 0x2f
 4495 1918 B40C0000 		.4byte	.LASF432
 4496 191c 01       		.byte	0x1
 4497 191d 1002     		.2byte	0x210
 4498 191f B9160000 		.4byte	0x16b9
 4499 1923 6D020000 		.4byte	.LLST0
 4500 1927 39       		.uleb128 0x39
 4501 1928 F10B0000 		.4byte	.LASF449
 4502 192c 01       		.byte	0x1
 4503 192d 1202     		.2byte	0x212
 4504 192f E3000000 		.4byte	0xe3
 4505 1933 02       		.uleb128 0x2
 4506 1934 91       		.byte	0x91
 4507 1935 64       		.sleb128 -28
 4508 1936 30       		.uleb128 0x30
 4509 1937 636E7400 		.ascii	"cnt\000"
 4510 193b 01       		.byte	0x1
 4511 193c 1302     		.2byte	0x213
 4512 193e D8000000 		.4byte	0xd8
 4513 1942 8E020000 		.4byte	.LLST1
 4514 1946 3A       		.uleb128 0x3a
 4515 1947 95110000 		.4byte	.LASF450
 4516 194b 01       		.byte	0x1
 4517 194c 1302     		.2byte	0x213
ARM GAS  /tmp/ccQNhOlE.s 			page 140


 4518 194e D8000000 		.4byte	0xd8
 4519 1952 3B       		.uleb128 0x3b
 4520 1953 7A1E0000 		.4byte	0x1e7a
 4521 1957 04000000 		.4byte	.LBB54
 4522 195b 00000000 		.4byte	.Ldebug_ranges0+0
 4523 195f 01       		.byte	0x1
 4524 1960 1602     		.2byte	0x216
 4525 1962 6C190000 		.4byte	0x196c
 4526 1966 35       		.uleb128 0x35
 4527 1967 8A1E0000 		.4byte	0x1e8a
 4528 196b 00       		.byte	0
 4529 196c 34       		.uleb128 0x34
 4530 196d 1A1F0000 		.4byte	0x1f1a
 4531 1971 08000000 		.4byte	.LBB59
 4532 1975 02000000 		.4byte	.LBE59-.LBB59
 4533 1979 01       		.byte	0x1
 4534 197a 1502     		.2byte	0x215
 4535 197c 8A190000 		.4byte	0x198a
 4536 1980 3C       		.uleb128 0x3c
 4537 1981 2B1F0000 		.4byte	0x1f2b
 4538 1985 AD020000 		.4byte	.LLST2
 4539 1989 00       		.byte	0
 4540 198a 34       		.uleb128 0x34
 4541 198b FC1E0000 		.4byte	0x1efc
 4542 198f 0E000000 		.4byte	.LBB62
 4543 1993 06000000 		.4byte	.LBE62-.LBB62
 4544 1997 01       		.byte	0x1
 4545 1998 1502     		.2byte	0x215
 4546 199a A8190000 		.4byte	0x19a8
 4547 199e 3C       		.uleb128 0x3c
 4548 199f 0D1F0000 		.4byte	0x1f0d
 4549 19a3 C0020000 		.4byte	.LLST3
 4550 19a7 00       		.byte	0
 4551 19a8 34       		.uleb128 0x34
 4552 19a9 F3190000 		.4byte	0x19f3
 4553 19ad 2E000000 		.4byte	.LBB66
 4554 19b1 06000000 		.4byte	.LBE66-.LBB66
 4555 19b5 01       		.byte	0x1
 4556 19b6 2B02     		.2byte	0x22b
 4557 19b8 CF190000 		.4byte	0x19cf
 4558 19bc 3C       		.uleb128 0x3c
 4559 19bd 0C1A0000 		.4byte	0x1a0c
 4560 19c1 D3020000 		.4byte	.LLST4
 4561 19c5 3C       		.uleb128 0x3c
 4562 19c6 001A0000 		.4byte	0x1a00
 4563 19ca E6020000 		.4byte	.LLST5
 4564 19ce 00       		.byte	0
 4565 19cf 3D       		.uleb128 0x3d
 4566 19d0 F3190000 		.4byte	0x19f3
 4567 19d4 56000000 		.4byte	.LBB68
 4568 19d8 08000000 		.4byte	.LBE68-.LBB68
 4569 19dc 01       		.byte	0x1
 4570 19dd 2F02     		.2byte	0x22f
 4571 19df 3C       		.uleb128 0x3c
 4572 19e0 0C1A0000 		.4byte	0x1a0c
 4573 19e4 02030000 		.4byte	.LLST6
 4574 19e8 3C       		.uleb128 0x3c
ARM GAS  /tmp/ccQNhOlE.s 			page 141


 4575 19e9 001A0000 		.4byte	0x1a00
 4576 19ed 16030000 		.4byte	.LLST7
 4577 19f1 00       		.byte	0
 4578 19f2 00       		.byte	0
 4579 19f3 3E       		.uleb128 0x3e
 4580 19f4 AC0B0000 		.4byte	.LASF468
 4581 19f8 01       		.byte	0x1
 4582 19f9 0202     		.2byte	0x202
 4583 19fb 01       		.byte	0x1
 4584 19fc 191A0000 		.4byte	0x1a19
 4585 1a00 3F       		.uleb128 0x3f
 4586 1a01 95110000 		.4byte	.LASF450
 4587 1a05 01       		.byte	0x1
 4588 1a06 0202     		.2byte	0x202
 4589 1a08 A2000000 		.4byte	0xa2
 4590 1a0c 3F       		.uleb128 0x3f
 4591 1a0d 46030000 		.4byte	.LASF451
 4592 1a11 01       		.byte	0x1
 4593 1a12 0302     		.2byte	0x203
 4594 1a14 3A150000 		.4byte	0x153a
 4595 1a18 00       		.byte	0
 4596 1a19 2D       		.uleb128 0x2d
 4597 1a1a 2F030000 		.4byte	.LASF452
 4598 1a1e 01       		.byte	0x1
 4599 1a1f DD01     		.2byte	0x1dd
 4600 1a21 00000000 		.4byte	.LFB199
 4601 1a25 34000000 		.4byte	.LFE199-.LFB199
 4602 1a29 01       		.uleb128 0x1
 4603 1a2a 9C       		.byte	0x9c
 4604 1a2b 4E1A0000 		.4byte	0x1a4e
 4605 1a2f 2E       		.uleb128 0x2e
 4606 1a30 B40C0000 		.4byte	.LASF432
 4607 1a34 01       		.byte	0x1
 4608 1a35 DD01     		.2byte	0x1dd
 4609 1a37 B9160000 		.4byte	0x16b9
 4610 1a3b 01       		.uleb128 0x1
 4611 1a3c 50       		.byte	0x50
 4612 1a3d 2F       		.uleb128 0x2f
 4613 1a3e C9080000 		.4byte	.LASF453
 4614 1a42 01       		.byte	0x1
 4615 1a43 DE01     		.2byte	0x1de
 4616 1a45 3A150000 		.4byte	0x153a
 4617 1a49 32030000 		.4byte	.LLST34
 4618 1a4d 00       		.byte	0
 4619 1a4e 40       		.uleb128 0x40
 4620 1a4f A3050000 		.4byte	.LASF491
 4621 1a53 01       		.byte	0x1
 4622 1a54 BC01     		.2byte	0x1bc
 4623 1a56 01       		.byte	0x1
 4624 1a57 741A0000 		.4byte	0x1a74
 4625 1a5b 3F       		.uleb128 0x3f
 4626 1a5c B40C0000 		.4byte	.LASF432
 4627 1a60 01       		.byte	0x1
 4628 1a61 BC01     		.2byte	0x1bc
 4629 1a63 B9160000 		.4byte	0x16b9
 4630 1a67 3F       		.uleb128 0x3f
 4631 1a68 C9080000 		.4byte	.LASF453
ARM GAS  /tmp/ccQNhOlE.s 			page 142


 4632 1a6c 01       		.byte	0x1
 4633 1a6d BD01     		.2byte	0x1bd
 4634 1a6f 3A150000 		.4byte	0x153a
 4635 1a73 00       		.byte	0
 4636 1a74 2D       		.uleb128 0x2d
 4637 1a75 280A0000 		.4byte	.LASF454
 4638 1a79 01       		.byte	0x1
 4639 1a7a A501     		.2byte	0x1a5
 4640 1a7c 00000000 		.4byte	.LFB197
 4641 1a80 58000000 		.4byte	.LFE197-.LFB197
 4642 1a84 01       		.uleb128 0x1
 4643 1a85 9C       		.byte	0x9c
 4644 1a86 D61B0000 		.4byte	0x1bd6
 4645 1a8a 2E       		.uleb128 0x2e
 4646 1a8b B40C0000 		.4byte	.LASF432
 4647 1a8f 01       		.byte	0x1
 4648 1a90 A501     		.2byte	0x1a5
 4649 1a92 B9160000 		.4byte	0x16b9
 4650 1a96 01       		.uleb128 0x1
 4651 1a97 50       		.byte	0x50
 4652 1a98 2F       		.uleb128 0x2f
 4653 1a99 46030000 		.4byte	.LASF451
 4654 1a9d 01       		.byte	0x1
 4655 1a9e A501     		.2byte	0x1a5
 4656 1aa0 3A150000 		.4byte	0x153a
 4657 1aa4 79030000 		.4byte	.LLST26
 4658 1aa8 2E       		.uleb128 0x2e
 4659 1aa9 AB0C0000 		.4byte	.LASF455
 4660 1aad 01       		.byte	0x1
 4661 1aae A601     		.2byte	0x1a6
 4662 1ab0 BB150000 		.4byte	0x15bb
 4663 1ab4 01       		.uleb128 0x1
 4664 1ab5 52       		.byte	0x52
 4665 1ab6 2F       		.uleb128 0x2f
 4666 1ab7 4D0C0000 		.4byte	.LASF456
 4667 1abb 01       		.byte	0x1
 4668 1abc A601     		.2byte	0x1a6
 4669 1abe A2000000 		.4byte	0xa2
 4670 1ac2 B3030000 		.4byte	.LLST27
 4671 1ac6 33       		.uleb128 0x33
 4672 1ac7 6900     		.ascii	"i\000"
 4673 1ac9 01       		.byte	0x1
 4674 1aca AB01     		.2byte	0x1ab
 4675 1acc D8000000 		.4byte	0xd8
 4676 1ad0 34       		.uleb128 0x34
 4677 1ad1 7A1E0000 		.4byte	0x1e7a
 4678 1ad5 02000000 		.4byte	.LBB90
 4679 1ad9 06000000 		.4byte	.LBE90-.LBB90
 4680 1add 01       		.byte	0x1
 4681 1ade AB01     		.2byte	0x1ab
 4682 1ae0 EE1A0000 		.4byte	0x1aee
 4683 1ae4 3C       		.uleb128 0x3c
 4684 1ae5 8A1E0000 		.4byte	0x1e8a
 4685 1ae9 ED030000 		.4byte	.LLST28
 4686 1aed 00       		.byte	0
 4687 1aee 3B       		.uleb128 0x3b
 4688 1aef 5E1F0000 		.4byte	0x1f5e
ARM GAS  /tmp/ccQNhOlE.s 			page 143


 4689 1af3 08000000 		.4byte	.LBB92
 4690 1af7 68000000 		.4byte	.Ldebug_ranges0+0x68
 4691 1afb 01       		.byte	0x1
 4692 1afc AE01     		.2byte	0x1ae
 4693 1afe 111B0000 		.4byte	0x1b11
 4694 1b02 35       		.uleb128 0x35
 4695 1b03 771F0000 		.4byte	0x1f77
 4696 1b07 3C       		.uleb128 0x3c
 4697 1b08 6B1F0000 		.4byte	0x1f6b
 4698 1b0c 00040000 		.4byte	.LLST29
 4699 1b10 00       		.byte	0
 4700 1b11 3B       		.uleb128 0x3b
 4701 1b12 841F0000 		.4byte	0x1f84
 4702 1b16 0A000000 		.4byte	.LBB96
 4703 1b1a 88000000 		.4byte	.Ldebug_ranges0+0x88
 4704 1b1e 01       		.byte	0x1
 4705 1b1f AE01     		.2byte	0x1ae
 4706 1b21 2F1B0000 		.4byte	0x1b2f
 4707 1b25 3C       		.uleb128 0x3c
 4708 1b26 911F0000 		.4byte	0x1f91
 4709 1b2a 14040000 		.4byte	.LLST30
 4710 1b2e 00       		.byte	0
 4711 1b2f 34       		.uleb128 0x34
 4712 1b30 9E1F0000 		.4byte	0x1f9e
 4713 1b34 20000000 		.4byte	.LBB102
 4714 1b38 02000000 		.4byte	.LBE102-.LBB102
 4715 1b3c 01       		.byte	0x1
 4716 1b3d AE01     		.2byte	0x1ae
 4717 1b3f 4D1B0000 		.4byte	0x1b4d
 4718 1b43 3C       		.uleb128 0x3c
 4719 1b44 AB1F0000 		.4byte	0x1fab
 4720 1b48 28040000 		.4byte	.LLST31
 4721 1b4c 00       		.byte	0
 4722 1b4d 3B       		.uleb128 0x3b
 4723 1b4e 5E1F0000 		.4byte	0x1f5e
 4724 1b52 28000000 		.4byte	.LBB104
 4725 1b56 A0000000 		.4byte	.Ldebug_ranges0+0xa0
 4726 1b5a 01       		.byte	0x1
 4727 1b5b B001     		.2byte	0x1b0
 4728 1b5d 701B0000 		.4byte	0x1b70
 4729 1b61 35       		.uleb128 0x35
 4730 1b62 771F0000 		.4byte	0x1f77
 4731 1b66 3C       		.uleb128 0x3c
 4732 1b67 6B1F0000 		.4byte	0x1f6b
 4733 1b6b 3C040000 		.4byte	.LLST32
 4734 1b6f 00       		.byte	0
 4735 1b70 3B       		.uleb128 0x3b
 4736 1b71 841F0000 		.4byte	0x1f84
 4737 1b75 2A000000 		.4byte	.LBB108
 4738 1b79 C0000000 		.4byte	.Ldebug_ranges0+0xc0
 4739 1b7d 01       		.byte	0x1
 4740 1b7e B001     		.2byte	0x1b0
 4741 1b80 8E1B0000 		.4byte	0x1b8e
 4742 1b84 3C       		.uleb128 0x3c
 4743 1b85 911F0000 		.4byte	0x1f91
 4744 1b89 51040000 		.4byte	.LLST33
 4745 1b8d 00       		.byte	0
ARM GAS  /tmp/ccQNhOlE.s 			page 144


 4746 1b8e 34       		.uleb128 0x34
 4747 1b8f 9E1F0000 		.4byte	0x1f9e
 4748 1b93 44000000 		.4byte	.LBB114
 4749 1b97 02000000 		.4byte	.LBE114-.LBB114
 4750 1b9b 01       		.byte	0x1
 4751 1b9c B001     		.2byte	0x1b0
 4752 1b9e A91B0000 		.4byte	0x1ba9
 4753 1ba2 41       		.uleb128 0x41
 4754 1ba3 AB1F0000 		.4byte	0x1fab
 4755 1ba7 28       		.byte	0x28
 4756 1ba8 00       		.byte	0
 4757 1ba9 42       		.uleb128 0x42
 4758 1baa 28000000 		.4byte	.LVL70
 4759 1bae 4E1A0000 		.4byte	0x1a4e
 4760 1bb2 C41B0000 		.4byte	0x1bc4
 4761 1bb6 37       		.uleb128 0x37
 4762 1bb7 01       		.uleb128 0x1
 4763 1bb8 50       		.byte	0x50
 4764 1bb9 02       		.uleb128 0x2
 4765 1bba 70       		.byte	0x70
 4766 1bbb 00       		.sleb128 0
 4767 1bbc 37       		.uleb128 0x37
 4768 1bbd 01       		.uleb128 0x1
 4769 1bbe 51       		.byte	0x51
 4770 1bbf 03       		.uleb128 0x3
 4771 1bc0 F3       		.byte	0xf3
 4772 1bc1 01       		.uleb128 0x1
 4773 1bc2 51       		.byte	0x51
 4774 1bc3 00       		.byte	0
 4775 1bc4 36       		.uleb128 0x36
 4776 1bc5 4C000000 		.4byte	.LVL75
 4777 1bc9 4E1A0000 		.4byte	0x1a4e
 4778 1bcd 37       		.uleb128 0x37
 4779 1bce 01       		.uleb128 0x1
 4780 1bcf 51       		.byte	0x51
 4781 1bd0 03       		.uleb128 0x3
 4782 1bd1 F3       		.byte	0xf3
 4783 1bd2 01       		.uleb128 0x1
 4784 1bd3 51       		.byte	0x51
 4785 1bd4 00       		.byte	0
 4786 1bd5 00       		.byte	0
 4787 1bd6 2D       		.uleb128 0x2d
 4788 1bd7 66070000 		.4byte	.LASF457
 4789 1bdb 01       		.byte	0x1
 4790 1bdc 8601     		.2byte	0x186
 4791 1bde 00000000 		.4byte	.LFB196
 4792 1be2 28000000 		.4byte	.LFE196-.LFB196
 4793 1be6 01       		.uleb128 0x1
 4794 1be7 9C       		.byte	0x9c
 4795 1be8 191C0000 		.4byte	0x1c19
 4796 1bec 2E       		.uleb128 0x2e
 4797 1bed B40C0000 		.4byte	.LASF432
 4798 1bf1 01       		.byte	0x1
 4799 1bf2 8601     		.2byte	0x186
 4800 1bf4 B9160000 		.4byte	0x16b9
 4801 1bf8 01       		.uleb128 0x1
 4802 1bf9 50       		.byte	0x50
ARM GAS  /tmp/ccQNhOlE.s 			page 145


 4803 1bfa 2E       		.uleb128 0x2e
 4804 1bfb 2B050000 		.4byte	.LASF393
 4805 1bff 01       		.byte	0x1
 4806 1c00 8701     		.2byte	0x187
 4807 1c02 93120000 		.4byte	0x1293
 4808 1c06 01       		.uleb128 0x1
 4809 1c07 51       		.byte	0x51
 4810 1c08 30       		.uleb128 0x30
 4811 1c09 72656700 		.ascii	"reg\000"
 4812 1c0d 01       		.byte	0x1
 4813 1c0e 8901     		.2byte	0x189
 4814 1c10 D8000000 		.4byte	0xd8
 4815 1c14 66040000 		.4byte	.LLST22
 4816 1c18 00       		.byte	0
 4817 1c19 2D       		.uleb128 0x2d
 4818 1c1a 7C0A0000 		.4byte	.LASF458
 4819 1c1e 01       		.byte	0x1
 4820 1c1f 6901     		.2byte	0x169
 4821 1c21 00000000 		.4byte	.LFB195
 4822 1c25 34000000 		.4byte	.LFE195-.LFB195
 4823 1c29 01       		.uleb128 0x1
 4824 1c2a 9C       		.byte	0x9c
 4825 1c2b 7E1C0000 		.4byte	0x1c7e
 4826 1c2f 2E       		.uleb128 0x2e
 4827 1c30 B40C0000 		.4byte	.LASF432
 4828 1c34 01       		.byte	0x1
 4829 1c35 6901     		.2byte	0x169
 4830 1c37 B9160000 		.4byte	0x16b9
 4831 1c3b 01       		.uleb128 0x1
 4832 1c3c 50       		.byte	0x50
 4833 1c3d 2F       		.uleb128 0x2f
 4834 1c3e 2B050000 		.4byte	.LASF393
 4835 1c42 01       		.byte	0x1
 4836 1c43 6A01     		.2byte	0x16a
 4837 1c45 0F140000 		.4byte	0x140f
 4838 1c49 94040000 		.4byte	.LLST18
 4839 1c4d 2F       		.uleb128 0x2f
 4840 1c4e 83090000 		.4byte	.LASF433
 4841 1c52 01       		.byte	0x1
 4842 1c53 6B01     		.2byte	0x16b
 4843 1c55 F8120000 		.4byte	0x12f8
 4844 1c59 C0040000 		.4byte	.LLST19
 4845 1c5d 2F       		.uleb128 0x2f
 4846 1c5e 91180000 		.4byte	.LASF459
 4847 1c62 01       		.byte	0x1
 4848 1c63 6B01     		.2byte	0x16b
 4849 1c65 A2000000 		.4byte	0xa2
 4850 1c69 FA040000 		.4byte	.LLST20
 4851 1c6d 30       		.uleb128 0x30
 4852 1c6e 72656700 		.ascii	"reg\000"
 4853 1c72 01       		.byte	0x1
 4854 1c73 7101     		.2byte	0x171
 4855 1c75 D8000000 		.4byte	0xd8
 4856 1c79 26050000 		.4byte	.LLST21
 4857 1c7d 00       		.byte	0
 4858 1c7e 31       		.uleb128 0x31
 4859 1c7f 22080000 		.4byte	.LASF461
ARM GAS  /tmp/ccQNhOlE.s 			page 146


 4860 1c83 01       		.byte	0x1
 4861 1c84 4501     		.2byte	0x145
 4862 1c86 AB110000 		.4byte	0x11ab
 4863 1c8a 00000000 		.4byte	.LFB194
 4864 1c8e CC000000 		.4byte	.LFE194-.LFB194
 4865 1c92 01       		.uleb128 0x1
 4866 1c93 9C       		.byte	0x9c
 4867 1c94 131D0000 		.4byte	0x1d13
 4868 1c98 2F       		.uleb128 0x2f
 4869 1c99 B40C0000 		.4byte	.LASF432
 4870 1c9d 01       		.byte	0x1
 4871 1c9e 4501     		.2byte	0x145
 4872 1ca0 B9160000 		.4byte	0x16b9
 4873 1ca4 5A050000 		.4byte	.LLST12
 4874 1ca8 2F       		.uleb128 0x2f
 4875 1ca9 74110000 		.4byte	.LASF462
 4876 1cad 01       		.byte	0x1
 4877 1cae 4501     		.2byte	0x145
 4878 1cb0 131D0000 		.4byte	0x1d13
 4879 1cb4 9F050000 		.4byte	.LLST13
 4880 1cb8 33       		.uleb128 0x33
 4881 1cb9 6900     		.ascii	"i\000"
 4882 1cbb 01       		.byte	0x1
 4883 1cbc 5201     		.2byte	0x152
 4884 1cbe D8000000 		.4byte	0xd8
 4885 1cc2 34       		.uleb128 0x34
 4886 1cc3 1A1F0000 		.4byte	0x1f1a
 4887 1cc7 02000000 		.4byte	.LBB74
 4888 1ccb 02000000 		.4byte	.LBE74-.LBB74
 4889 1ccf 01       		.byte	0x1
 4890 1cd0 4A01     		.2byte	0x14a
 4891 1cd2 E01C0000 		.4byte	0x1ce0
 4892 1cd6 3C       		.uleb128 0x3c
 4893 1cd7 2B1F0000 		.4byte	0x1f2b
 4894 1cdb F2050000 		.4byte	.LLST14
 4895 1cdf 00       		.byte	0
 4896 1ce0 43       		.uleb128 0x43
 4897 1ce1 301E0000 		.4byte	0x1e30
 4898 1ce5 10000000 		.4byte	.LBB76
 4899 1ce9 28000000 		.4byte	.Ldebug_ranges0+0x28
 4900 1ced 01       		.byte	0x1
 4901 1cee 5001     		.2byte	0x150
 4902 1cf0 3C       		.uleb128 0x3c
 4903 1cf1 471E0000 		.4byte	0x1e47
 4904 1cf5 05060000 		.4byte	.LLST15
 4905 1cf9 3C       		.uleb128 0x3c
 4906 1cfa 3C1E0000 		.4byte	0x1e3c
 4907 1cfe 18060000 		.4byte	.LLST16
 4908 1d02 44       		.uleb128 0x44
 4909 1d03 28000000 		.4byte	.Ldebug_ranges0+0x28
 4910 1d07 45       		.uleb128 0x45
 4911 1d08 521E0000 		.4byte	0x1e52
 4912 1d0c 2B060000 		.4byte	.LLST17
 4913 1d10 00       		.byte	0
 4914 1d11 00       		.byte	0
 4915 1d12 00       		.byte	0
 4916 1d13 1C       		.uleb128 0x1c
ARM GAS  /tmp/ccQNhOlE.s 			page 147


 4917 1d14 04       		.byte	0x4
 4918 1d15 3D140000 		.4byte	0x143d
 4919 1d19 06       		.uleb128 0x6
 4920 1d1a 131D0000 		.4byte	0x1d13
 4921 1d1e 2D       		.uleb128 0x2d
 4922 1d1f 57060000 		.4byte	.LASF463
 4923 1d23 01       		.byte	0x1
 4924 1d24 3001     		.2byte	0x130
 4925 1d26 00000000 		.4byte	.LFB193
 4926 1d2a 1A000000 		.4byte	.LFE193-.LFB193
 4927 1d2e 01       		.uleb128 0x1
 4928 1d2f 9C       		.byte	0x9c
 4929 1d30 431D0000 		.4byte	0x1d43
 4930 1d34 46       		.uleb128 0x46
 4931 1d35 63666700 		.ascii	"cfg\000"
 4932 1d39 01       		.byte	0x1
 4933 1d3a 3101     		.2byte	0x131
 4934 1d3c 491D0000 		.4byte	0x1d49
 4935 1d40 01       		.uleb128 0x1
 4936 1d41 50       		.byte	0x50
 4937 1d42 00       		.byte	0
 4938 1d43 1C       		.uleb128 0x1c
 4939 1d44 04       		.byte	0x4
 4940 1d45 F8140000 		.4byte	0x14f8
 4941 1d49 06       		.uleb128 0x6
 4942 1d4a 431D0000 		.4byte	0x1d43
 4943 1d4e 2D       		.uleb128 0x2d
 4944 1d4f 4C040000 		.4byte	.LASF464
 4945 1d53 01       		.byte	0x1
 4946 1d54 1901     		.2byte	0x119
 4947 1d56 00000000 		.4byte	.LFB192
 4948 1d5a 0A000000 		.4byte	.LFE192-.LFB192
 4949 1d5e 01       		.uleb128 0x1
 4950 1d5f 9C       		.byte	0x9c
 4951 1d60 731D0000 		.4byte	0x1d73
 4952 1d64 46       		.uleb128 0x46
 4953 1d65 63666700 		.ascii	"cfg\000"
 4954 1d69 01       		.byte	0x1
 4955 1d6a 1901     		.2byte	0x119
 4956 1d6c 791D0000 		.4byte	0x1d79
 4957 1d70 01       		.uleb128 0x1
 4958 1d71 50       		.byte	0x50
 4959 1d72 00       		.byte	0
 4960 1d73 1C       		.uleb128 0x1c
 4961 1d74 04       		.byte	0x4
 4962 1d75 D0140000 		.4byte	0x14d0
 4963 1d79 06       		.uleb128 0x6
 4964 1d7a 731D0000 		.4byte	0x1d73
 4965 1d7e 47       		.uleb128 0x47
 4966 1d7f 31070000 		.4byte	.LASF465
 4967 1d83 01       		.byte	0x1
 4968 1d84 F9       		.byte	0xf9
 4969 1d85 00000000 		.4byte	.LFB191
 4970 1d89 34000000 		.4byte	.LFE191-.LFB191
 4971 1d8d 01       		.uleb128 0x1
 4972 1d8e 9C       		.byte	0x9c
 4973 1d8f A11D0000 		.4byte	0x1da1
ARM GAS  /tmp/ccQNhOlE.s 			page 148


 4974 1d93 48       		.uleb128 0x48
 4975 1d94 63666700 		.ascii	"cfg\000"
 4976 1d98 01       		.byte	0x1
 4977 1d99 F9       		.byte	0xf9
 4978 1d9a 191D0000 		.4byte	0x1d19
 4979 1d9e 01       		.uleb128 0x1
 4980 1d9f 50       		.byte	0x50
 4981 1da0 00       		.byte	0
 4982 1da1 47       		.uleb128 0x47
 4983 1da2 C1120000 		.4byte	.LASF466
 4984 1da6 01       		.byte	0x1
 4985 1da7 D5       		.byte	0xd5
 4986 1da8 00000000 		.4byte	.LFB190
 4987 1dac 16000000 		.4byte	.LFE190-.LFB190
 4988 1db0 01       		.uleb128 0x1
 4989 1db1 9C       		.byte	0x9c
 4990 1db2 E01D0000 		.4byte	0x1de0
 4991 1db6 49       		.uleb128 0x49
 4992 1db7 B40C0000 		.4byte	.LASF432
 4993 1dbb 01       		.byte	0x1
 4994 1dbc D5       		.byte	0xd5
 4995 1dbd B9160000 		.4byte	0x16b9
 4996 1dc1 01       		.uleb128 0x1
 4997 1dc2 50       		.byte	0x50
 4998 1dc3 49       		.uleb128 0x49
 4999 1dc4 74110000 		.4byte	.LASF462
 5000 1dc8 01       		.byte	0x1
 5001 1dc9 D6       		.byte	0xd6
 5002 1dca 431D0000 		.4byte	0x1d43
 5003 1dce 01       		.uleb128 0x1
 5004 1dcf 51       		.byte	0x51
 5005 1dd0 4A       		.uleb128 0x4a
 5006 1dd1 72656700 		.ascii	"reg\000"
 5007 1dd5 01       		.byte	0x1
 5008 1dd6 DA       		.byte	0xda
 5009 1dd7 D8000000 		.4byte	0xd8
 5010 1ddb 4A060000 		.4byte	.LLST11
 5011 1ddf 00       		.byte	0
 5012 1de0 47       		.uleb128 0x47
 5013 1de1 3A0C0000 		.4byte	.LASF467
 5014 1de5 01       		.byte	0x1
 5015 1de6 BE       		.byte	0xbe
 5016 1de7 00000000 		.4byte	.LFB189
 5017 1deb 34000000 		.4byte	.LFE189-.LFB189
 5018 1def 01       		.uleb128 0x1
 5019 1df0 9C       		.byte	0x9c
 5020 1df1 301E0000 		.4byte	0x1e30
 5021 1df5 49       		.uleb128 0x49
 5022 1df6 B40C0000 		.4byte	.LASF432
 5023 1dfa 01       		.byte	0x1
 5024 1dfb BE       		.byte	0xbe
 5025 1dfc B9160000 		.4byte	0x16b9
 5026 1e00 01       		.uleb128 0x1
 5027 1e01 50       		.byte	0x50
 5028 1e02 4B       		.uleb128 0x4b
 5029 1e03 83090000 		.4byte	.LASF433
 5030 1e07 01       		.byte	0x1
ARM GAS  /tmp/ccQNhOlE.s 			page 149


 5031 1e08 BE       		.byte	0xbe
 5032 1e09 F8120000 		.4byte	0x12f8
 5033 1e0d 69060000 		.4byte	.LLST8
 5034 1e11 4B       		.uleb128 0x4b
 5035 1e12 74110000 		.4byte	.LASF462
 5036 1e16 01       		.byte	0x1
 5037 1e17 BF       		.byte	0xbf
 5038 1e18 731D0000 		.4byte	0x1d73
 5039 1e1c 8A060000 		.4byte	.LLST9
 5040 1e20 4A       		.uleb128 0x4a
 5041 1e21 72656700 		.ascii	"reg\000"
 5042 1e25 01       		.byte	0x1
 5043 1e26 C2       		.byte	0xc2
 5044 1e27 D8000000 		.4byte	0xd8
 5045 1e2b AB060000 		.4byte	.LLST10
 5046 1e2f 00       		.byte	0
 5047 1e30 4C       		.uleb128 0x4c
 5048 1e31 D0030000 		.4byte	.LASF469
 5049 1e35 01       		.byte	0x1
 5050 1e36 9A       		.byte	0x9a
 5051 1e37 01       		.byte	0x1
 5052 1e38 5E1E0000 		.4byte	0x1e5e
 5053 1e3c 4D       		.uleb128 0x4d
 5054 1e3d B40C0000 		.4byte	.LASF432
 5055 1e41 01       		.byte	0x1
 5056 1e42 9A       		.byte	0x9a
 5057 1e43 B9160000 		.4byte	0x16b9
 5058 1e47 4D       		.uleb128 0x4d
 5059 1e48 74110000 		.4byte	.LASF462
 5060 1e4c 01       		.byte	0x1
 5061 1e4d 9A       		.byte	0x9a
 5062 1e4e 131D0000 		.4byte	0x1d13
 5063 1e52 4E       		.uleb128 0x4e
 5064 1e53 72656700 		.ascii	"reg\000"
 5065 1e57 01       		.byte	0x1
 5066 1e58 9C       		.byte	0x9c
 5067 1e59 D8000000 		.4byte	0xd8
 5068 1e5d 00       		.byte	0
 5069 1e5e 4F       		.uleb128 0x4f
 5070 1e5f E5030000 		.4byte	.LASF470
 5071 1e63 01       		.byte	0x1
 5072 1e64 84       		.byte	0x84
 5073 1e65 D8000000 		.4byte	0xd8
 5074 1e69 01       		.byte	0x1
 5075 1e6a 7A1E0000 		.4byte	0x1e7a
 5076 1e6e 4D       		.uleb128 0x4d
 5077 1e6f B40C0000 		.4byte	.LASF432
 5078 1e73 01       		.byte	0x1
 5079 1e74 84       		.byte	0x84
 5080 1e75 B9160000 		.4byte	0x16b9
 5081 1e79 00       		.byte	0
 5082 1e7a 4F       		.uleb128 0x4f
 5083 1e7b 59090000 		.4byte	.LASF471
 5084 1e7f 01       		.byte	0x1
 5085 1e80 6D       		.byte	0x6d
 5086 1e81 D8000000 		.4byte	0xd8
 5087 1e85 01       		.byte	0x1
ARM GAS  /tmp/ccQNhOlE.s 			page 150


 5088 1e86 961E0000 		.4byte	0x1e96
 5089 1e8a 4D       		.uleb128 0x4d
 5090 1e8b B40C0000 		.4byte	.LASF432
 5091 1e8f 01       		.byte	0x1
 5092 1e90 6D       		.byte	0x6d
 5093 1e91 B9160000 		.4byte	0x16b9
 5094 1e95 00       		.byte	0
 5095 1e96 50       		.uleb128 0x50
 5096 1e97 11090000 		.4byte	.LASF472
 5097 1e9b 12       		.byte	0x12
 5098 1e9c 8401     		.2byte	0x184
 5099 1e9e D8000000 		.4byte	0xd8
 5100 1ea2 03       		.byte	0x3
 5101 1ea3 50       		.uleb128 0x50
 5102 1ea4 E1020000 		.4byte	.LASF473
 5103 1ea8 12       		.byte	0x12
 5104 1ea9 4E01     		.2byte	0x14e
 5105 1eab D8000000 		.4byte	0xd8
 5106 1eaf 03       		.byte	0x3
 5107 1eb0 4F       		.uleb128 0x4f
 5108 1eb1 1E000000 		.4byte	.LASF474
 5109 1eb5 13       		.byte	0x13
 5110 1eb6 CE       		.byte	0xce
 5111 1eb7 D8000000 		.4byte	0xd8
 5112 1ebb 03       		.byte	0x3
 5113 1ebc CC1E0000 		.4byte	0x1ecc
 5114 1ec0 4D       		.uleb128 0x4d
 5115 1ec1 1A180000 		.4byte	.LASF475
 5116 1ec5 13       		.byte	0x13
 5117 1ec6 CE       		.byte	0xce
 5118 1ec7 D8000000 		.4byte	0xd8
 5119 1ecb 00       		.byte	0
 5120 1ecc 4C       		.uleb128 0x4c
 5121 1ecd F9060000 		.4byte	.LASF476
 5122 1ed1 14       		.byte	0x14
 5123 1ed2 B3       		.byte	0xb3
 5124 1ed3 03       		.byte	0x3
 5125 1ed4 E41E0000 		.4byte	0x1ee4
 5126 1ed8 4D       		.uleb128 0x4d
 5127 1ed9 2B050000 		.4byte	.LASF393
 5128 1edd 14       		.byte	0x14
 5129 1ede B3       		.byte	0xb3
 5130 1edf C7150000 		.4byte	0x15c7
 5131 1ee3 00       		.byte	0
 5132 1ee4 4C       		.uleb128 0x4c
 5133 1ee5 43080000 		.4byte	.LASF477
 5134 1ee9 14       		.byte	0x14
 5135 1eea 93       		.byte	0x93
 5136 1eeb 03       		.byte	0x3
 5137 1eec FC1E0000 		.4byte	0x1efc
 5138 1ef0 4D       		.uleb128 0x4d
 5139 1ef1 2B050000 		.4byte	.LASF393
 5140 1ef5 14       		.byte	0x14
 5141 1ef6 93       		.byte	0x93
 5142 1ef7 C7150000 		.4byte	0x15c7
 5143 1efb 00       		.byte	0
 5144 1efc 51       		.uleb128 0x51
ARM GAS  /tmp/ccQNhOlE.s 			page 151


 5145 1efd B9050000 		.4byte	.LASF478
 5146 1f01 02       		.byte	0x2
 5147 1f02 A602     		.2byte	0x2a6
 5148 1f04 D8000000 		.4byte	0xd8
 5149 1f08 03       		.byte	0x3
 5150 1f09 1A1F0000 		.4byte	0x1f1a
 5151 1f0d 3F       		.uleb128 0x3f
 5152 1f0e B40C0000 		.4byte	.LASF432
 5153 1f12 02       		.byte	0x2
 5154 1f13 A602     		.2byte	0x2a6
 5155 1f15 B9160000 		.4byte	0x16b9
 5156 1f19 00       		.byte	0
 5157 1f1a 51       		.uleb128 0x51
 5158 1f1b C9090000 		.4byte	.LASF479
 5159 1f1f 02       		.byte	0x2
 5160 1f20 9A02     		.2byte	0x29a
 5161 1f22 D8000000 		.4byte	0xd8
 5162 1f26 03       		.byte	0x3
 5163 1f27 381F0000 		.4byte	0x1f38
 5164 1f2b 3F       		.uleb128 0x3f
 5165 1f2c B40C0000 		.4byte	.LASF432
 5166 1f30 02       		.byte	0x2
 5167 1f31 9A02     		.2byte	0x29a
 5168 1f33 B9160000 		.4byte	0x16b9
 5169 1f37 00       		.byte	0
 5170 1f38 3E       		.uleb128 0x3e
 5171 1f39 020C0000 		.4byte	.LASF480
 5172 1f3d 02       		.byte	0x2
 5173 1f3e 8601     		.2byte	0x186
 5174 1f40 03       		.byte	0x3
 5175 1f41 5E1F0000 		.4byte	0x1f5e
 5176 1f45 3F       		.uleb128 0x3f
 5177 1f46 B40C0000 		.4byte	.LASF432
 5178 1f4a 02       		.byte	0x2
 5179 1f4b 8601     		.2byte	0x186
 5180 1f4d B9160000 		.4byte	0x16b9
 5181 1f51 3F       		.uleb128 0x3f
 5182 1f52 83090000 		.4byte	.LASF433
 5183 1f56 02       		.byte	0x2
 5184 1f57 8701     		.2byte	0x187
 5185 1f59 F8120000 		.4byte	0x12f8
 5186 1f5d 00       		.byte	0
 5187 1f5e 3E       		.uleb128 0x3e
 5188 1f5f 27130000 		.4byte	.LASF481
 5189 1f63 03       		.byte	0x3
 5190 1f64 E406     		.2byte	0x6e4
 5191 1f66 03       		.byte	0x3
 5192 1f67 841F0000 		.4byte	0x1f84
 5193 1f6b 3F       		.uleb128 0x3f
 5194 1f6c 90110000 		.4byte	.LASF298
 5195 1f70 03       		.byte	0x3
 5196 1f71 E406     		.2byte	0x6e4
 5197 1f73 90020000 		.4byte	0x290
 5198 1f77 3F       		.uleb128 0x3f
 5199 1f78 1A030000 		.4byte	.LASF482
 5200 1f7c 03       		.byte	0x3
 5201 1f7d E406     		.2byte	0x6e4
ARM GAS  /tmp/ccQNhOlE.s 			page 152


 5202 1f7f D8000000 		.4byte	0xd8
 5203 1f83 00       		.byte	0
 5204 1f84 3E       		.uleb128 0x3e
 5205 1f85 30180000 		.4byte	.LASF483
 5206 1f89 03       		.byte	0x3
 5207 1f8a C606     		.2byte	0x6c6
 5208 1f8c 03       		.byte	0x3
 5209 1f8d 9E1F0000 		.4byte	0x1f9e
 5210 1f91 3F       		.uleb128 0x3f
 5211 1f92 90110000 		.4byte	.LASF298
 5212 1f96 03       		.byte	0x3
 5213 1f97 C606     		.2byte	0x6c6
 5214 1f99 90020000 		.4byte	0x290
 5215 1f9d 00       		.byte	0
 5216 1f9e 3E       		.uleb128 0x3e
 5217 1f9f A60A0000 		.4byte	.LASF484
 5218 1fa3 03       		.byte	0x3
 5219 1fa4 9106     		.2byte	0x691
 5220 1fa6 03       		.byte	0x3
 5221 1fa7 B81F0000 		.4byte	0x1fb8
 5222 1fab 3F       		.uleb128 0x3f
 5223 1fac 90110000 		.4byte	.LASF298
 5224 1fb0 03       		.byte	0x3
 5225 1fb1 9106     		.2byte	0x691
 5226 1fb3 90020000 		.4byte	0x290
 5227 1fb7 00       		.byte	0
 5228 1fb8 52       		.uleb128 0x52
 5229 1fb9 4E1A0000 		.4byte	0x1a4e
 5230 1fbd 00000000 		.4byte	.LFB198
 5231 1fc1 34000000 		.4byte	.LFE198-.LFB198
 5232 1fc5 01       		.uleb128 0x1
 5233 1fc6 9C       		.byte	0x9c
 5234 1fc7 F41F0000 		.4byte	0x1ff4
 5235 1fcb 53       		.uleb128 0x53
 5236 1fcc 5B1A0000 		.4byte	0x1a5b
 5237 1fd0 01       		.uleb128 0x1
 5238 1fd1 50       		.byte	0x50
 5239 1fd2 3C       		.uleb128 0x3c
 5240 1fd3 671A0000 		.4byte	0x1a67
 5241 1fd7 E0060000 		.4byte	.LLST23
 5242 1fdb 44       		.uleb128 0x44
 5243 1fdc 50000000 		.4byte	.Ldebug_ranges0+0x50
 5244 1fe0 3C       		.uleb128 0x3c
 5245 1fe1 671A0000 		.4byte	0x1a67
 5246 1fe5 27070000 		.4byte	.LLST24
 5247 1fe9 3C       		.uleb128 0x3c
 5248 1fea 5B1A0000 		.4byte	0x1a5b
 5249 1fee 60070000 		.4byte	.LLST25
 5250 1ff2 00       		.byte	0
 5251 1ff3 00       		.byte	0
 5252 1ff4 54       		.uleb128 0x54
 5253 1ff5 24100000 		.4byte	.LASF485
 5254 1ff9 24100000 		.4byte	.LASF485
 5255 1ffd 15       		.byte	0x15
 5256 1ffe DC       		.byte	0xdc
 5257 1fff 54       		.uleb128 0x54
 5258 2000 7C060000 		.4byte	.LASF486
ARM GAS  /tmp/ccQNhOlE.s 			page 153


 5259 2004 7C060000 		.4byte	.LASF486
 5260 2008 15       		.byte	0x15
 5261 2009 DB       		.byte	0xdb
 5262 200a 00       		.byte	0
 5263              		.section	.debug_abbrev,"",%progbits
 5264              	.Ldebug_abbrev0:
 5265 0000 01       		.uleb128 0x1
 5266 0001 11       		.uleb128 0x11
 5267 0002 01       		.byte	0x1
 5268 0003 25       		.uleb128 0x25
 5269 0004 0E       		.uleb128 0xe
 5270 0005 13       		.uleb128 0x13
 5271 0006 0B       		.uleb128 0xb
 5272 0007 03       		.uleb128 0x3
 5273 0008 0E       		.uleb128 0xe
 5274 0009 1B       		.uleb128 0x1b
 5275 000a 0E       		.uleb128 0xe
 5276 000b 55       		.uleb128 0x55
 5277 000c 17       		.uleb128 0x17
 5278 000d 11       		.uleb128 0x11
 5279 000e 01       		.uleb128 0x1
 5280 000f 10       		.uleb128 0x10
 5281 0010 17       		.uleb128 0x17
 5282 0011 00       		.byte	0
 5283 0012 00       		.byte	0
 5284 0013 02       		.uleb128 0x2
 5285 0014 24       		.uleb128 0x24
 5286 0015 00       		.byte	0
 5287 0016 0B       		.uleb128 0xb
 5288 0017 0B       		.uleb128 0xb
 5289 0018 3E       		.uleb128 0x3e
 5290 0019 0B       		.uleb128 0xb
 5291 001a 03       		.uleb128 0x3
 5292 001b 08       		.uleb128 0x8
 5293 001c 00       		.byte	0
 5294 001d 00       		.byte	0
 5295 001e 03       		.uleb128 0x3
 5296 001f 24       		.uleb128 0x24
 5297 0020 00       		.byte	0
 5298 0021 0B       		.uleb128 0xb
 5299 0022 0B       		.uleb128 0xb
 5300 0023 3E       		.uleb128 0x3e
 5301 0024 0B       		.uleb128 0xb
 5302 0025 03       		.uleb128 0x3
 5303 0026 0E       		.uleb128 0xe
 5304 0027 00       		.byte	0
 5305 0028 00       		.byte	0
 5306 0029 04       		.uleb128 0x4
 5307 002a 16       		.uleb128 0x16
 5308 002b 00       		.byte	0
 5309 002c 03       		.uleb128 0x3
 5310 002d 0E       		.uleb128 0xe
 5311 002e 3A       		.uleb128 0x3a
 5312 002f 0B       		.uleb128 0xb
 5313 0030 3B       		.uleb128 0x3b
 5314 0031 0B       		.uleb128 0xb
 5315 0032 49       		.uleb128 0x49
ARM GAS  /tmp/ccQNhOlE.s 			page 154


 5316 0033 13       		.uleb128 0x13
 5317 0034 00       		.byte	0
 5318 0035 00       		.byte	0
 5319 0036 05       		.uleb128 0x5
 5320 0037 35       		.uleb128 0x35
 5321 0038 00       		.byte	0
 5322 0039 49       		.uleb128 0x49
 5323 003a 13       		.uleb128 0x13
 5324 003b 00       		.byte	0
 5325 003c 00       		.byte	0
 5326 003d 06       		.uleb128 0x6
 5327 003e 26       		.uleb128 0x26
 5328 003f 00       		.byte	0
 5329 0040 49       		.uleb128 0x49
 5330 0041 13       		.uleb128 0x13
 5331 0042 00       		.byte	0
 5332 0043 00       		.byte	0
 5333 0044 07       		.uleb128 0x7
 5334 0045 04       		.uleb128 0x4
 5335 0046 01       		.byte	0x1
 5336 0047 03       		.uleb128 0x3
 5337 0048 0E       		.uleb128 0xe
 5338 0049 0B       		.uleb128 0xb
 5339 004a 0B       		.uleb128 0xb
 5340 004b 49       		.uleb128 0x49
 5341 004c 13       		.uleb128 0x13
 5342 004d 3A       		.uleb128 0x3a
 5343 004e 0B       		.uleb128 0xb
 5344 004f 3B       		.uleb128 0x3b
 5345 0050 0B       		.uleb128 0xb
 5346 0051 01       		.uleb128 0x1
 5347 0052 13       		.uleb128 0x13
 5348 0053 00       		.byte	0
 5349 0054 00       		.byte	0
 5350 0055 08       		.uleb128 0x8
 5351 0056 28       		.uleb128 0x28
 5352 0057 00       		.byte	0
 5353 0058 03       		.uleb128 0x3
 5354 0059 0E       		.uleb128 0xe
 5355 005a 1C       		.uleb128 0x1c
 5356 005b 0D       		.uleb128 0xd
 5357 005c 00       		.byte	0
 5358 005d 00       		.byte	0
 5359 005e 09       		.uleb128 0x9
 5360 005f 28       		.uleb128 0x28
 5361 0060 00       		.byte	0
 5362 0061 03       		.uleb128 0x3
 5363 0062 0E       		.uleb128 0xe
 5364 0063 1C       		.uleb128 0x1c
 5365 0064 0B       		.uleb128 0xb
 5366 0065 00       		.byte	0
 5367 0066 00       		.byte	0
 5368 0067 0A       		.uleb128 0xa
 5369 0068 0F       		.uleb128 0xf
 5370 0069 00       		.byte	0
 5371 006a 0B       		.uleb128 0xb
 5372 006b 0B       		.uleb128 0xb
ARM GAS  /tmp/ccQNhOlE.s 			page 155


 5373 006c 00       		.byte	0
 5374 006d 00       		.byte	0
 5375 006e 0B       		.uleb128 0xb
 5376 006f 13       		.uleb128 0x13
 5377 0070 01       		.byte	0x1
 5378 0071 0B       		.uleb128 0xb
 5379 0072 05       		.uleb128 0x5
 5380 0073 3A       		.uleb128 0x3a
 5381 0074 0B       		.uleb128 0xb
 5382 0075 3B       		.uleb128 0x3b
 5383 0076 05       		.uleb128 0x5
 5384 0077 01       		.uleb128 0x1
 5385 0078 13       		.uleb128 0x13
 5386 0079 00       		.byte	0
 5387 007a 00       		.byte	0
 5388 007b 0C       		.uleb128 0xc
 5389 007c 0D       		.uleb128 0xd
 5390 007d 00       		.byte	0
 5391 007e 03       		.uleb128 0x3
 5392 007f 0E       		.uleb128 0xe
 5393 0080 3A       		.uleb128 0x3a
 5394 0081 0B       		.uleb128 0xb
 5395 0082 3B       		.uleb128 0x3b
 5396 0083 05       		.uleb128 0x5
 5397 0084 49       		.uleb128 0x49
 5398 0085 13       		.uleb128 0x13
 5399 0086 38       		.uleb128 0x38
 5400 0087 0B       		.uleb128 0xb
 5401 0088 00       		.byte	0
 5402 0089 00       		.byte	0
 5403 008a 0D       		.uleb128 0xd
 5404 008b 0D       		.uleb128 0xd
 5405 008c 00       		.byte	0
 5406 008d 03       		.uleb128 0x3
 5407 008e 0E       		.uleb128 0xe
 5408 008f 3A       		.uleb128 0x3a
 5409 0090 0B       		.uleb128 0xb
 5410 0091 3B       		.uleb128 0x3b
 5411 0092 05       		.uleb128 0x5
 5412 0093 49       		.uleb128 0x49
 5413 0094 13       		.uleb128 0x13
 5414 0095 38       		.uleb128 0x38
 5415 0096 05       		.uleb128 0x5
 5416 0097 00       		.byte	0
 5417 0098 00       		.byte	0
 5418 0099 0E       		.uleb128 0xe
 5419 009a 0D       		.uleb128 0xd
 5420 009b 00       		.byte	0
 5421 009c 03       		.uleb128 0x3
 5422 009d 08       		.uleb128 0x8
 5423 009e 3A       		.uleb128 0x3a
 5424 009f 0B       		.uleb128 0xb
 5425 00a0 3B       		.uleb128 0x3b
 5426 00a1 05       		.uleb128 0x5
 5427 00a2 49       		.uleb128 0x49
 5428 00a3 13       		.uleb128 0x13
 5429 00a4 38       		.uleb128 0x38
ARM GAS  /tmp/ccQNhOlE.s 			page 156


 5430 00a5 05       		.uleb128 0x5
 5431 00a6 00       		.byte	0
 5432 00a7 00       		.byte	0
 5433 00a8 0F       		.uleb128 0xf
 5434 00a9 01       		.uleb128 0x1
 5435 00aa 01       		.byte	0x1
 5436 00ab 49       		.uleb128 0x49
 5437 00ac 13       		.uleb128 0x13
 5438 00ad 01       		.uleb128 0x1
 5439 00ae 13       		.uleb128 0x13
 5440 00af 00       		.byte	0
 5441 00b0 00       		.byte	0
 5442 00b1 10       		.uleb128 0x10
 5443 00b2 21       		.uleb128 0x21
 5444 00b3 00       		.byte	0
 5445 00b4 49       		.uleb128 0x49
 5446 00b5 13       		.uleb128 0x13
 5447 00b6 2F       		.uleb128 0x2f
 5448 00b7 0B       		.uleb128 0xb
 5449 00b8 00       		.byte	0
 5450 00b9 00       		.byte	0
 5451 00ba 11       		.uleb128 0x11
 5452 00bb 21       		.uleb128 0x21
 5453 00bc 00       		.byte	0
 5454 00bd 49       		.uleb128 0x49
 5455 00be 13       		.uleb128 0x13
 5456 00bf 2F       		.uleb128 0x2f
 5457 00c0 05       		.uleb128 0x5
 5458 00c1 00       		.byte	0
 5459 00c2 00       		.byte	0
 5460 00c3 12       		.uleb128 0x12
 5461 00c4 16       		.uleb128 0x16
 5462 00c5 00       		.byte	0
 5463 00c6 03       		.uleb128 0x3
 5464 00c7 0E       		.uleb128 0xe
 5465 00c8 3A       		.uleb128 0x3a
 5466 00c9 0B       		.uleb128 0xb
 5467 00ca 3B       		.uleb128 0x3b
 5468 00cb 05       		.uleb128 0x5
 5469 00cc 49       		.uleb128 0x49
 5470 00cd 13       		.uleb128 0x13
 5471 00ce 00       		.byte	0
 5472 00cf 00       		.byte	0
 5473 00d0 13       		.uleb128 0x13
 5474 00d1 0D       		.uleb128 0xd
 5475 00d2 00       		.byte	0
 5476 00d3 03       		.uleb128 0x3
 5477 00d4 08       		.uleb128 0x8
 5478 00d5 3A       		.uleb128 0x3a
 5479 00d6 0B       		.uleb128 0xb
 5480 00d7 3B       		.uleb128 0x3b
 5481 00d8 05       		.uleb128 0x5
 5482 00d9 49       		.uleb128 0x49
 5483 00da 13       		.uleb128 0x13
 5484 00db 38       		.uleb128 0x38
 5485 00dc 0B       		.uleb128 0xb
 5486 00dd 00       		.byte	0
ARM GAS  /tmp/ccQNhOlE.s 			page 157


 5487 00de 00       		.byte	0
 5488 00df 14       		.uleb128 0x14
 5489 00e0 34       		.uleb128 0x34
 5490 00e1 00       		.byte	0
 5491 00e2 03       		.uleb128 0x3
 5492 00e3 0E       		.uleb128 0xe
 5493 00e4 3A       		.uleb128 0x3a
 5494 00e5 0B       		.uleb128 0xb
 5495 00e6 3B       		.uleb128 0x3b
 5496 00e7 05       		.uleb128 0x5
 5497 00e8 49       		.uleb128 0x49
 5498 00e9 13       		.uleb128 0x13
 5499 00ea 3F       		.uleb128 0x3f
 5500 00eb 19       		.uleb128 0x19
 5501 00ec 3C       		.uleb128 0x3c
 5502 00ed 19       		.uleb128 0x19
 5503 00ee 00       		.byte	0
 5504 00ef 00       		.byte	0
 5505 00f0 15       		.uleb128 0x15
 5506 00f1 34       		.uleb128 0x34
 5507 00f2 00       		.byte	0
 5508 00f3 03       		.uleb128 0x3
 5509 00f4 0E       		.uleb128 0xe
 5510 00f5 3A       		.uleb128 0x3a
 5511 00f6 0B       		.uleb128 0xb
 5512 00f7 3B       		.uleb128 0x3b
 5513 00f8 0B       		.uleb128 0xb
 5514 00f9 49       		.uleb128 0x49
 5515 00fa 13       		.uleb128 0x13
 5516 00fb 3F       		.uleb128 0x3f
 5517 00fc 19       		.uleb128 0x19
 5518 00fd 3C       		.uleb128 0x3c
 5519 00fe 19       		.uleb128 0x19
 5520 00ff 00       		.byte	0
 5521 0100 00       		.byte	0
 5522 0101 16       		.uleb128 0x16
 5523 0102 13       		.uleb128 0x13
 5524 0103 01       		.byte	0x1
 5525 0104 0B       		.uleb128 0xb
 5526 0105 0B       		.uleb128 0xb
 5527 0106 3A       		.uleb128 0x3a
 5528 0107 0B       		.uleb128 0xb
 5529 0108 3B       		.uleb128 0x3b
 5530 0109 0B       		.uleb128 0xb
 5531 010a 01       		.uleb128 0x1
 5532 010b 13       		.uleb128 0x13
 5533 010c 00       		.byte	0
 5534 010d 00       		.byte	0
 5535 010e 17       		.uleb128 0x17
 5536 010f 0D       		.uleb128 0xd
 5537 0110 00       		.byte	0
 5538 0111 03       		.uleb128 0x3
 5539 0112 0E       		.uleb128 0xe
 5540 0113 3A       		.uleb128 0x3a
 5541 0114 0B       		.uleb128 0xb
 5542 0115 3B       		.uleb128 0x3b
 5543 0116 0B       		.uleb128 0xb
ARM GAS  /tmp/ccQNhOlE.s 			page 158


 5544 0117 49       		.uleb128 0x49
 5545 0118 13       		.uleb128 0x13
 5546 0119 38       		.uleb128 0x38
 5547 011a 0B       		.uleb128 0xb
 5548 011b 00       		.byte	0
 5549 011c 00       		.byte	0
 5550 011d 18       		.uleb128 0x18
 5551 011e 17       		.uleb128 0x17
 5552 011f 01       		.byte	0x1
 5553 0120 0B       		.uleb128 0xb
 5554 0121 0B       		.uleb128 0xb
 5555 0122 3A       		.uleb128 0x3a
 5556 0123 0B       		.uleb128 0xb
 5557 0124 3B       		.uleb128 0x3b
 5558 0125 0B       		.uleb128 0xb
 5559 0126 01       		.uleb128 0x1
 5560 0127 13       		.uleb128 0x13
 5561 0128 00       		.byte	0
 5562 0129 00       		.byte	0
 5563 012a 19       		.uleb128 0x19
 5564 012b 0D       		.uleb128 0xd
 5565 012c 00       		.byte	0
 5566 012d 03       		.uleb128 0x3
 5567 012e 0E       		.uleb128 0xe
 5568 012f 3A       		.uleb128 0x3a
 5569 0130 0B       		.uleb128 0xb
 5570 0131 3B       		.uleb128 0x3b
 5571 0132 0B       		.uleb128 0xb
 5572 0133 49       		.uleb128 0x49
 5573 0134 13       		.uleb128 0x13
 5574 0135 00       		.byte	0
 5575 0136 00       		.byte	0
 5576 0137 1A       		.uleb128 0x1a
 5577 0138 13       		.uleb128 0x13
 5578 0139 01       		.byte	0x1
 5579 013a 03       		.uleb128 0x3
 5580 013b 0E       		.uleb128 0xe
 5581 013c 0B       		.uleb128 0xb
 5582 013d 0B       		.uleb128 0xb
 5583 013e 3A       		.uleb128 0x3a
 5584 013f 0B       		.uleb128 0xb
 5585 0140 3B       		.uleb128 0x3b
 5586 0141 0B       		.uleb128 0xb
 5587 0142 01       		.uleb128 0x1
 5588 0143 13       		.uleb128 0x13
 5589 0144 00       		.byte	0
 5590 0145 00       		.byte	0
 5591 0146 1B       		.uleb128 0x1b
 5592 0147 0D       		.uleb128 0xd
 5593 0148 00       		.byte	0
 5594 0149 03       		.uleb128 0x3
 5595 014a 08       		.uleb128 0x8
 5596 014b 3A       		.uleb128 0x3a
 5597 014c 0B       		.uleb128 0xb
 5598 014d 3B       		.uleb128 0x3b
 5599 014e 0B       		.uleb128 0xb
 5600 014f 49       		.uleb128 0x49
ARM GAS  /tmp/ccQNhOlE.s 			page 159


 5601 0150 13       		.uleb128 0x13
 5602 0151 38       		.uleb128 0x38
 5603 0152 0B       		.uleb128 0xb
 5604 0153 00       		.byte	0
 5605 0154 00       		.byte	0
 5606 0155 1C       		.uleb128 0x1c
 5607 0156 0F       		.uleb128 0xf
 5608 0157 00       		.byte	0
 5609 0158 0B       		.uleb128 0xb
 5610 0159 0B       		.uleb128 0xb
 5611 015a 49       		.uleb128 0x49
 5612 015b 13       		.uleb128 0x13
 5613 015c 00       		.byte	0
 5614 015d 00       		.byte	0
 5615 015e 1D       		.uleb128 0x1d
 5616 015f 13       		.uleb128 0x13
 5617 0160 01       		.byte	0x1
 5618 0161 03       		.uleb128 0x3
 5619 0162 0E       		.uleb128 0xe
 5620 0163 0B       		.uleb128 0xb
 5621 0164 05       		.uleb128 0x5
 5622 0165 3A       		.uleb128 0x3a
 5623 0166 0B       		.uleb128 0xb
 5624 0167 3B       		.uleb128 0x3b
 5625 0168 0B       		.uleb128 0xb
 5626 0169 01       		.uleb128 0x1
 5627 016a 13       		.uleb128 0x13
 5628 016b 00       		.byte	0
 5629 016c 00       		.byte	0
 5630 016d 1E       		.uleb128 0x1e
 5631 016e 0D       		.uleb128 0xd
 5632 016f 00       		.byte	0
 5633 0170 03       		.uleb128 0x3
 5634 0171 0E       		.uleb128 0xe
 5635 0172 3A       		.uleb128 0x3a
 5636 0173 0B       		.uleb128 0xb
 5637 0174 3B       		.uleb128 0x3b
 5638 0175 0B       		.uleb128 0xb
 5639 0176 49       		.uleb128 0x49
 5640 0177 13       		.uleb128 0x13
 5641 0178 38       		.uleb128 0x38
 5642 0179 05       		.uleb128 0x5
 5643 017a 00       		.byte	0
 5644 017b 00       		.byte	0
 5645 017c 1F       		.uleb128 0x1f
 5646 017d 15       		.uleb128 0x15
 5647 017e 00       		.byte	0
 5648 017f 27       		.uleb128 0x27
 5649 0180 19       		.uleb128 0x19
 5650 0181 00       		.byte	0
 5651 0182 00       		.byte	0
 5652 0183 20       		.uleb128 0x20
 5653 0184 15       		.uleb128 0x15
 5654 0185 01       		.byte	0x1
 5655 0186 27       		.uleb128 0x27
 5656 0187 19       		.uleb128 0x19
 5657 0188 49       		.uleb128 0x49
ARM GAS  /tmp/ccQNhOlE.s 			page 160


 5658 0189 13       		.uleb128 0x13
 5659 018a 01       		.uleb128 0x1
 5660 018b 13       		.uleb128 0x13
 5661 018c 00       		.byte	0
 5662 018d 00       		.byte	0
 5663 018e 21       		.uleb128 0x21
 5664 018f 05       		.uleb128 0x5
 5665 0190 00       		.byte	0
 5666 0191 49       		.uleb128 0x49
 5667 0192 13       		.uleb128 0x13
 5668 0193 00       		.byte	0
 5669 0194 00       		.byte	0
 5670 0195 22       		.uleb128 0x22
 5671 0196 13       		.uleb128 0x13
 5672 0197 01       		.byte	0x1
 5673 0198 03       		.uleb128 0x3
 5674 0199 0E       		.uleb128 0xe
 5675 019a 0B       		.uleb128 0xb
 5676 019b 05       		.uleb128 0x5
 5677 019c 3A       		.uleb128 0x3a
 5678 019d 0B       		.uleb128 0xb
 5679 019e 3B       		.uleb128 0x3b
 5680 019f 05       		.uleb128 0x5
 5681 01a0 01       		.uleb128 0x1
 5682 01a1 13       		.uleb128 0x13
 5683 01a2 00       		.byte	0
 5684 01a3 00       		.byte	0
 5685 01a4 23       		.uleb128 0x23
 5686 01a5 13       		.uleb128 0x13
 5687 01a6 01       		.byte	0x1
 5688 01a7 03       		.uleb128 0x3
 5689 01a8 0E       		.uleb128 0xe
 5690 01a9 0B       		.uleb128 0xb
 5691 01aa 0B       		.uleb128 0xb
 5692 01ab 3A       		.uleb128 0x3a
 5693 01ac 0B       		.uleb128 0xb
 5694 01ad 3B       		.uleb128 0x3b
 5695 01ae 05       		.uleb128 0x5
 5696 01af 01       		.uleb128 0x1
 5697 01b0 13       		.uleb128 0x13
 5698 01b1 00       		.byte	0
 5699 01b2 00       		.byte	0
 5700 01b3 24       		.uleb128 0x24
 5701 01b4 13       		.uleb128 0x13
 5702 01b5 01       		.byte	0x1
 5703 01b6 0B       		.uleb128 0xb
 5704 01b7 0B       		.uleb128 0xb
 5705 01b8 3A       		.uleb128 0x3a
 5706 01b9 0B       		.uleb128 0xb
 5707 01ba 3B       		.uleb128 0x3b
 5708 01bb 05       		.uleb128 0x5
 5709 01bc 01       		.uleb128 0x1
 5710 01bd 13       		.uleb128 0x13
 5711 01be 00       		.byte	0
 5712 01bf 00       		.byte	0
 5713 01c0 25       		.uleb128 0x25
 5714 01c1 17       		.uleb128 0x17
ARM GAS  /tmp/ccQNhOlE.s 			page 161


 5715 01c2 01       		.byte	0x1
 5716 01c3 0B       		.uleb128 0xb
 5717 01c4 0B       		.uleb128 0xb
 5718 01c5 3A       		.uleb128 0x3a
 5719 01c6 0B       		.uleb128 0xb
 5720 01c7 3B       		.uleb128 0x3b
 5721 01c8 05       		.uleb128 0x5
 5722 01c9 01       		.uleb128 0x1
 5723 01ca 13       		.uleb128 0x13
 5724 01cb 00       		.byte	0
 5725 01cc 00       		.byte	0
 5726 01cd 26       		.uleb128 0x26
 5727 01ce 0D       		.uleb128 0xd
 5728 01cf 00       		.byte	0
 5729 01d0 03       		.uleb128 0x3
 5730 01d1 0E       		.uleb128 0xe
 5731 01d2 3A       		.uleb128 0x3a
 5732 01d3 0B       		.uleb128 0xb
 5733 01d4 3B       		.uleb128 0x3b
 5734 01d5 05       		.uleb128 0x5
 5735 01d6 49       		.uleb128 0x49
 5736 01d7 13       		.uleb128 0x13
 5737 01d8 00       		.byte	0
 5738 01d9 00       		.byte	0
 5739 01da 27       		.uleb128 0x27
 5740 01db 15       		.uleb128 0x15
 5741 01dc 01       		.byte	0x1
 5742 01dd 27       		.uleb128 0x27
 5743 01de 19       		.uleb128 0x19
 5744 01df 01       		.uleb128 0x1
 5745 01e0 13       		.uleb128 0x13
 5746 01e1 00       		.byte	0
 5747 01e2 00       		.byte	0
 5748 01e3 28       		.uleb128 0x28
 5749 01e4 34       		.uleb128 0x34
 5750 01e5 00       		.byte	0
 5751 01e6 03       		.uleb128 0x3
 5752 01e7 0E       		.uleb128 0xe
 5753 01e8 3A       		.uleb128 0x3a
 5754 01e9 0B       		.uleb128 0xb
 5755 01ea 3B       		.uleb128 0x3b
 5756 01eb 0B       		.uleb128 0xb
 5757 01ec 49       		.uleb128 0x49
 5758 01ed 13       		.uleb128 0x13
 5759 01ee 02       		.uleb128 0x2
 5760 01ef 18       		.uleb128 0x18
 5761 01f0 00       		.byte	0
 5762 01f1 00       		.byte	0
 5763 01f2 29       		.uleb128 0x29
 5764 01f3 28       		.uleb128 0x28
 5765 01f4 00       		.byte	0
 5766 01f5 03       		.uleb128 0x3
 5767 01f6 0E       		.uleb128 0xe
 5768 01f7 1C       		.uleb128 0x1c
 5769 01f8 06       		.uleb128 0x6
 5770 01f9 00       		.byte	0
 5771 01fa 00       		.byte	0
ARM GAS  /tmp/ccQNhOlE.s 			page 162


 5772 01fb 2A       		.uleb128 0x2a
 5773 01fc 28       		.uleb128 0x28
 5774 01fd 00       		.byte	0
 5775 01fe 03       		.uleb128 0x3
 5776 01ff 0E       		.uleb128 0xe
 5777 0200 1C       		.uleb128 0x1c
 5778 0201 05       		.uleb128 0x5
 5779 0202 00       		.byte	0
 5780 0203 00       		.byte	0
 5781 0204 2B       		.uleb128 0x2b
 5782 0205 04       		.uleb128 0x4
 5783 0206 01       		.byte	0x1
 5784 0207 03       		.uleb128 0x3
 5785 0208 0E       		.uleb128 0xe
 5786 0209 0B       		.uleb128 0xb
 5787 020a 0B       		.uleb128 0xb
 5788 020b 49       		.uleb128 0x49
 5789 020c 13       		.uleb128 0x13
 5790 020d 3A       		.uleb128 0x3a
 5791 020e 0B       		.uleb128 0xb
 5792 020f 3B       		.uleb128 0x3b
 5793 0210 05       		.uleb128 0x5
 5794 0211 01       		.uleb128 0x1
 5795 0212 13       		.uleb128 0x13
 5796 0213 00       		.byte	0
 5797 0214 00       		.byte	0
 5798 0215 2C       		.uleb128 0x2c
 5799 0216 34       		.uleb128 0x34
 5800 0217 00       		.byte	0
 5801 0218 03       		.uleb128 0x3
 5802 0219 0E       		.uleb128 0xe
 5803 021a 3A       		.uleb128 0x3a
 5804 021b 0B       		.uleb128 0xb
 5805 021c 3B       		.uleb128 0x3b
 5806 021d 0B       		.uleb128 0xb
 5807 021e 49       		.uleb128 0x49
 5808 021f 13       		.uleb128 0x13
 5809 0220 3F       		.uleb128 0x3f
 5810 0221 19       		.uleb128 0x19
 5811 0222 02       		.uleb128 0x2
 5812 0223 18       		.uleb128 0x18
 5813 0224 00       		.byte	0
 5814 0225 00       		.byte	0
 5815 0226 2D       		.uleb128 0x2d
 5816 0227 2E       		.uleb128 0x2e
 5817 0228 01       		.byte	0x1
 5818 0229 3F       		.uleb128 0x3f
 5819 022a 19       		.uleb128 0x19
 5820 022b 03       		.uleb128 0x3
 5821 022c 0E       		.uleb128 0xe
 5822 022d 3A       		.uleb128 0x3a
 5823 022e 0B       		.uleb128 0xb
 5824 022f 3B       		.uleb128 0x3b
 5825 0230 05       		.uleb128 0x5
 5826 0231 27       		.uleb128 0x27
 5827 0232 19       		.uleb128 0x19
 5828 0233 11       		.uleb128 0x11
ARM GAS  /tmp/ccQNhOlE.s 			page 163


 5829 0234 01       		.uleb128 0x1
 5830 0235 12       		.uleb128 0x12
 5831 0236 06       		.uleb128 0x6
 5832 0237 40       		.uleb128 0x40
 5833 0238 18       		.uleb128 0x18
 5834 0239 9742     		.uleb128 0x2117
 5835 023b 19       		.uleb128 0x19
 5836 023c 01       		.uleb128 0x1
 5837 023d 13       		.uleb128 0x13
 5838 023e 00       		.byte	0
 5839 023f 00       		.byte	0
 5840 0240 2E       		.uleb128 0x2e
 5841 0241 05       		.uleb128 0x5
 5842 0242 00       		.byte	0
 5843 0243 03       		.uleb128 0x3
 5844 0244 0E       		.uleb128 0xe
 5845 0245 3A       		.uleb128 0x3a
 5846 0246 0B       		.uleb128 0xb
 5847 0247 3B       		.uleb128 0x3b
 5848 0248 05       		.uleb128 0x5
 5849 0249 49       		.uleb128 0x49
 5850 024a 13       		.uleb128 0x13
 5851 024b 02       		.uleb128 0x2
 5852 024c 18       		.uleb128 0x18
 5853 024d 00       		.byte	0
 5854 024e 00       		.byte	0
 5855 024f 2F       		.uleb128 0x2f
 5856 0250 05       		.uleb128 0x5
 5857 0251 00       		.byte	0
 5858 0252 03       		.uleb128 0x3
 5859 0253 0E       		.uleb128 0xe
 5860 0254 3A       		.uleb128 0x3a
 5861 0255 0B       		.uleb128 0xb
 5862 0256 3B       		.uleb128 0x3b
 5863 0257 05       		.uleb128 0x5
 5864 0258 49       		.uleb128 0x49
 5865 0259 13       		.uleb128 0x13
 5866 025a 02       		.uleb128 0x2
 5867 025b 17       		.uleb128 0x17
 5868 025c 00       		.byte	0
 5869 025d 00       		.byte	0
 5870 025e 30       		.uleb128 0x30
 5871 025f 34       		.uleb128 0x34
 5872 0260 00       		.byte	0
 5873 0261 03       		.uleb128 0x3
 5874 0262 08       		.uleb128 0x8
 5875 0263 3A       		.uleb128 0x3a
 5876 0264 0B       		.uleb128 0xb
 5877 0265 3B       		.uleb128 0x3b
 5878 0266 05       		.uleb128 0x5
 5879 0267 49       		.uleb128 0x49
 5880 0268 13       		.uleb128 0x13
 5881 0269 02       		.uleb128 0x2
 5882 026a 17       		.uleb128 0x17
 5883 026b 00       		.byte	0
 5884 026c 00       		.byte	0
 5885 026d 31       		.uleb128 0x31
ARM GAS  /tmp/ccQNhOlE.s 			page 164


 5886 026e 2E       		.uleb128 0x2e
 5887 026f 01       		.byte	0x1
 5888 0270 3F       		.uleb128 0x3f
 5889 0271 19       		.uleb128 0x19
 5890 0272 03       		.uleb128 0x3
 5891 0273 0E       		.uleb128 0xe
 5892 0274 3A       		.uleb128 0x3a
 5893 0275 0B       		.uleb128 0xb
 5894 0276 3B       		.uleb128 0x3b
 5895 0277 05       		.uleb128 0x5
 5896 0278 27       		.uleb128 0x27
 5897 0279 19       		.uleb128 0x19
 5898 027a 49       		.uleb128 0x49
 5899 027b 13       		.uleb128 0x13
 5900 027c 11       		.uleb128 0x11
 5901 027d 01       		.uleb128 0x1
 5902 027e 12       		.uleb128 0x12
 5903 027f 06       		.uleb128 0x6
 5904 0280 40       		.uleb128 0x40
 5905 0281 18       		.uleb128 0x18
 5906 0282 9742     		.uleb128 0x2117
 5907 0284 19       		.uleb128 0x19
 5908 0285 01       		.uleb128 0x1
 5909 0286 13       		.uleb128 0x13
 5910 0287 00       		.byte	0
 5911 0288 00       		.byte	0
 5912 0289 32       		.uleb128 0x32
 5913 028a 34       		.uleb128 0x34
 5914 028b 00       		.byte	0
 5915 028c 03       		.uleb128 0x3
 5916 028d 0E       		.uleb128 0xe
 5917 028e 3A       		.uleb128 0x3a
 5918 028f 0B       		.uleb128 0xb
 5919 0290 3B       		.uleb128 0x3b
 5920 0291 05       		.uleb128 0x5
 5921 0292 49       		.uleb128 0x49
 5922 0293 13       		.uleb128 0x13
 5923 0294 02       		.uleb128 0x2
 5924 0295 17       		.uleb128 0x17
 5925 0296 00       		.byte	0
 5926 0297 00       		.byte	0
 5927 0298 33       		.uleb128 0x33
 5928 0299 34       		.uleb128 0x34
 5929 029a 00       		.byte	0
 5930 029b 03       		.uleb128 0x3
 5931 029c 08       		.uleb128 0x8
 5932 029d 3A       		.uleb128 0x3a
 5933 029e 0B       		.uleb128 0xb
 5934 029f 3B       		.uleb128 0x3b
 5935 02a0 05       		.uleb128 0x5
 5936 02a1 49       		.uleb128 0x49
 5937 02a2 13       		.uleb128 0x13
 5938 02a3 00       		.byte	0
 5939 02a4 00       		.byte	0
 5940 02a5 34       		.uleb128 0x34
 5941 02a6 1D       		.uleb128 0x1d
 5942 02a7 01       		.byte	0x1
ARM GAS  /tmp/ccQNhOlE.s 			page 165


 5943 02a8 31       		.uleb128 0x31
 5944 02a9 13       		.uleb128 0x13
 5945 02aa 11       		.uleb128 0x11
 5946 02ab 01       		.uleb128 0x1
 5947 02ac 12       		.uleb128 0x12
 5948 02ad 06       		.uleb128 0x6
 5949 02ae 58       		.uleb128 0x58
 5950 02af 0B       		.uleb128 0xb
 5951 02b0 59       		.uleb128 0x59
 5952 02b1 05       		.uleb128 0x5
 5953 02b2 01       		.uleb128 0x1
 5954 02b3 13       		.uleb128 0x13
 5955 02b4 00       		.byte	0
 5956 02b5 00       		.byte	0
 5957 02b6 35       		.uleb128 0x35
 5958 02b7 05       		.uleb128 0x5
 5959 02b8 00       		.byte	0
 5960 02b9 31       		.uleb128 0x31
 5961 02ba 13       		.uleb128 0x13
 5962 02bb 00       		.byte	0
 5963 02bc 00       		.byte	0
 5964 02bd 36       		.uleb128 0x36
 5965 02be 898201   		.uleb128 0x4109
 5966 02c1 01       		.byte	0x1
 5967 02c2 11       		.uleb128 0x11
 5968 02c3 01       		.uleb128 0x1
 5969 02c4 9542     		.uleb128 0x2115
 5970 02c6 19       		.uleb128 0x19
 5971 02c7 31       		.uleb128 0x31
 5972 02c8 13       		.uleb128 0x13
 5973 02c9 00       		.byte	0
 5974 02ca 00       		.byte	0
 5975 02cb 37       		.uleb128 0x37
 5976 02cc 8A8201   		.uleb128 0x410a
 5977 02cf 00       		.byte	0
 5978 02d0 02       		.uleb128 0x2
 5979 02d1 18       		.uleb128 0x18
 5980 02d2 9142     		.uleb128 0x2111
 5981 02d4 18       		.uleb128 0x18
 5982 02d5 00       		.byte	0
 5983 02d6 00       		.byte	0
 5984 02d7 38       		.uleb128 0x38
 5985 02d8 2E       		.uleb128 0x2e
 5986 02d9 01       		.byte	0x1
 5987 02da 03       		.uleb128 0x3
 5988 02db 0E       		.uleb128 0xe
 5989 02dc 3A       		.uleb128 0x3a
 5990 02dd 0B       		.uleb128 0xb
 5991 02de 3B       		.uleb128 0x3b
 5992 02df 05       		.uleb128 0x5
 5993 02e0 27       		.uleb128 0x27
 5994 02e1 19       		.uleb128 0x19
 5995 02e2 11       		.uleb128 0x11
 5996 02e3 01       		.uleb128 0x1
 5997 02e4 12       		.uleb128 0x12
 5998 02e5 06       		.uleb128 0x6
 5999 02e6 40       		.uleb128 0x40
ARM GAS  /tmp/ccQNhOlE.s 			page 166


 6000 02e7 18       		.uleb128 0x18
 6001 02e8 9642     		.uleb128 0x2116
 6002 02ea 19       		.uleb128 0x19
 6003 02eb 01       		.uleb128 0x1
 6004 02ec 13       		.uleb128 0x13
 6005 02ed 00       		.byte	0
 6006 02ee 00       		.byte	0
 6007 02ef 39       		.uleb128 0x39
 6008 02f0 34       		.uleb128 0x34
 6009 02f1 00       		.byte	0
 6010 02f2 03       		.uleb128 0x3
 6011 02f3 0E       		.uleb128 0xe
 6012 02f4 3A       		.uleb128 0x3a
 6013 02f5 0B       		.uleb128 0xb
 6014 02f6 3B       		.uleb128 0x3b
 6015 02f7 05       		.uleb128 0x5
 6016 02f8 49       		.uleb128 0x49
 6017 02f9 13       		.uleb128 0x13
 6018 02fa 02       		.uleb128 0x2
 6019 02fb 18       		.uleb128 0x18
 6020 02fc 00       		.byte	0
 6021 02fd 00       		.byte	0
 6022 02fe 3A       		.uleb128 0x3a
 6023 02ff 34       		.uleb128 0x34
 6024 0300 00       		.byte	0
 6025 0301 03       		.uleb128 0x3
 6026 0302 0E       		.uleb128 0xe
 6027 0303 3A       		.uleb128 0x3a
 6028 0304 0B       		.uleb128 0xb
 6029 0305 3B       		.uleb128 0x3b
 6030 0306 05       		.uleb128 0x5
 6031 0307 49       		.uleb128 0x49
 6032 0308 13       		.uleb128 0x13
 6033 0309 00       		.byte	0
 6034 030a 00       		.byte	0
 6035 030b 3B       		.uleb128 0x3b
 6036 030c 1D       		.uleb128 0x1d
 6037 030d 01       		.byte	0x1
 6038 030e 31       		.uleb128 0x31
 6039 030f 13       		.uleb128 0x13
 6040 0310 52       		.uleb128 0x52
 6041 0311 01       		.uleb128 0x1
 6042 0312 55       		.uleb128 0x55
 6043 0313 17       		.uleb128 0x17
 6044 0314 58       		.uleb128 0x58
 6045 0315 0B       		.uleb128 0xb
 6046 0316 59       		.uleb128 0x59
 6047 0317 05       		.uleb128 0x5
 6048 0318 01       		.uleb128 0x1
 6049 0319 13       		.uleb128 0x13
 6050 031a 00       		.byte	0
 6051 031b 00       		.byte	0
 6052 031c 3C       		.uleb128 0x3c
 6053 031d 05       		.uleb128 0x5
 6054 031e 00       		.byte	0
 6055 031f 31       		.uleb128 0x31
 6056 0320 13       		.uleb128 0x13
ARM GAS  /tmp/ccQNhOlE.s 			page 167


 6057 0321 02       		.uleb128 0x2
 6058 0322 17       		.uleb128 0x17
 6059 0323 00       		.byte	0
 6060 0324 00       		.byte	0
 6061 0325 3D       		.uleb128 0x3d
 6062 0326 1D       		.uleb128 0x1d
 6063 0327 01       		.byte	0x1
 6064 0328 31       		.uleb128 0x31
 6065 0329 13       		.uleb128 0x13
 6066 032a 11       		.uleb128 0x11
 6067 032b 01       		.uleb128 0x1
 6068 032c 12       		.uleb128 0x12
 6069 032d 06       		.uleb128 0x6
 6070 032e 58       		.uleb128 0x58
 6071 032f 0B       		.uleb128 0xb
 6072 0330 59       		.uleb128 0x59
 6073 0331 05       		.uleb128 0x5
 6074 0332 00       		.byte	0
 6075 0333 00       		.byte	0
 6076 0334 3E       		.uleb128 0x3e
 6077 0335 2E       		.uleb128 0x2e
 6078 0336 01       		.byte	0x1
 6079 0337 03       		.uleb128 0x3
 6080 0338 0E       		.uleb128 0xe
 6081 0339 3A       		.uleb128 0x3a
 6082 033a 0B       		.uleb128 0xb
 6083 033b 3B       		.uleb128 0x3b
 6084 033c 05       		.uleb128 0x5
 6085 033d 27       		.uleb128 0x27
 6086 033e 19       		.uleb128 0x19
 6087 033f 20       		.uleb128 0x20
 6088 0340 0B       		.uleb128 0xb
 6089 0341 01       		.uleb128 0x1
 6090 0342 13       		.uleb128 0x13
 6091 0343 00       		.byte	0
 6092 0344 00       		.byte	0
 6093 0345 3F       		.uleb128 0x3f
 6094 0346 05       		.uleb128 0x5
 6095 0347 00       		.byte	0
 6096 0348 03       		.uleb128 0x3
 6097 0349 0E       		.uleb128 0xe
 6098 034a 3A       		.uleb128 0x3a
 6099 034b 0B       		.uleb128 0xb
 6100 034c 3B       		.uleb128 0x3b
 6101 034d 05       		.uleb128 0x5
 6102 034e 49       		.uleb128 0x49
 6103 034f 13       		.uleb128 0x13
 6104 0350 00       		.byte	0
 6105 0351 00       		.byte	0
 6106 0352 40       		.uleb128 0x40
 6107 0353 2E       		.uleb128 0x2e
 6108 0354 01       		.byte	0x1
 6109 0355 3F       		.uleb128 0x3f
 6110 0356 19       		.uleb128 0x19
 6111 0357 03       		.uleb128 0x3
 6112 0358 0E       		.uleb128 0xe
 6113 0359 3A       		.uleb128 0x3a
ARM GAS  /tmp/ccQNhOlE.s 			page 168


 6114 035a 0B       		.uleb128 0xb
 6115 035b 3B       		.uleb128 0x3b
 6116 035c 05       		.uleb128 0x5
 6117 035d 27       		.uleb128 0x27
 6118 035e 19       		.uleb128 0x19
 6119 035f 20       		.uleb128 0x20
 6120 0360 0B       		.uleb128 0xb
 6121 0361 01       		.uleb128 0x1
 6122 0362 13       		.uleb128 0x13
 6123 0363 00       		.byte	0
 6124 0364 00       		.byte	0
 6125 0365 41       		.uleb128 0x41
 6126 0366 05       		.uleb128 0x5
 6127 0367 00       		.byte	0
 6128 0368 31       		.uleb128 0x31
 6129 0369 13       		.uleb128 0x13
 6130 036a 1C       		.uleb128 0x1c
 6131 036b 0B       		.uleb128 0xb
 6132 036c 00       		.byte	0
 6133 036d 00       		.byte	0
 6134 036e 42       		.uleb128 0x42
 6135 036f 898201   		.uleb128 0x4109
 6136 0372 01       		.byte	0x1
 6137 0373 11       		.uleb128 0x11
 6138 0374 01       		.uleb128 0x1
 6139 0375 9542     		.uleb128 0x2115
 6140 0377 19       		.uleb128 0x19
 6141 0378 31       		.uleb128 0x31
 6142 0379 13       		.uleb128 0x13
 6143 037a 01       		.uleb128 0x1
 6144 037b 13       		.uleb128 0x13
 6145 037c 00       		.byte	0
 6146 037d 00       		.byte	0
 6147 037e 43       		.uleb128 0x43
 6148 037f 1D       		.uleb128 0x1d
 6149 0380 01       		.byte	0x1
 6150 0381 31       		.uleb128 0x31
 6151 0382 13       		.uleb128 0x13
 6152 0383 52       		.uleb128 0x52
 6153 0384 01       		.uleb128 0x1
 6154 0385 55       		.uleb128 0x55
 6155 0386 17       		.uleb128 0x17
 6156 0387 58       		.uleb128 0x58
 6157 0388 0B       		.uleb128 0xb
 6158 0389 59       		.uleb128 0x59
 6159 038a 05       		.uleb128 0x5
 6160 038b 00       		.byte	0
 6161 038c 00       		.byte	0
 6162 038d 44       		.uleb128 0x44
 6163 038e 0B       		.uleb128 0xb
 6164 038f 01       		.byte	0x1
 6165 0390 55       		.uleb128 0x55
 6166 0391 17       		.uleb128 0x17
 6167 0392 00       		.byte	0
 6168 0393 00       		.byte	0
 6169 0394 45       		.uleb128 0x45
 6170 0395 34       		.uleb128 0x34
ARM GAS  /tmp/ccQNhOlE.s 			page 169


 6171 0396 00       		.byte	0
 6172 0397 31       		.uleb128 0x31
 6173 0398 13       		.uleb128 0x13
 6174 0399 02       		.uleb128 0x2
 6175 039a 17       		.uleb128 0x17
 6176 039b 00       		.byte	0
 6177 039c 00       		.byte	0
 6178 039d 46       		.uleb128 0x46
 6179 039e 05       		.uleb128 0x5
 6180 039f 00       		.byte	0
 6181 03a0 03       		.uleb128 0x3
 6182 03a1 08       		.uleb128 0x8
 6183 03a2 3A       		.uleb128 0x3a
 6184 03a3 0B       		.uleb128 0xb
 6185 03a4 3B       		.uleb128 0x3b
 6186 03a5 05       		.uleb128 0x5
 6187 03a6 49       		.uleb128 0x49
 6188 03a7 13       		.uleb128 0x13
 6189 03a8 02       		.uleb128 0x2
 6190 03a9 18       		.uleb128 0x18
 6191 03aa 00       		.byte	0
 6192 03ab 00       		.byte	0
 6193 03ac 47       		.uleb128 0x47
 6194 03ad 2E       		.uleb128 0x2e
 6195 03ae 01       		.byte	0x1
 6196 03af 3F       		.uleb128 0x3f
 6197 03b0 19       		.uleb128 0x19
 6198 03b1 03       		.uleb128 0x3
 6199 03b2 0E       		.uleb128 0xe
 6200 03b3 3A       		.uleb128 0x3a
 6201 03b4 0B       		.uleb128 0xb
 6202 03b5 3B       		.uleb128 0x3b
 6203 03b6 0B       		.uleb128 0xb
 6204 03b7 27       		.uleb128 0x27
 6205 03b8 19       		.uleb128 0x19
 6206 03b9 11       		.uleb128 0x11
 6207 03ba 01       		.uleb128 0x1
 6208 03bb 12       		.uleb128 0x12
 6209 03bc 06       		.uleb128 0x6
 6210 03bd 40       		.uleb128 0x40
 6211 03be 18       		.uleb128 0x18
 6212 03bf 9742     		.uleb128 0x2117
 6213 03c1 19       		.uleb128 0x19
 6214 03c2 01       		.uleb128 0x1
 6215 03c3 13       		.uleb128 0x13
 6216 03c4 00       		.byte	0
 6217 03c5 00       		.byte	0
 6218 03c6 48       		.uleb128 0x48
 6219 03c7 05       		.uleb128 0x5
 6220 03c8 00       		.byte	0
 6221 03c9 03       		.uleb128 0x3
 6222 03ca 08       		.uleb128 0x8
 6223 03cb 3A       		.uleb128 0x3a
 6224 03cc 0B       		.uleb128 0xb
 6225 03cd 3B       		.uleb128 0x3b
 6226 03ce 0B       		.uleb128 0xb
 6227 03cf 49       		.uleb128 0x49
ARM GAS  /tmp/ccQNhOlE.s 			page 170


 6228 03d0 13       		.uleb128 0x13
 6229 03d1 02       		.uleb128 0x2
 6230 03d2 18       		.uleb128 0x18
 6231 03d3 00       		.byte	0
 6232 03d4 00       		.byte	0
 6233 03d5 49       		.uleb128 0x49
 6234 03d6 05       		.uleb128 0x5
 6235 03d7 00       		.byte	0
 6236 03d8 03       		.uleb128 0x3
 6237 03d9 0E       		.uleb128 0xe
 6238 03da 3A       		.uleb128 0x3a
 6239 03db 0B       		.uleb128 0xb
 6240 03dc 3B       		.uleb128 0x3b
 6241 03dd 0B       		.uleb128 0xb
 6242 03de 49       		.uleb128 0x49
 6243 03df 13       		.uleb128 0x13
 6244 03e0 02       		.uleb128 0x2
 6245 03e1 18       		.uleb128 0x18
 6246 03e2 00       		.byte	0
 6247 03e3 00       		.byte	0
 6248 03e4 4A       		.uleb128 0x4a
 6249 03e5 34       		.uleb128 0x34
 6250 03e6 00       		.byte	0
 6251 03e7 03       		.uleb128 0x3
 6252 03e8 08       		.uleb128 0x8
 6253 03e9 3A       		.uleb128 0x3a
 6254 03ea 0B       		.uleb128 0xb
 6255 03eb 3B       		.uleb128 0x3b
 6256 03ec 0B       		.uleb128 0xb
 6257 03ed 49       		.uleb128 0x49
 6258 03ee 13       		.uleb128 0x13
 6259 03ef 02       		.uleb128 0x2
 6260 03f0 17       		.uleb128 0x17
 6261 03f1 00       		.byte	0
 6262 03f2 00       		.byte	0
 6263 03f3 4B       		.uleb128 0x4b
 6264 03f4 05       		.uleb128 0x5
 6265 03f5 00       		.byte	0
 6266 03f6 03       		.uleb128 0x3
 6267 03f7 0E       		.uleb128 0xe
 6268 03f8 3A       		.uleb128 0x3a
 6269 03f9 0B       		.uleb128 0xb
 6270 03fa 3B       		.uleb128 0x3b
 6271 03fb 0B       		.uleb128 0xb
 6272 03fc 49       		.uleb128 0x49
 6273 03fd 13       		.uleb128 0x13
 6274 03fe 02       		.uleb128 0x2
 6275 03ff 17       		.uleb128 0x17
 6276 0400 00       		.byte	0
 6277 0401 00       		.byte	0
 6278 0402 4C       		.uleb128 0x4c
 6279 0403 2E       		.uleb128 0x2e
 6280 0404 01       		.byte	0x1
 6281 0405 03       		.uleb128 0x3
 6282 0406 0E       		.uleb128 0xe
 6283 0407 3A       		.uleb128 0x3a
 6284 0408 0B       		.uleb128 0xb
ARM GAS  /tmp/ccQNhOlE.s 			page 171


 6285 0409 3B       		.uleb128 0x3b
 6286 040a 0B       		.uleb128 0xb
 6287 040b 27       		.uleb128 0x27
 6288 040c 19       		.uleb128 0x19
 6289 040d 20       		.uleb128 0x20
 6290 040e 0B       		.uleb128 0xb
 6291 040f 01       		.uleb128 0x1
 6292 0410 13       		.uleb128 0x13
 6293 0411 00       		.byte	0
 6294 0412 00       		.byte	0
 6295 0413 4D       		.uleb128 0x4d
 6296 0414 05       		.uleb128 0x5
 6297 0415 00       		.byte	0
 6298 0416 03       		.uleb128 0x3
 6299 0417 0E       		.uleb128 0xe
 6300 0418 3A       		.uleb128 0x3a
 6301 0419 0B       		.uleb128 0xb
 6302 041a 3B       		.uleb128 0x3b
 6303 041b 0B       		.uleb128 0xb
 6304 041c 49       		.uleb128 0x49
 6305 041d 13       		.uleb128 0x13
 6306 041e 00       		.byte	0
 6307 041f 00       		.byte	0
 6308 0420 4E       		.uleb128 0x4e
 6309 0421 34       		.uleb128 0x34
 6310 0422 00       		.byte	0
 6311 0423 03       		.uleb128 0x3
 6312 0424 08       		.uleb128 0x8
 6313 0425 3A       		.uleb128 0x3a
 6314 0426 0B       		.uleb128 0xb
 6315 0427 3B       		.uleb128 0x3b
 6316 0428 0B       		.uleb128 0xb
 6317 0429 49       		.uleb128 0x49
 6318 042a 13       		.uleb128 0x13
 6319 042b 00       		.byte	0
 6320 042c 00       		.byte	0
 6321 042d 4F       		.uleb128 0x4f
 6322 042e 2E       		.uleb128 0x2e
 6323 042f 01       		.byte	0x1
 6324 0430 03       		.uleb128 0x3
 6325 0431 0E       		.uleb128 0xe
 6326 0432 3A       		.uleb128 0x3a
 6327 0433 0B       		.uleb128 0xb
 6328 0434 3B       		.uleb128 0x3b
 6329 0435 0B       		.uleb128 0xb
 6330 0436 27       		.uleb128 0x27
 6331 0437 19       		.uleb128 0x19
 6332 0438 49       		.uleb128 0x49
 6333 0439 13       		.uleb128 0x13
 6334 043a 20       		.uleb128 0x20
 6335 043b 0B       		.uleb128 0xb
 6336 043c 01       		.uleb128 0x1
 6337 043d 13       		.uleb128 0x13
 6338 043e 00       		.byte	0
 6339 043f 00       		.byte	0
 6340 0440 50       		.uleb128 0x50
 6341 0441 2E       		.uleb128 0x2e
ARM GAS  /tmp/ccQNhOlE.s 			page 172


 6342 0442 00       		.byte	0
 6343 0443 03       		.uleb128 0x3
 6344 0444 0E       		.uleb128 0xe
 6345 0445 3A       		.uleb128 0x3a
 6346 0446 0B       		.uleb128 0xb
 6347 0447 3B       		.uleb128 0x3b
 6348 0448 05       		.uleb128 0x5
 6349 0449 27       		.uleb128 0x27
 6350 044a 19       		.uleb128 0x19
 6351 044b 49       		.uleb128 0x49
 6352 044c 13       		.uleb128 0x13
 6353 044d 20       		.uleb128 0x20
 6354 044e 0B       		.uleb128 0xb
 6355 044f 00       		.byte	0
 6356 0450 00       		.byte	0
 6357 0451 51       		.uleb128 0x51
 6358 0452 2E       		.uleb128 0x2e
 6359 0453 01       		.byte	0x1
 6360 0454 03       		.uleb128 0x3
 6361 0455 0E       		.uleb128 0xe
 6362 0456 3A       		.uleb128 0x3a
 6363 0457 0B       		.uleb128 0xb
 6364 0458 3B       		.uleb128 0x3b
 6365 0459 05       		.uleb128 0x5
 6366 045a 27       		.uleb128 0x27
 6367 045b 19       		.uleb128 0x19
 6368 045c 49       		.uleb128 0x49
 6369 045d 13       		.uleb128 0x13
 6370 045e 20       		.uleb128 0x20
 6371 045f 0B       		.uleb128 0xb
 6372 0460 01       		.uleb128 0x1
 6373 0461 13       		.uleb128 0x13
 6374 0462 00       		.byte	0
 6375 0463 00       		.byte	0
 6376 0464 52       		.uleb128 0x52
 6377 0465 2E       		.uleb128 0x2e
 6378 0466 01       		.byte	0x1
 6379 0467 31       		.uleb128 0x31
 6380 0468 13       		.uleb128 0x13
 6381 0469 11       		.uleb128 0x11
 6382 046a 01       		.uleb128 0x1
 6383 046b 12       		.uleb128 0x12
 6384 046c 06       		.uleb128 0x6
 6385 046d 40       		.uleb128 0x40
 6386 046e 18       		.uleb128 0x18
 6387 046f 9742     		.uleb128 0x2117
 6388 0471 19       		.uleb128 0x19
 6389 0472 01       		.uleb128 0x1
 6390 0473 13       		.uleb128 0x13
 6391 0474 00       		.byte	0
 6392 0475 00       		.byte	0
 6393 0476 53       		.uleb128 0x53
 6394 0477 05       		.uleb128 0x5
 6395 0478 00       		.byte	0
 6396 0479 31       		.uleb128 0x31
 6397 047a 13       		.uleb128 0x13
 6398 047b 02       		.uleb128 0x2
ARM GAS  /tmp/ccQNhOlE.s 			page 173


 6399 047c 18       		.uleb128 0x18
 6400 047d 00       		.byte	0
 6401 047e 00       		.byte	0
 6402 047f 54       		.uleb128 0x54
 6403 0480 2E       		.uleb128 0x2e
 6404 0481 00       		.byte	0
 6405 0482 3F       		.uleb128 0x3f
 6406 0483 19       		.uleb128 0x19
 6407 0484 3C       		.uleb128 0x3c
 6408 0485 19       		.uleb128 0x19
 6409 0486 6E       		.uleb128 0x6e
 6410 0487 0E       		.uleb128 0xe
 6411 0488 03       		.uleb128 0x3
 6412 0489 0E       		.uleb128 0xe
 6413 048a 3A       		.uleb128 0x3a
 6414 048b 0B       		.uleb128 0xb
 6415 048c 3B       		.uleb128 0x3b
 6416 048d 0B       		.uleb128 0xb
 6417 048e 00       		.byte	0
 6418 048f 00       		.byte	0
 6419 0490 00       		.byte	0
 6420              		.section	.debug_loc,"",%progbits
 6421              	.Ldebug_loc0:
 6422              	.LLST46:
 6423 0000 00000000 		.4byte	.LVL106
 6424 0004 16000000 		.4byte	.LVL110
 6425 0008 0100     		.2byte	0x1
 6426 000a 51       		.byte	0x51
 6427 000b 16000000 		.4byte	.LVL110
 6428 000f 1E000000 		.4byte	.LVL112
 6429 0013 0400     		.2byte	0x4
 6430 0015 F3       		.byte	0xf3
 6431 0016 01       		.uleb128 0x1
 6432 0017 51       		.byte	0x51
 6433 0018 9F       		.byte	0x9f
 6434 0019 1E000000 		.4byte	.LVL112
 6435 001d 30000000 		.4byte	.LVL113
 6436 0021 0100     		.2byte	0x1
 6437 0023 51       		.byte	0x51
 6438 0024 30000000 		.4byte	.LVL113
 6439 0028 38000000 		.4byte	.LVL115
 6440 002c 0400     		.2byte	0x4
 6441 002e F3       		.byte	0xf3
 6442 002f 01       		.uleb128 0x1
 6443 0030 51       		.byte	0x51
 6444 0031 9F       		.byte	0x9f
 6445 0032 38000000 		.4byte	.LVL115
 6446 0036 3A000000 		.4byte	.LVL116
 6447 003a 0100     		.2byte	0x1
 6448 003c 51       		.byte	0x51
 6449 003d 3A000000 		.4byte	.LVL116
 6450 0041 40000000 		.4byte	.LFE209
 6451 0045 0400     		.2byte	0x4
 6452 0047 F3       		.byte	0xf3
 6453 0048 01       		.uleb128 0x1
 6454 0049 51       		.byte	0x51
 6455 004a 9F       		.byte	0x9f
ARM GAS  /tmp/ccQNhOlE.s 			page 174


 6456 004b 00000000 		.4byte	0
 6457 004f 00000000 		.4byte	0
 6458              	.LLST47:
 6459 0053 00000000 		.4byte	.LVL106
 6460 0057 12000000 		.4byte	.LVL109
 6461 005b 0100     		.2byte	0x1
 6462 005d 52       		.byte	0x52
 6463 005e 12000000 		.4byte	.LVL109
 6464 0062 1E000000 		.4byte	.LVL112
 6465 0066 0400     		.2byte	0x4
 6466 0068 F3       		.byte	0xf3
 6467 0069 01       		.uleb128 0x1
 6468 006a 52       		.byte	0x52
 6469 006b 9F       		.byte	0x9f
 6470 006c 1E000000 		.4byte	.LVL112
 6471 0070 40000000 		.4byte	.LFE209
 6472 0074 0100     		.2byte	0x1
 6473 0076 52       		.byte	0x52
 6474 0077 00000000 		.4byte	0
 6475 007b 00000000 		.4byte	0
 6476              	.LLST48:
 6477 007f 00000000 		.4byte	.LVL106
 6478 0083 06000000 		.4byte	.LVL107
 6479 0087 0200     		.2byte	0x2
 6480 0089 30       		.byte	0x30
 6481 008a 9F       		.byte	0x9f
 6482 008b 06000000 		.4byte	.LVL107
 6483 008f 0C000000 		.4byte	.LVL108
 6484 0093 0100     		.2byte	0x1
 6485 0095 53       		.byte	0x53
 6486 0096 18000000 		.4byte	.LVL111
 6487 009a 1E000000 		.4byte	.LVL112
 6488 009e 0100     		.2byte	0x1
 6489 00a0 51       		.byte	0x51
 6490 00a1 1E000000 		.4byte	.LVL112
 6491 00a5 32000000 		.4byte	.LVL114
 6492 00a9 0100     		.2byte	0x1
 6493 00ab 53       		.byte	0x53
 6494 00ac 32000000 		.4byte	.LVL114
 6495 00b0 38000000 		.4byte	.LVL115
 6496 00b4 0100     		.2byte	0x1
 6497 00b6 51       		.byte	0x51
 6498 00b7 3A000000 		.4byte	.LVL116
 6499 00bb 40000000 		.4byte	.LFE209
 6500 00bf 0100     		.2byte	0x1
 6501 00c1 51       		.byte	0x51
 6502 00c2 00000000 		.4byte	0
 6503 00c6 00000000 		.4byte	0
 6504              	.LLST43:
 6505 00ca 00000000 		.4byte	.LVL102
 6506 00ce 0C000000 		.4byte	.LVL104
 6507 00d2 0100     		.2byte	0x1
 6508 00d4 50       		.byte	0x50
 6509 00d5 0C000000 		.4byte	.LVL104
 6510 00d9 1A000000 		.4byte	.LFE208
 6511 00dd 0400     		.2byte	0x4
 6512 00df F3       		.byte	0xf3
ARM GAS  /tmp/ccQNhOlE.s 			page 175


 6513 00e0 01       		.uleb128 0x1
 6514 00e1 50       		.byte	0x50
 6515 00e2 9F       		.byte	0x9f
 6516 00e3 00000000 		.4byte	0
 6517 00e7 00000000 		.4byte	0
 6518              	.LLST44:
 6519 00eb 00000000 		.4byte	.LVL102
 6520 00ef 0C000000 		.4byte	.LVL104
 6521 00f3 0200     		.2byte	0x2
 6522 00f5 30       		.byte	0x30
 6523 00f6 9F       		.byte	0x9f
 6524 00f7 0C000000 		.4byte	.LVL104
 6525 00fb 10000000 		.4byte	.LVL105
 6526 00ff 1100     		.2byte	0x11
 6527 0101 73       		.byte	0x73
 6528 0102 00       		.sleb128 0
 6529 0103 0A       		.byte	0xa
 6530 0104 FFFF     		.2byte	0xffff
 6531 0106 1A       		.byte	0x1a
 6532 0107 72       		.byte	0x72
 6533 0108 00       		.sleb128 0
 6534 0109 22       		.byte	0x22
 6535 010a 70       		.byte	0x70
 6536 010b 00       		.sleb128 0
 6537 010c 40       		.byte	0x40
 6538 010d 25       		.byte	0x25
 6539 010e 1E       		.byte	0x1e
 6540 010f 3A       		.byte	0x3a
 6541 0110 25       		.byte	0x25
 6542 0111 9F       		.byte	0x9f
 6543 0112 00000000 		.4byte	0
 6544 0116 00000000 		.4byte	0
 6545              	.LLST45:
 6546 011a 00000000 		.4byte	.LVL102
 6547 011e 04000000 		.4byte	.LVL103
 6548 0122 0200     		.2byte	0x2
 6549 0124 30       		.byte	0x30
 6550 0125 9F       		.byte	0x9f
 6551 0126 04000000 		.4byte	.LVL103
 6552 012a 1A000000 		.4byte	.LFE208
 6553 012e 0100     		.2byte	0x1
 6554 0130 52       		.byte	0x52
 6555 0131 00000000 		.4byte	0
 6556 0135 00000000 		.4byte	0
 6557              	.LLST40:
 6558 0139 00000000 		.4byte	.LVL99
 6559 013d 1A000000 		.4byte	.LVL101
 6560 0141 0100     		.2byte	0x1
 6561 0143 52       		.byte	0x52
 6562 0144 1A000000 		.4byte	.LVL101
 6563 0148 2A000000 		.4byte	.LFE207
 6564 014c 0400     		.2byte	0x4
 6565 014e F3       		.byte	0xf3
 6566 014f 01       		.uleb128 0x1
 6567 0150 52       		.byte	0x52
 6568 0151 9F       		.byte	0x9f
 6569 0152 00000000 		.4byte	0
ARM GAS  /tmp/ccQNhOlE.s 			page 176


 6570 0156 00000000 		.4byte	0
 6571              	.LLST41:
 6572 015a 00000000 		.4byte	.LVL99
 6573 015e 0E000000 		.4byte	.LVL100
 6574 0162 0100     		.2byte	0x1
 6575 0164 53       		.byte	0x53
 6576 0165 0E000000 		.4byte	.LVL100
 6577 0169 2A000000 		.4byte	.LFE207
 6578 016d 0400     		.2byte	0x4
 6579 016f F3       		.byte	0xf3
 6580 0170 01       		.uleb128 0x1
 6581 0171 53       		.byte	0x53
 6582 0172 9F       		.byte	0x9f
 6583 0173 00000000 		.4byte	0
 6584 0177 00000000 		.4byte	0
 6585              	.LLST42:
 6586 017b 00000000 		.4byte	.LVL99
 6587 017f 1A000000 		.4byte	.LVL101
 6588 0183 0200     		.2byte	0x2
 6589 0185 30       		.byte	0x30
 6590 0186 9F       		.byte	0x9f
 6591 0187 00000000 		.4byte	0
 6592 018b 00000000 		.4byte	0
 6593              	.LLST37:
 6594 018f 00000000 		.4byte	.LVL89
 6595 0193 20000000 		.4byte	.LVL92
 6596 0197 0100     		.2byte	0x1
 6597 0199 51       		.byte	0x51
 6598 019a 20000000 		.4byte	.LVL92
 6599 019e 3A000000 		.4byte	.LVL93
 6600 01a2 0400     		.2byte	0x4
 6601 01a4 F3       		.byte	0xf3
 6602 01a5 01       		.uleb128 0x1
 6603 01a6 51       		.byte	0x51
 6604 01a7 9F       		.byte	0x9f
 6605 01a8 3A000000 		.4byte	.LVL93
 6606 01ac 76000000 		.4byte	.LFE206
 6607 01b0 0100     		.2byte	0x1
 6608 01b2 51       		.byte	0x51
 6609 01b3 00000000 		.4byte	0
 6610 01b7 00000000 		.4byte	0
 6611              	.LLST38:
 6612 01bb 00000000 		.4byte	.LVL89
 6613 01bf 18000000 		.4byte	.LVL91
 6614 01c3 0100     		.2byte	0x1
 6615 01c5 52       		.byte	0x52
 6616 01c6 18000000 		.4byte	.LVL91
 6617 01ca 3A000000 		.4byte	.LVL93
 6618 01ce 0400     		.2byte	0x4
 6619 01d0 F3       		.byte	0xf3
 6620 01d1 01       		.uleb128 0x1
 6621 01d2 52       		.byte	0x52
 6622 01d3 9F       		.byte	0x9f
 6623 01d4 3A000000 		.4byte	.LVL93
 6624 01d8 50000000 		.4byte	.LVL95
 6625 01dc 0100     		.2byte	0x1
 6626 01de 52       		.byte	0x52
ARM GAS  /tmp/ccQNhOlE.s 			page 177


 6627 01df 50000000 		.4byte	.LVL95
 6628 01e3 76000000 		.4byte	.LFE206
 6629 01e7 0400     		.2byte	0x4
 6630 01e9 F3       		.byte	0xf3
 6631 01ea 01       		.uleb128 0x1
 6632 01eb 52       		.byte	0x52
 6633 01ec 9F       		.byte	0x9f
 6634 01ed 00000000 		.4byte	0
 6635 01f1 00000000 		.4byte	0
 6636              	.LLST39:
 6637 01f5 14000000 		.4byte	.LVL90
 6638 01f9 20000000 		.4byte	.LVL92
 6639 01fd 0200     		.2byte	0x2
 6640 01ff 30       		.byte	0x30
 6641 0200 9F       		.byte	0x9f
 6642 0201 4E000000 		.4byte	.LVL94
 6643 0205 56000000 		.4byte	.LVL96
 6644 0209 0200     		.2byte	0x2
 6645 020b 30       		.byte	0x30
 6646 020c 9F       		.byte	0x9f
 6647 020d 56000000 		.4byte	.LVL96
 6648 0211 5C000000 		.4byte	.LVL97
 6649 0215 0100     		.2byte	0x1
 6650 0217 53       		.byte	0x53
 6651 0218 64000000 		.4byte	.LVL98
 6652 021c 76000000 		.4byte	.LFE206
 6653 0220 0100     		.2byte	0x1
 6654 0222 53       		.byte	0x53
 6655 0223 00000000 		.4byte	0
 6656 0227 00000000 		.4byte	0
 6657              	.LLST36:
 6658 022b 00000000 		.4byte	.LVL86
 6659 022f 0A000000 		.4byte	.LVL87
 6660 0233 0100     		.2byte	0x1
 6661 0235 50       		.byte	0x50
 6662 0236 0A000000 		.4byte	.LVL87
 6663 023a 14000000 		.4byte	.LFE205
 6664 023e 0400     		.2byte	0x4
 6665 0240 F3       		.byte	0xf3
 6666 0241 01       		.uleb128 0x1
 6667 0242 50       		.byte	0x50
 6668 0243 9F       		.byte	0x9f
 6669 0244 00000000 		.4byte	0
 6670 0248 00000000 		.4byte	0
 6671              	.LLST35:
 6672 024c 00000000 		.4byte	.LVL83
 6673 0250 0A000000 		.4byte	.LVL84
 6674 0254 0100     		.2byte	0x1
 6675 0256 50       		.byte	0x50
 6676 0257 0A000000 		.4byte	.LVL84
 6677 025b 14000000 		.4byte	.LFE204
 6678 025f 0400     		.2byte	0x4
 6679 0261 F3       		.byte	0xf3
 6680 0262 01       		.uleb128 0x1
 6681 0263 50       		.byte	0x50
 6682 0264 9F       		.byte	0x9f
 6683 0265 00000000 		.4byte	0
ARM GAS  /tmp/ccQNhOlE.s 			page 178


 6684 0269 00000000 		.4byte	0
 6685              	.LLST0:
 6686 026d 00000000 		.4byte	.LVL0
 6687 0271 28000000 		.4byte	.LVL4
 6688 0275 0100     		.2byte	0x1
 6689 0277 50       		.byte	0x50
 6690 0278 28000000 		.4byte	.LVL4
 6691 027c 6C000000 		.4byte	.LFE201
 6692 0280 0400     		.2byte	0x4
 6693 0282 F3       		.byte	0xf3
 6694 0283 01       		.uleb128 0x1
 6695 0284 50       		.byte	0x50
 6696 0285 9F       		.byte	0x9f
 6697 0286 00000000 		.4byte	0
 6698 028a 00000000 		.4byte	0
 6699              	.LLST1:
 6700 028e 20000000 		.4byte	.LVL3
 6701 0292 28000000 		.4byte	.LVL4
 6702 0296 0200     		.2byte	0x2
 6703 0298 30       		.byte	0x30
 6704 0299 9F       		.byte	0x9f
 6705 029a 28000000 		.4byte	.LVL4
 6706 029e 64000000 		.4byte	.LVL11
 6707 02a2 0100     		.2byte	0x1
 6708 02a4 54       		.byte	0x54
 6709 02a5 00000000 		.4byte	0
 6710 02a9 00000000 		.4byte	0
 6711              	.LLST2:
 6712 02ad 00000000 		.4byte	.LVL0
 6713 02b1 0A000000 		.4byte	.LVL1
 6714 02b5 0100     		.2byte	0x1
 6715 02b7 50       		.byte	0x50
 6716 02b8 00000000 		.4byte	0
 6717 02bc 00000000 		.4byte	0
 6718              	.LLST3:
 6719 02c0 0A000000 		.4byte	.LVL1
 6720 02c4 10000000 		.4byte	.LVL2
 6721 02c8 0100     		.2byte	0x1
 6722 02ca 50       		.byte	0x50
 6723 02cb 00000000 		.4byte	0
 6724 02cf 00000000 		.4byte	0
 6725              	.LLST4:
 6726 02d3 44000000 		.4byte	.LVL8
 6727 02d7 5E000000 		.4byte	.LVL10
 6728 02db 0100     		.2byte	0x1
 6729 02dd 54       		.byte	0x54
 6730 02de 00000000 		.4byte	0
 6731 02e2 00000000 		.4byte	0
 6732              	.LLST5:
 6733 02e6 44000000 		.4byte	.LVL8
 6734 02ea 5E000000 		.4byte	.LVL10
 6735 02ee 0A00     		.2byte	0xa
 6736 02f0 F3       		.byte	0xf3
 6737 02f1 01       		.uleb128 0x1
 6738 02f2 50       		.byte	0x50
 6739 02f3 0C       		.byte	0xc
 6740 02f4 00400640 		.4byte	0x40064000
ARM GAS  /tmp/ccQNhOlE.s 			page 179


 6741 02f8 29       		.byte	0x29
 6742 02f9 9F       		.byte	0x9f
 6743 02fa 00000000 		.4byte	0
 6744 02fe 00000000 		.4byte	0
 6745              	.LLST6:
 6746 0302 56000000 		.4byte	.LVL9
 6747 0306 5E000000 		.4byte	.LVL10
 6748 030a 0200     		.2byte	0x2
 6749 030c 3F       		.byte	0x3f
 6750 030d 9F       		.byte	0x9f
 6751 030e 00000000 		.4byte	0
 6752 0312 00000000 		.4byte	0
 6753              	.LLST7:
 6754 0316 56000000 		.4byte	.LVL9
 6755 031a 5E000000 		.4byte	.LVL10
 6756 031e 0A00     		.2byte	0xa
 6757 0320 F3       		.byte	0xf3
 6758 0321 01       		.uleb128 0x1
 6759 0322 50       		.byte	0x50
 6760 0323 0C       		.byte	0xc
 6761 0324 00400640 		.4byte	0x40064000
 6762 0328 29       		.byte	0x29
 6763 0329 9F       		.byte	0x9f
 6764 032a 00000000 		.4byte	0
 6765 032e 00000000 		.4byte	0
 6766              	.LLST34:
 6767 0332 00000000 		.4byte	.LVL76
 6768 0336 10000000 		.4byte	.LVL77
 6769 033a 0100     		.2byte	0x1
 6770 033c 51       		.byte	0x51
 6771 033d 10000000 		.4byte	.LVL77
 6772 0341 1A000000 		.4byte	.LVL78
 6773 0345 0400     		.2byte	0x4
 6774 0347 F3       		.byte	0xf3
 6775 0348 01       		.uleb128 0x1
 6776 0349 51       		.byte	0x51
 6777 034a 9F       		.byte	0x9f
 6778 034b 1A000000 		.4byte	.LVL78
 6779 034f 26000000 		.4byte	.LVL79
 6780 0353 0100     		.2byte	0x1
 6781 0355 51       		.byte	0x51
 6782 0356 26000000 		.4byte	.LVL79
 6783 035a 2C000000 		.4byte	.LVL80
 6784 035e 0300     		.2byte	0x3
 6785 0360 71       		.byte	0x71
 6786 0361 74       		.sleb128 -12
 6787 0362 9F       		.byte	0x9f
 6788 0363 2C000000 		.4byte	.LVL80
 6789 0367 34000000 		.4byte	.LFE199
 6790 036b 0400     		.2byte	0x4
 6791 036d F3       		.byte	0xf3
 6792 036e 01       		.uleb128 0x1
 6793 036f 51       		.byte	0x51
 6794 0370 9F       		.byte	0x9f
 6795 0371 00000000 		.4byte	0
 6796 0375 00000000 		.4byte	0
 6797              	.LLST26:
ARM GAS  /tmp/ccQNhOlE.s 			page 180


 6798 0379 00000000 		.4byte	.LVL64
 6799 037d 27000000 		.4byte	.LVL70-1
 6800 0381 0100     		.2byte	0x1
 6801 0383 51       		.byte	0x51
 6802 0384 27000000 		.4byte	.LVL70-1
 6803 0388 28000000 		.4byte	.LVL70
 6804 038c 0400     		.2byte	0x4
 6805 038e F3       		.byte	0xf3
 6806 038f 01       		.uleb128 0x1
 6807 0390 51       		.byte	0x51
 6808 0391 9F       		.byte	0x9f
 6809 0392 28000000 		.4byte	.LVL70
 6810 0396 4B000000 		.4byte	.LVL75-1
 6811 039a 0100     		.2byte	0x1
 6812 039c 51       		.byte	0x51
 6813 039d 4B000000 		.4byte	.LVL75-1
 6814 03a1 58000000 		.4byte	.LFE197
 6815 03a5 0400     		.2byte	0x4
 6816 03a7 F3       		.byte	0xf3
 6817 03a8 01       		.uleb128 0x1
 6818 03a9 51       		.byte	0x51
 6819 03aa 9F       		.byte	0x9f
 6820 03ab 00000000 		.4byte	0
 6821 03af 00000000 		.4byte	0
 6822              	.LLST27:
 6823 03b3 00000000 		.4byte	.LVL64
 6824 03b7 0A000000 		.4byte	.LVL66
 6825 03bb 0100     		.2byte	0x1
 6826 03bd 53       		.byte	0x53
 6827 03be 0A000000 		.4byte	.LVL66
 6828 03c2 28000000 		.4byte	.LVL70
 6829 03c6 0400     		.2byte	0x4
 6830 03c8 F3       		.byte	0xf3
 6831 03c9 01       		.uleb128 0x1
 6832 03ca 53       		.byte	0x53
 6833 03cb 9F       		.byte	0x9f
 6834 03cc 28000000 		.4byte	.LVL70
 6835 03d0 2A000000 		.4byte	.LVL71
 6836 03d4 0100     		.2byte	0x1
 6837 03d6 53       		.byte	0x53
 6838 03d7 2A000000 		.4byte	.LVL71
 6839 03db 58000000 		.4byte	.LFE197
 6840 03df 0400     		.2byte	0x4
 6841 03e1 F3       		.byte	0xf3
 6842 03e2 01       		.uleb128 0x1
 6843 03e3 53       		.byte	0x53
 6844 03e4 9F       		.byte	0x9f
 6845 03e5 00000000 		.4byte	0
 6846 03e9 00000000 		.4byte	0
 6847              	.LLST28:
 6848 03ed 00000000 		.4byte	.LVL64
 6849 03f1 08000000 		.4byte	.LVL65
 6850 03f5 0100     		.2byte	0x1
 6851 03f7 50       		.byte	0x50
 6852 03f8 00000000 		.4byte	0
 6853 03fc 00000000 		.4byte	0
 6854              	.LLST29:
ARM GAS  /tmp/ccQNhOlE.s 			page 181


 6855 0400 1C000000 		.4byte	.LVL68
 6856 0404 20000000 		.4byte	.LVL69
 6857 0408 0200     		.2byte	0x2
 6858 040a 4D       		.byte	0x4d
 6859 040b 9F       		.byte	0x9f
 6860 040c 00000000 		.4byte	0
 6861 0410 00000000 		.4byte	0
 6862              	.LLST30:
 6863 0414 18000000 		.4byte	.LVL67
 6864 0418 1C000000 		.4byte	.LVL68
 6865 041c 0200     		.2byte	0x2
 6866 041e 4D       		.byte	0x4d
 6867 041f 9F       		.byte	0x9f
 6868 0420 00000000 		.4byte	0
 6869 0424 00000000 		.4byte	0
 6870              	.LLST31:
 6871 0428 20000000 		.4byte	.LVL69
 6872 042c 28000000 		.4byte	.LVL70
 6873 0430 0200     		.2byte	0x2
 6874 0432 4D       		.byte	0x4d
 6875 0433 9F       		.byte	0x9f
 6876 0434 00000000 		.4byte	0
 6877 0438 00000000 		.4byte	0
 6878              	.LLST32:
 6879 043c 40000000 		.4byte	.LVL73
 6880 0440 44000000 		.4byte	.LVL74
 6881 0444 0300     		.2byte	0x3
 6882 0446 08       		.byte	0x8
 6883 0447 28       		.byte	0x28
 6884 0448 9F       		.byte	0x9f
 6885 0449 00000000 		.4byte	0
 6886 044d 00000000 		.4byte	0
 6887              	.LLST33:
 6888 0451 3C000000 		.4byte	.LVL72
 6889 0455 40000000 		.4byte	.LVL73
 6890 0459 0300     		.2byte	0x3
 6891 045b 08       		.byte	0x8
 6892 045c 28       		.byte	0x28
 6893 045d 9F       		.byte	0x9f
 6894 045e 00000000 		.4byte	0
 6895 0462 00000000 		.4byte	0
 6896              	.LLST22:
 6897 0466 04000000 		.4byte	.LVL51
 6898 046a 0C000000 		.4byte	.LVL52
 6899 046e 0100     		.2byte	0x1
 6900 0470 53       		.byte	0x53
 6901 0471 0C000000 		.4byte	.LVL52
 6902 0475 10000000 		.4byte	.LVL53
 6903 0479 0600     		.2byte	0x6
 6904 047b 73       		.byte	0x73
 6905 047c 00       		.sleb128 0
 6906 047d 08       		.byte	0x8
 6907 047e 20       		.byte	0x20
 6908 047f 21       		.byte	0x21
 6909 0480 9F       		.byte	0x9f
 6910 0481 14000000 		.4byte	.LVL54
 6911 0485 28000000 		.4byte	.LFE196
ARM GAS  /tmp/ccQNhOlE.s 			page 182


 6912 0489 0100     		.2byte	0x1
 6913 048b 53       		.byte	0x53
 6914 048c 00000000 		.4byte	0
 6915 0490 00000000 		.4byte	0
 6916              	.LLST18:
 6917 0494 00000000 		.4byte	.LVL41
 6918 0498 20000000 		.4byte	.LVL46
 6919 049c 0100     		.2byte	0x1
 6920 049e 51       		.byte	0x51
 6921 049f 20000000 		.4byte	.LVL46
 6922 04a3 28000000 		.4byte	.LVL48
 6923 04a7 0400     		.2byte	0x4
 6924 04a9 F3       		.byte	0xf3
 6925 04aa 01       		.uleb128 0x1
 6926 04ab 51       		.byte	0x51
 6927 04ac 9F       		.byte	0x9f
 6928 04ad 28000000 		.4byte	.LVL48
 6929 04b1 34000000 		.4byte	.LFE195
 6930 04b5 0100     		.2byte	0x1
 6931 04b7 51       		.byte	0x51
 6932 04b8 00000000 		.4byte	0
 6933 04bc 00000000 		.4byte	0
 6934              	.LLST19:
 6935 04c0 00000000 		.4byte	.LVL41
 6936 04c4 14000000 		.4byte	.LVL44
 6937 04c8 0100     		.2byte	0x1
 6938 04ca 52       		.byte	0x52
 6939 04cb 14000000 		.4byte	.LVL44
 6940 04cf 28000000 		.4byte	.LVL48
 6941 04d3 0400     		.2byte	0x4
 6942 04d5 F3       		.byte	0xf3
 6943 04d6 01       		.uleb128 0x1
 6944 04d7 52       		.byte	0x52
 6945 04d8 9F       		.byte	0x9f
 6946 04d9 28000000 		.4byte	.LVL48
 6947 04dd 2C000000 		.4byte	.LVL49
 6948 04e1 0100     		.2byte	0x1
 6949 04e3 52       		.byte	0x52
 6950 04e4 2C000000 		.4byte	.LVL49
 6951 04e8 34000000 		.4byte	.LFE195
 6952 04ec 0400     		.2byte	0x4
 6953 04ee F3       		.byte	0xf3
 6954 04ef 01       		.uleb128 0x1
 6955 04f0 52       		.byte	0x52
 6956 04f1 9F       		.byte	0x9f
 6957 04f2 00000000 		.4byte	0
 6958 04f6 00000000 		.4byte	0
 6959              	.LLST20:
 6960 04fa 00000000 		.4byte	.LVL41
 6961 04fe 18000000 		.4byte	.LVL45
 6962 0502 0100     		.2byte	0x1
 6963 0504 53       		.byte	0x53
 6964 0505 18000000 		.4byte	.LVL45
 6965 0509 28000000 		.4byte	.LVL48
 6966 050d 0400     		.2byte	0x4
 6967 050f F3       		.byte	0xf3
 6968 0510 01       		.uleb128 0x1
ARM GAS  /tmp/ccQNhOlE.s 			page 183


 6969 0511 53       		.byte	0x53
 6970 0512 9F       		.byte	0x9f
 6971 0513 28000000 		.4byte	.LVL48
 6972 0517 34000000 		.4byte	.LFE195
 6973 051b 0100     		.2byte	0x1
 6974 051d 53       		.byte	0x53
 6975 051e 00000000 		.4byte	0
 6976 0522 00000000 		.4byte	0
 6977              	.LLST21:
 6978 0526 0A000000 		.4byte	.LVL42
 6979 052a 10000000 		.4byte	.LVL43
 6980 052e 0100     		.2byte	0x1
 6981 0530 56       		.byte	0x56
 6982 0531 10000000 		.4byte	.LVL43
 6983 0535 22000000 		.4byte	.LVL47
 6984 0539 0100     		.2byte	0x1
 6985 053b 54       		.byte	0x54
 6986 053c 22000000 		.4byte	.LVL47
 6987 0540 28000000 		.4byte	.LVL48
 6988 0544 0100     		.2byte	0x1
 6989 0546 51       		.byte	0x51
 6990 0547 28000000 		.4byte	.LVL48
 6991 054b 34000000 		.4byte	.LFE195
 6992 054f 0100     		.2byte	0x1
 6993 0551 54       		.byte	0x54
 6994 0552 00000000 		.4byte	0
 6995 0556 00000000 		.4byte	0
 6996              	.LLST12:
 6997 055a 00000000 		.4byte	.LVL26
 6998 055e 0C000000 		.4byte	.LVL28
 6999 0562 0100     		.2byte	0x1
 7000 0564 50       		.byte	0x50
 7001 0565 0C000000 		.4byte	.LVL28
 7002 0569 0E000000 		.4byte	.LVL29
 7003 056d 0400     		.2byte	0x4
 7004 056f F3       		.byte	0xf3
 7005 0570 01       		.uleb128 0x1
 7006 0571 50       		.byte	0x50
 7007 0572 9F       		.byte	0x9f
 7008 0573 0E000000 		.4byte	.LVL29
 7009 0577 96000000 		.4byte	.LVL35
 7010 057b 0100     		.2byte	0x1
 7011 057d 50       		.byte	0x50
 7012 057e 96000000 		.4byte	.LVL35
 7013 0582 98000000 		.4byte	.LVL36
 7014 0586 0400     		.2byte	0x4
 7015 0588 F3       		.byte	0xf3
 7016 0589 01       		.uleb128 0x1
 7017 058a 50       		.byte	0x50
 7018 058b 9F       		.byte	0x9f
 7019 058c 98000000 		.4byte	.LVL36
 7020 0590 CC000000 		.4byte	.LFE194
 7021 0594 0100     		.2byte	0x1
 7022 0596 50       		.byte	0x50
 7023 0597 00000000 		.4byte	0
 7024 059b 00000000 		.4byte	0
 7025              	.LLST13:
ARM GAS  /tmp/ccQNhOlE.s 			page 184


 7026 059f 00000000 		.4byte	.LVL26
 7027 05a3 94000000 		.4byte	.LVL34
 7028 05a7 0100     		.2byte	0x1
 7029 05a9 51       		.byte	0x51
 7030 05aa 94000000 		.4byte	.LVL34
 7031 05ae 98000000 		.4byte	.LVL36
 7032 05b2 0400     		.2byte	0x4
 7033 05b4 F3       		.byte	0xf3
 7034 05b5 01       		.uleb128 0x1
 7035 05b6 51       		.byte	0x51
 7036 05b7 9F       		.byte	0x9f
 7037 05b8 98000000 		.4byte	.LVL36
 7038 05bc 9C000000 		.4byte	.LVL37
 7039 05c0 0100     		.2byte	0x1
 7040 05c2 51       		.byte	0x51
 7041 05c3 9C000000 		.4byte	.LVL37
 7042 05c7 AA000000 		.4byte	.LVL39
 7043 05cb 0400     		.2byte	0x4
 7044 05cd F3       		.byte	0xf3
 7045 05ce 01       		.uleb128 0x1
 7046 05cf 51       		.byte	0x51
 7047 05d0 9F       		.byte	0x9f
 7048 05d1 AA000000 		.4byte	.LVL39
 7049 05d5 AE000000 		.4byte	.LVL40
 7050 05d9 0100     		.2byte	0x1
 7051 05db 51       		.byte	0x51
 7052 05dc AE000000 		.4byte	.LVL40
 7053 05e0 CC000000 		.4byte	.LFE194
 7054 05e4 0400     		.2byte	0x4
 7055 05e6 F3       		.byte	0xf3
 7056 05e7 01       		.uleb128 0x1
 7057 05e8 51       		.byte	0x51
 7058 05e9 9F       		.byte	0x9f
 7059 05ea 00000000 		.4byte	0
 7060 05ee 00000000 		.4byte	0
 7061              	.LLST14:
 7062 05f2 00000000 		.4byte	.LVL26
 7063 05f6 04000000 		.4byte	.LVL27
 7064 05fa 0100     		.2byte	0x1
 7065 05fc 50       		.byte	0x50
 7066 05fd 00000000 		.4byte	0
 7067 0601 00000000 		.4byte	0
 7068              	.LLST15:
 7069 0605 1A000000 		.4byte	.LVL30
 7070 0609 8C000000 		.4byte	.LVL33
 7071 060d 0100     		.2byte	0x1
 7072 060f 51       		.byte	0x51
 7073 0610 00000000 		.4byte	0
 7074 0614 00000000 		.4byte	0
 7075              	.LLST16:
 7076 0618 1A000000 		.4byte	.LVL30
 7077 061c 8C000000 		.4byte	.LVL33
 7078 0620 0100     		.2byte	0x1
 7079 0622 50       		.byte	0x50
 7080 0623 00000000 		.4byte	0
 7081 0627 00000000 		.4byte	0
 7082              	.LLST17:
ARM GAS  /tmp/ccQNhOlE.s 			page 185


 7083 062b 1A000000 		.4byte	.LVL30
 7084 062f 74000000 		.4byte	.LVL31
 7085 0633 0200     		.2byte	0x2
 7086 0635 30       		.byte	0x30
 7087 0636 9F       		.byte	0x9f
 7088 0637 74000000 		.4byte	.LVL31
 7089 063b 7C000000 		.4byte	.LVL32
 7090 063f 0100     		.2byte	0x1
 7091 0641 53       		.byte	0x53
 7092 0642 00000000 		.4byte	0
 7093 0646 00000000 		.4byte	0
 7094              	.LLST11:
 7095 064a 00000000 		.4byte	.LVL21
 7096 064e 0C000000 		.4byte	.LVL22
 7097 0652 0200     		.2byte	0x2
 7098 0654 30       		.byte	0x30
 7099 0655 9F       		.byte	0x9f
 7100 0656 0C000000 		.4byte	.LVL22
 7101 065a 16000000 		.4byte	.LFE190
 7102 065e 0100     		.2byte	0x1
 7103 0660 53       		.byte	0x53
 7104 0661 00000000 		.4byte	0
 7105 0665 00000000 		.4byte	0
 7106              	.LLST8:
 7107 0669 00000000 		.4byte	.LVL12
 7108 066d 14000000 		.4byte	.LVL14
 7109 0671 0100     		.2byte	0x1
 7110 0673 51       		.byte	0x51
 7111 0674 14000000 		.4byte	.LVL14
 7112 0678 34000000 		.4byte	.LFE189
 7113 067c 0400     		.2byte	0x4
 7114 067e F3       		.byte	0xf3
 7115 067f 01       		.uleb128 0x1
 7116 0680 51       		.byte	0x51
 7117 0681 9F       		.byte	0x9f
 7118 0682 00000000 		.4byte	0
 7119 0686 00000000 		.4byte	0
 7120              	.LLST9:
 7121 068a 00000000 		.4byte	.LVL12
 7122 068e 20000000 		.4byte	.LVL16
 7123 0692 0100     		.2byte	0x1
 7124 0694 52       		.byte	0x52
 7125 0695 20000000 		.4byte	.LVL16
 7126 0699 34000000 		.4byte	.LFE189
 7127 069d 0400     		.2byte	0x4
 7128 069f F3       		.byte	0xf3
 7129 06a0 01       		.uleb128 0x1
 7130 06a1 52       		.byte	0x52
 7131 06a2 9F       		.byte	0x9f
 7132 06a3 00000000 		.4byte	0
 7133 06a7 00000000 		.4byte	0
 7134              	.LLST10:
 7135 06ab 00000000 		.4byte	.LVL12
 7136 06af 08000000 		.4byte	.LVL13
 7137 06b3 0200     		.2byte	0x2
 7138 06b5 30       		.byte	0x30
 7139 06b6 9F       		.byte	0x9f
ARM GAS  /tmp/ccQNhOlE.s 			page 186


 7140 06b7 08000000 		.4byte	.LVL13
 7141 06bb 24000000 		.4byte	.LVL17
 7142 06bf 0100     		.2byte	0x1
 7143 06c1 56       		.byte	0x56
 7144 06c2 24000000 		.4byte	.LVL17
 7145 06c6 2E000000 		.4byte	.LVL20
 7146 06ca 0100     		.2byte	0x1
 7147 06cc 53       		.byte	0x53
 7148 06cd 2E000000 		.4byte	.LVL20
 7149 06d1 34000000 		.4byte	.LFE189
 7150 06d5 0100     		.2byte	0x1
 7151 06d7 51       		.byte	0x51
 7152 06d8 00000000 		.4byte	0
 7153 06dc 00000000 		.4byte	0
 7154              	.LLST23:
 7155 06e0 00000000 		.4byte	.LVL57
 7156 06e4 10000000 		.4byte	.LVL59
 7157 06e8 0100     		.2byte	0x1
 7158 06ea 51       		.byte	0x51
 7159 06eb 10000000 		.4byte	.LVL59
 7160 06ef 1A000000 		.4byte	.LVL60
 7161 06f3 0400     		.2byte	0x4
 7162 06f5 F3       		.byte	0xf3
 7163 06f6 01       		.uleb128 0x1
 7164 06f7 51       		.byte	0x51
 7165 06f8 9F       		.byte	0x9f
 7166 06f9 1A000000 		.4byte	.LVL60
 7167 06fd 26000000 		.4byte	.LVL62
 7168 0701 0100     		.2byte	0x1
 7169 0703 51       		.byte	0x51
 7170 0704 26000000 		.4byte	.LVL62
 7171 0708 2C000000 		.4byte	.LVL63
 7172 070c 0300     		.2byte	0x3
 7173 070e 71       		.byte	0x71
 7174 070f 74       		.sleb128 -12
 7175 0710 9F       		.byte	0x9f
 7176 0711 2C000000 		.4byte	.LVL63
 7177 0715 34000000 		.4byte	.LFE198
 7178 0719 0400     		.2byte	0x4
 7179 071b F3       		.byte	0xf3
 7180 071c 01       		.uleb128 0x1
 7181 071d 51       		.byte	0x51
 7182 071e 9F       		.byte	0x9f
 7183 071f 00000000 		.4byte	0
 7184 0723 00000000 		.4byte	0
 7185              	.LLST24:
 7186 0727 0A000000 		.4byte	.LVL58
 7187 072b 10000000 		.4byte	.LVL59
 7188 072f 0100     		.2byte	0x1
 7189 0731 51       		.byte	0x51
 7190 0732 24000000 		.4byte	.LVL61
 7191 0736 26000000 		.4byte	.LVL62
 7192 073a 0100     		.2byte	0x1
 7193 073c 51       		.byte	0x51
 7194 073d 26000000 		.4byte	.LVL62
 7195 0741 2C000000 		.4byte	.LVL63
 7196 0745 0300     		.2byte	0x3
ARM GAS  /tmp/ccQNhOlE.s 			page 187


 7197 0747 71       		.byte	0x71
 7198 0748 74       		.sleb128 -12
 7199 0749 9F       		.byte	0x9f
 7200 074a 2C000000 		.4byte	.LVL63
 7201 074e 34000000 		.4byte	.LFE198
 7202 0752 0400     		.2byte	0x4
 7203 0754 F3       		.byte	0xf3
 7204 0755 01       		.uleb128 0x1
 7205 0756 51       		.byte	0x51
 7206 0757 9F       		.byte	0x9f
 7207 0758 00000000 		.4byte	0
 7208 075c 00000000 		.4byte	0
 7209              	.LLST25:
 7210 0760 0A000000 		.4byte	.LVL58
 7211 0764 10000000 		.4byte	.LVL59
 7212 0768 0100     		.2byte	0x1
 7213 076a 50       		.byte	0x50
 7214 076b 24000000 		.4byte	.LVL61
 7215 076f 34000000 		.4byte	.LFE198
 7216 0773 0100     		.2byte	0x1
 7217 0775 50       		.byte	0x50
 7218 0776 00000000 		.4byte	0
 7219 077a 00000000 		.4byte	0
 7220              		.section	.debug_aranges,"",%progbits
 7221 0000 B4000000 		.4byte	0xb4
 7222 0004 0200     		.2byte	0x2
 7223 0006 00000000 		.4byte	.Ldebug_info0
 7224 000a 04       		.byte	0x4
 7225 000b 00       		.byte	0
 7226 000c 0000     		.2byte	0
 7227 000e 0000     		.2byte	0
 7228 0010 00000000 		.4byte	.LFB201
 7229 0014 6C000000 		.4byte	.LFE201-.LFB201
 7230 0018 00000000 		.4byte	.LFB189
 7231 001c 34000000 		.4byte	.LFE189-.LFB189
 7232 0020 00000000 		.4byte	.LFB190
 7233 0024 16000000 		.4byte	.LFE190-.LFB190
 7234 0028 00000000 		.4byte	.LFB191
 7235 002c 34000000 		.4byte	.LFE191-.LFB191
 7236 0030 00000000 		.4byte	.LFB192
 7237 0034 0A000000 		.4byte	.LFE192-.LFB192
 7238 0038 00000000 		.4byte	.LFB193
 7239 003c 1A000000 		.4byte	.LFE193-.LFB193
 7240 0040 00000000 		.4byte	.LFB194
 7241 0044 CC000000 		.4byte	.LFE194-.LFB194
 7242 0048 00000000 		.4byte	.LFB195
 7243 004c 34000000 		.4byte	.LFE195-.LFB195
 7244 0050 00000000 		.4byte	.LFB196
 7245 0054 28000000 		.4byte	.LFE196-.LFB196
 7246 0058 00000000 		.4byte	.LFB198
 7247 005c 34000000 		.4byte	.LFE198-.LFB198
 7248 0060 00000000 		.4byte	.LFB197
 7249 0064 58000000 		.4byte	.LFE197-.LFB197
 7250 0068 00000000 		.4byte	.LFB199
 7251 006c 34000000 		.4byte	.LFE199-.LFB199
 7252 0070 00000000 		.4byte	.LFB202
 7253 0074 0C000000 		.4byte	.LFE202-.LFB202
ARM GAS  /tmp/ccQNhOlE.s 			page 188


 7254 0078 00000000 		.4byte	.LFB203
 7255 007c 0C000000 		.4byte	.LFE203-.LFB203
 7256 0080 00000000 		.4byte	.LFB204
 7257 0084 14000000 		.4byte	.LFE204-.LFB204
 7258 0088 00000000 		.4byte	.LFB205
 7259 008c 14000000 		.4byte	.LFE205-.LFB205
 7260 0090 00000000 		.4byte	.LFB206
 7261 0094 76000000 		.4byte	.LFE206-.LFB206
 7262 0098 00000000 		.4byte	.LFB207
 7263 009c 2A000000 		.4byte	.LFE207-.LFB207
 7264 00a0 00000000 		.4byte	.LFB208
 7265 00a4 1A000000 		.4byte	.LFE208-.LFB208
 7266 00a8 00000000 		.4byte	.LFB209
 7267 00ac 40000000 		.4byte	.LFE209-.LFB209
 7268 00b0 00000000 		.4byte	0
 7269 00b4 00000000 		.4byte	0
 7270              		.section	.debug_ranges,"",%progbits
 7271              	.Ldebug_ranges0:
 7272 0000 04000000 		.4byte	.LBB54
 7273 0004 06000000 		.4byte	.LBE54
 7274 0008 0C000000 		.4byte	.LBB61
 7275 000c 0E000000 		.4byte	.LBE61
 7276 0010 16000000 		.4byte	.LBB64
 7277 0014 1A000000 		.4byte	.LBE64
 7278 0018 1C000000 		.4byte	.LBB65
 7279 001c 1E000000 		.4byte	.LBE65
 7280 0020 00000000 		.4byte	0
 7281 0024 00000000 		.4byte	0
 7282 0028 10000000 		.4byte	.LBB76
 7283 002c 18000000 		.4byte	.LBE76
 7284 0030 1A000000 		.4byte	.LBB81
 7285 0034 6E000000 		.4byte	.LBE81
 7286 0038 70000000 		.4byte	.LBB82
 7287 003c 74000000 		.4byte	.LBE82
 7288 0040 76000000 		.4byte	.LBB83
 7289 0044 8C000000 		.4byte	.LBE83
 7290 0048 00000000 		.4byte	0
 7291 004c 00000000 		.4byte	0
 7292 0050 0A000000 		.4byte	.LBB86
 7293 0054 1A000000 		.4byte	.LBE86
 7294 0058 24000000 		.4byte	.LBB89
 7295 005c 34000000 		.4byte	.LBE89
 7296 0060 00000000 		.4byte	0
 7297 0064 00000000 		.4byte	0
 7298 0068 08000000 		.4byte	.LBB92
 7299 006c 0A000000 		.4byte	.LBE92
 7300 0070 12000000 		.4byte	.LBB99
 7301 0074 14000000 		.4byte	.LBE99
 7302 0078 1C000000 		.4byte	.LBB101
 7303 007c 20000000 		.4byte	.LBE101
 7304 0080 00000000 		.4byte	0
 7305 0084 00000000 		.4byte	0
 7306 0088 0A000000 		.4byte	.LBB96
 7307 008c 10000000 		.4byte	.LBE96
 7308 0090 18000000 		.4byte	.LBB100
 7309 0094 1C000000 		.4byte	.LBE100
 7310 0098 00000000 		.4byte	0
ARM GAS  /tmp/ccQNhOlE.s 			page 189


 7311 009c 00000000 		.4byte	0
 7312 00a0 28000000 		.4byte	.LBB104
 7313 00a4 2A000000 		.4byte	.LBE104
 7314 00a8 36000000 		.4byte	.LBB111
 7315 00ac 38000000 		.4byte	.LBE111
 7316 00b0 40000000 		.4byte	.LBB113
 7317 00b4 44000000 		.4byte	.LBE113
 7318 00b8 00000000 		.4byte	0
 7319 00bc 00000000 		.4byte	0
 7320 00c0 2A000000 		.4byte	.LBB108
 7321 00c4 30000000 		.4byte	.LBE108
 7322 00c8 3C000000 		.4byte	.LBB112
 7323 00cc 40000000 		.4byte	.LBE112
 7324 00d0 00000000 		.4byte	0
 7325 00d4 00000000 		.4byte	0
 7326 00d8 00000000 		.4byte	.LFB201
 7327 00dc 6C000000 		.4byte	.LFE201
 7328 00e0 00000000 		.4byte	.LFB189
 7329 00e4 34000000 		.4byte	.LFE189
 7330 00e8 00000000 		.4byte	.LFB190
 7331 00ec 16000000 		.4byte	.LFE190
 7332 00f0 00000000 		.4byte	.LFB191
 7333 00f4 34000000 		.4byte	.LFE191
 7334 00f8 00000000 		.4byte	.LFB192
 7335 00fc 0A000000 		.4byte	.LFE192
 7336 0100 00000000 		.4byte	.LFB193
 7337 0104 1A000000 		.4byte	.LFE193
 7338 0108 00000000 		.4byte	.LFB194
 7339 010c CC000000 		.4byte	.LFE194
 7340 0110 00000000 		.4byte	.LFB195
 7341 0114 34000000 		.4byte	.LFE195
 7342 0118 00000000 		.4byte	.LFB196
 7343 011c 28000000 		.4byte	.LFE196
 7344 0120 00000000 		.4byte	.LFB198
 7345 0124 34000000 		.4byte	.LFE198
 7346 0128 00000000 		.4byte	.LFB197
 7347 012c 58000000 		.4byte	.LFE197
 7348 0130 00000000 		.4byte	.LFB199
 7349 0134 34000000 		.4byte	.LFE199
 7350 0138 00000000 		.4byte	.LFB202
 7351 013c 0C000000 		.4byte	.LFE202
 7352 0140 00000000 		.4byte	.LFB203
 7353 0144 0C000000 		.4byte	.LFE203
 7354 0148 00000000 		.4byte	.LFB204
 7355 014c 14000000 		.4byte	.LFE204
 7356 0150 00000000 		.4byte	.LFB205
 7357 0154 14000000 		.4byte	.LFE205
 7358 0158 00000000 		.4byte	.LFB206
 7359 015c 76000000 		.4byte	.LFE206
 7360 0160 00000000 		.4byte	.LFB207
 7361 0164 2A000000 		.4byte	.LFE207
 7362 0168 00000000 		.4byte	.LFB208
 7363 016c 1A000000 		.4byte	.LFE208
 7364 0170 00000000 		.4byte	.LFB209
 7365 0174 40000000 		.4byte	.LFE209
 7366 0178 00000000 		.4byte	0
 7367 017c 00000000 		.4byte	0
ARM GAS  /tmp/ccQNhOlE.s 			page 190


 7368              		.section	.debug_line,"",%progbits
 7369              	.Ldebug_line0:
 7370 0000 1C080000 		.section	.debug_str,"MS",%progbits,1
 7370      02005A04 
 7370      00000201 
 7370      FB0E0D00 
 7370      01010101 
 7371              	.LASF364:
 7372 0000 41464543 		.ascii	"AFEC_STARTUP_TIME_11\000"
 7372      5F535441 
 7372      52545550 
 7372      5F54494D 
 7372      455F3131 
 7373              	.LASF73:
 7374 0015 5443375F 		.ascii	"TC7_IRQn\000"
 7374      4952516E 
 7374      00
 7375              	.LASF474:
 7376 001e 6F73635F 		.ascii	"osc_get_rate\000"
 7376      6765745F 
 7376      72617465 
 7376      00
 7377              	.LASF34:
 7378 002b 4546435F 		.ascii	"EFC_IRQn\000"
 7378      4952516E 
 7378      00
 7379              	.LASF56:
 7380 0034 41464543 		.ascii	"AFEC0_IRQn\000"
 7380      305F4952 
 7380      516E00
 7381              	.LASF413:
 7382 003f 5F414645 		.ascii	"_AFEC_NUM_OF_INTERRUPT_SOURCE\000"
 7382      435F4E55 
 7382      4D5F4F46 
 7382      5F494E54 
 7382      45525255 
 7383              	.LASF324:
 7384 005d 41464543 		.ascii	"AFEC_15_BITS\000"
 7384      5F31355F 
 7384      42495453 
 7384      00
 7385              	.LASF72:
 7386 006a 5443365F 		.ascii	"TC6_IRQn\000"
 7386      4952516E 
 7386      00
 7387              	.LASF385:
 7388 0073 616E6163 		.ascii	"anach\000"
 7388      6800
 7389              	.LASF3:
 7390 0079 5F5F7569 		.ascii	"__uint8_t\000"
 7390      6E74385F 
 7390      7400
 7391              	.LASF68:
 7392 0083 51535049 		.ascii	"QSPI_IRQn\000"
 7392      5F495251 
 7392      6E00
 7393              	.LASF131:
ARM GAS  /tmp/ccQNhOlE.s 			page 191


 7394 008d 4443434D 		.ascii	"DCCMVAC\000"
 7394      56414300 
 7395              	.LASF25:
 7396 0095 44656275 		.ascii	"DebugMonitor_IRQn\000"
 7396      674D6F6E 
 7396      69746F72 
 7396      5F495251 
 7396      6E00
 7397              	.LASF293:
 7398 00a7 5F426F6F 		.ascii	"_Bool\000"
 7398      6C00
 7399              	.LASF344:
 7400 00ad 61666563 		.ascii	"afec_sample_hold_mode\000"
 7400      5F73616D 
 7400      706C655F 
 7400      686F6C64 
 7400      5F6D6F64 
 7401              	.LASF130:
 7402 00c3 4443434D 		.ascii	"DCCMVAU\000"
 7402      56415500 
 7403              	.LASF234:
 7404 00cb 5F6D6273 		.ascii	"_mbstate\000"
 7404      74617465 
 7404      00
 7405              	.LASF213:
 7406 00d4 5F617465 		.ascii	"_atexit\000"
 7406      78697400 
 7407              	.LASF347:
 7408 00dc 61666563 		.ascii	"afec_gainvalue\000"
 7408      5F676169 
 7408      6E76616C 
 7408      756500
 7409              	.LASF203:
 7410 00eb 5F5F746D 		.ascii	"__tm_mon\000"
 7410      5F6D6F6E 
 7410      00
 7411              	.LASF211:
 7412 00f4 5F666E74 		.ascii	"_fntypes\000"
 7412      79706573 
 7412      00
 7413              	.LASF114:
 7414 00fd 49445F44 		.ascii	"ID_DFR\000"
 7414      465200
 7415              	.LASF241:
 7416 0104 5F696E63 		.ascii	"_inc\000"
 7416      00
 7417              	.LASF214:
 7418 0109 5F696E64 		.ascii	"_ind\000"
 7418      00
 7419              	.LASF85:
 7420 010e 50455249 		.ascii	"PERIPH_COUNT_IRQn\000"
 7420      50485F43 
 7420      4F554E54 
 7420      5F495251 
 7420      6E00
 7421              	.LASF166:
 7422 0120 41464543 		.ascii	"AFEC_CDR\000"
ARM GAS  /tmp/ccQNhOlE.s 			page 192


 7422      5F434452 
 7422      00
 7423              	.LASF390:
 7424 0129 6761696E 		.ascii	"gain\000"
 7424      00
 7425              	.LASF16:
 7426 012e 75696E74 		.ascii	"uint16_t\000"
 7426      31365F74 
 7426      00
 7427              	.LASF401:
 7428 0137 41464543 		.ascii	"AFEC_INTERRUPT_EOC_4\000"
 7428      5F494E54 
 7428      45525255 
 7428      50545F45 
 7428      4F435F34 
 7429              	.LASF90:
 7430 014c 52534552 		.ascii	"RSERVED1\000"
 7430      56454431 
 7430      00
 7431              	.LASF403:
 7432 0155 41464543 		.ascii	"AFEC_INTERRUPT_EOC_6\000"
 7432      5F494E54 
 7432      45525255 
 7432      50545F45 
 7432      4F435F36 
 7433              	.LASF487:
 7434 016a 474E5520 		.ascii	"GNU C99 6.3.1 20170620 -mcpu=cortex-m7 -mthumb -mfp"
 7434      43393920 
 7434      362E332E 
 7434      31203230 
 7434      31373036 
 7435 019d 753D6670 		.ascii	"u=fpv5-d16 -mfloat-abi=hard -g -O2 -std=gnu99 -ffun"
 7435      76352D64 
 7435      3136202D 
 7435      6D666C6F 
 7435      61742D61 
 7436 01d0 6374696F 		.ascii	"ction-sections -fdata-sections -fsingle-precision-c"
 7436      6E2D7365 
 7436      6374696F 
 7436      6E73202D 
 7436      66646174 
 7437 0203 6F6E7374 		.ascii	"onstant\000"
 7437      616E7400 
 7438              	.LASF375:
 7439 020b 41464543 		.ascii	"AFEC_TEMP_CMP_MODE_0\000"
 7439      5F54454D 
 7439      505F434D 
 7439      505F4D4F 
 7439      44455F30 
 7440              	.LASF220:
 7441 0220 5F666C61 		.ascii	"_flags\000"
 7441      677300
 7442              	.LASF330:
 7443 0227 61666563 		.ascii	"afec_channel_num\000"
 7443      5F636861 
 7443      6E6E656C 
 7443      5F6E756D 
ARM GAS  /tmp/ccQNhOlE.s 			page 193


 7443      00
 7444              	.LASF117:
 7445 0238 49445F49 		.ascii	"ID_ISAR\000"
 7445      53415200 
 7446              	.LASF61:
 7447 0240 55534248 		.ascii	"USBHS_IRQn\000"
 7447      535F4952 
 7447      516E00
 7448              	.LASF251:
 7449 024b 5F637674 		.ascii	"_cvtlen\000"
 7449      6C656E00 
 7450              	.LASF255:
 7451 0253 5F736967 		.ascii	"_sig_func\000"
 7451      5F66756E 
 7451      6300
 7452              	.LASF434:
 7453 025d 61666563 		.ascii	"afec_ch\000"
 7453      5F636800 
 7454              	.LASF164:
 7455 0265 41464543 		.ascii	"AFEC_DIFFR\000"
 7455      5F444946 
 7455      465200
 7456              	.LASF443:
 7457 0270 75635F6E 		.ascii	"uc_num\000"
 7457      756D00
 7458              	.LASF233:
 7459 0277 5F6C6F63 		.ascii	"_lock\000"
 7459      6B00
 7460              	.LASF229:
 7461 027d 5F6E6275 		.ascii	"_nbuf\000"
 7461      6600
 7462              	.LASF384:
 7463 0283 7472616E 		.ascii	"transfer\000"
 7463      73666572 
 7463      00
 7464              	.LASF288:
 7465 028c 5F756E75 		.ascii	"_unused\000"
 7465      73656400 
 7466              	.LASF81:
 7467 0294 4953495F 		.ascii	"ISI_IRQn\000"
 7467      4952516E 
 7467      00
 7468              	.LASF460:
 7469 029d 61666563 		.ascii	"afec_get_correction_value\000"
 7469      5F676574 
 7469      5F636F72 
 7469      72656374 
 7469      696F6E5F 
 7470              	.LASF302:
 7471 02b7 53544154 		.ascii	"STATUS_ERR_DENIED\000"
 7471      55535F45 
 7471      52525F44 
 7471      454E4945 
 7471      4400
 7472              	.LASF89:
 7473 02c9 49434552 		.ascii	"ICER\000"
 7473      00
ARM GAS  /tmp/ccQNhOlE.s 			page 194


 7474              	.LASF374:
 7475 02ce 61666563 		.ascii	"afec_temp_cmp_mode\000"
 7475      5F74656D 
 7475      705F636D 
 7475      705F6D6F 
 7475      646500
 7476              	.LASF473:
 7477 02e1 73797363 		.ascii	"sysclk_get_main_hz\000"
 7477      6C6B5F67 
 7477      65745F6D 
 7477      61696E5F 
 7477      687A00
 7478              	.LASF162:
 7479 02f4 41464543 		.ascii	"AFEC_CGR\000"
 7479      5F434752 
 7479      00
 7480              	.LASF244:
 7481 02fd 5F637572 		.ascii	"_current_locale\000"
 7481      72656E74 
 7481      5F6C6F63 
 7481      616C6500 
 7482              	.LASF17:
 7483 030d 696E7433 		.ascii	"int32_t\000"
 7483      325F7400 
 7484              	.LASF266:
 7485 0315 5F616464 		.ascii	"_add\000"
 7485      00
 7486              	.LASF482:
 7487 031a 7072696F 		.ascii	"priority\000"
 7487      72697479 
 7487      00
 7488              	.LASF108:
 7489 0323 48465352 		.ascii	"HFSR\000"
 7489      00
 7490              	.LASF134:
 7491 0328 44434349 		.ascii	"DCCISW\000"
 7491      535700
 7492              	.LASF452:
 7493 032f 61666563 		.ascii	"afec_disable_interrupt\000"
 7493      5F646973 
 7493      61626C65 
 7493      5F696E74 
 7493      65727275 
 7494              	.LASF451:
 7495 0346 736F7572 		.ascii	"source\000"
 7495      636500
 7496              	.LASF222:
 7497 034d 5F6C6266 		.ascii	"_lbfsize\000"
 7497      73697A65 
 7497      00
 7498              	.LASF24:
 7499 0356 53564361 		.ascii	"SVCall_IRQn\000"
 7499      6C6C5F49 
 7499      52516E00 
 7500              	.LASF181:
 7501 0362 41666563 		.ascii	"Afec\000"
 7501      00
ARM GAS  /tmp/ccQNhOlE.s 			page 195


 7502              	.LASF232:
 7503 0367 5F646174 		.ascii	"_data\000"
 7503      6100
 7504              	.LASF416:
 7505 036d 736C6565 		.ascii	"sleepmgr_mode\000"
 7505      706D6772 
 7505      5F6D6F64 
 7505      6500
 7506              	.LASF431:
 7507 037b 61666563 		.ascii	"afec_callback_pointer\000"
 7507      5F63616C 
 7507      6C626163 
 7507      6B5F706F 
 7507      696E7465 
 7508              	.LASF30:
 7509 0391 5254435F 		.ascii	"RTC_IRQn\000"
 7509      4952516E 
 7509      00
 7510              	.LASF294:
 7511 039a 6370755F 		.ascii	"cpu_irq_critical_section_counter\000"
 7511      6972715F 
 7511      63726974 
 7511      6963616C 
 7511      5F736563 
 7512              	.LASF447:
 7513 03bb 41464543 		.ascii	"AFEC1_Handler\000"
 7513      315F4861 
 7513      6E646C65 
 7513      7200
 7514              	.LASF236:
 7515 03c9 5F726565 		.ascii	"_reent\000"
 7515      6E7400
 7516              	.LASF469:
 7517 03d0 61666563 		.ascii	"afec_set_config\000"
 7517      5F736574 
 7517      5F636F6E 
 7517      66696700 
 7518              	.LASF257:
 7519 03e0 5F5F7366 		.ascii	"__sf\000"
 7519      00
 7520              	.LASF470:
 7521 03e5 61666563 		.ascii	"afec_find_pid\000"
 7521      5F66696E 
 7521      645F7069 
 7521      6400
 7522              	.LASF103:
 7523 03f3 56544F52 		.ascii	"VTOR\000"
 7523      00
 7524              	.LASF217:
 7525 03f8 5F626173 		.ascii	"_base\000"
 7525      6500
 7526              	.LASF179:
 7527 03fe 41464543 		.ascii	"AFEC_WPMR\000"
 7527      5F57504D 
 7527      5200
 7528              	.LASF391:
 7529 0408 61666563 		.ascii	"afec_temp_sensor_config\000"
ARM GAS  /tmp/ccQNhOlE.s 			page 196


 7529      5F74656D 
 7529      705F7365 
 7529      6E736F72 
 7529      5F636F6E 
 7530              	.LASF428:
 7531 0420 504C4C5F 		.ascii	"PLL_SRC_MAINCK_XTAL\000"
 7531      5352435F 
 7531      4D41494E 
 7531      434B5F58 
 7531      54414C00 
 7532              	.LASF275:
 7533 0434 5F6D6274 		.ascii	"_mbtowc_state\000"
 7533      6F77635F 
 7533      73746174 
 7533      6500
 7534              	.LASF79:
 7535 0442 54524E47 		.ascii	"TRNG_IRQn\000"
 7535      5F495251 
 7535      6E00
 7536              	.LASF464:
 7537 044c 61666563 		.ascii	"afec_ch_get_config_defaults\000"
 7537      5F63685F 
 7537      6765745F 
 7537      636F6E66 
 7537      69675F64 
 7538              	.LASF489:
 7539 0468 2F686F6D 		.ascii	"/home/torbjorn/eclipse-workspace/CoreNG/SAME70_RTOS"
 7539      652F746F 
 7539      72626A6F 
 7539      726E2F65 
 7539      636C6970 
 7540 049b 00       		.ascii	"\000"
 7541              	.LASF198:
 7542 049c 5F5F746D 		.ascii	"__tm\000"
 7542      00
 7543              	.LASF388:
 7544 04a1 61666563 		.ascii	"afec_ch_config\000"
 7544      5F63685F 
 7544      636F6E66 
 7544      696700
 7545              	.LASF206:
 7546 04b0 5F5F746D 		.ascii	"__tm_yday\000"
 7546      5F796461 
 7546      7900
 7547              	.LASF109:
 7548 04ba 44465352 		.ascii	"DFSR\000"
 7548      00
 7549              	.LASF52:
 7550 04bf 5443325F 		.ascii	"TC2_IRQn\000"
 7550      4952516E 
 7550      00
 7551              	.LASF142:
 7552 04c8 41424653 		.ascii	"ABFSR\000"
 7552      5200
 7553              	.LASF383:
 7554 04ce 74726163 		.ascii	"tracktim\000"
 7554      6B74696D 
ARM GAS  /tmp/ccQNhOlE.s 			page 197


 7554      00
 7555              	.LASF4:
 7556 04d7 5F5F696E 		.ascii	"__int16_t\000"
 7556      7431365F 
 7556      7400
 7557              	.LASF6:
 7558 04e1 5F5F7569 		.ascii	"__uint16_t\000"
 7558      6E743136 
 7558      5F7400
 7559              	.LASF267:
 7560 04ec 5F756E75 		.ascii	"_unused_rand\000"
 7560      7365645F 
 7560      72616E64 
 7560      00
 7561              	.LASF113:
 7562 04f9 49445F50 		.ascii	"ID_PFR\000"
 7562      465200
 7563              	.LASF51:
 7564 0500 5443315F 		.ascii	"TC1_IRQn\000"
 7564      4952516E 
 7564      00
 7565              	.LASF346:
 7566 0509 41464543 		.ascii	"AFEC_SAMPLE_HOLD_MODE_1\000"
 7566      5F53414D 
 7566      504C455F 
 7566      484F4C44 
 7566      5F4D4F44 
 7567              	.LASF248:
 7568 0521 5F726573 		.ascii	"_result_k\000"
 7568      756C745F 
 7568      6B00
 7569              	.LASF393:
 7570 052b 6D6F6465 		.ascii	"mode\000"
 7570      00
 7571              	.LASF240:
 7572 0530 5F737464 		.ascii	"_stderr\000"
 7572      65727200 
 7573              	.LASF247:
 7574 0538 5F726573 		.ascii	"_result\000"
 7574      756C7400 
 7575              	.LASF210:
 7576 0540 5F64736F 		.ascii	"_dso_handle\000"
 7576      5F68616E 
 7576      646C6500 
 7577              	.LASF50:
 7578 054c 5443305F 		.ascii	"TC0_IRQn\000"
 7578      4952516E 
 7578      00
 7579              	.LASF205:
 7580 0555 5F5F746D 		.ascii	"__tm_wday\000"
 7580      5F776461 
 7580      7900
 7581              	.LASF207:
 7582 055f 5F5F746D 		.ascii	"__tm_isdst\000"
 7582      5F697364 
 7582      737400
 7583              	.LASF138:
ARM GAS  /tmp/ccQNhOlE.s 			page 198


 7584 056a 41484250 		.ascii	"AHBPCR\000"
 7584      435200
 7585              	.LASF2:
 7586 0571 756E7369 		.ascii	"unsigned char\000"
 7586      676E6564 
 7586      20636861 
 7586      7200
 7587              	.LASF239:
 7588 057f 5F737464 		.ascii	"_stdout\000"
 7588      6F757400 
 7589              	.LASF282:
 7590 0587 5F6D6273 		.ascii	"_mbsrtowcs_state\000"
 7590      72746F77 
 7590      63735F73 
 7590      74617465 
 7590      00
 7591              	.LASF196:
 7592 0598 5F776473 		.ascii	"_wds\000"
 7592      00
 7593              	.LASF296:
 7594 059d 666C6F61 		.ascii	"float\000"
 7594      7400
 7595              	.LASF491:
 7596 05a3 61666563 		.ascii	"afec_enable_interrupt\000"
 7596      5F656E61 
 7596      626C655F 
 7596      696E7465 
 7596      72727570 
 7597              	.LASF478:
 7598 05b9 61666563 		.ascii	"afec_get_interrupt_mask\000"
 7598      5F676574 
 7598      5F696E74 
 7598      65727275 
 7598      70745F6D 
 7599              	.LASF218:
 7600 05d1 5F73697A 		.ascii	"_size\000"
 7600      6500
 7601              	.LASF326:
 7602 05d7 61666563 		.ascii	"afec_power_mode\000"
 7602      5F706F77 
 7602      65725F6D 
 7602      6F646500 
 7603              	.LASF20:
 7604 05e7 48617264 		.ascii	"HardFault_IRQn\000"
 7604      4661756C 
 7604      745F4952 
 7604      516E00
 7605              	.LASF167:
 7606 05f6 41464543 		.ascii	"AFEC_COCR\000"
 7606      5F434F43 
 7606      5200
 7607              	.LASF436:
 7608 0600 636F6E76 		.ascii	"converted_data\000"
 7608      65727465 
 7608      645F6461 
 7608      746100
 7609              	.LASF225:
ARM GAS  /tmp/ccQNhOlE.s 			page 199


 7610 060f 5F777269 		.ascii	"_write\000"
 7610      746500
 7611              	.LASF180:
 7612 0616 41464543 		.ascii	"AFEC_WPSR\000"
 7612      5F575053 
 7612      5200
 7613              	.LASF93:
 7614 0620 49435052 		.ascii	"ICPR\000"
 7614      00
 7615              	.LASF46:
 7616 0625 54574948 		.ascii	"TWIHS0_IRQn\000"
 7616      53305F49 
 7616      52516E00 
 7617              	.LASF320:
 7618 0631 61666563 		.ascii	"afec_resolution\000"
 7618      5F726573 
 7618      6F6C7574 
 7618      696F6E00 
 7619              	.LASF40:
 7620 0641 55534152 		.ascii	"USART0_IRQn\000"
 7620      54305F49 
 7620      52516E00 
 7621              	.LASF204:
 7622 064d 5F5F746D 		.ascii	"__tm_year\000"
 7622      5F796561 
 7622      7200
 7623              	.LASF463:
 7624 0657 61666563 		.ascii	"afec_temp_sensor_get_config_defaults\000"
 7624      5F74656D 
 7624      705F7365 
 7624      6E736F72 
 7624      5F676574 
 7625              	.LASF486:
 7626 067c 706D635F 		.ascii	"pmc_enable_periph_clk\000"
 7626      656E6162 
 7626      6C655F70 
 7626      65726970 
 7626      685F636C 
 7627              	.LASF177:
 7628 0692 41464543 		.ascii	"AFEC_CECR\000"
 7628      5F434543 
 7628      5200
 7629              	.LASF265:
 7630 069c 5F6D756C 		.ascii	"_mult\000"
 7630      7400
 7631              	.LASF307:
 7632 06a2 4552525F 		.ascii	"ERR_BAD_DATA\000"
 7632      4241445F 
 7632      44415441 
 7632      00
 7633              	.LASF280:
 7634 06af 5F6D6272 		.ascii	"_mbrlen_state\000"
 7634      6C656E5F 
 7634      73746174 
 7634      6500
 7635              	.LASF168:
 7636 06bd 41464543 		.ascii	"AFEC_TEMPMR\000"
ARM GAS  /tmp/ccQNhOlE.s 			page 200


 7636      5F54454D 
 7636      504D5200 
 7637              	.LASF238:
 7638 06c9 5F737464 		.ascii	"_stdin\000"
 7638      696E00
 7639              	.LASF102:
 7640 06d0 49435352 		.ascii	"ICSR\000"
 7640      00
 7641              	.LASF287:
 7642 06d5 5F6E6D61 		.ascii	"_nmalloc\000"
 7642      6C6C6F63 
 7642      00
 7643              	.LASF67:
 7644 06de 53504931 		.ascii	"SPI1_IRQn\000"
 7644      5F495251 
 7644      6E00
 7645              	.LASF118:
 7646 06e8 434C4944 		.ascii	"CLIDR\000"
 7646      5200
 7647              	.LASF71:
 7648 06ee 55415254 		.ascii	"UART4_IRQn\000"
 7648      345F4952 
 7648      516E00
 7649              	.LASF476:
 7650 06f9 736C6565 		.ascii	"sleepmgr_unlock_mode\000"
 7650      706D6772 
 7650      5F756E6C 
 7650      6F636B5F 
 7650      6D6F6465 
 7651              	.LASF132:
 7652 070e 44434353 		.ascii	"DCCSW\000"
 7652      5700
 7653              	.LASF421:
 7654 0714 534C4545 		.ascii	"SLEEPMGR_WAIT\000"
 7654      504D4752 
 7654      5F574149 
 7654      5400
 7655              	.LASF389:
 7656 0722 64696666 		.ascii	"diff\000"
 7656      00
 7657              	.LASF48:
 7658 0727 53504930 		.ascii	"SPI0_IRQn\000"
 7658      5F495251 
 7658      6E00
 7659              	.LASF465:
 7660 0731 61666563 		.ascii	"afec_get_config_defaults\000"
 7660      5F676574 
 7660      5F636F6E 
 7660      6669675F 
 7660      64656661 
 7661              	.LASF70:
 7662 074a 55415254 		.ascii	"UART3_IRQn\000"
 7662      335F4952 
 7662      516E00
 7663              	.LASF183:
 7664 0755 5F6F6666 		.ascii	"_off_t\000"
 7664      5F7400
ARM GAS  /tmp/ccQNhOlE.s 			page 201


 7665              	.LASF43:
 7666 075c 50494F44 		.ascii	"PIOD_IRQn\000"
 7666      5F495251 
 7666      6E00
 7667              	.LASF457:
 7668 0766 61666563 		.ascii	"afec_set_power_mode\000"
 7668      5F736574 
 7668      5F706F77 
 7668      65725F6D 
 7668      6F646500 
 7669              	.LASF270:
 7670 077a 5F6C6F63 		.ascii	"_localtime_buf\000"
 7670      616C7469 
 7670      6D655F62 
 7670      756600
 7671              	.LASF176:
 7672 0789 41464543 		.ascii	"AFEC_CVR\000"
 7672      5F435652 
 7672      00
 7673              	.LASF188:
 7674 0792 5F5F636F 		.ascii	"__count\000"
 7674      756E7400 
 7675              	.LASF14:
 7676 079a 75696E74 		.ascii	"uint8_t\000"
 7676      385F7400 
 7677              	.LASF69:
 7678 07a2 55415254 		.ascii	"UART2_IRQn\000"
 7678      325F4952 
 7678      516E00
 7679              	.LASF317:
 7680 07ad 4552525F 		.ascii	"ERR_TIMER_NOT_RUNNING\000"
 7680      54494D45 
 7680      525F4E4F 
 7680      545F5255 
 7680      4E4E494E 
 7681              	.LASF39:
 7682 07c3 50494F43 		.ascii	"PIOC_IRQn\000"
 7682      5F495251 
 7682      6E00
 7683              	.LASF271:
 7684 07cd 5F67616D 		.ascii	"_gamma_signgam\000"
 7684      6D615F73 
 7684      69676E67 
 7684      616D00
 7685              	.LASF161:
 7686 07dc 41464543 		.ascii	"AFEC_CWR\000"
 7686      5F435752 
 7686      00
 7687              	.LASF252:
 7688 07e5 5F637674 		.ascii	"_cvtbuf\000"
 7688      62756600 
 7689              	.LASF120:
 7690 07ed 43535345 		.ascii	"CSSELR\000"
 7690      4C5200
 7691              	.LASF430:
 7692 07f4 504C4C5F 		.ascii	"PLL_NR_SOURCES\000"
 7692      4E525F53 
ARM GAS  /tmp/ccQNhOlE.s 			page 202


 7692      4F555243 
 7692      455300
 7693              	.LASF392:
 7694 0803 72637463 		.ascii	"rctc\000"
 7694      00
 7695              	.LASF341:
 7696 0808 41464543 		.ascii	"AFEC_CHANNEL_10\000"
 7696      5F434841 
 7696      4E4E454C 
 7696      5F313000 
 7697              	.LASF38:
 7698 0818 50494F42 		.ascii	"PIOB_IRQn\000"
 7698      5F495251 
 7698      6E00
 7699              	.LASF461:
 7700 0822 61666563 		.ascii	"afec_init\000"
 7700      5F696E69 
 7700      7400
 7701              	.LASF136:
 7702 082c 4954434D 		.ascii	"ITCMCR\000"
 7702      435200
 7703              	.LASF417:
 7704 0833 534C4545 		.ascii	"SLEEPMGR_ACTIVE\000"
 7704      504D4752 
 7704      5F414354 
 7704      49564500 
 7705              	.LASF477:
 7706 0843 736C6565 		.ascii	"sleepmgr_lock_mode\000"
 7706      706D6772 
 7706      5F6C6F63 
 7706      6B5F6D6F 
 7706      646500
 7707              	.LASF187:
 7708 0856 5F5F7763 		.ascii	"__wchb\000"
 7708      686200
 7709              	.LASF281:
 7710 085d 5F6D6272 		.ascii	"_mbrtowc_state\000"
 7710      746F7763 
 7710      5F737461 
 7710      746500
 7711              	.LASF201:
 7712 086c 5F5F746D 		.ascii	"__tm_hour\000"
 7712      5F686F75 
 7712      7200
 7713              	.LASF100:
 7714 0876 4E564943 		.ascii	"NVIC_Type\000"
 7714      5F547970 
 7714      6500
 7715              	.LASF185:
 7716 0880 77696E74 		.ascii	"wint_t\000"
 7716      5F7400
 7717              	.LASF253:
 7718 0887 5F6E6577 		.ascii	"_new\000"
 7718      00
 7719              	.LASF148:
 7720 088c 41464543 		.ascii	"AFEC_EMR\000"
 7720      5F454D52 
ARM GAS  /tmp/ccQNhOlE.s 			page 203


 7720      00
 7721              	.LASF261:
 7722 0895 5F6E696F 		.ascii	"_niobs\000"
 7722      627300
 7723              	.LASF63:
 7724 089c 4D43414E 		.ascii	"MCAN1_IRQn\000"
 7724      315F4952 
 7724      516E00
 7725              	.LASF49:
 7726 08a7 5353435F 		.ascii	"SSC_IRQn\000"
 7726      4952516E 
 7726      00
 7727              	.LASF125:
 7728 08b0 49434941 		.ascii	"ICIALLU\000"
 7728      4C4C5500 
 7729              	.LASF237:
 7730 08b8 5F657272 		.ascii	"_errno\000"
 7730      6E6F00
 7731              	.LASF202:
 7732 08bf 5F5F746D 		.ascii	"__tm_mday\000"
 7732      5F6D6461 
 7732      7900
 7733              	.LASF453:
 7734 08c9 696E7465 		.ascii	"interrupt_source\000"
 7734      72727570 
 7734      745F736F 
 7734      75726365 
 7734      00
 7735              	.LASF75:
 7736 08da 5443395F 		.ascii	"TC9_IRQn\000"
 7736      4952516E 
 7736      00
 7737              	.LASF209:
 7738 08e3 5F666E61 		.ascii	"_fnargs\000"
 7738      72677300 
 7739              	.LASF315:
 7740 08eb 4552525F 		.ascii	"ERR_NO_TIMER\000"
 7740      4E4F5F54 
 7740      494D4552 
 7740      00
 7741              	.LASF311:
 7742 08f8 4552525F 		.ascii	"ERR_INVALID_ARG\000"
 7742      494E5641 
 7742      4C49445F 
 7742      41524700 
 7743              	.LASF440:
 7744 0908 6761696E 		.ascii	"gaincorr\000"
 7744      636F7272 
 7744      00
 7745              	.LASF472:
 7746 0911 73797363 		.ascii	"sysclk_get_cpu_hz\000"
 7746      6C6B5F67 
 7746      65745F63 
 7746      70755F68 
 7746      7A00
 7747              	.LASF193:
 7748 0923 5F6E6578 		.ascii	"_next\000"
ARM GAS  /tmp/ccQNhOlE.s 			page 204


 7748      7400
 7749              	.LASF278:
 7750 0929 5F736967 		.ascii	"_signal_buf\000"
 7750      6E616C5F 
 7750      62756600 
 7751              	.LASF223:
 7752 0935 5F636F6F 		.ascii	"_cookie\000"
 7752      6B696500 
 7753              	.LASF306:
 7754 093d 4552525F 		.ascii	"ERR_TIMEOUT\000"
 7754      54494D45 
 7754      4F555400 
 7755              	.LASF106:
 7756 0949 53484353 		.ascii	"SHCSR\000"
 7756      5200
 7757              	.LASF64:
 7758 094f 474D4143 		.ascii	"GMAC_IRQn\000"
 7758      5F495251 
 7758      6E00
 7759              	.LASF471:
 7760 0959 61666563 		.ascii	"afec_find_inst_num\000"
 7760      5F66696E 
 7760      645F696E 
 7760      73745F6E 
 7760      756D00
 7761              	.LASF84:
 7762 096c 52535744 		.ascii	"RSWDT_IRQn\000"
 7762      545F4952 
 7762      516E00
 7763              	.LASF318:
 7764 0977 4552525F 		.ascii	"ERR_ABORTED\000"
 7764      41424F52 
 7764      54454400 
 7765              	.LASF433:
 7766 0983 6368616E 		.ascii	"channel\000"
 7766      6E656C00 
 7767              	.LASF322:
 7768 098b 41464543 		.ascii	"AFEC_13_BITS\000"
 7768      5F31335F 
 7768      42495453 
 7768      00
 7769              	.LASF379:
 7770 0998 61666563 		.ascii	"afec_config\000"
 7770      5F636F6E 
 7770      66696700 
 7771              	.LASF438:
 7772 09a4 61666563 		.ascii	"afec_configure_auto_error_correction\000"
 7772      5F636F6E 
 7772      66696775 
 7772      72655F61 
 7772      75746F5F 
 7773              	.LASF479:
 7774 09c9 61666563 		.ascii	"afec_get_interrupt_status\000"
 7774      5F676574 
 7774      5F696E74 
 7774      65727275 
 7774      70745F73 
ARM GAS  /tmp/ccQNhOlE.s 			page 205


 7775              	.LASF76:
 7776 09e3 54433130 		.ascii	"TC10_IRQn\000"
 7776      5F495251 
 7776      6E00
 7777              	.LASF154:
 7778 09ed 41464543 		.ascii	"AFEC_LCDR\000"
 7778      5F4C4344 
 7778      5200
 7779              	.LASF199:
 7780 09f7 5F5F746D 		.ascii	"__tm_sec\000"
 7780      5F736563 
 7780      00
 7781              	.LASF208:
 7782 0a00 5F6F6E5F 		.ascii	"_on_exit_args\000"
 7782      65786974 
 7782      5F617267 
 7782      7300
 7783              	.LASF23:
 7784 0a0e 55736167 		.ascii	"UsageFault_IRQn\000"
 7784      65466175 
 7784      6C745F49 
 7784      52516E00 
 7785              	.LASF173:
 7786 0a1e 41464543 		.ascii	"AFEC_SHMR\000"
 7786      5F53484D 
 7786      5200
 7787              	.LASF454:
 7788 0a28 61666563 		.ascii	"afec_set_callback\000"
 7788      5F736574 
 7788      5F63616C 
 7788      6C626163 
 7788      6B00
 7789              	.LASF444:
 7790 0a3a 75635F63 		.ascii	"uc_counter\000"
 7790      6F756E74 
 7790      657200
 7791              	.LASF104:
 7792 0a45 41495243 		.ascii	"AIRCR\000"
 7792      5200
 7793              	.LASF283:
 7794 0a4b 5F776372 		.ascii	"_wcrtomb_state\000"
 7794      746F6D62 
 7794      5F737461 
 7794      746500
 7795              	.LASF312:
 7796 0a5a 4552525F 		.ascii	"ERR_BAD_ADDRESS\000"
 7796      4241445F 
 7796      41444452 
 7796      45535300 
 7797              	.LASF86:
 7798 0a6a 4952516E 		.ascii	"IRQn_Type\000"
 7798      5F547970 
 7798      6500
 7799              	.LASF146:
 7800 0a74 41464543 		.ascii	"AFEC_CR\000"
 7800      5F435200 
 7801              	.LASF458:
ARM GAS  /tmp/ccQNhOlE.s 			page 206


 7802 0a7c 61666563 		.ascii	"afec_set_comparison_mode\000"
 7802      5F736574 
 7802      5F636F6D 
 7802      70617269 
 7802      736F6E5F 
 7803              	.LASF133:
 7804 0a95 44434349 		.ascii	"DCCIMVAC\000"
 7804      4D564143 
 7804      00
 7805              	.LASF192:
 7806 0a9e 5F5F554C 		.ascii	"__ULong\000"
 7806      6F6E6700 
 7807              	.LASF484:
 7808 0aa6 4E564943 		.ascii	"NVIC_EnableIRQ\000"
 7808      5F456E61 
 7808      626C6549 
 7808      525100
 7809              	.LASF490:
 7810 0ab5 61666563 		.ascii	"afec_process_callback\000"
 7810      5F70726F 
 7810      63657373 
 7810      5F63616C 
 7810      6C626163 
 7811              	.LASF387:
 7812 0acb 69626374 		.ascii	"ibctl\000"
 7812      6C00
 7813              	.LASF268:
 7814 0ad1 5F737472 		.ascii	"_strtok_last\000"
 7814      746F6B5F 
 7814      6C617374 
 7814      00
 7815              	.LASF292:
 7816 0ade 675F696E 		.ascii	"g_interrupt_enabled\000"
 7816      74657272 
 7816      7570745F 
 7816      656E6162 
 7816      6C656400 
 7817              	.LASF140:
 7818 0af2 41484253 		.ascii	"AHBSCR\000"
 7818      435200
 7819              	.LASF99:
 7820 0af9 73697A65 		.ascii	"sizetype\000"
 7820      74797065 
 7820      00
 7821              	.LASF264:
 7822 0b02 5F736565 		.ascii	"_seed\000"
 7822      6400
 7823              	.LASF175:
 7824 0b08 41464543 		.ascii	"AFEC_COSR\000"
 7824      5F434F53 
 7824      5200
 7825              	.LASF21:
 7826 0b12 4D656D6F 		.ascii	"MemoryManagement_IRQn\000"
 7826      72794D61 
 7826      6E616765 
 7826      6D656E74 
 7826      5F495251 
ARM GAS  /tmp/ccQNhOlE.s 			page 207


 7827              	.LASF226:
 7828 0b28 5F736565 		.ascii	"_seek\000"
 7828      6B00
 7829              	.LASF29:
 7830 0b2e 52535443 		.ascii	"RSTC_IRQn\000"
 7830      5F495251 
 7830      6E00
 7831              	.LASF31:
 7832 0b38 5254545F 		.ascii	"RTT_IRQn\000"
 7832      4952516E 
 7832      00
 7833              	.LASF348:
 7834 0b41 41464543 		.ascii	"AFEC_GAINVALUE_0\000"
 7834      5F474149 
 7834      4E56414C 
 7834      55455F30 
 7834      00
 7835              	.LASF349:
 7836 0b52 41464543 		.ascii	"AFEC_GAINVALUE_1\000"
 7836      5F474149 
 7836      4E56414C 
 7836      55455F31 
 7836      00
 7837              	.LASF350:
 7838 0b63 41464543 		.ascii	"AFEC_GAINVALUE_2\000"
 7838      5F474149 
 7838      4E56414C 
 7838      55455F32 
 7838      00
 7839              	.LASF351:
 7840 0b74 41464543 		.ascii	"AFEC_GAINVALUE_3\000"
 7840      5F474149 
 7840      4E56414C 
 7840      55455F33 
 7840      00
 7841              	.LASF15:
 7842 0b85 696E7431 		.ascii	"int16_t\000"
 7842      365F7400 
 7843              	.LASF7:
 7844 0b8d 73686F72 		.ascii	"short unsigned int\000"
 7844      7420756E 
 7844      7369676E 
 7844      65642069 
 7844      6E7400
 7845              	.LASF1:
 7846 0ba0 7369676E 		.ascii	"signed char\000"
 7846      65642063 
 7846      68617200 
 7847              	.LASF468:
 7848 0bac 61666563 		.ascii	"afec_interrupt\000"
 7848      5F696E74 
 7848      65727275 
 7848      707400
 7849              	.LASF327:
 7850 0bbb 41464543 		.ascii	"AFEC_POWER_MODE_0\000"
 7850      5F504F57 
 7850      45525F4D 
ARM GAS  /tmp/ccQNhOlE.s 			page 208


 7850      4F44455F 
 7850      3000
 7851              	.LASF328:
 7852 0bcd 41464543 		.ascii	"AFEC_POWER_MODE_1\000"
 7852      5F504F57 
 7852      45525F4D 
 7852      4F44455F 
 7852      3100
 7853              	.LASF329:
 7854 0bdf 41464543 		.ascii	"AFEC_POWER_MODE_2\000"
 7854      5F504F57 
 7854      45525F4D 
 7854      4F44455F 
 7854      3200
 7855              	.LASF449:
 7856 0bf1 73746174 		.ascii	"status\000"
 7856      757300
 7857              	.LASF250:
 7858 0bf8 5F667265 		.ascii	"_freelist\000"
 7858      656C6973 
 7858      7400
 7859              	.LASF480:
 7860 0c02 61666563 		.ascii	"afec_ch_sanity_check\000"
 7860      5F63685F 
 7860      73616E69 
 7860      74795F63 
 7860      6865636B 
 7861              	.LASF424:
 7862 0c17 706C6C5F 		.ascii	"pll_source\000"
 7862      736F7572 
 7862      636500
 7863              	.LASF231:
 7864 0c22 5F6F6666 		.ascii	"_offset\000"
 7864      73657400 
 7865              	.LASF145:
 7866 0c2a 53797374 		.ascii	"SystemCoreClock\000"
 7866      656D436F 
 7866      7265436C 
 7866      6F636B00 
 7867              	.LASF467:
 7868 0c3a 61666563 		.ascii	"afec_ch_set_config\000"
 7868      5F63685F 
 7868      7365745F 
 7868      636F6E66 
 7868      696700
 7869              	.LASF456:
 7870 0c4d 6972715F 		.ascii	"irq_level\000"
 7870      6C657665 
 7870      6C00
 7871              	.LASF149:
 7872 0c57 41464543 		.ascii	"AFEC_SEQ1R\000"
 7872      5F534551 
 7872      315200
 7873              	.LASF216:
 7874 0c62 5F5F7362 		.ascii	"__sbuf\000"
 7874      756600
 7875              	.LASF277:
ARM GAS  /tmp/ccQNhOlE.s 			page 209


 7876 0c69 5F6C3634 		.ascii	"_l64a_buf\000"
 7876      615F6275 
 7876      6600
 7877              	.LASF105:
 7878 0c73 53485052 		.ascii	"SHPR\000"
 7878      00
 7879              	.LASF137:
 7880 0c78 4454434D 		.ascii	"DTCMCR\000"
 7880      435200
 7881              	.LASF122:
 7882 0c7f 4D564652 		.ascii	"MVFR0\000"
 7882      3000
 7883              	.LASF123:
 7884 0c85 4D564652 		.ascii	"MVFR1\000"
 7884      3100
 7885              	.LASF124:
 7886 0c8b 4D564652 		.ascii	"MVFR2\000"
 7886      3200
 7887              	.LASF411:
 7888 0c91 41464543 		.ascii	"AFEC_INTERRUPT_COMP_ERROR\000"
 7888      5F494E54 
 7888      45525255 
 7888      50545F43 
 7888      4F4D505F 
 7889              	.LASF455:
 7890 0cab 63616C6C 		.ascii	"callback\000"
 7890      6261636B 
 7890      00
 7891              	.LASF432:
 7892 0cb4 61666563 		.ascii	"afec\000"
 7892      00
 7893              	.LASF150:
 7894 0cb9 41464543 		.ascii	"AFEC_SEQ2R\000"
 7894      5F534551 
 7894      325200
 7895              	.LASF323:
 7896 0cc4 41464543 		.ascii	"AFEC_14_BITS\000"
 7896      5F31345F 
 7896      42495453 
 7896      00
 7897              	.LASF269:
 7898 0cd1 5F617363 		.ascii	"_asctime_buf\000"
 7898      74696D65 
 7898      5F627566 
 7898      00
 7899              	.LASF186:
 7900 0cde 5F5F7763 		.ascii	"__wch\000"
 7900      6800
 7901              	.LASF165:
 7902 0ce4 41464543 		.ascii	"AFEC_CSELR\000"
 7902      5F435345 
 7902      4C5200
 7903              	.LASF55:
 7904 0cef 5443355F 		.ascii	"TC5_IRQn\000"
 7904      4952516E 
 7904      00
 7905              	.LASF284:
ARM GAS  /tmp/ccQNhOlE.s 			page 210


 7906 0cf8 5F776373 		.ascii	"_wcsrtombs_state\000"
 7906      72746F6D 
 7906      62735F73 
 7906      74617465 
 7906      00
 7907              	.LASF419:
 7908 0d09 534C4545 		.ascii	"SLEEPMGR_SLEEP_WFI\000"
 7908      504D4752 
 7908      5F534C45 
 7908      45505F57 
 7908      464900
 7909              	.LASF304:
 7910 0d1c 4552525F 		.ascii	"ERR_IO_ERROR\000"
 7910      494F5F45 
 7910      52524F52 
 7910      00
 7911              	.LASF182:
 7912 0d29 5F4C4F43 		.ascii	"_LOCK_RECURSIVE_T\000"
 7912      4B5F5245 
 7912      43555253 
 7912      4956455F 
 7912      5400
 7913              	.LASF152:
 7914 0d3b 41464543 		.ascii	"AFEC_CHDR\000"
 7914      5F434844 
 7914      5200
 7915              	.LASF442:
 7916 0d45 63685F6C 		.ascii	"ch_list\000"
 7916      69737400 
 7917              	.LASF54:
 7918 0d4d 5443345F 		.ascii	"TC4_IRQn\000"
 7918      4952516E 
 7918      00
 7919              	.LASF9:
 7920 0d56 6C6F6E67 		.ascii	"long int\000"
 7920      20696E74 
 7920      00
 7921              	.LASF301:
 7922 0d5f 53544154 		.ascii	"STATUS_ERR_BUSY\000"
 7922      55535F45 
 7922      52525F42 
 7922      55535900 
 7923              	.LASF303:
 7924 0d6f 53544154 		.ascii	"STATUS_ERR_TIMEOUT\000"
 7924      55535F45 
 7924      52525F54 
 7924      494D454F 
 7924      555400
 7925              	.LASF276:
 7926 0d82 5F776374 		.ascii	"_wctomb_state\000"
 7926      6F6D625F 
 7926      73746174 
 7926      6500
 7927              	.LASF119:
 7928 0d90 43435349 		.ascii	"CCSIDR\000"
 7928      445200
 7929              	.LASF321:
ARM GAS  /tmp/ccQNhOlE.s 			page 211


 7930 0d97 41464543 		.ascii	"AFEC_12_BITS\000"
 7930      5F31325F 
 7930      42495453 
 7930      00
 7931              	.LASF33:
 7932 0da4 504D435F 		.ascii	"PMC_IRQn\000"
 7932      4952516E 
 7932      00
 7933              	.LASF45:
 7934 0dad 48534D43 		.ascii	"HSMCI_IRQn\000"
 7934      495F4952 
 7934      516E00
 7935              	.LASF151:
 7936 0db8 41464543 		.ascii	"AFEC_CHER\000"
 7936      5F434845 
 7936      5200
 7937              	.LASF53:
 7938 0dc2 5443335F 		.ascii	"TC3_IRQn\000"
 7938      4952516E 
 7938      00
 7939              	.LASF59:
 7940 0dcb 49434D5F 		.ascii	"ICM_IRQn\000"
 7940      4952516E 
 7940      00
 7941              	.LASF98:
 7942 0dd4 53544952 		.ascii	"STIR\000"
 7942      00
 7943              	.LASF395:
 7944 0dd9 68696768 		.ascii	"high_threshold\000"
 7944      5F746872 
 7944      6573686F 
 7944      6C6400
 7945              	.LASF262:
 7946 0de8 5F696F62 		.ascii	"_iobs\000"
 7946      7300
 7947              	.LASF242:
 7948 0dee 5F656D65 		.ascii	"_emergency\000"
 7948      7267656E 
 7948      637900
 7949              	.LASF425:
 7950 0df9 504C4C5F 		.ascii	"PLL_SRC_MAINCK_4M_RC\000"
 7950      5352435F 
 7950      4D41494E 
 7950      434B5F34 
 7950      4D5F5243 
 7951              	.LASF286:
 7952 0e0e 5F6E6578 		.ascii	"_nextf\000"
 7952      746600
 7953              	.LASF272:
 7954 0e15 5F72616E 		.ascii	"_rand_next\000"
 7954      645F6E65 
 7954      787400
 7955              	.LASF156:
 7956 0e20 41464543 		.ascii	"AFEC_IDR\000"
 7956      5F494452 
 7956      00
 7957              	.LASF18:
ARM GAS  /tmp/ccQNhOlE.s 			page 212


 7958 0e29 75696E74 		.ascii	"uint32_t\000"
 7958      33325F74 
 7958      00
 7959              	.LASF87:
 7960 0e32 49534552 		.ascii	"ISER\000"
 7960      00
 7961              	.LASF414:
 7962 0e37 41464543 		.ascii	"AFEC_INTERRUPT_ALL\000"
 7962      5F494E54 
 7962      45525255 
 7962      50545F41 
 7962      4C4C00
 7963              	.LASF194:
 7964 0e4a 5F6D6178 		.ascii	"_maxwds\000"
 7964      77647300 
 7965              	.LASF420:
 7966 0e52 534C4545 		.ascii	"SLEEPMGR_WAIT_FAST\000"
 7966      504D4752 
 7966      5F574149 
 7966      545F4641 
 7966      535400
 7967              	.LASF331:
 7968 0e65 41464543 		.ascii	"AFEC_CHANNEL_0\000"
 7968      5F434841 
 7968      4E4E454C 
 7968      5F3000
 7969              	.LASF332:
 7970 0e74 41464543 		.ascii	"AFEC_CHANNEL_1\000"
 7970      5F434841 
 7970      4E4E454C 
 7970      5F3100
 7971              	.LASF333:
 7972 0e83 41464543 		.ascii	"AFEC_CHANNEL_2\000"
 7972      5F434841 
 7972      4E4E454C 
 7972      5F3200
 7973              	.LASF334:
 7974 0e92 41464543 		.ascii	"AFEC_CHANNEL_3\000"
 7974      5F434841 
 7974      4E4E454C 
 7974      5F3300
 7975              	.LASF335:
 7976 0ea1 41464543 		.ascii	"AFEC_CHANNEL_4\000"
 7976      5F434841 
 7976      4E4E454C 
 7976      5F3400
 7977              	.LASF336:
 7978 0eb0 41464543 		.ascii	"AFEC_CHANNEL_5\000"
 7978      5F434841 
 7978      4E4E454C 
 7978      5F3500
 7979              	.LASF337:
 7980 0ebf 41464543 		.ascii	"AFEC_CHANNEL_6\000"
 7980      5F434841 
 7980      4E4E454C 
 7980      5F3600
 7981              	.LASF338:
ARM GAS  /tmp/ccQNhOlE.s 			page 213


 7982 0ece 41464543 		.ascii	"AFEC_CHANNEL_7\000"
 7982      5F434841 
 7982      4E4E454C 
 7982      5F3700
 7983              	.LASF339:
 7984 0edd 41464543 		.ascii	"AFEC_CHANNEL_8\000"
 7984      5F434841 
 7984      4E4E454C 
 7984      5F3800
 7985              	.LASF340:
 7986 0eec 41464543 		.ascii	"AFEC_CHANNEL_9\000"
 7986      5F434841 
 7986      4E4E454C 
 7986      5F3900
 7987              	.LASF291:
 7988 0efb 7375626F 		.ascii	"suboptarg\000"
 7988      70746172 
 7988      6700
 7989              	.LASF155:
 7990 0f05 41464543 		.ascii	"AFEC_IER\000"
 7990      5F494552 
 7990      00
 7991              	.LASF410:
 7992 0f0e 41464543 		.ascii	"AFEC_INTERRUPT_OVERRUN_ERROR\000"
 7992      5F494E54 
 7992      45525255 
 7992      50545F4F 
 7992      56455252 
 7993              	.LASF147:
 7994 0f2b 41464543 		.ascii	"AFEC_MR\000"
 7994      5F4D5200 
 7995              	.LASF78:
 7996 0f33 4145535F 		.ascii	"AES_IRQn\000"
 7996      4952516E 
 7996      00
 7997              	.LASF11:
 7998 0f3c 6C6F6E67 		.ascii	"long unsigned int\000"
 7998      20756E73 
 7998      69676E65 
 7998      6420696E 
 7998      7400
 7999              	.LASF409:
 8000 0f4e 41464543 		.ascii	"AFEC_INTERRUPT_DATA_READY\000"
 8000      5F494E54 
 8000      45525255 
 8000      50545F44 
 8000      4154415F 
 8001              	.LASF352:
 8002 0f68 61666563 		.ascii	"afec_startup_time\000"
 8002      5F737461 
 8002      72747570 
 8002      5F74696D 
 8002      6500
 8003              	.LASF445:
 8004 0f7a 61666563 		.ascii	"afec_disable\000"
 8004      5F646973 
 8004      61626C65 
ARM GAS  /tmp/ccQNhOlE.s 			page 214


 8004      00
 8005              	.LASF227:
 8006 0f87 5F636C6F 		.ascii	"_close\000"
 8006      736500
 8007              	.LASF308:
 8008 0f8e 4552525F 		.ascii	"ERR_PROTOCOL\000"
 8008      50524F54 
 8008      4F434F4C 
 8008      00
 8009              	.LASF345:
 8010 0f9b 41464543 		.ascii	"AFEC_SAMPLE_HOLD_MODE_0\000"
 8010      5F53414D 
 8010      504C455F 
 8010      484F4C44 
 8010      5F4D4F44 
 8011              	.LASF258:
 8012 0fb3 63686172 		.ascii	"char\000"
 8012      00
 8013              	.LASF260:
 8014 0fb8 5F676C75 		.ascii	"_glue\000"
 8014      6500
 8015              	.LASF66:
 8016 0fbe 54574948 		.ascii	"TWIHS2_IRQn\000"
 8016      53325F49 
 8016      52516E00 
 8017              	.LASF435:
 8018 0fca 636F7272 		.ascii	"corrected_data\000"
 8018      65637465 
 8018      645F6461 
 8018      746100
 8019              	.LASF305:
 8020 0fd9 4552525F 		.ascii	"ERR_FLUSHED\000"
 8020      464C5553 
 8020      48454400 
 8021              	.LASF42:
 8022 0fe5 55534152 		.ascii	"USART2_IRQn\000"
 8022      54325F49 
 8022      52516E00 
 8023              	.LASF47:
 8024 0ff1 54574948 		.ascii	"TWIHS1_IRQn\000"
 8024      53315F49 
 8024      52516E00 
 8025              	.LASF77:
 8026 0ffd 54433131 		.ascii	"TC11_IRQn\000"
 8026      5F495251 
 8026      6E00
 8027              	.LASF197:
 8028 1007 5F426967 		.ascii	"_Bigint\000"
 8028      696E7400 
 8029              	.LASF41:
 8030 100f 55534152 		.ascii	"USART1_IRQn\000"
 8030      54315F49 
 8030      52516E00 
 8031              	.LASF254:
 8032 101b 5F617465 		.ascii	"_atexit0\000"
 8032      78697430 
 8032      00
ARM GAS  /tmp/ccQNhOlE.s 			page 215


 8033              	.LASF485:
 8034 1024 706D635F 		.ascii	"pmc_disable_periph_clk\000"
 8034      64697361 
 8034      626C655F 
 8034      70657269 
 8034      70685F63 
 8035              	.LASF143:
 8036 103b 5343425F 		.ascii	"SCB_Type\000"
 8036      54797065 
 8036      00
 8037              	.LASF107:
 8038 1044 43465352 		.ascii	"CFSR\000"
 8038      00
 8039              	.LASF279:
 8040 1049 5F676574 		.ascii	"_getdate_err\000"
 8040      64617465 
 8040      5F657272 
 8040      00
 8041              	.LASF57:
 8042 1056 44414343 		.ascii	"DACC_IRQn\000"
 8042      5F495251 
 8042      6E00
 8043              	.LASF342:
 8044 1060 41464543 		.ascii	"AFEC_TEMPERATURE_SENSOR\000"
 8044      5F54454D 
 8044      50455241 
 8044      54555245 
 8044      5F53454E 
 8045              	.LASF422:
 8046 1078 534C4545 		.ascii	"SLEEPMGR_BACKUP\000"
 8046      504D4752 
 8046      5F424143 
 8046      4B555000 
 8047              	.LASF397:
 8048 1088 41464543 		.ascii	"AFEC_INTERRUPT_EOC_0\000"
 8048      5F494E54 
 8048      45525255 
 8048      50545F45 
 8048      4F435F30 
 8049              	.LASF398:
 8050 109d 41464543 		.ascii	"AFEC_INTERRUPT_EOC_1\000"
 8050      5F494E54 
 8050      45525255 
 8050      50545F45 
 8050      4F435F31 
 8051              	.LASF399:
 8052 10b2 41464543 		.ascii	"AFEC_INTERRUPT_EOC_2\000"
 8052      5F494E54 
 8052      45525255 
 8052      50545F45 
 8052      4F435F32 
 8053              	.LASF400:
 8054 10c7 41464543 		.ascii	"AFEC_INTERRUPT_EOC_3\000"
 8054      5F494E54 
 8054      45525255 
 8054      50545F45 
 8054      4F435F33 
ARM GAS  /tmp/ccQNhOlE.s 			page 216


 8055              	.LASF488:
 8056 10dc 2E2E2F61 		.ascii	"../asf/sam/drivers/afec/afec.c\000"
 8056      73662F73 
 8056      616D2F64 
 8056      72697665 
 8056      72732F61 
 8057              	.LASF402:
 8058 10fb 41464543 		.ascii	"AFEC_INTERRUPT_EOC_5\000"
 8058      5F494E54 
 8058      45525255 
 8058      50545F45 
 8058      4F435F35 
 8059              	.LASF28:
 8060 1110 53555043 		.ascii	"SUPC_IRQn\000"
 8060      5F495251 
 8060      6E00
 8061              	.LASF404:
 8062 111a 41464543 		.ascii	"AFEC_INTERRUPT_EOC_7\000"
 8062      5F494E54 
 8062      45525255 
 8062      50545F45 
 8062      4F435F37 
 8063              	.LASF405:
 8064 112f 41464543 		.ascii	"AFEC_INTERRUPT_EOC_8\000"
 8064      5F494E54 
 8064      45525255 
 8064      50545F45 
 8064      4F435F38 
 8065              	.LASF406:
 8066 1144 41464543 		.ascii	"AFEC_INTERRUPT_EOC_9\000"
 8066      5F494E54 
 8066      45525255 
 8066      50545F45 
 8066      4F435F39 
 8067              	.LASF289:
 8068 1159 5F696D70 		.ascii	"_impure_ptr\000"
 8068      7572655F 
 8068      70747200 
 8069              	.LASF230:
 8070 1165 5F626C6B 		.ascii	"_blksize\000"
 8070      73697A65 
 8070      00
 8071              	.LASF228:
 8072 116e 5F756275 		.ascii	"_ubuf\000"
 8072      6600
 8073              	.LASF462:
 8074 1174 636F6E66 		.ascii	"config\000"
 8074      696700
 8075              	.LASF274:
 8076 117b 5F6D626C 		.ascii	"_mblen_state\000"
 8076      656E5F73 
 8076      74617465 
 8076      00
 8077              	.LASF256:
 8078 1188 5F5F7367 		.ascii	"__sglue\000"
 8078      6C756500 
 8079              	.LASF298:
ARM GAS  /tmp/ccQNhOlE.s 			page 217


 8080 1190 4952516E 		.ascii	"IRQn\000"
 8080      00
 8081              	.LASF450:
 8082 1195 696E7374 		.ascii	"inst_num\000"
 8082      5F6E756D 
 8082      00
 8083              	.LASF370:
 8084 119e 41464543 		.ascii	"AFEC_CMP_MODE_0\000"
 8084      5F434D50 
 8084      5F4D4F44 
 8084      455F3000 
 8085              	.LASF371:
 8086 11ae 41464543 		.ascii	"AFEC_CMP_MODE_1\000"
 8086      5F434D50 
 8086      5F4D4F44 
 8086      455F3100 
 8087              	.LASF372:
 8088 11be 41464543 		.ascii	"AFEC_CMP_MODE_2\000"
 8088      5F434D50 
 8088      5F4D4F44 
 8088      455F3200 
 8089              	.LASF373:
 8090 11ce 41464543 		.ascii	"AFEC_CMP_MODE_3\000"
 8090      5F434D50 
 8090      5F4D4F44 
 8090      455F3300 
 8091              	.LASF246:
 8092 11de 5F5F636C 		.ascii	"__cleanup\000"
 8092      65616E75 
 8092      7000
 8093              	.LASF112:
 8094 11e8 41465352 		.ascii	"AFSR\000"
 8094      00
 8095              	.LASF376:
 8096 11ed 41464543 		.ascii	"AFEC_TEMP_CMP_MODE_1\000"
 8096      5F54454D 
 8096      505F434D 
 8096      505F4D4F 
 8096      44455F31 
 8097              	.LASF377:
 8098 1202 41464543 		.ascii	"AFEC_TEMP_CMP_MODE_2\000"
 8098      5F54454D 
 8098      505F434D 
 8098      505F4D4F 
 8098      44455F32 
 8099              	.LASF378:
 8100 1217 41464543 		.ascii	"AFEC_TEMP_CMP_MODE_3\000"
 8100      5F54454D 
 8100      505F434D 
 8100      505F4D4F 
 8100      44455F33 
 8101              	.LASF184:
 8102 122c 5F66706F 		.ascii	"_fpos_t\000"
 8102      735F7400 
 8103              	.LASF221:
 8104 1234 5F66696C 		.ascii	"_file\000"
 8104      6500
ARM GAS  /tmp/ccQNhOlE.s 			page 218


 8105              	.LASF82:
 8106 123a 50574D31 		.ascii	"PWM1_IRQn\000"
 8106      5F495251 
 8106      6E00
 8107              	.LASF115:
 8108 1244 49445F41 		.ascii	"ID_AFR\000"
 8108      465200
 8109              	.LASF160:
 8110 124b 41464543 		.ascii	"AFEC_OVER\000"
 8110      5F4F5645 
 8110      5200
 8111              	.LASF219:
 8112 1255 5F5F7346 		.ascii	"__sFILE\000"
 8112      494C4500 
 8113              	.LASF418:
 8114 125d 534C4545 		.ascii	"SLEEPMGR_SLEEP_WFE\000"
 8114      504D4752 
 8114      5F534C45 
 8114      45505F57 
 8114      464500
 8115              	.LASF297:
 8116 1270 646F7562 		.ascii	"double\000"
 8116      6C6500
 8117              	.LASF215:
 8118 1277 5F666E73 		.ascii	"_fns\000"
 8118      00
 8119              	.LASF437:
 8120 127c 61666563 		.ascii	"afec_set_sample_hold_mode\000"
 8120      5F736574 
 8120      5F73616D 
 8120      706C655F 
 8120      686F6C64 
 8121              	.LASF44:
 8122 1296 50494F45 		.ascii	"PIOE_IRQn\000"
 8122      5F495251 
 8122      6E00
 8123              	.LASF382:
 8124 12a0 73746172 		.ascii	"startup_time\000"
 8124      7475705F 
 8124      74696D65 
 8124      00
 8125              	.LASF190:
 8126 12ad 5F6D6273 		.ascii	"_mbstate_t\000"
 8126      74617465 
 8126      5F7400
 8127              	.LASF285:
 8128 12b8 5F685F65 		.ascii	"_h_errno\000"
 8128      72726E6F 
 8128      00
 8129              	.LASF466:
 8130 12c1 61666563 		.ascii	"afec_temp_sensor_set_config\000"
 8130      5F74656D 
 8130      705F7365 
 8130      6E736F72 
 8130      5F736574 
 8131              	.LASF58:
 8132 12dd 50574D30 		.ascii	"PWM0_IRQn\000"
ARM GAS  /tmp/ccQNhOlE.s 			page 219


 8132      5F495251 
 8132      6E00
 8133              	.LASF380:
 8134 12e7 7265736F 		.ascii	"resolution\000"
 8134      6C757469 
 8134      6F6E00
 8135              	.LASF83:
 8136 12f2 53445241 		.ascii	"SDRAMC_IRQn\000"
 8136      4D435F49 
 8136      52516E00 
 8137              	.LASF157:
 8138 12fe 41464543 		.ascii	"AFEC_IMR\000"
 8138      5F494D52 
 8138      00
 8139              	.LASF8:
 8140 1307 5F5F696E 		.ascii	"__int32_t\000"
 8140      7433325F 
 8140      7400
 8141              	.LASF439:
 8142 1311 6F666673 		.ascii	"offsetcorr\000"
 8142      6574636F 
 8142      727200
 8143              	.LASF10:
 8144 131c 5F5F7569 		.ascii	"__uint32_t\000"
 8144      6E743332 
 8144      5F7400
 8145              	.LASF481:
 8146 1327 4E564943 		.ascii	"NVIC_SetPriority\000"
 8146      5F536574 
 8146      5072696F 
 8146      72697479 
 8146      00
 8147              	.LASF27:
 8148 1338 53797354 		.ascii	"SysTick_IRQn\000"
 8148      69636B5F 
 8148      4952516E 
 8148      00
 8149              	.LASF189:
 8150 1345 5F5F7661 		.ascii	"__value\000"
 8150      6C756500 
 8151              	.LASF212:
 8152 134d 5F69735F 		.ascii	"_is_cxa\000"
 8152      63786100 
 8153              	.LASF32:
 8154 1355 5744545F 		.ascii	"WDT_IRQn\000"
 8154      4952516E 
 8154      00
 8155              	.LASF249:
 8156 135e 5F703573 		.ascii	"_p5s\000"
 8156      00
 8157              	.LASF394:
 8158 1363 6C6F775F 		.ascii	"low_threshold\000"
 8158      74687265 
 8158      73686F6C 
 8158      6400
 8159              	.LASF429:
 8160 1371 504C4C5F 		.ascii	"PLL_SRC_MAINCK_BYPASS\000"
ARM GAS  /tmp/ccQNhOlE.s 			page 220


 8160      5352435F 
 8160      4D41494E 
 8160      434B5F42 
 8160      59504153 
 8161              	.LASF19:
 8162 1387 4E6F6E4D 		.ascii	"NonMaskableInt_IRQn\000"
 8162      61736B61 
 8162      626C6549 
 8162      6E745F49 
 8162      52516E00 
 8163              	.LASF80:
 8164 139b 58444D41 		.ascii	"XDMAC_IRQn\000"
 8164      435F4952 
 8164      516E00
 8165              	.LASF88:
 8166 13a6 52455345 		.ascii	"RESERVED0\000"
 8166      52564544 
 8166      3000
 8167              	.LASF92:
 8168 13b0 52455345 		.ascii	"RESERVED2\000"
 8168      52564544 
 8168      3200
 8169              	.LASF94:
 8170 13ba 52455345 		.ascii	"RESERVED3\000"
 8170      52564544 
 8170      3300
 8171              	.LASF96:
 8172 13c4 52455345 		.ascii	"RESERVED4\000"
 8172      52564544 
 8172      3400
 8173              	.LASF97:
 8174 13ce 52455345 		.ascii	"RESERVED5\000"
 8174      52564544 
 8174      3500
 8175              	.LASF126:
 8176 13d8 52455345 		.ascii	"RESERVED6\000"
 8176      52564544 
 8176      3600
 8177              	.LASF135:
 8178 13e2 52455345 		.ascii	"RESERVED7\000"
 8178      52564544 
 8178      3700
 8179              	.LASF141:
 8180 13ec 52455345 		.ascii	"RESERVED8\000"
 8180      52564544 
 8180      3800
 8181              	.LASF381:
 8182 13f6 61666563 		.ascii	"afec_clock\000"
 8182      5F636C6F 
 8182      636B00
 8183              	.LASF91:
 8184 1401 49535052 		.ascii	"ISPR\000"
 8184      00
 8185              	.LASF427:
 8186 1406 504C4C5F 		.ascii	"PLL_SRC_MAINCK_12M_RC\000"
 8186      5352435F 
 8186      4D41494E 
ARM GAS  /tmp/ccQNhOlE.s 			page 221


 8186      434B5F31 
 8186      324D5F52 
 8187              	.LASF121:
 8188 141c 43504143 		.ascii	"CPACR\000"
 8188      5200
 8189              	.LASF144:
 8190 1422 49544D5F 		.ascii	"ITM_RxBuffer\000"
 8190      52784275 
 8190      66666572 
 8190      00
 8191              	.LASF13:
 8192 142f 6C6F6E67 		.ascii	"long long unsigned int\000"
 8192      206C6F6E 
 8192      6720756E 
 8192      7369676E 
 8192      65642069 
 8193              	.LASF60:
 8194 1446 4143435F 		.ascii	"ACC_IRQn\000"
 8194      4952516E 
 8194      00
 8195              	.LASF171:
 8196 144f 41464543 		.ascii	"AFEC_ACR\000"
 8196      5F414352 
 8196      00
 8197              	.LASF95:
 8198 1458 49414252 		.ascii	"IABR\000"
 8198      00
 8199              	.LASF153:
 8200 145d 41464543 		.ascii	"AFEC_CHSR\000"
 8200      5F434853 
 8200      5200
 8201              	.LASF363:
 8202 1467 41464543 		.ascii	"AFEC_STARTUP_TIME_10\000"
 8202      5F535441 
 8202      52545550 
 8202      5F54494D 
 8202      455F3130 
 8203              	.LASF243:
 8204 147c 5F637572 		.ascii	"_current_category\000"
 8204      72656E74 
 8204      5F636174 
 8204      65676F72 
 8204      7900
 8205              	.LASF365:
 8206 148e 41464543 		.ascii	"AFEC_STARTUP_TIME_12\000"
 8206      5F535441 
 8206      52545550 
 8206      5F54494D 
 8206      455F3132 
 8207              	.LASF366:
 8208 14a3 41464543 		.ascii	"AFEC_STARTUP_TIME_13\000"
 8208      5F535441 
 8208      52545550 
 8208      5F54494D 
 8208      455F3133 
 8209              	.LASF367:
 8210 14b8 41464543 		.ascii	"AFEC_STARTUP_TIME_14\000"
ARM GAS  /tmp/ccQNhOlE.s 			page 222


 8210      5F535441 
 8210      52545550 
 8210      5F54494D 
 8210      455F3134 
 8211              	.LASF368:
 8212 14cd 41464543 		.ascii	"AFEC_STARTUP_TIME_15\000"
 8212      5F535441 
 8212      52545550 
 8212      5F54494D 
 8212      455F3135 
 8213              	.LASF412:
 8214 14e2 41464543 		.ascii	"AFEC_INTERRUPT_TEMP_CHANGE\000"
 8214      5F494E54 
 8214      45525255 
 8214      50545F54 
 8214      454D505F 
 8215              	.LASF396:
 8216 14fd 61666563 		.ascii	"afec_interrupt_source\000"
 8216      5F696E74 
 8216      65727275 
 8216      70745F73 
 8216      6F757263 
 8217              	.LASF101:
 8218 1513 43505549 		.ascii	"CPUID\000"
 8218      4400
 8219              	.LASF319:
 8220 1519 4F504552 		.ascii	"OPERATION_IN_PROGRESS\000"
 8220      4154494F 
 8220      4E5F494E 
 8220      5F50524F 
 8220      47524553 
 8221              	.LASF290:
 8222 152f 5F676C6F 		.ascii	"_global_impure_ptr\000"
 8222      62616C5F 
 8222      696D7075 
 8222      72655F70 
 8222      747200
 8223              	.LASF245:
 8224 1542 5F5F7364 		.ascii	"__sdidinit\000"
 8224      6964696E 
 8224      697400
 8225              	.LASF169:
 8226 154d 41464543 		.ascii	"AFEC_TEMPCWR\000"
 8226      5F54454D 
 8226      50435752 
 8226      00
 8227              	.LASF158:
 8228 155a 41464543 		.ascii	"AFEC_ISR\000"
 8228      5F495352 
 8228      00
 8229              	.LASF426:
 8230 1563 504C4C5F 		.ascii	"PLL_SRC_MAINCK_8M_RC\000"
 8230      5352435F 
 8230      4D41494E 
 8230      434B5F38 
 8230      4D5F5243 
 8231              	.LASF191:
ARM GAS  /tmp/ccQNhOlE.s 			page 223


 8232 1578 5F666C6F 		.ascii	"_flock_t\000"
 8232      636B5F74 
 8232      00
 8233              	.LASF26:
 8234 1581 50656E64 		.ascii	"PendSV_IRQn\000"
 8234      53565F49 
 8234      52516E00 
 8235              	.LASF353:
 8236 158d 41464543 		.ascii	"AFEC_STARTUP_TIME_0\000"
 8236      5F535441 
 8236      52545550 
 8236      5F54494D 
 8236      455F3000 
 8237              	.LASF354:
 8238 15a1 41464543 		.ascii	"AFEC_STARTUP_TIME_1\000"
 8238      5F535441 
 8238      52545550 
 8238      5F54494D 
 8238      455F3100 
 8239              	.LASF355:
 8240 15b5 41464543 		.ascii	"AFEC_STARTUP_TIME_2\000"
 8240      5F535441 
 8240      52545550 
 8240      5F54494D 
 8240      455F3200 
 8241              	.LASF356:
 8242 15c9 41464543 		.ascii	"AFEC_STARTUP_TIME_3\000"
 8242      5F535441 
 8242      52545550 
 8242      5F54494D 
 8242      455F3300 
 8243              	.LASF357:
 8244 15dd 41464543 		.ascii	"AFEC_STARTUP_TIME_4\000"
 8244      5F535441 
 8244      52545550 
 8244      5F54494D 
 8244      455F3400 
 8245              	.LASF358:
 8246 15f1 41464543 		.ascii	"AFEC_STARTUP_TIME_5\000"
 8246      5F535441 
 8246      52545550 
 8246      5F54494D 
 8246      455F3500 
 8247              	.LASF359:
 8248 1605 41464543 		.ascii	"AFEC_STARTUP_TIME_6\000"
 8248      5F535441 
 8248      52545550 
 8248      5F54494D 
 8248      455F3600 
 8249              	.LASF360:
 8250 1619 41464543 		.ascii	"AFEC_STARTUP_TIME_7\000"
 8250      5F535441 
 8250      52545550 
 8250      5F54494D 
 8250      455F3700 
 8251              	.LASF361:
 8252 162d 41464543 		.ascii	"AFEC_STARTUP_TIME_8\000"
ARM GAS  /tmp/ccQNhOlE.s 			page 224


 8252      5F535441 
 8252      52545550 
 8252      5F54494D 
 8252      455F3800 
 8253              	.LASF362:
 8254 1641 41464543 		.ascii	"AFEC_STARTUP_TIME_9\000"
 8254      5F535441 
 8254      52545550 
 8254      5F54494D 
 8254      455F3900 
 8255              	.LASF316:
 8256 1655 4552525F 		.ascii	"ERR_TIMER_ALREADY_RUNNING\000"
 8256      54494D45 
 8256      525F414C 
 8256      52454144 
 8256      595F5255 
 8257              	.LASF12:
 8258 166f 6C6F6E67 		.ascii	"long long int\000"
 8258      206C6F6E 
 8258      6720696E 
 8258      7400
 8259              	.LASF235:
 8260 167d 5F666C61 		.ascii	"_flags2\000"
 8260      67733200 
 8261              	.LASF299:
 8262 1685 73746174 		.ascii	"status_code\000"
 8262      75735F63 
 8262      6F646500 
 8263              	.LASF313:
 8264 1691 4552525F 		.ascii	"ERR_BUSY\000"
 8264      42555359 
 8264      00
 8265              	.LASF128:
 8266 169a 4443494D 		.ascii	"DCIMVAU\000"
 8266      56415500 
 8267              	.LASF129:
 8268 16a2 44434953 		.ascii	"DCISW\000"
 8268      5700
 8269              	.LASF300:
 8270 16a8 53544154 		.ascii	"STATUS_OK\000"
 8270      55535F4F 
 8270      4B00
 8271              	.LASF423:
 8272 16b2 534C4545 		.ascii	"SLEEPMGR_NR_OF_MODES\000"
 8272      504D4752 
 8272      5F4E525F 
 8272      4F465F4D 
 8272      4F444553 
 8273              	.LASF448:
 8274 16c7 41464543 		.ascii	"AFEC0_Handler\000"
 8274      305F4861 
 8274      6E646C65 
 8274      7200
 8275              	.LASF116:
 8276 16d5 49445F4D 		.ascii	"ID_MFR\000"
 8276      465200
 8277              	.LASF386:
ARM GAS  /tmp/ccQNhOlE.s 			page 225


 8278 16dc 75736571 		.ascii	"useq\000"
 8278      00
 8279              	.LASF314:
 8280 16e1 4552525F 		.ascii	"ERR_BAD_FORMAT\000"
 8280      4241445F 
 8280      464F524D 
 8280      415400
 8281              	.LASF295:
 8282 16f0 6370755F 		.ascii	"cpu_irq_prev_interrupt_state\000"
 8282      6972715F 
 8282      70726576 
 8282      5F696E74 
 8282      65727275 
 8283              	.LASF36:
 8284 170d 55415254 		.ascii	"UART1_IRQn\000"
 8284      315F4952 
 8284      516E00
 8285              	.LASF369:
 8286 1718 61666563 		.ascii	"afec_cmp_mode\000"
 8286      5F636D70 
 8286      5F6D6F64 
 8286      6500
 8287              	.LASF343:
 8288 1726 41464543 		.ascii	"AFEC_CHANNEL_ALL\000"
 8288      5F434841 
 8288      4E4E454C 
 8288      5F414C4C 
 8288      00
 8289              	.LASF111:
 8290 1737 42464152 		.ascii	"BFAR\000"
 8290      00
 8291              	.LASF446:
 8292 173c 61666563 		.ascii	"afec_enable\000"
 8292      5F656E61 
 8292      626C6500 
 8293              	.LASF259:
 8294 1748 5F5F4649 		.ascii	"__FILE\000"
 8294      4C4500
 8295              	.LASF35:
 8296 174f 55415254 		.ascii	"UART0_IRQn\000"
 8296      305F4952 
 8296      516E00
 8297              	.LASF310:
 8298 175a 4552525F 		.ascii	"ERR_NO_MEMORY\000"
 8298      4E4F5F4D 
 8298      454D4F52 
 8298      5900
 8299              	.LASF415:
 8300 1768 61666563 		.ascii	"afec_callback_t\000"
 8300      5F63616C 
 8300      6C626163 
 8300      6B5F7400 
 8301              	.LASF195:
 8302 1778 5F736967 		.ascii	"_sign\000"
 8302      6E00
 8303              	.LASF200:
 8304 177e 5F5F746D 		.ascii	"__tm_min\000"
ARM GAS  /tmp/ccQNhOlE.s 			page 226


 8304      5F6D696E 
 8304      00
 8305              	.LASF309:
 8306 1787 4552525F 		.ascii	"ERR_UNSUPPORTED_DEV\000"
 8306      554E5355 
 8306      50504F52 
 8306      5445445F 
 8306      44455600 
 8307              	.LASF37:
 8308 179b 50494F41 		.ascii	"PIOA_IRQn\000"
 8308      5F495251 
 8308      6E00
 8309              	.LASF407:
 8310 17a5 41464543 		.ascii	"AFEC_INTERRUPT_EOC_10\000"
 8310      5F494E54 
 8310      45525255 
 8310      50545F45 
 8310      4F435F31 
 8311              	.LASF408:
 8312 17bb 41464543 		.ascii	"AFEC_INTERRUPT_EOC_11\000"
 8312      5F494E54 
 8312      45525255 
 8312      50545F45 
 8312      4F435F31 
 8313              	.LASF159:
 8314 17d1 52657365 		.ascii	"Reserved1\000"
 8314      72766564 
 8314      3100
 8315              	.LASF163:
 8316 17db 52657365 		.ascii	"Reserved2\000"
 8316      72766564 
 8316      3200
 8317              	.LASF170:
 8318 17e5 52657365 		.ascii	"Reserved3\000"
 8318      72766564 
 8318      3300
 8319              	.LASF172:
 8320 17ef 52657365 		.ascii	"Reserved4\000"
 8320      72766564 
 8320      3400
 8321              	.LASF174:
 8322 17f9 52657365 		.ascii	"Reserved5\000"
 8322      72766564 
 8322      3500
 8323              	.LASF178:
 8324 1803 52657365 		.ascii	"Reserved6\000"
 8324      72766564 
 8324      3600
 8325              	.LASF0:
 8326 180d 756E7369 		.ascii	"unsigned int\000"
 8326      676E6564 
 8326      20696E74 
 8326      00
 8327              	.LASF475:
 8328 181a 756C5F69 		.ascii	"ul_id\000"
 8328      6400
 8329              	.LASF273:
ARM GAS  /tmp/ccQNhOlE.s 			page 227


 8330 1820 5F723438 		.ascii	"_r48\000"
 8330      00
 8331              	.LASF110:
 8332 1825 4D4D4641 		.ascii	"MMFAR\000"
 8332      5200
 8333              	.LASF139:
 8334 182b 43414352 		.ascii	"CACR\000"
 8334      00
 8335              	.LASF483:
 8336 1830 4E564943 		.ascii	"NVIC_ClearPendingIRQ\000"
 8336      5F436C65 
 8336      61725065 
 8336      6E64696E 
 8336      67495251 
 8337              	.LASF5:
 8338 1845 73686F72 		.ascii	"short int\000"
 8338      7420696E 
 8338      7400
 8339              	.LASF127:
 8340 184f 4943494D 		.ascii	"ICIMVAU\000"
 8340      56415500 
 8341              	.LASF62:
 8342 1857 4D43414E 		.ascii	"MCAN0_IRQn\000"
 8342      305F4952 
 8342      516E00
 8343              	.LASF224:
 8344 1862 5F726561 		.ascii	"_read\000"
 8344      6400
 8345              	.LASF441:
 8346 1868 61666563 		.ascii	"afec_configure_sequence\000"
 8346      5F636F6E 
 8346      66696775 
 8346      72655F73 
 8346      65717565 
 8347              	.LASF263:
 8348 1880 5F72616E 		.ascii	"_rand48\000"
 8348      64343800 
 8349              	.LASF74:
 8350 1888 5443385F 		.ascii	"TC8_IRQn\000"
 8350      4952516E 
 8350      00
 8351              	.LASF459:
 8352 1891 636D705F 		.ascii	"cmp_filter\000"
 8352      66696C74 
 8352      657200
 8353              	.LASF65:
 8354 189c 41464543 		.ascii	"AFEC1_IRQn\000"
 8354      315F4952 
 8354      516E00
 8355              	.LASF325:
 8356 18a7 41464543 		.ascii	"AFEC_16_BITS\000"
 8356      5F31365F 
 8356      42495453 
 8356      00
 8357              	.LASF22:
 8358 18b4 42757346 		.ascii	"BusFault_IRQn\000"
 8358      61756C74 
ARM GAS  /tmp/ccQNhOlE.s 			page 228


 8358      5F495251 
 8358      6E00
 8359              		.ident	"GCC: (15:6.3.1+svn253039-1build1) 6.3.1 20170620"
